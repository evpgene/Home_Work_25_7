#pragma once
#include <string>
#include <vector>
#include "Message.h"
#include "SaveRestor.h"
class Chat
{
public:
	Chat();
	explicit Chat(const std::string &chatname);
	~Chat();
	void printMessages();
	void addMessage(const Message &message);
	void printChatName() const;
	std::string getChatName() const;

	friend void SaveRestor::saveChat(std::shared_ptr<Chat> chat);
	friend void SaveRestor::restorChats(std::vector<std::shared_ptr<Chat>> &chats);

	friend bool operator==(const Chat& ch1, const Chat& ch2);
	friend bool operator!=(const Chat& ch1, const Chat& ch2);

	friend bool operator==(const Chat& ch1, const std::string& ch2);
	friend bool operator!=(const Chat& ch1, const std::string& ch2);

	friend bool operator==(const std::string& ch1, const Chat& ch2);
	friend bool operator!=(const std::string&, const Chat& ch2);


protected:
	std::string _chatname;
	std::vector<Message> _messages;
};
