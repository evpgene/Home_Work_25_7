#include "Server.h"
#include "TCP_server.h"


Server::Server(/* args */)
{
}

Server::~Server()
{
}

// ReceivedType receivedType;

// void Server::main(void) {

// std::string str;  
// ReceivedData receivedData(Server:: (str));


//   }


std::shared_ptr<User> Server::retrieveUser(const std::string& str) {
bool nextIsLogin{false}, doneLogin{false}, nextIsPass{false}, donePass{false};
std::string word;
std::shared_ptr<User> user = make_unique<User>(User());
std::istringstream iss(str);
while (iss >> word) {
    if (nextIsLogin) {
      user->setLogin(word);
      nextIsLogin = false;
      doneLogin = true;
    };
    if (nextIsPass) {
      user->setPass(word);
      nextIsPass = false;
      donePass = true;
    };

    if (word == log) {
      nextIsLogin = true;
    }
    if (word == pas) {
      nextIsPass = true;
    }
}
if (doneLogin && donePass)  // donePass может отсутствовать для общего чата
{
    return user;
}
return nullptr;
}

std::shared_ptr<Message> Server::retrieveMessage(const std::string& msg) {
std::string isTime, isName, isMessage;
bool doneTime{false}, doneName{false}, doneMessage{false};
std::size_t pos = msg.find(name);
pos = msg.find(timesend);

if (pos != std::string::npos) {
    isTime = msg.substr(timesend.size() + sep.size());
    doneTime = true;
    // std::cout << "isTime: " << isTime << std::endl;  // для диагностики -
    // можно убрать
};

if (pos != std::string::npos) {
    isName = msg.substr(name.size() + sep.size());
    doneName = true;
    // std::cout << "isName: " << isName << std::endl; // для диагностики -
    // можно убрать
};

pos = msg.find(mess);
if (pos != std::string::npos) {
    isMessage = msg.substr(mess.size() + sep.size());
    doneMessage = true;
    // std::cout << "isMessage: " << isMessage << std::endl; // для
    // диагностики - можно убрать
};

return make_shared<Message>(Message(isTime, isName, isMessage));
}

ReceivedData Server::interpretString(const std::string& str) {
std::string_view str_view{str};  // для чего это??
std::string_view first_word{str_view.substr(0, str_view.find(sep))};

if (first_word == itLogon) {
    str_view.remove_prefix(itLogon.size() + sep.size());
    return ReceivedData(ReceivedType(LOGON), str_view);
};

if (first_word == itRegistration) {
    str_view.remove_prefix(itRegistration.size() + sep.size());
    return ReceivedData(ReceivedType(REGISTRATION), str_view);
};

if (first_word == itMessage) {
    str_view.remove_prefix(itMessage.size() + sep.size());
    return ReceivedData(ReceivedType(MESSAGE), str_view);
};

if (first_word == itCompName) {
    str_view.remove_prefix(itCompName.size() + sep.size());
    return ReceivedData(ReceivedType(COMPANION), str_view);
};

return ReceivedData(ReceivedType(NOTHING), "");
};