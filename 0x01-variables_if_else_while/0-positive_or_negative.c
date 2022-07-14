#include <stdlib.h>
#include <time.h>
#include <stdio.h>

/**
 * Short description of this main function,
 * it prescise if n is positive or negative.
 * n is a random variable.
 * RETURN: 0 when success.
 */

int main(void) /**
		* Start of function main
		* ok
		*/
{ int n;
	srand(time(0));
	n = rand() - RAND_MAX / 2;

	if (n < 0)
	{
	printf("%d is negative\n", n);
	}

	else if (n > 0)
	{
	printf("%d is positive\n", n);
	}

	else
	{
	printf("%d is zero\n", n);
	}

	return (0);
}
