#include "Message.h"
#include "User.h"
#include "iostream"

//клиент должен конструировать User
// -то есть осуществлять ввод регистрационных данных, затем отправлять их на сервер
//конструировать Message

//убрать из User ID !!! лучше хранить в списке, например

class Client
{
private:
    unique_ptr<Message> _message;
    unique_ptr<User> _user;
public:
    Client(/* args */);
    ~Client();
    void mainMenue();
    void account();
    void logout();
    void sendUser();
    void sendMessage();
    void receivMessage();


    const std::string ID{"ID:"};             // identifier
    const std::string log{"login:"};         // login string
    const std::string pas{"password:"};      // password string
    const std::string name{"username:"};     // user name string
    const std::string timesend{"timesend:"}; // timesend string
    const std::string mess{"message:"};      // message string
    const std::string sep{" "};              // separator

    std::string getAccountString(/* User &user */);
    std::string getMessageString(/* Message &message */);
};


