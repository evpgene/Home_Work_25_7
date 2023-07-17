#include "Chats.h"

void Chats::mainmenu() {
  // если пользователь общий не найден
  if (!(db_queries_dml.select_User_By_Login_fc("Общий") != nullptr)) {
    size_t user_id;
    size_t chat_id;
    // создаём пользователя для общего чата
    if ((user_id = db_queries_dml.insert_User_fc(
             std::make_shared<User>(User(user_id, "Общий", "Общий"))))) {
      currentUserPtr = db_queries_dml.select_User_By_Id_fc(user_id);
    };
    // создаём чат общий и делаем его активным
    currentChatPtr = createChatByUsers(currentUserPtr, currentUserPtr);
  };
  localCycle();
};

void Chats::userinfo() {
  // распечатываем активного пользоваателя
  if (currentUserPtr) {
      std::cout << "Активный пользователь: ";
      currentUserPtr->printUser();
      std::cout << endl;
  }
  // распечатываем активный чат
  if (currentChatPtr) {
      std::cout << "Активный чат: ";
      currentChatPtr->printChatName();
      std::cout << endl;
  }
  // распечатываем пречень всех зарегистрированных пользователей
  printAllUsers();
}

// logon для терминала
void Chats::logon() {
  std::string tmp_login, tmp_pass;
  std::cout << "Введите ваш логин " << std::endl;  // login
  std::cin >> tmp_login;
  std::cout << "Введите ваш пароль " << std::endl;
  std::cin >> tmp_pass;
  // пусть нуль будет id для временных пользователей
  User_t tmp_user(std::make_shared<User>(0, tmp_login, tmp_pass));

  // ищем пользователя с заданным логином и паролем (или хэшем)
  currentUserPtr = db_queries_dml.select_User_By_Login_fc(tmp_login);
  if (*tmp_user == *currentUserPtr) {
      std::cout << "Вы вошли как: ";
      currentUserPtr->printUser();
      std::cout << std::endl;
      return;
  }
  std::cout << "Такого пользователя нет. " << std::endl;
}

// logon для сетевого интерфейса
User_t Chats::logon(const User_t user_ptr) {
  if (!user_ptr) return nullptr;
  return currentUserPtr = db_queries_dml.select_User_By_Login_fc(user_ptr->getLogin());
}

// регистрация пользователя для терминала
no_errors Chats::userRegistration() {
  std::string tmp_login, tmp_pass;
  std::cout << "Введите ваш логин" << std::endl;
  std::cin >> tmp_login;
  std::cout << "Введите ваш пароль " << std::endl;
  std::cin >> tmp_pass;
  // пусть нуль будет id для временных пользователей
  User_t tmp_user(std::make_shared<User>(0, tmp_login, tmp_pass));
  if (*tmp_user ==
      *db_queries_dml.select_User_By_Login_fc(tmp_user->getLogin())) {
      std::cout << "Такой пользователь уже существует. " << std::endl;
      return false;
  }
  if (db_queries_dml.insert_User_fc(tmp_user)) {
      std::cout << "Регистрация прошла успешно. " << std::endl;
      return true;
  }
  return false;
}

User_t Chats::userRegistration(const User_t user_ptr) {
  if (!user_ptr) return nullptr;
  // ищем пользователя с заданным логином и паролем (или хэшем)
   User_t tmp_user = db_queries_dml.select_User_By_Login_fc(user_ptr->getLogin());
  if(*user_ptr == *tmp_user) {
        return nullptr;
      }
  return tmp_user;
}

User_t Chats::getUserByLogin(const std::string &login) {
  return db_queries_dml.select_User_By_Login_fc(login);
}

// возвращает имя чата. В случае неудачи возвращает пустую строку.
std::string Chats::getChatnameByUsers(const User_t user,
                                      const User_t companion) {
  // проверяем, в порядке ли исходные данные
  if (!(user && companion)) {
        return std::string();
  }
  // формируем имя чата
  if (companion->getLogin() == std::string("Общий")) {
        return std::string("Общий");
  }
  if (user->getLogin() <= companion->getLogin()) {
        return std::string(user->getLogin() + companion->getLogin());
  } else {
        return std::string(companion->getLogin() + user->getLogin());
  }
}

Chat_t Chats::getChatByUsers(const User_t user, const User_t companion) {
  // проверяем, в порядке ли исходные данные
  if (!(user && companion)) {
        return nullptr;
  }
  // формируем имя чата и проверяем,
  // существует ли чат с заданным именeм
  return db_queries_dml.select_Chat_By_Name_fc(
      getChatnameByUsers(user, companion));
}

Chat_t Chats::createChatByUsers(const User_t user, const User_t companion) {
  // проверяем, в порядке ли исходные данные
  if (!(user && companion)) {
        return nullptr;
  }
  if(!(user->getId() && companion->getId())) {
        return nullptr;
  }

  no_errors no_errors{true};
  // по идее эти операции надо проводить транзакцией!!!
  size_t chat_id = db_queries_dml.insert_Chat_fc(getChatnameByUsers(user, companion));
  no_errors &= bool(db_queries_dml.insert_Chat_User_fc(chat_id,user->getId()));
  if(user != companion)
    no_errors &= bool(db_queries_dml.insert_Chat_User_fc(chat_id,companion->getId()));
  // либо тут должно быть удалить созданный чат если есть ошибки!!!

  return Chat_t(db_queries_dml.select_Chat_By_Id_fc(chat_id)); 
}

void Chats::write() {
  // Выводим имя активного пользователя
  if (!currentUserPtr) {
    std::cout << "Вы не зарегистрированы! " << std::endl;
    return;
  }
  std::cout << "Активный пользователь: ";
  currentUserPtr->printUser();
  std::cout << std::endl;
  printAllUsers();
  std::cout << std::endl;

    std::string id_input;
    std::cout << "Выберите пользователя для чата (введите номер) " << std::endl;
    std::cin >> id_input;
    User_t tmp_companion;

    // проверяем корректность ввода
    try {
    tmp_companion =
        db_queries_dml.select_User_By_Id_fc(std::stol(id_input));
    } catch (const std::exception &e) {
    cout << endl << e.what() << endl;
    }

    // вывод найденного пользователя для отслеживания поведения программы -
    // можно удалить
    if (tmp_companion) {
      std::cout << "Пользователь найден: ";
      tmp_companion->printUser();
    } else {
      std::cout << "Нет такого пользователя! " << std::endl;
    }

    // выбираем чат по именам пользователей
    currentChatPtr = getChatByUsers(currentUserPtr, tmp_companion);
    // если чата нет - создаём его
    if (!(currentChatPtr)) {
      //  создаём чат - добавляем его по имени и тут же считывааем по id.
      currentChatPtr =
          db_queries_dml.select_Chat_By_Id_fc(db_queries_dml.insert_Chat_fc(
              getChatnameByUsers(currentUserPtr, tmp_companion)));
    }

    printAllMessages(currentChatPtr);

    size_t message_id{0};
    if (bool(message_id = sendMessage(currentChatPtr, currentUserPtr,
                                      acquaireMessage()))) {
      setLastSendMessageId(message_id);
    }
}

void Chats::logoff() {
  if (currentUserPtr) {
    std::cout << "Вы вышли из учётной записи";
    currentUserPtr->printUser();
    std::cout << std::endl;
    currentUserPtr = nullptr;
  } else {
    std::cout << "Прежде чем выйти из учётной записи необходимо в неё войти. "
                 "Вы не вошли в учётую запись."
              << std::endl;
  }
}

void Chats::exit() { Q = true; }

void Chats::restordata() {
  SaveRestor restor;
  restor.createPath("/tmp", "/tmp/Chat_Yevgeniy");
  restor.createPath("/tmp", "/tmp/Chat_Yevgeniy/Chats");
  restor.restorUsers(users);
  restor.restorChats(chats);
}

void Chats::savedata() {
  SaveRestor save;
  save.createPath("/tmp", "/tmp/Chat_Yevgeniy");
  save.saveUsers(users);
  save.saveChats(chats);
}

void Chats::localCycle() {
  while (!Q)  // цикл
  {
    // если есть текущий пользователь - то распечатываем его
    if (currentUserPtr) {
      std::cout << "Активный пользователь: ";
      currentUserPtr->printUser();
    }

    if (currentChatPtr) {
      std::cout << "Активный чат: ";
      currentChatPtr->printChatName();
    }

    std::cout << "Введите комманду (0 - помощ)" << std::endl;
    std::cin >> cmd_input;

    // проверяем корректность ввода
    try {
      cmd = std::stoi(cmd_input);
    } catch (exception &except) {
      cout << endl << except.what() << endl;
      cmd = 0;
    }

    try  // обработка исключений
    {
      switch (cmd) {
        case 0:
          std::cout << "0 - помощь" << std::endl;
          std::cout << "1 - вывести данные текущего пользователя" << std::endl;
          std::cout << "2 - авторизоваться" << std::endl;
          std::cout << "3 - написать сообщение" << std::endl;
          std::cout << "4 - регистрация пользователя" << std::endl;
          std::cout << "8 - выйти из учётной записи" << std::endl;
          std::cout << "9 - выйти из программы" << std::endl;
          std::cout << "Имя пользователя должно состоять из одного слова"
                    << std::endl;
          break;

        case 1:  // выводим  данные текущего пользователя
          userinfo();
          break;
        case 2:  // User logon
          logon();
          break;
        case 3:  // Написать пользователю
          write();
          break;
        case 4:  // User registration
          userRegistration();
          break;
        case 8:  // logoff
          logoff();
          break;
        case 9:  // Выход из программы
          exit();
          break;
        default:
          std::cout << "Нет такой команды: " << cmd << std::endl;
          break;
      }
    } catch (exception &except) {
      cout << endl << except.what() << endl;
    }
  }
}

void Chats::remoteCycle() {
  // тут добавил новые объявления/////////////////////////////
  Server server;
  TCP_server tcp_server;
  std::string string_to_send{"Привет от сервера!"};
  std::string string_for_receive;
  User_t user;
  User_t companion;
  Chat_t chat;
  std::shared_ptr<std::queue<std::string>> usernames;
  queue_message_t lastMessages;
  // тут добавил новые объявления конец/////////////////////////////

  tcp_server.configureConnection();
  tcp_server.listening();
  tcp_server.openConnection();

  bool firstcycle{true};

  while (true) {
    if (!firstcycle) {
      tcp_server.send(string_to_send);
    }
    firstcycle = false;
    tcp_server.receive(string_for_receive);

    ReceivedData receivedData(server.interpretString(string_for_receive));
    switch (receivedData._type) {
      case REGISTRATION:
        user = userRegistration(
            server.retrieveUser(std::string(receivedData._str_view)));
        if (!user) {
          string_to_send = std::string("Ошибка регистрации");
          break;
        }
        string_to_send =
            std::string("Активный пользователь: ") + user->getLogin();
        break;

      case LOGON:
        user = logon(server.retrieveUser(std::string(receivedData._str_view)));
        if (!user) {
          string_to_send = std::string("Ошибка входа в учётную запись");
          break;
        }
        string_to_send = "Активный пользователь: " + user->getLogin();
        break;
      case COMPANION:
        if (!user) {
          string_to_send = "Вы не вошли в учётную запись";
          break;
        }
        companion = getUserByLogin(std::string(receivedData._str_view));
        if (!companion) {
          string_to_send = "Пользователь для переписки не найден";
          break;
        }
        chat = getChatByUsers(user, companion);
        if (!chat) {
          string_to_send = "чат не существует";
          break;
        };

        string_to_send = "Активный чат: " + chat->getChatName() +
                         " с пользователем: " + companion->getLogin();
        break;

      case MESSAGE:
        if (!user) {
          string_to_send = "Вы не вошли в учётную запись";
          break;
        };
        if (!chat) {
          string_to_send = "чат не существует";
          break;
        };
        {
          Message_t msg(
              server.retrieveMessage(std::string(receivedData._str_view)));
          if (!msg) {
            string_to_send = "Сообщение не доставлено или повреждено";
          }
          addMessage(chat, msg);
          string_to_send = "принято";
        }
        break;

      case GET_USERNAMES:
        std::cout << "getusernames step"
                  << std::endl;  // диагностическая информация на сервер
        usernames = getUserNames();
      case CONTINUE_USERNAMES:
        std::cout << "continueusernames step"
                  << std::endl;  // диагностическая информация на сервер
        if (!usernames->empty()) {
          string_to_send = server.getUsernamesString(usernames->front());
          usernames->pop();
        } else
          string_to_send = server.getUsernamesEnd();
        break;

      case GET_MESSAGES:
        std::cout << "get messages step"
                  << std::endl;  // диагностическая информация на сервер

        if (!chat) {
          string_to_send = "чат не существует";
          break;
        };
        lastMessages = chat->getLastMessages();

        // std::cout << "last messages from queue step get_messages start "
        //           << std::endl;  // диагностическая информация на сервер

        // while (!lastMessages.empty()) {
        //   std::cout << std::endl;
        //   lastMessages.front().printMessage();
        //   std::cout << std::endl;
        //   lastMessages.pop();
        // }
        // std::cout << "last messages from queue step get_messages end "
        //           << std::endl;  // диагностическая информация на сервер

      case CONTINUE_MESSAGES:
        std::cout << "continuemessages step"
                  << std::endl;  // диагностическая информация на сервер
        if (!lastMessages) {
          std::cout << "something wrong, try to read nothing "
                    << std::endl;  // диагностическая информация на сервер
          break;
        };
        if (!lastMessages->empty()) {
          string_to_send = server.getMessageString(lastMessages->front());
          lastMessages->pop();
          std::cout << "one message pop "
                    << std::endl;  // диагностическая информация на сервер
        } else {
          string_to_send = server.getMessagesEnd();
        }
        break;

      case LOGOUT:
        string_to_send = "Logout for respond";
        user = nullptr;
        companion = nullptr;
        chat = nullptr;
        if (!lastMessages) {
          break;
        };
        while (!lastMessages->empty()) lastMessages->pop();
        break;

      case EXIT:
        string_to_send = "Exit for respond";
        return;
        break;

      case NOTHING:
        string_to_send = string_for_receive;
        break;  // диагностическая информация на сервер
    }
  }
}

void Chats::addMessage(const Chat_t chat, const std::shared_ptr<Message> msg) {
  if (chat && msg) {
    chat->addMessage(std::move(*msg));
  }
}
// распечатывает перечень всех пользователей,
// в случае удачи возвращает true.
no_errors Chats::printAllUsers(void) {
  queue_user_t all_users(db_queries_dml.select_Users_All_fc());
  if (!all_users) {
    std::cout << "Нет зарегистрированных пользователей! " << std::endl;
    return no_errors(false);
  }
  // выводим имена всех пользователей
  std::cout << "Зарегистрированные пользователи: " << std::endl;
  if (!all_users->empty()) {
    all_users->front().printUser();
    std::cout << endl;
    all_users->pop();
  }
  return no_errors(true);
}

std::shared_ptr<std::queue<std::string>> Chats::getUserNames() {
  using queue_str = std::queue<std::string>;
  std::shared_ptr<queue_str> usernames(
      std::make_shared<queue_str>(queue_str()));
  for (auto user : users) {
    usernames->push(
        user->getLogin());  // тут преобразование, иначе попытка своровать const
  }
  return usernames;
}

no_errors Chats::printAllMessages(const Chat_t chat) {
  if (!chat) return no_errors(false);

  queue_message_t messages = db_queries_dml.select_Messages_Mult_fc(
      chat->getId(), 1, sizeof(unsigned long int), 1,
      sizeof(unsigned long int));
  if (!messages) {
    std::cout << "Нет сообщений! " << std::endl;
    return no_errors(false);
  }
  // выводим все сообщения
  std::cout << "Зарегистрированные пользователи: " << std::endl;
  if (!messages->empty()) {
    messages->front().printMessage();
    std::cout << endl;
    messages->pop();
  }
  return no_errors(true);
}

insert_id Chats::sendMessage(const Chat_t chat, const User_t user,
                             std::string message_text) {
  // проверяем исходные дынные
  if (!(chat && user)) return 0;
  if (!(chat->getId() && user->getId())) return 0;
  std::size_t chat_user_id =
      db_queries_dml.select_Chat_User_fc(chat->getId(), user->getId());
  std::size_t message_id =
      db_queries_dml.insert_Message_fc(chat_user_id, message_text);
  return insert_id(message_id);
}
// сохраняет id последнего отправленного сообщения
void Chats::setLastSendMessageId(size_t id) { lastSendMessageId = id; }

// запрашивает ввод с консоли и возвращает текст сообщения
std::string Chats::acquaireMessage(void) {
  std::string message_text;
  std::cout << "Введите ваше сообщение: ";
  cin.ignore();
  std::getline(std::cin, message_text);
  return std::string(message_text);
}
