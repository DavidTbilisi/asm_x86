.global _loop1

_loop1: push %ebp # push current state to stack
        mov %esp, %ebp

        mov 8(%ebp), %ebx       # loop start
        mov 12(%ebp), %ecx      # loop end
        # how to get unlimited parameters?

start:
        inc %ebx
        cmp %ecx, %ebx
        je out
        jmp start
out:
        mov %ebx, %eax

        # restore stack
        mov %ebp, %esp
        pop %ebp

        ret
