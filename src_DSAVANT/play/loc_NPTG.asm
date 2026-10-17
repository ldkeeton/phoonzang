; auto-generated
loc_NPTG:
    mov ah, byte [cs:si]             ; 0x0f44
    mov byte [cs:cseg_0d3e - IMAGE_BASE], ah ; 0x0f47
    cmp byte [cs:cseg_0d47 - IMAGE_BASE], 0 ; 0x0f4c
    jmp near loc_GLKJ                ; 0x0f52
