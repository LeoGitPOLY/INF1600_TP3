.text
.globl syracuse_s_iter
.globl afficher
syracuse_s_iter:
pushl   %ebp
movl    %esp, %ebp
pushl %ebx
# DEBUT COMPLETION
movl $0, %ecx
movl 12(%esp), %eax

print :
pushl %eax
pushl %ecx
call afficher
popl %ecx
popl %eax
incl %ecx



test :
cmp $1, %eax
je fin
movl $2, %ebx
movl $0, %edx
pushl %eax
div %ebx
cmp $0, %edx
je paire
jne impaire

paire :
addl $4, %esp
jmp print

impaire :
popl %eax
movl $3, %ebx
mull %ebx
incl %eax
jmp print


fin :
# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:   
popl %ebx
leave
ret
