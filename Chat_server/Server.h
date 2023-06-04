#pragma once
#include "Message.h"
#include "User.h"
#include "iostream"
#include "ReceivedData.h"
#include "Keywords.h"
//

class Server
{
private:
    std::shared_ptr<Message> _message;
    std::shared_ptr<User> _user;
    

public:
    Server(/* args */);
    ~Server();

    const Keywords key;

    ReceivedData interpretString(const std::string& str);

    void main();
    std::shared_ptr<User> retrieveUser(const std::string& str);
    std::shared_ptr<Message> retrieveMessage(const std::string& msg);
};
