; auto-generated
; asm only
loc_NSQH:
    lodsw                            ; 0x0cca
    cmp ax, strict word 0            ; 0x0ccb
    jne short loc_TVOT               ; 0x0cce
    jmp near loc_MRJU                ; 0x0cd0
loc_TVOT:
    mov word [cs:cseg_0a7f - IMAGE_BASE], ax ; 0x0cd3
    mov word [cs:cseg_0aa4 - IMAGE_BASE], si ; 0x0cd7
    jmp near loc_IILK                ; 0x0cdc
