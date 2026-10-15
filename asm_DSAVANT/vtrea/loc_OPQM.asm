; auto-generated
loc_OPQM:
    mov ax, 0                        ; 0x81db
    call aztec_csav                  ; 0x81de
    mov ax, 0                        ; 0x81e1
    push ax                          ; 0x81e4
    call loc_GGKR                    ; 0x81e5
    pop cx                           ; 0x81e8
    mov ax, 0                        ; 0x81e9
    push ax                          ; 0x81ec
    call api_idx_000a_IHIN           ; 0x81ed
    pop cx                           ; 0x81f0
    call api_idx_0074_PPLR           ; 0x81f1
    mov ax, 1                        ; 0x81f4
    push ax                          ; 0x81f7
    call api_idx_000a_IHIN           ; 0x81f8
    pop cx                           ; 0x81fb
    call loc_NRMK                    ; 0x81fc
    ret                              ; 0x81ff
