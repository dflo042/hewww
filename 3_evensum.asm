# Assignment 3, Part 3: Sum of the even integers from 1 through 100
# Expected result: 2550

.data
msg: .asciiz "Sum of even integers 1-100: "

.text
main:
#Sum
li $t0, 0
#Start and I (first even number)
li $t1, 2
#End
li $t2, 102

loop:
#Accumulator
add $t0, $t0, $t1
#Increments by 2 to stay on even numbers
addi $t1, $t1, 2
#Loop back
bne $t1, $t2, loop

#Print the message
li $v0, 4
la $a0, msg
syscall

#Print the sum
move $a0, $t0
li $v0, 1
syscall

#Exit
li $v0, 10
syscall
