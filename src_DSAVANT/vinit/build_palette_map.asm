; auto-generated
build_palette_map:
    mov ax, 0xfaf4                   ; 0x0211
    call aztec_csav                  ; 0x0214
    mov word [bp - 2], 0             ; 0x0217
@..build_palette_map.l1:
    mov word [bp - 4], 0             ; 0x021c
@..build_palette_map.l2:
    mov ax, 0x3f                     ; 0x0221
    push ax                          ; 0x0224
    mov ax, 0                        ; 0x0225
    push ax                          ; 0x0228
    mov ax, 3                        ; 0x0229
    imul word [bp - 2]               ; 0x022c
    add ax, word [bp - 4]            ; 0x022f
    mov si, ax                       ; 0x0232
    mov bx, word [bp + 8]            ; 0x0234
    mov al, byte [bx + si]           ; 0x0237
    sub ah, ah                       ; 0x0239
    add ax, word [bp + 4]            ; 0x023b
    push ax                          ; 0x023e
    call clamp_between               ; 0x023f
    add sp, byte 6                   ; 0x0242
    push ax                          ; 0x0245
    mov ax, 3                        ; 0x0246
    imul word [bp - 2]               ; 0x0249
    mov cx, ax                       ; 0x024c
    add ax, word [bp - 4]            ; 0x024e
    mov bx, ax                       ; 0x0251
    add bx, bp                       ; 0x0253
    pop ax                           ; 0x0255
    mov byte [bx - 0x30c], al        ; 0x0256
    cmp al, 0x20                     ; 0x025a
    jbe short @..build_palette_map.l3 ; 0x025c
    sub ah, ah                       ; 0x025e
    add ax, strict word 0xffe0       ; 0x0260
    imul word [bp + 6]               ; 0x0263
    mov cx, 0x20                     ; 0x0266
    cwd                              ; 0x0269
    idiv cx                          ; 0x026a
    mov word [bp - 6], ax            ; 0x026c
    mov ax, 0x3f                     ; 0x026f
    push ax                          ; 0x0272
    mov ax, 0                        ; 0x0273
    push ax                          ; 0x0276
    mov al, byte [bx - 0x30c]        ; 0x0277
    sub ah, ah                       ; 0x027b
    add ax, word [bp - 6]            ; 0x027d
    push ax                          ; 0x0280
    call clamp_between               ; 0x0281
    add sp, byte 6                   ; 0x0284
    push ax                          ; 0x0287
    mov ax, 3                        ; 0x0288
    imul word [bp - 2]               ; 0x028b
    mov cx, ax                       ; 0x028e
    add ax, word [bp - 4]            ; 0x0290
    mov bx, ax                       ; 0x0293
    add bx, bp                       ; 0x0295
    pop ax                           ; 0x0297
    mov byte [bx - 0x30c], al        ; 0x0298
    jmp short @..build_palette_map.l4 ; 0x029c
@..build_palette_map.l3:
    mov ax, 3                        ; 0x029e
    imul word [bp - 2]               ; 0x02a1
    add ax, word [bp - 4]            ; 0x02a4
    mov bx, ax                       ; 0x02a7
    add bx, bp                       ; 0x02a9
    cmp byte [bx - 0x30c], 0x20      ; 0x02ab
    jae short @..build_palette_map.l4 ; 0x02b0
    mov al, byte [bx - 0x30c]        ; 0x02b2
    sub ah, ah                       ; 0x02b6
    mov cx, ax                       ; 0x02b8
    mov ax, 0x20                     ; 0x02ba
    sub ax, cx                       ; 0x02bd
    imul word [bp + 6]               ; 0x02bf
    mov cx, 0x20                     ; 0x02c2
    cwd                              ; 0x02c5
    idiv cx                          ; 0x02c6
    mov word [bp - 6], ax            ; 0x02c8
    mov ax, 0x3f                     ; 0x02cb
    push ax                          ; 0x02ce
    mov ax, 0                        ; 0x02cf
    push ax                          ; 0x02d2
    mov al, byte [bx - 0x30c]        ; 0x02d3
    sub ah, ah                       ; 0x02d7
    sub ax, word [bp - 6]            ; 0x02d9
    push ax                          ; 0x02dc
    call clamp_between               ; 0x02dd
    add sp, byte 6                   ; 0x02e0
    push ax                          ; 0x02e3
    mov ax, 3                        ; 0x02e4
    imul word [bp - 2]               ; 0x02e7
    mov cx, ax                       ; 0x02ea
    add ax, word [bp - 4]            ; 0x02ec
    mov bx, ax                       ; 0x02ef
    add bx, bp                       ; 0x02f1
    pop ax                           ; 0x02f3
    mov byte [bx - 0x30c], al        ; 0x02f4
@..build_palette_map.l4:
    inc word [bp - 4]                ; 0x02f8
    mov ax, word [bp - 4]            ; 0x02fb
    cmp ax, strict word 3            ; 0x02fe
    jge short @..build_palette_map.l5 ; 0x0301
    jmp near @..build_palette_map.l2 ; 0x0303
@..build_palette_map.l5:
    inc word [bp - 2]                ; 0x0306
    mov ax, word [bp - 2]            ; 0x0309
    cmp ax, 0x100                    ; 0x030c
    jge short @..build_palette_map.l6 ; 0x030f
    jmp near @..build_palette_map.l1 ; 0x0311
@..build_palette_map.l6:
    mov ax, 0xff                     ; 0x0314
    push ax                          ; 0x0317
    mov ax, 0x200                    ; 0x0318
    push ax                          ; 0x031b
    lea ax, word [bp - 0x50c]        ; 0x031c
    push ax                          ; 0x0320
    call aztec_setmem                ; 0x0321
    add sp, byte 6                   ; 0x0324
    mov word [bp - 2], 0             ; 0x0327
@..build_palette_map.l7:
    mov ax, 3                        ; 0x032c
    imul word [bp - 2]               ; 0x032f
    mov bx, ax                       ; 0x0332
    add bx, bp                       ; 0x0334
    mov al, byte [bx - 0x30c]        ; 0x0336
    sub ah, ah                       ; 0x033a
    mov cx, 8                        ; 0x033c
    cwd                              ; 0x033f
    idiv cx                          ; 0x0340
    mov word [bp - 8], ax            ; 0x0342
    mov al, byte [bx - 0x30b]        ; 0x0345
    sub ah, ah                       ; 0x0349
    cwd                              ; 0x034b
    idiv cx                          ; 0x034c
    mov word [bp - 0xa], ax          ; 0x034e
    mov al, byte [bx - 0x30a]        ; 0x0351
    sub ah, ah                       ; 0x0355
    cwd                              ; 0x0357
    idiv cx                          ; 0x0358
    mov word [bp - 0xc], ax          ; 0x035a
    mov al, byte [bp - 2]            ; 0x035d
    mov dx, word [bp - 8]            ; 0x0360
    mov cx, 6                        ; 0x0363
    shl dx, cl                       ; 0x0366
    mov cx, dx                       ; 0x0368
    mov dx, word [bp - 0xa]          ; 0x036a
    shl dx, 1                        ; 0x036d
    shl dx, 1                        ; 0x036f
    shl dx, 1                        ; 0x0371
    add cx, dx                       ; 0x0373
    add cx, word [bp - 0xc]          ; 0x0375
    mov bx, cx                       ; 0x0378
    add bx, bp                       ; 0x037a
    mov byte [bx - 0x50c], al        ; 0x037c
    inc word [bp - 2]                ; 0x0380
    mov ax, word [bp - 2]            ; 0x0383
    cmp ax, 0x100                    ; 0x0386
    jl short @..build_palette_map.l7 ; 0x0389
    lea ax, word [bp - 0x50c]        ; 0x038b
    push ax                          ; 0x038f
    lea ax, word [bp - 0x30c]        ; 0x0390
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
