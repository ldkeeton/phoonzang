%include "structs/structs.inc"
%include "structs/vpclv.inc"
org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0xa2, 0x54, 0x98, 0x90 ; header (8 bytes)

    jo short 0xd
    movsb
    add di, word [bx + di - 0x475c]
    add byte [bx + si], al
    call 0xf40b
    cmp word [0x830a], byte 0x16
    jne short 0x1e
    call api_idx_000c_3
    mov ax, 0
    ret
api_idx_0002:
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
    jne short 0x58
    mov ax, 0x1c
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
    cmp word [bp + 0x6], byte 0
    je short 0x85
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0012:
    mov ax, 0xffee
    call 0xf40b
    mov word [bp - 0x000e], 0
    mov word [bp - 0x000c], 0
    mov word [bp - 0x000a], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e37]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bx + 0x5e38]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 9
    mov ax, word [bx + 0x5c14]
    mov bx, 0x64
    imul bx
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c16]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call 0xf99f
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    cmp dx, byte 0
    jg short 0xf2
    jne short 0xf4
    cmp ax, strict word 0x32
    jbe short 0xf4
    jmp short 0xf7
    jmp near 0x1ef
    cmp dx, byte 0
    jg short 0x103
    jne short 0x105
    cmp ax, strict word 0x42
    jbe short 0x105
    jmp short 0x128
    mov word [bp - 0x000c], 5
    mov word [bp - 0x000a], 0xa
    cmp word [bp - 0x0008], byte 3
    jle short 0x11a
    mov word [bp - 0x0008], 3
    cmp word [bp - 0x0006], byte 3
    jle short 0x125
    mov word [bp - 0x0006], 3
    jmp near 0x1ef
    cmp dx, byte 0
    jg short 0x134
    jne short 0x136
    cmp ax, strict word 0x4b
    jbe short 0x136
    jmp short 0x177
    mov word [bp - 0x000e], 1
    mov word [bp - 0x000c], 0xa
    mov word [bp - 0x000a], 0x14
    cmp word [bp - 0x0008], byte 2
    jle short 0x150
    mov word [bp - 0x0008], 2
    cmp word [bp - 0x0006], byte 2
    jle short 0x15b
    mov word [bp - 0x0006], 2
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0x83
    jmp short 0x1ef
    cmp word [bp - 0x0010], byte 0
    jg short 0x185
    jne short 0x187
    cmp word [bp - 0x0012], byte 0x5a
    jbe short 0x187
    jmp short 0x1bc
    mov word [bp - 0x000e], 2
    mov word [bp - 0x000c], 0x14
    mov word [bp - 0x000a], 0x28
    mov word [bp - 0x0008], 1
    mov word [bp - 0x0006], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    mov cx, 0x32
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0x54
    jmp short 0x1ef
    mov word [bp - 0x000e], 4
    mov word [bp - 0x000c], 0x28
    mov word [bp - 0x000a], 0x50
    mov word [bp - 0x0008], 1
    mov word [bp - 0x0006], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    mov cx, 0x19
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0x16
    lea si, word [bp - 0x000e]
    mov di, 0x9408
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov ax, 0x9408
    ret
api_idx_000c:
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
    jl short 0x20d
    ret
api_idx_0004:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x942c]
    push word [0x942a]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    db 0xff, 0xb7, 0x06, 0x00 ; push word ptr [bx + 6]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x15e]
    push word [bx + 0x15c]
    call 0xe809
    add sp, byte 4
    mov ax, 3
    push ax
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c1c]
    call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short 0x2a4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short 0x324
    jmp near 0x29f
    mov ax, 0
    push ax
    push ax
    push ax
    call api_idx_000c
    add sp, byte 6
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    cmp word [bp + 0x4], byte 0
    jl short 0x34a
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short 0x355
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
    jne short 0x380
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x33c
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x4a, 0x00 ; mov ax, word ptr [bx + 0x4a]
    cmp ax, word [bp + 0x4]
    jge short 0x3ae
    inc word [bp - 0x0002]
    jmp short 0x397
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x4a, 0x00 ; push word ptr [bx + 0x4a]
    db 0xff, 0xb7, 0x48, 0x00 ; push word ptr [bx + 0x48]
    mov ax, word [bp + 0x4]
    add ax, word [bp + 0x6]
    push ax
    call 0xb7c2
    add sp, byte 6
    ret
api_idx_0010:
    mov ax, 0xfff0
    call 0xf40b
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69bc]
    mov ax, 5
    push ax
    call 0xe7af
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x000e], ax
    mov word [bp - 0x0004], 0
    jmp near 0x4bc
    mov word [bp - 0x0002], 0
    jmp near 0x4ae
    les bx, word [bp - 0x0008]
    mov si, word [bp - 0x000e]
    mov al, byte [es:bx + si]
    sub ah, ah
    mov word [bp - 0x0010], ax
    cmp ax, 0xff
    jne short 0x422
    jmp near 0x4a8
    mov ax, 0xffff
    push ax
    push word [bp - 0x0010]
    call api_idx_0002_3
    add sp, byte 4
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    push ax
    call 0xe8f4
    add sp, byte 6
    push word [bp - 0x0010]
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    inc ax
    push ax
    call 0xe8f4
    add sp, byte 6
    push word [bp - 0x0010]
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    push ax
    call 0xe8f4
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    call api_idx_0002_3
    add sp, byte 4
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    inc ax
    push ax
    call 0xe8f4
    add sp, byte 6
    inc word [bp - 0x000e]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x000a]
    jge short 0x4b9
    jmp near 0x40c
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x000c]
    dec ax
    dec ax
    cmp ax, word [bp - 0x0004]
    jle short 0x4c9
    jmp near 0x404
    ret
api_idx_000a:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x9434]
    push word [0x9432]
    call 0xe942
    add sp, byte 8
    cmp word [0x9436], byte 0
    jle short 0x525
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
    mov ax, 0x41
    sub ax, word [0x9436]
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    call 0xefd1
    add sp, byte 0x16
    mov ax, 5
    cmp word [0x9438], byte 0
    jne short 0x534
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    mov byte [bp - 0x000a], al
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
    mov ax, 0x14
    sub ax, word [0x9436]
    add ax, strict word 0x19
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
api_idx_007c:
    mov ax, 0xff84
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x9418]
    push word [0x9416]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x941c]
    push word [0x941a]
    call 0xe942
    add sp, byte 8
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    push word [bp + 0x4]
    call api_idx_0010
    add sp, byte 6
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x4c
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
    mov ax, 0x28
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
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x5a
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, 0x8c
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0058]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    add ax, strict word 0x64
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x84
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x5a
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0x5a
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xc8
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c18]
    call 0xb2e7
    add sp, byte 6
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5bfc]
    mov dx, word [bx + 0x5bfe]
    mov cx, 0x16d
    mov bx, 0
    call 0xf99f
    add ax, strict word 0xffee
    adc dx, byte 0xff
    mov cx, 4
    mov bx, 0
    call 0xf99f
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c1a]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    mov cx, ax
    mov bx, dx
    add ax, strict word 0xffff
    adc dx, byte 0xff
    mov cx, ax
    mov bx, dx
    mov ax, 0x14
    mov dx, 0
    sub ax, cx
    sbb dx, bx
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
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
    mov cx, 0x12
    mov bx, 0
    call 0xf99f
    mov word [0x9436], ax
    mov ax, 0x14
    push ax
    mov ax, 0
    push ax
    push word [0x9436]
    call 0xb7c2
    add sp, byte 6
    mov word [0x9436], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short 0x7b8
    mov ax, 0
    jmp short 0x7bb
    mov ax, 1
    mov word [0x9438], ax
    mov word [0x943a], 0
    push word [0x943a]
    call api_idx_000a
    pop cx
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call 0xe823
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x23
    push ax
    mov ax, 0x73
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xcc
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x7df
    mov ax, 0
    push ax
    mov ax, 0xfd
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xc9
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0xe4
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    mov cx, 0xa
    imul cx
    push ax
    mov al, byte [bx + 0x5e2e]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x320
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 6
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xfa90
    pop cx
    mov cx, 0x34
    sub cx, ax
    mov ax, 6
    imul cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x47
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xca
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0xe4
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c02]
    push word [bx + 0x5c00]
    call 0xb293
    add sp, byte 8
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xcb
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0xe4
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c06]
    push word [bx + 0x5c04]
    call 0xb293
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd4
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 6
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0c]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0e]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd5
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 6
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c10]
    mov cx, 0x64
    imul cx
    mov cx, word [bx + 0x5c12]
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    cmp ax, strict word 1
    jge short 0xab1
    cmp word [bx + 0x5c10], byte 0
    jle short 0xab1
    mov ax, 1
    jmp short 0xab4
    mov ax, word [bp - 0x0008]
    mov word [bp - 0x0008], ax
    lea ax, word [bp - 0x0058]
    push ax
    push word [bp - 0x0008]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9098
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c12]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x29
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd6
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 0x5b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0a]
    push word [bx + 0x5c08]
    call 0xb1db
    add sp, byte 6
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    push word [bp + 0x4]
    call 0xc58f
    pop cx
    push word [bp + 0x4]
    call api_idx_0012
    pop cx
    mov si, ax
    lea di, word [bp - 0x007c]
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov al, byte [bp - 0x0072]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e33], al
    mov ax, 0
    push ax
    push word [bp - 0x0070]
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd7
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0x5b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c14]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c16]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_0004
    pop cx
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2f]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x920]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short 0xcb0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5c], 0
    jbe short 0xcb0
    mov ax, 0
    jmp short 0xcb3
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jg short 0xccf
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5d], 0
    jbe short 0xccf
    mov ax, 1
    jmp short 0xcd2
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short 0xcfb
    mov ax, 0x2d
    push ax
    mov ax, 0x51
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 6
    push ax
    mov al, byte [bp - 0x0006]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    inc word [bp - 0x0004]
    mov word [bp - 0x006e], 6
    mov word [bp - 0x006c], 7
    mov word [bp - 0x006a], 5
    mov word [bp - 0x0068], 4
    mov word [bp - 0x0066], 8
    mov word [bp - 0x0064], 9
    mov word [bp - 0x0062], 1
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x006e]
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0004], byte 6
    jge short 0xdb1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x92c]
    cmp ax, word [bp - 0x0006]
    je short 0xdb1
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0008]
    mov bx, ax
    cmp byte [bx + 0x5d5a], 0
    jbe short 0xdb1
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xb
    imul cx
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x17
    imul cx
    add ax, strict word 0x51
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + 0x92c]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x92c]
    mov word [bp - 0x0006], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jge short 0xdbf
    jmp near 0xd28
    ret
loc_0dc0:
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
api_idx_0004_2:
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
    jne short 0xe9d
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0xe9d
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
    mov word [bx - 0x6bc4], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short 0xe4b
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
math_loc_0eea:
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
    je short 0xf14
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
    jne short 0xf75
    cmp word [bp + 0xa], byte 0
    jne short 0xf75
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
loc_0f76:
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
    jle short 0xffd
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short 0xffd
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
    jmp short 0x1016
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x909b
    push ax
    call 0xe84e
    add sp, byte 4
    ret
api_idx_000c_2:
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
    jge short 0x10af
    jmp near 0x1022
    ret
loc_10b0:
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
    mov ax, word [0x948c]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0x10f7
    jne short 0x10f9
    cmp cx, ax
    jbe short 0x10f9
    jmp short 0x1140
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_2
    push word [bp + 0x4]
    call api_idx_000c_2
    pop cx
    push word [bp + 0x6]
    call api_idx_0002_2
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call api_idx_000c
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
api_idx_0050:
    mov ax, 0xffb0
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7cf2]
    add bx, bp
    mov word [bx - 0x0050], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x114c
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x32
    mov word [bp - 0x0006], 0x73
    mov word [bp - 0x0008], 0x10d
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x000c], 0x95
    mov word [bp - 0x0014], 0x16
    mov ax, 0x909f
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
    call api_idx_000c_2
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call api_idx_000c
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
    jne short 0x12ac
    mov ax, 1
    push ax
    push cx
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_0eea
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x129e
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
    call loc_0f76
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0004_2
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x1309
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
    jl short 0x144b
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
    jge short 0x156f
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
    jl short 0x1577
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
    mov word [0x948c], 7
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [bp - 0x001c], 1
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_10b0
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [0x59fc], byte 0
    je short 0x166a
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short 0x1633
    inc word [bp - 0x0022]
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short 0x1652
    cmp ax, word [bp - 0x0018]
    jl short 0x1652
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short 0x1658
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
    cmp word [0x5b3e], byte 1
    je short 0x1674
    jmp near 0x1db4
    mov ax, word [bp - 0x001a]
    jmp near 0x1da4
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    call 0xf053
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0010]
    mov cx, word [bp - 0x0006]
    add cx, word [bp - 0x0012]
    add cx, byte 0x2a
    db 0x2b, 0xc1 ; sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0016], ax
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    call 0xf053
    add sp, byte 4
    mov word [bp - 0x001e], ax
    push word [bp - 0x0014]
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0010]
    mov cx, word [bp - 0x0006]
    add cx, byte 0x2a
    db 0x2b, 0xc1 ; sub ax, cx
    sub ax, word [bp - 0x0016]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0044], byte 7
    jle short 0x16fe
    mov cx, 0x64
    imul cx
    push ax
    mov ax, word [bp - 0x0014]
    imul cx
    add ax, strict word 0x64
    mov cx, word [bp - 0x0044]
    add cx, byte 0xfa
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    cwd
    idiv cx
    mov word [bp - 0x0018], ax
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
    cmp word [bp - 0x001e], byte 0
    je short 0x179e
    jmp near 0x16a8
    jmp near 0x1db4
    cmp word [bp - 0x001a], byte 1
    jne short 0x17d8
    mov ax, 1
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
    call 0xbeb8
    add sp, byte 0x0a
    cmp word [bp - 0x0018], byte 0
    jle short 0x17d6
    dec word [bp - 0x0018]
    jmp short 0x180c
    mov ax, 1
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
    call 0xbeb8
    add sp, byte 0x0a
    mov ax, word [bp - 0x0044]
    add ax, strict word 0xfff9
    cmp ax, word [bp - 0x0018]
    jle short 0x180c
    inc word [bp - 0x0018]
    cmp word [bp - 0x0044], byte 7
    jle short 0x183e
    push word [bp - 0x0014]
    mov ax, 0
    push ax
    mov ax, 0x64
    imul word [bp - 0x0014]
    add ax, strict word 0x64
    mov cx, word [bp - 0x0044]
    add cx, byte 0xf9
    cwd
    idiv cx
    imul word [bp - 0x0018]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0012], ax
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
    jmp near 0x1db4
    cmp word [bp + 0x8], byte 0
    jne short 0x18e1
    jmp near 0x1982
    cmp word [bp - 0x003c], byte 0
    jge short 0x18ea
    jmp near 0x1974
    cmp word [bp + 0xa], byte 0
    je short 0x192c
    mov ax, word [bp - 0x003e]
    cmp ax, word [bp - 0x0040]
    jle short 0x18fb
    jmp near 0x1974
    mov ax, 6
    imul word [bp - 0x003c]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x622]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, word [bp - 0x003e]
    inc cx
    imul cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0042]
    shl dx, 1
    shl dx, 1
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    mov cx, word [bx + 0x5c1c]
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jg short 0x1974
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
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
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 0
    mov word [bp - 0x001c], 0
    cmp word [bp - 0x001c], byte 0
    je short 0x1982
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0x1db4
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
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 1
    mov word [bp - 0x001c], 0
    jmp near 0x1db4
    cmp word [bp - 0x001a], byte 5
    jge short 0x19d9
    jmp near 0x1b2f
    cmp word [bp - 0x001a], byte 0x0b
    jle short 0x19e2
    jmp near 0x1b2f
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_0eea
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
    call math_loc_0eea
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short 0x1a2a
    jmp near 0x1acc
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
    jne short 0x1a7e
    mov ax, 0x3e7
    jmp short 0x1a9d
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x1a9a
    jmp short 0x1a9d
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
    call loc_0f76
    add sp, byte 0x0a
    jmp short 0x1ae8
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
    call loc_0f76
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
    jmp near 0x1d98
    cmp word [bp - 0x001a], byte 0x0c
    jge short 0x1b38
    jmp near 0x1c61
    cmp word [bp - 0x001a], byte 0x11
    jle short 0x1b41
    jmp near 0x1c61
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfff4
    mov word [bp - 0x0042], ax
    mov word [bp - 0x003c], 0xffff
    push ax
    push word [bp + 0x4]
    call api_idx_0004_2
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x1b68
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x1b77
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
    call loc_0f76
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
    jmp near 0x1d98
    cmp word [bp - 0x001a], byte 0x12
    jge short 0x1c6a
    jmp near 0x1d98
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short 0x1c78
    jmp near 0x1d98
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6bc4]
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
    jne short 0x1d08
    mov ax, 0x3e7
    jmp short 0x1d27
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x1d24
    jmp short 0x1d27
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
    call loc_0f76
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
    jmp short 0x1db4
    shl word [bp - 0x0018], 0x67
    call 0x3d08
    db 0x69, 0xcc, 0x69
    cmp ax, strict word 5
    jae short 0x1db1
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6de1]
    jmp near 0x19d0
    cmp word [bp - 0x001c], byte 0
    je short 0x1dbd
    jmp near 0x1609
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
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0050]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7cf2], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x1de9
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, word [bp - 0x003e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x003c]
    add ax, 0x100
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
api_idx_00ca:
    mov ax, 0xff36
    call 0xf40b
    mov ax, word [bp + 0x6]
    jmp short 0x1e6c
    mov word [bp - 0x000c], 8
    mov word [bp - 0x000e], 0x20
    jmp short 0x1e80
    mov word [bp - 0x000c], 4
    mov word [bp - 0x000e], 0x1e
    jmp short 0x1e80
    mov word [bp - 0x000c], 2
    mov word [bp - 0x000e], 0x1f
    jmp short 0x1e80
    mov word [bp - 0x000c], 1
    mov word [bp - 0x000e], 0x1d
    jmp short 0x1e80
    cmp ax, strict word 0
    je short 0x1e3c
    cmp ax, strict word 1
    je short 0x1e48
    cmp ax, strict word 2
    je short 0x1e60
    cmp ax, strict word 3
    je short 0x1e54
    mov ax, 0x10
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xfedc
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x000e]
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    mov cx, 0x12
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x000a], ax
    cmp byte [bx + 0x5d6c], 0x62
    jb short 0x1ed7
    mov word [bp - 0x000a], 7
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x625]
    sub ah, ah
    test word [bp - 0x000c], ax
    je short 0x1f2a
    mov al, byte [bx + 0x621]
    sub ah, ah
    cmp ax, word [bp - 0x000a]
    jg short 0x1f2a
    push word [bp - 0x0002]
    lea ax, word [bp - 0x001e]
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x1f2a
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec41
    add sp, byte 6
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short 0x1ee1
    cmp word [bp - 0x0004], byte 0
    jne short 0x1f64
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov byte [bx + 0x5d50], 0
    mov ax, 0x10
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    call 0xfedc
    add sp, byte 6
    ret
    lea ax, word [bp - 0x007a]
    push ax
    mov ax, 0x2be
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00ca]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00ca]
    push ax
    lea ax, word [bp - 0x007a]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    lea ax, word [bp - 0x007a]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x7ec
    push ax
    push word [bp + 0x4]
    call api_idx_0050
    add sp, byte 8
    mov word [bp - 0x0004], ax
    mov ax, 0x10
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    call 0xfedc
    add sp, byte 6
    cmp word [bp - 0x0004], byte 0
    je short 0x1fe9
    jmp near 0x20e2
    mov ax, word [0x904e]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0006], dx
    mov ax, 1
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x000e]
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    mov cx, 0x14
    cwd
    idiv cx
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 6
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d66]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    mov cx, ax
    pop ax
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    inc ax
    mov word [bp - 0x0002], ax
    mov ax, 6
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    mov word [bp - 0x0004], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1e]
    add ax, word [bp - 0x0002]
    push ax
    mov ax, 6
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x20b2
    mov ax, 0x248
    imul word [bp + 0x4]
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    sub cx, word [bx + 0x5c1e]
    mov word [bp - 0x0002], cx
    mov ax, word [bp - 0x0002]
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
    add word [bx + 0x5c1e], ax
    add word [bx + 0x5c1c], ax
    add cx, word [bp + 0x6]
    mov bx, cx
    dec byte [bx + 0x5d50]
    push word [bp + 0x4]
    call api_idx_0004
    pop cx
    ret
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
    mov ax, word [0x948c]
    cwd
    db 0x8b, 0xc8 ; mov cx, ax
    db 0x8b, 0xda ; mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    db 0x3b, 0xda ; cmp bx, dx
    jg short 0x212a
    jne short 0x212c
    db 0x3b, 0xc8 ; cmp cx, ax
    jbe short 0x212c
    jmp short 0x2188
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, word [0x943a]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [0x943a], dx
    push dx
    call api_idx_000a
    pop cx
    mov ax, 0x41
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x5a
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xffff
    push ax
    call api_idx_0002_2
    pop cx
    push word [bp + 0x4]
    call api_idx_0004
    pop cx
    mov ax, 0xbf
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x7e
    push ax
    mov ax, 0xb8
    push ax
    call 0xe8da
    add sp, byte 8
    ret
math_loc_2189:
    mov ax, 0
    call 0xf40b
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
    push word [bp + 0x4]
    call api_idx_0080
    pop cx
    cmp word [bp + 0x6], byte 0
    jne short 0x21bd
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call 0xf40b
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x44]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d31], al
    mov word [bp - 0x0004], 0
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x2a]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    add cx, si
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d28], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x21e9
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d8d]
    sub ah, ah
    mov cx, 5
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    cmp byte [bx + 0x5e2d], 0xc
    je short 0x223e
    cmp byte [bx + 0x5e2d], 0xd
    jne short 0x225e
    mov ax, 0x12
    imul word [bp + 0x6]
    add bx, ax
    mov al, byte [bx + 0x5d2e]
    sub ah, ah
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add cx, ax
    mov ax, cx
    add ax, strict word 5
    mov byte [bx + 0x5d2e], al
    jmp short 0x2285
    cmp word [bp - 0x0004], byte 0
    jle short 0x2285
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d2e]
    sub ah, ah
    add ax, word [bp - 0x0004]
    mov byte [bx + 0x5d2e], al
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x45]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d30], al
    mov bx, word [bp + 0x8]
    cmp byte [bx + 0x38], 4
    jne short 0x22fd
    mov al, byte [bx + 0x41]
    cbw
    mov cx, 5
    imul cx
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d32], al
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2d], 4
    jne short 0x22fa
    mov bx, cx
    add byte [bx + 0x5d32], 0xf1
    mov al, byte [bx + 0x5d2e]
    sub ah, ah
    shl ax, 1
    mov byte [bx + 0x5d2e], al
    jmp near 0x23b7
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov byte [bx + 0x5d32], 0
    cmp word [bp + 0x6], byte 0
    jne short 0x2352
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d32]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0xf
    jbe short 0x2336
    mov cx, 5
    sub ax, cx
    mov byte [bx + 0x5d32], al
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0x11
    jbe short 0x234a
    mov cx, 5
    sub ax, cx
    mov byte [bx + 0x5d32], al
    jmp short 0x2372
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d44]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0x11
    jbe short 0x236c
    mov cx, 5
    sub ax, cx
    mov byte [bx + 0x5d44], al
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d32]
    cbw
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x41]
    cbw
    mov cx, 5
    imul cx
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d32], al
    mov si, word [bp + 0x8]
    add si, byte 0x1e
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov di, ax
    add ax, 0x5d24
    mov di, ax
    mov cx, ds
    mov es, cx
    movsw
    movsw
    cmp word [bp + 0x6], byte 0
    jne short 0x240e
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0xf
    jbe short 0x23f6
    mov ax, 1
    jmp short 0x23f9
    mov ax, 0
    add word [bx + 0x5d24], ax
    mov ax, 0
    cmp byte [bx + 0x5d64], 0x11
    jbe short 0x240a
    mov ax, 1
    add word [bx + 0x5d24], ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x46]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d33], al
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x42]
    mov bx, cx
    mov byte [bx + 0x5d34], al
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x43]
    mov bx, cx
    mov byte [bx + 0x5d35], al
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
    jne short 0x248d
    lea ax, word [bp - 0x002a]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0x0a
    jle short 0x2498
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
api_idx_0080:
    mov ax, 0xff80
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x9424]
    push word [0x9422]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x9428]
    push word [0x9426]
    call 0xe942
    add sp, byte 8
    push word [bp + 0x4]
    call api_idx_0012
    pop cx
    mov si, ax
    lea di, word [bp - 0x0018]
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5dab]
    cbw
    add ax, word [bp - 0x0018]
    mov word [bp - 0x000a], ax
    mov al, byte [bx + 0x5dac]
    cbw
    mov cx, ax
    mov ax, word [bp - 0x000a]
    add cx, ax
    mov word [bp - 0x0008], cx
    mov al, byte [bx + 0x5daa]
    cbw
    add ax, cx
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0xd8
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, ax
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x20
    cmp word [bp - 0x0006], byte 0
    jle short 0x2593
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x2b
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0068]
    add ax, cx
    push ax
    push word [bp - 0x0006]
    call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, ax
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x20
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x28
    cmp word [bp - 0x0008], byte 0
    jl short 0x25d9
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x2b
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0068]
    add ax, cx
    push ax
    push word [bp - 0x0008]
    call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, ax
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x29
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0
    mov ax, 0
    push ax
    mov ax, 0xeb
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x1e
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x10e
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call 0xe84e
    add sp, byte 4
    mov word [bp - 0x0074], 0x114
    mov word [bp - 0x0080], 0x2e
    mov word [bp - 0x0072], 0x114
    mov word [bp - 0x007e], 0x44
    mov word [bp - 0x0070], 0x114
    mov word [bp - 0x007c], 0x5a
    mov word [bp - 0x006e], 0x126
    mov word [bp - 0x007a], 0x4f
    mov word [bp - 0x006c], 0x114
    mov word [bp - 0x0078], 0x70
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x0080]
    mov bx, ax
    add bx, bp
    push word [bx - 0x0074]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d4b]
    sub ah, ah
    cmp ax, 0xff
    je short 0x26ba
    mov ax, 0x5f
    jmp short 0x26bd
    mov ax, 0xeb
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5dad]
    cbw
    add ax, word [bp - 0x0008]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short 0x26ed
    mov ax, 0
    push ax
    mov ax, 0x2b
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    push word [bp - 0x0006]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jge short 0x2716
    jmp near 0x2682
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, word [bp + 0x6]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0xd
    imul cx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 5
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, strict word 4
    mov word [bp - 0x0002], ax
    shl dx, 1
    mov ax, dx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 5
    cwd
    idiv cx
    mov cx, dx
    shl cx, 1
    pop ax
    add ax, cx
    add ax, strict word 0x72
    mov word [bp - 0x0004], ax
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x5]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    push word [bp + 0xc]
    push word [bp - 0x0004]
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xe
    push ax
    push word [bp + 0xa]
    call api_idx_002a
    add sp, byte 8
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x4]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short 0x27e2
    mov ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x38
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    ret
api_idx_004c:
    mov ax, 0xffb4
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x9420]
    push word [0x941e]
    call 0xe942
    add sp, byte 8
    cmp word [0x948e], byte 0
    je short 0x281f
    mov ax, 0xac
    push ax
    mov ax, 0xa0
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    call 0xe830
    add sp, byte 4
    cmp word [0x9490], byte 0
    jne short 0x282d
    cmp word [0x948e], byte 0
    je short 0x2895
    mov word [bp - 0x0002], 0
    mov ax, 0x18
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, strict word 0x70
    push ax
    mov ax, 0x9f
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, strict word 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x2832
    mov word [bp - 0x0002], 0
    mov ax, 0x18
    push ax
    mov ax, 0xb6
    push ax
    mov ax, 0x4f
    imul word [bp - 0x0002]
    inc ax
    push ax
    mov ax, 0x70
    push ax
    mov ax, 0x4f
    imul word [bp - 0x0002]
    inc ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0x2868
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x948e]
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
    cmp word [bx + 0x5c34], byte 0
    jg short 0x28c5
    jmp near 0x2a1d
    cmp word [0x9492], byte 0
    je short 0x28cf
    jmp near 0x2950
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
    imul word [0x948e]
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
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 0x80
    je short 0x2927
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x9494
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x2940
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x9494
    push ax
    mov al, byte [bp - 0x0013]
    sub ah, ah
    add ax, 0x1770
    push ax
    call 0xb53b
    add sp, byte 4
    mov al, byte [bp - 0x0012]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a90], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a7c], 0x69
    cmp word [0x948e], byte 0
    jne short 0x29a0
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short 0x2995
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x1e, 0x00 ; mov ax, word ptr [bx + 0x1e]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a7c], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x2969
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x948e]
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
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 2
    je short 0x29d9
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a7c], 0x55
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6a7c]
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x9494
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x948e]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0004_4
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jge short 0x2a2b
    jmp near 0x289a
    mov word [0x9492], 1
    ret
math_loc_2a32:
    mov ax, 0
    call 0xf40b
    mov ax, 0x7d
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xe
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp + 0x8]
    mov bx, ax
    mov al, byte [bx + 0x5d8e]
    sub ah, ah
    add ax, word [bp + 0xa]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0xe
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    add cx, word [bp + 0x8]
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d8e], al
    ret
    mov ax, 0xfffa
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d8e], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [bx + 0x5e3b]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jge short 0x2abe
    db 0x8b, 0xc1 ; mov ax, cx
    jmp short 0x2ac2
    mov ax, word [bx + 0x5c18]
    mov word [bp - 0x0006], ax
    mov ax, 0x10
    cmp word [bp - 0x0006], byte 0x10
    jg short 0x2ad2
    mov ax, word [bp - 0x0006]
    dec ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    cbw
    add ax, strict word 0xffd0
    imul word [bp - 0x0006]
    push ax
    mov bx, word [bp + 0x6]
    mov al, byte [bx + si]
    cbw
    db 0x8b, 0xc8 ; mov cx, ax
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    add ax, 0xfefc
    mov word [bp - 0x0004], ax
    push ax
    push si
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jge short 0x2b19
    jmp near 0x2a90
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [bx + 0x5e3b]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jge short 0x2b3e
    db 0x8b, 0xc1 ; mov ax, cx
    jmp short 0x2b42
    mov ax, word [bx + 0x5c18]
    mov word [bp - 0x0002], ax
    push ax
    cmp ax, strict word 0x14
    pop ax
    jle short 0x2b4f
    mov ax, 0x14
    mov word [bp - 0x0002], ax
    mov cx, 3
    cwd
    idiv cx
    inc ax
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x6]
    call 0xb7c2
    add sp, byte 6
    mov word [bp + 0x6], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d68]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0x8]
    sub ax, word [bp + 0xa]
    cwd
    idiv word [bp + 0x8]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    dec ax
    mov byte [bx + 0x5e37], al
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov al, byte [bx + 0x5e37]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx + 0x5e37], al
    mov al, byte [bx + 0x5d69]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0xc]
    sub ax, word [bp + 0xe]
    cwd
    idiv word [bp + 0xc]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    dec ax
    mov byte [bx + 0x5e38], al
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov al, byte [bx + 0x5e38]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx + 0x5e38], al
    mov al, byte [bx + 0x5d69]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, word [bp - 0x0002]
    mov byte [bx + 0x5e39], al
    ret
api_idx_0052:
    mov ax, 0xffae
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x2d02
    mov ax, 0x90b4
    push ax
    mov ax, 0x90a5
    push ax
    push word [bp + 0x4]
    call 0x2a85
    add sp, byte 6
    jmp near 0x2d0f
    mov ax, 0x90d2
    push ax
    mov ax, 0x90c3
    push ax
    push word [bp + 0x4]
    call 0x2a85
    add sp, byte 6
    jmp near 0x2d0f
    mov ax, 0x90f0
    push ax
    mov ax, 0x90e1
    push ax
    push word [bp + 0x4]
    call 0x2a85
    add sp, byte 6
    jmp near 0x2d0f
    mov ax, 0x910e
    push ax
    mov ax, 0x90ff
    push ax
    push word [bp + 0x4]
    call 0x2a85
    add sp, byte 6
    jmp near 0x2d0f
    mov ax, 0x912c
    push ax
    mov ax, 0x911d
    push ax
    push word [bp + 0x4]
    call 0x2a85
    add sp, byte 6
    jmp near 0x2d0f
    mov ax, 0x914a
    push ax
    mov ax, 0x913b
    push ax
    push word [bp + 0x4]
    call 0x2a85
    add sp, byte 6
    jmp short 0x2d0f
    mov ax, 0x9168
    push ax
    mov ax, 0x9159
    push ax
    push word [bp + 0x4]
    call 0x2a85
    add sp, byte 6
    jmp short 0x2d0f
    mov ax, 0x9186
    push ax
    mov ax, 0x9177
    push ax
    push word [bp + 0x4]
    call 0x2a85
    add sp, byte 6
    jmp short 0x2d0f
    mov ax, 0x91a4
    push ax
    mov ax, 0x9195
    push ax
    push word [bp + 0x4]
    call 0x2a85
    add sp, byte 6
    jmp short 0x2d0f
    mov ax, 0x91c2
    push ax
    mov ax, 0x91b3
    push ax
    push word [bp + 0x4]
    call 0x2a85
    add sp, byte 6
    jmp short 0x2d0f
    db 0x6a, 0x7c ; push 0x7c
    into
    jl short 0x2cdf
    jl short 0x2d07
    jge short 0x2d6d
    jl short 0x2cbf
    jl short 0x2d0d
    jge short 0x2cd6
    jl short 0x2d75
    jl short 0x2ced
    jl short 0x2c8d
    jl short 0x2ca3
    jl short 0x2d06
    jge short 0x2cbb
    jl short 0x2d40
    push cs
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7d2d]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    jmp near 0x2ed4
    mov ax, 0x14
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    jmp near 0x2ee1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov cx, 5
    cwd
    idiv cx
    imul cx
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov cx, 5
    cwd
    idiv cx
    imul cx
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    jmp near 0x2ee1
    mov ax, 0x14
    push ax
    mov ax, 9
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    jmp near 0x2ee1
    mov ax, 0x19
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 7
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    jmp near 0x2ee1
    mov ax, 0x19
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0xa
    push ax
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0xffec
    push ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    jmp near 0x2ee1
    mov ax, 0xf
    push ax
    mov ax, 7
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x14
    push ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x14
    push ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    jmp short 0x2ee1
    mov ax, 0x19
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0xf
    push ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    jmp short 0x2ee1
    db 0x67, 0x7d, 0xd2 ; jge 0x2e93
    jge short 0x2f42
    jge short 0x2e6c
    jge short 0x2f46
    jge short 0x2eb3
    jge short 0x2f21
    jle short 0x2f23
    jle short 0x2e67
    jle short 0x2e93
    jle short 0x2eac
    db 0x7e
    cmp ax, strict word 0xb
    jae short 0x2ee1
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7f05]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d67], 0xf
    jbe short 0x2f1a
    mov ax, 5
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 5
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d65], 0xf
    jbe short 0x2f3e
    mov ax, 5
    push ax
    mov ax, 9
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d69], 0xf
    jbe short 0x2f77
    mov ax, 5
    push ax
    mov ax, 7
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d83], 0
    jbe short 0x2fca
    mov al, byte [bx + 0x5d83]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    push ax
    mov ax, 9
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d83]
    sub ah, ah
    mov cx, 3
    cwd
    idiv cx
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d8e]
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xe
    jl short 0x2fcf
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    jne short 0x300b
    jmp near 0x3089
    mov word [bp - 0x000a], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, 0xc
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x000a]
    mov bx, ax
    mov al, byte [bx + 0x5c3c]
    sub ah, ah
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov ax, 0xa
    imul dx
    mov word [bp - 0x0008], ax
    mov ax, 0x7d
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d9c]
    sub ah, ah
    add ax, word [bp - 0x0008]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x000a]
    mov ax, word [bp - 0x000a]
    cmp ax, strict word 2
    jl short 0x3010
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jge short 0x3097
    jmp near 0x2ff2
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp short 0x311a
    mov ax, 3
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 7
    push ax
    mov ax, 4
    push ax
    push word [bp + 0x4]
    call 0x2b1a
    add sp, byte 0x0c
    jmp short 0x3127
    mov ax, 7
    push ax
    push ax
    mov ax, 0xc
    push ax
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call 0x2b1a
    add sp, byte 0x0c
    jmp short 0x3127
    mov ax, 5
    push ax
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, 0xa
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call 0x2b1a
    add sp, byte 0x0c
    jmp short 0x3127
    out dx, al
    or byte [di], 0x81
    and word [es:0xee81], 0xd80
    and word [0x0d81], strict word 0xee81
    or byte [di], 0x81
    out dx, al
    sub dh, 0x80
    out dx, al
    sub dh, 0x80
    cmp ax, strict word 0xe
    jae short 0x3127
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7ebb]
    mov word [bp - 0x0002], 0
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call 0xc608
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    je short 0x318d
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, 0xc
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c34]
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    lea ax, word [bp - 0x0052]
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short 0x312c
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5daa], 0xa
    mov al, byte [bx + 0x5daa]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d69], 0xf
    jbe short 0x31b7
    mov cx, 1
    sub ax, cx
    mov byte [bx + 0x5daa], al
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d69], 0x11
    jbe short 0x31cb
    mov cx, 1
    sub ax, cx
    mov byte [bx + 0x5daa], al
    mov al, byte [bx + 0x5daa]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5e2b], 5
    jne short 0x31e3
    mov cx, 2
    sub ax, cx
    mov byte [bx + 0x5daa], al
    cmp byte [bx + 0x5e2d], 0xd
    je short 0x31f7
    cmp byte [bx + 0x5e2d], 0xc
    jne short 0x3229
    mov ax, 0xa
    cmp word [bx + 0x5c18], byte 0x14
    jg short 0x320b
    mov ax, word [bx + 0x5c18]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov al, byte [bx + 0x5d7d]
    sub ah, ah
    mov cx, 0xa
    cwd
    idiv cx
    add word [bp - 0x0002], ax
    mov al, byte [bx + 0x5daa]
    cbw
    sub ax, word [bp - 0x0002]
    mov byte [bx + 0x5daa], al
    mov word [bp - 0x0002], 3
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5daa]
    add bx, word [bp - 0x0002]
    mov byte [bx + 0x5daa], al
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    je short 0x327c
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, 0xc
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3f]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0002]
    mov bx, ax
    pop ax
    sub byte [bx + 0x5daa], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x322e
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov ax, 0xbc
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
    mov ax, 0x55
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    jle short 0x330d
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    push word [0x905a]
    call 0xb75e
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    call 0xe94f
    add sp, byte 6
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0020:
    mov ax, 0xffe0
    call 0xf40b
    cmp word [bp + 0x4], byte 0
    je short 0x334b
    jmp near 0x3442
    lea ax, word [bp - 0x000c]
    push ax
    push word [bp + 0xe]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0016]
    push ax
    push word [bp + 0xa]
    call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x0020]
    push ax
    push word [bp + 0xc]
    call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x000c]
    push ax
    call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    push word [bp + 0x10]
    call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    lea ax, word [bp - 0x0020]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    push word [bp + 0x12]
    call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x14]
    mov ax, word [bp + 0x8]
    add ax, strict word 4
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    dec ax
    dec ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    push word [bp + 0x14]
    push word [bp + 0x16]
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x10]
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0020]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x12]
    call 0xe84e
    add sp, byte 4
    jmp short 0x34ad
    lea ax, word [bp - 0x000c]
    push ax
    push word [bp + 0xe]
    call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0002], 6
    push word [bp + 0x14]
    mov ax, word [bp + 0x8]
    add ax, strict word 4
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    dec ax
    dec ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    push word [bp + 0x14]
    push word [bp + 0x16]
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [bp + 0xa]
    call 0xb2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 4
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    dec ax
    dec ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov ax, word [0x0038]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x34fd
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    db 0x03, 0xc6 ; add ax, si
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x3502
    mov ax, 1
    jmp short 0x3505
    mov ax, 0
    add si, word [bp - 0x0004]
    db 0x8b, 0xce ; mov cx, si
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6a68], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x34de
    mov ax, word [0x003c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x3547
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    db 0x03, 0xc6 ; add ax, si
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x354c
    mov ax, 1
    jmp short 0x354f
    mov ax, 0
    add si, word [bp - 0x0004]
    db 0x8b, 0xce ; mov cx, si
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6a68], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x3528
    mov ax, word [0x0040]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov bx, word [bp + 0xa]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x3591
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    db 0x03, 0xc6 ; add ax, si
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x3596
    mov ax, 1
    jmp short 0x3599
    mov ax, 0
    add si, word [bp - 0x0004]
    db 0x8b, 0xce ; mov cx, si
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6a68], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x3572
    mov ax, word [0x0044]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x35db
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    db 0x03, 0xc6 ; add ax, si
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x35e0
    mov ax, 1
    jmp short 0x35e3
    mov ax, 0
    add si, word [bp - 0x0004]
    db 0x8b, 0xce ; mov cx, si
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6a68], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x35bc
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x37b3
    mov ax, 0x91ec
    push ax
    mov ax, 0x91e5
    push ax
    mov ax, 0x91dc
    push ax
    mov ax, 0x91d1
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp near 0x37c0
    mov ax, 0x9212
    push ax
    mov ax, 0x920b
    push ax
    mov ax, 0x9202
    push ax
    mov ax, 0x91f7
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp near 0x37c0
    mov ax, 0x9238
    push ax
    mov ax, 0x9231
    push ax
    mov ax, 0x9228
    push ax
    mov ax, 0x921d
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp near 0x37c0
    mov ax, 0x925e
    push ax
    mov ax, 0x9257
    push ax
    mov ax, 0x924e
    push ax
    mov ax, 0x9243
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp near 0x37c0
    mov ax, 0x9284
    push ax
    mov ax, 0x927d
    push ax
    mov ax, 0x9274
    push ax
    mov ax, 0x9269
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp near 0x37c0
    mov ax, 0x92aa
    push ax
    mov ax, 0x92a3
    push ax
    mov ax, 0x929a
    push ax
    mov ax, 0x928f
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp near 0x37c0
    mov ax, 0x92d0
    push ax
    mov ax, 0x92c9
    push ax
    mov ax, 0x92c0
    push ax
    mov ax, 0x92b5
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp near 0x37c0
    mov ax, 0x92f6
    push ax
    mov ax, 0x92ef
    push ax
    mov ax, 0x92e6
    push ax
    mov ax, 0x92db
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp near 0x37c0
    mov ax, 0x931c
    push ax
    mov ax, 0x9315
    push ax
    mov ax, 0x930c
    push ax
    mov ax, 0x9301
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp near 0x37c0
    mov ax, 0x9342
    push ax
    mov ax, 0x933b
    push ax
    mov ax, 0x9332
    push ax
    mov ax, 0x9327
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp near 0x37c0
    mov ax, 0x9368
    push ax
    mov ax, 0x9361
    push ax
    mov ax, 0x9358
    push ax
    mov ax, 0x934d
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp short 0x37c0
    mov ax, 0x938e
    push ax
    mov ax, 0x9387
    push ax
    mov ax, 0x937e
    push ax
    mov ax, 0x9373
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp short 0x37c0
    mov ax, 0x93b4
    push ax
    mov ax, 0x93ad
    push ax
    mov ax, 0x93a4
    push ax
    mov ax, 0x9399
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp short 0x37c0
    mov ax, 0x93da
    push ax
    mov ax, 0x93d3
    push ax
    mov ax, 0x93ca
    push ax
    mov ax, 0x93bf
    push ax
    push word [bp + 0x4]
    call 0x34cd
    add sp, byte 0x0a
    jmp short 0x37c0
    pop dx
    xchg byte [bp - 0x007a], dh
    xchg dx, ax
    xchg byte [bp - 0x357a], ch
    xchg dh, ah
    xchg byte [bp + si], al
    xchg word [0x3a87], bx
    xchg word [bp - 0x0079], dx
    jb short 0x3734
    lea ax, word [bx - 0x7858]
    ret
    db 0x87
    cmp ax, strict word 0xe
    jae short 0x37c0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7822]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d65], 0xd
    jbe short 0x37dc
    cmp byte [bx + 0x5d6a], 0xd
    jbe short 0x37dc
    mov word [0x95d0], 1
    mov word [bp - 0x0004], 0
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word ptr [bx + 0x38]
    mov word [bp - 0x0002], ax
    jmp short 0x382d
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a68], byte 1
    jne short 0x382a
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x157c
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0x8]
    mov word [bx + si], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word ptr [bx + 0x3a]
    cmp ax, word [bp - 0x0002]
    jge short 0x37f3
    mov ax, 0x95dc
    push ax
    mov ax, 0x159e
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x9420]
    push word [0x941e]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp near 0x38ff
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x30, 0x00 ; push word ptr [bx + 0x30]
    call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 6
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xe38
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 0x85
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
    mov ax, 3
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short 0x390a
    jmp near 0x3872
    ret
api_idx_002e:
    mov ax, 0xffd2
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0xae
    push ax
    mov ax, 6
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x95dc
    push ax
    call 0xe84e
    add sp, byte 4
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
    mov ax, 0xa
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x002e], 0
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    je short 0x3999
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a10], byte 0
    jg short 0x3973
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    je short 0x3999
    cmp word [bp - 0x0006], byte 0
    je short 0x397c
    inc word [bp - 0x0004]
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    push word [bx - 0x6a10]
    call 0xb27d
    add sp, byte 4
    mov word [bp - 0x0006], 1
    jmp short 0x39c3
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short 0x39c3
    cmp word [bp - 0x0006], byte 0
    je short 0x39aa
    inc word [bp - 0x0004]
    mov cx, 0xa
    imul cx
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    push word [bp + 0x6]
    call 0xb27d
    add sp, byte 4
    mov word [bp - 0x0006], 1
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    call 0xfa90
    pop cx
    add word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short 0x39e4
    jmp near 0x394a
    mov ax, 0xae
    push ax
    mov ax, 0x1a
    sub ax, word [bp - 0x0004]
    mov cx, 6
    imul cx
    add ax, strict word 0xfffb
    push ax
    call 0xe809
    add sp, byte 4
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short 0x3a6e
    cmp word [bp - 0x0006], byte 0
    je short 0x3a3e
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x30, 0x00 ; push word ptr [bx + 0x30]
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    call 0xe84e
    add sp, byte 4
    mov word [bp - 0x0006], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x3a07
    ret
api_idx_0032:
    mov ax, 0xffce
    call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a10]
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0028], 0xffff
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x002c], dx
    mov word [bp - 0x002e], ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_4
    add sp, byte 8
    push word [bp - 0x000c]
    push word [bp + 0x6]
    call api_idx_002e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x72
    push ax
    mov ax, 0x7f
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x72
    push ax
    mov ax, 0x97
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    call 0xe830
    add sp, byte 4
    mov word [bp - 0x0002], 0
    jmp near 0x3bd3
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x000a]
    jne short 0x3b90
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x76
    push ax
    mov ax, 0x84
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x71
    push ax
    mov ax, 0x7f
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0x3d
    push ax
    mov ax, 0x2b
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x76
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x71
    push ax
    mov ax, 0x97
    push ax
    push word [bp + 0x8]
    call 0xbaa6
    add sp, byte 0x0e
    jmp short 0x3bd0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp + 0x8]
    mov ax, dx
    cmp ax, word [bp - 0x0002]
    jne short 0x3ba7
    mov al, 0x20
    jmp short 0x3ba9
    mov al, 0
    cbw
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x76
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x71
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short 0x3bde
    jmp near 0x3b2c
    mov ax, 0
    push ax
    push word [bp - 0x002c]
    push word [bp - 0x002e]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x000c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    je short 0x3c0c
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a10]
    add word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x3bf9
    mov ax, 1
    cmp word [bp - 0x0004], byte 0
    jle short 0x3c23
    mov ax, 0
    mov bx, word [bp + 0xc]
    mov word [bx + 0x8], ax
    mov word [bp - 0x000e], 0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0xc]
    cmp word [bx + si], byte 0
    jne short 0x3c45
    jmp near 0x3d2e
    mov ax, 0x3a
    imul word [bp - 0x000e]
    add ax, strict word 4
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 1
    mov cx, word [bp - 0x0002]
    cmp cx, word [bp + 0x6]
    jne short 0x3c7f
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0xbe
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x95f8
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 9
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x95f8
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000e]
    inc ax
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x000e]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0026], ax
    cmp ax, word [bp + 0x6]
    jne short 0x3d2b
    mov ax, word [bp - 0x000e]
    mov word [bp - 0x0032], ax
    cmp word [0x0e32], byte 0
    jne short 0x3d2b
    mov ax, 0x16
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call loc_0dc0
    add sp, byte 0x0a
    inc word [bp - 0x000e]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jg short 0x3d3c
    jmp near 0x3c33
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000e]
    inc ax
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 0
    je short 0x3d89
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0008], ax
    cmp word [0x5b3e], byte 0
    je short 0x3d73
    jmp near 0x3e7d
    mov word [bp - 0x0008], 0xffff
    mov ax, word [bp - 0x0032]
    mov word [bp - 0x0002], ax
    mov ax, 0x3a
    imul word [bp - 0x0002]
    add ax, strict word 4
    mov word [bp - 0x0006], ax
    mov ax, 0x16
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call loc_0dc0
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13d
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call loc_0dc0
    add sp, byte 0x0a
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x3dfc
    jmp short 0x3dee
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0030], ax
    jmp short 0x3e51
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x000e]
    dec ax
    cwd
    idiv word [bp - 0x000e]
    mov word [bp - 0x0002], dx
    jmp short 0x3e74
    mov ax, word [bp - 0x0002]
    inc ax
    cwd
    idiv word [bp - 0x000e]
    mov word [bp - 0x0002], dx
    jmp short 0x3e74
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0008], ax
    jmp short 0x3e74
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x0008], ax
    jmp short 0x3e74
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0008], ax
    jmp short 0x3e74
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp + 0x8]
    mov word [bp - 0x0008], dx
    jmp short 0x3e74
    cmp ax, strict word 8
    je short 0x3e0b
    cmp ax, strict word 0xa
    je short 0x3e1b
    cmp ax, strict word 0xd
    je short 0x3e28
    cmp ax, strict word 0x20
    je short 0x3e44
    cmp ax, strict word 0x2b
    je short 0x3e3c
    cmp ax, strict word 0x2d
    je short 0x3e34
    cmp ax, strict word 0x3d
    je short 0x3e3c
    cmp word [bp - 0x0008], byte 0xff
    jne short 0x3e7d
    jmp near 0x3d94
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp + 0x8]
    jge short 0x3e90
    cmp ax, word [bp - 0x000a]
    je short 0x3e90
    mov word [bp - 0x000a], ax
    jmp near 0x3f36
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp - 0x000a]
    jne short 0x3ee2
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x000a]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x6940]
    cmp ax, cx
    jle short 0x3ed8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    dec byte [bx + 0x5d6c]
    inc word [bp - 0x000c]
    jmp short 0x3ee0
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x3f36
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp + 0x8]
    jne short 0x3f20
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x000a]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short 0x3f16
    cmp word [bp - 0x000c], byte 0
    jle short 0x3f16
    inc byte [bx + 0x5d6c]
    dec word [bp - 0x000c]
    jmp short 0x3f1e
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x3f36
    mov ax, word [bp - 0x0008]
    sub ax, word [bp + 0x8]
    dec ax
    mov word [bp - 0x0028], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0026]
    mov word [bp - 0x002a], ax
    cmp word [bp - 0x0028], byte 0xff
    jne short 0x3f3f
    jmp near 0x3ab4
    mov ax, word [bp - 0x000c]
    mov cx, word [bp + 0x6]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a10], ax
    mov ax, 1
    push ax
    push ax
    mov ax, 9
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0x3a
    imul word [bp - 0x0028]
    add ax, strict word 4
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0x3a
    imul word [bp - 0x0028]
    add ax, strict word 4
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x002c]
    push word [bp - 0x002e]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x002a]
    ret
api_idx_0088:
    mov ax, 0xff78
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6940], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x22
    jl short 0x3fa9
    mov word [bp - 0x0002], 0
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x95f8
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x258
    push ax
    call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jle short 0x3fd5
    lea ax, word [bp - 0x0088]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0088]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    mov word [bp - 0x0006], 0
    lea ax, word [bp - 0x0020]
    push ax
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    jmp short 0x4061
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x0020]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    mov cx, ax
    mov ax, 0x64
    sub ax, cx
    add word [bp - 0x0002], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jl short 0x4038
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a10]
    cmp ax, word [bp - 0x0002]
    jle short 0x4080
    mov ax, word [bp - 0x0002]
    mov word [bx - 0x6a10], ax
    lea ax, word [bp - 0x0020]
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0002_4
    add sp, byte 8
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word ptr [bx + 0x38]
    mov word [bp - 0x0002], ax
    jmp short 0x40e9
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a68], byte 0
    jne short 0x40d8
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x40e6
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word ptr [bx + 0x3a]
    cmp ax, word [bp - 0x0002]
    jge short 0x40b8
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jl short 0x4098
    lea ax, word [bp - 0x0038]
    push ax
    lea ax, word [bp - 0x0020]
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0032
    add sp, byte 0x0a
    mov word [bp - 0x0006], ax
    cmp word [bp - 0x0006], byte 4
    je short 0x4129
    jmp near 0x4019
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0xffe4
    call 0xf40b
    mov ax, word [bp + 0x6]
    mov word [bp - 0x000c], ax
    mov ax, word [bp + 0x8]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0008], 0
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x001c], 0
    mov word [bp - 0x001a], 5
    mov word [bp - 0x0018], 3
    mov word [bp - 0x0016], 4
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0012], 0
    mov word [bp - 0x0010], 1
    mov word [bp - 0x000e], 2
    mov word [bp - 0x0002], 0
    cmp word [bp - 0x0002], byte 2
    jne short 0x4193
    jmp near 0x4225
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    db 0x03, 0xdd ; add bx, bp
    mov cx, word [bx - 0x001c]
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d64]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    db 0x03, 0xdd ; add bx, bp
    mov cx, word [bx - 0x001a]
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d64]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    mov cx, 6
    cwd
    idiv cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    db 0x03, 0xdd ; add bx, bp
    mov cx, word [bx - 0x000c]
    db 0x03, 0xc1 ; add ax, cx
    dec ax
    dec ax
    dec ax
    mov word [bx - 0x000c], ax
    cmp word [bx - 0x000c], byte 1
    jge short 0x41fa
    mov word [bx - 0x000c], 1
    mov ax, word [bx - 0x000c]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov cx, word [bx - 0x000c]
    db 0x2b, 0xc8 ; sub cx, ax
    db 0x8b, 0xc1 ; mov ax, cx
    inc ax
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0004]
    db 0x03, 0xc8 ; add cx, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x6a10], cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short 0x4233
    jmp near 0x418a
    mov word [0x95f4], 0
    mov ax, word [0x0040]
    mov word [bp - 0x0002], ax
    jmp short 0x4266
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x4263
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    add ax, word [0x95f4]
    inc ax
    mov word [0x95f4], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x0042]
    jle short 0x4241
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx - 0x6a10]
    cwd
    idiv word [bp + 0x8]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c18]
    dec ax
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax
    add bx, word [bp + 0xa]
    mov al, byte [bx + 0x5d6c]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov cx, word [bx + 0x5c18]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short 0x42c7
    mov word [bp - 0x0002], 0
    add ax, word [bp - 0x0002]
    cmp ax, strict word 0x64
    jle short 0x42d4
    mov word [bp - 0x0002], 0
    cmp word [bp - 0x0002], byte 0
    jge short 0x42df
    mov word [bp - 0x0002], 0
    mov ax, word [bp + 0x6]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx - 0x6a10]
    cmp ax, word [bp - 0x0002]
    jge short 0x42f2
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0002]
    sub word [bx - 0x6a10], ax
    mov al, byte [bp - 0x0002]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, word [bp + 0xa]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    add byte [bx + 0x5d6c], al
    ret
math_loc_4310:
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x45d2
    mov ax, 3
    push ax
    mov ax, 6
    push ax
    mov ax, 8
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    jmp near 0x45df
    mov ax, 9
    push ax
    mov ax, 3
    push ax
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 0x20
    push ax
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 9
    push ax
    mov ax, 3
    push ax
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 4
    push ax
    mov ax, 9
    push ax
    mov ax, 4
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 0x10
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 5
    push ax
    push ax
    mov ax, 6
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 7
    push ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    mov ax, 0xc
    push ax
    mov ax, 3
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 5
    push ax
    mov ax, 6
    push ax
    mov ax, 4
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 0xd
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 9
    push ax
    mov ax, 3
    push ax
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 0x1d
    push ax
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 9
    push ax
    mov ax, 3
    push ax
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 0x1f
    push ax
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 0xc
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 0x20
    push ax
    mov ax, 3
    push ax
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 5
    push ax
    push ax
    mov ax, 6
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 4
    push ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 7
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 0x1c
    push ax
    mov ax, 3
    push ax
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 7
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp near 0x45df
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 9
    push ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    mov ax, 0x1f
    push ax
    mov ax, 3
    push ax
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp short 0x45df
    mov ax, 4
    push ax
    mov ax, 6
    push ax
    push ax
    push word [bp + 0x4]
    call 0x4140
    add sp, byte 8
    mov ax, 9
    push ax
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    mov ax, 0x11
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0x4270
    add sp, byte 8
    jmp short 0x45df
    outsb
    xchg bx, ax
    xchg byte [bp + di - 0x6c50], dl
    ficom dword [bp + di - 0x6bf9]
    jae short 0x4556
    inc si
    xchg sp, ax
    popf
    xchg sp, ax
    add dx, word [di - 0x6b39]
    sub ax, 0x5795
    xchg bp, ax
    test byte [di - 0x6a41], dl
    cmp ax, strict word 0xe
    jae short 0x45df
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6a03]
    ret
api_idx_00ac:
    mov ax, 0xff54
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x4695
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 6
    mov word [bp - 0x0002], ax
    jmp near 0x46a2
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    jmp short 0x46a2
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 4
    mov word [bp - 0x0002], ax
    jmp short 0x46a2
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    jmp short 0x46a2
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    jmp short 0x46a2
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 5
    mov word [bp - 0x0002], ax
    jmp short 0x46a2
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 4
    mov word [bp - 0x0002], ax
    jmp short 0x46a2
    push ax
    xchg si, ax
    popaw
    xchg si, ax
    jo short 0x4615
    adc byte [bp - 0x69b0], 0x70
    xchg si, ax
    nop
    xchg si, ax
    nop
    xchg si, ax
    mov al, byte [0x9096]
    xchg si, ax
    push ax
    xchg si, ax
    mov al, byte [0x7096]
    xchg si, ax
    mov al, 0x96
    cmp ax, strict word 0xe
    jae short 0x46a2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6940]
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0008]
    mov cx, 6
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    mov ax, word [bp - 0x0006]
    shl ax, 1
    add ax, word [bp - 0x0008]
    mov cx, 3
    imul cx
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 8
    jge short 0x46da
    dec word [bp - 0x0002]
    cmp ax, strict word 0xf
    jle short 0x46e2
    inc word [bp - 0x0002]
    cmp ax, strict word 0x11
    jle short 0x46ea
    inc word [bp - 0x0002]
    cmp word [bp - 0x0006], byte 0x0f
    jle short 0x46f6
    mov ax, word [bp - 0x0006]
    add word [bp - 0x000c], ax
    cmp word [bp - 0x0006], byte 0x11
    jle short 0x4702
    mov ax, word [bp - 0x0006]
    add word [bp - 0x000c], ax
    cmp word [bp - 0x0002], byte 1
    jge short 0x470d
    mov word [bp - 0x0002], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [bx + 0x5e3b]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x4731
    mov word [bp - 0x0002], 1
    mov word [bp - 0x0004], 1
    mov ax, word [bp - 0x0002]
    add word [bx + 0x5c0c], ax
    add word [bx + 0x5c0e], ax
    mov ax, word [bp - 0x0004]
    add word [bx + 0x5c10], ax
    add word [bx + 0x5c12], ax
    mov ax, 0xf
    imul word [bp - 0x000c]
    mov word [bx + 0x5c16], ax
    cmp byte [bx + 0x5e2b], 5
    jne short 0x4764
    shl ax, 1
    mov cx, 3
    cwd
    idiv cx
    mov word [bx + 0x5c16], ax
    mov ax, 0x64
    imul word [bx + 0x5c10]
    cwd
    idiv word [bx + 0x5c12]
    mov word [bp - 0x000a], ax
    cmp ax, strict word 1
    jge short 0x4784
    cmp word [bx + 0x5c10], byte 0
    jle short 0x4784
    mov ax, 1
    jmp short 0x4787
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x000a], ax
    mov ax, 1
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x93e9
    push ax
    mov ax, 0x93e5
    push ax
    mov ax, 0xd5
    push ax
    push word [bx + 0x5c12]
    push word [bp - 0x000a]
    mov ax, 0x63
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    call api_idx_0020
    add sp, byte 0x14
    lea ax, word [bp - 0x005c]
    push ax
    mov ax, 0x1395
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x005c]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
    mov ax, 0x67
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 6
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x93ed
    push ax
    mov ax, 0x93eb
    push ax
    mov ax, 0xd4
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c0e]
    push word [bx + 0x5c0c]
    mov ax, 0x5d
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    call api_idx_0020
    add sp, byte 0x14
    lea ax, word [bp - 0x005c]
    push ax
    mov ax, 0x1394
    cmp word [bp - 0x0002], byte 1
    jne short 0x4833
    mov ax, 0x1393
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00ac]
    push ax
    push word [bp - 0x0002]
    call 0xb27d
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00ac]
    push ax
    lea ax, word [bp - 0x005c]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    lea ax, word [bp - 0x005c]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
    mov ax, 0x67
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 6
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c18], byte 0x14
    jle short 0x489a
    ret
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp short 0x4907
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    jmp short 0x4914
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    inc ax
    mov word [bp - 0x0002], ax
    jmp short 0x4914
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    inc ax
    mov word [bp - 0x0002], ax
    jmp short 0x4914
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    jmp short 0x4914
    neg word [bx + si - 0x66fa]
    adc al, 0x99
    adc al, 0x99
    neg word [bx + si - 0x66fa]
    adc al, 0x99
    push es
    cwd
    neg word [bx + si - 0x66fa]
    neg word [bx + si - 0x66de]
    neg word [bx + si - 0x66de]
    cmp ax, strict word 0xe
    jae short 0x4914
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x66ce]
    cmp word [bp - 0x0004], byte 8
    jge short 0x491d
    dec word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [bx + 0x5e3b]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x493c
    mov word [bp - 0x0002], 0
    mov al, byte [bx + 0x5e3a]
    cbw
    sub ax, word [bp - 0x0002]
    mov byte [bx + 0x5e3a], al
    cmp byte [bx + 0x5e3a], 0
    jge short 0x4954
    mov byte [bx + 0x5e3a], 0
    ret
api_idx_0018:
    mov ax, 0xffe8
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d65]
    sub ah, ah
    mov word [bp - 0x0004], ax
    mov al, byte [bx + 0x5d66]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    mov word [bp - 0x000a], ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x4b58
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0016], 0x20
    mov word [bp - 0x0018], 1
    jmp near 0x4b67
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 1
    mov word [bp - 0x0016], 0x1e
    mov word [bp - 0x0018], 1
    jmp near 0x4b67
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 2
    mov word [bp - 0x0016], 0x1d
    mov word [bp - 0x0018], 3
    jmp near 0x4b67
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 2
    mov word [bp - 0x0016], 0x1d
    mov word [bp - 0x0018], 1
    jmp near 0x4b67
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0016], 0x20
    mov word [bp - 0x0018], 3
    jmp near 0x4b67
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 3
    mov word [bp - 0x0016], 0x1f
    mov word [bp - 0x0018], 1
    jmp near 0x4b67
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 1
    mov word [bp - 0x0016], 0x1e
    mov word [bp - 0x0018], 3
    jmp near 0x4b67
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    cwd
    idiv cx
    mov word [bp - 0x0014], dx
    mov ax, 0x1e
    cmp word [bp - 0x0014], byte 0
    jne short 0x4aa9
    mov ax, 0x20
    mov word [bp - 0x0016], 0x20
    mov word [bp - 0x0016], ax
    mov word [bp - 0x0018], 1
    jmp near 0x4b67
    mov ax, word [bp - 0x000a]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 1
    mov word [bp - 0x0016], 0x1e
    mov word [bp - 0x0018], 3
    jmp near 0x4b67
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0016], 0x20
    mov word [bp - 0x0018], 3
    jmp short 0x4b67
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 3
    mov word [bp - 0x0016], 0x1f
    mov word [bp - 0x0018], 3
    jmp short 0x4b67
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 2
    mov word [bp - 0x0016], 0x1d
    mov word [bp - 0x0018], 5
    jmp short 0x4b67
    mov word [bp - 0x0018], 0
    jmp short 0x4b67
    jl short 0x4ad9
    xlatb
    cwd
    clc
    cwd
    jl short 0x4adf
    sbb word [bp + si - 0x65c6], bx
    pop bx
    call far 0x9a9d:0x9a7c
    mov si, 0xfb9a
    call far 0x9b3c:0x9b1c
    pop sp
    wait
    cmp ax, strict word 0xe
    jae short 0x4b65
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x647d]
    jmp short 0x4b35
    cmp word [bp - 0x0018], byte 0
    jne short 0x4b6e
    ret
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    cmp ax, word [bp - 0x0018]
    jge short 0x4b82
    jmp near 0x4cc4
    add bx, word [bp - 0x0014]
    inc byte [bx + 0x5d50]
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0012], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c1e], byte 0
    jle short 0x4be9
    mov word [bp - 0x0004], 0
    mov ax, 6
    imul word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short 0x4bde
    push word [bp - 0x0004]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short 0x4bde
    inc word [bp - 0x0012]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x66
    jl short 0x4bb0
    cmp word [bp - 0x0012], byte 0
    jg short 0x4bf2
    jmp near 0x4cb6
    mov word [bp - 0x000e], 0
    cmp word [bp - 0x000c], byte 0x0d
    jle short 0x4c00
    inc word [bp - 0x000e]
    cmp word [bp - 0x000c], byte 0x10
    jle short 0x4c09
    inc word [bp - 0x000e]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [bx + 0x5e3b]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x4c33
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add bx, ax
    inc word [bx + 0x5c1e]
    jmp near 0x4cb6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d54]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0016]
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    mov cx, 0x14
    cwd
    idiv cx
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d66]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    imul word [bp - 0x0012]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x000e]
    mov word [bp - 0x0010], ax
    cmp ax, strict word 0xf
    jle short 0x4c98
    mov word [bp - 0x0010], 0xf
    mov ax, word [bp - 0x0010]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add bx, cx
    add word [bx + 0x5c1e], ax
    cmp word [bx + 0x5c1e], strict word 0x3e7
    jle short 0x4cb6
    mov word [bx + 0x5c1e], 0x3e7
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short 0x4cc4
    jmp near 0x4b8e
    ret
api_idx_00b4:
    mov ax, 0xff4c
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0014], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x4cd0
    mov word [bp - 0x0004], 0
    mov ax, 7
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    inc word [bp - 0x0004]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0x12
    jae short 0x4d1d
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0014], byte 0
    je short 0x4d23
    cmp word [bp - 0x0004], byte 3
    jl short 0x4cee
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0x12
    jb short 0x4d38
    jmp near 0x4df3
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0014], byte 0
    je short 0x4d4a
    jmp near 0x4df3
    mov word [bx - 0x0014], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    inc byte [bx + 0x5d64]
    mov ax, 1
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x93ef
    push ax
    mov ax, 0x93ee
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xcc
    push ax
    mov ax, 0
    push ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x23
    push ax
    mov ax, 0x73
    push ax
    mov ax, 1
    push ax
    call api_idx_0020
    add sp, byte 0x14
    lea ax, word [bp - 0x0064]
    push ax
    mov ax, 0x1396
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00b4]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x13ba
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00b4]
    push ax
    lea ax, word [bp - 0x0064]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0064]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
    mov ax, 0x67
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 6
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0x4e02
    jmp near 0x4ce9
    ret
api_idx_0006:
    mov ax, 0xfffa
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    jmp short 0x4e57
    mov word [bp - 0x0006], 2
    jmp short 0x4e64
    mov word [bp - 0x0006], 4
    jmp short 0x4e64
    mov word [bp - 0x0006], 7
    jmp short 0x4e64
    mov word [bp - 0x0006], 0xa
    jmp short 0x4e64
    mov word [bp - 0x0006], 0xe
    jmp short 0x4e64
    mov word [bp - 0x0006], 0x12
    jmp short 0x4e64
    mov word [bp - 0x0006], 0x18
    jmp short 0x4e64
    pop di
    sahf
    db 0x66, 0x9e ; sahf 
    insw
    sahf
    je short 0x4def
    jnp short 0x4df1
    sbb byte [bp - 0x6177], 0x3d
    pop es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6170]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    cmp ax, word [bp - 0x0006]
    jl short 0x4e78
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x4e13
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2e]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jge short 0x4e9d
    mov al, byte [bp - 0x0004]
    mov byte [bx + 0x5e2e], al
    ret
api_idx_00a4:
    mov ax, 0xff5c
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    inc word [bx + 0x5c18]
    mov al, byte [bx + 0x5e3b]
    sub ah, ah
    cmp ax, word [bx + 0x5c18]
    jg short 0x4ec1
    mov byte [bx + 0x5e3b], 0
    push word [bp + 0x4]
    call api_idx_0006
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2189
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x1392
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xb300
    add sp, byte 6
    lea ax, word [bp - 0x00a4]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_00b4
    pop cx
    push word [bp + 0x4]
    call api_idx_00ac
    pop cx
    push word [bp + 0x4]
    call api_idx_0004_7
    pop cx
    push word [bp + 0x4]
    call math_loc_4310
    pop cx
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a10]
    add word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x4f5f
    cmp word [bp - 0x0004], byte 0
    jle short 0x4f8b
    mov ax, 0x25d
    push ax
    push word [bp + 0x4]
    call api_idx_0088
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_0052
    pop cx
    push word [bp + 0x4]
    call api_idx_0018
    pop cx
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d50], 0
    jbe short 0x4fbe
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_00ca
    add sp, byte 4
    jmp short 0x4f9e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x4f9e
    ret
api_idx_0046:
    mov ax, 0xffba
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    lea ax, word [bp - 0x0044]
    push ax
    mov ax, 0
    push ax
    call 0xb63c
    add sp, byte 8
    mov word [0x9492], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c18], byte 0x10
    jge short 0x5020
    mov ax, word [bx + 0x5c18]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0048]
    mov dx, word [bx - 0x0046]
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    jmp short 0x5066
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    add ax, strict word 0xfff0
    mov word [bp - 0x0046], ax
    mov ax, word [bp - 0x0008]
    mov dx, word [bp - 0x0006]
    sub ax, word [bp - 0x000c]
    sbb dx, word [bp - 0x000a]
    push ax
    push dx
    mov ax, word [bp - 0x0046]
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
    add ax, word [bp - 0x0008]
    adc dx, word [bp - 0x0006]
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c00]
    mov dx, word [bx + 0x5c02]
    cmp dx, word [bp - 0x0002]
    jl short 0x5082
    jne short 0x5084
    cmp ax, word [bp - 0x0004]
    jae short 0x5084
    jmp short 0x5099
    cmp word [bp + 0x6], byte 0
    je short 0x5093
    push word [bp + 0x4]
    call api_idx_00a4
    pop cx
    jmp short 0x5097
    mov ax, 1
    ret
    jmp short 0x509d
    mov ax, 0
    ret
    jmp near 0x4ff7
    db 0xc3
api_idx_000e:
    mov ax, 0xfff2
    call 0xf40b
    cmp word [0x8f20], byte 0
    jg short 0x50b1
    jmp near 0x5160
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
    jmp short 0x5106
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short 0x50df
    mov ax, 4
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short 0x511a
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short 0x5101
    mov ax, 1
    mov word [bp - 0x0004], ax
    jmp short 0x511a
    cmp ax, strict word 0
    je short 0x50cb
    cmp ax, strict word 1
    je short 0x50ed
    cmp ax, strict word 2
    je short 0x50cb
    cmp ax, strict word 3
    je short 0x50ed
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    push word [bp - 0x0004]
    mov ax, 0x8f
    push ax
    mov ax, 0x21
    push ax
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
    call 0xefd1
    add sp, byte 0x16
    ret
api_idx_000c_3:
    mov ax, 0xfff4
    call 0xf40b
    mov word [0x905e], 5
    mov word [0x830a], 5
    mov word [0x9436], 0x14
    mov word [0x9438], 0
    mov word [0x943a], 0
    mov word [0x9704], 0xffff
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    jmp short 0x51aa
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call api_idx_0046
    add sp, byte 4
    or word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x5197
    cmp word [bp - 0x0004], byte 0
    jne short 0x51ba
    ret
    call 0xc145
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
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, 0x93f0
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x67
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 6
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9418], dx
    mov word [0x9416], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x136
    push ax
    mov ax, 6
    push ax
    mov ax, 0xe4
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x941c], dx
    mov word [0x941a], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9420], dx
    mov word [0x941e], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x1e
    push ax
    mov ax, 0xdc
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9424], dx
    mov word [0x9422], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x74
    push ax
    mov ax, 0x136
    push ax
    mov ax, 0x2e
    push ax
    mov ax, 0x114
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9428], dx
    mov word [0x9426], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0xbf
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x7e
    push ax
    mov ax, 0xb8
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x942c], dx
    mov word [0x942a], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x5a
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9434], dx
    mov word [0x9432], ax
    mov ax, 0xf
    push ax
    mov ax, 0xb
    push ax
    call 0xd61c
    add sp, byte 4
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0x5346
    mov ax, 0
    push ax
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [0x010c]
    mov word [0x844e], ax
    mov ax, 1
    push ax
    push word [0x844e]
    mov ax, 0
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    mov word [0x9492], 0
    mov word [0x9490], 0
    mov word [0x948e], 0
    mov word [bp - 0x0002], 0
    jmp short 0x536f
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call api_idx_0046
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x535f
    cmp word [0x8450], byte 0
    je short 0x5395
    push word [0x844c]
    push word [0x844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 0
    push ax
    call 0xd907
    pop cx
    mov ax, 0xf
    push ax
    call 0xc12a
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9434]
    push word [0x9432]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x942c]
    push word [0x942a]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9428]
    push word [0x9426]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9424]
    push word [0x9422]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9420]
    push word [0x941e]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x941c]
    push word [0x941a]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9418]
    push word [0x9416]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    call 0xe942
    add sp, byte 8
    mov ax, 1
    push ax
    call 0xc12a
    pop cx
    mov ax, 2
    push ax
    call 0xc12a
    pop cx
    call api_idx_000e
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    ret
    pop word [0x9406]
    pop cx
    mov word [0x9402], sp
    mov word [0x9404], bp
    mov word [0x93fe], si
    mov word [0x9400], di
    cld
    mov di, 0x9408
    mov cx, 0x97ac
    db 0x2b, 0xcf ; sub cx, di
    shr cx, 1
    je short 0x5498
    db 0x2b, 0xc0 ; sub ax, ax
    rep stosw
    call 0xe
    mov bp, word [0x9404]
    mov sp, word [0x9402]
    mov si, word [0x93fe]
    mov di, word [0x9400]
    push cx
    jmp [0x9406]
    and ax, strict word 0x20
    sub ch, byte [bp + si]
    sub al, byte [bx + si]
    push si
    cs and al, 0x24
    and al, 0
    inc cx
    inc bx
    inc dx
    inc bx
    inc dx
    inc bx
    inc bx
    inc bx
    inc bx
    dec ax
    inc bx
    dec ax
    inc dx
    inc cx
    add byte [bx + si], dh
    xor dh, byte [bp + si]
    xor dh, byte [bp + si]
    xor dh, byte [bp + di]
    xor dh, byte [bx + di]
    xor word [bp + si], si
    xor dh, byte [bp + di]
    xor byte [bx + si], al
    inc cx
    inc bx
    inc bx
    inc bx
    inc bx
    inc sp
    inc bx
    inc bx
    inc bx
    dec ax
    dec ax
    dec bx
    inc sp
    inc cx
    add byte [bx + si], dh
    xor dh, byte [bp + si]
    xor dh, byte [bp + si]
    xor dh, byte [bp + di]
    xor dh, byte [bx + di]
    xor dh, byte [bp + di]
    xor dh, byte [bp + di]
    xor byte [bx + si], al
    inc cx
    inc bx
    inc bx
    inc bx
    inc bx
    inc sp
    inc bx
    inc bx
    inc bx
    dec cx
    inc si
    dec bx
    inc bp
    inc cx
    add byte [bx + si], dh
    xor dh, byte [bp + si]
    xor dh, byte [bp + si]
    xor dh, byte [bp + di]
    xor dh, byte [bx + di]
    xor dh, byte [bx + di]
    xor dh, byte [bp + di]
    xor byte [bx + si], al
    inc cx
    inc bx
    dec ax
    inc bx
    dec ax
    inc sp
    inc bx
    inc bx
    inc bx
    dec ax
    inc si
    dec cx
    inc sp
    inc cx
    add byte [bx + si], dh
    xor dh, byte [bp + di]
    xor dh, byte [bp + di]
    xor dh, byte [bp + di]
    xor dh, byte [bx + di]
    xor word [bx + di], si
    xor dh, byte [bp + di]
    xor byte [bx + si], al
    inc cx
    inc bx
    dec bx
    inc bx
    dec ax
    dec ax
    inc di
    inc bx
    inc bx
    dec cx
    inc bp
    inc bx
    inc dx
    inc cx
    add byte [bx + si], dh
    xor dh, byte [bp + di]
    xor dh, byte [bp + si]
    xor si, word [bp + si]
    xor dh, byte [bx + di]
    xor dh, byte [bx + di]
    xor dh, byte [bp + si]
    xor byte [bx + si], al
    inc cx
    inc bx
    inc dx
    inc bx
    inc bx
    inc sp
    inc bp
    inc bx
    inc bx
    inc bp
    inc bp
    inc bp
    inc di
    inc cx
    add byte [bx + si], dh
    xor dh, byte [bx + di]
    xor dh, byte [bx + di]
    xor dh, byte [bx + di]
    xor dh, byte [bx + di]
    xor word [bx + di], si
    xor si, word [bp + di]
    xor byte [bx + si], al
    inc cx
    inc bx
    dec cx
    inc bx
    dec cx
    inc dx
    dec ax
    inc bx
    inc bx
    inc si
    dec bx
    inc si
    inc si
    inc cx
    add byte [bx + si], dh
    xor dh, byte [bp + di]
    xor dh, byte [bp + di]
    xor word [bx + di], si
    xor dh, byte [bx + di]
    xor word [bp + di], si
    xor si, word [bp + di]
    xor byte [bx + si], al
    inc cx
    inc bx
    inc bp
    inc bx
    inc bx
    inc bp
    inc di
    inc bx
    inc bx
    dec cx
    inc si
    dec bx
    inc si
    inc cx
    add byte [bx + si], dh
    xor dh, byte [bp + si]
    xor dh, byte [bp + si]
    xor dh, byte [bp + si]
    xor dh, byte [bx + di]
    xor dh, byte [bp + si]
    xor dh, byte [bp + si]
    xor byte [bx + si], al
    inc cx
    inc bx
    dec bx
    inc bx
    inc di
    inc sp
    dec ax
    inc bx
    inc bx
    inc si
    dec bx
    dec cx
    inc sp
    inc cx
    add byte [bx + si], dh
    xor dh, byte [bp + di]
    xor dh, byte [bp + si]
    xor dh, byte [bx + di]
    xor dh, byte [bx + di]
    xor word [bp + si], si
    xor si, word [bp + si]
    xor byte [bx + si], al
    inc cx
    inc bx
    dec ax
    inc bx
    dec ax
    dec ax
    inc di
    inc bx
    inc bx
    inc bx
    inc bp
    inc bx
    dec ax
    inc cx
    add byte [bx + si], dh
    xor dh, byte [bp + di]
    xor dh, byte [bp + si]
    xor si, word [bp + si]
    xor dh, byte [bx + di]
    xor word [bp + si], si
    xor dh, byte [bp + di]
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor byte [bx + di], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + di], dh
    xor word [bx + si], si
    xor word [bx + si], si
    xor word [bx + si], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], ax
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor word [bx + di], si
    xor word [bx + si], ax
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + si], si
    xor byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], ax
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor byte [bx + di], dh
    xor byte [bx + si], al
    xor word [bx + si], si
    xor byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor word [bx + si], si
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + di], dh
    xor word [bx + si], si
    xor word [bx + si], si
    xor word [bx + si], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + di], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor byte [bx + di], dh
    xor word [bx + si], ax
    xor word [bx + si], si
    xor byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + di], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor word [bx + si], ax
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor word [bx + si], si
    xor word [bx + si], ax
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor word [bx + di], si
    xor word [bx + si], ax
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor word [bx + si], ax
    and ax, 0x2820
    add byte [bx + di], ch
    add byte [bx], ch
    times 4 db 0
    push ax
    inc bx
    push si
    push di
    push bx
    inc bx
    push dx
    dec si
    cs push si
    inc di
    inc cx
    times 12 db 0
