; auto-generated
aztec_impl_exit:
    pop ax
    pop ax
aztec_impl_exit.loc1:
    mov ah, 0x4c
    int 0x21 ; DOS exit with return code
