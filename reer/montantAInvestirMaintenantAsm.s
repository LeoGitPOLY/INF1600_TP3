.data
pourcentage:
.int 100
bloc: #résultats intermédiaires de (1 + t%interet)^-anneesAvantRetraite
.float 0
.text
.globl _ZN4Reer29montantAInvestirMaintenantAsmEv

_ZN4Reer29montantAInvestirMaintenantAsmEv:
pushl %ebp
movl %esp, %ebp
# DEBUT COMPLETION
movl 8(%esp), %eax #pointeur this attribue a eax

pushl %eax
call _ZN4Reer34montantAmasseFinalAvantRetraiteAsmEv
pushl %eax

fildl (%esp)
addl $4, %esp
popl %eax

fld1
fildl 20(%eax) #tauxInteret
fildl pourcentage
fdivrp
faddp
fstps bloc
fld1

movl 24(%eax), %ecx #anneeAvantRetraite
cmp $0, %ecx
jle continue #si exposant = 0 boucle doit etre ignorée

boucle:
flds bloc
fmulp
loop boucle

continue:
fdivrp

subl $4, %esp
frndint
fistpl (%esp)

popl %eax
# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:
leave
ret
