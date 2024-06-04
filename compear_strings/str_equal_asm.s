david_str:   .asciz "David"   # ASCII (Zero Terminated)
my_byte:     .byte 42         # 8-bit number ex: movb my_byte, %al
my_word:     .word 12345      # 16-bit number ex: movw my_word, %ax
my_long:     .long 123456789  # 32-bit number ex: movl my_long, %eax


.global _s_equal
.global _get_str
.global _test_long

_s_equal:
            push %ebp
            mov %esp, %ebp

            # get arguments
            mov 8(%ebp), %esi
            mov 12(%ebp), %edi

loop:
            movb (%esi), %bl
            cmpb %bl, (%edi)
            jne not_eq
            jmp eq
not_eq:
            mov $0, %eax
eq:
            cmp $0, (%esi)
            je end
            inc %esi
            inc %edi
            jmp loop
end:
            mov %ebp, %esp
            pop %ebp
            ret

_get_str:
            push %ebp
            mov %esp, %ebp

            mov $10, %ecx    # Dedicate 10 bytes
            push %ecx
            call _malloc
            add $4, %esp

            lea david_str, %esi
            mov %eax, %edi

copy_loop:
            movb (%esi), %bl
            movb %bl, (%edi)
            inc %esi
            inc %edi
            cmpb $0, %bl
            jne copy_loop

            mov %ebp, %esp
            pop %ebp
            ret


_test_long: push %ebp
            mov %esp,%ebp

            movl my_long, %eax

            mov %ebp, %esp
            pop %ebp
            ret
