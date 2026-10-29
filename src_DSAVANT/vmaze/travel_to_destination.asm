; auto-generated
travel_to_destination:
    mov ax, 0                        ; 0x946a
    call aztec_csav                  ; 0x946d
    mov ax, 0x26                     ; 0x9470
    imul word [bp + 4]               ; 0x9473
    mov bx, ax                       ; 0x9476
    mov byte [bx + slot_records + slot_record.activity], 3 ; 0x9478
    mov al, byte [bx + slot_records + slot_record.destination] ; 0x947d
    sub ah, ah                       ; 0x9481
    push ax                          ; 0x9483
    mov al, byte [bx + slot_records + slot_record.location] ; 0x9484
    sub ah, ah                       ; 0x9488
    push ax                          ; 0x948a
    push word [bp + 4]               ; 0x948b
    call plan_slot_path              ; 0x948e
    add sp, byte 6                   ; 0x9491
    test ax, ax                      ; 0x9494
    jne short .return1               ; 0x9496
    mov ax, 0x26                     ; 0x9498
    imul word [bp + 4]               ; 0x949b
    mov bx, ax                       ; 0x949e
    mov byte [bx + slot_records + slot_record.activity], 0 ; 0x94a0
.return1:
    ret                              ; 0x94a5
