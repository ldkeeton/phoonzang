; auto-generated
api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x69d6
    call aztec_csav                  ; 0x69d9
    push word [bp + 0xc]             ; 0x69dc
    push word [bp + 0xa]             ; 0x69df
    push word [bp + 0x8]             ; 0x69e2
    push word [bp + 0x6]             ; 0x69e5
    push word [bp + 0x4]             ; 0x69e8
    call api_idx_0006_5              ; 0x69eb
    add sp, byte 0x0a                ; 0x69ee
    mov word [bp - 0x0002], ax       ; 0x69f1
    cmp ax, strict word 0xffff       ; 0x69f4
    jne short @..api_idx_0004_7.l2   ; 0x69f7
    mov ax, word [bss_590e]          ; 0x69f9
    mov word [bp - 0x0002], ax       ; 0x69fc
    inc word [bss_590e]              ; 0x69ff
    mov ax, word [bss_590e]          ; 0x6a03
    cmp ax, 0x200                    ; 0x6a06
    jl short @..api_idx_0004_7.l2    ; 0x6a09
@..api_idx_0004_7.l1:
    mov ax, 0                        ; 0x6a0b
    push ax                          ; 0x6a0e
    call ds_app_0a27                 ; 0x6a0f
    pop cx                           ; 0x6a12
    jmp short @..api_idx_0004_7.l1   ; 0x6a13
@..api_idx_0004_7.l2:
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
    jmp short @..api_idx_0004_7.l3   ; 0x6a55
