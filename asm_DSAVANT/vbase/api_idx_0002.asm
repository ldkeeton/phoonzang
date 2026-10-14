; auto-generated
api_idx_0002:
    mov ax, 0xfffe                   ; 0x0036
    call aztec_csav                  ; 0x0039
    mov ax, 0                        ; 0x003c
    push ax                          ; 0x003f
    call thunk_17                    ; 0x0040
    pop cx                           ; 0x0043
    mov ax, 2                        ; 0x0044
    push ax                          ; 0x0047
    mov ax, 0                        ; 0x0048
    push ax                          ; 0x004b
    mov ax, 0x9098                   ; 0x004c
    push ax                          ; 0x004f
    call ds_app_23a8                 ; 0x0050
    add sp, byte 4                   ; 0x0053
    push ax                          ; 0x0056
    call aztec_open                  ; 0x0057
    add sp, byte 4                   ; 0x005a
    mov word [bp - 0x0002], ax       ; 0x005d
    mov ax, 0                        ; 0x0060
    push ax                          ; 0x0063
    mov ax, word [bp + 0x6]          ; 0x0064
    imul word [bss_906e]             ; 0x0067
    cwd                              ; 0x006b
    add ax, word [bss_9072]          ; 0x006c
    adc dx, word [bss_9074]          ; 0x0070
    push dx                          ; 0x0074
    push ax                          ; 0x0075
    push word [bp - 0x0002]          ; 0x0076
    call aztec_lseek                 ; 0x0079
    add sp, byte 8                   ; 0x007c
    cmp word [bp + 0x8], byte 0      ; 0x007f
    jne short @..api_idx_0002.l1     ; 0x0083
    push word [bss_906e]             ; 0x0085
    push word [bp + 0x4]             ; 0x0089
    push word [bp - 0x0002]          ; 0x008c
    call ds_leaf_loc_4fb6            ; 0x008f
    add sp, byte 6                   ; 0x0092
    jmp short @..api_idx_0002.l2     ; 0x0095
@..api_idx_0002.l1:
    cmp word [bp + 0x8], byte 1      ; 0x0097
    jne short @..api_idx_0002.l2     ; 0x009b
    push word [bss_906e]             ; 0x009d
    push word [bp + 0x4]             ; 0x00a1
    push word [bp - 0x0002]          ; 0x00a4
    call aztec_write                 ; 0x00a7
    add sp, byte 6                   ; 0x00aa
@..api_idx_0002.l2:
    push word [bp - 0x0002]          ; 0x00ad
    call aztec_close                 ; 0x00b0
    pop cx                           ; 0x00b3
    ret                              ; 0x00b4
