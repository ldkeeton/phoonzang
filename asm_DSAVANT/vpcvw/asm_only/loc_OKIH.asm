; auto-generated
; asm only
loc_OKIH:
    pop word [dseg_93de]             ; 0x97ee
    pop cx                           ; 0x97f2
    mov word [dseg_93da], sp         ; 0x97f3
    mov word [dseg_93dc], bp         ; 0x97f7
    mov word [dseg_93d6], si         ; 0x97fb
    mov word [dseg_93d8], di         ; 0x97ff
    cld                              ; 0x9803
    mov di, bss_93e0                 ; 0x9804
    mov cx, 0x96f0                   ; 0x9807
    sub cx, di                       ; 0x980a
    shr cx, 1                        ; 0x980c
    je short @..loc_OKIH.l1          ; 0x980e
    sub ax, ax                       ; 0x9810
    rep stosw                        ; 0x9812
@..loc_OKIH.l1:
    call loc_VIUO                    ; 0x9814
    mov bp, word [dseg_93dc]         ; 0x9817
    mov sp, word [dseg_93da]         ; 0x981b
    mov si, word [dseg_93d6]         ; 0x981f
    mov di, word [dseg_93d8]         ; 0x9823
    push cx                          ; 0x9827
    jmp [dseg_93de]                  ; 0x9828
