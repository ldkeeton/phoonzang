; auto-generated
aztec_exit:
    push bp
    mov bp, sp
    call [cls_]
    push word [bp + 4]
    call aztec_impl_exit
    pop cx
    mov sp, bp
    pop bp
    ret
