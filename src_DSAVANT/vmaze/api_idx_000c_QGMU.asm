; auto-generated
api_idx_000c_QGMU:
    mov ax, 0xfff4                   ; 0x8794
    call aztec_csav                  ; 0x8797
    mov ax, word [party_region]      ; 0x879a
    shl ax, 1                        ; 0x879d
    mov si, ax                       ; 0x879f
    mov bx, word [maze_tables]       ; 0x87a1
    mov ax, word [bx + si + 0x3c0]   ; 0x87a5
    mov word [bp - 0x0002], ax       ; 0x87a9
    mov ax, 8                        ; 0x87ac
    push ax                          ; 0x87af
    mov ax, 0                        ; 0x87b0
    push ax                          ; 0x87b3
    push word [bp - 0x0002]          ; 0x87b4
    call get_bits                    ; 0x87b7
    add sp, byte 6                   ; 0x87ba
    mov word [bp - 0x0008], ax       ; 0x87bd
    mov ax, 4                        ; 0x87c0
    push ax                          ; 0x87c3
    mov ax, 8                        ; 0x87c4
    push ax                          ; 0x87c7
    push word [bp - 0x0002]          ; 0x87c8
    call get_bits                    ; 0x87cb
    add sp, byte 6                   ; 0x87ce
    mov word [bp - 0x000a], ax       ; 0x87d1
    mov ax, 1                        ; 0x87d4
    push ax                          ; 0x87d7
    mov ax, 0xf                      ; 0x87d8
    push ax                          ; 0x87db
    push word [bp - 0x0002]          ; 0x87dc
    call get_bits                    ; 0x87df
    add sp, byte 6                   ; 0x87e2
    mov word [bp - 0x000c], ax       ; 0x87e5
    mov word [bp - 0x0006], 0        ; 0x87e8
    mov word [bp - 0x0004], 0        ; 0x87ed
    jmp short @..api_idx_000c_QGMU.l3 ; 0x87f2
@..api_idx_000c_QGMU.l1:
    mov ax, word [bp - 0x0008]       ; 0x87f4
    add ax, word [bp - 0x0004]       ; 0x87f7
    push ax                          ; 0x87fa
    mov ax, word [game_state_arg]    ; 0x87fb
    mov cx, 4                        ; 0x87fe
    shl ax, cl                       ; 0x8801
    add ax, party_region + 0x2       ; 0x8803
    push ax                          ; 0x8806
    call test_bit                    ; 0x8807
    add sp, byte 4                   ; 0x880a
    cmp ax, word [bp - 0x000c]       ; 0x880d
    je short @..api_idx_000c_QGMU.l2 ; 0x8810
    inc word [bp - 0x0006]           ; 0x8812
@..api_idx_000c_QGMU.l2:
    inc word [bp - 0x0004]           ; 0x8815
@..api_idx_000c_QGMU.l3:
    mov ax, word [bp - 0x0004]       ; 0x8818
    cmp ax, word [bp - 0x000a]       ; 0x881b
    jl short @..api_idx_000c_QGMU.l1 ; 0x881e
    mov ax, 1                        ; 0x8820
    push ax                          ; 0x8823
    mov ax, 0xe                      ; 0x8824
    push ax                          ; 0x8827
    push word [bp - 0x0002]          ; 0x8828
    call get_bits                    ; 0x882b
    add sp, byte 6                   ; 0x882e
    push ax                          ; 0x8831
    mov bx, word [maze_tables]       ; 0x8832
    mov si, word [party_region]      ; 0x8836
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x883a
    sub ah, ah                       ; 0x883e
    imul word [bp - 0x0006]          ; 0x8840
    shl si, 1                        ; 0x8843
    mov cx, word [bx + si]           ; 0x8845
    add ax, cx                       ; 0x8847
    push ax                          ; 0x8849
    call loc_MLLK                    ; 0x884a
    add sp, byte 4                   ; 0x884d
    mov ax, 2                        ; 0x8850
    push ax                          ; 0x8853
    mov ax, 0xc                      ; 0x8854
    push ax                          ; 0x8857
    push word [bp - 0x0002]          ; 0x8858
    call get_bits                    ; 0x885b
    add sp, byte 6                   ; 0x885e
    push ax                          ; 0x8861
    call mark_region_bits            ; 0x8862
    pop cx                           ; 0x8865
    ret                              ; 0x8866
