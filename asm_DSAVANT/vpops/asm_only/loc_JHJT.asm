; auto-generated
; asm only
loc_JHJT:
    pop word [dseg_90d4]             ; 0x4e9d
    pop cx                           ; 0x4ea1
    mov word [dseg_90d0], sp         ; 0x4ea2
    mov word [dseg_90d2], bp         ; 0x4ea6
    mov word [dseg_90cc], si         ; 0x4eaa
    mov word [dseg_90ce], di         ; 0x4eae
    cld                              ; 0x4eb2
    mov di, bss_90d6                 ; 0x4eb3
    mov cx, 0x938e                   ; 0x4eb6
    sub cx, di                       ; 0x4eb9
    shr cx, 1                        ; 0x4ebb
    je short @..loc_JHJT.l1          ; 0x4ebd
    sub ax, ax                       ; 0x4ebf
    rep stosw                        ; 0x4ec1
@..loc_JHJT.l1:
    call loc_PTRJ                    ; 0x4ec3
    mov bp, word [dseg_90d2]         ; 0x4ec6
    mov sp, word [dseg_90d0]         ; 0x4eca
    mov si, word [dseg_90cc]         ; 0x4ece
    mov di, word [dseg_90ce]         ; 0x4ed2
    push cx                          ; 0x4ed6
    jmp [dseg_90d4]                  ; 0x4ed7
