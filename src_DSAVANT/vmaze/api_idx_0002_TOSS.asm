; auto-generated
api_idx_0002_TOSS:
    mov ax, 0xfffe                   ; 0x0acc
    call aztec_csav                  ; 0x0acf
    mov ax, 0x64                     ; 0x0ad2
    push ax                          ; 0x0ad5
    call random_below                ; 0x0ad6
    pop cx                           ; 0x0ad9
    push ax                          ; 0x0ada
    mov bx, word [maze_data]         ; 0x0adb
    mov si, word [bp + 0x4]          ; 0x0adf
    mov al, byte [bx + si + 0xac0]   ; 0x0ae2
    sub ah, ah                       ; 0x0ae6
    mov cx, ax                       ; 0x0ae8
    pop ax                           ; 0x0aea
    cmp ax, cx                       ; 0x0aeb
    jge short @..api_idx_0002_TOSS.l1 ; 0x0aed
    mov ax, 0                        ; 0x0aef
    jmp short @..api_idx_0002_TOSS.l2 ; 0x0af2
@..api_idx_0002_TOSS.l1:
    mov ax, 1                        ; 0x0af4
@..api_idx_0002_TOSS.l2:
    mov word [bp - 0x0002], ax       ; 0x0af7
    mov ax, 4                        ; 0x0afa
    push ax                          ; 0x0afd
    shl si, 1                        ; 0x0afe
    mov ax, si                       ; 0x0b00
    add ax, word [bp - 0x0002]       ; 0x0b02
    push ax                          ; 0x0b05
    add bx, strict word 0xab0        ; 0x0b06
    mov ax, bx                       ; 0x0b0a
    push ax                          ; 0x0b0c
    call ds_leaf_loc_NPSL            ; 0x0b0d
    add sp, byte 6                   ; 0x0b10
    ret                              ; 0x0b13
