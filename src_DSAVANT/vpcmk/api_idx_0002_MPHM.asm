; auto-generated
api_idx_0002_MPHM:
    mov ax, 0xfffe                   ; 0x4291
    call aztec_csav                  ; 0x4294
    mov word [bp - 0x0002], 0        ; 0x4297
@..api_idx_0002_MPHM.l1:
    mov ax, 0                        ; 0x429c
    push ax                          ; 0x429f
    push word [bp - 0x0002]          ; 0x42a0
    push word [bp + 0x4]             ; 0x42a3
    call loc_JKKS                    ; 0x42a6
    add sp, byte 6                   ; 0x42a9
    inc word [bp - 0x0002]           ; 0x42ac
    mov ax, word [bp - 0x0002]       ; 0x42af
    cmp ax, strict word 0xd          ; 0x42b2
    jle short @..api_idx_0002_MPHM.l1 ; 0x42b5
    ret                              ; 0x42b7
