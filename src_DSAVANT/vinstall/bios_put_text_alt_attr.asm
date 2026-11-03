; auto-generated
bios_put_text_alt_attr:
    push bp                          ; 0x266f
    mov bp, sp                       ; 0x2670
    push di                          ; 0x2672
    push si                          ; 0x2673
    mov bx, word [bp + 4]            ; 0x2674
.back1:
    mov al, byte [bx]                ; 0x2677
    or al, al                        ; 0x2679
    je short .forward3               ; 0x267b
    push bx                          ; 0x267d
    cmp al, 0xa                      ; 0x267e
    jne short .forward1              ; 0x2680
    mov ah, 3                        ; 0x2682
    mov bh, 0                        ; 0x2684
    int 0x10 ; BIOS video: get cursor position
    mov dl, 0                        ; 0x2688
    inc dh                           ; 0x268a
    mov ah, 3                        ; 0x268c
    mov bh, 0                        ; 0x268e
    mov ah, 2                        ; 0x2690
    int 0x10 ; BIOS video: set cursor position
    jmp short .forward2              ; 0x2694
.forward1:
    mov ah, 9                        ; 0x2696
    mov bl, byte [bss_2646]          ; 0x2698
    mov bh, 0                        ; 0x269c
    mov cx, 1                        ; 0x269e
    int 0x10 ; BIOS video: write char/attribute
    mov ah, 3                        ; 0x26a3
    mov bh, 0                        ; 0x26a5
    int 0x10 ; BIOS video: get cursor position
    inc dl                           ; 0x26a9
    mov ah, 3                        ; 0x26ab
    mov bh, 0                        ; 0x26ad
    mov ah, 2                        ; 0x26af
    int 0x10 ; BIOS video: set cursor position
.forward2:
    pop bx                           ; 0x26b3
    inc bx                           ; 0x26b4
    jmp short .back1                 ; 0x26b5
.forward3:
    pop si                           ; 0x26b7
    pop di                           ; 0x26b8
    mov sp, bp                       ; 0x26b9
    pop bp                           ; 0x26bb
    ret                              ; 0x26bc
