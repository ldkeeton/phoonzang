api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0331
    call ds_aztec_csav               ; 0x0334
    mov word [bp - 0x0002], 0        ; 0x0337
@..api_idx_0002_2.l1:
    cmp word [bp + 0x4], byte 0      ; 0x033c
    jl short @..api_idx_0002_2.l2    ; 0x0340
    mov ax, word [bp - 0x0002]       ; 0x0342
    cmp ax, word [bp + 0x4]          ; 0x0345
    jne short @..api_idx_0002_2.l3   ; 0x0348
@..api_idx_0002_2.l2:
    mov ax, word [bp - 0x0002]       ; 0x034a
    shl ax, 1                        ; 0x034d
    mov bx, ax                       ; 0x034f
    inc word [bx - 0x7cf2]           ; 0x0351
@..api_idx_0002_2.l3:
    mov ax, 0x14                     ; 0x0355
    imul word [bp - 0x0002]          ; 0x0358
    mov cx, word [bp - 0x0002]       ; 0x035b
    shl cx, 1                        ; 0x035e
    mov bx, cx                       ; 0x0360
    mov cx, word [bx - 0x7cf2]       ; 0x0362
    shl cx, 1                        ; 0x0366
    add ax, cx                       ; 0x0368
    mov bx, ax                       ; 0x036a
    cmp word [bx + 0x1d4], byte 0xff ; 0x036c
    jne short @..api_idx_0002_2.l4   ; 0x0371
    mov ax, word [bp - 0x0002]       ; 0x0373
    shl ax, 1                        ; 0x0376
    mov bx, ax                       ; 0x0378
    mov word [bx - 0x7cf2], 0        ; 0x037a
@..api_idx_0002_2.l4:
    inc word [bp - 0x0002]           ; 0x0380
    mov ax, word [bp - 0x0002]       ; 0x0383
    cmp ax, strict word 6            ; 0x0386
    jl short @..api_idx_0002_2.l1    ; 0x0389
    ret                              ; 0x038b
