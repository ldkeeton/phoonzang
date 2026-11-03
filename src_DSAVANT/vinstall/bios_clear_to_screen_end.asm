; auto-generated
bios_clear_to_screen_end:
    push bp                          ; 0x256a
    mov bp, sp                       ; 0x256b
    push di                          ; 0x256d
    push si                          ; 0x256e
    mov bx, word [bp + 4]            ; 0x256f
    mov dx, word [bp + 6]            ; 0x2572
    push bx                          ; 0x2575
    push dx                          ; 0x2576
    mov dh, bl                       ; 0x2577
    mov bh, 0                        ; 0x2579
    mov ah, 2                        ; 0x257b
    int 0x10 ; BIOS video: set cursor position
    mov ax, 0x50                     ; 0x257f
    pop bx                           ; 0x2582
    sub ax, bx                       ; 0x2583
    mov si, ax                       ; 0x2585
    mov ax, 0x18                     ; 0x2587
    pop bx                           ; 0x258a
    sub ax, bx                       ; 0x258b
    mov bl, 0x50                     ; 0x258d
    imul bl                          ; 0x258f
    add ax, si                       ; 0x2591
    mov cx, ax                       ; 0x2593
    mov ax, 0x920                    ; 0x2595
    mov bl, byte [bss_2647]          ; 0x2598
    mov bh, 0                        ; 0x259c
    int 0x10 ; BIOS video
    pop si                           ; 0x25a0
    pop di                           ; 0x25a1
    mov sp, bp                       ; 0x25a2
    pop bp                           ; 0x25a4
    ret                              ; 0x25a5
