#include "Modes.h"
#include <iostream>
#include <string>

int main(int argc, char *argv[]) {
  if (argc != 2 && argc != 3) {
    std::cerr << "Usage: " << argv[0] << " <client|server>" << std::endl;
    return 1;
  }

  std::string mode = argv[1];

  if (mode == "client") {

    std::cout << "Running in client mode" << std::endl;
    double Temperature = std::stod(argv[2]);
    Client(Temperature);
  } else if (mode == "server") {
    std::cout << "Running in server mode" << std::endl;
    Server();

  } else {
    std::cerr << "Invalid mode: " << mode << std::endl;
    return 1;
  }

  return 0;
}
