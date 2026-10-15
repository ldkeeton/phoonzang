; auto-generated
ds_app_string_JOKU: ; Aztec csav frame=0x0100
    mov ax, 0xff00                   ; 0x04da
    call aztec_csav                  ; 0x04dd
    lea ax, word [bp - 0x00ff]       ; 0x04e0
    push ax                          ; 0x04e4
    push word [bp + 0x6]             ; 0x04e5
    push word [bp + 0x4]             ; 0x04e8
    call ds_app_ILKN                 ; 0x04eb
    add sp, byte 6                   ; 0x04ee
@..ds_app_string_JOKU.l1:
    lea ax, word [bp - 0x00ff]       ; 0x04f1
    push ax                          ; 0x04f5
    call aztec_strlen                ; 0x04f6
    pop cx                           ; 0x04f9
    sub ax, word [bp + 0x8]          ; 0x04fa
    jge short @..ds_app_string_JOKU.l2 ; 0x04fd
    push word [bp + 0xa]             ; 0x04ff
    mov ax, 0x20                     ; 0x0502
    push ax                          ; 0x0505
    call ds_loc_PQIO                 ; 0x0506
    add sp, byte 4                   ; 0x0509
    dec word [bp + 0x8]              ; 0x050c
    jmp short @..ds_app_string_JOKU.l1 ; 0x050f
@..ds_app_string_JOKU.l2:
    push word [bp + 0xa]             ; 0x0511
    lea ax, word [bp - 0x00ff]       ; 0x0514
    push ax                          ; 0x0518
    call aztec_strlen                ; 0x0519
    pop cx                           ; 0x051c
    sub ax, word [bp + 0x8]          ; 0x051d
    lea cx, word [bp - 0x00ff]       ; 0x0520
    add ax, cx                       ; 0x0524
    push ax                          ; 0x0526
    call ds_string_loc_PTIK          ; 0x0527
    add sp, byte 4                   ; 0x052a
    ret                              ; 0x052d
