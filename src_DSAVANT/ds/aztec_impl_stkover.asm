; auto-generated
aztec_impl_stkover:
    mov ax, 0x24                     ; 0x4f87
    push ax                          ; 0x4f8a
    mov ax, 0xcae                    ; 0x4f8b
    push ax                          ; 0x4f8e
    mov ax, 2                        ; 0x4f8f
    push ax                          ; 0x4f92
    call aztec_write                 ; 0x4f93
    add sp, byte 6                   ; 0x4f96
    mov ax, 0x64                     ; 0x4f99
    push ax                          ; 0x4f9c
    call aztec_impl_exit             ; 0x4f9d
    pop cx                           ; 0x4fa0
    ret                              ; 0x4fa1
