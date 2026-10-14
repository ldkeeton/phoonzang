; auto-generated
api_idx_000e:
    mov ax, 0xfff2                   ; 0x50a1
    call aztec_csav                  ; 0x50a4
    cmp word [bss_8f20], byte 0      ; 0x50a7
    jg short @..api_idx_000e.l1      ; 0x50ac
    jmp near @..api_idx_000e.l8      ; 0x50ae
@..api_idx_000e.l1:
    mov ax, word [bss_82ee]          ; 0x50b1
    mov cx, word [bss_8f20]          ; 0x50b4
    dec cx                           ; 0x50b8
    sub ax, cx                       ; 0x50b9
    add ax, strict word 6            ; 0x50bb
    mov cx, 4                        ; 0x50be
    cwd                              ; 0x50c1
    idiv cx                          ; 0x50c2
    mov word [bp - 0x0002], dx       ; 0x50c4
    mov ax, dx                       ; 0x50c7
    jmp short @..api_idx_000e.l6     ; 0x50c9
@..api_idx_000e.l2:
    mov byte [bp - 0x000e], 1        ; 0x50cb
    mov byte [bp - 0x000d], 2        ; 0x50cf
    mov ax, 5                        ; 0x50d3
    cmp word [bp - 0x0002], byte 0   ; 0x50d6
    jne short @..api_idx_000e.l3     ; 0x50da
    mov ax, 4                        ; 0x50dc
@..api_idx_000e.l3:
    mov byte [bp - 0x000c], al       ; 0x50df
    mov byte [bp - 0x000b], 0        ; 0x50e2
    mov word [bp - 0x0004], 0        ; 0x50e6
    jmp short @..api_idx_000e.l7     ; 0x50eb
@..api_idx_000e.l4:
    mov byte [bp - 0x000e], 3        ; 0x50ed
    mov byte [bp - 0x000d], 0        ; 0x50f1
    mov ax, 0                        ; 0x50f5
    cmp word [bp - 0x0002], byte 3   ; 0x50f8
    jne short @..api_idx_000e.l5     ; 0x50fc
    mov ax, 1                        ; 0x50fe
@..api_idx_000e.l5:
    mov word [bp - 0x0004], ax       ; 0x5101
    jmp short @..api_idx_000e.l7     ; 0x5104
@..api_idx_000e.l6:
    cmp ax, strict word 0            ; 0x5106
    je short @..api_idx_000e.l2      ; 0x5109
    cmp ax, strict word 1            ; 0x510b
    je short @..api_idx_000e.l4      ; 0x510e
    cmp ax, strict word 2            ; 0x5110
    je short @..api_idx_000e.l2      ; 0x5113
    cmp ax, strict word 3            ; 0x5115
    je short @..api_idx_000e.l4      ; 0x5118
@..api_idx_000e.l7:
    mov ax, 0                        ; 0x511a
    push ax                          ; 0x511d
    push ax                          ; 0x511e
    lea ax, word [bp - 0x000e]       ; 0x511f
    push ax                          ; 0x5122
    push word [bp - 0x0004]          ; 0x5123
    mov ax, 0x8f                     ; 0x5126
    push ax                          ; 0x5129
    mov ax, 0x21                     ; 0x512a
    push ax                          ; 0x512d
    mov ax, 0xf8                     ; 0x512e
    push ax                          ; 0x5131
    mov ax, 0x48                     ; 0x5132
    push ax                          ; 0x5135
    mov al, byte [bp - 0x000e]       ; 0x5136
    sub ah, ah                       ; 0x5139
    mov bx, ax                       ; 0x513b
    mov al, byte [bx + 0x6eb5]       ; 0x513d
    sub ah, ah                       ; 0x5141
    inc ax                           ; 0x5143
    push ax                          ; 0x5144
    shl bx, 1                        ; 0x5145
    mov ax, bx                       ; 0x5147
    add ax, word [bp - 0x0004]       ; 0x5149
    mov bx, ax                       ; 0x514c
    mov al, byte [bx + 0x6e6c]       ; 0x514e
    sub ah, ah                       ; 0x5152
    inc ax                           ; 0x5154
    push ax                          ; 0x5155
    mov ax, 3                        ; 0x5156
    push ax                          ; 0x5159
    call thunk_28                    ; 0x515a
    add sp, byte 0x16                ; 0x515d
@..api_idx_000e.l8:
    ret                              ; 0x5160
