; auto-generated
aztec_ovloader:
    mov bx, sp                       ; 0x4379
    mov ax, word [bx + 0x2]          ; 0x437b
    mov word [bss_0cfa], ax          ; 0x437e
    call aztec_impl_ovld             ; 0x4381
    jmp ax                           ; 0x4384
