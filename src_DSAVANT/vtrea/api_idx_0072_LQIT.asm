; auto-generated
api_idx_0072_LQIT:
    mov ax, 0xff8e                   ; 0x7151
    call aztec_csav                  ; 0x7154
    mov ax, word [bp + 0x4]          ; 0x7157
    shl ax, 1                        ; 0x715a
    mov si, ax                       ; 0x715c
    mov bx, word [bss_0e12]          ; 0x715e
    mov ax, word [bx + si + 0x1e0]   ; 0x7162
    mov word [bp - 0x0022], ax       ; 0x7166
    mov si, word [bp + 0x4]          ; 0x7169
    mov al, byte [bx + si + 0xa50]   ; 0x716c
    sub ah, ah                       ; 0x7170
    mov word [bp - 0x001e], ax       ; 0x7172
    mov ax, 5                        ; 0x7175
    push ax                          ; 0x7178
    mov ax, 0                        ; 0x7179
    push ax                          ; 0x717c
    push word [bp - 0x001e]          ; 0x717d
    call ds_dos_con_loc_QJHU         ; 0x7180
    add sp, byte 6                   ; 0x7183
    mov word [bp - 0x0020], ax       ; 0x7186
    mov word [bp - 0x0002], 0        ; 0x7189
@..api_idx_0072_LQIT.l1:
    mov ax, word [bp - 0x0002]       ; 0x718e
    shl ax, 1                        ; 0x7191
    mov bx, ax                       ; 0x7193
    mov word [bx - 0x69a2], 2        ; 0x7195
    mov word [bp - 0x0004], 0        ; 0x719b
    jmp short @..api_idx_0072_LQIT.l3 ; 0x71a0
@..api_idx_0072_LQIT.l2:
    mov ax, 5                        ; 0x71a2
    push ax                          ; 0x71a5
    call random_below                ; 0x71a6
    pop cx                           ; 0x71a9
    mov cx, word [bp - 0x0002]       ; 0x71aa
    shl cx, 1                        ; 0x71ad
    mov bx, cx                       ; 0x71af
    add word [bx - 0x69a2], ax       ; 0x71b1
    inc word [bp - 0x0004]           ; 0x71b5
@..api_idx_0072_LQIT.l3:
    mov ax, word [bp - 0x0004]       ; 0x71b8
    cmp ax, word [bp - 0x0020]       ; 0x71bb
    jl short @..api_idx_0072_LQIT.l2 ; 0x71be
    mov ax, 0x5f                     ; 0x71c0
    push ax                          ; 0x71c3
    mov ax, 0                        ; 0x71c4
    push ax                          ; 0x71c7
    mov ax, word [bp - 0x0002]       ; 0x71c8
    shl ax, 1                        ; 0x71cb
    mov bx, ax                       ; 0x71cd
    push word [bx - 0x69a2]          ; 0x71cf
    call clamp_between               ; 0x71d3
    add sp, byte 6                   ; 0x71d6
    mov cx, word [bp - 0x0002]       ; 0x71d9
    shl cx, 1                        ; 0x71dc
    mov bx, cx                       ; 0x71de
    mov word [bx - 0x69a2], ax       ; 0x71e0
    inc word [bp - 0x0002]           ; 0x71e4
    mov ax, word [bp - 0x0002]       ; 0x71e7
    cmp ax, strict word 6            ; 0x71ea
    jl short @..api_idx_0072_LQIT.l1 ; 0x71ed
    mov word [bp - 0x0002], 0        ; 0x71ef
@..api_idx_0072_LQIT.l4:
    mov ax, word [bp - 0x0002]       ; 0x71f4
    shl ax, 1                        ; 0x71f7
    mov bx, ax                       ; 0x71f9
    add bx, bp                       ; 0x71fb
    mov word [bx - 0x001a], 1        ; 0x71fd
    inc word [bp - 0x0002]           ; 0x7202
    mov ax, word [bp - 0x0002]       ; 0x7205
    cmp ax, strict word 2            ; 0x7208
    jle short @..api_idx_0072_LQIT.l4 ; 0x720b
    mov word [bp - 0x0014], 0xffff   ; 0x720d
@..api_idx_0072_LQIT.l5:
    mov word [bss_9126], 1           ; 0x7212
    mov ax, 0                        ; 0x7218
    push ax                          ; 0x721b
    call api_idx_000a_TIPG           ; 0x721c
    pop cx                           ; 0x721f
    mov word [bss_9126], 0           ; 0x7220
    lea ax, word [bp - 0x001a]       ; 0x7226
    push ax                          ; 0x7229
    mov ax, 0                        ; 0x722a
    push ax                          ; 0x722d
    mov ax, 0xffff                   ; 0x722e
    push ax                          ; 0x7231
    mov ax, 1                        ; 0x7232
    push ax                          ; 0x7235
    mov ax, 3                        ; 0x7236
    push ax                          ; 0x7239
    mov ax, 1                        ; 0x723a
    push ax                          ; 0x723d
    mov ax, 0xc                      ; 0x723e
    push ax                          ; 0x7241
    mov ax, 0x34                     ; 0x7242
    push ax                          ; 0x7245
    mov ax, 8                        ; 0x7246
    push ax                          ; 0x7249
    mov ax, 0x9c                     ; 0x724a
    push ax                          ; 0x724d
    mov ax, 0x52                     ; 0x724e
    push ax                          ; 0x7251
    mov ax, 0                        ; 0x7252
    push ax                          ; 0x7255
    mov ax, 0x834                    ; 0x7256
    push ax                          ; 0x7259
    call loc_IOMS                    ; 0x725a
    add sp, byte 0x1a                ; 0x725d
    mov word [bp - 0x001c], ax       ; 0x7260
    lea ax, word [bp - 0x0072]       ; 0x7263
    push ax                          ; 0x7266
    mov ax, word [bp - 0x001c]       ; 0x7267
    add ax, 0x834                    ; 0x726a
    push ax                          ; 0x726d
    call ds_app_mem_TIMR             ; 0x726e
    add sp, byte 4                   ; 0x7271
    mov ax, 0x1a                     ; 0x7274
    push ax                          ; 0x7277
    mov ax, 1                        ; 0x7278
    push ax                          ; 0x727b
    mov ax, 0xc                      ; 0x727c
    push ax                          ; 0x727f
    mov ax, 0x34                     ; 0x7280
    push ax                          ; 0x7283
    mov ax, 8                        ; 0x7284
    push ax                          ; 0x7287
    mov ax, 0x9c                     ; 0x7288
    push ax                          ; 0x728b
    mov ax, 0x52                     ; 0x728c
    push ax                          ; 0x728f
    push word [bss_9052]             ; 0x7290
    lea ax, word [bp - 0x0072]       ; 0x7294
    push ax                          ; 0x7297
    call api_idx_0008_JJHR           ; 0x7298
    add sp, byte 0x12                ; 0x729b
    mov ax, 0                        ; 0x729e
    push ax                          ; 0x72a1
    call api_idx_000a_TIPG           ; 0x72a2
    pop cx                           ; 0x72a5
    mov ax, word [bp - 0x001c]       ; 0x72a6
    jmp short @..api_idx_0072_LQIT.l11 ; 0x72a9
@..api_idx_0072_LQIT.l6:
    cmp word [bss_0e32], byte 0      ; 0x72ab
    jne short @..api_idx_0072_LQIT.l7 ; 0x72b0
    mov ax, 1                        ; 0x72b2
    push ax                          ; 0x72b5
    call api_idx_000a_TIPG           ; 0x72b6
    pop cx                           ; 0x72b9
@..api_idx_0072_LQIT.l7:
    call ds_app_VGOM                 ; 0x72ba
    mov word [bp - 0x0006], ax       ; 0x72bd
    cmp ax, strict word 0xffff       ; 0x72c0
    je short @..api_idx_0072_LQIT.l8 ; 0x72c3
    push ax                          ; 0x72c5
    call ds_app_KTPM                 ; 0x72c6
    pop cx                           ; 0x72c9
    test ax, ax                      ; 0x72ca
    je short @..api_idx_0072_LQIT.l8 ; 0x72cc
    mov ax, 0                        ; 0x72ce
    push ax                          ; 0x72d1
    push word [bp + 0x4]             ; 0x72d2
    push word [bp - 0x0006]          ; 0x72d5
    call api_idx_0034_NSGM           ; 0x72d8
    add sp, byte 6                   ; 0x72db
    test ax, ax                      ; 0x72de
    jne short @..api_idx_0072_LQIT.l8 ; 0x72e0
    mov word [bp - 0x001c], 2        ; 0x72e2
@..api_idx_0072_LQIT.l8:
    jmp short @..api_idx_0072_LQIT.l12 ; 0x72e7
@..api_idx_0072_LQIT.l9:
    mov ax, 1                        ; 0x72e9
    push ax                          ; 0x72ec
    push word [bp + 0x4]             ; 0x72ed
    mov ax, 0                        ; 0x72f0
    push ax                          ; 0x72f3
    call api_idx_0034_NSGM           ; 0x72f4
    add sp, byte 6                   ; 0x72f7
    test ax, ax                      ; 0x72fa
    jne short @..api_idx_0072_LQIT.l10 ; 0x72fc
    mov word [bp - 0x001c], 2        ; 0x72fe
@..api_idx_0072_LQIT.l10:
    jmp short @..api_idx_0072_LQIT.l12 ; 0x7303
@..api_idx_0072_LQIT.l11:
    cmp ax, strict word 0            ; 0x7305
    je short @..api_idx_0072_LQIT.l6 ; 0x7308
    cmp ax, strict word 1            ; 0x730a
    je short @..api_idx_0072_LQIT.l9 ; 0x730d
@..api_idx_0072_LQIT.l12:
    cmp word [bp - 0x001c], byte 2   ; 0x730f
    je short @..api_idx_0072_LQIT.l13 ; 0x7313
    jmp near @..api_idx_0072_LQIT.l5 ; 0x7315
@..api_idx_0072_LQIT.l13:
    ret                              ; 0x7318
