; auto-generated
loc_MPQM:
    mov ax, 0                        ; 0x8981
    call aztec_csav                  ; 0x8984
    cmp word [bp + 0x6], byte 0      ; 0x8987
    jne short @..loc_MPQM.l1         ; 0x898b
    push word [bp + 0x8]             ; 0x898d
    push word [bp + 0x4]             ; 0x8990
    call api_idx_0002_KUST           ; 0x8993
    add sp, byte 4                   ; 0x8996
    jmp short @..loc_MPQM.l2         ; 0x8999
@..loc_MPQM.l1:
    push word [bp + 0x8]             ; 0x899b
    push word [bp + 0x4]             ; 0x899e
    call api_idx_0006_PJVO           ; 0x89a1
    add sp, byte 4                   ; 0x89a4
@..loc_MPQM.l2:
    ret                              ; 0x89a7
