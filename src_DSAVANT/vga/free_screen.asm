; auto-generated
free_screen:
    push bp                          ; 0x2cbe
    mov bp, sp                       ; 0x2cbf
    sub sp, byte 8                   ; 0x2cc1
    push ds                          ; 0x2cc4
    push es                          ; 0x2cc5
    push di                          ; 0x2cc6
    push si                          ; 0x2cc7
    mov ax, ds                       ; 0x2cc8
    mov es, ax                       ; 0x2cca
    mov ax, word [bp + 0xc]          ; 0x2ccc
    neg ax                           ; 0x2ccf
    cmp ax, strict word 5            ; 0x2cd1
    jb short @..free_screen.l1       ; 0x2cd4
    jmp near @..free_screen.l3       ; 0x2cd6
@..free_screen.l1:
    shl ax, 1                        ; 0x2cd9
    mov word [bp - 0x0008], ax       ; 0x2cdb
    mov bx, data_0251                ; 0x2cde
    add bx, ax                       ; 0x2ce1
    mov ax, word [cs:bx]             ; 0x2ce3
    or ax, ax                        ; 0x2ce6
    jne short @..free_screen.l2      ; 0x2ce8
    jmp near @..free_screen.l3       ; 0x2cea
@..free_screen.l2:
    mov word [cs:bx], 0              ; 0x2ced
    mov cx, word [cs:cseg_0baa - IMAGE_BASE] ; 0x2cf2
    dec cx                           ; 0x2cf7
    mov word [cs:cseg_0baa - IMAGE_BASE], cx ; 0x2cf8
    call loc_PPJL                    ; 0x2cfd
@..free_screen.l3:
    pop si                           ; 0x2d00
    pop di                           ; 0x2d01
    pop es                           ; 0x2d02
    pop ds                           ; 0x2d03
    mov sp, bp                       ; 0x2d04
    pop bp                           ; 0x2d06
    ret                              ; 0x2d07
