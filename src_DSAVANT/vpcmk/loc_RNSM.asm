; auto-generated
loc_RNSM:
    mov ax, 0                        ; 0x67e2
    call aztec_csav                  ; 0x67e5
    push word [bp + 0x4]             ; 0x67e8
    mov ax, 0                        ; 0x67eb
    push ax                          ; 0x67ee
    call loc_TUUJ                    ; 0x67ef
    add sp, byte 4                   ; 0x67f2
@..loc_RNSM.l1:
    call poll_fullscreen_hotspot     ; 0x67f5
    test ax, ax                      ; 0x67f8
    jne short @..loc_RNSM.l2         ; 0x67fa
    jmp short @..loc_RNSM.l1         ; 0x67fc
@..loc_RNSM.l2:
    ret                              ; 0x67fe
