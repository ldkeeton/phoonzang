ds_app_string_03da: ; Aztec csav frame=0x0006
    mov ax, 0xfffa                   ; 0x03da
    call aztec_csav                  ; 0x03dd
    mov word [bp - 0x0004], 0        ; 0x03e0
    push word [bp + 0x4]             ; 0x03e5
    call aztec_strlen                ; 0x03e8
    pop cx                           ; 0x03eb
    dec ax                           ; 0x03ec
    mov word [bp - 0x0006], ax       ; 0x03ed
    jmp short @..ds_app_string_03da.l2 ; 0x03f0
@..ds_app_string_03da.l1:
    mov bx, word [bp + 0x4]          ; 0x03f2
    mov si, word [bp - 0x0004]       ; 0x03f5
    mov al, byte [bx + si]           ; 0x03f8
    cbw                              ; 0x03fa
    mov word [bp - 0x0002], ax       ; 0x03fb
    mov si, word [bp - 0x0006]       ; 0x03fe
    mov al, byte [bx + si]           ; 0x0401
    mov si, word [bp - 0x0004]       ; 0x0403
    mov byte [bx + si], al           ; 0x0406
    mov al, byte [bp - 0x0002]       ; 0x0408
    mov bx, word [bp + 0x4]          ; 0x040b
    mov si, word [bp - 0x0006]       ; 0x040e
    mov byte [bx + si], al           ; 0x0411
    dec word [bp - 0x0006]           ; 0x0413
    inc word [bp - 0x0004]           ; 0x0416
@..ds_app_string_03da.l2:
    mov ax, word [bp - 0x0004]       ; 0x0419
    cmp ax, word [bp - 0x0006]       ; 0x041c
    jl short @..ds_app_string_03da.l1 ; 0x041f
    ret                              ; 0x0421
