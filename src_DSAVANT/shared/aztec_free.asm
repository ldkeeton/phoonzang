; auto-generated
aztec_free:
    push bp
    mov bp, sp
    push si
    mov si, word [bp + 0x4]
    add si, byte 0xfe
    test word [si], 1
    jne short @..aztec_free.l2
    mov ax, 0xffff
@..aztec_free.l1:
    pop si
    mov sp, bp
    pop bp
    ret
@..aztec_free.l2:
    and word [si], strict word 0xfffe
    mov word [current], si
    mov ax, 0
    jmp short @..aztec_free.l1
