; auto-generated
api_idx_0002:
    mov ax, 0xfffe                   ; 0x0022
    call aztec_csav                  ; 0x0025
    mov ax, 0                        ; 0x0028
    push ax                          ; 0x002b
    call thunk_17                    ; 0x002c
    pop cx                           ; 0x002f
    mov ax, 0                        ; 0x0030
    push ax                          ; 0x0033
    mov ax, 1                        ; 0x0034
    push ax                          ; 0x0037
    push word [bp + 0x4]             ; 0x0038
    call ds_app_23a8                 ; 0x003b
    add sp, byte 4                   ; 0x003e
    push ax                          ; 0x0041
    call aztec_open                  ; 0x0042
    add sp, byte 4                   ; 0x0045
    mov word [bp - 0x0002], ax       ; 0x0048
    cmp ax, strict word 0xffff       ; 0x004b
    jne short @..api_idx_0002.l1     ; 0x004e
    mov ax, 0x1c                     ; 0x0050
    push ax                          ; 0x0053
    call ds_app_03b8                 ; 0x0054
    pop cx                           ; 0x0057
@..api_idx_0002.l1:
    mov ax, 0                        ; 0x0058
    push ax                          ; 0x005b
    push word [bp - 0x0002]          ; 0x005c
    call thunk_29                    ; 0x005f
    add sp, byte 4                   ; 0x0062
    push word [bp - 0x0002]          ; 0x0065
    call aztec_close                 ; 0x0068
    pop cx                           ; 0x006b
    cmp word [bp + 0x6], byte 0      ; 0x006c
    je short @..api_idx_0002.l2      ; 0x0070
    mov ax, 0xc7                     ; 0x0072
    push ax                          ; 0x0075
    mov ax, 0x13f                    ; 0x0076
    push ax                          ; 0x0079
    mov ax, 0                        ; 0x007a
    push ax                          ; 0x007d
    push ax                          ; 0x007e
    call thunk_4                     ; 0x007f
    add sp, byte 8                   ; 0x0082
@..api_idx_0002.l2:
    ret                              ; 0x0085
