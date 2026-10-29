; auto-generated
api_idx_002c_NHRR:
    mov ax, 0xffd4                   ; 0x6a3f
    call aztec_csav                  ; 0x6a42
    mov ax, 1                        ; 0x6a45
    push ax                          ; 0x6a48
    mov ax, 2                        ; 0x6a49
    push ax                          ; 0x6a4c
    call load_monster_picture        ; 0x6a4d
    add sp, byte 4                   ; 0x6a50
    mov ax, 2                        ; 0x6a53
    push ax                          ; 0x6a56
    mov ax, 3                        ; 0x6a57
    push ax                          ; 0x6a5a
    call load_monster_picture        ; 0x6a5b
    add sp, byte 4                   ; 0x6a5e
    mov ax, 0                        ; 0x6a61
    push ax                          ; 0x6a64
    mov ax, 2                        ; 0x6a65
    push ax                          ; 0x6a68
    mov ax, 0xc7                     ; 0x6a69
    push ax                          ; 0x6a6c
    mov ax, 0x13f                    ; 0x6a6d
    push ax                          ; 0x6a70
    mov ax, 0                        ; 0x6a71
    push ax                          ; 0x6a74
    push ax                          ; 0x6a75
    call call_cache_area             ; 0x6a76
    add sp, byte 0xc                 ; 0x6a79
    mov word [bp - 0xc], dx          ; 0x6a7c
    mov word [bp - 0xe], ax          ; 0x6a7f
    mov ax, 0                        ; 0x6a82
    push ax                          ; 0x6a85
    mov ax, dseg_950c                ; 0x6a86
    push ax                          ; 0x6a89
    call load_screen_file_immediate  ; 0x6a8a
    add sp, byte 4                   ; 0x6a8d
    mov word [banner_offset], 0x14   ; 0x6a90
    mov word [banner_plain_flag], 0  ; 0x6a96
    mov word [bss_95ae], 0           ; 0x6a9c
    mov ax, 0                        ; 0x6aa2
    push ax                          ; 0x6aa5
    mov ax, 2                        ; 0x6aa6
    push ax                          ; 0x6aa9
    mov ax, 0x67                     ; 0x6aaa
    push ax                          ; 0x6aad
    mov ax, 0xa2                     ; 0x6aae
    push ax                          ; 0x6ab1
    mov ax, 6                        ; 0x6ab2
    push ax                          ; 0x6ab5
    push ax                          ; 0x6ab6
    call call_cache_area             ; 0x6ab7
    add sp, byte 0xc                 ; 0x6aba
    mov word [bss_9526], dx          ; 0x6abd
    mov word [bss_9524], ax          ; 0x6ac1
    mov ax, 0                        ; 0x6ac4
    push ax                          ; 0x6ac7
    mov ax, 2                        ; 0x6ac8
    push ax                          ; 0x6acb
    mov ax, 0x16                     ; 0x6acc
    push ax                          ; 0x6acf
    mov ax, 0x136                    ; 0x6ad0
    push ax                          ; 0x6ad3
    mov ax, 6                        ; 0x6ad4
    push ax                          ; 0x6ad7
    mov ax, 0xe4                     ; 0x6ad8
    push ax                          ; 0x6adb
    call call_cache_area             ; 0x6adc
    add sp, byte 0xc                 ; 0x6adf
    mov word [bss_952a], dx          ; 0x6ae2
    mov word [bss_9528], ax          ; 0x6ae6
    mov ax, 0                        ; 0x6ae9
    push ax                          ; 0x6aec
    mov ax, 2                        ; 0x6aed
    push ax                          ; 0x6af0
    mov ax, 0xb6                     ; 0x6af1
    push ax                          ; 0x6af4
    mov ax, 0x9f                     ; 0x6af5
    push ax                          ; 0x6af8
    mov ax, 0x70                     ; 0x6af9
    push ax                          ; 0x6afc
    mov ax, 1                        ; 0x6afd
    push ax                          ; 0x6b00
    call call_cache_area             ; 0x6b01
    add sp, byte 0xc                 ; 0x6b04
    mov word [roster_screen_a], dx   ; 0x6b07
    mov word [roster_screen_b], ax   ; 0x6b0b
    mov ax, 0                        ; 0x6b0e
    push ax                          ; 0x6b11
    mov ax, 2                        ; 0x6b12
    push ax                          ; 0x6b15
    mov ax, 0x23                     ; 0x6b16
    push ax                          ; 0x6b19
    mov ax, 0x13f                    ; 0x6b1a
    push ax                          ; 0x6b1d
    mov ax, 0x1e                     ; 0x6b1e
    push ax                          ; 0x6b21
    mov ax, 0xdc                     ; 0x6b22
    push ax                          ; 0x6b25
    call call_cache_area             ; 0x6b26
    add sp, byte 0xc                 ; 0x6b29
    mov word [bss_9532], dx          ; 0x6b2c
    mov word [bss_9530], ax          ; 0x6b30
    mov ax, 0                        ; 0x6b33
    push ax                          ; 0x6b36
    mov ax, 2                        ; 0x6b37
    push ax                          ; 0x6b3a
    mov ax, 0x74                     ; 0x6b3b
    push ax                          ; 0x6b3e
    mov ax, 0x136                    ; 0x6b3f
    push ax                          ; 0x6b42
    mov ax, 0x2e                     ; 0x6b43
    push ax                          ; 0x6b46
    mov ax, 0x114                    ; 0x6b47
    push ax                          ; 0x6b4a
    call call_cache_area             ; 0x6b4b
    add sp, byte 0xc                 ; 0x6b4e
    mov word [bss_9536], dx          ; 0x6b51
    mov word [bss_9534], ax          ; 0x6b55
    mov ax, 0                        ; 0x6b58
    push ax                          ; 0x6b5b
    mov ax, 2                        ; 0x6b5c
    push ax                          ; 0x6b5f
    mov ax, 0xbf                     ; 0x6b60
    push ax                          ; 0x6b63
    mov ax, 0x13f                    ; 0x6b64
    push ax                          ; 0x6b67
    mov ax, 0x7e                     ; 0x6b68
    push ax                          ; 0x6b6b
    mov ax, 0xb8                     ; 0x6b6c
    push ax                          ; 0x6b6f
    call call_cache_area             ; 0x6b70
    add sp, byte 0xc                 ; 0x6b73
    mov word [bss_953a], dx          ; 0x6b76
    mov word [bss_9538], ax          ; 0x6b7a
    mov ax, 0                        ; 0x6b7d
    push ax                          ; 0x6b80
    mov ax, 2                        ; 0x6b81
    push ax                          ; 0x6b84
    mov ax, 0x60                     ; 0x6b85
    push ax                          ; 0x6b88
    mov ax, 0xa8                     ; 0x6b89
    push ax                          ; 0x6b8c
    mov ax, 0x23                     ; 0x6b8d
    push ax                          ; 0x6b90
    mov ax, 0x66                     ; 0x6b91
    push ax                          ; 0x6b94
    call call_cache_area             ; 0x6b95
    add sp, byte 0xc                 ; 0x6b98
    mov word [bss_953e], dx          ; 0x6b9b
    mov word [bss_953c], ax          ; 0x6b9f
    mov ax, 0                        ; 0x6ba2
    push ax                          ; 0x6ba5
    mov ax, 2                        ; 0x6ba6
    push ax                          ; 0x6ba9
    mov ax, 0x41                     ; 0x6baa
    push ax                          ; 0x6bad
    mov ax, 0x65                     ; 0x6bae
    push ax                          ; 0x6bb1
    mov ax, 0x19                     ; 0x6bb2
    push ax                          ; 0x6bb5
    mov ax, 0x5a                     ; 0x6bb6
    push ax                          ; 0x6bb9
    call call_cache_area             ; 0x6bba
    add sp, byte 0xc                 ; 0x6bbd
    mov word [bss_9542], dx          ; 0x6bc0
    mov word [saved_screen], ax      ; 0x6bc4
    mov ax, 0xf                      ; 0x6bc7
    push ax                          ; 0x6bca
    mov ax, 0xb                      ; 0x6bcb
    push ax                          ; 0x6bce
    call load_monster_picture        ; 0x6bcf
    add sp, byte 4                   ; 0x6bd2
    call score_music_enabled         ; 0x6bd5
    mov word [story_music_enabled], ax ; 0x6bd8
    test ax, ax                      ; 0x6bdb
    je short .forward1               ; 0x6bdd
    mov ax, 0                        ; 0x6bdf
    push ax                          ; 0x6be2
    mov ax, 1                        ; 0x6be3
    push ax                          ; 0x6be6
    call load_score_files            ; 0x6be7
    add sp, byte 4                   ; 0x6bea
    mov ax, word [dseg_010e]         ; 0x6bed
    mov word [story_score_number], ax ; 0x6bf0
    mov ax, 1                        ; 0x6bf3
    push ax                          ; 0x6bf6
    push word [story_score_number]   ; 0x6bf7
    mov ax, 0                        ; 0x6bfb
    push ax                          ; 0x6bfe
    call ds_app_UKGP                 ; 0x6bff
    add sp, byte 6                   ; 0x6c02
    mov word [story_score_volume], ax ; 0x6c05
.forward1:
    mov word [bp - 2], 0             ; 0x6c08
.back1:
    mov ax, 0xa                      ; 0x6c0d
    imul word [bp - 2]               ; 0x6c10
    add ax, bss_9544                 ; 0x6c13
    push ax                          ; 0x6c16
    mov ax, word [bp - 2]            ; 0x6c17
    add ax, MSG_STR                  ; 0x6c1a
    push ax                          ; 0x6c1d
    call load_message_string         ; 0x6c1e
    add sp, byte 4                   ; 0x6c21
    inc word [bp - 2]                ; 0x6c24
    mov ax, word [bp - 2]            ; 0x6c27
    cmp ax, strict word 8            ; 0x6c2a
    jl short .back1                  ; 0x6c2d
    mov ax, bss_9596                 ; 0x6c2f
    push ax                          ; 0x6c32
    mov ax, MSG_BONUS                ; 0x6c33
    push ax                          ; 0x6c36
    call load_message_string         ; 0x6c37
    add sp, byte 4                   ; 0x6c3a
    mov word [bp - 2], 0             ; 0x6c3d
.back2:
    mov ax, word [bp - 2]            ; 0x6c42
    shl ax, 1                        ; 0x6c45
    mov bx, ax                       ; 0x6c47
    mov word [bx + party_slot_frame], 0 ; 0x6c49
    inc word [bp - 2]                ; 0x6c4f
    mov ax, word [bp - 2]            ; 0x6c52
    cmp ax, strict word 6            ; 0x6c55
    jl short .back2                  ; 0x6c58
    mov word [party_redraw_interval], 7 ; 0x6c5a
    les bx, word [tick_counter_ptr]  ; 0x6c60
    mov ax, word [es:bx]             ; 0x6c64
    mov dx, word [es:bx + 2]         ; 0x6c67
    mov word [party_redraw_last_tick_hi], dx ; 0x6c6b
    mov word [party_redraw_last_tick], ax ; 0x6c6f
.back3:
    mov word [banner_offset], 0x14   ; 0x6c72
    mov word [banner_plain_flag], 0  ; 0x6c78
    mov ax, 0                        ; 0x6c7e
    push ax                          ; 0x6c81
    push ax                          ; 0x6c82
    push word [bss_9526]             ; 0x6c83
    push word [bss_9524]             ; 0x6c87
    call call_restore_screen         ; 0x6c8b
    add sp, byte 8                   ; 0x6c8e
    mov ax, 0                        ; 0x6c91
    push ax                          ; 0x6c94
    push ax                          ; 0x6c95
    push word [bss_952a]             ; 0x6c96
    push word [bss_9528]             ; 0x6c9a
    call call_restore_screen         ; 0x6c9e
    add sp, byte 8                   ; 0x6ca1
    mov ax, 0                        ; 0x6ca4
    push ax                          ; 0x6ca7
    push ax                          ; 0x6ca8
    push word [roster_screen_a]      ; 0x6ca9
    push word [roster_screen_b]      ; 0x6cad
    call call_restore_screen         ; 0x6cb1
    add sp, byte 8                   ; 0x6cb4
    mov ax, 0                        ; 0x6cb7
    push ax                          ; 0x6cba
    push ax                          ; 0x6cbb
    push word [bss_9532]             ; 0x6cbc
    push word [bss_9530]             ; 0x6cc0
    call call_restore_screen         ; 0x6cc4
    add sp, byte 8                   ; 0x6cc7
    mov ax, 0                        ; 0x6cca
    push ax                          ; 0x6ccd
    push ax                          ; 0x6cce
    push word [bss_9536]             ; 0x6ccf
    push word [bss_9534]             ; 0x6cd3
    call call_restore_screen         ; 0x6cd7
    add sp, byte 8                   ; 0x6cda
    mov ax, 0                        ; 0x6cdd
    push ax                          ; 0x6ce0
    push ax                          ; 0x6ce1
    push word [bss_953a]             ; 0x6ce2
    push word [bss_9538]             ; 0x6ce6
    call call_restore_screen         ; 0x6cea
    add sp, byte 8                   ; 0x6ced
    mov word [bp - 2], 0             ; 0x6cf0
.back4:
    mov ax, word [bp - 2]            ; 0x6cf5
    shl ax, 1                        ; 0x6cf8
    mov bx, ax                       ; 0x6cfa
    add bx, bp                       ; 0x6cfc
    mov word [bx - 0x2c], 0          ; 0x6cfe
    inc word [bp - 2]                ; 0x6d03
    mov ax, word [bp - 2]            ; 0x6d06
    cmp ax, strict word 5            ; 0x6d09
    jl short .back4                  ; 0x6d0c
    mov word [bp - 0x22], 1          ; 0x6d0e
    mov word [bp - 0x20], 0xffff     ; 0x6d13
    call api_idx_0002_RUKQ           ; 0x6d18
    mov word [bp - 0xa], ax          ; 0x6d1b
    cmp ax, strict word 0xffff       ; 0x6d1e
    je short .forward2               ; 0x6d21
    mov word [bp - 0x2c], 1          ; 0x6d23
.forward2:
    mov word [bp - 2], 0             ; 0x6d28
    jmp short .forward4              ; 0x6d2d
.back5:
    mov bx, word [bp - 2]            ; 0x6d2f
    cmp byte [bx + pc_file_record_base_hi + 0x2], 1 ; 0x6d32
    jne short .forward3              ; 0x6d37
    mov word [bp - 0x2a], 1          ; 0x6d39
    mov word [bp - 0x28], 1          ; 0x6d3e
    mov word [bp - 0x26], 1          ; 0x6d43
    mov word [bp - 0x24], 1          ; 0x6d48
.forward3:
    inc word [bp - 2]                ; 0x6d4d
.forward4:
    mov ax, word [bp - 2]            ; 0x6d50
    cmp ax, word [bss_9070]          ; 0x6d53
    jl short .back5                  ; 0x6d57
    lea ax, word [bp - 0x2c]         ; 0x6d59
    push ax                          ; 0x6d5c
    mov ax, 0                        ; 0x6d5d
    push ax                          ; 0x6d60
    mov ax, 0xffff                   ; 0x6d61
    push ax                          ; 0x6d64
    mov ax, 1                        ; 0x6d65
    push ax                          ; 0x6d68
    mov ax, 6                        ; 0x6d69
    push ax                          ; 0x6d6c
    mov ax, 1                        ; 0x6d6d
    push ax                          ; 0x6d70
    mov ax, 0xc                      ; 0x6d71
    push ax                          ; 0x6d74
    mov ax, 0x34                     ; 0x6d75
    push ax                          ; 0x6d78
    mov ax, 8                        ; 0x6d79
    push ax                          ; 0x6d7c
    mov ax, 0xbc                     ; 0x6d7d
    push ax                          ; 0x6d80
    mov ax, 4                        ; 0x6d81
    push ax                          ; 0x6d84
    mov ax, 0                        ; 0x6d85
    push ax                          ; 0x6d88
    mov ax, 0x46a                    ; 0x6d89
    push ax                          ; 0x6d8c
    call loc_TRPK                    ; 0x6d8d
    add sp, byte 0x1a                ; 0x6d90
    mov word [bp - 6], ax            ; 0x6d93
    jmp near .forward9               ; 0x6d96
jumptable_6e5f_case_0:
    mov ax, 0xc7                     ; 0x6d99
    push ax                          ; 0x6d9c
    mov ax, 0x13f                    ; 0x6d9d
    push ax                          ; 0x6da0
    mov ax, 0                        ; 0x6da1
    push ax                          ; 0x6da4
    push ax                          ; 0x6da5
    call call_show_area              ; 0x6da6
    add sp, byte 8                   ; 0x6da9
    push word [bp - 0xa]             ; 0x6dac
    call api_idx_0014_LVIL           ; 0x6daf
    pop cx                           ; 0x6db2
    jmp near api_idx_002c_NHRR.forward10 ; 0x6db3
jumptable_6e5f_case_2:
    mov ax, 0xc7                     ; 0x6db6
    push ax                          ; 0x6db9
    mov ax, 0x13f                    ; 0x6dba
    push ax                          ; 0x6dbd
    mov ax, 0                        ; 0x6dbe
    push ax                          ; 0x6dc1
    push ax                          ; 0x6dc2
    call call_show_area              ; 0x6dc3
    add sp, byte 8                   ; 0x6dc6
    mov ax, MSG_DELETE_WHO           ; 0x6dc9
    push ax                          ; 0x6dcc
    call loc_PVJJ                    ; 0x6dcd
    pop cx                           ; 0x6dd0
    mov word [bp - 8], ax            ; 0x6dd1
    cmp ax, strict word 0xffff       ; 0x6dd4
    je short api_idx_002c_NHRR.forward5 ; 0x6dd7
    push ax                          ; 0x6dd9
    call api_idx_002c_JIHO           ; 0x6dda
    pop cx                           ; 0x6ddd
api_idx_002c_NHRR.forward5:
    jmp near api_idx_002c_NHRR.forward10 ; 0x6dde
jumptable_6e5f_case_1:
    mov ax, 0xc7                     ; 0x6de1
    push ax                          ; 0x6de4
    mov ax, 0x13f                    ; 0x6de5
    push ax                          ; 0x6de8
    mov ax, 0                        ; 0x6de9
    push ax                          ; 0x6dec
    push ax                          ; 0x6ded
    call call_show_area              ; 0x6dee
    add sp, byte 8                   ; 0x6df1
    mov ax, MSG_REVIEW_WHO           ; 0x6df4
    push ax                          ; 0x6df7
    call loc_PVJJ                    ; 0x6df8
    pop cx                           ; 0x6dfb
    mov word [bp - 8], ax            ; 0x6dfc
    cmp ax, strict word 0xffff       ; 0x6dff
    je short api_idx_002c_NHRR.forward6 ; 0x6e02
    push ax                          ; 0x6e04
    call loc_RNSM                    ; 0x6e05
    pop cx                           ; 0x6e08
api_idx_002c_NHRR.forward6:
    jmp short api_idx_002c_NHRR.forward10 ; 0x6e09
jumptable_6e5f_case_3:
    mov ax, 0xc7                     ; 0x6e0b
    push ax                          ; 0x6e0e
    mov ax, 0x13f                    ; 0x6e0f
    push ax                          ; 0x6e12
    mov ax, 0                        ; 0x6e13
    push ax                          ; 0x6e16
    push ax                          ; 0x6e17
    call call_show_area              ; 0x6e18
    add sp, byte 8                   ; 0x6e1b
    mov ax, MSG_RENAME_WHO           ; 0x6e1e
    push ax                          ; 0x6e21
    call loc_PVJJ                    ; 0x6e22
    pop cx                           ; 0x6e25
    mov word [bp - 8], ax            ; 0x6e26
    cmp ax, strict word 0xffff       ; 0x6e29
    je short api_idx_002c_NHRR.forward7 ; 0x6e2c
    push ax                          ; 0x6e2e
    call api_idx_0018_MVRH           ; 0x6e2f
    pop cx                           ; 0x6e32
api_idx_002c_NHRR.forward7:
    jmp short api_idx_002c_NHRR.forward10 ; 0x6e33
jumptable_6e5f_case_4:
    mov ax, 0xc7                     ; 0x6e35
    push ax                          ; 0x6e38
    mov ax, 0x13f                    ; 0x6e39
    push ax                          ; 0x6e3c
    mov ax, 0                        ; 0x6e3d
    push ax                          ; 0x6e40
    push ax                          ; 0x6e41
    call call_show_area              ; 0x6e42
    add sp, byte 8                   ; 0x6e45
    mov ax, MSG_CHANGE_WHO           ; 0x6e48
    push ax                          ; 0x6e4b
    call loc_PVJJ                    ; 0x6e4c
    pop cx                           ; 0x6e4f
    mov word [bp - 8], ax            ; 0x6e50
    cmp ax, strict word 0xffff       ; 0x6e53
    je short api_idx_002c_NHRR.forward8 ; 0x6e56
    push ax                          ; 0x6e58
    call api_idx_0006_JHIT           ; 0x6e59
    pop cx                           ; 0x6e5c
api_idx_002c_NHRR.forward8:
    jmp short api_idx_002c_NHRR.forward10 ; 0x6e5d
jumptable_6e5f:
    dw jumptable_6e5f_case_0 - IMAGE_BASE + __zres_end ; 0x6e5f
    dw jumptable_6e5f_case_1 - IMAGE_BASE + __zres_end ; 0x6e61
    dw jumptable_6e5f_case_2 - IMAGE_BASE + __zres_end ; 0x6e63
    dw jumptable_6e5f_case_3 - IMAGE_BASE + __zres_end ; 0x6e65
    dw jumptable_6e5f_case_4 - IMAGE_BASE + __zres_end ; 0x6e67
api_idx_002c_NHRR.forward9:
    cmp ax, strict word 5            ; 0x6e69
    jae short api_idx_002c_NHRR.forward10 ; 0x6e6c
    xchg bx, ax                      ; 0x6e6e
    shl bx, 1                        ; 0x6e6f
    jmp [cs:bx + jumptable_6e5f - IMAGE_BASE + __zres_end] ; 0x6e71
api_idx_002c_NHRR.forward10:
    cmp word [bp - 6], byte 5        ; 0x6e76
    je short api_idx_002c_NHRR.forward11 ; 0x6e7a
    jmp near api_idx_002c_NHRR.back3 ; 0x6e7c
api_idx_002c_NHRR.forward11:
    cmp word [story_music_enabled], byte 0 ; 0x6e7f
    je short api_idx_002c_NHRR.forward12 ; 0x6e84
    push word [story_score_volume]   ; 0x6e86
    push word [story_score_number]   ; 0x6e8a
    call fade_out_music              ; 0x6e8e
    add sp, byte 4                   ; 0x6e91
    mov ax, 0                        ; 0x6e94
    push ax                          ; 0x6e97
    call free_loaded_score           ; 0x6e98
    pop cx                           ; 0x6e9b
api_idx_002c_NHRR.forward12:
    mov ax, 0xf                      ; 0x6e9c
    push ax                          ; 0x6e9f
    call free_picture_slot           ; 0x6ea0
    pop cx                           ; 0x6ea3
    mov ax, 0                        ; 0x6ea4
    push ax                          ; 0x6ea7
    mov ax, 1                        ; 0x6ea8
    push ax                          ; 0x6eab
    push word [bss_9542]             ; 0x6eac
    push word [saved_screen]         ; 0x6eb0
    call call_restore_screen         ; 0x6eb4
    add sp, byte 8                   ; 0x6eb7
    mov ax, 0                        ; 0x6eba
    push ax                          ; 0x6ebd
    mov ax, 1                        ; 0x6ebe
    push ax                          ; 0x6ec1
    push word [bss_953e]             ; 0x6ec2
    push word [bss_953c]             ; 0x6ec6
    call call_restore_screen         ; 0x6eca
    add sp, byte 8                   ; 0x6ecd
    mov ax, 0                        ; 0x6ed0
    push ax                          ; 0x6ed3
    mov ax, 1                        ; 0x6ed4
    push ax                          ; 0x6ed7
    push word [bss_953a]             ; 0x6ed8
    push word [bss_9538]             ; 0x6edc
    call call_restore_screen         ; 0x6ee0
    add sp, byte 8                   ; 0x6ee3
    mov ax, 0                        ; 0x6ee6
    push ax                          ; 0x6ee9
    mov ax, 1                        ; 0x6eea
    push ax                          ; 0x6eed
    push word [bss_9536]             ; 0x6eee
    push word [bss_9534]             ; 0x6ef2
    call call_restore_screen         ; 0x6ef6
    add sp, byte 8                   ; 0x6ef9
    mov ax, 0                        ; 0x6efc
    push ax                          ; 0x6eff
    mov ax, 1                        ; 0x6f00
    push ax                          ; 0x6f03
    push word [bss_9532]             ; 0x6f04
    push word [bss_9530]             ; 0x6f08
    call call_restore_screen         ; 0x6f0c
    add sp, byte 8                   ; 0x6f0f
    mov ax, 0                        ; 0x6f12
    push ax                          ; 0x6f15
    mov ax, 1                        ; 0x6f16
    push ax                          ; 0x6f19
    push word [roster_screen_a]      ; 0x6f1a
    push word [roster_screen_b]      ; 0x6f1e
    call call_restore_screen         ; 0x6f22
    add sp, byte 8                   ; 0x6f25
    mov ax, 0                        ; 0x6f28
    push ax                          ; 0x6f2b
    mov ax, 1                        ; 0x6f2c
    push ax                          ; 0x6f2f
    push word [bss_952a]             ; 0x6f30
    push word [bss_9528]             ; 0x6f34
    call call_restore_screen         ; 0x6f38
    add sp, byte 8                   ; 0x6f3b
    mov ax, 0                        ; 0x6f3e
    push ax                          ; 0x6f41
    mov ax, 1                        ; 0x6f42
    push ax                          ; 0x6f45
    push word [bss_9526]             ; 0x6f46
    push word [bss_9524]             ; 0x6f4a
    call call_restore_screen         ; 0x6f4e
    add sp, byte 8                   ; 0x6f51
    mov ax, 0                        ; 0x6f54
    push ax                          ; 0x6f57
    mov ax, 1                        ; 0x6f58
    push ax                          ; 0x6f5b
    push word [bp - 0xc]             ; 0x6f5c
    push word [bp - 0xe]             ; 0x6f5f
    call call_restore_screen         ; 0x6f62
    add sp, byte 8                   ; 0x6f65
    mov ax, 1                        ; 0x6f68
    push ax                          ; 0x6f6b
    call free_picture_slot           ; 0x6f6c
    pop cx                           ; 0x6f6f
    mov ax, 2                        ; 0x6f70
    push ax                          ; 0x6f73
    call free_picture_slot           ; 0x6f74
    pop cx                           ; 0x6f77
    mov ax, 0xc7                     ; 0x6f78
    push ax                          ; 0x6f7b
    mov ax, 0x13f                    ; 0x6f7c
    push ax                          ; 0x6f7f
    mov ax, 0                        ; 0x6f80
    push ax                          ; 0x6f83
    push ax                          ; 0x6f84
    call call_show_area              ; 0x6f85
    add sp, byte 8                   ; 0x6f88
    ret                              ; 0x6f8b
