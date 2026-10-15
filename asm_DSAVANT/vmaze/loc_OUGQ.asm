; auto-generated
loc_OUGQ:
    mov ax, word [bss_8d12]          ; 0x88e0
    shl ax, 1                        ; 0x88e3
    mov si, ax                       ; 0x88e5
    mov bx, word [bss_0e12]          ; 0x88e7
    cmp word [bx + si], byte 0       ; 0x88eb
    jle short loc_NMGH               ; 0x88ee
    mov ax, 0                        ; 0x88f0
    push ax                          ; 0x88f3
    push word [bx + si]              ; 0x88f4
    call loc_QKON                    ; 0x88f6
    add sp, byte 4                   ; 0x88f9
    jmp short loc_SQUQ_8922          ; 0x88fc
loc_NMGH:
    mov ax, 1                        ; 0x88fe
    push ax                          ; 0x8901
    mov ax, 0xb                      ; 0x8902
    push ax                          ; 0x8905
    mov ax, word [bss_8d12]          ; 0x8906
    shl ax, 1                        ; 0x8909
    mov si, ax                       ; 0x890b
    mov bx, word [bss_0e12]          ; 0x890d
    push word [bx + si + 0x3c0]      ; 0x8911
    call ds_dos_con_loc_RGTO         ; 0x8915
    add sp, byte 6                   ; 0x8918
    test ax, ax                      ; 0x891b
    je short loc_SQUQ_8922           ; 0x891d
    call api_idx_0004_SLHO           ; 0x891f
loc_SQUQ_8922:
    jmp near loc_TOGI                ; 0x8922
