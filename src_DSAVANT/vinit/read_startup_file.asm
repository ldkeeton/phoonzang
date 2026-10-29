; auto-generated
read_startup_file:
    mov ax, 0xfffe                   ; 0x00ca
    call aztec_csav                  ; 0x00cd
    mov ax, 0                        ; 0x00d0
    push ax                          ; 0x00d3
    push ax                          ; 0x00d4
    push word [bp + 4]               ; 0x00d5
    call data_file_path              ; 0x00d8
    add sp, byte 4                   ; 0x00db
    push ax                          ; 0x00de
    call aztec_open                  ; 0x00df
    add sp, byte 4                   ; 0x00e2
    mov word [bp - 2], ax            ; 0x00e5
    cmp ax, strict word 0xffff       ; 0x00e8
    jne short .forward1              ; 0x00eb
    mov ax, 8                        ; 0x00ed
    push ax                          ; 0x00f0
    call release_and_exit            ; 0x00f1
    pop cx                           ; 0x00f4
.forward1:
    push word [bp + 8]               ; 0x00f5
    push word [bp + 6]               ; 0x00f8
    push word [bp - 2]               ; 0x00fb
    call aztec_read                  ; 0x00fe
    add sp, byte 6                   ; 0x0101
    push word [bp - 2]               ; 0x0104
    call aztec_close                 ; 0x0107
    pop cx                           ; 0x010a
    ret                              ; 0x010b
