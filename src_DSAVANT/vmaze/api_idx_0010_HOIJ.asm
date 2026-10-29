; auto-generated
api_idx_0010_HOIJ:
    mov ax, 0xfff0                   ; 0x2033
    call aztec_csav                  ; 0x2036
    mov ax, word [bp + 4]            ; 0x2039
    shl ax, 1                        ; 0x203c
    shl ax, 1                        ; 0x203e
    shl ax, 1                        ; 0x2040
    mov bx, ax                       ; 0x2042
    push word [bx + 0x126]           ; 0x2044
    push word [bx + 0x124]           ; 0x2048
    push word [bx + 0x122]           ; 0x204c
    push word [bx + 0x120]           ; 0x2050
    call call_save_area              ; 0x2054
    add sp, byte 8                   ; 0x2057
    mov word [bp - 0xe], dx          ; 0x205a
    mov word [bp - 0x10], ax         ; 0x205d
    mov word [bp - 2], 0             ; 0x2060
    mov al, byte [bp + 4]            ; 0x2065
    inc al                           ; 0x2068
    mov byte [bp - 0xc], al          ; 0x206a
    mov byte [bp - 0xb], 0           ; 0x206d
    mov ax, 0                        ; 0x2071
    push ax                          ; 0x2074
    push ax                          ; 0x2075
    lea ax, word [bp - 0xc]          ; 0x2076
    push ax                          ; 0x2079
    mov ax, 0                        ; 0x207a
    push ax                          ; 0x207d
    mov ax, 0xc7                     ; 0x207e
    push ax                          ; 0x2081
    mov ax, 0                        ; 0x2082
    push ax                          ; 0x2085
    mov ax, 0x13f                    ; 0x2086
    push ax                          ; 0x2089
    mov ax, 0                        ; 0x208a
    push ax                          ; 0x208d
    mov ax, word [bp + 4]            ; 0x208e
    shl ax, 1                        ; 0x2091
    shl ax, 1                        ; 0x2093
    shl ax, 1                        ; 0x2095
    mov bx, ax                       ; 0x2097
    push word [bx + 0x122]           ; 0x2099
    push word [bx + 0x120]           ; 0x209d
    push word [bp - 2]               ; 0x20a1
    call call_draw_text              ; 0x20a4
    add sp, byte 0x16                ; 0x20a7
    mov ax, word [bp + 4]            ; 0x20aa
    shl ax, 1                        ; 0x20ad
    shl ax, 1                        ; 0x20af
    shl ax, 1                        ; 0x20b1
    mov bx, ax                       ; 0x20b3
    push word [bx + 0x126]           ; 0x20b5
    push word [bx + 0x124]           ; 0x20b9
    push word [bx + 0x122]           ; 0x20bd
    push word [bx + 0x120]           ; 0x20c1
    call call_show_area              ; 0x20c5
    add sp, byte 8                   ; 0x20c8
    mov ax, 1                        ; 0x20cb
    push ax                          ; 0x20ce
    push word [bp - 0xe]             ; 0x20cf
    push word [bp - 0x10]            ; 0x20d2
    call call_restore_area           ; 0x20d5
    add sp, byte 6                   ; 0x20d8
    ret                              ; 0x20db
