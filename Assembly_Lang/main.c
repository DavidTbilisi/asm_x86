#include <stdio.h>
#include <stdlib.h>

int main()
{
    int k = get_accumulator();
    printf("k=%d\n", k);

    int sum = add_1_and_2();
    printf("sum=%d\n", sum);

    int last = last_of_stack();
    printf("last=%d\n", last);

    int max = comparison();
    printf("max=%d\n", max);

    int v = 17;
    v = increment(v);
    printf("new value of v = %d\n", v);

    return 0;
}
