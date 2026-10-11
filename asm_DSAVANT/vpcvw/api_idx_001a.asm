api_idx_001a:
    mov ax, 0xffe6                   ; 0x706c
    call ds_dispatch_f40b            ; 0x706f
    lea ax, word [bp - 0x001a]       ; 0x7072
    push ax                          ; 0x7075
    mov ax, 0x1d7                    ; 0x7076
    push ax                          ; 0x7079
    call ds_dispatch_b53b            ; 0x707a
    add sp, byte 4                   ; 0x707d
    mov word [bp - 0x0002], 0        ; 0x7080
@..api_idx_001a.l1:
    mov ax, word [bp + 0x6]          ; 0x7085
    mov cx, 0xa                      ; 0x7088
    cwd                              ; 0x708b
    idiv cx                          ; 0x708c
    mov word [bp - 0x0004], dx       ; 0x708e
    mov word [bp + 0x6], ax          ; 0x7091
    add word [bp - 0x0006], dx       ; 0x7094
    mov ax, word [bp - 0x0002]       ; 0x7097
    imul word [bp - 0x0006]          ; 0x709a
    mov dx, word [bp - 0x0004]       ; 0x709d
    add ax, dx                       ; 0x70a0
    cwd                              ; 0x70a2
    idiv cx                          ; 0x70a3
    mov word [bp - 0x0004], dx       ; 0x70a5
    mov bx, dx                       ; 0x70a8
    add bx, bp                       ; 0x70aa
    mov al, byte [bx - 0x001a]       ; 0x70ac
    mov si, word [bp - 0x0002]       ; 0x70af
    mov bx, word [bp + 0x4]          ; 0x70b2
    mov byte [bx + si], al           ; 0x70b5
    inc word [bp - 0x0002]           ; 0x70b7
    mov ax, word [bp - 0x0002]       ; 0x70ba
    cmp ax, strict word 4            ; 0x70bd
    jl short @..api_idx_001a.l1      ; 0x70c0
    mov bx, word [bp + 0x4]          ; 0x70c2
    mov byte [bx + 0x4], 0           ; 0x70c5
    ret                              ; 0x70c9
loc_70ca:
    mov ax, 0xfe6c                   ; 0x70ca
    call ds_dispatch_f40b            ; 0x70cd
    mov word [bp - 0x0194], 0        ; 0x70d0
    cmp word [dseg_0e32], byte 0     ; 0x70d6
    je short @..local.l49            ; 0x70db
    lea ax, word [bp - 0x000c]       ; 0x70dd
    push ax                          ; 0x70e0
    lea ax, word [bp - 0x000a]       ; 0x70e1
    push ax                          ; 0x70e4
    call ds_dispatch_f053            ; 0x70e5
    add sp, byte 4                   ; 0x70e8
    mov word [bp - 0x0194], ax       ; 0x70eb
@..local.l49:
    mov ax, 0                        ; 0x70ef
    push ax                          ; 0x70f2
    mov bx, word [bp + 0x6]          ; 0x70f3
    push word [bx]                   ; 0x70f6
    lea ax, word [bp - 0x007a]       ; 0x70f8
    push ax                          ; 0x70fb
    mov ax, 1                        ; 0x70fc
    push ax                          ; 0x70ff
    call ds_dispatch_b63c            ; 0x7100
    add sp, byte 8                   ; 0x7103
    cmp word [bp + 0xa], byte 0      ; 0x7106
    je short @..local.l52            ; 0x710a
    mov ax, 3                        ; 0x710c
    imul word [bp + 0xa]             ; 0x710f
    push ax                          ; 0x7112
    mov al, byte [bp - 0x003f]       ; 0x7113
    sub ah, ah                       ; 0x7116
    mov cx, ax                       ; 0x7118
    pop ax                           ; 0x711a
    cmp ax, cx                       ; 0x711b
    jl short @..local.l50            ; 0x711d
    mov bx, word [bp + 0x6]          ; 0x711f
    mov al, byte [bx + 0x7]          ; 0x7122
    sub ah, ah                       ; 0x7125
    or ax, 0x80                      ; 0x7127
    mov byte [bx + 0x7], al          ; 0x712a
    jmp short @..local.l51           ; 0x712d
@..local.l50:
    lea ax, word [bp - 0x00f2]       ; 0x712f
    push ax                          ; 0x7133
    mov ax, 0x1d1                    ; 0x7134
    push ax                          ; 0x7137
    call ds_dispatch_b53b            ; 0x7138
    add sp, byte 4                   ; 0x713b
    mov ax, 1                        ; 0x713e
    push ax                          ; 0x7141
    lea ax, word [bp - 0x00f2]       ; 0x7142
    push ax                          ; 0x7146
    call api_idx_0004                ; 0x7147
    add sp, byte 4                   ; 0x714a
    mov ax, 0                        ; 0x714d
    ret                              ; 0x7150
@..local.l51:
    jmp short @..local.l53           ; 0x7151
@..local.l52:
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
    jl short @..local.l53            ; 0x7172
    mov bx, word [bp + 0x6]          ; 0x7174
    mov al, byte [bx + 0x7]          ; 0x7177
    sub ah, ah                       ; 0x717a
    or ax, 0x80                      ; 0x717c
    mov byte [bx + 0x7], al          ; 0x717f
@..local.l53:
    mov bx, word [bp + 0x6]          ; 0x7182
    mov al, byte [bx + 0x7]          ; 0x7185
    sub ah, ah                       ; 0x7188
    test ax, 0x80                    ; 0x718a
    jne short @..local.l54           ; 0x718d
    mov ax, 0xffff                   ; 0x718f
    ret                              ; 0x7192
@..local.l54:
    lea ax, word [bp - 0x007a]       ; 0x7193
    push ax                          ; 0x7196
    push word [bp + 0x8]             ; 0x7197
    call ds_dispatch_f364            ; 0x719a
    add sp, byte 4                   ; 0x719d
    mov ax, 0                        ; 0x71a0
    push ax                          ; 0x71a3
    push ax                          ; 0x71a4
    push word [dseg_93f8]            ; 0x71a5
    push word [dseg_93f6]            ; 0x71a9
    call ds_dispatch_e942            ; 0x71ad
    add sp, byte 8                   ; 0x71b0
    mov word [bp - 0x000c], 0x72     ; 0x71b3
    mov word [bp - 0x000a], 0x1a     ; 0x71b8
    push word [bp - 0x000c]          ; 0x71bd
    push word [bp - 0x000a]          ; 0x71c0
    call ds_dispatch_e809            ; 0x71c3
    add sp, byte 4                   ; 0x71c6
    mov ax, 4                        ; 0x71c9
    push ax                          ; 0x71cc
    mov al, byte [bp - 0x0041]       ; 0x71cd
    sub ah, ah                       ; 0x71d0
    push ax                          ; 0x71d2
    call ds_dispatch_e830            ; 0x71d3
    add sp, byte 4                   ; 0x71d6
    add word [bp - 0x000a], byte 0x60 ; 0x71d9
    push word [bp - 0x000c]          ; 0x71dd
    push word [bp - 0x000a]          ; 0x71e0
    call ds_dispatch_e809            ; 0x71e3
    add sp, byte 4                   ; 0x71e6
    mov ax, 4                        ; 0x71e9
    push ax                          ; 0x71ec
    mov al, byte [bp - 0x0041]       ; 0x71ed
    sub ah, ah                       ; 0x71f0
    push ax                          ; 0x71f2
    call ds_dispatch_e830            ; 0x71f3
    add sp, byte 4                   ; 0x71f6
    mov word [bp - 0x000a], 0x50     ; 0x71f9
    mov ax, 0                        ; 0x71fe
    push ax                          ; 0x7201
    mov ax, 1                        ; 0x7202
    push ax                          ; 0x7205
    call ds_dispatch_e823            ; 0x7206
    add sp, byte 4                   ; 0x7209
    mov ax, 0                        ; 0x720c
    push ax                          ; 0x720f
    mov ax, 0x28                     ; 0x7210
    push ax                          ; 0x7213
    lea ax, word [bp - 0x00a2]       ; 0x7214
    push ax                          ; 0x7218
    call ds_dispatch_f306            ; 0x7219
    add sp, byte 6                   ; 0x721c
    lea ax, word [bp - 0x007a]       ; 0x721f
    push ax                          ; 0x7222
    lea ax, word [bp - 0x00a2]       ; 0x7223
    push ax                          ; 0x7227
    call ds_dispatch_f364            ; 0x7228
    add sp, byte 4                   ; 0x722b
    lea ax, word [bp - 0x00a2]       ; 0x722e
    push ax                          ; 0x7232
    call ds_dispatch_fa90            ; 0x7233
    pop cx                           ; 0x7236
    dec ax                           ; 0x7237
    mov word [bp - 0x0004], ax       ; 0x7238
    mov ax, 0x2f                     ; 0x723b
    push ax                          ; 0x723e
    lea ax, word [bp - 0x00a2]       ; 0x723f
    push ax                          ; 0x7243
    call ds_dispatch_ee4a            ; 0x7244
    add sp, byte 4                   ; 0x7247
    mov word [bp - 0x0006], ax       ; 0x724a
    cmp ax, strict word 0xffff       ; 0x724d
    jne short @..local.l55           ; 0x7250
    lea ax, word [bp - 0x00a2]       ; 0x7252
    push ax                          ; 0x7256
    call ds_dispatch_fa90            ; 0x7257
    pop cx                           ; 0x725a
    mov word [bp - 0x0006], ax       ; 0x725b
@..local.l55:
    cmp word [bp - 0x0006], byte 0x0a ; 0x725e
    jle short @..local.l56           ; 0x7262
    mov word [bp - 0x0006], 0xa      ; 0x7264
@..local.l56:
    mov bx, word [bp - 0x0006]       ; 0x7269
    add bx, bp                       ; 0x726c
    mov byte [bx - 0x00a2], 0        ; 0x726e
    mov byte [bx - 0x0097], 0        ; 0x7273
@..local.l57:
    mov ax, word [bp - 0x0004]       ; 0x7278
    cmp ax, word [bp - 0x0006]       ; 0x727b
    jle short @..local.l58           ; 0x727e
    mov bx, ax                       ; 0x7280
    add bx, bp                       ; 0x7282
    cmp byte [bx - 0x00a2], 0x20     ; 0x7284
    jne short @..local.l58           ; 0x7289
    dec word [bp - 0x0004]           ; 0x728b
    jmp short @..local.l57           ; 0x728e
@..local.l58:
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
    call ds_dispatch_e809            ; 0x72ac
    add sp, byte 4                   ; 0x72af
    mov ax, 0                        ; 0x72b2
    push ax                          ; 0x72b5
    lea ax, word [bp - 0x00a2]       ; 0x72b6
    push ax                          ; 0x72ba
    call ds_dispatch_e84e            ; 0x72bb
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
    call ds_dispatch_e809            ; 0x72dc
    add sp, byte 4                   ; 0x72df
    mov ax, 0                        ; 0x72e2
    push ax                          ; 0x72e5
    mov ax, word [bp - 0x0006]       ; 0x72e6
    lea cx, word [bp - 0x00a1]       ; 0x72e9
    add ax, cx                       ; 0x72ed
    push ax                          ; 0x72ef
    call ds_dispatch_e84e            ; 0x72f0
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
    jmp near @..local.l59            ; 0x7346

    db 0xc7, 0x46, 0xf0, 0x01, 0x00, 0xc7, 0x46, 0xea, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x01, 0x00, 0xc7
    db 0x46, 0xe4, 0x01, 0x00, 0xc7, 0x46, 0xda, 0x01, 0x00, 0xc7, 0x46, 0xd6, 0x01, 0x00, 0xc7, 0x46
    db 0xd8, 0x01, 0x00, 0xa1, 0x1e, 0x00, 0x89, 0x46, 0xce, 0xe9, 0xe5, 0x00, 0xc7, 0x46, 0xee, 0x01
    db 0x00, 0xc7, 0x46, 0xda, 0x01, 0x00, 0xc7, 0x46, 0xd6, 0x01, 0x00, 0xa1, 0x1e, 0x00, 0x89, 0x46
    db 0xce, 0xe9, 0xcd, 0x00, 0xc7, 0x46, 0xec, 0x01, 0x00, 0xa1, 0x22, 0x00, 0x89, 0x46, 0xdc, 0xc7
    db 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0x89, 0x46, 0xce, 0xe9, 0xb2, 0x00, 0xc7
    db 0x46, 0xec, 0x01, 0x00, 0xc7, 0x46, 0xe8, 0x01, 0x00, 0xc7, 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46
    db 0xd8, 0x01, 0x00, 0xa1, 0x24, 0x00, 0x89, 0x46, 0xce, 0xe9, 0x95, 0x00, 0xc7, 0x46, 0xec, 0x01
    db 0x00, 0xc7, 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0xa1, 0x24, 0x00, 0x89, 0x46
    db 0xce, 0xe9, 0x7d, 0x00, 0xc7, 0x46, 0xde, 0x00, 0x00, 0xc7, 0x46, 0xf0, 0x01, 0x00, 0xc7, 0x46
    db 0xe0, 0x01, 0x00, 0xc7, 0x46, 0xe4, 0x01, 0x00, 0xa1, 0x22, 0x00, 0x89, 0x46, 0xce, 0xeb, 0x61
    db 0xc7, 0x46, 0xde, 0x00, 0x00, 0xc7, 0x46, 0xee, 0x01, 0x00, 0xc7, 0x46, 0xe0, 0x01, 0x00, 0xa1
    db 0x22, 0x00, 0x89, 0x46, 0xce, 0xeb, 0x4a, 0xc7, 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46, 0xee, 0x01
    db 0x00, 0xc7, 0x46, 0xe4, 0x01, 0x00, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0xc7, 0x46, 0xce, 0xc0, 0x00
    db 0xeb, 0x2f, 0x90, 0xc3, 0x90, 0xc3, 0x90, 0xc3, 0x90, 0xc3, 0xbc, 0xc3, 0xd4, 0xc3, 0xef, 0xc3
    db 0xef, 0xc3, 0xef, 0xc3, 0xef, 0xc3, 0xef, 0xc3, 0x0c, 0xc4, 0x24, 0xc4, 0x40, 0xc4, 0x57, 0xc4
    db 0x5c, 0xc4, 0x24, 0xc4

@..local.l59:
    cmp ax, strict word 0x11         ; 0x744d
    jae short @..local.l60           ; 0x7450
    xchg bx, ax                      ; 0x7452
    shl bx, 1                        ; 0x7453
    jmp [cs:bx - 0x3b8e]             ; 0x7455
@..local.l60:
    cmp word [bp + 0xa], byte 0      ; 0x745a
    je short @..local.l61            ; 0x745e
    jmp near @..local.l94            ; 0x7460
@..local.l61:
    lea ax, word [bp - 0x00f2]       ; 0x7463
    push ax                          ; 0x7467
    mov al, byte [bp - 0x0042]       ; 0x7468
    sub ah, ah                       ; 0x746b
    add ax, 0x60e                    ; 0x746d
    push ax                          ; 0x7470
    call ds_dispatch_b53b            ; 0x7471
    add sp, byte 4                   ; 0x7474
    mov ax, 0                        ; 0x7477
    push ax                          ; 0x747a
    push word [bp - 0x0032]          ; 0x747b
    call ds_dispatch_e823            ; 0x747e
    add sp, byte 4                   ; 0x7481
    push word [bp - 0x000c]          ; 0x7484
    lea ax, word [bp - 0x00f2]       ; 0x7487
    push ax                          ; 0x748b
    call ds_dispatch_fa90            ; 0x748c
    pop cx                           ; 0x748f
    mov cx, 6                        ; 0x7490
    imul cx                          ; 0x7493
    mov cx, 2                        ; 0x7495
    cwd                              ; 0x7498
    idiv cx                          ; 0x7499
    mov cx, ax                       ; 0x749b
    mov ax, 0x50                     ; 0x749d
    sub ax, cx                       ; 0x74a0
    push ax                          ; 0x74a2
    call ds_dispatch_e809            ; 0x74a3
    add sp, byte 4                   ; 0x74a6
    mov ax, 0                        ; 0x74a9
    push ax                          ; 0x74ac
    lea ax, word [bp - 0x00f2]       ; 0x74ad
    push ax                          ; 0x74b1
    call ds_dispatch_e84e            ; 0x74b2
    add sp, byte 4                   ; 0x74b5
    add word [bp - 0x000c], byte 6   ; 0x74b8
    cmp word [bp - 0x0022], byte 0   ; 0x74bc
    jne short @..local.l62           ; 0x74c0
    jmp near @..local.l72            ; 0x74c2
@..local.l62:
    push word [bp - 0x000c]          ; 0x74c5
    mov ax, 0x26                     ; 0x74c8
    push ax                          ; 0x74cb
    call ds_dispatch_e809            ; 0x74cc
    add sp, byte 4                   ; 0x74cf
    lea ax, word [bp - 0x00f2]       ; 0x74d2
    push ax                          ; 0x74d6
    mov ax, 0x1c6                    ; 0x74d7
    push ax                          ; 0x74da
    call ds_dispatch_b53b            ; 0x74db
    add sp, byte 4                   ; 0x74de
    mov word [bp - 0x0002], 0        ; 0x74e1
@..local.l63:
    mov ax, 0                        ; 0x74e6
    push ax                          ; 0x74e9
    push word [bp - 0x0002]          ; 0x74ea
    lea ax, word [bp - 0x0046]       ; 0x74ed
    push ax                          ; 0x74f0
    call ds_dispatch_ec74            ; 0x74f1
    add sp, byte 4                   ; 0x74f4
    cmp ax, strict word 1            ; 0x74f7
    jne short @..local.l64           ; 0x74fa
    mov ax, 0xa9                     ; 0x74fc
    jmp short @..local.l65           ; 0x74ff
@..local.l64:
    mov ax, 0xad                     ; 0x7501
@..local.l65:
    push ax                          ; 0x7504
    call ds_dispatch_e823            ; 0x7505
    add sp, byte 4                   ; 0x7508
    mov ax, 0                        ; 0x750b
    push ax                          ; 0x750e
    mov bx, word [bp - 0x0002]       ; 0x750f
    add bx, bp                       ; 0x7512
    mov al, byte [bx - 0x00f2]       ; 0x7514
    sub ah, ah                       ; 0x7518
    push ax                          ; 0x751a
    call ds_dispatch_e830            ; 0x751b
    add sp, byte 4                   ; 0x751e
    inc word [bp - 0x0002]           ; 0x7521
    mov ax, word [bp - 0x0002]       ; 0x7524
    cmp ax, strict word 0xb          ; 0x7527
    jl short @..local.l63            ; 0x752a
    push word [bp - 0x000c]          ; 0x752c
    mov ax, 0x6e                     ; 0x752f
    push ax                          ; 0x7532
    call ds_dispatch_e809            ; 0x7533
    add sp, byte 4                   ; 0x7536
    lea ax, word [bp - 0x00f2]       ; 0x7539
    push ax                          ; 0x753d
    mov ax, 0x1c7                    ; 0x753e
    push ax                          ; 0x7541
    call ds_dispatch_b53b            ; 0x7542
    add sp, byte 4                   ; 0x7545
    mov word [bp - 0x0002], 0        ; 0x7548
@..local.l66:
    mov ax, 0                        ; 0x754d
    push ax                          ; 0x7550
    push word [bp - 0x0002]          ; 0x7551
    lea ax, word [bp - 0x0044]       ; 0x7554
    push ax                          ; 0x7557
    call ds_dispatch_ec74            ; 0x7558
    add sp, byte 4                   ; 0x755b
    cmp ax, strict word 1            ; 0x755e
    jne short @..local.l67           ; 0x7561
    mov ax, 0xa9                     ; 0x7563
    jmp short @..local.l68           ; 0x7566
@..local.l67:
    mov ax, 0xad                     ; 0x7568
@..local.l68:
    push ax                          ; 0x756b
    call ds_dispatch_e823            ; 0x756c
    add sp, byte 4                   ; 0x756f
    mov ax, 0                        ; 0x7572
    push ax                          ; 0x7575
    mov bx, word [bp - 0x0002]       ; 0x7576
    add bx, bp                       ; 0x7579
    mov al, byte [bx - 0x00f2]       ; 0x757b
    sub ah, ah                       ; 0x757f
    push ax                          ; 0x7581
    call ds_dispatch_e830            ; 0x7582
    add sp, byte 4                   ; 0x7585
    inc word [bp - 0x0002]           ; 0x7588
    mov ax, word [bp - 0x0002]       ; 0x758b
    cmp ax, strict word 2            ; 0x758e
    jl short @..local.l66            ; 0x7591
    mov ax, word [bp - 0x000c]       ; 0x7593
    add ax, strict word 6            ; 0x7596
    push ax                          ; 0x7599
    mov ax, 0x26                     ; 0x759a
    push ax                          ; 0x759d
    call ds_dispatch_e809            ; 0x759e
    add sp, byte 4                   ; 0x75a1
    lea ax, word [bp - 0x00f2]       ; 0x75a4
    push ax                          ; 0x75a8
    mov ax, 0x1c8                    ; 0x75a9
    push ax                          ; 0x75ac
    call ds_dispatch_b53b            ; 0x75ad
    add sp, byte 4                   ; 0x75b0
    mov word [bp - 0x0002], 0        ; 0x75b3
@..local.l69:
    mov ax, 0                        ; 0x75b8
    push ax                          ; 0x75bb
    push word [bp - 0x0002]          ; 0x75bc
    lea ax, word [bp - 0x0048]       ; 0x75bf
    push ax                          ; 0x75c2
    call ds_dispatch_ec74            ; 0x75c3
    add sp, byte 4                   ; 0x75c6
    cmp ax, strict word 1            ; 0x75c9
    jne short @..local.l70           ; 0x75cc
    mov ax, 0xa9                     ; 0x75ce
    jmp short @..local.l71           ; 0x75d1
@..local.l70:
    mov ax, 0xad                     ; 0x75d3
@..local.l71:
    push ax                          ; 0x75d6
    call ds_dispatch_e823            ; 0x75d7
    add sp, byte 4                   ; 0x75da
    mov ax, 0                        ; 0x75dd
    push ax                          ; 0x75e0
    mov bx, word [bp - 0x0002]       ; 0x75e1
    add bx, bp                       ; 0x75e4
    mov al, byte [bx - 0x00f2]       ; 0x75e6
    sub ah, ah                       ; 0x75ea
    push ax                          ; 0x75ec
    call ds_dispatch_e830            ; 0x75ed
    add sp, byte 4                   ; 0x75f0
    inc word [bp - 0x0002]           ; 0x75f3
    mov ax, word [bp - 0x0002]       ; 0x75f6
    cmp ax, strict word 0xe          ; 0x75f9
    jl short @..local.l69            ; 0x75fc
    add word [bp - 0x000c], byte 0x0c ; 0x75fe
    jmp short @..local.l73           ; 0x7602
@..local.l72:
    cmp word [bp - 0x0020], byte 0   ; 0x7604
    je short @..local.l73            ; 0x7608
    cmp word [bp - 0x0058], byte 0   ; 0x760a
    je short @..local.l73            ; 0x760e
    mov ax, word [bp - 0x0058]       ; 0x7610
    mov cx, 0x100                    ; 0x7613
    cwd                              ; 0x7616
    idiv cx                          ; 0x7617
    mov word [bp - 0x002e], dx       ; 0x7619
    lea ax, word [bp - 0x00f2]       ; 0x761c
    push ax                          ; 0x7620
    add dx, strict word 0xfa0        ; 0x7621
    mov ax, dx                       ; 0x7625
    push ax                          ; 0x7627
    call ds_dispatch_b53b            ; 0x7628
    add sp, byte 4                   ; 0x762b
    push word [bp - 0x000c]          ; 0x762e
    lea ax, word [bp - 0x00f2]       ; 0x7631
    push ax                          ; 0x7635
    call ds_dispatch_fa90            ; 0x7636
    pop cx                           ; 0x7639
    mov cx, 6                        ; 0x763a
    imul cx                          ; 0x763d
    mov cx, 2                        ; 0x763f
    cwd                              ; 0x7642
    idiv cx                          ; 0x7643
    mov cx, ax                       ; 0x7645
    mov ax, 0x50                     ; 0x7647
    sub ax, cx                       ; 0x764a
    push ax                          ; 0x764c
    call ds_dispatch_e809            ; 0x764d
    add sp, byte 4                   ; 0x7650
    mov ax, 0                        ; 0x7653
    push ax                          ; 0x7656
    mov ax, 0x16                     ; 0x7657
    push ax                          ; 0x765a
    call ds_dispatch_e823            ; 0x765b
    add sp, byte 4                   ; 0x765e
    mov ax, 0                        ; 0x7661
    push ax                          ; 0x7664
    lea ax, word [bp - 0x00f2]       ; 0x7665
    push ax                          ; 0x7669
    call ds_dispatch_e84e            ; 0x766a
    add sp, byte 4                   ; 0x766d
    add word [bp - 0x000c], byte 6   ; 0x7670
@..local.l73:
    cmp word [bp - 0x001a], byte 0   ; 0x7674
    jne short @..local.l74           ; 0x7678
    jmp near @..local.l78            ; 0x767a
@..local.l74:
    mov al, byte [bp - 0x0041]       ; 0x767d
    sub ah, ah                       ; 0x7680
    jmp short @..local.l75           ; 0x7682

    db 0xc7, 0x46, 0xd4, 0x00, 0x00, 0xe9, 0x04, 0x01, 0xc7, 0x46, 0xd4, 0x01, 0x00, 0xe9, 0xfc, 0x00
    db 0xc7, 0x46, 0xd4, 0x02, 0x00, 0xe9, 0xf4, 0x00, 0xc7, 0x46, 0xd4, 0x03, 0x00, 0xe9, 0xec, 0x00
    db 0xc7, 0x46, 0xd4, 0x04, 0x00, 0xe9, 0xe4, 0x00, 0xc7, 0x46, 0xd4, 0x07, 0x00, 0xe9, 0xdc, 0x00
    db 0xc7, 0x46, 0xd4, 0x06, 0x00, 0xe9, 0xd4, 0x00, 0xc7, 0x46, 0xd4, 0x08, 0x00, 0xe9, 0xcc, 0x00
    db 0xc7, 0x46, 0xd4, 0x12, 0x00, 0xe9, 0xc4, 0x00, 0xc7, 0x46, 0xd4, 0x05, 0x00, 0xe9, 0xbc, 0x00
    db 0xc7, 0x46, 0xd4, 0x09, 0x00, 0xe9, 0xb4, 0x00

@..local.l75:
    mov cx, 0x2c                     ; 0x76dc
    call leaf_loc_982c               ; 0x76df
    add byte [bx + si], al           ; 0x76e2
    add word [bx + si], ax           ; 0x76e4
    add al, byte [bx + si]           ; 0x76e6
    add ax, word [bx + si]           ; 0x76e8
    add al, 0                        ; 0x76ea
    add ax, 0x600                    ; 0x76ec
    add byte [bx], al                ; 0x76ef
    add byte [bx + si], cl           ; 0x76f1
    add byte [bx + di], cl           ; 0x76f3
    add byte [bp + si], cl           ; 0x76f5
    add byte [bp + di], cl           ; 0x76f7
    add byte [si], cl                ; 0x76f9
    add byte [di], cl                ; 0x76fb
    add byte [dseg_0f00], cl         ; 0x76fd
    add byte [bx + si], dl           ; 0x7701
    add byte [bx + di], dl           ; 0x7703
    add byte [bp + si], dl           ; 0x7705
    add byte [bp + di], dl           ; 0x7707
    add byte [si], dl                ; 0x7709
    add byte [di], dl                ; 0x770b
    add byte [bx + si], bl           ; 0x770d
    add byte [di], ah                ; 0x770f
    add byte [dseg_3300], ah         ; 0x7711
    add byte [si], dh                ; 0x7715
    add byte [di], dh                ; 0x7717
    add byte [dseg_3700], dh         ; 0x7719
    add byte [bx + si], bh           ; 0x771d
    add byte [bx + di], bh           ; 0x771f
    add byte [bp + si], bh           ; 0x7721
    add byte [bp + di], bh           ; 0x7723
    db 0x00, 0x58, 0x00 ; add byte [bx + si], bl
    pop dx                           ; 0x7728
    db 0x00, 0x68, 0x00 ; add byte [bx + si], ch
    imul ax, word [bx + si], 0x6a    ; 0x772c
    insb                             ; 0x7730
    add byte [bp], ch                ; 0x7731
    jo short @..local.l76            ; 0x7734
@..local.l76:
    jb short @..local.l77            ; 0x7736
@..local.l77:
    retf                             ; 0x7738

    db 0xc6, 0xd3, 0xc6, 0xdb, 0xc6, 0xdb, 0xc6, 0xe3, 0xc6, 0xe3, 0xc6, 0xe3, 0xc6, 0xeb, 0xc6, 0xeb
    db 0xc6, 0xeb, 0xc6, 0xeb, 0xc6, 0xf3, 0xc6, 0xf3, 0xc6, 0xfb, 0xc6, 0xd3, 0xc6, 0xd3, 0xc6, 0xd3
    db 0xc6, 0xeb, 0xc6, 0xcb, 0xc6, 0xeb, 0xc6, 0xdb, 0xc6, 0x13, 0xc7, 0x03, 0xc7, 0xf3, 0xc6, 0x03
    db 0xc7, 0xd3, 0xc6, 0xe3, 0xc6, 0xd3, 0xc6, 0xe3, 0xc6, 0xd3, 0xc6, 0xe3, 0xc6, 0xeb, 0xc6, 0xd3
    db 0xc6, 0xd3, 0xc6, 0xcb, 0xc6, 0xeb, 0xc6, 0x0b, 0xc7, 0xeb, 0xc6, 0xeb, 0xc6, 0xd3, 0xc6, 0x0b
    db 0xc7, 0x13, 0xc7, 0x0b, 0xc7, 0x1b, 0xc7, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a
    db 0x87, 0x2b, 0x5e, 0x2a, 0xe4, 0x50, 0x8d, 0x46, 0xba, 0x50, 0xe8, 0xce, 0x74, 0x83, 0xc4, 0x04
    db 0x3d, 0x01, 0x00, 0x75, 0x3c, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2d
    db 0x5e, 0x2a, 0xe4, 0x50, 0x8d, 0x46, 0xb8, 0x50, 0xe8, 0xb0, 0x74, 0x83, 0xc4, 0x04, 0x3d, 0x01
    db 0x00, 0x75, 0x1e, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2c, 0x5e, 0x2a
    db 0xe4, 0x50, 0x8d, 0x46, 0xbc, 0x50, 0xe8, 0x92, 0x74, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x74
    db 0x1f, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0x1f, 0x06, 0x50, 0xe8, 0x45, 0x3d, 0x83, 0xc4, 0x04
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x69, 0x00, 0x50, 0xe8, 0x1f, 0x70, 0x83, 0xc4, 0x04, 0xeb, 0x3f
    db 0x8d, 0x86, 0x5e, 0xff, 0x50, 0xb8, 0xc2, 0x01, 0x50, 0xe8, 0x26, 0x3d, 0x83, 0xc4, 0x04, 0x8d
    db 0x86, 0x0e, 0xff, 0x50, 0x8b, 0x46, 0xd4, 0x05, 0x7c, 0x15, 0x50, 0xe8, 0x14, 0x3d, 0x83, 0xc4
    db 0x04, 0x8d, 0x86, 0x5e, 0xff, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xf6, 0x7a, 0x83, 0xc4
    db 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x30, 0x00, 0xe8, 0xde, 0x6f, 0x83, 0xc4, 0x04, 0xff
    db 0x76, 0xf4, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x3d, 0x82, 0x59, 0xb9, 0x06, 0x00, 0xf7, 0xe9
    db 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0xb8, 0x50, 0x00, 0x2b, 0xc1, 0x50, 0xe8, 0x9f
    db 0x6f, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xd5, 0x6f
    db 0x83, 0xc4, 0x04, 0x83, 0x46, 0xf4, 0x06

@..local.l78:
    mov word [bp - 0x000c], 0xa2     ; 0x7880
    cmp word [bp - 0x001c], byte 0   ; 0x7885
    jne short @..local.l79           ; 0x7889
    jmp near @..local.l83            ; 0x788b
@..local.l79:
    mov ax, 0                        ; 0x788e
    push ax                          ; 0x7891
    mov ax, 0x55                     ; 0x7892
    push ax                          ; 0x7895
    call ds_dispatch_e823            ; 0x7896
    add sp, byte 4                   ; 0x7899
    cmp byte [bp - 0x0042], 3        ; 0x789c
    jne short @..local.l80           ; 0x78a0
    lea ax, word [bp - 0x00f2]       ; 0x78a2
    push ax                          ; 0x78a6
    mov ax, 0xbf2                    ; 0x78a7
    push ax                          ; 0x78aa
    call ds_dispatch_b53b            ; 0x78ab
    add sp, byte 4                   ; 0x78ae
    push word [bp - 0x000c]          ; 0x78b1
    mov ax, 0xe                      ; 0x78b4
    push ax                          ; 0x78b7
    call ds_dispatch_e809            ; 0x78b8
    add sp, byte 4                   ; 0x78bb
    mov ax, 0                        ; 0x78be
    push ax                          ; 0x78c1
    lea ax, word [bp - 0x00f2]       ; 0x78c2
    push ax                          ; 0x78c6
    call ds_dispatch_e84e            ; 0x78c7
    add sp, byte 4                   ; 0x78ca
    jmp short @..local.l83           ; 0x78cd
@..local.l80:
    mov word [bp - 0x0008], 0        ; 0x78cf
    mov word [bp - 0x0002], 0        ; 0x78d4
@..local.l81:
    push word [bp - 0x0002]          ; 0x78d9
    lea ax, word [bp - 0x0034]       ; 0x78dc
    push ax                          ; 0x78df
    call ds_dispatch_ec74            ; 0x78e0
    add sp, byte 4                   ; 0x78e3
    cmp ax, strict word 1            ; 0x78e6
    jne short @..local.l82           ; 0x78e9
    mov ax, word [bp - 0x0008]       ; 0x78eb
    mov cx, 3                        ; 0x78ee
    cwd                              ; 0x78f1
    idiv cx                          ; 0x78f2
    mov cx, 6                        ; 0x78f4
    imul cx                          ; 0x78f7
    add ax, word [bp - 0x000c]       ; 0x78f9
    push ax                          ; 0x78fc
    mov ax, word [bp - 0x0008]       ; 0x78fd
    mov cx, 3                        ; 0x7900
    cwd                              ; 0x7903
    idiv cx                          ; 0x7904
    mov ax, dx                       ; 0x7906
    mov cx, 0x30                     ; 0x7908
    imul cx                          ; 0x790b
    add ax, strict word 0xe          ; 0x790d
    push ax                          ; 0x7910
    call ds_dispatch_e809            ; 0x7911
    add sp, byte 4                   ; 0x7914
    lea ax, word [bp - 0x00f2]       ; 0x7917
    push ax                          ; 0x791b
    mov ax, word [bp - 0x0002]       ; 0x791c
    add ax, 0xbea                    ; 0x791f
    push ax                          ; 0x7922
    call ds_dispatch_b53b            ; 0x7923
    add sp, byte 4                   ; 0x7926
    mov ax, 0                        ; 0x7929
    push ax                          ; 0x792c
    lea ax, word [bp - 0x00f2]       ; 0x792d
    push ax                          ; 0x7931
    call ds_dispatch_e84e            ; 0x7932
    add sp, byte 4                   ; 0x7935
    inc word [bp - 0x0008]           ; 0x7938
@..local.l82:
    inc word [bp - 0x0002]           ; 0x793b
    mov ax, word [bp - 0x0002]       ; 0x793e
    cmp ax, strict word 8            ; 0x7941
    jl short @..local.l81            ; 0x7944
@..local.l83:
    mov word [bp - 0x000c], 0xae     ; 0x7946
    push word [bp - 0x000c]          ; 0x794b
    mov ax, 0xe                      ; 0x794e
    push ax                          ; 0x7951
    call ds_dispatch_e809            ; 0x7952
    add sp, byte 4                   ; 0x7955
    cmp word [bp - 0x0010], byte 0   ; 0x7958
    jne short @..local.l84           ; 0x795c
    cmp word [bp - 0x0012], byte 0   ; 0x795e
    jne short @..local.l84           ; 0x7962
    jmp near @..local.l88            ; 0x7964
@..local.l84:
    lea ax, word [bp - 0x00f2]       ; 0x7967
    push ax                          ; 0x796b
    mov ax, 0x1c3                    ; 0x796c
    push ax                          ; 0x796f
    call ds_dispatch_b53b            ; 0x7970
    add sp, byte 4                   ; 0x7973
    mov ax, 0                        ; 0x7976
    push ax                          ; 0x7979
    mov ax, 0x37                     ; 0x797a
    cmp word [bp - 0x0010], byte 0   ; 0x797d
    je short @..local.l85            ; 0x7981
    mov ax, 0x33                     ; 0x7983
@..local.l85:
    push ax                          ; 0x7986
    call ds_dispatch_e823            ; 0x7987
    add sp, byte 4                   ; 0x798a
    mov ax, 0                        ; 0x798d
    push ax                          ; 0x7990
    mov al, byte [bp - 0x00f2]       ; 0x7991
    sub ah, ah                       ; 0x7995
    push ax                          ; 0x7997
    call ds_dispatch_e830            ; 0x7998
    add sp, byte 4                   ; 0x799b
    mov ax, 0                        ; 0x799e
    push ax                          ; 0x79a1
    mov ax, 0x37                     ; 0x79a2
    push ax                          ; 0x79a5
    call ds_dispatch_e823            ; 0x79a6
    add sp, byte 4                   ; 0x79a9
    mov ax, 0                        ; 0x79ac
    push ax                          ; 0x79af
    mov ax, 0x2f                     ; 0x79b0
    push ax                          ; 0x79b3
    call ds_dispatch_e830            ; 0x79b4
    add sp, byte 4                   ; 0x79b7
    mov ax, 0                        ; 0x79ba
    push ax                          ; 0x79bd
    mov al, byte [bp - 0x0043]       ; 0x79be
    sub ah, ah                       ; 0x79c1
    test ax, 8                       ; 0x79c3
    je short @..local.l86            ; 0x79c6
    mov ax, 0x33                     ; 0x79c8
    jmp short @..local.l87           ; 0x79cb
@..local.l86:
    mov ax, 0x37                     ; 0x79cd
@..local.l87:
    push ax                          ; 0x79d0
    call ds_dispatch_e823            ; 0x79d1
    add sp, byte 4                   ; 0x79d4
    mov ax, 0                        ; 0x79d7
    push ax                          ; 0x79da
    mov al, byte [bp - 0x00f1]       ; 0x79db
    sub ah, ah                       ; 0x79df
    push ax                          ; 0x79e1
    call ds_dispatch_e830            ; 0x79e2
    add sp, byte 4                   ; 0x79e5
    jmp short @..local.l89           ; 0x79e8
@..local.l88:
    cmp word [bp - 0x0014], byte 0   ; 0x79ea
    je short @..local.l89            ; 0x79ee
    lea ax, word [bp - 0x00f2]       ; 0x79f0
    push ax                          ; 0x79f4
    mov ax, 0x1c4                    ; 0x79f5
    push ax                          ; 0x79f8
    call ds_dispatch_b53b            ; 0x79f9
    add sp, byte 4                   ; 0x79fc
    mov ax, 0                        ; 0x79ff
    push ax                          ; 0x7a02
    push word [bp - 0x0024]          ; 0x7a03
    call ds_dispatch_e823            ; 0x7a06
    add sp, byte 4                   ; 0x7a09
    mov ax, 0                        ; 0x7a0c
    push ax                          ; 0x7a0f
    lea ax, word [bp - 0x00f2]       ; 0x7a10
    push ax                          ; 0x7a14
    call ds_dispatch_e84e            ; 0x7a15
    add sp, byte 4                   ; 0x7a18
    mov ax, 0                        ; 0x7a1b
    push ax                          ; 0x7a1e
    mov ax, 0x20                     ; 0x7a1f
    push ax                          ; 0x7a22
    call ds_dispatch_e830            ; 0x7a23
    add sp, byte 4                   ; 0x7a26
    lea ax, word [bp - 0x00f2]       ; 0x7a29
    push ax                          ; 0x7a2d
    mov ax, 0                        ; 0x7a2e
    push ax                          ; 0x7a31
    mov al, byte [bp - 0x003a]       ; 0x7a32
    cbw                              ; 0x7a35
    mov cx, ax                       ; 0x7a36
    pop ax                           ; 0x7a38
    sub ax, cx                       ; 0x7a39
    push ax                          ; 0x7a3b
    call ds_dispatch_b27d            ; 0x7a3c
    add sp, byte 4                   ; 0x7a3f
    mov ax, 0                        ; 0x7a42
    push ax                          ; 0x7a45
    lea ax, word [bp - 0x00f2]       ; 0x7a46
    push ax                          ; 0x7a4a
    call ds_dispatch_e84e            ; 0x7a4b
    add sp, byte 4                   ; 0x7a4e
@..local.l89:
    cmp word [bp - 0x0016], byte 0   ; 0x7a51
    je short @..local.l92            ; 0x7a55
    lea ax, word [bp - 0x00f2]       ; 0x7a57
    push ax                          ; 0x7a5b
    mov al, byte [bp - 0x0043]       ; 0x7a5c
    sub ah, ah                       ; 0x7a5f
    test ax, 4                       ; 0x7a61
    je short @..local.l90            ; 0x7a64
    mov ax, 0x1ca                    ; 0x7a66
    jmp short @..local.l91           ; 0x7a69
@..local.l90:
    mov ax, 0x1c9                    ; 0x7a6b
@..local.l91:
    push ax                          ; 0x7a6e
    call ds_dispatch_b53b            ; 0x7a6f
    add sp, byte 4                   ; 0x7a72
    push word [bp - 0x000c]          ; 0x7a75
    lea ax, word [bp - 0x00f2]       ; 0x7a78
    push ax                          ; 0x7a7c
    call ds_dispatch_fa90            ; 0x7a7d
    pop cx                           ; 0x7a80
    mov cx, 6                        ; 0x7a81
    imul cx                          ; 0x7a84
    mov cx, 2                        ; 0x7a86
    cwd                              ; 0x7a89
    idiv cx                          ; 0x7a8a
    mov cx, ax                       ; 0x7a8c
    mov ax, 0x50                     ; 0x7a8e
    sub ax, cx                       ; 0x7a91
    push ax                          ; 0x7a93
    call ds_dispatch_e809            ; 0x7a94
    add sp, byte 4                   ; 0x7a97
    mov ax, 0                        ; 0x7a9a
    push ax                          ; 0x7a9d
    mov ax, 0x16                     ; 0x7a9e
    push ax                          ; 0x7aa1
    call ds_dispatch_e823            ; 0x7aa2
    add sp, byte 4                   ; 0x7aa5
    mov ax, 0                        ; 0x7aa8
    push ax                          ; 0x7aab
    lea ax, word [bp - 0x00f2]       ; 0x7aac
    push ax                          ; 0x7ab0
    call ds_dispatch_e84e            ; 0x7ab1
    add sp, byte 4                   ; 0x7ab4
    jmp short @..local.l93           ; 0x7ab7
@..local.l92:
    cmp word [bp - 0x0018], byte 0   ; 0x7ab9
    je short @..local.l93            ; 0x7abd
    lea ax, word [bp - 0x00f2]       ; 0x7abf
    push ax                          ; 0x7ac3
    mov al, byte [bp - 0x0042]       ; 0x7ac4
    sub ah, ah                       ; 0x7ac7
    add ax, 0x1c6                    ; 0x7ac9
    push ax                          ; 0x7acc
    call ds_dispatch_b53b            ; 0x7acd
    add sp, byte 4                   ; 0x7ad0
    push word [bp - 0x000c]          ; 0x7ad3
    lea ax, word [bp - 0x00f2]       ; 0x7ad6
    push ax                          ; 0x7ada
    call ds_dispatch_fa90            ; 0x7adb
    pop cx                           ; 0x7ade
    mov cx, 6                        ; 0x7adf
    imul cx                          ; 0x7ae2
    mov cx, 2                        ; 0x7ae4
    cwd                              ; 0x7ae7
    idiv cx                          ; 0x7ae8
    mov cx, ax                       ; 0x7aea
    mov ax, 0x50                     ; 0x7aec
    sub ax, cx                       ; 0x7aef
    push ax                          ; 0x7af1
    call ds_dispatch_e809            ; 0x7af2
    add sp, byte 4                   ; 0x7af5
    mov ax, 0                        ; 0x7af8
    push ax                          ; 0x7afb
    mov ax, 0x16                     ; 0x7afc
    push ax                          ; 0x7aff
    call ds_dispatch_e823            ; 0x7b00
    add sp, byte 4                   ; 0x7b03
    mov ax, 0                        ; 0x7b06
    push ax                          ; 0x7b09
    lea ax, word [bp - 0x00f2]       ; 0x7b0a
    push ax                          ; 0x7b0e
    call ds_dispatch_e84e            ; 0x7b0f
    add sp, byte 4                   ; 0x7b12
@..local.l93:
    push word [bp - 0x000c]          ; 0x7b15
    mov ax, 0x68                     ; 0x7b18
    push ax                          ; 0x7b1b
    call ds_dispatch_e809            ; 0x7b1c
    add sp, byte 4                   ; 0x7b1f
    mov ax, 0                        ; 0x7b22
    push ax                          ; 0x7b25
    mov ax, 9                        ; 0x7b26
    push ax                          ; 0x7b29
    call ds_dispatch_e823            ; 0x7b2a
    add sp, byte 4                   ; 0x7b2d
    mov ax, 0                        ; 0x7b30
    push ax                          ; 0x7b33
    mov ax, 3                        ; 0x7b34
    push ax                          ; 0x7b37
    mov ax, word [bp - 0x0056]       ; 0x7b38
    mov cx, 0xa                      ; 0x7b3b
    cwd                              ; 0x7b3e
    idiv cx                          ; 0x7b3f
    push ax                          ; 0x7b41
    call ds_dispatch_b2e7            ; 0x7b42
    add sp, byte 6                   ; 0x7b45
    mov ax, 0                        ; 0x7b48
    push ax                          ; 0x7b4b
    mov ax, 0x2e                     ; 0x7b4c
    push ax                          ; 0x7b4f
    call ds_dispatch_e830            ; 0x7b50
    add sp, byte 4                   ; 0x7b53
    mov ax, 0                        ; 0x7b56
    push ax                          ; 0x7b59
    mov ax, 1                        ; 0x7b5a
    push ax                          ; 0x7b5d
    mov ax, word [bp - 0x0056]       ; 0x7b5e
    mov cx, 0xa                      ; 0x7b61
    cwd                              ; 0x7b64
    idiv cx                          ; 0x7b65
    mov ax, dx                       ; 0x7b67
    push ax                          ; 0x7b69
    call ds_dispatch_b2e7            ; 0x7b6a
    add sp, byte 6                   ; 0x7b6d
    lea ax, word [bp - 0x00f2]       ; 0x7b70
    push ax                          ; 0x7b74
    mov ax, 0x1c5                    ; 0x7b75
    push ax                          ; 0x7b78
    call ds_dispatch_b53b            ; 0x7b79
    add sp, byte 4                   ; 0x7b7c
    mov ax, 0                        ; 0x7b7f
    push ax                          ; 0x7b82
    lea ax, word [bp - 0x00f2]       ; 0x7b83
    push ax                          ; 0x7b87
    call ds_dispatch_e84e            ; 0x7b88
    add sp, byte 4                   ; 0x7b8b
    jmp near @..local.l125           ; 0x7b8e
@..local.l94:
    cmp word [bp - 0x0026], byte 0   ; 0x7b91
    jne short @..local.l95           ; 0x7b95
    jmp near @..local.l99            ; 0x7b97
@..local.l95:
    mov ax, 0                        ; 0x7b9a
    push ax                          ; 0x7b9d
    mov ax, 0x33                     ; 0x7b9e
    push ax                          ; 0x7ba1
    call ds_dispatch_e823            ; 0x7ba2
    add sp, byte 4                   ; 0x7ba5
    lea ax, word [bp - 0x00f2]       ; 0x7ba8
    push ax                          ; 0x7bac
    mov ax, 0x1d2                    ; 0x7bad
    push ax                          ; 0x7bb0
    call ds_dispatch_b53b            ; 0x7bb1
    add sp, byte 4                   ; 0x7bb4
    lea ax, word [bp - 0x0142]       ; 0x7bb7
    push ax                          ; 0x7bbb
    mov al, byte [bp - 0x005a]       ; 0x7bbc
    sub ah, ah                       ; 0x7bbf
    add ax, word [bp - 0x005c]       ; 0x7bc1
    push ax                          ; 0x7bc4
    call ds_dispatch_b27d            ; 0x7bc5
    add sp, byte 4                   ; 0x7bc8
    lea ax, word [bp - 0x0192]       ; 0x7bcb
    push ax                          ; 0x7bcf
    mov al, byte [bp - 0x005a]       ; 0x7bd0
    sub ah, ah                       ; 0x7bd3
    push ax                          ; 0x7bd5
    mov al, byte [bp - 0x0059]       ; 0x7bd6
    sub ah, ah                       ; 0x7bd9
    mov cx, ax                       ; 0x7bdb
    pop ax                           ; 0x7bdd
    imul cx                          ; 0x7bde
    add ax, word [bp - 0x005c]       ; 0x7be0
    push ax                          ; 0x7be3
    call ds_dispatch_b27d            ; 0x7be4
    add sp, byte 4                   ; 0x7be7
    lea ax, word [bp - 0x0142]       ; 0x7bea
    push ax                          ; 0x7bee
    lea ax, word [bp - 0x00f2]       ; 0x7bef
    push ax                          ; 0x7bf3
    call ds_dispatch_f32d            ; 0x7bf4
    add sp, byte 4                   ; 0x7bf7
    lea ax, word [bp - 0x0142]       ; 0x7bfa
    push ax                          ; 0x7bfe
    mov ax, 0x1d3                    ; 0x7bff
    push ax                          ; 0x7c02
    call ds_dispatch_b53b            ; 0x7c03
    add sp, byte 4                   ; 0x7c06
    lea ax, word [bp - 0x0142]       ; 0x7c09
    push ax                          ; 0x7c0d
    lea ax, word [bp - 0x00f2]       ; 0x7c0e
    push ax                          ; 0x7c12
    call ds_dispatch_f32d            ; 0x7c13
    add sp, byte 4                   ; 0x7c16
    lea ax, word [bp - 0x0192]       ; 0x7c19
    push ax                          ; 0x7c1d
    lea ax, word [bp - 0x00f2]       ; 0x7c1e
    push ax                          ; 0x7c22
    call ds_dispatch_f32d            ; 0x7c23
    add sp, byte 4                   ; 0x7c26
    push word [bp - 0x000c]          ; 0x7c29
    mov ax, 0xe                      ; 0x7c2c
    push ax                          ; 0x7c2f
    call ds_dispatch_e809            ; 0x7c30
    add sp, byte 4                   ; 0x7c33
    mov ax, 0                        ; 0x7c36
    push ax                          ; 0x7c39
    lea ax, word [bp - 0x00f2]       ; 0x7c3a
    push ax                          ; 0x7c3e
    call ds_dispatch_e84e            ; 0x7c3f
    add sp, byte 4                   ; 0x7c42
    cmp byte [bp - 0x0039], 0        ; 0x7c45
    jne short @..local.l96           ; 0x7c49
    jmp near @..local.l98            ; 0x7c4b
@..local.l96:
    mov ax, 0x90c0                   ; 0x7c4e
    push ax                          ; 0x7c51
    lea ax, word [bp - 0x00f2]       ; 0x7c52
    push ax                          ; 0x7c56
    call ds_dispatch_f364            ; 0x7c57
    add sp, byte 4                   ; 0x7c5a
    cmp byte [bp - 0x0039], 0        ; 0x7c5d
    jl short @..local.l97            ; 0x7c61
    mov ax, 0x90c2                   ; 0x7c63
    push ax                          ; 0x7c66
    lea ax, word [bp - 0x00f2]       ; 0x7c67
    push ax                          ; 0x7c6b
    call ds_dispatch_f32d            ; 0x7c6c
    add sp, byte 4                   ; 0x7c6f
@..local.l97:
    lea ax, word [bp - 0x0142]       ; 0x7c72
    push ax                          ; 0x7c76
    mov al, byte [bp - 0x0039]       ; 0x7c77
    cbw                              ; 0x7c7a
    push ax                          ; 0x7c7b
    call ds_dispatch_b27d            ; 0x7c7c
    add sp, byte 4                   ; 0x7c7f
    lea ax, word [bp - 0x0142]       ; 0x7c82
    push ax                          ; 0x7c86
    lea ax, word [bp - 0x00f2]       ; 0x7c87
    push ax                          ; 0x7c8b
    call ds_dispatch_f32d            ; 0x7c8c
    add sp, byte 4                   ; 0x7c8f
    mov ax, 0x90c4                   ; 0x7c92
    push ax                          ; 0x7c95
    lea ax, word [bp - 0x00f2]       ; 0x7c96
    push ax                          ; 0x7c9a
    call ds_dispatch_f32d            ; 0x7c9b
    add sp, byte 4                   ; 0x7c9e
    push word [bp - 0x000c]          ; 0x7ca1
    lea ax, word [bp - 0x00f2]       ; 0x7ca4
    push ax                          ; 0x7ca8
    call ds_dispatch_fa90            ; 0x7ca9
    pop cx                           ; 0x7cac
    mov cx, ax                       ; 0x7cad
    mov ax, 0x16                     ; 0x7caf
    sub ax, cx                       ; 0x7cb2
    mov cx, 6                        ; 0x7cb4
    imul cx                          ; 0x7cb7
    add ax, strict word 0xe          ; 0x7cb9
    push ax                          ; 0x7cbc
    call ds_dispatch_e809            ; 0x7cbd
    add sp, byte 4                   ; 0x7cc0
    mov ax, 0                        ; 0x7cc3
    push ax                          ; 0x7cc6
    lea ax, word [bp - 0x00f2]       ; 0x7cc7
    push ax                          ; 0x7ccb
    call ds_dispatch_e84e            ; 0x7ccc
    add sp, byte 4                   ; 0x7ccf
@..local.l98:
    add word [bp - 0x000c], byte 6   ; 0x7cd2
@..local.l99:
    mov al, byte [bp - 0x003e]       ; 0x7cd6
    sub ah, ah                       ; 0x7cd9
    mov cx, 0x10                     ; 0x7cdb
    cwd                              ; 0x7cde
    idiv cx                          ; 0x7cdf
    mov word [bp - 0x0008], dx       ; 0x7ce1
    mov word [bp - 0x0004], ax       ; 0x7ce4
    cmp word [bp - 0x0028], byte 0   ; 0x7ce7
    jne short @..local.l100          ; 0x7ceb
    jmp near @..local.l102           ; 0x7ced
@..local.l100:
    sub dx, ax                       ; 0x7cf0
    mov ax, dx                       ; 0x7cf2
    je short @..local.l102           ; 0x7cf4
    mov ax, 0                        ; 0x7cf6
    push ax                          ; 0x7cf9
    mov ax, 0x5e                     ; 0x7cfa
    push ax                          ; 0x7cfd
    call ds_dispatch_e823            ; 0x7cfe
    add sp, byte 4                   ; 0x7d01
    lea ax, word [bp - 0x00f2]       ; 0x7d04
    push ax                          ; 0x7d08
    mov ax, 0x1d4                    ; 0x7d09
    push ax                          ; 0x7d0c
    call ds_dispatch_b53b            ; 0x7d0d
    add sp, byte 4                   ; 0x7d10
    mov ax, word [bp - 0x0008]       ; 0x7d13
    sub ax, word [bp - 0x0004]       ; 0x7d16
    jle short @..local.l101          ; 0x7d19
    mov ax, 0x90c6                   ; 0x7d1b
    push ax                          ; 0x7d1e
    lea ax, word [bp - 0x00f2]       ; 0x7d1f
    push ax                          ; 0x7d23
    call ds_dispatch_f32d            ; 0x7d24
    add sp, byte 4                   ; 0x7d27
@..local.l101:
    lea ax, word [bp - 0x0142]       ; 0x7d2a
    push ax                          ; 0x7d2e
    mov ax, word [bp - 0x0008]       ; 0x7d2f
    sub ax, word [bp - 0x0004]       ; 0x7d32
    push ax                          ; 0x7d35
    call ds_dispatch_b27d            ; 0x7d36
    add sp, byte 4                   ; 0x7d39
    lea ax, word [bp - 0x0142]       ; 0x7d3c
    push ax                          ; 0x7d40
    lea ax, word [bp - 0x00f2]       ; 0x7d41
    push ax                          ; 0x7d45
    call ds_dispatch_f32d            ; 0x7d46
    add sp, byte 4                   ; 0x7d49
    push word [bp - 0x000c]          ; 0x7d4c
    mov ax, 0xe                      ; 0x7d4f
    push ax                          ; 0x7d52
    call ds_dispatch_e809            ; 0x7d53
    add sp, byte 4                   ; 0x7d56
    mov ax, 0                        ; 0x7d59
    push ax                          ; 0x7d5c
    lea ax, word [bp - 0x00f2]       ; 0x7d5d
    push ax                          ; 0x7d61
    call ds_dispatch_e84e            ; 0x7d62
    add sp, byte 4                   ; 0x7d65
@..local.l102:
    cmp byte [bp - 0x003d], 0        ; 0x7d68
    je short @..local.l103           ; 0x7d6c
    mov ax, 0                        ; 0x7d6e
    push ax                          ; 0x7d71
    mov ax, 0x55                     ; 0x7d72
    push ax                          ; 0x7d75
    call ds_dispatch_e823            ; 0x7d76
    add sp, byte 4                   ; 0x7d79
    lea ax, word [bp - 0x00f2]       ; 0x7d7c
    push ax                          ; 0x7d80
    mov ax, 0x1d5                    ; 0x7d81
    push ax                          ; 0x7d84
    call ds_dispatch_b53b            ; 0x7d85
    add sp, byte 4                   ; 0x7d88
    push word [bp - 0x000c]          ; 0x7d8b
    mov ax, 0x6e                     ; 0x7d8e
    push ax                          ; 0x7d91
    call ds_dispatch_e809            ; 0x7d92
    add sp, byte 4                   ; 0x7d95
    mov ax, 0                        ; 0x7d98
    push ax                          ; 0x7d9b
    lea ax, word [bp - 0x00f2]       ; 0x7d9c
    push ax                          ; 0x7da0
    call ds_dispatch_e84e            ; 0x7da1
    add sp, byte 4                   ; 0x7da4
@..local.l103:
    add word [bp - 0x000c], byte 6   ; 0x7da7
    cmp byte [bp - 0x003c], 0        ; 0x7dab
    je short @..local.l104           ; 0x7daf
    mov ax, 0                        ; 0x7db1
    push ax                          ; 0x7db4
    mov ax, 0xa4                     ; 0x7db5
    push ax                          ; 0x7db8
    call ds_dispatch_e823            ; 0x7db9
    add sp, byte 4                   ; 0x7dbc
    lea ax, word [bp - 0x00f2]       ; 0x7dbf
    push ax                          ; 0x7dc3
    mov ax, 0x1d6                    ; 0x7dc4
    push ax                          ; 0x7dc7
    call ds_dispatch_b53b            ; 0x7dc8
    add sp, byte 4                   ; 0x7dcb
    mov al, byte [bp - 0x003c]       ; 0x7dce
    sub ah, ah                       ; 0x7dd1
    push ax                          ; 0x7dd3
    lea ax, word [bp - 0x0142]       ; 0x7dd4
    push ax                          ; 0x7dd8
    call api_idx_001a                ; 0x7dd9
    add sp, byte 4                   ; 0x7ddc
    lea ax, word [bp - 0x0142]       ; 0x7ddf
    push ax                          ; 0x7de3
    lea ax, word [bp - 0x00f2]       ; 0x7de4
    push ax                          ; 0x7de8
    call ds_dispatch_f32d            ; 0x7de9
    add sp, byte 4                   ; 0x7dec
    push word [bp - 0x000c]          ; 0x7def
    mov ax, 0xe                      ; 0x7df2
    push ax                          ; 0x7df5
    call ds_dispatch_e809            ; 0x7df6
    add sp, byte 4                   ; 0x7df9
    mov ax, 0                        ; 0x7dfc
    push ax                          ; 0x7dff
    lea ax, word [bp - 0x00f2]       ; 0x7e00
    push ax                          ; 0x7e04
    call ds_dispatch_e84e            ; 0x7e05
    add sp, byte 4                   ; 0x7e08
    add word [bp - 0x000c], byte 6   ; 0x7e0b
@..local.l104:
    cmp word [bp - 0x0058], byte 0   ; 0x7e0f
    jne short @..local.l105          ; 0x7e13
    jmp near @..local.l108           ; 0x7e15
@..local.l105:
    mov ax, 0                        ; 0x7e18
    push ax                          ; 0x7e1b
    mov ax, 0x16                     ; 0x7e1c
    push ax                          ; 0x7e1f
    call ds_dispatch_e823            ; 0x7e20
    add sp, byte 4                   ; 0x7e23
    mov ax, word [bp - 0x0058]       ; 0x7e26
    mov cx, 0x100                    ; 0x7e29
    cwd                              ; 0x7e2c
    idiv cx                          ; 0x7e2d
    mov word [bp - 0x0030], ax       ; 0x7e2f
    mov word [bp - 0x002e], dx       ; 0x7e32
    lea ax, word [bp - 0x00f2]       ; 0x7e35
    push ax                          ; 0x7e39
    add dx, strict word 0xfa0        ; 0x7e3a
    mov ax, dx                       ; 0x7e3e
    push ax                          ; 0x7e40
    call ds_dispatch_b53b            ; 0x7e41
    add sp, byte 4                   ; 0x7e44
    push word [bp - 0x000c]          ; 0x7e47
    mov ax, 0xe                      ; 0x7e4a
    push ax                          ; 0x7e4d
    call ds_dispatch_e809            ; 0x7e4e
    add sp, byte 4                   ; 0x7e51
    mov ax, 0                        ; 0x7e54
    push ax                          ; 0x7e57
    lea ax, word [bp - 0x00f2]       ; 0x7e58
    push ax                          ; 0x7e5c
    call ds_dispatch_e84e            ; 0x7e5d
    add sp, byte 4                   ; 0x7e60
    mov ax, 0                        ; 0x7e63
    push ax                          ; 0x7e66
    mov ax, 1                        ; 0x7e67
    push ax                          ; 0x7e6a
    call ds_dispatch_e823            ; 0x7e6b
    add sp, byte 4                   ; 0x7e6e
    lea ax, word [bp - 0x00f2]       ; 0x7e71
    push ax                          ; 0x7e75
    push word [bp - 0x0030]          ; 0x7e76
    call ds_dispatch_b27d            ; 0x7e79
    add sp, byte 4                   ; 0x7e7c
    mov ax, 0x90c8                   ; 0x7e7f
    push ax                          ; 0x7e82
    lea ax, word [bp - 0x00f2]       ; 0x7e83
    push ax                          ; 0x7e87
    call ds_dispatch_f32d            ; 0x7e88
    add sp, byte 4                   ; 0x7e8b
    mov bx, word [bp + 0x6]          ; 0x7e8e
    cmp byte [bx + 0x6], 0           ; 0x7e91
    jne short @..local.l106          ; 0x7e95
    lea ax, word [bp - 0x0142]       ; 0x7e97
    push ax                          ; 0x7e9b
    mov ax, 0x1da                    ; 0x7e9c
    push ax                          ; 0x7e9f
    call ds_dispatch_b53b            ; 0x7ea0
    add sp, byte 4                   ; 0x7ea3
    jmp short @..local.l107          ; 0x7ea6
@..local.l106:
    lea ax, word [bp - 0x0142]       ; 0x7ea8
    push ax                          ; 0x7eac
    mov bx, word [bp + 0x6]          ; 0x7ead
    mov al, byte [bx + 0x6]          ; 0x7eb0
    sub ah, ah                       ; 0x7eb3
    push ax                          ; 0x7eb5
    call ds_dispatch_b27d            ; 0x7eb6
    add sp, byte 4                   ; 0x7eb9
@..local.l107:
    lea ax, word [bp - 0x0142]       ; 0x7ebc
    push ax                          ; 0x7ec0
    lea ax, word [bp - 0x00f2]       ; 0x7ec1
    push ax                          ; 0x7ec5
    call ds_dispatch_f32d            ; 0x7ec6
    add sp, byte 4                   ; 0x7ec9
    push word [bp - 0x000c]          ; 0x7ecc
    lea ax, word [bp - 0x00f2]       ; 0x7ecf
    push ax                          ; 0x7ed3
    call ds_dispatch_fa90            ; 0x7ed4
    pop cx                           ; 0x7ed7
    mov cx, ax                       ; 0x7ed8
    mov ax, 0x16                     ; 0x7eda
    sub ax, cx                       ; 0x7edd
    mov cx, 6                        ; 0x7edf
    imul cx                          ; 0x7ee2
    add ax, strict word 0xe          ; 0x7ee4
    push ax                          ; 0x7ee7
    call ds_dispatch_e809            ; 0x7ee8
    add sp, byte 4                   ; 0x7eeb
    mov ax, 0                        ; 0x7eee
    push ax                          ; 0x7ef1
    lea ax, word [bp - 0x00f2]       ; 0x7ef2
    push ax                          ; 0x7ef6
    call ds_dispatch_e84e            ; 0x7ef7
    add sp, byte 4                   ; 0x7efa
    add word [bp - 0x000c], byte 6   ; 0x7efd
@..local.l108:
    add word [bp - 0x000c], byte 6   ; 0x7f01
    cmp word [bp - 0x002a], byte 0   ; 0x7f05
    jne short @..local.l109          ; 0x7f09
    jmp near @..local.l119           ; 0x7f0b
@..local.l109:
    mov ax, 0                        ; 0x7f0e
    push ax                          ; 0x7f11
    mov ax, 1                        ; 0x7f12
    push ax                          ; 0x7f15
    call ds_dispatch_e823            ; 0x7f16
    add sp, byte 4                   ; 0x7f19
    lea ax, word [bp - 0x00f2]       ; 0x7f1c
    push ax                          ; 0x7f20
    mov ax, 0x1d8                    ; 0x7f21
    push ax                          ; 0x7f24
    call ds_dispatch_b53b            ; 0x7f25
    add sp, byte 4                   ; 0x7f28
    push word [bp - 0x000c]          ; 0x7f2b
    lea ax, word [bp - 0x00f2]       ; 0x7f2e
    push ax                          ; 0x7f32
    call ds_dispatch_fa90            ; 0x7f33
    pop cx                           ; 0x7f36
    mov cx, 6                        ; 0x7f37
    imul cx                          ; 0x7f3a
    mov cx, 2                        ; 0x7f3c
    cwd                              ; 0x7f3f
    idiv cx                          ; 0x7f40
    mov cx, ax                       ; 0x7f42
    mov ax, 0x50                     ; 0x7f44
    sub ax, cx                       ; 0x7f47
    push ax                          ; 0x7f49
    call ds_dispatch_e809            ; 0x7f4a
    add sp, byte 4                   ; 0x7f4d
    mov ax, 0                        ; 0x7f50
    push ax                          ; 0x7f53
    lea ax, word [bp - 0x00f2]       ; 0x7f54
    push ax                          ; 0x7f58
    call ds_dispatch_e84e            ; 0x7f59
    add sp, byte 4                   ; 0x7f5c
    add word [bp - 0x000c], byte 6   ; 0x7f5f
    mov ax, 0                        ; 0x7f63
    push ax                          ; 0x7f66
    mov ax, 0x2e                     ; 0x7f67
    push ax                          ; 0x7f6a
    call ds_dispatch_e823            ; 0x7f6b
    add sp, byte 4                   ; 0x7f6e
    push word [bp - 0x000c]          ; 0x7f71
    mov ax, 0xe                      ; 0x7f74
    push ax                          ; 0x7f77
    call ds_dispatch_e809            ; 0x7f78
    add sp, byte 4                   ; 0x7f7b
    mov byte [bp - 0x00f2], 0        ; 0x7f7e
    mov word [bp - 0x0006], 0        ; 0x7f83
    mov word [bp - 0x0002], 0        ; 0x7f88
@..local.l110:
    mov bx, word [bp - 0x0002]       ; 0x7f8d
    add bx, bp                       ; 0x7f90
    cmp byte [bx - 0x0050], 0        ; 0x7f92
    ja short @..local.l111           ; 0x7f96
    jmp near @..local.l113           ; 0x7f98
@..local.l111:
    mov word [bp - 0x0006], 1        ; 0x7f9b
    lea ax, word [bp - 0x0142]       ; 0x7fa0
    push ax                          ; 0x7fa4
    mov ax, word [bp - 0x0002]       ; 0x7fa5
    add ax, 0x1db                    ; 0x7fa8
    push ax                          ; 0x7fab
    call ds_dispatch_b53b            ; 0x7fac
    add sp, byte 4                   ; 0x7faf
    lea ax, word [bp - 0x00f2]       ; 0x7fb2
    push ax                          ; 0x7fb6
    call ds_dispatch_fa90            ; 0x7fb7
    pop cx                           ; 0x7fba
    push ax                          ; 0x7fbb
    lea ax, word [bp - 0x0142]       ; 0x7fbc
    push ax                          ; 0x7fc0
    call ds_dispatch_fa90            ; 0x7fc1
    pop cx                           ; 0x7fc4
    mov cx, ax                       ; 0x7fc5
    pop ax                           ; 0x7fc7
    add ax, cx                       ; 0x7fc8
    cmp ax, strict word 0x16         ; 0x7fca
    jle short @..local.l112          ; 0x7fcd
    lea ax, word [bp - 0x00f2]       ; 0x7fcf
    push ax                          ; 0x7fd3
    call ds_dispatch_fa90            ; 0x7fd4
    pop cx                           ; 0x7fd7
    mov bx, ax                       ; 0x7fd8
    add bx, bp                       ; 0x7fda
    mov byte [bx - 0x00f3], 0        ; 0x7fdc
    push word [bp - 0x000c]          ; 0x7fe1
    lea ax, word [bp - 0x00f2]       ; 0x7fe4
    push ax                          ; 0x7fe8
    call ds_dispatch_fa90            ; 0x7fe9
    pop cx                           ; 0x7fec
    mov cx, 6                        ; 0x7fed
    imul cx                          ; 0x7ff0
    mov cx, 2                        ; 0x7ff2
    cwd                              ; 0x7ff5
    idiv cx                          ; 0x7ff6
    mov cx, ax                       ; 0x7ff8
    mov ax, 0x50                     ; 0x7ffa
    sub ax, cx                       ; 0x7ffd
    push ax                          ; 0x7fff
    call ds_dispatch_e809            ; 0x8000
    add sp, byte 4                   ; 0x8003
    mov ax, 0                        ; 0x8006
    push ax                          ; 0x8009
    lea ax, word [bp - 0x00f2]       ; 0x800a
    push ax                          ; 0x800e
    call ds_dispatch_e84e            ; 0x800f
    add sp, byte 4                   ; 0x8012
    mov byte [bp - 0x00f2], 0        ; 0x8015
    add word [bp - 0x000c], byte 6   ; 0x801a
@..local.l112:
    lea ax, word [bp - 0x0142]       ; 0x801e
    push ax                          ; 0x8022
    lea ax, word [bp - 0x00f2]       ; 0x8023
    push ax                          ; 0x8027
    call ds_dispatch_f32d            ; 0x8028
    add sp, byte 4                   ; 0x802b
    mov ax, 0x90ca                   ; 0x802e
    push ax                          ; 0x8031
    lea ax, word [bp - 0x00f2]       ; 0x8032
    push ax                          ; 0x8036
    call ds_dispatch_f32d            ; 0x8037
    add sp, byte 4                   ; 0x803a
@..local.l113:
    inc word [bp - 0x0002]           ; 0x803d
    mov ax, word [bp - 0x0002]       ; 0x8040
    cmp ax, strict word 8            ; 0x8043
    jge short @..local.l114          ; 0x8046
    jmp near @..local.l110           ; 0x8048
@..local.l114:
    lea ax, word [bp - 0x00f2]       ; 0x804b
    push ax                          ; 0x804f
    call ds_dispatch_fa90            ; 0x8050
    pop cx                           ; 0x8053
    cmp ax, strict word 0            ; 0x8054
    jle short @..local.l115          ; 0x8057
    lea ax, word [bp - 0x00f2]       ; 0x8059
    push ax                          ; 0x805d
    call ds_dispatch_fa90            ; 0x805e
    pop cx                           ; 0x8061
    mov bx, ax                       ; 0x8062
    add bx, bp                       ; 0x8064
    mov byte [bx - 0x00f3], 0        ; 0x8066
    push word [bp - 0x000c]          ; 0x806b
    lea ax, word [bp - 0x00f2]       ; 0x806e
    push ax                          ; 0x8072
    call ds_dispatch_fa90            ; 0x8073
    pop cx                           ; 0x8076
    mov cx, 6                        ; 0x8077
    imul cx                          ; 0x807a
    mov cx, 2                        ; 0x807c
    cwd                              ; 0x807f
    idiv cx                          ; 0x8080
    mov cx, ax                       ; 0x8082
    mov ax, 0x50                     ; 0x8084
    sub ax, cx                       ; 0x8087
    push ax                          ; 0x8089
    call ds_dispatch_e809            ; 0x808a
    add sp, byte 4                   ; 0x808d
    mov ax, 0                        ; 0x8090
    push ax                          ; 0x8093
    lea ax, word [bp - 0x00f2]       ; 0x8094
    push ax                          ; 0x8098
    call ds_dispatch_e84e            ; 0x8099
    add sp, byte 4                   ; 0x809c
@..local.l115:
    cmp word [bp - 0x0006], byte 0   ; 0x809f
    jne short @..local.l118          ; 0x80a3
    lea ax, word [bp - 0x00f2]       ; 0x80a5
    push ax                          ; 0x80a9
    mov bx, word [bp + 0x6]          ; 0x80aa
    cmp word [bx], strict word 0x1d5 ; 0x80ad
    jne short @..local.l116          ; 0x80b1
    mov ax, 0x1e4                    ; 0x80b3
    jmp short @..local.l117          ; 0x80b6
@..local.l116:
    mov ax, 0x1e3                    ; 0x80b8
@..local.l117:
    push ax                          ; 0x80bb
    call ds_dispatch_b53b            ; 0x80bc
    add sp, byte 4                   ; 0x80bf
    push word [bp - 0x000c]          ; 0x80c2
    lea ax, word [bp - 0x00f2]       ; 0x80c5
    push ax                          ; 0x80c9
    call ds_dispatch_fa90            ; 0x80ca
    pop cx                           ; 0x80cd
    mov cx, 6                        ; 0x80ce
    imul cx                          ; 0x80d1
    mov cx, 2                        ; 0x80d3
    cwd                              ; 0x80d6
    idiv cx                          ; 0x80d7
    mov cx, ax                       ; 0x80d9
    mov ax, 0x50                     ; 0x80db
    sub ax, cx                       ; 0x80de
    push ax                          ; 0x80e0
    call ds_dispatch_e809            ; 0x80e1
    add sp, byte 4                   ; 0x80e4
    mov ax, 0                        ; 0x80e7
    push ax                          ; 0x80ea
    lea ax, word [bp - 0x00f2]       ; 0x80eb
    push ax                          ; 0x80ef
    call ds_dispatch_e84e            ; 0x80f0
    add sp, byte 4                   ; 0x80f3
@..local.l118:
    jmp near @..local.l125           ; 0x80f6
@..local.l119:
    cmp word [bp - 0x001e], byte 0   ; 0x80f9
    jne short @..local.l120          ; 0x80fd
    jmp near @..local.l125           ; 0x80ff
@..local.l120:
    mov ax, 0                        ; 0x8102
    push ax                          ; 0x8105
    mov ax, 1                        ; 0x8106
    push ax                          ; 0x8109
    call ds_dispatch_e823            ; 0x810a
    add sp, byte 4                   ; 0x810d
    lea ax, word [bp - 0x00f2]       ; 0x8110
    push ax                          ; 0x8114
    mov ax, 0x1d9                    ; 0x8115
    push ax                          ; 0x8118
    call ds_dispatch_b53b            ; 0x8119
    add sp, byte 4                   ; 0x811c
    push word [bp - 0x000c]          ; 0x811f
    lea ax, word [bp - 0x00f2]       ; 0x8122
    push ax                          ; 0x8126
    call ds_dispatch_fa90            ; 0x8127
    pop cx                           ; 0x812a
    mov cx, 6                        ; 0x812b
    imul cx                          ; 0x812e
    mov cx, 2                        ; 0x8130
    cwd                              ; 0x8133
    idiv cx                          ; 0x8134
    mov cx, ax                       ; 0x8136
    mov ax, 0x50                     ; 0x8138
    sub ax, cx                       ; 0x813b
    push ax                          ; 0x813d
    call ds_dispatch_e809            ; 0x813e
    add sp, byte 4                   ; 0x8141
    mov ax, 0                        ; 0x8144
    push ax                          ; 0x8147
    lea ax, word [bp - 0x00f2]       ; 0x8148
    push ax                          ; 0x814c
    call ds_dispatch_e84e            ; 0x814d
    add sp, byte 4                   ; 0x8150
    add word [bp - 0x000c], byte 6   ; 0x8153
    mov ax, 0                        ; 0x8157
    push ax                          ; 0x815a
    mov ax, 0xa9                     ; 0x815b
    push ax                          ; 0x815e
    call ds_dispatch_e823            ; 0x815f
    add sp, byte 4                   ; 0x8162
    mov word [bp - 0x0006], 0        ; 0x8165
    mov word [bp - 0x0004], 0        ; 0x816a
@..local.l121:
    mov bx, word [bp - 0x0004]       ; 0x816f
    add bx, bp                       ; 0x8172
    mov al, byte [bx - 0x0052]       ; 0x8174
    sub ah, ah                       ; 0x8177
    mov cx, 0x10                     ; 0x8179
    cwd                              ; 0x817c
    idiv cx                          ; 0x817d
    mov word [bp - 0x0002], ax       ; 0x817f
    mov ax, 0xa                      ; 0x8182
    imul dx                          ; 0x8185
    mov word [bp - 0x0008], ax       ; 0x8187
    cmp word [bp - 0x0002], byte 0   ; 0x818a
    jg short @..local.l122           ; 0x818e
    jmp near @..local.l123           ; 0x8190
@..local.l122:
    mov word [bp - 0x0006], 1        ; 0x8193
    lea ax, word [bp - 0x00f2]       ; 0x8198
    push ax                          ; 0x819c
    mov ax, word [bp - 0x0002]       ; 0x819d
    add ax, 0x190                    ; 0x81a0
    push ax                          ; 0x81a3
    call ds_dispatch_b53b            ; 0x81a4
    add sp, byte 4                   ; 0x81a7
    push word [bp - 0x000c]          ; 0x81aa
    mov ax, 0x26                     ; 0x81ad
    push ax                          ; 0x81b0
    call ds_dispatch_e809            ; 0x81b1
    add sp, byte 4                   ; 0x81b4
    mov ax, 0                        ; 0x81b7
    push ax                          ; 0x81ba
    lea ax, word [bp - 0x00f2]       ; 0x81bb
    push ax                          ; 0x81bf
    call ds_dispatch_e84e            ; 0x81c0
    add sp, byte 4                   ; 0x81c3
    lea ax, word [bp - 0x00f2]       ; 0x81c6
    push ax                          ; 0x81ca
    push word [bp - 0x0008]          ; 0x81cb
    call ds_dispatch_b27d            ; 0x81ce
    add sp, byte 4                   ; 0x81d1
    mov ax, 0x90cc                   ; 0x81d4
    push ax                          ; 0x81d7
    lea ax, word [bp - 0x00f2]       ; 0x81d8
    push ax                          ; 0x81dc
    call ds_dispatch_f32d            ; 0x81dd
    add sp, byte 4                   ; 0x81e0
    push word [bp - 0x000c]          ; 0x81e3
    lea ax, word [bp - 0x00f2]       ; 0x81e6
    push ax                          ; 0x81ea
    call ds_dispatch_fa90            ; 0x81eb
    pop cx                           ; 0x81ee
    mov cx, ax                       ; 0x81ef
    mov ax, 0xe                      ; 0x81f1
    sub ax, cx                       ; 0x81f4
    mov cx, 6                        ; 0x81f6
    imul cx                          ; 0x81f9
    add ax, strict word 0x26         ; 0x81fb
    push ax                          ; 0x81fe
    call ds_dispatch_e809            ; 0x81ff
    add sp, byte 4                   ; 0x8202
    mov ax, 0                        ; 0x8205
    push ax                          ; 0x8208
    lea ax, word [bp - 0x00f2]       ; 0x8209
    push ax                          ; 0x820d
    call ds_dispatch_e84e            ; 0x820e
    add sp, byte 4                   ; 0x8211
    add word [bp - 0x000c], byte 6   ; 0x8214
@..local.l123:
    inc word [bp - 0x0004]           ; 0x8218
    mov ax, word [bp - 0x0004]       ; 0x821b
    cmp ax, strict word 2            ; 0x821e
    jge short @..local.l124          ; 0x8221
    jmp near @..local.l121           ; 0x8223
@..local.l124:
    cmp word [bp - 0x0006], byte 0   ; 0x8226
    jne short @..local.l125          ; 0x822a
    lea ax, word [bp - 0x00f2]       ; 0x822c
    push ax                          ; 0x8230
    mov ax, 0x1e3                    ; 0x8231
    push ax                          ; 0x8234
    call ds_dispatch_b53b            ; 0x8235
    add sp, byte 4                   ; 0x8238
    push word [bp - 0x000c]          ; 0x823b
    lea ax, word [bp - 0x00f2]       ; 0x823e
    push ax                          ; 0x8242
    call ds_dispatch_fa90            ; 0x8243
    pop cx                           ; 0x8246
    mov cx, 6                        ; 0x8247
    imul cx                          ; 0x824a
    mov cx, 2                        ; 0x824c
    cwd                              ; 0x824f
    idiv cx                          ; 0x8250
    mov cx, ax                       ; 0x8252
    mov ax, 0x50                     ; 0x8254
    sub ax, cx                       ; 0x8257
    push ax                          ; 0x8259
    call ds_dispatch_e809            ; 0x825a
    add sp, byte 4                   ; 0x825d
    mov ax, 0                        ; 0x8260
    push ax                          ; 0x8263
    lea ax, word [bp - 0x00f2]       ; 0x8264
    push ax                          ; 0x8268
    call ds_dispatch_e84e            ; 0x8269
    add sp, byte 4                   ; 0x826c
@..local.l125:
    mov ax, 0xb6                     ; 0x826f
    push ax                          ; 0x8272
    mov ax, 0xab                     ; 0x8273
    push ax                          ; 0x8276
    mov ax, 0x70                     ; 0x8277
    push ax                          ; 0x827a
    mov ax, 1                        ; 0x827b
    push ax                          ; 0x827e
    call ds_dispatch_e8da            ; 0x827f
    add sp, byte 8                   ; 0x8282
    cmp word [dseg_0e32], byte 0     ; 0x8285
    je short @..local.l131           ; 0x828a
    cmp word [bp + 0xa], byte 0      ; 0x828c
    jne short @..local.l128          ; 0x8290
@..local.l126:
    cmp word [bp - 0x0194], byte 0   ; 0x8292
    je short @..local.l127           ; 0x8297
    lea ax, word [bp - 0x000c]       ; 0x8299
    push ax                          ; 0x829c
    lea ax, word [bp - 0x000a]       ; 0x829d
    push ax                          ; 0x82a0
    call ds_dispatch_f053            ; 0x82a1
    add sp, byte 4                   ; 0x82a4
    test ax, ax                      ; 0x82a7
    je short @..local.l127           ; 0x82a9
    jmp short @..local.l126          ; 0x82ab
@..local.l127:
    jmp short @..local.l130          ; 0x82ad
@..local.l128:
    call ds_dispatch_ec17            ; 0x82af
@..local.l129:
    call ds_dispatch_baef            ; 0x82b2
    test ax, ax                      ; 0x82b5
    jne short @..local.l130          ; 0x82b7
    jmp short @..local.l129          ; 0x82b9
@..local.l130:
    jmp short @..local.l132          ; 0x82bb
@..local.l131:
    mov ax, 1                        ; 0x82bd
    push ax                          ; 0x82c0
    call ds_dispatch_eb32            ; 0x82c1
    pop cx                           ; 0x82c4
    sub ah, ah                       ; 0x82c5
    mov word [bp - 0x0008], ax       ; 0x82c7
    cmp word [bp - 0x0008], byte 0x0d ; 0x82ca
    je short @..local.l132           ; 0x82ce
    cmp word [bp - 0x0008], byte 0x1b ; 0x82d0
    jne short @..local.l131          ; 0x82d4
@..local.l132:
    mov ax, 0                        ; 0x82d6
    ret                              ; 0x82d9
