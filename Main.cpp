// #pragma once

#include "Chats.h"


using namespace std;


int main()
{
	//system("chcp 1251");




	Chats chats;
	chats.restordata();
	chats.mainmenu();
	chats.savedata();

	return 0;
}