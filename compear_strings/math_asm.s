.global _div

_div:   push %ebp
        mov %esp,%ebp

        mov 8(%ebp),%esi
        mov 12(%ebp),%edi

        mov $0,%edx         # for long division
        mov %esi,%eax
        div %edi

        mov %ebp, %esp
        pop %ebp
        ret
