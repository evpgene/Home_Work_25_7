#include "TCP_client.h"
#include "Client.h"

#include <string>

int main()
{
    // std::string str{"Privet!"};

    Client client;
    // client.account();
    TCP_client tcp_client;
    tcp_client.configureConnection();
    tcp_client.openConnection();


    std::string string_to_send{"Привет от клиента!"};
	std::string string_for_receive;
    int count {1000};

while(true)
{
tcp_client.send(to_string(count++));
tcp_client.receive(string_for_receive);
}


    return 0;
}