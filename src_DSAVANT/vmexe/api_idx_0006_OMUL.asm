; auto-generated
api_idx_0006_OMUL:
    mov ax, 0xfffa                   ; 0x25d0
    call aztec_csav                  ; 0x25d3
    cmp word [bp + 0x6], byte 0      ; 0x25d6
    jl short @..api_idx_0006_OMUL.l1 ; 0x25da
    mov ax, word [bp + 0x6]          ; 0x25dc
    mov bx, word [bp + 0x8]          ; 0x25df
    mov word [bx], ax                ; 0x25e2
    mov bx, word [bp + 0xa]          ; 0x25e4
    mov word [bx], 1                 ; 0x25e7
    jmp near @..api_idx_0006_OMUL.l6 ; 0x25eb
@..api_idx_0006_OMUL.l1:
    mov ax, word [bp + 0x4]          ; 0x25ee
    shl ax, 1                        ; 0x25f1
    mov bx, ax                       ; 0x25f3
    mov bx, word [bx + bss_8482]     ; 0x25f5
    mov al, byte [bx + 0x1a1]        ; 0x25f9
    sub ah, ah                       ; 0x25fd
    mov word [bp - 0x0002], ax       ; 0x25ff
    mov ax, word [bp + 0x6]          ; 0x2602
    push ax                          ; 0x2605
    cmp ax, strict word 0            ; 0x2606
    pop ax                           ; 0x2609
    jge short @..api_idx_0006_OMUL.l2 ; 0x260a
    neg ax                           ; 0x260c
@..api_idx_0006_OMUL.l2:
    mov word [bp - 0x0004], ax       ; 0x260e
    cmp ax, word [bp - 0x0002]       ; 0x2611
    jle short @..api_idx_0006_OMUL.l3 ; 0x2614
    mov ax, word [bp - 0x0002]       ; 0x2616
    mov word [bp - 0x0004], ax       ; 0x2619
@..api_idx_0006_OMUL.l3:
    mov ax, word [bp - 0x0002]       ; 0x261c
    sub ax, word [bp - 0x0004]       ; 0x261f
    push ax                          ; 0x2622
    call ds_app_PUNN                 ; 0x2623
    pop cx                           ; 0x2626
    mov word [bp - 0x0006], ax       ; 0x2627
@..api_idx_0006_OMUL.l4:
    cmp word [bp - 0x0006], byte 0   ; 0x262a
    jle short @..api_idx_0006_OMUL.l5 ; 0x262e
    mov ax, 0x2c                     ; 0x2630
    imul word [bp - 0x0006]          ; 0x2633
    mov si, ax                       ; 0x2636
    mov ax, word [bp + 0x4]          ; 0x2638
    shl ax, 1                        ; 0x263b
    mov bx, ax                       ; 0x263d
    mov bx, word [bx + bss_8482]     ; 0x263f
    cmp byte [bx + si + 0x22], 3     ; 0x2643
    jne short @..api_idx_0006_OMUL.l5 ; 0x2647
    dec word [bp - 0x0006]           ; 0x2649
    jmp short @..api_idx_0006_OMUL.l4 ; 0x264c
@..api_idx_0006_OMUL.l5:
    mov ax, word [bp - 0x0006]       ; 0x264e
    mov bx, word [bp + 0x8]          ; 0x2651
    mov word [bx], ax                ; 0x2654
    mov ax, word [bp - 0x0004]       ; 0x2656
    mov bx, word [bp + 0xa]          ; 0x2659
    mov word [bx], ax                ; 0x265c
@..api_idx_0006_OMUL.l6:
    ret                              ; 0x265e
