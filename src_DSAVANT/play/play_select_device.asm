; auto-generated
play_select_device:
    push bp                          ; 0x0294
    mov bp, sp                       ; 0x0295
    push di                          ; 0x0297
    push si                          ; 0x0298
    push es                          ; 0x0299
    push ds                          ; 0x029a
    push dx                          ; 0x029b
    push bx                          ; 0x029c
    cmp byte [bp + 0x14], 0xff       ; 0x029d
    jne short .forward1              ; 0x02a1
    jmp near play_set_device         ; 0x02a3
.forward1:
    mov al, byte [cs:play_device - IMAGE_BASE] ; 0x02a6
    call clamp_device                ; 0x02aa
    mov byte [bp + 0x15], al         ; 0x02ad
    jmp near play_configure_timer_handler ; 0x02b0
clamp_device:
    cmp al, 6                        ; 0x02b3
    jb short .return1                ; 0x02b5
    mov al, 0                        ; 0x02b7
.return1:
    ret                              ; 0x02b9
hook_int08_and_configure_pit:
    push di                          ; 0x02ba
    push es                          ; 0x02bb
    cld                              ; 0x02bc
    cmp byte [cs:int08_hooked - IMAGE_BASE], 0 ; 0x02bd
    jne short .forward1              ; 0x02c3
    in al, 0x21                      ; 0x02c5
    mov byte [cs:saved_pic_mask - IMAGE_BASE], al ; 0x02c7
    cli                              ; 0x02cb
    xor ax, ax                       ; 0x02cc
    mov es, ax                       ; 0x02ce
    mov di, 0x20                     ; 0x02d0
    mov ax, word [es:di]             ; 0x02d3
    mov word [cs:saved_int08_offset - IMAGE_BASE], ax ; 0x02d6
    mov ax, 0xbb4                    ; 0x02da
    stosw                            ; 0x02dd
    mov ax, word [es:di]             ; 0x02de
    mov word [cs:saved_int08_segment - IMAGE_BASE], ax ; 0x02e1
    mov ax, cs                       ; 0x02e5
    stosw                            ; 0x02e7
    sti                              ; 0x02e8
    mov al, 0x34                     ; 0x02e9
    out 0x43, al                     ; 0x02eb
    call io_delay                    ; 0x02ed
    in al, 0x40                      ; 0x02f0
    mov ah, al                       ; 0x02f2
    call io_delay                    ; 0x02f4
    in al, 0x40                      ; 0x02f7
    xchg al, ah                      ; 0x02f9
    mov word [cs:cseg_0a96 - IMAGE_BASE], ax ; 0x02fb
    mov al, 0x34                     ; 0x02ff
    out 0x43, al                     ; 0x0301
    mov ax, word [cs:music_tempo - IMAGE_BASE] ; 0x0303
    mov bl, 0x48                     ; 0x0307
    mul bl                           ; 0x0309
    mov word [cs:cseg_0a98 - IMAGE_BASE], ax ; 0x030b
    out 0x40, al                     ; 0x030f
    call io_delay                    ; 0x0311
    mov al, ah                       ; 0x0314
    out 0x40, al                     ; 0x0316
.forward1:
    mov byte [cs:int08_hooked - IMAGE_BASE], 0xff ; 0x0318
    pop es                           ; 0x031e
    pop di                           ; 0x031f
    ret                              ; 0x0320
int08_hooked:
    db 0x00
play_set_device:
    mov ah, 0                        ; 0x0322
    int 0x13 ; BIOS disk: reset disk system
    cmp byte [bp + 0x15], 4          ; 0x0326
    jne short .forward1              ; 0x032a
    mov byte [bp + 0x15], 1          ; 0x032c
.forward1:
    mov ax, 0x64                     ; 0x0330
    mov word [cs:tick_divider - IMAGE_BASE], ax ; 0x0333
    mov al, byte [bp + 0x15]         ; 0x0337
    mov byte [cs:play_device - IMAGE_BASE], al ; 0x033a
    mov byte [cs:play_sample_mode_flag - IMAGE_BASE], 0 ; 0x033e
    pushf                            ; 0x0344
    pop ax                           ; 0x0345
    test ah, 0x80                    ; 0x0346
    je short .forward2               ; 0x0349
    inc byte [cs:play_sample_mode_flag - IMAGE_BASE] ; 0x034b
.forward2:
    mov bl, byte [cs:play_device - IMAGE_BASE] ; 0x0350
    shl bl, 1                        ; 0x0355
    xor bh, bh                       ; 0x0357
    jmp [cs:bx + play_device_setup_dispatch_tbl - IMAGE_BASE] ; 0x0359
play_device_setup_dispatch_tbl:
play_device_setup_dispatch_tbl:
    dw play_set_device_return - IMAGE_BASE     ; 0x035e
    dw play_device_setup_opl_pulse - IMAGE_BASE ; 0x0360
    dw play_device_setup_port_case - IMAGE_BASE ; 0x0362
    dw play_device_setup_port_case - IMAGE_BASE ; 0x0364
    dw play_device_setup_noop_case - IMAGE_BASE ; 0x0366
play_device_setup_port_case:
    mov ax, word [bp + 0x10]         ; 0x0368
    mov word [cs:cseg_0a89 - IMAGE_BASE], ax ; 0x036b
    inc ax                           ; 0x036f
    mov word [cs:cseg_0a8b - IMAGE_BASE], ax ; 0x0370
    inc ax                           ; 0x0374
    cmp byte [bp + 0x15], 2          ; 0x0375
    je short .forward1               ; 0x0379
    add ax, strict word 0xd          ; 0x037b
    dec byte [bp + 0x15]             ; 0x037e
.forward1:
    mov word [cs:sample_output_port - IMAGE_BASE], ax ; 0x0381
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x0385
    mov al, 7                        ; 0x038a
    out dx, al                       ; 0x038c
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x038d
    in al, dx                        ; 0x0392
    or al, 0xc0                      ; 0x0393
    out dx, al                       ; 0x0395
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x0396
    mov al, 0xa                      ; 0x039b
    out dx, al                       ; 0x039d
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x039e
    in al, dx                        ; 0x03a3
    or al, 0x10                      ; 0x03a4
    out dx, al                       ; 0x03a6
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x03a7
    mov al, 0xf                      ; 0x03ac
    out dx, al                       ; 0x03ae
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x03af
    mov al, 0x70                     ; 0x03b4
    out dx, al                       ; 0x03b6
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x03b7
    mov al, 0xe                      ; 0x03bc
    out dx, al                       ; 0x03be
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x03bf
    mov al, 0x80                     ; 0x03c4
    out dx, al                       ; 0x03c6
    jmp near play_set_device_return  ; 0x03c7
play_device_setup_noop_case:
    jmp near play_set_device_return  ; 0x03ca
    times 15 db 0
play_device_setup_opl_pulse:
    call opl_silent_note_pulse       ; 0x03dc
    jmp near play_set_device_return  ; 0x03df
play_configure_timer_handler:
    cmp byte [bp + 0x12], 0          ; 0x03e2
    jne short .forward1              ; 0x03e6
    call stop_music_playback         ; 0x03e8
.back1:
    test byte [cs:timer_handler_installed - IMAGE_BASE], 0xff ; 0x03eb
    je short .back1                  ; 0x03f1
    jmp near .forward18              ; 0x03f3
.forward1:
    test byte [bp + 0x14], 2         ; 0x03f6
    je short .forward2               ; 0x03fa
    test byte [cs:timer_handler_installed - IMAGE_BASE], 0xff ; 0x03fc
    jne short .forward2              ; 0x0402
    jmp near play_set_device_return  ; 0x0404
.forward2:
    cli                              ; 0x0407
    test byte [cs:timer_handler_installed - IMAGE_BASE], 0xff ; 0x0408
    jne short .forward3              ; 0x040e
    jmp near .forward7               ; 0x0410
.forward3:
    xor ax, ax                       ; 0x0413
    mov es, ax                       ; 0x0415
    mov di, 0x20                     ; 0x0417
    cli                              ; 0x041a
    cmp byte [cs:int08_hooked - IMAGE_BASE], 0 ; 0x041b
    jne short .forward4              ; 0x0421
    mov byte [cs:int08_hooked - IMAGE_BASE], 1 ; 0x0423
    in al, 0x21                      ; 0x0429
    mov byte [cs:saved_pic_mask - IMAGE_BASE], al ; 0x042b
    mov ax, word [es:di]             ; 0x042f
    mov word [cs:saved_int08_offset - IMAGE_BASE], ax ; 0x0432
    mov ax, word [es:di + 2]         ; 0x0436
    mov word [cs:saved_int08_segment - IMAGE_BASE], ax ; 0x043a
.forward4:
    mov al, 0x34                     ; 0x043e
    out 0x43, al                     ; 0x0440
    call io_delay                    ; 0x0442
    mov ax, 0x48                     ; 0x0445
    out 0x40, al                     ; 0x0448
    call io_delay                    ; 0x044a
    mov al, ah                       ; 0x044d
    out 0x40, al                     ; 0x044f
    cmp byte [cs:play_sample_mode_flag - IMAGE_BASE], 0 ; 0x0451
    je short .forward5               ; 0x0457
    mov bl, byte [cs:play_device - IMAGE_BASE] ; 0x0459
    shl bl, 1                        ; 0x045e
    xor bh, bh                       ; 0x0460
    mov dx, word [cs:bx + jumptable_0495 + 0x10 - IMAGE_BASE] ; 0x0462
    cmp byte [cs:timer_handler_installed - IMAGE_BASE], 0 ; 0x0467
    je short .forward6               ; 0x046d
    mov dx, word [cs:bx + jumptable_0495 + 0x18 - IMAGE_BASE] ; 0x046f
    jmp near .forward6               ; 0x0474
.forward5:
    mov bl, byte [cs:play_device - IMAGE_BASE] ; 0x0477
    shl bl, 1                        ; 0x047c
    xor bh, bh                       ; 0x047e
    mov dx, word [cs:bx + jumptable_0495 - IMAGE_BASE] ; 0x0480
    cmp byte [cs:timer_handler_installed - IMAGE_BASE], 0 ; 0x0485
    je short .forward6               ; 0x048b
    mov dx, word [cs:bx + jumptable_0495 + 0x8 - IMAGE_BASE] ; 0x048d
    jmp near .forward6               ; 0x0492
jumptable_0495:
    dw pit_sample_interrupt - IMAGE_BASE       ; 0x0495
    dw io_loc_sample_device_tick - IMAGE_BASE  ; 0x0497
    dw io_loc_port_sample_tick - IMAGE_BASE    ; 0x0499
    dw io_loc_port_sample_tick - IMAGE_BASE    ; 0x049b
    dw pit_sample_interrupt - IMAGE_BASE       ; 0x049d
    dw io_loc_sample_device_tick - IMAGE_BASE  ; 0x049f
    dw io_loc_port_sample_tick - IMAGE_BASE    ; 0x04a1
    dw io_loc_port_sample_tick - IMAGE_BASE    ; 0x04a3
    dw speaker_sample_interrupt - IMAGE_BASE   ; 0x04a5
    dw sample_fraction_interrupt - IMAGE_BASE  ; 0x04a7
    dw sample_fraction_tick - IMAGE_BASE       ; 0x04a9
    dw sample_fraction_tick - IMAGE_BASE       ; 0x04ab
    dw speaker_sample_interrupt - IMAGE_BASE   ; 0x04ad
    dw sample_fraction_interrupt - IMAGE_BASE  ; 0x04af
    dw sample_fraction_tick - IMAGE_BASE       ; 0x04b1
    dw sample_fraction_tick - IMAGE_BASE       ; 0x04b3
play_configure_timer_handler.forward6:
    cld                              ; 0x04b5
    xor ax, ax                       ; 0x04b6
    mov es, ax                       ; 0x04b8
    mov di, 0x20                     ; 0x04ba
    mov ax, dx                       ; 0x04bd
    stosw                            ; 0x04bf
    mov ax, cs                       ; 0x04c0
    stosw                            ; 0x04c2
play_configure_timer_handler.forward7:
    cli                              ; 0x04c3
    cmp byte [cs:play_device - IMAGE_BASE], 1 ; 0x04c4
    jne short play_configure_timer_handler.forward9 ; 0x04ca
    mov al, 0                        ; 0x04cc
    cmp byte [cs:timer_handler_installed - IMAGE_BASE], 0 ; 0x04ce
    je short play_configure_timer_handler.forward8 ; 0x04d4
    mov al, 0xff                     ; 0x04d6
play_configure_timer_handler.forward8:
    mov byte [cs:play_device_timer_flag - IMAGE_BASE], al ; 0x04d8
play_configure_timer_handler.forward9:
    cmp byte [cs:play_device - IMAGE_BASE], 0 ; 0x04dc
    jne short play_configure_timer_handler.forward10 ; 0x04e2
    in al, 0x61                      ; 0x04e4
    or al, 3                         ; 0x04e6
    out 0x61, al                     ; 0x04e8
play_configure_timer_handler.forward10:
    call build_sample_count_table    ; 0x04ea
    mov al, 0xfe                     ; 0x04ed
    out 0x21, al                     ; 0x04ef
    mov ax, word [bp + 8]            ; 0x04f1
    add ax, word [bp + 0xe]          ; 0x04f4
    mov cl, 4                        ; 0x04f7
    shr ax, cl                       ; 0x04f9
    add ax, word [bp + 0xa]          ; 0x04fb
    sub ax, 0x1000                   ; 0x04fe
    mov es, ax                       ; 0x0501
    mov ds, ax                       ; 0x0503
    mov word [cs:sample_data_segment_a - IMAGE_BASE], ax ; 0x0505
    mov word [cs:sample_data_segment_b - IMAGE_BASE], ax ; 0x0509
    mov word [cs:sample_data_segment_c - IMAGE_BASE], ax ; 0x050d
    mov ax, word [bp + 0xe]          ; 0x0511
    sub ax, word [bp + 0xc]          ; 0x0514
    neg ax                           ; 0x0517
    and al, 0xfe                     ; 0x0519
    add ax, strict word 0x10         ; 0x051b
    mov di, ax                       ; 0x051e
    mov bx, ax                       ; 0x0520
    mov word [cs:sample_offset - IMAGE_BASE], ax ; 0x0522
    mov word [cs:sample_stream_offset - IMAGE_BASE], ax ; 0x0526
    mov word [cs:sample_stream_offset_alt - IMAGE_BASE], ax ; 0x052a
    mov al, byte [bx]                ; 0x052e
    mov byte [cs:sample_limit - IMAGE_BASE], al ; 0x0530
    mov byte [cs:sample_position - IMAGE_BASE], 0 ; 0x0534
    mov al, 0xff                     ; 0x053a
    sub al, byte [bp + 0x10]         ; 0x053c
    mov byte [cs:sample_counter_seed_a - IMAGE_BASE], al ; 0x053f
    mov byte [cs:sample_counter_seed_b - IMAGE_BASE], al ; 0x0543
    mov byte [cs:sample_counter_seed_c - IMAGE_BASE], al ; 0x0547
    mov byte [cs:sample_counter_seed_d - IMAGE_BASE], al ; 0x054b
    mov byte [cs:sample_counter_seed_e - IMAGE_BASE], al ; 0x054f
    mov byte [cs:sample_counter_seed_f - IMAGE_BASE], al ; 0x0553
    cmp byte [cs:play_device - IMAGE_BASE], 1 ; 0x0557
    je short play_configure_timer_handler.forward11 ; 0x055d
    cmp byte [cs:play_device - IMAGE_BASE], 4 ; 0x055f
    jne short play_configure_timer_handler.forward12 ; 0x0565
play_configure_timer_handler.forward11:
    mov dx, 0x388                    ; 0x0567
    mov al, 0x40                     ; 0x056a
    out dx, al                       ; 0x056c
play_configure_timer_handler.forward12:
    mov byte [cs:timer_handler_installed - IMAGE_BASE], 0 ; 0x056d
    cmp byte [cs:play_sample_mode_flag - IMAGE_BASE], 0 ; 0x0573
    jne short play_configure_timer_handler.forward13 ; 0x0579
    mov al, byte [cs:saved_pic_mask - IMAGE_BASE] ; 0x057b
    and al, 0xfe                     ; 0x057f
    out 0x21, al                     ; 0x0581
    sti                              ; 0x0583
    test byte [bp + 0x14], 1         ; 0x0584
    je short play_set_device_return  ; 0x0588
play_configure_timer_handler.back2:
    test byte [cs:timer_handler_installed - IMAGE_BASE], 0xff ; 0x058a
    je short play_configure_timer_handler.back2 ; 0x0590
play_set_device_return:
    pop bx                           ; 0x0592
    pop dx                           ; 0x0593
    pop ds                           ; 0x0594
    pop es                           ; 0x0595
    pop si                           ; 0x0596
    pop di                           ; 0x0597
    pop bp                           ; 0x0598
    sti                              ; 0x0599
    ret                              ; 0x059a
play_configure_timer_handler.forward13:
    mov al, 0x34                     ; 0x059b
    out 0x43, al                     ; 0x059d
    mov ax, 0x48                     ; 0x059f
    out 0x40, al                     ; 0x05a2
    call io_delay                    ; 0x05a4
    mov al, ah                       ; 0x05a7
    out 0x40, al                     ; 0x05a9
    mov al, 0xfe                     ; 0x05ab
    out 0x21, al                     ; 0x05ad
    mov ax, es                       ; 0x05af
    mov ds, ax                       ; 0x05b1
    mov cx, 0x20b0                   ; 0x05b3
    mov bx, sample_count_table - IMAGE_BASE ; 0x05b6
    mov dx, 0x42                     ; 0x05b9
    cmp byte [cs:play_device - IMAGE_BASE], 1 ; 0x05bc
    jne short play_configure_timer_handler.forward14 ; 0x05c2
    mov dx, 0x389                    ; 0x05c4
play_configure_timer_handler.forward14:
    cmp byte [cs:play_device - IMAGE_BASE], 3 ; 0x05c7
    je short play_configure_timer_handler.forward15 ; 0x05cd
    cmp byte [cs:play_device - IMAGE_BASE], 2 ; 0x05cf
    jne short play_configure_timer_handler.forward16 ; 0x05d5
play_configure_timer_handler.forward15:
    mov dx, word [cs:sample_output_port - IMAGE_BASE] ; 0x05d7
play_configure_timer_handler.forward16:
    mov si, word [cs:tick_divider - IMAGE_BASE] ; 0x05dc
    sti                              ; 0x05e1
play_configure_timer_handler.back3:
    sti                              ; 0x05e2
    test byte [cs:timer_handler_installed - IMAGE_BASE], 0xff ; 0x05e3
    je short play_configure_timer_handler.back3 ; 0x05e9
    cmp byte [cs:music_enabled - IMAGE_BASE], 0 ; 0x05eb
    je short play_configure_timer_handler.forward17 ; 0x05f1
    mov al, 0x34                     ; 0x05f3
    out 0x43, al                     ; 0x05f5
    mov ax, word [cs:music_tempo - IMAGE_BASE] ; 0x05f7
    mov bl, 0x48                     ; 0x05fb
    mul bl                           ; 0x05fd
    out 0x40, al                     ; 0x05ff
    call io_delay                    ; 0x0601
    mov al, ah                       ; 0x0604
    out 0x40, al                     ; 0x0606
play_configure_timer_handler.forward17:
    mov al, byte [cs:saved_pic_mask - IMAGE_BASE] ; 0x0608
    out 0x21, al                     ; 0x060c
    jmp short play_set_device_return ; 0x060e
io_delay:
    jmp near .return1                ; 0x0610
.return1:
    ret                              ; 0x0613
play_configure_timer_handler.forward18:
    cmp byte [cs:int08_hooked - IMAGE_BASE], 0 ; 0x0614
    jne short play_configure_timer_handler.forward19 ; 0x061a
    jmp near play_set_device_return  ; 0x061c
play_configure_timer_handler.forward19:
    cld                              ; 0x061f
    cli                              ; 0x0620
    xor ax, ax                       ; 0x0621
    mov es, ax                       ; 0x0623
    mov di, 0x20                     ; 0x0625
    mov ax, word [cs:saved_int08_offset - IMAGE_BASE] ; 0x0628
    stosw                            ; 0x062c
    mov ax, word [cs:saved_int08_segment - IMAGE_BASE] ; 0x062d
    stosw                            ; 0x0631
    mov byte [cs:int08_hooked - IMAGE_BASE], 0 ; 0x0632
    call mark_timer_handler_installed ; 0x0638
    mov al, 0x36                     ; 0x063b
    out 0x43, al                     ; 0x063d
    call io_delay                    ; 0x063f
    mov ax, 0                        ; 0x0642
    out 0x40, al                     ; 0x0645
    call io_delay                    ; 0x0647
    mov al, ah                       ; 0x064a
    out 0x40, al                     ; 0x064c
    mov al, byte [cs:saved_pic_mask - IMAGE_BASE] ; 0x064e
    out 0x21, al                     ; 0x0652
    sti                              ; 0x0654
    jmp near play_set_device_return  ; 0x0655
cseg_0658:
    db 0x00, 0x00
