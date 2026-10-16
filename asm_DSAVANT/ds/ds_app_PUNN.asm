; auto-generated
ds_app_PUNN: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x09f0
    call aztec_csav                  ; 0x09f3
    mov ax, 0                        ; 0x09f6
    cmp word [bp + 0x4], byte 0      ; 0x09f9
    jle short @..ds_app_PUNN.l1      ; 0x09fd
    call ds_loc_JRJK                 ; 0x09ff
    cwd                              ; 0x0a02
    idiv word [bp + 0x4]             ; 0x0a03
    mov ax, dx                       ; 0x0a06
@..ds_app_PUNN.l1:
    ret                              ; 0x0a08
