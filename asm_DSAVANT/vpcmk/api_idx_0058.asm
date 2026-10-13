; auto-generated
api_idx_0058:
    mov ax, 0xffa8                   ; 0x0935
    call aztec_csav                  ; 0x0938
    mov ax, 6                        ; 0x093b
    imul word [bp + 0xa]             ; 0x093e
    add ax, word [bp + 0x6]          ; 0x0941
    mov word [bp - 0x0002], ax       ; 0x0944
    mov ax, word [bp + 0x8]          ; 0x0947
    add ax, strict word 9            ; 0x094a
    mov word [bp - 0x0004], ax       ; 0x094d
    mov ax, word [bp - 0x0004]       ; 0x0950
    add ax, strict word 6            ; 0x0953
    push ax                          ; 0x0956
    mov ax, word [bp - 0x0002]       ; 0x0957
    add ax, strict word 0x19         ; 0x095a
    push ax                          ; 0x095d
    mov ax, word [bp + 0x8]          ; 0x095e
    add ax, strict word 0xffeb       ; 0x0961
    push ax                          ; 0x0964
    mov ax, word [bp + 0x6]          ; 0x0965
    add ax, strict word 0xffe7       ; 0x0968
    push ax                          ; 0x096b
    call ds_loc_3b6f                 ; 0x096c
    add sp, byte 8                   ; 0x096f
    mov word [bp - 0x0056], dx       ; 0x0972
    mov word [bp - 0x0058], ax       ; 0x0975
    mov ax, word [bp - 0x0004]       ; 0x0978
    add ax, strict word 5            ; 0x097b
    push ax                          ; 0x097e
    mov ax, word [bp - 0x0002]       ; 0x097f
    add ax, strict word 0x18         ; 0x0982
    push ax                          ; 0x0985
    mov ax, word [bp + 0x8]          ; 0x0986
    add ax, strict word 0xffec       ; 0x0989
    push ax                          ; 0x098c
    mov ax, word [bp + 0x6]          ; 0x098d
    add ax, strict word 0xffe8       ; 0x0990
    push ax                          ; 0x0993
    call ds_app_0ee1                 ; 0x0994
    add sp, byte 8                   ; 0x0997
    lea ax, word [bp - 0x0054]       ; 0x099a
    push ax                          ; 0x099d
    push word [bp + 0x4]             ; 0x099e
    call ds_app_mem_0782             ; 0x09a1
    add sp, byte 4                   ; 0x09a4
    mov ax, 0xc2                     ; 0x09a7
    push ax                          ; 0x09aa
    mov ax, 1                        ; 0x09ab
    push ax                          ; 0x09ae
    call ds_loc_3a6a                 ; 0x09af
    add sp, byte 4                   ; 0x09b2
    mov ax, word [bp + 0x8]          ; 0x09b5
    add ax, strict word 0xfff3       ; 0x09b8
    push ax                          ; 0x09bb
    lea ax, word [bp - 0x0054]       ; 0x09bc
    push ax                          ; 0x09bf
    call aztec_strlen                ; 0x09c0
    pop cx                           ; 0x09c3
    mov cx, 6                        ; 0x09c4
    imul cx                          ; 0x09c7
    mov cx, 2                        ; 0x09c9
    cwd                              ; 0x09cc
    idiv cx                          ; 0x09cd
    mov cx, ax                       ; 0x09cf
    mov ax, 0xa1                     ; 0x09d1
    sub ax, cx                       ; 0x09d4
    push ax                          ; 0x09d6
    call ds_loc_3a50                 ; 0x09d7
    add sp, byte 4                   ; 0x09da
    mov ax, 0                        ; 0x09dd
    push ax                          ; 0x09e0
    lea ax, word [bp - 0x0054]       ; 0x09e1
    push ax                          ; 0x09e4
    call ds_string_loc_3a95          ; 0x09e5
    add sp, byte 4                   ; 0x09e8
    lea ax, word [bp - 0x0054]       ; 0x09eb
    push ax                          ; 0x09ee
    mov ax, word [bp + 0x4]          ; 0x09ef
    inc ax                           ; 0x09f2
    push ax                          ; 0x09f3
    call ds_app_mem_0782             ; 0x09f4
    add sp, byte 4                   ; 0x09f7
    mov ax, 0                        ; 0x09fa
    push ax                          ; 0x09fd
    mov ax, word [bp + 0x8]          ; 0x09fe
    add ax, strict word 8            ; 0x0a01
    push ax                          ; 0x0a04
    mov ax, 6                        ; 0x0a05
    imul word [bp + 0xa]             ; 0x0a08
    add ax, word [bp + 0x6]          ; 0x0a0b
    push ax                          ; 0x0a0e
    push word [bp + 0x8]             ; 0x0a0f
    push word [bp + 0x6]             ; 0x0a12
    call ds_app_0f2a                 ; 0x0a15
    add sp, byte 0x0a                ; 0x0a18
    mov ax, 0xc0                     ; 0x0a1b
    push ax                          ; 0x0a1e
    mov ax, 0x1a                     ; 0x0a1f
    push ax                          ; 0x0a22
    call ds_loc_3a6a                 ; 0x0a23
    add sp, byte 4                   ; 0x0a26
    mov ax, word [bp + 0x8]          ; 0x0a29
    inc ax                           ; 0x0a2c
    inc ax                           ; 0x0a2d
    push ax                          ; 0x0a2e
    lea ax, word [bp - 0x0054]       ; 0x0a2f
    push ax                          ; 0x0a32
    call aztec_strlen                ; 0x0a33
    pop cx                           ; 0x0a36
    mov cx, ax                       ; 0x0a37
    mov ax, word [bp + 0xa]          ; 0x0a39
    sub ax, cx                       ; 0x0a3c
    mov cx, 6                        ; 0x0a3e
    imul cx                          ; 0x0a41
    mov cx, 2                        ; 0x0a43
    cwd                              ; 0x0a46
    idiv cx                          ; 0x0a47
    add ax, word [bp + 0x6]          ; 0x0a49
    inc ax                           ; 0x0a4c
    push ax                          ; 0x0a4d
    call ds_loc_3a50                 ; 0x0a4e
    add sp, byte 4                   ; 0x0a51
    mov ax, 0                        ; 0x0a54
    push ax                          ; 0x0a57
    lea ax, word [bp - 0x0054]       ; 0x0a58
    push ax                          ; 0x0a5b
    call ds_string_loc_3a95          ; 0x0a5c
    add sp, byte 4                   ; 0x0a5f
    mov ax, 0                        ; 0x0a62
    push ax                          ; 0x0a65
    mov ax, 0xd                      ; 0x0a66
    push ax                          ; 0x0a69
    mov ax, word [bp + 0x8]          ; 0x0a6a
    add ax, strict word 8            ; 0x0a6d
    push ax                          ; 0x0a70
    mov ax, 6                        ; 0x0a71
    imul word [bp + 0xa]             ; 0x0a74
    add ax, word [bp + 0x6]          ; 0x0a77
    push ax                          ; 0x0a7a
    push word [bp + 0x8]             ; 0x0a7b
    push word [bp + 0x6]             ; 0x0a7e
    push word [bp + 0xe]             ; 0x0a81
    call ds_app_0ced                 ; 0x0a84
    add sp, byte 0x0e                ; 0x0a87
    mov ax, 0                        ; 0x0a8a
    push ax                          ; 0x0a8d
    push ax                          ; 0x0a8e
    push ax                          ; 0x0a8f
    push ax                          ; 0x0a90
    push ax                          ; 0x0a91
    mov ax, 0xffff                   ; 0x0a92
    push ax                          ; 0x0a95
    mov ax, word [bp + 0xe]          ; 0x0a96
    inc ax                           ; 0x0a99
    push ax                          ; 0x0a9a
    call ds_app_0ced                 ; 0x0a9b
    add sp, byte 0x0e                ; 0x0a9e
    mov ax, 0xc7                     ; 0x0aa1
    push ax                          ; 0x0aa4
    mov ax, 0x13f                    ; 0x0aa5
    push ax                          ; 0x0aa8
    mov ax, 0                        ; 0x0aa9
    push ax                          ; 0x0aac
    push ax                          ; 0x0aad
    call ds_loc_3b21                 ; 0x0aae
    add sp, byte 8                   ; 0x0ab1
    mov ax, word [bp - 0x0058]       ; 0x0ab4
    mov dx, word [bp - 0x0056]       ; 0x0ab7
    ret                              ; 0x0aba
