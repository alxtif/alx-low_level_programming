#include <stdio.h>
#include <stdlib.h>
#include <time.h>
/**
 * main - Entry code
 * Description: prints "last digit"
 * Return: 0
 */
int main(void)
{
	int  n, l;

	srand(time(0));
	n = rand() - RAND_MAX / 2;
	l = n % 10;
	printf("Last digit of %d is %d an is", n, l);

	if (l > 5)
	printf("grater than 5\n");

	else if (l == 0)
		printf("0\n");

	else if (l < 6)
		printf("less than 6 and not 0\n");

	return (0);
}
