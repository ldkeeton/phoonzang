; auto-generated
loc_OIQP:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    mov ax, word [bss_830a]          ; 0x0014
    jmp short @..loc_OIQP.l5         ; 0x0017
@..loc_OIQP.l1:
    call loc_RVQR                    ; 0x0019
    jmp short @..loc_OIQP.l6         ; 0x001c
@..loc_OIQP.l2:
    call api_idx_0068_OUHP           ; 0x001e
    jmp short @..loc_OIQP.l6         ; 0x0021
@..loc_OIQP.l3:
    call api_idx_0002_SKSN           ; 0x0023
    jmp short @..loc_OIQP.l6         ; 0x0026
@..loc_OIQP.l4:
    call api_idx_0008_NGRM           ; 0x0028
    jmp short @..loc_OIQP.l6         ; 0x002b
@..loc_OIQP.l5:
    cmp ax, strict word 0            ; 0x002d
    je short @..loc_OIQP.l1          ; 0x0030
    cmp ax, strict word 1            ; 0x0032
    je short @..loc_OIQP.l2          ; 0x0035
    cmp ax, strict word 2            ; 0x0037
    je short @..loc_OIQP.l4          ; 0x003a
    cmp ax, strict word 8            ; 0x003c
    je short @..loc_OIQP.l3          ; 0x003f
@..loc_OIQP.l6:
    mov ax, 0                        ; 0x0041
    ret                              ; 0x0044
