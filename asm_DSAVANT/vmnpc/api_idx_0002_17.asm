api_idx_0002_17:
    mov ax, 0xfffe                   ; 0xa411
    db 0xe8, 0xf4, 0x4f ; call 0xf40b
    mov word [bp - 0x0002], 0        ; 0xa417
    jmp short @..api_idx_0002_17.l2  ; 0xa41c
@..api_idx_0002_17.l1:
    mov ax, 0x32                     ; 0xa41e
    imul word [bp - 0x0002]          ; 0xa421
    add ax, 0xa8c4                   ; 0xa424
    push ax                          ; 0xa427
    mov ax, word [bp + 0x4]          ; 0xa428
    add ax, word [bp - 0x0002]       ; 0xa42b
    push ax                          ; 0xa42e
    db 0xe8, 0x09, 0x11 ; call 0xb53b
    add sp, byte 4                   ; 0xa432
    inc word [bp - 0x0002]           ; 0xa435
@..api_idx_0002_17.l2:
    mov ax, word [bp - 0x0002]       ; 0xa438
    cmp ax, word [bp + 0x6]          ; 0xa43b
    jl short @..api_idx_0002_17.l1   ; 0xa43e
    ret                              ; 0xa440
loc_a441:
    mov ax, 0                        ; 0xa441
    db 0xe8, 0xc4, 0x4f ; call 0xf40b
    mov word [data_93d4], 0          ; 0xa447
@..local.l119:
    mov ax, word [data_93d4]         ; 0xa44d
    mov cx, 7                        ; 0xa450
    shl ax, cl                       ; 0xa453
    mov bx, ax                       ; 0xa455
    mov byte [bx - 0x6e34], 0        ; 0xa457
    mov ax, word [data_93d4]         ; 0xa45c
    shl ax, 1                        ; 0xa45f
    mov bx, ax                       ; 0xa461
    mov word [bx - 0x6c34], 0        ; 0xa463
    inc word [data_93d4]             ; 0xa469
    mov ax, word [data_93d4]         ; 0xa46d
    cmp ax, strict word 4            ; 0xa470
    jl short @..local.l119           ; 0xa473
    mov word [data_93d4], 0          ; 0xa475
    mov word [data_b052], 0x1f40     ; 0xa47b
    mov ax, word [data_91a0]         ; 0xa481
    mov word [data_b050], ax         ; 0xa484
    mov ax, word [data_91a4]         ; 0xa487
    mov word [data_b04a], ax         ; 0xa48a
    mov ax, word [data_91a6]         ; 0xa48d
    mov word [data_b04c], ax         ; 0xa490
    push word [data_b052]            ; 0xa493
    push word [data_b050]            ; 0xa497
    call api_idx_0002_14             ; 0xa49b
    add sp, byte 4                   ; 0xa49e
    mov ax, 0xa658                   ; 0xa4a1
    push ax                          ; 0xa4a4
    mov ax, 0xa                      ; 0xa4a5
    push ax                          ; 0xa4a8
    mov ax, 0x1b58                   ; 0xa4a9
    push ax                          ; 0xa4ac
    call api_idx_0002_16             ; 0xa4ad
    add sp, byte 6                   ; 0xa4b0
    mov ax, 0xa810                   ; 0xa4b3
    push ax                          ; 0xa4b6
    mov ax, 7                        ; 0xa4b7
    push ax                          ; 0xa4ba
    mov ax, 0x1b76                   ; 0xa4bb
    push ax                          ; 0xa4be
    call api_idx_0002_16             ; 0xa4bf
    add sp, byte 6                   ; 0xa4c2
    mov ax, 0xb032                   ; 0xa4c5
    push ax                          ; 0xa4c8
    mov ax, 0x1b80                   ; 0xa4c9
    push ax                          ; 0xa4cc
    db 0xe8, 0x6b, 0x10 ; call 0xb53b
    add sp, byte 4                   ; 0xa4d0
    mov ax, 0xb03c                   ; 0xa4d3
    push ax                          ; 0xa4d6
    mov ax, 0x1b81                   ; 0xa4d7
    push ax                          ; 0xa4da
    db 0xe8, 0x5d, 0x10 ; call 0xb53b
    add sp, byte 4                   ; 0xa4de
    mov ax, 0xa766                   ; 0xa4e1
    push ax                          ; 0xa4e4
    mov ax, 7                        ; 0xa4e5
    push ax                          ; 0xa4e8
    mov ax, 0x1b8a                   ; 0xa4e9
    push ax                          ; 0xa4ec
    call api_idx_0002_16             ; 0xa4ed
    add sp, byte 6                   ; 0xa4f0
    mov ax, 5                        ; 0xa4f3
    push ax                          ; 0xa4f6
    mov ax, 0x1b9e                   ; 0xa4f7
    push ax                          ; 0xa4fa
    call api_idx_0002_15             ; 0xa4fb
    add sp, byte 4                   ; 0xa4fe
    mov ax, 0xa856                   ; 0xa501
    push ax                          ; 0xa504
    mov ax, 0xb                      ; 0xa505
    push ax                          ; 0xa508
    mov ax, 0x1bb2                   ; 0xa509
    push ax                          ; 0xa50c
    call api_idx_0002_16             ; 0xa50d
    add sp, byte 6                   ; 0xa510
    mov ax, 0xa702                   ; 0xa513
    push ax                          ; 0xa516
    mov ax, 0xa                      ; 0xa517
    push ax                          ; 0xa51a
    mov ax, 0x1bd0                   ; 0xa51b
    push ax                          ; 0xa51e
    call api_idx_0002_16             ; 0xa51f
    add sp, byte 6                   ; 0xa522
    mov ax, 0xa6bc                   ; 0xa525
    push ax                          ; 0xa528
    mov ax, 7                        ; 0xa529
    push ax                          ; 0xa52c
    mov ax, 0x1be4                   ; 0xa52d
    push ax                          ; 0xa530
    call api_idx_0002_16             ; 0xa531
    add sp, byte 6                   ; 0xa534
    mov ax, 0x26                     ; 0xa537
    push ax                          ; 0xa53a
    mov ax, 0x1bf8                   ; 0xa53b
    push ax                          ; 0xa53e
    call api_idx_0002_17             ; 0xa53f
    add sp, byte 4                   ; 0xa542
    ret                              ; 0xa545
