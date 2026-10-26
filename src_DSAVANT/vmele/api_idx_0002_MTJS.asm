; auto-generated
api_idx_0002_MTJS:
    mov ax, 0xfffe                   ; 0x28fc
    call aztec_csav                  ; 0x28ff
    mov ax, word [bp + 4]            ; 0x2902
    cmp ax, word [party_member_count] ; 0x2905
    jle short .forward1              ; 0x2909
    mov ax, 0xffff                   ; 0x290b
    ret                              ; 0x290e
.forward1:
    mov word [bp - 2], 0             ; 0x290f
    jmp short .forward3              ; 0x2914
.back1:
    mov ax, 0x2c                     ; 0x2916
    imul word [bp - 2]               ; 0x2919
    mov si, ax                       ; 0x291c
    mov ax, word [bp + 4]            ; 0x291e
    shl ax, 1                        ; 0x2921
    mov bx, ax                       ; 0x2923
    mov bx, word [bx + party_char]   ; 0x2925
    cmp byte [bx + si + member_rec.item_cell], 0xff ; 0x2929
    jne short .forward2              ; 0x292d
    mov ax, 6                        ; 0x292f
    imul word [bp + 6]               ; 0x2932
    mov cx, word [bp + 8]            ; 0x2935
    shl cx, 1                        ; 0x2938
    add ax, cx                       ; 0x293a
    mov bx, ax                       ; 0x293c
    mov word [bx + cell_action_marks], 1 ; 0x293e
    mov ax, 0xa                      ; 0x2944
    imul word [bp + 4]               ; 0x2947
    add ax, word [bp - 2]            ; 0x294a
    mov word [bx + cell_slot_ref], ax ; 0x294d
    mov ax, 0xa                      ; 0x2951
    imul word [bp + 6]               ; 0x2954
    add ax, word [bp + 8]            ; 0x2957
    mov cx, word [bp + 4]            ; 0x295a
    shl cx, 1                        ; 0x295d
    mov bx, cx                       ; 0x295f
    mov bx, word [bx + party_char]   ; 0x2961
    mov byte [bx + si + 0x2a], al    ; 0x2965
    mov ax, 0xffff                   ; 0x2968
    push ax                          ; 0x296b
    push word [bp + 8]               ; 0x296c
    push word [bp + 6]               ; 0x296f
    push word [bp + 4]               ; 0x2972
    call fill_action_slot_table_vmnpc ; 0x2975
    add sp, byte 8                   ; 0x2978
    mov ax, 0                        ; 0x297b
    ret                              ; 0x297e
.forward2:
    inc word [bp - 2]                ; 0x297f
.forward3:
    mov ax, word [bp + 4]            ; 0x2982
    shl ax, 1                        ; 0x2985
    mov bx, ax                       ; 0x2987
    mov bx, word [bx + party_char]   ; 0x2989
    mov al, byte [bx + member_rec.item_count] ; 0x298d
    sub ah, ah                       ; 0x2991
    cmp ax, word [bp - 2]            ; 0x2993
    jle short .forward4              ; 0x2996
    jmp near .back1                  ; 0x2998
.forward4:
    mov ax, 0xffff                   ; 0x299b
    ret                              ; 0x299e
