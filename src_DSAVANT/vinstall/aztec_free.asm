; auto-generated
aztec_free:
    push bp                          ; 0x3019
    mov bp, sp                       ; 0x301a
    push si                          ; 0x301c
    mov si, word [bp + 0x4]          ; 0x301d
    add si, byte 0xfe                ; 0x3020
    test word [si], 1                ; 0x3023
    jne short @..aztec_free.l2       ; 0x3027
    mov ax, 0xffff                   ; 0x3029
@..aztec_free.l1:
    pop si                           ; 0x302c
    mov sp, bp                       ; 0x302d
    pop bp                           ; 0x302f
    ret                              ; 0x3030
@..aztec_free.l2:
    and word [si], strict word 0xfffe ; 0x3031
    mov word [bss_2536], si          ; 0x3035
    mov ax, 0                        ; 0x3039
    jmp short @..aztec_free.l1       ; 0x303c
