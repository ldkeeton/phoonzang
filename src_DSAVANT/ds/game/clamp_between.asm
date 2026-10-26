; auto-generated
clamp_between:
    mov ax, 0                        ; 0x0a09
    call aztec_csav                  ; 0x0a0c
    mov ax, word [bp + 6]            ; 0x0a0f
    push ax                          ; 0x0a12
    cmp ax, word [bp + 4]            ; 0x0a13
    pop ax                           ; 0x0a16
    jg short .return1                ; 0x0a17
    mov ax, word [bp + 4]            ; 0x0a19
    push ax                          ; 0x0a1c
    cmp ax, word [bp + 8]            ; 0x0a1d
    pop ax                           ; 0x0a20
    jle short .return1               ; 0x0a21
    mov ax, word [bp + 8]            ; 0x0a23
.return1:
    ret                              ; 0x0a26
