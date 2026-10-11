api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x6cd0
    call ds_dispatch_f40b            ; 0x6cd3
    call loc_6c3f                    ; 0x6cd6
    les bx, word [dseg_0002]         ; 0x6cd9
    mov ax, word [es:bx]             ; 0x6cdd
    mov dx, word [es:bx + 0x2]       ; 0x6ce0
    add ax, 0x10e                    ; 0x6ce4
    adc dx, byte 0                   ; 0x6ce7
    mov word [bp - 0x0002], dx       ; 0x6cea
    mov word [bp - 0x0004], ax       ; 0x6ced
@..api_idx_0004_5.l1:
    call ds_dispatch_baef            ; 0x6cf0
    test ax, ax                      ; 0x6cf3
    jne short @..api_idx_0004_5.l4   ; 0x6cf5
    les bx, word [dseg_0002]         ; 0x6cf7
    mov ax, word [es:bx]             ; 0x6cfb
    mov dx, word [es:bx + 0x2]       ; 0x6cfe
    cmp dx, word [bp - 0x0002]       ; 0x6d02
    jg short @..api_idx_0004_5.l2    ; 0x6d05
    jne short @..api_idx_0004_5.l3   ; 0x6d07
    cmp ax, word [bp - 0x0004]       ; 0x6d09
    jb short @..api_idx_0004_5.l3    ; 0x6d0c
@..api_idx_0004_5.l2:
    jmp short @..api_idx_0004_5.l4   ; 0x6d0e
@..api_idx_0004_5.l3:
    call loc_6c5c                    ; 0x6d10
    jmp short @..api_idx_0004_5.l1   ; 0x6d13
@..api_idx_0004_5.l4:
    call loc_6c1e                    ; 0x6d15
    mov word [dseg_a4a6], 0          ; 0x6d18
    ret                              ; 0x6d1e
