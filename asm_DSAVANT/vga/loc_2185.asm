; auto-generated
loc_2185:
    push bp                          ; 0x2185
    mov bp, sp                       ; 0x2186
    sub sp, byte 8                   ; 0x2188
    push ds                          ; 0x218b
    push es                          ; 0x218c
    push di                          ; 0x218d
    push si                          ; 0x218e
    mov ax, ds                       ; 0x218f
    mov es, ax                       ; 0x2191
    mov ax, word [bp + 0xc]          ; 0x2193
    cmp ax, strict word 0x14         ; 0x2196
    jb short @..loc_2185.l1          ; 0x2199
    jmp near @..loc_2185.l3          ; 0x219b
@..loc_2185.l1:
    shl ax, 1                        ; 0x219e
    mov word [bp - 0x0008], ax       ; 0x21a0
    mov bx, data_0229                ; 0x21a3
    add bx, ax                       ; 0x21a6
    mov ax, word [cs:bx]             ; 0x21a8
    or ax, ax                        ; 0x21ab
    jne short @..loc_2185.l2         ; 0x21ad
    jmp near @..loc_2185.l3          ; 0x21af
@..loc_2185.l2:
    mov word [cs:bx], 0              ; 0x21b2
    mov cx, word [cs:cseg_0caa - IMAGE_BASE] ; 0x21b7
    dec cx                           ; 0x21bc
    mov word [cs:cseg_0caa - IMAGE_BASE], cx ; 0x21bd
    call loc_43e1                    ; 0x21c2
@..loc_2185.l3:
    pop si                           ; 0x21c5
    pop di                           ; 0x21c6
    pop es                           ; 0x21c7
    pop ds                           ; 0x21c8
    mov sp, bp                       ; 0x21c9
    pop bp                           ; 0x21cb
    ret                              ; 0x21cc
