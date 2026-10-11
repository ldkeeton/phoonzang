io_loc_12de:
    mov ax, 0x248                    ; 0x12de
    imul word [bp - 0x0006]          ; 0x12e1
    mov bx, ax                       ; 0x12e4
    mov al, byte [bx + 0x5d5c]       ; 0x12e6
    sub ah, ah                       ; 0x12ea
    cmp ax, word [bp - 0x000e]       ; 0x12ec
    jge short @..io_loc_12de.l1      ; 0x12ef
    mov al, byte [bp - 0x000e]       ; 0x12f1
    mov byte [bx + 0x5d5c], al       ; 0x12f4
@..io_loc_12de.l1:
    jmp short loc_1325               ; 0x12f8
jumptable_12fa:
    dw 0x5ffa
    dw 0x6029
    dw 0x60b7
    dw 0x60e6
    dw 0x60fb
    dw 0x610b
    dw 0x6127
    dw 0x616a
    dw 0x618a
    dw 0x61e3
    dw 0x6271
    dw 0x62c4
    dw 0x62f3
    dw 0x630f
    dw 0x6325
loc_1318:
    cmp ax, strict word 0xf          ; 0x1318
    jae short loc_1325               ; 0x131b
    xchg bx, ax                      ; 0x131d
    shl bx, 1                        ; 0x131e
    jmp [cs:bx + 0x6341]             ; 0x1320
loc_1325:
    inc word [bp - 0x0002]           ; 0x1325
    mov ax, word [bp - 0x0002]       ; 0x1328
    cmp ax, strict word 0x10         ; 0x132b
    jge short loc_1333               ; 0x132e
    jmp near loc_0f7b                ; 0x1330
loc_1333:
    mov ax, 1                        ; 0x1333
    push ax                          ; 0x1336
    push word [bp - 0x0006]          ; 0x1337
    call ds_dispatch_cb3a            ; 0x133a
    add sp, byte 4                   ; 0x133d
    mov ax, word [bp - 0x0010]       ; 0x1340
    add ax, word [bp - 0x0012]       ; 0x1343
    add ax, 0x800                    ; 0x1346
    push ax                          ; 0x1349
    call loc_0eac                    ; 0x134a
    pop cx                           ; 0x134d
    jmp near loc_0f0f                ; 0x134e
loc_1351:
    inc word [bss_8d12]              ; 0x1351
    ret                              ; 0x1355
