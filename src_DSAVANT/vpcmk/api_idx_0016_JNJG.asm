; auto-generated
api_idx_0016_JNJG:
    mov ax, 0xffea                   ; 0x6083
    call aztec_csav                  ; 0x6086
    mov ax, portrait_data_filename   ; 0x6089
    push ax                          ; 0x608c
    lea ax, word [bp - 0x16]         ; 0x608d
    push ax                          ; 0x6090
    call aztec_strcpy                ; 0x6091
    add sp, byte 4                   ; 0x6094
    mov ax, 0                        ; 0x6097
    push ax                          ; 0x609a
    call call_wait_sound             ; 0x609b
    pop cx                           ; 0x609e
    mov ax, 0                        ; 0x609f
    push ax                          ; 0x60a2
    push ax                          ; 0x60a3
    lea ax, word [bp - 0x16]         ; 0x60a4
    push ax                          ; 0x60a7
    call data_file_path              ; 0x60a8
    add sp, byte 4                   ; 0x60ab
    push ax                          ; 0x60ae
    call aztec_open                  ; 0x60af
    add sp, byte 4                   ; 0x60b2
    mov word [bp - 2], ax            ; 0x60b5
    cmp ax, strict word 0xffff       ; 0x60b8
    jne short .forward1              ; 0x60bb
    mov ax, 0x13                     ; 0x60bd
    push ax                          ; 0x60c0
    call release_and_exit            ; 0x60c1
    pop cx                           ; 0x60c4
.forward1:
    push word [bp + 6]               ; 0x60c5
    push word [bp + 4]               ; 0x60c8
    mov ax, 5                        ; 0x60cb
    push ax                          ; 0x60ce
    push word [bp - 2]               ; 0x60cf
    call read_font_glyph             ; 0x60d2
    add sp, byte 8                   ; 0x60d5
    push word [bp - 2]               ; 0x60d8
    call aztec_close                 ; 0x60db
    pop cx                           ; 0x60de
    ret                              ; 0x60df
