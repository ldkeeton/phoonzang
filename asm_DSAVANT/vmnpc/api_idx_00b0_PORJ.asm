; auto-generated
api_idx_00b0_PORJ:
    mov ax, 0xff50                   ; 0xa837
    call aztec_csav                  ; 0xa83a
    push word [bp + 0x6]             ; 0xa83d
    call aztec_strlen                ; 0xa840
    pop cx                           ; 0xa843
    mov cx, 6                        ; 0xa844
    imul cx                          ; 0xa847
    mov cx, ax                       ; 0xa849
    mov ax, 0xb8                     ; 0xa84b
    sub ax, cx                       ; 0xa84e
    mov cx, 6                        ; 0xa850
    cwd                              ; 0xa853
    idiv cx                          ; 0xa854
    mov word [bp - 0x0010], ax       ; 0xa856
    mov word [bp - 0x000e], 0x1e     ; 0xa859
    push word [bp + 0x6]             ; 0xa85e
    call aztec_strlen                ; 0xa861
    pop cx                           ; 0xa864
    mov cx, 6                        ; 0xa865
    imul cx                          ; 0xa868
    add ax, strict word 0x44         ; 0xa86a
    mov word [bp - 0x000c], ax       ; 0xa86d
    mov word [bp - 0x000a], 0x44     ; 0xa870
    mov ax, 0xc                      ; 0xa875
    imul word [bss_93d4]             ; 0xa878
    add ax, 0x97                     ; 0xa87c
    push ax                          ; 0xa87f
    mov ax, 0x44                     ; 0xa880
    push ax                          ; 0xa883
    call thunk                       ; 0xa884
    add sp, byte 4                   ; 0xa887
    mov ax, 0                        ; 0xa88a
    push ax                          ; 0xa88d
    mov ax, 1                        ; 0xa88e
    push ax                          ; 0xa891
    call thunk_3                     ; 0xa892
    add sp, byte 4                   ; 0xa895
    mov ax, 0                        ; 0xa898
    push ax                          ; 0xa89b
    push word [bp + 0x6]             ; 0xa89c
    call ds_string_loc_PTIK          ; 0xa89f
    add sp, byte 4                   ; 0xa8a2
    mov ax, 3                        ; 0xa8a5
    push ax                          ; 0xa8a8
    call loc_0c96                    ; 0xa8a9
    pop cx                           ; 0xa8ac
    mov word [bp - 0x0008], 0        ; 0xa8ad
    mov bx, word [bp + 0x4]          ; 0xa8b2
    mov byte [bx], 0                 ; 0xa8b5
@..api_idx_00b0_PORJ.l1:
    push word [bp - 0x0008]          ; 0xa8b8
    mov ax, 0                        ; 0xa8bb
    push ax                          ; 0xa8be
    mov ax, 0x37                     ; 0xa8bf
    push ax                          ; 0xa8c2
    mov ax, 1                        ; 0xa8c3
    push ax                          ; 0xa8c6
    mov ax, word [bp - 0x0008]       ; 0xa8c7
    shl ax, 1                        ; 0xa8ca
    mov bx, ax                       ; 0xa8cc
    add bx, bp                       ; 0xa8ce
    push word [bx - 0x0010]          ; 0xa8d0
    mov ax, 0xc                      ; 0xa8d3
    imul word [bss_93d4]             ; 0xa8d6
    add ax, 0x97                     ; 0xa8da
    push ax                          ; 0xa8dd
    mov ax, word [bp - 0x0008]       ; 0xa8de
    shl ax, 1                        ; 0xa8e1
    mov bx, ax                       ; 0xa8e3
    add bx, bp                       ; 0xa8e5
    push word [bx - 0x000c]          ; 0xa8e7
    push word [bp + 0x4]             ; 0xa8ea
    call api_idx_0016_QVKO           ; 0xa8ed
    add sp, byte 0x10                ; 0xa8f0
    mov word [bp - 0x0002], ax       ; 0xa8f3
    cmp ax, strict word 1            ; 0xa8f6
    je short @..api_idx_00b0_PORJ.l2 ; 0xa8f9
    jmp near @..api_idx_00b0_PORJ.l7 ; 0xa8fb
@..api_idx_00b0_PORJ.l2:
    cmp word [bss_b054], byte 0x20   ; 0xa8fe
    je short @..api_idx_00b0_PORJ.l5 ; 0xa903
    mov ax, 0x20                     ; 0xa905
    push ax                          ; 0xa908
    push word [bp + 0x4]             ; 0xa909
    call strpos                      ; 0xa90c
    add sp, byte 4                   ; 0xa90f
    cmp ax, strict word 0xffff       ; 0xa912
    je short @..api_idx_00b0_PORJ.l5 ; 0xa915
    push word [bp + 0x4]             ; 0xa917
    call aztec_strlen                ; 0xa91a
    pop cx                           ; 0xa91d
    mov word [bp - 0x0004], ax       ; 0xa91e
    mov word [bp - 0x0006], ax       ; 0xa921
@..api_idx_00b0_PORJ.l3:
    mov bx, word [bp + 0x4]          ; 0xa924
    mov si, word [bp - 0x0006]       ; 0xa927
    cmp byte [bx + si - 0x0001], 0x20 ; 0xa92a
    je short @..api_idx_00b0_PORJ.l4 ; 0xa92e
    dec word [bp - 0x0006]           ; 0xa930
    jmp short @..api_idx_00b0_PORJ.l3 ; 0xa933
@..api_idx_00b0_PORJ.l4:
    mov ax, word [bp - 0x0004]       ; 0xa935
    sub ax, word [bp - 0x0006]       ; 0xa938
    push ax                          ; 0xa93b
    add bx, word [bp - 0x0006]       ; 0xa93c
    mov ax, bx                       ; 0xa93f
    push ax                          ; 0xa941
    lea ax, word [bp - 0x00b0]       ; 0xa942
    push ax                          ; 0xa946
    call aztec_strncpy               ; 0xa947
    add sp, byte 6                   ; 0xa94a
    mov ax, word [bp - 0x0004]       ; 0xa94d
    sub ax, word [bp - 0x0006]       ; 0xa950
    mov bx, ax                       ; 0xa953
    add bx, bp                       ; 0xa955
    mov byte [bx - 0x00b0], 0        ; 0xa957
    mov bx, word [bp + 0x4]          ; 0xa95c
    mov si, word [bp - 0x0006]       ; 0xa95f
    mov byte [bx + si], 0            ; 0xa962
    jmp short @..api_idx_00b0_PORJ.l6 ; 0xa965
@..api_idx_00b0_PORJ.l5:
    mov byte [bp - 0x00b0], 0        ; 0xa967
@..api_idx_00b0_PORJ.l6:
    lea ax, word [bp - 0x00b0]       ; 0xa96c
    push ax                          ; 0xa970
    call aztec_strlen                ; 0xa971
    pop cx                           ; 0xa974
    mov word [bp - 0x0004], ax       ; 0xa975
    mov al, byte [bss_b054]          ; 0xa978
    mov bx, word [bp - 0x0004]       ; 0xa97b
    add bx, bp                       ; 0xa97e
    mov byte [bx - 0x00b0], al       ; 0xa980
    mov byte [bx - 0x00af], 0        ; 0xa984
    push word [bp + 0x6]             ; 0xa989
    mov ax, word [bss_93d4]          ; 0xa98c
    mov cx, 7                        ; 0xa98f
    shl ax, cl                       ; 0xa992
    add ax, 0x91cc                   ; 0xa994
    push ax                          ; 0xa997
    call aztec_strcpy                ; 0xa998
    add sp, byte 4                   ; 0xa99b
    push word [bp + 0x4]             ; 0xa99e
    mov ax, word [bss_93d4]          ; 0xa9a1
    mov cx, 7                        ; 0xa9a4
    shl ax, cl                       ; 0xa9a7
    add ax, 0x91cc                   ; 0xa9a9
    push ax                          ; 0xa9ac
    call ds_string_loc_VOPH          ; 0xa9ad
    add sp, byte 4                   ; 0xa9b0
    mov ax, word [bss_93d4]          ; 0xa9b3
    shl ax, 1                        ; 0xa9b6
    mov bx, ax                       ; 0xa9b8
    mov word [bx - 0x6c34], 0        ; 0xa9ba
    call api_idx_0004_IKJO           ; 0xa9c0
    push word [bp + 0x4]             ; 0xa9c3
    lea ax, word [bp - 0x0060]       ; 0xa9c6
    push ax                          ; 0xa9c9
    call aztec_strcpy                ; 0xa9ca
    add sp, byte 4                   ; 0xa9cd
    lea ax, word [bp - 0x00b0]       ; 0xa9d0
    push ax                          ; 0xa9d4
    push word [bp + 0x4]             ; 0xa9d5
    call aztec_strcpy                ; 0xa9d8
    add sp, byte 4                   ; 0xa9db
    mov word [bp - 0x0008], 1        ; 0xa9de
    jmp short @..api_idx_00b0_PORJ.l8 ; 0xa9e3
@..api_idx_00b0_PORJ.l7:
    cmp word [bp - 0x0002], byte 0xff ; 0xa9e5
    jne short @..api_idx_00b0_PORJ.l8 ; 0xa9e9
    mov ax, 3                        ; 0xa9eb
    push ax                          ; 0xa9ee
    call api_idx_0006_NSNR           ; 0xa9ef
    pop cx                           ; 0xa9f2
    dec word [bss_93d4]              ; 0xa9f3
    lea ax, word [bp - 0x0060]       ; 0xa9f7
    push ax                          ; 0xa9fa
    push word [bp + 0x4]             ; 0xa9fb
    call aztec_strcpy                ; 0xa9fe
    add sp, byte 4                   ; 0xaa01
    mov word [bp - 0x0008], 0        ; 0xaa04
@..api_idx_00b0_PORJ.l8:
    cmp word [bp - 0x0002], byte 0   ; 0xaa09
    je short @..api_idx_00b0_PORJ.l9 ; 0xaa0d
    jmp near @..api_idx_00b0_PORJ.l1 ; 0xaa0f
@..api_idx_00b0_PORJ.l9:
    cmp word [bp - 0x0008], byte 0   ; 0xaa12
    jne short @..api_idx_00b0_PORJ.l10 ; 0xaa16
    push word [bp + 0x6]             ; 0xaa18
    mov ax, word [bss_93d4]          ; 0xaa1b
    mov cx, 7                        ; 0xaa1e
    shl ax, cl                       ; 0xaa21
    add ax, 0x91cc                   ; 0xaa23
    push ax                          ; 0xaa26
    call aztec_strcpy                ; 0xaa27
    add sp, byte 4                   ; 0xaa2a
    jmp short @..api_idx_00b0_PORJ.l11 ; 0xaa2d
@..api_idx_00b0_PORJ.l10:
    mov ax, word [bss_93d4]          ; 0xaa2f
    mov cx, 7                        ; 0xaa32
    shl ax, cl                       ; 0xaa35
    mov bx, ax                       ; 0xaa37
    mov byte [bx - 0x6e34], 0        ; 0xaa39
@..api_idx_00b0_PORJ.l11:
    push word [bp + 0x4]             ; 0xaa3e
    mov ax, word [bss_93d4]          ; 0xaa41
    mov cx, 7                        ; 0xaa44
    shl ax, cl                       ; 0xaa47
    add ax, 0x91cc                   ; 0xaa49
    push ax                          ; 0xaa4c
    call ds_string_loc_VOPH          ; 0xaa4d
    add sp, byte 4                   ; 0xaa50
    mov ax, word [bss_93d4]          ; 0xaa53
    shl ax, 1                        ; 0xaa56
    mov bx, ax                       ; 0xaa58
    mov word [bx - 0x6c34], 0        ; 0xaa5a
    call api_idx_0004_IKJO           ; 0xaa60
    cmp word [bp - 0x0008], byte 0   ; 0xaa63
    je short @..api_idx_00b0_PORJ.l12 ; 0xaa67
    push word [bp + 0x4]             ; 0xaa69
    lea ax, word [bp - 0x00b0]       ; 0xaa6c
    push ax                          ; 0xaa70
    call aztec_strcpy                ; 0xaa71
    add sp, byte 4                   ; 0xaa74
    lea ax, word [bp - 0x0060]       ; 0xaa77
    push ax                          ; 0xaa7a
    push word [bp + 0x4]             ; 0xaa7b
    call aztec_strcpy                ; 0xaa7e
    add sp, byte 4                   ; 0xaa81
    lea ax, word [bp - 0x00b0]       ; 0xaa84
    push ax                          ; 0xaa88
    push word [bp + 0x4]             ; 0xaa89
    call ds_string_loc_VOPH          ; 0xaa8c
    add sp, byte 4                   ; 0xaa8f
@..api_idx_00b0_PORJ.l12:
    ret                              ; 0xaa92
