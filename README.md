# asm_x86
Course


## [REGISTERS](https://www.eecg.utoronto.ca/~amza/www.mindsec.com/files/x86regs.html)

[Link 1](https://www.cs.oberlin.edu/~bob/cs331/Class%20Notes/March/March%2014/x86-64%20Assembler.pdf)
[ASCII Interactive](https://typst.app/tools/ascii-table/)
[OP CODES](https://sparksandflames.com/files/x86InstructionChart.html)

Segment registers <br>
CS DS ES FS GS SS

## Index and pointers <br>
`ESI` Destination index for string operations. This is used for string and memory array copying. Useful in repetitive data processing where it helps **streamline operations** like copying arrays, comparing strings, or scanning memory for a value.<br>
`EDI` Source index for string operations. Essentially, this stores the start of the string that you’re saving to memory and is also used for string/memory copying.  <br>

## Stack pointers <br>
- stack grows downwards in memory <br>


`ESP` (Extended Stack Pointer) Top of the stack. Last pushed value.  <br>
`EBP`  (Extended Base Pointer) Base of the stack. Everything moves around it.   <br> 
`EIP` (Extended Instruction Pointer) Holds the address of the next instruction to be executed in the program.
```asm

push eax        ; Pushes the value of EAX onto the stack
                ; ESP is decreased by 4 (size of EAX)
pop ebx         ; Pops the value from the top of the stack into EBX
                ; ESP is increased by 4
```

---

### General registers
`EAX`: Called the **Accumulator** register. <br> 
               It is used for I/O port access, arithmetic, interrupt calls,
               etc...

`EBX`: Called the **Base** register <br>
               It is used as a base pointer for memory access
               Gets some interrupt return values

`ECX`: Called the **Counter** register <br>
               It is used as a loop counter and for shifts
               Gets some interrupt values

`EDX`: Called the **Data** register <br>
               It is used for I/O port access, arithmetic, some interrupt 
               calls.


## Segment registers

`CS`         : Holds the Code segment in which your program runs.
             Changing its value might make the computer hang. <br>

`DS`         : Holds the Data segment that your program accesses.
             Changing its value might give erronous data. <br>

`ES,FS,GS`   : These are extra segment registers available for
             far pointer addressing like video memory and such. <br>

`SS`         : Holds the Stack segment your program uses.
             Sometimes has the same value as DS.
             Changing its value can give unpredictable results,
             mostly data related. <br>

---
## Flags
|Bit|Label|Description|
|--|--|--|
| 0 | CF | Carry Flag |
| 2 | PF | Parity Flag |
|4  |    AF |     Auxiliary carry flag|
|6  |   ZF     | Zero flag|
|7  |    SF   |   Sign flag|
|8  |    TF   |   Trap flag|
|9  |    IF   |   Interrupt enable flag|
|10  |   DF   |   Direction flag|
|11   |  OF   |   Overflow flag|
|12-13 | IOPL |   I/O Priviledge level|
|14   |  NT   |   Nested task flag|
|16   |  RF   |   Resume flag|
|17   |  VM   |   Virtual 8086 mode flag|
|18   |  AC   |   Alignment check flag (486+)|
|19   |  VIF  |   Virutal interrupt flag|
|20   |  VIP  |   Virtual interrupt pending flag|
|21   |  ID   |   ID flag|


## Stack frame
```asm
; Function prologue
push ebp             ; Save old base pointer
mov ebp, esp         ; Set new base pointer

; Function body (access local variables and parameters)

; Function epilogue
mov esp, ebp         ; Restore old stack pointer
pop ebp              ; Restore old base pointer
ret                  ; Return to caller

```

## malloc 

```asm
mov edi, 40 ; Allocate 40 bytes of space
```
<br><br><br><br><br><br><br>















