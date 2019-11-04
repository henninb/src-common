  .file  "jdate.c"
  .section .rdata,"dr"
  .align 8
LC0:
  .long  0
  .long  1071644672
  .text
.globl _julian_date
  .def  _julian_date;  .scl  2;  .type  32;  .endef
_julian_date:
  pushl  %ebp
  movl  %esp, %ebp
  pushl  %ebx
  subl  $8, %esp
  addl  $8000, 8(%ebp)
  cmpl  $2, 12(%ebp)
  jg  L2
  decl  8(%ebp)
  leal  12(%ebp), %eax
  addl  $12, (%eax)
L2:
  movl  8(%ebp), %eax
  movl  %eax, -8(%ebp)
  sall  $3, -8(%ebp)
  addl  %eax, -8(%ebp)
  sall  $3, -8(%ebp)
  addl  %eax, -8(%ebp)
  movl  -8(%ebp), %eax
  sall  $2, %eax
  addl  %eax, -8(%ebp)
  movl  8(%ebp), %eax
  movl  %eax, -12(%ebp)
  cmpl  $0, -12(%ebp)
  jns  L3
  addl  $3, -12(%ebp)
L3:
  movl  -12(%ebp), %eax
  sarl  $2, %eax
  movl  -8(%ebp), %ebx
  addl  %eax, %ebx
  movl  8(%ebp), %ecx
  movl  $1374389535, %eax
  imull  %ecx
  sarl  $5, %edx
  movl  %ecx, %eax
  sarl  $31, %eax
  subl  %eax, %edx
  movl  %edx, %eax
  subl  %eax, %ebx
  movl  8(%ebp), %ecx
  movl  $1374389535, %eax
  imull  %ecx
  sarl  $7, %edx
  movl  %ecx, %eax
  sarl  $31, %eax
  subl  %eax, %edx
  movl  %edx, %eax
  addl  %eax, %ebx
  movl  12(%ebp), %edx
  movl  %edx, %eax
  sall  $3, %eax
  addl  %edx, %eax
  movl  %eax, %edx
  sall  $4, %edx
  addl  %edx, %eax
  leal  3(%eax), %ecx
  movl  $1717986919, %eax
  imull  %ecx
  sarl  %edx
  movl  %ecx, %eax
  sarl  $31, %eax
  subl  %eax, %edx
  movl  %edx, %eax
  leal  (%ebx,%eax), %eax
  addl  16(%ebp), %eax
  subl  $1200913, %eax
  pushl  %eax
  fildl  (%esp)
  leal  4(%esp), %esp
  fldl  LC0
  fsubrp  %st, %st(1)
  addl  $8, %esp
  popl  %ebx
  popl  %ebp
  ret
