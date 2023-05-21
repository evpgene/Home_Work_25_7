#include "Message.h"
#include "User.h"

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
    void login();
    void logout();
    void sendUser();
    void sendMessage();
    void receivMessage();
};

Client::Client(/* args */)
{
}

Client::~Client()
{
}
