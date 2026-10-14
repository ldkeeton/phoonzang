; auto-generated
api_idx_000e_2:
    mov ax, 0xfff2                   ; 0x927d
    call aztec_csav                  ; 0x9280
    mov word [bp - 0x000c], 0        ; 0x9283
    mov word [bp - 0x0004], 0        ; 0x9288
@..api_idx_000e_2.l1:
    mov word [bp - 0x0002], 0        ; 0x928d
@..api_idx_000e_2.l2:
    mov ax, 6                        ; 0x9292
    imul word [bp - 0x0004]          ; 0x9295
    mov cx, word [bp - 0x0002]       ; 0x9298
    shl cx, 1                        ; 0x929b
    add ax, cx                       ; 0x929d
    mov bx, ax                       ; 0x929f
    cmp word [bx - 0x7bc6], byte 0   ; 0x92a1
    je short @..api_idx_000e_2.l3    ; 0x92a6
    inc word [bp - 0x000c]           ; 0x92a8
@..api_idx_000e_2.l3:
    inc word [bp - 0x0002]           ; 0x92ab
    mov ax, word [bp - 0x0002]       ; 0x92ae
    cmp ax, strict word 3            ; 0x92b1
    jl short @..api_idx_000e_2.l2    ; 0x92b4
    inc word [bp - 0x0004]           ; 0x92b6
    mov ax, word [bp - 0x0004]       ; 0x92b9
    cmp ax, strict word 3            ; 0x92bc
    jl short @..api_idx_000e_2.l1    ; 0x92bf
    mov ax, 0xa                      ; 0x92c1
    mov cx, word [bp - 0x000c]       ; 0x92c4
    shl cx, 1                        ; 0x92c7
    shl cx, 1                        ; 0x92c9
    sub ax, cx                       ; 0x92cb
    mov word [bp - 0x000e], ax       ; 0x92cd
    mov ax, 2                        ; 0x92d0
    push ax                          ; 0x92d3
    mov ax, word [bss_93d4]          ; 0x92d4
    mov cx, 7                        ; 0x92d7
    shl ax, cl                       ; 0x92da
    add ax, 0x91cc                   ; 0x92dc
    push ax                          ; 0x92df
    call ds_loc_3aca                 ; 0x92e0
    add sp, byte 4                   ; 0x92e3
    mov word [bp - 0x0004], ax       ; 0x92e6
    inc ax                           ; 0x92e9
    mov cx, 2                        ; 0x92ea
    cwd                              ; 0x92ed
    idiv cx                          ; 0x92ee
    mov cx, ax                       ; 0x92f0
    mov ax, 0xa0                     ; 0x92f2
    sub ax, cx                       ; 0x92f5
    mov word [bp - 0x0002], ax       ; 0x92f7
    mov ax, 0xc                      ; 0x92fa
    imul word [bss_93d4]             ; 0x92fd
    mov cx, word [bss_93d4]          ; 0x9301
    shl cx, 1                        ; 0x9305
    mov bx, cx                       ; 0x9307
    cmp word [bx - 0x6c34], byte 0   ; 0x9309
    je short @..api_idx_000e_2.l4    ; 0x930e
    mov cx, 0x92                     ; 0x9310
    jmp short @..api_idx_000e_2.l5   ; 0x9313
@..api_idx_000e_2.l4:
    mov cx, 0x97                     ; 0x9315
@..api_idx_000e_2.l5:
    add ax, cx                       ; 0x9318
    push ax                          ; 0x931a
    push word [bp - 0x0002]          ; 0x931b
    call thunk                       ; 0x931e
    add sp, byte 4                   ; 0x9321
    mov ax, 0                        ; 0x9324
    push ax                          ; 0x9327
    mov ax, word [bss_93d4]          ; 0x9328
    shl ax, 1                        ; 0x932b
    mov bx, ax                       ; 0x932d
    cmp word [bx - 0x6c34], byte 0   ; 0x932f
    je short @..api_idx_000e_2.l6    ; 0x9334
    mov ax, 0x55                     ; 0x9336
    jmp short @..api_idx_000e_2.l7   ; 0x9339
@..api_idx_000e_2.l6:
    mov ax, 1                        ; 0x933b
@..api_idx_000e_2.l7:
    push ax                          ; 0x933e
    call thunk_3                     ; 0x933f
    add sp, byte 4                   ; 0x9342
    mov ax, word [bss_93d4]          ; 0x9345
    shl ax, 1                        ; 0x9348
    mov bx, ax                       ; 0x934a
    push word [bx - 0x6c34]          ; 0x934c
    mov ax, word [bss_93d4]          ; 0x9350
    mov cx, 7                        ; 0x9353
    shl ax, cl                       ; 0x9356
    add ax, 0x91cc                   ; 0x9358
    push ax                          ; 0x935b
    call ds_string_loc_3a95          ; 0x935c
    add sp, byte 4                   ; 0x935f
    mov ax, 0                        ; 0x9362
    cmp byte [bss_598a], 2           ; 0x9365
    jne short @..api_idx_000e_2.l8   ; 0x936a
    mov ax, 1                        ; 0x936c
@..api_idx_000e_2.l8:
    mov word [bp - 0x000a], ax       ; 0x936f
    mov ax, word [bp - 0x0002]       ; 0x9372
    mov word [bp - 0x0006], ax       ; 0x9375
    jmp short @..api_idx_000e_2.l12  ; 0x9378
@..api_idx_000e_2.l9:
    mov ax, 0xc                      ; 0x937a
    imul word [bss_93d4]             ; 0x937d
    add ax, 0x9e                     ; 0x9381
    push ax                          ; 0x9384
    mov ax, word [bp - 0x0006]       ; 0x9385
    add ax, word [bp - 0x000a]       ; 0x9388
    push ax                          ; 0x938b
    mov ax, 0xc                      ; 0x938c
    imul word [bss_93d4]             ; 0x938f
    add ax, 0x92                     ; 0x9393
    push ax                          ; 0x9396
    push word [bp - 0x0006]          ; 0x9397
    call thunk_4                     ; 0x939a
    add sp, byte 8                   ; 0x939d
    call api_idx_0006_2              ; 0x93a0
    mov ax, 1                        ; 0x93a3
    push ax                          ; 0x93a6
    call dos_con_in_noecho           ; 0x93a7
    pop cx                           ; 0x93aa
    test ax, ax                      ; 0x93ab
    je short @..api_idx_000e_2.l10   ; 0x93ad
    mov ax, 1                        ; 0x93af
    push ax                          ; 0x93b2
    call dos_con_in_noecho_2         ; 0x93b3
    pop cx                           ; 0x93b6
    sub ah, ah                       ; 0x93b7
    mov word [bp - 0x0008], ax       ; 0x93b9
    cmp ax, strict word 0x20         ; 0x93bc
    jne short @..api_idx_000e_2.l10  ; 0x93bf
    call api_idx_0004_4              ; 0x93c1
@..api_idx_000e_2.l10:
    cmp word [bp - 0x000e], byte 0   ; 0x93c4
    jle short @..api_idx_000e_2.l11  ; 0x93c8
    push word [bp - 0x000e]          ; 0x93ca
    call ds_leaf_loc_36d0            ; 0x93cd
    pop cx                           ; 0x93d0
@..api_idx_000e_2.l11:
    mov ax, word [bp - 0x0006]       ; 0x93d1
    add ax, word [bp - 0x000a]       ; 0x93d4
    inc ax                           ; 0x93d7
    mov word [bp - 0x0006], ax       ; 0x93d8
@..api_idx_000e_2.l12:
    mov ax, word [bp - 0x0002]       ; 0x93db
    add ax, word [bp - 0x0004]       ; 0x93de
    cmp ax, word [bp - 0x0006]       ; 0x93e1
    jg short @..api_idx_000e_2.l9    ; 0x93e4
    ret                              ; 0x93e6
