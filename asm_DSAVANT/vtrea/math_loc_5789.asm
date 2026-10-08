math_loc_5789:
    mov ax, 0xfe5c                   ; 0x5789
    call ds_dispatch_f40b            ; 0x578c
    mov ax, 0                        ; 0x578f
    push ax                          ; 0x5792
    push word [data_84a0]            ; 0x5793
    lea ax, word [bp - 0x003a]       ; 0x5797
    push ax                          ; 0x579a
    mov ax, 7                        ; 0x579b
    push ax                          ; 0x579e
    call ds_dispatch_b63c            ; 0x579f
    add sp, byte 8                   ; 0x57a2
    mov word [data_84a0], 0xffff     ; 0x57a5
    cmp byte [bp - 0x0005], 0        ; 0x57ab
    jbe short @..math_loc_5789.l2    ; 0x57af
    mov ax, 0xc6                     ; 0x57b1
    push ax                          ; 0x57b4
    mov ax, 0x109                    ; 0x57b5
    push ax                          ; 0x57b8
    mov ax, 0x92                     ; 0x57b9
    push ax                          ; 0x57bc
    mov ax, 0x37                     ; 0x57bd
    push ax                          ; 0x57c0
    call ds_dispatch_e8da            ; 0x57c1
    add sp, byte 8                   ; 0x57c4
    lea ax, word [bp - 0x003a]       ; 0x57c7
    push ax                          ; 0x57ca
    call api_idx_007a                ; 0x57cb
    pop cx                           ; 0x57ce
    cmp ax, strict word 0xffff       ; 0x57cf
    jne short @..math_loc_5789.l1    ; 0x57d2
    mov ax, 1                        ; 0x57d4
    push ax                          ; 0x57d7
    call api_idx_000a_2              ; 0x57d8
    pop cx                           ; 0x57db
    ret                              ; 0x57dc
@..math_loc_5789.l1:
    mov ax, 1                        ; 0x57dd
    push ax                          ; 0x57e0
    call api_idx_000a_2              ; 0x57e1
    pop cx                           ; 0x57e4
@..math_loc_5789.l2:
    cmp word [data_905e], byte 0x15  ; 0x57e5
    jne short @..math_loc_5789.l3    ; 0x57ea
    call api_idx_0006_4              ; 0x57ec
@..math_loc_5789.l3:
    mov ax, 1                        ; 0x57ef
    push ax                          ; 0x57f2
    call api_idx_000a_2              ; 0x57f3
    pop cx                           ; 0x57f6
    mov word [bp - 0x0086], 0        ; 0x57f7
    mov word [bp - 0x0088], 0        ; 0x57fd
    mov word [bp - 0x008a], 0        ; 0x5803
    mov word [bp - 0x008c], 0        ; 0x5809
    mov word [data_95e4], 0          ; 0x580f
    cmp word [data_849e], byte 0xff  ; 0x5815
    jne short @..math_loc_5789.l4    ; 0x581a
    jmp near @..math_loc_5789.l9     ; 0x581c
@..math_loc_5789.l4:
    mov ax, 0x26                     ; 0x581f
    imul word [data_849e]            ; 0x5822
    mov bx, ax                       ; 0x5826
    cmp byte [bx - 0x7b00], 0        ; 0x5828
    jle short @..math_loc_5789.l5    ; 0x582d
    jmp near @..math_loc_5789.l9     ; 0x582f
@..math_loc_5789.l5:
    mov word [bp - 0x0002], 0        ; 0x5832
@..math_loc_5789.l6:
    push word [bp - 0x0002]          ; 0x5837
    mov ax, 0x26                     ; 0x583a
    imul word [data_849e]            ; 0x583d
    add ax, 0x8502                   ; 0x5841
    push ax                          ; 0x5844
    call ds_dispatch_ec74            ; 0x5845
    add sp, byte 4                   ; 0x5848
    test ax, ax                      ; 0x584b
    je short @..math_loc_5789.l7     ; 0x584d
    push word [bp - 0x0002]          ; 0x584f
    push word [data_849e]            ; 0x5852
    mov ax, 0x15                     ; 0x5856
    push ax                          ; 0x5859
    call api_idx_0002_4              ; 0x585a
    add sp, byte 6                   ; 0x585d
    mov ax, word [bp - 0x0002]       ; 0x5860
    add ax, 0x190                    ; 0x5863
    mov cx, word [data_95e4]         ; 0x5866
    shl cx, 1                        ; 0x586a
    mov bx, cx                       ; 0x586c
    mov word [bx - 0x69f2], ax       ; 0x586e
    inc word [data_95e4]             ; 0x5872
@..math_loc_5789.l7:
    push word [bp - 0x0002]          ; 0x5876
    mov ax, 0x26                     ; 0x5879
    imul word [data_849e]            ; 0x587c
    add ax, 0x8504                   ; 0x5880
    push ax                          ; 0x5883
    call ds_dispatch_ec74            ; 0x5884
    add sp, byte 4                   ; 0x5887
    test ax, ax                      ; 0x588a
    je short @..math_loc_5789.l8     ; 0x588c
    mov ax, 1                        ; 0x588e
    push ax                          ; 0x5891
    push word [bp - 0x0002]          ; 0x5892
    mov ax, 0x8822                   ; 0x5895
    push ax                          ; 0x5898
    call ds_dispatch_ec41            ; 0x5899
    add sp, byte 6                   ; 0x589c
@..math_loc_5789.l8:
    inc word [bp - 0x0002]           ; 0x589f
    mov ax, word [bp - 0x0002]       ; 0x58a2
    cmp ax, strict word 0xb          ; 0x58a5
    jl short @..math_loc_5789.l6     ; 0x58a8
@..math_loc_5789.l9:
    mov word [bp - 0x0002], 0        ; 0x58aa
@..math_loc_5789.l10:
    mov ax, 0x64                     ; 0x58af
    push ax                          ; 0x58b2
    call ds_dispatch_b7a9            ; 0x58b3
    pop cx                           ; 0x58b6
    push ax                          ; 0x58b7
    mov ax, 6                        ; 0x58b8
    imul word [bp - 0x0002]          ; 0x58bb
    mov bx, ax                       ; 0x58be
    add bx, bp                       ; 0x58c0
    mov al, byte [bx - 0x0035]       ; 0x58c2
    sub ah, ah                       ; 0x58c5
    mov cx, ax                       ; 0x58c7
    pop ax                           ; 0x58c9
    cmp ax, cx                       ; 0x58ca
    jl short @..math_loc_5789.l11    ; 0x58cc
    jmp near @..math_loc_5789.l19    ; 0x58ce
@..math_loc_5789.l11:
    mov al, byte [bx - 0x0036]       ; 0x58d1
    sub ah, ah                       ; 0x58d4
    jmp near @..math_loc_5789.l17    ; 0x58d6
