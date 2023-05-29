
#include "Chats.h"
#include "TCP_server.h"

using namespace std;


int main()
{
	//system("chcp 1251");




	Chats chats;
	chats.restordata();
	chats.mainmenu();
	chats.savedata();




    TCP_server tcp_server;
    tcp_server.configureConnection();
    tcp_server.listening();
	tcp_server.openConnection();

	std::string string_to_send{"Привет от сервера!"};
	std::string string_for_receive;

	std::string tmp;

while(true)
{
	tcp_server.receive(string_for_receive);
	string_to_send = string_for_receive;
	
	std::cin >> tmp;
	tcp_server.send(string_to_send);
}
	
	bool sendIsReady {false};


	return 0;
}