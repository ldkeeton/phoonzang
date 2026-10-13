api_idx_0040:
    mov ax, 0xffc0                   ; 0x5348
    call ds_aztec_csav               ; 0x534b
    lea ax, word [bp - 0x0034]       ; 0x534e
    push ax                          ; 0x5351
    mov ax, 0x13ec                   ; 0x5352
    push ax                          ; 0x5355
    call ds_app_mem_0782             ; 0x5356
    add sp, byte 4                   ; 0x5359
@..api_idx_0040.l1:
    lea ax, word [bp - 0x0034]       ; 0x535c
    push ax                          ; 0x535f
    push word [bss_95e4]             ; 0x5360
    mov ax, 1                        ; 0x5364
    push ax                          ; 0x5367
    push ax                          ; 0x5368
    mov ax, 0                        ; 0x5369
    push ax                          ; 0x536c
    mov ax, 0x13ec                   ; 0x536d
    push ax                          ; 0x5370
    call api_idx_0038                ; 0x5371
    add sp, byte 0x0c                ; 0x5374
    mov word [bp - 0x0006], ax       ; 0x5377
    mov ax, word [bss_904e]          ; 0x537a
    mov word [bp - 0x0002], ax       ; 0x537d
    cmp word [bp - 0x0002], byte 0xff ; 0x5380
    je short @..api_idx_0040.l1      ; 0x5384
    mov ax, 0x10                     ; 0x5386
    push ax                          ; 0x5389
    mov ax, 0xc                      ; 0x538a
    push ax                          ; 0x538d
    mov ax, 0x96                     ; 0x538e
    push ax                          ; 0x5391
    mov ax, 0x3f                     ; 0x5392
    push ax                          ; 0x5395
    push word [bp - 0x0006]          ; 0x5396
    mov ax, word [bp - 0x0006]       ; 0x5399
    add ax, 0x13ec                   ; 0x539c
    push ax                          ; 0x539f
    call api_idx_0018                ; 0x53a0
    add sp, byte 0x0c                ; 0x53a3
    mov ax, word [bp - 0x0006]       ; 0x53a6
    cmp word [bp - 0x0006], byte 1   ; 0x53a9
    je short @..api_idx_0040.l2      ; 0x53ad
    jmp near @..api_idx_0040.l8      ; 0x53af
@..api_idx_0040.l2:
    cmp word [bss_0e32], byte 0      ; 0x53b2
    jne short @..api_idx_0040.l3     ; 0x53b7
    mov ax, 0xc6                     ; 0x53b9
    push ax                          ; 0x53bc
    mov ax, 0x109                    ; 0x53bd
    push ax                          ; 0x53c0
    mov ax, 0x8e                     ; 0x53c1
    push ax                          ; 0x53c4
    mov ax, 0x36                     ; 0x53c5
    push ax                          ; 0x53c8
    call ds_loc_3b21                 ; 0x53c9
    add sp, byte 8                   ; 0x53cc
@..api_idx_0040.l3:
    call ds_app_io_20f8              ; 0x53cf
    mov word [bp - 0x0008], ax       ; 0x53d2
    cmp ax, strict word 0xffff       ; 0x53d5
    je short @..api_idx_0040.l6      ; 0x53d8
    push ax                          ; 0x53da
    call api_idx_0004_9              ; 0x53db
    pop cx                           ; 0x53de
    mov word [bp - 0x0004], ax       ; 0x53df
    cmp ax, strict word 0xffff       ; 0x53e2
    jne short @..api_idx_0040.l4     ; 0x53e5
    mov word [bp - 0x0002], 0xffff   ; 0x53e7
    mov ax, 0                        ; 0x53ec
    push ax                          ; 0x53ef
    call ds_app_0a27                 ; 0x53f0
    pop cx                           ; 0x53f3
    jmp short @..api_idx_0040.l5     ; 0x53f4
@..api_idx_0040.l4:
    mov ax, word [bp - 0x0004]       ; 0x53f6
    mov cx, 0x100                    ; 0x53f9
    cwd                              ; 0x53fc
    idiv cx                          ; 0x53fd
    mov word [bp - 0x000a], ax       ; 0x53ff
    mov word [bp - 0x000c], dx       ; 0x5402
    mov ax, word [bp - 0x0002]       ; 0x5405
    shl ax, 1                        ; 0x5408
    mov bx, ax                       ; 0x540a
    push word [bx - 0x6a1a]          ; 0x540c
    push word [bx - 0x6a4a]          ; 0x5410
    mov ax, 0x248                    ; 0x5414
    imul word [bp - 0x0008]          ; 0x5417
    push ax                          ; 0x541a
    mov ax, 0x78                     ; 0x541b
    imul word [bp - 0x000a]          ; 0x541e
    mov cx, ax                       ; 0x5421
    pop ax                           ; 0x5423
    add ax, cx                       ; 0x5424
    push ax                          ; 0x5426
    mov ax, 0xc                      ; 0x5427
    imul word [bp - 0x000c]          ; 0x542a
    mov cx, ax                       ; 0x542d
    pop ax                           ; 0x542f
    add ax, cx                       ; 0x5430
    add ax, 0x5c34                   ; 0x5432
    push ax                          ; 0x5435
    push word [bx - 0x69f2]          ; 0x5436
    push word [bp - 0x0008]          ; 0x543a
    call api_idx_004c                ; 0x543d
    add sp, byte 0x0a                ; 0x5440
@..api_idx_0040.l5:
    jmp short @..api_idx_0040.l7     ; 0x5443
@..api_idx_0040.l6:
    mov word [bp - 0x0002], 0xffff   ; 0x5445
@..api_idx_0040.l7:
    jmp short @..api_idx_0040.l9     ; 0x544a
@..api_idx_0040.l8:
    cmp word [bp - 0x0006], byte 2   ; 0x544c
    jne short @..api_idx_0040.l9     ; 0x5450
    mov ax, word [bp - 0x0002]       ; 0x5452
    shl ax, 1                        ; 0x5455
    mov bx, ax                       ; 0x5457
    push word [bx - 0x6a1a]          ; 0x5459
    push word [bx - 0x6a4a]          ; 0x545d
    lea ax, word [bp - 0x0040]       ; 0x5461
    push ax                          ; 0x5464
    push word [bx - 0x69f2]          ; 0x5465
    mov ax, 0                        ; 0x5469
    push ax                          ; 0x546c
    call api_idx_004c                ; 0x546d
    add sp, byte 0x0a                ; 0x5470
    lea ax, word [bp - 0x0040]       ; 0x5473
    push ax                          ; 0x5476
    call api_idx_0004_6              ; 0x5477
    pop cx                           ; 0x547a
    call api_idx_0006_3              ; 0x547b
@..api_idx_0040.l9:
    cmp word [bp - 0x0002], byte 0xff ; 0x547e
    je short @..api_idx_0040.l12     ; 0x5482
    dec word [bss_95e4]              ; 0x5484
    mov ax, word [bp - 0x0002]       ; 0x5488
    mov word [bp - 0x0004], ax       ; 0x548b
    jmp short @..api_idx_0040.l11    ; 0x548e
@..api_idx_0040.l10:
    mov ax, 0x16                     ; 0x5490
    imul word [bp - 0x0004]          ; 0x5493
    add ax, 0x9414                   ; 0x5496
    push ax                          ; 0x5499
    mov ax, 0x16                     ; 0x549a
    imul word [bp - 0x0004]          ; 0x549d
    add ax, 0x93fe                   ; 0x54a0
    push ax                          ; 0x54a3
    call ds_aztec_strcpy             ; 0x54a4
    add sp, byte 4                   ; 0x54a7
    mov ax, word [bp - 0x0004]       ; 0x54aa
    shl ax, 1                        ; 0x54ad
    mov bx, ax                       ; 0x54af
    mov ax, word [bx - 0x69f0]       ; 0x54b1
    mov word [bx - 0x69f2], ax       ; 0x54b5
    mov ax, word [bx - 0x6a48]       ; 0x54b9
    mov word [bx - 0x6a4a], ax       ; 0x54bd
    mov ax, word [bx - 0x6c50]       ; 0x54c1
    mov word [bx - 0x6c52], ax       ; 0x54c5
    mov ax, word [bx - 0x6c28]       ; 0x54c9
    mov word [bx - 0x6c2a], ax       ; 0x54cd
    mov ax, word [bx - 0x69c8]       ; 0x54d1
    mov word [bx - 0x69ca], ax       ; 0x54d5
    mov ax, word [bx - 0x6a18]       ; 0x54d9
    mov word [bx - 0x6a1a], ax       ; 0x54dd
    inc word [bp - 0x0004]           ; 0x54e1
@..api_idx_0040.l11:
    mov ax, word [bp - 0x0004]       ; 0x54e4
    cmp ax, word [bss_95e4]          ; 0x54e7
    jl short @..api_idx_0040.l10     ; 0x54eb
@..api_idx_0040.l12:
    cmp word [bss_95e4], byte 0      ; 0x54ed
    jle short @..api_idx_0040.l13    ; 0x54f2
    jmp near @..api_idx_0040.l1      ; 0x54f4
@..api_idx_0040.l13:
    mov ax, 0xc6                     ; 0x54f7
    push ax                          ; 0x54fa
    mov ax, 0x109                    ; 0x54fb
    push ax                          ; 0x54fe
    mov ax, 0x8e                     ; 0x54ff
    push ax                          ; 0x5502
    mov ax, 0x36                     ; 0x5503
    push ax                          ; 0x5506
    call ds_loc_3b21                 ; 0x5507
    add sp, byte 8                   ; 0x550a
    ret                              ; 0x550d
