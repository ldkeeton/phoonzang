; auto-generated
; asm only
loc_ILNU:
    push bp                          ; 0x50d1
    mov bp, sp                       ; 0x50d2
    sub sp, byte 0x0a                ; 0x50d4
    push ds                          ; 0x50d7
    push es                          ; 0x50d8
    push si                          ; 0x50d9
    push di                          ; 0x50da
    mov ax, ds                       ; 0x50db
    mov es, ax                       ; 0x50dd
    mov ax, word [bp + 0xc]          ; 0x50df
    cmp ax, strict word 5            ; 0x50e2
    jb short @..loc_ILNU.l1          ; 0x50e5
    jmp near @..loc_ILNU.l3          ; 0x50e7
@..loc_ILNU.l1:
    shl ax, 1                        ; 0x50ea
    shl ax, 1                        ; 0x50ec
    mov bx, cseg_4e8b - IMAGE_BASE   ; 0x50ee
    add bx, ax                       ; 0x50f1
    mov ax, word [cs:bx]             ; 0x50f3
    or ax, ax                        ; 0x50f6
    jne short @..loc_ILNU.l2         ; 0x50f8
    jmp near @..loc_ILNU.l3          ; 0x50fa
@..loc_ILNU.l2:
    mov word [cs:bx], 0              ; 0x50fd
    mov cx, word [cs:cseg_10cb - IMAGE_BASE] ; 0x5102
    dec cx                           ; 0x5107
    mov word [cs:cseg_10cb - IMAGE_BASE], cx ; 0x5108
    call loc_PPJL                    ; 0x510d
@..loc_ILNU.l3:
    pop di                           ; 0x5110
    pop si                           ; 0x5111
    pop es                           ; 0x5112
    pop ds                           ; 0x5113
    mov sp, bp                       ; 0x5114
    pop bp                           ; 0x5116
    ret                              ; 0x5117
