; auto-generated
api_idx_0002_TJHL:
    mov ax, 0xfffe                   ; 0x010c
    call aztec_csav                  ; 0x010f
    mov ax, 0                        ; 0x0112
    push ax                          ; 0x0115
    push ax                          ; 0x0116
    push word [bp + 0x4]             ; 0x0117
    call data_file_path              ; 0x011a
    add sp, byte 4                   ; 0x011d
    push ax                          ; 0x0120
    call aztec_open                  ; 0x0121
    add sp, byte 4                   ; 0x0124
    mov word [bp - 0x0002], ax       ; 0x0127
    cmp ax, strict word 0xffff       ; 0x012a
    jne short @..api_idx_0002_TJHL.l1 ; 0x012d
    mov ax, 8                        ; 0x012f
    push ax                          ; 0x0132
    call release_and_exit            ; 0x0133
    pop cx                           ; 0x0136
@..api_idx_0002_TJHL.l1:
    push word [bp - 0x0002]          ; 0x0137
    call read_misc_table             ; 0x013a
    pop cx                           ; 0x013d
    push word [bp - 0x0002]          ; 0x013e
    call aztec_close                 ; 0x0141
    pop cx                           ; 0x0144
    ret                              ; 0x0145
