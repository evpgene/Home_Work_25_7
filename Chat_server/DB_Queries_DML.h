#pragma once
#include <mysql/mysql.h>

#include <cstring>
#include <iostream>
#include <string>
#include <utility>

#include "Chat.h"
#include "User.h"

#define STRING_SIZE 255
const int string_size{255};
using queue_message_t = std::shared_ptr<std::queue<Message>>;
using insert_id =
    size_t;  // The result is the id of inserted element. No insertions if = 0;
using affected_rows = size_t;  // The result is the number of affected rows. No
                               // affected rows if = 0;
using no_errors = bool;        // Execution OK. No errors occurred if = true;
using is_errors = bool;        // Execution Not OK. Errors occurred if = true;

struct ChatUser {
  ChatUser(){};
  ChatUser(size_t in_chat_id, size_t in_user_id)
      : chat_id(in_chat_id), user_id(in_user_id){};
  ~ChatUser(){};
  size_t chat_id{0};
  size_t user_id{0};
};


  static const int silent_level;
  static const int affected_rows_silent_level;
  static const int verify_param_count_silent_level;
  static const int verify_field_count_silent_level;
  const int make_bind_silent_level;

class DB_Queries_DML {
 private:
  MYSQL* mysql = new MYSQL;
  MYSQL_RES* res;
  MYSQL_ROW row;
  struct String_Param {
    char str_data[STRING_SIZE];
    unsigned long str_length{STRING_SIZE};
  };

  struct ParamUint {
    //MYSQL_BIND bind;
    unsigned int data{0};
    bool is_null{false}; // For input/output set inform that the data is NULL
    bool error{false}; // For output (received), set indicate Truncation
    ParamUint(MYSQL_BIND& bind){
      bind.buffer_type = MYSQL_TYPE_LONG;
      bind.is_unsigned = true; // Inform binding to signed or unsigned type - mean only for client side
      bind.buffer = (char *)&data;
      bind.is_null = &is_null;
      bind.error = &error;  
    };
    ~ParamUint(){};
  };



struct ParamString {
    //MYSQL_BIND bind;
    char data[string_size];
    unsigned long length{0}; // Current buffer length for output (received) or input (sending) data (for character and binary C data)
    bool is_null{false}; // For input/output set inform that the data is NULL
    bool is_unsigned{true}; // Inform binding to signed or unsigned type - mean only for client side
    bool error{true}; // For output (received), set indicate Truncation
    ParamString(MYSQL_BIND& bind){
      bind.buffer_type = MYSQL_TYPE_STRING;
      bind.is_unsigned = false; // Inform binding to signed or unsigned type - mean only for client side
      bind.buffer_length = string_size; // Total buffer length (for character and binary C data)
      bind.buffer = (char *)&data;
      bind.length = &length;
      bind.is_null = &is_null;
      bind.error = &error;
    };
    ~ParamString(){};
  };


  struct ParamDatetime {
    //MYSQL_BIND bind;
    MYSQL_TIME data;
    bool is_null{false}; // For input/output set inform that the data is NULL
    bool error{true}; // For output (received), set indicate Truncation
    ParamDatetime(MYSQL_BIND& bind){
      bind.buffer_type = MYSQL_TYPE_DATETIME;
      bind.buffer = (char *)&data;
      bind.is_null = &is_null;
      bind.error = &error;
    };
    ~ParamDatetime(){};
  };


  struct BindParamUint {
    MYSQL_BIND bind;
    size_t data;
  };

#define INSERT_USER "INSERT INTO users (login, pass) VALUES (?,?)"
const std::string insert_user_query{"INSERT INTO users (login, pass) VALUES (?,?)"};

  struct Insert_User {
    MYSQL_STMT* stmt;
    const std::string headline{"insert_user_query"};
    struct {
      const int param_count{2};
      MYSQL_BIND bind[2];  // Two parameters
      ParamString login = ParamString(bind[0]); // First parameter
      ParamString pass = ParamString(bind[1]); // Second parameter
      uint64_t affected_rows;
    } Query;
  } Insert_User_struct;
  no_errors insertUser_prepare(Insert_User &arg_struct);
  no_errors insertUser_close(MYSQL* mysql, Insert_User &arg_struct);

#define SELECT_USER_BY_ID "SELECT id, login, pass FROM users WHERE id = ?"
const std::string select_user_by_id{"SELECT id, login, pass FROM users WHERE id = ?"};
  struct SelectUserById_Struct{
    MYSQL_STMT* stmt;
    const std::string headline{"insert_user_query"};
    struct {
      const int param_count{2};
      MYSQL_BIND bind[1];
      ParamUint id;
    } Query;
    struct {
      MYSQL_BIND bind[3];
      MYSQL_RES* prepare_meta_result;
      ParamUint id;
      ParamString login;
      ParamString pass;
      int column_count;
      int row_count;
    } Result;
  } SelectUserById_Struct;
  no_errors selectUserById_prepare(Insert_User &arg_struct);
  no_errors selectUserById_close(MYSQL* mysql, Insert_User &arg_struct);

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
      ParamUint chat_id;
      ParamUint user_id;
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
      ParamUint chat_id;
      ParamUint user_id;

    } Query;
    struct {
      MYSQL_BIND bind[1];
      MYSQL_RES* prepare_meta_result;
      String_Param Name;
      unsigned long length[1];
      int param_count, column_count, row_count;
      ParamUint chat_user_id;
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
      ParamUint chat_user_id;
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
      ParamUint chat_id;
      ParamUint message_id;
      int param_count;
    } Query;
    struct {
      MYSQL_BIND bind[7];
      MYSQL_RES* prepare_meta_result;
      ParamUint chat_id, user_id, message_id;
      // String_Param chatname;
      MYSQL_TIME dt;
      String_Param login;
      String_Param message;
      ParamUint status;
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
      ParamUint chat_id;
      ParamUint message_id_begin;
      ParamUint message_id_end;
      ParamUint status;
      ParamUint limit;
      int param_count;
    } Query;
    struct {
      MYSQL_BIND bind[7];
      MYSQL_RES* prepare_meta_result;
      ParamUint chat_id, user_id, message_id;
      // String_Param chatname;
      MYSQL_TIME dt;
      String_Param login;
      String_Param message;
      ParamUint status;
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
      ParamUint chat_user_id;
      ParamUint message_id_begin;
      ParamUint message_id_end;
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
      ParamUint chat_user_id;
      ParamUint message_id_begin;
      ParamUint message_id_end;
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

  insert_id insertUser(const User_t user, Insert_User& arg_struct);
  User_t selectUserById(const size_t id);
  User_t selectUserByLogin(const std::string login);
  insert_id insertChat(const Chat_t chat);
  Chat_t selectChat(const size_t id);
  insert_id insertChatUser(const size_t chat_id, const size_t user_id);
  size_t selectChatUser(const size_t chat_id, const size_t user_id);
  insert_id insertMessage(const size_t chat_user_id, const Message_t message);
  Message_t selectMessage(const size_t chat_id, const size_t message_id);
  queue_message_t selectMessages(const size_t chat_id,
                                 const size_t message_id_begin,
                                 const size_t message_id_end,
                                 const size_t message_status,
                                 const size_t limit);
  size_t updateStatusDelivered(const size_t chat_user_id,
                               const size_t message_id_begin,
                               const size_t message_id_end);
  size_t updateStatusRead(const size_t chat_user_id,
                          const size_t message_id_begin,
                          const size_t message_id_end);




  /* Utility function to verify the total affected rows */
  no_errors verify_affected_rows(MYSQL* mysql, size_t exp_count,
                            std::string headline) {
    size_t affected_rows = mysql_affected_rows(mysql);
    if (affected_rows != exp_count) {
      if (silent_level >= affected_rows_silent_level) {
        std::cout << headline << " total affected rows: " << affected_rows
                  << " expected: " << exp_count << std::endl;
      }
      return false;
    }
    return true;
  };

  /* Utility function to verify the total affected rows */
  no_errors verify_affected_rows(MYSQL_STMT* stmt, size_t exp_count,
                            std::string headline) {
    size_t affected_rows = mysql_stmt_affected_rows(stmt);
    if (affected_rows != exp_count) {
      if (silent_level >= affected_rows_silent_level) {
        std::cout << headline << " total affected rows: " << affected_rows
                  << " expected: " << exp_count << std::endl;
      }
      return false;
    }
    return true;
  };

  
  /* Utility function to verify the parameter count */
  no_errors verify_param_count(MYSQL_STMT* stmt, size_t exp_count, 
                            std::string headline) {
    size_t param_count = mysql_stmt_param_count(stmt);
    if (param_count != exp_count) {
      if (silent_level >= verify_param_count_silent_level) {
        std::cout << headline << " total parameters in stmt: " << param_count
                  << " expected: " << exp_count << std::endl;
      }
      return false;
    }
    return true;
  };


  /* Utility function to verify the total fields count */
  no_errors verify_field_count(MYSQL_RES* result, size_t exp_count,
                          std::string headline) {
    size_t field_count = mysql_num_fields(result);
    if (field_count != exp_count) {
      if (silent_level >= verify_field_count_silent_level) {
        std::cout << headline
                  << " total fields in the result set: " << field_count
                  << " expected: " << exp_count << std::endl;
      }
      return false;
    }
    return true;
  };


MYSQL_STMT* mysql_simple_prepare(MYSQL* mysql_arg, const std::string& query,
                                 const std::string& headline) {
  MYSQL_STMT* stmt = mysql_stmt_init(mysql_arg);
  // mysql_stmt_prepare() Return Value - Zero for success. Nonzero if an error
  // occurred
  if (stmt && mysql_stmt_prepare(stmt, query.c_str(), (ulong)query.length())) {
    mysql_stmt_close(stmt);
    std::cout << headline << " mysql_stmt_prepare(), INSERT_USER failed "
              << std::endl;
    std::cout << mysql_stmt_error(stmt) << std::endl;
    return nullptr;
  }
  return stmt;
}


  no_errors make_bind(MYSQL_STMT* stmt, MYSQL_BIND* bnd, std::string headline) {
    if (mysql_stmt_bind_param(stmt, bnd)) {
      if (silent_level >= make_bind_silent_level) {
        std::cout << headline
                  << " mysql_stmt_bind_param() failed: " << std::endl;
        std::cout << headline << mysql_stmt_error(stmt)
                  << std::endl;
      }
      return false;
    }
    return true;
  };

  const int execute_stmt_silent_level;
  no_errors execute_stmt(MYSQL_STMT* stmt, std::string headline) {
    if (mysql_stmt_execute(stmt)) {
      if (silent_level >= execute_stmt_silent_level) {
        std::cout << headline << " mysql_stmt_execute() failed: " << std::endl;
        std::cout << headline << mysql_stmt_error(stmt) << std::endl;
      }
      return false;
    }
    return true;
  };

const int close_stmt_silent_level;
no_errors close_stmt(MYSQL* mysql, MYSQL_STMT* stmt, std::string headline) {
    if (mysql_stmt_close(stmt)) {
      if (silent_level >= close_stmt_silent_level) {
        std::cout << headline << " ailed while closing the statement: " << std::endl;
        std::cout << headline << mysql_error(mysql) << std::endl;
      }
    return false;
  }
  return true;
};


};