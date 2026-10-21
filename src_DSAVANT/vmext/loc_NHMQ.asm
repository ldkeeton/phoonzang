; auto-generated
loc_NHMQ:
    mov ax, 0                        ; 0x0836
    call aztec_csav                  ; 0x0839
    mov ax, word [bp + 0x4]          ; 0x083c
    mov word [bss_8f46], ax          ; 0x083f
    mov ax, word [bp + 0x6]          ; 0x0842
    mov word [bss_8f44], ax          ; 0x0845
    push ax                          ; 0x0848
    push word [bss_8f46]             ; 0x0849
    mov ax, bss_8f3e                 ; 0x084d
    push ax                          ; 0x0850
    mov ax, bss_8f40                 ; 0x0851
    push ax                          ; 0x0854
    mov ax, bss_8f42                 ; 0x0855
    push ax                          ; 0x0858
    call find_map_piece              ; 0x0859
    add sp, byte 0x0a                ; 0x085c
    ret                              ; 0x085f
