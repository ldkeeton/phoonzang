; auto-generated
loc_STSN_0429:
    push bp                          ; 0x0429
    mov bp, sp                       ; 0x042a
    push word [bp + 0x6]             ; 0x042c
    push word [bp + 0x4]             ; 0x042f
    call bios_video_loc_RRQH         ; 0x0432
    add sp, byte 4                   ; 0x0435
    push word [bp + 0x8]             ; 0x0438
    call bios_video_loc_HMPN         ; 0x043b
    pop cx                           ; 0x043e
    mov sp, bp                       ; 0x043f
    pop bp                           ; 0x0441
    ret                              ; 0x0442
loc_MSKU:
    call bios_video_loc_RSQH         ; 0x0443
    mov ax, 0                        ; 0x0446
    push ax                          ; 0x0449
    push ax                          ; 0x044a
    call bios_video_loc_RRQH         ; 0x044b
    add sp, byte 4                   ; 0x044e
    ret                              ; 0x0451
loc_NJKV:
    push bp                          ; 0x0452
    mov bp, sp                       ; 0x0453
    add sp, byte 0xfe                ; 0x0455
    call bios_video_loc_VJJP         ; 0x0458
    mov word [bp - 0x0002], ax       ; 0x045b
    mov ax, 7                        ; 0x045e
    push ax                          ; 0x0461
    mov ax, dseg_1444                ; 0x0462
    push ax                          ; 0x0465
    call loc_KSUH                    ; 0x0466
    add sp, byte 4                   ; 0x0469
    push word [bp - 0x0002]          ; 0x046c
    call bios_video_loc_IVQL         ; 0x046f
    pop cx                           ; 0x0472
    mov sp, bp                       ; 0x0473
    pop bp                           ; 0x0475
    ret                              ; 0x0476

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xf6, 0xc6, 0x46, 0xfe, 0x00, 0xc6, 0x46, 0xff, 0x00, 0xff, 0x76
    db 0x06, 0xff, 0x76, 0x04, 0xe8, 0xc3, 0x20, 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xf8, 0x00, 0x00, 0xc7
    db 0x46, 0xf6, 0x00, 0x00, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0xe8, 0x7e, 0x20, 0x89, 0x46, 0xfc, 0x3d
    db 0x0d, 0x00, 0x75, 0x03, 0xe9, 0xc2, 0x00, 0x3d, 0x08, 0x00, 0x75, 0x4b, 0x83, 0x7e, 0xf6, 0x00
    db 0x7e, 0x3f, 0xff, 0x4e, 0xf6, 0x75, 0x05, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0x8b, 0x46, 0xf8, 0xb9
    db 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xf8, 0xff, 0x4e, 0x06, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0x76, 0x20, 0x83, 0xc4, 0x04, 0xc6, 0x46, 0xfe, 0x20, 0x8d, 0x46, 0xfe, 0x50, 0xe8
    db 0x38, 0x21, 0x59, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5e, 0x20, 0x83, 0xc4, 0x04, 0xeb
    db 0x03, 0xe8, 0x57, 0xff, 0xe9, 0x6f, 0x00, 0x8b, 0x46, 0xf6, 0x3b, 0x46, 0x08, 0x7c, 0x05, 0xe8
    db 0x49, 0xff, 0xeb, 0x62, 0x83, 0x7e, 0xf6, 0x00, 0x75, 0x21, 0x83, 0x7e, 0xfc, 0x2d, 0x75, 0x1b
    db 0xff, 0x46, 0xf6, 0xc7, 0x46, 0xfa, 0x01, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x46, 0xfe, 0x8d, 0x46
    db 0xfe, 0x50, 0xe8, 0xf5, 0x20, 0x59, 0xff, 0x46, 0x06, 0xeb, 0x3b, 0x83, 0x7e, 0xfc, 0x30, 0x7c
    db 0x32, 0x83, 0x7e, 0xfc, 0x39, 0x7f, 0x2c, 0xff, 0x46, 0xf6, 0x8b, 0x46, 0xf8, 0x8b, 0xd0, 0xd1
    db 0xe0, 0xd1, 0xe0, 0x03, 0xc2, 0xd1, 0xe0, 0x03, 0x46, 0xfc, 0x05, 0xd0, 0xff, 0x89, 0x46, 0xf8
    db 0x8a, 0x46, 0xfc, 0x88, 0x46, 0xfe, 0x8d, 0x46, 0xfe, 0x50, 0xe8, 0xbd, 0x20, 0x59, 0xff, 0x46
    db 0x06, 0xeb, 0x03, 0xe8, 0xe5, 0xfe, 0xe9, 0x30, 0xff, 0x83, 0x7e, 0xfa, 0x01, 0x75, 0x09, 0x8b
    db 0x46, 0xf8, 0xf7, 0xd8, 0x8b, 0xe5, 0x5d, 0xc3, 0x8b, 0x46, 0xf8, 0xeb, 0xf7

loc_GUOQ:
    push bp                          ; 0x0584
    mov bp, sp                       ; 0x0585
    add sp, byte 0xfc                ; 0x0587
    call bios_video_loc_VJJP         ; 0x058a
    mov word [bp - 0x0004], ax       ; 0x058d
    mov ax, 0x20                     ; 0x0590
    cmp word [bp + 0x4], byte 1      ; 0x0593
    jne short @..loc_GUOQ.l1         ; 0x0597
    mov ax, 0x11                     ; 0x0599
@..loc_GUOQ.l1:
    mov byte [bp - 0x0002], al       ; 0x059c
    mov byte [bp - 0x0001], 0        ; 0x059f
    lea ax, word [bp - 0x0002]       ; 0x05a3
    push ax                          ; 0x05a6
    call bios_video_loc_QTQU         ; 0x05a7
    pop cx                           ; 0x05aa
    push word [bp - 0x0004]          ; 0x05ab
    call bios_video_loc_IVQL         ; 0x05ae
    pop cx                           ; 0x05b1
    mov sp, bp                       ; 0x05b2
    pop bp                           ; 0x05b4
    ret                              ; 0x05b5
loc_GPOQ:
    push bp                          ; 0x05b6
    mov bp, sp                       ; 0x05b7
    add sp, byte 0xf6                ; 0x05b9
    push si                          ; 0x05bc
    mov byte [bp - 0x0002], 0        ; 0x05bd
    mov byte [bp - 0x0001], 0        ; 0x05c1
    push word [bp + 0x8]             ; 0x05c5
    call aztec_strlen                ; 0x05c8
    pop cx                           ; 0x05cb
    mov word [bp - 0x0006], ax       ; 0x05cc
    add word [bp + 0x6], ax          ; 0x05cf
    push word [bp + 0x6]             ; 0x05d2
    push word [bp + 0x4]             ; 0x05d5
    call bios_video_loc_RRQH         ; 0x05d8
    add sp, byte 4                   ; 0x05db
    mov ax, 1                        ; 0x05de
    push ax                          ; 0x05e1
    call loc_GUOQ                    ; 0x05e2
    pop cx                           ; 0x05e5
@..loc_GPOQ.l1:
    call dos_con_in_noecho           ; 0x05e6
    push ax                          ; 0x05e9
    call loc_MPRS                    ; 0x05ea
    pop cx                           ; 0x05ed
    mov word [bp - 0x0004], ax       ; 0x05ee
    cmp ax, strict word 0xd          ; 0x05f1
    jne short @..loc_GPOQ.l2         ; 0x05f4
    jmp near @..loc_GPOQ.l9          ; 0x05f6
@..loc_GPOQ.l2:
    mov ax, 0                        ; 0x05f9
    push ax                          ; 0x05fc
    call loc_GUOQ                    ; 0x05fd
    pop cx                           ; 0x0600
    cmp word [bp - 0x0004], byte 8   ; 0x0601
    je short @..loc_GPOQ.l3          ; 0x0605
    cmp word [bp - 0x0004], byte 8   ; 0x0607
    jne short @..loc_GPOQ.l6         ; 0x060b
@..loc_GPOQ.l3:
    cmp word [bp - 0x0006], byte 0   ; 0x060d
    jle short @..loc_GPOQ.l4         ; 0x0611
    dec word [bp - 0x0006]           ; 0x0613
    mov bx, word [bp + 0x8]          ; 0x0616
    mov si, word [bp - 0x0006]       ; 0x0619
    mov byte [bx + si], 0            ; 0x061c
    dec word [bp + 0x6]              ; 0x061f
    push word [bp + 0x6]             ; 0x0622
    push word [bp + 0x4]             ; 0x0625
    call bios_video_loc_RRQH         ; 0x0628
    add sp, byte 4                   ; 0x062b
    mov byte [bp - 0x0002], 0x20     ; 0x062e
    lea ax, word [bp - 0x0002]       ; 0x0632
    push ax                          ; 0x0635
    call bios_video_loc_QTQU         ; 0x0636
    pop cx                           ; 0x0639
    push word [bp + 0x6]             ; 0x063a
    push word [bp + 0x4]             ; 0x063d
    call bios_video_loc_RRQH         ; 0x0640
    add sp, byte 4                   ; 0x0643
    jmp short @..loc_GPOQ.l5         ; 0x0646
@..loc_GPOQ.l4:
    call loc_NJKV                    ; 0x0648
@..loc_GPOQ.l5:
    jmp short @..loc_GPOQ.l8         ; 0x064b
@..loc_GPOQ.l6:
    mov ax, word [bp - 0x0006]       ; 0x064d
    cmp ax, word [bp + 0xa]          ; 0x0650
    jl short @..loc_GPOQ.l7          ; 0x0653
    call loc_NJKV                    ; 0x0655
    jmp short @..loc_GPOQ.l8         ; 0x0658
@..loc_GPOQ.l7:
    cmp word [bp - 0x0004], byte 0x20 ; 0x065a
    jl short @..loc_GPOQ.l8          ; 0x065e
    cmp word [bp - 0x0004], byte 0x7f ; 0x0660
    jg short @..loc_GPOQ.l8          ; 0x0664
    mov al, byte [bp - 0x0004]       ; 0x0666
    mov bx, word [bp + 0x8]          ; 0x0669
    mov si, word [bp - 0x0006]       ; 0x066c
    mov byte [bx + si], al           ; 0x066f
    inc word [bp - 0x0006]           ; 0x0671
    mov bx, word [bp + 0x8]          ; 0x0674
    mov si, word [bp - 0x0006]       ; 0x0677
    mov byte [bx + si], 0            ; 0x067a
    mov al, byte [bp - 0x0004]       ; 0x067d
    mov byte [bp - 0x0002], al       ; 0x0680
    lea ax, word [bp - 0x0002]       ; 0x0683
    push ax                          ; 0x0686
    call bios_video_loc_QTQU         ; 0x0687
    pop cx                           ; 0x068a
    inc word [bp + 0x6]              ; 0x068b
@..loc_GPOQ.l8:
    mov ax, 1                        ; 0x068e
    push ax                          ; 0x0691
    call loc_GUOQ                    ; 0x0692
    pop cx                           ; 0x0695
    jmp near @..loc_GPOQ.l1          ; 0x0696
@..loc_GPOQ.l9:
    mov ax, 0                        ; 0x0699
    push ax                          ; 0x069c
    call loc_GUOQ                    ; 0x069d
    pop cx                           ; 0x06a0
    pop si                           ; 0x06a1
    mov sp, bp                       ; 0x06a2
    pop bp                           ; 0x06a4
    ret                              ; 0x06a5
loc_MPRS:
    push bp                          ; 0x06a6
    mov bp, sp                       ; 0x06a7
    add sp, byte 0xfe                ; 0x06a9
    cmp word [bp + 0x4], byte 0      ; 0x06ac
    jne short @..loc_MPRS.l7         ; 0x06b0
    call dos_con_in_noecho           ; 0x06b2
    mov word [bp - 0x0002], ax       ; 0x06b5
    jmp short @..loc_MPRS.l6         ; 0x06b8
@..loc_MPRS.l1:
    mov ax, 8                        ; 0x06ba
@..loc_MPRS.l2:
    mov sp, bp                       ; 0x06bd
    pop bp                           ; 0x06bf
    ret                              ; 0x06c0
@..loc_MPRS.l3:
    mov ax, 9                        ; 0x06c1
    jmp short @..loc_MPRS.l2         ; 0x06c4
@..loc_MPRS.l4:
    mov ax, 0xa                      ; 0x06c6
    jmp short @..loc_MPRS.l2         ; 0x06c9
@..loc_MPRS.l5:
    mov ax, 0xb                      ; 0x06cb
    jmp short @..loc_MPRS.l2         ; 0x06ce
@..loc_MPRS.l6:
    cmp ax, strict word 0x48         ; 0x06d0
    je short @..loc_MPRS.l3          ; 0x06d3
    cmp ax, strict word 0x4b         ; 0x06d5
    je short @..loc_MPRS.l1          ; 0x06d8
    cmp ax, strict word 0x4d         ; 0x06da
    je short @..loc_MPRS.l4          ; 0x06dd
    cmp ax, strict word 0x50         ; 0x06df
    je short @..loc_MPRS.l5          ; 0x06e2
    jmp short @..loc_MPRS.l8         ; 0x06e4
@..loc_MPRS.l7:
    push word [bp + 0x4]             ; 0x06e6
    call aztec_toupper               ; 0x06e9
    pop cx                           ; 0x06ec
    jmp short @..loc_MPRS.l2         ; 0x06ed
@..loc_MPRS.l8:
    jmp short @..loc_MPRS.l2         ; 0x06ef
