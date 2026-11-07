; auto-generated
process_scene_message_words:
    mov ax, 0xfffc                   ; 0x3c18
    call $csav                  ; 0x3c1b
.back1:
    mov ax, 0x20                     ; 0x3c1e
    push ax                          ; 0x3c21
    push word [bp + 4]               ; 0x3c22
    call strpos                      ; 0x3c25
    add sp, byte 4                   ; 0x3c28
    mov word [bp - 2], ax            ; 0x3c2b
    cmp ax, strict word 0xffff       ; 0x3c2e
    je short .forward2               ; 0x3c31
    mov bx, word [bp + 4]            ; 0x3c33
    mov si, ax                       ; 0x3c36
    mov byte [bx + si], 0            ; 0x3c38
.back2:
    mov ax, 0x5f                     ; 0x3c3b
    push ax                          ; 0x3c3e
    push word [bp + 4]               ; 0x3c3f
    call strpos                      ; 0x3c42
    add sp, byte 4                   ; 0x3c45
    mov word [bp - 4], ax            ; 0x3c48
    cmp ax, strict word 0xffff       ; 0x3c4b
    je short .forward1               ; 0x3c4e
    mov bx, word [bp + 4]            ; 0x3c50
    mov si, ax                       ; 0x3c53
    mov byte [bx + si], 0x20         ; 0x3c55
    jmp short .back2                 ; 0x3c58
.forward1:
    push word [bp + 4]               ; 0x3c5a
    call append_scene_message_fragment ; 0x3c5d
    pop cx                           ; 0x3c60
    mov ax, word [bp - 2]            ; 0x3c61
    add word [bp + 4], ax            ; 0x3c64
    add word [bp + 4], byte 1        ; 0x3c67
    jmp short .back1                 ; 0x3c6b
.forward2:
    mov bx, word [bp + 4]            ; 0x3c6d
    cmp byte [bx], 0                 ; 0x3c70
    je short .return1                ; 0x3c73
    push bx                          ; 0x3c75
    call append_scene_message_fragment ; 0x3c76
    pop cx                           ; 0x3c79
.return1:
    ret                              ; 0x3c7a
