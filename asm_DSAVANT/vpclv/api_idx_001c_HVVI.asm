; auto-generated
api_idx_001c_HVVI:
    mov ax, 0xffe4                   ; 0x4140
    call aztec_csav                  ; 0x4143
    mov ax, word [bp + 0x6]          ; 0x4146
    mov word [bp - 0x000c], ax       ; 0x4149
    mov ax, word [bp + 0x8]          ; 0x414c
    mov word [bp - 0x000a], ax       ; 0x414f
    mov word [bp - 0x0008], 0        ; 0x4152
    mov ax, word [bp + 0xa]          ; 0x4157
    mov word [bp - 0x0006], ax       ; 0x415a
    mov word [bp - 0x001c], 0        ; 0x415d
    mov word [bp - 0x001a], 5        ; 0x4162
    mov word [bp - 0x0018], 3        ; 0x4167
    mov word [bp - 0x0016], 4        ; 0x416c
    mov word [bp - 0x0014], 0        ; 0x4171
    mov word [bp - 0x0012], 0        ; 0x4176
    mov word [bp - 0x0010], 1        ; 0x417b
    mov word [bp - 0x000e], 2        ; 0x4180
    mov word [bp - 0x0002], 0        ; 0x4185
@..api_idx_001c_HVVI.l1:
    cmp word [bp - 0x0002], byte 2   ; 0x418a
    jne short @..api_idx_001c_HVVI.l2 ; 0x418e
    jmp near @..api_idx_001c_HVVI.l4 ; 0x4190
@..api_idx_001c_HVVI.l2:
    mov ax, 0x248                    ; 0x4193
    imul word [bp + 0x4]             ; 0x4196
    mov cx, word [bp - 0x0002]       ; 0x4199
    shl cx, 1                        ; 0x419c
    shl cx, 1                        ; 0x419e
    mov bx, cx                       ; 0x41a0
    add bx, bp                       ; 0x41a2
    mov cx, word [bx - 0x001c]       ; 0x41a4
    add ax, cx                       ; 0x41a7
    mov bx, ax                       ; 0x41a9
    mov al, byte [bx + 0x5d64]       ; 0x41ab
    sub ah, ah                       ; 0x41af
    push ax                          ; 0x41b1
    mov ax, 0x248                    ; 0x41b2
    imul word [bp + 0x4]             ; 0x41b5
    mov cx, word [bp - 0x0002]       ; 0x41b8
    shl cx, 1                        ; 0x41bb
    shl cx, 1                        ; 0x41bd
    mov bx, cx                       ; 0x41bf
    add bx, bp                       ; 0x41c1
    mov cx, word [bx - 0x001a]       ; 0x41c3
    add ax, cx                       ; 0x41c6
    mov bx, ax                       ; 0x41c8
    mov al, byte [bx + 0x5d64]       ; 0x41ca
    sub ah, ah                       ; 0x41ce
    mov cx, ax                       ; 0x41d0
    pop ax                           ; 0x41d2
    add ax, cx                       ; 0x41d3
    mov cx, 6                        ; 0x41d5
    cwd                              ; 0x41d8
    idiv cx                          ; 0x41d9
    mov cx, word [bp - 0x0002]       ; 0x41db
    shl cx, 1                        ; 0x41de
    mov bx, cx                       ; 0x41e0
    add bx, bp                       ; 0x41e2
    mov cx, word [bx - 0x000c]       ; 0x41e4
    add ax, cx                       ; 0x41e7
    dec ax                           ; 0x41e9
    dec ax                           ; 0x41ea
    dec ax                           ; 0x41eb
    mov word [bx - 0x000c], ax       ; 0x41ec
    cmp word [bx - 0x000c], byte 1   ; 0x41ef
    jge short @..api_idx_001c_HVVI.l3 ; 0x41f3
    mov word [bx - 0x000c], 1        ; 0x41f5
@..api_idx_001c_HVVI.l3:
    mov ax, word [bx - 0x000c]       ; 0x41fa
    mov cx, 2                        ; 0x41fd
    cwd                              ; 0x4200
    idiv cx                          ; 0x4201
    mov word [bp - 0x0004], ax       ; 0x4203
    mov cx, word [bx - 0x000c]       ; 0x4206
    sub cx, ax                       ; 0x4209
    mov ax, cx                       ; 0x420b
    inc ax                           ; 0x420d
    push ax                          ; 0x420e
    call ds_app_PUNN                 ; 0x420f
    pop cx                           ; 0x4212
    mov cx, ax                       ; 0x4213
    mov ax, word [bp - 0x0004]       ; 0x4215
    add cx, ax                       ; 0x4218
    mov ax, word [bp - 0x0002]       ; 0x421a
    shl ax, 1                        ; 0x421d
    mov bx, ax                       ; 0x421f
    mov word [bx - 0x6a10], cx       ; 0x4221
@..api_idx_001c_HVVI.l4:
    inc word [bp - 0x0002]           ; 0x4225
    mov ax, word [bp - 0x0002]       ; 0x4228
    cmp ax, strict word 4            ; 0x422b
    jge short @..api_idx_001c_HVVI.l5 ; 0x422e
    jmp near @..api_idx_001c_HVVI.l1 ; 0x4230
@..api_idx_001c_HVVI.l5:
    mov word [bss_95f4], 0           ; 0x4233
    mov ax, word [dseg_0040]         ; 0x4239
    mov word [bp - 0x0002], ax       ; 0x423c
    jmp short @..api_idx_001c_HVVI.l8 ; 0x423f
@..api_idx_001c_HVVI.l6:
    mov ax, 0x248                    ; 0x4241
    imul word [bp + 0x4]             ; 0x4244
    add ax, word [bp - 0x0002]       ; 0x4247
    mov bx, ax                       ; 0x424a
    cmp byte [bx + 0x5d6c], 0        ; 0x424c
    jbe short @..api_idx_001c_HVVI.l7 ; 0x4251
    mov ax, 2                        ; 0x4253
    push ax                          ; 0x4256
    call ds_app_PUNN                 ; 0x4257
    pop cx                           ; 0x425a
    add ax, word [bss_95f4]          ; 0x425b
    inc ax                           ; 0x425f
    mov word [bss_95f4], ax          ; 0x4260
@..api_idx_001c_HVVI.l7:
    inc word [bp - 0x0002]           ; 0x4263
@..api_idx_001c_HVVI.l8:
    mov ax, word [bp - 0x0002]       ; 0x4266
    cmp ax, word [dseg_0042]         ; 0x4269
    jle short @..api_idx_001c_HVVI.l6 ; 0x426d
    ret                              ; 0x426f
