.global _start
_start:
#used for small delays
.equ TIMER1, 0XFF202020
#used for long countdown
.equ TIMER2, 0XFF202000
.equ VGA_CHAR_ADDR, 0X09000000
.equ VGA_PIXEL_ADDR, 0X08000000
.equ KEYBOARD_ADDR, 0XFF200100
.equ JTAG2, 0xFF201000
.equ LED, 0xFF200000
.equ time, 5000000
.equ longtime, 1000000000
.equ JP1, 0xFF200060
.equ sensor0, 0xFFFFFBFF
.section .data


ADDRESS:
.skip 4



START:
.incbin"start.bin"

BACKGROUND:
.incbin"background.bin"

WON:
.incbin"won.bin"

LOST:
.incbin"lost.bin"


MODE:
.skip 4

#This is the paragraph that the player will type (short test version for now)
PARAGRAPH:  
	.byte 0X6e
	.byte 0X6f
	.byte 0X72
	.byte 0X6d
	.byte 0X61
	.byte 0X6c
	.byte 0X20
	.byte 0X70
	.byte 0X65
	.byte 0X6f
	.byte 0X70
	.byte 0X6c
	.byte 0X65
	.byte 0X20
	.byte 0X62
	.byte 0X65
	.byte 0X6c
	.byte 0X69
	.byte 0X65
	.byte 0X76
	.byte 0X65
	.byte 0X20
	.byte 0X74
	.byte 0X68
	.byte 0X61
	.byte 0X74
	.byte 0X20
	.byte 0X69
	.byte 0X66
	.byte 0X20
	.byte 0X69
	.byte 0X74
	.byte 0X20
	.byte 0X69
	.byte 0X73
	.byte 0X20
	.byte 0X6e
	.byte 0X6f
	.byte 0X74
	.byte 0X20
	.byte 0X62
	.byte 0X72
	.byte 0X6f
	.byte 0X6b
	.byte 0X65
	.byte 0X6e
	.byte 0X2c
	.byte 0X20
	.byte 0X64
	.byte 0X6f
	.byte 0X6e
	.byte 0X27
	.byte 0X74
	.byte 0X20
	.byte 0X66
	.byte 0X69
	.byte 0X78
	.byte 0X20
	.byte 0X69
	.byte 0X74
	.byte 0X2c
	.byte 0X20
	.byte 0X65
	.byte 0X6e
	.byte 0X67
	.byte 0X69
	.byte 0X6e
	.byte 0X65
	.byte 0X65
	.byte 0X72
	.byte 0X73
	.byte 0X20
	.byte 0X62
	.byte 0X65
	.byte 0X6c
	.byte 0X69
	.byte 0X65
	.byte 0X76
	.byte 0X65
	.byte 0X20
	.byte 0X74
	.byte 0X68
	.byte 0X61
	.byte 0X74
	.byte 0X20
	.byte 0X69
	.byte 0X66
	.byte 0X20
	.byte 0X69
	.byte 0X74
	.byte 0X20
	.byte 0X69
	.byte 0X73
	.byte 0X20
	.byte 0X6e
	.byte 0X6f
	.byte 0X74
	.byte 0X20
	.byte 0X62
	.byte 0X72
	.byte 0X6f
	.byte 0X6b
	.byte 0X65
	.byte 0X6e
	.byte 0X2c
	.byte 0X20
	.byte 0X69
	.byte 0X74
	.byte 0X20
	.byte 0X64
	.byte 0X6f
	.byte 0X65
	.byte 0X73
	.byte 0X20
	.byte 0X6e
	.byte 0X6f
	.byte 0X74
	.byte 0X20
	.byte 0X68
	.byte 0X61
	.byte 0X76
	.byte 0X65
	.byte 0X20
	.byte 0X65
	.byte 0X6e
	.byte 0X6f
	.byte 0X75
	.byte 0X67
	.byte 0X68
	.byte 0X20
	.byte 0X66
	.byte 0X65
	.byte 0X61
	.byte 0X74
	.byte 0X75
	.byte 0X72
	.byte 0X65
	.byte 0X73
	.byte 0X20
	.byte 0X79
	.byte 0X65
	.byte 0X74
	.byte 0X2C
	.byte 0X20
	.byte 0X77
	.byte 0X68
	.byte 0X61
	.byte 0X74
	.byte 0X20
	.byte 0X69
	.byte 0X73
	.byte 0X20
	.byte 0X74
	.byte 0X68
	.byte 0X65
	.byte 0X20
	.byte 0X64
	.byte 0X69
	.byte 0X66
	.byte 0X66
	.byte 0X65
	.byte 0X72
	.byte 0X65
	.byte 0X6e
	.byte 0X63
	.byte 0X65
	.byte 0X20
	.byte 0X62
	.byte 0X65
	.byte 0X74
	.byte 0X77
	.byte 0X65
	.byte 0X65
	.byte 0X6e
	.byte 0X20
	.byte 0X65
	.byte 0X6c
	.byte 0X65
	.byte 0X63
	.byte 0X74
	.byte 0X72
	.byte 0X69
	.byte 0X63
	.byte 0X61
	.byte 0X6c
	.byte 0X20
	.byte 0X65
	.byte 0X6e
	.byte 0X67
	.byte 0X69
	.byte 0X6e
	.byte 0X65
	.byte 0X65
	.byte 0X72
	.byte 0X73
	.byte 0X20
	.byte 0X61
	.byte 0X6e
	.byte 0X64
	.byte 0X20
	.byte 0X63
	.byte 0X69
	.byte 0X76
	.byte 0X69
	.byte 0X6c
	.byte 0X20
	.byte 0X65
	.byte 0X6e
	.byte 0X67
	.byte 0X69
	.byte 0X6e
	.byte 0X65
	.byte 0X65
	.byte 0X72
	.byte 0X73
	.byte 0X2c
	.byte 0X20
	.byte 0X65
	.byte 0X6c
	.byte 0X65
	.byte 0X63
	.byte 0X74
	.byte 0X72
	.byte 0X69
	.byte 0X63
	.byte 0X61
	.byte 0X6c
	.byte 0X20
	.byte 0X65
	.byte 0X6e
	.byte 0X67
	.byte 0X69
	.byte 0X6e
	.byte 0X65
	.byte 0X65
	.byte 0X72
	.byte 0X73
	.byte 0X20
	.byte 0X62
	.byte 0X75
	.byte 0X69
	.byte 0X6c
	.byte 0X64
	.byte 0X20
	.byte 0X77
	.byte 0X65
	.byte 0X61
	.byte 0X70
	.byte 0X6f
	.byte 0X6e
	.byte 0X73
	.byte 0X2c
	.byte 0X20
	.byte 0X63
	.byte 0X69
	.byte 0X76
	.byte 0X69
	.byte 0X6c
	.byte 0X20
	.byte 0X65
	.byte 0X6e
	.byte 0X67
	.byte 0X69
	.byte 0X6e
	.byte 0X65
	.byte 0X65
	.byte 0X72
	.byte 0X73
	.byte 0X20
	.byte 0X62
	.byte 0X75
	.byte 0X69
	.byte 0X6c
	.byte 0X64
	.byte 0X20
	.byte 0X74
	.byte 0X68
	.byte 0X65
	.byte 0X20
	.byte 0X74
	.byte 0X61
	.byte 0X72
	.byte 0X67
	.byte 0X65
	.byte 0X74
	.byte 0X73
	.byte 0X2E




.section .text
movia sp,0x00003A98
#turn off all LED's
movia r18,LED
stwio r0,0(r18)


#draw start screen
#------------------------------------------------------------------------------
#clear VGA pixel
movia r9,VGA_PIXEL_ADDR
movia r12,START
movia r17,152960
add r12,r12,r17  
movia r15,0X0803BE7E	#this is the end address!!

movi r14,0b0000000000000000
clear1:
beq r9,r15,cleared1
sthio r14,0(r9)
addi r9,r9,2
br clear1

cleared1:
#clear works


movi r14,320
movi r13,0 #counter
movia r9,VGA_PIXEL_ADDR

#draw start screen
draw1:
beq r9,r15,drawn1	#r9: moves along the address. r15: end address
beq r13,r14,change_line4


ldhio r16,0(r12)
sthio r16,0(r9)
addi r9,r9,2
addi r13,r13,1
addi r12,r12,2
br continue5

change_line4:
movi r13,0
subi r9,r9,640 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000000 #add y

subi r12,r12,1280

continue5:
br draw1


drawn1:


#-------------------------------------------------------------------------------
#clear VGA text
movi r14,80
movi r13,0
movia r9,VGA_CHAR_ADDR
movia r10,0X09001DCF
movi r12,0X20

clear_loop2:
beq r13,r14,change_line6
beq r9,r10,done2
stbio r12,0(r9)
addi r9,r9,1
addi r13,r13,1
br continue6

change_line6:
movi r13,0
subi r9,r9,80 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000

continue6:
br clear_loop2
done2:
#cleared works


#-------------------------------------------------------------------------------------------------------


#put address of PARAGRAPH into ADDRESS in memory as global variable
movia r19,ADDRESS
movia r20,PARAGRAPH
stw r20,0(r19)

#enable TIMER interrupt
#...
#enable KEYBOARD read interrupt
movia r16,JTAG2
movi r14,0b01
stwio r14,4(r16)

#Enable external interrupts for timer and JTAG 
movi r14, 0b100000001
wrctl ienable, r14

#Enable PIE
movi r14, 0b1
wrctl status, r14

#use VGA to display the paragraph/start screen/win screen/ lost screen depending on mode. mode will be a global var in memory
#just display paragraph for now


#set mode to 0
movia r9,MODE
movi r8,0
stw r8,0(r9)



branchFOREVER:

movia r16, JP1

#movia r9,0xFFFFFFFF
#stwio r9, 0(r8)				#initialize everything to off???

movia r17, 0x07F557FF
stwio r17, 4(r16)				#store the magic number for directions

#read sensor 0
movia r18, sensor0
#and r11,r11,r9					#keep values of motor. do I need to?
stwio r18, 0(r16) 				#turn sensor0 on
poll_sensor0: 
ldwio r19, 0(r16)
andi r19, r19, 0x00000800			#sensor0 valid bit
bne r19,r0,poll_sensor0
ldwio r19,0(r16)
srli r19,r19,27
andi r19,r19,0x0000000F

movi r20,0xF
bne r19,r20,touched
#if the sensor not touched, go to end1
br end1

#won
touched:
#turn timer interrupt off
movia r16, TIMER2
stwio r0,4(r16)
#clear characters VGA
#-----------------------------------------------------------
#clear VGA text
movi r14,80
movi r13,0
movia r9,VGA_CHAR_ADDR
movia r10,0X09001DCF
movi r12,0X20

clear_loop3:
beq r13,r14,change_line8
beq r9,r10,done3
stbio r12,0(r9)
addi r9,r9,1
addi r13,r13,1
br continue8

change_line8:
movi r13,0
subi r9,r9,80 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000

continue8:
br clear_loop3
done3:
#cleared works


#-------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------
#clear VGA pixel
movia r9,VGA_PIXEL_ADDR
movia r12,WON
movia r17,152960
add r12,r12,r17  
movia r15,0X0803BE7E	#this is the end address!!

movi r14,0b0000000000000000
clear3:
beq r9,r15,cleared3
sthio r14,0(r9)
addi r9,r9,2
br clear3

cleared3:
#clear works


movi r14,320
movi r13,0 #counter
movia r9,VGA_PIXEL_ADDR

#draw won screen
draw4:
beq r9,r15,drawn4	#r9: moves along the address. r15: end address
beq r13,r14,change_line7


ldhio r16,0(r12)
sthio r16,0(r9)
addi r9,r9,2
addi r13,r13,1
addi r12,r12,2
br continue7

change_line7:
movi r13,0
subi r9,r9,640 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000000 #add y

subi r12,r12,1280

continue7:
br draw4

drawn4:
#---------------------------------------------------------
#reset ADDRESS to the beginning of PARAGRAPH
movia r19,ADDRESS
movia r20,PARAGRAPH
stw r20,0(r19)

#set mode to 2
movia r15,MODE
movi r16,2
stw r16,0(r15)

end1:
br branchFOREVER







.section .exceptions, "ax"
.global ISR

ISR:




#push callee saved registers on the stack
addi sp,sp,-4
stw r16,0(sp)
addi sp,sp,-4
stw r17,0(sp)
addi sp,sp,-4
stw r18,0(sp)
addi sp,sp,-4
stw r19,0(sp)
addi sp,sp,-4
stw r20,0(sp)


rdctl et,ipending
movi r15,0x1
#timer2 interrupt after 30s (may change) on IRQ0
beq et,r15,TIMER_ISR

#Keyboard is on IRQ 8
movi r15,0b100000000
beq et,r15,KEYBOARD_ISR

#no HW interrupt, exit
beq et,r0,exit

#------------------------------------------------------------------------------------------

TIMER_ISR:

#clear characters VGA
#-----------------------------------------------------------
#clear VGA text
movi r14,80
movi r13,0
movia r9,VGA_CHAR_ADDR
movia r10,0X09001DCF
movi r12,0X20

clear_loop5:
beq r13,r14,change_line11
beq r9,r10,done7
stbio r12,0(r9)
addi r9,r9,1
addi r13,r13,1
br continue11

change_line11:
movi r13,0
subi r9,r9,80 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000

continue11:
br clear_loop5
done7:
#cleared works


#-------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------
#clear VGA pixel
movia r9,VGA_PIXEL_ADDR
movia r12,LOST
movia r17,152960
add r12,r12,r17  
movia r15,0X0803BE7E	#this is the end address!!

movi r14,0b0000000000000000
clear6:
beq r9,r15,cleared6
sthio r14,0(r9)
addi r9,r9,2
br clear6

cleared6:
#clear works


movi r14,320
movi r13,0 #counter
movia r9,VGA_PIXEL_ADDR

#draw won screen
draw7:
beq r9,r15,drawn7	#r9: moves along the address. r15: end address
beq r13,r14,change_line12


ldhio r16,0(r12)
sthio r16,0(r9)
addi r9,r9,2
addi r13,r13,1
addi r12,r12,2
br continue12

change_line12:
movi r13,0
subi r9,r9,640 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000000 #add y

subi r12,r12,1280

continue12:
br draw7

drawn7:
#---------------------------------------------------------
#reset ADDRESS to the beginning of PARAGRAPH
movia r19,ADDRESS
movia r20,PARAGRAPH
stw r20,0(r19)

#set mode to 2
movia r15,MODE
movi r16,2
stw r16,0(r15)

#acknowledge by writting 0 to timeout bit
movia r16,TIMER2
stwio r0,0(r16)
br exit
#------------------------------------------------------------------------------------------
KEYBOARD_ISR:

#get mode, put in et
movia r15,MODE
ldw et,0(r15)

#select modes in KEYBOARD ISR
beq et,r0, mode0
movi r15,1
beq et,r15, mode1
movi r15,2
beq et,r15, mode2
movi r15,3
beq et,r15, mode3
movi r15,4
beq et,r15, mode4
br exit

mode4:
br exit


mode0:
#set mode to 1
movia r15,MODE
movi et,1
stw et,0(r15)

#draw main screen
#------------------------------------------------------------------------------
#clear VGA
movia r9,VGA_PIXEL_ADDR
movia r12,BACKGROUND
movia r17,152960
add r12,r12,r17  
movia r15,0X0803BE7E	#this is the end address!!

movi r14,0b0000000000000000
clear2:
beq r9,r15,cleared2
sthio r14,0(r9)
addi r9,r9,2
br clear2

cleared2:
#clear works


movi r14,320
movi r13,0 #counter
movia r9,VGA_PIXEL_ADDR


draw2:
beq r9,r15,drawn2	#r9: moves along the address. r15: end address
beq r13,r14,change_line5


ldhio r16,0(r12)
sthio r16,0(r9)
addi r9,r9,2
addi r13,r13,1
addi r12,r12,2
br continue4

change_line5:
movi r13,0
subi r9,r9,640 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000000 #add y

subi r12,r12,1280

continue4:
br draw2

drawn2:

#draw the paragraph
#------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------
#clear VGA character
movi r14,80
movi r13,0
movia r9,VGA_CHAR_ADDR
movia r10,0X09001DCF
movi r12,0X20

clear_loop:
beq r13,r14,change_line1
beq r9,r10,done
stbio r12,0(r9)
addi r9,r9,1
addi r13,r13,1
br continue1

change_line1:
movi r13,0
subi r9,r9,80 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000

continue1:
br clear_loop
done:

movia r10,PARAGRAPH #paragraph counter
movi r11,0X2E#"." mark
movia r9,VGA_CHAR_ADDR	#increment the position in VGA character buffer
#movia r8, VGA_CHAR_ADDR
movi r13,0
#loop to print all characters from memory

print_loop:
ldb r12,0(r10)
beq r12,r11,printed	#"." marking the end of paragraph

movi r14,70
beq r13,r14,change_line	#r13 is the x counter
#print
stbio r12,0(r9)#this is the else
addi r10,r10,1
addi r9,r9,1 
addi r13,r13,1
br continue

change_line:
movi r13,0
subi r9,r9,70 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000


continue:

br print_loop

printed:
#print the period mark
stbio r12,0(r9)

#start timer interupt
#load time
movia r16, TIMER2
movui r17,%lo(longtime)
stwio r17,8(r16)
movui r17,%hi(longtime)
stwio r17,12(r16)
#clear timeout bit
stwio r0,0(r16)

#start the timer countdown and enable interrupt
movi r17,0b0101
stwio r17,4(r16)

br exit





mode1:



#movi et,0
#stwio et,0(r21)

#get key pressed
movia r16,JTAG2
#poll valid bit of keyboard read
poll:
ldwio et,0(r16)
andi et,et,0x8000
beq et,r0,poll
#key entered by user's ASCII code in et
ldwio et,0(r16)
andi et,et,0xFF

movia r19,ADDRESS
ldw r18,0(r19)
#current letter in memory in r20
ldb r20,0(r18)

beq et,r20, correctlyTyped

wronglyTyped:
#back the car
movia r8, JP1
#stwio r9, 0(r8)				#initialize everything to off
movia r9, 0x07F557FF
stwio r9, 4(r8)				#store the magic number for directions

movia r9,0xFFFFFFFC
stwio r9,0(r8)
#stwio r9,0(r10)

call delay


movia r9,0xFFFFFFFF
stwio r9,0(r8)
br exit

correctlyTyped:
#increment the address pointer to the paragraph in memory
#r18 is the address of PARAGRAPH
addi r18,r18,1
stw r18,0(r19)
#reprint the paragraph by deleting the character that was just correctly typed
#-------------------------------------------------------------------
#clear VGA	
movi r14,80
movi r13,0
movia r9,VGA_CHAR_ADDR
movia r10,0X09001DCF
movi r12,0X20

clear_loop1:
beq r13,r14,change_line2
beq r9,r10,done1
stbio r12,0(r9)
addi r9,r9,1
addi r13,r13,1
br continue2

change_line2:
movi r13,0
subi r9,r9,80 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000

continue2:
br clear_loop1
done1:
#cleared works

movia r19,ADDRESS
ldw r10,0(r19)
#EVEN PRINTING THE WHOLE PARAGRAPH GIVES WEIRD STUFF!!
#movia r10,PARAGRAPH #paragraph counter

movi r11,0X2E#"." mark
movia r9,VGA_CHAR_ADDR	#increment the position in VGA character buffer
#movia r8, VGA_CHAR_ADDR
movi r13,0
movi r14,70
#loop to print all characters from memory


print_loop1:
#Load the current character in loop
ldb r12,0(r10)
beq r12,r11,printed1	#"." marking the end of paragraph


beq r13,r14,change_line3	#r13 is the x counter
#print
stbio r12,0(r9)#this is the else
addi r10,r10,1
addi r9,r9,1 
addi r13,r13,1
br continue3

change_line3:
movi r13,0
subi r9,r9,70 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000


continue3:
br print_loop1

printed1:
#print the period mark
stbio r12,0(r9)

movi r12,0X20
#if it was correctly typed and it's a space, user completed a word. advance the car
beq et,r12,advance_car
#else, exit
br exit

advance_car:
#advance the car
movia r8, JP1
#stwio r9, 0(r8)				#initialize everything to off
movia r9, 0x07F557FF
stwio r9, 4(r8)				#store the magic number for directions

movia r9,0xFFFFFFFE
stwio r9,0(r8)

call delay


movia r9,0xFFFFFFFF
stwio r9,0(r8)

br exit
#---------------------------------------------------------------------------

mode2:

#set mode to 1
movia r15,MODE
movi et,1
stw et,0(r15)

#draw main screen
#------------------------------------------------------------------------------
#clear VGA
movia r9,VGA_PIXEL_ADDR
movia r12,BACKGROUND
movia r17,152960
add r12,r12,r17  
movia r15,0X0803BE7E	#this is the end address!!

movi r14,0b0000000000000000
clear4:
beq r9,r15,cleared4
sthio r14,0(r9)
addi r9,r9,2
br clear4

cleared4:
#clear works


movi r14,320
movi r13,0 #counter
movia r9,VGA_PIXEL_ADDR


draw5:
beq r9,r15,drawn5	#r9: moves along the address. r15: end address
beq r13,r14,change_line9


ldhio r16,0(r12)
sthio r16,0(r9)
addi r9,r9,2
addi r13,r13,1
addi r12,r12,2
br continue9

change_line9:
movi r13,0
subi r9,r9,640 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000000 #add y

subi r12,r12,1280

continue9:
br draw5

drawn5:

#draw the paragraph
#------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------
movia r10,PARAGRAPH #paragraph counter
movi r11,0X2E#"." mark
movia r9,VGA_CHAR_ADDR	#increment the position in VGA character buffer
#movia r8, VGA_CHAR_ADDR
movi r13,0
#loop to print all characters from memory

print_loop3:
ldb r12,0(r10)
beq r12,r11,printed3	#"." marking the end of paragraph

movi r14,70
beq r13,r14,change_line10	#r13 is the x counter
#print
stbio r12,0(r9)#this is the else
addi r10,r10,1
addi r9,r9,1 
addi r13,r13,1
br continue10

change_line10:
movi r13,0
subi r9,r9,70 #reset x to the beginning
#movia r9,VGA_CHAR_ADDR
addi r9,r9,0b10000000


continue10:

br print_loop3

printed3:
#print the period mark
stbio r12,0(r9)

#start timer interupt
#load time
movia r16, TIMER2
movui r17,%lo(longtime)
stwio r17,8(r16)
movui r17,%hi(longtime)
stwio r17,12(r16)
#clear timeout bit
stwio r0,0(r16)

#start the timer countdown and enable interrupt
movi r17,0b0101
stwio r17,4(r16)



br exit
#------------------------------------------------------------------------------
mode3:
br exit



exit:

#pop callee saved registers
ldw r20,0(sp)
addi sp,sp,4
ldw r19,0(sp)
addi sp,sp,4
ldw r18,0(sp)
addi sp,sp,4
ldw r17,0(sp)
addi sp,sp,4
ldw r16,0(sp)
addi sp,sp, 4




subi ea,ea,4
eret


delay:

addi sp,sp,-4	#callee saved register
stw r16,0(sp)
addi sp,sp,-4
stw r17,0(sp)

movia r16, TIMER1
movui r17,%lo(time)
stwio r17,8(r16)
movui r17,%hi(time)
stwio r17,12(r16)

stwio r0,0(r16)
movi r17,4
stwio r17,4(r16)
  
Poll_delay:
ldwio r17,0(r16)
andi r17,r17,1
beq r17,r0,Poll_delay

#pop
ldw r17,0(sp)
addi sp,sp,4
ldw r16,0(sp)
addi sp,sp, 4

ret

#change: when a word is typed wrong, don't advance the pointer, make the car go backwards
#if it's correct, redraw the paragraph using what's left to type.
#load background picture for paragraph mode
#write nested loops to control mode. use global variable to store mode