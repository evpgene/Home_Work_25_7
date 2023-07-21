#pragma once
#include <mysql/mysql.h>

#include <string>

const int string_size{255};

struct ParamUint {
  unsigned long data; // zdec' long blin!!! bliiiinnnn!!! long a ne int! 3 dnya prosrano!
  unsigned long length;  // Current buffer length for output or input
                          // data (for character and binary C data)
  bool is_null{false};  // For input/output set inform that the data is NULL
  bool is_unsigned{true};   // Inform binding to signed or unsigned type - mean
                          // only for client side
  bool error{true};    // For output (received), set indicate Truncation
  ParamUint() = delete;
  ParamUint(MYSQL_BIND& bind) {
    bind.buffer_type = MYSQL_TYPE_LONG;
    bind.buffer_length = 255;
    bind.is_unsigned = true;  // Inform binding to signed or unsigned type -
                              // mean only for client side
    bind.buffer = &data;
    bind.is_null = &is_null;
    bind.error = &error;
  };
  ~ParamUint(){};
};

struct ParamString {
  char data[string_size];
  unsigned long length{string_size};  // Current buffer length for output or input
                            // data (for character and binary C data)
  bool is_null{false};      // For input/output set inform that the data is NULL
  bool is_unsigned{true};   // Inform binding to signed or unsigned type - mean
                            // only for client side
  bool error{true};         // For output (received), set indicate Truncation
  ParamString() = delete;
  ParamString(MYSQL_BIND& bind) {
    bind.buffer_type = MYSQL_TYPE_STRING;
    bind.is_unsigned = false;  // Inform binding to signed or unsigned type -
                               // mean only for client side
    bind.buffer_length =
        string_size;  // Total buffer length (for character and binary C data)
    bind.buffer = (char*)&data;
    bind.length = &length;
    bind.is_null = &is_null;
    bind.error = &error;
  };
  ~ParamString(){};
};

struct ParamDatetime {
  MYSQL_TIME data;
  unsigned long length{sizeof(data)};  // Current buffer length for output or input
  //                           // data (for character and binary C data)
  bool is_null{false};  // For input/output set inform that the data is NULL
  bool error{false};     // For output (received), set indicate Truncation
  ParamDatetime() = delete;
  ParamDatetime(MYSQL_BIND& bind) {
    bind.buffer_type = MYSQL_TYPE_TIMESTAMP; // zdec' MYSQL_TYPE_TIMESTAMP blin!!! bliiiinnnn!!! long a ne int! nedelya prosrana!
    bind.buffer = (char*)&data;
    bind.is_null = &is_null;
    bind.error = &error;
  };
  ~ParamDatetime(){};
};

// Result structure for statment without result (for example INSERT)
struct NoResult {
  const int param_count{0};
  MYSQL_BIND* bind;  // Emty pointer
};

// V
struct Insert_User {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"insert_user_query "};
  const std::string query{"INSERT INTO users (login, pass) VALUES (?,?)"};
  struct query {
    const int param_count{2};
    MYSQL_BIND bind[2];                        // Two parameters
    ParamString login = ParamString(bind[0]);  // First parameter
    ParamString pass = ParamString(bind[1]);   // Second parameter
  } Query_struct;
  NoResult Result_struct;
};

// V
struct Select_User_By_Id {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"select_user_by_id_query "};
  const std::string query{"SELECT id, login, pass FROM users WHERE id = ?"};
  struct query {
    const int param_count{1};  // Number of prepared parameters expected
    MYSQL_BIND bind[1];
    ParamUint id = ParamUint(bind[0]);
  } Query_struct;
  struct result {
    const int param_count{3};  // Number of result filds expected
    MYSQL_BIND bind[3];
    ParamUint id = ParamUint(bind[0]);         // First parameter
    ParamString login = ParamString(bind[1]);  // Second parameter
    ParamString pass = ParamString(bind[2]);   // Third parameter
    int column_count;
    int row_count;
  } Result_struct;
};

// V
struct Select_User_By_Login {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"select_user_by_login_query "};
  const std::string query{"SELECT id, login, pass FROM users WHERE login = ?"};
  struct query {
    const int param_count{1};  // Number of prepared parameters expected
    MYSQL_BIND bind[1];
    ParamString login = ParamString(bind[0]);  // First parameter
  } Query_struct;
  struct result {
    const int param_count{3};  // Number of result filds expected
    MYSQL_BIND bind[3];
    ParamUint id = ParamUint(bind[0]);         // First parameter
    ParamString login = ParamString(bind[1]);  // Second parameter
    ParamString pass = ParamString(bind[2]);   // Third parameter
    int column_count;
    int row_count;
  } Result_struct;
};


struct Select_Users_All {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"select_users_all_query "};
  const std::string query{"SELECT id, login, pass FROM users WHERE id >= ?"};
  struct query {
    const int param_count{1};  // Number of prepared parameters expected
    MYSQL_BIND bind[1];
    ParamUint dummy = ParamUint(bind[0]);
  } Query_struct;
  struct result {
    const int param_count{3};  // Number of result filds expected
    MYSQL_BIND bind[3];
    ParamUint id = ParamUint(bind[0]);         // First parameter
    ParamString login = ParamString(bind[1]);  // Second parameter
    ParamString pass = ParamString(bind[2]);   // Third parameter
    int column_count;
    int row_count;
  } Result_struct;
};

// V
struct Insert_Chat {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"insert_chat_query "};
  const std::string query{"INSERT INTO chats (name) VALUES (?)"};
  struct query {
    const int param_count{1};  // Number of prepared parameters expected
    MYSQL_BIND bind[1];        // One parameter
    ParamString name = ParamString(bind[0]);  // First parameter
  } Query_struct;
  NoResult Result_struct;
};

// V
struct Select_Chat_By_Name {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"select_chat_by_name_query "};
  const std::string query{"SELECT id, name FROM chats WHERE name = ?"};
  struct query {
    const int param_count{1};  // Number of prepared parameters expected
    MYSQL_BIND bind[1];
    ParamString name = ParamString(bind[0]);  // First parameter
  } Query_struct;
  struct result {
    const int param_count{2};  // Number of result filds expected
    MYSQL_BIND bind[2];
    ParamUint id = ParamUint(bind[0]);        // First parameter
    ParamString name = ParamString(bind[1]);  // Second parameter
    int column_count;
    int row_count;
  } Result_struct;
};

// V
struct Select_Chat_By_Id {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"select_chat_by_id_query "};
  const std::string query{"SELECT id, name FROM chats WHERE id = ?"};
  struct query {
    const int param_count{1};  // Number of prepared parameters expected
    MYSQL_BIND bind[1];
    ParamUint id = ParamUint(bind[0]);  // First parameter
  } Query_struct;
  struct result {
    const int param_count{2};  // Number of result filds expected
    MYSQL_BIND bind[2];
    ParamUint id = ParamUint(bind[0]);        // First parameter
    ParamString name = ParamString(bind[1]);  // Second parameter
    int column_count;
    int row_count;
  } Result_struct;
};

// V
struct Insert_Chat_User {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"insert_chat_user_query "};
  const std::string query{
      "INSERT INTO chat_user (chat_id, user_id, user_no) VALUES (?,?,?)"};
  struct query {
    const int param_count{3};  // Number of prepared parameters expected
    MYSQL_BIND bind[3];        // One parameter
    ParamUint chat_id = ParamUint(bind[0]);  // First parameter
    ParamUint user_id = ParamUint(bind[1]);  // Second parameter
    ParamUint user_no = ParamUint(bind[2]);  // Third parameter
  } Query_struct;
  NoResult Result_struct;
};

// V
struct Select_Chat_User {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"select_chat_user_query "};
  const std::string query{"SELECT id FROM chat_user WHERE chat_id = ? AND user_id = ?"};
  struct query {
    const int param_count{2};  // Number of prepared parameters expected
    MYSQL_BIND bind[2];
    ParamUint chat_id = ParamUint(bind[0]);  // First parameter
    ParamUint user_id = ParamUint(bind[1]);  // Second parameter
  } Query_struct;
  struct result {
    const int param_count{1};  // Number of result filds expected
    MYSQL_BIND bind[1];
    ParamUint chat_user_id = ParamUint(bind[0]);  // First parameter
    int column_count;
    int row_count;
  } Result_struct;
};

// V
struct Insert_Message {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"insert_message_query "};
  const std::string query{
      "INSERT INTO messages (chat_user_id, message, dt) VALUES "
      "(?,?,CURRENT_TIMESTAMP())"};
  struct query {
    const int param_count{2};  // Number of prepared parameters expected
    MYSQL_BIND bind[2];        // One parameter
    ParamUint chat_user_id = ParamUint(bind[0]);  // First parameter
    ParamString message = ParamString(bind[1]);   // Second parameter
  } Query_struct;
  NoResult Result_struct;
};

// Проверить необходимость и целесообразность
#define SELECT_MESSAGE \
  "SELECT * FROM message_view WHERE chat_id = ? AND message_id = ?"

struct Select_Message {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"select_messages_query "};
  const std::string query{
      "SELECT * FROM message_view WHERE chat_id = ? AND message_id = ?"};
  struct query {
    const int param_count{2};  // Number of prepared parameters expected
    MYSQL_BIND bind[2];
    ParamUint chat_id = ParamUint(bind[0]);     // First parameter
    ParamUint message_id = ParamUint(bind[1]);  // Second parameter
    // ParamUint message_id_end = ParamUint(bind[2]); // Third parameter
    // ParamUint status = ParamUint(bind[3]); // 4 parameter
    // ParamUint limit = ParamUint(bind[4]); // 5 parameter
  } Query_struct;
  struct result {
    const int param_count{7};  // Number of result filds expected
    MYSQL_BIND bind[7];
    ParamUint chat_id = ParamUint(bind[0]);           // First parameter
    ParamUint user_id = ParamUint(bind[1]);           // Second parameter
    ParamUint message_id = ParamUint(bind[2]);        // Third parameter
    ParamDatetime timesend = ParamDatetime(bind[3]);  // 4 parameter
    ParamString login = ParamString(bind[4]);         // 5 parameter
    ParamString message = ParamString(bind[5]);       // 6 parameter
    ParamString status = ParamString(bind[6]);        // 7 parameter
    int column_count;
    int row_count;
  } Result_struct;
};

struct Select_Messages_Mult {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"select_messages_mult_query "};
  /* chat_id, user_id , message_id , timesend, user_login , message , status */
  const std::string query{"SELECT message_id, message  FROM message_view WHERE chat_id = ? AND message_id BETWEEN ? AND ? AND status = ? LIMIT ?"};
  // const std::string query{"SELECT \
	// chats.id AS chat_id,\
	// messages.message AS message,\
	// FROM messages \
	// JOIN chat_user ON chat_user.id = messages.chat_user_id \
	// JOIN chats ON chats.id = chat_user.chat_id \
	// JOIN users ON users.id = chat_user.user_id\
	// WHERE chats.id = ? AND messages.id BETWEEN 1 AND 100 AND messages.status >= 1 LIMIT 100"};

  // "SELECT \
	// chats.id AS chat_id,\
	// users.id AS user_id,\
	// messages.id AS message_id,\
	// messages.dt AS timesend,\
	// users.login AS user_login,\
	// messages.message AS message,\
	// messages.status AS status\
	// FROM messages \
	// JOIN chat_user ON chat_user.id = messages.chat_user_id \
	// JOIN chats ON chats.id = chat_user.chat_id \
	// JOIN users ON users.id = chat_user.user_id\
	// WHERE chat_id = 3 AND messages.id BETWEEN 1 AND 100 AND messages.status >= 1 LIMIT 100"

  struct query {
    const int param_count{1};  // Number of prepared parameters expected
    MYSQL_BIND bind[5];
    ParamUint chat_id = ParamUint(bind[0]);           // First parameter
    ParamUint message_id_begin = ParamUint(bind[1]);  // Second parameter
    ParamUint message_id_end = ParamUint(bind[2]);    // Third parameter
    ParamUint status = ParamUint(bind[3]);            // 4 parameter
    ParamUint limit = ParamUint(bind[4]);             // 5 parameter
  } Query_struct;
  struct result {
    const int param_count{2};  // Number of result filds expected
    MYSQL_BIND bind[2];
     //ParamUint chat_id = ParamUint(bind[0]);           // First parameter
    // ParamUint user_id = ParamUint(bind[1]);           // Second parameter
    ParamUint message_id = ParamUint(bind[0]);        // Third parameter
    // ParamDatetime timesend = ParamDatetime(bind[3]);  // 4 parameter
    // ParamString user_login = ParamString(bind[4]);         // 5 parameter
    ParamString message = ParamString(bind[1]);       // 6 parameter
    // ParamUint status = ParamUint(bind[6]);        // 7 parameter
    int column_count;
    int row_count;
  } Result_struct;
};

struct Update_Status_Delivered {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"update_status_delivered_query "};
  const std::string query{
      "UPDATE messages SET status = 2, dt_delivered = CURRENT_TIMESTAMP() "
      "WHERE chat_user_id = ? AND id BETWEEN ? AND ? AND status != 2 AND "
      "status != 3"};
  struct query {
    const int param_count{3};  // Number of prepared parameters expected
    MYSQL_BIND bind[3];
    ParamUint chat_user_id = ParamUint(bind[0]);      // First parameter
    ParamUint message_id_begin = ParamUint(bind[1]);  // Second parameter
    ParamUint message_id_end = ParamUint(bind[2]);    // Third parameter
  } Query_struct;
  NoResult Result_struct;
};

struct Update_Status_Read {
  MYSQL_STMT* stmt{nullptr};
  MYSQL_RES* result_metadata{nullptr};
  const std::string headline{"update_status_read_query "};
  const std::string query{
      "UPDATE messages SET status = 2, dt_delivered = CURRENT_TIMESTAMP() "
      "WHERE chat_user_id = ? AND id BETWEEN ? AND ? AND status != 2 AND "
      "status != 3"};
  struct query {
    const int param_count{3};  // Number of prepared parameters expected
    MYSQL_BIND bind[3];
    ParamUint chat_user_id = ParamUint(bind[0]);      // First parameter
    ParamUint message_id_begin = ParamUint(bind[1]);  // Second parameter
    ParamUint message_id_end = ParamUint(bind[2]);    // Third parameter
  } Query_struct;
  NoResult Result_struct;
};