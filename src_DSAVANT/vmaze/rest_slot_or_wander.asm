; auto-generated
rest_slot_or_wander:
    mov ax, 0                        ; 0xaa3f
    call aztec_csav                  ; 0xaa42
    mov ax, 0x10                     ; 0xaa45
    push ax                          ; 0xaa48
    call random_below                ; 0xaa49
    pop cx                           ; 0xaa4c
    push ax                          ; 0xaa4d
    mov ax, 0x26                     ; 0xaa4e
    imul word [bp + 4]               ; 0xaa51
    mov bx, ax                       ; 0xaa54
    pop ax                           ; 0xaa56
    mov byte [bx + slot_records + slot_record.turn_count], al ; 0xaa57
    mov al, byte [bx + slot_records + slot_record.location] ; 0xaa5b
    cmp al, byte [bx + slot_records + slot_record.home_location] ; 0xaa5f
    jne short .forward2              ; 0xaa63
    mov ax, 0xa                      ; 0xaa65
    push ax                          ; 0xaa68
    call random_below                ; 0xaa69
    pop cx                           ; 0xaa6c
    test ax, ax                      ; 0xaa6d
    jne short .forward2              ; 0xaa6f
    mov ax, 0x26                     ; 0xaa71
    imul word [bp + 4]               ; 0xaa74
    mov bx, ax                       ; 0xaa77
    mov al, byte [bx + slot_records + slot_record.max_health] ; 0xaa79
    mov byte [bx + slot_records + slot_record.health], al ; 0xaa7d
    mov ax, 0xa                      ; 0xaa81
    push ax                          ; 0xaa84
    call random_below                ; 0xaa85
    pop cx                           ; 0xaa88
    test ax, ax                      ; 0xaa89
    jne short .forward1              ; 0xaa8b
    mov ax, 0x26                     ; 0xaa8d
    imul word [bp + 4]               ; 0xaa90
    mov bx, ax                       ; 0xaa93
    mov byte [bx + slot_records + slot_record.activity], 2 ; 0xaa95
    mov byte [bx + slot_records + slot_record.turn_count], 0 ; 0xaa9a
    ret                              ; 0xaa9f
.forward1:
    jmp short .forward3              ; 0xaaa0
.forward2:
    mov ax, 3                        ; 0xaaa2
    push ax                          ; 0xaaa5
    mov ax, 2                        ; 0xaaa6
    push ax                          ; 0xaaa9
    push word [bp + 4]               ; 0xaaaa
    call heal_slot_health            ; 0xaaad
    add sp, byte 6                   ; 0xaab0
    test ax, ax                      ; 0xaab3
    je short .forward3               ; 0xaab5
    ret                              ; 0xaab7
.forward3:
    mov ax, 0xffff                   ; 0xaab8
    push ax                          ; 0xaabb
    push word [bp + 4]               ; 0xaabc
    call api_idx_0008_OMPR           ; 0xaabf
    add sp, byte 4                   ; 0xaac2
    mov ax, 0x26                     ; 0xaac5
    imul word [bp + 4]               ; 0xaac8
    mov bx, ax                       ; 0xaacb
    mov byte [bx + slot_records + slot_record.activity], 6 ; 0xaacd
    ret                              ; 0xaad2
