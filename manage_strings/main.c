#include <stdio.h>
#include <stdlib.h>

int str_to_int(char* st) {
    int res = 0, i = 0;

    while (st[i] != 0) {
        char c = st[i];
        res = res * 10;
        int d = c - '0';
        res = res + d;
        i++;
    }

    return res;
}

int main()
{
    char s[32] = "Hello 1956";
    printf("Length is: %d\n", str_len(s));

    char a[32] = "195k6";

    if (all_digits(a)) {
       printf("All Digits\n");
    } else {
        printf("Not all Digits\n");
    }

    int num, num2;
    if (all_digits(a)){
     num = str_to_int(a);
    } else {
     num = -1;
    }

    if (all_digits(a)){
     num2 = str_to_int_asm(a);
    } else {
     num2 = -1;
    }

    printf("num=%d\n", num);
    printf("asm num=%d\n", num2);

    printf("isInteger=%d\n", str_to_integer(a));

    return 0;
}
