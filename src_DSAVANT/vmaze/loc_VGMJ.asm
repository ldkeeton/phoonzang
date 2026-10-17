; auto-generated
loc_VGMJ:
    mov ax, 0                        ; 0x0b14
    call aztec_csav                  ; 0x0b17
    call loc_OGHL                    ; 0x0b1a
    cmp word [bp + 0x8], byte 0      ; 0x0b1d
    je short @..loc_VGMJ.l1          ; 0x0b21
    call ds_app_NNSU                 ; 0x0b23
    mov word [bss_8450], ax          ; 0x0b26
    test ax, ax                      ; 0x0b29
    je short @..loc_VGMJ.l1          ; 0x0b2b
    mov ax, 0                        ; 0x0b2d
    push ax                          ; 0x0b30
    mov ax, 3                        ; 0x0b31
    push ax                          ; 0x0b34
    call ds_app_file_KRUQ            ; 0x0b35
    add sp, byte 4                   ; 0x0b38
    mov ax, word [dseg_0112]         ; 0x0b3b
    mov word [bss_844e], ax          ; 0x0b3e
    mov ax, 0                        ; 0x0b41
    push ax                          ; 0x0b44
    push word [bss_844e]             ; 0x0b45
    push ax                          ; 0x0b49
    call ds_app_UKGP                 ; 0x0b4a
    add sp, byte 6                   ; 0x0b4d
    mov word [bss_844c], ax          ; 0x0b50
@..loc_VGMJ.l1:
    mov ax, word [bp + 0x4]          ; 0x0b53
    mov word [bss_8452], ax          ; 0x0b56
    mov ax, word [bp + 0x6]          ; 0x0b59
    mov word [bss_845a], ax          ; 0x0b5c
    mov word [bss_830a], 0xa         ; 0x0b5f
    ret                              ; 0x0b65
