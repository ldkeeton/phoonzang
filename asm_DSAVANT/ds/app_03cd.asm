app_03cd: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x03cd
    call aztec_csav                  ; 0x03d0
    mov word [bss_0e34], 0xe36       ; 0x03d3
    ret                              ; 0x03d9
