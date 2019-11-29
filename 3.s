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
beq $s0, 0, insidesubstring# check for null
beq $s0, 10, insidesubstring #checks for new line
beq $s0, 44, invalloop #check for comma
beq $s0, 9, skip # checks for tabs character
beq $s0, 32, skip #checksc checks for space character
move $t7, $t1 #stores first non-space/tab character
j loop # starts loop over


skip:
addi $t1,$t1,1 #move $t1 to the next element
j run

loop:


lb $s0, ($t1) # loads the bit that $t0 is pointing to
beq $s0, 0,next# check for null
beq $s0, 10, next #checks for new line
addi $t1,$t1,1 #move the $t1 to the next element
beq $s0, 44, substring #check if bit is a comma

check:
bgt $t3,0, invalloop #checks to see if I have spaces or tabs between my valid characters:

invalloop:

insidesubstring:

addi $t2,$t2,1 #amount of substring
sub $sp, $sp,4# creating space in stack

sw $t0, 0($sp) #puts $t7 into the stack

move $t7,$t1  # store the pointer to the bit after the comma
lb $s0, ($t1) # loads the bit that $t1 is -> to

beq $s0, 0, cont1 #
beq $s0, 10, cont1
beq $s0,44, invalloop
li $t4,0 #resets the amount of valid characters to 0
li $t3,0 #resets my space checker  to 0
j run




li $t3

SubB:

SubC:

