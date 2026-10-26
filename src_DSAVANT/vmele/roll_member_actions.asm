; auto-generated
roll_member_actions:
    mov ax, 0xfffa                   ; 0x1713
    call aztec_csav                  ; 0x1716
    mov word [bp - 2], 1             ; 0x1719
    jmp near @..roll_member_actions.l6 ; 0x171e
@..roll_member_actions.l1:
    mov word [bp - 4], 0             ; 0x1721
    jmp short @..roll_member_actions.l5 ; 0x1726
@..roll_member_actions.l2:
    mov ax, 0x64                     ; 0x1728
    push ax                          ; 0x172b
    call random_below                ; 0x172c
    pop cx                           ; 0x172f
    mov word [bp - 6], ax            ; 0x1730
    mov ax, word [bp - 2]            ; 0x1733
    shl ax, 1                        ; 0x1736
    mov bx, ax                       ; 0x1738
    mov bx, word [bx + party_char]   ; 0x173a
    cmp byte [bx + member_rec.name_row], 1 ; 0x173e
    jne short @..roll_member_actions.l4 ; 0x1743
    mov ax, 0x248                    ; 0x1745
    imul word [bp - 4]               ; 0x1748
    mov bx, ax                       ; 0x174b
    mov al, byte [bx + party_records + pc_rec.flag + 0x19] ; 0x174d
    sub ah, ah                       ; 0x1751
    push ax                          ; 0x1753
    mov ax, 3                        ; 0x1754
    imul word [game_state_arg]       ; 0x1757
    mov cx, ax                       ; 0x175b
    pop ax                           ; 0x175d
    sub ax, cx                       ; 0x175e
    cmp ax, word [bp - 6]            ; 0x1760
    jg short @..roll_member_actions.l3 ; 0x1763
    mov al, byte [bx + party_records + pc_rec.stat + 0x1] ; 0x1765
    sub ah, ah                       ; 0x1769
    cmp ax, word [bp - 6]            ; 0x176b
    jle short @..roll_member_actions.l4 ; 0x176e
@..roll_member_actions.l3:
    mov ax, word [bp - 2]            ; 0x1770
    shl ax, 1                        ; 0x1773
    mov bx, ax                       ; 0x1775
    mov bx, word [bx + party_char]   ; 0x1777
    mov byte [bx + member_rec.name_row], 0 ; 0x177b
    mov ax, 0                        ; 0x1780
    push ax                          ; 0x1783
    mov ax, 0x19                     ; 0x1784
    push ax                          ; 0x1787
    push word [bp - 4]               ; 0x1788
    call loc_SIKN                    ; 0x178b
    add sp, byte 6                   ; 0x178e
@..roll_member_actions.l4:
    inc word [bp - 4]                ; 0x1791
@..roll_member_actions.l5:
    mov ax, word [bp - 4]            ; 0x1794
    cmp ax, word [party_char_count]  ; 0x1797
    jl short @..roll_member_actions.l2 ; 0x179b
    inc word [bp - 2]                ; 0x179d
@..roll_member_actions.l6:
    mov ax, word [bp - 2]            ; 0x17a0
    cmp ax, word [party_member_count] ; 0x17a3
    jg short @..roll_member_actions.l7 ; 0x17a7
    jmp near @..roll_member_actions.l1 ; 0x17a9
@..roll_member_actions.l7:
    ret                              ; 0x17ac
