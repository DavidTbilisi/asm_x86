
.global _sum2
.global _sub2
.global _max2
.global _max3
.global _progresia
.global _multiplication

_sum2:  push %ebp #
        mov %esp, %ebp

        mov 8(%ebp), %eax
        mov 12(%ebp), %ebx
        add %ebx, %eax

        mov %ebp, %esp # restore stack
        pop %ebp
        ret

_sub2:  push %ebp
        mov %esp, %ebp

        mov 8(%ebp), %eax
        mov 12(%ebp), %ebx
        sub %ebx, %eax

        mov %ebp, %esp
        pop %ebp
        ret

_max2:  push %ebp
        mov %esp, %ebp

        mov 8(%ebp), %eax
        mov 12(%ebp), %ebx
        cmp %ebx, %eax

        jg great
        mov %ebx, %eax

great:
        mov %ebp, %esp
        pop %ebp

        ret


_max3:  push %ebp # Taking a photo of your clean living room before setting up for the party.
        mov %esp, %ebp # Rearranging the furniture and setting up the dining area for the party.

        mov 8(%ebp), %eax
        mov 12(%ebp), %ebx
        mov 16(%ebp), %ecx

        cmp %ebx, %eax
        jg great1
        mov %ebx, %eax
great1:
        cmp %ecx, %eax
        jg great2
        mov %ecx, %eax
great2:
        mov %ebp, %esp # Using the photo to start restoring the living room to its original state.
        pop %ebp # Putting the furniture back as it was in the photo.
        ret


_progresia: push %ebp
            mov %esp, %ebp

            mov 8(%ebp), %ecx
            mov $0, %eax

loop_start:
            cmp $0, %ecx
            je next
            add %ecx, %eax
            dec %ecx
            jmp loop_start
next:
            mov %ebp, %esp
            pop %ebp
            ret



_multiplication:    push %ebp
                    mov %esp, %ebp

                    mov 8(%ebp), %ecx
                    mov 12(%ebp), %eax

                    # mov $0, %edx
                    mul %ecx

                    mov %ebp, %esp
                    pop %ebp
                    ret


# RETURN after function execution
# Photo of Clean Room: A camera icon with a clean living room in the background.
# Setting Up: A person arranging furniture and setting the table.
# Dinner Party: People around a table, enjoying the party.
# Start Cleanup: The person checking the photo and moving furniture.
# Restoring State: The room looking like the photo again.
# Relaxing: The person watching TV on the couch.
