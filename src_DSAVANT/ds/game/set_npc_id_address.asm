; auto-generated
set_npc_id_address:
    mov ax, 0                        ; 0x03cd
    call aztec_csav                  ; 0x03d0
    mov word [npc_id_address], 0xe36 ; 0x03d3
    ret                              ; 0x03d9
