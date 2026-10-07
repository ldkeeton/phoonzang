api_idx_0100:
    mov ax, 0xff00                   ; 0x9748
    db 0xe8, 0xbd, 0x5c ; call 0xf40b
@..api_idx_0100.l1:
    lea ax, word [bp - 0x00ff]       ; 0x974e
    push ax                          ; 0x9752
    push word [bp + 0x4]             ; 0x9753
    db 0xe8, 0xe2, 0x1d ; call 0xb53b
    add sp, byte 4                   ; 0x9759
    cmp word [data_5216], byte 0     ; 0x975c
    jne short @..api_idx_0100.l3     ; 0x9761
    mov ax, word [data_93d4]         ; 0x9763
    mov cx, 7                        ; 0x9766
    shl ax, cl                       ; 0x9769
    mov bx, ax                       ; 0x976b
    cmp byte [bx - 0x6e34], 0        ; 0x976d
    je short @..api_idx_0100.l2      ; 0x9772
    mov ax, 0x90f2                   ; 0x9774
    push ax                          ; 0x9777
    add bx, strict word 0x91cc       ; 0x9778
    mov ax, bx                       ; 0x977c
    push ax                          ; 0x977e
    db 0xe8, 0xab, 0x5b ; call 0xf32d
    add sp, byte 4                   ; 0x9782
@..api_idx_0100.l2:
    lea ax, word [bp - 0x00ff]       ; 0x9785
    push ax                          ; 0x9789
    mov ax, word [data_93d4]         ; 0x978a
    mov cx, 7                        ; 0x978d
    shl ax, cl                       ; 0x9790
    add ax, 0x91cc                   ; 0x9792
    push ax                          ; 0x9795
    db 0xe8, 0x94, 0x5b ; call 0xf32d
    add sp, byte 4                   ; 0x9799
    mov ax, word [data_93d4]         ; 0x979c
    mov cx, 7                        ; 0x979f
    shl ax, cl                       ; 0x97a2
    add ax, 0x91cc                   ; 0x97a4
    push ax                          ; 0x97a7
    lea ax, word [bp - 0x00ff]       ; 0x97a8
    push ax                          ; 0x97ac
    db 0xe8, 0xb4, 0x5b ; call 0xf364
    add sp, byte 4                   ; 0x97b0
    lea ax, word [bp - 0x00ff]       ; 0x97b3
    push ax                          ; 0x97b7
    call loc_9587                    ; 0x97b8
    pop cx                           ; 0x97bb
    inc word [bp + 0x4]              ; 0x97bc
@..api_idx_0100.l3:
    cmp word [data_5216], byte 0     ; 0x97bf
    je short @..api_idx_0100.l1      ; 0x97c4
    call api_idx_000e_2              ; 0x97c6
    mov ax, word [bp + 0x6]          ; 0x97c9
    jmp short @..api_idx_0100.l9     ; 0x97cc
@..api_idx_0100.l4:
    call api_idx_0004_2              ; 0x97ce
    jmp short @..api_idx_0100.l10    ; 0x97d1
@..api_idx_0100.l5:
    mov ax, 0                        ; 0x97d3
    push ax                          ; 0x97d6
    mov ax, 0xa4                     ; 0x97d7
    push ax                          ; 0x97da
    mov ax, 0x12e                    ; 0x97db
    push ax                          ; 0x97de
    db 0xe8, 0x0f, 0x59 ; call 0xf0f1
    add sp, byte 6                   ; 0x97e2
    mov ax, 0                        ; 0x97e5
    mov dx, 0                        ; 0x97e8
    push dx                          ; 0x97eb
    push ax                          ; 0x97ec
    db 0xe8, 0xbf, 0x20 ; call 0xb8af
    add sp, byte 4                   ; 0x97f0
@..api_idx_0100.l6:
    db 0xe8, 0xf9, 0x22 ; call 0xbaef
    test ax, ax                      ; 0x97f6
    jne short @..api_idx_0100.l7     ; 0x97f8
    call api_idx_0006_2              ; 0x97fa
    jmp short @..api_idx_0100.l6     ; 0x97fd
@..api_idx_0100.l7:
    push word [data_0e2c]            ; 0x97ff
    push word [data_0e2a]            ; 0x9803
    db 0xe8, 0xa5, 0x20 ; call 0xb8af
    add sp, byte 4                   ; 0x980a
    mov ax, 0                        ; 0x980d
    push ax                          ; 0x9810
    mov ax, 0xa4                     ; 0x9811
    push ax                          ; 0x9814
    mov ax, 0x12e                    ; 0x9815
    push ax                          ; 0x9818
    db 0xe8, 0xc8, 0x58 ; call 0xf0e4
    add sp, byte 6                   ; 0x981c
    jmp short @..api_idx_0100.l10    ; 0x981f
@..api_idx_0100.l8:
    mov ax, 1                        ; 0x9821
    push ax                          ; 0x9824
    mov ax, 0x36                     ; 0x9825
    push ax                          ; 0x9828
    call api_idx_0004_5              ; 0x9829
    add sp, byte 4                   ; 0x982c
    call api_idx_0004_2              ; 0x982f
    jmp short @..api_idx_0100.l10    ; 0x9832
@..api_idx_0100.l9:
    cmp ax, strict word 0            ; 0x9834
    je short @..api_idx_0100.l4      ; 0x9837
    cmp ax, strict word 1            ; 0x9839
    je short @..api_idx_0100.l5      ; 0x983c
    cmp ax, strict word 2            ; 0x983e
    je short @..api_idx_0100.l8      ; 0x9841
@..api_idx_0100.l10:
    ret                              ; 0x9843
