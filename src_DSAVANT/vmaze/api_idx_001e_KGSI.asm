; auto-generated
api_idx_001e_KGSI:
    mov ax, 0xffe2                   ; 0x7034
    call aztec_csav                  ; 0x7037
    mov ax, word [bss_8d12]          ; 0x703a
    shl ax, 1                        ; 0x703d
    mov si, ax                       ; 0x703f
    mov bx, word [bss_0e12]          ; 0x7041
    cmp word [bx + si], byte 0       ; 0x7045
    jle short @..api_idx_001e_KGSI.l1 ; 0x7048
    push word [bx + si]              ; 0x704a
    call api_idx_0050_JLOV           ; 0x704c
    pop cx                           ; 0x704f
    push word [bss_905a]             ; 0x7050
    call api_idx_0006_LIGG           ; 0x7054
    pop cx                           ; 0x7057
    mov ax, 0x98                     ; 0x7058
    push ax                          ; 0x705b
    mov ax, 0x13f                    ; 0x705c
    push ax                          ; 0x705f
    mov ax, 0x92                     ; 0x7060
    push ax                          ; 0x7063
    mov ax, 0                        ; 0x7064
    push ax                          ; 0x7067
    call gfx_entry_16                ; 0x7068
    add sp, byte 8                   ; 0x706b
@..api_idx_001e_KGSI.l1:
    mov ax, word [bss_8d12]          ; 0x706e
    shl ax, 1                        ; 0x7071
    mov si, ax                       ; 0x7073
    mov bx, word [bss_0e12]          ; 0x7075
    mov ax, word [bx + si + 0x1e0]   ; 0x7079
    mov word [bp - 0x001e], ax       ; 0x707d
    mov ax, word [bx + si + 0x3c0]   ; 0x7080
    mov word [bp - 0x000e], ax       ; 0x7084
    mov word [bp - 0x0002], 0        ; 0x7087
@..api_idx_001e_KGSI.l2:
    mov ax, 1                        ; 0x708c
    push ax                          ; 0x708f
    mov ax, word [bp - 0x0002]       ; 0x7090
    add ax, strict word 8            ; 0x7093
    push ax                          ; 0x7096
    push word [bp - 0x000e]          ; 0x7097
    call ds_dos_con_loc_QJHU         ; 0x709a
    add sp, byte 6                   ; 0x709d
    mov cx, word [bp - 0x0002]       ; 0x70a0
    shl cx, 1                        ; 0x70a3
    mov bx, cx                       ; 0x70a5
    add bx, bp                       ; 0x70a7
    mov word [bx - 0x000c], ax       ; 0x70a9
    inc word [bp - 0x0002]           ; 0x70ac
    mov ax, word [bp - 0x0002]       ; 0x70af
    cmp ax, strict word 4            ; 0x70b2
    jl short @..api_idx_001e_KGSI.l2 ; 0x70b5
    mov ax, 8                        ; 0x70b7
    push ax                          ; 0x70ba
    mov ax, 0                        ; 0x70bb
    push ax                          ; 0x70be
    push word [bp - 0x000e]          ; 0x70bf
    call ds_dos_con_loc_QJHU         ; 0x70c2
    add sp, byte 6                   ; 0x70c5
    mov word [bp - 0x0010], ax       ; 0x70c8
    mov bx, word [bss_0e12]          ; 0x70cb
    mov si, word [bss_8d12]          ; 0x70cf
    mov al, byte [bx + si + 0xa50]   ; 0x70d3
    sub ah, ah                       ; 0x70d7
    mov word [bp - 0x0012], ax       ; 0x70d9
    mov ax, 1                        ; 0x70dc
    push ax                          ; 0x70df
    mov ax, 0xc                      ; 0x70e0
    push ax                          ; 0x70e3
    push word [bp - 0x000e]          ; 0x70e4
    call ds_dos_con_loc_QJHU         ; 0x70e7
    add sp, byte 6                   ; 0x70ea
    mov word [bp - 0x0018], ax       ; 0x70ed
    mov ax, 1                        ; 0x70f0
    push ax                          ; 0x70f3
    mov ax, 0xd                      ; 0x70f4
    push ax                          ; 0x70f7
    push word [bp - 0x000e]          ; 0x70f8
    call ds_dos_con_loc_QJHU         ; 0x70fb
    add sp, byte 6                   ; 0x70fe
    cmp ax, strict word 1            ; 0x7101
    jne short @..api_idx_001e_KGSI.l3 ; 0x7104
    mov ax, 1                        ; 0x7106
    jmp short @..api_idx_001e_KGSI.l4 ; 0x7109
@..api_idx_001e_KGSI.l3:
    mov ax, 0xffff                   ; 0x710b
@..api_idx_001e_KGSI.l4:
    mov word [bp - 0x001a], ax       ; 0x710e
    mov ax, 1                        ; 0x7111
    push ax                          ; 0x7114
    mov ax, 0xe                      ; 0x7115
    push ax                          ; 0x7118
    push word [bp - 0x000e]          ; 0x7119
    call ds_dos_con_loc_QJHU         ; 0x711c
    add sp, byte 6                   ; 0x711f
    mov word [bp - 0x001c], ax       ; 0x7122
    mov word [bp - 0x0002], 0        ; 0x7125
    jmp near @..api_idx_001e_KGSI.l16 ; 0x712a
@..api_idx_001e_KGSI.l5:
    lea ax, word [bp - 0x000c]       ; 0x712d
    push ax                          ; 0x7130
    call api_idx_0002_KUOJ           ; 0x7131
    pop cx                           ; 0x7134
    mov word [bp - 0x0016], ax       ; 0x7135
    cmp word [bp - 0x0018], byte 1   ; 0x7138
    jne short @..api_idx_001e_KGSI.l11 ; 0x713c
    cmp ax, word [bss_82ee]          ; 0x713e
    je short @..api_idx_001e_KGSI.l11 ; 0x7142
    cmp word [bp - 0x001a], byte 1   ; 0x7144
    jne short @..api_idx_001e_KGSI.l6 ; 0x7148
    sub ax, word [bss_82ee]          ; 0x714a
    add ax, strict word 4            ; 0x714e
    mov cx, 4                        ; 0x7151
    cwd                              ; 0x7154
    idiv cx                          ; 0x7155
    mov word [bp - 0x0014], dx       ; 0x7157
    jmp short @..api_idx_001e_KGSI.l7 ; 0x715a
@..api_idx_001e_KGSI.l6:
    mov ax, word [bss_82ee]          ; 0x715c
    sub ax, word [bp - 0x0016]       ; 0x715f
    add ax, strict word 4            ; 0x7162
    mov cx, 4                        ; 0x7165
    cwd                              ; 0x7168
    idiv cx                          ; 0x7169
    mov word [bp - 0x0014], dx       ; 0x716b
@..api_idx_001e_KGSI.l7:
    cmp word [bp - 0x0012], byte 0   ; 0x716e
    jne short @..api_idx_001e_KGSI.l8 ; 0x7172
    dec word [bp - 0x0014]           ; 0x7174
@..api_idx_001e_KGSI.l8:
    mov word [bp - 0x0004], 0        ; 0x7177
    jmp short @..api_idx_001e_KGSI.l10 ; 0x717c
@..api_idx_001e_KGSI.l9:
    push word [bp - 0x001e]          ; 0x717e
    call api_idx_0006_LIGG           ; 0x7181
    pop cx                           ; 0x7184
    mov ax, word [bss_82ee]          ; 0x7185
    add ax, word [bp - 0x001a]       ; 0x7188
    add ax, strict word 4            ; 0x718b
    mov cx, 4                        ; 0x718e
    cwd                              ; 0x7191
    idiv cx                          ; 0x7192
    mov word [bss_82ee], dx          ; 0x7194
    call loc_IONR                    ; 0x7198
    inc word [bp - 0x0004]           ; 0x719b
@..api_idx_001e_KGSI.l10:
    mov ax, word [bp - 0x0004]       ; 0x719e
    cmp ax, word [bp - 0x0014]       ; 0x71a1
    jl short @..api_idx_001e_KGSI.l9 ; 0x71a4
@..api_idx_001e_KGSI.l11:
    push word [bp - 0x001e]          ; 0x71a6
    call api_idx_0006_LIGG           ; 0x71a9
    pop cx                           ; 0x71ac
    mov ax, word [bp - 0x0016]       ; 0x71ad
    mov word [bss_82ee], ax          ; 0x71b0
    cmp word [bp - 0x0012], byte 0   ; 0x71b3
    jle short @..api_idx_001e_KGSI.l15 ; 0x71b7
    call loc_IVLM                    ; 0x71b9
    cmp word [bp - 0x001c], byte 1   ; 0x71bc
    jne short @..api_idx_001e_KGSI.l12 ; 0x71c0
    push word [bp - 0x0012]          ; 0x71c2
    call ds_app_PUNN                 ; 0x71c5
    pop cx                           ; 0x71c8
    inc ax                           ; 0x71c9
    push ax                          ; 0x71ca
    push word [bss_82ee]             ; 0x71cb
    call loc_KOGT                    ; 0x71cf
    add sp, byte 4                   ; 0x71d2
    jmp short @..api_idx_001e_KGSI.l13 ; 0x71d5
@..api_idx_001e_KGSI.l12:
    push word [bp - 0x0012]          ; 0x71d7
    push word [bss_82ee]             ; 0x71da
    call loc_KOGT                    ; 0x71de
    add sp, byte 4                   ; 0x71e1
@..api_idx_001e_KGSI.l13:
    push word [bss_8f44]             ; 0x71e4
    push word [bss_8f46]             ; 0x71e8
    mov ax, bss_8f3e                 ; 0x71ec
    push ax                          ; 0x71ef
    mov ax, bss_8f40                 ; 0x71f0
    push ax                          ; 0x71f3
    mov ax, bss_8f42                 ; 0x71f4
    push ax                          ; 0x71f7
    call api_idx_0004_QVPP           ; 0x71f8
    add sp, byte 0x0a                ; 0x71fb
    cmp ax, strict word 1            ; 0x71fe
    jne short @..api_idx_001e_KGSI.l14 ; 0x7201
    mov ax, 4                        ; 0x7203
    push ax                          ; 0x7206
    mov ax, 0x7e6                    ; 0x7207
    push ax                          ; 0x720a
    call api_idx_0002_UGJG           ; 0x720b
    add sp, byte 4                   ; 0x720e
    ret                              ; 0x7211
@..api_idx_001e_KGSI.l14:
    mov bx, word [bss_0e12]          ; 0x7212
    mov si, word [bss_8f3e]          ; 0x7216
    mov al, byte [bx + si + 0xb40]   ; 0x721a
    sub ah, ah                       ; 0x721e
    mov word [bss_8d12], ax          ; 0x7220
    mov word [bss_9bd0], 0           ; 0x7223
@..api_idx_001e_KGSI.l15:
    call loc_IONR                    ; 0x7229
    inc word [bp - 0x0002]           ; 0x722c
@..api_idx_001e_KGSI.l16:
    mov ax, word [bp - 0x0002]       ; 0x722f
    cmp ax, word [bp - 0x0010]       ; 0x7232
    jge short @..api_idx_001e_KGSI.l17 ; 0x7235
    jmp near @..api_idx_001e_KGSI.l5 ; 0x7237
@..api_idx_001e_KGSI.l17:
    push word [bp - 0x001e]          ; 0x723a
    call api_idx_0006_LIGG           ; 0x723d
    pop cx                           ; 0x7240
    ret                              ; 0x7241
