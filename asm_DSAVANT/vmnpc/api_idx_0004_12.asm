api_idx_0004_12:
    mov ax, 0xfffc                   ; 0x5371
    call ds_dispatch_f40b            ; 0x5374
    mov word [bss_9cd2], 0           ; 0x5377
    mov word [bp - 0x0002], 0        ; 0x537d
@..api_idx_0004_12.l1:
    mov ax, word [bp - 0x0002]       ; 0x5382
    shl ax, 1                        ; 0x5385
    mov bx, ax                       ; 0x5387
    cmp word [bx - 0x632c], byte 0   ; 0x5389
    jg short @..api_idx_0004_12.l2   ; 0x538e
    jmp near @..api_idx_0004_12.l4   ; 0x5390
@..api_idx_0004_12.l2:
    mov ax, word [bx - 0x632c]       ; 0x5393
    mov cx, word [bss_9cd2]          ; 0x5397
    shl cx, 1                        ; 0x539b
    mov bx, cx                       ; 0x539d
    mov word [bx - 0x632c], ax       ; 0x539f
    mov ax, 0x16                     ; 0x53a3
    imul word [bp - 0x0002]          ; 0x53a6
    add ax, 0x99d6                   ; 0x53a9
    push ax                          ; 0x53ac
    mov ax, 0x16                     ; 0x53ad
    imul word [bss_9cd2]             ; 0x53b0
    add ax, 0x99d6                   ; 0x53b4
    push ax                          ; 0x53b7
    call ds_dispatch_f364            ; 0x53b8
    add sp, byte 4                   ; 0x53bb
    mov ax, word [bp - 0x0002]       ; 0x53be
    shl ax, 1                        ; 0x53c1
    mov bx, ax                       ; 0x53c3
    mov ax, word [bx - 0x6396]       ; 0x53c5
    mov cx, word [bss_9cd2]          ; 0x53c9
    shl cx, 1                        ; 0x53cd
    mov bx, cx                       ; 0x53cf
    mov word [bx - 0x6396], ax       ; 0x53d1
    mov ax, word [bp - 0x0002]       ; 0x53d5
    shl ax, 1                        ; 0x53d8
    shl ax, 1                        ; 0x53da
    mov bx, ax                       ; 0x53dc
    mov ax, word [bx - 0x66ca]       ; 0x53de
    mov dx, word [bx - 0x66c8]       ; 0x53e2
    mov cx, word [bss_9cd2]          ; 0x53e6
    shl cx, 1                        ; 0x53ea
    shl cx, 1                        ; 0x53ec
    mov bx, cx                       ; 0x53ee
    mov word [bx - 0x66c8], dx       ; 0x53f0
    mov word [bx - 0x66ca], ax       ; 0x53f4
    mov bx, word [bp - 0x0002]       ; 0x53f8
    mov al, byte [bx - 0x66e8]       ; 0x53fb
    mov bx, word [bss_9cd2]          ; 0x53ff
    mov byte [bx - 0x66e8], al       ; 0x5403
    mov bx, word [bp - 0x0002]       ; 0x5407
    mov al, byte [bx - 0x6648]       ; 0x540a
    mov bx, word [bss_9cd2]          ; 0x540e
    mov byte [bx - 0x6648], al       ; 0x5412
    mov word [bp - 0x0004], 0        ; 0x5416
@..api_idx_0004_12.l3:
    mov ax, word [bp - 0x0002]       ; 0x541b
    shl ax, 1                        ; 0x541e
    add ax, word [bp - 0x0004]       ; 0x5420
    mov bx, ax                       ; 0x5423
    mov al, byte [bx - 0x677e]       ; 0x5425
    mov cx, word [bss_9cd2]          ; 0x5429
    shl cx, 1                        ; 0x542d
    add cx, word [bp - 0x0004]       ; 0x542f
    mov bx, cx                       ; 0x5432
    mov byte [bx - 0x677e], al       ; 0x5434
    mov ax, word [bp - 0x0002]       ; 0x5438
    shl ax, 1                        ; 0x543b
    add ax, word [bp - 0x0004]       ; 0x543d
    mov bx, ax                       ; 0x5440
    mov al, byte [bx - 0x6742]       ; 0x5442
    mov bx, cx                       ; 0x5446
    mov byte [bx - 0x6742], al       ; 0x5448
    inc word [bp - 0x0004]           ; 0x544c
    mov ax, word [bp - 0x0004]       ; 0x544f
    cmp ax, strict word 2            ; 0x5452
    jl short @..api_idx_0004_12.l3   ; 0x5455
    mov bx, word [bp - 0x0002]       ; 0x5457
    mov al, byte [bx - 0x6706]       ; 0x545a
    mov bx, word [bss_9cd2]          ; 0x545e
    mov byte [bx - 0x6706], al       ; 0x5462
    inc word [bss_9cd2]              ; 0x5466
@..api_idx_0004_12.l4:
    inc word [bp - 0x0002]           ; 0x546a
    mov ax, word [bp - 0x0002]       ; 0x546d
    cmp ax, strict word 0x1e         ; 0x5470
    jge short @..api_idx_0004_12.l5  ; 0x5473
    jmp near @..api_idx_0004_12.l1   ; 0x5475
@..api_idx_0004_12.l5:
    mov ax, word [bss_9cd2]          ; 0x5478
    mov word [bp - 0x0002], ax       ; 0x547b
    jmp short @..api_idx_0004_12.l7  ; 0x547e
@..api_idx_0004_12.l6:
    mov ax, word [bp - 0x0002]       ; 0x5480
    shl ax, 1                        ; 0x5483
    mov bx, ax                       ; 0x5485
    mov word [bx - 0x632c], 0        ; 0x5487
    inc word [bp - 0x0002]           ; 0x548d
@..api_idx_0004_12.l7:
    cmp word [bp - 0x0002], byte 0x1e ; 0x5490
    jl short @..api_idx_0004_12.l6   ; 0x5494
    ret                              ; 0x5496
loc_5497:
    mov ax, 0                        ; 0x5497
    call ds_dispatch_f40b            ; 0x549a
    cmp word [bp + 0x4], strict word 0x190 ; 0x549d
    jl short @..local.l80            ; 0x54a2
    cmp word [bp + 0x4], strict word 0x19b ; 0x54a4
    jge short @..local.l80           ; 0x54a9
    mov ax, 1                        ; 0x54ab
    jmp short @..local.l81           ; 0x54ae
@..local.l80:
    mov ax, 0                        ; 0x54b0
@..local.l81:
    ret                              ; 0x54b3
