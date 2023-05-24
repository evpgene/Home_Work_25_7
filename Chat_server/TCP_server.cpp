#include "TCP_server.h"

TCP_server::TCP_server(/* args */)
{
}

TCP_server::~TCP_server()
{
}

void TCP_server::configureConnection()
{
    // Создадим сокет
    socket_file_descriptor = socket(AF_INET, SOCK_STREAM, 0);
    if (socket_file_descriptor == -1)
    {
        std::cout << "Socket creation failed.!" << std::endl;
        exit(1);
    }
    //
    serveraddress.sin_addr.s_addr = htonl(INADDR_ANY);
    // Зададим номер порта для связи
    serveraddress.sin_port = htons(PORT);
    // Используем IPv4
    serveraddress.sin_family = AF_INET;
    // Привяжем сокет
    bind_status = bind(socket_file_descriptor, (struct sockaddr *)&serveraddress,
                       sizeof(serveraddress));
    if (bind_status == -1)
    {
        std::cout << "Socket binding failed.!" << std::endl;
        exit(1);
    }
}

void TCP_server::listening()
{
    // Поставим сервер на прием данных
    connection_status = listen(socket_file_descriptor, 5);
    if (connection_status == -1)
    {
        std::cout << "Socket is unable to listen for new connections.!" << std::endl;
        exit(1);
    }
    else
    {
        std::cout << "Server is listening for new connection: " << std::endl;
    }
}

void TCP_server::openConnection()
{
    length = sizeof(client);
    connection = accept(socket_file_descriptor, (struct sockaddr *)&client, &length);
    if (connection == -1)
    {
        std::cout << "Server is unable to accept the data from client.!" << std::endl;
        exit(1);
    }
}

void TCP_server::send()
{
    bzero(message, MESSAGE_LENGTH);
    std::cout << "Enter the message you want to send to the client: " << std::endl;
    std::cin >> message;
    ssize_t bytes = write(connection, message, sizeof(message));
    // Если передали >= 0  байт, значит пересылка прошла успешно
    if (bytes >= 0)
    {
        std::cout << "Data successfully sent to the client.!" << std::endl;
    }
}

std::string  TCP_server::receive()
{

    //std::string str; // потом убрать это

    bzero(message, MESSAGE_LENGTH);
    read(connection, message, sizeof(message));
    if (strncmp("end", message, 3) == 0)
    {
        std::cout << "Client Exited." << std::endl;
        std::cout << "Server is Exiting..!" << std::endl;
        // break;
    }

    std::cout << "Data received from client: " << message << std::endl;
    return message;
}

void TCP_server::closeConnection()
{
    // закрываем сокет, завершаем соединение
    close(socket_file_descriptor);
}