#pragma once
#include <mysql/mysql.h>
#include <string>
#include <cstring>
#include <iostream>
#include <utility>

#include "Chat.h"
#include "User.h"

#define STRING_SIZE 255

#define INSERT_USER "INSERT INTO users (login, pass) VALUES (?,?)"

#define SELECT_USER "SELECT id, login, pass FROM users WHERE id = ?"

#define INSERT_CHAT "INSERT INTO chats (name) VALUES (?)"

#define SELECT_CHAT "SELECT id, name FROM chats WHERE id = ?"

#define INSERT_CHAT_USER \
  "INSERT INTO chat_user (chat_id, user_id, user_no) VALUES (?,?,?)"

#define SELECT_CHAT_USER \
  "SELECT id FROM chat_user WHERE chat_id = ? AND user_id = ?"

// insert message & select message можно перенести в отдельный класс для
// одиночного чата, чтобы в последствии исполнялся в отдельном потоке с
// отдельной коннекцией ???

#define INSERT_MESSAGE                                       \
  "INSERT INTO messages (chat_user_id, message, dt) VALUES " \
  "(?,?,CURRENT_TIMESTAMP())"

#define SELECT_MESSAGE "SELECT * FROM message_view WHERE chat_id = ? AND message_id = ?"

struct ChatUser {
  ChatUser(){};
  ChatUser(int in_chat_id, int in_user_id)
      : chat_id(in_chat_id), user_id(in_user_id){};
  ~ChatUser(){};
  int chat_id{-1};
  int user_id{-1};
};

//!!!!!!!!!!!!!!!!!!    mysql_stmt_insert_id()

class DB_Queries {
 private:
  // MYSQL msql;

  MYSQL* mysql = new MYSQL;
  MYSQL_RES* res;
  MYSQL_ROW row;

  struct String_Param {
    char str_data[STRING_SIZE];
    unsigned long str_length{STRING_SIZE};
  };

  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[2];
      uint64_t affected_rows;
      String_Param Login;
      String_Param Pass;
      int param_count;
    } Query;
  } Insert_User;

  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[1];
      int param_count;
      int int_data;
    } Query;
    struct {
      MYSQL_BIND bind[3];
      MYSQL_RES* prepare_meta_result;
      String_Param Login;
      String_Param Pass;
      unsigned long length[3];
      int param_count, column_count, row_count;
      short small_data;
      int int_data;
      bool is_null[3];
      bool error[3];
    } Result;
  } Select_User;

  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[1];
      uint64_t affected_rows;
      String_Param Name;
      int param_count;
    } Query;
  } Insert_Chat;

  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[1];
      int param_count;
      int int_data;
    } Query;
    struct {
      MYSQL_BIND bind[1];
      MYSQL_RES* prepare_meta_result;
      String_Param Name;
      unsigned long length[1];
      int param_count, column_count, row_count;
      short small_data;
      int int_data;
      bool is_null[1];
      bool error[1];
    } Result;
  } Select_Chat;


struct Int_Param {
  int int_data {-1};
};



  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[2];
      uint64_t affected_rows;
      Int_Param chat_id;
      Int_Param user_id;
      int param_count;
    } Query;
  } Insert_ChatUser;


  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[2];
      int param_count;
      Int_Param chat_id;
      Int_Param user_id;

    } Query;
    struct {
      MYSQL_BIND bind[1];
      MYSQL_RES* prepare_meta_result;
      String_Param Name;
      unsigned long length[1];
      int param_count, column_count, row_count;
      Int_Param chat_user_id;
      bool is_null[1];
      bool error[1];
    } Result;
  } Select_ChatUser;




 public:
  DB_Queries(/* args */);
  ~DB_Queries();

  // шаг разворачивание базы данных
  // create database
  // create database user
  // create tables

  // шаг восстановление чата из базы данных
  // retrieve Users
  // retrieve Chats
  // retrieve Messages

  // шаг добавление сообщений

  User_t retrieveUser(size_t user_id);
  Chat_t retrieveChat(size_t chat_id);
  void retrieveUsers(std::vector<User_t>& users);
  void retrieveChats(std::vector<Chat_t>& chats);

  void connectDB_open(void);
  void connectDB_close(void);


  void insertUser_prepare(void);
  size_t insertUser(const User_t user);
  int insertUser_close(void);

  void selectUser_prepare(void);
  User_t selectUser(const int id);
  void selectUser_close(void);


  void insertChat_prepare(void);
  size_t insertChat(const Chat_t chat);
  int insertChat_close(void);

  void selectChat_prepare(void);
  Chat_t selectChat(const int id);
  void selectChat_close(void);


  void insertChatUser_prepare(void);
  size_t insertChatUser(const int chat_id, const int user_id);
  int insertChatUser_close(void);

  void selectChatUser_prepare(void);
  size_t selectChatUser(const int chat_id, const int user_id);
  void selectChatUser_close(void);







  void insertMessage_prepare(void);
  size_t insertMessage(const int chat_user_id, const Message_t message);
  int insertMessage_close(void);

  void selectMessage_prepare(void);
  Message_t selectMessage(const int chat_id, const int message_id);
  void selectMessage_close(void);

























// #define INSERT_MESSAGE                                       \
//   "INSERT INTO messages (chat_user_id, message, dt) VALUES " \
//   "(?,?,CURRENT_TIMESTAMP())"

// CREATE TABLE IF NOT EXISTS messages (
//   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
//   chat_user_id INT UNSIGNED NOT NULL REFERENCES chats_user(id),
//   message character varying(255) NOT NULL,
//   dt DATETIME NOT NULL,
//   st INT,
//   PRIMARY KEY (id),
//   CONSTRAINT chat_user_id_fk FOREIGN KEY(chat_user_id) REFERENCES chat_user(id) 
// )AUTO_INCREMENT = 1;

// ALTER VIEW message_view AS
// SELECT chats.id AS chat_id, chats.name AS chatname , users.login AS login, messages.dt AS timesend, messages.message AS message   FROM messages 
// JOIN chat_user ON chat_user.id = messages.chat_user_id
// JOIN chats ON chats.id = chat_user.chat_id
// JOIN users ON users.id = chat_user.user_id

  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[2];
      uint64_t affected_rows;
      Int_Param chat_user_id;
      String_Param message;
      int param_count;
    } Query;
  } Insert_Message;

  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[2];
      Int_Param chat_id;
      Int_Param message_id;
      int param_count;
    } Query;
    struct {
      MYSQL_BIND bind[5];
      MYSQL_RES* prepare_meta_result;
      Int_Param chat_id, user_id, message_id;
      //String_Param chatname;
      MYSQL_TIME dt;
      String_Param login;
      String_Param message;
      unsigned long length[5];
      int param_count, column_count, row_count;
      bool is_null[5];
      bool error[5];
    } Result;
  } Select_Message;











};
