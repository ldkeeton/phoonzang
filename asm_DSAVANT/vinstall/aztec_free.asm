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
    mov word [data_2536], si         ; 0x3035
    mov ax, 0                        ; 0x3039
    jmp short @..aztec_free.l1       ; 0x303c

    db 'LlhFNoxXudiscpneEfgG%@/G/K/N/K/U/^/Z/c/h/h/'
    db 0x8c, 0x30, 0xab, 0x30, 0xd0, 0x30, 0xd3
    db '0{0u0{0{0u0'
    db 0xb3
    db '.0123456789abcdef -lm first', 0

