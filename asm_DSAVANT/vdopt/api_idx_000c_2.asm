api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x25a8
    call ds_dispatch_f40b            ; 0x25ab
    mov word [bp - 0x0002], 0        ; 0x25ae
@..api_idx_000c_2.l1:
    mov ax, 0x14                     ; 0x25b3
    imul word [bp - 0x0002]          ; 0x25b6
    mov cx, word [bp - 0x0002]       ; 0x25b9
    shl cx, 1                        ; 0x25bc
    mov bx, cx                       ; 0x25be
    mov cx, word [bx - 0x7cf2]       ; 0x25c0
    shl cx, 1                        ; 0x25c4
    add ax, cx                       ; 0x25c6
    mov bx, ax                       ; 0x25c8
    mov al, byte [bx + 0x1d4]        ; 0x25ca
    mov byte [bp - 0x000c], al       ; 0x25ce
    mov byte [bp - 0x000b], 0        ; 0x25d1
    mov ax, 0                        ; 0x25d5
    push ax                          ; 0x25d8
    push ax                          ; 0x25d9
    lea ax, word [bp - 0x000c]       ; 0x25da
    push ax                          ; 0x25dd
    mov ax, 0                        ; 0x25de
    push ax                          ; 0x25e1
    mov ax, 0xc7                     ; 0x25e2
    push ax                          ; 0x25e5
    mov ax, 0                        ; 0x25e6
    push ax                          ; 0x25e9
    mov ax, 0x13f                    ; 0x25ea
    push ax                          ; 0x25ed
    mov ax, 0                        ; 0x25ee
    push ax                          ; 0x25f1
    mov ax, 0xc                      ; 0x25f2
    imul word [bp + 0x8]             ; 0x25f5
    mov cx, word [bp - 0x0002]       ; 0x25f8
    shl cx, 1                        ; 0x25fb
    add ax, cx                       ; 0x25fd
    mov bx, ax                       ; 0x25ff
    mov ax, word [bx + 0x1bc]        ; 0x2601
    add ax, word [bp + 0x6]          ; 0x2605
    push ax                          ; 0x2608
    mov ax, word [bx + 0x1a4]        ; 0x2609
    add ax, word [bp + 0x4]          ; 0x260d
    push ax                          ; 0x2610
    mov ax, 2                        ; 0x2611
    push ax                          ; 0x2614
    call ds_dispatch_efd1            ; 0x2615
    add sp, byte 0x16                ; 0x2618
    inc word [bp - 0x0002]           ; 0x261b
    mov ax, word [bp - 0x0002]       ; 0x261e
    cmp ax, strict word 6            ; 0x2621
    jl short @..api_idx_000c_2.l1    ; 0x2624
    ret                              ; 0x2626
