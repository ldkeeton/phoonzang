; auto-generated
loc_PHIP:
    mov ax, 0                        ; 0x1613
    call aztec_csav                  ; 0x1616
    mov ax, 0                        ; 0x1619
    push ax                          ; 0x161c
    push word [bp + 0x6]             ; 0x161d
    call thunk_3                     ; 0x1620
    add sp, byte 4                   ; 0x1623
    mov ax, 0                        ; 0x1626
    push ax                          ; 0x1629
    push word [bp + 0x4]             ; 0x162a
    call ds_string_loc_QRJV          ; 0x162d
    add sp, byte 4                   ; 0x1630
    mov ax, 0                        ; 0x1633
    push ax                          ; 0x1636
    mov ax, 0x20                     ; 0x1637
    push ax                          ; 0x163a
    call ds_loc_TJTV                 ; 0x163b
    add sp, byte 4                   ; 0x163e
    ret                              ; 0x1641
