api_idx_002a:
    mov ax, 0xffd6                   ; 0x6977
    call ds_aztec_csav               ; 0x697a
    mov ax, 0                        ; 0x697d
    push ax                          ; 0x6980
    mov ax, 0x28                     ; 0x6981
    push ax                          ; 0x6984
    lea ax, word [bp - 0x002a]       ; 0x6985
    push ax                          ; 0x6988
    call ds_aztec_setmem             ; 0x6989
    add sp, byte 6                   ; 0x698c
    push word [bp + 0x4]             ; 0x698f
    lea ax, word [bp - 0x002a]       ; 0x6992
    push ax                          ; 0x6995
    call ds_aztec_strcpy             ; 0x6996
    add sp, byte 4                   ; 0x6999
    mov ax, 0x2f                     ; 0x699c
    push ax                          ; 0x699f
    lea ax, word [bp - 0x002a]       ; 0x69a0
    push ax                          ; 0x69a3
    call ds_strlen                   ; 0x69a4
    add sp, byte 4                   ; 0x69a7
    mov word [bp - 0x0002], ax       ; 0x69aa
    cmp ax, strict word 0xffff       ; 0x69ad
    jne short @..api_idx_002a.l1     ; 0x69b0
    lea ax, word [bp - 0x002a]       ; 0x69b2
    push ax                          ; 0x69b5
    call ds_aztec_strlen             ; 0x69b6
    pop cx                           ; 0x69b9
    mov word [bp - 0x0002], ax       ; 0x69ba
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x69bd
    jle short @..api_idx_002a.l2     ; 0x69c1
    mov word [bp - 0x0002], 0xa      ; 0x69c3
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x69c8
    add bx, bp                       ; 0x69cb
    mov byte [bx - 0x002a], 0        ; 0x69cd
    mov byte [bx - 0x001f], 0        ; 0x69d1
    mov ax, 0                        ; 0x69d5
    push ax                          ; 0x69d8
    push word [bp + 0xa]             ; 0x69d9
    call ds_loc_3a6a                 ; 0x69dc
    add sp, byte 4                   ; 0x69df
    push word [bp + 0x8]             ; 0x69e2
    push word [bp + 0x6]             ; 0x69e5
    call ds_loc_3a50                 ; 0x69e8
    add sp, byte 4                   ; 0x69eb
    mov ax, 0                        ; 0x69ee
    push ax                          ; 0x69f1
    lea ax, word [bp - 0x002a]       ; 0x69f2
    push ax                          ; 0x69f5
    call ds_string_loc_3a95          ; 0x69f6
    add sp, byte 4                   ; 0x69f9
    mov ax, word [bp + 0x8]          ; 0x69fc
    add ax, strict word 6            ; 0x69ff
    push ax                          ; 0x6a02
    push word [bp + 0x6]             ; 0x6a03
    call ds_loc_3a50                 ; 0x6a06
    add sp, byte 4                   ; 0x6a09
    mov ax, 0                        ; 0x6a0c
    push ax                          ; 0x6a0f
    mov ax, word [bp - 0x0002]       ; 0x6a10
    lea cx, word [bp - 0x0029]       ; 0x6a13
    add ax, cx                       ; 0x6a16
    push ax                          ; 0x6a18
    call ds_string_loc_3a95          ; 0x6a19
    add sp, byte 4                   ; 0x6a1c
    ret                              ; 0x6a1f
