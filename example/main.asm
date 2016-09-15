bits 16
cpu 8086

segment code

extern sayHello

..start:
	mov ax,data
	mov ds,ax
	mov ax,stack
	mov ss,ax
	mov sp,stacktop

	call sayHello

exit:
	mov ah,04CH
	mov al,00
	int 21h

segment data

global msg_hello2
msg_hello2: db `Hello2\r\n$`

segment stack stack
	resb 1024
stacktop:
