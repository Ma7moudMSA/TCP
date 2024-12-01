cmake_minimum_required(VERSION 3.10)
project(TCP)

# Set source and header directories
set(SRC_DIR src)
set(INC_DIR include)

# Add executable target
add_executable(${PROJECT_NAME} main.cpp ${SRC_DIR}/Modes.cpp)

# Set include directories
target_include_directories(${PROJECT_NAME} PUBLIC ${INC_DIR})