#include "Server.h"
#include "TCP_server.h"

Server::Server(/* args */)
{
}

Server::~Server()
{
}

void Server::main(void) {
  TCP_server tcp_server;
  std::string string_for_receive;
  std::string string_to_send{"Привет от клиента!"};

  tcp_server.configureConnection();
  tcp_server.openConnection();

  tcp_server.receive(string_for_receive);

  while (true) {
    // (начало цикла)
    tcp_server.send(getGetUsernameString());
    tcp_server.receive(string_for_receive);
    // тут допустим функция восстановления строки
    // тут обработка принятой информации (начало цикла)
    interpretString(string_for_receive);
    
    // тут функция подготовки строки к отправке
    // (конец цикла)

  }
}

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

void Server::interpretString(const std::string& str) {
std::string_view str_view{str};  // для чего это??
std::string_view first_word{str_view.substr(0, str_view.find(sep))};

if (first_word == itRegistration) {
    str_view.remove_prefix(itRegistration.size() + sep.size());
    _user = retrieveUser(std::string(str_view));
};

if (first_word == itMessage) {
    str_view.remove_prefix(itMessage.size() + sep.size());
    _message = retrieveMessage(std::string(str_view));
};
};