api_idx_0006_8:
    mov ax, 0xfffa                   ; 0x8849
    call ds_dispatch_f40b            ; 0x884c
    mov ax, 0x25                     ; 0x884f
    push ax                          ; 0x8852
    mov ax, 0x14                     ; 0x8853
    imul word [bp + 0x4]             ; 0x8856
    add ax, 0x9e88                   ; 0x8859
    push ax                          ; 0x885c
    call ds_dispatch_ee4a            ; 0x885d
    add sp, byte 4                   ; 0x8860
    mov word [bp - 0x0006], ax       ; 0x8863
    cmp ax, strict word 0            ; 0x8866
    jl short @..api_idx_0006_8.l1    ; 0x8869
    inc ax                           ; 0x886b
    push ax                          ; 0x886c
    mov ax, 0x14                     ; 0x886d
    imul word [bp + 0x4]             ; 0x8870
    add ax, 0x9e88                   ; 0x8873
    push ax                          ; 0x8876
    push word [bp + 0x6]             ; 0x8877
    call aztec_strncpy               ; 0x887a
    add sp, byte 6                   ; 0x887d
    mov bx, word [bp + 0x6]          ; 0x8880
    mov si, word [bp - 0x0006]       ; 0x8883
    mov byte [bx + si], 0x53         ; 0x8886
    mov bx, word [bp + 0x6]          ; 0x8889
    mov si, word [bp - 0x0006]       ; 0x888c
    mov byte [bx + si + 0x1], 0      ; 0x888f
    jmp near @..api_idx_0006_8.l6    ; 0x8893
@..api_idx_0006_8.l1:
    mov ax, 0x40                     ; 0x8896
    push ax                          ; 0x8899
    mov ax, 0x14                     ; 0x889a
    imul word [bp + 0x4]             ; 0x889d
    add ax, 0x9e88                   ; 0x88a0
    push ax                          ; 0x88a3
    call ds_dispatch_ee4a            ; 0x88a4
    add sp, byte 4                   ; 0x88a7
    mov word [bp - 0x0006], ax       ; 0x88aa
    cmp ax, strict word 0            ; 0x88ad
    jl short @..api_idx_0006_8.l2    ; 0x88b0
    push ax                          ; 0x88b2
    mov ax, 0x14                     ; 0x88b3
    imul word [bp + 0x4]             ; 0x88b6
    add ax, 0x9e88                   ; 0x88b9
    push ax                          ; 0x88bc
    push word [bp + 0x6]             ; 0x88bd
    call aztec_strncpy               ; 0x88c0
    add sp, byte 6                   ; 0x88c3
    mov bx, word [bp + 0x6]          ; 0x88c6
    mov si, word [bp - 0x0006]       ; 0x88c9
    mov byte [bx + si], 0            ; 0x88cc
    jmp near @..api_idx_0006_8.l6    ; 0x88cf
@..api_idx_0006_8.l2:
    mov ax, 0x5e                     ; 0x88d2
    push ax                          ; 0x88d5
    mov ax, 0x14                     ; 0x88d6
    imul word [bp + 0x4]             ; 0x88d9
    add ax, 0x9e88                   ; 0x88dc
    push ax                          ; 0x88df
    call ds_dispatch_ee4a            ; 0x88e0
    add sp, byte 4                   ; 0x88e3
    mov word [bp - 0x0006], ax       ; 0x88e6
    cmp ax, strict word 0            ; 0x88e9
    jge short @..api_idx_0006_8.l3   ; 0x88ec
    jmp near @..api_idx_0006_8.l6    ; 0x88ee
@..api_idx_0006_8.l3:
    mov ax, 0x14                     ; 0x88f1
    imul word [bp + 0x4]             ; 0x88f4
    mov cx, ax                       ; 0x88f7
    mov ax, word [bp - 0x0006]       ; 0x88f9
    add cx, ax                       ; 0x88fc
    mov bx, cx                       ; 0x88fe
    mov al, byte [bx - 0x6177]       ; 0x8900
    sub ah, ah                       ; 0x8904
    add ax, strict word 0xffd0       ; 0x8906
    mov word [bp - 0x0004], ax       ; 0x8909
    mov cx, word [bp - 0x0006]       ; 0x890c
    sub cx, ax                       ; 0x890f
    mov ax, cx                       ; 0x8911
    push ax                          ; 0x8913
    mov ax, 0x14                     ; 0x8914
    imul word [bp + 0x4]             ; 0x8917
    add ax, 0x9e88                   ; 0x891a
    push ax                          ; 0x891d
    push word [bp + 0x6]             ; 0x891e
    call aztec_strncpy               ; 0x8921
    add sp, byte 6                   ; 0x8924
    mov ax, word [bp - 0x0006]       ; 0x8927
    sub ax, word [bp - 0x0004]       ; 0x892a
    mov si, ax                       ; 0x892d
    mov bx, word [bp + 0x6]          ; 0x892f
    mov byte [bx + si], 0            ; 0x8932
    mov ax, word [bp - 0x0006]       ; 0x8935
    inc ax                           ; 0x8938
    inc ax                           ; 0x8939
    mov word [bp - 0x0002], ax       ; 0x893a
    jmp short @..api_idx_0006_8.l5   ; 0x893d
@..api_idx_0006_8.l4:
    push word [bp + 0x6]             ; 0x893f
    call ds_dispatch_fa90            ; 0x8942
    pop cx                           ; 0x8945
    mov word [bp - 0x0004], ax       ; 0x8946
    mov ax, 0x14                     ; 0x8949
    imul word [bp + 0x4]             ; 0x894c
    add ax, word [bp - 0x0002]       ; 0x894f
    mov bx, ax                       ; 0x8952
    mov al, byte [bx - 0x6178]       ; 0x8954
    mov bx, word [bp + 0x6]          ; 0x8958
    mov si, word [bp - 0x0004]       ; 0x895b
    mov byte [bx + si], al           ; 0x895e
    mov bx, word [bp + 0x6]          ; 0x8960
    mov si, word [bp - 0x0004]       ; 0x8963
    mov byte [bx + si + 0x1], 0      ; 0x8966
    inc word [bp - 0x0002]           ; 0x896a
@..api_idx_0006_8.l5:
    mov ax, 0x14                     ; 0x896d
    imul word [bp + 0x4]             ; 0x8970
    add ax, 0x9e88                   ; 0x8973
    push ax                          ; 0x8976
    call ds_dispatch_fa90            ; 0x8977
    pop cx                           ; 0x897a
    cmp ax, word [bp - 0x0002]       ; 0x897b
    jg short @..api_idx_0006_8.l4    ; 0x897e
@..api_idx_0006_8.l6:
    ret                              ; 0x8980
loc_8981:
    mov ax, 0                        ; 0x8981
    call ds_dispatch_f40b            ; 0x8984
    cmp word [bp + 0x6], byte 0      ; 0x8987
    jne short @..local.l103          ; 0x898b
    push word [bp + 0x8]             ; 0x898d
    push word [bp + 0x4]             ; 0x8990
    call api_idx_0002_9              ; 0x8993
    add sp, byte 4                   ; 0x8996
    jmp short @..local.l104          ; 0x8999
@..local.l103:
    push word [bp + 0x8]             ; 0x899b
    push word [bp + 0x4]             ; 0x899e
    call api_idx_0006_8              ; 0x89a1
    add sp, byte 4                   ; 0x89a4
@..local.l104:
    ret                              ; 0x89a7
