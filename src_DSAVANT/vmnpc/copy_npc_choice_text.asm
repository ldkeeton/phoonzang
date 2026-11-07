; auto-generated
copy_npc_choice_text:
    mov ax, 0                        ; 0x8981
    call $csav                  ; 0x8984
    cmp word [bp + 6], byte 0        ; 0x8987
    jne short .forward1              ; 0x898b
    push word [bp + 8]               ; 0x898d
    push word [bp + 4]               ; 0x8990
    call copy_npc_choice_text_prefix ; 0x8993
    add sp, byte 4                   ; 0x8996
    jmp short .return1               ; 0x8999
.forward1:
    push word [bp + 8]               ; 0x899b
    push word [bp + 4]               ; 0x899e
    call copy_npc_choice_text_expanded ; 0x89a1
    add sp, byte 4                   ; 0x89a4
.return1:
    ret                              ; 0x89a7
