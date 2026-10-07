api_idx_0006_3:
    mov ax, 0xfffa                   ; 0x3773
    db 0xe8, 0x92, 0xbc ; call 0xf40b
    cmp byte [bp + 0x6], data_0002   ; 0x3779
    jne short @..api_idx_0006_3.l2   ; 0x377d
    mov ax, word [bp + 0x8]          ; 0x377f
    cwd                              ; 0x3782
    mov cx, 8                        ; 0x3783
@..api_idx_0006_3.l1:
    shl ax, 1                        ; 0x3786
    rcl dx, 1                        ; 0x3788
    loop @..api_idx_0006_3.l1        ; 0x378a
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
    mov word [bp - 0x0004], dx       ; 0x379e
    mov word [bp - 0x0006], ax       ; 0x37a1
    mov ax, word [bp - 0x0006]       ; 0x37a4
    mov dx, word [bp - 0x0004]       ; 0x37a7
    add word [data_964a], ax         ; 0x37aa
    adc word [data_964c], dx         ; 0x37ae
@..api_idx_0006_3.l2:
    mov word [bp - 0x0002], 0        ; 0x37b2
@..api_idx_0006_3.l3:
    mov ax, 6                        ; 0x37b7
    imul word [bp - 0x0002]          ; 0x37ba
    mov bx, ax                       ; 0x37bd
    mov al, byte [bx - 0x6eb4]       ; 0x37bf
    cmp al, byte [bp + 0x6]          ; 0x37c3
    je short @..api_idx_0006_3.l4    ; 0x37c6
    jmp near @..api_idx_0006_3.l15   ; 0x37c8
@..api_idx_0006_3.l4:
    cmp byte [bp + 0x6], data_0002   ; 0x37cb
    jne short @..api_idx_0006_3.l9   ; 0x37cf
    mov ax, word [bx - 0x6eb8]       ; 0x37d1
    cwd                              ; 0x37d5
    mov cx, 8                        ; 0x37d6
@..api_idx_0006_3.l5:
    shl ax, 1                        ; 0x37d9
    rcl dx, 1                        ; 0x37db
    loop @..api_idx_0006_3.l5        ; 0x37dd
    push ax                          ; 0x37df
    push dx                          ; 0x37e0
    mov ax, 6                        ; 0x37e1
    imul word [bp - 0x0002]          ; 0x37e4
    mov bx, ax                       ; 0x37e7
    mov al, byte [bx - 0x6eb6]       ; 0x37e9
    sub ah, ah                       ; 0x37ed
    cwd                              ; 0x37ef
    mov cx, ax                       ; 0x37f0
    mov bx, dx                       ; 0x37f2
    pop dx                           ; 0x37f4
    pop ax                           ; 0x37f5
    add ax, cx                       ; 0x37f6
    adc dx, bx                       ; 0x37f8
    mov word [bp - 0x0004], dx       ; 0x37fa
    mov word [bp - 0x0006], ax       ; 0x37fd
    cmp dx, word [data_964c]         ; 0x3800
    jg short @..api_idx_0006_3.l6    ; 0x3804
    jne short @..api_idx_0006_3.l7   ; 0x3806
    cmp ax, word [data_964a]         ; 0x3808
    jbe short @..api_idx_0006_3.l7   ; 0x380c
@..api_idx_0006_3.l6:
    jmp short @..api_idx_0006_3.l8   ; 0x380e
@..api_idx_0006_3.l7:
    mov word [data_964c], 0          ; 0x3810
    mov word [data_964a], 0          ; 0x3816
    mov ax, 6                        ; 0x381c
    imul word [bp - 0x0002]          ; 0x381f
    mov bx, ax                       ; 0x3822
    mov al, byte [bx - 0x6eb3]       ; 0x3824
    sub ah, ah                       ; 0x3828
    push ax                          ; 0x382a
    push word [bp + 0x4]             ; 0x382b
    call api_idx_0040                ; 0x382e
    add sp, byte 4                   ; 0x3831
    mov word [bp + 0x8], ax          ; 0x3834
    ret                              ; 0x3837
