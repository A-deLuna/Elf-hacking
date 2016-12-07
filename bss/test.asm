bits 32

global _start
section .bss
num resd 1
section .text
_start:
  mov eax, 1
  mov dword [num], 42
  mov ebx, dword [num]
  int 0x80
