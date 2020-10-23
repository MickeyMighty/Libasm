section .text
	global ft_strcmp
ft_strcmp:
	mov rcx, -1
while:
	inc rcx
	mov dl, byte [rsi + rcx]
	mov dh, byte [rdi + rcx] 
	cmp dl, 0
	je end
	cmp dh, 0
	je end
	cmp dl, dh
	jne end
end:
	sub dl, dh
	movzx rax, dl
	ret
