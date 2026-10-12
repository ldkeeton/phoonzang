api_idx_002a:
    mov ax, 0xffd6                   ; 0x0022
    call ds_aztec_csav               ; 0x0025
    mov ax, 0                        ; 0x0028
    push ax                          ; 0x002b
    mov ax, 0x28                     ; 0x002c
    push ax                          ; 0x002f
    lea ax, word [bp - 0x002a]       ; 0x0030
    push ax                          ; 0x0033
    call ds_aztec_setmem             ; 0x0034
    add sp, byte 6                   ; 0x0037
    push word [bp + 0x4]             ; 0x003a
    lea ax, word [bp - 0x002a]       ; 0x003d
    push ax                          ; 0x0040
    call ds_aztec_strcpy             ; 0x0041
    add sp, byte 4                   ; 0x0044
    mov ax, 0x2f                     ; 0x0047
    push ax                          ; 0x004a
    lea ax, word [bp - 0x002a]       ; 0x004b
    push ax                          ; 0x004e
    call ds_strlen                   ; 0x004f
    add sp, byte 4                   ; 0x0052
    mov word [bp - 0x0002], ax       ; 0x0055
    cmp ax, strict word 0xffff       ; 0x0058
    jne short @..api_idx_002a.l1     ; 0x005b
    lea ax, word [bp - 0x002a]       ; 0x005d
    push ax                          ; 0x0060
    call ds_aztec_strlen             ; 0x0061
    pop cx                           ; 0x0064
    mov word [bp - 0x0002], ax       ; 0x0065
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x0068
    jle short @..api_idx_002a.l2     ; 0x006c
    mov word [bp - 0x0002], 0xa      ; 0x006e
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x0073
    add bx, bp                       ; 0x0076
    mov byte [bx - 0x002a], 0        ; 0x0078
    mov byte [bx - 0x001f], 0        ; 0x007c
    mov ax, 0                        ; 0x0080
    push ax                          ; 0x0083
    push word [bp + 0xa]             ; 0x0084
    call ds_loc_3a6a                 ; 0x0087
    add sp, byte 4                   ; 0x008a
    push word [bp + 0x8]             ; 0x008d
    push word [bp + 0x6]             ; 0x0090
    call ds_loc_3a50                 ; 0x0093
    add sp, byte 4                   ; 0x0096
    mov ax, 0                        ; 0x0099
    push ax                          ; 0x009c
    lea ax, word [bp - 0x002a]       ; 0x009d
    push ax                          ; 0x00a0
    call ds_string_loc_3a95          ; 0x00a1
    add sp, byte 4                   ; 0x00a4
    mov ax, word [bp + 0x8]          ; 0x00a7
    add ax, strict word 6            ; 0x00aa
    push ax                          ; 0x00ad
    push word [bp + 0x6]             ; 0x00ae
    call ds_loc_3a50                 ; 0x00b1
    add sp, byte 4                   ; 0x00b4
    mov ax, 0                        ; 0x00b7
    push ax                          ; 0x00ba
    mov ax, word [bp - 0x0002]       ; 0x00bb
    lea cx, word [bp - 0x0029]       ; 0x00be
    add ax, cx                       ; 0x00c1
    push ax                          ; 0x00c3
    call ds_string_loc_3a95          ; 0x00c4
    add sp, byte 4                   ; 0x00c7
    ret                              ; 0x00ca
