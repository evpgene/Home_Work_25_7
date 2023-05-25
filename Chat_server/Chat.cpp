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
	for (auto m : _messages)
		m.printMessage();
}

void Chat::addMessage(const Message &message)
{
	_messages.push_back(message);
}


void Chat::printChatName() const
{
	std::cout << " " << _chatname << std::endl;
}

std::string Chat::getChatName() const
{
	return _chatname;
}

bool operator==(const Chat &ch1, const Chat &ch2)
{
	return ch1._chatname == ch2._chatname;
}
bool operator!=(const Chat &ch1, Chat &ch2)
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