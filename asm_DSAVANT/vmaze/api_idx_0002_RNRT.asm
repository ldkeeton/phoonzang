; auto-generated
api_idx_0002_RNRT:
    mov ax, 0xfffe                   ; 0x110e
    call aztec_csav                  ; 0x1111
    call loc_JGLI                    ; 0x1114
    push word [bp + 0x4]             ; 0x1117
    call api_idx_0050_RIIV           ; 0x111a
    pop cx                           ; 0x111d
    mov word [bp - 0x0002], 0        ; 0x111e
    jmp short @..api_idx_0002_RNRT.l2 ; 0x1123
@..api_idx_0002_RNRT.l1:
    mov ax, 2                        ; 0x1125
    push ax                          ; 0x1128
    push word [bp - 0x0002]          ; 0x1129
    call loc_UTRI                    ; 0x112c
    add sp, byte 4                   ; 0x112f
    inc word [bp - 0x0002]           ; 0x1132
@..api_idx_0002_RNRT.l2:
    mov ax, word [bp - 0x0002]       ; 0x1135
    cmp ax, word [bss_69c8]          ; 0x1138
    jl short @..api_idx_0002_RNRT.l1 ; 0x113c
    mov ax, word [bss_905a]          ; 0x113e
    shl ax, 1                        ; 0x1141
    push ax                          ; 0x1143
    call api_idx_0006_KLOT           ; 0x1144
    pop cx                           ; 0x1147
    mov ax, 0x98                     ; 0x1148
    push ax                          ; 0x114b
    mov ax, 0x13f                    ; 0x114c
    push ax                          ; 0x114f
    mov ax, 0x92                     ; 0x1150
    push ax                          ; 0x1153
    mov ax, 0                        ; 0x1154
    push ax                          ; 0x1157
    call thunk_4                     ; 0x1158
    add sp, byte 8                   ; 0x115b
    mov word [bss_830a], 8           ; 0x115e
    ret                              ; 0x1164
