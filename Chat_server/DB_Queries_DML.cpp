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

// V
insert_id DB_Queries_DML::insert_User_fc(Insert_User& arg_struct,
                                         const User_t user) {

  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  if (!user) return 0;

  /* Prepare data for execution */
  strncpy(query.login.data, user->getLogin().c_str(), string_size);
  query.login.length = strlen(query.login.data);

  strncpy(query.pass.data, user->getPass().c_str(), string_size);
  query.pass.length = strlen(query.pass.data);

  /* Execute statement */
  no_errors &= execute(arg_struct);

  /* Verify affected rows */
  no_errors &= verify_affected_rows(arg_struct.stmt, 1, arg_struct.headline);

  if (!no_errors) return 0;
  return mysql_stmt_insert_id(arg_struct.stmt);
}
// V
User_t DB_Queries_DML::select_User_By_Id_fc(Select_User_By_Id& arg_struct,
                                            const size_t id) {

  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  // Prepare data for execution
  query.id.data = id;

  /* Execute statement */
  no_errors &= execute(arg_struct);

  // Fetch all rows
  result.row_count = 0;
  std::cout << arg_struct.headline << " Fetching results ... " << std::endl;
  int status;
  while (true) {
    status = mysql_stmt_fetch(arg_struct.stmt);
    if (status == 1 || status == MYSQL_NO_DATA) break;
    result.row_count++;
  }
  no_errors &= (status != 1);

  // Check row count
  no_errors &= verify_fetched_rows(result.row_count, 1, arg_struct.headline);

  // Free result
  no_errors &= free_result_stmt(arg_struct.stmt, arg_struct.headline);

  if (!no_errors) return nullptr;
  return make_shared<User>(User{result.login.data, result.pass.data});
}

// V
User_t DB_Queries_DML::selectUserByLogin(Select_User_By_Login& arg_struct,
                                         const std::string& login) {

  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  /* Prepare data for execution */
  strncpy(query.login.data, login.c_str(), string_size);
  query.login.length = strlen(query.login.data);

  /* Execute statement */
  no_errors &= execute(arg_struct);

  // Fetch all rows
  result.row_count = 0;
  std::cout << arg_struct.headline << " Fetching results ... " << std::endl;
  int status;
  while (true) {
    status = mysql_stmt_fetch(arg_struct.stmt);
    if (status == 1 || status == MYSQL_NO_DATA) break;
    result.row_count++;
  }
  no_errors &= (status != 1);

  // Check row count
  no_errors &= verify_fetched_rows(result.row_count, 1, arg_struct.headline);

  // Free result
  no_errors &= free_result_stmt(arg_struct.stmt, arg_struct.headline);

  if (!no_errors) return nullptr;
  return make_shared<User>(User{result.login.data, result.pass.data});
}

// V
insert_id DB_Queries_DML::insertChat(Insert_Chat& arg_struct,
                                     const Chat_t chat) {

  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  if (!chat) return 0;

  /* Prepare data for execution */
  strncpy(query.name.data, chat->getChatName().c_str(), string_size);
  query.name.length = strlen(query.name.data);

  /* Execute statement */
  no_errors &= execute(arg_struct);

  /* Verify affected rows */
  no_errors &= verify_affected_rows(arg_struct.stmt, 1, arg_struct.headline);

  if (!no_errors) return 0;
  return mysql_stmt_insert_id(arg_struct.stmt);
}

// V
Chat_t DB_Queries_DML::selectChatById(Select_Chat_By_Id& arg_struct,
                                      const size_t id) {

  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  // Prepare data for execution
  query.id.data = id;

  /* Execute statement */
  no_errors &= execute(arg_struct);

  // Fetch all rows
  result.row_count = 0;
  std::cout << arg_struct.headline << " Fetching results ... " << std::endl;
  int status;
  while (true) {
    status = mysql_stmt_fetch(arg_struct.stmt);
    if (status == 1 || status == MYSQL_NO_DATA) break;
    result.row_count++;
  }
  no_errors &= (status != 1);

  // Check row count
  no_errors &= verify_fetched_rows(result.row_count, 1, arg_struct.headline);

  // Free result
  no_errors &= free_result_stmt(arg_struct.stmt, arg_struct.headline);

  if (!no_errors) return nullptr;
  return make_shared<Chat>(Chat{result.name.data});
}
// V
Chat_t DB_Queries_DML::selectChatByName(Select_Chat_By_Name& arg_struct,
                                        const std::string& name) {

  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  /* Prepare data for execution */
  strncpy(query.name.data, name.c_str(), string_size);
  query.name.length = strlen(query.name.data);

  /* Execute statement */
  no_errors &= execute(arg_struct);

  // Fetch all rows
  result.row_count = 0;
  std::cout << arg_struct.headline << " Fetching results ... " << std::endl;
  int status;
  while (true) {
    status = mysql_stmt_fetch(arg_struct.stmt);
    if (status == 1 || status == MYSQL_NO_DATA) break;
    result.row_count++;
  }
  no_errors &= (status != 1);

  // Check row count
  no_errors &= verify_fetched_rows(result.row_count, 1, arg_struct.headline);

  // Free result
  no_errors &= free_result_stmt(arg_struct.stmt, arg_struct.headline);

  if (!no_errors) return 0;
  return make_shared<Chat>(Chat{result.name.data});
  ;
}

// V
insert_id DB_Queries_DML::insertChatUser(Insert_Chat_User& arg_struct,
                                         const size_t chat_id,
                                         const size_t user_id) {

  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  /* Prepare data for execution */
  query.chat_id.data = chat_id;
  query.user_id.data = user_id;

  /* Execute statement */
  no_errors &= execute(arg_struct);

  /* Verify affected rows */
  no_errors &= verify_affected_rows(arg_struct.stmt, 1, arg_struct.headline);

  // Construct return
  if (no_errors) return mysql_stmt_insert_id(arg_struct.stmt);
  return 0;
}

size_t DB_Queries_DML::selectChatUser(Select_Chat_User& arg_struct,
                                      const size_t chat_id,
                                      const size_t user_id) {

  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  /* Prepare data for execution */
  query.chat_id.data = chat_id;
  query.user_id.data = user_id;

  /* Execute statement */
  no_errors &= execute(arg_struct);

  // Fetch all rows
  result.row_count = 0;
  std::cout << arg_struct.headline << " Fetching results ... " << std::endl;
  int status;
  while (true) {
    status = mysql_stmt_fetch(arg_struct.stmt);
    if (status == 1 || status == MYSQL_NO_DATA) break;
    result.row_count++;
  }
  no_errors &= (status != 1);

  // Check row count
  no_errors &= verify_fetched_rows(result.row_count, 1, arg_struct.headline);

  // Free result
  no_errors &= free_result_stmt(arg_struct.stmt, arg_struct.headline);

  if (!no_errors) return 0;
  return result.chat_user_id.data;
}

// V
insert_id DB_Queries_DML::insertMessage(Insert_Message& arg_struct, const size_t chat_user_id, const Message_t message) {
  
  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  /* Prepare data for execution */
  query.chat_user_id.data = chat_user_id;
  strncpy(query.message.data, message->getMessage().c_str(), string_size);
  query.message.length = strlen(query.message.data);

  /* Execute statement */
  no_errors &= execute(arg_struct);

  /* Verify affected rows */
  no_errors &= verify_affected_rows(arg_struct.stmt, 1, arg_struct.headline);

  if (!no_errors) return 0;
  return mysql_stmt_insert_id(arg_struct.stmt);
}

Message_t DB_Queries_DML::selectMessage(Select_Message& arg_struct, const size_t chat_id, const size_t message_id) {

  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  auto& timesend = arg_struct.Result_struct.timesend.data;
  no_errors no_errors{true};

  /* Prepare data for execution */
  query.chat_id.data = chat_id;
  query.message_id.data = message_id;

  /* Execute statement */
  no_errors &= execute(arg_struct);

  // Fetch all rows
  result.row_count = 0;
  std::cout << arg_struct.headline << " Fetching results ... " << std::endl;
  int status;
  while (true) {
    status = mysql_stmt_fetch(arg_struct.stmt);
    if (status == 1 || status == MYSQL_NO_DATA) break;
    result.row_count++;
  }
  no_errors &= (status != 1);

  // Check row count
  no_errors &= verify_fetched_rows(result.row_count, 1, arg_struct.headline);

  // Free result
  no_errors &= free_result_stmt(arg_struct.stmt, arg_struct.headline);

  if (!no_errors) return 0;
  return make_shared<Message>(Message(
      std::to_string(timesend.hour) + ':' + std::to_string(timesend.minute) +
          ':' + std::to_string(timesend.second) + ' ' +
          std::to_string(timesend.day) + '-' + std::to_string(timesend.month) +
          '-' + std::to_string(timesend.year),
      result.login.data, result.message.data));
}

queue_message_t DB_Queries_DML::select_Messages_Mult(Select_Messages_Mult& arg_struct, 
                                               const size_t chat_id,
                                               const size_t message_id_begin,
                                               const size_t message_id_end,
                                               const size_t message_status,
                                               const size_t limit) {

  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  auto& timesend = arg_struct.Result_struct.timesend.data;
  no_errors no_errors{true};

  /* Prepare data for execution */
  query.chat_id.data = chat_id;
  query.message_id_begin.data = message_id_begin;
  query.message_id_end.data = message_id_end;
  query.status.data = message_status;
  query.limit.data = limit;

/* Execute statement */
  no_errors &= execute(arg_struct);

  //Prepare result storage
  queue_message_t queue =
      std::make_shared<std::queue<Message>>(std::queue<Message>());

  // Fetch all rows
  result.row_count = 0;
  std::cout << arg_struct.headline << " Fetching results ... " << std::endl;
  int status;
  while (true) {
    status = mysql_stmt_fetch(arg_struct.stmt);
    if (status == 1 || status == MYSQL_NO_DATA) break;
    result.row_count++;

    queue->emplace(Message(std::to_string(timesend.hour) + ':' +
                               std::to_string(timesend.minute) + ':' +
                               std::to_string(timesend.second) + ' ' +
                               std::to_string(timesend.day) + '-' +
                               std::to_string(timesend.month) + '-' +
                               std::to_string(timesend.year),
                           result.login.data, result.message.data));
  }
  no_errors &= (status != 1);

  // Free result
  no_errors &= free_result_stmt(arg_struct.stmt, arg_struct.headline);

  if (!no_errors) return nullptr;
  return queue;
}

affected_rows DB_Queries_DML::updateStatusDelivered(
    Update_Status_Delivered& arg_struct, const size_t chat_user_id,
    const size_t message_id_begin, const size_t message_id_end) {
  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  /* Prepare data for execution */
  query.chat_user_id.data = chat_user_id;
  query.message_id_begin.data = message_id_begin;
  query.message_id_end.data = message_id_end;

  /* Execute statement */
  no_errors &= execute(arg_struct);

  if (!no_errors) return 0;
  return mysql_stmt_affected_rows(arg_struct.stmt);
}

affected_rows DB_Queries_DML::updateStatusRead(Update_Status_Read& arg_struct,
                                               const size_t chat_user_id,
                                               const size_t message_id_begin,
                                               const size_t message_id_end) {
  auto& query = arg_struct.Query_struct;
  auto& result = arg_struct.Result_struct;
  no_errors no_errors{true};

  /* Prepare data for execution */
  query.chat_user_id.data = chat_user_id;
  query.message_id_begin.data = message_id_begin;
  query.message_id_end.data = message_id_end;

  /* Execute statement */
  no_errors &= execute(arg_struct);

  if (!no_errors) return 0;
  return mysql_stmt_affected_rows(arg_struct.stmt);
}

no_errors DB_Queries_DML::prepareAll(void) {
  no_errors no_errors{true};
  no_errors &= prepare<Insert_User>(Insert_User_struct, mysql);
  no_errors &= prepare<Select_User_By_Id>(Select_User_By_Id_struct, mysql);
  no_errors &= prepare<Select_User_By_Login>(Select_User_By_Login_struct, mysql);
  no_errors &= prepare<Insert_Chat>(Insert_Chat_struct, mysql);
  no_errors &= prepare<Select_Chat_By_Name>(Select_Chat_By_Name_struct, mysql);
  no_errors &= prepare<Select_Chat_By_Id>(Select_Chat_By_Id_struct, mysql);
  no_errors &= prepare<Insert_Chat_User>(Insert_Chat_User_struct, mysql);
  no_errors &= prepare<Select_Chat_User>(Select_Chat_User_struct, mysql);
  no_errors &= prepare<Insert_Message>(Insert_Message_struct, mysql);
  no_errors &= prepare<Select_Message>(Select_Message_struct, mysql);
  no_errors &= prepare<Select_Messages_Mult>(Select_Messages_Mult_struct, mysql);
  no_errors &= prepare<Update_Status_Delivered>(Update_Status_Delivered_struct, mysql);
  no_errors &= prepare<Update_Status_Read>(Update_Status_Read_struct, mysql);

  return no_errors;

}

no_errors DB_Queries_DML::closeAll(void) {

  no_errors no_errors{true};
  no_errors &= close<Insert_User>(Insert_User_struct, mysql);
  no_errors &= close<Select_User_By_Id>(Select_User_By_Id_struct, mysql);
  no_errors &= close<Select_User_By_Login>(Select_User_By_Login_struct, mysql);
  no_errors &= close<Insert_Chat>(Insert_Chat_struct, mysql);
  no_errors &= close<Select_Chat_By_Name>(Select_Chat_By_Name_struct, mysql);
  no_errors &= close<Select_Chat_By_Id>(Select_Chat_By_Id_struct, mysql);
  no_errors &= close<Insert_Chat_User>(Insert_Chat_User_struct, mysql);
  no_errors &= close<Select_Chat_User>(Select_Chat_User_struct, mysql);
  no_errors &= close<Insert_Message>(Insert_Message_struct, mysql);
  no_errors &= close<Select_Message>(Select_Message_struct, mysql);
  no_errors &= close<Select_Messages_Mult>(Select_Messages_Mult_struct, mysql);
  no_errors &= close<Update_Status_Delivered>(Update_Status_Delivered_struct, mysql);
  no_errors &= close<Update_Status_Read>(Update_Status_Read_struct, mysql);
  
  no_errors &= connectDB_close();
  return no_errors;
}
