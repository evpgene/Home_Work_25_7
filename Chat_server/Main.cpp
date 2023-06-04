
#include "Chats.h"
#include "Server.h"
#include "TCP_server.h"

using namespace std;

int main() {
  // system("chcp 1251");

  Server server;
  Chats chats;
  TCP_server tcp_server;
  

  std::string string_to_send{"Привет от сервера!"};
  std::string string_for_receive;

  chats.restordata();
  chats.mainmenu();
  chats.savedata();

  tcp_server.configureConnection();
  tcp_server.listening();
  tcp_server.openConnection();



  string_to_send = string_for_receive;


  tcp_server.send(string_to_send);
  tcp_server.receive(string_for_receive);
  server.interpretString(string_for_receive);


  User_t user;
  User_t companion;
  Chat_t chat;

  ReceivedData receivedData(server.interpretString(string_for_receive));
  switch (receivedData._type) {
    case REGISTRATION:
      user = chats.userRegistration(
          server.retrieveUser(std::string(receivedData._str_view)));
      string_to_send = "Активный пользователь: " + user->getLogin();
      break;

    case LOGON:
      user =
          chats.logon(server.retrieveUser(std::string(receivedData._str_view)));
      string_to_send = "Активный пользователь: " + user->getLogin();
      break;

    case COMPANION:
      companion = chats.getCompanion(std::string(receivedData._str_view));
      if (user && companion) chat = chats.getActiveChat(user, companion);
      string_to_send = "Активный чат: " + chat->getChatName() +
                       " с пользователем: " + companion->getLogin();
      break;

    case MESSAGE:
      chats.addMessage(
          chat, server.retrieveMessage(std::string(receivedData._str_view)));
      string_to_send = "Сообщение доставлено";
      break;

    case GET_USERNAMES:
      break;

    case CONTINUE_USERNAMES:
      break;

    case GET_MESSAGES:
      break;

    case CONTINUE_MESSAGES:
      break;

    case LOGOUT:
      break;

    case EXIT:
      break;

    default:
      string_to_send = "Неизвестная команда";
      break;
  }

  return 0;
}