#include <stdlib.h>
#include <time.h>
#include <stdio.h>

int main(void) /**
	 * precise if a number is positive or negative
	 * RETURN: 0
	 */
{ int n;  /** n is a random variable */
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

	return (0); /** result of function*/
}
