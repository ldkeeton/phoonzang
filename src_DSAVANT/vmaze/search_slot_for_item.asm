; auto-generated
search_slot_for_item:
    mov ax, 0xfffe                   ; 0xa9a4
    call aztec_csav                  ; 0xa9a7
    mov ax, 0x26                     ; 0xa9aa
    imul word [bp + 4]               ; 0xa9ad
    mov bx, ax                       ; 0xa9b0
    mov al, byte [bx + slot_records + slot_record.target] ; 0xa9b2
    sub ah, ah                       ; 0xa9b6
    mov word [bp - 2], ax            ; 0xa9b8
    inc byte [bx + slot_records + slot_record.turn_count] ; 0xa9bb
    mov al, byte [bx + slot_records + slot_record.turn_count] ; 0xa9bf
    sub ah, ah                       ; 0xa9c3
    push ax                          ; 0xa9c5
    call random_below                ; 0xa9c6
    pop cx                           ; 0xa9c9
    cmp ax, strict word 0x18         ; 0xa9ca
    jle short .return1               ; 0xa9cd
    mov ax, 0x26                     ; 0xa9cf
    imul word [bp + 4]               ; 0xa9d2
    mov bx, ax                       ; 0xa9d5
    mov al, byte [bx + slot_records + slot_record.destination] ; 0xa9d7
    sub ah, ah                       ; 0xa9db
    push ax                          ; 0xa9dd
    mov ax, 7                        ; 0xa9de
    push ax                          ; 0xa9e1
    push word [bp - 2]               ; 0xa9e2
    push word [bp + 4]               ; 0xa9e5
    call find_or_add_loaded_record   ; 0xa9e8
    add sp, byte 8                   ; 0xa9eb
    mov ax, 1                        ; 0xa9ee
    push ax                          ; 0xa9f1
    mov ax, word [bp - 2]            ; 0xa9f2
    add ax, strict word 0xc          ; 0xa9f5
    push ax                          ; 0xa9f8
    mov ax, 0x26                     ; 0xa9f9
    imul word [bp + 4]               ; 0xa9fc
    add ax, slot_records + slot_record.marked_bits ; 0xa9ff
    push ax                          ; 0xaa02
    call set_bitmap_bit              ; 0xaa03
    add sp, byte 6                   ; 0xaa06
    mov ax, 0x26                     ; 0xaa09
    imul word [bp + 4]               ; 0xaa0c
    mov bx, ax                       ; 0xaa0f
    mov byte [bx + slot_records + slot_record.activity], 0 ; 0xaa11
    mov ax, 6                        ; 0xaa16
    imul word [bp - 2]               ; 0xaa19
    mov bx, ax                       ; 0xaa1c
    cmp byte [bx + slot_bit_states + slot_bit_state.goal_location], 0xff ; 0xaa1e
    je short .return1                ; 0xaa23
    mov al, byte [bx + slot_bit_states + slot_bit_state.goal_location] ; 0xaa25
    push ax                          ; 0xaa29
    mov ax, 0x26                     ; 0xaa2a
    imul word [bp + 4]               ; 0xaa2d
    mov bx, ax                       ; 0xaa30
    pop ax                           ; 0xaa32
    mov byte [bx + slot_records + slot_record.destination], al ; 0xaa33
    push word [bp + 4]               ; 0xaa37
    call refresh_slot_state          ; 0xaa3a
    pop cx                           ; 0xaa3d
.return1:
    ret                              ; 0xaa3e
