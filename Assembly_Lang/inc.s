.global _increment

_increment:
            push %ebp # save current state into stack
            mov %esp, %ebp # save stack pointer to %ebp

            mov 8(%ebp), %eax # parameter is at offset 8 of %ebp
            inc %eax

            mov %ebp, %esp # restore
            pop %ebp #
            ret


# save old base pointer
# Make stack pointer the base pointer
