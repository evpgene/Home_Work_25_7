
#include <queue>

#include "Chats.h"
#include "Server.h"
#include "TCP_server.h"

using namespace std;

int main() {
  // system("chcp 1251");

  Server server;
  Chats chats;
  TCP_server tcp_server;

  bool firstcycle{true};

  std::string string_to_send{"Привет от сервера!"};
  std::string string_for_receive;

  // chats.restordata();
  // chats.mainmenu();
  // chats.savedata();

  tcp_server.configureConnection();
  tcp_server.listening();
  tcp_server.openConnection();

  User_t user;
  User_t companion;
  Chat_t chat;
  std::shared_ptr<std::queue<std::string>> usernames;
  std::queue<Message> lastMessages;

  while (true) {
    if (!firstcycle) {
      tcp_server.send(string_to_send);
    }
    firstcycle = false;
    tcp_server.receive(string_for_receive);

    ReceivedData receivedData(server.interpretString(string_for_receive));
    switch (receivedData._type) {
      case REGISTRATION:
        user = chats.userRegistration(
            server.retrieveUser(std::string(receivedData._str_view)));
        if (!user) {
          string_to_send = std::string("Ошибка регистрации");
          break;
        }
        string_to_send =
            std::string("Активный пользователь: ") + user->getLogin();
        break;

      case LOGON:
        user = chats.logon(
            server.retrieveUser(std::string(receivedData._str_view)));
        if (!user) {
          string_to_send = std::string("Ошибка входа в учётную запись");
          break;
        }
        string_to_send = "Активный пользователь: " + user->getLogin();

      case COMPANION:
        if (!user) {
          string_to_send = "Вы не вошли в учётную запись";
          break;
        }
        companion = chats.getCompanion(std::string(receivedData._str_view));
        if (!companion) {
          string_to_send = "Пользователь для переписки не найден";
          break;
        }
        chat = chats.getActiveChat(user, companion);
        if (!chat) {
          string_to_send = "чат не существует";
          break;
        };

        string_to_send = "Активный чат: " + chat->getChatName() +
                         " с пользователем: " + companion->getLogin();
        break;

      case MESSAGE:
        if (!chat) {
          string_to_send = "чат не существует";
          break;
        };
        {
          Message_t msg(
              server.retrieveMessage(std::string(receivedData._str_view)));
              if(!msg) {string_to_send = "Сообщение не доставлено или повреждено";}
          chats.addMessage(chat, msg);
          string_to_send = "принято";
        }
        break;

      case GET_USERNAMES:
        std::cout << "getusernames step" << std::endl; // диагностическая информация на сервер
        usernames = chats.getUserNames();
      case CONTINUE_USERNAMES:
        std::cout << "continueusernames step" << std::endl; // диагностическая информация на сервер
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
        std::cout << "continuemessages step" << std::endl; // диагностическая информация на сервер
        if (!lastMessages.empty()) {
          string_to_send = server.getMessageString(lastMessages.front());
          lastMessages.pop();
          std::cout << "one message pop " << std::endl; // диагностическая информация на сервер
      } else{
        string_to_send = server.getMessagesEnd();}
        break;

      case LOGOUT:
        string_to_send = "Logout for respond";
        user = nullptr;
        companion = nullptr;
        while (!lastMessages.empty()) lastMessages.pop();
        break;

      case EXIT:
        string_to_send = "Exit for respond";
        return 0;
        break;

      case NOTHING:
        string_to_send = "Nothing for respond";
        break;// диагностическая информация на сервер
        string_to_send = "Неизвестная команда";
        break;
    }
  }
  return 0;
}