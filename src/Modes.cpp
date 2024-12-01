#include "Modes.h"
#include "TCPClient.h"
#include "TCPServer.h"
#include <iostream>
void Client(double Temp) {
  // Set the server IP and port
  std::string server_ip = "127.0.0.1"; // Change this to the actual server IP
  int port = 8080;                     // Port number the server is listening on

  // Create the client
  TCPClient client(server_ip, port);

  // Connect to the server
  if (client.connectToServer()) {
    // Send a message
    std::string message = "Temperature: " + std::to_string(Temp);
    // client.sendMessage("Hello, Server!");
    client.sendMessage(message);
    client.sendMessage("bye!");

    // Receive a response
    client.receiveMessage();

    // client.receiveMessage();

    // Close the connection
    client.closeConnection();
  }
}
void Server() {
  int port = 8080;

  TCPServer server(port);
  server.start();
}
