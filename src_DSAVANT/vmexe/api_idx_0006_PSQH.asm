; auto-generated
api_idx_0006_PSQH:
    mov ax, 0xfffa                   ; 0x989b
    call aztec_csav                  ; 0x989e
    cmp word [bss_8464], byte 0      ; 0x98a1
    jne short @..api_idx_0006_PSQH.l3 ; 0x98a6
    mov ax, 0x248                    ; 0x98a8
    imul word [bss_8462]             ; 0x98ab
    mov bx, ax                       ; 0x98af
    mov ax, word [bx + 0x5c18]       ; 0x98b1
    push ax                          ; 0x98b5
    mov al, byte [bx + 0x5d7d]       ; 0x98b6
    sub ah, ah                       ; 0x98ba
    mov cx, ax                       ; 0x98bc
    pop ax                           ; 0x98be
    add ax, cx                       ; 0x98bf
    add ax, strict word 0x32         ; 0x98c1
    mov word [bp - 0x0006], ax       ; 0x98c4
    mov word [bp - 0x0002], 1        ; 0x98c7
    jmp short @..api_idx_0006_PSQH.l2 ; 0x98cc
@..api_idx_0006_PSQH.l1:
    mov ax, word [bp - 0x0002]       ; 0x98ce
    shl ax, 1                        ; 0x98d1
    mov bx, ax                       ; 0x98d3
    mov bx, word [bx + party_char]   ; 0x98d5
    mov al, byte [bx + 0x1a1]        ; 0x98d9
    sub ah, ah                       ; 0x98dd
    push ax                          ; 0x98df
    mov ax, word [bp - 0x0002]       ; 0x98e0
    shl ax, 1                        ; 0x98e3
    mov bx, ax                       ; 0x98e5
    mov bx, word [bx + party_char_ext] ; 0x98e7
    mov al, byte [bx + 0x80]         ; 0x98eb
    sub ah, ah                       ; 0x98ef
    mov cx, ax                       ; 0x98f1
    pop ax                           ; 0x98f3
    add ax, cx                       ; 0x98f4
    push ax                          ; 0x98f6
    mov al, byte [bx + 0x8d]         ; 0x98f7
    sub ah, ah                       ; 0x98fb
    mov cx, ax                       ; 0x98fd
    pop ax                           ; 0x98ff
    add ax, cx                       ; 0x9900
    add ax, strict word 0xfff7       ; 0x9902
    sub word [bp - 0x0006], ax       ; 0x9905
    inc word [bp - 0x0002]           ; 0x9908
@..api_idx_0006_PSQH.l2:
    mov ax, word [bp - 0x0002]       ; 0x990b
    cmp ax, word [bss_8466]          ; 0x990e
    jle short @..api_idx_0006_PSQH.l1 ; 0x9912
    jmp short @..api_idx_0006_PSQH.l7 ; 0x9914
@..api_idx_0006_PSQH.l3:
    mov bx, word [bp + 0x4]          ; 0x9916
    mov ax, word [bx]                ; 0x9919
    mov cx, 5                        ; 0x991b
    imul cx                          ; 0x991e
    add ax, strict word 0x32         ; 0x9920
    mov word [bp - 0x0006], ax       ; 0x9923
    mov ax, word [bss_69c8]          ; 0x9926
    push ax                          ; 0x9929
    cmp ax, strict word 3            ; 0x992a
    pop ax                           ; 0x992d
    jle short @..api_idx_0006_PSQH.l4 ; 0x992e
    mov ax, 3                        ; 0x9930
@..api_idx_0006_PSQH.l4:
    mov word [bp - 0x0004], ax       ; 0x9933
    mov word [bp - 0x0002], 0        ; 0x9936
    jmp short @..api_idx_0006_PSQH.l6 ; 0x993b
@..api_idx_0006_PSQH.l5:
    mov ax, 0x248                    ; 0x993d
    imul word [bp - 0x0002]          ; 0x9940
    mov bx, ax                       ; 0x9943
    mov ax, word [bx + 0x5c18]       ; 0x9945
    push ax                          ; 0x9949
    mov al, byte [bx + 0x5d65]       ; 0x994a
    sub ah, ah                       ; 0x994e
    mov cx, ax                       ; 0x9950
    pop ax                           ; 0x9952
    add ax, cx                       ; 0x9953
    add ax, strict word 0xfff7       ; 0x9955
    sub word [bp - 0x0006], ax       ; 0x9958
    inc word [bp - 0x0002]           ; 0x995b
@..api_idx_0006_PSQH.l6:
    mov ax, word [bp - 0x0002]       ; 0x995e
    cmp ax, word [bp - 0x0004]       ; 0x9961
    jl short @..api_idx_0006_PSQH.l5 ; 0x9964
@..api_idx_0006_PSQH.l7:
    push word [bss_8462]             ; 0x9966
    push word [bss_8464]             ; 0x996a
    mov ax, bss_90e6                 ; 0x996e
    push ax                          ; 0x9971
    call loc_HJSG                    ; 0x9972
    add sp, byte 6                   ; 0x9975
    mov ax, bss_9136                 ; 0x9978
    push ax                          ; 0x997b
    mov ax, 0xdbb                    ; 0x997c
    push ax                          ; 0x997f
    call ds_app_mem_TIMR             ; 0x9980
    add sp, byte 4                   ; 0x9983
    mov byte [bss_9186], 0           ; 0x9986
    mov ax, 0x43                     ; 0x998b
    push ax                          ; 0x998e
    push ax                          ; 0x998f
    cmp word [bss_8464], byte 0      ; 0x9990
    jne short @..api_idx_0006_PSQH.l8 ; 0x9995
    mov ax, 1                        ; 0x9997
@..api_idx_0006_PSQH.l8:
    push ax                          ; 0x999a
    mov ax, bss_9186                 ; 0x999b
    push ax                          ; 0x999e
    mov ax, bss_9136                 ; 0x999f
    push ax                          ; 0x99a2
    mov ax, bss_90e6                 ; 0x99a3
    push ax                          ; 0x99a6
    mov ax, 0                        ; 0x99a7
    push ax                          ; 0x99aa
    call api_idx_0004_QSNR           ; 0x99ab
    add sp, byte 0x0e                ; 0x99ae
    mov ax, word [bss_9058]          ; 0x99b1
    mov cx, 2                        ; 0x99b4
    cwd                              ; 0x99b7
    idiv cx                          ; 0x99b8
    push ax                          ; 0x99ba
    call api_idx_0004_QUPL           ; 0x99bb
    pop cx                           ; 0x99be
    mov ax, 0x64                     ; 0x99bf
    push ax                          ; 0x99c2
    call random_below                ; 0x99c3
    pop cx                           ; 0x99c6
    cmp ax, word [bp - 0x0006]       ; 0x99c7
    jge short @..api_idx_0006_PSQH.l10 ; 0x99ca
    mov bx, word [bp + 0x4]          ; 0x99cc
    mov byte [bx + 0x2b], 1          ; 0x99cf
    mov ax, 1                        ; 0x99d3
    push ax                          ; 0x99d6
    mov ax, 0x11                     ; 0x99d7
    push ax                          ; 0x99da
    push word [bss_8462]             ; 0x99db
    call loc_SIKN                    ; 0x99df
    add sp, byte 6                   ; 0x99e2
    mov ax, 2                        ; 0x99e5
    push ax                          ; 0x99e8
    mov ax, 0x43                     ; 0x99e9
    push ax                          ; 0x99ec
    mov ax, 0xdc0                    ; 0x99ed
    push ax                          ; 0x99f0
    call api_idx_0050_PLNP           ; 0x99f1
    add sp, byte 6                   ; 0x99f4
    cmp word [bss_8464], byte 0      ; 0x99f7
    jne short @..api_idx_0006_PSQH.l9 ; 0x99fc
    mov ax, 0                        ; 0x99fe
    push ax                          ; 0x9a01
    push word [bss_8462]             ; 0x9a02
    call api_idx_0004_MLLS           ; 0x9a06
    add sp, byte 4                   ; 0x9a09
@..api_idx_0006_PSQH.l9:
    jmp short @..api_idx_0006_PSQH.l11 ; 0x9a0c
@..api_idx_0006_PSQH.l10:
    mov ax, 2                        ; 0x9a0e
    push ax                          ; 0x9a11
    mov ax, 0x43                     ; 0x9a12
    push ax                          ; 0x9a15
    mov ax, 0xdc1                    ; 0x9a16
    push ax                          ; 0x9a19
    call api_idx_0050_PLNP           ; 0x9a1a
    add sp, byte 6                   ; 0x9a1d
@..api_idx_0006_PSQH.l11:
    mov ax, word [bss_9058]          ; 0x9a20
    mov cx, 2                        ; 0x9a23
    cwd                              ; 0x9a26
    idiv cx                          ; 0x9a27
    push ax                          ; 0x9a29
    call api_idx_0004_QUPL           ; 0x9a2a
    pop cx                           ; 0x9a2d
    ret                              ; 0x9a2e
