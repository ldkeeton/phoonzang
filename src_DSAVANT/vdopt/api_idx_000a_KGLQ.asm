; auto-generated
api_idx_000a_KGLQ:
    mov ax, 0xfff6                   ; 0x190b
    call aztec_csav                  ; 0x190e
    mov ax, 0                        ; 0x1911
    push ax                          ; 0x1914
    push word [saved_area_a_hi]      ; 0x1915
    push word [saved_area_a]         ; 0x1919
    call gfx_restore_area            ; 0x191d
    add sp, byte 6                   ; 0x1920
    mov byte [bp - 0x000a], 1        ; 0x1923
    mov byte [bp - 0x0009], 0        ; 0x1927
    mov ax, 0                        ; 0x192b
    push ax                          ; 0x192e
    push ax                          ; 0x192f
    lea ax, word [bp - 0x000a]       ; 0x1930
    push ax                          ; 0x1933
    mov ax, 0                        ; 0x1934
    push ax                          ; 0x1937
    mov ax, 0xc7                     ; 0x1938
    push ax                          ; 0x193b
    mov ax, 0                        ; 0x193c
    push ax                          ; 0x193f
    mov ax, 0x13f                    ; 0x1940
    push ax                          ; 0x1943
    mov ax, 0                        ; 0x1944
    push ax                          ; 0x1947
    mov ax, 0x9a                     ; 0x1948
    push ax                          ; 0x194b
    mov ax, 0x37                     ; 0x194c
    push ax                          ; 0x194f
    mov ax, 0xe                      ; 0x1950
    push ax                          ; 0x1953
    call gfx_draw_text               ; 0x1954
    add sp, byte 0x16                ; 0x1957
    ret                              ; 0x195a
