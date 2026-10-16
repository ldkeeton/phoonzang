; auto-generated
loc_TPPH:
    cmp word [bp + 0x4], strict word 0xe3 ; 0x17af
    jl short @..loc_TPPH.l1          ; 0x17b4
    cmp word [bp + 0x4], strict word 0xfe ; 0x17b6
    jge short @..loc_TPPH.l1         ; 0x17bb
    mov ax, 0                        ; 0x17bd
    sub ax, word [bp + 0x4]          ; 0x17c0
    ret                              ; 0x17c3
@..loc_TPPH.l1:
    mov ax, word [bp + 0x4]          ; 0x17c4
    ret                              ; 0x17c7
@..loc_16e6.l10:
    mov cx, 0x14                     ; 0x17c8
    call leaf_loc_RJLR               ; 0x17cb
jumptable_17ce:
    dw 0x00ea                                  ; 0x17ce ; literal
    dw 0x00ec                                  ; 0x17d0 ; literal
    dw 0x00f1                                  ; 0x17d2 ; literal
    dw 0x00f5                                  ; 0x17d4 ; literal
    dw 0x00fc                                  ; 0x17d6 ; literal
    dw 0x00fd                                  ; 0x17d8 ; literal
    dw 0x0104                                  ; 0x17da ; literal
    dw 0x0105                                  ; 0x17dc ; literal
    dw 0x0106                                  ; 0x17de ; literal
    dw 0x0107                                  ; 0x17e0 ; literal
    dw 0x0116                                  ; 0x17e2 ; literal
    dw 0x011c                                  ; 0x17e4 ; literal
    dw 0x012d                                  ; 0x17e6 ; literal
    dw 0x0131                                  ; 0x17e8 ; literal
    dw 0x0132                                  ; 0x17ea ; literal
    dw 0x0133                                  ; 0x17ec ; literal
    dw 0x0134                                  ; 0x17ee ; literal
    dw 0x0135                                  ; 0x17f0 ; literal
    dw 0x0139                                  ; 0x17f2 ; literal
    dw 0x67f6                                  ; 0x17f4 ; literal
    dw 0x67f6                                  ; 0x17f6 ; literal

    db 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67
    db 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67
    db 0xf6, 0x67, 0x63, 0x68, 0xb8, 0x00, 0x00, 0xc3

