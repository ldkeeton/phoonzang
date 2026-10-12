api_idx_000c:
    mov ax, 0xfff4                   ; 0x893e
    call ds_aztec_csav               ; 0x8941
    mov word [bp - 0x0002], 0        ; 0x8944
@..api_idx_000c.l1:
    mov ax, 0x14                     ; 0x8949
    imul word [bp - 0x0002]          ; 0x894c
    mov cx, word [bp - 0x0002]       ; 0x894f
    shl cx, 1                        ; 0x8952
    mov bx, cx                       ; 0x8954
    mov cx, word [bx - 0x7cf2]       ; 0x8956
    shl cx, 1                        ; 0x895a
    add ax, cx                       ; 0x895c
    mov bx, ax                       ; 0x895e
    mov al, byte [bx + 0x1d4]        ; 0x8960
    mov byte [bp - 0x000c], al       ; 0x8964
    mov byte [bp - 0x000b], 0        ; 0x8967
    mov ax, 0                        ; 0x896b
    push ax                          ; 0x896e
    push ax                          ; 0x896f
    lea ax, word [bp - 0x000c]       ; 0x8970
    push ax                          ; 0x8973
    mov ax, 0                        ; 0x8974
    push ax                          ; 0x8977
    mov ax, 0xc7                     ; 0x8978
    push ax                          ; 0x897b
    mov ax, 0                        ; 0x897c
    push ax                          ; 0x897f
    mov ax, 0x13f                    ; 0x8980
    push ax                          ; 0x8983
    mov ax, 0                        ; 0x8984
    push ax                          ; 0x8987
    mov ax, 0xc                      ; 0x8988
    imul word [bp + 0x8]             ; 0x898b
    mov cx, word [bp - 0x0002]       ; 0x898e
    shl cx, 1                        ; 0x8991
    add ax, cx                       ; 0x8993
    mov bx, ax                       ; 0x8995
    mov ax, word [bx + 0x1bc]        ; 0x8997
    add ax, word [bp + 0x6]          ; 0x899b
    push ax                          ; 0x899e
    mov ax, word [bx + 0x1a4]        ; 0x899f
    add ax, word [bp + 0x4]          ; 0x89a3
    push ax                          ; 0x89a6
    mov ax, 2                        ; 0x89a7
    push ax                          ; 0x89aa
    call ds_loc_4218                 ; 0x89ab
    add sp, byte 0x16                ; 0x89ae
    inc word [bp - 0x0002]           ; 0x89b1
    mov ax, word [bp - 0x0002]       ; 0x89b4
    cmp ax, strict word 6            ; 0x89b7
    jl short @..api_idx_000c.l1      ; 0x89ba
    ret                              ; 0x89bc
