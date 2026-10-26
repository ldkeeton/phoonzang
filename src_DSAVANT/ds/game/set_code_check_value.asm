; auto-generated
set_code_check_value:
    mov ax, 0                        ; 0x03cd
    call aztec_csav                  ; 0x03d0
    mov word [code_check_value], 0xe36 ; 0x03d3
    ret                              ; 0x03d9
