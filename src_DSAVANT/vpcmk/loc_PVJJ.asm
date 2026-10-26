; auto-generated
loc_PVJJ:
    mov ax, 0xfd40                   ; 0x68fa
    call aztec_csav                  ; 0x68fd
    mov word [bp - 8], 0             ; 0x6900
    mov word [bp - 2], 0             ; 0x6905
    jmp near .forward4               ; 0x690a
.back1:
    mov bx, word [bp - 2]            ; 0x690d
    cmp byte [bx + pc_file_record_base_hi + 0x2], 1 ; 0x6910
    je short .forward1               ; 0x6915
    jmp near .forward3               ; 0x6917
.forward1:
    mov ax, 0                        ; 0x691a
    push ax                          ; 0x691d
    push bx                          ; 0x691e
    lea ax, word [bp - 0x250]        ; 0x691f
    push ax                          ; 0x6923
    call transfer_pc_file_record     ; 0x6924
    add sp, byte 6                   ; 0x6927
    lea ax, word [bp - 0x250]        ; 0x692a
    push ax                          ; 0x692e
    mov ax, 0x14                     ; 0x692f
    imul word [bp - 8]               ; 0x6932
    add ax, known_spell_names        ; 0x6935
    push ax                          ; 0x6938
    call aztec_strcpy                ; 0x6939
    add sp, byte 4                   ; 0x693c
    mov ax, 0x14                     ; 0x693f
    imul word [bp - 8]               ; 0x6942
    add ax, known_spell_names        ; 0x6945
    push ax                          ; 0x6948
    call aztec_strlen                ; 0x6949
    pop cx                           ; 0x694c
    mov word [bp - 4], ax            ; 0x694d
.back2:
    cmp word [bp - 4], byte 0xa      ; 0x6950
    jge short .forward2              ; 0x6954
    mov ax, 0x14                     ; 0x6956
    imul word [bp - 8]               ; 0x6959
    add ax, word [bp - 4]            ; 0x695c
    mov bx, ax                       ; 0x695f
    mov byte [bx + known_spell_names], 0x20 ; 0x6961
    inc word [bp - 4]                ; 0x6966
    jmp short .back2                 ; 0x6969
.forward2:
    lea ax, word [bp - 0x2a0]        ; 0x696b
    push ax                          ; 0x696f
    mov al, byte [bp - 0x18]         ; 0x6970
    sub ah, ah                       ; 0x6973
    add ax, MSG_MALE                 ; 0x6975
    push ax                          ; 0x6978
    call load_message_string         ; 0x6979
    add sp, byte 4                   ; 0x697c
    mov al, byte [bp - 0x2a0]        ; 0x697f
    push ax                          ; 0x6983
    mov ax, 0x14                     ; 0x6984
    imul word [bp - 8]               ; 0x6987
    mov bx, ax                       ; 0x698a
    pop ax                           ; 0x698c
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000a], al ; 0x698d
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000b], 0x2d ; 0x6991
    lea ax, word [bp - 0x2a0]        ; 0x6996
    push ax                          ; 0x699a
    mov al, byte [bp - 0x17]         ; 0x699b
    sub ah, ah                       ; 0x699e
    add ax, strict word 0x78         ; 0x69a0
    push ax                          ; 0x69a3
    call load_message_string         ; 0x69a4
    add sp, byte 4                   ; 0x69a7
    mov word [bp - 4], 0             ; 0x69aa
.back3:
    mov bx, word [bp - 4]            ; 0x69af
    add bx, bp                       ; 0x69b2
    mov al, byte [bx - 0x2a0]        ; 0x69b4
    push ax                          ; 0x69b8
    mov ax, 0x14                     ; 0x69b9
    imul word [bp - 8]               ; 0x69bc
    mov cx, ax                       ; 0x69bf
    add ax, word [bp - 4]            ; 0x69c1
    mov bx, ax                       ; 0x69c4
    pop ax                           ; 0x69c6
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000c], al ; 0x69c7
    inc word [bp - 4]                ; 0x69cb
    mov ax, word [bp - 4]            ; 0x69ce
    cmp ax, strict word 3            ; 0x69d1
    jl short .back3                  ; 0x69d4
    mov ax, 0x14                     ; 0x69d6
    imul word [bp - 8]               ; 0x69d9
    mov bx, ax                       ; 0x69dc
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000f], 0 ; 0x69de
    mov ax, word [bp - 2]            ; 0x69e3
    mov cx, word [bp - 8]            ; 0x69e6
    shl cx, 1                        ; 0x69e9
    mov bx, cx                       ; 0x69eb
    add bx, bp                       ; 0x69ed
    mov word [bx - 0x2c0], ax        ; 0x69ef
    inc word [bp - 8]                ; 0x69f3
.forward3:
    inc word [bp - 2]                ; 0x69f6
.forward4:
    mov ax, word [bp - 2]            ; 0x69f9
    cmp ax, word [bss_9070]          ; 0x69fc
    jge short .forward5              ; 0x6a00
    jmp near .back1                  ; 0x6a02
.forward5:
    cmp word [bp - 8], byte 0        ; 0x6a05
    jle short .forward6              ; 0x6a09
    push word [bp - 8]               ; 0x6a0b
    mov ax, 1                        ; 0x6a0e
    push ax                          ; 0x6a11
    push ax                          ; 0x6a12
    mov ax, 0                        ; 0x6a13
    push ax                          ; 0x6a16
    push word [bp + 4]               ; 0x6a17
    call api_idx_0038_LTUV           ; 0x6a1a
    add sp, byte 0xa                 ; 0x6a1d
    cmp ax, strict word 1            ; 0x6a20
    jne short .forward6              ; 0x6a23
    mov ax, word [spell_dialog_result] ; 0x6a25
    mov word [bp - 6], ax            ; 0x6a28
    cmp ax, strict word 0xffff       ; 0x6a2b
    je short .forward6               ; 0x6a2e
    shl ax, 1                        ; 0x6a30
    mov bx, ax                       ; 0x6a32
    add bx, bp                       ; 0x6a34
    mov ax, word [bx - 0x2c0]        ; 0x6a36
    ret                              ; 0x6a3a
.forward6:
    mov ax, 0xffff                   ; 0x6a3b
    ret                              ; 0x6a3e
