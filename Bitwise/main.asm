;Basic bitwise operation example
;jnmcmeen@northeaststate.edu

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
;no data

.code
main PROC
  XOR eax, eax						;clear out the eax register by XOR with self
  MOV ax, 1010101010101010b			;move starting value in ax
  AND al, 00000000b					;and lower half of ax with 00h to clear bits
  OR ah, 11111111b					;or upper half of ax with FFh to set bits on
  XOR ax, 1111111111111111b			;xor ax with FFFFh to toggle all bits 

  INVOKE ExitProcess, eax
main ENDP

END main        ;specify the program's entry point