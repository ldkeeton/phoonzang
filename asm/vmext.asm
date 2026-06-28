%include "structs/structs.inc"
%include "structs/vmext.inc"
org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0x4b, 0x52, 0x98, 0x90 ; header (8 bytes)

    call 0x9c0b
    or word [bp + si - 0x005e], sp
    mov ax, 0xfffe
    call 0xf40b
    mov word [0x8f22], 0
    mov word [0x9180], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6e7e], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0x37
    cmp word [0x906a], byte 0
    je short 0x6a
    mov ax, 1
    push ax
    push word [0x9068]
    call 0xc459
    add sp, byte 4
    mov word [0x906a], 0
    cmp word [0x830a], byte 0x17
    jne short 0x84
    call api_idx_0002_2
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 4
    push ax
    call api_idx_008a
    pop cx
    cmp word [0x830a], byte 0x1b
    jne short 0x8e
    call api_idx_0012
    cmp word [0x830a], byte 0x1e
    jne short 0x9d
    push word [0x8af0]
    call api_idx_0008_2
    pop cx
    cmp word [0x830a], byte 0x1f
    jne short 0xac
    push word [0x8af0]
    call math_loc_15af
    pop cx
    mov word [0x830a], 5
    mov ax, 0
    ret
math_loc_00b6:
    mov ax, 0
    call 0xf40b
    mov bx, word [0x0e14]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jg short 0xec
    add ax, strict word 7
    cmp ax, word [bp + 0x6]
    jl short 0xec
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    jg short 0xec
    add ax, strict word 7
    cmp ax, word [bp + 0x8]
    jl short 0xec
    mov ax, si
    ret
    mov ax, 0xffff
    ret
api_idx_0004:
    mov ax, 0xfffc
    call 0xf40b
    push word [bp + 0xc]
    push word [bp + 0xa]
    mov bx, word [bp + 0x8]
    push word [bx]
    call math_loc_00b6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x167
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [0x8f48]
    call math_loc_00b6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x167
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
    call math_loc_00b6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x167
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov bx, word [bp + 0x8]
    cmp dx, word [bx]
    jne short 0x165
    mov ax, 1
    ret
    jmp short 0x136
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
api_idx_0002:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    jmp short 0x211
    mov bx, word [0x0e12]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si + 0x870]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    je short 0x1d0
    mov ax, 0xffff
    ret
    mov al, byte [bx + si + 0x690]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short 0x20e
    mov al, byte [bx + si + 0x780]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short 0x20e
    cmp byte [bx + si + 0x5a0], 0
    jbe short 0x20e
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
    jne short 0x20e
    mov ax, word [bp - 0x0002]
    ret
    inc word [bp - 0x0002]
    cmp word [bp - 0x0002], strict word 0xf0
    jl short 0x1ba
    mov ax, 0xffff
    ret
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
    jne short 0x24a
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
api_idx_0002_2:
    mov ax, 0xfffe
    call 0xf40b
    mov word [0x9188], 0
    mov ax, word [0x830c]
    jmp short 0x2e3
    mov word [bp - 0x0002], 1
    jmp short 0x2f0
    mov word [bp - 0x0002], 2
    jmp short 0x2f0
    mov word [bp - 0x0002], 3
    jmp short 0x2f0
    mov word [0x9188], 1
    mov word [bp - 0x0002], 4
    jmp short 0x2f0
    mov word [bp - 0x0002], 5
    jmp short 0x2f0
    mov word [bp - 0x0002], 6
    jmp short 0x2f0
    rcl word [bp + si - 0x003f], 0x52
    rcl word [bp + si - 0x003f], 0x52
    rcl word [bp + si - 0x003f], 0x52
    rcl word [bp + si - 0x002b], 0x52
    jcxz 0x307
    jcxz 0x309
    jcxz 0x30b
    jcxz 0x30d
    jcxz 0x30f
    rcl word [bp + si - 0x0038], 0x52
    mov dx, 0xc852
    push dx
    mov dx, 0xc852
    push dx
    enter 0xc852, 0x52
    enter 0xdc52, 0x52
    mov dx, 0xba52
    push dx
    db 0xdc, 0x52, 0xba ; fcom qword ptr [bp + si - 0x46]
    push dx
    iret
    db 0x52, 0xdc, 0x52, 0xba, 0x52, 0xba, 0x52, 0xc8, 0x52
    cmp ax, strict word 0x20
    jae short 0x2f0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x52ea]
    cmp word [0x5b70], byte 0
    je short 0x303
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x5b6e]
    jne short 0x303
    jmp near 0x548
    call 0xc145
    mov ax, word [bp - 0x0002]
    mov word [0x5b6e], ax
    jmp near 0x53b

    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x98, 0x90, 0x50, 0xe8, 0x02, 0xff, 0x83, 0xc4, 0x04, 0xb8, 0x05
    db 0x00, 0x50, 0xb8, 0xa5, 0x90, 0x50, 0xe8, 0xf4, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50
    db 0xb8, 0x06, 0x00, 0x50, 0xe8, 0xe6, 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x0f
    db 0x00, 0x50, 0xe8, 0xd8, 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50
    db 0xe8, 0xca, 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x39, 0x00, 0x50, 0xe8, 0xbc
    db 0xd2, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x00, 0x00, 0xe9, 0xdc, 0x01, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0xb2, 0x90, 0x50, 0xe8, 0xa5, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xb8
    db 0xbf, 0x90, 0x50, 0xe8, 0x97, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0xcc, 0x90
    db 0x50, 0xe8, 0x89, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x3a, 0x00, 0x50, 0xe8
    db 0x7b, 0xd2, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x01, 0x00, 0xe9, 0x9b, 0x01, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0xd9, 0x90, 0x50, 0xe8, 0x64, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0xe6, 0x90, 0x50, 0xe8, 0x56, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0xf3
    db 0x90, 0x50, 0xe8, 0x48, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x00, 0x91, 0x50
    db 0xe8, 0x3a, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xe8, 0x2c
    db 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x1e, 0xd2, 0x83
    db 0xc4, 0x04, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x10, 0xd2, 0x83, 0xc4, 0x04
    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x3b, 0x00, 0x50, 0xe8, 0x02, 0xd2, 0x83, 0xc4, 0x04, 0xc7, 0x06
    db 0x6c, 0x5b, 0x02, 0x00, 0xe9, 0x22, 0x01, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0d, 0x91, 0x50, 0xe8
    db 0xeb, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x1a, 0x91, 0x50, 0xe8, 0xdd, 0xfd
    db 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x3a, 0x00, 0x50, 0xe8, 0xcf, 0xd1, 0x83, 0xc4
    db 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x01, 0x00, 0xe9, 0xef, 0x00, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x27
    db 0x91, 0x50, 0xe8, 0xb8, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x34, 0x91, 0x50
    db 0xe8, 0xaa, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x41, 0x91, 0x50, 0xe8, 0x9c
    db 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x8e, 0xd1, 0x83
    db 0xc4, 0x04, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8, 0x80, 0xd1, 0x83, 0xc4, 0x04
    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x3b, 0x00, 0x50, 0xe8, 0x72, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x09
    db 0x00, 0x50, 0xb8, 0x53, 0x00, 0x50, 0xe8, 0x64, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50
    db 0xb8, 0x38, 0x00, 0x50, 0xe8, 0x56, 0xd1, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x02, 0x00
    db 0xeb, 0x77, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x4e, 0x91, 0x50, 0xe8, 0x40, 0xfd, 0x83, 0xc4, 0x04
    db 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x5b, 0x91, 0x50, 0xe8, 0x32, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x05
    db 0x00, 0x50, 0xb8, 0x68, 0x91, 0x50, 0xe8, 0x24, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x0c, 0x00, 0x50
    db 0xb8, 0x3b, 0x00, 0x50, 0xe8, 0x16, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x53
    db 0x00, 0x50, 0xe8, 0x08, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x3a, 0x00, 0x50
    db 0xe8, 0xfa, 0xd0, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x01, 0x00, 0xeb, 0x1b, 0x8f, 0x55
    db 0x56, 0x53, 0xb3, 0x53, 0xf4, 0x53, 0x6d, 0x54, 0xa0, 0x54, 0x18, 0x55

    cmp ax, strict word 7
    jae short 0x548
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5574]
    mov word [0x5b70], 1
    ret
math_loc_054f:
    mov ax, 0
    call 0xf40b
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [0x908a]
    sbb dx, word [0x908c]
    push ax
    push dx
    mov ax, word [0x9180]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short 0x57e
    jne short 0x580
    cmp ax, cx
    jae short 0x580
    jmp short 0x596
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, 1
    ret
    mov ax, 0
    ret
math_loc_059a:
    mov ax, 0
    call 0xf40b
    call math_loc_054f
    test ax, ax
    je short 0x5bc
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    call loc_51fb
    mov ax, 1
    ret
    mov ax, 0
    ret
loc_05c0:
    mov ax, 0
    call 0xf40b
    mov ax, 0x50
    push ax
    call 0xb7a9
    pop cx
    cmp ax, strict word 0
    jle short 0x5dd
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    jmp short 0x5e5
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    ret
api_idx_0004_2:
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
    jg short 0x61f
    jne short 0x621
    cmp ax, word [bp - 0x0004]
    jb short 0x621
    jmp short 0x635
    call 0xbaef
    test ax, ax
    je short 0x629
    ret
    call math_loc_059a
    test ax, ax
    jne short 0x633
    call loc_05c0
    jmp short 0x608
    ret
loc_0636:
    mov ax, 0
    call 0xf40b
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
    jmp short 0x67d
    mov ax, word [bp + 0x6]
    add word [0x8f44], ax
    jmp short 0x691
    mov ax, word [bp + 0x6]
    add word [0x8f46], ax
    jmp short 0x691
    mov ax, word [bp + 0x6]
    sub word [0x8f44], ax
    jmp short 0x691
    mov ax, word [bp + 0x6]
    sub word [0x8f46], ax
    jmp short 0x691
    cmp ax, strict word 0
    je short 0x659
    cmp ax, strict word 1
    je short 0x662
    cmp ax, strict word 2
    je short 0x66b
    cmp ax, strict word 3
    je short 0x674
    ret
loc_0692:
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
loc_06c3:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    jmp short 0x74c
    mov ax, 4
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
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
    add ax, cx
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
    call math_loc_1823
    add sp, byte 0x0a
    ret
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call math_loc_189b
    add sp, byte 0x0a
    ret
    cmp ax, strict word 0
    jne short 0x754
    jmp near 0x6ce
    cmp ax, strict word 1
    je short 0x6f7
    cmp ax, strict word 2
    je short 0x720
    cmp ax, strict word 3
    je short 0x736
    ret
api_idx_0008:
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
    call api_idx_0008
    pop cx
    ret
loc_0836:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    mov word [0x8f46], ax
    mov ax, word [bp + 0x6]
    mov word [0x8f44], ax
    push ax
    push word [0x8f46]
    mov ax, 0x8f3e
    push ax
    mov ax, 0x8f40
    push ax
    mov ax, 0x8f42
    push ax
    call api_idx_0004
    add sp, byte 0x0a
    ret
loc_0860:
    mov ax, 0
    call 0xf40b
    mov word [0x918a], 0
    mov ax, word [0x830c]
    cmp ax, word [0x8f28]
    jne short 0x896
    mov ax, word [0x8f3e]
    cmp ax, word [0x8f2a]
    jne short 0x896
    mov ax, word [0x8f42]
    cmp ax, word [0x8f2e]
    jne short 0x896
    mov ax, word [0x8f40]
    cmp ax, word [0x8f2c]
    jne short 0x896
    mov word [0x918a], 1
    ret
api_idx_0004_3:
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
    je short 0x919
    mov ax, word [0x830c]
    jmp short 0x909
    cmp word [0x8f3e], byte 0x0c
    jle short 0x8e0
    mov word [bp - 0x0004], 1
    jmp short 0x919
    mov word [bp - 0x0004], 1
    jmp short 0x919
    sub word [bx + di + 0x60], bx
    pop cx
    sub word [bx + di + 0x60], bx
    pop cx
    pushaw
    pop cx
    pushaw
    pop cx
    pushaw
    pop cx
    sub word [bx + di + 0x29], bx
    pop cx
    sub word [bx + di + 0x29], bx
    pop cx
    sub word [bx + di + 0x60], bx
    pop cx
    pushaw
    pop cx
    sbb bx, word [bx + di + 0x29]
    pop cx
    sub ax, strict word 0xf
    cmp ax, strict word 0x10
    jae short 0x919
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5930]
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x8b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x95e
    mov ax, word [0x830c]
    jmp short 0x940
    mov word [bp - 0x0004], 1
    jmp short 0x95e
    mov word [bp - 0x0004], 2
    jmp short 0x95e
    cmp ax, strict word 8
    je short 0x932
    cmp ax, strict word 9
    je short 0x932
    cmp ax, strict word 0xa
    je short 0x932
    cmp ax, strict word 0xb
    je short 0x932
    cmp ax, strict word 0xc
    je short 0x932
    cmp ax, strict word 0x1b
    je short 0x939
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x930
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x9ba
    mov ax, word [0x830c]
    jmp short 0x995
    mov word [bp - 0x0004], 3
    jmp short 0x9ba
    jmp short 0x9ba
    mov word [bp - 0x0004], 1
    jmp short 0x9ba
    mov word [bp - 0x0004], 2
    jmp short 0x9ba
    mov word [bp - 0x0004], 4
    jmp short 0x9ba
    cmp ax, strict word 0
    je short 0x977
    cmp ax, strict word 0xa
    je short 0x97e
    cmp ax, strict word 0xe
    je short 0x980
    cmp ax, strict word 0x13
    je short 0x980
    cmp ax, strict word 0x17
    je short 0x987
    cmp ax, strict word 0x19
    je short 0x97e
    cmp ax, strict word 0x1f
    je short 0x980
    jmp short 0x98e
    mov ax, word [bp - 0x0004]
    ret
api_idx_000c:
    mov ax, 0xfff4
    call 0xf40b
    call loc_0860
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
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x4b0
    push ax
    call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 1
    je short 0xa03
    cmp ax, strict word 2
    jne short 0xa20
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x7b0
    push ax
    call 0xecf6
    add sp, byte 6
    cmp ax, word [bp + 0x4]
    jne short 0xa20
    mov ax, 1
    ret
    mov ax, word [0x8f46]
    mov word [bp - 0x000a], ax
    mov ax, word [0x8f44]
    mov word [bp - 0x000c], ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call loc_0636
    add sp, byte 4
    push word [0x8f44]
    push word [0x8f46]
    mov ax, 0x8f3e
    push ax
    mov ax, 0x8f40
    push ax
    mov ax, 0x8f42
    push ax
    call api_idx_0004
    add sp, byte 0x0a
    test ax, ax
    je short 0xa67
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call loc_0836
    add sp, byte 4
    mov ax, 1
    ret
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
    push word [bp + 0x6]
    call 0xec74
    add sp, byte 4
    cmp ax, strict word 1
    je short 0xaa3
    push word [bp - 0x0002]
    mov ax, 0x8b7e
    push ax
    call 0xec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short 0xab3
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call loc_0836
    add sp, byte 4
    mov ax, 1
    ret
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x8b0
    push ax
    call 0xec74
    add sp, byte 4
    mov word [bp - 0x0004], ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x930
    push ax
    call 0xec74
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp word [0x918a], byte 0
    jne short 0xae3
    call loc_0860
    cmp word [0x918a], byte 0
    jne short 0xaf1
    call api_idx_0004_3
    test ax, ax
    je short 0xb01
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call loc_0836
    add sp, byte 4
    mov ax, 1
    ret
    mov si, word [0x8f3e]
    mov bx, word [0x0e12]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    push ax
    push si
    push word [0x8f40]
    push word [0x8f42]
    call api_idx_0002
    add sp, byte 8
    cmp ax, strict word 0xffff
    je short 0xb34
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call loc_0836
    add sp, byte 4
    mov ax, 1
    ret
    mov bx, word [0x0e12]
    mov si, word [0x8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [0x8d12], ax
    mov ax, 0
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call 0xf40b
    push word [0x8f44]
    push word [0x8f46]
    push word [0x8f40]
    push word [0x8f42]
    push word [0x8f3e]
    push word [0x82ee]
    call loc_06c3
    add sp, byte 0x0c
    mov word [bp - 0x0002], ax
    cmp ax, strict word 2
    jl short 0xb7a
    cmp ax, strict word 5
    jne short 0xb88
    push word [bp + 0x4]
    push word [0x82ee]
    call api_idx_000c
    add sp, byte 4
    ret
    mov ax, 1
    ret
api_idx_000a:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, word [0x8f46]
    mov word [bp - 0x0002], ax
    mov ax, word [0x8f44]
    mov word [bp - 0x0004], ax
    mov ax, word [0x8f42]
    mov word [bp - 0x0006], ax
    mov ax, word [0x8f40]
    mov word [bp - 0x0008], ax
    mov ax, word [0x8f3e]
    mov word [bp - 0x000a], ax
    mov ax, word [0x8f3a]
    mov word [0x8f46], ax
    mov ax, word [0x8f38]
    mov word [0x8f44], ax
    mov ax, word [0x8f36]
    mov word [0x8f42], ax
    mov ax, word [0x8f34]
    mov word [0x8f40], ax
    mov ax, word [0x8f32]
    mov word [0x8f3e], ax
    call math_loc_054f
    test ax, ax
    je short 0xbe3
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    call loc_51fb
    mov ax, 2
    push ax
    call 0xb75e
    pop cx
    mov ax, word [bp - 0x0002]
    mov word [0x8f46], ax
    mov ax, word [bp - 0x0004]
    mov word [0x8f44], ax
    mov ax, word [bp - 0x0006]
    mov word [0x8f42], ax
    mov ax, word [bp - 0x0008]
    mov word [0x8f40], ax
    mov ax, word [bp - 0x000a]
    mov word [0x8f3e], ax
    ret
loc_0c0d:
    mov ax, 0
    call 0xf40b
    mov ax, 0x7f9
    push ax
    call api_idx_0050
    pop cx
    mov ax, 1
    ret
api_idx_008a:
    mov ax, 0xff76
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x80
    push ax
    lea ax, word [bp - 0x008a]
    push ax
    call 0xf306
    add sp, byte 6
    mov word [0x905e], 0x17
    mov word [0x830a], 5
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
    mov word [bp - 0x0006], 0
    mov ax, 1
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
    lea ax, word [bp - 0x008a]
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, word [0x82ee]
    mov word [bp - 0x0002], ax
    mov ax, word [0x830c]
    cmp ax, word [0x8f3c]
    jne short 0xca4
    mov ax, word [0x8f30]
    inc ax
    inc ax
    mov cx, 4
    cwd
    idiv cx
math_loc_0ca1:
    mov word [bp - 0x0002], dx
    mov ax, word [0x82ee]
    inc ax
    inc ax
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    cmp ax, word [bp - 0x0002]
    jne short 0xcbc
    mov ax, 3
    jmp short 0xcbf
    mov ax, 1
    mov word [bp - 0x0004], ax
    mov ax, word [0x82ee]
    cmp ax, word [bp - 0x0002]
    je short 0xd05
    add ax, word [bp - 0x0004]
    mov cx, 4
    cwd
    idiv cx
    mov word [0x82ee], dx
    call math_loc_054f
    test ax, ax
    je short 0xcec
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    call loc_51fb
    cmp word [bp - 0x0006], byte 0
    jne short 0xcfb
    call loc_0c0d
    mov word [bp - 0x0006], ax
    mov ax, 2
    push ax
    call 0xb75e
    pop cx
    jmp short 0xcc2
    mov word [bp - 0x0008], 0xffff
    mov word [bp - 0x000a], 0
    call loc_0692
    cmp word [bp - 0x0008], byte 0xff
    jne short 0xd1b
    jmp near 0xd92
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xd92
    mov ax, word [0x82ee]
    add ax, word [bp - 0x0008]
    mov cx, 4
    cwd
    idiv cx
    mov word [0x82ee], dx
    lea ax, word [bp - 0x008a]
    push ax
    call api_idx_0002_3
    pop cx
    test ax, ax
    jne short 0xd5a
    cmp word [bp - 0x0006], byte 0
    jne short 0xd50
    call loc_0c0d
    mov word [bp - 0x0006], ax
    call api_idx_000a
    mov word [bp - 0x000a], 1
    jmp short 0xd92
    mov ax, word [0x82ee]
    inc ax
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [0x82ee], dx
    lea ax, word [bp - 0x008a]
    push ax
    call api_idx_0002_3
    pop cx
    test ax, ax
    jne short 0xd8c
    cmp word [bp - 0x0006], byte 0
    jne short 0xd82
    call loc_0c0d
    mov word [bp - 0x0006], ax
    call api_idx_000a
    mov word [bp - 0x000a], 1
    jmp short 0xd92
    mov ax, word [0x8f30]
    mov word [0x82ee], ax
    cmp word [bp - 0x000a], byte 0
    je short 0xd9b
    jmp near 0xe1e
    lea ax, word [bp - 0x008a]
    push ax
    call api_idx_0002_3
    pop cx
    cmp ax, strict word 1
    je short 0xdac
    jmp near 0xe1e
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0xdbd
    mov ax, 1
    jmp short 0xdc0
    mov ax, 3
    add ax, word [0x82ee]
    mov cx, 4
    cwd
    idiv cx
    mov word [0x82ee], dx
    lea ax, word [bp - 0x008a]
    push ax
    call api_idx_0002_3
    pop cx
    test ax, ax
    jne short 0xde0
    call api_idx_000a
    jmp short 0xe1e
    mov ax, word [0x82ee]
    inc ax
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [0x82ee], dx
    lea ax, word [bp - 0x008a]
    push ax
    call api_idx_0002_3
    pop cx
    test ax, ax
    jne short 0xe01
    call api_idx_000a
    jmp short 0xe1e
    mov ax, word [0x8f30]
    mov word [0x82ee], ax
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
    mov ax, 1
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
    lea ax, word [bp - 0x008a]
    push ax
    call 0xec41
    add sp, byte 6
    call math_loc_054f
    test ax, ax
    je short 0xe5b
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    call loc_51fb
    cmp word [bp - 0x0006], byte 0
    jne short 0xe6a
    call loc_0c0d
    mov word [bp - 0x0006], ax
    mov ax, 2
    push ax
    call 0xb75e
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
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0xe99
    mov ax, 1
    jmp short 0xe9c
    mov ax, 3
    mov word [bp - 0x0008], ax
    dec word [bp + 0x4]
    cmp word [bp + 0x4], byte 0
    jle short 0xeab
    jmp near 0xd0a
    ret
math_loc_0eac:
    mov ax, 0
    call 0xf40b
    push word [bp + 0x4]
    call api_idx_0050
    pop cx
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    push word [0x905a]
    call api_idx_0004_2
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
api_idx_0012:
    mov ax, 0xffee
    call 0xf40b
    mov ax, word [0x8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0008], ax
    mov ax, word [bx + si + 0x1e0]
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov ax, word [bx + si + 0x1e0]
    cwd
    idiv cx
    mov word [bp - 0x000c], dx
    call 0xceb1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short 0xf1d
    jmp near 0x1351
    mov word [bp - 0x0010], 0
    mov word [bp - 0x0012], 0
    mov cx, 0x248
    imul cx
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short 0xf4d
    mov ax, 1
    push ax
    mov ax, 7
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    test ax, ax
    jne short 0xf4d
    jmp near 0x1333
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
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
    mov word [bp - 0x000e], ax
    mov word [bp - 0x0002], 0
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
    je short 0xf93
    jmp near 0x1325
    cmp word [bp - 0x0002], byte 7
    jge short 0xf9e
    mov word [bp - 0x0010], 1
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jle short 0xfb0
    cmp ax, strict word 0xf
    jge short 0xfb0
    mov word [bp - 0x0012], 2
    jmp near 0x1318
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    push word [bx + 0x5c12]
    mov ax, 0
    push ax
    mov ax, word [bx + 0x5c10]
    add ax, word [bp - 0x000e]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c10], ax
    jmp near 0x1325
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c1e]
    mov ax, 0
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
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
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov cx, ax
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    add ax, word [bx + 0x5c1c]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov cx, ax
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx + 0x5c1c], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jge short 0x106d
    jmp near 0xfe7
    jmp near 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    push word [bx + 0x5c0e]
    mov ax, 0
    push ax
    mov ax, word [bx + 0x5c0c]
    add ax, word [bp - 0x000e]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c0c], ax
    jmp near 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov byte [bx + 0x5e32], 0
    mov byte [bx + 0x5d5f], 0
    jmp near 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov byte [bx + 0x5d5d], 0
    jmp near 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 2
    jne short 0x10d8
    mov byte [bx + 0x5e2f], 0
    mov byte [bx + 0x5d60], 0
    jmp near 0x1325
    mov word [bp - 0x0004], 1
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 1
    je short 0x1101
    cmp ax, strict word 2
    je short 0x1101
    cmp ax, strict word 4
    je short 0x1101
    cmp ax, strict word 8
    je short 0x1101
    cmp ax, strict word 9
    jne short 0x1115
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0004]
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xd9 ; mov bx, cx
    mov byte [bx + 0x5d5a], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 9
    jle short 0x10e5
    jmp near 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5e2f], 0
    mov ax, word [bx + 0x5c0e]
    mov word [bx + 0x5c0c], ax
    mov ax, word [bx + 0x5c12]
    mov word [bx + 0x5c10], ax
    jmp near 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c12]
    mov ax, 0
    push ax
    mov ax, word [bx + 0x5c10]
    sub ax, word [bp - 0x000e]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov word [bx + 0x5c10], ax
    cmp ax, strict word 0
    jg short 0x1199
    mov al, byte [bx + 0x5d5c]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    push cx
    mov ax, 6
    push ax
    call 0xb7a9
    pop cx
    pop cx
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
    jmp near 0x1325
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c1e]
    mov ax, 0
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call 0xd0ea
    add sp, byte 6
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss
    mov es, dx
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw
    movsw
    call 0xd0be
    add sp, byte 4
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c1c]
    db 0x2b, 0xc1 ; sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov word [bx + 0x5c1c], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jge short 0x1227
    jmp near 0x11a1
    jmp near 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c0e]
    mov ax, 0
    push ax
    mov ax, word [bx + 0x5c0c]
    sub ax, word [bp - 0x000e]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov word [bx + 0x5c0c], ax
    cmp ax, strict word 0
    jg short 0x127a
    mov byte [bx + 0x5e2f], 3
    mov word [bx + 0x5c0c], 0
    mov word [bx + 0x5c10], 0
    mov al, byte [bx + 0x5e2c]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 8
    push ax
    call 0xb7e0
    pop cx
    jmp near 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5e32]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000a]
    jge short 0x1297
    mov al, byte [bp - 0x000a]
    mov byte [bx + 0x5e32], al
    mov al, byte [bx + 0x5d5f]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000e]
    jge short 0x12a9
    mov al, byte [bp - 0x000e]
    mov byte [bx + 0x5d5f], al
    jmp near 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5d]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000e]
    jge short 0x12c6
    mov al, byte [bp - 0x000e]
    mov byte [bx + 0x5d5d], al
    jmp short 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 2
    jae short 0x12dc
    mov byte [bx + 0x5e2f], 2
    jmp short 0x1325
    mov ax, 0x248
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5c]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000e]
    jge short 0x12f8
    mov al, byte [bp - 0x000e]
    mov byte [bx + 0x5d5c], al
    jmp short 0x1325
    cli
    pop di
    sub word [bx + si - 0x0049], sp
    pushaw
    out 0x60, al
    sti
    pushaw
    or sp, word [bx + di + 0x27]
    popaw
    db 0x6a, 0x61 ; push 0x61
    mov ah, byte [bx + di - 0x001d]
    popaw
    jno short 0x1372
    les sp, word [bp + si - 0x000d]
    bound cx, dword [bx]
    arpl word [di], sp
    db 0x63
    cmp ax, strict word 0xf
    jae short 0x1325
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6341]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x10
    jge short 0x1333
    jmp near 0xf7b
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call 0xcb3a
    add sp, byte 4
    mov ax, word [bp - 0x0010]
    add ax, word [bp - 0x0012]
    add ax, 0x800
    push ax
    call math_loc_0eac
    pop cx
    jmp near 0xf0f
    inc word [0x8d12]
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
    jne short 0x1392
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
    jmp short 0x13b5
    cmp word [bp + 0xa], byte 0xff
    jne short 0x13ac
    push word [bp - 0x0030]
    push word [bp - 0x0032]
    call 0xd0be
    add sp, byte 4
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short 0x13b5
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
    je short 0x1408
    mov ax, 0x80
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x7], al
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 8
    je short 0x141f
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 4
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 4
    je short 0x1430
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 8
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x10
    je short 0x1441
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x10
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x20
    je short 0x1452
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x20
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 2
    je short 0x1463
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x40
    push word [bp + 0x4]
    call 0xc58f
    pop cx
    ret
api_idx_0004_4:
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
    jne short 0x14ad
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    ret
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short 0x147b
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short 0x1476
    mov ax, 0xffff
    ret
api_idx_0006:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [0x0e0e]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short 0x1511
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [0x830c]
    jne short 0x150a
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
    jne short 0x150a
    mov ax, bx
    ret
    add word [bp - 0x0006], byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x5910]
    jl short 0x14da
    mov ax, 0
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    call 0xf40b
    push word [bp + 0x4]
    call api_idx_0004_4
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x153c
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    ret
    mov ax, word [bp - 0x0002]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    call api_idx_0006
    mov word [bp - 0x0008], ax
    test ax, ax
    je short 0x15a6
    mov bx, ax
    mov al, byte [bx + 0x1]
    sub ah, ah
    test ax, 0x80
    je short 0x1566
    mov ax, 1
    jmp short 0x1569
    mov ax, 0
    push ax
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
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
    add ax, 0x5c34
    push ax
    push word [bx + 0x4]
    push word [bp + 0x4]
    call api_idx_004c
    add sp, byte 0x0a
    mov bx, word [bp - 0x0008]
    mov byte [bx], 0xff
    jmp short 0x15ae
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    ret
math_loc_15af:
    mov ax, 0xfdae
    call 0xf40b
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0250], ax
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0252], ax
    mov ax, 0x17
    push ax
    mov ax, word [bp - 0x0252]
    add ax, strict word 0x24
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    add ax, word [bp - 0x0250]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0252]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0250]
    inc ax
    inc ax
    inc ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0x17
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0252]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0250]
    add ax, strict word 4
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
    mov ax, word [bp - 0x0252]
    add ax, strict word 0x24
    push ax
    mov ax, word [bp - 0x0250]
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0252]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0250]
    inc ax
    inc ax
    inc ax
    push ax
    call 0xe8da
    add sp, byte 8
    call 0xceb1
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x168c
    cmp ax, word [bp + 0x4]
    jne short 0x169a
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    ret
    mov ax, 0x248
    imul word [bp + 0x4]
    mov si, ax
    add ax, 0x5bf4
    mov si, ax
    lea di, word [bp - 0x024a]
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    rep movsw
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x750e]
    mov word [bp - 0x024c], ax
    mov ax, word [bx + 0x69bc]
    mov word [bp - 0x024e], ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov si, ax
    add ax, 0x5bf4
    mov si, ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov di, ax
    add ax, 0x5bf4
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    rep movsw
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x750e]
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x750e], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x69bc]
    mov bx, cx
    mov word [bx + 0x69bc], ax
    lea si, word [bp - 0x024a]
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov di, ax
    add ax, 0x5bf4
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    rep movsw
    mov ax, word [bp - 0x024c]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x750e], ax
    mov ax, word [bp - 0x024e]
    mov word [bx + 0x69bc], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0250], ax
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0252], ax
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0250]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0252]
    push word [bp - 0x0250]
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0250], ax
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0252], ax
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0250]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0252]
    push word [bp - 0x0250]
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    ret
math_loc_1823:
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
    call api_idx_0004
    add sp, byte 0x0a
    test ax, ax
    je short 0x1872
    mov ax, word [0x5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short 0x185a
    mov ax, cx
    jmp short 0x1871
    mov ax, word [0x5b6e]
    cmp ax, strict word 6
    je short 0x1869
    cmp word [0x9188], byte 0
    je short 0x186e
    mov ax, 0
    jmp short 0x1871
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
    add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xecf6
    add sp, byte 6
    ret
math_loc_189b:
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
    call api_idx_0004
    add sp, byte 0x0a
    test ax, ax
    je short 0x18ea
    mov ax, word [0x5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short 0x18d2
    mov ax, cx
    jmp short 0x18e9
    mov ax, word [0x5b6e]
    cmp ax, strict word 6
    je short 0x18e1
    cmp word [0x9188], byte 0
    je short 0x18e6
    mov ax, 0
    jmp short 0x18e9
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
    add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xecf6
    add sp, byte 6
    ret
loc_1913:
    mov ax, 0
    call 0xf40b
    mov ax, 0xffff
    cmp word [0x91a4], byte 0
    je short 0x1926
    mov ax, word [bp + 0x4]
    ret
loc_1927:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    cmp word [0x91a4], byte 0
    je short 0x193a
    mov ax, word [bp + 0x6]
    ret
loc_193b:
    mov ax, 0
    call 0xf40b
    mov ax, 0xffff
    cmp word [0x91a6], byte 0
    je short 0x194e
    mov ax, word [bp + 0x4]
    ret
loc_194f:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    cmp word [0x91a6], byte 0
    je short 0x1962
    mov ax, word [bp + 0x6]
    ret
loc_1963:
    mov ax, 0
    call 0xf40b
    mov ax, word [0x82ee]
    jmp short 0x19b6
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x4]
    add word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x6]
    add word [bx], ax
    jmp short 0x19ca
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x4]
    add word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x6]
    sub word [bx], ax
    jmp short 0x19ca
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x4]
    sub word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x6]
    sub word [bx], ax
    jmp short 0x19ca
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x4]
    sub word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x6]
    add word [bx], ax
    jmp short 0x19ca
    cmp ax, strict word 0
    je short 0x196e
    cmp ax, strict word 1
    je short 0x1980
    cmp ax, strict word 2
    je short 0x1992
    cmp ax, strict word 3
    je short 0x19a4
    mov bx, word [bp + 0x6]
    push word [bx]
    mov bx, word [bp + 0x4]
    push word [bx]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    call api_idx_0004
    add sp, byte 0x0a
    ret
loc_19e4:
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
api_idx_0008_3:
    mov ax, 0xfff8
    call 0xf40b
    cmp word [bp + 0xe], byte 0
    jne short 0x1a2c
    jmp near 0x1aa8
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
    call loc_1963
    add sp, byte 0x0e
    test ax, ax
    je short 0x1aa8
    mov ax, word [0x91a8]
    jmp short 0x1a9b
    mov ax, 2
    ret
    cmp word [0x9188], byte 0
    je short 0x1a65
    mov ax, 0
    ret
    mov ax, 5
    imul word [0x91aa]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e52], 1
    mov ax, 4
    ret
    mov ax, 5
    imul word [0x91aa]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e52], 3
    mov ax, 0
    ret
    popf
    db 0x6a, 0xac ; push -0x54
    db 0x6a, 0x9d ; push -0x63
    db 0x6a, 0xa1 ; push -0x5f
    db 0x6a, 0x9d ; push -0x63
    db 0x6a, 0xc1 ; push -0x3f
    db 0x6a
    cmp ax, strict word 6
    jae short 0x1aa8
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6ad6]
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x8]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [0x0e14]
    add ax, 0x9b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x1b2a
    mov ax, word [0x91a8]
    jmp short 0x1b1d
    mov ax, 5
    imul word [0x91aa]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e52], 3
    jmp short 0x1b2a
    mov ax, 5
    imul word [0x91aa]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e52], 1
    jmp short 0x1b2a
    mov ax, 5
    imul word [0x91aa]
    add ax, word [bp + 0xe]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e52], 2
    jmp short 0x1b2a
    pop ds
    db 0x6b, 0x32, 0x6b ; imul si, word ptr [bp + si], 0x6b
    inc bp
    db 0x6b, 0x32, 0x6b ; imul si, word ptr [bp + si], 0x6b
    pop ds
    db 0x6b, 0x32, 0x6b ; imul si, word ptr [bp + si], 0x6b
    cmp ax, strict word 6
    jae short 0x1b2a
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6b58]
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x8b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x1b41
    jmp near 0x1bb9
    mov ax, word [0x91a8]
    jmp short 0x1bac

    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91
    db 0x02, 0xeb, 0x60, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6
    db 0x87, 0xc7, 0x91, 0x01, 0xeb, 0x4d, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e
    db 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91, 0x03, 0xeb, 0x3a, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91
    db 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xe0, 0x91, 0x01, 0x83, 0x3e, 0xaa, 0x91, 0x04, 0x7d
    db 0x05, 0xc6, 0x87, 0xe5, 0x91, 0x01, 0xb8, 0x00, 0x00, 0xc3, 0xc6, 0x6b, 0x8d, 0x6b, 0xa0, 0x6b
    db 0xc6, 0x6b, 0xa0, 0x6b, 0xb3, 0x6b

    cmp ax, strict word 6
    jae short 0x1bb9
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6be7]
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x930
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x1c1d
    mov ax, word [0x830c]
    jmp short 0x1c04
    mov ax, 5
    imul word [0x91aa]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx - 0x6e52], 3
    jmp short 0x1c1d
    mov ax, 5
    imul word [0x91aa]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx - 0x6e20], 2
    cmp word [0x91aa], byte 4
    jge short 0x1c02
    mov byte [bx - 0x6e1b], 2
    jmp short 0x1c1d
    cmp ax, strict word 0xa
    je short 0x1be5
    cmp ax, strict word 0xe
    je short 0x1bd2
    cmp ax, strict word 0x13
    je short 0x1bd2
    cmp ax, strict word 0x19
    je short 0x1be5
    cmp ax, strict word 0x1f
    je short 0x1bd2
    mov ax, word [0x82ee]
    jmp short 0x1c88
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short 0x1c9c
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short 0x1c9c
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_1823
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short 0x1c9c
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_189b
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short 0x1c9c
    cmp ax, strict word 0
    je short 0x1c22
    cmp ax, strict word 1
    je short 0x1c3b
    cmp ax, strict word 2
    je short 0x1c54
    cmp ax, strict word 3
    je short 0x1c6e
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call loc_19e4
    add sp, byte 6
    mov ax, word [0x82ee]
    cmp ax, word [bp - 0x0008]
    je short 0x1cca
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 7
    jl short 0x1cc2
    cmp ax, strict word 9
    jle short 0x1cca
    cmp ax, strict word 0xb
    jg short 0x1cca
    jmp near 0x1e16
    mov ax, word [bp - 0x0006]
    jmp near 0x1e09

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xe9, 0x3e, 0x01, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xe9, 0x36, 0x01
    db 0xc7, 0x46, 0xfc, 0x0a, 0x00, 0xe9, 0x2e, 0x01, 0xc7, 0x46, 0xfc, 0x0b, 0x00, 0xe9, 0x26, 0x01
    db 0x83, 0x3e, 0xaa, 0x91, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0c, 0x00, 0xe9, 0x17, 0x01, 0x83
    db 0x3e, 0xaa, 0x91, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0d, 0x00, 0xe9, 0x08, 0x01, 0x8b, 0x46
    db 0xf8, 0x40, 0x50, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0xc8, 0x03, 0x46, 0x0e, 0x8b
    db 0xd8, 0x58, 0x88, 0x87, 0xf9, 0x91, 0xe9, 0xed, 0x00, 0x8b, 0x46, 0xf8, 0x40, 0x50, 0xb8, 0x0a
    db 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0xc8, 0x8b, 0x56, 0x0e, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8
    db 0x58, 0x89, 0x87, 0x14, 0x92, 0xe9, 0xce, 0x00, 0x8b, 0x46, 0xf8, 0x40, 0x50, 0xb8, 0x0a, 0x00
    db 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0xc8, 0x8b, 0x56, 0x0e, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x58
    db 0x89, 0x87, 0x46, 0x92, 0xe9, 0xaf, 0x00, 0xc7, 0x46, 0xfc, 0x0e, 0x00, 0xe9, 0xa7, 0x00, 0xc7
    db 0x46, 0xfc, 0x0f, 0x00, 0xe9, 0x9f, 0x00, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46
    db 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0x76, 0x92, 0x01, 0xe9, 0x8b, 0x00, 0xb8, 0x05, 0x00, 0xf7, 0x2e
    db 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91, 0x03, 0xeb, 0x78, 0xb8, 0x0a
    db 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0x4e, 0x0e, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87
    db 0x92, 0x92, 0x01, 0x00, 0x83, 0x7e, 0xfa, 0x0e, 0x74, 0x16, 0xb8, 0x0a, 0x00, 0xf7, 0x2e, 0xaa
    db 0x91, 0x8b, 0x4e, 0x0e, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87, 0xc4, 0x92, 0x01, 0x00
    db 0xeb, 0x44, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87
    db 0x76, 0x92, 0x02, 0xeb, 0x31, 0x5d, 0x6e, 0x17, 0x6d, 0x1f
    db "m'm/m7mFmUmpm"
    db 0x8f, 0x6d, 0xae, 0x6d, 0xb6, 0x6d, 0xbe, 0x6d, 0xd2, 0x6d, 0xe5, 0x6d, 0xfb, 0x6d, 0x19, 0x6e
    db 0xe5, 0x6d

    cmp ax, strict word 0x12
    jae short 0x1e16
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6e2c]
    mov ax, word [0x830c]
    cmp ax, word [0x8f28]
    jne short 0x1e4b
    mov ax, word [bp + 0xc]
    cmp ax, word [0x8f2a]
    jne short 0x1e4b
    mov ax, word [bp + 0x8]
    cmp ax, word [0x8f2e]
    jne short 0x1e4b
    mov ax, word [bp + 0xa]
    cmp ax, word [0x8f2c]
    jne short 0x1e4b
    mov ax, 5
    imul word [0x91aa]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx - 0x6d8a], 3
    mov ax, word [bp - 0x0004]
    ret
api_idx_0008_4:
    mov ax, 0xfff8
    call 0xf40b
    cmp word [bp + 0x10], byte 0
    je short 0x1eb5
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
    call loc_1963
    add sp, byte 0x0e
    test ax, ax
    je short 0x1eb5
    mov ax, word [0x91a8]
    jmp short 0x1ea8
    mov ax, 2
    ret
    cmp word [0x9188], byte 0
    je short 0x1e94
    mov ax, 0
    ret
    mov ax, 4
    ret
    mov ax, 0
    ret
    int3
    outsb
    db 0xdb, 0x6e, 0xcc ; fld xword ptr [bp - 0x34]
    outsb
    shr byte [bp - 0x0034], 1
    outsb
    db 0xdf, 0x6e
    cmp ax, strict word 6
    jae short 0x1eb5
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6ee3]
    mov ax, word [bp + 0xe]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xc]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [0x0e14]
    add ax, 0x8b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x1ef3
    mov ax, word [0x91a8]
    jmp short 0x1ee9
    mov ax, 0
    ret
    cmp ax, strict word 0
    je short 0x1ee5
    cmp ax, strict word 3
    je short 0x1ee5
    mov ax, word [0x82ee]
    add ax, word [bp + 0x4]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    jmp short 0x1f69
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call math_loc_189b
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short 0x1f7d
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x90
    push ax
    call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short 0x1f7d
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [0x0e14]
    add ax, 0x290
    push ax
    call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short 0x1f7d
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call math_loc_1823
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short 0x1f7d
    cmp ax, strict word 0
    je short 0x1f03
    cmp ax, strict word 1
    je short 0x1f1d
    cmp ax, strict word 2
    je short 0x1f36
    cmp ax, strict word 3
    je short 0x1f4f
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call loc_19e4
    add sp, byte 6
    mov ax, word [bp - 0x0008]
    add ax, word [bp + 0x4]
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    cmp dx, word [0x82ee]
    je short 0x1fa7
    jmp near 0x2017
    mov ax, word [bp - 0x0006]
    jmp short 0x200a
    mov word [bp - 0x0004], 8
    jmp short 0x2017
    mov word [bp - 0x0004], 9
    jmp short 0x2017
    mov word [bp - 0x0004], 0xa
    jmp short 0x2017
    mov word [bp - 0x0004], 0xb
    jmp short 0x2017
    cmp word [0x91aa], byte 0
    jne short 0x1fd4
    mov word [bp - 0x0004], 0xc
    jmp short 0x2017
    cmp word [0x91aa], byte 0
    jne short 0x1fe2
    mov word [bp - 0x0004], 0xd
    jmp short 0x2017
    mov word [bp - 0x0004], 0xe
    jmp short 0x2017
    mov word [bp - 0x0004], 0xf
    jmp short 0x2017
    pop si
    jo short 0x1fe8
    outsw
    cli
    outsw
    add word [bx + si + 0x8], si
    jo short 0x200c
    jo short 0x201c
    jo short 0x205f
    jo short 0x2061
    jo short 0x2063
    jo short 0x2032
    jo short 0x203b
    db 0x70
    cmp ax, strict word 0xc
    jae short 0x2017
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7039]
    mov ax, word [bp - 0x0004]
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    call 0xf40b
    mov al, byte [bp + 0x4]
    push ax
    mov ax, 0x11
    imul word [0x92f2]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6d00], al
    mov al, byte [bp + 0x18]
    mov byte [bx - 0x6cfe], al
    cmp word [bp + 0x4], strict word 0xfa
    jl short 0x2044
    jmp near 0x2217
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
    jg short 0x207c
    jmp near 0x21f6
    cmp word [bp + 0x1e], byte 0
    jg short 0x2085
    jmp near 0x21f6
    mov ax, 0x64
    sub ax, word [bp + 0x18]
    mov cx, 0x64
    cwd
    idiv cx
    mov ax, dx
    push ax
    mov ax, 0x11
    imul word [0x92f2]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6cfe], al
    cmp word [bp + 0x1e], byte 1
    je short 0x20ab
    jmp near 0x2136
    mov ax, word [0x03ae]
    sub ax, word [bp - 0x0002]
    imul word [bp + 0x18]
    add ax, strict word 0xffce
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 0x6]
    sub ax, cx
    mov word [bx - 0x6d0c], ax
    cmp word [bp + 0x1a], byte 0
    je short 0x210b
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
    imul word [0x92f2]
    mov bx, ax
    mov al, byte [bx - 0x6cfe]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bx - 0x6d0c], ax
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
    imul word [0x92f2]
    mov bx, ax
    pop ax
    mov word [bx - 0x6d0a], ax
    jmp near 0x21f4
    cmp word [bp + 0x1e], byte 2
    je short 0x213f
    jmp near 0x21d5
    mov ax, 0x11
    imul word [0x92f2]
    mov bx, ax
    mov al, byte [bx - 0x6cfe]
    sub ah, ah
    mov cx, 0xa0
    sub cx, word [bp - 0x0002]
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, word [bp + 0x6]
    mov word [bx - 0x6d0c], ax
    cmp word [bp + 0x1a], byte 0
    je short 0x21ac
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
    imul word [0x92f2]
    mov bx, ax
    mov al, byte [bx - 0x6cfe]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bx - 0x6d0c], ax
    mov ax, 0x11
    imul word [0x92f2]
    mov bx, ax
    mov al, byte [bx - 0x6cfe]
    sub ah, ah
    mov cx, 0x42
    sub cx, word [bp - 0x0004]
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    add ax, word [bp - 0x0004]
    add ax, word [bp + 0x8]
    mov word [bx - 0x6d0a], ax
    jmp short 0x21f4
    cmp word [bp + 0x1e], byte 3
    jne short 0x21f4
    mov ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [0x92f2]
    mov bx, ax
    pop ax
    mov word [bx - 0x6d0c], ax
    mov ax, word [bp + 0x8]
    mov word [bx - 0x6d0a], ax
    jmp short 0x2215
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [0x92f2]
    mov bx, ax
    pop ax
    mov word [bx - 0x6d0c], ax
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0x8]
    mov word [bx - 0x6d0a], ax
    jmp short 0x2230
    mov ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [0x92f2]
    mov bx, ax
    pop ax
    mov word [bx - 0x6d0c], ax
    mov ax, word [bp + 0x8]
    mov word [bx - 0x6d0a], ax
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 0x11
    imul word [0x92f2]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6d04], al
    mov al, byte [bp + 0xc]
    mov byte [bx - 0x6d03], al
    mov al, byte [bp + 0xe]
    mov byte [bx - 0x6d02], al
    mov al, byte [bp + 0x10]
    mov byte [bx - 0x6d01], al
    mov ax, word [bp + 0x12]
    mov word [bx - 0x6d08], ax
    mov ax, word [bp + 0x14]
    mov word [bx - 0x6d06], ax
    mov al, byte [bp + 0x16]
    mov byte [bx - 0x6cff], al
    mov al, byte [bp + 0x1a]
    mov byte [bx - 0x6cfd], al
    mov al, byte [bp + 0x1c]
    mov byte [bx - 0x6cfc], al
    inc word [0x92f2]
    mov ax, word [0x92f2]
    cmp ax, strict word 0x78
    jl short 0x2290
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x2286
    ret
api_idx_0010:
    mov ax, 0xfff0
    call 0xf40b
    mov ax, 4
    cmp word [0x91a8], byte 0
    jne short 0x22a4
    mov ax, 3
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0xffff
    mov word [bp - 0x0004], 0xffff
    cmp word [0x91a8], byte 0
    jg short 0x22bb
    jmp near 0x2333
    cmp word [bp + 0x4], byte 3
    je short 0x22c4
    jmp near 0x2333
    mov ax, word [0x91a8]
    cmp ax, strict word 3
    jl short 0x22d1
    cmp ax, strict word 5
    jne short 0x22d6
    mov ax, 0x15
    jmp short 0x22d9
    mov ax, 0x14
    mov word [bp - 0x000c], ax
    cmp word [0x91a8], byte 3
    jl short 0x22ea
    cmp word [0x91a8], byte 5
    jne short 0x22ef
    mov ax, 0x16
    jmp short 0x22f2
    mov ax, 0x15
    mov word [bp - 0x000e], ax
    cmp word [bp + 0x8], byte 0
    jne short 0x2314
    push ax
    push word [bp - 0x000c]
    call loc_1927
    add sp, byte 4
    mov word [bp - 0x0002], ax
    push word [bp - 0x000c]
    call loc_1913
    pop cx
    mov word [bp - 0x0004], ax
    jmp short 0x2333
    cmp word [bp + 0x8], byte 4
    jne short 0x2333
    push word [bp - 0x000c]
    push word [bp - 0x000e]
    call loc_1927
    add sp, byte 4
    mov word [bp - 0x0002], ax
    push word [bp - 0x000e]
    call loc_1913
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x6]
    jmp near 0x2535
    cmp word [bp - 0x0002], byte 0xff
    je short 0x2373
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
    jne short 0x2361
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x2542
    cmp word [bp - 0x0002], byte 0xff
    je short 0x23aa
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
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x2542
    cmp word [0x91a8], byte 0
    jne short 0x240d
    cmp word [bp + 0x4], byte 3
    jge short 0x240a
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
    call loc_1913
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov cx, word [bp + 0x4]
    cmp cx, byte 1
    jne short 0x23e7
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    add cx, word [bp + 0x18]
    mov ax, cx
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 0x4]
    push ax
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x24be
    cmp word [0x91a8], byte 3
    jl short 0x241b
    cmp word [0x91a8], byte 5
    jne short 0x246a
    cmp word [bp + 0x4], byte 4
    jge short 0x2468
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
    call loc_1913
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
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x24be
    cmp word [0x91a8], byte 5
    jge short 0x24be
    cmp word [bp + 0x4], byte 4
    jge short 0x24be
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
    call loc_1913
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
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x2542
    mov ax, word [0x91a8]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    cmp ax, strict word 1
    jne short 0x2513
    cmp word [bp + 0x4], byte 4
    jge short 0x2513
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
    cmp word [0x9aec], byte 0
    je short 0x2502
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 0x4]
    jmp short 0x2508
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 0xfc
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x2542
    mov word [di - 0x0080], si
    jae short 0x250e
    jae short 0x249c
    jae short 0x2526
    jne short 0x24dd
    jae short 0x24a2
    jae short 0x24a4
    jae short 0x24af
    jne short 0x24b1
    jne short 0x251e
    jae short 0x2520
    jae short 0x2522
    jae short 0x2524
    jae short 0x2526
    jae short 0x2528
    db 0x73
    cmp ax, strict word 0x10
    jae short 0x2542
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x755c]
    mov word [bp - 0x0002], 0xffff
    mov word [bp - 0x0004], 0xffff
    mov ax, word [bp + 0x4]
    cmp ax, word [bp - 0x000a]
    jl short 0x2557
    jmp near 0x29e4
    mov word [bp - 0x0010], 0xffff
    mov ax, word [bp + 0x6]
    jmp near 0x2987
    mov ax, word [bp + 0x2e]
    cmp word [bp + 0x6], byte 8
    jne short 0x256e
    mov ax, word [bp + 0x2a]
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x30]
    cmp word [bp + 0x6], byte 8
    jne short 0x257d
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
    jne short 0x25bc
    mov ax, word [bp + 0x44]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 0x4]
    push ax
    call loc_1927
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 0x4]
    push ax
    call loc_1913
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [0x91a8], byte 0
    jne short 0x260c
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
    call loc_1913
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
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x265a
    cmp word [0x91a8], byte 2
    jne short 0x265a
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
    call loc_1913
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
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    cmp word [bp + 0x6], byte 3
    je short 0x2663
    jmp near 0x2745
    cmp word [0x831a], byte 0
    je short 0x26b9
    cmp word [bp + 0x4], byte 0
    jne short 0x26b9
    cmp word [bp + 0x8], byte 2
    jne short 0x26b9
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
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x2743
    mov ax, 0
    push ax
    push ax
    push word [0x91a4]
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
    add ax, word [0x91a4]
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
    call api_idx_0004_5
    add sp, byte 0x1c
    mov ax, 0
    push ax
    push ax
    push word [0x91a4]
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
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x278c
    cmp word [bp + 0x6], byte 6
    jne short 0x278c
    mov ax, 0
    push ax
    push ax
    push word [0x91a4]
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
    call api_idx_0004_5
    add sp, byte 0x1c
    cmp word [0x91a8], byte 0
    jne short 0x27f7
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    mov ax, word [bp + 0x26]
    add ax, word [bp + 0x4]
    push ax
    call loc_1913
    pop cx
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call loc_1913
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
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x2860
    cmp word [0x91a8], byte 2
    jne short 0x2860
    mov ax, 0
    push ax
    push ax
    push ax
    db 0xff, 0x76
loc_2806:
    push cs
    push word [bp + 0x4]
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 0x4]
    push ax
    call loc_1913
    pop cx
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 0x4]
    push ax
    call loc_1913
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
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 0x4]
    push ax
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    cmp word [bp + 0x6], byte 8
    je short 0x286c
    cmp word [bp + 0x6], byte 9
    jne short 0x289c
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
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x2994
    cmp word [bp + 0x4], byte 4
    jge short 0x28ee
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
    call loc_1913
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
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x2994
    mov word [bp - 0x0010], 9
    mov word [bp - 0x000c], 1
    mov ax, word [0x82e8]
    inc ax
    inc ax
    mov word [bp - 0x000e], ax
    jmp near 0x2994
    mov word [bp - 0x0010], 9
    mov word [bp - 0x000c], 7
    mov ax, 0
    cmp word [0x82e8], byte 0
    je short 0x291d
    mov ax, 8
    mov word [bp - 0x000e], ax
    jmp short 0x2994
    mov word [bp - 0x0010], 0xa
    mov ax, 5
    cmp word [0x91a8], byte 0
    jne short 0x2934
    mov ax, 1
    mov cx, 0
    cmp word [bp + 0x6], byte 0x0d
    jne short 0x2940
    mov cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000e], 0
    jmp short 0x2994
    mov word [bp - 0x0010], 0xa
    mov word [bp - 0x000c], 9
    mov ax, 0xb
    cmp word [bp + 0x6], byte 0x0e
    jne short 0x2962
    mov ax, 0xa
    mov word [bp - 0x000e], ax
    jmp short 0x2994
    db 0xdb, 0x79, 0x03 ; fstp xword ptr [bx + di + 3]
    jbe short 0x2947
    jns short 0x2971
    jbe short 0x294b
    jns short 0x2958
    js short 0x2977
    jbe short 0x294e
    jne short 0x2921
    jne short 0x2923
    jne short 0x29b4
    jns short 0x29cb
    jns short 0x29e9
    jns short 0x29eb
    jns short 0x2917
    jns short 0x2919
    db 0x79
    cmp ax, strict word 0x10
    jae short 0x2994
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x79ae]
    cmp word [bp - 0x0010], byte 0xff
    je short 0x29e4
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [0x91a4]
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
    call api_idx_0004_5
    add sp, byte 0x1c
    ret
api_idx_0012_2:
    mov ax, 0xffee
    call 0xf40b
    mov word [bp - 0x0004], 0xffff
    mov word [bp - 0x0006], 0xffff
    mov ax, word [bp + 0x6]
    jmp near 0x2eb3
    cmp word [bp + 0x26], byte 0xff
    jne short 0x2a04
    jmp near 0x2a88
    cmp word [bp + 0x4], byte 0
    je short 0x2a0d
    jmp near 0x2a88
    cmp word [bp + 0x6], byte 8
    jne short 0x2a19
    mov ax, word [bp + 0x26]
    inc ax
    jmp short 0x2a1f
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
    jge short 0x2a41
    mov ax, word [bp - 0x0002]
    inc ax
    push ax
    mov ax, 0xffff
    cmp word [bp + 0x8], byte 2
    jge short 0x2a4e
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    cmp word [bp + 0x6], byte 8
    jne short 0x2a65
    cmp word [bp + 0x8], byte 2
    jg short 0x2a71
    cmp word [bp + 0x6], byte 9
    jne short 0x2a77
    cmp word [bp + 0x8], byte 2
    jge short 0x2a77
    mov ax, word [bp - 0x0002]
    inc ax
    jmp short 0x2a7a
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    cmp word [bp + 0x6], byte 3
    je short 0x2a91
    jmp near 0x2b14
    cmp word [bp + 0x4], byte 4
    jl short 0x2a9a
    jmp near 0x2b14
    cmp word [bp + 0x34], byte 0xff
    je short 0x2aef
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
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    mov ax, word [bp + 0x32]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    mov word [bp - 0x0006], ax
    cmp word [bp + 0x6], byte 6
    jne short 0x2b45
    cmp word [bp + 0x4], byte 4
    jge short 0x2b45
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    mov word [bp - 0x0006], ax
    cmp word [0x91a8], byte 0
    jne short 0x2ba1
    cmp word [bp + 0x4], byte 4
    jge short 0x2b9f
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
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x2bfb
    cmp word [0x91a8], byte 2
    jne short 0x2bfb
    cmp word [bp + 0x4], byte 5
    jge short 0x2bfb
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
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    cmp word [bp + 0x26], byte 0xff
    je short 0x2c4e
    cmp word [bp + 0x4], byte 0
    jne short 0x2c4e
    cmp word [bp + 0x6], byte 8
    je short 0x2c13
    cmp word [bp + 0x6], byte 9
    jne short 0x2c4e
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
    jge short 0x2c32
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
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x2ec0
    cmp word [bp + 0x4], byte 4
    jge short 0x2c7c
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    mov word [bp - 0x0006], ax
    cmp word [0x91a8], byte 0
    jne short 0x2cd9
    cmp word [bp + 0x4], byte 4
    jge short 0x2cd6
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
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x2de1
    cmp word [0x91a8], byte 3
    jl short 0x2cea
    cmp word [0x91a8], byte 5
    je short 0x2cea
    jmp near 0x2d85
    cmp word [bp + 0x4], byte 5
    jl short 0x2cf3
    jmp near 0x2d83
    cmp word [0x91a8], byte 2
    jne short 0x2d34
    cmp word [bp - 0x0004], byte 0xff
    je short 0x2d34
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
    call api_idx_0004_5
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
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x2de1
    cmp word [0x91a8], byte 5
    jge short 0x2de1
    cmp word [bp + 0x4], byte 4
    jge short 0x2de1
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
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x2ec0
    cmp word [bp + 0x4], byte 4
    jge short 0x2e39
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
    call loc_1913
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
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xfb
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x2ec0
    cmp word [bp + 0x4], byte 4
    jge short 0x2e91
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
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x2ec0
    pop es
    jg short 0x2e22
    jnp short 0x2e5b
    jl short 0x2e69
    jp short 0x2ec7
    jle short 0x2e21
    jle short 0x2e6f
    jp short 0x2e3a
    jl short 0x2ee6
    jp short 0x2ee8
    jp short 0x2e6b
    jl short 0x2e6d
    jl short 0x2e6f
    jl short 0x2e71
    jl short 0x2e73
    jl short 0x2e75
    db 0x7c
    cmp ax, strict word 0x10
    jae short 0x2ec0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7eda]
    cmp word [bp + 0x4], byte 4
    jl short 0x2ec9
    jmp near 0x30f3
    cmp word [bp + 0x8], byte 1
    je short 0x2ed5
    cmp word [bp + 0x8], byte 3
    jne short 0x2eda
    mov ax, 0
    jmp short 0x2edd
    mov ax, 1
    mov word [bp - 0x0012], ax
    mov ax, 0
    cmp word [bp + 0x8], byte 2
    jle short 0x2eec
    mov ax, 1
    mov word [bp - 0x0006], ax
    mov word [bp - 0x000c], 0xffff
    mov ax, word [bp + 0x6]
    jmp near 0x30a2
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
    jmp near 0x30b2
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
    je short 0x2f7f
    mov ax, 0xa
    mov word [bp - 0x000a], ax
    jmp near 0x30b2
    mov word [bp - 0x000c], 0xa
    cmp word [0x91a8], byte 0
    jne short 0x2fb5
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
    jmp short 0x2fd7
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
    cmp word [0x91a8], byte 0
    jne short 0x3005
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
    jmp short 0x3027
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
    cmp word [0x91a8], byte 0
    jne short 0x3037
    mov ax, 3
    mov cx, 0
    cmp word [bp + 0x6], byte 0x0d
    jne short 0x3043
    mov cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 0
    jmp short 0x30b2
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
    jne short 0x3091
    mov ax, 0xd
    mov word [bp - 0x000a], ax
    jmp short 0x30b2
    inc cx
    jg short 0x301c
    jg short 0x3067
    jg short 0x3069
    jg short 0x3035
    db 0x80, 0x96, 0x80
    sub ax, strict word 0xa
    cmp ax, strict word 6
    jae short 0x30b2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7f23]
    cmp word [bp - 0x000c], byte 0xff
    je short 0x30f3
    mov ax, 3
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0006]
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
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    call api_idx_0004_5
    add sp, byte 0x1c
    ret
api_idx_0012_3:
    mov ax, 0xffee
    call 0xf40b
    cmp word [bp + 0x4], byte 4
    jge short 0x3111
    cmp word [bp + 0x6], byte 0
    jle short 0x3111
    cmp word [bp + 0x6], byte 4
    jge short 0x3111
    mov ax, 1
    jmp short 0x3114
    mov ax, 0
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0012], byte 0
    jne short 0x3120
    jmp near 0x32cb
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6dbe], byte 0
    jne short 0x3140
    cmp word [bx - 0x6d40], byte 0
    jne short 0x3140
    jmp near 0x32cb
    cmp word [bp + 0x6], byte 2
    jne short 0x3192
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
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x31e3
    cmp word [bp + 0x4], byte 0
    jle short 0x31e3
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
    jne short 0x31b5
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
    jne short 0x31d2
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 0x4]
    jmp short 0x31d8
    mov ax, word [bp + 0x28]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6dbe], byte 0
    jne short 0x31fc
    jmp near 0x32cb
    mov cx, word [bx - 0x6dbe]
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
    jne short 0x322b
    cmp word [bp + 0x4], byte 0
    jg short 0x3231
    cmp word [bp + 0x6], byte 2
    jne short 0x325d
    test ax, ax
    je short 0x323a
    mov ax, 3
    jmp short 0x323d
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
    mov ax, word [0x91a4]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x260]
    mov word [bp - 0x0008], ax
    jmp short 0x3280
    cmp word [bp + 0x4], byte 0
    jle short 0x3280
    mov ax, word [bp + 0x4]
    add ax, strict word 0x20
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 3
    jne short 0x3278
    mov ax, 1
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
    cmp word [bp - 0x0004], byte 0
    je short 0x32cb
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
    je short 0x32af
    cmp dx, byte 1
    jne short 0x32af
    mov ax, 1
    jmp short 0x32b2
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
    call api_idx_0004_5
    add sp, byte 0x1c
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x6e3b]
    sub ah, ah
    jmp near 0x3529
    cmp word [0x91a8], byte 2
    je short 0x32e9
    jmp near 0x348f
    cmp word [bp + 0x4], byte 5
    jl short 0x32f2
    jmp near 0x348c
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
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    mov word [bp - 0x000e], 0xffff
    mov word [bp - 0x000a], 0xffff
    mov word [bp - 0x0010], 0xffff
    mov word [bp - 0x000c], 0xffff
    cmp word [bp + 0x40], byte 0xff
    je short 0x337a
    mov ax, word [bp + 0x42]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    mov word [bp - 0x000e], ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    mov word [bp - 0x0010], ax
    cmp word [bp + 0x4], byte 0
    jle short 0x33a8
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call loc_1927
    add sp, byte 4
    mov word [bp - 0x000a], ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call loc_1913
    pop cx
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000a], byte 0xff
    jne short 0x33b7
    cmp word [bp - 0x000e], byte 0xff
    jne short 0x33b7
    jmp near 0x348c
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
    call api_idx_0004_5
    add sp, byte 0x1c
    cmp word [bp - 0x000a], byte 0xff
    jne short 0x33e9
    jmp near 0x348c
    cmp word [0x91a8], byte 0
    jne short 0x33f3
    jmp near 0x348c
    mov ax, word [bp + 0x4]
    cmp ax, strict word 4
    je short 0x33fe
    jmp near 0x348c
    cmp word [bp + 0x6], byte 0
    jne short 0x3446
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
    call loc_1913
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
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x348c
    cmp word [bp + 0x6], byte 4
    jne short 0x348c
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
    call loc_1913
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
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp near 0x3527
    cmp word [0x91a8], byte 4
    je short 0x3499
    jmp near 0x3527
    cmp word [bp + 0x4], byte 4
    jl short 0x34a2
    jmp near 0x3527
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    push word [bp + 0x10]
    call 0xf01f
    add sp, byte 8
    mov ax, word [bp + 0x4]
    cmp ax, strict word 2
    jge short 0x3527
    cmp word [bp + 0x6], byte 2
    jne short 0x3527
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
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfe
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x3531
    cmp ax, strict word 1
    jne short 0x3531
    jmp near 0x32df
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x6e54]
    sub ah, ah
    jmp near 0x3604
    cmp word [bp + 0x4], byte 5
    jge short 0x3579
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    push word [bp + 0xa]
    call 0xf01f
    add sp, byte 8
    jmp near 0x3611
    cmp word [bp + 0x4], byte 5
    jge short 0x35b0
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    push word [bp + 0x16]
    call 0xf01f
    add sp, byte 8
    jmp short 0x3611
    cmp word [bp + 0x4], byte 5
    jge short 0x35f4
    mov ax, word [0x91a6]
    add ax, word [0x82e8]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    je short 0x35d3
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    jmp short 0x35d6
    mov ax, 0xffff
    push ax
    push cx
    test dx, dx
    je short 0x35e4
    mov ax, word [bp + 0x36]
    add ax, word [bp + 0x4]
    jmp short 0x35ea
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    push ax
    push word [bp + 0x14]
    call 0xf01f
    add sp, byte 8
    jmp short 0x3611
    jmp short 0x3611
    jmp short 0x3611
    aas
    xchg byte [si - 0x3c7b], cl
    test cx, di
    test word [di], di
    db 0x86
    cmp ax, strict word 5
    jae short 0x3611
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x79bf]
    cmp word [bp - 0x0012], byte 0
    jne short 0x361a
    jmp near 0x376a
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6df0], byte 0
    jne short 0x363a
    cmp word [bx - 0x6d72], byte 0
    jne short 0x363a
    jmp near 0x376a
    cmp word [bp + 0x6], byte 2
    jne short 0x3671
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
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
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 3
    push ax
    call 0xf01f
    add sp, byte 8
    jmp short 0x36aa
    cmp word [bp + 0x4], byte 0
    jle short 0x36aa
    mov ax, 0xffff
    cmp word [bp + 0x6], byte 3
    jne short 0x3686
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 2
    push ax
    cmp word [bp + 0x6], byte 3
    jne short 0x3699
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
    jmp short 0x369f
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
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6df0], byte 0
    jne short 0x36c3
    jmp near 0x376a
    mov cx, word [bx - 0x6df0]
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
    jne short 0x36f2
    cmp word [bp + 0x4], byte 0
    jg short 0x36f8
    cmp word [bp + 0x6], byte 2
    jne short 0x3716
    mov cx, word [bp + 0x4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [0x91a4]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x260]
    mov word [bp - 0x0008], ax
    jmp short 0x3739
    cmp word [bp + 0x4], byte 0
    jle short 0x3739
    mov ax, word [bp + 0x4]
    add ax, strict word 0x20
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 3
    jne short 0x3731
    mov ax, 1
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
    cmp word [bp - 0x0004], byte 0
    je short 0x376a
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
    call api_idx_0004_5
    add sp, byte 0x1c
    cmp word [bp + 0x4], byte 4
    jl short 0x3773
    jmp near 0x39e1
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x6d8c], 3
    je short 0x3788
    jmp near 0x3825
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short 0x379b
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short 0x379b
    jmp near 0x3825
    cmp word [bp + 0x4], byte 0
    jne short 0x37b6
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short 0x37b6
    cmp word [0x8f22], byte 0
    je short 0x37b6
    mov word [0x8f20], 0xffff
    cmp word [bp + 0x4], byte 0
    jne short 0x37c9
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short 0x37c9
    mov ax, 2
    jmp short 0x37cc
    mov ax, 1
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x4]
    cmp word [bp - 0x0004], byte 2
    je short 0x37d9
    dec ax
    mov word [bp - 0x0008], ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
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
    push ax
    push word [bp - 0x0004]
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 0xc
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x6d8c], 1
    je short 0x383e
    cmp byte [bx - 0x6d8c], 2
    jne short 0x38ad
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short 0x384e
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short 0x38ad
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
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
    push ax
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x6d8c]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 0xb
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x6e09], 0
    jne short 0x38c2
    jmp near 0x39e1
    cmp word [bp + 0x4], byte 0
    jne short 0x38e3
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short 0x38e3
    cmp word [0x8f22], byte 0
    je short 0x38e3
    mov al, byte [bx - 0x6e09]
    sub ah, ah
    mov word [0x8f20], ax
    jmp near 0x39e1
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short 0x38f6
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short 0x38f6
    jmp near 0x39e1
    mov al, byte [bx - 0x6e09]
    sub ah, ah
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [0x82ee]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, dx
    jmp near 0x39c7
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
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
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short 0x3946
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
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 3
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x39e1
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short 0x3983
    mov ax, 1
    push ax
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
    push ax
    mov ax, 3
    push ax
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 3
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short 0x39e1
    cmp ax, strict word 0
    jne short 0x39cf
    jmp near 0x3917
    cmp ax, strict word 1
    je short 0x3972
    cmp ax, strict word 2
    jne short 0x39dc
    jmp near 0x3917
    cmp ax, strict word 3
    je short 0x3972
    ret
api_idx_0016:
    mov ax, 0xffea
    call 0xf40b
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xb]
    sub ah, ah
    mov word [bp - 0x000c], ax
    cmp byte [bx + 0xa], 0
    je short 0x39fc
    jmp near 0x3aef
    mov al, byte [bx + 0x8]
    sub ah, ah
    mov word [bp - 0x0002], ax
    jmp near 0x3ad9
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
    jne short 0x3a2e
    mov ax, 3
    jmp short 0x3a31
    mov ax, 1
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0004], ax
    jmp near 0x3acb
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
    jge short 0x3ad6
    jmp near 0x3a3d
    inc word [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    inc ax
    inc ax
    inc ax
    cmp ax, word [bp - 0x0002]
    jle short 0x3aec
    jmp near 0x3a07
    jmp near 0x3b82
    mov word [bp - 0x000a], 0
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    mov byte [bp - 0x0016], al
    mov byte [bp - 0x0015], 0
    mov word [bp - 0x0004], 0
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
    jl short 0x3b06
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
    jg short 0x3bd3
    jne short 0x3bd5
    cmp ax, strict word 0xc
    jb short 0x3bd5
    jmp short 0x3bed
    cmp word [bp - 0x0006], byte 0x0c
    jle short 0x3bed
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
    jl short 0x3c19
    cmp ax, 0x1e0
    jl short 0x3c1a
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
    jl short 0x3c28
    cmp word [bp - 0x000a], byte 0x3e
    jge short 0x3c50
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x72
    mov word [bp - 0x0014], ax
    cmp word [bp - 0x000a], byte 0x10
    jl short 0x3c66
    cmp word [bp - 0x000a], strict word 0xd0
    jg short 0x3c66
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xffe0
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x000a], strict word 0xa2
    jl short 0x3c7d
    cmp word [bp - 0x000a], strict word 0xf0
    jg short 0x3c7d
    mov ax, word [bp - 0x000a]
    add ax, 0xff4e
    mov word [bp - 0x0010], ax
    mov ax, word [0x82ee]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0016], strict word 0xff01
    jne short 0x3c8e
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
    je short 0x3cb7
    mov ax, 0x22
    sub ax, word [bp - 0x000c]
    jmp short 0x3cba
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
    jge short 0x3cda
    mov ax, 0
    mov word [bp - 0x001a], ax
    cmp dx, byte 5
    jge short 0x3ce7
    inc dx
    mov ax, dx
    jmp short 0x3ced
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
    jl short 0x3d61
    cmp ax, 0x36c
    jl short 0x3d62
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
    jl short 0x3d70
    cmp word [bp - 0x0008], byte 0x68
    jg short 0x3d98
    mov ax, 0x58
    sub ax, word [bp - 0x0008]
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0008], byte 0x3a
    jl short 0x3db3
    cmp word [bp - 0x0008], strict word 0xfa
    jg short 0x3db3
    mov ax, 0xb0
    mov cx, word [bp - 0x0008]
    add cx, byte 0xc6
    sub ax, cx
    mov word [bp - 0x0014], ax
    cmp word [bp - 0x0008], strict word 0xcc
    jl short 0x3dd0
    cmp word [bp - 0x0008], strict word 0x124
    jg short 0x3dd0
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
    jne short 0x3de1
    ret
    cmp word [bp - 0x0006], strict word 0x10e
    jge short 0x3df9
    mov ax, word [bp - 0x0006]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 5
    mov word [bp - 0x000c], ax
    jmp short 0x3e4e
    mov ax, word [bp - 0x0006]
    cmp ax, 0x276
    jl short 0x3e16
    add ax, 0xfd8a
    mov cx, 9
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x20
    sub ax, cx
    mov word [bp - 0x000c], ax
    jmp short 0x3e4e
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
    je short 0x3e45
    mov ax, 0x24
    sub ax, word [bp - 0x000a]
    jmp short 0x3e4b
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
    je short 0x3f1f
    cmp word [0x830c], byte 0x19
    je short 0x3f1f
    jmp near 0x3fc0
    push ax
    mov ax, word [0x0e14]
    add ax, 0x930
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x3f34
    jmp near 0x3fc0
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
    jne short 0x3fbc
    mov ax, word [bp - 0x0012]
    cmp ax, word [0x8f2a]
    jne short 0x3fbc
    mov ax, word [bp - 0x000e]
    cmp ax, word [0x8f2e]
    jne short 0x3fbc
    mov ax, word [bp - 0x0010]
    cmp ax, word [0x8f2c]
    jne short 0x3fbc
    cmp word [0x8f22], byte 0
    je short 0x3f7f
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
    je short 0x3fce
    cmp word [0x9188], byte 0
    je short 0x400d
    push word [bp - 0x0008]
    mov ax, word [0x0e14]
    add ax, 0x8b0
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x400d
    cmp word [0x9188], byte 0
    je short 0x4009
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
    mov ax, 0x91de
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91c5
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91ac
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x9aee
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91f7
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x928e
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x9274
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x9210
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x92c0
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x9242
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x7f8
    push ax
    mov ax, 0x92f4
    push ax
    call 0xf306
    add sp, byte 6
    mov word [0x92f2], 0
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
    call loc_1963
    add sp, byte 0x0e
    mov word [0x9b08], 5
    mov ax, word [0x8f46]
    add ax, word [0x8f44]
    add ax, word [0x82ee]
    mov cx, 2
    cwd
    idiv cx
    mov word [0x91a6], dx
    mov word [0x91a8], 0
    mov ax, word [0x5b6e]
    jmp near 0x447f
    mov word [0x91a8], 0
    cmp word [0x830c], byte 0x1e
    jne short 0x413e
    cmp word [0x8f3e], byte 8
    jne short 0x413e
    jmp short 0x4161
    mov ax, 0x1f
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1f
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    call 0xf01f
    add sp, byte 8
    mov ax, 0x20
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    call 0xf01f
    add sp, byte 8
    jmp near 0x448c
    mov word [0x91a8], 1
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
    call loc_193b
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call 0xf01f
    add sp, byte 8
    mov ax, 0x3e
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x3e
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call 0xf01f
    add sp, byte 8
    jmp near 0x448c
    mov word [0x91a8], 2
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
    jne short 0x4260
    cmp word [0x8f3e], byte 9
    jle short 0x4260
    cmp word [0x8f3e], byte 0x0a
    jg short 0x4247
    mov ax, word [0x82ee]
    cmp ax, strict word 2
    je short 0x4247
    cmp word [0x82ee], byte 0
    je short 0x4260
    cmp word [0x8f40], byte 5
    jge short 0x4260
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
    jmp short 0x42a6
    mov ax, 4
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call 0xf01f
    add sp, byte 8
    mov ax, 0xad
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0xad
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 2
    push ax
    call 0xf01f
    add sp, byte 8
    jmp near 0x448c
    mov word [0x91a8], 3
    mov ax, 0xff
    push ax
    mov ax, 0x48
    cmp word [0x9188], byte 0
    je short 0x42c0
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
    call loc_193b
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call 0xf01f
    add sp, byte 8
    cmp word [0x9188], byte 0
    jne short 0x4326
    mov ax, 0x2a
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2a
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call 0xf01f
    add sp, byte 8
    jmp near 0x448c
    mov word [0x91a8], 4
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
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2a
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call 0xf01f
    add sp, byte 8
    jmp near 0x448c
    mov word [0x91a8], 5
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
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x3e
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call 0xf01f
    add sp, byte 8
    cmp word [0x830c], byte 8
    jne short 0x4419
    cmp word [0x8f3e], byte 6
    jne short 0x4419
    cmp word [0x8f40], byte 4
    jne short 0x4419
    mov ax, word [0x8f42]
    cmp ax, strict word 2
    je short 0x43fa
    cmp ax, strict word 1
    jne short 0x4402
    mov ax, word [0x82ee]
    cmp ax, strict word 1
    je short 0x4417
    mov ax, word [0x8f42]
    cmp ax, strict word 5
    je short 0x440f
    cmp ax, strict word 6
    jne short 0x4419
    mov ax, word [0x82ee]
    cmp ax, strict word 3
    jne short 0x4419
    jmp short 0x4430
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
    je short 0x444c
    cmp word [0x830c], byte 0x0b
    jne short 0x446f
    cmp word [0x8f3e], byte 6
    jne short 0x446f
    cmp word [0x8f40], byte 3
    jle short 0x446f
    mov ax, 4
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call 0xf01f
    add sp, byte 8
    jmp short 0x448c
    rcl word [si - 0x6e91], cl
    into
    xchg cx, ax
    cmp ax, 0xf092
    xchg dx, ax
    jo short 0x4410
    salc
    xchg bx, ax
    cmp ax, strict word 7
    jae short 0x448c
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6b48]
    mov word [0x91aa], 0
    mov ax, word [0x91aa]
    cmp ax, word [0x9b08]
    jl short 0x449e
    jmp near 0x4d6c
    mov ax, word [0x8f46]
    add ax, word [0x8f44]
    add ax, word [0x82ee]
    mov cx, ax
    mov ax, word [0x91aa]
    add cx, ax
    mov ax, cx
    mov cx, 2
    cwd
    idiv cx
    mov word [0x91a4], dx
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
    call loc_1963
    add sp, byte 0x0e
    test ax, ax
    je short 0x4546
    mov ax, word [0x91a8]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    jne short 0x4535
    mov ax, word [0x91a8]
    cmp ax, strict word 5
    je short 0x451f
    cmp word [0x9188], byte 0
    je short 0x4509
    mov word [0x9b0a], 0
    jmp short 0x451d
    mov ax, 5
    imul word [0x91aa]
    mov bx, ax
    mov byte [bx - 0x6e52], 1
    mov word [0x9b0a], 4
    jmp short 0x4533
    mov ax, 5
    imul word [0x91aa]
    mov bx, ax
    mov byte [bx - 0x6e52], 3
    mov word [0x9b0a], 0
    jmp short 0x453b
    mov word [0x9b0a], 2
    mov ax, word [0x9b0a]
    mov word [0x9b0c], ax
    mov word [0x9b0e], ax
    jmp short 0x459f
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [0x9b0a], ax
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push ax
    call api_idx_0008_4
    add sp, byte 0x0e
    mov word [0x9b0c], ax
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 2
    push ax
    call api_idx_0008_4
    add sp, byte 0x0e
    mov word [0x9b0e], ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [0x9b10], ax
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [0x9b12], ax
    cmp word [0x91aa], byte 1
    jle short 0x4658
    mov ax, 0xfffe
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [0x9b14], ax
    mov ax, 2
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [0x9b16], ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 0
    push ax
    call api_idx_0008_4
    add sp, byte 0x0e
    mov word [0x9b18], ax
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 2
    push ax
    call api_idx_0008_4
    add sp, byte 0x0e
    mov word [0x9b1a], ax
    jmp short 0x4670
    mov word [0x9b14], 0
    mov word [0x9b16], 0
    mov word [0x9b18], 0
    mov word [0x9b1a], 0
    cmp word [0x9b0a], byte 0
    jne short 0x4684
    mov ax, word [0x8456]
    cmp ax, word [0x91aa]
    jne short 0x4684
    inc word [0x8456]
    mov ax, word [0x91a4]
    mov word [0x9aec], ax
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
    push word [0x9b0a]
    push word [0x91aa]
    call api_idx_0010
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
    push word [0x91aa]
    call api_idx_0012_3
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
    push word [0x9b0c]
    push word [0x91aa]
    call api_idx_0012_2
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
    push word [0x9b0e]
    push word [0x91aa]
    call api_idx_0012_2
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
    push word [0x9b18]
    push word [0x91aa]
    call api_idx_0012_2
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
    push word [0x9b1a]
    push word [0x91aa]
    call api_idx_0012_2
    add sp, byte 0x40
    mov ax, word [0x91a4]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x9aec], dx
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
    push word [0x9b10]
    push word [0x91aa]
    call api_idx_0010
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
    push word [0x91aa]
    call api_idx_0012_3
    add sp, byte 0x40
    mov ax, word [0x91a4]
    mov word [0x9aec], ax
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
    push word [0x9b14]
    push word [0x91aa]
    call api_idx_0010
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
    push word [0x91aa]
    call api_idx_0012_3
    add sp, byte 0x40
    mov ax, word [0x91a4]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x9aec], dx
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
    push word [0x9b12]
    push word [0x91aa]
    call api_idx_0010
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
    push word [0x91aa]
    call api_idx_0012_3
    add sp, byte 0x40
    mov ax, word [0x91a4]
    mov word [0x9aec], ax
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
    push word [0x9b16]
    push word [0x91aa]
    call api_idx_0010
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
    push word [0x91aa]
    call api_idx_0012_3
    add sp, byte 0x40
    inc word [0x91aa]
    jmp near 0x4492
    mov ax, word [0x9b08]
    dec ax
    mov word [0x91aa], ax
    jmp near 0x51ed
    mov word [bp - 0x0004], 0xff
    mov ax, word [0x92f2]
    dec ax
    mov word [bp - 0x0002], ax
    jmp short 0x4de7
    mov ax, 0x11
    imul word [bp - 0x0002]
    add ax, 0x92f4
    mov word [bp - 0x0026], ax
    mov bx, ax
    mov al, byte [bx + 0xd]
    sub ah, ah
    cmp ax, word [0x91aa]
    jne short 0x4de4
    mov al, byte [bx + 0xc]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jne short 0x4de4
    cmp word [bx], byte 0xff
    je short 0x4dc3
    push word [bx + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    push ax
    push word [bx]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    call 0xf01f
    add sp, byte 8
    mov bx, word [bp - 0x0026]
    cmp word [bx + 0x2], byte 0xff
    je short 0x4de4
    push word [bx + 0x6]
    mov al, byte [bx + 0x9]
    sub ah, ah
    push ax
    push word [bx + 0x2]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    call 0xf01f
    add sp, byte 8
    dec word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 0
    jge short 0x4d84
    mov ax, 0
    cmp word [bp - 0x0004], strict word 0xff
    je short 0x4e04
    mov ax, 0xffff
    cmp word [bp - 0x0004], strict word 0xfb
    jne short 0x4e04
    mov ax, 1
    mov word [bp - 0x0018], ax
    cmp ax, strict word 0xffff
    jne short 0x4e0f
    jmp near 0x4ec5
    mov ax, word [0x92f2]
    dec ax
    mov word [bp - 0x0002], ax
    jmp near 0x4ebc
    mov ax, 0x11
    imul word [bp - 0x0002]
    add ax, 0x92f4
    mov word [bp - 0x0026], ax
    mov bx, ax
    mov al, byte [bx + 0xd]
    sub ah, ah
    cmp ax, word [0x91aa]
    je short 0x4e35
    jmp near 0x4eb9
    mov al, byte [bx + 0xc]
    sub ah, ah
    cmp ax, 0xfa
    jl short 0x4e42
    jmp near 0x4eb9
    mov al, byte [bx + 0x10]
    sub ah, ah
    cmp ax, word [bp - 0x0018]
    jne short 0x4eb9
    cmp byte [bx + 0xc], 4
    jne short 0x4e5f
    cmp byte [bx + 0x9], 1
    jne short 0x4e5f
    push bx
    call api_idx_0016
    pop cx
    jmp short 0x4eb9
    mov word [bp - 0x0006], 0
    mov bx, word [bp - 0x0026]
    mov si, word [bp - 0x0006]
    mov al, byte [bx + si + 0x8]
    mov bx, si
    add bx, bp
    mov byte [bx - 0x0030], al
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 4
    jl short 0x4e64
    mov byte [bp - 0x002c], 0
    mov bx, word [bp - 0x0026]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0030]
    push ax
    mov al, byte [bx + 0xf]
    sub ah, ah
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
    sub ah, ah
    push ax
    call 0xefd1
    add sp, byte 0x16
    dec word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 0
    jl short 0x4ec5
    jmp near 0x4e19
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, 0xfb
    jl short 0x4ed3
    jmp near 0x4d7b
    mov al, byte [0x5b55]
    sub ah, ah
    cmp ax, 0xff
    jne short 0x4ee0
    jmp near 0x507d
    cmp word [0x91aa], byte 0
    je short 0x4eea
    jmp near 0x507d
    cmp word [0x91a8], byte 0
    jne short 0x4efb
    cmp byte [0x91b8], 3
    jne short 0x4efb
    jmp near 0x507d
    mov ax, word [0x91a8]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short 0x4f14
    cmp word [0x8456], byte 1
    jg short 0x4f14
    jmp near 0x507d
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6e7e], byte 0
    jg short 0x4f2a
    jmp near 0x4fb7
    mov al, byte [bx - 0x6e7e]
    mov byte [bp - 0x0030], al
    mov byte [bp - 0x002f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0030]
    push ax
    push word [bx - 0x6e62]
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov bx, word [bx - 0x6e7e]
    mov al, byte [bx + 0x7c61]
    sub ah, ah
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    add ax, word [bx - 0x6e74]
    push ax
    mov ax, word [bx - 0x6e7e]
    shl ax, 1
    add ax, word [bx - 0x6e62]
    mov bx, ax
    mov al, byte [bx + 0x7c18]
    sub ah, ah
    mov bx, cx
    add ax, word [bx - 0x6e6e]
    push ax
    mov ax, 0xd
    push ax
    call 0xefd1
    add sp, byte 0x16
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6e68], byte 0
    je short 0x4f9f
    dec word [bx - 0x6e7e]
    jmp short 0x4fa3
    inc word [bx - 0x6e7e]
    mov al, byte [0x7d3c]
    sub ah, ah
    cmp ax, word [bx - 0x6e7e]
    jge short 0x4fb4
    mov word [bx - 0x6e7e], 0
    jmp near 0x506f
    cmp word [0x8f22], byte 0
    je short 0x4fc1
    jmp near 0x506f
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x0006]
    jle short 0x4fd1
    jmp near 0x506f
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6e62], ax
    mov ax, word [0x91a8]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short 0x4ffa
    push cx
    call 0xb7a9
    pop cx
    jmp short 0x4ffd
    mov ax, 0
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6e68], ax
    mov ax, 1
    cmp word [bx - 0x6e68], byte 0
    je short 0x5017
    mov al, byte [0x7d3c]
    sub ah, ah
    mov word [bx - 0x6e7e], ax
    mov ax, word [0x91a8]
    mov cx, 1
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short 0x502f
    mov ax, 0x1e
    jmp short 0x5032
    mov ax, 0xa
    mov word [bp - 0x0002], ax
    cmp word [bx - 0x6e62], byte 0
    je short 0x5043
    push ax
    call 0xb7a9
    pop cx
    jmp short 0x5051
    push word [bp - 0x0002]
    call 0xb7a9
    pop cx
    mov cx, ax
    mov ax, 0
    sub ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6e6e], ax
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6e74], ax
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jge short 0x507d
    jmp near 0x4f19
    cmp word [0x91a8], byte 0
    je short 0x508f
    mov ax, word [0x91a8]
    cmp ax, strict word 2
    jg short 0x508f
    jmp near 0x51e9
    mov word [bp - 0x0014], 0
    mov ax, word [bp - 0x0014]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0024]
    mov word [bp - 0x0002], ax
    mov ax, 5
    imul word [0x91aa]
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov bx, cx
    mov al, byte [bx - 0x6e22]
    sub ah, ah
    mov word [bp - 0x001a], ax
    test ax, ax
    jne short 0x50c3
    jmp near 0x51db
    mov ax, 0x28
    imul word [0x91aa]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x2a6], byte 0
    jne short 0x50e1
    jmp near 0x51db
    cmp word [bp - 0x001a], byte 1
    je short 0x50ee
    cmp word [0x9188], byte 0
    je short 0x5115
    mov ax, 0
    cmp word [0x9188], byte 0
    je short 0x50fb
    mov ax, 0xff
    push ax
    push word [bx + 0x2ac]
    push word [bx + 0x2aa]
    push word [bx + 0x2a8]
    push word [bx + 0x2a6]
    call 0xe901
    add sp, byte 0x0a
    jmp near 0x51ce
    cmp word [0x91aa], byte 0
    jg short 0x511f
    jmp near 0x51ce
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add ax, word [0x91aa]
    shl ax, 1
    mov bx, ax
    cmp byte [bx + 0x76a0], 0
    jne short 0x5138
    jmp near 0x51ce
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    add ax, word [0x8f46]
    add ax, word [0x8f44]
    add ax, word [0x82ee]
    add ax, word [0x91aa]
    mov cx, 2
    cwd
    idiv cx
    mov word [0x91a4], dx
    mov al, byte [0x91aa]
    mov byte [bp - 0x0030], al
    mov byte [bp - 0x002f], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add ax, word [0x91aa]
    shl ax, 1
    add ax, dx
    mov bx, ax
    mov al, byte [bx + 0x76a0]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, 0xff
    jne short 0x5193
    mov ax, 0xffee
    cmp word [0x91a4], byte 0
    je short 0x5190
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
    add ax, word [0x91aa]
    mov bx, ax
    mov al, byte [bx + 0x76e9]
    sub ah, ah
    push ax
    push word [bp - 0x0006]
    mov ax, 9
    push ax
    call 0xefd1
    add sp, byte 0x16
    cmp word [0x9188], byte 0
    je short 0x51db
    call api_idx_001e
    call api_idx_0024
    inc word [bp - 0x0014]
    mov ax, word [bp - 0x0014]
    cmp ax, strict word 5
    jge short 0x51e9
    jmp near 0x5094
    dec word [0x91aa]
    cmp word [0x91aa], byte 0
    jl short 0x51f7
    jmp near 0x4d76
    call 0xda22
    ret
loc_51fb:
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
    pop word [0x917e]
    pop cx
    mov word [0x917a], sp
    mov word [0x917c], bp
    mov word [0x9176], si
    mov word [0x9178], di
    cld
    mov di, 0x9180
    mov cx, 0x9b1c
    db 0x2b, 0xcf ; sub cx, di
    shr cx, 1
    je short 0x5241
    db 0x2b, 0xc0 ; sub ax, ax
    rep stosw
    call 0xe
    mov bp, word [0x917c]
    mov sp, word [0x917a]
    mov si, word [0x9176]
    mov di, word [0x9178]
    push cx
    jmp [0x917e]
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
    times 12 db 0
