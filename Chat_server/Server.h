#include "Message.h"
#include "User.h"
#include "iostream"

class Server
{
private:
    std::shared_ptr<Message> _message;
    std::shared_ptr<User> _user;

public:
    Server(/* args */);
    ~Server();

    void interpretString(const std::string& str);

    void main();
    std::shared_ptr<User> retrieveUser(const std::string& str);
    std::shared_ptr<Message> retrieveMessage(const std::string& msg);

    const std::string ID{"ID:"};             // identifier
    const std::string log{"login:"};         // login string
    const std::string pas{"password:"};      // password string
    const std::string name{"username:"};     // user name string
    const std::string timesend{"timesend:"}; // timesend string
    const std::string mess{"message:"};      // message string
    const std::string sep{" "};              // separator

    const std::string itRegistration{"&itRegn&"};
    const std::string itMessage{"&itMess&"};

};
