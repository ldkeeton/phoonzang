; auto-generated
api_idx_0012_SHRT:
    mov ax, 0xffee                   ; 0x0781
    call aztec_csav                  ; 0x0784
    cmp word [mouse_active], byte 0  ; 0x0787
    je short .forward1               ; 0x078c
    jmp near .forward5               ; 0x078e
.forward1:
    mov ax, 0xa3                     ; 0x0791
    push ax                          ; 0x0794
    mov ax, 0xb1                     ; 0x0795
    push ax                          ; 0x0798
    mov ax, 0x90                     ; 0x0799
    push ax                          ; 0x079c
    mov ax, 0x9a                     ; 0x079d
    push ax                          ; 0x07a0
    call call_save_area              ; 0x07a1
    add sp, byte 8                   ; 0x07a4
    mov word [bp - 0x10], dx         ; 0x07a7
    mov word [bp - 0x12], ax         ; 0x07aa
    mov ax, 0x90                     ; 0x07ad
    push ax                          ; 0x07b0
    mov ax, 0x9a                     ; 0x07b1
    push ax                          ; 0x07b4
    call call_set_text_pos           ; 0x07b5
    add sp, byte 4                   ; 0x07b8
    mov ax, 7                        ; 0x07bb
    push ax                          ; 0x07be
    mov ax, 0x12                     ; 0x07bf
    push ax                          ; 0x07c2
    call draw_font_glyph             ; 0x07c3
    add sp, byte 4                   ; 0x07c6
    mov ax, 0x9c                     ; 0x07c9
    push ax                          ; 0x07cc
    mov ax, 0x9a                     ; 0x07cd
    push ax                          ; 0x07d0
    call call_set_text_pos           ; 0x07d1
    add sp, byte 4                   ; 0x07d4
    mov ax, 7                        ; 0x07d7
    push ax                          ; 0x07da
    mov ax, 0x15                     ; 0x07db
    push ax                          ; 0x07de
    call draw_font_glyph             ; 0x07df
    add sp, byte 4                   ; 0x07e2
    mov ax, 0x9c                     ; 0x07e5
    push ax                          ; 0x07e8
    mov ax, 0xa6                     ; 0x07e9
    push ax                          ; 0x07ec
    call call_set_text_pos           ; 0x07ed
    add sp, byte 4                   ; 0x07f0
    mov ax, 7                        ; 0x07f3
    push ax                          ; 0x07f6
    mov ax, 0x16                     ; 0x07f7
    push ax                          ; 0x07fa
    call draw_font_glyph             ; 0x07fb
    add sp, byte 4                   ; 0x07fe
    mov ax, 0xa3                     ; 0x0801
    push ax                          ; 0x0804
    mov ax, 0xb1                     ; 0x0805
    push ax                          ; 0x0808
    mov ax, 0x90                     ; 0x0809
    push ax                          ; 0x080c
    mov ax, 0x9a                     ; 0x080d
    push ax                          ; 0x0810
    call call_show_area              ; 0x0811
    add sp, byte 8                   ; 0x0814
    mov word [bp - 4], 0xfffe        ; 0x0817
.back1:
    cmp word [bp - 4], byte -2       ; 0x081c
    jne short .forward4              ; 0x0820
    mov ax, 1                        ; 0x0822
    push ax                          ; 0x0825
    call get_filtered_key            ; 0x0826
    pop cx                           ; 0x0829
    sub ah, ah                       ; 0x082a
    mov word [bp - 2], ax            ; 0x082c
    cmp ax, strict word 0x1b         ; 0x082f
    jne short .forward2              ; 0x0832
    mov word [bp - 4], 0xffff        ; 0x0834
.forward2:
    cmp ax, strict word 0x30         ; 0x0839
    jl short .forward3               ; 0x083c
    cmp ax, strict word 0x39         ; 0x083e
    jg short .forward3               ; 0x0841
    add ax, strict word 0xffd9       ; 0x0843
    mov cx, 0xa                      ; 0x0846
    cwd                              ; 0x0849
    idiv cx                          ; 0x084a
    mov word [bp - 4], dx            ; 0x084c
.forward3:
    jmp short .back1                 ; 0x084f
.forward4:
    mov ax, 1                        ; 0x0851
    push ax                          ; 0x0854
    push word [bp - 0x10]            ; 0x0855
    push word [bp - 0x12]            ; 0x0858
    call call_restore_area           ; 0x085b
    add sp, byte 6                   ; 0x085e
    mov ax, 0xa3                     ; 0x0861
    push ax                          ; 0x0864
    mov ax, 0xb1                     ; 0x0865
    push ax                          ; 0x0868
    mov ax, 0x90                     ; 0x0869
    push ax                          ; 0x086c
    mov ax, 0x9a                     ; 0x086d
    push ax                          ; 0x0870
    call call_show_area              ; 0x0871
    add sp, byte 8                   ; 0x0874
    mov ax, word [bp - 4]            ; 0x0877
    ret                              ; 0x087a
.forward5:
    push word [pointer_image_two_seg] ; 0x087b
    push word [pointer_image_two]    ; 0x087f
    call set_mouse_pointer_shape     ; 0x0883
    add sp, byte 4                   ; 0x0886
    mov word [bp - 2], 0             ; 0x0889
.back2:
    mov ax, 0                        ; 0x088e
    push ax                          ; 0x0891
    mov ax, word [bp - 2]            ; 0x0892
    inc ax                           ; 0x0895
    mov cx, 0xa                      ; 0x0896
    cwd                              ; 0x0899
    idiv cx                          ; 0x089a
    mov ax, dx                       ; 0x089c
    add ax, strict word 0x30         ; 0x089e
    cbw                              ; 0x08a1
    push ax                          ; 0x08a2
    mov ax, word [bp - 2]            ; 0x08a3
    mov cx, 5                        ; 0x08a6
    cwd                              ; 0x08a9
    idiv cx                          ; 0x08aa
    mov ax, dx                       ; 0x08ac
    mov cx, 0xe                      ; 0x08ae
    imul cx                          ; 0x08b1
    add ax, strict word 0x7d         ; 0x08b3
    push ax                          ; 0x08b6
    mov ax, word [bp - 2]            ; 0x08b7
    mov cx, 5                        ; 0x08ba
    cwd                              ; 0x08bd
    idiv cx                          ; 0x08be
    mov cx, 0x4f                     ; 0x08c0
    imul cx                          ; 0x08c3
    add ax, strict word 0x4e         ; 0x08c5
    push ax                          ; 0x08c8
    mov ax, word [bp - 2]            ; 0x08c9
    mov cx, 5                        ; 0x08cc
    cwd                              ; 0x08cf
    idiv cx                          ; 0x08d0
    mov ax, dx                       ; 0x08d2
    mov cx, 0xe                      ; 0x08d4
    imul cx                          ; 0x08d7
    add ax, strict word 0x71         ; 0x08d9
    push ax                          ; 0x08dc
    mov ax, word [bp - 2]            ; 0x08dd
    mov cx, 5                        ; 0x08e0
    cwd                              ; 0x08e3
    idiv cx                          ; 0x08e4
    mov cx, 0x4f                     ; 0x08e6
    imul cx                          ; 0x08e9
    inc ax                           ; 0x08eb
    inc ax                           ; 0x08ec
    push ax                          ; 0x08ed
    push word [bp - 2]               ; 0x08ee
    call set_hotspot                 ; 0x08f1
    add sp, byte 0xe                 ; 0x08f4
    inc word [bp - 2]                ; 0x08f7
    mov ax, word [bp - 2]            ; 0x08fa
    cmp ax, strict word 0xa          ; 0x08fd
    jl short .back2                  ; 0x0900
    mov ax, 0                        ; 0x0902
    push ax                          ; 0x0905
    push ax                          ; 0x0906
    push ax                          ; 0x0907
    push ax                          ; 0x0908
    push ax                          ; 0x0909
    mov ax, 0xffff                   ; 0x090a
    push ax                          ; 0x090d
    mov ax, 0xa                      ; 0x090e
    push ax                          ; 0x0911
    call set_hotspot                 ; 0x0912
    add sp, byte 0xe                 ; 0x0915
    mov word [bp - 8], 0             ; 0x0918
.back3:
    lea ax, word [bp - 0xc]          ; 0x091d
    push ax                          ; 0x0920
    lea ax, word [bp - 0xa]          ; 0x0921
    push ax                          ; 0x0924
    call call_get_mouse              ; 0x0925
    add sp, byte 4                   ; 0x0928
    mov word [bp - 6], ax            ; 0x092b
    mov ax, 0                        ; 0x092e
    cmp word [bp - 6], byte 0        ; 0x0931
    jne short .forward6              ; 0x0935
    mov ax, 1                        ; 0x0937
.forward6:
    or word [bp - 8], ax             ; 0x093a
    mov ax, 0x14                     ; 0x093d
    push ax                          ; 0x0940
    call delay_ms                    ; 0x0941
    pop cx                           ; 0x0944
    mov ax, hotspot_rects            ; 0x0945
    push ax                          ; 0x0948
    call poll_hotspots               ; 0x0949
    pop cx                           ; 0x094c
    dec ax                           ; 0x094d
    mov word [bp - 4], ax            ; 0x094e
    cmp word [bss_59fa], byte 0      ; 0x0951
    je short .forward7               ; 0x0956
    mov ax, 0                        ; 0x0958
    mov dx, 0                        ; 0x095b
    push dx                          ; 0x095e
    push ax                          ; 0x095f
    call set_mouse_pointer_shape     ; 0x0960
    add sp, byte 4                   ; 0x0963
    mov ax, 0xffff                   ; 0x0966
    ret                              ; 0x0969
.forward7:
    cmp word [hotspot_hit], byte 1   ; 0x096a
    jne short .forward8              ; 0x096f
    mov ax, 0                        ; 0x0971
    mov dx, 0                        ; 0x0974
    push dx                          ; 0x0977
    push ax                          ; 0x0978
    call set_mouse_pointer_shape     ; 0x0979
    add sp, byte 4                   ; 0x097c
    mov ax, word [bp - 4]            ; 0x097f
    ret                              ; 0x0982
.forward8:
    cmp word [bp - 6], byte 0        ; 0x0983
    je short .back3                  ; 0x0987
    cmp word [bp - 8], byte 0        ; 0x0989
    je short .back3                  ; 0x098d
    mov ax, 0                        ; 0x098f
    mov dx, 0                        ; 0x0992
    push dx                          ; 0x0995
    push ax                          ; 0x0996
    call set_mouse_pointer_shape     ; 0x0997
    add sp, byte 4                   ; 0x099a
    mov ax, 0xffff                   ; 0x099d
    ret                              ; 0x09a0
