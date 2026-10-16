; auto-generated
leaf_loc_JHVI:
    mov ax, 5                        ; 0x3343
    imul word [bss_91d6]             ; 0x3346
    add ax, word [bp + 0xe]          ; 0x334a
    mov bx, ax                       ; 0x334d
    mov byte [bx - 0x6d5e], 2        ; 0x334f
    jmp short loc_KNRN               ; 0x3354
jumptable_3356:
    dw loc_KNRN - IMAGE_BASE + 0x5055          ; 0x3356
    dw leaf_loc_LGUH - IMAGE_BASE + 0x5055     ; 0x3358
    dw leaf_loc_TGSJ - IMAGE_BASE + 0x5055     ; 0x335a
    dw leaf_loc_LHNH - IMAGE_BASE + 0x5055     ; 0x335c
    dw leaf_loc_UKTT - IMAGE_BASE + 0x5055     ; 0x335e
    dw leaf_loc_LUKJ - IMAGE_BASE + 0x5055     ; 0x3360
    dw leaf_loc_NNIO - IMAGE_BASE + 0x5055     ; 0x3362
    dw leaf_loc_VKVH - IMAGE_BASE + 0x5055     ; 0x3364
    dw leaf_loc_VUHJ - IMAGE_BASE + 0x5055     ; 0x3366
    dw leaf_loc_PQRM - IMAGE_BASE + 0x5055     ; 0x3368
    dw leaf_loc_KGIG - IMAGE_BASE + 0x5055     ; 0x336a
    dw leaf_loc_RJTN - IMAGE_BASE + 0x5055     ; 0x336c
    dw leaf_loc_UVOJ - IMAGE_BASE + 0x5055     ; 0x336e
    dw leaf_loc_QUHK - IMAGE_BASE + 0x5055     ; 0x3370
    dw leaf_loc_HPLP - IMAGE_BASE + 0x5055     ; 0x3372
    dw leaf_loc_OKIV - IMAGE_BASE + 0x5055     ; 0x3374
    dw leaf_loc_JHVI - IMAGE_BASE + 0x5055     ; 0x3376
    dw leaf_loc_HPLP - IMAGE_BASE + 0x5055     ; 0x3378
@..api_idx_0008_KSTK.l24:
    cmp ax, strict word 0x12         ; 0x337a
    jae short loc_KNRN               ; 0x337d
    xchg bx, ax                      ; 0x337f
    shl bx, 1                        ; 0x3380
    jmp [cs:bx - 0x7c63]             ; 0x3382
loc_KNRN:
    mov ax, word [bss_830c]          ; 0x3387
    cmp ax, word [bss_8f28]          ; 0x338a
    jne short loc_NLMS               ; 0x338e
    mov ax, word [bp + 0xc]          ; 0x3390
    cmp ax, word [bss_8f2a]          ; 0x3393
    jne short loc_NLMS               ; 0x3397
    mov ax, word [bp + 0x8]          ; 0x3399
    cmp ax, word [bss_8f2e]          ; 0x339c
    jne short loc_NLMS               ; 0x33a0
    mov ax, word [bp + 0xa]          ; 0x33a2
    cmp ax, word [bss_8f2c]          ; 0x33a5
    jne short loc_NLMS               ; 0x33a9
    mov ax, 5                        ; 0x33ab
    imul word [bss_91d6]             ; 0x33ae
    add ax, word [bp + 0xe]          ; 0x33b2
    mov bx, ax                       ; 0x33b5
    mov byte [bx - 0x6d5e], 3        ; 0x33b7
loc_NLMS:
    mov ax, word [bp - 0x0004]       ; 0x33bc
    ret                              ; 0x33bf
