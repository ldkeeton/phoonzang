api_idx_0002_26:
    mov ax, 0xfffe                   ; 0xa7b2
    call ds_dispatch_f40b            ; 0xa7b5
    mov ax, 0x26                     ; 0xa7b8
    imul word [bp + 0x4]             ; 0xa7bb
    mov bx, ax                       ; 0xa7be
    cmp byte [bx - 0x7b16], 3        ; 0xa7c0
    jne short @..api_idx_0002_26.l1  ; 0xa7c5
    mov ax, 3                        ; 0xa7c7
    push ax                          ; 0xa7ca
    mov ax, 2                        ; 0xa7cb
    push ax                          ; 0xa7ce
    push word [bp + 0x4]             ; 0xa7cf
    call api_idx_0002_25             ; 0xa7d2
    add sp, byte 6                   ; 0xa7d5
    test ax, ax                      ; 0xa7d8
    je short @..api_idx_0002_26.l1   ; 0xa7da
    ret                              ; 0xa7dc
@..api_idx_0002_26.l1:
    mov ax, 0x26                     ; 0xa7dd
    imul word [bp + 0x4]             ; 0xa7e0
    mov bx, ax                       ; 0xa7e3
    cmp byte [bx - 0x7b16], 5        ; 0xa7e5
    je short @..api_idx_0002_26.l2   ; 0xa7ea
    jmp near @..api_idx_0002_26.l6   ; 0xa7ec
@..api_idx_0002_26.l2:
    cmp byte [bx - 0x7b11], 0        ; 0xa7ef
    jge short @..api_idx_0002_26.l5  ; 0xa7f4
    mov al, byte [bx - 0x7b12]       ; 0xa7f6
    sub ah, ah                       ; 0xa7fa
    mov cx, 0x26                     ; 0xa7fc
    imul cx                          ; 0xa7ff
    mov bx, ax                       ; 0xa801
    mov al, byte [bx - 0x7b15]       ; 0xa803
    push ax                          ; 0xa807
    mov ax, cx                       ; 0xa808
    imul word [bp + 0x4]             ; 0xa80a
    mov bx, ax                       ; 0xa80d
    pop ax                           ; 0xa80f
    cmp al, byte [bx - 0x7b14]       ; 0xa810
    je short @..api_idx_0002_26.l4   ; 0xa814
    mov byte [bx - 0x7b15], al       ; 0xa816
    push word [bp + 0x4]             ; 0xa81a
    call math_loc_946a               ; 0xa81d
    pop cx                           ; 0xa820
    mov ax, 0x26                     ; 0xa821
    imul word [bp + 0x4]             ; 0xa824
    mov bx, ax                       ; 0xa827
    cmp byte [bx - 0x7b16], 0        ; 0xa829
    jne short @..api_idx_0002_26.l3  ; 0xa82e
    push word [bp + 0x4]             ; 0xa830
    call api_idx_003a                ; 0xa833
    pop cx                           ; 0xa836
    ret                              ; 0xa837
@..api_idx_0002_26.l3:
    mov ax, 0x26                     ; 0xa838
    imul word [bp + 0x4]             ; 0xa83b
    mov bx, ax                       ; 0xa83e
    mov byte [bx - 0x7b16], 5        ; 0xa840
    jmp short @..api_idx_0002_26.l5  ; 0xa845
@..api_idx_0002_26.l4:
    mov ax, 0x10                     ; 0xa847
    push ax                          ; 0xa84a
    call ds_dispatch_b7a9            ; 0xa84b
    pop cx                           ; 0xa84e
    push ax                          ; 0xa84f
    mov ax, 0x26                     ; 0xa850
    imul word [bp + 0x4]             ; 0xa853
    mov bx, ax                       ; 0xa856
    pop ax                           ; 0xa858
    mov byte [bx - 0x7b13], al       ; 0xa859
@..api_idx_0002_26.l5:
    mov ax, 0x26                     ; 0xa85d
    imul word [bp + 0x4]             ; 0xa860
    mov bx, ax                       ; 0xa863
    cmp byte [bx - 0x7b12], 0x15     ; 0xa865
    je short @..api_idx_0002_26.l6   ; 0xa86a
    mov al, byte [bx - 0x7b12]       ; 0xa86c
    sub ah, ah                       ; 0xa870
    mov cx, 0x26                     ; 0xa872
    imul cx                          ; 0xa875
    mov bx, ax                       ; 0xa877
    cmp byte [bx - 0x7b00], 0        ; 0xa879
    jg short @..api_idx_0002_26.l6   ; 0xa87e
    mov ax, cx                       ; 0xa880
    imul word [bp + 0x4]             ; 0xa882
    mov bx, ax                       ; 0xa885
    mov byte [bx - 0x7b16], 3        ; 0xa887
@..api_idx_0002_26.l6:
    mov ax, 0x26                     ; 0xa88c
    imul word [bp + 0x4]             ; 0xa88f
    mov bx, ax                       ; 0xa892
    cmp byte [bx - 0x7b16], 7        ; 0xa894
    je short @..api_idx_0002_26.l9   ; 0xa899
    push word [bp + 0x6]             ; 0xa89b
    push word [bp + 0x4]             ; 0xa89e
    call api_idx_0008_5              ; 0xa8a1
    add sp, byte 4                   ; 0xa8a4
    mov ax, 0x26                     ; 0xa8a7
    imul word [bp + 0x4]             ; 0xa8aa
    mov bx, ax                       ; 0xa8ad
    mov al, byte [bx - 0x7b16]       ; 0xa8af
    cmp al, 3                        ; 0xa8b3
    je short @..api_idx_0002_26.l7   ; 0xa8b5
    cmp al, 7                        ; 0xa8b7
    je short @..api_idx_0002_26.l7   ; 0xa8b9
    cmp al, 5                        ; 0xa8bb
    jne short @..api_idx_0002_26.l8  ; 0xa8bd
@..api_idx_0002_26.l7:
    cmp byte [bx - 0x7b00], 0        ; 0xa8bf
    jg short @..api_idx_0002_26.l9   ; 0xa8c4
@..api_idx_0002_26.l8:
    ret                              ; 0xa8c6
@..api_idx_0002_26.l9:
    mov ax, 0x26                     ; 0xa8c7
    imul word [bp + 0x4]             ; 0xa8ca
    mov bx, ax                       ; 0xa8cd
    cmp byte [bx - 0x7b11], 0        ; 0xa8cf
    jge short @..api_idx_0002_26.l11 ; 0xa8d4
    cmp byte [bx - 0x7b16], 5        ; 0xa8d6
    je short @..api_idx_0002_26.l10  ; 0xa8db
    push word [bp + 0x4]             ; 0xa8dd
    call api_idx_003a                ; 0xa8e0
    pop cx                           ; 0xa8e3
@..api_idx_0002_26.l10:
    ret                              ; 0xa8e4
@..api_idx_0002_26.l11:
    mov ax, 0x26                     ; 0xa8e5
    imul word [bp + 0x4]             ; 0xa8e8
    push ax                          ; 0xa8eb
    mov ax, 0x26                     ; 0xa8ec
    imul word [bp + 0x4]             ; 0xa8ef
    mov bx, ax                       ; 0xa8f2
    mov al, byte [bx - 0x7b11]       ; 0xa8f4
    cbw                              ; 0xa8f8
    mov cx, ax                       ; 0xa8f9
    pop ax                           ; 0xa8fb
    add ax, cx                       ; 0xa8fc
    mov bx, ax                       ; 0xa8fe
    mov al, byte [bx - 0x7b10]       ; 0xa900
    sub ah, ah                       ; 0xa904
    mov word [bp - 0x0002], ax       ; 0xa906
    mov ax, 0x26                     ; 0xa909
    imul word [bp + 0x4]             ; 0xa90c
    mov bx, ax                       ; 0xa90f
    inc byte [bx - 0x7b13]           ; 0xa911
    mov ax, word [bp - 0x0002]       ; 0xa915
    shl ax, 1                        ; 0xa918
    shl ax, 1                        ; 0xa91a
    mov si, ax                       ; 0xa91c
    mov al, byte [si - 0x758f]       ; 0xa91e
    cmp al, byte [bx - 0x7b13]       ; 0xa922
    jbe short @..api_idx_0002_26.l12 ; 0xa926
    jmp near @..api_idx_0002_26.l16  ; 0xa928
@..api_idx_0002_26.l12:
    mov byte [bx - 0x7b13], 0        ; 0xa92b
    mov al, byte [bx - 0x7b14]       ; 0xa930
    cmp al, byte [si - 0x7592]       ; 0xa934
    jne short @..api_idx_0002_26.l13 ; 0xa938
    mov al, byte [si - 0x7591]       ; 0xa93a
    mov byte [bx - 0x7b14], al       ; 0xa93e
    jmp short @..api_idx_0002_26.l14 ; 0xa942
@..api_idx_0002_26.l13:
    mov al, byte [bx - 0x7b14]       ; 0xa944
    cmp al, byte [si - 0x7591]       ; 0xa948
    jne short @..api_idx_0002_26.l14 ; 0xa94c
    mov al, byte [si - 0x7592]       ; 0xa94e
    mov byte [bx - 0x7b14], al       ; 0xa952
@..api_idx_0002_26.l14:
    cmp byte [bx - 0x7b16], 7        ; 0xa956
    jne short @..api_idx_0002_26.l15 ; 0xa95b
    mov byte [bx - 0x7b16], 3        ; 0xa95d
@..api_idx_0002_26.l15:
    dec byte [bx - 0x7b11]           ; 0xa962
    jge short @..api_idx_0002_26.l16 ; 0xa966
    cmp byte [bx - 0x7b16], 3        ; 0xa968
    jne short @..api_idx_0002_26.l16 ; 0xa96d
    mov byte [bx - 0x7b16], 0        ; 0xa96f
    mov al, byte [bx - 0x7b14]       ; 0xa974
    cmp al, byte [bx - 0x7b15]       ; 0xa978
    jne short @..api_idx_0002_26.l16 ; 0xa97c
    mov byte [bx - 0x7b16], 2        ; 0xa97e
    mov byte [bx - 0x7b13], 0        ; 0xa983
    mov al, byte [bx - 0x7b15]       ; 0xa988
    sub ah, ah                       ; 0xa98c
    push ax                          ; 0xa98e
    mov ax, 6                        ; 0xa98f
    push ax                          ; 0xa992
    mov al, byte [bx - 0x7b15]       ; 0xa993
    sub ah, ah                       ; 0xa997
    push ax                          ; 0xa999
    push word [bp + 0x4]             ; 0xa99a
    call api_idx_0002_22             ; 0xa99d
    add sp, byte 8                   ; 0xa9a0
@..api_idx_0002_26.l16:
    ret                              ; 0xa9a3
