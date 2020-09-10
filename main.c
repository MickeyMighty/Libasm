#include "libasm.h"

int	main()
{
	printf("\033[0;32m\n=== ft_strlen === \n\033[0m");
	printf("M: Vide => %zu\n", ft_strlen(""));
	printf("R: Vide => %zu\n", strlen(""));
	printf("M: Normal => %zu\n", ft_strlen("Hello"));
	printf("R: Normal => %zu\n", strlen("Hello"));
	printf("M: Long => %zu\n", ft_strlen("Hello world; test1; test2; test3; test4; test5\n"));
	printf("R: Long => %zu\n", strlen("Hello world; test1; test2; test3; test4; test5\n"));
	return (0);
}
