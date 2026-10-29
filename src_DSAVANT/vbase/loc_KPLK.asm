; auto-generated
loc_KPLK:
    mov ax, 0                        ; 0x150d
    call aztec_csav                  ; 0x1510
    mov ax, 0xc7                     ; 0x1513
    push ax                          ; 0x1516
    mov ax, 0x13f                    ; 0x1517
    push ax                          ; 0x151a
    mov ax, 0                        ; 0x151b
    push ax                          ; 0x151e
    push ax                          ; 0x151f
    call call_show_area              ; 0x1520
    add sp, byte 8                   ; 0x1523
    mov ax, 0x1a                     ; 0x1526
    push ax                          ; 0x1529
    mov ax, 0xd                      ; 0x152a
    push ax                          ; 0x152d
    mov ax, 0x12                     ; 0x152e
    push ax                          ; 0x1531
    mov ax, 0x24                     ; 0x1532
    push ax                          ; 0x1535
    mov ax, 0x61                     ; 0x1536
    push ax                          ; 0x1539
    mov ax, 3                        ; 0x153a
    push ax                          ; 0x153d
    push word [bp + 4]               ; 0x153e
    call api_idx_0004_VUIP           ; 0x1541
    add sp, byte 0xe                 ; 0x1544
    call flush_keyboard              ; 0x1547
    mov ax, 0                        ; 0x154a
    push ax                          ; 0x154d
    call play_sound_effect           ; 0x154e
    pop cx                           ; 0x1551
    mov ax, 0x28                     ; 0x1552
    push ax                          ; 0x1555
    call wait_for_hotspot_timeout    ; 0x1556
    pop cx                           ; 0x1559
    mov ax, 0xc7                     ; 0x155a
    push ax                          ; 0x155d
    mov ax, 0x13f                    ; 0x155e
    push ax                          ; 0x1561
    mov ax, 0                        ; 0x1562
    push ax                          ; 0x1565
    push ax                          ; 0x1566
    call call_show_area              ; 0x1567
    add sp, byte 8                   ; 0x156a
    ret                              ; 0x156d
