; auto-generated
api_idx_0002_OGHR:
    mov ax, 0xfffe                   ; 0x0084
    call aztec_csav                  ; 0x0087
    mov ax, 0                        ; 0x008a
    push ax                          ; 0x008d
    mov ax, 1                        ; 0x008e
    push ax                          ; 0x0091
    push word [bp + 0x4]             ; 0x0092
    call data_file_path              ; 0x0095
    add sp, byte 4                   ; 0x0098
    push ax                          ; 0x009b
    call aztec_open                  ; 0x009c
    add sp, byte 4                   ; 0x009f
    mov word [bp - 0x0002], ax       ; 0x00a2
    cmp ax, strict word 0xffff       ; 0x00a5
    jne short @..api_idx_0002_OGHR.l1 ; 0x00a8
    mov ax, 7                        ; 0x00aa
    push ax                          ; 0x00ad
    call fatal_error                 ; 0x00ae
    pop cx                           ; 0x00b1
@..api_idx_0002_OGHR.l1:
    mov ax, 0                        ; 0x00b2
    push ax                          ; 0x00b5
    push word [bp + 0x6]             ; 0x00b6
    push word [bp - 0x0002]          ; 0x00b9
    call gfx_load_maze               ; 0x00bc
    add sp, byte 6                   ; 0x00bf
    push word [bp - 0x0002]          ; 0x00c2
    call aztec_close                 ; 0x00c5
    pop cx                           ; 0x00c8
    ret                              ; 0x00c9
