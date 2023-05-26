#pragma once
#include <string>
#include "SaveRestor.h"
class Message
{
public:
	Message(const std::string& timeSend, const std::string& userName, const std::string& message );

	~Message();
	
	void printMessage() const;

	std::string getTimeSend() const;
	std::string getUserName() const;
	std::string getMessage() const;

	friend std::string SaveRestor::saveMessage(Message& message);

private:
	std::string _timeSend;
	std::string _userName;
	std::string _message;
};

