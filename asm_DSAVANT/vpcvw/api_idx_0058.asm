; auto-generated
api_idx_0058:
    mov ax, 0xffa8                   ; 0x8730
    call aztec_csav                  ; 0x8733
    mov ax, 6                        ; 0x8736
    imul word [bp + 0xa]             ; 0x8739
    add ax, word [bp + 0x6]          ; 0x873c
    mov word [bp - 0x0002], ax       ; 0x873f
    mov ax, word [bp + 0x8]          ; 0x8742
    add ax, strict word 9            ; 0x8745
    mov word [bp - 0x0004], ax       ; 0x8748
    mov ax, word [bp - 0x0004]       ; 0x874b
    add ax, strict word 6            ; 0x874e
    push ax                          ; 0x8751
    mov ax, word [bp - 0x0002]       ; 0x8752
    add ax, strict word 0x19         ; 0x8755
    push ax                          ; 0x8758
    mov ax, word [bp + 0x8]          ; 0x8759
    add ax, strict word 0xffeb       ; 0x875c
    push ax                          ; 0x875f
    mov ax, word [bp + 0x6]          ; 0x8760
    add ax, strict word 0xffe7       ; 0x8763
    push ax                          ; 0x8766
    call thunk_10                    ; 0x8767
    add sp, byte 8                   ; 0x876a
    mov word [bp - 0x0056], dx       ; 0x876d
    mov word [bp - 0x0058], ax       ; 0x8770
    mov ax, word [bp - 0x0004]       ; 0x8773
    add ax, strict word 5            ; 0x8776
    push ax                          ; 0x8779
    mov ax, word [bp - 0x0002]       ; 0x877a
    add ax, strict word 0x18         ; 0x877d
    push ax                          ; 0x8780
    mov ax, word [bp + 0x8]          ; 0x8781
    add ax, strict word 0xffec       ; 0x8784
    push ax                          ; 0x8787
    mov ax, word [bp + 0x6]          ; 0x8788
    add ax, strict word 0xffe8       ; 0x878b
    push ax                          ; 0x878e
    call ds_app_0ee1                 ; 0x878f
    add sp, byte 8                   ; 0x8792
    lea ax, word [bp - 0x0054]       ; 0x8795
    push ax                          ; 0x8798
    push word [bp + 0x4]             ; 0x8799
    call ds_app_mem_0782             ; 0x879c
    add sp, byte 4                   ; 0x879f
    mov ax, 0xc2                     ; 0x87a2
    push ax                          ; 0x87a5
    mov ax, 1                        ; 0x87a6
    push ax                          ; 0x87a9
    call thunk_3                     ; 0x87aa
    add sp, byte 4                   ; 0x87ad
    mov ax, word [bp + 0x8]          ; 0x87b0
    add ax, strict word 0xfff3       ; 0x87b3
    push ax                          ; 0x87b6
    lea ax, word [bp - 0x0054]       ; 0x87b7
    push ax                          ; 0x87ba
    call aztec_strlen                ; 0x87bb
    pop cx                           ; 0x87be
    mov cx, 6                        ; 0x87bf
    imul cx                          ; 0x87c2
    mov cx, 2                        ; 0x87c4
    cwd                              ; 0x87c7
    idiv cx                          ; 0x87c8
    mov cx, ax                       ; 0x87ca
    mov ax, 0xa1                     ; 0x87cc
    sub ax, cx                       ; 0x87cf
    push ax                          ; 0x87d1
    call thunk                       ; 0x87d2
    add sp, byte 4                   ; 0x87d5
    mov ax, 0                        ; 0x87d8
    push ax                          ; 0x87db
    lea ax, word [bp - 0x0054]       ; 0x87dc
    push ax                          ; 0x87df
    call ds_string_loc_3a95          ; 0x87e0
    add sp, byte 4                   ; 0x87e3
    lea ax, word [bp - 0x0054]       ; 0x87e6
    push ax                          ; 0x87e9
    mov ax, word [bp + 0x4]          ; 0x87ea
    inc ax                           ; 0x87ed
    push ax                          ; 0x87ee
    call ds_app_mem_0782             ; 0x87ef
    add sp, byte 4                   ; 0x87f2
    mov ax, 0                        ; 0x87f5
    push ax                          ; 0x87f8
    mov ax, word [bp + 0x8]          ; 0x87f9
    add ax, strict word 8            ; 0x87fc
    push ax                          ; 0x87ff
    mov ax, 6                        ; 0x8800
    imul word [bp + 0xa]             ; 0x8803
    add ax, word [bp + 0x6]          ; 0x8806
    push ax                          ; 0x8809
    push word [bp + 0x8]             ; 0x880a
    push word [bp + 0x6]             ; 0x880d
    call ds_app_0f2a                 ; 0x8810
    add sp, byte 0x0a                ; 0x8813
    mov ax, 0xc0                     ; 0x8816
    push ax                          ; 0x8819
    mov ax, 0x1a                     ; 0x881a
    push ax                          ; 0x881d
    call thunk_3                     ; 0x881e
    add sp, byte 4                   ; 0x8821
    mov ax, word [bp + 0x8]          ; 0x8824
    inc ax                           ; 0x8827
    inc ax                           ; 0x8828
    push ax                          ; 0x8829
    lea ax, word [bp - 0x0054]       ; 0x882a
    push ax                          ; 0x882d
    call aztec_strlen                ; 0x882e
    pop cx                           ; 0x8831
    mov cx, ax                       ; 0x8832
    mov ax, word [bp + 0xa]          ; 0x8834
    sub ax, cx                       ; 0x8837
    mov cx, 6                        ; 0x8839
    imul cx                          ; 0x883c
    mov cx, 2                        ; 0x883e
    cwd                              ; 0x8841
    idiv cx                          ; 0x8842
    add ax, word [bp + 0x6]          ; 0x8844
    inc ax                           ; 0x8847
    push ax                          ; 0x8848
    call thunk                       ; 0x8849
    add sp, byte 4                   ; 0x884c
    mov ax, 0                        ; 0x884f
    push ax                          ; 0x8852
    lea ax, word [bp - 0x0054]       ; 0x8853
    push ax                          ; 0x8856
    call ds_string_loc_3a95          ; 0x8857
    add sp, byte 4                   ; 0x885a
    mov ax, 0                        ; 0x885d
    push ax                          ; 0x8860
    mov ax, 0xd                      ; 0x8861
    push ax                          ; 0x8864
    mov ax, word [bp + 0x8]          ; 0x8865
    add ax, strict word 8            ; 0x8868
    push ax                          ; 0x886b
    mov ax, 6                        ; 0x886c
    imul word [bp + 0xa]             ; 0x886f
    add ax, word [bp + 0x6]          ; 0x8872
    push ax                          ; 0x8875
    push word [bp + 0x8]             ; 0x8876
    push word [bp + 0x6]             ; 0x8879
    push word [bp + 0xe]             ; 0x887c
    call ds_app_0ced                 ; 0x887f
    add sp, byte 0x0e                ; 0x8882
    mov ax, 0                        ; 0x8885
    push ax                          ; 0x8888
    push ax                          ; 0x8889
    push ax                          ; 0x888a
    push ax                          ; 0x888b
    push ax                          ; 0x888c
    mov ax, 0xffff                   ; 0x888d
    push ax                          ; 0x8890
    mov ax, word [bp + 0xe]          ; 0x8891
    inc ax                           ; 0x8894
    push ax                          ; 0x8895
    call ds_app_0ced                 ; 0x8896
    add sp, byte 0x0e                ; 0x8899
    mov ax, 0xc7                     ; 0x889c
    push ax                          ; 0x889f
    mov ax, 0x13f                    ; 0x88a0
    push ax                          ; 0x88a3
    mov ax, 0                        ; 0x88a4
    push ax                          ; 0x88a7
    push ax                          ; 0x88a8
    call thunk_4                     ; 0x88a9
    add sp, byte 8                   ; 0x88ac
    mov ax, word [bp - 0x0058]       ; 0x88af
    mov dx, word [bp - 0x0056]       ; 0x88b2
    ret                              ; 0x88b5
