#include "DB_Queries.h"


DB_Queries::DB_Queries(/* args */)
{
}

DB_Queries::~DB_Queries()
{
}

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
    std::cout << "Error: can't connect to database " << mysql_error(mysql) << std::endl;
  } else {
    // Если соединение успешно установлено выводим фразу — "Success!"
    std::cout << "Success!" << std::endl;
  }

  mysql_set_character_set(mysql, "utf8");
  // Смотрим изменилась ли кодировка на нужную, по умолчанию идёт latin1
  std::cout << "connection characterset: " << mysql_character_set_name(mysql)
       << std::endl;
}

void DB_Queries::connectDB_close(void){
  // Закрываем соединение с сервером базы данных
  mysql_close(mysql);
}

void DB_Queries::insertUserPrepare(void) {

  Insert_User_Query.stmt = mysql_stmt_init(mysql);
  if (!Insert_User_Query.stmt) {
    fprintf(stderr, " mysql_stmt_init(), out of memory\n");
    return;
  }

  if (mysql_stmt_prepare(Insert_User_Query.stmt, INSERT_USER, strlen(INSERT_USER))) {
    fprintf(stderr, " mysql_stmt_prepare(), INSERT failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_User_Query.stmt));
    return;
  }
  fprintf(stdout, " prepare, INSERT successful\n");

  /* Get the parameter count from the statement */
  Insert_User_Query.param_count = mysql_stmt_param_count(Insert_User_Query.stmt);
  fprintf(stdout, " total parameters in INSERT: %d\n", Insert_User_Query.param_count);

  if (Insert_User_Query.param_count != 2) /* validate parameter count */
  {
    fprintf(stderr, " invalid parameter count returned by MySQL\n");
    return;
  }

  /* Bind the data for all 2 parameters */
  memset(Insert_User_Query.bind , 0, sizeof(Insert_User_Query.bind));

  /* login */
  Insert_User_Query.bind[0].buffer_type = MYSQL_TYPE_STRING;
  Insert_User_Query.bind[0].buffer = (char *)Insert_User_Query.Login.str_data;
  Insert_User_Query.bind[0].buffer_length = STRING_SIZE;
  Insert_User_Query.bind[0].is_null = 0;
  Insert_User_Query.bind[0].length = &Insert_User_Query.Login.str_length;

  /* pass */
  Insert_User_Query.bind[1].buffer_type = MYSQL_TYPE_STRING;
  Insert_User_Query.bind[1].buffer = (char *)Insert_User_Query.Pass.str_data;
  Insert_User_Query.bind[1].buffer_length = STRING_SIZE;
  Insert_User_Query.bind[1].is_null = 0;
  Insert_User_Query.bind[1].length = &Insert_User_Query.Pass.str_length;

  if (mysql_stmt_bind_param(Insert_User_Query.stmt, Insert_User_Query.bind)) {
    fprintf(stderr, " mysql_stmt_bind_param() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_User_Query.stmt));
    return;
  }
}

size_t DB_Queries::insertUser(const User_t user) {

  strncpy(Insert_User_Query.Login.str_data, user->getLogin().c_str(), STRING_SIZE);
  Insert_User_Query.Login.str_length = strlen(Insert_User_Query.Login.str_data);

  strncpy(Insert_User_Query.Pass.str_data, user->getPass().c_str(), STRING_SIZE);
  Insert_User_Query.Pass.str_length = strlen(Insert_User_Query.Pass.str_data);

  /* Execute the INSERT statement */
  if (mysql_stmt_execute(Insert_User_Query.stmt)) {
    fprintf(stderr, " mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Insert_User_Query.stmt));
    return -1;
  }

  if (Insert_User_Query.affected_rows != 1) /* validate affected rows */
  {
    fprintf(stderr, " invalid affected rows by MySQL\n");
    return -2;
  } else {
    return mysql_insert_id(mysql);
  }
}

int DB_Queries::insertUserClose(void) {
  /* Close the statement */
  if (mysql_stmt_close(Insert_User_Query.stmt)) {
    /* mysql_stmt_close() invalidates stmt, so call          */
    /* mysql_error(mysql) rather than mysql_stmt_error(stmt) */
    fprintf(stderr, " failed while closing the statement\n");
    fprintf(stderr, " %s\n", mysql_error(mysql));
    return -1;
  }
  return 0;
}


void DB_Queries::selectUserPrepare(void){

  Select_User_Query.stmt = mysql_stmt_init(mysql);
  if (!Select_User_Query.stmt) {
    fprintf(stderr, " mysql_stmt_init(), out of memory\n");
    return;
  }

  if (mysql_stmt_prepare(Select_User_Query.stmt, SELECT_USER, strlen(SELECT_USER))) {
    fprintf(stderr, " mysql_stmt_prepare(), SELECT failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User_Query.stmt));
    return;
  }
  fprintf(stdout, " prepare, SELECT successful\n");

  /* Get the parameter count from the statement */
  Select_User_Query.param_count= mysql_stmt_param_count(Select_User_Query.stmt);
  fprintf(stdout, " total parameters in SELECT: %d\n", Select_User_Query.param_count);

  if (Select_User_Query.param_count != 1) /* validate parameter count */
  {
    fprintf(stderr, " invalid parameter count returned by MySQL\n");
    return ;
  }
  /* Bind the data for all parameters */
  memset(Select_User_Query.bind, 0, sizeof(Select_User_Query.bind));

  #if _DEBUG
    std::cout << "selectUserPrepare() parameters memset done" << std::endl;
  #endif
 
  /* INTEGER PARAM */
  Select_User_Query.bind[0].buffer_type= MYSQL_TYPE_LONG;
  Select_User_Query.bind[0].buffer= (char *)&Select_User_Query.int_data;
  Select_User_Query.bind[0].is_null= 0;
  Select_User_Query.bind[0].length= 0;

  #if _DEBUG
    std::cout << "selectUserPrepare() parameters set done" << std::endl;
  #endif


  if (mysql_stmt_bind_param(Select_User_Query.stmt, Select_User_Query.bind)) {
    fprintf(stderr, " mysql_stmt_bind_param() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User_Query.stmt));
    return;
  }

  #if _DEBUG
    std::cout << "selectUserPrepare() parameters bind done" << std::endl;
  #endif


  /* Bind the result buffers for all columns before fetching them */
  memset(Select_User_Result.bind, 0, sizeof(Select_User_Result.bind));

  #if _DEBUG
    std::cout << "selectUserPrepare() result memset done" << std::endl;
  #endif

  /* INTEGER COLUMN */
  Select_User_Result.bind[0].buffer_type = MYSQL_TYPE_LONG;
  Select_User_Result.bind[0].buffer = (char *)&Select_User_Result.int_data;
  Select_User_Result.bind[0].is_null = &Select_User_Result.is_null[0];
  Select_User_Result.bind[0].length = &Select_User_Result.length[0];
  Select_User_Result.bind[0].error = &Select_User_Result.error[0];

  /* STRING COLUMN */
  Select_User_Result.bind[1].buffer_type = MYSQL_TYPE_STRING;
  Select_User_Result.bind[1].buffer = (char *)Select_User_Result.Login.str_data;
  Select_User_Result.bind[1].buffer_length = STRING_SIZE;
  Select_User_Result.bind[1].is_null = &Select_User_Result.is_null[1];
  Select_User_Result.bind[1].length = &Select_User_Result.length[1];
  Select_User_Result.bind[1].error = &Select_User_Result.error[1];

  /* STRING COLUMN */
  Select_User_Result.bind[2].buffer_type = MYSQL_TYPE_STRING;
  Select_User_Result.bind[2].buffer = (char *)Select_User_Result.Pass.str_data;
  Select_User_Result.bind[2].buffer_length = STRING_SIZE;
  Select_User_Result.bind[2].is_null = &Select_User_Result.is_null[2];
  Select_User_Result.bind[2].length = &Select_User_Result.length[2];
  Select_User_Result.bind[2].error = &Select_User_Result.error[2];

  // /* TIMESTAMP COLUMN */
  // Select_User_Result.bind[3].buffer_type = MYSQL_TYPE_DATETIME;
  // Select_User_Result.bind[3].buffer = (char *)&Select_User_Result.ts;
  // Select_User_Result.bind[3].is_null = &Select_User_Result.is_null[3];
  // Select_User_Result.bind[3].length = &Select_User_Result.length[3];
  // Select_User_Result.bind[3].error = &Select_User_Result.error[3];

  #if _DEBUG
    std::cout << "selectUserPrepare() result set done" << std::endl;
  #endif






 // Select_User_Query.stmt = mysql_stmt_init(mysql);

    /* Fetch result set meta information */
  Select_User_Result.prepare_meta_result = mysql_stmt_result_metadata(Select_User_Query.stmt);
  if (!Select_User_Result.prepare_meta_result) {
    fprintf(stderr,
            " mysql_stmt_result_metadata(), \
           returned no meta information\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User_Query.stmt));
    return ;
  }

  /* Get total columns in the query */
  Select_User_Result.column_count = mysql_num_fields(Select_User_Result.prepare_meta_result);
  fprintf(stdout, " total columns in SELECT statement: %d\n", Select_User_Result.column_count);

  if (Select_User_Result.column_count != 3) /* validate column count */
  {
    fprintf(stderr, " invalid column count returned by MySQL\n");
    return ;
  }












  /* Bind the result buffers */
  if (mysql_stmt_bind_result(Select_User_Query.stmt, Select_User_Result.bind)) {
    fprintf(stderr, " mysql_stmt_bind_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User_Query.stmt));
    //return;
  }

  #if _DEBUG
    std::cout << "selectUserPrepare() result bind done" << std::endl;
  #endif






}

User_t DB_Queries::selectUser(const int id) {
  Select_User_Query.int_data = id;

  if (mysql_stmt_execute(Select_User_Query.stmt)) {
    fprintf(stderr, " mysql_stmt_execute(), 1 failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User_Query.stmt));
    return nullptr;
  }



    /* Now buffer all results to client (optional step) */
  if (mysql_stmt_store_result(Select_User_Query.stmt)) {
    fprintf(stderr, " mysql_stmt_store_result() failed\n");
    fprintf(stderr, " %s\n", mysql_stmt_error(Select_User_Query.stmt));
    return nullptr;
  }

  /* Fetch all rows */
  Select_User_Result.row_count = 0;
  fprintf(stdout, "Fetching results ...\n");
  while (!mysql_stmt_fetch(Select_User_Query.stmt)) {
    Select_User_Result.row_count++;
    fprintf(stdout, "  row %d\n", Select_User_Result.row_count);

    /* column 1 */
    fprintf(stdout, "   column1 (integer)  : ");
    if (Select_User_Result.is_null[0])
      fprintf(stdout, " NULL\n");
    else
      fprintf(stdout, " %d(%ld)\n", Select_User_Result.int_data, Select_User_Result.length[0]);

    /* column 2 */
    fprintf(stdout, "   column2 (string)   : ");
    if (Select_User_Result.is_null[1])
      fprintf(stdout, " NULL\n");
    else
      fprintf(stdout, " %s(%ld)\n", Select_User_Result.Login.str_data, Select_User_Result.length[1]);

    /* column 3 */
    fprintf(stdout, "   column3 (string)   : ");
    if (Select_User_Result.is_null[2])
      fprintf(stdout, " NULL\n");
    else
      fprintf(stdout, " %s(%ld)\n", Select_User_Result.Login.str_data, Select_User_Result.length[2]);

    // /* column 4 */
    // fprintf(stdout, "   column4 (timestamp): ");
    // if (Select_User_Result.is_null[3])
    //   fprintf(stdout, " NULL\n");
    // else
    //   fprintf(stdout, " %04d-%02d-%02d %02d:%02d:%02d (%ld)\n",
    //           Select_User_Result.ts.year, Select_User_Result.ts.month,
    //           Select_User_Result.ts.day, Select_User_Result.ts.hour,
    //           Select_User_Result.ts.minute, Select_User_Result.ts.second,
    //           Select_User_Result.length[3]);
    // fprintf(stdout, "\n");
  }

  /* Validate rows fetched */
  fprintf(stdout, " total rows fetched: %d\n", Select_User_Result.row_count);
  if (Select_User_Result.row_count != 1) {
    fprintf(stderr, " MySQL failed to return all rows\n");
    return nullptr;
  }

  User_t user = make_shared<User>(User{Select_User_Result.Login.str_data, Select_User_Result.Pass.str_data});



  return user;
}

void DB_Queries::selectUserClose(void) {
    /* Free the prepared result metadata */
  mysql_free_result(Select_User_Result.prepare_meta_result);
  if (mysql_stmt_close(Select_User_Query.stmt)) {
    /* mysql_stmt_close() invalidates stmt, so call          */
    /* mysql_error(mysql) rather than mysql_stmt_error(stmt) */
    fprintf(stderr, " failed while closing the statement\n");
    fprintf(stderr, " %s\n", mysql_error(mysql));
    return;
  }

  // /* Close the statement */
  // if (mysql_stmt_close(Select_User_Query.stmt)) {
  //   /* mysql_stmt_close() invalidates stmt, so call          */
  //   /* mysql_error(mysql) rather than mysql_stmt_error(stmt) */
  //   fprintf(stderr, " failed while closing the statement\n");
  //   fprintf(stderr, " %s\n", mysql_error(mysql));
  //   return;
  // }

}