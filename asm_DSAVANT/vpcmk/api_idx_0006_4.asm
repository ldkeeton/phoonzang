api_idx_0006_4:
    mov ax, 0xfffa                   ; 0x6887
    call ds_aztec_csav               ; 0x688a
    mov ax, 0x4a                     ; 0x688d
    push ax                          ; 0x6890
    mov ax, 0x42                     ; 0x6891
    push ax                          ; 0x6894
    mov ax, 0x12                     ; 0x6895
    push ax                          ; 0x6898
    mov ax, 0xe                      ; 0x6899
    push ax                          ; 0x689c
    call ds_loc_3b6f                 ; 0x689d
    add sp, byte 8                   ; 0x68a0
    mov word [bp - 0x0004], dx       ; 0x68a3
    mov word [bp - 0x0006], ax       ; 0x68a6
    push word [bp + 0x4]             ; 0x68a9
    mov ax, 0                        ; 0x68ac
    push ax                          ; 0x68af
    call loc_66c3                    ; 0x68b0
    add sp, byte 4                   ; 0x68b3
    mov al, byte [bss_5e2a]          ; 0x68b6
    sub ah, ah                       ; 0x68b9
    mov word [bp - 0x0002], ax       ; 0x68bb
    push word [bp - 0x0004]          ; 0x68be
    push word [bp - 0x0006]          ; 0x68c1
    mov ax, 0                        ; 0x68c4
    push ax                          ; 0x68c7
    call api_idx_0006_3              ; 0x68c8
    add sp, byte 6                   ; 0x68cb
    mov ax, 1                        ; 0x68ce
    push ax                          ; 0x68d1
    push word [bp - 0x0004]          ; 0x68d2
    push word [bp - 0x0006]          ; 0x68d5
    call ds_loc_3b96                 ; 0x68d8
    add sp, byte 6                   ; 0x68db
    mov al, byte [bss_5e2a]          ; 0x68de
    sub ah, ah                       ; 0x68e1
    cmp ax, word [bp - 0x0002]       ; 0x68e3
    je short @..api_idx_0006_4.l1    ; 0x68e6
    mov ax, 1                        ; 0x68e8
    push ax                          ; 0x68eb
    push word [bp + 0x4]             ; 0x68ec
    mov ax, 0x5bf4                   ; 0x68ef
    push ax                          ; 0x68f2
    call api_idx_0002_2              ; 0x68f3
    add sp, byte 6                   ; 0x68f6
@..api_idx_0006_4.l1:
    ret                              ; 0x68f9
loc_68fa:
    mov ax, 0xfd40                   ; 0x68fa
    call ds_aztec_csav               ; 0x68fd
    mov word [bp - 0x0008], 0        ; 0x6900
    mov word [bp - 0x0002], 0        ; 0x6905
    jmp near @..loc_68fa.l7          ; 0x690a
@..loc_68fa.l1:
    mov bx, word [bp - 0x0002]       ; 0x690d
    cmp byte [bx - 0x6f8a], 1        ; 0x6910
    je short @..loc_68fa.l2          ; 0x6915
    jmp near @..loc_68fa.l6          ; 0x6917
@..loc_68fa.l2:
    mov ax, 0                        ; 0x691a
    push ax                          ; 0x691d
    push bx                          ; 0x691e
    lea ax, word [bp - 0x0250]       ; 0x691f
    push ax                          ; 0x6923
    call api_idx_0002_2              ; 0x6924
    add sp, byte 6                   ; 0x6927
    lea ax, word [bp - 0x0250]       ; 0x692a
    push ax                          ; 0x692e
    mov ax, 0x14                     ; 0x692f
    imul word [bp - 0x0008]          ; 0x6932
    add ax, 0xe38                    ; 0x6935
    push ax                          ; 0x6938
    call ds_aztec_strcpy             ; 0x6939
    add sp, byte 4                   ; 0x693c
    mov ax, 0x14                     ; 0x693f
    imul word [bp - 0x0008]          ; 0x6942
    add ax, 0xe38                    ; 0x6945
    push ax                          ; 0x6948
    call ds_aztec_strlen             ; 0x6949
    pop cx                           ; 0x694c
    mov word [bp - 0x0004], ax       ; 0x694d
@..loc_68fa.l3:
    cmp word [bp - 0x0004], byte 0x0a ; 0x6950
    jge short @..loc_68fa.l4         ; 0x6954
    mov ax, 0x14                     ; 0x6956
    imul word [bp - 0x0008]          ; 0x6959
    add ax, word [bp - 0x0004]       ; 0x695c
    mov bx, ax                       ; 0x695f
    mov byte [bx + 0xe38], 0x20      ; 0x6961
    inc word [bp - 0x0004]           ; 0x6966
    jmp short @..loc_68fa.l3         ; 0x6969
@..loc_68fa.l4:
    lea ax, word [bp - 0x02a0]       ; 0x696b
    push ax                          ; 0x696f
    mov al, byte [bp - 0x0018]       ; 0x6970
    sub ah, ah                       ; 0x6973
    add ax, 0x8c                     ; 0x6975
    push ax                          ; 0x6978
    call ds_app_mem_0782             ; 0x6979
    add sp, byte 4                   ; 0x697c
    mov al, byte [bp - 0x02a0]       ; 0x697f
    push ax                          ; 0x6983
    mov ax, 0x14                     ; 0x6984
    imul word [bp - 0x0008]          ; 0x6987
    mov bx, ax                       ; 0x698a
    pop ax                           ; 0x698c
    mov byte [bx + 0xe42], al        ; 0x698d
    mov byte [bx + 0xe43], 0x2d      ; 0x6991
    lea ax, word [bp - 0x02a0]       ; 0x6996
    push ax                          ; 0x699a
    mov al, byte [bp - 0x0017]       ; 0x699b
    sub ah, ah                       ; 0x699e
    add ax, strict word 0x78         ; 0x69a0
    push ax                          ; 0x69a3
    call ds_app_mem_0782             ; 0x69a4
    add sp, byte 4                   ; 0x69a7
    mov word [bp - 0x0004], 0        ; 0x69aa
@..loc_68fa.l5:
    mov bx, word [bp - 0x0004]       ; 0x69af
    add bx, bp                       ; 0x69b2
    mov al, byte [bx - 0x02a0]       ; 0x69b4
    push ax                          ; 0x69b8
    mov ax, 0x14                     ; 0x69b9
    imul word [bp - 0x0008]          ; 0x69bc
    mov cx, ax                       ; 0x69bf
    add ax, word [bp - 0x0004]       ; 0x69c1
    mov bx, ax                       ; 0x69c4
    pop ax                           ; 0x69c6
    mov byte [bx + 0xe44], al        ; 0x69c7
    inc word [bp - 0x0004]           ; 0x69cb
    mov ax, word [bp - 0x0004]       ; 0x69ce
    cmp ax, strict word 3            ; 0x69d1
    jl short @..loc_68fa.l5          ; 0x69d4
    mov ax, 0x14                     ; 0x69d6
    imul word [bp - 0x0008]          ; 0x69d9
    mov bx, ax                       ; 0x69dc
    mov byte [bx + 0xe47], 0         ; 0x69de
    mov ax, word [bp - 0x0002]       ; 0x69e3
    mov cx, word [bp - 0x0008]       ; 0x69e6
    shl cx, 1                        ; 0x69e9
    mov bx, cx                       ; 0x69eb
    add bx, bp                       ; 0x69ed
    mov word [bx - 0x02c0], ax       ; 0x69ef
    inc word [bp - 0x0008]           ; 0x69f3
@..loc_68fa.l6:
    inc word [bp - 0x0002]           ; 0x69f6
@..loc_68fa.l7:
    mov ax, word [bp - 0x0002]       ; 0x69f9
    cmp ax, word [bss_9070]          ; 0x69fc
    jge short @..loc_68fa.l8         ; 0x6a00
    jmp near @..loc_68fa.l1          ; 0x6a02
@..loc_68fa.l8:
    cmp word [bp - 0x0008], byte 0   ; 0x6a05
    jle short @..loc_68fa.l9         ; 0x6a09
    push word [bp - 0x0008]          ; 0x6a0b
    mov ax, 1                        ; 0x6a0e
    push ax                          ; 0x6a11
    push ax                          ; 0x6a12
    mov ax, 0                        ; 0x6a13
    push ax                          ; 0x6a16
    push word [bp + 0x4]             ; 0x6a17
    call api_idx_0038                ; 0x6a1a
    add sp, byte 0x0a                ; 0x6a1d
    cmp ax, strict word 1            ; 0x6a20
    jne short @..loc_68fa.l9         ; 0x6a23
    mov ax, word [bss_904e]          ; 0x6a25
    mov word [bp - 0x0006], ax       ; 0x6a28
    cmp ax, strict word 0xffff       ; 0x6a2b
    je short @..loc_68fa.l9          ; 0x6a2e
    shl ax, 1                        ; 0x6a30
    mov bx, ax                       ; 0x6a32
    add bx, bp                       ; 0x6a34
    mov ax, word [bx - 0x02c0]       ; 0x6a36
    ret                              ; 0x6a3a
@..loc_68fa.l9:
    mov ax, 0xffff                   ; 0x6a3b
    ret                              ; 0x6a3e
