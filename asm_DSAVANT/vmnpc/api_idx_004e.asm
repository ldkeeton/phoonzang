api_idx_004e:
    mov ax, 0xffb2                   ; 0x5b74
    db 0xe8, 0x91, 0x98 ; call 0xf40b
    mov ax, word [bp + 0x6]          ; 0x5b7a
    shl ax, 1                        ; 0x5b7d
    mov bx, ax                       ; 0x5b7f
    mov ax, word [bx - 0x6356]       ; 0x5b81
    mov cx, 0x100                    ; 0x5b85
    cwd                              ; 0x5b88
    idiv cx                          ; 0x5b89
    mov word [bp - 0x0004], ax       ; 0x5b8b
    mov word [bp - 0x0006], dx       ; 0x5b8e
    mov ax, 0x248                    ; 0x5b91
    imul word [bp + 0x4]             ; 0x5b94
    push ax                          ; 0x5b97
    mov ax, 0x78                     ; 0x5b98
    imul word [bp - 0x0004]          ; 0x5b9b
    mov cx, ax                       ; 0x5b9e
    pop ax                           ; 0x5ba0
    add ax, cx                       ; 0x5ba1
    push ax                          ; 0x5ba3
    mov ax, 0xc                      ; 0x5ba4
    imul word [bp - 0x0006]          ; 0x5ba7
    mov cx, ax                       ; 0x5baa
    pop ax                           ; 0x5bac
    add ax, cx                       ; 0x5bad
    mov bx, ax                       ; 0x5baf
    mov ax, word [bx + 0x5c34]       ; 0x5bb1
    mov word [bp - 0x0002], ax       ; 0x5bb5
    mov ax, 0                        ; 0x5bb8
    push ax                          ; 0x5bbb
    push word [bp - 0x0002]          ; 0x5bbc
    lea ax, word [bp - 0x004e]       ; 0x5bbf
    push ax                          ; 0x5bc2
    mov ax, 1                        ; 0x5bc3
    push ax                          ; 0x5bc6
    db 0xe8, 0x72, 0x5a ; call 0xb63c
    add sp, byte 8                   ; 0x5bca
    push word [bp - 0x0002]          ; 0x5bcd
    call math_loc_5497               ; 0x5bd0
    pop cx                           ; 0x5bd3
    test ax, ax                      ; 0x5bd4
    je short @..api_idx_004e.l1      ; 0x5bd6
    cmp byte [data_91c6], 0xff       ; 0x5bd8
    je short @..api_idx_004e.l2      ; 0x5bdd
@..api_idx_004e.l1:
    push word [bp - 0x0002]          ; 0x5bdf
    call math_loc_5497               ; 0x5be2
    pop cx                           ; 0x5be5
    test ax, ax                      ; 0x5be6
    jne short @..api_idx_004e.l3     ; 0x5be8
    mov al, byte [bp - 0x0017]       ; 0x5bea
    sub ah, ah                       ; 0x5bed
    test ax, data_0002               ; 0x5bef
    je short @..api_idx_004e.l3      ; 0x5bf2
    mov ax, word [bp - 0x0002]       ; 0x5bf4
    cmp ax, word [data_91ae]         ; 0x5bf7
    je short @..api_idx_004e.l3      ; 0x5bfb
@..api_idx_004e.l2:
    mov ax, 0x98                     ; 0x5bfd
    push ax                          ; 0x5c00
    mov ax, 0x65                     ; 0x5c01
    push ax                          ; 0x5c04
    mov ax, 0x5dd                    ; 0x5c05
    push ax                          ; 0x5c08
    call api_idx_0054_2              ; 0x5c09
    add sp, byte 6                   ; 0x5c0c
    mov ax, 0                        ; 0x5c0f
    ret                              ; 0x5c12
