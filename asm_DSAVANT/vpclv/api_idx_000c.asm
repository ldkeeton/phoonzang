; auto-generated
api_idx_000c:
    mov ax, 0xfff4                   ; 0x0202
    call aztec_csav                  ; 0x0205
    mov word [bp - 0x0002], 0        ; 0x0208
@..api_idx_000c.l1:
    mov ax, 0x14                     ; 0x020d
    imul word [bp - 0x0002]          ; 0x0210
    mov cx, word [bp - 0x0002]       ; 0x0213
    shl cx, 1                        ; 0x0216
    mov bx, cx                       ; 0x0218
    mov cx, word [bx - 0x7cf2]       ; 0x021a
    shl cx, 1                        ; 0x021e
    add ax, cx                       ; 0x0220
    mov bx, ax                       ; 0x0222
    mov al, byte [bx + 0x1d4]        ; 0x0224
    mov byte [bp - 0x000c], al       ; 0x0228
    mov byte [bp - 0x000b], 0        ; 0x022b
    mov ax, 0                        ; 0x022f
    push ax                          ; 0x0232
    push ax                          ; 0x0233
    lea ax, word [bp - 0x000c]       ; 0x0234
    push ax                          ; 0x0237
    mov ax, 0                        ; 0x0238
    push ax                          ; 0x023b
    mov ax, 0xc7                     ; 0x023c
    push ax                          ; 0x023f
    mov ax, 0                        ; 0x0240
    push ax                          ; 0x0243
    mov ax, 0x13f                    ; 0x0244
    push ax                          ; 0x0247
    mov ax, 0                        ; 0x0248
    push ax                          ; 0x024b
    mov ax, 0xc                      ; 0x024c
    imul word [bp + 0x8]             ; 0x024f
    mov cx, word [bp - 0x0002]       ; 0x0252
    shl cx, 1                        ; 0x0255
    add ax, cx                       ; 0x0257
    mov bx, ax                       ; 0x0259
    mov ax, word [bx + 0x1bc]        ; 0x025b
    add ax, word [bp + 0x6]          ; 0x025f
    push ax                          ; 0x0262
    mov ax, word [bx + 0x1a4]        ; 0x0263
    add ax, word [bp + 0x4]          ; 0x0267
    push ax                          ; 0x026a
    mov ax, 2                        ; 0x026b
    push ax                          ; 0x026e
    call thunk_28                    ; 0x026f
    add sp, byte 0x16                ; 0x0272
    inc word [bp - 0x0002]           ; 0x0275
    mov ax, word [bp - 0x0002]       ; 0x0278
    cmp ax, strict word 6            ; 0x027b
    jl short @..api_idx_000c.l1      ; 0x027e
    ret                              ; 0x0280
