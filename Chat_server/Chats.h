#pragma once
#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include "User.h"
#include "Message.h"
#include "SaveRestor.h"
//#include "TCP_server.h"
#include "Server.h"

using User_t = std::shared_ptr<User>;  // указатель на юзера
using Chat_t = std::shared_ptr<Chat>;  // указатель на чат

class Chats
{
	// переменные
	bool Q{false};
	int cmd{0};
	std::string cmd_input;
	std::vector<User_t> users; // массив указателей на пользователей
	std::vector<Chat_t> chats; // массив указателей на чаты
	User_t currentUserPtr{nullptr}; // указатель на текущего пользователя
	Chat_t currentChatPtr{nullptr}; // указатель на текущий чат




public:
	Chats(){};
	~Chats(){};

	friend void SaveRestor::saveUsers(std::vector<User_t> &users);
	

	// Restore from files
	void restordata();
	// Save to files
	void savedata();

	// Main menu
	void mainmenu();
	// выводим  данные текущего пользовател
	void userinfo();
	
	// тут можно сделать возвращаемое значение истина в случае успеха и передавать в функцию готового юзера для входа
	// чтобы унифицировать процедуру с регистрацией и не вводить по десять раз одно и то же
	// например сделать функцию инсерт юзер дата, которая возвращает юзера

	// User logon
	User_t logon(const User_t user);
	void logon();
	// тут можно сделать возвращаемое значение истина в случае успеха
	User_t  userRegistration(const User_t user);
	void userRegistration();
	// Написать пользователю
	void write();
	// logoff
	void logoff();
	// Выход из программы
	void exit();

	void localCycle();
	void remoteCycle();


	User_t getCompanion(const std::string& companion);
	Chat_t getActiveChat(const User_t user, const User_t companion);
	void addMessage(const Chat_t chat, const std::shared_ptr<Message> msg);

};
