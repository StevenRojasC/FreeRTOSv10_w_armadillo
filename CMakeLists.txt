cmake_minimum_required(VERSION 3.1)
project(FreeRTOS_demo)
set(EXE_NAME FreeRTOS_demo)

# specify the C++ standard
# set(CMAKE_CXX_COMPILER riscv32-unknown-elf-gcc)
# set(PATH /opt/riscv/bin)
set(CMAKE_C_COMPILER riscv32-unknown-elf-gcc)
# set(CMAKE_CXX_STANDARD 11)
# set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_C_STANDARD 11)
# set(CMAKE_CXX_EXTENSIONS OFF)
# set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_C_FLAGS "-static -march=rv32imac -mabi=ilp32 --specs=nosys.specs -ffunction-sections")
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS)
link_directories(/opt/riscv/riscv32-unknown-elf/lib/)
# add_compile_options("-I. --entry main -L/opt/riscv/riscv32-unknown-elf/lib/")
# set(CMAKE_EXE_LINKER_FLAGS "-I. --entry main -L/opt/riscv/riscv32-unknown-elf/lib/")

# where is the target environment located
# set(CMAKE_FIND_ROOT_PATH  /opt/riscv/riscv32-unknown-elf/)

# search headers and libraries in the target environment
# set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
# set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

include_directories(./include/)
file(GLOB SRC_C "./src/*.c")
file(GLOB SRC_CXX "./src/*.cpp")
file(GLOB SRC_ASM "./src/*.S")

set_property(SOURCE ${SRC_ASM} PROPERTY LANGUAGE C)


add_executable(${EXE_NAME} ${SRC_C} ${SRC_CXX} ${SRC_ASM})