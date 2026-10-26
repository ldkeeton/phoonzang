; auto-generated
verify_answer_word:
    mov ax, 0xfffe                   ; 0x2c11
    call aztec_csav                  ; 0x2c14
    mov word [bp - 2], 0             ; 0x2c17
    jmp short .forward3              ; 0x2c1c
.back1:
    mov bx, word [bp - 2]            ; 0x2c1e
    mov al, byte [bx + answer_word]  ; 0x2c21
    sub ah, ah                       ; 0x2c25
    mov cx, 0x25                     ; 0x2c27
    imul cx                          ; 0x2c2a
    push ax                          ; 0x2c2c
    mov ax, 0x11                     ; 0x2c2d
    imul bx                          ; 0x2c30
    mov cx, ax                       ; 0x2c32
    pop ax                           ; 0x2c34
    add ax, cx                       ; 0x2c35
    mov cx, 0xff                     ; 0x2c37
    cwd                              ; 0x2c3a
    idiv cx                          ; 0x2c3b
    mov ax, dx                       ; 0x2c3d
    mov cl, byte [bx + code_table + 0x1a] ; 0x2c3f
    cmp al, cl                       ; 0x2c43
    je short .forward1               ; 0x2c45
    mov ax, 0                        ; 0x2c47
    ret                              ; 0x2c4a
.forward1:
    mov ax, word [answer_length]     ; 0x2c4b
    dec ax                           ; 0x2c4e
    cmp ax, bx                       ; 0x2c4f
    jne short .forward2              ; 0x2c51
    mov ax, word [code_check_word]   ; 0x2c53
    mov word [answer_check_word], ax ; 0x2c56
.forward2:
    inc word [bp - 2]                ; 0x2c59
.forward3:
    mov ax, word [bp - 2]            ; 0x2c5c
    cmp ax, word [answer_length]     ; 0x2c5f
    jl short .back1                  ; 0x2c63
    mov ax, 1                        ; 0x2c65
    ret                              ; 0x2c68
