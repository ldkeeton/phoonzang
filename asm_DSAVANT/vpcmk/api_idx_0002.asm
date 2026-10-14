; auto-generated
api_idx_0002:
    mov ax, 0xfffe                   ; 0x0021
    call aztec_csav                  ; 0x0024
    mov ax, 0                        ; 0x0027
    push ax                          ; 0x002a
    call thunk_17                    ; 0x002b
    pop cx                           ; 0x002e
    mov ax, 0                        ; 0x002f
    push ax                          ; 0x0032
    mov ax, 1                        ; 0x0033
    push ax                          ; 0x0036
    push word [bp + 0x4]             ; 0x0037
    call ds_app_23a8                 ; 0x003a
    add sp, byte 4                   ; 0x003d
    push ax                          ; 0x0040
    call aztec_open                  ; 0x0041
    add sp, byte 4                   ; 0x0044
    mov word [bp - 0x0002], ax       ; 0x0047
    cmp ax, strict word 0xffff       ; 0x004a
    jne short @..api_idx_0002.l1     ; 0x004d
    mov ax, 0x1c                     ; 0x004f
    push ax                          ; 0x0052
    call ds_app_03b8                 ; 0x0053
    pop cx                           ; 0x0056
@..api_idx_0002.l1:
    mov ax, 0                        ; 0x0057
    push ax                          ; 0x005a
    push word [bp - 0x0002]          ; 0x005b
    call thunk_29                    ; 0x005e
    add sp, byte 4                   ; 0x0061
    push word [bp - 0x0002]          ; 0x0064
    call aztec_close                 ; 0x0067
    pop cx                           ; 0x006a
    cmp word [bp + 0x6], byte 0      ; 0x006b
    je short @..api_idx_0002.l2      ; 0x006f
    mov ax, 0xc7                     ; 0x0071
    push ax                          ; 0x0074
    mov ax, 0x13f                    ; 0x0075
    push ax                          ; 0x0078
    mov ax, 0                        ; 0x0079
    push ax                          ; 0x007c
    push ax                          ; 0x007d
    call thunk_4                     ; 0x007e
    add sp, byte 8                   ; 0x0081
@..api_idx_0002.l2:
    ret                              ; 0x0084
