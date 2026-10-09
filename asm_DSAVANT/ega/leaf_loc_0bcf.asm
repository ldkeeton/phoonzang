leaf_loc_0bcf:
    push bp                          ; 0x0bcf
    mov bp, sp                       ; 0x0bd0
    push ds                          ; 0x0bd2
    push es                          ; 0x0bd3
    mov ax, ds                       ; 0x0bd4
    mov es, ax                       ; 0x0bd6
    mov ax, word [cs:data_01e5]      ; 0x0bd8
    mov ds, ax                       ; 0x0bdc
    mov ax, word [bp + 0xe]          ; 0x0bde
    mov bx, 0x140                    ; 0x0be1
    mul bx                           ; 0x0be4
    add ax, word [bp + 0xc]          ; 0x0be6
    mov bx, ax                       ; 0x0be9
    mov ax, word [bp + 0x10]         ; 0x0beb
    mov byte [bx], al                ; 0x0bee
    pop es                           ; 0x0bf0
    pop ds                           ; 0x0bf1
    mov sp, bp                       ; 0x0bf2
    pop bp                           ; 0x0bf4
    ret                              ; 0x0bf5
