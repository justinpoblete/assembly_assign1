;Justin Poblete jpoblete4@csu.fullerton.edu

global sum_product
extern printf
extern scanf

segment .data

;-----Messages------


sum_product.initialmessage db "This program was built by Justin Poblete",10,0

sum_product.promptmessage1 db "Please input the first integer:  ", 0

sum_product.outputmessage1 db "You entered %ld", 10, 0

sum_product.promptmessage2 db "Please input the second integer:  ", 0

sum_product.sum_message db "The sum of these two integers is %ld", 10, 0

sum_product.product_message db "The product of these two integers is %ld", 10, 0

sum_product.return_message db "The integer 5 will be returned to the calling program.", 10, 0

stringformat db "%s", 0

integerformat db "%ld", 0

segment .bss
;empty

segment .text

sum_product:

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


;--------initial message

mov qword rax, 0
mov       rdi, stringformat
mov       rsi, .initialmessage
call      printf

;--------prompt for first int

mov qword rax, 0
mov       rdi, stringformat
mov       rsi, .promptmessage1
call      printf

;-------obtain first int

mov       rax, 0
mov       rdi, integerformat
push      qword 0
mov       rsi, rsp
call      scanf
pop       r15

;------outputmessage1

mov qword rax, 0
mov       rdi, .outputmessage1
mov       rsi, r15
call      printf

;--------prompt for second int

mov qword rax, 0
mov       rdi, stringformat
mov       rsi, .promptmessage2
call      printf

;-------obtain second int

mov       rax, 0
mov       rdi, integerformat
push     qword 0
mov       rsi, rsp
call      scanf
pop       r14

;------outputmessage2

mov qword rax, 0
mov       rdi, .outputmessage1
mov       rsi, r14
call      printf

;-------add the two ints

mov       r13, r15    ;hold original value

add       r15, r14

;-------sum_message

mov qword rax, 0
mov       rdi, .sum_message
mov       rsi, r15
call      printf

;-------multiply the two ints

imul      r14, r13

;------product_message

mov qword rax, 0
mov       rdi, .product_message
mov       rsi, r14
call      printf


;------return_message

mov qword rax, 0
mov       rdi, stringformat
mov       rsi, .return_message
call      printf



;------return 5

mov rax, 5


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
