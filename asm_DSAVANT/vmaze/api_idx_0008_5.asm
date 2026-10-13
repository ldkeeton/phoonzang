; auto-generated
api_idx_0008_5:
    mov ax, 0xfff8                   ; 0xa5ba
    call aztec_csav                  ; 0xa5bd
    mov word [bp - 0x0006], 0        ; 0xa5c0
@..api_idx_0008_5.l1:
    mov ax, word [bp - 0x0006]       ; 0xa5c5
    cmp ax, word [bp + 0x4]          ; 0xa5c8
    jne short @..api_idx_0008_5.l2   ; 0xa5cb
    jmp near @..api_idx_0008_5.l16   ; 0xa5cd
@..api_idx_0008_5.l2:
    mov cx, 0x26                     ; 0xa5d0
    imul cx                          ; 0xa5d3
    mov bx, ax                       ; 0xa5d5
    cmp byte [bx - 0x7b00], 0        ; 0xa5d7
    jg short @..api_idx_0008_5.l3    ; 0xa5dc
    jmp near @..api_idx_0008_5.l16   ; 0xa5de
@..api_idx_0008_5.l3:
    mov ax, 0x16                     ; 0xa5e1
    imul word [bp + 0x4]             ; 0xa5e4
    add ax, word [bp - 0x0006]       ; 0xa5e7
    mov bx, ax                       ; 0xa5ea
    cmp byte [bx - 0x63be], 0        ; 0xa5ec
    je short @..api_idx_0008_5.l4    ; 0xa5f1
    jmp near @..api_idx_0008_5.l16   ; 0xa5f3
@..api_idx_0008_5.l4:
    mov ax, word [bp + 0x4]          ; 0xa5f6
    imul cx                          ; 0xa5f9
    mov bx, ax                       ; 0xa5fb
    mov al, byte [bx - 0x7b14]       ; 0xa5fd
    push ax                          ; 0xa601
    mov ax, word [bp - 0x0006]       ; 0xa602
    imul cx                          ; 0xa605
    mov bx, ax                       ; 0xa607
    mov cl, byte [bx - 0x7b14]       ; 0xa609
    pop ax                           ; 0xa60d
    cmp al, cl                       ; 0xa60e
    je short @..api_idx_0008_5.l5    ; 0xa610
    jmp near @..api_idx_0008_5.l16   ; 0xa612
@..api_idx_0008_5.l5:
    mov ax, word [bp - 0x0006]       ; 0xa615
    cmp ax, word [bp + 0x6]          ; 0xa618
    je short @..api_idx_0008_5.l8    ; 0xa61b
    mov ax, 0x26                     ; 0xa61d
    imul word [bp + 0x4]             ; 0xa620
    mov bx, ax                       ; 0xa623
    mov al, byte [bx - 0x7b13]       ; 0xa625
    sub ah, ah                       ; 0xa629
    push ax                          ; 0xa62b
    call ds_app_09f0                 ; 0xa62c
    pop cx                           ; 0xa62f
    push ax                          ; 0xa630
    mov ax, 0x26                     ; 0xa631
    imul word [bp - 0x0006]          ; 0xa634
    mov bx, ax                       ; 0xa637
    mov al, byte [bx - 0x7b13]       ; 0xa639
    sub ah, ah                       ; 0xa63d
    push ax                          ; 0xa63f
    call ds_app_09f0                 ; 0xa640
    pop cx                           ; 0xa643
    mov cx, ax                       ; 0xa644
    pop ax                           ; 0xa646
    cmp ax, cx                       ; 0xa647
    je short @..api_idx_0008_5.l6    ; 0xa649
    jmp near @..api_idx_0008_5.l16   ; 0xa64b
@..api_idx_0008_5.l6:
    mov ax, 0x26                     ; 0xa64e
    imul word [bp - 0x0006]          ; 0xa651
    mov bx, ax                       ; 0xa654
    mov al, byte [bx - 0x7b16]       ; 0xa656
    cmp al, 3                        ; 0xa65a
    je short @..api_idx_0008_5.l8    ; 0xa65c
    cmp byte [bx - 0x7b16], 0        ; 0xa65e
    je short @..api_idx_0008_5.l8    ; 0xa663
    mov ax, 0x26                     ; 0xa665
    imul word [bp + 0x4]             ; 0xa668
    mov bx, ax                       ; 0xa66b
    cmp byte [bx - 0x7b16], 6        ; 0xa66d
    je short @..api_idx_0008_5.l7    ; 0xa672
    jmp near @..api_idx_0008_5.l16   ; 0xa674
@..api_idx_0008_5.l7:
    mov ax, 0x26                     ; 0xa677
    imul word [bp - 0x0006]          ; 0xa67a
    mov bx, ax                       ; 0xa67d
    mov al, byte [bx - 0x7b16]       ; 0xa67f
    cmp al, 1                        ; 0xa683
    jne short @..api_idx_0008_5.l8   ; 0xa685
    jmp near @..api_idx_0008_5.l16   ; 0xa687
@..api_idx_0008_5.l8:
    mov ax, 0x26                     ; 0xa68a
    imul word [bp + 0x4]             ; 0xa68d
    mov bx, ax                       ; 0xa690
    mov al, byte [bx - 0x7b18]       ; 0xa692
    sub ah, ah                       ; 0xa696
    mov cx, 0xc                      ; 0xa698
    imul cx                          ; 0xa69b
    push ax                          ; 0xa69d
    mov ax, 0x26                     ; 0xa69e
    imul word [bp - 0x0006]          ; 0xa6a1
    mov bx, ax                       ; 0xa6a4
    mov al, byte [bx - 0x7b18]       ; 0xa6a6
    sub ah, ah                       ; 0xa6aa
    mov cx, ax                       ; 0xa6ac
    pop ax                           ; 0xa6ae
    add ax, cx                       ; 0xa6af
    mov bx, ax                       ; 0xa6b1
    mov al, byte [bx - 0x7622]       ; 0xa6b3
    cbw                              ; 0xa6b7
    mov word [bp - 0x0008], ax       ; 0xa6b8
    mov ax, 0xa                      ; 0xa6bb
    push ax                          ; 0xa6be
    call ds_app_09f0                 ; 0xa6bf
    pop cx                           ; 0xa6c2
    mov cx, ax                       ; 0xa6c3
    add ax, strict word 0x19         ; 0xa6c5
    mov cx, ax                       ; 0xa6c8
    mov ax, word [bp - 0x0008]       ; 0xa6ca
    cmp cx, ax                       ; 0xa6cd
    jg short @..api_idx_0008_5.l10   ; 0xa6cf
    push ax                          ; 0xa6d1
    push word [bp - 0x0006]          ; 0xa6d2
    push word [bp + 0x4]             ; 0xa6d5
    call api_idx_0010_4              ; 0xa6d8
    add sp, byte 6                   ; 0xa6db
    mov ax, word [bp - 0x0006]       ; 0xa6de
    cmp ax, word [bp + 0x6]          ; 0xa6e1
    jne short @..api_idx_0008_5.l9   ; 0xa6e4
    push word [bp + 0x4]             ; 0xa6e6
    call api_idx_003a                ; 0xa6e9
    pop cx                           ; 0xa6ec
@..api_idx_0008_5.l9:
    jmp near @..api_idx_0008_5.l16   ; 0xa6ed
@..api_idx_0008_5.l10:
    mov ax, 0xa                      ; 0xa6f0
    push ax                          ; 0xa6f3
    call ds_app_09f0                 ; 0xa6f4
    pop cx                           ; 0xa6f7
    mov cx, ax                       ; 0xa6f8
    mov ax, 0x26                     ; 0xa6fa
    imul word [bp + 0x4]             ; 0xa6fd
    mov bx, ax                       ; 0xa700
    mov al, byte [bx - 0x7b00]       ; 0xa702
    cbw                              ; 0xa706
    push ax                          ; 0xa707
    mov ax, 0x26                     ; 0xa708
    imul word [bp - 0x0006]          ; 0xa70b
    mov bx, ax                       ; 0xa70e
    mov al, byte [bx - 0x7b00]       ; 0xa710
    cbw                              ; 0xa714
    mov dx, ax                       ; 0xa715
    pop ax                           ; 0xa717
    sub ax, dx                       ; 0xa718
    add ax, strict word 0xffdd       ; 0xa71a
    sub ax, cx                       ; 0xa71d
    cmp ax, word [bp - 0x0008]       ; 0xa71f
    jge short @..api_idx_0008_5.l11  ; 0xa722
    jmp near @..api_idx_0008_5.l15   ; 0xa724
@..api_idx_0008_5.l11:
    mov ax, word [bp - 0x0006]       ; 0xa727
    cmp ax, word [bp + 0x6]          ; 0xa72a
    je short @..api_idx_0008_5.l12   ; 0xa72d
    mov ax, 3                        ; 0xa72f
    push ax                          ; 0xa732
    call ds_app_09f0                 ; 0xa733
    pop cx                           ; 0xa736
    test ax, ax                      ; 0xa737
    je short @..api_idx_0008_5.l14   ; 0xa739
    mov ax, 0x26                     ; 0xa73b
    imul word [bp + 0x4]             ; 0xa73e
    mov bx, ax                       ; 0xa741
    mov al, byte [bx - 0x7b00]       ; 0xa743
    cbw                              ; 0xa747
    push ax                          ; 0xa748
    mov cx, 2                        ; 0xa749
    cwd                              ; 0xa74c
    idiv cx                          ; 0xa74d
    mov cx, ax                       ; 0xa74f
    pop ax                           ; 0xa751
    cmp ax, cx                       ; 0xa752
    jle short @..api_idx_0008_5.l14  ; 0xa754
@..api_idx_0008_5.l12:
    push word [bp - 0x0006]          ; 0xa756
    push word [bp + 0x4]             ; 0xa759
    call api_idx_0012_4              ; 0xa75c
    add sp, byte 4                   ; 0xa75f
    mov word [bp - 0x0002], ax       ; 0xa762
    mov ax, word [bp - 0x0006]       ; 0xa765
    cmp ax, word [bp + 0x6]          ; 0xa768
    jne short @..api_idx_0008_5.l13  ; 0xa76b
    cmp word [bp - 0x0002], byte 1   ; 0xa76d
    jne short @..api_idx_0008_5.l13  ; 0xa771
    mov ax, 3                        ; 0xa773
    push ax                          ; 0xa776
    call ds_app_09f0                 ; 0xa777
    pop cx                           ; 0xa77a
    test ax, ax                      ; 0xa77b
    jne short @..api_idx_0008_5.l13  ; 0xa77d
    mov ax, 0x26                     ; 0xa77f
    imul word [bp + 0x4]             ; 0xa782
    mov bx, ax                       ; 0xa785
    mov byte [bx - 0x7b16], 0        ; 0xa787
    jmp short @..api_idx_0008_5.l14  ; 0xa78c
@..api_idx_0008_5.l13:
    cmp word [bp - 0x0002], byte 0xff ; 0xa78e
    jne short @..api_idx_0008_5.l14  ; 0xa792
    ret                              ; 0xa794
@..api_idx_0008_5.l14:
    jmp short @..api_idx_0008_5.l16  ; 0xa795
@..api_idx_0008_5.l15:
    push word [bp - 0x0006]          ; 0xa797
    push word [bp + 0x4]             ; 0xa79a
    call loc_a215                    ; 0xa79d
    add sp, byte 4                   ; 0xa7a0
@..api_idx_0008_5.l16:
    inc word [bp - 0x0006]           ; 0xa7a3
    mov ax, word [bp - 0x0006]       ; 0xa7a6
    cmp ax, strict word 0x16         ; 0xa7a9
    jge short @..api_idx_0008_5.l17  ; 0xa7ac
    jmp near @..api_idx_0008_5.l1    ; 0xa7ae
@..api_idx_0008_5.l17:
    ret                              ; 0xa7b1
