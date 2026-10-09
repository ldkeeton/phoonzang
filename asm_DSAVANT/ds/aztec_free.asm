aztec_free:
    push bp                          ; 0x47e8
    mov bp, sp                       ; 0x47e9
    push si                          ; 0x47eb
    mov si, word [bp + 0x4]          ; 0x47ec
    add si, byte 0xfe                ; 0x47ef
    test word [si], 1                ; 0x47f2
    jne short @..aztec_free.l2       ; 0x47f6
    mov ax, 0xffff                   ; 0x47f8
@..aztec_free.l1:
    pop si                           ; 0x47fb
    mov sp, bp                       ; 0x47fc
    pop bp                           ; 0x47fe
    ret                              ; 0x47ff
@..aztec_free.l2:
    and word [si], strict word 0xfffe ; 0x4800
    mov word [data_0d00], si         ; 0x4804
    mov ax, 0                        ; 0x4808
    jmp short @..aztec_free.l1       ; 0x480b

    db 'LlhFNoxXudiscpneEfgG%'
    db 0x0f, 0x47, 0x16, 0x47, 0x1a, 0x47, 0x1d, 0x47, 0x1a
    db 'G$G-G)G2G7G7G[HzH'
    db 0x9f, 0x48, 0xa2
    db 'HJHDHJHJHDH'
    db 0x82
    db 'F0123456789abcdef -lm first', 0

