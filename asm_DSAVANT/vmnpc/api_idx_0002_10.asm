api_idx_0002_10:
    mov ax, 0xfffe                   ; 0x8bb0
    db 0xe8, 0x55, 0x68 ; call 0xf40b
    push word [bp + 0x6]             ; 0x8bb6
    db 0xe8, 0xd4, 0x6e ; call 0xfa90
    pop cx                           ; 0x8bbc
    push ax                          ; 0x8bbd
    push word [bp + 0x6]             ; 0x8bbe
    push word [bp + 0x4]             ; 0x8bc1
    call string_loc_ae94             ; 0x8bc4
    add sp, byte 6                   ; 0x8bc7
    test ax, ax                      ; 0x8bca
    jne short @..api_idx_0002_10.l1  ; 0x8bcc
    push word [bp + 0x6]             ; 0x8bce
    db 0xe8, 0xbc, 0x6e ; call 0xfa90
    pop cx                           ; 0x8bd4
    dec ax                           ; 0x8bd5
    push ax                          ; 0x8bd6
    push word [bp + 0x4]             ; 0x8bd7
    call api_idx_0002_8              ; 0x8bda
    add sp, byte 4                   ; 0x8bdd
    mov ax, 0                        ; 0x8be0
    ret                              ; 0x8be3
@..api_idx_0002_10.l1:
    mov ax, 0xffff                   ; 0x8be4
    ret                              ; 0x8be7
