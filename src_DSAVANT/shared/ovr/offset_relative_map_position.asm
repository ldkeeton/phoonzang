; auto-generated
offset_relative_map_position:
    mov ax, 0
    call aztec_csav
    mov ax, word [party_tag]
    jmp short .forward1
.back1:
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 4]
    add word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 6]
    add word [bx], ax
    jmp short .forward2
.back2:
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 4]
    add word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 6]
    sub word [bx], ax
    jmp short .forward2
.back3:
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 4]
    sub word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 6]
    sub word [bx], ax
    jmp short .forward2
.back4:
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 4]
    sub word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 6]
    add word [bx], ax
    jmp short .forward2
.forward1:
    cmp ax, strict word 0
    je short .back1
    cmp ax, strict word 1
    je short .back2
    cmp ax, strict word 2
    je short .back3
    cmp ax, strict word 3
    je short .back4
.forward2:
    mov bx, word [bp + 6]
    push word [bx]
    mov bx, word [bp + 4]
    push word [bx]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 8]
    call find_map_piece
    add sp, byte 0xa
    ret
