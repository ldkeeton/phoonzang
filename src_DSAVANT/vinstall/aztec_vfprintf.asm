; auto-generated
aztec_vfprintf:
    push bp                          ; 0x0944
    mov bp, sp                       ; 0x0945
    push word [bp + 0x8]             ; 0x0947
    push word [bp + 0x6]             ; 0x094a
    push word [bp + 0x4]             ; 0x094d
    call loc_STSN_040f               ; 0x0950
    add sp, byte 6                   ; 0x0953
    mov ax, word [bp + 0xa]          ; 0x0956
    shl ax, 1                        ; 0x0959
    mov bx, ax                       ; 0x095b
    push word [bx + 0x160]           ; 0x095d
    mov ax, 0x16                     ; 0x0961
    push ax                          ; 0x0964
    push word [bp + 0x4]             ; 0x0965
    call loc_STSN_040f               ; 0x0968
    add sp, byte 6                   ; 0x096b
    push word [bp + 0xc]             ; 0x096e
    mov ax, 0x2e                     ; 0x0971
    push ax                          ; 0x0974
    push word [bp + 0x4]             ; 0x0975
    call loc_STSN_040f               ; 0x0978
    add sp, byte 6                   ; 0x097b
    push word [bp + 0xe]             ; 0x097e
    mov ax, 0x3a                     ; 0x0981
    push ax                          ; 0x0984
    push word [bp + 0x4]             ; 0x0985
    call loc_STSN_040f               ; 0x0988
    add sp, byte 6                   ; 0x098b
    mov sp, bp                       ; 0x098e
    pop bp                           ; 0x0990
    ret                              ; 0x0991
