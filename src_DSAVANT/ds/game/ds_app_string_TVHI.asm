; auto-generated
ds_app_string_TVHI: ; Aztec csav frame=0x0006
    mov ax, 0xfffa                   ; 0x03da
    call aztec_csav                  ; 0x03dd
    mov word [bp - 4], 0             ; 0x03e0
    push word [bp + 4]               ; 0x03e5
    call aztec_strlen                ; 0x03e8
    pop cx                           ; 0x03eb
    dec ax                           ; 0x03ec
    mov word [bp - 6], ax            ; 0x03ed
    jmp short @..ds_app_string_TVHI.l2 ; 0x03f0
@..ds_app_string_TVHI.l1:
    mov bx, word [bp + 4]            ; 0x03f2
    mov si, word [bp - 4]            ; 0x03f5
    mov al, byte [bx + si]           ; 0x03f8
    cbw                              ; 0x03fa
    mov word [bp - 2], ax            ; 0x03fb
    mov si, word [bp - 6]            ; 0x03fe
    mov al, byte [bx + si]           ; 0x0401
    mov si, word [bp - 4]            ; 0x0403
    mov byte [bx + si], al           ; 0x0406
    mov al, byte [bp - 2]            ; 0x0408
    mov bx, word [bp + 4]            ; 0x040b
    mov si, word [bp - 6]            ; 0x040e
    mov byte [bx + si], al           ; 0x0411
    dec word [bp - 6]                ; 0x0413
    inc word [bp - 4]                ; 0x0416
@..ds_app_string_TVHI.l2:
    mov ax, word [bp - 4]            ; 0x0419
    cmp ax, word [bp - 6]            ; 0x041c
    jl short @..ds_app_string_TVHI.l1 ; 0x041f
    ret                              ; 0x0421
