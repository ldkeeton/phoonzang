; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0001 size=4 reg=bx disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=1 name=f_03
struc s_bx_0001
    .f_00: resb 1
    .f_01: resb 2
    .f_03: resb 1
endstruc

; @struct s_bx_0005 size=4 reg=bx disp=0x0005
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_0005
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_0009 size=3 reg=bx disp=0x0009
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_0009
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_0034 size=2 reg=bx disp=0x0034
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0034
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_0620 size=3 reg=bx disp=0x0620
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_0620
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_0884 size=6 reg=bx disp=0x0884
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
struc s_bx_0884
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 1
    .f_05: resb 1
endstruc

; @struct s_bx_5c00 size=30 reg=bx disp=0x5c00
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=4 name=f_04
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=2 name=f_0c
; @field offset=14 size=2 name=f_0e
; @field offset=16 size=2 name=f_10
; @field offset=18 size=2 name=f_12
; @field offset=20 size=4 name=f_14
; @field offset=24 size=2 name=f_18
; @field offset=26 size=2 name=f_1a
; @field offset=28 size=2 name=f_1c
struc s_bx_5c00
    .f_00: resb 2
    .f_02: resb 2
    .gap_4: resb 4
    .f_08: resb 2
    .f_0a: resb 2
    .f_0c: resb 2
    .gap_e: resb 2
    .f_10: resb 2
    .f_12: resb 2
    .gap_14: resb 4
    .f_18: resb 2
    .gap_1a: resb 2
    .f_1c: resb 2
endstruc

; @struct s_bx_5d5a size=19 reg=bx disp=0x5d5a
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=7 name=f_03
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=3 name=f_0b
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=3 name=f_0f
; @field offset=18 size=1 name=f_12
struc s_bx_5d5a
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .gap_3: resb 7
    .f_0a: resb 1
    .gap_b: resb 3
    .f_0e: resb 1
    .gap_f: resb 3
    .f_12: resb 1
endstruc

; @struct s_bx_5d76 size=7 reg=bx disp=0x5d76
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=4 name=f_02
; @field offset=6 size=1 name=f_06
struc s_bx_5d76
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 4
    .f_06: resb 1
endstruc

; @struct s_bx_5d9c size=6 reg=bx disp=0x5d9c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=4 name=f_01
; @field offset=5 size=1 name=f_05
struc s_bx_5d9c
    .f_00: resb 1
    .gap_1: resb 4
    .f_05: resb 1
endstruc

; @struct s_bx_5e2c size=7 reg=bx disp=0x5e2c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=2 name=f_04
; @field offset=6 size=1 name=f_06
struc s_bx_5e2c
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 1
    .f_03: resb 1
    .gap_4: resb 2
    .f_06: resb 1
endstruc

; @struct s_bx_84a6 size=2 reg=bx disp=0x84a6
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_84a6
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_9060 size=4 reg=bx disp=0x9060
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_9060
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_9252 size=10 reg=bx disp=0x9252
; @field offset=0 size=1 name=f_00
; @field offset=1 size=7 name=f_01
; @field offset=8 size=2 name=f_08
struc s_bx_9252
    .f_00: resb 1
    .gap_1: resb 7
    .f_08: resb 2
endstruc

; @struct s_bx_93ae size=4 reg=bx disp=0x93ae
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_93ae
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_93d6 size=4 reg=bx disp=0x93d6
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_93d6
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_95b6 size=4 reg=bx disp=0x95b6
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_95b6
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_95e6 size=4 reg=bx disp=0x95e6
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_95e6
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_960e size=4 reg=bx disp=0x960e
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_960e
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_9636 size=4 reg=bx disp=0x9636
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_9636
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_ff16 size=10 reg=bx disp=0xff16
; @field offset=0 size=2 name=f_00
; @field offset=2 size=6 name=f_02
; @field offset=8 size=2 name=f_08
struc s_bx_ff16
    .f_00: resb 2
    .gap_2: resb 6
    .f_08: resb 2
endstruc

; @struct s_bx_ff3e size=2 reg=bx disp=0xff3e
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_ff3e
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_ffa2 size=8 reg=bx disp=0xffa2
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=2 name=f_06
struc s_bx_ffa2
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 2
endstruc

; @struct s_bx_ffbe size=13 reg=bx disp=0xffbe
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=4 name=f_04
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=1 name=f_0c
struc s_bx_ffbe
    .f_00: resb 2
    .f_02: resb 2
    .gap_4: resb 4
    .f_08: resb 2
    .f_0a: resb 2
    .f_0c: resb 1
endstruc

; @struct s_bx_ffcb size=12 reg=bx disp=0xffcb
; @field offset=0 size=1 name=f_00
; @field offset=1 size=8 name=f_01
; @field offset=9 size=2 name=f_09
; @field offset=11 size=1 name=f_0b
struc s_bx_ffcb
    .f_00: resb 1
    .gap_1: resb 8
    .f_09: resb 2
    .f_0b: resb 1
endstruc

; @struct s_bx_ffe1 size=9 reg=bx disp=0xffe1
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=2 name=f_03
; @field offset=5 size=2 name=f_05
; @field offset=7 size=2 name=f_07
struc s_bx_ffe1
    .f_00: resb 1
    .gap_1: resb 2
    .f_03: resb 2
    .f_05: resb 2
    .f_07: resb 2
endstruc

org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0x0d, 0x9a, 0x98, 0x90 ; header (8 bytes)

    jl short 0xa
    cmpsb
    add ax, 0xea0c
    mov ax, 0
    call 0xf40b
    mov word [0x9114], 0
    mov word [0x9116], 0xffff
    mov word [0x9118], 0
    mov word [0x911a], 0xffff
    cmp word [0x830a], byte 0x0f
    jne short 0x3e
    mov word [0x830a], 0x16
    call api_idx_0050
    jmp short 0x8c
    cmp word [0x830a], byte 0x15
    jne short 0x50
    mov word [0x830a], 0x16
    call 0x809e
    jmp short 0x8c
    cmp word [0x830a], byte 0x1a
    jne short 0x62
    mov word [0x830a], 5
    call 0x811f
    jmp short 0x8c
    cmp word [0x830a], byte 0x1c
    jne short 0x74
    mov word [0x830a], 5
    call 0x81b6
    jmp short 0x8c
    cmp word [0x830a], byte 0x1d
    jne short 0x86
    mov word [0x830a], 5
    call 0x81db
    jmp short 0x8c
    mov word [0x830a], 0x16
    mov ax, 0
    ret
api_idx_0010:
    mov ax, 0xfff0
    call 0xf40b
    cmp word [bp + 0x4], byte 0
    jl short 0xa2
    cmp word [bp + 0x4], byte 6
    jle short 0xa6
    mov ax, 0xffff
    ret
    mov word [bp - 0x0002], 7
    mov ax, word [bp + 0x4]
    inc ax
    mov word [bp - 0x0004], ax
    mov al, byte [bp - 0x0004]
    mov byte [bp - 0x0010], al
    mov byte [bp - 0x000f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0010]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
loc_00e4:
    mov al, byte [bx + 0x6a9b]
    sub ah, ah
    add ax, strict word 0x20
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    push ax
    push word [bp - 0x0002]
    call 0xefd1
    add sp, byte 0x16
    mov ax, word [bp + 0x4]
    ret
loc_0111:
    mov ax, 0xfee8
    call 0xf40b
    mov word [bp - 0x00f6], 7
    mov ax, 6
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + 0x889]
    sub ah, ah
    jmp short 0x154
    mov word [bp - 0x0010], 1
    mov word [bp - 0x00fa], 1
    jmp short 0x163
    mov word [bp - 0x0010], 1
    mov word [bp - 0x00fa], 1
    jmp short 0x163
    mov word [bp - 0x0010], 0
    mov word [bp - 0x00fa], 4
    jmp short 0x163
    cmp ax, strict word 0
    je short 0x12d
    cmp ax, strict word 1
    je short 0x13a
    cmp ax, strict word 2
    je short 0x147
    mov word [bp - 0x00fc], 6
    mov ax, 0xc
    cwd
    idiv word [bp - 0x00fa]
    mov word [bp - 0x00fe], ax
    mov ax, 6
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + 0x888]
    sub ah, ah
    mov word [bp - 0x00f8], ax
    mov word [bp - 0x000c], 1
    mov ax, word [bp - 0x00fc]
    dec ax
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
    mov word [bp - 0x000a], 0xffff
    mov al, byte [bx + 0x889]
    sub ah, ah
    jmp short 0x1b6
    inc word [bp + 0x6]
    inc word [bp - 0x00f8]
    jmp short 0x1c0
    add word [bp - 0x00f8], byte 3
    jmp short 0x1c0
    cmp ax, strict word 1
    je short 0x1a6
    cmp ax, strict word 2
    je short 0x1af
    cmp word [bp + 0x4], byte 0xff
    je short 0x1d5
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short 0x1ec
    mov word [bp - 0x000e], 0
    mov ax, 0
    cmp word [bp - 0x0010], byte 0
    je short 0x1e6
    mov ax, 1
    mov word [bp - 0x0104], ax
    jmp short 0x201
    mov word [bp - 0x000e], 1
    mov ax, 1
    cmp word [bp - 0x0010], byte 0
    je short 0x1fd
    mov ax, 0
    mov word [bp - 0x0104], ax
    mov ax, 6
    imul word [bp + 0x6]
    mov bx, ax
    mov ax, word [bx + 0x884]
    mov word [bp - 0x00ea], ax
    mov ax, word [bx + 0x886]
    mov word [bp - 0x00ec], ax
    mov word [bp - 0x00e8], 0
    mov word [bp - 0x00e6], 0
    mov word [bp - 0x00e4], 0
    mov word [bp - 0x00e2], 0
    mov word [bp - 0x00e0], 0
    mov word [bp - 0x00de], 0
    mov word [bp - 0x00dc], 0
    mov word [bp - 0x00da], 3
    mov word [bp - 0x00d8], 3
    mov word [bp - 0x00d6], 3
    mov word [bp - 0x00d4], 3
    mov word [bp - 0x00d2], 3
    mov word [bp - 0x00d0], 3
    mov word [bp - 0x00ce], 2
    mov word [bp - 0x00cc], 2
    mov word [bp - 0x00ca], 2
    mov word [bp - 0x00c8], 2
    mov word [bp - 0x00c6], 1
    mov word [bp - 0x00c4], 1
    mov word [bp - 0x00c2], 3
    mov word [bp - 0x00c0], 2
    mov word [bp - 0x00be], 2
    mov word [bp - 0x00bc], 2
    mov word [bp - 0x00ba], 3
    mov word [bp - 0x00b8], 2
    mov word [bp - 0x00b6], 2
    mov word [bp - 0x00b4], 2
    mov word [bp - 0x00b2], 4
    mov word [bp - 0x00b0], 3
    mov word [bp - 0x00ae], 3
    mov word [bp - 0x00ac], 3
    mov word [bp - 0x00aa], 1
    mov word [bp - 0x00a8], 1
    mov word [bp - 0x00a6], 1
    mov word [bp - 0x00a4], 1
    mov word [bp - 0x00a2], 3
    mov word [bp - 0x00a0], 3
    mov word [bp - 0x009e], 3
    mov word [bp - 0x009c], 3
    mov word [bp - 0x009a], 3
    mov word [bp - 0x0098], 5
    mov word [bp - 0x0096], 3
    mov word [bp - 0x0094], 5
    mov word [bp - 0x0092], 4
    mov word [bp - 0x0090], 3
    mov word [bp - 0x008e], 3
    mov word [bp - 0x008c], 4
    mov word [bp - 0x008a], 4
    mov word [bp - 0x0088], 3
    mov word [bp - 0x0086], 2
    mov word [bp - 0x0084], 6
    mov word [bp - 0x0082], 5
    mov word [bp - 0x0080], 4
    mov word [bp - 0x007e], 3
    mov word [bp - 0x007c], 2
    mov word [bp - 0x007a], 6
    mov word [bp - 0x0078], 5
    mov word [bp - 0x0076], 3
    mov word [bp - 0x0074], 3
loc_0374:
    mov word [bp - 0x0040], 0x57
    mov word [bp - 0x0028], 0xe8
    mov word [bp - 0x003e], 0x62
    mov word [bp - 0x0026], 0xdd
    mov word [bp - 0x003c], 0x6c
    mov word [bp - 0x0024], 0xd3
    mov word [bp - 0x003a], 0x75
    mov word [bp - 0x0022], 0xca
    mov word [bp - 0x0038], 0x7d
    mov word [bp - 0x0020], 0xc2
    mov word [bp - 0x0036], 0x84
    mov word [bp - 0x001e], 0xbb
    mov word [bp - 0x0034], 0x8a
    mov word [bp - 0x001c], 0xb5
    mov word [bp - 0x0032], 0x8f
    mov word [bp - 0x001a], 0xb0
    mov word [bp - 0x0030], 0x93
    mov word [bp - 0x0018], 0xac
    mov word [bp - 0x002e], 0x96
    mov word [bp - 0x0016], 0xa9
    mov word [bp - 0x002c], 0x98
    mov word [bp - 0x0014], 0xa7
    mov word [bp - 0x002a], 0x99
    mov word [bp - 0x0012], 0xa6
    mov word [bp - 0x0058], 0x49
    mov word [bp - 0x0056], 0x47
    mov word [bp - 0x0054], 0x46
    mov word [bp - 0x0052], 0x45
    mov word [bp - 0x0050], 0x44
    mov word [bp - 0x004e], 0x43
    mov word [bp - 0x004c], 0x42
    mov word [bp - 0x004a], 0x42
    mov word [bp - 0x0048], 0x42
    mov word [bp - 0x0046], 0x41
    mov word [bp - 0x0044], 0x41
    mov word [bp - 0x0042], 0x41
    mov word [bp - 0x0070], 0x64
    mov word [bp - 0x006e], 0x5e
    mov word [bp - 0x006c], 0x58
    mov word [bp - 0x006a], 0x52
    mov word [bp - 0x0068], 0x4c
    mov word [bp - 0x0066], 0x46
    mov word [bp - 0x0064], 0x40
    mov word [bp - 0x0062], 0x3a
    mov word [bp - 0x0060], 0x34
    mov word [bp - 0x005e], 0x2e
    mov word [bp - 0x005c], 0x28
    mov word [bp - 0x005a], 0x22
    mov ax, 0
    cmp word [bp - 0x000c], byte 0
    je short 0x47a
    mov ax, 5
    cmp byte [bx + 0x889], 2
    jne short 0x47a
    mov ax, 3
    mov word [bp - 0x0102], ax
    mov word [bp - 0x0100], ax
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
    mov word [bp - 0x0116], dx
    mov word [bp - 0x0118], ax
    mov ax, 0
    push ax
    call api_idx_0010
    pop cx
    mov word [0x9116], ax
    push word [0x911c]
    mov ax, 0xf8
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 5
    push ax
    call 0xb7e0
    pop cx
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0002], ax
    jmp near 0x658
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [bp - 0x0112], dx
    mov word [bp - 0x0114], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0070]
    imul word [bp - 0x00ea]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x00ee], ax
    cmp word [bp - 0x0104], byte 0
    je short 0x534
    mov cx, 0
    sub cx, ax
    mov ax, cx
    mov cx, word [bp - 0x00f8]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x00ea]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    sub ax, cx
    mov word [bp - 0x00ee], ax
    mov ax, word [bp - 0x00ec]
    imul word [bp - 0x0064]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x00f0], ax
    mov al, byte [bp - 0x00f8]
    mov byte [bp - 0x0110], al
    mov byte [bp - 0x010f], 0
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0116]
    push word [bp - 0x0118]
    call 0xe942
    add sp, byte 8
    cmp word [0x9116], byte 0
    jl short 0x58a
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short 0x57f
    inc word [0x9116]
    push word [0x9116]
    call api_idx_0010
    pop cx
    mov word [0x9116], ax
    mov ax, 0x18
    imul word [bp - 0x000e]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0040]
    add ax, word [bp - 0x00ee]
    mov word [bp - 0x00f2], ax
    mov bx, cx
    add bx, bp
    mov ax, word [bx - 0x0058]
    add ax, word [bp - 0x00f0]
    mov word [bp - 0x00f4], ax
    mov ax, word [bp - 0x0100]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov cx, word [bx - 0x0070]
    mov ax, 0x64
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0110]
    push ax
    push word [bp - 0x0104]
    mov ax, 0x8f
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, word [bp - 0x00f4]
    add ax, strict word 0x20
    push ax
    push word [bp - 0x00f2]
    push word [bp - 0x00f6]
    call 0xefd1
    add sp, byte 0x16
    push word [0x911c]
    mov ax, 0xf8
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x000a]
    add word [bp - 0x0100], ax
    mov ax, word [bp - 0x0004]
    inc ax
    cwd
    idiv word [bp - 0x00fe]
    mov ax, dx
    test ax, ax
    jne short 0x636
    mov ax, word [bp - 0x000a]
    add word [bp - 0x00f8], ax
    mov ax, word [bp - 0x0102]
    mov word [bp - 0x0100], ax
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0112]
    jne short 0x64b
    cmp ax, word [bp - 0x0114]
    jne short 0x64f
    jmp short 0x636
    mov ax, word [bp - 0x000a]
    add word [bp - 0x0002], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x00fc]
    jge short 0x664
    jmp near 0x4df
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0116]
    push word [bp - 0x0118]
    call 0xe942
    add sp, byte 8
    ret
api_idx_000e:
    mov ax, 0xfff2
    call 0xf40b
    cmp word [0x8f20], byte 0
    jg short 0x68b
    jmp near 0x73a
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
    jmp short 0x6e0
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short 0x6b9
    mov ax, 4
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short 0x6f4
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short 0x6db
    mov ax, 1
    mov word [bp - 0x0004], ax
    jmp short 0x6f4
    cmp ax, strict word 0
    je short 0x6a5
    cmp ax, strict word 1
    je short 0x6c7
    cmp ax, strict word 2
    je short 0x6a5
    cmp ax, strict word 3
    je short 0x6c7
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
api_idx_000a:
    mov ax, 0xfff6
    call 0xf40b
    mov byte [bp - 0x000a], 1
    mov byte [bp - 0x0009], 4
    mov byte [bp - 0x0008], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [bp - 0x000a]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx + 0x6eb5]
    sub ah, ah
    inc ax
    push ax
    shl bx, 1
    mov al, byte [bx + 0x6e6c]
    sub ah, ah
    inc ax
    push ax
    mov ax, 3
    push ax
    call 0xefd1
    add sp, byte 0x16
    mov byte [bp - 0x000a], 1
    mov ax, word [0x911e]
    inc ax
    inc ax
    mov byte [bp - 0x0009], al
    mov byte [bp - 0x0008], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [bp - 0x000a]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx + 0x7f1d]
    sub ah, ah
    inc ax
    push ax
    shl bx, 1
    mov al, byte [bx + 0x7ed4]
    sub ah, ah
    inc ax
    push ax
    mov ax, 0xf
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
loc_07de:
    mov ax, 0
    call 0xf40b
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
    cmp word [0x9114], byte 1
    jne short 0x80c
    call api_idx_000a
    jmp short 0x80f
    call api_idx_000e
    call 0xda22
    cmp word [0x911a], byte 0
    jl short 0x82d
    push word [0x9120]
    push word [0x9122]
    call 0x111
    add sp, byte 4
    mov word [0x911a], 0xffff
    cmp word [0x9116], byte 0
    jl short 0x83f
    push word [0x9116]
    call api_idx_0010
    pop cx
    mov word [0x9116], ax
    push word [0x911c]
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x9118], byte 0
    je short 0x86a
    mov ax, 5
    push ax
    call 0xb7e0
    pop cx
    mov word [0x9118], 0
    ret
loc_086b:
    mov ax, 0
    call 0xf40b
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [0x908a]
    sbb dx, word [0x908c]
    push ax
    push dx
    mov ax, word [0x9124]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short 0x89a
    jne short 0x89c
    cmp ax, cx
    jae short 0x89c
    jmp short 0x8e7
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
    mov ax, word [0x911e]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [0x911e], dx
    cmp word [0x9116], byte 0
    jl short 0x8ce
    inc word [0x9116]
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call 0x7de
    mov ax, 1
    ret
    mov ax, 0
    ret
api_idx_0004:
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
    jg short 0x924
    jne short 0x926
    cmp ax, word [bp - 0x0004]
    jb short 0x926
    jmp short 0x953
    call 0xbaef
    test ax, ax
    je short 0x92e
    ret
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    je short 0x947
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    cmp al, 0xd
    jne short 0x947
    ret
    call 0x86b
    test ax, ax
    jne short 0x951
    call 0x82a9
    jmp short 0x90d
    ret
api_idx_000a_2:
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
    cmp word [0x9126], byte 0
    je short 0x9fd
    mov ax, 0x92
    push ax
    mov ax, 0x9128
    push ax
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
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x17
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9128
    push ax
    call 0xe84e
    add sp, byte 4
    cmp word [bp + 0x4], byte 0
    je short 0xa19
    mov ax, 0xc6
    push ax
    mov ax, 0x127
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x19
    push ax
    call 0xe8da
    add sp, byte 8
    ret
loc_0a1a:
    mov ax, 0
    call 0xf40b
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
    cmp word [bp + 0x4], byte 0
    je short 0xa4f
    mov ax, word [0x905a]
    cmp byte [0x598c], 0
    je short 0xa48
    shl ax, 1
    push ax
    call api_idx_0004
    pop cx
    jmp short 0xa5b
    call 0xbaef
    test ax, ax
    jne short 0xa5b
    call 0x86b
    jmp short 0xa4f
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov word [0x9150], 0
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call 0xf40b
    cmp word [0x9150], byte 3
    jle short 0xa7f
    mov ax, 0
    push ax
    call 0xa1a
    pop cx
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short 0xa8c
    inc word [0x9150]
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
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    mov bx, word [bp + 0x4]
    mov si, ax
    mov al, byte [bx + si]
    sub ah, ah
    jmp short 0xadf
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov word [bp - 0x0002], 0x44
    jmp short 0xae9
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov ax, word [0x9152]
    mov word [bp - 0x0002], ax
    jmp short 0xae9
    cmp ax, strict word 0x24
    je short 0xabe
    cmp ax, strict word 0x5e
    je short 0xace
    mov ax, 0xc
    imul word [0x9150]
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
    mov word [0x9152], ax
    inc word [0x9150]
    ret
api_idx_0090:
    mov ax, 0xff70
    call 0xf40b
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    sub ah, ah
    push ax
    mov ax, 0x9098
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short 0xb4c
    jmp near 0xca3
    jmp near 0xc93
    inc word [bp + 0x4]
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
    jmp near 0xca0
    inc word [bp + 0x4]
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
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
    call api_idx_0004
    pop cx
    jmp near 0xca0
    inc word [bp + 0x4]
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
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
    jmp near 0xca0
    inc word [bp + 0x4]
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov word [0x9150], 0
    jmp near 0xca0
    inc word [bp + 0x4]
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
    mov ax, 0
    push ax
    call 0xa1a
    pop cx
    jmp near 0xca0
    inc word [bp + 0x4]
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
    jmp near 0xca0
    inc word [bp + 0x4]
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0x63
    jne short 0xc44
    mov word [bp - 0x0006], 0x20
    cmp word [bp - 0x0006], byte 0
    jle short 0xc80
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 5
    jl short 0xc5c
    cmp ax, strict word 8
    je short 0xc5c
    cmp ax, strict word 9
    jne short 0xc63
    push ax
    call 0xb7e0
    pop cx
    jmp short 0xc80
    push word [bp - 0x0006]
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
    inc word [bp + 0x4]
    jmp short 0xca0
    xchg si, ax
    pop bx
    movsb
    pop bx
    rcr byte [bp + di - 0x000c], 1
    pop bx
    or byte [si + 0x1e], bl
    pop sp
    je short 0xcef
    cmp ax, strict word 7
    jae short 0xca0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5ccc]
    jmp near 0xb2f
    cmp byte [0x9154], 0
    je short 0xcd8
    mov ax, 0x9154
    push ax
    lea ax, word [bp - 0x0086]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x90a0
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
    jmp short 0xce6
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
    jle short 0xd14
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
    push word [bp + 0x4]
    mov ax, 0x9154
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0xd23
    lea ax, word [bp - 0x0086]
    push ax
    mov ax, 0x9154
    push ax
    call 0xf364
    add sp, byte 4
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x20
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0xd79
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0
    mov ax, 0x5f
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short 0xd66
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short 0xd47
    push word [bp + 0x4]
    call api_idx_0090
    pop cx
    mov ax, word [bp - 0x0002]
    add word [bp + 0x4], ax
    add word [bp + 0x4], byte 1
    jmp short 0xd2a
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    je short 0xd86
    push bx
    call api_idx_0090
    pop cx
    ret
loc_0d87:
    mov ax, 0xfefa
    call 0xf40b
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov word [0x9152], 0x44
    mov word [0x9150], 0
    mov byte [0x9154], 0
    lea ax, word [bp - 0x0105]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    cmp word [0x5216], byte 0
    jne short 0xdc7
    lea ax, word [bp - 0x0105]
    push ax
    call api_idx_0004_3
    pop cx
    inc word [bp + 0x4]
    cmp word [0x5216], byte 0
    je short 0xda6
    cmp byte [0x9154], 0
    je short 0xddd
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
    push word [bp + 0x6]
    call 0xa1a
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
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
api_idx_0004_4:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    cmp word [bp + 0x4], byte 0
    jle short 0xe3c
    mov ax, 0x90a2
    push ax
    mov ax, 7
    imul word [bp + 0x4]
    add ax, 0x9b
    push ax
    mov ax, 0x127
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x19
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    cmp word [bp + 0x6], byte 4
    jge short 0xe65
    mov ax, 0x90a9
    push ax
    mov ax, 0xc4
    push ax
    mov ax, 0x127
    push ax
    mov ax, 7
    imul word [bp + 0x6]
    add ax, 0xa2
    push ax
    mov ax, 0x19
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [bp - 0x0004], byte 0
    je short 0xe80
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    call 0xc459
    add sp, byte 4
    cmp word [bp - 0x0002], byte 0
    je short 0xe93
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xc459
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x127
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x19
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    call api_idx_0004
    pop cx
    ret
loc_0eb2:
    mov ax, 0
    call 0xf40b
    push word [bp + 0x6]
    push word [bp + 0x6]
    call api_idx_0004_4
    add sp, byte 4
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
    jle short 0xf39
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call 0xb7e0
    pop cx
    push word [0x905a]
    call api_idx_0004
    pop cx
    cmp word [bp + 0x8], byte 0xff
    je short 0xf53
    push word [bp + 0x6]
    push word [bp + 0x6]
    call api_idx_0004_4
    add sp, byte 4
    ret
loc_0f54:
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short 0xf95
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
    jg short 0xf95
    add bx, word [bp + 0x6]
    inc byte [bx + 0x5d6c]
    ret
api_idx_0002:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 1
    push ax
    push ax
    call api_idx_0004_4
    add sp, byte 4
    mov bx, word [bp + 0x6]
    cmp byte [bx], 0
    je short 0xfb4
    mov ax, 1
    jmp short 0xfb7
    mov ax, 0
    mov bx, word [bp + 0x8]
    cmp byte [bx], 0
    je short 0xfc4
    mov cx, 1
    jmp short 0xfc7
    mov cx, 0
    add ax, cx
    mov bx, word [bp + 0xa]
    cmp byte [bx], 0
    je short 0xfd6
    mov cx, 1
    jmp short 0xfd9
    mov cx, 0
    add ax, cx
    mov word [bp - 0x0002], ax
    mov ax, 0xa3
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call 0xfa90
    pop cx
    push ax
    push word [bp + 0x6]
    call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    push word [bp + 0x8]
    call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    push word [bp + 0xa]
    call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0002]
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
    push word [bp + 0xc]
    call 0xe823
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
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov bx, word [bp + 0x6]
    cmp byte [bx], 0
    je short 0x1092
    mov ax, 0
    push ax
    push word [bp + 0xe]
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x6]
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov bx, word [bp + 0x8]
    cmp byte [bx], 0
    je short 0x10c2
    mov ax, 0
    push ax
    push word [bp + 0x10]
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x8]
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov bx, word [bp + 0xa]
    cmp byte [bx], 0
    je short 0x10e4
    mov ax, 0
    push ax
    push word [bp + 0x12]
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xa9
    push ax
    mov ax, 0x127
    push ax
    mov ax, 0xa3
    push ax
    mov ax, 0x19
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_005a:
    mov ax, 0xffa6
    call 0xf40b
    cmp word [bp + 0x8], byte 0
    je short 0x112b
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x8]
    mov bx, ax
    mov al, byte [bx + 0x5d9c]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jg short 0x112b
    jmp near 0x11bb
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2f]
    sub ah, ah
    cmp ax, word [bp + 0xa]
    jl short 0x1141
    jmp near 0x11bb
    mov al, byte [bp + 0xa]
    mov byte [bx + 0x5e2f], al
    cmp word [bp + 0xa], byte 3
    jl short 0x115a
    mov word [bx + 0x5c0c], 0
    mov word [bx + 0x5c10], 0
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, 0x41
    push ax
    mov ax, 1
    push ax
    mov ax, 0x90b1
    push ax
    mov ax, 0x90b0
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x4]
    call api_idx_0002
    add sp, byte 0x10
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short 0x11a6
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, strict word 8
    push ax
    call 0xb7e0
    pop cx
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    push word [0x905a]
    call api_idx_0004
    pop cx
    ret
api_idx_003e:
    mov ax, 0xffc2
    call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
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
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0
    je short 0x1201
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short 0x1205
    mov ax, 0
    ret
    lea ax, word [bp - 0x002a]
    push ax
    push word [bp - 0x0002]
    call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x0016]
    push ax
    mov ax, 0x146f
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, 0x1470
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c0c]
    cmp ax, word [bp - 0x0002]
    jge short 0x1242
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0002]
    sub word [bx + 0x5c0c], ax
    mov ax, 0x43
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x43
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    push word [bp + 0x4]
    call api_idx_0002
    add sp, byte 0x10
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c0c], byte 0
    jg short 0x12ab
    mov ax, 4
    push ax
    call api_idx_0004
    pop cx
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1490
    push ax
    push word [bp + 0x4]
    call api_idx_005a
    add sp, byte 8
    mov ax, 0
    ret
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    inc ax
    inc ax
    push ax
    call 0xb7e0
    pop cx
    push word [0x905a]
    call api_idx_0004
    pop cx
    mov ax, 1
    ret
api_idx_0056:
    mov ax, 0xffaa
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 2
    jb short 0x12e2
    ret
    push word [bp + 0x10]
    push word [bp + 0xe]
    push word [bp + 0xc]
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
    mov word [bp - 0x0006], ax
    cmp word [bp + 0x8], byte 0
    je short 0x1335
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x8]
    mov bx, ax
    mov al, byte [bx + 0x5d9c]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jg short 0x1335
    jmp near 0x13df
    cmp word [bp + 0x10], strict word 0xff
    jne short 0x134e
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov byte [bx + 0x5d5a], 0xff
    jmp short 0x1384
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    add ax, word [bp - 0x0006]
    cmp ax, 0xfa
    jle short 0x1377
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    mov cx, ax
    mov ax, 0xfa
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    add ax, word [bp - 0x0006]
    mov byte [bx + 0x5d5a], al
    cmp word [bp + 0xa], byte 5
    jne short 0x139b
    mov al, byte [bp + 0xc]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e32], al
    lea ax, word [bp - 0x0056]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, 0x41
    push ax
    mov ax, 1
    push ax
    mov ax, 0x90b3
    push ax
    mov ax, 0x90b2
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    push word [bp + 0x4]
    call api_idx_0002
    add sp, byte 0x10
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    push word [0x905a]
    call api_idx_0004
    pop cx
    ret
    mov ax, 0xffb0
    call 0xf40b
    cmp word [bp + 0x6], byte 0
    jl short 0x1400
    mov word [0x911a], 1
    mov ax, word [bp + 0x4]
    mov word [0x9122], ax
    mov ax, word [bp + 0x6]
    mov word [0x9120], ax
    jmp short 0x140c
    mov word [0x9116], 0
    mov word [0x9118], 1
    lea ax, word [bp - 0x0050]
    push ax
    mov ax, 0x146b
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [0x91d4]
    lea ax, word [bp - 0x0050]
    push ax
    call 0xeb2
    add sp, byte 8
    mov ax, 0xb8
    push ax
    mov ax, 0
    push ax
    push word [0x91d4]
    mov ax, 0x91d6
    push ax
    call 0xeb2
    add sp, byte 8
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0
    push word [0x69c8]
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    inc word [bp - 0x0004]
    cmp word [bp - 0x0004], byte 0x18
    jge short 0x1475
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x4]
    cmp word [bx + si], byte 0
    jne short 0x1452
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x4]
    cmp word [bx + si], byte 0
    je short 0x1489
    mov ax, 0xffff
    jmp short 0x148c
    mov ax, word [bp - 0x0002]
    ret
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [bp + 0xc]
    inc ax
    push ax
    call 0xb7a9
    pop cx
    add ax, word [bp + 0xa]
    mov word [bp - 0x0004], ax
    cmp ax, word [0x69c8]
    jle short 0x14ae
    mov ax, word [0x69c8]
    mov word [bp - 0x0004], ax
    mov ax, word [0x69c8]
    sub ax, word [bp - 0x0004]
    inc ax
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    push word [bp - 0x0004]
    call 0xb7a9
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov word [bp - 0x0006], cx
    mov ax, word [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov word [bx], ax
    mov ax, word [bp - 0x0004]
    mov bx, word [bp + 0x6]
    mov word [bx], ax
    mov ax, word [bp - 0x0006]
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    ret
api_idx_00b8:
    mov ax, 0xff48
    call 0xf40b
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [bp + 0x4], byte 0
    jne short 0x1520
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x146c
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [0x91d4]
    lea ax, word [bp - 0x0068]
    push ax
    call 0xeb2
    add sp, byte 8
    ret
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0002], 0
    jmp short 0x1559
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short 0x1556
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0018], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x1539
    mov ax, word [bp + 0x4]
    jmp near 0x1fc7

    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x6d, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x03
    db 0x00, 0x50, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8
    db 0x03, 0xff, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x50, 0x8b, 0x46, 0xfe
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x75, 0x3e, 0xb8, 0x64, 0x00, 0x50
    db 0xe8, 0xfe, 0xa1, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x9d
    db 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4
    db 0x75, 0x18, 0xb8, 0x07, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x40
    db 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xdd, 0xfb, 0x83, 0xc4, 0x06, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8
    db 0x03, 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7f, 0xa5, 0xe9, 0xe1, 0x09, 0xb8, 0x06, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xe2, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x02, 0x00, 0x50, 0x50, 0x8d, 0x46
    db 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x78, 0xfe, 0x83, 0xc4, 0x0a
    db 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xe9, 0x75, 0x00, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x75, 0x63, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x72, 0xa1, 0x59
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0xa3, 0x5d, 0x2a, 0xe4, 0x8b
    db 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4, 0x75, 0x3d, 0xb8, 0x06
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x58, 0xfb, 0x83, 0xc4, 0x06, 0x85
    db 0xc0, 0x74, 0x28, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xb9, 0x02
    db 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x87
    db 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x3c, 0xfc, 0x83, 0xc4, 0x0e, 0xff, 0x46, 0xfe, 0x8b, 0x46
    db 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7f, 0x80, 0xe9, 0x30, 0x09, 0xb8, 0xff, 0xff, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x31, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x1f, 0x09, 0x8d, 0x46, 0xe8
    db 0x50, 0xe8, 0x8b, 0xfd, 0x59, 0x89, 0x46, 0xfe, 0x3d, 0xff, 0xff, 0x75, 0x03, 0xe9, 0x4b, 0x01
    db 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x0e, 0xfd, 0x83, 0xc4, 0x04, 0x8d, 0x46, 0x98
    db 0x50, 0xb8, 0x96, 0x14, 0x50, 0xe8, 0x5b, 0x9e, 0x83, 0xc4, 0x04, 0xb8, 0xb8, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x36, 0xd4, 0x91, 0x8d, 0x46, 0x98, 0x50, 0xe8, 0xbc, 0xf7, 0x83, 0xc4
    db 0x08, 0x8d, 0x46, 0x98, 0x50, 0xb8, 0x97, 0x14, 0x50, 0xe8, 0x37, 0x9e, 0x83, 0xc4, 0x04, 0xb8
    db 0x00, 0x00, 0x50, 0x50, 0xb8, 0x41, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xb5, 0x90, 0x50
    db 0xb8, 0xb4, 0x90, 0x50, 0x8d, 0x46, 0x98, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x70, 0xf8, 0x83, 0xc4
    db 0x10, 0xff, 0x36, 0x5a, 0x90, 0xe8, 0xbb, 0xf1, 0x59, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0x08
    db 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x7c, 0xfa, 0x83, 0xc4, 0x06, 0x85, 0xc0, 0x75, 0x03, 0xe9
    db 0xa5, 0x00, 0xb8, 0x15, 0x00, 0x50, 0xe8, 0x58, 0xa0, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x6b, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x03
    db 0xe9, 0x84, 0x00, 0x8d, 0x46, 0x98, 0x50, 0xb8, 0x98, 0x14, 0x50, 0xe8, 0xc5, 0x9d, 0x83, 0xc4
    db 0x04, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x41, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xb7
    db 0x90, 0x50, 0xb8, 0xb6, 0x90, 0x50, 0x8d, 0x46, 0x98, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xfe, 0xf7
    db 0x83, 0xc4, 0x10, 0xff, 0x36, 0x5a, 0x90, 0xe8, 0x49, 0xf1, 0x59, 0xb8, 0x08, 0x00, 0x50, 0x8b
    db 0x46, 0x08, 0xd1, 0xe0, 0x40, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x07, 0xfa, 0x83, 0xc4, 0x06
    db 0x85, 0xc0, 0x74, 0x33, 0xb8, 0x15, 0x00, 0x50, 0xe8, 0xe6, 0x9f, 0x59, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x6b, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1
    db 0x7e, 0x15, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x99, 0x14, 0x50, 0xff, 0x76
    db 0xfe, 0xe8, 0x0f, 0xf9, 0x83, 0xc4, 0x08, 0x8d, 0x46, 0x98, 0x50, 0xb8, 0x9a, 0x14, 0x50, 0xe8
    db 0x41, 0x9d, 0x83, 0xc4, 0x04, 0xb8, 0xb8, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x36, 0xd4
    db 0x91, 0x8d, 0x46, 0x98, 0x50, 0xe8, 0xa2, 0xf6, 0x83, 0xc4, 0x08, 0xe9, 0xbe, 0x07, 0xb8, 0x00
    db 0x00, 0x50, 0x50, 0xe8, 0xc2, 0xfb, 0x83, 0xc4, 0x04, 0xb8, 0x03, 0x00, 0x50, 0x50, 0x8d, 0x46
    db 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x58, 0xfc, 0x83, 0xc4, 0x0a
    db 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x50, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03
    db 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x75, 0x3e, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x53, 0x9f, 0x59, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0xa3, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8
    db 0x58, 0x3b, 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4, 0x75, 0x18, 0xb8, 0x06, 0x00
    db 0x50, 0x8b, 0x46, 0x08, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8
    db 0x32, 0xf9, 0x83, 0xc4, 0x06, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46
    db 0xfe, 0x7f, 0xa5, 0xe9, 0x36, 0x07, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x37
    db 0xfb, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8d, 0x46, 0xf4, 0x50
    db 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0xca, 0xfb, 0x83, 0xc4, 0x0a, 0x8b, 0x46
    db 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x72, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83
    db 0x7f, 0xe8, 0x00, 0x75, 0x60, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0xc5, 0x9e, 0x59, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0xa1, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b
    db 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4, 0x75, 0x3a, 0xb8, 0x04, 0x00, 0x50, 0x8b
    db 0x46, 0x08, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xa4, 0xf8
    db 0x83, 0xc4, 0x06, 0x85, 0xc0, 0x74, 0x1e, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x9b, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8
    db 0x92, 0xf9, 0x83, 0xc4, 0x0e, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46
    db 0xfe, 0x7f, 0x83, 0xe9, 0x86, 0x06, 0xb8, 0x0e, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x87
    db 0xfa, 0x83, 0xc4, 0x04, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x8d, 0x46, 0xf4, 0x50
    db 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x1a, 0xfb, 0x83, 0xc4, 0x0a, 0x8b, 0x46
    db 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x72, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83
    db 0x7f, 0xe8, 0x00, 0x75, 0x60, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x15, 0x9e, 0x59, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0xa6, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b
    db 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4, 0x75, 0x3a, 0xb8, 0x07, 0x00, 0x50, 0x8b
    db 0x46, 0x08, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xf4, 0xf7
    db 0x83, 0xc4, 0x06, 0x85, 0xc0, 0x74, 0x1e, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x89, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8
    db 0xe2, 0xf8, 0x83, 0xc4, 0x0e, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46
    db 0xfe, 0x7f, 0x83, 0xe9, 0xd6, 0x05, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xd7
    db 0xf9, 0x83, 0xc4, 0x04, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x8d, 0x46, 0xf4, 0x50
    db 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x6a, 0xfa, 0x83, 0xc4, 0x0a, 0x8b, 0x46
    db 0xf8, 0x89, 0x46, 0xfe, 0xe9, 0x06, 0x01, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd
    db 0x83, 0x7f, 0xe8, 0x00, 0x74, 0x03, 0xe9, 0xf1, 0x00, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x61, 0x9d
    db 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x9e, 0x5d, 0x2a, 0xe4
    db 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x0b, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4, 0x74, 0x03, 0xe9
    db 0xc8, 0x00, 0xb8, 0x06, 0x00, 0x50, 0xe8, 0x38, 0x9d, 0x59, 0xe9, 0xb0, 0x00, 0xb8, 0x18, 0x00
    db 0x50, 0x8b, 0x46, 0x08, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x38, 0xf7, 0x83, 0xc4, 0x06, 0xe9
    db 0xa8, 0x00, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x86, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x27, 0xf8, 0x83, 0xc4, 0x0e
    db 0xe9, 0x87, 0x00, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x84, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x06, 0xf8, 0x83, 0xc4
    db 0x0e, 0xeb, 0x67, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x85, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xe6, 0xf7, 0x83, 0xc4
    db 0x0e, 0xeb, 0x47, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x8c, 0x14, 0x50, 0xff
    db 0x76, 0xfe, 0xe8, 0xfe, 0xf5, 0x83, 0xc4, 0x08, 0xeb, 0x30, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x8f, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xe7, 0xf5, 0x83, 0xc4, 0x08, 0xeb
    db 0x19, 0xbc, 0x6a, 0xd1, 0x6a, 0xf2, 0x6a, 0x12
    db 'k2kIk='
    db 0x06, 0x00, 0x73, 0x08, 0x93, 0xd1, 0xe3, 0x2e, 0xff, 0xa7, 0x60, 0x6b, 0xff, 0x46, 0xfe, 0x8b
    db 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7e, 0x03, 0xe9, 0xec, 0xfe, 0xe9, 0x8e, 0x04
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x8f, 0xf8, 0x83, 0xc4, 0x04, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46
    db 0xf8, 0x50, 0xe8, 0x22, 0xf9, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x50
    db 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x75, 0x3e, 0xb8
    db 0x64, 0x00, 0x50, 0xe8, 0x1d, 0x9c, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8
    db 0x8a, 0x87, 0x9d, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe
    db 0x3b, 0x46, 0xf4, 0x75, 0x18, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xb9, 0x02, 0x00, 0x99
    db 0xf7, 0xf9, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xfc, 0xf5, 0x83, 0xc4, 0x06, 0xff, 0x46, 0xfe
    db 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7f, 0xa5, 0xe9, 0x00, 0x04, 0xb8, 0x0e
    db 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x02, 0xf8, 0x83, 0xc4, 0x04, 0x8d, 0x46, 0xe8, 0x50, 0xe8
    db 0x5f, 0xf8, 0x59, 0x89, 0x46, 0xfe, 0x3d, 0xff, 0xff, 0x74, 0x15, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x8f, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xf8, 0xf4, 0x83, 0xc4, 0x08
    db 0xe9, 0xcb, 0x03, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xcc, 0xf7, 0x83, 0xc4
    db 0x04, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf6
    db 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x5f, 0xf8, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xf8, 0x89, 0x46
    db 0xfe, 0xeb, 0x39, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00
    db 0x75, 0x27, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8
    db 0x04, 0x00, 0x8b, 0x4e, 0xfe, 0x3b, 0x4e, 0xf4, 0x75, 0x03, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x85
    db 0x14, 0x50, 0x51, 0xe8, 0x60, 0xf6, 0x83, 0xc4, 0x0e, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8, 0x03
    db 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7f, 0xbc, 0xe9, 0x54, 0x03, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0x55, 0xf7, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50
    db 0x8d, 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0xe8, 0xf7, 0x83
    db 0xc4, 0x0a, 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xe9, 0x21, 0x01, 0x8b, 0x46, 0xfe, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x74, 0x03, 0xe9, 0x0c, 0x01, 0xb8, 0x64, 0x00
    db 0x50, 0xe8, 0xdf, 0x9a, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87
    db 0xa8, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x0b, 0x8b, 0x46, 0xfe, 0x3b, 0x46
    db 0xf4, 0x74, 0x03, 0xe9, 0xe3, 0x00, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0xfe, 0x8b, 0x4e, 0xfc, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x1e, 0x5c
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x40, 0x50
    db 0xe8, 0xd1, 0xb3, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e
    db 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x8e, 0xb3, 0x83, 0xc4, 0x04, 0x8b, 0xc8, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0x56, 0xfc, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8
    db 0x8b, 0x87, 0x1c, 0x5c, 0x2b, 0xc1, 0x50, 0xe8, 0x72, 0x9a, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xc8, 0x8b, 0x56, 0xfc, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b
    db 0xd8, 0x58, 0x89, 0x87, 0x1c, 0x5c, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x06, 0x00, 0x7d
    db 0x03, 0xe9, 0x77, 0xff, 0x8d, 0x46, 0x98, 0x50, 0xb8, 0x92, 0x14, 0x50, 0xe8, 0xb6, 0x97, 0x83
    db 0xc4, 0x04, 0x8d, 0x86, 0x48, 0xff, 0x50, 0xb8, 0x9c, 0x14, 0x50, 0xe8, 0xa7, 0x97, 0x83, 0xc4
    db 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xb8, 0x00, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xb8
    db 0x90, 0x50, 0x8d, 0x86, 0x48, 0xff, 0x50, 0x8d, 0x46, 0x98, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xdf
    db 0xf1, 0x83, 0xc4, 0x10, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x76, 0xad, 0x83, 0xc4
    db 0x04, 0xff, 0x36, 0x5a, 0x90, 0xe8, 0x1d, 0xeb, 0x59, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8, 0x03
    db 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7e, 0x03, 0xe9, 0xd1, 0xfe, 0xe9, 0xf1, 0x01, 0xb8, 0xff, 0xff
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xf2, 0xf5, 0x83, 0xc4, 0x04, 0xe9, 0xe0, 0x01, 0xb8, 0x16
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xe1, 0xf5, 0x83, 0xc4, 0x04, 0xe9, 0xcf, 0x01, 0x8d
    db 0x46, 0xe8, 0x50, 0xe8, 0x3b, 0xf6, 0x59, 0x89, 0x46, 0xfe, 0x3d, 0xff, 0xff, 0x75, 0x03, 0xe9
    db 0x13, 0x01, 0xb8, 0x0c, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xbe, 0xf5, 0x83, 0xc4, 0x04, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0xff, 0xb7, 0x0e, 0x5c, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x04, 0x00, 0x50, 0xe8, 0x6d, 0x99, 0x59, 0x8b, 0xc8, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b
    db 0xd8, 0x8b, 0x87, 0x0e, 0x5c, 0x2b, 0xc1, 0x40, 0x50, 0xe8, 0x70, 0x99, 0x83, 0xc4, 0x06, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0e, 0x5c, 0x3b, 0x87, 0x0c
    db 0x5c, 0x7d, 0x04, 0x89, 0x87, 0x0c, 0x5c, 0x8d, 0x46, 0x98, 0x50, 0xb8, 0x92, 0x14, 0x50, 0xe8
    db 0xc3, 0x96, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x48, 0xff, 0x50, 0xb8, 0x95, 0x14, 0x50, 0xe8, 0xb4
    db 0x96, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xb8, 0x00, 0x50, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0xb9, 0x90, 0x50, 0x8d, 0x86, 0x48, 0xff, 0x50, 0x8d, 0x46, 0x98, 0x50, 0xff, 0x76
    db 0xfe, 0xe8, 0xec, 0xf0, 0x83, 0xc4, 0x10, 0xff, 0x36, 0x5a, 0x90, 0xe8, 0x37, 0xea, 0x59, 0xb8
    db 0x64, 0x00, 0x50, 0xe8, 0xed, 0x98, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8
    db 0x8a, 0x87, 0xa7, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x05, 0x19, 0x00, 0x8b, 0xc8, 0x58, 0x3b, 0xc1
    db 0x7e, 0x53, 0x80, 0xbf, 0x67, 0x5d, 0x03, 0x76, 0x4c, 0xfe, 0x8f, 0x67, 0x5d, 0x8d, 0x46, 0x98
    db 0x50, 0xb8, 0x92, 0x14, 0x50, 0xe8, 0x4d, 0x96, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x48, 0xff, 0x50
    db 0xb8, 0x94, 0x14, 0x50, 0xe8, 0x3e, 0x96, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xb8
    db 0x00, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xba, 0x90, 0x50, 0x8d, 0x86, 0x48, 0xff, 0x50
    db 0x8d, 0x46, 0x98, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x76, 0xf0, 0x83, 0xc4, 0x10, 0xff, 0x36, 0x5a
    db 0x90, 0xe8, 0xc1, 0xe9, 0x59, 0xe9, 0xa6, 0x00, 0xb8, 0x0f, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xe8, 0xa7, 0xf4, 0x83, 0xc4, 0x04, 0xe9, 0x95, 0x00, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00
    db 0x50, 0xe8, 0x96, 0xf4, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8d
    db 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x29, 0xf5, 0x83, 0xc4
    db 0x0a, 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x27, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x75, 0x15, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50
    db 0xb8, 0x8c, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x6b, 0xf1, 0x83, 0xc4, 0x08, 0xff, 0x46, 0xfe
    db 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7f, 0xce, 0xeb, 0x31, 0x1b, 0x70, 0xaf
    db 0x65, 0x3a, 0x66, 0xeb, 0x66, 0xfc, 0x66, 0x5d, 0x68, 0xe5, 0x68, 0x95, 0x69, 0x45, 0x6a, 0x8d
    db 0x6b, 0x1b, 0x6c, 0x50, 0x6c, 0xc7
    db 'l*n;nLnuo'
    db 0x86, 0x6f

    cmp ax, strict word 0x12
    jae short 0x1fd4
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6fea]
    ret
api_idx_0060:
    mov ax, 0xffa0
    call 0xf40b
    mov word [0x91fe], 0
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    inc ax
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    cmp word [bp - 0x0002], byte 0
    jle short 0x202d
    cmp word [bp - 0x0004], byte 0x64
    jge short 0x202d
    inc word [0x91fe]
    mov ax, word [0x91fe]
    cmp ax, strict word 0x12
    jl short 0x2013
    mov word [0x91fe], 0
    inc word [bp - 0x0004]
    push word [0x91fe]
    mov ax, word [bp + 0x4]
    add ax, strict word 0x30
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x202b
    dec word [bp - 0x0002]
    jmp short 0x1ff2
    mov ax, 0x91d6
    push ax
    mov ax, word [0x91fe]
    add ax, 0x14b4
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x30
    push ax
    mov ax, 0x9200
    push ax
    call 0xf306
    add sp, byte 6
    mov ax, word [0x91fe]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6e00], 1
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0x9230
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x002e], 0
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0002], 0
    mov ax, word [0x91fe]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x99a], strict word 0xff
    je short 0x20b6
    mov ax, word [bx + 0x99a]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x002c], 1
    inc word [bp - 0x002e]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x208b
    mov word [bp - 0x000a], 0
    mov ax, 1
    cmp word [bp - 0x000a], byte 0
    jne short 0x20da
    mov ax, word [0x91fe]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x96a]
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0002], ax
    jmp near 0x21c9
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6e00], byte 0
    je short 0x20f4
    jmp near 0x21c6
    cmp word [bp - 0x000a], byte 2
    je short 0x2111
    push word [bp - 0x0002]
    mov ax, word [bp + 0x4]
    add ax, strict word 0x30
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x2111
    jmp near 0x21c6
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x005e], 0
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0002]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x99a], strict word 0xff
    je short 0x2159
    mov ax, word [bx + 0x99a]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002c], byte 0
    jne short 0x2159
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    inc word [bx - 0x005e]
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 8
    jl short 0x2124
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x005e]
    add ax, word [bp - 0x002e]
    cmp ax, strict word 8
    jg short 0x21c6
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6e00], 1
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0002]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x99a], strict word 0xff
    je short 0x21bb
    mov ax, word [bx + 0x99a]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002c], byte 0
    jne short 0x21bb
    mov word [bx - 0x002c], 1
    inc word [bp - 0x002e]
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 8
    jl short 0x218a
    inc word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 0x12
    jge short 0x21d2
    jmp near 0x20e3
    inc word [bp - 0x000a]
    mov ax, word [bp - 0x000a]
    cmp ax, strict word 3
    jge short 0x21e0
    jmp near 0x20c6
    cmp word [bp - 0x002e], byte 8
    jge short 0x220d
    mov word [bp - 0x0002], 0
    cmp word [bp - 0x002e], byte 8
    jge short 0x220d
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002c], byte 0
    jne short 0x2208
    mov word [bx - 0x002c], 1
    inc word [bp - 0x002e]
    inc word [bp - 0x0002]
    jmp short 0x21eb
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002c], byte 0
    je short 0x2237
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6dc0], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x10
    jl short 0x2217
    mov word [bp - 0x0008], 0
    mov word [0x9200], 0
    mov word [0x9250], 0xffff
    mov word [bp - 0x0002], 1
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6e00], byte 0
    jne short 0x2269
    jmp near 0x2310
    mov ax, 0x90bb
    push ax
    mov ax, 0xa
    imul word [bp - 0x0008]
    add ax, 0x9252
    push ax
    call 0xf364
    add sp, byte 4
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0002]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x99a], strict word 0xff
    je short 0x22e8
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0002]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x99a]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x6dc0]
    cmp ax, cx
    jne short 0x22dd
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x31
    push ax
    mov ax, 0xa
    imul word [bp - 0x0008]
    mov cx, ax
    add ax, word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6dae], al
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 8
    jl short 0x22a0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x2282
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6cbe], ax
    cmp ax, word [0x91fe]
    jne short 0x230d
    mov ax, word [bp - 0x0008]
    mov word [0x9250], ax
    inc word [bp - 0x0008]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jge short 0x231e
    jmp near 0x2258
    mov word [bp - 0x0002], 0
    jmp near 0x241c
    mov ax, 0x90c4
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0x9372
    push ax
    call 0xf364
    add sp, byte 4
    mov word [bp - 0x0006], 0xfffb
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp short 0x235d
    mov word [bp - 0x0006], 0x14
    jmp short 0x2371
    mov word [bp - 0x0006], 0xf
    jmp short 0x2371
    cmp ax, strict word 3
    je short 0x234f
    cmp ax, strict word 4
    je short 0x2356
    cmp ax, strict word 6
    je short 0x2356
    cmp ax, strict word 0xd
    je short 0x2356
    mov ax, 0x5a
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d7c]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    mov cx, word [bx + 0x5c18]
    add ax, cx
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x34]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    add ax, word [bp - 0x0006]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0060], ax
    mov word [bp - 0x0004], 0
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x0060]
    jge short 0x240e
    cmp word [0x91fe], byte 0
    jle short 0x23fe
    cmp word [0x9250], byte 0xff
    je short 0x23fe
    mov ax, 0xa
    imul word [0x9250]
    add ax, word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx - 0x6dae], 0x2d
    jne short 0x23e6
    mov ax, 0x2d
    jmp short 0x23e9
    mov ax, 0x2a
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6c8e], al
    jmp short 0x240e
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov byte [bx - 0x6c8e], 0x2d
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x23b3
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jge short 0x2428
    jmp near 0x2326
    mov ax, word [bp - 0x0008]
    ret
loc_242c:
    mov ax, 0
    call 0xf40b
    mov ax, 0xc0
    cmp word [bp + 0xc], byte 0
    je short 0x243e
    mov ax, 0xc2
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xbbbc
    add sp, byte 8
    mov ax, 0xc5
    cmp word [bp + 0xc], byte 0
    je short 0x246f
    mov ax, 0xc6
    push ax
    mov ax, 0xb0
    cmp word [bp + 0xc], byte 0
    je short 0x247c
    mov ax, 0xc4
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xbc3b
    add sp, byte 0x0c
    mov ax, 0xb4
    push ax
    mov ax, 0xc5
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    dec ax
    push ax
    call 0xbc3b
    add sp, byte 0x0c
    mov ax, 0x51
    cmp word [bp + 0xc], byte 0
    je short 0x24c1
    mov ax, 0xc3
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xe8f4
    add sp, byte 6
    mov ax, 0xb6
    cmp word [bp + 0xc], byte 0
    je short 0x24da
    mov ax, 0xc5
    push ax
    push word [bp + 0x6]
    push word [bp + 0x8]
    call 0xe8f4
    add sp, byte 6
    mov ax, 0xb6
    cmp word [bp + 0xc], byte 0
    je short 0x24f3
    mov ax, 0xc5
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    call 0xe8f4
    add sp, byte 6
    mov ax, 0xc6
    cmp word [bp + 0xc], byte 0
    je short 0x250c
    mov ax, 0xc7
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    call 0xe8f4
    add sp, byte 6
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call 0xe823
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 6
    imul cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 6
    imul cx
    add ax, word [bp + 0x6]
    push ax
    call 0xe809
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    je short 0x2583
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6c8e]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    jmp short 0x259f
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6dae]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x2533
    ret
api_idx_0084:
    mov ax, 0xff7c
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short 0x25da
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6cbe]
    add ax, 0x14b4
    push ax
    call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xc]
    jl short 0x25b8
    mov word [0x911c], 0x8d
    mov word [bp - 0x0078], 0
    cmp word [0x9250], byte 0xff
    je short 0x261a
    mov word [bp - 0x0004], 0
    mov ax, 0xa
    imul word [0x9250]
    add ax, word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx - 0x6dae], 0x2d
    je short 0x260f
    inc word [bp - 0x0078]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x25f9
    mov word [0x904e], 0xffff
    mov word [bp - 0x0006], 0x37
    mov word [bp - 0x0008], 0x8f
    mov word [bp - 0x000a], 0x108
    mov word [bp - 0x000c], 0xc5
    mov word [bp - 0x0014], 0x16
    mov word [bp - 0x0024], 1
    mov ax, 0x90cd
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0076], ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call 0xbc9a
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
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
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
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
    mov ax, 0x90d3
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0073]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d7c]
    sub ah, ah
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0x90d5
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xc
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x38
    push ax
    mov ax, 0
    push ax
    call api_idx_0002_2
    add sp, byte 8
    lea ax, word [bp - 0x004c]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x004c]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0074]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0074]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov ax, 0xc0
    push ax
    mov ax, 0
    push ax
    call 0xe823
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6dd0]
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x6b
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call 0x242c
    add sp, byte 0x0a
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5f
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6dc0]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short 0x28a6
    jmp near 0x27e5
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x61
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call 0xbd98
    add sp, byte 8
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0022], 0xffff
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x69
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov word [bp - 0x0012], 0
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc1
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0012]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0006]
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
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
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
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc1
    push ax
    mov ax, 2
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xd
    push ax
    mov ax, 0x49
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
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
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x6b
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 5
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x2a09
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xd
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x001c], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d7c]
    sub ah, ah
    push ax
    mov ax, 5
    imul word [bp + 0xe]
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    mov al, byte [bx + 0x5d68]
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
    mov word [bp - 0x007c], ax
    mov word [bp - 0x007e], 0
    cmp byte [bx + 0x5e2d], 3
    jne short 0x2b1a
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov cx, 3
    imul cx
    add word [bp - 0x007c], ax
    mov word [bp - 0x007e], 3
    jmp short 0x2b3a
    mov al, byte [bx + 0x5e2d]
    cmp al, 0xd
    je short 0x2b2a
    cmp al, 4
    je short 0x2b2a
    cmp al, 6
    jne short 0x2b3a
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    shl ax, 1
    add word [bp - 0x007c], ax
    mov word [bp - 0x007e], 2
    mov ax, 0x5a
    push ax
    mov ax, 5
    push ax
    push word [bp - 0x007c]
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x007c], ax
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0084], ax
    mov ax, 0x64
    sub ax, word [bp - 0x007c]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x64
    sub cx, ax
    mov ax, word [bp - 0x0084]
    cmp cx, ax
    jge short 0x2b78
    mov ax, 0
    jmp short 0x2b7b
    mov ax, 1
    mov word [bp - 0x0080], ax
    mov ax, 0
    mov cx, word [bp - 0x0084]
    cmp cx, word [bp - 0x007c]
    jge short 0x2b8d
    mov ax, 1
    mov word [bp - 0x0082], ax
    cmp word [bp - 0x0080], byte 0
    jne short 0x2b9c
    mov ax, 0x1a
    jmp short 0x2ba9
    mov ax, 0x56
    cmp word [bp - 0x0082], byte 0
    je short 0x2ba9
    mov ax, 0x37
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x61
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x61
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    call 0x86b
    test ax, ax
    jne short 0x2bfd
    mov ax, 0x19
    push ax
    call 0xe489
    pop cx
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [0x5b3e], byte 1
    je short 0x2c13
    jmp near 0x3518
    jmp near 0x350b
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
    mov cx, word [bp - 0x0008]
    add cx, word [bp - 0x0012]
    add cx, byte 0x0e
    sub ax, cx
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
    mov cx, word [bp - 0x0008]
    add cx, byte 0x0e
    sub ax, cx
    sub ax, word [bp - 0x0016]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0012], ax
    cmp word [bp + 0xc], byte 1
    jle short 0x2c95
    mov cx, 0x64
    imul cx
    push ax
    mov ax, word [bp - 0x0014]
    imul cx
    add ax, strict word 0x64
    cwd
    idiv word [bp + 0xc]
    mov cx, ax
    pop ax
    cwd
    idiv cx
    mov word [bp - 0x0018], ax
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x69
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x38
    push ax
    push word [bp - 0x0018]
    call api_idx_0002_2
    add sp, byte 8
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc1
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0012]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc1
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [bp - 0x001e], byte 0
    je short 0x2d94
    jmp near 0x2c44
    jmp near 0x3518
    cmp word [bp - 0x001a], byte 1
    jne short 0x2dce
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc1
    push ax
    call 0xbeb8
    add sp, byte 0x0a
    cmp word [bp - 0x0018], byte 0
    jle short 0x2dcc
    dec word [bp - 0x0018]
    jmp short 0x2e00
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2a
    push ax
    db 0x8b, 0x46
loc_2de9:
    cli
    add ax, 0xc1
    push ax
    call 0xbeb8
    add sp, byte 0x0a
    mov ax, word [bp + 0xc]
    dec ax
    cmp ax, word [bp - 0x0018]
    jle short 0x2e00
    inc word [bp - 0x0018]
    mov ax, word [bp + 0xc]
    cmp ax, strict word 1
    jle short 0x2e32
    push word [bp - 0x0014]
    mov ax, 0
    push ax
    mov ax, 0x64
    imul word [bp - 0x0014]
    add ax, strict word 0x64
    mov cx, word [bp + 0xc]
    dec cx
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
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x69
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x38
    push ax
    push word [bp - 0x0018]
    call api_idx_0002_2
    add sp, byte 8
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc1
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0012]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc1
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x3518
    cmp word [bp + 0x8], byte 0
    jne short 0x2f34
    jmp near 0x3181
    cmp word [bp - 0x0080], byte 0
    jne short 0x2f50
    mov ax, 4
    push ax
    call 0xb7e0
    pop cx
    mov word [0x9050], 1
    mov word [bp - 0x001c], 0
    jmp near 0x3181
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0x242c
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x90d8
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x004c]
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, 0x90da
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1a
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 0xc
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, strict word 9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x38
    push ax
    push word [bp + 0x4]
    call api_idx_0002_2
    add sp, byte 8
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 0
    je short 0x3088
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    call 0xf053
    add sp, byte 4
    test ax, ax
    je short 0x3086
    jmp short 0x3072
    jmp short 0x3090
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x38
    push ax
    push word [bp - 0x0018]
    call api_idx_0002_2
    add sp, byte 8
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0x242c
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 0x55
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1a
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 0xc
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, strict word 9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x3518
    cmp word [bp + 0xa], byte 0
    je short 0x31d2
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 2
    mov word [bp - 0x001c], 0
    jmp near 0x3518
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfffb
    mov word [bp - 0x0002], ax
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6dd0], byte 0
    je short 0x31ec
    jmp near 0x34ef
    mov word [bp - 0x007a], 0
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6dd0], byte 0
    je short 0x3207
    inc word [bp - 0x007a]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x31f6
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6dd0], 1
    push word [bx - 0x6dd0]
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x6b
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call 0x242c
    add sp, byte 0x0a
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5f
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6dc0]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x6b
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 4
    push ax
    call 0xb7e0
    pop cx
    cmp word [0x9250], byte 0xff
    jne short 0x3354
    mov word [0x9050], 1
    mov word [bp - 0x001c], 0
    jmp near 0x34ef
    cmp word [bp - 0x0080], byte 0
    je short 0x3376
    mov ax, 0xa
    imul word [0x9250]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6dae]
    sub ah, ah
    mov cx, word [bp - 0x007a]
    add cx, byte 0x31
    cmp ax, cx
    je short 0x3384
    mov word [0x9050], 1
    mov word [bp - 0x001c], 0
    jmp near 0x34ef
    cmp word [bp - 0x0082], byte 0
    je short 0x338e
    jmp near 0x34c5
    mov ax, 0xc8
    push ax
    call 0xe489
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6dd0], 0
    push word [bx - 0x6dd0]
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x6b
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call 0x242c
    add sp, byte 0x0a
    mov ax, 0xc2
    push ax
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5f
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6dc0]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x6b
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 4
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x34ef
    mov ax, word [bp - 0x0078]
    dec ax
    cmp ax, word [bp - 0x007a]
    jne short 0x34ef
    cmp word [bp - 0x007e], byte 0
    je short 0x34e4
    push word [bp - 0x007e]
    mov ax, 0x10
    push ax
    push word [bp + 0x4]
    call 0xf54
    add sp, byte 6
    mov word [0x9050], 0
    mov word [bp - 0x001c], 0
    jmp short 0x3518
    pop bp
    jl short 0x34d2
    jge short 0x34d4
    jge short 0x356a
    jg short 0x34c5
    sbb word [si], strict word 0x1c82
    sbb byte [si], 0x82
    sbb al, 0x82
    sbb al, 0x82
    sbb al, 0x82
    sbb al, 0x82
    sbb al, 0x82
    cmp ax, strict word 0xd
    jae short 0x3518
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7ac8]
    cmp word [bp - 0x001c], byte 0
    je short 0x3521
    jmp near 0x2b4e
    mov ax, 1
    push ax
    push word [bp - 0x0076]
    call 0xc459
    add sp, byte 4
    mov word [0x911c], 0x8f
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [0x9050]
    ret
api_idx_0008:
    mov ax, 0xfff8
    call 0xf40b
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0008], 0xffff
    mov ax, word [0x0e0e]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short 0x35bd
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, 0xff
    jne short 0x357f
    mov ax, word [bp - 0x0002]
    ret
    mov al, byte [bx + 0x1]
    sub ah, ah
    test ax, 0x40
    jne short 0x35b6
    cmp word [bp - 0x0006], byte 0xff
    je short 0x359b
    mov ax, 7
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x35b6
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [0x830c]
    jne short 0x35b0
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0008], ax
    jmp short 0x35b6
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0006], ax
    add word [bp - 0x0004], byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x5910]
    jl short 0x356f
    cmp word [bp + 0x4], byte 0
    je short 0x35da
    cmp word [bp - 0x0006], byte 0xff
    jne short 0x35d6
    mov ax, word [bp - 0x0008]
    ret
    mov ax, word [bp - 0x0006]
    ret
    mov ax, 0xffff
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0
    push ax
    call api_idx_0008
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x3621
    cmp word [0x5910], byte 0x7f
    jl short 0x3617
    mov ax, 1
    push ax
    call api_idx_0008
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x3615
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x360b
    jmp short 0x3621
    mov ax, word [0x5910]
    mov word [bp - 0x0002], ax
    inc word [0x5910]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    mov ax, word [0x0e0e]
    add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [0x830c]
    mov bx, word [bp - 0x0004]
    mov byte [bx], al
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x1], al
    mov ax, word [0x8f3e]
    xchg al, ah
    sub al, al
    mov dx, word [0x8f42]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [0x8f40]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov bx, word [bp + 0x4]
    mov ax, word [bx]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x5]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x7], al
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x6]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x6], al
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
    mov ax, 0x8bfe
    push ax
    call 0xec41
    add sp, byte 6
    ret
api_idx_0006:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [0x0e0e]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short 0x36f9
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [0x830c]
    jne short 0x36f2
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
    jne short 0x36f2
    mov ax, bx
    ret
    add word [bp - 0x0006], byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x5910]
    jl short 0x36c2
    mov ax, 0
    ret
api_idx_0006_2:
    mov ax, 0xfffa
    call 0xf40b
    call api_idx_0006
    mov word [bp - 0x0002], ax
    test ax, ax
    je short 0x3763
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
api_idx_0018:
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
api_idx_0004_6:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp near 0x3a09
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short 0x3908
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
    jmp short 0x390d
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
    cmp word [bx - 0x6c52], byte 0
    je short 0x3943
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
    mov al, byte [bx - 0x6c2a]
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
    add ax, 0x93fe
    push ax
    call api_idx_002a
    add sp, byte 8
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a4a], byte 0
    jle short 0x3a06
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
    jne short 0x39e0
    mov ax, word [bp - 0x0004]
    jmp short 0x39e3
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
    push word [bx - 0x6a4a]
    call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short 0x3a14
    jmp near 0x38c1
    ret
loc_3a15:
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
    call api_idx_0004_6
    add sp, byte 0x0c
    ret
api_idx_0038:
    mov ax, 0xffc8
    call 0xf40b
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x37
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x108
    mov word [bp - 0x000a], 0xc5
    mov word [0x911c], 0x8d
    mov word [bp - 0x0012], 0x16
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short 0x3a8d
    mov ax, word [bp + 0xc]
    mov word [bp - 0x0022], ax
    mov ax, 0x90dc
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
    je short 0x3ad8
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    jmp short 0x3ae5
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
    call 0x3a15
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
    cmp word [bp + 0x6], byte 0
    jne short 0x3c56
    jmp near 0x3ce3
    mov ax, 0xd
    push ax
    mov ax, 0x55
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
    mov ax, 0x44
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
    jmp near 0x3d6a
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
    mov ax, 0xd
    push ax
    mov ax, 0x54
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
    mov ax, 0x1b
    push ax
    mov ax, 0x4c
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
    jge short 0x3d76
    mov ax, word [bp + 0xc]
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short 0x3dbd
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
    jl short 0x3d80
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
    mov word [bp - 0x001a], 1
    mov word [0x9124], 5
    cmp word [bp + 0x6], byte 0
    jne short 0x3e0c
    call 0x86b
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [0x59fc], byte 0
    je short 0x3e61
    mov ax, word [bp - 0x0020]
    cmp ax, word [bp - 0x0016]
    jl short 0x3e2a
    inc word [bp - 0x0020]
    mov ax, word [bp - 0x0020]
    cmp ax, strict word 0xffff
    je short 0x3e49
    cmp ax, word [bp - 0x0016]
    jl short 0x3e49
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x001e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0020]
    cmp cx, ax
    jge short 0x3e4f
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0020], ax
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0020]
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
    cmp word [0x5b3e], byte 1
    je short 0x3e6b
    jmp near 0x422e
    mov ax, word [bp - 0x0018]
    jmp near 0x421f

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xd7, 0xb1, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x29, 0x79, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xa9, 0xb1, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0xf9, 0x78, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x1f, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d
    db 0x00, 0x50, 0xe8, 0xff, 0xfa, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00
    db 0x50, 0xe8, 0xa3, 0x80, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03
    db 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0x40, 0x7b, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x52, 0xa9, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x03
    db 0xe9, 0x0b, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xf8, 0x7e, 0x83
    db 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xc7, 0x7e
    db 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x03, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49
    db 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8
    db 0x94, 0x77, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76
    db 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xbf, 0xf9, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x63, 0x7f, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x00, 0x7a, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa
    db 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x12, 0xa8, 0x83, 0xc4, 0x08, 0xe9
    db 0x60, 0x01, 0x83, 0x7e, 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0x71, 0x7d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0x51, 0x7d, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00
    db 0xe9, 0x0f, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0x20, 0x7d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0x00, 0x7d, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00
    db 0x00, 0xe9, 0xbe, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0xcf, 0x7c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0xaf, 0x7c, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6
    db 0x00, 0x00, 0xeb, 0x6e, 0x8b, 0x46, 0xea, 0x03, 0x46, 0xe8, 0x05, 0xfa, 0xff, 0x89, 0x46, 0xe0
    db 0xff, 0x76, 0xde, 0x50, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x29, 0xf8
    db 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xb9, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8
    db 0xcc, 0xa6, 0x83, 0xc4, 0x08, 0xeb, 0x1b, 0xb8, 0x8e, 0xde, 0x8f, 0xde, 0x8f, 0x15, 0x91, 0x66
    db 0x91, 0xb7, 0x91

    cmp ax, strict word 6
    jae short 0x422c
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6da6]
    jmp short 0x41c0
    cmp word [bp - 0x001a], byte 0
    je short 0x4237
    jmp near 0x3e03
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    call 0xc459
    add sp, byte 4
    mov word [0x911c], 0x8f
    mov ax, word [bp - 0x0020]
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret

    db 0xb8, 0xac, 0xff, 0xe8, 0xb1, 0xb1, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x06, 0x05, 0x32, 0x00, 0x50
    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xde, 0x95, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfc, 0x3d
    db 0x5f, 0x00, 0x7e, 0x05, 0xc7, 0x46, 0xfc, 0x5f, 0x00, 0x83, 0x7e, 0xfc, 0x05, 0x7d, 0x05, 0xc7
    db 0x46, 0xfc, 0x05, 0x00, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x1a, 0x75, 0x59, 0x89, 0x46, 0xfe, 0x3b
    db 0x46, 0xfc, 0x7d, 0x38, 0xc7, 0x06, 0xfe, 0x91, 0x00, 0x00, 0xc7, 0x06, 0xe0, 0x95, 0x01, 0x00
    db 0xc7, 0x06, 0x14, 0x91, 0x01, 0x00, 0x8d, 0x46, 0xac, 0x50, 0xb8, 0x72, 0x14, 0x50, 0xe8, 0x86
    db 0x72, 0x83, 0xc4, 0x04, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x36, 0xd4, 0x91
    db 0x8d, 0x46, 0xac, 0x50, 0xe8, 0xe7, 0xcb, 0x83, 0xc4, 0x08, 0xeb, 0x47, 0xb8, 0x64, 0x00, 0x2b
    db 0x46, 0xfc, 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0xb8, 0x64, 0x00, 0x2b, 0xc1, 0x3b
    db 0x46, 0xfe, 0x7d, 0x08, 0xc7, 0x06, 0xe0, 0x95, 0xff, 0xff, 0xeb, 0x27, 0xc7, 0x06, 0xe0, 0x95
    db 0x00, 0x00, 0x8d, 0x46, 0xac, 0x50, 0xb8, 0x73, 0x14, 0x50, 0xe8, 0x3a, 0x72, 0x83, 0xc4, 0x04
    db 0xb8, 0x01, 0x00, 0x50, 0x50, 0xff, 0x36, 0xd4, 0x91, 0x8d, 0x46, 0xac, 0x50, 0xe8, 0x9e, 0xcb
    db 0x83, 0xc4, 0x08, 0xc3, 0xb8, 0x00, 0x00, 0xe8, 0xed, 0xb0, 0x83, 0x7e, 0x08, 0x01, 0x75, 0x1e
    db 0x83, 0x7e, 0x06, 0x00, 0x7e, 0x08, 0x8b, 0x46, 0x04, 0x29, 0x46, 0x06, 0xeb, 0x0e, 0xb8, 0x00
    db 0x00, 0x2b, 0x46, 0x04, 0x3b, 0x46, 0x06, 0x7d, 0x03, 0x89, 0x46, 0x06, 0xeb, 0x22, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x1c, 0x83, 0x7e, 0x06, 0x00, 0x7d, 0x08, 0x8b, 0x46, 0x04, 0x01, 0x46, 0x06
    db 0xeb, 0x0e, 0x8b, 0x46, 0x06, 0x3b, 0x46, 0x04, 0x7d, 0x06, 0x8b, 0x46, 0x04, 0x89, 0x46, 0x06
    db 0x8b, 0x46, 0x06, 0xc3, 0xb8, 0xf8, 0xff, 0xe8, 0x9d, 0xb0, 0x8b, 0x46, 0x06, 0xe9, 0x03, 0x07
    db 0xb8, 0x32, 0x00, 0xf7, 0x6e, 0x08, 0x01, 0x06, 0xfe, 0x82, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36
    db 0x00, 0x83, 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0x08, 0x05, 0x46, 0x00, 0x50, 0xe8, 0x85, 0xff, 0x83
    db 0xc4, 0x06, 0xa3, 0x00, 0x83, 0xe9, 0x3b, 0x07, 0xb8, 0x23, 0x00, 0xf7, 0x6e, 0x08, 0x01, 0x06
    db 0xf2, 0x82, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0xf4, 0x82, 0x8b, 0x46, 0x08, 0x48, 0xb9, 0x02
    db 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50, 0xe8, 0x5b, 0xff, 0x83, 0xc4, 0x06, 0xa3, 0xf4, 0x82, 0xe9
    db 0x11, 0x07, 0xb8, 0x32, 0x00, 0xf7, 0x6e, 0x08, 0x01, 0x06, 0xf6, 0x82, 0xb8, 0x00, 0x00, 0x50
    db 0xff, 0x36, 0xf8, 0x82, 0x8b, 0x46, 0x08, 0x48, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50
    db 0xe8, 0x31, 0xff, 0x83, 0xc4, 0x06, 0xa3, 0xf8, 0x82, 0xe9, 0xe7, 0x06, 0xb8, 0x05, 0x00, 0xf7
    db 0x6e, 0x08, 0x01, 0x06, 0x06, 0x83, 0xe9, 0xda, 0x06, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0x08, 0x01
    db 0x06, 0x02, 0x83, 0xe9, 0xcd, 0x06, 0xb8, 0x32, 0x00, 0xf7, 0x6e, 0x08, 0x01, 0x06, 0xfa, 0x82
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0xfc, 0x82, 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xe8
    db 0xf2, 0xfe, 0x83, 0xc4, 0x06, 0xa3, 0xfc, 0x82, 0xe9, 0xa8, 0x06, 0xff, 0x76, 0x08, 0xff, 0x76
    db 0x04, 0xe8, 0x1c, 0xfe, 0x83, 0xc4, 0x04, 0xe9, 0x99, 0x06, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0xb8
    db 0x64, 0x00, 0x50, 0xe8, 0x5f, 0x73, 0x59, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8
    db 0x05, 0x23, 0x00, 0x8b, 0xc8, 0x8b, 0x16, 0xde, 0x95, 0xd1, 0xe2, 0x2b, 0xc2, 0x8b, 0xc8, 0x58
    db 0x3b, 0xc1, 0x7d, 0x61, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x51, 0x83, 0x3e, 0xfe, 0x91, 0x00
    db 0x7e, 0x37, 0x83, 0x3e, 0x50, 0x92, 0xff, 0x74, 0x30, 0xb8, 0x0a, 0x00, 0xf7, 0x2e, 0x50, 0x92
    db 0x03, 0x46, 0xfa, 0x8b, 0xd8, 0x80, 0xbf, 0x52, 0x92, 0x2d, 0x75, 0x05, 0xb8, 0x2d, 0x00, 0xeb
    db 0x03, 0xb8, 0x2a, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xc8, 0x03, 0x46, 0xfa
    db 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x72, 0x93, 0xeb, 0x10, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0xfe, 0x03
    db 0x46, 0xfa, 0x8b, 0xd8, 0xc6, 0x87, 0x72, 0x93, 0x2d, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b
    db 0x06, 0xc8, 0x69, 0x7c, 0xa6, 0xff, 0x46, 0xfa, 0x8b, 0x46, 0xfa, 0x3d, 0x08, 0x00, 0x7d, 0x03
    db 0xe9, 0x6c, 0xff, 0xe9, 0xfd, 0x05, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x13, 0x74, 0x03, 0x8b
    db 0x46, 0x0a, 0x89, 0x46, 0xfe, 0xa1, 0xc8, 0x69, 0x83, 0x7e, 0x06, 0x13, 0x74, 0x04, 0x8b, 0x46
    db 0x0a, 0x40, 0x89, 0x46, 0xfc, 0x8b, 0x46, 0x08, 0x83, 0x7e, 0x06, 0x13, 0x74, 0x02, 0xd1, 0xe0
    db 0x89, 0x46, 0xfa, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x13, 0x74, 0x03, 0x8b, 0x46, 0x08, 0x89
    db 0x46, 0xf8, 0xeb, 0x6a, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0xff, 0xb7, 0x12, 0x5c
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0xfa, 0xe8, 0xb5
    db 0x8b, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b
    db 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x72, 0x8b, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x03, 0x87, 0x10, 0x5c, 0x50, 0xe8, 0x61, 0x72, 0x83, 0xc4, 0x06
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x10, 0x5c, 0xb8, 0x01
    db 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xbe, 0x85, 0x83, 0xc4, 0x04, 0xff, 0x46, 0xfe, 0x8b, 0x46
    db 0xfe, 0x3b, 0x46, 0xfc, 0x7c, 0x8e, 0xe9, 0x4a, 0x05, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b
    db 0xd8, 0x8a, 0x87, 0x5d, 0x5d, 0x2a, 0xe4, 0x50, 0xb8, 0x19, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8
    db 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00
    db 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5d, 0x5d, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x75
    db 0x85, 0x83, 0xc4, 0x04, 0xe9, 0x0c, 0x05, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a
    db 0x87, 0x32, 0x5e, 0x2a, 0xe4, 0x2b, 0x46, 0x08, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7f, 0x0a
    db 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xc6, 0x87, 0x5f, 0x5d, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x32
    db 0x5e, 0x8a, 0x87, 0x5f, 0x5d, 0x2a, 0xe4, 0x50, 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8
    db 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7f, 0x0a, 0xc7, 0x46, 0xfe, 0x00, 0x00
    db 0xc6, 0x87, 0x32, 0x5e, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5f, 0x5d, 0xb8, 0x01, 0x00, 0x50
    db 0xff, 0x76, 0x0a, 0xe8, 0x10, 0x85, 0x83, 0xc4, 0x04, 0xe9, 0xa7, 0x04, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0x0a, 0x8b, 0xd8, 0x80, 0xbf, 0x2f, 0x5e, 0x02, 0x74, 0x03, 0xe9, 0x80, 0x00, 0xb8, 0x03
    db 0x00, 0xf7, 0x6e, 0x08, 0x50, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00
    db 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x67, 0xfe, 0x8f, 0x67, 0x5d, 0xb8, 0xb7, 0x00, 0x50, 0xe8
    db 0x43, 0x71, 0x59, 0x05, 0xb7, 0x00, 0x99, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b
    db 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b, 0x11, 0x97, 0xfe, 0x5b, 0xb8, 0x12, 0x00, 0x50, 0xe8
    db 0x23, 0x71, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d
    db 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x13, 0xc6, 0x87, 0x2f, 0x5e, 0x03, 0xc7, 0x87
    db 0x0c, 0x5c, 0x00, 0x00, 0xc7, 0x87, 0x10, 0x5c, 0x00, 0x00, 0xeb, 0x05, 0xc6, 0x87, 0x2f, 0x5e
    db 0x00, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x7b, 0x84, 0x83, 0xc4, 0x04, 0xe9, 0x12
    db 0x04, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x61, 0x5d, 0x2a, 0xe4, 0x50
    db 0xb8, 0x19, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00
    db 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x61, 0x5d, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x3d, 0x84, 0x83, 0xc4, 0x04, 0xe9, 0xd4, 0x03, 0xb8
    db 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87
    db 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x12, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x05
    db 0xc6, 0x87, 0x60, 0x5d, 0x00, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x07, 0x84, 0x83
    db 0xc4, 0x04, 0xe9, 0x9e, 0x03, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x42, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x5c, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46, 0x08, 0xf7, 0xe8
    db 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfc, 0x3d, 0x00, 0x00
    db 0x7d, 0x05, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x87, 0x5c, 0x5d, 0xb8, 0x01
    db 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xbe, 0x83, 0x83, 0xc4, 0x04, 0xff, 0x46, 0xfe, 0x8b, 0x46
    db 0xfe, 0x3b, 0x06, 0xc8, 0x69, 0x7c, 0xb5, 0xe9, 0x49, 0x03, 0xc7, 0x46, 0xfc, 0x01, 0x00, 0x8b
    db 0x46, 0xfc, 0x3d, 0x01, 0x00, 0x74, 0x14, 0x3d, 0x02, 0x00, 0x74, 0x0f, 0x3d, 0x04, 0x00, 0x74
    db 0x0a, 0x3d, 0x08, 0x00, 0x74, 0x05, 0x3d, 0x09, 0x00, 0x75, 0x39, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x0a, 0x8b, 0xc8, 0x8b, 0x46, 0xfc, 0x03, 0xc8, 0x8b, 0xd9, 0x8a, 0x87, 0x5a, 0x5d, 0x2a, 0xe4
    db 0x50, 0x8b, 0x46, 0x08, 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1
    db 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe
    db 0x88, 0x87, 0x5a, 0x5d, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x09, 0x00, 0x7e, 0xa0, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x3d, 0x83, 0x83, 0xc4, 0x04, 0xe9, 0xd4, 0x02, 0xb8
    db 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46, 0x0a, 0x89, 0x46, 0xfe, 0xa1, 0xc8
    db 0x69, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x04, 0x8b, 0x46, 0x0a, 0x40, 0x89, 0x46, 0xfc, 0xb8, 0x04
    db 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0xb8, 0x07, 0x00, 0x89, 0x46, 0xfa, 0xb8, 0x00, 0x00
    db 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46, 0x08, 0x89, 0x46, 0xf8, 0xeb, 0x73, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0xff, 0xb7, 0x0e, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76
    db 0xf8, 0xff, 0x76, 0xfa, 0xff, 0x76, 0x08, 0xe8, 0x8c, 0x88, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83
    db 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x49
    db 0x88, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x03, 0x87
    db 0x0c, 0x5c, 0x50, 0xe8, 0x38, 0x6f, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe
    db 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x83, 0x87, 0xfc, 0x5b, 0x01, 0x83, 0x97, 0xfe, 0x5b
    db 0x00, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x8b, 0x82, 0x83, 0xc4, 0x04, 0xff, 0x46
    db 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xfc, 0x7c, 0x85, 0xe9, 0x17, 0x02, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0x0a, 0x8b, 0xd8, 0x80, 0xbf, 0x2f, 0x5e, 0x03, 0x74, 0x03, 0xe9, 0x88, 0x00, 0xb8, 0x03
    db 0x00, 0xf7, 0x6e, 0x08, 0x50, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00
    db 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x6f, 0xfe, 0x8f, 0x67, 0x5d, 0xc6, 0x87, 0x2f, 0x5e, 0x00
    db 0xff, 0xb7, 0x0e, 0x5c, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x87, 0x0e, 0x5c, 0xb9, 0x03, 0x00, 0x99
    db 0xf7, 0xf9, 0x50, 0xe8, 0xb8, 0x6e, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a
    db 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x8b, 0x87, 0x12, 0x5c, 0xb9, 0x0a, 0x00, 0x99, 0xf7
    db 0xf9, 0x89, 0x87, 0x10, 0x5c, 0xff, 0x87, 0x1a, 0x5c, 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0x75, 0x6e
    db 0x59, 0x05, 0x6d, 0x01, 0x99, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a
    db 0x58, 0x01, 0x87, 0xfc, 0x5b, 0x11, 0x97, 0xfe, 0x5b, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a
    db 0xe8, 0xe3, 0x81, 0x83, 0xc4, 0x04, 0xe9, 0x7a, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x08, 0x00, 0x50
    db 0xff, 0x76, 0x08, 0xe8, 0x80, 0x87, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4
    db 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x3d, 0x87, 0x83, 0xc4, 0x04
    db 0x89, 0x46, 0xfe, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x10
    db 0x5c, 0x8b, 0x87, 0x10, 0x5c, 0x3b, 0x87, 0x12, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x12, 0x5c, 0x89
    db 0x87, 0x10, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8, 0x35
    db 0x87, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b
    db 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0xf2, 0x86, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x50, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x0c, 0x5c, 0x8b, 0x87, 0x0c, 0x5c
    db 0x3b, 0x87, 0x0e, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x0e, 0x5c, 0x89, 0x87, 0x0c, 0x5c, 0xb8, 0x01
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x3e, 0x81, 0x83, 0xc4, 0x04, 0xe9, 0xd5, 0x00, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8, 0xd5
    db 0x86, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b
    db 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x92, 0x86, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfc, 0x50, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56, 0xfe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2
    db 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x1c, 0x5c, 0x8b, 0x87, 0x1c, 0x5c, 0x3b, 0x87, 0x1e, 0x5c, 0x7e
    db 0x08, 0x8b, 0x87, 0x1e, 0x5c, 0x89, 0x87, 0x1c, 0x5c, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d
    db 0x06, 0x00, 0x7c, 0x9f, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc8, 0x80, 0x83, 0xc4
    db 0x04, 0xeb, 0x60, 0xb9, 0x17, 0x00, 0xe8, 0x86, 0x4f, 0x0c, 0x00, 0x11, 0x00, 0x13, 0x00, 0x19
    db 0x00, 0x21, 0x00, 0x25, 0x00, 0x2e, 0x00, 0x2f, 0x00, 0x31, 0x00, 0x38, 0x00, 0x3d, 0x00, 0x3e
    db 0x00, 0x3f, 0x00, 0x42, 0x00, 0x45, 0x00, 0x4e, 0x00, 0x52, 0x00, 0x54, 0x00, 0x58, 0x00, 0x5e
    db 0x00, 0x61, 0x00, 0x62, 0x00, 0x21, 0x95, 0xd4, 0x95, 0x21, 0x95, 0x4a, 0x97, 0x12, 0x96, 0x37
    db 0x94, 0x44, 0x94, 0x76, 0x94, 0x0d, 0x94, 0x77, 0x96, 0xd5, 0x97, 0x85, 0x94, 0xbb, 0x93, 0x80
    db 0x97, 0x0c, 0x97, 0x4a, 0x98, 0xe3, 0x93, 0x51, 0x94, 0x4a, 0x98, 0x07, 0x99, 0xa4, 0x99, 0x49
    db 0x9a, 0x1e, 0x9b, 0xc3, 0xb8, 0xfc, 0xff, 0xe8, 0x2d, 0xa9, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8
    db 0xea, 0x07, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x31, 0x42, 0x83, 0xc4, 0x08, 0x85, 0xc0, 0x74, 0x03
    db 0xe9, 0xd4, 0x00, 0xa1, 0x4e, 0x90, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xfc, 0x89
    db 0x56, 0xfe, 0xb8, 0x06, 0x00, 0xf7, 0xea, 0x8b, 0xd8, 0x80, 0xbf, 0x24, 0x06, 0x01, 0x75, 0x0b
    db 0xe8, 0x9a, 0x83, 0xa3, 0xe2, 0x95, 0x3d, 0xff, 0xff, 0x75, 0x00, 0x83, 0x7e, 0xfe, 0x00, 0x7d
    db 0x03, 0xe9, 0xa3, 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06
    db 0x2a, 0xe4, 0xf7, 0x6e, 0xfc, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8a, 0x87
    db 0x20, 0x06, 0x2a, 0xe4, 0x8b, 0xd0, 0xd1, 0xe0, 0xd1, 0xe0, 0x8b, 0xd0, 0x03, 0xc8, 0x8b, 0xd9
    db 0x58, 0x29, 0x87, 0x1c, 0x5c, 0xff, 0x36, 0xe2, 0x95, 0xff, 0x76, 0xfc, 0xff, 0x76, 0xfe, 0xff
    db 0x76, 0x04, 0xe8, 0xff, 0xf7, 0x83, 0xc4, 0x08, 0xff, 0x76, 0xfc, 0xe8, 0x37, 0x6c, 0x59, 0x50
    db 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x21, 0x06, 0x2a, 0xe4, 0x8b, 0xc8
    db 0x58, 0x03, 0xc1, 0x03, 0x46, 0xfc, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58
    db 0x29, 0x87, 0x10, 0x5c, 0x83, 0xbf, 0x10, 0x5c, 0x00, 0x7d, 0x1f, 0xc7, 0x87, 0x10, 0x5c, 0x00
    db 0x00, 0xb8, 0x06, 0x00, 0x50, 0xe8, 0xfd, 0x6b, 0x59, 0x05, 0x06, 0x00, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x5c, 0x5d, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x72, 0x7f, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x6e, 0xff, 0xe8, 0x39, 0xa8, 0xc7, 0x86
    db 0x6e, 0xff, 0x00, 0x00, 0xc7, 0x46, 0xb2, 0x00, 0x00, 0xc7, 0x46, 0xb0, 0x00, 0x00, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1
    db 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x83, 0xbf
    db 0x34, 0x5c, 0x00, 0x7f, 0x03, 0xe9, 0x17, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xff, 0xb7, 0x34, 0x5c
    db 0x8d, 0x46, 0xb6, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x1d, 0x6a, 0x83, 0xc4, 0x08, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1
    db 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x8a, 0x87
    db 0x3b, 0x5c, 0x2a, 0xe4, 0xa9, 0x80, 0x00, 0x74, 0x17, 0x8d, 0x46, 0xb6, 0x50, 0xb8, 0x16, 0x00
    db 0xf7, 0xae, 0x6e, 0xff, 0x05, 0xfe, 0x93, 0x50, 0xe8, 0x05, 0xa7, 0x83, 0xc4, 0x04, 0xeb, 0x1a
    db 0xb8, 0x16, 0x00, 0xf7, 0xae, 0x6e, 0xff, 0x05, 0xfe, 0x93, 0x50, 0x8a, 0x46, 0xef, 0x2a, 0xe4
    db 0x05, 0x70, 0x17, 0x50, 0xe8, 0xc0, 0x68, 0x83, 0xc4, 0x04, 0x8a, 0x46, 0xef, 0x2a, 0xe4, 0x8b
    db 0x8e, 0x6e, 0xff, 0xd1, 0xe1, 0x8b, 0xd9, 0x89, 0x87, 0xd6, 0x93, 0x8b, 0x46, 0xb2, 0x89, 0x87
    db 0xae, 0x93, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1
    db 0x8b, 0xd8, 0x8a, 0x87, 0x38, 0x5c, 0x2a, 0xe4, 0x8b, 0xd8, 0x80, 0xbf, 0x0e, 0x06, 0x01, 0x75
    db 0x34, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8
    db 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b
    db 0xd8, 0x8a, 0x87, 0x3a, 0x5c, 0x2a, 0xe4, 0x8b, 0x8e, 0x6e, 0xff, 0xd1, 0xe1, 0x8b, 0xd9, 0x89
    db 0x87, 0xb6, 0x95, 0xeb, 0x0e, 0x8b, 0x86, 0x6e, 0xff, 0xd1, 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0xb6
    db 0x95, 0x00, 0x00, 0x8b, 0x46, 0xb2, 0x86, 0xe0, 0x2a, 0xc0, 0x03, 0x46, 0xb0, 0x8b, 0x8e, 0x6e
    db 0xff, 0xd1, 0xe1, 0x8b, 0xd9, 0x03, 0xdd, 0x89, 0x87, 0x70, 0xff, 0xff, 0x86, 0x6e, 0xff, 0xff
    db 0x46, 0xb0, 0x8b, 0x46, 0xb0, 0x3d, 0x0a, 0x00, 0x7d, 0x03, 0xe9, 0xb1, 0xfe, 0xff, 0x46, 0xb2
    db 0x8b, 0x46, 0xb2, 0x3d, 0x02, 0x00, 0x7d, 0x03, 0xe9, 0x9e, 0xfe, 0x83, 0xbe, 0x6e, 0xff, 0x00
    db 0x75, 0x01, 0xc3, 0xb8, 0xe2, 0x90, 0x50, 0xff, 0xb6, 0x6e, 0xff, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0x50, 0xb8, 0xee, 0x07, 0x50, 0xe8, 0xfa, 0xec, 0x83, 0xc4, 0x0c, 0x89, 0x46, 0xb4, 0xa1, 0x4e
    db 0x90, 0x89, 0x46, 0xfe, 0x83, 0x7e, 0xb4, 0x02, 0x74, 0x05, 0x3d, 0xff, 0xff, 0x75, 0x17, 0xb8
    db 0xc6, 0x00, 0x50, 0xb8, 0x09, 0x01, 0x50, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8
    db 0x54, 0x9b, 0x83, 0xc4, 0x08, 0xc3, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x8b
    db 0x87, 0x70, 0xff, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xb2, 0x89, 0x56, 0xb0, 0xb8
    db 0x10, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x96, 0x00, 0x50, 0xb8, 0x3f, 0x00, 0x50, 0xff
    db 0x76, 0xb4, 0x8b, 0x46, 0xb4, 0x05, 0xee, 0x07, 0x50, 0xe8, 0xf6, 0xe9, 0x83, 0xc4, 0x0c, 0x83
    db 0x7e, 0xb4, 0x00, 0x74, 0x03, 0xe9, 0xa9, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8
    db 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x34, 0x5c
    db 0x8d, 0x46, 0xb6, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x3d, 0x68, 0x83, 0xc4, 0x08, 0x83, 0x7e
    db 0xd8, 0x00, 0x74, 0x6b, 0x8b, 0x46, 0xd8, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xac
    db 0x89, 0x56, 0xae, 0xb8, 0x06, 0x00, 0xf7, 0xea, 0x8b, 0xd8, 0x80, 0xbf, 0x24, 0x06, 0x01, 0x75
    db 0x10, 0xe8, 0x89, 0x80, 0xa3, 0xe2, 0x95, 0x3d, 0xff, 0xff, 0x75, 0x05, 0xc7, 0x46, 0xae, 0xff
    db 0xff, 0xb8, 0xc6, 0x00, 0x50, 0xb8, 0x09, 0x01, 0x50, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0x36, 0x00
    db 0x50, 0xe8, 0x92, 0x9a, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xae, 0xff, 0x74, 0x22, 0xff, 0x76, 0xb0
    db 0xff, 0x76, 0xb2, 0xff, 0x76, 0x04, 0xe8, 0xca, 0x7b, 0x83, 0xc4, 0x06, 0xff, 0x36, 0xe2, 0x95
    db 0xff, 0x76, 0xac, 0xff, 0x76, 0xae, 0xff, 0x76, 0x04, 0xe8, 0xf8, 0xf4, 0x83, 0xc4, 0x08, 0xeb
    db 0x70, 0x83, 0x7e, 0xb4, 0x01, 0x75, 0x6a, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78
    db 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0
    db 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x8a, 0x87, 0x3b, 0x5c, 0x2a, 0xe4, 0xa9, 0x02, 0x00
    db 0x74, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x33, 0x69, 0x59, 0xeb, 0x35, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8
    db 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x05, 0x34, 0x5c, 0x50, 0xe8, 0x09
    db 0xe7, 0x59, 0xff, 0x76, 0xb0, 0xff, 0x76, 0xb2, 0xff, 0x76, 0x04, 0xe8, 0x06, 0x7b, 0x83, 0xc4
    db 0x06, 0xb8, 0xc6, 0x00, 0x50, 0xb8, 0x09, 0x01, 0x50, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0x36, 0x00
    db 0x50, 0xe8, 0xe2, 0x99, 0x83, 0xc4, 0x08, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x35
    db 0x7c, 0x83, 0xc4, 0x04, 0xe8, 0xfb, 0xe7, 0xc3

api_idx_007a:
    mov ax, 0xff86
    call 0xf40b
    mov word [0x911e], 0
    push word [bp + 0x4]
    call api_idx_0060
    pop cx
    mov word [bp - 0x007a], ax
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x35], 2
    jne short 0x4f69
    push word [0x69c8]
    call 0xb7a9
    pop cx
    mov word [bp - 0x0006], ax
    push word [bp - 0x0006]
    call 0xca85
    pop cx
    test ax, ax
    je short 0x4f2b
    mov word [0x9114], 1
    mov ax, 1
    push ax
    call 0xb7e0
    pop cx
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x34]
    sub ah, ah
    push ax
    push word [bp - 0x0006]
    push word [0x91fe]
    call api_idx_00b8
    add sp, byte 6
    mov ax, 0
    ret
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x001c], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jle short 0x4f6e
    mov word [bp - 0x0012], 0xffff
    mov word [0x9126], 1
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov word [0x9126], 0
    lea ax, word [bp - 0x001c]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, 5
    push ax
    mov ax, 2
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x34
    push ax
    mov ax, 8
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1450
    push ax
    call 0x8441
    add sp, byte 0x1a
    mov word [bp - 0x0008], ax
    lea ax, word [bp - 0x0078]
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x1450
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 2
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x34
    push ax
    mov ax, 8
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x52
    push ax
    push word [0x9052]
    lea ax, word [bp - 0x0078]
    push ax
    call api_idx_0008_2
    add sp, byte 0x12
    mov ax, word [bp - 0x0008]
    jmp near 0x51c6
    cmp word [0x0e32], byte 0
    jne short 0x502d
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    call 0xceb1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short 0x5069
    push ax
    call 0xca85
    pop cx
    test ax, ax
    je short 0x5069
    mov word [0x9114], 1
    mov ax, 1
    push ax
    call 0xb7e0
    pop cx
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x34]
    sub ah, ah
    push ax
    push word [bp - 0x0006]
    push word [0x91fe]
    call api_idx_00b8
    add sp, byte 6
    mov ax, 0
    ret
    jmp near 0x51d3
    cmp word [0x0e32], byte 0
    jne short 0x507b
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    call 0xceb1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short 0x5089
    jmp near 0x5120
    push ax
    call 0xca85
    pop cx
    test ax, ax
    db 0x75
loc_5091:
    add bp, cx
    mov ax, word [bx + si]
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x34]
    sub ah, ah
    push ax
    push word [bp - 0x007a]
    mov ax, 1
    push ax
    push ax
    mov ax, 0x145a
    push ax
    push word [bp - 0x0006]
    call api_idx_0084
    add sp, byte 0x0c
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0
    jne short 0x50f2
    mov word [0x9114], 1
    lea ax, word [bp - 0x0078]
    push ax
    mov ax, 0x146d
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    push word [0x91d4]
    lea ax, word [bp - 0x0078]
    push ax
    call 0xeb2
    add sp, byte 8
    mov ax, 0
    ret
    cmp word [bp - 0x0002], byte 1
    jne short 0x5120
    mov word [0x9114], 1
    mov ax, 1
    push ax
    call 0xb7e0
    pop cx
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x34]
    sub ah, ah
    push ax
    push word [bp - 0x0006]
    push word [0x91fe]
    call api_idx_00b8
    add sp, byte 6
    mov ax, 0
    ret
    jmp near 0x51d3
    cmp word [0x0e32], byte 0
    jne short 0x5132
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    call 0xceb1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short 0x5140
    jmp near 0x51b6
    push ax
    call 0xca85
    pop cx
    test ax, ax
    je short 0x51b6
    mov word [0x95e0], 0
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x34]
    sub ah, ah
    mov word [0x95de], ax
    cmp word [bp - 0x0008], byte 2
    jne short 0x5169
    push word [bp - 0x0006]
    call 0x4ad8
    pop cx
    jmp short 0x5176
    cmp word [bp - 0x0008], byte 3
    jne short 0x5176
    push word [bp - 0x0006]
    call 0x4bcc
    pop cx
    cmp word [0x95e0], byte 1
    jne short 0x5187
    mov word [0x9114], 1
    mov ax, 0
    ret
    cmp word [0x95e0], byte 0xff
    jne short 0x51b6
    mov word [0x9114], 1
    mov ax, 1
    push ax
    call 0xb7e0
    pop cx
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x34]
    sub ah, ah
    push ax
    push word [bp - 0x0006]
    push word [0x91fe]
    call api_idx_00b8
    add sp, byte 6
    mov ax, 0
    ret
    jmp short 0x51d3
    mov ax, 0xffff
    ret
    mov bl, 0xa0
    mov al, byte [gs:0xa16a]
    db 0x6a, 0xa1 ; push -0x5f
    db 0xff, 0xa1
    cmp ax, strict word 5
    jae short 0x51d3
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5dfd]
    jmp near 0x4f8c

    db 0xc3

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
    jne short 0x5213
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
    jmp short 0x5236
    cmp word [bp + 0xa], byte 0xff
    jne short 0x522d
    push word [bp - 0x0030]
    push word [bp - 0x0032]
    call 0xd0be
    add sp, byte 4
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short 0x5236
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
    je short 0x5289
    mov ax, 0x80
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x7], al
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 8
    je short 0x52a0
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 4
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 4
    je short 0x52b1
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 8
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x10
    je short 0x52c2
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x10
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x20
    je short 0x52d3
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x20
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 2
    je short 0x52e4
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
    jne short 0x532e
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    ret
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short 0x52fc
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short 0x52f7
    mov ax, 0xffff
    ret
api_idx_0040:
    mov ax, 0xffc0
    call 0xf40b
    lea ax, word [bp - 0x0034]
    push ax
    mov ax, 0x13ec
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0034]
    push ax
    push word [0x95e4]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13ec
    push ax
    call api_idx_0038
    add sp, byte 0x0c
    mov word [bp - 0x0006], ax
    mov ax, word [0x904e]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0xff
    je short 0x535c
    mov ax, 0x10
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x96
    push ax
    mov ax, 0x3f
    push ax
    push word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    add ax, 0x13ec
    push ax
    call api_idx_0018
    add sp, byte 0x0c
    mov ax, word [bp - 0x0006]
    cmp word [bp - 0x0006], byte 1
    je short 0x53b2
    jmp near 0x544c
    cmp word [0x0e32], byte 0
    jne short 0x53cf
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
    call 0xceb1
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0xffff
    je short 0x5445
    push ax
    call api_idx_0004_7
    pop cx
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x53f6
    mov word [bp - 0x0002], 0xffff
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x5443
    mov ax, word [bp - 0x0004]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], dx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6a1a]
    push word [bx - 0x6a4a]
    mov ax, 0x248
    imul word [bp - 0x0008]
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
    add ax, 0x5c34
    push ax
    push word [bx - 0x69f2]
    push word [bp - 0x0008]
    call api_idx_004c
    add sp, byte 0x0a
    jmp short 0x544a
    mov word [bp - 0x0002], 0xffff
    jmp short 0x547e
    cmp word [bp - 0x0006], byte 2
    jne short 0x547e
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6a1a]
    push word [bx - 0x6a4a]
    lea ax, word [bp - 0x0040]
    push ax
    push word [bx - 0x69f2]
    mov ax, 0
    push ax
    call api_idx_004c
    add sp, byte 0x0a
    lea ax, word [bp - 0x0040]
    push ax
    call api_idx_0004_5
    pop cx
    call api_idx_0006_2
    cmp word [bp - 0x0002], byte 0xff
    je short 0x54ed
    dec word [0x95e4]
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0004], ax
    jmp short 0x54e4
    mov ax, 0x16
    imul word [bp - 0x0004]
    add ax, 0x9414
    push ax
    mov ax, 0x16
    imul word [bp - 0x0004]
    add ax, 0x93fe
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f0]
    mov word [bx - 0x69f2], ax
    mov ax, word [bx - 0x6a48]
    mov word [bx - 0x6a4a], ax
    mov ax, word [bx - 0x6c50]
    mov word [bx - 0x6c52], ax
    mov ax, word [bx - 0x6c28]
    mov word [bx - 0x6c2a], ax
    mov ax, word [bx - 0x69c8]
    mov word [bx - 0x69ca], ax
    mov ax, word [bx - 0x6a18]
    mov word [bx - 0x6a1a], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x95e4]
    jl short 0x5490
    cmp word [0x95e4], byte 0
    jle short 0x54f7
    jmp near 0x535c
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
api_idx_0006_3:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [0x8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0004], ax
    cmp word [bx + si + 0x1e0], byte 0
    jle short 0x553b
    mov ax, 0
    push ax
    push word [bx + si + 0x1e0]
    call 0xd87
    add sp, byte 4
    cmp word [0x830c], byte 0x0e
    je short 0x5545
    jmp near 0x55c3
    cmp word [0x8f3e], byte 8
    je short 0x554f
    jmp near 0x55c3
    cmp word [0x8f42], byte 7
    jne short 0x55c3
    cmp word [0x8f40], byte 2
    jne short 0x55c3
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    mov word [bp - 0x0002], 0
    jmp short 0x55ba
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short 0x55b7
    mov ax, 0xc8
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5da1]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jle short 0x55b7
    mov ax, 0x32
    push ax
    mov ax, 0xa
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, 5
    push ax
    mov ax, 0x149b
    push ax
    push word [bp - 0x0002]
    call api_idx_0056
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x556c
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    push word [bp - 0x0006]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short 0x561f
    mov ax, 0
    push ax
    push word [bp - 0x0006]
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
    push word [bp - 0x0004]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short 0x5688
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
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    cmp word [bp - 0x0006], byte 1
    jle short 0x5688
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
api_idx_0002_3:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x2f
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x56ae
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short 0x568f
    ret
loc_56af:
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x4], strict word 0x190
    jl short 0x56c8
    cmp word [bp + 0x4], strict word 0x19b
    jge short 0x56c8
    mov ax, 1
    jmp short 0x56cb
    mov ax, 0
    ret
api_idx_0002_4:
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
    jl short 0x571b
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
    je short 0x5788
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
loc_5789:
    mov ax, 0xfe5c
    call 0xf40b
    mov ax, 0
    push ax
    push word [0x84a0]
    lea ax, word [bp - 0x003a]
    push ax
    mov ax, 7
    push ax
    call 0xb63c
    add sp, byte 8
    mov word [0x84a0], 0xffff
    cmp byte [bp - 0x0005], 0
    jbe short 0x57e5
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
    lea ax, word [bp - 0x003a]
    push ax
    call api_idx_007a
    pop cx
    cmp ax, strict word 0xffff
    jne short 0x57dd
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    ret
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [0x905e], byte 0x15
    jne short 0x57ef
    call api_idx_0006_3
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    mov word [bp - 0x0086], 0
    mov word [bp - 0x0088], 0
    mov word [bp - 0x008a], 0
    mov word [bp - 0x008c], 0
    mov word [0x95e4], 0
    cmp word [0x849e], byte 0xff
    jne short 0x581f
    jmp near 0x58aa
    mov ax, 0x26
    imul word [0x849e]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jle short 0x5832
    jmp near 0x58aa
    mov word [bp - 0x0002], 0
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [0x849e]
    add ax, 0x8502
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x5876
    push word [bp - 0x0002]
    push word [0x849e]
    mov ax, 0x15
    push ax
    call api_idx_0002_4
    add sp, byte 6
    mov ax, word [bp - 0x0002]
    add ax, 0x190
    mov cx, word [0x95e4]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x69f2], ax
    inc word [0x95e4]
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [0x849e]
    add ax, 0x8504
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x589f
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x8822
    push ax
    call 0xec41
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short 0x5837
    mov word [bp - 0x0002], 0
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov al, byte [bx - 0x0035]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jl short 0x58d1
    jmp near 0x59b2
    mov al, byte [bx - 0x0036]
    sub ah, ah
    jmp near 0x599d
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x003a]
    mov cx, word [bx - 0x0038]
    sub ax, cx
    push ax
    call 0xb7a9
    pop cx
    cwd
    push ax
    push dx
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0038]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    add word [bp - 0x0088], ax
    adc word [bp - 0x0086], dx
    jmp near 0x59b2
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x003a]
    mov cx, word [bx - 0x0038]
    mov bx, cx
    imul bx
    add word [bp - 0x008c], ax
    adc word [bp - 0x008a], dx
    jmp near 0x59b2
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    push word [bx - 0x0038]
    call 0xb7a9
    pop cx
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov cx, word [bx - 0x003a]
    pop ax
    add ax, cx
    mov cx, word [0x95e4]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x69f2], ax
    push ax
    call 0x56af
    pop cx
    test ax, ax
    je short 0x5989
    mov ax, word [0x95e4]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f2]
    add ax, 0xfe70
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x15
    push ax
    call api_idx_0002_4
    add sp, byte 6
    mov ax, word [0x95e4]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x69f2], byte 0
    jle short 0x599b
    inc word [0x95e4]
    jmp short 0x59b2
    cmp ax, strict word 1
    jne short 0x59a5
    jmp near 0x58d9
    cmp ax, strict word 2
    je short 0x5935
    cmp ax, strict word 4
    jne short 0x59b2
    jmp near 0x5916
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short 0x59c0
    jmp near 0x58af
    mov word [bp - 0x0084], 0
    mov word [bp - 0x0002], 0
    jmp short 0x59e3
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short 0x59e0
    inc word [bp - 0x0084]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x59cd
    cmp word [bp - 0x0084], byte 0
    jne short 0x59fa
    mov word [0x830a], 8
    ret
    mov ax, word [bp - 0x0088]
    mov dx, word [bp - 0x0086]
    push ax
    push dx
    mov ax, word [bp - 0x0084]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call 0xf99f
    mov word [bp - 0x0086], dx
    mov word [bp - 0x0088], ax
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
    lea ax, word [bp - 0x00b4]
    push ax
    mov ax, 0x138d
    push ax
    call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0002], 0
    jmp near 0x5c38
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x69f2], byte 0
    jg short 0x5a62
    jmp near 0x5c35
    mov ax, 0
    push ax
    push word [bx - 0x69f2]
    lea ax, word [bp - 0x0082]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    mov al, byte [bp - 0x004b]
    sub ah, ah
    test ax, 1
    je short 0x5a9a
    lea ax, word [bp - 0x0082]
    push ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x93fe
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x5ab3
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x93fe
    push ax
    mov al, byte [bp - 0x0049]
    sub ah, ah
    add ax, 0x1770
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x93fe
    push ax
    lea ax, word [bp - 0x01a4]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x01a4]
    push ax
    call api_idx_0002_3
    pop cx
    mov al, byte [bp - 0x004a]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short 0x5afa
    push word [bp - 0x0066]
    push word [bp - 0x0068]
    call 0xd0be
    add sp, byte 4
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a4a], ax
    jmp short 0x5b07
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a4a], 0xffff
    mov al, byte [bp - 0x0049]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6c2a], ax
    mov word [bx - 0x6c52], 0
    mov al, byte [bp - 0x004b]
    sub ah, ah
    test ax, 2
    je short 0x5b2c
    mov ax, 1
    jmp short 0x5b2f
    mov ax, 0
    mov word [bx - 0x69ca], ax
    mov al, byte [bp - 0x004b]
    sub ah, ah
    test ax, 1
    je short 0x5b42
    mov ax, 1
    jmp short 0x5b45
    mov ax, 0
    mov word [bx - 0x6a1a], ax
    lea ax, word [bp - 0x00b4]
    push ax
    lea ax, word [bp - 0x0104]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0154]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a4a], byte 0
    jle short 0x5b72
    mov ax, word [bx - 0x6a4a]
    jmp short 0x5b75
    mov ax, 1
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0x25
    push ax
    lea ax, word [bp - 0x0154]
    push ax
    lea ax, word [bp - 0x0104]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x24
    push ax
    mov ax, 0
    cmp byte [bp - 0x01a4], 0x3f
    jne short 0x5ba1
    mov ax, 1
    lea cx, word [bp - 0x01a4]
    add ax, cx
    push ax
    lea ax, word [bp - 0x0104]
    push ax
    call 0xb300
    add sp, byte 6
    mov al, byte [bp - 0x004b]
    sub ah, ah
    test ax, 1
    je short 0x5c21
    lea ax, word [bp - 0x0104]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov al, byte [bp - 0x004a]
    sub ah, ah
    jmp short 0x5c12
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0104]
    add ax, cx
    push ax
    mov ax, 0x1398
    push ax
    call 0xb53b
    add sp, byte 4
    jmp short 0x5c21
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0104]
    add ax, cx
    push ax
    mov ax, 0x1399
    push ax
    call 0xb53b
    add sp, byte 4
    jmp short 0x5c21
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0104]
    add ax, cx
    push ax
    mov ax, 0x139a
    push ax
    call 0xb53b
    add sp, byte 4
    jmp short 0x5c21
    cmp ax, strict word 0xc
    je short 0x5bd0
    cmp ax, strict word 0xd
    je short 0x5be6
    cmp ax, strict word 0x10
    je short 0x5bfc
    mov ax, 1
    push ax
    push ax
    push word [0x91d4]
    lea ax, word [bp - 0x0104]
    push ax
    call 0xeb2
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x95e4]
    jge short 0x5c44
    jmp near 0x5a51
    cmp word [bp - 0x0086], byte 0
    jl short 0x5c54
    jne short 0x5c56
    cmp word [bp - 0x0088], byte 0
    ja short 0x5c56
    jmp short 0x5ca3
    lea ax, word [bp - 0x0104]
    push ax
    mov ax, 0x138a
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0154]
    push ax
    push word [bp - 0x0086]
    push word [bp - 0x0088]
    call 0xb1db
    add sp, byte 6
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x0154]
    push ax
    lea ax, word [bp - 0x0104]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x55
    push ax
    mov ax, 0
    push ax
    push word [0x91d4]
    lea ax, word [bp - 0x0104]
    push ax
    call 0xeb2
    add sp, byte 8
    cmp word [bp - 0x008a], byte 0
    jl short 0x5cb3
    jne short 0x5cb5
    cmp word [bp - 0x008c], byte 0
    ja short 0x5cb5
    jmp short 0x5d02
    lea ax, word [bp - 0x0104]
    push ax
    mov ax, 0x138b
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0154]
    push ax
    push word [bp - 0x008a]
    push word [bp - 0x008c]
    call 0xb1db
    add sp, byte 6
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x0154]
    push ax
    lea ax, word [bp - 0x0104]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x41
    push ax
    mov ax, 1
    push ax
    push word [0x91d4]
    lea ax, word [bp - 0x0104]
    push ax
    call 0xeb2
    add sp, byte 8
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
    mov word [bp - 0x0002], 0
    jmp short 0x5d5b
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short 0x5d58
    mov ax, word [bp - 0x008c]
    mov dx, word [bp - 0x008a]
    add word [bx + 0x5c00], ax
    adc word [bx + 0x5c02], dx
    mov ax, word [bp - 0x0088]
    mov dx, word [bp - 0x0086]
    add word [bx + 0x5c08], ax
    adc word [bx + 0x5c0a], dx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x5d29
    cmp word [0x95e4], byte 0
    jle short 0x5d6e
    call api_idx_0040
    mov word [0x9114], 0
    call 0x7de
    mov ax, 2
    push ax
    call api_idx_0004
    pop cx
    ret
api_idx_00a8:
    mov ax, 0xff58
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    jmp short 0x5da7
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short 0x5da4
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x5d92
    mov ax, word [0x84a2]
    mov dx, word [0x84a4]
    mov cx, 0x14
    mov bx, 0
    call 0xf99f
    push ax
    push dx
    mov ax, word [0x69c8]
    sub ax, word [bp - 0x0004]
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
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0008]
    mov dx, word [bp - 0x0006]
    add word [0x84a2], ax
    adc word [0x84a4], dx
    mov ax, word [0x84a2]
    mov dx, word [0x84a4]
    push ax
    push dx
    mov ax, word [bp - 0x0004]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call 0xf99f
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x1389
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00a8]
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call 0xb1db
    add sp, byte 6
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 0x41
    push ax
    mov ax, 0
    push ax
    push word [0x91d4]
    lea ax, word [bp - 0x0058]
    push ax
    call 0xeb2
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp short 0x5e7e
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short 0x5e7b
    mov ax, word [bp - 0x0008]
    mov dx, word [bp - 0x0006]
    add word [bx + 0x5c00], ax
    adc word [bx + 0x5c02], dx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x5e5e
    ret
api_idx_0006_4:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [bp + 0x8]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0004], ax
    mov ax, word [0x0e10]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short 0x5ef1
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short 0x5eea
    mov al, byte [bx + 0x1]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short 0x5eea
    cmp word [bp + 0x6], byte 6
    jne short 0x5ede
    mov ax, word [bx + 0x2]
    cmp ax, word [bp + 0x8]
    jne short 0x5edc
    mov ax, word [bp - 0x0002]
    ret
    jmp short 0x5eea
    mov ax, word [bx + 0x2]
    cmp ax, word [bp - 0x0004]
    jne short 0x5eea
    mov ax, word [bp - 0x0002]
    ret
    add word [bp - 0x0006], byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x590e]
    jl short 0x5eb4
    mov ax, 0xffff
    ret
api_idx_0004_8:
    mov ax, 0xfffc
    call 0xf40b
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0006_4
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x5f3d
    mov ax, word [0x590e]
    mov word [bp - 0x0002], ax
    inc word [0x590e]
    mov ax, word [0x590e]
    cmp ax, 0x200
    jl short 0x5f3d
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x5f33
    mov ax, 6
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [0x0e10]
    add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [bp + 0x4]
    mov bx, word [bp - 0x0004]
    mov byte [bx], al
    mov al, byte [bp + 0x6]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x1], al
    mov ax, word [bp + 0x8]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0xc]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0x6]
    jmp short 0x5fe1
    mov ax, word [bp + 0xe]
    mov cx, 4
    shl ax, cl
    add ax, word [bp + 0x10]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0x12]
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0x14]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short 0x5fee
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short 0x5fee
    mov ax, word [bp + 0xe]
    xchg al, ah
    sub al, al
    add ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short 0x5fee
    mov ax, word [bp + 0x8]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short 0x5fee

    db 0xc6, 0xaf, 0xe9, 0xaf, 0xe9, 0xaf, 0xe9, 0xaf, 0xe9, 0xaf, 0xf4, 0xaf, 0x06, 0xb0

    cmp ax, strict word 7
    jae short 0x5fee
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x4fe6]
    ret
api_idx_006a:
    mov ax, 0xff96
    call 0xf40b
    mov word [0x911c], 0x8d
    mov word [0x904e], 0xffff
    mov word [bp - 0x0006], 0x37
    mov word [bp - 0x0008], 0x8f
    mov word [bp - 0x000a], 0x108
    mov word [bp - 0x000c], 0xc5
    mov ax, 0x90e3
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0018], ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call 0xbc9a
    add sp, byte 8
    lea ax, word [bp - 0x006a]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x1c
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 9
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 0xc
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, strict word 9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x15
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
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2d
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
    mov ax, 0x90e9
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0069]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d7c]
    sub ah, ah
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0x90eb
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1b
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2d
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x006a]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x006a]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xe
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1d
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x17
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5e
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call 0x242c
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short 0x6233
    jmp near 0x6197
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
    jmp short 0x62aa
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    mov ax, word [bp - 0x0002]
    inc ax
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jl short 0x6268
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x0016], 1
    mov word [bp - 0x001c], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d7c]
    sub ah, ah
    push ax
    mov ax, 3
    imul word [bp + 0xe]
    mov cx, ax
    pop ax
    sub ax, cx
    mov cx, word [bx + 0x5c18]
    add ax, cx
    mov word [bp - 0x001a], ax
    cmp byte [bx + 0x5e2d], 3
    jne short 0x6327
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    add word [bp - 0x001a], ax
    mov word [bp - 0x001c], 2
    jmp short 0x634b
    mov al, byte [bx + 0x5e2d]
    cmp al, 0xd
    je short 0x6337
    cmp al, 4
    je short 0x6337
    cmp al, 6
    jne short 0x634b
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    add word [bp - 0x001a], ax
    mov word [bp - 0x001c], 1
    mov ax, 0x5f
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x001a]
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x001a], ax
    mov ax, word [bp + 0xa]
    mov word [bp - 0x001e], ax
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0002], 0
    jmp near 0x648e
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002a], byte 0
    je short 0x6391
    jmp near 0x648b
    push word [bp - 0x001a]
    call 0xb7a9
    pop cx
    mov word [bp - 0x0014], ax
    mov ax, 1
    push ax
    call 0xf096
    pop cx
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 9
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x0014]
    call 0xb2e7
    add sp, byte 6
    mov ax, 0
    push ax
    call 0xf096
    pop cx
    mov ax, word [bp - 0x001a]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x69a2]
    sub ax, cx
    mov cx, 3
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bx - 0x69a2]
    sub ax, cx
    cmp ax, word [bp - 0x0014]
    jge short 0x640c
    mov ax, 1
    jmp short 0x640f
    mov ax, 0
    add bx, bp
    mov word [bx - 0x0036], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69a2]
    cmp ax, word [bp - 0x0014]
    jge short 0x6429
    mov ax, 1
    jmp short 0x642c
    mov ax, 0
    add bx, bp
    mov word [bx - 0x0042], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0036], byte 0
    jne short 0x6445
    mov ax, 0x1a
    jmp short 0x645c
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0042], byte 0
    je short 0x6459
    mov ax, 0x37
    jmp short 0x645c
    mov ax, 0x56
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1d
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x17
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5e
    push ax
    call 0xe901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short 0x6499
    jmp near 0x637f
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xd1
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call 0xe8da
    add sp, byte 8
    call 0x86b
    test ax, ax
    jne short 0x64ca
    mov ax, 0x19
    push ax
    call 0xe489
    pop cx
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0012], ax
    cmp word [0x5b3e], byte 1
    je short 0x64e0
    jmp near 0x66a9
    jmp near 0x669e
    cmp word [bp + 0x8], byte 0
    je short 0x6531
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 0xffff
    mov word [bp - 0x0016], 0
    jmp near 0x66a9
    mov ax, word [bp - 0x0012]
    dec ax
    mov word [bp - 0x0002], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002a], byte 0
    je short 0x654a
    jmp near 0x669c
    mov word [bx - 0x002a], 1
    push word [bx - 0x002a]
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call 0x242c
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 4
    push ax
    call 0xb7e0
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0036], byte 0
    jne short 0x65e5
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x65d6
    mov word [bp + 0xc], 1
    mov ax, word [bp + 0xc]
    inc ax
    mov word [0x9050], ax
    mov word [bp - 0x0016], 0
    jmp near 0x669c
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0042], byte 0
    je short 0x65f7
    jmp near 0x6676
    mov ax, 0xc8
    push ax
    call 0xe489
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x002a], 0
    push word [bx - 0x002a]
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call 0x242c
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 4
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x669c
    dec word [bp - 0x001e]
    jne short 0x669c
    cmp word [bp - 0x001c], byte 0
    je short 0x6691
    push word [bp - 0x001c]
    mov ax, 0x10
    push ax
    push word [bp + 0x4]
    call 0xf54
    add sp, byte 6
    mov word [0x9050], 0
    mov word [bp - 0x0016], 0
    jmp short 0x66a9
    cmp ax, strict word 0
    jne short 0x66a6
    jmp near 0x64e3
    jmp near 0x6534
    cmp word [bp - 0x0016], byte 0
    je short 0x66b2
    jmp near 0x6377
    push word [0x905a]
    call api_idx_0004
    pop cx
    mov word [0x911c], 0x8f
    mov ax, 1
    push ax
    push word [bp - 0x0018]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [0x9050]
    ret
api_idx_0074:
    mov ax, 0xff8c
    call 0xf40b
    mov word [0x911c], 0x8d
    mov word [0x904e], 0xffff
    mov word [bp - 0x0006], 0x37
    mov word [bp - 0x0008], 0x8f
    mov word [bp - 0x000a], 0x108
    mov word [bp - 0x000c], 0xc5
    mov ax, 0x90ee
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0024], ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call 0xbc9a
    add sp, byte 8
    lea ax, word [bp - 0x004c]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x1c
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 9
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 0xc
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, strict word 9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x0074]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0074]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x004c]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add ax, 0x93
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 4
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x9b
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add ax, 0x93
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call 0xe84e
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x60
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x60
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x60
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, word [bp + 0xe]
    mov cx, 2
    cwd
    idiv cx
    add ax, strict word 4
    cmp ax, word [bp - 0x0002]
    jle short 0x696b
    mov ax, 0x1a
    jmp short 0x696e
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x60
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call 0xe901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jge short 0x69b1
    jmp near 0x68b5
    mov ax, 0xd
    push ax
    mov ax, 0x48
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    mov ax, 1
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
    mov ax, 2
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0x37
    cmp word [bp + 0xc], byte 0
    je short 0x6a49
    mov ax, 0x1a
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0018], 1
    mov word [bp - 0x001c], 0
    mov word [bp - 0x0022], 0
    mov word [bp - 0x0002], 0
    jmp near 0x6aec
    push word [bp - 0x0002]
    call 0xca85
    pop cx
    test ax, ax
    je short 0x6ae9
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c10]
    mov bx, 0x64
    imul bx
    push ax
    push dx
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call 0xf99f
    push ax
    push dx
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
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
    mov cx, 0x64
    mov bx, 0
    call 0xf99f
    mov word [bp - 0x0020], ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    mov cx, 3
    cwd
    idiv cx
    add ax, word [bp - 0x0022]
    mov cx, ax
    mov ax, word [bp - 0x0020]
    add cx, ax
    mov word [bp - 0x0022], cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jge short 0x6af8
    jmp near 0x6a63
    cmp word [bp - 0x0022], byte 0
    jg short 0x6b0a
    mov ax, word [bp + 0xc]
    inc ax
    mov word [0x9050], ax
    mov word [bp - 0x0018], 0
    mov ax, word [bp - 0x001c]
    mov word [bp - 0x0002], ax
    push ax
    call 0xca85
    pop cx
    test ax, ax
    jne short 0x6b1c
    jmp near 0x6c15
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    dec word [bx + 0x5c10]
    jg short 0x6b49
    mov ax, 6
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
    mov word [bx + 0x5c10], 0
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0012], ax
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0014], ax
    mov ax, word [bp - 0x0002]
    jmp near 0x6c06
    mov ax, 0x8d
    push ax
    mov ax, word [bp - 0x0012]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0012]
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0014]
    add ax, strict word 0x2b
    push ax
    mov ax, 0x35
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0012]
    call 0xe8da
    add sp, byte 8
    jmp short 0x6c15
    mov ax, 0x8d
    push ax
    mov ax, word [bp - 0x0012]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0012]
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0014]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0012]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0014]
    mov ax, 0x10a
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x6c15
    mov ax, word [bp - 0x0014]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0012]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0012]
    call 0xe8da
    add sp, byte 8
    jmp short 0x6c15
    cmp ax, strict word 4
    jne short 0x6c0e
    jmp near 0x6b86
    cmp ax, strict word 5
    je short 0x6bb6
    jmp short 0x6bea
    mov ax, word [bp - 0x001c]
    inc ax
    cwd
    idiv word [0x69c8]
    mov word [bp - 0x001c], dx
    push word [bp - 0x0022]
    call 0xb7a9
    pop cx
    push ax
    push word [bp - 0x0022]
    call 0xb7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0022]
    add ax, word [bp - 0x0022]
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x001a], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xffe2
    mov cx, 6
    cwd
    idiv cx
    cmp ax, word [bp - 0x0002]
    jle short 0x6c5f
    mov ax, word [bp - 0x001e]
    jmp short 0x6c62
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x60
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call 0xe901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jl short 0x6c49
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xcc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call 0xe8da
    add sp, byte 8
    call 0x86b
    test ax, ax
    jne short 0x6cd3
    mov ax, 0x19
    push ax
    call 0xe489
    pop cx
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0016], ax
    cmp word [0x5b3e], byte 1
    je short 0x6ce9
    jmp near 0x6e27
    jmp near 0x6e1a
    cmp word [bp + 0x8], byte 0
    jne short 0x6cf5
    jmp near 0x6dc8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0x242c
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 0xc
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, strict word 9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 4
    push ax
    call 0xb7e0
    pop cx
    mov ax, word [bp + 0xe]
    mov cx, 2
    cwd
    idiv cx
    add ax, strict word 4
    push ax
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xffe2
    mov cx, 6
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cmp ax, cx
    jg short 0x6dbc
    mov word [0x9050], 0
    mov word [bp - 0x0018], 0
    jmp short 0x6dc8
    mov ax, word [bp + 0xc]
    inc ax
    mov word [0x9050], ax
    mov word [bp - 0x0018], 0
    jmp short 0x6e27
    cmp word [bp + 0xa], byte 0
    je short 0x6e18
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 0xffff
    mov word [bp - 0x0018], 0
    jmp short 0x6e27
    cmp ax, strict word 0
    jne short 0x6e22
    jmp near 0x6cec
    cmp ax, strict word 1
    je short 0x6dca
    cmp word [bp - 0x0018], byte 0
    je short 0x6e30
    jmp near 0x6a56
    push word [0x905a]
    call api_idx_0004
    pop cx
    mov word [0x911c], 0x8f
    mov ax, 1
    push ax
    push word [bp - 0x0024]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [0x9050]
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0002], ax
    jmp short 0x6ea2
    mov ax, word [bp - 0x0002]
    mov cx, 8
    cwd
    idiv cx
    mov si, ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + si]
    cbw
    push ax
    mov ax, word [bp - 0x0002]
    cwd
    idiv cx
    mov cx, dx
    mov dx, 1
    shl dx, cl
    mov cx, dx
    not cx
    pop ax
    and ax, cx
    mov byte [bx + si], al
    inc word [bp - 0x0002]
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    cmp ax, word [bp - 0x0002]
    jg short 0x6e77
    ret
api_idx_0004_9:
    mov ax, 0xfffc
    call 0xf40b
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov ax, word [0x0e12]
    add ax, cx
    add ax, 0x3c0
    mov word [bp - 0x0004], ax
    mov ax, word [0x82ee]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov cx, 8
    cwd
    idiv cx
    mov si, ax
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + si]
    cbw
    push ax
    mov ax, word [bp - 0x0002]
    cwd
    idiv cx
    mov cx, dx
    mov dx, 1
    shl dx, cl
    mov cx, dx
    not cx
    pop ax
    and ax, cx
    mov byte [bx + si], al
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 8
    cwd
    idiv cx
    mov si, ax
    mov al, byte [bx + si]
    cbw
    push ax
    mov ax, word [bp - 0x0002]
    inc ax
    cwd
    idiv cx
    mov cx, dx
    mov dx, 1
    shl dx, cl
    mov cx, dx
    pop ax
    or ax, cx
    mov byte [bx + si], al
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x3c0]
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    mov ax, 6
    push ax
    push word [0x830c]
    call api_idx_0004_8
    add sp, byte 0x12
    ret
loc_6f41:
    mov ax, 0
    call 0xf40b
    mov ax, word [0x82ee]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7302], 0
    push ax
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov ax, word [0x0e12]
    add ax, cx
    add ax, 0x3c0
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x3c0]
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    mov ax, 6
    push ax
    push word [0x830c]
    call api_idx_0004_8
    add sp, byte 0x12
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    cmp word [bx + si], byte 0
    jle short 0x6fe6
    mov ax, 0
    push ax
    push word [bx + si]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, word [bp + 0x4]
    inc ax
    mov word [0x8d12], ax
    cmp word [bp + 0x6], byte 0
    je short 0x6ff4
    mov ax, 1
    push ax
    call 0xb7e0
    pop cx
    ret
api_idx_0034:
    mov ax, 0xffcc
    call 0xf40b
    call 0xec17
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0006], ax
    mov si, word [bp + 0x6]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x0002], ax
    mov ax, 5
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov cx, 3
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x000a], ax
    cmp ax, strict word 6
    jle short 0x7044
    mov word [bp - 0x000a], 6
    mov word [bp - 0x000c], 0
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 2
    push ax
    mov ax, word [0x82ee]
    shl ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xed3a
    add sp, byte 6
    cmp ax, strict word 2
    jne short 0x708f
    mov ax, word [0x8f46]
    add ax, word [0x8f44]
    cwd
    idiv word [bp - 0x000a]
    mov ax, dx
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x69a2], 0x64
    mov word [bp - 0x000c], 1
    cmp word [bp + 0x8], byte 0
    jne short 0x70b4
    push word [bp - 0x0004]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 1
    push ax
    mov ax, 0x83c
    push ax
    push word [bp + 0x4]
    call api_idx_006a
    add sp, byte 0x0c
    mov word [bp - 0x0008], ax
    jmp short 0x70e3
    mov ax, word [bp - 0x0004]
    cmp word [bp - 0x000c], byte 0
    je short 0x70c0
    mov ax, 0x14
    push ax
    push word [bp - 0x000c]
    mov ax, 1
    push ax
    push ax
    mov ax, 0x837
    cmp word [0x5b6e], byte 1
    jne short 0x70d6
    mov ax, 0x844
    push ax
    push word [bp + 0x4]
    call api_idx_0074
    add sp, byte 0x0c
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0008], byte 0xff
    je short 0x714d
    cmp word [bp - 0x0008], byte 0
    jne short 0x70fe
    mov ax, 1
    push ax
    push word [bp + 0x6]
    call 0x6f41
    add sp, byte 4
    jmp short 0x710b
    cmp word [bp - 0x0008], byte 2
    jne short 0x710b
    push word [bp + 0x6]
    call api_idx_0004_9
    pop cx
    lea ax, word [bp - 0x0034]
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x841
    push ax
    call 0xb53b
    add sp, byte 4
    cmp word [bp - 0x0008], byte 0
    jne short 0x713a
    mov ax, 0x55
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0034]
    push ax
    call 0xeb2
    add sp, byte 8
    jmp short 0x714d
    mov ax, 0x16
    push ax
    mov ax, 1
    push ax
    push ax
    lea ax, word [bp - 0x0034]
    push ax
    call 0xeb2
    add sp, byte 8
    mov ax, word [bp - 0x0008]
    ret
api_idx_0072:
    mov ax, 0xff8e
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0022], ax
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x001e], ax
    mov ax, 5
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x001e]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x69a2], 2
    mov word [bp - 0x0004], 0
    jmp short 0x71b8
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add word [bx - 0x69a2], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0020]
    jl short 0x71a2
    mov ax, 0x5f
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x69a2]
    call 0xb7c2
    add sp, byte 6
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x69a2], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x718e
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x001a], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jle short 0x71f4
    mov word [bp - 0x0014], 0xffff
    mov word [0x9126], 1
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov word [0x9126], 0
    lea ax, word [bp - 0x001a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, 3
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x34
    push ax
    mov ax, 8
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0
    push ax
    mov ax, 0x834
    push ax
    call 0x8441
    add sp, byte 0x1a
    mov word [bp - 0x001c], ax
    lea ax, word [bp - 0x0072]
    push ax
    mov ax, word [bp - 0x001c]
    add ax, 0x834
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x34
    push ax
    mov ax, 8
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x52
    push ax
    push word [0x9052]
    lea ax, word [bp - 0x0072]
    push ax
    call api_idx_0008_2
    add sp, byte 0x12
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov ax, word [bp - 0x001c]
    jmp short 0x7305
    cmp word [0x0e32], byte 0
    jne short 0x72ba
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    call 0xceb1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short 0x72e7
    push ax
    call 0xca85
    pop cx
    test ax, ax
    je short 0x72e7
    mov ax, 0
    push ax
    push word [bp + 0x4]
    push word [bp - 0x0006]
    call api_idx_0034
    add sp, byte 6
    test ax, ax
    jne short 0x72e7
    mov word [bp - 0x001c], 2
    jmp short 0x730f
    mov ax, 1
    push ax
    push word [bp + 0x4]
    mov ax, 0
    push ax
    call api_idx_0034
    add sp, byte 6
    test ax, ax
    jne short 0x7303
    mov word [bp - 0x001c], 2
    jmp short 0x730f
    cmp ax, strict word 0
    je short 0x72ab
    cmp ax, strict word 1
    je short 0x72e9
    cmp word [bp - 0x001c], byte 2
    je short 0x7318
    jmp near 0x7212
    ret
api_idx_0004_10:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, word [bp + 0x6]
    cmp word [bp + 0x8], byte 0
    jne short 0x732b
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x4]
    cmp word [bp + 0x8], byte 0
    jne short 0x733a
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0002], byte 0
    je short 0x7375
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
    je short 0x73ad
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
api_idx_00e6:
    mov ax, 0xff1a
    call 0xf40b
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    cmp byte [bx + si + 0xa50], 0
    jbe short 0x73e2
    mov ax, 0
    push ax
    shl si, 1
    mov ax, word [bx + si]
    push ax
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    call 0xd87
    add sp, byte 4
    mov ax, word [0x8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0008], ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x000e], ax
    mov ax, 4
    push ax
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0014], ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0016], ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0018], ax
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x001a], ax
    mov ax, 1
    push ax
    mov ax, 0xe
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x001c], ax
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0022], ax
    mov ax, word [0x8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si]
    mov word [bp - 0x000a], ax
    cmp word [bp - 0x001a], byte 0
    jne short 0x74b7
    mov ax, 0x9128
    push ax
    push word [bp - 0x000a]
    call 0xb53b
    add sp, byte 4
    inc word [bp - 0x000a]
    lea ax, word [bp - 0x00c2]
    push ax
    push word [bp - 0x000a]
    call 0xb53b
    add sp, byte 4
    inc word [bp - 0x000a]
    mov word [bp - 0x0002], 0
    jmp short 0x74e1
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x00e2], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x000e]
    jl short 0x74cf
    mov ax, word [bp - 0x000e]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x00e2], 0xffff
    mov word [0x9126], 1
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [bp - 0x001a], byte 1
    je short 0x750f
    jmp near 0x762a
    lea ax, word [bp - 0x0072]
    push ax
    push word [bp - 0x000a]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0072]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x000c], ax
    lea ax, word [bp - 0x00e2]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000e]
    mov ax, 3
    push ax
    mov ax, 0xc
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    add ax, strict word 4
    push ax
    push word [bp - 0x000c]
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x000a]
    call 0x8441
    add sp, byte 0x1a
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0072]
    push ax
    mov ax, word [bp - 0x000a]
    add ax, word [bp - 0x0006]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 3
    push ax
    mov ax, 0xc
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    add ax, strict word 4
    push ax
    push word [bp - 0x000c]
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    push ax
    push word [0x9052]
    lea ax, word [bp - 0x0072]
    push ax
    call api_idx_0008_2
    add sp, byte 0x12
    mov ax, word [0x905a]
    mov cx, 2
    cwd
    idiv cx
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov al, byte [bx - 0x00c2]
    sub ah, ah
    mov cx, 0xa
    imul cx
    push ax
    mov al, byte [bx - 0x00c1]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0xfdf0
    mov word [bp - 0x0012], ax
    cmp ax, strict word 0
    jle short 0x7627
    cmp ax, 0x80
    jge short 0x7627
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    jmp near 0x7820
    mov word [bp - 0x001e], 0
    mov word [bp - 0x0020], 0
    mov word [bp - 0x0002], 0
    jmp near 0x77d3
    lea ax, word [bp - 0x0072]
    push ax
    push word [bp - 0x000a]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0072]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000e], byte 6
    jle short 0x7689
    mov cx, 6
    imul cx
    mov cx, 3
    imul cx
    add ax, strict word 0x3e
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    mov word [bp - 0x00e4], ax
    mov ax, word [bp - 0x000e]
    dec ax
    mov cx, 3
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x00e6], ax
    jmp short 0x76b4
    mov ax, 6
    imul word [bp - 0x000c]
    shl ax, 1
    add ax, strict word 0x28
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    mov word [bp - 0x00e4], ax
    mov ax, word [bp - 0x000e]
    dec ax
    mov cx, 2
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x00e6], ax
    lea ax, word [bp - 0x00e2]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000e]
    push word [bp - 0x00e6]
    mov ax, 0xc
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, 0x9c
    push ax
    push word [bp - 0x00e4]
    mov ax, 0
    push ax
    push word [bp - 0x000a]
    call 0x8441
    add sp, byte 0x1a
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0072]
    push ax
    mov ax, word [bp - 0x000a]
    add ax, word [bp - 0x0006]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    push word [bp - 0x00e6]
    mov ax, 0xc
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, 0x9c
    push ax
    push word [bp - 0x00e4]
    push word [0x9052]
    lea ax, word [bp - 0x0072]
    push ax
    call api_idx_0008_2
    add sp, byte 0x12
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [bp - 0x001c], byte 1
    jne short 0x775a
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x00e2], 0
    cmp word [bp - 0x0016], byte 0
    jne short 0x777c
    mov ax, word [bp - 0x000e]
    dec ax
    cmp ax, word [bp - 0x0006]
    jne short 0x777c
    mov ax, word [bp - 0x0010]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x001e], byte 0
    jne short 0x777a
    mov word [bp - 0x0020], 1
    jmp short 0x77d0
    cmp word [bp - 0x0014], byte 0
    je short 0x778a
    mov ax, 4
    push ax
    call 0xb7e0
    pop cx
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    sub ah, ah
    push ax
    lea ax, word [bp - 0x00c2]
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short 0x77bf
    cmp word [bp - 0x0018], byte 0
    jne short 0x77d0
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov al, byte [bx - 0x00c2]
    sub ah, ah
    add ax, strict word 0xffd0
    cmp ax, word [bp - 0x0006]
    je short 0x77d0
    mov word [bp - 0x001e], 1
    cmp word [bp - 0x0022], byte 1
    jne short 0x77d0
    mov ax, word [bp - 0x0010]
    mov word [bp - 0x0002], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0010]
    jge short 0x77de
    jmp near 0x763c
    cmp word [bp - 0x0020], byte 0
    jne short 0x7820
    mov ax, word [0x8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0008], ax
    push word [bp - 0x001e]
    mov ax, 8
    push ax
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    push ax
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    push ax
    call api_idx_0004_10
    add sp, byte 6
    mov word [0x9126], 0
    inc word [0x8d12]
    ret
loc_782b:
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x4], byte 0
    jle short 0x788e
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    cmp byte [bx + si + 0x960], 0
    jbe short 0x788e
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
    jle short 0x788e
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
loc_788f:
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short 0x78b2
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
    jle short 0x78ec
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    cmp word [bp + 0x6], byte 1
    jle short 0x78ec
    mov ax, 8
    push ax
    call 0xb75e
    pop cx
    ret
api_idx_0074_2:
    mov ax, 0xff8c
    call 0xf40b
    mov ax, word [0x8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0006], ax
    mov ax, 4
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 4
    push ax
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0018], ax
    mov word [bp - 0x0024], 0
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    push word [bp - 0x0006]
    call 0xed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov ax, word [0x8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    cmp word [bx + si], byte 0
    jle short 0x7987
    mov ax, 0
    push ax
    push word [bx + si]
    call 0xd87
    add sp, byte 4
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [bp - 0x0004], byte 4
    jne short 0x79c6
    mov word [bp - 0x0002], 0
    jmp short 0x79ac
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    call 0x788f
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x799c
    mov ax, word [0x905a]
    shl ax, 1
    push ax
    call api_idx_0004
    pop cx
    mov word [0x830a], 8
    ret
    cmp word [bp - 0x0018], byte 0
    jne short 0x79cf
    jmp near 0x7a7a
    cmp word [0x8306], byte 0
    jg short 0x79d9
    jmp near 0x7a7a
    mov word [bp - 0x0010], 1
    lea ax, word [bp - 0x0074]
    push ax
    mov ax, 0x808
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0074]
    push ax
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
    mov word [bp - 0x0020], ax
    mov ax, 0xa3
    push ax
    push word [bp - 0x0020]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xb8
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0xa9
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    add ax, word [bp - 0x0020]
    push ax
    mov ax, 0xa3
    push ax
    push word [bp - 0x0020]
    call 0xe8da
    add sp, byte 8
    mov ax, 0x11
    push ax
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
    push word [0x905a]
    call api_idx_0004
    pop cx
    mov bx, word [0x0e12]
    mov si, word [0x8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x0022], ax
    cmp ax, strict word 0
    jle short 0x7ac3
    cmp ax, strict word 5
    jl short 0x7a9f
    cmp ax, strict word 8
    je short 0x7a9f
    cmp ax, strict word 9
    jne short 0x7aa6
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x7ac3
    push word [bp - 0x0022]
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
    mov ax, word [0x8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0xe
    jne short 0x7ae4
    mov word [bp - 0x000c], 9
    mov word [bp - 0x0024], 1
    mov word [bp - 0x0014], 0
    mov ax, 0x248
    imul word [bp - 0x0014]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short 0x7afd
    inc word [bp - 0x0014]
    jmp short 0x7ae9
    mov ax, word [0x69c8]
    cmp word [bp - 0x0004], byte 0x0c
    jne short 0x7b0a
    mov ax, word [bp - 0x0014]
    inc ax
    mov word [bp - 0x0016], ax
    mov ax, word [0x69c8]
    push ax
    cmp ax, word [bp - 0x0016]
    pop ax
    jle short 0x7b1a
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0016], ax
    cmp word [bp - 0x0004], byte 0x0c
    je short 0x7b3c
    cmp word [bp - 0x0024], byte 1
    je short 0x7b3c
    cmp word [bp - 0x000c], byte 0
    je short 0x7b3c
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 3
    je short 0x7b3c
    cmp ax, strict word 0xd
    jne short 0x7b41
    mov ax, 1
    jmp short 0x7b44
    mov ax, 0
    mov word [bp - 0x0012], ax
    mov ax, word [bp - 0x0014]
    mov word [bp - 0x0002], ax
    jmp near 0x7d67
    mov ax, 0x36
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov cx, ax
    sub ax, word [bp - 0x0008]
    mov cx, ax
    pop ax
    cmp ax, cx
    jg short 0x7b7c
    cmp word [bp - 0x0012], byte 0
    jne short 0x7b7c
    jmp near 0x7d3e
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 0xd
    jne short 0x7b8f
    mov al, byte [bx + 0x5d77]
    sub ah, ah
    sub ax, word [bp - 0x0008]
    jmp short 0x7bb7
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 3
    jne short 0x7ba2
    mov al, byte [bx + 0x5d76]
    sub ah, ah
    sub ax, word [bp - 0x0008]
    jmp short 0x7bb7
    add bx, word [bp - 0x000c]
    mov al, byte [bx + 0x5d9c]
    sub ah, ah
    push ax
    mov ax, 3
    imul word [bp - 0x0008]
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x001e], ax
    mov ax, 1
    cmp word [bp - 0x000c], byte 0
    je short 0x7be5
    mov cx, word [bp - 0x000c]
    cmp cx, byte 0x0d
    je short 0x7be5
    cmp cx, byte 3
    je short 0x7be5
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x001e]
    jle short 0x7be2
    mov ax, 1
    jmp short 0x7be5
    mov ax, 0
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0008]
    mov word [bp - 0x001a], ax
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x001c], ax
    cmp word [bp - 0x001c], byte 0
    jle short 0x7c22
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x001e]
    jge short 0x7c22
    dec word [bp - 0x001c]
    cmp word [bp - 0x001a], byte 0
    jle short 0x7c20
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x001e]
    jge short 0x7c20
    dec word [bp - 0x001a]
    jmp short 0x7bf4
    cmp word [bp - 0x0010], byte 0
    je short 0x7c2b
    jmp near 0x7ceb
    cmp word [bp - 0x000e], byte 0
    jne short 0x7c34
    jmp near 0x7ceb
    cmp word [bp - 0x001a], byte 0
    jg short 0x7c3d
    jmp near 0x7ceb
    cmp word [bp - 0x001c], byte 0
    jg short 0x7c46
    jmp near 0x7ceb
    cmp word [bp - 0x000c], byte 3
    jne short 0x7cae
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp word [bx + 0x5c10], byte 0
    jle short 0x7cae
    push word [bx + 0x5c10]
    mov ax, 1
    push ax
    push word [bp - 0x001a]
    push word [bp - 0x001c]
    push word [bp - 0x001a]
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
    mov cx, ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c10]
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c10], ax
    push word [bp - 0x001c]
    push word [bp - 0x001a]
    push word [bp - 0x0002]
    call api_idx_003e
    add sp, byte 6
    cmp word [bp - 0x000c], byte 3
    jne short 0x7cd4
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    call 0xf54
    add sp, byte 6
    cmp word [bp - 0x000c], byte 0x0d
    jne short 0x7ceb
    mov ax, 1
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0002]
    call 0xf54
    add sp, byte 6
    cmp word [bp - 0x0004], byte 0
    jle short 0x7d3e
    cmp word [bp - 0x0004], byte 6
    jge short 0x7d0f
    push word [bp - 0x0004]
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0004]
    add ax, 0x148d
    push ax
    push word [bp - 0x0002]
    call api_idx_005a
    add sp, byte 8
    jmp short 0x7d3e
    mov ax, word [bp - 0x0008]
    mov cx, word [bp - 0x0004]
    cmp cx, byte 0x0c
    jne short 0x7d1d
    mov ax, 0xff
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0008]
    add cx, byte 0xfa
    mov ax, cx
    push ax
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0004]
    add ax, 0x147c
    push ax
    push word [bp - 0x0002]
    call api_idx_0056
    add sp, byte 0x0e
    cmp word [bp - 0x0024], byte 0
    je short 0x7d64
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d5c], 0
    jne short 0x7d64
    mov ax, 2
    push ax
    mov ax, 0x17
    push ax
    push word [bp - 0x0002]
    call 0xf54
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0016]
    jge short 0x7d72
    jmp near 0x7b50
    mov ax, 2
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [0x8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [0x0e12]
    push word [bx + si + 0x3c0]
    call 0xed3a
    add sp, byte 6
    push ax
    call 0x782b
    pop cx
    inc word [0x8d12]
    ret
loc_7d99:
    mov ax, 0
    call 0xf40b
    call 0xc145
    mov ax, 1
    push ax
    mov ax, 5
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 7
    push ax
    mov ax, 9
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xf
    push ax
    mov ax, 0xd
    push ax
    call 0xd61c
    add sp, byte 4
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
    je short 0x7e0d
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
    call api_idx_000e
    mov ax, 0xc6
    push ax
    mov ax, 0x127
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0x19
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
    mov word [0x91d4], 1
    mov word [0x9124], 5
    mov word [0x911c], 0x8f
    call 0xec17
    mov word [0x9126], 0
    cmp word [bp + 0x4], byte 0
    jle short 0x7eb9
    mov ax, 0x9128
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    ret
loc_7eba:
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9066]
    push word [0x9064]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9062]
    push word [0x9060]
    call 0xe942
    add sp, byte 8
    call api_idx_000e
    mov ax, 0xf
    push ax
    call 0xc12a
    pop cx
    mov ax, 7
    push ax
    call 0xc12a
    pop cx
    mov ax, 5
    push ax
    call 0xd6c6
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov ax, 1
    push ax
    call 0xc12a
    pop cx
    mov ax, 2
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
api_idx_0050:
    mov ax, 0xffb0
    call 0xf40b
    mov ax, 0x138c
    push ax
    call 0x7d99
    pop cx
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
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
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0x7fce
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 2
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
    lea ax, word [bp - 0x0050]
    push ax
    mov ax, 0x1388
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xa9
    push ax
    mov ax, 0xffff
    push ax
    push word [0x91d4]
    lea ax, word [bp - 0x0050]
    push ax
    call 0xeb2
    add sp, byte 8
    cmp word [0x8450], byte 0
    je short 0x8030
    call 0xef83
    test ax, ax
    je short 0x8002
    jmp short 0x7ff9
    mov ax, 0x190
    push ax
    call 0xe489
    pop cx
    push word [0x91d4]
    push word [0x91d4]
    call api_idx_0004_4
    add sp, byte 4
    mov ax, word [0x0110]
    mov word [0x844e], ax
    mov ax, 1
    push ax
    push word [0x844e]
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    cmp word [0x84a4], byte 0
    jl short 0x8040
    jne short 0x8042
    cmp word [0x84a2], byte 0
    ja short 0x8042
    jmp short 0x8045
    call api_idx_00a8
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
    cmp word [0x84a0], byte 0xff
    je short 0x8075
    mov word [0x905e], 0xf
    call 0x5789
    cmp word [0x8450], byte 0
    je short 0x809a
    push word [0x844c]
    push word [0x844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 1
    push ax
    call 0xd907
    pop cx
    mov ax, 0
    push ax
    call 0xd907
    pop cx
    call 0x7eba
    ret
loc_809e:
    mov ax, 0
    call 0xf40b
    mov word [0x849e], 0xffff
    mov ax, 0x138c
    push ax
    call 0x7d99
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [0x84a0], byte 0xff
    je short 0x8117
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0x80f1
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [0x0110]
    mov word [0x844e], ax
    mov ax, 1
    push ax
    push word [0x844e]
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    mov word [0x905e], 0x15
    call 0x5789
    cmp word [0x8450], byte 0
    je short 0x8117
    push word [0x844c]
    push word [0x844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 1
    push ax
    call 0xd907
    pop cx
    inc word [0x8d12]
    call 0x7eba
    ret
loc_811f:
    mov ax, 0
    call 0xf40b
    mov ax, 0x138e
    cmp word [0x5b6e], byte 1
    jne short 0x8132
    mov ax, 0x138f
    push ax
    call 0x7d99
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
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
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0x8185
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [0x0110]
    mov word [0x844e], ax
    mov ax, 1
    push ax
    push word [0x844e]
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    push word [0x84a0]
    call api_idx_0072
    pop cx
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [0x8450], byte 0
    je short 0x81b2
    push word [0x844c]
    push word [0x844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 1
    push ax
    call 0xd907
    pop cx
    call 0x7eba
    ret
loc_81b6:
    mov ax, 0
    call 0xf40b
    mov ax, 0x7f6
    push ax
    call 0x7d99
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    call api_idx_00e6
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    call 0x7eba
    ret
loc_81db:
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    call 0x7d99
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    call api_idx_0074_2
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    call 0x7eba
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
    jne short 0x8246
    lea ax, word [bp - 0x002a]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0x0a
    jle short 0x8251
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
loc_82a9:
    mov ax, 0
    call 0xf40b
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    call 0xf40b
    mov ax, word [bp + 0x6]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x6]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    add ax, strict word 9
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    push word [bp + 0x14]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
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
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    add ax, strict word 9
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call 0xe94f
    add sp, byte 6
    ret
loc_83c6:
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
loc_8441:
    mov ax, 0xfe56
    call 0xf40b
    mov ax, word [bp + 0x14]
    dec ax
    cwd
    idiv word [bp + 0x12]
    inc ax
    imul word [bp + 0xe]
    add ax, word [bp + 0x8]
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    mov dx, ax
    mov cx, word [bp + 0xe]
    sub cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x10]
    imul word [bp + 0x12]
    add ax, word [bp + 0xa]
    mov cx, word [bp + 0x10]
    add cx, byte 0xf7
    sub ax, cx
    mov word [bp - 0x0008], ax
    cmp word [bp + 0x6], byte 0
    jne short 0x8487
    jmp near 0x8529
    mov ax, 0x90f4
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0xfffa
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x01a8], ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xffec
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0xfffb
    push ax
    call 0xbc9a
    add sp, byte 8
    lea ax, word [bp - 0x01a6]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfff3
    push ax
    lea ax, word [bp - 0x01a6]
    push ax
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
    lea ax, word [bp - 0x01a6]
    push ax
    call 0xe84e
    add sp, byte 4
    jmp short 0x854b
    mov ax, 0x90fa
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x01a8], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1c]
    cmp word [bx + si], byte 0xff
    jne short 0x8567
    jmp near 0x8689
    cmp word [bx + si], byte 1
    je short 0x856f
    jmp near 0x8683
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0004]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, word [bp + 0x16]
    mov cx, word [bp - 0x0004]
    cmp cx, word [bp + 0x18]
    jne short 0x85e6
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xa]
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
    mov ax, word [bp + 0xc]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0x8]
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
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
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
    jmp near 0x8555
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
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 0
    je short 0x86d7
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [0x5b3e], byte 0
    jne short 0x86cd
    call 0x86b
    cmp word [0x5b3e], byte 0
    je short 0x86b8
    jmp near 0x887c
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0x000c], ax
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    call 0x83c6
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    call 0x83c6
    add sp, byte 0x0a
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x8781
    call 0x86b
    jmp short 0x8770
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x01aa], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    dec ax
    cwd
    idiv word [bp + 0x12]
    inc ax
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x01aa]
    jmp near 0x8833
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0x12]
    dec ax
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    jmp near 0x884a
    mov ax, word [bp - 0x0004]
    inc ax
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    jmp short 0x884a
    mov ax, word [bp - 0x000a]
    add ax, word [bp - 0x000c]
    dec ax
    cwd
    idiv word [bp - 0x000c]
    mov word [bp - 0x000a], dx
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    jmp short 0x884a
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp - 0x000c]
    mov word [bp - 0x000a], dx
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    jmp short 0x884a
    cmp ax, strict word 8
    je short 0x87e6
    cmp ax, strict word 9
    jne short 0x8840
    jmp near 0x87ac
    cmp ax, strict word 0xa
    je short 0x880e
    cmp ax, strict word 0xb
    je short 0x87cb
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x8855
    jmp near 0x87a5
    cmp word [bp - 0x01aa], byte 0x0d
    je short 0x885f
    jmp near 0x86dc
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0x000c], ax
    mov ax, 1
    push ax
    push ax
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x01a8]
    call 0xc459
    add sp, byte 4
    cmp word [bp + 0x1a], byte 0
    je short 0x892e
    cmp word [bp + 0x6], byte 0
    je short 0x8914
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0xfffa
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x892e
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
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
    jl short 0x8949
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    cmp word [bp + 0x4], byte 0
    jl short 0x89d6
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short 0x89e1
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
    jne short 0x8a0c
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x89c8
    ret
api_idx_0004_11:
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
    jne short 0x8a7a
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x8a7a
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
    mov word [bx - 0x6996], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short 0x8a28
    mov ax, word [bp - 0x0004]
    ret
api_idx_000a_3:
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
loc_8ac7:
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
    je short 0x8af1
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
    jne short 0x8b52
    cmp word [bp + 0xa], byte 0
    jne short 0x8b52
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
loc_8b53:
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
    jle short 0x8bda
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short 0x8bda
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
    jmp short 0x8bf3
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9100
    push ax
    call 0xe84e
    add sp, byte 4
    ret
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
    jge short 0x8c8c
    jmp near 0x8bff
    ret
loc_8c8d:
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
    mov ax, word [0x9124]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0x8cd4
    jne short 0x8cd6
    cmp cx, ax
    jbe short 0x8cd6
    jmp short 0x8d1d
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_3
    push word [bp + 0x4]
    call 0x8bf4
    pop cx
    push word [bp + 0x6]
    call api_idx_0002_6
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
    jl short 0x8d29
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x32
    mov word [bp - 0x0006], 0x73
    mov word [bp - 0x0008], 0x10d
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x000c], 0x95
    mov word [bp - 0x0014], 0x16
    mov ax, 0x9104
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
    call api_idx_000a_3
    push word [bp + 0x4]
    call 0x8bf4
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
    jne short 0x8e79
    mov ax, 1
    push ax
    push cx
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call 0x8ac7
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x8e6b
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
    call 0x8b53
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x8ed6
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
    jl short 0x9018
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
    jge short 0x913c
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
    jl short 0x9144
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
    mov word [0x9124], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [bp - 0x001c], 1
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call 0x8c8d
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [0x59fc], byte 0
    je short 0x9237
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short 0x9200
    inc word [bp - 0x0022]
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short 0x921f
    cmp ax, word [bp - 0x0018]
    jl short 0x921f
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short 0x9225
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
    cmp word [0x5b3e], byte 1
    je short 0x9241
    jmp near 0x9981
    mov ax, word [bp - 0x001a]
    jmp near 0x9971
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
    sub ax, cx
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
    sub ax, cx
    sub ax, word [bp - 0x0016]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0044], byte 7
    jle short 0x92cb
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
    mov cx, ax
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
    je short 0x936b
    jmp near 0x9275
    jmp near 0x9981
    cmp word [bp - 0x001a], byte 1
    jne short 0x93a5
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
    jle short 0x93a3
    dec word [bp - 0x0018]
    jmp short 0x93d9
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
    jle short 0x93d9
    inc word [bp - 0x0018]
    cmp word [bp - 0x0044], byte 7
    jle short 0x940b
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
    jmp near 0x9981
    cmp word [bp + 0x8], byte 0
    jne short 0x94ae
    jmp near 0x954f
    cmp word [bp - 0x003c], byte 0
    jge short 0x94b7
    jmp near 0x9541
    cmp word [bp + 0xa], byte 0
    je short 0x94f9
    mov ax, word [bp - 0x003e]
    cmp ax, word [bp - 0x0040]
    jle short 0x94c8
    jmp near 0x9541
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, word [bp - 0x003e]
    inc cx
    imul cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov dx, word [bp - 0x0042]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    mov cx, word [bx + 0x5c1c]
    pop ax
    cmp ax, cx
    jg short 0x9541
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
    je short 0x954f
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0x9981
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
    jmp near 0x9981
    cmp word [bp - 0x001a], byte 5
    jge short 0x95a6
    jmp near 0x96fc
    cmp word [bp - 0x001a], byte 0x0b
    jle short 0x95af
    jmp near 0x96fc
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call 0x8ac7
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
    call 0x8ac7
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short 0x95f7
    jmp near 0x9699
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
    jne short 0x964b
    mov ax, 0x3e7
    jmp short 0x966a
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x9667
    jmp short 0x966a
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
    call 0x8b53
    add sp, byte 0x0a
    jmp short 0x96b5
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
    call 0x8b53
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
    jmp near 0x9965
    cmp word [bp - 0x001a], byte 0x0c
    jge short 0x9705
    jmp near 0x982e
    cmp word [bp - 0x001a], byte 0x11
    jle short 0x970e
    jmp near 0x982e
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfff4
    mov word [bp - 0x0042], ax
    mov word [bp - 0x003c], 0xffff
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x9735
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x9744
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
    call 0x8b53
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
    jmp near 0x9965
    cmp word [bp - 0x001a], byte 0x12
    jge short 0x9837
    jmp near 0x9965
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short 0x9845
    jmp near 0x9965
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6996]
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
    jne short 0x98d5
    mov ax, 0x3e7
    jmp short 0x98f4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x98f1
    jmp short 0x98f4
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
    call 0x8b53
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
    jmp short 0x9981

    db 0x8e, 0xe2, 0xb5, 0xe3, 0xb5, 0xe3, 0xec, 0xe4, 0x99, 0xe5

    cmp ax, strict word 5
    jae short 0x997e
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x1652]
    jmp near 0x959d
    cmp word [bp - 0x001c], byte 0
    je short 0x998a
    jmp near 0x91d6
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
    pop word [0x9112]
    pop cx
    mov word [0x910e], sp
    mov word [0x9110], bp
    mov word [0x910a], si
    mov word [0x910c], di
    cld
    mov di, 0x9114
    mov cx, 0x96ba
    sub cx, di
    shr cx, 1
    je short 0x99eb
    sub ax, ax
    rep stosw
    call 0xe
    mov bp, word [0x9110]
    mov sp, word [0x910e]
    mov si, word [0x910a]
    mov di, word [0x910c]
    push cx
    jmp [0x9112]
    pop bx
    push di
    push es
    mov di, cs
    mov es, di
    mov di, bx
    mov bx, cx
    shl bx, 1
    cld
    repne scasw
    mov cx, word [es:bx + di - 0x0004]
    pop es
    pop di
    jmp cx
    and word [di], sp
    es pop bp
    inc ax
    and di, word [bp]
    and byte [bx + si], al
    push si
    xor word [0x2424], bp
    and al, 0
    push si
    xor ch, byte [0x2424]
    and al, 0
    times 10 db 0
    add byte [di], ch
    sub ax, 0x2d2d
    sub ax, 0x2d2d
    sub ax, 0x3f00
    aas
    aas
    aas
    aas
    aas
    aas
    aas
    add byte [bp + 0x2e], dl
    and al, 0x24
    and al, 0
    sub byte [bx + si], al
    and ax, strict word 0x29
    sub byte [bx + si], al
    sub word [bx + si], ax
    push si
    cs and al, 0x24
    and al, 0
    add byte [bp + 0x2e], dl
    and al, 0x24
    and al, 0
    sub byte [bx + si], al
    and ax, strict word 0x29
    push si
    cs and al, 0x24
    and al, 0
    push si
    cs and al, 0x24
    and al, 0
    push si
    cs and al, 0x24
    and al, 0
    sub ch, byte [bp + si]
    sub al, byte [bx + si]
    push si
    cs and al, 0x24
    and al, 0
    times 10 db 0
