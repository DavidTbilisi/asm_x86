
.global _get_accumulator # export to main.c

_get_accumulator:   mov $123, %eax
                    ret

# General purpose registers
# %eax, %ebx, %ecx, %edx 32 bit registers
# %ax 16 bit lower register
# %al, %ah 8 bit low, high registers

# String
# %esi string source
# %edi string destination

# Stack
# %esp stack pointer.
# %ebp base pointer. Holds the top address of the stack
# %eip Index Pointer. Holds the offset of the next instruction (read only)


# Flags
# %eflags

# Bit   Label    Desciption
# ---------------------------
# 0      CF      Carry flag
# 2      PF      Parity flag
# 4      AF      Auxiliary carry flag
# 6      ZF      Zero flag
# 7      SF      Sign flag
# 8      TF      Trap flag
# 9      IF      Interrupt enable flag
# 10     DF      Direction flag
# 11     OF      Overflow flag
# 12-13  IOPL    I/O Priviledge level
# 14     NT      Nested task flag
# 16     RF      Resume flag
# 17     VM      Virtual 8086 mode flag
# 18     AC      Alignment check flag (486+)
# 19     VIF     Virutal interrupt flag
# 20     VIP     Virtual interrupt pending flag
# 21     ID      ID flag
