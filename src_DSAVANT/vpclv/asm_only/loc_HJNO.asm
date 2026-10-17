; auto-generated
; asm only
loc_HJNO:
    pop word [dseg_9406]             ; 0x5472
    pop cx                           ; 0x5476
    mov word [dseg_9402], sp         ; 0x5477
    mov word [dseg_9404], bp         ; 0x547b
    mov word [dseg_93fe], si         ; 0x547f
    mov word [dseg_9400], di         ; 0x5483
    cld                              ; 0x5487
    mov di, bss_9408                 ; 0x5488
    mov cx, 0x97ac                   ; 0x548b
    sub cx, di                       ; 0x548e
    shr cx, 1                        ; 0x5490
    je short @..loc_HJNO.l1          ; 0x5492
    sub ax, ax                       ; 0x5494
    rep stosw                        ; 0x5496
@..loc_HJNO.l1:
    call loc_GPLJ                    ; 0x5498
    mov bp, word [dseg_9404]         ; 0x549b
    mov sp, word [dseg_9402]         ; 0x549f
    mov si, word [dseg_93fe]         ; 0x54a3
    mov di, word [dseg_9400]         ; 0x54a7
    push cx                          ; 0x54ab
    jmp [dseg_9406]                  ; 0x54ac
