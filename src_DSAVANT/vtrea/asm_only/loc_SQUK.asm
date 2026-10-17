; auto-generated
; asm only
loc_SQUK:
    pop word [dseg_9112]             ; 0x99c5
    pop cx                           ; 0x99c9
    mov word [dseg_910e], sp         ; 0x99ca
    mov word [dseg_9110], bp         ; 0x99ce
    mov word [dseg_910a], si         ; 0x99d2
    mov word [dseg_910c], di         ; 0x99d6
    cld                              ; 0x99da
    mov di, bss_9114                 ; 0x99db
    mov cx, 0x96ba                   ; 0x99de
    sub cx, di                       ; 0x99e1
    shr cx, 1                        ; 0x99e3
    je short @..loc_SQUK.l1          ; 0x99e5
    sub ax, ax                       ; 0x99e7
    rep stosw                        ; 0x99e9
@..loc_SQUK.l1:
    call loc_IJTR                    ; 0x99eb
    mov bp, word [dseg_9110]         ; 0x99ee
    mov sp, word [dseg_910e]         ; 0x99f2
    mov si, word [dseg_910a]         ; 0x99f6
    mov di, word [dseg_910c]         ; 0x99fa
    push cx                          ; 0x99fe
    jmp [dseg_9112]                  ; 0x99ff
