; auto-generated
parse_long:
    push bp                          ; 0x0815
    mov bp, sp                       ; 0x0816
    push word [bp + 4]               ; 0x0818
    call aztec_atol                  ; 0x081b
    pop cx                           ; 0x081e
    mov sp, bp                       ; 0x081f
    pop bp                           ; 0x0821
    ret                              ; 0x0822
