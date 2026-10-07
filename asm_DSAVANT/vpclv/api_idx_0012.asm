api_idx_0012:
    mov ax, 0xffee                   ; 0x0086
    call ds_dispatch_f40b            ; 0x0089
    mov word [bp - 0x000e], 0        ; 0x008c
    mov word [bp - 0x000c], 0        ; 0x0091
    mov word [bp - 0x000a], 0        ; 0x0096
    mov ax, 0x248                    ; 0x009b
    imul word [bp + 0x4]             ; 0x009e
    mov bx, ax                       ; 0x00a1
    mov al, byte [bx + 0x5e37]       ; 0x00a3
    sub ah, ah                       ; 0x00a7
    mov word [bp - 0x0008], ax       ; 0x00a9
    mov al, byte [bx + 0x5e38]       ; 0x00ac
    sub ah, ah                       ; 0x00b0
    mov word [bp - 0x0006], ax       ; 0x00b2
    mov word [bp - 0x0004], 0        ; 0x00b5
    mov word [bp - 0x0002], 9        ; 0x00ba
    mov ax, word [bx + 0x5c14]       ; 0x00bf
    mov bx, 0x64                     ; 0x00c3
    imul bx                          ; 0x00c6
    push ax                          ; 0x00c8
    push dx                          ; 0x00c9
    mov ax, 0x248                    ; 0x00ca
    imul word [bp + 0x4]             ; 0x00cd
    mov bx, ax                       ; 0x00d0
    mov ax, word [bx + 0x5c16]       ; 0x00d2
    cwd                              ; 0x00d6
    mov cx, ax                       ; 0x00d7
    mov bx, dx                       ; 0x00d9
    pop dx                           ; 0x00db
    pop ax                           ; 0x00dc
    call ds_dispatch_f99f            ; 0x00dd
    mov word [bp - 0x0010], dx       ; 0x00e0
    mov word [bp - 0x0012], ax       ; 0x00e3
    cmp dx, byte 0                   ; 0x00e6
    jg short @..api_idx_0012.l1      ; 0x00e9
    jne short @..api_idx_0012.l2     ; 0x00eb
    cmp ax, strict word 0x32         ; 0x00ed
    jbe short @..api_idx_0012.l2     ; 0x00f0
@..api_idx_0012.l1:
    jmp short @..api_idx_0012.l3     ; 0x00f2
@..api_idx_0012.l2:
    jmp near @..api_idx_0012.l17     ; 0x00f4
@..api_idx_0012.l3:
    cmp dx, byte 0                   ; 0x00f7
    jg short @..api_idx_0012.l4      ; 0x00fa
    jne short @..api_idx_0012.l5     ; 0x00fc
    cmp ax, strict word 0x42         ; 0x00fe
    jbe short @..api_idx_0012.l5     ; 0x0101
@..api_idx_0012.l4:
    jmp short @..api_idx_0012.l8     ; 0x0103
@..api_idx_0012.l5:
    mov word [bp - 0x000c], 5        ; 0x0105
    mov word [bp - 0x000a], 0xa      ; 0x010a
    cmp word [bp - 0x0008], byte 3   ; 0x010f
    jle short @..api_idx_0012.l6     ; 0x0113
    mov word [bp - 0x0008], 3        ; 0x0115
@..api_idx_0012.l6:
    cmp word [bp - 0x0006], byte 3   ; 0x011a
    jle short @..api_idx_0012.l7     ; 0x011e
    mov word [bp - 0x0006], 3        ; 0x0120
@..api_idx_0012.l7:
    jmp near @..api_idx_0012.l17     ; 0x0125
@..api_idx_0012.l8:
    cmp dx, byte 0                   ; 0x0128
    jg short @..api_idx_0012.l9      ; 0x012b
    jne short @..api_idx_0012.l10    ; 0x012d
    cmp ax, strict word 0x4b         ; 0x012f
    jbe short @..api_idx_0012.l10    ; 0x0132
@..api_idx_0012.l9:
    jmp short @..api_idx_0012.l13    ; 0x0134
@..api_idx_0012.l10:
    mov word [bp - 0x000e], 1        ; 0x0136
    mov word [bp - 0x000c], 0xa      ; 0x013b
    mov word [bp - 0x000a], 0x14     ; 0x0140
    cmp word [bp - 0x0008], byte 2   ; 0x0145
    jle short @..api_idx_0012.l11    ; 0x0149
    mov word [bp - 0x0008], data_0002 ; 0x014b
@..api_idx_0012.l11:
    cmp word [bp - 0x0006], byte 2   ; 0x0150
    jle short @..api_idx_0012.l12    ; 0x0154
    mov word [bp - 0x0006], data_0002 ; 0x0156
@..api_idx_0012.l12:
    mov ax, 0x248                    ; 0x015b
    imul word [bp + 0x4]             ; 0x015e
    mov bx, ax                       ; 0x0161
    mov ax, word [bx + 0x5c12]       ; 0x0163
    mov cx, 0x64                     ; 0x0167
    cwd                              ; 0x016a
    idiv cx                          ; 0x016b
    mov word [bp - 0x0004], ax       ; 0x016d
    mov word [bp - 0x0002], 0x83     ; 0x0170
    jmp short @..api_idx_0012.l17    ; 0x0175
@..api_idx_0012.l13:
    cmp word [bp - 0x0010], byte 0   ; 0x0177
    jg short @..api_idx_0012.l14     ; 0x017b
    jne short @..api_idx_0012.l15    ; 0x017d
    cmp word [bp - 0x0012], byte 0x5a ; 0x017f
    jbe short @..api_idx_0012.l15    ; 0x0183
@..api_idx_0012.l14:
    jmp short @..api_idx_0012.l16    ; 0x0185
@..api_idx_0012.l15:
    mov word [bp - 0x000e], data_0002 ; 0x0187
    mov word [bp - 0x000c], 0x14     ; 0x018c
    mov word [bp - 0x000a], 0x28     ; 0x0191
    mov word [bp - 0x0008], 1        ; 0x0196
    mov word [bp - 0x0006], 1        ; 0x019b
    mov ax, 0x248                    ; 0x01a0
    imul word [bp + 0x4]             ; 0x01a3
    mov bx, ax                       ; 0x01a6
    mov ax, word [bx + 0x5c12]       ; 0x01a8
    mov cx, 0x32                     ; 0x01ac
    cwd                              ; 0x01af
    idiv cx                          ; 0x01b0
    mov word [bp - 0x0004], ax       ; 0x01b2
    mov word [bp - 0x0002], 0x54     ; 0x01b5
    jmp short @..api_idx_0012.l17    ; 0x01ba
@..api_idx_0012.l16:
    mov word [bp - 0x000e], 4        ; 0x01bc
    mov word [bp - 0x000c], 0x28     ; 0x01c1
    mov word [bp - 0x000a], 0x50     ; 0x01c6
    mov word [bp - 0x0008], 1        ; 0x01cb
    mov word [bp - 0x0006], 1        ; 0x01d0
    mov ax, 0x248                    ; 0x01d5
    imul word [bp + 0x4]             ; 0x01d8
    mov bx, ax                       ; 0x01db
    mov ax, word [bx + 0x5c12]       ; 0x01dd
    mov cx, 0x19                     ; 0x01e1
    cwd                              ; 0x01e4
    idiv cx                          ; 0x01e5
    mov word [bp - 0x0004], ax       ; 0x01e7
    mov word [bp - 0x0002], 0x16     ; 0x01ea
@..api_idx_0012.l17:
    lea si, word [bp - 0x000e]       ; 0x01ef
    mov di, 0x9408                   ; 0x01f2
    mov cx, ds                       ; 0x01f5
    mov es, cx                       ; 0x01f7
    mov cx, 7                        ; 0x01f9
    rep movsw                        ; 0x01fc
    mov ax, 0x9408                   ; 0x01fe
    ret                              ; 0x0201
