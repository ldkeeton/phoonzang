api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x297e
    call ds_dispatch_f40b            ; 0x2981
    mov word [bp - 0x0004], 0        ; 0x2984
    mov word [bp - 0x0002], 0        ; 0x2989
loc_298e:
    mov ax, 6                        ; 0x298e
    imul word [bp - 0x0002]          ; 0x2991
    mov bx, ax                       ; 0x2994
    mov al, byte [bx + 0x620]        ; 0x2996
    sub ah, ah                       ; 0x299a
    cmp ax, word [bp + 0x6]          ; 0x299c
    jne short loc_29e0               ; 0x299f
    push word [bp - 0x0002]          ; 0x29a1
    mov ax, 0x248                    ; 0x29a4
    imul word [bp + 0x4]             ; 0x29a7
    add ax, 0x5e12                   ; 0x29aa
    push ax                          ; 0x29ad
    call ds_dispatch_ec74            ; 0x29ae
    db 0x83
@..api_idx_0008_2.l17:
    db 0xc4
@..api_idx_0008_2.l18:
    db 0x04
    test ax, ax                      ; 0x29b4
    je short loc_29e0                ; 0x29b6
    mov ax, 0x14                     ; 0x29b8
    imul word [bp - 0x0004]          ; 0x29bb
    add ax, 0xe38                    ; 0x29be
    push ax                          ; 0x29c1
    db 0x8b
@..api_idx_0008_2.l19:
    db 0x46, 0xfe
    add ax, 0xfa0                    ; 0x29c5
    push ax                          ; 0x29c8
    call ds_dispatch_b53b            ; 0x29c9
    add sp, byte 4                   ; 0x29cc
    mov ax, word [bp - 0x0002]       ; 0x29cf
    mov cx, word [bp - 0x0004]       ; 0x29d2
    db 0xd1
@..api_idx_0008_2.l20:
    db 0xe1
    mov bx, cx                       ; 0x29d7
    mov word [bx - 0x6aee], ax       ; 0x29d9
    inc word [bp - 0x0004]           ; 0x29dd
loc_29e0:
    inc word [bp - 0x0002]           ; 0x29e0
    db 0x8b
@..api_idx_0008_2.l21:
    db 0x46, 0xfe
    cmp ax, strict word 0x66         ; 0x29e6
    jl short loc_298e                ; 0x29e9
    mov ax, word [bp - 0x0004]       ; 0x29eb
    ret                              ; 0x29ee
