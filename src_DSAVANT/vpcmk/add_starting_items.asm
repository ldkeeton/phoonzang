; auto-generated
add_starting_items:
    mov ax, 0                        ; 0x4c21
    call aztec_csav                  ; 0x4c24
    cmp word [bp + 6], byte 0        ; 0x4c27
    je short .forward1               ; 0x4c2b
    push word [bp + 6]               ; 0x4c2d
    push word [bp + 4]               ; 0x4c30
    call add_item_record_to_member   ; 0x4c33
    add sp, byte 4                   ; 0x4c36
.forward1:
    cmp word [bp + 8], byte 0        ; 0x4c39
    je short .forward2               ; 0x4c3d
    push word [bp + 8]               ; 0x4c3f
    push word [bp + 4]               ; 0x4c42
    call add_item_record_to_member   ; 0x4c45
    add sp, byte 4                   ; 0x4c48
.forward2:
    cmp word [bp + 0xa], byte 0      ; 0x4c4b
    je short .forward3               ; 0x4c4f
    push word [bp + 0xa]             ; 0x4c51
    push word [bp + 4]               ; 0x4c54
    call add_item_record_to_member   ; 0x4c57
    add sp, byte 4                   ; 0x4c5a
.forward3:
    cmp word [bp + 0xc], byte 0      ; 0x4c5d
    je short .forward4               ; 0x4c61
    push word [bp + 0xc]             ; 0x4c63
    push word [bp + 4]               ; 0x4c66
    call add_item_record_to_member   ; 0x4c69
    add sp, byte 4                   ; 0x4c6c
.forward4:
    cmp word [bp + 0xe], byte 0      ; 0x4c6f
    je short .return1                ; 0x4c73
    push word [bp + 0xe]             ; 0x4c75
    push word [bp + 4]               ; 0x4c78
    call add_item_record_to_member   ; 0x4c7b
    add sp, byte 4                   ; 0x4c7e
.return1:
    ret                              ; 0x4c81
