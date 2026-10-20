; auto-generated
aztec_mkdir:
    push bp                          ; 0x29fe
    mov bp, sp                       ; 0x29ff
    mov ah, 0x39                     ; 0x2a01
@..aztec_mkdir.dircommon:
    mov dx, word [bp + 0x4]          ; 0x2a03
    int 0x21 ; DOS create directory
    mov ax, 0                        ; 0x2a08
    jae short @..aztec_mkdir.ok      ; 0x2a0b
    mov word [errno], ax             ; 0x2a0d
    mov ax, 0xffff                   ; 0x2a10
@..aztec_mkdir.ok:
    pop bp                           ; 0x2a13
    ret                              ; 0x2a14
aztec_rmdir:
    push bp                          ; 0x2a15
    mov bp, sp                       ; 0x2a16
    mov ah, 0x3a                     ; 0x2a18
    jmp short @..aztec_mkdir.dircommon ; 0x2a1a
aztec_chdir:
    push bp                          ; 0x2a1c
    mov bp, sp                       ; 0x2a1d
    mov ah, 0x3b                     ; 0x2a1f
    jmp short @..aztec_mkdir.dircommon ; 0x2a21
