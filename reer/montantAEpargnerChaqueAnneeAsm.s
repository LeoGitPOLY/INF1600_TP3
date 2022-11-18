.data
pourcentage:
.int 100
tauxInteret:
.float 0
bloc: #résultats intermédiaires de (1 + t%interet)^anneesAvantRetraite
.float 0
.text
.globl _ZN4Reer30montantAEpargnerChaqueAnneeAsmEv

_ZN4Reer30montantAEpargnerChaqueAnneeAsmEv:
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

fildl pourcentage
fildl 20(%eax) #tauxInteret
fdivp
fsts tauxInteret

fld1
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
fstps bloc

continue:
flds tauxInteret
flds bloc
fld1
fsubrp
fdivrp
fmulp

subl $4, %esp

frndint
fistpl (%esp)

popl %eax


# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:
leave
ret
