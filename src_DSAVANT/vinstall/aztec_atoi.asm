; auto-generated
aztec_atoi:
    push bp                          ; 0x2806
    mov bp, sp                       ; 0x2807
    add sp, byte -2                  ; 0x2809
    push di                          ; 0x280c
    push si                          ; 0x280d
    mov si, word [bp + 4]            ; 0x280e
.back1:
    cmp byte [si], 0x20              ; 0x2811
    je short .forward1               ; 0x2814
    cmp byte [si], 9                 ; 0x2816
    jne short .forward2              ; 0x2819
.forward1:
    inc si                           ; 0x281b
    jmp short .back1                 ; 0x281c
.forward2:
    mov word [bp - 2], 0             ; 0x281e
    cmp byte [si], 0x2d              ; 0x2823
    jne short .forward3              ; 0x2826
    mov word [bp - 2], 1             ; 0x2828
    inc si                           ; 0x282d
    jmp short .forward4              ; 0x282e
.forward3:
    cmp byte [si], 0x2b              ; 0x2830
    jne short .forward4              ; 0x2833
    inc si                           ; 0x2835
.forward4:
    mov di, 0                        ; 0x2836
    jmp short .forward5              ; 0x2839
.back2:
    mov ax, di                       ; 0x283b
    mov dx, ax                       ; 0x283d
    shl ax, 1                        ; 0x283f
    shl ax, 1                        ; 0x2841
    add ax, dx                       ; 0x2843
    shl ax, 1                        ; 0x2845
    push ax                          ; 0x2847
    mov bx, si                       ; 0x2848
    inc si                           ; 0x284a
    mov al, byte [bx]                ; 0x284b
    cbw                              ; 0x284d
    mov cx, ax                       ; 0x284e
    pop ax                           ; 0x2850
    add ax, cx                       ; 0x2851
    add ax, strict word 0xffd0       ; 0x2853
    mov di, ax                       ; 0x2856
.forward5:
    mov al, byte [si]                ; 0x2858
    cbw                              ; 0x285a
    mov bx, ax                       ; 0x285b
    mov al, byte [bx + ctp_ + 0x1]   ; 0x285d
    cbw                              ; 0x2861
    test ax, 4                       ; 0x2862
    jne short .back2                 ; 0x2865
    mov ax, di                       ; 0x2867
    cmp word [bp - 2], byte 0        ; 0x2869
    je short .forward6               ; 0x286d
    neg ax                           ; 0x286f
.forward6:
    pop si                           ; 0x2871
    pop di                           ; 0x2872
    mov sp, bp                       ; 0x2873
    pop bp                           ; 0x2875
    ret                              ; 0x2876
