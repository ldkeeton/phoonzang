api_idx_0008_4:
    mov ax, 0xfff8                   ; 0x88b6
    call ds_dispatch_f40b            ; 0x88b9
    push word [bp + 0xe]             ; 0x88bc
    push word [bp + 0xc]             ; 0x88bf
    call ds_dispatch_e823            ; 0x88c2
    add sp, byte 4                   ; 0x88c5
    push word [bp + 0x4]             ; 0x88c8
    call ds_dispatch_fa90            ; 0x88cb
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
    call ds_dispatch_ea50            ; 0x88e8
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
    call ds_dispatch_e901            ; 0x8910
    add sp, byte 0x0a                ; 0x8913
    cmp word [bp - 0x0006], byte 0   ; 0x8916
    je short @..api_idx_0008_4.l4    ; 0x891a
    push word [bp + 0x8]             ; 0x891c
    push word [bp + 0x6]             ; 0x891f
    call ds_dispatch_e809            ; 0x8922
    add sp, byte 4                   ; 0x8925
    mov ax, 0                        ; 0x8928
    push ax                          ; 0x892b
    mov ax, 3                        ; 0x892c
    push ax                          ; 0x892f
    call ds_dispatch_e830            ; 0x8930
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
    call ds_dispatch_e8da            ; 0x894a
    add sp, byte 8                   ; 0x894d
    mov ax, word [bp - 0x0006]       ; 0x8950
    inc ax                           ; 0x8953
    mov cx, data_0002                ; 0x8954
    cwd                              ; 0x8957
    idiv cx                          ; 0x8958
    mov word [bp - 0x0006], dx       ; 0x895a
    mov word [bp - 0x0008], 0xa      ; 0x895d
    jmp short @..api_idx_0008_4.l6   ; 0x8962
@..api_idx_0008_4.l5:
    mov ax, 0xa                      ; 0x8964
    push ax                          ; 0x8967
    call ds_dispatch_e489            ; 0x8968
    pop cx                           ; 0x896b
    dec word [bp - 0x0008]           ; 0x896c
@..api_idx_0008_4.l6:
    jmp near @..api_idx_0008_4.l2    ; 0x896f
@..api_idx_0008_4.l7:
    mov ax, 1                        ; 0x8972
    push ax                          ; 0x8975
    call ds_dispatch_eb32            ; 0x8976
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
    call ds_dispatch_e901            ; 0x8996
    add sp, byte 0x0a                ; 0x8999
    mov ax, word [bp + 0x8]          ; 0x899c
    add ax, strict word 5            ; 0x899f
    push ax                          ; 0x89a2
    mov ax, word [bp + 0x6]          ; 0x89a3
    add ax, strict word 5            ; 0x89a6
    push ax                          ; 0x89a9
    push word [bp + 0x8]             ; 0x89aa
    push word [bp + 0x6]             ; 0x89ad
    call ds_dispatch_e8da            ; 0x89b0
    add sp, byte 8                   ; 0x89b3
    cmp word [bp - 0x0002], byte 0x0d ; 0x89b6
    jne short @..api_idx_0008_4.l8   ; 0x89ba
    mov bx, word [bp + 0x4]          ; 0x89bc
    mov si, word [bp - 0x0004]       ; 0x89bf
    mov byte [bx + si], 0            ; 0x89c2
    call ds_dispatch_ec17            ; 0x89c5
    ret                              ; 0x89c8
