; auto-generated
api_idx_0080_TKTP:
    mov ax, 0xff80                   ; 0x96c7
    call aztec_csav                  ; 0x96ca
    lea ax, word [bp - 0x80]         ; 0x96cd
    push ax                          ; 0x96d0
    push word [bp + 4]               ; 0x96d1
    call load_message_string         ; 0x96d4
    add sp, byte 4                   ; 0x96d7
    mov ax, 0x5e                     ; 0x96da
    push ax                          ; 0x96dd
    push word [bp + 6]               ; 0x96de
    lea ax, word [bp - 0x80]         ; 0x96e1
    push ax                          ; 0x96e4
    call str_subst_char              ; 0x96e5
    add sp, byte 6                   ; 0x96e8
    mov ax, word [text_line_index]   ; 0x96eb
    mov cx, 7                        ; 0x96ee
    shl ax, cl                       ; 0x96f1
    mov bx, ax                       ; 0x96f3
    cmp byte [bx + text_line_buffer], 0 ; 0x96f5
    je short @..api_idx_0080_TKTP.l1 ; 0x96fa
    mov ax, dseg_90f0                ; 0x96fc
    push ax                          ; 0x96ff
    add bx, text_line_buffer         ; 0x9700
    mov ax, bx                       ; 0x9704
    push ax                          ; 0x9706
    call aztec_strcat                ; 0x9707
    add sp, byte 4                   ; 0x970a
@..api_idx_0080_TKTP.l1:
    lea ax, word [bp - 0x80]         ; 0x970d
    push ax                          ; 0x9710
    mov ax, word [text_line_index]   ; 0x9711
    mov cx, 7                        ; 0x9714
    shl ax, cl                       ; 0x9717
    add ax, text_line_buffer         ; 0x9719
    push ax                          ; 0x971c
    call aztec_strcat                ; 0x971d
    add sp, byte 4                   ; 0x9720
    mov ax, word [text_line_index]   ; 0x9723
    mov cx, 7                        ; 0x9726
    shl ax, cl                       ; 0x9729
    add ax, text_line_buffer         ; 0x972b
    push ax                          ; 0x972e
    lea ax, word [bp - 0x80]         ; 0x972f
    push ax                          ; 0x9732
    call aztec_strcpy                ; 0x9733
    add sp, byte 4                   ; 0x9736
    lea ax, word [bp - 0x80]         ; 0x9739
    push ax                          ; 0x973c
    call loc_IPHP                    ; 0x973d
    pop cx                           ; 0x9740
    call reveal_text_line            ; 0x9741
    call next_text_line              ; 0x9744
    ret                              ; 0x9747
