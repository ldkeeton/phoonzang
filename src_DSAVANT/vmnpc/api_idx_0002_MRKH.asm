; auto-generated
api_idx_0002_MRKH:
    mov ax, 0xfffe                   ; 0x8d86
    call aztec_csav                  ; 0x8d89
    mov word [bp - 2], 0             ; 0x8d8c
.back1:
    mov ax, word [bp - 2]            ; 0x8d91
    add ax, word [bp + 6]            ; 0x8d94
    mov si, ax                       ; 0x8d97
    mov bx, word [bp + 4]            ; 0x8d99
    cmp byte [bx + si], 0            ; 0x8d9c
    je short .forward1               ; 0x8d9f
    mov al, byte [bx + si]           ; 0x8da1
    cmp al, 0x20                     ; 0x8da3
    je short .forward1               ; 0x8da5
    inc word [bp - 2]                ; 0x8da7
    jmp short .back1                 ; 0x8daa
.forward1:
    cmp word [bp - 2], byte 0        ; 0x8dac
    jne short .forward2              ; 0x8db0
    mov ax, 0xffff                   ; 0x8db2
    ret                              ; 0x8db5
.forward2:
    mov ax, word [bp + 6]            ; 0x8db6
    add ax, word [bp - 2]            ; 0x8db9
    ret                              ; 0x8dbc
