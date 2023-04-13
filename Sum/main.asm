;Basic sum example
;jnmcmeen@northeaststate.edu

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
sum DWORD ?					;create a sum variable in memory

.code
main PROC
  MOV eax, 42				;move 42 into eax register
  ADD eax, 8				;add 8 to eax register
  MOV sum, eax				;move value in eax to sum in memory
  INVOKE ExitProcess, eax	;end the program
main ENDP

END main			        ;specify the program's entry point