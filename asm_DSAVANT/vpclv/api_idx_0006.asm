api_idx_0006:
    mov ax, 0xfffa                   ; 0x2a85
    call ds_dispatch_f40b            ; 0x2a88
    mov word [bp - 0x0002], 0        ; 0x2a8b
@..api_idx_0006.l1:
    mov ax, 0x248                    ; 0x2a90
    imul word [bp + 0x4]             ; 0x2a93
    add ax, word [bp - 0x0002]       ; 0x2a96
    mov bx, ax                       ; 0x2a99
    mov byte [bx + 0x5d8e], 0        ; 0x2a9b
    mov ax, 0x248                    ; 0x2aa0
    imul word [bp + 0x4]             ; 0x2aa3
    mov bx, ax                       ; 0x2aa6
    mov ax, word [bx + 0x5c18]       ; 0x2aa8
    push ax                          ; 0x2aac
    mov al, byte [bx + 0x5e3b]       ; 0x2aad
    sub ah, ah                       ; 0x2ab1
    mov cx, ax                       ; 0x2ab3
    pop ax                           ; 0x2ab5
    cmp ax, cx                       ; 0x2ab6
    jge short @..api_idx_0006.l2     ; 0x2ab8
    mov ax, cx                       ; 0x2aba
    jmp short @..api_idx_0006.l3     ; 0x2abc
@..api_idx_0006.l2:
    mov ax, word [bx + 0x5c18]       ; 0x2abe
@..api_idx_0006.l3:
    mov word [bp - 0x0006], ax       ; 0x2ac2
    mov ax, 0x10                     ; 0x2ac5
    cmp word [bp - 0x0006], byte 0x10 ; 0x2ac8
    jg short @..api_idx_0006.l4      ; 0x2acc
    mov ax, word [bp - 0x0006]       ; 0x2ace
    dec ax                           ; 0x2ad1
@..api_idx_0006.l4:
    mov word [bp - 0x0006], ax       ; 0x2ad2
    mov bx, word [bp + 0x8]          ; 0x2ad5
    mov si, word [bp - 0x0002]       ; 0x2ad8
    mov al, byte [bx + si]           ; 0x2adb
    cbw                              ; 0x2add
    add ax, strict word 0xffd0       ; 0x2ade
    imul word [bp - 0x0006]          ; 0x2ae1
    push ax                          ; 0x2ae4
    mov bx, word [bp + 0x6]          ; 0x2ae5
    mov al, byte [bx + si]           ; 0x2ae8
    cbw                              ; 0x2aea
    mov cx, ax                       ; 0x2aeb
    shl ax, 1                        ; 0x2aed
    shl ax, 1                        ; 0x2aef
    mov cx, ax                       ; 0x2af1
    pop ax                           ; 0x2af3
    add ax, cx                       ; 0x2af4
    add ax, 0xfefc                   ; 0x2af6
    mov word [bp - 0x0004], ax       ; 0x2af9
    push ax                          ; 0x2afc
    push si                          ; 0x2afd
    mov ax, 0                        ; 0x2afe
    push ax                          ; 0x2b01
    push word [bp + 0x4]             ; 0x2b02
    call math_loc_2a32               ; 0x2b05
    add sp, byte 8                   ; 0x2b08
    inc word [bp - 0x0002]           ; 0x2b0b
    mov ax, word [bp - 0x0002]       ; 0x2b0e
    cmp ax, strict word 0xe          ; 0x2b11
    jge short @..api_idx_0006.l5     ; 0x2b14
    jmp near @..api_idx_0006.l1      ; 0x2b16
@..api_idx_0006.l5:
    ret                              ; 0x2b19
