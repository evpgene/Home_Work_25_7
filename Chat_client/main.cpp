#include "TCP_client.h"
#include "Client.h"

#include <string>
#include <list>
#include <iostream>

int main()
{

    Client client;
    client.main();


    TCP_client tcp_client;
    tcp_client.configureConnection();
    tcp_client.openConnection();


    std::string string_to_send{"Привет от клиента!"};
	std::string string_for_receive;


while(true)
{
    // (начало цикла)
    tcp_client.send(string_to_send);
    tcp_client.receive(string_for_receive);
    // тут допустим функция восстановления строки
    // тут обработка принятой информации (начало цикла)
    // тут функция подготовки строки к отправке
    // (конец цикла)
}

  std::vector<std::string> usernames;
  std::vector<std::string> messages;

  ReceivedData receivedData(client.interpretString(string_for_receive));
  switch (receivedData._type) {
    case ANY:
      std::cout << string_for_receive << std::endl;
      break;

    case USERNAMES:
      usernames.emplace_back(receivedData._str_view);
      string_to_send = client.getContinueString();
      break;

    case USERNAMES_END: {
      int numb{0};
      for (auto username : usernames) {
        std::cout << ++numb << ": " << username << std::endl;
      }
      std::cout << "Выберете пользователя для переписки, введите его номер: " << std::endl;
      // тут проверить ввод и вренуть в строку для отправки имя пользователя

    }
    break;

    case MESSAGES:
      messages.emplace_back(receivedData._str_view);
      string_to_send = client.getContinueString();
      break;

    case MESSAGES_END:
      for (auto message : messages) {
        std::cout << message << std::endl;
      }
      messages.erase();
      break;

    default:
      string_to_send = "Неизвестная команда"; // что это??
      break;
  }




    return 0;
}



