; auto-generated
; asm only
aztec_brk:
    push bp ; brk(addr):	set current top address to addr / returns 0 if ok, -1 if error ; 0x3a39
    mov bp, sp                       ; 0x3a3a
    mov ax, word [bp + 0x4]          ; 0x3a3c
    inc ax                           ; 0x3a3f
    and al, 0xfe                     ; 0x3a40
    cmp ax, word [dseg_24dc]         ; 0x3a42
    jb short @..aztec_brk.brk_ov     ; 0x3a46
    cmp word [dseg_2518], byte 0     ; 0x3a48
    jne short @..aztec_brk.abovestk  ; 0x3a4d
    mov bx, sp                       ; 0x3a4f
    sub bx, word [dseg_2514]         ; 0x3a51
    cmp ax, bx                       ; 0x3a55
    jae short @..aztec_brk.brk_ov    ; 0x3a57
    mov word [dseg_24d4], ax ; new value is good so save it away ; 0x3a59
    add ax, word [dseg_2514]         ; 0x3a5c
    mov word [dseg_24de], ax ; save as new value for safety check ; 0x3a60
@..aztec_brk.brk_ok2:
    sub ax, ax                       ; 0x3a63
    pop bp                           ; 0x3a65
    ret                              ; 0x3a66
@..aztec_brk.abovestk:
    cmp ax, word [dseg_24e0] ; heap is above stack ; 0x3a67
    ja short @..aztec_brk.getstore   ; 0x3a6b
    cmp ax, word [dseg_24d4]         ; 0x3a6d
    jb short @..aztec_brk.getstore   ; 0x3a71
    mov word [dseg_24d4], ax ; new value is good so save it away ; 0x3a73
    jmp short @..aztec_brk.brk_ok2   ; 0x3a76
@..aztec_brk.getstore:
    push ax ; going to do a SETBLOCK call ; 0x3a78
    mov bx, ax                       ; 0x3a79
    mov cx, 4                        ; 0x3a7b
    shr bx, cl                       ; 0x3a7e
    and bx, strict word 0xfff        ; 0x3a80
    add bx, byte 0x41 ; bump to nearest 1k increment ; 0x3a84
    and bx, strict word 0xffc0 ; and round ; 0x3a87
    push bx                          ; 0x3a8b
    push es                          ; 0x3a8c
    mov cx, ds                       ; 0x3a8d
    add bx, cx ; get actual paragraph address ; 0x3a8f
    mov es, word [dseg_24e4]         ; 0x3a91
    sub bx, word [dseg_24e4]         ; 0x3a95
    mov ah, 0x4a                     ; 0x3a99
    int 0x21 ; DOS resize memory block
    pop es                           ; 0x3a9d
    pop bx                           ; 0x3a9e
    pop ax                           ; 0x3a9f
    jb short @..aztec_brk.brk_ov ; couldn't do it, so punt ; 0x3aa0
    mov word [dseg_24d4], ax         ; 0x3aa2
    test bx, 0xe000                  ; 0x3aa5
    jne short @..aztec_brk.brk_ov    ; 0x3aa9
    mov cx, 4                        ; 0x3aab
    shl bx, cl                       ; 0x3aae
    mov word [dseg_24e0], bx         ; 0x3ab0
    sub ax, ax                       ; 0x3ab4
    pop bp                           ; 0x3ab6
    ret                              ; 0x3ab7
@..aztec_brk.brk_ov:
    mov word [dseg_24d6], 0xfff8 ; invalid request ; 0x3ab8
    mov ax, 0xffff                   ; 0x3abe
    test ax, ax                      ; 0x3ac1
    pop bp                           ; 0x3ac3
    ret                              ; 0x3ac4
