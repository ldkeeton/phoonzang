; auto-generated
loc_QVNQ:
    mov ax, 0                        ; 0x1f5d
    call aztec_csav                  ; 0x1f60
    mov ax, 0x2c                     ; 0x1f63
    imul word [bp + 0x6]             ; 0x1f66
    mov si, ax                       ; 0x1f69
    mov ax, word [bp + 0x4]          ; 0x1f6b
    shl ax, 1                        ; 0x1f6e
    mov bx, ax                       ; 0x1f70
    mov bx, word [bx - 0x7b7e]       ; 0x1f72
    cmp byte [bx + si + 0x2b], 0     ; 0x1f76
    je short @..loc_QVNQ.l1          ; 0x1f7a
    mov al, byte [bx + si + 0x2b]    ; 0x1f7c
    cmp al, 1                        ; 0x1f7f
    jne short @..loc_QVNQ.l2         ; 0x1f81
    mov ax, 3                        ; 0x1f83
    push ax                          ; 0x1f86
    call ds_app_GGUI                 ; 0x1f87
    pop cx                           ; 0x1f8a
    test ax, ax                      ; 0x1f8b
    jne short @..loc_QVNQ.l2         ; 0x1f8d
@..loc_QVNQ.l1:
    mov ax, 0                        ; 0x1f8f
    jmp short @..loc_QVNQ.l3         ; 0x1f92
@..loc_QVNQ.l2:
    mov ax, 1                        ; 0x1f94
@..loc_QVNQ.l3:
    ret                              ; 0x1f97
