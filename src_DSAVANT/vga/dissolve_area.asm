; auto-generated
dissolve_area:
    push bp                          ; 0x2528
    mov bp, sp                       ; 0x2529
    sub sp, byte 0x24                ; 0x252b
    push ds                          ; 0x252e
    push es                          ; 0x252f
    push si                          ; 0x2530
    push di                          ; 0x2531
    mov ax, ds                       ; 0x2532
    mov es, ax                       ; 0x2534
    call request_mouse_redraw        ; 0x2536
    call clip_mouse_pointer_to_area  ; 0x2539
.back1:
    xor ax, ax                       ; 0x253c
    mov word [bp - 0x22], ax         ; 0x253e
    mov ax, word [bp + 0xe]          ; 0x2541
    mov bx, 0x140                    ; 0x2544
    mul bx                           ; 0x2547
    add ax, word [bp + 0xc]          ; 0x2549
    mov word [bp - 2], ax            ; 0x254c
    mov ax, word [bp + 0x10]         ; 0x254f
    sub ax, word [bp + 0xc]          ; 0x2552
    inc ax                           ; 0x2555
    mov word [bp - 4], ax            ; 0x2556
    mov ax, word [bp + 0x12]         ; 0x2559
    sub ax, word [bp + 0xe]          ; 0x255c
    inc ax                           ; 0x255f
    mov word [bp - 6], ax            ; 0x2560
    mov si, word [bp - 2]            ; 0x2563
.back2:
    mov cx, word [bp - 4]            ; 0x2566
.back3:
    push cx                          ; 0x2569
    les di, word [cs:palette_ptr - IMAGE_BASE] ; 0x256a
    mov cl, 3                        ; 0x256f
    mov dx, word [cs:screen_buf_seg - IMAGE_BASE] ; 0x2571
    mov ds, dx                       ; 0x2576
    xor ax, ax                       ; 0x2578
    mov al, byte [si]                ; 0x257a
    mov word [bp - 0x14], ax         ; 0x257c
    mov bx, ax                       ; 0x257f
    shl ax, 1                        ; 0x2581
    add bx, ax                       ; 0x2583
    xor ax, ax                       ; 0x2585
    mov al, byte [es:bx + di]        ; 0x2587
    shr ax, cl                       ; 0x258a
    mov word [bp - 8], ax            ; 0x258c
    mov al, byte [es:bx + di + 1]    ; 0x258f
    shr ax, cl                       ; 0x2593
    mov word [bp - 0xa], ax          ; 0x2595
    mov al, byte [es:bx + di + 2]    ; 0x2598
    shr ax, cl                       ; 0x259c
    mov word [bp - 0xc], ax          ; 0x259e
    mov dx, 0xa000                   ; 0x25a1
    mov ds, dx                       ; 0x25a4
    mov al, byte [si]                ; 0x25a6
    mov word [bp - 0x24], ax         ; 0x25a8
    cmp ax, word [bp - 0x14]         ; 0x25ab
    jne short .forward1              ; 0x25ae
    jmp near .forward26              ; 0x25b0
.forward1:
    mov bx, ax                       ; 0x25b3
    shl ax, 1                        ; 0x25b5
    add bx, ax                       ; 0x25b7
    xor ax, ax                       ; 0x25b9
    mov al, byte [es:bx + di]        ; 0x25bb
    shr ax, cl                       ; 0x25be
    mov word [bp - 0xe], ax          ; 0x25c0
    mov al, byte [es:bx + di + 1]    ; 0x25c3
    shr ax, cl                       ; 0x25c7
    mov word [bp - 0x10], ax         ; 0x25c9
    mov al, byte [es:bx + di + 2]    ; 0x25cc
    shr ax, cl                       ; 0x25d0
    mov word [bp - 0x12], ax         ; 0x25d2
.back4:
    mov ax, word [bp - 0xe]          ; 0x25d5
    sub ax, word [bp - 8]            ; 0x25d8
    jne short .forward2              ; 0x25db
    mov word [bp - 0x1c], ax         ; 0x25dd
    mov word [bp - 0x16], ax         ; 0x25e0
    mov ax, word [bp - 0x10]         ; 0x25e3
    sub ax, word [bp - 0xa]          ; 0x25e6
    jne short .forward4              ; 0x25e9
    mov word [bp - 0x1e], ax         ; 0x25eb
    mov word [bp - 0x18], ax         ; 0x25ee
    mov ax, word [bp - 0x12]         ; 0x25f1
    sub ax, word [bp - 0xc]          ; 0x25f4
    jne short .forward6              ; 0x25f7
    mov ax, word [bp - 0x14]         ; 0x25f9
    mov byte [si], al                ; 0x25fc
    inc word [bp - 0x22]             ; 0x25fe
    jmp near .forward26              ; 0x2601
.forward2:
    mov word [bp - 0x1c], ax         ; 0x2604
    or ax, ax                        ; 0x2607
    jns short .forward3              ; 0x2609
    neg ax                           ; 0x260b
.forward3:
    mov word [bp - 0x16], ax         ; 0x260d
    mov ax, word [bp - 0x10]         ; 0x2610
    sub ax, word [bp - 0xa]          ; 0x2613
.forward4:
    mov word [bp - 0x1e], ax         ; 0x2616
    or ax, ax                        ; 0x2619
    jns short .forward5              ; 0x261b
    neg ax                           ; 0x261d
.forward5:
    mov word [bp - 0x18], ax         ; 0x261f
    mov ax, word [bp - 0x12]         ; 0x2622
    sub ax, word [bp - 0xc]          ; 0x2625
.forward6:
    mov word [bp - 0x20], ax         ; 0x2628
    or ax, ax                        ; 0x262b
    jns short .forward7              ; 0x262d
    neg ax                           ; 0x262f
.forward7:
    mov word [bp - 0x1a], ax         ; 0x2631
    mov ax, word [bp - 0x1a]         ; 0x2634
    cmp ax, word [bp - 0x18]         ; 0x2637
    jae short .forward8              ; 0x263a
    jmp near .forward19              ; 0x263c
.forward8:
    cmp ax, word [bp - 0x16]         ; 0x263f
    jb short .back5                  ; 0x2642
    mov bx, 0xffff                   ; 0x2644
    mov ax, word [bp - 0x20]         ; 0x2647
    or ax, ax                        ; 0x264a
    jns short .forward9              ; 0x264c
    neg bx                           ; 0x264e
.forward9:
    add word [bp - 0x12], bx         ; 0x2650
    mov bx, 0xffff                   ; 0x2653
    mov ax, word [bp - 0x16]         ; 0x2656
    shl ax, 1                        ; 0x2659
    cmp ax, word [bp - 0x1a]         ; 0x265b
    jb short .forward11              ; 0x265e
    mov ax, word [bp - 0x1c]         ; 0x2660
    or ax, ax                        ; 0x2663
    jns short .forward10             ; 0x2665
    neg bx                           ; 0x2667
.forward10:
    add word [bp - 0xe], bx          ; 0x2669
.forward11:
    mov bx, 0xffff                   ; 0x266c
    mov ax, word [bp - 0x18]         ; 0x266f
    shl ax, 1                        ; 0x2672
    cmp ax, word [bp - 0x1a]         ; 0x2674
    jb short .forward13              ; 0x2677
    mov bx, 0xffff                   ; 0x2679
    mov ax, word [bp - 0x1e]         ; 0x267c
    or ax, ax                        ; 0x267f
    jns short .forward12             ; 0x2681
    neg bx                           ; 0x2683
.forward12:
    add word [bp - 0x10], bx         ; 0x2685
.forward13:
    jmp near .forward25              ; 0x2688
.back5:
    mov bx, 0xffff                   ; 0x268b
    mov ax, word [bp - 0x1c]         ; 0x268e
    or ax, ax                        ; 0x2691
    jns short .forward14             ; 0x2693
    neg bx                           ; 0x2695
.forward14:
    add word [bp - 0xe], bx          ; 0x2697
    mov bx, 0xffff                   ; 0x269a
    mov ax, word [bp - 0x1a]         ; 0x269d
    shl ax, 1                        ; 0x26a0
    cmp ax, word [bp - 0x16]         ; 0x26a2
    jb short .forward16              ; 0x26a5
    mov ax, word [bp - 0x20]         ; 0x26a7
    or ax, ax                        ; 0x26aa
    jns short .forward15             ; 0x26ac
    neg bx                           ; 0x26ae
.forward15:
    add word [bp - 0x12], bx         ; 0x26b0
.forward16:
    mov bx, 0xffff                   ; 0x26b3
    mov ax, word [bp - 0x18]         ; 0x26b6
    shl ax, 1                        ; 0x26b9
    cmp ax, word [bp - 0x16]         ; 0x26bb
    jb short .forward18              ; 0x26be
    mov ax, word [bp - 0x1e]         ; 0x26c0
    or ax, ax                        ; 0x26c3
    jns short .forward17             ; 0x26c5
    neg bx                           ; 0x26c7
.forward17:
    add word [bp - 0x10], bx         ; 0x26c9
.forward18:
    jmp near .forward25              ; 0x26cc
.forward19:
    mov ax, word [bp - 0x16]         ; 0x26cf
    cmp ax, word [bp - 0x18]         ; 0x26d2
    jb short .forward20              ; 0x26d5
    jmp short .back5                 ; 0x26d7
.forward20:
    mov bx, 0xffff                   ; 0x26d9
    mov ax, word [bp - 0x1e]         ; 0x26dc
    or ax, ax                        ; 0x26df
    jns short .forward21             ; 0x26e1
    neg bx                           ; 0x26e3
.forward21:
    add word [bp - 0x10], bx         ; 0x26e5
    mov bx, 0xffff                   ; 0x26e8
    mov ax, word [bp - 0x1a]         ; 0x26eb
    shl ax, 1                        ; 0x26ee
    cmp ax, word [bp - 0x18]         ; 0x26f0
    jb short .forward23              ; 0x26f3
    mov ax, word [bp - 0x20]         ; 0x26f5
    or ax, ax                        ; 0x26f8
    jns short .forward22             ; 0x26fa
    neg bx                           ; 0x26fc
.forward22:
    add word [bp - 0x12], bx         ; 0x26fe
.forward23:
    mov bx, 0xffff                   ; 0x2701
    mov ax, word [bp - 0x16]         ; 0x2704
    shl ax, 1                        ; 0x2707
    cmp ax, word [bp - 0x18]         ; 0x2709
    jb short .forward25              ; 0x270c
    mov ax, word [bp - 0x1c]         ; 0x270e
    or ax, ax                        ; 0x2711
    jns short .forward24             ; 0x2713
    neg bx                           ; 0x2715
.forward24:
    add word [bp - 0xe], bx          ; 0x2717
.forward25:
    mov bx, word [bp - 0xe]          ; 0x271a
    mov cl, 6                        ; 0x271d
    shl bx, cl                       ; 0x271f
    mov ax, word [bp - 0x10]         ; 0x2721
    mov cl, 3                        ; 0x2724
    shl ax, cl                       ; 0x2726
    add bx, ax                       ; 0x2728
    add bx, word [bp - 0x12]         ; 0x272a
    add bx, rgb_to_palette - IMAGE_BASE ; 0x272d
    mov al, byte [cs:bx]             ; 0x2731
    cmp al, 0xff                     ; 0x2734
    je short .forward28              ; 0x2736
    mov byte [si], al                ; 0x2738
    inc word [bp - 0x22]             ; 0x273a
.forward26:
    inc si                           ; 0x273d
    pop cx                           ; 0x273e
    loop .forward27                  ; 0x273f
    add word [bp - 2], strict word 0x140 ; 0x2741
    mov si, word [bp - 2]            ; 0x2746
    dec word [bp - 6]                ; 0x2749
    je short .forward29              ; 0x274c
    jmp near .back2                  ; 0x274e
.forward27:
    jmp near .back3                  ; 0x2751
.forward28:
    jmp near .back4                  ; 0x2754
.forward29:
    mov ax, word [bp - 0x22]         ; 0x2757
    or ax, ax                        ; 0x275a
    je short .forward31              ; 0x275c
    mov ax, word [bp + 0x14]         ; 0x275e
    or ax, ax                        ; 0x2761
    je short .forward30              ; 0x2763
    push word [bp + 0x14]            ; 0x2765
    call far [cs:delay_hook - IMAGE_BASE] ; 0x2768
    pop ax                           ; 0x276d
.forward30:
    jmp near .back1                  ; 0x276e
.forward31:
    call redraw_mouse_pointer        ; 0x2771
    call update_mouse_pointer        ; 0x2774
    pop di                           ; 0x2777
    pop si                           ; 0x2778
    pop es                           ; 0x2779
    pop ds                           ; 0x277a
    mov sp, bp                       ; 0x277b
    pop bp                           ; 0x277d
    ret                              ; 0x277e
