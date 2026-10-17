; auto-generated
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
    mov word [bss_0d00], si          ; 0x4804
    mov ax, 0                        ; 0x4808
    jmp short @..aztec_free.l1       ; 0x480b
