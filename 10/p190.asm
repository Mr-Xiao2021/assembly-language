assume cs:code

data segment
  db 'conversation'
data ends

code segment

start:	mov ax,data
      	mov ds,ax
      	mov si,0		;ds:siָ���ַ������������ݣ����ڿռ���׵�ַ
      
      	mov cx,12		;cx����ַ����ĳ���
		call capital

      	mov ax,4c00h
      	int 21h
		
capital:and byte ptr [si],11011111b
		inc si
		loop capital
      	ret
		
code ends

end start