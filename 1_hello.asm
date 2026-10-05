# Assignment 3, Part 1: Hello World

.data
hello: .asciiz "Hello World\n"

.text
main:
#Print the string
li $v0, 4
la $a0, hello
syscall

#Exit
li $v0, 10
syscall
