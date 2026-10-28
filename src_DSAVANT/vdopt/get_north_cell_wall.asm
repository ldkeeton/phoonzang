; auto-generated
get_north_cell_wall:
    mov ax, 0                        ; 0x07d9
    call aztec_csav                  ; 0x07dc
    mov ax, word [bp + 6]            ; 0x07df
    dec ax                           ; 0x07e2
    push ax                          ; 0x07e3
    push word [bp + 4]               ; 0x07e4
    lea ax, word [bp + 0xc]          ; 0x07e7
    push ax                          ; 0x07ea
    lea ax, word [bp + 0xa]          ; 0x07eb
    push ax                          ; 0x07ee
    lea ax, word [bp + 8]            ; 0x07ef
    push ax                          ; 0x07f2
    call find_map_piece              ; 0x07f3
    add sp, byte 0xa                 ; 0x07f6
    test ax, ax                      ; 0x07f9
    je short .forward2               ; 0x07fb
    mov ax, word [maze_variant]      ; 0x07fd
    mov cx, 2                        ; 0x0800
    cwd                              ; 0x0803
    idiv cx                          ; 0x0804
    mov ax, dx                       ; 0x0806
    test ax, ax                      ; 0x0808
    je short .forward1               ; 0x080a
    mov ax, cx                       ; 0x080c
    jmp short .return1               ; 0x080e
.forward1:
    mov ax, 4                        ; 0x0810
    mov cx, word [maze_variant]      ; 0x0813
    cmp cx, byte 6                   ; 0x0817
    jne short .return1               ; 0x081a
    mov ax, 0                        ; 0x081c
.return1:
    ret                              ; 0x081f
.forward2:
    mov ax, 4                        ; 0x0820
    push ax                          ; 0x0823
    mov ax, word [bp + 0xc]          ; 0x0824
    mov cx, 6                        ; 0x0827
    shl ax, cl                       ; 0x082a
    mov cx, word [bp + 0xa]          ; 0x082c
    shl cx, 1                        ; 0x082f
    shl cx, 1                        ; 0x0831
    shl cx, 1                        ; 0x0833
    add ax, cx                       ; 0x0835
    add ax, word [bp + 8]            ; 0x0837
    push ax                          ; 0x083a
    mov ax, word [maze_data]         ; 0x083b
    add ax, 0x90                     ; 0x083e
    push ax                          ; 0x0841
    call read_packed_field           ; 0x0842
    add sp, byte 6                   ; 0x0845
    ret                              ; 0x0848
