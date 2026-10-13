api_idx_000e:
    mov ax, 0xfff2                   ; 0x0704
    call aztec_csav                  ; 0x0707
    mov bx, word [bp + 0xe]          ; 0x070a
    mov byte [bx], 0                 ; 0x070d
    mov ax, word [bp + 0x4]          ; 0x0710
    shl ax, 1                        ; 0x0713
    mov bx, ax                       ; 0x0715
    mov bx, word [bx - 0x7b7e]       ; 0x0717
    cmp byte [bx + 0x19f], 0xff      ; 0x071b
    jne short @..api_idx_000e.l1     ; 0x0720
    ret                              ; 0x0722
@..api_idx_000e.l1:
    mov al, byte [bx + 0x19f]        ; 0x0723
    cbw                              ; 0x0727
    mov word [bp - 0x0002], ax       ; 0x0728
    mov word [bp - 0x000e], 0        ; 0x072b
    mov cx, 0x15e                    ; 0x0730
    imul cx                          ; 0x0733
    push ax                          ; 0x0735
    mov ax, 3                        ; 0x0736
    imul word [bp + 0x8]             ; 0x0739
    add ax, word [bp + 0xa]          ; 0x073c
    mov bx, ax                       ; 0x073f
    mov al, byte [bx - 0x7bd0]       ; 0x0741
    sub ah, ah                       ; 0x0745
    mov cx, ax                       ; 0x0747
    pop ax                           ; 0x0749
    add ax, cx                       ; 0x074a
    mov bx, ax                       ; 0x074c
    mov al, byte [bx + 0x6a1a]       ; 0x074e
    sub ah, ah                       ; 0x0752
    mov word [bp - 0x0004], ax       ; 0x0754
    jmp near @..api_idx_000e.l15     ; 0x0757
@..api_idx_000e.l2:
    mov ax, 0x2c                     ; 0x075a
    imul word [bp + 0x6]             ; 0x075d
    mov si, ax                       ; 0x0760
    mov ax, word [bp + 0x4]          ; 0x0762
    shl ax, 1                        ; 0x0765
    mov bx, ax                       ; 0x0767
    mov bx, word [bx - 0x7b7e]       ; 0x0769
    cmp byte [bx + si + 0x22], 2     ; 0x076d
    je short @..api_idx_000e.l3      ; 0x0771
    cmp byte [bx + si + 0x11], 0     ; 0x0773
    ja short @..api_idx_000e.l3      ; 0x0777
    cmp byte [bx + si + 0x10], 0     ; 0x0779
    jbe short @..api_idx_000e.l4     ; 0x077d
@..api_idx_000e.l3:
    mov ax, 0x5a                     ; 0x077f
    imul word [bp + 0x8]             ; 0x0782
    push ax                          ; 0x0785
    mov ax, 0x1e                     ; 0x0786
    imul word [bp + 0xa]             ; 0x0789
    mov cx, ax                       ; 0x078c
    pop ax                           ; 0x078e
    add ax, cx                       ; 0x078f
    push ax                          ; 0x0791
    mov ax, 3                        ; 0x0792
    imul word [bp - 0x0004]          ; 0x0795
    mov cx, ax                       ; 0x0798
    pop ax                           ; 0x079a
    add ax, cx                       ; 0x079b
    mov bx, ax                       ; 0x079d
    mov al, byte [bx - 0x7cde]       ; 0x079f
    sub ah, ah                       ; 0x07a3
    mov word [bp - 0x0006], ax       ; 0x07a5
    mov ax, 0x15e                    ; 0x07a8
    imul word [bp - 0x0002]          ; 0x07ab
    mov cx, ax                       ; 0x07ae
    mov ax, word [bp - 0x0006]       ; 0x07b0
    add cx, ax                       ; 0x07b3
    mov bx, cx                       ; 0x07b5
    mov al, byte [bx + 0x6a40]       ; 0x07b7
    sub ah, ah                       ; 0x07bb
    mov word [bp - 0x0008], ax       ; 0x07bd
    jmp near @..api_idx_000e.l11     ; 0x07c0
@..api_idx_000e.l4:
    mov ax, 0x5a                     ; 0x07c3
    imul word [bp + 0x8]             ; 0x07c6
    push ax                          ; 0x07c9
    mov ax, 0x1e                     ; 0x07ca
    imul word [bp + 0xa]             ; 0x07cd
    mov cx, ax                       ; 0x07d0
    pop ax                           ; 0x07d2
    add ax, cx                       ; 0x07d3
    push ax                          ; 0x07d5
    mov ax, 3                        ; 0x07d6
    imul word [bp - 0x0004]          ; 0x07d9
    mov cx, ax                       ; 0x07dc
    pop ax                           ; 0x07de
    add ax, cx                       ; 0x07df
    mov bx, ax                       ; 0x07e1
    mov al, byte [bx - 0x7cdd]       ; 0x07e3
    sub ah, ah                       ; 0x07e7
    mov word [bp - 0x0008], ax       ; 0x07e9
    mov al, byte [bx - 0x7cdc]       ; 0x07ec
    sub ah, ah                       ; 0x07f0
    mov word [bp - 0x000a], ax       ; 0x07f2
    cmp word [bp + 0xc], byte 0      ; 0x07f5
    je short @..api_idx_000e.l5      ; 0x07f9
    dec word [bp - 0x000a]           ; 0x07fb
@..api_idx_000e.l5:
    cmp word [bp - 0x000a], byte 0   ; 0x07fe
    jle short @..api_idx_000e.l6     ; 0x0802
    jmp near @..api_idx_000e.l10     ; 0x0804
@..api_idx_000e.l6:
    mov al, byte [bx - 0x7cde]       ; 0x0807
    sub ah, ah                       ; 0x080b
    mov word [bp - 0x0006], ax       ; 0x080d
    inc word [bp - 0x0008]           ; 0x0810
    mov ax, 0x15e                    ; 0x0813
    imul word [bp - 0x0002]          ; 0x0816
    mov cx, ax                       ; 0x0819
    mov ax, word [bp - 0x0006]       ; 0x081b
    add cx, ax                       ; 0x081e
    mov bx, cx                       ; 0x0820
    mov al, byte [bx + 0x6a40]       ; 0x0822
    sub ah, ah                       ; 0x0826
    push ax                          ; 0x0828
    mov al, byte [bx + 0x6a4a]       ; 0x0829
    sub ah, ah                       ; 0x082d
    mov cx, ax                       ; 0x082f
    pop ax                           ; 0x0831
    add ax, cx                       ; 0x0832
    dec ax                           ; 0x0834
    cmp ax, word [bp - 0x0008]       ; 0x0835
    jl short @..api_idx_000e.l7      ; 0x0838
    jmp near @..api_idx_000e.l9      ; 0x083a
@..api_idx_000e.l7:
    mov ax, 3                        ; 0x083d
    imul word [bp + 0x8]             ; 0x0840
    add ax, word [bp + 0xa]          ; 0x0843
    mov bx, ax                       ; 0x0846
    cmp byte [bx - 0x7bd0], 0        ; 0x0848
    je short @..api_idx_000e.l8      ; 0x084d
    mov byte [bx - 0x7bd0], 0        ; 0x084f
    mov ax, 0                        ; 0x0854
    push ax                          ; 0x0857
    push word [bp + 0xa]             ; 0x0858
    push word [bp + 0x8]             ; 0x085b
    push word [bp + 0x4]             ; 0x085e
    call api_idx_000a_2              ; 0x0861
    add sp, byte 8                   ; 0x0864
    push word [bp + 0xe]             ; 0x0867
    mov ax, 0                        ; 0x086a
    push ax                          ; 0x086d
    push word [bp + 0xa]             ; 0x086e
    push word [bp + 0x8]             ; 0x0871
    push word [bp + 0x6]             ; 0x0874
    push word [bp + 0x4]             ; 0x0877
    call api_idx_000e                ; 0x087a
    add sp, byte 0x0c                ; 0x087d
    ret                              ; 0x0880
@..api_idx_000e.l8:
    mov ax, 0x15e                    ; 0x0881
    imul word [bp - 0x0002]          ; 0x0884
    add ax, word [bp - 0x0004]       ; 0x0887
    mov bx, ax                       ; 0x088a
    mov al, byte [bx + 0x6a2c]       ; 0x088c
    sub ah, ah                       ; 0x0890
    push ax                          ; 0x0892
    call ds_app_09f0                 ; 0x0893
    pop cx                           ; 0x0896
    push ax                          ; 0x0897
    mov ax, 0x15e                    ; 0x0898
    imul word [bp - 0x0002]          ; 0x089b
    add ax, word [bp - 0x0004]       ; 0x089e
    mov bx, ax                       ; 0x08a1
    mov al, byte [bx + 0x6a22]       ; 0x08a3
    sub ah, ah                       ; 0x08a7
    mov cx, ax                       ; 0x08a9
    pop ax                           ; 0x08ab
    add ax, cx                       ; 0x08ac
    mov word [bp - 0x0006], ax       ; 0x08ae
    mov al, byte [bp - 0x0006]       ; 0x08b1
    push ax                          ; 0x08b4
    mov ax, 0x5a                     ; 0x08b5
    imul word [bp + 0x8]             ; 0x08b8
    mov cx, ax                       ; 0x08bb
    mov ax, 0x1e                     ; 0x08bd
    imul word [bp + 0xa]             ; 0x08c0
    mov dx, ax                       ; 0x08c3
    add cx, ax                       ; 0x08c5
    mov ax, 3                        ; 0x08c7
    imul word [bp - 0x0004]          ; 0x08ca
    mov dx, ax                       ; 0x08cd
    add cx, ax                       ; 0x08cf
    mov bx, cx                       ; 0x08d1
    pop ax                           ; 0x08d3
    mov byte [bx - 0x7cde], al       ; 0x08d4
    mov ax, 0x15e                    ; 0x08d8
    imul word [bp - 0x0002]          ; 0x08db
    add ax, word [bp - 0x0006]       ; 0x08de
    mov bx, ax                       ; 0x08e1
    mov al, byte [bx + 0x6a40]       ; 0x08e3
    sub ah, ah                       ; 0x08e7
    mov word [bp - 0x0008], ax       ; 0x08e9
@..api_idx_000e.l9:
    mov al, byte [bp - 0x0008]       ; 0x08ec
    push ax                          ; 0x08ef
    mov ax, 0x5a                     ; 0x08f0
    imul word [bp + 0x8]             ; 0x08f3
    mov cx, ax                       ; 0x08f6
    mov ax, 0x1e                     ; 0x08f8
    imul word [bp + 0xa]             ; 0x08fb
    mov dx, ax                       ; 0x08fe
    add cx, ax                       ; 0x0900
    mov ax, 3                        ; 0x0902
    imul word [bp - 0x0004]          ; 0x0905
    mov dx, ax                       ; 0x0908
    add cx, ax                       ; 0x090a
    mov bx, cx                       ; 0x090c
    pop ax                           ; 0x090e
    mov byte [bx - 0x7cdd], al       ; 0x090f
    mov ax, 0x15e                    ; 0x0913
    imul word [bp - 0x0002]          ; 0x0916
    mov cx, word [bp - 0x0008]       ; 0x0919
    shl cx, 1                        ; 0x091c
    shl cx, 1                        ; 0x091e
    add ax, cx                       ; 0x0920
    mov bx, ax                       ; 0x0922
    mov al, byte [bx + 0x6ac2]       ; 0x0924
    sub ah, ah                       ; 0x0928
    push ax                          ; 0x092a
    call ds_app_09f0                 ; 0x092b
    pop cx                           ; 0x092e
    push ax                          ; 0x092f
    mov ax, 0x15e                    ; 0x0930
    imul word [bp - 0x0002]          ; 0x0933
    mov cx, word [bp - 0x0008]       ; 0x0936
    shl cx, 1                        ; 0x0939
    shl cx, 1                        ; 0x093b
    add ax, cx                       ; 0x093d
    mov bx, ax                       ; 0x093f
    mov al, byte [bx + 0x6ac1]       ; 0x0941
    sub ah, ah                       ; 0x0945
    mov cx, ax                       ; 0x0947
    pop ax                           ; 0x0949
    add ax, cx                       ; 0x094a
    mov word [bp - 0x000a], ax       ; 0x094c
@..api_idx_000e.l10:
    mov al, byte [bp - 0x000a]       ; 0x094f
    push ax                          ; 0x0952
    mov ax, 0x5a                     ; 0x0953
    imul word [bp + 0x8]             ; 0x0956
    mov cx, ax                       ; 0x0959
    mov ax, 0x1e                     ; 0x095b
    imul word [bp + 0xa]             ; 0x095e
    mov dx, ax                       ; 0x0961
    add cx, ax                       ; 0x0963
    mov ax, 3                        ; 0x0965
    imul word [bp - 0x0004]          ; 0x0968
    mov dx, ax                       ; 0x096b
    add cx, ax                       ; 0x096d
    mov bx, cx                       ; 0x096f
    pop ax                           ; 0x0971
    mov byte [bx - 0x7cdc], al       ; 0x0972
@..api_idx_000e.l11:
    mov ax, 0x15e                    ; 0x0976
    imul word [bp - 0x0002]          ; 0x0979
    mov cx, word [bp - 0x0008]       ; 0x097c
    shl cx, 1                        ; 0x097f
    shl cx, 1                        ; 0x0981
    add ax, cx                       ; 0x0983
    mov bx, ax                       ; 0x0985
    mov al, byte [bx + 0x6ac0]       ; 0x0987
    mov bx, word [bp + 0xe]          ; 0x098b
    mov si, word [bp - 0x000e]       ; 0x098e
    mov byte [bx + si], al           ; 0x0991
    mov ax, word [bp + 0x4]          ; 0x0993
    shl ax, 1                        ; 0x0996
    mov bx, ax                       ; 0x0998
    mov bx, word [bx - 0x7b7e]       ; 0x099a
    cmp byte [bx + 0x19e], 0x79      ; 0x099e
    je short @..api_idx_000e.l12     ; 0x09a3
    mov al, byte [bx + 0x19e]        ; 0x09a5
    sub ah, ah                       ; 0x09a9
    cmp ax, 0x8d                     ; 0x09ab
    jne short @..api_idx_000e.l13    ; 0x09ae
@..api_idx_000e.l12:
    inc word [bp - 0x000e]           ; 0x09b0
    mov bx, word [bp + 0xe]          ; 0x09b3
    mov si, word [bp - 0x000e]       ; 0x09b6
    mov al, byte [bx + si - 0x0001]  ; 0x09b9
    mov byte [bx + si], al           ; 0x09bc
    mov ax, 0x15e                    ; 0x09be
    imul word [bp - 0x0002]          ; 0x09c1
    mov bx, ax                       ; 0x09c4
    mov al, byte [bx + 0x6b76]       ; 0x09c6
    mov bx, word [bp + 0xe]          ; 0x09ca
    mov si, word [bp - 0x000e]       ; 0x09cd
    mov byte [bx + si - 0x0001], al  ; 0x09d0
@..api_idx_000e.l13:
    mov bx, word [bp + 0xe]          ; 0x09d3
    mov si, word [bp - 0x000e]       ; 0x09d6
    cmp byte [bx + si], 0            ; 0x09d9
    je short @..api_idx_000e.l14     ; 0x09dc
    inc word [bp - 0x000e]           ; 0x09de
@..api_idx_000e.l14:
    inc word [bp - 0x0004]           ; 0x09e1
@..api_idx_000e.l15:
    mov ax, 0x15e                    ; 0x09e4
    imul word [bp - 0x0002]          ; 0x09e7
    push ax                          ; 0x09ea
    mov ax, 3                        ; 0x09eb
    imul word [bp + 0x8]             ; 0x09ee
    add ax, word [bp + 0xa]          ; 0x09f1
    mov bx, ax                       ; 0x09f4
    mov al, byte [bx - 0x7bd0]       ; 0x09f6
    sub ah, ah                       ; 0x09fa
    mov cx, ax                       ; 0x09fc
    pop ax                           ; 0x09fe
    add ax, cx                       ; 0x09ff
    mov bx, ax                       ; 0x0a01
    mov al, byte [bx + 0x6a1a]       ; 0x0a03
    sub ah, ah                       ; 0x0a07
    push ax                          ; 0x0a09
    mov al, byte [bx + 0x6a1e]       ; 0x0a0a
    sub ah, ah                       ; 0x0a0e
    mov cx, ax                       ; 0x0a10
    pop ax                           ; 0x0a12
    add ax, cx                       ; 0x0a13
    cmp ax, word [bp - 0x0004]       ; 0x0a15
    jle short @..api_idx_000e.l16    ; 0x0a18
    jmp near @..api_idx_000e.l2      ; 0x0a1a
@..api_idx_000e.l16:
    mov bx, word [bp + 0xe]          ; 0x0a1d
    mov si, word [bp - 0x000e]       ; 0x0a20
    mov byte [bx + si], 0            ; 0x0a23
    ret                              ; 0x0a26
