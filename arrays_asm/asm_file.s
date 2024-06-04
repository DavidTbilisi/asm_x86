
.global _get_element
.global _array_sum
.global _array_max
.global _array_least
.global _dispersia


_get_element:   push %ebp
                mov %esp, %ebp
                mov 8(%ebp), %esi # მასივის დასაწყისი
                mov 12(%ebp), %ecx # მასივში პოზიცია
                shl $2, %ecx

                add %ecx, %esi
                mov (%esi), %eax # პოზიციაში ელემენტის მნიშვნელობა

                mov %ebp, %esp
                pop %ebp
                ret

_array_sum:     push %ebp
                mov %esp, %ebp

                mov 8(%ebp), %esi
                mov 12(%ebp), %ecx
                mov $0, %eax
loop_start:

                cmp $0, %ecx
                je next
                add (%esi), %eax
                add $4, %esi
                dec %ecx
                jmp loop_start
next:

                mov %ebp, %esp
                pop %ebp
                ret


_array_max:     push %ebp
                mov %esp, %ebp

                push %esi
                push %ecx

                # get arguments
                mov 8(%ebp), %esi  # start point
                mov 12(%ebp), %ecx # possition
                mov (%esi), %eax

loop_start2:
                cmp $0, %ecx
                je next2
                cmp (%esi), %eax
                jg isgreater
                mov (%esi), %eax
isgreater:
                add $4, %esi
                dec %ecx
                jmp loop_start2

next2:
                pop %ecx
                pop %esi

                mov %ebp, %esp
                pop %ebp
                ret


_array_least:   push %ebp
                mov %esp, %ebp

                push %esi
                push %ecx

                # get arguments
                mov 8(%ebp), %esi  # start point
                mov 12(%ebp), %ecx # possition
                mov (%esi), %eax

loop_start3:
                cmp $0, %ecx
                je next3
                cmp (%esi), %eax
                jl isleast
                mov (%esi), %eax
isleast:
                add $4, %esi
                dec %ecx
                jmp loop_start3
next3:
                pop %ecx
                pop %esi

                mov %ebp, %esp
                pop %ebp
                ret

_dispersia:     push %ebp
                mov %esp, %ebp

                mov 8(%ebp), %esi
                mov 12(%ebp), %ecx

                push %ecx
                push %esi
                call _array_least
                mov %eax, %ebx
                add $8, %esp

                push %ecx
                push %esi
                call _array_max
                add $8, %esp
                sub %ebx, %eax

                mov %ebp, %esp
                pop %ebp
                ret
