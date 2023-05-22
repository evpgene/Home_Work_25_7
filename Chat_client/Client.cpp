#include "Client.h"

void Client::login()
{

    {
        std::string tmp_log, tmp_pas;
        std::cout << "Введите ваше логин" << std::endl; // login
        std::cin >> tmp_log;
        std::cout << "Введите пароль: " << std::endl;
        std::cin >> tmp_pas;
        _user = make_unique<User>(User(tmp_log, tmp_pas));
    }
}