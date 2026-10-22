; auto-generated
log_maze_change:
    mov ax, 0xfffc                   ; 0x69d6
    call aztec_csav                  ; 0x69d9
    push word [bp + 0xc]             ; 0x69dc
    push word [bp + 0xa]             ; 0x69df
    push word [bp + 0x8]             ; 0x69e2
    push word [bp + 0x6]             ; 0x69e5
    push word [bp + 0x4]             ; 0x69e8
    call api_idx_0006_POPS           ; 0x69eb
    add sp, byte 0x0a                ; 0x69ee
    mov word [bp - 0x0002], ax       ; 0x69f1
    cmp ax, strict word 0xffff       ; 0x69f4
    jne short @..log_maze_change.l2  ; 0x69f7
    mov ax, word [bss_590e]          ; 0x69f9
    mov word [bp - 0x0002], ax       ; 0x69fc
    inc word [bss_590e]              ; 0x69ff
    mov ax, word [bss_590e]          ; 0x6a03
    cmp ax, 0x200                    ; 0x6a06
    jl short @..log_maze_change.l2   ; 0x6a09
@..log_maze_change.l1:
    mov ax, 0                        ; 0x6a0b
    push ax                          ; 0x6a0e
    call play_sound_effect           ; 0x6a0f
    pop cx                           ; 0x6a12
    jmp short @..log_maze_change.l1  ; 0x6a13
@..log_maze_change.l2:
    mov ax, 6                        ; 0x6a15
    imul word [bp - 0x0002]          ; 0x6a18
    mov cx, ax                       ; 0x6a1b
    mov ax, word [bss_0e10]          ; 0x6a1d
    add ax, cx                       ; 0x6a20
    mov word [bp - 0x0004], ax       ; 0x6a22
    mov al, byte [bp + 0x4]          ; 0x6a25
    mov bx, word [bp - 0x0004]       ; 0x6a28
    mov byte [bx], al                ; 0x6a2b
    mov al, byte [bp + 0x6]          ; 0x6a2d
    mov bx, word [bp - 0x0004]       ; 0x6a30
    mov byte [bx + 0x1], al          ; 0x6a33
    mov ax, word [bp + 0x8]          ; 0x6a36
    xchg al, ah                      ; 0x6a39
    sub al, al                       ; 0x6a3b
    mov dx, word [bp + 0xa]          ; 0x6a3d
    mov cx, 4                        ; 0x6a40
    shl dx, cl                       ; 0x6a43
    mov cx, dx                       ; 0x6a45
    add ax, cx                       ; 0x6a47
    add ax, word [bp + 0xc]          ; 0x6a49
    mov bx, word [bp - 0x0004]       ; 0x6a4c
    mov word [bx + 0x2], ax          ; 0x6a4f
    mov ax, word [bp + 0x6]          ; 0x6a52
    jmp short @..log_maze_change.l3  ; 0x6a55
jumptable_6aab_case_0:
    mov ax, word [bp + 0xe]          ; 0x6a57
    mov cx, 4                        ; 0x6a5a
    shl ax, cl                       ; 0x6a5d
    add ax, word [bp + 0x10]         ; 0x6a5f
    xchg al, ah                      ; 0x6a62
    sub al, al                       ; 0x6a64
    mov dx, word [bp + 0x12]         ; 0x6a66
    shl dx, cl                       ; 0x6a69
    mov cx, dx                       ; 0x6a6b
    add ax, cx                       ; 0x6a6d
    add ax, word [bp + 0x14]         ; 0x6a6f
    mov bx, word [bp - 0x0004]       ; 0x6a72
    mov word [bx + 0x4], ax          ; 0x6a75
    jmp short @..log_maze_change.l4  ; 0x6a78
jumptable_6aab_case_1:
    mov ax, word [bp + 0xe]          ; 0x6a7a
    mov bx, word [bp - 0x0004]       ; 0x6a7d
    mov word [bx + 0x4], ax          ; 0x6a80
    jmp short @..log_maze_change.l4  ; 0x6a83
jumptable_6aab_case_5:
    mov ax, word [bp + 0xe]          ; 0x6a85
    xchg al, ah                      ; 0x6a88
    sub al, al                       ; 0x6a8a
    add ax, word [bp + 0x10]         ; 0x6a8c
    mov bx, word [bp - 0x0004]       ; 0x6a8f
    mov word [bx + 0x4], ax          ; 0x6a92
    jmp short @..log_maze_change.l4  ; 0x6a95
jumptable_6aab_case_6:
    mov ax, word [bp + 0x8]          ; 0x6a97
    mov bx, word [bp - 0x0004]       ; 0x6a9a
    mov word [bx + 0x2], ax          ; 0x6a9d
    mov ax, word [bp + 0xe]          ; 0x6aa0
    mov bx, word [bp - 0x0004]       ; 0x6aa3
    mov word [bx + 0x4], ax          ; 0x6aa6
    jmp short @..log_maze_change.l4  ; 0x6aa9
jumptable_6aab:
    dw jumptable_6aab_case_0 - IMAGE_BASE + __zres_end ; 0x6aab
    dw jumptable_6aab_case_1 - IMAGE_BASE + __zres_end ; 0x6aad
    dw jumptable_6aab_case_1 - IMAGE_BASE + __zres_end ; 0x6aaf
    dw jumptable_6aab_case_1 - IMAGE_BASE + __zres_end ; 0x6ab1
    dw jumptable_6aab_case_1 - IMAGE_BASE + __zres_end ; 0x6ab3
    dw jumptable_6aab_case_5 - IMAGE_BASE + __zres_end ; 0x6ab5
    dw jumptable_6aab_case_6 - IMAGE_BASE + __zres_end ; 0x6ab7
@..log_maze_change.l3:
    cmp ax, strict word 7            ; 0x6ab9
    jae short @..log_maze_change.l4  ; 0x6abc
    xchg bx, ax                      ; 0x6abe
    shl bx, 1                        ; 0x6abf
    jmp [cs:bx + jumptable_6aab - IMAGE_BASE + __zres_end] ; 0x6ac1
@..log_maze_change.l4:
    ret                              ; 0x6ac6
