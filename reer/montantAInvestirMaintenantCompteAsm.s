.data
interet:
.float 1.04 #constante utilisée dans le fichier compte.cpp
.text
.globl _ZN6Compte29montantAInvestirMaintenantAsmEv

_ZN6Compte29montantAInvestirMaintenantAsmEv:
pushl %ebp
movl %esp, %ebp
# DEBUT COMPLETION
movl 8(%esp), %eax #pointeur this attribue a eax

fildl 28(%eax) #encaisse

pushl %eax
call _ZN4Reer15salaireFinalAsmEv
pushl %eax

fildl (%esp)
addl $4, %esp
popl %eax

fld1
movl 24(%eax), %ecx #anneeAvantRetraite
cmp $0, %ecx
jle continue #si exposant = 0 boucle doit etre ignorée

boucle:
flds interet
fmulp
loop boucle

continue:
fdivrp
fsubrp

subl $4, %esp
frndint
fistpl (%esp)

popl %eax
# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:
leave
ret
