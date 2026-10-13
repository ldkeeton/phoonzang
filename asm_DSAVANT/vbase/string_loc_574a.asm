; auto-generated
string_loc_574a:
    mov word [bp - 0x0014], 0x18     ; 0x574a
    jmp short string_loc_5784        ; 0x574f
jumptable_5751:
    dw string_loc_5703 - IMAGE_BASE + 0x5055   ; 0x5751
    dw string_loc_5784 - IMAGE_BASE + 0x5055   ; 0x5753
    dw string_loc_570b - IMAGE_BASE + 0x5055   ; 0x5755
    dw string_loc_5712 - IMAGE_BASE + 0x5055   ; 0x5757
    dw string_loc_5719 - IMAGE_BASE + 0x5055   ; 0x5759
    dw string_loc_5784 - IMAGE_BASE + 0x5055   ; 0x575b
    dw string_loc_5784 - IMAGE_BASE + 0x5055   ; 0x575d
    dw string_loc_5784 - IMAGE_BASE + 0x5055   ; 0x575f
    dw string_loc_5720 - IMAGE_BASE + 0x5055   ; 0x5761
    dw string_loc_5784 - IMAGE_BASE + 0x5055   ; 0x5763
    dw string_loc_5727 - IMAGE_BASE + 0x5055   ; 0x5765
    dw string_loc_572e - IMAGE_BASE + 0x5055   ; 0x5767
    dw string_loc_5735 - IMAGE_BASE + 0x5055   ; 0x5769
    dw string_loc_573c - IMAGE_BASE + 0x5055   ; 0x576b
    dw string_loc_5784 - IMAGE_BASE + 0x5055   ; 0x576d
    dw string_loc_5784 - IMAGE_BASE + 0x5055   ; 0x576f
    dw string_loc_5784 - IMAGE_BASE + 0x5055   ; 0x5771
    dw string_loc_5743 - IMAGE_BASE + 0x5055   ; 0x5773
    dw string_loc_574a - IMAGE_BASE + 0x5055   ; 0x5775
loc_5777:
    cmp ax, strict word 0x13         ; 0x5777
    jae short string_loc_5784        ; 0x577a
    xchg bx, ax                      ; 0x577c
    shl bx, 1                        ; 0x577d
    jmp [cs:bx - 0x5868]             ; 0x577f
