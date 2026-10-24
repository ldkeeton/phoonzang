; auto-generated
api_idx_007a_HMNU:
    mov ax, 0xff86                   ; 0x4498
    call aztec_csav                  ; 0x449b
    mov word [bp - 0x0002], 0        ; 0x449e
@..api_idx_007a_HMNU.l1:
    mov ax, word [bp - 0x0002]       ; 0x44a3
    shl ax, 1                        ; 0x44a6
    mov bx, ax                       ; 0x44a8
    add bx, bp                       ; 0x44aa
    mov word [bx - 0x007a], 1        ; 0x44ac
    inc word [bp - 0x0002]           ; 0x44b1
    mov ax, word [bp - 0x0002]       ; 0x44b4
    cmp ax, strict word 1            ; 0x44b7
    jle short @..api_idx_007a_HMNU.l1 ; 0x44ba
    mov word [bp - 0x0076], 0xffff   ; 0x44bc
    lea ax, word [bp - 0x007a]       ; 0x44c1
    push ax                          ; 0x44c4
    mov ax, 0                        ; 0x44c5
    push ax                          ; 0x44c8
    mov ax, 0xffff                   ; 0x44c9
    push ax                          ; 0x44cc
    mov ax, 1                        ; 0x44cd
    push ax                          ; 0x44d0
    mov ax, 2                        ; 0x44d1
    push ax                          ; 0x44d4
    mov ax, 1                        ; 0x44d5
    push ax                          ; 0x44d8
    mov ax, 0xc                      ; 0x44d9
    push ax                          ; 0x44dc
    mov ax, 0x6a                     ; 0x44dd
    push ax                          ; 0x44e0
    mov ax, 0xb                      ; 0x44e1
    push ax                          ; 0x44e4
    mov ax, 0x86                     ; 0x44e5
    push ax                          ; 0x44e8
    mov ax, 0x4a                     ; 0x44e9
    push ax                          ; 0x44ec
    mov ax, 0x451                    ; 0x44ed
    push ax                          ; 0x44f0
    mov ax, 0x8c                     ; 0x44f1
    push ax                          ; 0x44f4
    call loc_TRPK                    ; 0x44f5
    add sp, byte 0x1a                ; 0x44f8
    push ax                          ; 0x44fb
    mov ax, 0x248                    ; 0x44fc
    imul word [bp + 0x4]             ; 0x44ff
    mov bx, ax                       ; 0x4502
    pop ax                           ; 0x4504
    mov byte [bx + member_state + 0x2], al ; 0x4505
    mov ax, 0                        ; 0x4509
    push ax                          ; 0x450c
    mov ax, 1                        ; 0x450d
    push ax                          ; 0x4510
    call gfx_set_text_color          ; 0x4511
    add sp, byte 4                   ; 0x4514
    mov ax, 6                        ; 0x4517
    push ax                          ; 0x451a
    mov ax, 0x5a                     ; 0x451b
    push ax                          ; 0x451e
    call gfx_set_text_pos            ; 0x451f
    add sp, byte 4                   ; 0x4522
    lea ax, word [bp - 0x0052]       ; 0x4525
    push ax                          ; 0x4528
    mov ax, 0x248                    ; 0x4529
    imul word [bp + 0x4]             ; 0x452c
    mov bx, ax                       ; 0x452f
    mov al, byte [bx + member_state + 0x2] ; 0x4531
    sub ah, ah                       ; 0x4535
    add ax, 0x8c                     ; 0x4537
    push ax                          ; 0x453a
    call load_message_string         ; 0x453b
    add sp, byte 4                   ; 0x453e
    mov ax, 0                        ; 0x4541
    push ax                          ; 0x4544
    mov al, byte [bp - 0x0052]       ; 0x4545
    sub ah, ah                       ; 0x4548
    push ax                          ; 0x454a
    call draw_font_glyph             ; 0x454b
    add sp, byte 4                   ; 0x454e
    mov ax, 0                        ; 0x4551
    push ax                          ; 0x4554
    mov ax, 0x2d                     ; 0x4555
    push ax                          ; 0x4558
    call draw_font_glyph             ; 0x4559
    add sp, byte 4                   ; 0x455c
    mov ax, 0x248                    ; 0x455f
    imul word [bp + 0x4]             ; 0x4562
    mov bx, ax                       ; 0x4565
    mov al, byte [bx + member_state + 0x2] ; 0x4567
    sub ah, ah                       ; 0x456b
    push ax                          ; 0x456d
    push word [bp + 0x4]             ; 0x456e
    call loc_HGUJ                    ; 0x4571
    add sp, byte 4                   ; 0x4574
    mov ax, 1                        ; 0x4577
    push ax                          ; 0x457a
    push word [bp + 0x4]             ; 0x457b
    call api_idx_0002_SSJN           ; 0x457e
    add sp, byte 4                   ; 0x4581
    ret                              ; 0x4584
