aztec_cret:
    pop si                           ; 0x4670
    pop di                           ; 0x4671
    mov sp, bp                       ; 0x4672
    pop bp                           ; 0x4674
    ret                              ; 0x4675
@..aztec_csav.l2:
    mov sp, bp ; put stack back the way it was ; 0x4676
    jmp near aztec_stkover           ; 0x4678
