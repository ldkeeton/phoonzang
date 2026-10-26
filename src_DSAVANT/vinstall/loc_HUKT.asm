; auto-generated
loc_HUKT:
    push bp                          ; 0x0cd6
    mov bp, sp                       ; 0x0cd7
    push si                          ; 0x0cd9
.back1:
    mov ax, word [bp + 6]            ; 0x0cda
    inc ax                           ; 0x0cdd
    mov cx, 5                        ; 0x0cde
    cwd                              ; 0x0ce1
    idiv cx                          ; 0x0ce2
    mov word [bp + 6], dx            ; 0x0ce4
    mov bx, word [bp + 8]            ; 0x0ce7
    mov si, word [bp + 6]            ; 0x0cea
    cmp byte [bx + si], 0x30         ; 0x0ced
    je short .back1                  ; 0x0cf0
    mov ax, word [bp + 6]            ; 0x0cf2
    shl ax, 1                        ; 0x0cf5
    mov bx, ax                       ; 0x0cf7
    push word [bx + 0x160]           ; 0x0cf9
    mov ax, 0x16                     ; 0x0cfd
    push ax                          ; 0x0d00
    push word [bp + 4]               ; 0x0d01
    call put_text_at                 ; 0x0d04
    add sp, byte 6                   ; 0x0d07
    mov ax, word [bp + 6]            ; 0x0d0a
    pop si                           ; 0x0d0d
    mov sp, bp                       ; 0x0d0e
    pop bp                           ; 0x0d10
    ret                              ; 0x0d11
