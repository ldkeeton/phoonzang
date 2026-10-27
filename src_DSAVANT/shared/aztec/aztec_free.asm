; auto-generated
aztec_free:
    push bp
    mov bp, sp
    push si
    mov si, word [bp + 4]
    add si, byte -2
    test word [si], 1
    jne short .forward1
    mov ax, 0xffff
.back1:
    pop si
    mov sp, bp
    pop bp
    ret
.forward1:
    and word [si], strict word 0xfffe
    mov word [current], si
    mov ax, 0
    jmp short .back1
