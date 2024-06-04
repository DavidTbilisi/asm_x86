#include <stdio.h>
#include <stdlib.h>

int main()
{
    int start = 0, end = 20;

    int res = loop1(start, end);
    printf("The last digit in loop is %d\n", res);

    return 0;
}
