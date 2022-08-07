#!/usr/bin/env bash

set -e

# [ ! -d Build ] && mkdir Build
rm -rf Build && mkdir Build
(
    cd Build
    export PATH=$PATH:/opt/riscv/bin
    # export CC=/opt/riscv/bin/riscv32-unknown-elf-gcc
    cmake ..
    cmake --build .
    objcopy -Oihex FreeRTOS_demo  FreeRTOS_demo.hex
)