; auto-generated
load_message_string: ; Aztec csav frame=0x010a
    mov ax, 0xfef6                   ; 0x0782
    call aztec_csav                  ; 0x0785
    push word [bp + 4]               ; 0x0788
    call find_message_record         ; 0x078b
    pop cx                           ; 0x078e
    mov word [bp - 8], ax            ; 0x078f
    test ax, ax                      ; 0x0792
    jne short .forward1              ; 0x0794
    mov word [message_not_found], 1  ; 0x0796
    ret                              ; 0x079c
.forward1:
    mov bx, ax                       ; 0x079d
    mov al, byte [bx + 5]            ; 0x079f
    sub ah, ah                       ; 0x07a2
    cmp ax, word [message_block_current] ; 0x07a4
    je short .forward2               ; 0x07a8
    push ax                          ; 0x07aa
    call load_message_block          ; 0x07ab
    pop cx                           ; 0x07ae
.forward2:
    mov bx, word [bp - 8]            ; 0x07af
    mov ax, word [bx + 2]            ; 0x07b2
    mov word [bp - 2], ax            ; 0x07b5
    mov ax, word [bx]                ; 0x07b8
    mov word [bp - 4], ax            ; 0x07ba
.back1:
    mov ax, word [bp + 4]            ; 0x07bd
    cmp ax, word [bp - 4]            ; 0x07c0
    je short .forward3               ; 0x07c3
    mov bx, word [bp - 2]            ; 0x07c5
    mov al, byte [bx + message_block_buffer] ; 0x07c8
    sub ah, ah                       ; 0x07cc
    add ax, bx                       ; 0x07ce
    inc ax                           ; 0x07d0
    mov word [bp - 2], ax            ; 0x07d1
    inc word [bp - 4]                ; 0x07d4
    jmp short .back1                 ; 0x07d7
.forward3:
    mov bx, word [bp - 2]            ; 0x07d9
    mov al, byte [bx + message_block_buffer] ; 0x07dc
    sub ah, ah                       ; 0x07e0
    mov word [bp - 6], ax            ; 0x07e2
    inc word [bp - 2]                ; 0x07e5
    mov word [bp - 4], ax            ; 0x07e8
    lea ax, word [bp - 0x109]        ; 0x07eb
    mov word [bp - 0xa], ax          ; 0x07ef
    mov ax, word [bp - 2]            ; 0x07f2
    add ax, word [bp - 4]            ; 0x07f5
    cmp ax, 0x400                    ; 0x07f8
    jle short .forward4              ; 0x07fb
    mov ax, 0x400                    ; 0x07fd
    sub ax, word [bp - 2]            ; 0x0800
    push ax                          ; 0x0803
    push word [bp - 0xa]             ; 0x0804
    mov ax, word [bp - 2]            ; 0x0807
    add ax, message_block_buffer     ; 0x080a
    push ax                          ; 0x080d
    call aztec_movmem                ; 0x080e
    add sp, byte 6                   ; 0x0811
    mov ax, 0x400                    ; 0x0814
    sub ax, word [bp - 2]            ; 0x0817
    sub word [bp - 4], ax            ; 0x081a
    add word [bp - 0xa], ax          ; 0x081d
    mov ax, word [message_block_current] ; 0x0820
    inc ax                           ; 0x0823
    push ax                          ; 0x0824
    call load_message_block          ; 0x0825
    pop cx                           ; 0x0828
    mov word [bp - 2], 0             ; 0x0829
.forward4:
    push word [bp - 4]               ; 0x082e
    push word [bp - 0xa]             ; 0x0831
    mov ax, word [bp - 2]            ; 0x0834
    add ax, message_block_buffer     ; 0x0837
    push ax                          ; 0x083a
    call aztec_movmem                ; 0x083b
    add sp, byte 6                   ; 0x083e
    mov bx, word [bp - 6]            ; 0x0841
    add bx, bp                       ; 0x0844
    mov byte [bx - 0x109], 0         ; 0x0846
    push word [bp + 6]               ; 0x084b
    lea ax, word [bp - 0x109]        ; 0x084e
    push ax                          ; 0x0852
    call unpack_record               ; 0x0853
    add sp, byte 4                   ; 0x0856
    mov word [message_not_found], 0  ; 0x0859
    ret                              ; 0x085f
