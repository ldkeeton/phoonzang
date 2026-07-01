%include "structs/structs.inc"
%include "structs/vinit.inc"
org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0x09, 0x16, 0x98, 0x90 ; header (8 bytes)

    and byte [bx + di], al
    add al, byte [bx + si]
    and byte [bp - 0x0048], ah
    add byte [bx + si], al
    call 0xf40b
    mov ax, word [0x830a]
    jmp short 0x2d
    call loc_03a8
    jmp short 0x41
    call api_idx_0068
    jmp short 0x41
    call api_idx_0002_7
    jmp short 0x41
    call api_idx_0008
    jmp short 0x41
    cmp ax, strict word 0
    je short 0x19
    cmp ax, strict word 1
    je short 0x1e
    cmp ax, strict word 2
    je short 0x28
    cmp ax, strict word 8
    je short 0x23
    mov ax, 0
    ret
api_idx_0002:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x70
    mov ax, 5
    push ax
    call 0xb171
    pop cx
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call 0xe619
    add sp, byte 4
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0xb2
    mov ax, 7
    push ax
    call 0xb171
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call 0xf012
    add sp, byte 6
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0xf5
    mov ax, 8
    push ax
    call 0xb171
    pop cx
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call 0xfd6f
    add sp, byte 6
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x137
    mov ax, 8
    push ax
    call 0xb171
    pop cx
    push word [bp - 0x0002]
    call 0xed62
    pop cx
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    ret
api_idx_000c:
    mov ax, 0xfff4
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x171
    mov ax, 6
    push ax
    call 0xb171
    pop cx
    mov ax, 2
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x0002]
    call 0xfdbd
    add sp, byte 8
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    push word [bp - 0x0004]
    push word [bp - 0x0006]
    call 0xafb9
    add sp, byte 4
    mov word [bp - 0x0008], dx
    mov word [bp - 0x000a], ax
    push word [bp - 0x0006]
    call 0xf4a3
    pop cx
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x0008], byte 0
    jne short 0x1b2
    cmp word [bp - 0x000a], byte 0
    je short 0x1ba
    cmp word [bp - 0x000c], byte 0
    jne short 0x1c2
    mov ax, 6
    push ax
    call 0xb171
    pop cx
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x0002]
    call 0xfdbd
    add sp, byte 8
    push word [bp - 0x0006]
    push word [bp - 0x000c]
    push word [bp - 0x0002]
    call 0xfd6f
    add sp, byte 6
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    push word [bp - 0x000a]
    mov ax, word [bp - 0x000c]
    mov dx, ds
    push dx
    push ax
    call 0xafcc
    add sp, byte 0x0a
    push word [bp - 0x000c]
    call 0xf5a1
    pop cx
    mov ax, word [bp - 0x000a]
    mov dx, word [bp - 0x0008]
    ret
math_loc_0211:
    mov ax, 0xfaf4
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov si, ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + si]
    sub ah, ah
    add ax, word [bp + 0x4]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    add bx, bp
    pop ax
    mov byte [bx - 0x030c], al
    cmp al, 0x20
    jbe short 0x29e
    sub ah, ah
    add ax, strict word 0xffe0
    imul word [bp + 0x6]
    mov cx, 0x20
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    mov al, byte [bx - 0x030c]
    sub ah, ah
    add ax, word [bp - 0x0006]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    add bx, bp
    pop ax
    mov byte [bx - 0x030c], al
    jmp short 0x2f8
    mov ax, 3
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    add bx, bp
    cmp byte [bx - 0x030c], 0x20
    jae short 0x2f8
    mov al, byte [bx - 0x030c]
    sub ah, ah
    mov cx, ax
    mov ax, 0x20
    sub ax, cx
    imul word [bp + 0x6]
    mov cx, 0x20
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    mov al, byte [bx - 0x030c]
    sub ah, ah
    sub ax, word [bp - 0x0006]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    add bx, bp
    pop ax
    mov byte [bx - 0x030c], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jge short 0x306
    jmp near 0x221
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, 0x100
    jge short 0x314
    jmp near 0x21c
    mov ax, 0xff
    push ax
    mov ax, 0x200
    push ax
    lea ax, word [bp - 0x050c]
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0002], 0
    mov ax, 3
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov al, byte [bx - 0x030c]
    sub ah, ah
    mov cx, 8
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov al, byte [bx - 0x030b]
    sub ah, ah
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov al, byte [bx - 0x030a]
    sub ah, ah
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov al, byte [bp - 0x0002]
    mov dx, word [bp - 0x0008]
    mov cx, 6
    shl dx, cl
    mov cx, dx
    mov dx, word [bp - 0x000a]
    shl dx, 1
    shl dx, 1
    shl dx, 1
    add cx, dx
    add cx, word [bp - 0x000c]
    mov bx, cx
    add bx, bp
    mov byte [bx - 0x050c], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, 0x100
    jl short 0x32c
    lea ax, word [bp - 0x050c]
    push ax
    lea ax, word [bp - 0x030c]
    push ax
    call 0xf10b
    add sp, byte 4
    mov ax, 0xffff
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    ret
loc_03a8:
    mov ax, 0xfce6
    call 0xf40b
    mov word [0x905c], 0
    mov word [0x0e30], 0
    mov word [0x0e2e], 0
    mov word [0x0e2c], 0
    mov word [0x0e2a], 0
    mov word [0x0e28], 0
    mov word [0x0e26], 0
    mov ax, 0
    push ax
    mov ax, 0x9098
    push ax
    call 0xf909
    add sp, byte 4
    mov word [0x9088], ax
    cmp ax, strict word 0xffff
    jne short 0x3f6
    mov ax, 1
    push ax
    call 0xb171
    pop cx
    mov ax, 0x34c
    push ax
    mov ax, 0x5642
    push ax
    push word [0x9088]
    call 0xfd6f
    add sp, byte 6
    push word [0x9088]
    call 0xfda5
    pop cx
    mov word [0x905a], 0x36
    mov al, byte [0x5986]
    sub ah, ah
    mov word [0x9058], ax
    mov al, byte [0x598a]
    sub ah, ah
    jmp short 0x447
    mov ax, 2
    push ax
    call 0xb171
    pop cx
    jmp short 0x458
    mov word [bp - 0x0002], 1
    jmp short 0x458
    mov word [bp - 0x0002], 2
    jmp short 0x458
    mov ax, 2
    push ax
    call 0xb171
    pop cx
    jmp short 0x458
    cmp ax, strict word 1
    je short 0x42f
    cmp ax, strict word 2
    je short 0x436
    cmp ax, 0xff
    je short 0x425
    jmp short 0x43d
    push word [bp - 0x0002]
    call 0xde20
    pop cx
    mov word [0x9056], ax
    test ax, 1
    jne short 0x46c
    test ax, 2
    je short 0x46e
    jmp short 0x476
    mov ax, 3
    push ax
    call 0xb171
    pop cx
    mov word [0x0e34], 0x905c
    mov al, byte [0x5984]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp ax, strict word 6
    jne short 0x48e
    mov word [bp - 0x000a], 4
    mov ax, word [0x5980]
    cmp word [bp - 0x000a], byte 0
    jne short 0x49a
    mov ax, 0
    mov word [bp - 0x000c], ax
    push word [bp - 0x000a]
    push ax
    call 0xef2e
    add sp, byte 4
    mov word [0x59f8], 0x905c
    mov word [0x0e32], 0
    mov word [0x5b3e], 0
    mov word [bp - 0x0006], 0
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov bx, word [bp - 0x0006]
    mov byte [bx + 0x5990], al
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 0x64
    jl short 0x4be
    call 0xb186
    mov ax, 0
    push ax
    push ax
    call 0xe91b
    add sp, byte 4
    cmp dx, byte 1
    jg short 0x4f2
    jne short 0x4f4
    cmp ax, 0x6200
    jb short 0x4f4
    jmp short 0x4fc
    mov ax, 4
    push ax
    call 0xb171
    pop cx
    mov ax, 0
    push ax
    mov ax, 0x90a5
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0x90b1
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0x90bd
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 3
    push ax
    mov ax, 0x90c9
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x90d5
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 0x90e1
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x90ed
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x90f9
    push ax
    call api_idx_0002
    add sp, byte 4
    call 0xca6a
    mov ax, 0x9105
    push ax
    call api_idx_000c
    pop cx
    mov word [0x0e30], dx
    mov word [0x0e2e], ax
    mov ax, 0x9111
    push ax
    call api_idx_000c
    pop cx
    mov word [0x0e2c], dx
    mov word [0x0e2a], ax
    mov ax, 0x911d
    push ax
    call api_idx_000c
    pop cx
    mov word [0x0e28], dx
    mov word [0x0e26], ax
    mov ax, 3
    push ax
    mov ax, 0x9129
    push ax
    call api_idx_0002_2
    add sp, byte 4
    mov word [0x1008], 0x905c
    mov ax, 0x52
    push ax
    mov ax, 0x5524
    push ax
    mov ax, 0x9136
    push ax
    call api_idx_0002_3
    add sp, byte 6
    mov ax, 0x30c
    push ax
    mov ax, 0x5218
    push ax
    mov ax, 0x9141
    push ax
    call api_idx_0002_3
    add sp, byte 6
    mov ax, 0x2dfe
    push ax
    mov ax, 0x100c
    push ax
    mov ax, 0x914a
    push ax
    call api_idx_0002_3
    add sp, byte 6
    mov ax, 0x18
    push ax
    mov ax, 0x906e
    push ax
    mov ax, 0x9152
    push ax
    call api_idx_0002_3
    add sp, byte 6
    mov ax, 0x915d
    push ax
    call api_idx_0002_4
    pop cx
    mov ax, 0
    push ax
    push ax
    mov ax, 0x9166
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [0x0e24], ax
    cmp ax, strict word 0xffff
    jne short 0x626
    mov ax, 9
    push ax
    call 0xb171
    pop cx
    mov word [0x5212], 0xffff
    mov word [0x5214], 0
    mov ax, word [0x5214]
    shl ax, 1
    mov bx, ax
    mov word [bx + 0x3e0a], 0xffff
    inc word [0x5214]
    mov ax, word [0x5214]
    cmp ax, strict word 4
    jl short 0x632
    mov word [0x5214], 0
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    mov word [bx + 0x5b72], 0xffff
    mov ax, 0x14
    imul word [bp - 0x0006]
    mov bx, ax
    mov byte [bx + 0x5b7c], 0
    mov ax, word [bp - 0x0006]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov word [bx + 0x5be2], 0
    mov word [bx + 0x5be0], 0
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 5
    jl short 0x656
    mov ax, 0
    push ax
    push ax
    mov ax, 0x916e
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [0x0e22], ax
    cmp ax, strict word 0xffff
    jne short 0x6b6
    mov ax, 0xa
    push ax
    call 0xb171
    pop cx
    call 0xb9c4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 3
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 4
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov word [0x598e], 0xffff
    mov word [0x82b6], 0xffff
    mov word [0x100a], 0x905c
    mov word [0x0e20], 0
    mov word [0x0e1e], 0
    mov word [0x0e1c], 0
    mov word [0x0e1a], 0
    mov word [0x0e18], 0
    mov word [0x0e16], 0
    mov word [0x0e14], 0
    mov word [0x0e12], 0
    mov word [0x0e10], 0
    mov word [0x0e0e], 0
    mov ax, 0x400
    mov dx, 0
    push dx
    push ax
    call 0xafb9
    add sp, byte 4
    mov word [0x0e20], dx
    mov word [0x0e1e], ax
    cmp word [0x0e20], byte 0
    jne short 0x78e
    cmp word [0x0e1e], byte 0
    jne short 0x798
    mov ax, 0xd
    push ax
    call 0xb171
    pop cx
    mov ax, 0x1000
    mov dx, 0
    push dx
    push ax
    call 0xafb9
    add sp, byte 4
    mov word [0x0e1c], dx
    mov word [0x0e1a], ax
    cmp word [0x0e1c], byte 0
    jne short 0x7b9
    cmp word [0x0e1a], byte 0
    jne short 0x7c3
    mov ax, 0xd
    push ax
    call 0xb171
    pop cx
    mov ax, 0x1000
    mov dx, 0
    push dx
    push ax
    call 0xafb9
    add sp, byte 4
    mov word [0x0e18], dx
    mov word [0x0e16], ax
    cmp word [0x0e18], byte 0
    jne short 0x7e4
    cmp word [0x0e16], byte 0
    jne short 0x7ee
    mov ax, 0xd
    push ax
    call 0xb171
    pop cx
    push word [0x5528]
    call 0xf4a3
    pop cx
    mov word [0x0e14], ax
    cmp word [0x0e14], byte 0
    jne short 0x808
    mov ax, 0xd
    push ax
    call 0xb171
    pop cx
    push word [0x552a]
    call 0xf4a3
    pop cx
    mov word [0x0e12], ax
    cmp word [0x0e12], byte 0
    jne short 0x822
    mov ax, 0xd
    push ax
    call 0xb171
    pop cx
    mov ax, 0xc00
    push ax
    call 0xf4a3
    pop cx
    mov word [0x0e10], ax
    cmp word [0x0e10], byte 0
    jne short 0x83c
    mov ax, 0xd
    push ax
    call 0xb171
    pop cx
    mov ax, 0x400
    push ax
    call 0xf4a3
    pop cx
    mov word [0x0e0e], ax
    cmp word [0x0e0e], byte 0
    jne short 0x856
    mov ax, 0xd
    push ax
    call 0xb171
    pop cx
    mov word [0x904c], 0
    mov ax, 0
    push ax
    push ax
    mov ax, 0x917b
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x882
    mov ax, 0xe
    push ax
    call 0xb171
    pop cx
    mov ax, 0x300
    push ax
    lea ax, word [bp - 0x031a]
    push ax
    push word [bp - 0x0004]
    call 0xfd6f
    add sp, byte 6
    push word [bp - 0x0004]
    call 0xfda5
    pop cx
    lea ax, word [bp - 0x031a]
    push ax
    mov al, byte [0x5979]
    cbw
    push ax
    mov al, byte [0x5978]
    cbw
    push ax
    call math_loc_0211
    add sp, byte 6
    mov word [0x830a], 1
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    call 0xef14
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x8ed
    mov ax, 0xe
    push ax
    call 0xb171
    pop cx
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xefde
    add sp, byte 4
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    cmp word [bp + 0x6], byte 1
    jne short 0x91c
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x949
    cmp word [bp + 0x6], byte 2
    jne short 0x949
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call 0xf40b
    cmp word [0x91b8], byte 0xff
    jne short 0x95b
    mov ax, 0
    ret
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    je short 0x984
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    mov ax, 0
    cmp word [bp - 0x0002], byte 0x1b
    jne short 0x980
    mov ax, 1
    or word [0x91b8], ax
    mov ax, word [0x91b8]
    ret
api_idx_0004:
    mov ax, 0xfffc
    call 0xf40b
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
    jg short 0x9be
    jne short 0x9c0
    cmp ax, word [bp - 0x0004]
    jb short 0x9c0
    jmp short 0x9d2
    call api_idx_0002_6
    test ax, ax
    je short 0x9c8
    ret
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    jmp short 0x9a7
    ret
api_idx_000e:
    mov ax, 0xfff2
    call 0xf40b
    mov al, byte [bp + 0x4]
    mov byte [bp - 0x000e], al
    mov byte [bp - 0x000d], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + 0x7ed4]
    sub ah, ah
    mov word [bp - 0x0002], ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7f1d]
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp word [bp + 0x6], byte 0
    je short 0xa26
    mov ax, 0xa0
    sub ax, word [bp - 0x0002]
    imul word [bp + 0x6]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x0002], ax
    mov ax, 0x31
    sub ax, word [bp - 0x0004]
    imul word [bp + 0x6]
    cwd
    idiv cx
    add word [bp - 0x0004], ax
    push word [bp + 0x6]
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000e]
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
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 0xf
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
loc_0a56:
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_000e
    add sp, byte 4
    cmp word [bp + 0x6], byte 0
    je short 0xa93
    mov ax, 0
    push ax
    push word [bp + 0x6]
    call api_idx_000e
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    je short 0xaa6
    mov ax, 0
    push ax
    push word [bp + 0x8]
    call api_idx_000e
    add sp, byte 4
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [bp + 0xa], byte 0
    je short 0xac6
    push word [bp + 0xa]
    call api_idx_0004
    pop cx
    ret
api_idx_0068:
    mov ax, 0xff98
    call 0xf40b
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0xae8
    mov ax, 0
    push ax
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [0x010c]
    mov word [0x844e], ax
    mov word [bp - 0x0008], 0
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0008]
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 0x12
    jl short 0xaed
    mov ax, 0xf
    push ax
    mov ax, 0x3c
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call api_idx_000e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov word [0x91b8], 0
    call api_idx_0002_6
    test ax, ax
    jne short 0xb8d
    cmp word [0x8450], byte 0
    je short 0xb85
    mov ax, 0
    push ax
    push word [0x844e]
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    mov ax, 0xb4
    push ax
    call api_idx_0004
    pop cx
    call api_idx_0002_6
    test ax, ax
    jne short 0xbaa
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    call loc_0a56
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    jne short 0xbc7
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    call loc_0a56
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    jne short 0xbe4
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    mov ax, 7
    push ax
    mov ax, 6
    push ax
    call loc_0a56
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    jne short 0xbfe
    mov ax, 0xa
    push ax
    push ax
    mov ax, 9
    push ax
    mov ax, 8
    push ax
    call loc_0a56
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    jne short 0xc1b
    mov ax, 0xa
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0xb
    push ax
    call loc_0a56
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    jne short 0xc38
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    mov ax, 0xf
    push ax
    mov ax, 0xe
    push ax
    call loc_0a56
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    jne short 0xc52
    mov ax, 0
    push ax
    push ax
    mov ax, 0x11
    push ax
    mov ax, 0x10
    push ax
    call loc_0a56
    add sp, byte 8
    mov ax, 0xf
    push ax
    call 0xc12a
    pop cx
    call api_idx_0002_6
    test ax, ax
    je short 0xc64
    jmp near 0xd3d
    mov ax, 0xf
    push ax
    mov ax, 0x3d
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0x98
    push ax
    call api_idx_0004
    pop cx
    call api_idx_0002_6
    test ax, ax
    jne short 0xc97
    mov ax, 0xa
    push ax
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    call loc_0a56
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    jne short 0xcb4
    mov ax, 0xa
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    call loc_0a56
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    jne short 0xcce
    mov ax, 0
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, 7
    push ax
    call loc_0a56
    add sp, byte 8
    mov ax, 0x90
    push ax
    call api_idx_0004
    pop cx
    call api_idx_0002_6
    test ax, ax
    jne short 0xcf3
    mov ax, 0xa
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0xa
    push ax
    mov ax, 9
    push ax
    call loc_0a56
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    jne short 0xd10
    mov ax, 0xa
    push ax
    mov ax, 0xe
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0xc
    push ax
    call loc_0a56
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    jne short 0xd2d
    mov ax, 0
    push ax
    mov ax, 0x11
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0xf
    push ax
    call loc_0a56
    add sp, byte 8
    mov ax, 5
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0xf
    push ax
    call 0xc12a
    pop cx
    call api_idx_0002_6
    test ax, ax
    je short 0xd47
    jmp near 0xdf1
    mov ax, 0xf
    push ax
    mov ax, 0x3e
    push ax
    call 0xd61c
    add sp, byte 4
    call api_idx_0002_6
    test ax, ax
    jne short 0xd73
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    call api_idx_0002_6
    test ax, ax
    jne short 0xd88
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call api_idx_000e
    add sp, byte 4
    call api_idx_0002_6
    test ax, ax
    jne short 0xd9d
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call api_idx_000e
    add sp, byte 4
    call api_idx_0002_6
    test ax, ax
    jne short 0xdb2
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call api_idx_000e
    add sp, byte 4
    call api_idx_0002_6
    test ax, ax
    jne short 0xdc7
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    call api_idx_000e
    add sp, byte 4
    call api_idx_0002_6
    test ax, ax
    jne short 0xde1
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 5
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0xf
    push ax
    call 0xc12a
    pop cx
    call api_idx_0002_6
    test ax, ax
    jne short 0xe0e
    mov ax, 1
    push ax
    mov ax, 0x9187
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 5
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0
    push ax
    mov ax, 0x9194
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0xf
    push ax
    mov ax, 0x3f
    push ax
    call 0xd61c
    add sp, byte 4
    call api_idx_0002_6
    test ax, ax
    je short 0xe34
    jmp near 0xecc
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xc
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x62
    push ax
    mov ax, 0x110
    push ax
    mov ax, 0
    push ax
    mov ax, 0x37
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0002], 0x5f
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    call 0xe942
    add sp, byte 8
    push word [bp - 0x0002]
    mov ax, 1
    push ax
    call api_idx_000e
    add sp, byte 4
    mov ax, 0x62
    push ax
    mov ax, 0x110
    push ax
    mov ax, 9
    push ax
    mov ax, 0x37
    push ax
    call 0xe8da
    add sp, byte 8
    add word [bp - 0x0002], byte 0xfb
    cmp word [bp - 0x0002], byte 0
    jge short 0xe78
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    call 0xe942
    add sp, byte 8
    jmp short 0xeed
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call api_idx_000e
    add sp, byte 4
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xf
    push ax
    call 0xc12a
    pop cx
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    call api_idx_0002_6
    mov ax, 0xb54
    cmp word [0x91b8], byte 0
    je short 0xf29
    mov ax, 0xb69
    mov word [bp - 0x0060], ax
    lea ax, word [bp - 0x005c]
    push ax
    push word [bp - 0x0060]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x005c]
    mov word [bp - 0x005e], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0066], ax
    mov bx, word [bp - 0x005e]
    mov al, byte [bx]
    sub ah, ah
    mov word [bp - 0x0002], ax
    inc word [bp - 0x005e]
    mov word [bp - 0x0004], 0
    jmp near 0x11ea
    mov bx, word [bp - 0x005e]
    mov al, byte [bx]
    sub ah, ah
    mov word [bp - 0x0062], ax
    inc word [bp - 0x005e]
    cmp ax, strict word 2
    je short 0xf74
    jmp near 0x107f
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call 0xe883
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0064], ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    mov ax, word [bp - 0x0064]
    dec ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    mov ax, word [bp - 0x0064]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x67
    push ax
    push word [bp - 0x0064]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x65
    push ax
    push word [bp - 0x0064]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    push word [bp - 0x0064]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call 0xe84e
    add sp, byte 4
    jmp near 0x11d1
    cmp word [bp - 0x0062], byte 3
    jne short 0x10a8
    push word [bp - 0x005e]
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
    mov word [bp - 0x0064], ax
    mov word [bp - 0x0068], 0
    jmp short 0x10cb
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call 0xe883
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0064], ax
    mov word [bp - 0x0068], 2
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    mov ax, word [bp - 0x0064]
    dec ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    cmp word [bp - 0x0062], byte 1
    jne short 0x10ed
    mov ax, 0x22
    push ax
    call 0xe823
    add sp, byte 4
    push word [bp - 0x0068]
    push word [bp - 0x005e]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    mov ax, word [bp - 0x0064]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    cmp word [bp - 0x0062], byte 1
    jne short 0x1122
    mov ax, 0x22
    push ax
    call 0xe823
    add sp, byte 4
    push word [bp - 0x0068]
    push word [bp - 0x005e]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x67
    push ax
    push word [bp - 0x0064]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    cmp word [bp - 0x0062], byte 1
    jne short 0x1155
    mov ax, 0x22
    push ax
    call 0xe823
    add sp, byte 4
    push word [bp - 0x0068]
    push word [bp - 0x005e]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x65
    push ax
    push word [bp - 0x0064]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    cmp word [bp - 0x0062], byte 1
    jne short 0x1188
    mov ax, 0x22
    push ax
    call 0xe823
    add sp, byte 4
    push word [bp - 0x0068]
    push word [bp - 0x005e]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    push word [bp - 0x0064]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    cmp word [bp - 0x0062], byte 1
    jne short 0x11be
    mov ax, 0x16
    push ax
    call 0xe823
    add sp, byte 4
    push word [bp - 0x0068]
    push word [bp - 0x005e]
    call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0060]
    lea ax, word [bp - 0x005c]
    push ax
    push word [bp - 0x0060]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x005c]
    mov word [bp - 0x005e], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jge short 0x11f5
    jmp near 0xf5f
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0066]
    jle short 0x1208
    mov cx, 0xc
    imul cx
    jmp short 0x120e
    mov ax, 0xc
    imul word [bp - 0x0066]
    add ax, strict word 0x66
    push ax
    mov ax, 0x10d
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0x32
    push ax
    call 0xf005
    add sp, byte 0x0a
    mov ax, 0x10
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    call 0xe942
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    je short 0x1263
    cmp word [bp - 0x0060], strict word 0xb69
    jge short 0x1263
    mov word [bp - 0x0060], 0xb69
    lea ax, word [bp - 0x005c]
    push ax
    push word [bp - 0x0060]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x005c]
    mov word [bp - 0x005e], ax
    cmp word [0x5216], byte 0
    jne short 0x126d
    jmp near 0xf44
    call api_idx_0002_6
    test ax, ax
    je short 0x127a
    mov word [0x91b8], 0xffff
    mov ax, 0x32
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    call 0xe942
    add sp, byte 8
    cmp word [0x8450], byte 0
    je short 0x12c5
    cmp word [0x91b8], byte 0
    jne short 0x12ad
    call 0xef83
    test ax, ax
    je short 0x12ad
    jmp short 0x12a4
    push word [0x844c]
    push word [0x844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 0
    push ax
    call 0xd907
    pop cx
    jmp short 0x12ce
    call 0xbaef
    test ax, ax
    jne short 0x12ce
    jmp short 0x12c5
    call 0xec17
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    call 0xf0ca
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    call 0xef14
    pop cx
    test word [0x9056], 0x1000
    je short 0x132a
    cmp byte [0x5989], 1
    jne short 0x132a
    call 0xf02c
    mov word [0x0e32], 1
    jmp short 0x1330
    mov word [0x0e32], 0
    mov word [0x5b3e], 0
    mov word [0x830a], 2
    ret
api_idx_0002_7:
    mov ax, 0xfffe
    call 0xf40b
    cmp word [0x906a], byte 0
    je short 0x135e
    mov ax, 1
    push ax
    push word [0x9068]
    call 0xc459
    add sp, byte 4
    mov word [0x906a], 0
    mov ax, 1
    push ax
    push word [0x8d08]
    push word [0x8d06]
    call 0xe94f
    add sp, byte 6
    mov word [0x69c8], 0
    mov word [bp - 0x0002], 0
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call 0xe94f
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x137b
    mov word [bp - 0x0002], 0
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7d2e]
    push word [bx - 0x7d30]
    call 0xe94f
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x13a6
    call 0xc145
    mov ax, 0
    push ax
    call 0xc12a
    pop cx
    mov ax, 3
    push ax
    call 0xc12a
    pop cx
    mov ax, 4
    push ax
    call 0xc12a
    pop cx
    mov ax, 6
    push ax
    call 0xc12a
    pop cx
    mov ax, 8
    push ax
    call 0xc12a
    pop cx
    mov ax, 0xe
    push ax
    call 0xc12a
    pop cx
    mov word [0x830a], 2
    call 0xec17
    ret
api_idx_0008:
    mov ax, 0xfff8
    call 0xf40b
    mov ax, 0
    push ax
    call 0xf096
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    call 0xe809
    add sp, byte 4
    mov word [bp - 0x0004], 0
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x12
    jl short 0x1435
    mov word [0x906a], 0
    mov word [0x5b70], 0
    mov word [0x5b6e], 0
    mov word [0x5b6c], 0xffff
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 3
    push ax
    mov ax, 4
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 5
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 7
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 8
    push ax
    mov ax, 0xc
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xe
    push ax
    mov ax, 0
    push ax
    call 0xd61c
    add sp, byte 4
    cmp word [0x904c], byte 0
    jne short 0x14c3
    call 0xb890
    mov ax, 2
    push ax
    mov ax, 0x91a1
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x28
    imul cx
    push ax
    mov ax, 0x19
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, strict word 0x44
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 6
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x11
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call 0xe928
    add sp, byte 8
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7d2e], dx
    mov word [bx - 0x7d30], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x14d6
    mov word [0x5212], 0xffff
    mov word [0x69c8], 0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x750e], 0xffff
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call 0xe928
    add sp, byte 8
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov word [bx + 0x69a6], dx
    mov word [bx + 0x69a4], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x1542
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call 0xe928
    add sp, byte 8
    mov word [0x8d08], dx
    mov word [0x8d06], ax
    mov word [0x0e36], 0
    mov word [0x830a], 4
    ret

    db 0x8f, 0x06, 0xb6, 0x91, 0x59, 0x89, 0x26, 0xb2, 0x91, 0x89, 0x2e, 0xb4, 0x91, 0x89, 0x36, 0xae
    db 0x91, 0x89, 0x3e, 0xb0, 0x91, 0xfc, 0xbf, 0xb8, 0x91, 0xb9, 0xba, 0x91, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x0c, 0xea, 0x8b, 0x2e, 0xb4, 0x91, 0x8b, 0x26, 0xb2
    db 0x91, 0x8b, 0x36, 0xae, 0x91, 0x8b, 0x3e, 0xb0, 0x91, 0x51, 0xff, 0x26, 0xb6, 0x91
    db 'SCENARIO.HDR', 0
    db 'VBFONT0.VGA', 0
    db 'VBFONT1.VGA', 0
    db 'VBFONT2.VGA', 0
    db 'VBFONT3.VGA', 0
    db 'VCFONT1.VGA', 0
    db 'VCPORT0.VGA', 0
    db 'VCFONT2.VGA', 0
    db 'VCFONT3.VGA', 0
    db 'VMPNTR0.VGA', 0
    db 'VMPNTR1.VGA', 0
    db 'VMPNTR2.VGA', 0
    db 'BASEDATA.VGA', 0
    db 'MASTER.HDR', 0
    db 'DISK.HDR', 0
    db 'MSG.HDR', 0
    db 'PCFILE.DBS', 0
    db 'MISC.HDR', 0
    db 'MSG.DBS', 0
    db 'SCENARIO.DBS', 0
    db 'PALETTE.DEF', 0
    db 'TIT1SCRN.VGA', 0
    db 'TIT2SCRN.VGA', 0
    db 'MAINSCRN.VGA', 0
    times 10 db 0

