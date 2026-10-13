; auto-generated
api_idx_0016:
    mov ax, 0xffea                   ; 0x6083
    call aztec_csav                  ; 0x6086
    mov ax, 0x94e9                   ; 0x6089
    push ax                          ; 0x608c
    lea ax, word [bp - 0x0016]       ; 0x608d
    push ax                          ; 0x6090
    call aztec_strcpy                ; 0x6091
    add sp, byte 4                   ; 0x6094
    mov ax, 0                        ; 0x6097
    push ax                          ; 0x609a
    call ds_loc_415b                 ; 0x609b
    pop cx                           ; 0x609e
    mov ax, 0                        ; 0x609f
    push ax                          ; 0x60a2
    push ax                          ; 0x60a3
    lea ax, word [bp - 0x0016]       ; 0x60a4
    push ax                          ; 0x60a7
    call ds_app_23a8                 ; 0x60a8
    add sp, byte 4                   ; 0x60ab
    push ax                          ; 0x60ae
    call aztec_open                  ; 0x60af
    add sp, byte 4                   ; 0x60b2
    mov word [bp - 0x0002], ax       ; 0x60b5
    cmp ax, strict word 0xffff       ; 0x60b8
    jne short @..api_idx_0016.l1     ; 0x60bb
    mov ax, 0x13                     ; 0x60bd
    push ax                          ; 0x60c0
    call ds_app_03b8                 ; 0x60c1
    pop cx                           ; 0x60c4
@..api_idx_0016.l1:
    push word [bp + 0x6]             ; 0x60c5
    push word [bp + 0x4]             ; 0x60c8
    mov ax, 5                        ; 0x60cb
    push ax                          ; 0x60ce
    push word [bp - 0x0002]          ; 0x60cf
    call dos_read_file               ; 0x60d2
    add sp, byte 8                   ; 0x60d5
    push word [bp - 0x0002]          ; 0x60d8
    call aztec_close                 ; 0x60db
    pop cx                           ; 0x60de
    ret                              ; 0x60df
