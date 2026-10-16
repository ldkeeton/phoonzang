; auto-generated
aztec_gmtime:
    push bp                          ; 0x2bda
    mov bp, sp                       ; 0x2bdb
    push si                          ; 0x2bdd
    call leaf_loc_TRGR               ; 0x2bde
    mov si, ax                       ; 0x2be1
    test si, si                      ; 0x2be3
    jne short @..aztec_gmtime.l2     ; 0x2be5
    mov ax, 0                        ; 0x2be7
@..aztec_gmtime.l1:
    pop si                           ; 0x2bea
    mov sp, bp                       ; 0x2beb
    pop bp                           ; 0x2bed
    ret                              ; 0x2bee
@..aztec_gmtime.l2:
    push si                          ; 0x2bef
    push word [bp + 0x6]             ; 0x2bf0
    push word [bp + 0x4]             ; 0x2bf3
    call aztec_utime                 ; 0x2bf6
    add sp, byte 6                   ; 0x2bf9
    jmp short @..aztec_gmtime.l1     ; 0x2bfc
