api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x2372
    db 0xe8, 0x93, 0xd0 ; call 0xf40b
    mov word [bp - 0x0004], 0        ; 0x2378
@..api_idx_0004_8.l1:
    mov word [bp - 0x0002], 0        ; 0x237d
@..api_idx_0004_8.l2:
    mov ax, 0x248                    ; 0x2382
    imul word [bp + 0x4]             ; 0x2385
    push ax                          ; 0x2388
    mov ax, 0x78                     ; 0x2389
    imul word [bp - 0x0004]          ; 0x238c
    mov cx, ax                       ; 0x238f
    pop ax                           ; 0x2391
    add ax, cx                       ; 0x2392
    push ax                          ; 0x2394
    mov ax, 0xc                      ; 0x2395
    imul word [bp - 0x0002]          ; 0x2398
    mov cx, ax                       ; 0x239b
    pop ax                           ; 0x239d
    add ax, cx                       ; 0x239e
    mov bx, ax                       ; 0x23a0
    mov ax, word [bx + 0x5c34]       ; 0x23a2
    cmp ax, word [bp + 0x6]          ; 0x23a6
    jne short @..api_idx_0004_8.l3   ; 0x23a9
    mov ax, word [bp - 0x0004]       ; 0x23ab
    xchg al, ah                      ; 0x23ae
    sub al, al                       ; 0x23b0
    add ax, word [bp - 0x0002]       ; 0x23b2
    ret                              ; 0x23b5
@..api_idx_0004_8.l3:
    inc word [bp - 0x0002]           ; 0x23b6
    mov ax, word [bp - 0x0002]       ; 0x23b9
    cmp ax, strict word 0xa          ; 0x23bc
    jl short @..api_idx_0004_8.l2    ; 0x23bf
    inc word [bp - 0x0004]           ; 0x23c1
    mov ax, word [bp - 0x0004]       ; 0x23c4
    cmp ax, strict word 2            ; 0x23c7
    jl short @..api_idx_0004_8.l1    ; 0x23ca
    mov ax, 0xffff                   ; 0x23cc
    ret                              ; 0x23cf
