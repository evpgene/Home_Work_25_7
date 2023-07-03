#include "Chats.h"
#include "DB_Queries.h"

using namespace std;

int main() {
  // system("chcp 1251");

  //Chats chats;


  DB_Queries db_queries;
  db_queries.connectDB_open();
  db_queries.selectUserPrepare();

  User_t user(db_queries.selectUser(1));
  std::cout << user->getLogin() << std::endl;
  std::cout << user->getPass() << std::endl;


  user = db_queries.selectUser(2);
  std::cout << user->getLogin() << std::endl;
  std::cout << user->getPass() << std::endl;

  user = db_queries.selectUser(3);
  std::cout << user->getLogin() << std::endl;
  std::cout << user->getPass() << std::endl;

  db_queries.selectUserClose();
  db_queries.connectDB_close();
  // chats.restordata();
  // chats.mainmenu();
  // chats.savedata();





  return 0;
}