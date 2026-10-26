; auto-generated
api_idx_0004_MIIS:
    mov ax, 0xfffc                   ; 0x6374
    call aztec_csav                  ; 0x6377
    mov ax, word [bp + 4]            ; 0x637a
    push ax                          ; 0x637d
    cmp ax, strict word 0            ; 0x637e
    pop ax                           ; 0x6381
    jle short .forward1              ; 0x6382
    dec ax                           ; 0x6384
.forward1:
    mov word [bp - 4], ax            ; 0x6385
    mov word [bp - 2], 0             ; 0x6388
.back1:
    mov ax, 0x2c                     ; 0x638d
    imul word [bp - 4]               ; 0x6390
    mov si, ax                       ; 0x6393
    mov bx, word [party_char]        ; 0x6395
    cmp byte [bx + si + member_rec.item_state], 3 ; 0x6399
    jae short .forward2              ; 0x639d
    cmp byte [bx + si + 0x2b], 0     ; 0x639f
    jne short .forward2              ; 0x63a3
    mov ax, word [bp - 4]            ; 0x63a5
    ret                              ; 0x63a8
.forward2:
    mov ax, word [party_char_count]  ; 0x63a9
    dec ax                           ; 0x63ac
    cmp ax, word [bp + 4]            ; 0x63ad
    jle short .forward3              ; 0x63b0
    mov ax, word [bp + 4]            ; 0x63b2
    inc ax                           ; 0x63b5
    jmp short .forward4              ; 0x63b6
.forward3:
    mov ax, word [bp + 4]            ; 0x63b8
.forward4:
    mov word [bp - 4], ax            ; 0x63bb
    inc word [bp - 2]                ; 0x63be
    mov ax, word [bp - 2]            ; 0x63c1
    cmp ax, strict word 2            ; 0x63c4
    jl short .back1                  ; 0x63c7
    mov ax, word [bp + 4]            ; 0x63c9
    ret                              ; 0x63cc
