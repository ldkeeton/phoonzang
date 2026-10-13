; auto-generated
api_idx_0004_13:
    mov ax, 0xfffc                   ; 0x752c
    call aztec_csav                  ; 0x752f
    mov word [bp - 0x0004], 0        ; 0x7532
    mov word [bp - 0x0002], 0        ; 0x7537
@..api_idx_0004_13.l1:
    mov ax, 6                        ; 0x753c
    imul word [bp - 0x0002]          ; 0x753f
    mov bx, ax                       ; 0x7542
    mov al, byte [bx + 0x620]        ; 0x7544
    sub ah, ah                       ; 0x7548
    cmp ax, word [bp + 0x6]          ; 0x754a
    jne short @..api_idx_0004_13.l2  ; 0x754d
    push word [bp - 0x0002]          ; 0x754f
    mov ax, 0x248                    ; 0x7552
    imul word [bp + 0x4]             ; 0x7555
    add ax, 0x5e12                   ; 0x7558
    push ax                          ; 0x755b
    call ds_leaf_loc_3ebb            ; 0x755c
    add sp, byte 4                   ; 0x755f
    test ax, ax                      ; 0x7562
    je short @..api_idx_0004_13.l2   ; 0x7564
    mov ax, 0x14                     ; 0x7566
    imul word [bp - 0x0004]          ; 0x7569
    add ax, 0xe38                    ; 0x756c
    push ax                          ; 0x756f
    mov ax, word [bp - 0x0002]       ; 0x7570
    add ax, 0xfa0                    ; 0x7573
    push ax                          ; 0x7576
    call ds_app_mem_0782             ; 0x7577
    add sp, byte 4                   ; 0x757a
    mov ax, word [bp - 0x0002]       ; 0x757d
    mov cx, word [bp - 0x0004]       ; 0x7580
    shl cx, 1                        ; 0x7583
    mov bx, cx                       ; 0x7585
    mov word [bx - 0x620e], ax       ; 0x7587
    inc word [bp - 0x0004]           ; 0x758b
@..api_idx_0004_13.l2:
    inc word [bp - 0x0002]           ; 0x758e
    mov ax, word [bp - 0x0002]       ; 0x7591
    cmp ax, strict word 0x66         ; 0x7594
    jl short @..api_idx_0004_13.l1   ; 0x7597
    mov ax, word [bp - 0x0004]       ; 0x7599
    ret                              ; 0x759c
