api_idx_0032:
    mov ax, 0xffce                   ; 0xab9b
    call ds_aztec_csav               ; 0xab9e
    mov ax, 0                        ; 0xaba1
    push ax                          ; 0xaba4
    mov ax, 0x1e4                    ; 0xaba5
    push ax                          ; 0xaba8
    mov ax, 0x9c42                   ; 0xaba9
    push ax                          ; 0xabac
    call ds_aztec_setmem             ; 0xabad
    add sp, byte 6                   ; 0xabb0
    mov ax, 0                        ; 0xabb3
    push ax                          ; 0xabb6
    mov ax, 0x2c                     ; 0xabb7
    push ax                          ; 0xabba
    lea ax, word [bp - 0x0032]       ; 0xabbb
    push ax                          ; 0xabbe
    call ds_aztec_setmem             ; 0xabbf
    add sp, byte 6                   ; 0xabc2
    mov word [bp - 0x0004], 0        ; 0xabc5
@..api_idx_0032.l1:
    mov ax, word [bp - 0x0004]       ; 0xabca
    shl ax, 1                        ; 0xabcd
    shl ax, 1                        ; 0xabcf
    mov bx, ax                       ; 0xabd1
    mov al, byte [bx - 0x7687]       ; 0xabd3
    cbw                              ; 0xabd7
    cmp ax, word [bss_830c]          ; 0xabd8
    jne short @..api_idx_0032.l2     ; 0xabdc
    mov al, byte [bp - 0x0004]       ; 0xabde
    mov byte [bss_8809], al          ; 0xabe1
    mov byte [bss_880a], al          ; 0xabe4
@..api_idx_0032.l2:
    inc word [bp - 0x0004]           ; 0xabe7
    mov ax, word [bp - 0x0004]       ; 0xabea
    cmp ax, strict word 0x1a         ; 0xabed
    jl short @..api_idx_0032.l1      ; 0xabf0
    mov word [bp - 0x0006], 0        ; 0xabf2
@..api_idx_0032.l3:
    mov ax, 0x16                     ; 0xabf7
    push ax                          ; 0xabfa
    call ds_app_09f0                 ; 0xabfb
    pop cx                           ; 0xabfe
    mov word [bp - 0x0002], ax       ; 0xabff
    mov ax, word [bp - 0x0002]       ; 0xac02
    shl ax, 1                        ; 0xac05
    mov bx, ax                       ; 0xac07
    add bx, bp                       ; 0xac09
    cmp word [bx - 0x0032], byte 0   ; 0xac0b
    jne short @..api_idx_0032.l3     ; 0xac0f
    mov ax, word [bp - 0x0002]       ; 0xac11
    shl ax, 1                        ; 0xac14
    mov bx, ax                       ; 0xac16
    add bx, bp                       ; 0xac18
    mov word [bx - 0x0032], 1        ; 0xac1a
    push word [bp - 0x0002]          ; 0xac1f
    call loc_aad3                    ; 0xac22
    pop cx                           ; 0xac25
    inc word [bp - 0x0006]           ; 0xac26
    cmp word [bp - 0x0006], byte 0x16 ; 0xac29
    jl short @..api_idx_0032.l3      ; 0xac2d
    ret                              ; 0xac2f
