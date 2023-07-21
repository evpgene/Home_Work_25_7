// Read the next referense for information about steps:
// https://dev.mysql.com/doc/c-api/8.0/en/c-api-prepared-statement-interface-usage.html

#pragma once

#include <mysql/mysql.h>

#include <cstring>
#include <iostream>
#include <string>
#include <utility>

#include "Chat.h"
#include "DB_Queries_DML_structures.h"
#include "User.h"

#define STRING_SIZE 255

using queue_message_t = std::shared_ptr<std::queue<Message>>;
using insert_id = size_t;  // id of the inserted element. No insertions if = 0;
using affected_rows =
    size_t;  // the number of affected rows. No affected rows if = 0;
using no_errors = bool;  // Execution OK. No errors occurred if = true;
using is_errors = bool;  // Execution Not OK. Errors occurred if = true;


const int silent_level{1};
const int verify_affected_rows_sl{1}; // sl - silent level
const int verify_param_count_sl{1}; // sl - silent level
const int verify_field_count_sl{1}; // sl - silent level
const int make_bind_params_sl{1}; // sl - silent level
const int make_bind_results_sl{1}; // sl - silent level
const int mysql_stmt_free_result_sl{1}; // sl - silent level
const int close_stmt_sl{1}; // sl - silent level
const int execute_stmt_sl{1}; // sl - silent level
const int affected_rows_sl{1}; // sl - silent level

class DB_Queries_DML {
 private:
  MYSQL* mysql = new MYSQL;
  // MYSQL_RES* res; // скорее нужно убрать, чем оставить
  // MYSQL_ROW row; // скорее нужно убрать, чем оставить
  std::size_t lastInsertMessageId{0}; // ??? проверить как использовать

  Insert_User Insert_User_struct;
  Select_User_By_Id Select_User_By_Id_struct;
  Select_User_By_Login Select_User_By_Login_struct;
  Select_Users_All Select_Users_All_struct;
  Insert_Chat Insert_Chat_struct;
  Select_Chat_By_Id Select_Chat_By_Id_struct;
  Select_Chat_By_Name Select_Chat_By_Name_struct;
  Insert_Chat_User Insert_Chat_User_struct;
  Select_Chat_User Select_Chat_User_struct;
  Insert_Message Insert_Message_struct;
  Select_Message Select_Message_struct;
  Select_Messages_Mult Select_Messages_Mult_struct;
  Update_Status_Delivered Update_Status_Delivered_struct;
  Update_Status_Read Update_Status_Read_struct;

 public:
  DB_Queries_DML();
  ~DB_Queries_DML();

  no_errors connectDB_open(void);
  no_errors connectDB_close(void);

  no_errors prepareAll(void);
  no_errors closeAll(void);

  insert_id insert_User_fc(const User_t user);
  User_t select_User_By_Id_fc(const size_t id);
  User_t select_User_By_Login_fc(const std::string& login);
  queue_user_t select_Users_All_fc(void);
  insert_id insert_Chat_fc(const std::string chatname);
  Chat_t select_Chat_By_Id_fc(const size_t id);
  Chat_t select_Chat_By_Name_fc(const std::string& name);
  insert_id insert_Chat_User_fc(const size_t chat_id, const size_t user_id,
                                const size_t user_no);
  size_t select_Chat_User_fc(const size_t chat_id, const size_t user_id);
  insert_id insert_Message_fc(const size_t chat_user_id, std::string message);
  Message_t select_Message_fc(const size_t chat_id, const size_t message_id);
  queue_message_t select_Messages_Mult_fc(const size_t chat_id,
                                       const size_t message_id_begin,
                                       const size_t message_id_end,
                                       const size_t message_status,
                                       const size_t limit);
  size_t update_Status_Delivered_fc(const size_t chat_user_id,
                               const size_t message_id_begin,
                               const size_t message_id_end);
  size_t update_Status_Read_fc(const size_t chat_user_id,
                          const size_t message_id_begin,
                          const size_t message_id_end);

  /* return the total affected rows */
  size_t affected_rows(MYSQL_STMT* stmt, std::string headline) {
    uint64_t affected_rows = mysql_stmt_affected_rows(stmt);
    if (silent_level >= affected_rows_sl) {
      std::cout << headline << " affected rows: " << affected_rows << std::endl;
      if (affected_rows == -1) {
        std::cout << headline << " mysql_stmt_affected_rows() failed "
                  << std::endl;
      }
    }
    return affected_rows;
  }

  /* verify the total affected rows */
  no_errors verify_affected_rows(MYSQL_STMT* stmt, size_t exp_count,
                                 std::string headline) {
    uint64_t affected_rows = mysql_stmt_affected_rows(stmt);
    if (affected_rows == -1) {
      std::cout << headline << " mysql_stmt_affected_rows() failed "
                << std::endl;
      return false;
    }
    if (affected_rows != exp_count) {
      if (silent_level >= verify_affected_rows_sl) {
        std::cout << headline << " total affected rows: " << affected_rows
                  << " expected: " << exp_count << std::endl;
      }
      return false;
    }
    return true;
  };

  /* verify the total fetched rows */
  no_errors verify_fetched_rows(size_t count, size_t exp_count,
                                std::string headline) {
    if (count != exp_count) {
      std::cout << headline << " MySQL failed to return all rows " << std::endl;
      std::cout << " returned: " << count << " expected: " << exp_count
                << std::endl;
      return false;
    }
    return true;
  };

  /* verify the parameters count */
  no_errors verify_param_count(MYSQL_STMT* stmt, size_t exp_count,
                               std::string headline) {
    size_t param_count = mysql_stmt_param_count(stmt);
    if (param_count != exp_count) {
      if (silent_level >= verify_param_count_sl) {
        std::cout << headline << " total parameters in stmt: " << param_count
                  << " expected: " << exp_count << std::endl;
      }
      return false;
    }
    return true;
  };

  /* verify fields count */
  no_errors verify_field_count(MYSQL_RES* result, uint exp_count,
                               std::string headline) {
    uint field_count = mysql_num_fields(result);
    if (field_count != exp_count) {
      if (silent_level >= verify_field_count_sl) {
        std::cout << headline << " total fields in res: " << field_count
                  << " expected: " << exp_count << std::endl;
      }
      return false;
    }
    return true;
  };

  // Step 1 - Create a prepared statement handler, prepare the statement on the
  // server
  MYSQL_STMT* prepare_stmt(MYSQL* mysql_arg, const std::string& query,
                           const std::string& headline) {
    MYSQL_STMT* stmt = mysql_stmt_init(mysql_arg);
    if (stmt &&
        mysql_stmt_prepare(stmt, query.c_str(), (ulong)query.length())) {
      mysql_stmt_close(stmt);
      std::cout << headline << " mysql_stmt_prepare() failed " << std::endl;
      std::cout << mysql_stmt_error(stmt) << std::endl;
      return nullptr;
    }
    return stmt;
  };

  // Step 2 - bind input data for the parameter markers (on the server side???)
  no_errors bind_parameters(MYSQL_STMT* stmt, MYSQL_BIND* bnd_params,
                            std::string headline) {
    if (mysql_stmt_bind_param(stmt, bnd_params)) {
      if (silent_level >= make_bind_params_sl) {
        std::cout << headline
                  << " mysql_stmt_bind_param() failed: " << std::endl;
        std::cout << headline << mysql_stmt_error(stmt) << std::endl;
      }
      return false;
    }
    return true;
  };

  // Step 3 - executes the prepared query associated with the statement handler
  no_errors execute_stmt(MYSQL_STMT* stmt, std::string headline) {

    int res = mysql_stmt_execute(stmt);
    #if _DEBUG
    std::cout << "execute statement result (";
    std::cout << headline << ") " << res;
    std::cout << std::endl;
  #endif
    if (bool(res)) {
      if (silent_level >= execute_stmt_sl) {
        std::cout << headline << " mysql_stmt_execute() failed: " << std::endl;
        std::cout << headline << mysql_stmt_error(stmt) << std::endl;
      }
      return false;
    }
    return true;
  };

  // Step 5 - bind otput data for the results markers (on the server side???)
  no_errors bind_results(MYSQL_STMT* stmt, MYSQL_BIND* bnd_results,
                         std::string headline) {

    #if _DEBUG
    std::cout << "stmt: " << stmt;
    std::cout << std::endl;
    std::cout << "bnd_results: " << bnd_results;
    std::cout << std::endl;
    #endif
    bool res = mysql_stmt_bind_result(stmt, bnd_results);
    #if _DEBUG
    std::cout << "bind finish";
    std::cout << std::endl;
    #endif
    if (false/* res */) {
      if (silent_level >= make_bind_results_sl) {
        std::cout << headline
                  << " mysql_stmt_bind_result() failed: " << std::endl;
        std::cout << headline << mysql_stmt_error(stmt) << std::endl;
      }
      return false;
    }
    return true;
  };

  // Step ~7
  no_errors free_result_stmt(MYSQL_STMT* stmt, std::string headline) {
    if (mysql_stmt_free_result(stmt)) {
      if (silent_level >= mysql_stmt_free_result_sl) {
        std::cout << headline
                  << " mysql_stmt_free_result() failed: " << std::endl;
        std::cout << headline << mysql_stmt_error(stmt) << std::endl;
      }
      return false;
    }
    #if _DEBUG
      std::cout << headline << "result freed ";
      std::cout  << headline  << mysql_stmt_errno(stmt) << std::endl;
    #endif
    return true;
  };

  // Step 8 - mysql_stmt_close() - close the statement handler
  // Step 9 - free metadata result
  no_errors close_stmt(MYSQL* mysql, MYSQL_STMT* stmt,
                       MYSQL_RES* result_metadata, std::string headline) {
    if (mysql_stmt_close(stmt)) {
      if (silent_level >= close_stmt_sl) {
        std::cout << headline
                  << " ailed while closing the statement: " << std::endl;
        std::cout << headline << mysql_error(mysql) << std::endl;
      }
      return false;
      if (result_metadata) mysql_free_result(result_metadata);
      // result_metadata = nullptr; //???
    }
    return true;
  };

  // Steps 1 - 4 (without Step 3)
  template <class T>
  no_errors prepare(T& arg_struct, MYSQL* mysql) {
    auto& query = arg_struct.Query_struct;
    auto& result = arg_struct.Result_struct;
    no_errors no_errors{true};

    // Step 1 - initialize and prepare statement
    if (!(arg_struct.stmt =
              prepare_stmt(mysql, arg_struct.query, arg_struct.headline)))
      return 0;

    // Step 2 - parameter count verifying and binding
    no_errors &= verify_param_count(arg_struct.stmt, query.param_count,
                                    arg_struct.headline);
    no_errors &=
        bind_parameters(arg_struct.stmt, query.bind, arg_struct.headline);

    // Step 3 - no execution, it will be later

    // Step 4.1 - result metadata getting and verifying
    if (result.param_count) {
      arg_struct.result_metadata = mysql_stmt_result_metadata(arg_struct.stmt);
      no_errors &= verify_field_count(arg_struct.result_metadata,
                                      result.param_count, arg_struct.headline);
    }
    if (!no_errors) return false;
    return true;
  };

  // Steps 3 - 5 (without Step 4)
  template <class T>
  no_errors execute(T& arg_struct) {
    auto& result = arg_struct.Result_struct;
    no_errors no_errors{true};

    no_errors &= execute_stmt(arg_struct.stmt, arg_struct.headline);
    #if _DEBUG
      std::cout << "returned after execute stmt!!! ";
      std::cout << std::endl;
    #endif
        //mysql_stmt_free_result(arg_struct.stmt);
    #if _DEBUG
        std::cout << "SQL state ";
        std::cout <<  mysql_stmt_sqlstate(arg_struct.stmt) ;
        std::cout << std::endl;
      #endif

    arg_struct.result_metadata = mysql_stmt_result_metadata(arg_struct.stmt);


  
    /* Print out and check the metadata */


  // char *name;               /* Name of column */
  // char *org_name;           /* Original column name, if an alias */
  // char *table;              /* Table of column if column was a field */
  // char *org_table;          /* Org table name, if table was an alias */
  // char *db;                 /* Database for table */
  // char *catalog;            /* Catalog for table */
  // char *def;                /* Default value (set by mysql_list_fields) */
  // unsigned long length;     /* Width of column (create length) */
  // unsigned long max_length; /* Max width for selected set */
  // unsigned int name_length;
  // unsigned int org_name_length;
  // unsigned int table_length;
  // unsigned int org_table_length;
  // unsigned int db_length;
  // unsigned int catalog_length;
  // unsigned int def_length;
  // unsigned int flags;         /* Div flags */
  // unsigned int decimals;      /* Number of decimals in field */
  // unsigned int charsetnr;     /* Character set */
  // enum enum_field_types type; /* Type of field. See mysql_com.h for types */

    //new
    if(bool(arg_struct.result_metadata)){
    no_errors &= verify_field_count(arg_struct.result_metadata,
                                result.param_count, arg_struct.headline);
    #if _DEBUG
      std::cout << "field count verifyed ";
      std::cout << std::endl;
    #endif
}

    /* Bind the result */
    if (arg_struct.result_metadata != nullptr) {
      #if _DEBUG
        std::cout << "result metadata not nullptr ";
        std::cout << std::endl;
      #endif
          // stmt_metadata = mysql_stmt_result_metadata(stmt);
          // std::cout << "store result value: " << mysql_stmt_store_result(arg_struct.stmt) << std::endl;;
          MYSQL_FIELD* stmt_field_list = mysql_fetch_fields(arg_struct.result_metadata);
          size_t stmt_field_count = mysql_num_fields(arg_struct.result_metadata);

          for (size_t i = 0; i < stmt_field_count; i++)
          {
            std::cout << " name: " << stmt_field_list[i].name << " type: " << stmt_field_list[i].type << std::endl;
          }

    }


    if(bool(arg_struct.stmt) && bool(result.bind)){
    bool res = mysql_stmt_bind_result(arg_struct.stmt, result.bind);
} else {
  std::cout << "no bind !!!!!!!!!!!" << std::endl;
}




      #if _DEBUG
        std::cout << "binded ";
        std::cout << std::endl;
      #endif
    //no_errors &= bind_results(arg_struct.stmt, result.bind, arg_struct.headline);

    if (!no_errors) return false;
    return true;
  };

  // Steps 8, 9
  template <class T>
  no_errors close(T& arg_struct, MYSQL* mysql) {
    return close_stmt(mysql, arg_struct.stmt, arg_struct.result_metadata,
                      arg_struct.headline);
  };
};