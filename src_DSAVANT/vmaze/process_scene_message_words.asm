; auto-generated
process_scene_message_words:
    mov ax, 0xfffc                   ; 0x6eb1
    call aztec_csav                  ; 0x6eb4
.back1:
    mov ax, 0x20                     ; 0x6eb7
    push ax                          ; 0x6eba
    push word [bp + 4]               ; 0x6ebb
    call strpos                      ; 0x6ebe
    add sp, byte 4                   ; 0x6ec1
    mov word [bp - 2], ax            ; 0x6ec4
    cmp ax, strict word 0xffff       ; 0x6ec7
    je short .forward2               ; 0x6eca
    mov bx, word [bp + 4]            ; 0x6ecc
    mov si, ax                       ; 0x6ecf
    mov byte [bx + si], 0            ; 0x6ed1
.back2:
    mov ax, 0x5f                     ; 0x6ed4
    push ax                          ; 0x6ed7
    push word [bp + 4]               ; 0x6ed8
    call strpos                      ; 0x6edb
    add sp, byte 4                   ; 0x6ede
    mov word [bp - 4], ax            ; 0x6ee1
    cmp ax, strict word 0xffff       ; 0x6ee4
    je short .forward1               ; 0x6ee7
    mov bx, word [bp + 4]            ; 0x6ee9
    mov si, ax                       ; 0x6eec
    mov byte [bx + si], 0x20         ; 0x6eee
    jmp short .back2                 ; 0x6ef1
.forward1:
    push word [bp + 4]               ; 0x6ef3
    call process_maze_message_controls ; 0x6ef6
    pop cx                           ; 0x6ef9
    mov ax, word [bp - 2]            ; 0x6efa
    add word [bp + 4], ax            ; 0x6efd
    add word [bp + 4], byte 1        ; 0x6f00
    jmp short .back1                 ; 0x6f04
.forward2:
    mov bx, word [bp + 4]            ; 0x6f06
    cmp byte [bx], 0                 ; 0x6f09
    je short .return1                ; 0x6f0c
    push bx                          ; 0x6f0e
    call process_maze_message_controls ; 0x6f0f
    pop cx                           ; 0x6f12
.return1:
    ret                              ; 0x6f13
