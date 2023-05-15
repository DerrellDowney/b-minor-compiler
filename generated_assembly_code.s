# BEGIN FUNCTION main
.text
.global main
main:
 PUSHQ %rbp
 MOVQ %rsp, %rbp
 SUBQ $8, %rsp
 PUSHQ %rbx
 PUSHQ %r12
 PUSHQ %r13
 PUSHQ %r14
 PUSHQ %r15
# BEGIN body of function main
 MOVQ $0, %rbx
 MOVQ %rbx, -8(%rbp)
 MOVQ $0, %rbx
 MOVQ %rbx, -8(%rbp)
 .L1:
# START relational operator
 MOVQ -8(%rbp), %r10
 MOVQ $10, %r11
 CMPQ %r11, %r10
 MOVQ $1, %r10
 JL .L3
 MOVQ $0, %r10
.L3:
# END relational operator
 CMPQ $0, %r10
 JE .L2
 PUSHQ %r10
 PUSHQ %r11
 PUSHQ %rdi
 MOVQ -8(%rbp), %r11
 MOVQ %r11, %rdi
 CALL print_integer
 POPQ %rdi
 POPQ %r11
 POPQ %r10
 PUSHQ %r10
 PUSHQ %r11
 PUSHQ %rdi
.data
.L4: .string "\n"
.text
 LEAQ .L4, %r11
 MOVQ %r11, %rdi
 CALL print_string
 POPQ %rdi
 POPQ %r11
 POPQ %r10
 MOVQ -8(%rbp), %r11
 MOVQ $1, %r12
 ADDQ %r11, %r12
 MOVQ %r12, -8(%rbp)
 JMP .L1
 .L2:
 MOVQ $0, %r11
 MOV %r11, %rax
 JMP .main_epilogue
# END body of function main
.main_epilogue:
 POPQ %r15
 POPQ %r14
 POPQ %r13
 POPQ %r12
 POPQ %rbx
 MOVQ %rbp, %rsp
 POPQ %rbp
 RET
# END FUNCTION main
