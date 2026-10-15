; auto-generated
loc_LGMN:
    mov ax, 0                        ; 0xa441
    call aztec_csav                  ; 0xa444
    mov word [bss_93d4], 0           ; 0xa447
@..loc_LGMN.l1:
    mov ax, word [bss_93d4]          ; 0xa44d
    mov cx, 7                        ; 0xa450
    shl ax, cl                       ; 0xa453
    mov bx, ax                       ; 0xa455
    mov byte [bx - 0x6e34], 0        ; 0xa457
    mov ax, word [bss_93d4]          ; 0xa45c
    shl ax, 1                        ; 0xa45f
    mov bx, ax                       ; 0xa461
    mov word [bx - 0x6c34], 0        ; 0xa463
    inc word [bss_93d4]              ; 0xa469
    mov ax, word [bss_93d4]          ; 0xa46d
    cmp ax, strict word 4            ; 0xa470
    jl short @..loc_LGMN.l1          ; 0xa473
    mov word [bss_93d4], 0           ; 0xa475
    mov word [bss_b052], 0x1f40      ; 0xa47b
    mov ax, word [bss_91a0]          ; 0xa481
    mov word [bss_b050], ax          ; 0xa484
    mov ax, word [bss_91a4]          ; 0xa487
    mov word [bss_b04a], ax          ; 0xa48a
    mov ax, word [bss_91a6]          ; 0xa48d
    mov word [bss_b04c], ax          ; 0xa490
    push word [bss_b052]             ; 0xa493
    push word [bss_b050]             ; 0xa497
    call api_idx_0002_UISN           ; 0xa49b
    add sp, byte 4                   ; 0xa49e
    mov ax, 0xa658                   ; 0xa4a1
    push ax                          ; 0xa4a4
    mov ax, 0xa                      ; 0xa4a5
    push ax                          ; 0xa4a8
    mov ax, 0x1b58                   ; 0xa4a9
    push ax                          ; 0xa4ac
    call api_idx_0002_LKTR           ; 0xa4ad
    add sp, byte 6                   ; 0xa4b0
    mov ax, 0xa810                   ; 0xa4b3
    push ax                          ; 0xa4b6
    mov ax, 7                        ; 0xa4b7
    push ax                          ; 0xa4ba
    mov ax, 0x1b76                   ; 0xa4bb
    push ax                          ; 0xa4be
    call api_idx_0002_LKTR           ; 0xa4bf
    add sp, byte 6                   ; 0xa4c2
    mov ax, 0xb032                   ; 0xa4c5
    push ax                          ; 0xa4c8
    mov ax, 0x1b80                   ; 0xa4c9
    push ax                          ; 0xa4cc
    call ds_app_mem_VKHV             ; 0xa4cd
    add sp, byte 4                   ; 0xa4d0
    mov ax, 0xb03c                   ; 0xa4d3
    push ax                          ; 0xa4d6
    mov ax, 0x1b81                   ; 0xa4d7
    push ax                          ; 0xa4da
    call ds_app_mem_VKHV             ; 0xa4db
    add sp, byte 4                   ; 0xa4de
    mov ax, 0xa766                   ; 0xa4e1
    push ax                          ; 0xa4e4
    mov ax, 7                        ; 0xa4e5
    push ax                          ; 0xa4e8
    mov ax, 0x1b8a                   ; 0xa4e9
    push ax                          ; 0xa4ec
    call api_idx_0002_LKTR           ; 0xa4ed
    add sp, byte 6                   ; 0xa4f0
    mov ax, 5                        ; 0xa4f3
    push ax                          ; 0xa4f6
    mov ax, 0x1b9e                   ; 0xa4f7
    push ax                          ; 0xa4fa
    call api_idx_0002_VVJO           ; 0xa4fb
    add sp, byte 4                   ; 0xa4fe
    mov ax, 0xa856                   ; 0xa501
    push ax                          ; 0xa504
    mov ax, 0xb                      ; 0xa505
    push ax                          ; 0xa508
    mov ax, 0x1bb2                   ; 0xa509
    push ax                          ; 0xa50c
    call api_idx_0002_LKTR           ; 0xa50d
    add sp, byte 6                   ; 0xa510
    mov ax, 0xa702                   ; 0xa513
    push ax                          ; 0xa516
    mov ax, 0xa                      ; 0xa517
    push ax                          ; 0xa51a
    mov ax, 0x1bd0                   ; 0xa51b
    push ax                          ; 0xa51e
    call api_idx_0002_LKTR           ; 0xa51f
    add sp, byte 6                   ; 0xa522
    mov ax, 0xa6bc                   ; 0xa525
    push ax                          ; 0xa528
    mov ax, 7                        ; 0xa529
    push ax                          ; 0xa52c
    mov ax, 0x1be4                   ; 0xa52d
    push ax                          ; 0xa530
    call api_idx_0002_LKTR           ; 0xa531
    add sp, byte 6                   ; 0xa534
    mov ax, 0x26                     ; 0xa537
    push ax                          ; 0xa53a
    mov ax, 0x1bf8                   ; 0xa53b
    push ax                          ; 0xa53e
    call api_idx_0002_LIUN           ; 0xa53f
    add sp, byte 4                   ; 0xa542
    ret                              ; 0xa545
