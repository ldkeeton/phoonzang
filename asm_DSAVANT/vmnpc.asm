%include "structs/structs.inc"
%include "structs/vmnpc.inc"
org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0xcf, 0xae, 0x98, 0x90 ; header (8 bytes)

leaf_loc_0008:
    db 0x9c, 0x00, 0x22, 0x1f, 0x57, 0xfe
api_idx_0008:
    mov ax, 0xfff8
    call 0xf40b
    mov word [bp - 0x0008], 0
    cmp word [bp + 0xa], byte 0xff
    jne short 0x3c
    mov word [bp + 0xa], 0
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    je short 0x3c
    mov word [bp - 0x0008], 1
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    mov word [bp - 0x0002], ax
    jmp near 0x1ac
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x6a22]
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp word [bp + 0xa], byte 0
    jne short 0x9d
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    jbe short 0x9d
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    jge short 0x9d
    cmp ax, 0xfd
    jne short 0x98
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    jmp short 0x9b
    mov word [bp - 0x0006], ax
    jmp short 0xde
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x6a2c]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    add word [bp - 0x0004], ax
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a40]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp word [bp - 0x0008], byte 0
    je short 0xde
    mov al, byte [bx + 0x6a4a]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    add word [bp - 0x0006], ax
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 3
    imul word [bp + 0x6]
    mov cx, ax
    add ax, word [bp + 0x8]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7bd0], al
    mov al, byte [bp - 0x0004]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cde], al
    mov al, byte [bp - 0x0006]
    mov byte [bx - 0x7cdd], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac1]
    inc al
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdc], al
    mov al, byte [bx - 0x7cdc]
    sub ah, ah
    mov cx, ax
    push cx
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac2]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    pop cx
    add ax, cx
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdc], al
    inc word [bp - 0x0002]
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x6a1e]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    cmp ax, word [bp - 0x0002]
    jle short 0x1d1
    jmp near 0x53
    ret
api_idx_000c:
    mov ax, 0xfff4
    call 0xf40b
    mov word [bp - 0x000c], 0
    mov ax, 0x15e
    imul word [bp + 0x4]
    push ax
    mov ax, 3
    imul word [bp + 0x6]
    add ax, word [bp + 0x8]
    mov bx, ax
    mov al, byte [bx - 0x7bd0]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    mov word [bp - 0x0002], ax
    jmp near 0x4a7
    mov ax, 0x5a
    imul word [bp + 0x6]
    push ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7cdd]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x5b48], 0x18
    jne short 0x25e
    cmp word [0x9134], byte 1
    jne short 0x25e
    mov ax, 0x15e
    imul bx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp byte [bx + 0x6ac0], 4
    jne short 0x25e
    mov word [bp + 0xa], 0
    mov ax, 0x5a
    imul word [bp + 0x6]
    push ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7cdc]
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp word [bp + 0xa], byte 0
    je short 0x290
    dec word [bp - 0x0008]
    cmp word [bp - 0x0008], byte 0
    jle short 0x299
    jmp near 0x3de
    mov al, byte [bx - 0x7cde]
    sub ah, ah
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0006]
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add cx, ax
    mov bx, cx
    mov al, byte [bx + 0x6a40]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x6a4a]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    cmp ax, word [bp - 0x0006]
    jl short 0x2cf
    jmp near 0x37b
    mov ax, 3
    imul word [bp + 0x6]
    add ax, word [bp + 0x8]
    mov bx, ax
    cmp byte [bx - 0x7bd0], 0
    je short 0x310
    mov byte [bx - 0x7bd0], 0
    mov ax, 0
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0008
    add sp, byte 8
    push word [bp + 0xc]
    mov ax, 0
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_000c
    add sp, byte 0x0a
    ret
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x6a2c]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x6a22]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [bp - 0x0004]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cde], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a40]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov al, byte [bp - 0x0006]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdd], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac2]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac1]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0008], ax
    mov al, byte [bp - 0x0008]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdc], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac0]
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x000c]
    mov byte [bx + si], al
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x5b48], 0x47
    jne short 0x465
    mov ax, 0x5a
    imul word [bp + 0x6]
    push ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7cde]
    sub ah, ah
    xchg al, ah
    sub al, al
    push ax
    mov al, byte [bx - 0x7cdd]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [0x8460], ax
    cmp word [0x9136], byte 0x23
    je short 0x473
    cmp word [0x9136], byte 0x0b
    jne short 0x496
    inc word [bp - 0x000c]
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x000c]
    mov al, byte [bx + si - 0x0001]
    mov byte [bx + si], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x6b76]
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x000c]
    mov byte [bx + si - 0x0001], al
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x000c]
    cmp byte [bx + si], 0
    je short 0x4a4
    inc word [bp - 0x000c]
    inc word [bp - 0x0002]
    mov ax, 0x15e
    imul word [bp + 0x4]
    push ax
    mov ax, 3
    imul word [bp + 0x6]
    add ax, word [bp + 0x8]
    mov bx, ax
    mov al, byte [bx - 0x7bd0]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x6a1e]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    cmp ax, word [bp - 0x0002]
    jle short 0x4e0
    jmp near 0x208
    cmp word [0x9136], byte 0x3c
    jge short 0x4ea
    jmp near 0x587
    cmp word [0x9136], byte 0x3e
    jle short 0x4f4
    jmp near 0x587
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [0x9134]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac0]
    mov bx, word [bp + 0xc]
    mov byte [bx], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [0x9134]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac1]
    mov bx, word [bp + 0xc]
    mov byte [bx + 0x1], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [0x9134]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac2]
    mov bx, word [bp + 0xc]
    mov byte [bx + 0x2], al
    mov bx, word [bp + 0xc]
    mov byte [bx + 0x3], 0
    mov word [bp - 0x000c], 3
    mov ax, word [0x9134]
    jmp short 0x578
    mov bx, word [bp + 0xc]
    mov al, byte [bx]
    sub ah, ah
    add ax, word [0x82e8]
    mov byte [bx], al
    jmp short 0x587
    mov bx, word [bp + 0xc]
    mov al, byte [bx + 0x1]
    sub ah, ah
    add ax, word [0x82e8]
    mov byte [bx + 0x1], al
    jmp short 0x587
    cmp ax, strict word 1
    je short 0x558
    cmp ax, strict word 2
    je short 0x558
    cmp ax, strict word 0x14
    je short 0x567
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    jmp short 0x5ed
    cmp word [0x9134], byte 1
    jne short 0x59e
    mov word [bp - 0x000c], 1
    jmp short 0x601
    cmp word [0x9134], byte 1
    jne short 0x5ac
    mov word [bp - 0x000c], 1
    cmp word [0x9134], byte 2
    jne short 0x5bf
    mov ax, word [0x82e8]
    inc ax
    inc ax
    inc ax
    mov bx, word [bp + 0xc]
    mov byte [bx + 0x1], al
    jmp short 0x601
    cmp word [0x9134], byte 1
    jne short 0x5cf
    mov bx, word [bp + 0xc]
    mov byte [bx + 0x1], 2
    mov word [bp - 0x000c], 2
    jmp short 0x601
    cmp word [0x9134], byte 1
    jne short 0x5e6
    mov ax, word [0x82e8]
    inc ax
    mov bx, word [bp + 0xc]
    mov byte [bx], al
    mov word [bp - 0x000c], 1
    jmp short 0x601
    cmp ax, strict word 0x34
    je short 0x592
    cmp ax, strict word 0x37
    je short 0x5a0
    cmp ax, strict word 0x46
    je short 0x5c1
    cmp ax, strict word 0x49
    je short 0x5d6
    cmp word [0x9136], byte 0x2d
    je short 0x60f
    cmp word [0x9136], byte 0x32
    jne short 0x623
    cmp word [0x9134], byte 0
    jle short 0x623
    mov al, byte [0x9134]
    mov bx, word [bp + 0xc]
    mov byte [bx], al
    mov word [bp - 0x000c], 1
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x000c]
    mov byte [bx + si], 0
    ret
api_idx_0004:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8468]
    jge short 0x658
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jg short 0x658
    inc word [bp - 0x0002]
    jmp short 0x638
    mov ax, word [0x8468]
    mov word [bp - 0x0004], ax
    jmp short 0x67b
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov si, word [bx - 0x7b98]
    mov di, word [bx - 0x7b96]
    mov cx, ds
    mov es, cx
    mov cx, 0xc
    rep movsw
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jg short 0x660
    mov al, byte [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], al
    mov al, byte [bp + 0x6]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x15], al
    mov ax, word [bp + 0x8]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0xc]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx + 0x4], ax
    mov ax, word [bp + 0xe]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx + 0x6], ax
    mov al, byte [bp + 0x10]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x16], al
    mov al, byte [bp + 0x12]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x17], al
    push word [bp + 0x14]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b96]
    add ax, strict word 8
    push ax
    call 0xf364
    add sp, byte 4
    inc word [0x8468]
    ret
api_idx_0018:
    mov ax, 0xffe8
    call 0xf40b
    mov byte [bp - 0x0018], 0
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx - 0x7bc6]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0
    jne short 0x74e
    ret
    lea ax, word [bp - 0x0018]
    push ax
    push word [bp + 0x10]
    push word [bp + 0x6]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call api_idx_000c
    add sp, byte 0x0a
    cmp byte [bp - 0x0018], 0
    jne short 0x76b
    ret
    cmp word [0x9136], byte 0x3e
    jne short 0x77e
    cmp word [0x9134], byte 0x12
    jne short 0x77e
    mov ax, 1
    jmp short 0x789
    mov ax, word [bp + 0x6]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov word [bp - 0x0004], ax
    mov al, byte [bp - 0x0018]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    je short 0x7a8
    mov word [bp + 0x8], 0
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6abf]
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0008], byte 0
    jne short 0x7da
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5da]
    mov word [bp - 0x0008], ax
    jmp short 0x807
    mov ax, 0x64
    push ax
    mov ax, 5
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0
    je short 0x7f6
    mov ax, 5
    add cx, ax
    mov ax, word [bp - 0x0008]
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 2
    cwd
    idiv cx
    mov cx, dx
    pop ax
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6b60]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x6a9b]
    sub ah, ah
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6b61]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x000c], ax
    mov bx, word [bp - 0x0002]
    cmp byte [bx + 0x5b48], 0x18
    jne short 0x8b7
    cmp word [0x9134], byte 1
    jne short 0x8b7
    cmp byte [bp - 0x0018], 4
    jne short 0x8b7
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    add ax, word [bp - 0x000a]
    dec ax
    mov word [bp - 0x000a], ax
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    add word [bp - 0x000c], ax
    mov ax, 0xa0
    sub ax, word [bp - 0x000a]
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x000a], ax
    mov ax, word [bp - 0x0004]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short 0x913
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp - 0x0004]
    mov bx, 2
    cwd
    idiv bx
    mov ax, dx
    add cx, ax
    mov ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bp - 0x000a], ax
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000a]
    add ax, word [bp + 0x8]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 0x3d
    sub ax, word [bp - 0x000c]
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x000c], ax
    lea ax, word [bp - 0x0018]
    push ax
    push word [bp + 0xa]
    push word [bp - 0x0004]
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0002]
    push word [bp - 0x0008]
    call api_idx_0004
    add sp, byte 0x12
    ret
api_idx_000e:
    mov ax, 0xfff2
    call 0xf40b
    cmp word [0x8f20], byte 0
    jg short 0x971
    jmp near 0xa1b
    mov ax, word [0x82ee]
    mov cx, word [0x8f20]
    dec cx
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, dx
    jmp short 0x9c6
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short 0x99f
    mov ax, 4
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short 0x9da
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short 0x9c1
    mov ax, 1
    mov word [bp - 0x0004], ax
    jmp short 0x9da
    cmp ax, strict word 0
    je short 0x98b
    cmp ax, strict word 1
    je short 0x9ad
    cmp ax, strict word 2
    je short 0x98b
    cmp ax, strict word 3
    je short 0x9ad
    lea ax, word [bp - 0x000e]
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [bp - 0x000e]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx + 0x6eb5]
    sub ah, ah
    inc ax
    push ax
    shl bx, 1
    mov ax, bx
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6e6c]
    sub ah, ah
    inc ax
    push ax
    mov ax, 3
    push ax
    mov ax, 0x1b
    push ax
    call api_idx_0004
    add sp, byte 0x12
    cmp word [0x8f20], byte 0xff
    jne short 0xa55
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 0
    lea ax, word [bp - 0x000e]
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [0x7b04]
    sub ah, ah
    push ax
    mov al, byte [0x7abc]
    sub ah, ah
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x1c
    push ax
    call api_idx_0004
    add sp, byte 0x12
    ret
loc_0a56:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, 0xff
    je short 0xab1
    mov al, byte [bx + 0x17]
    sub ah, ah
    push ax
    mov ax, 0
    push ax
    add bx, byte 8
    mov ax, bx
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x16]
    sub ah, ah
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x21
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    push word [bx + 0x2]
    push word [bx]
    mov al, byte [bx + 0x15]
    sub ah, ah
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
api_idx_000a:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, 0
    push ax
    push word [0x8d10]
    push word [0x8d0e]
    call 0xe94f
    add sp, byte 6
    mov ax, 0
    push ax
    push word [0x8d0c]
    push word [0x8d0a]
    call 0xe94f
    add sp, byte 6
    mov byte [bp - 0x000a], 1
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0x37
    push ax
    mov ax, 0xe
    push ax
    call 0xefd1
    add sp, byte 0x16
    cmp word [bp + 0x4], byte 0
    je short 0xb2f
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x93
    push ax
    mov ax, 8
    push ax
    call 0xe8da
    add sp, byte 8
    ret
math_loc_0b30:
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call 0xe823
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 0x6]
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    ret
api_idx_0006:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [bp + 0x4]
    jmp near 0xc7b
    mov ax, 0x9098
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0xe0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xc459
    add sp, byte 4
    jmp near 0xc95
    mov ax, 0x909f
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, 0x90a6
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0xe7
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    mov ax, 0x90ad
    push ax
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call 0xc459
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    call 0xc459
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xc459
    add sp, byte 4
    jmp short 0xc95
    mov ax, 0x90b4
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 8
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xc459
    add sp, byte 4
    jmp short 0xc95
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    jmp short 0xc95
    cmp ax, strict word 0
    jne short 0xc83
    jmp near 0xb80
    cmp ax, strict word 1
    jne short 0xc8b
    jmp near 0xbb5
    cmp ax, strict word 2
    je short 0xc3d
    cmp ax, strict word 3
    je short 0xc71
    ret
loc_0c96:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    jmp near 0xd2e
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0xe7
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0xd45
    mov ax, 0xc2
    push ax
    mov ax, 0xe0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0xd45
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0xd45
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x93
    push ax
    mov ax, 8
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0xd45
    cmp ax, strict word 0
    jne short 0xd36
    jmp near 0xca2
    cmp ax, strict word 1
    je short 0xce6
    cmp ax, strict word 2
    je short 0xcfe
    cmp ax, strict word 3
    je short 0xd16
    ret
api_idx_0054:
    mov ax, 0xffac
    call 0xf40b
    mov ax, 1
    push ax
    call api_idx_0006
    pop cx
    mov ax, 0x5f
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0xdd
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0x5f
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0xa4
    push ax
    mov ax, 0x63
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90bb
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9138
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0xa4
    push ax
    mov ax, 0xce
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90be
    push ax
    call 0xe84e
    add sp, byte 4
    ret
api_idx_0002:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    mov cx, 7
    shl ax, cl
    add ax, 0x924c
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6c32]
    mov word [bx - 0x6c34], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0xdce
    mov byte [0x934c], 0
    mov word [0x93d2], 0
    mov word [0x93d4], 3
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call 0xf40b
    cmp word [0x93d4], byte 2
    jle short 0xe27
    call api_idx_0002
    jmp short 0xe2b
    inc word [0x93d4]
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6c34], byte 0
    je short 0xe6f
    mov ax, 2
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xe883
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0002], ax
    jmp short 0xe74
    mov word [bp - 0x0002], 0x44
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    cmp word [bx - 0x6c34], byte 0
    je short 0xe8d
    mov cx, 0x92
    jmp short 0xe90
    mov cx, 0x97
    add ax, cx
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6c34], byte 0
    je short 0xeb3
    mov ax, 0x55
    jmp short 0xeb6
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6c34]
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jge short 0xee8
    jmp near 0xe38
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    ret
loc_0ef1:
    mov ax, 0
    call 0xf40b
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x9090], dx
    mov word [0x908e], ax
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    sub ax, word [0x908a]
    sbb dx, word [0x908c]
    mov word [0x9094], dx
    mov word [0x9092], ax
    mov ax, word [0x93d6]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0xf38
    jne short 0xf3a
    cmp cx, ax
    jbe short 0xf3a
    jmp short 0xf4c
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, 1
    ret
    mov ax, 0
    ret
api_idx_0006_2:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [0x845e]
    jmp near 0x1072
    push word [0x93d8]
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x108c
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [0x908a]
    sbb dx, word [0x908c]
    push ax
    push dx
    mov ax, word [0x93d6]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short 0xf9e
    jne short 0xfa0
    cmp ax, cx
    jae short 0xfa0
    jmp short 0xfae
    mov ax, word [0x906c]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x906c], dx
    mov ax, 0
    push ax
    push ax
    mov ax, word [0x906c]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6f9e]
    push word [bx - 0x6fa0]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], 0xff
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short 0xfcf
    mov word [0x8468], 0
    jmp near 0x108c
    call loc_0ef1
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    push word [bp - 0x0006]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov cx, word [bx + 0x5c8]
    mov ax, 0x64
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call api_idx_0018
    add sp, byte 0x0e
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short 0x1002
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0xffd
    call api_idx_000e
    cmp word [bp - 0x0006], byte 0
    je short 0x1063
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    call 0xda22
    jmp short 0x108c
    push word [0x845e]
    call loc_0a56
    pop cx
    jmp short 0x108c
    cmp ax, strict word 0xfffd
    jne short 0x107a
    jmp near 0xf5c
    cmp ax, strict word 0xfffe
    jne short 0x1082
    jmp near 0xf75
    cmp ax, strict word 0xffff
    jne short 0x108a
    jmp near 0xff2
    jmp short 0x1068
    inc word [0x845e]
    mov ax, word [0x845e]
    cmp ax, strict word 0xc
    jne short 0x109e
    mov word [0x845e], 0xfffd
    ret
loc_109f:
    mov ax, 0
    call 0xf40b
    mov word [0x845e], 0xfffe
    call api_idx_0006_2
    cmp word [0x845e], byte 0xfe
    jne short 0x10ab
    ret
loc_10b6:
    mov ax, 0
    call 0xf40b
    cmp word [0x845e], byte 0xfe
    je short 0x10c8
    call api_idx_0006_2
    jmp short 0x10bc
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call 0xf40b
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    cmp word [bp + 0x14], byte 0xff
    je short 0x1102
    push word [bp + 0x14]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0x12]
    push word [bp + 0x10]
    call 0xe823
    add sp, byte 4
    push word [bp + 0xe]
    push word [bp + 0xc]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x16]
    call 0xe84e
    add sp, byte 4
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    call 0xe94f
    add sp, byte 6
    call 0xec17
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x90c2
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x1a
    push ax
    mov ax, 0xc1
    push ax
    mov ax, 2
    push ax
    mov ax, 0xc6
    push ax
    mov ax, 7
    push ax
    mov ax, 0xc0
    push ax
    mov ax, 1
    push ax
    call api_idx_0004_3
    add sp, byte 0x14
    call 0xbaef
    test ax, ax
    jne short 0x1187
    jmp short 0x117e
    mov ax, 0xc6
    push ax
    mov ax, 7
    push ax
    mov ax, 0xc0
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    call 0xf40b
    call 0xec17
    mov ax, word [bp + 0x4]
    cwd
    les bx, word [0x0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short 0x11d7
    jne short 0x11d9
    cmp ax, word [bp - 0x0004]
    jb short 0x11d9
    jmp short 0x11f7
    call 0xbaef
    test ax, ax
    je short 0x11e1
    ret
    cmp word [bp + 0x6], byte 0
    je short 0x11f2
    cmp word [0x59fc], byte 0
    je short 0x11f2
    call api_idx_0004_4
    ret
    call api_idx_0006_2
    jmp short 0x11c0
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, word [bp + 0x6]
    add ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov word [bp - 0x0004], cx
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    mov ax, word [bp + 0x6]
    add ax, 0x98
    push ax
    push cx
    mov ax, word [bp + 0x6]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    call api_idx_0004_3
    add sp, byte 0x14
    cmp word [bp + 0x6], byte 0
    je short 0x128b
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    ret
api_idx_0054_2:
    mov ax, 0xffac
    call 0xf40b
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 0x6]
    sub ax, cx
    mov word [bp - 0x0002], ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov word [bp - 0x0004], cx
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xc2
    push ax
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x8]
    push word [bp - 0x0002]
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    push cx
    push word [bp + 0x8]
    push word [bp - 0x0002]
    call api_idx_0004_3
    add sp, byte 0x14
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    push word [0x905a]
    call 0xb75e
    pop cx
    ret
math_loc_130b:
    mov ax, 0
    call 0xf40b
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call 0xe823
    add sp, byte 4
    mov ax, 7
    imul word [bp + 0x6]
    add ax, 0x9c
    push ax
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, 7
    imul word [bp + 0x6]
    add ax, 0xa2
    push ax
    mov ax, 0x127
    push ax
    mov ax, 7
    imul word [bp + 0x6]
    add ax, 0x9c
    push ax
    mov ax, 0x19
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [bp + 0x8], byte 0
    je short 0x1395
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    mov ax, 0
    push ax
    push word [0x905a]
    call api_idx_0004_5
    add sp, byte 4
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    ret
api_idx_0050:
    mov ax, 0xffb0
    call 0xf40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x9138
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call 0xb300
    add sp, byte 6
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    lea ax, word [bp - 0x0050]
    push ax
    call math_loc_130b
    add sp, byte 8
    ret
api_idx_005e:
    mov ax, 0xffa2
    call 0xf40b
    mov word [bp - 0x000e], 0
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x7bc6], byte 0
    je short 0x141d
    mov word [bp - 0x000e], 1
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jl short 0x1402
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short 0x13fd
    cmp word [bp - 0x000e], byte 0
    jne short 0x1459
    cmp word [bp + 0x6], byte 0
    je short 0x1455
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call 0xe8da
    add sp, byte 8
    call loc_109f
    ret
    cmp word [bp + 0x6], byte 0
    je short 0x147b
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x7e9
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call api_idx_0004_6
    add sp, byte 4
    mov ax, 1
    cmp word [0x9136], byte 0
    je short 0x1497
    mov ax, 0
    cmp byte [0x91c3], 0x18
    je short 0x1497
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x000a], ax
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [bp - 0x000c], 0
    mov word [bp - 0x0002], 0
    cmp word [bp + 0x6], byte 0
    je short 0x14d1
    cmp word [bp - 0x0002], byte 1
    jne short 0x14d1
    cmp word [0x93da], byte 0
    jle short 0x14d1
    push word [0x93da]
    call 0xb7e0
    pop cx
    mov word [0x845e], 0xfffe
    call api_idx_0006_2
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    je short 0x14fa
    cmp word [bp - 0x0006], byte 0
    jne short 0x1517
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov cx, word [bx + 0x5fe]
    mov ax, 0
    sub ax, cx
    jmp short 0x152d
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5fe]
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0004], byte 0
    jne short 0x1578
    cmp word [bp - 0x0006], byte 0
    jne short 0x1578
    cmp word [bp - 0x000a], byte 0
    jne short 0x155f
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov cx, word [bx + 0x5fe]
    mov ax, 0
    sub ax, cx
    jmp short 0x1575
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5fe]
    mov word [bp - 0x0008], ax
    push word [bp - 0x000c]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov cx, word [bx + 0x5c8]
    mov ax, 0x64
    sub ax, cx
    push ax
    mov ax, 0
    cmp word [bx - 0x6c24], byte 1
    jne short 0x15a9
    mov ax, word [bp - 0x0008]
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call api_idx_0018
    add sp, byte 0x0e
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jge short 0x15c4
    jmp near 0x14e4
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jge short 0x15d2
    jmp near 0x14df
    call api_idx_000e
    call 0xda22
    mov word [0x845e], 0
    call api_idx_0006_2
    cmp word [0x845e], byte 0xfe
    jne short 0x15de
    call loc_0ef1
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000c], byte 0
    je short 0x160d
    mov ax, word [0x906c]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x906c], dx
    mov ax, word [0x82e8]
    inc ax
    cwd
    idiv cx
    mov word [0x82e8], dx
    cmp word [bp - 0x000c], byte 0
    jne short 0x1616
    jmp near 0x14d1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short 0x1624
    jmp near 0x14b6
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x6c24], 0
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jl short 0x162e
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short 0x1629
    cmp word [bp + 0x6], byte 0
    je short 0x1675
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_000c_2:
    mov ax, 0xfff4
    call 0xf40b
    mov ax, word [bp + 0x14]
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp + 0x6]
    cmp cx, word [bp - 0x0008]
    jge short 0x1692
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0006], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0008]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x0002], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0008]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    add ax, strict word 7
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    push word [bp + 0x16]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    inc ax
    push ax
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xe]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    add ax, strict word 7
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    call 0xe94f
    add sp, byte 6
    ret
loc_17a6:
    mov ax, 0
    call 0xf40b
    push word [bp + 0xc]
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    ret
math_loc_1821:
    mov ax, 0xfe30
    call 0xf40b
    mov word [0x9052], 0xffff
    mov ax, word [bp + 0x14]
    shl ax, 1
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 0xff
    jne short 0x1851
    jmp near 0x19a2
    cmp word [bx + si], byte 1
    je short 0x1859
    jmp near 0x199c
    mov ax, word [bp - 0x0002]
    cmp word [bp + 0x16], byte 0
    je short 0x1865
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0010]
    jge short 0x1876
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0006], ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x015a]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0004]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0008]
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push word [bp + 0x18]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x015a]
    add ax, cx
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xe]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x015a]
    add ax, cx
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x002e], ax
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x01ce], ax
    inc word [bp - 0x0002]
    inc word [bp - 0x0004]
    jmp near 0x183f
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x01ac], ax
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    push word [bp + 0x6]
    call loc_0c96
    pop cx
    cmp word [0x0e32], byte 0
    je short 0x19e4
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    mov word [bp - 0x0004], ax
    call api_idx_0006_2
    cmp word [0x5b3e], byte 0
    je short 0x19cc
    jmp near 0x1c29
    mov word [bp - 0x0004], 0
    cmp word [bp + 0x16], byte 0
    je short 0x1a03
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    je short 0x1a03
    inc word [bp - 0x0004]
    jmp short 0x19e9
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0004]
    cmp cx, word [bp - 0x0010]
    jge short 0x1a11
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0006], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call loc_17a6
    add sp, byte 0x0a
    push word [bp + 0x6]
    call loc_0c96
    pop cx
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call loc_17a6
    add sp, byte 0x0a
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x1ab0
    call api_idx_0006_2
    jmp short 0x1a9f
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x01ae], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x14]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x01ac]
    dec ax
    cwd
    idiv word [bp + 0x14]
    inc ax
    imul word [bp + 0x14]
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x01ae]
    jmp near 0x1be5
    mov ax, 1
    cmp word [bp - 0x01ae], byte 9
    jne short 0x1aec
    mov ax, 0xffff
    mov word [bp - 0x01d0], ax
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x01d0]
    add ax, word [bp + 0x14]
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x14]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    cmp word [bp + 0x16], byte 0
    je short 0x1b24
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short 0x1af0
    cmp word [bp + 0x16], byte 0
    jne short 0x1b32
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jge short 0x1af0
    jmp near 0x1c05
    mov ax, 1
    cmp word [bp - 0x01ae], byte 8
    jne short 0x1b42
    mov ax, 0xffff
    mov word [bp - 0x01d0], ax
    mov ax, word [bp + 0x14]
    imul word [bp - 0x01d0]
    add ax, word [bp - 0x0004]
    add ax, word [bp - 0x000c]
    cwd
    idiv word [bp - 0x000c]
    mov word [bp - 0x0004], dx
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x01b0], 0
    mov ax, word [bp - 0x01b0]
    cmp ax, word [bp + 0x14]
    jge short 0x1bba
    cmp word [bp + 0x16], byte 0
    je short 0x1b87
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short 0x1b95
    cmp word [bp + 0x16], byte 0
    jne short 0x1bba
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x1bba
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x01d0]
    add ax, word [bp + 0x14]
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x14]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    inc word [bp - 0x01b0]
    jmp short 0x1b69
    cmp word [bp + 0x16], byte 0
    je short 0x1bd2
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    je short 0x1bd2
    jmp near 0x1b46
    cmp word [bp + 0x16], byte 0
    jne short 0x1be3
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x1be3
    jmp near 0x1b46
    jmp short 0x1c05
    cmp ax, strict word 8
    jne short 0x1bed
    jmp near 0x1b35
    cmp ax, strict word 9
    jne short 0x1bf5
    jmp near 0x1adf
    cmp ax, strict word 0xa
    jne short 0x1bfd
    jmp near 0x1b35
    cmp ax, strict word 0xb
    jne short 0x1c05
    jmp near 0x1adf
    cmp word [bp - 0x01ae], byte 0x0d
    je short 0x1c0f
    jmp near 0x1a03
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x01ce]
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0004]
    push word [bp + 0x6]
    call loc_0c96
    pop cx
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp word [bp + 0x16], byte 0
    je short 0x1c3e
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002e]
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0010]
    jge short 0x1c4f
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0006], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    add ax, word [bp + 0xc]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp - 0x000c]
    add ax, word [bp + 0xc]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0xe90e
    add sp, byte 8
    mov ax, word [bp - 0x000c]
    add ax, word [bp + 0xc]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp - 0x000c]
    add ax, word [bp + 0xc]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0x19
    push ax
    call 0xe489
    pop cx
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0xe90e
    add sp, byte 8
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    mov word [0x9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002e]
    ret
math_loc_1d39:
    mov ax, 0xfea6
    call 0xf40b
    mov ax, word [bp + 0x16]
    dec ax
    cwd
    idiv word [bp + 0x14]
    inc ax
    imul word [bp + 0x10]
    add ax, word [bp + 0xa]
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    mov dx, ax
    mov cx, word [bp + 0x10]
    sub cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x12]
    imul word [bp + 0x14]
    add ax, word [bp + 0xc]
    mov cx, word [bp + 0x12]
    add cx, byte 0xf7
    sub ax, cx
    mov word [bp - 0x0008], ax
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short 0x1d81
    jmp near 0x1e45
    mov ax, 0x90c4
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0xc]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfffa
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0158], ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0xc]
    add ax, strict word 0xffec
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfffb
    push ax
    call 0xbc9a
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, strict word 0xfff0
    push ax
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, strict word 0xfff6
    push ax
    push word [bp + 0x6]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x6]
    call 0xe84e
    add sp, byte 4
    jmp short 0x1e67
    mov ax, 0x90ca
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    dec ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0158], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1e]
    cmp word [bx + si], byte 0xff
    jne short 0x1e83
    jmp near 0x1fa5
    cmp word [bx + si], byte 1
    je short 0x1e8b
    jmp near 0x1f9f
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0004]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, word [bp + 0x18]
    mov cx, word [bp - 0x0004]
    cmp cx, word [bp + 0x1a]
    jne short 0x1f02
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    inc ax
    inc ax
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xe]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x002a], ax
    inc word [bp - 0x0002]
    inc word [bp - 0x0004]
    jmp near 0x1e71
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 0
    je short 0x1fec
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [0x5b3e], byte 0
    je short 0x1fd7
    jmp near 0x20fb
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    call loc_17a6
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    dec ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    call loc_17a6
    add sp, byte 0x0a
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x2093
    jmp short 0x2085
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x015a], ax
    jmp short 0x20c0
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0002]
    dec ax
    cwd
    idiv word [bp - 0x0002]
    mov word [bp - 0x0004], dx
    jmp short 0x20d4
    mov ax, word [bp - 0x0004]
    inc ax
    cwd
    idiv word [bp - 0x0002]
    mov word [bp - 0x0004], dx
    jmp short 0x20d4
    cmp ax, strict word 8
    je short 0x20a3
    cmp ax, strict word 9
    je short 0x20b3
    cmp ax, strict word 0xa
    je short 0x20b3
    cmp ax, strict word 0xb
    je short 0x20a3
    cmp word [bp - 0x015a], byte 0x0d
    je short 0x20de
    jmp near 0x1ff1
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    dec ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    mov ax, 1
    push ax
    push ax
    push word [bp + 0xe]
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0xe]
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0158]
    call 0xc459
    add sp, byte 4
    cmp word [bp + 0x1c], byte 0
    je short 0x21af
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    je short 0x2195
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0xc]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfffa
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x21af
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    dec ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    mov word [0x9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002a]
    ret
math_loc_21bf:
    mov ax, 0
    call 0xf40b
    mov ax, word [0x0e36]
    mov word [0x9136], ax
    call math_loc_7400
    mov ax, 0
    ret
api_idx_004c:
    mov ax, 0xffb4
    call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0x6]
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    cmp word [bp + 0xa], byte 0xfe
    jne short 0x220e
    mov al, byte [bp - 0x0030]
    sub ah, ah
    push ax
    mov al, byte [bp - 0x002f]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x0032]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short 0x2231
    cmp word [bp + 0xa], byte 0xff
    jne short 0x2228
    push word [bp - 0x0030]
    push word [bp - 0x0032]
    call 0xd0be
    add sp, byte 4
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short 0x2231
    mov al, byte [bp + 0xa]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    mov ax, word [bp + 0x6]
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    mov al, byte [bp - 0x0014]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x4], al
    mov al, byte [bp - 0x0013]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x5], al
    mov ax, word [bp - 0x0028]
    mov bx, word [bp + 0x8]
    mov word [bx + 0x2], ax
    mov al, byte [bp - 0x0024]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x8], al
    mov al, byte [bp - 0x0023]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x9], al
    mov al, byte [bp - 0x0010]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0xa], al
    mov al, byte [bp - 0x000c]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0xb], al
    mov ax, 0
    cmp word [bp + 0xc], byte 0
    je short 0x2284
    mov ax, 0x80
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x7], al
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 8
    je short 0x229b
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 4
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 4
    je short 0x22ac
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 8
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x10
    je short 0x22bd
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x10
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x20
    je short 0x22ce
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x20
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 2
    je short 0x22df
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x40
    push word [bp + 0x4]
    call 0xc58f
    pop cx
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jne short 0x2329
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    ret
    cmp word [bp + 0x6], byte 0
    je short 0x2358
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 1
    jne short 0x234b
    test ax, 0x40
    jne short 0x234b
    push word [bx + 0x5c34]
    call math_loc_5497
    pop cx
    test ax, ax
    je short 0x234d
    jmp short 0x2358
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    ret
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short 0x22f7
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short 0x22f2
    mov ax, 0xffff
    ret
api_idx_0004_8:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c34]
    cmp ax, word [bp + 0x6]
    jne short 0x23b6
    mov ax, word [bp - 0x0004]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0002]
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x2382
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short 0x237d
    mov ax, 0xffff
    ret
loc_23d0:
    mov ax, 0
    call 0xf40b
    mov word [0x93d4], 0
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    inc word [0x93d4]
    mov ax, word [0x93d4]
    cmp ax, strict word 4
    jl short 0x23dc
    mov word [0x93d4], 0
    push word [0x0e2c]
    push word [0x0e2a]
    call 0xb8af
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0xf0e4
    add sp, byte 6
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    ret
loc_243b:
    mov ax, 0
    call 0xf40b
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0xf0f1
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xb8af
    add sp, byte 4
    ret
math_loc_2472:
    mov ax, 0
    call 0xf40b
    cmp word [0x93ee], byte 0
    je short 0x2482
    call loc_23d0
    push word [bp + 0x4]
    call loc_9587
    pop cx
    call api_idx_000e_2
    call api_idx_0004_2
    cmp word [bp + 0x6], byte 0
    je short 0x24a3
    mov ax, 1
    push ax
    mov ax, 0x48
    push ax
    call api_idx_0004_5
    add sp, byte 4
    cmp word [0x93ee], byte 0
    je short 0x24ad
    call loc_243b
    ret
api_idx_0038:
    mov ax, 0xffc8
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x2c
    push ax
    lea ax, word [bp - 0x0038]
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, 0x26
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jle short 0x252a
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    je short 0x2519
    cmp word [bp + 0x4], byte 0xff
    jne short 0x252a
    mov al, byte [bx - 0x7b14]
    sub ah, ah
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7687]
    cbw
    cmp ax, word [0x830c]
    je short 0x2519
    mov ax, 0x26
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    cmp al, byte [0x91c7]
    jne short 0x252a
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 1
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x15
    jl short 0x24d0
    mov byte [0x93f0], 0
    cmp word [bp - 0x0004], byte 0
    jg short 0x2543
    jmp near 0x2738
    cmp byte [0x93f0], 0
    je short 0x254d
    jmp near 0x2738
    mov ax, 0x16
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0038], byte 0
    je short 0x254d
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 0
    dec word [bp - 0x0004]
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
    mov ax, 5
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx - 0x6b10], 0
    jne short 0x25b5
    mov ax, 0xf
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp byte [bx - 0x77d4], 0xff
    jne short 0x25cd
    cmp word [bp - 0x0008], byte 5
    jge short 0x25cd
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, 5
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    inc word [bp - 0x0008]
    jmp short 0x2588
    mov ax, 0xf
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp byte [bx - 0x77d4], 0xff
    jne short 0x25eb
    jmp near 0x2735
    mov ax, 5
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx - 0x6b10], 0
    je short 0x2600
    jmp near 0x2735
    mov byte [bx - 0x6b10], 1
    mov ax, 0x93f0
    push ax
    mov ax, 0xf
    imul word [bp - 0x0002]
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x77d3]
    cbw
    add ax, 0x73a
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x955e
    push ax
    mov al, byte [0x91c6]
    cbw
    cmp ax, word [bp - 0x0002]
    jne short 0x2634
    mov ax, 0x66a
    jmp short 0x263a
    mov ax, word [bp - 0x0002]
    add ax, 0x6a4
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xf
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x77d3]
    cbw
    jmp short 0x26a4
    mov word [bp - 0x000a], 0x6a4
    mov word [bp - 0x000c], 0x6ea
    jmp short 0x26b1
    mov word [bp - 0x000a], 0x708
    mov word [bp - 0x000c], 0x6a4
    jmp short 0x26b1
    mov word [bp - 0x000a], 0x708
    mov word [bp - 0x000c], 0x6ea
    jmp short 0x26b1
    mov word [bp - 0x000a], 0x6d6
    mov word [bp - 0x000c], 0x6ea
    jmp short 0x26b1
    mov word [0xa376], ax
    jbe short 0x2634
    jbe short 0x2642
    jbe short 0x2650
    jbe short 0x263a
    jbe short 0x263c
    jbe short 0x2656
    jbe short 0x2664
    jbe short 0x2666
    jbe short 0x2650
    jbe short 0x266a
    jbe short 0x26e2
    or al, 0
    jae short 0x26b1
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x76d3]
    mov ax, 0x9576
    push ax
    mov ax, 0xf
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x77d4]
    cbw
    add ax, word [bp - 0x000a]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x958e
    push ax
    mov ax, 0xf
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x77d2]
    cbw
    add ax, word [bp - 0x000c]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x955e
    push ax
    mov ax, 0x93f0
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x23
    push ax
    mov ax, 0x9576
    push ax
    mov ax, 0x93f0
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x24
    push ax
    mov ax, 0x958e
    push ax
    mov ax, 0x93f0
    push ax
    call 0xb300
    add sp, byte 6
    jmp near 0x253a
    cmp byte [0x93f0], 0
    jne short 0x2757
    cmp word [bp + 0x8], byte 0
    je short 0x2749
    mov ax, 0xffff
    ret
    mov ax, 0x93f0
    push ax
    mov ax, 0x669
    push ax
    call 0xb53b
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, 0x93f0
    push ax
    call math_loc_2472
    add sp, byte 4
    mov ax, 0
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x9576
    push ax
    mov ax, word [bp + 0x4]
    add ax, 0x708
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 6
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b59], 0
    je short 0x2791
    jmp near 0x2844
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    mov cx, 0x26
    imul cx
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    cmp al, byte [0x91c7]
    jne short 0x27ad
    mov ax, 0
    jmp short 0x27b0
    mov ax, 1
    mov word [bp - 0x0002], ax
    mov ax, 0x93f0
    push ax
    mov ax, 6
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    push ax
    mov al, byte [0x91c6]
    cbw
    mov cx, ax
    pop ax
    cmp ax, cx
    jne short 0x27d6
    mov ax, 0x758
    jmp short 0x27e2
    mov ax, 0x759
    cmp word [bp - 0x0002], byte 0
    je short 0x27e2
    mov ax, 0x75a
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x958e
    push ax
    mov ax, 6
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    push ax
    mov al, byte [0x91c6]
    cbw
    mov cx, ax
    pop ax
    cmp ax, cx
    jne short 0x280c
    mov ax, 0x66a
    jmp short 0x283b
    cmp word [bp - 0x0002], byte 0
    je short 0x282a
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    mov cx, 0x26
    imul cx
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    add ax, 0x6d6
    jmp short 0x283b
    mov ax, 6
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    add ax, 0x6a4
    push ax
    call 0xb53b
    add sp, byte 4
    jmp short 0x286e
    mov ax, 0x93f0
    push ax
    mov ax, 0x75b
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x958e
    push ax
    mov ax, 6
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    add ax, 0x6ea
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x23
    push ax
    mov ax, 0x9576
    push ax
    mov ax, 0x93f0
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x24
    push ax
    mov ax, 0x958e
    push ax
    mov ax, 0x93f0
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0x93f0
    push ax
    call math_loc_2472
    add sp, byte 4
    ret
api_idx_0004_9:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    push word [bp - 0x0002]
    mov ax, 0x8822
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x28dc
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov al, byte [0x91c6]
    cbw
    mov cx, 0x26
    imul cx
    add ax, 0x8504
    push ax
    call 0xec41
    add sp, byte 6
    push word [bp - 0x0002]
    mov al, byte [0x91c6]
    cbw
    mov cx, 0x26
    imul cx
    add ax, 0x8504
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x2907
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x8822
    push ax
    call 0xec41
    add sp, byte 6
    push word [bp - 0x0002]
    mov al, byte [0x91c6]
    cbw
    mov cx, 0x26
    imul cx
    add ax, 0x8504
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x292d
    push word [bp - 0x0002]
    call api_idx_0002_2
    pop cx
    mov word [bp - 0x0004], 1
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x2951
    mov ax, 1
    push ax
    push ax
    mov ax, 0xffff
    push ax
    call api_idx_0038
    add sp, byte 6
    test ax, ax
    jne short 0x2951
    mov word [bp - 0x0004], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jge short 0x295f
    jmp near 0x28b1
    mov ax, word [bp - 0x0004]
    ret
loc_2963:
    mov ax, 0
    call 0xf40b
    mov ax, 1
    push ax
    call 0xef14
    pop cx
    cmp word [bp + 0x4], byte 0
    je short 0x298a
    mov ax, 0x55
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x605
    push ax
    call api_idx_0050
    add sp, byte 8
    mov al, byte [0x91c2]
    sub ah, ah
    mov word [0x0e36], ax
    mov word [0x8452], 1
    mov word [0x845a], 0
    mov word [0x95a6], 0
    mov word [0x830a], 0xa
    mov word [0x905e], 0x12
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0004_7
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0006], 0
    jmp short 0x29ed
    mov ax, 0
    push ax
    push word [bp - 0x0006]
    call api_idx_0004_7
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0008], ax
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jge short 0x29fc
    cmp word [bp - 0x0002], byte 0xff
    je short 0x29d4
    cmp word [bp - 0x0002], byte 0xff
    jne short 0x2a31
    mov word [bp - 0x0006], 0
    jmp short 0x2a22
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call api_idx_0004_7
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0008], ax
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jge short 0x2a31
    cmp word [bp - 0x0002], byte 0xff
    je short 0x2a09
    cmp word [bp - 0x0002], byte 0xff
    jne short 0x2a7b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
    mov ax, 0x78
    imul word [bp - 0x0006]
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c34]
    call math_loc_5497
    pop cx
    test ax, ax
    je short 0x2a7b
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jne short 0x2a79
    mov word [bp - 0x0002], 0
    inc word [bp - 0x0006]
    jmp short 0x2a46
    mov ax, word [bp - 0x0002]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov ax, 1
    push ax
    mov ax, 0xfffe
    push ax
    mov ax, 0x248
    imul word [bp - 0x0008]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    push ax
    push word [bp + 0x6]
    push word [bp - 0x0008]
    call api_idx_004c
    add sp, byte 0x0a
    push word [bp + 0x6]
    call math_loc_5497
    pop cx
    test ax, ax
    je short 0x2ae1
    mov ax, word [bp + 0x6]
    add ax, 0xfe70
    push ax
    mov al, byte [0x91c6]
    cbw
    push ax
    mov ax, 0x15
    push ax
    call api_idx_0002_5
    add sp, byte 6
    mov ax, 0x95a8
    push ax
    mov ax, 0x60b
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp - 0x0008]
    add ax, 0x5bf4
    push ax
    mov ax, 0x95a8
    push ax
    call 0xb300
    add sp, byte 6
    cmp word [bp + 0x8], byte 1
    jne short 0x2b1f
    mov ax, 1
    push ax
    push ax
    push ax
    mov ax, 0x95a8
    push ax
    call math_loc_130b
    add sp, byte 8
    jmp short 0x2b8d
    cmp word [bp + 0x8], byte 2
    jne short 0x2b8d
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    mov ax, 0x5e5
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x95a8
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 0x1e
    sub ax, cx
    mov cx, 2
    cwd
    idiv cx
    mov dx, word [0x93d4]
    mov cx, 7
    shl dx, cl
    mov cx, dx
    add ax, cx
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    mov ax, 0x95a8
    push ax
    add cx, strict word 0x91cc
    mov ax, cx
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    call api_idx_0004_2
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    ret
api_idx_0040:
    mov ax, 0xffc0
    call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6e88]
    mov word [bp - 0x0004], ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, 6
    push ax
    call 0xb63c
    add sp, byte 8
    mov word [bp - 0x0002], 0
    cmp word [bp - 0x0002], byte 8
    jl short 0x2bc5
    jmp near 0x376f
    mov word [bp - 0x0040], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0024]
    mov word [bp - 0x0026], ax
    mov al, byte [bx - 0x0022]
    sub ah, ah
    mov word [bp - 0x0028], ax
    mov al, byte [bx - 0x0021]
    sub ah, ah
    jmp near 0x375c
    mov ax, 0
    ret

    db 0x83, 0x3e, 0xee, 0x93, 0x00, 0x74, 0x03, 0xe8, 0xd7, 0xf7, 0xff, 0x76, 0xd8, 0xff, 0x76, 0xda
    db 0xe8, 0x46, 0x6b, 0x83, 0xc4, 0x04, 0x83, 0x3e, 0xee, 0x93, 0x00, 0x74, 0x03, 0xe8, 0x2c, 0xf8
    db 0xe9, 0x57, 0x0b, 0x83, 0x7e, 0xda, 0x00, 0x7e, 0x06, 0x8a, 0x46, 0xda, 0xa2, 0xc2, 0x91, 0xb8
    db 0x01, 0x00, 0x50, 0xe8, 0x3e, 0xfd, 0x59, 0xb8, 0x01, 0x00, 0xc3, 0x83, 0x7e, 0xd8, 0x00, 0x75
    db 0x16, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x06, 0x06
    db 0x50, 0xe8, 0x71, 0xe7, 0x83, 0xc4, 0x08, 0xc7, 0x06, 0xa6, 0x95, 0x01, 0x00, 0xc7, 0x06, 0x0a
    db 0x83, 0x05, 0x00, 0xc7, 0x06, 0x5e, 0x90, 0x12, 0x00, 0xb8, 0x01, 0x00, 0xc3, 0xc7, 0x46, 0xc0
    db 0x01, 0x00, 0x8b, 0x46, 0xda, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x05, 0x0f, 0x00, 0x89, 0x46
    db 0xd4, 0x89, 0x56, 0xd0, 0x8b, 0xc2, 0xb9, 0x10, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xd2, 0x89
    db 0x56, 0xd0, 0x83, 0x7e, 0xd8, 0x00, 0x7f, 0x03, 0xe9, 0x81, 0x00, 0x8b, 0x5e, 0xd4, 0x8a, 0x87
    db 0x48, 0x5b, 0x2a, 0xe4, 0x3d, 0xff, 0x00, 0x74, 0x0f, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x75, 0xc2
    db 0x59, 0xff, 0x76, 0xd4, 0xe8, 0x84, 0x94, 0x59, 0xff, 0x76, 0xd4, 0xff, 0x76, 0xd8, 0xe8, 0x6c
    db 0xa9, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xd4, 0x50, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xd2, 0x8b, 0xc8
    db 0x8b, 0x56, 0xd0, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x3a, 0x84, 0xb8, 0xff
    db 0xff, 0x50, 0xff, 0x76, 0xd0, 0xff, 0x76, 0xd2, 0xff, 0x76, 0xd4, 0xe8, 0x31, 0xd3, 0x83, 0xc4
    db 0x08, 0x83, 0x7e, 0xc0, 0x00, 0x74, 0x20, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xd2, 0x8b, 0x4e, 0xd0
    db 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87, 0xdc, 0x93, 0x01, 0x00, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0xe8, 0xea, 0xe6, 0x83, 0xc4, 0x04, 0xe8, 0x96, 0xe3, 0xeb, 0x41, 0x83, 0x7e, 0xc0, 0x00
    db 0x74, 0x23, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xd2, 0x8b, 0x4e, 0xd0, 0xd1, 0xe1, 0x03, 0xc1, 0x8b
    db 0xd8, 0xc7, 0x87, 0xdc, 0x93, 0x01, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8
    db 0xbc, 0xe6, 0x83, 0xc4, 0x04, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xd2, 0x8b, 0x4e, 0xd0, 0xd1, 0xe1
    db 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87, 0x3a, 0x84, 0x00, 0x00, 0xe8, 0x53, 0xe3, 0xe9, 0x1a, 0x0a
    db 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xd8, 0xe8, 0x45, 0xe4, 0x83, 0xc4, 0x04, 0xe9, 0x0a, 0x0a
    db 0x83, 0x3e, 0xee, 0x93, 0x00, 0x74, 0x03, 0xe8, 0x67, 0xf6, 0xff, 0x76, 0xd8, 0xff, 0x76, 0xda
    db 0xff, 0x76, 0x04, 0xe8, 0x1e, 0x7d, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xce, 0x83, 0x3e, 0xee, 0x93
    db 0x00, 0x74, 0x03, 0xe8, 0xb6, 0xf6, 0x83, 0x7e, 0xce, 0x01, 0x7e, 0x17, 0xff, 0x76, 0xce, 0xff
    db 0x76, 0x04, 0xe8, 0xfa, 0xfd, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00
    db 0xc3, 0xeb, 0x2a, 0xb8, 0xa8, 0x95, 0x50, 0x8b, 0x46, 0xda, 0x40, 0x50, 0xe8, 0x8d, 0x87, 0x83
    db 0xc4, 0x04, 0xb8, 0xa8, 0x95, 0x50, 0xe8, 0xd8, 0xcc, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x0e, 0xb8
    db 0x01, 0x00, 0x50, 0xb8, 0xa8, 0x95, 0x50, 0xe8, 0xa9, 0xf6, 0x83, 0xc4, 0x04, 0xe9, 0x9a, 0x09
    db 0xe8, 0x1d, 0x8d, 0x85, 0xc0, 0x75, 0x05, 0xe8, 0x77, 0xe1, 0xeb, 0xf4, 0xe9, 0x8b, 0x09, 0xa1
    db 0x0c, 0x83, 0x3b, 0x06, 0x3c, 0x8f, 0x75, 0x45, 0xa1, 0x36, 0x8f, 0xa3, 0x42, 0x8f, 0xa1, 0x34
    db 0x8f, 0xa3, 0x40, 0x8f, 0xa1, 0x32, 0x8f, 0xa3, 0x3e, 0x8f, 0xa1, 0x3a, 0x8f, 0xa3, 0x46, 0x8f
    db 0xa1, 0x38, 0x8f, 0xa3, 0x44, 0x8f, 0xa1, 0x30, 0x8f, 0xa3, 0xee, 0x82, 0x8b, 0x1e, 0x12, 0x0e
    db 0x8b, 0x36, 0x3e, 0x8f, 0x8a, 0x80, 0x40, 0x0b, 0x2a, 0xe4, 0xa3, 0x12, 0x8d, 0xc7, 0x06, 0x0a
    db 0x83, 0x05, 0x00, 0xc7, 0x06, 0x5e, 0x90, 0x12, 0x00, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0x3a, 0x09
    db 0xff, 0x76, 0xd8, 0xff, 0x76, 0xda, 0xff, 0x76, 0x04, 0xe8, 0x76, 0xfb, 0x83, 0xc4, 0x06, 0xe9
    db 0x28, 0x09, 0xc7, 0x46, 0xc6, 0xff, 0xff, 0x8b, 0x46, 0x04, 0x89, 0x46, 0xd0, 0xc7, 0x46, 0x04
    db 0x00, 0x00, 0xeb, 0x53, 0xff, 0x76, 0xda, 0xff, 0x76, 0x04, 0xe8, 0x16, 0xf5, 0x83, 0xc4, 0x04
    db 0x89, 0x46, 0xc6, 0x3d, 0xff, 0xff, 0x74, 0x3c, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46
    db 0xd6, 0x89, 0x56, 0xd4, 0xff, 0x76, 0xda, 0xe8, 0x1e, 0x26, 0x59, 0x85, 0xc0, 0x74, 0x16, 0x8b
    db 0x46, 0xda, 0x05, 0x70, 0xfe, 0x50, 0xb8, 0x15, 0x00, 0x50, 0xa0, 0xc6, 0x91, 0x98, 0x50, 0xe8
    db 0x23, 0x26, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xd4, 0xff, 0x76, 0xd6, 0xff, 0x76, 0x04, 0xe8, 0x48
    db 0x9b, 0x83, 0xc4, 0x06, 0xff, 0x46, 0x04, 0x8b, 0x46, 0x04, 0x3b, 0x06, 0xc8, 0x69, 0x7d, 0x06
    db 0x83, 0x7e, 0xc6, 0xff, 0x74, 0x9e, 0x8b, 0x46, 0xd0, 0x89, 0x46, 0x04, 0xe9, 0xab, 0x08, 0x8b
    db 0x46, 0xda, 0x8b, 0x4e, 0xd8, 0x8b, 0xd9, 0xf7, 0xeb, 0x89, 0x56, 0xcc, 0x89, 0x46, 0xca, 0x8b
    db 0x46, 0xca, 0x8b, 0x56, 0xcc, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x5a
    db 0x58, 0x01, 0x87, 0x08, 0x5c, 0x11, 0x97, 0x0a, 0x5c, 0x8b, 0x46, 0xca, 0x8b, 0x56, 0xcc, 0x29
    db 0x06, 0xb6, 0x91, 0x19, 0x16, 0xb8, 0x91, 0x83, 0x3e, 0xb8, 0x91, 0x00, 0x7f, 0x09, 0x75, 0x09
    db 0x83, 0x3e, 0xb6, 0x91, 0x00, 0x72, 0x02, 0xeb, 0x0c, 0xc7, 0x06, 0xb8, 0x91, 0x00, 0x00, 0xc7
    db 0x06, 0xb6, 0x91, 0x00, 0x00, 0xe9, 0x52, 0x08, 0x8b, 0x46, 0xda, 0xbb, 0x0a, 0x00, 0xf7, 0xeb
    db 0x89, 0x56, 0xcc, 0x89, 0x46, 0xca, 0x83, 0x7e, 0xcc, 0x00, 0x75, 0x04, 0x83, 0x7e, 0xca, 0x00
    db 0x75, 0x6e, 0xc7, 0x46, 0xd4, 0x00, 0x00, 0xeb, 0x5e, 0x83, 0x7e, 0xd8, 0x00, 0x7e, 0x41, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0xd4, 0x8b, 0xd8, 0x8b, 0x87, 0x08, 0x5c, 0x8b, 0x97, 0x0a, 0x5c, 0x50
    db 0x52, 0x8b, 0x46, 0xd8, 0x99, 0x8b, 0xc8, 0x8b, 0xda, 0x5a, 0x58, 0xe8, 0x42, 0xca, 0x89, 0x56
    db 0xcc, 0x89, 0x46, 0xca, 0x8b, 0x46, 0xca, 0x8b, 0x56, 0xcc, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0xd4, 0x8b, 0xd8, 0x5a, 0x58, 0x29, 0x87, 0x08, 0x5c, 0x19, 0x97, 0x0a, 0x5c, 0xeb, 0x14
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xd4, 0x8b, 0xd8, 0xc7, 0x87, 0x0a, 0x5c, 0x00, 0x00, 0xc7, 0x87
    db 0x08, 0x5c, 0x00, 0x00, 0xff, 0x46, 0xd4, 0x8b, 0x46, 0xd4, 0x3b, 0x06, 0xc8, 0x69, 0x7c, 0x99
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8b, 0x87, 0x08, 0x5c, 0x8b, 0x97, 0x0a, 0x5c
    db 0x3b, 0x56, 0xcc, 0x7f, 0x07, 0x75, 0x07, 0x3b, 0x46, 0xca, 0x72, 0x02, 0xeb, 0x44, 0xff, 0x76
    db 0x04, 0xe8, 0x2d, 0x55, 0x59, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8b, 0x87, 0x08
    db 0x5c, 0x8b, 0x97, 0x0a, 0x5c, 0x3b, 0x56, 0xcc, 0x7f, 0x07, 0x75, 0x07, 0x3b, 0x46, 0xca, 0x72
    db 0x02, 0xeb, 0x1f, 0x83, 0x7e, 0xd8, 0x00, 0x7e, 0x19, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8
    db 0x9d, 0xfb, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xb8, 0x00
    db 0x00, 0xc3, 0x8b, 0x46, 0xca, 0x8b, 0x56, 0xcc, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04
    db 0x8b, 0xd8, 0x5a, 0x58, 0x29, 0x87, 0x08, 0x5c, 0x19, 0x97, 0x0a, 0x5c, 0x8b, 0x46, 0xca, 0x8b
    db 0x56, 0xcc, 0x01, 0x06, 0xb6, 0x91, 0x11, 0x16, 0xb8, 0x91, 0xe9, 0x3d, 0x07, 0xc7, 0x46, 0xd4
    db 0x00, 0x00, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x71, 0x87, 0x59, 0x85, 0xc0, 0x75, 0x47, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xd4, 0x8b, 0xc8, 0x58, 0x03, 0xc1
    db 0x8b, 0xd8, 0x83, 0xbf, 0xac, 0x5c, 0x00, 0x7e, 0x2c, 0x8a, 0x87, 0xb3, 0x5c, 0x2a, 0xe4, 0xa9
    db 0x40, 0x00, 0x75, 0x21, 0xff, 0x76, 0xd4, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x78
    db 0x99, 0x83, 0xc4, 0x06, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x2f, 0x87, 0x59, 0x85, 0xc0, 0x75, 0x05
    db 0xc7, 0x46, 0xd4, 0x0a, 0x00, 0xff, 0x46, 0xd4, 0x8b, 0x46, 0xd4, 0x3d, 0x0a, 0x00, 0x7c, 0xa2
    db 0xe9, 0xd7, 0x06, 0x8b, 0x46, 0xda, 0x3d, 0x00, 0x00, 0x7e, 0x1b, 0x3d, 0x7f, 0x00, 0x7d, 0x16
    db 0xff, 0x76, 0xd8, 0x50, 0xa1, 0x0c, 0x83, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50
    db 0xe8, 0x8f, 0xbb, 0x83, 0xc4, 0x06, 0xe9, 0xb1, 0x06, 0x8b, 0x46, 0xda, 0x3d, 0x00, 0x00, 0x7e
    db 0x33, 0x3d, 0x7f, 0x00, 0x7d, 0x2e, 0xff, 0x76, 0xd8, 0x50, 0xa1, 0x0c, 0x83, 0xb9, 0x04, 0x00
    db 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0x69, 0xbb, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xd8, 0xff
    db 0x76, 0xda, 0xa1, 0x0c, 0x83, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x42, 0x56, 0x50, 0xe8, 0x51
    db 0xbb, 0x83, 0xc4, 0x06, 0xe9, 0x73, 0x06, 0x8b, 0x46, 0xda, 0x3d, 0x00, 0x00, 0x7e, 0x13, 0x3d
    db 0x0f, 0x00, 0x7d, 0x0e, 0xff, 0x76, 0xd8, 0x50, 0xb8, 0xf8, 0x95, 0x50, 0xe8, 0x33, 0xbb, 0x83
    db 0xc4, 0x06, 0xe9, 0x55, 0x06, 0x8b, 0x46, 0xda, 0x3d, 0x00, 0x00, 0x7e, 0x28, 0x3d, 0x0f, 0x00
    db 0x7d, 0x23, 0xff, 0x76, 0xd8, 0x50, 0xb8, 0xf8, 0x95, 0x50, 0xe8, 0x15, 0xbb, 0x83, 0xc4, 0x06
    db 0xff, 0x76, 0xd8, 0xff, 0x76, 0xda, 0xa1, 0x36, 0x91, 0xd1, 0xe0, 0x05, 0x4e, 0x58, 0x50, 0xe8
    db 0x00, 0xbb, 0x83, 0xc4, 0x06, 0xe9, 0x22, 0x06, 0xff, 0x76, 0xda, 0xa1, 0x0c, 0x83, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0x1b, 0xbb, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00
    db 0x75, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0x01, 0x06, 0xff, 0x76, 0xda, 0xa1, 0x0c, 0x83, 0xb9
    db 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0xfa, 0xba, 0x83, 0xc4, 0x04, 0x85, 0xc0
    db 0x75, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0xe1, 0x05, 0xff, 0x76, 0xda, 0xb8, 0xf8, 0x95, 0x50
    db 0xe8, 0xe2, 0xba, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9
    db 0xc8, 0x05, 0xff, 0x76, 0xda, 0xb8, 0xf8, 0x95, 0x50, 0xe8, 0xc9, 0xba, 0x83, 0xc4, 0x04, 0x85
    db 0xc0, 0x75, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0xb0, 0x05, 0x83, 0x7e, 0xd8, 0x00, 0x75, 0x11
    db 0xff, 0x76, 0xda, 0xff, 0x76, 0x04, 0xe8, 0xaa, 0xf1, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xc6, 0xeb
    db 0x2d, 0xc7, 0x46, 0xc6, 0xff, 0xff, 0xc7, 0x46, 0xd4, 0x00, 0x00, 0xeb, 0x12, 0xff, 0x76, 0xda
    db 0xff, 0x76, 0xd4, 0xe8, 0x8d, 0xf1, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xc6, 0xff, 0x46, 0xd4, 0x8b
    db 0x46, 0xd4, 0x3b, 0x06, 0xc8, 0x69, 0x7d, 0x06, 0x83, 0x7e, 0xc6, 0xff, 0x74, 0xdf, 0x8b, 0x46
    db 0xfe, 0xd1, 0xe0, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x80, 0x7f, 0xdf, 0x16, 0x75, 0x06, 0x83
    db 0x7e, 0xc6, 0xff, 0x74, 0x0c, 0x80, 0x7f, 0xdf, 0x17, 0x75, 0x0a, 0x83, 0x7e, 0xc6, 0xff, 0x74
    db 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0x42, 0x05, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x7b, 0x85, 0x59
    db 0x3b, 0x46, 0xda, 0x7e, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0x2e, 0x05, 0xff, 0x76, 0xda, 0xa1
    db 0x0c, 0x83, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0x27, 0xba, 0x83, 0xc4
    db 0x04, 0x85, 0xc0, 0x75, 0x15, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0x31, 0xf9, 0x83, 0xc4
    db 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0xfd, 0x04, 0xff, 0x76, 0xda
    db 0xa1, 0x0c, 0x83, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0xf6, 0xb9, 0x83
    db 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x15, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0xff, 0xf8
    db 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0xcb, 0x04, 0xff
    db 0x76, 0xda, 0xb8, 0xf8, 0x95, 0x50, 0xe8, 0xcc, 0xb9, 0x83, 0xc4, 0x04, 0x85, 0xc0, 0x75, 0x15
    db 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0xd6, 0xf8, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75
    db 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0xa2, 0x04, 0xff, 0x76, 0xda, 0xb8, 0xf8, 0x95, 0x50, 0xe8
    db 0xa3, 0xb9, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x15, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04
    db 0xe8, 0xac, 0xf8, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9
    db 0x78, 0x04, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0xb1, 0x84, 0x59, 0x3b, 0x46, 0xda, 0x7d, 0x15, 0xff
    db 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0x87, 0xf8, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04
    db 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0x53, 0x04, 0xb8, 0x26, 0x00, 0xf7, 0x6e, 0xda, 0x8b, 0xd8, 0x8a
    db 0x87, 0x01, 0x85, 0x88, 0x87, 0x00, 0x85, 0xc6, 0x87, 0xea, 0x84, 0x00, 0x8a, 0x46, 0xd8, 0x88
    db 0x87, 0xec, 0x84, 0x88, 0x87, 0xeb, 0x84, 0xe9, 0x30, 0x04, 0x8b, 0x46, 0xda, 0x89, 0x46, 0xc6
    db 0x3d, 0x00, 0x00, 0x7d, 0x1a, 0x50, 0x3d, 0x00, 0x00, 0x58, 0x7d, 0x02, 0xf7, 0xd8, 0x50, 0xe8
    db 0x58, 0x84, 0x59, 0x8b, 0xc8, 0xb8, 0x00, 0x00, 0x2b, 0xc1, 0x89, 0x46, 0xc6, 0xeb, 0x0a, 0xff
    db 0x76, 0xc6, 0xe8, 0x45, 0x84, 0x59, 0x89, 0x46, 0xc6, 0x8b, 0x46, 0xd8, 0x05, 0x9c, 0xff, 0x89
    db 0x46, 0xd4, 0xb8, 0x64, 0x00, 0x50, 0xff, 0x76, 0xd4, 0xa0, 0xc7, 0x91, 0x2a, 0xe4, 0x8b, 0xd8
    db 0x8a, 0x87, 0xde, 0x89, 0x98, 0x03, 0x46, 0xc6, 0x50, 0xe8, 0x37, 0x84, 0x83, 0xc4, 0x06, 0x50
    db 0xa0, 0xc7, 0x91, 0x2a, 0xe4, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0xde, 0x89, 0xe9, 0xcb, 0x03, 0xc7
    db 0x46, 0xd4, 0x00, 0x00, 0xe9, 0x8c, 0x00, 0x8b, 0x46, 0xda, 0x48, 0x89, 0x46, 0xc6, 0x3d, 0x07
    db 0x00, 0x7e, 0x0b, 0xb8, 0x08, 0x00, 0x50, 0xe8, 0xf0, 0x83, 0x59, 0x89, 0x46, 0xc6, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xd4, 0x03, 0x46, 0xc6, 0x8b, 0xd8, 0x80, 0xbf, 0x64, 0x5d, 0x13, 0x73, 0x60
    db 0xfe, 0x87, 0x64, 0x5d, 0xb8, 0xa8, 0x95, 0x50, 0xb8, 0x97, 0x13, 0x50, 0xe8, 0x5d, 0x81, 0x83
    db 0xc4, 0x04, 0xb8, 0xfa, 0x95, 0x50, 0x8b, 0x46, 0xc6, 0x05, 0xba, 0x13, 0x50, 0xe8, 0x4c, 0x81
    db 0x83, 0xc4, 0x04, 0xb8, 0x5e, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xd4, 0x05, 0xf4, 0x5b
    db 0x50, 0xb8, 0xa8, 0x95, 0x50, 0xe8, 0xf9, 0x7e, 0x83, 0xc4, 0x06, 0xb8, 0x24, 0x00, 0x50, 0xb8
    db 0xfa, 0x95, 0x50, 0xb8, 0xa8, 0x95, 0x50, 0xe8, 0xe7, 0x7e, 0x83, 0xc4, 0x06, 0xb8, 0x55, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0xa8, 0x95, 0x50, 0xe8, 0xdf, 0xde, 0x83, 0xc4, 0x08
    db 0xff, 0x46, 0xd4, 0x8b, 0x46, 0xd4, 0x3b, 0x06, 0xc8, 0x69, 0x7d, 0x03, 0xe9, 0x68, 0xff, 0xe9
    db 0x28, 0x03, 0x8b, 0x46, 0xda, 0xb9, 0x10, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xc2, 0x89, 0x56
    db 0xc4, 0x8b, 0x46, 0xd8, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xd2, 0x89, 0x56, 0xd0, 0xb8, 0x06, 0x00
    db 0xf7, 0x6e, 0xc2, 0x8b, 0x4e, 0xc4, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x3a, 0x84
    db 0x50, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xd2, 0x8b, 0xc8, 0x8b, 0x56, 0xd0, 0xd1, 0xe2, 0x03, 0xc2
    db 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x3a, 0x84, 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76, 0xd0, 0xff, 0x76
    db 0xd2, 0xff, 0xb7, 0x3a, 0x84, 0xe8, 0x77, 0xcb, 0x83, 0xc4, 0x08, 0xb8, 0x06, 0x00, 0xf7, 0x6e
    db 0xc2, 0x8b, 0x4e, 0xc4, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87, 0x3a, 0x84, 0x00, 0x00
    db 0xe9, 0xb7, 0x02, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0xd3, 0xf6, 0x83, 0xc4, 0x04, 0x3d
    db 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0x9f, 0x02, 0xff, 0x76, 0xda, 0xe8, 0x5e
    db 0x3f, 0x59, 0xe9, 0x95, 0x02, 0x80, 0x3e, 0xc6, 0x91, 0xff, 0x74, 0x3d, 0xc7, 0x46, 0xc6, 0x00
    db 0x00, 0xff, 0x76, 0xc6, 0xa0, 0xc6, 0x91, 0x98, 0xb9, 0x26, 0x00, 0xf7, 0xe9, 0x05, 0x02, 0x85
    db 0x50, 0xe8, 0x81, 0xb7, 0x83, 0xc4, 0x04, 0x85, 0xc0, 0x74, 0x13, 0xff, 0x76, 0xd8, 0x8b, 0x46
    db 0xc6, 0x05, 0x90, 0x01, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa7, 0xf4, 0x83, 0xc4, 0x06, 0xff, 0x46
    db 0xc6, 0x8b, 0x46, 0xc6, 0x3d, 0x0b, 0x00, 0x7c, 0xc8, 0xe9, 0x4e, 0x02, 0xff, 0x76, 0x04, 0xe8
    db 0x64, 0x95, 0x59, 0x85, 0xc0, 0x75, 0x15, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0x5f, 0xf6
    db 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0x2b, 0x02, 0xb8
    db 0x01, 0x00, 0xc3, 0xc7, 0x06, 0x46, 0x8f, 0x7b, 0x00, 0xc7, 0x06, 0x44, 0x8f, 0x80, 0x00, 0xc7
    db 0x06, 0x42, 0x8f, 0x03, 0x00, 0xc7, 0x06, 0x40, 0x8f, 0x00, 0x00, 0xc7, 0x06, 0x3e, 0x8f, 0x02
    db 0x00, 0xc7, 0x06, 0xee, 0x82, 0x00, 0x00, 0xc7, 0x06, 0x0c, 0x83, 0x13, 0x00, 0xc7, 0x06, 0x0a
    db 0x83, 0x06, 0x00, 0xc7, 0x06, 0x5e, 0x90, 0x12, 0x00, 0xb8, 0x01, 0x00, 0xc3, 0xa0, 0xc7, 0x91
    db 0x2a, 0xe4, 0x8b, 0xd8, 0x8a, 0x87, 0xde, 0x89, 0x98, 0x3b, 0x46, 0xda, 0x7d, 0x15, 0xff, 0x76
    db 0xd8, 0xff, 0x76, 0x04, 0xe8, 0xf8, 0xf5, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8
    db 0x01, 0x00, 0xc3, 0xe9, 0xc4, 0x01, 0xc7, 0x46, 0xc6, 0xff, 0xff, 0xc7, 0x46, 0xd0, 0x00, 0x00
    db 0xe9, 0x85, 0x00, 0xff, 0x76, 0xd8, 0xff, 0x76, 0xd0, 0xe8, 0xb7, 0xed, 0x83, 0xc4, 0x04, 0x89
    db 0x46, 0xc6, 0x3d, 0xff, 0xff, 0x74, 0x6e, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xd6
    db 0x89, 0x56, 0xd4, 0x52, 0x50, 0xff, 0x76, 0xd0, 0xe8, 0x0e, 0x94, 0x83, 0xc4, 0x06, 0xb8, 0x01
    db 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xd0, 0x50, 0xb8, 0x78, 0x00
    db 0xf7, 0x6e, 0xd6, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xd4, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x05, 0x34, 0x5c, 0x50, 0xff, 0x76, 0xda, 0xff, 0x76, 0xd0, 0xe8, 0xc2
    db 0xeb, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xda, 0xe8, 0x7e, 0x1e, 0x59, 0x85, 0xc0, 0x74, 0x16, 0x8b
    db 0x46, 0xda, 0x05, 0x70, 0xfe, 0x50, 0xa0, 0xc6, 0x91, 0x98, 0x50, 0xb8, 0x15, 0x00, 0x50, 0xe8
    db 0x83, 0x1e, 0x83, 0xc4, 0x06, 0xff, 0x46, 0xd0, 0x8b, 0x46, 0xd0, 0x3b, 0x06, 0xc8, 0x69, 0x7d
    db 0x09, 0x83, 0x7e, 0xc6, 0xff, 0x75, 0x03, 0xe9, 0x69, 0xff, 0xe9, 0x1d, 0x01, 0x8b, 0x46, 0xda
    db 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x05, 0x0f, 0x00, 0x89, 0x46, 0xd4, 0x89, 0x56, 0xc6, 0x8b
    db 0xc2, 0xb9, 0x10, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xd2, 0x89, 0x56, 0xd0, 0xff, 0x76, 0xd8
    db 0x52, 0x50, 0xff, 0x76, 0xd4, 0xe8, 0x97, 0xc9, 0x83, 0xc4, 0x08, 0xe9, 0xec, 0x00, 0x8b, 0x46
    db 0xd8, 0xa3, 0x34, 0x91, 0xe9, 0xe3, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xd8, 0xff, 0x76
    db 0xda, 0xe8, 0x1b, 0xee, 0x83, 0xc4, 0x06, 0xe9, 0xd0, 0x00, 0x8b, 0x46, 0xda, 0x8b, 0x4e, 0xd8
    db 0xd1, 0xe1, 0x8b, 0xd9, 0x89, 0x87, 0x78, 0x91, 0xe9, 0xbf, 0x00, 0x8b, 0x46, 0xda, 0x48, 0x89
    db 0x46, 0xfe, 0xe9, 0xb5, 0x00, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xd8, 0x8b, 0x46, 0xda, 0xd1
    db 0xe0, 0x05, 0x4e, 0x58, 0x50, 0xe8, 0x7a, 0xb5, 0x83, 0xc4, 0x06, 0xe9, 0x9c, 0x00, 0xff, 0x76
    db 0xda, 0xb8, 0x42, 0x58, 0x50, 0xe8, 0x9d, 0xb5, 0x83, 0xc4, 0x04, 0x3b, 0x46, 0xd8, 0x75, 0x04
    db 0xb8, 0x00, 0x00, 0xc3, 0x8b, 0x46, 0xda, 0x3d, 0x0c, 0x00, 0x75, 0x0b, 0x80, 0x3e, 0xc8, 0x86
    db 0x00, 0x75, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xeb
    db 'q2|6|Y|q|'
    db 0xa8, 0x7c, 0x96, 0x7d, 0xa6, 0x7d, 0x16
    db '~%~v~'
    db 0x88, 0x7e, 0x05, 0x7f, 0x5e, 0x7f, 0x73, 0x80, 0xd9, 0x80, 0xff, 0x80, 0x3d, 0x81, 0x5b, 0x81
    db 0x8e, 0x81, 0xaf, 0x81, 0xcf, 0x81, 0xe8, 0x81, 0x00, 0x82, 0x00, 0x82, 0x6e, 0x82, 0x82, 0x82
    db 0xb3, 0x82, 0xe5, 0x82, 0x0e, 0x83, 0x38, 0x83, 0x5d, 0x83, 0x80, 0x83, 0xe5, 0x83, 0x88, 0x84
    db 0xf9, 0x84, 0x11, 0x85, 0xa3, 0x7c, 0x1b, 0x85, 0x62, 0x85, 0x85, 0x85, 0x89, 0x85, 0xc3, 0x85
    db 0xec, 0x85, 0x93, 0x86, 0xc4, 0x86, 0xcd, 0x86, 0xe0, 0x86, 0xf1, 0x86, 0xfb, 0x86, 0x14, 0x87

    cmp ax, strict word 0x32
    jae short 0x3769
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x78c1]
    inc word [bp - 0x0002]
    jmp near 0x2bbc
    mov ax, 0
    ret
api_idx_0006_3:
    mov ax, 0xfffa
    call 0xf40b
    cmp byte [bp + 0x6], 2
    jne short 0x37b2
    mov ax, word [bp + 0x8]
    cwd
    mov cx, 8
    shl ax, 1
    rcl dx, 1
    loop 0x3786
    push ax
    push dx
    mov al, byte [bp + 0xa]
    sub ah, ah
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0006]
    mov dx, word [bp - 0x0004]
    add word [0x964a], ax
    adc word [0x964c], dx
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6eb4]
    cmp al, byte [bp + 0x6]
    je short 0x37cb
    jmp near 0x38af
    cmp byte [bp + 0x6], 2
    jne short 0x383b
    mov ax, word [bx - 0x6eb8]
    cwd
    mov cx, 8
    shl ax, 1
    rcl dx, 1
    loop 0x37d9
    push ax
    push dx
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6eb6]
    sub ah, ah
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    cmp dx, word [0x964c]
    jg short 0x380e
    jne short 0x3810
    cmp ax, word [0x964a]
    jbe short 0x3810
    jmp short 0x3838
    mov word [0x964c], 0
    mov word [0x964a], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6eb3]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0040
    add sp, byte 4
    mov word [bp + 0x8], ax
    ret
    jmp near 0x38af
    cmp byte [bp + 0x6], 1
    jne short 0x3855
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    cmp word [bx - 0x6eb8], byte 0
    jne short 0x3855
    mov word [bp + 0x8], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx - 0x6eb8]
    cmp ax, word [bp + 0x8]
    je short 0x386c
    cmp word [bp + 0x8], byte 0
    jne short 0x38af
    mov al, byte [bx - 0x6eb6]
    cmp al, byte [bp + 0xa]
    je short 0x387b
    cmp byte [bp + 0xa], 0
    jne short 0x38af
    mov al, byte [bx - 0x6eb5]
    cmp al, byte [bp + 0xc]
    je short 0x388a
    cmp byte [bp + 0xc], 0
    jne short 0x38af
    cmp byte [bp + 0x6], 4
    jne short 0x3893
    call loc_47b9
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6eb3]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0040
    add sp, byte 4
    mov word [bp + 0x8], ax
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short 0x38bd
    jmp near 0x37b7
    mov ax, 0
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    sub ax, word [bp + 0x8]
    mov word [bp - 0x0002], ax
    push ax
    cmp ax, strict word 0
    pop ax
    jge short 0x38e8
    mov ax, 0
    mov byte [bx + 0x5d5a], al
    cmp word [bp + 0xa], byte 0
    je short 0x38ff
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    ret
api_idx_0008_3:
    mov ax, 0xfff8
    call 0xf40b
    mov ax, word [bp + 0x6]
    jmp near 0x3a85
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [0x91c5]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0x8]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp + 0x8], ax
    mov al, byte [0x91cb]
    sub ah, ah
    test ax, 4
    jne short 0x3954
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x396c
    mov ax, 0x41
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x608
    push ax
    call api_idx_0050
    add sp, byte 8
    jmp short 0x39b3
    mov ax, 0x41
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x607
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, word [bp + 0x8]
    shl ax, 1
    push ax
    mov ax, 6
    push ax
    mov ax, word [bp + 0x8]
    shl ax, 1
    push ax
    call 0xd0ea
    add sp, byte 6
    mov cx, ax
    sub sp, byte 4
    mov ax, sp
    mov dx, ss
    mov es, dx
    mov si, cx
    mov di, ax
    movsw
    movsw
    call 0xd0be
    add sp, byte 4
    add word [0x964e], ax
    jmp near 0x3a95
    mov al, byte [0x91cb]
    sub ah, ah
    test ax, 8
    jne short 0x39f4
    cmp word [0x91a8], byte 0
    je short 0x39f4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov ax, 3
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    call 0xb7a9
    pop cx
    add ax, word [bp + 0x8]
    push ax
    mov al, byte [0x91c5]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x3a27
    mov ax, 0x95fa
    push ax
    mov ax, 0x609
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x41
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x95fa
    push ax
    call math_loc_130b
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x48
    push ax
    call api_idx_0004_5
    add sp, byte 4
    ret
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0x3a47
    mov ax, 1
    push ax
    push ax
    mov ax, 0xffff
    push ax
    call api_idx_0038
    add sp, byte 6
    test ax, ax
    jne short 0x3a47
    ret
    mov ax, 1
    push ax
    mov ax, 0x95a8
    push ax
    call api_idx_0084
    add sp, byte 4
    mov ax, 0x95fa
    push ax
    mov ax, 0x60a
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x95a8
    push ax
    mov ax, 0x95fa
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0x95fa
    push ax
    call math_loc_2472
    add sp, byte 4
    jmp short 0x3a95
    cmp ax, strict word 0x3c
    jne short 0x3a8d
    jmp near 0x390c
    cmp ax, strict word 0x44
    jne short 0x3a95
    jmp near 0x39b6
    ret
api_idx_0004_10:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0
    push ax
    call api_idx_0006
    pop cx
    call loc_10b6
    mov ax, 1
    push ax
    push ax
    mov ax, 0x7ea
    push ax
    push word [bp + 0x4]
    call api_idx_0044
    add sp, byte 8
    test ax, ax
    je short 0x3ac0
    jmp near 0x3b99
    mov ax, word [0x904e]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], dx
    mov ax, 6
    imul dx
    mov bx, ax
    cmp byte [bx + 0x624], 1
    jne short 0x3aed
    call 0xceb1
    mov word [0x9650], ax
    cmp ax, strict word 0xffff
    jne short 0x3aed
    mov word [bp - 0x0002], 0xffff
    cmp word [bp - 0x0002], byte 0
    jge short 0x3af6
    jmp near 0x3b99
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    imul word [bp - 0x0004]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    mov dx, ax
    shl ax, 1
    shl ax, 1
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    sub word [bx + 0x5c1c], ax
    push word [0x9650]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0008_3
    add sp, byte 8
    push word [bp - 0x0004]
    call 0xb7a9
    pop cx
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0004]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    sub word [bx + 0x5c10], ax
    cmp word [bx + 0x5c10], byte 0
    jge short 0x3b8c
    mov word [bx + 0x5c10], 0
    mov ax, 6
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    ret
api_idx_0018_2:
    mov ax, 0xffe8
    call 0xf40b
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 0xb
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0016], dx
    mov word [bp - 0x0018], ax
    lea ax, word [bp - 0x0014]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    push ax
    push word [bp + 0x8]
    call 0xbce3
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    inc ax
    inc ax
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xc]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0x8]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    push ax
    push word [bp + 0x8]
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0016]
    push word [bp - 0x0018]
    call 0xe94f
    add sp, byte 6
    ret
api_idx_0004_11:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp near 0x3ded
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short 0x3cec
    mov ax, 1
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    add ax, strict word 0xd
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x1c
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov word [bp - 0x0004], 0
    jmp short 0x3cf1
    mov word [bp - 0x0004], 0xb4
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x69ae], byte 0
    je short 0x3d27
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0xf
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6986]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    push word [bp - 0x0004]
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x1d
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    mov cx, 0x16
    imul cx
    add ax, 0x96a2
    push ax
    call api_idx_002a
    add sp, byte 8
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x67a6], byte 0
    jle short 0x3dea
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x47
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short 0x3dc4
    mov ax, word [bp - 0x0004]
    jmp short 0x3dc7
    mov ax, 2
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x67a6]
    call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short 0x3df8
    jmp near 0x3ca5
    ret
math_loc_3df9:
    mov ax, 0
    call 0xf40b
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xbd98
    add sp, byte 8
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0x10]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0c
    ret
api_idx_0038_2:
    mov ax, 0xffc8
    call 0xf40b
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x37
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x108
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x0012], 0x16
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short 0x3e6b
    mov ax, word [bp + 0xc]
    mov word [bp - 0x0022], ax
    mov ax, 0x90d0
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0038], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call 0xbc9a
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    je short 0x3eb6
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    jmp short 0x3ec3
    push word [bp + 0xe]
    lea ax, word [bp - 0x0036]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0020], 0xffff
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call math_loc_3df9
    add sp, byte 0x0e
    mov word [bp - 0x0010], 0
    push word [bp - 0x0010]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 1
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xb
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 2
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 4
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 5
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short 0x40be
    mov ax, word [bp + 0xc]
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short 0x4105
    mov ax, 0
    push ax
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x13
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xb9
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 6
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short 0x40c8
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 0x001e]
    add ax, strict word 6
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x139
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 9
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [0x59fc], byte 0
    je short 0x4175
    push word [bp - 0x001e]
    push word [bp - 0x0016]
    push word [bp - 0x0020]
    call loc_7832
    add sp, byte 6
    mov word [bp - 0x0020], ax
    mov word [0x5b3e], 1
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
    cmp word [0x5b3e], byte 1
    je short 0x417f
    jmp near 0x44f4
    mov ax, word [bp - 0x0018]
    jmp near 0x44e5

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xc3, 0xae, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x15, 0x76, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x95, 0xae, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0xe5, 0x75, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x1f, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d
    db 0x00, 0x50, 0xe8, 0xcf, 0xfb, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00
    db 0x50, 0xe8, 0x8f, 0x7d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03
    db 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0x2c, 0x78, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x3e, 0xa6, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x03
    db 0xe9, 0x0b, 0xff, 0xe9, 0x49, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xe4, 0x7b, 0x83
    db 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xb3, 0x7b
    db 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x03, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49
    db 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8
    db 0x80, 0x74, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76
    db 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x8f, 0xfa, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x4f, 0x7c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xec, 0x76, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa
    db 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xfe, 0xa4, 0x83, 0xc4, 0x08, 0xe9
    db 0x12, 0x01, 0xe9, 0x0f, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08
    db 0x00, 0x50, 0xe8, 0x5a, 0x7a, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08
    db 0x00, 0x50, 0xe8, 0x3a, 0x7a, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe6, 0x00, 0x00, 0xe9, 0xbe, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50
    db 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x08, 0x00, 0x50, 0xe8, 0x09, 0x7a, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x08, 0x00, 0x50, 0xe8, 0xe9, 0x79, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7
    db 0x46, 0xe6, 0x00, 0x00, 0xeb, 0x6e

    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x0018]
    add ax, strict word 0xfffa
    mov word [bp - 0x0020], ax
    push word [bp - 0x0022]
    push ax
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call math_loc_3df9
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xb9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x44f4
    int3
    xchg cx, ax
    db 0xf2, 0x92 ; xchg dx, ax
    db 0xf2, 0x92 ; xchg dx, ax
    sub word [si - 0x6bd4], dx
    jge short 0x4479
    cmp ax, strict word 6
    jae short 0x44f2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6ae0]
    jmp short 0x4486
    cmp word [bp - 0x001a], byte 0
    je short 0x44fd
    jmp near 0x4141
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x0020]
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
api_idx_0054_3:
    mov ax, 0xffac
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp near 0x4769
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0xc3
    push ax
    mov ax, 0x9b
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    shl ax, 1
    add ax, 0x9882
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x45b4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    shl ax, 1
    add ax, 0x98be
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x45b4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    add ax, 0x98fa
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x45c4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x61f
    push ax
    call 0xb53b
    add sp, byte 4
    jmp short 0x45e0
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x66e8]
    sub ah, ah
    add ax, 0x60e
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0xc3
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx - 0x66c8]
    push word [bx - 0x66ca]
    call 0xb293
    add sp, byte 8
    mov ax, 0xc3
    push ax
    mov ax, 0x1b
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x99ae
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x10]
    jne short 0x469a
    mov ax, 1
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    add ax, strict word 0xd
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x53
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov word [bp - 0x0004], 0
    jmp short 0x469f
    mov word [bp - 0x0004], 0xb4
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x46
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6648]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    push word [bp - 0x0004]
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x54
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    mov cx, 0x16
    imul cx
    add ax, 0x99d6
    push ax
    call api_idx_002a
    add sp, byte 8
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x66e8]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short 0x4766
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x7e
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x10]
    jne short 0x4740
    mov ax, word [bp - 0x0004]
    jmp short 0x4743
    mov ax, 2
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6396]
    call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xc]
    jge short 0x4774
    jmp near 0x4522
    ret
math_loc_4775:
    mov ax, 0
    call 0xf40b
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xbd98
    add sp, byte 8
    push word [bp + 0x10]
    push word [bp + 0xe]
    push word [bp + 0x12]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0054_3
    add sp, byte 0x0e
    ret
loc_47b9:
    mov ax, 0
    call 0xf40b
    call loc_109f
    mov ax, 0xc6
    push ax
    mov ax, 0x11d
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x22
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0038_3:
    mov ax, 0xffc8
    call 0xf40b
    mov ax, 0x99ae
    push ax
    mov ax, 0x5e4
    push ax
    call 0xb53b
    add sp, byte 4
    mov word [0x904e], 0xffff
    mov word [0x93d8], 0x8d
    mov word [bp - 0x0004], 0x23
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x11c
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x0012], 0x16
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short 0x481e
    mov ax, word [bp + 0xc]
    mov word [bp - 0x0022], ax
    mov ax, 0x90d6
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0038], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call 0xbc9a
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x26
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0xb3
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0a]
    push word [bx + 0x5c08]
    call 0xb1db
    add sp, byte 6
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    lea ax, word [bp - 0x0036]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    add ax, strict word 0x12
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x26
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0036]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0036]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov ax, word [bp + 0xe]
    inc ax
    inc ax
    inc ax
    cmp ax, word [bp + 0xc]
    jle short 0x49ad
    mov ax, word [bp + 0xc]
    dec ax
    dec ax
    dec ax
    mov word [bp + 0xe], ax
    mov ax, 0
    cmp word [bp + 0xe], byte 0
    jle short 0x49b9
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0016], ax
    mov word [bp - 0x0020], 0xffff
    mov word [0x9ca6], 0xffff
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push ax
    mov ax, 7
    push ax
    mov ax, 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x4e
    push ax
    push word [bp + 0x4]
    call math_loc_4775
    add sp, byte 0x10
    mov word [bp - 0x0010], 0
    cmp word [bp + 0xc], byte 3
    jle short 0x4a24
    push word [bp - 0x0012]
    mov ax, 0
    push ax
    mov ax, 0x64
    imul word [bp - 0x0012]
    add ax, strict word 0x64
    mov cx, word [bp + 0xc]
    dec cx
    dec cx
    dec cx
    cwd
    idiv cx
    imul word [bp - 0x0016]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0010], ax
    push word [bp - 0x0010]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe8
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xf0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe8
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xf0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe8
    push ax
    mov ax, 1
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xb
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xf0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe8
    push ax
    mov ax, 2
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xd
    push ax
    mov ax, 0x42
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 4
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 5
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 3
    mov cx, word [bp + 0xc]
    cmp cx, byte 3
    jge short 0x4b64
    mov ax, cx
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short 0x4bab
    mov ax, 0
    push ax
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x13
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe0
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x4e
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 6
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short 0x4b6e
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 0x001e]
    add ax, strict word 6
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x139
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 9
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    call api_idx_0006_2
    cmp word [0x59fc], byte 0
    je short 0x4c1e
    push word [bp - 0x001e]
    push word [bp - 0x0016]
    push word [bp - 0x0020]
    call loc_7832
    add sp, byte 6
    mov word [bp - 0x0020], ax
    mov word [0x5b3e], 1
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
    cmp word [0x5b3e], byte 1
    je short 0x4c28
    jmp near 0x4fc4
    mov ax, word [bp - 0x0018]
    jmp near 0x4fb5

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x1a, 0xa4, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x6c, 0x6b, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xec, 0xa3, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0x3c, 0x6b, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x30, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0xc1, 0xf7, 0x6e, 0xee, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0x8b, 0x46, 0xf0, 0x3b, 0x46, 0xee, 0x75, 0x09, 0x8b, 0x46, 0x0c, 0x48, 0x48
    db 0x48, 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x4e, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x8e, 0xfa, 0x83, 0xc4, 0x10, 0xff, 0x76, 0xf0, 0xb8
    db 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0xe8, 0x00, 0x50, 0xe8, 0xd2, 0x72, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50
    db 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xf0, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xe8
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x6f, 0x6d, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05
    db 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xf0, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00
    db 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x4e, 0x00, 0x50, 0xe8, 0x81, 0x9b, 0x83, 0xc4, 0x08, 0x83, 0x7e
    db 0xe4, 0x00, 0x74, 0x03, 0xe9, 0xf7, 0xfe, 0xe9, 0x5c, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31
    db 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xf0
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xe8, 0x00, 0x50
    db 0xe8, 0x27, 0x71, 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb
    db 0x34, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xf0, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xe8, 0x00
    db 0x50, 0xe8, 0xf6, 0x70, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x8b, 0x46, 0x0c, 0x3d, 0x03, 0x00, 0x7e, 0x2c, 0xff, 0x76
    db 0xee, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e
    db 0x0c, 0x49, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9
    db 0x50, 0xe8, 0xc1, 0x69, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0
    db 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x4e, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x49, 0xf9, 0x83
    db 0xc4, 0x10, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xe8, 0x00, 0x50, 0xe8, 0x8d, 0x71, 0x83, 0xc4
    db 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0xf0, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00
    db 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xe8, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x2a, 0x6c, 0x83
    db 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xf0, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x4e, 0x00, 0x50, 0xe8, 0x3c
    db 0x9a, 0x83, 0xc4, 0x08, 0xe9, 0x20, 0x01, 0xe9, 0x1d, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48
    db 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x98, 0x6f, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x78, 0x6f, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50
    db 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xe9, 0xcc, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74
    db 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00
    db 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x47, 0x6f, 0x83, 0xc4, 0x0a, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00
    db 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x27, 0x6f, 0x83, 0xc4, 0x0a, 0xc7, 0x06
    db 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xeb, 0x7c

    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x0018]
    add ax, strict word 0xfffa
    mov word [bp - 0x0020], ax
    mov ax, word [bp - 0x0018]
    add ax, strict word 0xfffa
    mov word [0x9ca6], ax
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x4e
    push ax
    push word [bp + 0x4]
    call math_loc_4775
    add sp, byte 0x10
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x4e
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x4fc4
    jne short 0x4f47
    scasw
    popf
    scasw
    popf
    jmp short 0x4f4f
    out dx, al
    sahf
    aas
    lahf
    cmp ax, strict word 6
    jae short 0x4fc2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6010]
    jmp short 0x4f48
    cmp word [bp - 0x001a], byte 0
    je short 0x4fcd
    jmp near 0x4be7
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    call 0xc459
    add sp, byte 4
    mov word [0x93d8], 0x8f
    mov ax, word [bp - 0x0020]
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
api_idx_004c_2:
    mov ax, 0xffb4
    call 0xf40b
    mov word [0x9ca8], 0
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jg short 0x502a
    jmp near 0x513e
    mov ax, 0
    push ax
    push word [bx + 0x5c34]
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 0x80
    je short 0x5082
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 0x16
    imul word [0x9ca8]
    add ax, 0x96a2
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x509c
    mov ax, 0x16
    imul word [0x9ca8]
    add ax, 0x96a2
    push ax
    mov al, byte [bp - 0x0013]
    sub ah, ah
    add ax, 0x1770
    push ax
    call 0xb53b
    add sp, byte 4
    mov al, byte [bp - 0x0013]
    sub ah, ah
    mov cx, word [0x9ca8]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6986], ax
    mov ax, word [bp - 0x0002]
    mov word [bx - 0x69ae], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c38]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short 0x5117
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3a]
    sub ah, ah
    mov cx, word [0x9ca8]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x67a6], ax
    jmp short 0x5124
    mov ax, word [0x9ca8]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x67a6], 0
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    mov cx, word [0x9ca8]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6356], ax
    inc word [0x9ca8]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jge short 0x514c
    jmp near 0x5000
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jge short 0x515a
    jmp near 0x4ffb
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call 0xf40b
    dec word [0x9ca8]
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0002], ax
    jmp short 0x51b1
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x96b8
    push ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x96a2
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6984]
    mov word [bx - 0x6986], ax
    mov ax, word [bx - 0x69ac]
    mov word [bx - 0x69ae], ax
    mov ax, word [bx - 0x67a4]
    mov word [bx - 0x67a6], ax
    mov ax, word [bx - 0x6354]
    mov word [bx - 0x6356], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9ca8]
    jl short 0x516d
    ret
api_idx_0068:
    mov ax, 0xff98
    call 0xf40b
    push word [bp + 0x4]
    call api_idx_004c_2
    pop cx
    cmp word [0x9ca8], byte 0
    jne short 0x51d0
    ret
    mov ax, 0
    push ax
    call api_idx_0006
    pop cx
    call loc_10b6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    push word [0x9ca8]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x5ea
    push ax
    call api_idx_0038_2
    add sp, byte 0x0c
    mov word [bp - 0x004c], ax
    mov ax, word [0x904e]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x004c], byte 2
    je short 0x5210
    cmp ax, strict word 0xffff
    jne short 0x5227
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6356]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x004e], ax
    mov word [bp - 0x0050], dx
    mov ax, 0x10
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x96
    push ax
    mov ax, 0x3f
    push ax
    push word [bp - 0x004c]
    mov ax, word [bp - 0x004c]
    add ax, 0x5ea
    push ax
    call api_idx_0018_2
    add sp, byte 0x0c
    mov ax, word [bp - 0x004c]
    cmp word [bp - 0x004c], byte 1
    je short 0x526a
    jmp near 0x5311
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x004e]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c34]
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    cmp word [bp - 0x0028], byte 0
    je short 0x5311
    mov ax, word [bp - 0x0028]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0054], ax
    mov word [bp - 0x0052], dx
    mov ax, 6
    imul dx
    mov bx, ax
    cmp byte [bx + 0x624], 1
    jne short 0x52d3
    call 0xceb1
    mov word [0x9650], ax
    cmp ax, strict word 0xffff
    jne short 0x52d3
    mov word [bp - 0x0052], 0xffff
    cmp word [bp - 0x0052], byte 0xff
    je short 0x5311
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    push word [bp - 0x0050]
    push word [bp - 0x004e]
    push word [bp + 0x4]
    call 0xca27
    add sp, byte 6
    push word [0x9650]
    push word [bp - 0x0054]
    push word [bp - 0x0052]
    push word [bp + 0x4]
    call api_idx_0008_3
    add sp, byte 8
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    cmp word [bp - 0x004c], byte 1
    jne short 0x5370
    mov ax, 0
    push ax
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x004e]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c34]
    mov ax, 9
    push ax
    push word [bp + 0x4]
    call api_idx_0006_3
    add sp, byte 0x0a
    ret
api_idx_0004_12:
    mov ax, 0xfffc
    call 0xf40b
    mov word [0x9cd2], 0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x632c], byte 0
    jg short 0x5393
    jmp near 0x546a
    mov ax, word [bx - 0x632c]
    mov cx, word [0x9cd2]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x632c], ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x99d6
    push ax
    mov ax, 0x16
    imul word [0x9cd2]
    add ax, 0x99d6
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6396]
    mov cx, word [0x9cd2]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6396], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x66ca]
    mov dx, word [bx - 0x66c8]
    mov cx, word [0x9cd2]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x66c8], dx
    mov word [bx - 0x66ca], ax
    mov bx, word [bp - 0x0002]
    mov al, byte [bx - 0x66e8]
    mov bx, word [0x9cd2]
    mov byte [bx - 0x66e8], al
    mov bx, word [bp - 0x0002]
    mov al, byte [bx - 0x6648]
    mov bx, word [0x9cd2]
    mov byte [bx - 0x6648], al
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx - 0x677e]
    mov cx, word [0x9cd2]
    shl cx, 1
    add cx, word [bp - 0x0004]
    mov bx, cx
    mov byte [bx - 0x677e], al
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx - 0x6742]
    mov bx, cx
    mov byte [bx - 0x6742], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short 0x541b
    mov bx, word [bp - 0x0002]
    mov al, byte [bx - 0x6706]
    mov bx, word [0x9cd2]
    mov byte [bx - 0x6706], al
    inc word [0x9cd2]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x1e
    jge short 0x5478
    jmp near 0x5382
    mov ax, word [0x9cd2]
    mov word [bp - 0x0002], ax
    jmp short 0x5490
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x632c], 0
    inc word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 0x1e
    jl short 0x5480
    ret
math_loc_5497:
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x4], strict word 0x190
    jl short 0x54b0
    cmp word [bp + 0x4], strict word 0x19b
    jge short 0x54b0
    mov ax, 1
    jmp short 0x54b3
    mov ax, 0
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call 0xf40b
    mov al, byte [bp + 0x4]
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b5a], al
    mov byte [bx - 0x7b59], 0
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8502
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec41
    add sp, byte 6
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp - 0x0002]
    add ax, 0x8504
    push ax
    call 0xec41
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x16
    jl short 0x5503
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call 0xec41
    add sp, byte 6
    cmp word [bp + 0x6], byte 0xff
    je short 0x5570
    mov ax, 0
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8502
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8504
    push ax
    call 0xec41
    add sp, byte 6
    ret
api_idx_0008_4:
    mov ax, 0xfff8
    call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x632c]
    mov word [bp - 0x0004], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    add ax, 0x9882
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x55e9
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    add ax, 0x98be
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x55e9
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0x98fa
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x55ff
    mov ax, 0x9b
    push ax
    mov ax, 0x49
    push ax
    mov ax, 0x5e2
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0004_7
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x562a
    mov ax, 0x9b
    push ax
    mov ax, 0x49
    push ax
    mov ax, 0x5e1
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c08]
    mov dx, word [bx + 0x5c0a]
    mov cx, word [bp + 0x6]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x66ca]
    mov bx, word [bx - 0x66c8]
    cmp dx, bx
    jg short 0x5655
    jne short 0x5657
    cmp ax, cx
    jb short 0x5657
    jmp short 0x566d
    mov ax, 0x9b
    push ax
    mov ax, 0x49
    push ax
    mov ax, 0x5df
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
    mov ax, 0x9b
    push ax
    mov ax, 0x49
    push ax
    mov ax, 0x5e3
    push ax
    call api_idx_0054_2
    add sp, byte 6
    push word [bp - 0x0004]
    call math_loc_5497
    pop cx
    test ax, ax
    je short 0x56a0
    mov ax, word [bp - 0x0004]
    add ax, 0xfe70
    push ax
    mov al, byte [0x91c6]
    cbw
    push ax
    mov ax, 0x15
    push ax
    call api_idx_0002_5
    add sp, byte 6
    mov ax, word [bp - 0x0002]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov ax, 1
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6396]
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0008]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    push ax
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call api_idx_004c
    add sp, byte 0x0a
    push word [bp + 0x4]
    call api_idx_004c_2
    pop cx
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x66ca]
    mov dx, word [bx - 0x66c8]
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    sub word [bx + 0x5c08], ax
    sbb word [bx + 0x5c0a], dx
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x632c], 0
    call api_idx_0004_12
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0004]
    mov ax, 4
    push ax
    push word [bp + 0x4]
    call api_idx_0006_3
    add sp, byte 0x0a
    ret
api_idx_0006_4:
    mov ax, 0xfffa
    call 0xf40b
    call loc_10b6
    mov word [bp - 0x0006], 0
    push word [bp - 0x0006]
    push word [0x9cd2]
    mov ax, 1
    push ax
    push ax
    mov ax, 0x629
    push ax
    push word [bp + 0x4]
    call api_idx_0038_3
    add sp, byte 0x0c
    mov word [bp - 0x0002], ax
    mov ax, word [0x904e]
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0002], byte 1
    jne short 0x5798
    cmp ax, strict word 0xffff
    je short 0x5798
    push ax
    push word [bp + 0x4]
    call api_idx_0008_4
    add sp, byte 4
    test ax, ax
    je short 0x578e
    call loc_47b9
    mov ax, 1
    ret
    mov ax, word [bp - 0x0004]
    sub ax, word [0x9ca6]
    mov word [bp - 0x0006], ax
    mov word [0x93d8], 0x8d
    call loc_10b6
    mov word [0x93d8], 0x8f
    cmp word [bp - 0x0002], byte 2
    je short 0x57b4
    cmp word [0x9cd2], byte 0
    jg short 0x574c
    call loc_47b9
    mov ax, 0
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x2f
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x57e0
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short 0x57c1
    ret
api_idx_005e_2:
    mov ax, 0xffa2
    call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6356]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], dx
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000a]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c34]
    mov word [bp - 0x0008], ax
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    mov al, byte [bp - 0x0038]
    sub ah, ah
    push ax
    mov al, byte [bp - 0x0037]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x003a]
    mov word [bp - 0x0004], ax
    cmp ax, strict word 1
    jge short 0x585a
    mov word [bp - 0x0004], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000a]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3a]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, strict word 1
    jge short 0x588d
    mov word [bp - 0x0006], 1
    mov al, byte [bp - 0x001c]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short 0x58ba
    mov ax, word [bp - 0x0006]
    cwd
    push ax
    push dx
    mul word [bp - 0x003c]
    mov cx, ax
    pop ax
    mul word [bp - 0x003e]
    add cx, ax
    pop ax
    mul word [bp - 0x003e]
    add dx, cx
    mov word [bp - 0x003c], dx
    mov word [bp - 0x003e], ax
    jmp short 0x5908
    mov ax, word [bp - 0x003e]
    mov dx, word [bp - 0x003c]
    push ax
    xchg dx, ax
    mov bx, 0x64
    mul bx
    mov cx, ax
    pop ax
    mul bx
    add dx, cx
    push ax
    push dx
    mov ax, word [bp - 0x0004]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call 0xf99f
    push ax
    push dx
    mov ax, word [bp - 0x0006]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    push ax
    push dx
    mul bx
    mov bx, ax
    pop ax
    mul cx
    add bx, ax
    pop ax
    mul cx
    add dx, bx
    mov cx, 0x64
    mov bx, 0
    call 0xf99f
    mov word [bp - 0x003c], dx
    mov word [bp - 0x003e], ax
    push word [bp - 0x0008]
    call math_loc_5497
    pop cx
    test ax, ax
    je short 0x591b
    mov ax, word [bp - 0x003e]
    mov dx, word [bp - 0x003c]
    jmp short 0x593b
    mov ax, word [0x91ac]
    cwd
    push ax
    push dx
    mul word [bp - 0x003c]
    mov cx, ax
    pop ax
    mul word [bp - 0x003e]
    add cx, ax
    pop ax
    mul word [bp - 0x003e]
    add dx, cx
    mov cx, 0x64
    mov bx, 0
    call 0xf99f
    mov word [bp - 0x003c], dx
    mov word [bp - 0x003e], ax
    push word [bp - 0x0008]
    call math_loc_5497
    pop cx
    test ax, ax
    je short 0x5953
    cmp byte [0x91c6], 0xff
    je short 0x5971
    push word [bp - 0x0008]
    call math_loc_5497
    pop cx
    test ax, ax
    jne short 0x5987
    mov al, byte [bp - 0x001d]
    sub ah, ah
    test ax, 2
    je short 0x5987
    mov ax, word [bp - 0x0008]
    cmp ax, word [0x91ae]
    je short 0x5987
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5dd
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
    cmp word [bp - 0x003c], byte 0
    jg short 0x5995
    jne short 0x5997
    cmp word [bp - 0x003e], byte 0
    jbe short 0x5997
    jmp short 0x59a0
    mov ax, word [bp - 0x0008]
    cmp ax, word [0x91ae]
    jne short 0x59a7
    cmp word [bp - 0x0008], strict word 0x19a
    jne short 0x59bd
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5de
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000a]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 1
    je short 0x59fe
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5dc
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
    mov ax, 0x95a8
    push ax
    mov ax, 0x633
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x95fa
    push ax
    push word [bp - 0x003c]
    push word [bp - 0x003e]
    call 0xb1db
    add sp, byte 6
    mov ax, 0x24
    push ax
    mov ax, 0x95fa
    push ax
    mov ax, 0x95a8
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x95fa
    push ax
    mov ax, 0x634
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x16
    imul word [bp + 0x6]
    add ax, 0x96a2
    push ax
    mov ax, 0x9d10
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x9d10
    push ax
    call api_idx_0002_6
    pop cx
    mov ax, 0x24
    push ax
    mov ax, 0x9d10
    push ax
    mov ax, 0x95fa
    push ax
    call 0xb300
    add sp, byte 6
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x005e], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 1
    jle short 0x5a6f
    mov word [bp - 0x005a], 0xffff
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0xb5
    push ax
    mov ax, 0x4a
    push ax
    mov ax, 0x635
    push ax
    mov ax, 0x95fa
    push ax
    mov ax, 0x95a8
    push ax
    call math_loc_1d39
    add sp, byte 0x1c
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0
    je short 0x5ad7
    jmp near 0x5b70
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000a]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c34]
    mov word [bp - 0x0008], ax
    push ax
    call math_loc_5497
    pop cx
    test ax, ax
    je short 0x5b1d
    mov ax, word [bp - 0x0008]
    add ax, 0xfe70
    push ax
    mov ax, 0x15
    push ax
    mov al, byte [0x91c6]
    cbw
    push ax
    call api_idx_0002_5
    add sp, byte 6
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp + 0x4]
    call 0xc9e8
    add sp, byte 6
    push word [bp + 0x6]
    call api_idx_0002_4
    pop cx
    mov ax, word [bp - 0x003e]
    mov dx, word [bp - 0x003c]
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    add word [bx + 0x5c08], ax
    adc word [bx + 0x5c0a], dx
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0008]
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call api_idx_0006_3
    add sp, byte 0x0a
    ret
    mov ax, 0
    ret
api_idx_004e:
    mov ax, 0xffb2
    call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6356]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c34]
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    lea ax, word [bp - 0x004e]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    push word [bp - 0x0002]
    call math_loc_5497
    pop cx
    test ax, ax
    je short 0x5bdf
    cmp byte [0x91c6], 0xff
    je short 0x5bfd
    push word [bp - 0x0002]
    call math_loc_5497
    pop cx
    test ax, ax
    jne short 0x5c13
    mov al, byte [bp - 0x0017]
    sub ah, ah
    test ax, 2
    je short 0x5c13
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x91ae]
    je short 0x5c13
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5dd
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 1
    je short 0x5c54
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5dc
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0038]
    mov dx, word [bp - 0x0036]
    mov cx, 0xa
    mov bx, 0
    call 0xf99f
    push ax
    push dx
    mov al, byte [0x91c5]
    sub ah, ah
    inc ax
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call 0xf99f
    push dx
    push ax
    push word [bp + 0x4]
    call math_loc_85f9
    add sp, byte 8
    push word [bp - 0x0002]
    call math_loc_5497
    pop cx
    test ax, ax
    je short 0x5cad
    mov ax, word [bp - 0x0002]
    add ax, 0xfe70
    push ax
    mov ax, 0x15
    push ax
    mov al, byte [0x91c6]
    cbw
    push ax
    call api_idx_0002_5
    add sp, byte 6
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call 0xc9e8
    add sp, byte 6
    push word [bp + 0x6]
    call api_idx_0002_4
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5e0
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0002]
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call api_idx_0006_3
    add sp, byte 0x0a
    ret
api_idx_0006_5:
    mov ax, 0xfffa
    call 0xf40b
    call loc_10b6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    push word [0x9ca8]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x6]
    call api_idx_0038_2
    add sp, byte 0x0c
    mov word [bp - 0x0006], ax
    mov ax, word [0x904e]
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x8]
    jne short 0x5d79
    cmp word [bp - 0x0002], byte 0xff
    je short 0x5d79
    cmp word [bp + 0xa], byte 0
    jne short 0x5d6a
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_005e_2
    add sp, byte 4
    mov word [bp - 0x0004], ax
    jmp short 0x5d79
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    ret
api_idx_0054_4:
    mov ax, 0xffac
    call 0xf40b
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    call api_idx_0054
    mov ax, 1
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0xa0
    push ax
    push word [bp + 0x8]
    call math_loc_0b30
    add sp, byte 8
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0a]
    push word [bx + 0x5c08]
    call 0xb1db
    add sp, byte 6
    push word [bp + 0xa]
    lea ax, word [bp - 0x0054]
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, 0xb3
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call math_loc_0b30
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    jmp short 0x5e17
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0xe]
    cmp word [bx + si], byte 0
    je short 0x5e14
    inc word [bp - 0x0002]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0xc]
    jle short 0x5e02
    push word [bp + 0xe]
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    cmp word [bp - 0x0002], byte 5
    jge short 0x5e36
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x2a
    push ax
    mov ax, 6
    push ax
    mov ax, 0xa6
    push ax
    mov ax, 0xe7
    push ax
    mov ax, 9
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x6]
    call math_loc_1821
    add sp, byte 0x18
    mov word [bp - 0x0004], ax
    mov ax, 0
    push ax
    call api_idx_0006
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0xa0
    push ax
    push word [bp + 0x8]
    call math_loc_0b30
    add sp, byte 8
    mov ax, 0xb3
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call math_loc_0b30
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    ret
api_idx_0072:
    mov ax, 0xff8e
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0018], 1
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jle short 0x5ea1
    mov al, byte [0x91cb]
    sub ah, ah
    test ax, 2
    je short 0x5ece
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0016], 0
    mov word [bp - 0x000e], 0xffff
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0072]
    push ax
    mov ax, 0x5e8
    push ax
    call 0xb53b
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_004c_2
    pop cx
    cmp word [0x9cd2], byte 0
    jg short 0x5f08
    mov word [bp - 0x0018], 0
    cmp word [0x9ca8], byte 0
    jne short 0x5f19
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0014], 0
    lea ax, word [bp - 0x0018]
    push ax
    mov ax, 4
    push ax
    lea ax, word [bp - 0x0072]
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x5f0
    push ax
    push word [bp + 0x4]
    call api_idx_0054_4
    add sp, byte 0x0c
    mov word [bp - 0x0004], ax
    jmp near 0x5fb2
    push word [bp + 0x4]
    call api_idx_0006_4
    pop cx
    jmp near 0x5fc6
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x62c
    push ax
    push word [bp + 0x4]
    call api_idx_0006_5
    add sp, byte 8
    test ax, ax
    je short 0x5f64
    mov word [bp - 0x0004], 4
    jmp short 0x5fc6
    mov ax, 1
    push ax
    push ax
    mov ax, 0x62f
    push ax
    push word [bp + 0x4]
    call api_idx_0006_5
    add sp, byte 8
    test ax, ax
    je short 0x5f81
    mov word [bp - 0x0004], 4
    jmp short 0x5fc6
    push word [bp + 0x4]
    call api_idx_0006_7
    pop cx
    mov ax, 2
    push ax
    call api_idx_0006
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call math_loc_0b30
    add sp, byte 8
    mov ax, 2
    push ax
    call loc_0c96
    pop cx
    jmp short 0x5fc6
    cmp ax, strict word 0
    je short 0x5f3c
    cmp ax, strict word 1
    je short 0x5f46
    cmp ax, strict word 2
    je short 0x5f66
    cmp ax, strict word 3
    je short 0x5f83
    cmp word [bp - 0x0004], byte 4
    je short 0x5fcf
    jmp near 0x5efc
    ret
api_idx_005e_3:
    mov ax, 0xffa2
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [0x91c5]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov cx, 5
    imul cx
    push ax
    mov al, byte [bx + 0x5d7b]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0002], ax
    cmp byte [bx + 0x5e2d], 3
    jne short 0x601b
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    shl ax, 1
    add word [bp - 0x0002], ax
    jmp short 0x6034
    mov al, byte [bx + 0x5e2d]
    cmp al, 4
    je short 0x602b
    cmp al, 6
    je short 0x602b
    cmp al, 0xd
    jne short 0x6034
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    add word [bp - 0x0002], ax
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    push ax
    add bx, word [0x9136]
    mov al, byte [bx + 0x5db2]
    cbw
    add ax, word [0x964e]
    mov cx, 4
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0xfff6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jl short 0x6068
    cmp word [0x9136], byte 0x30
    jne short 0x606d
    mov word [bp - 0x0002], 0
    cmp word [bp - 0x0002], byte 0x5f
    jle short 0x6078
    mov word [bp - 0x0002], 0x5f
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    add ax, word [0x9d60]
    mov word [bp - 0x0004], ax
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    add ax, word [0x9d60]
    add ax, strict word 0xa
    mov word [0x9d60], ax
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, 0x622
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x55
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call math_loc_130b
    add sp, byte 8
    mov word [bp - 0x000a], 0
    push word [0x9cd2]
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x000a]
    jle short 0x60fa
    inc word [bp - 0x000a]
    jmp short 0x60e8
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov al, byte [0x91c5]
    sub ah, ah
    mov cx, ax
    inc ax
    mov cx, ax
    pop ax
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    cwd
    cmp dx, word [0x91b8]
    jl short 0x6128
    jne short 0x612a
    cmp ax, word [0x91b6]
    ja short 0x612a
    jmp short 0x6130
    mov ax, word [0x91b6]
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x613b
    jmp near 0x6244
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0004_7
    add sp, byte 4
    mov word [bp - 0x0008], ax
    call api_idx_0004_12
    mov ax, 3
    push ax
    mov ax, 0xf
    push ax
    push word [bp + 0x4]
    call math_loc_8662
    add sp, byte 6
    cmp word [bp - 0x0008], byte 0xff
    je short 0x618c
    cmp word [0x9cd2], byte 0
    jle short 0x618c
    mov ax, word [bp - 0x000a]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x632c]
    call math_loc_5497
    pop cx
    test ax, ax
    jne short 0x618c
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    cmp ax, strict word 0x21
    jge short 0x61d6
    cmp word [bp - 0x0006], byte 0
    jg short 0x61a2
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x624
    push ax
    call 0xb53b
    add sp, byte 4
    jmp short 0x61d4
    mov ax, word [bp - 0x0006]
    cwd
    sub word [0x91b6], ax
    sbb word [0x91b8], dx
    mov ax, word [bp - 0x0006]
    cwd
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    add word [bx + 0x5c08], ax
    adc word [bx + 0x5c0a], dx
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x626
    push ax
    call 0xb53b
    add sp, byte 4
    jmp short 0x6241
    mov ax, word [bp - 0x0008]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000e], dx
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000a]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6396]
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    push ax
    push word [bx - 0x632c]
    push word [bp + 0x4]
    call api_idx_004c
    add sp, byte 0x0a
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x625
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x000a]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x632c], 0
    call api_idx_0004_12
    jmp near 0x62ef
    mov ax, word [bp - 0x0002]
    shl ax, 1
    cmp ax, word [bp - 0x0004]
    jl short 0x6257
    cmp word [bp - 0x0004], byte 0x5f
    jge short 0x6257
    jmp near 0x62e1
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x628
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x16
    push ax
    mov ax, 1
    push ax
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call math_loc_130b
    add sp, byte 8
    cmp word [0x9136], byte 0x30
    je short 0x62ca
    mov ax, 0xf
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    add ax, strict word 0xf
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    mov ax, 0x19
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    add ax, strict word 0x19
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    push word [bp + 0x4]
    call math_loc_85f9
    add sp, byte 6
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 0xa
    push ax
    push word [bp + 0x4]
    call api_idx_0006_3
    add sp, byte 0x0a
    mov ax, 0xffff
    ret
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x624
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x55
    push ax
    mov ax, 1
    push ax
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call math_loc_130b
    add sp, byte 8
    mov ax, 0
    ret
api_idx_00d2:
    mov ax, 0xff2e
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x00c4]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x00ce]
    push ax
    mov ax, 0x5e8
    push ax
    call 0xb53b
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_004c_2
    pop cx
    mov word [bp - 0x0002], 0
    mov word [bp - 0x005c], 1
    mov word [bp - 0x0060], 0
    mov ax, word [bp - 0x0060]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0074], 1
    inc word [bp - 0x0060]
    mov ax, word [bp - 0x0060]
    cmp ax, strict word 5
    jle short 0x635e
    mov word [bp - 0x0068], 0xffff
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c0a], byte 0
    jne short 0x6390
    cmp word [bx + 0x5c08], byte 0
    jne short 0x6397
    mov word [bp - 0x0072], 0
    cmp word [0x9ca8], byte 0
    jne short 0x63a3
    mov word [bp - 0x006e], 0
    lea ax, word [bp - 0x0074]
    push ax
    mov ax, 5
    push ax
    lea ax, word [bp - 0x00ce]
    push ax
    lea ax, word [bp - 0x00c4]
    push ax
    mov ax, 0x5d2
    push ax
    push word [bp + 0x4]
    call api_idx_0054_4
    add sp, byte 0x0c
    mov word [bp - 0x0060], ax
    jmp near 0x65a5
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x5d88]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, word [bx + 0x5c18]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    add word [bp - 0x0002], ax
    cmp byte [bx + 0x5e2d], 0xa
    je short 0x6409
    cmp byte [bx + 0x5e2d], 9
    jne short 0x6412
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    add word [bp - 0x0002], ax
    mov word [bp - 0x005c], 0
    jmp near 0x65b2
    mov word [0x9d62], 1
    mov word [bp - 0x005e], 0
    jmp short 0x6444
    push word [bp - 0x005e]
    call 0xca85
    pop cx
    test ax, ax
    je short 0x6441
    mov ax, 0x248
    imul word [bp - 0x005e]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    add word [bp - 0x0002], ax
    inc word [bp - 0x005e]
    mov ax, word [bp - 0x005e]
    cmp ax, word [0x69c8]
    jl short 0x6427
    mov al, byte [0x91c5]
    sub ah, ah
    mov cx, 5
    imul cx
    sub word [bp - 0x0002], ax
    mov word [bp - 0x005c], 0
    jmp near 0x65b2
    mov ax, 1
    push ax
    push ax
    mov ax, 0x62f
    push ax
    push word [bp + 0x4]
    call api_idx_0006_5
    add sp, byte 8
    test ax, ax
    je short 0x6482
    mov word [bp - 0x0060], 5
    mov word [bp - 0x005c], 0
    jmp near 0x65b2
    cmp word [bp - 0x0060], byte 4
    jne short 0x6495
    push word [bp + 0x4]
    call api_idx_0006_7
    pop cx
    jmp near 0x6569
    mov word [0x9d62], 2
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    mov cx, 0xa
    imul cx
    add ax, strict word 0x14
    push ax
    mov al, byte [0x91c5]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    cwd
    mov word [bp - 0x00d0], dx
    mov word [bp - 0x00d2], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov cx, word [bx + 0x5c08]
    mov bx, word [bx + 0x5c0a]
    mov ax, word [bp - 0x00d2]
    mov dx, word [bp - 0x00d0]
    cmp bx, dx
    jg short 0x64e1
    jne short 0x64e3
    cmp cx, ax
    jb short 0x64e3
    jmp short 0x64eb
    mov word [bp - 0x00d0], bx
    mov word [bp - 0x00d2], cx
    mov ax, word [bp - 0x00d2]
    mov dx, word [bp - 0x00d0]
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    sub word [bx + 0x5c08], ax
    sbb word [bx + 0x5c0a], dx
    mov cx, 0xa
    mov bx, 0
    call 0xf99f
    push ax
    push dx
    mov al, byte [0x91c5]
    sub ah, ah
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax

    db 0xe8, 0x7e, 0x94, 0x01, 0x46, 0xfe, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x86, 0x2e, 0xff, 0x8b, 0x96
    db 0x30, 0xff, 0xb9, 0x00, 0x01, 0xbb, 0x00, 0x00, 0xe8, 0x94, 0x94, 0x2a, 0xe4, 0x50, 0x8b, 0x86
    db 0x2e, 0xff, 0x8b, 0x96, 0x30, 0xff, 0xb9, 0x00, 0x01, 0xbb, 0x00, 0x00, 0xe8, 0x52, 0x94, 0x50
    db 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1b, 0xd2, 0x83, 0xc4, 0x0a, 0x85, 0xc0, 0x74
    db 0x0a, 0xc7, 0x46, 0xa0, 0x05, 0x00, 0xc7, 0x46, 0xa4, 0x00, 0x00, 0xb8, 0x02, 0x00, 0x50, 0xe8
    db 0x04, 0xa6, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0x8d
    db 0x86, 0x3c, 0xff, 0x50, 0xe8, 0xab, 0xa5, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x07
    db 0xa7, 0x59, 0xeb, 0x20, 0xc7, 0x46, 0xa4, 0x00, 0x00, 0xeb, 0x19, 0x0f, 0xb4, 0xcc, 0xb4, 0x61
    db 0xb4, 0xa9, 0xb4, 0xcc, 0xb4, 0xd9, 0xb5

    cmp ax, strict word 6
    jae short 0x65b2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x4a20]
    cmp word [bp - 0x005c], byte 0
    je short 0x65bb
    jmp near 0x6359
    cmp word [bp - 0x0060], byte 5
    jne short 0x65c5
    mov ax, 0
    ret
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d6b]
    sub ah, ah
    push ax
    add bx, word [0x9136]
    mov al, byte [bx + 0x5db2]
    cbw
    add ax, word [0x964e]
    mov cx, 3
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0xfff6
    mov word [bp - 0x0002], ax
    mov ax, 0x5f
    push ax
    mov ax, 0
    push ax
    mov al, byte [0x91c7]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    add ax, word [0x964e]
    mov cx, 3
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0002], ax
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    add ax, word [0x9d64]
    mov word [bp - 0x0004], ax
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    add ax, word [0x9d64]
    add ax, strict word 0xa
    mov word [0x9d64], ax
    lea ax, word [bp - 0x005a]
    push ax
    mov ax, 0x637
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x005a]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x55
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x005a]
    push ax
    call math_loc_130b
    add sp, byte 8
    mov word [bp - 0x000a], 0
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jge short 0x66d9
    cmp word [0x9d62], byte 3
    jne short 0x66a2
    mov ax, 3
    push ax
    mov ax, 0x1c
    push ax
    push word [bp + 0x4]
    call math_loc_8662
    add sp, byte 6
    mov ax, 0x55
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x638
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 5
    mov word [bp - 0x0006], ax
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 5
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 1
    jmp near 0x6767
    mov ax, word [bp - 0x0002]
    imul word [0x9d62]
    cmp ax, word [bp - 0x0004]
    jl short 0x66eb
    cmp word [bp - 0x0004], byte 0x5f
    jl short 0x6733
    mov ax, 0x16
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x63a
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    add ax, strict word 0xa
    mov cx, ax
    mov ax, 0
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    add ax, strict word 0xa
    mov cx, ax
    mov ax, 0
    sub ax, cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 0xffff
    jmp short 0x6767
    mov ax, 0x55
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x639
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0xfffb
    mov word [bp - 0x0006], ax
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0xfffb
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 0
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call math_loc_85f9
    add sp, byte 6
    mov ax, word [bp - 0x000a]
    ret
api_idx_009c:
    mov ax, 0xff64
    call 0xf40b
    mov word [0x95a6], 0
    mov word [0x9d60], 0
    mov word [0x9d64], 0
    lea ax, word [bp - 0x0042]
    push ax
    mov ax, 0x5e6
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 0x5e7
    push ax
    call 0xb53b
    add sp, byte 4
    cmp word [0x91a2], byte 0
    jle short 0x67c9
    call loc_23d0
    mov ax, 1
    push ax
    push word [0x91a2]
    call api_idx_0100
    add sp, byte 4
    call loc_243b
    mov word [bp - 0x000c], 0
    cmp word [0x93da], byte 0
    jle short 0x67f0
    cmp byte [0x91c3], 0
    jbe short 0x67f0
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x67f0
    push word [0x93da]
    call 0xb7e0
    pop cx
    mov word [bp - 0x0002], 0
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6e46], 0
    jbe short 0x6839
    mov al, byte [bx - 0x6e46]
    sub ah, ah
    push ax
    push word [bp - 0x000c]
    call api_idx_0040
    add sp, byte 4
    cmp ax, strict word 1
    jne short 0x6839
    cmp word [0x95a6], byte 1
    jne short 0x6838
    mov word [0x93dc], 1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call api_idx_005e
    add sp, byte 4
    mov word [0x843a], 0
    call loc_109f
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x67f5
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x002e], 0
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 9
    jle short 0x6849
    mov word [bp - 0x0020], 1
    mov al, byte [0x91c7]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x000a], ax
    cmp byte [0x91c6], 0xff
    jne short 0x6881
    add word [bp - 0x000a], byte 0x23
    cmp word [bp - 0x000a], byte 0xe7
    jge short 0x6894
    mov word [bp - 0x0028], 1
    mov word [bp - 0x001c], 1
    jmp near 0x690b
    cmp word [bp - 0x000a], byte 0x19
    jge short 0x68b5
    mov word [bp - 0x0028], 1
    mov word [bp - 0x0026], 1
    mov word [bp - 0x0024], 1
    mov word [bp - 0x0022], 1
    mov word [bp - 0x001e], 1
    jmp short 0x690b
    cmp word [0x9136], byte 0x3c
    jl short 0x68ca
    cmp word [0x9136], byte 0x3e
    jg short 0x68ca
    mov word [bp - 0x0020], 0
    jmp short 0x6901
    mov ax, word [0x9136]
    cmp ax, strict word 0x2d
    je short 0x68e1
    cmp ax, strict word 0x4d
    je short 0x68e1
    cmp ax, strict word 0x51
    je short 0x68e1
    cmp ax, strict word 0x53
    jne short 0x68e8
    mov word [bp - 0x0020], 0
    jmp short 0x68f7
    mov word [bp - 0x002c], 1
    mov word [bp - 0x002a], 1
    mov word [bp - 0x0026], 1
    mov word [bp - 0x002e], 1
    mov word [bp - 0x0024], 1
    mov word [bp - 0x0022], 1
    mov word [bp - 0x001e], 1
    mov word [bp - 0x001a], 0xffff
    mov word [bp - 0x000c], 0xffff
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    call api_idx_0054
    mov ax, 1
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x0042]
    push ax
    call math_loc_0b30
    add sp, byte 8
    mov ax, 0x16
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call math_loc_0b30
    add sp, byte 8
    lea ax, word [bp - 0x002e]
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x2a
    push ax
    mov ax, 6
    push ax
    mov ax, 0xa6
    push ax
    mov ax, 0xe7
    push ax
    mov ax, 9
    push ax
    mov ax, 3
    push ax
    mov ax, 0x5fa
    push ax
    call math_loc_1821
    add sp, byte 0x18
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x009c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0x5fa
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x2a
    push ax
    mov ax, 6
    push ax
    mov ax, 0xa6
    push ax
    mov ax, 0xe7
    push ax
    mov ax, 9
    push ax
    push word [0x9052]
    lea ax, word [bp - 0x009c]
    push ax
    call api_idx_000c_2
    add sp, byte 0x14
    mov ax, word [bp - 0x0006]
    jmp near 0x6c2a

    db 0xe8, 0xe2, 0x64, 0x89, 0x46, 0xf4, 0x3d, 0x00, 0x00, 0x7d, 0x03, 0xe9, 0x89, 0x00, 0x50, 0xe8
    db 0xa7, 0x60, 0x59, 0x85, 0xc0, 0x75, 0x03, 0xe9, 0x7d, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xf4
    db 0x03, 0x06, 0x36, 0x91, 0x8b, 0xd8, 0x8a, 0x87, 0xb2, 0x5d, 0x98, 0x50, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0xf4, 0x8b, 0xd8, 0x8a, 0x87, 0x6a, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x03
    db 0x06, 0x4e, 0x96, 0x7e, 0x1e, 0x83, 0x7e, 0xfa, 0x00, 0x75, 0x09, 0xff, 0x76, 0xf4, 0xe8, 0x70
    db 0x41, 0x59, 0xeb, 0x0d, 0x83, 0x7e, 0xfa, 0x02, 0x75, 0x07, 0xff, 0x76, 0xf4, 0xe8, 0x6a, 0xf4
    db 0x59, 0xeb, 0x34, 0x8d, 0x86, 0x64, 0xff, 0x50, 0xb8, 0x04, 0x06, 0x50, 0xe8, 0x00, 0x4b, 0x83
    db 0xc4, 0x04, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x2f, 0xa1, 0x59, 0xb8, 0x01, 0x00, 0x50, 0x8d, 0x86
    db 0x64, 0xff, 0x50, 0xe8, 0xa6, 0xa7, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x5a
    db 0x90, 0xe8, 0x3e, 0xa7, 0x83, 0xc4, 0x04, 0xe9, 0xd1, 0x01, 0xe8, 0x48, 0x64, 0x89, 0x46, 0xf4
    db 0x3d, 0x00, 0x00, 0x7c, 0x62, 0x50, 0xe8, 0x10, 0x60, 0x59, 0x85, 0xc0, 0x74, 0x59, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfa, 0xeb, 0x2a, 0xff, 0x76, 0xf4, 0xe8, 0x0c, 0xd0, 0x59, 0xeb
    db 0x35, 0xff, 0x76, 0xf4, 0xe8, 0x28, 0xe7, 0x59, 0xeb, 0x2c, 0xff, 0x76, 0xf4, 0xe8, 0x34, 0xf5
    db 0x59, 0x89, 0x46, 0xfe, 0xeb, 0x20, 0xff, 0x76, 0xf4, 0xe8, 0x76, 0xf8, 0x59, 0x89, 0x46, 0xfe
    db 0xeb, 0x14, 0x3d, 0x03, 0x00, 0x74, 0xef, 0x3d, 0x04, 0x00, 0x74, 0xde, 0x3d, 0x05, 0x00, 0x74
    db 0xc7, 0x3d, 0x06, 0x00, 0x74, 0xcb, 0x83, 0x7e, 0xfe, 0xff, 0x75, 0x0b, 0xc7, 0x06, 0xa6, 0x95
    db 0x01, 0x00, 0xc7, 0x46, 0xfa, 0x08, 0x00, 0xe9, 0x61, 0x01, 0xb8, 0x00, 0x00, 0x83, 0x3e, 0x66
    db 0x9d, 0x01, 0x75, 0x03, 0xb8, 0xff, 0xff, 0x89, 0x46, 0xfe, 0x83, 0x3e, 0x66, 0x9d, 0xff, 0x75
    db 0x42, 0x80, 0x3e, 0xc6, 0x91, 0xff, 0x74, 0x08, 0xe8, 0xaa, 0xbd, 0x89, 0x46, 0xfe, 0xeb, 0x2d
    db 0xc7, 0x46, 0xf8, 0x00, 0x00, 0xff, 0x76, 0xf8, 0xb8, 0x22, 0x88, 0x50, 0xe8, 0x69, 0x81, 0x83
    db 0xc4, 0x04, 0x85, 0xc0, 0x74, 0x0c, 0xff, 0x76, 0xf8, 0xe8, 0x50, 0xbc, 0x59, 0xc7, 0x46, 0xfe
    db 0x01, 0x00, 0xff, 0x46, 0xf8, 0x8b, 0x46, 0xf8, 0x3d, 0x0b, 0x00, 0x7c, 0xd8, 0x8b, 0x46, 0xfe
    db 0xa3, 0x66, 0x9d, 0x83, 0x7e, 0xfe, 0x00, 0x7f, 0x25, 0xb8, 0xf0, 0x93, 0x50, 0xb8, 0x6d, 0x06
    db 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x03, 0xb8, 0x69, 0x06, 0x50, 0xe8, 0xf2, 0x49, 0x83, 0xc4, 0x04
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xf0, 0x93, 0x50, 0xe8, 0x1b, 0xb9, 0x83, 0xc4, 0x04, 0xe9, 0xda
    db 0x00, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x47, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x03, 0x06
    db 0x36, 0x91, 0x8b, 0xd8, 0x80, 0xbf, 0xb2, 0x5d, 0x00, 0x7e, 0x0f, 0x8a, 0x87, 0xb2, 0x5d, 0x98
    db 0xb9, 0x05, 0x00, 0x99, 0xf7, 0xf9, 0x88, 0x87, 0xb2, 0x5d, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0f
    db 0x00, 0x50, 0xe8, 0x18, 0x4c, 0x59, 0x8b, 0xc8, 0x05, 0x0f, 0x00, 0x8b, 0xc8, 0xb8, 0x00, 0x00
    db 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x54, 0x1a, 0x83, 0xc4, 0x06, 0xff, 0x46, 0xfe, 0x8b
    db 0x46, 0xfe, 0x3b, 0x06, 0xc8, 0x69, 0x7c, 0xb0, 0xa0, 0xc7, 0x91, 0x2a, 0xe4, 0x8b, 0xd8, 0x80
    db 0xbf, 0xde, 0x89, 0x00, 0x7e, 0x0f, 0x8a, 0x87, 0xde, 0x89, 0x98, 0xb9, 0x05, 0x00, 0x99, 0xf7
    db 0xf9, 0x88, 0x87, 0xde, 0x89, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xd1, 0x4b, 0x59, 0x8b, 0xc8, 0x05
    db 0x0f, 0x00, 0x8b, 0xc8, 0xb8, 0x00, 0x00, 0x2b, 0xc1, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8
    db 0x0b, 0x1a, 0x83, 0xc4, 0x06, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x6b, 0xbd, 0x59, 0xc7, 0x46, 0xfa
    db 0x08, 0x00, 0xeb, 0x37, 0xc7, 0x06, 0xa6, 0x95, 0x01, 0x00, 0xeb, 0x2f, 0xc7, 0x06, 0xa6, 0x95
    db 0x00, 0x00, 0xc7, 0x06, 0x0a, 0x83, 0x17, 0x00, 0xeb, 0x21, 0x13, 0xba, 0x1d, 0xbb, 0x13, 0xba
    db 0xad, 0xba, 0xad, 0xba, 0xad, 0xba, 0xad, 0xba, 0xa4, 0xbb, 0x47, 0xbc, 0x4f, 0xbc

    cmp ax, strict word 0xa
    jae short 0x6c37
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x43a3]
    cmp word [bp - 0x000c], byte 0
    jl short 0x6c52
    mov ax, word [0x69c8]
    dec ax
    cmp ax, word [bp - 0x000c]
    jl short 0x6c52
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x6c5d
    push word [0x69c8]
    call 0xb7a9
    pop cx
    mov word [bp - 0x000c], ax
    mov ax, 0x248
    imul word [bp - 0x000c]
    add ax, word [0x9136]
    mov bx, ax
    mov al, byte [bx + 0x5db2]
    cbw
    push ax
    mov ax, 0x248
    imul word [bp - 0x000c]
    mov bx, ax
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [0x964e]
    mov word [bp - 0x000a], ax
    mov al, byte [0x91c7]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    add ax, word [0x964e]
    mov word [bp - 0x0002], ax
    cmp word [0x830a], byte 0x0a
    je short 0x6d0a
    cmp ax, strict word 0xfff6
    jl short 0x6cae
    cmp word [bp - 0x000a], byte 0xf6
    jge short 0x6d0a
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0xff9c
    mov word [bp - 0x0008], ax
    cmp ax, word [bp - 0x0002]
    jl short 0x6cc6
    cmp ax, word [bp - 0x000a]
    jge short 0x6d0a
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    cmp ax, strict word 1
    jne short 0x6ce2
    mov ax, 1
    push ax
    call loc_2963
    pop cx
    mov word [bp - 0x0006], 8
    jmp short 0x6d0a
    cmp word [0x830a], byte 0x17
    je short 0x6d0a
    mov ax, 0x55
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x606
    push ax
    call api_idx_0050
    add sp, byte 8
    mov word [0x95a6], 1
    mov word [bp - 0x0006], 8
    cmp word [bp - 0x0006], byte 8
    je short 0x6d19
    cmp word [bp - 0x0006], byte 9
    je short 0x6d19
    jmp near 0x67ce
    cmp word [0x9d62], byte 1
    jne short 0x6d40
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    add ax, strict word 5
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    push ax
    call math_loc_85f9
    add sp, byte 6
    cmp word [0x830a], byte 0x0a
    jne short 0x6d5d
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    call api_idx_0006_3
    add sp, byte 0x0a
    jmp short 0x6d78
    cmp word [0x830a], byte 0x17
    je short 0x6d78
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 7
    push ax
    mov ax, 0
    push ax
    call api_idx_0006_3
    add sp, byte 0x0a
    cmp word [0x95a6], byte 1
    jne short 0x6d9c
    mov word [0x93dc], 1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call api_idx_005e
    add sp, byte 4
    mov word [0x843a], 0
    call loc_109f
    ret
loc_6d9d:
    mov ax, 0
    call 0xf40b
    mov word [0x93da], 0
    cmp byte [0x91ca], 0
    jle short 0x6dbf
    mov al, byte [0x91ca]
    cbw
    push ax
    call 0xd7aa
    pop cx
    mov word [0x93da], 0x10
    cmp byte [0x91c3], 0
    je short 0x6df1
    mov ax, 0xf
    push ax
    mov al, byte [0x91c3]
    sub ah, ah
    push ax
    call 0xd61c
    add sp, byte 4
    mov word [0x843a], 0xf
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0xf
    push ax
    call api_idx_0008
    add sp, byte 8
    jmp short 0x6df7
    mov word [0x843a], 0
    mov word [0x93dc], 1
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call api_idx_005e
    add sp, byte 4
    call loc_109f
    ret
api_idx_0086:
    mov ax, 0xff7a
    call 0xf40b
    mov word [0x9cd2], 0
    mov ax, 0
    push ax
    mov ax, 0x3c
    push ax
    mov ax, 0x9cd4
    push ax
    call 0xf306
    add sp, byte 6
    cmp byte [0x91c6], 0xff
    je short 0x6e74
    mov word [bp - 0x0002], 0
    push word [bp - 0x0002]
    mov al, byte [0x91c6]
    cbw
    mov cx, 0x26
    imul cx
    add ax, 0x8502
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x6e69
    mov ax, word [bp - 0x0002]
    add ax, 0x190
    mov cx, word [0x9cd2]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x632c], ax
    inc word [0x9cd2]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short 0x6e39
    cmp byte [0x91c9], 0
    ja short 0x6e7e
    jmp near 0x6f82
    mov ax, 0
    push ax
    mov al, byte [0x91c9]
    sub ah, ah
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, 7
    push ax
    call 0xb63c
    add sp, byte 8
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    cmp byte [bx - 0x003a], 2
    jne short 0x6eb7
    mov al, byte [bx - 0x0039]
    sub ah, ah
    jmp short 0x6eba
    mov ax, 0
    mov word [bp - 0x0008], ax
    cmp byte [bx - 0x003a], 3
    jne short 0x6efa
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call 0xf99f
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov al, byte [bx - 0x0039]
    sub ah, ah
    mov cx, 5
    imul cx
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0x32
    jle short 0x6efa
    mov word [bp - 0x0008], 0x32
    cmp word [bp - 0x0008], byte 0
    jg short 0x6f03
    jmp near 0x6f74
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x003e], byte 0
    jle short 0x6f74
    cmp word [0x9cd2], byte 0x1e
    jge short 0x6f74
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x003c], byte 0
    jle short 0x6f74
    mov bx, word [bp - 0x0006]
    mov al, byte [bx + 0x5990]
    sub ah, ah
    cmp ax, word [bp - 0x0008]
    jge short 0x6f55
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x003e]
    mov cx, word [0x9cd2]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x632c], ax
    inc word [0x9cd2]
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    inc word [bx - 0x003e]
    dec word [bx - 0x003c]
    jmp short 0x6f13
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short 0x6f82
    jmp near 0x6ea0
    mov word [bp - 0x0002], 0
    jmp near 0x70aa
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x632c]
    lea ax, word [bp - 0x0086]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    lea ax, word [bp - 0x0086]
    push ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x99d6
    push ax
    call 0xf364
    add sp, byte 4
    mov al, byte [bp - 0x004e]
    mov bx, word [bp - 0x0002]
    mov byte [bx - 0x66e8], al
    mov al, byte [bp - 0x006a]
    sub ah, ah
    push ax
    mov al, byte [bp - 0x0069]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x006c]
    shl bx, 1
    mov word [bx - 0x6396], ax
    mov al, byte [bp - 0x004e]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short 0x7013
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6396]
    cwd
    push ax
    push dx
    mul word [bp - 0x006e]
    mov cx, ax
    pop ax
    mul word [bp - 0x0070]
    add cx, ax
    pop ax
    mul word [bp - 0x0070]
    add dx, cx
    mov word [bp - 0x006e], dx
    mov word [bp - 0x0070], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x632c]
    call math_loc_5497
    pop cx
    test ax, ax
    je short 0x702e
    mov ax, word [bp - 0x0070]
    mov dx, word [bp - 0x006e]
    jmp short 0x704e
    mov ax, word [0x91aa]
    cwd
    push ax
    push dx
    mul word [bp - 0x006e]
    mov cx, ax
    pop ax
    mul word [bp - 0x0070]
    add cx, ax
    pop ax
    mul word [bp - 0x0070]
    add dx, cx
    mov cx, 0x64
    mov bx, 0
    call 0xf99f
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x66c8], dx
    mov word [bx - 0x66ca], ax
    mov al, byte [bp - 0x004d]
    mov bx, word [bp - 0x0002]
    mov byte [bx - 0x6648], al
    mov word [bp - 0x0004], 0
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov al, byte [bx - 0x0054]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add cx, word [bp - 0x0004]
    mov bx, cx
    mov byte [bx - 0x677e], al
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov al, byte [bx - 0x0052]
    mov bx, cx
    mov byte [bx - 0x6742], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short 0x706e
    mov al, byte [bp - 0x0050]
    mov bx, word [bp - 0x0002]
    mov byte [bx - 0x6706], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9cd2]
    jge short 0x70b6
    jmp near 0x6f8a
    ret
api_idx_001e:
    mov ax, 0xffe2
    call 0xf40b
    mov word [0x830a], 5
    cmp word [0x82b6], byte 0xff
    je short 0x70db
    call 0xef83
    test ax, ax
    je short 0x70d3
    jmp short 0x70ca
    mov ax, 0
    push ax
    call 0xd907
    pop cx
    call 0xc145
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9062], dx
    mov word [0x9060], ax
    cmp word [0x906a], byte 0
    je short 0x711e
    mov ax, 1
    push ax
    push word [0x9068]
    call 0xc459
    add sp, byte 4
    mov word [0x906a], 0
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9066], dx
    mov word [0x9064], ax
    mov word [bp - 0x0002], 0
    mov ax, 0x18
    push ax
    call 0xf4a3
    pop cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7b96], ax
    cmp word [bx - 0x7b96], byte 0
    jne short 0x716a
    mov ax, 0x1d
    push ax
    call 0xb171
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], 0xff
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short 0x7148
    mov word [0x8468], 0
    mov word [0x845e], 0xfffe
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x843a
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x93dc
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0002], 0xf
    mov bx, word [bp - 0x0002]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short 0x71b9
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [0x93d6], 5
    mov ax, 0xc6
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    call 0xe928
    add sp, byte 8
    mov word [0x8d10], dx
    mov word [0x8d0e], ax
    mov ax, 0xa4
    push ax
    mov ax, 0xff
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x41
    push ax
    call 0xe928
    add sp, byte 8
    mov word [0x8d0c], dx
    mov word [0x8d0a], ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x52
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov word [0x93ee], 1
    mov word [0x9134], 0
    mov word [0x9d68], 0
    mov word [0x9d6a], 0
    mov word [0x9d66], 0xffff
    mov ax, 0
    push ax
    push word [0x9136]
    mov ax, 0x9138
    push ax
    mov ax, 5
    push ax
    call 0xb63c
    add sp, byte 8
    mov ax, 2
    push ax
    mov ax, 0x95f8
    push ax
    mov ax, word [0x9136]
    shl ax, 1
    add ax, 0x584e
    push ax
    call 0xfedc
    add sp, byte 6
    mov word [0x964c], 0
    mov word [0x964a], 0
    mov ax, 0
    push ax
    mov ax, 0x6e
    push ax
    mov ax, 0x94f0
    push ax
    call 0xf306
    add sp, byte 6
    ret
api_idx_0006_6:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    cmp word [0x830a], byte 0x0a
    je short 0x72dc
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    mov ax, 1
    push ax
    call 0xc12a
    pop cx
    mov ax, 2
    push ax
    call 0xc12a
    pop cx
    mov ax, 0xc
    push ax
    call 0xc12a
    pop cx
    mov ax, 1
    push ax
    push word [0x8d0c]
    push word [0x8d0a]
    call 0xe94f
    add sp, byte 6
    mov ax, 1
    push ax
    push word [0x8d10]
    push word [0x8d0e]
    call 0xe94f
    add sp, byte 6
    cmp word [0x830a], byte 0x0a
    je short 0x7335
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call 0xbb33
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b96]
    call 0xf5a1
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short 0x733a
    mov word [bp - 0x0002], 0xf
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, 0xff
    je short 0x736c
    push bx
    call 0xc12a
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short 0x7359
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x843a
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x93dc
    push ax
    call 0xf306
    add sp, byte 6
    cmp word [0x598e], byte 0xff
    je short 0x73b0
    mov ax, 0x10
    push ax
    call 0xd6c6
    pop cx
    mov word [0x598e], 0xffff
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9066]
    push word [0x9064]
    call 0xe942
    add sp, byte 8
    mov ax, 0x90dc
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [0x9068], ax
    mov word [0x906a], 1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9062]
    push word [0x9060]
    call 0xe942
    add sp, byte 8
    ret
math_loc_7400:
    mov ax, 0
    call 0xf40b
    mov word [0x9d6c], 3
    mov word [0x93d8], 0x8f
    mov word [0x9d62], 3
    call api_idx_001e
    call loc_6d9d
    call api_idx_0086
    call loc_a441
    call api_idx_0054
    call api_idx_009c
    call api_idx_0006_6
    ret
math_loc_742e:
    mov ax, 0
    call 0xf40b
    mov ax, word [0x598e]
    cmp ax, word [bp + 0x4]
    je short 0x7443
    push word [bp + 0x4]
    call 0xd7aa
    pop cx
    mov word [0x93da], 0x10
    push word [0x93da]
    call 0xb7e0
    pop cx
    ret
api_idx_000c_3:
    mov ax, 0xfff4
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x7cf2]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x1d4]
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc
    imul word [bp + 0x8]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x1bc]
    add ax, word [bp + 0x6]
    push ax
    mov ax, word [bx + 0x1a4]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 2
    push ax
    call 0xefd1
    add sp, byte 0x16
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x745d
    ret
api_idx_0002_7:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    cmp word [bp + 0x4], byte 0
    jl short 0x74ea
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short 0x74f5
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    inc word [bx - 0x7cf2]
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x7cf2]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x1d4], byte 0xff
    jne short 0x7520
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x74dc
    ret
api_idx_0004_13:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short 0x758e
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x758e
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xfa0
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x620e], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short 0x753c
    mov ax, word [bp - 0x0004]
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    call 0xf40b
    mov byte [bp - 0x000a], 1
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    mov ax, 1
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
math_loc_75db:
    mov ax, 0
    call 0xf40b
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0
    cmp word [bp + 0xa], byte 0
    je short 0x7605
    mov ax, 1
    add ax, strict word 0x10
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    jne short 0x7666
    cmp word [bp + 0xa], byte 0
    jne short 0x7666
    mov ax, 0xc2
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    push word [bp + 0x6]
    push ax
    call 0xe901
    add sp, byte 0x0a
    ret
loc_7667:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x14
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xbd98
    add sp, byte 8
    mov ax, word [bp + 0x8]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x08, 0x00 ; push word ptr [bx + 8]
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x14
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    jle short 0x76ee
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short 0x76ee
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [bp + 0xa]
    call 0xb2e7
    add sp, byte 6
    jmp short math_loc_7707
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90e4
    push ax
    call 0xe84e
    add sp, byte 4
math_loc_7707:
    ret
api_idx_000c_4:
    mov ax, 0xfff4
    call 0xf40b
    mov word [bp - 0x0002], 0
    lea ax, word [bp - 0x000c]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c1c]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x06, 0x00 ; push word ptr [bx + 6]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x18e]
    lea ax, word [bp - 0x000c]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x18c]
    add ax, strict word 9
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short 0x77a0
    jmp near 0x7713
    ret
loc_77a1:
    mov ax, 0
    call 0xf40b
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x9090], dx
    mov word [0x908e], ax
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    sub ax, word [0x908a]
    sbb dx, word [0x908c]
    mov word [0x9094], dx
    mov word [0x9092], ax
    mov ax, word [0x93d6]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0x77e8
    jne short 0x77ea
    cmp cx, ax
    jbe short 0x77ea
    jmp short 0x7831
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_2
    push word [bp + 0x4]
    call api_idx_000c_4
    pop cx
    push word [bp + 0x6]
    call api_idx_0002_7
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call api_idx_000c_3
    add sp, byte 6
    mov ax, 0xc5
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call 0xe8da
    add sp, byte 8
    ret
loc_7832:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    cmp ax, word [bp + 0x6]
    jl short 0x7843
    inc word [bp + 0x4]
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0xffff
    je short 0x7862
    cmp ax, word [bp + 0x6]
    jl short 0x7862
    mov ax, word [bp + 0x6]
    add ax, word [bp + 0x8]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp + 0x4]
    cmp cx, ax
    jge short 0x7868
    mov ax, word [bp + 0x6]
    mov word [bp + 0x4], ax
    mov ax, word [bp + 0x4]
    ret
api_idx_0044:
    mov ax, 0xffbc
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x7877
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x32
    mov word [bp - 0x0006], 0x73
    mov word [bp - 0x0008], 0x10d
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x000c], 0x95
    mov word [bp - 0x0014], 0x16
    mov ax, 0x90e8
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x003a], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call 0xbc9a
    add sp, byte 8
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    mov ax, 0x95
    push ax
    call 0xbc9a
    add sp, byte 8
    call api_idx_000a_2
    push word [bp + 0x4]
    call api_idx_000c_4
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call api_idx_000c_3
    add sp, byte 6
    lea ax, word [bp - 0x0038]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0038]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x48
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xcd
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    call 0xe830
    add sp, byte 4
    mov word [bp - 0x003c], 0xffff
    mov word [bp - 0x003e], 0
    mov word [bp - 0x0040], 0
    mov word [bp - 0x0002], 0
    mov ax, 0
    mov cx, word [bp - 0x0002]
    cmp cx, word [bp - 0x003e]
    jne short 0x79c7
    mov ax, 1
    push ax
    push cx
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_75db
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x79b9
    mov word [bp - 0x0042], 0
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call loc_7667
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0004_13
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x7a24
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0024], ax
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0022], 0xffff
    push ax
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov word [bp - 0x0012], 0
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 1
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xb
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x46
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 2
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x36
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 3
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    mov ax, 4
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000c]
    add ax, strict word 0x13
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 5
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x7b66
    mov ax, 0
    push ax
    mov ax, 0x46
    push ax
    mov ax, 0x87
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0x74
    push ax
    mov ax, 0x46
    push ax
    mov ax, 0xc
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x57
    push ax
    mov ax, 0x9d
    push ax
    mov ax, 0x4b
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0xd
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 0x5f
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0xe
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x45
    push ax
    mov ax, 0x89
    push ax
    mov ax, 0x87
    push ax
    mov ax, 0x77
    push ax
    mov ax, 0x6c
    push ax
    mov ax, 0xf
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x7f
    push ax
    mov ax, 0x10
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x44
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x81
    push ax
    mov ax, 0xa6
    push ax
    mov ax, 0x71
    push ax
    mov ax, 0x11
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x7c8a
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x62
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x12
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x7c92
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x19
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, 0x139
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, 9
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [0x93d6], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [bp - 0x001c], 1
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_77a1
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [0x59fc], byte 0
    je short 0x7d62
    push word [bp - 0x0020]
    push word [bp - 0x0018]
    push word [bp - 0x0022]
    call loc_7832
    add sp, byte 6
    mov word [bp - 0x0022], ax
    mov word [0x5b3e], 1
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
    cmp word [0x5b3e], byte 1
    je short 0x7d6c
    jmp near 0x84ac
    mov ax, word [bp - 0x001a]
    jmp near 0x849c

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xd6, 0x72, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0x28, 0x3a, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xa8, 0x72, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xf8, 0x39, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x7f, 0x41, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0xa1, 0x41, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x3e, 0x3c, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x50, 0x6a, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xf6, 0x3f
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xc5
    db 0x3f, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x92, 0x38, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x3f, 0x40, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x61, 0x40, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xfe, 0x3a, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x10, 0x69, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x21, 0x3e, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x01, 0x3e, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x67, 0x37, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xc8, 0x3d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xa8, 0x3d, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

    cmp word [bp - 0x001a], byte 5
    jge short 0x80d1
    jmp near 0x8227
    cmp word [bp - 0x001a], byte 0x0b
    jle short 0x80da
    jmp near 0x8227
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_75db
    add sp, byte 8
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfffb
    mov word [bp - 0x003e], ax
    mov ax, 1
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_75db
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short 0x8122
    jmp near 0x81c4
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0040], ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, word [bp - 0x0040]
    inc cx
    imul cx
    mov word [bp - 0x0002], ax
    cmp word [bp + 0xa], byte 0
    jne short 0x8176
    mov ax, 0x3e7
    jmp short 0x8195
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x8192
    jmp short 0x8195
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, word [bp - 0x003e]
    inc cx
    imul cx
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call loc_7667
    add sp, byte 0x0a
    jmp short 0x81e0
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call loc_7667
    add sp, byte 0x0a
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x56
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xb
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x8490
    cmp word [bp - 0x001a], byte 0x0c
    jge short 0x8230
    jmp near 0x8359
    cmp word [bp - 0x001a], byte 0x11
    jle short 0x8239
    jmp near 0x8359
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfff4
    mov word [bp - 0x0042], ax
    mov word [bp - 0x003c], 0xffff
    push ax
    push word [bp + 0x4]
    call api_idx_0004_13
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x8260
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x826f
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0022], 0xffff
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov word [bp - 0x0012], 0
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call loc_7667
    add sp, byte 0x0a
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x8490
    cmp word [bp - 0x001a], byte 0x12
    jge short 0x8362
    jmp near 0x8490
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short 0x8370
    jmp near 0x8490
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x620e]
    mov word [bp - 0x003c], ax
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0040], ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, word [bp - 0x0040]
    inc cx
    imul cx
    mov word [bp - 0x0002], ax
    cmp word [bp + 0xa], byte 0
    jne short 0x8400
    mov ax, 0x3e7
    jmp short 0x841f
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x841c
    jmp short 0x841f
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, word [bp - 0x003e]
    inc cx
    imul cx
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call loc_7667
    add sp, byte 0x0a
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x84ac
    mov cx, 0xe0cd
    into
    loopne 0x8466
    pop ss
    rol ah, 1
    db 0xd0
    cmp ax, strict word 5
    jae short 0x84a9
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x2b27]
    jmp near 0x80c8
    cmp word [bp - 0x001c], byte 0
    je short 0x84b5
    jmp near 0x7d22
    mov ax, 1
    push ax
    push word [bp - 0x003a]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x003e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x003c]
    add ax, 0x100
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
api_idx_0006_7:
    mov ax, 0xfffa
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    jmp short 0x852c
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov ax, word [bx + 0x5c08]
    mov dx, word [bx + 0x5c0a]
    add word [bp - 0x0004], ax
    adc word [bp - 0x0002], dx
    mov word [bx + 0x5c0a], 0
    mov word [bx + 0x5c08], 0
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jl short 0x8507
    mov ax, word [bp - 0x0004]
    mov dx, word [bp - 0x0002]
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    mov word [bx + 0x5c0a], dx
    mov word [bx + 0x5c08], ax
    ret
api_idx_002a:
    mov ax, 0xffd6
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call 0xf306
    add sp, byte 6
    push word [bp + 0x4]
    lea ax, word [bp - 0x002a]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x2f
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x8596
    lea ax, word [bp - 0x002a]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0x0a
    jle short 0x85a1
    mov word [bp - 0x0002], 0xa
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov byte [bx - 0x002a], 0
    mov byte [bx - 0x001f], 0
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call 0xe823
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    lea cx, word [bp - 0x0029]
    add ax, cx
    push ax
    call 0xe84e
    add sp, byte 4
    ret
math_loc_85f9:
    mov ax, 0
    call 0xf40b
    mov ax, 0x64
    push ax
    mov ax, 0xff9c
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [0x9136]
    mov bx, ax
    mov al, byte [bx + 0x5db2]
    cbw
    add ax, word [bp + 0x6]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [0x9136]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5db2], al
    mov ax, 0x64
    push ax
    mov ax, 0xff9c
    push ax
    mov al, byte [0x91c7]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    add ax, word [bp + 0x8]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov al, byte [0x91c7]
    sub ah, ah
    mov bx, ax
    pop ax
    mov byte [bx - 0x7622], al
    ret
math_loc_8662:
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short 0x86a3
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    sub ax, cx
    jg short 0x86a3
    add bx, word [bp + 0x6]
    inc byte [bx + 0x5d6c]
    ret
api_idx_0002_8:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short 0x86bd
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0x78
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    jl short 0x86b1
    ret
loc_86c6:
    mov ax, 0
    call 0xf40b
    mov word [0x9e62], 1
    mov ax, word [bp + 0x4]
    jmp short 0x8727

    db 0xc7, 0x06, 0x62, 0x9e, 0x00, 0x00, 0xeb, 0x58, 0xc7, 0x06, 0x52, 0x9e, 0x01, 0x00, 0xeb, 0x50
    db 0xc7, 0x06, 0x54, 0x9e, 0x01, 0x00, 0xeb, 0x48, 0xc7, 0x06, 0x56, 0x9e, 0x01, 0x00, 0xeb, 0x40
    db 0xc7, 0x06, 0x58, 0x9e, 0x01, 0x00, 0xeb, 0x38, 0xc7, 0x06, 0x5a, 0x9e, 0x01, 0x00, 0xeb, 0x30
    db 0xc7, 0x06, 0x5c, 0x9e, 0x01, 0x00, 0xeb, 0x28, 0xc7, 0x06, 0x5e, 0x9e, 0x01, 0x00, 0xeb, 0x20
    db 0x1e, 0xd7, 0x26, 0xd7, 0x2e, 0xd7, 0x36, 0xd7, 0x3e, 0xd7, 0x46, 0xd7, 0x4e, 0xd7, 0x56, 0xd7

    sub ax, strict word 0xffff
    cmp ax, strict word 8
    jae short 0x8737
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x28a2]
    ret
api_idx_0004_14:
    mov ax, 0xfffc
    call 0xf40b
    mov word [0x9e84], 0
    mov word [bp - 0x0002], 0
    jmp short 0x8786
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0x3f
    jne short 0x8768
    mov word [0x9e84], 1
    mov byte [bx + si], 0x20
    jmp short 0x8783
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x21
    je short 0x877a
    cmp ax, strict word 0x2e
    je short 0x877a
    cmp ax, strict word 0x2c
    jne short 0x8783
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0x20
    inc word [bp - 0x0002]
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short 0x874b
    ret
api_idx_0002_9:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x25
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jl short 0x87d4
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0
    jmp short 0x8848
    mov ax, 0x40
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jl short 0x880f
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0
    jmp short 0x8848
    mov ax, 0x5e
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jl short 0x8848
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0
    ret
api_idx_0006_8:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, 0x25
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short 0x8896
    inc ax
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0x53
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0006]
    mov byte [bx + si + 0x1], 0
    jmp near 0x8980
    mov ax, 0x40
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short 0x88d2
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    jmp near 0x8980
    mov ax, 0x5e
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jge short 0x88f1
    jmp near 0x8980
    mov ax, 0x14
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add cx, ax
    mov bx, cx
    mov al, byte [bx - 0x6177]
    sub ah, ah
    add ax, strict word 0xffd0
    mov word [bp - 0x0004], ax
    mov cx, word [bp - 0x0006]
    sub cx, ax
    mov ax, cx
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov ax, word [bp - 0x0006]
    sub ax, word [bp - 0x0004]
    mov si, ax
    mov bx, word [bp + 0x6]
    mov byte [bx + si], 0
    mov ax, word [bp - 0x0006]
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    jmp short 0x896d
    push word [bp + 0x6]
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6178]
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], al
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x1], 0
    inc word [bp - 0x0002]
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short 0x893f
    ret
loc_8981:
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x6], byte 0
    jne short 0x899b
    push word [bp + 0x8]
    push word [bp + 0x4]
    call api_idx_0002_9
    add sp, byte 4
    jmp short 0x89a7
    push word [bp + 0x8]
    push word [bp + 0x4]
    call api_idx_0006_8
    add sp, byte 4
    ret
api_idx_0058:
    mov ax, 0xffa8
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp near 0x8a71
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp - 0x0002]
    call api_idx_0002_9
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp - 0x0002]
    call api_idx_0006_8
    add sp, byte 4
    lea ax, word [bp - 0x002c]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0058], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x002c], 0x20
    mov byte [bx - 0x002b], 0
    lea ax, word [bp - 0x0054]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0058], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x0054], 0x20
    mov byte [bx - 0x0053], 0
    lea ax, word [bp - 0x002c]
    push ax
    call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x4]
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short 0x8a36
    lea ax, word [bp - 0x002c]
    push ax
    call 0xfa90
    pop cx
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_8
    add sp, byte 4
    mov bx, word [bp + 0x6]
    mov word [bx], 0
    mov ax, word [bp - 0x0002]
    ret
    lea ax, word [bp - 0x0054]
    push ax
    call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp + 0x4]
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short 0x8a6e
    lea ax, word [bp - 0x0054]
    push ax
    call 0xfa90
    pop cx
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_8
    add sp, byte 4
    mov bx, word [bp + 0x6]
    mov word [bx], 1
    mov ax, word [bp - 0x0002]
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0xa656]
    jge short 0x8a7d
    jmp near 0x89b6
    mov ax, 0xffff
    ret
api_idx_0054_5:
    mov ax, 0xffac
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp near 0x8ba1
    mov byte [bp - 0x0052], 0
    mov ax, word [bp + 0x6]
    jmp near 0x8b49
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa658
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0xf364
    add sp, byte 4
    jmp near 0x8b56
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa6bc
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0xf364
    add sp, byte 4
    jmp near 0x8b56
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa702
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x8b56
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa766
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x8b56
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xa7ac
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x8b56
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa810
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x8b56
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa856
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x8b56
    popf
    db 0xdb, 0xe0 ; feni8087_nop 

    db 0xda, 0xf7, 0xda, 0x0e, 0xdb, 0x24, 0xdb, 0x9d, 0xdb, 0x9d, 0xdb, 0x3a, 0xdb, 0x50, 0xdb, 0x66
    db 0xdb

    cmp ax, strict word 0xa
    jae short 0x8b56
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x2484]
    lea ax, word [bp - 0x0052]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0054], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x0052], 0x20
    mov byte [bx - 0x0051], 0
    lea ax, word [bp - 0x0052]
    push ax
    call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    push word [bp + 0x4]
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short 0x8b9e
    lea ax, word [bp - 0x0052]
    push ax
    call 0xfa90
    pop cx
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_8
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short 0x8bac
    jmp near 0x8a8f
    mov ax, 0xffff
    ret
api_idx_0002_10:
    mov ax, 0xfffe
    call 0xf40b
    push word [bp + 0x6]
    call 0xfa90
    pop cx
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short 0x8be4
    push word [bp + 0x6]
    call 0xfa90
    pop cx
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_8
    add sp, byte 4
    mov ax, 0
    ret
    mov ax, 0xffff
    ret
api_idx_0002_11:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xa7ac
    push ax
    push word [bp + 0x4]
    call string_loc_ae76
    add sp, byte 4
    test ax, ax
    jne short 0x8c1e
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xa7b6
    push ax
    push word [bp + 0x4]
    call 0xf364
    add sp, byte 4
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short 0x8bf3
    ret
api_idx_0004_15:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0x20
    mov word [bp - 0x0002], 0
    jmp short 0x8c65
    cmp word [bp - 0x0004], byte 0x20
    je short 0x8c55
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x41
    jb short 0x8c55
    cmp byte [bx + si], 0x5a
    ja short 0x8c55
    add byte [bx + si], 0x20
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    sub ah, ah
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short 0x8c3c
    ret
api_idx_0084:
    mov ax, 0xff7c
    call 0xf40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [0x91a8]
    call 0xb53b
    add sp, byte 4
    mov al, byte [bp - 0x0050]
    sub ah, ah
    mov word [bp - 0x0082], ax
    mov al, byte [bp - 0x004f]
    sub ah, ah
    dec ax
    mov word [bp - 0x0084], ax
    mov word [bp - 0x0054], 0
    mov word [bp - 0x0056], 2
    mov ax, 0x2f
    push ax
    mov ax, word [bp - 0x0056]
    lea cx, word [bp - 0x0050]
    add ax, cx
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0052], ax
    cmp ax, strict word 0xffff
    je short 0x8cd9
    mov ax, word [bp - 0x0056]
    mov cx, word [bp - 0x0054]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x007e], ax
    add ax, word [bp - 0x0052]
    inc ax
    mov word [bp - 0x0056], ax
    inc word [bp - 0x0054]
    jmp short 0x8ca3
    mov ax, word [bp - 0x0056]
    mov cx, word [bp - 0x0054]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x007e], ax
    cmp word [bp + 0x6], byte 0
    jne short 0x8d0a
    mov ax, word [bp - 0x0054]
    cmp ax, word [bp - 0x0082]
    jle short 0x8cfe
    mov ax, word [bp - 0x0082]
    mov word [bp - 0x0054], ax
    push word [bp - 0x0054]
    call 0xb7a9
    pop cx
    mov word [bp - 0x0080], ax
    jmp short 0x8d23
    mov ax, word [bp - 0x0084]
    sub word [bp - 0x0054], ax
    push word [bp - 0x0054]
    call 0xb7a9
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x0084]
    add cx, ax
    mov word [bp - 0x0080], cx
    mov ax, word [bp - 0x0080]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x007c]
    mov cx, word [bx - 0x007e]
    sub ax, cx
    mov word [bp - 0x0052], ax
    push ax
    mov ax, cx
    lea cx, word [bp - 0x0050]
    add ax, cx
    push ax
    push word [bp + 0x4]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0052]
    mov byte [bx + si - 0x0001], 0
    push word [bp + 0x4]
    lea ax, word [bp - 0x0050]
    push ax
    call 0xf364
    add sp, byte 4
    mov bx, word [bp - 0x0052]
    add bx, bp
    mov byte [bx - 0x0051], 0x20
    mov byte [bx - 0x0050], 0
    mov ax, 0x9e44
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call api_idx_0058
    add sp, byte 4
    mov word [0x9e42], ax
    push word [bp + 0x4]
    call api_idx_0004_15
    pop cx
    ret
api_idx_0002_12:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0x6]
    mov si, ax
    mov bx, word [bp + 0x4]
    cmp byte [bx + si], 0
    je short 0x8dac
    mov al, byte [bx + si]
    cmp al, 0x20
    je short 0x8dac
    inc word [bp - 0x0002]
    jmp short 0x8d91
    cmp word [bp - 0x0002], byte 0
    jne short 0x8db6
    mov ax, 0xffff
    ret
    mov ax, word [bp + 0x6]
    add ax, word [bp - 0x0002]
    ret
api_idx_00a6:
    mov ax, 0xff5a
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, 0x2f
    push ax
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    add ax, 0xa8c4
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    push ax
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    add ax, 0xa8c4
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x0056], 0x20
    mov byte [bx - 0x0055], 0
    mov ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, 0x2f
    push ax
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    add ax, 0xa8c4
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    push ax
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    add ax, 0xa8c4
    push ax
    lea ax, word [bp - 0x00a6]
    push ax
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x00a6], 0x20
    mov byte [bx - 0x00a5], 0
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x0004], ax
    lea ax, word [bp - 0x00a6]
    push ax
    call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x00a6]
    push ax
    push word [bp + 0x4]
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short 0x8e89
    lea ax, word [bp - 0x0056]
    push ax
    push word [bp + 0x4]
    call 0xf364
    add sp, byte 4
    ret
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx - 0x573c], 0
    je short 0x8e9e
    jmp near 0x8e13
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x26
    jge short 0x8eac
    jmp near 0x8dc8
    ret
api_idx_00a8:
    mov ax, 0xff58
    call 0xf40b
    push word [bp + 0x4]
    lea ax, word [bp - 0x0052]
    push ax
    call 0xf364
    add sp, byte 4
    mov word [bp - 0x00a8], 0
    mov word [bp - 0x00a4], 0
    mov bx, word [bp - 0x00a4]
    add bx, bp
    cmp byte [bx - 0x0052], 0x20
    jne short 0x8ede
    inc word [bp - 0x00a4]
    jmp short 0x8ecc
    push word [bp - 0x00a4]
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0002_12
    add sp, byte 4
    mov word [bp - 0x00a6], ax
    cmp ax, strict word 0xffff
    je short 0x8f6a
    sub ax, word [bp - 0x00a4]
    push ax
    mov ax, word [bp - 0x00a4]
    lea cx, word [bp - 0x0052]
    add ax, cx
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call string_loc_ae4e
    add sp, byte 6
    mov ax, word [bp - 0x00a6]
    sub ax, word [bp - 0x00a4]
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x00a2], 0x20
    mov byte [bx - 0x00a1], 0
    lea ax, word [bp - 0x00a2]
    push ax
    call api_idx_00a6
    pop cx
    mov word [bp - 0x0002], 0
    jmp short 0x8f4f
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov al, byte [bx - 0x00a2]
    mov cx, word [bp - 0x00a8]
    add cx, word [bp - 0x0002]
    mov si, cx
    mov bx, word [bp + 0x4]
    mov byte [bx + si], al
    inc word [bp - 0x0002]
    lea ax, word [bp - 0x00a2]
    push ax
    call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short 0x8f35
    lea ax, word [bp - 0x00a2]
    push ax
    call 0xfa90
    pop cx
    add word [bp - 0x00a8], ax
    mov ax, word [bp - 0x00a6]
    mov word [bp - 0x00a4], ax
    cmp ax, strict word 0xffff
    je short 0x8f7a
    jmp near 0x8ecc
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x00a8]
    mov byte [bx + si], 0
    ret
api_idx_0004_16:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 7
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x8fa8
    mov ax, 2
    ret
    mov ax, 0xa
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x901d
    mov word [0x9e48], ax
    jmp short 0x900c

    db 0xc7, 0x06, 0x6e, 0x9e, 0x01, 0x00, 0xeb, 0x4b, 0xc7, 0x06, 0x70, 0x9e, 0x01, 0x00, 0xeb, 0x43
    db 0xc7, 0x06, 0x68, 0x9e, 0x01, 0x00, 0xeb, 0x3b, 0xc7, 0x06, 0x6a, 0x9e, 0x01, 0x00, 0xeb, 0x33
    db 0xc7, 0x06, 0x6c, 0x9e, 0x01, 0x00, 0xeb, 0x2b, 0xc7, 0x06, 0x74, 0x9e, 0x01, 0x00, 0xeb, 0x23
    db 0xc7, 0x06, 0x76, 0x9e, 0x01, 0x00, 0xeb, 0x1b, 0x0d, 0xe0, 0x15, 0xe0, 0x1d, 0xe0, 0x25, 0xe0
    db 0x2d, 0xe0, 0x35, 0xe0, 0x3d, 0xe0

    cmp ax, strict word 7
    jae short 0x9019
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x1fbb]
    mov ax, 3
    ret
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x9054
    mov word [0x9e62], 1
    mov word [0x9e50], ax
    push ax
    call loc_86c6
    pop cx
    mov word [0x9e46], 0xffff
    mov word [0x9e82], 0xffff
    mov ax, 8
    ret
    mov ax, 7
    push ax
    mov ax, 4
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x9097
    cmp word [0xb030], byte 7
    je short 0x907b
    cmp word [0xb030], byte 0
    jne short 0x9087
    mov word [0x9e64], 1
    mov ax, word [0x9e7c]
    mov word [0x9e78], ax
    cmp word [bp - 0x0002], byte 0
    jne short 0x9093
    mov word [0x9e60], 1
    mov ax, 4
    ret
    mov ax, 0xb032
    push ax
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x90b6
    mov word [0x9e66], 1
    mov ax, 5
    ret
    mov ax, 0xa
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x9114
    cmp word [0xb030], byte 6
    jne short 0x90ee
    mov word [0x9e46], 0xffff
    mov ax, word [0x9e78]
    mov word [bp - 0x0004], ax
    mov ax, word [0x9e7a]
    mov word [0x9e78], ax
    mov ax, word [bp - 0x0004]
    mov word [0x9e7a], ax
    cmp word [0x9e46], byte 0xff
    je short 0x90fd
    mov ax, word [bp - 0x0002]
    mov word [0x9e82], ax
    jmp short 0x9103
    mov ax, word [bp - 0x0002]
    mov word [0x9e46], ax
    cmp word [0xb030], byte 7
    jne short 0x9110
    mov ax, word [0x9e7c]
    mov word [0x9e78], ax
    mov ax, 1
    ret
    mov ax, 0xb03c
    push ax
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x912d
    mov ax, 6
    ret
    mov ax, 0xb
    push ax
    mov ax, 9
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x918c
    mov ax, word [0x9e42]
    cmp ax, strict word 0xffff
    je short 0x915b
    cmp word [0x9e42], byte 0
    je short 0x915b
    cmp ax, word [0xb046]
    jne short 0x9169
    mov ax, word [0x9e4a]
    mov word [0x9e42], ax
    mov ax, word [0x9e4c]
    mov word [0x9e44], ax
    jmp short 0x9188
    mov ax, word [0x9e4a]
    cmp ax, word [0x9e42]
    je short 0x9188
    cmp word [0x9e4a], byte 0
    je short 0x9188
    cmp ax, word [0xb046]
    je short 0x9188
    mov word [0x9e7e], ax
    mov ax, word [0x9e4c]
    mov word [0x9e80], ax
    mov ax, 0
    ret
    mov word [0xb048], 0
    mov ax, 0xb048
    push ax
    push word [bp + 0x4]
    call api_idx_0058
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x91aa
    jmp near 0x921b
    cmp word [0xb030], byte 4
    jne short 0x91c5
    mov word [0x9e62], 1
    cmp word [bp - 0x0002], byte 0
    jne short 0x91c3
    mov word [0x9e78], 0
    jmp short 0x91ed
    cmp word [0xb030], byte 1
    jne short 0x91da
    cmp word [bp - 0x0002], byte 0
    jne short 0x91d8
    mov word [0x9e7a], 0
    jmp short 0x91ed
    cmp word [0xb030], byte 6
    jne short 0x91ed
    cmp word [bp - 0x0002], byte 0
    jne short 0x91ed
    mov word [0x9e7a], 0
    cmp word [bp - 0x0002], byte 0
    jne short 0x91f6
    mov word [0x9e7c], ax
    mov ax, word [0x9e42]
    cmp ax, strict word 0xffff
    je short 0x920b
    cmp word [0x9e42], byte 0
    je short 0x920b
    cmp ax, word [0xb046]
    jne short 0x9217
    mov ax, word [bp - 0x0002]
    mov word [0x9e42], ax
    mov ax, word [0xb048]
    mov word [0x9e44], ax
    mov ax, 0
    ret
    mov ax, 5
    push ax
    mov ax, 7
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x926c
    cmp word [0xb030], byte 4
    jne short 0x9246
    mov word [0x9e62], 1
    mov word [0x9e78], ax
    jmp short 0x9262
    cmp word [0xb030], byte 1
    jne short 0x9255
    mov ax, word [bp - 0x0002]
    mov word [0x9e7a], ax
    jmp short 0x9262
    cmp word [0xb030], byte 6
    jne short 0x9262
    mov ax, word [bp - 0x0002]
    mov word [0x9e7a], ax
    mov ax, word [bp - 0x0002]
    mov word [0x9e7c], ax
    mov ax, 7
    ret
    cmp word [0xb030], byte 6
    jne short 0x9279
    mov word [0x9e46], 0xffff
    mov ax, 0xa
    ret
api_idx_000e_2:
    mov ax, 0xfff2
    call 0xf40b
    mov word [bp - 0x000c], 0
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x7bc6], byte 0
    je short 0x92ab
    inc word [bp - 0x000c]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0x9292
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short 0x928d
    mov ax, 0xa
    mov cx, word [bp - 0x000c]
    shl cx, 1
    shl cx, 1
    sub ax, cx
    mov word [bp - 0x000e], ax
    mov ax, 2
    push ax
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xe883
    add sp, byte 4
    mov word [bp - 0x0004], ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0002], ax
    mov ax, 0xc
    imul word [0x93d4]
    mov cx, word [0x93d4]
    shl cx, 1
    mov bx, cx
    cmp word [bx - 0x6c34], byte 0
    je short 0x9315
    mov cx, 0x92
    jmp short 0x9318
    mov cx, 0x97
    add ax, cx
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6c34], byte 0
    je short 0x933b
    mov ax, 0x55
    jmp short 0x933e
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6c34]
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    cmp byte [0x598a], 2
    jne short 0x936f
    mov ax, 1
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0006], ax
    jmp short 0x93db
    mov ax, 0xc
    imul word [0x93d4]
    add ax, 0x9e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, 0xc
    imul word [0x93d4]
    add ax, 0x92
    push ax
    push word [bp - 0x0006]
    call 0xe8da
    add sp, byte 8
    call api_idx_0006_2
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    je short 0x93c4
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0x20
    jne short 0x93c4
    call api_idx_0004_4
    cmp word [bp - 0x000e], byte 0
    jle short 0x93d1
    push word [bp - 0x000e]
    call 0xe489
    pop cx
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    inc ax
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0006]
    jg short 0x937a
    ret
api_idx_000a_3:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, word [bp + 0x4]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0004], 1
    cmp word [bp - 0x0004], byte 0
    jne short 0x9406
    jmp near 0x9571
    mov bx, word [bp - 0x000a]
    mov al, byte [bx]
    sub ah, ah
    jmp near 0x9537
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0xf0f1
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xb8af
    add sp, byte 4
    call 0xbaef
    test ax, ax
    jne short 0x943c
    call api_idx_0006_2
    jmp short 0x9430
    push word [0x0e2c]
    push word [0x0e2a]
    call 0xb8af
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0xf0e4
    add sp, byte 6
    mov bx, word [bp - 0x000a]
    cmp byte [bx], 0x40
    jne short 0x946f
    call api_idx_0004_2
    call api_idx_0004_2
    mov word [bp - 0x0006], 0
    inc word [bp - 0x000a]
    jmp near 0x956e
    mov ax, 1
    push ax
    mov ax, 0x36
    push ax
    call api_idx_0004_5
    add sp, byte 4
    inc word [bp - 0x000a]
    jmp near 0x956e
    call api_idx_0004_2
    mov word [bp - 0x0006], 0
    inc word [bp - 0x000a]
    jmp near 0x956e
    push word [bp + 0x6]
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 2
    call api_idx_000e_2
    mov bx, word [bp + 0x6]
    mov byte [bx], 0
    mov word [bp - 0x0006], 1
    inc word [bp - 0x000a]
    jmp near 0x956e
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x94d2
    mov word [0x93d4], 0
    mov word [bp - 0x0006], 0
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    inc word [bp - 0x000a]
    jmp short 0x956e
    inc word [bp - 0x000a]
    mov bx, word [bp - 0x000a]
    mov al, byte [bx]
    sub ah, ah
    mov word [bp - 0x0008], ax
    push ax
    call math_loc_742e
    pop cx
    inc word [bp - 0x000a]
    jmp short 0x956e
    mov word [bp - 0x0004], 0
    jmp short 0x956e
    cmp ax, strict word 0x21
    jne short 0x953f
    jmp near 0x9489
    cmp ax, strict word 0x25
    jne short 0x9547
    jmp near 0x9475
    cmp ax, strict word 0x26
    jne short 0x954f
    jmp near 0x9497
    cmp ax, strict word 0x40
    jne short 0x9557
    jmp near 0x9410
    cmp ax, strict word 0x5b
    jne short 0x955f
    jmp near 0x9410
    cmp ax, strict word 0x5d
    jne short 0x9567
    jmp near 0x94cd
    cmp ax, strict word 0x7e
    je short 0x9519
    jmp short 0x9530
    jmp near 0x93fd
    cmp word [bp - 0x0006], byte 0
    je short 0x957a
    call api_idx_0004_2
    push word [bp - 0x000a]
    push word [bp + 0x4]
    call 0xf364
    add sp, byte 4
    ret
loc_9587:
    mov ax, 0xfea8
    call 0xf40b
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0008], ax
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si + 0x1], 0
    mov byte [bp - 0x0088], 0
    mov bx, word [bp - 0x0008]
    cmp byte [bx], 0
    jne short 0x95b4
    jmp near 0x96a2
    mov ax, 0x20
    push ax
    push bx
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    push ax
    cmp ax, strict word 0
    pop ax
    jge short 0x95d0
    push word [bp - 0x0008]
    call 0xfa90
    pop cx
    mov word [bp - 0x0006], ax
    push ax
    push word [bp - 0x0008]
    lea ax, word [bp - 0x0158]
    push ax
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x0158], 0
    lea ax, word [bp - 0x0088]
    push ax
    lea ax, word [bp - 0x0158]
    push ax
    call api_idx_000a_3
    add sp, byte 4
    lea ax, word [bp - 0x0088]
    push ax
    lea ax, word [bp - 0x0108]
    push ax
    call 0xf364
    add sp, byte 4
    cmp byte [bp - 0x0088], 0
    je short 0x9622
    mov ax, 0x90ee
    push ax
    lea ax, word [bp - 0x0108]
    push ax
    call 0xf32d
    add sp, byte 4
    lea ax, word [bp - 0x0158]
    push ax
    lea ax, word [bp - 0x0108]
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, 2
    push ax
    lea ax, word [bp - 0x0108]
    push ax
    call 0xe883
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, 0xb8
    jle short 0x9685
    lea ax, word [bp - 0x0088]
    push ax
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 2
    call api_idx_000e_2
    call api_idx_0004_2
    lea ax, word [bp - 0x0158]
    push ax
    lea ax, word [bp - 0x0088]
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x9695
    lea ax, word [bp - 0x0108]
    push ax
    lea ax, word [bp - 0x0088]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp - 0x0006]
    add word [bp - 0x0008], ax
    add word [bp - 0x0008], byte 1
    jmp near 0x95a9
    lea ax, word [bp - 0x0088]
    push ax
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 2
    ret
api_idx_0080:
    mov ax, 0xff80
    call 0xf40b
    lea ax, word [bp - 0x0080]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    push word [bp + 0x6]
    lea ax, word [bp - 0x0080]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    cmp byte [bx - 0x6e34], 0
    je short 0x970d
    mov ax, 0x90f0
    push ax
    add bx, strict word 0x91cc
    mov ax, bx
    push ax
    call 0xf32d
    add sp, byte 4
    lea ax, word [bp - 0x0080]
    push ax
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    lea ax, word [bp - 0x0080]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0080]
    push ax
    call loc_9587
    pop cx
    call api_idx_000e_2
    call api_idx_0004_2
    ret
api_idx_0100:
    mov ax, 0xff00
    call 0xf40b
    lea ax, word [bp - 0x00ff]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    cmp word [0x5216], byte 0
    jne short 0x97bf
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    cmp byte [bx - 0x6e34], 0
    je short 0x9785
    mov ax, 0x90f2
    push ax
    add bx, strict word 0x91cc
    mov ax, bx
    push ax
    call 0xf32d
    add sp, byte 4
    lea ax, word [bp - 0x00ff]
    push ax
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    lea ax, word [bp - 0x00ff]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x00ff]
    push ax
    call loc_9587
    pop cx
    inc word [bp + 0x4]
    cmp word [0x5216], byte 0
    je short 0x974e
    call api_idx_000e_2
    mov ax, word [bp + 0x6]
    jmp short 0x9834
    call api_idx_0004_2
    jmp short 0x9843
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0xf0f1
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xb8af
    add sp, byte 4
    call 0xbaef
    test ax, ax
    jne short 0x97ff
    call api_idx_0006_2
    jmp short 0x97f3
    push word [0x0e2c]
    push word [0x0e2a]
    call 0xb8af
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0xf0e4
    add sp, byte 6
    jmp short 0x9843
    mov ax, 1
    push ax
    mov ax, 0x36
    push ax
    call api_idx_0004_5
    add sp, byte 4
    call api_idx_0004_2
    jmp short 0x9843
    cmp ax, strict word 0
    je short 0x97ce
    cmp ax, strict word 1
    je short 0x97d3
    cmp ax, strict word 2
    je short 0x9821
    ret
api_idx_00a2:
    mov ax, 0xff5e
    call 0xf40b
    cmp word [0x9e46], byte 0xff
    jne short 0x985e
    cmp word [0x9e60], byte 1
    jne short 0x985e
    mov word [0x9e46], 1
    cmp word [0x9e7e], byte 0xff
    jne short 0x9868
    jmp near 0x98e9
    lea ax, word [bp - 0x0052]
    push ax
    push word [0x9e44]
    push word [0x9e42]
    call loc_8981
    add sp, byte 6
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0002_11
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0004_15
    pop cx
    lea ax, word [bp - 0x00a2]
    push ax
    mov ax, 0x640
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call 0xb300
    add sp, byte 6
    lea ax, word [bp - 0x00a2]
    push ax
    call loc_9587
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    push word [0x9e80]
    push word [0x9e7e]
    call loc_8981
    add sp, byte 6
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0002_11
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0004_15
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 0x641
    push ax
    call api_idx_0080
    add sp, byte 4
    mov ax, 0xffff
    ret
    cmp word [0x9e48], byte 0xff
    jne short 0x9959
    cmp word [0x9e42], byte 0xff
    jne short 0x9959
    cmp word [0x9e46], byte 0xff
    je short 0x992b
    mov ax, 0xa
    imul word [0x9e46]
    add ax, 0xa658
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0004_15
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 0x642
    push ax
    call api_idx_0080
    add sp, byte 4
    jmp short 0x9955
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x9947
    mov ax, 0x90f4
    push ax
    mov ax, 0x643
    push ax
    call api_idx_0080
    add sp, byte 4
    jmp short 0x9955
    mov ax, 0x90f5
    push ax
    mov ax, 0x644
    push ax
    call api_idx_0080
    add sp, byte 4
    mov ax, 0xffff
    ret
    cmp word [0x9e82], byte 0xff
    je short 0x99c3
    cmp word [0x9e42], byte 0xff
    je short 0x99b1
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 1
    push ax
    push word [0x9e42]
    call loc_8981
    add sp, byte 6
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0002_11
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0004_15
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 0x645
    push ax
    call api_idx_0080
    add sp, byte 4
    mov word [0x9e4e], 1
    mov ax, word [0x9e42]
    mov word [0x9e4a], ax
    mov ax, word [0x9e44]
    mov word [0x9e4c], ax
    mov word [0x9e50], 1
    jmp short 0x99bf
    mov ax, 0x90f6
    push ax
    mov ax, 0x646
    push ax
    call api_idx_0080
    add sp, byte 4
    mov ax, 0xffff
    ret
    cmp word [0x9e48], byte 0xff
    jne short 0x9a00
    cmp word [0x9e46], byte 0xff
    jne short 0x9a00
    cmp word [0x9e42], byte 0xff
    je short 0x99ee
    mov word [0x9e62], 1
    mov word [0x9e54], 1
    mov word [0x9e46], 1
    mov ax, 0
    ret
    mov ax, 0x90f7
    push ax
    mov ax, 0x647
    push ax
    call api_idx_0080
    add sp, byte 4
    mov ax, 0xffff
    ret
    mov ax, 0
    ret
loc_9a04:
    mov ax, 0
    call 0xf40b
    mov word [0x9e46], 0xffff
    mov word [0x9e42], 0xffff
    mov word [0x9e44], 0
    mov ax, word [0x9e48]
    jmp near 0x9bbe

    db 0xb8, 0xf8, 0x90, 0x50, 0xff, 0x36, 0x4a, 0xb0, 0xe8, 0x9a, 0xfc, 0x83, 0xc4, 0x04, 0xe9, 0x98
    db 0x01, 0x83, 0x3e, 0x4c, 0xb0, 0x00, 0x7e, 0x1c, 0xb8, 0xf9, 0x90, 0x50, 0xff, 0x36, 0x4c, 0xb0
    db 0xe8, 0x82, 0xfc, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x5a, 0x90, 0xe8, 0x4b
    db 0x77, 0x83, 0xc4, 0x04, 0xe9, 0x72, 0x01, 0xb8, 0xfa, 0x90, 0x50, 0xb8, 0x48, 0x06, 0x50, 0xe8
    db 0x63, 0xfc, 0x83, 0xc4, 0x04, 0xa1, 0x4e, 0x9e, 0xa3, 0x46, 0x9e, 0xa1, 0x4a, 0x9e, 0xa3, 0x42
    db 0x9e, 0xa1, 0x4c, 0x9e, 0xa3, 0x44, 0x9e, 0xc7, 0x06, 0x62, 0x9e, 0x01, 0x00, 0xff, 0x36, 0x50
    db 0x9e, 0xe8, 0x40, 0xec, 0x59, 0xe9, 0x41, 0x01, 0xb8, 0xfb, 0x90, 0x50, 0xb8, 0x49, 0x06, 0x50
    db 0xe8, 0x32, 0xfc, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x50, 0x9e, 0xff, 0xff, 0xe9, 0x2a, 0x01, 0xb8
    db 0xfc, 0x90, 0x50, 0xb8, 0x4a, 0x06, 0x50, 0xe8, 0x1b, 0xfc, 0x83, 0xc4, 0x04, 0xe9, 0x19, 0x01
    db 0xb8, 0xfd, 0x90, 0x50, 0xb8, 0x4b, 0x06, 0x50, 0xe8, 0x0a, 0xfc, 0x83, 0xc4, 0x04, 0xe9, 0x08
    db 0x01, 0xb8, 0xfe, 0x90, 0x50, 0xb8, 0x4c, 0x06, 0x50, 0xe8, 0xf9, 0xfb, 0x83, 0xc4, 0x04, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0xcd, 0x1c, 0x59, 0x8b, 0xc8, 0x40, 0x8b, 0xc8
    db 0xb8, 0x00, 0x00, 0x2b, 0xc1, 0x50, 0xff, 0x36, 0x4e, 0xb0, 0xe8, 0x0a, 0xeb, 0x83, 0xc4, 0x06
    db 0xb8, 0x02, 0x00, 0x50, 0xe8, 0xb0, 0x1c, 0x59, 0x3d, 0x01, 0x00, 0x75, 0x06, 0xc7, 0x06, 0x70
    db 0x9e, 0x01, 0x00, 0xe9, 0xc3, 0x00, 0xb8, 0xff, 0x90, 0x50, 0xb8, 0x4d, 0x06, 0x50, 0xe8, 0xb4
    db 0xfb, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x42, 0x9e, 0xff, 0xff, 0xc7, 0x06, 0x44, 0x9e, 0x00, 0x00
    db 0xc7, 0x06, 0x46, 0x9e, 0xff, 0xff, 0xc7, 0x06, 0x4a, 0x9e, 0xff, 0xff, 0xc7, 0x06, 0x4c, 0x9e
    db 0x00, 0x00, 0xc7, 0x06, 0x4e, 0x9e, 0xff, 0xff, 0xc7, 0x06, 0x50, 0x9e, 0xff, 0xff, 0xe9, 0x88
    db 0x00, 0xb8, 0x00, 0x91, 0x50, 0xb8, 0x4e, 0x06, 0x50, 0xe8, 0x79, 0xfb, 0x83, 0xc4, 0x04, 0xe9
    db 0x77, 0x00, 0xb8, 0x01, 0x91, 0x50, 0xb8, 0x4f, 0x06, 0x50, 0xe8, 0x68, 0xfb, 0x83, 0xc4, 0x04
    db 0x83, 0x3e, 0x6a, 0x9d, 0x00, 0x75, 0x3f, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x39, 0x1c, 0x59, 0x3d
    db 0x01, 0x00, 0x75, 0x32, 0xb8, 0x48, 0x02, 0xf7, 0x2e, 0x4e, 0xb0, 0x03, 0x06, 0x36, 0x91, 0x8b
    db 0xd8, 0x80, 0xbf, 0xb2, 0x5d, 0x32, 0x7d, 0x1e, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xe8, 0x14, 0x1c, 0x59, 0x40, 0x50, 0xff, 0x36, 0x4e, 0xb0, 0xe8, 0x5a, 0xea, 0x83, 0xc4, 0x06
    db 0xc7, 0x06, 0x6a, 0x9d, 0x01, 0x00, 0xeb, 0x21, 0x69, 0xea, 0x7a, 0xea, 0xa0, 0xea, 0xd1, 0xea
    db 0xe8, 0xea, 0xf9, 0xea, 0x0a, 0xeb, 0x4f, 0xeb, 0x8a, 0xeb, 0x9b, 0xeb

    cmp ax, strict word 0xa
    jae short 0x9bcb
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x140f]
    ret
api_idx_0002_13:
    mov ax, 0xfffe
    call 0xf40b
    mov al, byte [0x91c7]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short 0x9bed
    mov ax, 0x95a8
    push ax
    mov ax, 0x790
    push ax
    call 0xb53b
    add sp, byte 4
    jmp near 0x9c6b
    mov al, byte [0x91c7]
    sub ah, ah
    mov cx, 0xc
    imul cx
    add ax, word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x0002], ax
    cmp word [bp + 0x4], byte 0
    jne short 0x9c19
    mov al, byte [0x91c7]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x0002], ax
    mov ax, 0x95a8
    push ax
    mov al, byte [0x91c7]
    sub ah, ah
    mov cx, 3
    imul cx
    mov cx, 0
    cmp word [bp - 0x0002], byte 0xe7
    jl short 0x9c3c
    mov cx, 2
    cmp word [bp - 0x0002], byte 0x19
    jge short 0x9c3c
    mov cx, 1
    add ax, cx
    add ax, 0x76c
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x9d10
    push ax
    mov ax, word [bp + 0x4]
    add ax, 0x79e
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x24
    push ax
    mov ax, 0x9d10
    push ax
    mov ax, 0x95a8
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x95a8
    push ax
    call loc_9587
    pop cx
    call api_idx_000e_2
    call api_idx_0004_2
    ret
loc_9c7a:
    mov ax, 0
    call 0xf40b
    mov ax, 0x95fa
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    mov ax, 0x9d10
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    cmp byte [0x95fa], 0
    jne short 0x9cb1
    mov ax, 0x9d10
    push ax
    mov ax, 0x650
    push ax
    call api_idx_0080
    add sp, byte 4
    jmp short 0x9d05
    cmp byte [0x95fa], 0x24
    jne short 0x9cd5
    mov al, byte [0x95fb]
    sub ah, ah
    push ax
    push word [0xb04e]
    call api_idx_0040
    add sp, byte 4
    cmp ax, strict word 1
    jne short 0x9cd3
    mov word [0x9e70], 1
    jmp short 0x9d05
    cmp byte [0x95fa], 0x26
    jne short 0x9ce9
    mov al, byte [0x95fb]
    sub ah, ah
    dec ax
    push ax
    call api_idx_0002_13
    pop cx
    jmp short 0x9d05
    cmp byte [0x95fa], 0x2d
    jne short 0x9cf8
    mov al, byte [0x95fb]
    sub ah, ah
    sub word [bp + 0x4], ax
    mov ax, 0x9102
    push ax
    push word [bp + 0x4]
    call api_idx_0080
    add sp, byte 4
    ret
math_loc_9d06:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    cmp ax, word [0xb046]
    jge short 0x9d1f
    mov cx, 5
    imul cx
    add ax, word [0xb050]
    ret
    mov ax, word [bp + 0x4]
    sub ax, word [0xb046]
    mov cx, 5
    imul cx
    add ax, word [0xb052]
    ret
api_idx_0054_6:
    mov ax, 0xffac
    call 0xf40b
    mov ax, word [0x9e42]
    mov word [bp - 0x0002], ax
    mov cx, 0x14
    imul cx
    mov bx, ax
    cmp word [bx - 0x617a], byte 0
    jge short 0x9d51
    mov ax, word [bx - 0x617a]
    add word [bp - 0x0002], ax
    push word [bp - 0x0002]
    call math_loc_9d06
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov bx, ax
    cmp word [bx - 0x617a], byte 3
    jne short 0x9d7c
    mov ax, 0x659
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    call loc_9c7a
    add sp, byte 4
    ret
    mov ax, word [0x9e46]
    jmp near 0xa291

    db 0x83, 0x3e, 0x62, 0x9e, 0x01, 0x74, 0x03, 0xe9, 0xf0, 0x00, 0x83, 0x7e, 0xfe, 0x00, 0x74, 0x03
    db 0xe9, 0xe7, 0x00, 0x83, 0x3e, 0x52, 0x9e, 0x01, 0x74, 0x0a, 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x74
    db 0x03, 0xe9, 0xd6, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x9a, 0x06, 0x50, 0xff, 0x36, 0x4e, 0xb0
    db 0xe8, 0xde, 0x0c, 0x83, 0xc4, 0x06, 0x3d, 0x03, 0x00, 0x74, 0x03, 0xe9, 0xad, 0x00, 0xb8, 0x48
    db 0x02, 0xf7, 0x2e, 0x4e, 0xb0, 0x8b, 0xd8, 0x83, 0xbf, 0x0a, 0x5c, 0x00, 0x7f, 0x09, 0x75, 0x09
    db 0x83, 0xbf, 0x08, 0x5c, 0x32, 0x72, 0x02, 0xeb, 0x32, 0xff, 0x36, 0x4e, 0xb0, 0xe8, 0x0e, 0xe7
    db 0x59, 0xb8, 0x48, 0x02, 0xf7, 0x2e, 0x4e, 0xb0, 0x8b, 0xd8, 0x83, 0xbf, 0x0a, 0x5c, 0x00, 0x7f
    db 0x09, 0x75, 0x09, 0x83, 0xbf, 0x08, 0x5c, 0x32, 0x72, 0x02, 0xeb, 0x0f, 0xb8, 0x03, 0x91, 0x50
    db 0xb8, 0x6c, 0x06, 0x50, 0xe8, 0xbe, 0xf8, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x48, 0x02, 0xf7, 0x2e
    db 0x4e, 0xb0, 0x8b, 0xd8, 0x83, 0x87, 0x08, 0x5c, 0xce, 0x83, 0x97, 0x0a, 0x5c, 0xff, 0x83, 0x06
    db 0xb6, 0x91, 0x32, 0x83, 0x16, 0xb8, 0x91, 0x00, 0x83, 0x3e, 0x68, 0x9d, 0x00, 0x75, 0x2b, 0x83
    db 0x3e, 0xa8, 0x91, 0x00, 0x7e, 0x24, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x46, 0xac, 0x50, 0xe8, 0x2f
    db 0xee, 0x83, 0xc4, 0x04, 0x8d, 0x46, 0xac, 0x50, 0xb8, 0x51, 0x06, 0x50, 0xe8, 0x76, 0xf8, 0x83
    db 0xc4, 0x04, 0xc7, 0x06, 0x68, 0x9d, 0x01, 0x00, 0xeb, 0x0f, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8
    db 0xff, 0xff, 0x50, 0xe8, 0x46, 0x86, 0x83, 0xc4, 0x06, 0xeb, 0x0e, 0xb8, 0x04, 0x91, 0x50, 0xb8
    db 0x49, 0x06, 0x50, 0xe8, 0x4f, 0xf8, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x62, 0x9e, 0x00, 0x75
    db 0x13, 0x83, 0x3e, 0x64, 0x9e, 0x00, 0x75, 0x0c, 0xc7, 0x06, 0x62, 0x9e, 0x01, 0x00, 0xc7, 0x06
    db 0x54, 0x9e, 0x01, 0x00, 0x83, 0x3e, 0x62, 0x9e, 0x01, 0x75, 0x31, 0x83, 0x3e, 0x5e, 0x9e, 0x01
    db 0x75, 0x12, 0xb8, 0x59, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x40, 0x50, 0xe8, 0xc8, 0xfd
    db 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x75, 0x11, 0xb8, 0x54, 0x06, 0x50, 0x8b
    db 0x46, 0xfc, 0x40, 0x40, 0x50, 0xe8, 0xb0, 0xfd, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x62, 0x9e
    db 0x01, 0x74, 0x03, 0xe9, 0x20, 0x01, 0x83, 0x3e, 0x52, 0x9e, 0x00, 0x75, 0x30, 0x83, 0x3e, 0x54
    db 0x9e, 0x00, 0x75, 0x29, 0x83, 0x3e, 0x56, 0x9e, 0x00, 0x75, 0x22, 0x83, 0x3e, 0x58, 0x9e, 0x00
    db 0x75, 0x1b, 0x83, 0x3e, 0x5a, 0x9e, 0x00, 0x75, 0x14, 0x83, 0x3e, 0x5c, 0x9e, 0x00, 0x75, 0x0d
    db 0x83, 0x3e, 0x5e, 0x9e, 0x00, 0x75, 0x06, 0xc7, 0x06, 0x54, 0x9e, 0x01, 0x00, 0x83, 0x3e, 0x52
    db 0x9e, 0x01, 0x75, 0x40, 0xb8, 0x14, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x83, 0xbf, 0x86, 0x9e
    db 0x00, 0x74, 0x21, 0x8d, 0x46, 0xac, 0x50, 0xff, 0x36, 0x44, 0x9e, 0xff, 0x36, 0x42, 0x9e, 0xe8
    db 0x4d, 0xea, 0x83, 0xc4, 0x06, 0x8d, 0x46, 0xac, 0x50, 0xb8, 0x52, 0x06, 0x50, 0xe8, 0x85, 0xf7
    db 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x53, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x50, 0xe8, 0x28, 0xfd
    db 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x75, 0x11, 0xb8, 0x54, 0x06, 0x50, 0x8b
    db 0x46, 0xfc, 0x40, 0x40, 0x50, 0xe8, 0x10, 0xfd, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x56, 0x9e
    db 0x01, 0x75, 0x0f, 0xb8, 0x05, 0x91, 0x50, 0xb8, 0x55, 0x06, 0x50, 0xe8, 0x47, 0xf7, 0x83, 0xc4
    db 0x04, 0xc3, 0x83, 0x3e, 0x58, 0x9e, 0x01, 0x75, 0x12, 0xb8, 0x56, 0x06, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x04, 0x00, 0x50, 0xe8, 0xe1, 0xfc, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x5a, 0x9e, 0x01
    db 0x75, 0x0f, 0xb8, 0x06, 0x91, 0x50, 0xb8, 0x57, 0x06, 0x50, 0xe8, 0x18, 0xf7, 0x83, 0xc4, 0x04
    db 0xc3, 0x83, 0x3e, 0x5c, 0x9e, 0x01, 0x75, 0x11, 0xb8, 0x58, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x40
    db 0x40, 0x50, 0xe8, 0xb3, 0xfc, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x5e, 0x9e, 0x01, 0x75, 0x24
    db 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x0f, 0xb8, 0x07, 0x91, 0x50, 0xb8, 0x5a, 0x06, 0x50, 0xe8, 0xe4
    db 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x08, 0x91, 0x50, 0xb8, 0x5b, 0x06, 0x50, 0xe8, 0xd5, 0xf6
    db 0x83, 0xc4, 0x04, 0xc3, 0xeb, 0x24, 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x0f, 0xb8, 0x09, 0x91, 0x50
    db 0xb8, 0x5c, 0x06, 0x50, 0xe8, 0xbe, 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x0a, 0x91, 0x50, 0xb8
    db 0x63, 0x06, 0x50, 0xe8, 0xaf, 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0xe9, 0x7f, 0x02, 0x83, 0x3e, 0x62
    db 0x9e, 0x01, 0x75, 0x61, 0x83, 0x3e, 0x78, 0x9e, 0x00, 0x75, 0x4b, 0x83, 0x3e, 0x54, 0x9e, 0x01
    db 0x75, 0x10, 0xb8, 0x0b, 0x91, 0x50, 0xb8, 0x67, 0x06, 0x50, 0xe8, 0x88, 0xf6, 0x83, 0xc4, 0x04
    db 0xeb, 0x33, 0x83, 0x3e, 0x58, 0x9e, 0x01, 0x74, 0x0e, 0x83, 0x3e, 0x5c, 0x9e, 0x01, 0x74, 0x07
    db 0x83, 0x3e, 0x5e, 0x9e, 0x01, 0x75, 0x10, 0xb8, 0x0c, 0x91, 0x50, 0xb8, 0x6b, 0x06, 0x50, 0xe8
    db 0x63, 0xf6, 0x83, 0xc4, 0x04, 0xeb, 0x0e, 0xb8, 0x0d, 0x91, 0x50, 0xb8, 0x5f, 0x06, 0x50, 0xe8
    db 0x53, 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x0e, 0x91, 0x50, 0xb8, 0x5b, 0x06, 0x50, 0xe8, 0x44
    db 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x0f, 0xb8, 0x0f, 0x91, 0x50, 0xb8
    db 0x60, 0x06, 0x50, 0xe8, 0x2f, 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x10, 0x91, 0x50, 0xb8, 0x5b
    db 0x06, 0x50, 0xe8, 0x20, 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x62, 0x9e, 0x01, 0x75, 0x3c
    db 0x83, 0x3e, 0x78, 0x9e, 0x00, 0x75, 0x26, 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x75, 0x10, 0xb8, 0x11
    db 0x91, 0x50, 0xb8, 0x68, 0x06, 0x50, 0xe8, 0xfc, 0xf5, 0x83, 0xc4, 0x04, 0xeb, 0x0e, 0xb8, 0x12
    db 0x91, 0x50, 0xb8, 0x5f, 0x06, 0x50, 0xe8, 0xec, 0xf5, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x13, 0x91
    db 0x50, 0xb8, 0x5b, 0x06, 0x50, 0xe8, 0xdd, 0xf5, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x78, 0x9e
    db 0x00, 0x7e, 0x12, 0xb8, 0x59, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x40, 0x50, 0xe8, 0x77
    db 0xfb, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x14, 0x91, 0x50, 0xb8, 0x64, 0x06, 0x50, 0xe8, 0xb5, 0xf5
    db 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x62, 0x9e, 0x01, 0x75, 0x26, 0x83, 0x3e, 0x54, 0x9e, 0x01
    db 0x75, 0x10, 0xb8, 0x15, 0x91, 0x50, 0xb8, 0x67, 0x06, 0x50, 0xe8, 0x98, 0xf5, 0x83, 0xc4, 0x04
    db 0xeb, 0x0e, 0xb8, 0x16, 0x91, 0x50, 0xb8, 0x5f, 0x06, 0x50, 0xe8, 0x88, 0xf5, 0x83, 0xc4, 0x04
    db 0xc3, 0xb8, 0x17, 0x91, 0x50, 0xb8, 0x65, 0x06, 0x50, 0xe8, 0x79, 0xf5, 0x83, 0xc4, 0x04, 0xc3
    db 0x83, 0x3e, 0x62, 0x9e, 0x01, 0x74, 0x03, 0xe9, 0x85, 0x00, 0x83, 0x3e, 0x52, 0x9e, 0x01, 0x75
    db 0x0f, 0xb8, 0x18, 0x91, 0x50, 0xb8, 0x5e, 0x06, 0x50, 0xe8, 0x59, 0xf5, 0x83, 0xc4, 0x04, 0xc3
    db 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x75, 0x11, 0xb8, 0x54, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40
    db 0x50, 0xe8, 0xf4, 0xfa, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x58, 0x9e, 0x01, 0x75, 0x12, 0xb8
    db 0x56, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x04, 0x00, 0x50, 0xe8, 0xdb, 0xfa, 0x83, 0xc4, 0x04
    db 0xc3, 0x83, 0x3e, 0x5a, 0x9e, 0x01, 0x75, 0x0f, 0xb8, 0x19, 0x91, 0x50, 0xb8, 0x57, 0x06, 0x50
    db 0xe8, 0x12, 0xf5, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x56, 0x9e, 0x01, 0x75, 0x0f, 0xb8, 0x1a
    db 0x91, 0x50, 0xb8, 0x55, 0x06, 0x50, 0xe8, 0xfc, 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x59, 0x06
    db 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x40, 0x50, 0xe8, 0x9d, 0xfa, 0x83, 0xc4, 0x04, 0xc3, 0xb8
    db 0x1b, 0x91, 0x50, 0xb8, 0x61, 0x06, 0x50, 0xe8, 0xdb, 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e
    db 0x62, 0x9e, 0x01, 0x74, 0x03, 0xe9, 0x74, 0x00, 0x83, 0x3e, 0x52, 0x9e, 0x01, 0x74, 0x07, 0x83
    db 0x3e, 0x5a, 0x9e, 0x01, 0x75, 0x0f, 0xb8, 0x1c, 0x91, 0x50, 0xb8, 0x5e, 0x06, 0x50, 0xe8, 0xb4
    db 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x75, 0x0f, 0xb8, 0x1d, 0x91, 0x50
    db 0xb8, 0x62, 0x06, 0x50, 0xe8, 0x9e, 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x58, 0x9e, 0x01
    db 0x75, 0x12, 0xb8, 0x56, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x04, 0x00, 0x50, 0xe8, 0x38, 0xfa
    db 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x56, 0x9e, 0x01, 0x75, 0x0f, 0xb8, 0x1e, 0x91, 0x50, 0xb8
    db 0x55, 0x06, 0x50, 0xe8, 0x6f, 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x59, 0x06, 0x50, 0x8b, 0x46
    db 0xfc, 0x40, 0x40, 0x40, 0x50, 0xe8, 0x10, 0xfa, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x1f, 0x91, 0x50
    db 0xb8, 0x63, 0x06, 0x50, 0xe8, 0x4e, 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0xc9, 0xed, 0x15, 0xef, 0x15
    db 0xef, 0x15, 0xef, 0x66, 0xf0, 0xf2, 0xf0, 0x5d, 0xf1, 0x5d, 0xf1, 0x99, 0xf1, 0x37, 0xf2

    cmp ax, strict word 0xa
    jae short 0xa29e
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x0d3c]
    ret
math_loc_a29f:
    mov ax, 0
    call 0xf40b
    cmp word [0x9e48], byte 0xff
    je short 0xa2bd
    cmp word [0x9e46], byte 0xff
    je short 0xa2ba
    cmp word [0x9e42], byte 0xff
    jne short 0xa2bd
    call loc_9a04
    cmp word [0x9e46], byte 0xff
    je short 0xa2e6
    cmp word [0x9e42], byte 0xff
    je short 0xa2e6
    call api_idx_0054_6
    mov ax, word [0x9e42]
    mov word [0x9e4a], ax
    mov ax, word [0x9e44]
    mov word [0x9e4c], ax
    mov ax, word [0x9e46]
    mov word [0x9e4e], ax
    mov word [0x9e50], 0xffff
    ret
api_idx_0002_14:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0x95a8
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    cmp word [0x5216], byte 0
    jne short 0xa334
    mov al, byte [0x95a8]
    sub ah, ah
    add ax, strict word 0xffe0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov word [bx - 0x617a], ax
    mov ax, 0x95a9
    push ax
    add bx, strict word 0x9e88
    mov ax, bx
    push ax
    call 0xf364
    add sp, byte 4
    add word [bp + 0x4], byte 5
    inc word [bp - 0x0002]
    cmp word [0x5216], byte 0
    je short 0xa2f2
    mov ax, word [bp - 0x0002]
    mov word [0xb046], ax
    mov ax, 0x95a8
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    cmp word [0x5216], byte 0
    jne short 0xa383
    mov al, byte [0x95a8]
    sub ah, ah
    add ax, strict word 0xffe0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov word [bx - 0x617a], ax
    mov ax, 0x95a9
    push ax
    add bx, strict word 0x9e88
    mov ax, bx
    push ax
    call 0xf364
    add sp, byte 4
    add word [bp + 0x6], byte 5
    inc word [bp - 0x0002]
    cmp word [0x5216], byte 0
    je short 0xa341
    mov ax, word [bp - 0x0002]
    mov word [0xa656], ax
    ret
api_idx_0002_15:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short 0xa3d4
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xa7ac
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x4]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xa7b6
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x4]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    jl short 0xa39e
    ret
api_idx_0002_16:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short 0xa408
    mov ax, 0xa
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp + 0x8]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0002]
    push ax
    call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    jl short 0xa3ea
    ret
api_idx_0002_17:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short 0xa438
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, 0xa8c4
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0002]
    push ax
    call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    jl short 0xa41e
    ret
loc_a441:
    mov ax, 0
    call 0xf40b
    mov word [0x93d4], 0
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    inc word [0x93d4]
    mov ax, word [0x93d4]
    cmp ax, strict word 4
    jl short 0xa44d
    mov word [0x93d4], 0
    mov word [0xb052], 0x1f40
    mov ax, word [0x91a0]
    mov word [0xb050], ax
    mov ax, word [0x91a4]
    mov word [0xb04a], ax
    mov ax, word [0x91a6]
    mov word [0xb04c], ax
    push word [0xb052]
    push word [0xb050]
    call api_idx_0002_14
    add sp, byte 4
    mov ax, 0xa658
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x1b58
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 0xa810
    push ax
    mov ax, 7
    push ax
    mov ax, 0x1b76
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 0xb032
    push ax
    mov ax, 0x1b80
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xb03c
    push ax
    mov ax, 0x1b81
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xa766
    push ax
    mov ax, 7
    push ax
    mov ax, 0x1b8a
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 5
    push ax
    mov ax, 0x1b9e
    push ax
    call api_idx_0002_15
    add sp, byte 4
    mov ax, 0xa856
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0x1bb2
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 0xa702
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x1bd0
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 0xa6bc
    push ax
    mov ax, 7
    push ax
    mov ax, 0x1be4
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 0x26
    push ax
    mov ax, 0x1bf8
    push ax
    call api_idx_0002_17
    add sp, byte 4
    ret
api_idx_0016:
    mov ax, 0xffea
    call 0xf40b
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    push word [bp + 0xe]
    push word [bp + 0xc]
    call 0xe823
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov word [bp - 0x0006], ax
    mov cx, 6
    imul cx
    add word [bp + 0x6], ax
    mov word [bp - 0x0008], 1
    mov word [bp - 0x000a], 0
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0014], dx
    mov word [bp - 0x0016], ax
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0xa673
    cmp word [bp - 0x000a], byte 0
    jne short 0xa666
    call loc_109f
    mov ax, 0
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0016]
    call 0xe94f
    add sp, byte 6
    cmp word [bp - 0x0008], byte 0
    je short 0xa638
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0008]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    mov word [bp - 0x000a], 5
    jmp short 0xa671
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    dec word [bp - 0x000a]
    jmp short 0xa5f3
    mov ax, 1
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0016]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xd
    jne short 0xa6cf
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    call 0xec17
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call 0xe94f
    add sp, byte 6
    mov ax, 0
    ret
    cmp word [bp - 0x0002], byte 8
    je short 0xa6d8
    jmp near 0xa761
    cmp word [bp - 0x0006], byte 0
    jle short 0xa736
    dec word [bp - 0x0006]
    add word [bp + 0x6], byte 0xfa
    mov ax, 0
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call 0xe94f
    add sp, byte 6
    push word [bp + 0x8]
    push word [bp - 0x0004]
    call 0xe809
    add sp, byte 4
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp - 0x0004]
    push ax
    push word [bp + 0x8]
    push word [bp - 0x0004]
    call 0xe8da
    add sp, byte 8
    jmp short 0xa75e
    cmp word [bp + 0x12], byte 0
    je short 0xa756
    mov bx, word [bp + 0x4]
    mov byte [bx], 0
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call 0xe94f
    add sp, byte 6
    mov ax, 0xffff
    ret
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0xa833
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0xa]
    jl short 0xa7c5
    cmp word [bp + 0x12], byte 0
    je short 0xa779
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0xa7c2
    cmp word [bp + 0x10], byte 0
    jne short 0xa78c
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short 0xa78c
    cmp ax, strict word 0x7f
    jle short 0xa79f
    cmp word [bp + 0x10], byte 1
    jne short 0xa7c2
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short 0xa7c2
    cmp ax, strict word 0x39
    jg short 0xa7c2
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    mov ax, word [bp - 0x0002]
    mov word [0xb054], ax
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call 0xe94f
    add sp, byte 6
    mov ax, 1
    ret
    jmp near 0xa833
    cmp word [bp + 0x10], byte 0
    jne short 0xa7d8
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short 0xa7d8
    cmp ax, strict word 0x7f
    jle short 0xa7eb
    cmp word [bp + 0x10], byte 1
    jne short 0xa833
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short 0xa833
    cmp ax, strict word 0x39
    jg short 0xa833
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], al
    inc word [bp - 0x0006]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0002]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    add word [bp + 0x6], byte 6
    jmp near 0xa5c9
    db 0xc3
api_idx_00b0:
    mov ax, 0xff50
    call 0xf40b
    push word [bp + 0x6]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, 0xb8
    sub ax, cx
    mov cx, 6
    cwd
    idiv cx
    mov word [bp - 0x0010], ax
    mov word [bp - 0x000e], 0x1e
    push word [bp + 0x6]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    add ax, strict word 0x44
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000a], 0x44
    mov ax, 0xc
    imul word [0x93d4]
    add ax, 0x97
    push ax
    mov ax, 0x44
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x6]
    call 0xe84e
    add sp, byte 4
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    mov word [bp - 0x0008], 0
    mov bx, word [bp + 0x4]
    mov byte [bx], 0
    push word [bp - 0x0008]
    mov ax, 0
    push ax
    mov ax, 0x37
    push ax
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x0010]
    mov ax, 0xc
    imul word [0x93d4]
    add ax, 0x97
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x000c]
    push word [bp + 0x4]
    call api_idx_0016
    add sp, byte 0x10
    mov word [bp - 0x0002], ax
    cmp ax, strict word 1
    je short 0xa8fe
    jmp near 0xa9e5
    cmp word [0xb054], byte 0x20
    je short 0xa967
    mov ax, 0x20
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    cmp ax, strict word 0xffff
    je short 0xa967
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    cmp byte [bx + si - 0x0001], 0x20
    je short 0xa935
    dec word [bp - 0x0006]
    jmp short 0xa924
    mov ax, word [bp - 0x0004]
    sub ax, word [bp - 0x0006]
    push ax
    add bx, word [bp - 0x0006]
    mov ax, bx
    push ax
    lea ax, word [bp - 0x00b0]
    push ax
    call string_loc_ae4e
    add sp, byte 6
    mov ax, word [bp - 0x0004]
    sub ax, word [bp - 0x0006]
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x00b0], 0
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    jmp short 0xa96c
    mov byte [bp - 0x00b0], 0
    lea ax, word [bp - 0x00b0]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov al, byte [0xb054]
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x00b0], al
    mov byte [bx - 0x00af], 0
    push word [bp + 0x6]
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xf364
    add sp, byte 4
    push word [bp + 0x4]
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    call api_idx_0004_2
    push word [bp + 0x4]
    lea ax, word [bp - 0x0060]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x00b0]
    push ax
    push word [bp + 0x4]
    call 0xf364
    add sp, byte 4
    mov word [bp - 0x0008], 1
    jmp short 0xaa09
    cmp word [bp - 0x0002], byte 0xff
    jne short 0xaa09
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    dec word [0x93d4]
    lea ax, word [bp - 0x0060]
    push ax
    push word [bp + 0x4]
    call 0xf364
    add sp, byte 4
    mov word [bp - 0x0008], 0
    cmp word [bp - 0x0002], byte 0
    je short 0xaa12
    jmp near 0xa8b8
    cmp word [bp - 0x0008], byte 0
    jne short 0xaa2f
    push word [bp + 0x6]
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0xaa3e
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    push word [bp + 0x4]
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    call api_idx_0004_2
    cmp word [bp - 0x0008], byte 0
    je short 0xaa92
    push word [bp + 0x4]
    lea ax, word [bp - 0x00b0]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0060]
    push ax
    push word [bp + 0x4]
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x00b0]
    push ax
    push word [bp + 0x4]
    call 0xf32d
    add sp, byte 4
    ret
api_idx_00ba:
    mov ax, 0xff46
    call 0xf40b
    lea ax, word [bp - 0x00b6]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0066]
    push ax
    mov ax, 0x5e9
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0066]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call api_idx_0100
    add sp, byte 4
    lea ax, word [bp - 0x0066]
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_00b0
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x00b8], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x0052], 0x20
    mov byte [bx - 0x0051], 0
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_00a8
    pop cx
    mov word [bp - 0x00b8], 0
    mov ax, 0x2f
    push ax
    mov ax, word [bp - 0x00b8]
    lea cx, word [bp - 0x00b5]
    add ax, cx
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x00ba], ax
    lea ax, word [bp - 0x0052]
    mov word [bp - 0x0002], ax
    mov bx, word [bp - 0x0002]
    cmp byte [bx], 0
    je short 0xab64
    push word [bp - 0x00ba]
    mov ax, word [bp - 0x00b8]
    lea cx, word [bp - 0x00b5]
    add ax, cx
    push ax
    push bx
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short 0xab5f
    mov bx, word [bp - 0x00b8]
    add bx, bp
    mov al, byte [bx - 0x00b6]
    sub ah, ah
    ret
    inc word [bp - 0x0002]
    jmp short 0xab30
    mov ax, word [bp - 0x00b8]
    add ax, word [bp - 0x00ba]
    inc ax
    inc ax
    mov word [bp - 0x00b8], ax
    mov bx, word [bp - 0x00b8]
    add bx, bp
    cmp byte [bx - 0x00b6], 0
    jne short 0xab11
    cmp word [bp + 0x8], byte 1
    jne short 0xab89
    mov ax, 1
    ret
    jmp near 0xaacd
    db 0xc3
api_idx_006a:
    mov ax, 0xff96
    call 0xf40b
    mov ax, word [bp + 0x4]
    mov word [0xb04e], ax
    mov word [0x93ee], 0
    mov ax, 0
    push ax
    mov ax, 0x42
    push ax
    mov ax, 0x9e42
    push ax
    call 0xf306
    add sp, byte 6
    mov word [0x9e4a], 0xffff
    mov word [0x9e4c], 0
    mov word [0x9e4e], 0xffff
    mov word [0x9e50], 0xffff
    mov word [0x93d4], 0
    mov ax, word [0x93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    mov ax, word [0x93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    inc word [0x93d4]
    mov ax, word [0x93d4]
    cmp ax, strict word 4
    jl short 0xabcf
    mov word [0x93d4], 0
    lea ax, word [bp - 0x006a]
    push ax
    mov ax, 0x5e9
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call 0xb300
    add sp, byte 6
    push word [0x0e2c]
    push word [0x0e2a]
    call 0xb8af
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0xf0e4
    add sp, byte 6
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    lea ax, word [bp - 0x006a]
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_00b0
    add sp, byte 4
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_0004_14
    pop cx
    lea ax, word [bp - 0x0056]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0002], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x0056], 0x20
    mov byte [bx - 0x0055], 0
    mov ax, 9
    push ax
    mov ax, 0x9120
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    je short 0xac9b
    mov ax, 0
    jmp short 0xac9e
    mov ax, 1
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_00a8
    pop cx
    mov word [bp - 0x0002], 0
    mov word [0x9e42], 0xffff
    mov word [0x9e44], 0
    mov word [0x9e46], 0xffff
    mov word [0x9e48], 0xffff
    mov word [0x9e52], 0
    mov word [0x9e54], 0
    mov word [0x9e56], 0
    mov word [0x9e58], 0
    mov word [0x9e5a], 0
    mov word [0x9e5c], 0
    mov word [0x9e5e], 0
    mov word [0x9e60], 0
    mov ax, word [0x9e84]
    mov word [0x9e62], ax
    mov word [0x9e64], 0
    mov word [0x9e66], 0
    mov word [0x9e68], 0
    mov word [0x9e6a], 0
    mov word [0x9e6c], 0
    mov word [0x9e6e], 0
    mov word [0x9e70], 0
    mov word [0x9e72], 0
    mov word [0x9e74], 0
    mov word [0x9e76], 0
    mov word [0x9e78], 0
    mov word [0x9e7a], 1
    mov word [0x9e7c], 0xffff
    mov word [0x9e7e], 0xffff
    mov word [0x9e80], 0
    mov word [0x9e82], 0xffff
    mov word [0xb030], 0xa
    mov bx, word [bp - 0x0002]
    add bx, bp
    cmp byte [bx - 0x0056], 0x20
    jne short 0xad72
    inc word [bp - 0x0002]
    jmp short 0xad62
    mov ax, word [bp - 0x0002]
    lea cx, word [bp - 0x0056]
    add ax, cx
    push ax
    call api_idx_0004_16
    pop cx
    mov word [0xb030], ax
    push word [bp - 0x0002]
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_0002_12
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0xad62
    mov ax, word [0x9136]
    cmp ax, strict word 0x2d
    je short 0xadb4
    cmp ax, strict word 0x51
    je short 0xadb4
    cmp ax, strict word 0x53
    je short 0xadb4
    cmp ax, strict word 0x4d
    jne short 0xadb8
    cmp word [bp - 0x0006], byte 0
    jne short 0xadb8
    mov byte [bp - 0x0056], 0
    lea ax, word [bp - 0x0056]
    push ax
    call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short 0xadcf
    call api_idx_00a2
    test ax, ax
    jne short 0xadcf
    call math_loc_a29f
    cmp word [0x9e70], byte 1
    je short 0xadd9
    jmp near 0xac53
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0xf0f1
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xb8af
    add sp, byte 4
    mov word [0x93ee], 1
    ret

    db 0x8f, 0x06, 0x32, 0x91, 0x59, 0x89, 0x26, 0x2e, 0x91, 0x89, 0x2e, 0x30, 0x91, 0x89, 0x36, 0x2a
    db 0x91, 0x89, 0x3e, 0x2c, 0x91, 0xfc, 0xbf, 0x34, 0x91, 0xb9, 0x56, 0xb0, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x86, 0x73, 0x8b, 0x2e, 0x30, 0x91, 0x8b, 0x26, 0x2e
    db 0x91, 0x8b, 0x36, 0x2a, 0x91, 0x8b, 0x3e, 0x2c, 0x91, 0x51, 0xff, 0x26, 0x32, 0x91

string_loc_ae4e:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov cx, word [bp + 0x8]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x4]
    mov si, word [bp + 0x6]
    jcxz 0xae6f
    lodsb
    test al, al
    je short 0xae6d
    stosb
    loop 0xae63
    jmp short 0xae6f
    rep stosb
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
string_loc_ae76:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    lodsw
    scasw
    jne short 0xaec9
    test al, al
    je short 0xaec3
    test ah, ah
    jne short 0xae86
    jmp short 0xaec3
string_loc_ae94:
    push bp
    mov bp, sp
    mov cx, word [bp + 0x8]
    mov dx, cx
    shr cx, 1
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    jcxz 0xaebb
    lodsw
    scasw
    jne short 0xaec9
    test al, al
    je short 0xaec3
    test ah, ah
    loopne 0xaead
    je short 0xaec3
    test dl, 1
    je short 0xaec3
    cmpsb
    jne short 0xaed6
    sub ax, ax
    pop di
    pop si
    pop bp
    ret
    sub di, byte 2
    scasb
    jne short 0xaed6
    test al, al
    je short 0xaec3
    mov al, ah
    scasb
    sbb ax, ax
    js short 0xaec5
    inc ax
    jmp short 0xaec5

    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x31, 0x20, 0x00, 0x28, 0x31, 0x29, 0x00, 0x50, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'VM1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 0x20, 0x00, 0x20, 0x00, 0x20
    times 45 db 0
    db 'PHOONZANG', 0
    times 10 db 0

