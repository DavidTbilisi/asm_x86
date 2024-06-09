# asm_x86
Course


## [REGISTERS](https://www.eecg.utoronto.ca/~amza/www.mindsec.com/files/x86regs.html)

[Link 1](https://www.cs.oberlin.edu/~bob/cs331/Class%20Notes/March/March%2014/x86-64%20Assembler.pdf)
[ASCII Interactive](https://typst.app/tools/ascii-table/)
[OP CODES](https://sparksandflames.com/files/x86InstructionChart.html)

Segment registers <br>
CS DS ES FS GS SS

Index and pointers <br>
ESI EDI EBP EIP ESP

Indicator <br>
EFLAGS

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

CS         : Holds the Code segment in which your program runs.
             Changing its value might make the computer hang.

DS         : Holds the Data segment that your program accesses.
             Changing its value might give erronous data.

ES,FS,GS   : These are extra segment registers available for
             far pointer addressing like video memory and such.

SS         : Holds the Stack segment your program uses.
             Sometimes has the same value as DS.
             Changing its value can give unpredictable results,
             mostly data related.



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

<br><br><br><br><br><br><br>















