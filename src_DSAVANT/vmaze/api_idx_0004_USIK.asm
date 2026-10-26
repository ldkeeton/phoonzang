; auto-generated
api_idx_0004_USIK:
    mov ax, 0xfffc                   ; 0x17ee
    call aztec_csav                  ; 0x17f1
    mov word [bss_91ac], 0x7e4       ; 0x17f4
    mov ax, word [party_tag]         ; 0x17fa
    add ax, word [bp + 4]            ; 0x17fd
    add ax, strict word 4            ; 0x1800
    mov cx, 4                        ; 0x1803
    cwd                              ; 0x1806
    idiv cx                          ; 0x1807
    mov word [bp - 4], dx            ; 0x1809
    push word [party_world_y]        ; 0x180c
    push word [party_world_x]        ; 0x1810
    push word [party_cell_y]         ; 0x1814
    push word [party_cell_x]         ; 0x1818
    push word [party_map_piece]      ; 0x181c
    push dx                          ; 0x1820
    call get_cell_wall               ; 0x1821
    add sp, byte 0xc                 ; 0x1824
    mov word [bp - 2], ax            ; 0x1827
    mov ax, word [bp - 4]            ; 0x182a
    shl ax, 1                        ; 0x182d
    mov bx, ax                       ; 0x182f
    mov ax, word [bx + adjacent_object_type] ; 0x1831
    jmp near .forward13              ; 0x1835
.back1:
    cmp word [bp - 2], byte 2        ; 0x1838
    jl short .forward1               ; 0x183c
    cmp word [bp - 2], byte 5        ; 0x183e
    jne short .forward3              ; 0x1842
.forward1:
    push word [bp - 4]               ; 0x1844
    call api_idx_000e_NSGM           ; 0x1847
    pop cx                           ; 0x184a
    test ax, ax                      ; 0x184b
    je short .forward2               ; 0x184d
    ret                              ; 0x184f
.forward2:
    jmp short .forward4              ; 0x1850
.forward3:
    cmp word [bp - 2], byte 3        ; 0x1852
    jne short .forward4              ; 0x1856
    mov ax, word [bp - 4]            ; 0x1858
    cmp ax, word [party_tag]         ; 0x185b
    jne short .forward4              ; 0x185f
    mov ax, 0xf                      ; 0x1861
    push ax                          ; 0x1864
    call ensure_sound_loaded         ; 0x1865
    pop cx                           ; 0x1868
    mov ax, 1                        ; 0x1869
    push ax                          ; 0x186c
    call play_sound_effect           ; 0x186d
    pop cx                           ; 0x1870
    mov word [bss_831a], 1           ; 0x1871
    call redraw_maze_view            ; 0x1877
    mov ax, 0x10                     ; 0x187a
    push ax                          ; 0x187d
    call play_sound_effect           ; 0x187e
    pop cx                           ; 0x1881
    mov ax, 0x10                     ; 0x1882
    push ax                          ; 0x1885
    call wait_and_free_sound         ; 0x1886
    pop cx                           ; 0x1889
    mov word [loaded_sound_id], 0xffff ; 0x188a
    mov ax, 2                        ; 0x1890
    push ax                          ; 0x1893
    call wait_for_hotspot_timeout    ; 0x1894
    pop cx                           ; 0x1897
    mov word [bss_831a], 2           ; 0x1898
    call redraw_maze_view            ; 0x189e
    mov ax, 2                        ; 0x18a1
    push ax                          ; 0x18a4
    call wait_for_hotspot_timeout    ; 0x18a5
    pop cx                           ; 0x18a8
    mov word [bss_831a], 0           ; 0x18a9
    push word [bp - 4]               ; 0x18af
    call api_idx_000e_NSGM           ; 0x18b2
    pop cx                           ; 0x18b5
    test ax, ax                      ; 0x18b6
    je short .forward4               ; 0x18b8
    ret                              ; 0x18ba
.forward4:
    cmp word [location_changed], byte 0 ; 0x18bb
    jne short .forward6              ; 0x18c0
    mov ax, 2                        ; 0x18c2
    push ax                          ; 0x18c5
    mov ax, 0                        ; 0x18c6
    cmp word [bss_91ac], strict word 0x7e4 ; 0x18c9
    jne short .forward5              ; 0x18cf
    mov ax, 2                        ; 0x18d1
.forward5:
    push ax                          ; 0x18d4
    push word [bss_91ac]             ; 0x18d5
    call loc_LPNP                    ; 0x18d9
    add sp, byte 6                   ; 0x18dc
.forward6:
    jmp near .return1                ; 0x18df
.back2:
    cmp word [bp - 2], byte 6        ; 0x18e2
    je short .forward7               ; 0x18e6
    cmp word [bp - 2], byte 3        ; 0x18e8
    jne short .forward8              ; 0x18ec
.forward7:
    mov ax, word [bp - 4]            ; 0x18ee
    cmp ax, word [party_tag]         ; 0x18f1
    jne short .forward8              ; 0x18f5
    mov ax, word [message_delay]     ; 0x18f7
    mov cx, 2                        ; 0x18fa
    cwd                              ; 0x18fd
    idiv cx                          ; 0x18fe
    push ax                          ; 0x1900
    push cx                          ; 0x1901
    mov ax, MSG_LOCKED               ; 0x1902
    push ax                          ; 0x1905
    call loc_LPNP                    ; 0x1906
    add sp, byte 6                   ; 0x1909
    jmp short .forward9              ; 0x190c
.forward8:
    mov ax, 2                        ; 0x190e
    push ax                          ; 0x1911
    push ax                          ; 0x1912
    push word [bss_91ac]             ; 0x1913
    call loc_LPNP                    ; 0x1917
    add sp, byte 6                   ; 0x191a
.forward9:
    jmp short .return1               ; 0x191d
.back3:
    cmp word [bp - 2], byte 2        ; 0x191f
    jne short .forward11             ; 0x1923
    push word [bp - 4]               ; 0x1925
    call api_idx_000e_NSGM           ; 0x1928
    pop cx                           ; 0x192b
    test ax, ax                      ; 0x192c
    je short .forward10              ; 0x192e
    ret                              ; 0x1930
.forward10:
    jmp short .forward12             ; 0x1931
.forward11:
    mov ax, 2                        ; 0x1933
    push ax                          ; 0x1936
    push ax                          ; 0x1937
    push word [bss_91ac]             ; 0x1938
    call loc_LPNP                    ; 0x193c
    add sp, byte 6                   ; 0x193f
.forward12:
    jmp short .return1               ; 0x1942
.forward13:
    cmp ax, strict word 0            ; 0x1944
    jne short .forward14             ; 0x1947
    jmp near .back1                  ; 0x1949
.forward14:
    cmp ax, strict word 1            ; 0x194c
    je short .back2                  ; 0x194f
    cmp ax, strict word 2            ; 0x1951
    je short .back2                  ; 0x1954
    cmp ax, strict word 3            ; 0x1956
    je short .back3                  ; 0x1959
.return1:
    ret                              ; 0x195b
