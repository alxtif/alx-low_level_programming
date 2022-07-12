#include <stdlib.h>
#include <time.h>
#include <stdio.h>

int main(void)
{ int n;
	srand(time(0));
	n = rand() - RAND_MAX / 2;

	if (n < 0)
	{
	printf("The number %d is negative\n");
	}

	else if (n > 0)
	{
	printf("The number %d is positive\n");
	}

	else
	{
	printf("The number %d is zero\n");
	}

	return (0);
}
