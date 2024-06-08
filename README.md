# asm_x86
Course


## [REGISTERS](https://www.eecg.utoronto.ca/~amza/www.mindsec.com/files/x86regs.html)


General registers <br>
EAX EBX ECX EDX

Segment registers <br>
CS DS ES FS GS SS

Index and pointers <br>
ESI EDI EBP EIP ESP

Indicator <br>
EFLAGS


EAX: Called the Accumulator register. <br> 
               It is used for I/O port access, arithmetic, interrupt calls,
               etc...

EBX: Called the Base register <br>
               It is used as a base pointer for memory access
               Gets some interrupt return values

ECX: Called the Counter register <br>
               It is used as a loop counter and for shifts
               Gets some interrupt values

EDX: Called the Data register <br>
               It is used for I/O port access, arithmetic, some interrupt 
               calls.


|Bit|Label|Description|
|--|--|--|
| 0 | CF | Carry Flag |
| 2 | PF | Parity Flag |

