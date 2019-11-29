.data

data: .space 1001
output: .asciiz"\n"
notvalid: asciiz "NaN"
comma: .asciiz ","

.text
main:

li $v0, 8
la $a0, data #Getting User Input
li $a1. 1001
syscall

jal SubA

SubA:

sub $sp, $sp,4 #creates stack space
sw $a0, 0($sp) #puts input in stack
lw $t1, 0($sp) # stores the input into $t1
addi $sp,$sp,4 # moves the stack pointer up
move $t7, $t0 # stores beginning of input into $t7

run:

li $t3,0 #Looking for tabs or spaces
li $t0, -1 #used for invaild input
lb $s0, ($t1) # loads the bit that $t0 is pointing to
beq $s0, 0, invalsubstring# check for null
beq $s0, 10, invalsubstring #checks for new line
beq $s0, 44, invalloop #check for comma


invalsubstring:

invalloop:


li $t3

SubB:

SubC:

