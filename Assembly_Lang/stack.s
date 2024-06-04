.global _last_of_stack


_last_of_stack: mov $1, %eax
                push %eax # push to stack
                mov $2, %ebx
                push %ebx
                mov $3, %ecx
                push %ecx # push to stack

                pop %eax # pull from stack and delete
                pop %eax
                pop %eax
                ret

                # %esp - stack pointer








