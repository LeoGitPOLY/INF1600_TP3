.data
tauxAugmentation:
.float 0
pourcentage:
.int 100
.text
.globl	_ZN4Reer15salaireFinalAsmEv

_ZN4Reer15salaireFinalAsmEv:
pushl %ebp
movl %esp, %ebp
# DEBUT COMPLETION

mov 8(%esp), %eax #Pointer this attribue a eax



fildl pourcentage



fildl 12(%eax) #Augmentation de salaire
fdivp
fld1
faddp
fstps tauxAugmentation
fildl 8(%eax) #salaireDepart

movl 24(%eax), %ecx #annéesAvantRetraite
subl $1, %ecx

boucle:
flds tauxAugmentation
fmulp
loop boucle

frndint
subl $4, %esp
fistpl (%esp)

popl %eax

# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:
leave
ret
