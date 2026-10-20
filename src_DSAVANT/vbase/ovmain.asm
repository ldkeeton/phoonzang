; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 7      ; 0x0014
    jne short @..ovmain.l1           ; 0x0019
    call api_idx_0002_IRNO           ; 0x001b
@..ovmain.l1:
    cmp word [bss_830a], byte 4      ; 0x001e
    jne short @..ovmain.l2           ; 0x0023
    call api_idx_004a_LKJS           ; 0x0025
@..ovmain.l2:
    cmp word [bss_830a], byte 0x18   ; 0x0028
    jne short @..ovmain.l3           ; 0x002d
    call api_idx_004a_UIIS           ; 0x002f
@..ovmain.l3:
    mov ax, 0                        ; 0x0032
    ret                              ; 0x0035
