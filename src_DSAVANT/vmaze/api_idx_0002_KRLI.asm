; auto-generated
api_idx_0002_KRLI:
    mov ax, 0xfffe                   ; 0xa9a4
    call aztec_csav                  ; 0xa9a7
    mov ax, 0x26                     ; 0xa9aa
    imul word [bp + 0x4]             ; 0xa9ad
    mov bx, ax                       ; 0xa9b0
    mov al, byte [bx + slot_records + slot_record.f_0006] ; 0xa9b2
    sub ah, ah                       ; 0xa9b6
    mov word [bp - 0x0002], ax       ; 0xa9b8
    inc byte [bx + slot_records + slot_record.map_piece] ; 0xa9bb
    mov al, byte [bx + slot_records + slot_record.map_piece] ; 0xa9bf
    sub ah, ah                       ; 0xa9c3
    push ax                          ; 0xa9c5
    call random_below                ; 0xa9c6
    pop cx                           ; 0xa9c9
    cmp ax, strict word 0x18         ; 0xa9ca
    jle short @..api_idx_0002_KRLI.l1 ; 0xa9cd
    mov ax, 0x26                     ; 0xa9cf
    imul word [bp + 0x4]             ; 0xa9d2
    mov bx, ax                       ; 0xa9d5
    mov al, byte [bx + slot_records + slot_record.f_0003] ; 0xa9d7
    sub ah, ah                       ; 0xa9db
    push ax                          ; 0xa9dd
    mov ax, 7                        ; 0xa9de
    push ax                          ; 0xa9e1
    push word [bp - 0x0002]          ; 0xa9e2
    push word [bp + 0x4]             ; 0xa9e5
    call api_idx_0002_JLVK           ; 0xa9e8
    add sp, byte 8                   ; 0xa9eb
    mov ax, 1                        ; 0xa9ee
    push ax                          ; 0xa9f1
    mov ax, word [bp - 0x0002]       ; 0xa9f2
    add ax, strict word 0xc          ; 0xa9f5
    push ax                          ; 0xa9f8
    mov ax, 0x26                     ; 0xa9f9
    imul word [bp + 0x4]             ; 0xa9fc
    add ax, slot_records + slot_record.f_0019 + 0x9 ; 0xa9ff
    push ax                          ; 0xaa02
    call set_bitmap_bit              ; 0xaa03
    add sp, byte 6                   ; 0xaa06
    mov ax, 0x26                     ; 0xaa09
    imul word [bp + 0x4]             ; 0xaa0c
    mov bx, ax                       ; 0xaa0f
    mov byte [bx + slot_records + slot_record.f_0002], 0 ; 0xaa11
    mov ax, 6                        ; 0xaa16
    imul word [bp - 0x0002]          ; 0xaa19
    mov bx, ax                       ; 0xaa1c
    cmp byte [bx + bss_84a6 + rec_84a6.f_0004], 0xff ; 0xaa1e
    je short @..api_idx_0002_KRLI.l1 ; 0xaa23
    mov al, byte [bx + bss_84a6 + rec_84a6.f_0004] ; 0xaa25
    push ax                          ; 0xaa29
    mov ax, 0x26                     ; 0xaa2a
    imul word [bp + 0x4]             ; 0xaa2d
    mov bx, ax                       ; 0xaa30
    pop ax                           ; 0xaa32
    mov byte [bx + slot_records + slot_record.f_0003], al ; 0xaa33
    push word [bp + 0x4]             ; 0xaa37
    call loc_QJRN                    ; 0xaa3a
    pop cx                           ; 0xaa3d
@..api_idx_0002_KRLI.l1:
    ret                              ; 0xaa3e
loc_OGGM:
    mov ax, 0                        ; 0xaa3f
    call aztec_csav                  ; 0xaa42
    mov ax, 0x10                     ; 0xaa45
    push ax                          ; 0xaa48
    call random_below                ; 0xaa49
    pop cx                           ; 0xaa4c
    push ax                          ; 0xaa4d
    mov ax, 0x26                     ; 0xaa4e
    imul word [bp + 0x4]             ; 0xaa51
    mov bx, ax                       ; 0xaa54
    pop ax                           ; 0xaa56
    mov byte [bx + slot_records + slot_record.map_piece], al ; 0xaa57
    mov al, byte [bx + slot_records + slot_record.kind] ; 0xaa5b
    cmp al, byte [bx + slot_records + slot_record.f_0001] ; 0xaa5f
    jne short @..loc_OGGM.l2         ; 0xaa63
    mov ax, 0xa                      ; 0xaa65
    push ax                          ; 0xaa68
    call random_below                ; 0xaa69
    pop cx                           ; 0xaa6c
    test ax, ax                      ; 0xaa6d
    jne short @..loc_OGGM.l2         ; 0xaa6f
    mov ax, 0x26                     ; 0xaa71
    imul word [bp + 0x4]             ; 0xaa74
    mov bx, ax                       ; 0xaa77
    mov al, byte [bx + slot_records + slot_record.f_0019] ; 0xaa79
    mov byte [bx + slot_records + slot_record.flag], al ; 0xaa7d
    mov ax, 0xa                      ; 0xaa81
    push ax                          ; 0xaa84
    call random_below                ; 0xaa85
    pop cx                           ; 0xaa88
    test ax, ax                      ; 0xaa89
    jne short @..loc_OGGM.l1         ; 0xaa8b
    mov ax, 0x26                     ; 0xaa8d
    imul word [bp + 0x4]             ; 0xaa90
    mov bx, ax                       ; 0xaa93
    mov byte [bx + slot_records + slot_record.f_0002], 2 ; 0xaa95
    mov byte [bx + slot_records + slot_record.map_piece], 0 ; 0xaa9a
    ret                              ; 0xaa9f
@..loc_OGGM.l1:
    jmp short @..loc_OGGM.l3         ; 0xaaa0
@..loc_OGGM.l2:
    mov ax, 3                        ; 0xaaa2
    push ax                          ; 0xaaa5
    mov ax, 2                        ; 0xaaa6
    push ax                          ; 0xaaa9
    push word [bp + 0x4]             ; 0xaaaa
    call api_idx_0002_OOUO           ; 0xaaad
    add sp, byte 6                   ; 0xaab0
    test ax, ax                      ; 0xaab3
    je short @..loc_OGGM.l3          ; 0xaab5
    ret                              ; 0xaab7
@..loc_OGGM.l3:
    mov ax, 0xffff                   ; 0xaab8
    push ax                          ; 0xaabb
    push word [bp + 0x4]             ; 0xaabc
    call api_idx_0008_OMPR           ; 0xaabf
    add sp, byte 4                   ; 0xaac2
    mov ax, 0x26                     ; 0xaac5
    imul word [bp + 0x4]             ; 0xaac8
    mov bx, ax                       ; 0xaacb
    mov byte [bx + slot_records + slot_record.f_0002], 6 ; 0xaacd
    ret                              ; 0xaad2
