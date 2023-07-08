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

   no_errors DB_Queries_DML::insertUser_prepare(void) {
    Insert_User.Query.stmt = mysql_stmt_init(mysql);
    if (!Insert_User.Query.stmt) {
      fprintf(stderr, " INSERT_USER mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Insert_User.Query.stmt, INSERT_USER,
                          strlen(INSERT_USER))) {
      fprintf(stderr, " mysql_stmt_prepare(), INSERT_USER failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_User.Query.stmt));
      return false;
    }
    fprintf(stdout, " prepare, INSERT_USER successful\n");

    /* Get the parameter count from the statement */
    Insert_User.Query.param_count =
        mysql_stmt_param_count(Insert_User.Query.stmt);
    fprintf(stdout, " total parameters in INSERT_USER: %d\n",
            Insert_User.Query.param_count);

    if (Insert_User.Query.param_count != 2) /* validate parameter count */
    {
      fprintf(stderr, " INSERT_USER invalid parameter count returned by MySQL\n");
      return false;
    }

    /* Bind the data for all parameters */
    memset(Insert_User.Query.bind, 0, sizeof(Insert_User.Query.bind));

    /* STRING PARAM */ /* Login */
    Insert_User.Query.bind[0].buffer_type = MYSQL_TYPE_STRING;
    Insert_User.Query.bind[0].buffer = (char *)Insert_User.Query.login.str_data;
    Insert_User.Query.bind[0].buffer_length = STRING_SIZE;
    Insert_User.Query.bind[0].is_null = 0;
    Insert_User.Query.bind[0].length = &Insert_User.Query.login.str_length;

    /* STRING PARAM */ /* pass */
    Insert_User.Query.bind[1].buffer_type = MYSQL_TYPE_STRING;
    Insert_User.Query.bind[1].buffer = (char *)Insert_User.Query.pass.str_data;
    Insert_User.Query.bind[1].buffer_length = STRING_SIZE;
    Insert_User.Query.bind[1].is_null = 0;
    Insert_User.Query.bind[1].length = &Insert_User.Query.pass.str_length;

    if (mysql_stmt_bind_param(Insert_User.Query.stmt, Insert_User.Query.bind)) {
      fprintf(stderr, " INSERT_USER mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_User.Query.stmt));
      return false;
    }
    return true;
  }

  insert_id DB_Queries_DML::insertUser(const User_t user) {
    strncpy(Insert_User.Query.login.str_data, user->getLogin().c_str(),
            STRING_SIZE);
    Insert_User.Query.login.str_length = strlen(Insert_User.Query.login.str_data);

    strncpy(Insert_User.Query.pass.str_data, user->getPass().c_str(),
            STRING_SIZE);
    Insert_User.Query.pass.str_length = strlen(Insert_User.Query.pass.str_data);

    /* Execute the INSERT statement */
    if (mysql_stmt_execute(Insert_User.Query.stmt)) {
      fprintf(stderr, " INSERT_USER mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_User.Query.stmt));
      return false;
    }

    if (Insert_User.Query.affected_rows != 1) /* validate affected rows */
    {
      fprintf(stderr, " INSERT_USER invalid affected rows by MySQL\n");
      return false;
    } else {
      return mysql_insert_id(mysql);
    }
  }

   no_errors DB_Queries_DML::insertUser_close(void) {
    if (mysql_stmt_close(Insert_User.Query.stmt)) {
      fprintf(stderr, " INSERT_USER failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::selectUser_prepare(void) {
    Select_User.Query.stmt = mysql_stmt_init(mysql);
    if (!Select_User.Query.stmt) {
      fprintf(stderr, " SELECT_USER mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Select_User.Query.stmt, SELECT_USER,
                          strlen(SELECT_USER))) {
      fprintf(stderr, " mysql_stmt_prepare(), SELECT_USER failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
      return false;
    }
    fprintf(stdout, " prepare, SELECT_USER successful\n");

    /* Get the parameter count from the statement */
    Select_User.Query.param_count =
        mysql_stmt_param_count(Select_User.Query.stmt);
    fprintf(stdout, " total parameters in SELECT_USER: %d\n",
            Select_User.Query.param_count);

    if (Select_User.Query.param_count != 1) /* validate parameter count */
    {
      fprintf(stderr, " SELECT_USER invalid parameter count returned by MySQL\n");
      return false;
    }
    /* Bind the data for all parameters */
    memset(Select_User.Query.bind, 0, sizeof(Select_User.Query.bind));

    /* INTEGER PARAM */
    Select_User.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Select_User.Query.bind[0].buffer = (char *)&Select_User.Query.int_data;
    Select_User.Query.bind[0].is_null = 0;
    Select_User.Query.bind[0].length = 0;

    if (mysql_stmt_bind_param(Select_User.Query.stmt, Select_User.Query.bind)) {
      fprintf(stderr, " SELECT_USER mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
      return false;
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
    Select_User.Result.bind[1].buffer = (char *)Select_User.Result.login.str_data;
    Select_User.Result.bind[1].buffer_length = STRING_SIZE;
    Select_User.Result.bind[1].is_null = &Select_User.Result.is_null[1];
    Select_User.Result.bind[1].length = &Select_User.Result.length[1];
    Select_User.Result.bind[1].error = &Select_User.Result.error[1];

    /* STRING COLUMN */
    Select_User.Result.bind[2].buffer_type = MYSQL_TYPE_STRING;
    Select_User.Result.bind[2].buffer = (char *)Select_User.Result.pass.str_data;
    Select_User.Result.bind[2].buffer_length = STRING_SIZE;
    Select_User.Result.bind[2].is_null = &Select_User.Result.is_null[2];
    Select_User.Result.bind[2].length = &Select_User.Result.length[2];
    Select_User.Result.bind[2].error = &Select_User.Result.error[2];

    /* Fetch result set meta information */
    Select_User.Result.prepare_meta_result =
        mysql_stmt_result_metadata(Select_User.Query.stmt);
    if (!Select_User.Result.prepare_meta_result) {
      fprintf(stderr,
              " SELECT_USER mysql_stmt_result_metadata(), \
            returned no meta information\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
      return false;
    }

    /* Get total columns in the query */
    Select_User.Result.column_count =
        mysql_num_fields(Select_User.Result.prepare_meta_result);
    fprintf(stdout, " SELECT_USER total columns in SELECT statement: %d\n",
            Select_User.Result.column_count);

    if (Select_User.Result.column_count != 3) /* validate column count */
    {
      fprintf(stderr, " SELECT_USER invalid column count returned by MySQL\n");
      return false;
    }

    /* Bind the result buffers */
    if (mysql_stmt_bind_result(Select_User.Query.stmt, Select_User.Result.bind)) {
      fprintf(stderr, " SELECT_USER mysql_stmt_bind_result() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
      return false;
    }
    return true;
  }

  User_t DB_Queries_DML::selectUser(const int id) {
    Select_User.Query.int_data = id;

    // execute statement
    if (mysql_stmt_execute(Select_User.Query.stmt)) {
      fprintf(stderr, " SELECT_USER mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
      return nullptr;
    }

    /* Now buffer all results to client (optional step) */
    if (mysql_stmt_store_result(Select_User.Query.stmt)) {
      fprintf(stderr, " SELECT_USER mysql_stmt_store_result() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_User.Query.stmt));
      return nullptr;
    }

    /* Fetch all rows */
    Select_User.Result.row_count = 0;
    fprintf(stdout, "SELECT_USER Fetching results ...\n");
    while (!mysql_stmt_fetch(Select_User.Query.stmt)) {
      Select_User.Result.row_count++;
    }

    // Check row count
    if (Select_User.Result.row_count != 1) {
      fprintf(stderr, " SELECT_USER MySQL failed to return all rows\n");
      return nullptr;
    }

    User_t user = make_shared<User>(User{Select_User.Result.login.str_data,
                                        Select_User.Result.pass.str_data});

    return user;
  }

   no_errors DB_Queries_DML::selectUser_close(void) {
    mysql_free_result(Select_User.Result.prepare_meta_result);
    if (mysql_stmt_close(Select_User.Query.stmt)) {
      fprintf(stderr, " SELECT_USER failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::insertChat_prepare(void) {
    Insert_Chat.Query.stmt = mysql_stmt_init(mysql);
    if (!Insert_Chat.Query.stmt) {
      fprintf(stderr, " INSERT_CHAT mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Insert_Chat.Query.stmt, INSERT_CHAT,
                          strlen(INSERT_CHAT))) {
      fprintf(stderr, " mysql_stmt_prepare(), INSERT_CHAT failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Chat.Query.stmt));
      return false;
    }
    fprintf(stdout, " prepare, INSERT_CHAT successful\n");

    /* Get the parameter count from the statement */
    Insert_Chat.Query.param_count =
        mysql_stmt_param_count(Insert_Chat.Query.stmt);
    fprintf(stdout, " total parameters in INSERT_CHAT: %d\n",
            Insert_Chat.Query.param_count);

    if (Insert_Chat.Query.param_count != 2) /* validate parameter count */
    {
      fprintf(stderr, " INSERT_CHAT invalid parameter count returned by MySQL\n");
      return false;
    }

    /* Bind the data for all parameters */
    memset(Insert_Chat.Query.bind, 0, sizeof(Insert_Chat.Query.bind));

    /* login */
    Insert_Chat.Query.bind[0].buffer_type = MYSQL_TYPE_STRING;
    Insert_Chat.Query.bind[0].buffer = (char *)Insert_Chat.Query.Name.str_data;
    Insert_Chat.Query.bind[0].buffer_length = STRING_SIZE;
    Insert_Chat.Query.bind[0].is_null = 0;
    Insert_Chat.Query.bind[0].length = &Insert_Chat.Query.Name.str_length;

    if (mysql_stmt_bind_param(Insert_Chat.Query.stmt, Insert_Chat.Query.bind)) {
      fprintf(stderr, " INSERT_CHAT mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Chat.Query.stmt));
      return false;
    }
    return true;
  }

  insert_id DB_Queries_DML::insertChat(const Chat_t chat) {
    strncpy(Insert_Chat.Query.Name.str_data, chat->getChatName().c_str(),
            STRING_SIZE);
    Insert_Chat.Query.Name.str_length = strlen(Insert_Chat.Query.Name.str_data);

    /* Execute the INSERT statement */
    if (mysql_stmt_execute(Insert_Chat.Query.stmt)) {
      fprintf(stderr, " INSERT_CHAT mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Chat.Query.stmt));
      return 0;
    }

    if (Insert_Chat.Query.affected_rows != 1) /* validate affected rows */
    {
      fprintf(stderr, " INSERT_CHAT invalid affected rows by MySQL\n");
      return 0;
    } 
      return mysql_insert_id(mysql);
  }

   no_errors DB_Queries_DML::insertChat_close(void) {
    if (mysql_stmt_close(Insert_Chat.Query.stmt)) {
      fprintf(stderr, " INSERT_CHAT failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::selectChat_prepare(void) {
    Select_Chat.Query.stmt = mysql_stmt_init(mysql);
    if (!Select_Chat.Query.stmt) {
      fprintf(stderr, " SELECT_CHAT mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Select_Chat.Query.stmt, SELECT_CHAT,
                          strlen(SELECT_CHAT))) {
      fprintf(stderr, " SELECT_CHAT mysql_stmt_prepare(), SELECT_CHAT failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
      return false;
    }
    fprintf(stdout, " SELECT_CHAT prepare, SELECT_CHAT successful\n");

    /* Get the parameter count from the statement */
    Select_Chat.Query.param_count =
        mysql_stmt_param_count(Select_Chat.Query.stmt);
    fprintf(stdout, " SELECT_CHAT total parameters in SELECT_CHAT: %d\n",
            Select_Chat.Query.param_count);

    if (Select_Chat.Query.param_count != 1) /* validate parameter count */
    {
      fprintf(stderr, " SELECT_CHAT invalid parameter count returned by MySQL\n");
      return false;
    }
    /* Bind the data for all parameters */
    memset(Select_Chat.Query.bind, 0, sizeof(Select_Chat.Query.bind));

    /* INTEGER PARAM */
    Select_Chat.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Select_Chat.Query.bind[0].buffer = (char *)&Select_Chat.Query.int_data;
    Select_Chat.Query.bind[0].is_null = 0;
    Select_Chat.Query.bind[0].length = 0;

    if (mysql_stmt_bind_param(Select_Chat.Query.stmt, Select_Chat.Query.bind)) {
      fprintf(stderr, " SELECT_CHAT mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
      return false;
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
              " SELECT_CHAT mysql_stmt_result_metadata(), \
            returned no meta information\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
      return false;
    }

    /* Get total columns in the query */
    Select_Chat.Result.column_count =
        mysql_num_fields(Select_Chat.Result.prepare_meta_result);
    fprintf(stdout, " SELECT_CHAT total columns in SELECT statement: %d\n",
            Select_Chat.Result.column_count);

    if (Select_Chat.Result.column_count != 2) /* validate column count */
    {
      fprintf(stderr, " SELECT_CHAT invalid column count returned by MySQL\n");
      return false;
    }

    /* Bind the result buffers */
    if (mysql_stmt_bind_result(Select_Chat.Query.stmt, Select_Chat.Result.bind)) {
      fprintf(stderr, " SELECT_CHAT mysql_stmt_bind_result() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
      return false;
    }
    return true;
  }

  Chat_t DB_Queries_DML::selectChat(const int id) {
    Select_Chat.Query.int_data = id;

    // execute statement
    if (mysql_stmt_execute(Select_Chat.Query.stmt)) {
      fprintf(stderr, " SELECT_CHAT mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
      return nullptr;
    }

    /* Now buffer all results to client (optional step) */
    if (mysql_stmt_store_result(Select_Chat.Query.stmt)) {
      fprintf(stderr, " SELECT_CHAT mysql_stmt_store_result() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Chat.Query.stmt));
      return nullptr;
    }

    /* Fetch all rows */
    Select_Chat.Result.row_count = 0;
    fprintf(stdout, "SELECT_CHAT Fetching results ...\n");
    while (!mysql_stmt_fetch(Select_Chat.Query.stmt)) {
      Select_Chat.Result.row_count++;
    }

    // Check row count
    if (Select_Chat.Result.row_count != 1) {
      fprintf(stderr, " SELECT_CHAT MySQL failed to return all rows\n");
      return nullptr;
    }

    return make_shared<Chat>(Chat{Select_Chat.Result.Name.str_data});
  }

   no_errors DB_Queries_DML::selectChat_close(void) {
    mysql_free_result(Select_Chat.Result.prepare_meta_result);
    if (mysql_stmt_close(Select_Chat.Query.stmt)) {
      fprintf(stderr, " SELECT_CHAT failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::insertChatUser_prepare(void) {
    Insert_ChatUser.Query.stmt = mysql_stmt_init(mysql);
    if (!Insert_ChatUser.Query.stmt) {
      fprintf(stderr, " INSERT_CHAT_USER mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Insert_ChatUser.Query.stmt, INSERT_CHAT_USER,
                          strlen(INSERT_CHAT_USER))) {
      fprintf(stderr, " mysql_stmt_prepare(), INSERT_CHAT_USER failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_ChatUser.Query.stmt));
      return false;
    }
    fprintf(stdout, " prepare, INSERT_CHAT_USER successful\n");

    /* Get the parameter count from the statement */
    Insert_ChatUser.Query.param_count =
        mysql_stmt_param_count(Insert_ChatUser.Query.stmt);
    fprintf(stdout, " total parameters in INSERT_CHAT_USER: %d\n",
            Insert_ChatUser.Query.param_count);

    if (Insert_ChatUser.Query.param_count != 3) /* validate parameter count */
    {
      fprintf(stderr,
              " INSERT_CHAT_USER invalid parameter count returned by MySQL\n");
      return false;
    }

    /* Bind the data for all parameters */
    memset(Insert_ChatUser.Query.bind, 0, sizeof(Insert_ChatUser.Query.bind));

    /* chat_id */
    Insert_ChatUser.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Insert_ChatUser.Query.bind[0].buffer =
        (char *)&Insert_ChatUser.Query.chat_id.int_data;
    Insert_ChatUser.Query.bind[0].is_null = 0;
    Insert_ChatUser.Query.bind[0].length = 0;

    /* user_id */
    Insert_ChatUser.Query.bind[1].buffer_type = MYSQL_TYPE_LONG;
    Insert_ChatUser.Query.bind[1].buffer =
        (char *)&Insert_ChatUser.Query.user_id.int_data;
    Insert_ChatUser.Query.bind[1].is_null = 0;
    Insert_ChatUser.Query.bind[1].length = 0;

    if (mysql_stmt_bind_param(Insert_ChatUser.Query.stmt,
                              Insert_ChatUser.Query.bind)) {
      fprintf(stderr, " INSERT_CHAT_USER mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_ChatUser.Query.stmt));
      return false;
    }
    return true;
  }

  insert_id DB_Queries_DML::insertChatUser(const int chat_id, const int user_id) {
    Insert_ChatUser.Query.chat_id.int_data = chat_id;
    Insert_ChatUser.Query.user_id.int_data = user_id;

    /* Execute the INSERT statement */
    if (mysql_stmt_execute(Insert_ChatUser.Query.stmt)) {
      fprintf(stderr, " INSERT_CHAT_USER mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_ChatUser.Query.stmt));
      return 0;
    }

    if (Insert_ChatUser.Query.affected_rows != 1) /* validate affected rows */
    {
      fprintf(stderr, " INSERT_CHAT_USER invalid affected rows by MySQL\n");
      return 0;
    }
    return mysql_insert_id(mysql);
  }

   no_errors DB_Queries_DML::insertChatUser_close(void) {
    if (mysql_stmt_close(Insert_ChatUser.Query.stmt)) {
      fprintf(stderr, " INSERT_CHAT_USER failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::selectChatUser_prepare(void) {
    Select_ChatUser.Query.stmt = mysql_stmt_init(mysql);
    if (!Select_ChatUser.Query.stmt) {
      fprintf(stderr, " SELECT_CHAT_USER mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Select_ChatUser.Query.stmt, SELECT_CHAT_USER,
                          strlen(SELECT_CHAT_USER))) {
      fprintf(stderr, " mysql_stmt_prepare(), SELECT_CHAT_USER failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
      return false;
    }
    fprintf(stdout, " prepare, SELECT_CHAT_USER successful\n");

    /* Get the parameter count from the statement */
    Select_ChatUser.Query.param_count =
        mysql_stmt_param_count(Select_ChatUser.Query.stmt);
    fprintf(stdout, " total parameters in SELECT_CHAT_USER: %d\n",
            Select_ChatUser.Query.param_count);

    if (Select_ChatUser.Query.param_count != 2) /* validate parameter count */
    {
      fprintf(stderr,
              " SELECT_CHAT_USER invalid parameter count returned by MySQL\n");
      return false;
    }
    /* Bind the data for all parameters */
    memset(Select_ChatUser.Query.bind, 0, sizeof(Select_ChatUser.Query.bind));

    /* INTEGER PARAM */
    Select_ChatUser.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Select_ChatUser.Query.bind[0].buffer =
        (char *)&Select_ChatUser.Query.chat_id.int_data;
    Select_ChatUser.Query.bind[0].is_null = 0;
    Select_ChatUser.Query.bind[0].length = 0;

    /* INTEGER PARAM */
    Select_ChatUser.Query.bind[1].buffer_type = MYSQL_TYPE_LONG;
    Select_ChatUser.Query.bind[1].buffer =
        (char *)&Select_ChatUser.Query.user_id.int_data;
    Select_ChatUser.Query.bind[1].is_null = 0;
    Select_ChatUser.Query.bind[1].length = 0;

    if (mysql_stmt_bind_param(Select_ChatUser.Query.stmt,
                              Select_ChatUser.Query.bind)) {
      fprintf(stderr, " SELECT_CHAT_USER mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
      return false;
    }

    /* Bind the result buffers for all columns before fetching them */
    memset(Select_ChatUser.Result.bind, 0, sizeof(Select_ChatUser.Result.bind));

    /* INTEGER COLUMN */
    Select_ChatUser.Result.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Select_ChatUser.Result.bind[0].buffer =
        (char *)&Select_ChatUser.Result.chat_user_id.int_data;
    Select_ChatUser.Result.bind[0].is_null = &Select_ChatUser.Result.is_null[0];
    Select_ChatUser.Result.bind[0].length = &Select_ChatUser.Result.length[0];
    Select_ChatUser.Result.bind[0].error = &Select_ChatUser.Result.error[0];

    // /* INTEGER COLUMN */
    // Select_ChatUser.Result.bind[1].buffer_type = MYSQL_TYPE_LONG;
    // Select_ChatUser.Result.bind[1].buffer = (char
    // *)&Select_ChatUser.Result.user_id; Select_ChatUser.Result.bind[1].is_null =
    // &Select_ChatUser.Result.is_null[1]; Select_ChatUser.Result.bind[1].length =
    // &Select_ChatUser.Result.length[1]; Select_ChatUser.Result.bind[1].error =
    // &Select_ChatUser.Result.error[1];

    /* Fetch result set meta information */
    Select_ChatUser.Result.prepare_meta_result =
        mysql_stmt_result_metadata(Select_ChatUser.Query.stmt);
    if (!Select_ChatUser.Result.prepare_meta_result) {
      fprintf(stderr,
              " SELECT_CHAT_USER mysql_stmt_result_metadata(), \
            returned no meta information\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
      return false;
    }

    /* Get total columns in the query */
    Select_ChatUser.Result.column_count =
        mysql_num_fields(Select_ChatUser.Result.prepare_meta_result);
    fprintf(stdout, " SELECT_CHAT_USER total columns in SELECT statement: %d\n",
            Select_ChatUser.Result.column_count);

    if (Select_ChatUser.Result.column_count != 1) /* validate column count */
    {
      fprintf(stderr,
              " SELECT_CHAT_USER invalid column count returned by MySQL\n");
      return false;
    }

    /* Bind the result buffers */
    if (mysql_stmt_bind_result(Select_ChatUser.Query.stmt,
                              Select_ChatUser.Result.bind)) {
      fprintf(stderr, " SELECT_CHAT_USER mysql_stmt_bind_result() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
      return false;
    }
    return true;
  }

  size_t DB_Queries_DML::selectChatUser(const int chat_id, const int user_id) {
    Select_ChatUser.Query.chat_id.int_data = chat_id;
    Select_ChatUser.Query.user_id.int_data = user_id;
    // execute statement
    if (mysql_stmt_execute(Select_ChatUser.Query.stmt)) {
      fprintf(stderr, " SELECT_CHAT_USER mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
      return 0;
    }

    /* Now buffer all results to client (optional step) */
    if (mysql_stmt_store_result(Select_ChatUser.Query.stmt)) {
      fprintf(stderr, " SELECT_CHAT_USER mysql_stmt_store_result() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_ChatUser.Query.stmt));
      return 0;
    }

    /* Fetch all rows */
    Select_ChatUser.Result.row_count = 0;
    fprintf(stdout, "SELECT_CHAT_USER Fetching results ...\n");
    while (!mysql_stmt_fetch(Select_ChatUser.Query.stmt)) {
      Select_ChatUser.Result.row_count++;
    }

    // Check row count
    if (Select_ChatUser.Result.row_count != 1) {
      fprintf(stderr, " SELECT_CHAT_USER MySQL failed to return all rows\n");
      return 0;
    }

    return Select_ChatUser.Result.chat_user_id.int_data;
  }

   no_errors DB_Queries_DML::selectChatUser_close(void) {
    mysql_free_result(Select_ChatUser.Result.prepare_meta_result);
    if (mysql_stmt_close(Select_ChatUser.Query.stmt)) {
      fprintf(stderr, " SELECT_CHAT_USER failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::insertMessage_prepare(void) {
    Insert_Message.Query.stmt = mysql_stmt_init(mysql);
    if (!Insert_Message.Query.stmt) {
      fprintf(stderr, " INSERT_MESSAGE mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Insert_Message.Query.stmt, INSERT_MESSAGE,
                          strlen(INSERT_MESSAGE))) {
      fprintf(stderr, " mysql_stmt_prepare(), INSERT_MESSAGE failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Message.Query.stmt));
      return false;
    }
    fprintf(stdout, " prepare, INSERT_MESSAGE successful\n");

    /* Get the parameter count from the statement */
    Insert_Message.Query.param_count =
        mysql_stmt_param_count(Insert_Message.Query.stmt);
    fprintf(stdout, " total parameters in INSERT_MESSAGE: %d\n",
            Insert_Message.Query.param_count);

    if (Insert_Message.Query.param_count != 2) /* validate parameter count */
    {
      fprintf(stderr,
              " INSERT_MESSAGE invalid parameter count returned by MySQL\n");
      return false;
    }

    /* Bind the data for all parameters */
    memset(Insert_Message.Query.bind, 0, sizeof(Insert_Message.Query.bind));

    /* INTEGER PARAM */ /* chat_user_id */
    Insert_Message.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Insert_Message.Query.bind[0].buffer =
        (char *)&Insert_Message.Query.chat_user_id.int_data;
    Insert_Message.Query.bind[0].is_null = 0;
    Insert_Message.Query.bind[0].length = 0;

    /* STRING PARAM */ /* login */
    Insert_Message.Query.bind[1].buffer_type = MYSQL_TYPE_STRING;
    Insert_Message.Query.bind[1].buffer =
        (char *)Insert_Message.Query.message.str_data;
    Insert_Message.Query.bind[1].buffer_length = STRING_SIZE;
    Insert_Message.Query.bind[1].is_null = 0;
    Insert_Message.Query.bind[1].length =
        &Insert_Message.Query.message.str_length;

    if (mysql_stmt_bind_param(Insert_Message.Query.stmt,
                              Insert_Message.Query.bind)) {
      fprintf(stderr, " INSERT_MESSAGE mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Message.Query.stmt));
      return false;
    }
    return true;
  }

  insert_id DB_Queries_DML::insertMessage(const int chat_user_id,
                                  const Message_t message) {
    Insert_Message.Query.chat_user_id.int_data = chat_user_id;

    strncpy(Insert_Message.Query.message.str_data, message->getMessage().c_str(),
            STRING_SIZE);
    Insert_Message.Query.message.str_length =
        strlen(Insert_Message.Query.message.str_data);

    /* Execute the INSERT statement */
    if (mysql_stmt_execute(Insert_Message.Query.stmt)) {
      fprintf(stderr, " INSERT_MESSAGE mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Insert_Message.Query.stmt));
      return 0;
    }

    Insert_Message.Query.affected_rows =
        mysql_stmt_affected_rows(Insert_Message.Query.stmt);

  #if _DEBUG
    std::cout << "Affected rows: " << Insert_Message.Query.affected_rows
              << std::endl;
  #endif

    if (Insert_Message.Query.affected_rows != 1) /* validate affected rows */

    {
      fprintf(stderr, " INSERT_MESSAGE invalid affected rows by MySQL\n");
      return 0;
    }
    return mysql_insert_id(mysql);
  }

   no_errors DB_Queries_DML::insertMessage_close(void) {
    if (mysql_stmt_close(Insert_Message.Query.stmt)) {
      fprintf(stderr, " INSERT_MESSAGE failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::selectMessage_prepare(void) {
    Select_Message.Query.stmt = mysql_stmt_init(mysql);
    if (!Select_Message.Query.stmt) {
      fprintf(stderr, " SELECT_MESSAGE mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Select_Message.Query.stmt, SELECT_MESSAGE,
                          strlen(SELECT_MESSAGE))) {
      fprintf(stderr, " mysql_stmt_prepare(), SELECT_MESSAGE failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
      return false;
    }
    fprintf(stdout, " prepare, SELECT_MESSAGE successful\n");

    /* Get the parameter count from the statement */
    Select_Message.Query.param_count =
        mysql_stmt_param_count(Select_Message.Query.stmt);
    fprintf(stdout, " total parameters in SELECT_MESSAGE: %d\n",
            Select_Message.Query.param_count);

    if (Select_Message.Query.param_count != 2) /* validate parameter count */
    {
      fprintf(stderr,
              " SELECT_MESSAGE invalid parameter count returned by MySQL\n");
      return false;
    }
    /* Bind the data for all parameters */
    memset(Select_Message.Query.bind, 0, sizeof(Select_Message.Query.bind));

    /* INTEGER PARAM */ /* chat_id */
    Select_Message.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Select_Message.Query.bind[0].buffer =
        (char *)&Select_Message.Query.chat_id.int_data;
    Select_Message.Query.bind[0].is_null = 0;
    Select_Message.Query.bind[0].length = 0;

    /* INTEGER PARAM */ /* message_id */
    Select_Message.Query.bind[1].buffer_type = MYSQL_TYPE_LONG;
    Select_Message.Query.bind[1].buffer =
        (char *)&Select_Message.Query.message_id.int_data;
    Select_Message.Query.bind[1].is_null = 0;
    Select_Message.Query.bind[1].length = 0;

    if (mysql_stmt_bind_param(Select_Message.Query.stmt,
                              Select_Message.Query.bind)) {
      fprintf(stderr, " SELECT_MESSAGE mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
      return false;
    }

    /* Bind the result buffers for all columns before fetching them */
    memset(Select_Message.Result.bind, 0, sizeof(Select_Message.Result.bind));

    /* INTEGER COLUMN */ /* chat_id */
    Select_Message.Result.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Select_Message.Result.bind[0].buffer =
        (char *)&Select_Message.Result.chat_id.int_data;
    Select_Message.Result.bind[0].is_null = &Select_Message.Result.is_null[0];
    Select_Message.Result.bind[0].length = &Select_Message.Result.length[0];
    Select_Message.Result.bind[0].error = &Select_Message.Result.error[0];

    /* INTEGER COLUMN */ /* user_id */
    Select_Message.Result.bind[1].buffer_type = MYSQL_TYPE_LONG;
    Select_Message.Result.bind[1].buffer =
        (char *)&Select_Message.Result.user_id.int_data;
    Select_Message.Result.bind[1].is_null = &Select_Message.Result.is_null[1];
    Select_Message.Result.bind[1].length = &Select_Message.Result.length[1];
    Select_Message.Result.bind[1].error = &Select_Message.Result.error[1];

    /* INTEGER COLUMN */ /* message_id */
    Select_Message.Result.bind[2].buffer_type = MYSQL_TYPE_LONG;
    Select_Message.Result.bind[2].buffer =
        (char *)&Select_Message.Result.message_id.int_data;
    Select_Message.Result.bind[2].is_null = &Select_Message.Result.is_null[2];
    Select_Message.Result.bind[2].length = &Select_Message.Result.length[2];
    Select_Message.Result.bind[2].error = &Select_Message.Result.error[2];

    /* DATETIME COLUMN */ /* dt */
    Select_Message.Result.bind[3].buffer_type = MYSQL_TYPE_DATETIME;
    Select_Message.Result.bind[3].buffer = (char *)&Select_Message.Result.dt;
    Select_Message.Result.bind[3].is_null = &Select_Message.Result.is_null[3];
    Select_Message.Result.bind[3].length = &Select_Message.Result.length[3];
    Select_Message.Result.bind[3].error = &Select_Message.Result.error[3];

    /* STRING COLUMN */ /* login */
    Select_Message.Result.bind[4].buffer_type = MYSQL_TYPE_STRING;
    Select_Message.Result.bind[4].buffer =
        (char *)Select_Message.Result.login.str_data;
    Select_Message.Result.bind[4].buffer_length = STRING_SIZE;
    Select_Message.Result.bind[4].is_null = &Select_Message.Result.is_null[4];
    Select_Message.Result.bind[4].length = &Select_Message.Result.length[4];
    Select_Message.Result.bind[4].error = &Select_Message.Result.error[4];

    /* STRING COLUMN */ /* message */
    Select_Message.Result.bind[5].buffer_type = MYSQL_TYPE_STRING;
    Select_Message.Result.bind[5].buffer =
        (char *)Select_Message.Result.message.str_data;
    Select_Message.Result.bind[5].buffer_length = STRING_SIZE;
    Select_Message.Result.bind[5].is_null = &Select_Message.Result.is_null[5];
    Select_Message.Result.bind[5].length = &Select_Message.Result.length[5];
    Select_Message.Result.bind[5].error = &Select_Message.Result.error[5];

        /* INTEGER COLUMN */ /* status */
    Select_Message.Result.bind[6].buffer_type = MYSQL_TYPE_LONG;
    Select_Message.Result.bind[6].buffer =
        (char *)&Select_Message.Result.status.int_data;
    Select_Message.Result.bind[6].is_null = &Select_Message.Result.is_null[6];
    Select_Message.Result.bind[6].length = &Select_Message.Result.length[6];
    Select_Message.Result.bind[6].error = &Select_Message.Result.error[6];

    /* Fetch result set meta information */
    Select_Message.Result.prepare_meta_result =
        mysql_stmt_result_metadata(Select_Message.Query.stmt);
    if (!Select_Message.Result.prepare_meta_result) {
      fprintf(stderr,
              " SELECT_MESSAGE mysql_stmt_result_metadata(), \
            returned no meta information\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
      return false;
    }

    /* Get total columns in the query */
    Select_Message.Result.column_count =
        mysql_num_fields(Select_Message.Result.prepare_meta_result);
    fprintf(stdout, " SELECT_MESSAGE total columns in SELECT statement: %d\n",
            Select_Message.Result.column_count);

    if (Select_Message.Result.column_count != 7) /* validate column count */
    {
      fprintf(stderr, " SELECT_MESSAGE invalid column count returned by MySQL\n");
      return false;
    }

    /* Bind the result buffers */
    if (mysql_stmt_bind_result(Select_Message.Query.stmt,
                              Select_Message.Result.bind)) {
      fprintf(stderr, " SELECT_MESSAGE mysql_stmt_bind_result() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
      return false;
    }
    return true;
  }

  
  Message_t DB_Queries_DML::selectMessage(const int chat_id, const int message_id) {
    Select_Message.Query.chat_id.int_data = chat_id;
    Select_Message.Query.message_id.int_data = message_id;

    // execute statement
    if (mysql_stmt_execute(Select_Message.Query.stmt)) {
      fprintf(stderr, " SELECT_MESSAGE mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
      return nullptr;
    }

    /* Now buffer all results to client (optional step) */
    if (mysql_stmt_store_result(Select_Message.Query.stmt)) {
      fprintf(stderr, " SELECT_MESSAGE mysql_stmt_store_result() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Message.Query.stmt));
      return nullptr;
    }

    /* Fetch all rows */
    Select_Message.Result.row_count = 0;
    fprintf(stdout, "SELECT_MESSAGE Fetching results ...\n");

    Message_t message;

    while (!mysql_stmt_fetch(Select_Message.Query.stmt)) {
      std::cout << Select_Message.Result.row_count++ << std::endl;
      message = make_shared<Message>(
          Message(std::to_string(Select_Message.Result.dt.hour) + ':' +
                      std::to_string(Select_Message.Result.dt.minute) + ':' +
                      std::to_string(Select_Message.Result.dt.second) + ' ' +
                      std::to_string(Select_Message.Result.dt.day) + '-' +
                      std::to_string(Select_Message.Result.dt.month) + '-' +
                      std::to_string(Select_Message.Result.dt.year),
                  Select_Message.Result.login.str_data,
                  Select_Message.Result.message.str_data));
    }

    // Check row count
    if (Select_Message.Result.row_count != 1) {
      fprintf(stderr, " SELECT_MESSAGE MySQL failed to return all rows\n");
      return nullptr;
    }
    return message;
  }

   no_errors DB_Queries_DML::selectMessage_close(void) {
    mysql_free_result(Select_Message.Result.prepare_meta_result);
    if (mysql_stmt_close(Select_Message.Query.stmt)) {
      fprintf(stderr, " SELECT_MESSAGE failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::selectMessages_prepare(void) {
    Select_Messages.Query.stmt = mysql_stmt_init(mysql);
    if (!Select_Messages.Query.stmt) {
      fprintf(stderr, " SELECT_MESSAGES mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Select_Messages.Query.stmt, SELECT_MESSAGES,
                          strlen(SELECT_MESSAGES))) {
      fprintf(stderr, " mysql_stmt_prepare(), SELECT_MESSAGES failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Messages.Query.stmt));
      return false;
    }
    fprintf(stdout, " prepare, SELECT_MESSAGES successful\n");

    /* Get the parameter count from the statement */
    Select_Messages.Query.param_count =
        mysql_stmt_param_count(Select_Messages.Query.stmt);
    fprintf(stdout, " total parameters in SELECT_MESSAGES: %d\n",
            Select_Messages.Query.param_count);

    if (Select_Messages.Query.param_count != 5) /* validate parameter count */
    {
      fprintf(stderr,
              " SELECT_MESSAGES invalid parameter count returned by MySQL\n");
      return false;
    }
    /* Bind the data for all parameters */
    memset(Select_Messages.Query.bind, 0, sizeof(Select_Messages.Query.bind));

    /* INTEGER PARAM */ /* chat_id */
    Select_Messages.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Select_Messages.Query.bind[0].buffer =
        (char *)&Select_Messages.Query.chat_id.int_data;
    Select_Messages.Query.bind[0].is_null = 0;
    Select_Messages.Query.bind[0].length = 0;

    /* INTEGER PARAM */ /* message_id_begin */
    Select_Messages.Query.bind[1].buffer_type = MYSQL_TYPE_LONG;
    Select_Messages.Query.bind[1].buffer =
        (char *)&Select_Messages.Query.message_id_begin.int_data;
    Select_Messages.Query.bind[1].is_null = 0;
    Select_Messages.Query.bind[1].length = 0;

    /* INTEGER PARAM */ /* message_id_end */
    Select_Messages.Query.bind[2].buffer_type = MYSQL_TYPE_LONG;
    Select_Messages.Query.bind[2].buffer =
        (char *)&Select_Messages.Query.message_id_end.int_data;
    Select_Messages.Query.bind[2].is_null = 0;
    Select_Messages.Query.bind[2].length = 0;

    /* INTEGER PARAM */ /* status */
    Select_Messages.Query.bind[3].buffer_type = MYSQL_TYPE_LONG;
    Select_Messages.Query.bind[3].buffer =
        (char *)&Select_Messages.Query.status.int_data;
    Select_Messages.Query.bind[3].is_null = 0;
    Select_Messages.Query.bind[3].length = 0;

    /* INTEGER PARAM */ /* limit */
    Select_Messages.Query.bind[4].buffer_type = MYSQL_TYPE_LONG;
    Select_Messages.Query.bind[4].buffer =
        (char *)&Select_Messages.Query.limit.int_data;
    Select_Messages.Query.bind[4].is_null = 0;
    Select_Messages.Query.bind[4].length = 0;

    if (mysql_stmt_bind_param(Select_Messages.Query.stmt,
                              Select_Messages.Query.bind)) {
      fprintf(stderr, " SELECT_MESSAGES mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Messages.Query.stmt));
      return false;
    }

    /* Bind the result buffers for all columns before fetching them */
    memset(Select_Messages.Result.bind, 0, sizeof(Select_Messages.Result.bind));

    /* INTEGER COLUMN */ /* chat_id */
    Select_Messages.Result.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Select_Messages.Result.bind[0].buffer =
        (char *)&Select_Messages.Result.chat_id.int_data;
    Select_Messages.Result.bind[0].is_null = &Select_Messages.Result.is_null[0];
    Select_Messages.Result.bind[0].length = &Select_Messages.Result.length[0];
    Select_Messages.Result.bind[0].error = &Select_Messages.Result.error[0];

    /* INTEGER COLUMN */ /* user_id */
    Select_Messages.Result.bind[1].buffer_type = MYSQL_TYPE_LONG;
    Select_Messages.Result.bind[1].buffer =
        (char *)&Select_Messages.Result.user_id.int_data;
    Select_Messages.Result.bind[1].is_null = &Select_Messages.Result.is_null[1];
    Select_Messages.Result.bind[1].length = &Select_Messages.Result.length[1];
    Select_Messages.Result.bind[1].error = &Select_Messages.Result.error[1];

    /* INTEGER COLUMN */ /* message_id */
    Select_Messages.Result.bind[2].buffer_type = MYSQL_TYPE_LONG;
    Select_Messages.Result.bind[2].buffer =
        (char *)&Select_Messages.Result.message_id.int_data;
    Select_Messages.Result.bind[2].is_null = &Select_Messages.Result.is_null[2];
    Select_Messages.Result.bind[2].length = &Select_Messages.Result.length[2];
    Select_Messages.Result.bind[2].error = &Select_Messages.Result.error[2];

    /* DATETIME COLUMN */ /* dt */
    Select_Messages.Result.bind[3].buffer_type = MYSQL_TYPE_DATETIME;
    Select_Messages.Result.bind[3].buffer = (char *)&Select_Messages.Result.dt;
    Select_Messages.Result.bind[3].is_null = &Select_Messages.Result.is_null[3];
    Select_Messages.Result.bind[3].length = &Select_Messages.Result.length[3];
    Select_Messages.Result.bind[3].error = &Select_Messages.Result.error[3];

    /* STRING COLUMN */ /* login */
    Select_Messages.Result.bind[4].buffer_type = MYSQL_TYPE_STRING;
    Select_Messages.Result.bind[4].buffer =
        (char *)Select_Messages.Result.login.str_data;
    Select_Messages.Result.bind[4].buffer_length = STRING_SIZE;
    Select_Messages.Result.bind[4].is_null = &Select_Messages.Result.is_null[4];
    Select_Messages.Result.bind[4].length = &Select_Messages.Result.length[4];
    Select_Messages.Result.bind[4].error = &Select_Messages.Result.error[4];

    /* STRING COLUMN */ /* message */
    Select_Messages.Result.bind[5].buffer_type = MYSQL_TYPE_STRING;
    Select_Messages.Result.bind[5].buffer =
        (char *)Select_Messages.Result.message.str_data;
    Select_Messages.Result.bind[5].buffer_length = STRING_SIZE;
    Select_Messages.Result.bind[5].is_null = &Select_Messages.Result.is_null[5];
    Select_Messages.Result.bind[5].length = &Select_Messages.Result.length[5];
    Select_Messages.Result.bind[5].error = &Select_Messages.Result.error[5];

    /* INTEGER COLUMN */ /* status */
    Select_Messages.Result.bind[6].buffer_type = MYSQL_TYPE_LONG;
    Select_Messages.Result.bind[6].buffer =
        (char *)&Select_Messages.Result.status.int_data;
    Select_Messages.Result.bind[6].is_null = &Select_Messages.Result.is_null[6];
    Select_Messages.Result.bind[6].length = &Select_Messages.Result.length[6];
    Select_Messages.Result.bind[6].error = &Select_Messages.Result.error[6];

    /* Fetch result set meta information */
    Select_Messages.Result.prepare_meta_result =
        mysql_stmt_result_metadata(Select_Messages.Query.stmt);
    if (!Select_Messages.Result.prepare_meta_result) {
      fprintf(stderr,
              " SELECT_MESSAGES mysql_stmt_result_metadata(), \
            returned no meta information\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Messages.Query.stmt));
      return false;
    }

    /* Get total columns in the query */
    Select_Messages.Result.column_count =
        mysql_num_fields(Select_Messages.Result.prepare_meta_result);
    fprintf(stdout, " SELECT_MESSAGES total columns in SELECT statement: %d\n",
            Select_Messages.Result.column_count);

    if (Select_Messages.Result.column_count != 7) /* validate column count */
    {
      fprintf(stderr,
              " SELECT_MESSAGES invalid column count returned by MySQL\n");
      return false;
    }

    /* Bind the result buffers */
    if (mysql_stmt_bind_result(Select_Messages.Query.stmt,
                              Select_Messages.Result.bind)) {
      fprintf(stderr, " SELECT_MESSAGES mysql_stmt_bind_result() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Messages.Query.stmt));
      return false;
    }
    return true;
  }

  queue_message_t DB_Queries_DML::selectMessages(const int chat_id,
                                            const int message_id_begin,
                                            const int message_id_end,
                                            const int message_status,
                                            const int limit) {
    Select_Messages.Query.chat_id.int_data = chat_id;
    Select_Messages.Query.message_id_begin.int_data = message_id_begin;
    Select_Messages.Query.message_id_end.int_data = message_id_end;
    Select_Messages.Query.status.int_data = message_status;
    Select_Messages.Query.limit.int_data = limit;

    // execute statement
    if (mysql_stmt_execute(Select_Messages.Query.stmt)) {
      fprintf(stderr, " SELECT_MESSAGES mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Messages.Query.stmt));
      return nullptr;
    }

    /* Now buffer all results to client (optional step) */
    if (mysql_stmt_store_result(Select_Messages.Query.stmt)) {
      fprintf(stderr, " SELECT_MESSAGES mysql_stmt_store_result() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Select_Messages.Query.stmt));
      return nullptr;
    }

    /* Fetch all rows */
    queue_message_t queue =
        std::make_shared<std::queue<Message>>(std::queue<Message>());
    Select_Messages.Result.row_count = 0;
    fprintf(stdout, "SELECT_MESSAGES Fetching results Select_Messages...\n");
    while (!mysql_stmt_fetch(Select_Messages.Query.stmt)) {
      std::cout << Select_Messages.Result.row_count++ << std::endl;
      queue->emplace(
          Message(std::to_string(Select_Messages.Result.dt.hour) + ':' +
                      std::to_string(Select_Messages.Result.dt.minute) + ':' +
                      std::to_string(Select_Messages.Result.dt.second) + ' ' +
                      std::to_string(Select_Messages.Result.dt.day) + '-' +
                      std::to_string(Select_Messages.Result.dt.month) + '-' +
                      std::to_string(Select_Messages.Result.dt.year),
                  Select_Messages.Result.login.str_data,
                  Select_Messages.Result.message.str_data));
    };
    std::cout << "SELECT_MESSAGES cycle end " << std::endl;
    // //Check row count
    // if (Select_Messages.Result.row_count != 1) {
    //   fprintf(stderr, " MySQL failed to return all rows\n");
    //   return nullptr;
    // }

    return queue;
  }

   no_errors DB_Queries_DML::selectMessages_close(void) {
    mysql_free_result(Select_Messages.Result.prepare_meta_result);
    if (mysql_stmt_close(Select_Messages.Query.stmt)) {
      fprintf(stderr, " SELECT_MESSAGES failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::updateStatusDelivered_prepare(void) {
    Update_Status_Delivered.Query.stmt = mysql_stmt_init(mysql);
    if (!Update_Status_Delivered.Query.stmt) {
      fprintf(stderr,
              " UPDATE_STATUS_DELIVERED mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Update_Status_Delivered.Query.stmt,
                          UPDATE_STATUS_DELIVERED,
                          strlen(UPDATE_STATUS_DELIVERED))) {
      fprintf(stderr, " mysql_stmt_prepare(), UPDATE_STATUS_DELIVERED failed\n");
      fprintf(stderr, " %s\n",
              mysql_stmt_error(Update_Status_Delivered.Query.stmt));
      return false;
    }
    fprintf(stdout, " prepare, UPDATE_STATUS_DELIVERED successful\n");

    /* Get the parameter count from the statement */
    Update_Status_Delivered.Query.param_count =
        mysql_stmt_param_count(Update_Status_Delivered.Query.stmt);
    fprintf(stdout, " total parameters in UPDATE_STATUS_DELIVERED: %d\n",
            Update_Status_Delivered.Query.param_count);

    if (Update_Status_Delivered.Query.param_count !=
        3) /* validate parameter count */
    {
      fprintf(
          stderr,
          " UPDATE_STATUS_DELIVERED invalid parameter count returned by MySQL\n");
      return false;
    }

    /* Bind the data for all parameters */
    memset(Update_Status_Delivered.Query.bind, 0,
          sizeof(Update_Status_Delivered.Query.bind));

    /* INTEGER PARAM */ /* chat_user_id */
    Update_Status_Delivered.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Update_Status_Delivered.Query.bind[0].buffer =
        (char *)&Update_Status_Delivered.Query.chat_user_id.int_data;
    Update_Status_Delivered.Query.bind[0].is_null = 0;
    Update_Status_Delivered.Query.bind[0].length = 0;

    /* INTEGER PARAM */ /* message_id_begin */
    Update_Status_Delivered.Query.bind[1].buffer_type = MYSQL_TYPE_LONG;
    Update_Status_Delivered.Query.bind[1].buffer =
        (char *)&Update_Status_Delivered.Query.message_id_begin.int_data;
    Update_Status_Delivered.Query.bind[1].is_null = 0;
    Update_Status_Delivered.Query.bind[1].length = 0;

    /* INTEGER PARAM */ /* message_id_end */
    Update_Status_Delivered.Query.bind[2].buffer_type = MYSQL_TYPE_LONG;
    Update_Status_Delivered.Query.bind[2].buffer =
        (char *)&Update_Status_Delivered.Query.message_id_end.int_data;
    Update_Status_Delivered.Query.bind[2].is_null = 0;
    Update_Status_Delivered.Query.bind[2].length = 0;

    if (mysql_stmt_bind_param(Update_Status_Delivered.Query.stmt,
                              Update_Status_Delivered.Query.bind)) {
      fprintf(stderr,
              " UPDATE_STATUS_DELIVERED mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n",
              mysql_stmt_error(Update_Status_Delivered.Query.stmt));
      return false;
    }
    return true;
  }

  affected_rows DB_Queries_DML::updateStatusDelivered(const int chat_user_id,
                                          const int message_id_begin,
                                          const int message_id_end) {
    Update_Status_Delivered.Query.chat_user_id.int_data = chat_user_id;
    Update_Status_Delivered.Query.message_id_begin.int_data = message_id_begin;
    Update_Status_Delivered.Query.message_id_end.int_data = message_id_end;

    /* Execute the UPDATE statement */
    if (mysql_stmt_execute(Update_Status_Delivered.Query.stmt)) {
      fprintf(stderr,
              " UPDATE_STATUS_DELIVERED mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n",
              mysql_stmt_error(Update_Status_Delivered.Query.stmt));
      return 0;
    }

    Update_Status_Delivered.Query.affected_rows =
        mysql_stmt_affected_rows(Update_Status_Delivered.Query.stmt);

#if _DEBUG
    std::cout << "Affected rows: "
              << Update_Status_Delivered.Query.affected_rows << std::endl;
#endif
    return Update_Status_Delivered.Query.affected_rows;
  }

   no_errors DB_Queries_DML::updateStatusDelivered_close(void) {
    if (mysql_stmt_close(Update_Status_Delivered.Query.stmt)) {
      fprintf(stderr,
              " UPDATE_STATUS_DELIVERED failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::updateStatusRead_prepare(void) {
    Update_Status_Read.Query.stmt = mysql_stmt_init(mysql);
    if (!Update_Status_Read.Query.stmt) {
      fprintf(stderr, " UPDATE_STATUS_READ mysql_stmt_init(), out of memory\n");
      return false;
    }

    if (mysql_stmt_prepare(Update_Status_Read.Query.stmt, UPDATE_STATUS_READ,
                          strlen(UPDATE_STATUS_READ))) {
      fprintf(stderr, " mysql_stmt_prepare(), UPDATE_STATUS_DELIVERED failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Update_Status_Read.Query.stmt));
      return false;
    }
    fprintf(stdout, " prepare, UPDATE_STATUS_DELIVERED successful\n");

    /* Get the parameter count from the statement */
    Update_Status_Read.Query.param_count =
        mysql_stmt_param_count(Update_Status_Read.Query.stmt);
    fprintf(stdout, " total parameters in UPDATE_STATUS_DELIVERED: %d\n",
            Update_Status_Read.Query.param_count);

    if (Update_Status_Read.Query.param_count != 3) /* validate parameter count */
    {
      fprintf(stderr,
              " UPDATE_STATUS_READ invalid parameter count returned by MySQL\n");
      return false;
    }

    /* Bind the data for all parameters */
    memset(Update_Status_Read.Query.bind, 0,
          sizeof(Update_Status_Read.Query.bind));

    /* INTEGER PARAM */ /* chat_user_id */
    Update_Status_Read.Query.bind[0].buffer_type = MYSQL_TYPE_LONG;
    Update_Status_Read.Query.bind[0].buffer =
        (char *)&Update_Status_Read.Query.chat_user_id.int_data;
    Update_Status_Read.Query.bind[0].is_null = 0;
    Update_Status_Read.Query.bind[0].length = 0;

    /* INTEGER PARAM */ /* message_id_begin */
    Update_Status_Read.Query.bind[1].buffer_type = MYSQL_TYPE_LONG;
    Update_Status_Read.Query.bind[1].buffer =
        (char *)&Update_Status_Read.Query.message_id_begin.int_data;
    Update_Status_Read.Query.bind[1].is_null = 0;
    Update_Status_Read.Query.bind[1].length = 0;

    /* INTEGER PARAM */ /* message_id_end */
    Update_Status_Read.Query.bind[2].buffer_type = MYSQL_TYPE_LONG;
    Update_Status_Read.Query.bind[2].buffer =
        (char *)&Update_Status_Read.Query.message_id_end.int_data;
    Update_Status_Read.Query.bind[2].is_null = 0;
    Update_Status_Read.Query.bind[2].length = 0;

    if (mysql_stmt_bind_param(Update_Status_Read.Query.stmt,
                              Update_Status_Read.Query.bind)) {
      fprintf(stderr, " UPDATE_STATUS_READ mysql_stmt_bind_param() failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Update_Status_Read.Query.stmt));
      return false;
    }
    return true;
  }

  affected_rows DB_Queries_DML::updateStatusRead(const int chat_user_id,
                                      const int message_id_begin,
                                      const int message_id_end) {
    Update_Status_Read.Query.chat_user_id.int_data = chat_user_id;
    Update_Status_Read.Query.message_id_begin.int_data = message_id_begin;
    Update_Status_Read.Query.message_id_end.int_data = message_id_end;

    /* Execute the UPDATE statement */
    if (mysql_stmt_execute(Update_Status_Read.Query.stmt)) {
      fprintf(stderr, " UPDATE_STATUS_READ mysql_stmt_execute(), 1 failed\n");
      fprintf(stderr, " %s\n", mysql_stmt_error(Update_Status_Read.Query.stmt));
      return 0;
    }

    Update_Status_Read.Query.affected_rows =
        mysql_stmt_affected_rows(Update_Status_Read.Query.stmt);

#if _DEBUG
    std::cout << "Affected rows: " << Update_Status_Read.Query.affected_rows
              << std::endl;
#endif

    return Update_Status_Read.Query.affected_rows;
  }

   no_errors DB_Queries_DML::updateStatusRead_close(void) {
    if (mysql_stmt_close(Update_Status_Read.Query.stmt)) {
      fprintf(stderr, " UPDATE_STATUS_READ failed while closing the statement\n");
      fprintf(stderr, " %s\n", mysql_error(mysql));
      return false;
    }
    return true;
  }

   no_errors DB_Queries_DML::prepareAll(void) {
    return 
    insertUser_prepare() &&
    insertUser_prepare() &&
    insertChat_prepare() &&
    insertChatUser_prepare() &&
    insertMessage_prepare() &&
    selectUser_prepare() &&
    selectChat_prepare() &&
    selectChatUser_prepare() &&
    selectMessage_prepare() &&
    selectMessages_prepare() &&
    updateStatusDelivered_prepare() &&
    updateStatusRead_prepare();
  }

   no_errors DB_Queries_DML::closeAll(void) {
    return
    insertUser_close() &&
    insertChat_close() &&
    insertChatUser_close() &&
    insertMessage_close() &&
    selectChat_close() &&
    selectUser_close() &&
    selectChatUser_close() &&
    selectMessage_close() &&
    selectMessages_close() &&
    updateStatusDelivered_close() &&
    updateStatusRead_close() &&
    connectDB_close();
  }
