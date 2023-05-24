#include "User.h"
#include <iostream>

User::User()
{
}

User::User(unsigned long long ID, const std::string& login, const std::string& pass) : _ID(ID), _login(login), _pass(pass)
{
}
User::User(const std::string& login, const std::string& pass) : _login(login), _pass(pass)
{
}

User::~User()
{
}

void User::setID(unsigned long long ID)
{
    _ID = ID;
}

void User::setLogin(const std::string& login)
{
    _login = login;
}

void User::setPass(const std::string& pass)
{
    _pass = pass;
}

unsigned long long User::getID() const
{
    return _ID;
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
    std::cout << " " << _ID;
    std::cout << " " << _login << std::endl;
}

void User::addChat(shared_ptr<Chat> chat)
{
    _chats.push_back(chat);
}

void User::printChatNames()
{
   // _chats.printChatNames();
    for (auto c : _chats)
        ;// c.
        //c.printChatName();
    
}

bool operator== (const User& u1, const User& u2)
{
    return u1._login == u2._login;
}
bool operator!= (const User& u1, const User& u2)
{
    return !(u1 == u2);
}