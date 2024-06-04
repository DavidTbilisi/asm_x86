#include <stdio.h>
#include <stdlib.h>

int main()
{
    int A[5] = {4,3,500,7,11};
    printf("Get Element: %d\n", get_element(A, 2));
    printf("Get Element: %d\n", get_element(A, 1));
    printf("Get Element: %d\n", get_element(A, 3));

    int a_sum = array_sum(A,5);
    printf("Sum of array is: %d\n", a_sum);

    int max_val = array_max(A,5);
    printf("Max of array is: %d\n", max_val);

    int least_val = array_least(A,5);
    printf("Least of array is: %d\n", least_val);

    int disp = dispersia(A, 5);
    printf("Difference: %d\n", disp);

    return 0;
}
