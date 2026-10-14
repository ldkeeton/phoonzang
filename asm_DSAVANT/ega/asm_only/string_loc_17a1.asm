; auto-generated
; asm only
string_loc_17a1:
    push es                          ; 0x17a1
    push di                          ; 0x17a2
    mov ax, cs                       ; 0x17a3
    mov es, ax                       ; 0x17a5
    mov cx, 0x100                    ; 0x17a7
    mov di, cseg_2a02 - IMAGE_BASE   ; 0x17aa
    xor al, al                       ; 0x17ad
    rep stosb                        ; 0x17af
    mov cx, 0x400                    ; 0x17b1
    mov di, cseg_2602 - IMAGE_BASE   ; 0x17b4
    xor al, al                       ; 0x17b7
    rep stosb                        ; 0x17b9
    xor di, di                       ; 0x17bb
    mov bx, 0x33b3                   ; 0x17bd
    mov cx, word [cs:cseg_2591 - IMAGE_BASE] ; 0x17c0
@..string_loc_17a1.l1:
    push cx                          ; 0x17c5
    mov cx, word [cs:cseg_258d - IMAGE_BASE] ; 0x17c6
    mov word [bp - 0x0002], cx       ; 0x17cb
    mov al, 6                        ; 0x17ce
    mov byte [bp - 0x0004], al       ; 0x17d0
@..string_loc_17a1.l2:
    lodsb                            ; 0x17d3
    mov ah, byte [bp - 0x0004]       ; 0x17d4
    call leaf_loc_3245               ; 0x17d7
    or byte [cs:di + 0x2a02], ch     ; 0x17da
    or byte [cs:di + 0x2602], dl     ; 0x17df
    or byte [cs:di + 0x2702], dh     ; 0x17e4
    or byte [cs:di + 0x2802], al     ; 0x17e9
    or byte [cs:di + 0x2902], ah     ; 0x17ee
    sub byte [bp - 0x0004], 2        ; 0x17f3
    jae short @..string_loc_17a1.l3  ; 0x17f7
    inc di                           ; 0x17f9
    mov byte [bp - 0x0004], 6        ; 0x17fa
@..string_loc_17a1.l3:
    dec word [bp - 0x0002]           ; 0x17fe
    jne short @..string_loc_17a1.l2  ; 0x1801
    cmp byte [bp - 0x0004], 6        ; 0x1803
    je short @..string_loc_17a1.l4   ; 0x1807
    inc di                           ; 0x1809
@..string_loc_17a1.l4:
    pop cx                           ; 0x180a
    loop @..string_loc_17a1.l1       ; 0x180b
    pop di                           ; 0x180d
    pop es                           ; 0x180e
    ret                              ; 0x180f
