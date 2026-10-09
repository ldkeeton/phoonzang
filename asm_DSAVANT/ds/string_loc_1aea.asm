string_loc_1aea:
    mov ax, 0x248                    ; 0x1aea
    imul word [bp + 0x4]             ; 0x1aed
    mov bx, ax                       ; 0x1af0
    mov al, byte [bx + 0x5daa]       ; 0x1af2
    add bx, word [bp - 0x0002]       ; 0x1af6
    mov byte [bx + 0x5daa], al       ; 0x1af9
    jmp short loc_1b1c               ; 0x1afd

    db 0xa7, 0x18, 0xa7, 0x18, 0xdb, 0x18, 0xea, 0x18, 0xea, 0x18, 0xea, 0x18, 0xea, 0x18, 0xea, 0x18

loc_1b0f:
    cmp ax, strict word 8            ; 0x1b0f
    jae short loc_1b1c               ; 0x1b12
    xchg bx, ax                      ; 0x1b14
    shl bx, 1                        ; 0x1b15
    jmp [cs:bx + 0x18ff]             ; 0x1b17
loc_1b1c:
    mov ax, 0x248                    ; 0x1b1c
    imul word [bp + 0x4]             ; 0x1b1f
    add ax, word [bp - 0x0002]       ; 0x1b22
    mov bx, ax                       ; 0x1b25
    mov al, byte [bx + 0x5d48]       ; 0x1b27
    sub ah, ah                       ; 0x1b2b
    cmp ax, 0xff                     ; 0x1b2d
    jne short loc_1b35               ; 0x1b30
    jmp near loc_1c20                ; 0x1b32
loc_1b35:
    mov word [bp - 0x0004], 0        ; 0x1b35
loc_1b3a:
    mov ax, 0x248                    ; 0x1b3a
    imul word [bp + 0x4]             ; 0x1b3d
    push ax                          ; 0x1b40
    add ax, word [bp - 0x0002]       ; 0x1b41
    mov bx, ax                       ; 0x1b44
    mov al, byte [bx + 0x5d48]       ; 0x1b46
    sub ah, ah                       ; 0x1b4a
    mov cx, 0xc                      ; 0x1b4c
    imul cx                          ; 0x1b4f
    mov cx, ax                       ; 0x1b51
    pop ax                           ; 0x1b53
    add ax, cx                       ; 0x1b54
    add ax, word [bp - 0x0004]       ; 0x1b56
    mov bx, ax                       ; 0x1b59
    mov al, byte [bx + 0x5c3c]       ; 0x1b5b
    sub ah, ah                       ; 0x1b5f
    mov cx, 0x10                     ; 0x1b61
    cwd                              ; 0x1b64
    idiv cx                          ; 0x1b65
    mov word [bp - 0x0006], ax       ; 0x1b67
    mov ax, 0xa                      ; 0x1b6a
    imul dx                          ; 0x1b6d
    mov word [bp - 0x0008], ax       ; 0x1b6f
    mov ax, 0x7d                     ; 0x1b72
    push ax                          ; 0x1b75
    mov ax, 0                        ; 0x1b76
    push ax                          ; 0x1b79
    mov ax, 0x248                    ; 0x1b7a
    imul word [bp + 0x4]             ; 0x1b7d
    add ax, word [bp - 0x0006]       ; 0x1b80
    mov bx, ax                       ; 0x1b83
    mov al, byte [bx + 0x5d9c]       ; 0x1b85
    sub ah, ah                       ; 0x1b89
    add ax, word [bp - 0x0008]       ; 0x1b8b
    push ax                          ; 0x1b8e
    call app_0a09                    ; 0x1b8f
    add sp, byte 6                   ; 0x1b92
    push ax                          ; 0x1b95
    mov ax, 0x248                    ; 0x1b96
    imul word [bp + 0x4]             ; 0x1b99
    mov cx, ax                       ; 0x1b9c
    add ax, word [bp - 0x0006]       ; 0x1b9e
    mov bx, ax                       ; 0x1ba1
    pop ax                           ; 0x1ba3
    mov byte [bx + 0x5d9c], al       ; 0x1ba4
    inc word [bp - 0x0004]           ; 0x1ba8
    mov ax, word [bp - 0x0004]       ; 0x1bab
    cmp ax, strict word 2            ; 0x1bae
    jl short loc_1b3a                ; 0x1bb1
    mov ax, 0x248                    ; 0x1bb3
    imul word [bp + 0x4]             ; 0x1bb6
    push ax                          ; 0x1bb9
    add ax, word [bp - 0x0002]       ; 0x1bba
    mov bx, ax                       ; 0x1bbd
    mov al, byte [bx + 0x5d48]       ; 0x1bbf
    sub ah, ah                       ; 0x1bc3
    mov cx, 0xc                      ; 0x1bc5
    imul cx                          ; 0x1bc8
    mov cx, ax                       ; 0x1bca
    pop ax                           ; 0x1bcc
    add ax, cx                       ; 0x1bcd
    mov bx, ax                       ; 0x1bcf
    mov al, byte [bx + 0x5c3e]       ; 0x1bd1
    sub ah, ah                       ; 0x1bd5
    mov cx, 0x10                     ; 0x1bd7
    cwd                              ; 0x1bda
    idiv cx                          ; 0x1bdb
    mov word [bp - 0x0006], ax       ; 0x1bdd
    mov word [bp - 0x0008], dx       ; 0x1be0
    mov ax, 0x248                    ; 0x1be3
    imul word [bp + 0x4]             ; 0x1be6
    mov bx, ax                       ; 0x1be9
    mov al, byte [bx + 0x5e30]       ; 0x1beb
    sub ah, ah                       ; 0x1bef
    mov dx, word [bp - 0x0008]       ; 0x1bf1
    cmp ax, dx                       ; 0x1bf4
    jge short loc_1bfc               ; 0x1bf6
    mov ax, dx                       ; 0x1bf8
    jmp short loc_1c02               ; 0x1bfa
loc_1bfc:
    mov al, byte [bx + 0x5e30]       ; 0x1bfc
    sub ah, ah                       ; 0x1c00
loc_1c02:
    mov byte [bx + 0x5e30], al       ; 0x1c02
    mov al, byte [bx + 0x5e31]       ; 0x1c06
    sub ah, ah                       ; 0x1c0a
    cmp ax, word [bp - 0x0006]       ; 0x1c0c
    jge short loc_1c16               ; 0x1c0f
    mov ax, word [bp - 0x0006]       ; 0x1c11
    jmp short loc_1c1c               ; 0x1c14
loc_1c16:
    mov al, byte [bx + 0x5e31]       ; 0x1c16
    sub ah, ah                       ; 0x1c1a
loc_1c1c:
    mov byte [bx + 0x5e31], al       ; 0x1c1c
loc_1c20:
    inc word [bp - 0x0002]           ; 0x1c20
    mov ax, word [bp - 0x0002]       ; 0x1c23
    cmp ax, strict word 8            ; 0x1c26
    jge short loc_1c2e               ; 0x1c29
    jmp near loc_1a84                ; 0x1c2b
loc_1c2e:
    ret                              ; 0x1c2e
