; auto-generated
; asm only
string_loc_NMMQ:
    cmp al, 0x2a                     ; 0x3338
    jne short @..string_loc_NMMQ.l1  ; 0x333a
    push ds                          ; 0x333c
    pop es                           ; 0x333d
    mov di, word [bp + 0x8]          ; 0x333e
    mov dx, word [es:di]             ; 0x3341
    add di, byte 2                   ; 0x3344
    mov word [bp + 0x8], di          ; 0x3347
    lodsb                            ; 0x334a
    ret                              ; 0x334b
@..string_loc_NMMQ.l1:
    sub dx, dx                       ; 0x334c
    mov ah, 0                        ; 0x334e
@..string_loc_NMMQ.l2:
    cmp al, 0x30                     ; 0x3350
    jb short @..string_loc_NMMQ.l3   ; 0x3352
    cmp al, 0x39                     ; 0x3354
    ja short @..string_loc_NMMQ.l3   ; 0x3356
    sub al, 0x30                     ; 0x3358
    shl dx, 1                        ; 0x335a
    mov cx, dx                       ; 0x335c
    shl dx, 1                        ; 0x335e
    shl dx, 1                        ; 0x3360
    add dx, cx                       ; 0x3362
    add dx, ax                       ; 0x3364
    lodsb                            ; 0x3366
    jmp short @..string_loc_NMMQ.l2  ; 0x3367
@..string_loc_NMMQ.l3:
    ret                              ; 0x3369
