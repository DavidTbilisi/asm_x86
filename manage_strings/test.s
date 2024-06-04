.global _str_len
.global _all_digits
.global _str_to_int_asm
.global _str_to_integer

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

                push %esi


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
                pop %esi        # restore reg

                mov %ebp, %esp
                pop %ebp
                ret


_str_to_int_asm:    push %ebp
                    mov %esp, %ebp

                    push %edx
                    push %ecx
                    push %esi
                    push %ebx

                    mov $0,%edx
                    mov $0, %eax        # ret value
                    mov $10, %ecx

                    mov 8(%ebp),%esi    # get string pointer
loop_s:
                    cmpb $0,(%esi)
                    je loop_end

                    mul %ecx            # ecx * eax
                    mov $0,%ebx

                    movb (%esi),%bl     # ebx 0th byte
                    sub $'0',%bl

                    add %ebx, %eax

                    inc %esi
                    jmp loop_s
loop_end:

                    pop %ebx
                    pop %esi
                    pop %ecx
                    pop %edx

                    mov %ebp, %esp
                    pop %ebp
                    ret

_str_to_integer:    push %ebp
                    mov %esp, %ebp

                    mov 8(%ebp),%esi    # str pointer

                    push %esi
                    call _all_digits
                    add $4, %esp

                    cmp $0,%eax
                    je not_true

                    push %esi
                    call _str_to_int_asm
                    add $4,%esp

                    jmp true
not_true:
                    mov $-1,%eax
true:

                    mov %ebp, %esp
                    pop %ebp
                    ret
