#include "User.h"
#include <iostream>

User::User()
{
}

User::User(const std::string& login, const std::string& pass) : _login(login), _pass(pass)
{
}

User::~User()
{
}

void User::setLogin(const std::string& login)
{
    _login = login;
}

void User::setPass(const std::string& pass)
{
    _pass = pass;
}

std::string User::getLogin() const
{
    return _login;
}

std::string User::getPass() const
{
    return (_pass);
}

void User::printUser() const
{
    std::cout << " " << _login << std::endl;
}

bool operator== (const User& u1, const User& u2)
{
    return u1._login == u2._login;
}
bool operator!= (const User& u1, const User& u2)
{
    return !(u1 == u2);
}