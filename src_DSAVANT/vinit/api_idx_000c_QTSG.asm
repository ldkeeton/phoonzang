; auto-generated
api_idx_000c_QTSG:
    mov ax, 0xfff4                   ; 0x0146
    call aztec_csav                  ; 0x0149
    mov ax, 0                        ; 0x014c
    push ax                          ; 0x014f
    push ax                          ; 0x0150
    push word [bp + 0x4]             ; 0x0151
    call data_file_path              ; 0x0154
    add sp, byte 4                   ; 0x0157
    push ax                          ; 0x015a
    call aztec_open                  ; 0x015b
    add sp, byte 4                   ; 0x015e
    mov word [bp - 0x0002], ax       ; 0x0161
    cmp ax, strict word 0xffff       ; 0x0164
    jne short @..api_idx_000c_QTSG.l1 ; 0x0167
    mov ax, 6                        ; 0x0169
    push ax                          ; 0x016c
    call fatal_error                 ; 0x016d
    pop cx                           ; 0x0170
@..api_idx_000c_QTSG.l1:
    mov ax, 2                        ; 0x0171
    push ax                          ; 0x0174
    mov ax, 0                        ; 0x0175
    mov dx, 0                        ; 0x0178
    push dx                          ; 0x017b
    push ax                          ; 0x017c
    push word [bp - 0x0002]          ; 0x017d
    call aztec_lseek                 ; 0x0180
    add sp, byte 8                   ; 0x0183
    mov word [bp - 0x0004], dx       ; 0x0186
    mov word [bp - 0x0006], ax       ; 0x0189
    push word [bp - 0x0004]          ; 0x018c
    push word [bp - 0x0006]          ; 0x018f
    call app_malloc                  ; 0x0192
    add sp, byte 4                   ; 0x0195
    mov word [bp - 0x0008], dx       ; 0x0198
    mov word [bp - 0x000a], ax       ; 0x019b
    push word [bp - 0x0006]          ; 0x019e
    call aztec_malloc                ; 0x01a1
    pop cx                           ; 0x01a4
    mov word [bp - 0x000c], ax       ; 0x01a5
    cmp word [bp - 0x0008], byte 0   ; 0x01a8
    jne short @..api_idx_000c_QTSG.l2 ; 0x01ac
    cmp word [bp - 0x000a], byte 0   ; 0x01ae
@..api_idx_000c_QTSG.l2:
    je short @..api_idx_000c_QTSG.l3 ; 0x01b2
    cmp word [bp - 0x000c], byte 0   ; 0x01b4
    jne short @..api_idx_000c_QTSG.l4 ; 0x01b8
@..api_idx_000c_QTSG.l3:
    mov ax, 6                        ; 0x01ba
    push ax                          ; 0x01bd
    call fatal_error                 ; 0x01be
    pop cx                           ; 0x01c1
@..api_idx_000c_QTSG.l4:
    mov ax, 0                        ; 0x01c2
    push ax                          ; 0x01c5
    mov ax, 0                        ; 0x01c6
    mov dx, 0                        ; 0x01c9
    push dx                          ; 0x01cc
    push ax                          ; 0x01cd
    push word [bp - 0x0002]          ; 0x01ce
    call aztec_lseek                 ; 0x01d1
    add sp, byte 8                   ; 0x01d4
    push word [bp - 0x0006]          ; 0x01d7
    push word [bp - 0x000c]          ; 0x01da
    push word [bp - 0x0002]          ; 0x01dd
    call aztec_read                  ; 0x01e0
    add sp, byte 6                   ; 0x01e3
    push word [bp - 0x0002]          ; 0x01e6
    call aztec_close                 ; 0x01e9
    pop cx                           ; 0x01ec
    push word [bp - 0x0006]          ; 0x01ed
    push word [bp - 0x0008]          ; 0x01f0
    push word [bp - 0x000a]          ; 0x01f3
    mov ax, word [bp - 0x000c]       ; 0x01f6
    mov dx, ds                       ; 0x01f9
    push dx                          ; 0x01fb
    push ax                          ; 0x01fc
    call app_memmove                 ; 0x01fd
    add sp, byte 0x0a                ; 0x0200
    push word [bp - 0x000c]          ; 0x0203
    call aztec_free                  ; 0x0206
    pop cx                           ; 0x0209
    mov ax, word [bp - 0x000a]       ; 0x020a
    mov dx, word [bp - 0x0008]       ; 0x020d
    ret                              ; 0x0210
loc_PNTM:
    mov ax, 0xfaf4                   ; 0x0211
    call aztec_csav                  ; 0x0214
    mov word [bp - 0x0002], 0        ; 0x0217
@..loc_PNTM.l1:
    mov word [bp - 0x0004], 0        ; 0x021c
@..loc_PNTM.l2:
    mov ax, 0x3f                     ; 0x0221
    push ax                          ; 0x0224
    mov ax, 0                        ; 0x0225
    push ax                          ; 0x0228
    mov ax, 3                        ; 0x0229
    imul word [bp - 0x0002]          ; 0x022c
    add ax, word [bp - 0x0004]       ; 0x022f
    mov si, ax                       ; 0x0232
    mov bx, word [bp + 0x8]          ; 0x0234
    mov al, byte [bx + si]           ; 0x0237
    sub ah, ah                       ; 0x0239
    add ax, word [bp + 0x4]          ; 0x023b
    push ax                          ; 0x023e
    call clamp_between               ; 0x023f
    add sp, byte 6                   ; 0x0242
    push ax                          ; 0x0245
    mov ax, 3                        ; 0x0246
    imul word [bp - 0x0002]          ; 0x0249
    mov cx, ax                       ; 0x024c
    add ax, word [bp - 0x0004]       ; 0x024e
    mov bx, ax                       ; 0x0251
    add bx, bp                       ; 0x0253
    pop ax                           ; 0x0255
    mov byte [bx - 0x030c], al       ; 0x0256
    cmp al, 0x20                     ; 0x025a
    jbe short @..loc_PNTM.l3         ; 0x025c
    sub ah, ah                       ; 0x025e
    add ax, strict word 0xffe0       ; 0x0260
    imul word [bp + 0x6]             ; 0x0263
    mov cx, 0x20                     ; 0x0266
    cwd                              ; 0x0269
    idiv cx                          ; 0x026a
    mov word [bp - 0x0006], ax       ; 0x026c
    mov ax, 0x3f                     ; 0x026f
    push ax                          ; 0x0272
    mov ax, 0                        ; 0x0273
    push ax                          ; 0x0276
    mov al, byte [bx - 0x030c]       ; 0x0277
    sub ah, ah                       ; 0x027b
    add ax, word [bp - 0x0006]       ; 0x027d
    push ax                          ; 0x0280
    call clamp_between               ; 0x0281
    add sp, byte 6                   ; 0x0284
    push ax                          ; 0x0287
    mov ax, 3                        ; 0x0288
    imul word [bp - 0x0002]          ; 0x028b
    mov cx, ax                       ; 0x028e
    add ax, word [bp - 0x0004]       ; 0x0290
    mov bx, ax                       ; 0x0293
    add bx, bp                       ; 0x0295
    pop ax                           ; 0x0297
    mov byte [bx - 0x030c], al       ; 0x0298
    jmp short @..loc_PNTM.l4         ; 0x029c
@..loc_PNTM.l3:
    mov ax, 3                        ; 0x029e
    imul word [bp - 0x0002]          ; 0x02a1
    add ax, word [bp - 0x0004]       ; 0x02a4
    mov bx, ax                       ; 0x02a7
    add bx, bp                       ; 0x02a9
    cmp byte [bx - 0x030c], 0x20     ; 0x02ab
    jae short @..loc_PNTM.l4         ; 0x02b0
    mov al, byte [bx - 0x030c]       ; 0x02b2
    sub ah, ah                       ; 0x02b6
    mov cx, ax                       ; 0x02b8
    mov ax, 0x20                     ; 0x02ba
    sub ax, cx                       ; 0x02bd
    imul word [bp + 0x6]             ; 0x02bf
    mov cx, 0x20                     ; 0x02c2
    cwd                              ; 0x02c5
    idiv cx                          ; 0x02c6
    mov word [bp - 0x0006], ax       ; 0x02c8
    mov ax, 0x3f                     ; 0x02cb
    push ax                          ; 0x02ce
    mov ax, 0                        ; 0x02cf
    push ax                          ; 0x02d2
    mov al, byte [bx - 0x030c]       ; 0x02d3
    sub ah, ah                       ; 0x02d7
    sub ax, word [bp - 0x0006]       ; 0x02d9
    push ax                          ; 0x02dc
    call clamp_between               ; 0x02dd
    add sp, byte 6                   ; 0x02e0
    push ax                          ; 0x02e3
    mov ax, 3                        ; 0x02e4
    imul word [bp - 0x0002]          ; 0x02e7
    mov cx, ax                       ; 0x02ea
    add ax, word [bp - 0x0004]       ; 0x02ec
    mov bx, ax                       ; 0x02ef
    add bx, bp                       ; 0x02f1
    pop ax                           ; 0x02f3
    mov byte [bx - 0x030c], al       ; 0x02f4
@..loc_PNTM.l4:
    inc word [bp - 0x0004]           ; 0x02f8
    mov ax, word [bp - 0x0004]       ; 0x02fb
    cmp ax, strict word 3            ; 0x02fe
    jge short @..loc_PNTM.l5         ; 0x0301
    jmp near @..loc_PNTM.l2          ; 0x0303
@..loc_PNTM.l5:
    inc word [bp - 0x0002]           ; 0x0306
    mov ax, word [bp - 0x0002]       ; 0x0309
    cmp ax, 0x100                    ; 0x030c
    jge short @..loc_PNTM.l6         ; 0x030f
    jmp near @..loc_PNTM.l1          ; 0x0311
@..loc_PNTM.l6:
    mov ax, 0xff                     ; 0x0314
    push ax                          ; 0x0317
    mov ax, 0x200                    ; 0x0318
    push ax                          ; 0x031b
    lea ax, word [bp - 0x050c]       ; 0x031c
    push ax                          ; 0x0320
    call aztec_setmem                ; 0x0321
    add sp, byte 6                   ; 0x0324
    mov word [bp - 0x0002], 0        ; 0x0327
@..loc_PNTM.l7:
    mov ax, 3                        ; 0x032c
    imul word [bp - 0x0002]          ; 0x032f
    mov bx, ax                       ; 0x0332
    add bx, bp                       ; 0x0334
    mov al, byte [bx - 0x030c]       ; 0x0336
    sub ah, ah                       ; 0x033a
    mov cx, 8                        ; 0x033c
    cwd                              ; 0x033f
    idiv cx                          ; 0x0340
    mov word [bp - 0x0008], ax       ; 0x0342
    mov al, byte [bx - 0x030b]       ; 0x0345
    sub ah, ah                       ; 0x0349
    cwd                              ; 0x034b
    idiv cx                          ; 0x034c
    mov word [bp - 0x000a], ax       ; 0x034e
    mov al, byte [bx - 0x030a]       ; 0x0351
    sub ah, ah                       ; 0x0355
    cwd                              ; 0x0357
    idiv cx                          ; 0x0358
    mov word [bp - 0x000c], ax       ; 0x035a
    mov al, byte [bp - 0x0002]       ; 0x035d
    mov dx, word [bp - 0x0008]       ; 0x0360
    mov cx, 6                        ; 0x0363
    shl dx, cl                       ; 0x0366
    mov cx, dx                       ; 0x0368
    mov dx, word [bp - 0x000a]       ; 0x036a
    shl dx, 1                        ; 0x036d
    shl dx, 1                        ; 0x036f
    shl dx, 1                        ; 0x0371
    add cx, dx                       ; 0x0373
    add cx, word [bp - 0x000c]       ; 0x0375
    mov bx, cx                       ; 0x0378
    add bx, bp                       ; 0x037a
    mov byte [bx - 0x050c], al       ; 0x037c
    inc word [bp - 0x0002]           ; 0x0380
    mov ax, word [bp - 0x0002]       ; 0x0383
    cmp ax, 0x100                    ; 0x0386
    jl short @..loc_PNTM.l7          ; 0x0389
    lea ax, word [bp - 0x050c]       ; 0x038b
    push ax                          ; 0x038f
    lea ax, word [bp - 0x030c]       ; 0x0390
    push ax                          ; 0x0394
    call gfx_set_palette             ; 0x0395
    add sp, byte 4                   ; 0x0398
    mov ax, 0xffff                   ; 0x039b
    push ax                          ; 0x039e
    push ax                          ; 0x039f
    push ax                          ; 0x03a0
    call gfx_reset_rgb               ; 0x03a1
    add sp, byte 6                   ; 0x03a4
    ret                              ; 0x03a7
