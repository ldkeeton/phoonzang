; auto-generated
aztec_fclose:
    push bp                          ; 0x2d0b
    mov bp, sp                       ; 0x2d0c
    push di                          ; 0x2d0e
    push si                          ; 0x2d0f
    mov si, word [bp + 4]            ; 0x2d10
    mov di, 0                        ; 0x2d13
    test si, si                      ; 0x2d16
    jne short .forward1              ; 0x2d18
    mov ax, 0xffff                   ; 0x2d1a
.back1:
    pop si                           ; 0x2d1d
    pop di                           ; 0x2d1e
    mov sp, bp                       ; 0x2d1f
    pop bp                           ; 0x2d21
    ret                              ; 0x2d22
.forward1:
    cmp byte [si + 6], 0             ; 0x2d23
    je short .forward4               ; 0x2d27
    mov al, byte [si + 6]            ; 0x2d29
    cbw                              ; 0x2d2c
    test ax, 4                       ; 0x2d2d
    je short .forward2               ; 0x2d30
    mov ax, 0xffff                   ; 0x2d32
    push ax                          ; 0x2d35
    push si                          ; 0x2d36
    call aztec_flsh_                 ; 0x2d37
    add sp, byte 4                   ; 0x2d3a
    mov di, ax                       ; 0x2d3d
.forward2:
    mov al, byte [si + 7]            ; 0x2d3f
    cbw                              ; 0x2d42
    push ax                          ; 0x2d43
    call aztec_close                 ; 0x2d44
    pop cx                           ; 0x2d47
    or di, ax                        ; 0x2d48
    mov al, byte [si + 6]            ; 0x2d4a
    cbw                              ; 0x2d4d
    test ax, 2                       ; 0x2d4e
    je short .forward3               ; 0x2d51
    push word [si + 4]               ; 0x2d53
    call aztec_free                  ; 0x2d56
    pop cx                           ; 0x2d59
.forward3:
    mov al, byte [si + 6]            ; 0x2d5a
    cbw                              ; 0x2d5d
    test ax, 0x20                    ; 0x2d5e
    je short .forward4               ; 0x2d61
    push word [si + 0xb]             ; 0x2d63
    call aztec_unlink                ; 0x2d66
    pop cx                           ; 0x2d69
    push word [si + 0xb]             ; 0x2d6a
    call aztec_free                  ; 0x2d6d
    pop cx                           ; 0x2d70
.forward4:
    mov ax, 0                        ; 0x2d71
    mov word [si], 0                 ; 0x2d74
    mov word [si + 2], ax            ; 0x2d78
    mov word [si + 4], ax            ; 0x2d7b
    mov byte [si + 6], 0             ; 0x2d7e
    mov ax, di                       ; 0x2d82
    jmp short .back1                 ; 0x2d84
