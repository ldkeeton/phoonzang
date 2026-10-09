aztec_gmtime:
    push bp                          ; 0x2bda
    mov bp, sp                       ; 0x2bdb
    push si                          ; 0x2bdd
    call leaf_loc_2e45               ; 0x2bde
    mov si, ax                       ; 0x2be1
    test si, si                      ; 0x2be3
    jne short aztec_freopen          ; 0x2be5
    mov ax, 0                        ; 0x2be7
loc_2bea:
    pop si                           ; 0x2bea
    mov sp, bp                       ; 0x2beb
    pop bp                           ; 0x2bed
    ret                              ; 0x2bee
