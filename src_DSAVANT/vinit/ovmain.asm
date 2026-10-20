; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    mov ax, word [bss_830a]          ; 0x0014
    jmp short @..ovmain.l5           ; 0x0017
@..ovmain.l1:
    call loc_RVQR                    ; 0x0019
    jmp short @..ovmain.l6           ; 0x001c
@..ovmain.l2:
    call api_idx_0068_OUHP           ; 0x001e
    jmp short @..ovmain.l6           ; 0x0021
@..ovmain.l3:
    call api_idx_0002_SKSN           ; 0x0023
    jmp short @..ovmain.l6           ; 0x0026
@..ovmain.l4:
    call api_idx_0008_QGRM           ; 0x0028
    jmp short @..ovmain.l6           ; 0x002b
@..ovmain.l5:
    cmp ax, strict word 0            ; 0x002d
    je short @..ovmain.l1            ; 0x0030
    cmp ax, strict word 1            ; 0x0032
    je short @..ovmain.l2            ; 0x0035
    cmp ax, strict word 2            ; 0x0037
    je short @..ovmain.l4            ; 0x003a
    cmp ax, strict word 8            ; 0x003c
    je short @..ovmain.l3            ; 0x003f
@..ovmain.l6:
    mov ax, 0                        ; 0x0041
    ret                              ; 0x0044
