; auto-generated
api_idx_0044_QRMH:
    mov ax, 0xffbc                   ; 0x786c
    call aztec_csav                  ; 0x786f
    mov word [bp - 2], 0             ; 0x7872
.back1:
    mov ax, word [bp - 2]            ; 0x7877
    shl ax, 1                        ; 0x787a
    mov bx, ax                       ; 0x787c
    mov word [bx + party_slot_frame], 0 ; 0x787e
    inc word [bp - 2]                ; 0x7884
    mov ax, word [bp - 2]            ; 0x7887
    cmp ax, strict word 6            ; 0x788a
    jl short .back1                  ; 0x788d
    mov word [spell_dialog_result], 0xffff ; 0x788f
    mov word [bp - 4], 0x32          ; 0x7895
    mov word [bp - 6], 0x73          ; 0x789a
    mov word [bp - 8], 0x10d         ; 0x789f
    mov word [bp - 0xa], 0xc5        ; 0x78a4
    mov word [bp - 0xc], 0x95        ; 0x78a9
    mov word [bp - 0x14], 0x16       ; 0x78ae
    mov ax, dseg_90e8                ; 0x78b3
    push ax                          ; 0x78b6
    mov ax, word [bp - 0xa]          ; 0x78b7
    inc ax                           ; 0x78ba
    push ax                          ; 0x78bb
    mov ax, word [bp - 8]            ; 0x78bc
    inc ax                           ; 0x78bf
    push ax                          ; 0x78c0
    mov ax, word [bp - 6]            ; 0x78c1
    dec ax                           ; 0x78c4
    push ax                          ; 0x78c5
    mov ax, word [bp - 4]            ; 0x78c6
    dec ax                           ; 0x78c9
    push ax                          ; 0x78ca
    call save_screen_area            ; 0x78cb
    add sp, byte 0xa                 ; 0x78ce
    mov word [bp - 0x3a], ax         ; 0x78d1
    push word [bp - 0xa]             ; 0x78d4
    push word [bp - 8]               ; 0x78d7
    push word [bp - 6]               ; 0x78da
    push word [bp - 4]               ; 0x78dd
    call draw_dialog_box             ; 0x78e0
    add sp, byte 8                   ; 0x78e3
    push word [bp - 0xa]             ; 0x78e6
    push word [bp - 8]               ; 0x78e9
    push word [bp - 6]               ; 0x78ec
    mov ax, 0x95                     ; 0x78ef
    push ax                          ; 0x78f2
    call draw_dialog_box             ; 0x78f3
    add sp, byte 8                   ; 0x78f6
    call draw_marker_glyph           ; 0x78f9
    push word [bp + 4]               ; 0x78fc
    call draw_realm_spell_points     ; 0x78ff
    pop cx                           ; 0x7902
    mov ax, 1                        ; 0x7903
    push ax                          ; 0x7906
    mov ax, 0x73                     ; 0x7907
    push ax                          ; 0x790a
    mov ax, 0x32                     ; 0x790b
    push ax                          ; 0x790e
    call draw_party_slot_letters     ; 0x790f
    add sp, byte 6                   ; 0x7912
    lea ax, word [bp - 0x38]         ; 0x7915
    push ax                          ; 0x7918
    push word [bp + 6]               ; 0x7919
    call load_message_string         ; 0x791c
    add sp, byte 4                   ; 0x791f
    lea ax, word [bp - 0x38]         ; 0x7922
    push ax                          ; 0x7925
    push word [bp + 8]               ; 0x7926
    mov ax, 1                        ; 0x7929
    push ax                          ; 0x792c
    mov ax, 8                        ; 0x792d
    push ax                          ; 0x7930
    mov ax, word [bp - 6]            ; 0x7931
    add ax, strict word 6            ; 0x7934
    push ax                          ; 0x7937
    mov ax, word [bp - 0xc]          ; 0x7938
    add ax, strict word 6            ; 0x793b
    push ax                          ; 0x793e
    call draw_button                 ; 0x793f
    add sp, byte 0xc                 ; 0x7942
    lea ax, word [bp - 0x38]         ; 0x7945
    push ax                          ; 0x7948
    mov ax, word [bp + 6]            ; 0x7949
    inc ax                           ; 0x794c
    push ax                          ; 0x794d
    call load_message_string         ; 0x794e
    add sp, byte 4                   ; 0x7951
    lea ax, word [bp - 0x38]         ; 0x7954
    push ax                          ; 0x7957
    mov ax, 1                        ; 0x7958
    push ax                          ; 0x795b
    push ax                          ; 0x795c
    mov ax, 8                        ; 0x795d
    push ax                          ; 0x7960
    mov ax, word [bp - 6]            ; 0x7961
    add ax, strict word 6            ; 0x7964
    push ax                          ; 0x7967
    mov ax, word [bp - 0xc]          ; 0x7968
    add ax, strict word 0x42         ; 0x796b
    push ax                          ; 0x796e
    call draw_button                 ; 0x796f
    add sp, byte 0xc                 ; 0x7972
    mov ax, word [bp - 6]            ; 0x7975
    add ax, strict word 0x14         ; 0x7978
    push ax                          ; 0x797b
    mov ax, word [bp - 0xc]          ; 0x797c
    add ax, strict word 0x48         ; 0x797f
    push ax                          ; 0x7982
    call call_set_text_pos           ; 0x7983
    add sp, byte 4                   ; 0x7986
    mov ax, 0                        ; 0x7989
    push ax                          ; 0x798c
    mov ax, 0xcd                     ; 0x798d
    push ax                          ; 0x7990
    call call_set_text_color         ; 0x7991
    add sp, byte 4                   ; 0x7994
    mov ax, 2                        ; 0x7997
    push ax                          ; 0x799a
    mov ax, 0xa                      ; 0x799b
    push ax                          ; 0x799e
    call draw_font_glyph             ; 0x799f
    add sp, byte 4                   ; 0x79a2
    mov word [bp - 0x3c], 0xffff     ; 0x79a5
    mov word [bp - 0x3e], 0          ; 0x79aa
    mov word [bp - 0x40], 0          ; 0x79af
    mov word [bp - 2], 0             ; 0x79b4
.back2:
    mov ax, 0                        ; 0x79b9
    mov cx, word [bp - 2]            ; 0x79bc
    cmp cx, word [bp - 0x3e]         ; 0x79bf
    jne short .forward1              ; 0x79c2
    mov ax, 1                        ; 0x79c4
.forward1:
    push ax                          ; 0x79c7
    push cx                          ; 0x79c8
    mov ax, word [bp - 6]            ; 0x79c9
    add ax, strict word 0x14         ; 0x79cc
    push ax                          ; 0x79cf
    mov ax, word [bp - 0xc]          ; 0x79d0
    add ax, strict word 0xc          ; 0x79d3
    push ax                          ; 0x79d6
    call draw_power_digit            ; 0x79d7
    add sp, byte 8                   ; 0x79da
    inc word [bp - 2]                ; 0x79dd
    mov ax, word [bp - 2]            ; 0x79e0
    cmp ax, strict word 7            ; 0x79e3
    jl short .back2                  ; 0x79e6
    mov word [bp - 0x42], 0          ; 0x79e8
    mov ax, 0                        ; 0x79ed
    push ax                          ; 0x79f0
    push ax                          ; 0x79f1
    push word [bp - 0x42]            ; 0x79f2
    mov ax, word [bp - 6]            ; 0x79f5
    add ax, strict word 0x15         ; 0x79f8
    push ax                          ; 0x79fb
    mov ax, word [bp - 0xc]          ; 0x79fc
    add ax, strict word 0x5e         ; 0x79ff
    push ax                          ; 0x7a02
    call loc_IMPO                    ; 0x7a03
    add sp, byte 0xa                 ; 0x7a06
    push word [bp - 0x42]            ; 0x7a09
    push word [bp + 4]               ; 0x7a0c
    call api_idx_0004_NIJP           ; 0x7a0f
    add sp, byte 4                   ; 0x7a12
    mov word [bp - 0x44], ax         ; 0x7a15
    mov ax, 7                        ; 0x7a18
    cmp word [bp - 0x44], byte 7     ; 0x7a1b
    jge short .forward2              ; 0x7a1f
    mov ax, word [bp - 0x44]         ; 0x7a21
.forward2:
    mov word [bp - 0x24], ax         ; 0x7a24
    mov word [bp - 0x18], 0          ; 0x7a27
    mov word [bp - 0x22], 0xffff     ; 0x7a2c
    push ax                          ; 0x7a31
    push word [bp - 0x22]            ; 0x7a32
    push word [bp - 0x18]            ; 0x7a35
    mov ax, 7                        ; 0x7a38
    push ax                          ; 0x7a3b
    mov ax, 0xf                      ; 0x7a3c
    push ax                          ; 0x7a3f
    mov ax, word [bp - 6]            ; 0x7a40
    add ax, strict word 0x22         ; 0x7a43
    push ax                          ; 0x7a46
    mov ax, word [bp - 0xc]          ; 0x7a47
    add ax, strict word 6            ; 0x7a4a
    push ax                          ; 0x7a4d
    call draw_text_list              ; 0x7a4e
    add sp, byte 0xe                 ; 0x7a51
    mov word [bp - 0x12], 0          ; 0x7a54
    push word [bp - 0x12]            ; 0x7a59
    mov ax, 7                        ; 0x7a5c
    push ax                          ; 0x7a5f
    mov ax, 8                        ; 0x7a60
    push ax                          ; 0x7a63
    mov ax, word [bp - 6]            ; 0x7a64
    add ax, strict word 0x22         ; 0x7a67
    push ax                          ; 0x7a6a
    mov ax, word [bp - 0xc]          ; 0x7a6b
    add ax, strict word 0x6a         ; 0x7a6e
    push ax                          ; 0x7a71
    call draw_scrollbar              ; 0x7a72
    add sp, byte 0xa                 ; 0x7a75
    mov ax, 0                        ; 0x7a78
    push ax                          ; 0x7a7b
    push ax                          ; 0x7a7c
    mov ax, word [bp - 6]            ; 0x7a7d
    add ax, word [bp - 0x12]         ; 0x7a80
    add ax, strict word 0x2e         ; 0x7a83
    push ax                          ; 0x7a86
    mov ax, word [bp - 0xc]          ; 0x7a87
    add ax, strict word 0x72         ; 0x7a8a
    push ax                          ; 0x7a8d
    mov ax, word [bp - 6]            ; 0x7a8e
    add ax, word [bp - 0x12]         ; 0x7a91
    add ax, strict word 0x2a         ; 0x7a94
    push ax                          ; 0x7a97
    mov ax, word [bp - 0xc]          ; 0x7a98
    add ax, strict word 0x6a         ; 0x7a9b
    push ax                          ; 0x7a9e
    mov ax, 0                        ; 0x7a9f
    push ax                          ; 0x7aa2
    call set_hotspot                 ; 0x7aa3
    add sp, byte 0xe                 ; 0x7aa6
    mov ax, 0                        ; 0x7aa9
    push ax                          ; 0x7aac
    mov ax, 9                        ; 0x7aad
    push ax                          ; 0x7ab0
    mov ax, word [bp - 6]            ; 0x7ab1
    add ax, strict word 0x28         ; 0x7ab4
    push ax                          ; 0x7ab7
    mov ax, word [bp - 0xc]          ; 0x7ab8
    add ax, strict word 0x72         ; 0x7abb
    push ax                          ; 0x7abe
    mov ax, word [bp - 6]            ; 0x7abf
    add ax, strict word 0x22         ; 0x7ac2
    push ax                          ; 0x7ac5
    mov ax, word [bp - 0xc]          ; 0x7ac6
    add ax, strict word 0x6a         ; 0x7ac9
    push ax                          ; 0x7acc
    mov ax, 1                        ; 0x7acd
    push ax                          ; 0x7ad0
    call set_hotspot                 ; 0x7ad1
    add sp, byte 0xe                 ; 0x7ad4
    mov ax, 0                        ; 0x7ad7
    push ax                          ; 0x7ada
    mov ax, 0xb                      ; 0x7adb
    push ax                          ; 0x7ade
    mov ax, word [bp - 6]            ; 0x7adf
    add ax, strict word 0x4c         ; 0x7ae2
    push ax                          ; 0x7ae5
    mov ax, word [bp - 0xc]          ; 0x7ae6
    add ax, strict word 0x72         ; 0x7ae9
    push ax                          ; 0x7aec
    mov ax, word [bp - 6]            ; 0x7aed
    add ax, strict word 0x46         ; 0x7af0
    push ax                          ; 0x7af3
    mov ax, word [bp - 0xc]          ; 0x7af4
    add ax, strict word 0x6a         ; 0x7af7
    push ax                          ; 0x7afa
    mov ax, 2                        ; 0x7afb
    push ax                          ; 0x7afe
    call set_hotspot                 ; 0x7aff
    add sp, byte 0xe                 ; 0x7b02
    mov ax, 0                        ; 0x7b05
    push ax                          ; 0x7b08
    mov ax, 0xd                      ; 0x7b09
    push ax                          ; 0x7b0c
    mov ax, word [bp - 6]            ; 0x7b0d
    add ax, strict word 0xe          ; 0x7b10
    push ax                          ; 0x7b13
    mov ax, word [bp - 0xc]          ; 0x7b14
    add ax, strict word 0x36         ; 0x7b17
    push ax                          ; 0x7b1a
    mov ax, word [bp - 6]            ; 0x7b1b
    add ax, strict word 6            ; 0x7b1e
    push ax                          ; 0x7b21
    mov ax, word [bp - 0xc]          ; 0x7b22
    add ax, strict word 6            ; 0x7b25
    push ax                          ; 0x7b28
    mov ax, 3                        ; 0x7b29
    push ax                          ; 0x7b2c
    call set_hotspot                 ; 0x7b2d
    add sp, byte 0xe                 ; 0x7b30
    mov ax, 0                        ; 0x7b33
    push ax                          ; 0x7b36
    mov ax, 0x1b                     ; 0x7b37
    push ax                          ; 0x7b3a
    mov ax, word [bp - 6]            ; 0x7b3b
    add ax, strict word 0xe          ; 0x7b3e
    push ax                          ; 0x7b41
    mov ax, word [bp - 0xc]          ; 0x7b42
    add ax, strict word 0x72         ; 0x7b45
    push ax                          ; 0x7b48
    mov ax, word [bp - 6]            ; 0x7b49
    add ax, strict word 6            ; 0x7b4c
    push ax                          ; 0x7b4f
    mov ax, word [bp - 0xc]          ; 0x7b50
    add ax, strict word 0x42         ; 0x7b53
    push ax                          ; 0x7b56
    mov ax, 4                        ; 0x7b57
    push ax                          ; 0x7b5a
    call set_hotspot                 ; 0x7b5b
    add sp, byte 0xe                 ; 0x7b5e
    mov word [bp - 2], 0             ; 0x7b61
.back3:
    mov ax, 0                        ; 0x7b66
    push ax                          ; 0x7b69
    mov ax, word [bp - 2]            ; 0x7b6a
    add ax, strict word 0x31         ; 0x7b6d
    cbw                              ; 0x7b70
    push ax                          ; 0x7b71
    mov ax, word [bp - 6]            ; 0x7b72
    add ax, strict word 0x1b         ; 0x7b75
    push ax                          ; 0x7b78
    mov ax, 0xa                      ; 0x7b79
    imul word [bp - 2]               ; 0x7b7c
    add ax, word [bp - 0xc]          ; 0x7b7f
    add ax, strict word 0x13         ; 0x7b82
    push ax                          ; 0x7b85
    mov ax, word [bp - 6]            ; 0x7b86
    add ax, strict word 0x14         ; 0x7b89
    push ax                          ; 0x7b8c
    mov ax, 0xa                      ; 0x7b8d
    imul word [bp - 2]               ; 0x7b90
    add ax, word [bp - 0xc]          ; 0x7b93
    add ax, strict word 0xc          ; 0x7b96
    push ax                          ; 0x7b99
    mov ax, word [bp - 2]            ; 0x7b9a
    add ax, strict word 5            ; 0x7b9d
    push ax                          ; 0x7ba0
    call set_hotspot                 ; 0x7ba1
    add sp, byte 0xe                 ; 0x7ba4
    inc word [bp - 2]                ; 0x7ba7
    mov ax, word [bp - 2]            ; 0x7baa
    cmp ax, strict word 7            ; 0x7bad
    jl short .back3                  ; 0x7bb0
    mov ax, 0                        ; 0x7bb2
    push ax                          ; 0x7bb5
    mov ax, 0x46                     ; 0x7bb6
    push ax                          ; 0x7bb9
    mov ax, 0x87                     ; 0x7bba
    push ax                          ; 0x7bbd
    mov ax, 0x52                     ; 0x7bbe
    push ax                          ; 0x7bc1
    mov ax, 0x74                     ; 0x7bc2
    push ax                          ; 0x7bc5
    mov ax, 0x46                     ; 0x7bc6
    push ax                          ; 0x7bc9
    mov ax, 0xc                      ; 0x7bca
    push ax                          ; 0x7bcd
    call set_hotspot                 ; 0x7bce
    add sp, byte 0xe                 ; 0x7bd1
    mov ax, 0                        ; 0x7bd4
    push ax                          ; 0x7bd7
    mov ax, 0x57                     ; 0x7bd8
    push ax                          ; 0x7bdb
    mov ax, 0x9d                     ; 0x7bdc
    push ax                          ; 0x7bdf
    mov ax, 0x4b                     ; 0x7be0
    push ax                          ; 0x7be3
    mov ax, 0x90                     ; 0x7be4
    push ax                          ; 0x7be7
    mov ax, 0x32                     ; 0x7be8
    push ax                          ; 0x7beb
    mov ax, 0xd                      ; 0x7bec
    push ax                          ; 0x7bef
    call set_hotspot                 ; 0x7bf0
    add sp, byte 0xe                 ; 0x7bf3
    mov ax, 0                        ; 0x7bf6
    push ax                          ; 0x7bf9
    mov ax, 0x41                     ; 0x7bfa
    push ax                          ; 0x7bfd
    mov ax, 0xbb                     ; 0x7bfe
    push ax                          ; 0x7c01
    mov ax, 0x5f                     ; 0x7c02
    push ax                          ; 0x7c05
    mov ax, 0xa5                     ; 0x7c06
    push ax                          ; 0x7c09
    mov ax, 0x43                     ; 0x7c0a
    push ax                          ; 0x7c0d
    mov ax, 0xe                      ; 0x7c0e
    push ax                          ; 0x7c11
    call set_hotspot                 ; 0x7c12
    add sp, byte 0xe                 ; 0x7c15
    mov ax, 0                        ; 0x7c18
    push ax                          ; 0x7c1b
    mov ax, 0x45                     ; 0x7c1c
    push ax                          ; 0x7c1f
    mov ax, 0x89                     ; 0x7c20
    push ax                          ; 0x7c23
    mov ax, 0x87                     ; 0x7c24
    push ax                          ; 0x7c27
    mov ax, 0x77                     ; 0x7c28
    push ax                          ; 0x7c2b
    mov ax, 0x6c                     ; 0x7c2c
    push ax                          ; 0x7c2f
    mov ax, 0xf                      ; 0x7c30
    push ax                          ; 0x7c33
    call set_hotspot                 ; 0x7c34
    add sp, byte 0xe                 ; 0x7c37
    mov ax, 0                        ; 0x7c3a
    push ax                          ; 0x7c3d
    mov ax, 0x4d                     ; 0x7c3e
    push ax                          ; 0x7c41
    mov ax, 0x9c                     ; 0x7c42
    push ax                          ; 0x7c45
    mov ax, 0x8e                     ; 0x7c46
    push ax                          ; 0x7c49
    mov ax, 0x91                     ; 0x7c4a
    push ax                          ; 0x7c4d
    mov ax, 0x7f                     ; 0x7c4e
    push ax                          ; 0x7c51
    mov ax, 0x10                     ; 0x7c52
    push ax                          ; 0x7c55
    call set_hotspot                 ; 0x7c56
    add sp, byte 0xe                 ; 0x7c59
    mov ax, 0                        ; 0x7c5c
    push ax                          ; 0x7c5f
    mov ax, 0x44                     ; 0x7c60
    push ax                          ; 0x7c63
    mov ax, 0xb9                     ; 0x7c64
    push ax                          ; 0x7c67
    mov ax, 0x81                     ; 0x7c68
    push ax                          ; 0x7c6b
    mov ax, 0xa6                     ; 0x7c6c
    push ax                          ; 0x7c6f
    mov ax, 0x71                     ; 0x7c70
    push ax                          ; 0x7c73
    mov ax, 0x11                     ; 0x7c74
    push ax                          ; 0x7c77
    call set_hotspot                 ; 0x7c78
    add sp, byte 0xe                 ; 0x7c7b
    mov ax, 7                        ; 0x7c7e
    cmp word [bp - 0x44], byte 7     ; 0x7c81
    jge short .forward3              ; 0x7c85
    mov ax, word [bp - 0x44]         ; 0x7c87
.forward3:
    mov word [bp - 0x20], ax         ; 0x7c8a
    mov word [bp - 2], 0             ; 0x7c8d
.back4:
    mov ax, 0                        ; 0x7c92
    push ax                          ; 0x7c95
    push ax                          ; 0x7c96
    mov ax, 6                        ; 0x7c97
    imul word [bp - 2]               ; 0x7c9a
    add ax, word [bp - 6]            ; 0x7c9d
    add ax, strict word 0x28         ; 0x7ca0
    push ax                          ; 0x7ca3
    mov ax, word [bp - 0xc]          ; 0x7ca4
    add ax, strict word 0x62         ; 0x7ca7
    push ax                          ; 0x7caa
    mov ax, 6                        ; 0x7cab
    imul word [bp - 2]               ; 0x7cae
    add ax, word [bp - 6]            ; 0x7cb1
    add ax, strict word 0x22         ; 0x7cb4
    push ax                          ; 0x7cb7
    mov ax, word [bp - 0xc]          ; 0x7cb8
    add ax, strict word 6            ; 0x7cbb
    push ax                          ; 0x7cbe
    mov ax, word [bp - 2]            ; 0x7cbf
    add ax, strict word 0x12         ; 0x7cc2
    push ax                          ; 0x7cc5
    call set_hotspot                 ; 0x7cc6
    add sp, byte 0xe                 ; 0x7cc9
    inc word [bp - 2]                ; 0x7ccc
    mov ax, word [bp - 2]            ; 0x7ccf
    cmp ax, strict word 7            ; 0x7cd2
    jl short .back4                  ; 0x7cd5
    mov ax, 0                        ; 0x7cd7
    push ax                          ; 0x7cda
    push ax                          ; 0x7cdb
    push ax                          ; 0x7cdc
    push ax                          ; 0x7cdd
    push ax                          ; 0x7cde
    mov ax, 0xffff                   ; 0x7cdf
    push ax                          ; 0x7ce2
    mov ax, 0x19                     ; 0x7ce3
    push ax                          ; 0x7ce6
    call set_hotspot                 ; 0x7ce7
    add sp, byte 0xe                 ; 0x7cea
    mov ax, word [bp - 0xa]          ; 0x7ced
    inc ax                           ; 0x7cf0
    push ax                          ; 0x7cf1
    mov ax, 0x139                    ; 0x7cf2
    push ax                          ; 0x7cf5
    mov ax, word [bp - 6]            ; 0x7cf6
    dec ax                           ; 0x7cf9
    push ax                          ; 0x7cfa
    mov ax, 9                        ; 0x7cfb
    push ax                          ; 0x7cfe
    call call_show_area              ; 0x7cff
    add sp, byte 8                   ; 0x7d02
    mov word [party_redraw_interval], 5 ; 0x7d05
    les bx, word [tick_counter_ptr]  ; 0x7d0b
    mov ax, word [es:bx]             ; 0x7d0f
    mov dx, word [es:bx + 2]         ; 0x7d12
    mov word [party_redraw_last_tick_hi], dx ; 0x7d16
    mov word [party_redraw_last_tick], ax ; 0x7d1a
    mov word [bp - 0x1c], 1          ; 0x7d1d
.back5:
    push word [bp - 0x42]            ; 0x7d22
    push word [bp + 4]               ; 0x7d25
    call periodic_party_redraw       ; 0x7d28
    add sp, byte 4                   ; 0x7d2b
    mov ax, hotspot_rects            ; 0x7d2e
    push ax                          ; 0x7d31
    call poll_hotspots               ; 0x7d32
    pop cx                           ; 0x7d35
    dec ax                           ; 0x7d36
    mov word [bp - 0x1a], ax         ; 0x7d37
    cmp word [space_key_hit], byte 0 ; 0x7d3a
    je short .forward4               ; 0x7d3f
    push word [bp - 0x20]            ; 0x7d41
    push word [bp - 0x18]            ; 0x7d44
    push word [bp - 0x22]            ; 0x7d47
    call loc_UVUO                    ; 0x7d4a
    add sp, byte 6                   ; 0x7d4d
    mov word [bp - 0x22], ax         ; 0x7d50
    mov word [hotspot_hit], 1        ; 0x7d53
    sub ax, word [bp - 0x18]         ; 0x7d59
    add ax, strict word 0x12         ; 0x7d5c
    mov word [bp - 0x1a], ax         ; 0x7d5f
.forward4:
    cmp word [hotspot_hit], byte 1   ; 0x7d62
    je short .forward5               ; 0x7d67
    jmp near .forward40              ; 0x7d69
.forward5:
    mov ax, word [bp - 0x1a]         ; 0x7d6c
    jmp near .forward38              ; 0x7d6f
jumptable_8492_case_0:
    lea ax, word [bp - 0x10]         ; 0x7d72
    push ax                          ; 0x7d75
    lea ax, word [bp - 0xe]          ; 0x7d76
    push ax                          ; 0x7d79
    call call_get_mouse              ; 0x7d7a
    add sp, byte 4                   ; 0x7d7d
    mov ax, 4                        ; 0x7d80
    push ax                          ; 0x7d83
    mov ax, 0                        ; 0x7d84
    push ax                          ; 0x7d87
    mov ax, word [bp - 0x10]         ; 0x7d88
    mov cx, word [bp - 6]            ; 0x7d8b
    add cx, word [bp - 0x12]         ; 0x7d8e
    add cx, byte 0x2a                ; 0x7d91
    sub ax, cx                       ; 0x7d94
    push ax                          ; 0x7d96
    call clamp_between               ; 0x7d97
    add sp, byte 6                   ; 0x7d9a
    mov word [bp - 0x16], ax         ; 0x7d9d
api_idx_0044_QRMH.back6:
    lea ax, word [bp - 0x10]         ; 0x7da0
    push ax                          ; 0x7da3
    lea ax, word [bp - 0xe]          ; 0x7da4
    push ax                          ; 0x7da7
    call call_get_mouse              ; 0x7da8
    add sp, byte 4                   ; 0x7dab
    mov word [bp - 0x1e], ax         ; 0x7dae
    push word [bp - 0x14]            ; 0x7db1
    mov ax, 0                        ; 0x7db4
    push ax                          ; 0x7db7
    mov ax, word [bp - 0x10]         ; 0x7db8
    mov cx, word [bp - 6]            ; 0x7dbb
    add cx, byte 0x2a                ; 0x7dbe
    sub ax, cx                       ; 0x7dc1
    sub ax, word [bp - 0x16]         ; 0x7dc3
    push ax                          ; 0x7dc6
    call clamp_between               ; 0x7dc7
    add sp, byte 6                   ; 0x7dca
    mov word [bp - 0x12], ax         ; 0x7dcd
    cmp word [bp - 0x44], byte 7     ; 0x7dd0
    jle short api_idx_0044_QRMH.forward6 ; 0x7dd4
    mov cx, 0x64                     ; 0x7dd6
    imul cx                          ; 0x7dd9
    push ax                          ; 0x7ddb
    mov ax, word [bp - 0x14]         ; 0x7ddc
    imul cx                          ; 0x7ddf
    add ax, strict word 0x64         ; 0x7de1
    mov cx, word [bp - 0x44]         ; 0x7de4
    add cx, byte -6                  ; 0x7de7
    cwd                              ; 0x7dea
    idiv cx                          ; 0x7deb
    mov cx, ax                       ; 0x7ded
    pop ax                           ; 0x7def
    cwd                              ; 0x7df0
    idiv cx                          ; 0x7df1
    mov word [bp - 0x18], ax         ; 0x7df3
api_idx_0044_QRMH.forward6:
    push word [bp - 0x24]            ; 0x7df6
    push word [bp - 0x22]            ; 0x7df9
    push word [bp - 0x18]            ; 0x7dfc
    mov ax, 7                        ; 0x7dff
    push ax                          ; 0x7e02
    mov ax, 0xf                      ; 0x7e03
    push ax                          ; 0x7e06
    mov ax, word [bp - 6]            ; 0x7e07
    add ax, strict word 0x22         ; 0x7e0a
    push ax                          ; 0x7e0d
    mov ax, word [bp - 0xc]          ; 0x7e0e
    add ax, strict word 6            ; 0x7e11
    push ax                          ; 0x7e14
    call draw_text_list              ; 0x7e15
    add sp, byte 0xe                 ; 0x7e18
    push word [bp - 0x12]            ; 0x7e1b
    mov ax, 7                        ; 0x7e1e
    push ax                          ; 0x7e21
    mov ax, 8                        ; 0x7e22
    push ax                          ; 0x7e25
    mov ax, word [bp - 6]            ; 0x7e26
    add ax, strict word 0x22         ; 0x7e29
    push ax                          ; 0x7e2c
    mov ax, word [bp - 0xc]          ; 0x7e2d
    add ax, strict word 0x6a         ; 0x7e30
    push ax                          ; 0x7e33
    call draw_scrollbar              ; 0x7e34
    add sp, byte 0xa                 ; 0x7e37
    mov ax, 0                        ; 0x7e3a
    push ax                          ; 0x7e3d
    push ax                          ; 0x7e3e
    mov ax, word [bp - 6]            ; 0x7e3f
    add ax, word [bp - 0x12]         ; 0x7e42
    add ax, strict word 0x2e         ; 0x7e45
    push ax                          ; 0x7e48
    mov ax, word [bp - 0xc]          ; 0x7e49
    add ax, strict word 0x72         ; 0x7e4c
    push ax                          ; 0x7e4f
    mov ax, word [bp - 6]            ; 0x7e50
    add ax, word [bp - 0x12]         ; 0x7e53
    add ax, strict word 0x2a         ; 0x7e56
    push ax                          ; 0x7e59
    mov ax, word [bp - 0xc]          ; 0x7e5a
    add ax, strict word 0x6a         ; 0x7e5d
    push ax                          ; 0x7e60
    mov ax, 0                        ; 0x7e61
    push ax                          ; 0x7e64
    call set_hotspot                 ; 0x7e65
    add sp, byte 0xe                 ; 0x7e68
    mov ax, word [bp - 6]            ; 0x7e6b
    add ax, strict word 0x4c         ; 0x7e6e
    push ax                          ; 0x7e71
    mov ax, word [bp - 0xc]          ; 0x7e72
    add ax, strict word 0x72         ; 0x7e75
    push ax                          ; 0x7e78
    mov ax, word [bp - 6]            ; 0x7e79
    add ax, strict word 0x22         ; 0x7e7c
    push ax                          ; 0x7e7f
    mov ax, word [bp - 0xc]          ; 0x7e80
    add ax, strict word 6            ; 0x7e83
    push ax                          ; 0x7e86
    call call_show_area              ; 0x7e87
    add sp, byte 8                   ; 0x7e8a
    cmp word [bp - 0x1e], byte 0     ; 0x7e8d
    je short api_idx_0044_QRMH.forward7 ; 0x7e91
    jmp near api_idx_0044_QRMH.back6 ; 0x7e93
api_idx_0044_QRMH.forward7:
    jmp near api_idx_0044_QRMH.forward40 ; 0x7e96
jumptable_8492_case_1:
    cmp word [bp - 0x1a], byte 1     ; 0x7e99
    jne short api_idx_0044_QRMH.forward9 ; 0x7e9d
    mov ax, 1                        ; 0x7e9f
    push ax                          ; 0x7ea2
    mov ax, word [bp - 6]            ; 0x7ea3
    add ax, strict word 0x28         ; 0x7ea6
    push ax                          ; 0x7ea9
    mov ax, word [bp - 0xc]          ; 0x7eaa
    add ax, strict word 0x72         ; 0x7ead
    push ax                          ; 0x7eb0
    mov ax, word [bp - 6]            ; 0x7eb1
    add ax, strict word 0x22         ; 0x7eb4
    push ax                          ; 0x7eb7
    mov ax, word [bp - 0xc]          ; 0x7eb8
    add ax, strict word 0x6a         ; 0x7ebb
    push ax                          ; 0x7ebe
    call flash_area                  ; 0x7ebf
    add sp, byte 0xa                 ; 0x7ec2
    cmp word [bp - 0x18], byte 0     ; 0x7ec5
    jle short api_idx_0044_QRMH.forward8 ; 0x7ec9
    dec word [bp - 0x18]             ; 0x7ecb
api_idx_0044_QRMH.forward8:
    jmp short api_idx_0044_QRMH.forward10 ; 0x7ece
api_idx_0044_QRMH.forward9:
    mov ax, 1                        ; 0x7ed0
    push ax                          ; 0x7ed3
    mov ax, word [bp - 6]            ; 0x7ed4
    add ax, strict word 0x4c         ; 0x7ed7
    push ax                          ; 0x7eda
    mov ax, word [bp - 0xc]          ; 0x7edb
    add ax, strict word 0x72         ; 0x7ede
    push ax                          ; 0x7ee1
    mov ax, word [bp - 6]            ; 0x7ee2
    add ax, strict word 0x46         ; 0x7ee5
    push ax                          ; 0x7ee8
    mov ax, word [bp - 0xc]          ; 0x7ee9
    add ax, strict word 0x6a         ; 0x7eec
    push ax                          ; 0x7eef
    call flash_area                  ; 0x7ef0
    add sp, byte 0xa                 ; 0x7ef3
    mov ax, word [bp - 0x44]         ; 0x7ef6
    add ax, strict word 0xfff9       ; 0x7ef9
    cmp ax, word [bp - 0x18]         ; 0x7efc
    jle short api_idx_0044_QRMH.forward10 ; 0x7eff
    inc word [bp - 0x18]             ; 0x7f01
api_idx_0044_QRMH.forward10:
    cmp word [bp - 0x44], byte 7     ; 0x7f04
    jle short api_idx_0044_QRMH.forward11 ; 0x7f08
    push word [bp - 0x14]            ; 0x7f0a
    mov ax, 0                        ; 0x7f0d
    push ax                          ; 0x7f10
    mov ax, 0x64                     ; 0x7f11
    imul word [bp - 0x14]            ; 0x7f14
    add ax, strict word 0x64         ; 0x7f17
    mov cx, word [bp - 0x44]         ; 0x7f1a
    add cx, byte -7                  ; 0x7f1d
    cwd                              ; 0x7f20
    idiv cx                          ; 0x7f21
    imul word [bp - 0x18]            ; 0x7f23
    mov cx, 0x64                     ; 0x7f26
    cwd                              ; 0x7f29
    idiv cx                          ; 0x7f2a
    push ax                          ; 0x7f2c
    call clamp_between               ; 0x7f2d
    add sp, byte 6                   ; 0x7f30
    mov word [bp - 0x12], ax         ; 0x7f33
api_idx_0044_QRMH.forward11:
    push word [bp - 0x24]            ; 0x7f36
    push word [bp - 0x22]            ; 0x7f39
    push word [bp - 0x18]            ; 0x7f3c
    mov ax, 7                        ; 0x7f3f
    push ax                          ; 0x7f42
    mov ax, 0xf                      ; 0x7f43
    push ax                          ; 0x7f46
    mov ax, word [bp - 6]            ; 0x7f47
    add ax, strict word 0x22         ; 0x7f4a
    push ax                          ; 0x7f4d
    mov ax, word [bp - 0xc]          ; 0x7f4e
    add ax, strict word 6            ; 0x7f51
    push ax                          ; 0x7f54
    call draw_text_list              ; 0x7f55
    add sp, byte 0xe                 ; 0x7f58
    push word [bp - 0x12]            ; 0x7f5b
    mov ax, 7                        ; 0x7f5e
    push ax                          ; 0x7f61
    mov ax, 8                        ; 0x7f62
    push ax                          ; 0x7f65
    mov ax, word [bp - 6]            ; 0x7f66
    add ax, strict word 0x22         ; 0x7f69
    push ax                          ; 0x7f6c
    mov ax, word [bp - 0xc]          ; 0x7f6d
    add ax, strict word 0x6a         ; 0x7f70
    push ax                          ; 0x7f73
    call draw_scrollbar              ; 0x7f74
    add sp, byte 0xa                 ; 0x7f77
    mov ax, 0                        ; 0x7f7a
    push ax                          ; 0x7f7d
    push ax                          ; 0x7f7e
    mov ax, word [bp - 6]            ; 0x7f7f
    add ax, word [bp - 0x12]         ; 0x7f82
    add ax, strict word 0x2e         ; 0x7f85
    push ax                          ; 0x7f88
    mov ax, word [bp - 0xc]          ; 0x7f89
    add ax, strict word 0x72         ; 0x7f8c
    push ax                          ; 0x7f8f
    mov ax, word [bp - 6]            ; 0x7f90
    add ax, word [bp - 0x12]         ; 0x7f93
    add ax, strict word 0x2a         ; 0x7f96
    push ax                          ; 0x7f99
    mov ax, word [bp - 0xc]          ; 0x7f9a
    add ax, strict word 0x6a         ; 0x7f9d
    push ax                          ; 0x7fa0
    mov ax, 0                        ; 0x7fa1
    push ax                          ; 0x7fa4
    call set_hotspot                 ; 0x7fa5
    add sp, byte 0xe                 ; 0x7fa8
    mov ax, word [bp - 6]            ; 0x7fab
    add ax, strict word 0x4c         ; 0x7fae
    push ax                          ; 0x7fb1
    mov ax, word [bp - 0xc]          ; 0x7fb2
    add ax, strict word 0x72         ; 0x7fb5
    push ax                          ; 0x7fb8
    mov ax, word [bp - 6]            ; 0x7fb9
    add ax, strict word 0x22         ; 0x7fbc
    push ax                          ; 0x7fbf
    mov ax, word [bp - 0xc]          ; 0x7fc0
    add ax, strict word 6            ; 0x7fc3
    push ax                          ; 0x7fc6
    call call_show_area              ; 0x7fc7
    add sp, byte 8                   ; 0x7fca
    jmp near api_idx_0044_QRMH.forward40 ; 0x7fcd
jumptable_8492_case_3:
    cmp word [bp + 8], byte 0        ; 0x7fd0
    jne short api_idx_0044_QRMH.forward12 ; 0x7fd4
    jmp near api_idx_0044_QRMH.forward17 ; 0x7fd6
api_idx_0044_QRMH.forward12:
    cmp word [bp - 0x3c], byte 0     ; 0x7fd9
    jge short api_idx_0044_QRMH.forward13 ; 0x7fdd
    jmp near api_idx_0044_QRMH.forward16 ; 0x7fdf
api_idx_0044_QRMH.forward13:
    cmp word [bp + 0xa], byte 0      ; 0x7fe2
    je short api_idx_0044_QRMH.forward15 ; 0x7fe6
    mov ax, word [bp - 0x3e]         ; 0x7fe8
    cmp ax, word [bp - 0x40]         ; 0x7feb
    jle short api_idx_0044_QRMH.forward14 ; 0x7fee
    jmp near api_idx_0044_QRMH.forward16 ; 0x7ff0
api_idx_0044_QRMH.forward14:
    mov ax, 6                        ; 0x7ff3
    imul word [bp - 0x3c]            ; 0x7ff6
    mov bx, ax                       ; 0x7ff9
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x7ffb
    sub ah, ah                       ; 0x7fff
    mov cx, word [bp - 0x3e]         ; 0x8001
    inc cx                           ; 0x8004
    imul cx                          ; 0x8005
    push ax                          ; 0x8007
    mov ax, 0x248                    ; 0x8008
    imul word [bp + 4]               ; 0x800b
    mov cx, ax                       ; 0x800e
    mov dx, word [bp - 0x42]         ; 0x8010
    shl dx, 1                        ; 0x8013
    shl dx, 1                        ; 0x8015
    add ax, dx                       ; 0x8017
    mov bx, ax                       ; 0x8019
    mov cx, word [bx + party_records + pc_rec.realm_points] ; 0x801b
    pop ax                           ; 0x801f
    cmp ax, cx                       ; 0x8020
    jg short api_idx_0044_QRMH.forward16 ; 0x8022
api_idx_0044_QRMH.forward15:
    mov ax, 1                        ; 0x8024
    push ax                          ; 0x8027
    push ax                          ; 0x8028
    mov ax, 8                        ; 0x8029
    push ax                          ; 0x802c
    mov ax, word [bp - 6]            ; 0x802d
    add ax, strict word 6            ; 0x8030
    push ax                          ; 0x8033
    mov ax, word [bp - 0xc]          ; 0x8034
    add ax, strict word 6            ; 0x8037
    push ax                          ; 0x803a
    call flash_button                ; 0x803b
    add sp, byte 0xa                 ; 0x803e
    mov ax, 0                        ; 0x8041
    push ax                          ; 0x8044
    mov ax, 1                        ; 0x8045
    push ax                          ; 0x8048
    mov ax, 8                        ; 0x8049
    push ax                          ; 0x804c
    mov ax, word [bp - 6]            ; 0x804d
    add ax, strict word 6            ; 0x8050
    push ax                          ; 0x8053
    mov ax, word [bp - 0xc]          ; 0x8054
    add ax, strict word 6            ; 0x8057
    push ax                          ; 0x805a
    call flash_button                ; 0x805b
    add sp, byte 0xa                 ; 0x805e
    mov word [spell_dialog_button], 0 ; 0x8061
    mov word [bp - 0x1c], 0          ; 0x8067
api_idx_0044_QRMH.forward16:
    cmp word [bp - 0x1c], byte 0     ; 0x806c
    je short api_idx_0044_QRMH.forward17 ; 0x8070
    mov ax, 0                        ; 0x8072
    push ax                          ; 0x8075
    call play_sound_effect           ; 0x8076
    pop cx                           ; 0x8079
api_idx_0044_QRMH.forward17:
    jmp near api_idx_0044_QRMH.forward40 ; 0x807a
jumptable_8492_case_4:
    mov ax, 1                        ; 0x807d
    push ax                          ; 0x8080
    push ax                          ; 0x8081
    mov ax, 8                        ; 0x8082
    push ax                          ; 0x8085
    mov ax, word [bp - 6]            ; 0x8086
    add ax, strict word 6            ; 0x8089
    push ax                          ; 0x808c
    mov ax, word [bp - 0xc]          ; 0x808d
    add ax, strict word 0x42         ; 0x8090
    push ax                          ; 0x8093
    call flash_button                ; 0x8094
    add sp, byte 0xa                 ; 0x8097
    mov ax, 0                        ; 0x809a
    push ax                          ; 0x809d
    mov ax, 1                        ; 0x809e
    push ax                          ; 0x80a1
    mov ax, 8                        ; 0x80a2
    push ax                          ; 0x80a5
    mov ax, word [bp - 6]            ; 0x80a6
    add ax, strict word 6            ; 0x80a9
    push ax                          ; 0x80ac
    mov ax, word [bp - 0xc]          ; 0x80ad
    add ax, strict word 0x42         ; 0x80b0
    push ax                          ; 0x80b3
    call flash_button                ; 0x80b4
    add sp, byte 0xa                 ; 0x80b7
    mov word [spell_dialog_button], 1 ; 0x80ba
    mov word [bp - 0x1c], 0          ; 0x80c0
    jmp near api_idx_0044_QRMH.forward40 ; 0x80c5
api_idx_0044_QRMH.back7:
    cmp word [bp - 0x1a], byte 5     ; 0x80c8
    jge short api_idx_0044_QRMH.forward18 ; 0x80cc
    jmp near api_idx_0044_QRMH.forward26 ; 0x80ce
api_idx_0044_QRMH.forward18:
    cmp word [bp - 0x1a], byte 0xb   ; 0x80d1
    jle short api_idx_0044_QRMH.forward19 ; 0x80d5
    jmp near api_idx_0044_QRMH.forward26 ; 0x80d7
api_idx_0044_QRMH.forward19:
    mov ax, 0                        ; 0x80da
    push ax                          ; 0x80dd
    push word [bp - 0x3e]            ; 0x80de
    mov ax, word [bp - 6]            ; 0x80e1
    add ax, strict word 0x14         ; 0x80e4
    push ax                          ; 0x80e7
    mov ax, word [bp - 0xc]          ; 0x80e8
    add ax, strict word 0xc          ; 0x80eb
    push ax                          ; 0x80ee
    call draw_power_digit            ; 0x80ef
    add sp, byte 8                   ; 0x80f2
    mov ax, word [bp - 0x1a]         ; 0x80f5
    add ax, strict word 0xfffb       ; 0x80f8
    mov word [bp - 0x3e], ax         ; 0x80fb
    mov ax, 1                        ; 0x80fe
    push ax                          ; 0x8101
    push word [bp - 0x3e]            ; 0x8102
    mov ax, word [bp - 6]            ; 0x8105
    add ax, strict word 0x14         ; 0x8108
    push ax                          ; 0x810b
    mov ax, word [bp - 0xc]          ; 0x810c
    add ax, strict word 0xc          ; 0x810f
    push ax                          ; 0x8112
    call draw_power_digit            ; 0x8113
    add sp, byte 8                   ; 0x8116
    cmp word [bp - 0x3c], byte 0     ; 0x8119
    jge short api_idx_0044_QRMH.forward20 ; 0x811d
    jmp near api_idx_0044_QRMH.forward24 ; 0x811f
api_idx_0044_QRMH.forward20:
    mov ax, 6                        ; 0x8122
    push ax                          ; 0x8125
    mov ax, 0                        ; 0x8126
    push ax                          ; 0x8129
    mov ax, 0x248                    ; 0x812a
    imul word [bp + 4]               ; 0x812d
    mov bx, ax                       ; 0x8130
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x8132
    push ax                          ; 0x8136
    mov ax, 6                        ; 0x8137
    imul word [bp - 0x3c]            ; 0x813a
    mov bx, ax                       ; 0x813d
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x813f
    sub ah, ah                       ; 0x8143
    mov cx, ax                       ; 0x8145
    pop ax                           ; 0x8147
    sub ax, cx                       ; 0x8148
    push ax                          ; 0x814a
    call clamp_between               ; 0x814b
    add sp, byte 6                   ; 0x814e
    mov word [bp - 0x40], ax         ; 0x8151
    mov ax, 6                        ; 0x8154
    imul word [bp - 0x3c]            ; 0x8157
    mov bx, ax                       ; 0x815a
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x815c
    sub ah, ah                       ; 0x8160
    mov cx, word [bp - 0x40]         ; 0x8162
    inc cx                           ; 0x8165
    imul cx                          ; 0x8166
    mov word [bp - 2], ax            ; 0x8168
    cmp word [bp + 0xa], byte 0      ; 0x816b
    jne short api_idx_0044_QRMH.forward21 ; 0x816f
    mov ax, 0x3e7                    ; 0x8171
    jmp short api_idx_0044_QRMH.forward23 ; 0x8174
api_idx_0044_QRMH.forward21:
    mov ax, 0x248                    ; 0x8176
    imul word [bp + 4]               ; 0x8179
    mov cx, word [bp - 0x42]         ; 0x817c
    shl cx, 1                        ; 0x817f
    shl cx, 1                        ; 0x8181
    add ax, cx                       ; 0x8183
    mov bx, ax                       ; 0x8185
    mov ax, word [bx + party_records + pc_rec.realm_points] ; 0x8187
    cmp ax, word [bp - 2]            ; 0x818b
    jge short api_idx_0044_QRMH.forward22 ; 0x818e
    jmp short api_idx_0044_QRMH.forward23 ; 0x8190
api_idx_0044_QRMH.forward22:
    mov ax, word [bp - 2]            ; 0x8192
api_idx_0044_QRMH.forward23:
    push ax                          ; 0x8195
    mov ax, 6                        ; 0x8196
    imul word [bp - 0x3c]            ; 0x8199
    mov bx, ax                       ; 0x819c
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x819e
    sub ah, ah                       ; 0x81a2
    mov cx, word [bp - 0x3e]         ; 0x81a4
    inc cx                           ; 0x81a7
    imul cx                          ; 0x81a8
    push ax                          ; 0x81aa
    push word [bp - 0x42]            ; 0x81ab
    mov ax, word [bp - 6]            ; 0x81ae
    add ax, strict word 0x15         ; 0x81b1
    push ax                          ; 0x81b4
    mov ax, word [bp - 0xc]          ; 0x81b5
    add ax, strict word 0x5e         ; 0x81b8
    push ax                          ; 0x81bb
    call loc_IMPO                    ; 0x81bc
    add sp, byte 0xa                 ; 0x81bf
    jmp short api_idx_0044_QRMH.forward25 ; 0x81c2
api_idx_0044_QRMH.forward24:
    mov ax, 0                        ; 0x81c4
    push ax                          ; 0x81c7
    push ax                          ; 0x81c8
    push word [bp - 0x42]            ; 0x81c9
    mov ax, word [bp - 6]            ; 0x81cc
    add ax, strict word 0x15         ; 0x81cf
    push ax                          ; 0x81d2
    mov ax, word [bp - 0xc]          ; 0x81d3
    add ax, strict word 0x5e         ; 0x81d6
    push ax                          ; 0x81d9
    call loc_IMPO                    ; 0x81da
    add sp, byte 0xa                 ; 0x81dd
api_idx_0044_QRMH.forward25:
    mov ax, word [bp - 6]            ; 0x81e0
    add ax, strict word 0x1c         ; 0x81e3
    push ax                          ; 0x81e6
    mov ax, word [bp - 0xc]          ; 0x81e7
    add ax, strict word 0x56         ; 0x81ea
    push ax                          ; 0x81ed
    mov ax, word [bp - 6]            ; 0x81ee
    add ax, strict word 0x14         ; 0x81f1
    push ax                          ; 0x81f4
    mov ax, word [bp - 0xc]          ; 0x81f5
    add ax, strict word 0xb          ; 0x81f8
    push ax                          ; 0x81fb
    call call_show_area              ; 0x81fc
    add sp, byte 8                   ; 0x81ff
    mov ax, word [bp - 6]            ; 0x8202
    add ax, strict word 0x1b         ; 0x8205
    push ax                          ; 0x8208
    mov ax, word [bp - 0xc]          ; 0x8209
    add ax, strict word 0x72         ; 0x820c
    push ax                          ; 0x820f
    mov ax, word [bp - 6]            ; 0x8210
    add ax, strict word 0x15         ; 0x8213
    push ax                          ; 0x8216
    mov ax, word [bp - 0xc]          ; 0x8217
    add ax, strict word 0x5e         ; 0x821a
    push ax                          ; 0x821d
    call call_show_area              ; 0x821e
    add sp, byte 8                   ; 0x8221
    jmp near api_idx_0044_QRMH.forward37 ; 0x8224
api_idx_0044_QRMH.forward26:
    cmp word [bp - 0x1a], byte 0xc   ; 0x8227
    jge short api_idx_0044_QRMH.forward27 ; 0x822b
    jmp near api_idx_0044_QRMH.forward31 ; 0x822d
api_idx_0044_QRMH.forward27:
    cmp word [bp - 0x1a], byte 0x11  ; 0x8230
    jle short api_idx_0044_QRMH.forward28 ; 0x8234
    jmp near api_idx_0044_QRMH.forward31 ; 0x8236
api_idx_0044_QRMH.forward28:
    mov ax, word [bp - 0x1a]         ; 0x8239
    add ax, strict word 0xfff4       ; 0x823c
    mov word [bp - 0x42], ax         ; 0x823f
    mov word [bp - 0x3c], 0xffff     ; 0x8242
    push ax                          ; 0x8247
    push word [bp + 4]               ; 0x8248
    call api_idx_0004_NIJP           ; 0x824b
    add sp, byte 4                   ; 0x824e
    mov word [bp - 0x44], ax         ; 0x8251
    mov ax, 7                        ; 0x8254
    cmp word [bp - 0x44], byte 7     ; 0x8257
    jge short api_idx_0044_QRMH.forward29 ; 0x825b
    mov ax, word [bp - 0x44]         ; 0x825d
api_idx_0044_QRMH.forward29:
    mov word [bp - 0x24], ax         ; 0x8260
    mov ax, 7                        ; 0x8263
    cmp word [bp - 0x44], byte 7     ; 0x8266
    jge short api_idx_0044_QRMH.forward30 ; 0x826a
    mov ax, word [bp - 0x44]         ; 0x826c
api_idx_0044_QRMH.forward30:
    mov word [bp - 0x20], ax         ; 0x826f
    mov word [bp - 0x18], 0          ; 0x8272
    mov word [bp - 0x22], 0xffff     ; 0x8277
    push word [bp - 0x24]            ; 0x827c
    push word [bp - 0x22]            ; 0x827f
    push word [bp - 0x18]            ; 0x8282
    mov ax, 7                        ; 0x8285
    push ax                          ; 0x8288
    mov ax, 0xf                      ; 0x8289
    push ax                          ; 0x828c
    mov ax, word [bp - 6]            ; 0x828d
    add ax, strict word 0x22         ; 0x8290
    push ax                          ; 0x8293
    mov ax, word [bp - 0xc]          ; 0x8294
    add ax, strict word 6            ; 0x8297
    push ax                          ; 0x829a
    call draw_text_list              ; 0x829b
    add sp, byte 0xe                 ; 0x829e
    mov word [bp - 0x12], 0          ; 0x82a1
    push word [bp - 0x12]            ; 0x82a6
    mov ax, 7                        ; 0x82a9
    push ax                          ; 0x82ac
    mov ax, 8                        ; 0x82ad
    push ax                          ; 0x82b0
    mov ax, word [bp - 6]            ; 0x82b1
    add ax, strict word 0x22         ; 0x82b4
    push ax                          ; 0x82b7
    mov ax, word [bp - 0xc]          ; 0x82b8
    add ax, strict word 0x6a         ; 0x82bb
    push ax                          ; 0x82be
    call draw_scrollbar              ; 0x82bf
    add sp, byte 0xa                 ; 0x82c2
    mov ax, 0                        ; 0x82c5
    push ax                          ; 0x82c8
    push ax                          ; 0x82c9
    mov ax, word [bp - 6]            ; 0x82ca
    add ax, word [bp - 0x12]         ; 0x82cd
    add ax, strict word 0x2e         ; 0x82d0
    push ax                          ; 0x82d3
    mov ax, word [bp - 0xc]          ; 0x82d4
    add ax, strict word 0x72         ; 0x82d7
    push ax                          ; 0x82da
    mov ax, word [bp - 6]            ; 0x82db
    add ax, word [bp - 0x12]         ; 0x82de
    add ax, strict word 0x2a         ; 0x82e1
    push ax                          ; 0x82e4
    mov ax, word [bp - 0xc]          ; 0x82e5
    add ax, strict word 0x6a         ; 0x82e8
    push ax                          ; 0x82eb
    mov ax, 0                        ; 0x82ec
    push ax                          ; 0x82ef
    call set_hotspot                 ; 0x82f0
    add sp, byte 0xe                 ; 0x82f3
    mov ax, 0                        ; 0x82f6
    push ax                          ; 0x82f9
    push ax                          ; 0x82fa
    push word [bp - 0x42]            ; 0x82fb
    mov ax, word [bp - 6]            ; 0x82fe
    add ax, strict word 0x15         ; 0x8301
    push ax                          ; 0x8304
    mov ax, word [bp - 0xc]          ; 0x8305
    add ax, strict word 0x5e         ; 0x8308
    push ax                          ; 0x830b
    call loc_IMPO                    ; 0x830c
    add sp, byte 0xa                 ; 0x830f
    mov ax, word [bp - 6]            ; 0x8312
    add ax, strict word 0x4c         ; 0x8315
    push ax                          ; 0x8318
    mov ax, word [bp - 0xc]          ; 0x8319
    add ax, strict word 0x72         ; 0x831c
    push ax                          ; 0x831f
    mov ax, word [bp - 6]            ; 0x8320
    add ax, strict word 0x22         ; 0x8323
    push ax                          ; 0x8326
    mov ax, word [bp - 0xc]          ; 0x8327
    add ax, strict word 6            ; 0x832a
    push ax                          ; 0x832d
    call call_show_area              ; 0x832e
    add sp, byte 8                   ; 0x8331
    mov ax, word [bp - 6]            ; 0x8334
    add ax, strict word 0x1b         ; 0x8337
    push ax                          ; 0x833a
    mov ax, word [bp - 0xc]          ; 0x833b
    add ax, strict word 0x72         ; 0x833e
    push ax                          ; 0x8341
    mov ax, word [bp - 6]            ; 0x8342
    add ax, strict word 0x15         ; 0x8345
    push ax                          ; 0x8348
    mov ax, word [bp - 0xc]          ; 0x8349
    add ax, strict word 0x5e         ; 0x834c
    push ax                          ; 0x834f
    call call_show_area              ; 0x8350
    add sp, byte 8                   ; 0x8353
    jmp near api_idx_0044_QRMH.forward37 ; 0x8356
api_idx_0044_QRMH.forward31:
    cmp word [bp - 0x1a], byte 0x12  ; 0x8359
    jge short api_idx_0044_QRMH.forward32 ; 0x835d
    jmp near api_idx_0044_QRMH.forward37 ; 0x835f
api_idx_0044_QRMH.forward32:
    mov ax, word [bp - 0x20]         ; 0x8362
    add ax, strict word 0x12         ; 0x8365
    cmp ax, word [bp - 0x1a]         ; 0x8368
    jg short api_idx_0044_QRMH.forward33 ; 0x836b
    jmp near api_idx_0044_QRMH.forward37 ; 0x836d
api_idx_0044_QRMH.forward33:
    mov ax, word [bp - 0x18]         ; 0x8370
    add ax, word [bp - 0x1a]         ; 0x8373
    add ax, strict word 0xffee       ; 0x8376
    mov word [bp - 0x22], ax         ; 0x8379
    shl ax, 1                        ; 0x837c
    mov bx, ax                       ; 0x837e
    mov ax, word [bx + known_spell_ids] ; 0x8380
    mov word [bp - 0x3c], ax         ; 0x8384
    push word [bp - 0x24]            ; 0x8387
    push word [bp - 0x22]            ; 0x838a
    push word [bp - 0x18]            ; 0x838d
    mov ax, 7                        ; 0x8390
    push ax                          ; 0x8393
    mov ax, 0xf                      ; 0x8394
    push ax                          ; 0x8397
    mov ax, word [bp - 6]            ; 0x8398
    add ax, strict word 0x22         ; 0x839b
    push ax                          ; 0x839e
    mov ax, word [bp - 0xc]          ; 0x839f
    add ax, strict word 6            ; 0x83a2
    push ax                          ; 0x83a5
    call draw_text_list              ; 0x83a6
    add sp, byte 0xe                 ; 0x83a9
    mov ax, 6                        ; 0x83ac
    push ax                          ; 0x83af
    mov ax, 0                        ; 0x83b0
    push ax                          ; 0x83b3
    mov ax, 0x248                    ; 0x83b4
    imul word [bp + 4]               ; 0x83b7
    mov bx, ax                       ; 0x83ba
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x83bc
    push ax                          ; 0x83c0
    mov ax, 6                        ; 0x83c1
    imul word [bp - 0x3c]            ; 0x83c4
    mov bx, ax                       ; 0x83c7
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x83c9
    sub ah, ah                       ; 0x83cd
    mov cx, ax                       ; 0x83cf
    pop ax                           ; 0x83d1
    sub ax, cx                       ; 0x83d2
    push ax                          ; 0x83d4
    call clamp_between               ; 0x83d5
    add sp, byte 6                   ; 0x83d8
    mov word [bp - 0x40], ax         ; 0x83db
    mov ax, 6                        ; 0x83de
    imul word [bp - 0x3c]            ; 0x83e1
    mov bx, ax                       ; 0x83e4
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x83e6
    sub ah, ah                       ; 0x83ea
    mov cx, word [bp - 0x40]         ; 0x83ec
    inc cx                           ; 0x83ef
    imul cx                          ; 0x83f0
    mov word [bp - 2], ax            ; 0x83f2
    cmp word [bp + 0xa], byte 0      ; 0x83f5
    jne short api_idx_0044_QRMH.forward34 ; 0x83f9
    mov ax, 0x3e7                    ; 0x83fb
    jmp short api_idx_0044_QRMH.forward36 ; 0x83fe
api_idx_0044_QRMH.forward34:
    mov ax, 0x248                    ; 0x8400
    imul word [bp + 4]               ; 0x8403
    mov cx, word [bp - 0x42]         ; 0x8406
    shl cx, 1                        ; 0x8409
    shl cx, 1                        ; 0x840b
    add ax, cx                       ; 0x840d
    mov bx, ax                       ; 0x840f
    mov ax, word [bx + party_records + pc_rec.realm_points] ; 0x8411
    cmp ax, word [bp - 2]            ; 0x8415
    jge short api_idx_0044_QRMH.forward35 ; 0x8418
    jmp short api_idx_0044_QRMH.forward36 ; 0x841a
api_idx_0044_QRMH.forward35:
    mov ax, word [bp - 2]            ; 0x841c
api_idx_0044_QRMH.forward36:
    push ax                          ; 0x841f
    mov ax, 6                        ; 0x8420
    imul word [bp - 0x3c]            ; 0x8423
    mov bx, ax                       ; 0x8426
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x8428
    sub ah, ah                       ; 0x842c
    mov cx, word [bp - 0x3e]         ; 0x842e
    inc cx                           ; 0x8431
    imul cx                          ; 0x8432
    push ax                          ; 0x8434
    push word [bp - 0x42]            ; 0x8435
    mov ax, word [bp - 6]            ; 0x8438
    add ax, strict word 0x15         ; 0x843b
    push ax                          ; 0x843e
    mov ax, word [bp - 0xc]          ; 0x843f
    add ax, strict word 0x5e         ; 0x8442
    push ax                          ; 0x8445
    call loc_IMPO                    ; 0x8446
    add sp, byte 0xa                 ; 0x8449
    mov ax, word [bp - 6]            ; 0x844c
    add ax, strict word 0x4c         ; 0x844f
    push ax                          ; 0x8452
    mov ax, word [bp - 0xc]          ; 0x8453
    add ax, strict word 0x72         ; 0x8456
    push ax                          ; 0x8459
    mov ax, word [bp - 6]            ; 0x845a
    add ax, strict word 0x22         ; 0x845d
    push ax                          ; 0x8460
    mov ax, word [bp - 0xc]          ; 0x8461
    add ax, strict word 6            ; 0x8464
    push ax                          ; 0x8467
    call call_show_area              ; 0x8468
    add sp, byte 8                   ; 0x846b
    mov ax, word [bp - 6]            ; 0x846e
    add ax, strict word 0x1b         ; 0x8471
    push ax                          ; 0x8474
    mov ax, word [bp - 0xc]          ; 0x8475
    add ax, strict word 0x72         ; 0x8478
    push ax                          ; 0x847b
    mov ax, word [bp - 6]            ; 0x847c
    add ax, strict word 0x15         ; 0x847f
    push ax                          ; 0x8482
    mov ax, word [bp - 0xc]          ; 0x8483
    add ax, strict word 0x5e         ; 0x8486
    push ax                          ; 0x8489
    call call_show_area              ; 0x848a
    add sp, byte 8                   ; 0x848d
api_idx_0044_QRMH.forward37:
    jmp short api_idx_0044_QRMH.forward40 ; 0x8490
jumptable_8492:
    dw jumptable_8492_case_0 - IMAGE_BASE + __zres_end ; 0x8492
    dw jumptable_8492_case_1 - IMAGE_BASE + __zres_end ; 0x8494
    dw jumptable_8492_case_1 - IMAGE_BASE + __zres_end ; 0x8496
    dw jumptable_8492_case_3 - IMAGE_BASE + __zres_end ; 0x8498
    dw jumptable_8492_case_4 - IMAGE_BASE + __zres_end ; 0x849a
api_idx_0044_QRMH.forward38:
    cmp ax, strict word 5            ; 0x849c
    jae short api_idx_0044_QRMH.forward39 ; 0x849f
    xchg bx, ax                      ; 0x84a1
    shl bx, 1                        ; 0x84a2
    jmp [cs:bx + jumptable_8492 - IMAGE_BASE + __zres_end] ; 0x84a4
api_idx_0044_QRMH.forward39:
    jmp near api_idx_0044_QRMH.back7 ; 0x84a9
api_idx_0044_QRMH.forward40:
    cmp word [bp - 0x1c], byte 0     ; 0x84ac
    je short api_idx_0044_QRMH.forward41 ; 0x84b0
    jmp near api_idx_0044_QRMH.back5 ; 0x84b2
api_idx_0044_QRMH.forward41:
    mov ax, 1                        ; 0x84b5
    push ax                          ; 0x84b8
    push word [bp - 0x3a]            ; 0x84b9
    call restore_saved_screen        ; 0x84bc
    add sp, byte 4                   ; 0x84bf
    mov ax, word [bp - 0xa]          ; 0x84c2
    inc ax                           ; 0x84c5
    push ax                          ; 0x84c6
    mov ax, word [bp - 8]            ; 0x84c7
    inc ax                           ; 0x84ca
    push ax                          ; 0x84cb
    mov ax, word [bp - 6]            ; 0x84cc
    dec ax                           ; 0x84cf
    push ax                          ; 0x84d0
    mov ax, word [bp - 4]            ; 0x84d1
    dec ax                           ; 0x84d4
    push ax                          ; 0x84d5
    call call_show_area              ; 0x84d6
    add sp, byte 8                   ; 0x84d9
    mov ax, word [bp - 0x3e]         ; 0x84dc
    xchg al, ah                      ; 0x84df
    sub al, al                       ; 0x84e1
    add ax, word [bp - 0x3c]         ; 0x84e3
    add ax, 0x100                    ; 0x84e6
    mov word [spell_dialog_result], ax ; 0x84e9
    mov ax, word [spell_dialog_button] ; 0x84ec
    ret                              ; 0x84ef
