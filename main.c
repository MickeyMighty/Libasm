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
	printf("\033[0;32m\n=== ft_strcmp vrai  === \n\033[0m");
	printf("Vide, Vide => %d\n", strcmp("", ""));
	printf("Normal, Vide => %d\n", strcmp("Hello", ""));
	printf("Vide, Normal => %d\n", strcmp("", "World"));
	printf("Normal, Normal: same => %d\n", strcmp("Hello", "Hello"));
	printf("Normal, Normal: diff => %d\n", strcmp("Hello", "Hel"));
	printf("Normal, Normal: diff => %d\n", strcmp("Hel", "Hello"));

		printf("\033[0;32m\n=== ft_strcmp === \n\033[0m");
	printf("Vide, Vide => %d\n", ft_strcmp("", ""));
	printf("Normal, Vide => %d\n", ft_strcmp("Hello", ""));
	printf("Vide, Normal => %d\n", ft_strcmp("", "World"));
	printf("Normal, Normal: same => %d\n", ft_strcmp("Hello", "Hello"));
	printf("Normal, Normal: diff => %d\n", ft_strcmp("Hello", "Hel"));
	printf("Normal, Normal: diff => %d\n", ft_strcmp("Hel", "Hello"));
}
