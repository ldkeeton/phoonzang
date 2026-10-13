api_idx_000a:
    mov ax, 0xfff6                   ; 0x195c
    call aztec_csav                  ; 0x195f
    mov ax, 0x248                    ; 0x1962
    imul word [bp + 0x4]             ; 0x1965
    mov bx, ax                       ; 0x1968
    cmp byte [bx + 0x5e2f], 3        ; 0x196a
    jb short @..api_idx_000a.l1      ; 0x196f
    jmp near loc_1c93                ; 0x1971
@..api_idx_000a.l1:
    cmp byte [bx + 0x5d60], 0        ; 0x1974
    ja short @..api_idx_000a.l2      ; 0x1979
    jmp near @..api_idx_000a.l5      ; 0x197b
@..api_idx_000a.l2:
    mov ax, 0x64                     ; 0x197e
    push ax                          ; 0x1981
    call ds_app_09f0                 ; 0x1982
    pop cx                           ; 0x1985
    test ax, ax                      ; 0x1986
    je short @..api_idx_000a.l3      ; 0x1988
    jmp near loc_1a6f                ; 0x198a
@..api_idx_000a.l3:
    mov ax, 6                        ; 0x198d
    push ax                          ; 0x1990
    call ds_app_09f0                 ; 0x1991
    pop cx                           ; 0x1994
    jmp short @..api_idx_000a.l4     ; 0x1995
