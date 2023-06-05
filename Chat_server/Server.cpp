#include "Server.h"

Server::Server() {}
Server::~Server() {}

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

    if (word == key.log) {
      nextIsLogin = true;
    }
    if (word == key.pas) {
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
  std::size_t pos = msg.find(key.name);
  pos = msg.find(key.timesend);

  if (pos != std::string::npos) {
    isTime = msg.substr(key.timesend.size() + key.sep.size());
    doneTime = true;
    // std::cout << "isTime: " << isTime << std::endl;  // для диагностики -
    // можно убрать
  };

  if (pos != std::string::npos) {
    isName = msg.substr(key.name.size() + key.sep.size());
    doneName = true;
    // std::cout << "isName: " << isName << std::endl; // для диагностики -
    // можно убрать
  };

  pos = msg.find(key.mess);
  if (pos != std::string::npos) {
    isMessage = msg.substr(key.mess.size() + key.sep.size());
    doneMessage = true;
    // std::cout << "isMessage: " << isMessage << std::endl; // для
    // диагностики - можно убрать
  };

  return make_shared<Message>(Message(isTime, isName, isMessage));
}

ReceivedData Server::interpretString(const std::string& str) {
  std::string_view str_view{str};  // для чего это??
  std::string_view first_word{str_view.substr(0, str_view.find(key.sep))};

  if (first_word == key.itLogon) {
    str_view.remove_prefix(key.itLogon.size() + key.sep.size());
    return ReceivedData(ReceivedType(LOGON), str_view);
  };

  if (first_word == key.itRegistration) {
    str_view.remove_prefix(key.itRegistration.size() + key.sep.size());
    return ReceivedData(ReceivedType(REGISTRATION), str_view);
  };

  if (first_word == key.itMessage) {
    str_view.remove_prefix(key.itMessage.size() + key.sep.size());
    return ReceivedData(ReceivedType(MESSAGE), str_view);
  };

  if (first_word == key.itCompName) {
    str_view.remove_prefix(key.itCompName.size() + key.sep.size());
    return ReceivedData(ReceivedType(COMPANION), str_view);
  };

  if (first_word == key.itGetUsernames) {
    str_view.remove_prefix(key.itGetUsernames.size() + key.sep.size());
    return ReceivedData(ReceivedType(GET_USERNAMES), str_view);
  };

  if (first_word == key.itContinueUsernames) {
    str_view.remove_prefix(key.itContinueUsernames.size() + key.sep.size());
    return ReceivedData(ReceivedType(CONTINUE_USERNAMES), str_view);
  };

  if (first_word == key.itGetMessages) {
    str_view.remove_prefix(key.itGetMessages.size() + key.sep.size());
    return ReceivedData(ReceivedType(GET_MESSAGES), str_view);
  };

  if (first_word == key.itContinueMassages) {
    str_view.remove_prefix(key.itContinueMassages.size() + key.sep.size());
    return ReceivedData(ReceivedType(CONTINUE_MESSAGES), str_view);
  };

  if (first_word == key.itLogout) {
    str_view.remove_prefix(key.itLogout.size() + key.sep.size());
    return ReceivedData(ReceivedType(LOGOUT), str_view);
  };

    if (first_word == key.itExit) {
    str_view.remove_prefix(key.itExit.size() + key.sep.size());
    return ReceivedData(ReceivedType(EXIT), str_view);
  };


  

  return ReceivedData(ReceivedType(NOTHING), "");
};

const std::string Server::getUsernamesEnd() { return key.itUsernamesEnd; }
const std::string Server::getMessagesEnd() { return key.itMessagesEnd; }

const std::string Server::getMessageString(const Message_t message) {
  return message->getTimeSend() + ' ' + message->getUserName() + ' ' +
         message->getMessage();
}
