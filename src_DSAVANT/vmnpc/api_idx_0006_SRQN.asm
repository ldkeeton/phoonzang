; auto-generated
api_idx_0006_SRQN:
    mov ax, 0xfffa                   ; 0x3773
    call aztec_csav                  ; 0x3776
    cmp byte [bp + 6], 2             ; 0x3779
    jne short @..api_idx_0006_SRQN.l2 ; 0x377d
    mov ax, word [bp + 8]            ; 0x377f
    cwd                              ; 0x3782
    mov cx, 8                        ; 0x3783
@..api_idx_0006_SRQN.l1:
    shl ax, 1                        ; 0x3786
    rcl dx, 1                        ; 0x3788
    loop @..api_idx_0006_SRQN.l1     ; 0x378a
    push ax                          ; 0x378c
    push dx                          ; 0x378d
    mov al, byte [bp + 0xa]          ; 0x378e
    sub ah, ah                       ; 0x3791
    cwd                              ; 0x3793
    mov cx, ax                       ; 0x3794
    mov bx, dx                       ; 0x3796
    pop dx                           ; 0x3798
    pop ax                           ; 0x3799
    add ax, cx                       ; 0x379a
    adc dx, bx                       ; 0x379c
    mov word [bp - 4], dx            ; 0x379e
    mov word [bp - 6], ax            ; 0x37a1
    mov ax, word [bp - 6]            ; 0x37a4
    mov dx, word [bp - 4]            ; 0x37a7
    add word [bss_964a], ax          ; 0x37aa
    adc word [bss_964c], dx          ; 0x37ae
@..api_idx_0006_SRQN.l2:
    mov word [bp - 2], 0             ; 0x37b2
@..api_idx_0006_SRQN.l3:
    mov ax, 6                        ; 0x37b7
    imul word [bp - 2]               ; 0x37ba
    mov bx, ax                       ; 0x37bd
    mov al, byte [bx + bss_914c]     ; 0x37bf
    cmp al, byte [bp + 6]            ; 0x37c3
    je short @..api_idx_0006_SRQN.l4 ; 0x37c6
    jmp near @..api_idx_0006_SRQN.l15 ; 0x37c8
@..api_idx_0006_SRQN.l4:
    cmp byte [bp + 6], 2             ; 0x37cb
    jne short @..api_idx_0006_SRQN.l9 ; 0x37cf
    mov ax, word [bx + bss_9148]     ; 0x37d1
    cwd                              ; 0x37d5
    mov cx, 8                        ; 0x37d6
@..api_idx_0006_SRQN.l5:
    shl ax, 1                        ; 0x37d9
    rcl dx, 1                        ; 0x37db
    loop @..api_idx_0006_SRQN.l5     ; 0x37dd
    push ax                          ; 0x37df
    push dx                          ; 0x37e0
    mov ax, 6                        ; 0x37e1
    imul word [bp - 2]               ; 0x37e4
    mov bx, ax                       ; 0x37e7
    mov al, byte [bx + bss_914a]     ; 0x37e9
    sub ah, ah                       ; 0x37ed
    cwd                              ; 0x37ef
    mov cx, ax                       ; 0x37f0
    mov bx, dx                       ; 0x37f2
    pop dx                           ; 0x37f4
    pop ax                           ; 0x37f5
    add ax, cx                       ; 0x37f6
    adc dx, bx                       ; 0x37f8
    mov word [bp - 4], dx            ; 0x37fa
    mov word [bp - 6], ax            ; 0x37fd
    cmp dx, word [bss_964c]          ; 0x3800
    jg short @..api_idx_0006_SRQN.l6 ; 0x3804
    jne short @..api_idx_0006_SRQN.l7 ; 0x3806
    cmp ax, word [bss_964a]          ; 0x3808
    jbe short @..api_idx_0006_SRQN.l7 ; 0x380c
@..api_idx_0006_SRQN.l6:
    jmp short @..api_idx_0006_SRQN.l8 ; 0x380e
@..api_idx_0006_SRQN.l7:
    mov word [bss_964c], 0           ; 0x3810
    mov word [bss_964a], 0           ; 0x3816
    mov ax, 6                        ; 0x381c
    imul word [bp - 2]               ; 0x381f
    mov bx, ax                       ; 0x3822
    mov al, byte [bx + bss_914d]     ; 0x3824
    sub ah, ah                       ; 0x3828
    push ax                          ; 0x382a
    push word [bp + 4]               ; 0x382b
    call api_idx_0040_LSRO           ; 0x382e
    add sp, byte 4                   ; 0x3831
    mov word [bp + 8], ax            ; 0x3834
    ret                              ; 0x3837
@..api_idx_0006_SRQN.l8:
    jmp near @..api_idx_0006_SRQN.l15 ; 0x3838
@..api_idx_0006_SRQN.l9:
    cmp byte [bp + 6], 1             ; 0x383b
    jne short @..api_idx_0006_SRQN.l10 ; 0x383f
    mov ax, 6                        ; 0x3841
    imul word [bp - 2]               ; 0x3844
    mov bx, ax                       ; 0x3847
    cmp word [bx + bss_9148], byte 0 ; 0x3849
    jne short @..api_idx_0006_SRQN.l10 ; 0x384e
    mov word [bp + 8], 0             ; 0x3850
@..api_idx_0006_SRQN.l10:
    mov ax, 6                        ; 0x3855
    imul word [bp - 2]               ; 0x3858
    mov bx, ax                       ; 0x385b
    mov ax, word [bx + bss_9148]     ; 0x385d
    cmp ax, word [bp + 8]            ; 0x3861
    je short @..api_idx_0006_SRQN.l11 ; 0x3864
    cmp word [bp + 8], byte 0        ; 0x3866
    jne short @..api_idx_0006_SRQN.l15 ; 0x386a
@..api_idx_0006_SRQN.l11:
    mov al, byte [bx + bss_914a]     ; 0x386c
    cmp al, byte [bp + 0xa]          ; 0x3870
    je short @..api_idx_0006_SRQN.l12 ; 0x3873
    cmp byte [bp + 0xa], 0           ; 0x3875
    jne short @..api_idx_0006_SRQN.l15 ; 0x3879
@..api_idx_0006_SRQN.l12:
    mov al, byte [bx + bss_914b]     ; 0x387b
    cmp al, byte [bp + 0xc]          ; 0x387f
    je short @..api_idx_0006_SRQN.l13 ; 0x3882
    cmp byte [bp + 0xc], 0           ; 0x3884
    jne short @..api_idx_0006_SRQN.l15 ; 0x3888
@..api_idx_0006_SRQN.l13:
    cmp byte [bp + 6], 4             ; 0x388a
    jne short @..api_idx_0006_SRQN.l14 ; 0x388e
    call loc_GOMR                    ; 0x3890
@..api_idx_0006_SRQN.l14:
    mov ax, 6                        ; 0x3893
    imul word [bp - 2]               ; 0x3896
    mov bx, ax                       ; 0x3899
    mov al, byte [bx + bss_914d]     ; 0x389b
    sub ah, ah                       ; 0x389f
    push ax                          ; 0x38a1
    push word [bp + 4]               ; 0x38a2
    call api_idx_0040_LSRO           ; 0x38a5
    add sp, byte 4                   ; 0x38a8
    mov word [bp + 8], ax            ; 0x38ab
    ret                              ; 0x38ae
@..api_idx_0006_SRQN.l15:
    inc word [bp - 2]                ; 0x38af
    mov ax, word [bp - 2]            ; 0x38b2
    cmp ax, strict word 8            ; 0x38b5
    jge short @..api_idx_0006_SRQN.l16 ; 0x38b8
    jmp near @..api_idx_0006_SRQN.l3 ; 0x38ba
@..api_idx_0006_SRQN.l16:
    mov ax, 0                        ; 0x38bd
    ret                              ; 0x38c0
