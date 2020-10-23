section .text
	global ft_strcpy
ft_strcpy:
	mov rcx, 0
while:
	mov dl, byte [rsi + rcx]
	cmp dl, 0
	je endwhile
	mov byte [rdi + rcx], dl
	inc rcx
	jmp while
endwhile:
	mov dl, 0
	mov byte [rdi + rcx], dl
	mov rax, rdi
	ret
