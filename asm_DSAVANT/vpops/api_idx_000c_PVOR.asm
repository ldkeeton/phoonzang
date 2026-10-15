; auto-generated
api_idx_000c_PVOR:
    mov ax, 0xfff4                   ; 0x1b78
    call aztec_csav                  ; 0x1b7b
    mov word [bp - 0x0002], 0        ; 0x1b7e
@..api_idx_000c_PVOR.l1:
    lea ax, word [bp - 0x000c]       ; 0x1b83
    push ax                          ; 0x1b86
    mov ax, 0x248                    ; 0x1b87
    imul word [bp + 0x4]             ; 0x1b8a
    mov cx, word [bp - 0x0002]       ; 0x1b8d
    shl cx, 1                        ; 0x1b90
    shl cx, 1                        ; 0x1b92
    add ax, cx                       ; 0x1b94
    mov bx, ax                       ; 0x1b96
    push word [bx + 0x5c1c]          ; 0x1b98
    call ds_app_OPJO                 ; 0x1b9c
    add sp, byte 4                   ; 0x1b9f
    mov ax, 0                        ; 0x1ba2
    push ax                          ; 0x1ba5
    mov ax, word [bp - 0x0002]       ; 0x1ba6
    shl ax, 1                        ; 0x1ba9
    shl ax, 1                        ; 0x1bab
    mov bx, ax                       ; 0x1bad
    push word [word bx + 0x6]        ; 0x1baf
    call thunk_3                     ; 0x1bb3
    add sp, byte 4                   ; 0x1bb6
    mov ax, word [bp - 0x0002]       ; 0x1bb9
    shl ax, 1                        ; 0x1bbc
    shl ax, 1                        ; 0x1bbe
    mov bx, ax                       ; 0x1bc0
    push word [bx + 0x18e]           ; 0x1bc2
    lea ax, word [bp - 0x000c]       ; 0x1bc6
    push ax                          ; 0x1bc9
    call aztec_strlen                ; 0x1bca
    pop cx                           ; 0x1bcd
    mov cx, 6                        ; 0x1bce
    imul cx                          ; 0x1bd1
    mov cx, 2                        ; 0x1bd3
    cwd                              ; 0x1bd6
    idiv cx                          ; 0x1bd7
    mov cx, ax                       ; 0x1bd9
    mov ax, word [bp - 0x0002]       ; 0x1bdb
    shl ax, 1                        ; 0x1bde
    shl ax, 1                        ; 0x1be0
    mov bx, ax                       ; 0x1be2
    mov ax, word [bx + 0x18c]        ; 0x1be4
    add ax, strict word 9            ; 0x1be8
    sub ax, cx                       ; 0x1beb
    push ax                          ; 0x1bed
    call thunk                       ; 0x1bee
    add sp, byte 4                   ; 0x1bf1
    mov ax, 0                        ; 0x1bf4
    push ax                          ; 0x1bf7
    lea ax, word [bp - 0x000c]       ; 0x1bf8
    push ax                          ; 0x1bfb
    call ds_string_loc_PTIK          ; 0x1bfc
    add sp, byte 4                   ; 0x1bff
    inc word [bp - 0x0002]           ; 0x1c02
    mov ax, word [bp - 0x0002]       ; 0x1c05
    cmp ax, strict word 6            ; 0x1c08
    jge short @..api_idx_000c_PVOR.l2 ; 0x1c0b
    jmp near @..api_idx_000c_PVOR.l1 ; 0x1c0d
@..api_idx_000c_PVOR.l2:
    ret                              ; 0x1c10
