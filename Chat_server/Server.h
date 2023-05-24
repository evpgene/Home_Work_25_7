#include "Message.h"
#include "User.h"
#include "iostream"

class Server
{
private:
    unique_ptr<Message> _message;
    unique_ptr<User> _user;

public:
    Server(/* args */);
    ~Server();

    std::shared_ptr<User> retrieveAccount(const std::string& str);

    const std::string ID{"ID:"};             // identifier
    const std::string log{"login:"};         // login string
    const std::string pas{"password:"};      // password string
    const std::string name{"username:"};     // user name string
    const std::string timesend{"timesend:"}; // timesend string
    const std::string mess{"message:"};      // message string
    const std::string sep{" "};              // separator
};
