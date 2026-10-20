; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    mov word [bss_9114], 0           ; 0x0014
    mov word [bss_9116], 0xffff      ; 0x001a
    mov word [bss_9118], 0           ; 0x0020
    mov word [bss_911a], 0xffff      ; 0x0026
    cmp word [bss_830a], byte 0x0f   ; 0x002c
    jne short @..ovmain.l1           ; 0x0031
    mov word [bss_830a], 0x16        ; 0x0033
    call api_idx_0050_MUIG           ; 0x0039
    jmp short @..ovmain.l6           ; 0x003c
@..ovmain.l1:
    cmp word [bss_830a], byte 0x15   ; 0x003e
    jne short @..ovmain.l2           ; 0x0043
    mov word [bss_830a], 0x16        ; 0x0045
    call loc_PKHU                    ; 0x004b
    jmp short @..ovmain.l6           ; 0x004e
@..ovmain.l2:
    cmp word [bss_830a], byte 0x1a   ; 0x0050
    jne short @..ovmain.l3           ; 0x0055
    mov word [bss_830a], 5           ; 0x0057
    call loc_UIQM                    ; 0x005d
    jmp short @..ovmain.l6           ; 0x0060
@..ovmain.l3:
    cmp word [bss_830a], byte 0x1c   ; 0x0062
    jne short @..ovmain.l4           ; 0x0067
    mov word [bss_830a], 5           ; 0x0069
    call loc_PGGL                    ; 0x006f
    jmp short @..ovmain.l6           ; 0x0072
@..ovmain.l4:
    cmp word [bss_830a], byte 0x1d   ; 0x0074
    jne short @..ovmain.l5           ; 0x0079
    mov word [bss_830a], 5           ; 0x007b
    call loc_HVOM                    ; 0x0081
    jmp short @..ovmain.l6           ; 0x0084
@..ovmain.l5:
    mov word [bss_830a], 0x16        ; 0x0086
@..ovmain.l6:
    mov ax, 0                        ; 0x008c
    ret                              ; 0x008f
