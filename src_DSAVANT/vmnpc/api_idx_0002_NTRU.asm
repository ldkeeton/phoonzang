; auto-generated
api_idx_0002_NTRU:
    mov ax, 0xfffe                   ; 0x8bb0
    call aztec_csav                  ; 0x8bb3
    push word [bp + 6]               ; 0x8bb6
    call aztec_strlen                ; 0x8bb9
    pop cx                           ; 0x8bbc
    push ax                          ; 0x8bbd
    push word [bp + 6]               ; 0x8bbe
    push word [bp + 4]               ; 0x8bc1
    call aztec_strncmp               ; 0x8bc4
    add sp, byte 6                   ; 0x8bc7
    test ax, ax                      ; 0x8bca
    jne short .forward1              ; 0x8bcc
    push word [bp + 6]               ; 0x8bce
    call aztec_strlen                ; 0x8bd1
    pop cx                           ; 0x8bd4
    dec ax                           ; 0x8bd5
    push ax                          ; 0x8bd6
    push word [bp + 4]               ; 0x8bd7
    call api_idx_0002_GRRR           ; 0x8bda
    add sp, byte 4                   ; 0x8bdd
    mov ax, 0                        ; 0x8be0
    ret                              ; 0x8be3
.forward1:
    mov ax, 0xffff                   ; 0x8be4
    ret                              ; 0x8be7
