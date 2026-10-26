; auto-generated
loc_RJRG:
    push bp                          ; 0x1155
    mov bp, sp                       ; 0x1156
    add sp, strict word 0xff5e       ; 0x1158
    mov ax, word [bp + 4]            ; 0x115c
    mov dx, ax                       ; 0x115f
    shl ax, 1                        ; 0x1161
    shl ax, 1                        ; 0x1163
    add ax, dx                       ; 0x1165
    shl ax, 1                        ; 0x1167
    mov cx, word [bp + 6]            ; 0x1169
    shl cx, 1                        ; 0x116c
    add ax, cx                       ; 0x116e
    mov bx, ax                       ; 0x1170
    push word [bx + 0x2ad]           ; 0x1172
    lea ax, word [bp - 0x52]         ; 0x1176
    push ax                          ; 0x1179
    call aztec_strcpy                ; 0x117a
    add sp, byte 4                   ; 0x117d
    mov word [bp - 2], 0             ; 0x1180
    jmp short @..loc_RJRG.l5         ; 0x1185
@..loc_RJRG.l1:
    mov bx, word [bp - 2]            ; 0x1187
    add bx, bp                       ; 0x118a
    cmp byte [bx - 0x52], 0x2a       ; 0x118c
    je short @..loc_RJRG.l2          ; 0x1190
    mov al, byte [bx - 0x52]         ; 0x1192
    cbw                              ; 0x1195
    add ax, strict word 0xffbf       ; 0x1196
    cmp ax, word [bp + 8]            ; 0x1199
    jne short @..loc_RJRG.l4         ; 0x119c
@..loc_RJRG.l2:
    mov ax, 1                        ; 0x119e
@..loc_RJRG.l3:
    mov sp, bp                       ; 0x11a1
    pop bp                           ; 0x11a3
    ret                              ; 0x11a4
@..loc_RJRG.l4:
    inc word [bp - 2]                ; 0x11a5
@..loc_RJRG.l5:
    lea ax, word [bp - 0x52]         ; 0x11a8
    push ax                          ; 0x11ab
    call aztec_strlen                ; 0x11ac
    pop cx                           ; 0x11af
    cmp ax, word [bp - 2]            ; 0x11b0
    jg short @..loc_RJRG.l1          ; 0x11b3
    mov ax, 0                        ; 0x11b5
    jmp short @..loc_RJRG.l3         ; 0x11b8
