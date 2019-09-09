extern printf

extern scanf

extern fgets

extern stdin

global hello_world

segment .data

;-----Messages------


hello_world.initialmessage db "This program was built by Justin Poblete",10,0

hello_world.promptmessage1 db "Please input the first integer:  ", 0

hello_world.outputmessage1 db "You entered %1.18lf", 10

hello_world.promptmessage2 db "Please input the second integer:  ", 0

hello_world.sum_message db "The sum of these two integers is %1.18lf", 10

hello_world.product_message db "The product of these two integers is %1.18lf", 10

hello_world.return_message db "The integer 5 will be returned to the calling program.", 0

stringformat db "%s", 0

eight_byte_format db "%lf", 0

segment .bss

segment .text

hello_world:

push       rbp                                              ;Save a copy of the stack base pointer
mov        rbp, rsp                                         ;We do this in order to be 100% compatible with C and C++.
push       rbx                                              ;Back up rbx
push       rcx                                              ;Back up rcx
push       rdx                                              ;Back up rdx
push       rsi                                              ;Back up rsi
push       rdi                                              ;Back up rdi
push       r8                                               ;Back up r8
push       r9                                               ;Back up r9
push       r10                                              ;Back up r10
push       r11                                              ;Back up r11
push       r12                                              ;Back up r12
push       r13                                              ;Back up r13
push       r14                                              ;Back up r14
push       r15                                              ;Back up r15
pushf                                                       ;Back up rflags

;--------initial message

mov qword rax, 0
mov       rdi, stringformat
mov       rsi, .initialmessage
call      printf

;--------prompt for floating point

mov qword rax, 0
mov       rdi, stringformat
mov       rsi, .promptmessage1
call      printf

;-------obtain floating point number


;------output the message1

mov         rax, 1   ;1 number will be output
mov         rdi, .outputmessage1
call        printf


;--------prompt for floating point 2

mov qword rax, 0
mov       rdi, stringformat
mov       rsi, .promptmessage2
call      printf

;-------obtain floating point number 2


;------output the message2

mov         rax, 1  ;1 number will be output
mov         rdi, .outputmessage1
call        printf

;-------add two floating point numbers


;-------sum_message

mov qword rax, 0
mov       rdi, stringformat
mov       rsi, .sum_message
call      printf


;------product_message

mov qword rax, 0
mov       rdi, stringformat
mov       rsi, .product_message
call      printf


;------return_message

mov qword rax, 0
mov       rdi, stringformat
mov       rsi, .return_message
call      printf





popf                                                        ;Restore rflags
pop        r15                                              ;Restore r15
pop        r14                                              ;Restore r14
pop        r13                                              ;Restore r13
pop        r12                                              ;Restore r12
pop        r11                                              ;Restore r11
pop        r10                                              ;Restore r10
pop        r9                                               ;Restore r9
pop        r8                                               ;Restore r8
pop        rdi                                              ;Restore rdi
pop        rsi                                              ;Restore rsi
pop        rdx                                              ;Restore rdx
pop        rcx                                              ;Restore rcx
pop        rbx                                              ;Restore rbx
pop        rbp                                              ;Restore rbp

ret
