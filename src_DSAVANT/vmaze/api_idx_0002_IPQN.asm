; auto-generated
api_idx_0002_IPQN:
    mov ax, 0xfffe                   ; 0x1206
    call aztec_csav                  ; 0x1209
    mov word [bp - 2], 0             ; 0x120c
.back1:
    mov ax, word [bp + 4]            ; 0x1211
    mov cx, word [bp - 2]            ; 0x1214
    shl cx, 1                        ; 0x1217
    shl cx, 1                        ; 0x1219
    mov bx, cx                       ; 0x121b
    sub word [bx + party_status_timer], ax ; 0x121d
    cmp word [bx + party_status_timer], byte 0 ; 0x1221
    jg short .forward1               ; 0x1226
    mov word [bx + party_status_timer], 0 ; 0x1228
    mov word [bx + bss_82f4], 0      ; 0x122e
.forward1:
    inc word [bp - 2]                ; 0x1234
    mov ax, word [bp - 2]            ; 0x1237
    cmp ax, strict word 6            ; 0x123a
    jl short .back1                  ; 0x123d
    ret                              ; 0x123f
