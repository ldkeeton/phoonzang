api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x1874
    call aztec_csav                  ; 0x1877
    mov word [bp - 0x0002], 0        ; 0x187a
@..api_idx_0002_4.l1:
    mov ax, word [bp - 0x0002]       ; 0x187f
    shl ax, 1                        ; 0x1882
    shl ax, 1                        ; 0x1884
    mov bx, ax                       ; 0x1886
    mov ax, word [word bx + 0x4a]    ; 0x1888
    cmp ax, word [bp + 0x4]          ; 0x188c
    jge short @..api_idx_0002_4.l2   ; 0x188f
    inc word [bp - 0x0002]           ; 0x1891
    jmp short @..api_idx_0002_4.l1   ; 0x1894
@..api_idx_0002_4.l2:
    mov ax, word [bp - 0x0002]       ; 0x1896
    shl ax, 1                        ; 0x1899
    shl ax, 1                        ; 0x189b
    mov bx, ax                       ; 0x189d
    push word [word bx + 0x4a]       ; 0x189f
    push word [word bx + 0x48]       ; 0x18a3
    mov ax, word [bp + 0x4]          ; 0x18a7
    add ax, word [bp + 0x6]          ; 0x18aa
    push ax                          ; 0x18ad
    call ds_app_0a09                 ; 0x18ae
    add sp, byte 6                   ; 0x18b1
    ret                              ; 0x18b4
