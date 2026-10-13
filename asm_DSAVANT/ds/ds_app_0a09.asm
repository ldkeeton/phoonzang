; auto-generated
ds_app_0a09: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x0a09
    call aztec_csav                  ; 0x0a0c
    mov ax, word [bp + 0x6]          ; 0x0a0f
    push ax                          ; 0x0a12
    cmp ax, word [bp + 0x4]          ; 0x0a13
    pop ax                           ; 0x0a16
    jg short @..ds_app_0a09.l1       ; 0x0a17
    mov ax, word [bp + 0x4]          ; 0x0a19
    push ax                          ; 0x0a1c
    cmp ax, word [bp + 0x8]          ; 0x0a1d
    pop ax                           ; 0x0a20
    jle short @..ds_app_0a09.l1      ; 0x0a21
    mov ax, word [bp + 0x8]          ; 0x0a23
@..ds_app_0a09.l1:
    ret                              ; 0x0a26
