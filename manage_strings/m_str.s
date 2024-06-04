
.global _str_len
.global _all_digits

_str_len:   push %ebp
            mov %esp, %ebp

            mov 8(%ebp), %esi
            mov $0, %eax # length
loop_start:
            cmpb $0, (%esi)
            je next
            inc %eax
            inc %esi
            jmp loop_start
next:
            mov %ebp, %esp
            pop %ebp
            ret


_all_digits:    push %ebp
                mov %esp, %ebp

                mov 8(%ebp), %esi
                mov $1, %eax
loop_start1:
                cmpb $0, (%esi)
                je next1

                cmpb $'0', (%esi)
                jl false
                cmpb $'9', (%esi)
                jg false

                inc %esi

                jmp loop_start1
false:
                mov $0, %eax
next1:
                mov %ebp, %esp
                pop %ebp
                ret
