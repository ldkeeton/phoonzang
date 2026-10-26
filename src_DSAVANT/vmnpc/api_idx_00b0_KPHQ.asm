; auto-generated
api_idx_00b0_KPHQ:
    mov ax, 0xff50                   ; 0xa837
    call aztec_csav                  ; 0xa83a
    push word [bp + 6]               ; 0xa83d
    call aztec_strlen                ; 0xa840
    pop cx                           ; 0xa843
    mov cx, 6                        ; 0xa844
    imul cx                          ; 0xa847
    mov cx, ax                       ; 0xa849
    mov ax, 0xb8                     ; 0xa84b
    sub ax, cx                       ; 0xa84e
    mov cx, 6                        ; 0xa850
    cwd                              ; 0xa853
    idiv cx                          ; 0xa854
    mov word [bp - 0x10], ax         ; 0xa856
    mov word [bp - 0xe], 0x1e        ; 0xa859
    push word [bp + 6]               ; 0xa85e
    call aztec_strlen                ; 0xa861
    pop cx                           ; 0xa864
    mov cx, 6                        ; 0xa865
    imul cx                          ; 0xa868
    add ax, strict word 0x44         ; 0xa86a
    mov word [bp - 0xc], ax          ; 0xa86d
    mov word [bp - 0xa], 0x44        ; 0xa870
    mov ax, 0xc                      ; 0xa875
    imul word [text_line_index]      ; 0xa878
    add ax, 0x97                     ; 0xa87c
    push ax                          ; 0xa87f
    mov ax, 0x44                     ; 0xa880
    push ax                          ; 0xa883
    call gfx_set_text_pos            ; 0xa884
    add sp, byte 4                   ; 0xa887
    mov ax, 0                        ; 0xa88a
    push ax                          ; 0xa88d
    mov ax, 1                        ; 0xa88e
    push ax                          ; 0xa891
    call gfx_set_text_color          ; 0xa892
    add sp, byte 4                   ; 0xa895
    mov ax, 0                        ; 0xa898
    push ax                          ; 0xa89b
    push word [bp + 6]               ; 0xa89c
    call draw_text_glyphs            ; 0xa89f
    add sp, byte 4                   ; 0xa8a2
    mov ax, 3                        ; 0xa8a5
    push ax                          ; 0xa8a8
    call show_area_set               ; 0xa8a9
    pop cx                           ; 0xa8ac
    mov word [bp - 8], 0             ; 0xa8ad
    mov bx, word [bp + 4]            ; 0xa8b2
    mov byte [bx], 0                 ; 0xa8b5
.back1:
    push word [bp - 8]               ; 0xa8b8
    mov ax, 0                        ; 0xa8bb
    push ax                          ; 0xa8be
    mov ax, 0x37                     ; 0xa8bf
    push ax                          ; 0xa8c2
    mov ax, 1                        ; 0xa8c3
    push ax                          ; 0xa8c6
    mov ax, word [bp - 8]            ; 0xa8c7
    shl ax, 1                        ; 0xa8ca
    mov bx, ax                       ; 0xa8cc
    add bx, bp                       ; 0xa8ce
    push word [bx - 0x10]            ; 0xa8d0
    mov ax, 0xc                      ; 0xa8d3
    imul word [text_line_index]      ; 0xa8d6
    add ax, 0x97                     ; 0xa8da
    push ax                          ; 0xa8dd
    mov ax, word [bp - 8]            ; 0xa8de
    shl ax, 1                        ; 0xa8e1
    mov bx, ax                       ; 0xa8e3
    add bx, bp                       ; 0xa8e5
    push word [bx - 0xc]             ; 0xa8e7
    push word [bp + 4]               ; 0xa8ea
    call api_idx_0016_TOUQ           ; 0xa8ed
    add sp, byte 0x10                ; 0xa8f0
    mov word [bp - 2], ax            ; 0xa8f3
    cmp ax, strict word 1            ; 0xa8f6
    je short .forward1               ; 0xa8f9
    jmp near .forward5               ; 0xa8fb
.forward1:
    cmp word [bss_b054], byte 0x20   ; 0xa8fe
    je short .forward3               ; 0xa903
    mov ax, 0x20                     ; 0xa905
    push ax                          ; 0xa908
    push word [bp + 4]               ; 0xa909
    call strpos                      ; 0xa90c
    add sp, byte 4                   ; 0xa90f
    cmp ax, strict word 0xffff       ; 0xa912
    je short .forward3               ; 0xa915
    push word [bp + 4]               ; 0xa917
    call aztec_strlen                ; 0xa91a
    pop cx                           ; 0xa91d
    mov word [bp - 4], ax            ; 0xa91e
    mov word [bp - 6], ax            ; 0xa921
.back2:
    mov bx, word [bp + 4]            ; 0xa924
    mov si, word [bp - 6]            ; 0xa927
    cmp byte [bx + si - 1], 0x20     ; 0xa92a
    je short .forward2               ; 0xa92e
    dec word [bp - 6]                ; 0xa930
    jmp short .back2                 ; 0xa933
.forward2:
    mov ax, word [bp - 4]            ; 0xa935
    sub ax, word [bp - 6]            ; 0xa938
    push ax                          ; 0xa93b
    add bx, word [bp - 6]            ; 0xa93c
    mov ax, bx                       ; 0xa93f
    push ax                          ; 0xa941
    lea ax, word [bp - 0xb0]         ; 0xa942
    push ax                          ; 0xa946
    call aztec_strncpy               ; 0xa947
    add sp, byte 6                   ; 0xa94a
    mov ax, word [bp - 4]            ; 0xa94d
    sub ax, word [bp - 6]            ; 0xa950
    mov bx, ax                       ; 0xa953
    add bx, bp                       ; 0xa955
    mov byte [bx - 0xb0], 0          ; 0xa957
    mov bx, word [bp + 4]            ; 0xa95c
    mov si, word [bp - 6]            ; 0xa95f
    mov byte [bx + si], 0            ; 0xa962
    jmp short .forward4              ; 0xa965
.forward3:
    mov byte [bp - 0xb0], 0          ; 0xa967
.forward4:
    lea ax, word [bp - 0xb0]         ; 0xa96c
    push ax                          ; 0xa970
    call aztec_strlen                ; 0xa971
    pop cx                           ; 0xa974
    mov word [bp - 4], ax            ; 0xa975
    mov al, byte [bss_b054]          ; 0xa978
    mov bx, word [bp - 4]            ; 0xa97b
    add bx, bp                       ; 0xa97e
    mov byte [bx - 0xb0], al         ; 0xa980
    mov byte [bx - 0xaf], 0          ; 0xa984
    push word [bp + 6]               ; 0xa989
    mov ax, word [text_line_index]   ; 0xa98c
    mov cx, 7                        ; 0xa98f
    shl ax, cl                       ; 0xa992
    add ax, text_line_buffer         ; 0xa994
    push ax                          ; 0xa997
    call aztec_strcpy                ; 0xa998
    add sp, byte 4                   ; 0xa99b
    push word [bp + 4]               ; 0xa99e
    mov ax, word [text_line_index]   ; 0xa9a1
    mov cx, 7                        ; 0xa9a4
    shl ax, cl                       ; 0xa9a7
    add ax, text_line_buffer         ; 0xa9a9
    push ax                          ; 0xa9ac
    call aztec_strcat                ; 0xa9ad
    add sp, byte 4                   ; 0xa9b0
    mov ax, word [text_line_index]   ; 0xa9b3
    shl ax, 1                        ; 0xa9b6
    mov bx, ax                       ; 0xa9b8
    mov word [bx + text_line_color], 0 ; 0xa9ba
    call next_text_line              ; 0xa9c0
    push word [bp + 4]               ; 0xa9c3
    lea ax, word [bp - 0x60]         ; 0xa9c6
    push ax                          ; 0xa9c9
    call aztec_strcpy                ; 0xa9ca
    add sp, byte 4                   ; 0xa9cd
    lea ax, word [bp - 0xb0]         ; 0xa9d0
    push ax                          ; 0xa9d4
    push word [bp + 4]               ; 0xa9d5
    call aztec_strcpy                ; 0xa9d8
    add sp, byte 4                   ; 0xa9db
    mov word [bp - 8], 1             ; 0xa9de
    jmp short .forward6              ; 0xa9e3
.forward5:
    cmp word [bp - 2], byte -1       ; 0xa9e5
    jne short .forward6              ; 0xa9e9
    mov ax, 3                        ; 0xa9eb
    push ax                          ; 0xa9ee
    call redraw_area_set             ; 0xa9ef
    pop cx                           ; 0xa9f2
    dec word [text_line_index]       ; 0xa9f3
    lea ax, word [bp - 0x60]         ; 0xa9f7
    push ax                          ; 0xa9fa
    push word [bp + 4]               ; 0xa9fb
    call aztec_strcpy                ; 0xa9fe
    add sp, byte 4                   ; 0xaa01
    mov word [bp - 8], 0             ; 0xaa04
.forward6:
    cmp word [bp - 2], byte 0        ; 0xaa09
    je short .forward7               ; 0xaa0d
    jmp near .back1                  ; 0xaa0f
.forward7:
    cmp word [bp - 8], byte 0        ; 0xaa12
    jne short .forward8              ; 0xaa16
    push word [bp + 6]               ; 0xaa18
    mov ax, word [text_line_index]   ; 0xaa1b
    mov cx, 7                        ; 0xaa1e
    shl ax, cl                       ; 0xaa21
    add ax, text_line_buffer         ; 0xaa23
    push ax                          ; 0xaa26
    call aztec_strcpy                ; 0xaa27
    add sp, byte 4                   ; 0xaa2a
    jmp short .forward9              ; 0xaa2d
.forward8:
    mov ax, word [text_line_index]   ; 0xaa2f
    mov cx, 7                        ; 0xaa32
    shl ax, cl                       ; 0xaa35
    mov bx, ax                       ; 0xaa37
    mov byte [bx + text_line_buffer], 0 ; 0xaa39
.forward9:
    push word [bp + 4]               ; 0xaa3e
    mov ax, word [text_line_index]   ; 0xaa41
    mov cx, 7                        ; 0xaa44
    shl ax, cl                       ; 0xaa47
    add ax, text_line_buffer         ; 0xaa49
    push ax                          ; 0xaa4c
    call aztec_strcat                ; 0xaa4d
    add sp, byte 4                   ; 0xaa50
    mov ax, word [text_line_index]   ; 0xaa53
    shl ax, 1                        ; 0xaa56
    mov bx, ax                       ; 0xaa58
    mov word [bx + text_line_color], 0 ; 0xaa5a
    call next_text_line              ; 0xaa60
    cmp word [bp - 8], byte 0        ; 0xaa63
    je short .return1                ; 0xaa67
    push word [bp + 4]               ; 0xaa69
    lea ax, word [bp - 0xb0]         ; 0xaa6c
    push ax                          ; 0xaa70
    call aztec_strcpy                ; 0xaa71
    add sp, byte 4                   ; 0xaa74
    lea ax, word [bp - 0x60]         ; 0xaa77
    push ax                          ; 0xaa7a
    push word [bp + 4]               ; 0xaa7b
    call aztec_strcpy                ; 0xaa7e
    add sp, byte 4                   ; 0xaa81
    lea ax, word [bp - 0xb0]         ; 0xaa84
    push ax                          ; 0xaa88
    push word [bp + 4]               ; 0xaa89
    call aztec_strcat                ; 0xaa8c
    add sp, byte 4                   ; 0xaa8f
.return1:
    ret                              ; 0xaa92
