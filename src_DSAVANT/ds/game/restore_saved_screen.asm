; auto-generated
restore_saved_screen:
    mov ax, 0xfffe                   ; 0x16a0
    call aztec_csav                  ; 0x16a3
    mov ax, word [bp + 4]            ; 0x16a6
    shl ax, 1                        ; 0x16a9
    mov bx, ax                       ; 0x16ab
    cmp word [bx + saved_screen_kind], byte 3 ; 0x16ad
    jne short .forward2              ; 0x16b2
    mov ax, 0                        ; 0x16b4
    push ax                          ; 0x16b7
    mov ax, 0x14                     ; 0x16b8
    imul word [bp + 4]               ; 0x16bb
    add ax, saved_screen_file        ; 0x16be
    push ax                          ; 0x16c1
    call aztec_open                  ; 0x16c2
    add sp, byte 4                   ; 0x16c5
    mov word [bp - 2], ax            ; 0x16c8
    cmp ax, strict word 0xffff       ; 0x16cb
    jne short .forward1              ; 0x16ce
    mov ax, 0x18                     ; 0x16d0
    push ax                          ; 0x16d3
    call release_and_exit            ; 0x16d4
    pop cx                           ; 0x16d7
.forward1:
    jmp short .forward3              ; 0x16d8
.forward2:
    mov word [bp - 2], 0             ; 0x16da
.forward3:
    push word [bp - 2]               ; 0x16df
    push word [bp + 6]               ; 0x16e2
    mov ax, word [bp + 4]            ; 0x16e5
    shl ax, 1                        ; 0x16e8
    shl ax, 1                        ; 0x16ea
    mov bx, ax                       ; 0x16ec
    push word [bx + saved_screen_ref + 0x2] ; 0x16ee
    push word [bx + saved_screen_ref] ; 0x16f2
    call call_restore_screen         ; 0x16f6
    add sp, byte 8                   ; 0x16f9
    mov ax, word [bp + 4]            ; 0x16fc
    shl ax, 1                        ; 0x16ff
    mov bx, ax                       ; 0x1701
    cmp word [bx + saved_screen_kind], byte 3 ; 0x1703
    jne short .forward4              ; 0x1708
    push word [bp - 2]               ; 0x170a
    call aztec_close                 ; 0x170d
    pop cx                           ; 0x1710
.forward4:
    cmp word [bp + 6], byte 0        ; 0x1711
    je short .return1                ; 0x1715
    mov ax, word [bp + 4]            ; 0x1717
    shl ax, 1                        ; 0x171a
    mov bx, ax                       ; 0x171c
    cmp word [bx + saved_screen_kind], byte 3 ; 0x171e
    jne short .forward5              ; 0x1723
    mov ax, 0x14                     ; 0x1725
    imul word [bp + 4]               ; 0x1728
    add ax, saved_screen_file        ; 0x172b
    push ax                          ; 0x172e
    call aztec_unlink                ; 0x172f
    pop cx                           ; 0x1732
.forward5:
    mov ax, word [bp + 4]            ; 0x1733
    shl ax, 1                        ; 0x1736
    mov bx, ax                       ; 0x1738
    mov word [bx + saved_screen_kind], 0xffff ; 0x173a
.return1:
    ret                              ; 0x1740
