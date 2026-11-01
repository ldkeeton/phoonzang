; auto-generated
process_scene_message_words:
    mov ax, 0xfffc                   ; 0x6f16
    call aztec_csav                  ; 0x6f19
.back1:
    mov ax, 0x20                     ; 0x6f1c
    push ax                          ; 0x6f1f
    push word [bp + 4]               ; 0x6f20
    call strpos                      ; 0x6f23
    add sp, byte 4                   ; 0x6f26
    mov word [bp - 2], ax            ; 0x6f29
    cmp ax, strict word 0xffff       ; 0x6f2c
    je short .forward2               ; 0x6f2f
    mov bx, word [bp + 4]            ; 0x6f31
    mov si, ax                       ; 0x6f34
    mov byte [bx + si], 0            ; 0x6f36
.back2:
    mov ax, 0x5f                     ; 0x6f39
    push ax                          ; 0x6f3c
    push word [bp + 4]               ; 0x6f3d
    call strpos                      ; 0x6f40
    add sp, byte 4                   ; 0x6f43
    mov word [bp - 4], ax            ; 0x6f46
    cmp ax, strict word 0xffff       ; 0x6f49
    je short .forward1               ; 0x6f4c
    mov bx, word [bp + 4]            ; 0x6f4e
    mov si, ax                       ; 0x6f51
    mov byte [bx + si], 0x20         ; 0x6f53
    jmp short .back2                 ; 0x6f56
.forward1:
    push word [bp + 4]               ; 0x6f58
    call process_scene_message_controls ; 0x6f5b
    pop cx                           ; 0x6f5e
    mov ax, word [bp - 2]            ; 0x6f5f
    add word [bp + 4], ax            ; 0x6f62
    add word [bp + 4], byte 1        ; 0x6f65
    jmp short .back1                 ; 0x6f69
.forward2:
    mov bx, word [bp + 4]            ; 0x6f6b
    cmp byte [bx], 0                 ; 0x6f6e
    je short .return1                ; 0x6f71
    push bx                          ; 0x6f73
    call process_scene_message_controls ; 0x6f74
    pop cx                           ; 0x6f77
.return1:
    ret                              ; 0x6f78
