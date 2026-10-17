; auto-generated
; asm only
aztec_fexec:
    push bp                          ; 0x2a27
    mov bp, sp                       ; 0x2a28
    push si ; char *fexec(name,env,cline,fcb1,fcb2) ; 0x2a2a
    push di                          ; 0x2a2b
    pushf                            ; 0x2a2c
    push word [dseg_0030]            ; 0x2a2d
    push word [dseg_002e]            ; 0x2a31
    push ds                          ; 0x2a35
    push es                          ; 0x2a36
    mov word [cs:cseg_2a23 - IMAGE_BASE], ss ; 0x2a37
    mov word [cs:cseg_2a25 - IMAGE_BASE], sp ; 0x2a3c
    mov ax, word [bp + 0x6] ; set up parameter block for exec call ; 0x2a41
    mov word [dseg_230e], ax         ; 0x2a44
    mov ax, ds                       ; 0x2a47
    mov es, ax                       ; 0x2a49
    mov ax, word [bp + 0x8]          ; 0x2a4b
    mov word [dseg_2310], ax         ; 0x2a4e
    mov word [dseg_2312], es         ; 0x2a51
    mov ax, word [bp + 0xa]          ; 0x2a55
    mov word [dseg_2314], ax         ; 0x2a58
    mov word [dseg_2316], es         ; 0x2a5b
    mov ax, word [bp + 0xc]          ; 0x2a5f
    mov word [dseg_2318], ax         ; 0x2a62
    mov word [dseg_231a], es         ; 0x2a65
    mov ax, ds                       ; 0x2a69
    mov es, ax                       ; 0x2a6b
    mov bx, 0x230e                   ; 0x2a6d
    mov dx, word [bp + 0x4]          ; 0x2a70
    mov ax, 0x4b00                   ; 0x2a73
    int 0x21 ; DOS function dispatcher
    mov ss, word [cs:cseg_2a23 - IMAGE_BASE] ; 0x2a78
    mov sp, word [cs:cseg_2a25 - IMAGE_BASE] ; 0x2a7d
    pop es                           ; 0x2a82
    pop ds                           ; 0x2a83
    jae short @..aztec_fexec.noerror ; 0x2a84
    mov word [errno], ax             ; 0x2a86
    mov ax, 0xffff                   ; 0x2a89
    jmp short @..aztec_fexec.done    ; 0x2a8c
@..aztec_fexec.noerror:
    sub ax, ax                       ; 0x2a8e
@..aztec_fexec.done:
    pop word [dseg_002e]             ; 0x2a90
    pop word [dseg_0030]             ; 0x2a94
    popf                             ; 0x2a98
    pop di                           ; 0x2a99
    pop si                           ; 0x2a9a
    pop bp                           ; 0x2a9b
    ret                              ; 0x2a9c
