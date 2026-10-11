api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x4e03
    call ds_dispatch_f40b            ; 0x4e06
    mov word [bp - 0x0004], 0        ; 0x4e09
    mov word [bp - 0x0002], 0        ; 0x4e0e
@..api_idx_0006_2.l1:
    mov ax, word [bp - 0x0002]       ; 0x4e13
    jmp short @..api_idx_0006_2.l2   ; 0x4e16
    mov word [bp - 0x0006], 2        ; 0x4e18
    jmp short @..api_idx_0006_2.l3   ; 0x4e1d
    mov word [bp - 0x0006], 4        ; 0x4e1f
    jmp short @..api_idx_0006_2.l3   ; 0x4e24
    mov word [bp - 0x0006], 7        ; 0x4e26
    jmp short @..api_idx_0006_2.l3   ; 0x4e2b
    mov word [bp - 0x0006], 0xa      ; 0x4e2d
    jmp short @..api_idx_0006_2.l3   ; 0x4e32
    mov word [bp - 0x0006], 0xe      ; 0x4e34
    jmp short @..api_idx_0006_2.l3   ; 0x4e39
    mov word [bp - 0x0006], 0x12     ; 0x4e3b
    jmp short @..api_idx_0006_2.l3   ; 0x4e40
    mov word [bp - 0x0006], 0x18     ; 0x4e42
    jmp short @..api_idx_0006_2.l3   ; 0x4e47
    pop di                           ; 0x4e49
    sahf                             ; 0x4e4a
    db 0x66, 0x9e ; sahf
    insw                             ; 0x4e4d
    sahf                             ; 0x4e4e
    je short loc_4def                ; 0x4e4f
    jnp short loc_4df1               ; 0x4e51
    db 0x82, 0x9e, 0x89, 0x9e
@..api_idx_0006_2.l2:
    db 0x3d
    pop es                           ; 0x4e58
    add byte [bp + di + 0x8], dh     ; 0x4e59
    xchg bx, ax                      ; 0x4e5c
    shl bx, 1                        ; 0x4e5d
    jmp [cs:bx - 0x6170]             ; 0x4e5f
@..api_idx_0006_2.l3:
    mov ax, 0x248                    ; 0x4e64
    imul word [bp + 0x4]             ; 0x4e67
    mov bx, ax                       ; 0x4e6a
    mov ax, word [bx + 0x5c18]       ; 0x4e6c
    cmp ax, word [bp - 0x0006]       ; 0x4e70
    jl short @..api_idx_0006_2.l4    ; 0x4e73
    inc word [bp - 0x0004]           ; 0x4e75
@..api_idx_0006_2.l4:
    inc word [bp - 0x0002]           ; 0x4e78
    mov ax, word [bp - 0x0002]       ; 0x4e7b
    cmp ax, strict word 7            ; 0x4e7e
    jl short @..api_idx_0006_2.l1    ; 0x4e81
    mov ax, 0x248                    ; 0x4e83
    imul word [bp + 0x4]             ; 0x4e86
    mov bx, ax                       ; 0x4e89
    mov al, byte [bx + 0x5e2e]       ; 0x4e8b
    sub ah, ah                       ; 0x4e8f
    cmp ax, word [bp - 0x0004]       ; 0x4e91
    jge short @..api_idx_0006_2.l5   ; 0x4e94
    mov al, byte [bp - 0x0004]       ; 0x4e96
    mov byte [bx + 0x5e2e], al       ; 0x4e99
@..api_idx_0006_2.l5:
    ret                              ; 0x4e9d
