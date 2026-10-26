; auto-generated
advance_melee_item_slots:
    mov ax, 0xfd84                   ; 0x1f39
    call aztec_csav                  ; 0x1f3c
    mov word [bp - 2], 0             ; 0x1f3f
    jmp short .forward2              ; 0x1f44
.back1:
    mov ax, 0x2c                     ; 0x1f46
    imul word [bp - 2]               ; 0x1f49
    mov si, ax                       ; 0x1f4c
    mov bx, word [party_char]        ; 0x1f4e
    cmp byte [bx + si + member_rec.item_state], 3 ; 0x1f52
    jae short .forward1              ; 0x1f56
    mov ax, 0x248                    ; 0x1f58
    imul word [bp - 2]               ; 0x1f5b
    mov bx, ax                       ; 0x1f5e
    mov al, byte [bx + party_records + pc_rec.defense] ; 0x1f60
    sub ah, ah                       ; 0x1f64
    push ax                          ; 0x1f66
    mov al, byte [bx + party_records + pc_rec.attack] ; 0x1f67
    sub ah, ah                       ; 0x1f6b
    push ax                          ; 0x1f6d
    push word [bp - 2]               ; 0x1f6e
    mov ax, 0                        ; 0x1f71
    push ax                          ; 0x1f74
    call advance_item_slot_action    ; 0x1f75
    add sp, byte 8                   ; 0x1f78
    cmp ax, strict word 1            ; 0x1f7b
    jne short .forward1              ; 0x1f7e
    push word [bp - 2]               ; 0x1f80
    call copy_member_party_record    ; 0x1f83
    pop cx                           ; 0x1f86
    mov ax, 1                        ; 0x1f87
    push ax                          ; 0x1f8a
    push word [bp - 2]               ; 0x1f8b
    call draw_party_member_panel     ; 0x1f8e
    add sp, byte 4                   ; 0x1f91
    mov ax, 0x248                    ; 0x1f94
    imul word [bp - 2]               ; 0x1f97
    mov bx, ax                       ; 0x1f9a
    mov al, byte [bx + party_records + pc_rec.gender] ; 0x1f9c
    sub ah, ah                       ; 0x1fa0
    add ax, strict word 8            ; 0x1fa2
    push ax                          ; 0x1fa5
    call play_sound_effect           ; 0x1fa6
    pop cx                           ; 0x1fa9
.forward1:
    inc word [bp - 2]                ; 0x1faa
.forward2:
    mov ax, word [bp - 2]            ; 0x1fad
    cmp ax, word [party_char_count]  ; 0x1fb0
    jl short .back1                  ; 0x1fb4
    mov word [bp - 2], 0             ; 0x1fb6
    jmp short .forward3              ; 0x1fbb
.back2:
    push word [bp - 2]               ; 0x1fbd
    call copy_member_party_record    ; 0x1fc0
    pop cx                           ; 0x1fc3
    inc word [bp - 2]                ; 0x1fc4
.forward3:
    mov ax, word [bp - 2]            ; 0x1fc7
    cmp ax, word [party_char_count]  ; 0x1fca
    jl short .back2                  ; 0x1fce
    mov word [bp - 2], 0             ; 0x1fd0
    jmp near .forward8               ; 0x1fd5
.back3:
    mov ax, word [bp - 2]            ; 0x1fd8
    inc ax                           ; 0x1fdb
    mov word [bp - 4], ax            ; 0x1fdc
    jmp near .forward6               ; 0x1fdf
.back4:
    mov ax, 0x248                    ; 0x1fe2
    imul word [bp - 2]               ; 0x1fe5
    mov bx, ax                       ; 0x1fe8
    mov al, byte [bx + party_records + pc_rec.state] ; 0x1fea
    push ax                          ; 0x1fee
    mov ax, 0x248                    ; 0x1fef
    imul word [bp - 4]               ; 0x1ff2
    mov bx, ax                       ; 0x1ff5
    mov cl, byte [bx + party_records + pc_rec.state] ; 0x1ff7
    pop ax                           ; 0x1ffb
    cmp al, cl                       ; 0x1ffc
    ja short .forward4               ; 0x1ffe
    jmp near .forward5               ; 0x2000
.forward4:
    mov ax, 0x248                    ; 0x2003
    push ax                          ; 0x2006
    add bx, party_records            ; 0x2007
    mov ax, bx                       ; 0x200b
    push ax                          ; 0x200d
    mov ax, 0x248                    ; 0x200e
    imul word [bp - 2]               ; 0x2011
    add ax, party_records            ; 0x2014
    push ax                          ; 0x2017
    call aztec_swapmem               ; 0x2018
    add sp, byte 6                   ; 0x201b
    mov ax, 0x2c                     ; 0x201e
    push ax                          ; 0x2021
    mov ax, 0x2c                     ; 0x2022
    imul word [bp - 4]               ; 0x2025
    mov cx, ax                       ; 0x2028
    mov ax, word [party_char]        ; 0x202a
    add ax, cx                       ; 0x202d
    push ax                          ; 0x202f
    mov ax, 0x2c                     ; 0x2030
    imul word [bp - 2]               ; 0x2033
    mov cx, ax                       ; 0x2036
    mov ax, word [party_char]        ; 0x2038
    add ax, cx                       ; 0x203b
    push ax                          ; 0x203d
    call aztec_swapmem               ; 0x203e
    add sp, byte 6                   ; 0x2041
    mov ax, word [bp - 2]            ; 0x2044
    shl ax, 1                        ; 0x2047
    mov bx, ax                       ; 0x2049
    mov ax, word [bx + member_roster_index + 0x2] ; 0x204b
    mov word [bp - 0x27a], ax        ; 0x204f
    mov ax, word [bp - 4]            ; 0x2053
    shl ax, 1                        ; 0x2056
    mov bx, ax                       ; 0x2058
    mov ax, word [bx + member_roster_index + 0x2] ; 0x205a
    mov cx, word [bp - 2]            ; 0x205e
    shl cx, 1                        ; 0x2061
    mov bx, cx                       ; 0x2063
    mov word [bx + member_roster_index + 0x2], ax ; 0x2065
    mov ax, word [bp - 0x27a]        ; 0x2069
    mov cx, word [bp - 4]            ; 0x206d
    shl cx, 1                        ; 0x2070
    mov bx, cx                       ; 0x2072
    mov word [bx + member_roster_index + 0x2], ax ; 0x2074
    mov ax, word [bp - 2]            ; 0x2078
    shl ax, 1                        ; 0x207b
    mov bx, ax                       ; 0x207d
    mov ax, word [bx + member_icon]  ; 0x207f
    mov word [bp - 0x27a], ax        ; 0x2083
    mov bx, cx                       ; 0x2087
    mov ax, word [bx + member_icon]  ; 0x2089
    mov cx, word [bp - 2]            ; 0x208d
    shl cx, 1                        ; 0x2090
    mov bx, cx                       ; 0x2092
    mov word [bx + member_icon], ax  ; 0x2094
    mov ax, word [bp - 0x27a]        ; 0x2098
    mov cx, word [bp - 4]            ; 0x209c
    shl cx, 1                        ; 0x209f
    mov bx, cx                       ; 0x20a1
    mov word [bx + member_icon], ax  ; 0x20a3
.forward5:
    inc word [bp - 4]                ; 0x20a7
.forward6:
    mov ax, word [bp - 4]            ; 0x20aa
    cmp ax, word [party_char_count]  ; 0x20ad
    jge short .forward7              ; 0x20b1
    jmp near .back4                  ; 0x20b3
.forward7:
    inc word [bp - 2]                ; 0x20b6
.forward8:
    mov ax, word [party_char_count]  ; 0x20b9
    dec ax                           ; 0x20bc
    cmp ax, word [bp - 2]            ; 0x20bd
    jle short .forward9              ; 0x20c0
    jmp near .back3                  ; 0x20c2
.forward9:
    mov word [bp - 4], 0             ; 0x20c5
    mov word [bp - 0x27c], 0         ; 0x20ca
    mov word [bp - 2], 0             ; 0x20d0
    jmp short .forward12             ; 0x20d5
.back5:
    mov ax, 0x248                    ; 0x20d7
    imul word [bp - 2]               ; 0x20da
    mov bx, ax                       ; 0x20dd
    cmp byte [bx + party_records + pc_rec.state], 2 ; 0x20df
    jb short .forward10              ; 0x20e4
    inc word [bp - 4]                ; 0x20e6
.forward10:
    mov ax, 0x2c                     ; 0x20e9
    imul word [bp - 2]               ; 0x20ec
    mov si, ax                       ; 0x20ef
    mov bx, word [party_char]        ; 0x20f1
    cmp byte [bx + si + member_rec.item_phase], 2 ; 0x20f5
    jne short .forward11             ; 0x20f9
    mov word [bp - 0x27c], 1         ; 0x20fb
.forward11:
    inc word [bp - 2]                ; 0x2101
.forward12:
    mov ax, word [bp - 2]            ; 0x2104
    cmp ax, word [party_char_count]  ; 0x2107
    jl short .back5                  ; 0x210b
    mov ax, word [bp - 4]            ; 0x210d
    cmp ax, word [party_char_count]  ; 0x2110
    jne short .forward13             ; 0x2114
    mov word [party_return_state], 8 ; 0x2116
    mov word [party_screen_done], 1  ; 0x211c
    jmp short .return1               ; 0x2122
.forward13:
    cmp word [bp - 0x27c], byte 0    ; 0x2124
    jle short .return1               ; 0x2129
    mov word [party_return_state], 0x17 ; 0x212b
    mov word [party_screen_done], 1  ; 0x2131
.return1:
    ret                              ; 0x2137
