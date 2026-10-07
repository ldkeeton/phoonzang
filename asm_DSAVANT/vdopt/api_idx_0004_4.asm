api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x2682
    call ds_dispatch_f40b            ; 0x2685
    mov word [bp - 0x0004], 0        ; 0x2688
    mov word [bp - 0x0002], 0        ; 0x268d
@..api_idx_0004_4.l1:
    mov ax, 6                        ; 0x2692
    imul word [bp - 0x0002]          ; 0x2695
    mov bx, ax                       ; 0x2698
    mov al, byte [bx + 0x620]        ; 0x269a
    sub ah, ah                       ; 0x269e
    cmp ax, word [bp + 0x6]          ; 0x26a0
    jne short @..api_idx_0004_4.l2   ; 0x26a3
    push word [bp - 0x0002]          ; 0x26a5
    mov ax, 0x248                    ; 0x26a8
    imul word [bp + 0x4]             ; 0x26ab
    add ax, 0x5e12                   ; 0x26ae
    push ax                          ; 0x26b1
    call ds_dispatch_ec74            ; 0x26b2
    add sp, byte 4                   ; 0x26b5
    test ax, ax                      ; 0x26b8
    je short @..api_idx_0004_4.l2    ; 0x26ba
    mov ax, 0x14                     ; 0x26bc
    imul word [bp - 0x0004]          ; 0x26bf
    add ax, 0xe38                    ; 0x26c2
    push ax                          ; 0x26c5
    mov ax, word [bp - 0x0002]       ; 0x26c6
    add ax, 0xfa0                    ; 0x26c9
    push ax                          ; 0x26cc
    call ds_dispatch_b53b            ; 0x26cd
    add sp, byte 4                   ; 0x26d0
    mov ax, word [bp - 0x0002]       ; 0x26d3
    mov cx, word [bp - 0x0004]       ; 0x26d6
    shl cx, 1                        ; 0x26d9
    mov bx, cx                       ; 0x26db
    mov word [bx - 0x64f2], ax       ; 0x26dd
    inc word [bp - 0x0004]           ; 0x26e1
@..api_idx_0004_4.l2:
    inc word [bp - 0x0002]           ; 0x26e4
    mov ax, word [bp - 0x0002]       ; 0x26e7
    cmp ax, strict word 0x66         ; 0x26ea
    jl short @..api_idx_0004_4.l1    ; 0x26ed
    mov ax, word [bp - 0x0004]       ; 0x26ef
    ret                              ; 0x26f2
