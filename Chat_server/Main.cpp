#include "Chats.h"
#include "DB_Queries_DDL.h"
#include "DB_Queries_DML.h"
using queue_user_t = std::shared_ptr<std::queue<User>>;

int main() {
//   // system("chcp 1251");

  // Chats chats;

  std::cout << "выполнение" << std::endl;

  DB_Queries_DDL db_queries_ddl;
  MYSQL_Config mysqlconfig;
  mysqlconfig.passwd = (char*)("Root123_Root123");
  std::cout << "создался объект" << std::endl;
  db_queries_ddl.connectToMySQLserver_open(mysqlconfig);
  db_queries_ddl.createDataBase();

  DB_Queries_DML db_queries_dml;
  db_queries_dml.connectDB_open();

    std::cout << "подготовка" << std::endl;
  db_queries_dml.prepareAll();
  
    std::cout << "создание пользователя" << std::endl;
  queue_user_t users;
  std::string tmp_login("login_");
  std::string tmp_pass("pass_");

    std::cout << "ввод пользователей" << std::endl;
  for (size_t i = 0; i < 10; i++) {
    // users->emplace(
    //     User(tmp_login + std::to_string(i), tmp_pass + std::to_string(i)));

    // db_queries_dml.insert_User_fc(/* Insert_User_struct, */ make_shared<User>(
    //     User(tmp_login + std::to_string(i), tmp_pass + std::to_string(i))));
    
  //   std::cout << "id= : "
  //             << db_queries_dml.insert_User_fc(
  //                    make_shared<User>(User(tmp_login + std::to_string(i),
  //                                           tmp_pass + std::to_string(i))))
  //             << std::endl;
  // 
  };
  User_t user1(db_queries_dml.select_User_By_Login_fc("login_1"));
   if(user1){
    user1->printUser();}


  

//   //db_queries_dml.insert_User_fc()







// #if _DEBUG
// std::cout << "control point 1 " << std::endl;
// #endif

//   User_t user(db_queries_dml.select_User_By_Id_fc(1));

// #if _DEBUGprepare
//     std::cout << "No such user. Null returned. " << std::endl;
//   }



// #if _DEBUG
// std::cout << "control point 2 " << std::endl;
// #endif

//   Chat_t chat(db_queries_dml.selectChat(1));
//   if (chat) {
//     std::cout << chat->getChatName() << std::endl;
//   } else {
//     std::cout << "No such chat. Null returned. " << std::endl;
//   }


// #if _DEBUG
// std::cout << "control point 3 " << std::endl;
// #endif

//   Message_t message = db_queries_dml.select_Message_fc(1, 1);

//   if (message) {
//     message->printMessage();
//     std::cout << message->getTimeSend() << std::endl;
//     std::cout << message->getUserName() << std::endl;
//     std::cout << message->getMessage() << std::endl;
//   } else {
//     std::cout << "No such message. Null returned. " << std::endl;
//   }



// #if _DEBUG
// std::cout << "control point 4 " << std::endl;
// #endif

//   size_t chatuser = db_queries_dml.select_Chat_User_fc(1, 1);
//   if (chatuser) {
//     std::cout << "ChatUser ID = " << chatuser << std::endl;
//   } else {
//     std::cout << "No such chatuser. Null returned. " << std::endl;
//   }

//   // Message_t message_arr[20];
//   // message_arr[0] = std::make_shared<Message>(Message("","", "ну прювет
//   // волк"));

//   // db_queries.insert_Message_fc(1, message_arr[0]);




// #if _DEBUG
// std::cout << "control point 5 " << std::endl;
// #endif

//   queue_message_t queue = db_queries_dml.select_Messages_Mult_fc(1, 1, 5, 3, 100);
//   if (queue) {
//     while (!queue->empty()) {
//       // Message message(queue->front());
//       queue->front().printMessage();
//       queue->pop();
//     }
//   } else {
//     std::cout << "No selected messages. Null returned. " << std::endl;
//   }

//   // db_queries_dml.update_Status_Delivered_fc(1, 1, 10);
//   // db_queries_dml.update_Status_Read_fc(1, 1, 10);


// #if _DEBUG
// std::cout << "control point 6 " << std::endl;
// #endif
//   db_queries_dml.closeAll();
//   db_queries_ddl.connectToMySQLserver_close();

//   // chats.restordata();
//   // chats.mainmenu();
//   // chats.savedata();

  return 0;
}