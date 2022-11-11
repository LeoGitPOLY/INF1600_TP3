.text
.globl syracuse_s_rec
.globl afficher
syracuse_s_rec:
pushl  %ebp
movl   %esp, %ebp
pushl %ebx
# DEBUT COMPLETION
movl 16(%esp), %ecx
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
je retour
movl $2, %ebx
movl $0, %edx
pushl %eax
div %ebx
cmp $0, %edx
je paire
jne impaire

paire :
addl $4, %esp
jmp callf

impaire :
popl %eax
movl $3, %ebx
mull %ebx
incl %eax
jmp callf

callf:
pushl %ecx
pushl %eax
call syracuse_s_rec
# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:   
popl %ebx
leave
ret
