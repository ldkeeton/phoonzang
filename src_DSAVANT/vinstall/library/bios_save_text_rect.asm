; auto-generated
bios_save_text_rect:
    push bp                          ; 0x2747
    mov bp, sp                       ; 0x2748
    push di                          ; 0x274a
    push si                          ; 0x274b
    mov bx, word [bp + 0xc]          ; 0x274c
    dec word [bp + 4]                ; 0x274f
    dec word [bp + 6]                ; 0x2752
    mov dx, word [bp + 6]            ; 0x2755
    mov ax, word [bp + 4]            ; 0x2758
    mov dh, al                       ; 0x275b
    push dx                          ; 0x275d
    mov word [bp + 4], dx            ; 0x275e
    mov word [bx], dx                ; 0x2761
    add bx, byte 2                   ; 0x2763
    mov cx, word [bp + 0xa]          ; 0x2766
    mov word [bx], cx                ; 0x2769
    add bx, byte 2                   ; 0x276b
    mov cx, word [bp + 8]            ; 0x276e
    mov word [bx], cx                ; 0x2771
    add bx, byte 2                   ; 0x2773
    push cx                          ; 0x2776
.back1:
    mov si, cx                       ; 0x2777
    mov di, bx                       ; 0x2779
    mov dx, word [bp + 4]            ; 0x277b
    inc word [bp + 4]                ; 0x277e
    xor bx, bx                       ; 0x2781
    mov ah, 2                        ; 0x2783
    int 0x10 ; BIOS video: set cursor position
    mov ah, 8                        ; 0x2787
    int 0x10 ; BIOS video: read char/attribute
    mov bx, di                       ; 0x278b
    mov word [bx], ax                ; 0x278d
    add bx, byte 2                   ; 0x278f
    mov cx, si                       ; 0x2792
    loop .back1                      ; 0x2794
    pop cx                           ; 0x2796
    pop dx                           ; 0x2797
    inc dh                           ; 0x2798
    dec word [bp + 0xa]              ; 0x279a
    je short .forward1               ; 0x279d
    push dx                          ; 0x279f
    push cx                          ; 0x27a0
    jmp short .back1                 ; 0x27a1
.forward1:
    pop si                           ; 0x27a3
    pop di                           ; 0x27a4
    mov sp, bp                       ; 0x27a5
    pop bp                           ; 0x27a7
    ret                              ; 0x27a8
