; auto-generated
draw_animation_frame:
    mov ax, 0xfff0                   ; 0x0090
    call aztec_csav                  ; 0x0093
    cmp word [bp + 0x4], byte 0      ; 0x0096
    jl short @..draw_animation_frame.l1 ; 0x009a
    cmp word [bp + 0x4], byte 6      ; 0x009c
    jle short @..draw_animation_frame.l2 ; 0x00a0
@..draw_animation_frame.l1:
    mov ax, 0xffff                   ; 0x00a2
    ret                              ; 0x00a5
@..draw_animation_frame.l2:
    mov word [bp - 0x0002], 7        ; 0x00a6
    mov ax, word [bp + 0x4]          ; 0x00ab
    inc ax                           ; 0x00ae
    mov word [bp - 0x0004], ax       ; 0x00af
    mov al, byte [bp - 0x0004]       ; 0x00b2
    mov byte [bp - 0x0010], al       ; 0x00b5
    mov byte [bp - 0x000f], 0        ; 0x00b8
    mov ax, 0                        ; 0x00bc
    push ax                          ; 0x00bf
    push ax                          ; 0x00c0
    lea ax, word [bp - 0x0010]       ; 0x00c1
    push ax                          ; 0x00c4
    mov ax, 0                        ; 0x00c5
    push ax                          ; 0x00c8
    mov ax, 0x8f                     ; 0x00c9
    push ax                          ; 0x00cc
    mov ax, 0x21                     ; 0x00cd
    push ax                          ; 0x00d0
    mov ax, 0xf8                     ; 0x00d1
    push ax                          ; 0x00d4
    mov ax, 0x48                     ; 0x00d5
    push ax                          ; 0x00d8
    mov ax, 0x15e                    ; 0x00d9
    imul word [bp - 0x0002]          ; 0x00dc
    add ax, word [bp - 0x0004]       ; 0x00df
    mov bx, ax                       ; 0x00e2
    mov al, byte [bx + slot_rec_target_rand + 0x51] ; 0x00e4
    sub ah, ah                       ; 0x00e8
    add ax, strict word 0x20         ; 0x00ea
    push ax                          ; 0x00ed
    mov ax, 0x15e                    ; 0x00ee
    imul word [bp - 0x0002]          ; 0x00f1
    mov cx, word [bp - 0x0004]       ; 0x00f4
    shl cx, 1                        ; 0x00f7
    add ax, cx                       ; 0x00f9
    mov bx, ax                       ; 0x00fb
    mov al, byte [bx + slot_rec_target_rand + 0x8] ; 0x00fd
    sub ah, ah                       ; 0x0101
    push ax                          ; 0x0103
    push word [bp - 0x0002]          ; 0x0104
    call gfx_draw_text               ; 0x0107
    add sp, byte 0x16                ; 0x010a
    mov ax, word [bp + 0x4]          ; 0x010d
    ret                              ; 0x0110
