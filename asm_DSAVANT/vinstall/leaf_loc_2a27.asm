leaf_loc_2a1c:
    push bp                          ; 0x2a1c
    mov bp, sp                       ; 0x2a1d
    mov ah, 0x3b                     ; 0x2a1f
    jmp short loc_2a03               ; 0x2a21
    times 4 db 0
leaf_loc_2a27:
    push bp                          ; 0x2a27
    mov bp, sp                       ; 0x2a28
    push si                          ; 0x2a2a
    push di                          ; 0x2a2b
    pushf                            ; 0x2a2c
    push word [data_0030]            ; 0x2a2d
    push word [data_002e]            ; 0x2a31
    push ds                          ; 0x2a35
    push es                          ; 0x2a36
    mov word [cs:data_2823], ss      ; 0x2a37
    mov word [cs:data_2825], sp      ; 0x2a3c
    mov ax, word [bp + 0x6]          ; 0x2a41
    mov word [data_230e], ax         ; 0x2a44
    mov ax, ds                       ; 0x2a47
    mov es, ax                       ; 0x2a49
    mov ax, word [bp + 0x8]          ; 0x2a4b
    mov word [data_2310], ax         ; 0x2a4e
    mov word [data_2312], es         ; 0x2a51
    mov ax, word [bp + 0xa]          ; 0x2a55
    mov word [data_2314], ax         ; 0x2a58
    mov word [data_2316], es         ; 0x2a5b
    mov ax, word [bp + 0xc]          ; 0x2a5f
    mov word [data_2318], ax         ; 0x2a62
    mov word [data_231a], es         ; 0x2a65
    mov ax, ds                       ; 0x2a69
    mov es, ax                       ; 0x2a6b
    mov bx, data_230e                ; 0x2a6d
    mov dx, word [bp + 0x4]          ; 0x2a70
    mov ax, 0x4b00                   ; 0x2a73
    int 0x21 ; DOS function dispatcher
    mov ss, word [cs:data_2823]      ; 0x2a78
    mov sp, word [cs:data_2825]      ; 0x2a7d
    pop es                           ; 0x2a82
    pop ds                           ; 0x2a83
    jae short @..leaf_loc_2a27.l1    ; 0x2a84
    mov word [data_24d6], ax         ; 0x2a86
    mov ax, 0xffff                   ; 0x2a89
    jmp short @..leaf_loc_2a27.l2    ; 0x2a8c
@..leaf_loc_2a27.l1:
    sub ax, ax                       ; 0x2a8e
@..leaf_loc_2a27.l2:
    pop word [data_002e]             ; 0x2a90
    pop word [data_0030]             ; 0x2a94
    popf                             ; 0x2a98
    pop di                           ; 0x2a99
    pop si                           ; 0x2a9a
    pop bp                           ; 0x2a9b
    ret                              ; 0x2a9c
