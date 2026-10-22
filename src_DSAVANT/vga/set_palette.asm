; auto-generated
set_palette:
    push bp                          ; 0x2acf
    mov bp, sp                       ; 0x2ad0
    sub sp, byte 8                   ; 0x2ad2
    push ds                          ; 0x2ad5
    push es                          ; 0x2ad6
    push di                          ; 0x2ad7
    push si                          ; 0x2ad8
    mov ax, ds                       ; 0x2ad9
    mov es, ax                       ; 0x2adb
    les di, word [cs:palette_ptr - IMAGE_BASE] ; 0x2add
    mov si, word [bp + 0xc]          ; 0x2ae2
    mov cx, 0x300                    ; 0x2ae5
    rep movsb                        ; 0x2ae8
    mov ax, cs                       ; 0x2aea
    mov es, ax                       ; 0x2aec
    mov di, rgb_to_palette - IMAGE_BASE ; 0x2aee
    mov si, word [bp + 0xe]          ; 0x2af1
    mov cx, 0x200                    ; 0x2af4
    rep movsb                        ; 0x2af7
    pop si                           ; 0x2af9
    pop di                           ; 0x2afa
    pop es                           ; 0x2afb
    pop ds                           ; 0x2afc
    mov sp, bp                       ; 0x2afd
    pop bp                           ; 0x2aff
    ret                              ; 0x2b00
