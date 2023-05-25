#pragma once
#include <string>
#include "SaveRestor.h"
class Message
{
public:
	Message();

	Message(const std::string& timesend, const std::string& username, const std::string& message ) : 
	_timeSend(timesend),
	_userName(username),  
	_message(message)
	{};

	~Message();
	void userName(const std::string& userName);
	void setMessage(const std::string& message);
	void setTimeSend(const std::string& time);
	void printMessage() const;

	std::string getUserName() const;
	std::string getMessage() const;
	std::string getTimeSend() const;

	friend std::string SaveRestor::saveMessage(Message& message);

private:
	std::string _userName;
	std::string _timeSend;
	std::string _message;
	std::string _timeRead;
};

