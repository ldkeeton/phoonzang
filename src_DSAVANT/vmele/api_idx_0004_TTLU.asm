; auto-generated
api_idx_0004_TTLU:
    mov ax, 0xfffc                   ; 0x17ad
    call aztec_csav                  ; 0x17b0
    mov word [bp - 0x0004], 0xf      ; 0x17b3
@..api_idx_0004_TTLU.l1:
    mov bx, word [bp - 0x0004]       ; 0x17b8
    mov byte [bx + 0x5b5a], 0        ; 0x17bb
    inc word [bp - 0x0004]           ; 0x17c0
    mov ax, word [bp - 0x0004]       ; 0x17c3
    cmp ax, strict word 0x12         ; 0x17c6
    jl short @..api_idx_0004_TTLU.l1 ; 0x17c9
    mov word [bp - 0x0002], 1        ; 0x17cb
    jmp short @..api_idx_0004_TTLU.l3 ; 0x17d0
@..api_idx_0004_TTLU.l2:
    mov ax, word [bp - 0x0002]       ; 0x17d2
    shl ax, 1                        ; 0x17d5
    mov bx, ax                       ; 0x17d7
    mov bx, word [bx + party_char_ext] ; 0x17d9
    mov al, byte [bx + 0xd7]         ; 0x17dd
    sub ah, ah                       ; 0x17e1
    push ax                          ; 0x17e3
    call api_idx_0004_RPUQ           ; 0x17e4
    pop cx                           ; 0x17e7
    mov cx, word [bp - 0x0002]       ; 0x17e8
    shl cx, 1                        ; 0x17eb
    mov bx, cx                       ; 0x17ed
    mov bx, word [bx + party_char]   ; 0x17ef
    mov byte [bx + 0x19f], al        ; 0x17f3
    inc word [bp - 0x0002]           ; 0x17f7
@..api_idx_0004_TTLU.l3:
    mov ax, word [bp - 0x0002]       ; 0x17fa
    cmp ax, word [bss_8466]          ; 0x17fd
    jle short @..api_idx_0004_TTLU.l2 ; 0x1801
    mov word [bp - 0x0004], 0xf      ; 0x1803
@..api_idx_0004_TTLU.l4:
    mov bx, word [bp - 0x0004]       ; 0x1808
    mov al, byte [bx + 0x5b48]       ; 0x180b
    sub ah, ah                       ; 0x180f
    cmp ax, 0xff                     ; 0x1811
    je short @..api_idx_0004_TTLU.l5 ; 0x1814
    cmp byte [bx + 0x5b5a], 0        ; 0x1816
    jne short @..api_idx_0004_TTLU.l5 ; 0x181b
    push bx                          ; 0x181d
    call free_picture_slot           ; 0x181e
    pop cx                           ; 0x1821
@..api_idx_0004_TTLU.l5:
    inc word [bp - 0x0004]           ; 0x1822
    mov ax, word [bp - 0x0004]       ; 0x1825
    cmp ax, strict word 0x12         ; 0x1828
    jl short @..api_idx_0004_TTLU.l4 ; 0x182b
    mov bx, word [bss_8492]          ; 0x182d
    cmp byte [bx + 0xd8], 0          ; 0x1831
    jbe short @..api_idx_0004_TTLU.l6 ; 0x1836
    mov al, byte [bx + 0xd8]         ; 0x1838
    sub ah, ah                       ; 0x183c
    push ax                          ; 0x183e
    call ds_app_QTIV                 ; 0x183f
    pop cx                           ; 0x1842
@..api_idx_0004_TTLU.l6:
    ret                              ; 0x1843
