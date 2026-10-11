api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x119e
    db 0xe8, 0x67, 0xe2 ; call 0xf40b
    db 0xe8, 0x70, 0xda ; call 0xec17
    mov ax, word [bp + 0x4]          ; 0x11a7
    cwd                              ; 0x11aa
    les bx, word [dseg_0002]         ; 0x11ab
    mov cx, word [es:bx]             ; 0x11af
    mov bx, word [es:bx + 0x2]       ; 0x11b2
    add ax, cx                       ; 0x11b6
    adc dx, bx                       ; 0x11b8
    mov word [bp - 0x0002], dx       ; 0x11ba
    mov word [bp - 0x0004], ax       ; 0x11bd
@..api_idx_0004_5.l1:
    les bx, word [dseg_0002]         ; 0x11c0
    mov ax, word [es:bx]             ; 0x11c4
    mov dx, word [es:bx + 0x2]       ; 0x11c7
    cmp dx, word [bp - 0x0002]       ; 0x11cb
    jg short @..api_idx_0004_5.l2    ; 0x11ce
    jne short @..api_idx_0004_5.l3   ; 0x11d0
    cmp ax, word [bp - 0x0004]       ; 0x11d2
    jb short @..api_idx_0004_5.l3    ; 0x11d5
@..api_idx_0004_5.l2:
    jmp short @..api_idx_0004_5.l6   ; 0x11d7
@..api_idx_0004_5.l3:
    db 0xe8, 0x13, 0xa9 ; call 0xbaef
    test ax, ax                      ; 0x11dc
    je short @..api_idx_0004_5.l4    ; 0x11de
    ret                              ; 0x11e0
@..api_idx_0004_5.l4:
    cmp word [bp + 0x6], byte 0      ; 0x11e1
    je short @..api_idx_0004_5.l5    ; 0x11e5
    cmp word [dseg_59fc], byte 0     ; 0x11e7
    je short @..api_idx_0004_5.l5    ; 0x11ec
    call api_idx_0004_4              ; 0x11ee
    ret                              ; 0x11f1
@..api_idx_0004_5.l5:
    call api_idx_0006_2              ; 0x11f2
    jmp short @..api_idx_0004_5.l1   ; 0x11f5
@..api_idx_0004_5.l6:
    ret                              ; 0x11f7
