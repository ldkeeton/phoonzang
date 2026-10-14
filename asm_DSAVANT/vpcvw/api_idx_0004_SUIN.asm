; auto-generated
api_idx_0004_SUIN:
    mov ax, 0xfffc                   ; 0x297e
    call aztec_csav                  ; 0x2981
    mov word [bp - 0x0004], 0        ; 0x2984
    mov word [bp - 0x0002], 0        ; 0x2989
loc_298e:
    mov ax, 6                        ; 0x298e
    imul word [bp - 0x0002]          ; 0x2991
    mov bx, ax                       ; 0x2994
    mov al, byte [bx + 0x620]        ; 0x2996
    sub ah, ah                       ; 0x299a
    cmp ax, word [bp + 0x6]          ; 0x299c
    jne short loc_29e0               ; 0x299f
    push word [bp - 0x0002]          ; 0x29a1
    mov ax, 0x248                    ; 0x29a4
    imul word [bp + 0x4]             ; 0x29a7
    add ax, 0x5e12                   ; 0x29aa
    push ax                          ; 0x29ad
    call ds_leaf_loc_KIMU            ; 0x29ae
    add sp, byte 4                   ; 0x29b1
    test ax, ax                      ; 0x29b4
    je short loc_29e0                ; 0x29b6
    mov ax, 0x14                     ; 0x29b8
    imul word [bp - 0x0004]          ; 0x29bb
    add ax, 0xe38                    ; 0x29be
    push ax                          ; 0x29c1
    mov ax, word [bp - 0x0002]       ; 0x29c2
    add ax, 0xfa0                    ; 0x29c5
    push ax                          ; 0x29c8
    call ds_app_mem_VKHV             ; 0x29c9
    add sp, byte 4                   ; 0x29cc
    mov ax, word [bp - 0x0002]       ; 0x29cf
    mov cx, word [bp - 0x0004]       ; 0x29d2
    shl cx, 1                        ; 0x29d5
    mov bx, cx                       ; 0x29d7
    mov word [bx - 0x6aee], ax       ; 0x29d9
    inc word [bp - 0x0004]           ; 0x29dd
loc_29e0:
    inc word [bp - 0x0002]           ; 0x29e0
    mov ax, word [bp - 0x0002]       ; 0x29e3
    cmp ax, strict word 0x66         ; 0x29e6
    jl short loc_298e                ; 0x29e9
    mov ax, word [bp - 0x0004]       ; 0x29eb
    ret                              ; 0x29ee
