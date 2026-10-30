; auto-generated
find_floor_item_slot:
    mov ax, 0xfff8
    call aztec_csav
    mov word [bp - 6], 0xffff
    mov word [bp - 8], 0xffff
    mov ax, word [floor_items]
    mov word [bp - 4], ax
    mov word [bp - 2], 0
    jmp short .forward5
.back1:
    mov bx, word [bp - 4]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, 0xff
    jne short .forward1
    mov ax, word [bp - 2]
    ret
.forward1:
    mov al, byte [bx + 1]
    sub ah, ah
    test ax, 0x40
    jne short .forward4
    cmp word [bp - 6], byte -1
    je short .forward2
    mov ax, 7
    push ax
    call random_below
    pop cx
    test ax, ax
    jne short .forward4
.forward2:
    mov bx, word [bp - 4]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [game_state_arg]
    jne short .forward3
    mov ax, word [bp - 2]
    mov word [bp - 8], ax
    jmp short .forward4
.forward3:
    mov ax, word [bp - 2]
    mov word [bp - 6], ax
.forward4:
    add word [bp - 4], byte 8
    inc word [bp - 2]
.forward5:
    mov ax, word [bp - 2]
    cmp ax, word [floor_item_count]
    jl short .back1
    cmp word [bp + 4], byte 0
    je short .forward7
    cmp word [bp - 6], byte -1
    jne short .forward6
    mov ax, word [bp - 8]
    ret
.forward6:
    mov ax, word [bp - 6]
    ret
.forward7:
    mov ax, 0xffff
    ret
