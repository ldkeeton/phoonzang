; auto-generated
loc_QRQT:
    mov ax, 0                        ; 0x39eb
    call aztec_csav                  ; 0x39ee
    mov ax, 6                        ; 0x39f1
    imul word [bp + 0xa]             ; 0x39f4
    add ax, word [bp + 0x6]          ; 0x39f7
    push ax                          ; 0x39fa
    mov ax, 6                        ; 0x39fb
    imul word [bp + 0x8]             ; 0x39fe
    add ax, word [bp + 0x4]          ; 0x3a01
    inc ax                           ; 0x3a04
    inc ax                           ; 0x3a05
    push ax                          ; 0x3a06
    push word [bp + 0x6]             ; 0x3a07
    push word [bp + 0x4]             ; 0x3a0a
    call ds_app_URLN                 ; 0x3a0d
    add sp, byte 8                   ; 0x3a10
    push word [bp + 0xe]             ; 0x3a13
    push word [bp + 0xc]             ; 0x3a16
    push word [bp + 0x10]            ; 0x3a19
    push word [bp + 0x8]             ; 0x3a1c
    push word [bp + 0x6]             ; 0x3a1f
    push word [bp + 0x4]             ; 0x3a22
    call api_idx_0004_PGLK           ; 0x3a25
    add sp, byte 0x0c                ; 0x3a28
    ret                              ; 0x3a2b
