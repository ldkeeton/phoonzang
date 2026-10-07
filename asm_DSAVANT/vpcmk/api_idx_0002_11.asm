api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x56b0
    call ds_dispatch_f40b            ; 0x56b3
    mov ax, word [bp + 0x6]          ; 0x56b6
    shl ax, 1                        ; 0x56b9
    mov bx, ax                       ; 0x56bb
    mov ax, word [bx - 0x69f8]       ; 0x56bd
    cwd                              ; 0x56c1
    idiv word [bp + 0x8]             ; 0x56c2
    push ax                          ; 0x56c5
    mov ax, 0x248                    ; 0x56c6
    imul word [bp + 0x4]             ; 0x56c9
    mov bx, ax                       ; 0x56cc
    mov ax, word [bx + 0x5c18]       ; 0x56ce
    dec ax                           ; 0x56d2
    mov cx, data_0002                ; 0x56d3
    cwd                              ; 0x56d6
    idiv cx                          ; 0x56d7
    mov cx, ax                       ; 0x56d9
    pop ax                           ; 0x56db
    sub ax, cx                       ; 0x56dc
    mov word [bp - 0x0002], ax       ; 0x56de
    cmp ax, strict word 0            ; 0x56e1
    jge short @..api_idx_0002_11.l1  ; 0x56e4
    mov word [bp - 0x0002], 0        ; 0x56e6
@..api_idx_0002_11.l1:
    mov ax, word [bp + 0x6]          ; 0x56eb
    shl ax, 1                        ; 0x56ee
    mov bx, ax                       ; 0x56f0
    mov ax, word [bx - 0x69f8]       ; 0x56f2
    cmp ax, word [bp - 0x0002]       ; 0x56f6
    jge short @..api_idx_0002_11.l2  ; 0x56f9
    mov word [bp - 0x0002], ax       ; 0x56fb
@..api_idx_0002_11.l2:
    mov ax, word [bp - 0x0002]       ; 0x56fe
    sub word [bx - 0x69f8], ax       ; 0x5701
    ret                              ; 0x5705
