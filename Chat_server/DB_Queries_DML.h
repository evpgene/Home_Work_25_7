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
  MYSQL_RES* res; // скорее нужно убрать, чем оставить
  MYSQL_ROW row; // скорее нужно убрать, чем оставить
  struct String_Param {
    char str_data[STRING_SIZE];
    unsigned long str_length{STRING_SIZE};
  };

  struct ParamUint {
    //MYSQL_BIND bind;
    unsigned int data{0};
    bool is_null{false}; // For input/output set inform that the data is NULL
    bool error{false}; // For output (received), set indicate Truncation
    ParamUint() = delete;
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
    ParamString() = delete;
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
    ParamDatetime() = delete;
    ParamDatetime(MYSQL_BIND& bind) {
      bind.buffer_type = MYSQL_TYPE_DATETIME;
      bind.buffer = (char *)&data;
      bind.is_null = &is_null;
      bind.error = &error;
    } ;
    ~ParamDatetime(){};
  };

  //Result structure for statment without result (for esample INSERT)
  struct NoResult{
    const int param_count{0};
    MYSQL_BIND* bind; // Emty pointer
    uint64_t affected_rows; // affected rows by query
  };

  struct BindParamUint {
    MYSQL_BIND bind;
    size_t data;
  };

// V
  struct Insert_User {
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"insert_user_query"};
    const std::string query{"INSERT INTO users (login, pass) VALUES (?,?)"};
    struct {
      const int param_count{2};
      MYSQL_BIND bind[2];  // Two parameters
      ParamString login = ParamString(bind[0]); // First parameter
      ParamString pass = ParamString(bind[1]); // Second parameter
    } Query_struct;
    NoResult Result_struct;
  } Insert_User_struct;

// V
  struct Select_User_By_Id{
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"insert_user_query"};
    const std::string  query{"SELECT id, login, pass FROM users WHERE id = ?"};
    struct {
      const int param_count{1}; // Number of prepared parameters expected
      MYSQL_BIND bind[1];
      ParamUint id = ParamUint(bind[0]);
    } Query_struct;
    struct {
      const int param_count{3}; // Number of result filds expected
      MYSQL_BIND bind[3];
      ParamUint id = ParamUint(bind[0]); // First parameter
      ParamString login = ParamString(bind[1]); // Second parameter
      ParamString pass = ParamString(bind[2]); // Third parameter
      int column_count;
      int row_count;
    } Result_struct;
  } Select_User_By_Id_struct;

// V
  struct Select_User_By_Login_struct{
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"select_user_by_login_query"};
    const std::string  query{"SELECT id, login, pass FROM users WHERE login = ?"};
    struct {
      const int param_count{1}; // Number of prepared parameters expected
      MYSQL_BIND bind[1];
      ParamString login = ParamString(bind[0]); // First parameter
    } Query_struct;
    struct {
      const int param_count{3}; // Number of result filds expected
      MYSQL_BIND bind[3];
      ParamUint id = ParamUint(bind[0]); // First parameter
      ParamString login = ParamString(bind[1]); // Second parameter
      ParamString pass = ParamString(bind[2]); // Third parameter
      int column_count;
      int row_count;
    } Result_struct;
  } Select_User_By_Login_struct;



// V
  struct Insert_Chat {
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"insert_chat_query"};
    const std::string query{"INSERT INTO chats (name) VALUES (?)"};
    struct {
      const int param_count{1}; // Number of prepared parameters expected
      MYSQL_BIND bind[1];  // One parameter
      ParamString name = ParamString(bind[0]); // First parameter
    } Query_struct;
    NoResult Result_struct;
  } Insert_Chat_struct;



// V
#define SELECT_CHAT "SELECT id, name FROM chats WHERE name = ?"
  struct Select_Chat_By_Name {
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"select_chat_by_name_query"};
    const std::string  query{"SELECT id, name FROM chats WHERE name = ?"};
    struct {
      const int param_count{1}; // Number of prepared parameters expected
      MYSQL_BIND bind[1]; 
      ParamString name= ParamString(bind[0]); // First parameter
    } Query_struct;
    struct {
      const int param_count{2}; // Number of result filds expected
      MYSQL_BIND bind[2];
      ParamUint id = ParamUint(bind[0]); // First parameter
      ParamString name = ParamString(bind[1]); // Second parameter
      int column_count;
      int row_count;
    } Result_struct;
  } Select_Chat_By_Name_struct;
  

// V
  struct Select_Chat_By_Id {
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"select_chat_by_id_query"};
    const std::string  query{"SELECT id, name FROM chats WHERE id = ?"};
    struct {
      const int param_count{1}; // Number of prepared parameters expected
      MYSQL_BIND bind[1]; 
      ParamUint id = ParamUint(bind[0]); // First parameter
    } Query_struct;
    struct {
      const int param_count{2}; // Number of result filds expected
      MYSQL_BIND bind[2];
      ParamUint id = ParamUint(bind[0]); // First parameter
      ParamString name = ParamString(bind[1]); // Second parameter
      int column_count;
      int row_count;
    } Result_struct;
  } Select_Chat_By_Id_struct;


// V
  struct Insert_Chat {
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"insert_chat_user_query"};
    const std::string query{"INSERT INTO chat_user (chat_id, user_id, user_no) VALUES (?,?,?)"};
    struct {
      const int param_count{3}; // Number of prepared parameters expected
      MYSQL_BIND bind[3];  // One parameter
      ParamUint chat_id = ParamUint(bind[0]); // First parameter
      ParamUint user_id = ParamUint(bind[1]); // Second parameter
      ParamUint user_no = ParamUint(bind[2]); // Third parameter
    } Query_struct;
    NoResult Result_struct;
  } Insert_Chat_struct;

// V
  struct Select_Chat_User {
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"select_chat_user_query"};
    const std::string  query{"SELECT id FROM chat_user WHERE chat_id = ? AND user_id = ?"};
    struct {
      const int param_count{2}; // Number of prepared parameters expected
      MYSQL_BIND bind[2]; 
      ParamUint chat_id = ParamUint(bind[0]); // First parameter
      ParamUint user_id = ParamUint(bind[1]); // Second parameter
    } Query_struct;
    struct {
      const int param_count{1}; // Number of result filds expected
      MYSQL_BIND bind[1];
      ParamUint id = ParamUint(bind[0]); // First parameter
      int column_count;
      int row_count;
    } Result_struct;
  } Select_Chat_User_struct;

// V
  struct Insert_Message {
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"insert_message_query"};
    const std::string query{"INSERT INTO messages (chat_user_id, message, dt) VALUES (?,?,CURRENT_TIMESTAMP())"};
    struct {
      const int param_count{1}; // Number of prepared parameters expected
      MYSQL_BIND bind[2];  // One parameter
      ParamUint chat_user_id = ParamUint(bind[0]); // First parameter
      ParamString chat_user_id = ParamString(bind[1]); // Second parameter
    } Query_struct;
    NoResult Result_struct;
  } Insert_Message_struct;


// Проверить необходимость и целесообразность
#define SELECT_MESSAGE \
  "SELECT * FROM message_view WHERE chat_id = ? AND message_id = ?"



  struct Select_Messages {
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"select_messages_query"};
    const std::string  query{"SELECT * FROM message_view WHERE chat_id = ? AND message_id BETWEEN ? AND ? AND status = ? LIMIT ?"};
    struct {
      const int param_count{5}; // Number of prepared parameters expected
      MYSQL_BIND bind[5]; 
      ParamUint chat_id = ParamUint(bind[0]); // First parameter
      ParamUint message_id_begin = ParamUint(bind[1]); // Second parameter
      ParamUint message_id_end = ParamUint(bind[2]); // Third parameter
      ParamUint status = ParamUint(bind[3]); // 4 parameter
      ParamUint limit = ParamUint(bind[4]); // 5 parameter
    } Query_struct;
    NoResult Result_struct;
  } Select_Messages_struct;


  struct Update_Status_Delivered {
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"update_status_delivered_query"};
    const std::string  query{"UPDATE messages SET status = 2, dt_delivered = CURRENT_TIMESTAMP() WHERE chat_user_id = ? AND id BETWEEN ? AND ? AND status != 2 AND status != 3"};
    struct {
      const int param_count{3}; // Number of prepared parameters expected
      MYSQL_BIND bind[3]; 
      ParamUint chat_user_id = ParamUint(bind[0]); // First parameter
      ParamUint message_id_begin = ParamUint(bind[1]); // Second parameter
      ParamUint message_id_end = ParamUint(bind[2]); // Third parameter
    } Query_struct;
    NoResult Result_struct;
  } Update_Status_Delivered_struct;

  struct Update_Status_Read {
    MYSQL_STMT* stmt{nullptr};
    MYSQL_RES* result_metadata{nullptr};
    const std::string headline{"update_status_read_query"};
    const std::string  query{"UPDATE messages SET status = 2, dt_delivered = CURRENT_TIMESTAMP() WHERE chat_user_id = ? AND id BETWEEN ? AND ? AND status != 2 AND status != 3"};
    struct {
      const int param_count{3}; // Number of prepared parameters expected
      MYSQL_BIND bind[3]; 
      ParamUint chat_user_id = ParamUint(bind[0]); // First parameter
      ParamUint message_id_begin = ParamUint(bind[1]); // Second parameter
      ParamUint message_id_end = ParamUint(bind[2]); // Third parameter
    } Query_struct;
    NoResult Result_struct;
  } Update_Status_Read_struct;


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

// https://dev.mysql.com/doc/c-api/8.0/en/c-api-prepared-statement-interface-usage.html

// Step 1 
// mysql_stmt_init() - Create a prepared statement handler
// mysql_stmt_prepare() - prepare the statement on the server
MYSQL_STMT* mysql_simple_prepare(MYSQL* mysql_arg, const std::string& query,
                                 const std::string& headline) {
  MYSQL_STMT* stmt = mysql_stmt_init(mysql_arg);
  // mysql_stmt_prepare() Return Value - Zero for success. Nonzero if an error
  // occurred
  if (stmt && mysql_stmt_prepare(stmt, query.c_str(), (ulong)query.length())) {
    mysql_stmt_close(stmt);
    std::cout << headline << " mysql_stmt_prepare() failed " << std::endl;
    std::cout << mysql_stmt_error(stmt) << std::endl;
    return nullptr;
  }
  return stmt;
}
  // Step 2 - mysql_stmt_bind_param() - bind input data for the parameter markers in the SQL statement that was passed
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
  // Step 3 - mysql_stmt_execute() - executes the prepared query associated with the statement handler
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
// Step 8, 9
// Step 8 - mysql_stmt_close() - close the statement handler 
// Step 9 - free metadata result
no_errors close_stmt(MYSQL* mysql, MYSQL_STMT* stmt, MYSQL_RES* result_metadata, std::string headline) {
    if (mysql_stmt_close(stmt)) {
      if (silent_level >= close_stmt_silent_level) {
        std::cout << headline << " ailed while closing the statement: " << std::endl;
        std::cout << headline << mysql_error(mysql) << std::endl;
      }
    return false;
    if (result_metadata)
      mysql_free_result(result_metadata);
      result_metadata = nullptr;
  }
  return true;
};

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Steps 1 - 4 (without Step 3)
template <class T>
no_errors prepare(T& arg_struct) {
  // Step 1 - initialize and prepare statement
  if(!(arg_struct.stmt = mysql_simple_prepare(mysql, arg_struct.query, arg_struct.headline)))
    return 0;

  // Step 2 - parameter count verifying and binding
  verify_param_count(arg_struct.stmt, arg_struct.Query_struct.param_count,
                     arg_struct.headline);
  make_bind(arg_struct.stmt, arg_struct.Query_struct.bind, arg_struct.headline);

  // Step 3 - no execution, it will be later

  // Step 4 - result metadata getting and verifying
  if (arg_struct.Result_struct.param_count) {
    arg_struct.result_metadata = mysql_stmt_result_metadata(arg_struct.stmt);
    verify_field_count(arg_struct.result_metadata,
                       arg_struct.Result_struct.param_count,
                       arg_struct.headline);
  }

  // Step 5 - result binding
  if(arg_struct.Result_struct.bind != nullptr)
    make_bind(arg_struct.stmt, arg_struct.Result_struct.bind, arg_struct.headline);
};

// //обёртка для тестирования темплэйта
// no_errors prepare(Select_User_By_Id& arg_struct) {
// };

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

template <class T>
no_errors close(T& arg_struct, MYSQL* mysql) {
  return close_stmt(mysql, arg_struct.stmt, arg_struct.result_metadata, arg_struct.headline);
};

// // //обёртка для тестирования темплэйта
// no_errors close(Select_User_By_Id& arg_struct, MYSQL* mysql) {
//   return close_stmt(mysql, arg_struct.stmt, arg_struct.result_metadata, arg_struct.headline);
// };


};