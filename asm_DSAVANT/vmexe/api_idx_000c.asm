api_idx_000c:
    mov ax, 0xfff4                   ; 0x6f33
    call ds_dispatch_f40b            ; 0x6f36
    mov word [bss_90e2], 5           ; 0x6f39
    mov word [bp - 0x0002], 0        ; 0x6f3f
@..api_idx_000c.l1:
    mov word [bp - 0x0004], 0        ; 0x6f44
@..api_idx_000c.l2:
    mov ax, 6                        ; 0x6f49
    imul word [bp - 0x0002]          ; 0x6f4c
    mov cx, word [bp - 0x0004]       ; 0x6f4f
    shl cx, 1                        ; 0x6f52
    add ax, cx                       ; 0x6f54
    mov bx, ax                       ; 0x6f56
    mov word [bx - 0x6f36], 0xffff   ; 0x6f58
    inc word [bp - 0x0004]           ; 0x6f5e
    mov ax, word [bp - 0x0004]       ; 0x6f61
    cmp ax, strict word 3            ; 0x6f64
    jl short @..api_idx_000c.l2      ; 0x6f67
    inc word [bp - 0x0002]           ; 0x6f69
    mov ax, word [bp - 0x0002]       ; 0x6f6c
    cmp ax, strict word 3            ; 0x6f6f
    jl short @..api_idx_000c.l1      ; 0x6f72
    mov bx, word [bss_8492]          ; 0x6f74
    cmp byte [bx + 0xd8], 0          ; 0x6f78
    jbe short @..api_idx_000c.l3     ; 0x6f7d
    mov ax, 0x10                     ; 0x6f7f
    push ax                          ; 0x6f82
    call ds_dispatch_b7e0            ; 0x6f83
    pop cx                           ; 0x6f86
@..api_idx_000c.l3:
    mov word [bss_8460], 0x64        ; 0x6f87
@..api_idx_000c.l4:
    mov word [bss_8464], 0           ; 0x6f8d
@..api_idx_000c.l5:
    mov word [bss_8462], 0           ; 0x6f93
    jmp near @..api_idx_000c.l24     ; 0x6f99
@..api_idx_000c.l6:
    mov ax, 0x2c                     ; 0x6f9c
    imul word [bss_8462]             ; 0x6f9f
    mov cx, ax                       ; 0x6fa3
    mov ax, word [bss_8464]          ; 0x6fa5
    shl ax, 1                        ; 0x6fa8
    mov bx, ax                       ; 0x6faa
    mov ax, word [bx - 0x7b7e]       ; 0x6fac
    add ax, cx                       ; 0x6fb0
    mov word [bp - 0x0006], ax       ; 0x6fb2
    mov bx, ax                       ; 0x6fb5
    cmp byte [bx + 0x24], 0          ; 0x6fb7
    ja short @..api_idx_000c.l7      ; 0x6fbb
    jmp near @..api_idx_000c.l16     ; 0x6fbd
@..api_idx_000c.l7:
    cmp byte [bx + 0x22], 3          ; 0x6fc0
    jne short @..api_idx_000c.l8     ; 0x6fc4
    jmp near @..api_idx_000c.l16     ; 0x6fc6
@..api_idx_000c.l8:
    mov al, byte [bx + 0x25]         ; 0x6fc9
    sub ah, ah                       ; 0x6fcc
    cmp ax, word [bss_8460]          ; 0x6fce
    je short @..api_idx_000c.l9      ; 0x6fd2
    jmp near @..api_idx_000c.l16     ; 0x6fd4
@..api_idx_000c.l9:
    cmp byte [bx + 0x2b], 0          ; 0x6fd7
    je short @..api_idx_000c.l10     ; 0x6fdb
    jmp near @..api_idx_000c.l14     ; 0x6fdd
@..api_idx_000c.l10:
    mov al, byte [bx + 0x21]         ; 0x6fe0
    sub ah, ah                       ; 0x6fe3
    mov si, ax                       ; 0x6fe5
    mov al, byte [bx + si + 0x18]    ; 0x6fe7
    sub ah, ah                       ; 0x6fea
    cmp ax, word [bss_8460]          ; 0x6fec
    je short @..api_idx_000c.l12     ; 0x6ff0
    mov byte [bx + 0x2b], 3          ; 0x6ff2
    mov ax, 1                        ; 0x6ff6
    push ax                          ; 0x6ff9
    call api_idx_000a_2              ; 0x6ffa
    pop cx                           ; 0x6ffd
    mov ax, 4                        ; 0x6ffe
    push ax                          ; 0x7001
    call api_idx_0004_5              ; 0x7002
    pop cx                           ; 0x7005
    mov ax, 0                        ; 0x7006
    push ax                          ; 0x7009
    mov ax, 0x43                     ; 0x700a
    push ax                          ; 0x700d
    mov ax, 0xffff                   ; 0x700e
    push ax                          ; 0x7011
    mov ax, 0xdbe                    ; 0x7012
    push ax                          ; 0x7015
    call api_idx_0006_6              ; 0x7016
    add sp, byte 8                   ; 0x7019
    cmp word [bss_8464], byte 0      ; 0x701c
    jne short @..api_idx_000c.l11    ; 0x7021
    mov ax, 0                        ; 0x7023
    push ax                          ; 0x7026
    push word [bss_8462]             ; 0x7027
    call api_idx_0004_2              ; 0x702b
    add sp, byte 4                   ; 0x702e
@..api_idx_000c.l11:
    push word [bss_9058]             ; 0x7031
    call api_idx_0004_5              ; 0x7035
    pop cx                           ; 0x7038
@..api_idx_000c.l12:
    mov ax, 0xa                      ; 0x7039
    push ax                          ; 0x703c
    call ds_dispatch_b7a9            ; 0x703d
    pop cx                           ; 0x7040
    mov cx, ax                       ; 0x7041
    mov ax, word [bss_8460]          ; 0x7043
    sub ax, cx                       ; 0x7046
    add ax, strict word 0xfffb       ; 0x7048
    mov word [bp - 0x000a], ax       ; 0x704b
    cmp ax, strict word 1            ; 0x704e
    jge short @..api_idx_000c.l13    ; 0x7051
    mov word [bp - 0x000a], 1        ; 0x7053
@..api_idx_000c.l13:
    mov al, byte [bp - 0x000a]       ; 0x7058
    mov bx, word [bp - 0x0006]       ; 0x705b
    mov byte [bx + 0x25], al         ; 0x705e
    jmp short @..api_idx_000c.l16    ; 0x7061
@..api_idx_000c.l14:
    mov bx, word [bp - 0x0006]       ; 0x7063
    cmp byte [bx + 0x2b], 3          ; 0x7066
    jne short @..api_idx_000c.l16    ; 0x706a
    mov byte [bx + 0x2b], 0          ; 0x706c
    mov bx, word [bp - 0x0006]       ; 0x7070
    mov byte [bx + 0x25], 0          ; 0x7073
    mov ax, 1                        ; 0x7077
    push ax                          ; 0x707a
    call api_idx_000a_2              ; 0x707b
    pop cx                           ; 0x707e
    mov ax, 4                        ; 0x707f
    push ax                          ; 0x7082
    call api_idx_0004_5              ; 0x7083
    pop cx                           ; 0x7086
    mov ax, 0x43                     ; 0x7087
    push ax                          ; 0x708a
    mov ax, 0xffff                   ; 0x708b
    push ax                          ; 0x708e
    mov ax, 0xdbf                    ; 0x708f
    push ax                          ; 0x7092
    call api_idx_0006_6              ; 0x7093
    add sp, byte 6                   ; 0x7096
    cmp word [bss_8464], byte 0      ; 0x7099
    jne short @..api_idx_000c.l15    ; 0x709e
    mov ax, 0                        ; 0x70a0
    push ax                          ; 0x70a3
    push word [bss_8462]             ; 0x70a4
    call api_idx_0004_2              ; 0x70a8
    add sp, byte 4                   ; 0x70ab
@..api_idx_000c.l15:
    push word [bss_9058]             ; 0x70ae
    call api_idx_0004_5              ; 0x70b2
    pop cx                           ; 0x70b5
@..api_idx_000c.l16:
    mov bx, word [bp - 0x0006]       ; 0x70b6
    mov al, byte [bx + 0x21]         ; 0x70b9
    sub ah, ah                       ; 0x70bc
    mov si, ax                       ; 0x70be
    mov al, byte [bx + si + 0x18]    ; 0x70c0
    sub ah, ah                       ; 0x70c3
    cmp ax, word [bss_8460]          ; 0x70c5
    je short @..api_idx_000c.l17     ; 0x70c9
    jmp near @..api_idx_000c.l21     ; 0x70cb
@..api_idx_000c.l17:
    cmp byte [bx + 0x24], 0          ; 0x70ce
    jbe short @..api_idx_000c.l19    ; 0x70d2
    cmp byte [bx + 0x2b], 3          ; 0x70d4
    jne short @..api_idx_000c.l19    ; 0x70d8
    cmp byte [bx + 0x22], 3          ; 0x70da
    je short @..api_idx_000c.l19     ; 0x70de
    mov byte [bx + 0x2b], 0          ; 0x70e0
    mov bx, word [bp - 0x0006]       ; 0x70e4
    mov byte [bx + 0x25], 0          ; 0x70e7
    mov ax, 1                        ; 0x70eb
    push ax                          ; 0x70ee
    call api_idx_000a_2              ; 0x70ef
    pop cx                           ; 0x70f2
    mov ax, 4                        ; 0x70f3
    push ax                          ; 0x70f6
    call api_idx_0004_5              ; 0x70f7
    pop cx                           ; 0x70fa
    mov ax, 0x43                     ; 0x70fb
    push ax                          ; 0x70fe
    mov ax, 0xffff                   ; 0x70ff
    push ax                          ; 0x7102
    mov ax, 0xdbf                    ; 0x7103
    push ax                          ; 0x7106
    call api_idx_0006_6              ; 0x7107
    add sp, byte 6                   ; 0x710a
    cmp word [bss_8464], byte 0      ; 0x710d
    jne short @..api_idx_000c.l18    ; 0x7112
    mov ax, 0                        ; 0x7114
    push ax                          ; 0x7117
    push word [bss_8462]             ; 0x7118
    call api_idx_0004_2              ; 0x711c
    add sp, byte 4                   ; 0x711f
@..api_idx_000c.l18:
    push word [bss_9058]             ; 0x7122
    call api_idx_0004_5              ; 0x7126
    pop cx                           ; 0x7129
@..api_idx_000c.l19:
    call api_idx_0014                ; 0x712a
    mov bx, word [bp - 0x0006]       ; 0x712d
    inc byte [bx + 0x21]             ; 0x7130
    cmp word [bss_830a], byte 0x0d   ; 0x7133
    je short @..api_idx_000c.l20     ; 0x7138
    ret                              ; 0x713a
@..api_idx_000c.l20:
    jmp short @..api_idx_000c.l22    ; 0x713b
@..api_idx_000c.l21:
    mov bx, word [bp - 0x0006]       ; 0x713d
    mov al, byte [bx + 0x21]         ; 0x7140
    sub ah, ah                       ; 0x7143
    mov si, ax                       ; 0x7145
    cmp byte [bx + si + 0x18], 0     ; 0x7147
    jne short @..api_idx_000c.l22    ; 0x714b
    inc byte [bx + 0x21]             ; 0x714d
@..api_idx_000c.l22:
    mov bx, word [bp - 0x0006]       ; 0x7150
    cmp byte [bx + 0x21], 3          ; 0x7153
    jbe short @..api_idx_000c.l23    ; 0x7157
    mov byte [bx + 0x21], 3          ; 0x7159
@..api_idx_000c.l23:
    inc word [bss_8462]              ; 0x715d
@..api_idx_000c.l24:
    mov ax, word [bss_8464]          ; 0x7161
    shl ax, 1                        ; 0x7164
    mov bx, ax                       ; 0x7166
    mov bx, word [bx - 0x7b7e]       ; 0x7168
    mov al, byte [bx + 0x1a1]        ; 0x716c
    sub ah, ah                       ; 0x7170
    cmp ax, word [bss_8462]          ; 0x7172
    jle short @..api_idx_000c.l25    ; 0x7176
    jmp near @..api_idx_000c.l6      ; 0x7178
@..api_idx_000c.l25:
    mov ax, word [bss_8464]          ; 0x717b
    shl ax, 1                        ; 0x717e
    mov bx, ax                       ; 0x7180
    mov bx, word [bx - 0x7b7e]       ; 0x7182
    cmp byte [bx + 0x1a1], 0         ; 0x7186
    ja short @..api_idx_000c.l26     ; 0x718b
    jmp near @..api_idx_000c.l32     ; 0x718d
@..api_idx_000c.l26:
    mov word [bp - 0x0008], 0        ; 0x7190
@..api_idx_000c.l27:
    mov ax, word [bss_8464]          ; 0x7195
    shl ax, 1                        ; 0x7198
    mov bx, ax                       ; 0x719a
    mov bx, word [bx - 0x7b7e]       ; 0x719c
    mov si, word [bp - 0x0008]       ; 0x71a0
    mov al, byte [bx + si + 0x192]   ; 0x71a3
    sub ah, ah                       ; 0x71a7
    mov word [bp - 0x000a], ax       ; 0x71a9
    mov al, byte [bx + si + 0x198]   ; 0x71ac
    sub ah, ah                       ; 0x71b0
    cmp ax, word [bss_8460]          ; 0x71b2
    je short @..api_idx_000c.l28     ; 0x71b6
    jmp near @..api_idx_000c.l31     ; 0x71b8
@..api_idx_000c.l28:
    cmp word [bp - 0x000a], byte 0   ; 0x71bb
    jg short @..api_idx_000c.l29     ; 0x71bf
    jmp near @..api_idx_000c.l31     ; 0x71c1
@..api_idx_000c.l29:
    mov ax, 1                        ; 0x71c4
    push ax                          ; 0x71c7
    call api_idx_000a_2              ; 0x71c8
    pop cx                           ; 0x71cb
    mov ax, 4                        ; 0x71cc
    push ax                          ; 0x71cf
    call api_idx_0004_5              ; 0x71d0
    pop cx                           ; 0x71d3
    mov ax, word [bp - 0x0008]       ; 0x71d4
    jmp near @..api_idx_000c.l30     ; 0x71d7
jumptable_735e_case_0:
    mov ax, 0x43                     ; 0x71da
    push ax                          ; 0x71dd
    mov ax, 0xc94                    ; 0x71de
    push ax                          ; 0x71e1
    call loc_6edc                    ; 0x71e2
    add sp, byte 4                   ; 0x71e5
    mov ax, 5                        ; 0x71e8
    imul word [bp - 0x000a]          ; 0x71eb
    add ax, strict word 0x19         ; 0x71ee
    push ax                          ; 0x71f1
    mov ax, 1                        ; 0x71f2
    push ax                          ; 0x71f5
    push word [bp - 0x000a]          ; 0x71f6
    mov ax, 4                        ; 0x71f9
    push ax                          ; 0x71fc
    mov ax, 2                        ; 0x71fd
    push ax                          ; 0x7200
    mov ax, 0xfff6                   ; 0x7201
    push ax                          ; 0x7204
    push word [bss_8464]             ; 0x7205
    call api_idx_000a_3              ; 0x7209
    add sp, byte 0x0e                ; 0x720c
    jmp near @..api_idx_000c.l31     ; 0x720f
jumptable_735e_case_4:
    mov ax, 0x43                     ; 0x7212
    push ax                          ; 0x7215
    mov ax, 0xc9b                    ; 0x7216
    push ax                          ; 0x7219
    call loc_6edc                    ; 0x721a
    add sp, byte 4                   ; 0x721d
    mov ax, 5                        ; 0x7220
    imul word [bp - 0x000a]          ; 0x7223
    add ax, strict word 0x19         ; 0x7226
    push ax                          ; 0x7229
    mov ax, 0xb                      ; 0x722a
    push ax                          ; 0x722d
    push word [bp - 0x000a]          ; 0x722e
    mov ax, 5                        ; 0x7231
    push ax                          ; 0x7234
    mov ax, 2                        ; 0x7235
    push ax                          ; 0x7238
    mov ax, 0xfff6                   ; 0x7239
    push ax                          ; 0x723c
    push word [bss_8464]             ; 0x723d
    call api_idx_0010                ; 0x7241
    add sp, byte 0x0e                ; 0x7244
    jmp near @..api_idx_000c.l31     ; 0x7247
jumptable_735e_case_1:
    mov ax, 0x43                     ; 0x724a
    push ax                          ; 0x724d
    mov ax, 0xc95                    ; 0x724e
    push ax                          ; 0x7251
    call loc_6edc                    ; 0x7252
    add sp, byte 4                   ; 0x7255
    push word [bp - 0x000a]          ; 0x7258
    mov ax, 2                        ; 0x725b
    push ax                          ; 0x725e
    mov ax, 0xa                      ; 0x725f
    imul word [bp - 0x000a]          ; 0x7262
    push ax                          ; 0x7265
    mov ax, 0                        ; 0x7266
    push ax                          ; 0x7269
    mov ax, 5                        ; 0x726a
    push ax                          ; 0x726d
    mov ax, 4                        ; 0x726e
    push ax                          ; 0x7271
    mov ax, 1                        ; 0x7272
    push ax                          ; 0x7275
    mov ax, 5                        ; 0x7276
    imul word [bp - 0x000a]          ; 0x7279
    add ax, strict word 0x19         ; 0x727c
    push ax                          ; 0x727f
    push word [bp - 0x000a]          ; 0x7280
    mov ax, 6                        ; 0x7283
    push ax                          ; 0x7286
    mov ax, 0xd95                    ; 0x7287
    push ax                          ; 0x728a
    mov ax, 0xfff6                   ; 0x728b
    push ax                          ; 0x728e
    push word [bss_8464]             ; 0x728f
    call api_idx_000e_4              ; 0x7293
    add sp, byte 0x1a                ; 0x7296
    jmp near @..api_idx_000c.l31     ; 0x7299
jumptable_735e_case_2:
    mov ax, 0x43                     ; 0x729c
    push ax                          ; 0x729f
    mov ax, 0xc96                    ; 0x72a0
    push ax                          ; 0x72a3
    call loc_6edc                    ; 0x72a4
    add sp, byte 4                   ; 0x72a7
    push word [bp - 0x000a]          ; 0x72aa
    mov ax, 4                        ; 0x72ad
    push ax                          ; 0x72b0
    push word [bp - 0x000a]          ; 0x72b1
    mov ax, 0                        ; 0x72b4
    push ax                          ; 0x72b7
    mov ax, 8                        ; 0x72b8
    push ax                          ; 0x72bb
    mov ax, 3                        ; 0x72bc
    push ax                          ; 0x72bf
    mov ax, 2                        ; 0x72c0
    push ax                          ; 0x72c3
    mov ax, 5                        ; 0x72c4
    imul word [bp - 0x000a]          ; 0x72c7
    add ax, strict word 0x19         ; 0x72ca
    push ax                          ; 0x72cd
    push word [bp - 0x000a]          ; 0x72ce
    mov ax, 5                        ; 0x72d1
    push ax                          ; 0x72d4
    mov ax, 0xd98                    ; 0x72d5
    push ax                          ; 0x72d8
    mov ax, 0xfff6                   ; 0x72d9
    push ax                          ; 0x72dc
    push word [bss_8464]             ; 0x72dd
    call api_idx_000e_4              ; 0x72e1
    add sp, byte 0x1a                ; 0x72e4
    jmp near @..api_idx_000c.l31     ; 0x72e7
jumptable_735e_case_3:
    mov ax, 0x43                     ; 0x72ea
    push ax                          ; 0x72ed
    mov ax, 0xc97                    ; 0x72ee
    push ax                          ; 0x72f1
    call loc_6edc                    ; 0x72f2
    add sp, byte 4                   ; 0x72f5
    mov ax, 5                        ; 0x72f8
    imul word [bp - 0x000a]          ; 0x72fb
    add ax, strict word 0x19         ; 0x72fe
    push ax                          ; 0x7301
    mov ax, 8                        ; 0x7302
    push ax                          ; 0x7305
    push word [bp - 0x000a]          ; 0x7306
    mov ax, 6                        ; 0x7309
    push ax                          ; 0x730c
    mov ax, 1                        ; 0x730d
    push ax                          ; 0x7310
    mov ax, 0xfff6                   ; 0x7311
    push ax                          ; 0x7314
    push word [bss_8464]             ; 0x7315
    call api_idx_000a_3              ; 0x7319
    add sp, byte 0x0e                ; 0x731c
    jmp short @..api_idx_000c.l31    ; 0x731f
jumptable_735e_case_5:
    mov ax, 0x43                     ; 0x7321
    push ax                          ; 0x7324
    mov ax, 0xc9c                    ; 0x7325
    push ax                          ; 0x7328
    call loc_6edc                    ; 0x7329
    add sp, byte 4                   ; 0x732c
    push word [bp - 0x000a]          ; 0x732f
    push word [bp - 0x000a]          ; 0x7332
    push word [bp - 0x000a]          ; 0x7335
    mov ax, 1                        ; 0x7338
    push ax                          ; 0x733b
    mov ax, 5                        ; 0x733c
    imul word [bp - 0x000a]          ; 0x733f
    add ax, strict word 0x19         ; 0x7342
    push ax                          ; 0x7345
    mov ax, 3                        ; 0x7346
    push ax                          ; 0x7349
    mov ax, 0xb                      ; 0x734a
    push ax                          ; 0x734d
    mov ax, 0xda9                    ; 0x734e
    push ax                          ; 0x7351
    push word [bss_8464]             ; 0x7352
    call api_idx_0006_4              ; 0x7356
    add sp, byte 0x12                ; 0x7359
    jmp short @..api_idx_000c.l31    ; 0x735c
jumptable_735e:
    dw jumptable_735e_case_0 - IMAGE_BASE + 0x5055 ; 0x735e
    dw jumptable_735e_case_1 - IMAGE_BASE + 0x5055 ; 0x7360
    dw jumptable_735e_case_2 - IMAGE_BASE + 0x5055 ; 0x7362
    dw jumptable_735e_case_3 - IMAGE_BASE + 0x5055 ; 0x7364
    dw jumptable_735e_case_4 - IMAGE_BASE + 0x5055 ; 0x7366
    dw jumptable_735e_case_5 - IMAGE_BASE + 0x5055 ; 0x7368
@..api_idx_000c.l30:
    cmp ax, strict word 6            ; 0x736a
    jae short @..api_idx_000c.l31    ; 0x736d
    xchg bx, ax                      ; 0x736f
    shl bx, 1                        ; 0x7370
    jmp [cs:bx - 0x3c5b]             ; 0x7372
@..api_idx_000c.l31:
    inc word [bp - 0x0008]           ; 0x7377
    mov ax, word [bp - 0x0008]       ; 0x737a
    cmp ax, strict word 6            ; 0x737d
    jge short @..api_idx_000c.l32    ; 0x7380
    jmp near @..api_idx_000c.l27     ; 0x7382
@..api_idx_000c.l32:
    inc word [bss_8464]              ; 0x7385
    mov ax, word [bss_8464]          ; 0x7389
    cmp ax, strict word 7            ; 0x738c
    jge short @..api_idx_000c.l33    ; 0x738f
    jmp near @..api_idx_000c.l5      ; 0x7391
@..api_idx_000c.l33:
    call api_idx_0006                ; 0x7394
    dec word [bss_8460]              ; 0x7397
    jle short @..api_idx_000c.l34    ; 0x739b
    jmp near @..api_idx_000c.l4      ; 0x739d
@..api_idx_000c.l34:
    mov word [bp - 0x000c], 0        ; 0x73a0
    mov word [bp - 0x0002], 0        ; 0x73a5
@..api_idx_000c.l35:
    mov word [bp - 0x0004], 0        ; 0x73aa
@..api_idx_000c.l36:
    mov ax, 6                        ; 0x73af
    imul word [bp - 0x0002]          ; 0x73b2
    mov cx, word [bp - 0x0004]       ; 0x73b5
    shl cx, 1                        ; 0x73b8
    add ax, cx                       ; 0x73ba
    mov bx, ax                       ; 0x73bc
    cmp word [bx - 0x6f36], byte 0xff ; 0x73be
    je short @..api_idx_000c.l37     ; 0x73c3
    mov ax, 1                        ; 0x73c5
    jmp short @..api_idx_000c.l38    ; 0x73c8
@..api_idx_000c.l37:
    mov ax, 0                        ; 0x73ca
@..api_idx_000c.l38:
    or word [bp - 0x000c], ax        ; 0x73cd
    inc word [bp - 0x0004]           ; 0x73d0
    mov ax, word [bp - 0x0004]       ; 0x73d3
    cmp ax, strict word 3            ; 0x73d6
    jl short @..api_idx_000c.l36     ; 0x73d9
    inc word [bp - 0x0002]           ; 0x73db
    mov ax, word [bp - 0x0002]       ; 0x73de
    cmp ax, strict word 3            ; 0x73e1
    jl short @..api_idx_000c.l35     ; 0x73e4
    call loc_1a35                    ; 0x73e6
    cmp word [bp - 0x000c], byte 0   ; 0x73e9
    jne short @..api_idx_000c.l34    ; 0x73ed
    mov word [bss_830a], 0xe         ; 0x73ef
    ret                              ; 0x73f5
