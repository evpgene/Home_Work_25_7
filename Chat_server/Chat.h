#pragma once
#include <string>
#include <vector>
#include <queue>
#include "Message.h"
#include "SaveRestor.h"

using User_t = std::shared_ptr<User>;  // указатель на юзера
using Chat_t = std::shared_ptr<Chat>;  // указатель на чат
using Message_t = std::shared_ptr<Message>;  // указатель на сообщение

class Chat
{
public:
	Chat();
	explicit Chat(const std::string &chatname);
	~Chat();
	void printMessages();
	void addMessage(const Message &message);
	void addMessage(Message &&message);
	void printChatName() const;
	std::string getChatName() const;

	std::queue<Message> getLastMessages();

	friend void SaveRestor::saveChat(std::shared_ptr<Chat> chat);
	friend void SaveRestor::restorChats(std::vector<std::shared_ptr<Chat>> &chats);

	friend bool operator==(const Chat& ch1, const Chat& ch2);
	friend bool operator!=(const Chat& ch1, const Chat& ch2);

	friend bool operator==(const Chat& ch1, const std::string& ch2);
	friend bool operator!=(const Chat& ch1, const std::string& ch2);

	friend bool operator==(const std::string& ch1, const Chat& ch2);
	friend bool operator!=(const std::string& ch1, const Chat& ch2);


protected:
	std::string _chatname;
	std::vector<Message> _messages;
};
