api_idx_0004:
    mov ax, 0xfffc                   ; 0x0034
    call ds_aztec_csav               ; 0x0037
    mov ax, word [bp + 0x6]          ; 0x003a
    mov bx, 0x64                     ; 0x003d
    imul bx                          ; 0x0040
    push ax                          ; 0x0042
    push dx                          ; 0x0043
    mov ax, word [bp + 0x8]          ; 0x0044
    cwd                              ; 0x0047
    mov cx, ax                       ; 0x0048
    mov bx, dx                       ; 0x004a
    pop dx                           ; 0x004c
    pop ax                           ; 0x004d
    call ds_aztec_ldv                ; 0x004e
    mov cx, ax                       ; 0x0051
    mov bx, dx                       ; 0x0053
    mov ax, 0x64                     ; 0x0055
    mov dx, 0                        ; 0x0058
    sub ax, cx                       ; 0x005b
    sbb dx, bx                       ; 0x005d
    mov word [bp - 0x0002], dx       ; 0x005f
    mov word [bp - 0x0004], ax       ; 0x0062
    cmp dx, byte 0                   ; 0x0065
    jg short @..api_idx_0004.l1      ; 0x0068
    jne short @..api_idx_0004.l2     ; 0x006a
    cmp ax, strict word 0x32         ; 0x006c
    jbe short @..api_idx_0004.l2     ; 0x006f
@..api_idx_0004.l1:
    jmp short @..api_idx_0004.l3     ; 0x0071
@..api_idx_0004.l2:
    mov ax, 0                        ; 0x0073
    ret                              ; 0x0076
@..api_idx_0004.l3:
    cmp word [bp - 0x0002], byte 0   ; 0x0077
    jg short @..api_idx_0004.l4      ; 0x007b
    jne short @..api_idx_0004.l5     ; 0x007d
    cmp word [bp - 0x0004], byte 0x42 ; 0x007f
    jbe short @..api_idx_0004.l5     ; 0x0083
@..api_idx_0004.l4:
    jmp short @..api_idx_0004.l7     ; 0x0085
@..api_idx_0004.l5:
    mov ax, 0                        ; 0x0087
    cmp word [bp + 0x4], byte 0      ; 0x008a
    jne short @..api_idx_0004.l6     ; 0x008e
    mov ax, 5                        ; 0x0090
@..api_idx_0004.l6:
    ret                              ; 0x0093
@..api_idx_0004.l7:
    cmp word [bp - 0x0002], byte 0   ; 0x0094
    jg short @..api_idx_0004.l8      ; 0x0098
    jne short @..api_idx_0004.l9     ; 0x009a
    cmp word [bp - 0x0004], byte 0x4b ; 0x009c
    jbe short @..api_idx_0004.l9     ; 0x00a0
@..api_idx_0004.l8:
    jmp short @..api_idx_0004.l11    ; 0x00a2
@..api_idx_0004.l9:
    mov ax, 1                        ; 0x00a4
    cmp word [bp + 0x4], byte 0      ; 0x00a7
    jne short @..api_idx_0004.l10    ; 0x00ab
    mov ax, 0xa                      ; 0x00ad
@..api_idx_0004.l10:
    ret                              ; 0x00b0
@..api_idx_0004.l11:
    cmp word [bp - 0x0002], byte 0   ; 0x00b1
    jg short @..api_idx_0004.l12     ; 0x00b5
    jne short @..api_idx_0004.l13    ; 0x00b7
    cmp word [bp - 0x0004], byte 0x5a ; 0x00b9
    jbe short @..api_idx_0004.l13    ; 0x00bd
@..api_idx_0004.l12:
    jmp short @..api_idx_0004.l15    ; 0x00bf
@..api_idx_0004.l13:
    mov ax, 2                        ; 0x00c1
    cmp word [bp + 0x4], byte 0      ; 0x00c4
    jne short @..api_idx_0004.l14    ; 0x00c8
    mov ax, 0x14                     ; 0x00ca
@..api_idx_0004.l14:
    ret                              ; 0x00cd
@..api_idx_0004.l15:
    mov ax, 4                        ; 0x00ce
    cmp word [bp + 0x4], byte 0      ; 0x00d1
    jne short @..api_idx_0004.l16    ; 0x00d5
    mov ax, 0x28                     ; 0x00d7
@..api_idx_0004.l16:
    ret                              ; 0x00da
