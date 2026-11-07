; auto-generated
ovmain:
    mov ax, 0                        ; 0x21bf
    call $csav                  ; 0x21c2
    mov ax, word [npc_id]            ; 0x21c5
    mov word [npc_record_index], ax  ; 0x21c8
    call run_npc_shop_interaction    ; 0x21cb
    mov ax, 0                        ; 0x21ce
    ret                              ; 0x21d1
