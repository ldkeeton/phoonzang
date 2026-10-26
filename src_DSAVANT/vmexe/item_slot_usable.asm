; auto-generated
item_slot_usable:
    mov ax, 0                        ; 0x1f5d
    call aztec_csav                  ; 0x1f60
    mov ax, 0x2c                     ; 0x1f63
    imul word [bp + 6]               ; 0x1f66
    mov si, ax                       ; 0x1f69
    mov ax, word [bp + 4]            ; 0x1f6b
    shl ax, 1                        ; 0x1f6e
    mov bx, ax                       ; 0x1f70
    mov bx, word [bx + party_char]   ; 0x1f72
    cmp byte [bx + si + member_rec.item_phase], 0 ; 0x1f76
    je short .forward1               ; 0x1f7a
    mov al, byte [bx + si + 0x2b]    ; 0x1f7c
    cmp al, 1                        ; 0x1f7f
    jne short .forward2              ; 0x1f81
    mov ax, 3                        ; 0x1f83
    push ax                          ; 0x1f86
    call random_below                ; 0x1f87
    pop cx                           ; 0x1f8a
    test ax, ax                      ; 0x1f8b
    jne short .forward2              ; 0x1f8d
.forward1:
    mov ax, 0                        ; 0x1f8f
    jmp short .return1               ; 0x1f92
.forward2:
    mov ax, 1                        ; 0x1f94
.return1:
    ret                              ; 0x1f97
