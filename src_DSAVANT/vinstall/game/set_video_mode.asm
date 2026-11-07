; auto-generated
set_video_mode:
    push bp                          ; 0x06f1
    mov bp, sp                       ; 0x06f2
    add sp, byte -16                 ; 0x06f4
    mov ax, word [bp + 4]            ; 0x06f7
    mov word [bp - 0x10], ax         ; 0x06fa
    lea ax, word [bp - 0x10]         ; 0x06fd
    push ax                          ; 0x0700
    push ax                          ; 0x0701
    mov ax, 0x10                     ; 0x0702
    push ax                          ; 0x0705
    call sysint                ; 0x0706
    add sp, byte 6                   ; 0x0709
    mov sp, bp                       ; 0x070c
    pop bp                           ; 0x070e
    ret                              ; 0x070f
