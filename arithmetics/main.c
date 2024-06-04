#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a, b, c;

    printf("a=");
    scanf("%d", &a);

    printf("b=");
    scanf("%d", &b);

    printf("c=");
    scanf("%d", &c);

    int res = sum2(a, b);
    printf("sum=%d\n", res);

    int minus = sub2(a, b);
    printf("minus=%d\n", minus);

    int max = max2(a, b);
    printf("max=%d\n", max);


    int max_3 = max3(a, b, c);
    printf("max3=%d\n", max_3);

    int progress = progresia(a);
    printf("progresia=%d\n", progress);

    int m = multiplication(a, b);
    printf("%d*%d=%d\n", a, b, m);

    return 0;
}
