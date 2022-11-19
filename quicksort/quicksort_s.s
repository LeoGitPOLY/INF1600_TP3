.text
.globl quicksort_s

quicksort_s:
pushl %ebp
movl %esp, %ebp
pushl %ebx

# DEBUT COMPLETION
movl 12(%esp), %edx #topTab
movl 16(%esp), %ebx #left 0
movl 20(%esp), %ecx #right 8

movl %ebx, %eax
addl CUTOFF, %eax
cmpl %ecx, %eax 
jg retour

#call C methode medianOfThrees:
pushl %ecx
pushl %ebx
pushl %edx
call medianOfThree

#Set i et k:
movl 4(%esp), %ebx #i
movl 8(%esp), %ecx #k
subl $1, %ecx

boucle_inf:
pushl %ecx #push valeur de k

boucle_i:
pushl %eax #push valeur de medianOfThree
addl $1, %ebx
movl $4, %eax
mull %ebx
movl 8(%esp), %edx #toptab
addl %eax, %edx
popl %eax 

movl (%edx), %ecx
cmpl %eax, %ecx 
jl boucle_i

popl %ecx
pushl %ebx #push valeur de i

boucle_k:
pushl %eax #push valeur de medianOfThree
subl $1, %ecx
movl $4, %eax
mull %ecx
movl 8(%esp), %edx #toptab
addl %eax, %edx
popl %eax 

movl (%edx), %ebx
cmpl %eax, %ebx 
jg boucle_k

popl %ebx

#Verification de la condition
cmpl %ecx, %ebx
jge call_methode

movl (%esp), %edx
pushl %eax
pushl %ecx
pushl %ebx
pushl %edx
call swapRefs
popl %edx
popl %ebx
popl %ecx
popl %eax

jmp boucle_inf

call_methode:
popl %edx #T_
popl %ecx #left
popl %eax #right
subl $1, %eax

pushl %ecx
pushl %eax
pushl %ebx
pushl %edx
call swapRefs


popl %edx #T_
popl %ebx #i
popl %eax #right - 1
popl %ecx #left
subl $1, %ebx

pushl %eax
pushl %ebx
pushl %ecx
pushl %edx
call quicksort_s


popl %edx #T_
popl %ecx #left
popl %ebx #i - 1
popl %eax #right -1
addl $1, %eax
addl $2, %ebx

pushl %eax
pushl %ebx
pushl %edx
call quicksort_s

addl $12, %esp


# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:   
popl %ebx
leave
ret
