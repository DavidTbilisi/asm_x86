.global _add_1_and_2

_add_1_and_2:   mov $1, %eax
                mov $2, %ebx
                add %ebx, %eax # sum will be in %eax
                ret
