section .text
	global ft_strcmp
ft_strcmp:
	xor rax, rax
	xor rcx, rcx
	jmp check

inc:
	inc rcx
	jmp check

check:
	cmp byte [rdi + rcx], 0
	je cal_diff 
	cmp byte [rsi + rcx], 0
	je cal_diff
	jmp check_diff

check_diff:
	mov dl, byte [rdi + rcx] 
	mov dh, byte [rsi + rcx]
	sub dl, dh
	cmp dl, 0
	je inc
	jne cal_diff

cal_diff:
	mov dl, byte [rdi + rcx] 
	mov dh, byte [rsi + rcx]
	sub dl, dh
	cmp dl, 0
	jnle greater	
	je equal	
	jnge lower	

greater:
	mov rax, 1
	ret

equal:
	mov rax, 0
	ret

lower:
	mov rax, -1
	ret
