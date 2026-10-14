; auto-generated
api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x7452
    call aztec_csav                  ; 0x7455
    mov word [bp - 0x0002], 0        ; 0x7458
@..api_idx_000c_3.l1:
    mov ax, 0x14                     ; 0x745d
    imul word [bp - 0x0002]          ; 0x7460
    mov cx, word [bp - 0x0002]       ; 0x7463
    shl cx, 1                        ; 0x7466
    mov bx, cx                       ; 0x7468
    mov cx, word [bx - 0x7cf2]       ; 0x746a
    shl cx, 1                        ; 0x746e
    add ax, cx                       ; 0x7470
    mov bx, ax                       ; 0x7472
    mov al, byte [bx + 0x1d4]        ; 0x7474
    mov byte [bp - 0x000c], al       ; 0x7478
    mov byte [bp - 0x000b], 0        ; 0x747b
    mov ax, 0                        ; 0x747f
    push ax                          ; 0x7482
    push ax                          ; 0x7483
    lea ax, word [bp - 0x000c]       ; 0x7484
    push ax                          ; 0x7487
    mov ax, 0                        ; 0x7488
    push ax                          ; 0x748b
    mov ax, 0xc7                     ; 0x748c
    push ax                          ; 0x748f
    mov ax, 0                        ; 0x7490
    push ax                          ; 0x7493
    mov ax, 0x13f                    ; 0x7494
    push ax                          ; 0x7497
    mov ax, 0                        ; 0x7498
    push ax                          ; 0x749b
    mov ax, 0xc                      ; 0x749c
    imul word [bp + 0x8]             ; 0x749f
    mov cx, word [bp - 0x0002]       ; 0x74a2
    shl cx, 1                        ; 0x74a5
    add ax, cx                       ; 0x74a7
    mov bx, ax                       ; 0x74a9
    mov ax, word [bx + 0x1bc]        ; 0x74ab
    add ax, word [bp + 0x6]          ; 0x74af
    push ax                          ; 0x74b2
    mov ax, word [bx + 0x1a4]        ; 0x74b3
    add ax, word [bp + 0x4]          ; 0x74b7
    push ax                          ; 0x74ba
    mov ax, 2                        ; 0x74bb
    push ax                          ; 0x74be
    call thunk_28                    ; 0x74bf
    add sp, byte 0x16                ; 0x74c2
    inc word [bp - 0x0002]           ; 0x74c5
    mov ax, word [bp - 0x0002]       ; 0x74c8
    cmp ax, strict word 6            ; 0x74cb
    jl short @..api_idx_000c_3.l1    ; 0x74ce
    ret                              ; 0x74d0
