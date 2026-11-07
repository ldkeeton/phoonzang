; auto-generated
process_scene_message_words:
    mov ax, 0xfffc                   ; 0x0d24
    call $csav                  ; 0x0d27
.back1:
    mov ax, 0x20                     ; 0x0d2a
    push ax                          ; 0x0d2d
    push word [bp + 4]               ; 0x0d2e
    call strpos                      ; 0x0d31
    add sp, byte 4                   ; 0x0d34
    mov word [bp - 2], ax            ; 0x0d37
    cmp ax, strict word 0xffff       ; 0x0d3a
    je short .forward2               ; 0x0d3d
    mov bx, word [bp + 4]            ; 0x0d3f
    mov si, ax                       ; 0x0d42
    mov byte [bx + si], 0            ; 0x0d44
.back2:
    mov ax, 0x5f                     ; 0x0d47
    push ax                          ; 0x0d4a
    push word [bp + 4]               ; 0x0d4b
    call strpos                      ; 0x0d4e
    add sp, byte 4                   ; 0x0d51
    mov word [bp - 4], ax            ; 0x0d54
    cmp ax, strict word 0xffff       ; 0x0d57
    je short .forward1               ; 0x0d5a
    mov bx, word [bp + 4]            ; 0x0d5c
    mov si, ax                       ; 0x0d5f
    mov byte [bx + si], 0x20         ; 0x0d61
    jmp short .back2                 ; 0x0d64
.forward1:
    push word [bp + 4]               ; 0x0d66
    call process_treasure_text       ; 0x0d69
    pop cx                           ; 0x0d6c
    mov ax, word [bp - 2]            ; 0x0d6d
    add word [bp + 4], ax            ; 0x0d70
    add word [bp + 4], byte 1        ; 0x0d73
    jmp short .back1                 ; 0x0d77
.forward2:
    mov bx, word [bp + 4]            ; 0x0d79
    cmp byte [bx], 0                 ; 0x0d7c
    je short .return1                ; 0x0d7f
    push bx                          ; 0x0d81
    call process_treasure_text       ; 0x0d82
    pop cx                           ; 0x0d85
.return1:
    ret                              ; 0x0d86
