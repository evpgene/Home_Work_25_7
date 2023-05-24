#include "Client.h"

Client::Client(/* args */)
{
}

Client::~Client()
{
}

void Client::account()
{

    std::string tmp_log, tmp_pas;
    std::cout << "Введите ваше логин" << std::endl; // login
    std::cin >> tmp_log;
    std::cout << "Введите пароль: " << std::endl;
    std::cin >> tmp_pas;
    _user = make_unique<User>(User(tmp_log, tmp_pas));
    return;

}

std::string Client::getAccountString(/* User &user */)
{
	return log + sep + _user->getLogin() + sep + pas + sep + _user->getPass();
};

std::string Client::getMessageString(/* Message &message */)
{
	return name + sep + _message->getUserName() + '\n' + timesend + sep + _message->getTimeSend() + '\n' + mess + sep + _message->getMessage();
};