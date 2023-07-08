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

struct ChatUser {
  ChatUser(){};
  ChatUser(int in_chat_id, int in_user_id)
      : chat_id(in_chat_id), user_id(in_user_id){};
  ~ChatUser(){};
  int chat_id{-1};
  int user_id{-1};
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
    int int_data{-1};
  };

 public:
  DB_Queries_DML(/* args */);
  ~DB_Queries_DML();

  void connectDB_open(void);
  void connectDB_close(void);

#define INSERT_USER "INSERT INTO users (login, pass) VALUES (?,?)"
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
  void insertUser_prepare(void);
  size_t insertUser(const User_t user);
  int insertUser_close(void);

#define SELECT_USER "SELECT id, login, pass FROM users WHERE id = ?"
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
  void selectUser_prepare(void);
  User_t selectUser(const int id);
  void selectUser_close(void);

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
  void insertChat_prepare(void);
  size_t insertChat(const Chat_t chat);
  int insertChat_close(void);

#define SELECT_CHAT "SELECT id, name FROM chats WHERE id = ?"
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
  void selectChat_prepare(void);
  Chat_t selectChat(const int id);
  void selectChat_close(void);

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
  void insertChatUser_prepare(void);
  size_t insertChatUser(const int chat_id, const int user_id);
  int insertChatUser_close(void);

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
  void selectChatUser_prepare(void);
  size_t selectChatUser(const int chat_id, const int user_id);
  void selectChatUser_close(void);

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
  void insertMessage_prepare(void);
  size_t insertMessage(const int chat_user_id, const Message_t message);
  int insertMessage_close(void);

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
  void selectMessage_prepare(void);
  Message_t selectMessage(const int chat_id, const int message_id);
  void selectMessage_close(void);

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
  void selectMessages_prepare(void);
  queue_message_t selectMessages(const int chat_id, const int message_id_begin,
                                 const int message_id_end,
                                 const int message_status, const int limit);
  void selectMessages_close(void);

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
  void updateStatusDelivered_prepare(void);
  size_t updateStatusDelivered(const int chat_user_id,
                               const int message_id_begin,
                               const int message_id_end);
  int updateStatusDelivered_close(void);

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
  void updateStatusRead_prepare(void);
  size_t updateStatusRead(const int chat_user_id,
                               const int message_id_begin,
                               const int message_id_end);
  int updateStatusRead_close(void);

};