; auto-generated
; asm only
loc_IHGP:
    pop word [dseg_90b4]             ; 0x46d9
    pop cx                           ; 0x46dd
    mov word [dseg_90b0], sp         ; 0x46de
    mov word [dseg_90b2], bp         ; 0x46e2
    mov word [dseg_90ac], si         ; 0x46e6
    mov word [dseg_90ae], di         ; 0x46ea
    cld                              ; 0x46ee
    mov di, bss_90b6                 ; 0x46ef
    mov cx, 0x9d94                   ; 0x46f2
    sub cx, di                       ; 0x46f5
    shr cx, 1                        ; 0x46f7
    je short @..loc_IHGP.l1          ; 0x46f9
    sub ax, ax                       ; 0x46fb
    rep stosw                        ; 0x46fd
@..loc_IHGP.l1:
    call loc_IVHI                    ; 0x46ff
    mov bp, word [dseg_90b2]         ; 0x4702
    mov sp, word [dseg_90b0]         ; 0x4706
    mov si, word [dseg_90ac]         ; 0x470a
    mov di, word [dseg_90ae]         ; 0x470e
    push cx                          ; 0x4712
    jmp [dseg_90b4]                  ; 0x4713
