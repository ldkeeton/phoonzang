aztec_wait:
    mov ah, 0x4d                     ; 0x2a9d
    int 0x21 ; DOS get return code
    jae short @..aztec_wait.l1       ; 0x2aa1
    neg ax                           ; 0x2aa3
@..aztec_wait.l1:
    ret                              ; 0x2aa5
