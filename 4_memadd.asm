# Assignment 3, Part 4: Load two integers from memory, add, store back
# Expected result: 7 + 8 = 15 stored at "result"

.data
num1: .word 7
num2: .word 8
result: .word 0

.text
main:
#Load both integers from memory into registers
lw $t0, num1
lw $t1, num2

#Add the values together
add $t2, $t0, $t1

#Store the sum back to memory
sw $t2, result

#Print the result
move $a0, $t2
li $v0, 1
syscall

#Exit
li $v0, 10
syscall
