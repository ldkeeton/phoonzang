leaf_loc_31f4:
    push bp                          ; 0x31f4
    mov bp, sp                       ; 0x31f5
    sub sp, byte 8                   ; 0x31f7
    push ds                          ; 0x31fa
    push es                          ; 0x31fb
    push si                          ; 0x31fc
    push di                          ; 0x31fd
    mov ax, ds                       ; 0x31fe
    mov es, ax                       ; 0x3200
    mov bx, dos_mem_loc_33b3         ; 0x3202
    add bx, word [bp + 0xc]          ; 0x3205
    mov ax, word [bp + 0xe]          ; 0x3208
    cmp ax, strict word 0xffff       ; 0x320b
    jne short @..leaf_loc_31f4.l1    ; 0x320e
    mov word [cs:bx], 0xff           ; 0x3210
    jmp short @..leaf_loc_31f4.l4    ; 0x3215
@..leaf_loc_31f4.l1:
    mov si, 0x32e2                   ; 0x3217
    mov ax, 8                        ; 0x321a
    shl ax, 1                        ; 0x321d
    add si, ax                       ; 0x321f
    mov ax, word [bp + 0xe]          ; 0x3221
    mov cx, 8                        ; 0x3224
@..leaf_loc_31f4.l2:
    cmp byte [cs:si], al             ; 0x3227
    jbe short @..leaf_loc_31f4.l3    ; 0x322a
    sub si, byte 2                   ; 0x322c
    loop @..leaf_loc_31f4.l2         ; 0x322f
@..leaf_loc_31f4.l3:
    mov al, byte [cs:si + 0x1]       ; 0x3231
    mov byte [cs:bx], al             ; 0x3235
@..leaf_loc_31f4.l4:
    pop di                           ; 0x3238
    pop si                           ; 0x3239
    pop es                           ; 0x323a
    pop ds                           ; 0x323b
    mov sp, bp                       ; 0x323c
    pop bp                           ; 0x323e
    ret                              ; 0x323f
