;Basic procedure example
;jnmcmeen@northeaststate.edu


.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data

.code
subproc PROC
	MOV eax,4
	ADD eax,12
	ret;
subproc ENDP

main PROC
  CALL subproc
  INVOKE ExitProcess, eax
main ENDP

END main        ;specify the program's entry point