api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x4884
    call ds_dispatch_f40b            ; 0x4887
    mov ax, 0x248                    ; 0x488a
    imul word [bp + 0x4]             ; 0x488d
    mov bx, ax                       ; 0x4890
    cmp word [bx + 0x5c18], byte 0x14 ; 0x4892
    jle short @..api_idx_0004_8.l1   ; 0x4897
    ret                              ; 0x4899
@..api_idx_0004_8.l1:
    mov al, byte [bx + 0x5d68]       ; 0x489a
    sub ah, ah                       ; 0x489e
    mov word [bp - 0x0004], ax       ; 0x48a0
    mov word [bp - 0x0002], 0        ; 0x48a3
    mov al, byte [bx + 0x5e2d]       ; 0x48a8
    sub ah, ah                       ; 0x48ac
    jmp short @..api_idx_0004_8.l2   ; 0x48ae
