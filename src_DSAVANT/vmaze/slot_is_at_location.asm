; auto-generated
slot_is_at_location:
    mov ax, 0                        ; 0x9448
    call aztec_csav                  ; 0x944b
    mov ax, 0x26                     ; 0x944e
    imul word [bp + 4]               ; 0x9451
    mov bx, ax                       ; 0x9454
    mov al, byte [bx + slot_records + slot_record.location] ; 0x9456
    sub ah, ah                       ; 0x945a
    cmp ax, word [bp + 6]            ; 0x945c
    jne short .forward1              ; 0x945f
    mov ax, 1                        ; 0x9461
    jmp short .return1               ; 0x9464
.forward1:
    mov ax, 0                        ; 0x9466
.return1:
    ret                              ; 0x9469
