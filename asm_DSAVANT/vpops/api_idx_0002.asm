api_idx_0002:
    mov ax, 0xfffe                   ; 0x1941
    call aztec_csav                  ; 0x1944
    mov word [bp - 0x0002], 0        ; 0x1947
@..api_idx_0002.l1:
    cmp word [bp + 0x4], byte 0      ; 0x194c
    jl short @..api_idx_0002.l2      ; 0x1950
    mov ax, word [bp - 0x0002]       ; 0x1952
    cmp ax, word [bp + 0x4]          ; 0x1955
    jne short @..api_idx_0002.l3     ; 0x1958
@..api_idx_0002.l2:
    mov ax, word [bp - 0x0002]       ; 0x195a
    shl ax, 1                        ; 0x195d
    mov bx, ax                       ; 0x195f
    inc word [bx - 0x7cf2]           ; 0x1961
@..api_idx_0002.l3:
    mov ax, 0x14                     ; 0x1965
    imul word [bp - 0x0002]          ; 0x1968
    mov cx, word [bp - 0x0002]       ; 0x196b
    shl cx, 1                        ; 0x196e
    mov bx, cx                       ; 0x1970
    mov cx, word [bx - 0x7cf2]       ; 0x1972
    shl cx, 1                        ; 0x1976
    add ax, cx                       ; 0x1978
    mov bx, ax                       ; 0x197a
    cmp word [bx + 0x1d4], byte 0xff ; 0x197c
    jne short @..api_idx_0002.l4     ; 0x1981
    mov ax, word [bp - 0x0002]       ; 0x1983
    shl ax, 1                        ; 0x1986
    mov bx, ax                       ; 0x1988
    mov word [bx - 0x7cf2], 0        ; 0x198a
@..api_idx_0002.l4:
    inc word [bp - 0x0002]           ; 0x1990
    mov ax, word [bp - 0x0002]       ; 0x1993
    cmp ax, strict word 6            ; 0x1996
    jl short @..api_idx_0002.l1      ; 0x1999
    ret                              ; 0x199b
