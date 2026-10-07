api_idx_0014:
    mov ax, 0xffec                   ; 0x09c0
    call ds_dispatch_f40b            ; 0x09c3
    mov word [bp - 0x000e], 0xffff   ; 0x09c6
    mov ax, word [data_8f42]         ; 0x09cb
    mov word [bp - 0x0008], ax       ; 0x09ce
    mov ax, word [data_8f40]         ; 0x09d1
    mov word [bp - 0x000a], ax       ; 0x09d4
    mov ax, word [data_8f3e]         ; 0x09d7
    mov word [bp - 0x000c], ax       ; 0x09da
    push word [bp + 0x6]             ; 0x09dd
    push word [bp + 0x4]             ; 0x09e0
    lea ax, word [bp - 0x000c]       ; 0x09e3
    push ax                          ; 0x09e6
    lea ax, word [bp - 0x000a]       ; 0x09e7
    push ax                          ; 0x09ea
    lea ax, word [bp - 0x0008]       ; 0x09eb
    push ax                          ; 0x09ee
    call api_idx_0004                ; 0x09ef
    add sp, byte 0x0a                ; 0x09f2
    test ax, ax                      ; 0x09f5
    je short @..api_idx_0014.l3      ; 0x09f7
    cmp word [bp + 0xc], byte 0      ; 0x09f9
    jne short @..api_idx_0014.l1     ; 0x09fd
    mov ax, 0x24                     ; 0x09ff
    imul word [bp + 0x8]             ; 0x0a02
    mov cx, word [bp + 0xa]          ; 0x0a05
    shl cx, 1                        ; 0x0a08
    add ax, cx                       ; 0x0a0a
    mov bx, ax                       ; 0x0a0c
    mov word [bx - 0x6f46], 0xffff   ; 0x0a0e
    jmp short @..api_idx_0014.l2     ; 0x0a14
@..api_idx_0014.l1:
    mov ax, word [data_9342]         ; 0x0a16
    push ax                          ; 0x0a19
    mov ax, 0x24                     ; 0x0a1a
    imul word [bp + 0x8]             ; 0x0a1d
    mov cx, ax                       ; 0x0a20
    mov dx, word [bp + 0xa]          ; 0x0a22
    shl dx, 1                        ; 0x0a25
    add ax, dx                       ; 0x0a27
    mov bx, ax                       ; 0x0a29
    pop ax                           ; 0x0a2b
    mov word [bx - 0x6f46], ax       ; 0x0a2c
    mov ax, word [data_9344]         ; 0x0a30
    mov word [bx - 0x6cba], ax       ; 0x0a33
    mov ax, word [data_95ce]         ; 0x0a37
    mov word [bx - 0x6a30], ax       ; 0x0a3a
@..api_idx_0014.l2:
    ret                              ; 0x0a3e
