; auto-generated
bios_video_loc_27d0:
    push bp                          ; 0x27d0
    mov bp, sp                       ; 0x27d1
    push ds                          ; 0x27d3
    push es                          ; 0x27d4
    push si                          ; 0x27d5
    push di                          ; 0x27d6
    mov ax, ds                       ; 0x27d7
    mov es, ax                       ; 0x27d9
    mov bx, word [bp + 0xc]          ; 0x27db
    mov ax, 0x1015                   ; 0x27de
    int 0x10 ; BIOS video
    mov bx, word [bp + 0xe]          ; 0x27e3
    xor ah, ah                       ; 0x27e6
    mov al, dh                       ; 0x27e8
    mov word [bx], ax                ; 0x27ea
    mov al, ch                       ; 0x27ec
    mov bx, word [bp + 0x10]         ; 0x27ee
    mov word [bx], ax                ; 0x27f1
    mov al, cl                       ; 0x27f3
    mov bx, word [bp + 0x12]         ; 0x27f5
    mov word [bx], ax                ; 0x27f8
    pop di                           ; 0x27fa
    pop si                           ; 0x27fb
    pop es                           ; 0x27fc
    pop ds                           ; 0x27fd
    mov sp, bp                       ; 0x27fe
    pop bp                           ; 0x2800
    ret                              ; 0x2801
