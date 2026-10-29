; auto-generated
api_idx_0006_GMTP:
    mov ax, 0xfffa                   ; 0x18a8
    call aztec_csav                  ; 0x18ab
    mov ax, word [bss_845e]          ; 0x18ae
    jmp near .forward6               ; 0x18b1
.back1:
    mov ax, 0x8f                     ; 0x18b4
    push ax                          ; 0x18b7
    mov ax, 0xf7                     ; 0x18b8
    push ax                          ; 0x18bb
    mov ax, 0x20                     ; 0x18bc
    push ax                          ; 0x18bf
    mov ax, 0x48                     ; 0x18c0
    push ax                          ; 0x18c3
    call call_show_area              ; 0x18c4
    add sp, byte 8                   ; 0x18c7
    cmp word [bss_90dc], byte 0      ; 0x18ca
    je short .forward1               ; 0x18cf
    mov ax, 5                        ; 0x18d1
    push ax                          ; 0x18d4
    call play_sound_effect           ; 0x18d5
    pop cx                           ; 0x18d8
    cmp word [bss_90dc], byte 2      ; 0x18d9
    jne short .forward1              ; 0x18de
    mov ax, 1                        ; 0x18e0
    push ax                          ; 0x18e3
    call call_wait_sound             ; 0x18e4
    pop cx                           ; 0x18e7
.forward1:
    mov word [bss_90dc], 0           ; 0x18e8
    mov ax, word [bss_8320]          ; 0x18ee
    inc ax                           ; 0x18f1
    mov cx, 2                        ; 0x18f2
    cwd                              ; 0x18f5
    idiv cx                          ; 0x18f6
    mov word [bss_8320], dx          ; 0x18f8
    jmp near .forward10              ; 0x18fc
.back2:
    les bx, word [tick_counter_ptr]  ; 0x18ff
    mov ax, word [es:bx]             ; 0x1903
    mov dx, word [es:bx + 2]         ; 0x1906
    sub ax, word [party_redraw_last_tick] ; 0x190a
    sbb dx, word [party_redraw_last_tick_hi] ; 0x190e
    push ax                          ; 0x1912
    push dx                          ; 0x1913
    mov ax, word [party_redraw_interval] ; 0x1914
    cwd                              ; 0x1917
    mov cx, ax                       ; 0x1918
    mov bx, dx                       ; 0x191a
    pop dx                           ; 0x191c
    pop ax                           ; 0x191d
    cmp dx, bx                       ; 0x191e
    jl short .forward2               ; 0x1920
    jne short .forward3              ; 0x1922
    cmp ax, cx                       ; 0x1924
    jae short .forward3              ; 0x1926
.forward2:
    jmp short .forward4              ; 0x1928
.forward3:
    mov ax, word [screen_cache_index] ; 0x192a
    inc ax                           ; 0x192d
    mov cx, 2                        ; 0x192e
    cwd                              ; 0x1931
    idiv cx                          ; 0x1932
    mov word [screen_cache_index], dx ; 0x1934
.forward4:
    mov ax, 0                        ; 0x1938
    push ax                          ; 0x193b
    push ax                          ; 0x193c
    mov ax, word [screen_cache_index] ; 0x193d
    shl ax, 1                        ; 0x1940
    shl ax, 1                        ; 0x1942
    mov bx, ax                       ; 0x1944
    push word [bx + screen_cache_0_seg] ; 0x1946
    push word [bx + screen_cache]    ; 0x194a
    call call_restore_screen         ; 0x194e
    add sp, byte 8                   ; 0x1951
    mov word [bp - 2], 0             ; 0x1954
.back3:
    mov ax, word [bp - 2]            ; 0x1959
    shl ax, 1                        ; 0x195c
    mov bx, ax                       ; 0x195e
    mov bx, word [bx + overlay_list + 0x2] ; 0x1960
    mov byte [bx + overlay_list_rec.f_0014], 0xff ; 0x1964
    inc word [bp - 2]                ; 0x1968
    mov ax, word [bp - 2]            ; 0x196b
    cmp ax, strict word 0xc          ; 0x196e
    jl short .back3                  ; 0x1971
    mov word [overlay_list], 0       ; 0x1973
    jmp near .forward10              ; 0x1979
.back4:
    call loc_KRMP                    ; 0x197c
    mov word [bp - 6], ax            ; 0x197f
    mov word [bp - 2], 0             ; 0x1982
.back5:
    mov word [bp - 4], 0             ; 0x1987
.back6:
    push word [bp - 6]               ; 0x198c
    mov ax, 0xf8                     ; 0x198f
    push ax                          ; 0x1992
    mov ax, 0x48                     ; 0x1993
    push ax                          ; 0x1996
    mov ax, 6                        ; 0x1997
    imul word [bp - 2]               ; 0x199a
    mov cx, word [bp - 4]            ; 0x199d
    shl cx, 1                        ; 0x19a0
    add ax, cx                       ; 0x19a2
    mov bx, ax                       ; 0x19a4
    mov cx, word [bx + 0x580]        ; 0x19a6
    mov ax, 0x64                     ; 0x19aa
    sub ax, cx                       ; 0x19ad
    push ax                          ; 0x19af
    mov ax, 0                        ; 0x19b0
    push ax                          ; 0x19b3
    push word [bp - 4]               ; 0x19b4
    push word [bp - 2]               ; 0x19b7
    call queue_cell_action_overlay   ; 0x19ba
    add sp, byte 0xe                 ; 0x19bd
    push word [bp - 4]               ; 0x19c0
    push word [bp - 2]               ; 0x19c3
    call api_idx_0016_SLUJ           ; 0x19c6
    add sp, byte 4                   ; 0x19c9
    inc word [bp - 4]                ; 0x19cc
    mov ax, word [bp - 4]            ; 0x19cf
    cmp ax, strict word 3            ; 0x19d2
    jl short .back6                  ; 0x19d5
    inc word [bp - 2]                ; 0x19d7
    mov ax, word [bp - 2]            ; 0x19da
    cmp ax, strict word 3            ; 0x19dd
    jl short .back5                  ; 0x19e0
    call queue_marker_overlay        ; 0x19e2
    cmp word [bp - 6], byte 0        ; 0x19e5
    je short .forward5               ; 0x19e9
    mov ax, word [party_status_frame] ; 0x19eb
    inc ax                           ; 0x19ee
    mov cx, 2                        ; 0x19ef
    cwd                              ; 0x19f2
    idiv cx                          ; 0x19f3
    mov word [party_status_frame], dx ; 0x19f5
.forward5:
    call draw_party_status_glyphs    ; 0x19f9
    jmp short .forward10             ; 0x19fc
.back7:
    push word [bss_845e]             ; 0x19fe
    call loc_SSIO                    ; 0x1a02
    pop cx                           ; 0x1a05
    jmp short .forward10             ; 0x1a06
.forward6:
    cmp ax, strict word 0xfffd       ; 0x1a08
    jne short .forward7              ; 0x1a0b
    jmp near .back1                  ; 0x1a0d
.forward7:
    cmp ax, strict word 0xfffe       ; 0x1a10
    jne short .forward8              ; 0x1a13
    jmp near .back2                  ; 0x1a15
.forward8:
    cmp ax, strict word 0xffff       ; 0x1a18
    jne short .forward9              ; 0x1a1b
    jmp near .back4                  ; 0x1a1d
.forward9:
    jmp short .back7                 ; 0x1a20
.forward10:
    inc word [bss_845e]              ; 0x1a22
    mov ax, word [bss_845e]          ; 0x1a26
    cmp ax, strict word 0xc          ; 0x1a29
    jne short .return1               ; 0x1a2c
    mov word [bss_845e], 0xfffd      ; 0x1a2e
.return1:
    ret                              ; 0x1a34
