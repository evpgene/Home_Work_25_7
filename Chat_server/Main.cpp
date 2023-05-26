
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



	// std::string str{"Privet!"};
    // TCP_server tcp_server;
    // tcp_server.configureConnection();
   
    // tcp_server.listening();
	// tcp_server.openConnection();
	
	// std::cout << tcp_server.receive() << std::endl;

	return 0;
}