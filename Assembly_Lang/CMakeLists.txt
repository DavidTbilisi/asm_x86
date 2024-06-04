cmake_minimum_required(VERSION 3.27)
project(Assembly_Lang C)

set(CMAKE_C_STANDARD 11)

add_executable(Assembly_Lang pass.s asm_test1.s second.s stack_asm.s main.c)
