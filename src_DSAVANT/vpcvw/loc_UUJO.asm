; auto-generated
loc_UUJO:
    mov ax, 0xfe6c                   ; 0x70ca
    call aztec_csav                  ; 0x70cd
    mov word [bp - 0x0194], 0        ; 0x70d0
    cmp word [bss_0e32], byte 0      ; 0x70d6
    je short @..loc_UUJO.l1          ; 0x70db
    lea ax, word [bp - 0x000c]       ; 0x70dd
    push ax                          ; 0x70e0
    lea ax, word [bp - 0x000a]       ; 0x70e1
    push ax                          ; 0x70e4
    call thunk_38                    ; 0x70e5
    add sp, byte 4                   ; 0x70e8
    mov word [bp - 0x0194], ax       ; 0x70eb
@..loc_UUJO.l1:
    mov ax, 0                        ; 0x70ef
    push ax                          ; 0x70f2
    mov bx, word [bp + 0x6]          ; 0x70f3
    push word [bx]                   ; 0x70f6
    lea ax, word [bp - 0x007a]       ; 0x70f8
    push ax                          ; 0x70fb
    mov ax, 1                        ; 0x70fc
    push ax                          ; 0x70ff
    call ds_app_file_NKGK            ; 0x7100
    add sp, byte 8                   ; 0x7103
    cmp word [bp + 0xa], byte 0      ; 0x7106
    je short @..loc_UUJO.l4          ; 0x710a
    mov ax, 3                        ; 0x710c
    imul word [bp + 0xa]             ; 0x710f
    push ax                          ; 0x7112
    mov al, byte [bp - 0x003f]       ; 0x7113
    sub ah, ah                       ; 0x7116
    mov cx, ax                       ; 0x7118
    pop ax                           ; 0x711a
    cmp ax, cx                       ; 0x711b
    jl short @..loc_UUJO.l2          ; 0x711d
    mov bx, word [bp + 0x6]          ; 0x711f
    mov al, byte [bx + 0x7]          ; 0x7122
    sub ah, ah                       ; 0x7125
    or ax, 0x80                      ; 0x7127
    mov byte [bx + 0x7], al          ; 0x712a
    jmp short @..loc_UUJO.l3         ; 0x712d
@..loc_UUJO.l2:
    lea ax, word [bp - 0x00f2]       ; 0x712f
    push ax                          ; 0x7133
    mov ax, 0x1d1                    ; 0x7134
    push ax                          ; 0x7137
    call ds_app_mem_TIMR             ; 0x7138
    add sp, byte 4                   ; 0x713b
    mov ax, 1                        ; 0x713e
    push ax                          ; 0x7141
    lea ax, word [bp - 0x00f2]       ; 0x7142
    push ax                          ; 0x7146
    call api_idx_0004_PMIU           ; 0x7147
    add sp, byte 4                   ; 0x714a
    mov ax, 0                        ; 0x714d
    ret                              ; 0x7150
@..loc_UUJO.l3:
    jmp short @..loc_UUJO.l5         ; 0x7151
@..loc_UUJO.l4:
    mov ax, 0x248                    ; 0x7153
    imul word [bp + 0x4]             ; 0x7156
    mov bx, ax                       ; 0x7159
    mov al, byte [bx + 0x5d84]       ; 0x715b
    sub ah, ah                       ; 0x715f
    mov cx, 5                        ; 0x7161
    cwd                              ; 0x7164
    idiv cx                          ; 0x7165
    push ax                          ; 0x7167
    mov al, byte [bp - 0x003f]       ; 0x7168
    sub ah, ah                       ; 0x716b
    mov cx, ax                       ; 0x716d
    pop ax                           ; 0x716f
    cmp ax, cx                       ; 0x7170
    jl short @..loc_UUJO.l5          ; 0x7172
    mov bx, word [bp + 0x6]          ; 0x7174
    mov al, byte [bx + 0x7]          ; 0x7177
    sub ah, ah                       ; 0x717a
    or ax, 0x80                      ; 0x717c
    mov byte [bx + 0x7], al          ; 0x717f
@..loc_UUJO.l5:
    mov bx, word [bp + 0x6]          ; 0x7182
    mov al, byte [bx + 0x7]          ; 0x7185
    sub ah, ah                       ; 0x7188
    test ax, 0x80                    ; 0x718a
    jne short @..loc_UUJO.l6         ; 0x718d
    mov ax, 0xffff                   ; 0x718f
    ret                              ; 0x7192
@..loc_UUJO.l6:
    lea ax, word [bp - 0x007a]       ; 0x7193
    push ax                          ; 0x7196
    push word [bp + 0x8]             ; 0x7197
    call aztec_strcpy                ; 0x719a
    add sp, byte 4                   ; 0x719d
    mov ax, 0                        ; 0x71a0
    push ax                          ; 0x71a3
    push ax                          ; 0x71a4
    push word [bss_93f8]             ; 0x71a5
    push word [bss_93f6]             ; 0x71a9
    call thunk_12                    ; 0x71ad
    add sp, byte 8                   ; 0x71b0
    mov word [bp - 0x000c], 0x72     ; 0x71b3
    mov word [bp - 0x000a], 0x1a     ; 0x71b8
    push word [bp - 0x000c]          ; 0x71bd
    push word [bp - 0x000a]          ; 0x71c0
    call thunk                       ; 0x71c3
    add sp, byte 4                   ; 0x71c6
    mov ax, 4                        ; 0x71c9
    push ax                          ; 0x71cc
    mov al, byte [bp - 0x0041]       ; 0x71cd
    sub ah, ah                       ; 0x71d0
    push ax                          ; 0x71d2
    call ds_loc_TJTV                 ; 0x71d3
    add sp, byte 4                   ; 0x71d6
    add word [bp - 0x000a], byte 0x60 ; 0x71d9
    push word [bp - 0x000c]          ; 0x71dd
    push word [bp - 0x000a]          ; 0x71e0
    call thunk                       ; 0x71e3
    add sp, byte 4                   ; 0x71e6
    mov ax, 4                        ; 0x71e9
    push ax                          ; 0x71ec
    mov al, byte [bp - 0x0041]       ; 0x71ed
    sub ah, ah                       ; 0x71f0
    push ax                          ; 0x71f2
    call ds_loc_TJTV                 ; 0x71f3
    add sp, byte 4                   ; 0x71f6
    mov word [bp - 0x000a], 0x50     ; 0x71f9
    mov ax, 0                        ; 0x71fe
    push ax                          ; 0x7201
    mov ax, 1                        ; 0x7202
    push ax                          ; 0x7205
    call thunk_3                     ; 0x7206
    add sp, byte 4                   ; 0x7209
    mov ax, 0                        ; 0x720c
    push ax                          ; 0x720f
    mov ax, 0x28                     ; 0x7210
    push ax                          ; 0x7213
    lea ax, word [bp - 0x00a2]       ; 0x7214
    push ax                          ; 0x7218
    call aztec_setmem                ; 0x7219
    add sp, byte 6                   ; 0x721c
    lea ax, word [bp - 0x007a]       ; 0x721f
    push ax                          ; 0x7222
    lea ax, word [bp - 0x00a2]       ; 0x7223
    push ax                          ; 0x7227
    call aztec_strcpy                ; 0x7228
    add sp, byte 4                   ; 0x722b
    lea ax, word [bp - 0x00a2]       ; 0x722e
    push ax                          ; 0x7232
    call aztec_strlen                ; 0x7233
    pop cx                           ; 0x7236
    dec ax                           ; 0x7237
    mov word [bp - 0x0004], ax       ; 0x7238
    mov ax, 0x2f                     ; 0x723b
    push ax                          ; 0x723e
    lea ax, word [bp - 0x00a2]       ; 0x723f
    push ax                          ; 0x7243
    call strpos                      ; 0x7244
    add sp, byte 4                   ; 0x7247
    mov word [bp - 0x0006], ax       ; 0x724a
    cmp ax, strict word 0xffff       ; 0x724d
    jne short @..loc_UUJO.l7         ; 0x7250
    lea ax, word [bp - 0x00a2]       ; 0x7252
    push ax                          ; 0x7256
    call aztec_strlen                ; 0x7257
    pop cx                           ; 0x725a
    mov word [bp - 0x0006], ax       ; 0x725b
@..loc_UUJO.l7:
    cmp word [bp - 0x0006], byte 0x0a ; 0x725e
    jle short @..loc_UUJO.l8         ; 0x7262
    mov word [bp - 0x0006], 0xa      ; 0x7264
@..loc_UUJO.l8:
    mov bx, word [bp - 0x0006]       ; 0x7269
    add bx, bp                       ; 0x726c
    mov byte [bx - 0x00a2], 0        ; 0x726e
    mov byte [bx - 0x0097], 0        ; 0x7273
@..loc_UUJO.l9:
    mov ax, word [bp - 0x0004]       ; 0x7278
    cmp ax, word [bp - 0x0006]       ; 0x727b
    jle short @..loc_UUJO.l10        ; 0x727e
    mov bx, ax                       ; 0x7280
    add bx, bp                       ; 0x7282
    cmp byte [bx - 0x00a2], 0x20     ; 0x7284
    jne short @..loc_UUJO.l10        ; 0x7289
    dec word [bp - 0x0004]           ; 0x728b
    jmp short @..loc_UUJO.l9         ; 0x728e
@..loc_UUJO.l10:
    mov ax, word [bp - 0x0006]       ; 0x7290
    sub word [bp - 0x0004], ax       ; 0x7293
    push word [bp - 0x000c]          ; 0x7296
    mov cx, 6                        ; 0x7299
    imul cx                          ; 0x729c
    mov cx, 2                        ; 0x729e
    cwd                              ; 0x72a1
    idiv cx                          ; 0x72a2
    mov cx, ax                       ; 0x72a4
    mov ax, word [bp - 0x000a]       ; 0x72a6
    sub ax, cx                       ; 0x72a9
    push ax                          ; 0x72ab
    call thunk                       ; 0x72ac
    add sp, byte 4                   ; 0x72af
    mov ax, 0                        ; 0x72b2
    push ax                          ; 0x72b5
    lea ax, word [bp - 0x00a2]       ; 0x72b6
    push ax                          ; 0x72ba
    call ds_string_loc_QRJV          ; 0x72bb
    add sp, byte 4                   ; 0x72be
    mov ax, word [bp - 0x000c]       ; 0x72c1
    add ax, strict word 6            ; 0x72c4
    push ax                          ; 0x72c7
    mov ax, 6                        ; 0x72c8
    imul word [bp - 0x0004]          ; 0x72cb
    mov cx, 2                        ; 0x72ce
    cwd                              ; 0x72d1
    idiv cx                          ; 0x72d2
    mov cx, ax                       ; 0x72d4
    mov ax, word [bp - 0x000a]       ; 0x72d6
    sub ax, cx                       ; 0x72d9
    push ax                          ; 0x72db
    call thunk                       ; 0x72dc
    add sp, byte 4                   ; 0x72df
    mov ax, 0                        ; 0x72e2
    push ax                          ; 0x72e5
    mov ax, word [bp - 0x0006]       ; 0x72e6
    lea cx, word [bp - 0x00a1]       ; 0x72e9
    add ax, cx                       ; 0x72ed
    push ax                          ; 0x72ef
    call ds_string_loc_QRJV          ; 0x72f0
    add sp, byte 4                   ; 0x72f3
    add word [bp - 0x000c], byte 0x12 ; 0x72f6
    mov word [bp - 0x0010], 0        ; 0x72fa
    mov word [bp - 0x0012], 0        ; 0x72ff
    mov word [bp - 0x0014], 0        ; 0x7304
    mov word [bp - 0x0016], 0        ; 0x7309
    mov word [bp - 0x0018], 0        ; 0x730e
    mov word [bp - 0x001a], 0        ; 0x7313
    mov word [bp - 0x001c], 0        ; 0x7318
    mov word [bp - 0x001e], 0        ; 0x731d
    mov word [bp - 0x0020], 0        ; 0x7322
    mov word [bp - 0x0026], 0        ; 0x7327
    mov word [bp - 0x002a], 0        ; 0x732c
    mov word [bp - 0x0028], 0        ; 0x7331
    mov word [bp - 0x0022], 1        ; 0x7336
    mov ax, word [dseg_0024]         ; 0x733b
    mov word [bp - 0x0024], ax       ; 0x733e
    mov al, byte [bp - 0x0042]       ; 0x7341
    sub ah, ah                       ; 0x7344
    jmp near loc_744d                ; 0x7346
