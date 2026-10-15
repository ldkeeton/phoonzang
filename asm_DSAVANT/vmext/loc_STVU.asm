; auto-generated
loc_STVU:
    mov ax, 0                        ; 0x05c0
    call aztec_csav                  ; 0x05c3
    mov ax, 0x50                     ; 0x05c6
    push ax                          ; 0x05c9
    call ds_app_GGUI                 ; 0x05ca
    pop cx                           ; 0x05cd
    cmp ax, strict word 0            ; 0x05ce
    jle short @..loc_STVU.l1         ; 0x05d1
    mov ax, 0xa                      ; 0x05d3
    push ax                          ; 0x05d6
    call ds_leaf_loc_RTLQ            ; 0x05d7
    pop cx                           ; 0x05da
    jmp short @..loc_STVU.l2         ; 0x05db
@..loc_STVU.l1:
    mov ax, 0xa                      ; 0x05dd
    push ax                          ; 0x05e0
    call ds_leaf_loc_RTLQ            ; 0x05e1
    pop cx                           ; 0x05e4
@..loc_STVU.l2:
    ret                              ; 0x05e5
