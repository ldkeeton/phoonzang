; auto-generated
api_idx_007a_GTOG:
    mov ax, 0xff86                   ; 0x43bb
    call aztec_csav                  ; 0x43be
    mov word [bp - 0x0002], 0        ; 0x43c1
@..api_idx_007a_GTOG.l1:
    mov ax, word [bp - 0x0002]       ; 0x43c6
    shl ax, 1                        ; 0x43c9
    mov bx, ax                       ; 0x43cb
    add bx, bp                       ; 0x43cd
    mov word [bx - 0x007a], 1        ; 0x43cf
    inc word [bp - 0x0002]           ; 0x43d4
    mov ax, word [bp - 0x0002]       ; 0x43d7
    cmp ax, strict word 0xa          ; 0x43da
    jle short @..api_idx_007a_GTOG.l1 ; 0x43dd
    mov word [bp - 0x0064], 0xffff   ; 0x43df
    lea ax, word [bp - 0x007a]       ; 0x43e4
    push ax                          ; 0x43e7
    mov ax, 0                        ; 0x43e8
    push ax                          ; 0x43eb
    mov ax, 0xffff                   ; 0x43ec
    push ax                          ; 0x43ef
    mov ax, 1                        ; 0x43f0
    push ax                          ; 0x43f3
    mov ax, 0xb                      ; 0x43f4
    push ax                          ; 0x43f7
    mov ax, 4                        ; 0x43f8
    push ax                          ; 0x43fb
    mov ax, 0xc                      ; 0x43fc
    push ax                          ; 0x43ff
    mov ax, 0x46                     ; 0x4400
    push ax                          ; 0x4403
    mov ax, 0xb                      ; 0x4404
    push ax                          ; 0x4407
    mov ax, 0x86                     ; 0x4408
    push ax                          ; 0x440b
    mov ax, 0x39                     ; 0x440c
    push ax                          ; 0x440f
    mov ax, 0x450                    ; 0x4410
    push ax                          ; 0x4413
    mov ax, 0x64                     ; 0x4414
    push ax                          ; 0x4417
    call loc_TRPK                    ; 0x4418
    add sp, byte 0x1a                ; 0x441b
    push ax                          ; 0x441e
    mov ax, 0x248                    ; 0x441f
    imul word [bp + 0x4]             ; 0x4422
    mov bx, ax                       ; 0x4425
    pop ax                           ; 0x4427
    mov byte [bx + 0x5e2b], al       ; 0x4428
    mov ax, 0                        ; 0x442c
    push ax                          ; 0x442f
    mov ax, 1                        ; 0x4430
    push ax                          ; 0x4433
    call gfx_set_text_color          ; 0x4434
    add sp, byte 4                   ; 0x4437
    mov ax, 6                        ; 0x443a
    push ax                          ; 0x443d
    mov ax, 0x66                     ; 0x443e
    push ax                          ; 0x4441
    call gfx_set_text_pos            ; 0x4442
    add sp, byte 4                   ; 0x4445
    lea ax, word [bp - 0x0052]       ; 0x4448
    push ax                          ; 0x444b
    mov ax, 0x248                    ; 0x444c
    imul word [bp + 0x4]             ; 0x444f
    mov bx, ax                       ; 0x4452
    mov al, byte [bx + 0x5e2b]       ; 0x4454
    sub ah, ah                       ; 0x4458
    add ax, strict word 0x64         ; 0x445a
    push ax                          ; 0x445d
    call load_message_string         ; 0x445e
    add sp, byte 4                   ; 0x4461
    mov ax, 0                        ; 0x4464
    push ax                          ; 0x4467
    lea ax, word [bp - 0x0052]       ; 0x4468
    push ax                          ; 0x446b
    call draw_string                 ; 0x446c
    add sp, byte 4                   ; 0x446f
    mov ax, 0x248                    ; 0x4472
    imul word [bp + 0x4]             ; 0x4475
    mov bx, ax                       ; 0x4478
    mov al, byte [bx + 0x5e2b]       ; 0x447a
    sub ah, ah                       ; 0x447e
    push ax                          ; 0x4480
    push word [bp + 0x4]             ; 0x4481
    call loc_VQPO                    ; 0x4484
    add sp, byte 4                   ; 0x4487
    mov ax, 1                        ; 0x448a
    push ax                          ; 0x448d
    push word [bp + 0x4]             ; 0x448e
    call api_idx_0002_SSJN           ; 0x4491
    add sp, byte 4                   ; 0x4494
    ret                              ; 0x4497
