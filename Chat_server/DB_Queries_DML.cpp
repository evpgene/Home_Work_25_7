#include "DB_Queries_DML.h"

DB_Queries_DML::DB_Queries_DML() {}

DB_Queries_DML::~DB_Queries_DML() {}

no_errors DB_Queries_DML::connectDB_open(void) {
  // Получаем дескриптор соединения
  mysql_init(mysql);
  if (mysql == nullptr) {
    // Если дескриптор не получен — выводим сообщение об ошибке
    std::cout << "Error: can't create MySQL-descriptor" << std::endl;
    return false;
  }

  // Подключаемся к серверу
  if (!mysql_real_connect(mysql, "localhost", "root", "Root123_Root123",
                          "chat_db", NULL, NULL, 0)) {
    // Если нет возможности установить соединение с БД выводим сообщение об
    // ошибке
    std::cout << "Error: can't connect to database " << mysql_error(mysql)
              << std::endl;
    return false;
  } else {
    // Если соединение успешно установлено выводим фразу — "Success!"
    std::cout << "Success!" << std::endl;
    return true;
  }

  mysql_set_character_set(mysql, "utf8");
  // Смотрим изменилась ли кодировка на нужную, по умолчанию идёт latin1
  std::cout << "connection characterset: " << mysql_character_set_name(mysql)
            << std::endl;
}

no_errors DB_Queries_DML::connectDB_close(void) {
  // Закрываем соединение с сервером базы данных
  mysql_close(mysql);
  return true;
}







insert_id DB_Queries_DML::insertUser(const User_t user,
                                     Insert_User &arg_struct) {
  no_errors no_errors{true};
  if(!user) return 0;
    strncpy(arg_struct.Query_struct.login.data, user->getLogin().c_str(), string_size);
    arg_struct.Query_struct.login.length = strlen(arg_struct.Query_struct.login.data);

    strncpy(arg_struct.Query_struct.pass.data, user->getPass().c_str(), string_size);
    arg_struct.Query_struct.pass.length = strlen(arg_struct.Query_struct.pass.data);

  /* Execute the INSERT statement */
  no_errors &= execute_stmt(arg_struct.stmt, arg_struct.headline);
  no_errors &= verify_affected_rows(arg_struct.stmt, 1, arg_struct.headline);
  if(no_errors)
    return mysql_stmt_insert_id(arg_struct.stmt);
  return 0;
}

User_t DB_Queries_DML::selectUserById(const size_t id) {
  Select_UserById.Query_struct.int_data = id;

  // execute statement
  if (mysql_stmt_execute(Select_UserById.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_USER_BY_ID mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_UserById.Query_struct.stmt));
    return nullptr;
  }

  /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_UserById.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_USER_BY_ID mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_UserById.Query_struct.stmt));
    return nullptr;
  }

  /* Fetch all rows */
  Select_UserById.Result_struct.row_count = 0;
  fprintf(stdout, "SELECT_USER_BY_ID Fetching results ...\n");
  while (!mysql_stmt_fetch(Select_UserById.Query_struct.stmt)) {
    Select_UserById.Result_struct.row_count++;
  }

  // Check row count
  if (Select_UserById.Result_struct.row_count != 1) {
    fprintf(stderr, " SELECT_USER_BY_ID MySQL failed to return all rows\n");
    return nullptr;
  }
  return make_shared<User>(User{Select_UserById.Result_struct.login.str_data,
                                Select_UserById.Result_struct.pass.str_data});
}


User_t DB_Queries_DML::selectUserByLogin(const std::string login) {
  strncpy(Select_User_By_Login_struct.Query_struct.login.str_data, login.c_str(), STRING_SIZE);
  Select_User_By_Login_struct.Query_struct.login.str_length =
      strlen(Select_User_By_Login_struct.Query_struct.login.str_data);

  // execute statement
  if (mysql_stmt_execute(Select_User_By_Login_struct.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_USER_BY_LOGIN mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User_By_Login_struct.Query_struct.stmt));
    return nullptr;
  }

  /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_User_By_Login_struct.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_USER_BY_LOGIN mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User_By_Login_struct.Query_struct.stmt));
    return nullptr;
  }

  /* Fetch all rows */
  Select_User_By_Login_struct.Result_struct.row_count = 0;
  fprintf(stdout, "SELECT_USER_BY_LOGIN Fetching results ...\n");
  while (!mysql_stmt_fetch(Select_User_By_Login_struct.Query_struct.stmt)) {
    Select_User_By_Login_struct.Result_struct.row_count++;
  }

  // Check row count
  if (Select_User_By_Login_struct.Result_struct.row_count != 1) {
    fprintf(stderr, " SELECT_USER_BY_LOGIN MySQL failed to return all rows\n");
    return nullptr;
  }
  return make_shared<User>(User{Select_User_By_Login_struct.Result_struct.login.str_data,
                                Select_User_By_Login_struct.Result_struct.pass.str_data});
}

insert_id DB_Queries_DML::insertChat(const Chat_t chat) {
  strncpy(Insert_Chat.Query_struct.Name.str_data, chat->getChatName().c_str(),
          STRING_SIZE);
  Insert_Chat.Query_struct.Name.str_length = strlen(Insert_Chat.Query_struct.Name.str_data);

  /* Execute the INSERT statement */
  if (mysql_stmt_execute(Insert_Chat.Query_struct.stmt)) {
    fprintf(stderr, " INSERT_CHAT mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Chat.Query_struct.stmt));
    return 0;
  }
  Insert_Chat.Query_struct.affected_rows =
      mysql_stmt_affected_rows(Insert_Chat.Query_struct.stmt);
  if (Insert_Chat.Query_struct.affected_rows != 1) /* validate affected rows */
  {
    fprintf(stderr, " INSERT_CHAT invalid affected rows by MySQL\n");
    return 0;
  }
  return mysql_insert_id(mysql);
}

Chat_t DB_Queries_DML::selectChat(const size_t id) {
  Select_Chat.Query_struct.int_data = id;

  // execute statement
  if (mysql_stmt_execute(Select_Chat.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_CHAT mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query_struct.stmt));
    return nullptr;
  }

  /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_Chat.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_CHAT mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query_struct.stmt));
    return nullptr;
  }

  /* Fetch all rows */
  Select_Chat.Result_struct.row_count = 0;
  fprintf(stdout, "SELECT_CHAT Fetching results ...\n");
  while (!mysql_stmt_fetch(Select_Chat.Query_struct.stmt)) {
    Select_Chat.Result_struct.row_count++;
  }

  // Check row count
  if (Select_Chat.Result_struct.row_count != 1) {
    fprintf(stderr, " SELECT_CHAT MySQL failed to return all rows\n");
    return nullptr;
  }

  return make_shared<Chat>(Chat{Select_Chat.Result_struct.Name.str_data});
}

insert_id DB_Queries_DML::insertChatUser(const size_t chat_id,
                                         const size_t user_id) {
  Insert_ChatUser.Query_struct.chat_id.int_data = chat_id;
  Insert_ChatUser.Query_struct.user_id.int_data = user_id;

  /* Execute the INSERT statement */
  if (mysql_stmt_execute(Insert_ChatUser.Query_struct.stmt)) {
    fprintf(stderr, " INSERT_CHAT_USER mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_ChatUser.Query_struct.stmt));
    return 0;
  }
  Insert_ChatUser.Query_struct.affected_rows =
      mysql_stmt_affected_rows(Insert_ChatUser.Query_struct.stmt);
  if (Insert_ChatUser.Query_struct.affected_rows != 1) /* validate affected rows */
  {
    fprintf(stderr, " INSERT_CHAT_USER invalid affected rows by MySQL\n");
    return 0;
  }
  return mysql_insert_id(mysql);
}

size_t DB_Queries_DML::selectChatUser(const size_t chat_id,
                                      const size_t user_id) {
  Select_ChatUser.Query_struct.chat_id.int_data = chat_id;
  Select_ChatUser.Query_struct.user_id.int_data = user_id;
  // execute statement
  if (mysql_stmt_execute(Select_ChatUser.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_CHAT_USER mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query_struct.stmt));
    return 0;
  }

  /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_ChatUser.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_CHAT_USER mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query_struct.stmt));
    return 0;
  }

  /* Fetch all rows */
  Select_ChatUser.Result_struct.row_count = 0;
  fprintf(stdout, "SELECT_CHAT_USER Fetching results ...\n");
  while (!mysql_stmt_fetch(Select_ChatUser.Query_struct.stmt)) {
    Select_ChatUser.Result_struct.row_count++;
  }

  // Check row count
  if (Select_ChatUser.Result_struct.row_count != 1) {
    fprintf(stderr, " SELECT_CHAT_USER MySQL failed to return all rows\n");
    return 0;
  }

  return Select_ChatUser.Result_struct.chat_user_id.int_data;
}

insert_id DB_Queries_DML::insertMessage(const size_t chat_user_id,
                                        const Message_t message) {
  Insert_Message.Query_struct.chat_user_id.int_data = chat_user_id;

  strncpy(Insert_Message.Query_struct.message.str_data, message->getMessage().c_str(),
          STRING_SIZE);
  Insert_Message.Query_struct.message.str_length =
      strlen(Insert_Message.Query_struct.message.str_data);

  /* Execute the INSERT statement */
  if (mysql_stmt_execute(Insert_Message.Query_struct.stmt)) {
    fprintf(stderr, " INSERT_MESSAGE mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Message.Query_struct.stmt));
    return 0;
  }

  Insert_Message.Query_struct.affected_rows =
      mysql_stmt_affected_rows(Insert_Message.Query_struct.stmt);

#if _DEBUG
  std::cout << "Affected rows: " << Insert_Message.Query_struct.affected_rows
            << std::endl;
#endif

  if (Insert_Message.Query_struct.affected_rows != 1) /* validate affected rows */

  {
    fprintf(stderr, " INSERT_MESSAGE invalid affected rows by MySQL\n");
    return 0;
  }
  return mysql_insert_id(mysql);
}

Message_t DB_Queries_DML::selectMessage(const size_t chat_id,
                                        const size_t message_id) {
  Select_Message.Query_struct.chat_id.int_data = chat_id;
  Select_Message.Query_struct.message_id.int_data = message_id;

  // execute statement
  if (mysql_stmt_execute(Select_Message.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_MESSAGE mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query_struct.stmt));
    return nullptr;
  }

  /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_Message.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_MESSAGE mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query_struct.stmt));
    return nullptr;
  }

  /* Fetch all rows */
  Select_Message.Result_struct.row_count = 0;
  fprintf(stdout, "SELECT_MESSAGE Fetching results ...\n");

  Message_t message;

  while (!mysql_stmt_fetch(Select_Message.Query_struct.stmt)) {
    std::cout << Select_Message.Result_struct.row_count++ << std::endl;
    message = make_shared<Message>(
        Message(std::to_string(Select_Message.Result_struct.dt.hour) + ':' +
                    std::to_string(Select_Message.Result_struct.dt.minute) + ':' +
                    std::to_string(Select_Message.Result_struct.dt.second) + ' ' +
                    std::to_string(Select_Message.Result_struct.dt.day) + '-' +
                    std::to_string(Select_Message.Result_struct.dt.month) + '-' +
                    std::to_string(Select_Message.Result_struct.dt.year),
                Select_Message.Result_struct.login.str_data,
                Select_Message.Result_struct.message.str_data));
  }

  // Check row count
  if (Select_Message.Result_struct.row_count != 1) {
    fprintf(stderr, " SELECT_MESSAGE MySQL failed to return all rows\n");
    return nullptr;
  }
  return message;
}

queue_message_t DB_Queries_DML::selectMessages(const size_t chat_id,
                                               const size_t message_id_begin,
                                               const size_t message_id_end,
                                               const size_t message_status,
                                               const size_t limit) {
  Select_Messages.Query_struct.chat_id.int_data = chat_id;
  Select_Messages.Query_struct.message_id_begin.int_data = message_id_begin;
  Select_Messages.Query_struct.message_id_end.int_data = message_id_end;
  Select_Messages.Query_struct.status.int_data = message_status;
  Select_Messages.Query_struct.limit.int_data = limit;

  // execute statement
  if (mysql_stmt_execute(Select_Messages.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_MESSAGES mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Messages.Query_struct.stmt));
    return nullptr;
  }

  /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_Messages.Query_struct.stmt)) {
    fprintf(stderr, " SELECT_MESSAGES mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Messages.Query_struct.stmt));
    return nullptr;
  }

  /* Fetch all rows */
  queue_message_t queue =
      std::make_shared<std::queue<Message>>(std::queue<Message>());
  Select_Messages.Result_struct.row_count = 0;
  fprintf(stdout, "SELECT_MESSAGES Fetching results Select_Messages...\n");
  while (!mysql_stmt_fetch(Select_Messages.Query_struct.stmt)) {
    std::cout << Select_Messages.Result_struct.row_count++ << std::endl;
    queue->emplace(
        Message(std::to_string(Select_Messages.Result_struct.dt.hour) + ':' +
                    std::to_string(Select_Messages.Result_struct.dt.minute) + ':' +
                    std::to_string(Select_Messages.Result_struct.dt.second) + ' ' +
                    std::to_string(Select_Messages.Result_struct.dt.day) + '-' +
                    std::to_string(Select_Messages.Result_struct.dt.month) + '-' +
                    std::to_string(Select_Messages.Result_struct.dt.year),
                Select_Messages.Result_struct.login.str_data,
                Select_Messages.Result_struct.message.str_data));
  };
  std::cout << "SELECT_MESSAGES cycle end " << std::endl;
  // //Check row count
  // if (Select_Messages.Result_struct.row_count != 1) {
  //   fprintf(stderr, " MySQL failed to return all rows\n");
  //   return nullptr;
  // }

  return queue;
}

affected_rows DB_Queries_DML::updateStatusDelivered(
    const size_t chat_user_id, const size_t message_id_begin,
    const size_t message_id_end) {
  Update_Status_Delivered.Query_struct.chat_user_id.int_data = chat_user_id;
  Update_Status_Delivered.Query_struct.message_id_begin.int_data = message_id_begin;
  Update_Status_Delivered.Query_struct.message_id_end.int_data = message_id_end;

  /* Execute the UPDATE statement */
  if (mysql_stmt_execute(Update_Status_Delivered.Query_struct.stmt)) {
    fprintf(stderr,
            " UPDATE_STATUS_DELIVERED mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n",
            mysql_stmt_error(Update_Status_Delivered.Query_struct.stmt));
    return 0;
  }

  Update_Status_Delivered.Query_struct.affected_rows =
      mysql_stmt_affected_rows(Update_Status_Delivered.Query_struct.stmt);

#if _DEBUG
  std::cout << "Affected rows: " << Update_Status_Delivered.Query_struct.affected_rows
            << std::endl;
#endif
  return Update_Status_Delivered.Query_struct.affected_rows;
}

affected_rows DB_Queries_DML::updateStatusRead(const size_t chat_user_id,
                                               const size_t message_id_begin,
                                               const size_t message_id_end) {
  Update_Status_Read.Query_struct.chat_user_id.int_data = chat_user_id;
  Update_Status_Read.Query_struct.message_id_begin.int_data = message_id_begin;
  Update_Status_Read.Query_struct.message_id_end.int_data = message_id_end;

  /* Execute the UPDATE statement */
  if (mysql_stmt_execute(Update_Status_Read.Query_struct.stmt)) {
    fprintf(stderr, " UPDATE_STATUS_READ mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Update_Status_Read.Query_struct.stmt));
    return 0;
  }

  Update_Status_Read.Query_struct.affected_rows =
      mysql_stmt_affected_rows(Update_Status_Read.Query_struct.stmt);

#if _DEBUG
  std::cout << "Affected rows: " << Update_Status_Read.Query_struct.affected_rows
            << std::endl;
#endif

  return Update_Status_Read.Query_struct.affected_rows;
}

no_errors DB_Queries_DML::prepareAll(void) {

  prepare<Insert_User>(Insert_User_struct);
  prepare<Select_User_By_Id>(Select_User_By_Id_struct);

  // return insertUser_prepare() && insertChat_prepare() &&
  //        insertChatUser_prepare() && insertMessage_prepare() &&
  //        selectUserById_prepare() &&
  //        // selectUserByLogin_prepare() &&
  //        selectChat_prepare() && selectChatUser_prepare() &&
  //        selectMessage_prepare() && selectMessages_prepare() &&
  //        updateStatusDelivered_prepare() && updateStatusRead_prepare();
}

no_errors DB_Queries_DML::closeAll(void) {

  close<Insert_User>(Insert_User_struct, mysql);
  close<Select_User_By_Id>(Select_User_By_Id_struct, mysql);
  // return insertUser_close() && insertChat_close() && insertChatUser_close() &&
  //        insertMessage_close() && selectChat_close() &&
  //        selectUserById_close() &&
  //        // selectUserByLogin_close() &&
  //        selectChatUser_close() && selectMessage_close() &&
  //        selectMessages_close() && updateStatusDelivered_close() &&
  //        updateStatusRead_close() && connectDB_close();
}
