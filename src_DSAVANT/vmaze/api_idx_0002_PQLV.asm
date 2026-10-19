; auto-generated
api_idx_0002_PQLV:
    mov ax, 0xfffe                   ; 0x02fe
    call aztec_csav                  ; 0x0301
    mov ax, 0                        ; 0x0304
    push ax                          ; 0x0307
    mov ax, 1                        ; 0x0308
    push ax                          ; 0x030b
    push word [bp + 0x4]             ; 0x030c
    call ds_app_UUHT                 ; 0x030f
    add sp, byte 4                   ; 0x0312
    push ax                          ; 0x0315
    call aztec_open                  ; 0x0316
    add sp, byte 4                   ; 0x0319
    mov word [bp - 0x0002], ax       ; 0x031c
    cmp ax, strict word 0xffff       ; 0x031f
    jne short @..api_idx_0002_PQLV.l1 ; 0x0322
    mov ax, 0x1b                     ; 0x0324
    push ax                          ; 0x0327
    call ds_app_UKIP                 ; 0x0328
    pop cx                           ; 0x032b
@..api_idx_0002_PQLV.l1:
    mov ax, 0                        ; 0x032c
    push ax                          ; 0x032f
    push word [bp + 0x6]             ; 0x0330
    push word [bp - 0x0002]          ; 0x0333
    call gfx_load_maze               ; 0x0336
    add sp, byte 6                   ; 0x0339
    push word [bp - 0x0002]          ; 0x033c
    call aztec_close                 ; 0x033f
    pop cx                           ; 0x0342
    ret                              ; 0x0343
