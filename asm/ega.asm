; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0001 size=2 reg=bx disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0001
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_0003 size=2 reg=bx disp=0x0003
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0003
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_0005 size=2 reg=bx disp=0x0005
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0005
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_0007 size=9 reg=bx disp=0x0007
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=2 name=f_03
; @field offset=5 size=2 name=f_05
; @field offset=7 size=2 name=f_07
struc s_bx_0007
    .f_00: resb 1
    .gap_1: resb 2
    .f_03: resb 2
    .f_05: resb 2
    .f_07: resb 2
endstruc

; @struct s_si_0001 size=2 reg=si disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_si_0001
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_si_0003 size=2 reg=si disp=0x0003
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_si_0003
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_si_0004 size=4 reg=si disp=0x0004
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_si_0004
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_di_0000 size=4 reg=di disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_di_0000
    .f_00: resb 2
    .f_02: resb 2
endstruc

org 0
bits 16

    jmp near 3
    call 0x1719
    retf
    call 0x1810
    retf
    call 0x190f
    retf
    call 0x1900
    retf
    call 0x18c1
    retf
    call 0x3085
    retf
    call 0x361e
    retf
    call 0xdf3
    retf
    call 0x10cf
    retf
    call 0x14d8
    retf
    call 0x3035
    retf
    call 0x293
    retf
    call 0x447
    retf
    call 0x462
    retf
    call 0x47d
    retf
    call 0x496
    retf
    call 0x4b1
    retf
    call 0xbcf
    retf
    call 0xbf6
    retf
    call 0xc45
    retf
    call 0xc9b
    retf
    call 0xd57
    retf
    call 0x303d
    retf
    call 0x1992
    retf
    call 0x19c1
    retf
    call 0x439
    retf
    call 0xebd
    retf
    call 0x31df
    retf
    call 0x31f4
    retf
    call 0x3240
    retf
    call 0x3241
    retf
    call 0x3242
    retf
    call 0x3243
    retf
    call 0x341e
    retf
    call 0x34c0
    retf
    call 0x1490
    retf
    call 0x3570
    retf
    call 0x35ba
    retf
    call 0x3244
    retf
    call 0x4111
    retf
    call 0x33b3
    retf
    call 0x4457
    retf
    call 0x4624
    retf
    call 0x4825
    retf
    call 0x4a08
    retf
    call 0x4c4c
    retf
    call 0x4dd9
    retf
    call 0x4e48
    retf
    call 0x4e64
    retf
    call 0x4ead
    retf
    call 0x503c
    retf
    call 0x50d1
    retf
    call 0x5118
    retf
    call 0x5130
    retf
    call 0x5148
    retf

    db 0x80, 0x41, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
    db 0x30, 0x05, 0x00, 0x00, 0xd0, 0x01
    times 17 db 0
    db 0x03, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0b, 0x01, 0x00, 0x00, 0x0f, 0x01, 0x00, 0x00
    db 0x13, 0x01, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x1b, 0x01, 0x00, 0x00, 0x1f, 0x01
    times 87 db 0
    db 0x04
    times 23 db 0
    db 0x01
    times 255 db 0

    push bp
    mov bp, sp
    sub sp, byte 0x0c
    push ds
    push es
    push si
    push di
    mov es, ax
    mov ds, ax
    xor bx, bx
    mov ax, word [cs:0x0297]
    mov cx, 0x140
    mul cx
    add ax, word [cs:0x0295]
    mov di, ax
    mov word [bp - 0x0006], ax
    xor ax, ax
    mov al, byte [bx]
    mov word [bp - 0x0002], ax
    mov al, byte [bx + 0x1]
    mov word [bp - 0x0004], ax
    mov cx, word [bx + 0xa]
    add bx, byte 0x10
    mov ax, word [bp + 0xc]
    shl ax, 1
    add bx, ax
    mov al, byte [bx]
    xor ah, ah
    mov word [bp - 0x000a], ax
    mul cx
    add ax, 0x110
    mov si, ax
    xor ah, ah
    mov al, byte [bx + 0x1]
    add word [cs:0x0295], ax
    mov word [bp - 0x000c], ax
    xor bx, bx
    mov al, byte [bx + 0x7]
    cbw
    add word [cs:0x0295], ax
    mov al, byte [bx + 0x2]
    test al, 1
    je short 0x300
    jmp near 0x3d4
    mov ax, word [cs:0x0299]
    or ax, ax
    jne short 0x30f
    mov al, byte [bx + 0x6]
    test al, 2
    jne short 0x371
    xor ax, ax
    mov al, byte [bx + 0x3]
    mov bx, word [bp - 0x000c]
    add bx, byte 7
    mov cl, 3
    shr bx, cl
    sub ax, bx
    mov word [bp - 0x000a], ax
    mov bx, word [cs:0x0291]
    mov dx, word [cs:0x0293]
    mov dh, bl
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov cx, word [bp - 0x000c]
    mov word [bp - 0x0008], cx
    lodsb
    cmp cx, byte 9
    jb short 0x344
    mov cx, 8
    sub word [bp - 0x0008], cx
    shl al, 1
    jb short 0x351
    mov byte [es:di], dh
    inc di
    jmp short 0x355
    mov byte [es:di], dl
    inc di
    loop 0x347
    mov cx, word [bp - 0x0008]
    or cx, cx
    jne short 0x338
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short 0x335
    jmp near 0x431
    mov ax, word [bp - 0x000a]
    mov cx, word [bx + 0xe]
    mul cx
    add ax, word [bx + 0xc]
    mov bx, ax
    mov ax, word [cs:0x0291]
    mov dx, word [cs:0x0293]
    mov dh, al
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov cx, word [bp - 0x0002]
    mov word [bp - 0x0008], cx
    lodsb
    mov ah, byte [bx]
    inc bx
    cmp cx, byte 9
    jb short 0x3a1
    mov cx, 8
    sub word [bp - 0x0008], cx
    shl ah, 1
    jae short 0x3b8
    shl al, 1
    jb short 0x3b2
    mov byte [es:di], dh
    inc di
    jmp short 0x3bb
    mov byte [es:di], dl
    inc di
    jmp short 0x3bb
    shl al, 1
    inc di
    loop 0x3a4
    mov cx, word [bp - 0x0008]
    or cx, cx
    jne short 0x392
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short 0x38f
    jmp near 0x431
    mov al, byte [bx + 0x6]
    test al, 2
    jne short 0x402
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x000c]
    mov word [bp - 0x000a], ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov cx, word [bp - 0x000c]
    rep movsb
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short 0x3ea
    jmp near 0x431
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x000c]
    mov word [bp - 0x000a], ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov cx, word [bp - 0x000c]
    mov al, byte [si]
    cmp al, 0xff
    je short 0x41d
    mov byte [es:di], al
    inc si
    inc di
    loop 0x414
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short 0x411
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    mov ax, word [bp + 0xc]
    mov word [cs:0x0299], ax
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    mov word [cs:0x0293], ax
    mov ax, word [bp + 0xe]
    mov word [cs:0x0291], ax
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    mov word [cs:0x0295], ax
    mov ax, word [bp + 0xe]
    mov word [cs:0x0297], ax
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    mov ax, word [cs:0x0295]
    mov bx, word [bp + 0xc]
    mov word [bx], ax
    mov ax, word [cs:0x0297]
    mov bx, word [bp + 0xe]
    mov word [bx], ax
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push es
    push di
    mov ax, word [cs:0x01e5]
    mov es, ax
    xor di, di
    mov ax, word [bp + 0xc]
    mov cx, 0xfa00
    rep stosb
    pop di
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x36
    push ds
    push es
    push di
    push si
    xor ax, ax
    mov word [bp - 0x002e], ax
    mov word [bp - 0x002a], ax
    mov word [bp - 0x0036], ax
    mov ax, ds
    mov es, ax
    call 0x1900
    call 0x949
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, 0xa000
    mov es, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x50
    mul bx
    mov bx, word [bp + 0xc]
    mov cl, 2
    shr bx, cl
    add ax, bx
    mov word [bp - 0x0002], ax
    mov cx, word [bp + 0xc]
    and cl, 3
    shl cl, 1
    mov al, 0x80
    shr al, cl
    mov byte [bp - 0x0014], al
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0012], ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    inc ax
    mov word [bp - 0x0016], ax
    xor ax, ax
    mov word [bp - 0x0026], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0xc]
    mov dx, bx
    sub ax, bx
    inc ax
    and dx, 3
    je short 0x539
    inc word [bp - 0x0026]
    mov bx, 4
    sub bx, dx
    and bl, 3
    mov dx, bx
    mov word [bp - 0x0028], dx
    sub ax, dx
    jae short 0x556
    add ax, dx
    mov word [bp - 0x0028], ax
    mov byte [bp - 0x0036], 1
    jmp near 0x570
    mov dx, ax
    shr ax, 1
    shr ax, 1
    add word [bp - 0x0026], ax
    mov word [bp - 0x002e], ax
    and dx, 3
    je short 0x56b
    inc word [bp - 0x0026]
    shl dx, 1
    mov word [bp - 0x002a], dx
    mov ax, word [bp - 0x0016]
    mov bx, word [bp - 0x0026]
    mul bx
    mov word [bp - 0x0024], ax
    shl ax, 1
    mov word [bp - 0x0032], ax
    add ax, word [bp - 0x0024]
    mov word [bp - 0x0034], ax
    add ax, word [bp - 0x0024]
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    add ax, word [cs:0x11cd]
    cmp ax, 0x4180
    jae short 0x5a3
    cmp byte [bp - 0x0036], 0
    jne short 0x5a3
    jmp near 0x61e
    jmp near 0x5a6
    shl word [bp - 0x0004], 1
    mov dx, 0x3ce
    mov al, 5
    out dx, al
    inc dx
    mov al, 2
    out dx, al
    mov dx, 0x3ce
    mov al, 8
    out dx, al
    inc dx
    mov di, word [bp - 0x0002]
    mov si, word [bp - 0x0012]
    mov bx, 0x33b3
    mov cl, 4
    test byte [bp - 0x0014], 0xaa
    jne short 0x5d0
    xor cl, cl
    inc word [bp - 0x0012]
    mov dx, 0x3cf
    mov al, byte [bp - 0x0014]
    out dx, al
    ror byte [bp - 0x0014], 1
    cmp byte [bp - 0x0014], 0x80
    jne short 0x5e3
    inc word [bp - 0x0002]
    mov dx, word [bp - 0x0016]
    lodsb
    add si, strict word 0x13f
    cs xlatb
    shr al, cl
    mov ch, byte [es:di]
    mov byte [es:di], al
    add di, byte 0x50
    dec dx
    jne short 0x5e6
    dec word [bp - 0x0004]
    jne short 0x5ba
    mov al, 0xff
    mov dx, 0x3cf
    out dx, al
    mov dx, 0x3ce
    mov al, 5
    out dx, al
    inc dx
    mov al, 0
    out dx, al
    call 0xb91
    call 0x18c1
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, word [cs:0x11cd]
    add ax, word [cs:0x01e1]
    mov es, ax
    mov ax, 0xa000
    mov ds, ax
    xor di, di
    mov cx, word [bp - 0x0032]
    xor ax, ax
    rep stosw
    mov dx, 0x3ce
    mov al, 5
    out dx, al
    inc dx
    mov al, 0
    out dx, al
    mov cx, word [bp - 0x0028]
    or cx, cx
    jne short 0x64b
    jmp near 0x6d8
    shl cx, 1
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 0
    out dx, al
    xor di, di
    mov si, word [bp - 0x0002]
    mov bx, word [bp - 0x0016]
    mov al, byte [si]
    shr al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short 0x65f
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 1
    out dx, al
    mov di, word [bp - 0x0024]
    mov si, word [bp - 0x0002]
    mov bx, word [bp - 0x0016]
    mov al, byte [si]
    shr al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short 0x682
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 2
    out dx, al
    mov di, word [bp - 0x0032]
    mov si, word [bp - 0x0002]
    mov bx, word [bp - 0x0016]
    mov al, byte [si]
    shr al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short 0x6a5
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 3
    out dx, al
    mov di, word [bp - 0x0034]
    mov si, word [bp - 0x0002]
    mov bx, word [bp - 0x0016]
    mov al, byte [si]
    shr al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short 0x6c8
    mov cx, word [bp - 0x002a]
    or cx, cx
    jne short 0x6e2
    jmp near 0x77c
    mov di, word [bp - 0x0026]
    dec di
    mov si, word [bp - 0x0002]
    add si, di
    push si
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 0
    out dx, al
    pop si
    push si
    mov bx, word [bp - 0x0016]
    mov al, byte [si]
    shl al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short 0x6fb
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 1
    out dx, al
    mov di, word [bp - 0x0026]
    dec di
    add di, word [bp - 0x0024]
    pop si
    push si
    mov bx, word [bp - 0x0016]
    mov al, byte [si]
    shl al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short 0x721
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 2
    out dx, al
    mov di, word [bp - 0x0026]
    dec di
    add di, word [bp - 0x0032]
    pop si
    push si
    mov bx, word [bp - 0x0016]
    mov al, byte [si]
    shl al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short 0x747
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 3
    out dx, al
    mov di, word [bp - 0x0026]
    dec di
    add di, word [bp - 0x0034]
    pop si
    mov bx, word [bp - 0x0016]
    mov al, byte [si]
    shl al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short 0x76c
    mov ax, word [cs:0x01e5]
    mov ds, ax
    xor di, di
    mov cx, word [bp - 0x0016]
    push cx
    mov si, word [bp - 0x0012]
    add word [bp - 0x0012], strict word 0x140
    mov cx, word [bp - 0x0028]
    or cx, cx
    je short 0x7f0
    mov byte [bp - 0x002c], cl
    mov cl, byte [es:di]
    mov bx, word [bp - 0x0024]
    mov ch, byte [es:bx + di]
    add bx, word [bp - 0x0024]
    mov dl, byte [es:bx + di]
    add bx, word [bp - 0x0024]
    mov dh, byte [es:bx + di]
    mov bx, 0x33b3
    lodsb
    cs xlatb
    rcl al, 1
    rcl dh, 1
    rcl al, 1
    rcl dl, 1
    rcl al, 1
    rcl ch, 1
    rcl al, 1
    rcl cl, 1
    rcl al, 1
    rcl dh, 1
    rcl al, 1
    rcl dl, 1
    rcl al, 1
    rcl ch, 1
    rcl al, 1
    rcl cl, 1
    dec byte [bp - 0x002c]
    jne short 0x7af
    mov byte [es:di], cl
    mov bx, word [bp - 0x0024]
    mov byte [es:bx + di], ch
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dl
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dh
    inc di
    mov ax, word [bp - 0x002e]
    or ax, ax
    je short 0x848
    mov word [bp - 0x002c], ax
    xor cx, cx
    xor dx, dx
    mov byte [bp - 0x0030], 4
    mov bx, 0x33b3
    lodsb
    cs xlatb
    rcl al, 1
    rcl dh, 1
    rcl al, 1
    rcl dl, 1
    rcl al, 1
    rcl ch, 1
    rcl al, 1
    rcl cl, 1
    rcl al, 1
    rcl dh, 1
    rcl al, 1
    rcl dl, 1
    rcl al, 1
    rcl ch, 1
    rcl al, 1
    rcl cl, 1
    dec byte [bp - 0x0030]
    jne short 0x802
    mov byte [es:di], cl
    mov bx, word [bp - 0x0024]
    mov byte [es:bx + di], ch
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dl
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dh
    inc di
    dec word [bp - 0x002c]
    jne short 0x7fa
    mov ax, word [bp - 0x002a]
    mov byte [bp - 0x002c], al
    or al, al
    je short 0x8b2
    xor ah, ah
    shr ax, 1
    dec ax
    add si, ax
    mov cl, byte [es:di]
    mov bx, word [bp - 0x0024]
    mov ch, byte [es:bx + di]
    add bx, word [bp - 0x0024]
    mov dl, byte [es:bx + di]
    add bx, word [bp - 0x0024]
    mov dh, byte [es:bx + di]
    mov bx, 0x33b3
    mov al, byte [si]
    dec si
    cs xlatb
    rcr al, 1
    rcr cl, 1
    rcr al, 1
    rcr ch, 1
    rcr al, 1
    rcr dl, 1
    rcr al, 1
    rcr dh, 1
    rcr al, 1
    rcr cl, 1
    rcr al, 1
    rcr ch, 1
    rcr al, 1
    rcr dl, 1
    rcr al, 1
    rcr dh, 1
    sub byte [bp - 0x002c], 2
    jne short 0x86e
    mov byte [es:di], cl
    mov bx, word [bp - 0x0024]
    mov byte [es:bx + di], ch
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dl
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dh
    inc di
    pop cx
    dec cx
    je short 0x8b9
    jmp near 0x787
    mov ax, 0xa000
    mov es, ax
    mov ax, word [cs:0x01e1]
    add ax, word [cs:0x11cd]
    mov ds, ax
    xor si, si
    mov di, word [bp - 0x0002]
    mov cx, word [bp - 0x0016]
    push cx
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 1
    out dx, al
    push si
    push di
    mov cx, word [bp - 0x0026]
    rep movsb
    pop di
    pop si
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 2
    out dx, al
    push si
    push di
    add si, word [bp - 0x0024]
    mov cx, word [bp - 0x0026]
    rep movsb
    pop di
    pop si
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 4
    out dx, al
    push si
    push di
    add si, word [bp - 0x0032]
    mov cx, word [bp - 0x0026]
    rep movsb
    pop di
    pop si
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 8
    out dx, al
    push si
    push di
    add si, word [bp - 0x0034]
    mov cx, word [bp - 0x0026]
    rep movsb
    pop di
    pop si
    add di, byte 0x50
    add si, word [bp - 0x0026]
    pop cx
    loop 0x8d1
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 0xf
    out dx, al
    call 0xb91
    call 0x18c1
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret

    db 0x00

loc_0949:
    cmp byte [cs:0x0228], 1
    jne short 0x98e
    mov cx, word [cs:0x1bd9]
    and cx, strict word 0xfffc
    mov dx, word [cs:0x1bdb]
    cmp word [bp + 0x10], cx
    jb short 0x98e
    cmp word [bp + 0x12], dx
    jb short 0x98e
    add cx, word [cs:0x1be1]
    add cx, word [cs:0x1be1]
    add cx, word [cs:0x1be1]
    add cx, word [cs:0x1be1]
    dec cx
    add dx, word [cs:0x1be3]
    dec dx
    cmp cx, word [bp + 0xc]
    jb short 0x98e
    cmp dx, word [bp + 0xe]
    jae short 0x997
    mov byte [cs:0x0a48], 0
    jmp near 0xb90
    mov byte [cs:0x0a48], 1
    mov cx, word [cs:0x1bd9]
    and cx, strict word 0xfffc
    mov ax, cx
    cmp word [bp + 0xc], cx
    jb short 0x9b0
    mov ax, word [bp + 0xc]
    mov word [bp - 0x0006], ax
    mov dx, word [cs:0x1bdb]
    mov bx, dx
    cmp word [bp + 0xe], dx
    jb short 0x9c2
    mov bx, word [bp + 0xe]
    mov word [bp - 0x0008], bx
    sub ax, cx
    sub bx, dx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], bx
    mov cx, word [cs:0x1be1]
    shl cx, 1
    shl cx, 1
    mov dx, word [cs:0x1be3]
    sub cx, ax
    mov word [bp - 0x000e], cx
    sub dx, bx
    mov word [bp - 0x0010], dx
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000e]
    dec ax
    cmp ax, word [bp + 0x10]
    jb short 0x9fd
    mov ax, word [bp + 0x10]
    sub ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0010]
    dec ax
    cmp ax, word [bp + 0x12]
    jb short 0xa13
    mov ax, word [bp + 0x12]
    sub ax, word [bp - 0x0008]
    inc ax
    mov word [bp - 0x0010], ax
    mov ax, word [bp - 0x0008]
    mov bx, 0x140
    mul bx
    add ax, word [bp - 0x0006]
    mov si, ax
    mov ax, word [bp - 0x000c]
    mov bx, word [cs:0x1be1]
    mul bx
    mov bx, word [bp - 0x000a]
    shr bx, 1
    shr bx, 1
    add ax, bx
    add ax, word [cs:0x1bd5]
    mov di, ax
    mov bx, word [bp - 0x000a]
    and bx, 3
    shl bx, 1
    mov cx, 6
    sub cx, bx
    mov word [bp - 0x0020], cx
    mov dx, 3
    shl dx, cl
    not dl
    mov byte [bp - 0x0022], dl
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, cs
    mov es, ax
    mov cx, word [bp - 0x0010]
    push cx
    push si
    push di
    mov ax, word [bp - 0x0020]
    mov word [bp - 0x001c], ax
    mov ax, word [bp - 0x0022]
    mov word [bp - 0x001e], ax
    mov cx, word [bp - 0x000e]
    push cx
    mov bx, 0x33b3
    mov ah, byte [bp - 0x001c]
    lodsb
    call 0x3252
    mov bl, byte [bp - 0x001e]
    and byte [es:di], bl
    or byte [es:di], dl
    and byte [es:di + 0x120], bl
    or byte [es:di + 0x120], dh
    and byte [es:di + 0x240], bl
    or byte [es:di + 0x240], al
    and byte [es:di + 0x360], bl
    or byte [es:di + 0x360], ah
    shr byte [bp - 0x001e], 1
    shr byte [bp - 0x001e], 1
    or byte [bp - 0x001e], 0xc0
    sub byte [bp - 0x001c], 2
    jae short 0xabf
    inc di
    mov byte [bp - 0x001c], 6
    mov byte [bp - 0x001e], 0x3f
    pop cx
    loop 0xa74
    pop di
    add di, word [cs:0x1be1]
    pop si
    add si, strict word 0x140
    pop cx
    loop 0xa62
    mov cx, word [cs:0x1bd9]
    mov ax, cx
    cmp word [bp + 0xc], cx
    jb short 0xadf
    mov ax, word [bp + 0xc]
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x000a]
    mov cx, word [cs:0x1bdd]
    sub cx, ax
    mov word [bp - 0x000e], cx
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000e]
    dec ax
    cmp ax, word [bp + 0x10]
    jb short 0xb05
    mov ax, word [bp + 0x10]
    sub ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x000e], ax
    mov ax, cs
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, word [cs:0x1bdb]
    mov bx, 0x140
    mul bx
    add ax, word [cs:0x1bd9]
    mov si, ax
    mov di, word [cs:0x1bd7]
    mov cx, word [cs:0x1be3]
    push cx
    push si
    mov cx, word [cs:0x1bdd]
    rep movsb
    pop si
    add si, strict word 0x140
    pop cx
    loop 0xb29
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, word [cs:0x1bdb]
    mov bx, 0x140
    mul bx
    add ax, word [cs:0x1bd9]
    mov di, ax
    mov ax, word [cs:0x259b]
    mov ds, ax
    mov si, word [cs:0x2599]
    mov cx, word [cs:0x1be3]
    mov ax, ds
    or ax, si
    jne short 0xb6d
    mov si, 0x259e
    mov ax, cs
    mov ds, ax
    push cx
    push di
    push si
    mov cx, word [cs:0x1bdd]
    mov al, byte [si]
    cmp al, 0xff
    je short 0xb7e
    mov byte [es:di], al
    inc si
    inc di
    loop 0xb75
    pop si
    add si, word [cs:0x258d]
    pop di
    add di, strict word 0x140
    pop cx
    loop 0xb6d
    ret
loc_0b91:
    cmp byte [cs:0x0a48], 0
    je short 0xbce
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, cs
    mov ds, ax
    mov ax, word [cs:0x1bdb]
    mov bx, 0x140
    mul bx
    add ax, word [cs:0x1bd9]
    mov di, ax
    mov si, word [cs:0x1bd7]
    mov cx, word [cs:0x1be3]
    push cx
    push di
    mov cx, word [cs:0x1bdd]
    rep movsb
    pop di
    add di, strict word 0x140
    pop cx
    loop 0xbbd
    ret
    push bp
    mov bp, sp
    push ds
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov bx, ax
    mov ax, word [bp + 0x10]
    mov byte [bx], al
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x14]
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep stosb
    dec word [bp - 0x0004]
    jne short 0xc2d
    pop di
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push ds
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov di, word [bp - 0x0002]
    mov si, di
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    lodsb
    not al
    stosb
    loop 0xc89
    dec word [bp - 0x0004]
    jne short 0xc7c
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, ax
    mov ah, 0x48
    int 0x21
    jae short 0xcda
    jmp near 0xd1e
    mov es, ax
    xor di, di
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 0x0004]
    stosw
    mov ax, word [bp - 0x0006]
    stosw
    mov ax, word [bp - 0x0008]
    stosw
    mov ax, word [bp - 0x000a]
    stosw
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short 0xd06
    mov dx, es
    xor ax, ax
    jmp short 0xd4f
    mov ax, cs
    mov ds, ax
    mov dx, 0xe2e
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    push bx
    inc cx
    push si
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bx + 0x75], ch
    je short 0xd5e
    outsw
    db 0x66, 0x20, 0x6d, 0x65 ; and byte ptr [di + 0x65], ch
    insw
    outsw
    jb short 0xdc0
    add byte [cs:bp + si], cl
    and al, 0x33
    db 0xd2, 0x8b, 0xc2
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    mov ds, ax
    mov si, word [bp + 0xc]
    or ax, si
    je short 0xdb0
    mov ax, word [cs:0x01e5]
    mov es, ax
    lodsw
    mov word [bp - 0x0002], ax
    add si, byte 2
    lodsw
    mov word [bp - 0x0004], ax
    lodsw
    mov word [bp - 0x0006], ax
    add si, byte 4
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short 0xd89
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0xdeb
    mov ax, ds
    or ax, ax
    je short 0xdeb
    mov es, ax
    mov ah, 0x49
    int 0x21
    jmp short 0xdeb
    mov ax, cs
    mov ds, ax
    mov dx, 0xec0
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    push dx
    inc bp
    push bx
    push sp
    dec di
    push dx
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bp + di + 0x61], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x77, 0x69 ; and byte ptr fs:[bx + 0x69], dh
    je short 0xe42
    and byte [bp + 0x55], cl
    dec sp
    dec sp
    and byte [bx + si + 0x6f], dh
    imul bp, word [bp + 0x74], 0x7265
    add byte [cs:bp + si], cl
    db 0x24
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    cmp ax, strict word 2
    je short 0xe42
    cmp ax, strict word 1
    je short 0xe0e
    jmp near 0xea3
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x251
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:bx]
    mov bx, word [cs:0x01e1]
    add bx, ax
    mov ds, bx
    mov ax, word [cs:0x01e5]
    mov es, ax
    xor di, di
    xor si, si
    mov cx, 0xfa00
    rep movsb
    jmp short 0xeb5
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov si, word [cs:bx]
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x4540], ax
    call 0x4442
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov bx, word [cs:0x0203]
    mov ds, bx
    mov ax, word [cs:0x01e5]
    mov es, ax
    xor di, di
    mov cx, 3
    push cx
    mov cx, 0x4000
    rep movsb
    and si, strict word 0x3fff
    inc word [cs:0x4540]
    mov ax, word [cs:0x4540]
    call 0x4442
    pop cx
    loop 0xe83
    mov cx, 0x3a00
    rep movsb
    jmp short 0xeb5
    mov ax, word [cs:0x01e5]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 0xfa00
    mov ah, 0x3f
    int 0x21
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    test ah, 0x80
    jne short 0xed6
    jmp near 0xf56
    neg ax
    mov bx, 0x251
    shl ax, 1
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short 0xee9
    jmp near 0xf70
    mov ax, word [cs:0x11cb]
    inc ax
    mov word [cs:0x11cb], ax
    mov word [cs:bx], ax
    mov cl, 2
    dec ax
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:0x11cd]
    mov word [cs:bx], ax
    mov cx, 0xfa0
    mov word [cs:bx + 0x2], cx
    mov dx, word [cs:0x11cd]
    add dx, cx
    mov word [cs:0x11cd], dx
    cmp dx, strict word 0x4180
    jb short 0xf22
    jmp near 0xfae
    mov ax, word [bp + 0xc]
    neg ax
    shl ax, 1
    mov bx, 0x251
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov ds, ax
    xor di, di
    xor si, si
    mov cx, 0xfa00
    rep movsb
    jmp short 0xf68
    mov ax, word [cs:0x01e5]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 0xfa00
    mov ah, 0x40
    int 0x21
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x1080
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    push bx
    inc cx
    push si
    inc bp
    pop di
    push bx
    inc bx
    push dx
    inc bp
    inc bp
    dec si
    and byte [bp + di + 0x61], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x77, 0x69 ; and byte ptr fs:[bx + 0x69], dh
    je short 0x1002
    and byte [bp + si + 0x61], ah
    and byte [fs:bp + di + 0x6c], dh
    outsw
    je short 0xfc4
    outsb
    jne short 0x1014
    bound sp, dword [di + 0x72]
    add byte [cs:bp + si], cl
    db 0x24
    mov ax, cs
    mov ds, ax
    mov dx, 0x10be
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    push bx
    inc cx
    push si
    inc bp
    pop di
    push bx
    inc bx
    push dx
    inc bp
    inc bp
    dec si
    and byte [bp + di + 0x61], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x77, 0x69 ; and byte ptr fs:[bx + 0x69], dh
    je short 0x1040
    and byte [si + 0x61], dh
    bound bp, dword [si + 0x65]
    and byte [bp + 0x75], ah
    insb
    insb
    add byte [cs:bp + si], cl
    and al, 0
    times 231 db 0
    push bp
    mov bp, sp
    sub sp, byte 0x14
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    cmp ax, strict word 0xa
    jb short 0x10e8
    jmp near 0x1211
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x10e7
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x10ff
    jmp near 0x110f
    mov ax, cs
    mov ds, ax
    mov dx, 0x135d
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    mov ax, word [cs:0x11cb]
    inc ax
    mov word [cs:0x11cb], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:0x11cd]
    mov word [cs:bx], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0x113c
    jmp near 0x12bb
    cld
    mov cx, 0x1000
    mov bx, word [cs:0x01e1]
    add bx, word [cs:0x11cd]
    mov ds, bx
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov bx, 0
    mov ax, word [bx]
    mov cx, 6
    mul cx
    add ax, strict word 4
    mov bx, word [bp - 0x0008]
    add bx, strict word 0x27d
    mov word [cs:bx], ax
    mov bx, ax
    sub bx, byte 6
    mov cl, byte [bx + 0x5]
    mov al, byte [bx + 0x4]
    mul cl
    mov cl, 3
    shl ax, cl
    mov cx, word [bx + 0x2]
    add ax, cx
    push ax
    xor dx, dx
    mov ax, word [bx]
    mov cx, 0x10
    mul cx
    pop cx
    add ax, cx
    adc dx, byte 0
    push ax
    push dx
    sub ax, 0x1000
    sbb dx, byte 0
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0006], dx
    pop dx
    pop ax
    add ax, strict word 0xf
    adc dx, byte 0
    mov bx, 0x10
    div bx
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add word [cs:0x11cd], ax
    mov ax, word [cs:0x11cd]
    cmp ax, 0x4180
    jae short 0x1221
    mov ax, ds
    add ax, 0x100
    mov ds, ax
    mov dx, 0
    cmp word [bp - 0x0006], byte 0
    je short 0x11fd
    dec word [bp - 0x0006]
    mov cx, 0x8000
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov ax, ds
    add ax, 0x800
    mov ds, ax
    mov cx, 0x8000
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov ax, ds
    add ax, 0x800
    mov ds, ax
    jmp short 0x11cc
    mov cx, word [bp - 0x0008]
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x1331
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    mov ax, cs
    mov ds, ax
    mov dx, 0x138c
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec sp
    dec di
    inc cx
    inc sp
    pop di
    dec bp
    inc cx
    pop dx
    inc bp
    and byte [bp + di + 0x61], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x77, 0x69 ; and byte ptr fs:[bx + 0x69], dh
    je short 0x12b1
    and byte [bp + si + 0x61], ah
    and byte [fs:bp + di + 0x6c], dh
    outsw
    je short 0x1273
    outsb
    jne short 0x12c3
    bound sp, dword [di + 0x72]
    add byte [cs:bp + si], cl
    and al, 0xd
    or al, byte [bx]
    dec sp
    dec di
    inc cx
    inc sp
    pop di
    dec bp
    inc cx
    pop dx
    inc bp
    and byte [bp + di + 0x61], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x77, 0x69 ; and byte ptr fs:[bx + 0x69], dh
    je short 0x12dd
    and byte [bp + 0x69], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x73, 0x6c ; and byte ptr fs:[bp + di + 0x6c], dh
    outsw
    je short 0x12a2
    outsb
    jne short 0x12f2
    bound sp, dword [di + 0x72]
    add byte [cs:bp + si], cl
    and al, 0xd
    or al, byte [bx]
    outsw
    outsw
    jo short 0x1306
    db 0x2e, 0x2e, 0x2e, 0x20, 0x4c, 0x4f ; and byte ptr cs:[si + 0x4f], cl
    inc cx
    inc sp
    pop di
    dec bp
    inc cx
    pop dx
    inc bp
    and byte [bp + 0x69], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x69, 0x74 ; and byte ptr fs:[bx + di + 0x74], ch
    jae short 0x12cc
    insw
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x132b
    and byte [bx + di + 0x72], ah
    db 0x65, 0x61 ; popaw 
    add byte [cs:bp + si], cl
    db 0x24
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov si, 0x2c3
    add si, ax
    mov ax, word [cs:si]
    dec ax
    mov cl, 2
    shl ax, cl
    mov di, 0x2eb
    add di, ax
    mov si, word [cs:di]
    mov ax, word [cs:di + 0x2]
    mov word [cs:bx + 0x2], ax
    mov word [bp - 0x0004], ax
    mov dx, word [cs:0x01e1]
    add dx, word [cs:0x11cd]
    mov word [bp - 0x000a], dx
    mov es, dx
    add word [cs:0x11cd], ax
    mov ax, word [cs:0x0203]
    mov ds, ax
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x4540], ax
    call 0x4442
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    test si, 0xc000
    je short 0x1325
    inc word [cs:0x4540]
    mov ax, word [cs:0x4540]
    call 0x4442
    sub si, strict word 0x4000
    xor di, di
    mov cx, 0x10
    rep movsb
    mov ax, es
    inc ax
    mov es, ax
    dec word [bp - 0x0004]
    jne short 0x130f
    mov ax, word [bp - 0x000a]
    mov ds, ax
    mov bx, 0
    mov ax, word [bx]
    mov cx, 6
    mul cx
    add ax, strict word 4
    mov bx, word [bp - 0x0008]
    add bx, strict word 0x27d
    mov word [cs:bx], ax
    jmp near 0x1209
loc_1355:
    push ax
    mov bx, 0x29b
    mov cx, 0x14
    cmp ax, word [cs:bx]
    jae short 0x1364
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x135c
    mov bx, 0x2c3
    mov cx, 0xa
    cmp ax, word [cs:bx]
    jae short 0x1376
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x136e
    mov bx, 0x2d7
    mov cx, 0xa
    cmp ax, word [cs:bx]
    jae short 0x1388
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x1380
    pop ax
    ret

    times 4 db 0

loc_1392:
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov word [bp - 0x0004], bx
    mov ax, word [cs:bx + 0x2]
    sub word [cs:0x0391], ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp - 0x0004]
    mov di, word [cs:bx]
    mov dx, word [cs:0x0203]
    mov es, dx
    mov ds, dx
    mov si, word [cs:bx + 0x4]
    add dx, word [cs:0x01e1]
    mov cx, word [cs:bx + 0x6]
    or cx, cx
    jne short 0x13ce
    jmp near 0x144f
    push cx
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x148e], ax
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x1490], ax
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    call 0x145c
    pop cx
    push cx
    mov cx, 0x10
    rep movsb
    xor dx, dx
    cmp di, strict word 0x4000
    jne short 0x140b
    inc word [cs:0x1490]
    inc dx
    cmp si, strict word 0x4000
    je short 0x1417
    cmp si, strict word 0x8000
    jne short 0x141d
    inc word [cs:0x148e]
    inc dx
    or dx, dx
    je short 0x1424
    call 0x145c
    pop cx
    loop 0x13f7
    mov bx, word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    mov ax, word [cs:bx + 0x4]
    sub ax, cx
    mov word [cs:bx], ax
    add ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x4], ax
    mov ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x2], ax
    add bx, byte 4
    mov word [bp - 0x0004], bx
    jmp near 0x13ab
    mov bx, word [bp - 0x0004]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 0x2], ax
    ret
loc_145c:
    and di, strict word 0x3fff
    and si, strict word 0x3fff
    mov ah, 0x44
    mov al, 0
    mov bx, word [cs:0x1490]
    mov dx, word [cs:0x0201]
    int 0x67
    cmp bx, word [cs:0x148e]
    je short 0x148f
    or si, strict word 0x4000
    mov ah, 0x44
    mov al, 1
    mov bx, word [cs:0x148e]
    mov dx, word [cs:0x0201]
    int 0x67
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 0xa
    jb short 0x14a9
    jmp near 0x14d0
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x10e7
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x14bd
    jmp near 0x14d0
    mov word [cs:bx], 0
    mov cx, word [cs:0x11cb]
    dec cx
    mov word [cs:0x11cb], cx
    call 0x4c93
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    cld
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0004], ax
    mov bx, 0x10e7
    add bx, ax
    mov bx, word [cs:bx]
    or bx, bx
    jne short 0x1520
    mov ax, cs
    mov ds, ax
    mov dx, 0x160b
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21

    db 0x0d, 0x0a, 0x07
    db 'MAZE SET ERROR.', 0
    db 0x0a, 0x24

    dec bx
    mov cl, 2
    shl bx, cl
    add bx, strict word 0x10fb
    mov ax, word [cs:bx]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    cmp ax, strict word 0xffff
    je short 0x153a
    jmp near 0x1612
    mov bx, word [bp + 0xe]
    mov ax, 5
    mul bx
    mov bx, word [bp - 0x0004]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, word [cs:0x01e1]
    add ax, word [bp - 0x0002]
    mov ds, ax
    xor ah, ah
    mov al, byte [si + 0x4]
    or ax, ax
    jne short 0x1569
    jmp near 0x1711
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0004], ax
    mov al, byte [si + 0x1]
    cbw
    mov bl, byte [si + 0x3]
    xor bh, bh
    add ax, bx
    mov cl, 3
    shl ax, cl
    mov di, ax
    mov al, byte [si + 0x2]
    mov cx, 0x140
    mul cx
    add di, ax
    mov al, byte [si]
    mov bl, 6
    mul bl
    add ax, word [cs:0x027b]
    mov bx, ax
    xor ax, ax
    mov al, byte [bx + 0x4]
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x2]
    mov dl, byte [si + 0x3]
    xor dh, dh
    shl dx, 1
    shl dx, 1
    shl dx, 1
    add ax, dx
    xor cx, cx
    mov cl, byte [bx + 0x5]
    mov dx, ds
    add dx, word [bx]
    mov ds, dx
    push cx
    mov cx, word [bp - 0x0004]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short 0x15fe
    cmp word [bp + 0x10], byte 2
    je short 0x15f1
    cmp word [bp + 0x10], byte 3
    je short 0x15e4
    lodsb
    or al, byte [es:di]
    stosb
    loop 0x15db
    jmp short 0x1600
    lodsb
    cmp al, 0xff
    je short 0x15ec
    mov byte [es:di], ah
    inc di
    loop 0x15e4
    jmp short 0x1600
    lodsb
    cmp al, 0xff
    je short 0x15f9
    mov byte [es:di], al
    inc di
    loop 0x15f1
    jmp short 0x1600
    rep movsb
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 0x0006]
    add ax, dx
    pop si
    pop cx
    loop 0x15bf
    jmp near 0x1711
    mov bx, word [bp + 0xe]
    mov ax, 5
    mul bx
    mov bx, word [bp - 0x0004]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, word [cs:0x01e1]
    add ax, word [bp - 0x0002]
    mov ds, ax
    mov al, byte [si]
    mov bl, 6
    mul bl
    add ax, word [cs:0x027b]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    mov bx, 5
    mul bx
    mov bx, word [bp - 0x0004]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    xor ah, ah
    mov al, byte [si + 0x4]
    or ax, ax
    jne short 0x1663
    jmp near 0x1711
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0004], ax
    mov al, byte [si + 0x1]
    cbw
    mov bl, byte [si + 0x3]
    xor bh, bh
    add ax, bx
    mov cl, 3
    shl ax, cl
    mov di, ax
    mov al, byte [si + 0x2]
    mov cx, 0x140
    mul cx
    add di, ax
    mov bx, word [bp - 0x0002]
    xor ax, ax
    mov al, byte [bx + 0x4]
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0006], ax
    mov cl, 3
    mov ax, word [bx + 0x2]
    xor dh, dh
    mov dl, byte [bx + 0x4]
    shl dx, cl
    dec dx
    add ax, dx
    xor dx, dx
    mov dl, byte [si + 0x3]
    shl dx, cl
    sub ax, dx
    xor cx, cx
    mov cl, byte [bx + 0x5]
    mov dx, ds
    add dx, word [bx]
    mov ds, dx
    push cx
    mov cx, word [bp - 0x0004]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short 0x16fc
    cmp word [bp + 0x10], byte 2
    je short 0x16ed
    cmp word [bp + 0x10], byte 3
    je short 0x16de
    mov al, byte [si]
    dec si
    or al, byte [es:di]
    stosb
    loop 0x16d3
    jmp short 0x1702
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short 0x16e8
    mov byte [es:di], ah
    inc di
    loop 0x16de
    jmp short 0x1702
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short 0x16f7
    mov byte [es:di], al
    inc di
    loop 0x16ed
    jmp short 0x1702
    mov al, byte [si]
    dec si
    stosb
    loop 0x16fc
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 0x0006]
    add ax, dx
    pop si
    pop cx
    loop 0x16b7
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 4
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0205], 0
    jne short 0x172f
    jmp near 0x179c
    push ds
    push si
    mov si, 0x259e
    mov ax, cs
    mov ds, ax
    call 0x17a1
    pop si
    pop ds
    mov ax, 0
    int 0x33
    mov ax, 7
    xor cx, cx
    mov dx, 0x27f
    int 0x33
    mov ax, 8
    xor cx, cx
    mov dx, 0xc7
    int 0x33
    mov ax, 4
    xor cx, cx
    xor dx, dx
    int 0x33
    mov ax, 3
    int 0x33
    shr cx, 1
    mov word [cs:0x1beb], cx
    mov word [cs:0x1bed], dx
    push ds
    push es
    push di
    push si
    mov ax, cs
    push ax
    mov ax, 0xffff
    mov word [cs:0x1bdb], ax
    call 0x2a6a
    pop si
    pop di
    pop es
    pop ds
    mov byte [cs:0x0228], 1
    push es
    mov ax, 0x14
    mov bx, cs
    mov es, bx
    mov cx, 0xb
    mov dx, 0x2b09
    int 0x33
    pop es
    pop es
    mov sp, bp
    pop bp
    ret
loc_17a1:
    push es
    push di
    mov ax, cs
    mov es, ax
    mov cx, 0x100
    mov di, 0x2a02
    xor al, al
    rep stosb
    mov cx, 0x400
    mov di, 0x2602
    xor al, al
    rep stosb
    xor di, di
    mov bx, 0x33b3
    mov cx, word [cs:0x2591]
    push cx
    mov cx, word [cs:0x258d]
    mov word [bp - 0x0002], cx
    mov al, 6
    mov byte [bp - 0x0004], al
    lodsb
    mov ah, byte [bp - 0x0004]
    call 0x3245
    or byte [cs:di + 0x2a02], ch
    or byte [cs:di + 0x2602], dl
    or byte [cs:di + 0x2702], dh
    or byte [cs:di + 0x2802], al
    or byte [cs:di + 0x2902], ah
    sub byte [bp - 0x0004], 2
    jae short 0x17fe
    inc di
    mov byte [bp - 0x0004], 6
    dec word [bp - 0x0002]
    jne short 0x17d3
    cmp byte [bp - 0x0004], 6
    je short 0x180a
    inc di
    pop cx
    loop 0x17c5
    pop di
    pop es
    ret
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0228], 0
    je short 0x189a
    mov byte [cs:0x0228], 0
    mov ax, 0
    int 0x33
    push ds
    push es
    push di
    push si
    mov ax, cs
    mov ds, ax
    mov ax, 0xa000
    mov es, ax
    mov si, word [cs:0x1bd5]
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 1
    out dx, al
    call 0x189f
    mov si, word [cs:0x1bd5]
    add si, strict word 0x120
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 2
    out dx, al
    call 0x189f
    mov si, word [cs:0x1bd5]
    add si, strict word 0x240
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 4
    out dx, al
    call 0x189f
    mov si, word [cs:0x1bd5]
    add si, strict word 0x360
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 8
    out dx, al
    call 0x189f
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 0xf
    out dx, al
    pop si
    pop di
    pop es
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
loc_189f:
    mov di, word [cs:0x1be5]
    mov cx, word [cs:0x1be3]
    push cx
    push si
    push di
    mov cx, word [cs:0x1be1]
    rep movsb
    pop di
    add di, byte 0x50
    pop si
    add si, word [cs:0x1be1]
    pop cx
    loop 0x18a9
    ret
loc_18c1:
    push ds
    push es
    push si
    push di
    cmp byte [cs:0x0226], 1
    je short 0x18d5
    cmp byte [cs:0x0228], 1
    je short 0x18d8
    jmp near 0x18f5
    mov ax, 3
    int 0x33
    shr cx, 1
    cmp word [cs:0x1bd9], cx
    jne short 0x18ed
    cmp word [cs:0x1bdb], dx
    je short 0x18f5
    shl cx, 1
    mov ax, cs
    push ax
    call 0x2a4f
    mov byte [cs:0x0227], 0
    pop di
    pop si
    pop es
    pop ds
    ret
loc_1900:
    cmp byte [cs:0x0228], 1
    jne short 0x190e
    mov byte [cs:0x0227], 1
    ret
    push bp
    mov bp, sp
    sub sp, byte 4
    push ds
    push si
    push es
    mov ax, ds
    mov es, ax
    mov word [bp - 0x0004], 1
    xor ax, ax
    cmp byte [cs:0x0228], 0
    je short 0x198b
    mov bx, word [cs:0x2b02]
    or bx, bx
    je short 0x194a
    mov word [cs:0x2b02], 0
    mov word [bp - 0x0002], bx
    mov cx, word [cs:0x2b04]
    mov dx, word [cs:0x2b06]
    jmp short 0x1956
    mov ax, 3
    int 0x33
    xor bx, bx
    mov word [bp - 0x0002], bx
    shr cx, 1
    mov bx, cx
    mov si, word [bp + 0xc]
    cmp word [si], byte 0xff
    je short 0x1989
    cmp bx, word [si]
    jb short 0x1981
    cmp dx, word [si + 0x2]
    jb short 0x1981
    cmp word [si + 0x4], bx
    jb short 0x1981
    cmp word [si + 0x6], dx
    jb short 0x1981
    mov ax, word [bp - 0x0004]
    mov bx, word [bp - 0x0002]
    or bx, bx
    je short 0x198b
    neg ax
    jmp short 0x198b
    add si, byte 8
    inc word [bp - 0x0004]
    jmp short 0x195b
    xor ax, ax
    pop es
    pop si
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 6
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0228], 0
    je short 0x19bc
    mov ax, 3
    int 0x33
    mov word [bp - 0x0002], bx
    mov bx, word [bp + 0xc]
    shr cx, 1
    mov word [bx], cx
    mov bx, word [bp + 0xe]
    mov word [bx], dx
    mov ax, word [bp - 0x0002]
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 4
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x10]
    cmp ax, strict word 0x51
    jb short 0x19da
    jmp near 0x1a9f
    mov bx, word [bp + 0x12]
    mul bx
    or dx, dx
    jne short 0x19d7
    cmp ax, 0x401
    jae short 0x19d7
    call 0x1900
    mov ax, word [bp + 0xc]
    mov word [cs:0x2599], ax
    mov ax, word [bp + 0xe]
    mov word [cs:0x259b], ax
    mov ax, word [bp + 0x10]
    mov word [cs:0x258d], ax
    mov ax, word [bp + 0x12]
    mov word [cs:0x2591], ax
    mov ax, word [cs:0x2599]
    or ax, word [cs:0x259b]
    jne short 0x1a33
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov si, 0x2593
    mov di, 0x258d
    mov cx, 6
    rep movsb
    push ds
    push si
    mov si, 0x259e
    mov ax, cs
    mov ds, ax
    call 0x17a1
    pop si
    pop ds
    jmp short 0x1a51
    mov ax, word [cs:0x258d]
    add ax, strict word 3
    mov cl, 2
    shr ax, cl
    mov word [cs:0x258f], ax
    push ds
    push si
    mov si, word [bp + 0xc]
    mov ax, word [bp + 0xe]
    mov ds, ax
    call 0x17a1
    pop si
    pop ds
    cmp byte [cs:0x0228], 0
    je short 0x1a97
    mov cx, word [bp + 0x14]
    cmp cx, byte 0xff
    je short 0x1a77
    mov dx, word [bp + 0x16]
    cmp dx, byte 0xff
    je short 0x1a77
    shl cx, 1
    mov ax, 4
    int 0x33
    mov ax, 3
    int 0x33
    jmp short 0x1a8b
    cmp byte [cs:0x0226], 0
    je short 0x1a70
    mov cx, word [cs:0x1bd9]
    shl cx, 1
    mov dx, word [cs:0x1bdb]
    mov ax, cs
    push ax
    call 0x2a4f
    mov byte [cs:0x0227], 0
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x1baf
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21

    db 0x0d, 0x0a, 0x07
    db 'Mouse pointer size out of range.', 0
    db 0x0a, 0x24, 0xfd, 0x1b, 0x7d, 0x20
    times 2484 db 0
    db 0x0a, 0x00, 0x03, 0x00, 0x0a, 0x00, 0x0a, 0x00, 0x03, 0x00, 0x0a
    times 13 db 0
    db 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xb6, 0xb6, 0xb6, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x13
    db 0x15, 0xb6, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x15, 0x16, 0xb6, 0x00, 0xff, 0xff, 0xff
    db 0xff, 0x00, 0xb3, 0xb6, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x00, 0x00, 0xb3
    db 0xb6, 0xc1, 0x00, 0xff, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00
    db 0xb3, 0xc3, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0xff
    times 1287 db 0
    db 0xfc, 0x25, 0x0a, 0x00, 0x74, 0x34, 0x2e, 0x80, 0x3e, 0x08, 0x2b, 0x00, 0x75, 0x29, 0x2e, 0xa2
    db 0x08, 0x2b, 0x2e, 0x89, 0x1e, 0x02, 0x2b, 0xd1, 0xe9, 0x2e, 0x89, 0x0e, 0x04, 0x2b, 0x2e, 0x89
    db 0x16, 0x06, 0x2b, 0x32, 0xc0, 0x2e, 0xa2, 0x08, 0x2b, 0x2e, 0x3b, 0x0e, 0xd9, 0x1b, 0x75, 0x08
    db 0x2e, 0x3b, 0x16, 0xdb, 0x1b, 0x75, 0x01, 0xcb, 0xd1, 0xe1, 0x2e, 0xa0, 0x27, 0x02, 0x2e, 0x0a
    db 0x06, 0x26, 0x02, 0x74, 0x01, 0xcb

loc_2a4f:
    cmp byte [cs:0x2b08], 0
    je short 0x2a58
    retf
    mov al, 0xff
    mov byte [cs:0x2b08], al
    shr cx, 1
    mov word [cs:0x1beb], cx
    mov word [cs:0x1bed], dx
loc_2a6a:
    push bp
    mov bp, sp
    sub sp, byte 0x10
    mov ax, word [cs:0x1bed]
    mov bx, 0xc8
    sub bx, ax
    cmp bx, word [cs:0x2591]
    jb short 0x2a85
    mov bx, word [cs:0x2591]
    mov word [cs:0x1bf5], bx
    mov bx, 0x50
    mul bx
    mov bx, word [cs:0x1beb]
    mov cl, 2
    shr bx, cl
    add ax, bx
    mov word [cs:0x1bf7], ax
    mov ax, word [cs:0x1beb]
    and ax, strict word 3
    shl ax, 1
    mov word [cs:0x1bf9], ax
    mov ax, 0x140
    mov bx, word [cs:0x1beb]
    sub ax, bx
    cmp ax, word [cs:0x258d]
    jb short 0x2ac9
    mov ax, word [cs:0x258d]
    mov word [cs:0x1bfb], 0
    jmp short 0x2ad0
    mov word [cs:0x1bfb], 0xff
    mov word [cs:0x1bef], ax
    add ax, strict word 3
    mov cl, 2
    shr ax, cl
    mov word [cs:0x1bf1], ax
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word ptr cs:[0x1bfb], 0
    jne short 0x2af0
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word ptr cs:[0x1bf9], 0
    je short 0x2af0
    inc ax
    mov word [cs:0x1bf3], ax
    mov di, word [cs:0x1bd7]
    mov ax, cs
    mov es, ax
    mov ax, 0xa000
    mov ds, ax
    mov dx, 0x3ce
    mov al, 5
    out dx, al
    inc dx
    mov al, 0
    out dx, al
    mov ah, 0
    xor di, di
    call 0x2f46
    mov ah, 1
    mov di, 0x120
    call 0x2f46
    mov di, 0x240
    mov ah, 2
    call 0x2f46
    mov di, 0x360
    mov ah, 3
    call 0x2f46
    mov ax, word [cs:0x1bdb]
    cmp ax, strict word 0xffff
    jne short 0x2b37
    jmp near 0x2ca6
    add ax, word [cs:0x1be3]
    dec ax
    mov word [bp - 0x0002], ax
    mov ax, word [cs:0x1bd9]
    mov cl, 2
    shr ax, cl
    add ax, word [cs:0x1be1]
    dec ax
    mov word [bp - 0x0004], ax
    mov cx, word [cs:0x1beb]
    shr cx, 1
    shr cx, 1
    mov dx, word [cs:0x1bed]
    cmp word [bp - 0x0004], cx
    jb short 0x2b88
    cmp word [bp - 0x0002], dx
    jb short 0x2b88
    add cx, word [cs:0x1bf3]
    dec cx
    add dx, word [cs:0x1bf5]
    dec dx
    mov ax, word [cs:0x1bd9]
    shr ax, 1
    shr ax, 1
    cmp cx, ax
    jb short 0x2b88
    cmp dx, word [cs:0x1bdb]
    jae short 0x2b91
    mov byte [cs:0x259d], 0
    jmp near 0x2ca6
    mov byte [cs:0x259d], 1
    mov cx, word [cs:0x1beb]
    shr cx, 1
    shr cx, 1
    mov ax, cx
    mov bx, word [cs:0x1bd9]
    shr bx, 1
    shr bx, 1
    cmp bx, cx
    jb short 0x2bb7
    mov ax, word [cs:0x1bd9]
    shr ax, 1
    shr ax, 1
    mov word [bp - 0x0006], ax
    mov dx, word [cs:0x1bed]
    mov bx, dx
    cmp word [cs:0x1bdb], dx
    jb short 0x2bcd
    mov bx, word [cs:0x1bdb]
    mov word [bp - 0x0008], bx
    sub ax, cx
    sub bx, dx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], bx
    mov cx, word [cs:0x1bf3]
    mov dx, word [cs:0x1bf5]
    sub cx, ax
    mov word [bp - 0x000e], cx
    sub dx, bx
    mov word [bp - 0x0010], dx
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000e]
    dec ax
    cmp ax, word [bp - 0x0004]
    jb short 0x2c04
    mov ax, word [bp - 0x0004]
    sub ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0010]
    dec ax
    cmp ax, word [bp - 0x0002]
    jb short 0x2c1a
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x0008]
    inc ax
    mov word [bp - 0x0010], ax
    mov ax, word [bp - 0x0008]
    sub ax, word [cs:0x1bdb]
    mov bx, word [cs:0x1be1]
    mul bx
    add ax, word [bp - 0x0006]
    mov bx, word [cs:0x1bd9]
    shr bx, 1
    shr bx, 1
    sub ax, bx
    add ax, word [cs:0x1bd5]
    mov si, ax
    mov ax, word [bp - 0x000c]
    mov bx, word [cs:0x1bf3]
    mul bx
    add ax, word [bp - 0x000a]
    add ax, word [cs:0x1bd7]
    mov di, ax
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov cx, word [bp - 0x0010]
    push cx
    push si
    push di
    mov ax, si
    mov bx, di
    mov cx, word [bp - 0x000e]
    rep movsb
    add ax, 0x120
    add bx, strict word 0x120
    mov si, ax
    mov di, bx
    mov cx, word [bp - 0x000e]
    rep movsb
    add ax, 0x120
    add bx, strict word 0x120
    mov si, ax
    mov di, bx
    mov cx, word [bp - 0x000e]
    rep movsb
    add ax, 0x120
    add bx, strict word 0x120
    mov si, ax
    mov di, bx
    mov cx, word [bp - 0x000e]
    rep movsb
    pop di
    add di, word [cs:0x1bf3]
    pop si
    add si, word [cs:0x1be1]
    pop cx
    loop 0x2c5b
    mov ax, 0xa000
    mov es, ax
    mov si, 0x2602
    mov ax, cs
    mov ds, ax
    xor si, si
    mov ah, 1
    call 0x2f70
    mov si, 0x100
    mov ah, 2
    call 0x2f70
    mov si, 0x200
    mov ah, 4
    call 0x2f70
    mov si, 0x300
    mov ah, 8
    call 0x2f70
    mov dx, 0x3ce
    mov al, 8
    out dx, al
    inc dx
    mov al, 0xff
    out dx, al
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 0xf
    out dx, al
    mov ax, word [cs:0x1bdb]
    cmp ax, strict word 0xffff
    jne short 0x2cf1
    jmp near 0x2e08
    mov ah, 1
    xor si, si
    call 0x2e7d
    mov ah, 2
    mov si, 0x120
    call 0x2e7d
    mov ah, 4
    mov si, 0x240
    call 0x2e7d
    mov ah, 8
    mov si, 0x360
    call 0x2e7d
    mov dx, 0x3ce
    mov al, 8
    out dx, al
    inc dx
    mov al, 0xff
    out dx, al
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 0xf
    out dx, al
    mov ax, cs
    mov es, ax
    mov ds, ax
    mov di, 0x24fd
    mov cx, 0x80
    mov al, 0xff
    rep stosb
    mov ax, word [cs:0x1be1]
    add ax, strict word 7
    mov cl, 3
    shr ax, cl
    mov word [bp - 0x0002], ax
    cmp byte [cs:0x259d], 0
    jne short 0x2d4d
    jmp near 0x2dc5
    mov ax, word [bp - 0x0008]
    sub ax, word [cs:0x1bdb]
    mov bx, word [bp - 0x0002]
    mul bx
    mov di, ax
    add di, strict word 0x24fd
    mov ax, word [bp - 0x0006]
    mov bx, word [cs:0x1bd9]
    shr bx, 1
    shr bx, 1
    sub ax, bx
    mov bx, 0x257d
    cmp ax, strict word 8
    jb short 0x2d7c
    sub ax, strict word 8
    inc di
    jmp short 0x2d71
    mov cx, ax
    mov ah, 0xff
    shr ah, cl
    mov dx, word [bp - 0x000e]
    add dx, cx
    cmp dx, byte 8
    jb short 0x2d9a
    not ah
    mov byte [bx], ah
    inc bx
    mov ah, 0xff
    sub dx, byte 8
    je short 0x2daa
    jmp short 0x2d87
    mov al, 0xff
    mov cx, 8
    sub cx, dx
    shl al, cl
    and ah, al
    not ah
    mov byte [bx], ah
    inc bx
    sub bx, strict word 0x257d
    mov word [bp - 0x0004], bx
    mov cx, word [bp - 0x0010]
    push cx
    push di
    mov si, 0x257d
    mov cx, word [bp - 0x0004]
    rep movsb
    pop di
    add di, word [bp - 0x0002]
    pop cx
    loop 0x2db4
    mov ax, 0xa000
    mov es, ax
    mov si, word [cs:0x1bd5]
    mov ah, 1
    call 0x2e35
    mov si, word [cs:0x1bd5]
    add si, strict word 0x120
    mov ah, 2
    call 0x2e35
    mov si, word [cs:0x1bd5]
    add si, strict word 0x240
    mov ah, 4
    call 0x2e35
    mov si, word [cs:0x1bd5]
    add si, strict word 0x360
    mov ah, 8
    call 0x2e35
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 0xf
    out dx, al
    mov ax, word [cs:0x1bd5]
    mov bx, word [cs:0x1bd7]
    mov word [cs:0x1bd7], ax
    mov word [cs:0x1bd5], bx
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov si, 0x1beb
    mov di, 0x1bd9
    mov cx, 9
    rep movsw
    mov sp, bp
    pop bp
    xor al, al
    mov byte [cs:0x2b08], al
    retf
loc_2e35:
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, ah
    out dx, al
    mov bx, 0x24fd
    mov di, word [cs:0x1be5]
    mov cx, word [cs:0x1be3]
    push cx
    push si
    push bx
    push di
    mov cx, word [cs:0x1be1]
    mov ah, byte [bx]
    inc bx
    mov al, 9
    dec al
    je short 0x2e55
    shl ah, 1
    jae short 0x2e67
    mov dl, byte [si]
    mov byte [es:di], dl
    inc di
    inc si
    loop 0x2e5a
    pop di
    add di, byte 0x50
    pop bx
    add bx, word [bp - 0x0002]
    pop si
    add si, word [cs:0x1be1]
    pop cx
    loop 0x2e4c
    ret
loc_2e7d:
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, ah
    out dx, al
    add si, word [cs:0x1bd7]
    mov di, word [cs:0x1bf7]
    mov bx, 0x2a02
    mov cx, word [cs:0x1bf5]
    mov dx, 0x3ce
    mov al, 8
    out dx, al
    inc dx
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word ptr cs:[0x1bf9], 0
    je short 0x2eaa
    jmp short 0x2eda
    push cx
    push di
    push si
    push bx
    mov cx, word [cs:0x1bf1]
    mov al, byte [bx]
    not al
    out dx, al
    mov al, byte [cs:si]
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc si
    inc bx
    inc di
    loop 0x2eb3
    pop bx
    add bx, word [cs:0x258f]
    pop si
    add si, word [cs:0x1bf3]
    pop di
    add di, byte 0x50
    pop cx
    loop 0x2eaa
    ret
    push cx
    push di
    push si
    push bx
    mov cx, word [cs:0x1bf9]
    mov al, byte [bx]
    not al
    mov ah, 0xff
    shr ax, cl
    out dx, al
    mov al, byte [si]
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc di
    inc si
    mov ax, word [cs:0x1bf1]
    dec ax
    je short 0x2f18
    push ax
    mov ah, byte [bx]
    mov al, byte [bx + 0x1]
    not ax
    shr ax, cl
    out dx, al
    mov al, byte [cs:si]
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc si
    inc bx
    inc di
    pop ax
    dec ax
    jne short 0x2efd
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word ptr cs:[0x1bfb], 0
    jne short 0x2f32
    mov ah, byte [bx]
    xor al, al
    not ax
    shr ax, cl
    out dx, al
    mov al, byte [cs:si]
    mov ah, byte [es:di]
    mov byte [es:di], al
    pop bx
    add bx, word [cs:0x258f]
    pop si
    add si, word [cs:0x1bf3]
    pop di
    add di, byte 0x50
    pop cx
    loop 0x2eda
    ret
loc_2f46:
    mov si, word [cs:0x1bf7]
    add di, word [cs:0x1bd7]
    mov cx, word [cs:0x1bf5]
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, ah
    out dx, al
    push cx
    push si
    mov cx, word [cs:0x1bf3]
    rep movsb
    pop si
    add si, byte 0x50
    pop cx
    loop 0x2f5f
    ret
loc_2f70:
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, ah
    out dx, al
    add si, strict word 0x2602
    mov cx, word [cs:0x1bf5]
    mov di, word [cs:0x1bf7]
    mov bx, 0x2a02
    mov dx, 0x3ce
    mov al, 8
    out dx, al
    inc dx
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word ptr cs:[0x1bf9], 0
    je short 0x2f9c
    jmp short 0x2fc9
    push cx
    push di
    push si
    push bx
    mov cx, word [cs:0x1bf1]
    mov al, byte [bx]
    out dx, al
    mov al, byte [si]
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc si
    inc bx
    inc di
    loop 0x2fa5
    pop bx
    add bx, word [cs:0x258f]
    pop si
    add si, word [cs:0x258f]
    pop di
    add di, byte 0x50
    pop cx
    loop 0x2f9c
    ret
    push cx
    push di
    push si
    push bx
    mov cx, word [cs:0x1bf9]
    mov al, byte [bx]
    shr al, cl
    out dx, al
    mov al, byte [si]
    shr al, cl
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc di
    mov ax, word [cs:0x1bf1]
    dec ax
    je short 0x3006
    push ax
    mov ah, byte [bx]
    mov al, byte [bx + 0x1]
    shr ax, cl
    out dx, al
    mov ah, byte [si]
    mov al, byte [si + 0x1]
    shr ax, cl
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc si
    inc bx
    inc di
    pop ax
    dec ax
    jne short 0x2fe9
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word ptr cs:[0x1bfb], 0
    jne short 0x3021
    mov ah, byte [bx]
    xor al, al
    shr ax, cl
    out dx, al
    mov ah, byte [si]
    xor al, al
    shr ax, cl
    mov ah, byte [es:di]
    mov byte [es:di], al
    pop bx
    add bx, word [cs:0x258f]
    pop si
    add si, word [cs:0x258f]
    pop di
    add di, byte 0x50
    pop cx
    loop 0x2fc9
    ret
    mov word [cs:0x2b02], 0
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 0x14
    jb short 0x3056
    jmp near 0x307d
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x229
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x306a
    jmp near 0x307d
    mov word [cs:bx], 0
    mov cx, word [cs:0x11cb]
    dec cx
    mov word [cs:0x11cb], cx
    call 0x4c93
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x229
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x30aa
    jmp near 0x3164
    mov ax, word [cs:0x11cb]
    inc ax
    mov word [cs:0x11cb], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:0x11cd]
    mov word [cs:bx], ax
    mov ax, word [cs:0x01e9]
    mov ds, ax
    xor dx, dx
    mov cx, 4
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    xor bx, bx
    mov ax, word [bx]
    mov dx, word [bx + 0x2]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov cl, 4
    add ax, strict word 0xf
    adc dx, byte 0
    shr ax, cl
    shl dl, cl
    or ah, dl
    add word [cs:0x11cd], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov ax, word [cs:0x11cd]
    cmp ax, 0x4180
    jb short 0x3112
    jmp near 0x31a6
    mov bx, word [bp - 0x0002]
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov ds, ax
    mov cx, word [bp - 0x0004]
    mov dx, word [bp - 0x0006]
    mov bx, cx
    or bx, dx
    je short 0x315c
    or dx, dx
    jne short 0x313a
    cmp cx, strict word 0x1000
    jae short 0x313a
    sub word [bp - 0x0004], cx
    jmp short 0x314a
    sub cx, strict word 0x1000
    sbb dx, byte 0
    mov word [bp - 0x0004], cx
    mov word [bp - 0x0006], dx
    mov cx, 0x1000
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov ax, ds
    add ax, 0x100
    mov ds, ax
    jmp short 0x311f
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, word [bp + 0xe]
    mov bx, 0xa
    div bx
    or byte [cs:0x3296], al
    or byte [cs:0x3297], dl
    mov ax, cs
    mov ds, ax
    mov dx, 0x3286
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    push ax
    imul sp, word [bp + di + 0x74], 0x7275
    and byte [gs:bp + di + 0x6c], dh
    outsw
    je short 0x31b6
    xor byte [bx + si], dh
    and byte [bp + 0x6f], ch
    je short 0x31bd
    db 0x66, 0x72, 0x65 ; jb 0x3205
    db 0x65, 0x64, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    db 0x24
    mov ax, cs
    mov ds, ax
    mov dx, 0x32b6
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec bp
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x3238
    and byte [di + 0x6e], dh
    popaw
    jbe short 0x3226
    imul bp, word [si + 0x61], 0x6c62
    and byte [gs:si + 0x6f], ch
    popaw
    imul bp, word [fs:bp + 0x67], 0x7020
    imul sp, word [bp + di + 0x74], 0x7275
    db 0x65, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    db 0x24
    jmp near 0x4b1

    db 0x05, 0x00, 0x08, 0x0a, 0x0a, 0xaa, 0x11, 0x2a, 0x13, 0x22, 0x16, 0x2f, 0x19, 0xff, 0x1a, 0x7f
    db 0x1c, 0x77

    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, 0x33b3
    add bx, word [bp + 0xc]
    mov ax, word [bp + 0xe]
    cmp ax, strict word 0xffff
    jne short 0x3217
    mov word [cs:bx], 0xff
    jmp short 0x3238
    mov si, 0x32e2
    mov ax, 8
    shl ax, 1
    add si, ax
    mov ax, word [bp + 0xe]
    mov cx, 8
    cmp byte [cs:si], al
    jbe short 0x3231
    sub si, byte 2
    loop 0x3227
    mov al, byte [cs:si + 0x1]
    mov byte [cs:bx], al
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    ret
    ret
    ret
    ret
    ret
loc_3245:
    push bx
    cmp al, 0xff
    jne short 0x3253
    xor cx, cx
    xor ax, ax
    xor dx, dx
    pop bx
    ret
loc_3252:
    push bx
    push ax
    cs xlatb
    mov ah, al
    and al, 1
    mov dl, al
    mov al, ah
    and al, 2
    shr al, 1
    mov dh, al
    mov al, ah
    and al, 4
    shr al, 1
    shr al, 1
    mov bl, al
    mov al, ah
    and al, 8
    mov cl, 3
    shr al, cl
    mov bh, al
    mov al, ah
    and al, 0x10
    mov cl, 3
    shr al, cl
    or dl, al
    mov al, ah
    and al, 0x20
    mov cl, 4
    shr al, cl
    or dh, al
    mov al, ah
    and al, 0x40
    mov cl, 5
    shr al, cl
    or bl, al
    mov al, ah
    and al, 0x80
    mov cl, 6
    shr al, cl
    or bh, al
    pop ax
    mov cl, ah
    mov ch, 3
    shl ch, cl
    shl dl, cl
    shl dh, cl
    shl bl, cl
    shl bh, cl
    mov ax, bx
    pop bx
    ret

    db 0x00, 0x11, 0x19, 0x19, 0x18, 0x18, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x00
    db 0x11, 0x19, 0x14, 0x14
    db 'DDDDLL'
    db 0xcc, 0xcc, 0x04, 0x04, 0x0c, 0x0c, 0x08, 0x08, 0x00, 0x00, 0x14, 0x45, 0x45, 0x44, 0x4d, 0xdd
    db 0xdd, 0x04, 0x45, 0x45, 0x5d, 0x5c, 0x16, 0x66, 0x66, 0x6e, 0x6e, 0xee, 0x06, 0x0e, 0x0e, 0x08
    db 0x08, 0x5c, 0x9d, 0x8d, 0x8d, 0xce, 0x59, 0x56, 0x5e, 0x6d, 0xde, 0xce, 0xce, 0x08, 0x08, 0x00
    db 0x00, 0x7f, 0xff, 0x07, 0x0f, 0x0f, 0x15, 0x15, 0x15
    db 'UUUY]F'
    db 0x05, 0xce, 0xce, 0x08, 0x08, 0x27, 0xaf, 0x19, 0x19, 0x19, 0x19, 0x18, 0x18, 0x18, 0x18, 0x18
    db 0x01, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00, 0x01
    db 0x09, 0x09, 0x09, 0xad, 0x08, 0x08, 0x08, 0x17, 0x17, 0x1f
    db "''''//"
    db 0xaf, 0x2d, 0x02, 0x0f, 0xad, 0x08, 0x08, 0x1c, 0x1c, 0x48, 0x48, 0x14, 0x14
    db '4"""*'
    db 0x02, 0x0a, 0x0a, 0x08, 0x08, 0x8d, 0x04, 0x04, 0x0d, 0x34, 0x3c, 0xbc, 0x13, 0x33, 0x33, 0x3b
    db 0xbb, 0xbb, 0x03, 0x0b, 0x08
    db 'UUUYYY]]'
    db 0x12, 0x12, 0x1a, 0x1a, 0x28, 0x28, 0x28, 0x02, 0x5d, 0x5d, 0x9d, 0x9d, 0x9d, 0x8d, 0x8d, 0x8d
    db 0x0d, 0x0d, 0x0d, 0x0d, 0x08, 0x08, 0x08, 0x00, 0x1d, 0x5d, 0x5d, 0x9d, 0x9d, 0x05, 0x8d, 0x15
    db 0x14, 0x14, 0x14, 0x1d, 0x1d, 0x1d, 0x1c, 0x1c, 0x09, 0x09, 0x08, 0x59, 0x1d, 0x9d, 0x8d, 0x9d
    db 0x48, 0x8d, 0x8d, 0x8d, 0x0d, 0x0d, 0x08, 0x00, 0x1c, 0x48, 0x48, 0x04, 0x04, 0x0c, 0x12, 0x23
    db 0x23, 0x2b, 0xab, 0xab, 0x02, 0x0b, 0x08, 0x2d

    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp word [bp + 0xc], byte 0
    je short 0x33fa
    cmp word [bp + 0xc], byte 1
    je short 0x3408
    cmp word [bp + 0xc], byte 3
    je short 0x33e2
    mov ax, 0x4180
    sub ax, word [cs:0x11cd]
    mov bx, 0x10
    mul bx
    jmp short 0x3416
    mov ah, 0x36
    mov dx, word [bp + 0xe]
    int 0x21
    cmp ax, strict word 0xffff
    jne short 0x33f4
    xor ax, ax
    xor dx, dx
    jmp short 0x3416
    mul cx
    mul bx
    jmp short 0x3416
    mov ah, 0x48
    mov bx, 0xffff
    int 0x21
    mov ax, 0x10
    mul bx
    jmp short 0x3416
    mov ax, word [cs:0x01ff]
    sub ax, word [cs:0x0391]
    mov bx, 0x10
    mul bx
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0228], 1
    je short 0x3437
    jmp near 0x34b8
    mov byte [cs:0x0226], 1
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    mov ax, 3
    int 0x33
    and cx, strict word 0xfffe
    mov word [bp - 0x0006], cx
    mov word [bp - 0x0008], dx
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0002]
    jne short 0x346c
    cmp dx, word [bp - 0x0004]
    jne short 0x346c
    jmp short 0x34b8
    cmp cx, word [bp - 0x0002]
    je short 0x347d
    js short 0x3479
    sub word [bp - 0x0006], byte 2
    jmp short 0x347d
    add word [bp - 0x0006], byte 2
    mov cx, word [bp - 0x0006]
    cmp dx, word [bp - 0x0004]
    je short 0x3491
    js short 0x348d
    sub word [bp - 0x0008], byte 1
    jmp short 0x3491
    add word [bp - 0x0008], byte 1
    mov dx, word [bp - 0x0008]
    mov ax, cs
    push ax
    mov ax, 0
    call 0x2a4f
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    mov ax, 4
    int 0x33
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0x345a
    push ax
    db 0x2e, 0xff, 0x1e, 0xfb, 0x01 ; lcall cs:[0x1fb]
    pop ax
    jmp short 0x345a
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0228], 1
    je short 0x34d9
    jmp near 0x3568
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    mov cx, word [cs:0x1bd9]
    shl cx, 1
    mov dx, word [cs:0x1bdb]
    mov word [bp - 0x0006], cx
    mov word [bp - 0x0008], dx
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0002]
    jne short 0x350b
    cmp dx, word [bp - 0x0004]
    jne short 0x350b
    jmp short 0x3557
    cmp cx, word [bp - 0x0002]
    je short 0x351c
    js short 0x3518
    sub word [bp - 0x0006], byte 2
    jmp short 0x351c
    add word [bp - 0x0006], byte 2
    mov cx, word [bp - 0x0006]
    cmp dx, word [bp - 0x0004]
    je short 0x3530
    js short 0x352c
    sub word [bp - 0x0008], byte 1
    jmp short 0x3530
    add word [bp - 0x0008], byte 1
    mov dx, word [bp - 0x0008]
    mov ax, cs
    push ax
    mov ax, 0
    call 0x2a4f
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    mov ax, 4
    int 0x33
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0x34f9
    push ax
    db 0x2e, 0xff, 0x1e, 0xfb, 0x01 ; lcall cs:[0x1fb]
    pop ax
    jmp short 0x34f9
    mov cx, word [bp - 0x0002]
    mov dx, word [bp - 0x0004]
    mov ax, 4
    int 0x33
    mov byte [cs:0x0226], 0
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    neg ax
    cmp ax, strict word 5
    jb short 0x358b
    jmp near 0x35b2
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x251
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x359f
    jmp near 0x35b2
    mov word [cs:bx], 0
    mov cx, word [cs:0x11cb]
    dec cx
    mov word [cs:0x11cb], cx
    call 0x4c93
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    lds si, word [cs:0x01f7]
    mov di, word [bp + 0xc]
    mov cx, 0x300
    rep movsb
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret

    times 65 db 0

    push bp
    mov bp, sp
    sub sp, byte 0x40
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x14]
    sub ax, word [bp + 0x12]
    jb short 0x369d
    mov ax, word [bp + 0x18]
    sub ax, word [bp + 0x16]
    jb short 0x369d
    mov ax, word [bp + 0x10]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xe]
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x229
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov word [bp - 0x0008], ax
    mov ds, ax
    xor bx, bx
    mov ax, word [bx]
    mov word [bp - 0x0012], ax
    mov si, word [bp + 0x1c]
    mov bx, word [bp - 0x0008]
    mov ds, bx
    xor ah, ah
    mov al, byte [ss:si]
    or al, al
    je short 0x369d
    call 0x39e3
    xor ah, ah
    mov al, byte [bx + 0x2]
    mov word [bp - 0x0002], ax
    mov cx, ax
    mov al, byte [bx + 0x3]
    mov word [bp - 0x0004], ax
    or ax, cx
    jne short 0x36a0
    jmp near 0x39db
    mov word [bp - 0x003a], bx
    mov ax, es
    mov word [bp - 0x0038], ax
    mov ax, cs
    mov es, ax
    lea di, word [0x36dd]
    xor ax, ax
    mov cx, 0x14
    rep stosw
    lea di, word [0x3705]
    mov cx, 0x19
    rep stosb
    mov bx, word [bp + 0x20]
    or bx, bx
    jne short 0x36ca
    jmp near 0x374d
    cmp bx, byte 0x64
    jae short 0x369d
    mov ax, word [bp - 0x0002]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short 0x36e8
    inc ax
    or ax, ax
    je short 0x370e
    xor dx, dx
    mov bx, ax
    mov word [bp - 0x0034], ax
    mov ax, cx
    div bx
    mov di, 0x36dd
    mov bx, word [bp - 0x0034]
    shr bx, 1
    mov word [bp - 0x003c], bx
    mov si, ax
    dec si
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0032], cx
    call 0x3a51
    mov ax, word [bp - 0x0004]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short 0x3727
    inc ax
    or ax, ax
    je short 0x374d
    xor dx, dx
    mov bx, ax
    mov word [bp - 0x0034], ax
    mov ax, cx
    div bx
    mov di, 0x3705
    mov bx, word [bp - 0x0034]
    shr bx, 1
    mov word [bp - 0x003c], bx
    mov si, ax
    dec si
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0032], cx
    call 0x3a51
    mov bx, word [bp - 0x003a]
    mov ax, word [bp - 0x0038]
    mov es, ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    jge short 0x375f
    xor ax, ax
    mov word [bp - 0x0028], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0002]
    mov cl, 3
    shl bx, cl
    mov cx, bx
    dec bx
    mov word [bp - 0x001e], bx
    add ax, bx
    inc ax
    sub ax, word [bp + 0x14]
    jge short 0x377c
    xor ax, ax
    mov word [bp - 0x002a], ax
    add ax, word [bp - 0x0028]
    sub cx, ax
    ja short 0x3789
    jmp near 0x39db
    mov word [bp - 0x0026], cx
    mov ax, word [bp + 0x16]
    sub ax, word [bp + 0x10]
    jge short 0x3796
    xor ax, ax
    mov word [bp - 0x0024], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    mov cx, bx
    dec bx
    add ax, bx
    sub ax, word [bp + 0x18]
    jge short 0x37af
    xor ax, ax
    mov word [bp - 0x002c], ax
    add ax, word [bp - 0x0024]
    sub cx, ax
    ja short 0x37bc
    jmp near 0x39db
    mov ax, word [bp + 0x18]
    inc ax
    mov cx, 0x140
    mul cx
    mov word [bp - 0x0022], ax
    mov ax, word [bp + 0x16]
    mov cx, 0x140
    mul cx
    mov word [bp - 0x002e], ax
    mov ax, word [bp + 0x1a]
    and al, 1
    je short 0x37dd
    jmp near 0x3883
    mov bx, word [bp - 0x001e]
    inc bx
    mov word [bp - 0x003e], bx
    mov bx, 0x36dd
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x0028]
    or cx, cx
    je short 0x3812
    mov al, byte [cs:bx]
    and al, dl
    jne short 0x3804
    or byte [cs:bx], dl
    jmp short 0x3808
    inc word [bp - 0x0030]
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x3810
    inc bx
    loop 0x37f8
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x0028]
    mov bx, word [bp - 0x003e]
    cmp bx, ax
    ja short 0x3828
    jmp near 0x39db
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x0030], ax
    sub bx, word [bp - 0x0026]
    jbe short 0x3880
    mov word [bp - 0x0034], bx
    mov cx, word [bp - 0x0026]
    mov bx, word [bp - 0x0032]
    mov al, byte [cs:bx]
    and al, dl
    je short 0x3850
    inc word [bp - 0x0030]
    mov ax, word [bp - 0x0030]
    cmp ax, word [bp - 0x0034]
    je short 0x385a
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x3858
    inc bx
    loop 0x383d
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x0040]
    add ax, word [bp - 0x0028]
    add ax, word [bp - 0x0026]
    mov cx, word [bp - 0x003e]
    sub cx, ax
    jbe short 0x3880
    mov bx, word [bp - 0x0032]
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short 0x387e
    inc bx
    loop 0x3873
    jmp near 0x3926
    mov bx, word [bp - 0x001e]
    inc bx
    mov word [bp - 0x003e], bx
    mov bx, 0x36dd
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x002a]
    or cx, cx
    je short 0x38b8
    mov al, byte [cs:bx]
    and al, dl
    jne short 0x38aa
    or byte [cs:bx], dl
    jmp short 0x38ae
    inc word [bp - 0x0030]
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x38b6
    inc bx
    loop 0x389e
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x002a]
    mov bx, word [bp - 0x003e]
    cmp bx, ax
    ja short 0x38ce
    jmp near 0x39db
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x0030], ax
    sub bx, word [bp - 0x0026]
    jbe short 0x3926
    mov word [bp - 0x0034], bx
    mov cx, word [bp - 0x0026]
    mov bx, word [bp - 0x0032]
    mov al, byte [cs:bx]
    and al, dl
    je short 0x38f6
    inc word [bp - 0x0030]
    mov ax, word [bp - 0x0030]
    cmp ax, word [bp - 0x0034]
    je short 0x3900
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x38fe
    inc bx
    loop 0x38e3
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x0040]
    add ax, word [bp - 0x002a]
    add ax, word [bp - 0x0026]
    mov cx, word [bp - 0x003e]
    sub cx, ax
    jbe short 0x3926
    mov bx, word [bp - 0x0032]
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short 0x3924
    inc bx
    loop 0x3919
    mov ax, word [bp + 0x1a]
    and al, 2
    jne short 0x3974
    mov bx, 0x3705
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x0024]
    or cx, cx
    je short 0x395b
    mov al, byte [cs:bx]
    and al, dl
    jne short 0x394d
    or byte [cs:bx], dl
    jmp short 0x3951
    inc word [bp - 0x0030]
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x3959
    inc bx
    loop 0x3941
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x0024]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    ja short 0x3972
    jmp near 0x39db
    jmp short 0x39b3
    mov bx, 0x3705
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x002c]
    or cx, cx
    je short 0x39a2
    mov al, byte [cs:bx]
    and al, dl
    jne short 0x3994
    or byte [cs:bx], dl
    jmp short 0x3998
    inc word [bp - 0x0030]
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x39a0
    inc bx
    loop 0x3988
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x002c]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    jbe short 0x39db
    mov ax, word [bp + 0x20]
    mov bl, 0xc
    div bl
    xor ah, ah
    mov word [bp - 0x0030], ax
    mov si, word [bp + 0x1c]
    mov bx, word [bp - 0x0008]
    mov ds, bx
    xor ah, ah
    mov al, byte [ss:si]
    or al, al
    je short 0x39db
    call 0x39e3
    call 0x3a8b
    inc word [bp + 0x1c]
    jmp short 0x39bf
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_39e3:
    dec ax
    cmp ax, word [bp - 0x0012]
    jb short 0x3a3a
    mov bl, 0xa
    div bl
    or byte [cs:0x3b21], al
    or byte [cs:0x3b22], dl
    mov ax, word [bp + 0xc]
    mov bl, 0xa
    div bl
    or byte [cs:0x3b34], al
    or byte [cs:0x3b35], dl
    mov bx, cs
    mov ds, bx
    mov dx, 0x3b18
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc si
    jb short 0x3a7f
    insw
    and byte [gs:bx + si], dh
    xor byte [bx + si], ah
    je short 0x3a95
    outsw
    and byte [bp + si + 0x69], ah
    and byte [ecx + 0x6e], ch
    and byte [bp + di + 0x6c], dh
    outsw
    je short 0x3a54
    xor byte [bx + si], dh
    add byte [cs:bp + si], cl
    db 0x24
    mov cl, 2
    shl al, cl
    mov bx, 2
    add bx, ax
    mov ax, word [bx]
    mov dx, word [bx + 0x2]
    mov bx, ds
    add bx, dx
    mov ds, bx
    mov bx, ax
    ret
loc_3a51:
    jmp short 0x3a56
    add si, word [bp - 0x0030]
    add word [bp - 0x003c], dx
    mov bx, word [bp - 0x003c]
    cmp bx, word [bp - 0x0034]
    jb short 0x3a68
    sub bx, word [bp - 0x0034]
    mov word [bp - 0x003c], bx
    inc si
    cmp si, word [bp - 0x0032]
    jb short 0x3a6e
    ret
    test si, 0x8000
    jne short 0x3a6d
    mov cl, 3
    mov ax, si
    shr ax, cl
    mov bx, ax
    mov ax, si
    and al, 7
    mov cl, al
    mov al, 0x80
    shr al, cl
    or byte [cs:bx + di], al
    jmp short 0x3a53
loc_3a8b:
    push es
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, 0x3705
    mov word [bp - 0x0036], ax
    xor ax, ax
    mov word [bp - 0x003c], ax
    mov word [bp - 0x003e], ax
    mov ax, word [bp + 0x1a]
    cmp al, 2
    jne short 0x3aaa
    jmp near 0x3d4a
    cmp al, 3
    jne short 0x3ab1
    jmp near 0x3e8a
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x000e], ax
    mov si, word [bx]
    add si, bx
    mov word [bp - 0x000a], 1
    lea ax, word [bx + 0x4]
    mov word [bp - 0x000c], ax
    mov cx, word [bp - 0x0004]
    mov byte [bp - 0x003a], 0x80
    mov ax, word [bp + 0x1a]
    cmp al, 1
    jne short 0x3ad7
    jmp near 0x3c2e
    mov ax, word [bp - 0x0028]
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x0024]
    mov bx, 0x140
    mul bx
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x0022]
    mov di, word [bp - 0x000e]
    cmp di, ax
    jb short 0x3af5
    jmp near 0x3bea
    push cx
    call 0x3bf2
    mov ax, 0x36dd
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
    push cx
    call 0x3c12
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short 0x3b13
    jmp near 0x3bbd
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short 0x3b23
    add si, byte 0x40
    jmp near 0x3bbd
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
    cmp di, word [bp - 0x0022]
    jb short 0x3b35
    jmp near 0x3bb8
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short 0x3b43
    jmp near 0x3bb3
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short 0x3bab
    xor ah, ah
    mov al, byte [si]
    cmp al, 0xff
    je short 0x3b97
    cmp byte [bp + 0x1e], 2
    jne short 0x3b7c
    mov al, byte [es:di]
    mov bx, 0x40cd
    add bx, ax
    add al, byte [si]
    jb short 0x3b77
    cmp al, byte [cs:bx]
    jb short 0x3b94
    mov al, byte [cs:bx]
    jmp short 0x3b94
    cmp byte [bp - 0x0030], 0
    je short 0x3b94
    mov bx, 0x40cd
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short 0x3b91
    cmp al, byte [cs:bx]
    jb short 0x3b94
    mov al, byte [cs:bx]
    mov byte [es:di], al
    inc si
    inc di
    ror byte [bp - 0x0032], 1
    loop 0x3b4d
    pop di
    pop cx
    add di, strict word 0x140
    ror byte [bp - 0x0038], 1
    loop 0x3b2d
    jmp short 0x3bb8
    inc si
    ror byte [bp - 0x0032], 1
    loop 0x3b4d
    jmp short 0x3b9e
    add si, byte 8
    jmp short 0x3ba4
    pop si
    add si, byte 0x40
    pop di
    add di, byte 8
    sub di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short 0x3bcf
    inc word [bp - 0x000c]
    inc word [bp - 0x0034]
    pop cx
    loop 0x3bec
    pop cx
    add word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    sub word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop 0x3bef
    pop es
    ret
    jmp near 0x3b02
    jmp near 0x3ae8
loc_3bf2:
    mov al, 0x80
    mov dl, al
    xor ax, ax
    mov word [bp - 0x003e], ax
    mov bx, word [bp - 0x0036]
    mov cx, 8
    mov al, byte [cs:bx]
    and al, dl
    je short 0x3c0d
    add word [bp - 0x003e], strict word 0x140
    ror dl, 1
    loop 0x3c01
    ret
loc_3c12:
    xor ax, ax
    mov word [bp - 0x003c], ax
    mov dl, 0x80
    mov bx, word [bp - 0x0034]
    mov cx, 8
    mov al, byte [cs:bx]
    and al, dl
    je short 0x3c29
    inc word [bp - 0x003c]
    ror dl, 1
    loop 0x3c1f
    ret
    mov ax, word [bp - 0x002a]
    sub word [bp - 0x000e], ax
    mov ax, word [bp - 0x0024]
    mov bx, 0x140
    mul bx
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x0022]
    mov di, word [bp - 0x000e]
    add di, word [bp - 0x001e]
    cmp di, ax
    jb short 0x3c4f
    jmp near 0x3d42
    push cx
    call 0x3bf2
    mov ax, 0x36dd
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
    push cx
    call 0x3c12
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short 0x3c6d
    jmp near 0x3d15
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short 0x3c7d
    add si, byte 0x40
    jmp near 0x3d15
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
    cmp di, word [bp - 0x0022]
    jb short 0x3c8f
    jmp near 0x3d10
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short 0x3c9d
    jmp near 0x3d0b
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short 0x3d03
    mov al, byte [si]
    cmp al, 0xff
    je short 0x3cef
    cmp byte [bp + 0x1e], 2
    jne short 0x3cd4
    mov al, byte [es:di]
    mov bx, 0x40cd
    add bx, ax
    add al, byte [si]
    jb short 0x3ccf
    cmp al, byte [cs:bx]
    jb short 0x3cec
    mov al, byte [cs:bx]
    jmp short 0x3cec
    cmp byte [bp - 0x0030], 0
    je short 0x3cec
    mov bx, 0x40cd
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short 0x3ce9
    cmp al, byte [cs:bx]
    jb short 0x3cec
    mov al, byte [cs:bx]
    mov byte [es:di], al
    inc si
    dec di
    ror byte [bp - 0x0032], 1
    loop 0x3ca7
    pop di
    pop cx
    add di, strict word 0x140
    ror byte [bp - 0x0038], 1
    loop 0x3c87
    jmp short 0x3d10
    inc si
    ror byte [bp - 0x0032], 1
    loop 0x3ca7
    jmp short 0x3cf6
    add si, byte 8
    jmp short 0x3cfc
    pop si
    add si, byte 0x40
    pop di
    sub di, byte 8
    add di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short 0x3d27
    inc word [bp - 0x000c]
    inc word [bp - 0x0034]
    pop cx
    loop 0x3d44
    pop cx
    add word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    sub word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop 0x3d47
    pop es
    ret
    jmp near 0x3c5c
    jmp near 0x3c3f
    mov ax, word [bp - 0x0004]
    mov cx, 0xa00
    mul cx
    sub ax, 0x140
    add ax, word [bp - 0x0006]
    mov word [bp - 0x000e], ax
    mov si, word [bx]
    add si, bx
    mov word [bp - 0x000a], 1
    lea ax, word [bx + 0x4]
    mov word [bp - 0x000c], ax
    mov cx, word [bp - 0x0004]
    mov byte [bp - 0x003a], 0x80
    mov ax, word [bp - 0x0028]
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x002c]
    mov bx, 0x140
    mul bx
    sub word [bp - 0x000e], ax
    mov ax, word [bp - 0x002e]
    mov di, word [bp - 0x000e]
    cmp ax, di
    jbe short 0x3d8f
    jmp near 0x3e82
    push cx
    call 0x3bf2
    mov ax, 0x36dd
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
    push cx
    call 0x3c12
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short 0x3dad
    jmp near 0x3e55
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short 0x3dbd
    add si, byte 0x40
    jmp near 0x3e55
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
    cmp word [bp - 0x002e], di
    jbe short 0x3dcf
    jmp near 0x3e50
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short 0x3ddd
    jmp near 0x3e4b
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short 0x3e43
    mov al, byte [si]
    cmp al, 0xff
    je short 0x3e2f
    cmp byte [bp + 0x1e], 2
    jne short 0x3e14
    mov al, byte [es:di]
    mov bx, 0x40cd
    add bx, ax
    add al, byte [si]
    jb short 0x3e0f
    cmp al, byte [cs:bx]
    jb short 0x3e2c
    mov al, byte [cs:bx]
    jmp short 0x3e2c
    cmp byte [bp - 0x0030], 0
    je short 0x3e2c
    mov bx, 0x40cd
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short 0x3e29
    cmp al, byte [cs:bx]
    jb short 0x3e2c
    mov al, byte [cs:bx]
    mov byte [es:di], al
    inc si
    inc di
    ror byte [bp - 0x0032], 1
    loop 0x3de7
    pop di
    sub di, strict word 0x140
    pop cx
    ror byte [bp - 0x0038], 1
    loop 0x3dc7
    jmp short 0x3e50
    inc si
    ror byte [bp - 0x0032], 1
    loop 0x3de7
    jmp short 0x3e36
    add si, byte 8
    jmp short 0x3e3c
    pop si
    add si, byte 0x40
    pop di
    add di, byte 8
    sub di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short 0x3e67
    inc word [bp - 0x000c]
    inc word [bp - 0x0034]
    pop cx
    loop 0x3e84
    pop cx
    sub word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    add word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop 0x3e87
    pop es
    ret
    jmp near 0x3d9c
    jmp near 0x3d82
    mov ax, word [bp - 0x0004]
    mov cx, 0xa00
    mul cx
    sub ax, 0x140
    add ax, word [bp - 0x0006]
    mov word [bp - 0x000e], ax
    mov si, word [bx]
    add si, bx
    mov word [bp - 0x000a], 1
    lea ax, word [bx + 0x4]
    mov word [bp - 0x000c], ax
    mov cx, word [bp - 0x0004]
    mov byte [bp - 0x003a], 0x80
    mov ax, word [bp - 0x002a]
    sub word [bp - 0x000e], ax
    mov ax, word [bp - 0x002c]
    mov bx, 0x140
    mul bx
    sub word [bp - 0x000e], ax
    mov ax, word [bp - 0x002e]
    mov di, word [bp - 0x000e]
    add di, word [bp - 0x001e]
    cmp ax, di
    jb short 0x3ed2
    jmp near 0x3fc5
    push cx
    call 0x3bf2
    mov ax, 0x36dd
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
    push cx
    call 0x3c12
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short 0x3ef0
    jmp near 0x3f98
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short 0x3f00
    add si, byte 0x40
    jmp near 0x3f98
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
    cmp word [bp - 0x002e], di
    jbe short 0x3f12
    jmp near 0x3f93
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short 0x3f20
    jmp near 0x3f8e
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short 0x3f86
    mov al, byte [si]
    cmp al, 0xff
    je short 0x3f72
    cmp byte [bp + 0x1e], 2
    jne short 0x3f57
    mov al, byte [es:di]
    mov bx, 0x40cd
    add bx, ax
    add al, byte [si]
    jb short 0x3f52
    cmp al, byte [cs:bx]
    jb short 0x3f6f
    mov al, byte [cs:bx]
    jmp short 0x3f6f
    cmp byte [bp - 0x0030], 0
    je short 0x3f6f
    mov bx, 0x40cd
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short 0x3f6c
    cmp al, byte [cs:bx]
    jb short 0x3f6f
    mov al, byte [cs:bx]
    mov byte [es:di], al
    inc si
    dec di
    ror byte [bp - 0x0032], 1
    loop 0x3f2a
    pop di
    sub di, strict word 0x140
    pop cx
    ror byte [bp - 0x0038], 1
    loop 0x3f0a
    jmp short 0x3f93
    inc si
    ror byte [bp - 0x0032], 1
    loop 0x3f2a
    jmp short 0x3f79
    add si, byte 8
    jmp short 0x3f7f
    pop si
    add si, byte 0x40
    pop di
    sub di, byte 8
    add di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short 0x3faa
    inc word [bp - 0x000c]
    inc word [bp - 0x0034]
    pop cx
    loop 0x3fc7
    pop cx
    sub word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    add word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop 0x3fca
    pop es
    ret
    jmp near 0x3edf
    jmp near 0x3ec2

    db 0x00, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f
    db 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f
    db '####++++++++////:::::::::::?????JJJJJJJJJJJOOOOO]]]]]]]]]]]]]]__oooooooooooooooowwwwwwww'
    db 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f
    db 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x93, 0x93, 0x93, 0x93, 0x96, 0x96, 0x96, 0x9f
    db 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0xa3, 0xa3, 0xa3, 0xa3, 0xa6, 0xa6, 0xa6, 0xaf
    db 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7
    db 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf
    db 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xdf
    db 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xe2, 0xe2, 0xe2, 0xe6, 0xe6, 0xe6, 0xe6, 0xef
    db 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xfe, 0xfe
    db 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xff

    mov ax, cs
    mov ds, ax
    mov dx, 0x41dd
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bp
    jb short 0x4155
    outsw
    jb short 0x4106
    outsw
    arpl word [bp + di + 0x75], sp
    jb short 0x415e
    db 0x65, 0x64, 0x20, 0x77, 0x72 ; and byte ptr fs:[bx + 0x72], dh
    imul si, word [si + 0x69], 0x676e
    and byte [si + 0x6f], dh
    and byte [si + 0x69], ah
    jae short 0x4169
    and byte [bx + di + 0x6e], ch
    and byte [bp + di + 0x41], al
    inc bx
    dec ax
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    sub byte [bx + di], ch
    add byte [cs:bp + si], cl
    db 0x24
    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    cmp word [bp + 0x14], byte 3
    jne short 0x419b
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    lea bx, word [bp - 0x000a]
    mov dx, bx
    mov ax, ss
    mov ds, ax
    mov cx, 0xa
    mov bx, word [bp + 0x16]
    mov ah, 0x40
    int 0x21
    jae short 0x4167
    jmp near 0x40cd
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov cx, word [bp - 0x0004]
    push cx
    mov dx, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    mov bx, word [bp + 0x16]
    mov ah, 0x40
    int 0x21
    jae short 0x4188
    jmp near 0x40cd
    cmp ax, word [bp - 0x0006]
    je short 0x4190
    jmp near 0x40cd
    pop cx
    loop 0x4170
    xor ax, ax
    mov dx, word [bp + 0x14]
    jmp near 0x4398
    cmp word [bp + 0x14], byte 2
    je short 0x41a4
    jmp near 0x4270
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 0x0002], ax
    add ax, word [cs:0x11cd]
    cmp ax, 0x4180
    jbe short 0x41da
    jmp near 0x43d1
    mov bx, word [cs:0x11cd]
    mov word [bp - 0x000e], bx
    mov word [cs:0x11cd], ax
    mov bx, 0x25b
    mov cx, 0x10
    xor dx, dx
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x41fe
    inc dx
    add bx, byte 2
    loop 0x41ee
    jmp near 0x440e
    mov word [bp - 0x000c], dx
    mov ax, word [cs:0x11cb]
    inc ax
    mov word [cs:0x11cb], ax
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [bp - 0x000e]
    mov word [cs:bx], ax
    add ax, word [cs:0x01e1]
    mov es, ax
    mov ax, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    xor di, di
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 0x0004]
    stosw
    mov ax, word [bp - 0x0006]
    stosw
    mov ax, word [bp - 0x0008]
    stosw
    mov ax, word [bp - 0x000a]
    stosw
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short 0x4255
    mov ax, word [bp - 0x000c]
    mov dx, word [bp + 0x14]
    jmp near 0x4398
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 0x0002], ax
    add ax, word [cs:0x0391]
    cmp ax, word [cs:0x01ff]
    jbe short 0x42a8
    jmp near 0x4369
    mov bx, word [cs:0x0391]
    mov word [bp - 0x000e], bx
    mov word [cs:0x0391], ax
    mov bx, 0x29b
    mov cx, 0x14
    xor dx, dx
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x42cc
    inc dx
    add bx, byte 2
    loop 0x42bc
    jmp near 0x43a0
    mov word [bp - 0x000c], dx
    mov ax, word [cs:0x038f]
    inc ax
    mov word [cs:0x038f], ax
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov ax, word [bp - 0x000e]
    mov word [cs:bx], ax
    mov ax, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov ax, word [cs:0x0203]
    mov es, ax
    mov ax, word [bp - 0x000e]
    mov di, ax
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x4540], ax
    call 0x4442
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 0x0004]
    stosw
    mov ax, word [bp - 0x0006]
    stosw
    mov ax, word [bp - 0x0008]
    stosw
    mov ax, word [bp - 0x000a]
    stosw
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    test di, 0xc000
    je short 0x435b
    inc word [cs:0x4540]
    mov ax, word [cs:0x4540]
    call 0x4442
    and di, strict word 0x3fff
    dec word [bp - 0x0004]
    jne short 0x4338
    mov ax, word [bp - 0x000c]
    mov dx, word [bp + 0x14]
    jmp near 0x4398
    mov ax, cs
    mov ds, ax
    mov dx, 0x4479
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bx + 0x75], ch
    je short 0x43aa
    outsw
    db 0x66, 0x20, 0x45, 0x4d ; and byte ptr [di + 0x4d], al
    push bx
    add byte [cs:bp + si], cl
    and al, 0x33
    db 0xd2, 0x8b, 0xc2
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x44b0
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bx + 0x75], ch
    je short 0x43e1
    outsw
    db 0x66, 0x20, 0x45, 0x4d ; and byte ptr [di + 0x4d], al
    push bx
    and byte [bp + di + 0x6c], dh
    outsw
    je short 0x4440
    add byte [cs:bp + si], cl
    db 0x24
    mov ax, cs
    mov ds, ax
    mov dx, 0x44e1
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bx + 0x75], ch
    je short 0x4412
    outsw
    db 0x66, 0x20, 0x4d, 0x41 ; and byte ptr [di + 0x41], cl
    pop dx
    inc bp
    das
    push ax
    dec cx
    inc bx
    and byte [di + 0x65], ch
    insw
    outsw
    jb short 0x447d
    add byte [cs:bp + si], cl
    and al, 0x33
    ror byte [bp + di - 0x143e], cl
    db 0x8a
    mov ax, cs
    mov ds, ax
    mov dx, 0x451e
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bx + 0x75], ch
    je short 0x444f
    outsw
    db 0x66, 0x20, 0x4d, 0x41 ; and byte ptr [di + 0x41], cl
    pop dx
    inc bp
    and byte [bp + di + 0x6c], dh
    outsw
    je short 0x44af
    add byte [cs:bp + si], cl
    and al, 0
    db 0x00
loc_4442:
    push ax
    mov ah, 0x44
    mov al, 0
    pop bx
    mov dx, word [cs:0x0201]
    int 0x67
    inc bx
    mov ah, 0x44
    mov al, 1
    int 0x67
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    cmp word [bp + 0xe], byte 3
    jne short 0x44a0
    lea bx, word [bp - 0x000a]
    mov dx, bx
    mov ax, ss
    mov ds, ax
    mov cx, 0xa
    mov bx, word [bp + 0x12]
    mov ah, 0x3f
    int 0x21
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov cx, word [bp - 0x0004]
    push cx
    mov dx, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    mov bx, word [bp + 0x12]
    mov ah, 0x3f
    int 0x21
    pop cx
    loop 0x4487
    jmp near 0x45b5
    cmp word [bp + 0xe], byte 2
    je short 0x44a9
    jmp near 0x4516
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x25b
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov ds, ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    xor si, si
    lodsw
    mov word [bp - 0x0002], ax
    lodsw
    lodsw
    mov word [bp - 0x0004], ax
    lodsw
    mov word [bp - 0x0006], ax
    lodsw
    lodsw
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short 0x44e1
    cmp word [bp + 0x10], byte 0
    je short 0x4513
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x25b
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    dec word [cs:0x11cb]
    call 0x4c93
    jmp near 0x45b5
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x29b
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov ax, word [cs:bx]
    mov word [bp - 0x0002], ax
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x4540], ax
    call 0x4442
    mov si, word [bp - 0x0002]
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, word [cs:0x0203]
    mov ds, ax
    lodsw
    mov word [bp - 0x0002], ax
    lodsw
    lodsw
    mov word [bp - 0x0004], ax
    lodsw
    mov word [bp - 0x0006], ax
    lodsw
    lodsw
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    test si, 0xc000
    je short 0x4587
    inc word [cs:0x4540]
    mov ax, word [cs:0x4540]
    call 0x4442
    and si, strict word 0x3fff
    dec word [bp - 0x0004]
    jne short 0x4564
    cmp word [bp + 0x10], byte 0
    je short 0x45b5
    mov cx, word [cs:0x038f]
    dec cx
    mov word [cs:0x038f], cx
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x29b
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call 0x1355
    call 0x1392
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
loc_45bd:
    push ds
    push es
    push si
    push di
    mov dx, word [cs:0x01e9]
    mov ds, dx
    xor dx, dx
    mov cx, 0x1000
    mov bx, word [bp - 0x0002]
    mov ah, 0x3f
    int 0x21
    or ax, ax
    je short 0x461f
    mov cx, ax
    push ax
    mov bx, word [bp - 0x0004]
    xor dx, dx
    mov ah, 0x40
    int 0x21
    jb short 0x45eb
    pop cx
    cmp cx, ax
    je short 0x45c8
    mov ax, cs
    mov ds, ax
    mov dx, 0x46fb
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bp
    jb short 0x4673
    outsw
    jb short 0x4624
    outsw
    arpl word [bp + di + 0x75], sp
    jb short 0x467c
    db 0x65, 0x64, 0x20, 0x77, 0x72 ; and byte ptr fs:[bx + 0x72], dh
    imul si, word [si + 0x69], 0x676e
    and byte [si + 0x6f], dh
    and byte [si + 0x69], ah
    jae short 0x4687
    add byte [bp + si], cl
    db 0x24
    pop di
    pop si
    pop es
    pop ds
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x14
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    test ah, 0x80
    je short 0x465a
    dec word [cs:0x038f]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2c3
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call 0x1355
    call 0x1392
    jmp near 0x47a0
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0x4670
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    call 0x45bd
    jmp near 0x47a0
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2c3
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x4684
    jmp near 0x47a8
    inc word [cs:0x038f]
    mov ax, word [cs:0x038f]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:0x0391]
    mov word [cs:bx], ax
    mov ax, word [cs:0x01e9]
    mov ds, ax
    xor dx, dx
    mov cx, 0x1000
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov bx, 0
    mov ax, word [bx]
    mov cx, 6
    mul cx
    add ax, strict word 4
    mov bx, ax
    sub bx, byte 6
    mov cl, byte [bx + 0x5]
    mov al, byte [bx + 0x4]
    mul cl
    mov cl, 3
    shl ax, cl
    mov cx, word [bx + 0x2]
    add ax, cx
    push ax
    xor dx, dx
    mov ax, word [bx]
    mov cx, 0x10
    mul cx
    pop cx
    add cx, byte 0x0f
    add ax, cx
    adc dx, byte 0
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov cx, 0x10
    div cx
    mov di, word [cs:0x0391]
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add word [cs:0x0391], ax
    mov ax, word [cs:0x0391]
    cmp ax, word [cs:0x01ff]
    jbe short 0x4716
    jmp near 0x47f0
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x4540], ax
    call 0x4442
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    xor si, si
    mov ax, word [cs:0x01e9]
    mov ds, ax
    mov ax, word [cs:0x0203]
    mov es, ax
    mov cx, 0x1000
    rep movsb
    mov ax, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    sub ax, 0x1000
    sbb dx, byte 0
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov dx, di
    test dx, 0xc000
    je short 0x4768
    sub di, strict word 0x4000
    inc word [cs:0x4540]
    mov ax, word [cs:0x4540]
    call 0x4442
    mov ax, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    or ax, dx
    je short 0x47a0
    mov cx, 0x1000
    mov ax, word [bp - 0x0006]
    or dx, dx
    jne short 0x4782
    cmp ax, cx
    jae short 0x4782
    mov cx, ax
    sub ax, cx
    sbb dx, byte 0
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov dx, 0
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    push cx
    int 0x21
    pop cx
    mov si, 0
    rep movsb
    jmp short 0x4750
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x48b8
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    dec bp
    inc cx
    pop dx
    inc bp
    sub byte [bx + di], ch
    and byte [cs:bx + si], ah
    push dx
    db 0x65, 0x71, 0x75 ; jno 0x4842
    db 0x65, 0x73, 0x74 ; jae 0x4844
    db 0x65, 0x64, 0x20, 0x73, 0x6c ; and byte ptr fs:[bp + di + 0x6c], dh
    outsw
    je short 0x47f8
    popaw
    insb
    jb short 0x4841
    popaw
    db 0x64, 0x79, 0x20 ; jns 0x4800
    imul bp, word [bp + 0x20], 0x7375
    db 0x65, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    and al, 0x33
    ror byte [bp + di - 0x143e], cl
    db 0xb0
    mov ax, cs
    mov ds, ax
    mov dx, 0x4900
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    dec bp
    inc cx
    pop dx
    inc bp
    sub byte [bx + di], ch
    and byte [cs:bx + si], ah
    dec cx
    outsb
    jae short 0x488a
    db 0x66, 0x66, 0x69, 0x63, 0x69, 0x65, 0x6e, 0x74, 0x20 ; imul esp, dword ptr [bp + di + 0x69], 0x20746e65
    inc bp
    dec bp
    push bx
    add byte [cs:bp + si], cl
    db 0x24
    push bp
    mov bp, sp
    sub sp, byte 0x14
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    test ah, 0x80
    je short 0x485b
    dec word [cs:0x038f]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call 0x1355
    call 0x1392
    jmp near 0x492b
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0x4871
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    call 0x45bd
    jmp near 0x492b
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x4885
    jmp near 0x4933
    inc word [cs:0x038f]
    mov ax, word [cs:0x038f]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:0x0391]
    mov word [cs:bx], ax
    mov ax, 0xfa0
    mov word [cs:bx + 0x2], ax
    mov di, word [cs:0x0391]
    add word [cs:0x0391], ax
    mov ax, word [cs:0x0391]
    cmp ax, word [cs:0x01ff]
    jbe short 0x48c4
    jmp near 0x497d
    mov ax, 0xfa00
    mov word [bp - 0x0006], ax
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x4540], ax
    call 0x4442
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    mov dx, di
    test dx, 0xc000
    je short 0x48f7
    sub di, strict word 0x4000
    inc word [cs:0x4540]
    mov ax, word [cs:0x4540]
    call 0x4442
    mov ax, word [bp - 0x0006]
    or ax, ax
    je short 0x492b
    mov cx, 0x1000
    cmp ax, cx
    jae short 0x4907
    mov cx, ax
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, word [cs:0x0203]
    mov es, ax
    mov ax, word [cs:0x01e9]
    mov ds, ax
    mov dx, 0
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    push cx
    int 0x21
    pop cx
    mov si, 0
    rep movsb
    jmp short 0x48df
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x4a43
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    push bx
    inc bx
    push dx
    inc bp
    inc bp
    dec si
    sub byte [bx + di], ch
    and byte [cs:bx + si], ah
    push dx
    db 0x65, 0x71, 0x75 ; jno 0x49cf
    db 0x65, 0x73, 0x74 ; jae 0x49d1
    db 0x65, 0x64, 0x20, 0x73, 0x6c ; and byte ptr fs:[bp + di + 0x6c], dh
    outsw
    je short 0x4985
    popaw
    insb
    jb short 0x49ce
    popaw
    db 0x64, 0x79, 0x20 ; jns 0x498d
    imul bp, word [bp + 0x20], 0x7375
    db 0x65, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    and al, 0x33
    ror byte [bp + di - 0x143e], cl
    scasb
    mov ax, cs
    mov ds, ax
    mov dx, 0x4a8d
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    push bx
    inc bx
    push dx
    inc bp
    inc bp
    dec si
    sub byte [bx + di], ch
    and byte [cs:bx + si], ah
    dec cx
    outsb
    jae short 0x4a19
    db 0x66, 0x66, 0x69, 0x63, 0x69, 0x65, 0x6e, 0x74, 0x20 ; imul esp, dword ptr [bp + di + 0x69], 0x20746e65
    inc bp
    dec bp
    push bx
    add byte [cs:bp + si], cl
    and al, 0
    times 83 db 0
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0xe]
    shl bx, 1
    shl bx, 1
    add bx, strict word 0x4ab4
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x4a2e
    jmp near 0x4ada
    mov ax, word [cs:0x11cb]
    inc ax
    mov word [cs:0x11cb], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x000a], bx
    mov ax, word [cs:0x11cd]
    mov word [cs:bx], ax
    mov ah, 0x42
    mov al, 2
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21
    mov ax, word [cs:0x01e9]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 2
    mov ah, 0x3f
    int 0x21
    xor bx, bx
    mov ax, word [bx]
    or ax, ax
    je short 0x4a8e
    jmp near 0x4b52
    mov bx, word [bp - 0x0002]
    mov ax, word [bp - 0x0004]
    sub ax, strict word 2
    mov word [cs:bx + 0x2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0x000a]
    mov word [cs:bx + 0x2], ax
    add ax, word [cs:0x11cd]
    cmp ax, 0x4180
    jae short 0x4b16
    mov word [cs:0x11cd], ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, word [bp - 0x0004]
    sub cx, byte 2
    mov ah, 0x3f
    int 0x21
    xor ax, ax
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x4bea
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec cx
    outsb
    and byte [si + 0x4f], cl
    inc cx
    inc sp
    pop di
    push bx
    dec di
    push bp
    dec si
    inc sp
    sub byte [bx + di], ch
    and byte [0x2e2e], ch
    and byte [bp + di + 0x6c], dh
    outsw
    je short 0x4b26
    popaw
    insb
    jb short 0x4b6f
    popaw
    db 0x64, 0x79, 0x20 ; jns 0x4b2e
    jne short 0x4b83
    db 0x65, 0x64, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    db 0x24
    mov ax, cs
    mov ds, ax
    mov dx, 0x4c26
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec cx
    outsb
    and byte [si + 0x4f], cl
    inc cx
    inc sp
    pop di
    push bx
    dec di
    push bp
    dec si
    inc sp
    sub byte [bx + di], ch
    and byte [0x2e2e], ch
    and byte [bp + 0x6f], ch
    je short 0x4b61
    db 0x65, 0x6e ; outsb dx, byte ptr gs:[si]
    outsw
    jne short 0x4bad
    push 0x6d20
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x4bc7
    add byte [cs:bp + si], cl
    db 0x24
    mov cx, ax
    mov ax, word [cs:0x01e9]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21
    mov si, 0x400
    mov di, 0
    lodsw
    mov word [bp - 0x0004], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0x000a]
    mov word [cs:bx + 0x2], ax
    add ax, word [cs:0x11cd]
    cmp ax, 0x4180
    jb short 0x4b9c
    jmp near 0x4b16
    mov word [cs:0x11cd], ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov es, ax
    call 0x4bb2
    xor ax, ax
    jmp near 0x4ad2
loc_4bb2:
    mov word [bp - 0x0002], 8
    lodsb
    cmp word [bp - 0x0004], byte 0
    je short 0x4bca
    call 0x4bcb
    mov byte [es:di], bl
    inc di
    dec word [bp - 0x0004]
    jmp short 0x4bb8
    ret
loc_4bcb:
    mov cx, word [bp - 0x0002]
    xor bx, bx
    shl al, 1
    jb short 0x4c0c
    test word [bx], 0x8000
    jne short 0x4bde
    mov bx, word [bx]
    jmp short 0x4c23
    mov bx, word [bx]
    neg bx
    shl bx, 1
    shl bx, 1
    loop 0x4bd0
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short 0x4bd0
    push ax
    push di
    push bx
    push cx
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21
    mov si, 0x400
    pop cx
    pop bx
    pop di
    pop ax
    jmp short 0x4bd0
    test word [bx + 0x2], 0x8000
    jne short 0x4c18
    mov bx, word [bx + 0x2]
    jmp short 0x4c23
    mov bx, word [bx + 0x2]
    neg bx
    shl bx, 1
    shl bx, 1
    jmp short 0x4be6
    dec cx
    jne short 0x4c48
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short 0x4c48
    push ax
    push di
    push bx
    push cx
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21
    mov si, 0x400
    pop cx
    pop bx
    pop di
    pop ax
    mov word [bp - 0x0002], cx
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 0x14
    jb short 0x4c65
    jmp near 0x4c8b
    shl ax, 1
    shl ax, 1
    mov bx, 0x4ab4
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x4c78
    jmp near 0x4c8b
    mov word [cs:bx], 0
    mov cx, word [cs:0x11cb]
    dec cx
    mov word [cs:0x11cb], cx
    call 0x4c93
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_4c93:
    call 0x4ca9
    call 0x4cbe
    call 0x4ce8
    call 0x4cd3
    call 0x4cfd
    call 0x4d13
    call 0x4d55
    ret
loc_4ca9:
    push ax
    mov bx, 0x10e7
    mov cx, 0xa
    cmp ax, word [cs:bx]
    jae short 0x4cb8
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x4cb0
    pop ax
    ret
loc_4cbe:
    push ax
    mov bx, 0x229
    mov cx, 0x14
    cmp ax, word [cs:bx]
    jae short 0x4ccd
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x4cc5
    pop ax
    ret
loc_4cd3:
    push ax
    mov bx, 0x25b
    mov cx, 0x10
    cmp ax, word [cs:bx]
    jae short 0x4ce2
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x4cda
    pop ax
    ret
loc_4ce8:
    push ax
    mov bx, 0x251
    mov cx, 5
    cmp ax, word [cs:bx]
    jae short 0x4cf7
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x4cef
    pop ax
    ret
loc_4cfd:
    push ax
    mov bx, 0x4ab4
    mov cx, 0x14
    cmp ax, word [cs:bx]
    jae short 0x4d0c
    dec word [cs:bx]
    add bx, byte 4
    loop 0x4d04
    pop ax
    ret
loc_4d13:
    push ax
    mov bx, 0x4f8b
    mov cx, 5
    cmp ax, word [cs:bx]
    jae short 0x4d37
    dec word [cs:bx]
    push ds
    push ax
    push bx
    push cx
    push dx
    mov ax, cs
    mov ds, ax
    mov dx, 0x4e3e
    mov ah, 9
    int 0x21
    pop dx
    pop cx
    pop bx
    pop ax
    pop ds
    add bx, byte 4
    loop 0x4d1a
    pop ax
    ret
    or ax, 0x70a
    push bx
    arpl word [bx + 0x72], bp
    and byte [gs:bp + di + 0x6c], dh
    outsw
    je short 0x4d6c
    insw
    outsw
    jbe short 0x4db5
    db 0x64, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    db 0x24
loc_4d55:
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x0004], bx
    mov ax, word [cs:bx + 0x2]
    sub word [cs:0x11cd], ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp - 0x0004]
    mov dx, word [cs:bx]
    add dx, word [cs:0x01e1]
    mov es, dx
    mov dx, word [cs:bx + 0x4]
    add dx, word [cs:0x01e1]
    mov ds, dx
    mov cx, word [cs:bx + 0x6]
    or cx, cx
    je short 0x4dcc
    push cx
    mov cx, 0x10
    xor si, si
    xor di, di
    rep movsb
    mov cx, ds
    inc cx
    mov ds, cx
    mov cx, es
    inc cx
    mov es, cx
    pop cx
    loop 0x4d8e
    mov bx, word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    mov ax, word [cs:bx + 0x4]
    sub ax, cx
    mov word [cs:bx], ax
    add ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x4], ax
    mov ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x2], ax
    add bx, byte 4
    mov word [bp - 0x0004], bx
    jmp short 0x4d6e
    mov bx, word [bp - 0x0004]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 0x2], ax
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 0x14
    jb short 0x4df2
    jmp near 0x4e40
    shl ax, 1
    shl ax, 1
    mov bx, 0x4ab4
    add bx, ax
    mov ax, word [cs:bx + 0x2]
    mov word [bp - 0x0002], ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x4e0c
    jmp near 0x4e40
    dec ax
    mov word [bp - 0x0004], ax
    push word [bp + 0x12]
    push word [bp + 0x10]
    push word [bp + 0xe]
    mov ax, word [bp - 0x0002]
    push ax
    xor ax, ax
    push ax
    mov bx, 0x10fb
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    push ax
    xor ax, ax
    push ax
    db 0x2e, 0xff, 0x1e, 0x1a, 0x02 ; lcall cs:[0x21a]
    add sp, byte 0x0e
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    push word [bp + 0xc]
    db 0x2e, 0xff, 0x1e, 0x22, 0x02 ; lcall cs:[0x222]
    pop cx
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    xor ax, ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    db 0x2e, 0xff, 0x1e, 0x1a, 0x02 ; lcall cs:[0x21a]
    add sp, byte 0x0e
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret

    times 34 db 0

    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0x12]
    shl bx, 1
    shl bx, 1
    add bx, strict word 0x4f8b
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x4ed3
    jmp near 0x4fc4
    mov bx, word [bp + 0x12]
    shl bx, 1
    add bx, strict word 0x4fa3
    mov ax, word [bp + 0x10]
    mov word [cs:bx], ax
    mov ax, word [cs:0x11cb]
    inc ax
    mov word [cs:0x11cb], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x000a], bx
    mov ax, word [cs:0x11cd]
    mov word [cs:bx], ax
    xor ax, ax
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000e], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov bx, word [bp + 0xe]
    cmp bx, byte 0xff
    je short 0x4f47
    mov ah, 0x42
    mov al, 2
    xor cx, cx
    mov dx, cx
    int 0x21
    mov word [bp - 0x000c], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 0x000e], ax
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0xe]
    xor cx, cx
    mov dx, cx
    int 0x21
    mov ah, 0x42
    mov al, 2
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0x000a]
    add ax, word [bp - 0x000e]
    mov word [cs:bx + 0x2], ax
    add ax, word [cs:0x11cd]
    cmp ax, 0x4180
    jb short 0x4f88
    jmp near 0x5000
    mov word [cs:0x11cd], ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov ds, ax
    mov bx, word [bp + 0xe]
    cmp bx, byte 0xff
    je short 0x4fa7
    xor dx, dx
    mov cx, word [bp - 0x000c]
    mov ah, 0x3f
    int 0x21
    mov bx, word [bp - 0x0002]
    mov bx, word [cs:bx + 0x2]
    mov dx, bx
    mov bx, word [bp + 0xc]
    mov cx, word [bp - 0x0004]
    mov ah, 0x3f
    int 0x21
    xor ax, ax
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x50d4
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec cx
    outsb
    and byte [si + 0x4f], cl
    inc cx
    inc sp
    pop di
    push bx
    inc bx
    dec di
    push dx
    inc bp
    sub byte [bx + di], ch
    and byte [0x2e2e], ch
    and byte [bp + di + 0x6c], dh
    outsw
    je short 0x5010
    popaw
    insb
    jb short 0x5059
    popaw
    db 0x64, 0x79, 0x20 ; jns 0x5018
    jne short 0x506d
    db 0x65, 0x64, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    db 0x24
    mov ax, cs
    mov ds, ax
    mov dx, 0x5110
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec cx
    outsb
    and byte [si + 0x4f], cl
    inc cx
    inc sp
    pop di
    push bx
    inc bx
    dec di
    push dx
    inc bp
    sub byte [bx + di], ch
    and byte [0x2e2e], ch
    and byte [bp + 0x6f], ch
    je short 0x504b
    db 0x65, 0x6e ; outsb dx, byte ptr gs:[si]
    outsw
    jne short 0x5097
    push 0x6d20
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x50b1
    add byte [cs:bp + si], cl
    db 0x24
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0xc]
    shl bx, 1
    add bx, strict word 0x4fa3
    mov ax, word [cs:bx]
    mov word [bp - 0x0008], ax
    mov bx, word [bp + 0xc]
    shl bx, 1
    shl bx, 1
    add bx, strict word 0x4f8b
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx + 0x2]
    mov word [bp - 0x0006], ax
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x50c9
    dec ax
    shl ax, 1
    shl ax, 1
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x0004], bx
    push word [bp - 0x0008]
    xor ax, ax
    cmp word [bp - 0x0006], byte 0
    je short 0x5095
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    push ax
    xor ax, ax
    push ax
    db 0x2e, 0xff, 0x1e, 0x0e, 0x02 ; lcall cs:[0x20e]
    add sp, byte 6
    push word [bp + 0x10]
    push word [bp + 0xe]
    db 0x2e, 0xff, 0x1e, 0x16, 0x02 ; lcall cs:[0x216]
    add sp, byte 4
    push word [bp + 0x12]
    mov bx, word [bp - 0x0004]
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    push ax
    push word [bp - 0x0006]
    db 0x2e, 0xff, 0x1e, 0x06, 0x02 ; lcall cs:[0x206]
    add sp, byte 6
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 5
    jb short 0x50ea
    jmp near 0x5110
    shl ax, 1
    shl ax, 1
    mov bx, 0x4f8b
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x50fd
    jmp near 0x5110
    mov word [cs:bx], 0
    mov cx, word [cs:0x11cb]
    dec cx
    mov word [cs:0x11cb], cx
    call 0x4c93
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    db 0x2e, 0xff, 0x1e, 0x1e, 0x02 ; lcall cs:[0x21e]
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    db 0x2e, 0xff, 0x1e, 0x12, 0x02 ; lcall cs:[0x212]
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    push word [bp + 0xe]
    push word [bp + 0xc]
    db 0x2e, 0xff, 0x1e, 0x16, 0x02 ; lcall cs:[0x216]
    add sp, byte 4
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret

    db 0x00

