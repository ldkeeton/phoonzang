; auto-generated
put_long_right_aligned:
    push bp                          ; 0x078a
    mov bp, sp                       ; 0x078b
    add sp, strict word 0xfefc       ; 0x078d
    lea ax, word [bp - 0xff]         ; 0x0791
    push ax                          ; 0x0795
    push word [bp + 6]               ; 0x0796
    push word [bp + 4]               ; 0x0799
    call long_to_str                 ; 0x079c
    add sp, byte 6                   ; 0x079f
    mov byte [bp - 0x101], 0         ; 0x07a2
    mov byte [bp - 0x100], 0         ; 0x07a7
.back1:
    lea ax, word [bp - 0xff]         ; 0x07ac
    push ax                          ; 0x07b0
    call strlen                ; 0x07b1
    pop cx                           ; 0x07b4
    sub ax, word [bp + 8]            ; 0x07b5
    jge short .forward1              ; 0x07b8
    mov ax, long_alignment_space     ; 0x07ba
    push ax                          ; 0x07bd
    call bios_put_text               ; 0x07be
    pop cx                           ; 0x07c1
    dec word [bp + 8]                ; 0x07c2
    jmp short .back1                 ; 0x07c5
.forward1:
    lea ax, word [bp - 0xff]         ; 0x07c7
    push ax                          ; 0x07cb
    call strlen                ; 0x07cc
    pop cx                           ; 0x07cf
    sub ax, word [bp + 8]            ; 0x07d0
    mov word [bp - 0x103], ax        ; 0x07d3
    jmp short .forward2              ; 0x07d7
.back2:
    mov bx, word [bp - 0x103]        ; 0x07d9
    add bx, bp                       ; 0x07dd
    mov al, byte [bx - 0xff]         ; 0x07df
    mov byte [bp - 0x101], al        ; 0x07e3
    lea ax, word [bp - 0x101]        ; 0x07e7
    push ax                          ; 0x07eb
    call bios_put_text               ; 0x07ec
    pop cx                           ; 0x07ef
    inc word [bp - 0x103]            ; 0x07f0
.forward2:
    lea ax, word [bp - 0xff]         ; 0x07f4
    push ax                          ; 0x07f8
    call strlen                ; 0x07f9
    pop cx                           ; 0x07fc
    cmp ax, word [bp - 0x103]        ; 0x07fd
    jg short .back2                  ; 0x0801
    mov sp, bp                       ; 0x0803
    pop bp                           ; 0x0805
    ret                              ; 0x0806
