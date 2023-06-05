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


std::shared_ptr<std::queue<Message>> Chat::getLastMessages(){
  std::shared_ptr<std::queue<Message>>  lastMessages;
  size_t i{10};
  for (auto it = std::crbegin(_messages); it < std::crend(_messages); ++it) {
                if (i == 0) break;

                lastMessages->push(*it);
                i--;
  }
  return lastMessages;
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