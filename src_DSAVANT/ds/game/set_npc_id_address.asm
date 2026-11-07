; auto-generated
set_npc_id_address:
    mov ax, 0                        ; 0x03cd
    call $csav                  ; 0x03d0
    mov word [npc_id_address], npc_id ; 0x03d3
    ret                              ; 0x03d9
