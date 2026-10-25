; auto-generated
api_idx_00a4_PTJS:
    mov ax, 0xff5c                   ; 0x4e9e
    call aztec_csav                  ; 0x4ea1
    mov ax, 0x248                    ; 0x4ea4
    imul word [bp + 0x4]             ; 0x4ea7
    mov bx, ax                       ; 0x4eaa
    inc word [bx + party_records + pc_rec.power_cap] ; 0x4eac
    mov al, byte [bx + party_records + pc_rec.power_floor] ; 0x4eb0
    sub ah, ah                       ; 0x4eb4
    cmp ax, word [bx + party_records + pc_rec.power_cap] ; 0x4eb6
    jg short @..api_idx_00a4_PTJS.l1 ; 0x4eba
    mov byte [bx + party_records + pc_rec.power_floor], 0 ; 0x4ebc
@..api_idx_00a4_PTJS.l1:
    push word [bp + 0x4]             ; 0x4ec1
    call api_idx_0006_ILTI           ; 0x4ec4
    pop cx                           ; 0x4ec7
    mov ax, 0                        ; 0x4ec8
    push ax                          ; 0x4ecb
    push word [bp + 0x4]             ; 0x4ecc
    call loc_HJRN                    ; 0x4ecf
    add sp, byte 4                   ; 0x4ed2
    lea ax, word [bp - 0x0054]       ; 0x4ed5
    push ax                          ; 0x4ed8
    mov ax, MSG_YOU_MADE_A_LEVEL     ; 0x4ed9
    push ax                          ; 0x4edc
    call load_message_string         ; 0x4edd
    add sp, byte 4                   ; 0x4ee0
    mov ax, 0x5e                     ; 0x4ee3
    push ax                          ; 0x4ee6
    mov ax, 0x248                    ; 0x4ee7
    imul word [bp + 0x4]             ; 0x4eea
    add ax, party_records            ; 0x4eed
    push ax                          ; 0x4ef0
    lea ax, word [bp - 0x0054]       ; 0x4ef1
    push ax                          ; 0x4ef4
    call str_subst_char              ; 0x4ef5
    add sp, byte 6                   ; 0x4ef8
    lea ax, word [bp - 0x00a4]       ; 0x4efb
    push ax                          ; 0x4eff
    mov ax, 0x248                    ; 0x4f00
    imul word [bp + 0x4]             ; 0x4f03
    mov bx, ax                       ; 0x4f06
    mov al, byte [bx + party_records + pc_rec.label] ; 0x4f08
    sub ah, ah                       ; 0x4f0c
    add ax, strict word 0x78         ; 0x4f0e
    push ax                          ; 0x4f11
    call load_message_string         ; 0x4f12
    add sp, byte 4                   ; 0x4f15
    mov ax, 0x24                     ; 0x4f18
    push ax                          ; 0x4f1b
    lea ax, word [bp - 0x00a4]       ; 0x4f1c
    push ax                          ; 0x4f20
    lea ax, word [bp - 0x0054]       ; 0x4f21
    push ax                          ; 0x4f24
    call str_subst_char              ; 0x4f25
    add sp, byte 6                   ; 0x4f28
    mov ax, 1                        ; 0x4f2b
    push ax                          ; 0x4f2e
    lea ax, word [bp - 0x0054]       ; 0x4f2f
    push ax                          ; 0x4f32
    call api_idx_0004_PMIU           ; 0x4f33
    add sp, byte 4                   ; 0x4f36
    push word [bp + 0x4]             ; 0x4f39
    call api_idx_00b4_QLQS           ; 0x4f3c
    pop cx                           ; 0x4f3f
    push word [bp + 0x4]             ; 0x4f40
    call api_idx_00ac_MSQO           ; 0x4f43
    pop cx                           ; 0x4f46
    push word [bp + 0x4]             ; 0x4f47
    call api_idx_0004_KJII           ; 0x4f4a
    pop cx                           ; 0x4f4d
    push word [bp + 0x4]             ; 0x4f4e
    call loc_KPKJ                    ; 0x4f51
    pop cx                           ; 0x4f54
    mov word [bp - 0x0004], 0        ; 0x4f55
    mov word [bp - 0x0002], 0        ; 0x4f5a
@..api_idx_00a4_PTJS.l2:
    mov ax, word [bp - 0x0002]       ; 0x4f5f
    shl ax, 1                        ; 0x4f62
    mov bx, ax                       ; 0x4f64
    mov ax, word [bx + slot_value]   ; 0x4f66
    add word [bp - 0x0004], ax       ; 0x4f6a
    inc word [bp - 0x0002]           ; 0x4f6d
    mov ax, word [bp - 0x0002]       ; 0x4f70
    cmp ax, strict word 4            ; 0x4f73
    jl short @..api_idx_00a4_PTJS.l2 ; 0x4f76
    cmp word [bp - 0x0004], byte 0   ; 0x4f78
    jle short @..api_idx_00a4_PTJS.l3 ; 0x4f7c
    mov ax, MSG_YOU_EARNED_A_S       ; 0x4f7e
    push ax                          ; 0x4f81
    push word [bp + 0x4]             ; 0x4f82
    call api_idx_0088_LVJM           ; 0x4f85
    add sp, byte 4                   ; 0x4f88
@..api_idx_00a4_PTJS.l3:
    push word [bp + 0x4]             ; 0x4f8b
    call api_idx_0052_LHVG           ; 0x4f8e
    pop cx                           ; 0x4f91
    push word [bp + 0x4]             ; 0x4f92
    call api_idx_0018_IKVK           ; 0x4f95
    pop cx                           ; 0x4f98
    mov word [bp - 0x0002], 0        ; 0x4f99
@..api_idx_00a4_PTJS.l4:
    mov ax, 0x248                    ; 0x4f9e
    imul word [bp + 0x4]             ; 0x4fa1
    add ax, word [bp - 0x0002]       ; 0x4fa4
    mov bx, ax                       ; 0x4fa7
    cmp byte [bx + party_records + pc_rec.f_015c], 0 ; 0x4fa9
    jbe short @..api_idx_00a4_PTJS.l5 ; 0x4fae
    push word [bp - 0x0002]          ; 0x4fb0
    push word [bp + 0x4]             ; 0x4fb3
    call api_idx_00ca_HKHO           ; 0x4fb6
    add sp, byte 4                   ; 0x4fb9
    jmp short @..api_idx_00a4_PTJS.l4 ; 0x4fbc
@..api_idx_00a4_PTJS.l5:
    inc word [bp - 0x0002]           ; 0x4fbe
    mov ax, word [bp - 0x0002]       ; 0x4fc1
    cmp ax, strict word 4            ; 0x4fc4
    jl short @..api_idx_00a4_PTJS.l4 ; 0x4fc7
    ret                              ; 0x4fc9
