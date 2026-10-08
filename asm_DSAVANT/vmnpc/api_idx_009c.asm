api_idx_009c:
    mov ax, 0xff64                   ; 0x677a
    db 0xe8, 0x8b, 0x8c ; call 0xf40b
    mov word [data_95a6], 0          ; 0x6780
    mov word [data_9d60], 0          ; 0x6786
    mov word [data_9d64], 0          ; 0x678c
    lea ax, word [bp - 0x0042]       ; 0x6792
    push ax                          ; 0x6795
    mov ax, 0x5e6                    ; 0x6796
    push ax                          ; 0x6799
    db 0xe8, 0x9e, 0x4d ; call 0xb53b
    add sp, byte 4                   ; 0x679d
    lea ax, word [bp - 0x004c]       ; 0x67a0
    push ax                          ; 0x67a3
    mov ax, 0x5e7                    ; 0x67a4
    push ax                          ; 0x67a7
    db 0xe8, 0x90, 0x4d ; call 0xb53b
    add sp, byte 4                   ; 0x67ab
    cmp word [data_91a2], byte 0     ; 0x67ae
    jle short @..api_idx_009c.l1     ; 0x67b3
    call loc_23d0                    ; 0x67b5
    mov ax, 1                        ; 0x67b8
    push ax                          ; 0x67bb
    push word [data_91a2]            ; 0x67bc
    call api_idx_0100                ; 0x67c0
    add sp, byte 4                   ; 0x67c3
    call loc_243b                    ; 0x67c6
@..api_idx_009c.l1:
    mov word [bp - 0x000c], 0        ; 0x67c9
@..api_idx_009c.l2:
    cmp word [data_93da], byte 0     ; 0x67ce
    jle short @..api_idx_009c.l3     ; 0x67d3
    cmp byte [0x91c3], 0             ; 0x67d5
    jbe short @..api_idx_009c.l3     ; 0x67da
    mov ax, 3                        ; 0x67dc
    push ax                          ; 0x67df
    db 0xe8, 0xc6, 0x4f ; call 0xb7a9
    pop cx                           ; 0x67e3
    test ax, ax                      ; 0x67e4
    jne short @..api_idx_009c.l3     ; 0x67e6
    push word [data_93da]            ; 0x67e8
    db 0xe8, 0xf1, 0x4f ; call 0xb7e0
    pop cx                           ; 0x67ef
@..api_idx_009c.l3:
    mov word [bp - 0x0002], 0        ; 0x67f0
@..api_idx_009c.l4:
    mov bx, word [bp - 0x0002]       ; 0x67f5
    cmp byte [bx - 0x6e46], 0        ; 0x67f8
    jbe short @..api_idx_009c.l6     ; 0x67fd
    mov al, byte [bx - 0x6e46]       ; 0x67ff
    sub ah, ah                       ; 0x6803
    push ax                          ; 0x6805
    push word [bp - 0x000c]          ; 0x6806
    call api_idx_0040                ; 0x6809
    add sp, byte 4                   ; 0x680c
    cmp ax, strict word 1            ; 0x680f
    jne short @..api_idx_009c.l6     ; 0x6812
    cmp word [data_95a6], byte 1     ; 0x6814
    jne short @..api_idx_009c.l5     ; 0x6819
    mov word [data_93dc], 1          ; 0x681b
    mov ax, 0                        ; 0x6821
    push ax                          ; 0x6824
    mov ax, 1                        ; 0x6825
    push ax                          ; 0x6828
    call api_idx_005e                ; 0x6829
    add sp, byte 4                   ; 0x682c
    mov word [data_843a], 0          ; 0x682f
    call loc_109f                    ; 0x6835
@..api_idx_009c.l5:
    ret                              ; 0x6838
@..api_idx_009c.l6:
    inc word [bp - 0x0002]           ; 0x6839
    mov ax, word [bp - 0x0002]       ; 0x683c
    cmp ax, strict word 8            ; 0x683f
    jl short @..api_idx_009c.l4      ; 0x6842
    mov word [bp - 0x0006], 0        ; 0x6844
@..api_idx_009c.l7:
    mov ax, word [bp - 0x0006]       ; 0x6849
    shl ax, 1                        ; 0x684c
    mov bx, ax                       ; 0x684e
    add bx, bp                       ; 0x6850
    mov word [bx - 0x002e], 0        ; 0x6852
    inc word [bp - 0x0006]           ; 0x6857
    mov ax, word [bp - 0x0006]       ; 0x685a
    cmp ax, strict word 9            ; 0x685d
    jle short @..api_idx_009c.l7     ; 0x6860
    mov word [bp - 0x0020], 1        ; 0x6862
    mov al, byte [data_91c7]         ; 0x6867
    sub ah, ah                       ; 0x686a
    mov bx, ax                       ; 0x686c
    mov al, byte [bx - 0x7622]       ; 0x686e
    cbw                              ; 0x6872
    mov word [bp - 0x000a], ax       ; 0x6873
    cmp byte [data_91c6], 0xff       ; 0x6876
    jne short @..api_idx_009c.l8     ; 0x687b
    add word [bp - 0x000a], byte 0x23 ; 0x687d
@..api_idx_009c.l8:
    cmp word [bp - 0x000a], byte 0xe7 ; 0x6881
    jge short @..api_idx_009c.l9     ; 0x6885
    mov word [bp - 0x0028], 1        ; 0x6887
    mov word [bp - 0x001c], 1        ; 0x688c
    jmp near @..api_idx_009c.l16     ; 0x6891
@..api_idx_009c.l9:
    cmp word [bp - 0x000a], byte 0x19 ; 0x6894
    jge short @..api_idx_009c.l10    ; 0x6898
    mov word [bp - 0x0028], 1        ; 0x689a
    mov word [bp - 0x0026], 1        ; 0x689f
    mov word [bp - 0x0024], 1        ; 0x68a4
    mov word [bp - 0x0022], 1        ; 0x68a9
    mov word [bp - 0x001e], 1        ; 0x68ae
    jmp short @..api_idx_009c.l16    ; 0x68b3
@..api_idx_009c.l10:
    cmp word [data_9136], byte 0x3c  ; 0x68b5
    jl short @..api_idx_009c.l11     ; 0x68ba
    cmp word [data_9136], byte 0x3e  ; 0x68bc
    jg short @..api_idx_009c.l11     ; 0x68c1
    mov word [bp - 0x0020], 0        ; 0x68c3
    jmp short @..api_idx_009c.l15    ; 0x68c8
@..api_idx_009c.l11:
    mov ax, word [data_9136]         ; 0x68ca
    cmp ax, strict word 0x2d         ; 0x68cd
    je short @..api_idx_009c.l12     ; 0x68d0
    cmp ax, strict word 0x4d         ; 0x68d2
    je short @..api_idx_009c.l12     ; 0x68d5
    cmp ax, strict word 0x51         ; 0x68d7
    je short @..api_idx_009c.l12     ; 0x68da
    cmp ax, strict word 0x53         ; 0x68dc
    jne short @..api_idx_009c.l13    ; 0x68df
@..api_idx_009c.l12:
    mov word [bp - 0x0020], 0        ; 0x68e1
    jmp short @..api_idx_009c.l14    ; 0x68e6
@..api_idx_009c.l13:
    mov word [bp - 0x002c], 1        ; 0x68e8
    mov word [bp - 0x002a], 1        ; 0x68ed
    mov word [bp - 0x0026], 1        ; 0x68f2
@..api_idx_009c.l14:
    mov word [bp - 0x002e], 1        ; 0x68f7
    mov word [bp - 0x0024], 1        ; 0x68fc
@..api_idx_009c.l15:
    mov word [bp - 0x0022], 1        ; 0x6901
    mov word [bp - 0x001e], 1        ; 0x6906
@..api_idx_009c.l16:
    mov word [bp - 0x001a], 0xffff   ; 0x690b
    mov word [bp - 0x000c], 0xffff   ; 0x6910
    mov ax, 3                        ; 0x6915
    push ax                          ; 0x6918
    call api_idx_0006                ; 0x6919
    pop cx                           ; 0x691c
    call api_idx_0054                ; 0x691d
    mov ax, 1                        ; 0x6920
    push ax                          ; 0x6923
    mov ax, 0x93                     ; 0x6924
    push ax                          ; 0x6927
    mov ax, 0xa0                     ; 0x6928
    push ax                          ; 0x692b
    lea ax, word [bp - 0x0042]       ; 0x692c
    push ax                          ; 0x692f
    call math_loc_0b30               ; 0x6930
    add sp, byte 8                   ; 0x6933
    mov ax, 0x16                     ; 0x6936
    push ax                          ; 0x6939
    mov ax, 0x9a                     ; 0x693a
    push ax                          ; 0x693d
    mov ax, 0xa0                     ; 0x693e
    push ax                          ; 0x6941
    lea ax, word [bp - 0x004c]       ; 0x6942
    push ax                          ; 0x6945
    call math_loc_0b30               ; 0x6946
    add sp, byte 8                   ; 0x6949
    lea ax, word [bp - 0x002e]       ; 0x694c
    push ax                          ; 0x694f
    mov ax, 1                        ; 0x6950
    push ax                          ; 0x6953
    mov ax, 0                        ; 0x6954
    push ax                          ; 0x6957
    mov ax, data_0002                ; 0x6958
    push ax                          ; 0x695b
    mov ax, 0xa                      ; 0x695c
    push ax                          ; 0x695f
    mov ax, 0x2a                     ; 0x6960
    push ax                          ; 0x6963
    mov ax, 6                        ; 0x6964
    push ax                          ; 0x6967
    mov ax, 0xa6                     ; 0x6968
    push ax                          ; 0x696b
    mov ax, 0xe7                     ; 0x696c
    push ax                          ; 0x696f
    mov ax, 9                        ; 0x6970
    push ax                          ; 0x6973
    mov ax, 3                        ; 0x6974
    push ax                          ; 0x6977
    mov ax, 0x5fa                    ; 0x6978
    push ax                          ; 0x697b
    call math_loc_1821               ; 0x697c
    add sp, byte 0x18                ; 0x697f
    mov word [bp - 0x0006], ax       ; 0x6982
    lea ax, word [bp - 0x009c]       ; 0x6985
    push ax                          ; 0x6989
    mov ax, word [bp - 0x0006]       ; 0x698a
    add ax, 0x5fa                    ; 0x698d
    push ax                          ; 0x6990
    db 0xe8, 0xa7, 0x4b ; call 0xb53b
    add sp, byte 4                   ; 0x6994
    mov ax, 0x1a                     ; 0x6997
    push ax                          ; 0x699a
    mov ax, data_0002                ; 0x699b
    push ax                          ; 0x699e
    mov ax, 0xa                      ; 0x699f
    push ax                          ; 0x69a2
    mov ax, 0x2a                     ; 0x69a3
    push ax                          ; 0x69a6
    mov ax, 6                        ; 0x69a7
    push ax                          ; 0x69aa
    mov ax, 0xa6                     ; 0x69ab
    push ax                          ; 0x69ae
    mov ax, 0xe7                     ; 0x69af
    push ax                          ; 0x69b2
    mov ax, 9                        ; 0x69b3
    push ax                          ; 0x69b6
    push word [data_9052]            ; 0x69b7
    lea ax, word [bp - 0x009c]       ; 0x69bb
    push ax                          ; 0x69bf
    call api_idx_000c_2              ; 0x69c0
    add sp, byte 0x14                ; 0x69c3
    mov ax, word [bp - 0x0006]       ; 0x69c6
    jmp near @..api_idx_009c.l17     ; 0x69c9
