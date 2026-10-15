; auto-generated
loc_HQPO:
    mov ax, 0xfefa                   ; 0x6dd9
    call aztec_csav                  ; 0x6ddc
@..loc_HQPO.l1:
    mov bx, word [bp + 0x4]          ; 0x6ddf
    mov al, byte [bx]                ; 0x6de2
    sub ah, ah                       ; 0x6de4
    push ax                          ; 0x6de6
    mov ax, 0x9114                   ; 0x6de7
    push ax                          ; 0x6dea
    call strpos                      ; 0x6deb
    add sp, byte 4                   ; 0x6dee
    mov word [bp - 0x0004], ax       ; 0x6df1
    cmp ax, strict word 0            ; 0x6df4
    jge short @..loc_HQPO.l2         ; 0x6df7
    jmp near @..loc_HQPO.l7          ; 0x6df9
@..loc_HQPO.l2:
    jmp near @..loc_HQPO.l5          ; 0x6dfc
