api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x4793
    call ds_dispatch_f40b            ; 0x4796
    mov bx, word [bp + 0x8]          ; 0x4799
    mov al, byte [bx + 0x44]         ; 0x479c
    push ax                          ; 0x479f
    mov ax, 0x248                    ; 0x47a0
    imul word [bp + 0x4]             ; 0x47a3
    mov cx, ax                       ; 0x47a6
    mov ax, 0x12                     ; 0x47a8
    imul word [bp + 0x6]             ; 0x47ab
    mov dx, ax                       ; 0x47ae
    add cx, ax                       ; 0x47b0
    mov bx, cx                       ; 0x47b2
    pop ax                           ; 0x47b4
    mov byte [bx + 0x5d31], al       ; 0x47b5
    mov word [bp - 0x0004], 0        ; 0x47b9
@..api_idx_0004_8.l1:
    mov bx, word [bp + 0x8]          ; 0x47be
    mov si, word [bp - 0x0004]       ; 0x47c1
    mov al, byte [bx + si + 0x2a]    ; 0x47c4
    push ax                          ; 0x47c7
    mov ax, 0x248                    ; 0x47c8
    imul word [bp + 0x4]             ; 0x47cb
    mov cx, ax                       ; 0x47ce
    mov ax, 0x12                     ; 0x47d0
    imul word [bp + 0x6]             ; 0x47d3
    mov dx, ax                       ; 0x47d6
    add cx, ax                       ; 0x47d8
    add cx, si                       ; 0x47da
    mov bx, cx                       ; 0x47dc
    pop ax                           ; 0x47de
    mov byte [bx + 0x5d28], al       ; 0x47df
    inc word [bp - 0x0004]           ; 0x47e3
    mov ax, word [bp - 0x0004]       ; 0x47e6
    cmp ax, strict word 8            ; 0x47e9
    jl short @..api_idx_0004_8.l1    ; 0x47ec
    mov ax, 0x248                    ; 0x47ee
    imul word [bp + 0x4]             ; 0x47f1
    mov bx, ax                       ; 0x47f4
    mov al, byte [bx + 0x5d8d]       ; 0x47f6
    sub ah, ah                       ; 0x47fa
    mov cx, 5                        ; 0x47fc
    cwd                              ; 0x47ff
    idiv cx                          ; 0x4800
    mov word [bp - 0x0004], ax       ; 0x4802
    cmp byte [bx + 0x5e2d], 0xc      ; 0x4805
    je short @..api_idx_0004_8.l2    ; 0x480a
    cmp byte [bx + 0x5e2d], 0xd      ; 0x480c
    jne short @..api_idx_0004_8.l3   ; 0x4811
@..api_idx_0004_8.l2:
    mov ax, 0x12                     ; 0x4813
    imul word [bp + 0x6]             ; 0x4816
    add bx, ax                       ; 0x4819
    mov al, byte [bx + 0x5d2e]       ; 0x481b
    sub ah, ah                       ; 0x481f
    mov cx, ax                       ; 0x4821
    mov ax, word [bp - 0x0004]       ; 0x4823
    add cx, ax                       ; 0x4826
    mov ax, cx                       ; 0x4828
    add ax, strict word 5            ; 0x482a
    mov byte [bx + 0x5d2e], al       ; 0x482d
    jmp short @..api_idx_0004_8.l4   ; 0x4831
@..api_idx_0004_8.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x4833
    jle short @..api_idx_0004_8.l4   ; 0x4837
    mov ax, 0x248                    ; 0x4839
    imul word [bp + 0x4]             ; 0x483c
    push ax                          ; 0x483f
    mov ax, 0x12                     ; 0x4840
    imul word [bp + 0x6]             ; 0x4843
    mov cx, ax                       ; 0x4846
    pop ax                           ; 0x4848
    add ax, cx                       ; 0x4849
    mov bx, ax                       ; 0x484b
    mov al, byte [bx + 0x5d2e]       ; 0x484d
    sub ah, ah                       ; 0x4851
    add ax, word [bp - 0x0004]       ; 0x4853
    mov byte [bx + 0x5d2e], al       ; 0x4856
@..api_idx_0004_8.l4:
    mov bx, word [bp + 0x8]          ; 0x485a
    mov al, byte [bx + 0x45]         ; 0x485d
    push ax                          ; 0x4860
    mov ax, 0x248                    ; 0x4861
    imul word [bp + 0x4]             ; 0x4864
    mov cx, ax                       ; 0x4867
    mov ax, 0x12                     ; 0x4869
    imul word [bp + 0x6]             ; 0x486c
    mov dx, ax                       ; 0x486f
    add cx, ax                       ; 0x4871
    mov bx, cx                       ; 0x4873
    pop ax                           ; 0x4875
    mov byte [bx + 0x5d30], al       ; 0x4876
    mov bx, word [bp + 0x8]          ; 0x487a
    cmp byte [bx + 0x38], 4          ; 0x487d
    jne short @..api_idx_0004_8.l6   ; 0x4881
    mov al, byte [bx + 0x41]         ; 0x4883
    cbw                              ; 0x4886
    mov cx, 5                        ; 0x4887
    imul cx                          ; 0x488a
    mov cx, ax                       ; 0x488c
    mov ax, 0                        ; 0x488e
    sub ax, cx                       ; 0x4891
    push ax                          ; 0x4893
    mov ax, 0x248                    ; 0x4894
    imul word [bp + 0x4]             ; 0x4897
    mov cx, ax                       ; 0x489a
    mov ax, 0x12                     ; 0x489c
    imul word [bp + 0x6]             ; 0x489f
    mov dx, ax                       ; 0x48a2
    add cx, ax                       ; 0x48a4
    mov bx, cx                       ; 0x48a6
    pop ax                           ; 0x48a8
    mov byte [bx + 0x5d32], al       ; 0x48a9
    mov ax, 0x248                    ; 0x48ad
    imul word [bp + 0x4]             ; 0x48b0
    mov bx, ax                       ; 0x48b3
    cmp byte [bx + 0x5e2d], 4        ; 0x48b5
    jne short @..api_idx_0004_8.l5   ; 0x48ba
    mov bx, cx                       ; 0x48bc
    add byte [bx + 0x5d32], 0xf1     ; 0x48be
    mov al, byte [bx + 0x5d2e]       ; 0x48c3
    sub ah, ah                       ; 0x48c7
    shl ax, 1                        ; 0x48c9
    mov byte [bx + 0x5d2e], al       ; 0x48cb
@..api_idx_0004_8.l5:
    jmp near @..api_idx_0004_8.l12   ; 0x48cf
@..api_idx_0004_8.l6:
    mov ax, 0x248                    ; 0x48d2
    imul word [bp + 0x4]             ; 0x48d5
    push ax                          ; 0x48d8
    mov ax, 0x12                     ; 0x48d9
    imul word [bp + 0x6]             ; 0x48dc
    mov cx, ax                       ; 0x48df
    pop ax                           ; 0x48e1
    add ax, cx                       ; 0x48e2
    mov bx, ax                       ; 0x48e4
    mov byte [bx + 0x5d32], 0        ; 0x48e6
    cmp word [bp + 0x6], byte 0      ; 0x48eb
    jne short @..api_idx_0004_8.l9   ; 0x48ef
    mov ax, 0x248                    ; 0x48f1
    imul word [bp + 0x4]             ; 0x48f4
    mov bx, ax                       ; 0x48f7
    mov al, byte [bx + 0x5d32]       ; 0x48f9
    cbw                              ; 0x48fd
    mov cx, 0                        ; 0x48fe
    cmp byte [bx + 0x5d68], 0xf      ; 0x4901
    jbe short @..api_idx_0004_8.l7   ; 0x4906
    mov cx, 5                        ; 0x4908
@..api_idx_0004_8.l7:
    sub ax, cx                       ; 0x490b
    mov byte [bx + 0x5d32], al       ; 0x490d
    cbw                              ; 0x4911
    mov cx, 0                        ; 0x4912
    cmp byte [bx + 0x5d68], 0x11     ; 0x4915
    jbe short @..api_idx_0004_8.l8   ; 0x491a
    mov cx, 5                        ; 0x491c
@..api_idx_0004_8.l8:
    sub ax, cx                       ; 0x491f
    mov byte [bx + 0x5d32], al       ; 0x4921
    jmp short @..api_idx_0004_8.l11  ; 0x4925
@..api_idx_0004_8.l9:
    mov ax, 0x248                    ; 0x4927
    imul word [bp + 0x4]             ; 0x492a
    mov bx, ax                       ; 0x492d
    mov al, byte [bx + 0x5d44]       ; 0x492f
    cbw                              ; 0x4933
    mov cx, 0                        ; 0x4934
    cmp byte [bx + 0x5d68], 0x11     ; 0x4937
    jbe short @..api_idx_0004_8.l10  ; 0x493c
    mov cx, 5                        ; 0x493e
@..api_idx_0004_8.l10:
    sub ax, cx                       ; 0x4941
    mov byte [bx + 0x5d44], al       ; 0x4943
@..api_idx_0004_8.l11:
    mov ax, 0x248                    ; 0x4947
    imul word [bp + 0x4]             ; 0x494a
    push ax                          ; 0x494d
    mov ax, 0x12                     ; 0x494e
    imul word [bp + 0x6]             ; 0x4951
    mov cx, ax                       ; 0x4954
    pop ax                           ; 0x4956
    add ax, cx                       ; 0x4957
    mov bx, ax                       ; 0x4959
    mov al, byte [bx + 0x5d32]       ; 0x495b
    cbw                              ; 0x495f
    push ax                          ; 0x4960
    mov bx, word [bp + 0x8]          ; 0x4961
    mov al, byte [bx + 0x41]         ; 0x4964
    cbw                              ; 0x4967
    mov cx, 5                        ; 0x4968
    imul cx                          ; 0x496b
    mov cx, ax                       ; 0x496d
    pop ax                           ; 0x496f
    sub ax, cx                       ; 0x4970
    push ax                          ; 0x4972
    mov ax, 0x248                    ; 0x4973
    imul word [bp + 0x4]             ; 0x4976
    mov cx, ax                       ; 0x4979
    mov ax, 0x12                     ; 0x497b
    imul word [bp + 0x6]             ; 0x497e
    mov dx, ax                       ; 0x4981
    add cx, ax                       ; 0x4983
    mov bx, cx                       ; 0x4985
    pop ax                           ; 0x4987
    mov byte [bx + 0x5d32], al       ; 0x4988
@..api_idx_0004_8.l12:
    mov si, word [bp + 0x8]          ; 0x498c
    add si, byte 0x1e                ; 0x498f
    mov ax, 0x248                    ; 0x4992
    imul word [bp + 0x4]             ; 0x4995
    push ax                          ; 0x4998
    mov ax, 0x12                     ; 0x4999
    imul word [bp + 0x6]             ; 0x499c
    mov cx, ax                       ; 0x499f
    pop ax                           ; 0x49a1
    add ax, cx                       ; 0x49a2
    mov di, ax                       ; 0x49a4
    add ax, 0x5d24                   ; 0x49a6
    mov di, ax                       ; 0x49a9
    mov cx, ds                       ; 0x49ab
    mov es, cx                       ; 0x49ad
    movsw                            ; 0x49af
    movsw                            ; 0x49b0
    cmp word [bp + 0x6], byte 0      ; 0x49b1
    jne short @..api_idx_0004_8.l16  ; 0x49b5
    mov ax, 0x248                    ; 0x49b7
    imul word [bp + 0x4]             ; 0x49ba
    mov bx, ax                       ; 0x49bd
    cmp byte [bx + 0x5d64], 0xf      ; 0x49bf
    jbe short @..api_idx_0004_8.l13  ; 0x49c4
    mov ax, 1                        ; 0x49c6
    jmp short @..api_idx_0004_8.l14  ; 0x49c9
@..api_idx_0004_8.l13:
    mov ax, 0                        ; 0x49cb
@..api_idx_0004_8.l14:
    add word [bx + 0x5d24], ax       ; 0x49ce
    mov ax, 0                        ; 0x49d2
    cmp byte [bx + 0x5d64], 0x11     ; 0x49d5
    jbe short @..api_idx_0004_8.l15  ; 0x49da
    mov ax, 1                        ; 0x49dc
@..api_idx_0004_8.l15:
    add word [bx + 0x5d24], ax       ; 0x49df
@..api_idx_0004_8.l16:
    mov bx, word [bp + 0x8]          ; 0x49e3
    mov al, byte [bx + 0x46]         ; 0x49e6
    push ax                          ; 0x49e9
    mov ax, 0x248                    ; 0x49ea
    imul word [bp + 0x4]             ; 0x49ed
    mov cx, ax                       ; 0x49f0
    mov ax, 0x12                     ; 0x49f2
    imul word [bp + 0x6]             ; 0x49f5
    mov dx, ax                       ; 0x49f8
    add cx, ax                       ; 0x49fa
    mov bx, cx                       ; 0x49fc
    pop ax                           ; 0x49fe
    mov byte [bx + 0x5d33], al       ; 0x49ff
    mov bx, word [bp + 0x8]          ; 0x4a03
    mov al, byte [bx + 0x42]         ; 0x4a06
    mov bx, cx                       ; 0x4a09
    mov byte [bx + 0x5d34], al       ; 0x4a0b
    mov bx, word [bp + 0x8]          ; 0x4a0f
    mov al, byte [bx + 0x43]         ; 0x4a12
    mov bx, cx                       ; 0x4a15
    mov byte [bx + 0x5d35], al       ; 0x4a17
    ret                              ; 0x4a1b
