; auto-generated
loc_UIIS:
    mov ax, 0                        ; 0x8981
    call aztec_csav                  ; 0x8984
    cmp word [bp + 6], byte 0        ; 0x8987
    jne short @..loc_UIIS.l1         ; 0x898b
    push word [bp + 8]               ; 0x898d
    push word [bp + 4]               ; 0x8990
    call api_idx_0002_JGQP           ; 0x8993
    add sp, byte 4                   ; 0x8996
    jmp short @..loc_UIIS.l2         ; 0x8999
@..loc_UIIS.l1:
    push word [bp + 8]               ; 0x899b
    push word [bp + 4]               ; 0x899e
    call api_idx_0006_UKIH           ; 0x89a1
    add sp, byte 4                   ; 0x89a4
@..loc_UIIS.l2:
    ret                              ; 0x89a7
