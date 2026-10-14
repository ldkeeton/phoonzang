; auto-generated
; asm only
aztec_unlink:
    push bp                          ; 0x5023
    mov bp, sp                       ; 0x5024
    mov ah, 0x41 ; unlink(name) ; 0x5026
    mov dx, word [bp + 0x4]          ; 0x5028
    int 0x21 ; DOS delete file (handle)
    jae short @..aztec_unlink.unl_ok ; 0x502d
    mov word [dseg_0c72], ax         ; 0x502f
    mov ax, 0xffff                   ; 0x5032
    pop bp                           ; 0x5035
    ret                              ; 0x5036
@..aztec_unlink.unl_ok:
    sub ax, ax                       ; 0x5037
    pop bp                           ; 0x5039
    ret                              ; 0x503a
