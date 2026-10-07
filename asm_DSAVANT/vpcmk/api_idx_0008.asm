api_idx_0008:
    mov ax, 0xfff8                   ; 0x0104
    call ds_dispatch_f40b            ; 0x0107
    push word [bp + 0xe]             ; 0x010a
    push word [bp + 0xc]             ; 0x010d
    call ds_dispatch_e823            ; 0x0110
    add sp, byte 4                   ; 0x0113
    push word [bp + 0x4]             ; 0x0116
    call ds_dispatch_fa90            ; 0x0119
    pop cx                           ; 0x011c
    mov word [bp - 0x0004], ax       ; 0x011d
    mov cx, 6                        ; 0x0120
    imul cx                          ; 0x0123
    add word [bp + 0x6], ax          ; 0x0125
@..api_idx_0008.l1:
    mov word [bp - 0x0006], 0        ; 0x0128
    mov word [bp - 0x0008], 0        ; 0x012d
@..api_idx_0008.l2:
    mov ax, 1                        ; 0x0132
    push ax                          ; 0x0135
    call ds_dispatch_ea50            ; 0x0136
    pop cx                           ; 0x0139
    test ax, ax                      ; 0x013a
    je short @..api_idx_0008.l3      ; 0x013c
    jmp near @..api_idx_0008.l7      ; 0x013e
@..api_idx_0008.l3:
    cmp word [bp - 0x0008], byte 0   ; 0x0141
    jne short @..api_idx_0008.l5     ; 0x0145
    push word [bp + 0xe]             ; 0x0147
    mov ax, word [bp + 0x8]          ; 0x014a
    add ax, strict word 5            ; 0x014d
    push ax                          ; 0x0150
    mov ax, word [bp + 0x6]          ; 0x0151
    add ax, strict word 5            ; 0x0154
    push ax                          ; 0x0157
    push word [bp + 0x8]             ; 0x0158
    push word [bp + 0x6]             ; 0x015b
    call ds_dispatch_e901            ; 0x015e
    add sp, byte 0x0a                ; 0x0161
    cmp word [bp - 0x0006], byte 0   ; 0x0164
    je short @..api_idx_0008.l4      ; 0x0168
    push word [bp + 0x8]             ; 0x016a
    push word [bp + 0x6]             ; 0x016d
    call ds_dispatch_e809            ; 0x0170
    add sp, byte 4                   ; 0x0173
    mov ax, 0                        ; 0x0176
    push ax                          ; 0x0179
    mov ax, 3                        ; 0x017a
    push ax                          ; 0x017d
    call ds_dispatch_e830            ; 0x017e
    add sp, byte 4                   ; 0x0181
@..api_idx_0008.l4:
    mov ax, word [bp + 0x8]          ; 0x0184
    add ax, strict word 5            ; 0x0187
    push ax                          ; 0x018a
    mov ax, word [bp + 0x6]          ; 0x018b
    add ax, strict word 5            ; 0x018e
    push ax                          ; 0x0191
    push word [bp + 0x8]             ; 0x0192
    push word [bp + 0x6]             ; 0x0195
    call ds_dispatch_e8da            ; 0x0198
    add sp, byte 8                   ; 0x019b
    mov ax, word [bp - 0x0006]       ; 0x019e
    inc ax                           ; 0x01a1
    mov cx, data_0002                ; 0x01a2
    cwd                              ; 0x01a5
    idiv cx                          ; 0x01a6
    mov word [bp - 0x0006], dx       ; 0x01a8
    mov word [bp - 0x0008], 0xa      ; 0x01ab
    jmp short @..api_idx_0008.l6     ; 0x01b0
@..api_idx_0008.l5:
    mov ax, 0xa                      ; 0x01b2
    push ax                          ; 0x01b5
    call ds_dispatch_e489            ; 0x01b6
    pop cx                           ; 0x01b9
    dec word [bp - 0x0008]           ; 0x01ba
@..api_idx_0008.l6:
    jmp near @..api_idx_0008.l2      ; 0x01bd
@..api_idx_0008.l7:
    mov ax, 1                        ; 0x01c0
    push ax                          ; 0x01c3
    call ds_dispatch_eb32            ; 0x01c4
    pop cx                           ; 0x01c7
    sub ah, ah                       ; 0x01c8
    mov word [bp - 0x0002], ax       ; 0x01ca
    push word [bp + 0xe]             ; 0x01cd
    mov ax, word [bp + 0x8]          ; 0x01d0
    add ax, strict word 5            ; 0x01d3
    push ax                          ; 0x01d6
    mov ax, word [bp + 0x6]          ; 0x01d7
    add ax, strict word 5            ; 0x01da
    push ax                          ; 0x01dd
    push word [bp + 0x8]             ; 0x01de
    push word [bp + 0x6]             ; 0x01e1
    call ds_dispatch_e901            ; 0x01e4
    add sp, byte 0x0a                ; 0x01e7
    mov ax, word [bp + 0x8]          ; 0x01ea
    add ax, strict word 5            ; 0x01ed
    push ax                          ; 0x01f0
    mov ax, word [bp + 0x6]          ; 0x01f1
    add ax, strict word 5            ; 0x01f4
    push ax                          ; 0x01f7
    push word [bp + 0x8]             ; 0x01f8
    push word [bp + 0x6]             ; 0x01fb
    call ds_dispatch_e8da            ; 0x01fe
    add sp, byte 8                   ; 0x0201
    cmp word [bp - 0x0002], byte 0x0d ; 0x0204
    jne short @..api_idx_0008.l8     ; 0x0208
    mov bx, word [bp + 0x4]          ; 0x020a
    mov si, word [bp - 0x0004]       ; 0x020d
    mov byte [bx + si], 0            ; 0x0210
    call ds_dispatch_ec17            ; 0x0213
    ret                              ; 0x0216
