.text
.globl quicksort_s
quicksort_s:
pushl %ebp
movl %esp, %ebp
pushl %ebx

# DEBUT COMPLETION
movl 12(%esp), %eax #topTab
movl 16(%esp), %ebx #left 0
movl 20(%esp), %ecx #right 8

print :
pushl %ecx
pushl %eax
call printT
popl %eax
popl %ecx


movl %ebx, %edx
addl $2, %edx
cmpl %ecx, %edx
jnle retour




# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:   
popl %ebx
leave
ret
