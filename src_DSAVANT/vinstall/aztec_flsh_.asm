; auto-generated
aztec_flsh_:
    push bp                          ; 0x2d86
    mov bp, sp                       ; 0x2d87
    push di                          ; 0x2d89
    push si                          ; 0x2d8a
    mov si, word [bp + 0x4]          ; 0x2d8b
    mov word [cls_], aztec_closall - IMAGE_BASE ; 0x2d8e
    mov al, byte [si + 0x6]          ; 0x2d94
    cbw                              ; 0x2d97
    test ax, 0x10                    ; 0x2d98
    je short @..aztec_flsh_.l2       ; 0x2d9b
    mov ax, 0xffff                   ; 0x2d9d
@..aztec_flsh_.l1:
    pop si                           ; 0x2da0
    pop di                           ; 0x2da1
    mov sp, bp                       ; 0x2da2
    pop bp                           ; 0x2da4
    ret                              ; 0x2da5
@..aztec_flsh_.l2:
    mov al, byte [si + 0x6]          ; 0x2da6
    cbw                              ; 0x2da9
    test ax, 4                       ; 0x2daa
    je short @..aztec_flsh_.l4       ; 0x2dad
    mov di, word [si]                ; 0x2daf
    sub di, word [si + 0x4]          ; 0x2db1
    push di                          ; 0x2db4
    push word [si + 0x4]             ; 0x2db5
    mov al, byte [si + 0x7]          ; 0x2db8
    cbw                              ; 0x2dbb
    push ax                          ; 0x2dbc
    call aztec_write                 ; 0x2dbd
    add sp, byte 6                   ; 0x2dc0
    cmp ax, di                       ; 0x2dc3
    je short @..aztec_flsh_.l4       ; 0x2dc5
@..aztec_flsh_.l3:
    or byte [si + 0x6], 0x10         ; 0x2dc7
    mov ax, 0                        ; 0x2dcb
    mov word [si], 0                 ; 0x2dce
    mov word [si + 0x2], ax          ; 0x2dd2
    mov ax, 0xffff                   ; 0x2dd5
    jmp short @..aztec_flsh_.l1      ; 0x2dd8
@..aztec_flsh_.l4:
    cmp word [bp + 0x6], byte 0xff   ; 0x2dda
    jne short @..aztec_flsh_.l5      ; 0x2dde
    and byte [si + 0x6], 0xfb        ; 0x2de0
    mov ax, 0                        ; 0x2de4
    mov word [si], 0                 ; 0x2de7
    mov word [si + 0x2], ax          ; 0x2deb
    mov ax, 0                        ; 0x2dee
    jmp short @..aztec_flsh_.l1      ; 0x2df1
@..aztec_flsh_.l5:
    cmp word [si + 0x4], byte 0      ; 0x2df3
    jne short @..aztec_flsh_.l6      ; 0x2df7
    push si                          ; 0x2df9
    call aztec_getbuff               ; 0x2dfa
    pop cx                           ; 0x2dfd
@..aztec_flsh_.l6:
    cmp word [si + 0x9], byte 1      ; 0x2dfe
    jne short @..aztec_flsh_.l7      ; 0x2e02
    mov ax, 1                        ; 0x2e04
    push ax                          ; 0x2e07
    lea ax, word [bp + 0x6]          ; 0x2e08
    push ax                          ; 0x2e0b
    mov al, byte [si + 0x7]          ; 0x2e0c
    cbw                              ; 0x2e0f
    push ax                          ; 0x2e10
    call aztec_write                 ; 0x2e11
    add sp, byte 6                   ; 0x2e14
    cmp ax, strict word 1            ; 0x2e17
    jne short @..aztec_flsh_.l3      ; 0x2e1a
    mov ax, word [bp + 0x6]          ; 0x2e1c
    jmp near @..aztec_flsh_.l1       ; 0x2e1f
@..aztec_flsh_.l7:
    mov ax, word [si + 0x4]          ; 0x2e22
    mov word [si], ax                ; 0x2e25
    add ax, word [si + 0x9]          ; 0x2e27
    mov word [si + 0x2], ax          ; 0x2e2a
    or byte [si + 0x6], 4            ; 0x2e2d
    mov al, byte [bp + 0x6]          ; 0x2e31
    push ax                          ; 0x2e34
    mov ax, word [si]                ; 0x2e35
    inc word [si]                    ; 0x2e37
    mov bx, ax                       ; 0x2e39
    pop ax                           ; 0x2e3b
    mov byte [bx], al                ; 0x2e3c
    cbw                              ; 0x2e3e
    and ax, 0xff                     ; 0x2e3f
    jmp near @..aztec_flsh_.l1       ; 0x2e42
