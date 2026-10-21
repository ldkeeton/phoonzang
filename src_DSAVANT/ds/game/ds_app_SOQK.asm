; auto-generated
ds_app_SOQK: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x290d
    call aztec_csav                  ; 0x2910
    mov ax, 1                        ; 0x2913
    push ax                          ; 0x2916
    call gfx_entry_47                ; 0x2917
    pop cx                           ; 0x291a
    push word [bp + 0x4]             ; 0x291b
    call gfx_entry_45                ; 0x291e
    pop cx                           ; 0x2921
    ret                              ; 0x2922
