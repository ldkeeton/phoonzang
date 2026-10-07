api_idx_0044:
    mov ax, 0xffbc                   ; 0x786c
    db 0xe8, 0x99, 0x7b ; call 0xf40b
    mov word [bp - 0x0002], 0        ; 0x7872
@..api_idx_0044.l1:
    mov ax, word [bp - 0x0002]       ; 0x7877
    shl ax, 1                        ; 0x787a
    mov bx, ax                       ; 0x787c
    mov word [bx - 0x7cf2], 0        ; 0x787e
    inc word [bp - 0x0002]           ; 0x7884
    mov ax, word [bp - 0x0002]       ; 0x7887
    cmp ax, strict word 6            ; 0x788a
    jl short @..api_idx_0044.l1      ; 0x788d
    mov word [data_904e], 0xffff     ; 0x788f
    mov word [bp - 0x0004], 0x32     ; 0x7895
    mov word [bp - 0x0006], 0x73     ; 0x789a
    mov word [bp - 0x0008], 0x10d    ; 0x789f
    mov word [bp - 0x000a], 0xc5     ; 0x78a4
    mov word [bp - 0x000c], 0x95     ; 0x78a9
    mov word [bp - 0x0014], 0x16     ; 0x78ae
    mov ax, 0x90e8                   ; 0x78b3
    push ax                          ; 0x78b6
    mov ax, word [bp - 0x000a]       ; 0x78b7
    inc ax                           ; 0x78ba
    push ax                          ; 0x78bb
    mov ax, word [bp - 0x0008]       ; 0x78bc
    inc ax                           ; 0x78bf
    push ax                          ; 0x78c0
    mov ax, word [bp - 0x0006]       ; 0x78c1
    dec ax                           ; 0x78c4
    push ax                          ; 0x78c5
    mov ax, word [bp - 0x0004]       ; 0x78c6
    dec ax                           ; 0x78c9
    push ax                          ; 0x78ca
    db 0xe8, 0xb5, 0x49 ; call 0xc283
    add sp, byte 0x0a                ; 0x78ce
    mov word [bp - 0x003a], ax       ; 0x78d1
    push word [bp - 0x000a]          ; 0x78d4
    push word [bp - 0x0008]          ; 0x78d7
    push word [bp - 0x0006]          ; 0x78da
    push word [bp - 0x0004]          ; 0x78dd
    db 0xe8, 0xb7, 0x43 ; call 0xbc9a
    add sp, byte 8                   ; 0x78e3
    push word [bp - 0x000a]          ; 0x78e6
    push word [bp - 0x0008]          ; 0x78e9
    push word [bp - 0x0006]          ; 0x78ec
    mov ax, 0x95                     ; 0x78ef
    push ax                          ; 0x78f2
    db 0xe8, 0xa4, 0x43 ; call 0xbc9a
    add sp, byte 8                   ; 0x78f6
    call api_idx_000a_2              ; 0x78f9
    push word [bp + 0x4]             ; 0x78fc
    call api_idx_000c_4              ; 0x78ff
    pop cx                           ; 0x7902
    mov ax, 1                        ; 0x7903
    push ax                          ; 0x7906
    mov ax, 0x73                     ; 0x7907
    push ax                          ; 0x790a
    mov ax, 0x32                     ; 0x790b
    push ax                          ; 0x790e
    call api_idx_000c_3              ; 0x790f
    add sp, byte 6                   ; 0x7912
    lea ax, word [bp - 0x0038]       ; 0x7915
    push ax                          ; 0x7918
    push word [bp + 0x6]             ; 0x7919
    db 0xe8, 0x1c, 0x3c ; call 0xb53b
    add sp, byte 4                   ; 0x791f
    lea ax, word [bp - 0x0038]       ; 0x7922
    push ax                          ; 0x7925
    push word [bp + 0x8]             ; 0x7926
    mov ax, 1                        ; 0x7929
    push ax                          ; 0x792c
    mov ax, 8                        ; 0x792d
    push ax                          ; 0x7930
    mov ax, word [bp - 0x0006]       ; 0x7931
    add ax, strict word 6            ; 0x7934
    push ax                          ; 0x7937
    mov ax, word [bp - 0x000c]       ; 0x7938
    add ax, strict word 6            ; 0x793b
    push ax                          ; 0x793e
    db 0xe8, 0x7f, 0x47 ; call 0xc0c1
    add sp, byte 0x0c                ; 0x7942
    lea ax, word [bp - 0x0038]       ; 0x7945
    push ax                          ; 0x7948
    mov ax, word [bp + 0x6]          ; 0x7949
    inc ax                           ; 0x794c
    push ax                          ; 0x794d
    db 0xe8, 0xea, 0x3b ; call 0xb53b
    add sp, byte 4                   ; 0x7951
    lea ax, word [bp - 0x0038]       ; 0x7954
    push ax                          ; 0x7957
    mov ax, 1                        ; 0x7958
    push ax                          ; 0x795b
    push ax                          ; 0x795c
    mov ax, 8                        ; 0x795d
    push ax                          ; 0x7960
    mov ax, word [bp - 0x0006]       ; 0x7961
    add ax, strict word 6            ; 0x7964
    push ax                          ; 0x7967
    mov ax, word [bp - 0x000c]       ; 0x7968
    add ax, strict word 0x42         ; 0x796b
    push ax                          ; 0x796e
    db 0xe8, 0x4f, 0x47 ; call 0xc0c1
    add sp, byte 0x0c                ; 0x7972
    mov ax, word [bp - 0x0006]       ; 0x7975
    add ax, strict word 0x14         ; 0x7978
    push ax                          ; 0x797b
    mov ax, word [bp - 0x000c]       ; 0x797c
    add ax, strict word 0x48         ; 0x797f
    push ax                          ; 0x7982
    db 0xe8, 0x83, 0x6e ; call 0xe809
    add sp, byte 4                   ; 0x7986
    mov ax, 0                        ; 0x7989
    push ax                          ; 0x798c
    mov ax, 0xcd                     ; 0x798d
    push ax                          ; 0x7990
    db 0xe8, 0x8f, 0x6e ; call 0xe823
    add sp, byte 4                   ; 0x7994
    mov ax, data_0002                ; 0x7997
    push ax                          ; 0x799a
    mov ax, 0xa                      ; 0x799b
    push ax                          ; 0x799e
    db 0xe8, 0x8e, 0x6e ; call 0xe830
    add sp, byte 4                   ; 0x79a2
    mov word [bp - 0x003c], 0xffff   ; 0x79a5
    mov word [bp - 0x003e], 0        ; 0x79aa
    mov word [bp - 0x0040], 0        ; 0x79af
    mov word [bp - 0x0002], 0        ; 0x79b4
@..api_idx_0044.l2:
    mov ax, 0                        ; 0x79b9
    mov cx, word [bp - 0x0002]       ; 0x79bc
    cmp cx, word [bp - 0x003e]       ; 0x79bf
    jne short @..api_idx_0044.l3     ; 0x79c2
    mov ax, 1                        ; 0x79c4
@..api_idx_0044.l3:
    push ax                          ; 0x79c7
    push cx                          ; 0x79c8
    mov ax, word [bp - 0x0006]       ; 0x79c9
    add ax, strict word 0x14         ; 0x79cc
    push ax                          ; 0x79cf
    mov ax, word [bp - 0x000c]       ; 0x79d0
    add ax, strict word 0xc          ; 0x79d3
    push ax                          ; 0x79d6
    call math_loc_75db               ; 0x79d7
    add sp, byte 8                   ; 0x79da
    inc word [bp - 0x0002]           ; 0x79dd
    mov ax, word [bp - 0x0002]       ; 0x79e0
    cmp ax, strict word 7            ; 0x79e3
    jl short @..api_idx_0044.l2      ; 0x79e6
    mov word [bp - 0x0042], 0        ; 0x79e8
    mov ax, 0                        ; 0x79ed
    push ax                          ; 0x79f0
    push ax                          ; 0x79f1
    push word [bp - 0x0042]          ; 0x79f2
    mov ax, word [bp - 0x0006]       ; 0x79f5
    add ax, strict word 0x15         ; 0x79f8
    push ax                          ; 0x79fb
    mov ax, word [bp - 0x000c]       ; 0x79fc
    add ax, strict word 0x5e         ; 0x79ff
    push ax                          ; 0x7a02
    call loc_7667                    ; 0x7a03
    add sp, byte 0x0a                ; 0x7a06
    push word [bp - 0x0042]          ; 0x7a09
    push word [bp + 0x4]             ; 0x7a0c
    call api_idx_0004_13             ; 0x7a0f
    add sp, byte 4                   ; 0x7a12
    mov word [bp - 0x0044], ax       ; 0x7a15
    mov ax, 7                        ; 0x7a18
    cmp word [bp - 0x0044], byte 7   ; 0x7a1b
    jge short @..api_idx_0044.l4     ; 0x7a1f
    mov ax, word [bp - 0x0044]       ; 0x7a21
@..api_idx_0044.l4:
    mov word [bp - 0x0024], ax       ; 0x7a24
    mov word [bp - 0x0018], 0        ; 0x7a27
    mov word [bp - 0x0022], 0xffff   ; 0x7a2c
    push ax                          ; 0x7a31
    push word [bp - 0x0022]          ; 0x7a32
    push word [bp - 0x0018]          ; 0x7a35
    mov ax, 7                        ; 0x7a38
    push ax                          ; 0x7a3b
    mov ax, 0xf                      ; 0x7a3c
    push ax                          ; 0x7a3f
    mov ax, word [bp - 0x0006]       ; 0x7a40
    add ax, strict word 0x22         ; 0x7a43
    push ax                          ; 0x7a46
    mov ax, word [bp - 0x000c]       ; 0x7a47
    add ax, strict word 6            ; 0x7a4a
    push ax                          ; 0x7a4d
    call 0xbf97                      ; 0x7a4e
    add sp, byte 0x0e                ; 0x7a51
    mov word [bp - 0x0012], 0        ; 0x7a54
    push word [bp - 0x0012]          ; 0x7a59
    mov ax, 7                        ; 0x7a5c
    push ax                          ; 0x7a5f
    mov ax, 8                        ; 0x7a60
    push ax                          ; 0x7a63
    mov ax, word [bp - 0x0006]       ; 0x7a64
    add ax, strict word 0x22         ; 0x7a67
    push ax                          ; 0x7a6a
