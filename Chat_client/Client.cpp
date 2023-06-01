#include "Client.h"
#include "TCP_client.h"

Client::Client(/* args */)
{
}

Client::~Client()
{
}


void Client::main(void)
{
    TCP_client tcp_client;
    tcp_client.configureConnection();
    tcp_client.openConnection();


    // std::string string_to_send{"Привет от клиента!"};
	std::string string_for_receive;


while(true)
{
    // (начало цикла)
    tcp_client.send(getGetUsernameString());
    tcp_client.receive(string_for_receive);
    // тут допустим функция восстановления строки
    // тут обработка принятой информации (начало цикла)
    // тут функция подготовки строки к отправке
    // (конец цикла)
}
}

int Client::identReceive(std::string receive)
{

}




void Client::setAccount()
{

    std::string tmp_log, tmp_pas;
    std::cout << "Введите ваше логин" << std::endl; // login
    std::cin >> tmp_log;
    std::cout << "Введите пароль: " << std::endl;
    std::cin >> tmp_pas;
    _user = User(tmp_log, tmp_pas);
    return;

}

void Client::setMessage()
{

    // это по сути сообщение как и в сервере - вопрос, можно ли унифицировать?

    std::string tmp_Messge;
    std::cout << "Введите ваше сообщение: ";
    cin.ignore();
    std::getline(std::cin, tmp_Messge);
    time_t now = time(0); // текущие дата/время основываясь на текущей системе
    char dt[26];
    ctime_r(&now, dt);
    dt[24] = ' '; // убираем перенос строки
    _message = Message(std::string(dt), _user.getLogin(), std::move(tmp_Messge));
    return;
}

const std::string Client::getLogonString(/* User &user */) const
{
	return itLogon + sep + log + sep + _user.getLogin() + sep + pas + sep + _user.getPass();
};

const std::string Client::getMessageString(/* Message &message */) const
{
	return itMessage + sep + name + sep + _message.getUserName() + '\n' + timesend + sep + _message.getTimeSend() + '\n' + mess + sep + _message.getMessage();
}
const std::string Client::getRegistrationString() const
{
    return itRegistration + sep + log + sep + _user.getLogin() + sep + pas + sep + _user.getPass();
}
const std::string Client::getGetUsernameString() const
{
    return itGetUsernames;
}
const std::string Client::getGetMessagesString() const
{
    return itGetMessages;
}
void Client::interpretString(std::string& str)
{
    // std::string word;
	// std::istringstream iss(str);
    // //StringType stringtype; //удалить или использовать в другом месте
    // std::string_view str_view; // для чего это??
    // int cnt {0}; // counter

    // while (iss >> word)
    // {
    // if (!cnt)
    // {
    //     if (word == itUsernames)
    //         str_view.remove_prefix(itUsernames.size() + sep.size());
    // }

    // ++cnt;
    // }

    //     switch(stringtype)

    //     case StringType::USER_NAMES






	// 	};
};