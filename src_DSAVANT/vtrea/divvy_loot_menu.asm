; auto-generated
divvy_loot_menu:
    mov ax, 0xffc0                   ; 0x5348
    call aztec_csav                  ; 0x534b
    lea ax, word [bp - 0x34]         ; 0x534e
    push ax                          ; 0x5351
    mov ax, MSG_DIVVY_LOOT           ; 0x5352
    push ax                          ; 0x5355
    call load_message_string         ; 0x5356
    add sp, byte 4                   ; 0x5359
.back1:
    lea ax, word [bp - 0x34]         ; 0x535c
    push ax                          ; 0x535f
    push word [bss_95e4]             ; 0x5360
    mov ax, 1                        ; 0x5364
    push ax                          ; 0x5367
    push ax                          ; 0x5368
    mov ax, 0                        ; 0x5369
    push ax                          ; 0x536c
    mov ax, MSG_DIVVY_LOOT           ; 0x536d
    push ax                          ; 0x5370
    call item_or_loot_dialog         ; 0x5371
    add sp, byte 0xc                 ; 0x5374
    mov word [bp - 6], ax            ; 0x5377
    mov ax, word [spell_dialog_result] ; 0x537a
    mov word [bp - 2], ax            ; 0x537d
    cmp word [bp - 2], byte -1       ; 0x5380
    je short .back1                  ; 0x5384
    mov ax, 0x10                     ; 0x5386
    push ax                          ; 0x5389
    mov ax, 0xc                      ; 0x538a
    push ax                          ; 0x538d
    mov ax, 0x96                     ; 0x538e
    push ax                          ; 0x5391
    mov ax, 0x3f                     ; 0x5392
    push ax                          ; 0x5395
    push word [bp - 6]               ; 0x5396
    mov ax, word [bp - 6]            ; 0x5399
    add ax, MSG_DIVVY_LOOT           ; 0x539c
    push ax                          ; 0x539f
    call draw_selected_button_label  ; 0x53a0
    add sp, byte 0xc                 ; 0x53a3
    mov ax, word [bp - 6]            ; 0x53a6
    cmp word [bp - 6], byte 1        ; 0x53a9
    je short .forward1               ; 0x53ad
    jmp near .forward7               ; 0x53af
.forward1:
    cmp word [mouse_active], byte 0  ; 0x53b2
    jne short .forward2              ; 0x53b7
    mov ax, 0xc6                     ; 0x53b9
    push ax                          ; 0x53bc
    mov ax, 0x109                    ; 0x53bd
    push ax                          ; 0x53c0
    mov ax, 0x8e                     ; 0x53c1
    push ax                          ; 0x53c4
    mov ax, 0x36                     ; 0x53c5
    push ax                          ; 0x53c8
    call call_show_area              ; 0x53c9
    add sp, byte 8                   ; 0x53cc
.forward2:
    call pick_party_member           ; 0x53cf
    mov word [bp - 8], ax            ; 0x53d2
    cmp ax, strict word 0xffff       ; 0x53d5
    je short .forward5               ; 0x53d8
    push ax                          ; 0x53da
    call api_idx_0004_ONJT           ; 0x53db
    pop cx                           ; 0x53de
    mov word [bp - 4], ax            ; 0x53df
    cmp ax, strict word 0xffff       ; 0x53e2
    jne short .forward3              ; 0x53e5
    mov word [bp - 2], 0xffff        ; 0x53e7
    mov ax, 0                        ; 0x53ec
    push ax                          ; 0x53ef
    call play_sound_effect           ; 0x53f0
    pop cx                           ; 0x53f3
    jmp short .forward4              ; 0x53f4
.forward3:
    mov ax, word [bp - 4]            ; 0x53f6
    mov cx, 0x100                    ; 0x53f9
    cwd                              ; 0x53fc
    idiv cx                          ; 0x53fd
    mov word [bp - 0xa], ax          ; 0x53ff
    mov word [bp - 0xc], dx          ; 0x5402
    mov ax, word [bp - 2]            ; 0x5405
    shl ax, 1                        ; 0x5408
    mov bx, ax                       ; 0x540a
    push word [bx + bss_95e6]        ; 0x540c
    push word [bx + list_row_count]  ; 0x5410
    mov ax, 0x248                    ; 0x5414
    imul word [bp - 8]               ; 0x5417
    push ax                          ; 0x541a
    mov ax, 0x78                     ; 0x541b
    imul word [bp - 0xa]             ; 0x541e
    mov cx, ax                       ; 0x5421
    pop ax                           ; 0x5423
    add ax, cx                       ; 0x5424
    push ax                          ; 0x5426
    mov ax, 0xc                      ; 0x5427
    imul word [bp - 0xc]             ; 0x542a
    mov cx, ax                       ; 0x542d
    pop ax                           ; 0x542f
    add ax, cx                       ; 0x5430
    add ax, 0x5c34                   ; 0x5432
    push ax                          ; 0x5435
    push word [bx + bss_960e]        ; 0x5436
    push word [bp - 8]               ; 0x543a
    call api_idx_004c_set_party_cell ; 0x543d
    add sp, byte 0xa                 ; 0x5440
.forward4:
    jmp short .forward6              ; 0x5443
.forward5:
    mov word [bp - 2], 0xffff        ; 0x5445
.forward6:
    jmp short .forward8              ; 0x544a
.forward7:
    cmp word [bp - 6], byte 2        ; 0x544c
    jne short .forward8              ; 0x5450
    mov ax, word [bp - 2]            ; 0x5452
    shl ax, 1                        ; 0x5455
    mov bx, ax                       ; 0x5457
    push word [bx + bss_95e6]        ; 0x5459
    push word [bx + list_row_count]  ; 0x545d
    lea ax, word [bp - 0x40]         ; 0x5461
    push ax                          ; 0x5464
    push word [bx + bss_960e]        ; 0x5465
    mov ax, 0                        ; 0x5469
    push ax                          ; 0x546c
    call api_idx_004c_set_party_cell ; 0x546d
    add sp, byte 0xa                 ; 0x5470
    lea ax, word [bp - 0x40]         ; 0x5473
    push ax                          ; 0x5476
    call add_floor_item              ; 0x5477
    pop cx                           ; 0x547a
    call refresh_floor_item_icon     ; 0x547b
.forward8:
    cmp word [bp - 2], byte -1       ; 0x547e
    je short .forward10              ; 0x5482
    dec word [bss_95e4]              ; 0x5484
    mov ax, word [bp - 2]            ; 0x5488
    mov word [bp - 4], ax            ; 0x548b
    jmp short .forward9              ; 0x548e
.back2:
    mov ax, 0x16                     ; 0x5490
    imul word [bp - 4]               ; 0x5493
    add ax, bss_9414                 ; 0x5496
    push ax                          ; 0x5499
    mov ax, 0x16                     ; 0x549a
    imul word [bp - 4]               ; 0x549d
    add ax, list_row_name            ; 0x54a0
    push ax                          ; 0x54a3
    call aztec_strcpy                ; 0x54a4
    add sp, byte 4                   ; 0x54a7
    mov ax, word [bp - 4]            ; 0x54aa
    shl ax, 1                        ; 0x54ad
    mov bx, ax                       ; 0x54af
    mov ax, word [bx + bss_9610]     ; 0x54b1
    mov word [bx + bss_960e], ax     ; 0x54b5
    mov ax, word [bx + bss_95b8]     ; 0x54b9
    mov word [bx + list_row_count], ax ; 0x54bd
    mov ax, word [bx + bss_93b0]     ; 0x54c1
    mov word [bx + list_row_marked], ax ; 0x54c5
    mov ax, word [bx + bss_93d8]     ; 0x54c9
    mov word [bx + list_row_glyph], ax ; 0x54cd
    mov ax, word [bx + bss_9638]     ; 0x54d1
    mov word [bx + bss_9636], ax     ; 0x54d5
    mov ax, word [bx + bss_95e8]     ; 0x54d9
    mov word [bx + bss_95e6], ax     ; 0x54dd
    inc word [bp - 4]                ; 0x54e1
.forward9:
    mov ax, word [bp - 4]            ; 0x54e4
    cmp ax, word [bss_95e4]          ; 0x54e7
    jl short .back2                  ; 0x54eb
.forward10:
    cmp word [bss_95e4], byte 0      ; 0x54ed
    jle short .forward11             ; 0x54f2
    jmp near .back1                  ; 0x54f4
.forward11:
    mov ax, 0xc6                     ; 0x54f7
    push ax                          ; 0x54fa
    mov ax, 0x109                    ; 0x54fb
    push ax                          ; 0x54fe
    mov ax, 0x8e                     ; 0x54ff
    push ax                          ; 0x5502
    mov ax, 0x36                     ; 0x5503
    push ax                          ; 0x5506
    call call_show_area              ; 0x5507
    add sp, byte 8                   ; 0x550a
    ret                              ; 0x550d
