; auto-generated
api_idx_0004_GJHP:
    mov ax, 0xfffc                   ; 0x5371
    call aztec_csav                  ; 0x5374
    mov word [bss_9cd2], 0           ; 0x5377
    mov word [bp - 2], 0             ; 0x537d
.back1:
    mov ax, word [bp - 2]            ; 0x5382
    shl ax, 1                        ; 0x5385
    mov bx, ax                       ; 0x5387
    cmp word [bx + bss_9cd4], byte 0 ; 0x5389
    jg short .forward1               ; 0x538e
    jmp near .forward2               ; 0x5390
.forward1:
    mov ax, word [bx + bss_9cd4]     ; 0x5393
    mov cx, word [bss_9cd2]          ; 0x5397
    shl cx, 1                        ; 0x539b
    mov bx, cx                       ; 0x539d
    mov word [bx + bss_9cd4], ax     ; 0x539f
    mov ax, 0x16                     ; 0x53a3
    imul word [bp - 2]               ; 0x53a6
    add ax, bss_99d6                 ; 0x53a9
    push ax                          ; 0x53ac
    mov ax, 0x16                     ; 0x53ad
    imul word [bss_9cd2]             ; 0x53b0
    add ax, bss_99d6                 ; 0x53b4
    push ax                          ; 0x53b7
    call aztec_strcpy                ; 0x53b8
    add sp, byte 4                   ; 0x53bb
    mov ax, word [bp - 2]            ; 0x53be
    shl ax, 1                        ; 0x53c1
    mov bx, ax                       ; 0x53c3
    mov ax, word [bx + bss_9c6a]     ; 0x53c5
    mov cx, word [bss_9cd2]          ; 0x53c9
    shl cx, 1                        ; 0x53cd
    mov bx, cx                       ; 0x53cf
    mov word [bx + bss_9c6a], ax     ; 0x53d1
    mov ax, word [bp - 2]            ; 0x53d5
    shl ax, 1                        ; 0x53d8
    shl ax, 1                        ; 0x53da
    mov bx, ax                       ; 0x53dc
    mov ax, word [bx + bss_9936]     ; 0x53de
    mov dx, word [bx + bss_9938]     ; 0x53e2
    mov cx, word [bss_9cd2]          ; 0x53e6
    shl cx, 1                        ; 0x53ea
    shl cx, 1                        ; 0x53ec
    mov bx, cx                       ; 0x53ee
    mov word [bx + bss_9938], dx     ; 0x53f0
    mov word [bx + bss_9936], ax     ; 0x53f4
    mov bx, word [bp - 2]            ; 0x53f8
    mov al, byte [bx + bss_9918]     ; 0x53fb
    mov bx, word [bss_9cd2]          ; 0x53ff
    mov byte [bx + bss_9918], al     ; 0x5403
    mov bx, word [bp - 2]            ; 0x5407
    mov al, byte [bx + bss_99b8]     ; 0x540a
    mov bx, word [bss_9cd2]          ; 0x540e
    mov byte [bx + bss_99b8], al     ; 0x5412
    mov word [bp - 4], 0             ; 0x5416
.back2:
    mov ax, word [bp - 2]            ; 0x541b
    shl ax, 1                        ; 0x541e
    add ax, word [bp - 4]            ; 0x5420
    mov bx, ax                       ; 0x5423
    mov al, byte [bx + bss_9882]     ; 0x5425
    mov cx, word [bss_9cd2]          ; 0x5429
    shl cx, 1                        ; 0x542d
    add cx, word [bp - 4]            ; 0x542f
    mov bx, cx                       ; 0x5432
    mov byte [bx + bss_9882], al     ; 0x5434
    mov ax, word [bp - 2]            ; 0x5438
    shl ax, 1                        ; 0x543b
    add ax, word [bp - 4]            ; 0x543d
    mov bx, ax                       ; 0x5440
    mov al, byte [bx + bss_98be]     ; 0x5442
    mov bx, cx                       ; 0x5446
    mov byte [bx + bss_98be], al     ; 0x5448
    inc word [bp - 4]                ; 0x544c
    mov ax, word [bp - 4]            ; 0x544f
    cmp ax, strict word 2            ; 0x5452
    jl short .back2                  ; 0x5455
    mov bx, word [bp - 2]            ; 0x5457
    mov al, byte [bx + bss_98fa]     ; 0x545a
    mov bx, word [bss_9cd2]          ; 0x545e
    mov byte [bx + bss_98fa], al     ; 0x5462
    inc word [bss_9cd2]              ; 0x5466
.forward2:
    inc word [bp - 2]                ; 0x546a
    mov ax, word [bp - 2]            ; 0x546d
    cmp ax, strict word 0x1e         ; 0x5470
    jge short .forward3              ; 0x5473
    jmp near .back1                  ; 0x5475
.forward3:
    mov ax, word [bss_9cd2]          ; 0x5478
    mov word [bp - 2], ax            ; 0x547b
    jmp short .forward4              ; 0x547e
.back3:
    mov ax, word [bp - 2]            ; 0x5480
    shl ax, 1                        ; 0x5483
    mov bx, ax                       ; 0x5485
    mov word [bx + bss_9cd4], 0      ; 0x5487
    inc word [bp - 2]                ; 0x548d
.forward4:
    cmp word [bp - 2], byte 0x1e     ; 0x5490
    jl short .back3                  ; 0x5494
    ret                              ; 0x5496
