; auto-generated
flash_button:
    mov ax, 0                        ; 0x10a6
    call aztec_csav                  ; 0x10a9
    mov ax, 6                        ; 0x10ac
    imul word [bp + 0xa]             ; 0x10af
    add ax, word [bp + 6]            ; 0x10b2
    inc ax                           ; 0x10b5
    inc ax                           ; 0x10b6
    push ax                          ; 0x10b7
    mov ax, 6                        ; 0x10b8
    imul word [bp + 8]               ; 0x10bb
    add ax, word [bp + 4]            ; 0x10be
    push ax                          ; 0x10c1
    push word [bp + 6]               ; 0x10c2
    push word [bp + 4]               ; 0x10c5
    call call_invert_area            ; 0x10c8
    add sp, byte 8                   ; 0x10cb
    mov ax, 6                        ; 0x10ce
    imul word [bp + 0xa]             ; 0x10d1
    add ax, word [bp + 6]            ; 0x10d4
    inc ax                           ; 0x10d7
    inc ax                           ; 0x10d8
    push ax                          ; 0x10d9
    mov ax, 6                        ; 0x10da
    imul word [bp + 8]               ; 0x10dd
    add ax, word [bp + 4]            ; 0x10e0
    push ax                          ; 0x10e3
    push word [bp + 6]               ; 0x10e4
    push word [bp + 4]               ; 0x10e7
    call call_show_area              ; 0x10ea
    add sp, byte 8                   ; 0x10ed
    cmp word [bp + 0xc], byte 0      ; 0x10f0
    je short .return1                ; 0x10f4
    mov ax, 0x23                     ; 0x10f6
    push ax                          ; 0x10f9
    call delay_ms                    ; 0x10fa
    pop cx                           ; 0x10fd
.return1:
    ret                              ; 0x10fe
