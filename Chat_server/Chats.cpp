#include "Chats.h"



void Chats::mainmenu() {
  bool commonUserExist{false};  // Пользователь общий уже есть
  for (const auto user_ptr : users) {
    if (user_ptr) {
      if (*user_ptr == std::string("Общий")) {
        commonUserExist = true;
        break;
      }
    }
  }

  if (!commonUserExist) {
    // сщздаём чат общий и делаем его активным
    currentChatPtr = make_shared<Chat>(Chat(std::string(
        "Общий")));  // тут проверить, может сразу его в список чатов?

    // создаём пользователя для общего чата
    users.emplace_back(make_shared<User>(User(
        std::string("Общий"), "")));  // конструируем "на месте", так сказать
  }
  localCycle();
}
void Chats::userinfo() {
  if (currentUserPtr) {
    std::cout << "Активный пользователь: ";
    currentUserPtr->printUser();
    std::cout << endl;
  }

  if (currentChatPtr) {
    std::cout << "Активный чат: ";
    currentChatPtr->printChatName();
    std::cout << endl;
  }

  // распечатываем имена всех зарегистрированных пользователей
  if (users.size() > 0) {
    std::cout << "Зарегистрированные пользователи: " << std::endl;  // users
    for (const auto user_ptr : users) user_ptr->printUser();        // print();
    std::cout << endl;
  } else {
    std::cout << "Нет зарегистрированных пользователей! " << std::endl;
  }
}

void Chats::logon() {
  std::string tmp_login, tmp_pass;
  std::cout << "Введите ваше имя" << std::endl;  // login
  std::cin >> tmp_login;
  std::cout << "Введите ваш пароль: " << std::endl;
  std::cin >> tmp_pass;
  User tmp_user(tmp_login, tmp_pass);

  // ищем пользователя с заданным логином и паролем (или хэшем)
  for (const auto user_ptr : users) {
    if (user_ptr) {
      if (*user_ptr == tmp_user)  // если пользователь найден
      {
        currentUserPtr = user_ptr;
        std::cout << "Вы вошли как: ";
        currentUserPtr->printUser();
        std::cout << std::endl;
        return;
      }
    }
  }
  std::cout << "Такого пользователя нет. " << std::endl;
}

User_t Chats::logon(const User_t user_ptr) {
  if(!user_ptr) return nullptr;
  for (const auto _user_ptr :
       users) {  // ищем пользователя с заданным логином и паролем (или хэшем)
    if (_user_ptr->getLogin() == user_ptr->getLogin()) {  // если пользователь найден
      currentUserPtr = _user_ptr; // проверить необходимость этой строки
      return currentUserPtr;
    }
  }
  return nullptr;
}

void Chats::userRegistration() {
  std::string tmp_login, tmp_pass;
  std::cout << "Введите ваше имя" << std::endl;  // login
  std::cin >> tmp_login;
  std::cout << "Введите ваш пароль: " << std::endl;
  std::cin >> tmp_pass;

  for (const auto user_ptr : users) {
    if (user_ptr) {
      if (*user_ptr == tmp_login) {
        std::cout << "Такой пользователь уже существует: " << std::endl;
        return;
      }
    }
  }

  // далее запишу несколько строк по другому:
  // currentUserPtr = make_shared<User>(User(tmp_login, tmp_pass)); // делаем
  // нового пользователя активным users.push_back(currentUserPtr); // добавляем
  // пользователя в массив пользователей

  currentUserPtr = users.emplace_back(
      make_shared<User>(User(std::move(tmp_login), std::move(tmp_pass))));

  std::cout << "Вы вошли как: " << std::endl;
  currentUserPtr->printUser();
  std::cout << std::endl;
}

User_t Chats::userRegistration(const User_t user_ptr) {
  if(!user_ptr) return nullptr;
  // ищем пользователя с заданным логином и паролем (или хэшем)
  for (const auto _user_ptr : users) {
    // если пользователь найден
    if (_user_ptr->getLogin() == user_ptr->getLogin()) {
      return nullptr;
    }
  }
  currentUserPtr = users.emplace_back(make_shared<User>(
      User(std::move(user_ptr->getLogin()), std::move(user_ptr->getPass()))));
  return currentUserPtr;
}

User_t Chats::getCompanion(const std::string& companion) {
  for (const auto _user_ptr : users) {  // ищем компаньона с заданным именем
    if (_user_ptr->getLogin() == companion) {  // если компаньон найден
      return _user_ptr;
    }
  }
  return nullptr;
}

Chat_t Chats::getActiveChat(const User_t user, const User_t companion) {
  if (user && companion) {
    // имя чата первая комбинация
    std::string chatName{user->getLogin() + companion->getLogin()};
    // имя чата вторая комбинация
    std::string chatName_2{companion->getLogin() + user->getLogin()};

    if (companion->getLogin() == std::string("Общий")) {
      chatName = "Общий";
      chatName_2 = "Общий";
    }
    // проверяем, существует ли чат с заданными именами
    for (const auto chat_ptr : chats) {
      if (chat_ptr) {
        if (chat_ptr->getChatName() == chatName ||
            chat_ptr->getChatName() == chatName_2) {
          return chat_ptr;
        }
      }
    }
    return chats.emplace_back(make_shared<Chat>(Chat(chatName)));
  }
  return nullptr;
}

void Chats::write() {
  // Выводим имя активного пользователя
  if (currentUserPtr) {
    std::cout << "Активный пользователь: ";
    currentUserPtr->printUser();

    // выводим имена всех пользователей
    std::cout << "Зарегистрированные пользователи: " << std::endl;
    int i{1};
    for (const auto user_ptr : users) {
      std::cout << i++ << ": ";
      user_ptr->printUser();
    }

    std::string id_input;
    std::cout << "Выберите пользователя для чата (введите номер) " << std::endl;
    std::cin >> id_input;
    shared_ptr<User> tmp_companion;
    // проверяем корректность ввода
    try {
      tmp_companion = users.at(std::stoi(id_input) - 1);
    } catch (const std::exception &e) {
      cout << endl << e.what() << endl;
    }

    if (tmp_companion) {
      // вывод найденного пользователя для отслеживания поведения программы -
      // можно удалить
      std::cout << "Пользователь найден: ";
      tmp_companion->printUser();
    } else {
      std::cout << "Нет такого пользователя! " << std::endl;
    }
    std::string chatName;  // имя чата первая комбинация
    std::string chatName_2;  // имя чата вторая комбинация

    if (currentUserPtr) {
      if (tmp_companion) {
        if (*tmp_companion ==
            std::string("Общий"))  // имя пользователя - Общий и имя чата задаём
                                   // тоже Общий.
        {
          chatName = "Общий";
        } else {
          // формирования имени чата первая часть
          chatName = currentUserPtr->getLogin();
          chatName += tmp_companion->getLogin();
        }
      }

      // формирования имени чата вторая часть
      chatName_2 = tmp_companion->getLogin();
      chatName_2 += currentUserPtr->getLogin();
    }

    currentChatPtr = nullptr;
    for (const auto chat_ptr :
         chats)  // проверяем, существует ли чат с заданными именами
    {
      if (chat_ptr) {
        if (*chat_ptr == chatName || *chat_ptr == chatName_2) {
          currentChatPtr = chat_ptr;
          break;
        }
      }
    }

    if (!(currentChatPtr))  // если такого чата нет - создаём чат и добавляем
                            // указатели на него в список чатов каждого
                            // пользователя
    {
      currentChatPtr = chats.emplace_back(make_shared<Chat>(Chat(chatName)));
    }

    currentChatPtr->printMessages();

    if (currentUserPtr)  // послать сообщение
    {
      std::string tmp_Messge;
      std::cout << "Введите ваше сообщение: ";
      cin.ignore();
      std::getline(std::cin, tmp_Messge);
      time_t now =
          time(0);  // текущие дата/время основываясь на текущей системе
      char dt[26];
      ctime_r(&now, dt);
      dt[24] = ' ';  // убираем перенос строки
      currentChatPtr->addMessage(std::move(Message(
          std::string(dt), currentUserPtr->getLogin(), std::move(tmp_Messge))));
    }
  } else {
    std::cout << "Вы не зарегистрированы! " << std::endl;
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

//тут добавил новые объявления/////////////////////////////
	Server server;
	TCP_server tcp_server;
	std::string string_to_send{"Привет от сервера!"};
	std::string string_for_receive;
	User_t user;
	User_t companion;
	Chat_t chat;
	std::shared_ptr<std::queue<std::string>> usernames;
	queue_message_t lastMessages;
//тут добавил новые объявления конец/////////////////////////////

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
        user = logon(
            server.retrieveUser(std::string(receivedData._str_view)));
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
        companion = getCompanion(std::string(receivedData._str_view));
        if (!companion) {
          string_to_send = "Пользователь для переписки не найден";
          break;
        }
        chat = getActiveChat(user, companion);
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
