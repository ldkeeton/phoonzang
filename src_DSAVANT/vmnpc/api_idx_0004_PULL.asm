; auto-generated
api_idx_0004_PULL:
    mov ax, 0xfffc                   ; 0x22e7
    call aztec_csav                  ; 0x22ea
    mov word [bp - 0x0002], 0        ; 0x22ed
@..api_idx_0004_PULL.l1:
    mov word [bp - 0x0004], 0        ; 0x22f2
@..api_idx_0004_PULL.l2:
    mov ax, 0x248                    ; 0x22f7
    imul word [bp + 0x4]             ; 0x22fa
    push ax                          ; 0x22fd
    mov ax, 0x78                     ; 0x22fe
    imul word [bp - 0x0002]          ; 0x2301
    mov cx, ax                       ; 0x2304
    pop ax                           ; 0x2306
    add ax, cx                       ; 0x2307
    push ax                          ; 0x2309
    mov ax, 0xc                      ; 0x230a
    imul word [bp - 0x0004]          ; 0x230d
    mov cx, ax                       ; 0x2310
    pop ax                           ; 0x2312
    add ax, cx                       ; 0x2313
    mov bx, ax                       ; 0x2315
    cmp word [bx + party_records + pc_rec.cell], byte 0 ; 0x2317
    jne short @..api_idx_0004_PULL.l3 ; 0x231c
    mov ax, word [bp - 0x0002]       ; 0x231e
    xchg al, ah                      ; 0x2321
    sub al, al                       ; 0x2323
    add ax, word [bp - 0x0004]       ; 0x2325
    ret                              ; 0x2328
@..api_idx_0004_PULL.l3:
    cmp word [bp + 0x6], byte 0      ; 0x2329
    je short @..api_idx_0004_PULL.l6 ; 0x232d
    mov al, byte [bx + party_records + pc_rec.cell + 0x7] ; 0x232f
    sub ah, ah                       ; 0x2333
    test ax, 1                       ; 0x2335
    jne short @..api_idx_0004_PULL.l4 ; 0x2338
    test ax, 0x40                    ; 0x233a
    jne short @..api_idx_0004_PULL.l4 ; 0x233d
    push word [bx + party_records + pc_rec.cell] ; 0x233f
    call loc_GMVH                    ; 0x2343
    pop cx                           ; 0x2346
    test ax, ax                      ; 0x2347
    je short @..api_idx_0004_PULL.l5 ; 0x2349
@..api_idx_0004_PULL.l4:
    jmp short @..api_idx_0004_PULL.l6 ; 0x234b
@..api_idx_0004_PULL.l5:
    mov ax, word [bp - 0x0002]       ; 0x234d
    xchg al, ah                      ; 0x2350
    sub al, al                       ; 0x2352
    add ax, word [bp - 0x0004]       ; 0x2354
    ret                              ; 0x2357
@..api_idx_0004_PULL.l6:
    inc word [bp - 0x0004]           ; 0x2358
    mov ax, word [bp - 0x0004]       ; 0x235b
    cmp ax, strict word 0xa          ; 0x235e
    jl short @..api_idx_0004_PULL.l2 ; 0x2361
    inc word [bp - 0x0002]           ; 0x2363
    mov ax, word [bp - 0x0002]       ; 0x2366
    cmp ax, strict word 2            ; 0x2369
    jl short @..api_idx_0004_PULL.l1 ; 0x236c
    mov ax, 0xffff                   ; 0x236e
    ret                              ; 0x2371
