; auto-generated
aztec_fexec_save_ss:
    db 0x00, 0x00
aztec_fexec_save_sp:
    db 0x00, 0x00
aztec_fexec:
    push bp                          ; 0x2a27
    mov bp, sp                       ; 0x2a28
    push si                          ; 0x2a2a
    push di                          ; 0x2a2b
    pushf                            ; 0x2a2c
    push word [dseg_0030]            ; 0x2a2d
    push word [dseg_002e]            ; 0x2a31
    push ds                          ; 0x2a35
    push es                          ; 0x2a36
    mov word [cs:aztec_fexec_save_ss - IMAGE_BASE], ss ; 0x2a37
    mov word [cs:aztec_fexec_save_sp - IMAGE_BASE], sp ; 0x2a3c
    mov ax, word [bp + 6]            ; 0x2a41
    mov word [env], ax               ; 0x2a44
    mov ax, ds                       ; 0x2a47
    mov es, ax                       ; 0x2a49
    mov ax, word [bp + 8]            ; 0x2a4b
    mov word [cline], ax             ; 0x2a4e
    mov word [cline + 0x2], es       ; 0x2a51
    mov ax, word [bp + 0xa]          ; 0x2a55
    mov word [fcb1], ax              ; 0x2a58
    mov word [fcb1 + 0x2], es        ; 0x2a5b
    mov ax, word [bp + 0xc]          ; 0x2a5f
    mov word [fcb2], ax              ; 0x2a62
    mov word [fcb2 + 0x2], es        ; 0x2a65
    mov ax, ds                       ; 0x2a69
    mov es, ax                       ; 0x2a6b
    mov bx, env                      ; 0x2a6d
    mov dx, word [bp + 4]            ; 0x2a70
    mov ax, 0x4b00                   ; 0x2a73
    int 0x21 ; DOS function dispatcher
    mov ss, word [cs:aztec_fexec_save_ss - IMAGE_BASE] ; 0x2a78
    mov sp, word [cs:aztec_fexec_save_sp - IMAGE_BASE] ; 0x2a7d
    pop es                           ; 0x2a82
    pop ds                           ; 0x2a83
    jae short .noerror               ; 0x2a84
    mov word [errno], ax             ; 0x2a86
    mov ax, 0xffff                   ; 0x2a89
    jmp short .done                  ; 0x2a8c
.noerror:
    sub ax, ax                       ; 0x2a8e
.done:
    pop word [dseg_002e]             ; 0x2a90
    pop word [dseg_0030]             ; 0x2a94
    popf                             ; 0x2a98
    pop di                           ; 0x2a99
    pop si                           ; 0x2a9a
    pop bp                           ; 0x2a9b
    ret                              ; 0x2a9c
