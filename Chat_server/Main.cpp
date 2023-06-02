
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

  tcp_server.receive(string_for_receive);

  server.interpretString(string_for_receive);

  string_to_send = string_for_receive;

  // std::cin >> tmp;
  tcp_server.send(string_to_send);


  User_t user;
  User_t companion;
  Chat_t chat;

  ReceivedData receivedData(server.interpretString(string_for_receive));
  switch (receivedData._type) {
    case REGISTRATION:
      user = chats.userRegistration(
          server.retrieveUser(std::string(receivedData._str_view)));
      break;

    case LOGON:
      user =
          chats.logon(server.retrieveUser(std::string(receivedData._str_view)));
      break;

    case COMPANION:
      // тут селект юзер
      //  тут эдд мессэдж - по аналогии с логоном
      // тут гетчат
      companion = chats.getCompanion(std::string(receivedData._str_view));

      break;

    case MESSAGE:
      // тут селект юзер
      //  тут эдд мессэдж - по аналогии с логоном
      chats.addMessage(chat, server.retrieveMessage(std::string(receivedData._str_view)));

      break;

    default:
      break;
  }

  std::string tmp;

  while (true) {
  }

  bool sendIsReady{false};

  return 0;
}