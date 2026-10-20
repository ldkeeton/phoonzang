; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    mov word [bss_90b6], 5           ; 0x0014
    mov word [bss_90b8], 0           ; 0x001a
    mov word [bss_90ba], 0           ; 0x0020
    mov word [bss_90bc], 0           ; 0x0026
    cmp word [bss_830a], byte 0x0a   ; 0x002c
    jne short @..ovmain.l1           ; 0x0031
    call loc_RLUJ                    ; 0x0033
@..ovmain.l1:
    cmp word [bss_830a], byte 0x0e   ; 0x0036
    jne short @..ovmain.l2           ; 0x003b
    call api_idx_0056_KOPT           ; 0x003d
@..ovmain.l2:
    cmp word [bss_830a], byte 0x0b   ; 0x0040
    jne short @..ovmain.l3           ; 0x0045
    call api_idx_0002_PSIJ           ; 0x0047
@..ovmain.l3:
    mov ax, 0                        ; 0x004a
    ret                              ; 0x004d
