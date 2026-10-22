; auto-generated
free_picture:
    push bp                          ; 0x303d
    mov bp, sp                       ; 0x303e
    sub sp, byte 8                   ; 0x3040
    push ds                          ; 0x3043
    push es                          ; 0x3044
    push di                          ; 0x3045
    push si                          ; 0x3046
    mov ax, ds                       ; 0x3047
    mov es, ax                       ; 0x3049
    mov ax, word [bp + 0xc]          ; 0x304b
    cmp ax, strict word 0x14         ; 0x304e
    jb short @..free_picture.l1      ; 0x3051
    jmp near @..free_picture.l3      ; 0x3053
@..free_picture.l1:
    shl ax, 1                        ; 0x3056
    mov word [bp - 0x0008], ax       ; 0x3058
    mov bx, cseg_0129 - IMAGE_BASE   ; 0x305b
    add bx, ax                       ; 0x305e
    mov ax, word [cs:bx]             ; 0x3060
    or ax, ax                        ; 0x3063
    jne short @..free_picture.l2     ; 0x3065
    jmp near @..free_picture.l3      ; 0x3067
@..free_picture.l2:
    mov word [cs:bx], 0              ; 0x306a
    mov cx, word [cs:maze_block_count - IMAGE_BASE] ; 0x306f
    dec cx                           ; 0x3074
    mov word [cs:maze_block_count - IMAGE_BASE], cx ; 0x3075
    call loc_PPJL                    ; 0x307a
@..free_picture.l3:
    pop si                           ; 0x307d
    pop di                           ; 0x307e
    pop es                           ; 0x307f
    pop ds                           ; 0x3080
    mov sp, bp                       ; 0x3081
    pop bp                           ; 0x3083
    ret                              ; 0x3084
