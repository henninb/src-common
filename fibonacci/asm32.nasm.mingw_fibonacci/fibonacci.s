  .file  "fib.c"
  .text
.globl _fibonacci
  .def  _fibonacci;  .scl  2;  .type  32;  .endef
_fibonacci:
  pushl  %ebp
  movl  %esp, %ebp
  pushl  %ebx
  subl  $8, %esp
  cmpl  $0, 8(%ebp)
  jne  L2
  movl  $0, -8(%ebp)
  jmp  L1
L2:
  cmpl  $1, 8(%ebp)
  jne  L4
  movl  $1, -8(%ebp)
  jmp  L1
L4:
  movl  8(%ebp), %eax
  decl  %eax
  movl  %eax, (%esp)
  call  _fibonacci
  movl  %eax, %ebx
  movl  8(%ebp), %eax
  subl  $2, %eax
  movl  %eax, (%esp)
  call  _fibonacci
  addl  %eax, %ebx
  movl  %ebx, -8(%ebp)
L1:
  movl  -8(%ebp), %eax
  addl  $8, %esp
  popl  %ebx
  popl  %ebp
  ret
