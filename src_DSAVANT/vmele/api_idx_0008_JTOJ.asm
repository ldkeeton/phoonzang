; auto-generated
api_idx_0008_JTOJ:
    mov ax, 0xfff8                   ; 0x306a
    call aztec_csav                  ; 0x306d
    mov word [bp - 0x0002], 0        ; 0x3070
loc_RUIS_3075:
    mov word [bp - 0x0004], 0        ; 0x3075
loc_VHSO:
    mov ax, word [bp - 0x0002]       ; 0x307a
    shl ax, 1                        ; 0x307d
    mov bx, ax                       ; 0x307f
    mov bx, word [bx - 0x7b7e]       ; 0x3081
    mov si, word [bp - 0x0004]       ; 0x3085
    mov al, byte [bx + si + 0x18c]   ; 0x3088
    sub ah, ah                       ; 0x308c
    mov word [bp - 0x0008], ax       ; 0x308e
    cmp ax, strict word 0            ; 0x3091
    jg short loc_KTQP                ; 0x3094
    jmp near loc_GHOG                ; 0x3096
loc_KTQP:
    mov ax, si                       ; 0x3099
    jmp short loc_ROJH               ; 0x309b
