api_idx_0002:
    mov ax, 0xfffe                   ; 0x019b
    call aztec_csav                  ; 0x019e
    mov ax, word [bp + 0xa]          ; 0x01a1
    mov word [bp - 0x0002], ax       ; 0x01a4
    jmp short @..api_idx_0002.l4     ; 0x01a7
@..api_idx_0002.l1:
    mov bx, word [bss_0e12]          ; 0x01a9
    mov si, word [bp - 0x0002]       ; 0x01ad
    mov al, byte [bx + si + 0x870]   ; 0x01b0
    sub ah, ah                       ; 0x01b4
    cmp ax, word [bp + 0x8]          ; 0x01b6
    je short @..api_idx_0002.l2      ; 0x01b9
    mov ax, 0xffff                   ; 0x01bb
    ret                              ; 0x01be
@..api_idx_0002.l2:
    mov al, byte [bx + si + 0x690]   ; 0x01bf
    sub ah, ah                       ; 0x01c3
    cmp ax, word [bp + 0x4]          ; 0x01c5
    jne short @..api_idx_0002.l3     ; 0x01c8
    mov al, byte [bx + si + 0x780]   ; 0x01ca
    sub ah, ah                       ; 0x01ce
    cmp ax, word [bp + 0x6]          ; 0x01d0
    jne short @..api_idx_0002.l3     ; 0x01d3
    cmp byte [bx + si + 0x5a0], 0    ; 0x01d5
    jbe short @..api_idx_0002.l3     ; 0x01da
    mov al, byte [bx + si + 0x960]   ; 0x01dc
    sub ah, ah                       ; 0x01e0
    push ax                          ; 0x01e2
    mov ax, word [bss_830c]          ; 0x01e3
    mov cx, 4                        ; 0x01e6
    shl ax, cl                       ; 0x01e9
    add ax, 0x8d14                   ; 0x01eb
    push ax                          ; 0x01ee
    call ds_leaf_loc_3ebb            ; 0x01ef
    add sp, byte 4                   ; 0x01f2
    test ax, ax                      ; 0x01f5
    jne short @..api_idx_0002.l3     ; 0x01f7
    mov ax, word [bp - 0x0002]       ; 0x01f9
    ret                              ; 0x01fc
@..api_idx_0002.l3:
    inc word [bp - 0x0002]           ; 0x01fd
@..api_idx_0002.l4:
    cmp word [bp - 0x0002], strict word 0xf0 ; 0x0200
    jl short @..api_idx_0002.l1      ; 0x0205
    mov ax, 0xffff                   ; 0x0207
    ret                              ; 0x020a
