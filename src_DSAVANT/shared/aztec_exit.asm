; auto-generated
aztec_exit:
    push bp
    mov bp, sp
    call [aztec_exit.dseg1]
    push word [bp + 0x4]
    call aztec_impl_exit
    pop cx
    mov sp, bp
    pop bp
    ret
