api_idx_0004:
    mov ax, 0xfffc                   ; 0x1769
    call ds_dispatch_f40b            ; 0x176c
    mov ax, 0                        ; 0x176f
    push ax                          ; 0x1772
    push ax                          ; 0x1773
    push word [dseg_953a]            ; 0x1774
    push word [dseg_9538]            ; 0x1778
    call ds_dispatch_e942            ; 0x177c
    add sp, byte 8                   ; 0x177f
    mov word [bp - 0x0002], 0        ; 0x1782
@..api_idx_0004.l1:
    mov word [bp - 0x0004], 0        ; 0x1787
@..api_idx_0004.l2:
    mov ax, 0                        ; 0x178c
    push ax                          ; 0x178f
    mov ax, word [bp - 0x0002]       ; 0x1790
    shl ax, 1                        ; 0x1793
    shl ax, 1                        ; 0x1795
    mov cx, word [bp - 0x0004]       ; 0x1797
    shl cx, 1                        ; 0x179a
    add ax, cx                       ; 0x179c
    mov bx, ax                       ; 0x179e
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x17a4
    add sp, byte 4                   ; 0x17a7
    mov ax, word [bp - 0x0002]       ; 0x17aa
    shl ax, 1                        ; 0x17ad
    shl ax, 1                        ; 0x17af
    shl ax, 1                        ; 0x17b1
    mov cx, word [bp - 0x0004]       ; 0x17b3
    shl cx, 1                        ; 0x17b6
    shl cx, 1                        ; 0x17b8
    add ax, cx                       ; 0x17ba
    mov bx, ax                       ; 0x17bc
    push word [bx + 0x15e]           ; 0x17be
    push word [bx + 0x15c]           ; 0x17c2
    call ds_dispatch_e809            ; 0x17c6
    add sp, byte 4                   ; 0x17c9
    mov ax, 3                        ; 0x17cc
    push ax                          ; 0x17cf
    push ax                          ; 0x17d0
    mov ax, 0x248                    ; 0x17d1
    imul word [bp + 0x4]             ; 0x17d4
    mov cx, word [bp - 0x0002]       ; 0x17d7
    shl cx, 1                        ; 0x17da
    shl cx, 1                        ; 0x17dc
    add ax, cx                       ; 0x17de
    mov cx, word [bp - 0x0004]       ; 0x17e0
    shl cx, 1                        ; 0x17e3
    add ax, cx                       ; 0x17e5
    mov bx, ax                       ; 0x17e7
    push word [bx + 0x5c1c]          ; 0x17e9
    call ds_dispatch_b2e7            ; 0x17ed
    add sp, byte 6                   ; 0x17f0
    inc word [bp - 0x0004]           ; 0x17f3
    mov ax, word [bp - 0x0004]       ; 0x17f6
    cmp ax, strict word 2            ; 0x17f9
    jl short @..api_idx_0004.l2      ; 0x17fc
    inc word [bp - 0x0002]           ; 0x17fe
    mov ax, word [bp - 0x0002]       ; 0x1801
    cmp ax, strict word 6            ; 0x1804
    jge short @..api_idx_0004.l3     ; 0x1807
    jmp near @..api_idx_0004.l1      ; 0x1809
@..api_idx_0004.l3:
    mov ax, 0                        ; 0x180c
    push ax                          ; 0x180f
    push ax                          ; 0x1810
    push ax                          ; 0x1811
    call api_idx_000c                ; 0x1812
    add sp, byte 6                   ; 0x1815
    ret                              ; 0x1818
