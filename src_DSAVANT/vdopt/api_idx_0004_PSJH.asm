; auto-generated
api_idx_0004_PSJH:
    mov ax, 0xfffc                   ; 0x0382
    call aztec_csav                  ; 0x0385
    push word [bp + 0xc]             ; 0x0388
    push word [bp + 0xa]             ; 0x038b
    push word [bp + 0x8]             ; 0x038e
    push word [bp + 0x6]             ; 0x0391
    push word [bp + 0x4]             ; 0x0394
    call api_idx_0006_POPS           ; 0x0397
    add sp, byte 0x0a                ; 0x039a
    mov word [bp - 0x0002], ax       ; 0x039d
    cmp ax, strict word 0xffff       ; 0x03a0
    jne short @..api_idx_0004_PSJH.l2 ; 0x03a3
    mov ax, word [bss_590e]          ; 0x03a5
    mov word [bp - 0x0002], ax       ; 0x03a8
    inc word [bss_590e]              ; 0x03ab
    mov ax, word [bss_590e]          ; 0x03af
    cmp ax, 0x200                    ; 0x03b2
    jl short @..api_idx_0004_PSJH.l2 ; 0x03b5
@..api_idx_0004_PSJH.l1:
    mov ax, 0                        ; 0x03b7
    push ax                          ; 0x03ba
    call ds_app_HKIJ                 ; 0x03bb
    pop cx                           ; 0x03be
    jmp short @..api_idx_0004_PSJH.l1 ; 0x03bf
@..api_idx_0004_PSJH.l2:
    mov ax, 6                        ; 0x03c1
    imul word [bp - 0x0002]          ; 0x03c4
    mov cx, ax                       ; 0x03c7
    mov ax, word [bss_0e10]          ; 0x03c9
    add ax, cx                       ; 0x03cc
    mov word [bp - 0x0004], ax       ; 0x03ce
    mov al, byte [bp + 0x4]          ; 0x03d1
    mov bx, word [bp - 0x0004]       ; 0x03d4
    mov byte [bx], al                ; 0x03d7
    mov al, byte [bp + 0x6]          ; 0x03d9
    mov bx, word [bp - 0x0004]       ; 0x03dc
    mov byte [bx + 0x1], al          ; 0x03df
    mov ax, word [bp + 0x8]          ; 0x03e2
    xchg al, ah                      ; 0x03e5
    sub al, al                       ; 0x03e7
    mov dx, word [bp + 0xa]          ; 0x03e9
    mov cx, 4                        ; 0x03ec
    shl dx, cl                       ; 0x03ef
    mov cx, dx                       ; 0x03f1
    add ax, cx                       ; 0x03f3
    add ax, word [bp + 0xc]          ; 0x03f5
    mov bx, word [bp - 0x0004]       ; 0x03f8
    mov word [bx + 0x2], ax          ; 0x03fb
    mov ax, word [bp + 0x6]          ; 0x03fe
    jmp short @..api_idx_0004_PSJH.l3 ; 0x0401
loc_VMRH:
    mov ax, word [bp + 0xe]          ; 0x0403
    mov cx, 4                        ; 0x0406
    shl ax, cl                       ; 0x0409
    add ax, word [bp + 0x10]         ; 0x040b
    xchg al, ah                      ; 0x040e
    sub al, al                       ; 0x0410
    mov dx, word [bp + 0x12]         ; 0x0412
    shl dx, cl                       ; 0x0415
    mov cx, dx                       ; 0x0417
    add ax, cx                       ; 0x0419
    add ax, word [bp + 0x14]         ; 0x041b
    mov bx, word [bp - 0x0004]       ; 0x041e
    mov word [bx + 0x4], ax          ; 0x0421
    jmp short @..api_idx_0004_PSJH.l4 ; 0x0424
loc_NQGQ:
    mov ax, word [bp + 0xe]          ; 0x0426
    mov bx, word [bp - 0x0004]       ; 0x0429
    mov word [bx + 0x4], ax          ; 0x042c
    jmp short @..api_idx_0004_PSJH.l4 ; 0x042f
loc_TKUN:
    mov ax, word [bp + 0xe]          ; 0x0431
    xchg al, ah                      ; 0x0434
    sub al, al                       ; 0x0436
    add ax, word [bp + 0x10]         ; 0x0438
    mov bx, word [bp - 0x0004]       ; 0x043b
    mov word [bx + 0x4], ax          ; 0x043e
    jmp short @..api_idx_0004_PSJH.l4 ; 0x0441
loc_LGLK:
    mov ax, word [bp + 0x8]          ; 0x0443
    mov bx, word [bp - 0x0004]       ; 0x0446
    mov word [bx + 0x2], ax          ; 0x0449
    mov ax, word [bp + 0xe]          ; 0x044c
    mov bx, word [bp - 0x0004]       ; 0x044f
    mov word [bx + 0x4], ax          ; 0x0452
    jmp short @..api_idx_0004_PSJH.l4 ; 0x0455
jumptable_0457:
    dw loc_VMRH - IMAGE_BASE + __zres_end      ; 0x0457
    dw loc_NQGQ - IMAGE_BASE + __zres_end      ; 0x0459
    dw loc_NQGQ - IMAGE_BASE + __zres_end      ; 0x045b
    dw loc_NQGQ - IMAGE_BASE + __zres_end      ; 0x045d
    dw loc_NQGQ - IMAGE_BASE + __zres_end      ; 0x045f
    dw loc_TKUN - IMAGE_BASE + __zres_end      ; 0x0461
    dw loc_LGLK - IMAGE_BASE + __zres_end      ; 0x0463
@..api_idx_0004_PSJH.l3:
    cmp ax, strict word 7            ; 0x0465
    jae short @..api_idx_0004_PSJH.l4 ; 0x0468
    xchg bx, ax                      ; 0x046a
    shl bx, 1                        ; 0x046b
    jmp [cs:bx + 0x549e]             ; 0x046d
@..api_idx_0004_PSJH.l4:
    ret                              ; 0x0472
