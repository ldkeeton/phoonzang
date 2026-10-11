aztec_fclose:
    push bp                          ; 0x2d0b
    mov bp, sp                       ; 0x2d0c
    push di                          ; 0x2d0e
    push si                          ; 0x2d0f
    mov si, word [bp + 0x4]          ; 0x2d10
    mov di, 0                        ; 0x2d13
    test si, si                      ; 0x2d16
    jne short @..aztec_fclose.l2     ; 0x2d18
    mov ax, 0xffff                   ; 0x2d1a
@..aztec_fclose.l1:
    pop si                           ; 0x2d1d
    pop di                           ; 0x2d1e
    mov sp, bp                       ; 0x2d1f
    pop bp                           ; 0x2d21
    ret                              ; 0x2d22
@..aztec_fclose.l2:
    cmp byte [si + 0x6], 0           ; 0x2d23
    je short @..aztec_fclose.l5      ; 0x2d27
    mov al, byte [si + 0x6]          ; 0x2d29
    cbw                              ; 0x2d2c
    test ax, 4                       ; 0x2d2d
    je short @..aztec_fclose.l3      ; 0x2d30
    mov ax, 0xffff                   ; 0x2d32
    push ax                          ; 0x2d35
    push si                          ; 0x2d36
    call aztec_filbuf                ; 0x2d37
    add sp, byte 4                   ; 0x2d3a
    mov di, ax                       ; 0x2d3d
@..aztec_fclose.l3:
    mov al, byte [si + 0x7]          ; 0x2d3f
    cbw                              ; 0x2d42
    push ax                          ; 0x2d43
    call aztec_close                 ; 0x2d44
    pop cx                           ; 0x2d47
    or di, ax                        ; 0x2d48
    mov al, byte [si + 0x6]          ; 0x2d4a
    cbw                              ; 0x2d4d
    test ax, 2                       ; 0x2d4e
    je short @..aztec_fclose.l4      ; 0x2d51
    push word [si + 0x4]             ; 0x2d53
    call aztec_free                  ; 0x2d56
    pop cx                           ; 0x2d59
@..aztec_fclose.l4:
    mov al, byte [si + 0x6]          ; 0x2d5a
    cbw                              ; 0x2d5d
    test ax, 0x20                    ; 0x2d5e
    je short @..aztec_fclose.l5      ; 0x2d61
    push word [si + 0xb]             ; 0x2d63
    call aztec_unlink                ; 0x2d66
    pop cx                           ; 0x2d69
    push word [si + 0xb]             ; 0x2d6a
    call aztec_free                  ; 0x2d6d
    pop cx                           ; 0x2d70
@..aztec_fclose.l5:
    mov ax, 0                        ; 0x2d71
    mov word [si], 0                 ; 0x2d74
    mov word [si + 0x2], ax          ; 0x2d78
    mov word [si + 0x4], ax          ; 0x2d7b
    mov byte [si + 0x6], 0           ; 0x2d7e
    mov ax, di                       ; 0x2d82
    jmp short @..aztec_fclose.l1     ; 0x2d84
