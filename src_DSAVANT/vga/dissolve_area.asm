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
    call leaf_loc_LMQV               ; 0x2536
    call graphics_loc_RNOG           ; 0x2539
@..dissolve_area.l1:
    xor ax, ax                       ; 0x253c
    mov word [bp - 0x0022], ax       ; 0x253e
    mov ax, word [bp + 0xe]          ; 0x2541
    mov bx, 0x140                    ; 0x2544
    mul bx                           ; 0x2547
    add ax, word [bp + 0xc]          ; 0x2549
    mov word [bp - 0x0002], ax       ; 0x254c
    mov ax, word [bp + 0x10]         ; 0x254f
    sub ax, word [bp + 0xc]          ; 0x2552
    inc ax                           ; 0x2555
    mov word [bp - 0x0004], ax       ; 0x2556
    mov ax, word [bp + 0x12]         ; 0x2559
    sub ax, word [bp + 0xe]          ; 0x255c
    inc ax                           ; 0x255f
    mov word [bp - 0x0006], ax       ; 0x2560
    mov si, word [bp - 0x0002]       ; 0x2563
@..dissolve_area.l2:
    mov cx, word [bp - 0x0004]       ; 0x2566
@..dissolve_area.l3:
    push cx                          ; 0x2569
    les di, word [cs:cseg_00f7 - IMAGE_BASE] ; 0x256a
    mov cl, 3                        ; 0x256f
    mov dx, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x2571
    mov ds, dx                       ; 0x2576
    xor ax, ax                       ; 0x2578
    mov al, byte [si]                ; 0x257a
    mov word [bp - 0x0014], ax       ; 0x257c
    mov bx, ax                       ; 0x257f
    shl ax, 1                        ; 0x2581
    add bx, ax                       ; 0x2583
    xor ax, ax                       ; 0x2585
    mov al, byte [es:bx + di]        ; 0x2587
    shr ax, cl                       ; 0x258a
    mov word [bp - 0x0008], ax       ; 0x258c
    mov al, byte [es:bx + di + 0x1]  ; 0x258f
    shr ax, cl                       ; 0x2593
    mov word [bp - 0x000a], ax       ; 0x2595
    mov al, byte [es:bx + di + 0x2]  ; 0x2598
    shr ax, cl                       ; 0x259c
    mov word [bp - 0x000c], ax       ; 0x259e
    mov dx, 0xa000                   ; 0x25a1
    mov ds, dx                       ; 0x25a4
    mov al, byte [si]                ; 0x25a6
    mov word [bp - 0x0024], ax       ; 0x25a8
    cmp ax, word [bp - 0x0014]       ; 0x25ab
    jne short @..dissolve_area.l4    ; 0x25ae
    jmp near @..dissolve_area.l31    ; 0x25b0
@..dissolve_area.l4:
    mov bx, ax                       ; 0x25b3
    shl ax, 1                        ; 0x25b5
    add bx, ax                       ; 0x25b7
    xor ax, ax                       ; 0x25b9
    mov al, byte [es:bx + di]        ; 0x25bb
    shr ax, cl                       ; 0x25be
    mov word [bp - 0x000e], ax       ; 0x25c0
    mov al, byte [es:bx + di + 0x1]  ; 0x25c3
    shr ax, cl                       ; 0x25c7
    mov word [bp - 0x0010], ax       ; 0x25c9
    mov al, byte [es:bx + di + 0x2]  ; 0x25cc
    shr ax, cl                       ; 0x25d0
    mov word [bp - 0x0012], ax       ; 0x25d2
@..dissolve_area.l5:
    mov ax, word [bp - 0x000e]       ; 0x25d5
    sub ax, word [bp - 0x0008]       ; 0x25d8
    jne short @..dissolve_area.l6    ; 0x25db
    mov word [bp - 0x001c], ax       ; 0x25dd
    mov word [bp - 0x0016], ax       ; 0x25e0
    mov ax, word [bp - 0x0010]       ; 0x25e3
    sub ax, word [bp - 0x000a]       ; 0x25e6
    jne short @..dissolve_area.l8    ; 0x25e9
    mov word [bp - 0x001e], ax       ; 0x25eb
    mov word [bp - 0x0018], ax       ; 0x25ee
    mov ax, word [bp - 0x0012]       ; 0x25f1
    sub ax, word [bp - 0x000c]       ; 0x25f4
    jne short @..dissolve_area.l10   ; 0x25f7
    mov ax, word [bp - 0x0014]       ; 0x25f9
    mov byte [si], al                ; 0x25fc
    inc word [bp - 0x0022]           ; 0x25fe
    jmp near @..dissolve_area.l31    ; 0x2601
@..dissolve_area.l6:
    mov word [bp - 0x001c], ax       ; 0x2604
    or ax, ax                        ; 0x2607
    jns short @..dissolve_area.l7    ; 0x2609
    neg ax                           ; 0x260b
@..dissolve_area.l7:
    mov word [bp - 0x0016], ax       ; 0x260d
    mov ax, word [bp - 0x0010]       ; 0x2610
    sub ax, word [bp - 0x000a]       ; 0x2613
@..dissolve_area.l8:
    mov word [bp - 0x001e], ax       ; 0x2616
    or ax, ax                        ; 0x2619
    jns short @..dissolve_area.l9    ; 0x261b
    neg ax                           ; 0x261d
@..dissolve_area.l9:
    mov word [bp - 0x0018], ax       ; 0x261f
    mov ax, word [bp - 0x0012]       ; 0x2622
    sub ax, word [bp - 0x000c]       ; 0x2625
@..dissolve_area.l10:
    mov word [bp - 0x0020], ax       ; 0x2628
    or ax, ax                        ; 0x262b
    jns short @..dissolve_area.l11   ; 0x262d
    neg ax                           ; 0x262f
@..dissolve_area.l11:
    mov word [bp - 0x001a], ax       ; 0x2631
    mov ax, word [bp - 0x001a]       ; 0x2634
    cmp ax, word [bp - 0x0018]       ; 0x2637
    jae short @..dissolve_area.l12   ; 0x263a
    jmp near @..dissolve_area.l24    ; 0x263c
@..dissolve_area.l12:
    cmp ax, word [bp - 0x0016]       ; 0x263f
    jb short @..dissolve_area.l18    ; 0x2642
    mov bx, 0xffff                   ; 0x2644
    mov ax, word [bp - 0x0020]       ; 0x2647
    or ax, ax                        ; 0x264a
    jns short @..dissolve_area.l13   ; 0x264c
    neg bx                           ; 0x264e
@..dissolve_area.l13:
    add word [bp - 0x0012], bx       ; 0x2650
    mov bx, 0xffff                   ; 0x2653
    mov ax, word [bp - 0x0016]       ; 0x2656
    shl ax, 1                        ; 0x2659
    cmp ax, word [bp - 0x001a]       ; 0x265b
    jb short @..dissolve_area.l15    ; 0x265e
    mov ax, word [bp - 0x001c]       ; 0x2660
    or ax, ax                        ; 0x2663
    jns short @..dissolve_area.l14   ; 0x2665
    neg bx                           ; 0x2667
@..dissolve_area.l14:
    add word [bp - 0x000e], bx       ; 0x2669
@..dissolve_area.l15:
    mov bx, 0xffff                   ; 0x266c
    mov ax, word [bp - 0x0018]       ; 0x266f
    shl ax, 1                        ; 0x2672
    cmp ax, word [bp - 0x001a]       ; 0x2674
    jb short @..dissolve_area.l17    ; 0x2677
    mov bx, 0xffff                   ; 0x2679
    mov ax, word [bp - 0x001e]       ; 0x267c
    or ax, ax                        ; 0x267f
    jns short @..dissolve_area.l16   ; 0x2681
    neg bx                           ; 0x2683
@..dissolve_area.l16:
    add word [bp - 0x0010], bx       ; 0x2685
@..dissolve_area.l17:
    jmp near @..dissolve_area.l30    ; 0x2688
@..dissolve_area.l18:
    mov bx, 0xffff                   ; 0x268b
    mov ax, word [bp - 0x001c]       ; 0x268e
    or ax, ax                        ; 0x2691
    jns short @..dissolve_area.l19   ; 0x2693
    neg bx                           ; 0x2695
@..dissolve_area.l19:
    add word [bp - 0x000e], bx       ; 0x2697
    mov bx, 0xffff                   ; 0x269a
    mov ax, word [bp - 0x001a]       ; 0x269d
    shl ax, 1                        ; 0x26a0
    cmp ax, word [bp - 0x0016]       ; 0x26a2
    jb short @..dissolve_area.l21    ; 0x26a5
    mov ax, word [bp - 0x0020]       ; 0x26a7
    or ax, ax                        ; 0x26aa
    jns short @..dissolve_area.l20   ; 0x26ac
    neg bx                           ; 0x26ae
@..dissolve_area.l20:
    add word [bp - 0x0012], bx       ; 0x26b0
@..dissolve_area.l21:
    mov bx, 0xffff                   ; 0x26b3
    mov ax, word [bp - 0x0018]       ; 0x26b6
    shl ax, 1                        ; 0x26b9
    cmp ax, word [bp - 0x0016]       ; 0x26bb
    jb short @..dissolve_area.l23    ; 0x26be
    mov ax, word [bp - 0x001e]       ; 0x26c0
    or ax, ax                        ; 0x26c3
    jns short @..dissolve_area.l22   ; 0x26c5
    neg bx                           ; 0x26c7
@..dissolve_area.l22:
    add word [bp - 0x0010], bx       ; 0x26c9
@..dissolve_area.l23:
    jmp near @..dissolve_area.l30    ; 0x26cc
@..dissolve_area.l24:
    mov ax, word [bp - 0x0016]       ; 0x26cf
    cmp ax, word [bp - 0x0018]       ; 0x26d2
    jb short @..dissolve_area.l25    ; 0x26d5
    jmp short @..dissolve_area.l18   ; 0x26d7
@..dissolve_area.l25:
    mov bx, 0xffff                   ; 0x26d9
    mov ax, word [bp - 0x001e]       ; 0x26dc
    or ax, ax                        ; 0x26df
    jns short @..dissolve_area.l26   ; 0x26e1
    neg bx                           ; 0x26e3
@..dissolve_area.l26:
    add word [bp - 0x0010], bx       ; 0x26e5
    mov bx, 0xffff                   ; 0x26e8
    mov ax, word [bp - 0x001a]       ; 0x26eb
    shl ax, 1                        ; 0x26ee
    cmp ax, word [bp - 0x0018]       ; 0x26f0
    jb short @..dissolve_area.l28    ; 0x26f3
    mov ax, word [bp - 0x0020]       ; 0x26f5
    or ax, ax                        ; 0x26f8
    jns short @..dissolve_area.l27   ; 0x26fa
    neg bx                           ; 0x26fc
@..dissolve_area.l27:
    add word [bp - 0x0012], bx       ; 0x26fe
@..dissolve_area.l28:
    mov bx, 0xffff                   ; 0x2701
    mov ax, word [bp - 0x0016]       ; 0x2704
    shl ax, 1                        ; 0x2707
    cmp ax, word [bp - 0x0018]       ; 0x2709
    jb short @..dissolve_area.l30    ; 0x270c
    mov ax, word [bp - 0x001c]       ; 0x270e
    or ax, ax                        ; 0x2711
    jns short @..dissolve_area.l29   ; 0x2713
    neg bx                           ; 0x2715
@..dissolve_area.l29:
    add word [bp - 0x000e], bx       ; 0x2717
@..dissolve_area.l30:
    mov bx, word [bp - 0x000e]       ; 0x271a
    mov cl, 6                        ; 0x271d
    shl bx, cl                       ; 0x271f
    mov ax, word [bp - 0x0010]       ; 0x2721
    mov cl, 3                        ; 0x2724
    shl ax, cl                       ; 0x2726
    add bx, ax                       ; 0x2728
    add bx, word [bp - 0x0012]       ; 0x272a
    add bx, cseg_2327 - IMAGE_BASE   ; 0x272d
    mov al, byte [cs:bx]             ; 0x2731
    cmp al, 0xff                     ; 0x2734
    je short @..dissolve_area.l33    ; 0x2736
    mov byte [si], al                ; 0x2738
    inc word [bp - 0x0022]           ; 0x273a
@..dissolve_area.l31:
    inc si                           ; 0x273d
    pop cx                           ; 0x273e
    loop @..dissolve_area.l32        ; 0x273f
    add word [bp - 0x0002], strict word 0x140 ; 0x2741
    mov si, word [bp - 0x0002]       ; 0x2746
    dec word [bp - 0x0006]           ; 0x2749
    je short @..dissolve_area.l34    ; 0x274c
    jmp near @..dissolve_area.l2     ; 0x274e
@..dissolve_area.l32:
    jmp near @..dissolve_area.l3     ; 0x2751
@..dissolve_area.l33:
    jmp near @..dissolve_area.l5     ; 0x2754
@..dissolve_area.l34:
    mov ax, word [bp - 0x0022]       ; 0x2757
    or ax, ax                        ; 0x275a
    je short @..dissolve_area.l36    ; 0x275c
    mov ax, word [bp + 0x14]         ; 0x275e
    or ax, ax                        ; 0x2761
    je short @..dissolve_area.l35    ; 0x2763
    push word [bp + 0x14]            ; 0x2765
    call far [cs:cseg_00fb - IMAGE_BASE] ; 0x2768
    pop ax                           ; 0x276d
@..dissolve_area.l35:
    jmp near @..dissolve_area.l1     ; 0x276e
@..dissolve_area.l36:
    call leaf_loc_PRNU               ; 0x2771
    call bios_mouse_loc_PTIM         ; 0x2774
    pop di                           ; 0x2777
    pop si                           ; 0x2778
    pop es                           ; 0x2779
    pop ds                           ; 0x277a
    mov sp, bp                       ; 0x277b
    pop bp                           ; 0x277d
    ret                              ; 0x277e
