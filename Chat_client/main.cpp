#include "TCP_client.h"
#include "Client.h"

#include <string>

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


  ReceivedData receivedData(client.interpretString(string_for_receive));
  switch (receivedData._type) {
    case ANY:

      break;

    case USERNAMES:


      break;

    case MESSAGES:


      break;

    case PACKAGEEND:


      break;

    default:
      string_to_send = "Неизвестная команда";
      break;
  }




    return 0;
}



