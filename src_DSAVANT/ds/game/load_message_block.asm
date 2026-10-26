; auto-generated
load_message_block:
    mov ax, 0xfffe                   ; 0x06c6
    call aztec_csav                  ; 0x06c9
    mov word [bp - 2], 0             ; 0x06cc
.back1:
    mov ax, word [bp - 2]            ; 0x06d1
    shl ax, 1                        ; 0x06d4
    mov bx, ax                       ; 0x06d6
    mov ax, word [bx + message_cache_ids] ; 0x06d8
    cmp ax, word [bp + 4]            ; 0x06dc
    jne short .forward1              ; 0x06df
    mov ax, 0x400                    ; 0x06e1
    push ax                          ; 0x06e4
    mov ax, message_block_buffer     ; 0x06e5
    push ax                          ; 0x06e8
    mov ax, word [bp - 2]            ; 0x06e9
    mov cx, 0xa                      ; 0x06ec
    shl ax, cl                       ; 0x06ef
    add ax, message_block_buffer + 0x400 ; 0x06f1
    push ax                          ; 0x06f4
    call aztec_movmem                ; 0x06f5
    add sp, byte 6                   ; 0x06f8
    mov ax, word [bp + 4]            ; 0x06fb
    mov word [message_block_current], ax ; 0x06fe
    ret                              ; 0x0701
.forward1:
    inc word [bp - 2]                ; 0x0702
    mov ax, word [bp - 2]            ; 0x0705
    cmp ax, strict word 4            ; 0x0708
    jl short .back1                  ; 0x070b
    mov ax, 0                        ; 0x070d
    push ax                          ; 0x0710
    call gfx_wait_sound              ; 0x0711
    pop cx                           ; 0x0714
    mov ax, 0                        ; 0x0715
    push ax                          ; 0x0718
    mov ax, word [bp + 4]            ; 0x0719
    cwd                              ; 0x071c
    mov cx, 0xa                      ; 0x071d
.back2:
    shl ax, 1                        ; 0x0720
    rcl dx, 1                        ; 0x0722
    loop .back2                      ; 0x0724
    push dx                          ; 0x0726
    push ax                          ; 0x0727
    push word [msg_dbs_fd]           ; 0x0728
    call aztec_lseek                 ; 0x072c
    add sp, byte 8                   ; 0x072f
    mov ax, 0x400                    ; 0x0732
    push ax                          ; 0x0735
    mov ax, message_block_buffer     ; 0x0736
    push ax                          ; 0x0739
    push word [msg_dbs_fd]           ; 0x073a
    call aztec_read                  ; 0x073e
    add sp, byte 6                   ; 0x0741
    mov ax, word [bp + 4]            ; 0x0744
    mov word [message_block_current], ax ; 0x0747
    mov ax, 0x400                    ; 0x074a
    push ax                          ; 0x074d
    mov ax, word [message_cache_next] ; 0x074e
    mov cx, 0xa                      ; 0x0751
    shl ax, cl                       ; 0x0754
    add ax, message_block_buffer + 0x400 ; 0x0756
    push ax                          ; 0x0759
    mov ax, message_block_buffer     ; 0x075a
    push ax                          ; 0x075d
    call aztec_movmem                ; 0x075e
    add sp, byte 6                   ; 0x0761
    mov ax, word [bp + 4]            ; 0x0764
    mov cx, word [message_cache_next] ; 0x0767
    shl cx, 1                        ; 0x076b
    mov bx, cx                       ; 0x076d
    mov word [bx + message_cache_ids], ax ; 0x076f
    mov ax, word [message_cache_next] ; 0x0773
    inc ax                           ; 0x0776
    mov cx, 4                        ; 0x0777
    cwd                              ; 0x077a
    idiv cx                          ; 0x077b
    mov word [message_cache_next], dx ; 0x077d
    ret                              ; 0x0781
