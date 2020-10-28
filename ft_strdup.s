section .text
	global ft_strdup
	extern malloc

ft_strdup:
	xor rax, rax
	xor rcx, rcx
	cmp rdi, 0
	jmp ft_strlen
	
increment:
	inc rcx

ft_strlen:
	cmp byte [rdi + rcx], 0	
	jne increment
	
malloc_string:
	push rdi
	mov rdi, rcx
	call malloc
	pop rdi
	cmp rax, 0
	xor rcx, rcx

ft_strcpy:
	mov dl, byte[rdi + rcx]
	mov byte[rax + rcx], dl
	inc rcx
	cmp dl, 0
	jne ft_strcpy
	je end

end:
	ret
