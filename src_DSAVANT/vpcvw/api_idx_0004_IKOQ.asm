; auto-generated
api_idx_0004_IKOQ:
    mov ax, 0xfffc                   ; 0x82da
    call aztec_csav                  ; 0x82dd
    mov ax, word [dseg_0038]         ; 0x82e0
    mov word [bp - 4], ax            ; 0x82e3
    mov word [bp - 2], 0             ; 0x82e6
    jmp short @..api_idx_0004_IKOQ.l5 ; 0x82eb
@..api_idx_0004_IKOQ.l1:
    mov bx, word [bp + 6]            ; 0x82ed
    mov si, word [bp - 2]            ; 0x82f0
    cmp byte [bx + si], 0x31         ; 0x82f3
    je short @..api_idx_0004_IKOQ.l2 ; 0x82f6
    mov ax, 0x248                    ; 0x82f8
    imul word [bp + 4]               ; 0x82fb
    add ax, word [bp - 4]            ; 0x82fe
    add ax, si                       ; 0x8301
    mov bx, ax                       ; 0x8303
    cmp byte [bx + party_records + pc_rec.flag], 0 ; 0x8305
    jbe short @..api_idx_0004_IKOQ.l3 ; 0x830a
@..api_idx_0004_IKOQ.l2:
    mov ax, 1                        ; 0x830c
    jmp short @..api_idx_0004_IKOQ.l4 ; 0x830f
@..api_idx_0004_IKOQ.l3:
    mov ax, 0                        ; 0x8311
@..api_idx_0004_IKOQ.l4:
    add si, word [bp - 4]            ; 0x8314
    mov cx, si                       ; 0x8317
    shl cx, 1                        ; 0x8319
    mov bx, cx                       ; 0x831b
    mov word [bx + bss_9698], ax     ; 0x831d
    inc word [bp - 2]                ; 0x8321
@..api_idx_0004_IKOQ.l5:
    push word [bp + 6]               ; 0x8324
    call aztec_strlen                ; 0x8327
    pop cx                           ; 0x832a
    cmp ax, word [bp - 2]            ; 0x832b
    jg short @..api_idx_0004_IKOQ.l1 ; 0x832e
    mov ax, word [dseg_003c]         ; 0x8330
    mov word [bp - 4], ax            ; 0x8333
    mov word [bp - 2], 0             ; 0x8336
    jmp short @..api_idx_0004_IKOQ.l10 ; 0x833b
@..api_idx_0004_IKOQ.l6:
    mov bx, word [bp + 8]            ; 0x833d
    mov si, word [bp - 2]            ; 0x8340
    cmp byte [bx + si], 0x31         ; 0x8343
    je short @..api_idx_0004_IKOQ.l7 ; 0x8346
    mov ax, 0x248                    ; 0x8348
    imul word [bp + 4]               ; 0x834b
    add ax, word [bp - 4]            ; 0x834e
    add ax, si                       ; 0x8351
    mov bx, ax                       ; 0x8353
    cmp byte [bx + party_records + pc_rec.flag], 0 ; 0x8355
    jbe short @..api_idx_0004_IKOQ.l8 ; 0x835a
@..api_idx_0004_IKOQ.l7:
    mov ax, 1                        ; 0x835c
    jmp short @..api_idx_0004_IKOQ.l9 ; 0x835f
@..api_idx_0004_IKOQ.l8:
    mov ax, 0                        ; 0x8361
@..api_idx_0004_IKOQ.l9:
    add si, word [bp - 4]            ; 0x8364
    mov cx, si                       ; 0x8367
    shl cx, 1                        ; 0x8369
    mov bx, cx                       ; 0x836b
    mov word [bx + bss_9698], ax     ; 0x836d
    inc word [bp - 2]                ; 0x8371
@..api_idx_0004_IKOQ.l10:
    push word [bp + 8]               ; 0x8374
    call aztec_strlen                ; 0x8377
    pop cx                           ; 0x837a
    cmp ax, word [bp - 2]            ; 0x837b
    jg short @..api_idx_0004_IKOQ.l6 ; 0x837e
    mov ax, word [index_range2_first] ; 0x8380
    mov word [bp - 4], ax            ; 0x8383
    mov word [bp - 2], 0             ; 0x8386
    jmp short @..api_idx_0004_IKOQ.l15 ; 0x838b
@..api_idx_0004_IKOQ.l11:
    mov bx, word [bp + 0xa]          ; 0x838d
    mov si, word [bp - 2]            ; 0x8390
    cmp byte [bx + si], 0x31         ; 0x8393
    je short @..api_idx_0004_IKOQ.l12 ; 0x8396
    mov ax, 0x248                    ; 0x8398
    imul word [bp + 4]               ; 0x839b
    add ax, word [bp - 4]            ; 0x839e
    add ax, si                       ; 0x83a1
    mov bx, ax                       ; 0x83a3
    cmp byte [bx + party_records + pc_rec.flag], 0 ; 0x83a5
    jbe short @..api_idx_0004_IKOQ.l13 ; 0x83aa
@..api_idx_0004_IKOQ.l12:
    mov ax, 1                        ; 0x83ac
    jmp short @..api_idx_0004_IKOQ.l14 ; 0x83af
@..api_idx_0004_IKOQ.l13:
    mov ax, 0                        ; 0x83b1
@..api_idx_0004_IKOQ.l14:
    add si, word [bp - 4]            ; 0x83b4
    mov cx, si                       ; 0x83b7
    shl cx, 1                        ; 0x83b9
    mov bx, cx                       ; 0x83bb
    mov word [bx + bss_9698], ax     ; 0x83bd
    inc word [bp - 2]                ; 0x83c1
@..api_idx_0004_IKOQ.l15:
    push word [bp + 0xa]             ; 0x83c4
    call aztec_strlen                ; 0x83c7
    pop cx                           ; 0x83ca
    cmp ax, word [bp - 2]            ; 0x83cb
    jg short @..api_idx_0004_IKOQ.l11 ; 0x83ce
    mov ax, word [dseg_0044]         ; 0x83d0
    mov word [bp - 4], ax            ; 0x83d3
    mov word [bp - 2], 0             ; 0x83d6
    jmp short @..api_idx_0004_IKOQ.l20 ; 0x83db
@..api_idx_0004_IKOQ.l16:
    mov bx, word [bp + 0xc]          ; 0x83dd
    mov si, word [bp - 2]            ; 0x83e0
    cmp byte [bx + si], 0x31         ; 0x83e3
    je short @..api_idx_0004_IKOQ.l17 ; 0x83e6
    mov ax, 0x248                    ; 0x83e8
    imul word [bp + 4]               ; 0x83eb
    add ax, word [bp - 4]            ; 0x83ee
    add ax, si                       ; 0x83f1
    mov bx, ax                       ; 0x83f3
    cmp byte [bx + party_records + pc_rec.flag], 0 ; 0x83f5
    jbe short @..api_idx_0004_IKOQ.l18 ; 0x83fa
@..api_idx_0004_IKOQ.l17:
    mov ax, 1                        ; 0x83fc
    jmp short @..api_idx_0004_IKOQ.l19 ; 0x83ff
@..api_idx_0004_IKOQ.l18:
    mov ax, 0                        ; 0x8401
@..api_idx_0004_IKOQ.l19:
    add si, word [bp - 4]            ; 0x8404
    mov cx, si                       ; 0x8407
    shl cx, 1                        ; 0x8409
    mov bx, cx                       ; 0x840b
    mov word [bx + bss_9698], ax     ; 0x840d
    inc word [bp - 2]                ; 0x8411
@..api_idx_0004_IKOQ.l20:
    push word [bp + 0xc]             ; 0x8414
    call aztec_strlen                ; 0x8417
    pop cx                           ; 0x841a
    cmp ax, word [bp - 2]            ; 0x841b
    jg short @..api_idx_0004_IKOQ.l16 ; 0x841e
    ret                              ; 0x8420
