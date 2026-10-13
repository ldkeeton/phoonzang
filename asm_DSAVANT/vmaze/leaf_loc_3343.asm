; auto-generated
leaf_loc_3343:
    mov ax, 5                        ; 0x3343
    imul word [bss_91d6]             ; 0x3346
    add ax, word [bp + 0xe]          ; 0x334a
    mov bx, ax                       ; 0x334d
    mov byte [bx - 0x6d5e], 2        ; 0x334f
    jmp short loc_3387               ; 0x3354
jumptable_3356:
    dw loc_3387 - IMAGE_BASE + 0x5055          ; 0x3356
    dw leaf_loc_3241 - IMAGE_BASE + 0x5055     ; 0x3358
    dw leaf_loc_3249 - IMAGE_BASE + 0x5055     ; 0x335a
    dw leaf_loc_3251 - IMAGE_BASE + 0x5055     ; 0x335c
    dw leaf_loc_3259 - IMAGE_BASE + 0x5055     ; 0x335e
    dw leaf_loc_3261 - IMAGE_BASE + 0x5055     ; 0x3360
    dw leaf_loc_3270 - IMAGE_BASE + 0x5055     ; 0x3362
    dw leaf_loc_327f - IMAGE_BASE + 0x5055     ; 0x3364
    dw leaf_loc_329a - IMAGE_BASE + 0x5055     ; 0x3366
    dw leaf_loc_32b9 - IMAGE_BASE + 0x5055     ; 0x3368
    dw leaf_loc_32d8 - IMAGE_BASE + 0x5055     ; 0x336a
    dw leaf_loc_32e0 - IMAGE_BASE + 0x5055     ; 0x336c
    dw leaf_loc_32e8 - IMAGE_BASE + 0x5055     ; 0x336e
    dw leaf_loc_32fc - IMAGE_BASE + 0x5055     ; 0x3370
    dw leaf_loc_330f - IMAGE_BASE + 0x5055     ; 0x3372
    dw leaf_loc_3325 - IMAGE_BASE + 0x5055     ; 0x3374
    dw leaf_loc_3343 - IMAGE_BASE + 0x5055     ; 0x3376
    dw leaf_loc_330f - IMAGE_BASE + 0x5055     ; 0x3378
@..api_idx_0008_3.l24:
    cmp ax, strict word 0x12         ; 0x337a
    jae short loc_3387               ; 0x337d
    xchg bx, ax                      ; 0x337f
    shl bx, 1                        ; 0x3380
    jmp [cs:bx - 0x7c63]             ; 0x3382
loc_3387:
    mov ax, word [bss_830c]          ; 0x3387
    cmp ax, word [bss_8f28]          ; 0x338a
    jne short loc_33bc               ; 0x338e
    mov ax, word [bp + 0xc]          ; 0x3390
    cmp ax, word [bss_8f2a]          ; 0x3393
    jne short loc_33bc               ; 0x3397
    mov ax, word [bp + 0x8]          ; 0x3399
    cmp ax, word [bss_8f2e]          ; 0x339c
    jne short loc_33bc               ; 0x33a0
    mov ax, word [bp + 0xa]          ; 0x33a2
    cmp ax, word [bss_8f2c]          ; 0x33a5
    jne short loc_33bc               ; 0x33a9
    mov ax, 5                        ; 0x33ab
    imul word [bss_91d6]             ; 0x33ae
    add ax, word [bp + 0xe]          ; 0x33b2
    mov bx, ax                       ; 0x33b5
    mov byte [bx - 0x6d5e], 3        ; 0x33b7
loc_33bc:
    mov ax, word [bp - 0x0004]       ; 0x33bc
    ret                              ; 0x33bf
