#include "Chat.h"
#include <iostream>
#include <fstream>
Chat::Chat()
{
}

Chat::Chat(const std::string &chatname) : _chatname(chatname)
{
}

Chat::~Chat()
{
}

void Chat::printMessages()
{
	for (const auto& message : _messages)
	{
		message.printMessage();
		std::cout << std::endl;
	}
}

void Chat::addMessage(const Message &message)
{
	_messages.emplace_back(message);
}

void Chat::addMessage(Message &&message)
{
	_messages.emplace_back(std::move(message));
}


void Chat::printChatName() const
{
	std::cout << " " << _chatname << std::endl;
}

std::string Chat::getChatName() const
{
	return _chatname;
}

std::queue<Message> Chat::getLastMessages() {
        using queue_mes = std::queue<Message>;
        queue_mes lastMessages;
		
        for (const auto& m : _messages) {
			lastMessages.push(m);
			std::cout << "one message push	" << std::endl;
			}
        return lastMessages;
}

bool operator==(const Chat &ch1, const Chat &ch2)
{
	return ch1._chatname == ch2._chatname;
}
bool operator!=(const Chat &ch1, const Chat &ch2)
{
	return !(ch1 == ch2);
}


bool operator==(const Chat& ch1, const std::string& ch2)
{
	return ch1._chatname == ch2;
}
bool operator!=(const Chat& ch1, const std::string& ch2)
{
	return !(ch1 == ch2);
}
bool operator==(const std::string& ch1, const Chat& ch2)
{
	return ch1 == ch2._chatname;
}
bool operator!=(const std::string& ch1, const Chat& ch2)
{
	return !(ch1 == ch2);
}