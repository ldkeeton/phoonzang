api_idx_0030:
    mov ax, 0xffd0                   ; 0x53fd
    call ds_dispatch_f40b            ; 0x5400
    mov word [bp - 0x0024], 0        ; 0x5403
    mov word [bp - 0x0022], 4        ; 0x5408
    mov word [bp - 0x0020], 1        ; 0x540d
    mov word [bp - 0x001e], 3        ; 0x5412
    mov word [bp - 0x001c], 2        ; 0x5417
    mov word [data_8f20], 0          ; 0x541c
    mov ax, word [data_8f46]         ; 0x5422
    mov word [bp - 0x000a], ax       ; 0x5425
    mov ax, word [data_8f44]         ; 0x5428
    mov word [bp - 0x000c], ax       ; 0x542b
    mov ax, word [data_8f42]         ; 0x542e
    mov word [bp - 0x000e], ax       ; 0x5431
    mov ax, word [data_8f40]         ; 0x5434
    mov word [bp - 0x0010], ax       ; 0x5437
    mov ax, word [data_8f3e]         ; 0x543a
    mov word [bp - 0x0012], ax       ; 0x543d
    mov word [data_8f48], 0          ; 0x5440
    mov word [data_8456], 0          ; 0x5446
    mov ax, 0                        ; 0x544c
    push ax                          ; 0x544f
    mov ax, 0x8f                     ; 0x5450
    push ax                          ; 0x5453
    mov ax, 0xf7                     ; 0x5454
    push ax                          ; 0x5457
    mov ax, 0x20                     ; 0x5458
    push ax                          ; 0x545b
    mov ax, 0x48                     ; 0x545c
    push ax                          ; 0x545f
    call ds_dispatch_e901            ; 0x5460
    add sp, byte 0x0a                ; 0x5463
    mov ax, word [bp - 0x0012]       ; 0x5466
    mov cx, 6                        ; 0x5469
    shl ax, cl                       ; 0x546c
    mov cx, word [bp - 0x0010]       ; 0x546e
    shl cx, 1                        ; 0x5471
    shl cx, 1                        ; 0x5473
    shl cx, 1                        ; 0x5475
    add ax, cx                       ; 0x5477
    add ax, word [bp - 0x000e]       ; 0x5479
    mov word [bp - 0x0008], ax       ; 0x547c
    cmp word [data_830c], byte 0x0a  ; 0x547f
    je short @..api_idx_0030.l1      ; 0x5484
    cmp word [data_830c], byte 0x19  ; 0x5486
    je short @..api_idx_0030.l1      ; 0x548b
    jmp near @..api_idx_0030.l5      ; 0x548d
@..api_idx_0030.l1:
    push ax                          ; 0x5490
    mov ax, word [data_0e14]         ; 0x5491
    add ax, 0x930                    ; 0x5494
    push ax                          ; 0x5497
    call ds_dispatch_ec74            ; 0x5498
    add sp, byte 4                   ; 0x549b
    test ax, ax                      ; 0x549e
    jne short @..api_idx_0030.l2     ; 0x54a0
    jmp near @..api_idx_0030.l5      ; 0x54a2
@..api_idx_0030.l2:
    mov ax, 0x63                     ; 0x54a5
    push ax                          ; 0x54a8
    mov ax, 0x8e                     ; 0x54a9
    push ax                          ; 0x54ac
    mov ax, 0xf7                     ; 0x54ad
    push ax                          ; 0x54b0
    mov ax, 0x21                     ; 0x54b1
    push ax                          ; 0x54b4
    mov ax, 0x48                     ; 0x54b5
    push ax                          ; 0x54b8
    call ds_dispatch_e901            ; 0x54b9
    add sp, byte 0x0a                ; 0x54bc
    mov ax, word [data_830c]         ; 0x54bf
    cmp ax, word [data_8f28]         ; 0x54c2
    jne short @..api_idx_0030.l4     ; 0x54c6
    mov ax, word [bp - 0x0012]       ; 0x54c8
    cmp ax, word [data_8f2a]         ; 0x54cb
    jne short @..api_idx_0030.l4     ; 0x54cf
    mov ax, word [bp - 0x000e]       ; 0x54d1
    cmp ax, word [data_8f2e]         ; 0x54d4
    jne short @..api_idx_0030.l4     ; 0x54d8
    mov ax, word [bp - 0x0010]       ; 0x54da
    cmp ax, word [data_8f2c]         ; 0x54dd
    jne short @..api_idx_0030.l4     ; 0x54e1
    cmp word [data_8f22], byte 0     ; 0x54e3
    je short @..api_idx_0030.l3      ; 0x54e8
    mov word [data_8f20], 0xffff     ; 0x54ea
@..api_idx_0030.l3:
    mov byte [bp - 0x0030], 2        ; 0x54f0
    mov byte [bp - 0x002f], 0        ; 0x54f4
    mov ax, 0                        ; 0x54f8
    push ax                          ; 0x54fb
    push ax                          ; 0x54fc
    lea ax, word [bp - 0x0030]       ; 0x54fd
    push ax                          ; 0x5500
    mov ax, 0                        ; 0x5501
    push ax                          ; 0x5504
    mov ax, 0x90                     ; 0x5505
    push ax                          ; 0x5508
    mov ax, 0x20                     ; 0x5509
    push ax                          ; 0x550c
    mov ax, 0xf8                     ; 0x550d
    push ax                          ; 0x5510
    mov ax, 0x48                     ; 0x5511
    push ax                          ; 0x5514
    mov al, byte [data_7b05]         ; 0x5515
    sub ah, ah                       ; 0x5518
    inc ax                           ; 0x551a
    push ax                          ; 0x551b
    mov al, byte [api_idx_0002_14]   ; 0x551c
    sub ah, ah                       ; 0x551f
    inc ax                           ; 0x5521
    push ax                          ; 0x5522
    mov ax, 0xc                      ; 0x5523
    push ax                          ; 0x5526
    call ds_dispatch_efd1            ; 0x5527
    add sp, byte 0x16                ; 0x552a
@..api_idx_0030.l4:
    call ds_dispatch_da22            ; 0x552d
    ret                              ; 0x5530
