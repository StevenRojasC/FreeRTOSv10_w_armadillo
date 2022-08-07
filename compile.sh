riscv32-unknown-elf-gcc -static -march=rv32imac -mabi=ilp32 --specs=nosys.specs freertos_test.c port.c list.c  queue.c tasks.c timers.c heap_4.c pitch_detection.cpp portasm.S -larmadillo -lblas -lm -llapack -o freertos_test.o
objcopy -Oihex freertos_test.o  freertos_test.hex
