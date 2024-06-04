#include <stdio.h>
#include <stdlib.h>

int str_equal(char* c1, char* c2 ) {
    int i = 0;

    while (1) {
        if (c1[i] == c2[i]) {
            if (c1[i]==0) {
                return 1;
            }
        } else {
            return 0;
        }

        i++;
    }
    return 0;
}




int main()
{

    char s1[10] = "David";
    char s2[10] = "David";

    if (str_equal(s1, s2)) {
        printf("Equals\n");
    } else {
        printf("Different\n");
    }

    // ASM EQUAL
    if (s_equal(s1, s2)) {
        printf("ASM Equals\n");
    } else {
        printf("ASM Different\n");
    }

    printf("String is: %s\n", get_str());
    printf("Div result: %d\n", div(9, 2));

    printf("Variable L(32): %d\n", test_long());

    return 0;
}
