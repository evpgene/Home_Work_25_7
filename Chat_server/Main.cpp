#include "Chats.h"
#include "DB_Queries_DDL.h"
#include "DB_Queries_DML.h"

int main() {
  // system("chcp 1251");

  // Chats chats;

  DB_Queries_DDL db_queries_ddl;
  MYSQL_Config mysqlconfig;
  mysqlconfig.passwd = (char*)("Root123_Root123");
  std::cout << "создался объект" << std::endl;
  db_queries_ddl.connectToMySQLserver_open(mysqlconfig);
  db_queries_ddl.createDataBase();

  DB_Queries_DML db_queries_dml;
  db_queries_dml.connectDB_open();



  User_t user(db_queries_dml.selectUser(1));
  if (user) {
    std::cout << user->getLogin() << std::endl;
    std::cout << user->getPass() << std::endl;
  } else {
    std::cout << "No such user. Null returned. " << std::endl;
  }

  Chat_t chat(db_queries_dml.selectChat(1));
  if (chat) {
    std::cout << chat->getChatName() << std::endl;
  } else {
    std::cout << "No such chat. Null returned. " << std::endl;
  }

  Message_t message = db_queries_dml.selectMessage(1, 1);

  if (message) {
    message->printMessage();
    std::cout << message->getTimeSend() << std::endl;
    std::cout << message->getUserName() << std::endl;
    std::cout << message->getMessage() << std::endl;
  } else {
    std::cout << "No such message. Null returned. " << std::endl;
  }

  size_t chatuser = db_queries_dml.selectChatUser(1, 1);
  if (chatuser) {
    std::cout << "ChatUser ID = " << chatuser << std::endl;
  } else {
    std::cout << "No such chatuser. Null returned. " << std::endl;
  }

  // Message_t message_arr[20];
  // message_arr[0] = std::make_shared<Message>(Message("","", "ну прювет
  // волк"));

  // db_queries.insertMessage(1, message_arr[0]);

  queue_message_t queue = db_queries_dml.selectMessages(1, 1, 5, 3, 100);
  if (queue) {
    while (!queue->empty()) {
      // Message message(queue->front());
      queue->front().printMessage();
      queue->pop();
    }
  } else {
    std::cout << "No selected messages. Null returned. " << std::endl;
  }

  // db_queries_dml.updateStatusDelivered(1, 1, 10);
  // db_queries_dml.updateStatusRead(1, 1, 10);



  db_queries_ddl.connectToMySQLserver_close();

  // chats.restordata();
  // chats.mainmenu();
  // chats.savedata();

  return 0;
}