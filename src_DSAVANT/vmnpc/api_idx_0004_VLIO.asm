; auto-generated
api_idx_0004_VLIO:
    mov ax, 0xfffc                   ; 0x2372
    call aztec_csav                  ; 0x2375
    mov word [bp - 0x0004], 0        ; 0x2378
@..api_idx_0004_VLIO.l1:
    mov word [bp - 0x0002], 0        ; 0x237d
@..api_idx_0004_VLIO.l2:
    mov ax, 0x248                    ; 0x2382
    imul word [bp + 0x4]             ; 0x2385
    push ax                          ; 0x2388
    mov ax, 0x78                     ; 0x2389
    imul word [bp - 0x0004]          ; 0x238c
    mov cx, ax                       ; 0x238f
    pop ax                           ; 0x2391
    add ax, cx                       ; 0x2392
    push ax                          ; 0x2394
    mov ax, 0xc                      ; 0x2395
    imul word [bp - 0x0002]          ; 0x2398
    mov cx, ax                       ; 0x239b
    pop ax                           ; 0x239d
    add ax, cx                       ; 0x239e
    mov bx, ax                       ; 0x23a0
    mov ax, word [bx + cell_key_grid] ; 0x23a2
    cmp ax, word [bp + 0x6]          ; 0x23a6
    jne short @..api_idx_0004_VLIO.l3 ; 0x23a9
    mov ax, word [bp - 0x0004]       ; 0x23ab
    xchg al, ah                      ; 0x23ae
    sub al, al                       ; 0x23b0
    add ax, word [bp - 0x0002]       ; 0x23b2
    ret                              ; 0x23b5
@..api_idx_0004_VLIO.l3:
    inc word [bp - 0x0002]           ; 0x23b6
    mov ax, word [bp - 0x0002]       ; 0x23b9
    cmp ax, strict word 0xa          ; 0x23bc
    jl short @..api_idx_0004_VLIO.l2 ; 0x23bf
    inc word [bp - 0x0004]           ; 0x23c1
    mov ax, word [bp - 0x0004]       ; 0x23c4
    cmp ax, strict word 2            ; 0x23c7
    jl short @..api_idx_0004_VLIO.l1 ; 0x23ca
    mov ax, 0xffff                   ; 0x23cc
    ret                              ; 0x23cf
loc_USTG:
    mov ax, 0                        ; 0x23d0
    call aztec_csav                  ; 0x23d3
    mov word [bss_93d4], 0           ; 0x23d6
@..loc_USTG.l1:
    mov ax, word [bss_93d4]          ; 0x23dc
    mov cx, 7                        ; 0x23df
    shl ax, cl                       ; 0x23e2
    mov bx, ax                       ; 0x23e4
    mov byte [bx + bss_91cc], 0      ; 0x23e6
    mov ax, word [bss_93d4]          ; 0x23eb
    shl ax, 1                        ; 0x23ee
    mov bx, ax                       ; 0x23f0
    mov word [bx + bss_93cc], 0      ; 0x23f2
    inc word [bss_93d4]              ; 0x23f8
    mov ax, word [bss_93d4]          ; 0x23fc
    cmp ax, strict word 4            ; 0x23ff
    jl short @..loc_USTG.l1          ; 0x2402
    mov word [bss_93d4], 0           ; 0x2404
    push word [mouse_pointer_shape_seg] ; 0x240a
    push word [mouse_pointer_shape]  ; 0x240e
    call set_mouse_pointer_shape     ; 0x2412
    add sp, byte 4                   ; 0x2415
    mov ax, 0                        ; 0x2418
    push ax                          ; 0x241b
    mov ax, 0xa4                     ; 0x241c
    push ax                          ; 0x241f
    mov ax, 0x12e                    ; 0x2420
    push ax                          ; 0x2423
    call gfx_mouse_glide_to          ; 0x2424
    add sp, byte 6                   ; 0x2427
    mov ax, 3                        ; 0x242a
    push ax                          ; 0x242d
    call api_idx_0006_SHUK           ; 0x242e
    pop cx                           ; 0x2431
    mov ax, 3                        ; 0x2432
    push ax                          ; 0x2435
    call loc_HTQP                    ; 0x2436
    pop cx                           ; 0x2439
    ret                              ; 0x243a
loc_SOOS:
    mov ax, 0                        ; 0x243b
    call aztec_csav                  ; 0x243e
    mov ax, 3                        ; 0x2441
    push ax                          ; 0x2444
    call api_idx_0006_SHUK           ; 0x2445
    pop cx                           ; 0x2448
    mov ax, 3                        ; 0x2449
    push ax                          ; 0x244c
    call loc_HTQP                    ; 0x244d
    pop cx                           ; 0x2450
    mov ax, 0                        ; 0x2451
    push ax                          ; 0x2454
    mov ax, 0xa4                     ; 0x2455
    push ax                          ; 0x2458
    mov ax, 0x12e                    ; 0x2459
    push ax                          ; 0x245c
    call gfx_mouse_glide_back        ; 0x245d
    add sp, byte 6                   ; 0x2460
    mov ax, 0                        ; 0x2463
    mov dx, 0                        ; 0x2466
    push dx                          ; 0x2469
    push ax                          ; 0x246a
    call set_mouse_pointer_shape     ; 0x246b
    add sp, byte 4                   ; 0x246e
    ret                              ; 0x2471
