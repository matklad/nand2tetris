// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.
@8191
D=A
@R2
M=D

(LOOP)
@R1
M=-1

@KBD
D=M
@BLACK
D;JEQ
@R1
M=0
(BLACK)

@SCREEN
D=A
@R2
D=D+M
@R0
M=D

@R1
D=M
@R0
A=M
M=D

@R2
D=M

@DEC
D;JGT
@8192
D=A

(DEC)
D=D-1
@R2
M=D

@LOOP
0;JMP
