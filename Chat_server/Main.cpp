#include "Chats.h"
#include "DB_Queries.h"

using namespace std;

int main() {
  // system("chcp 1251");

  //Chats chats;


  DB_Queries db_queries;
  db_queries.connectDB_open();

  db_queries.selectUser_prepare();
  db_queries.selectChat_prepare();
  db_queries.selectChatUser_prepare();
  db_queries.selectMessage_prepare();


  User_t user(db_queries.selectUser(1));
  std::cout << user->getLogin() << std::endl;
  std::cout << user->getPass() << std::endl;

 
  Chat_t chat(db_queries.selectChat(1));
  std::cout << chat->getChatName() << std::endl;

  Message_t message(db_queries.selectMessage(1,1));
  std::cout << message->getTimeSend() << std::endl;
  std::cout << message->getUserName() << std::endl;
  std::cout << message->getMessage() << std::endl;

   size_t chatuser = db_queries.selectChatUser(1, 1);
  std::cout << "ChatUser ID = " << chatuser << std::endl;



  db_queries.selectChat_close();
  db_queries.selectUser_close();
  db_queries.selectChatUser_close();
  db_queries.selectMessage_close();
  db_queries.connectDB_close();
  // chats.restordata();
  // chats.mainmenu();
  // chats.savedata();





  return 0;
}