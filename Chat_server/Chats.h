#pragma once
#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include "User.h"
#include "Message.h"
#include "SaveRestor.h"

using namespace std;

class Chats
{
	// переменные
	bool Q{false};
	int cmd{0};
	std::string cmd_input;
	vector<shared_ptr<User>> users;			  // массив указателей на пользователей
	vector<shared_ptr<Chat>> chats;			  // массив указателей на чаты
	shared_ptr<User> currentUserPtr{nullptr}; // указатель на текущего пользователя
	shared_ptr<Chat> currentChatPtr{nullptr}; // указатель на текущий чат

public:
	Chats(){};
	~Chats(){};

	friend void SaveRestor::saveUsers(std::vector<std::shared_ptr<User>> &users);

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
	void logon();
	// тут можно сделать возвращаемое значение истина в случае успеха
	void userRegistration();
	// Написать пользователю
	void write();
	// logoff
	void logoff();
	// Выход из программы
	void exit();

};
