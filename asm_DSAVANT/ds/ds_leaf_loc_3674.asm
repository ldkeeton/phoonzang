; auto-generated
ds_leaf_loc_3674:
    push ds                          ; 0x3674
    push si                          ; 0x3675
    push ax                          ; 0x3676
    push bx                          ; 0x3677
    push cx                          ; 0x3678
    push dx                          ; 0x3679
    mov cx, 0                        ; 0x367a
    mov ds, cx                       ; 0x367d
    mov bx, 0x46c                    ; 0x367f
    mov si, cx                       ; 0x3682
    mov dx, word [bx]                ; 0x3684
@..ds_leaf_loc_3674.l1:
    cmp dx, word [bx]                ; 0x3686
    je short @..ds_leaf_loc_3674.l1  ; 0x3688
    mov dx, word [bx]                ; 0x368a
@..ds_leaf_loc_3674.l2:
    add cx, byte 1                   ; 0x368c
    jae short @..ds_leaf_loc_3674.l3 ; 0x368f
    inc si                           ; 0x3691
@..ds_leaf_loc_3674.l3:
    cmp dx, word [bx]                ; 0x3692
    je short @..ds_leaf_loc_3674.l2  ; 0x3694
    mov dx, si                       ; 0x3696
    mov ax, cx                       ; 0x3698
    mov cx, 0x37                     ; 0x369a
    div cx                           ; 0x369d
    cmp dx, byte 0x1b                ; 0x369f
    jl short @..ds_leaf_loc_3674.l4  ; 0x36a2
    inc ax                           ; 0x36a4
@..ds_leaf_loc_3674.l4:
    mov dx, ax                       ; 0x36a5
    mov cl, 3                        ; 0x36a7
    shr dx, cl                       ; 0x36a9
    sub ax, dx                       ; 0x36ab
    shr dx, 1                        ; 0x36ad
    add ax, dx                       ; 0x36af
    mov word [cs:cseg_3672 - IMAGE_BASE], ax ; 0x36b1
    pop dx                           ; 0x36b5
    pop cx                           ; 0x36b6
    pop bx                           ; 0x36b7
    pop ax                           ; 0x36b8
    pop si                           ; 0x36b9
    pop ds                           ; 0x36ba
    ret                              ; 0x36bb
