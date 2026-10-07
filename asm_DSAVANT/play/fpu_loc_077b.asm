fpu_loc_077b:
    mov bl, byte [cs:data_0b7d]      ; 0x077b
    shl bl, 1                        ; 0x0780
    xor bh, bh                       ; 0x0782
    jmp [cs:bx + 0x889]              ; 0x0784
    xchg bx, ax                      ; 0x0789
    or byte [bp + si + 0x7], bl      ; 0x078a
    fisttp dword [bx + si]           ; 0x078d
    fisttp dword [bx + si]           ; 0x078f
    pop dx                           ; 0x0791
    pop es                           ; 0x0792
    mov ah, 0                        ; 0x0793
    mov al, byte [bp + 0x12]         ; 0x0795
    cmp al, 0x49                     ; 0x0798
    jb short loc_07a2                ; 0x079a
    sub al, 0x49                     ; 0x079c
    shr al, 1                        ; 0x079e
    db 0x8a, 0xe0 ; mov ah, al
    mov byte [cs:data_0b93], ah      ; 0x07a2
    mov bx, 0x1a3a                   ; 0x07a7
    db 0x32, 0xc9 ; xor cl, cl
    mov al, byte [bp + 0x12]         ; 0x07ac
    mov byte [cs:data_0b92], al      ; 0x07af
    mov al, byte [bp + 0x12]         ; 0x07b3
    mul cl                           ; 0x07b6
    sub ah, byte [cs:data_0b93]      ; 0x07b8
    js short loc_07ce                ; 0x07bd
    cmp ah, byte [cs:data_0b92]      ; 0x07bf
    jb short loc_07d0                ; 0x07c4
    mov ah, byte [cs:data_0b92]      ; 0x07c6
    jmp near loc_07d0                ; 0x07cb
    mov ah, 0                        ; 0x07ce
    inc ah                           ; 0x07d0
    mov byte [cs:bx], ah             ; 0x07d2
    inc bx                           ; 0x07d5
    inc cl                           ; 0x07d6
    jne short loc_07b3               ; 0x07d8
    ret                              ; 0x07da
