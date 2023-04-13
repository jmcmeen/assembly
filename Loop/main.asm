;Basic loop example
;jnmcmeen@northeaststate.edu

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
num1 dword 0
num2 dword 10

.code
main PROC
  mov eax, num1
  mov ebx, num2

  looplabel:
    cmp eax, ebx
    jae exit
    inc eax
    jmp looplabel

  exit:
    INVOKE ExitProcess, eax
main ENDP

END main        ;specify the program's entry point