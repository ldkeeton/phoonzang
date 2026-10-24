; auto-generated
api_idx_0074_MHUG:
    mov ax, 0xff8c                   ; 0x66eb
    call aztec_csav                  ; 0x66ee
    mov word [show_area_bottom], 0x8d ; 0x66f1
    mov word [spell_dialog_result], 0xffff ; 0x66f7
    mov word [bp - 0x0006], 0x37     ; 0x66fd
    mov word [bp - 0x0008], 0x8f     ; 0x6702
    mov word [bp - 0x000a], 0x108    ; 0x6707
    mov word [bp - 0x000c], 0xc5     ; 0x670c
    mov ax, dseg_90ee                ; 0x6711
    push ax                          ; 0x6714
    mov ax, word [bp - 0x000c]       ; 0x6715
    inc ax                           ; 0x6718
    push ax                          ; 0x6719
    mov ax, word [bp - 0x000a]       ; 0x671a
    inc ax                           ; 0x671d
    push ax                          ; 0x671e
    mov ax, word [bp - 0x0008]       ; 0x671f
    dec ax                           ; 0x6722
    push ax                          ; 0x6723
    mov ax, word [bp - 0x0006]       ; 0x6724
    dec ax                           ; 0x6727
    push ax                          ; 0x6728
    call save_screen_area            ; 0x6729
    add sp, byte 0x0a                ; 0x672c
    mov word [bp - 0x0024], ax       ; 0x672f
    push word [bp - 0x000c]          ; 0x6732
    push word [bp - 0x000a]          ; 0x6735
    push word [bp - 0x0008]          ; 0x6738
    push word [bp - 0x0006]          ; 0x673b
    call draw_dialog_box             ; 0x673e
    add sp, byte 8                   ; 0x6741
    lea ax, word [bp - 0x004c]       ; 0x6744
    push ax                          ; 0x6747
    push word [bp + 0x6]             ; 0x6748
    call load_message_string         ; 0x674b
    add sp, byte 4                   ; 0x674e
    mov ax, 0xc2                     ; 0x6751
    push ax                          ; 0x6754
    mov ax, 0x1c                     ; 0x6755
    push ax                          ; 0x6758
    call gfx_set_text_color          ; 0x6759
    add sp, byte 4                   ; 0x675c
    mov ax, word [bp - 0x0008]       ; 0x675f
    add ax, strict word 9            ; 0x6762
    push ax                          ; 0x6765
    lea ax, word [bp - 0x004c]       ; 0x6766
    push ax                          ; 0x6769
    call aztec_strlen                ; 0x676a
    pop cx                           ; 0x676d
    mov cx, ax                       ; 0x676e
    mov ax, 0xc                      ; 0x6770
    sub ax, cx                       ; 0x6773
    mov cx, 6                        ; 0x6775
    imul cx                          ; 0x6778
    mov cx, 2                        ; 0x677a
    cwd                              ; 0x677d
    idiv cx                          ; 0x677e
    add ax, word [bp - 0x0006]       ; 0x6780
    add ax, strict word 9            ; 0x6783
    push ax                          ; 0x6786
    call gfx_set_text_pos            ; 0x6787
    add sp, byte 4                   ; 0x678a
    mov ax, 0                        ; 0x678d
    push ax                          ; 0x6790
    lea ax, word [bp - 0x004c]       ; 0x6791
    push ax                          ; 0x6794
    call draw_text_glyphs            ; 0x6795
    add sp, byte 4                   ; 0x6798
    lea ax, word [bp - 0x0074]       ; 0x679b
    push ax                          ; 0x679e
    mov ax, word [bp + 0x6]          ; 0x679f
    inc ax                           ; 0x67a2
    push ax                          ; 0x67a3
    call load_message_string         ; 0x67a4
    add sp, byte 4                   ; 0x67a7
    lea ax, word [bp - 0x0074]       ; 0x67aa
    push ax                          ; 0x67ad
    push word [bp + 0x8]             ; 0x67ae
    mov ax, 1                        ; 0x67b1
    push ax                          ; 0x67b4
    mov ax, 0xc                      ; 0x67b5
    push ax                          ; 0x67b8
    mov ax, word [bp - 0x0008]       ; 0x67b9
    add ax, strict word 0x16         ; 0x67bc
    push ax                          ; 0x67bf
    mov ax, word [bp - 0x0006]       ; 0x67c0
    add ax, strict word 8            ; 0x67c3
    push ax                          ; 0x67c6
    call draw_button                 ; 0x67c7
    add sp, byte 0x0c                ; 0x67ca
    lea ax, word [bp - 0x004c]       ; 0x67cd
    push ax                          ; 0x67d0
    mov ax, word [bp + 0x6]          ; 0x67d1
    inc ax                           ; 0x67d4
    inc ax                           ; 0x67d5
    push ax                          ; 0x67d6
    call load_message_string         ; 0x67d7
    add sp, byte 4                   ; 0x67da
    lea ax, word [bp - 0x004c]       ; 0x67dd
    push ax                          ; 0x67e0
    push word [bp + 0xa]             ; 0x67e1
    mov ax, 1                        ; 0x67e4
    push ax                          ; 0x67e7
    mov ax, 0xc                      ; 0x67e8
    push ax                          ; 0x67eb
    mov ax, word [bp - 0x0008]       ; 0x67ec
    add ax, strict word 0x26         ; 0x67ef
    push ax                          ; 0x67f2
    mov ax, word [bp - 0x0006]       ; 0x67f3
    add ax, strict word 8            ; 0x67f6
    push ax                          ; 0x67f9
    call draw_button                 ; 0x67fa
    add sp, byte 0x0c                ; 0x67fd
    lea ax, word [bp - 0x004c]       ; 0x6800
    push ax                          ; 0x6803
    mov ax, word [bp + 0x6]          ; 0x6804
    inc ax                           ; 0x6807
    inc ax                           ; 0x6808
    inc ax                           ; 0x6809
    push ax                          ; 0x680a
    call load_message_string         ; 0x680b
    add sp, byte 4                   ; 0x680e
    mov ax, 0xc2                     ; 0x6811
    push ax                          ; 0x6814
    mov ax, 1                        ; 0x6815
    push ax                          ; 0x6818
    call gfx_set_text_color          ; 0x6819
    add sp, byte 4                   ; 0x681c
    mov ax, word [bp - 0x0008]       ; 0x681f
    add ax, strict word 6            ; 0x6822
    push ax                          ; 0x6825
    lea ax, word [bp - 0x004c]       ; 0x6826
    push ax                          ; 0x6829
    call aztec_strlen                ; 0x682a
    pop cx                           ; 0x682d
    mov cx, 6                        ; 0x682e
    imul cx                          ; 0x6831
    mov cx, 2                        ; 0x6833
    cwd                              ; 0x6836
    idiv cx                          ; 0x6837
    mov cx, ax                       ; 0x6839
    mov ax, word [bp - 0x0006]       ; 0x683b
    add ax, 0x93                     ; 0x683e
    sub ax, cx                       ; 0x6841
    push ax                          ; 0x6843
    call gfx_set_text_pos            ; 0x6844
    add sp, byte 4                   ; 0x6847
    mov ax, 0                        ; 0x684a
    push ax                          ; 0x684d
    lea ax, word [bp - 0x004c]       ; 0x684e
    push ax                          ; 0x6851
    call draw_text_glyphs            ; 0x6852
    add sp, byte 4                   ; 0x6855
    lea ax, word [bp - 0x004c]       ; 0x6858
    push ax                          ; 0x685b
    mov ax, word [bp + 0x6]          ; 0x685c
    add ax, strict word 4            ; 0x685f
    push ax                          ; 0x6862
    call load_message_string         ; 0x6863
    add sp, byte 4                   ; 0x6866
    mov ax, 0xc2                     ; 0x6869
    push ax                          ; 0x686c
    mov ax, 0x9b                     ; 0x686d
    push ax                          ; 0x6870
    call gfx_set_text_color          ; 0x6871
    add sp, byte 4                   ; 0x6874
    mov ax, word [bp - 0x0008]       ; 0x6877
    add ax, strict word 0x1e         ; 0x687a
    push ax                          ; 0x687d
    lea ax, word [bp - 0x004c]       ; 0x687e
    push ax                          ; 0x6881
    call aztec_strlen                ; 0x6882
    pop cx                           ; 0x6885
    mov cx, 6                        ; 0x6886
    imul cx                          ; 0x6889
    mov cx, 2                        ; 0x688b
    cwd                              ; 0x688e
    idiv cx                          ; 0x688f
    mov cx, ax                       ; 0x6891
    mov ax, word [bp - 0x0006]       ; 0x6893
    add ax, 0x93                     ; 0x6896
    sub ax, cx                       ; 0x6899
    push ax                          ; 0x689b
    call gfx_set_text_pos            ; 0x689c
    add sp, byte 4                   ; 0x689f
    mov ax, 0                        ; 0x68a2
    push ax                          ; 0x68a5
    lea ax, word [bp - 0x004c]       ; 0x68a6
    push ax                          ; 0x68a9
    call draw_text_glyphs            ; 0x68aa
    add sp, byte 4                   ; 0x68ad
    mov word [bp - 0x0002], 0        ; 0x68b0
@..api_idx_0074_MHUG.l1:
    mov ax, word [bp - 0x0008]       ; 0x68b5
    add ax, strict word 0x15         ; 0x68b8
    push ax                          ; 0x68bb
    mov ax, word [bp - 0x0002]       ; 0x68bc
    shl ax, 1                        ; 0x68bf
    shl ax, 1                        ; 0x68c1
    shl ax, 1                        ; 0x68c3
    add ax, word [bp - 0x0006]       ; 0x68c5
    add ax, strict word 0x60         ; 0x68c8
    push ax                          ; 0x68cb
    mov ax, word [bp - 0x0008]       ; 0x68cc
    add ax, strict word 0xf          ; 0x68cf
    push ax                          ; 0x68d2
    mov ax, word [bp - 0x0002]       ; 0x68d3
    shl ax, 1                        ; 0x68d6
    shl ax, 1                        ; 0x68d8
    shl ax, 1                        ; 0x68da
    add ax, word [bp - 0x0006]       ; 0x68dc
    add ax, strict word 0x5c         ; 0x68df
    push ax                          ; 0x68e2
    call draw_inset_panel            ; 0x68e3
    add sp, byte 8                   ; 0x68e6
    mov ax, 0                        ; 0x68e9
    push ax                          ; 0x68ec
    mov ax, word [bp - 0x0008]       ; 0x68ed
    add ax, strict word 0x15         ; 0x68f0
    push ax                          ; 0x68f3
    mov ax, word [bp - 0x0002]       ; 0x68f4
    shl ax, 1                        ; 0x68f7
    shl ax, 1                        ; 0x68f9
    shl ax, 1                        ; 0x68fb
    add ax, word [bp - 0x0006]       ; 0x68fd
    add ax, strict word 0x60         ; 0x6900
    push ax                          ; 0x6903
    mov ax, word [bp - 0x0008]       ; 0x6904
    add ax, strict word 0xf          ; 0x6907
    push ax                          ; 0x690a
    mov ax, word [bp - 0x0002]       ; 0x690b
    shl ax, 1                        ; 0x690e
    shl ax, 1                        ; 0x6910
    shl ax, 1                        ; 0x6912
    add ax, word [bp - 0x0006]       ; 0x6914
    add ax, strict word 0x5c         ; 0x6917
    push ax                          ; 0x691a
    call gfx_fill_area               ; 0x691b
    add sp, byte 0x0a                ; 0x691e
    mov ax, word [bp - 0x0008]       ; 0x6921
    add ax, strict word 0x2d         ; 0x6924
    push ax                          ; 0x6927
    mov ax, word [bp - 0x0002]       ; 0x6928
    shl ax, 1                        ; 0x692b
    shl ax, 1                        ; 0x692d
    shl ax, 1                        ; 0x692f
    add ax, word [bp - 0x0006]       ; 0x6931
    add ax, strict word 0x60         ; 0x6934
    push ax                          ; 0x6937
    mov ax, word [bp - 0x0008]       ; 0x6938
    add ax, strict word 0x27         ; 0x693b
    push ax                          ; 0x693e
    mov ax, word [bp - 0x0002]       ; 0x693f
    shl ax, 1                        ; 0x6942
    shl ax, 1                        ; 0x6944
    shl ax, 1                        ; 0x6946
    add ax, word [bp - 0x0006]       ; 0x6948
    add ax, strict word 0x5c         ; 0x694b
    push ax                          ; 0x694e
    call draw_inset_panel            ; 0x694f
    add sp, byte 8                   ; 0x6952
    mov ax, word [bp + 0xe]          ; 0x6955
    mov cx, 2                        ; 0x6958
    cwd                              ; 0x695b
    idiv cx                          ; 0x695c
    add ax, strict word 4            ; 0x695e
    cmp ax, word [bp - 0x0002]       ; 0x6961
    jle short @..api_idx_0074_MHUG.l2 ; 0x6964
    mov ax, 0x1a                     ; 0x6966
    jmp short @..api_idx_0074_MHUG.l3 ; 0x6969
@..api_idx_0074_MHUG.l2:
    mov ax, 0                        ; 0x696b
@..api_idx_0074_MHUG.l3:
    push ax                          ; 0x696e
    mov ax, word [bp - 0x0008]       ; 0x696f
    add ax, strict word 0x2d         ; 0x6972
    push ax                          ; 0x6975
    mov ax, word [bp - 0x0002]       ; 0x6976
    shl ax, 1                        ; 0x6979
    shl ax, 1                        ; 0x697b
    shl ax, 1                        ; 0x697d
    add ax, word [bp - 0x0006]       ; 0x697f
    add ax, strict word 0x60         ; 0x6982
    push ax                          ; 0x6985
    mov ax, word [bp - 0x0008]       ; 0x6986
    add ax, strict word 0x27         ; 0x6989
    push ax                          ; 0x698c
    mov ax, word [bp - 0x0002]       ; 0x698d
    shl ax, 1                        ; 0x6990
    shl ax, 1                        ; 0x6992
    shl ax, 1                        ; 0x6994
    add ax, word [bp - 0x0006]       ; 0x6996
    add ax, strict word 0x5c         ; 0x6999
    push ax                          ; 0x699c
    call gfx_fill_area               ; 0x699d
    add sp, byte 0x0a                ; 0x69a0
    inc word [bp - 0x0002]           ; 0x69a3
    mov ax, word [bp - 0x0002]       ; 0x69a6
    cmp ax, strict word 0xe          ; 0x69a9
    jge short @..api_idx_0074_MHUG.l4 ; 0x69ac
    jmp near @..api_idx_0074_MHUG.l1 ; 0x69ae
@..api_idx_0074_MHUG.l4:
    mov ax, 0xd                      ; 0x69b1
    push ax                          ; 0x69b4
    mov ax, 0x48                     ; 0x69b5
    push ax                          ; 0x69b8
    mov ax, word [bp - 0x0008]       ; 0x69b9
    add ax, strict word 0x1e         ; 0x69bc
    push ax                          ; 0x69bf
    mov ax, word [bp - 0x0006]       ; 0x69c0
    add ax, strict word 0x50         ; 0x69c3
    push ax                          ; 0x69c6
    mov ax, word [bp - 0x0008]       ; 0x69c7
    add ax, strict word 0x16         ; 0x69ca
    push ax                          ; 0x69cd
    mov ax, word [bp - 0x0006]       ; 0x69ce
    add ax, strict word 8            ; 0x69d1
    push ax                          ; 0x69d4
    mov ax, 0                        ; 0x69d5
    push ax                          ; 0x69d8
    call set_hotspot                 ; 0x69d9
    add sp, byte 0x0e                ; 0x69dc
    mov ax, 0                        ; 0x69df
    push ax                          ; 0x69e2
    mov ax, 0x1b                     ; 0x69e3
    push ax                          ; 0x69e6
    mov ax, word [bp - 0x0008]       ; 0x69e7
    add ax, strict word 0x2e         ; 0x69ea
    push ax                          ; 0x69ed
    mov ax, word [bp - 0x0006]       ; 0x69ee
    add ax, strict word 0x50         ; 0x69f1
    push ax                          ; 0x69f4
    mov ax, word [bp - 0x0008]       ; 0x69f5
    add ax, strict word 0x26         ; 0x69f8
    push ax                          ; 0x69fb
    mov ax, word [bp - 0x0006]       ; 0x69fc
    add ax, strict word 8            ; 0x69ff
    push ax                          ; 0x6a02
    mov ax, 1                        ; 0x6a03
    push ax                          ; 0x6a06
    call set_hotspot                 ; 0x6a07
    add sp, byte 0x0e                ; 0x6a0a
    mov ax, 0                        ; 0x6a0d
    push ax                          ; 0x6a10
    push ax                          ; 0x6a11
    push ax                          ; 0x6a12
    push ax                          ; 0x6a13
    push ax                          ; 0x6a14
    mov ax, 0xffff                   ; 0x6a15
    push ax                          ; 0x6a18
    mov ax, 2                        ; 0x6a19
    push ax                          ; 0x6a1c
    call set_hotspot                 ; 0x6a1d
    add sp, byte 0x0e                ; 0x6a20
    mov ax, word [bp - 0x000c]       ; 0x6a23
    inc ax                           ; 0x6a26
    push ax                          ; 0x6a27
    mov ax, word [bp - 0x000a]       ; 0x6a28
    inc ax                           ; 0x6a2b
    push ax                          ; 0x6a2c
    mov ax, word [bp - 0x0008]       ; 0x6a2d
    dec ax                           ; 0x6a30
    push ax                          ; 0x6a31
    mov ax, word [bp - 0x0006]       ; 0x6a32
    dec ax                           ; 0x6a35
    push ax                          ; 0x6a36
    call gfx_show_area               ; 0x6a37
    add sp, byte 8                   ; 0x6a3a
    mov ax, 0x37                     ; 0x6a3d
    cmp word [bp + 0xc], byte 0      ; 0x6a40
    je short @..api_idx_0074_MHUG.l5 ; 0x6a44
    mov ax, 0x1a                     ; 0x6a46
@..api_idx_0074_MHUG.l5:
    mov word [bp - 0x001e], ax       ; 0x6a49
    mov word [bp - 0x0018], 1        ; 0x6a4c
    mov word [bp - 0x001c], 0        ; 0x6a51
@..api_idx_0074_MHUG.l6:
    mov word [bp - 0x0022], 0        ; 0x6a56
    mov word [bp - 0x0002], 0        ; 0x6a5b
    jmp near @..api_idx_0074_MHUG.l9 ; 0x6a60
@..api_idx_0074_MHUG.l7:
    push word [bp - 0x0002]          ; 0x6a63
    call member_is_active            ; 0x6a66
    pop cx                           ; 0x6a69
    test ax, ax                      ; 0x6a6a
    je short @..api_idx_0074_MHUG.l8 ; 0x6a6c
    mov ax, 0x248                    ; 0x6a6e
    imul word [bp - 0x0002]          ; 0x6a71
    mov bx, ax                       ; 0x6a74
    mov ax, word [bx + pc_records]   ; 0x6a76
    mov bx, 0x64                     ; 0x6a7a
    imul bx                          ; 0x6a7d
    push ax                          ; 0x6a7f
    push dx                          ; 0x6a80
    mov ax, 0x248                    ; 0x6a81
    imul word [bp - 0x0002]          ; 0x6a84
    mov bx, ax                       ; 0x6a87
    mov ax, word [bx + pc_records + 0x2] ; 0x6a89
    cwd                              ; 0x6a8d
    mov cx, ax                       ; 0x6a8e
    mov bx, dx                       ; 0x6a90
    pop dx                           ; 0x6a92
    pop ax                           ; 0x6a93
    call aztec_ldv                   ; 0x6a94
    push ax                          ; 0x6a97
    push dx                          ; 0x6a98
    mov ax, 0x248                    ; 0x6a99
    imul word [bp - 0x0002]          ; 0x6a9c
    mov bx, ax                       ; 0x6a9f
    mov al, byte [bx + cell_key_grid + 0x130] ; 0x6aa1
    sub ah, ah                       ; 0x6aa5
    cwd                              ; 0x6aa7
    mov cx, ax                       ; 0x6aa8
    mov bx, dx                       ; 0x6aaa
    pop dx                           ; 0x6aac
    pop ax                           ; 0x6aad
    push ax                          ; 0x6aae
    push dx                          ; 0x6aaf
    mul bx                           ; 0x6ab0
    mov bx, ax                       ; 0x6ab2
    pop ax                           ; 0x6ab4
    mul cx                           ; 0x6ab5
    add bx, ax                       ; 0x6ab7
    pop ax                           ; 0x6ab9
    mul cx                           ; 0x6aba
    add dx, bx                       ; 0x6abc
    mov cx, 0x64                     ; 0x6abe
    mov bx, 0                        ; 0x6ac1
    call aztec_ldv                   ; 0x6ac4
    mov word [bp - 0x0020], ax       ; 0x6ac7
    mov ax, 0x248                    ; 0x6aca
    imul word [bp - 0x0002]          ; 0x6acd
    mov bx, ax                       ; 0x6ad0
    mov ax, word [bx + pc_spell_power_cap] ; 0x6ad2
    mov cx, 3                        ; 0x6ad6
    cwd                              ; 0x6ad9
    idiv cx                          ; 0x6ada
    add ax, word [bp - 0x0022]       ; 0x6adc
    mov cx, ax                       ; 0x6adf
    mov ax, word [bp - 0x0020]       ; 0x6ae1
    add cx, ax                       ; 0x6ae4
    mov word [bp - 0x0022], cx       ; 0x6ae6
@..api_idx_0074_MHUG.l8:
    inc word [bp - 0x0002]           ; 0x6ae9
@..api_idx_0074_MHUG.l9:
    mov ax, word [bp - 0x0002]       ; 0x6aec
    cmp ax, word [party_char_count]  ; 0x6aef
    jge short @..api_idx_0074_MHUG.l10 ; 0x6af3
    jmp near @..api_idx_0074_MHUG.l7 ; 0x6af5
@..api_idx_0074_MHUG.l10:
    cmp word [bp - 0x0022], byte 0   ; 0x6af8
    jg short @..api_idx_0074_MHUG.l11 ; 0x6afc
    mov ax, word [bp + 0xc]          ; 0x6afe
    inc ax                           ; 0x6b01
    mov word [spell_dialog_button], ax ; 0x6b02
    mov word [bp - 0x0018], 0        ; 0x6b05
@..api_idx_0074_MHUG.l11:
    mov ax, word [bp - 0x001c]       ; 0x6b0a
    mov word [bp - 0x0002], ax       ; 0x6b0d
    push ax                          ; 0x6b10
    call member_is_active            ; 0x6b11
    pop cx                           ; 0x6b14
    test ax, ax                      ; 0x6b15
    jne short @..api_idx_0074_MHUG.l12 ; 0x6b17
    jmp near @..api_idx_0074_MHUG.l19 ; 0x6b19
@..api_idx_0074_MHUG.l12:
    mov ax, 0x248                    ; 0x6b1c
    imul word [bp - 0x0002]          ; 0x6b1f
    mov bx, ax                       ; 0x6b22
    dec word [bx + pc_records]       ; 0x6b24
    jg short @..api_idx_0074_MHUG.l13 ; 0x6b28
    mov ax, 6                        ; 0x6b2a
    push ax                          ; 0x6b2d
    call random_below                ; 0x6b2e
    pop cx                           ; 0x6b31
    add ax, strict word 6            ; 0x6b32
    push ax                          ; 0x6b35
    mov ax, 0x248                    ; 0x6b36
    imul word [bp - 0x0002]          ; 0x6b39
    mov bx, ax                       ; 0x6b3c
    pop ax                           ; 0x6b3e
    mov byte [bx + cell_key_grid + 0x128], al ; 0x6b3f
    mov word [bx + pc_records], 0    ; 0x6b43
@..api_idx_0074_MHUG.l13:
    mov ax, 0                        ; 0x6b49
    push ax                          ; 0x6b4c
    push word [bp - 0x0002]          ; 0x6b4d
    call draw_party_member_panel     ; 0x6b50
    add sp, byte 4                   ; 0x6b53
    mov ax, word [bp - 0x0002]       ; 0x6b56
    mov cx, 2                        ; 0x6b59
    cwd                              ; 0x6b5c
    idiv cx                          ; 0x6b5d
    mov ax, dx                       ; 0x6b5f
    mov cx, 0xfc                     ; 0x6b61
    imul cx                          ; 0x6b64
    add ax, strict word 5            ; 0x6b66
    mov word [bp - 0x0012], ax       ; 0x6b69
    mov ax, word [bp - 0x0002]       ; 0x6b6c
    mov cx, 2                        ; 0x6b6f
    cwd                              ; 0x6b72
    idiv cx                          ; 0x6b73
    mov cx, 0x2d                     ; 0x6b75
    imul cx                          ; 0x6b78
    add ax, strict word 0x12         ; 0x6b7a
    mov word [bp - 0x0014], ax       ; 0x6b7d
    mov ax, word [bp - 0x0002]       ; 0x6b80
    jmp near @..api_idx_0074_MHUG.l17 ; 0x6b83
@..api_idx_0074_MHUG.l14:
    mov ax, 0x8d                     ; 0x6b86
    push ax                          ; 0x6b89
    mov ax, word [bp - 0x0012]       ; 0x6b8a
    add ax, strict word 0x3b         ; 0x6b8d
    push ax                          ; 0x6b90
    push word [bp - 0x0014]          ; 0x6b91
    push word [bp - 0x0012]          ; 0x6b94
    call gfx_show_area               ; 0x6b97
    add sp, byte 8                   ; 0x6b9a
    mov ax, word [bp - 0x0014]       ; 0x6b9d
    add ax, strict word 0x2b         ; 0x6ba0
    push ax                          ; 0x6ba3
    mov ax, 0x35                     ; 0x6ba4
    push ax                          ; 0x6ba7
    push word [bp - 0x0014]          ; 0x6ba8
    push word [bp - 0x0012]          ; 0x6bab
    call gfx_show_area               ; 0x6bae
    add sp, byte 8                   ; 0x6bb1
    jmp short @..api_idx_0074_MHUG.l19 ; 0x6bb4
@..api_idx_0074_MHUG.l15:
    mov ax, 0x8d                     ; 0x6bb6
    push ax                          ; 0x6bb9
    mov ax, word [bp - 0x0012]       ; 0x6bba
    add ax, strict word 0x3b         ; 0x6bbd
    push ax                          ; 0x6bc0
    push word [bp - 0x0014]          ; 0x6bc1
    push word [bp - 0x0012]          ; 0x6bc4
    call gfx_show_area               ; 0x6bc7
    add sp, byte 8                   ; 0x6bca
    mov ax, word [bp - 0x0014]       ; 0x6bcd
    add ax, strict word 0x2b         ; 0x6bd0
    push ax                          ; 0x6bd3
    mov ax, word [bp - 0x0012]       ; 0x6bd4
    add ax, strict word 0x3b         ; 0x6bd7
    push ax                          ; 0x6bda
    push word [bp - 0x0014]          ; 0x6bdb
    mov ax, 0x10a                    ; 0x6bde
    push ax                          ; 0x6be1
    call gfx_show_area               ; 0x6be2
    add sp, byte 8                   ; 0x6be5
    jmp short @..api_idx_0074_MHUG.l19 ; 0x6be8
@..api_idx_0074_MHUG.l16:
    mov ax, word [bp - 0x0014]       ; 0x6bea
    add ax, strict word 0x2b         ; 0x6bed
    push ax                          ; 0x6bf0
    mov ax, word [bp - 0x0012]       ; 0x6bf1
    add ax, strict word 0x3b         ; 0x6bf4
    push ax                          ; 0x6bf7
    push word [bp - 0x0014]          ; 0x6bf8
    push word [bp - 0x0012]          ; 0x6bfb
    call gfx_show_area               ; 0x6bfe
    add sp, byte 8                   ; 0x6c01
    jmp short @..api_idx_0074_MHUG.l19 ; 0x6c04
@..api_idx_0074_MHUG.l17:
    cmp ax, strict word 4            ; 0x6c06
    jne short @..api_idx_0074_MHUG.l18 ; 0x6c09
    jmp near @..api_idx_0074_MHUG.l14 ; 0x6c0b
@..api_idx_0074_MHUG.l18:
    cmp ax, strict word 5            ; 0x6c0e
    je short @..api_idx_0074_MHUG.l15 ; 0x6c11
    jmp short @..api_idx_0074_MHUG.l16 ; 0x6c13
@..api_idx_0074_MHUG.l19:
    mov ax, word [bp - 0x001c]       ; 0x6c15
    inc ax                           ; 0x6c18
    cwd                              ; 0x6c19
    idiv word [party_char_count]     ; 0x6c1a
    mov word [bp - 0x001c], dx       ; 0x6c1e
    push word [bp - 0x0022]          ; 0x6c21
    call random_below                ; 0x6c24
    pop cx                           ; 0x6c27
    push ax                          ; 0x6c28
    push word [bp - 0x0022]          ; 0x6c29
    call random_below                ; 0x6c2c
    pop cx                           ; 0x6c2f
    mov cx, ax                       ; 0x6c30
    pop ax                           ; 0x6c32
    add ax, cx                       ; 0x6c33
    add ax, word [bp - 0x0022]       ; 0x6c35
    add ax, word [bp - 0x0022]       ; 0x6c38
    mov cx, 4                        ; 0x6c3b
    cwd                              ; 0x6c3e
    idiv cx                          ; 0x6c3f
    mov word [bp - 0x001a], ax       ; 0x6c41
    mov word [bp - 0x0002], 0        ; 0x6c44
@..api_idx_0074_MHUG.l20:
    mov ax, word [bp - 0x001a]       ; 0x6c49
    add ax, strict word 0xffe2       ; 0x6c4c
    mov cx, 6                        ; 0x6c4f
    cwd                              ; 0x6c52
    idiv cx                          ; 0x6c53
    cmp ax, word [bp - 0x0002]       ; 0x6c55
    jle short @..api_idx_0074_MHUG.l21 ; 0x6c58
    mov ax, word [bp - 0x001e]       ; 0x6c5a
    jmp short @..api_idx_0074_MHUG.l22 ; 0x6c5d
@..api_idx_0074_MHUG.l21:
    mov ax, 0                        ; 0x6c5f
@..api_idx_0074_MHUG.l22:
    push ax                          ; 0x6c62
    mov ax, word [bp - 0x0008]       ; 0x6c63
    add ax, strict word 0x15         ; 0x6c66
    push ax                          ; 0x6c69
    mov ax, word [bp - 0x0002]       ; 0x6c6a
    shl ax, 1                        ; 0x6c6d
    shl ax, 1                        ; 0x6c6f
    shl ax, 1                        ; 0x6c71
    add ax, word [bp - 0x0006]       ; 0x6c73
    add ax, strict word 0x60         ; 0x6c76
    push ax                          ; 0x6c79
    mov ax, word [bp - 0x0008]       ; 0x6c7a
    add ax, strict word 0xf          ; 0x6c7d
    push ax                          ; 0x6c80
    mov ax, word [bp - 0x0002]       ; 0x6c81
    shl ax, 1                        ; 0x6c84
    shl ax, 1                        ; 0x6c86
    shl ax, 1                        ; 0x6c88
    add ax, word [bp - 0x0006]       ; 0x6c8a
    add ax, strict word 0x5c         ; 0x6c8d
    push ax                          ; 0x6c90
    call gfx_fill_area               ; 0x6c91
    add sp, byte 0x0a                ; 0x6c94
    inc word [bp - 0x0002]           ; 0x6c97
    mov ax, word [bp - 0x0002]       ; 0x6c9a
    cmp ax, strict word 0xe          ; 0x6c9d
    jl short @..api_idx_0074_MHUG.l20 ; 0x6ca0
    mov ax, word [bp - 0x0008]       ; 0x6ca2
    add ax, strict word 0x15         ; 0x6ca5
    push ax                          ; 0x6ca8
    mov ax, word [bp - 0x0006]       ; 0x6ca9
    add ax, 0xcc                     ; 0x6cac
    push ax                          ; 0x6caf
    mov ax, word [bp - 0x0008]       ; 0x6cb0
    add ax, strict word 0xf          ; 0x6cb3
    push ax                          ; 0x6cb6
    mov ax, word [bp - 0x0006]       ; 0x6cb7
    add ax, strict word 0x5c         ; 0x6cba
    push ax                          ; 0x6cbd
    call gfx_show_area               ; 0x6cbe
    add sp, byte 8                   ; 0x6cc1
    call loc_IKLI                    ; 0x6cc4
    test ax, ax                      ; 0x6cc7
    jne short @..api_idx_0074_MHUG.l23 ; 0x6cc9
    mov ax, 0x19                     ; 0x6ccb
    push ax                          ; 0x6cce
    call delay_ms                    ; 0x6ccf
    pop cx                           ; 0x6cd2
@..api_idx_0074_MHUG.l23:
    mov ax, hotspot_rects            ; 0x6cd3
    push ax                          ; 0x6cd6
    call poll_hotspots               ; 0x6cd7
    pop cx                           ; 0x6cda
    dec ax                           ; 0x6cdb
    mov word [bp - 0x0016], ax       ; 0x6cdc
    cmp word [hotspot_hit], byte 1   ; 0x6cdf
    je short @..api_idx_0074_MHUG.l24 ; 0x6ce4
    jmp near @..api_idx_0074_MHUG.l33 ; 0x6ce6
@..api_idx_0074_MHUG.l24:
    jmp near @..api_idx_0074_MHUG.l31 ; 0x6ce9
@..api_idx_0074_MHUG.l25:
    cmp word [bp + 0x8], byte 0      ; 0x6cec
    jne short @..api_idx_0074_MHUG.l26 ; 0x6cf0
    jmp near @..api_idx_0074_MHUG.l28 ; 0x6cf2
@..api_idx_0074_MHUG.l26:
    mov ax, 1                        ; 0x6cf5
    push ax                          ; 0x6cf8
    mov ax, word [bp - 0x0008]       ; 0x6cf9
    add ax, strict word 0x1e         ; 0x6cfc
    push ax                          ; 0x6cff
    mov ax, word [bp - 0x0006]       ; 0x6d00
    add ax, strict word 0x50         ; 0x6d03
    push ax                          ; 0x6d06
    mov ax, word [bp - 0x0008]       ; 0x6d07
    add ax, strict word 0x16         ; 0x6d0a
    push ax                          ; 0x6d0d
    mov ax, word [bp - 0x0006]       ; 0x6d0e
    add ax, strict word 8            ; 0x6d11
    push ax                          ; 0x6d14
    call loc_OVQV                    ; 0x6d15
    add sp, byte 0x0a                ; 0x6d18
    mov ax, 0                        ; 0x6d1b
    push ax                          ; 0x6d1e
    mov ax, 0x1a                     ; 0x6d1f
    push ax                          ; 0x6d22
    call gfx_set_text_color          ; 0x6d23
    add sp, byte 4                   ; 0x6d26
    mov ax, word [bp - 0x0008]       ; 0x6d29
    add ax, strict word 0x18         ; 0x6d2c
    push ax                          ; 0x6d2f
    lea ax, word [bp - 0x0074]       ; 0x6d30
    push ax                          ; 0x6d33
    call aztec_strlen                ; 0x6d34
    pop cx                           ; 0x6d37
    mov cx, ax                       ; 0x6d38
    mov ax, 0xc                      ; 0x6d3a
    sub ax, cx                       ; 0x6d3d
    mov cx, 6                        ; 0x6d3f
    imul cx                          ; 0x6d42
    mov cx, 2                        ; 0x6d44
    cwd                              ; 0x6d47
    idiv cx                          ; 0x6d48
    add ax, word [bp - 0x0006]       ; 0x6d4a
    add ax, strict word 9            ; 0x6d4d
    push ax                          ; 0x6d50
    call gfx_set_text_pos            ; 0x6d51
    add sp, byte 4                   ; 0x6d54
    mov ax, 0                        ; 0x6d57
    push ax                          ; 0x6d5a
    lea ax, word [bp - 0x0074]       ; 0x6d5b
    push ax                          ; 0x6d5e
    call draw_text_glyphs            ; 0x6d5f
    add sp, byte 4                   ; 0x6d62
    mov ax, word [bp - 0x0008]       ; 0x6d65
    add ax, strict word 0x1e         ; 0x6d68
    push ax                          ; 0x6d6b
    mov ax, word [bp - 0x0006]       ; 0x6d6c
    add ax, strict word 0x50         ; 0x6d6f
    push ax                          ; 0x6d72
    mov ax, word [bp - 0x0008]       ; 0x6d73
    add ax, strict word 0x16         ; 0x6d76
    push ax                          ; 0x6d79
    mov ax, word [bp - 0x0006]       ; 0x6d7a
    add ax, strict word 8            ; 0x6d7d
    push ax                          ; 0x6d80
    call gfx_show_area               ; 0x6d81
    add sp, byte 8                   ; 0x6d84
    mov ax, 4                        ; 0x6d87
    push ax                          ; 0x6d8a
    call play_sound_effect           ; 0x6d8b
    pop cx                           ; 0x6d8e
    mov ax, word [bp + 0xe]          ; 0x6d8f
    mov cx, 2                        ; 0x6d92
    cwd                              ; 0x6d95
    idiv cx                          ; 0x6d96
    add ax, strict word 4            ; 0x6d98
    push ax                          ; 0x6d9b
    mov ax, word [bp - 0x001a]       ; 0x6d9c
    add ax, strict word 0xffe2       ; 0x6d9f
    mov cx, 6                        ; 0x6da2
    cwd                              ; 0x6da5
    idiv cx                          ; 0x6da6
    mov cx, ax                       ; 0x6da8
    pop ax                           ; 0x6daa
    cmp ax, cx                       ; 0x6dab
    jg short @..api_idx_0074_MHUG.l27 ; 0x6dad
    mov word [spell_dialog_button], 0 ; 0x6daf
    mov word [bp - 0x0018], 0        ; 0x6db5
    jmp short @..api_idx_0074_MHUG.l28 ; 0x6dba
@..api_idx_0074_MHUG.l27:
    mov ax, word [bp + 0xc]          ; 0x6dbc
    inc ax                           ; 0x6dbf
    mov word [spell_dialog_button], ax ; 0x6dc0
    mov word [bp - 0x0018], 0        ; 0x6dc3
@..api_idx_0074_MHUG.l28:
    jmp short @..api_idx_0074_MHUG.l33 ; 0x6dc8
@..api_idx_0074_MHUG.l29:
    cmp word [bp + 0xa], byte 0      ; 0x6dca
    je short @..api_idx_0074_MHUG.l30 ; 0x6dce
    mov ax, 1                        ; 0x6dd0
    push ax                          ; 0x6dd3
    push ax                          ; 0x6dd4
    mov ax, 0xc                      ; 0x6dd5
    push ax                          ; 0x6dd8
    mov ax, word [bp - 0x0008]       ; 0x6dd9
    add ax, strict word 0x26         ; 0x6ddc
    push ax                          ; 0x6ddf
    mov ax, word [bp - 0x0006]       ; 0x6de0
    add ax, strict word 8            ; 0x6de3
    push ax                          ; 0x6de6
    call flash_button                ; 0x6de7
    add sp, byte 0x0a                ; 0x6dea
    mov ax, 0                        ; 0x6ded
    push ax                          ; 0x6df0
    mov ax, 1                        ; 0x6df1
    push ax                          ; 0x6df4
    mov ax, 0xc                      ; 0x6df5
    push ax                          ; 0x6df8
    mov ax, word [bp - 0x0008]       ; 0x6df9
    add ax, strict word 0x26         ; 0x6dfc
    push ax                          ; 0x6dff
    mov ax, word [bp - 0x0006]       ; 0x6e00
    add ax, strict word 8            ; 0x6e03
    push ax                          ; 0x6e06
    call flash_button                ; 0x6e07
    add sp, byte 0x0a                ; 0x6e0a
    mov word [spell_dialog_button], 0xffff ; 0x6e0d
    mov word [bp - 0x0018], 0        ; 0x6e13
@..api_idx_0074_MHUG.l30:
    jmp short @..api_idx_0074_MHUG.l33 ; 0x6e18
@..api_idx_0074_MHUG.l31:
    cmp ax, strict word 0            ; 0x6e1a
    jne short @..api_idx_0074_MHUG.l32 ; 0x6e1d
    jmp near @..api_idx_0074_MHUG.l25 ; 0x6e1f
@..api_idx_0074_MHUG.l32:
    cmp ax, strict word 1            ; 0x6e22
    je short @..api_idx_0074_MHUG.l29 ; 0x6e25
@..api_idx_0074_MHUG.l33:
    cmp word [bp - 0x0018], byte 0   ; 0x6e27
    je short @..api_idx_0074_MHUG.l34 ; 0x6e2b
    jmp near @..api_idx_0074_MHUG.l6 ; 0x6e2d
@..api_idx_0074_MHUG.l34:
    push word [message_delay]        ; 0x6e30
    call api_idx_0004_UQUT           ; 0x6e34
    pop cx                           ; 0x6e37
    mov word [show_area_bottom], 0x8f ; 0x6e38
    mov ax, 1                        ; 0x6e3e
    push ax                          ; 0x6e41
    push word [bp - 0x0024]          ; 0x6e42
    call restore_saved_screen        ; 0x6e45
    add sp, byte 4                   ; 0x6e48
    mov ax, word [bp - 0x000c]       ; 0x6e4b
    inc ax                           ; 0x6e4e
    push ax                          ; 0x6e4f
    mov ax, word [bp - 0x000a]       ; 0x6e50
    inc ax                           ; 0x6e53
    push ax                          ; 0x6e54
    mov ax, word [bp - 0x0008]       ; 0x6e55
    dec ax                           ; 0x6e58
    push ax                          ; 0x6e59
    mov ax, word [bp - 0x0006]       ; 0x6e5a
    dec ax                           ; 0x6e5d
    push ax                          ; 0x6e5e
    call gfx_show_area               ; 0x6e5f
    add sp, byte 8                   ; 0x6e62
    mov ax, word [spell_dialog_button] ; 0x6e65
    ret                              ; 0x6e68
