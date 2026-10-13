api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x8794
    call aztec_csav                  ; 0x8797
    mov ax, word [bss_8d12]          ; 0x879a
    shl ax, 1                        ; 0x879d
    mov si, ax                       ; 0x879f
    mov bx, word [bss_0e12]          ; 0x87a1
    mov ax, word [bx + si + 0x3c0]   ; 0x87a5
    mov word [bp - 0x0002], ax       ; 0x87a9
    mov ax, 8                        ; 0x87ac
    push ax                          ; 0x87af
    mov ax, 0                        ; 0x87b0
    push ax                          ; 0x87b3
    push word [bp - 0x0002]          ; 0x87b4
    call ds_dos_con_loc_3f81         ; 0x87b7
    add sp, byte 6                   ; 0x87ba
    mov word [bp - 0x0008], ax       ; 0x87bd
    mov ax, 4                        ; 0x87c0
    push ax                          ; 0x87c3
    mov ax, 8                        ; 0x87c4
    push ax                          ; 0x87c7
    push word [bp - 0x0002]          ; 0x87c8
    call ds_dos_con_loc_3f81         ; 0x87cb
    add sp, byte 6                   ; 0x87ce
    mov word [bp - 0x000a], ax       ; 0x87d1
    mov ax, 1                        ; 0x87d4
    push ax                          ; 0x87d7
    mov ax, 0xf                      ; 0x87d8
    push ax                          ; 0x87db
    push word [bp - 0x0002]          ; 0x87dc
    call ds_dos_con_loc_3f81         ; 0x87df
    add sp, byte 6                   ; 0x87e2
    mov word [bp - 0x000c], ax       ; 0x87e5
    mov word [bp - 0x0006], 0        ; 0x87e8
    mov word [bp - 0x0004], 0        ; 0x87ed
    jmp short @..api_idx_000c_2.l3   ; 0x87f2
@..api_idx_000c_2.l1:
    mov ax, word [bp - 0x0008]       ; 0x87f4
    add ax, word [bp - 0x0004]       ; 0x87f7
    push ax                          ; 0x87fa
    mov ax, word [bss_830c]          ; 0x87fb
    mov cx, 4                        ; 0x87fe
    shl ax, cl                       ; 0x8801
    add ax, 0x8d14                   ; 0x8803
    push ax                          ; 0x8806
    call ds_leaf_loc_3ebb            ; 0x8807
    add sp, byte 4                   ; 0x880a
    cmp ax, word [bp - 0x000c]       ; 0x880d
    je short @..api_idx_000c_2.l2    ; 0x8810
    inc word [bp - 0x0006]           ; 0x8812
@..api_idx_000c_2.l2:
    inc word [bp - 0x0004]           ; 0x8815
@..api_idx_000c_2.l3:
    mov ax, word [bp - 0x0004]       ; 0x8818
    cmp ax, word [bp - 0x000a]       ; 0x881b
    jl short @..api_idx_000c_2.l1    ; 0x881e
    mov ax, 1                        ; 0x8820
    push ax                          ; 0x8823
    mov ax, 0xe                      ; 0x8824
    push ax                          ; 0x8827
    push word [bp - 0x0002]          ; 0x8828
    call ds_dos_con_loc_3f81         ; 0x882b
    add sp, byte 6                   ; 0x882e
    push ax                          ; 0x8831
    mov bx, word [bss_0e12]          ; 0x8832
    mov si, word [bss_8d12]          ; 0x8836
    mov al, byte [bx + si + 0xa50]   ; 0x883a
    sub ah, ah                       ; 0x883e
    imul word [bp - 0x0006]          ; 0x8840
    shl si, 1                        ; 0x8843
    mov cx, word [bx + si]           ; 0x8845
    add ax, cx                       ; 0x8847
    push ax                          ; 0x8849
    call loc_6f14                    ; 0x884a
    add sp, byte 4                   ; 0x884d
    mov ax, 2                        ; 0x8850
    push ax                          ; 0x8853
    mov ax, 0xc                      ; 0x8854
    push ax                          ; 0x8857
    push word [bp - 0x0002]          ; 0x8858
    call ds_dos_con_loc_3f81         ; 0x885b
    add sp, byte 6                   ; 0x885e
    push ax                          ; 0x8861
    call loc_7242                    ; 0x8862
    pop cx                           ; 0x8865
    ret                              ; 0x8866
loc_8867:
    mov ax, 0                        ; 0x8867
    call aztec_csav                  ; 0x886a
    mov word [bss_9b4a], 1           ; 0x886d
    mov word [bss_8f24], 0xffff      ; 0x8873
loc_8879:
    push word [bss_8d12]             ; 0x8879
    push word [bss_8f3e]             ; 0x887d
    push word [bss_8f40]             ; 0x8881
    push word [bss_8f42]             ; 0x8885
    call api_idx_0002_11             ; 0x8889
    add sp, byte 8                   ; 0x888c
    mov word [bss_8d12], ax          ; 0x888f
    cmp ax, strict word 0xffff       ; 0x8892
    jne short loc_889a               ; 0x8895
    jmp near loc_89cf                ; 0x8897
loc_889a:
    mov word [bss_9bd0], 1           ; 0x889a
    mov bx, word [bss_0e12]          ; 0x88a0
    mov si, ax                       ; 0x88a4
    mov al, byte [bx + si + 0x5a0]   ; 0x88a6
    sub ah, ah                       ; 0x88aa
    jmp near loc_89ac                ; 0x88ac
loc_88af:
    call api_idx_0002_13             ; 0x88af
    jmp near loc_89b9                ; 0x88b2
loc_88b5:
    cmp word [bss_91a8], byte 0      ; 0x88b5
    je short loc_88bf                ; 0x88ba
    call api_idx_001e_2              ; 0x88bc
loc_88bf:
    jmp near loc_89b9                ; 0x88bf
loc_88c2:
    call api_idx_0004_11             ; 0x88c2
    jmp near loc_89b9                ; 0x88c5
loc_88c8:
    call loc_7a34                    ; 0x88c8
    jmp near loc_89b9                ; 0x88cb
loc_88ce:
    call api_idx_0002_14             ; 0x88ce
    jmp near loc_89b9                ; 0x88d1
loc_88d4:
    call api_idx_000e_3              ; 0x88d4
    jmp near loc_89b9                ; 0x88d7
loc_88da:
    call api_idx_0006_6              ; 0x88da
    jmp near loc_89b9                ; 0x88dd
loc_88e0:
    mov ax, word [bss_8d12]          ; 0x88e0
    shl ax, 1                        ; 0x88e3
    mov si, ax                       ; 0x88e5
    mov bx, word [bss_0e12]          ; 0x88e7
    cmp word [bx + si], byte 0       ; 0x88eb
    jle short loc_88fe               ; 0x88ee
    mov ax, 0                        ; 0x88f0
    push ax                          ; 0x88f3
    push word [bx + si]              ; 0x88f4
    call loc_6f14                    ; 0x88f6
    add sp, byte 4                   ; 0x88f9
    jmp short loc_8922               ; 0x88fc
loc_88fe:
    mov ax, 1                        ; 0x88fe
    push ax                          ; 0x8901
    mov ax, 0xb                      ; 0x8902
    push ax                          ; 0x8905
    mov ax, word [bss_8d12]          ; 0x8906
    shl ax, 1                        ; 0x8909
    mov si, ax                       ; 0x890b
    mov bx, word [bss_0e12]          ; 0x890d
    push word [bx + si + 0x3c0]      ; 0x8911
    call ds_dos_con_loc_3f81         ; 0x8915
    add sp, byte 6                   ; 0x8918
    test ax, ax                      ; 0x891b
    je short loc_8922                ; 0x891d
    call api_idx_0004_12             ; 0x891f
loc_8922:
    jmp near loc_89b9                ; 0x8922
