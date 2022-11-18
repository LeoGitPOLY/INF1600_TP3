.data
salaireRetraite:
.int 0
pourcentage:
.int 100
bloc: #résultats intermédiaires de (1 + t%interet)^anneesDeRetraite
.float 0
.text
.globl _ZN4Reer34montantAmasseFinalAvantRetraiteAsmEv

_ZN4Reer34montantAmasseFinalAvantRetraiteAsmEv:
pushl %ebp
movl %esp, %ebp
# DEBUT COMPLETION
movl 8(%esp), %eax #pointeur this attribue a eax


fildl pourcentage
fildl 16(%eax) #salaireVoulu
fdivp


pushl %eax
call _ZN4Reer15salaireFinalAsmEv
pushl %eax

fildl (%esp)
addl $4, %esp
popl %eax

fmulp
frndint
fistpl salaireRetraite


fildl pourcentage
fildl 20(%eax) #tauxInteret
fdivp
fld1
faddp
fstps bloc
fld1

movl 4(%eax), %ecx #anneeDeRetraite

cmp $0, %ecx
jle continue #si exposant = 0 boucle doit etre ignorée

boucle:
flds bloc
fmulp
loop boucle
fsts bloc

continue:
fld1
fsubrp

fildl 20(%eax)
fildl pourcentage
fdivrp
flds bloc
fmulp
fdivrp

fildl salaireRetraite
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
