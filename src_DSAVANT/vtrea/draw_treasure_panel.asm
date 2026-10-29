; auto-generated
draw_treasure_panel:
    mov ax, 0xfee8                   ; 0x0111
    call aztec_csav                  ; 0x0114
    mov word [bp - 0xf6], 7          ; 0x0117
    mov ax, 6                        ; 0x011d
    imul word [bp + 6]               ; 0x0120
    mov bx, ax                       ; 0x0123
    mov al, byte [bx + spell_table + spell_table_rec_size*102 + spell_table_rec.f_0005] ; 0x0125
    sub ah, ah                       ; 0x0129
    jmp short .forward1              ; 0x012b
.back1:
    mov word [bp - 0x10], 1          ; 0x012d
    mov word [bp - 0xfa], 1          ; 0x0132
    jmp short .forward2              ; 0x0138
.back2:
    mov word [bp - 0x10], 1          ; 0x013a
    mov word [bp - 0xfa], 1          ; 0x013f
    jmp short .forward2              ; 0x0145
.back3:
    mov word [bp - 0x10], 0          ; 0x0147
    mov word [bp - 0xfa], 4          ; 0x014c
    jmp short .forward2              ; 0x0152
.forward1:
    cmp ax, strict word 0            ; 0x0154
    je short .back1                  ; 0x0157
    cmp ax, strict word 1            ; 0x0159
    je short .back2                  ; 0x015c
    cmp ax, strict word 2            ; 0x015e
    je short .back3                  ; 0x0161
.forward2:
    mov word [bp - 0xfc], 6          ; 0x0163
    mov ax, 0xc                      ; 0x0169
    cwd                              ; 0x016c
    idiv word [bp - 0xfa]            ; 0x016d
    mov word [bp - 0xfe], ax         ; 0x0171
    mov ax, 6                        ; 0x0175
    imul word [bp + 6]               ; 0x0178
    mov bx, ax                       ; 0x017b
    mov al, byte [bx + spell_table + spell_table_rec_size*102 + spell_table_rec.f_0004] ; 0x017d
    sub ah, ah                       ; 0x0181
    mov word [bp - 0xf8], ax         ; 0x0183
    mov word [bp - 0xc], 1           ; 0x0187
    mov ax, word [bp - 0xfc]         ; 0x018c
    dec ax                           ; 0x0190
    mov word [bp - 6], ax            ; 0x0191
    mov word [bp - 8], 0             ; 0x0194
    mov word [bp - 0xa], 0xffff      ; 0x0199
    mov al, byte [bx + spell_table + spell_table_rec_size*102 + spell_table_rec.f_0005] ; 0x019e
    sub ah, ah                       ; 0x01a2
    jmp short .forward3              ; 0x01a4
.back4:
    inc word [bp + 6]                ; 0x01a6
    inc word [bp - 0xf8]             ; 0x01a9
    jmp short .forward4              ; 0x01ad
.back5:
    add word [bp - 0xf8], byte 3     ; 0x01af
    jmp short .forward4              ; 0x01b4
.forward3:
    cmp ax, strict word 1            ; 0x01b6
    je short .back4                  ; 0x01b9
    cmp ax, strict word 2            ; 0x01bb
    je short .back5                  ; 0x01be
.forward4:
    cmp word [bp + 4], byte -1       ; 0x01c0
    je short .forward5               ; 0x01c4
    mov ax, word [bp + 4]            ; 0x01c6
    mov cx, 2                        ; 0x01c9
    cwd                              ; 0x01cc
    idiv cx                          ; 0x01cd
    mov ax, dx                       ; 0x01cf
    test ax, ax                      ; 0x01d1
    jne short .forward7              ; 0x01d3
.forward5:
    mov word [bp - 0xe], 0           ; 0x01d5
    mov ax, 0                        ; 0x01da
    cmp word [bp - 0x10], byte 0     ; 0x01dd
    je short .forward6               ; 0x01e1
    mov ax, 1                        ; 0x01e3
.forward6:
    mov word [bp - 0x104], ax        ; 0x01e6
    jmp short .forward9              ; 0x01ea
.forward7:
    mov word [bp - 0xe], 1           ; 0x01ec
    mov ax, 1                        ; 0x01f1
    cmp word [bp - 0x10], byte 0     ; 0x01f4
    je short .forward8               ; 0x01f8
    mov ax, 0                        ; 0x01fa
.forward8:
    mov word [bp - 0x104], ax        ; 0x01fd
.forward9:
    mov ax, 6                        ; 0x0201
    imul word [bp + 6]               ; 0x0204
    mov bx, ax                       ; 0x0207
    mov ax, word [bx + spell_table + spell_table_rec_size*102] ; 0x0209
    mov word [bp - 0xea], ax         ; 0x020d
    mov ax, word [bx + spell_table + spell_table_rec_size*102 + spell_table_rec.f_0002] ; 0x0211
    mov word [bp - 0xec], ax         ; 0x0215
    mov word [bp - 0xe8], 0          ; 0x0219
    mov word [bp - 0xe6], 0          ; 0x021f
    mov word [bp - 0xe4], 0          ; 0x0225
    mov word [bp - 0xe2], 0          ; 0x022b
    mov word [bp - 0xe0], 0          ; 0x0231
    mov word [bp - 0xde], 0          ; 0x0237
    mov word [bp - 0xdc], 0          ; 0x023d
    mov word [bp - 0xda], 3          ; 0x0243
    mov word [bp - 0xd8], 3          ; 0x0249
    mov word [bp - 0xd6], 3          ; 0x024f
    mov word [bp - 0xd4], 3          ; 0x0255
    mov word [bp - 0xd2], 3          ; 0x025b
    mov word [bp - 0xd0], 3          ; 0x0261
    mov word [bp - 0xce], 2          ; 0x0267
    mov word [bp - 0xcc], 2          ; 0x026d
    mov word [bp - 0xca], 2          ; 0x0273
    mov word [bp - 0xc8], 2          ; 0x0279
    mov word [bp - 0xc6], 1          ; 0x027f
    mov word [bp - 0xc4], 1          ; 0x0285
    mov word [bp - 0xc2], 3          ; 0x028b
    mov word [bp - 0xc0], 2          ; 0x0291
    mov word [bp - 0xbe], 2          ; 0x0297
    mov word [bp - 0xbc], 2          ; 0x029d
    mov word [bp - 0xba], 3          ; 0x02a3
    mov word [bp - 0xb8], 2          ; 0x02a9
    mov word [bp - 0xb6], 2          ; 0x02af
    mov word [bp - 0xb4], 2          ; 0x02b5
    mov word [bp - 0xb2], 4          ; 0x02bb
    mov word [bp - 0xb0], 3          ; 0x02c1
    mov word [bp - 0xae], 3          ; 0x02c7
    mov word [bp - 0xac], 3          ; 0x02cd
    mov word [bp - 0xaa], 1          ; 0x02d3
    mov word [bp - 0xa8], 1          ; 0x02d9
    mov word [bp - 0xa6], 1          ; 0x02df
    mov word [bp - 0xa4], 1          ; 0x02e5
    mov word [bp - 0xa2], 3          ; 0x02eb
    mov word [bp - 0xa0], 3          ; 0x02f1
    mov word [bp - 0x9e], 3          ; 0x02f7
    mov word [bp - 0x9c], 3          ; 0x02fd
    mov word [bp - 0x9a], 3          ; 0x0303
    mov word [bp - 0x98], 5          ; 0x0309
    mov word [bp - 0x96], 3          ; 0x030f
    mov word [bp - 0x94], 5          ; 0x0315
    mov word [bp - 0x92], 4          ; 0x031b
    mov word [bp - 0x90], 3          ; 0x0321
    mov word [bp - 0x8e], 3          ; 0x0327
    mov word [bp - 0x8c], 4          ; 0x032d
    mov word [bp - 0x8a], 4          ; 0x0333
    mov word [bp - 0x88], 3          ; 0x0339
    mov word [bp - 0x86], 2          ; 0x033f
    mov word [bp - 0x84], 6          ; 0x0345
    mov word [bp - 0x82], 5          ; 0x034b
    mov word [bp - 0x80], 4          ; 0x0351
    mov word [bp - 0x7e], 3          ; 0x0356
    mov word [bp - 0x7c], 2          ; 0x035b
    mov word [bp - 0x7a], 6          ; 0x0360
    mov word [bp - 0x78], 5          ; 0x0365
    mov word [bp - 0x76], 3          ; 0x036a
    mov word [bp - 0x74], 3          ; 0x036f
    mov word [bp - 0x40], 0x57       ; 0x0374
    mov word [bp - 0x28], 0xe8       ; 0x0379
    mov word [bp - 0x3e], 0x62       ; 0x037e
    mov word [bp - 0x26], 0xdd       ; 0x0383
    mov word [bp - 0x3c], 0x6c       ; 0x0388
    mov word [bp - 0x24], 0xd3       ; 0x038d
    mov word [bp - 0x3a], 0x75       ; 0x0392
    mov word [bp - 0x22], 0xca       ; 0x0397
    mov word [bp - 0x38], 0x7d       ; 0x039c
    mov word [bp - 0x20], 0xc2       ; 0x03a1
    mov word [bp - 0x36], 0x84       ; 0x03a6
    mov word [bp - 0x1e], 0xbb       ; 0x03ab
    mov word [bp - 0x34], 0x8a       ; 0x03b0
    mov word [bp - 0x1c], 0xb5       ; 0x03b5
    mov word [bp - 0x32], 0x8f       ; 0x03ba
    mov word [bp - 0x1a], 0xb0       ; 0x03bf
    mov word [bp - 0x30], 0x93       ; 0x03c4
    mov word [bp - 0x18], 0xac       ; 0x03c9
    mov word [bp - 0x2e], 0x96       ; 0x03ce
    mov word [bp - 0x16], 0xa9       ; 0x03d3
    mov word [bp - 0x2c], 0x98       ; 0x03d8
    mov word [bp - 0x14], 0xa7       ; 0x03dd
    mov word [bp - 0x2a], 0x99       ; 0x03e2
    mov word [bp - 0x12], 0xa6       ; 0x03e7
    mov word [bp - 0x58], 0x49       ; 0x03ec
    mov word [bp - 0x56], 0x47       ; 0x03f1
    mov word [bp - 0x54], 0x46       ; 0x03f6
    mov word [bp - 0x52], 0x45       ; 0x03fb
    mov word [bp - 0x50], 0x44       ; 0x0400
    mov word [bp - 0x4e], 0x43       ; 0x0405
    mov word [bp - 0x4c], 0x42       ; 0x040a
    mov word [bp - 0x4a], 0x42       ; 0x040f
    mov word [bp - 0x48], 0x42       ; 0x0414
    mov word [bp - 0x46], 0x41       ; 0x0419
    mov word [bp - 0x44], 0x41       ; 0x041e
    mov word [bp - 0x42], 0x41       ; 0x0423
    mov word [bp - 0x70], 0x64       ; 0x0428
    mov word [bp - 0x6e], 0x5e       ; 0x042d
    mov word [bp - 0x6c], 0x58       ; 0x0432
    mov word [bp - 0x6a], 0x52       ; 0x0437
    mov word [bp - 0x68], 0x4c       ; 0x043c
    mov word [bp - 0x66], 0x46       ; 0x0441
    mov word [bp - 0x64], 0x40       ; 0x0446
    mov word [bp - 0x62], 0x3a       ; 0x044b
    mov word [bp - 0x60], 0x34       ; 0x0450
    mov word [bp - 0x5e], 0x2e       ; 0x0455
    mov word [bp - 0x5c], 0x28       ; 0x045a
    mov word [bp - 0x5a], 0x22       ; 0x045f
    mov ax, 0                        ; 0x0464
    cmp word [bp - 0xc], byte 0      ; 0x0467
    je short .forward10              ; 0x046b
    mov ax, 5                        ; 0x046d
    cmp byte [bx + spell_table + spell_table_rec_size*102 + spell_table_rec.f_0005], 2 ; 0x0470
    jne short .forward10             ; 0x0475
    mov ax, 3                        ; 0x0477
.forward10:
    mov word [bp - 0x102], ax        ; 0x047a
    mov word [bp - 0x100], ax        ; 0x047e
    mov ax, 0                        ; 0x0482
    push ax                          ; 0x0485
    mov ax, 2                        ; 0x0486
    push ax                          ; 0x0489
    mov ax, 0x8f                     ; 0x048a
    push ax                          ; 0x048d
    mov ax, 0xf7                     ; 0x048e
    push ax                          ; 0x0491
    mov ax, 0x21                     ; 0x0492
    push ax                          ; 0x0495
    mov ax, 0x48                     ; 0x0496
    push ax                          ; 0x0499
    call call_cache_area             ; 0x049a
    add sp, byte 0xc                 ; 0x049d
    mov word [bp - 0x116], dx        ; 0x04a0
    mov word [bp - 0x118], ax        ; 0x04a4
    mov ax, 0                        ; 0x04a8
    push ax                          ; 0x04ab
    call draw_animation_frame        ; 0x04ac
    pop cx                           ; 0x04af
    mov word [animation_index], ax   ; 0x04b0
    push word [show_area_bottom]     ; 0x04b3
    mov ax, 0xf8                     ; 0x04b7
    push ax                          ; 0x04ba
    mov ax, 0x21                     ; 0x04bb
    push ax                          ; 0x04be
    mov ax, 0x48                     ; 0x04bf
    push ax                          ; 0x04c2
    call call_show_area              ; 0x04c3
    add sp, byte 8                   ; 0x04c6
    mov ax, 5                        ; 0x04c9
    push ax                          ; 0x04cc
    call play_sound_effect           ; 0x04cd
    pop cx                           ; 0x04d0
    mov word [bp - 4], 0             ; 0x04d1
    mov ax, word [bp - 6]            ; 0x04d6
    mov word [bp - 2], ax            ; 0x04d9
    jmp near .forward16              ; 0x04dc
.back6:
    les bx, word [tick_counter_ptr]  ; 0x04df
    mov ax, word [es:bx]             ; 0x04e3
    mov dx, word [es:bx + 2]         ; 0x04e6
    mov word [bp - 0x112], dx        ; 0x04ea
    mov word [bp - 0x114], ax        ; 0x04ee
    mov ax, word [bp - 2]            ; 0x04f2
    shl ax, 1                        ; 0x04f5
    mov bx, ax                       ; 0x04f7
    add bx, bp                       ; 0x04f9
    mov ax, word [bx - 0x70]         ; 0x04fb
    imul word [bp - 0xea]            ; 0x04fe
    mov cx, 0x64                     ; 0x0502
    cwd                              ; 0x0505
    idiv cx                          ; 0x0506
    mov word [bp - 0xee], ax         ; 0x0508
    cmp word [bp - 0x104], byte 0    ; 0x050c
    je short .forward11              ; 0x0511
    mov cx, 0                        ; 0x0513
    sub cx, ax                       ; 0x0516
    mov ax, cx                       ; 0x0518
    mov cx, word [bp - 0xf8]         ; 0x051a
    shl cx, 1                        ; 0x051e
    mov bx, cx                       ; 0x0520
    add bx, bp                       ; 0x0522
    mov cx, word [bx - 0xea]         ; 0x0524
    shl cx, 1                        ; 0x0528
    shl cx, 1                        ; 0x052a
    shl cx, 1                        ; 0x052c
    sub ax, cx                       ; 0x052e
    mov word [bp - 0xee], ax         ; 0x0530
.forward11:
    mov ax, word [bp - 0xec]         ; 0x0534
    imul word [bp - 0x64]            ; 0x0538
    mov cx, 0x64                     ; 0x053b
    cwd                              ; 0x053e
    idiv cx                          ; 0x053f
    mov word [bp - 0xf0], ax         ; 0x0541
    mov al, byte [bp - 0xf8]         ; 0x0545
    mov byte [bp - 0x110], al        ; 0x0549
    mov byte [bp - 0x10f], 0         ; 0x054d
    mov ax, 0                        ; 0x0552
    push ax                          ; 0x0555
    push ax                          ; 0x0556
    push word [bp - 0x116]           ; 0x0557
    push word [bp - 0x118]           ; 0x055b
    call call_restore_screen         ; 0x055f
    add sp, byte 8                   ; 0x0562
    cmp word [animation_index], byte 0 ; 0x0565
    jl short .forward13              ; 0x056a
    mov ax, word [bp - 4]            ; 0x056c
    mov cx, 3                        ; 0x056f
    cwd                              ; 0x0572
    idiv cx                          ; 0x0573
    mov ax, dx                       ; 0x0575
    test ax, ax                      ; 0x0577
    jne short .forward12             ; 0x0579
    inc word [animation_index]       ; 0x057b
.forward12:
    push word [animation_index]      ; 0x057f
    call draw_animation_frame        ; 0x0583
    pop cx                           ; 0x0586
    mov word [animation_index], ax   ; 0x0587
.forward13:
    mov ax, 0x18                     ; 0x058a
    imul word [bp - 0xe]             ; 0x058d
    mov cx, word [bp - 2]            ; 0x0590
    shl cx, 1                        ; 0x0593
    add ax, cx                       ; 0x0595
    mov bx, ax                       ; 0x0597
    add bx, bp                       ; 0x0599
    mov ax, word [bx - 0x40]         ; 0x059b
    add ax, word [bp - 0xee]         ; 0x059e
    mov word [bp - 0xf2], ax         ; 0x05a2
    mov bx, cx                       ; 0x05a6
    add bx, bp                       ; 0x05a8
    mov ax, word [bx - 0x58]         ; 0x05aa
    add ax, word [bp - 0xf0]         ; 0x05ad
    mov word [bp - 0xf4], ax         ; 0x05b1
    mov ax, word [bp - 0x100]        ; 0x05b5
    shl ax, 1                        ; 0x05b9
    mov bx, ax                       ; 0x05bb
    add bx, bp                       ; 0x05bd
    mov cx, word [bx - 0x70]         ; 0x05bf
    mov ax, 0x64                     ; 0x05c2
    sub ax, cx                       ; 0x05c5
    push ax                          ; 0x05c7
    mov ax, 0                        ; 0x05c8
    push ax                          ; 0x05cb
    lea ax, word [bp - 0x110]        ; 0x05cc
    push ax                          ; 0x05d0
    push word [bp - 0x104]           ; 0x05d1
    mov ax, 0x8f                     ; 0x05d5
    push ax                          ; 0x05d8
    mov ax, 0x21                     ; 0x05d9
    push ax                          ; 0x05dc
    mov ax, 0xf8                     ; 0x05dd
    push ax                          ; 0x05e0
    mov ax, 0x48                     ; 0x05e1
    push ax                          ; 0x05e4
    mov ax, word [bp - 0xf4]         ; 0x05e5
    add ax, strict word 0x20         ; 0x05e9
    push ax                          ; 0x05ec
    push word [bp - 0xf2]            ; 0x05ed
    push word [bp - 0xf6]            ; 0x05f1
    call call_draw_text              ; 0x05f5
    add sp, byte 0x16                ; 0x05f8
    push word [show_area_bottom]     ; 0x05fb
    mov ax, 0xf8                     ; 0x05ff
    push ax                          ; 0x0602
    mov ax, 0x21                     ; 0x0603
    push ax                          ; 0x0606
    mov ax, 0x48                     ; 0x0607
    push ax                          ; 0x060a
    call call_show_area              ; 0x060b
    add sp, byte 8                   ; 0x060e
    mov ax, word [bp - 0xa]          ; 0x0611
    add word [bp - 0x100], ax        ; 0x0614
    mov ax, word [bp - 4]            ; 0x0618
    inc ax                           ; 0x061b
    cwd                              ; 0x061c
    idiv word [bp - 0xfe]            ; 0x061d
    mov ax, dx                       ; 0x0621
    test ax, ax                      ; 0x0623
    jne short .back7                 ; 0x0625
    mov ax, word [bp - 0xa]          ; 0x0627
    add word [bp - 0xf8], ax         ; 0x062a
    mov ax, word [bp - 0x102]        ; 0x062e
    mov word [bp - 0x100], ax        ; 0x0632
.back7:
    les bx, word [tick_counter_ptr]  ; 0x0636
    mov ax, word [es:bx]             ; 0x063a
    mov dx, word [es:bx + 2]         ; 0x063d
    cmp dx, word [bp - 0x112]        ; 0x0641
    jne short .forward14             ; 0x0645
    cmp ax, word [bp - 0x114]        ; 0x0647
.forward14:
    jne short .forward15             ; 0x064b
    jmp short .back7                 ; 0x064d
.forward15:
    mov ax, word [bp - 0xa]          ; 0x064f
    add word [bp - 2], ax            ; 0x0652
    inc word [bp - 4]                ; 0x0655
.forward16:
    mov ax, word [bp - 4]            ; 0x0658
    cmp ax, word [bp - 0xfc]         ; 0x065b
    jge short .forward17             ; 0x065f
    jmp near .back6                  ; 0x0661
.forward17:
    mov ax, 0                        ; 0x0664
    push ax                          ; 0x0667
    mov ax, 1                        ; 0x0668
    push ax                          ; 0x066b
    push word [bp - 0x116]           ; 0x066c
    push word [bp - 0x118]           ; 0x0670
    call call_restore_screen         ; 0x0674
    add sp, byte 8                   ; 0x0677
    ret                              ; 0x067a
