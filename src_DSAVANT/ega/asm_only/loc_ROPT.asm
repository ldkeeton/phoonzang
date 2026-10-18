; auto-generated
; asm only
loc_ROPT:
    push bp                          ; 0x3570
    mov bp, sp                       ; 0x3571
    sub sp, byte 8                   ; 0x3573
    push ds                          ; 0x3576
    push es                          ; 0x3577
    push di                          ; 0x3578
    push si                          ; 0x3579
    mov ax, ds                       ; 0x357a
    mov es, ax                       ; 0x357c
    mov ax, word [bp + 0xc]          ; 0x357e
    neg ax                           ; 0x3581
    cmp ax, strict word 5            ; 0x3583
    jb short @..loc_ROPT.l1          ; 0x3586
    jmp near @..loc_ROPT.l3          ; 0x3588
@..loc_ROPT.l1:
    shl ax, 1                        ; 0x358b
    mov word [bp - 0x0008], ax       ; 0x358d
    mov bx, cseg_0151 - IMAGE_BASE   ; 0x3590
    add bx, ax                       ; 0x3593
    mov ax, word [cs:bx]             ; 0x3595
    or ax, ax                        ; 0x3598
    jne short @..loc_ROPT.l2         ; 0x359a
    jmp near @..loc_ROPT.l3          ; 0x359c
@..loc_ROPT.l2:
    mov word [cs:bx], 0              ; 0x359f
    mov cx, word [cs:cseg_10cb - IMAGE_BASE] ; 0x35a4
    dec cx                           ; 0x35a9
    mov word [cs:cseg_10cb - IMAGE_BASE], cx ; 0x35aa
    call loc_PPJL                    ; 0x35af
@..loc_ROPT.l3:
    pop si                           ; 0x35b2
    pop di                           ; 0x35b3
    pop es                           ; 0x35b4
    pop ds                           ; 0x35b5
    mov sp, bp                       ; 0x35b6
    pop bp                           ; 0x35b8
    ret                              ; 0x35b9
