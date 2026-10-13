; auto-generated
api_idx_0016_2:
    mov ax, 0xffea                   ; 0x72d0
    call aztec_csav                  ; 0x72d3
    mov ax, 0                        ; 0x72d6
    push ax                          ; 0x72d9
    call ds_loc_415b                 ; 0x72da
    pop cx                           ; 0x72dd
    mov ax, 0x9138                   ; 0x72de
    push ax                          ; 0x72e1
    lea ax, word [bp - 0x0016]       ; 0x72e2
    push ax                          ; 0x72e5
    call aztec_strcpy                ; 0x72e6
    add sp, byte 4                   ; 0x72e9
    mov ax, word [bp + 0x4]          ; 0x72ec
    mov cx, 0xa                      ; 0x72ef
    cwd                              ; 0x72f2
    idiv cx                          ; 0x72f3
    add ax, strict word 0x30         ; 0x72f5
    mov byte [bp - 0x0011], al       ; 0x72f8
    add dx, byte 0x30                ; 0x72fb
    mov ax, dx                       ; 0x72fe
    mov byte [bp - 0x0010], al       ; 0x7300
    mov ax, 0                        ; 0x7303
    push ax                          ; 0x7306
    mov ax, 1                        ; 0x7307
    push ax                          ; 0x730a
    lea ax, word [bp - 0x0016]       ; 0x730b
    push ax                          ; 0x730e
    call ds_app_23a8                 ; 0x730f
    add sp, byte 4                   ; 0x7312
    push ax                          ; 0x7315
    call aztec_open                  ; 0x7316
    add sp, byte 4                   ; 0x7319
    mov word [bp - 0x0002], ax       ; 0x731c
    cmp ax, strict word 0xffff       ; 0x731f
    jne short @..api_idx_0016_2.l1   ; 0x7322
    mov ax, 0x12                     ; 0x7324
    push ax                          ; 0x7327
    call ds_app_03b8                 ; 0x7328
    pop cx                           ; 0x732b
@..api_idx_0016_2.l1:
    push word [bp + 0x6]             ; 0x732c
    push word [bp - 0x0002]          ; 0x732f
    call ds_loc_41f1                 ; 0x7332
    add sp, byte 4                   ; 0x7335
    push word [bp - 0x0002]          ; 0x7338
    call aztec_close                 ; 0x733b
    pop cx                           ; 0x733e
    ret                              ; 0x733f
