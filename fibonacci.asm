.data
val1 : 0
val2 : 1
maior : 0
cont : 0
.text
_PRINCIPAL:
LDI 1
STO cont
LDI 0
STO maior
INI_ENQ1:
LDI 7
STO 1001
LD cont
STO 1000
SUB 1001
BGT FIMFACA1
#LD $in_port
LD val1
STO 1000
LD val2
STO 1001
ADD 1000
STO 1000
STO val1
LD val2
STO 1001
ADD 1000
STO 1001
STO val2
BLE FIMSE1
BLE FIM_ENQ
FIMSE1:
LD cont
ADDI 1
STO cont
JMP INI_ENQ1
FIMFACA1:
LD maior
STO $out_port
HLT 0
FIM_ENQ:
LDI 0
STO cont
