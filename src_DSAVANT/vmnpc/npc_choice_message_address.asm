; auto-generated
npc_choice_message_address:
    mov ax, 0                        ; 0x9d06
    call $csav                  ; 0x9d09
    mov ax, word [bp + 4]            ; 0x9d0c
    cmp ax, word [npc_first_choice_count] ; 0x9d0f
    jge short .forward1              ; 0x9d13
    mov cx, 5                        ; 0x9d15
    imul cx                          ; 0x9d18
    add ax, word [npc_first_choice_message_base] ; 0x9d1a
    ret                              ; 0x9d1e
.forward1:
    mov ax, word [bp + 4]            ; 0x9d1f
    sub ax, word [npc_first_choice_count] ; 0x9d22
    mov cx, 5                        ; 0x9d26
    imul cx                          ; 0x9d29
    add ax, word [npc_second_choice_message_base] ; 0x9d2b
    ret                              ; 0x9d2f
