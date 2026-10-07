api_idx_0018:
    mov ax, 0xffe8                   ; 0x4955
    call ds_dispatch_f40b            ; 0x4958
    mov ax, 0x248                    ; 0x495b
    imul word [bp + 0x4]             ; 0x495e
    mov bx, ax                       ; 0x4961
    mov al, byte [bx + 0x5d65]       ; 0x4963
    sub ah, ah                       ; 0x4967
    mov word [bp - 0x0004], ax       ; 0x4969
    mov al, byte [bx + 0x5d66]       ; 0x496c
    sub ah, ah                       ; 0x4970
    mov word [bp - 0x0006], ax       ; 0x4972
    mov al, byte [bx + 0x5d67]       ; 0x4975
    sub ah, ah                       ; 0x4979
    mov word [bp - 0x0008], ax       ; 0x497b
    mov al, byte [bx + 0x5d6a]       ; 0x497e
    sub ah, ah                       ; 0x4982
    mov word [bp - 0x000a], ax       ; 0x4984
    mov al, byte [bx + 0x5e2d]       ; 0x4987
    sub ah, ah                       ; 0x498b
    jmp near loc_4b58                ; 0x498d
    mov ax, word [bp - 0x0004]       ; 0x4990
    add ax, word [bp - 0x0006]       ; 0x4993
    mov cx, data_0002                ; 0x4996
    cwd                              ; 0x4999
    idiv cx                          ; 0x499a
    mov word [bp - 0x000c], ax       ; 0x499c
    mov word [bp - 0x0014], 0        ; 0x499f
    mov word [bp - 0x0016], 0x20     ; 0x49a4
    mov word [bp - 0x0018], 1        ; 0x49a9
    jmp near loc_4b67                ; 0x49ae
    mov ax, word [bp - 0x0006]       ; 0x49b1
    add ax, word [bp - 0x0008]       ; 0x49b4
    mov cx, data_0002                ; 0x49b7
    cwd                              ; 0x49ba
    idiv cx                          ; 0x49bb
    mov word [bp - 0x000c], ax       ; 0x49bd
    mov word [bp - 0x0014], 1        ; 0x49c0
    mov word [bp - 0x0016], 0x1e     ; 0x49c5
    mov word [bp - 0x0018], 1        ; 0x49ca
    jmp near loc_4b67                ; 0x49cf
    mov ax, word [bp - 0x0004]       ; 0x49d2
    add ax, word [bp - 0x0006]       ; 0x49d5
    mov cx, data_0002                ; 0x49d8
    cwd                              ; 0x49db
    idiv cx                          ; 0x49dc
    mov word [bp - 0x000c], ax       ; 0x49de
    mov word [bp - 0x0014], data_0002 ; 0x49e1
    mov word [bp - 0x0016], 0x1d     ; 0x49e6
    mov word [bp - 0x0018], 3        ; 0x49eb
    jmp near loc_4b67                ; 0x49f0
    mov ax, word [bp - 0x0004]       ; 0x49f3
    add ax, word [bp - 0x0006]       ; 0x49f6
    mov cx, data_0002                ; 0x49f9
    cwd                              ; 0x49fc
    idiv cx                          ; 0x49fd
    mov word [bp - 0x000c], ax       ; 0x49ff
    mov word [bp - 0x0014], data_0002 ; 0x4a02
    mov word [bp - 0x0016], 0x1d     ; 0x4a07
    mov word [bp - 0x0018], 1        ; 0x4a0c
    jmp near loc_4b67                ; 0x4a11
    mov ax, word [bp - 0x0004]       ; 0x4a14
    add ax, word [bp - 0x0006]       ; 0x4a17
    mov cx, data_0002                ; 0x4a1a
    cwd                              ; 0x4a1d
    idiv cx                          ; 0x4a1e
    mov word [bp - 0x000c], ax       ; 0x4a20
    mov word [bp - 0x0014], 0        ; 0x4a23
    mov word [bp - 0x0016], 0x20     ; 0x4a28
    mov word [bp - 0x0018], 3        ; 0x4a2d
    jmp near loc_4b67                ; 0x4a32
    mov ax, word [bp - 0x0004]       ; 0x4a35
    add ax, word [bp - 0x0006]       ; 0x4a38
    mov cx, data_0002                ; 0x4a3b
    cwd                              ; 0x4a3e
    idiv cx                          ; 0x4a3f
    mov word [bp - 0x000c], ax       ; 0x4a41
    mov word [bp - 0x0014], 3        ; 0x4a44
    mov word [bp - 0x0016], 0x1f     ; 0x4a49
    mov word [bp - 0x0018], 1        ; 0x4a4e
    jmp near loc_4b67                ; 0x4a53
    mov ax, word [bp - 0x0006]       ; 0x4a56
    add ax, word [bp - 0x0008]       ; 0x4a59
    mov cx, data_0002                ; 0x4a5c
    cwd                              ; 0x4a5f
    idiv cx                          ; 0x4a60
    mov word [bp - 0x000c], ax       ; 0x4a62
    mov word [bp - 0x0014], 1        ; 0x4a65
    mov word [bp - 0x0016], 0x1e     ; 0x4a6a
    mov word [bp - 0x0018], 3        ; 0x4a6f
    jmp near loc_4b67                ; 0x4a74
    mov ax, word [bp - 0x0004]       ; 0x4a77
    add ax, word [bp - 0x0006]       ; 0x4a7a
    mov cx, data_0002                ; 0x4a7d
    cwd                              ; 0x4a80
    idiv cx                          ; 0x4a81
    mov word [bp - 0x000c], ax       ; 0x4a83
    mov ax, 0x248                    ; 0x4a86
    imul word [bp + 0x4]             ; 0x4a89
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c18]       ; 0x4a8e
    cwd                              ; 0x4a92
    idiv cx                          ; 0x4a93
    mov word [bp - 0x0014], dx       ; 0x4a95
    mov ax, 0x1e                     ; 0x4a98
    cmp word [bp - 0x0014], byte 0   ; 0x4a9b
    jne short loc_4aa9               ; 0x4a9f
    mov ax, 0x20                     ; 0x4aa1
    mov word [bp - 0x0016], 0x20     ; 0x4aa4
    mov word [bp - 0x0016], ax       ; 0x4aa9
    mov word [bp - 0x0018], 1        ; 0x4aac
    jmp near loc_4b67                ; 0x4ab1
    mov ax, word [bp - 0x000a]       ; 0x4ab4
    add ax, word [bp - 0x0006]       ; 0x4ab7
    mov cx, data_0002                ; 0x4aba
    cwd                              ; 0x4abd
    idiv cx                          ; 0x4abe
    mov word [bp - 0x000c], ax       ; 0x4ac0
    mov word [bp - 0x0014], 1        ; 0x4ac3
    mov word [bp - 0x0016], 0x1e     ; 0x4ac8
    mov word [bp - 0x0018], 3        ; 0x4acd
    jmp near loc_4b67                ; 0x4ad2
    mov ax, word [bp - 0x0004]       ; 0x4ad5
    db 0x03
@..math_loc_4b3c.l1:
    inc si                           ; 0x4ad9
    cli                              ; 0x4ada
    mov cx, data_0002                ; 0x4adb
    cwd                              ; 0x4ade
@..math_loc_4b3c.l2:
    idiv cx                          ; 0x4adf
    mov word [bp - 0x000c], ax       ; 0x4ae1
    mov word [bp - 0x0014], 0        ; 0x4ae4
    mov word [bp - 0x0016], 0x20     ; 0x4ae9
    mov word [bp - 0x0018], 3        ; 0x4aee
    jmp short loc_4b67               ; 0x4af3
    mov ax, word [bp - 0x0004]       ; 0x4af5
    add ax, word [bp - 0x0006]       ; 0x4af8
    mov cx, data_0002                ; 0x4afb
    cwd                              ; 0x4afe
    idiv cx                          ; 0x4aff
    mov word [bp - 0x000c], ax       ; 0x4b01
    mov word [bp - 0x0014], 3        ; 0x4b04
    mov word [bp - 0x0016], 0x1f     ; 0x4b09
    mov word [bp - 0x0018], 3        ; 0x4b0e
    jmp short loc_4b67               ; 0x4b13
    mov ax, word [bp - 0x0004]       ; 0x4b15
    add ax, word [bp - 0x0006]       ; 0x4b18
    mov cx, data_0002                ; 0x4b1b
    cwd                              ; 0x4b1e
    idiv cx                          ; 0x4b1f
    mov word [bp - 0x000c], ax       ; 0x4b21
    mov word [bp - 0x0014], data_0002 ; 0x4b24
    mov word [bp - 0x0016], 0x1d     ; 0x4b29
    mov word [bp - 0x0018], 5        ; 0x4b2e
    jmp short loc_4b67               ; 0x4b33
loc_4b35:
    mov word [bp - 0x0018], 0        ; 0x4b35
    jmp short loc_4b67               ; 0x4b3a
