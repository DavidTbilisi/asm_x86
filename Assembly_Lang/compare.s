.global _comparison

_comparison:    mov $5, %eax
                mov $13, %ebx
                mov $25, %ecx

                cmp %ebx, %eax # changes bits in flag register
                jg great
                mov %ebx, %eax
great:
                cmp %ecx, %eax
                jg great2
                mov %ecx, %eax
great2:
                ret
