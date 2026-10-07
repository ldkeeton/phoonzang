api_idx_0004:
    mov ax, 0xfffc                   ; 0x0281
    call ds_dispatch_f40b            ; 0x0284
    mov ax, 0                        ; 0x0287
    push ax                          ; 0x028a
    push ax                          ; 0x028b
    push word [data_942c]            ; 0x028c
    push word [data_942a]            ; 0x0290
    call ds_dispatch_e942            ; 0x0294
    add sp, byte 8                   ; 0x0297
    mov word [bp - 0x0002], 0        ; 0x029a
@..api_idx_0004.l1:
    mov word [bp - 0x0004], 0        ; 0x029f
@..api_idx_0004.l2:
    mov ax, 0                        ; 0x02a4
    push ax                          ; 0x02a7
    mov ax, word [bp - 0x0002]       ; 0x02a8
    shl ax, 1                        ; 0x02ab
    shl ax, 1                        ; 0x02ad
    mov cx, word [bp - 0x0004]       ; 0x02af
    shl cx, 1                        ; 0x02b2
    add ax, cx                       ; 0x02b4
    mov bx, ax                       ; 0x02b6
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x02bc
    add sp, byte 4                   ; 0x02bf
    mov ax, word [bp - 0x0002]       ; 0x02c2
    shl ax, 1                        ; 0x02c5
    shl ax, 1                        ; 0x02c7
    shl ax, 1                        ; 0x02c9
    mov cx, word [bp - 0x0004]       ; 0x02cb
    shl cx, 1                        ; 0x02ce
    shl cx, 1                        ; 0x02d0
    add ax, cx                       ; 0x02d2
    mov bx, ax                       ; 0x02d4
    push word [bx + 0x15e]           ; 0x02d6
    push word [bx + 0x15c]           ; 0x02da
    call ds_dispatch_e809            ; 0x02de
    add sp, byte 4                   ; 0x02e1
    mov ax, 3                        ; 0x02e4
    push ax                          ; 0x02e7
    push ax                          ; 0x02e8
    mov ax, 0x248                    ; 0x02e9
    imul word [bp + 0x4]             ; 0x02ec
    mov cx, word [bp - 0x0002]       ; 0x02ef
    shl cx, 1                        ; 0x02f2
    shl cx, 1                        ; 0x02f4
    add ax, cx                       ; 0x02f6
    mov cx, word [bp - 0x0004]       ; 0x02f8
    shl cx, 1                        ; 0x02fb
    add ax, cx                       ; 0x02fd
    mov bx, ax                       ; 0x02ff
    push word [bx + 0x5c1c]          ; 0x0301
    call ds_dispatch_b2e7            ; 0x0305
    add sp, byte 6                   ; 0x0308
    inc word [bp - 0x0004]           ; 0x030b
    mov ax, word [bp - 0x0004]       ; 0x030e
    cmp ax, strict word 2            ; 0x0311
    jl short @..api_idx_0004.l2      ; 0x0314
    inc word [bp - 0x0002]           ; 0x0316
    mov ax, word [bp - 0x0002]       ; 0x0319
    cmp ax, strict word 6            ; 0x031c
    jge short @..api_idx_0004.l3     ; 0x031f
    jmp near @..api_idx_0004.l1      ; 0x0321
@..api_idx_0004.l3:
    mov ax, 0                        ; 0x0324
    push ax                          ; 0x0327
    push ax                          ; 0x0328
    push ax                          ; 0x0329
    call api_idx_000c                ; 0x032a
    add sp, byte 6                   ; 0x032d
    ret                              ; 0x0330
