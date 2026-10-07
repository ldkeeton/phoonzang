api_idx_001c:
    mov ax, 0xffe4                   ; 0x2565
    call ds_dispatch_f40b            ; 0x2568
    mov byte [bp - 0x001c], 0        ; 0x256b
    mov ax, 6                        ; 0x256f
    imul word [bp + 0x4]             ; 0x2572
    mov cx, word [bp + 0x6]          ; 0x2575
    shl cx, 1                        ; 0x2578
    add ax, cx                       ; 0x257a
    mov bx, ax                       ; 0x257c
    mov ax, word [bx - 0x7bc6]       ; 0x257e
    mov cx, 0xa                      ; 0x2582
    cwd                              ; 0x2585
    idiv cx                          ; 0x2586
    mov word [bp - 0x0002], ax       ; 0x2588
    mov word [bp - 0x0004], dx       ; 0x258b
    cmp ax, strict word 1            ; 0x258e
    jl short @..api_idx_001c.l1      ; 0x2591
    cmp ax, strict word 3            ; 0x2593
    jg short @..api_idx_001c.l1      ; 0x2596
    mov ax, word [bp + 0x4]          ; 0x2598
    cmp ax, word [data_8454]         ; 0x259b
    jle short @..api_idx_001c.l2     ; 0x259f
@..api_idx_001c.l1:
    ret                              ; 0x25a1
