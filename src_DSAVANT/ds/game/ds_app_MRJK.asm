; auto-generated
ds_app_MRJK: ; Aztec csav frame=0x0008
    mov ax, 0xfff8                   ; 0x065d
    call aztec_csav                  ; 0x0660
    mov ax, word [bss_100c]          ; 0x0663
    dec ax                           ; 0x0666
    mov word [bp - 0x0004], ax       ; 0x0667
    mov word [bp - 0x0006], 0        ; 0x066a
@..ds_app_MRJK.l1:
    mov ax, word [bp - 0x0006]       ; 0x066f
    cmp ax, word [bp - 0x0004]       ; 0x0672
    jg short @..ds_app_MRJK.l5       ; 0x0675
    mov cx, word [bp - 0x0004]       ; 0x0677
    sub cx, ax                       ; 0x067a
    mov ax, cx                       ; 0x067c
    mov cx, 2                        ; 0x067e
    cwd                              ; 0x0681
    idiv cx                          ; 0x0682
    mov cx, ax                       ; 0x0684
    mov ax, word [bp - 0x0006]       ; 0x0686
    add cx, ax                       ; 0x0689
    mov word [bp - 0x0002], cx       ; 0x068b
    mov ax, 6                        ; 0x068e
    imul cx                          ; 0x0691
    add ax, bss_100c + 0x2           ; 0x0693
    mov word [bp - 0x0008], ax       ; 0x0696
    mov bx, ax                       ; 0x0699
    mov ax, word [bx]                ; 0x069b
    cmp ax, word [bp + 0x4]          ; 0x069d
    jle short @..ds_app_MRJK.l2      ; 0x06a0
    dec cx                           ; 0x06a2
    mov word [bp - 0x0004], cx       ; 0x06a3
    jmp short @..ds_app_MRJK.l4      ; 0x06a6
@..ds_app_MRJK.l2:
    mov al, byte [bx + 0x4]          ; 0x06a8
    sub ah, ah                       ; 0x06ab
    add ax, word [bx]                ; 0x06ad
    cmp ax, word [bp + 0x4]          ; 0x06af
    jge short @..ds_app_MRJK.l3      ; 0x06b2
    mov ax, word [bp - 0x0002]       ; 0x06b4
    inc ax                           ; 0x06b7
    mov word [bp - 0x0006], ax       ; 0x06b8
    jmp short @..ds_app_MRJK.l4      ; 0x06bb
@..ds_app_MRJK.l3:
    mov ax, bx                       ; 0x06bd
    ret                              ; 0x06bf
@..ds_app_MRJK.l4:
    jmp short @..ds_app_MRJK.l1      ; 0x06c0
@..ds_app_MRJK.l5:
    mov ax, 0                        ; 0x06c2
    ret                              ; 0x06c5
