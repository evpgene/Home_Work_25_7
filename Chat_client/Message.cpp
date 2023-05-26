#include "Message.h"
#include <iostream>

Message::Message(const std::string &timeSend, const std::string &userName, const std::string &message) : 
	_timeSend(timeSend),
	_userName(userName),
	_message(message) {
}

Message::~Message()
{
}

std::string Message::getTimeSend() const
{
	return _timeSend;
}
std::string Message::getUserName() const
{
	return _userName;
}
std::string Message::getMessage() const
{
	return _message;
}

void Message::printMessage() const
{
	std::cout << _timeSend << _userName << ": " << _message << std::endl;
}
