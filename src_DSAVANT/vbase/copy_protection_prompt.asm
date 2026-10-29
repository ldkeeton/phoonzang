; auto-generated
copy_protection_prompt:
    mov ax, 0xff56                   ; 0x62e5
    call aztec_csav                  ; 0x62e8
    mov word [bp - 2], 0x37          ; 0x62eb
    mov word [bp - 4], 0x8f          ; 0x62f0
    mov word [bp - 6], 0x108         ; 0x62f5
    mov word [bp - 8], 0xc5          ; 0x62fa
    mov ax, screen_temp_file         ; 0x62ff
    push ax                          ; 0x6302
    mov ax, word [bp - 8]            ; 0x6303
    inc ax                           ; 0x6306
    push ax                          ; 0x6307
    mov ax, word [bp - 6]            ; 0x6308
    inc ax                           ; 0x630b
    push ax                          ; 0x630c
    mov ax, word [bp - 4]            ; 0x630d
    dec ax                           ; 0x6310
    push ax                          ; 0x6311
    mov ax, word [bp - 2]            ; 0x6312
    dec ax                           ; 0x6315
    push ax                          ; 0x6316
    call save_screen_area            ; 0x6317
    add sp, byte 0xa                 ; 0x631a
    mov word [bp - 0xaa], ax         ; 0x631d
    push word [bp - 8]               ; 0x6321
    push word [bp - 6]               ; 0x6324
    push word [bp - 4]               ; 0x6327
    push word [bp - 2]               ; 0x632a
    call draw_dialog_box             ; 0x632d
    add sp, byte 8                   ; 0x6330
    mov ax, 0                        ; 0x6333
    push ax                          ; 0x6336
    mov ax, 0x1c                     ; 0x6337
    push ax                          ; 0x633a
    call call_set_text_color         ; 0x633b
    add sp, byte 4                   ; 0x633e
    lea ax, word [bp - 0x58]         ; 0x6341
    push ax                          ; 0x6344
    mov ax, MSG_SECURITY_CLEARANCE   ; 0x6345
    push ax                          ; 0x6348
    call load_message_string         ; 0x6349
    add sp, byte 4                   ; 0x634c
    mov ax, word [bp - 4]            ; 0x634f
    add ax, strict word 5            ; 0x6352
    push ax                          ; 0x6355
    lea ax, word [bp - 0x58]         ; 0x6356
    push ax                          ; 0x6359
    call aztec_strlen                ; 0x635a
    pop cx                           ; 0x635d
    mov cx, ax                       ; 0x635e
    mov ax, 0x15                     ; 0x6360
    sub ax, cx                       ; 0x6363
    mov cx, 6                        ; 0x6365
    imul cx                          ; 0x6368
    inc ax                           ; 0x636a
    inc ax                           ; 0x636b
    mov cx, 2                        ; 0x636c
    cwd                              ; 0x636f
    idiv cx                          ; 0x6370
    add ax, word [bp - 2]            ; 0x6372
    add ax, strict word 0x29         ; 0x6375
    push ax                          ; 0x6378
    call call_set_text_pos           ; 0x6379
    add sp, byte 4                   ; 0x637c
    mov ax, 0                        ; 0x637f
    push ax                          ; 0x6382
    lea ax, word [bp - 0x58]         ; 0x6383
    push ax                          ; 0x6386
    call draw_text_glyphs            ; 0x6387
    add sp, byte 4                   ; 0x638a
    mov ax, 0xc2                     ; 0x638d
    push ax                          ; 0x6390
    mov ax, 1                        ; 0x6391
    push ax                          ; 0x6394
    call call_set_text_color         ; 0x6395
    add sp, byte 4                   ; 0x6398
    lea ax, word [bp - 0x58]         ; 0x639b
    push ax                          ; 0x639e
    mov ax, MSG_PLEASE_TURN_TO_PAGE_OF_YOUR ; 0x639f
    push ax                          ; 0x63a2
    call load_message_string         ; 0x63a3
    add sp, byte 4                   ; 0x63a6
    lea ax, word [bp - 0xa8]         ; 0x63a9
    push ax                          ; 0x63ad
    mov bx, word [code_index_1]      ; 0x63ae
    mov al, byte [bx + code_characters] ; 0x63b2
    sub ah, ah                       ; 0x63b6
    push ax                          ; 0x63b8
    call format_int_decimal          ; 0x63b9
    add sp, byte 4                   ; 0x63bc
    mov ax, 0x24                     ; 0x63bf
    push ax                          ; 0x63c2
    lea ax, word [bp - 0xa8]         ; 0x63c3
    push ax                          ; 0x63c7
    lea ax, word [bp - 0x58]         ; 0x63c8
    push ax                          ; 0x63cb
    call str_subst_char              ; 0x63cc
    add sp, byte 6                   ; 0x63cf
    mov ax, word [bp - 4]            ; 0x63d2
    add ax, strict word 0xf          ; 0x63d5
    push ax                          ; 0x63d8
    lea ax, word [bp - 0x58]         ; 0x63d9
    push ax                          ; 0x63dc
    call aztec_strlen                ; 0x63dd
    pop cx                           ; 0x63e0
    mov cx, ax                       ; 0x63e1
    mov ax, 0x15                     ; 0x63e3
    sub ax, cx                       ; 0x63e6
    mov cx, 6                        ; 0x63e8
    imul cx                          ; 0x63eb
    inc ax                           ; 0x63ed
    inc ax                           ; 0x63ee
    mov cx, 2                        ; 0x63ef
    cwd                              ; 0x63f2
    idiv cx                          ; 0x63f3
    add ax, word [bp - 2]            ; 0x63f5
    add ax, strict word 0x29         ; 0x63f8
    push ax                          ; 0x63fb
    call call_set_text_pos           ; 0x63fc
    add sp, byte 4                   ; 0x63ff
    mov ax, 0                        ; 0x6402
    push ax                          ; 0x6405
    lea ax, word [bp - 0x58]         ; 0x6406
    push ax                          ; 0x6409
    call draw_text_glyphs            ; 0x640a
    add sp, byte 4                   ; 0x640d
    lea ax, word [bp - 0x58]         ; 0x6410
    push ax                          ; 0x6413
    mov ax, MSG_MANUAL_AND_ENTER_THE_WORD ; 0x6414
    push ax                          ; 0x6417
    call load_message_string         ; 0x6418
    add sp, byte 4                   ; 0x641b
    lea ax, word [bp - 0xa8]         ; 0x641e
    push ax                          ; 0x6422
    mov bx, word [code_index_4]      ; 0x6423
    mov al, byte [bx + code_characters] ; 0x6427
    sub ah, ah                       ; 0x642b
    add ax, MSG_ORDINAL_BASE         ; 0x642d
    push ax                          ; 0x6430
    call load_message_string         ; 0x6431
    add sp, byte 4                   ; 0x6434
    mov ax, 0x24                     ; 0x6437
    push ax                          ; 0x643a
    lea ax, word [bp - 0xa8]         ; 0x643b
    push ax                          ; 0x643f
    lea ax, word [bp - 0x58]         ; 0x6440
    push ax                          ; 0x6443
    call str_subst_char              ; 0x6444
    add sp, byte 6                   ; 0x6447
    mov ax, word [bp - 4]            ; 0x644a
    add ax, strict word 0x15         ; 0x644d
    push ax                          ; 0x6450
    lea ax, word [bp - 0x58]         ; 0x6451
    push ax                          ; 0x6454
    call aztec_strlen                ; 0x6455
    pop cx                           ; 0x6458
    mov cx, ax                       ; 0x6459
    mov ax, 0x15                     ; 0x645b
    sub ax, cx                       ; 0x645e
    mov cx, 6                        ; 0x6460
    imul cx                          ; 0x6463
    inc ax                           ; 0x6465
    inc ax                           ; 0x6466
    mov cx, 2                        ; 0x6467
    cwd                              ; 0x646a
    idiv cx                          ; 0x646b
    add ax, word [bp - 2]            ; 0x646d
    add ax, strict word 0x29         ; 0x6470
    push ax                          ; 0x6473
    call call_set_text_pos           ; 0x6474
    add sp, byte 4                   ; 0x6477
    mov ax, 0                        ; 0x647a
    push ax                          ; 0x647d
    lea ax, word [bp - 0x58]         ; 0x647e
    push ax                          ; 0x6481
    call draw_text_glyphs            ; 0x6482
    add sp, byte 4                   ; 0x6485
    lea ax, word [bp - 0x58]         ; 0x6488
    push ax                          ; 0x648b
    mov ax, MSG_LOCATED_IN_PARAGRAPH_LINE ; 0x648c
    push ax                          ; 0x648f
    call load_message_string         ; 0x6490
    add sp, byte 4                   ; 0x6493
    lea ax, word [bp - 0xa8]         ; 0x6496
    push ax                          ; 0x649a
    mov bx, word [code_index_2]      ; 0x649b
    mov al, byte [bx + code_characters] ; 0x649f
    sub ah, ah                       ; 0x64a3
    push ax                          ; 0x64a5
    call format_int_decimal          ; 0x64a6
    add sp, byte 4                   ; 0x64a9
    mov ax, 0x5e                     ; 0x64ac
    push ax                          ; 0x64af
    lea ax, word [bp - 0xa8]         ; 0x64b0
    push ax                          ; 0x64b4
    lea ax, word [bp - 0x58]         ; 0x64b5
    push ax                          ; 0x64b8
    call str_subst_char              ; 0x64b9
    add sp, byte 6                   ; 0x64bc
    lea ax, word [bp - 0xa8]         ; 0x64bf
    push ax                          ; 0x64c3
    mov bx, word [code_index_3]      ; 0x64c4
    mov al, byte [bx + code_characters] ; 0x64c8
    sub ah, ah                       ; 0x64cc
    push ax                          ; 0x64ce
    call format_int_decimal          ; 0x64cf
    add sp, byte 4                   ; 0x64d2
    mov ax, 0x25                     ; 0x64d5
    push ax                          ; 0x64d8
    lea ax, word [bp - 0xa8]         ; 0x64d9
    push ax                          ; 0x64dd
    lea ax, word [bp - 0x58]         ; 0x64de
    push ax                          ; 0x64e1
    call str_subst_char              ; 0x64e2
    add sp, byte 6                   ; 0x64e5
    mov ax, word [bp - 4]            ; 0x64e8
    add ax, strict word 0x1b         ; 0x64eb
    push ax                          ; 0x64ee
    lea ax, word [bp - 0x58]         ; 0x64ef
    push ax                          ; 0x64f2
    call aztec_strlen                ; 0x64f3
    pop cx                           ; 0x64f6
    mov cx, ax                       ; 0x64f7
    mov ax, 0x15                     ; 0x64f9
    sub ax, cx                       ; 0x64fc
    mov cx, 6                        ; 0x64fe
    imul cx                          ; 0x6501
    inc ax                           ; 0x6503
    inc ax                           ; 0x6504
    mov cx, 2                        ; 0x6505
    cwd                              ; 0x6508
    idiv cx                          ; 0x6509
    add ax, word [bp - 2]            ; 0x650b
    add ax, strict word 0x29         ; 0x650e
    push ax                          ; 0x6511
    call call_set_text_pos           ; 0x6512
    add sp, byte 4                   ; 0x6515
    mov ax, 0                        ; 0x6518
    push ax                          ; 0x651b
    lea ax, word [bp - 0x58]         ; 0x651c
    push ax                          ; 0x651f
    call draw_text_glyphs            ; 0x6520
    add sp, byte 4                   ; 0x6523
    mov byte [known_spell_names], 0  ; 0x6526
    mov ax, 1                        ; 0x652b
    push ax                          ; 0x652e
    mov ax, 0                        ; 0x652f
    push ax                          ; 0x6532
    push ax                          ; 0x6533
    mov ax, 1                        ; 0x6534
    push ax                          ; 0x6537
    mov ax, 0x15                     ; 0x6538
    push ax                          ; 0x653b
    mov ax, word [bp - 4]            ; 0x653c
    add ax, strict word 0x28         ; 0x653f
    push ax                          ; 0x6542
    mov ax, word [bp - 2]            ; 0x6543
    add ax, strict word 0x29         ; 0x6546
    push ax                          ; 0x6549
    call draw_text_list              ; 0x654a
    add sp, byte 0xe                 ; 0x654d
    mov ax, word [bp - 8]            ; 0x6550
    inc ax                           ; 0x6553
    push ax                          ; 0x6554
    mov ax, word [bp - 6]            ; 0x6555
    inc ax                           ; 0x6558
    push ax                          ; 0x6559
    mov ax, word [bp - 4]            ; 0x655a
    dec ax                           ; 0x655d
    push ax                          ; 0x655e
    mov ax, word [bp - 2]            ; 0x655f
    dec ax                           ; 0x6562
    push ax                          ; 0x6563
    call call_show_area              ; 0x6564
    add sp, byte 8                   ; 0x6567
    mov ax, 0                        ; 0x656a
    push ax                          ; 0x656d
    call play_sound_effect           ; 0x656e
    pop cx                           ; 0x6571
    call flush_keyboard              ; 0x6572
    mov ax, 1                        ; 0x6575
    push ax                          ; 0x6578
    mov ax, 0                        ; 0x6579
    push ax                          ; 0x657c
    push ax                          ; 0x657d
    mov ax, 1                        ; 0x657e
    push ax                          ; 0x6581
    mov ax, 0x15                     ; 0x6582
    push ax                          ; 0x6585
    mov ax, word [bp - 4]            ; 0x6586
    add ax, strict word 0x28         ; 0x6589
    push ax                          ; 0x658c
    mov ax, word [bp - 2]            ; 0x658d
    add ax, strict word 0x29         ; 0x6590
    push ax                          ; 0x6593
    call draw_text_list              ; 0x6594
    add sp, byte 0xe                 ; 0x6597
    mov ax, word [bp - 4]            ; 0x659a
    add ax, strict word 0x2f         ; 0x659d
    push ax                          ; 0x65a0
    mov ax, word [bp - 2]            ; 0x65a1
    add ax, 0xa9                     ; 0x65a4
    push ax                          ; 0x65a7
    mov ax, word [bp - 4]            ; 0x65a8
    add ax, strict word 0x28         ; 0x65ab
    push ax                          ; 0x65ae
    mov ax, word [bp - 2]            ; 0x65af
    add ax, strict word 0x29         ; 0x65b2
    push ax                          ; 0x65b5
    call call_show_area              ; 0x65b6
    add sp, byte 8                   ; 0x65b9
    mov ax, 0                        ; 0x65bc
    push ax                          ; 0x65bf
    mov ax, 1                        ; 0x65c0
    push ax                          ; 0x65c3
    mov ax, 0                        ; 0x65c4
    push ax                          ; 0x65c7
    mov ax, 0x14                     ; 0x65c8
    push ax                          ; 0x65cb
    mov ax, word [bp - 4]            ; 0x65cc
    add ax, strict word 0x29         ; 0x65cf
    push ax                          ; 0x65d2
    mov ax, word [bp - 2]            ; 0x65d3
    add ax, strict word 0x2b         ; 0x65d6
    push ax                          ; 0x65d9
    mov ax, known_spell_names        ; 0x65da
    push ax                          ; 0x65dd
    call input_text_field            ; 0x65de
    add sp, byte 0xe                 ; 0x65e1
    mov ax, 1                        ; 0x65e4
    push ax                          ; 0x65e7
    mov ax, 0xffff                   ; 0x65e8
    push ax                          ; 0x65eb
    mov ax, 0                        ; 0x65ec
    push ax                          ; 0x65ef
    mov ax, 1                        ; 0x65f0
    push ax                          ; 0x65f3
    mov ax, 0x15                     ; 0x65f4
    push ax                          ; 0x65f7
    mov ax, word [bp - 4]            ; 0x65f8
    add ax, strict word 0x28         ; 0x65fb
    push ax                          ; 0x65fe
    mov ax, word [bp - 2]            ; 0x65ff
    add ax, strict word 0x29         ; 0x6602
    push ax                          ; 0x6605
    call draw_text_list              ; 0x6606
    add sp, byte 0xe                 ; 0x6609
    mov ax, word [bp - 4]            ; 0x660c
    add ax, strict word 0x2f         ; 0x660f
    push ax                          ; 0x6612
    mov ax, word [bp - 2]            ; 0x6613
    add ax, 0xa9                     ; 0x6616
    push ax                          ; 0x6619
    mov ax, word [bp - 4]            ; 0x661a
    add ax, strict word 0x28         ; 0x661d
    push ax                          ; 0x6620
    mov ax, word [bp - 2]            ; 0x6621
    add ax, strict word 0x29         ; 0x6624
    push ax                          ; 0x6627
    call call_show_area              ; 0x6628
    add sp, byte 8                   ; 0x662b
    mov ax, 1                        ; 0x662e
    push ax                          ; 0x6631
    push word [bp - 0xaa]            ; 0x6632
    call restore_saved_screen        ; 0x6636
    add sp, byte 4                   ; 0x6639
    mov ax, word [bp - 8]            ; 0x663c
    inc ax                           ; 0x663f
    push ax                          ; 0x6640
    mov ax, word [bp - 6]            ; 0x6641
    inc ax                           ; 0x6644
    push ax                          ; 0x6645
    mov ax, word [bp - 4]            ; 0x6646
    dec ax                           ; 0x6649
    push ax                          ; 0x664a
    mov ax, word [bp - 2]            ; 0x664b
    dec ax                           ; 0x664e
    push ax                          ; 0x664f
    call call_show_area              ; 0x6650
    add sp, byte 8                   ; 0x6653
    mov ax, known_spell_names        ; 0x6656
    push ax                          ; 0x6659
    mov ax, answer_word              ; 0x665a
    push ax                          ; 0x665d
    call aztec_strcpy                ; 0x665e
    add sp, byte 4                   ; 0x6661
    ret                              ; 0x6664
