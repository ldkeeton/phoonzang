api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x67c6
    call aztec_csav                  ; 0x67c9
    push word [bp + 0xc]             ; 0x67cc
    push word [bp + 0xa]             ; 0x67cf
    mov bx, word [bp + 0x8]          ; 0x67d2
    push word [bx]                   ; 0x67d5
    call loc_678c                    ; 0x67d7
    add sp, byte 6                   ; 0x67da
    mov word [bp - 0x0004], ax       ; 0x67dd
    cmp ax, strict word 0xffff       ; 0x67e0
    jne short @..api_idx_0004_6.l3   ; 0x67e3
    push word [bp + 0xc]             ; 0x67e5
    push word [bp + 0xa]             ; 0x67e8
    push word [bss_8f48]             ; 0x67eb
    call loc_678c                    ; 0x67ef
    add sp, byte 6                   ; 0x67f2
    mov word [bp - 0x0004], ax       ; 0x67f5
    cmp ax, strict word 0xffff       ; 0x67f8
    jne short @..api_idx_0004_6.l3   ; 0x67fb
    mov bx, word [bp + 0x8]          ; 0x67fd
    mov ax, word [bx]                ; 0x6800
    inc ax                           ; 0x6802
    mov cx, 0x10                     ; 0x6803
    cwd                              ; 0x6806
    idiv cx                          ; 0x6807
    mov word [bp - 0x0002], dx       ; 0x6809
@..api_idx_0004_6.l1:
    push word [bp + 0xc]             ; 0x680c
    push word [bp + 0xa]             ; 0x680f
    push word [bp - 0x0002]          ; 0x6812
    call loc_678c                    ; 0x6815
    add sp, byte 6                   ; 0x6818
    mov word [bp - 0x0004], ax       ; 0x681b
    cmp ax, strict word 0xffff       ; 0x681e
    jne short @..api_idx_0004_6.l3   ; 0x6821
    mov ax, word [bp - 0x0002]       ; 0x6823
    inc ax                           ; 0x6826
    mov cx, 0x10                     ; 0x6827
    cwd                              ; 0x682a
    idiv cx                          ; 0x682b
    mov word [bp - 0x0002], dx       ; 0x682d
    mov bx, word [bp + 0x8]          ; 0x6830
    cmp dx, word [bx]                ; 0x6833
    jne short @..api_idx_0004_6.l2   ; 0x6835
    mov ax, 1                        ; 0x6837
    ret                              ; 0x683a
@..api_idx_0004_6.l2:
    jmp short @..api_idx_0004_6.l1   ; 0x683b
@..api_idx_0004_6.l3:
    mov ax, word [bp + 0xa]          ; 0x683d
    push ax                          ; 0x6840
    mov bx, word [bss_0e14]          ; 0x6841
    mov si, word [bp - 0x0004]       ; 0x6845
    mov al, byte [bx + si + 0x490]   ; 0x6848
    sub ah, ah                       ; 0x684c
    mov cx, ax                       ; 0x684e
    pop ax                           ; 0x6850
    sub ax, cx                       ; 0x6851
    mov bx, word [bp + 0x4]          ; 0x6853
    mov word [bx], ax                ; 0x6856
    mov ax, word [bp + 0xc]          ; 0x6858
    push ax                          ; 0x685b
    mov bx, word [bss_0e14]          ; 0x685c
    mov si, word [bp - 0x0004]       ; 0x6860
    mov al, byte [bx + si + 0x4a0]   ; 0x6863
    sub ah, ah                       ; 0x6867
    mov cx, ax                       ; 0x6869
    pop ax                           ; 0x686b
    sub ax, cx                       ; 0x686c
    mov bx, word [bp + 0x6]          ; 0x686e
    mov word [bx], ax                ; 0x6871
    mov ax, word [bp - 0x0004]       ; 0x6873
    mov bx, word [bp + 0x8]          ; 0x6876
    mov word [bx], ax                ; 0x6879
    mov word [bss_8f48], ax          ; 0x687b
    mov ax, 0                        ; 0x687e
    ret                              ; 0x6881
