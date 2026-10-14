; auto-generated
loc_0f6f:
    push bp                          ; 0x0f6f
    mov bp, sp                       ; 0x0f70
    sub sp, byte 8                   ; 0x0f72
    push ds                          ; 0x0f75
    push es                          ; 0x0f76
    push di                          ; 0x0f77
    push si                          ; 0x0f78
    mov ax, ds                       ; 0x0f79
    mov es, ax                       ; 0x0f7b
    mov ax, word [bp + 0xc]          ; 0x0f7d
    cmp ax, strict word 0xa          ; 0x0f80
    jb short @..loc_0f6f.l1          ; 0x0f83
    jmp near @..loc_0f6f.l3          ; 0x0f85
@..loc_0f6f.l1:
    shl ax, 1                        ; 0x0f88
    mov word [bp - 0x0008], ax       ; 0x0f8a
    mov bx, data_0bc6                ; 0x0f8d
    add bx, ax                       ; 0x0f90
    mov ax, word [cs:bx]             ; 0x0f92
    or ax, ax                        ; 0x0f95
    jne short @..loc_0f6f.l2         ; 0x0f97
    jmp near @..loc_0f6f.l3          ; 0x0f99
@..loc_0f6f.l2:
    mov word [cs:bx], 0              ; 0x0f9c
    mov cx, word [cs:cseg_0caa - IMAGE_BASE] ; 0x0fa1
    dec cx                           ; 0x0fa6
    mov word [cs:cseg_0caa - IMAGE_BASE], cx ; 0x0fa7
    call loc_43e1                    ; 0x0fac
@..loc_0f6f.l3:
    pop si                           ; 0x0faf
    pop di                           ; 0x0fb0
    pop es                           ; 0x0fb1
    pop ds                           ; 0x0fb2
    mov sp, bp                       ; 0x0fb3
    pop bp                           ; 0x0fb5
    ret                              ; 0x0fb6
