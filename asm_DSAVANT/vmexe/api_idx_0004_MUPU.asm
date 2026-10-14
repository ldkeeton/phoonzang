; auto-generated
api_idx_0004_MUPU:
    mov ax, 0xfffc                   ; 0x33e2
    call aztec_csav                  ; 0x33e5
    cmp word [bss_91d8], byte 1      ; 0x33e8
    jne short @..api_idx_0004_MUPU.l1 ; 0x33ed
    ret                              ; 0x33ef
@..api_idx_0004_MUPU.l1:
    cmp word [bp + 0x4], byte 0      ; 0x33f0
    je short @..api_idx_0004_MUPU.l2 ; 0x33f4
    mov ax, word [bp + 0x4]          ; 0x33f6
    cmp ax, strict word 6            ; 0x33f9
    jne short @..api_idx_0004_MUPU.l6 ; 0x33fc
@..api_idx_0004_MUPU.l2:
    mov ax, 0x2c                     ; 0x33fe
    imul word [bss_8462]             ; 0x3401
    mov si, ax                       ; 0x3405
    mov ax, word [bss_8464]          ; 0x3407
    shl ax, 1                        ; 0x340a
    mov bx, ax                       ; 0x340c
    mov bx, word [bx - 0x7b7e]       ; 0x340e
    cmp byte [bx + si + 0x2a], 0xff  ; 0x3412
    jne short @..api_idx_0004_MUPU.l4 ; 0x3416
    mov ax, 0                        ; 0x3418
    mov cx, word [bss_8464]          ; 0x341b
    cmp cx, byte 1                   ; 0x341f
    je short @..api_idx_0004_MUPU.l3 ; 0x3422
    mov ax, 2                        ; 0x3424
    cmp cx, byte 2                   ; 0x3427
    jne short @..api_idx_0004_MUPU.l3 ; 0x342a
    mov ax, 1                        ; 0x342c
@..api_idx_0004_MUPU.l3:
    mov word [bp - 0x0004], ax       ; 0x342f
    jmp short @..api_idx_0004_MUPU.l5 ; 0x3432
@..api_idx_0004_MUPU.l4:
    mov al, byte [bx + si + 0x2a]    ; 0x3434
    cbw                              ; 0x3437
    mov cx, 0xa                      ; 0x3438
    cwd                              ; 0x343b
    idiv cx                          ; 0x343c
    mov word [bp - 0x0004], ax       ; 0x343e
@..api_idx_0004_MUPU.l5:
    jmp short @..api_idx_0004_MUPU.l9 ; 0x3441
@..api_idx_0004_MUPU.l6:
    mov ax, 0x2c                     ; 0x3443
    imul word [bp + 0x6]             ; 0x3446
    mov si, ax                       ; 0x3449
    mov ax, word [bp + 0x4]          ; 0x344b
    shl ax, 1                        ; 0x344e
    mov bx, ax                       ; 0x3450
    mov bx, word [bx - 0x7b7e]       ; 0x3452
    cmp byte [bx + si + 0x2a], 0xff  ; 0x3456
    jne short @..api_idx_0004_MUPU.l8 ; 0x345a
    mov ax, 0                        ; 0x345c
    mov cx, word [bp + 0x4]          ; 0x345f
    cmp cx, byte 1                   ; 0x3462
    je short @..api_idx_0004_MUPU.l7 ; 0x3465
    mov ax, 2                        ; 0x3467
    cmp cx, byte 2                   ; 0x346a
    jne short @..api_idx_0004_MUPU.l7 ; 0x346d
    mov ax, 1                        ; 0x346f
@..api_idx_0004_MUPU.l7:
    mov word [bp - 0x0004], ax       ; 0x3472
    jmp short @..api_idx_0004_MUPU.l9 ; 0x3475
@..api_idx_0004_MUPU.l8:
    mov al, byte [bx + si + 0x2a]    ; 0x3477
    cbw                              ; 0x347a
    mov cx, 0xa                      ; 0x347b
    cwd                              ; 0x347e
    idiv cx                          ; 0x347f
    mov word [bp - 0x0004], ax       ; 0x3481
@..api_idx_0004_MUPU.l9:
    push word [bss_8454]             ; 0x3484
    mov ax, 0                        ; 0x3488
    push ax                          ; 0x348b
    push word [bp - 0x0004]          ; 0x348c
    call clamp                       ; 0x348f
    add sp, byte 6                   ; 0x3492
    mov word [bp - 0x0004], ax       ; 0x3495
    mov ax, word [bp + 0xc]          ; 0x3498
    mov word [bss_90de], ax          ; 0x349b
    push word [bp + 0xa]             ; 0x349e
    push word [bp + 0x6]             ; 0x34a1
    push word [bp + 0x4]             ; 0x34a4
    push word [bp - 0x0004]          ; 0x34a7
    push word [bp + 0x8]             ; 0x34aa
    push word [bss_8462]             ; 0x34ad
    push word [bss_8464]             ; 0x34b1
    call loc_0f67                    ; 0x34b5
    add sp, byte 0x0e                ; 0x34b8
    ret                              ; 0x34bb
