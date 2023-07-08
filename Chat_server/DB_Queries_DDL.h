#include <mysql/mysql.h>
#include <iostream>
#include <string>
//using namespace std;


class DB_Queries_DDL
{
private:
	/* data */
public:
	DB_Queries_DDL(/* args */);
	~DB_Queries_DDL();
};


#define DROP_DATABASE \
"DROP DATABASE IF EXISTS chat_db1"

#define CREATE_DATABASE \
"CREATE DATABASE IF NOT EXISTS chat_db1"

// #define CREATE_USER \
// "CREATE USER IF NOT EXISTS 'chat_db1_user'@'localhost' IDENTIFIED BY 'Root123_Root123'"

// #define GRANT_USER \
// "GRANT ALL ON chat_db1.* TO 'chat_db1_user'@'localhost'"

#define CREATE_TABLE_USERS \
"CREATE TABLE IF NOT EXISTS users (\
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,\
		login character varying(255) NOT NULL,\
		pass character varying(255) NOT NULL,\
		firstname character varying(255),\
		lastname character varying(255),\
		email character varying(255),\
		PRIMARY KEY (id)\
	)AUTO_INCREMENT = 1;"
// create table "chats" request string
#define CREATE_TABLE_CHATS \
"CREATE TABLE IF NOT EXISTS chats (\
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,\
		name character varying(255),\
		PRIMARY KEY (id)\
	)AUTO_INCREMENT = 1"
// create table "chat_user" request string
#define CREATE_TABLE_CHAT_USER \
"CREATE TABLE IF NOT EXISTS \
	chat_user (\
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,\
		chat_id INT UNSIGNED NOT NULL REFERENCES chats(id),\
		user_id INT UNSIGNED NOT NULL REFERENCES users(id),\
		user_no INT UNSIGNED NOT NULL CHECK (user_no = 1 OR user_no = 2),\
		PRIMARY KEY (id),\
		UNIQUE (chat_id, user_no),\
		CONSTRAINT chat_id_fk FOREIGN KEY(chat_id) REFERENCES chats(id),\
		CONSTRAINT user_id_fk FOREIGN KEY(user_id) REFERENCES users(id)\
	)AUTO_INCREMENT = 1"
// create table "messages" request string
#define CREATE_TABLE_MESSAGES \
"CREATE TABLE IF NOT EXISTS \
	messages (\
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,\
		chat_user_id INT UNSIGNED NOT NULL REFERENCES chat_user(id),\
		message character varying(255) NOT NULL,\
		dt DATETIME NOT NULL,\
		status INT UNSIGNED DEFAULT 1 CHECK (status BETWEEN 1 AND 3),\
		dt_delivered DATETIME,\
		dt_read DATETIME,\
		PRIMARY KEY (id),\
		CONSTRAINT chat_user_id_fk FOREIGN KEY(chat_user_id) REFERENCES chat_user(id) \
	)AUTO_INCREMENT = 1"
// create view "message_view" request string
#define CREATE_VIEW_MESSAGE_VIEW \
"CREATE VIEW \
	message_view AS \
	SELECT \
	chats.id AS chat_id, \
	chats.name AS chatname , \
	users.login AS login, \
	messages.dt AS timesend, \
	messages.message AS message, \
	messages.status AS status \
	FROM messages \
	JOIN chat_user ON chat_user.id = messages.chat_user_id \
	JOIN chats ON chats.id = chat_user.chat_id \
	JOIN users ON users.id = chat_user.user_id"






int main() {
  MYSQL mysql;
  MYSQL_RES* res;
  MYSQL_ROW row;

  int i = 0;

  // Получаем дескриптор соединения
  mysql_init(&mysql);
  if (&mysql == nullptr) {
    // Если дескриптор не получен — выводим сообщение об ошибке
    std::cout << "Error: can't create MySQL-descriptor" << std::endl;
  }

  // Подключаемся к серверу
  if (!mysql_real_connect(&mysql, "localhost", "root", "Root123_Root123",
                          "chat_db", NULL, NULL, 0)) {
    // Если нет возможности установить соединение с БД выводим сообщение об
    // ошибке
    std::cout << "Error: can't connect to database " << mysql_error(&mysql) << std::endl;
  } else {
    // Если соединение успешно установлено выводим фразу — "Success!"
    std::cout << "Success!" << std::endl;
  }

  mysql_set_character_set(&mysql, "utf8");
  // Смотрим изменилась ли кодировка на нужную, по умолчанию идёт latin1
  std::cout << "connection characterset: " << mysql_character_set_name(&mysql)
       << std::endl;



	// // create user
	// mysql_query(&mysql, CREATE_USER);
	// // grant user
	// mysql_query(&mysql, GRANT_USER);
	// create database
	mysql_query(&mysql, CREATE_DATABASE);


  // create table "users"
  mysql_query(&mysql, CREATE_TABLE_USERS);
  // create table "chats"
  mysql_query(&mysql, CREATE_TABLE_CHATS);
  // create table "chat_user"
  mysql_query(&mysql, CREATE_TABLE_CHAT_USER);
  // create table "messages"
  mysql_query(&mysql, CREATE_TABLE_MESSAGES);
  // create view "message_view"
  mysql_query(&mysql, CREATE_VIEW_MESSAGE_VIEW);

  // Закрываем соединение с сервером базы данных
  mysql_close(&mysql);
  system("Pause");

  return 0;
}