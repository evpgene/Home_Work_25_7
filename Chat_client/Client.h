#include "Message.h"
#include "User.h"
#include <iostream>
#include <string>
#include <sstream>
//клиент должен конструировать User
// -то есть осуществлять ввод регистрационных данных, затем отправлять их на сервер
//конструировать Message




//убрать из User ID !!! лучше хранить в списке, например

class Client
{
private:
    Message _message;
    User _user;
public:
    Client(/* args */);
    ~Client();
    void main(void);
    int identReceive(std::string receive);

    
    void setAccount();
    void setMessage();
    const std::string getLogonString() const;
    const std::string getMessageString() const;
    const std::string getRegistrationString() const;

    const std::string getGetUsernameString() const;
    const std::string getGetMessagesString() const;

    void interpretString(std::string&);



    // void logout();

    // void sendUser();
    // void sendMessage();

    // void receivMessage();

    // keywords
    const std::string ID{"ID:"};             // identifier
    const std::string log{"login:"};         // login string
    const std::string pas{"password:"};      // password string
    const std::string name{"username:"};     // user name string
    const std::string timesend{"timesend:"}; // timesend string
    const std::string mess{"message:"};      // message string
    const std::string sep{" "};              // separator

    const std::string itMessage{"&itMess&"};
    const std::string itLogon{"&itLoon&"};
    const std::string itLogout{"&itLout&"};
    const std::string itExit{"&itExit&"};
    //const std::string itUserinfo
    const std::string itRegistration{"&itRegn&"};

    const std::string itGetUsernames{"&itGtUn&"}; // get registered usernames
    const std::string itUsernames{"&itUnms&"}; // get registered usernames
    const std::string itGetMessages{"&itGtMs&"}; // get last messages
    const std::string itMessages{"&itMsgs&"}; // get last messages
    
    const std::string itCompName{"&itCmnm&"}; // select companion

enum class StringType
{
    USER_NAMES,
    MESSAGES,



}


};


