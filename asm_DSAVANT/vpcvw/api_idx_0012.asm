api_idx_0012:
    mov ax, 0xffee                   ; 0x014b
    call ds_dispatch_f40b            ; 0x014e
    mov word [bp - 0x000e], 0        ; 0x0151
    mov word [bp - 0x000c], 0        ; 0x0156
    mov word [bp - 0x000a], 0        ; 0x015b
    mov ax, 0x248                    ; 0x0160
    imul word [bp + 0x4]             ; 0x0163
    mov bx, ax                       ; 0x0166
    mov al, byte [bx + 0x5e37]       ; 0x0168
    sub ah, ah                       ; 0x016c
    mov word [bp - 0x0008], ax       ; 0x016e
    mov al, byte [bx + 0x5e38]       ; 0x0171
    sub ah, ah                       ; 0x0175
    mov word [bp - 0x0006], ax       ; 0x0177
    mov word [bp - 0x0004], 0        ; 0x017a
    mov word [bp - 0x0002], 9        ; 0x017f
    mov ax, word [bx + 0x5c14]       ; 0x0184
    mov bx, 0x64                     ; 0x0188
    imul bx                          ; 0x018b
    push ax                          ; 0x018d
    push dx                          ; 0x018e
    mov ax, 0x248                    ; 0x018f
    imul word [bp + 0x4]             ; 0x0192
    mov bx, ax                       ; 0x0195
    mov ax, word [bx + 0x5c16]       ; 0x0197
    cwd                              ; 0x019b
    mov cx, ax                       ; 0x019c
    mov bx, dx                       ; 0x019e
    pop dx                           ; 0x01a0
    pop ax                           ; 0x01a1
    call ds_dispatch_f99f            ; 0x01a2
    mov word [bp - 0x0010], dx       ; 0x01a5
    mov word [bp - 0x0012], ax       ; 0x01a8
    cmp dx, byte 0                   ; 0x01ab
    jg short @..api_idx_0012.l1      ; 0x01ae
    jne short @..api_idx_0012.l2     ; 0x01b0
    cmp ax, strict word 0x32         ; 0x01b2
    jbe short @..api_idx_0012.l2     ; 0x01b5
@..api_idx_0012.l1:
    jmp short @..api_idx_0012.l3     ; 0x01b7
@..api_idx_0012.l2:
    jmp near @..api_idx_0012.l17     ; 0x01b9
@..api_idx_0012.l3:
    cmp dx, byte 0                   ; 0x01bc
    jg short @..api_idx_0012.l4      ; 0x01bf
    jne short @..api_idx_0012.l5     ; 0x01c1
    cmp ax, strict word 0x42         ; 0x01c3
    jbe short @..api_idx_0012.l5     ; 0x01c6
@..api_idx_0012.l4:
    jmp short @..api_idx_0012.l8     ; 0x01c8
@..api_idx_0012.l5:
    mov word [bp - 0x000c], 5        ; 0x01ca
    mov word [bp - 0x000a], 0xa      ; 0x01cf
    cmp word [bp - 0x0008], byte 3   ; 0x01d4
    jle short @..api_idx_0012.l6     ; 0x01d8
    mov word [bp - 0x0008], 3        ; 0x01da
@..api_idx_0012.l6:
    cmp word [bp - 0x0006], byte 3   ; 0x01df
    jle short @..api_idx_0012.l7     ; 0x01e3
    mov word [bp - 0x0006], 3        ; 0x01e5
@..api_idx_0012.l7:
    jmp near @..api_idx_0012.l17     ; 0x01ea
@..api_idx_0012.l8:
    cmp dx, byte 0                   ; 0x01ed
    jg short @..api_idx_0012.l9      ; 0x01f0
    jne short @..api_idx_0012.l10    ; 0x01f2
    cmp ax, strict word 0x4b         ; 0x01f4
    jbe short @..api_idx_0012.l10    ; 0x01f7
@..api_idx_0012.l9:
    jmp short @..api_idx_0012.l13    ; 0x01f9
@..api_idx_0012.l10:
    mov word [bp - 0x000e], 1        ; 0x01fb
    mov word [bp - 0x000c], 0xa      ; 0x0200
    mov word [bp - 0x000a], 0x14     ; 0x0205
    cmp word [bp - 0x0008], byte 2   ; 0x020a
    jle short @..api_idx_0012.l11    ; 0x020e
    mov word [bp - 0x0008], 2        ; 0x0210
@..api_idx_0012.l11:
    cmp word [bp - 0x0006], byte 2   ; 0x0215
    jle short @..api_idx_0012.l12    ; 0x0219
    mov word [bp - 0x0006], 2        ; 0x021b
@..api_idx_0012.l12:
    mov ax, 0x248                    ; 0x0220
    imul word [bp + 0x4]             ; 0x0223
    mov bx, ax                       ; 0x0226
    mov ax, word [bx + 0x5c12]       ; 0x0228
    mov cx, 0x64                     ; 0x022c
    cwd                              ; 0x022f
    idiv cx                          ; 0x0230
    mov word [bp - 0x0004], ax       ; 0x0232
    mov word [bp - 0x0002], 0x83     ; 0x0235
    jmp short @..api_idx_0012.l17    ; 0x023a
@..api_idx_0012.l13:
    cmp word [bp - 0x0010], byte 0   ; 0x023c
    jg short @..api_idx_0012.l14     ; 0x0240
    jne short @..api_idx_0012.l15    ; 0x0242
    cmp word [bp - 0x0012], byte 0x5a ; 0x0244
    jbe short @..api_idx_0012.l15    ; 0x0248
@..api_idx_0012.l14:
    jmp short @..api_idx_0012.l16    ; 0x024a
@..api_idx_0012.l15:
    mov word [bp - 0x000e], 2        ; 0x024c
    mov word [bp - 0x000c], 0x14     ; 0x0251
    mov word [bp - 0x000a], 0x28     ; 0x0256
    mov word [bp - 0x0008], 1        ; 0x025b
    mov word [bp - 0x0006], 1        ; 0x0260
    mov ax, 0x248                    ; 0x0265
    imul word [bp + 0x4]             ; 0x0268
    mov bx, ax                       ; 0x026b
    mov ax, word [bx + 0x5c12]       ; 0x026d
    mov cx, 0x32                     ; 0x0271
    cwd                              ; 0x0274
    idiv cx                          ; 0x0275
    mov word [bp - 0x0004], ax       ; 0x0277
    mov word [bp - 0x0002], 0x54     ; 0x027a
    jmp short @..api_idx_0012.l17    ; 0x027f
@..api_idx_0012.l16:
    mov word [bp - 0x000e], 4        ; 0x0281
    mov word [bp - 0x000c], 0x28     ; 0x0286
    mov word [bp - 0x000a], 0x50     ; 0x028b
    mov word [bp - 0x0008], 1        ; 0x0290
    mov word [bp - 0x0006], 1        ; 0x0295
    mov ax, 0x248                    ; 0x029a
    imul word [bp + 0x4]             ; 0x029d
    mov bx, ax                       ; 0x02a0
    mov ax, word [bx + 0x5c12]       ; 0x02a2
    mov cx, 0x19                     ; 0x02a6
    cwd                              ; 0x02a9
    idiv cx                          ; 0x02aa
    mov word [bp - 0x0004], ax       ; 0x02ac
    mov word [bp - 0x0002], 0x16     ; 0x02af
@..api_idx_0012.l17:
    lea si, word [bp - 0x000e]       ; 0x02b4
    mov di, bss_93e0                 ; 0x02b7
    mov cx, ds                       ; 0x02ba
    mov es, cx                       ; 0x02bc
    mov cx, 7                        ; 0x02be
    rep movsw                        ; 0x02c1
    mov ax, 0x93e0                   ; 0x02c3
    ret                              ; 0x02c6
