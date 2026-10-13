; auto-generated
api_idx_0004_9:
    mov ax, 0xfffc                   ; 0x52ec
    call aztec_csav                  ; 0x52ef
    mov word [bp - 0x0002], 0        ; 0x52f2
@..api_idx_0004_9.l1:
    mov word [bp - 0x0004], 0        ; 0x52f7
@..api_idx_0004_9.l2:
    mov ax, 0x248                    ; 0x52fc
    imul word [bp + 0x4]             ; 0x52ff
    push ax                          ; 0x5302
    mov ax, 0x78                     ; 0x5303
    imul word [bp - 0x0002]          ; 0x5306
    mov cx, ax                       ; 0x5309
    pop ax                           ; 0x530b
    add ax, cx                       ; 0x530c
    push ax                          ; 0x530e
    mov ax, 0xc                      ; 0x530f
    imul word [bp - 0x0004]          ; 0x5312
    mov cx, ax                       ; 0x5315
    pop ax                           ; 0x5317
    add ax, cx                       ; 0x5318
    mov bx, ax                       ; 0x531a
    cmp word [bx + 0x5c34], byte 0   ; 0x531c
    jne short @..api_idx_0004_9.l3   ; 0x5321
    mov ax, word [bp - 0x0002]       ; 0x5323
    xchg al, ah                      ; 0x5326
    sub al, al                       ; 0x5328
    add ax, word [bp - 0x0004]       ; 0x532a
    ret                              ; 0x532d
@..api_idx_0004_9.l3:
    inc word [bp - 0x0004]           ; 0x532e
    mov ax, word [bp - 0x0004]       ; 0x5331
    cmp ax, strict word 0xa          ; 0x5334
    jl short @..api_idx_0004_9.l2    ; 0x5337
    inc word [bp - 0x0002]           ; 0x5339
    mov ax, word [bp - 0x0002]       ; 0x533c
    cmp ax, strict word 2            ; 0x533f
    jl short @..api_idx_0004_9.l1    ; 0x5342
    mov ax, 0xffff                   ; 0x5344
    ret                              ; 0x5347
