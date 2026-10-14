; auto-generated
api_idx_0002_MPHG:
    mov ax, 0xfffe                   ; 0x0045
    call aztec_csav                  ; 0x0048
    mov ax, 0                        ; 0x004b
    push ax                          ; 0x004e
    push ax                          ; 0x004f
    push word [bp + 0x4]             ; 0x0050
    call ds_app_TKHP                 ; 0x0053
    add sp, byte 4                   ; 0x0056
    push ax                          ; 0x0059
    call aztec_open                  ; 0x005a
    add sp, byte 4                   ; 0x005d
    mov word [bp - 0x0002], ax       ; 0x0060
    cmp ax, strict word 0xffff       ; 0x0063
    jne short @..api_idx_0002_MPHG.l1 ; 0x0066
    mov ax, 5                        ; 0x0068
    push ax                          ; 0x006b
    call ds_app_VKGH                 ; 0x006c
    pop cx                           ; 0x006f
@..api_idx_0002_MPHG.l1:
    push word [bp + 0x6]             ; 0x0070
    push word [bp - 0x0002]          ; 0x0073
    call dos_alloc_mem               ; 0x0076
    add sp, byte 4                   ; 0x0079
    push word [bp - 0x0002]          ; 0x007c
    call aztec_close                 ; 0x007f
    pop cx                           ; 0x0082
    ret                              ; 0x0083
