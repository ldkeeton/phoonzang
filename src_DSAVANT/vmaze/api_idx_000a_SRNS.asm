; auto-generated
api_idx_000a_SRNS:
    mov ax, 0xfff6                   ; 0x784f
    call aztec_csav                  ; 0x7852
    mov bx, word [bss_0e12]          ; 0x7855
    mov si, word [bss_8d12]          ; 0x7859
    mov al, byte [bx + si + 0xa50]   ; 0x785d
    sub ah, ah                       ; 0x7861
    push ax                          ; 0x7863
    call loc_GRON                    ; 0x7864
    pop cx                           ; 0x7867
    mov ax, word [bss_8d12]          ; 0x7868
    shl ax, 1                        ; 0x786b
    mov si, ax                       ; 0x786d
    mov bx, word [bss_0e12]          ; 0x786f
    mov ax, word [bx + si + 0x3c0]   ; 0x7873
    mov word [bp - 0x0002], ax       ; 0x7877
    mov ax, 1                        ; 0x787a
    push ax                          ; 0x787d
    mov ax, 0xf                      ; 0x787e
    push ax                          ; 0x7881
    push word [bp - 0x0002]          ; 0x7882
    call ds_dos_con_loc_QJHU         ; 0x7885
    add sp, byte 6                   ; 0x7888
    mov word [bp - 0x0006], ax       ; 0x788b
    mov ax, word [bss_8d12]          ; 0x788e
    shl ax, 1                        ; 0x7891
    mov si, ax                       ; 0x7893
    mov bx, word [bss_0e12]          ; 0x7895
    push word [bx + si]              ; 0x7899
    mov ax, word [bss_830c]          ; 0x789b
    mov cx, 4                        ; 0x789e
    shl ax, cl                       ; 0x78a1
    add ax, 0x8d14                   ; 0x78a3
    push ax                          ; 0x78a6
    call ds_leaf_loc_PRVP            ; 0x78a7
    add sp, byte 4                   ; 0x78aa
    mov cx, ax                       ; 0x78ad
    mov ax, word [bp - 0x0006]       ; 0x78af
    cmp cx, ax                       ; 0x78b2
    jne short @..api_idx_000a_SRNS.l1 ; 0x78b4
    mov ax, word [bss_8d12]          ; 0x78b6
    shl ax, 1                        ; 0x78b9
    mov si, ax                       ; 0x78bb
    mov bx, word [bss_0e12]          ; 0x78bd
    push word [bx + si + 0x1e0]      ; 0x78c1
    mov ax, word [bss_830c]          ; 0x78c5
    mov cx, 4                        ; 0x78c8
    shl ax, cl                       ; 0x78cb
    add ax, 0x8d14                   ; 0x78cd
    push ax                          ; 0x78d0
    call ds_leaf_loc_PRVP            ; 0x78d1
    add sp, byte 4                   ; 0x78d4
    mov cx, ax                       ; 0x78d7
    mov ax, word [bp - 0x0006]       ; 0x78d9
    cmp cx, ax                       ; 0x78dc
    je short @..api_idx_000a_SRNS.l2 ; 0x78de
@..api_idx_000a_SRNS.l1:
    ret                              ; 0x78e0
@..api_idx_000a_SRNS.l2:
    mov ax, 8                        ; 0x78e1
    push ax                          ; 0x78e4
    mov ax, 0                        ; 0x78e5
    push ax                          ; 0x78e8
    push word [bp - 0x0002]          ; 0x78e9
    call ds_dos_con_loc_QJHU         ; 0x78ec
    add sp, byte 6                   ; 0x78ef
    mov word [bp - 0x0004], ax       ; 0x78f2
    mov ax, 5                        ; 0x78f5
    push ax                          ; 0x78f8
    mov ax, 8                        ; 0x78f9
    push ax                          ; 0x78fc
    push word [bp - 0x0002]          ; 0x78fd
    call ds_dos_con_loc_QJHU         ; 0x7900
    add sp, byte 6                   ; 0x7903
    mov word [bp - 0x0008], ax       ; 0x7906
    mov ax, 1                        ; 0x7909
    push ax                          ; 0x790c
    mov ax, 0xd                      ; 0x790d
    push ax                          ; 0x7910
    push word [bp - 0x0002]          ; 0x7911
    call ds_dos_con_loc_QJHU         ; 0x7914
    add sp, byte 6                   ; 0x7917
    jmp short @..api_idx_000a_SRNS.l5 ; 0x791a
@..api_idx_000a_SRNS.l3:
    mov ax, 0                        ; 0x791c
    push ax                          ; 0x791f
    push word [bp - 0x0004]          ; 0x7920
    mov ax, word [bp - 0x0008]       ; 0x7923
    mov cx, 4                        ; 0x7926
    shl ax, cl                       ; 0x7929
    add ax, 0x8d14                   ; 0x792b
    push ax                          ; 0x792e
    call set_bitmap_bit              ; 0x792f
    add sp, byte 6                   ; 0x7932
    jmp short @..api_idx_000a_SRNS.l6 ; 0x7935
@..api_idx_000a_SRNS.l4:
    mov ax, 1                        ; 0x7937
    push ax                          ; 0x793a
    push word [bp - 0x0004]          ; 0x793b
    mov ax, word [bp - 0x0008]       ; 0x793e
    mov cx, 4                        ; 0x7941
    shl ax, cl                       ; 0x7944
    add ax, 0x8d14                   ; 0x7946
    push ax                          ; 0x7949
    call set_bitmap_bit              ; 0x794a
    add sp, byte 6                   ; 0x794d
    jmp short @..api_idx_000a_SRNS.l6 ; 0x7950
@..api_idx_000a_SRNS.l5:
    cmp ax, strict word 0            ; 0x7952
    je short @..api_idx_000a_SRNS.l3 ; 0x7955
    cmp ax, strict word 1            ; 0x7957
    je short @..api_idx_000a_SRNS.l4 ; 0x795a
@..api_idx_000a_SRNS.l6:
    mov ax, 1                        ; 0x795c
    push ax                          ; 0x795f
    mov ax, 0xe                      ; 0x7960
    push ax                          ; 0x7963
    push word [bp - 0x0002]          ; 0x7964
    call ds_dos_con_loc_QJHU         ; 0x7967
    add sp, byte 6                   ; 0x796a
    cmp ax, strict word 1            ; 0x796d
    jne short @..api_idx_000a_SRNS.l7 ; 0x7970
    push word [bp - 0x0004]          ; 0x7972
    mov ax, word [bp - 0x0008]       ; 0x7975
    mov cx, 4                        ; 0x7978
    shl ax, cl                       ; 0x797b
    add ax, 0x8d14                   ; 0x797d
    push ax                          ; 0x7980
    call ds_leaf_loc_PRVP            ; 0x7981
    add sp, byte 4                   ; 0x7984
    push ax                          ; 0x7987
    push word [bp - 0x0004]          ; 0x7988
    mov ax, word [bp - 0x0008]       ; 0x798b
    mov cx, 4                        ; 0x798e
    shl ax, cl                       ; 0x7991
    add ax, 0x5642                   ; 0x7993
    push ax                          ; 0x7996
    call set_bitmap_bit              ; 0x7997
    add sp, byte 6                   ; 0x799a
@..api_idx_000a_SRNS.l7:
    ret                              ; 0x799d
