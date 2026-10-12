api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x094a
    call ds_aztec_csav               ; 0x094d
    cmp word [bss_91b8], byte 0xff   ; 0x0950
    jne short @..api_idx_0002_6.l1   ; 0x0955
    mov ax, 0                        ; 0x0957
    ret                              ; 0x095a
@..api_idx_0002_6.l1:
    mov ax, 1                        ; 0x095b
    push ax                          ; 0x095e
    call ds_bios_kbd_loc_3c97        ; 0x095f
    pop cx                           ; 0x0962
    test ax, ax                      ; 0x0963
    je short @..api_idx_0002_6.l3    ; 0x0965
    mov ax, 1                        ; 0x0967
    push ax                          ; 0x096a
    call ds_dos_con_loc_3d79         ; 0x096b
    pop cx                           ; 0x096e
    sub ah, ah                       ; 0x096f
    mov word [bp - 0x0002], ax       ; 0x0971
    mov ax, 0                        ; 0x0974
    cmp word [bp - 0x0002], byte 0x1b ; 0x0977
    jne short @..api_idx_0002_6.l2   ; 0x097b
    mov ax, 1                        ; 0x097d
@..api_idx_0002_6.l2:
    or word [bss_91b8], ax           ; 0x0980
@..api_idx_0002_6.l3:
    mov ax, word [bss_91b8]          ; 0x0984
    ret                              ; 0x0987
