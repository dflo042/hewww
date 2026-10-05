# Assignment 3, Part 2: Print the integers 1 through 100

.text
main:
#Start and I
li $t1, 1
#End
li $t2, 101

loop:
#Print I
move $a0, $t1
li $v0, 1
syscall

#Print newline
li $a0, 10
li $v0, 11
syscall

#Increments
addi $t1, $t1, 1
#Loop back
bne $t1, $t2, loop

#Exit
li $v0, 10
syscall
