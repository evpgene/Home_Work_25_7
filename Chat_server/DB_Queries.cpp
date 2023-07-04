#include "DB_Queries.h"

DB_Queries::DB_Queries(/* args */) {}

DB_Queries::~DB_Queries() {}

void DB_Queries::connectDB_open(void) {
  // Получаем дескриптор соединения
  mysql_init(mysql);
  if (mysql == nullptr) {
    // Если дескриптор не получен — выводим сообщение об ошибке
    std::cout << "Error: can't create MySQL-descriptor" << std::endl;
  }

  // Подключаемся к серверу
  if (!mysql_real_connect(mysql, "localhost", "root", "Root123_Root123",
                          "chat_db", NULL, NULL, 0)) {
    // Если нет возможности установить соединение с БД выводим сообщение об
    // ошибке
    std::cout << "Error: can't connect to database " << mysql_error(mysql)
              << std::endl;
  } else {
    // Если соединение успешно установлено выводим фразу — "Success!"
    std::cout << "Success!" << std::endl;
  }

  mysql_set_character_set(mysql, "utf8");
  // Смотрим изменилась ли кодировка на нужную, по умолчанию идёт latin1
  std::cout << "connection characterset: " << mysql_character_set_name(mysql)
            << std::endl;
}

void DB_Queries::connectDB_close(void) {
  // Закрываем соединение с сервером базы данных
  mysql_close(mysql);
}

void DB_Queries::insertUser_prepare(void) {
  Insert_User.Query.stmt = mysql_stmt_init(mysql);
  if (!Insert_User.Query.stmt) {
    fprintf(stderr, " mysql_stmt_init(), out of memory\n");
    return;
  }

  if (mysql_stmt_prepare(Insert_User.Query.stmt, INSERT_USER,
                         strlen(INSERT_USER))) {
    fprintf(stderr, " mysql_stmt_prepare(), INSERT failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_User.Query.stmt));
    return;
  }
  fprintf(stdout, " prepare, INSERT successful\n");

  /* Get the parameter count from the statement */
  Insert_User.Query.param_count =
      mysql_stmt_param_count(Insert_User.Query.stmt);
  fprintf(stdout, " total parameters in INSERT: %d\n",
          Insert_User.Query.param_count);

  if (Insert_User.Query.param_count != 2) /* validate parameter count */
  {
    fprintf(stderr, " invalid parameter count returned by MySQL\n");
    return;
  }

  /* Bind the data for all 2 parameters */
  memset(Insert_User.Query.bind, 0, sizeof(Insert_User.Query.bind));

  /* Login */
  Insert_User.Query.bind[0].buffer_type = MYSQL_TYPE_STRING;
  Insert_User.Query.bind[0].buffer = (char *)Insert_User.Query.Login.str_data;
  Insert_User.Query.bind[0].buffer_length = STRING_SIZE;
  Insert_User.Query.bind[0].is_null = 0;
  Insert_User.Query.bind[0].length = &Insert_User.Query.Login.str_length;

  /* pass */
  Insert_User.Query.bind[1].buffer_type = MYSQL_TYPE_STRING;
  Insert_User.Query.bind[1].buffer = (char *)Insert_User.Query.Pass.str_data;
  Insert_User.Query.bind[1].buffer_length = STRING_SIZE;
  Insert_User.Query.bind[1].is_null = 0;
  Insert_User.Query.bind[1].length = &Insert_User.Query.Pass.str_length;

  if (mysql_stmt_bind_param(Insert_User.Query.stmt, Insert_User.Query.bind)) {
    fprintf(stderr, " mysql_stmt_bind_param() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_User.Query.stmt));
    return;
  }
}

size_t DB_Queries::insertUser(const User_t user) {
  strncpy(Insert_User.Query.Login.str_data, user->getLogin().c_str(),
          STRING_SIZE);
  Insert_User.Query.Login.str_length = strlen(Insert_User.Query.Login.str_data);

  strncpy(Insert_User.Query.Pass.str_data, user->getPass().c_str(),
          STRING_SIZE);
  Insert_User.Query.Pass.str_length = strlen(Insert_User.Query.Pass.str_data);

  /* Execute the INSERT statement */
  if (mysql_stmt_execute(Insert_User.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_User.Query.stmt));
    return -1;
  }

  if (Insert_User.Query.affected_rows != 1) /* validate affected rows */
  {
    fprintf(stderr, " invalid affected rows by MySQL\n");
    return -1;
  } else {
    return mysql_insert_id(mysql);
  }
}

int DB_Queries::insertUser_close(void) {
  /* Close the statement */
  if (mysql_stmt_close(Insert_User.Query.stmt)) {
    /* mysql_stmt_close() invalidates stmt, so call          */
    /* mysql_error(mysql) rather than mysql_stmt_error(stmt) */
    fprintf(stderr, " failed while closing the statement\n");
    fprintf(stderr, " %s\n", mysql_error(mysql));
    return -1;
  }
  return 0;
}

void DB_Queries::selectUser_prepare(void) {
  Select_User.Query.stmt = mysql_stmt_init(mysql);
  if (!Select_User.Query.stmt) {
    fprintf(stderr, " mysql_stmt_init(), out of memory\n");
    return;
  }

  if (mysql_stmt_prepare(Select_User.Query.stmt, SELECT_USER,
                         strlen(SELECT_USER))) {
    fprintf(stderr, " mysql_stmt_prepare(), SELECT failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
    return;
  }
  fprintf(stdout, " prepare, SELECT successful\n");

  /* Get the parameter count from the statement */
  Select_User.Query.param_count =
      mysql_stmt_param_count(Select_User.Query.stmt);
  fprintf(stdout, " total parameters in SELECT: %d\n",
          Select_User.Query.param_count);

  if (Select_User.Query.param_count != 1) /* validate parameter count */
  {
    fprintf(stderr, " invalid parameter count returned by MySQL\n");
    return;
  }
  /* Bind the data for all parameters */
  memset(Select_User.Query.bind, 0, sizeof(Select_User.Query.bind));

  /* INTEGER PARAM */
  Select_User.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Select_User.Query.bind[0].buffer = (char *)&Select_User.Query.int_data;
  Select_User.Query.bind[0].is_null = 0;
  Select_User.Query.bind[0].length = 0;

  if (mysql_stmt_bind_param(Select_User.Query.stmt, Select_User.Query.bind)) {
    fprintf(stderr, " mysql_stmt_bind_param() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
    return;
  }

  /* Bind the result buffers for all columns before fetching them */
  memset(Select_User.Result.bind, 0, sizeof(Select_User.Result.bind));

  /* INTEGER COLUMN */
  Select_User.Result.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Select_User.Result.bind[0].buffer = (char *)&Select_User.Result.int_data;
  Select_User.Result.bind[0].is_null = &Select_User.Result.is_null[0];
  Select_User.Result.bind[0].length = &Select_User.Result.length[0];
  Select_User.Result.bind[0].error = &Select_User.Result.error[0];

  /* STRING COLUMN */
  Select_User.Result.bind[1].buffer_type = MYSQL_TYPE_STRING;
  Select_User.Result.bind[1].buffer = (char *)Select_User.Result.Login.str_data;
  Select_User.Result.bind[1].buffer_length = STRING_SIZE;
  Select_User.Result.bind[1].is_null = &Select_User.Result.is_null[1];
  Select_User.Result.bind[1].length = &Select_User.Result.length[1];
  Select_User.Result.bind[1].error = &Select_User.Result.error[1];

  /* STRING COLUMN */
  Select_User.Result.bind[2].buffer_type = MYSQL_TYPE_STRING;
  Select_User.Result.bind[2].buffer = (char *)Select_User.Result.Pass.str_data;
  Select_User.Result.bind[2].buffer_length = STRING_SIZE;
  Select_User.Result.bind[2].is_null = &Select_User.Result.is_null[2];
  Select_User.Result.bind[2].length = &Select_User.Result.length[2];
  Select_User.Result.bind[2].error = &Select_User.Result.error[2];

  /* Fetch result set meta information */
  Select_User.Result.prepare_meta_result =
      mysql_stmt_result_metadata(Select_User.Query.stmt);
  if (!Select_User.Result.prepare_meta_result) {
    fprintf(stderr,
            " mysql_stmt_result_metadata(), \
           returned no meta information\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
    return;
  }

  /* Get total columns in the query */
  Select_User.Result.column_count =
      mysql_num_fields(Select_User.Result.prepare_meta_result);
  fprintf(stdout, " total columns in SELECT statement: %d\n",
          Select_User.Result.column_count);

  if (Select_User.Result.column_count != 3) /* validate column count */
  {
    fprintf(stderr, " invalid column count returned by MySQL\n");
    return;
  }

  /* Bind the result buffers */
  if (mysql_stmt_bind_result(Select_User.Query.stmt, Select_User.Result.bind)) {
    fprintf(stderr, " mysql_stmt_bind_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
    // return;
  }
}

User_t DB_Queries::selectUser(const int id) {
  Select_User.Query.int_data = id;

  //execute statement
  if (mysql_stmt_execute(Select_User.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
    return nullptr;
  }

  /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_User.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
    return nullptr;
  }

  /* Fetch all rows */
  Select_User.Result.row_count = 0;
  fprintf(stdout, "Fetching results ...\n");
  while (!mysql_stmt_fetch(Select_User.Query.stmt)) {
    Select_User.Result.row_count++;
  }
  
  //Check row count
  if (Select_User.Result.row_count != 1) {
    fprintf(stderr, " MySQL failed to return all rows\n");
    return nullptr;
  }

  User_t user = make_shared<User>(User{Select_User.Result.Login.str_data,
                                       Select_User.Result.Pass.str_data});

  return user;
}

void DB_Queries::selectUser_close(void) {
  /* Free the prepared result metadata */
  mysql_free_result(Select_User.Result.prepare_meta_result);

  //Close statement
  if (mysql_stmt_close(Select_User.Query.stmt)) {
    /* mysql_stmt_close() invalidates stmt, so call          */
    /* mysql_error(mysql) rather than mysql_stmt_error(stmt) */
    fprintf(stderr, " failed while closing the statement\n");
    fprintf(stderr, " %s\n", mysql_error(mysql));
    return;
  }
}

void DB_Queries::insertChat_prepare(void) {
  Insert_Chat.Query.stmt = mysql_stmt_init(mysql);
  if (!Insert_Chat.Query.stmt) {
    fprintf(stderr, " mysql_stmt_init(), out of memory\n");
    return;
  }

  if (mysql_stmt_prepare(Insert_Chat.Query.stmt, INSERT_CHAT,
                         strlen(INSERT_CHAT))) {
    fprintf(stderr, " mysql_stmt_prepare(), INSERT failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Chat.Query.stmt));
    return;
  }
  fprintf(stdout, " prepare, INSERT successful\n");

  /* Get the parameter count from the statement */
  Insert_Chat.Query.param_count =
      mysql_stmt_param_count(Insert_Chat.Query.stmt);
  fprintf(stdout, " total parameters in INSERT: %d\n",
          Insert_Chat.Query.param_count);

  if (Insert_Chat.Query.param_count != 2) /* validate parameter count */
  {
    fprintf(stderr, " invalid parameter count returned by MySQL\n");
    return;
  }

  /* Bind the data for all 2 parameters */
  memset(Insert_Chat.Query.bind, 0, sizeof(Insert_Chat.Query.bind));

  /* Login */
  Insert_Chat.Query.bind[0].buffer_type = MYSQL_TYPE_STRING;
  Insert_Chat.Query.bind[0].buffer = (char *)Insert_Chat.Query.Name.str_data;
  Insert_Chat.Query.bind[0].buffer_length = STRING_SIZE;
  Insert_Chat.Query.bind[0].is_null = 0;
  Insert_Chat.Query.bind[0].length = &Insert_Chat.Query.Name.str_length;

  if (mysql_stmt_bind_param(Insert_Chat.Query.stmt, Insert_Chat.Query.bind)) {
    fprintf(stderr, " mysql_stmt_bind_param() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Chat.Query.stmt));
    return;
  }
}

size_t DB_Queries::insertChat(const Chat_t chat) {
  strncpy(Insert_Chat.Query.Name.str_data, chat->getChatName().c_str(),
          STRING_SIZE);
  Insert_Chat.Query.Name.str_length = strlen(Insert_Chat.Query.Name.str_data);

  /* Execute the INSERT statement */
  if (mysql_stmt_execute(Insert_Chat.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Chat.Query.stmt));
    return -1;
  }

  if (Insert_Chat.Query.affected_rows != 1) /* validate affected rows */
  {
    fprintf(stderr, " invalid affected rows by MySQL\n");
    return -1;
  } else {
    return mysql_insert_id(mysql);
  }
}

int DB_Queries::insertChat_close(void) {
  /* Close the statement */
  if (mysql_stmt_close(Insert_Chat.Query.stmt)) {
    /* mysql_stmt_close() invalidates stmt, so call          */
    /* mysql_error(mysql) rather than mysql_stmt_error(stmt) */
    fprintf(stderr, " failed while closing the statement\n");
    fprintf(stderr, " %s\n", mysql_error(mysql));
    return -1;
  }
  return 0;
}

void DB_Queries::selectChat_prepare(void) {
  Select_Chat.Query.stmt = mysql_stmt_init(mysql);
  if (!Select_Chat.Query.stmt) {
    fprintf(stderr, " mysql_stmt_init(), out of memory\n");
    return;
  }

  if (mysql_stmt_prepare(Select_Chat.Query.stmt, SELECT_CHAT,
                         strlen(SELECT_CHAT))) {
    fprintf(stderr, " mysql_stmt_prepare(), SELECT failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
    return;
  }
  fprintf(stdout, " prepare, SELECT successful\n");

  /* Get the parameter count from the statement */
  Select_Chat.Query.param_count =
      mysql_stmt_param_count(Select_Chat.Query.stmt);
  fprintf(stdout, " total parameters in SELECT: %d\n",
          Select_Chat.Query.param_count);

  if (Select_Chat.Query.param_count != 1) /* validate parameter count */
  {
    fprintf(stderr, " invalid parameter count returned by MySQL\n");
    return;
  }
  /* Bind the data for all parameters */
  memset(Select_Chat.Query.bind, 0, sizeof(Select_Chat.Query.bind));

  /* INTEGER PARAM */
  Select_Chat.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Select_Chat.Query.bind[0].buffer = (char *)&Select_Chat.Query.int_data;
  Select_Chat.Query.bind[0].is_null = 0;
  Select_Chat.Query.bind[0].length = 0;

  if (mysql_stmt_bind_param(Select_Chat.Query.stmt, Select_Chat.Query.bind)) {
    fprintf(stderr, " mysql_stmt_bind_param() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
    return;
  }

  /* Bind the result buffers for all columns before fetching them */
  memset(Select_Chat.Result.bind, 0, sizeof(Select_Chat.Result.bind));

  /* INTEGER COLUMN */
  Select_Chat.Result.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Select_Chat.Result.bind[0].buffer = (char *)&Select_Chat.Result.int_data;
  Select_Chat.Result.bind[0].is_null = &Select_Chat.Result.is_null[0];
  Select_Chat.Result.bind[0].length = &Select_Chat.Result.length[0];
  Select_Chat.Result.bind[0].error = &Select_Chat.Result.error[0];

  /* STRING COLUMN */
  Select_Chat.Result.bind[1].buffer_type = MYSQL_TYPE_STRING;
  Select_Chat.Result.bind[1].buffer = (char *)Select_Chat.Result.Name.str_data;
  Select_Chat.Result.bind[1].buffer_length = STRING_SIZE;
  Select_Chat.Result.bind[1].is_null = &Select_Chat.Result.is_null[1];
  Select_Chat.Result.bind[1].length = &Select_Chat.Result.length[1];
  Select_Chat.Result.bind[1].error = &Select_Chat.Result.error[1];

  /* Fetch result set meta information */
  Select_Chat.Result.prepare_meta_result =
      mysql_stmt_result_metadata(Select_Chat.Query.stmt);
  if (!Select_Chat.Result.prepare_meta_result) {
    fprintf(stderr,
            " mysql_stmt_result_metadata(), \
           returned no meta information\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
    return;
  }

  /* Get total columns in the query */
  Select_Chat.Result.column_count =
      mysql_num_fields(Select_Chat.Result.prepare_meta_result);
  fprintf(stdout, " total columns in SELECT statement: %d\n",
          Select_Chat.Result.column_count);

  if (Select_Chat.Result.column_count != 2) /* validate column count */
  {
    fprintf(stderr, " invalid column count returned by MySQL\n");
    return;
  }

  /* Bind the result buffers */
  if (mysql_stmt_bind_result(Select_Chat.Query.stmt, Select_Chat.Result.bind)) {
    fprintf(stderr, " mysql_stmt_bind_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
    // return;
  }
}

Chat_t DB_Queries::selectChat(const int id) {
  Select_Chat.Query.int_data = id;

  //execute statement
  if (mysql_stmt_execute(Select_Chat.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
    return nullptr;
  }

  /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_Chat.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
    return nullptr;
  }

  /* Fetch all rows */
  Select_Chat.Result.row_count = 0;
  fprintf(stdout, "Fetching results ...\n");
  while (!mysql_stmt_fetch(Select_Chat.Query.stmt)) {
    Select_Chat.Result.row_count++;
  }
  
  //Check row count
  if (Select_Chat.Result.row_count != 1) {
    fprintf(stderr, " MySQL failed to return all rows\n");
    return nullptr;
  }

  Chat_t chat = make_shared<Chat>(Chat{Select_Chat.Result.Name.str_data});

  return chat;
}

void DB_Queries::selectChat_close(void) {
    /* Free the prepared result metadata */
  mysql_free_result(Select_Chat.Result.prepare_meta_result);

  //Close statement
  if (mysql_stmt_close(Select_Chat.Query.stmt)) {
    /* mysql_stmt_close() invalidates stmt, so call          */
    /* mysql_error(mysql) rather than mysql_stmt_error(stmt) */
    fprintf(stderr, " failed while closing the statement\n");
    fprintf(stderr, " %s\n", mysql_error(mysql));
    return;
  }
}

void DB_Queries::insertChatUser_prepare(void) {
  Insert_ChatUser.Query.stmt = mysql_stmt_init(mysql);
  if (!Insert_ChatUser.Query.stmt) {
    fprintf(stderr, " mysql_stmt_init(), out of memory\n");
    return;
  }

  if (mysql_stmt_prepare(Insert_ChatUser.Query.stmt, INSERT_CHAT_USER,
                         strlen(INSERT_CHAT_USER))) {
    fprintf(stderr, " mysql_stmt_prepare(), INSERT_CHAT_USER failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_ChatUser.Query.stmt));
    return;
  }
  fprintf(stdout, " prepare, INSERT_CHAT_USER successful\n");

  /* Get the parameter count from the statement */
  Insert_ChatUser.Query.param_count =
      mysql_stmt_param_count(Insert_ChatUser.Query.stmt);
  fprintf(stdout, " total parameters in INSERT_CHAT_USER: %d\n",
          Insert_ChatUser.Query.param_count);

  if (Insert_ChatUser.Query.param_count != 3) /* validate parameter count */
  {
    fprintf(stderr, " invalid parameter count returned by MySQL\n");
    return;
  }

  /* Bind the data for all 2 parameters */
  memset(Insert_ChatUser.Query.bind, 0, sizeof(Insert_ChatUser.Query.bind));

  /* chat_id */
  Insert_ChatUser.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Insert_ChatUser.Query.bind[0].buffer = (char *)&Insert_ChatUser.Query.chat_id.int_data;
  Insert_ChatUser.Query.bind[0].is_null = 0;
  Insert_ChatUser.Query.bind[0].length = 0;

  /* user_id */
  Insert_ChatUser.Query.bind[1].buffer_type = MYSQL_TYPE_LONG;
  Insert_ChatUser.Query.bind[1].buffer = (char *)&Insert_ChatUser.Query.user_id.int_data;
  Insert_ChatUser.Query.bind[1].is_null = 0;
  Insert_ChatUser.Query.bind[1].length = 0;

  if (mysql_stmt_bind_param(Insert_ChatUser.Query.stmt, Insert_ChatUser.Query.bind)) {
    fprintf(stderr, " mysql_stmt_bind_param() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_ChatUser.Query.stmt));
    return;
  }
}

size_t DB_Queries::insertChatUser(const int chat_id, const int user_id) {
  Insert_ChatUser.Query.chat_id.int_data = chat_id;
  Insert_ChatUser.Query.user_id.int_data = user_id;

  /* Execute the INSERT statement */
  if (mysql_stmt_execute(Insert_ChatUser.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_ChatUser.Query.stmt));
    return -1;
  }

  if (Insert_ChatUser.Query.affected_rows != 1) /* validate affected rows */
  {
    fprintf(stderr, " invalid affected rows by MySQL\n");
    return -1;
  } else {
    return mysql_insert_id(mysql);
  }
}

int DB_Queries::insertChatUser_close(void) {
  /* Close the statement */
  if (mysql_stmt_close(Insert_ChatUser.Query.stmt)) {
    fprintf(stderr, " failed while closing the statement\n");
    fprintf(stderr, " %s\n", mysql_error(mysql));
    return -1;
  }
  return 0;
}

void DB_Queries::selectChatUser_prepare(void) {
  Select_ChatUser.Query.stmt = mysql_stmt_init(mysql);
  if (!Select_ChatUser.Query.stmt) {
    fprintf(stderr, " mysql_stmt_init(), out of memory\n");
    return;
  }

  if (mysql_stmt_prepare(Select_ChatUser.Query.stmt, SELECT_CHAT_USER,
                         strlen(SELECT_CHAT_USER))) {
    fprintf(stderr, " mysql_stmt_prepare(), SELECT failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
    return;
  }
  fprintf(stdout, " prepare, SELECT successful\n");

  /* Get the parameter count from the statement */
  Select_ChatUser.Query.param_count =
      mysql_stmt_param_count(Select_ChatUser.Query.stmt);
  fprintf(stdout, " total parameters in SELECT: %d\n",
          Select_ChatUser.Query.param_count);

  if (Select_ChatUser.Query.param_count != 2) /* validate parameter count */
  {
    fprintf(stderr, " invalid parameter count returned by MySQL\n");
    return;
  }
  /* Bind the data for all parameters */
  memset(Select_ChatUser.Query.bind, 0, sizeof(Select_ChatUser.Query.bind));

  /* INTEGER PARAM */
  Select_ChatUser.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Select_ChatUser.Query.bind[0].buffer = (char *)&Select_ChatUser.Query.chat_id.int_data;
  Select_ChatUser.Query.bind[0].is_null = 0;
  Select_ChatUser.Query.bind[0].length = 0;

  /* INTEGER PARAM */
  Select_ChatUser.Query.bind[1].buffer_type = MYSQL_TYPE_LONG;
  Select_ChatUser.Query.bind[1].buffer = (char *)&Select_ChatUser.Query.user_id.int_data;
  Select_ChatUser.Query.bind[1].is_null = 0;
  Select_ChatUser.Query.bind[1].length = 0;

  if (mysql_stmt_bind_param(Select_ChatUser.Query.stmt, Select_ChatUser.Query.bind)) {
    fprintf(stderr, " mysql_stmt_bind_param() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
    return;
  }

  /* Bind the result buffers for all columns before fetching them */
  memset(Select_ChatUser.Result.bind, 0, sizeof(Select_ChatUser.Result.bind));

  /* INTEGER COLUMN */
  Select_ChatUser.Result.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Select_ChatUser.Result.bind[0].buffer = (char *)&Select_ChatUser.Result.chat_user_id.int_data;
  Select_ChatUser.Result.bind[0].is_null = &Select_ChatUser.Result.is_null[0];
  Select_ChatUser.Result.bind[0].length = &Select_ChatUser.Result.length[0];
  Select_ChatUser.Result.bind[0].error = &Select_ChatUser.Result.error[0];

  // /* INTEGER COLUMN */
  // Select_ChatUser.Result.bind[1].buffer_type = MYSQL_TYPE_LONG;
  // Select_ChatUser.Result.bind[1].buffer = (char *)&Select_ChatUser.Result.user_id;
  // Select_ChatUser.Result.bind[1].is_null = &Select_ChatUser.Result.is_null[1];
  // Select_ChatUser.Result.bind[1].length = &Select_ChatUser.Result.length[1];
  // Select_ChatUser.Result.bind[1].error = &Select_ChatUser.Result.error[1];

  /* Fetch result set meta information */
  Select_ChatUser.Result.prepare_meta_result =
      mysql_stmt_result_metadata(Select_ChatUser.Query.stmt);
  if (!Select_ChatUser.Result.prepare_meta_result) {
    fprintf(stderr,
            " mysql_stmt_result_metadata(), \
           returned no meta information\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
    return;
  }

  /* Get total columns in the query */
  Select_ChatUser.Result.column_count =
      mysql_num_fields(Select_ChatUser.Result.prepare_meta_result);
  fprintf(stdout, " total columns in SELECT statement: %d\n",
          Select_ChatUser.Result.column_count);

  if (Select_ChatUser.Result.column_count != 1) /* validate column count */
  {
    fprintf(stderr, " invalid column count returned by MySQL\n");
    return;
  }

  /* Bind the result buffers */
  if (mysql_stmt_bind_result(Select_ChatUser.Query.stmt, Select_ChatUser.Result.bind)) {
    fprintf(stderr, " mysql_stmt_bind_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
    // return;
  }
}

 size_t DB_Queries::selectChatUser(const int chat_id, const int user_id) {
  Select_ChatUser.Query.chat_id.int_data = chat_id;
  Select_ChatUser.Query.user_id.int_data = user_id;
  //execute statement
  if (mysql_stmt_execute(Select_ChatUser.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
    return 0;
  }

  /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_ChatUser.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
    return 0;
  }

  /* Fetch all rows */
  Select_ChatUser.Result.row_count = 0;
  fprintf(stdout, "Fetching results ...\n");
  while (!mysql_stmt_fetch(Select_ChatUser.Query.stmt)) {
    Select_ChatUser.Result.row_count++;
  }
  
  //Check row count
  if (Select_ChatUser.Result.row_count != 1) {
    fprintf(stderr, " MySQL failed to return all rows\n");
    return 0;
  }

  return Select_ChatUser.Result.chat_user_id.int_data;
}

void DB_Queries::selectChatUser_close(void) {
      /* Free the prepared result metadata */
  mysql_free_result(Select_ChatUser.Result.prepare_meta_result);

  //Close statement
  if (mysql_stmt_close(Select_ChatUser.Query.stmt)) {
    fprintf(stderr, " failed while closing the statement\n");
    fprintf(stderr, " %s\n", mysql_error(mysql));
    return;
  }
}





















void DB_Queries::insertMessage_prepare(void) {
  Insert_Message.Query.stmt = mysql_stmt_init(mysql);
  if (!Insert_Message.Query.stmt) {
    fprintf(stderr, " mysql_stmt_init(), out of memory\n");
    return;
  }

  if (mysql_stmt_prepare(Insert_Message.Query.stmt, INSERT_MESSAGE,
                         strlen(INSERT_MESSAGE))) {
    fprintf(stderr, " mysql_stmt_prepare(), INSERT_MESSAGE failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Message.Query.stmt));
    return;
  }
  fprintf(stdout, " prepare, INSERT_MESSAGE successful\n");

  /* Get the parameter count from the statement */
  Insert_Message.Query.param_count =
      mysql_stmt_param_count(Insert_Message.Query.stmt);
  fprintf(stdout, " total parameters in INSERT_MESSAGE: %d\n",
          Insert_Message.Query.param_count);

  if (Insert_Message.Query.param_count != 2) /* validate parameter count */
  {
    fprintf(stderr, " invalid parameter count returned by MySQL\n");
    return;
  }

  /* Bind the data for all 2 parameters */
  memset(Insert_Message.Query.bind, 0, sizeof(Insert_Message.Query.bind));


  /* INTEGER PARAM */
  Insert_Message.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Insert_Message.Query.bind[0].buffer = (char *)&Insert_Message.Query.chat_user_id.int_data;
  Insert_Message.Query.bind[0].is_null = 0;
  Insert_Message.Query.bind[0].length = 0;

  /* Login */
  Insert_Message.Query.bind[1].buffer_type = MYSQL_TYPE_STRING;
  Insert_Message.Query.bind[1].buffer = (char *)Insert_Message.Query.message.str_data;
  Insert_Message.Query.bind[1].buffer_length = STRING_SIZE;
  Insert_Message.Query.bind[1].is_null = 0;
  Insert_Message.Query.bind[1].length = &Insert_Message.Query.message.str_length;


  if (mysql_stmt_bind_param(Insert_Message.Query.stmt, Insert_Message.Query.bind)) {
    fprintf(stderr, " mysql_stmt_bind_param() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Message.Query.stmt));
    return;
  }
}

size_t DB_Queries::insertMessage(const int chat_user_id, const Message_t message) {
  Insert_Message.Query.chat_user_id.int_data = chat_user_id;

  strncpy(Insert_Message.Query.message.str_data, message->getMessage().c_str(),
          STRING_SIZE);
  Insert_Message.Query.message.str_length = strlen(Insert_Message.Query.message.str_data);

  /* Execute the INSERT statement */
  if (mysql_stmt_execute(Insert_Message.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Message.Query.stmt));
    return -1;
  }

  if (Insert_Message.Query.affected_rows != 1) /* validate affected rows */
  {
    fprintf(stderr, " invalid affected rows by MySQL\n");
    return -1;
  } else {
    return mysql_insert_id(mysql);
  }
}

int DB_Queries::insertMessage_close(void) {
  /* Close the statement */
  if (mysql_stmt_close(Insert_Message.Query.stmt)) {
    fprintf(stderr, " failed while closing the statement\n");
    fprintf(stderr, " %s\n", mysql_error(mysql));
    return -1;
  }
  return 0;
}

void DB_Queries::selectMessage_prepare(void) {
  Select_Message.Query.stmt = mysql_stmt_init(mysql);
  if (!Select_Message.Query.stmt) {
    fprintf(stderr, " mysql_stmt_init(), out of memory\n");
    return;
  }

  if (mysql_stmt_prepare(Select_Message.Query.stmt, SELECT_MESSAGE,
                         strlen(SELECT_MESSAGE))) {
    fprintf(stderr, " mysql_stmt_prepare(), SELECT_MESSAGE failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
    return;
  }
  fprintf(stdout, " prepare, SELECT_MESSAGE successful\n");

  /* Get the parameter count from the statement */
  Select_Message.Query.param_count =
      mysql_stmt_param_count(Select_Message.Query.stmt);
  fprintf(stdout, " total parameters in SELECT_MESSAGE: %d\n",
          Select_Message.Query.param_count);

  if (Select_Message.Query.param_count != 2) /* validate parameter count */
  {
    fprintf(stderr, " invalid parameter count returned by MySQL\n");
    return;
  }
  /* Bind the data for all parameters */
  memset(Select_Message.Query.bind, 0, sizeof(Select_Message.Query.bind));

  /* INTEGER PARAM */ /* chat_id */
  Select_Message.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Select_Message.Query.bind[0].buffer = (char *)&Select_Message.Query.chat_id.int_data;
  Select_Message.Query.bind[0].is_null = 0;
  Select_Message.Query.bind[0].length = 0;

    /* INTEGER PARAM */ /* message_id */
  Select_Message.Query.bind[1].buffer_type = MYSQL_TYPE_LONG;
  Select_Message.Query.bind[1].buffer = (char *)&Select_Message.Query.message_id.int_data;
  Select_Message.Query.bind[1].is_null = 0;
  Select_Message.Query.bind[1].length = 0;

  if (mysql_stmt_bind_param(Select_Message.Query.stmt, Select_Message.Query.bind)) {
    fprintf(stderr, " mysql_stmt_bind_param() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
    return;
  }

  /* Bind the result buffers for all columns before fetching them */
  memset(Select_Message.Result.bind, 0, sizeof(Select_Message.Result.bind));

  /* INTEGER COLUMN */ /* chat_id */
  Select_Message.Result.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Select_Message.Result.bind[0].buffer = (char *)&Select_Message.Result.chat_id.int_data;
  Select_Message.Result.bind[0].is_null = &Select_Message.Result.is_null[0];
  Select_Message.Result.bind[0].length = &Select_Message.Result.length[0];
  Select_Message.Result.bind[0].error = &Select_Message.Result.error[0];

  /* INTEGER COLUMN */ /* user_id */
  Select_Message.Result.bind[1].buffer_type = MYSQL_TYPE_LONG;
  Select_Message.Result.bind[1].buffer = (char *)&Select_Message.Result.user_id.int_data;
  Select_Message.Result.bind[1].is_null = &Select_Message.Result.is_null[1];
  Select_Message.Result.bind[1].length = &Select_Message.Result.length[1];
  Select_Message.Result.bind[1].error = &Select_Message.Result.error[1];

    /* INTEGER COLUMN */ /* message_id */
  Select_Message.Result.bind[2].buffer_type = MYSQL_TYPE_LONG;
  Select_Message.Result.bind[2].buffer = (char *)&Select_Message.Result.message_id.int_data;
  Select_Message.Result.bind[2].is_null = &Select_Message.Result.is_null[2];
  Select_Message.Result.bind[2].length = &Select_Message.Result.length[2];
  Select_Message.Result.bind[2].error = &Select_Message.Result.error[2];

    /* DATEIME COLUMN */ /* dt */
  Select_Message.Result.bind[3].buffer_type = MYSQL_TYPE_DATETIME;
  Select_Message.Result.bind[3].buffer = (char *)&Select_Message.Result.dt;
  Select_Message.Result.bind[3].is_null = &Select_Message.Result.is_null[3];
  Select_Message.Result.bind[3].length = &Select_Message.Result.length[3];
  Select_Message.Result.bind[3].error = &Select_Message.Result.error[3];

  /* STRING COLUMN */ /* login */
  Select_Message.Result.bind[4].buffer_type = MYSQL_TYPE_STRING;
  Select_Message.Result.bind[4].buffer = (char *)Select_Message.Result.login.str_data;
  Select_Message.Result.bind[4].buffer_length = STRING_SIZE;
  Select_Message.Result.bind[4].is_null = &Select_Message.Result.is_null[4];
  Select_Message.Result.bind[4].length = &Select_Message.Result.length[4];
  Select_Message.Result.bind[4].error = &Select_Message.Result.error[4];

  /* STRING COLUMN */ /* message */
  Select_Message.Result.bind[5].buffer_type = MYSQL_TYPE_STRING;
  Select_Message.Result.bind[5].buffer = (char *)Select_Message.Result.message.str_data;
  Select_Message.Result.bind[5].buffer_length = STRING_SIZE;
  Select_Message.Result.bind[5].is_null = &Select_Message.Result.is_null[5];
  Select_Message.Result.bind[5].length = &Select_Message.Result.length[5];
  Select_Message.Result.bind[5].error = &Select_Message.Result.error[5];

  /* Fetch result set meta information */
  Select_Message.Result.prepare_meta_result =
      mysql_stmt_result_metadata(Select_Message.Query.stmt);
  if (!Select_Message.Result.prepare_meta_result) {
    fprintf(stderr,
            " mysql_stmt_result_metadata(), \
           returned no meta information\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
    return;
  }

  /* Get total columns in the query */
  Select_Message.Result.column_count =
      mysql_num_fields(Select_Message.Result.prepare_meta_result);
  fprintf(stdout, " total columns in SELECT statement: %d\n",
          Select_Message.Result.column_count);

  if (Select_Message.Result.column_count != 6) /* validate column count */
  {
    fprintf(stderr, " invalid column count returned by MySQL\n");
    return;
  }

  /* Bind the result buffers */
  if (mysql_stmt_bind_result(Select_Message.Query.stmt, Select_Message.Result.bind)) {
    fprintf(stderr, " mysql_stmt_bind_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
    // return;
  }
}

Message_t DB_Queries::selectMessage(const int chat_id, const int message_id) {
  Select_Message.Query.chat_id.int_data = chat_id;
  Select_Message.Query.message_id.int_data = message_id;

  //execute statement
  if (mysql_stmt_execute(Select_Message.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
    return nullptr;
  }

  /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_Message.Query.stmt)) {
    fprintf(stderr, " mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
    return nullptr;
  }

  /* Fetch all rows */
  Select_Message.Result.row_count = 0;
  fprintf(stdout, "Fetching results ...\n");
  while (!mysql_stmt_fetch(Select_Message.Query.stmt)) {
    Select_Message.Result.row_count++;
  }
  
  //Check row count
  if (Select_Message.Result.row_count != 1) {
    fprintf(stderr, " MySQL failed to return all rows\n");
    return nullptr;
  }

  return make_shared<Message>(
      Message(std::to_string(Select_Message.Result.dt.hour) + ':' +
                  std::to_string(Select_Message.Result.dt.minute) + ':' +
                  std::to_string(Select_Message.Result.dt.second) + ' ' +
                  std::to_string(Select_Message.Result.dt.day) + '-' +
                  std::to_string(Select_Message.Result.dt.month) + '-' +
                  std::to_string(Select_Message.Result.dt.year),
              Select_Message.Result.login.str_data,
              Select_Message.Result.message.str_data));
}

void DB_Queries::selectMessage_close(void) {
  /* Free the prepared result metadata */
  mysql_free_result(Select_Message.Result.prepare_meta_result);

  //Close statement
  if (mysql_stmt_close(Select_Message.Query.stmt)) {
    /* mysql_stmt_close() invalidates stmt, so call          */
    /* mysql_error(mysql) rather than mysql_stmt_error(stmt) */
    fprintf(stderr, " failed while closing the statement\n");
    fprintf(stderr, " %s\n", mysql_error(mysql));
    return;
  }
}


