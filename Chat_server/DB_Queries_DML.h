#pragma once
#include <mysql/mysql.h>
#include <string>
#include <cstring>
#include <iostream>
#include <utility>
#include "Chat.h"
#include "User.h"

#define STRING_SIZE 255
using queue_message_t = std::shared_ptr<std::queue<Message>>;
using insert_id = size_t; // The result is the id of inserted element. No insertions if = 0;
using affected_rows = size_t; // The result is the number of affected rows. No affected rows if = 0;
using no_errors = bool; // Execution OK. No errors occurred if = true;

struct ChatUser {
  ChatUser(){};
  ChatUser(size_t in_chat_id, size_t in_user_id)
      : chat_id(in_chat_id), user_id(in_user_id){};
  ~ChatUser(){};
  size_t chat_id{0};
  size_t user_id{0};
};

class DB_Queries_DML {
 private:
  MYSQL* mysql = new MYSQL;
  MYSQL_RES* res;
  MYSQL_ROW row;
  struct String_Param {
    char str_data[STRING_SIZE];
    unsigned long str_length{STRING_SIZE};
  };
  struct Int_Param {
    size_t int_data{0};
  };

#define INSERT_USER "INSERT INTO users (login, pass) VALUES (?,?)"
  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[2];
      uint64_t affected_rows;
      String_Param login;
      String_Param pass;
      int param_count;
    } Query;
  } Insert_User;
  no_errors insertUser_prepare(void);
  no_errors insertUser_close(void);

#define SELECT_USER_BY_ID "SELECT id, login, pass FROM users WHERE id = ?"
  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[1];
      int param_count;
      size_t int_data;
    } Query;
    struct {
      MYSQL_BIND bind[3];
      MYSQL_RES* prepare_meta_result;
      String_Param login;
      String_Param pass;
      unsigned long length[3];
      int param_count, column_count, row_count;
      short small_data;
      size_t int_data;
      bool is_null[3];
      bool error[3];
    } Result;
  } Select_UserById;
no_errors selectUserById_prepare(void);
no_errors selectUserById_close(void);

#define SELECT_USER_BY_LOGIN "SELECT id, login, pass FROM users WHERE login = ?"
  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[1];
      int param_count;
      String_Param login;
    } Query;
    struct {
      MYSQL_BIND bind[3];
      MYSQL_RES* prepare_meta_result;
      String_Param login;
      String_Param pass;
      unsigned long length[3];
      int param_count, column_count, row_count;
      short small_data;
      size_t int_data;
      bool is_null[3];
      bool error[3];
    } Result;
  } Select_UserByLogin;
no_errors selectUserByLogin_prepare(void);
no_errors selectUserByLogin_close(void);

#define INSERT_CHAT "INSERT INTO chats (name) VALUES (?)"
  struct {
  struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[1];
      uint64_t affected_rows;
      String_Param Name;
      int param_count;
  } Query;
  } Insert_Chat;
no_errors insertChat_prepare(void);
no_errors insertChat_close(void);

#define SELECT_CHAT "SELECT id, name FROM chats WHERE id = ?"
  struct {
  struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[1];
      int param_count;
      size_t int_data;
  } Query;
  struct {
      MYSQL_BIND bind[1];
      MYSQL_RES* prepare_meta_result;
      String_Param Name;
      unsigned long length[1];
      int param_count, column_count, row_count;
      short small_data;
      size_t int_data;
      bool is_null[1];
      bool error[1];
  } Result;
  } Select_Chat;
  no_errors selectChat_prepare(void);
  no_errors selectChat_close(void);

#define INSERT_CHAT_USER \
  "INSERT INTO chat_user (chat_id, user_id, user_no) VALUES (?,?,?)"
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
  no_errors insertChatUser_prepare(void);
  no_errors insertChatUser_close(void);

#define SELECT_CHAT_USER \
  "SELECT id FROM chat_user WHERE chat_id = ? AND user_id = ?"
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
  no_errors selectChatUser_prepare(void);
  no_errors selectChatUser_close(void);

#define INSERT_MESSAGE                                       \
  "INSERT INTO messages (chat_user_id, message, dt) VALUES " \
  "(?,?,CURRENT_TIMESTAMP())"
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
  no_errors insertMessage_prepare(void);
  no_errors insertMessage_close(void);

#define SELECT_MESSAGE \
  "SELECT * FROM message_view WHERE chat_id = ? AND message_id = ?"
  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[2];
      Int_Param chat_id;
      Int_Param message_id;
      int param_count;
    } Query;
    struct {
      MYSQL_BIND bind[7];
      MYSQL_RES* prepare_meta_result;
      Int_Param chat_id, user_id, message_id;
      //String_Param chatname;
      MYSQL_TIME dt;
      String_Param login;
      String_Param message;
      Int_Param status;
      unsigned long length[7];
      int param_count, column_count, row_count;
      bool is_null[7];
      bool error[7];
    } Result;
  } Select_Message;
  no_errors selectMessage_prepare(void);
  no_errors selectMessage_close(void);

#define SELECT_MESSAGES                                                        \
  "SELECT * FROM message_view WHERE chat_id = ? AND message_id BETWEEN ? AND " \
  "? AND status = ? LIMIT ?"
  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[5];
      Int_Param chat_id;
      Int_Param message_id_begin;
      Int_Param message_id_end;
      Int_Param status;
      Int_Param limit;
      int param_count;
    } Query;
    struct {
      MYSQL_BIND bind[7];
      MYSQL_RES* prepare_meta_result;
      Int_Param chat_id, user_id, message_id;
      //String_Param chatname;
      MYSQL_TIME dt;
      String_Param login;
      String_Param message;
      Int_Param status;
      unsigned long length[7];
      int param_count, column_count, row_count;
      bool is_null[7];
      bool error[7];
    } Result;
  } Select_Messages;
  no_errors selectMessages_prepare(void);
  no_errors selectMessages_close(void);

#define UPDATE_STATUS_DELIVERED                                               \
  "UPDATE messages SET status = 2, dt_delivered = CURRENT_TIMESTAMP() WHERE " \
  "chat_user_id = ? AND id BETWEEN ? AND ? AND status != 2 AND status != 3"
  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[3];
      uint64_t affected_rows;
      Int_Param chat_user_id;
      Int_Param message_id_begin;
      Int_Param message_id_end;
      int param_count;
    } Query;
  } Update_Status_Delivered;
  no_errors updateStatusDelivered_prepare(void);
  no_errors updateStatusDelivered_close(void);

#define UPDATE_STATUS_READ                                               \
  "UPDATE messages SET status = 3, dt_read = CURRENT_TIMESTAMP() WHERE " \
  "chat_user_id = ? AND id BETWEEN ? AND ? AND status = 2"
  struct {
    struct {
      MYSQL_STMT* stmt;
      MYSQL_BIND bind[3];
      uint64_t affected_rows;
      Int_Param chat_user_id;
      Int_Param message_id_begin;
      Int_Param message_id_end;
      int param_count;
    } Query;
  } Update_Status_Read;
  no_errors updateStatusRead_prepare(void);
  no_errors updateStatusRead_close(void);

 public:
  DB_Queries_DML();
  ~DB_Queries_DML();

  no_errors connectDB_open(void);
  no_errors connectDB_close(void);

  no_errors prepareAll(void);
  no_errors closeAll(void);

  insert_id insertUser(const User_t user);
  User_t selectUserById(const size_t id);
  User_t selectUserByLogin(const std::string login);
  insert_id insertChat(const Chat_t chat);
  Chat_t selectChat(const size_t id);
  insert_id insertChatUser(const size_t chat_id, const size_t user_id);
  size_t selectChatUser(const size_t chat_id, const size_t user_id);
  insert_id insertMessage(const size_t chat_user_id, const Message_t message);
  Message_t selectMessage(const size_t chat_id, const size_t message_id);
  queue_message_t selectMessages(const size_t chat_id, const size_t message_id_begin,
                                 const size_t message_id_end,
                                 const size_t message_status, const size_t limit);
  size_t updateStatusDelivered(const size_t chat_user_id,
                              const size_t message_id_begin,
                              const size_t message_id_end);
  size_t updateStatusRead(const size_t chat_user_id,
                               const size_t message_id_begin,
                               const size_t message_id_end);


};