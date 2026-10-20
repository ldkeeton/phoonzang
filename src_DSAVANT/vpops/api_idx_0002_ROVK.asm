; auto-generated
api_idx_0002_ROVK:
    mov ax, 0xfffe                   ; 0x45b3
    call aztec_csav                  ; 0x45b6
    mov word [bp - 0x0002], 0        ; 0x45b9
@..api_idx_0002_ROVK.l1:
    mov ax, word [bp + 0x4]          ; 0x45be
    shl ax, 1                        ; 0x45c1
    mov bx, ax                       ; 0x45c3
    mov bx, word [bx + party_char_ext] ; 0x45c5
    mov si, word [bp - 0x0002]       ; 0x45c9
    cmp byte [bx + si + 0x86], 0     ; 0x45cc
    je short @..api_idx_0002_ROVK.l2 ; 0x45d1
    mov ax, 2                        ; 0x45d3
    push ax                          ; 0x45d6
    call random_below                ; 0x45d7
    pop cx                           ; 0x45da
    cmp ax, strict word 1            ; 0x45db
    jne short @..api_idx_0002_ROVK.l3 ; 0x45de
@..api_idx_0002_ROVK.l2:
    mov ax, word [bp - 0x0002]       ; 0x45e0
    inc ax                           ; 0x45e3
    mov cx, 3                        ; 0x45e4
    cwd                              ; 0x45e7
    idiv cx                          ; 0x45e8
    mov word [bp - 0x0002], dx       ; 0x45ea
    jmp short @..api_idx_0002_ROVK.l1 ; 0x45ed
@..api_idx_0002_ROVK.l3:
    mov ax, word [bp - 0x0002]       ; 0x45ef
    ret                              ; 0x45f2
