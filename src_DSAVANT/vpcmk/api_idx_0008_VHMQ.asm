; auto-generated
api_idx_0008_VHMQ:
    mov ax, 0xfff8                   ; 0x4934
    call aztec_csav                  ; 0x4937
    mov ax, 0                        ; 0x493a
    push ax                          ; 0x493d
    push ax                          ; 0x493e
    push word [bss_953e]             ; 0x493f
    push word [bss_953c]             ; 0x4943
    call gfx_restore_screen          ; 0x4947
    add sp, byte 8                   ; 0x494a
    mov ax, 0x53                     ; 0x494d
    push ax                          ; 0x4950
    mov ax, 0x97                     ; 0x4951
    push ax                          ; 0x4954
    mov ax, 0x4d                     ; 0x4955
    push ax                          ; 0x4958
    mov ax, 0x8b                     ; 0x4959
    push ax                          ; 0x495c
    call gfx_save_area               ; 0x495d
    add sp, byte 8                   ; 0x4960
    mov word [bp - 2], dx            ; 0x4963
    mov word [bp - 4], ax            ; 0x4966
    mov ax, 0                        ; 0x4969
    push ax                          ; 0x496c
    push word [bp + 4]               ; 0x496d
    call api_idx_0002_SSJN           ; 0x4970
    add sp, byte 4                   ; 0x4973
    mov ax, 0                        ; 0x4976
    push ax                          ; 0x4979
    mov ax, 1                        ; 0x497a
    push ax                          ; 0x497d
    mov ax, 0x10                     ; 0x497e
    push ax                          ; 0x4981
    mov ax, 0x97                     ; 0x4982
    push ax                          ; 0x4985
    mov ax, 0x70                     ; 0x4986
    push ax                          ; 0x4989
    mov ax, MSG_CASTING_KARMA        ; 0x498a
    push ax                          ; 0x498d
    call api_idx_0058_GKGM           ; 0x498e
    add sp, byte 0xc                 ; 0x4991
    mov word [bp - 6], dx            ; 0x4994
    mov word [bp - 8], ax            ; 0x4997
    call flush_keyboard              ; 0x499a
@..api_idx_0008_VHMQ.l1:
    mov ax, 0x13                     ; 0x499d
    push ax                          ; 0x49a0
    call random_below                ; 0x49a1
    pop cx                           ; 0x49a4
    push ax                          ; 0x49a5
    mov ax, 0x248                    ; 0x49a6
    imul word [bp + 4]               ; 0x49a9
    mov bx, ax                       ; 0x49ac
    pop ax                           ; 0x49ae
    mov byte [bx + party_records + pc_rec.stat + 0x7], al ; 0x49af
    cmp byte [bx + party_records + pc_rec.gender], 1 ; 0x49b3
    jne short @..api_idx_0008_VHMQ.l2 ; 0x49b8
    inc byte [bx + party_records + pc_rec.stat + 0x7] ; 0x49ba
@..api_idx_0008_VHMQ.l2:
    mov ax, 0                        ; 0x49be
    push ax                          ; 0x49c1
    push word [bp - 2]               ; 0x49c2
    push word [bp - 4]               ; 0x49c5
    call gfx_restore_area            ; 0x49c8
    add sp, byte 6                   ; 0x49cb
    mov ax, 0x4d                     ; 0x49ce
    push ax                          ; 0x49d1
    mov ax, 0x8b                     ; 0x49d2
    push ax                          ; 0x49d5
    call gfx_set_text_pos            ; 0x49d6
    add sp, byte 4                   ; 0x49d9
    mov ax, 0                        ; 0x49dc
    push ax                          ; 0x49df
    mov ax, 1                        ; 0x49e0
    push ax                          ; 0x49e3
    call gfx_set_text_color          ; 0x49e4
    add sp, byte 4                   ; 0x49e7
    mov ax, 0                        ; 0x49ea
    push ax                          ; 0x49ed
    mov ax, 2                        ; 0x49ee
    push ax                          ; 0x49f1
    mov ax, 0x248                    ; 0x49f2
    imul word [bp + 4]               ; 0x49f5
    mov bx, ax                       ; 0x49f8
    mov al, byte [bx + party_records + pc_rec.stat + 0x7] ; 0x49fa
    sub ah, ah                       ; 0x49fe
    push ax                          ; 0x4a00
    call draw_number_field           ; 0x4a01
    add sp, byte 6                   ; 0x4a04
    mov ax, 0x53                     ; 0x4a07
    push ax                          ; 0x4a0a
    mov ax, 0x97                     ; 0x4a0b
    push ax                          ; 0x4a0e
    mov ax, 0x4d                     ; 0x4a0f
    push ax                          ; 0x4a12
    mov ax, 0x8b                     ; 0x4a13
    push ax                          ; 0x4a16
    call gfx_show_area               ; 0x4a17
    add sp, byte 8                   ; 0x4a1a
    mov ax, hotspot_rects            ; 0x4a1d
    push ax                          ; 0x4a20
    call poll_hotspots               ; 0x4a21
    pop cx                           ; 0x4a24
    cmp word [hotspot_hit], byte 0   ; 0x4a25
    jne short @..api_idx_0008_VHMQ.l3 ; 0x4a2a
    jmp near @..api_idx_0008_VHMQ.l1 ; 0x4a2c
@..api_idx_0008_VHMQ.l3:
    mov ax, 1                        ; 0x4a2f
    push ax                          ; 0x4a32
    push ax                          ; 0x4a33
    mov ax, 0x10                     ; 0x4a34
    push ax                          ; 0x4a37
    mov ax, 0x97                     ; 0x4a38
    push ax                          ; 0x4a3b
    mov ax, 0x70                     ; 0x4a3c
    push ax                          ; 0x4a3f
    call flash_button                ; 0x4a40
    add sp, byte 0xa                 ; 0x4a43
    mov ax, 0                        ; 0x4a46
    push ax                          ; 0x4a49
    mov ax, 1                        ; 0x4a4a
    push ax                          ; 0x4a4d
    mov ax, 0x10                     ; 0x4a4e
    push ax                          ; 0x4a51
    mov ax, 0x97                     ; 0x4a52
    push ax                          ; 0x4a55
    mov ax, 0x70                     ; 0x4a56
    push ax                          ; 0x4a59
    call flash_button                ; 0x4a5a
    add sp, byte 0xa                 ; 0x4a5d
    mov ax, 1                        ; 0x4a60
    push ax                          ; 0x4a63
    push word [bp - 6]               ; 0x4a64
    push word [bp - 8]               ; 0x4a67
    call gfx_restore_area            ; 0x4a6a
    add sp, byte 6                   ; 0x4a6d
    mov ax, 1                        ; 0x4a70
    push ax                          ; 0x4a73
    push word [bp - 2]               ; 0x4a74
    push word [bp - 4]               ; 0x4a77
    call gfx_restore_area            ; 0x4a7a
    add sp, byte 6                   ; 0x4a7d
    mov ax, 0                        ; 0x4a80
    push ax                          ; 0x4a83
    push word [bp + 4]               ; 0x4a84
    call api_idx_0002_SSJN           ; 0x4a87
    add sp, byte 4                   ; 0x4a8a
    mov ax, 0xc7                     ; 0x4a8d
    push ax                          ; 0x4a90
    mov ax, 0x13f                    ; 0x4a91
    push ax                          ; 0x4a94
    mov ax, 0                        ; 0x4a95
    push ax                          ; 0x4a98
    push ax                          ; 0x4a99
    call gfx_show_area               ; 0x4a9a
    add sp, byte 8                   ; 0x4a9d
    ret                              ; 0x4aa0
