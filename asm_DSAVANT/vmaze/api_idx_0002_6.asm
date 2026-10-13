api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x0acc
    call aztec_csav                  ; 0x0acf
    mov ax, 0x64                     ; 0x0ad2
    push ax                          ; 0x0ad5
    call ds_app_09f0                 ; 0x0ad6
    pop cx                           ; 0x0ad9
    push ax                          ; 0x0ada
    mov bx, word [bss_0e14]          ; 0x0adb
    mov si, word [bp + 0x4]          ; 0x0adf
    mov al, byte [bx + si + 0xac0]   ; 0x0ae2
    sub ah, ah                       ; 0x0ae6
    mov cx, ax                       ; 0x0ae8
    pop ax                           ; 0x0aea
    cmp ax, cx                       ; 0x0aeb
    jge short @..api_idx_0002_6.l1   ; 0x0aed
    mov ax, 0                        ; 0x0aef
    jmp short @..api_idx_0002_6.l2   ; 0x0af2
@..api_idx_0002_6.l1:
    mov ax, 1                        ; 0x0af4
@..api_idx_0002_6.l2:
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
    call ds_leaf_loc_3f3d            ; 0x0b0d
    add sp, byte 6                   ; 0x0b10
    ret                              ; 0x0b13
loc_0b14:
    mov ax, 0                        ; 0x0b14
    call aztec_csav                  ; 0x0b17
    call loc_0140                    ; 0x0b1a
    cmp word [bp + 0x8], byte 0      ; 0x0b1d
    je short @..loc_0b14.l1          ; 0x0b21
    call ds_app_2bed                 ; 0x0b23
    mov word [bss_8450], ax          ; 0x0b26
    test ax, ax                      ; 0x0b29
    je short @..loc_0b14.l1          ; 0x0b2b
    mov ax, 0                        ; 0x0b2d
    push ax                          ; 0x0b30
    mov ax, 3                        ; 0x0b31
    push ax                          ; 0x0b34
    call ds_app_file_2a2e            ; 0x0b35
    add sp, byte 4                   ; 0x0b38
    mov ax, word [dseg_0112]         ; 0x0b3b
    mov word [bss_844e], ax          ; 0x0b3e
    mov ax, 0                        ; 0x0b41
    push ax                          ; 0x0b44
    push word [bss_844e]             ; 0x0b45
    push ax                          ; 0x0b49
    call ds_app_2bab                 ; 0x0b4a
    add sp, byte 6                   ; 0x0b4d
    mov word [bss_844c], ax          ; 0x0b50
@..loc_0b14.l1:
    mov ax, word [bp + 0x4]          ; 0x0b53
    mov word [bss_8452], ax          ; 0x0b56
    mov ax, word [bp + 0x6]          ; 0x0b59
    mov word [bss_845a], ax          ; 0x0b5c
    mov word [bss_830a], 0xa         ; 0x0b5f
    ret                              ; 0x0b65
