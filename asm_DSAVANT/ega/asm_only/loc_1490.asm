; auto-generated
; asm only
loc_1490:
    push bp                          ; 0x1490
    mov bp, sp                       ; 0x1491
    sub sp, byte 8                   ; 0x1493
    push ds                          ; 0x1496
    push es                          ; 0x1497
    push di                          ; 0x1498
    push si                          ; 0x1499
    mov ax, ds                       ; 0x149a
    mov es, ax                       ; 0x149c
    mov ax, word [bp + 0xc]          ; 0x149e
    cmp ax, strict word 0xa          ; 0x14a1
    jb short @..loc_1490.l1          ; 0x14a4
    jmp near @..loc_1490.l3          ; 0x14a6
@..loc_1490.l1:
    shl ax, 1                        ; 0x14a9
    mov word [bp - 0x0008], ax       ; 0x14ab
    mov bx, 0x10e7                   ; 0x14ae
    add bx, ax                       ; 0x14b1
    mov ax, word [cs:bx]             ; 0x14b3
    or ax, ax                        ; 0x14b6
    jne short @..loc_1490.l2         ; 0x14b8
    jmp near @..loc_1490.l3          ; 0x14ba
@..loc_1490.l2:
    mov word [cs:bx], 0              ; 0x14bd
    mov cx, word [cs:cseg_11cb - IMAGE_BASE] ; 0x14c2
    dec cx                           ; 0x14c7
    mov word [cs:cseg_11cb - IMAGE_BASE], cx ; 0x14c8
    call loc_4c93                    ; 0x14cd
@..loc_1490.l3:
    pop si                           ; 0x14d0
    pop di                           ; 0x14d1
    pop es                           ; 0x14d2
    pop ds                           ; 0x14d3
    mov sp, bp                       ; 0x14d4
    pop bp                           ; 0x14d6
    ret                              ; 0x14d7
