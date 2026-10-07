api_idx_0004:
    mov ax, 0xfffc                   ; 0x0034
    call ds_dispatch_f40b            ; 0x0037
    mov ax, word [bp + 0x6]          ; 0x003a
    mov bx, 0x64                     ; 0x003d
    imul bx                          ; 0x0040
    push ax                          ; 0x0042
    push dx                          ; 0x0043
    mov ax, word [bp + 0x8]          ; 0x0044
    cwd                              ; 0x0047
    mov cx, ax                       ; 0x0048
    mov bx, dx                       ; 0x004a
    pop dx                           ; 0x004c
    pop ax                           ; 0x004d
    call ds_dispatch_f99f            ; 0x004e
    mov cx, ax                       ; 0x0051
    mov bx, dx                       ; 0x0053
    mov ax, 0x64                     ; 0x0055
    mov dx, 0                        ; 0x0058
    sub ax, cx                       ; 0x005b
    sbb dx, bx                       ; 0x005d
    mov word [bp - 0x0002], dx       ; 0x005f
    mov word [bp - 0x0004], ax       ; 0x0062
    cmp dx, byte 0                   ; 0x0065
    jg short @..api_idx_0004.l1      ; 0x0068
    jne short @..api_idx_0004.l2     ; 0x006a
    cmp ax, strict word 0x32         ; 0x006c
    jbe short @..api_idx_0004.l2     ; 0x006f
@..api_idx_0004.l1:
    jmp short @..api_idx_0004.l3     ; 0x0071
@..api_idx_0004.l2:
    mov ax, 0                        ; 0x0073
    ret                              ; 0x0076
