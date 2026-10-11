api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x63cd
    call ds_dispatch_f40b            ; 0x63d0
    mov word [bp - 0x0002], 0        ; 0x63d3
@..api_idx_0008_2.l1:
    mov word [bp - 0x0004], 0        ; 0x63d8
@..api_idx_0008_2.l2:
    mov ax, 6                        ; 0x63dd
    imul word [bp - 0x0002]          ; 0x63e0
    push ax                          ; 0x63e3
    mov ax, word [dseg_8462]         ; 0x63e4
    mov cx, 6                        ; 0x63e7
    cwd                              ; 0x63ea
    idiv cx                          ; 0x63eb
    mov ax, dx                       ; 0x63ed
    imul cx                          ; 0x63ef
    mov cx, ax                       ; 0x63f1
    mov dx, word [bp - 0x0004]       ; 0x63f3
    shl dx, 1                        ; 0x63f6
    add ax, dx                       ; 0x63f8
    mov bx, ax                       ; 0x63fa
    mov cx, word [bx + 0x592]        ; 0x63fc
    shl cx, 1                        ; 0x6400
    pop ax                           ; 0x6402
    add ax, cx                       ; 0x6403
    mov bx, ax                       ; 0x6405
    mov ax, word [bx - 0x7bc6]       ; 0x6407
    mov cx, 0xa                      ; 0x640b
    cwd                              ; 0x640e
    idiv cx                          ; 0x640f
    mov word [bp - 0x0008], ax       ; 0x6411
    mov word [bp - 0x0006], dx       ; 0x6414
    cmp ax, word [bp + 0x4]          ; 0x6417
    jne short @..api_idx_0008_2.l3   ; 0x641a
    mov ax, dx                       ; 0x641c
    ret                              ; 0x641e
@..api_idx_0008_2.l3:
    inc word [bp - 0x0004]           ; 0x641f
    mov ax, word [bp - 0x0004]       ; 0x6422
    cmp ax, strict word 3            ; 0x6425
    jl short @..api_idx_0008_2.l2    ; 0x6428
    inc word [bp - 0x0002]           ; 0x642a
    mov ax, word [bp - 0x0002]       ; 0x642d
    cmp ax, strict word 3            ; 0x6430
    jl short @..api_idx_0008_2.l1    ; 0x6433
    mov word [bp - 0x0006], 0        ; 0x6435
    jmp short @..api_idx_0008_2.l6   ; 0x643a
@..api_idx_0008_2.l4:
    mov ax, 0x2c                     ; 0x643c
    imul word [bp - 0x0006]          ; 0x643f
    mov si, ax                       ; 0x6442
    mov ax, word [bp + 0x4]          ; 0x6444
    shl ax, 1                        ; 0x6447
    mov bx, ax                       ; 0x6449
    mov bx, word [bx - 0x7b7e]       ; 0x644b
    cmp byte [bx + si + 0x22], 3     ; 0x644f
    jae short @..api_idx_0008_2.l5   ; 0x6453
    mov ax, word [bp - 0x0006]       ; 0x6455
    ret                              ; 0x6458
@..api_idx_0008_2.l5:
    inc word [bp - 0x0006]           ; 0x6459
@..api_idx_0008_2.l6:
    mov ax, word [bp + 0x4]          ; 0x645c
    shl ax, 1                        ; 0x645f
    mov bx, ax                       ; 0x6461
    mov bx, word [bx - 0x7b7e]       ; 0x6463
    mov al, byte [bx + 0x1a1]        ; 0x6467
    sub ah, ah                       ; 0x646b
    cmp ax, word [bp - 0x0006]       ; 0x646d
    jg short @..api_idx_0008_2.l4    ; 0x6470
    mov ax, word [bp + 0x6]          ; 0x6472
    ret                              ; 0x6475
