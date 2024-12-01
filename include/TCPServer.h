#pragma once

#include <arpa/inet.h>
#include <cstring>
#include <iostream>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>

#define BUFFER_SIZE 1024

class TCPServer {
private:
  int server_fd;
  struct sockaddr_in address;
  int port;
  int addrlen;

public:
  TCPServer(int port) : port(port), addrlen(sizeof(address)) {
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
      perror("Socket failed");
      exit(EXIT_FAILURE);
    }

    // Set socket options
    int opt = 1;
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt,
                   sizeof(opt))) {
      perror("setsockopt failed");
      exit(EXIT_FAILURE);
    }

    /*Configure server address */
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(port);

    if (bind(server_fd, (struct sockaddr *)&address, sizeof(address)) < 0) {
      perror("Bind failed");
      exit(EXIT_FAILURE);
    }

    std::cout << "Server initialized on port " << port << std::endl;
  }

  void start() {
    if (listen(server_fd, 3) < 0) {
      perror("Listen failed");
      exit(EXIT_FAILURE);
    }

    std::cout << "Server is listening on port " << port << "..." << std::endl;

    while (true) {
      int new_socket;
      if ((new_socket = accept(server_fd, (struct sockaddr *)&address,
                               (socklen_t *)&addrlen)) < 0) {
        perror("Accept failed");
        exit(EXIT_FAILURE);
      }

      handleClient(new_socket);
    }
  }

private:
  void handleClient(int client_socket) {
    char *client_ip = inet_ntoa(address.sin_addr);
    std::cout << "Client connected from IP: " << client_ip << std::endl;

    char buffer[BUFFER_SIZE] = {0};

    int valread = read(client_socket, buffer, BUFFER_SIZE);
    if (valread > 0) {
      std::cout << "Received message: " << buffer << std::endl;

      std::string response = "Message received.";
      std::cout << "Sending acknowledgment. " << response << std::endl;

      send(client_socket, response.c_str(), response.size(), 0);
    }

    memset(buffer, 0, BUFFER_SIZE); /*reset the buffer*/

    close(client_socket);
  }
};
