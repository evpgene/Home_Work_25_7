#include "Server.h"
#include "TCP_server.h"

Server::Server(/* args */)
{
}

Server::~Server()
{
}

void Server::main(void)
{
    TCP_server tcp_server;
    tcp_server.configureConnection();
    tcp_server.openConnection();


    // std::string string_to_send{"Привет от клиента!"};
	std::string string_for_receive;

tcp_server.receive(string_for_receive);

while(true)
{
    // (начало цикла)
    tcp_server.send(getGetUsernameString());
    tcp_server.receive(string_for_receive);
    // тут допустим функция восстановления строки
    // тут обработка принятой информации (начало цикла)
    // тут функция подготовки строки к отправке
    // (конец цикла)
}
}

std::shared_ptr<User> Server::retrieveUser(const std::string &str)
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

void Server::interpretString(std::string& str)
{
    std::string word;
	std::istringstream iss(str);
    //StringType stringtype; //удалить или использовать в другом месте
    std::string_view str_view; // для чего это??
    int cnt {0}; // counter

    iss >> word;
    if (!cnt)
    {
        if (word == itRegistration)
            str_view.remove_prefix(itRegistration.size() + sep.size());
    }


        switch(stringtype)

        case StringType::USER_NAMES






		};
};