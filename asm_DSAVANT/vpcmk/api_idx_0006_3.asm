api_idx_0006_3:
    mov ax, 0xfffa                   ; 0x60e0
    call ds_dispatch_f40b            ; 0x60e3
    mov ax, 8                        ; 0x60e6
    push ax                          ; 0x60e9
    mov ax, 0xb                      ; 0x60ea
    push ax                          ; 0x60ed
    mov ax, 0x4a                     ; 0x60ee
    push ax                          ; 0x60f1
    mov ax, 0x26                     ; 0x60f2
    push ax                          ; 0x60f5
    mov ax, 0x11                     ; 0x60f6
    push ax                          ; 0x60f9
    mov ax, 0xc                      ; 0x60fa
    push ax                          ; 0x60fd
    mov ax, 0                        ; 0x60fe
    push ax                          ; 0x6101
    call ds_dispatch_baa6            ; 0x6102
    add sp, byte 0x0e                ; 0x6105
    mov ax, 0xa                      ; 0x6108
    push ax                          ; 0x610b
    mov ax, 9                        ; 0x610c
    push ax                          ; 0x610f
    mov ax, 0x4a                     ; 0x6110
    push ax                          ; 0x6113
    mov ax, 0x43                     ; 0x6114
    push ax                          ; 0x6117
    mov ax, 0x11                     ; 0x6118
    push ax                          ; 0x611b
    mov ax, 0x27                     ; 0x611c
    push ax                          ; 0x611f
    mov ax, 1                        ; 0x6120
    push ax                          ; 0x6123
    call ds_dispatch_baa6            ; 0x6124
    add sp, byte 0x0e                ; 0x6127
    mov ax, 2                        ; 0x612a
    push ax                          ; 0x612d
    mov ax, 1                        ; 0x612e
    push ax                          ; 0x6131
    mov ax, 0x18                     ; 0x6132
    push ax                          ; 0x6135
    mov ax, 0x97                     ; 0x6136
    push ax                          ; 0x6139
    mov ax, 0x58                     ; 0x613a
    push ax                          ; 0x613d
    mov ax, 0x454                    ; 0x613e
    push ax                          ; 0x6141
    call api_idx_0058                ; 0x6142
    add sp, byte 0x0c                ; 0x6145
    mov word [bp - 0x0004], dx       ; 0x6148
    mov word [bp - 0x0006], ax       ; 0x614b
    call ds_dispatch_ec17            ; 0x614e
@..api_idx_0006_3.l1:
    mov ax, 0                        ; 0x6151
    push ax                          ; 0x6154
    push word [bp + 0x8]             ; 0x6155
    push word [bp + 0x6]             ; 0x6158
    call ds_dispatch_e94f            ; 0x615b
    add sp, byte 6                   ; 0x615e
    mov ax, 0                        ; 0x6161
    push ax                          ; 0x6164
    mov ax, 0x248                    ; 0x6165
    imul word [bp + 0x4]             ; 0x6168
    mov bx, ax                       ; 0x616b
    mov al, byte [bx + 0x5e2a]       ; 0x616d
    sub ah, ah                       ; 0x6171
    push ax                          ; 0x6173
    call api_idx_0016                ; 0x6174
    add sp, byte 4                   ; 0x6177
    mov ax, 0x12                     ; 0x617a
    push ax                          ; 0x617d
    mov ax, 0xe                      ; 0x617e
    push ax                          ; 0x6181
    push word [bp + 0x4]             ; 0x6182
    call api_idx_0010                ; 0x6185
    add sp, byte 6                   ; 0x6188
    mov ax, 0x4a                     ; 0x618b
    push ax                          ; 0x618e
    mov ax, 0x42                     ; 0x618f
    push ax                          ; 0x6192
    mov ax, 0x12                     ; 0x6193
    push ax                          ; 0x6196
    mov ax, 0xe                      ; 0x6197
    push ax                          ; 0x619a
    call ds_dispatch_e8da            ; 0x619b
    add sp, byte 8                   ; 0x619e
@..api_idx_0006_3.l2:
    mov ax, 0x59fe                   ; 0x61a1
    push ax                          ; 0x61a4
    call ds_dispatch_b90d            ; 0x61a5
    pop cx                           ; 0x61a8
    dec ax                           ; 0x61a9
    mov word [bp - 0x0002], ax       ; 0x61aa
    cmp word [dseg_5b3e], byte 0     ; 0x61ad
    je short @..api_idx_0006_3.l2    ; 0x61b2
    mov ax, word [bp - 0x0002]       ; 0x61b4
    jmp short @..api_idx_0006_3.l5   ; 0x61b7
@..api_idx_0006_3.l3:
    mov ax, 0x248                    ; 0x61b9
    imul word [bp + 0x4]             ; 0x61bc
    mov bx, ax                       ; 0x61bf
    mov al, byte [bx + 0x5e2a]       ; 0x61c1
    sub ah, ah                       ; 0x61c5
    add ax, strict word 0x20         ; 0x61c7
    mov cx, 0x21                     ; 0x61ca
    cwd                              ; 0x61cd
    idiv cx                          ; 0x61ce
    mov ax, dx                       ; 0x61d0
    mov byte [bx + 0x5e2a], al       ; 0x61d2
    jmp short @..api_idx_0006_3.l6   ; 0x61d6
@..api_idx_0006_3.l4:
    mov ax, 0x248                    ; 0x61d8
    imul word [bp + 0x4]             ; 0x61db
    mov bx, ax                       ; 0x61de
    mov al, byte [bx + 0x5e2a]       ; 0x61e0
    sub ah, ah                       ; 0x61e4
    inc ax                           ; 0x61e6
    mov cx, 0x21                     ; 0x61e7
    cwd                              ; 0x61ea
    idiv cx                          ; 0x61eb
    mov ax, dx                       ; 0x61ed
    mov byte [bx + 0x5e2a], al       ; 0x61ef
    jmp short @..api_idx_0006_3.l6   ; 0x61f3
@..api_idx_0006_3.l5:
    cmp ax, strict word 0            ; 0x61f5
    je short @..api_idx_0006_3.l3    ; 0x61f8
    cmp ax, strict word 1            ; 0x61fa
    je short @..api_idx_0006_3.l4    ; 0x61fd
@..api_idx_0006_3.l6:
    cmp word [bp - 0x0002], byte 2   ; 0x61ff
    je short @..api_idx_0006_3.l7    ; 0x6203
    jmp near @..api_idx_0006_3.l1    ; 0x6205
@..api_idx_0006_3.l7:
    mov ax, 1                        ; 0x6208
    push ax                          ; 0x620b
    push ax                          ; 0x620c
    mov ax, 0x18                     ; 0x620d
    push ax                          ; 0x6210
    mov ax, 0x97                     ; 0x6211
    push ax                          ; 0x6214
    mov ax, 0x58                     ; 0x6215
    push ax                          ; 0x6218
    call ds_dispatch_be5f            ; 0x6219
    add sp, byte 0x0a                ; 0x621c
    mov ax, 0                        ; 0x621f
    push ax                          ; 0x6222
    mov ax, 1                        ; 0x6223
    push ax                          ; 0x6226
    mov ax, 0x18                     ; 0x6227
    push ax                          ; 0x622a
    mov ax, 0x97                     ; 0x622b
    push ax                          ; 0x622e
    mov ax, 0x58                     ; 0x622f
    push ax                          ; 0x6232
    call ds_dispatch_be5f            ; 0x6233
    add sp, byte 0x0a                ; 0x6236
    mov ax, 1                        ; 0x6239
    push ax                          ; 0x623c
    push word [bp - 0x0004]          ; 0x623d
    push word [bp - 0x0006]          ; 0x6240
    call ds_dispatch_e94f            ; 0x6243
    add sp, byte 6                   ; 0x6246
    mov ax, 0x12                     ; 0x6249
    push ax                          ; 0x624c
    mov ax, 0xe                      ; 0x624d
    push ax                          ; 0x6250
    push word [bp + 0x4]             ; 0x6251
    call api_idx_0010                ; 0x6254
    add sp, byte 6                   ; 0x6257
    mov ax, 0xc7                     ; 0x625a
    push ax                          ; 0x625d
    mov ax, 0x13f                    ; 0x625e
    push ax                          ; 0x6261
    mov ax, 0                        ; 0x6262
    push ax                          ; 0x6265
    push ax                          ; 0x6266
    call ds_dispatch_e8da            ; 0x6267
    add sp, byte 8                   ; 0x626a
    ret                              ; 0x626d
