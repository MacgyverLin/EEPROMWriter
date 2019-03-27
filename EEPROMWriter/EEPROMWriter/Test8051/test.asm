    .globl _asm_func_PARM_2
    .globl _asm_func

    .area OSEG
_asm_func_PARM_2:
    .ds 1

    .area CSEG
_asm_func:
    mov a,dpl
    add a,_asm_func_PARM_2
    mov dpl,a
    mov dph,#0x00
    ret
