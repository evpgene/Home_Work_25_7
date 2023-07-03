#pragma once
#include <mysql/mysql.h>

// #include <iostream>
//#include <utility>
#include <cstring>
#include "Chat.h"
#include "User.h"

#define STRING_SIZE 255

#define INSERT_USER "INSERT INTO users (login, pass) VALUES (?,?)"

#define SELECT_USER "SELECT id, login, pass FROM users WHERE id = ?"

#define INSERT_CHAT "INSERT INTO chats (name) VALUES (?)"

#define SELECT_CHAT "SELECT id FROM chats WHERE name = ?"

#define INSERT_CHAT_USER "INSERT INTO chat_user (chat_id, user_id, user_no) VALUES (?,?,?)"

#define SELECT_CHAT_USER "SELECT id FROM chat_user WHERE chat_id = ? AND user_id = ?"

// insert message & select message можно перенести в отдельный класс для одиночного чата,
// чтобы в последствии исполнялся в отдельном потоке с отдельной коннекцией ???   

#define INSERT_MESSAGE "INSERT INTO messages (chat_user_id, message, dt) VALUES (?,?,CURRENT_TIMESTAMP())"

#define SELECT_MESSAGES "SELECT * FROM message_view WHERE chat_id = ?"

//!!!!!!!!!!!!!!!!!!    mysql_stmt_insert_id()

class DB_Queries
{
private:
    //MYSQL msql;

    MYSQL* mysql = new MYSQL;
    MYSQL_RES* res;
    MYSQL_ROW row;

    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[2];
      uint64_t      affected_rows;
      struct {
        char str_data[STRING_SIZE];
        unsigned long str_length;
      } Login;
      struct {
        char str_data[STRING_SIZE];
        unsigned long str_length;
      } Pass;
      int param_count;
      bool is_null;
    } Insert_User_Query;

    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[1];
      unsigned long length;
      int param_count, column_count, row_count;
      int int_data;
      bool is_null;
      //bool error;
    } Select_User_Query;

    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[3];
      MYSQL_RES* prepare_meta_result;
      MYSQL_TIME ts;
      struct {
        char str_data[STRING_SIZE];
      } Login;
      struct {
        char str_data[STRING_SIZE];
      } Pass;
      unsigned long length[3];
      int param_count, column_count, row_count;
      short small_data;
      int int_data;
      bool is_null[3];
      bool error[3];
    } Select_User_Result;


public:
    DB_Queries(/* args */);
    ~DB_Queries();

//шаг разворачивание базы данных
    //create database
    //create database user
    //create tables

//шаг восстановление чата из базы данных
    //retrieve Users
    //retrieve Chats
    //retrieve Messages

//шаг добавление сообщений




    User_t retrieveUser(size_t user_id);
    Chat_t retrieveChat(size_t chat_id);
    void retrieveUsers(std::vector<User_t>& users);
    void retrieveChats(std::vector<Chat_t>&  chats);


    void connectDB_open(void);
    void connectDB_close(void); 

    void insertUserPrepare(void);
    size_t insertUser(const User_t user);
    int insertUserClose(void);

    void selectUserPrepare(void);
    User_t selectUser(const int id);
    void selectUserClose(void);

};




