; auto-generated
loc_GUUT:
    mov ax, 0                        ; 0xaad3
    call aztec_csav                  ; 0xaad6
    mov ax, 0x26                     ; 0xaad9
    imul word [bp + 0x4]             ; 0xaadc
    mov bx, ax                       ; 0xaadf
    cmp byte [bx - 0x7b00], 0        ; 0xaae1
    jg short @..loc_GUUT.l1          ; 0xaae6
    ret                              ; 0xaae8
@..loc_GUUT.l1:
    mov al, byte [bx - 0x7b16]       ; 0xaae9
    sub ah, ah                       ; 0xaaed
    jmp near @..loc_GUUT.l3          ; 0xaaef
    push word [bp + 0x4]             ; 0xaaf2
    call api_idx_0004_VPTK           ; 0xaaf5
    pop cx                           ; 0xaaf8
    jmp near @..loc_GUUT.l4          ; 0xaaf9
    mov ax, 5                        ; 0xaafc
    push ax                          ; 0xaaff
    push ax                          ; 0xab00
    push word [bp + 0x4]             ; 0xab01
    call api_idx_0002_NIML           ; 0xab04
    add sp, byte 6                   ; 0xab07
    jmp near @..loc_GUUT.l4          ; 0xab0a
    push word [bp + 0x4]             ; 0xab0d
    call api_idx_0010_MJQQ           ; 0xab10
    pop cx                           ; 0xab13
    jmp near @..loc_GUUT.l4          ; 0xab14
    mov ax, 0xffff                   ; 0xab17
    push ax                          ; 0xab1a
    push word [bp + 0x4]             ; 0xab1b
    call api_idx_0002_OLGP           ; 0xab1e
    add sp, byte 4                   ; 0xab21
    jmp short @..loc_GUUT.l4         ; 0xab24
    push word [bp + 0x4]             ; 0xab26
    call api_idx_0002_OQKH           ; 0xab29
    pop cx                           ; 0xab2c
    jmp short @..loc_GUUT.l4         ; 0xab2d
    mov ax, 0x26                     ; 0xab2f
    imul word [bp + 0x4]             ; 0xab32
    mov bx, ax                       ; 0xab35
    mov al, byte [bx - 0x7b12]       ; 0xab37
    sub ah, ah                       ; 0xab3b
    push ax                          ; 0xab3d
    push word [bp + 0x4]             ; 0xab3e
    call api_idx_0002_OLGP           ; 0xab41
    add sp, byte 4                   ; 0xab44
    jmp short @..loc_GUUT.l4         ; 0xab47
    push word [bp + 0x4]             ; 0xab49
    call loc_USOV                    ; 0xab4c
    pop cx                           ; 0xab4f
    jmp short @..loc_GUUT.l4         ; 0xab50
    mov ax, 0xffff                   ; 0xab52
    push ax                          ; 0xab55
    push word [bp + 0x4]             ; 0xab56
    call api_idx_0002_OLGP           ; 0xab59
    add sp, byte 4                   ; 0xab5c
    mov ax, 0x26                     ; 0xab5f
    imul word [bp + 0x4]             ; 0xab62
    mov bx, ax                       ; 0xab65
    cmp byte [bx - 0x7b16], 7        ; 0xab67
    jne short @..loc_GUUT.l2         ; 0xab6c
    mov ax, 0xffff                   ; 0xab6e
    push ax                          ; 0xab71
    push word [bp + 0x4]             ; 0xab72
    call api_idx_0002_OLGP           ; 0xab75
    add sp, byte 4                   ; 0xab78
@..loc_GUUT.l2:
    jmp short @..loc_GUUT.l4         ; 0xab7b
    db 0x39, 0xfb, 0x43, 0xfb, 0x54, 0xfb, 0x5e
