; auto-generated
api_idx_0100_KHVV:
    mov ax, 0xff00                   ; 0x9748
    call aztec_csav                  ; 0x974b
.back1:
    lea ax, word [bp - 0xff]         ; 0x974e
    push ax                          ; 0x9752
    push word [bp + 4]               ; 0x9753
    call load_message_string         ; 0x9756
    add sp, byte 4                   ; 0x9759
    cmp word [message_not_found], byte 0 ; 0x975c
    jne short .forward2              ; 0x9761
    mov ax, word [text_line_index]   ; 0x9763
    mov cx, 7                        ; 0x9766
    shl ax, cl                       ; 0x9769
    mov bx, ax                       ; 0x976b
    cmp byte [bx + text_line_buffer], 0 ; 0x976d
    je short .forward1               ; 0x9772
    mov ax, dseg_90f2                ; 0x9774
    push ax                          ; 0x9777
    add bx, text_line_buffer         ; 0x9778
    mov ax, bx                       ; 0x977c
    push ax                          ; 0x977e
    call aztec_strcat                ; 0x977f
    add sp, byte 4                   ; 0x9782
.forward1:
    lea ax, word [bp - 0xff]         ; 0x9785
    push ax                          ; 0x9789
    mov ax, word [text_line_index]   ; 0x978a
    mov cx, 7                        ; 0x978d
    shl ax, cl                       ; 0x9790
    add ax, text_line_buffer         ; 0x9792
    push ax                          ; 0x9795
    call aztec_strcat                ; 0x9796
    add sp, byte 4                   ; 0x9799
    mov ax, word [text_line_index]   ; 0x979c
    mov cx, 7                        ; 0x979f
    shl ax, cl                       ; 0x97a2
    add ax, text_line_buffer         ; 0x97a4
    push ax                          ; 0x97a7
    lea ax, word [bp - 0xff]         ; 0x97a8
    push ax                          ; 0x97ac
    call aztec_strcpy                ; 0x97ad
    add sp, byte 4                   ; 0x97b0
    lea ax, word [bp - 0xff]         ; 0x97b3
    push ax                          ; 0x97b7
    call loc_IPHP                    ; 0x97b8
    pop cx                           ; 0x97bb
    inc word [bp + 4]                ; 0x97bc
.forward2:
    cmp word [message_not_found], byte 0 ; 0x97bf
    je short .back1                  ; 0x97c4
    call reveal_text_line            ; 0x97c6
    mov ax, word [bp + 6]            ; 0x97c9
    jmp short .forward4              ; 0x97cc
.back2:
    call next_text_line              ; 0x97ce
    jmp short .return1               ; 0x97d1
.back3:
    mov ax, 0                        ; 0x97d3
    push ax                          ; 0x97d6
    mov ax, 0xa4                     ; 0x97d7
    push ax                          ; 0x97da
    mov ax, 0x12e                    ; 0x97db
    push ax                          ; 0x97de
    call call_mouse_glide_back       ; 0x97df
    add sp, byte 6                   ; 0x97e2
    mov ax, 0                        ; 0x97e5
    mov dx, 0                        ; 0x97e8
    push dx                          ; 0x97eb
    push ax                          ; 0x97ec
    call set_mouse_pointer_shape     ; 0x97ed
    add sp, byte 4                   ; 0x97f0
.back4:
    call poll_fullscreen_hotspot     ; 0x97f3
    test ax, ax                      ; 0x97f6
    jne short .forward3              ; 0x97f8
    call step_party_animation        ; 0x97fa
    jmp short .back4                 ; 0x97fd
.forward3:
    push word [mouse_pointer_shape_seg] ; 0x97ff
    push word [mouse_pointer_shape]  ; 0x9803
    call set_mouse_pointer_shape     ; 0x9807
    add sp, byte 4                   ; 0x980a
    mov ax, 0                        ; 0x980d
    push ax                          ; 0x9810
    mov ax, 0xa4                     ; 0x9811
    push ax                          ; 0x9814
    mov ax, 0x12e                    ; 0x9815
    push ax                          ; 0x9818
    call call_mouse_glide_to         ; 0x9819
    add sp, byte 6                   ; 0x981c
    jmp short .return1               ; 0x981f
.back5:
    mov ax, 1                        ; 0x9821
    push ax                          ; 0x9824
    mov ax, 0x36                     ; 0x9825
    push ax                          ; 0x9828
    call wait_ticks_abortable        ; 0x9829
    add sp, byte 4                   ; 0x982c
    call next_text_line              ; 0x982f
    jmp short .return1               ; 0x9832
.forward4:
    cmp ax, strict word 0            ; 0x9834
    je short .back2                  ; 0x9837
    cmp ax, strict word 1            ; 0x9839
    je short .back3                  ; 0x983c
    cmp ax, strict word 2            ; 0x983e
    je short .back5                  ; 0x9841
.return1:
    ret                              ; 0x9843
