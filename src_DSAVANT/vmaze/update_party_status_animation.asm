; auto-generated
update_party_status_animation:
    mov ax, 0xfffc                   ; 0x7542
    call aztec_csav                  ; 0x7545
    cmp word [bss_82fe], byte 0      ; 0x7548
    jle short .forward1              ; 0x754d
    mov ax, 0x64                     ; 0x754f
    push ax                          ; 0x7552
    call random_below                ; 0x7553
    pop cx                           ; 0x7556
    cmp ax, word [bss_8300]          ; 0x7557
    jge short .forward1              ; 0x755b
    mov word [party_status_frame_step], 1 ; 0x755d
.forward1:
    mov word [bp - 2], 0             ; 0x7563
    jmp short .forward3              ; 0x7568
.back1:
    push word [bp - 2]               ; 0x756a
    call member_is_active            ; 0x756d
    pop cx                           ; 0x7570
    test ax, ax                      ; 0x7571
    je short .forward2               ; 0x7573
    mov ax, 0xc8                     ; 0x7575
    push ax                          ; 0x7578
    call random_below                ; 0x7579
    pop cx                           ; 0x757c
    push ax                          ; 0x757d
    mov ax, 0x248                    ; 0x757e
    imul word [bp - 2]               ; 0x7581
    mov bx, ax                       ; 0x7584
    mov al, byte [bx + party_records + pc_rec.flag + 0xc] ; 0x7586
    sub ah, ah                       ; 0x758a
    mov cx, ax                       ; 0x758c
    pop ax                           ; 0x758e
    cmp ax, cx                       ; 0x758f
    jge short .forward2              ; 0x7591
    mov ax, MSG_DETECTS_SOMETHING    ; 0x7593
    push ax                          ; 0x7596
    push word [bp - 2]               ; 0x7597
    call api_idx_0050_QVOG           ; 0x759a
    add sp, byte 4                   ; 0x759d
    ret                              ; 0x75a0
.forward2:
    inc word [bp - 2]                ; 0x75a1
.forward3:
    mov ax, word [bp - 2]            ; 0x75a4
    cmp ax, word [party_char_count]  ; 0x75a7
    jl short .back1                  ; 0x75ab
    ret                              ; 0x75ad
