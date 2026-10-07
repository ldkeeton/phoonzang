api_idx_009c:
    mov ax, 0xff64                   ; 0x677a
    db 0xe8, 0x8b, 0x8c ; call 0xf40b
    mov word [data_95a6], 0          ; 0x6780
    mov word [data_9d60], 0          ; 0x6786
    mov word [data_9d64], 0          ; 0x678c
    lea ax, word [bp - 0x0042]       ; 0x6792
    push ax                          ; 0x6795
    mov ax, 0x5e6                    ; 0x6796
    push ax                          ; 0x6799
    db 0xe8, 0x9e, 0x4d ; call 0xb53b
    add sp, byte 4                   ; 0x679d
    lea ax, word [bp - 0x004c]       ; 0x67a0
    push ax                          ; 0x67a3
    mov ax, 0x5e7                    ; 0x67a4
    push ax                          ; 0x67a7
    db 0xe8, 0x90, 0x4d ; call 0xb53b
    add sp, byte 4                   ; 0x67ab
    cmp word [data_91a2], byte 0     ; 0x67ae
    jle short @..api_idx_009c.l1     ; 0x67b3
    call loc_23d0                    ; 0x67b5
    mov ax, 1                        ; 0x67b8
    push ax                          ; 0x67bb
    push word [data_91a2]            ; 0x67bc
    call api_idx_0100                ; 0x67c0
    add sp, byte 4                   ; 0x67c3
    call loc_243b                    ; 0x67c6
@..api_idx_009c.l1:
    mov word [bp - 0x000c], 0        ; 0x67c9
@..api_idx_009c.l2:
    cmp word [data_93da], byte 0     ; 0x67ce
    jle short @..api_idx_009c.l3     ; 0x67d3
    cmp byte [0x91c3], 0             ; 0x67d5
    jbe short @..api_idx_009c.l3     ; 0x67da
    mov ax, 3                        ; 0x67dc
    push ax                          ; 0x67df
    db 0xe8, 0xc6, 0x4f ; call 0xb7a9
    pop cx                           ; 0x67e3
    test ax, ax                      ; 0x67e4
    jne short @..api_idx_009c.l3     ; 0x67e6
    push word [data_93da]            ; 0x67e8
    db 0xe8, 0xf1, 0x4f ; call 0xb7e0
    pop cx                           ; 0x67ef
@..api_idx_009c.l3:
    mov word [bp - 0x0002], 0        ; 0x67f0
@..api_idx_009c.l4:
    mov bx, word [bp - 0x0002]       ; 0x67f5
    cmp byte [bx - 0x6e46], 0        ; 0x67f8
    jbe short @..api_idx_009c.l6     ; 0x67fd
    mov al, byte [bx - 0x6e46]       ; 0x67ff
    sub ah, ah                       ; 0x6803
    push ax                          ; 0x6805
    push word [bp - 0x000c]          ; 0x6806
    call api_idx_0040                ; 0x6809
    add sp, byte 4                   ; 0x680c
    cmp ax, strict word 1            ; 0x680f
    jne short @..api_idx_009c.l6     ; 0x6812
    cmp word [data_95a6], byte 1     ; 0x6814
    jne short @..api_idx_009c.l5     ; 0x6819
    mov word [data_93dc], 1          ; 0x681b
    mov ax, 0                        ; 0x6821
    push ax                          ; 0x6824
    mov ax, 1                        ; 0x6825
    push ax                          ; 0x6828
    call api_idx_005e                ; 0x6829
    add sp, byte 4                   ; 0x682c
    mov word [data_843a], 0          ; 0x682f
    call loc_109f                    ; 0x6835
@..api_idx_009c.l5:
    ret                              ; 0x6838
