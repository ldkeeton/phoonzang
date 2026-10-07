api_idx_0038_3:
    mov ax, 0xffc8                   ; 0x47d9
    db 0xe8, 0x2c, 0xac ; call 0xf40b
    mov ax, 0x99ae                   ; 0x47df
    push ax                          ; 0x47e2
    mov ax, 0x5e4                    ; 0x47e3
    push ax                          ; 0x47e6
    db 0xe8, 0x51, 0x6d ; call 0xb53b
    add sp, byte 4                   ; 0x47ea
    mov word [data_904e], 0xffff     ; 0x47ed
    mov word [data_93d8], 0x8d       ; 0x47f3
    mov word [bp - 0x0004], 0x23     ; 0x47f9
    mov word [bp - 0x0006], 0x8f     ; 0x47fe
    mov word [bp - 0x0008], 0x11c    ; 0x4803
    mov word [bp - 0x000a], 0xc5     ; 0x4808
    mov word [bp - 0x0012], 0x16     ; 0x480d
    mov ax, 3                        ; 0x4812
    cmp word [bp + 0xc], byte 3      ; 0x4815
    jge short @..api_idx_0038_3.l1   ; 0x4819
    mov ax, word [bp + 0xc]          ; 0x481b
@..api_idx_0038_3.l1:
    mov word [bp - 0x0022], ax       ; 0x481e
    mov ax, 0x90d6                   ; 0x4821
    push ax                          ; 0x4824
    mov ax, word [bp - 0x000a]       ; 0x4825
    inc ax                           ; 0x4828
    push ax                          ; 0x4829
    mov ax, word [bp - 0x0008]       ; 0x482a
    inc ax                           ; 0x482d
    push ax                          ; 0x482e
    mov ax, word [bp - 0x0006]       ; 0x482f
    dec ax                           ; 0x4832
    push ax                          ; 0x4833
    mov ax, word [bp - 0x0004]       ; 0x4834
    dec ax                           ; 0x4837
    push ax                          ; 0x4838
    db 0xe8, 0x47, 0x7a ; call 0xc283
    add sp, byte 0x0a                ; 0x483c
    mov word [bp - 0x0038], ax       ; 0x483f
    push word [bp - 0x000a]          ; 0x4842
    push word [bp - 0x0008]          ; 0x4845
    push word [bp - 0x0006]          ; 0x4848
    push word [bp - 0x0004]          ; 0x484b
    db 0xe8, 0x49, 0x74 ; call 0xbc9a
    add sp, byte 8                   ; 0x4851
    mov ax, 0xc2                     ; 0x4854
    push ax                          ; 0x4857
    mov ax, 1                        ; 0x4858
    push ax                          ; 0x485b
    db 0xe8, 0xc4, 0x9f ; call 0xe823
    add sp, byte 4                   ; 0x485f
    mov ax, word [bp - 0x0006]       ; 0x4862
    add ax, strict word 6            ; 0x4865
    push ax                          ; 0x4868
    mov ax, 0x248                    ; 0x4869
    imul word [bp + 0x4]             ; 0x486c
    add ax, 0x5bf4                   ; 0x486f
    push ax                          ; 0x4872
    db 0xe8, 0x1a, 0xb2 ; call 0xfa90
    pop cx                           ; 0x4876
    mov cx, 6                        ; 0x4877
    imul cx                          ; 0x487a
    mov cx, data_0002                ; 0x487c
    cwd                              ; 0x487f
    idiv cx                          ; 0x4880
    mov cx, ax                       ; 0x4882
    mov ax, word [bp - 0x0004]       ; 0x4884
    add ax, strict word 0x26         ; 0x4887
    sub ax, cx                       ; 0x488a
    push ax                          ; 0x488c
    db 0xe8, 0x79, 0x9f ; call 0xe809
    add sp, byte 4                   ; 0x4890
    mov ax, 0                        ; 0x4893
    push ax                          ; 0x4896
    mov ax, 0x248                    ; 0x4897
    imul word [bp + 0x4]             ; 0x489a
    add ax, 0x5bf4                   ; 0x489d
    push ax                          ; 0x48a0
    db 0xe8, 0xaa, 0x9f ; call 0xe84e
    add sp, byte 4                   ; 0x48a4
    mov ax, 0xc2                     ; 0x48a7
    push ax                          ; 0x48aa
    mov ax, 0xb3                     ; 0x48ab
    push ax                          ; 0x48ae
    db 0xe8, 0x71, 0x9f ; call 0xe823
    add sp, byte 4                   ; 0x48b2
    lea ax, word [bp - 0x0036]       ; 0x48b5
    push ax                          ; 0x48b8
    mov ax, 0x248                    ; 0x48b9
    imul word [bp + 0x4]             ; 0x48bc
    mov bx, ax                       ; 0x48bf
    push word [bx + 0x5c0a]          ; 0x48c1
    push word [bx + 0x5c08]          ; 0x48c5
    call 0xb1db                      ; 0x48c9
    add sp, byte 6                   ; 0x48cc
    mov ax, word [bp - 0x0006]       ; 0x48cf
    add ax, strict word 0xc          ; 0x48d2
    push ax                          ; 0x48d5
    lea ax, word [bp - 0x0036]       ; 0x48d6
    push ax                          ; 0x48d9
    db 0xe8, 0xb3, 0xb1 ; call 0xfa90
    pop cx                           ; 0x48dd
    mov cx, 6                        ; 0x48de
    imul cx                          ; 0x48e1
    add ax, strict word 0x12         ; 0x48e3
    mov cx, data_0002                ; 0x48e6
    cwd                              ; 0x48e9
    idiv cx                          ; 0x48ea
    mov cx, ax                       ; 0x48ec
    mov ax, word [bp - 0x0004]       ; 0x48ee
    add ax, strict word 0x26         ; 0x48f1
    sub ax, cx                       ; 0x48f4
    push ax                          ; 0x48f6
    db 0xe8, 0x0f, 0x9f ; call 0xe809
    add sp, byte 4                   ; 0x48fa
    mov ax, 0                        ; 0x48fd
    push ax                          ; 0x4900
    lea ax, word [bp - 0x0036]       ; 0x4901
    push ax                          ; 0x4904
    db 0xe8, 0x46, 0x9f ; call 0xe84e
    add sp, byte 4                   ; 0x4908
    lea ax, word [bp - 0x0036]       ; 0x490b
    push ax                          ; 0x490e
    push word [bp + 0x6]             ; 0x490f
    db 0xe8, 0x26, 0x6c ; call 0xb53b
    add sp, byte 4                   ; 0x4915
    mov ax, 0xc2                     ; 0x4918
    push ax                          ; 0x491b
    mov ax, 0x1a                     ; 0x491c
    push ax                          ; 0x491f
    db 0xe8, 0x00, 0x9f ; call 0xe823
    add sp, byte 4                   ; 0x4923
    mov ax, 0                        ; 0x4926
    push ax                          ; 0x4929
    lea ax, word [bp - 0x0036]       ; 0x492a
    push ax                          ; 0x492d
    db 0xe8, 0x1d, 0x9f ; call 0xe84e
    add sp, byte 4                   ; 0x4931
    lea ax, word [bp - 0x0036]       ; 0x4934
    push ax                          ; 0x4937
    mov ax, word [bp + 0x6]          ; 0x4938
    inc ax                           ; 0x493b
    push ax                          ; 0x493c
    db 0xe8, 0xfb, 0x6b ; call 0xb53b
    add sp, byte 4                   ; 0x4940
    lea ax, word [bp - 0x0036]       ; 0x4943
    push ax                          ; 0x4946
    push word [bp + 0x8]             ; 0x4947
    mov ax, 1                        ; 0x494a
    push ax                          ; 0x494d
    mov ax, 0xa                      ; 0x494e
    push ax                          ; 0x4951
    mov ax, word [bp - 0x0006]       ; 0x4952
    add ax, strict word 0x17         ; 0x4955
    push ax                          ; 0x4958
    mov ax, word [bp - 0x0004]       ; 0x4959
    add ax, strict word 8            ; 0x495c
    push ax                          ; 0x495f
    db 0xe8, 0x5e, 0x77 ; call 0xc0c1
    add sp, byte 0x0c                ; 0x4963
    lea ax, word [bp - 0x0036]       ; 0x4966
    push ax                          ; 0x4969
    mov ax, word [bp + 0x6]          ; 0x496a
    inc ax                           ; 0x496d
    inc ax                           ; 0x496e
    push ax                          ; 0x496f
    db 0xe8, 0xc8, 0x6b ; call 0xb53b
    add sp, byte 4                   ; 0x4973
    lea ax, word [bp - 0x0036]       ; 0x4976
    push ax                          ; 0x4979
    push word [bp + 0xa]             ; 0x497a
    mov ax, 1                        ; 0x497d
    push ax                          ; 0x4980
    mov ax, 0xa                      ; 0x4981
    push ax                          ; 0x4984
    mov ax, word [bp - 0x0006]       ; 0x4985
    add ax, strict word 0x27         ; 0x4988
    push ax                          ; 0x498b
    mov ax, word [bp - 0x0004]       ; 0x498c
    add ax, strict word 8            ; 0x498f
    push ax                          ; 0x4992
    db 0xe8, 0x2b, 0x77 ; call 0xc0c1
    add sp, byte 0x0c                ; 0x4996
    mov ax, word [bp + 0xe]          ; 0x4999
    inc ax                           ; 0x499c
    inc ax                           ; 0x499d
    inc ax                           ; 0x499e
    cmp ax, word [bp + 0xc]          ; 0x499f
    jle short @..api_idx_0038_3.l2   ; 0x49a2
    mov ax, word [bp + 0xc]          ; 0x49a4
    dec ax                           ; 0x49a7
    dec ax                           ; 0x49a8
    dec ax                           ; 0x49a9
    mov word [bp + 0xe], ax          ; 0x49aa
@..api_idx_0038_3.l2:
    mov ax, 0                        ; 0x49ad
    cmp word [bp + 0xe], byte 0      ; 0x49b0
    jle short @..api_idx_0038_3.l3   ; 0x49b4
    mov ax, word [bp + 0xe]          ; 0x49b6
@..api_idx_0038_3.l3:
    mov word [bp - 0x0016], ax       ; 0x49b9
    mov word [bp - 0x0020], 0xffff   ; 0x49bc
    mov word [data_9ca6], 0xffff     ; 0x49c1
    push word [bp - 0x0022]          ; 0x49c7
    push word [bp - 0x0020]          ; 0x49ca
    push ax                          ; 0x49cd
    mov ax, 7                        ; 0x49ce
    push ax                          ; 0x49d1
    mov ax, 0x18                     ; 0x49d2
    push ax                          ; 0x49d5
    mov ax, word [bp - 0x0006]       ; 0x49d6
