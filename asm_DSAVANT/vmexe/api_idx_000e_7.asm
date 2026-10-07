api_idx_000e_7:
    mov ax, 0xfff2                   ; 0x91b5
    call ds_dispatch_f40b            ; 0x91b8
    mov word [data_90e4], 0          ; 0x91bb
    mov bx, word [bp + 0x4]          ; 0x91c1
    mov al, byte [bx + 0x1f]         ; 0x91c4
    sub ah, ah                       ; 0x91c7
    mov word [bp - 0x0002], ax       ; 0x91c9
    mov al, byte [bx + 0x20]         ; 0x91cc
    sub ah, ah                       ; 0x91cf
    mov word [bp - 0x0004], ax       ; 0x91d1
    mov word [bp - 0x0006], 1        ; 0x91d4
    mov word [bp - 0x000a], 0        ; 0x91d9
@..api_idx_000e_7.l1:
    mov ax, 0x19                     ; 0x91de
    imul word [bp - 0x000a]          ; 0x91e1
    add ax, strict word 0x19         ; 0x91e4
    mov bx, word [bp + 0x4]          ; 0x91e7
    mov cx, word [bx + 0x2]          ; 0x91ea
    cmp ax, cx                       ; 0x91ed
    jge short @..api_idx_000e_7.l2   ; 0x91ef
    inc word [bp - 0x0006]           ; 0x91f1
@..api_idx_000e_7.l2:
    inc word [bp - 0x000a]           ; 0x91f4
    mov ax, word [bp - 0x000a]       ; 0x91f7
    cmp ax, strict word 6            ; 0x91fa
    jl short @..api_idx_000e_7.l1    ; 0x91fd
    mov ax, word [bp - 0x0006]       ; 0x91ff
    mov bx, word [bp + 0x4]          ; 0x9202
    mov cx, word [bx + 0x6]          ; 0x9205
    mov bx, cx                       ; 0x9208
    imul bx                          ; 0x920a
    push ax                          ; 0x920c
    push dx                          ; 0x920d
    mov bx, word [bp + 0x4]          ; 0x920e
    mov ax, word [bx + 0x8]          ; 0x9211
    cwd                              ; 0x9214
    mov cx, ax                       ; 0x9215
    mov bx, dx                       ; 0x9217
    pop dx                           ; 0x9219
    pop ax                           ; 0x921a
    call ds_dispatch_f99f            ; 0x921b
    inc ax                           ; 0x921e
    mov word [bp - 0x0006], ax       ; 0x921f
    cmp ax, strict word 1            ; 0x9222
    jge short @..api_idx_000e_7.l3   ; 0x9225
    mov word [bp - 0x0006], 1        ; 0x9227
@..api_idx_000e_7.l3:
    cmp word [bp - 0x0006], byte 6   ; 0x922c
    jle short @..api_idx_000e_7.l4   ; 0x9230
    mov word [bp - 0x0006], 6        ; 0x9232
@..api_idx_000e_7.l4:
    mov ax, word [bp - 0x0006]       ; 0x9237
    shl ax, 1                        ; 0x923a
    shl ax, 1                        ; 0x923c
    mov word [bp - 0x0008], ax       ; 0x923e
    mov word [bp - 0x000e], 0        ; 0x9241
    mov bx, word [bp + 0x4]          ; 0x9246
    mov ax, word [bx + 0xa]          ; 0x9249
    jmp near @..api_idx_000e_7.l5    ; 0x924c
    mov ax, 1                        ; 0x924f
    push ax                          ; 0x9252
    mov ax, 0                        ; 0x9253
    push ax                          ; 0x9256
    mov ax, 0x43                     ; 0x9257
    push ax                          ; 0x925a
    mov ax, 0xe74                    ; 0x925b
    push ax                          ; 0x925e
    mov ax, 0xd0c                    ; 0x925f
    push ax                          ; 0x9262
    call api_idx_0006_6              ; 0x9263
    add sp, byte 0x0a                ; 0x9266
    mov ax, 0xb                      ; 0x9269
    push ax                          ; 0x926c
    mov ax, 1                        ; 0x926d
    push ax                          ; 0x9270
    mov ax, 8                        ; 0x9271
    push ax                          ; 0x9274
    mov ax, 0                        ; 0x9275
    push ax                          ; 0x9278
    push word [bp - 0x0002]          ; 0x9279
    call api_idx_0004_9              ; 0x927c
    add sp, byte 0x0a                ; 0x927f
    push word [bp - 0x0008]          ; 0x9282
    mov ax, 1                        ; 0x9285
    push ax                          ; 0x9288
    push word [bp - 0x0006]          ; 0x9289
    mov ax, 5                        ; 0x928c
    push ax                          ; 0x928f
    mov ax, 2                        ; 0x9290
    push ax                          ; 0x9293
    mov ax, 0                        ; 0x9294
    sub ax, word [bp - 0x0006]       ; 0x9297
    push ax                          ; 0x929a
    push word [bp - 0x0002]          ; 0x929b
    call api_idx_000a_3              ; 0x929e
    add sp, byte 0x0e                ; 0x92a1
    mov ax, 4                        ; 0x92a4
    push ax                          ; 0x92a7
    db 0xe8, 0xfe, 0x24 ; call ds_dispatch_b7a9
    pop cx                           ; 0x92ab
    push ax                          ; 0x92ac
    mov bx, word [bp + 0x4]          ; 0x92ad
    mov ax, word [bx + 0x8]          ; 0x92b0
    mov cx, 6                        ; 0x92b3
    cwd                              ; 0x92b6
    idiv cx                          ; 0x92b7
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x92bb
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x92be
    jmp near @..api_idx_000e_7.l6    ; 0x92c1
    mov ax, 1                        ; 0x92c4
    push ax                          ; 0x92c7
    mov ax, 0                        ; 0x92c8
    push ax                          ; 0x92cb
    mov ax, 0x43                     ; 0x92cc
    push ax                          ; 0x92cf
    mov ax, 0xe75                    ; 0x92d0
    push ax                          ; 0x92d3
    mov ax, 0xd14                    ; 0x92d4
    push ax                          ; 0x92d7
    call api_idx_0006_6              ; 0x92d8
    add sp, byte 0x0a                ; 0x92db
    push word [data_90de]            ; 0x92de
    mov ax, 0                        ; 0x92e2
    push ax                          ; 0x92e5
    mov ax, 0x16                     ; 0x92e6
    push ax                          ; 0x92e9
    mov ax, 0                        ; 0x92ea
    push ax                          ; 0x92ed
    push word [bp - 0x0002]          ; 0x92ee
    call api_idx_0004_9              ; 0x92f1
    add sp, byte 0x0a                ; 0x92f4
    push word [bp - 0x0006]          ; 0x92f7
    mov ax, 2                        ; 0x92fa
    push ax                          ; 0x92fd
    push word [bp - 0x0006]          ; 0x92fe
    mov ax, 0                        ; 0x9301
    push ax                          ; 0x9304
    push word [bp - 0x0008]          ; 0x9305
    mov ax, 9                        ; 0x9308
    push ax                          ; 0x930b
    mov ax, 8                        ; 0x930c
    push ax                          ; 0x930f
    mov ax, 0xd9f                    ; 0x9310
    push ax                          ; 0x9313
    mov ax, 0                        ; 0x9314
    sub ax, word [bp - 0x0006]       ; 0x9317
    push ax                          ; 0x931a
    push word [bp - 0x0002]          ; 0x931b
    call api_idx_000a_4              ; 0x931e
    add sp, byte 0x14                ; 0x9321
    mov ax, 4                        ; 0x9324
    push ax                          ; 0x9327
    db 0xe8, 0x7e, 0x24 ; call ds_dispatch_b7a9
    pop cx                           ; 0x932b
    push ax                          ; 0x932c
    mov cx, 8                        ; 0x932d
    mov bx, word [bp + 0x4]          ; 0x9330
    mov ax, word [bx + 0x8]          ; 0x9333
    cwd                              ; 0x9336
    idiv cx                          ; 0x9337
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x933b
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x933e
    jmp near @..api_idx_000e_7.l6    ; 0x9341
    mov ax, 1                        ; 0x9344
    push ax                          ; 0x9347
    mov ax, 0                        ; 0x9348
    push ax                          ; 0x934b
    mov ax, 0x43                     ; 0x934c
    push ax                          ; 0x934f
    mov ax, 0xe76                    ; 0x9350
    push ax                          ; 0x9353
    mov ax, 0xd0c                    ; 0x9354
    push ax                          ; 0x9357
    call api_idx_0006_6              ; 0x9358
    add sp, byte 0x0a                ; 0x935b
    mov ax, 0xb                      ; 0x935e
    push ax                          ; 0x9361
    mov ax, 1                        ; 0x9362
    push ax                          ; 0x9365
    mov ax, 0xa                      ; 0x9366
    push ax                          ; 0x9369
    mov ax, 0                        ; 0x936a
    push ax                          ; 0x936d
    push word [bp - 0x0002]          ; 0x936e
    call api_idx_0004_9              ; 0x9371
    add sp, byte 0x0a                ; 0x9374
    push word [bp - 0x0008]          ; 0x9377
    mov ax, 3                        ; 0x937a
    push ax                          ; 0x937d
    push word [bp - 0x0006]          ; 0x937e
    mov ax, 4                        ; 0x9381
    push ax                          ; 0x9384
    mov ax, 3                        ; 0x9385
    push ax                          ; 0x9388
    mov ax, 0                        ; 0x9389
    sub ax, word [bp - 0x0006]       ; 0x938c
    push ax                          ; 0x938f
    push word [bp - 0x0002]          ; 0x9390
    call api_idx_000a_3              ; 0x9393
    add sp, byte 0x0e                ; 0x9396
    mov ax, 4                        ; 0x9399
    push ax                          ; 0x939c
    db 0xe8, 0x09, 0x24 ; call ds_dispatch_b7a9
    pop cx                           ; 0x93a0
    push ax                          ; 0x93a1
    mov bx, word [bp + 0x4]          ; 0x93a2
    mov ax, word [bx + 0x8]          ; 0x93a5
    mov cx, 6                        ; 0x93a8
    cwd                              ; 0x93ab
    idiv cx                          ; 0x93ac
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x93b0
    db 0x03, 0xc1 ; add ax, cx
