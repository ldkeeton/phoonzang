; auto-generated
loc_QRIN:
    mov ax, 0                        ; 0x17d1
    call aztec_csav                  ; 0x17d4
    mov word [bss_90e0], 0           ; 0x17d7
    cmp word [bss_830a], byte 0x0d   ; 0x17dd
    jne short @..loc_QRIN.l1         ; 0x17e2
    push word [bss_0e2c]             ; 0x17e4
    push word [bss_0e2a]             ; 0x17e8
    call ds_app_TSGV                 ; 0x17ec
    add sp, byte 4                   ; 0x17ef
    mov ax, 0                        ; 0x17f2
    push ax                          ; 0x17f5
    mov ax, 0xa4                     ; 0x17f6
    push ax                          ; 0x17f9
    mov ax, 0x12e                    ; 0x17fa
    push ax                          ; 0x17fd
    call gfx_entry_33                ; 0x17fe
    add sp, byte 6                   ; 0x1801
    call api_idx_000c_VJPM           ; 0x1804
    mov ax, 0                        ; 0x1807
    push ax                          ; 0x180a
    mov ax, 0xa4                     ; 0x180b
    push ax                          ; 0x180e
    mov ax, 0x12e                    ; 0x180f
    push ax                          ; 0x1812
    call gfx_entry_34                ; 0x1813
    add sp, byte 6                   ; 0x1816
    mov ax, 0                        ; 0x1819
    mov dx, 0                        ; 0x181c
    push dx                          ; 0x181f
    push ax                          ; 0x1820
    call ds_app_TSGV                 ; 0x1821
    add sp, byte 4                   ; 0x1824
@..loc_QRIN.l1:
    mov ax, 0                        ; 0x1827
    ret                              ; 0x182a
