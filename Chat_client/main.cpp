#include <iostream>
#include <list>
#include <string>

#include "Client.h"
#include "TCP_client.h"

int main() {
  Client client;
  // client.main();

  bool firstcycle{true};

  User_t user;
  std::string cmd_input;
  int cmd{0};

  TCP_client tcp_client;
  tcp_client.configureConnection();
  tcp_client.openConnection();

  std::vector<std::string> usernames;
  std::vector<std::string> messages;

  std::string string_to_send{"Привет от клиента!"};
  std::string string_for_receive;

  while (true) {
    // (начало цикла)
    if (!firstcycle) {

      tcp_client.send(string_to_send);
      tcp_client.receive(string_for_receive);
      // тут допустим функция восстановления строки
      // тут обработка принятой информации (начало цикла)
      // тут функция подготовки строки к отправке
      // (конец цикла)

      ReceivedData receivedData(client.interpretString(string_for_receive));
      switch (receivedData._type) {
        case ANY:
          std::cout << string_for_receive << std::endl;
          // тут мэйнменю
          break;

        case USERNAMES:
          usernames.emplace_back(receivedData._str_view);
          string_to_send = client.getContinueMessagesString();
          break;

        case USERNAMES_END: {
          int numb{0};
          for (auto username : usernames) {
            std::cout << ++numb << ": " << username << std::endl;
          }
          std::string id_input;
          std::cout << "Выберите пользователя для чата (введите номер) "
                    << std::endl;
          std::cin >> id_input;
          // проверяем корректность ввода
          try {
            string_to_send = usernames.at(std::stoi(id_input) - 1);
          } catch (const std::exception &e) {
            cout << endl << e.what() << endl;
          }

        } break;

        case MESSAGES:
          messages.emplace_back(receivedData._str_view);
          string_to_send = client.getContinueMessagesString();
          break;

        case MESSAGES_END:
          for (auto message : messages) {
            std::cout << message << std::endl;
          }
          messages.clear();
          break;

        default:
          string_to_send = "Неизвестная команда";  // что это??
          break;
      }
    }
    firstcycle = false;
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
          if (user) {
            std::cout << "Пользователь: " << user->getLogin() << std::endl;
          } else {
            std::cout << "Вы не ввели данные пользователя" << std::endl;
          }
          break;
        case 2:  // User logon
          user = client.inputUser();
          if (user) {
            string_to_send = client.getLogonString(user);
          } else {
            std::cout << "Вы не ввели данные пользователя" << std::endl;
          }
          break;
        case 3:  // Написать пользователю
          if (user) {
            string_to_send = client.getMessageString(client.inputMessage(user));
          } else {
            std::cout << "Вы не ввели данные пользователя" << std::endl;
          }
          break;
        case 4:  // User registration
          user = client.inputUser();
          if (user) {
            string_to_send = client.getRegistrationString(user);
          } else {
            std::cout << "Вы не ввели данные пользователя" << std::endl;
          }
          break;
        case 8:  // logoff
          string_to_send = client.getLogoutString();
          break;
        case 9:  // Выход из программы
          string_to_send = client.getExitString();
          break;
        default:
          std::cout << "Нет такой команды: " << cmd << std::endl;
          break;
      }
    } catch (exception &except) {
      cout << endl << except.what() << endl;
    }
  }

  return 0;
}
