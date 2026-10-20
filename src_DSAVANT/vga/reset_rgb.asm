; auto-generated
reset_rgb:
    push bp                          ; 0x29f6
    mov bp, sp                       ; 0x29f7
    sub sp, byte 0x0a                ; 0x29f9
    push ds                          ; 0x29fc
    push es                          ; 0x29fd
    push si                          ; 0x29fe
    push di                          ; 0x29ff
    mov ax, ds                       ; 0x2a00
    mov es, ax                       ; 0x2a02
    mov ax, word [bp + 0xc]          ; 0x2a04
    cmp ax, strict word 0xffff       ; 0x2a07
    jne short @..reset_rgb.l3        ; 0x2a0a
    lds si, word [cs:cseg_00f7 - IMAGE_BASE] ; 0x2a0c
    mov cx, 0x300                    ; 0x2a11
    mov dx, 0x3c8                    ; 0x2a14
    mov al, 0                        ; 0x2a17
    out dx, al                       ; 0x2a19
@..reset_rgb.l1:
    mov dx, 0x3da                    ; 0x2a1a
    in al, dx                        ; 0x2a1d
    test al, 1                       ; 0x2a1e
    jne short @..reset_rgb.l1        ; 0x2a20
@..reset_rgb.l2:
    mov dx, 0x3da                    ; 0x2a22
    in al, dx                        ; 0x2a25
    test al, 1                       ; 0x2a26
    je short @..reset_rgb.l2         ; 0x2a28
    lodsb                            ; 0x2a2a
    mov dx, 0x3c9                    ; 0x2a2b
    out dx, al                       ; 0x2a2e
    loop @..reset_rgb.l1             ; 0x2a2f
    jmp short @..reset_rgb.l8        ; 0x2a31
@..reset_rgb.l3:
    mov ah, 0x48                     ; 0x2a33
    mov bx, 0x30                     ; 0x2a35
    int 0x21 ; DOS allocate memory
    jae short @..reset_rgb.l4        ; 0x2a3a
    jmp near dos_con_loc_HJPN        ; 0x2a3c
@..reset_rgb.l4:
    mov word [bp - 0x0002], ax       ; 0x2a3f
    mov ds, ax                       ; 0x2a42
    xor di, di                       ; 0x2a44
    mov ax, word [bp + 0xc]          ; 0x2a46
    mov bx, word [bp + 0xe]          ; 0x2a49
    mov dx, word [bp + 0x10]         ; 0x2a4c
    mov cx, 0x100                    ; 0x2a4f
@..reset_rgb.l5:
    mov byte [di], al                ; 0x2a52
    mov byte [di + 0x1], bl          ; 0x2a54
    mov byte [di + 0x2], dl          ; 0x2a57
    add di, byte 3                   ; 0x2a5a
    loop @..reset_rgb.l5             ; 0x2a5d
    mov ax, word [bp - 0x0002]       ; 0x2a5f
    mov ds, ax                       ; 0x2a62
    xor si, si                       ; 0x2a64
    mov cx, 0x300                    ; 0x2a66
    mov dx, 0x3c8                    ; 0x2a69
    mov al, 0                        ; 0x2a6c
    out dx, al                       ; 0x2a6e
@..reset_rgb.l6:
    mov dx, 0x3da                    ; 0x2a6f
    in al, dx                        ; 0x2a72
    test al, 1                       ; 0x2a73
    jne short @..reset_rgb.l6        ; 0x2a75
@..reset_rgb.l7:
    mov dx, 0x3da                    ; 0x2a77
    in al, dx                        ; 0x2a7a
    test al, 1                       ; 0x2a7b
    je short @..reset_rgb.l7         ; 0x2a7d
    lodsb                            ; 0x2a7f
    mov dx, 0x3c9                    ; 0x2a80
    out dx, al                       ; 0x2a83
    loop @..reset_rgb.l6             ; 0x2a84
    mov bx, word [bp - 0x0002]       ; 0x2a86
    mov es, bx                       ; 0x2a89
    mov ah, 0x49                     ; 0x2a8b
    int 0x21 ; DOS free memory
@..reset_rgb.l8:
    pop di                           ; 0x2a8f
    pop si                           ; 0x2a90
    pop es                           ; 0x2a91
    pop ds                           ; 0x2a92
    mov sp, bp                       ; 0x2a93
    pop bp                           ; 0x2a95
    ret                              ; 0x2a96
