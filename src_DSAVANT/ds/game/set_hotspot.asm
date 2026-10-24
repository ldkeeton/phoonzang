; auto-generated
set_hotspot: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x0ced
    call aztec_csav                  ; 0x0cf0
    mov al, byte [bp + 0xe]          ; 0x0cf3
    mov cx, word [bp + 0x4]          ; 0x0cf6
    shl cx, 1                        ; 0x0cf9
    mov bx, cx                       ; 0x0cfb
    mov byte [bx + hotspot_keys], al ; 0x0cfd
    mov al, byte [bp + 0x10]         ; 0x0d01
    mov byte [bx + hotspot_keys + 0x1], al ; 0x0d04
    mov ax, word [bp + 0x4]          ; 0x0d08
    shl ax, 1                        ; 0x0d0b
    shl ax, 1                        ; 0x0d0d
    mov word [bp + 0x4], ax          ; 0x0d0f
    mov ax, word [bp + 0x6]          ; 0x0d12
    mov cx, word [bp + 0x4]          ; 0x0d15
    shl cx, 1                        ; 0x0d18
    mov bx, cx                       ; 0x0d1a
    mov word [bx + hotspot_rects], ax ; 0x0d1c
    mov ax, word [bp + 0x8]          ; 0x0d20
    mov word [bx + hotspot_rects + 0x2], ax ; 0x0d23
    mov ax, word [bp + 0xa]          ; 0x0d27
    mov word [bx + hotspot_rects + 0x4], ax ; 0x0d2a
    mov ax, word [bp + 0xc]          ; 0x0d2e
    mov word [bx + hotspot_rects + 0x6], ax ; 0x0d31
    ret                              ; 0x0d35
