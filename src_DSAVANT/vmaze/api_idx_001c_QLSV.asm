; auto-generated
api_idx_001c_QLSV:
    mov ax, 0xffe4                   ; 0x764d
    call aztec_csav                  ; 0x7650
    mov ax, word [party_region]      ; 0x7653
    shl ax, 1                        ; 0x7656
    mov si, ax                       ; 0x7658
    mov bx, word [maze_tables]       ; 0x765a
    mov ax, word [bx + si + 0x3c0]   ; 0x765e
    mov word [bp - 0x0006], ax       ; 0x7662
    mov ax, 3                        ; 0x7665
    push ax                          ; 0x7668
    mov ax, 0                        ; 0x7669
    push ax                          ; 0x766c
    push word [bp - 0x0006]          ; 0x766d
    call get_bits                    ; 0x7670
    add sp, byte 6                   ; 0x7673
    mov word [bp - 0x000e], ax       ; 0x7676
    mov ax, 3                        ; 0x7679
    push ax                          ; 0x767c
    push ax                          ; 0x767d
    push word [bp - 0x0006]          ; 0x767e
    call get_bits                    ; 0x7681
    add sp, byte 6                   ; 0x7684
    mov word [bp - 0x0010], ax       ; 0x7687
    mov ax, 4                        ; 0x768a
    push ax                          ; 0x768d
    mov ax, 6                        ; 0x768e
    push ax                          ; 0x7691
    push word [bp - 0x0006]          ; 0x7692
    call get_bits                    ; 0x7695
    add sp, byte 6                   ; 0x7698
    mov word [bp - 0x000c], ax       ; 0x769b
    mov ax, 1                        ; 0x769e
    push ax                          ; 0x76a1
    mov ax, 0xa                      ; 0x76a2
    push ax                          ; 0x76a5
    push word [bp - 0x0006]          ; 0x76a6
    call get_bits                    ; 0x76a9
    add sp, byte 6                   ; 0x76ac
    mov word [bp - 0x0012], ax       ; 0x76af
    mov ax, 2                        ; 0x76b2
    push ax                          ; 0x76b5
    mov ax, 0xb                      ; 0x76b6
    push ax                          ; 0x76b9
    push word [bp - 0x0006]          ; 0x76ba
    call get_bits                    ; 0x76bd
    add sp, byte 6                   ; 0x76c0
    mov word [bp - 0x0014], ax       ; 0x76c3
    mov bx, word [maze_data]         ; 0x76c6
    mov si, word [bp - 0x000c]       ; 0x76ca
    mov al, byte [bx + si + 0x490]   ; 0x76cd
    sub ah, ah                       ; 0x76d1
    add ax, word [bp - 0x000e]       ; 0x76d3
    mov word [bp - 0x0008], ax       ; 0x76d6
    mov al, byte [bx + si + 0x4a0]   ; 0x76d9
    sub ah, ah                       ; 0x76dd
    add ax, word [bp - 0x0010]       ; 0x76df
    mov word [bp - 0x000a], ax       ; 0x76e2
    mov cx, 6                        ; 0x76e5
    shl si, cl                       ; 0x76e8
    mov ax, si                       ; 0x76ea
    mov cx, word [bp - 0x0010]       ; 0x76ec
    shl cx, 1                        ; 0x76ef
    shl cx, 1                        ; 0x76f1
    shl cx, 1                        ; 0x76f3
    add ax, cx                       ; 0x76f5
    add ax, word [bp - 0x000e]       ; 0x76f7
    mov word [bp - 0x0004], ax       ; 0x76fa
    mov ax, word [party_region]      ; 0x76fd
    shl ax, 1                        ; 0x7700
    mov si, ax                       ; 0x7702
    mov bx, word [maze_tables]       ; 0x7704
    mov ax, word [bx + si + 0x1e0]   ; 0x7708
    mov word [bp - 0x0006], ax       ; 0x770c
    mov word [bp - 0x0002], 0        ; 0x770f
@..api_idx_001c_QLSV.l1:
    mov ax, 4                        ; 0x7714
    push ax                          ; 0x7717
    mov ax, word [bp - 0x0002]       ; 0x7718
    shl ax, 1                        ; 0x771b
    shl ax, 1                        ; 0x771d
    push ax                          ; 0x771f
    push word [bp - 0x0006]          ; 0x7720
    call get_bits                    ; 0x7723
    add sp, byte 6                   ; 0x7726
    mov cx, word [bp - 0x0002]       ; 0x7729
    shl cx, 1                        ; 0x772c
    mov bx, cx                       ; 0x772e
    add bx, bp                       ; 0x7730
    mov word [bx - 0x001c], ax       ; 0x7732
    inc word [bp - 0x0002]           ; 0x7735
    mov ax, word [bp - 0x0002]       ; 0x7738
    cmp ax, strict word 4            ; 0x773b
    jl short @..api_idx_001c_QLSV.l1 ; 0x773e
    push word [bp - 0x0016]          ; 0x7740
    push word [bp - 0x0018]          ; 0x7743
    push word [bp - 0x001a]          ; 0x7746
    push word [bp - 0x001c]          ; 0x7749
    push word [bp - 0x0010]          ; 0x774c
    push word [bp - 0x000e]          ; 0x774f
    push word [bp - 0x000c]          ; 0x7752
    mov ax, 0                        ; 0x7755
    push ax                          ; 0x7758
    push word [game_state_arg]       ; 0x7759
    call log_maze_change             ; 0x775d
    add sp, byte 0x12                ; 0x7760
    push word [bp - 0x001c]          ; 0x7763
    mov ax, 4                        ; 0x7766
    push ax                          ; 0x7769
    push word [bp - 0x0004]          ; 0x776a
    mov ax, word [maze_data]         ; 0x776d
    add ax, 0x90                     ; 0x7770
    push ax                          ; 0x7773
    call set_bitfield                ; 0x7774
    add sp, byte 8                   ; 0x7777
    push word [bp - 0x001a]          ; 0x777a
    mov ax, 4                        ; 0x777d
    push ax                          ; 0x7780
    push word [bp - 0x0004]          ; 0x7781
    mov ax, word [maze_data]         ; 0x7784
    add ax, 0x290                    ; 0x7787
    push ax                          ; 0x778a
    call set_bitfield                ; 0x778b
    add sp, byte 8                   ; 0x778e
    mov ax, word [bp - 0x000a]       ; 0x7791
    dec ax                           ; 0x7794
    push ax                          ; 0x7795
    push word [bp - 0x0008]          ; 0x7796
    lea ax, word [bp - 0x000c]       ; 0x7799
    push ax                          ; 0x779c
    lea ax, word [bp - 0x0010]       ; 0x779d
    push ax                          ; 0x77a0
    lea ax, word [bp - 0x000e]       ; 0x77a1
    push ax                          ; 0x77a4
    call find_map_piece              ; 0x77a5
    add sp, byte 0x0a                ; 0x77a8
    test ax, ax                      ; 0x77ab
    jne short @..api_idx_001c_QLSV.l2 ; 0x77ad
    mov ax, word [bp - 0x000c]       ; 0x77af
    mov cx, 6                        ; 0x77b2
    shl ax, cl                       ; 0x77b5
    mov cx, word [bp - 0x0010]       ; 0x77b7
    shl cx, 1                        ; 0x77ba
    shl cx, 1                        ; 0x77bc
    shl cx, 1                        ; 0x77be
    add ax, cx                       ; 0x77c0
    add ax, word [bp - 0x000e]       ; 0x77c2
    mov word [bp - 0x0004], ax       ; 0x77c5
    push word [bp - 0x0018]          ; 0x77c8
    mov ax, 4                        ; 0x77cb
    push ax                          ; 0x77ce
    push word [bp - 0x0004]          ; 0x77cf
    mov ax, word [maze_data]         ; 0x77d2
    add ax, 0x90                     ; 0x77d5
    push ax                          ; 0x77d8
    call set_bitfield                ; 0x77d9
    add sp, byte 8                   ; 0x77dc
@..api_idx_001c_QLSV.l2:
    push word [bp - 0x000a]          ; 0x77df
    mov ax, word [bp - 0x0008]       ; 0x77e2
    dec ax                           ; 0x77e5
    push ax                          ; 0x77e6
    lea ax, word [bp - 0x000c]       ; 0x77e7
    push ax                          ; 0x77ea
    lea ax, word [bp - 0x0010]       ; 0x77eb
    push ax                          ; 0x77ee
    lea ax, word [bp - 0x000e]       ; 0x77ef
    push ax                          ; 0x77f2
    call find_map_piece              ; 0x77f3
    add sp, byte 0x0a                ; 0x77f6
    test ax, ax                      ; 0x77f9
    jne short @..api_idx_001c_QLSV.l3 ; 0x77fb
    mov ax, word [bp - 0x000c]       ; 0x77fd
    mov cx, 6                        ; 0x7800
    shl ax, cl                       ; 0x7803
    mov cx, word [bp - 0x0010]       ; 0x7805
    shl cx, 1                        ; 0x7808
    shl cx, 1                        ; 0x780a
    shl cx, 1                        ; 0x780c
    add ax, cx                       ; 0x780e
    add ax, word [bp - 0x000e]       ; 0x7810
    mov word [bp - 0x0004], ax       ; 0x7813
    push word [bp - 0x0016]          ; 0x7816
    mov ax, 4                        ; 0x7819
    push ax                          ; 0x781c
    push word [bp - 0x0004]          ; 0x781d
    mov ax, word [maze_data]         ; 0x7820
    add ax, 0x290                    ; 0x7823
    push ax                          ; 0x7826
    call set_bitfield                ; 0x7827
    add sp, byte 8                   ; 0x782a
@..api_idx_001c_QLSV.l3:
    mov ax, word [party_region]      ; 0x782d
    shl ax, 1                        ; 0x7830
    mov si, ax                       ; 0x7832
    mov bx, word [maze_tables]       ; 0x7834
    push word [bx + si]              ; 0x7838
    call loc_GRON                    ; 0x783a
    pop cx                           ; 0x783d
    cmp word [bp - 0x0012], byte 1   ; 0x783e
    jne short @..api_idx_001c_QLSV.l4 ; 0x7842
    call redraw_maze_view            ; 0x7844
@..api_idx_001c_QLSV.l4:
    push word [bp - 0x0014]          ; 0x7847
    call mark_region_bits            ; 0x784a
    pop cx                           ; 0x784d
    ret                              ; 0x784e
