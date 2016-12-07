bits 32
  org 0x08048000

ehdr:
  db 0x7f, "ELF", 1, 1, 1, 0
  times 8 db 0
  dw 2
  dw 3
  dd 1
  dd _start
  dd phdr - $$
  dd 0
  dd 0
  dw ehdrsize
  dw phdrsize
  dw 1
  dw 0
  dw 0
  dw 0

ehdrsize equ $ - ehdr

phdr:
  dd 1
  dd 0
  dd $$
  dd $$
  dd filesize
  dd filesize
  dd 5
  dd 0x1000

phdrsize equ $ - phdr

_start:
  mov bl, 42
  xor eax, eax
  inc eax
  int 0x80

filesize equ $ - $$
