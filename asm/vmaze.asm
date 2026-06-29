%include "structs/structs.inc"
%include "structs/vmaze.inc"
org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0x60, 0xac, 0x98, 0x90 ; header (8 bytes)

    cli
    add byte [si + 0x770c], dl
    cld
    mov ax, 0xfffe
    call 0xf40b
    mov word [0x8f22], 0
    mov word [0x9192], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [0x9194], 0
    mov word [0x9196], 0
    mov word [0x9198], 0
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    add ax, strict word 0x24
    adc dx, byte 0
    mov word [0x919c], dx
    mov word [0x919a], ax
    call api_idx_0002_2
    cmp word [0x906a], byte 0
    je short 0x76
    mov ax, 1
    push ax
    push word [0x9068]
    call 0xc459
    add sp, byte 4
    mov word [0x906a], 0
    cmp word [0x830a], byte 6
    jne short 0x85
    push word [0x830c]
    call api_idx_000c
    pop cx
    cmp word [0x830a], byte 5
    jne short 0x92
    call api_idx_0002_4
    call api_idx_0022
    call loc_0140
    call api_idx_0002_2
    mov ax, word [0x830a]
    cmp ax, strict word 0x1e
    je short 0x102
    cmp ax, strict word 0x1b
    je short 0x102
    cmp ax, strict word 0x18
    je short 0x102
    cmp ax, strict word 0x11
    je short 0x102
    cmp ax, strict word 0x13
    je short 0x102
    cmp ax, strict word 0x14
    je short 0x102
    mov word [0x8f22], 1
    call api_idx_0030
    mov ax, 0x9098
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
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    call api_idx_0030
    mov word [0x906c], 1
    mov word [0x8f22], 0
    mov ax, 0
    ret
api_idx_0002:
    mov ax, 0xfffe
    call 0xf40b
    cmp word [0x830c], byte 0x17
    jne short 0x11b
    cmp word [0x8f3e], byte 0x0f
    jne short 0x11b
    ret
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    cmp ax, strict word 2
    jne short 0x134
    cmp word [0x9196], byte 0
    je short 0x134
    mov ax, 0xf
    jmp short 0x137
    mov ax, 0xe
    mov word [bp - 0x0002], ax
    push ax
    call 0xb7e0
    pop cx
    ret
loc_0140:
    mov ax, 0
    call 0xf40b
    mov ax, 1
    push ax
    call 0xef14
    pop cx
    cmp word [0x9194], byte 0
    je short 0x15d
    mov ax, 0xe
    push ax
    call 0xd6c6
    pop cx
    cmp word [0x9196], byte 0
    je short 0x16c
    mov ax, 0xf
    push ax
    call 0xd6c6
    pop cx
    mov word [0x9194], 0
    mov word [0x9196], 0
    mov word [0x9198], 0
    ret
loc_017f:
    mov ax, 0
    call 0xf40b
    call loc_0140
    cmp word [bp + 0x4], byte 0
    je short 0x1a5
    mov ax, 1
    push ax
    mov ax, 0xe
    push ax
    push word [bp + 0x4]
    call 0xd6dc
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov word [0x9194], ax
    cmp word [bp + 0x6], byte 0
    je short 0x1c2
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    push word [bp + 0x6]
    call 0xd6dc
    add sp, byte 6
    mov ax, word [bp + 0x6]
    mov word [0x9196], ax
    mov word [0x9198], 0
    ret
api_idx_0008:
    mov ax, 0xfff8
    call 0xf40b
    mov word [bp - 0x0008], 0
    call math_loc_13c0
    cmp word [0x919e], byte 0
    je short 0x1fa
    cmp word [0x9194], byte 0x0d
    je short 0x1f3
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    call loc_017f
    add sp, byte 4
    mov ax, word [bp + 0xe]
    mov word [0x9198], ax
    ret
    mov ax, word [bp + 0xe]
    jmp near 0x28d
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [0x8f42]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [0x0e14]
    add ax, 0x8b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x246
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x9b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x246
    mov ax, 1
    jmp short 0x249
    mov ax, 0
    mov word [bp - 0x0008], ax
    jmp short 0x297
    mov word [bp - 0x0004], 0x14a
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    push ax
    push dx
    mov ax, word [bp - 0x0004]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    sub ax, cx
    sbb dx, bx
    mov cx, 0x5a0
    mov bx, 0
    call 0xf9cd
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short 0x280
    cmp ax, 0x36c
    jl short 0x285
    mov ax, 1
    jmp short 0x288
    mov ax, 0
    mov word [bp - 0x0008], ax
    jmp short 0x297
    cmp ax, strict word 2
    jne short 0x295
    jmp near 0x200
    jmp short 0x24e
    cmp word [bp - 0x0008], byte 0
    je short 0x2b9
    mov ax, word [0x9194]
    cmp ax, word [bp + 0x8]
    jne short 0x2ab
    cmp word [bp + 0xc], byte 0
    je short 0x2b7
    push word [bp + 0xa]
    push word [bp + 0x8]
    call loc_017f
    add sp, byte 4
    jmp short 0x2d3
    mov ax, word [0x9194]
    cmp ax, word [bp + 0x4]
    jne short 0x2c7
    cmp word [bp + 0xc], byte 0
    je short 0x2d3
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_017f
    add sp, byte 4
    mov ax, word [bp + 0xe]
    mov word [0x9198], ax
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6e60], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0x2e5
    ret
api_idx_0002_3:
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
    jne short 0x32c
    mov ax, 0x1b
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
loc_0344:
    mov ax, 0
    call 0xf40b
    mov ax, word [0x5b6e]
    jmp near 0x3dc
    mov ax, 0x1a
    push ax
    mov ax, 0x19
    push ax
    call loc_017f
    add sp, byte 4
    jmp near 0x3e9
    mov ax, 1
    push ax
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x15
io_loc_0375:
    push ax
    call api_idx_0008
    add sp, byte 0x0c
    jmp short 0x3e9
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1c
    push ax
    mov ax, 0
    push ax
    mov ax, 0xe
    push ax
    call api_idx_0008
    add sp, byte 0x0c
    jmp short 0x3e9
    mov ax, 0x18
    push ax
    mov ax, 0x1d
    push ax
    call loc_017f
    add sp, byte 4
    jmp short 0x3e9
    mov ax, 3
    push ax
    mov ax, 1
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    call api_idx_0008
    add sp, byte 0x0c
    jmp short 0x3e9
    xor byte [si - 0x0069], dl
    push bx
    test al, 0x53
    lds dx, word [bp + di - 0x0058]
    push bx
    in ax, 0x53
    cmc
    push bx
    cmp ax, strict word 7
    jae short 0x3e9
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5415]
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call 0xf40b
    mov word [0x91a6], 0
    mov ax, word [0x830c]
    jmp short 0x46b
    mov word [bp - 0x0002], 1
    jmp short 0x478
    mov word [bp - 0x0002], 2
    jmp short 0x478
    mov word [bp - 0x0002], 3
    jmp short 0x478
    mov word [0x91a6], 1
    mov word [bp - 0x0002], 4
    jmp short 0x478
    mov word [bp - 0x0002], 5
    jmp short 0x478
    mov word [bp - 0x0002], 6
    jmp short 0x478

    db 'ITITITITITITIT]TkTkTkTkTkTITPTBTPTBTPTPTPTPTdTBTBTdTBTWTdTBTBTPT= ', 0

    jae short 0x478
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5472]
    cmp word [0x5b70], byte 0
    je short 0x48b
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x5b6e]
    jne short 0x48b
    jmp near 0x6d0
    call 0xc145
    mov ax, word [bp - 0x0002]
    mov word [0x5b6e], ax
    jmp near 0x6c3
    mov ax, 0
    push ax
    mov ax, 0x90a0
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 0x90ad
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 6
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 9
    push ax
    mov ax, 0xf
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xa
    push ax
    mov ax, 0x10
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xd
    push ax
    mov ax, 0x39
    push ax
    call 0xd61c
    add sp, byte 4
    mov word [0x5b6c], 0
    jmp near 0x6d0
    mov ax, 1
    push ax
    mov ax, 0x90ba
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x90c7
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x90d4
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 0xd
    push ax
    mov ax, 0x3a
    push ax
    call 0xd61c
    add sp, byte 4
    mov word [0x5b6c], 1
    jmp near 0x6d0
    mov ax, 2
    push ax
    mov ax, 0x90e1
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x90ee
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 0x90fb
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x9108
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 8
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xa
    push ax
    mov ax, 0x10
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xb
    push ax
    mov ax, 0x11
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x3b
    push ax
    call 0xd61c
    add sp, byte 4
    mov word [0x5b6c], 2
    jmp near 0x6d0
    mov ax, 1
    push ax
    mov ax, 0x9115
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x9122
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 0xd
    push ax
    mov ax, 0x3a
    push ax
    call 0xd61c
    add sp, byte 4
    mov word [0x5b6c], 1
    jmp near 0x6d0
    mov ax, 2
    push ax
    mov ax, 0x912f
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x913c
    push ax
    call api_idx_0002_3
    add sp, byte 4
    db 0xb8
loc_05fe:
    add ax, 0x5000
    mov ax, 0x9149
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 0xa
    push ax
    mov ax, 0x10
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xb
    push ax
    mov ax, 0x36
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x3b
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 9
    push ax
    mov ax, 0x53
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xd
    push ax
    mov ax, 0x38
    push ax
    call 0xd61c
    add sp, byte 4
    mov word [0x5b6c], 2
    jmp short 0x6d0
    mov ax, 1
    push ax
    mov ax, 0x9156
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x9163
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 0x9170
    push ax
    call api_idx_0002_3
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x3b
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 9
    push ax
    mov ax, 0x53
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xd
    push ax
    mov ax, 0x3a
    push ax
    call 0xd61c
    add sp, byte 4
    mov word [0x5b6c], 1
    jmp short 0x6d0
    pop ss
    push di
    ficom word [si + 0x3b]
    push bp
    jl short 0x712
    cmc
    push bp
    sub byte [bp - 0x0060], dl
    push si
    cmp ax, strict word 7
    db 0x73
math_loc_06c7:
    or byte [bp + di - 0x1c2f], dl
    jmp [cs:bx + 0x56fc]
    call loc_0344
    mov word [0x5b70], 1
    ret
api_idx_0014:
    mov ax, 0xffec
    call 0xf40b
    mov ax, word [0x0e10]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp near 0x9be
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [0x830c]
    je short 0x6fe
    jmp near 0x9b7
    cmp byte [bx + 0x1], 6
    jne short 0x719
    mov ax, word [bx + 0x4]
    mov cx, word [bx + 0x2]
    shl cx, 1
    mov si, cx
    mov bx, word [0x0e12]
    mov word [bx + si + 0x3c0], ax
    jmp near 0x9b7
    mov bx, word [bp - 0x0004]
    mov ax, word [bx + 0x2]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0010], ax
    mov ax, word [bx + 0x2]
    cwd
    idiv cx
    mov word [bp - 0x0012], dx
    mov ax, word [bp - 0x0010]
    mov word [bp - 0x0006], ax
    mov ax, dx
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    mov ax, word [bp - 0x0006]
    mov cx, 6
    shl ax, cl
    shl dx, 1
    shl dx, 1
    shl dx, 1
    mov cx, dx
    add ax, cx
    mov cx, ax
    mov ax, word [bp - 0x0008]
    add cx, ax
    mov word [bp - 0x0014], cx
    mov ax, word [bx + 0x4]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0010], ax
    mov ax, word [bx + 0x4]
    cwd
    idiv cx
    mov word [bp - 0x0012], dx
    mov bx, word [0x0e14]
    mov si, word [bp - 0x0006]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    add ax, word [bp - 0x0008]
    mov word [bp - 0x000c], ax
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    add ax, word [bp - 0x000a]
    mov word [bp - 0x000e], ax
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x1]
    sub ah, ah
    jmp near 0x9aa
    mov ax, word [bp - 0x0010]
    mov cx, 0x10
    cwd
    idiv cx
    push ax
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xeca4
    add sp, byte 8
    mov ax, word [bp - 0x0010]
    mov cx, 0x10
    cwd
    idiv cx
    mov ax, dx
    push ax
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xeca4
    add sp, byte 8
    mov ax, word [bp - 0x000e]
    dec ax
    push ax
    push word [bp - 0x000c]
    lea ax, word [bp - 0x0006]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    lea ax, word [bp - 0x0008]
    push ax
    call api_idx_0004_4
    add sp, byte 0x0a
    test ax, ax
    jne short 0x833
    mov ax, word [bp - 0x0006]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x000a]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp - 0x0008]
    mov word [bp - 0x0014], ax
    mov ax, word [bp - 0x0012]
    mov cx, 0x10
    cwd
    idiv cx
    push ax
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xeca4
    add sp, byte 8
    push word [bp - 0x000e]
    mov ax, word [bp - 0x000c]
    dec ax
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    lea ax, word [bp - 0x0008]
    push ax
    call api_idx_0004_4
    add sp, byte 0x0a
    test ax, ax
    jne short 0x88a
    mov ax, word [bp - 0x0006]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x000a]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp - 0x0008]
    mov word [bp - 0x0014], ax
    mov ax, word [bp - 0x0012]
    mov cx, 0x10
    cwd
    idiv cx
    mov ax, dx
    push ax
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xeca4
    add sp, byte 8
    jmp near 0x9b7
    mov bx, word [bp - 0x0004]
    push word [bx + 0x4]
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xeca4
    add sp, byte 8
    jmp near 0x9b7
    mov bx, word [bp - 0x0004]
    push word [bx + 0x4]
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xeca4
    add sp, byte 8
    jmp near 0x9b7
    mov ax, word [bp - 0x000e]
    dec ax
    push ax
    push word [bp - 0x000c]
    lea ax, word [bp - 0x0006]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    lea ax, word [bp - 0x0008]
    push ax
    call api_idx_0004_4
    add sp, byte 0x0a
    test ax, ax
    jne short 0x918
    mov ax, word [bp - 0x0006]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x000a]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp - 0x0008]
    mov word [bp - 0x0014], ax
    mov bx, word [bp - 0x0004]
    push word [bx + 0x4]
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xeca4
    add sp, byte 8
    jmp near 0x9b7
    push word [bp - 0x000e]
    mov ax, word [bp - 0x000c]
    dec ax
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    lea ax, word [bp - 0x0008]
    push ax
    call api_idx_0004_4
    add sp, byte 0x0a
    test ax, ax
    jne short 0x96c
    mov ax, word [bp - 0x0006]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x000a]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp - 0x0008]
    mov word [bp - 0x0014], ax
    mov bx, word [bp - 0x0004]
    push word [bx + 0x4]
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xeca4
    add sp, byte 8
    jmp short 0x9b7
    push word [bp - 0x0010]
    mov ax, 6
    push ax
    push word [bp - 0x0014]
    mov ax, word [0x0e14]
    add ax, 0x4b0
    push ax
    call 0xeca4
    add sp, byte 8
    push word [bp - 0x0012]
    mov ax, 2
    push ax
    push word [bp - 0x0014]
    mov ax, word [0x0e14]
    add ax, 0x7b0
    push ax
    call 0xeca4
    add sp, byte 8
    jmp short 0x9b7
    out 0x57, ax
    aam 0x58
    int1
    pop ax
    push cs
    pop cx
    bound bx, dword [bx + di - 0x004b]
    pop cx
    cmp ax, strict word 6
    jae short 0x9b7
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x59e5]
    db 0x83, 0x46, 0xfc, 0x06, 0xff, 0x46, 0xfe
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x590e]
    jge short 0x9ca
    jmp near 0x6ee
    ret
loc_09cb:
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    push word [0x830c]
    push word [0x0e14]
    mov ax, 2
    push ax
    call 0xb63c
    add sp, byte 8
    mov ax, 0
    push ax
    push word [0x830c]
    push word [0x0e12]
    mov ax, 3
    push ax
    call 0xb63c
    add sp, byte 8
    mov ax, 0x80
    push ax
    push ds
    mov ax, 0x8b7e
    push ax
    mov ax, word [0x830c]
    mov cx, 7
    shl ax, cl
    mov cx, ax
    mov ax, word [0x0e1a]
    mov dx, word [0x0e1c]
    add ax, cx
    push dx
    push ax
    call 0xafcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    push ds
    mov ax, 0x8afe
    push ax
    mov ax, word [0x830c]
    mov cx, 7
    shl ax, cl
    mov cx, ax
    mov ax, word [0x0e16]
    mov dx, word [0x0e18]
    add ax, cx
    push dx
    push ax
    call 0xafcc
    add sp, byte 0x0a
    call api_idx_0014
    mov bx, word [0x0e14]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    add ax, word [0x8f42]
    mov word [0x8f46], ax
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    add ax, word [0x8f40]
    mov word [0x8f44], ax
    call api_idx_0002_4
    ret
api_idx_0006:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp - 0x0004], byte 0x4a
    jl short 0xaa5
    mov ax, 2
    cmp word [bp - 0x0004], byte 0x5c
    jge short 0xaa5
    mov ax, 1
    mov word [bp - 0x0006], ax
    mov ax, 0xc
    imul word [bp + 0x4]
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add cx, ax
    mov si, cx
    mov bx, word [0x0e14]
    mov al, byte [bx + si]
    sub ah, ah
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov bx, word [0x0e14]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0xac0]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0xaf4
    mov ax, 0
    jmp short 0xaf7
    mov ax, 1
    mov word [bp - 0x0002], ax
    mov ax, 4
    push ax
    shl si, 1
    mov ax, si
    add ax, word [bp - 0x0002]
    push ax
    add bx, strict word 0xab0
    mov ax, bx
    push ax
    call 0xecf6
    add sp, byte 6
    ret
math_loc_0b14:
    mov ax, 0
    call 0xf40b
    call loc_0140
    cmp word [bp + 0x8], byte 0
    je short 0xb53
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0xb53
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [0x0112]
    mov word [0x844e], ax
    mov ax, 0
    push ax
    push word [0x844e]
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    mov ax, word [bp + 0x4]
    mov word [0x8452], ax
    mov ax, word [bp + 0x6]
    mov word [0x845a], ax
    mov word [0x830a], 0xa
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    mov cx, 8
    cwd
    idiv cx
    mov word [bp + 0x6], dx
    mov ax, word [bp + 0x8]
    add ax, strict word 8
    cwd
    idiv cx
    mov word [bp + 0x8], dx
    mov ax, word [bp + 0x4]
    mov cx, 6
    shl ax, cl
    shl dx, 1
    shl dx, 1
    shl dx, 1
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0x6]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, 0x8b7e
    push ax
    call 0xec74
    add sp, byte 4
    cmp ax, word [bp + 0xa]
    jne short 0xbb0
    ret
    push word [bp + 0xa]
    push word [bp - 0x0002]
    mov ax, 0x8b7e
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xecf6
    add sp, byte 6
    test ax, ax
    jne short 0xbf2
    cmp word [bp + 0x8], byte 7
    jge short 0xbf2
    push word [bp + 0xa]
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_6
    add sp, byte 8
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xecf6
    add sp, byte 6
    test ax, ax
    jne short 0xc24
    cmp word [bp + 0x6], byte 7
    jge short 0xc24
    push word [bp + 0xa]
    push word [bp + 0x8]
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_6
    add sp, byte 8
    cmp word [bp + 0x8], byte 0
    jle short 0xc6d
    mov ax, 4
    push ax
    mov ax, word [bp + 0x4]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0x8]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x6]
    add ax, strict word 0xfff8
    push ax
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xecf6
    add sp, byte 6
    test ax, ax
    jne short 0xc6d
    push word [bp + 0xa]
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_6
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    jle short 0xcb4
    mov ax, 4
    push ax
    mov ax, word [bp + 0x4]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0x8]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xecf6
    add sp, byte 6
    test ax, ax
    jne short 0xcb4
    push word [bp + 0xa]
    push word [bp + 0x8]
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_6
    add sp, byte 8
    ret
api_idx_000c:
    mov ax, 0xfff4
    call 0xf40b
    call loc_0140
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    add ax, strict word 0x24
    adc dx, byte 0
    mov word [0x919c], dx
    mov word [0x919a], ax
    call api_idx_0002_2
    mov ax, word [bp + 0x4]
    mov word [0x830c], ax
    push ax
    mov ax, 2
    push ax
    call 0xd5a2
    add sp, byte 4
    cmp word [0x830c], byte 0
    jge short 0xcf8
    mov word [0x830a], 7
    ret
    call loc_09cb
    mov ax, 0x10
    push ax
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    mov ax, word [0x830c]
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xfedc
    add sp, byte 6
    mov word [0x905e], 5
    mov word [0x8f24], 0xffff
    mov ax, 0
    push ax
    mov ax, 0x80
    push ax
    mov ax, 0x8c7e
    push ax
    call 0xf306
    add sp, byte 6
    mov bx, word [0x0e12]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [0x8d12], ax
    mov word [bp - 0x0002], 0
    mov bx, word [0x0e12]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0004], strict word 0xf0
    jge short 0xdba
    mov si, word [bp - 0x0004]
    mov bx, word [0x0e12]
    mov al, byte [bx + si + 0x870]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short 0xdba
    cmp byte [bx + si + 0x5a0], 0
    jbe short 0xdb5
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 6
    shl ax, cl
    push ax
    mov al, byte [bx + si + 0x780]
    sub ah, ah
    mov cx, ax
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov al, byte [bx + si + 0x690]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0x8c7e
    push ax
    call 0xec41
    add sp, byte 6
    inc word [bp - 0x0004]
    jmp short 0xd5e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x10
    jl short 0xd4e
    mov ax, 0
    push ax
    mov ax, 0x80
    push ax
    mov ax, 0x8bfe
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, word [0x0e0e]
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0002], 0
    jmp short 0xe4d
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [0x830c]
    jne short 0xe46
    mov ax, word [bx + 0x2]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x2]
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov ax, word [bx + 0x2]
    mov cx, 0x100
math_loc_0e14:
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x000a], dx
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0006]
    mov cx, 6
    shl ax, cl
    shl dx, 1
    shl dx, 1
    shl dx, 1
    mov cx, dx
    add ax, cx
    add ax, word [bp - 0x0008]
    push ax
    mov ax, 0x8bfe
    push ax
    call 0xec41
    add sp, byte 6
    add word [bp - 0x000c], byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x5910]
    jl short 0xde4
    mov word [0x830a], 5
    ret
api_idx_0002_7:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call 0xf9cd
    mov cx, 0x3c
    mov bx, 0
    call 0xf99f
    mov word [bp - 0x0002], ax
    mov cx, 3
    imul cx
    mov bx, ax
    mov al, byte [bx + 0xc6]
    sub ah, ah
    push ax
    mov al, byte [bx + 0xc5]
    sub ah, ah
    push ax
    mov al, byte [bx + 0xc4]
    sub ah, ah
    push ax
    mov ax, 0xff
    push ax
    call 0xf0a3
    add sp, byte 8
    ret
loc_0ea6:
    mov ax, 0
    call 0xf40b
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [0x919c]
    jl short 0xec5
    jne short 0xec7
    cmp ax, word [0x919a]
    ja short 0xec7
    jmp short 0xf0e
    call api_idx_0002
    mov ax, 0x3c
    push ax
    call 0xb7a9
    pop cx
    cwd
    push ax
    push dx
    cmp word [0x5b6e], byte 3
    je short 0xee3
    cmp word [0x5b6e], byte 5
    jne short 0xee8
    mov ax, 0x3c
    jmp short 0xeeb
    mov ax, 0
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    les bx, word [0x0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    mov word [0x919c], dx
    mov word [0x919a], ax
    jmp short 0xf1c
    cmp word [bp + 0x4], byte 0
    je short 0xf1c
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    ret
math_loc_0f1d:
    mov ax, 0
    call 0xf40b
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [0x908a]
    sbb dx, word [0x908c]
    push ax
    push dx
    mov ax, word [0x9192]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short 0xf4c
    jne short 0xf4e
    cmp ax, cx
    jae short 0xf4e
    jmp short 0xf64
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, 1
    ret
    mov ax, 0
    ret
math_loc_0f68:
    mov ax, 0
    call 0xf40b
    call math_loc_0f1d
    test ax, ax
    je short 0xf8a
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    call loc_676c
    mov ax, 1
    ret
    mov ax, 0
    ret
api_idx_0006_2:
    mov ax, 0xfffa
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
    jg short 0xfc7
    jne short 0xfc9
    cmp ax, word [bp - 0x0004]
    jb short 0xfc9
    jmp short 0xfdd
    call 0xbaef
    test ax, ax
    je short 0xfd1
    ret
    call math_loc_0f68
    not ax
    push ax
    call loc_0ea6
    pop cx
    jmp short 0xfb0
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    call 0xf40b
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
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
    mov ax, 0x98
    push ax
    push cx
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, 0x98
    push ax
    push word [bp - 0x0004]
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call 0xe94f
    add sp, byte 6
    call 0xec17
    ret
api_idx_0050:
    mov ax, 0xffb0
    call 0xf40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0050]
    push ax
    call api_idx_0008_2
    pop cx
    ret
math_loc_10b0:
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short 0x10d3
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, strict word 8
    push ax
    call 0xb7e0
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e2f], 3
    mov word [bx + 0x5c0c], 0
    mov word [bx + 0x5c10], 0
    cmp word [bp + 0x6], byte 0
    jle short 0x110d
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    cmp word [bp + 0x6], byte 1
    jle short 0x110d
    mov ax, 8
    push ax
    call 0xb75e
    pop cx
    ret
    mov ax, 0xfffe
    call 0xf40b
    call loc_676c
    push word [bp + 0x4]
    call api_idx_0050
    pop cx
    mov word [bp - 0x0002], 0
    jmp short 0x1135
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    call math_loc_10b0
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x1125
    mov ax, word [0x905a]
    shl ax, 1
    push ax
    call api_idx_0006_2
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [0x830a], 8
    ret
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    jmp short 0x11ee
    mov ax, 4
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xecf6
    add sp, byte 6
    ret
    mov ax, 4
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xecf6
    add sp, byte 6
    ret
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call 0x2d94
    add sp, byte 0x0a
    ret
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call 0x2e0c
    add sp, byte 0x0a
    ret
    cmp ax, strict word 0
    jne short 0x11f6
    jmp near 0x1170
    cmp ax, strict word 1
    je short 0x1199
    cmp ax, strict word 2
    je short 0x11c2
    cmp ax, strict word 3
    je short 0x11d8
    ret
api_idx_0002_8:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    sub word [bx - 0x7d0e], ax
    cmp word [bx - 0x7d0e], byte 0
    jg short 0x1234
    mov word [bx - 0x7d0e], 0
    mov word [bx - 0x7d0c], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x1211
    ret
    mov ax, 0
    call 0xf40b
    mov word [0x91a8], 1
    mov ax, 0
    push ax
    mov ax, 8
    push ax
    mov ax, 0x8cfe
    push ax
    call 0xf306
    add sp, byte 6
    mov word [0x82ea], 0
    mov ax, word [bp + 0x4]
    jmp short 0x128d
    mov ax, word [bp + 0x6]
    add word [0x8f44], ax
    jmp short 0x12a1
    mov ax, word [bp + 0x6]
    add word [0x8f46], ax
    jmp short 0x12a1
    mov ax, word [bp + 0x6]
    sub word [0x8f44], ax
    jmp short 0x12a1
    mov ax, word [bp + 0x6]
    sub word [0x8f46], ax
    jmp short 0x12a1
    cmp ax, strict word 0
    je short 0x1269
    cmp ax, strict word 1
    je short 0x1272
    cmp ax, strict word 2
    je short 0x127b
    cmp ax, strict word 3
    je short 0x1284
    ret
loc_12a2:
    mov ax, 0
    call 0xf40b
    mov ax, word [0x8f46]
    mov word [0x8f3a], ax
    mov ax, word [0x8f44]
    mov word [0x8f38], ax
    mov ax, word [0x8f42]
    mov word [0x8f36], ax
    mov ax, word [0x8f40]
    mov word [0x8f34], ax
    mov ax, word [0x8f3e]
    mov word [0x8f32], ax
    mov ax, word [0x830c]
    mov word [0x8f3c], ax
    mov ax, word [0x82ee]
    mov word [0x8f30], ax
    ret
    mov ax, 0
    call 0xf40b
    push word [bp + 0x4]
    call api_idx_0050
    pop cx
    call 0xec17
    push word [bp + 0x6]
    call 0xb7e0
    pop cx
    push word [bp + 0x8]
    call api_idx_0006_2
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0004:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    jmp short 0x1327
    push word [bp - 0x0002]
    call 0xca85
    pop cx
    or word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x131a
    cmp word [bp - 0x0004], byte 0
    je short 0x1339
    jmp near 0x13bc
    mov ax, 3
    push ax
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x1365
    mov word [0x8f3e], 0xa
    mov word [0x8f42], 7
    mov word [0x8f40], 2
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    mov word [0x82ee], ax
    mov bx, word [0x0e14]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    add ax, word [0x8f42]
    mov word [0x8f46], ax
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    add ax, word [0x8f40]
    mov word [0x8f44], ax
    push ax
    push word [0x8f46]
    mov ax, 0x8f3e
    push ax
    mov ax, 0x8f40
    push ax
    mov ax, 0x8f42
    push ax
    call api_idx_0004_4
    add sp, byte 0x0a
    mov word [0x91aa], 1
    mov word [0x91a8], 1
    call loc_12a2
    mov ax, 1
    ret
    mov ax, 0
    ret
math_loc_13c0:
    mov ax, 0
    call 0xf40b
    mov word [0x919e], 0
    mov ax, word [0x830c]
    cmp ax, word [0x8f28]
    jne short 0x13f6
    mov ax, word [0x8f3e]
    cmp ax, word [0x8f2a]
    jne short 0x13f6
    mov ax, word [0x8f42]
    cmp ax, word [0x8f2e]
    jne short 0x13f6
    mov ax, word [0x8f40]
    cmp ax, word [0x8f2c]
    jne short 0x13f6
    mov word [0x919e], 1
    ret
    mov ax, 0xfffc
    call 0xf40b
    cmp word [0x919e], byte 0
    je short 0x1417
    mov ax, word [0x8f3e]
    mov word [0x8f2a], ax
    mov ax, word [0x8f42]
    mov word [0x8f2e], ax
    mov ax, word [0x8f40]
    mov word [0x8f2c], ax
    ret
    call loc_676c
    mov word [bp - 0x0002], 0
    jmp near 0x14f7
    push word [bp - 0x0002]
    call 0xca85
    pop cx
    test ax, ax
    jne short 0x145d
    mov ax, 0x248
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short 0x145a
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call math_loc_10b0
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x80d
    push ax
    push word [bp - 0x0002]
    call 0x74e2
    add sp, byte 6
    jmp near 0x14f4
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 7
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d76]
    db 0x2a, 0xe4 ; sub ah, ah
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    inc ax
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bx + 0x5c12]
    cwd
    idiv cx
    push ax
    mov ax, word [bx + 0x5c12]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x0004], ax
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    sub word [bx + 0x5c10], ax
    cmp word [bx + 0x5c10], byte 0
    jg short 0x14d6
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call math_loc_10b0
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x80d
    push ax
    push word [bp - 0x0002]
    call 0x74e2
    add sp, byte 6
    jmp short 0x14f4
    mov ax, 3
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    call 0x6fbf
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jge short 0x1503
    jmp near 0x1422
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [0x8f42]
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    push ax
    mov ax, word [0x0e14]
    add ax, 0x9b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x1586
    mov ax, word [0x830c]
    jmp short 0x1576
    cmp word [0x8f3e], byte 0x0c
    jle short 0x154d
    mov word [bp - 0x0004], 1
    jmp short 0x1586
    mov word [bp - 0x0004], 1
    jmp short 0x1586
    xchg si, ax
    db 0x65, 0xcd, 0x65 ; int 0x65
    xchg si, ax
    db 0x65, 0xcd, 0x65 ; int 0x65
    int 0x65
    int 0x65
    int 0x65
    xchg si, ax
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0xcd, 0x65 ; int 0x65
    int 0x65
    mov byte [di - 0x006a], ah
    db 0x65, 0x2d, 0x0f, 0x00 ; sub ax, 0xf
    cmp ax, strict word 0x10
    jae short 0x1586
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x659d]
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x8b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x15cb
    mov ax, word [0x830c]
    jmp short 0x15ad
    mov word [bp - 0x0004], 1
    jmp short 0x15cb
    mov word [bp - 0x0004], 2
    jmp short 0x15cb
    cmp ax, strict word 8
    je short 0x159f
    cmp ax, strict word 9
    je short 0x159f
    cmp ax, strict word 0xa
    je short 0x159f
    cmp ax, strict word 0xb
    je short 0x159f
    cmp ax, strict word 0xc
    je short 0x159f
    cmp ax, strict word 0x1b
    je short 0x15a6
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x930
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x1627
    mov ax, word [0x830c]
    jmp short 0x1602
    mov word [bp - 0x0004], 3
    jmp short 0x1627
    jmp short 0x1627
    mov word [bp - 0x0004], 1
    jmp short 0x1627
    mov word [bp - 0x0004], 2
    jmp short 0x1627
    mov word [bp - 0x0004], 4
    jmp short 0x1627
    cmp ax, strict word 0
    je short 0x15e4
    cmp ax, strict word 0xa
    je short 0x15eb
    cmp ax, strict word 0xe
    je short 0x15ed
    cmp ax, strict word 0x13
    je short 0x15ed
    cmp ax, strict word 0x17
    je short 0x15f4
    cmp ax, strict word 0x19
    je short 0x15eb
    cmp ax, strict word 0x1f
    je short 0x15ed
    jmp short 0x15fb
    mov ax, word [bp - 0x0004]
    ret
    mov ax, 0xfff2
    call 0xf40b
    call math_loc_13c0
    call loc_12a2
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [0x8f42]
    mov word [bp - 0x0002], ax
    mov word [0x91aa], 1
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    push word [bp - 0x0002]
    call loc_2f55
    add sp, byte 6
    cmp word [bp - 0x000a], byte 1
    je short 0x1675
    cmp word [bp - 0x000a], byte 2
    jne short 0x1683
    mov ax, word [bp - 0x000c]
    cmp ax, word [bp + 0x4]
    jne short 0x1683
    mov word [0x91aa], 0
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0x1240
    add sp, byte 4
    push word [0x8f44]
    push word [0x8f46]
    mov ax, 0x8f3e
    push ax
    mov ax, 0x8f40
    push ax
    mov ax, 0x8f42
    push ax
    call api_idx_0004_4
    add sp, byte 0x0a
    test ax, ax
    je short 0x16c0
    mov ax, 4
    push ax
    mov ax, 0x7e6
    push ax
    call 0x110e
    add sp, byte 4
    mov ax, 1
    ret
    cmp word [0x919e], byte 0
    jne short 0x16ca
    call math_loc_13c0
    call api_idx_0004_2
    jmp near 0x1790
    call 0x13f7
    jmp near 0x17ad
    mov ax, 4
    push ax
    mov ax, 0x809
    push ax
    call 0x110e
    add sp, byte 4
    mov ax, 1
    ret
    mov word [bp - 0x000e], 0
    jmp near 0x1770
    mov ax, 0x248
    imul word [bp - 0x000e]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short 0x176d
    cmp byte [bx + 0x5d83], 0
    jne short 0x176d
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x000e]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5da5]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short 0x176d
    mov ax, 0xfa
    push ax
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x000e]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5c]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 5
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x000e]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
    mov ax, 1
    push ax
    push word [bp - 0x000e]
    call 0xcb3a
    add sp, byte 4
    inc word [bp - 0x000e]
    mov ax, word [bp - 0x000e]
    cmp ax, word [0x69c8]
    jge short 0x177c
    jmp near 0x16f0
    jmp short 0x17ad
    mov ax, 4
    push ax
    mov ax, 0x7e6
    push ax
    call 0x110e
    add sp, byte 4
    mov ax, 1
    ret
    cmp ax, strict word 1
    jne short 0x1798
    jmp near 0x16d0
    cmp ax, strict word 2
    jne short 0x17a0
    jmp near 0x16d6
    cmp ax, strict word 3
    jne short 0x17a8
    jmp near 0x16e8
    cmp ax, strict word 4
    je short 0x177e
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [0x8f42]
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x8afe
    push ax
    call 0xec41
    add sp, byte 6
    mov bx, word [0x0e12]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0xb40]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x8d12], ax
    mov ax, 0
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov word [0x91ac], 0x7e4
    mov ax, word [0x82ee]
    add ax, word [bp + 0x4]
    add ax, strict word 4
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0004], dx
    push word [0x8f44]
    push word [0x8f46]
    push word [0x8f40]
    push word [0x8f42]
    push word [0x8f3e]
    push dx
    call 0x1165
    add sp, byte 0x0c
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx - 0x7302]
    jmp near 0x1944
    cmp word [bp - 0x0002], byte 2
    jl short 0x1844
    cmp word [bp - 0x0002], byte 5
    jne short 0x1852
    push word [bp - 0x0004]
    call 0x162b
    pop cx
    test ax, ax
    je short 0x1850
    ret
    jmp short 0x18bb
    cmp word [bp - 0x0002], byte 3
    jne short 0x18bb
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x82ee]
    jne short 0x18bb
    mov ax, 0xf
    push ax
    call 0xd7aa
    pop cx
    mov ax, 1
    push ax
    call 0xb7e0
    pop cx
    mov word [0x831a], 1
    call loc_676c
    mov ax, 0x10
    push ax
    call 0xb7e0
    pop cx
    mov ax, 0x10
    push ax
    call 0xd6c6
    pop cx
    mov word [0x598e], 0xffff
    mov ax, 2
    push ax
    call 0xb75e
    pop cx
    mov word [0x831a], 2
    call loc_676c
    mov ax, 2
    push ax
    call 0xb75e
    pop cx
    mov word [0x831a], 0
    push word [bp - 0x0004]
    call 0x162b
    pop cx
    test ax, ax
    je short 0x18bb
    ret
    cmp word [0x91a8], byte 0
    jne short 0x18df
    mov ax, 2
    push ax
    mov ax, 0
    cmp word [0x91ac], strict word 0x7e4
    jne short 0x18d4
    mov ax, 2
    push ax
    push word [0x91ac]
    call 0x12d3
    add sp, byte 6
    jmp near 0x195b
    cmp word [bp - 0x0002], byte 6
    je short 0x18ee
    cmp word [bp - 0x0002], byte 3
    jne short 0x190e
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x82ee]
    jne short 0x190e
    mov ax, word [0x905a]
    mov cx, 2
    cwd
    idiv cx
    push ax
    push cx
    mov ax, 0x7e5
    push ax
    call 0x12d3
    add sp, byte 6
    jmp short 0x191d
    mov ax, 2
    push ax
    push ax
    push word [0x91ac]
    call 0x12d3
    add sp, byte 6
    jmp short 0x195b
    cmp word [bp - 0x0002], byte 2
    jne short 0x1933
    push word [bp - 0x0004]
    call 0x162b
    pop cx
    test ax, ax
    je short 0x1931
    ret
    jmp short 0x1942
    mov ax, 2
    push ax
    push ax
    push word [0x91ac]
    call 0x12d3
    add sp, byte 6
    jmp short 0x195b
    cmp ax, strict word 0
    jne short 0x194c
    jmp near 0x1838
    cmp ax, strict word 1
    je short 0x18e2
    cmp ax, strict word 2
    je short 0x18e2
    cmp ax, strict word 3
    je short 0x191f
    ret
api_idx_000a:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short 0x1974
    jmp near 0x1c93
    cmp byte [bx + 0x5d60], 0
    ja short 0x197e
    jmp near 0x1acb
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0x198d
    jmp near 0x1a6f
    mov ax, 6
    push ax
    call 0xb7a9
    pop cx
    jmp short 0x19cd
    mov word [bp - 0x0008], 3
    jmp short 0x19da
    mov word [bp - 0x0008], 4
    jmp short 0x19da
    mov word [bp - 0x0008], 5
    jmp short 0x19da
    mov word [bp - 0x0008], 7
    jmp short 0x19da
    mov word [bp - 0x0008], 8
    jmp short 0x19da
    mov word [bp - 0x0008], 9
    jmp short 0x19da
    fisubr word [bx + di - 0x001b]
    imul bp, sp, 0xf369
    imul di, dx, 0x169
    db 0x6a, 0x3d ; push 0x3d
    push es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6a08]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0008]
    mov bx, ax
    mov byte [bx + 0x5d5a], 0xff
    cmp word [bp - 0x0008], byte 5
    jne short 0x1a11
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e32]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    inc ax
    mov byte [bx + 0x5e32], al
    mov ax, 7
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x000a], ax
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x1a3e
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x000a]
    mov bx, ax
    cmp byte [bx + 0x5d64], 1
    jbe short 0x1a3e
    dec byte [bx + 0x5d64]
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x1a6f
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c0e], byte 2
    jle short 0x1a6f
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    sub word [bx + 0x5c0e], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e30]
    sub ah, ah
    imul word [bp + 0xa]
    push ax
    mov al, byte [bx + 0x5e31]
    sub ah, ah
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    mov al, byte [bx + 0x5e32]
    sub ah, ah
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    sub ax, cx
    add word [bx + 0x5c0c], ax
    mov ax, word [bx + 0x5c0c]
    cmp ax, word [bx + 0x5c0e]
    jle short 0x1ab4
    mov ax, word [bx + 0x5c0e]
    mov word [bx + 0x5c0c], ax
    cmp word [bx + 0x5c0c], byte 0
    jg short 0x1ac8
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_10b0
    add sp, byte 4
    jmp near 0x1c86
    push word [bp + 0x6]
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e30]
    sub ah, ah
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov al, byte [bx + 0x5e31]
    sub ah, ah
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    mov al, byte [bx + 0x5e32]
    sub ah, ah
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    sub ax, cx
    add word [bx + 0x5c0c], ax
    mov ax, word [bx + 0x5c0c]
    cmp ax, word [bx + 0x5c0e]
    jle short 0x1b1d
    mov ax, word [bx + 0x5c0e]
    mov word [bx + 0x5c0c], ax
    cmp word [bx + 0x5c0c], byte 0
    jg short 0x1b34
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_10b0
    add sp, byte 4
    jmp near 0x1c86
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c10], byte 0
    jg short 0x1b62
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
    cmp word [bp + 0x8], byte 0
    jle short 0x1bc8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    mov cx, word [bp + 0x8]
    mov bx, cx
    imul bx
    mov cx, 0x64
    mov bx, 0
    call 0xf99f
    mov word [bp - 0x0006], ax
    mov cx, 2
    cwd
    idiv cx
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov cx, word [bx + 0x5c10]
    pop ax
    add ax, cx
    push ax
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    inc ax
    mov word [bx + 0x5c10], ax
    mov ax, word [bx + 0x5c10]
    cmp ax, word [bx + 0x5c12]
    jle short 0x1bc8
    mov ax, word [bx + 0x5c12]
    mov word [bx + 0x5c10], ax
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short 0x1c03
    cmp ax, 0xff
    je short 0x1c03
    mov ax, word [bp + 0xa]
    sub word [bp - 0x0006], ax
    cmp word [bp - 0x0006], byte 0
    jge short 0x1bfc
    mov word [bp - 0x0006], 0
    mov al, byte [bp - 0x0006]
    mov byte [bx + 0x5d5a], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short 0x1bcd
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5f], 0
    je short 0x1c24
    cmp byte [bx + 0x5e32], 0
    jne short 0x1c2e
    mov byte [bx + 0x5d5f], 0
    mov byte [bx + 0x5e32], 0
    cmp word [bp + 0xc], byte 0
    jle short 0x1c86
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d54]
    sub ah, ah
    inc ax
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    add word [bx + 0x5c1c], ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bx + 0x5c1e]
    jle short 0x1c7b
    mov ax, word [bx + 0x5c1e]
    mov word [bx + 0x5c1c], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jl short 0x1c39
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    ret
api_idx_0018:
    mov ax, 0xffe8
    call 0xf40b
    call loc_0140
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0x1ccd
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [0x010e]
    mov word [0x844e], ax
    mov ax, 0
    push ax
    push word [0x844e]
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    mov ax, 0x7f4
    push ax
    call api_idx_0050
    pop cx
    mov word [0x91ae], 0
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    sub ax, word [0x8f18]
    sbb dx, word [0x8f1a]
    add word [0x8f14], ax
    adc word [0x8f16], dx
    mov ax, word [0x8f14]
    mov dx, word [0x8f16]
    mov cx, 0x3c
    mov bx, 0
    call 0xf99f
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000e], 0
    cmp word [bp - 0x000c], byte 4
    jl short 0x1d24
    inc word [bp - 0x000e]
    add word [bp - 0x000c], byte 0xfc
    add word [0x8f14], strict word 0xff10
    adc word [0x8f16], byte 0xff
    jmp short 0x1d0a
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov word [0x8f1a], dx
    mov word [0x8f18], ax
    cmp word [0x8450], byte 0
    jne short 0x1d3e
    mov ax, 0x30
    jmp short 0x1d41
    mov ax, 0
    mov word [bp - 0x0012], ax
    mov word [bp - 0x0008], 0
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0016], 0
    cmp word [0x830c], byte 0
    jne short 0x1d86
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [0x8f42]
    mov word [bp - 0x0018], ax
    push ax
    mov ax, word [0x0e14]
    add ax, 0x930
    push ax
    call 0xec74
    add sp, byte 4
    mov word [bp - 0x0014], ax
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp - 0x0012]
    jl short 0x1d98
    call 0xef83
    test ax, ax
    jne short 0x1d98
    jmp near 0x1f90
    cmp word [0x91ae], byte 0
    je short 0x1da2
    jmp near 0x1f90
    cmp word [0x830a], byte 5
    je short 0x1dac
    jmp near 0x1f90
    call math_loc_0f68
    test ax, ax
    jne short 0x1db5
    jmp short 0x1dac
    mov word [bp - 0x0002], 0
    jmp short 0x1dd9
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov byte [bx + 0x5d5c], 0xa
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x1dbc
    cmp word [bp - 0x0014], byte 0
    je short 0x1e0b
    cmp word [bp - 0x0016], byte 0
    jne short 0x1e0b
    mov word [bp - 0x0016], 1
    call api_idx_0004
    test ax, ax
    je short 0x1e0b
    mov bx, word [0x0e12]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [0x8d12], ax
    call 0xbaef
    test ax, ax
    je short 0x1e18
    mov word [0x91ae], 1
    call math_loc_0f68
    test ax, ax
    jne short 0x1e27
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    cmp word [bp - 0x0014], byte 0
    je short 0x1e33
    mov word [0x91ae], 0
    cmp word [0x91ae], byte 0
    je short 0x1e3d
    jmp near 0x1f8d
    inc word [bp - 0x0008]
    add word [0x8f1c], byte 0x0a
    adc word [0x8f1e], byte 0
    call api_idx_0002_7
    mov ax, 0xa
    push ax
    call api_idx_0002_8
    pop cx
    cmp word [bp - 0x0008], byte 0x18
    jne short 0x1e75
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov bx, word [bp - 0x0002]
    mov byte [bx + 0x5990], al
    mov word [bp - 0x0002], 0
    jmp near 0x1f14
    mov ax, word [bp - 0x0008]
    mov cx, 6
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short 0x1e91
    mov ax, 1
    jmp short 0x1e94
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    test dx, dx
    jne short 0x1ead
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e35]
    sub ah, ah
    jmp short 0x1eb0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short 0x1ed4
    cmp word [bp - 0x000e], byte 0
    jle short 0x1ed4
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e34]
    sub ah, ah
    inc ax
    jmp short 0x1ed7
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call api_idx_000a
    add sp, byte 0x0a
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
    mov ax, word [bp - 0x0008]
    mov cx, 6
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short 0x1f11
    cmp byte [bx + 0x5e32], 0
    jbe short 0x1f11
    dec byte [bx + 0x5e32]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jge short 0x1f20
    jmp near 0x1e7d
    push word [0x69c8]
    call 0xb7a9
    pop cx
    mov cx, 0x248
    imul cx
    mov bx, ax
    mov byte [bx + 0x5d5c], 0
    mov ax, word [bp - 0x0008]
    mov cx, 6
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short 0x1f8d
    call api_idx_0032
    dec word [bp - 0x000e]
    mov ax, 0x3cf
    cmp byte [0x5988], 1
    jne short 0x1f56
    mov ax, 0x3de
    mov word [bp - 0x0010], ax
    cmp word [0x91b0], byte 0
    jne short 0x1f8d
    cmp word [bp - 0x0014], byte 0
    jne short 0x1f8d
    mov ax, 0x3e8
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x0010]
    cmp cx, ax
    jl short 0x1f8d
    cmp word [0x8450], byte 0
    je short 0x1f89
    call 0xef90
    mov ax, 0
    push ax
    call 0xd907
    pop cx
    mov ax, 1
    ret
    jmp near 0x1d86
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short 0x2003
    cmp word [bp - 0x0004], byte 0
    je short 0x1fd0
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    add word [bx + 0x5bfc], byte 1
    adc word [bx + 0x5bfe], byte 0
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c10]
    push ax
    mov ax, word [bx + 0x5c12]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cmp ax, cx
    jle short 0x1ff3
    mov byte [bx + 0x5d5c], 0
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x1fb8
    call math_loc_0f68
    cmp word [0x8450], byte 0
    je short 0x202c
    push word [0x844c]
    push word [0x844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 0
    push ax
    call 0xd907
    pop cx
    call loc_0344
    mov ax, 0
    ret
api_idx_0010:
    mov ax, 0xfff0
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x126]
    push word [bx + 0x124]
    push word [bx + 0x122]
    push word [bx + 0x120]
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x000e], dx
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0002], 0
    mov al, byte [bp + 0x4]
    inc al
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
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x122]
    push word [bx + 0x120]
    push word [bp - 0x0002]
    call 0xefd1
    add sp, byte 0x16
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x126]
    push word [bx + 0x124]
    push word [bx + 0x122]
    push word [bx + 0x120]
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x000e]
    push word [bp - 0x0010]
    call 0xe94f
    add sp, byte 6
    ret
api_idx_0006_3:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [0x0e0e]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short 0x2126
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [0x830c]
    jne short 0x211f
    mov ax, word [0x8f3e]
    xchg al, ah
    sub al, al
    mov dx, word [0x8f42]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [0x8f40]
    mov word [bp - 0x0004], ax
    cmp ax, word [bx + 0x2]
    jne short 0x211f
    mov ax, bx
    ret
    add word [bp - 0x0006], byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x5910]
    jl short 0x20ef
    mov ax, 0
    ret
api_idx_0006_4:
    mov ax, 0xfffa
    call 0xf40b
    call api_idx_0006_3
    mov word [bp - 0x0002], ax
    test ax, ax
    je short 0x2190
    mov ax, 0
    push ax
    push word [0x8d08]
    push word [0x8d06]
    call 0xe94f
    add sp, byte 6
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x7]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    ret
    mov ax, 0
    push ax
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [0x8f42]
    push ax
    mov ax, 0x8bfe
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0
    push ax
    push word [0x8d08]
    push word [0x8d06]
    call 0xe94f
    add sp, byte 6
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    ret
loc_21e3:
    mov ax, 0
    call 0xf40b
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0x64
    push ax
    call 0xe489
    pop cx
    push word [bp + 0x4]
    call api_idx_0050
    pop cx
    mov word [0x91b2], 1
    ret
api_idx_0022:
    mov ax, 0xffde
    call 0xf40b
    cmp word [0x8d12], byte 0
    jl short 0x2239
    mov bx, word [0x0e12]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    cmp ax, word [0x8d12]
    jle short 0x2239
    mov word [0x8d12], ax
    cmp word [0x905e], byte 0x17
    je short 0x2256
    mov ax, 0
    push ax
    push word [0x8f40]
    push word [0x8f42]
    push word [0x8f3e]
    call api_idx_0002_6
    add sp, byte 8
    mov word [bp - 0x0004], 0
    jmp short 0x226d
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    call 0xcb3a
    add sp, byte 4
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x69c8]
    jl short 0x225d
    mov word [0x91aa], 1
    mov word [0x91a8], 1
    mov word [0x82e8], 0
    mov word [0x82ec], 0
    mov word [0x831a], 0
    call api_idx_0002_7
    mov word [0x905e], 5
    mov word [0x830a], 5
    mov word [0x91b2], 1
    mov word [0x91b4], 1
    mov word [0x91b0], 0
    cmp word [0x91aa], byte 1
    jne short 0x22bf
    call loc_676c
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [0x8f42]
    mov word [bp - 0x000a], ax
    push ax
    mov ax, 0x8bfe
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x22f1
    call api_idx_0006_4
    mov word [0x91b4], ax
    jmp short 0x2326
    cmp word [0x91b4], byte 0
    je short 0x2326
    mov word [0x91b4], 0
    mov ax, 0
    push ax
    push word [0x8d08]
    push word [0x8d06]
    call 0xe94f
    add sp, byte 6
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call 0xe8da
    add sp, byte 8
    add word [0x8f1c], byte 1
    adc word [0x8f1e], byte 0
    call api_idx_0002_7
    mov ax, word [0x9198]
    jmp short 0x2395
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x15
    push ax
    call api_idx_0008
    add sp, byte 0x0c
    jmp short 0x23a4
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0x1c
    push ax
    mov ax, 0
    push ax
    mov ax, 0xe
    push ax
    call api_idx_0008
    add sp, byte 0x0c
    jmp short 0x23a4
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    call api_idx_0008
    add sp, byte 0x0c
    jmp short 0x23a4
    cmp ax, strict word 1
    je short 0x2338
    cmp ax, strict word 2
    je short 0x2358
    cmp ax, strict word 3
    je short 0x2375
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov cx, 0x3c
    mov bx, 0
    call 0xf9cd
    or dx, ax
    jne short 0x23bb
    call api_idx_0032
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov cx, 0xf0
    mov bx, 0
    call 0xf9cd
    or dx, ax
    jne short 0x23e9
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x5990], al
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov cx, 0xa
    mov bx, 0
    call 0xf9cd
    cmp dx, byte 0
    jne short 0x2401
    cmp ax, strict word 5
    je short 0x2406
    jmp near 0x24a2
    mov word [bp - 0x0004], 0
    jmp near 0x2496
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short 0x2420
    jmp near 0x2493
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov cx, 0x3c
    mov bx, 0
    call 0xf9cd
    mov cx, 0xa
    mov bx, 0
    call 0xf99f
    push ax
    push dx
    mov ax, word [bp - 0x0004]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jne short 0x244b
    cmp ax, cx
    jne short 0x2452
    mov ax, 1
    jmp short 0x2455
    mov ax, 0
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0012], byte 0
    je short 0x247e
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5e33]
    sub ah, ah
    inc ax
    sub word [bx + 0x5c10], ax
    cmp word [bx + 0x5c10], byte 0
    jge short 0x247e
    mov word [bx + 0x5c10], 0
    push word [bp - 0x0012]
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0004]
    call api_idx_000a
    add sp, byte 0x0a
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x69c8]
    jge short 0x24a2
    jmp near 0x240e
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0004], 0
    jmp short 0x24d9
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short 0x24d6
    inc word [bp - 0x0016]
    cmp byte [bx + 0x5d5c], 0
    ja short 0x24d3
    cmp byte [bx + 0x5d5d], 0
    jbe short 0x24d6
    inc word [bp - 0x0018]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x69c8]
    jl short 0x24b3
    cmp word [bp - 0x0016], byte 0
    jne short 0x24ef
    mov word [0x830a], 8
    ret
    mov ax, word [bp - 0x0018]
    cmp ax, word [bp - 0x0016]
    jne short 0x2522
    call api_idx_0018
    cmp ax, strict word 1
    jne short 0x2522
    push word [0x8f3e]
    call api_idx_0002_5
    pop cx
    push ax
    call api_idx_0006
    pop cx
    mov bx, word [0x100a]
    mov word [bx], ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    call math_loc_0b14
    add sp, byte 6
    ret
    mov ax, word [bp - 0x0018]
    cmp ax, word [bp - 0x0016]
    jne short 0x252d
    jmp near 0x24a2
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [0x8f42]
    mov word [bp - 0x000a], ax
    push ax
    mov ax, 0x8b7e
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x257d
    push word [0x8f3e]
    call api_idx_0002_5
    pop cx
    push ax
    call api_idx_0006
    pop cx
    mov bx, word [0x100a]
    mov word [bx], ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call math_loc_0b14
    add sp, byte 6
    ret
    push word [bp - 0x000a]
    mov ax, 0x8c7e
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x25a0
    cmp word [0x91a8], byte 1
    jne short 0x25a0
    call loc_8867
    cmp word [0x830a], byte 5
    je short 0x25a0
    ret
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov cx, 0x1e
    mov bx, 0
    call 0xf9cd
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0x16
    jge short 0x2622
    mov cx, 0x26
    imul cx
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jle short 0x2622
    cmp byte [bx - 0x7b16], 1
    je short 0x2622
    mov al, byte [bx - 0x7b14]
    sub ah, ah
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7687]
    cbw
    cmp ax, word [0x830c]
    jne short 0x2622
    mov ax, word [bp - 0x0008]
    imul cx
    mov bx, ax
    mov al, byte [bx - 0x7b13]
    sub ah, ah
    cmp ax, word [0x8f3e]
    jne short 0x2622
    mov ax, word [bp - 0x0008]
    mov bx, word [0x100a]
    mov word [bx], ax
    mov ax, 0
    cmp word [bp - 0x0008], byte 0x13
    je short 0x260c
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call math_loc_0b14
    add sp, byte 6
    mov word [0x830a], 0x12
    ret
    mov ax, 0x3e8
    push ax
    call 0xb7a9
    pop cx
    cmp ax, 0x3e3
    jl short 0x2652
    push word [0x8f3e]
    call api_idx_0002_5
    pop cx
    push ax
    call api_idx_0006
    pop cx
    mov bx, word [0x100a]
    mov word [bx], ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    call math_loc_0b14
    add sp, byte 6
    ret
    mov word [0x91aa], 0
    mov word [0x91a8], 0
    mov word [bp - 0x0022], 0
    call math_loc_13c0
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [0x8f42]
    mov word [bp - 0x000a], ax
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    mov ax, 0x8afe
    push ax
    call 0xec41
    add sp, byte 6
    call api_idx_0004_2
    mov word [bp - 0x0010], ax
    cmp ax, strict word 1
    jne short 0x26bd
    cmp word [0x919e], byte 0
    je short 0x26ae
    mov ax, 0x80e
    push ax
    call loc_21e3
    pop cx
    jmp short 0x26bb
    mov ax, 0x80c
    push ax
    call loc_21e3
    pop cx
    mov word [bp - 0x0022], 1
    jmp short 0x26f0
    cmp word [bp - 0x0010], byte 3
    jne short 0x26cd
    mov ax, 0x80b
    push ax
    call loc_21e3
    pop cx
    jmp short 0x26f0
    cmp word [0x91b2], byte 1
    jne short 0x26f0
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [0x91b2], 0
    mov word [bp - 0x0004], 0
    mov ax, 0
    push ax
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x150]
    cbw
    push ax
    shl bx, 1
    shl bx, 1
    shl bx, 1
    push word [bx + 0x126]
    push word [bx + 0x124]
    push word [bx + 0x122]
    push word [bx + 0x120]
    push word [bp - 0x0004]
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jl short 0x26f5
    mov ax, 0
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0xac
    push ax
    mov ax, 0x6c
    push ax
    mov ax, 0xa3
    push ax
    mov ax, 0x5c
    push ax
    mov ax, 6
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x53
    push ax
    mov ax, 0xba
    push ax
    mov ax, 0x6b
    push ax
    mov ax, 0xaf
    push ax
    mov ax, 0x58
    push ax
    mov ax, 7
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0xc3
    push ax
loc_277c:
    mov ax, 0x57
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x41
    push ax
    mov ax, 8
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x44
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0xe4
    push ax
    mov ax, 0xa3
    push ax
    mov ax, 0xd1
    push ax
    mov ax, 9
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x4f
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0xe4
    push ax
    mov ax, 0xaf
    push ax
    mov ax, 0xd5
    push ax
    mov ax, 0xa
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    mov ax, 0xc3
    push ax
    mov ax, 0xfe
    push ax
    mov ax, 0xb8
    push ax
    mov ax, 0xe5
    push ax
    mov ax, 0xb
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x0004]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x000e], ax
    mov ax, 0
    push ax
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x156]
    cbw
    push ax
    mov ax, word [bp - 0x000e]
    add ax, strict word 0x25
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x000e]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 4
    push ax
    add bx, byte 0x0c
    mov ax, bx
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, word [bp - 0x000e]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x12
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jge short 0x2897
    jmp near 0x27fd
    mov ax, 0
    push ax
    mov ax, 0x47
    push ax
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    mov ax, 0x18
    push ax
    call 0xbaa6
    add sp, byte 0x0e
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
    mov word [bp - 0x001c], 0
    lea ax, word [bp - 0x0020]
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    push word [bp - 0x000a]
    call loc_2f55
    add sp, byte 6
    cmp word [bp - 0x001e], byte 0
    jg short 0x28ee
    jmp near 0x2a5c
    cmp word [bp - 0x001e], byte 0x0e
    jne short 0x291e
    mov ax, 0
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0x8d
    push ax
    mov ax, 0xb6
    push ax
    mov ax, 0x76
    push ax
    mov ax, 0x8a
    push ax
    mov ax, 0x19
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x001c], 3
    jmp near 0x2a5c
    cmp word [bp - 0x001e], byte 8
    je short 0x292a
    cmp word [bp - 0x001e], byte 9
    jne short 0x299c
    mov ax, word [0x82ee]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    push ax
    mov ax, word [bp - 0x0020]
    cwd
    idiv cx
    mov cx, dx
    pop ax
    cmp ax, cx
    jne short 0x299c
    cmp word [bp - 0x001e], byte 8
    jne short 0x2972
    mov ax, 0
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0x8d
    push ax
    mov ax, 0xb6
    push ax
    mov ax, 0x6b
    push ax
    mov ax, 0x8a
    push ax
    mov ax, 0x19
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x001c], 1
    jmp short 0x2999
    mov ax, 0
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0x5e
    push ax
    mov ax, 0xb6
    push ax
    mov ax, 0x22
    push ax
    mov ax, 0x8a
    push ax
    mov ax, 0x19
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x001c], 2
    jmp near 0x2a5c
    mov ax, word [0x82ee]
    cmp ax, word [bp - 0x0020]
    je short 0x29a7
    jmp near 0x2a5c
    mov ax, word [bp - 0x001e]
    jmp near 0x2a4c
    mov ax, 0
    push ax
    mov ax, 0x46
    push ax
    mov ax, 0x5f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0x36
    push ax
    mov ax, 0x82
    push ax
    mov ax, 0x19
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    jmp near 0x2a5c
    cmp word [0x5b6e], byte 1
    jne short 0x29fa
    mov ax, 0
    push ax
    push ax
    mov ax, 0x47
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x19
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    jmp short 0x2a19
    mov ax, 0
    push ax
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 0x3b
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x19
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    jmp short 0x2a5c
    mov ax, 0
    push ax
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x3b
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0x19
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    jmp short 0x2a5c
    hlt
    jns short 0x2a58
    jp short 0x2a5a
    jp short 0x29e6
    jp short 0x29e8
    jp short 0x29ea
    jp short 0x2aab
    jp short 0x2aad
    db 0x7a
    sub ax, strict word 4
    cmp ax, strict word 8
    jae short 0x2a5c
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7a83]
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x1a
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    cmp word [0x91b4], byte 0
    je short 0x2a7f
    mov ax, 1
    mov word [bp - 0x001a], ax
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    add ax, strict word 0x24
    adc dx, byte 0
    mov word [0x919c], dx
    mov word [0x919a], ax
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    call math_loc_0f1d
    test ax, ax
    je short 0x2ac5
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    cmp word [0x5b3e], byte 0
    jne short 0x2ac5
    call loc_676c
    cmp word [0x5b3e], byte 0
    jne short 0x2aef
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [0x919c]
    jl short 0x2ae5
    jne short 0x2ae7
    cmp ax, word [0x919a]
    ja short 0x2ae7
    jmp short 0x2aef
    mov ax, 0
    push ax
    call loc_0ea6
    pop cx
    cmp word [0x5b3e], byte 0
    je short 0x2a9a
    cmp word [bp - 0x0002], byte 0x0c
    jl short 0x2b1a
    cmp word [bp - 0x0002], byte 0x12
    jge short 0x2b1a
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xfff4
    mov word [0x8af0], ax
    cmp ax, word [0x69c8]
    jge short 0x2b17
    mov word [0x830a], 0x1f
    jmp near 0x2d89
    cmp word [bp - 0x0002], byte 0x12
    jl short 0x2b4c
    cmp word [bp - 0x0002], byte 0x18
    jge short 0x2b4c
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xffee
    mov word [0x8af0], ax
    cmp ax, word [0x69c8]
    jge short 0x2b49
    mov ax, 1
    push ax
    call api_idx_0002_8
    pop cx
    mov word [0x830a], 0x11
    mov word [0x905e], 5
    jmp near 0x2d89
    cmp word [bp - 0x0002], byte 0
    jl short 0x2b67
    cmp word [bp - 0x0002], byte 5
    jg short 0x2b67
    push word [bp - 0x0002]
    call api_idx_0010
    pop cx
    mov ax, 0x32
    push ax
    call 0xe489
    pop cx
    mov ax, word [bp - 0x0002]
    jmp near 0x2d4f
    mov ax, 0
    push ax
    call 0x17ee
    pop cx
    mov ax, 1
    push ax
    call api_idx_0002_8
    pop cx
    mov word [0x91b0], 0
    jmp near 0x2d5c
    call api_idx_0002_2
    mov ax, 1
    cmp word [bp - 0x0002], byte 1
    jne short 0x2b95
    mov ax, 3
    add ax, word [0x82ee]
    mov cx, 4
    cwd
    idiv cx
    mov word [0x82ee], dx
    mov word [0x91aa], 1
    cmp dx, word [0x8f24]
    jne short 0x2bc6
    mov word [0x91a8], 1
    mov bx, word [0x0e12]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0xb40]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x8d12], ax
    mov ax, 1
    push ax
    call api_idx_0002_8
    pop cx
    jmp near 0x2d5c
    mov ax, 3
    mov cx, word [bp - 0x0002]
    cmp cx, byte 3
    je short 0x2be7
    mov ax, 2
    cmp cx, byte 4
    jne short 0x2be7
    mov ax, 1
    push ax
    call 0x17ee
    pop cx
    mov ax, 1
    push ax
    call api_idx_0002_8
    pop cx
    jmp near 0x2d5c
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    mov ax, 2
    push ax
    call 0xeb32
    pop cx
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 0xffd0
    mov word [bp - 0x0004], ax
    mov ax, 2
    push ax
    call 0xeb32
    pop cx
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0xa
    imul word [bp - 0x0004]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 0xffd0
    mov word [bp - 0x0004], ax
    mov ax, word [bp - 0x0004]
    mov bx, word [0x100a]
    mov word [bx], ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    call math_loc_0b14
    add sp, byte 6
    ret
    cmp word [bp - 0x001c], byte 0
    jle short 0x2c5d
    mov ax, word [bp - 0x001c]
    dec ax
    push ax
    call 0x8f1a
    pop cx
    cmp word [0x830a], byte 5
    je short 0x2c5b
    ret
    jmp short 0x2c65
    mov ax, 0
    push ax
    call 0x8c47
    pop cx
    jmp near 0x2d5c
    mov ax, 1
    push ax
    call 0x8c47
    pop cx
    mov ax, 1
    push ax
    call api_idx_0002_8
    pop cx
    jmp near 0x2d5c
    call 0xceb1
    mov word [0x8af0], ax
    cmp ax, strict word 0xffff
    je short 0x2cac
    push ax
    call 0xca85
    pop cx
    test ax, ax
    je short 0x2cac
    mov ax, 1
    push ax
    call api_idx_0002_8
    pop cx
    mov ax, 0x14
    cmp word [bp - 0x0002], byte 8
    jne short 0x2ca3
    mov ax, 0x13
    mov word [0x830a], ax
    mov word [0x905e], 5
    jmp near 0x2d5c
    call 0x8e6a
    jmp near 0x2d5c
    cmp word [bp - 0x0022], byte 0
    jne short 0x2ce7
    call api_idx_0018
    cmp ax, strict word 1
    jne short 0x2ce5
    push word [0x8f3e]
    call api_idx_0002_5
    pop cx
    push ax
    call api_idx_0006
    pop cx
    mov bx, word [0x100a]
    mov word [bx], ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    call math_loc_0b14
    add sp, byte 6
    jmp short 0x2cef
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x2d5c
    mov word [0x830a], 0x18
    jmp short 0x2d5c
    cmp word [bp - 0x001a], byte 0
    je short 0x2d19
    call 0xceb1
    mov word [0x8af0], ax
    cmp ax, strict word 0xffff
    je short 0x2d19
    push ax
    call 0xca85
    pop cx
    test ax, ax
    je short 0x2d19
    mov word [0x830a], 0x1e
    jmp short 0x2d5c
    mov ah, 0x7b
    int 0x7b
    int 0x7b
    sbb byte [si + 0x18], bh
    jl short 0x2d3e
    jl short 0x2d24
    jl short 0x2cd9
    jl short 0x2cee
    jl short 0x2d66
    jge short 0x2d26
    jl short 0x2cf4
    jl short 0x2cd7
    jge short 0x2cd9
    jge short 0x2cdb
    jge short 0x2cdd
    jge short 0x2cdf
    jge short 0x2ce1
    jge short 0x2ce3
    jge short 0x2ce5
    jge short 0x2ce7
    jge short 0x2ce9
    jge short 0x2ceb
    jge short 0x2ced
    jge short 0x2d8c
    jge short 0x2cd9
    db 0x7c
    cmp ax, strict word 0x1a
    jae short 0x2d5c
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7d62]
    cmp word [bp - 0x0002], byte 0
    jl short 0x2d89
    cmp word [bp - 0x0002], byte 5
    jg short 0x2d89
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x126]
    push word [bx + 0x124]
    push word [bx + 0x122]
    push word [bx + 0x120]
    call 0xe8da
    add sp, byte 8
    cmp word [0x830a], byte 5
    jne short 0x2d93
    jmp near 0x22b5
    ret
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    push word [bp + 0x4]
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    call api_idx_0004_4
    add sp, byte 0x0a
    test ax, ax
    je short 0x2de3
    mov ax, word [0x5b6e]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    je short 0x2dcb
    db 0x8b, 0xc1 ; mov ax, cx
    jmp short 0x2de2
    mov ax, word [0x5b6e]
    cmp ax, strict word 6
    je short 0x2dda
    cmp word [0x91a6], byte 0
    je short 0x2ddf
    mov ax, 0
    jmp short 0x2de2
    mov ax, 4
    ret
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xecf6
    add sp, byte 6
    ret
    mov ax, 0
    call 0xf40b
    push word [bp + 0x6]
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    call api_idx_0004_4
    add sp, byte 0x0a
    test ax, ax
    je short 0x2e5b
    mov ax, word [0x5b6e]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    je short 0x2e43
    db 0x8b, 0xc1 ; mov ax, cx
    jmp short 0x2e5a
    mov ax, word [0x5b6e]
    cmp ax, strict word 6
    je short 0x2e52
    cmp word [0x91a6], byte 0
    je short 0x2e57
    mov ax, 0
    jmp short 0x2e5a
    mov ax, 4
    ret
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xecf6
    add sp, byte 6
    ret
loc_2e84:
    mov ax, 0
    call 0xf40b
    mov ax, 0xffff
    cmp word [0x91d0], byte 0
    je short 0x2e97
    mov ax, word [bp + 0x4]
    ret
loc_2e98:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    cmp word [0x91d0], byte 0
    je short 0x2eab
    mov ax, word [bp + 0x6]
    ret
loc_2eac:
    mov ax, 0
    call 0xf40b
    mov ax, 0xffff
    cmp word [0x91d2], byte 0
    je short 0x2ebf
    mov ax, word [bp + 0x4]
    ret
loc_2ec0:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    cmp word [0x91d2], byte 0
    je short 0x2ed3
    mov ax, word [bp + 0x6]
    ret
loc_2ed4:
    mov ax, 0
    call 0xf40b
    mov ax, word [0x82ee]
    jmp short 0x2f27
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x4]
    add word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x6]
    add word [bx], ax
    jmp short 0x2f3b
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x4]
    add word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x6]
    sub word [bx], ax
    jmp short 0x2f3b
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x4]
    sub word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x6]
    sub word [bx], ax
    jmp short 0x2f3b
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x4]
    sub word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x6]
    add word [bx], ax
    jmp short 0x2f3b
    cmp ax, strict word 0
    je short 0x2edf
    cmp ax, strict word 1
    je short 0x2ef1
    cmp ax, strict word 2
    je short 0x2f03
    cmp ax, strict word 3
    je short 0x2f15
    mov bx, word [bp + 0x6]
    push word [bx]
    mov bx, word [bp + 0x4]
    push word [bx]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    call api_idx_0004_4
    add sp, byte 0x0a
    ret
loc_2f55:
    mov ax, 0
    call 0xf40b
    mov ax, 6
    push ax
    push word [bp + 0x4]
    mov ax, word [0x0e14]
    add ax, 0x4b0
    push ax
    call 0xecf6
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov word [bx], ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    mov ax, word [0x0e14]
    add ax, 0x7b0
    push ax
    call 0xecf6
    add sp, byte 6
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    ret
    mov ax, 0xfff8
    call 0xf40b
    cmp word [bp + 0xe], byte 0
    jne short 0x2f9d
    jmp near 0x3019
    mov ax, 0
    push ax
    push word [bp + 0xe]
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    lea ax, word [bp + 0x6]
    push ax
    lea ax, word [bp + 0x4]
    push ax
    call loc_2ed4
    add sp, byte 0x0e
    test ax, ax
    je short 0x3019
    mov ax, word [0x91d4]
    jmp short 0x300c
    mov ax, 2
    ret
    cmp word [0x91a6], byte 0
    je short 0x2fd6
    mov ax, 0
    ret
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 1
    mov ax, 4
    ret
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 3
    mov ax, 0
    ret
    push cs
    sbb byte [di], 0x80
    push cs
    adc byte [bp + si], 0x80
    push cs
    xor byte [bp + si], 0x80
    cmp ax, strict word 6
    jae short 0x3019
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7fb9]
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0x8]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [0x0e14]
    add ax, 0x9b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x309b
    mov ax, word [0x91d4]
    jmp short 0x308e
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 3
    jmp short 0x309b
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 1
    jmp short 0x309b
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 2
    jmp short 0x309b
    nop
    and byte [bp + di - 0x4980], 0x80
    mov word [0x9080], ax
    and byte [bp + di + 0x3d80], 6
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7f37]
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x8b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x30b2
    jmp near 0x312a
    mov ax, word [0x91d4]
    jmp short 0x311d
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 2
    jmp short 0x312a
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e0d], 1
    jmp short 0x312a
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 3
    jmp short 0x312a
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6df4], 1
    cmp word [0x91d6], byte 4
    jge short 0x310d
    mov byte [bx - 0x6def], 1
    mov ax, 0
    ret
    aaa
    cmp si, strict word 0x1180
    xor word [bx], strict word 0x1181
    and word [si], strict word 0x3d81
    push es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7ea8]
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x930
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x318e
    mov ax, word [0x830c]
    jmp short 0x3175
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 3
    jmp short 0x318e
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6df4], 2
    cmp word [0x91d6], byte 4
    jge short 0x3173
    mov byte [bx - 0x6def], 2
    jmp short 0x318e
    cmp ax, strict word 0xa
    je short 0x3156
    cmp ax, strict word 0xe
    je short 0x3143
    cmp ax, strict word 0x13
    je short 0x3143
    cmp ax, strict word 0x19
    je short 0x3156
    cmp ax, strict word 0x1f
    je short 0x3143
    mov ax, word [0x82ee]
    jmp short 0x31f9
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short 0x320d
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short 0x320d
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x2d94
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short 0x320d
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x2e0c
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short 0x320d
    cmp ax, strict word 0
    je short 0x3193
    cmp ax, strict word 1
    je short 0x31ac
    cmp ax, strict word 2
    je short 0x31c5
    cmp ax, strict word 3
    je short 0x31df
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call loc_2f55
    add sp, byte 6
    mov ax, word [0x82ee]
    cmp ax, word [bp - 0x0008]
    je short 0x323b
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 7
    jl short 0x3233
    cmp ax, strict word 9
    jle short 0x323b
    cmp ax, strict word 0xb
    jg short 0x323b
    jmp near 0x3387
    mov ax, word [bp - 0x0006]
    jmp near 0x337a
    mov word [bp - 0x0004], 8
    jmp near 0x3387
    mov word [bp - 0x0004], 9
    jmp near 0x3387
    mov word [bp - 0x0004], 0xa
    jmp near 0x3387
    mov word [bp - 0x0004], 0xb
    jmp near 0x3387
    cmp word [0x91d6], byte 0
    jne short 0x326d
    mov word [bp - 0x0004], 0xc
    jmp near 0x3387
    cmp word [0x91d6], byte 0
    jne short 0x327c
    mov word [bp - 0x0004], 0xd
    jmp near 0x3387
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, 5
    imul word [0x91d6]
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x6ddb], al
    jmp near 0x3387
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, 0xa
    imul word [0x91d6]
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp + 0xe]
    shl dx, 1
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov word [bx - 0x6dc0], ax
    jmp near 0x3387
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, 0xa
    imul word [0x91d6]
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp + 0xe]
    shl dx, 1
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov word [bx - 0x6d8e], ax
    jmp near 0x3387
    mov word [bp - 0x0004], 0xe
    jmp near 0x3387
    mov word [bp - 0x0004], 0xf
    jmp near 0x3387
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6d5e], 1
    jmp near 0x3387
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 3
    jmp short 0x3387
    mov ax, 0xa
    imul word [0x91d6]
    mov cx, word [bp + 0xe]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x6d42], 1
    cmp word [bp - 0x0006], byte 0x0e
    je short 0x3341
    mov ax, 0xa
    imul word [0x91d6]
    mov cx, word [bp + 0xe]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x6d10], 1
    jmp short 0x3387
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6d5e], 2
    jmp short 0x3387
    into
    or word [bx + si - 0x6f7e], byte 0x82
    cbw
    db 0x82, 0xa0, 0x82, 0xa8, 0x82 ; and byte ptr [bx + si - 0x577e], 0x82
    mov bh, 0x82
    mov byte [bp + si - 0x7d1f], 0
    sbb word [bx], byte 0x83
    daa
    sub word [bx], byte 0x83
    inc bx
    adc word [bp - 0x007d], byte 0x6c
    or word [bp + si + 0x5683], byte 0x83
    cmp ax, strict word 0x12
    jae short 0x3387
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7c63]
    mov ax, word [0x830c]
    cmp ax, word [0x8f28]
    jne short 0x33bc
    mov ax, word [bp + 0xc]
    cmp ax, word [0x8f2a]
    jne short 0x33bc
    mov ax, word [bp + 0x8]
    cmp ax, word [0x8f2e]
    jne short 0x33bc
    mov ax, word [bp + 0xa]
    cmp ax, word [0x8f2c]
    jne short 0x33bc
    mov ax, 5
    imul word [0x91d6]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6d5e], 3
    mov ax, word [bp - 0x0004]
    ret
    mov ax, 0xfff8
    call 0xf40b
    cmp word [bp + 0x10], byte 0
    je short 0x3426
    mov ax, 0
    push ax
    push word [bp + 0x10]
    lea ax, word [bp + 0xe]
    push ax
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    lea ax, word [bp + 0x6]
    push ax
    call loc_2ed4
    add sp, byte 0x0e
    test ax, ax
    je short 0x3426
    mov ax, word [0x91d4]
    jmp short 0x3419
    mov ax, 2
    ret
    cmp word [0x91a6], byte 0
    je short 0x3405
    mov ax, 0
    ret
    mov ax, 4
    ret
    mov ax, 0
    ret
    cmp ax, 0x4c84
    test byte [di], bh
    test byte [bx + di - 0x007c], al
    cmp ax, 0x5084
    test byte [di], bh
    push es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7bac]
    mov ax, word [bp + 0xe]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xc]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [0x0e14]
    add ax, 0x8b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x3464
    mov ax, word [0x91d4]
    jmp short 0x345a
    mov ax, 0
    ret
    cmp ax, strict word 0
    je short 0x3456
    cmp ax, strict word 3
    je short 0x3456
    mov ax, word [0x82ee]
    add ax, word [bp + 0x4]
    mov cx, 4
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    jmp short 0x34da
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0x2e0c
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short 0x34ee
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short 0x34ee
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short 0x34ee
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0x2d94
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short 0x34ee
    cmp ax, strict word 0
    je short 0x3474
    cmp ax, strict word 1
    je short 0x348e
    cmp ax, strict word 2
    je short 0x34a7
    cmp ax, strict word 3
    je short 0x34c0
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call loc_2f55
    add sp, byte 6
    mov ax, word [bp - 0x0008]
    add ax, word [bp + 0x4]
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    cmp dx, word [0x82ee]
    je short 0x3518
    jmp near 0x3588
    mov ax, word [bp - 0x0006]
    jmp short 0x357b
    mov word [bp - 0x0004], 8
    jmp short 0x3588
    mov word [bp - 0x0004], 9
    jmp short 0x3588
    mov word [bp - 0x0004], 0xa
    jmp short 0x3588
    mov word [bp - 0x0004], 0xb
    jmp short 0x3588
    cmp word [0x91d6], byte 0
    jne short 0x3545
    mov word [bp - 0x0004], 0xc
    jmp short 0x3588
    cmp word [0x91d6], byte 0
    jne short 0x3553
    mov word [bp - 0x0004], 0xd
    jmp short 0x3588
    mov word [bp - 0x0004], 0xe
    jmp short 0x3588
    mov word [bp - 0x0004], 0xf
    jmp short 0x3588
    iret
    test word [si - 0x007b], sp
    db 0x6b, 0x85, 0x72, 0x85, 0x79 ; imul ax, word ptr [di - 0x7a8e], 0x79
    test word [bx + si - 0x717b], ax
    test di, cx
    test di, cx
    test di, cx
    test word [si - 0x5c7b], bx
    test word [di], di
    or al, 0
    jae short 0x3588
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7a56]
    mov ax, word [bp - 0x0004]
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call 0xf40b
    mov al, byte [bp + 0x4]
    push ax
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6cd4], al
    mov al, byte [bp + 0x18]
    mov byte [bx - 0x6cd2], al
    cmp word [bp + 0x4], strict word 0xfa
    jl short 0x35b5
    jmp near 0x3788
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    mov word [bp - 0x0002], ax
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x6a9b]
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp word [bp + 0x18], byte 0
    jg short 0x35ed
    jmp near 0x3767
    cmp word [bp + 0x1e], byte 0
    jg short 0x35f6
    jmp near 0x3767
    mov ax, 0x64
    sub ax, word [bp + 0x18]
    mov cx, 0x64
    cwd
    idiv cx
    mov ax, dx
    push ax
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6cd2], al
    cmp word [bp + 0x1e], byte 1
    je short 0x361c
    jmp near 0x36a7
    mov ax, word [0x03ae]
    sub ax, word [bp - 0x0002]
    imul word [bp + 0x18]
    add ax, strict word 0xffce
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 0x6]
    sub ax, cx
    mov word [bx - 0x6ce0], ax
    cmp word [bp + 0x1a], byte 0
    je short 0x367c
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    push ax
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    mov al, byte [bx - 0x6cd2]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bx - 0x6ce0], ax
    mov ax, word [0x03dc]
    sub ax, word [bp - 0x0004]
    imul word [bp + 0x18]
    add ax, strict word 0xffce
    mov cx, 0x64
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 0x8]
    sub ax, cx
    push ax
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    pop ax
    mov word [bx - 0x6cde], ax
    jmp near 0x3765
    cmp word [bp + 0x1e], byte 2
    je short 0x36b0
    jmp near 0x3746
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    mov al, byte [bx - 0x6cd2]
    sub ah, ah
    mov cx, 0xa0
    sub cx, word [bp - 0x0002]
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, word [bp + 0x6]
    mov word [bx - 0x6ce0], ax
    cmp word [bp + 0x1a], byte 0
    je short 0x371d
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    push ax
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    mov al, byte [bx - 0x6cd2]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bx - 0x6ce0], ax
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    mov al, byte [bx - 0x6cd2]
    sub ah, ah
    mov cx, 0x42
    sub cx, word [bp - 0x0004]
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    add ax, word [bp - 0x0004]
    add ax, word [bp + 0x8]
    mov word [bx - 0x6cde], ax
    jmp short 0x3765
    cmp word [bp + 0x1e], byte 3
    jne short 0x3765
    mov ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    pop ax
    mov word [bx - 0x6ce0], ax
    mov ax, word [bp + 0x8]
    mov word [bx - 0x6cde], ax
    jmp short 0x3786
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    pop ax
    mov word [bx - 0x6ce0], ax
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0x8]
    mov word [bx - 0x6cde], ax
    jmp short 0x37a1
    mov ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    pop ax
    mov word [bx - 0x6ce0], ax
    mov ax, word [bp + 0x8]
    mov word [bx - 0x6cde], ax
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 0x11
    imul word [0x931e]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6cd8], al
    mov al, byte [bp + 0xc]
    mov byte [bx - 0x6cd7], al
    mov al, byte [bp + 0xe]
    mov byte [bx - 0x6cd6], al
    mov al, byte [bp + 0x10]
    mov byte [bx - 0x6cd5], al
    mov ax, word [bp + 0x12]
    mov word [bx - 0x6cdc], ax
    mov ax, word [bp + 0x14]
    mov word [bx - 0x6cda], ax
    mov al, byte [bp + 0x16]
    mov byte [bx - 0x6cd3], al
    mov al, byte [bp + 0x1a]
    mov byte [bx - 0x6cd1], al
    mov al, byte [bp + 0x1c]
    mov byte [bx - 0x6cd0], al
    inc word [0x931e]
    mov ax, word [0x931e]
    cmp ax, strict word 0x78
    jl short 0x3801
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x37f7
    ret
    mov ax, 0xfff0
    call 0xf40b
    mov ax, 4
    cmp word [0x91d4], byte 0
    jne short 0x3815
    mov ax, 3
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0xffff
    mov word [bp - 0x0004], 0xffff
    cmp word [0x91d4], byte 0
    jg short 0x382c
    jmp near 0x38a4
    cmp word [bp + 0x4], byte 3
    je short 0x3835
    jmp near 0x38a4
    mov ax, word [0x91d4]
    cmp ax, strict word 3
    jl short 0x3842
    cmp ax, strict word 5
    jne short 0x3847
    mov ax, 0x15
    jmp short 0x384a
    mov ax, 0x14
    mov word [bp - 0x000c], ax
    cmp word [0x91d4], byte 3
    jl short 0x385b
    cmp word [0x91d4], byte 5
    jne short 0x3860
    mov ax, 0x16
    jmp short 0x3863
    mov ax, 0x15
    mov word [bp - 0x000e], ax
    cmp word [bp + 0x8], byte 0
    jne short 0x3885
    push ax
    push word [bp - 0x000c]
    call loc_2e98
    add sp, byte 4
    mov word [bp - 0x0002], ax
    push word [bp - 0x000c]
    call loc_2e84
    pop cx
    mov word [bp - 0x0004], ax
    jmp short 0x38a4
    cmp word [bp + 0x8], byte 4
    jne short 0x38a4
    push word [bp - 0x000c]
    push word [bp - 0x000e]
    call loc_2e98
    add sp, byte 4
    mov word [bp - 0x0002], ax
    push word [bp - 0x000e]
    call loc_2e84
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x6]
    jmp near 0x3aa6
    cmp word [bp - 0x0002], byte 0xff
    je short 0x38e4
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x10]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    push word [bp - 0x0004]
    mov ax, 0
    push ax
    push ax
    push ax
    cmp word [bp + 0x4], byte 1
    jne short 0x38d2
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x3ab3
    cmp word [bp - 0x0002], byte 0xff
    je short 0x391b
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x14]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    push word [bp - 0x0004]
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x3ab3
    cmp word [0x91d4], byte 0
    jne short 0x397e
    cmp word [bp + 0x4], byte 3
    jge short 0x397b
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov cx, word [bp + 0x4]
    cmp cx, byte 1
    jne short 0x3958
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    add cx, word [bp + 0x18]
    db 0x8b, 0xc1 ; mov ax, cx
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x3a2f
    cmp word [0x91d4], byte 3
    jl short 0x398c
    cmp word [0x91d4], byte 5
    jne short 0x39db
    cmp word [bp + 0x4], byte 4
    jge short 0x39d9
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x10]
    push word [bp + 0x4]
    push word [bp - 0x0004]
    mov ax, word [bp + 0x32]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x0002]
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x32]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x3a2f
    cmp word [0x91d4], byte 5
    jge short 0x3a2f
    cmp word [bp + 0x4], byte 4
    jge short 0x3a2f
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x14]
    push word [bp + 0x4]
    push word [bp - 0x0004]
    mov ax, word [bp + 0x46]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x0002]
    mov ax, word [bp + 0x48]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x46]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x3ab3
    mov ax, word [0x91d4]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    cmp ax, strict word 1
    jne short 0x3a84
    cmp word [bp + 0x4], byte 4
    jge short 0x3a84
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push cx
    mov ax, 0xffff
    push ax
    cmp word [0x9b18], byte 0
    je short 0x3a73
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 0x4]
    jmp short 0x3a79
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 0xfc
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x3ab3
    cli
    db 0x8a, 0xf1 ; mov dh, cl
    mov byte [di - 0x0077], ah
    int1
    mov byte [bx + di - 0x0076], bh
    cs mov cx, si
    mov cl, dh
    mov dl, bh
    db 0x8a, 0xfa ; mov bh, dl
    mov ah, byte [di - 0x0077]
    mov word [gs:di - 0x0077], sp
    mov word [gs:di - 0x0077], sp
    mov word [gs:di], di
    adc byte [bx + si], al
    jae short 0x3ab3
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7533]
    mov word [bp - 0x0002], 0xffff
    mov word [bp - 0x0004], 0xffff
    mov ax, word [bp + 0x4]
    cmp ax, word [bp - 0x000a]
    jl short 0x3ac8
    jmp near 0x3f55
    mov word [bp - 0x0010], 0xffff
    mov ax, word [bp + 0x6]
    jmp near 0x3ef8
    mov ax, word [bp + 0x2e]
    cmp word [bp + 0x6], byte 8
    jne short 0x3adf
    mov ax, word [bp + 0x2a]
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x30]
    cmp word [bp + 0x6], byte 8
    jne short 0x3aee
    mov ax, word [bp + 0x2c]
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp + 0x4]
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0xffff
    cmp word [bp + 0x6], byte 7
    jne short 0x3b2d
    mov ax, word [bp + 0x44]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [0x91d4], byte 0
    jne short 0x3b7d
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    push word [bp - 0x0004]
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x0002]
    mov ax, word [bp + 0x20]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x3bcb
    cmp word [0x91d4], byte 2
    jne short 0x3bcb
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xe]
    push word [bp + 0x4]
    push word [bp - 0x0004]
    mov ax, word [bp + 0x36]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x0002]
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x36]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    cmp word [bp + 0x6], byte 3
    je short 0x3bd4
    jmp near 0x3cb6
    cmp word [0x831a], byte 0
    je short 0x3c2a
    cmp word [bp + 0x4], byte 0
    jne short 0x3c2a
    cmp word [bp + 0x8], byte 2
    jne short 0x3c2a
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [0x831a]
    add ax, strict word 0xc
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x8]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x36e]
    mov ax, 5
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x3cb4
    mov ax, 0
    push ax
    push ax
    push word [0x91d0]
    push ax
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    add ax, word [0x91d0]
    add ax, strict word 5
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x8]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x36e]
    mov ax, 5
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    mov ax, 0
    push ax
    push ax
    push word [0x91d0]
    push ax
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x8]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x36e]
    mov ax, 5
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x3cfd
    cmp word [bp + 0x6], byte 6
    jne short 0x3cfd
    mov ax, 0
    push ax
    push ax
    push word [0x91d0]
    push ax
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x8]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x36e]
    mov ax, 5
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    cmp word [0x91d4], byte 0
    jne short 0x3d68
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    mov ax, word [bp + 0x26]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    mov ax, word [bp + 0x28]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x26]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x3dd1
    cmp word [0x91d4], byte 2
    jne short 0x3dd1
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xe]
    push word [bp + 0x4]
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    cmp word [bp + 0x6], byte 8
    je short 0x3ddd
    cmp word [bp + 0x6], byte 9
    jne short 0x3e0d
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x3f05
    cmp word [bp + 0x4], byte 4
    jge short 0x3e5f
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x12]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x4a]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x4c]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x4a]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x3f05
    mov word [bp - 0x0010], 9
    mov word [bp - 0x000c], 1
    mov ax, word [0x82e8]
    inc ax
    inc ax
    mov word [bp - 0x000e], ax
    jmp near 0x3f05
    mov word [bp - 0x0010], 9
    mov word [bp - 0x000c], 7
    db 0xb8
    db 0x00
leaf_loc_3e83:
    add byte [bp + di - 0x17c2], al
    add byte [bx + si], 0x74
    db 0x03, 0xb8, 0x08, 0x00 ; add di, word ptr [bx + si + 8]
    mov word [bp - 0x000e], ax
    jmp short 0x3f05

    db 0xc7, 0x46, 0xf0, 0x0a, 0x00, 0xb8, 0x05, 0x00, 0x83, 0x3e, 0xd4, 0x91, 0x00, 0x75, 0x03, 0xb8
    db 0x01, 0x00, 0xb9, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x0d, 0x75, 0x03, 0xb9, 0x01, 0x00, 0x03, 0xc1
    db 0x89, 0x46, 0xf4, 0xc7, 0x46, 0xf2, 0x00, 0x00, 0xeb, 0x48, 0xc7, 0x46, 0xf0, 0x0a, 0x00, 0xc7
    db 0x46, 0xf4, 0x09, 0x00, 0xb8, 0x0b, 0x00, 0x83, 0x7e, 0x06, 0x0e, 0x75, 0x03, 0xb8, 0x0a, 0x00
    db 0x89, 0x46, 0xf2, 0xeb, 0x2d, 0x4c, 0x8f, 0x74, 0x8b, 0x4c, 0x8f, 0x74, 0x8b, 0x4c, 0x8f, 0x57
    db 0x8e, 0x74, 0x8b, 0x49, 0x8b, 0x1a, 0x8b, 0x1a, 0x8b, 0xa9, 0x8e, 0xbe, 0x8e, 0xda, 0x8e, 0xda
    db 0x8e, 0x04, 0x8f, 0x04, 0x8f, 0x3d, 0x10, 0x00, 0x73, 0x08, 0x93, 0xd1, 0xe3, 0x2e, 0xff, 0xa7
    db 0x1f, 0x8f

    cmp word [bp - 0x0010], byte 0xff
    je short 0x3f55
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [0x91d0]
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x36e]
    push word [bp - 0x0010]
    call api_idx_0004_3
    add sp, byte 0x1c
    ret
    mov ax, 0xffee
    call 0xf40b
    mov word [bp - 0x0004], 0xffff
    mov word [bp - 0x0006], 0xffff
    mov ax, word [bp + 0x6]
    jmp near 0x4424
    cmp word [bp + 0x26], byte 0xff
    jne short 0x3f75
    jmp near 0x3ff9
    cmp word [bp + 0x4], byte 0
    je short 0x3f7e
    jmp near 0x3ff9
    cmp word [bp + 0x6], byte 8
    jne short 0x3f8a
    mov ax, word [bp + 0x26]
    inc ax
    jmp short 0x3f90
    mov ax, word [bp + 0x26]
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    mov ax, 0xffff
    cmp word [bp + 0x8], byte 2
    jge short 0x3fb2
    mov ax, word [bp - 0x0002]
    inc ax
    push ax
    mov ax, 0xffff
    cmp word [bp + 0x8], byte 2
    jge short 0x3fbf
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    cmp word [bp + 0x6], byte 8
    jne short 0x3fd6
    cmp word [bp + 0x8], byte 2
    jg short 0x3fe2
    cmp word [bp + 0x6], byte 9
    jne short 0x3fe8
    cmp word [bp + 0x8], byte 2
    jge short 0x3fe8
    mov ax, word [bp - 0x0002]
    inc ax
    jmp short 0x3feb
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    mov ax, 0xfd
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    cmp word [bp + 0x6], byte 3
    je short 0x4002
    jmp near 0x4085
    cmp word [bp + 0x4], byte 4
    jl short 0x400b
    jmp near 0x4085
    cmp word [bp + 0x34], byte 0xff
    je short 0x4060
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x36]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    mov ax, word [bp + 0x32]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    mov word [bp - 0x0006], ax
    cmp word [bp + 0x6], byte 6
    jne short 0x40b6
    cmp word [bp + 0x4], byte 4
    jge short 0x40b6
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    mov word [bp - 0x0006], ax
    cmp word [0x91d4], byte 0
    jne short 0x4112
    cmp word [bp + 0x4], byte 4
    jge short 0x4110
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    push word [bp - 0x0006]
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x0004]
    mov ax, word [bp + 0x20]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x416c
    cmp word [0x91d4], byte 2
    jne short 0x416c
    cmp word [bp + 0x4], byte 5
    jge short 0x416c
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 0x4]
    push word [bp - 0x0006]
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x0004]
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    cmp word [bp + 0x26], byte 0xff
    je short 0x41bf
    cmp word [bp + 0x4], byte 0
    jne short 0x41bf
    cmp word [bp + 0x6], byte 8
    je short 0x4184
    cmp word [bp + 0x6], byte 9
    jne short 0x41bf
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    cmp word [bp + 0x8], byte 2
    jge short 0x41a3
    mov ax, word [bp + 0x26]
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp + 0x26]
    mov ax, 0xfd
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x4431
    cmp word [bp + 0x4], byte 4
    jge short 0x41ed
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    mov word [bp - 0x0006], ax
    cmp word [0x91d4], byte 0
    jne short 0x424a
    cmp word [bp + 0x4], byte 4
    jge short 0x4247
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    push word [bp - 0x0006]
    mov ax, word [bp + 0x16]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x0004]
    mov ax, word [bp + 0x18]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x4352
    cmp word [0x91d4], byte 3
    jl short 0x425b
    cmp word [0x91d4], byte 5
    je short 0x425b
    jmp near 0x42f6
    cmp word [bp + 0x4], byte 5
    jl short 0x4264
    jmp near 0x42f4
    cmp word [0x91d4], byte 2
    jne short 0x42a5
    cmp word [bp - 0x0004], byte 0xff
    je short 0x42a5
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    push word [bp - 0x0006]
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0004]
    mov ax, 0xfd
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x10]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x28]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x28]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x4352
    cmp word [0x91d4], byte 5
    jge short 0x4352
    cmp word [bp + 0x4], byte 4
    jge short 0x4352
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x14]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x4431
    cmp word [bp + 0x4], byte 4
    jge short 0x43aa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xfb
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x4431
    cmp word [bp + 0x4], byte 4
    jge short 0x4402
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x12]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x4431
    js short 0x439a
    std
    nop
    xor al, 0x92
    inc ax
    nop
    pushf
    xchg bx, ax
    hlt
    xchg bx, ax
    inc ax
    nop
    or word [bp + si - 0x704d], dx
    mov bl, 0x8f
    xor al, 0x92
    xor al, 0x92
    xor al, 0x92
    xor al, 0x92
    xor al, 0x92
    xor al, 0x92
    cmp ax, strict word 0x10
    jae short 0x4431
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6bb5]
    cmp word [bp + 0x4], byte 4
    jl short 0x443a
    jmp near 0x4664
    cmp word [bp + 0x8], byte 1
    je short 0x4446
    cmp word [bp + 0x8], byte 3
    jne short 0x444b
    mov ax, 0
    jmp short 0x444e
    mov ax, 1
    mov word [bp - 0x0012], ax
    mov ax, 0
    cmp word [bp + 0x8], byte 2
    jle short 0x445d
    mov ax, 1
    mov word [bp - 0x0006], ax
    mov word [bp - 0x000c], 0xffff
    mov ax, word [bp + 0x6]
    jmp near 0x4613
    mov word [bp - 0x000c], 9
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x3e6]
    mov word [bp - 0x000e], ax
    mov ax, word [bx + 0x3e8]
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0008], 4
    mov ax, word [0x82e8]
    add ax, strict word 5
    mov word [bp - 0x000a], ax
    jmp near 0x4623
    mov word [bp - 0x000c], 9
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x436]
    mov word [bp - 0x000e], ax
    mov ax, word [bx + 0x438]
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0008], 9
    mov ax, 0
    cmp word [0x82e8], byte 0
    je short 0x44f0
    mov ax, 0xa
    mov word [bp - 0x000a], ax
    jmp near 0x4623
    mov word [bp - 0x000c], 0xa
    cmp word [0x91d4], byte 0
    jne short 0x4526
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x486]
    jmp short 0x4548
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x4d6]
    mov word [bp - 0x000e], ax
    cmp word [0x91d4], byte 0
    jne short 0x4576
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x488]
    jmp short 0x4598
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x4d8]
    mov word [bp - 0x0010], ax
    mov ax, 7
    cmp word [0x91d4], byte 0
    jne short 0x45a8
    mov ax, 3
    mov cx, 0
    cmp word [bp + 0x6], byte 0x0d
    jne short 0x45b4
    mov cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 0
    jmp short 0x4623
    mov word [bp - 0x000c], 0xa
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x526]
    mov word [bp - 0x000e], ax
    mov ax, word [bx + 0x528]
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0008], 0xc
    mov ax, 0xe
    cmp word [bp + 0x6], byte 0x0e
    jne short 0x4602
    mov ax, 0xd
    mov word [bp - 0x000a], ax
    jmp short 0x4623
    mov dl, 0x94
    hlt
    xchg sp, ax
    cmp ax, 0x3d95
    xchg bp, ax
    pop es
    xchg si, ax
    pop es
    xchg si, ax
    sub ax, strict word 0xa
    cmp ax, strict word 6
    jae short 0x4623
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x69b2]
    cmp word [bp - 0x000c], byte 0xff
    je short 0x4664
    mov ax, 3
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    call api_idx_0004_3
    add sp, byte 0x1c
    ret
    mov ax, 0xffee
    call 0xf40b
    cmp word [bp + 0x4], byte 4
    jge short 0x4682
    cmp word [bp + 0x6], byte 0
    jle short 0x4682
    cmp word [bp + 0x6], byte 4
    jge short 0x4682
    mov ax, 1
    jmp short 0x4685
    db 0xb8
math_loc_4683:
    add byte [bx + si], al
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0012], byte 0
    jne short 0x4691
    jmp near 0x483c
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6d92], byte 0
    jne short 0x46b1
    cmp word [bx - 0x6d14], byte 0
    jne short 0x46b1
    jmp near 0x483c
    cmp word [bp + 0x6], byte 2
    jne short 0x4703
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x20]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x20]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x4754
    cmp word [bp + 0x4], byte 0
    jle short 0x4754
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    cmp word [bp + 0x6], byte 3
    jne short 0x4726
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    cmp word [bp + 0x6], byte 3
    jne short 0x4743
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 0x4]
    jmp short 0x4749
    mov ax, word [bp + 0x28]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6d92], byte 0
    jne short 0x476d
    jmp near 0x483c
    mov cx, word [bx - 0x6d92]
    dec cx
    mov ax, word [0x82ee]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], 0
    mov ax, dx
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short 0x479c
    cmp word [bp + 0x4], byte 0
    jg short 0x47a2
    cmp word [bp + 0x6], byte 2
    jne short 0x47ce
    test ax, ax
    je short 0x47ab
    mov ax, 3
    jmp short 0x47ae
    mov ax, 0
    mov cx, word [bp + 0x4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [0x91d0]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x260]
    mov word [bp - 0x0008], ax
    jmp short 0x47f1
    cmp word [bp + 0x4], byte 0
    jle short 0x47f1
    mov ax, word [bp + 0x4]
    add ax, strict word 0x20
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 3
    jne short 0x47e9
    mov ax, 1
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
    cmp word [bp - 0x0004], byte 0
    je short 0x483c
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0006]
    push ax
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    push word [bp + 0x6]
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short 0x4820
    cmp dx, byte 1
    jne short 0x4820
    mov ax, 1
    jmp short 0x4823
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    mov ax, 4
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x6e0f]
    sub ah, ah
    jmp near 0x4a9a
    cmp word [0x91d4], byte 2
    je short 0x485a
    jmp near 0x4a00
    cmp word [bp + 0x4], byte 5
    jl short 0x4863
    jmp near 0x49fd
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x18]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x18]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    mov word [bp - 0x000e], 0xffff
    mov word [bp - 0x000a], 0xffff
    mov word [bp - 0x0010], 0xffff
    mov word [bp - 0x000c], 0xffff
    cmp word [bp + 0x40], byte 0xff
    je short 0x48eb
    mov ax, word [bp + 0x42]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    mov word [bp - 0x000e], ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    mov word [bp - 0x0010], ax
    cmp word [bp + 0x4], byte 0
    jle short 0x4919
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call loc_2e98
    add sp, byte 4
    mov word [bp - 0x000a], ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call loc_2e84
    pop cx
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000a], byte 0xff
    jne short 0x4928
    cmp word [bp - 0x000e], byte 0xff
    jne short 0x4928
    jmp near 0x49fd
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    push word [bp - 0x000c]
    push word [bp - 0x0010]
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000e]
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    cmp word [bp - 0x000a], byte 0xff
    jne short 0x495a
    jmp near 0x49fd
    cmp word [0x91d4], byte 0
    jne short 0x4964
    jmp near 0x49fd
    mov ax, word [bp + 0x4]
    cmp ax, strict word 4
    je short 0x496f
    jmp near 0x49fd
    cmp word [bp + 0x6], byte 0
    jne short 0x49b7
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, 0xc2
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xc3
    push ax
    mov ax, 0xc2
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x49fd
    cmp word [bp + 0x6], byte 4
    jne short 0x49fd
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, 0xc3
    push ax
    call loc_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0xc3
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp near 0x4a98
    cmp word [0x91d4], byte 4
    je short 0x4a0a
    jmp near 0x4a98
    cmp word [bp + 0x4], byte 4
    jl short 0x4a13
    jmp near 0x4a98
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    push word [bp + 0x10]
    call 0xf01f
    add sp, byte 8
    mov ax, word [bp + 0x4]
    cmp ax, strict word 2
    jge short 0x4a98
    cmp word [bp + 0x6], byte 2
    jne short 0x4a98
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x10]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x19
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x19
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0xfe
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x4aa2
    cmp ax, strict word 1
    jne short 0x4aa2
    jmp near 0x4850
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x6e28]
    sub ah, ah
    jmp near 0x4b75
    cmp word [bp + 0x4], byte 5
    jge short 0x4aea
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    push word [bp + 0xa]
    call 0xf01f
    add sp, byte 8
    jmp near 0x4b82
    cmp word [bp + 0x4], byte 5
    jge short 0x4b21
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x32]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    push word [bp + 0x16]
    call 0xf01f
    add sp, byte 8
    jmp short 0x4b82
    cmp word [bp + 0x4], byte 5
    jge short 0x4b65
    mov ax, word [0x91d2]
    add ax, word [0x82e8]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    je short 0x4b44
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    jmp short 0x4b47
    mov ax, 0xffff
    push ax
    push cx
    test dx, dx
    je short 0x4b55
    mov ax, word [bp + 0x36]
    add ax, word [bp + 0x4]
    jmp short 0x4b5b
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    push ax
    push word [bp + 0x14]
    call 0xf01f
    add sp, byte 8
    jmp short 0x4b82
    jmp short 0x4b82
    jmp short 0x4b82
    mov al, 0x9b
    std
    call far 0x9b6a:0x9b34
    scasb
    wait
    cmp ax, strict word 5
    jae short 0x4b82
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x644e]
    cmp word [bp - 0x0012], byte 0
    jne short 0x4b8b
    jmp near 0x4cdb
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x6dc4], byte 0
    jne short 0x4bab
    cmp word [bx - 0x6d46], byte 0
    jne short 0x4bab
    jmp near 0x4cdb
    cmp word [bp + 0x6], byte 2
    jne short 0x4be2
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x26]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 3
    push ax
    call 0xf01f
    add sp, byte 8
    jmp short 0x4c1b
    cmp word [bp + 0x4], byte 0
    jle short 0x4c1b
    mov ax, 0xffff
    cmp word [bp + 0x6], byte 3
    jne short 0x4bf7
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 2
    push ax
    cmp word [bp + 0x6], byte 3
    jne short 0x4c0a
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
    jmp short 0x4c10
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 3
    push ax
    call 0xf01f
    add sp, byte 8
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x6dc4], byte 0
    jne short 0x4c34
    jmp near 0x4cdb
    mov cx, word [bx - 0x6dc4]
    dec cx
    mov ax, word [0x82ee]
    db 0x2b, 0xc1 ; sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], 0
    db 0x8b, 0xc2 ; mov ax, dx
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    jne short 0x4c63
    cmp word [bp + 0x4], byte 0
    jg short 0x4c69
    cmp word [bp + 0x6], byte 2
    jne short 0x4c87
    mov cx, word [bp + 0x4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [0x91d0]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x260]
    mov word [bp - 0x0008], ax
    jmp short 0x4caa
    cmp word [bp + 0x4], byte 0
    jle short 0x4caa
    mov ax, word [bp + 0x4]
    add ax, strict word 0x20
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 3
    jne short 0x4ca2
    mov ax, 1
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
    cmp word [bp - 0x0004], byte 0
    je short 0x4cdb
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0006]
    push ax
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp - 0x0004]
    push ax
    push word [bp - 0x0008]
    mov ax, 4
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    cmp word [bp + 0x4], byte 4
    jl short 0x4ce4
    jmp near 0x4f52
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x6d60], 3
    je short 0x4cf9
    jmp near 0x4d96
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short 0x4d0c
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short 0x4d0c
    jmp near 0x4d96
    cmp word [bp + 0x4], byte 0
    jne short 0x4d27
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short 0x4d27
    cmp word [0x8f22], byte 0
    je short 0x4d27
    mov word [0x8f20], 0xffff
    cmp word [bp + 0x4], byte 0
    jne short 0x4d3a
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short 0x4d3a
    mov ax, 2
    jmp short 0x4d3d
    mov ax, 1
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x4]
    cmp word [bp - 0x0004], byte 2
    je short 0x4d4a
    dec ax
    mov word [bp - 0x0008], ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp - 0x0004]
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 0xc
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x6d60], 1
    je short 0x4daf
    cmp byte [bx - 0x6d60], 2
    jne short 0x4e1e
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short 0x4dbf
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short 0x4e1e
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x6d60]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 0xb
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x6ddd], 0
    jne short 0x4e33
    jmp near 0x4f52
    cmp word [bp + 0x4], byte 0
    jne short 0x4e54
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short 0x4e54
    cmp word [0x8f22], byte 0
    je short 0x4e54
    mov al, byte [bx - 0x6ddd]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x8f20], ax
    jmp near 0x4f52
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short 0x4e67
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short 0x4e67
    jmp near 0x4f52
    mov al, byte [bx - 0x6ddd]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    dec ax
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [0x82ee]
    db 0x2b, 0xc1 ; sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    db 0x8b, 0xc2 ; mov ax, dx
    jmp near 0x4f38
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short 0x4eb7
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 3
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x4f52
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short 0x4ef4
    mov ax, 1
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 3
    push ax
    call api_idx_0004_3
    add sp, byte 0x1c
    jmp short 0x4f52
    cmp ax, strict word 0
    jne short 0x4f40
    jmp near 0x4e88
    cmp ax, strict word 1
    je short 0x4ee3
    cmp ax, strict word 2
    jne short 0x4f4d
    jmp near 0x4e88
    cmp ax, strict word 3
    je short 0x4ee3
    ret
    mov ax, 0xffea
    call 0xf40b
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xb]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x000c], ax
    cmp byte [bx + 0xa], 0
    je short 0x4f6d
    jmp near 0x5060
    mov al, byte [bx + 0x8]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0002], ax
    jmp near 0x504a
    mov word [bp - 0x000a], 0
    mov al, byte [bp - 0x0002]
    mov byte [bp - 0x0016], al
    mov byte [bp - 0x0015], 0
    mov word [bp - 0x0006], 0
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    inc ax
    cmp ax, word [bp - 0x0002]
    jne short 0x4f9f
    mov ax, 3
    jmp short 0x4fa2
    mov ax, 1
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0004], ax
    jmp near 0x503c
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xf]
    sub ah, ah
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x7013]
    sub ah, ah
    add ax, word [bp - 0x000a]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    mov cx, 0xa
    imul cx
    mov cx, word [bp - 0x000c]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x260]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xf]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6fca]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xc]
    sub ah, ah
    push ax
    call 0xefd1
    add sp, byte 0x16
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x29c]
    add word [bp - 0x000a], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jge short 0x5047
    jmp near 0x4fae
    inc word [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
leaf_loc_5050:
    sub ah, ah
    inc ax
    inc ax
    inc ax
    cmp ax, word [bp - 0x0002]
    jle short 0x505d
    jmp near 0x4f78
    jmp near 0x50f3

    db 0xc7, 0x46, 0xf6, 0x00, 0x00, 0x8b, 0x5e, 0x04, 0x8a, 0x47, 0x08, 0x88, 0x46, 0xea, 0xc6, 0x46
    db 0xeb, 0x00, 0xc7, 0x46, 0xfc, 0x00, 0x00

    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xf]
    sub ah, ah
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x292]
    add ax, word [bp - 0x000a]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    shl ax, 1
    push ax
    mov al, byte [bx + 0xf]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6fca]
    sub ah, ah
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xc]
    sub ah, ah
    push ax
    call 0xefd1
    add sp, byte 0x16
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x29c]
    add word [bp - 0x000a], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short 0x5077
    ret
api_idx_0024:
    mov ax, 0xffdc
    call 0xf40b
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call 0xf99f
    add ax, strict word 1
    adc dx, byte 0
    mov word [bp - 0x0004], ax
    add ax, strict word 0x12
    mov cx, 0x18
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call 0xf9cd
    mov cx, 0x3c
    mov bx, 0
    call 0xf99f
    cmp dx, byte 0
    jg short 0x5144
    jne short 0x5146
    cmp ax, strict word 0xc
    jb short 0x5146
    jmp short 0x515e
    cmp word [bp - 0x0006], byte 0x0c
    jle short 0x515e
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x12
    mov cx, 0x18
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov ax, 0x3c
    imul word [bp - 0x0006]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    sub ax, cx
    sbb dx, bx
    mov cx, 0x5a0
    mov bx, 0
    call 0xf9cd
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jl short 0x518a
    cmp ax, 0x1e0
    jl short 0x518b
    ret
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0016], 0xff01
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x5199
    cmp word [bp - 0x000a], byte 0x3e
    jge short 0x51c1
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x72
    mov word [bp - 0x0014], ax
    cmp word [bp - 0x000a], byte 0x10
    jl short 0x51d7
    cmp word [bp - 0x000a], strict word 0xd0
    jg short 0x51d7
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xffe0
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x000a], strict word 0xa2
    jl short 0x51ee
    cmp word [bp - 0x000a], strict word 0xf0
    jg short 0x51ee
    mov ax, word [bp - 0x000a]
    add ax, 0xff4e
    mov word [bp - 0x0010], ax
    mov ax, word [0x82ee]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0016], strict word 0xff01
    jne short 0x51ff
    ret
    mov ax, word [bp - 0x0008]
    mov cx, 0xf0
    cwd
    idiv cx
    mov ax, dx
    mov cx, 7
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x0008]
    mov cx, 0xf0
    cwd
    idiv cx
    test ax, ax
    je short 0x5228
    mov ax, 0x22
    sub ax, word [bp - 0x000c]
    jmp short 0x522b
    mov ax, word [bp - 0x000c]
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 8
    cwd
    idiv cx
    mov word [bp - 0x0018], dx
    mov ax, 1
    cmp dx, byte 5
    jge short 0x524b
    mov ax, 0
    mov word [bp - 0x001a], ax
    cmp dx, byte 5
    jge short 0x5258
    inc dx
    mov ax, dx
    jmp short 0x525e
    sub cx, word [bp - 0x0018]
    mov ax, cx
    inc ax
    mov byte [bp - 0x0024], al
    mov byte [bp - 0x0023], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp - 0x001a]
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x44
    sub ax, word [bp - 0x000e]
    push ax
    mov ax, word [bx - 0x0016]
    add ax, strict word 0x48
    push ax
    mov ax, 6
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
api_idx_001e:
    mov ax, 0xffe2
    call 0xf40b
    mov word [bp - 0x0004], 0x14a
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    push ax
    push dx
    mov ax, word [bp - 0x0004]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    sub ax, cx
    sbb dx, bx
    mov cx, 0x5a0
    mov bx, 0
    call 0xf9cd
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short 0x52d2
    cmp ax, 0x36c
    jl short 0x52d3
    ret
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0014], 0xff01
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x52e1
    cmp word [bp - 0x0008], byte 0x68
    jg short 0x5309
    mov ax, 0x58
    sub ax, word [bp - 0x0008]
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0008], byte 0x3a
    jl short 0x5324
    cmp word [bp - 0x0008], strict word 0xfa
    jg short 0x5324
    mov ax, 0xb0
    mov cx, word [bp - 0x0008]
    add cx, byte 0xc6
    sub ax, cx
    mov word [bp - 0x0014], ax
    cmp word [bp - 0x0008], strict word 0xcc
    jl short 0x5341
    cmp word [bp - 0x0008], strict word 0x124
    jg short 0x5341
    mov ax, 0xb0
    mov cx, word [bp - 0x0008]
    add cx, strict word 0xff34
    sub ax, cx
    mov word [bp - 0x000e], ax
    mov ax, word [0x82ee]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0014], strict word 0xff01
    jne short 0x5352
    ret
    cmp word [bp - 0x0006], strict word 0x10e
    jge short 0x536a
    mov ax, word [bp - 0x0006]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 5
    mov word [bp - 0x000c], ax
    jmp short 0x53bf
    mov ax, word [bp - 0x0006]
    cmp ax, 0x276
    jl short 0x5387
    add ax, 0xfd8a
    mov cx, 9
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x20
    sub ax, cx
    mov word [bp - 0x000c], ax
    jmp short 0x53bf
    mov ax, word [bp - 0x0006]
    add ax, 0xfef2
    mov cx, 0xb4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x24
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0006]
    add ax, 0xfef2
    mov cx, 0xb4
    cwd
    idiv cx
    test ax, ax
    je short 0x53b6
    mov ax, 0x24
    sub ax, word [bp - 0x000a]
    jmp short 0x53bc
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x20
    mov word [bp - 0x000c], ax
    mov byte [bp - 0x001e], 6
    mov byte [bp - 0x001d], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x46
    sub ax, word [bp - 0x000c]
    push ax
    mov ax, word [bx - 0x0014]
    add ax, strict word 0x48
    push ax
    mov ax, 6
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
api_idx_0030:
    mov ax, 0xffd0
    call 0xf40b
    mov word [bp - 0x0024], 0
    mov word [bp - 0x0022], 4
    mov word [bp - 0x0020], 1
    mov word [bp - 0x001e], 3
    mov word [bp - 0x001c], 2
    mov word [0x8f20], 0
    mov ax, word [0x8f46]
    mov word [bp - 0x000a], ax
    mov ax, word [0x8f44]
    mov word [bp - 0x000c], ax
    mov ax, word [0x8f42]
    mov word [bp - 0x000e], ax
    mov ax, word [0x8f40]
    mov word [bp - 0x0010], ax
    mov ax, word [0x8f3e]
    mov word [bp - 0x0012], ax
    mov word [0x8f48], 0
    mov word [0x8456], 0
    mov ax, 0
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp - 0x0012]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x0010]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp - 0x000e]
    mov word [bp - 0x0008], ax
    cmp word [0x830c], byte 0x0a
    je short 0x5490
    cmp word [0x830c], byte 0x19
    je short 0x5490
    jmp near 0x5531
    push ax
    mov ax, word [0x0e14]
    add ax, 0x930
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x54a5
    jmp near 0x5531
    mov ax, 0x63
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [0x830c]
    cmp ax, word [0x8f28]
    jne short 0x552d
    mov ax, word [bp - 0x0012]
    cmp ax, word [0x8f2a]
    jne short 0x552d
    mov ax, word [bp - 0x000e]
    cmp ax, word [0x8f2e]
    jne short 0x552d
    mov ax, word [bp - 0x0010]
    cmp ax, word [0x8f2c]
    jne short 0x552d
    cmp word [0x8f22], byte 0
    je short 0x54f0
    mov word [0x8f20], 0xffff
    mov byte [bp - 0x0030], 2
    mov byte [bp - 0x002f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0030]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [0x7b05]
    sub ah, ah
    inc ax
    push ax
    mov al, byte [0x7abe]
    sub ah, ah
    inc ax
    push ax
    mov ax, 0xc
    push ax
    call 0xefd1
    add sp, byte 0x16
    call 0xda22
    ret
    cmp word [0x5b6e], byte 1
    je short 0x553f
    cmp word [0x91a6], byte 0
    je short 0x557e
    push word [bp - 0x0008]
    mov ax, word [0x0e14]
    add ax, 0x8b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x557e
    cmp word [0x91a6], byte 0
    je short 0x557a
    mov ax, 0xff
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
    call api_idx_001e
    call api_idx_0024
    call 0xda22
    ret
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x920a
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91f1
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91d8
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x9b1a
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x9223
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x92ba
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x92a0
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x923c
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x92ec
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x926e
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x7f8
    push ax
    mov ax, 0x9320
    push ax
    call 0xf306
    add sp, byte 6
    mov word [0x931e], 0
    mov ax, word [bp - 0x0012]
    mov word [bp - 0x0014], ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call loc_2ed4
    add sp, byte 0x0e
    mov word [0x9b34], 5
    mov ax, word [0x8f46]
    add ax, word [0x8f44]
    add ax, word [0x82ee]
    mov cx, 2
    cwd
    idiv cx
    mov word [0x91d2], dx
    mov word [0x91d4], 0
    mov ax, word [0x5b6e]
    jmp near 0x59f0
    mov word [0x91d4], 0
    cmp word [0x830c], byte 0x1e
    jne short 0x56af
    cmp word [0x8f3e], byte 8
    jne short 0x56af
    jmp short 0x56d2
    mov ax, 0x1f
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1f
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    call 0xf01f
    add sp, byte 8
    mov ax, 0x20
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    call 0xf01f
    add sp, byte 8
    jmp near 0x59fd
    mov word [0x91d4], 1
    mov ax, 0xff
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
    call api_idx_001e
    call api_idx_0024
    mov ax, 4
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call 0xf01f
    add sp, byte 8
    mov ax, 0x3e
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x3e
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call 0xf01f
    add sp, byte 8
    jmp near 0x59fd
    mov word [0x91d4], 2
    mov ax, 0xff
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
    call api_idx_001e
    call api_idx_0024
    cmp word [0x830c], byte 0x0e
    jne short 0x57d1
    cmp word [0x8f3e], byte 9
    jle short 0x57d1
    cmp word [0x8f3e], byte 0x0a
    jg short 0x57b8
    mov ax, word [0x82ee]
    cmp ax, strict word 2
    je short 0x57b8
    cmp word [0x82ee], byte 0
    je short 0x57d1
    cmp word [0x8f40], byte 5
    jge short 0x57d1
    mov ax, 0
    push ax
    mov ax, 0x50
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x48
    push ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    jmp short 0x5817
    mov ax, 4
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call 0xf01f
    add sp, byte 8
    mov ax, 0xad
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0xad
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 2
    push ax
    call 0xf01f
    add sp, byte 8
    jmp near 0x59fd
    mov word [0x91d4], 3
    mov ax, 0xff
    push ax
    mov ax, 0x48
    cmp word [0x91a6], byte 0
    je short 0x5831
    mov ax, 0x8e
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
    call api_idx_001e
    call api_idx_0024
    mov ax, 4
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call 0xf01f
    add sp, byte 8
    cmp word [0x91a6], byte 0
    jne short 0x5897
    mov ax, 0x2a
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2a
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call 0xf01f
    add sp, byte 8
    jmp near 0x59fd
    mov word [0x91d4], 4
    mov ax, 0xff
    push ax
    mov ax, 0x38
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
    call api_idx_001e
    call api_idx_0024
    mov ax, 0
    push ax
    mov ax, 0x50
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0x2a
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2a
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call 0xf01f
    add sp, byte 8
    jmp near 0x59fd
    mov word [0x91d4], 5
    mov ax, 0xff
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
    call api_idx_001e
    call api_idx_0024
    mov ax, 0x3e
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x3e
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call 0xf01f
    add sp, byte 8
    cmp word [0x830c], byte 8
    jne short 0x598a
    cmp word [0x8f3e], byte 6
    jne short 0x598a
    cmp word [0x8f40], byte 4
    jne short 0x598a
    mov ax, word [0x8f42]
    cmp ax, strict word 2
    je short 0x596b
    cmp ax, strict word 1
    jne short 0x5973
    mov ax, word [0x82ee]
    cmp ax, strict word 1
    je short 0x5988
    mov ax, word [0x8f42]
    cmp ax, strict word 5
    je short 0x5980
    cmp ax, strict word 6
    jne short 0x598a
    mov ax, word [0x82ee]
    cmp ax, strict word 3
    jne short 0x598a
    jmp short 0x59a1
    mov ax, 0
    push ax
    mov ax, 0x50
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x48
    push ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    cmp word [0x830c], byte 8
    je short 0x59bd
    cmp word [0x830c], byte 0x0b
    jne short 0x59e0
    cmp word [0x8f3e], byte 6
    jne short 0x59e0
    cmp word [0x8f40], byte 3
    jle short 0x59e0
    mov ax, 4
    push ax
    call loc_2eac
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_2ec0
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call 0xf01f
    add sp, byte 8
    jmp short 0x59fd
    inc sp
    stosb
    loopne 0x598c
    aas
    cmpsw
    scasb
    cmpsw
    popaw
    test al, 0xe1
    test al, 0x47
    db 0xa9
    cmp ax, strict word 7
    jae short 0x59fd
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x55d7]
    mov word [0x91d6], 0
    mov ax, word [0x91d6]
    cmp ax, word [0x9b34]
    jl short 0x5a0f
    jmp near 0x62dd
    mov ax, word [0x8f46]
    add ax, word [0x8f44]
    add ax, word [0x82ee]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [0x91d6]
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xc1 ; mov ax, cx
    mov cx, 2
    cwd
    idiv cx
    mov word [0x91d0], dx
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0012]
    push ax
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call loc_2ed4
    add sp, byte 0x0e
    test ax, ax
    je short 0x5ab7
    mov ax, word [0x91d4]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    cmp ax, strict word 1
    jne short 0x5aa6
    mov ax, word [0x91d4]
    cmp ax, strict word 5
    je short 0x5a90
    cmp word [0x91a6], byte 0
    je short 0x5a7a
    mov word [0x9b36], 0
    jmp short 0x5a8e
    mov ax, 5
    imul word [0x91d6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 1
    mov word [0x9b36], 4
    jmp short 0x5aa4
    mov ax, 5
    imul word [0x91d6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 3
    mov word [0x9b36], 0
    jmp short 0x5aac
    mov word [0x9b36], 2
    mov ax, word [0x9b36]
    mov word [0x9b38], ax
    mov word [0x9b3a], ax
    jmp short 0x5b10
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call 0x2f8e
    add sp, byte 0x0c
    mov word [0x9b36], ax
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push ax
    call 0x33c0
    add sp, byte 0x0e
    mov word [0x9b38], ax
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 2
    push ax
    call 0x33c0
    add sp, byte 0x0e
    mov word [0x9b3a], ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call 0x2f8e
    add sp, byte 0x0c
    mov word [0x9b3c], ax
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call 0x2f8e
    add sp, byte 0x0c
    mov word [0x9b3e], ax
    cmp word [0x91d6], byte 1
    jle short 0x5bc9
    mov ax, 0xfffe
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call 0x2f8e
    add sp, byte 0x0c
    mov word [0x9b40], ax
    mov ax, 2
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call 0x2f8e
    add sp, byte 0x0c
    mov word [0x9b42], ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 0
    push ax
    call 0x33c0
    add sp, byte 0x0e
    mov word [0x9b44], ax
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 2
    push ax
    call 0x33c0
    add sp, byte 0x0e
    mov word [0x9b46], ax
    jmp short 0x5be1
    mov word [0x9b40], 0
    mov word [0x9b42], 0
    mov word [0x9b44], 0
    mov word [0x9b46], 0
    cmp word [0x9b36], byte 0
    jne short 0x5bf5
    mov ax, word [0x8456]
    cmp ax, word [0x91d6]
    jne short 0x5bf5
    inc word [0x8456]
    mov ax, word [0x91d0]
    mov word [0x9b18], ax
    mov ax, 0x1e
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0x85
    push ax
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x21
    push ax
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x19
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0x8c
    push ax
    push ax
    mov ax, 0x6e
    push ax
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x27
    push ax
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x21
    push ax
    push ax
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [0x9b36]
    push word [0x91d6]
    call 0x3802
    add sp, byte 0x4a
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0xae
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x25
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [0x91d6]
    call 0x4665
    add sp, byte 0x40
    mov ax, 0x39
    push ax
    mov ax, 0x34
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x9e
    push ax
    mov ax, 0x99
    push ax
    mov ax, 0x80
    push ax
    mov ax, 0x7b
    push ax
    mov ax, 0x6d
    push ax
    mov ax, 0x69
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x55
    push ax
    mov ax, 0x1c
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0xaa
    push ax
    mov ax, 0x62
    push ax
    mov ax, 0x5e
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0x4e
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x15
    push ax
    mov ax, 0x13
    push ax
    mov ax, 0xf
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9b38]
    push word [0x91d6]
    call 0x3f56
    add sp, byte 0x40
    mov ax, 0x34
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 0x99
    push ax
    mov ax, 0x9e
    push ax
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0x69
    push ax
    mov ax, 0x6d
    push ax
    mov ax, 0x55
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0x1c
    push ax
    mov ax, 0xaf
    push ax
    mov ax, 0x5e
    push ax
    mov ax, 0x62
    push ax
    mov ax, 0x4e
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0x15
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0xf
    push ax
    mov ax, 0x13
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [0x9b3a]
    push word [0x91d6]
    call 0x3f56
    add sp, byte 0x40
    mov ax, 0x43
    push ax
    mov ax, 0x3e
    push ax
    mov ax, 0x25
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0xa3
    push ax
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0x76
    push ax
    mov ax, 0x71
    push ax
    mov ax, 0x64
    push ax
    mov ax, 0x5f
    push ax
    mov ax, 0x26
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x56
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 0x17
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [0x9b44]
    push word [0x91d6]
    call 0x3f56
    add sp, byte 0x40
    mov ax, 0x3e
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x25
    push ax
    mov ax, 0xa3
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0x71
    push ax
    mov ax, 0x76
    push ax
    mov ax, 0x5f
    push ax
    mov ax, 0x64
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x26
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0x56
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push word [0x9b46]
    push word [0x91d6]
    call 0x3f56
    add sp, byte 0x40
    mov ax, word [0x91d0]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x9b18], dx
    mov ax, 0x22
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x89
    push ax
    mov ax, 0x29
    push ax
    mov ax, 0x2d
    push ax
    push ax
    mov ax, 0x29
    push ax
    mov ax, 0x25
    push ax
    push ax
    mov ax, 5
    push ax
    push ax
    mov ax, 0x92
    push ax
    push ax
    mov ax, 0x74
    push ax
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x30
    push ax
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x2a
    push ax
    push ax
    mov ax, 0x43
    push ax
    mov ax, 5
    push ax
    mov ax, 3
    push ax
    push ax
    mov ax, 4
    push ax
    push cx
    push ax
    push cx
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9b3c]
    push word [0x91d6]
    call 0x3802
    add sp, byte 0x4a
    mov ax, 0xc9
    push ax
    mov ax, 0xc4
    push ax
    mov ax, 0xb2
    push ax
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x34
    push ax
    mov ax, 0x2a
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x91d6]
    call 0x4665
    add sp, byte 0x40
    mov ax, word [0x91d0]
    mov word [0x9b18], ax
    mov ax, 0x26
    push ax
    push ax
    mov ax, 8
    push ax
    push ax
    mov ax, 0x95
    push ax
    mov ax, 0x8d
    push ax
    mov ax, 0x35
    push ax
    mov ax, 0x39
    push ax
    push ax
    mov ax, 0x35
    push ax
    mov ax, 0x31
    push ax
    push ax
    mov ax, 9
    push ax
    push ax
    mov ax, 0x98
    push ax
    push ax
    mov ax, 0x7a
    push ax
    push ax
    mov ax, 0x36
    push ax
    mov ax, 0x39
    push ax
    push ax
    mov ax, 0x36
    push ax
    mov ax, 0x33
    push ax
    push ax
    mov ax, 0x47
    push ax
    mov ax, 9
    push ax
    mov ax, 6
    push ax
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [0x9b40]
    push word [0x91d6]
    call 0x3802
    add sp, byte 0x4a
    mov ax, 0xd3
    push ax
    mov ax, 0xce
    push ax
    mov ax, 0xb6
    push ax
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x2f
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [0x91d6]
    call 0x4665
    add sp, byte 0x40
    mov ax, word [0x91d0]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x9b18], dx
    mov ax, 0x2a
    push ax
    push ax
    mov ax, 0xc
    push ax
    push ax
    mov ax, 0x89
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x45
    push ax
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x3d
    push ax
    push ax
    mov ax, 0xd
    push ax
    push ax
    mov ax, 0x9e
    push ax
    push ax
    mov ax, 0x80
    push ax
    push ax
    mov ax, 0x3f
    push ax
    mov ax, 0x42
    push ax
    push ax
    mov ax, 0x3f
    push ax
    mov ax, 0x3c
    push ax
    push ax
    mov ax, 0x4b
    push ax
    mov ax, 0xd
    push ax
    mov ax, 9
    push ax
    push ax
    mov ax, 4
    push ax
    push cx
    push ax
    push cx
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [0x9b3e]
    push word [0x91d6]
    call 0x3802
    add sp, byte 0x4a
    mov ax, 0xc4
    push ax
    mov ax, 0xc9
    push ax
    mov ax, 0xba
    push ax
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x2a
    push ax
    mov ax, 0x34
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [0x91d6]
    call 0x4665
    add sp, byte 0x40
    mov ax, word [0x91d0]
    mov word [0x9b18], ax
    mov ax, 0x2e
    push ax
    push ax
    mov ax, 0x10
    push ax
    push ax
    mov ax, 0x8d
    push ax
    mov ax, 0x95
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x51
    push ax
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x49
    push ax
    push ax
    mov ax, 0x11
    push ax
    push ax
    mov ax, 0xa4
    push ax
    push ax
    mov ax, 0x86
    push ax
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x4b
    push ax
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x45
    push ax
    push ax
    mov ax, 0x4f
    push ax
    mov ax, 0x11
    push ax
    mov ax, 0xc
    push ax
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push word [0x9b42]
    push word [0x91d6]
    call 0x3802
    add sp, byte 0x4a
    mov ax, 0xce
    push ax
    mov ax, 0xd3
    push ax
    mov ax, 0xbe
    push ax
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x2f
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push word [0x91d6]
    call 0x4665
    add sp, byte 0x40
    inc word [0x91d6]
    jmp near 0x5a03
    mov ax, word [0x9b34]
    dec ax
    mov word [0x91d6], ax
    jmp near 0x675e
    mov word [bp - 0x0004], 0xff
    mov ax, word [0x931e]
    dec ax
    mov word [bp - 0x0002], ax
    jmp short 0x6358
    mov ax, 0x11
    imul word [bp - 0x0002]
    add ax, 0x9320
    mov word [bp - 0x0026], ax
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0xd]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [0x91d6]
    jne short 0x6355
    mov al, byte [bx + 0xc]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x0004]
    jne short 0x6355
    cmp word [bx], byte 0xff
    je short 0x6334
    push word [bx + 0x4]
    mov al, byte [bx + 0x8]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bx]
    mov al, byte [bx + 0xe]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xf01f
    add sp, byte 8
    mov bx, word [bp - 0x0026]
    cmp word [bx + 0x2], byte 0xff
    je short 0x6355
    push word [bx + 0x6]
    mov al, byte [bx + 0x9]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bx + 0x2]
    mov al, byte [bx + 0xe]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xf01f
    add sp, byte 8
    dec word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 0
    jge short 0x62f5
    mov ax, 0
    cmp word [bp - 0x0004], strict word 0xff
    je short 0x6375
    mov ax, 0xffff
    cmp word [bp - 0x0004], strict word 0xfb
    jne short 0x6375
    mov ax, 1
    mov word [bp - 0x0018], ax
    cmp ax, strict word 0xffff
    jne short 0x6380
    jmp near 0x6436
    mov ax, word [0x931e]
    dec ax
    mov word [bp - 0x0002], ax
    jmp near 0x642d
    mov ax, 0x11
    imul word [bp - 0x0002]
    add ax, 0x9320
    mov word [bp - 0x0026], ax
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0xd]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [0x91d6]
    je short 0x63a6
    jmp near 0x642a
    mov al, byte [bx + 0xc]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, 0xfa
    jl short 0x63b3
    jmp near 0x642a
    mov al, byte [bx + 0x10]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x0018]
    jne short 0x642a
    cmp byte [bx + 0xc], 4
    jne short 0x63d0
    cmp byte [bx + 0x9], 1
    jne short 0x63d0
    push bx
    call 0x4f53
    pop cx
    jmp short 0x642a
    mov word [bp - 0x0006], 0
    mov bx, word [bp - 0x0026]
    mov si, word [bp - 0x0006]
    mov al, byte [bx + si + 0x8]
    db 0x8b, 0xde ; mov bx, si
    db 0x03, 0xdd ; add bx, bp
    mov byte [bx - 0x0030], al
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 4
    jl short 0x63d5
    mov byte [bp - 0x002c], 0
    mov bx, word [bp - 0x0026]
    mov al, byte [bx + 0xe]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0030]
    push ax
    mov al, byte [bx + 0xf]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    push word [bx + 0x2]
    push word [bx]
    mov al, byte [bx + 0xc]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xefd1
    add sp, byte 0x16
    dec word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 0
    jl short 0x6436
    jmp near 0x638a
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, 0xfb
    jl short 0x6444
    jmp near 0x62ec
    mov al, byte [0x5b55]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, 0xff
    jne short 0x6451
    jmp near 0x65ee
    cmp word [0x91d6], byte 0
    je short 0x645b
    jmp near 0x65ee
    cmp word [0x91d4], byte 0
    jne short 0x646c
    cmp byte [0x91e4], 3
    jne short 0x646c
    jmp near 0x65ee
    mov ax, word [0x91d4]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    jne short 0x6485
    cmp word [0x8456], byte 1
    jg short 0x6485
    jmp near 0x65ee
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0006]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x6e60], byte 0
    jg short 0x649b
    jmp near 0x6528
    mov al, byte [bx - 0x6e60]
    mov byte [bp - 0x0030], al
    mov byte [bp - 0x002f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0030]
    push ax
    push word [bx - 0x6e38]
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov bx, word [bx - 0x6e60]
    mov al, byte [bx + 0x7c61]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, word [bp - 0x0006]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    add ax, word [bx - 0x6e4a]
    push ax
    mov ax, word [bx - 0x6e60]
    shl ax, 1
    add ax, word [bx - 0x6e38]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x7c18]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd9 ; mov bx, cx
    add ax, word [bx - 0x6e44]
    push ax
    mov ax, 0xd
    push ax
    call 0xefd1
    add sp, byte 0x16
    mov ax, word [bp - 0x0006]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x6e3e], byte 0
    je short 0x6510
    dec word [bx - 0x6e60]
    jmp short 0x6514
    inc word [bx - 0x6e60]
    mov al, byte [0x7d3c]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bx - 0x6e60]
    jge short 0x6525
    mov word [bx - 0x6e60], 0
    jmp near 0x65e0
    cmp word [0x8f22], byte 0
    je short 0x6532
    jmp near 0x65e0
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x0006]
    jle short 0x6542
    jmp near 0x65e0
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6e38], ax
    mov ax, word [0x91d4]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    je short 0x656b
    push cx
    call 0xb7a9
    pop cx
    jmp short 0x656e
    mov ax, 0
    mov cx, word [bp - 0x0006]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6e3e], ax
    mov ax, 1
    cmp word [bx - 0x6e3e], byte 0
    je short 0x6588
    mov al, byte [0x7d3c]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bx - 0x6e60], ax
    mov ax, word [0x91d4]
    mov cx, 1
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    je short 0x65a0
    mov ax, 0x1e
    jmp short 0x65a3
    mov ax, 0xa
    mov word [bp - 0x0002], ax
    cmp word [bx - 0x6e38], byte 0
    je short 0x65b4
    push ax
    call 0xb7a9
    pop cx
    jmp short 0x65c2
    push word [bp - 0x0002]
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0
    db 0x2b, 0xc1 ; sub ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6e44], ax
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6e4a], ax
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jge short 0x65ee
    jmp near 0x648a
    cmp word [0x91d4], byte 0
    je short 0x6600
    mov ax, word [0x91d4]
    cmp ax, strict word 2
    jg short 0x6600
    jmp near 0x675a
    mov word [bp - 0x0014], 0
    mov ax, word [bp - 0x0014]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    db 0x03, 0xdd ; add bx, bp
    mov ax, word [bx - 0x0024]
    mov word [bp - 0x0002], ax
    mov ax, 5
    imul word [0x91d6]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0002]
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xd9 ; mov bx, cx
    mov al, byte [bx - 0x6df6]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x001a], ax
    test ax, ax
    jne short 0x6634
    jmp near 0x674c
    mov ax, 0x28
    imul word [0x91d6]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx + 0x2a6], byte 0
    jne short 0x6652
    jmp near 0x674c
    cmp word [bp - 0x001a], byte 1
    je short 0x665f
    cmp word [0x91a6], byte 0
    je short 0x6686
    mov ax, 0
    cmp word [0x91a6], byte 0
    je short 0x666c
    mov ax, 0xff
    push ax
    push word [bx + 0x2ac]
    push word [bx + 0x2aa]
    push word [bx + 0x2a8]
    push word [bx + 0x2a6]
    call 0xe901
    add sp, byte 0x0a
    jmp near 0x673f
    cmp word [0x91d6], byte 0
    jg short 0x6690
    jmp near 0x673f
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add ax, word [0x91d6]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x76a0], 0
    jne short 0x66a9
    jmp near 0x673f
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    add ax, word [0x8f46]
    add ax, word [0x8f44]
    add ax, word [0x82ee]
    add ax, word [0x91d6]
    mov cx, 2
    cwd
    idiv cx
    mov word [0x91d0], dx
    mov al, byte [0x91d6]
    mov byte [bp - 0x0030], al
    mov byte [bp - 0x002f], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add ax, word [0x91d6]
    shl ax, 1
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x76a0]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, 0xff
    jne short 0x6704
    mov ax, 0xffee
    cmp word [0x91d0], byte 0
    je short 0x6701
    mov ax, 0xffea
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0030]
    push ax
    push dx
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add ax, word [0x91d6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x76e9]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bp - 0x0006]
    mov ax, 9
    push ax
    call 0xefd1
    add sp, byte 0x16
    cmp word [0x91a6], byte 0
    je short 0x674c
    call api_idx_001e
    call api_idx_0024
    inc word [bp - 0x0014]
    mov ax, word [bp - 0x0014]
    cmp ax, strict word 5
    jge short 0x675a
    jmp near 0x6605
    dec word [0x91d6]
    cmp word [0x91d6], byte 0
    jl short 0x6768
    jmp near 0x62e7
    call 0xda22
    ret
loc_676c:
    mov ax, 0
    call 0xf40b
    call api_idx_0030
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call 0xe8da
    add sp, byte 8
    ret
math_loc_678c:
    mov ax, 0
    call 0xf40b
    mov bx, word [0x0e14]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jg short 0x67c2
    add ax, strict word 7
    cmp ax, word [bp + 0x6]
    jl short 0x67c2
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    jg short 0x67c2
    add ax, strict word 7
    cmp ax, word [bp + 0x8]
    jl short 0x67c2
    mov ax, si
    ret
    mov ax, 0xffff
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    call 0xf40b
    push word [bp + 0xc]
    push word [bp + 0xa]
    mov bx, word [bp + 0x8]
    push word [bx]
    call math_loc_678c
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x683d
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [0x8f48]
    call math_loc_678c
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x683d
    mov bx, word [bp + 0x8]
    mov ax, word [bx]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp - 0x0002]
    call math_loc_678c
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x683d
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov bx, word [bp + 0x8]
    cmp dx, word [bx]
    jne short 0x683b
    mov ax, 1
    ret
    jmp short 0x680c
    mov ax, word [bp + 0xa]
    push ax
    mov bx, word [0x0e14]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov bx, word [bp + 0x4]
    mov word [bx], ax
    mov ax, word [bp + 0xc]
    push ax
    mov bx, word [0x0e14]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov bx, word [bp + 0x6]
    mov word [bx], ax
    mov ax, word [bp - 0x0004]
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    mov word [0x8f48], ax
    mov ax, 0
    ret
api_idx_0002_9:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    jmp short 0x68e7
    mov bx, word [0x0e12]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si + 0x870]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    je short 0x68a6
    mov ax, 0xffff
    ret
    mov al, byte [bx + si + 0x690]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short 0x68e4
    mov al, byte [bx + si + 0x780]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short 0x68e4
    cmp byte [bx + si + 0x5a0], 0
    jbe short 0x68e4
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x68e4
    mov ax, word [bp - 0x0002]
    ret
    inc word [bp - 0x0002]
    cmp word [bp - 0x0002], strict word 0xf0
    jl short 0x6890
    mov ax, 0xffff
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 0x10
    push ax
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    mov ax, word [0x830c]
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xfedc
    add sp, byte 6
    mov ax, 0x80
    push ax
    mov ax, word [0x830c]
    mov cx, 7
    shl ax, cl
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [0x0e1a]
    mov dx, word [0x0e1c]
    db 0x03, 0xc1 ; add ax, cx
    push dx
    push ax
    push ds
    mov ax, 0x8b7e
    push ax
    call 0xafcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    mov ax, word [0x830c]
    mov cx, 7
    shl ax, cl
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [0x0e16]
    mov dx, word [0x0e18]
    db 0x03, 0xc1 ; add ax, cx
    push dx
    push ax
    push ds
    mov ax, 0x8afe
    push ax
    call 0xafcc
    add sp, byte 0x0a
    ret
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [bp + 0x8]
    db 0x86, 0xe0 ; xchg al, ah
    db 0x2a, 0xc0 ; sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    db 0x8b, 0xca ; mov cx, dx
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0004], ax
    mov ax, word [0x0e10]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short 0x69c9
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short 0x69c2
    mov al, byte [bx + 0x1]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short 0x69c2
    cmp word [bp + 0x6], byte 6
    jne short 0x69b6
    mov ax, word [bx + 0x2]
    cmp ax, word [bp + 0x8]
    jne short 0x69b4
    mov ax, word [bp - 0x0002]
    ret
    jmp short 0x69c2
    mov ax, word [bx + 0x2]
    cmp ax, word [bp - 0x0004]
    jne short 0x69c2
    mov ax, word [bp - 0x0002]
    ret
    add word [bp - 0x0006], byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x590e]
    jl short 0x698c
    mov ax, 0xffff
    ret
    mov ax, 0xfffc
    call 0xf40b
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x6960
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x6a15
    mov ax, word [0x590e]
    mov word [bp - 0x0002], ax
    inc word [0x590e]
    mov ax, word [0x590e]
    cmp ax, 0x200
    jl short 0x6a15
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x6a0b
    mov ax, 6
    imul word [bp - 0x0002]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [0x0e10]
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [bp + 0x4]
    mov bx, word [bp - 0x0004]
    mov byte [bx], al
    mov al, byte [bp + 0x6]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x1], al
    mov ax, word [bp + 0x8]
    db 0x86, 0xe0 ; xchg al, ah
    db 0x2a, 0xc0 ; sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    db 0x8b, 0xca ; mov cx, dx
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0xc]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0x6]
    jmp short 0x6ab9
    mov ax, word [bp + 0xe]
    mov cx, 4
    shl ax, cl
    add ax, word [bp + 0x10]
    db 0x86, 0xe0 ; xchg al, ah
    db 0x2a, 0xc0 ; sub al, al
    mov dx, word [bp + 0x12]
    shl dx, cl
    db 0x8b, 0xca ; mov cx, dx
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0x14]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short 0x6ac6
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short 0x6ac6
    mov ax, word [bp + 0xe]
    db 0x86, 0xe0 ; xchg al, ah
    db 0x2a, 0xc0 ; sub al, al
    add ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short 0x6ac6
    mov ax, word [bp + 0x8]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short 0x6ac6
    sahf
    mov dx, 0xbac1
    sar word [bp + si - 0x453f], 0xc1
    mov dx, 0xbacc
    fidivr word [bp + si + 0x73d]
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x450e]
    ret
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x4], byte 0
    jle short 0x6b09
    mov ax, word [bp + 0x4]
    cmp ax, strict word 5
    jl short 0x6ae5
    cmp ax, strict word 8
    je short 0x6ae5
    cmp ax, strict word 9
    jne short 0x6aec
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x6b09
    push word [bp + 0x4]
    call 0xd7aa
    pop cx
    mov ax, 0x10
    push ax
    call 0xb7e0
    pop cx
    mov ax, 0x10
    push ax
    call 0xd6c6
    pop cx
    mov word [0x598e], 0xffff
    ret
    mov ax, 0xfff6
    call 0xf40b
    mov ax, 0
    push ax
    push word [0x8d10]
    push word [0x8d0e]
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
    ret
    mov ax, 0
    call 0xf40b
    cmp word [0x9b48], byte 0
    je short 0x6b68
    ret
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
    mov ax, 0x3c
    push ax
    call 0xb7a9
    pop cx
    cwd
    les bx, word [0x0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    db 0x03, 0xc1 ; add ax, cx
    db 0x13, 0xd3 ; adc dx, bx
    add ax, strict word 0x24
    adc dx, byte 0
    mov word [0x919c], dx
    mov word [0x919a], ax
    cmp word [bp + 0x4], byte 0
    je short 0x6bbc
    mov ax, word [0x905a]
    cmp byte [0x598c], 0
    je short 0x6bb5
    shl ax, 1
    push ax
    call api_idx_0006_2
    pop cx
    jmp short 0x6bec
    call 0xbaef
    test ax, ax
    jne short 0x6bec
    call math_loc_0f1d
    test ax, ax
    je short 0x6be2
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    cmp word [0x5b3e], byte 0
    jne short 0x6be2
    call loc_676c
    mov ax, 0
    push ax
    call loc_0ea6
    pop cx
    jmp short 0x6bbc
    cmp word [0x59fa], byte 0
    je short 0x6c00
    cmp word [0x9b4a], byte 0
    jne short 0x6c00
    mov word [0x9b48], 1
    call 0x6b0a
    mov word [0x9b4c], 0
    ret
    mov ax, 0xfffc
    call 0xf40b
    cmp word [0x9b4c], byte 3
    jle short 0x6c1f
    mov ax, 0
    push ax
    call 0x6b5a
    pop cx
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short 0x6c2c
    inc word [0x9b4c]
    ret
    mov ax, 2
    push ax
    push bx
    call 0xe883
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0xa0
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    mov bx, word [bp + 0x4]
    db 0x8b, 0xf0 ; mov si, ax
    mov al, byte [bx + si]
    db 0x2a, 0xe4 ; sub ah, ah
    jmp short 0x6c7f
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov word [bp - 0x0002], 0x44
    jmp short 0x6c89
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov ax, word [0x9b4e]
    mov word [bp - 0x0002], ax
    jmp short 0x6c89
    cmp ax, strict word 0x24
    je short 0x6c5e
    cmp ax, strict word 0x5e
    je short 0x6c6e
    mov ax, 0xc
    imul word [0x9b4c]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov bx, word [bp + 0x4]
    mov byte [bx], 0
    mov ax, word [bp - 0x0002]
    mov word [0x9b4e], ax
    inc word [0x9b4c]
    ret
    mov ax, 0xff70
    call 0xf40b
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0x917e
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short 0x6cec
    jmp near 0x6e30
    jmp near 0x6e20
    inc word [bp + 0x4]
    mov ax, 0x9b50
    push ax
    call 0x6c0a
    pop cx
    jmp near 0x6e2d
    inc word [bp + 0x4]
    mov ax, 0x9b50
    push ax
    call 0x6c0a
    pop cx
    cmp word [0x9b48], byte 0
    jne short 0x6d41
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
    push word [0x905a]
    call api_idx_0006_2
    pop cx
    cmp word [0x59fa], byte 0
    je short 0x6d41
    cmp word [0x9b4a], byte 0
    jne short 0x6d41
    mov word [0x9b48], 1
    jmp near 0x6e2d
    inc word [bp + 0x4]
    mov ax, 0x9b50
    push ax
    call 0x6c0a
    pop cx
    cmp word [0x9b48], byte 0
    jne short 0x6d6c
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
    jmp near 0x6e2d
    inc word [bp + 0x4]
    call 0x6b0a
    mov word [0x9b4c], 0
    jmp near 0x6e2d
    inc word [bp + 0x4]
    mov ax, 0x9b50
    push ax
    call 0x6c0a
    pop cx
    mov ax, 0
    push ax
    call 0x6b5a
    pop cx
    jmp near 0x6e2d
    inc word [bp + 0x4]
    call loc_0140
    mov ax, 0x10
    push ax
    mov ax, 0xa
    push ax
    call 0xd61c
    add sp, byte 4
    mov byte [bp - 0x0090], 1
    mov byte [bp - 0x008f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0090]
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
    mov ax, 0x92
    push ax
    mov ax, 0x59
    push ax
    mov ax, 0x10
    push ax
    call 0xefd1
    add sp, byte 0x16
    mov ax, 0x10
    push ax
    call 0xc12a
    pop cx
    call loc_0344
    jmp short 0x6e2d
    inc word [bp + 0x4]
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0x63
    jne short 0x6e06
    mov word [bp - 0x0006], 0x20
    push word [bp - 0x0006]
    call 0x6ac7
    pop cx
    inc word [bp + 0x4]
    jmp short 0x6e2d
    ss mov bp, 0xbd44
    mov di, word [di - 0x424a]
    lds di, word [di - 0x4225]
    ss mov si, 0x73d
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x41a7]
    jmp near 0x6ccf
    cmp byte [0x9b50], 0
    je short 0x6e65
    mov ax, 0x9b50
    push ax
    lea ax, word [bp - 0x0086]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x9186
    push ax
    lea ax, word [bp - 0x0086]
    push ax
    call 0xf32d
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0086]
    push ax
    call 0xf32d
    add sp, byte 4
    jmp short 0x6e73
    push word [bp + 0x4]
    lea ax, word [bp - 0x0086]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 2
    push ax
    lea ax, word [bp - 0x0086]
    push ax
    call 0xe883
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, 0xb8
    jle short 0x6ea1
    mov ax, 0x9b50
    push ax
    call 0x6c0a
    pop cx
    push word [bp + 0x4]
    mov ax, 0x9b50
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x6eb0
    lea ax, word [bp - 0x0086]
    push ax
    mov ax, 0x9b50
    push ax
    call 0xf364
    add sp, byte 4
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x20
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x6f06
    mov bx, word [bp + 0x4]
    db 0x8b, 0xf0 ; mov si, ax
    mov byte [bx + si], 0
    mov ax, 0x5f
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short 0x6ef3
    mov bx, word [bp + 0x4]
    db 0x8b, 0xf0 ; mov si, ax
    mov byte [bx + si], 0x20
    jmp short 0x6ed4
    push word [bp + 0x4]
    call 0x6cc9
    pop cx
    mov ax, word [bp - 0x0002]
    add word [bp + 0x4], ax
    add word [bp + 0x4], byte 1
    jmp short 0x6eb7
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    je short 0x6f13
    push bx
    call 0x6cc9
    pop cx
    ret
    mov ax, 0xfefa
    call 0xf40b
    mov word [0x9b48], 0
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call 0xe928
    add sp, byte 8
    mov word [0x8d10], dx
    mov word [0x8d0e], ax
    call 0x6b0a
    mov word [0x9b4e], 0x44
    mov word [0x9b4c], 0
    mov byte [0x9b50], 0
    lea ax, word [bp - 0x0105]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    cmp word [0x5216], byte 0
    jne short 0x6f79
    cmp word [0x9b48], byte 0
    jne short 0x6f76
    lea ax, word [bp - 0x0105]
    push ax
    call 0x6eb1
    pop cx
    inc word [bp + 0x4]
    cmp word [0x5216], byte 0
    je short 0x6f51
    cmp byte [0x9b50], 0
    je short 0x6f8f
    mov ax, 0x9b50
    push ax
    call 0x6c0a
    pop cx
    push word [bp + 0x6]
    call 0x6b5a
    pop cx
    mov ax, 1
    push ax
    push word [0x8d10]
    push word [0x8d0e]
    call 0xe94f
    add sp, byte 6
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
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short 0x7000
    mov al, byte [bx + 0x5d6c]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c18]
    imul word [bp + 0x8]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x2b, 0xc1 ; sub ax, cx
    jg short 0x7000
    add bx, word [bp + 0x6]
    inc byte [bx + 0x5d6c]
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [bp + 0x4]
    cmp word [bx + si], byte 0
    jne short 0x7030
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    jmp short 0x7012
    mov ax, word [bp - 0x0002]
    ret
    mov ax, 0xffe2
    call 0xf40b
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    cmp word [bx + si], byte 0
    jle short 0x706e
    push word [bx + si]
    call api_idx_0050
    pop cx
    push word [0x905a]
    call api_idx_0006_2
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x001e], ax
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x000e], ax
    mov word [bp - 0x0002], 0
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    push word [bp - 0x000e]
    call 0xed3a
    add sp, byte 6
    mov cx, word [bp - 0x0002]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    db 0x03, 0xdd ; add bx, bp
    mov word [bx - 0x000c], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x708c
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0012], ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x000e]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0018], ax
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    push word [bp - 0x000e]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short 0x710b
    mov ax, 1
    jmp short 0x710e
    mov ax, 0xffff
    mov word [bp - 0x001a], ax
    mov ax, 1
    push ax
    mov ax, 0xe
    push ax
    push word [bp - 0x000e]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x001c], ax
    mov word [bp - 0x0002], 0
    jmp near 0x722f
    lea ax, word [bp - 0x000c]
    push ax
    call 0x7001
    pop cx
    mov word [bp - 0x0016], ax
    cmp word [bp - 0x0018], byte 1
    jne short 0x71a6
    cmp ax, word [0x82ee]
    je short 0x71a6
    cmp word [bp - 0x001a], byte 1
    jne short 0x715c
    sub ax, word [0x82ee]
    add ax, strict word 4
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0014], dx
    jmp short 0x716e
    mov ax, word [0x82ee]
    sub ax, word [bp - 0x0016]
    add ax, strict word 4
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0014], dx
    cmp word [bp - 0x0012], byte 0
    jne short 0x7177
    dec word [bp - 0x0014]
    mov word [bp - 0x0004], 0
    jmp short 0x719e
    push word [bp - 0x001e]
    call api_idx_0006_2
    pop cx
    mov ax, word [0x82ee]
    add ax, word [bp - 0x001a]
    add ax, strict word 4
    mov cx, 4
    cwd
    idiv cx
    mov word [0x82ee], dx
    call loc_676c
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0014]
    jl short 0x717e
    push word [bp - 0x001e]
    call api_idx_0006_2
    pop cx
    mov ax, word [bp - 0x0016]
    mov word [0x82ee], ax
    cmp word [bp - 0x0012], byte 0
    jle short 0x7229
    call loc_12a2
    cmp word [bp - 0x001c], byte 1
    jne short 0x71d7
    push word [bp - 0x0012]
    call 0xb7a9
    pop cx
    inc ax
    push ax
    push word [0x82ee]
    call 0x1240
    add sp, byte 4
    jmp short 0x71e4
    push word [bp - 0x0012]
    push word [0x82ee]
    call 0x1240
    add sp, byte 4
    push word [0x8f44]
    push word [0x8f46]
    mov ax, 0x8f3e
    push ax
    mov ax, 0x8f40
    push ax
    mov ax, 0x8f42
    push ax
    call api_idx_0004_4
    add sp, byte 0x0a
    cmp ax, strict word 1
    jne short 0x7212
    mov ax, 4
    push ax
    mov ax, 0x7e6
    push ax
    call 0x110e
    add sp, byte 4
    ret
    mov bx, word [0x0e12]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0xb40]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x8d12], ax
    mov word [0x9bd0], 0
    call loc_676c
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0010]
    jge short 0x723a
    jmp near 0x712d
    push word [bp - 0x001e]
    call api_idx_0006_2
    pop cx
    ret
loc_7242:
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x4], byte 0
    jle short 0x72a5
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    cmp byte [bx + si + 0x960], 0
    jbe short 0x72a5
    mov ax, 1
    push ax
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    cmp word [bp + 0x4], byte 1
    jle short 0x72a5
    mov ax, 1
    push ax
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    ret
    mov ax, 0xfffc
    call 0xf40b
    call math_loc_13c0
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [0x8f42], ax
    mov ax, 3
    push ax
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [0x8f40], ax
    mov ax, 4
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [0x8f3e], ax
    mov bx, word [0x0e12]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0004], ax
    mov word [0x8460], 0
    cmp ax, strict word 0x63
    jne short 0x7339
    shl si, 1
    mov ax, word [bx + si + 0x1e0]
    mov word [0x8460], ax
    mov word [bp - 0x0004], 0xffff
    cmp word [0x919e], byte 0
    je short 0x7358
    mov ax, word [bp - 0x0004]
    mov word [0x8f28], ax
    mov ax, word [0x8f3e]
    mov word [0x8f2a], ax
    mov ax, word [0x8f42]
    mov word [0x8f2e], ax
    mov ax, word [0x8f40]
    mov word [0x8f2c], ax
    mov bx, word [0x0e14]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0x490]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, word [0x8f42]
    mov word [0x8f46], ax
    mov al, byte [bx + si + 0x4a0]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, word [0x8f40]
    mov word [0x8f44], ax
    mov bx, word [0x0e12]
    mov al, byte [bx + si + 0xb40]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x8d12], ax
    mov word [0x9bd0], 0
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x830c]
    jne short 0x739b
    call loc_676c
    jmp short 0x73af
    call 0x68f2
    push word [bp - 0x0004]
    call api_idx_000c
    pop cx
    cmp word [0x830c], byte 0
    jl short 0x73af
    call loc_676c
    mov word [0x91a8], 1
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si]
    mov word [bp - 0x0002], ax
    jmp short 0x7428
    mov ax, 0x11
    push ax
    call 0x6ac7
    pop cx
    push word [0x8d12]
    call 0x72a6
    pop cx
    jmp short 0x7435
    mov ax, 0x804
    push ax
    call api_idx_0050
    pop cx
    mov ax, 8
    push ax
    call 0xb7e0
    pop cx
    mov ax, 8
    push ax
    call api_idx_0006_2
    pop cx
    mov word [0x91b2], 1
    push word [0x8d12]
    call 0x72a6
loc_7405:
    pop cx
    jmp short 0x7435
    mov ax, 8
    push ax
    call 0xb7e0
    pop cx
    push word [0x8d12]
    call 0x72a6
    pop cx
    jmp short 0x7435
    sbb ax, 0x15c4
    les sp, word [bx]
    les di, word [si - 0x003c]
    dec di
    les cx, word [bx - 0x003c]
    dec di
    les di, word [di]
    pop es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x3b9f]
    ret
    mov ax, 0
    call 0xf40b
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x91b0], ax
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    mov ax, 0xe
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short 0x7497
    mov ax, 2
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [0x8f24], ax
    cmp ax, word [0x82ee]
    je short 0x7497
    ret
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    cmp word [bx + si], byte 0
    jle short 0x74b3
    mov ax, 0
    push ax
    push word [bx + si]
    call 0x6f14
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short 0x74ca
    ret
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x84a0], ax
    mov word [0x830a], 0x15
    ret
    mov ax, 0xffb0
    call 0xf40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call 0xb300
    add sp, byte 6
    lea ax, word [bp - 0x0050]
    push ax
    call api_idx_0008_2
    pop cx
    cmp word [bp + 0x8], byte 0
    je short 0x7523
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    push word [0x905a]
    call api_idx_0006_2
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0xfffc
    call 0xf40b
    cmp word [0x82fe], byte 0
    jle short 0x7563
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [0x8300]
    jge short 0x7563
    mov word [0x82ea], 1
    mov word [bp - 0x0002], 0
    jmp short 0x75a4
    push word [bp - 0x0002]
    call 0xca85
    pop cx
    test ax, ax
    je short 0x75a1
    mov ax, 0xc8
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d78]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jge short 0x75a1
    mov ax, 0x7f8
    push ax
    push word [bp - 0x0002]
    call 0x74e2
    add sp, byte 4
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x756a
    ret
    mov ax, 0xfffa
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, 2
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    push ax
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x3c0]
    call 0xed3a
    add sp, byte 6
    mov cx, word [bp - 0x0002]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x7302], ax
    mov ax, 2
    push ax
    add cx, byte 8
    db 0x8b, 0xc1 ; mov ax, cx
    push ax
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x3c0]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 2
    jne short 0x7611
    mov word [bp - 0x0004], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x75be
    cmp word [bp - 0x0004], byte 0
    je short 0x7625
    call 0x7542
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0006], ax
    mov ax, 2
    push ax
    mov ax, 5
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    ret
    mov ax, 0xffe4
    call 0xf40b
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0006], ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x000e], ax
    mov ax, 3
    push ax
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov ax, 4
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x000c], ax
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0012], ax
    mov ax, 2
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0014], ax
    mov bx, word [0x0e14]
    mov si, word [bp - 0x000c]
    mov al, byte [bx + si + 0x490]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, word [bp - 0x000e]
    mov word [bp - 0x0008], ax
    mov al, byte [bx + si + 0x4a0]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, word [bp - 0x0010]
    mov word [bp - 0x000a], ax
    mov cx, 6
    shl si, cl
    db 0x8b, 0xc6 ; mov ax, si
    mov cx, word [bp - 0x0010]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp - 0x000e]
    mov word [bp - 0x0004], ax
    db 0xa1, 0x12
loc_76ff:

; ==========================================
; Jump table: 4 entries (offsets 0x76ff - 0x7e82)
; ==========================================
    db 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e, 0x12, 0x0e, 0x8b, 0x80, 0xe0, 0x01, 0x89, 0x46, 0xfa
    db 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x04, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0xd1, 0xe0
    db 0x50, 0xff, 0x76, 0xfa, 0xe8, 0x14, 0x76, 0x83, 0xc4, 0x06, 0x8b, 0x4e, 0xfe, 0xd1, 0xe1, 0x8b
    db 0xd9, 0x03, 0xdd, 0x89, 0x47, 0xe4, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x04, 0x00, 0x7c
    db 0xd4, 0xff, 0x76, 0xea, 0xff, 0x76, 0xe8, 0xff, 0x76, 0xe6, 0xff, 0x76, 0xe4, 0xff, 0x76, 0xf0
    db 0xff, 0x76, 0xf2, 0xff, 0x76, 0xf4, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x0c, 0x83, 0xe8, 0x76
    db 0xf2, 0x83, 0xc4, 0x12, 0xff, 0x76, 0xe4, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0xfc, 0xa1, 0x14
    db 0x0e, 0x05, 0x90, 0x00, 0x50, 0xe8, 0x2d, 0x75, 0x83, 0xc4, 0x08, 0xff, 0x76, 0xe6, 0xb8, 0x04
    db 0x00, 0x50, 0xff, 0x76, 0xfc, 0xa1, 0x14, 0x0e, 0x05, 0x90, 0x02, 0x50, 0xe8, 0x16, 0x75, 0x83
    db 0xc4, 0x08, 0x8b, 0x46, 0xf6, 0x48, 0x50, 0xff, 0x76, 0xf8, 0x8d, 0x46, 0xf4, 0x50, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x1e, 0xf0, 0x83, 0xc4, 0x0a, 0x85, 0xc0, 0x75, 0x30
    db 0x8b, 0x46, 0xf4, 0xb9, 0x06, 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xf0, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x03, 0x46, 0xf2, 0x89, 0x46, 0xfc, 0xff, 0x76, 0xe8, 0xb8, 0x04, 0x00, 0x50
    db 0xff, 0x76, 0xfc, 0xa1, 0x14, 0x0e, 0x05, 0x90, 0x00, 0x50, 0xe8, 0xc8, 0x74, 0x83, 0xc4, 0x08
    db 0xff, 0x76, 0xf6, 0x8b, 0x46, 0xf8, 0x48, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf0, 0x50
    db 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xd0, 0xef, 0x83, 0xc4, 0x0a, 0x85, 0xc0, 0x75, 0x30, 0x8b, 0x46
    db 0xf4, 0xb9, 0x06, 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xf0, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03
    db 0xc1, 0x03, 0x46, 0xf2, 0x89, 0x46, 0xfc, 0xff, 0x76, 0xea, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76
    db 0xfc, 0xa1, 0x14, 0x0e, 0x05, 0x90, 0x02, 0x50, 0xe8, 0x7a, 0x74, 0x83, 0xc4, 0x08, 0xa1, 0x12
    db 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e, 0x12, 0x0e, 0xff, 0x30, 0xe8, 0x8a, 0xf2, 0x59, 0x83
    db 0x7e, 0xee, 0x01, 0x75, 0x03, 0xe8, 0x25, 0xef, 0xff, 0x76, 0xec, 0xe8, 0xf5, 0xf9, 0x59, 0xc3
    db 0xb8, 0xf6, 0xff, 0xe8, 0xb6, 0x7b, 0x8b, 0x1e, 0x12, 0x0e, 0x8b, 0x36, 0x12, 0x8d, 0x8a, 0x80
    db 0x50, 0x0a, 0x2a, 0xe4, 0x50, 0xe8, 0x60, 0xf2, 0x59, 0xa1, 0x12, 0x8d, 0xd1, 0xe0, 0x8b, 0xf0
    db 0x8b, 0x1e, 0x12, 0x0e, 0x8b, 0x80, 0xc0, 0x03, 0x89, 0x46, 0xfe, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x0f, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xb2, 0x74, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xfa, 0xa1
    db 0x12, 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e, 0x12, 0x0e, 0xff, 0x30, 0xa1, 0x0c, 0x83, 0xb9
    db 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0xca, 0x73, 0x83, 0xc4, 0x04, 0x8b, 0xc8
    db 0x8b, 0x46, 0xfa, 0x3b, 0xc8, 0x75, 0x2a, 0xa1, 0x12, 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e
    db 0x12, 0x0e, 0xff, 0xb0, 0xe0, 0x01, 0xa1, 0x0c, 0x83, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14
    db 0x8d, 0x50, 0xe8, 0xa0, 0x73, 0x83, 0xc4, 0x04, 0x8b, 0xc8, 0x8b, 0x46, 0xfa, 0x3b, 0xc8, 0x74
    db 0x01, 0xc3, 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x4b, 0x74
    db 0x83, 0xc4, 0x06, 0x89, 0x46, 0xfc, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76
    db 0xfe, 0xe8, 0x37, 0x74, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf8, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0d
    db 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x23, 0x74, 0x83, 0xc4, 0x06, 0xeb, 0x36, 0xb8, 0x00, 0x00
    db 0x50, 0xff, 0x76, 0xfc, 0x8b, 0x46, 0xf8, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50
    db 0xe8, 0x0f, 0x73, 0x83, 0xc4, 0x06, 0xeb, 0x25, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xfc, 0x8b
    db 0x46, 0xf8, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0xf4, 0x72, 0x83, 0xc4
    db 0x06, 0xeb, 0x0a, 0x3d, 0x00, 0x00, 0x74, 0xc5, 0x3d, 0x01, 0x00, 0x74, 0xdb, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xd0, 0x73, 0x83, 0xc4, 0x06, 0x3d, 0x01
    db 0x00, 0x75, 0x2b, 0xff, 0x76, 0xfc, 0x8b, 0x46, 0xf8, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14
    db 0x8d, 0x50, 0xe8, 0xf0, 0x72, 0x83, 0xc4, 0x04, 0x50, 0xff, 0x76, 0xfc, 0x8b, 0x46, 0xf8, 0xb9
    db 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x42, 0x56, 0x50, 0xe8, 0xa7, 0x72, 0x83, 0xc4, 0x06, 0xc3, 0xb8
    db 0xfc, 0xff, 0xe8, 0x67, 0x7a, 0xa1, 0x12, 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e, 0x12, 0x0e
    db 0x8b, 0x80, 0xc0, 0x03, 0x89, 0x46, 0xfe, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0xfe, 0xe8, 0x76, 0x73, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xfc, 0x83, 0x7e, 0xfc, 0x00, 0x75
    db 0x06, 0xc7, 0x06, 0x4a, 0x9b, 0x00, 0x00, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xff
    db 0x76, 0xfe, 0xe8, 0x56, 0x73, 0x83, 0xc4, 0x06, 0x3d, 0x01, 0x00, 0x75, 0x1b, 0xb8, 0x02, 0x00
    db 0x50, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x40, 0x73, 0x83, 0xc4, 0x06, 0xa3, 0x24
    db 0x8f, 0x3b, 0x06, 0xee, 0x82, 0x74, 0x01, 0xc3, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50
    db 0xff, 0x76, 0xfe, 0xe8, 0x25, 0x73, 0x83, 0xc4, 0x06, 0x50, 0xa1, 0x12, 0x8d, 0xd1, 0xe0, 0x8b
    db 0xf0, 0x8b, 0x1e, 0x12, 0x0e, 0xff, 0x30, 0xe8, 0xeb, 0xf4, 0x83, 0xc4, 0x04, 0xff, 0x76, 0xfc
    db 0xe8, 0x10, 0xf8, 0x59, 0xc3, 0xb8, 0x00, 0x00, 0xe8, 0xd1, 0x79, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xa1, 0x12, 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e, 0x12, 0x0e, 0xff, 0xb0
    db 0xc0, 0x03, 0xe8, 0xe6, 0x72, 0x83, 0xc4, 0x06, 0x3d, 0x01, 0x00, 0x75, 0x1b, 0x8b, 0x36, 0x12
    db 0x8d, 0x8b, 0x1e, 0x12, 0x0e, 0x8a, 0x80, 0x50, 0x0a, 0x2a, 0xe4, 0x50, 0xe8, 0x00, 0x90, 0x59
    db 0x8b, 0x1e, 0x0a, 0x10, 0x89, 0x07, 0xeb, 0x14, 0x8b, 0x1e, 0x12, 0x0e, 0x8b, 0x36, 0x12, 0x8d
    db 0x8a, 0x80, 0x50, 0x0a, 0x2a, 0xe4, 0x8b, 0x1e, 0x0a, 0x10, 0x89, 0x07, 0xb8, 0x01, 0x00, 0x50
    db 0x50, 0x50, 0xe8, 0x80, 0x90, 0x83, 0xc4, 0x06, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xa1, 0x12, 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e, 0x12, 0x0e, 0xff, 0xb0, 0xc0, 0x03, 0xe8
    db 0x89, 0x72, 0x83, 0xc4, 0x06, 0x50, 0xe8, 0x8a, 0xf7, 0x59, 0xff, 0x06, 0x12, 0x8d, 0xc3, 0xb8
    db 0xfe, 0xff, 0xe8, 0x47, 0x79, 0xa1, 0x12, 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e, 0x12, 0x0e
    db 0x8b, 0x80, 0xc0, 0x03, 0x89, 0x46, 0xfe, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff
    db 0x76, 0xfe, 0xe8, 0x56, 0x72, 0x83, 0xc4, 0x06, 0x3d, 0x01, 0x00, 0x75, 0x1b, 0xb8, 0x02, 0x00
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x40, 0x72, 0x83, 0xc4, 0x06, 0xa3, 0x24
    db 0x8f, 0x3b, 0x06, 0xee, 0x82, 0x74, 0x01, 0xc3, 0x8b, 0x1e, 0x12, 0x0e, 0x8b, 0x36, 0x12, 0x8d
    db 0x8a, 0x80, 0x50, 0x0a, 0x2a, 0xe4, 0x8b, 0x1e, 0x0a, 0x10, 0x89, 0x07, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x11, 0x72, 0x83, 0xc4, 0x06, 0x3d, 0x01, 0x00
    db 0x75, 0x05, 0xb8, 0x00, 0x00, 0xeb, 0x03, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xe8, 0xcf, 0x8f, 0x83, 0xc4, 0x06, 0xc7, 0x06, 0x0a, 0x83, 0x12, 0x00, 0xff
    db 0x06, 0x12, 0x8d, 0xc3, 0xb8, 0xe8, 0xff, 0xe8, 0xb2, 0x78, 0x8b, 0x46, 0x06, 0x40, 0x89, 0x46
    db 0xf4, 0x8b, 0xd8, 0x8a, 0x87, 0x71, 0x71, 0x2a, 0xe4, 0x48, 0x89, 0x46, 0xfc, 0x8b, 0x46, 0x06
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x87, 0x56, 0x02, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0xb9, 0x0a, 0x00
    db 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xf2, 0x83, 0x7e, 0x04, 0x00, 0x74, 0x0f, 0xb9, 0x00, 0x00, 0x2b
    db 0xc8, 0x89, 0x4e, 0xf8, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0xeb, 0x0d, 0x89, 0x46, 0xf8, 0xb8, 0x00
    db 0x00, 0x2b, 0x87, 0x56, 0x02, 0x89, 0x46, 0xfa, 0xa1, 0x46, 0x8f, 0x03, 0x06, 0x44, 0x8f, 0x03
    db 0x06, 0xee, 0x82, 0x03, 0x46, 0x06, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x56, 0xf6, 0xc7
    db 0x46, 0xfe, 0x01, 0x00, 0xa1, 0xe8, 0x82, 0x40, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x16
    db 0xe8, 0x82, 0xe8, 0x29, 0xd8, 0x8a, 0x46, 0xf4, 0x88, 0x46, 0xe8, 0xc6, 0x46, 0xe9, 0x00, 0xb8
    db 0x00, 0x00, 0x50, 0x50, 0x8d, 0x46, 0xe8, 0x50, 0xff, 0x76, 0xf6, 0xb8, 0x90, 0x00, 0x50, 0xff
    db 0x76, 0xfc, 0xb8, 0xf8, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xf7, 0x6e, 0xf8
    db 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0x8b, 0x5e, 0xf4, 0x8a, 0x87, 0x71, 0x71, 0x2a, 0xe4
    db 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x03, 0x46, 0xfa, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x06, 0x8b
    db 0x4e, 0x08, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x6e, 0x03, 0x50, 0x8b, 0x46, 0xf4
    db 0xd1, 0xe0, 0x03, 0x46, 0xf6, 0x8b, 0xd8, 0x8a, 0x87, 0x28, 0x71, 0x2a, 0xe4, 0x8b, 0xc8, 0x58
    db 0x03, 0xc1, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x88, 0x73, 0x83, 0xc4, 0x16, 0xb8, 0xff, 0xff
    db 0x83, 0x7e, 0xf6, 0x00, 0x74, 0x0e, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x87, 0x4c
    db 0x02, 0x03, 0x46, 0x06, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x8b, 0x87, 0x4c, 0x02, 0x03, 0x46, 0x06, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xa1, 0x73, 0x83
    db 0xc4, 0x08, 0xb8, 0x8f, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x20, 0x00, 0x50, 0xb8, 0x48
    db 0x00, 0x50, 0xe8, 0x46, 0x6c, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x08, 0xb8, 0x10
    db 0x00, 0x50, 0xe8, 0x3c, 0x3b, 0x59, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x0a, 0x00, 0x7f
    db 0x03, 0xe9, 0x10, 0xff, 0xc3, 0xb8, 0x00, 0x00, 0xe8, 0x51, 0x77, 0x83, 0x7e, 0x04, 0x00, 0x7e
    db 0x24, 0x83, 0x7e, 0x06, 0x00, 0x74, 0x19, 0xa1, 0xe8, 0x82, 0x40, 0xb9, 0x02, 0x00, 0x99, 0xf7
    db 0xf9, 0x89, 0x16, 0xe8, 0x82, 0xe8, 0x95, 0xea, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x02, 0x3b, 0x59
    db 0xff, 0x4e, 0x04, 0xeb, 0xd6, 0xc3, 0xb8, 0xf6, 0xff, 0xe8, 0x20, 0x77, 0x8b, 0x1e, 0x14, 0x0e
    db 0x8b, 0x76, 0x08, 0x8a, 0x80, 0x90, 0x04, 0x2a, 0xe4, 0x03, 0x46, 0x0a, 0x89, 0x46, 0xfa, 0x8a
    db 0x80, 0xa0, 0x04, 0x2a, 0xe4, 0x03, 0x46, 0x0c, 0x89, 0x46, 0xf8, 0xb9, 0x06, 0x00, 0xd3, 0xe6
    db 0x8b, 0xc6, 0x8b, 0x4e, 0x0c, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x03, 0x46, 0x0a
    db 0x89, 0x46, 0xf6, 0xc7, 0x46, 0xfe, 0xff, 0xff, 0x8b, 0x46, 0x04, 0xe9, 0xa0, 0x00, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0xc7, 0x46, 0xfc, 0x01, 0x00, 0xe9, 0xb0, 0x00, 0xc7, 0x46, 0xfe, 0x01, 0x00
    db 0xc7, 0x46, 0xfc, 0x02, 0x00, 0xe9, 0xa3, 0x00, 0x8b, 0x46, 0xf8, 0x48, 0x50, 0xff, 0x76, 0xfa
    db 0x8d, 0x46, 0x08, 0x50, 0x8d, 0x46, 0x0c, 0x50, 0x8d, 0x46, 0x0a, 0x50, 0xe8, 0x68, 0xea, 0x83
    db 0xc4, 0x0a, 0x85, 0xc0, 0x75, 0x23, 0x8b, 0x46, 0x08, 0xb9, 0x06, 0x00, 0xd3, 0xe0, 0x8b, 0x4e
    db 0x0c, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x03, 0x46, 0x0a, 0x89, 0x46, 0xf6, 0xc7
    db 0x46, 0xfe, 0x00, 0x00, 0xc7, 0x46, 0xfc, 0x01, 0x00, 0xeb, 0x60, 0xff, 0x76, 0xf8, 0x8b, 0x46
    db 0xfa, 0x48, 0x50, 0x8d, 0x46, 0x08, 0x50, 0x8d, 0x46, 0x0c, 0x50, 0x8d, 0x46, 0x0a, 0x50, 0xe8
    db 0x25, 0xea, 0x83, 0xc4, 0x0a, 0x85, 0xc0, 0x75, 0x23, 0x8b, 0x46, 0x08, 0xb9, 0x06, 0x00, 0xd3
    db 0xe0, 0x8b, 0x4e, 0x0c, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x03, 0x46, 0x0a, 0x89
    db 0x46, 0xf6, 0xc7, 0x46, 0xfe, 0x01, 0x00, 0xc7, 0x46, 0xfc, 0x02, 0x00, 0xeb, 0x1d, 0x3d, 0x00
    db 0x00, 0x75, 0x03, 0xe9, 0x58, 0xff, 0x3d, 0x01, 0x00, 0x75, 0x03, 0xe9, 0x5d, 0xff, 0x3d, 0x02
    db 0x00, 0x75, 0x03, 0xe9, 0x62, 0xff, 0x3d, 0x03, 0x00, 0x74, 0xa0, 0x83, 0x7e, 0xfe, 0xff, 0x74
    db 0x55, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x0c, 0xff, 0x76, 0x0a
    db 0xff, 0x76, 0x08, 0xff, 0x76, 0xfc, 0xff, 0x36, 0x0c, 0x83, 0xe8, 0xca, 0xeb, 0x83, 0xc4, 0x12
    db 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x19, 0xff, 0x76, 0x06, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0xf6
    db 0xa1, 0x14, 0x0e, 0x05, 0x90, 0x00, 0x50, 0xe8, 0x7b, 0x6e, 0x83, 0xc4, 0x08, 0xeb, 0x17, 0xff
    db 0x76, 0x06, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xa1, 0x14, 0x0e, 0x05, 0x90, 0x02, 0x50
    db 0xe8, 0x62, 0x6e, 0x83, 0xc4, 0x08, 0xc3, 0xb8, 0xe2, 0xff, 0xe8, 0xbf, 0x75, 0xa1, 0x12, 0x8d
    db 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e, 0x12, 0x0e, 0x8b, 0x80, 0xe0, 0x01, 0xb9, 0x00, 0x01, 0x99
    db 0xf7, 0xf9, 0x89, 0x46, 0xea, 0x8b, 0x80, 0xe0, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x56, 0xe8, 0x8b
    db 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xe2, 0x8b, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x56, 0xe4, 0xa1
    db 0xee, 0x82, 0x2b, 0x46

math_loc_7e83:
    jmp far 0xb900:0x405
    add al, 0
    cwd
    idiv cx
    mov word [bp - 0x001a], dx
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0014], ax
    cmp word [bp - 0x0014], byte 0
    je short 0x7eb3
    mov ax, 0x12
    push ax
    call 0x6ac7
    pop cx
    mov ax, 0x10
    push ax
    call 0xd7aa
    pop cx
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0004], ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 3
    push ax
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 4
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov ax, 1
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0012], ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x000e], ax
    mov ax, 1
    cmp word [bp - 0x0012], byte 0
    je short 0x7f46
    mov ax, 6
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000e], byte 0
    je short 0x7f8b
    cmp word [bp - 0x0010], byte 0
    je short 0x7f8b
    cmp word [bp - 0x0012], byte 0
    je short 0x7f8b
    cmp word [bp - 0x001a], byte 0
    jne short 0x7f8b
    mov ax, word [0x82ee]
    cmp ax, word [bp - 0x0018]
    jne short 0x7f7e
    push word [bp - 0x0014]
    push word [bp - 0x001e]
    push word [bp - 0x001c]
    mov ax, 0
    push ax
    call 0x7b53
    add sp, byte 8
    jmp short 0x7f8b
    push word [bp - 0x0014]
    mov ax, 7
    push ax
    call 0x7cb4
    add sp, byte 4
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x000c]
    push word [bp - 0x0016]
    call 0x7ce5
    add sp, byte 0x0a
    cmp word [bp - 0x000e], byte 0
    je short 0x8007
    cmp word [bp - 0x0010], byte 0
    je short 0x8002
    cmp word [bp - 0x0012], byte 0
    jne short 0x7fe4
    cmp word [bp - 0x001a], byte 0
    jne short 0x7fe4
    mov ax, word [0x82ee]
    cmp ax, word [bp - 0x0018]
    jne short 0x7fd5
    push word [bp - 0x0014]
    push word [bp - 0x001e]
    push word [bp - 0x001c]
    mov ax, 1
    push ax
    call 0x7b53
    add sp, byte 8
    jmp short 0x7fe2
    push word [bp - 0x0014]
    mov ax, 7
    push ax
    call 0x7cb4
    add sp, byte 4
    jmp short 0x7ffd
    cmp word [bp - 0x001a], byte 1
    jl short 0x7ffd
    cmp word [bp - 0x001a], byte 3
    jg short 0x7ffd
    push word [bp - 0x0014]
    mov ax, 7
    push ax
    call 0x7cb4
    add sp, byte 4
    call loc_676c
    jmp short 0x8005
    call loc_676c
    jmp short 0x8022
    cmp word [bp - 0x0010], byte 0
    je short 0x801a
    push word [bp - 0x0014]
    mov ax, 7
    push ax
    call 0x7cb4
    add sp, byte 4
    mov ax, 2
    push ax
    call api_idx_0006_2
    pop cx
    cmp word [bp - 0x0014], byte 0
    je short 0x8036
    mov ax, 0x10
    push ax
    call 0xd6c6
    pop cx
    mov word [0x598e], 0xffff
    mov si, word [0x8d12]
    mov bx, word [0x0e12]
    cmp byte [bx + si + 0x960], 0
    jbe short 0x804d
    mov ax, 2
    push ax
    call loc_7242
    pop cx
    ret
    mov ax, 0xfff2
    call 0xf40b
    mov ax, 5
    push ax
    call api_idx_0006_2
    pop cx
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x000a], ax
    cmp word [bp - 0x000a], byte 0
    jne short 0x80da
    call 0xceb1
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short 0x80ad
    push ax
    call 0xca85
    pop cx
    test ax, ax
    jne short 0x80af
    jmp short 0x8099
    mov ax, 3
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0004]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d64]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x000a], ax
    jmp near 0x817c
    cmp word [bp - 0x000a], strict word 0xfe
    jne short 0x8125
    cmp word [bp - 0x0006], byte 0x15
    jne short 0x80f9
    mov ax, 1
    push ax
    mov ax, 0x12
    push ax
    push word [0x8af0]
    call 0x6fbf
    add sp, byte 6
    mov ax, 0x248
    imul word [0x8af0]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d68]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    push ax
    mov al, byte [bx + 0x5d7e]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 3
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000a], ax
    jmp short 0x817c
    cmp word [bp - 0x000a], strict word 0xff
    jne short 0x817c
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0004], 0
    jmp short 0x8168
    push word [bp - 0x0004]
    call 0xca85
    pop cx
    test ax, ax
    je short 0x8165
    mov ax, 0x248
    imul word [bp - 0x0004]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d77]
    db 0x2a, 0xe4 ; sub ah, ah
    add word [bp - 0x000a], ax
    mov ax, 2
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0004]
    call 0x6fbf
    add sp, byte 6
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x69c8]
    jl short 0x8138
    mov ax, word [bp - 0x000a]
    cwd
    idiv word [0x69c8]
    mov word [bp - 0x000a], ax
    push word [bp - 0x0006]
    call 0xb7a9
    pop cx
    mov word [bp - 0x000c], ax
    cmp ax, word [bp - 0x000a]
    jge short 0x819a
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si]
    jmp short 0x81a9
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x000e], ax
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short 0x81f4
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 2
    push ax
    mov ax, 9
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    ret
    mov ax, 0xfff0
    call 0xf40b
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0004], ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, 3
    push ax
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 4
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0010], ax
    mov ax, word [bp - 0x000a]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp - 0x0006]
    mov word [bp - 0x0002], ax
    mov ax, word [bx + si]
    mov word [bp - 0x000c], ax
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x000e], ax
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x000a]
    mov ax, 5
    push ax
    push word [0x830c]
    call 0x69d6
    add sp, byte 0x12
    push word [bp - 0x000c]
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x4b0
    push ax
    call 0xeca4
    add sp, byte 8
    push word [bp - 0x000e]
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x7b0
    push ax
    call 0xeca4
    add sp, byte 8
    cmp word [bp - 0x0010], byte 0
    jle short 0x82f6
    push word [bp - 0x0010]
    call 0xd7aa
    pop cx
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
loc_830a:
    je short 0x830f
    jmp near 0x8380
    call loc_676c
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 5
    je short 0x8329
    cmp ax, strict word 6
    je short 0x8329
    cmp ax, strict word 0xa
    je short 0x8329
    cmp ax, strict word 0xb
    jne short 0x8380
    cmp ax, strict word 6
    je short 0x8338
    cmp ax, strict word 0xa
    je short 0x8338
    cmp ax, strict word 0xb
    jne short 0x8349
    mov ax, 0x80a
    cmp word [bp - 0x000c], byte 6
    jne short 0x8344
    mov ax, 0x7fc
    push ax
    call api_idx_0050
    pop cx
    cmp word [bp - 0x000c], byte 5
    je short 0x8355
    cmp word [bp - 0x000c], byte 6
    jne short 0x835a
    mov ax, 4
    jmp short 0x835d
    mov ax, 1
    push ax
    call 0xb7e0
    pop cx
    mov ax, 2
    push ax
    call api_idx_0006_2
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [bp - 0x0010], byte 0
    jle short 0x839c
    mov ax, 0x10
    push ax
    call 0xb7e0
    pop cx
    mov ax, 0x10
    push ax
    call 0xd6c6
    pop cx
    mov word [0x598e], 0xffff
    mov ax, 2
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov ax, word [bp + 0x6]
    cmp word [bp + 0x8], byte 0
    jne short 0x83c5
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x4]
    cmp word [bp + 0x8], byte 0
    jne short 0x83d4
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0002], byte 0
    je short 0x840f
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    cmp word [bp - 0x0004], byte 0
    je short 0x8447
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    ret
    mov ax, 0xfff2
    call 0xf40b
    mov word [bp - 0x000e], 1
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si]
    mov word [bp - 0x000a], ax
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0008], ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0002], 0
    jmp short 0x84e7
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp - 0x0002]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0006]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c34]
    cmp ax, word [bp - 0x000a]
    jne short 0x84ce
    mov al, byte [bx + 0x5c3b]
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 1
    jne short 0x84c9
    cmp word [bp - 0x000c], byte 0
    je short 0x84ce
    mov word [bp - 0x000e], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short 0x848f
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 2
    jl short 0x848a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x8485
    push word [bp - 0x000e]
    mov si, word [0x8d12]
    mov bx, word [0x0e12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    shl si, 1
    push word [bx + si + 0x1e0]
    call 0x83b3
    add sp, byte 6
    cmp word [bp - 0x000e], byte 0
    je short 0x8529
    mov ax, 1
    push ax
    mov ax, 3
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    test ax, ax
    je short 0x853f
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    ret
    mov ax, 0
    call 0xf40b
    push word [bp + 0x4]
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x1e0]
    push word [bx + si]
    call 0x83b3
    add sp, byte 6
    push word [bp + 0x6]
    call loc_7242
    pop cx
    ret
    mov ax, 0xffee
    call 0xf40b
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 5
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov ax, 5
    push ax
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0012], ax
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call 0xf9cd
    mov cx, 0x3c
    mov bx, 0
    call 0xf99f
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0006]
    push ax
    cmp ax, word [bp - 0x0004]
    pop ax
    jge short 0x85f6
    mov ax, 0x18
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x000a]
    cmp ax, word [bp - 0x0004]
    jl short 0x860b
    cmp ax, word [bp - 0x0008]
    jge short 0x860b
    mov ax, 0
    jmp short 0x860e
    mov ax, 1
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp - 0x0004]
    jge short 0x862f
    cmp word [bp - 0x000a], byte 0
    jl short 0x8629
    cmp ax, word [bp - 0x000a]
    jle short 0x8629
    mov ax, 0
    jmp short 0x862c
    mov ax, word [bp - 0x000e]
    mov word [bp - 0x000e], ax
    cmp word [bp - 0x0012], byte 0
    jne short 0x8643
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    call 0x8540
    add sp, byte 4
    jmp short 0x86a8
    cmp word [bp - 0x000e], byte 0
    jne short 0x8658
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si]
    jmp short 0x8667
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jle short 0x86a1
    mov ax, 0
    push ax
    push word [bp - 0x000c]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bp - 0x000c]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    push word [bp - 0x0010]
    call loc_7242
    pop cx
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x3c0]
    call 0xed3a
    add sp, byte 6
    push ax
    mov si, word [0x8d12]
    mov bx, word [0x0e12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 6
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b59], 0
    je short 0x86ee
    mov ax, 0
    jmp short 0x86f1
    mov ax, 1
    push ax
    call 0x8540
    add sp, byte 4
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x3c0]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x3c0]
    call 0xed3a
    add sp, byte 6
    test ax, ax
    jne short 0x8765
    push word [bp - 0x0002]
    mov si, word [0x8d12]
    mov bx, word [0x0e12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0x5842
    push ax
    call 0xec74
    add sp, byte 4
    push ax
    call 0x8540
    add sp, byte 4
    jmp short 0x8793
    push word [bp - 0x0002]
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0x26
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jne short 0x8789
    mov ax, 1
    jmp short 0x878c
    mov ax, 0
    push ax
    call 0x8540
    add sp, byte 4
    ret
    mov ax, 0xfff4
    call 0xf40b
    mov ax, word [0x8d12]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 4
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0004], 0
    jmp short 0x8818
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0004]
    push ax
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec74
    add sp, byte 4
    cmp ax, word [bp - 0x000c]
    je short 0x8815
    inc word [bp - 0x0006]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x000a]
    jl short 0x87f4
    mov ax, 1
    push ax
    mov ax, 0xe
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    push ax
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    imul word [bp - 0x0006]
    shl si, 1
    mov cx, word [bx + si]
    db 0x03, 0xc1 ; add ax, cx
    push ax
    call 0x6f14
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    ret
loc_8867:
    mov ax, 0
    call 0xf40b
    mov word [0x9b4a], 1
    mov word [0x8f24], 0xffff
    push word [0x8d12]
    push word [0x8f3e]
    push word [0x8f40]
    push word [0x8f42]
    call api_idx_0002_9
    add sp, byte 8
    mov word [0x8d12], ax
    cmp ax, strict word 0xffff
    jne short 0x889a
    jmp near 0x89cf
    mov word [0x9bd0], 1
    mov bx, word [0x0e12]
    mov si, ax
    mov al, byte [bx + si + 0x5a0]
    sub ah, ah
    jmp near 0x89ac

    db 0xe8, 0x04, 0xeb, 0xe9, 0x04, 0x01, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x74, 0x03, 0xe8, 0x75, 0xe7
    db 0xe9, 0xf7, 0x00, 0xe8, 0x89, 0xeb, 0xe9, 0xf1, 0x00, 0xe8, 0x69, 0xf1, 0xe9, 0xeb, 0x00, 0xe8
    db 0xed, 0xf1, 0xe9, 0xe5, 0x00, 0xe8, 0x71, 0xfb, 0xe9, 0xdf, 0x00, 0xe8, 0xd1, 0xec, 0xe9, 0xd9
    db 0x00, 0xa1, 0x12, 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e, 0x12, 0x0e, 0x83, 0x38, 0x00, 0x7e
    db 0x0e, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x30, 0xe8, 0x1b, 0xe6, 0x83, 0xc4, 0x04, 0xeb, 0x24, 0xb8
    db 0x01, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xa1, 0x12, 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e
    db 0x12, 0x0e, 0xff, 0xb0, 0xc0, 0x03, 0xe8, 0x22, 0x64, 0x83, 0xc4, 0x06, 0x85, 0xc0, 0x74, 0x03
    db 0xe8, 0x20, 0xec, 0xe9, 0x94, 0x00, 0xc7, 0x06, 0x0a, 0x83, 0x1d, 0x00, 0xe9, 0x8b, 0x00, 0xe8
    db 0x1c, 0xed, 0xe9, 0x85, 0x00, 0xe8, 0x18, 0xef, 0xe9, 0x7f, 0x00, 0xc7, 0x06, 0x0a, 0x83, 0x1c
    db 0x00, 0xe9, 0x76, 0x00, 0xe8, 0x22, 0xfc, 0xeb, 0x71, 0xe8, 0x5e, 0xfd, 0xeb, 0x6c, 0xeb, 0x6a
    db 0xe8, 0x4c, 0xf0, 0xeb, 0x65, 0xe8, 0x3d, 0xfe, 0xeb, 0x60, 0xe8, 0xda, 0xea, 0xeb, 0x5b, 0xeb
    db 0x59, 0xeb, 0x57, 0xe8, 0xe1, 0xf4, 0xeb, 0x52, 0xe8, 0xe4, 0xf6, 0xeb, 0x4d, 0xe8, 0x9c, 0xf8
    db 0xeb, 0x48, 0xe8, 0x85, 0xfd, 0xeb, 0x43, 0xeb, 0x41, 0x00, 0xda, 0xf6, 0xd8, 0xfc, 0xd8, 0x09
    db 0xd9, 0x0f, 0xd9, 0x15, 0xd9, 0x1b, 0xd9, 0x21, 0xd9, 0x27, 0xd9, 0x6c, 0xd9, 0x75, 0xd9, 0x7b
    db 0xd9, 0x81, 0xd9, 0x8a, 0xd9, 0x8f, 0xd9, 0x94, 0xd9, 0x96, 0xd9, 0x9b, 0xd9, 0xa0, 0xd9, 0xa5
    db 0xd9, 0xa7, 0xd9, 0xa9, 0xd9, 0xae, 0xd9, 0xb3, 0xd9, 0xb8, 0xd9, 0xbd, 0xd9

    cmp ax, strict word 0x1a
    jae short 0x89b9
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x2641]
    cmp word [0x830a], byte 5
    je short 0x89c1
    ret
    cmp word [0x9bd0], byte 1
    jne short 0x89cc
    inc word [0x8d12]
    jmp near 0x8879
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0002], ax
    jmp short 0x8a09
    mov ax, word [bp - 0x0002]
    mov cx, 8
    cwd
    idiv cx
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + si]
    cbw
    push ax
    mov ax, word [bp - 0x0002]
    cwd
    idiv cx
    db 0x8b, 0xca ; mov cx, dx
    mov dx, 1
    shl dx, cl
    db 0x8b, 0xca ; mov cx, dx
    not cx
    pop ax
    db 0x23, 0xc1 ; and ax, cx
    mov byte [bx + si], al
    inc word [bp - 0x0002]
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    cmp ax, word [bp - 0x0002]
    jg short 0x89de
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [0x8f42]
    mov word [bp - 0x0002], ax
    mov ax, 6
    push ax
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x4b0
    push ax
    call 0xeca4
    add sp, byte 8
    push word [0x82ee]
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x7b0
    push ax
    call 0xeca4
    add sp, byte 8
    call loc_676c
    mov ax, 0x7fc
    push ax
    call api_idx_0050
    pop cx
    mov ax, 4
    push ax
    call 0xb7e0
    pop cx
    mov ax, 2
    push ax
    call api_idx_0006_2
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    push word [0x8f40]
    push word [0x8f42]
    push word [0x8f3e]
    mov ax, 1
    push ax
    push word [0x82ee]
    call 0x7ce5
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push word [0x8f40]
    push word [0x8f42]
    push word [0x8f3e]
    mov ax, 5
    push ax
    push word [0x830c]
    call 0x69d6
    add sp, byte 0x12
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x4b0
    push ax
    call 0xeca4
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x7b0
    push ax
    call 0xeca4
    add sp, byte 8
    mov ax, 0x12
    push ax
    call 0x6ac7
    pop cx
    call loc_676c
    mov ax, word [0x82ee]
    shl ax, 1
    add ax, strict word 8
    push ax
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov ax, word [0x0e12]
    db 0x03, 0xc1 ; add ax, cx
    add ax, 0x3c0
    push ax
    call 0x89d0
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x3c0]
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    mov ax, 6
    push ax
    push word [0x830c]
    call 0x69d6
    add sp, byte 0x12
    ret
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    mov ax, 0xe
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short 0x8b9b
    mov ax, 2
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    cmp ax, word [0x82ee]
    je short 0x8b9b
    mov ax, 0
    ret
    mov bx, word [0x0e12]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0x6ac7
    pop cx
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    push ax
    push word [bp - 0x0004]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    cmp word [bx + si + 0x1e0], byte 0
    jle short 0x8c17
    db 0xb8
loc_8bfe:
    add byte [bx + si], al
    push ax
    push word [bx + si + 0x1e0]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov word [0x8d12], ax
    mov ax, 2
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    push ax
    call loc_7242
    pop cx
    mov ax, word [bp + 0x4]
    inc ax
    mov word [0x8d12], ax
    mov word [0x91a8], 1
    mov ax, 1
    ret
    mov ax, 0xfff6
    call 0xf40b
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [0x8f42]
    mov word [bp - 0x0002], ax
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call loc_2f55
    add sp, byte 6
    mov word [bp - 0x000a], 0
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 5
    je short 0x8c90
    cmp ax, strict word 0xa
    je short 0x8c90
    cmp ax, strict word 0xb
    jne short 0x8ca6
    mov ax, word [bp - 0x0008]
    cmp ax, word [0x82ee]
    jne short 0x8ca6
    cmp word [bp + 0x4], byte 0
    je short 0x8ca4
    mov word [bp - 0x000a], 2
    jmp short 0x8cc1
    cmp word [bp + 0x4], byte 0
    je short 0x8cc1
    mov word [bp - 0x000a], 1
    mov ax, 0x7fb
    push ax
    call api_idx_0050
    pop cx
    push word [0x905a]
    call api_idx_0006_2
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    mov bx, word [0x0e12]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0xb40]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0004], ax
    push word [bp - 0x0004]
    push word [0x8f3e]
    push word [0x8f40]
    push word [0x8f42]
    call api_idx_0002_9
    add sp, byte 8
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x8d08
    jmp near 0x8d82
    mov bx, word [0x0e12]
    db 0x8b, 0xf0 ; mov si, ax
    cmp byte [bx + si + 0x5a0], 7
    jne short 0x8d3b
    mov ax, 2
    push ax
    mov ax, word [0x82ee]
    shl ax, 1
    add ax, strict word 8
    push ax
    shl si, 1
    push word [bx + si + 0x3c0]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 2
    jne short 0x8d3b
    push word [bp - 0x0004]
    call 0x8a14
    pop cx
    ret
    mov bx, word [0x0e12]
    mov si, word [bp - 0x0004]
    cmp byte [bx + si + 0x5a0], 8
    jne short 0x8d54
    push si
    call 0x8b52
    pop cx
    cmp ax, strict word 1
    jne short 0x8d54
    ret
    mov bx, word [0x0e12]
    mov si, word [bp - 0x0004]
    cmp byte [bx + si + 0x5a0], 0x19
    jne short 0x8d7c
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x8f24], ax
    cmp ax, word [0x82ee]
    jne short 0x8d7c
    mov word [0x830a], 0x1b
    mov word [0x8d12], si
    ret
    inc word [bp - 0x0004]
    jmp near 0x8ce8
    cmp word [bp - 0x000a], byte 2
    jne short 0x8dae
    mov ax, 0x7fb
    push ax
    call api_idx_0050
    pop cx
    push word [0x905a]
    call api_idx_0006_2
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [bp - 0x000a], byte 0
    je short 0x8dd2
    mov ax, 0x7fd
    push ax
    call api_idx_0050
    pop cx
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    mov ax, word [0x905a]
    mov cx, 2
    cwd
    idiv cx
    push ax
    call api_idx_0006_2
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    mov ax, 0xe
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short 0x8e32
    mov ax, 2
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    cmp ax, word [0x82ee]
    je short 0x8e32
    mov ax, 0
    ret
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    test ax, ax
    jne short 0x8e4b
    mov ax, 0
    ret
    mov ax, word [bp + 0x4]
    mov word [0x8d12], ax
    mov bx, word [0x0e12]
    db 0x8b, 0xf0 ; mov si, ax
    mov al, byte [bx + si + 0xa50]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x84a0], ax
    mov word [0x830a], 0x15
    mov ax, 1
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov bx, word [0x0e12]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0xb40]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0002], ax
    push word [bp - 0x0002]
    push word [0x8f3e]
    push word [0x8f40]
    push word [0x8f42]
    call api_idx_0002_9
    add sp, byte 8
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x8ea1
    jmp near 0x8f19
    mov bx, word [0x0e12]
    db 0x8b, 0xf0 ; mov si, ax
    cmp byte [bx + si + 0x5a0], 3
    jne short 0x8eb9
    push ax
    call 0x8de9
    pop cx
    cmp ax, strict word 1
    jne short 0x8eb9
    ret
    mov bx, word [0x0e12]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si + 0x5a0], 7
    jne short 0x8f13
    mov ax, 2
    push ax
    mov ax, word [0x82ee]
    shl ax, 1
    push ax
    shl si, 1
    push word [bx + si + 0x3c0]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
    je short 0x8f06
    mov ax, 2
    push ax
    mov ax, word [0x82ee]
    shl ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x3c0]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 2
    jne short 0x8f13
    mov ax, word [bp - 0x0002]
    mov word [0x84a0], ax
    mov word [0x830a], 0x1a
    ret
    inc word [bp - 0x0002]
    jmp near 0x8e81
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov bx, word [0x0e12]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0xb40]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0002], ax
    push word [bp - 0x0002]
    push word [0x8f3e]
    push word [0x8f40]
    push word [0x8f42]
    call api_idx_0002_9
    add sp, byte 8
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x8f93
    mov bx, word [0x0e12]
    db 0x8b, 0xf0 ; mov si, ax
    cmp byte [bx + si + 0x5a0], 0xf
    jne short 0x8f8e
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    cmp word [bx + si + 0x1e0], byte 2
    je short 0x8f77
    mov ax, word [0x82ee]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    cmp ax, word [bx + si + 0x1e0]
    jne short 0x8f8e
    cmp word [bx + si + 0x1e0], byte 2
    jne short 0x8f86
    mov ax, 8
    push ax
    call 0xb7e0
    pop cx
    push word [bp - 0x0002]
    call 0x72a6
    pop cx
    ret
    inc word [bp - 0x0002]
    jmp short 0x8f31
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7590], 0xff
    je short 0x8fbf
    mov al, byte [bx - 0x7590]
    cbw
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x642e], byte 0
    je short 0x9017
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7592]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short 0x8fde
    mov al, byte [bx - 0x7591]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x6]
    je short 0x8ff4
    mov al, byte [bx - 0x7591]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short 0x9017
    mov al, byte [bx - 0x7592]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short 0x9017
    mov ax, word [bp - 0x0002]
    mov cx, word [0x9be6]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6418], ax
    inc word [0x9be6]
    mov ax, word [0x9be6]
    cmp ax, strict word 0xc
    jl short 0x9013
    mov ax, 0
    ret
    mov ax, 1
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jge short 0x9025
    jmp near 0x8f9f
    mov ax, 0
    ret
    mov ax, 0xffb8
    call 0xf40b
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8f94
    add sp, byte 4
    test ax, ax
    je short 0x9043
    mov ax, 1
    ret
    cmp word [bp + 0x8], byte 0
    jne short 0x904d
    mov ax, 0
    ret
    mov ax, 1
    mov cx, word [bp + 0xa]
    cmp cx, word [0x9c00]
    jge short 0x905c
    mov ax, 2
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0004], 0
    jmp near 0x9200
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7592]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x4]
    je short 0x9083
    jmp near 0x912f
    cmp byte [bx - 0x7590], 0xff
    je short 0x909d
    mov al, byte [bx - 0x7590]
    cbw
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x642e], byte 0
    jne short 0x909d
    jmp near 0x912f
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x63fe], byte 0
    je short 0x90ae
    jmp near 0x912c
    cmp word [bp - 0x0004], byte 0
    je short 0x90ba
    mov word [bx - 0x63fe], 1
    mov ax, word [0x9be6]
    mov word [bp - 0x0006], ax
    mov ax, 0x40
    push ax
    lea ax, word [bp - 0x0048]
    push ax
    mov ax, 0x9c02
    push ax
    call 0xfedc
    add sp, byte 6
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    push word [bp - 0x0004]
    push word [bp + 0x6]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7591]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0x9029
    add sp, byte 8
    test ax, ax
    je short 0x9114
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7591]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bp + 0x4]
    call 0x8f94
    add sp, byte 4
    mov ax, 1
    ret
    mov ax, word [bp - 0x0006]
    mov word [0x9be6], ax
    mov ax, 0x40
    push ax
    mov ax, 0x9c02
    push ax
    lea ax, word [bp - 0x0048]
    push ax
    call 0xfedc
    add sp, byte 6
    jmp near 0x91ef
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7591]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x4]
    je short 0x9146
    jmp near 0x91ef
    cmp byte [bx - 0x7590], 0xff
    je short 0x9160
    mov al, byte [bx - 0x7590]
    cbw
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x642e], byte 0
    jne short 0x9160
    jmp near 0x91ef
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x63fe], byte 0
    je short 0x9171
    jmp near 0x91ef
    cmp word [bp - 0x0004], byte 0
    je short 0x917d
    mov word [bx - 0x63fe], 1
    mov ax, word [0x9be6]
    mov word [bp - 0x0006], ax
    mov ax, 0x40
    push ax
    lea ax, word [bp - 0x0048]
    push ax
    mov ax, 0x9c02
    push ax
    call 0xfedc
    add sp, byte 6
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    push word [bp - 0x0004]
    push word [bp + 0x6]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7592]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0x9029
    add sp, byte 8
    test ax, ax
    je short 0x91d7
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7592]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bp + 0x4]
    call 0x8f94
    add sp, byte 4
    mov ax, 1
math_loc_91d6:
    ret
    mov ax, word [bp - 0x0006]
    mov word [0x9be6], ax
    mov ax, 0x40
    push ax
    mov ax, 0x9c02
    push ax
    lea ax, word [bp - 0x0048]
    push ax
    call 0xfedc
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jge short 0x91fd
    jmp near 0x906c
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jge short 0x920b
    jmp near 0x9067
    mov ax, 0
    ret
    mov ax, 0xfffa
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x9bd2
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b57], 0xff
    je short 0x926d
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x926d
    mov ax, 6
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b57]
    cbw
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x642e], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short 0x922c
    mov ax, 0xe
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9296
    mov word [0x9bdc], 1
    mov byte [0x8aac], 6
    mov ax, 0xd
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x92b9
    mov word [0x9bde], 1
    mov word [bp - 0x0006], 1
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7592]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x8]
    je short 0x92e2
    mov al, byte [bx - 0x7591]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x8]
    jne short 0x92fe
    cmp byte [bx - 0x7590], 0xff
    je short 0x92f9
    mov al, byte [bx - 0x7590]
    cbw
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x642e], byte 1
    jne short 0x92fe
    mov word [bp - 0x0006], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short 0x92c3
    cmp word [bp - 0x0006], byte 0
    je short 0x9313
    mov ax, 0
    ret
    mov word [0x9c00], 0
    mov word [0x9be6], 0
    mov ax, 0
    push ax
    mov ax, 0x40
    push ax
    mov ax, 0x9c02
    push ax
    call 0xf306
    add sp, byte 6
    inc word [0x9c00]
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0x9029
    add sp, byte 8
    test ax, ax
    jne short 0x9354
    cmp word [0x9c00], byte 0x14
    jl short 0x9319
    cmp word [0x9c00], byte 0x14
    jl short 0x935f
    mov ax, 0
    ret
    mov word [bp - 0x0002], 0
    jmp short 0x9387
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x6418]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b10], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9be6]
    jl short 0x9366
    mov ax, word [0x9be6]
    dec ax
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b11], al
    mov byte [bx - 0x7b13], 0
    mov ax, 1
    ret
api_idx_0002_10:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0xf
    imul word [bp + 0x4]
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x77d4]
    cbw
    cmp ax, word [bp + 0x6]
    jne short 0x93e9
    mov al, byte [bx - 0x77d3]
    cbw
    cmp ax, word [bp + 0x8]
    jne short 0x93e9
    mov al, byte [bx - 0x77d2]
    cbw
    cmp ax, word [bp + 0xa]
    jne short 0x93e9
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short 0x93b6
    mov al, byte [bp + 0x6]
    push ax
    mov ax, 0xf
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b02]
    sub ah, ah
    mov dx, 3
    imul dx
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x77d4], al
    mov al, byte [bp + 0x8]
    mov byte [bx - 0x77d3], al
    mov al, byte [bp + 0xa]
    mov byte [bx - 0x77d2], al
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b02]
    sub ah, ah
    inc ax
    mov cx, 5
    cwd
    idiv cx
    mov ax, dx
    mov byte [bx - 0x7b02], al
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b14]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short 0x9466
    mov ax, 1
    jmp short 0x9469
    mov ax, 0
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 3
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov al, byte [bx - 0x7b14]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bp + 0x4]
    call 0x920f
    add sp, byte 6
    test ax, ax
    jne short 0x94a5
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 0
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0x94eb
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov al, byte [bx - 0x7aff]
    cbw
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jge short 0x94eb
    mov al, byte [bx - 0x7b17]
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call 0x946a
    pop cx
    mov ax, 1
    ret
    mov ax, 0
    ret
    mov ax, 0xffc6
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x34
    push ax
    lea ax, word [bp - 0x003a]
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x003a], 1
    mov word [bp - 0x0038], 1
    mov word [bp - 0x0036], 1
    mov word [bp - 0x0030], 1
    mov word [bp - 0x002c], 1
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7688], 0x1b
    jne short 0x953a
    mov byte [bx - 0x7688], 8
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x956b
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7688]
    db 0x2a, 0xe4 ; sub ah, ah
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    db 0x03, 0xdd ; add bx, bp
    mov word [bx - 0x003a], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x1a
    jl short 0x9525
    mov word [bp - 0x0002], 0
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x95a0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    db 0x03, 0xdd ; add bx, bp
    mov word [bx - 0x003a], 2
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x1a
    jl short 0x957b
    push word [bp + 0x4]
    call 0x94a6
    pop cx
    test ax, ax
    je short 0x95b7
    ret
    mov ax, 0x1a
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x768a]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp - 0x0004], byte 0
    jle short 0x95f7
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0xc
    imul cx
    add ax, word [bp - 0x0004]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    db 0x03, 0xdd ; add bx, bp
    cmp word [bx - 0x003a], byte 0
    je short 0x95b7
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    add ax, word [bp - 0x0006]
    cmp ax, strict word 0xffdd
    jl short 0x95b7
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0x963f
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x963f
    jmp near 0x95b7
    mov al, byte [bp - 0x0002]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call 0x946a
    pop cx
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 0x64
    push ax
    mov ax, 0xff9c
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0xc
    imul cx
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    add ax, word [bp + 0x8]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0xc
    imul cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd0 ; mov dx, ax
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xd9 ; mov bx, cx
    pop ax
    mov byte [bx - 0x7622], al
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bp + 0x4]
    call 0x9448
    add sp, byte 4
    test ax, ax
    je short 0x9746
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    add bx, strict word 0x8506
    db 0x8b, 0xc3 ; mov ax, bx
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x9746
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 6
    push ax
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 8
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 2
    mov byte [bx - 0x7b13], 0
    ret
    push word [bp + 0x4]
    call 0x94a6
    pop cx
    test ax, ax
    je short 0x9752
    ret
    mov word [bp - 0x0002], 0
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x97e0
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x97dd
    mov ax, 6
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b58]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0004], ax
    push ax
    push word [bp + 0x4]
    call 0x9448
    add sp, byte 4
    test ax, ax
    je short 0x97c4
    mov al, byte [bp - 0x0002]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b12], al
    mov byte [bx - 0x7b16], 4
    mov byte [bx - 0x7b13], 0
    ret
    mov al, byte [bp - 0x0004]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call 0x946a
    pop cx
    ret
    jmp near 0x98b6
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x97fa
    jmp near 0x98ae
    mov ax, 6
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b59], 1
    jne short 0x9825
    mov al, byte [bx - 0x7b5a]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call 0x946a
    pop cx
    jmp near 0x98ad
    mov ax, 6
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b59], 0
    jne short 0x98ad
    mov al, byte [bx - 0x7b5a]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0x26
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b15]
    push ax
    mov ax, word [bp + 0x4]
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b15], al
    mov ax, 6
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b5a]
    push ax
    mov ax, word [bp + 0x4]
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b12], al
    push word [bp + 0x4]
    call 0x946a
    pop cx
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 0
    jne short 0x9889
    push word [bp + 0x4]
    call 0x94ef
    pop cx
    ret
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 5
    mov al, byte [bx - 0x7b12]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 8
    ret
    push word [bp + 0x4]
    call 0x94ef
    pop cx
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jge short 0x98c4
    jmp near 0x9757
    push word [bp + 0x4]
    call 0x94ef
    pop cx
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0002], ax
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7689], 0xff
    je short 0x991f
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x991f
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7689]
    cbw
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call 0xec41
    add sp, byte 6
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov al, byte [bp + 0x4]
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    db 0x8b, 0xd8 ; mov bx, ax
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
    jl short 0x996f
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
    je short 0x99dc
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
    mov ax, 0xfffa
    call 0xf40b
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b59], 0
    jbe short 0x9a71
    mov al, byte [bx - 0x7b5a]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x0006]
    jne short 0x9a71
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9a70
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x9a70
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x9a70
    push word [bp - 0x0006]
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 8
    push word [bp - 0x0002]
    mov ax, 0xffff
    push ax
    push word [bp + 0x4]
    call 0x9920
    add sp, byte 6
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jge short 0x9a7f
    jmp near 0x99f9
    ret
    mov ax, 0xfff0
    call 0xf40b
    mov word [bp - 0x000a], 0xffff
    mov word [bp - 0x000c], 0xffff
    mov word [bp - 0x0002], 0xa
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8502
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9ae8
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x850a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x9ae8
    mov ax, 6
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b58]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0006], ax
    push ax
    push word [bp + 0x4]
    call 0x9448
    add sp, byte 4
    test ax, ax
    jne short 0x9ae8
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x000a], ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8502
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9b1c
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x9b1c
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x000c], ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9b4a
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8504
    push ax
    call 0xec41
    add sp, byte 6
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8504
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9b78
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov cl, byte [bx - 0x7b18]
    pop ax
    db 0x3a, 0xc1 ; cmp al, cl
    je short 0x9b99
    jmp near 0x9c61
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9bc7
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x850a
    push ax
    call 0xec41
    add sp, byte 6
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x850a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9bf5
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9c2b
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x850a
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x850a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9c61
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec41
    add sp, byte 6
    dec word [bp - 0x0002]
    jl short 0x9c69
    jmp near 0x9a95
    cmp word [bp + 0x8], byte 0
    jle short 0x9c99
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x9658
    add sp, byte 6
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    push ax
    push word [bp + 0x4]
    push word [bp + 0x6]
    call 0x9658
    add sp, byte 6
    mov ax, 0x16
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x63be], 1
    mov ax, 0x16
    imul word [bp + 0x6]
    add ax, word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x63be], 1
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    mov cx, 0xa
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x000e], ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x0010], ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    cmp al, byte [bx - 0x7b18]
    jne short 0x9d2e
    cmp byte [bx - 0x7b16], 1
    jne short 0x9d2e
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7aff], 0x41
    jge short 0x9d2e
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x9d2e
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    inc byte [bx - 0x7aff]
    cmp word [bp - 0x000c], byte 0xff
    jne short 0x9d37
    jmp near 0x9dd3
    cmp word [bp - 0x000a], byte 0xff
    jne short 0x9db1
    mov ax, 0x32
    sub ax, word [bp - 0x000e]
    cmp ax, word [bp + 0x8]
    jg short 0x9d56
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    inc ax
    cmp ax, word [bp - 0x000e]
    jle short 0x9d57
    ret
    mov ax, 0x64
    push ax
    mov ax, 1
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    add ax, word [bp - 0x000e]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7aff], al
    mov ax, 0x64
    push ax
    mov ax, 1
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    sub ax, word [bp - 0x000e]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7aff], al
    push word [bp + 0x6]
    mov ax, 3
    push ax
    push word [bp - 0x000c]
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 8
    push word [bp - 0x000c]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x9920
    add sp, byte 6
    cmp word [bp - 0x000a], byte 0xff
    jne short 0x9ddc
    jmp near 0x9e78
    cmp word [bp - 0x000c], byte 0xff
    jne short 0x9e56
    mov ax, 0x32
    sub ax, word [bp - 0x0010]
    cmp ax, word [bp + 0x8]
    jg short 0x9dfb
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    inc ax
    cmp ax, word [bp - 0x0010]
    jle short 0x9dfc
    ret
    mov ax, 0x64
    push ax
    mov ax, 1
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    add ax, word [bp - 0x0010]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7aff], al
    mov ax, 0x64
    push ax
    mov ax, 1
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    sub ax, word [bp - 0x0010]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7aff], al
    push word [bp + 0x4]
    mov ax, 3
    push ax
    push word [bp - 0x000a]
    push word [bp + 0x6]
    call api_idx_0002_10
    add sp, byte 8
    push word [bp - 0x000a]
    push word [bp + 0x4]
    push word [bp + 0x6]
    call 0x9920
    add sp, byte 6
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0002], 0
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8504
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9eb2
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call 0xec41
    add sp, byte 6
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8502
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9eeb
    push word [bp + 0x6]
    mov ax, 3
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 8
    push word [bp - 0x0002]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x9920
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short 0x9e84
    ret
    mov ax, 0xffee
    call 0xf40b
    mov ax, 0xf
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 0xf
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0
    db 0x2b, 0xc1 ; sub ax, cx
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x9658
    add sp, byte 6
    mov ax, 0xf
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 0xf
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0
    db 0x2b, 0xc1 ; sub ax, cx
    push ax
    push word [bp + 0x4]
    push word [bp + 0x6]
    call 0x9658
    add sp, byte 6
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 1
    je short 0x9f54
    cmp word [bp + 0x6], byte 0x13
    jne short 0x9f59
    mov ax, 1
    jmp short 0x9f5c
    mov ax, 0
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0006], 0
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0008], 0
    mov word [bp - 0x000c], 0
    mov word [bp - 0x000e], 0
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov cx, 4
    cwd
    idiv cx
    push ax
    call 0xb7a9
    pop cx
    inc ax
    mov word [bp - 0x0006], ax
    add word [bp - 0x000a], ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov cx, 4
    cwd
    idiv cx
    push ax
    call 0xb7a9
    pop cx
    inc ax
    mov word [bp - 0x0008], ax
    add word [bp - 0x000c], ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x000a]
    jge short 0x9fdf
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 7
    mov word [bp - 0x000e], 0xffff
    cmp word [bp - 0x000e], byte 0
    je short 0x9fe8
    jmp near 0xa068
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short 0xa02d
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x9e79
    add sp, byte 4
    mov word [bp - 0x000e], 1
    jmp short 0xa068
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov cl, byte [bx - 0x7b00]
    pop ax
    db 0x3a, 0xc1 ; cmp al, cl
    jge short 0xa068
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xa068
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x9a80
    add sp, byte 4
    mov word [bp - 0x000e], 1
    cmp word [bp - 0x000e], byte 0
    jne short 0xa096
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    sub ax, word [bp - 0x0006]
    mov byte [bx - 0x7b00], al
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    sub ax, word [bp - 0x0008]
    mov byte [bx - 0x7b00], al
    cmp word [bp - 0x000e], byte 0
    jne short 0xa0bd
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jle short 0xa0bd
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jle short 0xa0bd
    jmp near 0x9f78
    mov word [bp - 0x0012], 0
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short 0xa118
    cmp word [bp - 0x0010], byte 0
    je short 0xa0f2
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0xa
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b00], al
    jmp short 0xa104
    mov word [bp - 0x0012], 1
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b00], 0
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x9e79
    add sp, byte 4
    mov word [bp - 0x000e], 1
    jmp near 0xa1ad
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov cl, byte [bx - 0x7b00]
    pop ax
    db 0x3a, 0xc1 ; cmp al, cl
    jle short 0xa156
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xa156
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 7
    mov word [bp - 0x000e], 0xffff
    jmp short 0xa1ad
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov cx, 3
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jge short 0xa1ad
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 3
    je short 0xa194
    cmp byte [bx - 0x7b16], 2
    jne short 0xa1ad
    push word [bp + 0x6]
    call 0x94ef
    pop cx
    mov ax, 0x26
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 7
    mov word [bp - 0x000e], 1
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short 0xa1dd
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    inc ax
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b00], al
    mov byte [bx - 0x7b16], 7
    mov word [bp - 0x000e], 0xffff
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 7
    jne short 0xa1f3
    push word [bp + 0x4]
    call 0x94ef
    pop cx
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    db 0x8a, 0x87, 0xec
io_loc_a1fe:
    test byte [bp + si], ch
    in al, 0x50
    push word [bp - 0x0012]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 8
    mov ax, word [bp - 0x000e]
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xa26b
    mov ax, 0xffff
    push ax
    mov ax, 5
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 8
    mov ax, 0xf
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0xfffb
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x9658
    add sp, byte 6
    mov ax, 0xf
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0xfffb
    push ax
    push word [bp + 0x4]
    push word [bp + 0x6]
    call 0x9658
    add sp, byte 6
    mov ax, 0x16
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x63be], 1
    mov ax, 0x16
    imul word [bp + 0x6]
    add ax, word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x63be], 1
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x18
    push ax
    call 0xb7a9
    pop cx
    cmp ax, strict word 0xf
    jle short 0xa2db
    push word [bp + 0x8]
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0x6]
    mov word [bp - 0x0002], ax
    mov al, byte [bx - 0x7aff]
    cbw
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0002]
    db 0x3b, 0xc8 ; cmp cx, ax
    jge short 0xa2d0
    mov word [bp - 0x0002], cx
    mov al, byte [bp - 0x0002]
    mov byte [bx - 0x7b00], al
    mov ax, 1
    ret
    mov ax, 0
    ret
    mov ax, 0xfff0
    call 0xf40b
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bp + 0x4]
    call 0x9448
    add sp, byte 4
    test ax, ax
    jne short 0xa30f
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 0
    ret
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    inc byte [bx - 0x7b13]
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call 0xa28c
    add sp, byte 6
    test ax, ax
    je short 0xa331
    ret
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0006], ax
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x768a]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jle short 0xa3b9
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xa3b9
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0xc
    imul cx
    add ax, word [bp - 0x0008]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x000a], ax
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 0xff9c
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x000a]
    db 0x3b, 0xc8 ; cmp cx, ax
    jle short 0xa3b9
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xa3b9
    push word [bp + 0x4]
    call 0x94ef
    pop cx
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 7
    ret
    mov word [bp - 0x000c], 0
    mov ax, word [bp - 0x000c]
    cmp ax, word [bp + 0x4]
    jne short 0xa3c9
    jmp near 0xa545
    mov cx, 0x26
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short 0xa3da
    jmp near 0xa545
    mov ax, 0x16
    imul word [bp + 0x4]
    add ax, word [bp - 0x000c]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x63be], 0
    je short 0xa3ef
    jmp near 0xa545
    push word [bp - 0x0006]
    push word [bp - 0x000c]
    call 0x9448
    add sp, byte 4
    test ax, ax
    jne short 0xa402
    jmp near 0xa545
    mov ax, 0x26
    imul word [bp - 0x000c]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 2
    je short 0xa41b
    cmp byte [bx - 0x7b16], 1
    je short 0xa41b
    jmp near 0xa545
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0xa42a
    jmp near 0xa545
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0xc
    imul cx
    push ax
    mov ax, 0x26
    imul word [bp - 0x000c]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x000e], ax
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 0x19
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x000e]
    db 0x3b, 0xc8 ; cmp cx, ax
    jg short 0xa481
    push ax
    push word [bp - 0x000c]
    push word [bp + 0x4]
    call 0x9a80
    add sp, byte 6
    jmp near 0xa545
    mov ax, 0x19
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov ax, 0x26
    imul word [bp - 0x000c]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    db 0x8b, 0xd0 ; mov dx, ax
    pop ax
    db 0x2b, 0xc2 ; sub ax, dx
    add ax, strict word 0xffdd
    db 0x2b, 0xc1 ; sub ax, cx
    cmp ax, word [bp - 0x000e]
    jl short 0xa513
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0xa511
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov ax, 0x26
    imul word [bp - 0x000c]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short 0xa511
    push word [bp - 0x000c]
    push word [bp + 0x4]
    call 0x9ef7
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0004], byte 0
    jne short 0xa50a
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xa510
    cmp word [bp - 0x0004], byte 0xff
    jne short 0xa511
    ret
    jmp short 0xa545
    push word [bp - 0x000c]
    push word [bp + 0x4]
    call 0xa215
    add sp, byte 4
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xa538
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 0
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xa545
    ret
    inc word [bp - 0x000c]
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 0x16
    jge short 0xa553
    jmp near 0xa3be
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b13]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 4
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    jne short 0xa592
    push word [bp + 0x4]
    call 0x99dd
    pop cx
    push word [bp + 0x4]
    call 0x98cc
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b17]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x0006]
    jne short 0xa5ad
    mov al, byte [bx - 0x7aff]
    mov byte [bx - 0x7b00], al
    cmp byte [bx - 0x7b13], 0x18
    jbe short 0xa5b9
    mov byte [bx - 0x7b16], 0
    ret
    mov ax, 0xfff8
    call 0xf40b
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x4]
    jne short 0xa5d0
    jmp near 0xa7a3
    mov cx, 0x26
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short 0xa5e1
    jmp near 0xa7a3
    mov ax, 0x16
    imul word [bp + 0x4]
    add ax, word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x63be], 0
    je short 0xa5f6
    jmp near 0xa7a3
    mov ax, word [bp + 0x4]
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b14]
    push ax
    mov ax, word [bp - 0x0006]
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov cl, byte [bx - 0x7b14]
    pop ax
    db 0x3a, 0xc1 ; cmp al, cl
    je short 0xa615
    jmp near 0xa7a3
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x6]
    je short 0xa68a
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b13]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x26
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b13]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    je short 0xa64e
    jmp near 0xa7a3
    mov ax, 0x26
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b16]
    cmp al, 3
    je short 0xa68a
    cmp byte [bx - 0x7b16], 0
    je short 0xa68a
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 6
    je short 0xa677
    jmp near 0xa7a3
    mov ax, 0x26
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b16]
    cmp al, 1
    jne short 0xa68a
    jmp near 0xa7a3
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0xc
    imul cx
    push ax
    mov ax, 0x26
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b18]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x0008], ax
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 0x19
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0008]
    db 0x3b, 0xc8 ; cmp cx, ax
    jg short 0xa6f0
    push ax
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call 0x9a80
    add sp, byte 6
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x6]
    jne short 0xa6ed
    push word [bp + 0x4]
    call 0x94ef
    pop cx
    jmp near 0xa7a3
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov ax, 0x26
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    db 0x8b, 0xd0 ; mov dx, ax
    pop ax
    db 0x2b, 0xc2 ; sub ax, dx
    add ax, strict word 0xffdd
    db 0x2b, 0xc1 ; sub ax, cx
    cmp ax, word [bp - 0x0008]
    jge short 0xa727
    jmp near 0xa797
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x6]
    je short 0xa756
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0xa795
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short 0xa795
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call 0x9ef7
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x6]
    jne short 0xa78e
    cmp word [bp - 0x0002], byte 1
    jne short 0xa78e
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xa78e
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 0
    jmp short 0xa795
    cmp word [bp - 0x0002], byte 0xff
    jne short 0xa795
    ret
    jmp short 0xa7a3
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call 0xa215
    add sp, byte 4
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 0x16
    jge short 0xa7b1
    jmp near 0xa5c5
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 3
    jne short 0xa7dd
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call 0xa28c
    add sp, byte 6
    test ax, ax
    je short 0xa7dd
    ret
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 5
    je short 0xa7ef
    jmp near 0xa88c
    cmp byte [bx - 0x7b11], 0
    jge short 0xa85d
    mov al, byte [bx - 0x7b12]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0x26
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b15]
    push ax
    db 0x8b, 0xc1 ; mov ax, cx
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    cmp al, byte [bx - 0x7b14]
    je short 0xa847
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call 0x946a
    pop cx
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 0
    jne short 0xa838
    push word [bp + 0x4]
    call 0x94ef
    pop cx
    ret
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 5
    jmp short 0xa85d
    mov ax, 0x10
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b13], al
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b12], 0x15
    je short 0xa88c
    mov al, byte [bx - 0x7b12]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0x26
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short 0xa88c
    db 0x8b, 0xc1 ; mov ax, cx
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 3
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 7
    je short 0xa8c7
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xa5ba
    add sp, byte 4
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b16]
    cmp al, 3
    je short 0xa8bf
    cmp al, 7
    je short 0xa8bf
    cmp al, 5
    jne short 0xa8c6
    cmp byte [bx - 0x7b00], 0
    jg short 0xa8c7
    ret
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b11], 0
    jge short 0xa8e5
    cmp byte [bx - 0x7b16], 5
    je short 0xa8e4
    push word [bp + 0x4]
    call 0x94ef
    pop cx
    ret
    mov ax, 0x26
    imul word [bp + 0x4]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b11]
    cbw
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b10]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0002], ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    inc byte [bx - 0x7b13]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov al, byte [si - 0x758f]
    cmp al, byte [bx - 0x7b13]
    jbe short 0xa92b
    jmp near 0xa9a3
    mov byte [bx - 0x7b13], 0
    mov al, byte [bx - 0x7b14]
    cmp al, byte [si - 0x7592]
    jne short 0xa944
    mov al, byte [si - 0x7591]
    mov byte [bx - 0x7b14], al
    jmp short 0xa956
    mov al, byte [bx - 0x7b14]
    cmp al, byte [si - 0x7591]
    jne short 0xa956
    mov al, byte [si - 0x7592]
    mov byte [bx - 0x7b14], al
    cmp byte [bx - 0x7b16], 7
    jne short 0xa962
    mov byte [bx - 0x7b16], 3
    dec byte [bx - 0x7b11]
    jge short 0xa9a3
    cmp byte [bx - 0x7b16], 3
    jne short 0xa9a3
    mov byte [bx - 0x7b16], 0
    mov al, byte [bx - 0x7b14]
    cmp al, byte [bx - 0x7b15]
    jne short 0xa9a3
    mov byte [bx - 0x7b16], 2
    mov byte [bx - 0x7b13], 0
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 6
    push ax
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 8
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b12]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0002], ax
    inc byte [bx - 0x7b13]
    mov al, byte [bx - 0x7b13]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    cmp ax, strict word 0x18
    jle short 0xaa3e
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b15]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 7
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 0
    mov ax, 6
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b56], 0xff
    je short 0xaa3e
    mov al, byte [bx - 0x7b56]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call 0x946a
    pop cx
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 0x10
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x7b13], al
    mov al, byte [bx - 0x7b14]
    cmp al, byte [bx - 0x7b17]
    jne short 0xaaa2
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xaaa2
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7aff]
    mov byte [bx - 0x7b00], al
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xaaa0
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 2
    mov byte [bx - 0x7b13], 0
    ret
    jmp short 0xaab8
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call 0xa28c
    add sp, byte 6
    test ax, ax
    je short 0xaab8
    ret
    mov ax, 0xffff
    push ax
    push word [bp + 0x4]
    call 0xa5ba
    add sp, byte 4
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x7b16], 6
    ret
math_loc_aad3:
    mov ax, 0
    call 0xf40b
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short 0xaae9
    ret
    mov al, byte [bx - 0x7b16]
    sub ah, ah
    jmp near 0xab8d
    push word [bp + 0x4]
    call 0x96ce
    pop cx
    jmp near 0xab9a
    mov ax, 5
    push ax
    push ax
    push word [bp + 0x4]
    call 0xa28c
    add sp, byte 6
    jmp near 0xab9a
    push word [bp + 0x4]
    call 0xa2df
    pop cx
    jmp near 0xab9a
    mov ax, 0xffff
    push ax
    push word [bp + 0x4]
    call 0xa7b2
    add sp, byte 4
    jmp short 0xab9a
    push word [bp + 0x4]
    call 0xa9a4
    pop cx
    jmp short 0xab9a
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7b12]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bp + 0x4]
    call 0xa7b2
    add sp, byte 4
    jmp short 0xab9a
    push word [bp + 0x4]
    call 0xaa3f
    pop cx
    jmp short 0xab9a
    mov ax, 0xffff
    push ax
    push word [bp + 0x4]
    call 0xa7b2
    add sp, byte 4
    mov ax, 0x26
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x7b16], 7
    jne short 0xab7b
    mov ax, 0xffff
    push ax
    push word [bp + 0x4]
    call 0xa7b2
    add sp, byte 4
    jmp short 0xab9a
    cmp bx, di
    inc bx
    sti
    push sp
    sti
    pop si
    sti
    insw
    sti
    jbe short 0xab84
    nop
    sti
    cwd
    sti
    cmp ax, strict word 8
    jae short 0xab9a
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x043c]
    ret
api_idx_0032:
    mov ax, 0xffce
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x1e4
    push ax
    mov ax, 0x9c42
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x2c
    push ax
    lea ax, word [bp - 0x0032]
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7687]
    cbw
    cmp ax, word [0x830c]
    jne short 0xabe7
    mov al, byte [bp - 0x0004]
    mov byte [0x8809], al
    mov byte [0x880a], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x1a
    jl short 0xabca
    mov word [bp - 0x0006], 0
    mov ax, 0x16
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0032], byte 0
    jne short 0xabf7
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0032], 1
    push word [bp - 0x0002]
    call math_loc_aad3
    pop cx
    inc word [bp - 0x0006]
    cmp word [bp - 0x0006], byte 0x16
    jl short 0xabf7
    ret
    pop word [0x9190]
    pop cx
    mov word [0x918c], sp
    mov word [0x918e], bp
    mov word [0x9188], si
    mov word [0x918a], di
    cld
    mov di, 0x9192
    mov cx, 0x9e26
    db 0x2b, 0xcf ; sub cx, di
    shr cx, 1
    je short 0xac56
    db 0x2b, 0xc0 ; sub ax, ax
    rep stosw
    call 0xe
    mov bp, word [0x918e]
    mov sp, word [0x918c]
    mov si, word [0x9188]
    mov di, word [0x918a]
    push cx
    jmp [0x9190]
    push si
    dec bp
    xor word [0x2424], bp
    and al, 0
    dec bp
    inc cx
    pop dx
    inc bp
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bx + 0x41], dl
    push sp
    push dx
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [si + 0x52], dl
    inc bp
    inc bp
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bx + 0x54], cl
    push di
    dec si
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [si + 0x49], dl
    dec sp
    inc bp
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [si + 0x4f], dl
    push di
    dec si
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bx + 0x54], cl
    push di
    dec si
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bx + 0x41], dl
    push sp
    push dx
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [si + 0x49], dl
    dec sp
    inc bp
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [si + 0x52], dl
    inc bp
    inc bp
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bx + 0x43], cl
    inc cx
    push si
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bp + di + 0x41], al
    push si
    inc bp
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bx + 0x43], cl
    inc cx
    push si
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bx + 0x41], dl
    push sp
    push dx
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [si + 0x52], dl
    inc bp
    inc bp
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bx + 0x54], cl
    push di
    dec si
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bx + 0x41], dl
    push sp
    push dx
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    db 0x00, 0x00
    and word [di], sp
    es pop bp
    inc ax
    and di, word [bp]
    and byte [bx + si], al
    times 10 db 0
