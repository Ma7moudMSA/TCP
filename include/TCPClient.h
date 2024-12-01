#pragma once

#include <arpa/inet.h>
#include <cstring>
#include <iostream>
#include <unistd.h>
#define BUFFER_SIZE 1024

class TCPClient {
private:
  int client_fd;
  struct sockaddr_in server_address;
  std::string server_ip;
  int server_port;

public:
  TCPClient(const std::string &ip, int port)
      : server_ip(ip), server_port(port) {
    // Create socket
    if ((client_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
      perror("Socket creation error");
      exit(EXIT_FAILURE);
    }

    // Configure server address
    server_address.sin_family = AF_INET;
    server_address.sin_port = htons(server_port);

    // Convert IP address from text to binary form
    if (inet_pton(AF_INET, server_ip.c_str(), &server_address.sin_addr) <= 0) {
      perror("Invalid address or address not supported");
      exit(EXIT_FAILURE);
    }

    std::cout << "Client initialized with server IP: " << server_ip
              << " and port: " << server_port << std::endl;
  }

  // Connect to the server
  bool connectToServer() {
    if (connect(client_fd, (struct sockaddr *)&server_address,
                sizeof(server_address)) < 0) {
      perror("Connection failed");
      return false;
    }
    std::cout << "Connected to server at " << server_ip << ":" << server_port
              << std::endl;
    return true;
  }

  // Send a message to the server
  void sendMessage(const std::string &message) {
    send(client_fd, message.c_str(), message.size(), 0);
    std::cout << "Message sent: " << message << std::endl;
  }

  // Receive a response from the server
  std::string receiveMessage() {
    char buffer[BUFFER_SIZE] = {0};
    int valread = read(client_fd, buffer, BUFFER_SIZE);
    if (valread > 0) {
      std::string response(buffer);
      std::cout << "Received response: " << response << std::endl;
      return response;
    } else {
      std::cerr << "Failed to receive message from server" << std::endl;
      return "";
    }
  }

  // Close the client socket
  void closeConnection() {
    close(client_fd);
    std::cout << "Connection closed" << std::endl;
  }
};