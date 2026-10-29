; auto-generated
api_idx_0012_GQSK:
    mov ax, 0xffee                   ; 0x0521
    call aztec_csav                  ; 0x0524
    mov ax, 0                        ; 0x0527
    push ax                          ; 0x052a
    push ax                          ; 0x052b
    push word [roster_screen_a]      ; 0x052c
    push word [roster_screen_b]      ; 0x0530
    call call_restore_screen         ; 0x0534
    add sp, byte 8                   ; 0x0537
    mov word [bp - 2], 0             ; 0x053a
    jmp short .forward1              ; 0x053f
.back1:
    mov ax, 0                        ; 0x0541
    push ax                          ; 0x0544
    push ax                          ; 0x0545
    push word [bp - 2]               ; 0x0546
    call api_idx_000c_JRTV           ; 0x0549
    add sp, byte 6                   ; 0x054c
    mov ax, word [bp - 2]            ; 0x054f
    mov cx, 3                        ; 0x0552
    cwd                              ; 0x0555
    idiv cx                          ; 0x0556
    mov ax, dx                       ; 0x0558
    mov cx, 0x32                     ; 0x055a
    imul cx                          ; 0x055d
    add ax, strict word 4            ; 0x055f
    mov word [bp - 0xa], ax          ; 0x0562
    mov ax, word [bp - 2]            ; 0x0565
    mov cx, 3                        ; 0x0568
    cwd                              ; 0x056b
    idiv cx                          ; 0x056c
    mov cx, 0x27                     ; 0x056e
    imul cx                          ; 0x0571
    add ax, strict word 0x70         ; 0x0573
    mov word [bp - 0xc], ax          ; 0x0576
    mov ax, 0                        ; 0x0579
    push ax                          ; 0x057c
    mov ax, word [bp - 2]            ; 0x057d
    add ax, strict word 0x31         ; 0x0580
    cbw                              ; 0x0583
    push ax                          ; 0x0584
    mov ax, word [bp - 0xc]          ; 0x0585
    add ax, strict word 0x26         ; 0x0588
    push ax                          ; 0x058b
    mov ax, word [bp - 0xa]          ; 0x058c
    add ax, strict word 0x2e         ; 0x058f
    push ax                          ; 0x0592
    push word [bp - 0xc]             ; 0x0593
    push word [bp - 0xa]             ; 0x0596
    push word [bp - 2]               ; 0x0599
    call set_hotspot                 ; 0x059c
    add sp, byte 0xe                 ; 0x059f
    inc word [bp - 2]                ; 0x05a2
.forward1:
    mov ax, word [bp - 2]            ; 0x05a5
    cmp ax, word [party_char_count]  ; 0x05a8
    jl short .back1                  ; 0x05ac
    mov ax, 0                        ; 0x05ae
    push ax                          ; 0x05b1
    push ax                          ; 0x05b2
    push ax                          ; 0x05b3
    push ax                          ; 0x05b4
    push ax                          ; 0x05b5
    mov ax, 0xffff                   ; 0x05b6
    push ax                          ; 0x05b9
    push word [party_char_count]     ; 0x05ba
    call set_hotspot                 ; 0x05be
    add sp, byte 0xe                 ; 0x05c1
    mov ax, 0xbb                     ; 0x05c4
    push ax                          ; 0x05c7
    mov ax, 0xab                     ; 0x05c8
    push ax                          ; 0x05cb
    mov ax, 0x70                     ; 0x05cc
    push ax                          ; 0x05cf
    mov ax, 1                        ; 0x05d0
    push ax                          ; 0x05d3
    call call_show_area              ; 0x05d4
    add sp, byte 8                   ; 0x05d7
    cmp word [mouse_active], byte 0  ; 0x05da
    je short .forward2               ; 0x05df
    jmp near .forward6               ; 0x05e1
.forward2:
    mov ax, 0xa3                     ; 0x05e4
    push ax                          ; 0x05e7
    mov ax, 0xb1                     ; 0x05e8
    push ax                          ; 0x05eb
    mov ax, 0x90                     ; 0x05ec
    push ax                          ; 0x05ef
    mov ax, 0x9a                     ; 0x05f0
    push ax                          ; 0x05f3
    call call_save_area              ; 0x05f4
    add sp, byte 8                   ; 0x05f7
    mov word [bp - 0x10], dx         ; 0x05fa
    mov word [bp - 0x12], ax         ; 0x05fd
    mov ax, 0x90                     ; 0x0600
    push ax                          ; 0x0603
    mov ax, 0x9a                     ; 0x0604
    push ax                          ; 0x0607
    call call_set_text_pos           ; 0x0608
    add sp, byte 4                   ; 0x060b
    mov ax, 7                        ; 0x060e
    push ax                          ; 0x0611
    mov ax, 0x12                     ; 0x0612
    push ax                          ; 0x0615
    call draw_font_glyph             ; 0x0616
    add sp, byte 4                   ; 0x0619
    mov ax, 0x9c                     ; 0x061c
    push ax                          ; 0x061f
    mov ax, 0x9a                     ; 0x0620
    push ax                          ; 0x0623
    call call_set_text_pos           ; 0x0624
    add sp, byte 4                   ; 0x0627
    mov ax, 7                        ; 0x062a
    push ax                          ; 0x062d
    mov ax, 0x13                     ; 0x062e
    push ax                          ; 0x0631
    call draw_font_glyph             ; 0x0632
    add sp, byte 4                   ; 0x0635
    mov ax, 0x9c                     ; 0x0638
    push ax                          ; 0x063b
    mov ax, 0xa6                     ; 0x063c
    push ax                          ; 0x063f
    call call_set_text_pos           ; 0x0640
    add sp, byte 4                   ; 0x0643
    mov ax, 7                        ; 0x0646
    push ax                          ; 0x0649
    mov ax, 0x14                     ; 0x064a
    push ax                          ; 0x064d
    call draw_font_glyph             ; 0x064e
    add sp, byte 4                   ; 0x0651
    mov ax, 0xa3                     ; 0x0654
    push ax                          ; 0x0657
    mov ax, 0xb1                     ; 0x0658
    push ax                          ; 0x065b
    mov ax, 0x90                     ; 0x065c
    push ax                          ; 0x065f
    mov ax, 0x9a                     ; 0x0660
    push ax                          ; 0x0663
    call call_show_area              ; 0x0664
    add sp, byte 8                   ; 0x0667
    mov word [bp - 4], 0xfffe        ; 0x066a
.back2:
    cmp word [bp - 4], byte -2       ; 0x066f
    jne short .forward5              ; 0x0673
    mov ax, 1                        ; 0x0675
    push ax                          ; 0x0678
    call get_filtered_key            ; 0x0679
    pop cx                           ; 0x067c
    sub ah, ah                       ; 0x067d
    mov word [bp - 2], ax            ; 0x067f
    cmp ax, strict word 0x1b         ; 0x0682
    jne short .forward3              ; 0x0685
    mov word [bp - 4], 0xffff        ; 0x0687
.forward3:
    cmp ax, strict word 0x31         ; 0x068c
    jl short .forward4               ; 0x068f
    mov cx, word [party_char_count]  ; 0x0691
    add cx, byte 0x31                ; 0x0695
    cmp cx, ax                       ; 0x0698
    jle short .forward4              ; 0x069a
    add ax, strict word 0xffcf       ; 0x069c
    mov word [bp - 4], ax            ; 0x069f
    mov ax, 1                        ; 0x06a2
    push ax                          ; 0x06a5
    push ax                          ; 0x06a6
    push word [bp - 4]               ; 0x06a7
    call api_idx_000c_JRTV           ; 0x06aa
    add sp, byte 6                   ; 0x06ad
.forward4:
    jmp short .back2                 ; 0x06b0
.forward5:
    mov ax, 1                        ; 0x06b2
    push ax                          ; 0x06b5
    push word [bp - 0x10]            ; 0x06b6
    push word [bp - 0x12]            ; 0x06b9
    call call_restore_area           ; 0x06bc
    add sp, byte 6                   ; 0x06bf
    mov ax, 0xa3                     ; 0x06c2
    push ax                          ; 0x06c5
    mov ax, 0xb1                     ; 0x06c6
    push ax                          ; 0x06c9
    mov ax, 0x90                     ; 0x06ca
    push ax                          ; 0x06cd
    mov ax, 0x9a                     ; 0x06ce
    push ax                          ; 0x06d1
    call call_show_area              ; 0x06d2
    add sp, byte 8                   ; 0x06d5
    mov ax, word [bp - 4]            ; 0x06d8
    ret                              ; 0x06db
.forward6:
    push word [bss_0e30]             ; 0x06dc
    push word [bss_0e2e]             ; 0x06e0
    call set_mouse_pointer_shape     ; 0x06e4
    add sp, byte 4                   ; 0x06e7
    mov word [bp - 8], 0             ; 0x06ea
.back3:
    lea ax, word [bp - 0xc]          ; 0x06ef
    push ax                          ; 0x06f2
    lea ax, word [bp - 0xa]          ; 0x06f3
    push ax                          ; 0x06f6
    call call_get_mouse              ; 0x06f7
    add sp, byte 4                   ; 0x06fa
    mov word [bp - 6], ax            ; 0x06fd
    mov ax, 0                        ; 0x0700
    cmp word [bp - 6], byte 0        ; 0x0703
    jne short .forward7              ; 0x0707
    mov ax, 1                        ; 0x0709
.forward7:
    or word [bp - 8], ax             ; 0x070c
    mov ax, 0x14                     ; 0x070f
    push ax                          ; 0x0712
    call delay_ms                    ; 0x0713
    pop cx                           ; 0x0716
    mov ax, hotspot_rects            ; 0x0717
    push ax                          ; 0x071a
    call poll_hotspots               ; 0x071b
    pop cx                           ; 0x071e
    dec ax                           ; 0x071f
    mov word [bp - 4], ax            ; 0x0720
    cmp word [bss_59fa], byte 0      ; 0x0723
    je short .forward8               ; 0x0728
    mov ax, 0                        ; 0x072a
    mov dx, 0                        ; 0x072d
    push dx                          ; 0x0730
    push ax                          ; 0x0731
    call set_mouse_pointer_shape     ; 0x0732
    add sp, byte 4                   ; 0x0735
    mov ax, 0xffff                   ; 0x0738
    ret                              ; 0x073b
.forward8:
    cmp word [hotspot_hit], byte 1   ; 0x073c
    jne short .forward9              ; 0x0741
    mov ax, 1                        ; 0x0743
    push ax                          ; 0x0746
    push ax                          ; 0x0747
    push word [bp - 4]               ; 0x0748
    call api_idx_000c_JRTV           ; 0x074b
    add sp, byte 6                   ; 0x074e
    mov ax, 0                        ; 0x0751
    mov dx, 0                        ; 0x0754
    push dx                          ; 0x0757
    push ax                          ; 0x0758
    call set_mouse_pointer_shape     ; 0x0759
    add sp, byte 4                   ; 0x075c
    mov ax, word [bp - 4]            ; 0x075f
    ret                              ; 0x0762
.forward9:
    cmp word [bp - 6], byte 0        ; 0x0763
    je short .back3                  ; 0x0767
    cmp word [bp - 8], byte 0        ; 0x0769
    je short .back3                  ; 0x076d
    mov ax, 0                        ; 0x076f
    mov dx, 0                        ; 0x0772
    push dx                          ; 0x0775
    push ax                          ; 0x0776
    call set_mouse_pointer_shape     ; 0x0777
    add sp, byte 4                   ; 0x077a
    mov ax, 0xffff                   ; 0x077d
    ret                              ; 0x0780
