section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc

_ft_strdup:
	xor rax, rax
	xor rcx, rcx
		
end:
	ret