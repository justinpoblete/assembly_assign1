#!/bin/bash



#Justin Poblete jpoblete4@csu.fullerton.edu



rm *.o
rm *.out
rm *.lis

echo "Assemble sum_product.asm"
nasm -f elf64 -l sum_product.lis -o sum_product.o sum_product.asm

echo "Compile arithmatic.cpp"
g++ -c -Wall -m64 -std=c++14 -o arithmatic.o -fno-pie -no-pie arithmatic.cpp

echo "Link all object files"
g++ -m64 -std=c++14 -fno-pie -no-pie arithmatic.o sum_product.o -o test.out

echo "Now the program will run"
./test.out
