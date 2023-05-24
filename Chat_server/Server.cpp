#include "Server.h"

Server::Server(/* args */)
{
}

Server::~Server()
{
}

std::shared_ptr<User> Server::retrieveAccount(const std::string &str)
{
    bool nextIsLogin{false}, doneLogin{false}, nextIsPass{false}, donePass{false};
    std::string word;
    shared_ptr<User> user = make_shared<User>(User());
    std::istringstream iss(str);
    while (iss >> word)
    {
        if (nextIsLogin)
        {
            user->setLogin(word);
            nextIsLogin = false;
            doneLogin = true;
        };
        if (nextIsPass)
        {
            user->setPass(word);
            nextIsPass = false;
            donePass = true;
        };

        if (word == log)
        {
            nextIsLogin = true;
        }
        if (word == pas)
        {
            nextIsPass = true;
        }
    }
    if (doneLogin  && donePass) // donePass может отсутствовать для общего чата
    {
        return user;
    }
    return nullptr;
}