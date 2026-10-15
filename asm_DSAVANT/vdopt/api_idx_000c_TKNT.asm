; auto-generated
api_idx_000c_TKNT:
    mov ax, 0xfff4                   ; 0x285e
    call aztec_csav                  ; 0x2861
    mov word [bp - 0x0002], 0        ; 0x2864
@..api_idx_000c_TKNT.l1:
    lea ax, word [bp - 0x000c]       ; 0x2869
    push ax                          ; 0x286c
    mov ax, 0x248                    ; 0x286d
    imul word [bp + 0x4]             ; 0x2870
    mov cx, word [bp - 0x0002]       ; 0x2873
    shl cx, 1                        ; 0x2876
    shl cx, 1                        ; 0x2878
    add ax, cx                       ; 0x287a
    mov bx, ax                       ; 0x287c
    push word [bx + 0x5c1c]          ; 0x287e
    call ds_app_OPJO                 ; 0x2882
    add sp, byte 4                   ; 0x2885
    mov ax, 0                        ; 0x2888
    push ax                          ; 0x288b
    mov ax, word [bp - 0x0002]       ; 0x288c
    shl ax, 1                        ; 0x288f
    shl ax, 1                        ; 0x2891
    mov bx, ax                       ; 0x2893
    push word [word bx + 0x6]        ; 0x2895
    call thunk_3                     ; 0x2899
    add sp, byte 4                   ; 0x289c
    mov ax, word [bp - 0x0002]       ; 0x289f
    shl ax, 1                        ; 0x28a2
    shl ax, 1                        ; 0x28a4
    mov bx, ax                       ; 0x28a6
    push word [bx + 0x18e]           ; 0x28a8
    lea ax, word [bp - 0x000c]       ; 0x28ac
    push ax                          ; 0x28af
    call aztec_strlen                ; 0x28b0
    pop cx                           ; 0x28b3
    mov cx, 6                        ; 0x28b4
    imul cx                          ; 0x28b7
    mov cx, 2                        ; 0x28b9
    cwd                              ; 0x28bc
    idiv cx                          ; 0x28bd
    mov cx, ax                       ; 0x28bf
    mov ax, word [bp - 0x0002]       ; 0x28c1
    shl ax, 1                        ; 0x28c4
    shl ax, 1                        ; 0x28c6
    mov bx, ax                       ; 0x28c8
    mov ax, word [bx + 0x18c]        ; 0x28ca
    add ax, strict word 9            ; 0x28ce
    sub ax, cx                       ; 0x28d1
    push ax                          ; 0x28d3
    call thunk                       ; 0x28d4
    add sp, byte 4                   ; 0x28d7
    mov ax, 0                        ; 0x28da
    push ax                          ; 0x28dd
    lea ax, word [bp - 0x000c]       ; 0x28de
    push ax                          ; 0x28e1
    call ds_string_loc_PTIK          ; 0x28e2
    add sp, byte 4                   ; 0x28e5
    inc word [bp - 0x0002]           ; 0x28e8
    mov ax, word [bp - 0x0002]       ; 0x28eb
    cmp ax, strict word 6            ; 0x28ee
    jge short @..api_idx_000c_TKNT.l2 ; 0x28f1
    jmp near @..api_idx_000c_TKNT.l1 ; 0x28f3
@..api_idx_000c_TKNT.l2:
    ret                              ; 0x28f6
