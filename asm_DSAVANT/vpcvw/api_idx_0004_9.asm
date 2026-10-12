api_idx_0004_9:
    mov ax, 0xfffc                   ; 0x542a
    call ds_aztec_csav               ; 0x542d
    mov ax, 0                        ; 0x5430
    push ax                          ; 0x5433
    call api_idx_0008_3              ; 0x5434
    pop cx                           ; 0x5437
    mov word [bp - 0x0002], ax       ; 0x5438
    cmp ax, strict word 0xffff       ; 0x543b
    jne short @..api_idx_0004_9.l4   ; 0x543e
    cmp word [bss_5910], byte 0x7f   ; 0x5440
    jl short @..api_idx_0004_9.l3    ; 0x5445
    mov ax, 1                        ; 0x5447
    push ax                          ; 0x544a
    call api_idx_0008_3              ; 0x544b
    pop cx                           ; 0x544e
    mov word [bp - 0x0002], ax       ; 0x544f
    cmp ax, strict word 0xffff       ; 0x5452
    jne short @..api_idx_0004_9.l2   ; 0x5455
@..api_idx_0004_9.l1:
    mov ax, 0                        ; 0x5457
    push ax                          ; 0x545a
    call ds_app_0a27                 ; 0x545b
    pop cx                           ; 0x545e
    jmp short @..api_idx_0004_9.l1   ; 0x545f
@..api_idx_0004_9.l2:
    jmp short @..api_idx_0004_9.l4   ; 0x5461
@..api_idx_0004_9.l3:
    mov ax, word [bss_5910]          ; 0x5463
    mov word [bp - 0x0002], ax       ; 0x5466
    inc word [bss_5910]              ; 0x5469
@..api_idx_0004_9.l4:
    mov cx, word [bp - 0x0002]       ; 0x546d
    shl cx, 1                        ; 0x5470
    shl cx, 1                        ; 0x5472
    shl cx, 1                        ; 0x5474
    mov ax, word [bss_0e0e]          ; 0x5476
    add ax, cx                       ; 0x5479
    mov word [bp - 0x0004], ax       ; 0x547b
    mov al, byte [bss_830c]          ; 0x547e
    mov bx, word [bp - 0x0004]       ; 0x5481
    mov byte [bx], al                ; 0x5484
    mov bx, word [bp + 0x4]          ; 0x5486
    mov al, byte [bx + 0x7]          ; 0x5489
    mov bx, word [bp - 0x0004]       ; 0x548c
    mov byte [bx + 0x1], al          ; 0x548f
    mov ax, word [bss_8f3e]          ; 0x5492
    xchg al, ah                      ; 0x5495
    sub al, al                       ; 0x5497
    mov dx, word [bss_8f42]          ; 0x5499
    mov cx, 4                        ; 0x549d
    shl dx, cl                       ; 0x54a0
    mov cx, dx                       ; 0x54a2
    add ax, cx                       ; 0x54a4
    add ax, word [bss_8f40]          ; 0x54a6
    mov bx, word [bp - 0x0004]       ; 0x54aa
    mov word [bx + 0x2], ax          ; 0x54ad
    mov bx, word [bp + 0x4]          ; 0x54b0
    mov ax, word [bx]                ; 0x54b3
    mov bx, word [bp - 0x0004]       ; 0x54b5
    mov word [bx + 0x4], ax          ; 0x54b8
    mov bx, word [bp + 0x4]          ; 0x54bb
    mov al, byte [bx + 0x5]          ; 0x54be
    mov bx, word [bp - 0x0004]       ; 0x54c1
    mov byte [bx + 0x7], al          ; 0x54c4
    mov bx, word [bp + 0x4]          ; 0x54c7
    mov al, byte [bx + 0x6]          ; 0x54ca
    mov bx, word [bp - 0x0004]       ; 0x54cd
    mov byte [bx + 0x6], al          ; 0x54d0
    mov ax, 1                        ; 0x54d3
    push ax                          ; 0x54d6
    mov ax, word [bss_8f3e]          ; 0x54d7
    mov cx, 6                        ; 0x54da
    shl ax, cl                       ; 0x54dd
    mov cx, word [bss_8f40]          ; 0x54df
    shl cx, 1                        ; 0x54e3
    shl cx, 1                        ; 0x54e5
    shl cx, 1                        ; 0x54e7
    add ax, cx                       ; 0x54e9
    add ax, word [bss_8f42]          ; 0x54eb
    push ax                          ; 0x54ef
    mov ax, 0x8bfe                   ; 0x54f0
    push ax                          ; 0x54f3
    call ds_leaf_loc_3e88            ; 0x54f4
    add sp, byte 6                   ; 0x54f7
    ret                              ; 0x54fa
