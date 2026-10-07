api_idx_005e_2:
    mov ax, 0xffa2                   ; 0x57e1
    db 0xe8, 0x24, 0x9c ; call 0xf40b
    mov ax, word [bp + 0x6]          ; 0x57e7
    shl ax, 1                        ; 0x57ea
    mov bx, ax                       ; 0x57ec
    mov ax, word [bx - 0x6356]       ; 0x57ee
    mov cx, 0x100                    ; 0x57f2
    cwd                              ; 0x57f5
    idiv cx                          ; 0x57f6
    mov word [bp - 0x000a], ax       ; 0x57f8
    mov word [bp - 0x000c], dx       ; 0x57fb
    mov ax, 0x248                    ; 0x57fe
    imul word [bp + 0x4]             ; 0x5801
    push ax                          ; 0x5804
    mov ax, 0x78                     ; 0x5805
    imul word [bp - 0x000a]          ; 0x5808
    mov cx, ax                       ; 0x580b
    pop ax                           ; 0x580d
    add ax, cx                       ; 0x580e
    push ax                          ; 0x5810
    mov ax, 0xc                      ; 0x5811
    imul word [bp - 0x000c]          ; 0x5814
    mov cx, ax                       ; 0x5817
    pop ax                           ; 0x5819
    add ax, cx                       ; 0x581a
    mov bx, ax                       ; 0x581c
    mov ax, word [bx + 0x5c34]       ; 0x581e
    mov word [bp - 0x0008], ax       ; 0x5822
    mov ax, 0                        ; 0x5825
    push ax                          ; 0x5828
    push word [bp - 0x0008]          ; 0x5829
    lea ax, word [bp - 0x0054]       ; 0x582c
    push ax                          ; 0x582f
    mov ax, 1                        ; 0x5830
    push ax                          ; 0x5833
    db 0xe8, 0x05, 0x5e ; call 0xb63c
    add sp, byte 8                   ; 0x5837
    mov al, byte [bp - 0x0038]       ; 0x583a
    sub ah, ah                       ; 0x583d
    push ax                          ; 0x583f
    mov al, byte [bp - 0x0037]       ; 0x5840
    sub ah, ah                       ; 0x5843
    mov cx, ax                       ; 0x5845
    pop ax                           ; 0x5847
    imul cx                          ; 0x5848
    add ax, word [bp - 0x003a]       ; 0x584a
    mov word [bp - 0x0004], ax       ; 0x584d
    cmp ax, strict word 1            ; 0x5850
    jge short @..api_idx_005e_2.l1   ; 0x5853
    mov word [bp - 0x0004], 1        ; 0x5855
@..api_idx_005e_2.l1:
    mov ax, 0x248                    ; 0x585a
    imul word [bp + 0x4]             ; 0x585d
    push ax                          ; 0x5860
    mov ax, 0x78                     ; 0x5861
    imul word [bp - 0x000a]          ; 0x5864
    mov cx, ax                       ; 0x5867
    pop ax                           ; 0x5869
    add ax, cx                       ; 0x586a
    push ax                          ; 0x586c
    mov ax, 0xc                      ; 0x586d
    imul word [bp - 0x000c]          ; 0x5870
    mov cx, ax                       ; 0x5873
    pop ax                           ; 0x5875
    add ax, cx                       ; 0x5876
    mov bx, ax                       ; 0x5878
    mov al, byte [bx + 0x5c3a]       ; 0x587a
    sub ah, ah                       ; 0x587e
    mov word [bp - 0x0006], ax       ; 0x5880
    cmp ax, strict word 1            ; 0x5883
    jge short @..api_idx_005e_2.l2   ; 0x5886
    mov word [bp - 0x0006], 1        ; 0x5888
@..api_idx_005e_2.l2:
    mov al, byte [bp - 0x001c]       ; 0x588d
    sub ah, ah                       ; 0x5890
    mov bx, ax                       ; 0x5892
    cmp byte [bx + 0x60e], 1         ; 0x5894
    jne short @..api_idx_005e_2.l3   ; 0x5899
    mov ax, word [bp - 0x0006]       ; 0x589b
    cwd                              ; 0x589e
    push ax                          ; 0x589f
    push dx                          ; 0x58a0
    mul word [bp - 0x003c]           ; 0x58a1
    mov cx, ax                       ; 0x58a4
    pop ax                           ; 0x58a6
    mul word [bp - 0x003e]           ; 0x58a7
    add cx, ax                       ; 0x58aa
    pop ax                           ; 0x58ac
    mul word [bp - 0x003e]           ; 0x58ad
    add dx, cx                       ; 0x58b0
    mov word [bp - 0x003c], dx       ; 0x58b2
    mov word [bp - 0x003e], ax       ; 0x58b5
    jmp short @..api_idx_005e_2.l4   ; 0x58b8
@..api_idx_005e_2.l3:
    mov ax, word [bp - 0x003e]       ; 0x58ba
    mov dx, word [bp - 0x003c]       ; 0x58bd
    push ax                          ; 0x58c0
    xchg dx, ax                      ; 0x58c1
    mov bx, 0x64                     ; 0x58c2
    mul bx                           ; 0x58c5
    mov cx, ax                       ; 0x58c7
    pop ax                           ; 0x58c9
    mul bx                           ; 0x58ca
    add dx, cx                       ; 0x58cc
    push ax                          ; 0x58ce
    push dx                          ; 0x58cf
    mov ax, word [bp - 0x0004]       ; 0x58d0
    cwd                              ; 0x58d3
    mov cx, ax                       ; 0x58d4
    mov bx, dx                       ; 0x58d6
    pop dx                           ; 0x58d8
    pop ax                           ; 0x58d9
    call 0xf99f                      ; 0x58da
    push ax                          ; 0x58dd
    push dx                          ; 0x58de
    mov ax, word [bp - 0x0006]       ; 0x58df
    cwd                              ; 0x58e2
    mov cx, ax                       ; 0x58e3
    mov bx, dx                       ; 0x58e5
    pop dx                           ; 0x58e7
    pop ax                           ; 0x58e8
    push ax                          ; 0x58e9
    push dx                          ; 0x58ea
    mul bx                           ; 0x58eb
    mov bx, ax                       ; 0x58ed
    pop ax                           ; 0x58ef
    mul cx                           ; 0x58f0
    add bx, ax                       ; 0x58f2
    pop ax                           ; 0x58f4
    mul cx                           ; 0x58f5
    add dx, bx                       ; 0x58f7
    mov cx, 0x64                     ; 0x58f9
    mov bx, 0                        ; 0x58fc
    db 0xe8, 0x9d, 0xa0 ; call 0xf99f
    mov word [bp - 0x003c], dx       ; 0x5902
    mov word [bp - 0x003e], ax       ; 0x5905
@..api_idx_005e_2.l4:
    push word [bp - 0x0008]          ; 0x5908
    call loc_5497                    ; 0x590b
    pop cx                           ; 0x590e
    test ax, ax                      ; 0x590f
    je short @..api_idx_005e_2.l5    ; 0x5911
    mov ax, word [bp - 0x003e]       ; 0x5913
    mov dx, word [bp - 0x003c]       ; 0x5916
    jmp short @..api_idx_005e_2.l6   ; 0x5919
@..api_idx_005e_2.l5:
    mov ax, word [data_91ac]         ; 0x591b
    cwd                              ; 0x591e
    push ax                          ; 0x591f
    push dx                          ; 0x5920
    mul word [bp - 0x003c]           ; 0x5921
    mov cx, ax                       ; 0x5924
    pop ax                           ; 0x5926
    mul word [bp - 0x003e]           ; 0x5927
    add cx, ax                       ; 0x592a
    pop ax                           ; 0x592c
    mul word [bp - 0x003e]           ; 0x592d
    add dx, cx                       ; 0x5930
    mov cx, 0x64                     ; 0x5932
    mov bx, 0                        ; 0x5935
    db 0xe8, 0x64, 0xa0 ; call 0xf99f
@..api_idx_005e_2.l6:
    mov word [bp - 0x003c], dx       ; 0x593b
    mov word [bp - 0x003e], ax       ; 0x593e
    push word [bp - 0x0008]          ; 0x5941
    call loc_5497                    ; 0x5944
    pop cx                           ; 0x5947
    test ax, ax                      ; 0x5948
    je short @..api_idx_005e_2.l7    ; 0x594a
    cmp byte [data_91c6], 0xff       ; 0x594c
    je short @..api_idx_005e_2.l8    ; 0x5951
@..api_idx_005e_2.l7:
    push word [bp - 0x0008]          ; 0x5953
    call loc_5497                    ; 0x5956
    pop cx                           ; 0x5959
    test ax, ax                      ; 0x595a
    jne short @..api_idx_005e_2.l9   ; 0x595c
    mov al, byte [bp - 0x001d]       ; 0x595e
    sub ah, ah                       ; 0x5961
    test ax, data_0002               ; 0x5963
    je short @..api_idx_005e_2.l9    ; 0x5966
    mov ax, word [bp - 0x0008]       ; 0x5968
    cmp ax, word [data_91ae]         ; 0x596b
    je short @..api_idx_005e_2.l9    ; 0x596f
@..api_idx_005e_2.l8:
    mov ax, 0x98                     ; 0x5971
    push ax                          ; 0x5974
    mov ax, 0x65                     ; 0x5975
    push ax                          ; 0x5978
    mov ax, 0x5dd                    ; 0x5979
    push ax                          ; 0x597c
    call api_idx_0054_2              ; 0x597d
    add sp, byte 6                   ; 0x5980
    mov ax, 0                        ; 0x5983
    ret                              ; 0x5986
