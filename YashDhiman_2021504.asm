segment .data
inStr db "Enter the string which you want to print: ", 0x00
inNum db "Enter the number which you want to print: ", 0x00

formatStr db "%s", 0x00
formatNum db "%d", 0x00

outStr db "final String: %s", 0x0a, 0x00
outNum db 0x0a, "final number: %ld", 0x0a, 0x00

Num dq 0
Str db ""

segment .text
global main
extern printf
extern scanf

main:

    lea rdi, [inNum]
    xor rax, rax
    call printf                	

    lea rdi, [formatNum]
    lea rsi, [Num]
    xor rax, rax
    call scanf 
                	

        lea rdi, [inStr]
        xor rax, rax
        call printf

        lea rdi, [formatStr]
        lea rsi, [Str]
        xor rax, rax
        call scanf					


    lea rdi, [outNum]
    mov rsi, [Num]
    xor rax, rax
    call printf					



        lea rdi, [outStr]
        lea rsi, [Str]
        xor rax, rax
        call printf					
	



	    mov  eax,1      			
    mov  ebx,0       			
    int  0x80        