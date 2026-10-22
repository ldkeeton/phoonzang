; auto-generated
api_idx_005a_STLR:
    mov ax, 0xffa6                   ; 0x2cde
    call aztec_csav                  ; 0x2ce1
    cmp word [bss_90b8], byte 0      ; 0x2ce4
    je short @..api_idx_005a_STLR.l1 ; 0x2ce9
    lea ax, word [bp - 0x005a]       ; 0x2ceb
    push ax                          ; 0x2cee
    mov ax, 0x7e9                    ; 0x2cef
    push ax                          ; 0x2cf2
    call load_message_string         ; 0x2cf3
    add sp, byte 4                   ; 0x2cf6
    mov ax, 0                        ; 0x2cf9
    push ax                          ; 0x2cfc
    lea ax, word [bp - 0x005a]       ; 0x2cfd
    push ax                          ; 0x2d00
    call api_idx_0008_QLVR           ; 0x2d01
    add sp, byte 4                   ; 0x2d04
@..api_idx_005a_STLR.l1:
    mov word [bp - 0x000a], 0        ; 0x2d07
    les bx, word [tick_counter_ptr]  ; 0x2d0c
    mov ax, word [es:bx]             ; 0x2d10
    mov dx, word [es:bx + 0x2]       ; 0x2d13
    mov word [bss_908c], dx          ; 0x2d17
    mov word [party_redraw_last_tick], ax ; 0x2d1b
    mov word [bp - 0x0002], 0        ; 0x2d1e
@..api_idx_005a_STLR.l2:
    cmp word [bp + 0x4], byte 0      ; 0x2d23
    jne short @..api_idx_005a_STLR.l3 ; 0x2d27
    cmp word [bp - 0x0002], byte 1   ; 0x2d29
    jne short @..api_idx_005a_STLR.l3 ; 0x2d2d
    mov bx, word [bss_8492]          ; 0x2d2f
    cmp byte [bx + 0xd8], 0          ; 0x2d33
    jbe short @..api_idx_005a_STLR.l3 ; 0x2d38
    mov ax, 0x10                     ; 0x2d3a
    push ax                          ; 0x2d3d
    call play_sound_effect           ; 0x2d3e
    pop cx                           ; 0x2d41
@..api_idx_005a_STLR.l3:
    mov word [bss_845e], 0xfffe      ; 0x2d42
    call api_idx_0006_IRNH           ; 0x2d48
    mov word [bp - 0x0004], 0        ; 0x2d4b
@..api_idx_005a_STLR.l4:
    mov word [bp - 0x0006], 0        ; 0x2d50
@..api_idx_005a_STLR.l5:
    mov ax, word [bp - 0x0006]       ; 0x2d55
    mov cx, 2                        ; 0x2d58
    cwd                              ; 0x2d5b
    idiv cx                          ; 0x2d5c
    mov ax, dx                       ; 0x2d5e
    cmp ax, strict word 1            ; 0x2d60
    je short @..api_idx_005a_STLR.l6 ; 0x2d63
    cmp word [bp - 0x0006], byte 0   ; 0x2d65
    jne short @..api_idx_005a_STLR.l7 ; 0x2d69
@..api_idx_005a_STLR.l6:
    mov ax, word [bp + 0x4]          ; 0x2d6b
    shl ax, 1                        ; 0x2d6e
    shl ax, 1                        ; 0x2d70
    shl ax, 1                        ; 0x2d72
    mov cx, word [bp - 0x0002]       ; 0x2d74
    shl cx, 1                        ; 0x2d77
    add ax, cx                       ; 0x2d79
    mov bx, ax                       ; 0x2d7b
    mov cx, word [bx + 0x5fe]        ; 0x2d7d
    mov ax, 0                        ; 0x2d81
    sub ax, cx                       ; 0x2d84
    jmp short @..api_idx_005a_STLR.l8 ; 0x2d86
@..api_idx_005a_STLR.l7:
    mov ax, word [bp + 0x4]          ; 0x2d88
    shl ax, 1                        ; 0x2d8b
    shl ax, 1                        ; 0x2d8d
    shl ax, 1                        ; 0x2d8f
    mov cx, word [bp - 0x0002]       ; 0x2d91
    shl cx, 1                        ; 0x2d94
    add ax, cx                       ; 0x2d96
    mov bx, ax                       ; 0x2d98
    mov ax, word [bx + 0x5fe]        ; 0x2d9a
@..api_idx_005a_STLR.l8:
    mov word [bp - 0x0008], ax       ; 0x2d9e
    cmp word [bp - 0x0004], byte 0   ; 0x2da1
    jne short @..api_idx_005a_STLR.l9 ; 0x2da5
    cmp word [bp - 0x0006], byte 0   ; 0x2da7
    jne short @..api_idx_005a_STLR.l9 ; 0x2dab
    cmp word [bss_90ba], byte 1      ; 0x2dad
    jne short @..api_idx_005a_STLR.l9 ; 0x2db2
    mov word [bp - 0x0008], 0        ; 0x2db4
@..api_idx_005a_STLR.l9:
    push word [bp - 0x000a]          ; 0x2db9
    mov ax, 0xf8                     ; 0x2dbc
    push ax                          ; 0x2dbf
    mov ax, 0x48                     ; 0x2dc0
    push ax                          ; 0x2dc3
    mov ax, 6                        ; 0x2dc4
    imul word [bp - 0x0004]          ; 0x2dc7
    mov cx, word [bp - 0x0006]       ; 0x2dca
    shl cx, 1                        ; 0x2dcd
    add ax, cx                       ; 0x2dcf
    mov bx, ax                       ; 0x2dd1
    mov cx, word [bx + 0x580]        ; 0x2dd3
    mov ax, 0x64                     ; 0x2dd7
    sub ax, cx                       ; 0x2dda
    push ax                          ; 0x2ddc
    mov ax, 0                        ; 0x2ddd
    cmp word [bx - 0x6f42], byte 1   ; 0x2de0
    jne short @..api_idx_005a_STLR.l10 ; 0x2de5
    mov ax, word [bp - 0x0008]       ; 0x2de7
@..api_idx_005a_STLR.l10:
    push ax                          ; 0x2dea
    push word [bp - 0x0006]          ; 0x2deb
    push word [bp - 0x0004]          ; 0x2dee
    call api_idx_001c_VLRT           ; 0x2df1
    add sp, byte 0x0e                ; 0x2df4
    inc word [bp - 0x0006]           ; 0x2df7
    mov ax, word [bp - 0x0006]       ; 0x2dfa
    cmp ax, strict word 3            ; 0x2dfd
    jge short @..api_idx_005a_STLR.l11 ; 0x2e00
    jmp near @..api_idx_005a_STLR.l5 ; 0x2e02
@..api_idx_005a_STLR.l11:
    inc word [bp - 0x0004]           ; 0x2e05
    mov ax, word [bp - 0x0004]       ; 0x2e08
    cmp ax, strict word 3            ; 0x2e0b
    jge short @..api_idx_005a_STLR.l12 ; 0x2e0e
    jmp near @..api_idx_005a_STLR.l4 ; 0x2e10
@..api_idx_005a_STLR.l12:
    call api_idx_000e_NKQN           ; 0x2e13
    call ds_app_JKOJ                 ; 0x2e16
    mov word [bss_845e], 0           ; 0x2e19
@..api_idx_005a_STLR.l13:
    call api_idx_0006_IRNH           ; 0x2e1f
    cmp word [bss_845e], byte 0xfe   ; 0x2e22
    jne short @..api_idx_005a_STLR.l13 ; 0x2e27
    call loc_KRMP                    ; 0x2e29
    mov word [bp - 0x000a], ax       ; 0x2e2c
    cmp word [bp - 0x000a], byte 0   ; 0x2e2f
    je short @..api_idx_005a_STLR.l14 ; 0x2e33
    mov ax, word [bss_906c]          ; 0x2e35
    inc ax                           ; 0x2e38
    mov cx, 2                        ; 0x2e39
    cwd                              ; 0x2e3c
    idiv cx                          ; 0x2e3d
    mov word [bss_906c], dx          ; 0x2e3f
    mov ax, word [bss_82e8]          ; 0x2e43
    inc ax                           ; 0x2e46
    cwd                              ; 0x2e47
    idiv cx                          ; 0x2e48
    mov word [bss_82e8], dx          ; 0x2e4a
@..api_idx_005a_STLR.l14:
    cmp word [bp - 0x000a], byte 0   ; 0x2e4e
    jne short @..api_idx_005a_STLR.l15 ; 0x2e52
    jmp near @..api_idx_005a_STLR.l3 ; 0x2e54
@..api_idx_005a_STLR.l15:
    inc word [bp - 0x0002]           ; 0x2e57
    mov ax, word [bp - 0x0002]       ; 0x2e5a
    cmp ax, strict word 4            ; 0x2e5d
    jge short @..api_idx_005a_STLR.l16 ; 0x2e60
    jmp near @..api_idx_005a_STLR.l2 ; 0x2e62
@..api_idx_005a_STLR.l16:
    mov word [bp - 0x0004], 0        ; 0x2e65
@..api_idx_005a_STLR.l17:
    mov word [bp - 0x0006], 0        ; 0x2e6a
@..api_idx_005a_STLR.l18:
    mov ax, 6                        ; 0x2e6f
    imul word [bp - 0x0004]          ; 0x2e72
    mov cx, word [bp - 0x0006]       ; 0x2e75
    shl cx, 1                        ; 0x2e78
    add ax, cx                       ; 0x2e7a
    mov bx, ax                       ; 0x2e7c
    mov word [bx - 0x6f42], 0        ; 0x2e7e
    inc word [bp - 0x0006]           ; 0x2e84
    mov ax, word [bp - 0x0006]       ; 0x2e87
    cmp ax, strict word 3            ; 0x2e8a
    jl short @..api_idx_005a_STLR.l18 ; 0x2e8d
    inc word [bp - 0x0004]           ; 0x2e8f
    mov ax, word [bp - 0x0004]       ; 0x2e92
    cmp ax, strict word 3            ; 0x2e95
    jl short @..api_idx_005a_STLR.l17 ; 0x2e98
    mov word [bss_90ba], 0           ; 0x2e9a
    cmp word [bss_90b8], byte 0      ; 0x2ea0
    je short @..api_idx_005a_STLR.l19 ; 0x2ea5
    mov ax, 0xc6                     ; 0x2ea7
    push ax                          ; 0x2eaa
    mov ax, 0x109                    ; 0x2eab
    push ax                          ; 0x2eae
    mov ax, 0x92                     ; 0x2eaf
    push ax                          ; 0x2eb2
    mov ax, 0x37                     ; 0x2eb3
    push ax                          ; 0x2eb6
    call gfx_show_area               ; 0x2eb7
    add sp, byte 8                   ; 0x2eba
    mov word [bss_90b8], 0           ; 0x2ebd
@..api_idx_005a_STLR.l19:
    ret                              ; 0x2ec3
