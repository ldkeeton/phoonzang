; auto-generated
api_idx_0008_4:
    mov ax, 0xfff8                   ; 0x88b6
    call aztec_csav                  ; 0x88b9
    push word [bp + 0xe]             ; 0x88bc
    push word [bp + 0xc]             ; 0x88bf
    call thunk_3                     ; 0x88c2
    add sp, byte 4                   ; 0x88c5
    push word [bp + 0x4]             ; 0x88c8
    call aztec_strlen                ; 0x88cb
    pop cx                           ; 0x88ce
    mov word [bp - 0x0004], ax       ; 0x88cf
    mov cx, 6                        ; 0x88d2
    imul cx                          ; 0x88d5
    add word [bp + 0x6], ax          ; 0x88d7
@..api_idx_0008_4.l1:
    mov word [bp - 0x0006], 0        ; 0x88da
    mov word [bp - 0x0008], 0        ; 0x88df
@..api_idx_0008_4.l2:
    mov ax, 1                        ; 0x88e4
    push ax                          ; 0x88e7
    call dos_con_in_noecho           ; 0x88e8
    pop cx                           ; 0x88eb
    test ax, ax                      ; 0x88ec
    je short @..api_idx_0008_4.l3    ; 0x88ee
    jmp near @..api_idx_0008_4.l7    ; 0x88f0
@..api_idx_0008_4.l3:
    cmp word [bp - 0x0008], byte 0   ; 0x88f3
    jne short @..api_idx_0008_4.l5   ; 0x88f7
    push word [bp + 0xe]             ; 0x88f9
    mov ax, word [bp + 0x8]          ; 0x88fc
    add ax, strict word 5            ; 0x88ff
    push ax                          ; 0x8902
    mov ax, word [bp + 0x6]          ; 0x8903
    add ax, strict word 5            ; 0x8906
    push ax                          ; 0x8909
    push word [bp + 0x8]             ; 0x890a
    push word [bp + 0x6]             ; 0x890d
    call thunk_7                     ; 0x8910
    add sp, byte 0x0a                ; 0x8913
    cmp word [bp - 0x0006], byte 0   ; 0x8916
    je short @..api_idx_0008_4.l4    ; 0x891a
    push word [bp + 0x8]             ; 0x891c
    push word [bp + 0x6]             ; 0x891f
    call thunk                       ; 0x8922
    add sp, byte 4                   ; 0x8925
    mov ax, 0                        ; 0x8928
    push ax                          ; 0x892b
    mov ax, 3                        ; 0x892c
    push ax                          ; 0x892f
    call ds_loc_3a77                 ; 0x8930
    add sp, byte 4                   ; 0x8933
@..api_idx_0008_4.l4:
    mov ax, word [bp + 0x8]          ; 0x8936
    add ax, strict word 5            ; 0x8939
    push ax                          ; 0x893c
    mov ax, word [bp + 0x6]          ; 0x893d
    add ax, strict word 5            ; 0x8940
    push ax                          ; 0x8943
    push word [bp + 0x8]             ; 0x8944
    push word [bp + 0x6]             ; 0x8947
    call thunk_4                     ; 0x894a
    add sp, byte 8                   ; 0x894d
    mov ax, word [bp - 0x0006]       ; 0x8950
    inc ax                           ; 0x8953
    mov cx, 2                        ; 0x8954
    cwd                              ; 0x8957
    idiv cx                          ; 0x8958
    mov word [bp - 0x0006], dx       ; 0x895a
    mov word [bp - 0x0008], 0xa      ; 0x895d
    jmp short @..api_idx_0008_4.l6   ; 0x8962
@..api_idx_0008_4.l5:
    mov ax, 0xa                      ; 0x8964
    push ax                          ; 0x8967
    call ds_leaf_loc_36d0            ; 0x8968
    pop cx                           ; 0x896b
    dec word [bp - 0x0008]           ; 0x896c
@..api_idx_0008_4.l6:
    jmp near @..api_idx_0008_4.l2    ; 0x896f
@..api_idx_0008_4.l7:
    mov ax, 1                        ; 0x8972
    push ax                          ; 0x8975
    call dos_con_in_noecho_2         ; 0x8976
    pop cx                           ; 0x8979
    sub ah, ah                       ; 0x897a
    mov word [bp - 0x0002], ax       ; 0x897c
    push word [bp + 0xe]             ; 0x897f
    mov ax, word [bp + 0x8]          ; 0x8982
    add ax, strict word 5            ; 0x8985
    push ax                          ; 0x8988
    mov ax, word [bp + 0x6]          ; 0x8989
    add ax, strict word 5            ; 0x898c
    push ax                          ; 0x898f
    push word [bp + 0x8]             ; 0x8990
    push word [bp + 0x6]             ; 0x8993
    call thunk_7                     ; 0x8996
    add sp, byte 0x0a                ; 0x8999
    mov ax, word [bp + 0x8]          ; 0x899c
    add ax, strict word 5            ; 0x899f
    push ax                          ; 0x89a2
    mov ax, word [bp + 0x6]          ; 0x89a3
    add ax, strict word 5            ; 0x89a6
    push ax                          ; 0x89a9
    push word [bp + 0x8]             ; 0x89aa
    push word [bp + 0x6]             ; 0x89ad
    call thunk_4                     ; 0x89b0
    add sp, byte 8                   ; 0x89b3
    cmp word [bp - 0x0002], byte 0x0d ; 0x89b6
    jne short @..api_idx_0008_4.l8   ; 0x89ba
    mov bx, word [bp + 0x4]          ; 0x89bc
    mov si, word [bp - 0x0004]       ; 0x89bf
    mov byte [bx + si], 0            ; 0x89c2
    call bios_kbd_check              ; 0x89c5
    ret                              ; 0x89c8
@..api_idx_0008_4.l8:
    cmp word [bp - 0x0002], byte 8   ; 0x89c9
    jne short @..api_idx_0008_4.l11  ; 0x89cd
    cmp word [bp - 0x0004], byte 0   ; 0x89cf
    jle short @..api_idx_0008_4.l9   ; 0x89d3
    dec word [bp - 0x0004]           ; 0x89d5
    add word [bp + 0x6], byte 0xfa   ; 0x89d8
    jmp short @..api_idx_0008_4.l10  ; 0x89dc
@..api_idx_0008_4.l9:
    mov ax, 0                        ; 0x89de
    push ax                          ; 0x89e1
    call ds_app_0a27                 ; 0x89e2
    pop cx                           ; 0x89e5
@..api_idx_0008_4.l10:
    jmp near @..api_idx_0008_4.l15   ; 0x89e6
@..api_idx_0008_4.l11:
    mov ax, word [bp - 0x0004]       ; 0x89e9
    cmp ax, word [bp + 0xa]          ; 0x89ec
    jl short @..api_idx_0008_4.l12   ; 0x89ef
    mov ax, 0                        ; 0x89f1
    push ax                          ; 0x89f4
    call ds_app_0a27                 ; 0x89f5
    pop cx                           ; 0x89f8
    jmp near @..api_idx_0008_4.l15   ; 0x89f9
@..api_idx_0008_4.l12:
    cmp word [bp + 0x10], byte 0     ; 0x89fc
    jne short @..api_idx_0008_4.l13  ; 0x8a00
    mov ax, word [bp - 0x0002]       ; 0x8a02
    cmp ax, strict word 0x20         ; 0x8a05
    jl short @..api_idx_0008_4.l13   ; 0x8a08
    cmp ax, strict word 0x7f         ; 0x8a0a
    jle short @..api_idx_0008_4.l14  ; 0x8a0d
@..api_idx_0008_4.l13:
    cmp word [bp + 0x10], byte 1     ; 0x8a0f
    jne short @..api_idx_0008_4.l15  ; 0x8a13
    mov ax, word [bp - 0x0002]       ; 0x8a15
    cmp ax, strict word 0x30         ; 0x8a18
    jl short @..api_idx_0008_4.l15   ; 0x8a1b
    cmp ax, strict word 0x39         ; 0x8a1d
    jg short @..api_idx_0008_4.l15   ; 0x8a20
@..api_idx_0008_4.l14:
    mov al, byte [bp - 0x0002]       ; 0x8a22
    mov bx, word [bp + 0x4]          ; 0x8a25
    mov si, word [bp - 0x0004]       ; 0x8a28
    mov byte [bx + si], al           ; 0x8a2b
    inc word [bp - 0x0004]           ; 0x8a2d
    push word [bp + 0x8]             ; 0x8a30
    push word [bp + 0x6]             ; 0x8a33
    call thunk                       ; 0x8a36
    add sp, byte 4                   ; 0x8a39
    mov ax, 0                        ; 0x8a3c
    push ax                          ; 0x8a3f
    mov al, byte [bp - 0x0002]       ; 0x8a40
    sub ah, ah                       ; 0x8a43
    push ax                          ; 0x8a45
    call ds_loc_3a77                 ; 0x8a46
    add sp, byte 4                   ; 0x8a49
    mov ax, word [bp + 0x8]          ; 0x8a4c
    add ax, strict word 5            ; 0x8a4f
    push ax                          ; 0x8a52
    mov ax, word [bp + 0x6]          ; 0x8a53
    add ax, strict word 5            ; 0x8a56
    push ax                          ; 0x8a59
    push word [bp + 0x8]             ; 0x8a5a
    push word [bp + 0x6]             ; 0x8a5d
    call thunk_4                     ; 0x8a60
    add sp, byte 8                   ; 0x8a63
    add word [bp + 0x6], byte 6      ; 0x8a66
@..api_idx_0008_4.l15:
    jmp near @..api_idx_0008_4.l1    ; 0x8a6a
    db 0xc3
