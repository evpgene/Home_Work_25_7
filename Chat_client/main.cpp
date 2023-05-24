#include "TCP_client.h"
#include "Client.h"

int main()
{
    std::string str{"Privet!"};

    Client client;
    client.account();
    TCP_client tcp_client;
    tcp_client.configureConnection();
    tcp_client.openConnection();
    tcp_client.send(client.getAccountString());

    return 0;
}