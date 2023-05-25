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
	string userName;
	string pass;
	int cmd{0};
	std::string cmd_input;
	char choice{'n'};
	vector<shared_ptr<User>> users;			  // массив пользователей
	vector<shared_ptr<Chat>> chats;			  // массив указателей на чаты
	Message messageTmp;						  // сообщение
	User userTmp;							  // временный пользователь
	shared_ptr<User> currentUserPtr{nullptr}; // указатель на текущего пользователя
	shared_ptr<Chat> currentChatPtr{nullptr}; // указатель на текущий чат

public:
	Chats(){

	};

	~Chats(){};

	friend void SaveRestor::saveUsers(std::vector<std::shared_ptr<User>> &users);

	// Restore from files
	void restordata()
	{
		SaveRestor restor;
		restor.createPath("/tmp", "/tmp/Chat_Yevgeniy");
		restor.createPath("/tmp", "/tmp/Chat_Yevgeniy/Chats");
		restor.restorUsers(users);
		restor.restorChats(chats);
	}

	// Save to files
	void savedata()
	{
		SaveRestor save;
		save.createPath("/tmp", "/tmp/Chat_Yevgeniy");
		save.saveUsers(users);
		save.saveChats(chats);
	}

	// Main menu
	void mainmenu()
	{
		bool commonUserExist{false}; // Пользователь общий уже есть
		for (auto user : users)
		{
			if (user)
			{
				if (*user == std::string("Общий"))
				{
					commonUserExist = true;
					break;
				}
			}
		}

		if (!commonUserExist)
		{
			// сщздаём чат общий и делаем его активным
			currentChatPtr = make_shared<Chat>(Chat(std::string("Общий"))); // тут проверить, может сразу его в список чатов?

			// создаём пользователя для общего чата
			users.push_back(make_shared<User>(User(std::string("Общий"), "")));
		}

		while (!Q) // цикл
		{
			// если есть текущий пользователь - то распечатываем его
			if (currentUserPtr)
			{
				std::cout << "Активный пользователь: ";
				currentUserPtr->printUser();
			}

			std::cout << "Введите комманду (0 - помощ)" << std::endl;
			std::cin >> cmd_input;

			// проверяем корректность ввода
			try
			{
				cmd = std::stoi(cmd_input);
			}
			catch (exception &except)
			{
				cout << endl
					 << except.what() << endl;
				cmd = 0;
			}

			try // обработка исключений
			{
				switch (cmd)
				{
				case 0:
					std::cout << "0 - помощь" << std::endl;
					std::cout << "1 - вывести данные текущего пользователя" << std::endl;
					std::cout << "2 - авторизоваться" << std::endl;
					std::cout << "3 - написать сообщение" << std::endl;
					std::cout << "4 - регистрация пользователя" << std::endl;
					std::cout << "8 - выйти из учётной записи" << std::endl;
					std::cout << "9 - выйти из программы" << std::endl;
					std::cout << "Имя пользователя должно состоять из одного слова" << std::endl;
					break;

				case 1: // выводим  данные текущего пользователя
					userinfo();
					break;
				case 2: // User logon
					logon();
					break;
				case 3: // Написать пользователю
					write();
					break;
				case 4: // User registration
					userRegistration();
					break;
				case 8: // logoff
					logoff();
					break;
				case 9: // Выход из программы
					exit();
					break;
				default:
					std::cout << "Нет такой команды: " << cmd << std::endl;
					break;
				}
			}
			catch (exception &except)
			{
				cout << endl
					 << except.what() << endl;
			}
		}
	}
	// выводим  данные текущего пользовател
	void userinfo()
	{
		if (currentUserPtr)
		{
			std::cout << "Активный пользователь: ";
			currentUserPtr->printUser();
			std::cout << endl;
		}
		// распечатываем имена всех зарегистрированных пользователей
		if (users.size() > 0)
		{
			std::cout << "Зарегистрированные пользователи: " << std::endl; // users
			for (const auto &u : users)
				u->printUser(); // print();
			std::cout << endl;
		}
		else
		{
			std::cout << "Нет зарегистрированных пользователей! " << std::endl;
		}
	}
	// User logon
	// тут можно сделать возвращаемое значение истина в случае успеха и передавать в функцию готового юзера для входа
	// чтобы унифицировать процедуру с регистрацией и не вводить по десять раз одно и то же
	// например сделать функцию инсерт юзер дата, которая возвращает юзера

	void logon()
	{
		std::string tmp_login, tmp_pass;
		std::cout << "Введите ваше имя" << std::endl; // login
		std::cin >> tmp_login;
		std::cout << "Введите ваш пароль: " << std::endl;
		std::cin >> tmp_pass;
		User tmp_user(tmp_login, tmp_pass);

		// ищем пользователя с заданным логином и паролем (или хэшем)
		for (auto user : users)
		{
			if (user)
			{
				if (*user == tmp_user) // если пользователь найден
				{
					currentUserPtr = user;
					std::cout << "Вы вошли как: ";
					currentUserPtr->printUser();
					std::cout << std::endl;
					return;
				}
			}
		}
		std::cout << "Такого пользователя нет. " << std::endl;
	}

	// тут можно сделать возвращаемое значение истина в случае успеха
	void userRegistration()
	{
		// по сути тут дальше регистрация пользователя
		{
			std::string tmp_login, tmp_pass;
			std::cout << "Введите ваше имя" << std::endl; // login
			std::cin >> tmp_login;
			std::cout << "Введите ваш пароль: " << std::endl;
			std::cin >> tmp_pass;

			for (auto user : users)
			{
				if (user)
				{
					if (*user == tmp_login)
					{
						std::cout << "Такой пользователь уже существует: " << std::endl;
						return;
					}
				}
			}
			currentUserPtr = make_shared<User>(User(tmp_login, tmp_pass)); // делаем нового пользователя активным
			users.push_back(currentUserPtr);							   // добавляем пользователя в массив пользователей
			std::cout << "Вы вошли как: " << std::endl;
			currentUserPtr->printUser();
			std::cout << std::endl;
		}
	}

	// Написать пользователю
	void write()
	{
		// Выводим имя активного пользователя
		if (currentUserPtr)
		{
			std::cout << "Активный пользователь: ";
			currentUserPtr->printUser();

			{
				// выводим имена всех пользователей
				std::cout << "Зарегистрированные пользователи: " << std::endl;
				int i{1};
				for (const auto user : users)
				{
					std::cout << i++ << ": ";
					user->printUser();
				}
			}

			{
				// int found_indx{0}; // временная переменная найденный элемент
				// int id{0}; // временная переменная идентификатор
				std::string id_input;
				std::cout << "Выберите пользователя для чата (введите номер) " << std::endl;
				std::cin >> id_input;
				shared_ptr<User> tmp_companion;
				// проверяем корректность ввода
				try
				{
					tmp_companion = users.at(std::stoi(id_input) - 1);
				}
				catch (const std::exception &e)
				{
					cout << endl
						 << e.what() << endl;
				}

				if (tmp_companion)
				{
					// вывод найденного пользователя для отслеживания поведения программы - можно удалить
					std::cout << "Пользователь найден: ";
					tmp_companion->printUser();
				}
				else
				{
					std::cout << "Нет такого пользователя! " << std::endl;
				}
				///////////////////////////////////////////////////////////////////////////////////////////////////////продолжить тут
				std::string chatName;	// имя чата первая комбинация
				std::string chatName_2; // имя чата вторая комбинация
				if (currentUserPtr)
				{
					if (tmp_companion)
					{
						if (*tmp_companion == std::string("Общий")) // имя пользователя - Общий и имя чата задаём тоже Общий.
						{
							chatName = "Общий";
						}
					}
					else
					{
						// формирования имени чата первая часть
						chatName = currentUserPtr->getLogin();
						chatName += tmp_companion->getLogin();
					}
					// формирования имени чата вторая часть
					chatName_2 = tmp_companion->getLogin();
					chatName_2 += currentUserPtr->getLogin();
				}

				{
					currentChatPtr = nullptr;
					for (auto chat : chats)
					{
						if (chat)
						{
							if (*chat == chatName || *chat == chatName_2)
							{
								currentChatPtr = chat;
								break;
							}
						}
					}

					if (currentChatPtr)
					{
						std::cout << "Такой чат уже существует: " << currentChatPtr->getChatName() << std::endl;
						currentChatPtr->printMessage();
					}
					else // если такого чата нет - создаём чат и добавляем указатели на него в список чатов каждого пользователя
					{
						currentChatPtr = make_shared<Chat>(chatName);
						chats.push_back(currentChatPtr);
					}

					// послать сообщение
					if (currentUserPtr)
					{
						// формируем сообщение
						std::string tmp_Messge;
						std::cout << "Введите ваше сообщение: "; //<< std::endl;
						cin.ignore();
						std::getline(std::cin, tmp_Messge);
						time_t now = time(0); // текущие дата/время основываясь на текущей системе
						char dt[26];
						ctime_r(&now, dt);
						dt[24] = ' '; // убираем перенос строки
						currentChatPtr->addMessage(Message(std::string(dt), currentUserPtr->getLogin(), tmp_Messge));
						// currentChatPtr->printMessage(); // закоментить или убрать
						// std::cout << endl;
					}
				}
			}
		}
		else
		{
			std::cout << "Вы не зарегистрированы! " << std::endl;
		}
	}
	// logoff
	void logoff()
	{
		if (currentUserPtr)
		{
			std::cout << "Вы вышли из учётной записи";
			currentUserPtr->printUser();
			std::cout << std::endl;
			currentUserPtr = nullptr;
		}
		else
		{
			std::cout << "Прежде чем выйти из учётной записи необходимо в неё войти. Вы не вошли в учётую запись." << std::endl;
		}
	}
	// Выход из программы
	void exit()
	{
		Q = true;
	}
};
