; auto-generated
api_idx_0054_NJIS:
    mov ax, 0xffac                   ; 0x4254
    call aztec_csav                  ; 0x4257
    mov ax, 0xa                      ; 0x425a
    imul word [bp + 6]               ; 0x425d
    add ax, strict word 0x32         ; 0x4260
    push ax                          ; 0x4263
    mov ax, 5                        ; 0x4264
    imul word [bss_95de]             ; 0x4267
    mov cx, ax                       ; 0x426b
    pop ax                           ; 0x426d
    sub ax, cx                       ; 0x426e
    mov word [bp - 4], ax            ; 0x4270
    cmp ax, strict word 0x5f         ; 0x4273
    jle short .forward1              ; 0x4276
    mov word [bp - 4], 0x5f          ; 0x4278
.forward1:
    cmp word [bp - 4], byte 5        ; 0x427d
    jge short .forward2              ; 0x4281
    mov word [bp - 4], 5             ; 0x4283
.forward2:
    mov ax, 0x64                     ; 0x4288
    push ax                          ; 0x428b
    call random_below                ; 0x428c
    pop cx                           ; 0x428f
    mov word [bp - 2], ax            ; 0x4290
    cmp ax, word [bp - 4]            ; 0x4293
    jge short .forward3              ; 0x4296
    mov word [bss_91fe], 0           ; 0x4298
    mov word [bss_95e0], 1           ; 0x429e
    mov word [glyph_painter], 1      ; 0x42a4
    lea ax, word [bp - 0x54]         ; 0x42aa
    push ax                          ; 0x42ad
    mov ax, MSG_THE_CHEST_OPENS      ; 0x42ae
    push ax                          ; 0x42b1
    call load_message_string         ; 0x42b2
    add sp, byte 4                   ; 0x42b5
    mov ax, 1                        ; 0x42b8
    push ax                          ; 0x42bb
    mov ax, 2                        ; 0x42bc
    push ax                          ; 0x42bf
    push word [treasure_message_row] ; 0x42c0
    lea ax, word [bp - 0x54]         ; 0x42c4
    push ax                          ; 0x42c7
    call show_treasure_message       ; 0x42c8
    add sp, byte 8                   ; 0x42cb
    jmp short .return1               ; 0x42ce
.forward3:
    mov ax, 0x64                     ; 0x42d0
    sub ax, word [bp - 4]            ; 0x42d3
    mov cx, 3                        ; 0x42d6
    cwd                              ; 0x42d9
    idiv cx                          ; 0x42da
    mov cx, ax                       ; 0x42dc
    mov ax, 0x64                     ; 0x42de
    sub ax, cx                       ; 0x42e1
    cmp ax, word [bp - 2]            ; 0x42e3
    jge short .forward4              ; 0x42e6
    mov word [bss_95e0], 0xffff      ; 0x42e8
    jmp short .return1               ; 0x42ee
.forward4:
    mov word [bss_95e0], 0           ; 0x42f0
    lea ax, word [bp - 0x54]         ; 0x42f6
    push ax                          ; 0x42f9
    mov ax, MSG_THE_CHEST_DID_NOT_OPEN ; 0x42fa
    push ax                          ; 0x42fd
    call load_message_string         ; 0x42fe
    add sp, byte 4                   ; 0x4301
    mov ax, 1                        ; 0x4304
    push ax                          ; 0x4307
    push ax                          ; 0x4308
    push word [treasure_message_row] ; 0x4309
    lea ax, word [bp - 0x54]         ; 0x430d
    push ax                          ; 0x4310
    call show_treasure_message       ; 0x4311
    add sp, byte 8                   ; 0x4314
.return1:
    ret                              ; 0x4317
