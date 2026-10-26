; auto-generated
api_idx_0004_PIHK:
    mov ax, 0xfffc                   ; 0x1c5e
    call aztec_csav                  ; 0x1c61
    cmp word [bp + 4], byte 0        ; 0x1c64
    jne short .forward1              ; 0x1c68
    jmp near .forward5               ; 0x1c6a
.forward1:
    cmp word [bss_8464], byte 0      ; 0x1c6d
    jne short .forward2              ; 0x1c72
    cmp word [bss_8462], byte 0      ; 0x1c74
    jl short .forward2               ; 0x1c79
    mov ax, word [bss_8462]          ; 0x1c7b
    cmp ax, word [party_char_count]  ; 0x1c7e
    jge short .forward2              ; 0x1c82
    mov cx, 0x248                    ; 0x1c84
    imul cx                          ; 0x1c87
    mov bx, ax                       ; 0x1c89
    add word [bx + party_records + pc_rec.f_0010], byte 1 ; 0x1c8b
    adc word [bx + party_records + pc_rec.f_0012], byte 0 ; 0x1c90
.forward2:
    mov ax, word [bp + 4]            ; 0x1c95
    shl ax, 1                        ; 0x1c98
    mov bx, ax                       ; 0x1c9a
    mov bx, word [bx + party_char_ext] ; 0x1c9c
    mov al, byte [bx + member_ext.flags] ; 0x1ca0
    sub ah, ah                       ; 0x1ca4
    test ax, 1                       ; 0x1ca6
    je short .forward3               ; 0x1ca9
    mov ax, 1                        ; 0x1cab
    push ax                          ; 0x1cae
    mov al, byte [bx + 0xe0]         ; 0x1caf
    sub ah, ah                       ; 0x1cb3
    push ax                          ; 0x1cb5
    mov ax, action_bitmap            ; 0x1cb6
    push ax                          ; 0x1cb9
    call set_bitmap_bit              ; 0x1cba
    add sp, byte 6                   ; 0x1cbd
.forward3:
    mov ax, word [bp + 4]            ; 0x1cc0
    shl ax, 1                        ; 0x1cc3
    mov bx, ax                       ; 0x1cc5
    mov bx, word [bx + party_char_ext] ; 0x1cc7
    cmp byte [bx + member_ext.f_00e4], 0xff ; 0x1ccb
    je short .forward4               ; 0x1cd0
    mov al, byte [bx + 0xe4]         ; 0x1cd2
    cbw                              ; 0x1cd6
    mov cx, 0x26                     ; 0x1cd7
    imul cx                          ; 0x1cda
    mov bx, ax                       ; 0x1cdc
    mov byte [bx + slot_records + slot_record.flag], 0 ; 0x1cde
    mov ax, word [bp + 4]            ; 0x1ce3
    shl ax, 1                        ; 0x1ce6
    mov bx, ax                       ; 0x1ce8
    mov bx, word [bx + party_char_ext] ; 0x1cea
    mov al, byte [bx + member_ext.f_00e4] ; 0x1cee
    cbw                              ; 0x1cf2
    mov word [selected_item_slot], ax ; 0x1cf3
.forward4:
    mov ax, 0x2c                     ; 0x1cf6
    imul word [bp + 6]               ; 0x1cf9
    mov si, ax                       ; 0x1cfc
    mov ax, word [bp + 4]            ; 0x1cfe
    shl ax, 1                        ; 0x1d01
    mov bx, ax                       ; 0x1d03
    mov bx, word [bx + party_char]   ; 0x1d05
    cmp byte [bx + si + member_rec.item_cell], 0xff ; 0x1d09
    je short .forward5               ; 0x1d0d
    mov al, byte [bx + si + 0x2a]    ; 0x1d0f
    cbw                              ; 0x1d12
    mov cx, 0xa                      ; 0x1d13
    cwd                              ; 0x1d16
    idiv cx                          ; 0x1d17
    mov word [bp - 2], ax            ; 0x1d19
    mov al, byte [bx + si + 0x2a]    ; 0x1d1c
    cbw                              ; 0x1d1f
    cwd                              ; 0x1d20
    idiv cx                          ; 0x1d21
    mov word [bp - 4], dx            ; 0x1d23
    mov ax, 6                        ; 0x1d26
    imul word [bp - 2]               ; 0x1d29
    mov cx, word [bp - 4]            ; 0x1d2c
    shl cx, 1                        ; 0x1d2f
    add ax, cx                       ; 0x1d31
    mov bx, ax                       ; 0x1d33
    mov word [bx + bss_90ca], 0      ; 0x1d35
    mov word [bss_8320], 0           ; 0x1d3b
    call run_party_screen_animation  ; 0x1d41
    mov ax, 6                        ; 0x1d44
    imul word [bp - 2]               ; 0x1d47
    mov cx, word [bp - 4]            ; 0x1d4a
    shl cx, 1                        ; 0x1d4d
    add ax, cx                       ; 0x1d4f
    mov bx, ax                       ; 0x1d51
    mov word [bx + cell_slot_ref], 0 ; 0x1d53
.forward5:
    mov ax, 0x2c                     ; 0x1d59
    imul word [bp + 6]               ; 0x1d5c
    mov si, ax                       ; 0x1d5f
    mov ax, word [bp + 4]            ; 0x1d61
    shl ax, 1                        ; 0x1d64
    mov bx, ax                       ; 0x1d66
    mov bx, word [bx + party_char]   ; 0x1d68
    mov byte [bx + si + member_rec.item_cell], 0xff ; 0x1d6c
    mov ax, 0x2c                     ; 0x1d70
    imul word [bp + 6]               ; 0x1d73
    mov si, ax                       ; 0x1d76
    mov ax, word [bp + 4]            ; 0x1d78
    shl ax, 1                        ; 0x1d7b
    mov bx, ax                       ; 0x1d7d
    mov bx, word [bx + party_char]   ; 0x1d7f
    mov byte [bx + si + member_rec.item_state], 3 ; 0x1d83
    mov ax, 0x2c                     ; 0x1d87
    imul word [bp + 6]               ; 0x1d8a
    mov si, ax                       ; 0x1d8d
    mov ax, word [bp + 4]            ; 0x1d8f
    shl ax, 1                        ; 0x1d92
    mov bx, ax                       ; 0x1d94
    mov bx, word [bx + party_char]   ; 0x1d96
    mov word [bx + si + member_rec.item_charges], 0 ; 0x1d9a
    mov ax, 0x2c                     ; 0x1d9f
    imul word [bp + 6]               ; 0x1da2
    mov si, ax                       ; 0x1da5
    mov ax, word [bp + 4]            ; 0x1da7
    shl ax, 1                        ; 0x1daa
    mov bx, ax                       ; 0x1dac
    mov bx, word [bx + party_char]   ; 0x1dae
    mov word [bx + si + member_rec.item_timer], 0 ; 0x1db2
    mov ax, 0x2c                     ; 0x1db7
    imul word [bp + 6]               ; 0x1dba
    mov si, ax                       ; 0x1dbd
    mov ax, word [bp + 4]            ; 0x1dbf
    shl ax, 1                        ; 0x1dc2
    mov bx, ax                       ; 0x1dc4
    mov bx, word [bx + party_char]   ; 0x1dc6
    mov byte [bx + si + member_rec.item_countdown], 0 ; 0x1dca
    mov ax, 0x2c                     ; 0x1dce
    imul word [bp + 6]               ; 0x1dd1
    mov si, ax                       ; 0x1dd4
    mov ax, word [bp + 4]            ; 0x1dd6
    shl ax, 1                        ; 0x1dd9
    mov bx, ax                       ; 0x1ddb
    mov bx, word [bx + party_char]   ; 0x1ddd
    mov byte [bx + si + member_rec.f_0025], 0 ; 0x1de1
    mov word [bp - 2], 0             ; 0x1de5
.back1:
    mov ax, 0x2c                     ; 0x1dea
    imul word [bp + 6]               ; 0x1ded
    add ax, word [bp - 2]            ; 0x1df0
    mov si, ax                       ; 0x1df3
    mov ax, word [bp + 4]            ; 0x1df5
    shl ax, 1                        ; 0x1df8
    mov bx, ax                       ; 0x1dfa
    mov bx, word [bx + party_char]   ; 0x1dfc
    mov byte [bx + si + member_rec.f_0018], 0 ; 0x1e00
    inc word [bp - 2]                ; 0x1e04
    mov ax, word [bp - 2]            ; 0x1e07
    cmp ax, strict word 4            ; 0x1e0a
    jl short .back1                  ; 0x1e0d
    cmp word [bp + 4], byte 1        ; 0x1e0f
    jl short .return1                ; 0x1e13
    cmp word [bp + 4], byte 5        ; 0x1e15
    jg short .return1                ; 0x1e19
    mov ax, word [bp + 4]            ; 0x1e1b
    shl ax, 1                        ; 0x1e1e
    mov bx, ax                       ; 0x1e20
    mov bx, word [bx + party_char_ext] ; 0x1e22
    mov ax, word [bx + member_ext.reward] ; 0x1e26
    mov dx, word [bx + member_ext.reward + 0x2] ; 0x1e29
    add word [item_action_reward], ax ; 0x1e2c
    adc word [item_action_reward_hi], dx ; 0x1e30
.return1:
    ret                              ; 0x1e34
