api_idx_001e:
    mov ax, 0xffe2                   ; 0x529a
    call ds_aztec_csav               ; 0x529d
    mov word [bp - 0x0004], 0x14a    ; 0x52a0
    mov ax, word [bss_8f1c]          ; 0x52a5
    mov dx, word [bss_8f1e]          ; 0x52a8
    push ax                          ; 0x52ac
    push dx                          ; 0x52ad
    mov ax, word [bp - 0x0004]       ; 0x52ae
    cwd                              ; 0x52b1
    mov cx, ax                       ; 0x52b2
    mov bx, dx                       ; 0x52b4
    pop dx                           ; 0x52b6
    pop ax                           ; 0x52b7
    sub ax, cx                       ; 0x52b8
    sbb dx, bx                       ; 0x52ba
    mov cx, 0x5a0                    ; 0x52bc
    mov bx, 0                        ; 0x52bf
    call ds_aztec_lrm                ; 0x52c2
    mov word [bp - 0x0006], ax       ; 0x52c5
    cmp ax, strict word 0            ; 0x52c8
    jl short @..api_idx_001e.l1      ; 0x52cb
    cmp ax, 0x36c                    ; 0x52cd
    jl short @..api_idx_001e.l2      ; 0x52d0
@..api_idx_001e.l1:
    ret                              ; 0x52d2
@..api_idx_001e.l2:
    mov cx, 3                        ; 0x52d3
    cwd                              ; 0x52d6
    idiv cx                          ; 0x52d7
    mov word [bp - 0x0008], ax       ; 0x52d9
    mov word [bp - 0x0002], 0        ; 0x52dc
@..api_idx_001e.l3:
    mov ax, word [bp - 0x0002]       ; 0x52e1
    shl ax, 1                        ; 0x52e4
    mov bx, ax                       ; 0x52e6
    add bx, bp                       ; 0x52e8
    mov word [bx - 0x0014], 0xff01   ; 0x52ea
    inc word [bp - 0x0002]           ; 0x52ef
    mov ax, word [bp - 0x0002]       ; 0x52f2
    cmp ax, strict word 4            ; 0x52f5
    jl short @..api_idx_001e.l3      ; 0x52f8
    cmp word [bp - 0x0008], byte 0x68 ; 0x52fa
    jg short @..api_idx_001e.l4      ; 0x52fe
    mov ax, 0x58                     ; 0x5300
    sub ax, word [bp - 0x0008]       ; 0x5303
    mov word [bp - 0x0012], ax       ; 0x5306
@..api_idx_001e.l4:
    cmp word [bp - 0x0008], byte 0x3a ; 0x5309
    jl short @..api_idx_001e.l5      ; 0x530d
    cmp word [bp - 0x0008], strict word 0xfa ; 0x530f
    jg short @..api_idx_001e.l5      ; 0x5314
    mov ax, 0xb0                     ; 0x5316
    mov cx, word [bp - 0x0008]       ; 0x5319
    add cx, byte 0xc6                ; 0x531c
    sub ax, cx                       ; 0x531f
    mov word [bp - 0x0014], ax       ; 0x5321
@..api_idx_001e.l5:
    cmp word [bp - 0x0008], strict word 0xcc ; 0x5324
    jl short @..api_idx_001e.l6      ; 0x5329
    cmp word [bp - 0x0008], strict word 0x124 ; 0x532b
    jg short @..api_idx_001e.l6      ; 0x5330
    mov ax, 0xb0                     ; 0x5332
    mov cx, word [bp - 0x0008]       ; 0x5335
    add cx, strict word 0xff34       ; 0x5338
    sub ax, cx                       ; 0x533c
    mov word [bp - 0x000e], ax       ; 0x533e
@..api_idx_001e.l6:
    mov ax, word [bss_82ee]          ; 0x5341
    shl ax, 1                        ; 0x5344
    mov bx, ax                       ; 0x5346
    add bx, bp                       ; 0x5348
    cmp word [bx - 0x0014], strict word 0xff01 ; 0x534a
    jne short @..api_idx_001e.l7     ; 0x534f
    ret                              ; 0x5351
@..api_idx_001e.l7:
    cmp word [bp - 0x0006], strict word 0x10e ; 0x5352
    jge short @..api_idx_001e.l8     ; 0x5357
    mov ax, word [bp - 0x0006]       ; 0x5359
    mov cx, 0xa                      ; 0x535c
    cwd                              ; 0x535f
    idiv cx                          ; 0x5360
    add ax, strict word 5            ; 0x5362
    mov word [bp - 0x000c], ax       ; 0x5365
    jmp short @..api_idx_001e.l12    ; 0x5368
@..api_idx_001e.l8:
    mov ax, word [bp - 0x0006]       ; 0x536a
    cmp ax, 0x276                    ; 0x536d
    jl short @..api_idx_001e.l9      ; 0x5370
    add ax, 0xfd8a                   ; 0x5372
    mov cx, 9                        ; 0x5375
    cwd                              ; 0x5378
    idiv cx                          ; 0x5379
    mov cx, ax                       ; 0x537b
    mov ax, 0x20                     ; 0x537d
    sub ax, cx                       ; 0x5380
    mov word [bp - 0x000c], ax       ; 0x5382
    jmp short @..api_idx_001e.l12    ; 0x5385
@..api_idx_001e.l9:
    mov ax, word [bp - 0x0006]       ; 0x5387
    add ax, 0xfef2                   ; 0x538a
    mov cx, 0xb4                     ; 0x538d
    cwd                              ; 0x5390
    idiv cx                          ; 0x5391
    mov ax, dx                       ; 0x5393
    mov cx, 0x24                     ; 0x5395
    cwd                              ; 0x5398
    idiv cx                          ; 0x5399
    mov word [bp - 0x000a], ax       ; 0x539b
    mov ax, word [bp - 0x0006]       ; 0x539e
    add ax, 0xfef2                   ; 0x53a1
    mov cx, 0xb4                     ; 0x53a4
    cwd                              ; 0x53a7
    idiv cx                          ; 0x53a8
    test ax, ax                      ; 0x53aa
    je short @..api_idx_001e.l10     ; 0x53ac
    mov ax, 0x24                     ; 0x53ae
    sub ax, word [bp - 0x000a]       ; 0x53b1
    jmp short @..api_idx_001e.l11    ; 0x53b4
@..api_idx_001e.l10:
    mov ax, word [bp - 0x000a]       ; 0x53b6
    add ax, strict word 0x20         ; 0x53b9
@..api_idx_001e.l11:
    mov word [bp - 0x000c], ax       ; 0x53bc
@..api_idx_001e.l12:
    mov byte [bp - 0x001e], 6        ; 0x53bf
    mov byte [bp - 0x001d], 0        ; 0x53c3
    mov ax, 0                        ; 0x53c7
    push ax                          ; 0x53ca
    push ax                          ; 0x53cb
    lea ax, word [bp - 0x001e]       ; 0x53cc
    push ax                          ; 0x53cf
    mov ax, 0                        ; 0x53d0
    push ax                          ; 0x53d3
    mov ax, 0x90                     ; 0x53d4
    push ax                          ; 0x53d7
    mov ax, 0x20                     ; 0x53d8
    push ax                          ; 0x53db
    mov ax, 0xf8                     ; 0x53dc
    push ax                          ; 0x53df
    mov ax, 0x48                     ; 0x53e0
    push ax                          ; 0x53e3
    mov ax, 0x46                     ; 0x53e4
    sub ax, word [bp - 0x000c]       ; 0x53e7
    push ax                          ; 0x53ea
    mov ax, word [bx - 0x0014]       ; 0x53eb
    add ax, strict word 0x48         ; 0x53ee
    push ax                          ; 0x53f1
    mov ax, 6                        ; 0x53f2
    push ax                          ; 0x53f5
    call ds_loc_4218                 ; 0x53f6
    add sp, byte 0x16                ; 0x53f9
    ret                              ; 0x53fc
