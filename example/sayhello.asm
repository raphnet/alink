bits 16
cpu 8086

segment code

extern msg_hello2

global sayHello
sayHello:
	push ax
	push dx

	mov ah, 09h
	mov dx,msg_hello
	int 21h

	mov ah, 09h
	mov dx,msg_hello2
	int 21h

	pop dx
	pop ax
	ret

segment data

msg_hello: db `hello\r\n$`


