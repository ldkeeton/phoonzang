; auto-generated
aztec_freopen:
    push bp                          ; 0x2bfe
    mov bp, sp                       ; 0x2bff
    push di                          ; 0x2c01
    push si                          ; 0x2c02
    push word [bp + 8]               ; 0x2c03
    call aztec_fclose                ; 0x2c06
    pop cx                           ; 0x2c09
    mov si, modes                    ; 0x2c0a
.back1:
    cmp byte [si], 0                 ; 0x2c0d
    jne short .forward1              ; 0x2c10
    mov word [errno], 1              ; 0x2c12
    mov ax, 0                        ; 0x2c18
.back2:
    pop si                           ; 0x2c1b
    pop di                           ; 0x2c1c
    mov sp, bp                       ; 0x2c1d
    pop bp                           ; 0x2c1f
    ret                              ; 0x2c20
.forward1:
    push word [bp + 6]               ; 0x2c21
    push si                          ; 0x2c24
    call aztec_strcmp                ; 0x2c25
    add sp, byte 4                   ; 0x2c28
    test ax, ax                      ; 0x2c2b
    je short .forward2               ; 0x2c2d
    add si, byte 5                   ; 0x2c2f
    jmp short .back1                 ; 0x2c32
.forward2:
    push word [si + 3]               ; 0x2c34
    push word [bp + 4]               ; 0x2c37
    call aztec_open                  ; 0x2c3a
    add sp, byte 4                   ; 0x2c3d
    mov di, ax                       ; 0x2c40
    mov ax, di                       ; 0x2c42
    cmp ax, strict word 0xffff       ; 0x2c44
    jne short .forward3              ; 0x2c47
    mov ax, 0                        ; 0x2c49
    jmp short .back2                 ; 0x2c4c
.forward3:
    mov ax, di                       ; 0x2c4e
    mov bx, word [bp + 8]            ; 0x2c50
    mov byte [bx + 7], al            ; 0x2c53
    mov bx, word [bp + 8]            ; 0x2c56
    mov byte [bx + 6], 1             ; 0x2c59
    mov ax, word [bp + 8]            ; 0x2c5d
    jmp short .back2                 ; 0x2c60
