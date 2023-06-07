
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
        string_to_send =
            std::string("Активный пользователь: ") + user->getLogin();
        break;

      case LOGON:
        user = chats.logon(
            server.retrieveUser(std::string(receivedData._str_view)));
        string_to_send = "Активный пользователь: " + user->getLogin();
        break;

      case COMPANION:
        companion = chats.getCompanion(std::string(receivedData._str_view));
        if (user && companion) chat = chats.getActiveChat(user, companion);
        string_to_send = "Активный чат: " + chat->getChatName() +
                         " с пользователем: " + companion->getLogin();
        std::cout << "string t send at companion step: " << string_to_send
                  << std::endl;
        break;

      case MESSAGE:
        chats.addMessage(
            chat, server.retrieveMessage(std::string(receivedData._str_view)));
        string_to_send = "Сообщение доставлено";
        break;

      case GET_USERNAMES:
        std::cout << "getusernames step" << std::endl;
        usernames = chats.getUserNames();
      case CONTINUE_USERNAMES:
        std::cout << "continueusernames step" << std::endl;
        if (!usernames->empty()) {
          string_to_send = server.getUsernamesString(usernames->front());
          usernames->pop();
        } else
          string_to_send = server.getUsernamesEnd();
        break;

      case GET_MESSAGES:
        std::cout << "get messages step" << std::endl;
        lastMessages = chat->getLastMessages();

        std::cout << "last messages from queue step get_messages start "
                  << std::endl;
        while (!lastMessages.empty()) {
          std::cout << std::endl;
          lastMessages.front().printMessage();
          std::cout << std::endl;
          lastMessages.pop();
        }
        std::cout << "last messages from queue step get_messages end "
                  << std::endl;

      case CONTINUE_MESSAGES:
        std::cout << "continuemessages step" << std::endl;
        if (!lastMessages.empty()) {
          string_to_send = server.getMessageString(lastMessages.front());
          lastMessages.pop();
          std::cout << "one message pop " << std::endl;
        } else
          string_to_send = server.getMessagesEnd();
        break;

      case LOGOUT:
        string_to_send = "Logout for respond";
        break;

      case EXIT:
        string_to_send = "Exit for respond";
        break;

      case NOTHING:
        string_to_send = "Nothing for respond";
        break;

      default:
        string_to_send = "Неизвестная команда";
        break;
    }
  }
  return 0;
}