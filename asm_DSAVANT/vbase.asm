%include "structs/structs.inc"
%include "structs/vbase.inc"
org 0
bits 16
%include "labels/vbase_foreign_labels.inc"

    db 0xf2, 0x00, 0x55, 0x50, 0xdf, 0x93, 0x98, 0x90 ; header (8 bytes)

data_0002 equ 0x0002
data_0028 equ 0x0028
data_0032 equ 0x0032
data_0114 equ 0x0114
data_0116 equ 0x0116
data_08fc equ 0x08fc
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e16 equ 0x0e16
data_0e18 equ 0x0e18
data_0e1a equ 0x0e1a
data_0e1c equ 0x0e1c
data_0e32 equ 0x0e32
data_0e38 equ 0x0e38
data_1a05 equ 0x1a05
data_24e8 equ 0x24e8
data_3401 equ 0x3401
data_3800 equ 0x3800
data_5216 equ 0x5216
data_5218 equ 0x5218
data_56b8 equ 0x56b8
data_590e equ 0x590e
data_5910 equ 0x5910
data_5962 equ 0x5962
data_5963 equ 0x5963
data_5978 equ 0x5978
data_5979 equ 0x5979
data_597a equ 0x597a
data_597c equ 0x597c
data_597d equ 0x597d
data_597e equ 0x597e
data_597f equ 0x597f
data_5980 equ 0x5980
data_5982 equ 0x5982
data_5984 equ 0x5984
data_5985 equ 0x5985
data_5986 equ 0x5986
data_5987 equ 0x5987
data_5988 equ 0x5988
data_5989 equ 0x5989
data_598a equ 0x598a
data_598b equ 0x598b
data_598c equ 0x598c
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_5b40 equ 0x5b40
data_5b42 equ 0x5b42
data_5b44 equ 0x5b44
data_5b46 equ 0x5b46
data_5b6c equ 0x5b6c
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
data_5c08 equ 0x5c08
data_5c0a equ 0x5c0a
data_6073 equ 0x6073
data_69c8 equ 0x69c8
data_69d7 equ 0x69d7
data_6a8d equ 0x6a8d
data_6a99 equ 0x6a99
data_6ad1 equ 0x6ad1
data_6b91 equ 0x6b91
data_6d3c equ 0x6d3c
data_6f99 equ 0x6f99
data_82e8 equ 0x82e8
data_82ea equ 0x82ea
data_82ec equ 0x82ec
data_82ee equ 0x82ee
data_82f0 equ 0x82f0
data_830a equ 0x830a
data_830c equ 0x830c
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8460 equ 0x8460
data_89df equ 0x89df
data_89e0 equ 0x89e0
data_89e1 equ 0x89e1
data_89e2 equ 0x89e2
data_89e3 equ 0x89e3
data_89e4 equ 0x89e4
data_89e5 equ 0x89e5
data_89e6 equ 0x89e6
data_89e7 equ 0x89e7
data_89e8 equ 0x89e8
data_89ea equ 0x89ea
data_89f6 equ 0x89f6
data_8a02 equ 0x8a02
data_8a0e equ 0x8a0e
data_8a1a equ 0x8a1a
data_8a26 equ 0x8a26
data_8a32 equ 0x8a32
data_8a3e equ 0x8a3e
data_8a4a equ 0x8a4a
data_8a56 equ 0x8a56
data_8af0 equ 0x8af0
data_8d06 equ 0x8d06
data_8d08 equ 0x8d08
data_8f14 equ 0x8f14
data_8f16 equ 0x8f16
data_8f18 equ 0x8f18
data_8f1a equ 0x8f1a
data_8f1c equ 0x8f1c
data_8f1e equ 0x8f1e
data_8f26 equ 0x8f26
data_8f28 equ 0x8f28
data_8f2a equ 0x8f2a
data_8f2c equ 0x8f2c
data_8f2e equ 0x8f2e
data_8f30 equ 0x8f30
data_8f32 equ 0x8f32
data_8f34 equ 0x8f34
data_8f36 equ 0x8f36
data_8f38 equ 0x8f38
data_8f3a equ 0x8f3a
data_8f3c equ 0x8f3c
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_8f44 equ 0x8f44
data_8f46 equ 0x8f46
data_904c equ 0x904c
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_9056 equ 0x9056
data_9058 equ 0x9058
data_905a equ 0x905a
data_905e equ 0x905e
data_9068 equ 0x9068
data_906a equ 0x906a
data_906e equ 0x906e
data_9070 equ 0x9070
data_9072 equ 0x9072
data_9074 equ 0x9074
data_9088 equ 0x9088
data_908a equ 0x908a
data_908c equ 0x908c
data_93be equ 0x93be
data_9400 equ 0x9400
data_940a equ 0x940a
data_940c equ 0x940c
data_941c equ 0x941c
data_9426 equ 0x9426
data_9428 equ 0x9428
data_959f equ 0x959f
data_95a0 equ 0x95a0
data_95a1 equ 0x95a1
data_95a2 equ 0x95a2
data_95ae equ 0x95ae
data_95af equ 0x95af
data_95b0 equ 0x95b0
data_95b2 equ 0x95b2
data_98d4 equ 0x98d4
data_98d5 equ 0x98d5
data_98ea equ 0x98ea
data_98eb equ 0x98eb
data_98f2 equ 0x98f2
data_98f4 equ 0x98f4
data_98f6 equ 0x98f6
data_98f7 equ 0x98f7
data_98f8 equ 0x98f8
data_98f9 equ 0x98f9
data_98fa equ 0x98fa
data_98fb equ 0x98fb
data_98fc equ 0x98fc
data_98fd equ 0x98fd
data_98fe equ 0x98fe
data_9a00 equ 0x9a00
data_9a02 equ 0x9a02
data_9a04 equ 0x9a04
data_9a06 equ 0x9a06
data_9a08 equ 0x9a08
data_9a0a equ 0x9a0a
data_9a0c equ 0x9a0c
data_9a0e equ 0x9a0e
data_9a10 equ 0x9a10
data_9a12 equ 0x9a12
data_9a14 equ 0x9a14
data_9a16 equ 0x9a16
data_9a18 equ 0x9a18
data_9a1a equ 0x9a1a
data_9a1c equ 0x9a1c
data_9a1e equ 0x9a1e
data_9a20 equ 0x9a20
data_9a22 equ 0x9a22
data_9a24 equ 0x9a24
data_9a26 equ 0x9a26
data_9a28 equ 0x9a28
data_9a2a equ 0x9a2a
data_9a2c equ 0x9a2c
data_9a2e equ 0x9a2e
data_9a30 equ 0x9a30
data_9a4a equ 0x9a4a
data_a494 equ 0xa494
data_a4a4 equ 0xa4a4
data_a4a6 equ 0xa4a6
data_a4a8 equ 0xa4a8
data_a4aa equ 0xa4aa
data_a5aa equ 0xa5aa
data_a5ac equ 0xa5ac
data_a5ae equ 0xa5ae
data_a5b0 equ 0xa5b0
data_a5b2 equ 0xa5b2
data_a5b4 equ 0xa5b4
data_a5b6 equ 0xa5b6
data_a5b8 equ 0xa5b8
data_a5ba equ 0xa5ba
data_a5bc equ 0xa5bc
data_a5be equ 0xa5be
data_a5ce equ 0xa5ce
data_a5d0 equ 0xa5d0
data_a5d2 equ 0xa5d2
data_a5d4 equ 0xa5d4
data_a5d6 equ 0xa5d6
data_a5d8 equ 0xa5d8
data_a5e0 equ 0xa5e0
data_a5e2 equ 0xa5e2
data_a5e4 equ 0xa5e4
data_a5f0 equ 0xa5f0
data_a5f2 equ 0xa5f2
data_a5fa equ 0xa5fa
data_a5fc equ 0xa5fc
data_a5fe equ 0xa5fe
data_a600 equ 0xa600

    db 0x2e, 0x01, 0x3c, 0x14, 0x77, 0xe3
math_loc_000e:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [data_830a], byte 7
    jne short @..math_loc_000e.l1
    call api_idx_0002_3
@..math_loc_000e.l1:
    cmp word [data_830a], byte 4
    jne short @..math_loc_000e.l2
    call api_idx_004a_2
@..math_loc_000e.l2:
    cmp word [data_830a], byte 0x18
    jne short @..math_loc_000e.l3
    call api_idx_004a
@..math_loc_000e.l3:
    mov ax, 0
    ret
api_idx_0002:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    call ds_dispatch_ef14
    pop cx
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, 0x9098
    push ax
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    imul word [data_906e]
    cwd
    add ax, word [data_9072]
    adc dx, word [data_9074]
    push dx
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_fdbd
    add sp, byte 8
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0002.l1
    push word [data_906e]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call ds_dispatch_fd6f
    add sp, byte 6
    jmp short @..api_idx_0002.l2
@..api_idx_0002.l1:
    cmp word [bp + 0x8], byte 1
    jne short @..api_idx_0002.l2
    push word [data_906e]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call ds_dispatch_fd76
    add sp, byte 6
@..api_idx_0002.l2:
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    ret
api_idx_0004:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 0x10
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 9
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 0xf
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 8
    push ax
    call ds_dispatch_bce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    push word [bp + 0x10]
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 9
    push ax
    push word [bp + 0x4]
    call ds_dispatch_fa90
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
    add ax, strict word 9
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 0x10
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 9
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    call ds_dispatch_e94f
    add sp, byte 6
    ret
loc_01bf:
    mov ax, 0
    call ds_dispatch_f40b
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
    call ds_dispatch_e901
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
    call ds_dispatch_e901
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
    call ds_dispatch_e901
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    ret
math_loc_023a:
    mov ax, 0xfeaa
    call ds_dispatch_f40b
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 0x10
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0xc]
    imul word [bp + 0xe]
    add ax, word [bp + 0x8]
    add ax, strict word 0x10
    mov word [bp - 0x0008], ax
    mov ax, 0x90a3
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0154], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
@..math_loc_023a.l1:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x12]
    cmp word [bx + si], byte 0xff
    jne short @..math_loc_023a.l2
    jmp near @..math_loc_023a.l5
@..math_loc_023a.l2:
    cmp word [bx + si], byte 1
    je short @..math_loc_023a.l3
    jmp near @..math_loc_023a.l4
@..math_loc_023a.l3:
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0152]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0004]
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 0xf
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0002]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call ds_dispatch_bce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    push word [bp + 0x10]
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 9
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0152]
    add ax, cx
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xa]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0x6]
    add ax, strict word 9
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0152]
    add ax, cx
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0002]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 0xf
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0002]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0026], ax
    inc word [bp - 0x0002]
@..math_loc_023a.l4:
    inc word [bp - 0x0004]
    jmp near @..math_loc_023a.l1
@..math_loc_023a.l5:
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [data_0e32], byte 0
    je short @..math_loc_023a.l7
@..math_loc_023a.l6:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [data_5b3e], byte 0
    je short @..math_loc_023a.l6
    jmp near @..local.l8
@..math_loc_023a.l7:
    mov word [bp - 0x0004], 0
@..math_loc_023a.l8:
    mov ax, 0x16
    push ax
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 0xf
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call loc_01bf
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 0xf
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call loc_01bf
    add sp, byte 0x0a
@..local.l1:
    mov ax, 1
    push ax
    call ds_dispatch_ea50
    pop cx
    test ax, ax
    jne short @..local.l2
    jmp short @..local.l1
@..local.l2:
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0156], ax
    jmp short @..local.l5
@..local.l3:
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0002]
    dec ax
    cwd
    idiv word [bp - 0x0002]
    mov word [bp - 0x0004], dx
    jmp short @..local.l6
@..local.l4:
    mov ax, word [bp - 0x0004]
    inc ax
    cwd
    idiv word [bp - 0x0002]
    mov word [bp - 0x0004], dx
    jmp short @..local.l6
@..local.l5:
    cmp ax, strict word 9
    je short @..local.l3
    cmp ax, strict word 0xb
    je short @..local.l4
@..local.l6:
    cmp word [bp - 0x0156], byte 0x0d
    je short @..local.l7
    jmp near @..math_loc_023a.l8
@..local.l7:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l8:
    dec word [bp - 0x0004]
    mov ax, 1
    push ax
    push ax
    push word [bp + 0xa]
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call ds_dispatch_be5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0xa]
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call ds_dispatch_be5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0154]
    call ds_dispatch_c459
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    mov word [data_9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0026]
    ret
api_idx_0016:
    mov ax, 0xffea
    call ds_dispatch_f40b
    mov ax, 0x90a9
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0
    push ax
    call ds_dispatch_ef14
    pop cx
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0016.l1
    mov ax, 0x13
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0016.l1:
    push word [bp + 0x6]
    push word [bp + 0x4]
    mov ax, 5
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e743
    add sp, byte 8
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    ret
api_idx_0006:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0006.l1:
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0006.l4
@..api_idx_0006.l2:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x69bc]
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_0006.l3
    mov word [bp - 0x0006], 1
@..api_idx_0006.l3:
    inc word [bp - 0x0004]
@..api_idx_0006.l4:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0x4]
    jl short @..api_idx_0006.l2
    cmp word [bp - 0x0006], byte 0
    jne short @..local.l9
    mov ax, word [bp - 0x0002]
    ret
@..local.l9:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0006.l1
    mov ax, 0
    ret
api_idx_0038:
    mov ax, 0xffc8
    call ds_dispatch_f40b
    mov word [data_904e], 0xffff
    mov word [bp - 0x0004], 0x37
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x108
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x0012], 0x16
    mov ax, 7
    cmp word [bp + 0xc], byte 7
    jge short @..api_idx_0038.l1
    mov ax, word [bp + 0xc]
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax
    mov ax, 0x90b6
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
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0038], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call ds_dispatch_bc9a
    add sp, byte 8
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
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
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call ds_dispatch_b53b
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
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call ds_dispatch_b53b
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
    call ds_dispatch_c0c1
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
    call ds_dispatch_bf97
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
    call ds_dispatch_bfd8
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp + 0xc], byte 7
    jge short @..local.l10
    mov ax, word [bp + 0xc]
@..local.l10:
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l12
@..local.l11:
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xb9
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 6
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
@..local.l12:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short @..local.l11
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
loc_08cc:
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 0x001e]
    add ax, strict word 6
    push ax
    call ds_dispatch_baa6
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
@..local.l13:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [data_59fc], byte 0
    je short @..local.l17
    mov ax, word [bp - 0x0020]
    cmp ax, word [bp - 0x0016]
    jl short @..local.l14
    inc word [bp - 0x0020]
@..local.l14:
    mov ax, word [bp - 0x0020]
    cmp ax, strict word 0xffff
    je short @..local.l15
    cmp ax, word [bp - 0x0016]
    jl short @..local.l15
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x001e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0020]
    cmp cx, ax
    jge short @..local.l16
@..local.l15:
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0020], ax
@..local.l16:
    mov word [data_5b3e], 1
    mov ax, word [bp - 0x0020]
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
@..local.l17:
    cmp word [data_5b3e], byte 1
    je short @..local.l18
    jmp near @..local.l22
@..local.l18:
    mov ax, word [bp - 0x0018]
    jmp near @..local.l20

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xe7, 0xe6, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x39, 0xae, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xb9, 0xe6, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0x09, 0xae, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x5d, 0x00, 0x50, 0xe8, 0x90, 0xb5, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1
    db 0x00, 0x50, 0xe8, 0xb2, 0xb5, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x4f, 0xb0, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x61, 0xde, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x07, 0xb4
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xd6
    db 0xb3, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xea, 0x7e, 0x03, 0xff
    db 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0xa3, 0xac, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x5d, 0x00, 0x50, 0xe8, 0x50, 0xb4, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1
    db 0x00, 0x50, 0xe8, 0x72, 0xb4, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x0f, 0xaf, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x21, 0xdd, 0x83, 0xc4, 0x08, 0xe9, 0x60, 0x01, 0x83, 0x7e
    db 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x80, 0xb2, 0x83, 0xc4
    db 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x60, 0xb2, 0x83, 0xc4
    db 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xe9, 0x0f, 0x01, 0x83
    db 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x2f, 0xb2, 0x83
    db 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x0f, 0xb2, 0x83
    db 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xe9, 0xbe, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xde, 0xb1
    db 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xbe, 0xb1
    db 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xeb, 0x6e

@..local.l19:
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
    call ds_dispatch_bf97
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
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..local.l22
    test al, 0x59
    iret
    pop dx
    iret
    pop dx
    push es
    pop sp
    push di
    pop sp
    test al, 0x5c
@..local.l20:
    cmp ax, strict word 6
    jae short @..local.l21
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5d4b]
@..local.l21:
    jmp short @..local.l19
@..local.l22:
    cmp word [bp - 0x001a], byte 0
    je short @..local.l23
    jmp near @..local.l13
@..local.l23:
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    call ds_dispatch_c459
    add sp, byte 4
    mov ax, word [bp - 0x0020]
    mov word [data_904e], ax
    mov ax, word [data_9050]
    ret
api_idx_0008:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    push word [bp + 0xe]
    push word [bp + 0xc]
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp + 0x4]
    call ds_dispatch_fa90
    pop cx
    mov word [bp - 0x0004], ax
    mov cx, 6
    imul cx
    add word [bp + 0x6], ax
@..api_idx_0008.l1:
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
@..api_idx_0008.l2:
    mov ax, 1
    push ax
    call ds_dispatch_ea50
    pop cx
    test ax, ax
    je short @..api_idx_0008.l3
    jmp near @..api_idx_0008.l7
@..api_idx_0008.l3:
    cmp word [bp - 0x0008], byte 0
    jne short @..api_idx_0008.l5
    push word [bp + 0xe]
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e901
    add sp, byte 0x0a
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_0008.l4
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_e830
    add sp, byte 4
@..api_idx_0008.l4:
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], 0xa
    jmp short @..api_idx_0008.l6
@..api_idx_0008.l5:
    mov ax, 0xa
    push ax
    call ds_dispatch_e489
    pop cx
    dec word [bp - 0x0008]
@..api_idx_0008.l6:
    jmp near @..api_idx_0008.l2
@..api_idx_0008.l7:
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    push word [bp + 0xe]
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [bp - 0x0002], byte 0x0d
    jne short @..local.l24
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    call ds_dispatch_ec17
    ret
@..local.l24:
    cmp word [bp - 0x0002], byte 8
    jne short @..local.l27
    cmp word [bp - 0x0004], byte 0
    jle short @..local.l25
    dec word [bp - 0x0004]
    add word [bp + 0x6], byte 0xfa
    jmp short @..local.l26
@..local.l25:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
@..local.l26:
    jmp near @..local.l31
@..local.l27:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0xa]
    jl short @..local.l28
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp near @..local.l31
@..local.l28:
    cmp word [bp + 0x10], byte 0
    jne short @..local.l29
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short @..local.l29
    cmp ax, strict word 0x7f
    jle short @..local.l30
@..local.l29:
    cmp word [bp + 0x10], byte 1
    jne short @..local.l31
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short @..local.l31
    cmp ax, strict word 0x39
    jg short @..local.l31
@..local.l30:
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], al
    inc word [bp - 0x0004]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0002]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e8da
    add sp, byte 8
    add word [bp + 0x6], byte 6
@..local.l31:
    jmp near @..api_idx_0008.l1
    db 0xc3
api_idx_0028:
    mov ax, 0xffd8
    call ds_dispatch_f40b
    mov word [data_904e], 0xffff
    mov word [bp - 0x0028], 0xffff
    mov word [bp - 0x0002], 0x37
    mov word [bp - 0x0004], 0x8f
    mov word [bp - 0x0006], 0x108
    mov word [bp - 0x0008], 0xc5
    mov ax, 0x90bc
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0026], ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call ds_dispatch_bc9a
    add sp, byte 8
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, 0x5aa
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x9b
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0x11
    sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    push word [bp + 0xc]
    mov ax, 0xe38
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call ds_dispatch_bf97
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x44
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, 0x5ab
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x9b
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1e
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0x11
    sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    push word [bp + 0xe]
    mov ax, 0xe4c
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call ds_dispatch_bf97
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x46
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    mov ax, 2
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    mov ax, 4
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 5
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x0010], 1
@..local.l32:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x000e], ax
    cmp word [data_59fc], byte 0
    je short @..local.l34
    inc word [bp - 0x0028]
    mov ax, word [bp - 0x0028]
    cmp ax, strict word 1
    jle short @..local.l33
    mov word [bp - 0x0028], 0
@..local.l33:
    mov word [data_5b3e], 1
    mov ax, word [bp - 0x0028]
    mov word [bp - 0x000e], ax
@..local.l34:
    cmp word [data_5b3e], byte 1
    je short @..local.l35
    jmp near @..local.l37
@..local.l35:
    mov ax, word [bp - 0x000e]
    jmp near @..local.l36

    db 0xe8, 0xbe, 0xd9, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x5d
    db 0x00, 0x50, 0xe8, 0x1c, 0xad, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfc, 0x05, 0x16, 0x00, 0x50, 0x8b
    db 0x46, 0xfe, 0x05, 0xc5, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfe
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x3d, 0xd6, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x10, 0x00
    db 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x5f, 0x00, 0x50, 0xb8, 0x38, 0x0e, 0x50, 0xe8, 0x7a, 0xfa, 0x83
    db 0xc4, 0x0e, 0xb8, 0x38, 0x0e, 0x50, 0xff, 0x76, 0x0c, 0xe8, 0x92, 0xe0, 0x83, 0xc4, 0x04, 0xb8
    db 0x01, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x5d, 0x00
    db 0x50, 0xe8, 0x9d, 0xac, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfc, 0x05, 0x16, 0x00, 0x50, 0x8b, 0x46
    db 0xfe, 0x05, 0xc5, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05
    db 0x5d, 0x00, 0x50, 0xe8, 0xbe, 0xd5, 0x83, 0xc4, 0x08, 0xe9, 0xcb, 0x01, 0xe8, 0xf2, 0xd8, 0xb8
    db 0x01, 0x00, 0x50, 0x50, 0x50, 0x50, 0xb8, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x27, 0x00
    db 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x56, 0xac, 0x83, 0xc4, 0x0e, 0x8b, 0x46
    db 0xfc, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0xc5, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x77, 0xd5, 0x83, 0xc4, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x5f, 0x00, 0x50, 0xb8, 0x4c
    db 0x0e, 0x50, 0xe8, 0xb4, 0xf9, 0x83, 0xc4, 0x0e, 0xb8, 0x4c, 0x0e, 0x50, 0xff, 0x76, 0x0e, 0xe8
    db 0xcc, 0xdf, 0x83, 0xc4, 0x04, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0x50, 0xb8, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfe
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xda, 0xab, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfc, 0x05, 0x2e, 0x00
    db 0x50, 0x8b, 0x46, 0xfe, 0x05, 0xc5, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x27, 0x00, 0x50, 0x8b
    db 0x46, 0xfe, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xfb, 0xd4, 0x83, 0xc4, 0x08, 0xe9, 0x08, 0x01, 0x83
    db 0x7e, 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x5a, 0xaa, 0x83
    db 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x3a, 0xaa, 0x83
    db 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xf0, 0x00, 0x00, 0xe9, 0xb7, 0x00
    db 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x09, 0xaa
    db 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xe9, 0xa9
    db 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xf0, 0x00, 0x00, 0xeb, 0x67
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xb9, 0xa9
    db 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x99, 0xa9
    db 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xf0, 0x00, 0x00, 0xeb, 0x17
    db 0x9d
    db 'bic,d}d'
    db 0xcd, 0x64

@..local.l36:
    cmp ax, strict word 5
    jae short @..local.l37
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x651d]
@..local.l37:
    cmp word [bp - 0x0010], byte 0
    je short @..local.l38
    jmp near @..local.l32
@..local.l38:
    mov ax, 1
    push ax
    push word [bp - 0x0026]
    call ds_dispatch_c459
    add sp, byte 4
    mov word [data_904e], 0xffff
    mov ax, word [data_9050]
    ret
loc_150d:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0x1a
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call api_idx_0004
    add sp, byte 0x0e
    call ds_dispatch_ec17
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, 0x28
    push ax
    call ds_dispatch_b75e
    pop cx
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    ret
api_idx_004c:
    mov ax, 0xffb4
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push word [bp + 0x6]
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    cmp word [bp + 0xa], byte 0xfe
    jne short @..api_idx_004c.l1
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
    jmp short @..api_idx_004c.l3
@..api_idx_004c.l1:
    cmp word [bp + 0xa], byte 0xff
    jne short @..api_idx_004c.l2
    push word [bp - 0x0030]
    push word [bp - 0x0032]
    call ds_dispatch_d0be
    add sp, byte 4
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short @..api_idx_004c.l3
@..api_idx_004c.l2:
    mov al, byte [bp + 0xa]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
@..api_idx_004c.l3:
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
    je short @..api_idx_004c.l4
    mov ax, 0x80
@..api_idx_004c.l4:
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x7], al
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 8
    je short @..api_idx_004c.l5
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 4
@..api_idx_004c.l5:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 4
    je short @..api_idx_004c.l6
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 8
@..api_idx_004c.l6:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x10
    je short @..api_idx_004c.l7
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x10
@..api_idx_004c.l7:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x20
    je short @..api_idx_004c.l8
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x20
@..api_idx_004c.l8:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 2
    je short @..api_idx_004c.l9
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x40
@..api_idx_004c.l9:
    push word [bp + 0x4]
    call ds_dispatch_c58f
    pop cx
    ret
loc_1683:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    jmp short @..local.l39
    mov ax, 0
    ret
@..local.l39:
    mov cx, 0x26
    call string_loc_936e
    sbb al, 0
    add byte [es:data_3800], dh
    add byte [bx + di], bh
    add byte [di], bh
    db 0x00, 0x42, 0x00 ; add byte [bp + si], al
    inc bx
    add byte [bp], al
    inc di
    db 0x00, 0x48, 0x00 ; add byte [bx + si], cl
    dec cx
    db 0x00, 0x4a, 0x00 ; add byte [bp + si], cl
    dec si
    db 0x00, 0x4f, 0x00 ; add byte [bx], cl
    push dx
    db 0x00, 0x54, 0x00 ; add byte [si], dl
    pop dx
    db 0x00, 0x5c, 0x00 ; add byte [si], bl
    bound ax, dword [bx + si]
    db 0x64, 0x00, 0x65, 0x00 ; add byte [fs:di], ah
    jne short @..local.l40
@..local.l40:
    jbe short @..local.l41
@..local.l41:
    ja short @..local.l42
@..local.l42:
    xchg di, ax
    add byte [bp - 0x4e00], ch
    add byte [di - 0x4300], dh
    add dl, al
    add ch, al
    add dl, cl
    add bl, cl
    add dl, dl
    add bl, dl
    add byte [bp + di + 0x1], cl
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    aad 0x66
    jne short 0x1795
    cmp word [bp + 0x4], byte 0x3c
    jl short @..local.l43
    cmp word [bp + 0x4], byte 0x78
    jge short @..local.l43
    mov ax, 0
    sub ax, word [bp + 0x4]
    ret
@..local.l43:
    cmp word [bp + 0x4], strict word 0xb8
    jl short @..local.l44
    cmp word [bp + 0x4], strict word 0xe3
    jge short @..local.l44
    mov ax, 0
    sub ax, word [bp + 0x4]
    ret
@..local.l44:
    cmp word [bp + 0x4], strict word 0xe3
    jge short @..local.l45
    mov ax, word [bp + 0x4]
    ret
@..local.l45:
    cmp word [bp + 0x4], strict word 0x145
    jne short @..local.l46
    mov ax, 0x13a
    ret
@..local.l46:
    cmp word [bp + 0x4], strict word 0x146
    jne short @..local.l47
    mov ax, 0x14b
    ret
@..local.l47:
    cmp word [bp + 0x4], strict word 0x13c
    jl short @..local.l48
    cmp word [bp + 0x4], strict word 0x14c
    jg short @..local.l48
    mov ax, word [bp + 0x4]
    ret
@..local.l48:
    cmp word [bp + 0x4], strict word 0x1ab
    jne short @..local.l49
    mov ax, 0xffae
    ret
@..local.l49:
    cmp word [bp + 0x4], strict word 0x1d8
    jne short @..local.l51
    mov ax, 0xf5
    ret
@..local.l51:
    cmp word [bp + 0x4], strict word 0x1d9
    jne short @..local.l52
    mov ax, 0xf4
    ret
@..local.l52:
    mov ax, word [bp + 0x4]
    jmp short @..local.l53
    cmp word [bp + 0x4], strict word 0xe3
    jl short 0x17c4
    cmp word [bp + 0x4], strict word 0xfe
    jge short 0x17c4
    mov ax, 0
    sub ax, word [bp + 0x4]
    ret
    mov ax, word [bp + 0x4]
    ret
@..local.l53:
    mov cx, 0x14
    call string_loc_936e
    jmp far 0xf100:0xec00

    db 0x00, 0xf5, 0x00, 0xfc, 0x00, 0xfd, 0x00, 0x04, 0x01, 0x05, 0x01, 0x06, 0x01, 0x07, 0x01, 0x16
    db 0x01, 0x1c, 0x01, 0x2d, 0x01, 0x31, 0x01, 0x32, 0x01, 0x33, 0x01, 0x34, 0x01, 0x35, 0x01, 0x39
    db 0x01, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6
    db 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6
    db 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0x63, 0x68, 0xb8, 0x00, 0x00, 0xc3

loc_1820:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    jmp short @..local.l54

    db 0xb8, 0x0c, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x0d, 0x00, 0xc3, 0xb8, 0x1a, 0x00
    db 0xc3, 0xb8, 0x18, 0x00, 0xc3, 0xb8, 0x08, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x03
    db 0x00, 0xc3, 0xb8, 0x07, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x05, 0x00, 0xc3, 0xb8
    db 0x16, 0x00, 0xc3, 0x72, 0x68, 0x7f, 0x68, 0x83, 0x68, 0x87, 0x68, 0x94, 0x68, 0xa1, 0x68

@..local.l54:
    sub ax, strict word 5
    cmp ax, strict word 6
    jae short @..local.l55
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x68a5]
@..local.l55:
    cmp word [bp + 0x8], byte 0x0d
    jne short @..local.l56
    mov ax, 0x12
    ret
@..local.l56:
    cmp word [bp + 0x4], byte 1
    jne short @..local.l58
    mov ax, word [bp + 0x8]
    jmp short @..local.l57

    db 0xb8, 0x0a, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x20, 0x00, 0xc3, 0xb8, 0x1f, 0x00
    db 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x1c, 0x00, 0xc3, 0xb8, 0x01, 0x00, 0xc3, 0xb8, 0x1b
    db 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x06, 0x00, 0xc3, 0xb8, 0x0f, 0x00, 0x83, 0x7e
    db 0x06, 0x00, 0x75, 0x03, 0xb8, 0x1c, 0x00, 0xc3, 0xd6, 0x68, 0xe3, 0x68, 0xe3, 0x68, 0xf0, 0x68
    db 0xf0, 0x68, 0xe3, 0x68, 0xf0, 0x68, 0xe3, 0x68, 0xd6, 0x68, 0x01, 0x69, 0xd6, 0x68, 0xf4, 0x68
    db 0x01, 0x69

@..local.l57:
    cmp ax, strict word 0xd
    jae short @..local.l58
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x690e]
@..local.l58:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 2
    je short @..local.l59
    cmp ax, strict word 4
    je short @..local.l59
    cmp ax, strict word 3
    je short @..local.l59
    jmp near @..local.l61
@..local.l59:
    mov ax, word [bp + 0x8]
    jmp short @..local.l60

    db 0xb8, 0x1d, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x04, 0x00, 0xc3, 0xb8, 0x11, 0x00
    db 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x0b, 0x00, 0xc3, 0xb8, 0x0e, 0x00, 0x83, 0x7e, 0x06
    db 0x00, 0x75, 0x03, 0xb8, 0x10, 0x00, 0xc3, 0xb8, 0x1d, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03
    db 0xb8, 0x10, 0x00, 0xc3, 0xb8, 0x1b, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x06, 0x00
    db 0xc3
    db 'Oi\i\ivivi\iii\iOi\iOi'
    db 0x83, 0x69, 0x76, 0x69

@..local.l60:
    cmp ax, strict word 0xd
    jae short @..local.l61
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6990]
@..local.l61:
    mov ax, word [bp + 0x8]
    jmp near @..local.l62

    db 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x02, 0x00, 0xc3, 0xb8, 0x00, 0x00
    db 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x1e, 0x00, 0xc3, 0xb8, 0x0e, 0x00, 0x83, 0x7e, 0x06
    db 0x00, 0x75, 0x03, 0xb8, 0x15, 0x00, 0xc3, 0xb8, 0x13, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03
    db 0xb8, 0x09, 0x00, 0xc3, 0xb8, 0x0a, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x14, 0x00
    db 0xc3, 0xb8, 0x0f, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x19, 0x00, 0xc3, 0xb8, 0x1b
    db 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x06, 0x00, 0xc3, 0xb8, 0x0f, 0x00, 0x83, 0x7e
    db 0x06, 0x00, 0x75, 0x03, 0xb8, 0x1e, 0x00, 0xc3, 0x4c, 0x6a, 0xbd, 0x69, 0xca, 0x69, 0xd7, 0x69
    db 0xe4, 0x69, 0xbd, 0x69, 0xd7, 0x69, 0xca, 0x69, 0xf1, 0x69, 0xfe, 0x69, 0xf1, 0x69, 0x0b, 0x6a
    db 0x18, 0x6a

@..local.l62:
    cmp ax, strict word 0xd
    jae short @..local.l63
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6a25]
@..local.l63:
    mov ax, 0x13
    cmp word [bp + 0x6], byte 0
    jne short @..local.l64
    mov ax, 0x17
@..local.l64:
    ret
loc_1a12:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    jmp near @..local.l65

    db 0xb8, 0x00, 0x00, 0xc3, 0xb8, 0x01, 0x00, 0xc3, 0xb8, 0x03, 0x00, 0xc3, 0xb8, 0x04, 0x00, 0xc3
    db 0xb8, 0x06, 0x00, 0xc3, 0xb8, 0x07, 0x00, 0xc3, 0xb8, 0x08, 0x00, 0xc3, 0xb8, 0x09, 0x00, 0xc3
    db 0xb8, 0x0a, 0x00, 0xc3, 0xb8, 0x0b, 0x00, 0xc3, 0xb8, 0x0c, 0x00, 0xc3, 0xb8, 0x0d, 0x00, 0xc3
    db 0xb8, 0x0e, 0x00, 0xc3, 0xb8, 0x0f, 0x00, 0xc3, 0xb8, 0x10, 0x00, 0xc3, 0xb8, 0x11, 0x00, 0xc3
    db 0xb8, 0x12, 0x00, 0xc3, 0xb8, 0x14, 0x00, 0xc3, 0xb8, 0x15, 0x00, 0xc3, 0xb8, 0x17, 0x00, 0xc3
    db 0xb8, 0x1a, 0x00, 0xc3, 0xb8, 0x1b, 0x00, 0xc3, 0xb8, 0x1d, 0x00, 0xc3, 0xb8, 0x1e, 0x00, 0xc3
    db 0xb8, 0x1f, 0x00, 0xc3, 0xb8, 0x20, 0x00, 0xc3, 0xb8, 0x21, 0x00, 0xc3, 0xb8, 0x22, 0x00, 0xc3
    db 0xb8, 0x23, 0x00, 0xc3, 0xb8, 0x24, 0x00, 0xc3, 0xb8, 0x25, 0x00, 0xc3, 0xb8, 0x26, 0x00, 0xc3
    db 0xb8, 0x27, 0x00, 0xc3, 0xb8, 0x28, 0x00, 0xc3, 0xb8, 0x29, 0x00, 0xc3, 0xb8, 0x2b, 0x00, 0xc3
    db 0xb8, 0x2c, 0x00, 0xc3, 0xb8, 0x2d, 0x00, 0xc3, 0xb8, 0x2e, 0x00, 0xc3, 0xb8, 0x2f, 0x00, 0xc3
    db 0xb8, 0x30, 0x00, 0xc3, 0xb8, 0x31, 0x00, 0xc3, 0xb8, 0x32, 0x00, 0xc3, 0xb8, 0x34, 0x00, 0xc3
    db 0xb8, 0x35, 0x00, 0xc3, 0xb8, 0x37, 0x00, 0xc3, 0xb8, 0x38, 0x00, 0xc3, 0xb8, 0x39, 0x00, 0xc3
    db 0xb8, 0x3a, 0x00, 0xc3, 0xb8, 0x3b, 0x00, 0xc3, 0xb8, 0x3c, 0x00, 0xc3, 0xb8, 0x3d, 0x00, 0xc3
    db 0xb8, 0x3e, 0x00, 0xc3, 0xb8, 0x3f, 0x00, 0xc3, 0xb8, 0x40, 0x00, 0xc3, 0xb8, 0x43, 0x00, 0xc3
    db 0xb8, 0x44, 0x00, 0xc3, 0xb8, 0x45, 0x00, 0xc3, 0xb8, 0x46, 0x00, 0xc3, 0xb8, 0x47, 0x00, 0xc3
    db 0xb8, 0x48, 0x00, 0xc3, 0xb8, 0x4a, 0x00, 0xc3, 0xb8, 0x4b, 0x00, 0xc3, 0xb8, 0x4c, 0x00, 0xc3
    db 0xb8, 0x4e, 0x00, 0xc3, 0xb8, 0x4f, 0x00, 0xc3, 0xb8, 0x50, 0x00, 0xc3, 0xb8, 0x51, 0x00, 0xc3
    db 0xb8, 0x52, 0x00, 0xc3, 0xb8, 0x53, 0x00, 0xc3, 0xb8, 0x54, 0x00, 0xc3, 0xb8, 0x55, 0x00, 0xc3
    db 0xb8, 0x56, 0x00, 0xc3, 0xb8, 0x57, 0x00, 0xc3, 0xb8, 0x59, 0x00, 0xc3, 0xb8, 0x5a, 0x00, 0xc3
    db 0xb8, 0x5d, 0x00, 0xc3, 0xb8, 0x5e, 0x00, 0xc3, 0xb8, 0x5f, 0x00, 0xc3
    db 'ejijmjqjujyj}j'
    db 0x81, 0x6a, 0x85, 0x6a, 0x89, 0x6a, 0x8d, 0x6a, 0x91, 0x6a, 0x95, 0x6a, 0x99, 0x6a, 0x9d, 0x6a
    db 0xa1, 0x6a, 0xa5, 0x6a, 0xa9, 0x6a, 0xad, 0x6a, 0xb1, 0x6a, 0xb5, 0x6a, 0xb9, 0x6a, 0xbd, 0x6a
    db 0xc1, 0x6a, 0xc5, 0x6a, 0xc9, 0x6a, 0xcd, 0x6a, 0xd1, 0x6a, 0xd5, 0x6a, 0xd9, 0x6a, 0xdd, 0x6a
    db 0xe1, 0x6a, 0xe5, 0x6a, 0xe9, 0x6a, 0xed, 0x6a, 0xf1, 0x6a, 0xf5, 0x6a, 0xf9, 0x6a, 0xfd, 0x6a
    db 0x01, 0x6b, 0x05, 0x6b, 0x09, 0x6b, 0x0d, 0x6b, 0x11, 0x6b, 0x15, 0x6b, 0x19, 0x6b, 0x1d
    db 'k!k%k)k-k1k5k9k=kAkEkIkMkQkUkYk]kakekikmkqkukyk}k'
    db 0x81, 0x6b, 0x85, 0x6b, 0x89, 0x6b, 0x8d, 0x6b, 0x91, 0x6b, 0x95, 0x6b, 0x99, 0x6b, 0x9d, 0x6b

@..local.l65:
    cmp ax, strict word 0x4f
    jae short @..local.l66
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6ba1]
@..local.l66:
    mov ax, 0xffff
    ret
math_loc_1c09:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_1c09.l1
    mov ax, 1
@..math_loc_1c09.l1:
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d54], al
    mov ax, word [bp + 0x8]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_1c09.l2
    mov ax, 1
@..math_loc_1c09.l2:
    mov byte [bx + 0x5d55], al
    mov ax, word [bp + 0xa]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_1c09.l3
    mov ax, 1
@..math_loc_1c09.l3:
    mov byte [bx + 0x5d56], al
    mov ax, word [bp + 0xc]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_1c09.l4
    mov ax, 1
@..math_loc_1c09.l4:
    mov byte [bx + 0x5d57], al
    mov ax, word [bp + 0xe]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_1c09.l5
    mov ax, 1
@..math_loc_1c09.l5:
    mov byte [bx + 0x5d58], al
    mov ax, word [bp + 0x10]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_1c09.l6
    mov ax, 1
@..math_loc_1c09.l6:
    mov byte [bx + 0x5d59], al
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x5d66]
    sub ah, ah
    mov cx, ax
    shl ax, 1
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    cmp ax, strict word 0xd
    jle short @..api_idx_0004_2.l1
    inc word [bp - 0x0004]
@..api_idx_0004_2.l1:
    cmp ax, strict word 0x10
    jle short @..api_idx_0004_2.l2
    inc word [bp - 0x0004]
@..api_idx_0004_2.l2:
    cmp byte [bx + 0x5e2b], 5
    jne short @..api_idx_0004_2.l3
    inc word [bp - 0x0004]
@..api_idx_0004_2.l3:
    cmp byte [bx + 0x5e2b], 6
    jne short @..api_idx_0004_2.l4
    dec word [bp - 0x0004]
@..api_idx_0004_2.l4:
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near @..local.l67
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 0x4]
    call math_loc_1c09
    add sp, byte 0x0e
    jmp near @..local.l68
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5d50], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call math_loc_1c09
    add sp, byte 0x0e
    jmp near @..local.l68
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5d51], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call math_loc_1c09
    add sp, byte 0x0e
    jmp near @..local.l68
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call math_loc_1c09
    add sp, byte 0x0e
    jmp near @..local.l68
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5d52], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call math_loc_1c09
    add sp, byte 0x0e
    jmp near @..local.l68
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call math_loc_1c09
    add sp, byte 0x0e
    jmp near @..local.l68
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5d53], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 4
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call math_loc_1c09
    add sp, byte 0x0e
    jmp near @..local.l68
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push word [bp + 0x4]
    call math_loc_1c09
    add sp, byte 0x0e
    jmp near @..local.l68
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5d50], 1
    mov byte [bx + 0x5d51], 1
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 0x4]
    call math_loc_1c09
    add sp, byte 0x0e
    jmp near @..local.l68
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push word [bp + 0x4]
    call math_loc_1c09
    add sp, byte 0x0e
    jmp near @..local.l68

    db 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x50, 0x50, 0x8b, 0x46, 0xfc
    db 0x40, 0x40, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x71, 0xfd, 0x83, 0xc4, 0x0e, 0xeb, 0x70, 0x8b
    db 0x46, 0xfc, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x50
    db 0x50, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4d, 0xfd, 0x83, 0xc4
    db 0x0e, 0xeb, 0x4c, 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0x50
    db 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2a
    db 0xfd, 0x83, 0xc4, 0x0e, 0xeb
    db ')&m<mlm&m'
    db 0xa1, 0x6d, 0xc0, 0x6d, 0xf5, 0x6d, 0x19
    db 'nNnrn'
    db 0xa1, 0x6e, 0xc5, 0x6e, 0xe4, 0x6e, 0x08, 0x6f

@..local.l67:
    cmp ax, strict word 0xe
    jae short @..local.l68
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6f2b]
@..local.l68:
    ret
loc_1f0e:
    mov ax, 0
    call ds_dispatch_f40b
    mov al, byte [bp + 0x4]
    mov byte [data_89df], al
    mov byte [data_89ea], al
    mov al, byte [bp + 0x6]
    mov byte [data_89e0], al
    mov byte [data_89f6], al
    mov al, byte [bp + 0x8]
    mov byte [data_89e1], al
    mov byte [data_8a02], al
    mov al, byte [bp + 0xa]
    mov byte [data_89e2], al
    mov byte [data_8a0e], al
    mov al, byte [bp + 0xc]
    mov byte [data_89e3], al
    mov byte [data_8a1a], al
    mov al, byte [bp + 0xe]
    mov byte [data_89e4], al
    mov byte [data_8a26], al
    mov al, byte [bp + 0x10]
    mov byte [data_89e5], al
    mov byte [data_8a32], al
    mov al, byte [bp + 0x12]
    mov byte [data_89e6], al
    mov byte [data_8a3e], al
    mov al, byte [bp + 0x14]
    mov byte [data_89e7], al
    mov byte [data_8a4a], al
    mov al, byte [bp + 0x16]
    mov byte [data_89e8], al
    mov byte [data_8a56], al
    ret
api_idx_0040:
    mov ax, 0xffc0
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push word [bp + 0x4]
    lea ax, word [bp - 0x0040]
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    cmp word [bp + 0x6], byte 1
    jle short @..local.l69
    cmp word [bp + 0x6], byte 0x10
    jge short @..local.l69
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0048]
    mov dx, word [bx - 0x0046]
    ret
@..local.l69:
    mov ax, 0
    mov dx, 0
    ret
api_idx_0072:
    mov ax, 0xff8e
    call ds_dispatch_f40b
    mov word [bp - 0x000e], 0
    mov ax, word [data_5218]
    mov word [bp - 0x0010], ax
    cmp byte [data_5987], 5
    jne short @..api_idx_0072.l1
    cmp ax, strict word 0
    jle short @..api_idx_0072.l1
    inc ax
    inc ax
    jmp short @..api_idx_0072.l2
@..api_idx_0072.l1:
    mov ax, word [bp - 0x0010]
@..api_idx_0072.l2:
    mov word [bp - 0x0010], ax
    mov ax, 0
    push ax
    call ds_dispatch_ef14
    pop cx
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x58c
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0072]
    push ax
    mov ax, 0x58d
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x90c2
    push ax
    lea ax, word [bp - 0x0036]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0x593a
    push ax
    lea ax, word [bp - 0x004a]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov word [bp - 0x0012], 1
    lea ax, word [bp - 0x0036]
    push ax
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x587
    push ax
    call api_idx_0028
    add sp, byte 0x0c
    cmp ax, strict word 2
    jne short @..local.l70
    mov ax, 0xffff
    ret
@..local.l70:
    mov ax, 0x3a
    push ax
    mov ax, 0x5912
    push ax
    mov ax, 0x91c6
    push ax
    call 0xd112
    add sp, byte 6
    mov ax, 0x3a
    push ax
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 0x91da
    push ax
    db 0xe8, 0xb2, 0xb0 ; call 0xd112
    add sp, byte 6
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 0x91ee
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0x91ee
    push ax
    call ds_dispatch_fa90
    pop cx
    cmp ax, strict word 0
    jle short @..local.l71
    mov ax, 0x91ee
    push ax
    call ds_dispatch_fa90
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    mov bx, ax
    cmp byte [bx - 0x6e12], 0x5c
    je short @..local.l71
    mov byte [bx - 0x6e11], 0x5c
    mov byte [bx - 0x6e10], 0
@..local.l71:
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, 0x91ee
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    cmp byte [data_5987], 1
    jne short @..local.l72
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call string_loc_9386
    add sp, byte 4
    test ax, ax
    jne short @..local.l72
    jmp near @..local.l78
@..local.l72:
    mov ax, 0x91da
    push ax
    call ds_dispatch_fa90
    pop cx
    cmp ax, strict word 0
    jle short @..local.l76
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call string_loc_9386
    add sp, byte 4
    test ax, ax
    je short @..local.l73
    cmp byte [data_5987], 5
    jne short @..local.l74
@..local.l73:
    mov word [bp - 0x000e], 1
@..local.l74:
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, 0xffff
    push ax
    mov ax, 0x91da
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000e], byte 0
    je short @..local.l75
    mov ax, 0
@..local.l75:
    mov word [bp - 0x0012], ax
    jmp short @..local.l78
@..local.l76:
    cmp byte [data_5987], 1
    jbe short @..local.l78
    mov word [bp - 0x000e], 1
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, 0xffff
    push ax
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x72, 0xb0 ; call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000e], byte 0
    je short @..local.l77
    mov ax, 0
@..local.l77:
    mov word [bp - 0x0012], ax
@..local.l78:
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 3
    push ax
    lea ax, word [bp - 0x0072]
    push ax
    call api_idx_0004
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x91ee
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x000a], ax
    cmp ax, strict word 0xffff
    jne short @..local.l80
    lea ax, word [bp - 0x005e]
    push ax
    call loc_150d
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l79
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xf6, 0xaf ; call 0xd1a8
    add sp, byte 8
@..local.l79:
    mov ax, 0xffff
    ret
@..local.l80:
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fdbd
    add sp, byte 8
    mov ax, 0x19e
    push ax
    mov ax, 0x9220
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jg short @..local.l82
    lea ax, word [bp - 0x005e]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l81
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x9b, 0xaf ; call 0xd1a8
    add sp, byte 8
@..local.l81:
    mov ax, 0xffff
    ret
@..local.l82:
    mov ax, 0x6d6
    push ax
    call ds_dispatch_f4a3
    pop cx
    mov word [data_93be], ax
    cmp word [data_93be], byte 0
    jne short @..local.l83
    mov ax, 0x1d
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l83:
    mov word [bp - 0x0008], 0
@..local.l84:
    mov ax, 0x542
    push ax
    push word [data_93be]
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jg short @..local.l86
    push word [data_93be]
    call ds_dispatch_f5a1
    pop cx
    lea ax, word [bp - 0x005e]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l85
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x2e, 0xaf ; call 0xd1a8
    add sp, byte 8
@..local.l85:
    mov ax, 0xffff
    ret
@..local.l86:
    mov ax, 0x6cc
    push ax
    push word [data_93be]
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jg short @..local.l88
    push word [data_93be]
    call ds_dispatch_f5a1
    pop cx
    lea ax, word [bp - 0x005e]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l87
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xe0, 0xae ; call 0xd1a8
    add sp, byte 8
@..local.l87:
    mov ax, 0xffff
    ret
@..local.l88:
    inc word [bp - 0x0008]
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 0x10
    jge short @..local.l89
    jmp near @..local.l84
@..local.l89:
    push word [data_93be]
    call ds_dispatch_f5a1
    pop cx
    mov ax, 0x42
    push ax
    mov ax, 0x93c0
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jg short @..local.l91
    lea ax, word [bp - 0x005e]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l90
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x84, 0xae ; call 0xd1a8
    add sp, byte 8
@..local.l90:
    mov ax, 0xffff
    ret
@..local.l91:
    mov word [data_69c8], 0
    mov word [bp - 0x0002], 0
    jmp near @..local.l158
@..local.l92:
    mov ax, 0x1b0
    push ax
    mov ax, 0x9402
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jg short @..local.l94
    lea ax, word [bp - 0x005e]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l93
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x30, 0xae ; call 0xd1a8
    add sp, byte 8
@..local.l93:
    mov ax, 0xffff
    ret
@..local.l94:
    push word [data_69c8]
    call api_idx_0006
    pop cx
    mov cx, word [data_69c8]
    shl cx, 1
    mov bx, cx
    mov word [bx + 0x69bc], ax
    mov ax, 0x248
    imul word [data_69c8]
    add ax, 0x5bf4
    mov word [bp - 0x0014], ax
    mov ax, word [data_9426]
    push ax
    cmp ax, strict word 5
    pop ax
    jle short @..local.l95
    mov ax, 5
@..local.l95:
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x24], ax
    mov ax, 0x9402
    push ax
    push word [bp - 0x0014]
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, word [data_940a]
    mov dx, word [data_940c]
    mov bx, word [bp - 0x0014]
    mov word [bx + 0xa], dx
    mov word [bx + 0x8], ax
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x12], 0
    mov word [bx + 0x10], 0
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x16], 0
    mov word [bx + 0x14], 0
    mov word [bp - 0x0004], 0
@..local.l96:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx - 0x6ad2]
    mov si, bx
    mov bx, word [bp - 0x0014]
    mov byte [bx + si + 0x170], al
    cmp word [data_9426], byte 5
    jle short @..local.l97
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x0004]
    cmp byte [bx + si + 0x170], 0xe
    jbe short @..local.l97
    mov al, byte [bx + si + 0x170]
    sub ah, ah
    push ax
    mov ax, 4
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    pop ax
    sub ax, cx
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x170], al
@..local.l97:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short @..local.l96
    mov ax, word [data_941c]
    cwd
    idiv word [data_9426]
    mov bx, word [bp - 0x0014]
    mov cx, word [bx + 0x24]
    imul cx
    mov word [bx + 0x1a], ax
    mov bx, word [bp - 0x0014]
    cmp word [bx + 0x1a], byte 7
    jge short @..local.l98
    mov word [bx + 0x1a], 7
@..local.l98:
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + 0x24]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, strict word 8
    mov cx, word [bx + 0x1a]
    cmp ax, cx
    jge short @..local.l99
    mov ax, 8
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov bx, word [bp - 0x0014]
    mov cx, word [bx + 0x24]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov word [bx + 0x1a], ax
@..local.l99:
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + 0x1a]
    mov word [bx + 0x18], ax
    mov bx, word [bp - 0x0014]
    mov al, byte [bx + 0x170]
    sub ah, ah
    mov word [bp - 0x001a], ax
    mov al, byte [bx + 0x173]
    sub ah, ah
    mov word [bp - 0x001c], ax
    shl ax, 1
    add ax, word [bp - 0x001a]
    mov cx, 3
    imul cx
    mov word [bp - 0x001e], ax
    mov ax, word [bp - 0x001a]
    shl ax, 1
    add ax, word [bp - 0x001c]
    imul cx
    mov word [bp - 0x0020], ax
    cmp word [bp - 0x001c], byte 0x0f
    jle short @..local.l100
    mov ax, word [bp - 0x001c]
    add word [bp - 0x001e], ax
@..local.l100:
    cmp word [bp - 0x001c], byte 0x11
    jle short @..local.l101
    mov ax, word [bp - 0x001c]
    add word [bp - 0x001e], ax
@..local.l101:
    cmp word [bp - 0x001a], byte 0x0f
    jle short @..local.l102
    mov ax, word [bp - 0x001a]
    add word [bp - 0x0020], ax
@..local.l102:
    cmp word [bp - 0x001a], byte 0x11
    jle short @..local.l103
    mov ax, word [bp - 0x001a]
    add word [bp - 0x0020], ax
@..local.l103:
    mov ax, 5
    imul word [bx + 0x24]
    add word [bp - 0x001e], ax
    mov ax, word [bp - 0x001e]
    mov word [bx + 0x1c], ax
    mov ax, word [bp - 0x001e]
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x1e], ax
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x20], 0
    mov ax, 0xf
    imul word [bp - 0x0020]
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x22], ax
    mov bx, word [bp - 0x0014]
    cmp byte [bx + 0x237], 5
    jne short @..local.l104
    mov ax, word [bx + 0x22]
    shl ax, 1
    cwd
    idiv cx
    mov word [bx + 0x22], ax
@..local.l104:
    mov ax, word [data_9428]
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x26], ax
    mov word [bp - 0x0004], 0
@..local.l105:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6bd4]
    cwd
    idiv word [data_9426]
    mov bx, word [bp - 0x0014]
    mov cx, word [bx + 0x24]
    imul cx
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    mov si, cx
    mov word [bx + si + 0x2a], ax
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + 0x24]
    mov cx, 7
    imul cx
    add ax, strict word 7
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    mov si, cx
    mov cx, word [bx + si + 0x2a]
    cmp ax, cx
    jge short @..local.l106
    mov ax, 7
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + 0x24]
    mov cx, 7
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    mov si, cx
    mov word [bx + si + 0x2a], ax
@..local.l106:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov si, ax
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + si + 0x2a]
    mov word [bx + si + 0x28], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jge short @..local.l107
    jmp near @..local.l105
@..local.l107:
    mov word [bp - 0x0004], 0
@..local.l108:
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x001a], ax
    jmp near @..local.l109

    db 0xc7, 0x46, 0xe6, 0x0c, 0x00, 0xe9, 0xbc, 0x00, 0xc7, 0x46, 0xe6, 0x0d, 0x00, 0xe9, 0xb4, 0x00
    db 0xc7, 0x46, 0xe6, 0x0e, 0x00, 0xe9, 0xac, 0x00, 0xc7, 0x46, 0xe6, 0x0f, 0x00, 0xe9, 0xa4, 0x00
    db 0xc7, 0x46, 0xe6, 0x10, 0x00, 0xe9, 0x9c, 0x00, 0xc7, 0x46, 0xe6, 0x11, 0x00, 0xe9, 0x94, 0x00
    db 0xc7, 0x46, 0xe6, 0xff, 0xff, 0xe9, 0x8c, 0x00, 0xc7, 0x46, 0xe6, 0xff, 0xff, 0xe9, 0x84, 0x00
    db 0xc7, 0x46, 0xe6, 0xff, 0xff, 0xe9, 0x7c, 0x00, 0xc7, 0x46, 0xe6, 0xff, 0xff, 0xeb, 0x75, 0xc7
    db 0x46, 0xe6, 0xff, 0xff, 0xeb, 0x6e, 0xc7, 0x46, 0xe6, 0x18, 0x00, 0xeb, 0x67, 0xc7, 0x46, 0xe6
    db 0xff, 0xff, 0xeb, 0x60, 0xc7, 0x46, 0xe6, 0x1b, 0x00, 0xeb, 0x59, 0xc7, 0x46, 0xe6, 0x1d, 0x00
    db 0xeb, 0x52, 0xc7, 0x46, 0xe6, 0x1e, 0x00, 0xeb, 0x4b, 0xc7, 0x46, 0xe6, 0x1f, 0x00, 0xeb, 0x44
    db 0xc7, 0x46, 0xe6, 0x20, 0x00, 0xeb, 0x3d, 0xc7, 0x46, 0xe6, 0x21, 0x00, 0xeb
    db '6!v)v1v9vAvIvQvYvavivpvwv~v'
    db 0x85, 0x76, 0x8c, 0x76, 0x93, 0x76, 0x9a, 0x76, 0xa1, 0x76, 0xa8, 0x76

@..local.l109:
    sub ax, strict word 0xb
    cmp ax, strict word 0x13
    jae short @..local.l110
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x76af]
@..local.l110:
    cmp word [bp - 0x001a], byte 0
    jl short @..local.l113
    mov ax, word [data_9426]
    mov word [bp - 0x001c], ax
    cmp ax, strict word 0x12
    jle short @..local.l111
    mov word [bp - 0x001c], 0x12
@..local.l111:
    cmp word [bp - 0x001c], byte 0
    jle short @..local.l112
    mov bx, word [bp - 0x0004]
    mov cl, byte [bx - 0x6aca]
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x001a]
    mov al, byte [bx + si + 0x178]
    cmp al, cl
    jae short @..local.l112
    mov al, byte [bx + si + 0x178]
    sub ah, ah
    mov cx, ax
    push cx
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    pop cx
    add ax, cx
    inc ax
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x001a]
    mov byte [bx + si + 0x178], al
    dec word [bp - 0x001c]
    jmp short @..local.l111
@..local.l112:
    mov bx, word [bp - 0x0004]
    mov cl, byte [bx - 0x6aca]
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x001a]
    mov al, byte [bx + si + 0x178]
    cmp al, cl
    jbe short @..local.l113
    mov byte [bx + si + 0x178], cl
@..local.l113:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x1e
    jge short @..local.l114
    jmp near @..local.l108
@..local.l114:
    mov word [bp - 0x0004], 0
@..local.l115:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx - 0x6aac]
    sub ah, ah
    cwd
    idiv word [data_9426]
    mov bx, word [bp - 0x0014]
    mov cx, word [bx + 0x24]
    imul cx
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x1a8], al
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x1a8]
    mov byte [bx + si + 0x19a], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xe
    jl short @..local.l115
    mov word [bp - 0x0004], 0
@..local.l116:
    push word [bp - 0x0004]
    mov ax, 0x958a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l117
    push word [bp - 0x0004]
    call loc_1a12
    pop cx
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short @..local.l117
    mov cx, 6
    imul cx
    mov bx, ax
    cmp byte [bx + 0x621], 4
    jae short @..local.l117
    push cx
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 6
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jl short @..local.l117
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    mov ax, word [bp - 0x0014]
    add ax, 0x21e
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..local.l117:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x4f
    jl short @..local.l116
    mov word [bp - 0x0004], 0
@..local.l118:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx - 0x6a6a]
    mov si, bx
    mov bx, word [bp - 0x0014]
    mov byte [bx + si + 0x22e], al
    mov bx, word [bp - 0x0004]
    mov al, byte [bx - 0x6a66]
    mov si, bx
    mov bx, word [bp - 0x0014]
    mov byte [bx + si + 0x232], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jl short @..local.l118
    mov al, byte [data_959f]
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x237], al
    mov al, byte [data_95a0]
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x238], al
    mov al, byte [data_95a1]
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x239], al
    mov bx, word [bp - 0x0014]
    push word [bx + 0x24]
    mov al, byte [bx + 0x239]
    sub ah, ah
    push ax
    call api_idx_0040
    add sp, byte 4
    mov bx, word [bp - 0x0014]
    mov word [bx + 0xe], dx
    mov word [bx + 0xc], ax
    mov bx, word [bp - 0x0014]
    mov al, byte [bx + 0x239]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x238]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x237]
    sub ah, ah
    push ax
    call loc_1820
    add sp, byte 6
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x236], al
    mov al, byte [data_95a2]
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x23a], al
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x23b], 0
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x23f], 0
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x240], 1
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x241], 0xa
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x243], 1
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x244], 1
    mov bx, word [bp - 0x0014]
    mov al, byte [bx + 0x175]
    sub ah, ah
    mov cx, word [bx + 0x24]
    add ax, cx
    mov byte [bx + 0x245], al
    mov ax, 3
    imul word [data_9426]
    push ax
    mov al, byte [data_95b0]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + 0x24]
    mov cx, 3
    imul cx
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0004], ax
    mov cx, 0x64
    mov ax, word [bx + 0x24]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    sub cx, ax
    mov ax, word [bp - 0x0004]
    cmp cx, ax
    jle short @..local.l119
    mov ax, 5
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, 0x64
    mov bx, word [bp - 0x0014]
    mov dx, word [bx + 0x24]
    shl dx, 1
    shl dx, 1
    shl dx, 1
    sub cx, dx
    add ax, cx
    mov word [bp - 0x0004], ax
@..local.l119:
    cmp word [bp - 0x0004], byte 0x64
    jle short @..local.l120
    mov word [bp - 0x0004], 0x64
@..local.l120:
    mov al, byte [bp - 0x0004]
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x246], al
    mov word [bp - 0x0004], 0
@..local.l121:
    push word [bp - 0x0004]
    push word [data_69c8]
    call ds_dispatch_c608
    add sp, byte 4
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short @..local.l121
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x1b6], 0xa
    mov bx, word [bp - 0x0014]
    cmp byte [bx + 0x175], 0xf
    jbe short @..local.l122
    mov cx, 1
    jmp short @..local.l123
@..local.l122:
    mov cx, 0
@..local.l123:
    mov al, byte [bx + 0x1b6]
    cbw
    sub ax, cx
    mov byte [bx + 0x1b6], al
    cbw
    mov cx, 0
    cmp byte [bx + 0x175], 0x11
    jbe short @..local.l124
    mov cx, 1
@..local.l124:
    sub ax, cx
    mov byte [bx + 0x1b6], al
    mov al, byte [bx + 0x1b6]
    cbw
    mov cx, 0
    cmp byte [bx + 0x237], 5
    jne short @..local.l125
    mov cx, 2
@..local.l125:
    sub ax, cx
    mov byte [bx + 0x1b6], al
    cmp byte [bx + 0x239], 0xd
    je short @..local.l126
    cmp byte [bx + 0x239], 0xc
    jne short @..local.l127
@..local.l126:
    mov al, byte [bx + 0x1b6]
    cbw
    push ax
    mov al, byte [bx + 0x189]
    sub ah, ah
    mov cx, 0xa
    cwd
    idiv cx
    mov cx, ax
    pop ax
    sub ax, cx
    mov byte [bx + 0x1b6], al
@..local.l127:
    mov byte [bx + 0x1b7], 0
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x1b8], 0
    mov word [bp - 0x0004], 3
@..local.l128:
    mov bx, word [bp - 0x0014]
    mov al, byte [bx + 0x1b6]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x1b6], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short @..local.l128
    mov word [bp - 0x0004], 0
@..local.l129:
    mov bx, word [bp - 0x0014]
    mov al, byte [bx + 0x177]
    sub ah, ah
    add ax, strict word 0xfff7
    jge short @..local.l130
    neg ax
    mov cx, ax
    jmp short @..local.l131
@..local.l130:
    mov al, byte [bx + 0x177]
    sub ah, ah
    mov cx, ax
    add ax, strict word 0xfff7
    mov cx, ax
@..local.l131:
    shl cx, 1
    shl cx, 1
    mov ax, 0x28
    sub ax, cx
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x1be], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x60
    jl short @..local.l129
    mov word [bp - 0x0004], 0
@..local.l132:
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x154], 0xff
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short @..local.l132
    push word [data_69c8]
    call api_idx_0004_2
    pop cx
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0018], 0
    cmp word [data_69c8], byte 0
    jne short @..local.l133
    mov ax, 1
    push ax
    mov ax, 0xfffe
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    add cx, ax
    mov ax, word [bp - 0x0014]
    add ax, cx
    add ax, strict word 0x40
    push ax
    mov ax, 0x19b
    push ax
    push word [data_69c8]
    call api_idx_004c
    add sp, byte 0x0a
    inc word [bp - 0x0018]
@..local.l133:
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov al, byte [data_95a1]
    sub ah, ah
    jmp near @..local.l134

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xe9, 0x91, 0x00, 0xc7, 0x46, 0xfc, 0x12, 0x00, 0xe9, 0x89, 0x00
    db 0xc7, 0x46, 0xfc, 0x18, 0x00, 0xe9, 0x81, 0x00, 0xc7, 0x46, 0xfc, 0x06, 0x00, 0xe9, 0x79, 0x00
    db 0xc7, 0x46, 0xfc, 0x1f, 0x00, 0xc7, 0x46, 0xfa, 0x21, 0x00, 0xeb, 0x6d, 0xc7, 0x46, 0xfc, 0x12
    db 0x00, 0xeb, 0x66, 0xc7, 0x46, 0xfc, 0x1d, 0x00, 0xc7, 0x46, 0xfa, 0x1e, 0x00, 0xeb, 0x5a, 0xc7
    db 0x46, 0xfc, 0x01, 0x00, 0xeb, 0x53, 0xc7, 0x46, 0xfc, 0x16, 0x00, 0xeb, 0x4c, 0xc7, 0x46, 0xfc
    db 0x18, 0x00, 0xeb, 0x45, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xeb, 0x3e, 0xc7, 0x46, 0xfc, 0x0a, 0x00
    db 0xeb, 0x37, 0xc7, 0x46, 0xfc, 0x19, 0x00, 0xeb, 0x30, 0xc7, 0x46, 0xfc, 0x2f, 0x00, 0xeb, 0x29
    db 0xcc, 0x7a, 0xd4, 0x7a, 0xdc, 0x7a, 0xe4, 0x7a, 0xec, 0x7a, 0xf8, 0x7a, 0xff, 0x7a, 0x0b, 0x7b
    db 0x12, 0x7b, 0x19
    db "{ {'{.{5{"

@..local.l134:
    cmp ax, strict word 0xe
    jae short @..local.l135
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7b3c]
@..local.l135:
    cmp byte [data_959f], 5
    jne short @..local.l136
    mov word [bp - 0x0004], 0x18d
    mov word [bp - 0x0006], 0
@..local.l136:
    cmp word [bp - 0x0004], byte 0
    jle short @..local.l137
    mov ax, 1
    push ax
    mov ax, 0xfffe
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    add cx, ax
    mov ax, word [bp - 0x0014]
    add ax, cx
    add ax, strict word 0x40
    push ax
    push word [bp - 0x0004]
    push word [data_69c8]
    call api_idx_004c
    add sp, byte 0x0a
    inc word [bp - 0x0018]
@..local.l137:
    cmp word [bp - 0x0006], byte 0
    jle short @..local.l138
    mov ax, 1
    push ax
    mov ax, 0xfffe
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    add cx, ax
    mov ax, word [bp - 0x0014]
    add ax, cx
    add ax, strict word 0x40
    push ax
    push word [bp - 0x0006]
    push word [data_69c8]
    call api_idx_004c
    add sp, byte 0x0a
    inc word [bp - 0x0018]
@..local.l138:
    mov word [bp - 0x0022], 0xffff
    mov word [bp - 0x0004], 0
    jmp near @..local.l145
@..local.l139:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6bbe]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jg short @..local.l140
    jmp near @..local.l144
@..local.l140:
    push ax
    call loc_1683
    pop cx
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jge short @..local.l143
    cmp word [bp - 0x0022], byte 0xff
    je short @..local.l141
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l142
@..local.l141:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6bb7]
    sub ah, ah
    test ax, 1
    je short @..local.l142
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x0022], ax
@..local.l142:
    jmp short @..local.l144
@..local.l143:
    cmp word [bp - 0x0006], byte 0
    jle short @..local.l144
    cmp word [bp - 0x0016], byte 2
    jge short @..local.l144
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6bb8]
    sub ah, ah
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    add cx, ax
    mov ax, word [bp - 0x0014]
    add ax, cx
    add ax, strict word 0x40
    push ax
    push word [bp - 0x0006]
    push word [data_69c8]
    call api_idx_004c
    add sp, byte 0x0a
    inc word [bp - 0x0018]
    mov ax, word [bp - 0x0018]
    cmp ax, strict word 0xa
    jl short @..local.l144
    mov word [bp - 0x0018], 0
    inc word [bp - 0x0016]
@..local.l144:
    inc word [bp - 0x0004]
@..local.l145:
    mov al, byte [data_95ae]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jle short @..local.l146
    jmp near @..local.l139
@..local.l146:
    mov word [bp - 0x0004], 0
    jmp near @..local.l153
@..local.l147:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6b6e]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jg short @..local.l148
    jmp near @..local.l152
@..local.l148:
    push ax
    call loc_1683
    pop cx
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jge short @..local.l151
    cmp word [bp - 0x0022], byte 0xff
    je short @..local.l149
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l150
@..local.l149:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6b67]
    sub ah, ah
    test ax, 1
    je short @..local.l150
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xa
    mov word [bp - 0x0022], ax
@..local.l150:
    jmp short @..local.l152
@..local.l151:
    cmp word [bp - 0x0006], byte 0
    jle short @..local.l152
    cmp word [bp - 0x0016], byte 2
    jge short @..local.l152
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6b68]
    sub ah, ah
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    add cx, ax
    mov ax, word [bp - 0x0014]
    add ax, cx
    add ax, strict word 0x40
    push ax
    push word [bp - 0x0006]
    push word [data_69c8]
    call api_idx_004c
    add sp, byte 0x0a
    inc word [bp - 0x0018]
    mov ax, word [bp - 0x0018]
    cmp ax, strict word 0xa
    jl short @..local.l152
    mov word [bp - 0x0018], 0
    inc word [bp - 0x0016]
@..local.l152:
    inc word [bp - 0x0004]
@..local.l153:
    mov al, byte [data_95af]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jle short @..local.l154
    jmp near @..local.l147
@..local.l154:
    cmp word [bp - 0x0022], byte 0xff
    je short @..local.l157
    cmp word [bp - 0x0016], byte 2
    jge short @..local.l157
    mov ax, word [bp - 0x0022]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6bbe]
    call loc_1683
    pop cx
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jge short @..local.l156
    push ax
    cmp ax, strict word 0
    pop ax
    jge short @..local.l155
    neg ax
@..local.l155:
    mov word [bp - 0x0006], ax
@..local.l156:
    cmp word [bp - 0x0006], byte 0
    jle short @..local.l157
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0022]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6bb8]
    sub ah, ah
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    add cx, ax
    mov ax, word [bp - 0x0014]
    add ax, cx
    add ax, strict word 0x40
    push ax
    push word [bp - 0x0006]
    push word [data_69c8]
    call api_idx_004c
    add sp, byte 0x0a
@..local.l157:
    inc word [data_69c8]
    inc word [bp - 0x0002]
@..local.l158:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9400]
    jge short @..local.l159
    jmp near @..local.l92
@..local.l159:
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    mov word [bp - 0x001a], 0xffff
    mov word [bp - 0x0004], 0
    jmp short @..local.l163
@..local.l160:
    mov word [bp - 0x0006], 0
@..local.l161:
    push word [bp - 0x0006]
    mov ax, 0x248
    imul word [bp - 0x0004]
    add ax, 0x5e26
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l162
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x001a], ax
@..local.l162:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jl short @..local.l161
    inc word [bp - 0x0004]
@..local.l163:
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_69c8]
    jl short @..local.l160
    mov ax, word [bp - 0x001a]
    jmp near @..local.l168
@..local.l164:
    mov word [data_8f46], 0x5c
    mov word [data_8f44], 0x4f
    mov word [data_8f42], 4
    mov word [data_8f40], 7
    mov word [data_8f3e], 3
    mov word [data_82ee], 2
    mov word [data_830c], 0
    mov word [data_5c0a], 0
    mov word [data_5c08], 0x1388
    mov ax, 0
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xffec
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0xa
    push ax
    push ax
    mov ax, 0xffec
    push ax
    mov ax, 0xffa6
    push ax
    call loc_1f0e
    add sp, byte 0x14
    mov word [data_95b2], 1
    jmp near @..local.l171
@..local.l165:
    mov word [data_8f46], 0x8c
    mov word [data_8f44], 0x7d
    mov word [data_8f42], 4
    mov word [data_8f40], 5
    mov word [data_8f3e], 0xb
    mov word [data_82ee], 3
    mov word [data_830c], 6
    mov word [data_5c0a], 0
    mov word [data_5c08], 0x2710
    mov ax, 0x5a
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0xffd8
    push ax
    mov ax, 0x28
    push ax
    mov ax, 0xffa6
    push ax
    mov ax, 0xffce
    push ax
    call loc_1f0e
    add sp, byte 0x14
    mov word [data_95b2], 2
    jmp near @..local.l171
@..local.l166:
    mov word [data_8f46], 0x6e
    mov word [data_8f44], 0x8e
    mov word [data_8f42], 6
    mov word [data_8f40], 6
    mov word [data_8f3e], 1
    mov word [data_82ee], 2
    mov word [data_830c], 2
    mov ax, 0xffa6
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xffec
    push ax
    mov ax, 0xffce
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0xffa1
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0
    push ax
    call loc_1f0e
    add sp, byte 0x14
    mov word [data_95b2], 3
    jmp short @..local.l171
@..local.l167:
    mov word [data_95b2], 4
    jmp short @..local.l171
@..local.l168:
    cmp ax, strict word 0xffff
    je short @..local.l167
    cmp ax, strict word 0
    jne short @..local.l169
    jmp near @..local.l164
@..local.l169:
    cmp ax, strict word 1
    jne short @..local.l170
    jmp near @..local.l165
@..local.l170:
    cmp ax, strict word 2
    je short @..local.l166
@..local.l171:
    cmp word [bp - 0x001a], byte 0xff
    jne short @..local.l172
    jmp near @..local.l173
@..local.l172:
    mov ax, 1
    push ax
    push ax
    mov ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    mov ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x14
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x15
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, word [data_8f46]
    mov word [data_8f3a], ax
    mov ax, word [data_8f44]
    mov word [data_8f38], ax
    mov ax, word [data_8f42]
    mov word [data_8f36], ax
    mov ax, word [data_8f40]
    mov word [data_8f34], ax
    mov ax, word [data_8f3e]
    mov word [data_8f32], ax
    mov ax, word [data_82ee]
    mov word [data_8f30], ax
    mov ax, word [data_830c]
    mov word [data_8f3c], ax
@..local.l173:
    mov ax, 0
    ret
api_idx_0038_2:
    mov ax, 0xffc8
    call ds_dispatch_f40b
    mov word [bp - 0x000c], 0
    mov ax, word [data_5218]
    mov word [bp - 0x000e], ax
    cmp byte [data_5987], 5
    jne short @..api_idx_0038_2.l1
    cmp ax, strict word 0
    jle short @..api_idx_0038_2.l1
    inc ax
    inc ax
    jmp short @..api_idx_0038_2.l2
@..api_idx_0038_2.l1:
    mov ax, word [bp - 0x000e]
@..api_idx_0038_2.l2:
    mov word [bp - 0x000e], ax
    mov ax, 0
    push ax
    call ds_dispatch_ef14
    pop cx
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, 0x58c
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, 0x58d
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov word [bp - 0x0010], 1
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_0038_2.l3
    mov ax, word [bp + 0x4]
    cmp ax, strict word 2
    jne short @..api_idx_0038_2.l4
@..api_idx_0038_2.l3:
    mov word [data_95b2], 4
    mov ax, 1
    push ax
    mov ax, 0x90cf
    push ax
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    mov ax, 0x91ee
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    jmp near @..local.l182
@..api_idx_0038_2.l4:
    mov word [data_95b2], 0
    mov ax, 0x594e
    push ax
    mov ax, 0x593a
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x578
    push ax
    call api_idx_0028
    add sp, byte 0x0c
    cmp ax, strict word 2
    jne short @..local.l174
    mov ax, 0xffff
    ret
@..local.l174:
    mov ax, 0x3a
    push ax
    mov ax, 0x5912
    push ax
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x6a, 0xa0 ; call 0xd112
    add sp, byte 6
    mov ax, 0x3a
    push ax
    mov ax, 0x593a
    push ax
    mov ax, 0x91da
    push ax
    db 0xe8, 0x58, 0xa0 ; call 0xd112
    add sp, byte 6
    mov ax, 0x593a
    push ax
    mov ax, 0x91ee
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0x91ee
    push ax
    call ds_dispatch_fa90
    pop cx
    cmp ax, strict word 0
    jle short @..local.l175
    mov ax, 0x91ee
    push ax
    call ds_dispatch_fa90
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    mov bx, ax
    cmp byte [bx - 0x6e12], 0x5c
    je short @..local.l175
    mov byte [bx - 0x6e11], 0x5c
    mov byte [bx - 0x6e10], 0
@..local.l175:
    mov ax, 0x594e
    push ax
    mov ax, 0x91ee
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    cmp byte [data_5987], 1
    jne short @..local.l176
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call string_loc_9386
    add sp, byte 4
    test ax, ax
    jne short @..local.l176
    jmp near @..local.l182
@..local.l176:
    mov ax, 0x91da
    push ax
    call ds_dispatch_fa90
    pop cx
    cmp ax, strict word 0
    jle short @..local.l180
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call string_loc_9386
    add sp, byte 4
    test ax, ax
    je short @..local.l177
    cmp byte [data_5987], 5
    jne short @..local.l178
@..local.l177:
    mov word [bp - 0x000c], 1
@..local.l178:
    mov ax, 0
    push ax
    push word [bp - 0x000c]
    mov ax, 0xffff
    push ax
    mov ax, 0x91da
    push ax
    db 0xe8, 0x4a, 0xa0 ; call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000c], byte 0
    je short @..local.l179
    mov ax, 0
@..local.l179:
    mov word [bp - 0x0010], ax
    jmp short @..local.l182
@..local.l180:
    cmp byte [data_5987], 1
    jbe short @..local.l182
    mov word [bp - 0x000c], 1
    mov ax, 0
    push ax
    push word [bp - 0x000c]
    mov ax, 0xffff
    push ax
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x18, 0xa0 ; call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000c], byte 0
    je short @..local.l181
    mov ax, 0
@..local.l181:
    mov word [bp - 0x0010], ax
@..local.l182:
    cmp word [bp + 0x4], byte 2
    je short @..local.l183
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l183:
    mov ax, 0
    push ax
    mov ax, 0x91ee
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x000a], ax
    cmp ax, strict word 0xffff
    jne short @..local.l185
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l184
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xb8, 0x9f ; call 0xd1a8
    add sp, byte 8
@..local.l184:
    mov ax, 0xffff
    ret
@..local.l185:
    cmp word [bp + 0x4], byte 0
    je short @..local.l186
    mov ax, word [bp + 0x4]
    cmp ax, strict word 2
    jne short @..local.l187
@..local.l186:
    jmp short @..local.l188
@..local.l187:
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 3
    push ax
    lea ax, word [bp - 0x0038]
    push ax
    call api_idx_0004
    add sp, byte 0x0e
@..local.l188:
    mov si, 0x5642
    mov di, 0x95b4
    mov cx, ds
    mov es, cx
    mov cx, 0x1a6
    rep movsw
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fdbd
    add sp, byte 8
    mov ax, 0x34c
    push ax
    mov ax, 0x5642
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l190
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l189
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x09, 0x9f ; call 0xd1a8
    add sp, byte 8
@..local.l189:
    mov ax, 0xffff
    ret
@..local.l190:
    mov word [bp - 0x0002], 0
@..local.l191:
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x9884
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x5912
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..local.l191
    mov al, byte [data_98d4]
    mov byte [data_5962], al
    mov al, byte [data_98d5]
    mov byte [data_5963], al
    mov ax, 0x98d6
    push ax
    mov ax, 0x5964
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov al, byte [data_98ea]
    mov byte [data_5978], al
    mov al, byte [data_98eb]
    mov byte [data_5979], al
    mov word [bp - 0x0002], 0
@..local.l192:
    mov bx, word [bp - 0x0002]
    mov al, byte [bx - 0x6712]
    mov byte [bx + 0x597c], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..local.l192
    mov al, byte [data_98f6]
    mov byte [data_5984], al
    mov al, byte [data_98f7]
    mov byte [data_5985], al
    mov ax, word [data_98f2]
    mov word [data_5980], ax
    mov ax, word [data_98f4]
    mov word [data_5982], ax
    mov al, byte [data_98f8]
    mov byte [data_5986], al
    mov al, byte [data_98f9]
    mov byte [data_5987], al
    mov al, byte [data_98fa]
    mov byte [data_5988], al
    mov al, byte [data_98fb]
    mov byte [data_5989], al
    mov al, byte [data_98fc]
    mov byte [data_598a], al
    mov al, byte [data_98fd]
    mov byte [data_598b], al
    mov al, byte [data_98fe]
    mov byte [data_598c], al
    mov al, byte [data_5986]
    sub ah, ah
    mov word [data_9058], ax
    mov ax, 6
    imul word [data_590e]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short @..local.l194
    push ax
    push word [data_0e10]
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l194
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l193
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x02, 0x9e ; call 0xd1a8
    add sp, byte 8
@..local.l193:
    mov ax, 0xffff
    ret
@..local.l194:
    mov ax, word [data_5910]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short @..local.l196
    push ax
    push word [data_0e0e]
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l196
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l195
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xae, 0x9d ; call 0xd1a8
    add sp, byte 8
@..local.l195:
    mov ax, 0xffff
    ret
@..local.l196:
    mov word [bp - 0x0004], 0
@..local.l197:
    mov ax, 0x80
    push ax
    mov ax, 0x9900
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l199
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l198
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x63, 0x9d ; call 0xd1a8
    add sp, byte 8
@..local.l198:
    mov ax, 0xffff
    ret
@..local.l199:
    mov ax, 0x80
    push ax
    mov ax, 0x9980
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l201
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l200
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x1d, 0x9d ; call 0xd1a8
    add sp, byte 8
@..local.l200:
    mov ax, 0xffff
    ret
@..local.l201:
    mov ax, 0x80
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    mov cx, ax
    mov ax, word [data_0e1a]
    mov dx, word [data_0e1c]
    add ax, cx
    push dx
    push ax
    push ds
    mov ax, 0x9900
    push ax
    call ds_dispatch_afcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    mov cx, ax
    mov ax, word [data_0e16]
    mov dx, word [data_0e18]
    add ax, cx
    push dx
    push ax
    push ds
    mov ax, 0x9980
    push ax
    call ds_dispatch_afcc
    add sp, byte 0x0a
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x20
    jge short @..local.l202
    jmp near @..local.l197
@..local.l202:
    mov ax, 0x4c
    push ax
    mov ax, 0x9a00
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l204
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l203
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x81, 0x9c ; call 0xd1a8
    add sp, byte 8
@..local.l203:
    mov ax, 0xffff
    ret
@..local.l204:
    cmp word [data_9a00], byte 0xff
    jne short @..local.l206
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l205
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x4d, 0x9c ; call 0xd1a8
    add sp, byte 8
@..local.l205:
    mov ax, 0xffff
    ret
@..local.l206:
    mov ax, word [data_9a02]
    mov word [data_8f46], ax
    mov ax, word [data_9a04]
    mov word [data_8f44], ax
    mov ax, word [data_9a06]
    mov word [data_8f42], ax
    mov ax, word [data_9a08]
    mov word [data_8f40], ax
    mov ax, word [data_9a0a]
    mov word [data_8f3e], ax
    mov ax, word [data_9a0c]
    mov word [data_82ee], ax
    mov ax, word [data_9a00]
    mov word [data_830c], ax
    mov ax, word [data_9a10]
    mov word [data_8f3a], ax
    mov ax, word [data_9a12]
    mov word [data_8f38], ax
    mov ax, word [data_9a14]
    mov word [data_8f36], ax
    mov ax, word [data_9a16]
    mov word [data_8f34], ax
    mov ax, word [data_9a18]
    mov word [data_8f32], ax
    mov ax, word [data_9a1a]
    mov word [data_8f30], ax
    mov ax, word [data_9a0e]
    mov word [data_8f3c], ax
    mov ax, word [data_9a1c]
    mov word [data_8f2e], ax
    mov ax, word [data_9a1e]
    mov word [data_8f2c], ax
    mov ax, word [data_9a20]
    mov word [data_8f2a], ax
    mov ax, word [data_9a22]
    mov word [data_8f28], ax
    mov ax, word [data_9a24]
    mov word [data_8f26], ax
    mov word [bp - 0x0002], 0
@..local.l207:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x65ce]
    mov word [bx - 0x7d0e], ax
    mov ax, word [bx - 0x65cc]
    mov word [bx - 0x7d0c], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..local.l207
    mov ax, word [data_9a26]
    mov dx, word [data_9a28]
    mov word [data_8f1e], dx
    mov word [data_8f1c], ax
    mov ax, word [data_9a2a]
    mov dx, word [data_9a2c]
    mov word [data_8f1a], dx
    mov word [data_8f18], ax
    mov ax, word [data_9a2e]
    mov dx, word [data_9a30]
    mov word [data_8f16], dx
    mov word [data_8f14], ax
    mov ax, 0x80
    push ax
    mov ax, 0x8a6e
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x90
    push ax
    mov ax, 0x89de
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x68
    push ax
    mov ax, 0x8976
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x14a
    push ax
    mov ax, 0x882c
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x344
    push ax
    mov ax, 0x84e8
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x42
    push ax
    mov ax, 0x84a6
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l209
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l208
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xde, 0x9a ; call 0xd1a8
    add sp, byte 8
@..local.l208:
    mov ax, 0xffff
    ret
@..local.l209:
    mov word [bp - 0x0002], 0
@..local.l210:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov bx, word [bp - 0x0002]
    mov byte [bx + 0x5990], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x64
    jl short @..local.l210
    cmp word [bp + 0x4], byte 1
    je short @..local.l211
    jmp near @..local.l218
@..local.l211:
    mov ax, 0x64
    push ax
    mov ax, 0x5990
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l213
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l212
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x70, 0x9a ; call 0xd1a8
    add sp, byte 8
@..local.l212:
    mov ax, 0xffff
    ret
@..local.l213:
    mov word [data_69c8], 0
    mov word [bp - 0x0002], 0
    jmp near @..local.l217
@..local.l214:
    mov ax, 0x248
    push ax
    mov ax, 0x9a4c
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l216
    lea ax, word [bp - 0x0024]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l215
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x1c, 0x9a ; call 0xd1a8
    add sp, byte 8
@..local.l215:
    mov ax, 0xffff
    ret
@..local.l216:
    push word [data_69c8]
    call api_idx_0006
    pop cx
    mov cx, word [data_69c8]
    shl cx, 1
    mov bx, cx
    mov word [bx + 0x69bc], ax
    mov si, 0x9a4c
    mov ax, 0x248
    imul word [data_69c8]
    mov di, ax
    add ax, 0x5bf4
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    rep movsw
    inc word [data_69c8]
    inc word [bp - 0x0002]
@..local.l217:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9a4a]
    jge short @..local.l218
    jmp near @..local.l214
@..local.l218:
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short @..local.l219
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xb6, 0x99 ; call 0xd1a8
    add sp, byte 8
@..local.l219:
    cmp word [bp + 0x4], byte 2
    jne short @..local.l221
    mov word [bp - 0x0002], 0
@..local.l220:
    mov ax, 0
    push ax
    mov ax, 0x248
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    add ax, 0x5bf4
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..local.l220
    call api_idx_0072
    cmp ax, strict word 0xffff
    jne short @..local.l221
    mov ax, 0xffff
    ret
@..local.l221:
    mov word [bp - 0x0002], 0
    jmp short @..local.l224
@..local.l222:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69bc]
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e2a]
    sub ah, ah
    push ax
    call api_idx_0016
    add sp, byte 4
    cmp word [bp + 0x4], byte 2
    je short @..local.l223
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_cb3a
    add sp, byte 4
@..local.l223:
    inc word [bp - 0x0002]
@..local.l224:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..local.l222
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    ret
api_idx_004e:
    mov ax, 0xffb2
    call ds_dispatch_f40b
    mov word [bp - 0x000e], 0
    mov ax, word [data_5218]
    mov word [bp - 0x0010], ax
    cmp byte [data_5987], 5
    jne short @..local.l226
    cmp ax, strict word 0
    jle short @..local.l226
    inc ax
    inc ax
    jmp short @..local.l227
@..local.l226:
    mov ax, word [bp - 0x0010]
@..local.l227:
    mov word [bp - 0x0010], ax
    mov ax, 0
    push ax
    call ds_dispatch_ef14
    pop cx
    lea ax, word [bp - 0x003a]
    push ax
    mov ax, 0x58c
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x004e]
    push ax
    mov ax, 0x58e
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov word [bp - 0x0012], 1
    cmp word [bp + 0x4], byte 1
    jne short @..local.l228
    mov ax, 0x90db
    push ax
    lea ax, word [bp - 0x0026]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov word [bp - 0x000c], 0x591
    jmp short @..local.l229
@..local.l228:
    mov ax, 0x594e
    push ax
    lea ax, word [bp - 0x0026]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov word [bp - 0x000c], 0x582
@..local.l229:
    lea ax, word [bp - 0x0026]
    push ax
    mov ax, 0x593a
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x000c]
    call api_idx_0028
    add sp, byte 0x0c
    cmp ax, strict word 2
    jne short @..local.l230
    mov ax, 0xffff
    ret
@..local.l230:
    cmp word [bp + 0x4], byte 0
    jne short @..local.l231
    lea ax, word [bp - 0x0026]
    push ax
    mov ax, 0x594e
    push ax
    call ds_dispatch_f364
    add sp, byte 4
@..local.l231:
    mov ax, 0x3a
    push ax
    mov ax, 0x5912
    push ax
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xc2, 0x97 ; call 0xd112
    add sp, byte 6
    mov ax, 0x3a
    push ax
    mov ax, 0x593a
    push ax
    mov ax, 0x91da
    push ax
    db 0xe8, 0xb0, 0x97 ; call 0xd112
    add sp, byte 6
    mov ax, 0x593a
    push ax
    mov ax, 0x91ee
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0x91ee
    push ax
    call ds_dispatch_fa90
    pop cx
    cmp ax, strict word 0
    jle short @..local.l232
    mov ax, 0x91ee
    push ax
    call ds_dispatch_fa90
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    mov bx, ax
    cmp byte [bx - 0x6e12], 0x5c
    je short @..local.l232
    mov byte [bx - 0x6e11], 0x5c
    mov byte [bx - 0x6e10], 0
@..local.l232:
    lea ax, word [bp - 0x0026]
    push ax
    mov ax, 0x91ee
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    cmp byte [data_5987], 1
    jne short @..local.l233
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call string_loc_9386
    add sp, byte 4
    test ax, ax
    jne short @..local.l233
    jmp near @..local.l239
@..local.l233:
    mov ax, 0x91da
    push ax
    call ds_dispatch_fa90
    pop cx
    cmp ax, strict word 0
    jle short @..local.l237
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call string_loc_9386
    add sp, byte 4
    test ax, ax
    je short @..local.l234
    cmp byte [data_5987], 5
    jne short @..local.l235
@..local.l234:
    mov word [bp - 0x000e], 1
@..local.l235:
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, 0xffff
    push ax
    mov ax, 0x91da
    push ax
    db 0xe8, 0xa2, 0x97 ; call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000e], byte 0
    je short @..local.l236
    mov ax, 0
@..local.l236:
    mov word [bp - 0x0012], ax
    jmp short @..local.l239
@..local.l237:
    cmp byte [data_5987], 1
    jbe short @..local.l239
    mov word [bp - 0x000e], 1
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, 0xffff
    push ax
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x70, 0x97 ; call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000e], byte 0
    je short @..local.l238
    mov ax, 0
@..local.l238:
    mov word [bp - 0x0012], ax
@..local.l239:
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0x301
    push ax
    mov ax, 0x91ee
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x000a], ax
    cmp ax, strict word 0xffff
    jne short @..local.l241
    lea ax, word [bp - 0x003a]
    push ax
    call loc_150d
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l240
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x16, 0x97 ; call 0xd1a8
    add sp, byte 8
@..local.l240:
    mov ax, 0xffff
    ret
@..local.l241:
    cmp word [data_830c], byte 0
    jge short @..local.l242
    jmp near @..local.l243
@..local.l242:
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 3
    push ax
    lea ax, word [bp - 0x004e]
    push ax
    call api_idx_0004
    add sp, byte 0x0e
    mov ax, 0x80
    push ax
    mov ax, word [data_830c]
    mov cx, 7
    shl ax, cl
    mov cx, ax
    mov ax, word [data_0e1a]
    mov dx, word [data_0e1c]
    add ax, cx
    push dx
    push ax
    push ds
    mov ax, 0x8b7e
    push ax
    call ds_dispatch_afcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    mov ax, word [data_830c]
    mov cx, 7
    shl ax, cl
    mov cx, ax
    mov ax, word [data_0e16]
    mov dx, word [data_0e18]
    add ax, cx
    push dx
    push ax
    push ds
    mov ax, 0x8afe
    push ax
    call ds_dispatch_afcc
    add sp, byte 0x0a
    mov ax, 0x10
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    mov ax, word [data_830c]
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_fedc
    add sp, byte 6
@..local.l243:
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fdbd
    add sp, byte 8
    mov ax, 0x34c
    push ax
    mov ax, 0x5642
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l245
    lea ax, word [bp - 0x003a]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l244
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x28, 0x96 ; call 0xd1a8
    add sp, byte 8
@..local.l244:
    mov ax, 0xffff
    ret
@..local.l245:
    mov ax, 6
    imul word [data_590e]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short @..local.l247
    push ax
    push word [data_0e10]
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l247
    lea ax, word [bp - 0x003a]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l246
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xd6, 0x95 ; call 0xd1a8
    add sp, byte 8
@..local.l246:
    mov ax, 0xffff
    ret
@..local.l247:
    mov ax, word [data_5910]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short @..local.l249
    push ax
    push word [data_0e0e]
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l249
    lea ax, word [bp - 0x003a]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l248
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x82, 0x95 ; call 0xd1a8
    add sp, byte 8
@..local.l248:
    mov ax, 0xffff
    ret
@..local.l249:
    mov word [bp - 0x0004], 0
@..local.l250:
    mov ax, 0x80
    push ax
    push ds
    mov ax, 0x9900
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    mov cx, ax
    mov ax, word [data_0e1a]
    mov dx, word [data_0e1c]
    add ax, cx
    push dx
    push ax
    call ds_dispatch_afcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    push ds
    mov ax, 0x9980
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    mov cx, ax
    mov ax, word [data_0e16]
    mov dx, word [data_0e18]
    add ax, cx
    push dx
    push ax
    call ds_dispatch_afcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    mov ax, 0x9900
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l252
    lea ax, word [bp - 0x003a]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l251
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xef, 0x94 ; call 0xd1a8
    add sp, byte 8
@..local.l251:
    mov ax, 0xffff
    ret
@..local.l252:
    mov ax, 0x80
    push ax
    mov ax, 0x9980
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l254
    lea ax, word [bp - 0x003a]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l253
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xa9, 0x94 ; call 0xd1a8
    add sp, byte 8
@..local.l253:
    mov ax, 0xffff
    ret
@..local.l254:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x20
    jge short @..local.l255
    jmp near @..local.l250
@..local.l255:
    mov ax, word [data_8f46]
    mov word [data_9a02], ax
    mov ax, word [data_8f44]
    mov word [data_9a04], ax
    mov ax, word [data_8f42]
    mov word [data_9a06], ax
    mov ax, word [data_8f40]
    mov word [data_9a08], ax
    mov ax, word [data_8f3e]
    mov word [data_9a0a], ax
    mov ax, word [data_82ee]
    mov word [data_9a0c], ax
    mov ax, word [data_830c]
    mov word [data_9a00], ax
    mov ax, word [data_8f3a]
    mov word [data_9a10], ax
    mov ax, word [data_8f38]
    mov word [data_9a12], ax
    mov ax, word [data_8f36]
    mov word [data_9a14], ax
    mov ax, word [data_8f34]
    mov word [data_9a16], ax
    mov ax, word [data_8f32]
    mov word [data_9a18], ax
    mov ax, word [data_8f30]
    mov word [data_9a1a], ax
    mov ax, word [data_8f3c]
    mov word [data_9a0e], ax
    mov ax, word [data_8f2e]
    mov word [data_9a1c], ax
    mov ax, word [data_8f2c]
    mov word [data_9a1e], ax
    mov ax, word [data_8f2a]
    mov word [data_9a20], ax
    mov ax, word [data_8f28]
    mov word [data_9a22], ax
    mov ax, word [data_8f26]
    mov word [data_9a24], ax
    mov word [bp - 0x0002], 0
@..local.l256:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7d0e]
    mov word [bx - 0x65ce], ax
    mov ax, word [bx - 0x7d0c]
    mov word [bx - 0x65cc], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..local.l256
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov word [data_9a28], dx
    mov word [data_9a26], ax
    mov ax, word [data_8f18]
    mov dx, word [data_8f1a]
    mov word [data_9a2c], dx
    mov word [data_9a2a], ax
    mov ax, word [data_8f14]
    mov dx, word [data_8f16]
    mov word [data_9a30], dx
    mov word [data_9a2e], ax
    mov ax, word [data_69c8]
    mov word [data_9a4a], ax
    mov ax, 0x4c
    push ax
    mov ax, 0x9a00
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l258
    lea ax, word [bp - 0x003a]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l257
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x8a, 0x93 ; call 0xd1a8
    add sp, byte 8
@..local.l257:
    mov ax, 0xffff
    ret
@..local.l258:
    mov ax, 0x80
    push ax
    mov ax, 0x8a6e
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x90
    push ax
    mov ax, 0x89de
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x68
    push ax
    mov ax, 0x8976
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x14a
    push ax
    mov ax, 0x882c
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x344
    push ax
    mov ax, 0x84e8
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x42
    push ax
    mov ax, 0x84a6
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l260
    lea ax, word [bp - 0x003a]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l259
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0xe0, 0x92 ; call 0xd1a8
    add sp, byte 8
@..local.l259:
    mov ax, 0xffff
    ret
@..local.l260:
    mov ax, 0x64
    push ax
    mov ax, 0x5990
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l262
    lea ax, word [bp - 0x003a]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l261
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x9a, 0x92 ; call 0xd1a8
    add sp, byte 8
@..local.l261:
    mov ax, 0xffff
    ret
@..local.l262:
    mov word [bp - 0x0002], 0
    jmp short @..local.l266
@..local.l263:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov si, ax
    add ax, 0x5bf4
    mov si, ax
    mov di, 0x9a4c
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    rep movsw
    mov ax, 0x248
    push ax
    mov ax, 0x9a4c
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..local.l265
    lea ax, word [bp - 0x003a]
    push ax
    call loc_150d
    pop cx
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l264
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x34, 0x92 ; call 0xd1a8
    add sp, byte 8
@..local.l264:
    mov ax, 0xffff
    ret
@..local.l265:
    inc word [bp - 0x0002]
@..local.l266:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..local.l263
    push word [bp - 0x000a]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short @..local.l267
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    db 0xe8, 0x03, 0x92 ; call 0xd1a8
    add sp, byte 8
@..local.l267:
    mov ax, 0
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, 0x90e8
    push ax
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [data_9088], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002_2.l1
    mov ax, 0x14
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0002_2.l1:
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [data_9088]
    call ds_dispatch_fdbd
    add sp, byte 8
    mov ax, 0x34c
    push ax
    mov ax, 0x5642
    push ax
    push word [data_9088]
    call ds_dispatch_fd76
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002_2.l2
    mov ax, 0x14
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0002_2.l2:
    push word [data_9088]
    call ds_dispatch_fda5
    pop cx
    mov al, byte [data_5986]
    sub ah, ah
    mov word [data_9058], ax
    mov ax, 1
    push ax
    call ds_dispatch_ef14
    pop cx
    test word [data_9056], 0x1000
    je short @..api_idx_0002_2.l4
    cmp byte [data_5989], 1
    jne short @..api_idx_0002_2.l4
    cmp word [data_0e32], byte 0
    jne short @..api_idx_0002_2.l3
    call ds_dispatch_f02c
@..api_idx_0002_2.l3:
    mov word [data_0e32], 1
    jmp short @..api_idx_0002_2.l6
@..api_idx_0002_2.l4:
    cmp word [data_0e32], byte 1
    jne short @..api_idx_0002_2.l5
    call 0xf039
@..api_idx_0002_2.l5:
    mov word [data_0e32], 0
@..api_idx_0002_2.l6:
    call ds_dispatch_ec17
    ret
api_idx_000c:
    mov ax, 0xfff4
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_000c.l1:
    mov word [bp - 0x0004], 0
@..api_idx_000c.l2:
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx - 0x636c]
    sub ah, ah
    add ax, word [bp + 0x4]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    pop ax
    mov byte [bx - 0x606c], al
    cmp al, 0x20
    jbe short @..api_idx_000c.l3
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
    mov al, byte [bx - 0x606c]
    sub ah, ah
    add ax, word [bp - 0x0006]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    pop ax
    mov byte [bx - 0x606c], al
    jmp short @..api_idx_000c.l4
@..api_idx_000c.l3:
    mov ax, 3
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx - 0x606c], 0x20
    jae short @..api_idx_000c.l4
    mov al, byte [bx - 0x606c]
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
    mov al, byte [bx - 0x606c]
    sub ah, ah
    sub ax, word [bp - 0x0006]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    pop ax
    mov byte [bx - 0x606c], al
@..api_idx_000c.l4:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jge short @..api_idx_000c.l5
    jmp near @..api_idx_000c.l2
@..api_idx_000c.l5:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, 0x100
    jge short @..api_idx_000c.l6
    jmp near @..api_idx_000c.l1
@..api_idx_000c.l6:
    mov ax, 0xff
    push ax
    mov ax, 0x200
    push ax
    mov ax, 0xa294
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..api_idx_000c.l7:
    mov ax, 3
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x606c]
    sub ah, ah
    mov cx, 8
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov al, byte [bx - 0x606b]
    sub ah, ah
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov al, byte [bx - 0x606a]
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
    mov byte [bx - 0x5d6c], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, 0x100
    jl short @..api_idx_000c.l7
    mov ax, 0xa294
    push ax
    mov ax, 0x9f94
    push ax
    call ds_dispatch_f10b
    add sp, byte 4
    mov ax, 0xffff
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    ret
api_idx_0050:
    mov ax, 0xffb0
    call ds_dispatch_f40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    push word [bp + 0xa]
    call ds_dispatch_e823
    add sp, byte 4
    cmp word [bp + 0x6], byte 0
    jge short @..api_idx_0050.l1
    lea ax, word [bp - 0x0050]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp + 0x6], ax
@..api_idx_0050.l1:
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    ret
loc_4245:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp + 0x6]
    push word [bp + 0x4]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, word [bp + 0x4]
    add ax, word [bp + 0x8]
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    ret
math_loc_4292:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0xe
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_bd98
    add sp, byte 8
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b2e7
    add sp, byte 6
    ret
math_loc_42e3:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_bd98
    add sp, byte 8
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
    add sp, byte 4
    ret
api_idx_0052:
    mov ax, 0xffae
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    jmp near @..local.l268
    lea ax, word [bp - 0x0052]
    push ax
    mov al, byte [data_5989]
    sub ah, ah
    add ax, 0x92e
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x5c
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    jmp near @..local.l269
    mov ax, word [bp + 0x8]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x39
    push ax
    mov al, byte [data_5986]
    sub ah, ah
    push ax
    call math_loc_4292
    add sp, byte 6
    jmp near @..local.l269
    mov ax, 0x12
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x27
    push ax
    mov ax, 0x593a
    push ax
    call math_loc_42e3
    add sp, byte 8
    jmp near @..local.l269
    mov ax, 0x12
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x27
    push ax
    mov ax, 0x594e
    push ax
    call math_loc_42e3
    add sp, byte 8
    jmp near @..local.l269
    lea ax, word [bp - 0x0052]
    push ax
    mov al, byte [data_5984]
    sub ah, ah
    add ax, 0x931
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xe
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x56
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x3f
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call math_loc_42e3
    add sp, byte 8
    jmp near @..local.l269
    mov ax, word [bp + 0x8]
    add ax, strict word 0x74
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x77
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    call ds_dispatch_bd98
    add sp, byte 8
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x6b
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov al, byte [data_597c]
    sub ah, ah
    push ax
    call ds_dispatch_b2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x6b
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov al, byte [data_597d]
    sub ah, ah
    push ax
    call ds_dispatch_b2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 0x6f
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x6b
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov al, byte [data_597e]
    sub ah, ah
    push ax
    call ds_dispatch_b2e7
    add sp, byte 6
    jmp near @..local.l269
    lea ax, word [bp - 0x0052]
    push ax
    mov al, byte [data_5985]
    sub ah, ah
    add ax, 0x946
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xe
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x7a
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x3f
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call math_loc_42e3
    add sp, byte 8
    jmp near @..local.l269
    mov ax, word [bp + 0x8]
    add ax, 0x86
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    mov al, byte [data_597f]
    sub ah, ah
    push ax
    call math_loc_4292
    add sp, byte 6
    jmp near @..local.l269
    lea ax, word [bp - 0x0052]
    push ax
    mov al, byte [data_5988]
    sub ah, ah
    add ax, 0x938
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe6
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c

    db 0xe9, 0x81, 0x01, 0x8d, 0x46, 0xae, 0x50, 0xa0, 0x8c, 0x59, 0x2a, 0xe4, 0x05, 0x3b, 0x09, 0x50
    db 0xe8, 0xf5, 0x6f, 0x83, 0xc4, 0x04, 0x8d, 0x46, 0xae, 0x50, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x25, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xc2, 0x00
    db 0x50, 0xe8, 0x5a, 0x7b, 0x83, 0xc4, 0x0c, 0xe9, 0x4a, 0x01, 0xb8, 0x01, 0x00, 0x80, 0x3e, 0x62
    db 0x59, 0x01, 0x74, 0x0d, 0xb8, 0x00, 0x00, 0x80, 0x3e, 0x63, 0x59, 0x01, 0x75, 0x03, 0xb8, 0x02
    db 0x00, 0x89, 0x46, 0xfe, 0x8d, 0x46, 0xae, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x3d, 0x09, 0x50, 0xe8
    db 0xa6, 0x6f, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x38, 0x00, 0x50
    db 0x8b, 0x46, 0x06, 0x05, 0xd5, 0x00, 0x50, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0x32, 0xfd, 0x83, 0xc4
    db 0x08, 0xe9, 0x00, 0x01, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x44, 0x00, 0x50, 0x8b
    db 0x46, 0x06, 0x05, 0xd5, 0x00, 0x50, 0xb8, 0x64, 0x59, 0x50, 0xe8, 0x13, 0xfd, 0x83, 0xc4, 0x08
    db 0xe9, 0xe1, 0x00, 0x8d, 0x46, 0xae, 0x50, 0xa0, 0x8a, 0x59, 0x2a, 0xe4, 0x05, 0x3f, 0x09, 0x50
    db 0xe8, 0x55, 0x6f, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x56, 0x00
    db 0x50, 0x8b, 0x46, 0x06, 0x05, 0xd5, 0x00, 0x50, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0xe1, 0xfc, 0x83
    db 0xc4, 0x08, 0xe9, 0xaf, 0x00, 0x8b, 0x46, 0x08, 0x05, 0x6e, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05
    db 0xfb, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x62, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xe7, 0x00
    db 0x50, 0xe8, 0x71, 0x77, 0x83, 0xc4, 0x08, 0xb8, 0xc3, 0x00, 0x50, 0xb8, 0xb4, 0x00, 0x50, 0xe8
    db 0xee, 0xa1, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0x08, 0x05, 0x63, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05
    db 0xe9, 0x00, 0x50, 0xe8, 0xc0, 0xa1, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00
    db 0x50, 0xa0, 0x78, 0x59, 0x98, 0x50, 0xe8, 0x8b, 0x6c, 0x83, 0xc4, 0x06, 0x8b, 0x46, 0x08, 0x05
    db 0x69, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xe9, 0x00, 0x50, 0xe8, 0x99, 0xa1, 0x83, 0xc4, 0x04
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xe8, 0x64, 0x6c
    db 0x83, 0xc4, 0x06, 0xeb, 0x2f, 0x88, 0x93, 0xbf, 0x93, 0xdc, 0x93, 0xfb, 0x93, 0x1a, 0x94, 0x4c
    db 0x94, 0x4c, 0x94, 0x4c, 0x94, 0xf7, 0x94, 0x29, 0x95, 0x46, 0x95, 0x7d, 0x95, 0xb4, 0x95, 0xfe
    db 0x95, 0x1d, 0x96, 0x4f, 0x96, 0x4f, 0x96

@..local.l268:
    cmp ax, strict word 0x11
    jae short @..local.l269
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6931]
@..local.l269:
    ret
loc_46b8:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 1
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0xe
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0xe
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e8da
    add sp, byte 8
    ret
math_loc_4727:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_bd98
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e8da
    add sp, byte 8
    ret
math_loc_47bb:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_01bf
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    add ax, strict word 9
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_01bf
    add sp, byte 0x0a
    ret
api_idx_0052_2:
    mov ax, 0xffae
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    jmp near @..local.l270
    mov ax, 8
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x5c
    push ax
    call math_loc_47bb
    add sp, byte 6
    jmp near @..local.l271
    mov ax, word [bp + 0x8]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x39
    push ax
    mov al, byte [data_5986]
    sub ah, ah
    push ax
    call loc_46b8
    add sp, byte 6
    jmp near @..local.l271
    mov ax, 0x12
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x27
    push ax
    mov ax, 0x593a
    push ax
    call math_loc_4727
    add sp, byte 8
    jmp near @..local.l271
    mov ax, 0x12
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x27
    push ax
    mov ax, 0x594e
    push ax
    call math_loc_4727
    add sp, byte 8
    jmp near @..local.l271
    mov ax, 7
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x55
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call math_loc_47bb
    add sp, byte 6
    jmp near @..local.l271
    mov ax, word [bp + 0x8]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    mov al, byte [data_597c]
    sub ah, ah
    push ax
    call loc_46b8
    add sp, byte 6
    jmp near @..local.l271
    mov ax, word [bp + 0x8]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    mov al, byte [data_597d]
    sub ah, ah
    push ax
    call loc_46b8
    add sp, byte 6
    jmp near @..local.l271
    mov ax, word [bp + 0x8]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    mov al, byte [data_597e]
    sub ah, ah
    push ax
    call loc_46b8
    add sp, byte 6
    jmp near @..local.l271
    mov ax, 7
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x79
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call math_loc_47bb
    add sp, byte 6
    jmp near @..local.l271
    mov ax, word [bp + 0x8]
    add ax, 0x86
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    mov al, byte [data_597f]
    sub ah, ah
    push ax
    call loc_46b8
    add sp, byte 6
    jmp near @..local.l271
    mov ax, 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe6
    push ax
    call math_loc_47bb
    add sp, byte 6
    jmp near @..local.l271
    mov ax, 3
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x25
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xc2
    push ax
    call math_loc_47bb
    add sp, byte 6
    jmp near @..local.l271
    mov ax, 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x37
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xa1
    push ax
    call math_loc_47bb
    add sp, byte 6
    jmp near @..local.l271
    mov ax, 0xa
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xd5
    push ax
    mov ax, 0x5964
    push ax
    call math_loc_4727
    add sp, byte 8
    jmp near @..local.l271
    mov ax, 1
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xfb
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe7
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe9
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov al, byte [data_5978]
    cbw
    push ax
    call ds_dispatch_b2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 0x68
    push ax

    db 0x8b, 0x46, 0x06, 0x05, 0xfb, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x62, 0x00, 0x50, 0x8b, 0x46
    db 0x06, 0x05, 0xe7, 0x00, 0x50, 0xe8, 0x9e, 0x9e, 0x83, 0xc4, 0x08, 0xe9, 0xe6, 0x00, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x6e, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xfb, 0x00, 0x50
    db 0x8b, 0x46, 0x08, 0x05, 0x68, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xe7, 0x00, 0x50, 0xe8, 0x9c
    db 0x9e, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x08, 0x05, 0x69, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xe9
    db 0x00, 0x50, 0xe8, 0x90, 0x9d, 0x83, 0xc4, 0x04, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xe8, 0x9c, 0x9d, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xa0, 0x79
    db 0x59, 0x98, 0x50, 0xe8, 0x4d, 0x68, 0x83, 0xc4, 0x06, 0x8b, 0x46, 0x08, 0x05, 0x6e, 0x00, 0x50
    db 0x8b, 0x46, 0x06, 0x05, 0xfb, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x68, 0x00, 0x50, 0x8b, 0x46
    db 0x06, 0x05, 0xe7, 0x00, 0x50, 0xe8, 0x1e, 0x9e, 0x83, 0xc4, 0x08, 0xeb, 0x67, 0xb8, 0x06, 0x00
    db 0x50, 0x8b, 0x46, 0x08, 0x05, 0x7f, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xb2, 0x00, 0x50, 0xe8
    db 0xe5, 0xfc, 0x83, 0xc4, 0x06, 0xeb, 0x4d, 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x7f
    db 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xe6, 0x00, 0x50, 0xe8, 0xcb, 0xfc, 0x83, 0xc4, 0x06, 0xeb
    db 0x33, 0x79, 0x98, 0x94, 0x98, 0xb1, 0x98, 0xd0, 0x98, 0xef, 0x98, 0x0a, 0x99, 0x27, 0x99, 0x44
    db 0x99, 0x61, 0x99, 0x7c, 0x99, 0x99, 0x99, 0xb4, 0x99, 0xcf, 0x99, 0xea, 0x99, 0x6f, 0x9b, 0x09
    db 0x9a, 0x89, 0x9a, 0x08, 0x9b, 0x22, 0x9b

@..local.l270:
    cmp ax, strict word 0x13
    jae short @..local.l271
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x64c4]
@..local.l271:
    ret
loc_4b29:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [bp + 0x6], byte 0
    jge short @..local.l273
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x597c], 0
    jbe short @..local.l272
    dec byte [bx + 0x597c]
@..local.l272:
    jmp short @..local.l274
@..local.l273:
    cmp word [bp + 0x6], byte 0
    jle short @..local.l274
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x597c]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    jge short @..local.l274
    inc byte [bx + 0x597c]
@..local.l274:
    ret
loc_4b5e:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [bp + 0x6], byte 0
    jge short @..local.l276
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x5978]
    cbw
    cmp ax, word [bp + 0x8]
    jle short @..local.l275
    dec byte [bx + 0x5978]
@..local.l275:
    jmp short @..local.l277
@..local.l276:
    cmp word [bp + 0x6], byte 0
    jle short @..local.l277
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x5978]
    cbw
    cmp ax, word [bp + 0x8]
    jge short @..local.l277
    inc byte [bx + 0x5978]
@..local.l277:
    ret
api_idx_0062:
    mov ax, 0xff9e
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0062], 0
@..api_idx_0062.l1:
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0002]
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    cmp word [data_5216], byte 0
    jne short @..api_idx_0062.l3
    lea ax, word [bp - 0x005e]
    push ax
    call ds_dispatch_fa90
    pop cx
    dec ax
    cmp ax, word [bp - 0x0062]
    jle short @..api_idx_0062.l2
    lea ax, word [bp - 0x005e]
    push ax
    call ds_dispatch_fa90
    pop cx
    dec ax
    mov word [bp - 0x0062], ax
@..api_idx_0062.l2:
    inc word [bp - 0x0002]
@..api_idx_0062.l3:
    cmp word [data_5216], byte 0
    je short @..api_idx_0062.l1
    mov ax, 6
    imul word [bp - 0x0062]
    add ax, strict word 0xc
    mov word [bp - 0x0004], ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0xc
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0004]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x64
    sub ax, cx
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0004]
    dec ax
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x000a]
    add ax, word [bp - 0x0006]
    dec ax
    mov word [bp - 0x000e], ax
    mov ax, 0x90f5
    push ax
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0060], ax
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call ds_dispatch_bc9a
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..api_idx_0062.l4:
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0002]
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    cmp word [data_5216], byte 0
    jne short @..api_idx_0062.l5
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000a]
    add ax, strict word 6
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    add ax, strict word 0xfffa
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x005e]
    sub ah, ah
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x005d]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0062.l5:
    cmp word [data_5216], byte 0
    je short @..api_idx_0062.l4
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [data_905a]
    shl ax, 1
    push ax
    call ds_dispatch_b75e
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0060]
    call ds_dispatch_c459
    add sp, byte 4
    ret
loc_4d0e:
    mov ax, 0xfc4a
    call ds_dispatch_f40b
    mov si, 0x5642
    lea di, word [bp - 0x03b6]
    mov cx, ds
    mov es, cx
    mov cx, 0x1a6
    rep movsw
    mov ax, 0
    push ax
    push ax
    mov ax, 0x90fb
    push ax
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short @..local.l278
    mov ax, 0x1a
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l278:
    mov ax, 0x300
    push ax
    mov ax, 0x9c94
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_fd6f
    add sp, byte 6
    push word [bp - 0x0006]
    call ds_dispatch_fda5
    pop cx
    mov word [bp - 0x0008], 0x12
    mov word [bp - 0x000a], 0x2b
    mov ax, word [bp - 0x0008]
    add ax, 0x11b
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x000a]
    add ax, 0x93
    mov word [bp - 0x000e], ax
    mov word [data_9050], 0xffff
    mov ax, 0x9107
    push ax
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x006a], ax
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call ds_dispatch_bc9a
    add sp, byte 8
    mov ax, 0x1c
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 5
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x8fc
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xf5
    push ax
    mov ax, 0x8fd
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, word [data_597a]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    call ds_dispatch_b2e7
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x2e
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, word [data_597a]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    cmp dx, byte 0x0a
    jge short @..local.l279
    mov ax, 0
    push ax
    mov ax, 0x30
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_b2e7
    add sp, byte 6
    jmp short @..local.l280
@..local.l279:
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_b2e7
    add sp, byte 6
@..local.l280:
    mov ax, 0x5f
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xe
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x8fe
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xb
    push ax
    mov ax, 0x8ff
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xb
    push ax
    mov ax, 0x900
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2f
    push ax
    call loc_4245
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x39
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xb
    push ax
    mov ax, 0x901
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x45
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xb
    push ax
    mov ax, 0x902
    push ax
    call api_idx_0050
    add sp, byte 8
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x903
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 7
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x55
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, 0x904
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    call loc_4245
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, 0x905
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    call loc_4245
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, 0x906
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    call loc_4245
    add sp, byte 6
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x907
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 7
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x79
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1d
    push ax
    mov ax, 0x908
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    call loc_4245
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x909
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x90a
    push ax
    call api_idx_0050
    add sp, byte 8
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x90b
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x37
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x45
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x90c
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x57
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x90d
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x90e
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x24
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xdd
    push ax
    call loc_4245
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x90f
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x24
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xdd
    push ax
    call loc_4245
    add sp, byte 6
    mov ax, word [bp - 0x000a]
    add ax, 0x8c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x113
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x7a
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa9
    push ax
    call ds_dispatch_bd98
    add sp, byte 8
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x910
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x7f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xb2
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x911
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x7f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xe6
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    mov word [bp - 0x0002], 0
@..local.l281:
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0002]
    call api_idx_0052
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x11
    jl short @..local.l281
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x21
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x92
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5c
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x2c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x34
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2f
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x2c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x52
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x4d
    push ax
    mov ax, 2
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x3e
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x95
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x4a
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x95
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, 4
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x5d
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x55
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    mov ax, 5
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x64
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    mov ax, 6
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x82
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x7d
    push ax
    mov ax, 7
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x64
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    mov ax, 8
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x82
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x7d
    push ax
    mov ax, 9
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x74
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x64
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    mov ax, 0xa
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x74
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x82
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x7d
    push ax
    mov ax, 0xb
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x81
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x79
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    mov ax, 0xc
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x8c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x64
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    mov ax, 0xd
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x8c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x82
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x7d
    push ax
    mov ax, 0xe
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x21
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x110
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xe6
    push ax
    mov ax, 0xf
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xda
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x25
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xc2
    push ax
    mov ax, 0x10
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x3f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xcb
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x37
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x11
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x4a
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x113
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xd5
    push ax
    mov ax, 0x12
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xe2
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xdd
    push ax
    mov ax, 0x13
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x106
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x101
    push ax
    mov ax, 0x14
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xe2
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xdd
    push ax
    mov ax, 0x15
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x106
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x101
    push ax
    mov ax, 0x16
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xdc
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x7f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xb2
    push ax
    mov ax, 0x17
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x110
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x7f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xe6
    push ax
    mov ax, 0x18
    push ax
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x0018], 1
    mov word [bp - 0x0016], 0
@..local.l282:
    cmp word [data_0e32], byte 0
    je short @..local.l283
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0014], ax
    jmp near @..local.l309
@..local.l283:
    mov word [data_5b3e], 0
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0016]
    call api_idx_0052_2
    add sp, byte 6
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0004], ax
    jmp near @..local.l301
@..local.l284:
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0016]
    call api_idx_0052
    add sp, byte 6
    mov ax, word [bp - 0x0016]
    add ax, strict word 0x12
    mov cx, 0x13
    cwd
    idiv cx
    mov word [bp - 0x0016], dx
    cmp dx, byte 0x0e
    jne short @..local.l285
    dec word [bp - 0x0016]
@..local.l285:
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    jmp near @..local.l309
@..local.l286:
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0016]
    call api_idx_0052
    add sp, byte 6
    mov ax, word [bp - 0x0016]
    inc ax
    mov cx, 0x13
    cwd
    idiv cx
    mov word [bp - 0x0016], dx
    cmp dx, byte 0x0e
    jne short @..local.l287
    inc word [bp - 0x0016]
@..local.l287:
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    jmp near @..local.l309
@..local.l288:
    mov word [bp - 0x0014], 0xffff
    mov ax, word [bp - 0x0016]
    jmp short @..local.l289

    db 0xc7, 0x46, 0xec, 0x00, 0x00, 0xe9, 0x79, 0x00, 0xc7, 0x46, 0xec, 0x03, 0x00, 0xeb, 0x72, 0xc7
    db 0x46, 0xec, 0x04, 0x00, 0xeb, 0x6b, 0xc7, 0x46, 0xec, 0x05, 0x00, 0xeb, 0x64, 0xc7, 0x46, 0xec
    db 0x0c, 0x00, 0xeb, 0x5d, 0xc7, 0x46, 0xec, 0x0f, 0x00, 0xeb, 0x56, 0xc7, 0x46, 0xec, 0x10, 0x00
    db 0xeb, 0x4f, 0xc7, 0x46, 0xec, 0x11, 0x00, 0xeb, 0x48, 0xc7, 0x46, 0xec, 0x12, 0x00, 0xeb, 0x41
    db 0xc7, 0x46, 0xec, 0x17, 0x00, 0xeb, 0x3a, 0xc7, 0x46, 0xec, 0x18, 0x00, 0xeb, 0x33, 0x4a, 0xa7
    db 0xcb, 0xa7, 0x52, 0xa7, 0x59, 0xa7, 0x60, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7, 0x67, 0xa7
    db 0xcb, 0xa7, 0x6e, 0xa7, 0x75, 0xa7, 0x7c, 0xa7, 0x83, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7
    db 0x8a, 0xa7, 0x91, 0xa7

@..local.l289:
    cmp ax, strict word 0x13
    jae short @..local.l290
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5868]
@..local.l290:
    cmp word [bp - 0x0014], byte 0xff
    je short @..local.l291
    mov word [data_5b3e], 1
@..local.l291:
    jmp near @..local.l309
@..local.l292:
    mov word [bp - 0x0014], 0xffff
    mov ax, word [bp - 0x0016]
    jmp short @..local.l293

    db 0xc7, 0x46, 0xec, 0x02, 0x00, 0xeb, 0x59, 0xc7, 0x46, 0xec, 0x07, 0x00, 0xeb, 0x52, 0xc7, 0x46
    db 0xec, 0x09, 0x00, 0xeb, 0x4b, 0xc7, 0x46, 0xec, 0x0b, 0x00, 0xeb, 0x44, 0xc7, 0x46, 0xec, 0x0e
    db 0x00, 0xeb, 0x3d, 0xc7, 0x46, 0xec, 0x14, 0x00, 0xeb, 0x36, 0xc7, 0x46, 0xec, 0x16, 0x00, 0xeb
    db 0x2f, 0x44, 0xa8, 0xe4, 0xa7, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0xeb, 0xa7, 0xf2, 0xa7, 0xf9
    db 0xa7, 0x44, 0xa8, 0x00, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x07
    db 0xa8, 0x0e, 0xa8

@..local.l293:
    cmp ax, strict word 0x11
    jae short @..local.l294
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x57eb]
@..local.l294:
    cmp word [bp - 0x0014], byte 0xff
    je short @..local.l295
    mov word [data_5b3e], 1
@..local.l295:
    jmp near @..local.l309
@..local.l296:
    mov word [bp - 0x0014], 0xffff
    mov ax, word [bp - 0x0016]
    jmp short @..local.l297

    db 0xc7, 0x46, 0xec, 0x01, 0x00, 0xeb, 0x59, 0xc7, 0x46, 0xec, 0x06, 0x00, 0xeb, 0x52, 0xc7, 0x46
    db 0xec, 0x08, 0x00, 0xeb, 0x4b, 0xc7, 0x46, 0xec, 0x0a, 0x00, 0xeb, 0x44, 0xc7, 0x46, 0xec, 0x0d
    db 0x00, 0xeb, 0x3d, 0xc7, 0x46, 0xec, 0x13, 0x00, 0xeb, 0x36, 0xc7, 0x46, 0xec, 0x15, 0x00, 0xeb
    db 0x2f, 0xbd, 0xa8, 0x5d, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0x64, 0xa8, 0x6b, 0xa8, 0x72
    db 0xa8, 0xbd, 0xa8, 0x79, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0x80
    db 0xa8, 0x87, 0xa8

@..local.l297:
    cmp ax, strict word 0x11
    jae short @..local.l298
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5772]
@..local.l298:
    cmp word [bp - 0x0014], byte 0xff
    je short @..local.l299
    mov word [data_5b3e], 1
@..local.l299:
    jmp short @..local.l309
@..local.l300:
    mov word [bp - 0x0014], 0x18
    mov word [data_5b3e], 1
    jmp short @..local.l309
@..local.l301:
    cmp ax, strict word 8
    jne short @..local.l302
    jmp near @..local.l296
@..local.l302:
    cmp ax, strict word 9
    jne short @..local.l303
    jmp near @..local.l284
@..local.l303:
    cmp ax, strict word 0xa
    jne short @..local.l304
    jmp near @..local.l292
@..local.l304:
    cmp ax, strict word 0xb
    jne short @..local.l305
    jmp near @..local.l286
@..local.l305:
    cmp ax, strict word 0xd
    jne short @..local.l306
    jmp near @..local.l288
@..local.l306:
    cmp ax, strict word 0x1b
    je short @..local.l300
    cmp ax, strict word 0x2b
    jne short @..local.l307
    jmp near @..local.l292
@..local.l307:
    cmp ax, strict word 0x2d
    jne short @..local.l308
    jmp near @..local.l296
@..local.l308:
    cmp ax, strict word 0x3d
    jne short @..local.l309
    jmp near @..local.l292
@..local.l309:
    cmp word [data_5b3e], byte 1
    je short @..local.l310
    jmp near @..local.l314
@..local.l310:
    mov ax, word [bp - 0x0014]
    jmp near @..local.l311

    db 0xa0, 0x89, 0x59, 0x2a, 0xe4, 0x40, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xa2, 0x89
    db 0x59, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x31, 0xea, 0x83, 0xc4
    db 0x06, 0xe9, 0xb4, 0x05, 0x80, 0x3e, 0x86, 0x59, 0x00, 0x76, 0x14, 0xfe, 0x0e, 0x86, 0x59, 0xff
    db 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x13, 0xea, 0x83, 0xc4, 0x06, 0xe9
    db 0x96, 0x05, 0x80, 0x3e, 0x86, 0x59, 0x63, 0x73, 0x14, 0xfe, 0x06, 0x86, 0x59, 0xff, 0x76, 0xf6
    db 0xff, 0x76, 0xf8, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xf5, 0xe9, 0x83, 0xc4, 0x06, 0xe9, 0x78, 0x05
    db 0xe8, 0xce, 0x92, 0xb8, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x38, 0x00, 0x50, 0x8b, 0x46
    db 0xf8, 0x05, 0x27, 0x00, 0x50, 0xb8, 0x3a, 0x59, 0x50, 0xe8, 0xc5, 0xed, 0x83, 0xc4, 0x08, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0x8b
    db 0x46, 0xf6, 0x05, 0x39, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x29, 0x00, 0x50, 0xb8, 0x3a, 0x59
    db 0x50, 0xe8, 0xb5, 0xb3, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x02, 0x00
    db 0x50, 0xe8, 0x9b, 0xe9, 0x83, 0xc4, 0x06, 0xe9, 0x1e, 0x05, 0xe8, 0x74, 0x92, 0xb8, 0x12, 0x00
    db 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x44, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x27, 0x00, 0x50, 0xb8
    db 0x4e, 0x59, 0x50, 0xe8, 0x6b, 0xed, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x45, 0x00, 0x50
    db 0x8b, 0x46, 0xf8, 0x05, 0x29, 0x00, 0x50, 0xb8, 0x4e, 0x59, 0x50, 0xe8, 0x5b, 0xb3, 0x83, 0xc4
    db 0x0e, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x41, 0xe9, 0x83, 0xc4
    db 0x06, 0xe9, 0xc4, 0x04, 0x83, 0x7e, 0x04, 0x00, 0x75, 0x28, 0xa0, 0x84, 0x59, 0x2a, 0xe4, 0x40
    db 0xb9, 0x07, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xa2, 0x84, 0x59, 0x80, 0x3e, 0x84, 0x59, 0x05
    db 0x74, 0xe8, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x10, 0xe9, 0x83
    db 0xc4, 0x06, 0x80, 0x3e, 0x84, 0x59, 0x00, 0x76, 0x08, 0xc7, 0x06, 0x80, 0x59, 0x20, 0x02, 0xeb
    db 0x06, 0xc7, 0x06, 0x80, 0x59, 0x00, 0x00, 0xe9, 0x7e, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0xff
    db 0xff, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xda, 0xf0, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff
    db 0x76, 0xf8, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0xd6, 0xe8, 0x83, 0xc4, 0x06, 0xe9, 0x59, 0x04, 0xb8
    db 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xb5, 0xf0, 0x83, 0xc4
    db 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0xb1, 0xe8, 0x83, 0xc4
    db 0x06, 0xe9, 0x34, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xe8, 0x90, 0xf0, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x06, 0x00, 0x50
    db 0xe8, 0x8c, 0xe8, 0x83, 0xc4, 0x06, 0xe9, 0x0f, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0x50, 0xe8, 0x6e, 0xf0, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x06
    db 0x00, 0x50, 0xe8, 0x6a, 0xe8, 0x83, 0xc4, 0x06, 0xe9, 0xed, 0x03, 0xb8, 0x0a, 0x00, 0x50, 0xb8
    db 0xff, 0xff, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x49, 0xf0, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6
    db 0xff, 0x76, 0xf8, 0xb8, 0x07, 0x00, 0x50, 0xe8, 0x45, 0xe8, 0x83, 0xc4, 0x06, 0xe9, 0xc8, 0x03
    db 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x24, 0xf0, 0x83
    db 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x07, 0x00, 0x50, 0xe8, 0x20, 0xe8, 0x83
    db 0xc4, 0x06, 0xe9, 0xa3, 0x03, 0x83, 0x7e, 0x04, 0x00, 0x75, 0x2f, 0xa0, 0x85, 0x59, 0x2a, 0xe4
    db 0x40, 0xb9, 0x07, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xa2, 0x85, 0x59, 0x80, 0x3e, 0x85, 0x59
    db 0x02, 0x74, 0xe8, 0x80, 0x3e, 0x85, 0x59, 0x03, 0x74, 0xe1, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8
    db 0xb8, 0x08, 0x00, 0x50, 0xe8, 0xe8, 0xe7, 0x83, 0xc4, 0x06, 0x80, 0x3e, 0x85, 0x59, 0x00, 0x76
    db 0x08, 0xc7, 0x06, 0x82, 0x59, 0x20, 0x02, 0xeb, 0x06, 0xc7, 0x06, 0x82, 0x59, 0x00, 0x00, 0xe9
    db 0x56, 0x03, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0xb2
    db 0xef, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x09, 0x00, 0x50, 0xe8, 0xae
    db 0xe7, 0x83, 0xc4, 0x06, 0xe9, 0x31, 0x03, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xe8, 0x8d, 0xef, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8
    db 0x09, 0x00, 0x50, 0xe8, 0x89, 0xe7, 0x83, 0xc4, 0x06, 0xe9, 0x0c, 0x03, 0xa0, 0x88, 0x59, 0x2a
    db 0xe4, 0x40, 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xa2, 0x88, 0x59, 0xff, 0x76, 0xf6
    db 0xff, 0x76, 0xf8, 0xb8, 0x0a, 0x00, 0x50, 0xe8, 0x65, 0xe7, 0x83, 0xc4, 0x06, 0xe9, 0xe8, 0x02
    db 0xa0, 0x8c, 0x59, 0x2a, 0xe4, 0x40, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xa2, 0x8c
    db 0x59, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x0b, 0x00, 0x50, 0xe8, 0x41, 0xe7, 0x83, 0xc4
    db 0x06, 0xe9, 0xc4, 0x02, 0xb8, 0x01, 0x00, 0x80, 0x3e, 0x62, 0x59, 0x01, 0x74, 0x0d, 0xb8, 0x00
    db 0x00, 0x80, 0x3e, 0x63, 0x59, 0x01, 0x75, 0x03, 0xb8, 0x02, 0x00, 0x89, 0x46, 0xfc, 0x40, 0xb9
    db 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x56, 0xfc, 0xc6, 0x06, 0x62, 0x59, 0x00, 0xc6, 0x06, 0x63
    db 0x59, 0x00, 0x8b, 0xc2, 0xeb, 0x0e, 0xc6, 0x06, 0x62, 0x59, 0x01, 0xeb, 0x11, 0xc6, 0x06, 0x63
    db 0x59, 0x01, 0xeb, 0x0a, 0x3d, 0x01, 0x00, 0x74, 0xed, 0x3d, 0x02, 0x00, 0x74, 0xef, 0xff, 0x76
    db 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x0c, 0x00, 0x50, 0xe8, 0xe4, 0xe6, 0x83, 0xc4, 0x06, 0x8b, 0x46
    db 0xf2, 0x40, 0x50, 0x8b, 0x46, 0xf4, 0x40, 0x50, 0x8b, 0x46, 0xf6, 0x48, 0x50, 0x8b, 0x46, 0xf8
    db 0x48, 0x50, 0xe8, 0x6f, 0x8c, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xec, 0x12, 0x74, 0x13, 0x80, 0x3e
    db 0x63, 0x59, 0x01, 0x75, 0x63, 0xb8, 0x64, 0x59, 0x50, 0xe8, 0x0e, 0x9e, 0x59, 0x85, 0xc0, 0x75
    db 0x57, 0xe8, 0x8d, 0x8f, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x44, 0x00, 0x50, 0x8b
    db 0x46, 0xf8, 0x05, 0xd5, 0x00, 0x50, 0xb8, 0x64, 0x59, 0x50, 0xe8, 0x84, 0xea, 0x83, 0xc4, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50
    db 0x8b, 0x46, 0xf6, 0x05, 0x45, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0xd7, 0x00, 0x50, 0xb8, 0x64
    db 0x59, 0x50, 0xe8, 0x74, 0xb0, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x0d
    db 0x00, 0x50, 0xe8, 0x5a, 0xe6, 0x83, 0xc4, 0x06, 0xe9, 0xdd, 0x01, 0xb8, 0x9d, 0xff, 0x50, 0xb8
    db 0xff, 0xff, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x6e, 0xee, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6
    db 0xff, 0x76, 0xf8, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x35, 0xe6, 0x83, 0xc4, 0x06, 0xa0, 0x79, 0x59
    db 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98, 0x50, 0xe8, 0x50, 0xe3, 0x83, 0xc4, 0x04, 0xe9, 0xa8, 0x01
    db 0xb8, 0x63, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x39, 0xee, 0x83
    db 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x00, 0xe6, 0x83
    db 0xc4, 0x06, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98, 0x50, 0xe8, 0x1b, 0xe3, 0x83
    db 0xc4, 0x04, 0xe9, 0x73, 0x01, 0xb8, 0x9d, 0xff, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xe8, 0x04, 0xee, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x10, 0x00
    db 0x50, 0xe8, 0xcb, 0xe5, 0x83, 0xc4, 0x06, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98
    db 0x50, 0xe8, 0xe6, 0xe2, 0x83, 0xc4, 0x04, 0xe9, 0x3e, 0x01, 0xb8, 0x63, 0x00, 0x50, 0xb8, 0x01
    db 0x00, 0x50, 0x50, 0xe8, 0xd2, 0xed, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8
    db 0x10, 0x00, 0x50, 0xe8, 0x99, 0xe5, 0x83, 0xc4, 0x06, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78
    db 0x59, 0x98, 0x50, 0xe8, 0xb4, 0xe2, 0x83, 0xc4, 0x04, 0xe9, 0x0c, 0x01, 0xb8, 0x01, 0x00, 0x50
    db 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0xb2, 0x00, 0x50, 0xe8, 0x93, 0x60, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0xb2, 0x00, 0x50, 0xe8, 0x73, 0x60, 0x83, 0xc4, 0x0a, 0xa0, 0x84, 0x59, 0x3a, 0x46, 0x8c, 0x75
    db 0x08, 0xa0, 0x85, 0x59, 0x3a, 0x46, 0x8d, 0x74, 0x05, 0xb8, 0x01, 0x00, 0xeb, 0x03, 0xb8, 0x00
    db 0x00, 0xa3, 0x50, 0x90, 0xc7, 0x46, 0xe8, 0x00, 0x00, 0xe8, 0x9a, 0xe1, 0xe9, 0xa9, 0x00, 0xb8
    db 0x01, 0x00, 0x50, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b
    db 0x46, 0xf8, 0x05, 0xe6, 0x00, 0x50, 0xe8, 0x30, 0x60, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b
    db 0x46, 0xf8, 0x05, 0xe6, 0x00, 0x50, 0xe8, 0x10, 0x60, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90
    db 0x00, 0x00, 0xc7, 0x46, 0xe8, 0x00, 0x00, 0x8d, 0xb6, 0x4a, 0xfc, 0xbf, 0x42, 0x56, 0x8c, 0xd9
    db 0x8e, 0xc1, 0xb9, 0xa6, 0x01, 0xf3, 0xa5, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98
    db 0x50, 0xe8, 0xe6, 0xe1, 0x83, 0xc4, 0x04, 0xeb, 0x3f, 0x2d, 0xa9, 0x51, 0xa9, 0x6f, 0xa9, 0x8d
    db 0xa9, 0xe7, 0xa9, 0x41, 0xaa, 0x87, 0xaa, 0xac, 0xaa, 0xd1, 0xaa, 0xf6, 0xaa, 0x18, 0xab, 0x3d
    db 0xab, 0x62, 0xab, 0xaf, 0xab, 0xd4, 0xab, 0xf9, 0xab, 0x1d, 0xac, 0x41, 0xac, 0xb5, 0xac, 0x28
    db 0xad, 0x5d, 0xad, 0x92, 0xad, 0xc7, 0xad, 0xf9, 0xad, 0x5c, 0xae

@..local.l311:
    cmp ax, strict word 0x19
    jae short @..local.l312
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x513a]
@..local.l312:
    cmp word [bp - 0x0018], byte 0
    je short @..local.l313
    cmp word [data_0e32], byte 0
    jne short @..local.l313
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0016]
    call api_idx_0052_2
    add sp, byte 6
@..local.l313:
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l314:
    cmp word [bp - 0x0018], byte 0
    je short @..local.l315
    jmp near @..local.l282
@..local.l315:
    mov ax, 1
    push ax
    push word [bp - 0x006a]
    call ds_dispatch_c459
    add sp, byte 4
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [data_9050]
    ret
math_loc_5f28:
    mov ax, 0xfd40
    call ds_dispatch_f40b
    mov word [bp - 0x0008], 0
    mov word [bp - 0x0002], 0
    jmp near @..math_loc_5f28.l7
@..math_loc_5f28.l1:
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 1
    je short @..math_loc_5f28.l2
    jmp near @..math_loc_5f28.l6
@..math_loc_5f28.l2:
    mov ax, 0
    push ax
    push bx
    lea ax, word [bp - 0x0250]
    push ax
    call api_idx_0002
    add sp, byte 6
    lea ax, word [bp - 0x0250]
    push ax
    mov ax, 0x14
    imul word [bp - 0x0008]
    add ax, 0xe38
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0x14
    imul word [bp - 0x0008]
    add ax, 0xe38
    push ax
    call ds_dispatch_fa90
    pop cx
    mov word [bp - 0x0004], ax
@..math_loc_5f28.l3:
    cmp word [bp - 0x0004], byte 0x0a
    jge short @..math_loc_5f28.l4
    mov ax, 0x14
    imul word [bp - 0x0008]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov byte [bx + 0xe38], 0x20
    inc word [bp - 0x0004]
    jmp short @..math_loc_5f28.l3
@..math_loc_5f28.l4:
    lea ax, word [bp - 0x02a0]
    push ax
    mov al, byte [bp - 0x0018]
    sub ah, ah
    add ax, 0x8c
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov al, byte [bp - 0x02a0]
    push ax
    mov ax, 0x14
    imul word [bp - 0x0008]
    mov bx, ax
    pop ax
    mov byte [bx + 0xe42], al
    mov byte [bx + 0xe43], 0x2d
    lea ax, word [bp - 0x02a0]
    push ax
    mov al, byte [bp - 0x0017]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov word [bp - 0x0004], 0
@..math_loc_5f28.l5:
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov al, byte [bx - 0x02a0]
    push ax
    mov ax, 0x14
    imul word [bp - 0x0008]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    pop ax
    mov byte [bx + 0xe44], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short @..math_loc_5f28.l5
    mov ax, 0x14
    imul word [bp - 0x0008]
    mov bx, ax
    mov byte [bx + 0xe47], 0
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x02c0], ax
    inc word [bp - 0x0008]
@..math_loc_5f28.l6:
    inc word [bp - 0x0002]
@..math_loc_5f28.l7:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9070]
    jge short @..math_loc_5f28.l8
    jmp near @..math_loc_5f28.l1
@..math_loc_5f28.l8:
    cmp word [bp - 0x0008], byte 0
    jle short @..local.l316
    push word [bp - 0x0008]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0038
    add sp, byte 0x0a
    cmp ax, strict word 1
    jne short @..local.l316
    mov ax, word [data_904e]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short @..local.l316
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x02c0]
    ret
@..local.l316:
    mov ax, 0xffff
    ret
math_loc_606d:
    mov ax, 0xfdb2
    call ds_dispatch_f40b
@..math_loc_606d.l1:
    cmp word [data_69c8], byte 6
    jl short @..math_loc_606d.l2
    jmp near @..math_loc_606d.l10
@..math_loc_606d.l2:
    mov ax, 0x4b0
    push ax
    call math_loc_5f28
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..math_loc_606d.l3
    jmp near @..math_loc_606d.l10
@..math_loc_606d.l3:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    lea ax, word [bp - 0x024e]
    push ax
    call api_idx_0002
    add sp, byte 6
    mov bx, word [bp - 0x0002]
    mov byte [bx - 0x6f8a], 2
    mov si, word [data_69c8]
    shl si, 1
    mov word [si - 0x750e], bx
    push word [data_69c8]
    call api_idx_0006
    pop cx
    mov cx, word [data_69c8]
    shl cx, 1
    mov bx, cx
    mov word [bx + 0x69bc], ax
    push ax
    mov al, byte [bp - 0x0018]
    sub ah, ah
    push ax
    call api_idx_0016
    add sp, byte 4
    lea si, word [bp - 0x024e]
    mov ax, 0x248
    imul word [data_69c8]
    mov di, ax
    add ax, 0x5bf4
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    rep movsw
    mov ax, 0
    push ax
    push word [data_69c8]
    call ds_dispatch_cb3a
    add sp, byte 4
    mov ax, word [data_69c8]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0004], ax
    mov ax, word [data_69c8]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0006], ax
    mov ax, word [data_69c8]
    jmp near @..math_loc_606d.l7
@..math_loc_606d.l4:
    mov ax, 0x8d
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2b
    push ax
    mov ax, 0x35
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..math_loc_606d.l9
@..math_loc_606d.l5:
    mov ax, 0x8d
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0006]
    mov ax, 0x10a
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..math_loc_606d.l9
@..math_loc_606d.l6:
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..math_loc_606d.l9
@..math_loc_606d.l7:
    cmp ax, strict word 4
    jne short @..math_loc_606d.l8
    jmp near @..math_loc_606d.l4
@..math_loc_606d.l8:
    cmp ax, strict word 5
    je short @..math_loc_606d.l5
    jmp short @..math_loc_606d.l6
@..math_loc_606d.l9:
    inc word [data_69c8]
    jmp near @..math_loc_606d.l1
@..math_loc_606d.l10:
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    ret
api_idx_0006_2:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x750e]
    mov byte [bx - 0x6f8a], 1
    dec word [data_69c8]
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0006_2.l2
@..api_idx_0006_2.l1:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov si, ax
    add ax, 0x5e3c
    mov si, ax
    mov ax, 0x248
    imul word [bp - 0x0002]
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
    mov ax, word [bx - 0x750c]
    mov word [bx - 0x750e], ax
    mov ax, word [bx + 0x69be]
    mov word [bx + 0x69bc], ax
    inc word [bp - 0x0002]
@..api_idx_0006_2.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0006_2.l1
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0006_2.l4
@..api_idx_0006_2.l3:
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_cb3a
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0006_2.l4:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0006_2.l3
    mov ax, 0
    push ax
    mov ax, word [data_69c8]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call ds_dispatch_e94f
    add sp, byte 6
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0006_2.l5
    mov ax, word [data_69c8]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0004], ax
    mov ax, word [data_69c8]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0006], ax
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call ds_dispatch_e8da
    add sp, byte 8
@..api_idx_0006_2.l5:
    ret
loc_62c6:
    mov ax, 0
    call ds_dispatch_f40b
@..local.l317:
    cmp word [data_69c8], byte 0
    jle short @..local.l318
    mov ax, 0
    push ax
    mov ax, word [data_69c8]
    dec ax
    push ax
    call api_idx_0006_2
    add sp, byte 4
    jmp short @..local.l317
@..local.l318:
    ret
api_idx_00aa:
    mov ax, 0xff56
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0x37
    mov word [bp - 0x0004], 0x8f
    mov word [bp - 0x0006], 0x108
    mov word [bp - 0x0008], 0xc5
    mov ax, 0x910d
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x00aa], ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call ds_dispatch_bc9a
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x1c
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x41a
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    add ax, strict word 5
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0x15
    sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x41b
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x00a8]
    push ax
    mov bx, word [data_5b40]
    mov al, byte [bx + 0x5990]
    sub ah, ah
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_b300
    add sp, byte 6
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0x15
    sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x41c
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x00a8]
    push ax
    mov bx, word [data_5b46]
    mov al, byte [bx + 0x5990]
    sub ah, ah
    add ax, 0x423
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_b300
    add sp, byte 6
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x15
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0x15
    sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x41d
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x00a8]
    push ax
    mov bx, word [data_5b42]
    mov al, byte [bx + 0x5990]
    sub ah, ah
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0x5e
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_b300
    add sp, byte 6
    lea ax, word [bp - 0x00a8]
    push ax
    mov bx, word [data_5b44]
    mov al, byte [bx + 0x5990]
    sub ah, ah
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0x25
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_b300
    add sp, byte 6
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1b
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0x15
    sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov byte [data_0e38], 0
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0x15
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call ds_dispatch_bf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    call ds_dispatch_ec17
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0x15
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call ds_dispatch_bf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xa9
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x14
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x29
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x2b
    push ax
    mov ax, 0xe38
    push ax
    call api_idx_0008
    add sp, byte 0x0e
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x15
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call ds_dispatch_bf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xa9
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x00aa]
    call ds_dispatch_c459
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0xe38
    push ax
    mov ax, 0x82b8
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [data_95b2], 0
    cmp word [data_904c], byte 0
    jne short @..api_idx_0004_3.l3
    call api_idx_00aa
    call 0xd9ca
    mov word [data_a494], ax
    test ax, ax
    jne short @..api_idx_0004_3.l1
    mov word [bp - 0x0002], 0xffff
    jmp short @..api_idx_0004_3.l2
@..api_idx_0004_3.l1:
    mov ax, 0xc
    push ax
    call ds_dispatch_b75e
    pop cx
    push word [bp + 0x4]
    call api_idx_0038_2
    pop cx
    mov word [bp - 0x0002], ax
@..api_idx_0004_3.l2:
    mov word [data_904c], 1
    jmp short @..api_idx_0004_3.l4
@..api_idx_0004_3.l3:
    push word [bp + 0x4]
    call api_idx_0038_2
    pop cx
    mov word [bp - 0x0002], ax
@..api_idx_0004_3.l4:
    cmp word [bp - 0x0002], byte 0xff
    jne short @..local.l319
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    ret
@..local.l319:
    push word [data_830c]
    mov ax, 0
    push ax
    call ds_dispatch_d5a2
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 8
    push ax
    mov ax, 0x8cfe
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov word [data_82ea], 0
    mov ax, word [data_82ee]
    shl ax, 1
    mov word [data_82f0], ax
    mov word [data_82ec], 0
    mov word [bp - 0x0004], 0xf
@..local.l320:
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x12
    jl short @..local.l320
    mov word [data_5b70], 0
    mov word [data_5b6e], 0
    mov word [data_5b6c], 0xffff
    cmp word [data_904c], byte 2
    je short @..local.l321
    call 0xb389
    mov word [data_904c], 2
@..local.l321:
    cmp word [data_95b2], byte 0
    jle short @..local.l322
    push word [data_95b2]
    call api_idx_0002_13
    pop cx
@..local.l322:
    mov word [data_830a], 6
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    cmp word [data_906a], byte 0
    je short @..api_idx_0002_3.l1
    mov ax, 1
    push ax
    push word [data_9068]
    call ds_dispatch_c459
    add sp, byte 4
    mov word [data_906a], 0
@..api_idx_0002_3.l1:
    call ds_dispatch_c145
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push word [data_8d08]
    push word [data_8d06]
    call ds_dispatch_e94f
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..api_idx_0002_3.l2:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call ds_dispatch_e94f
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_3.l2
    cmp word [data_8460], byte 0
    jle short @..api_idx_0002_3.l3
    push word [data_8460]
    call api_idx_0002_6
    pop cx
@..api_idx_0002_3.l3:
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [data_69c8], 0
    mov word [data_830a], 4
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    cmp word [data_906a], byte 0
    je short @..api_idx_0002_4.l1
    mov ax, 1
    push ax
    push word [data_9068]
    call ds_dispatch_c459
    add sp, byte 4
    mov word [data_906a], 0
@..api_idx_0002_4.l1:
    mov ax, 1
    push ax
    push word [data_8d08]
    push word [data_8d06]
    call ds_dispatch_e94f
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..api_idx_0002_4.l2:
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call ds_dispatch_e94f
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_4.l2
    mov word [bp - 0x0002], 0
@..api_idx_0002_4.l3:
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7d2e]
    push word [bx - 0x7d30]
    call ds_dispatch_e94f
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_4.l3
    call ds_dispatch_c145
    mov ax, 0
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 3
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 4
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 6
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 8
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 0xe
    push ax
    call ds_dispatch_c12a
    pop cx
    ret
api_idx_004a:
    mov ax, 0xffb6
    call ds_dispatch_f40b
    mov word [data_830a], 0x19
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..api_idx_004a.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0022], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jle short @..api_idx_004a.l1
    mov word [bp - 0x001e], 0
    mov word [bp - 0x0016], 0xffff
    mov word [bp - 0x0004], 1
@..api_idx_004a.l2:
    lea ax, word [bp - 0x0022]
    push ax
    mov ax, 1
    push ax
    mov ax, 6
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 0x898
    push ax
    call math_loc_023a
    add sp, byte 0x10
    mov word [bp - 0x0002], ax
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x898
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    push word [data_9052]
    lea ax, word [bp - 0x004a]
    push ax
    call api_idx_0004
    add sp, byte 0x0e
    mov ax, word [bp - 0x0002]
    jmp short 0x69f8
    mov word [bp - 0x0004], 0
    jmp near @..api_idx_004a.l10
    mov ax, 1
    push ax
    call loc_4d0e
    pop cx
    jmp short @..api_idx_004a.l10
    jmp short @..api_idx_004a.l10
    mov ax, 0
    push ax
    call api_idx_004e
    pop cx
    cmp ax, strict word 0xffff
    jne short @..api_idx_004a.l6
    mov ax, 0xc6
@..api_idx_004a.l3:
    push ax
    mov ax, 0x109
@..api_idx_004a.l5:
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..api_idx_004a.l8
@..api_idx_004a.l6:
    cmp word [bp - 0x0002], byte 4
    jne short @..api_idx_004a.l7
    mov word [data_8460], 0
    mov word [data_830a], 7
@..api_idx_004a.l7:
    mov word [bp - 0x0004], 0
@..api_idx_004a.l8:
    jmp short @..api_idx_004a.l10
    mov word [data_8460], 0
    mov word [data_830a], 7
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_004a.l10
    into
    mov cx, 0xb9d6
    loopne @..api_idx_004a.l3
    loop 0x69ad
    loop @..api_idx_004a.l5
    and byte [bp + si + 0x63d], bh
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x45cd]
@..api_idx_004a.l10:
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_004a.l11
    jmp near @..api_idx_004a.l2
@..api_idx_004a.l11:
    ret
api_idx_004a_2:
    mov ax, 0xffb6
    call ds_dispatch_f40b
    mov word [data_82e8], 0
    mov word [data_8af0], 0
    jmp short @..api_idx_004a_2.l2
@..api_idx_004a_2.l1:
    mov ax, 1
    push ax
    push word [data_8af0]
    call ds_dispatch_cb3a
    add sp, byte 4
    inc word [data_8af0]
@..api_idx_004a_2.l2:
    mov ax, word [data_8af0]
    cmp ax, word [data_69c8]
    jl short @..api_idx_004a_2.l1
    mov word [data_a494], 0xffff
    mov word [data_830a], 0xffff
@..api_idx_004a_2.l3:
    cmp word [data_830a], byte 0
    jl short @..api_idx_004a_2.l4
    jmp near @..local.l325
@..api_idx_004a_2.l4:
    mov word [bp - 0x0002], 0
@..api_idx_004a_2.l5:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0022], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 9
    jl short @..api_idx_004a_2.l5
    mov word [bp - 0x0010], 0xffff
    cmp word [data_69c8], byte 1
    jge short @..api_idx_004a_2.l6
    mov word [bp - 0x001e], 0
    mov word [bp - 0x001c], 0
    mov word [bp - 0x001a], 0
@..api_idx_004a_2.l6:
    mov word [bp - 0x0020], 0
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_004a_2.l9
@..api_idx_004a_2.l7:
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 1
    jne short @..api_idx_004a_2.l8
    mov word [bp - 0x0020], 1
@..api_idx_004a_2.l8:
    inc word [bp - 0x0002]
@..api_idx_004a_2.l9:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9070]
    jl short @..api_idx_004a_2.l7
    cmp word [data_69c8], byte 5
    jle short @..api_idx_004a_2.l10
    mov word [bp - 0x0020], 0
@..api_idx_004a_2.l10:
    cmp word [data_69c8], byte 0
    jle short @..api_idx_004a_2.l11
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0014], 0
@..api_idx_004a_2.l11:
    cmp word [data_a494], byte 0
    jne short @..api_idx_004a_2.l12
    mov ax, 0x15
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_004a_2.l12:
    lea ax, word [bp - 0x0022]
    push ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 0x3e8
    push ax
    call math_loc_023a
    add sp, byte 0x10
    mov word [bp - 0x0004], ax
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0x3e8
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    push word [data_9052]
    lea ax, word [bp - 0x004a]
    push ax
    call api_idx_0004
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    jmp near @..local.l323
    call math_loc_606d
    jmp near @..local.l324
    call ds_dispatch_ceb1
    mov word [data_8af0], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_004a_2.l13
    mov word [data_830a], 0x11
    mov word [data_905e], 4
@..api_idx_004a_2.l13:
    jmp near @..local.l324
    call ds_dispatch_ceb1
    mov word [data_8af0], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_004a_2.l14
    mov ax, 1
    push ax
    push word [data_8af0]
    call api_idx_0006_2
    add sp, byte 4
@..api_idx_004a_2.l14:
    jmp near @..local.l324
    call loc_62c6
    mov word [data_830a], 0x10
    jmp near @..local.l324
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_004a_2.l16
@..api_idx_004a_2.l15:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x750e]
    mov byte [bx - 0x6f8a], 1
    inc word [bp - 0x0002]
@..api_idx_004a_2.l16:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_004a_2.l15
    mov ax, 0
    push ax
    call api_idx_0004_3
    pop cx
    jmp short @..local.l324
    mov ax, 1
    push ax
    call api_idx_0004_3
    pop cx
    jmp short @..local.l324
    mov ax, 0
    push ax
    call loc_4d0e
    pop cx
    test ax, ax
    je short @..api_idx_004a_2.l17
    mov ax, 0x912
    push ax
    call api_idx_0062
    pop cx
    call loc_62c6
    call api_idx_0002_4
    mov word [data_830a], 3
@..api_idx_004a_2.l17:
    jmp short @..local.l324
    mov ax, 2
    push ax
    call api_idx_0004_3
    pop cx
    jmp short @..local.l324
    call loc_62c6
    call api_idx_0002_4
    mov word [data_830a], 3
    jmp short @..local.l324
    lds di, word [bp + di - 0x4477]
    db 0x8f, 0xbb, 0xa9, 0xbb, 0xd1, 0xbb, 0xfe, 0xbb, 0x08, 0xbc, 0x2a, 0xbc, 0x34, 0xbc
@..local.l323:
    cmp ax, strict word 9
    jae short @..local.l324
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x43be]
@..local.l324:
    jmp near @..api_idx_004a_2.l3
@..local.l325:
    ret
loc_6c1e:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0xc6
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
    ret
loc_6c3f:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0xc6
    push ax
    mov ax, 0x13e
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0xc
    push ax
    call ds_dispatch_bb33
    add sp, byte 8
    ret
loc_6c5c:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [data_a4a4], byte 0
    jle short @..local.l326
    call math_loc_73bc
    test ax, ax
    je short @..local.l326
    call api_idx_000a_3
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l326:
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    call ds_dispatch_ec17
    mov ax, word [bp + 0x4]
    cwd
    les bx, word [data_0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
@..api_idx_0004_4.l1:
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short @..api_idx_0004_4.l2
    jne short @..api_idx_0004_4.l3
    cmp ax, word [bp - 0x0004]
    jb short @..api_idx_0004_4.l3
@..api_idx_0004_4.l2:
    jmp short @..local.l328
@..api_idx_0004_4.l3:
    call ds_dispatch_baef
    test ax, ax
    je short @..local.l327
    ret
@..local.l327:
    call loc_6c5c
    jmp short @..api_idx_0004_4.l1
@..local.l328:
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    call loc_6c3f
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    add ax, 0x10e
    adc dx, byte 0
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
@..api_idx_0004_5.l1:
    call ds_dispatch_baef
    test ax, ax
    jne short @..api_idx_0004_5.l4
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short @..api_idx_0004_5.l2
    jne short @..api_idx_0004_5.l3
    cmp ax, word [bp - 0x0004]
    jb short @..api_idx_0004_5.l3
@..api_idx_0004_5.l2:
    jmp short @..api_idx_0004_5.l4
@..api_idx_0004_5.l3:
    call loc_6c5c
    jmp short @..api_idx_0004_5.l1
@..api_idx_0004_5.l4:
    call loc_6c1e
    mov word [data_a4a6], 0
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    cmp word [data_a4a6], byte 3
    jle short @..api_idx_0004_6.l1
    call api_idx_0004_5
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short @..local.l329
    inc word [data_a4a6]
    ret
@..local.l329:
    mov ax, 2
    push ax
    push bx
    call ds_dispatch_e883
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
    call ds_dispatch_fa90
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    mov bx, word [bp + 0x4]
    mov si, ax
    mov al, byte [bx + si]
    sub ah, ah
    jmp short @..local.l332
@..local.l330:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov word [bp - 0x0002], 0xc
    jmp short @..local.l333
@..local.l331:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov ax, word [data_a4a8]
    mov word [bp - 0x0002], ax
    jmp short @..local.l333
@..local.l332:
    cmp ax, strict word 0x24
    je short @..local.l330
    cmp ax, strict word 0x5e
    je short @..local.l331
@..local.l333:
    mov ax, 0xc
    imul word [data_a4a6]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
    add sp, byte 4
    mov bx, word [bp + 0x4]
    mov byte [bx], 0
    mov ax, word [bp - 0x0002]
    mov word [data_a4a8], ax
    inc word [data_a4a6]
    ret
math_loc_6dd9:
    mov ax, 0xfefa
    call ds_dispatch_f40b
@..math_loc_6dd9.l1:
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    sub ah, ah
    push ax
    mov ax, 0x9114
    push ax
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short @..math_loc_6dd9.l2
    jmp near @..math_loc_6dd9.l5
@..math_loc_6dd9.l2:
    jmp near @..math_loc_6dd9.l3

    db 0xff, 0x46, 0x04, 0xb8, 0xaa, 0xa4, 0x50, 0xe8, 0x16, 0xff, 0x59, 0xe9, 0x85, 0x00, 0xff, 0x46
    db 0x04, 0x8b, 0x5e, 0x04, 0x8a, 0x07, 0x2a, 0xe4, 0x89, 0x46, 0xfa, 0xb9, 0x12, 0x00, 0xf7, 0xe9
    db 0x50, 0xe8, 0x64, 0xfe, 0x59, 0xff, 0x46, 0x04, 0xeb, 0x69, 0xff, 0x46, 0x04, 0xb8, 0xaa, 0xa4
    db 0x50, 0xe8, 0xec, 0xfe, 0x59, 0xe8, 0x08, 0xfe, 0xeb, 0x59, 0xff, 0x46, 0x04, 0xe8, 0xdf, 0xfd
    db 0xc7, 0x06, 0xa6, 0xa4, 0x00, 0x00, 0xeb, 0x4b, 0xff, 0x46, 0x04, 0xb8, 0xaa, 0xa4, 0x50, 0xe8
    db 0xce, 0xfe, 0x59, 0xe8, 0x7b, 0xfe, 0xeb, 0x3b, 0xff, 0x46, 0x04, 0xff, 0x06, 0xaa, 0xa5, 0xeb
    db 0x32, 0xff, 0x46, 0x04, 0xc7, 0x06, 0xac, 0xa5, 0x01, 0x00, 0x83, 0x3e, 0xac, 0xa5, 0x00, 0x74
    db 0x05, 0xe8, 0xe9, 0xfd, 0xeb, 0xf4, 0xeb, 0x1b, 0x46, 0xbe, 0x54, 0xbe, 0x70, 0xbe, 0x80, 0xbe
    db 0x8e, 0xbe, 0x9e, 0xbe, 0xa7, 0xbe

@..math_loc_6dd9.l3:
    cmp ax, strict word 7
    jae short @..math_loc_6dd9.l4
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x4142]
@..math_loc_6dd9.l4:
    jmp near @..math_loc_6dd9.l1
@..math_loc_6dd9.l5:
    cmp byte [data_a4aa], 0
    je short @..math_loc_6dd9.l6
    mov ax, 0xa4aa
    push ax
    lea ax, word [bp - 0x0105]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0x911c
    push ax
    lea ax, word [bp - 0x0105]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0105]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    jmp short @..math_loc_6dd9.l7
@..math_loc_6dd9.l6:
    push word [bp + 0x4]
    lea ax, word [bp - 0x0105]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
@..math_loc_6dd9.l7:
    mov ax, 2
    push ax
    lea ax, word [bp - 0x0105]
    push ax
    call ds_dispatch_e883
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, 0x127
    jle short @..math_loc_6dd9.l8
    mov ax, 0xa4aa
    push ax
    call api_idx_0004_6
    pop cx
    push word [bp + 0x4]
    mov ax, 0xa4aa
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    jmp short @..math_loc_6dd9.l9
@..math_loc_6dd9.l8:
    lea ax, word [bp - 0x0105]
    push ax
    mov ax, 0xa4aa
    push ax
    call ds_dispatch_f364
    add sp, byte 4
@..math_loc_6dd9.l9:
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    call ds_dispatch_f40b
@..api_idx_0004_7.l1:
    mov ax, 0x20
    push ax
    push word [bp + 0x4]
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0004_7.l4
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0
@..api_idx_0004_7.l2:
    mov ax, 0x5f
    push ax
    push word [bp + 0x4]
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0004_7.l3
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short @..api_idx_0004_7.l2
@..api_idx_0004_7.l3:
    push word [bp + 0x4]
    call math_loc_6dd9
    pop cx
    mov ax, word [bp - 0x0002]
    add word [bp + 0x4], ax
    add word [bp + 0x4], byte 1
    jmp short @..api_idx_0004_7.l1
@..api_idx_0004_7.l4:
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    je short @..api_idx_0004_7.l5
    push bx
    call math_loc_6dd9
    pop cx
@..api_idx_0004_7.l5:
    ret
loc_6f79:
    mov ax, 0xfefa
    call ds_dispatch_f40b
    call loc_6c1e
    mov word [data_a5ac], 0
    mov word [data_a4a8], 0xc
    mov word [data_a4a6], 0
    mov byte [data_a4aa], 0
@..local.l334:
    lea ax, word [bp - 0x0105]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
    cmp word [data_5216], byte 0
    jne short @..local.l335
    lea ax, word [bp - 0x0105]
    push ax
    call api_idx_0004_7
    pop cx
    inc word [bp + 0x4]
@..local.l335:
    cmp word [data_5216], byte 0
    je short @..local.l334
    cmp byte [data_a4aa], 0
    je short @..local.l336
    mov ax, 0xa4aa
    push ax
    call api_idx_0004_6
    pop cx
@..local.l336:
    cmp word [bp + 0x6], byte 0
    je short @..local.l337
    call api_idx_0004_5
@..local.l337:
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    call ds_dispatch_ef14
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002_5.l1
    mov ax, 0xe
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0002_5.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_efde
    add sp, byte 4
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp + 0x6], byte 1
    jne short @..api_idx_0002_5.l2
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..api_idx_0002_5.l3
@..api_idx_0002_5.l2:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0002_5.l3
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
@..api_idx_0002_5.l3:
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    call ds_dispatch_f0ca
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [data_0e32], byte 1
    jne short @..api_idx_0002_6.l1
    db 0xe8, 0x85, 0x7f ; call 0xf039
@..api_idx_0002_6.l1:
    mov word [data_0e32], 0
    call ds_dispatch_d9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..api_idx_0002_6.l2
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    call ds_dispatch_d7e7
    add sp, byte 4
    mov ax, word [data_0114]
    mov word [data_844e], ax
    mov ax, 1
    push ax
    push word [data_844e]
    mov ax, 0
    push ax
    call ds_dispatch_d964
    add sp, byte 6
    mov word [data_844c], ax
@..api_idx_0002_6.l2:
    cmp word [bp + 0x4], byte 4
    je short @..api_idx_0002_6.l3
    mov ax, 2
    push ax
    mov ax, 0x911e
    push ax
    call api_idx_0002_5
    add sp, byte 4
    jmp short @..api_idx_0002_6.l4
@..api_idx_0002_6.l3:
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
@..api_idx_0002_6.l4:
    mov word [data_a4a4], 0
    mov ax, word [bp + 0x4]
    jmp short @..api_idx_0002_6.l6
    mov ax, 1
    push ax
    mov ax, 0x6e96
    push ax
    call loc_6f79
    add sp, byte 4
    jmp short @..api_idx_0002_6.l7
    mov ax, 1
    push ax
    mov ax, 0x6fc2
    push ax
    call loc_6f79
    add sp, byte 4
    jmp short @..api_idx_0002_6.l7
    mov ax, 1
    push ax
    mov ax, 0x6ffe
    push ax
    call loc_6f79
    add sp, byte 4
    jmp short @..api_idx_0002_6.l7
    mov ax, 1
    push ax
    mov ax, 0x6e46
    push ax
    call loc_6f79
    add sp, byte 4
    jmp short @..api_idx_0002_6.l7
    mov ax, 1
    push ax
    mov ax, 0x6f54
    push ax
    call loc_6f79
    add sp, byte 4
    jmp short @..api_idx_0002_6.l7
    in ax, 0xc1
    jl short 0x714a
    mov cx, es
    pushf
    shr word [si - 0x433f], 0xc1
@..api_idx_0002_6.l6:
    cmp ax, strict word 6
    jae short @..api_idx_0002_6.l7
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x3e34]
@..api_idx_0002_6.l7:
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    call ds_dispatch_f0ca
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [data_8450], byte 0
    je short @..api_idx_0002_6.l8
    push word [data_844c]
    push word [data_844e]
    call ds_dispatch_d91b
    add sp, byte 4
    mov ax, 0
    push ax
    call ds_dispatch_d907
    pop cx
@..api_idx_0002_6.l8:
    test word [data_9056], 0x1000
    je short @..api_idx_0002_6.l10
    cmp byte [data_5989], 1
    jne short @..api_idx_0002_6.l10
    cmp word [data_0e32], byte 0
    jne short @..api_idx_0002_6.l9
    call ds_dispatch_f02c
@..api_idx_0002_6.l9:
    mov word [data_0e32], 1
@..api_idx_0002_6.l10:
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0002_6.l12
@..api_idx_0002_6.l11:
    mov ax, 1
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    add ax, 0x5e26
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    inc word [bp - 0x0002]
@..api_idx_0002_6.l12:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0002_6.l11
    mov ax, 1
    push ax
    call api_idx_004e
    pop cx
    cmp ax, strict word 0xffff
    jne short @..local.l338
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l338:
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 2
    push ax
    mov ax, 0x912b
    push ax
    call api_idx_0002_5
    add sp, byte 4
    ret
math_loc_72c2:
    mov ax, 0
    call ds_dispatch_f40b
    push word [bp + 0x4]
    call 0xefb7
    pop cx
    ret
api_idx_0016_2:
    mov ax, 0xffea
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    call ds_dispatch_ef14
    pop cx
    mov ax, 0x9138
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, word [bp + 0x4]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 0x30
    mov byte [bp - 0x0011], al
    add dx, byte 0x30
    mov ax, dx
    mov byte [bp - 0x0010], al
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0016_2.l1
    mov ax, 0x12
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0016_2.l1:
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call 0xefaa
    add sp, byte 4
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    ret
api_idx_000a:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov al, byte [bp + 0x6]
    mov byte [bp - 0x000a], al
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0
    push ax
    mov ax, 0x140
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x4]
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov al, byte [bp + 0x6]
    mov byte [bp - 0x000a], al
    mov byte [bp - 0x0009], 0
    push word [bp + 0xc]
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0
    push ax
    mov ax, 0x140
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x4]
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
math_loc_73bc:
    mov ax, 0
    call ds_dispatch_f40b
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [data_908a]
    sbb dx, word [data_908c]
    push ax
    push dx
    mov ax, word [data_a5ae]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short @..math_loc_73bc.l1
    jne short @..math_loc_73bc.l2
    cmp ax, cx
    jae short @..math_loc_73bc.l2
@..math_loc_73bc.l1:
    jmp short @..local.l339
@..math_loc_73bc.l2:
    mov ax, word [data_a5b0]
    inc ax
    mov cx, 0xc
    cwd
    idiv cx
    mov word [data_a5b0], dx
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov ax, 1
    ret
@..local.l339:
    mov ax, 0
    ret
api_idx_000a_3:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov ax, word [data_a4a4]
    jmp near @..local.l363
    mov ax, 0
    push ax
    push ax
    push word [data_a5b4]
    push word [data_a5b2]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, word [data_a5bc]
    cmp ax, word [data_a5aa]
    jge short @..api_idx_000a_3.l1
    mov ax, 0x4f
    push ax
    mov ax, 0xbd
    push ax
    mov ax, 6
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
@..api_idx_000a_3.l1:
    mov ax, 0x2b
    push ax
    mov ax, 0x74
    push ax
    mov ax, word [data_a5b0]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    inc ax
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x3f
    push ax
    mov ax, 0xa4
    push ax
    mov ax, word [data_a5b0]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    add ax, strict word 4
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [data_a5b0]
    mov cx, 6
    cwd
    idiv cx
    mov bx, dx
    mov al, byte [bx - 0x5a3a]
    sub ah, ah
    add ax, strict word 0xffcf
    mov word [bp - 0x0006], ax
    push cx
    mov ax, 0xa1
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [data_a5b0]
    inc ax
    mov cx, 6
    cwd
    idiv cx
    mov bx, dx
    mov al, byte [bx - 0x5a3a]
    sub ah, ah
    add ax, strict word 0xffcf
    mov word [bp - 0x0006], ax
    mov ax, 0x1e
    push ax
    mov ax, 0xbf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xb
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [data_a5b0]
    inc ax
    inc ax
    mov cx, 6
    cwd
    idiv cx
    mov bx, dx
    mov al, byte [bx - 0x5a3a]
    sub ah, ah
    add ax, strict word 0xffcf
    mov word [bp - 0x0006], ax
    mov ax, 0x35
    push ax
    mov ax, 0xd0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xf
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [data_a5b6]
    cmp ax, word [data_a5aa]
    jl short @..api_idx_000a_3.l2
    jmp near @..api_idx_000a_3.l6
@..api_idx_000a_3.l2:
    mov ax, 0x67
    push ax
    mov ax, 0x85
    push ax
    mov ax, 1
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [data_a5b0]
    push ax
    cmp ax, strict word 6
    pop ax
    jl short @..api_idx_000a_3.l3
    mov cx, 6
    cwd
    idiv cx
    mov cx, dx
    mov ax, 6
    sub ax, cx
@..api_idx_000a_3.l3:
    mov word [bp - 0x0008], ax
    mov ax, word [data_a5b0]
    inc ax
    inc ax
    inc ax
    mov cx, 0xc
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    cmp dx, byte 6
    jge short @..api_idx_000a_3.l4
    mov ax, 6
    sub ax, dx
    jmp short @..api_idx_000a_3.l5
@..api_idx_000a_3.l4:
    mov ax, dx
    mov cx, 6
    cwd
    idiv cx
    mov ax, dx
@..api_idx_000a_3.l5:
    mov word [bp - 0x000a], ax
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x9f
    push ax
    mov ax, word [data_a5b0]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    inc ax
    inc ax
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
@..api_idx_000a_3.l6:
    mov ax, word [data_a5b8]
    cmp ax, word [data_a5aa]
    jl short @..api_idx_000a_3.l7
    jmp near 0x76db
@..api_idx_000a_3.l7:
    cmp word [data_a5ce], byte 0x10
    jge short @..api_idx_000a_3.l8
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, word [data_a5ce]
    add ax, strict word 4
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    inc word [data_a5ce]
    db 0xe9, 0xfe, 0x00 ; jmp near 0x76db
@..api_idx_000a_3.l8:
    cmp word [data_a5ce], byte 0x14
    jge short 0x761a
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, word [data_a5ce]
    add ax, strict word 5
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8

    db 0xff, 0x06, 0xce, 0xa5, 0xe9, 0xc1, 0x00, 0xc7, 0x06, 0xac, 0xa5, 0x00, 0x00, 0xb8, 0x2f, 0x00
    db 0x50, 0xb8, 0xbe, 0x00, 0x50, 0xb8, 0x14, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x0d, 0xfd
    db 0x83, 0xc4, 0x08, 0xb8, 0x2f, 0x00, 0x50, 0xb8, 0xbe, 0x00, 0x50, 0xb8, 0x18, 0x00, 0x50, 0xb8
    db 0x10, 0x00, 0x50, 0xe8, 0xf7, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x2f, 0x00, 0x50, 0xb8, 0xbe, 0x00
    db 0x50, 0xa1, 0xb0, 0xa5, 0xb9, 0x06, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x05, 0x19, 0x00, 0x50
    db 0xb8, 0x10, 0x00, 0x50, 0xe8, 0xd6, 0xfc, 0x83, 0xc4, 0x08, 0xa1, 0xb0, 0xa5, 0x3d, 0x09, 0x00
    db 0x7d, 0x16, 0xb8, 0x07, 0x00, 0x50, 0xe8, 0x2d, 0x41, 0x59, 0x85, 0xc0, 0x74, 0x05, 0xb8, 0x00
    db 0x00, 0xeb, 0x03, 0xb8, 0x01, 0x00, 0xeb, 0x0c, 0xa1, 0xb0, 0xa5, 0xb9, 0x03, 0x00, 0x99, 0xf7
    db 0xf9, 0x8b, 0xc2, 0x40, 0x89, 0x46, 0xfa, 0x3d, 0x03, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfa, 0x01
    db 0x00, 0xb8, 0x2f, 0x00, 0x50, 0xb8, 0xbe, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x1f, 0x00, 0x50
    db 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x86, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x2f, 0x00, 0x50, 0xb8, 0xbe
    db 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xdd, 0x40, 0x59, 0x05, 0x22, 0x00, 0x50, 0xb8, 0x10
    db 0x00, 0x50, 0xe8, 0x68, 0xfc, 0x83, 0xc4, 0x08, 0xa1, 0xba, 0xa5, 0x3b, 0x06, 0xaa, 0xa5, 0x7d
    db 0x59, 0xb8, 0x15, 0x00, 0x50, 0xb8, 0x28, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0f, 0x00
    db 0x50, 0xe8, 0x49, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x15, 0x00, 0x50, 0xb8, 0x85, 0x00, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xb8

    lldt word [bx + si - 0x0018]
    xor di, sp
    add sp, byte 8
    mov ax, word [data_a5b0]
    cmp ax, strict word 4
    jl short @..local.l342
    cmp ax, strict word 6
    jle short @..local.l343
@..local.l342:
    mov ax, 3
    jmp short @..local.l344
@..local.l343:
    mov ax, word [data_a5b0]
@..local.l344:
    mov word [bp - 0x0006], ax
    mov ax, 0x15
    push ax
    mov ax, 0x28
    push ax
    push word [bp - 0x0006]
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    jmp near @..local.l364

    db 0xb8, 0x06, 0x00, 0x50, 0xff, 0x36, 0xd0, 0xa5, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50
    db 0xe8, 0xed, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x06, 0x00, 0x50, 0xff, 0x36, 0xd2, 0xa5, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0xd7, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x06, 0x00, 0x50
    db 0xff, 0x36, 0xd4, 0xa5, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0xc1, 0xfb, 0x83
    db 0xc4, 0x08, 0xb8, 0x06, 0x00, 0x50, 0xff, 0x36, 0xd6, 0xa5, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x10
    db 0x00, 0x50, 0xe8, 0xab, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x06, 0x00, 0x50, 0xff, 0x36, 0xd8, 0xa5
    db 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x95, 0xfb, 0x83, 0xc4, 0x08, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x83, 0x87, 0xd0, 0xa5, 0xf6, 0x83
    db 0xbf, 0xd0, 0xa5, 0xb0, 0x7f, 0x06, 0xc7, 0x87, 0xd0, 0xa5, 0x40, 0x01, 0xff, 0x46, 0xfe, 0x8b
    db 0x46, 0xfe, 0x3d, 0x05, 0x00, 0x7c, 0xdc, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfe, 0x40
    db 0x89, 0x46, 0xfc, 0xd1, 0xe0, 0x8b, 0xd8, 0x81, 0xbf, 0xda, 0xa5, 0x40, 0x01, 0x7d, 0x4f, 0xff
    db 0xb7, 0xea, 0xa5, 0xff, 0xb7, 0xda, 0xa5, 0x8b, 0x46, 0xfe, 0x05, 0x06, 0x00, 0x50, 0xb8, 0x0f
    db 0x00, 0x50, 0xe8, 0x3b, 0xfb, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xfe, 0x02, 0x75, 0x0e, 0x8b, 0x46
    db 0xfc, 0xd1, 0xe0, 0x8b, 0xd8, 0x83, 0x87, 0xda, 0xa5, 0xf6, 0xeb, 0x0c, 0x8b, 0x46, 0xfc, 0xd1
    db 0xe0, 0x8b, 0xd8, 0x83, 0x87, 0xda, 0xa5, 0xec, 0x8b, 0x46, 0xfc, 0xd1, 0xe0, 0x8b, 0xd8, 0x83
    db 0xbf, 0xda, 0xa5, 0xf0, 0x7d, 0x06, 0xc7, 0x87, 0xda, 0xa5, 0x40, 0x01, 0xeb, 0x30, 0xb8, 0x28
    db 0x00, 0x50, 0xe8
    db 'd?Y;F'
    db 0xfc, 0x75, 0x23, 0x8b, 0x46, 0xfc, 0xd1, 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0xda, 0xa5, 0x3e, 0x01
    db 0xb8, 0x3c, 0x00, 0x50, 0xe8, 0x4a, 0x3f, 0x59, 0x05, 0x28, 0x00, 0x8b, 0x4e, 0xfc, 0xd1, 0xe1
    db 0x8b, 0xd9, 0x89, 0x87, 0xea, 0xa5, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x03, 0x00, 0x7d
    db 0x03, 0xe9, 0x60, 0xff, 0xa1, 0xb6, 0xa5, 0x3b, 0x06, 0xaa, 0xa5, 0x7d, 0x36, 0x81, 0x3e, 0xda
    db 0xa5, 0x04, 0x01, 0x7d, 0x0b, 0x83, 0x3e, 0xfa, 0xa5, 0x05, 0x7d, 0x04, 0xff, 0x06, 0xfa, 0xa5
    db 0xb8, 0x4b, 0x00, 0x50, 0xff, 0x36, 0xda, 0xa5, 0xff, 0x36, 0xfa, 0xa5, 0xb8, 0x0f, 0x00, 0x50
    db 0xe8, 0x95, 0xfa, 0x83, 0xc4, 0x08, 0x81, 0x3e, 0xda, 0xa5, 0xc8, 0x00, 0x7e, 0x05, 0x83, 0x06
    db 0xda, 0xa5, 0xfc, 0xa1, 0xb8, 0xa5, 0x3b, 0x06, 0xaa, 0xa5, 0x7d, 0x3f, 0xff, 0x36, 0xf2, 0xa5
    db 0xff, 0x36, 0xe2, 0xa5, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x69, 0xfa, 0x83
    db 0xc4, 0x08, 0xff, 0x36, 0xf2, 0xa5, 0xff, 0x36, 0xe2, 0xa5, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xc0
    db '>Y@@P'
    db 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x4c, 0xfa, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0xe2, 0xa5, 0x50, 0x7d
    db 0x05, 0x83, 0x06, 0xe2, 0xa5, 0x06, 0xe9, 0xe9, 0x0c, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36
    db 0xb4, 0xa5, 0xff, 0x36, 0xb2, 0xa5, 0xe8, 0x2c, 0x70, 0x83, 0xc4, 0x08, 0xc7, 0x46, 0xfe, 0x00
    db 0x00, 0x8b, 0x46, 0xfe, 0x40, 0x89, 0x46, 0xfc, 0xd1, 0xe0, 0x8b, 0xd8, 0x81, 0xbf, 0xda, 0xa5
    db 0x40, 0x01, 0x7d, 0x34, 0xff, 0xb7, 0xea, 0xa5, 0xff, 0xb7, 0xda, 0xa5, 0x8b, 0x46, 0xfe, 0x05
    db 0x06, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xf9, 0xf9, 0x83, 0xc4, 0x08, 0x8b, 0x46, 0xfc
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x83, 0x87, 0xda, 0xa5, 0xec, 0x83, 0xbf, 0xda, 0xa5, 0xf0, 0x7d, 0x06
    db 0xc7, 0x87, 0xda, 0xa5, 0x40, 0x01, 0xeb, 0x30, 0xb8, 0x28, 0x00, 0x50, 0xe8
    db '=>Y;F'
    db 0xfc, 0x75, 0x23, 0x8b, 0x46, 0xfc, 0xd1, 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0xda, 0xa5, 0x3e, 0x01
    db 0xb8, 0x3c, 0x00, 0x50, 0xe8, 0x23, 0x3e, 0x59, 0x05, 0x28, 0x00, 0x8b, 0x4e, 0xfc, 0xd1, 0xe1
    db 0x8b, 0xd9, 0x89, 0x87, 0xea, 0xa5, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x02, 0x00, 0x7d
    db 0x03, 0xe9, 0x7b, 0xff, 0xa1, 0xb8, 0xa5, 0x3b, 0x06, 0xaa, 0xa5, 0x7c, 0x03, 0xe9, 0xd5, 0x02
    db 0xff, 0x36, 0xf2, 0xa5, 0xff, 0x36, 0xe2, 0xa5, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50
    db 0xe8, 0x7e, 0xf9, 0x83, 0xc4, 0x08, 0xa1, 0xf2, 0xa5, 0x05, 0xd9, 0xff, 0x50, 0xa1, 0xe2, 0xa5
    db 0x05, 0x44, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x62, 0xf9, 0x83
    db 0xc4, 0x08, 0xa1, 0xf2, 0xa5, 0x05, 0xd5, 0xff, 0x50, 0xa1, 0xe2, 0xa5, 0x05, 0x88, 0x00, 0x50
    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x46, 0xf9, 0x83, 0xc4, 0x08, 0xa1, 0xf2
    db 0xa5, 0x05, 0xc5, 0xff, 0x50, 0xa1, 0xe2, 0xa5, 0x05, 0xcc, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x2a, 0xf9, 0x83, 0xc4, 0x08, 0xa1, 0xbc, 0xa5, 0x3b, 0x06, 0xaa
    db 0xa5, 0x7d, 0x0b, 0x83, 0x3e, 0xfc, 0xa5, 0x06, 0x7d, 0x04, 0xff, 0x06, 0xfc, 0xa5, 0xa1, 0xf2
    db 0xa5, 0x40, 0x40, 0x50, 0xff, 0x36, 0xe2, 0xa5, 0xa1, 0xfc, 0xa5, 0x05, 0x05, 0x00, 0x50, 0xb8
    db 0x11, 0x00, 0x50, 0xe8, 0xfb, 0xf8, 0x83, 0xc4, 0x08, 0xa1, 0xbe, 0xa5, 0x3b, 0x06, 0xaa, 0xa5
    db 0x7c, 0x03, 0xe9, 0x81, 0x00, 0xa1, 0xe2, 0xa5, 0x05, 0xfb, 0xff, 0x3b, 0x06, 0xe4, 0xa5, 0x7e
    db 0x2b, 0xa1, 0xf2, 0xa5, 0x05, 0x18, 0x00, 0x50, 0xff, 0x36, 0xe4, 0xa5, 0xb8, 0x02, 0x00, 0x50
    db 0xe8, 0x37, 0x3d, 0x59, 0x05, 0x10, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0xc2, 0xf8, 0x83
    db 0xc4, 0x08, 0xff, 0x06, 0xe4, 0xa5, 0xff, 0x06, 0xe4, 0xa5, 0xeb, 0x4a, 0xa1, 0xf2, 0xa5, 0x05
    db 0x18, 0x00, 0x50, 0xa1, 0xe2, 0xa5, 0x05, 0xfb, 0xff, 0x50, 0xa1, 0xfe, 0xa5, 0x05, 0x12, 0x00
    db 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x99, 0xf8, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0xfe, 0xa5, 0x07
    db 0x7d, 0x06, 0xff, 0x06, 0xfe, 0xa5, 0xeb, 0x1e, 0xc7, 0x06, 0xac, 0xa5, 0x00, 0x00, 0xc7, 0x06
    db 0xbc, 0xa5, 0x63, 0x00, 0xc7, 0x06, 0xbe, 0xa5, 0x63, 0x00, 0xc7, 0x06, 0xfc, 0xa5, 0x00, 0x00
    db 0xc7, 0x06, 0xfe, 0xa5, 0x00, 0x00, 0xa1, 0xf2, 0xa5, 0x05, 0xe4, 0xff, 0x50, 0xa1, 0xe2, 0xa5
    db 0x05, 0xd9, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xbf, 0x3c, 0x59, 0x05, 0x0c, 0x00, 0x50
    db 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x4a, 0xf8, 0x83, 0xc4, 0x08, 0xa1, 0xf2, 0xa5, 0x05, 0x09, 0x00
    db 0x50, 0xa1, 0xe2, 0xa5, 0x05, 0xcc, 0x00, 0x50, 0xa1, 0xb0, 0xa5, 0xb9, 0x06, 0x00, 0x99, 0xf7
    db 0xf9, 0x8b, 0xc2, 0x05, 0x1a, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x23, 0xf8, 0x83, 0xc4
    db 0x08, 0xa1, 0xf2, 0xa5, 0x05, 0x12, 0x00, 0x50, 0xa1, 0xe2, 0xa5, 0x05, 0x80, 0x00, 0x50, 0xa1
    db 0xb0, 0xa5, 0x40, 0x40, 0x40, 0xb9, 0x06, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x05, 0x20, 0x00
    db 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0xf9, 0xf7, 0x83, 0xc4, 0x08, 0xa1, 0xf2, 0xa5, 0x05, 0xe2
    db 0xff, 0x50, 0xa1, 0xe2, 0xa5, 0x05, 0x97, 0x00, 0x50, 0xa1, 0xb0, 0xa5, 0xb9, 0x03, 0x00, 0x99
    db 0xf7, 0xf9, 0x05, 0x26, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0xd4, 0xf7, 0x83, 0xc4, 0x08
    db 0xa1, 0xf2, 0xa5, 0x05, 0xf2, 0xff, 0x50, 0xa1, 0xe2, 0xa5, 0x05, 0xa8, 0x00, 0x50, 0xa1, 0xb0
    db 0xa5, 0x05, 0x05, 0x00, 0xb9, 0x0c, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x03, 0x00, 0x99
    db 0xf7, 0xf9, 0x05, 0x2a, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0xa4, 0xf7, 0x83, 0xc4, 0x08
    db 0xa1, 0xf2, 0xa5, 0x05, 0x19, 0x00, 0x50, 0xa1, 0xe2, 0xa5, 0x05, 0xae, 0x00, 0x50, 0xa1, 0xb0
    db 0xa5, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x05, 0x2e, 0x00, 0x50, 0xb8, 0x11, 0x00
    db 0x50, 0xe8, 0x7d, 0xf7, 0x83, 0xc4, 0x08, 0xa1, 0xf2, 0xa5, 0x05, 0xc2, 0xff, 0x50, 0xa1, 0xe2
    db 0xa5, 0x05, 0xd4, 0x00, 0x50, 0xa1, 0xb0, 0xa5, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x04
    db 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x05, 0x32, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x50
    db 0xf7, 0x83, 0xc4, 0x08, 0xa1, 0xf2, 0xa5, 0x05, 0xd7, 0xff, 0x50, 0xa1, 0xe2, 0xa5, 0x05, 0x82
    db 0x00, 0x50, 0xb8, 0x36, 0x00, 0x8b, 0x0e, 0xb0, 0xa5, 0x83, 0xf9, 0x04, 0x7d, 0x05, 0x83, 0xc1
    db 0x36, 0x8b, 0xc1, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x26, 0xf7, 0x83, 0xc4, 0x08, 0xa1, 0xf2
    db 0xa5, 0x05, 0x22, 0x00, 0x50, 0xa1, 0xe2, 0xa5, 0x05, 0x6d, 0x00, 0x50, 0xa1, 0xb0, 0xa5, 0xb9
    db 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x05, 0x3a, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8
    db 0xff, 0xf6, 0x83, 0xc4, 0x08, 0xa1, 0xf2, 0xa5, 0x05, 0xe9, 0xff, 0x50, 0xa1, 0xe2, 0xa5, 0x05
    db 0x7a, 0x00, 0x50, 0xa1, 0xb0, 0xa5, 0xb9, 0x06, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x40, 0x50
    db 0xb8, 0x10, 0x00, 0x50, 0xe8, 0xda, 0xf6, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0xe2, 0xa5, 0x3c, 0x7e
    db 0x05, 0x83, 0x06, 0xe2, 0xa5, 0xfd, 0xa1, 0xe2, 0xa5, 0x05, 0xfb, 0xff, 0x3b, 0x06, 0xe4, 0xa5
    db 0x7d, 0x03, 0xa3, 0xe4, 0xa5, 0xe9, 0x68, 0x09, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36, 0xb4
    db 0xa5, 0xff, 0x36, 0xb2, 0xa5, 0xe8, 0xab, 0x6c, 0x83, 0xc4, 0x08, 0xb8, 0x12, 0x00, 0x50, 0xb8
    db 0x70, 0x00, 0x50, 0xff, 0x36, 0xce, 0xa5, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x93, 0xf6, 0x83, 0xc4
    db 0x08, 0xa1, 0xb8, 0xa5, 0x3b, 0x06, 0xaa, 0xa5, 0x7c, 0x03, 0xe9, 0x8c, 0x00, 0x83, 0x3e, 0x00
    db 0xa6, 0x64, 0x7c, 0x03, 0xe9, 0x82, 0x00, 0xff, 0x36, 0x00, 0xa6, 0xff, 0x36, 0xf2, 0xa5, 0xff
    db 0x36, 0xe2, 0xa5, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0xa0, 0xf6, 0x83, 0xc4
    db 0x0a, 0xff, 0x36, 0x00, 0xa6, 0xff, 0x36, 0xf2, 0xa5, 0xff, 0x36, 0xe2, 0xa5, 0xb8, 0x02, 0x00
    db 0x50, 0xe8, 0xb6, 0x3a, 0x59, 0x05, 0x07, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x7e, 0xf6
    db 0x83, 0xc4, 0x0a, 0x83, 0x3e, 0xe2, 0xa5, 0x14, 0x7e, 0x13, 0xff, 0x06, 0x00, 0xa6, 0xff, 0x06
    db 0x00, 0xa6, 0x83, 0x3e, 0xce, 0xa5, 0x08, 0x7d, 0x04, 0xff, 0x06, 0xce, 0xa5, 0x81, 0x3e, 0xe2
    db 0xa5, 0xa0, 0x00, 0x7d, 0x13, 0xa1, 0x00, 0xa6, 0xb9, 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x03, 0x06
    db 0xe2, 0xa5, 0x05, 0x05, 0x00, 0xa3, 0xe2, 0xa5, 0x83, 0x3e, 0xf2, 0xa5, 0x32, 0x7e, 0x0a, 0xa1
    db 0xf2, 0xa5, 0xa3, 0xf2, 0xa5, 0xff, 0x0e, 0xf2, 0xa5, 0xe9, 0xa4, 0x08, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0xff, 0x36, 0xb4, 0xa5, 0xff, 0x36, 0xb2, 0xa5, 0xe8, 0xe7, 0x6b, 0x83, 0xc4, 0x08, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x36, 0xd0, 0xa5, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8
    db 0xcf, 0xf5, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0xd2, 0xa5, 0xb8, 0x04, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xb9, 0xf5, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x36, 0xd4, 0xa5, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xa3, 0xf5, 0x83, 0xc4
    db 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0xd6, 0xa5, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x0f, 0x00
    db 0x50, 0xe8, 0x8d, 0xf5, 0x83, 0xc4, 0x08, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfe, 0xd1
    db 0xe0, 0x8b, 0xd8, 0xff, 0x8f, 0xd0, 0xa5, 0x81, 0xbf, 0xd0, 0xa5, 0x60, 0xff, 0x7f, 0x06, 0xc7
    db 0x87, 0xd0, 0xa5, 0xe0, 0x01, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x04, 0x00, 0x7c, 0xdc
    db 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfe, 0x40, 0x89, 0x46, 0xfc, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x81, 0xbf, 0xda, 0xa5, 0x40, 0x01, 0x7d, 0x39, 0xff, 0xb7, 0xea, 0xa5, 0xff, 0xb7, 0xda, 0xa5
    db 0x8b, 0x46, 0xfe, 0x05, 0x05, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x33, 0xf5, 0x83, 0xc4
    db 0x08, 0xb8, 0x03, 0x00, 0x2b, 0x46, 0xfe, 0x8b, 0x4e, 0xfc, 0xd1, 0xe1, 0x8b, 0xd9, 0x29, 0x87
    db 0xda, 0xa5, 0x83, 0xbf, 0xda, 0xa5, 0xb0, 0x7d, 0x06, 0xc7, 0x87, 0xda, 0xa5, 0x40, 0x01, 0xeb
    db 0x50, 0xb8, 0x1e, 0x00, 0x50, 0xe8
    db 'r9Y;F'
    db 0xfc, 0x75, 0x43, 0x8b, 0x46, 0xfe, 0x40, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xd1
    db 0xe0, 0x8b, 0xd8, 0x81, 0xbf, 0xdc, 0xa5, 0x40, 0x01, 0x74, 0x08, 0x81, 0xbf, 0xdc, 0xa5, 0xf0
    db 0x00, 0x7d, 0x23, 0x8b, 0x46, 0xfc, 0xd1, 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0xda, 0xa5, 0x3e, 0x01
    db 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x38, 0x39, 0x59, 0x05, 0x04, 0x00, 0x8b, 0x4e, 0xfc, 0xd1, 0xe1
    db 0x8b, 0xd9, 0x89, 0x87, 0xea, 0xa5, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x02, 0x00, 0x7d
    db 0x03, 0xe9, 0x56, 0xff, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0f, 0x00
    db 0x50, 0xe8, 0xa2, 0xf4, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x8c, 0xf4, 0x83, 0xc4, 0x08, 0xa1, 0xb8, 0xa5
    db 0x3b, 0x06, 0xaa, 0xa5, 0x7c, 0x03, 0xe9, 0x81, 0x00, 0x83, 0x3e, 0x00, 0xa6, 0x64, 0x7c, 0x03
    db 0xe9, 0x77, 0x00, 0xff, 0x36, 0x00, 0xa6, 0xff, 0x36, 0xf2, 0xa5, 0xff, 0x36, 0xe2, 0xa5, 0xb8
    db 0x06, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x99, 0xf4, 0x83, 0xc4, 0x0a, 0xff, 0x36, 0x00
    db 0xa6, 0xff, 0x36, 0xf2, 0xa5, 0xff, 0x36, 0xe2, 0xa5, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0xaf, 0x38
    db 0x59, 0x05, 0x07, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x77, 0xf4, 0x83, 0xc4, 0x0a, 0x83
    db 0x3e, 0xe2, 0xa5, 0x0a, 0x7e, 0x08, 0xff, 0x06, 0x00, 0xa6, 0xff, 0x06, 0x00, 0xa6, 0x81, 0x3e
    db 0xe2, 0xa5, 0xa0, 0x00, 0x7d, 0x13, 0xa1, 0x00, 0xa6, 0xb9, 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x03
    db 0x06, 0xe2, 0xa5, 0x05, 0x05, 0x00, 0xa3, 0xe2, 0xa5, 0x83, 0x3e, 0xf2, 0xa5, 0x28, 0x7e, 0x0a
    db 0xa1, 0xf2, 0xa5, 0xa3, 0xf2, 0xa5, 0xff, 0x0e, 0xf2, 0xa5, 0xe9, 0xa8, 0x06, 0xb8, 0x00, 0x00
    db 0x50, 0x50, 0xff, 0x36, 0xb4, 0xa5, 0xff, 0x36, 0xb2, 0xa5, 0xe8, 0xeb, 0x69, 0x83, 0xc4, 0x08
    db 0xa1, 0xb6, 0xa5, 0x3b, 0x06, 0xaa, 0xa5, 0x7c, 0x03, 0xe9, 0x3f, 0x01, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x4b, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xc7, 0xf3, 0x83
    db 0xc4, 0x08, 0xb8, 0x42, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x0f
    db 0x00, 0x50, 0xe8, 0xb1, 0xf3, 0x83, 0xc4, 0x08, 0xb8, 0x51, 0x00, 0x50, 0xb8, 0x3d, 0x00, 0x50
    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x9b, 0xf3, 0x83, 0xc4, 0x08, 0xb8, 0x51
    db 0x00, 0x50, 0xb8, 0x85, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x85
    db 0xf3, 0x83, 0xc4, 0x08, 0xb8, 0x5a, 0x00, 0x50, 0xb8, 0xcd, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x6f, 0xf3, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0xce, 0xa5, 0x00, 0x7f
    db 0x13, 0x83, 0x3e, 0xfa, 0xa5, 0x00, 0x75, 0x3a, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0xc0, 0x37, 0x59
    db 0x85, 0xc0, 0x75, 0x2e, 0xb8, 0x1d, 0x00, 0x50, 0xb8, 0xab, 0x00, 0x50, 0xa1, 0xce, 0xa5, 0x05
    db 0x06, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x3c, 0xf3, 0x83, 0xc4, 0x08, 0xff, 0x06, 0xce
    db 0xa5, 0xa1, 0xce, 0xa5, 0x3d, 0x09, 0x00, 0x75, 0x06, 0xc7, 0x06, 0xce, 0xa5, 0x00, 0x00, 0xe9
    db 0x89, 0x00, 0x83, 0x3e, 0xfa, 0xa5, 0x00, 0x7f, 0x13, 0x83, 0x3e, 0xce, 0xa5, 0x00, 0x75, 0x65
    db 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x78, 0x37, 0x59, 0x85, 0xc0, 0x75, 0x59, 0xa1, 0xfa, 0xa5, 0xb9
    db 0x06, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xda, 0x8a, 0x87, 0xc6, 0xa5, 0x2a, 0xe4, 0x05, 0xcf, 0xff
    db 0x89, 0x46, 0xfa, 0xb8, 0x1d, 0x00, 0x50, 0xb8, 0xab, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x0e
    db 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xdd, 0xf2, 0x83, 0xc4, 0x08, 0xa1, 0xb0, 0xa5, 0xb9
    db 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x85, 0xc0, 0x75, 0x07, 0x83, 0x3e, 0xfa, 0xa5, 0x00
    db 0x75, 0x04, 0xff, 0x06, 0xfa, 0xa5, 0x83, 0x3e, 0xfa, 0xa5, 0x06, 0x75, 0x06, 0xc7, 0x06, 0xfa
    db 0xa5, 0x00, 0x00, 0xeb, 0x16, 0xb8, 0x1d, 0x00, 0x50, 0xb8, 0xab, 0x00, 0x50, 0xb8, 0x0e, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x9e, 0xf2, 0x83, 0xc4, 0x08, 0xe9, 0x47, 0x05, 0xb8, 0x00
    db 0x00, 0x50, 0x50, 0xff, 0x36, 0xb4, 0xa5, 0xff, 0x36, 0xb2, 0xa5, 0xe8, 0x8a, 0x68, 0x83, 0xc4
    db 0x08, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xa1, 0xfc, 0xa5, 0x40, 0x50, 0xb8, 0x0f
    db 0x00, 0x50, 0xe8, 0x71, 0xf2, 0x83, 0xc4, 0x08, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x27, 0x01, 0x50
    db 0xa1, 0xfc, 0xa5, 0x40, 0x40, 0x40, 0xb9, 0x07, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x05, 0x08
    db 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x4d, 0xf2, 0x83, 0xc4, 0x08, 0xa1, 0xfc, 0xa5, 0x40
    db 0xb9, 0x07, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x16, 0xfc, 0xa5, 0xb8, 0x00, 0x00, 0x8b, 0x0e, 0xb0
    db 0xa5, 0x83, 0xf9, 0x06, 0x7d, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x92, 0x36, 0x59, 0x89, 0x46
    db 0xfe, 0xb8, 0x26, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x0f, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x0f, 0xf2, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x8b, 0x0e, 0xb0
    db 0xa5, 0x83, 0xf9, 0x05, 0x7e, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x62, 0x36, 0x59, 0x89, 0x46
    db 0xfe, 0xb8, 0x27, 0x00, 0x50, 0xb8, 0x1e, 0x01, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x13, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xdf, 0xf1, 0x83, 0xc4, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x3e
    db 0x36, 0x59, 0x85, 0xc0, 0x74, 0x0b, 0xa1, 0xb0, 0xa5, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xeb
    db 0x03, 0xb8, 0x00, 0x00, 0x89, 0x46, 0xfa, 0xb8, 0x49, 0x00, 0x50, 0xb8, 0xbb, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xa9, 0xf1, 0x83, 0xc4, 0x08
    db 0xb8, 0x4f, 0x00, 0x50, 0xb8, 0x95, 0x00, 0x50, 0xa1, 0xb0, 0xa5, 0xb9, 0x04, 0x00, 0x99, 0xf7
    db 0xf9, 0x05, 0x1a, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x8a, 0xf1, 0x83, 0xc4, 0x08, 0x83
    db 0x3e, 0xce, 0xa5, 0x00, 0x7f, 0x13, 0x83, 0x3e, 0xfa, 0xa5, 0x00, 0x75, 0x63, 0xb8, 0x0f, 0x00
    db 0x50, 0xe8, 0xdb, 0x35, 0x59, 0x85, 0xc0, 0x75, 0x57, 0xa1, 0xce, 0xa5, 0xb9, 0x06, 0x00, 0x99
    db 0xf7, 0xf9, 0x8b, 0xda, 0x8a, 0x87, 0xc6, 0xa5, 0x2a, 0xe4, 0x05, 0xcf, 0xff, 0x89, 0x46, 0xfa
    db 0x51, 0xb8, 0x8a, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x1d, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50
    db 0xe8, 0x43, 0xf1, 0x83, 0xc4, 0x08, 0xa1, 0xb0, 0xa5, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b
    db 0xc2, 0x85, 0xc0, 0x75, 0x07, 0x83, 0x3e, 0xce, 0xa5, 0x00, 0x75, 0x04, 0xff, 0x06, 0xce, 0xa5
    db 0x83, 0x3e, 0xce, 0xa5, 0x06, 0x75, 0x06, 0xc7, 0x06, 0xce, 0xa5, 0x00, 0x00, 0xe9, 0x9f, 0x00
    db 0x83, 0x3e, 0xfa, 0xa5, 0x00, 0x7f, 0x16, 0x83, 0x3e, 0xce, 0xa5, 0x00, 0x74, 0x03, 0xe9, 0x78
    db 0x00, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x67, 0x35, 0x59, 0x85, 0xc0, 0x75, 0x6c, 0xa1, 0xfa, 0xa5
    db 0xb9, 0x06, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xda, 0x8a, 0x87, 0xc6, 0xa5, 0x2a, 0xe4, 0x05, 0xcf
    db 0xff, 0x89, 0x46, 0xfa, 0x51, 0xb8, 0x8a, 0x00, 0x50, 0xb8, 0x1d, 0x00, 0x50, 0xb8, 0x0f, 0x00
    db 0x50, 0xe8, 0xd2, 0xf0, 0x83, 0xc4, 0x08, 0xb8, 0x18, 0x00, 0x50, 0xb8, 0x8d, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x21, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xb9, 0xf0, 0x83, 0xc4, 0x08
    db 0xa1, 0xb0, 0xa5, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x85, 0xc0, 0x75, 0x07, 0x83
    db 0x3e, 0xfa, 0xa5, 0x00, 0x75, 0x04, 0xff, 0x06, 0xfa, 0xa5, 0x83, 0x3e, 0xfa, 0xa5, 0x06, 0x75
    db 0x06, 0xc7, 0x06, 0xfa, 0xa5, 0x00, 0x00, 0xeb, 0x16, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x8a, 0x00
    db 0x50, 0xb8, 0x1d, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x7a, 0xf0, 0x83, 0xc4, 0x08, 0xb8
    db 0x66, 0x00, 0x50, 0xb8, 0xdb, 0x00, 0x50, 0xa1, 0xb0, 0xa5, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9
    db 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x05, 0x26, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x56, 0xf0
    db 0x83, 0xc4, 0x08, 0xb8, 0x66, 0x00, 0x50, 0xb8, 0x54, 0x00, 0x50, 0xa1, 0xb0, 0xa5, 0xb9, 0x02
    db 0x00, 0x99, 0xf7, 0xf9, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x05, 0x28, 0x00, 0x50, 0xb8, 0x0f, 0x00
    db 0x50, 0xe8, 0x32, 0xf0, 0x83, 0xc4, 0x08, 0xa1, 0xfe, 0xa5, 0xb9, 0x06, 0x00, 0x99, 0xf7, 0xf9
    db 0x8b, 0xda, 0x8a, 0x87, 0xc6, 0xa5, 0x2a, 0xe4, 0x05, 0xcf, 0xff, 0x89, 0x46, 0xfa, 0xb8, 0x41
    db 0x00, 0x50, 0xb8, 0x6f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0xb8, 0x0f, 0x00
    db 0x50, 0xe8, 0x02, 0xf0, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0xfe, 0xa5, 0x00, 0x7f, 0x0c, 0xb8, 0x0a
    db 0x00, 0x50, 0xe8, 0x5a, 0x34, 0x59, 0x85, 0xc0, 0x75, 0x36, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x4e
    db 0x34, 0x59, 0x85, 0xc0, 0x75, 0x04, 0xff, 0x06, 0xfe, 0xa5, 0x83, 0x3e, 0xfe, 0xa5, 0x06

    jne short @..local.l345
    mov word [data_a5fe], 0
@..local.l345:
    cmp word [data_a5fe], byte 4
    jne short @..local.l346
    mov ax, 2
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    je short @..local.l346
    mov word [data_a5fe], 0
@..local.l346:
    jmp near @..local.l364

    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36, 0xb4, 0xa5, 0xff, 0x36, 0xb2, 0xa5, 0xe8, 0xa5, 0x65
    db 0x83, 0xc4, 0x08, 0xa1, 0xb8, 0xa5, 0x3b, 0x06, 0xaa, 0xa5, 0x7c, 0x03, 0xe9, 0xde, 0x00, 0xb8
    db 0x17, 0x00, 0x50, 0xb8, 0x38, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8
    db 0x81, 0xef, 0x83, 0xc4, 0x08, 0xb8, 0x27, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50, 0xb8, 0x02, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x6b, 0xef, 0x83, 0xc4, 0x08, 0xb8, 0x55, 0x00, 0x50, 0xb8
    db 0x23, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x55, 0xef, 0x83, 0xc4
    db 0x08, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50

    mov ax, 4
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
loc_8404:
    cmp word [data_a5fc], byte 0
    jg short @..local.l347
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l348
@..local.l347:
    mov ax, 2
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    je short @..local.l348
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    inc ax
    mov word [data_a5fc], ax
@..local.l348:
    mov ax, 8
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l349
    mov word [data_a5fc], 0
@..local.l349:
    mov ax, 0x37
    push ax
    mov ax, 0x4f
    push ax
    mov ax, word [data_a5fc]
    add ax, strict word 5
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x2a
    push ax
    mov ax, 0x57
    push ax
    mov ax, word [data_a5fe]
    add ax, strict word 9
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 2
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    je short @..local.l350
    mov ax, 6
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [data_a5fe], ax
@..local.l350:
    mov ax, word [data_a5ba]
    cmp ax, word [data_a5aa]
    jl short @..local.l351
    jmp near @..local.l362
@..local.l351:
    mov ax, 0
    push ax
    mov ax, 0x22
    push ax
    mov ax, 1
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x2a
    push ax
    mov ax, 0x72
    push ax
    mov ax, 2
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x58
    push ax
    mov ax, 0x37
    push ax
    mov ax, 3
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x55
    push ax
    mov ax, 0x87
    push ax
    mov ax, 4
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x49
    push ax
    mov ax, 0xb2
    push ax
    mov ax, word [data_a5ce]
    add ax, strict word 5
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    cmp word [data_a5fa], byte 0
    jg short @..local.l352
    jmp near @..local.l359
@..local.l352:
    mov ax, word [data_a5fa]
    jmp short @..local.l357
@..local.l353:
    mov ax, 0x57
    push ax
    mov ax, 0xd0
    push ax
    mov ax, 9
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    jmp short @..local.l358
@..local.l354:
    mov ax, 0x4d
    push ax
    mov ax, 0xe4
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    jmp short @..local.l358
@..local.l355:
    mov ax, 0x42
    push ax
    mov ax, 0xfa
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    jmp short @..local.l358
@..local.l356:
    mov ax, 0x33
    push ax
    mov ax, 0x118
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    jmp short @..local.l358
@..local.l357:
    cmp ax, strict word 1
    je short @..local.l353
    cmp ax, strict word 2
    je short @..local.l354
    cmp ax, strict word 3
    je short @..local.l355
    cmp ax, strict word 4
    je short @..local.l356
@..local.l358:
    inc word [data_a5fa]
    mov ax, word [data_a5fa]
    cmp ax, strict word 4
    jle short @..local.l359
    mov word [data_a5fa], 0
@..local.l359:
    cmp word [data_a5ce], byte 0
    jg short @..local.l360
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l362
@..local.l360:
    inc word [data_a5ce]
    mov ax, word [data_a5ce]
    cmp ax, strict word 2
    jne short @..local.l361
    mov word [data_a5fa], 1
@..local.l361:
    cmp word [data_a5ce], byte 3
    jle short @..local.l362
    mov word [data_a5ce], 0
@..local.l362:
    jmp short @..local.l364

    db 0x36, 0xd6, 0x68, 0xc4, 0x87, 0xc7, 0x4d, 0xc9, 0xce, 0xcc, 0x92, 0xcd, 0x8e, 0xcf, 0xef, 0xd0
    db 0xd4, 0xd3

@..local.l363:
    cmp ax, strict word 9
    jae short @..local.l364
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x29e9]
@..local.l364:
    ret
loc_85f0:
    mov ax, 0
    call ds_dispatch_f40b
    mov word [data_a5aa], 1
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    call ds_dispatch_f0ca
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    ret
loc_8634:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x9144
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_a5b4], dx
    mov word [data_a5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 1
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, 0x10
    push ax
    mov ax, 2
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, 0x11
    push ax
    mov ax, 3
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [data_a5b6], ax
    mov ax, word [bp + 0x8]
    mov word [data_a5b8], ax
    mov ax, word [bp + 0xa]
    mov word [data_a5ba], ax
    mov ax, word [bp + 0xc]
    mov word [data_a5bc], ax
    mov word [data_a5b0], 0
    mov word [data_a4a4], 1
    mov ax, 0
    cmp word [bp + 0x8], byte 0
    jne short @..local.l365
    mov ax, 0x14
@..local.l365:
    mov word [data_a5ce], ax
    mov ax, 0x9151
    push ax
    mov ax, 0xa5c6
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov word [data_a5ae], 5
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_3
loc_86f0:
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call loc_6f79
    add sp, byte 4
    mov ax, 0x11
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0x10
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0xf
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_a5b4]
    push word [data_a5b2]
    call ds_dispatch_e942
    add sp, byte 8
    call loc_85f0
    ret
api_idx_0002_7:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0xf
    push ax
    mov ax, 4
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, 0x10
    push ax
    mov ax, 5
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, 0x11
    push ax
    mov ax, 6
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [data_a5b6], ax
    mov ax, word [bp + 0x8]
    mov word [data_a5b8], ax
    mov ax, word [bp + 0xa]
    mov word [data_a5ba], ax
    mov word [bp - 0x0002], 0
@..api_idx_0002_7.l1:
    mov ax, 0x50
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x5a30], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short @..api_idx_0002_7.l1
    mov word [bp - 0x0002], 0
@..api_idx_0002_7.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x5a26], 0x140
    mov ax, 0x3c
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, strict word 0x28
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x5a16], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0002_7.l2
    mov word [data_a5e0], 0x13e
    mov word [data_a5f0], 0x2a
    mov word [data_a5e2], 0xff50
    mov word [data_a5f2], 0x3c
    mov word [data_a5b0], 0
    mov word [data_a4a4], 2
    mov word [data_a5fa], 1
    mov word [data_a5ae], 3
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call loc_6f79
    add sp, byte 4
    mov ax, 0x11
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0x10
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0xf
    push ax
    call math_loc_72c2
    pop cx
    call loc_85f0
    ret
api_idx_0002_8:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..api_idx_0002_8.l1:
    mov ax, 0x50
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x5a30], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short @..api_idx_0002_8.l1
    mov ax, 6
    push ax
    push word [data_a5d0]
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [data_a5d2]
    mov ax, 2
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [data_a5d4]
    mov ax, 3
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [data_a5d6]
    mov ax, 4
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [data_a5d8]
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0xf
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_a5b4], dx
    mov word [data_a5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 4
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, 0x10
    push ax
    mov ax, 8
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, 0x11
    push ax
    mov ax, 7
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [data_a5b8], ax
    mov ax, word [bp + 0x8]
    mov word [data_a5bc], ax
    mov ax, word [bp + 0xa]
    mov word [data_a5be], ax
    mov word [bp - 0x0002], 0
@..api_idx_0002_8.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x5a26], 0x140
    mov ax, 0x3c
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, strict word 0x28
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x5a16], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0002_8.l2
    mov word [data_a5e0], 0x13e
    mov word [data_a5f0], 0x2a
    mov word [data_a5e2], 0x140
    mov word [data_a5f2], 0x46
    mov word [data_a5e4], 0xffe2
    mov word [data_a5fc], 0
    mov word [data_a5fe], 0
    mov word [data_a5b0], 0
    mov word [data_a4a4], 3
    mov word [data_a5ae], 5
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call loc_6f79
    add sp, byte 4
    mov ax, 0x11
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0x10
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0xf
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_a5b4]
    push word [data_a5b2]
    call ds_dispatch_e942
    add sp, byte 8
    call loc_85f0
    ret
loc_8a74:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x9158
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_a5b4], dx
    mov word [data_a5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 9
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, 0x11
    push ax
    mov ax, 6
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [data_a5b8], ax
    mov word [data_a5ce], 1
    mov word [data_a5b0], 0
    mov word [data_a4a4], 4
    mov word [data_a5e2], 0xff9c
    mov word [data_a5f2], 0x55
    mov word [data_a600], 0
    mov word [data_a5ae], 5
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call loc_6f79
    add sp, byte 4
    mov ax, 0x11
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0xf
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_a5b4]
    push word [data_a5b2]
    call ds_dispatch_e942
    add sp, byte 8
    call loc_85f0
    ret
api_idx_0002_9:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x9165
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_a5b4], dx
    mov word [data_a5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 0xa
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, 0x11
    push ax
    mov ax, 6
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [data_a5b8], ax
    mov word [data_a5b0], 0
    mov word [data_a4a4], 5
    mov word [data_a5d0], 0
    mov word [data_a5d2], 0xa0
    mov word [data_a5d4], 0x140
    mov word [data_a5d6], 0x1e0
    mov word [bp - 0x0002], 0
@..api_idx_0002_9.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x5a26], 0x140
    mov ax, 0x10
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, strict word 4
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x5a16], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0002_9.l1
    mov word [data_a5e2], 0xff9c
    mov word [data_a5f2], 0x6e
    mov word [data_a600], 0
    mov word [data_a5ae], 5
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call loc_6f79
    add sp, byte 4
    mov ax, 0x11
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0xf
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_a5b4]
    push word [data_a5b2]
    call ds_dispatch_e942
    add sp, byte 8
    call loc_85f0
    ret
api_idx_0002_10:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x9172
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_a5b4], dx
    mov word [data_a5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 0xd
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [data_a5b6], ax
    mov ax, 0x917f
    push ax
    mov ax, 0xa5c6
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov word [data_a5ce], 0
    mov word [data_a5fa], 0
    mov word [data_a5b0], 0
    mov word [data_a4a4], 6
    mov word [data_a5ae], 5
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call loc_6f79
    add sp, byte 4
    mov ax, 0xf
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_a5b4]
    push word [data_a5b2]
    call ds_dispatch_e942
    add sp, byte 8
    call loc_85f0
    ret
api_idx_0002_11:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x9186
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_a5b4], dx
    mov word [data_a5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 0xc
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, 0x9193
    push ax
    mov ax, 0xa5c6
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov word [data_a5fc], 0
    mov word [data_a5ce], 0
    mov word [data_a5fa], 0
    mov word [data_a5fe], 0
    mov word [data_a5b0], 0
    mov word [data_a4a4], 7
    mov word [data_a5ae], 5
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call loc_6f79
    add sp, byte 4
    mov ax, 0xf
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_a5b4]
    push word [data_a5b2]
    call ds_dispatch_e942
    add sp, byte 8
    call loc_85f0
    ret
api_idx_0002_12:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x919a
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_a5b4], dx
    mov word [data_a5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 0xe
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, 0x10
    push ax
    mov ax, 0xf
    push ax
    call api_idx_0016_2
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [data_a5b8], ax
    mov ax, word [bp + 0x8]
    mov word [data_a5ba], ax
    mov ax, 0x91a7
    push ax
    mov ax, 0xa5c6
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov word [data_a5ce], 0
    mov word [data_a5fa], 0
    mov word [data_a5fc], 0
    mov word [data_a5fe], 0
    mov word [data_a5b0], 0
    mov word [data_a4a4], 8
    mov word [data_a5ae], 5
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call loc_6f79
    add sp, byte 4
    mov ax, 0xf
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0x10
    push ax
    call math_loc_72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_a5b4]
    push word [data_a5b2]
    call ds_dispatch_e942
    add sp, byte 8
    call loc_85f0
    ret
api_idx_0002_13:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    call loc_85f0
    cmp word [data_0e32], byte 1
    jne short @..api_idx_0002_13.l1
    db 0xe8, 0xb2, 0x60 ; call 0xf039
@..api_idx_0002_13.l1:
    mov word [data_0e32], 0
    call ds_dispatch_d9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..api_idx_0002_13.l2
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call ds_dispatch_d7e7
    add sp, byte 4
    mov ax, word [data_0116]
    mov word [data_844e], ax
    mov ax, 1
    push ax
    push word [data_844e]
    mov ax, 0
    push ax
    call ds_dispatch_d964
    add sp, byte 6
    mov word [data_844c], ax
@..api_idx_0002_13.l2:
    mov ax, word [bp + 0x4]
    jmp near @..local.l367
@..api_idx_0002_13.l3:
    cmp word [bp + 0x4], byte 4
    jne short @..api_idx_0002_13.l4
    mov ax, 0x63
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0x63
    push ax
    mov ax, 0x7ba2
    push ax
    call loc_8634
    add sp, byte 0x0a
    jmp short @..api_idx_0002_13.l5
@..api_idx_0002_13.l4:
    mov ax, 0x63
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7b0c
    push ax
    call loc_8634
    add sp, byte 0x0a
@..api_idx_0002_13.l5:
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7b20
    push ax
    call api_idx_0002_7
    add sp, byte 8
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7b2a
    push ax
    call api_idx_0002_8
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x7b2f
    push ax
    call api_idx_0002_11
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x7b3e
    push ax
    call api_idx_0002_10
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7b48
    push ax
    call api_idx_0002_12
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x63
    push ax
    mov ax, 0x7b4d
    push ax
    call api_idx_0002_12
    add sp, byte 6
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    cmp word [bp + 0x4], byte 4
    jne short @..api_idx_0002_13.l6
    mov ax, 0x63
@..api_idx_0002_13.l6:
    push ax
    mov ax, 0x7b52
    push ax
    call loc_8634
    add sp, byte 0x0a
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x7b5c
    push ax
    call api_idx_0002_7
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x7b66
    push ax
    call loc_8a74
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x7b70
    push ax
    call api_idx_0002_9
    add sp, byte 4
    jmp near @..local.l371
@..api_idx_0002_13.l7:
    mov ax, 0
    push ax
    push ax
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0x7bd4
    push ax
    call loc_8634
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 0x63
    push ax
    mov ax, 0x7be3
    push ax
    call api_idx_0002_12
    add sp, byte 6
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7be8
    push ax
    call api_idx_0002_7
    add sp, byte 8
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7bf2
    push ax
    call api_idx_0002_12
    add sp, byte 6
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7bf7
    push ax
    call api_idx_0002_8
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x7bfc
    push ax
    call api_idx_0002_11
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x7c06
    push ax
    call api_idx_0002_10
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0x7c0b
    push ax
    call loc_8634
    add sp, byte 0x0a
    mov ax, 0x63
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7c10
    push ax
    call loc_8634
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0x7c1a
    push ax
    call loc_8634
    add sp, byte 0x0a
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x7c24
    push ax
    call api_idx_0002_7
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x7c38
    push ax
    call loc_8a74
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x7c42
    push ax
    call api_idx_0002_9
    add sp, byte 4
    jmp near @..local.l371
@..local.l366:
    mov ax, 0
    push ax
    mov ax, 0x63
    push ax
    push ax
    push ax
    mov ax, 0x797c
    push ax
    call loc_8634
    add sp, byte 0x0a
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 0x63
    push ax
    mov ax, 0x7986
    push ax
    call api_idx_0002_7
    add sp, byte 8
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7990
    push ax
    call api_idx_0002_8
    add sp, byte 8
    mov ax, 0x63
    push ax
    mov ax, 0x799a
    push ax
    call api_idx_0002_10
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x79ae
    push ax
    call api_idx_0002_11
    add sp, byte 4
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x79b8
    push ax
    call api_idx_0002_7
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x79c2
    push ax
    call api_idx_0002_11
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 0x79d6
    push ax
    call api_idx_0002_12
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x79e0
    push ax
    call api_idx_0002_11
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x79ea
    push ax
    call api_idx_0002_10
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x79f4
    push ax
    call api_idx_0002_7
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x79fe
    push ax
    call loc_8a74
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x7a08
    push ax
    call api_idx_0002_9
    add sp, byte 4
    jmp short @..local.l371
@..local.l367:
    cmp ax, strict word 1
    jne short @..local.l368
    jmp near @..api_idx_0002_13.l3
@..local.l368:
    cmp ax, strict word 2
    jne short @..local.l369
    jmp near @..api_idx_0002_13.l7
@..local.l369:
    cmp ax, strict word 3
    jne short @..local.l370
    jmp near @..local.l366
@..local.l370:
    cmp ax, strict word 4
    jne short @..local.l371
    jmp near @..api_idx_0002_13.l3
@..local.l371:
    cmp word [data_8450], byte 0
    je short @..local.l372
    push word [data_844c]
    push word [data_844e]
    call ds_dispatch_d91b
    add sp, byte 4
    mov ax, 0
    push ax
    call ds_dispatch_d907
    pop cx
@..local.l372:
    test word [data_9056], 0x1000
    je short @..local.l374
    cmp byte [data_5989], 1
    jne short @..local.l374
    cmp word [data_0e32], byte 0
    jne short @..local.l373
    call ds_dispatch_f02c
@..local.l373:
    mov word [data_0e32], 1
@..local.l374:
    mov ax, 0
    push ax
    mov ax, 0x91ae
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov word [bp - 0x0002], 0
    jmp short @..local.l376
@..local.l375:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_cb3a
    add sp, byte 4
    inc word [bp - 0x0002]
@..local.l376:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..local.l375
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    ret

    db 0x8f, 0x06, 0xc4, 0x91, 0x59, 0x89, 0x26, 0xc0, 0x91, 0x89, 0x2e, 0xc2, 0x91, 0x89, 0x36, 0xbc
    db 0x91, 0x89, 0x3e, 0xbe, 0x91, 0xfc, 0xbf, 0xc6, 0x91, 0xb9, 0x02, 0xa6, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0xb5, 0x6c, 0x8b, 0x2e, 0xc2, 0x91, 0x8b, 0x26, 0xc0
    db 0x91, 0x8b, 0x36, 0xbc, 0x91, 0x8b, 0x3e, 0xbe, 0x91, 0x51, 0xff, 0x26, 0xc4, 0x91

string_loc_936e:
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
string_loc_9386:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
@..string_loc_936e.l1:
    lodsw
    scasw
    jne short @..local.l377
    test al, al
    je short @..string_loc_936e.l2
    test ah, ah
    jne short @..string_loc_936e.l1
    jmp short @..string_loc_936e.l2

    db 0x55, 0x8b, 0xec, 0x8b, 0x4e, 0x08, 0x8b, 0xd1, 0xd1, 0xe9, 0xfc, 0x56, 0x57, 0x8b, 0x76, 0x04
    db 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06, 0xe3, 0x0e, 0xad, 0xaf, 0x75, 0x18, 0x84, 0xc0, 0x74
    db 0x0e, 0x84, 0xe4, 0xe0, 0xf4, 0x74, 0x08, 0xf6, 0xc2, 0x01, 0x74, 0x03, 0xa6, 0x75, 0x13

@..string_loc_936e.l2:
    sub ax, ax
@..string_loc_936e.l3:
    pop di
    pop si
    pop bp
    ret
@..local.l377:
    sub di, byte 2
    scasb
    jne short @..local.l378
    test al, al
    je short @..string_loc_936e.l2
    mov al, ah
    scasb
@..local.l378:
    sbb ax, ax
    js short @..string_loc_936e.l3
    inc ax
    jmp short @..string_loc_936e.l3

    db 'PCFILE.DBS', 0
    db 'V.$$$', 0
    db 'PORTDATA.VGA', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'SAVEGAME.BCF', 0
    db 'NEWGAME.DBS', 0
    db 'CRUSADER.END', 0
    db 'SCENARIO.HDR', 0
    db 'V.$$$', 0
    db 'PALETTE.DEF', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x00
    db '!%&]@#|', 0
    db 0x20, 0x00
    db 'STARSCRN.VGA', 0
    db 'MAINSCRN.VGA', 0
    db 'VIDEO00.PIC', 0
    db 'VIDSCN01.VGA', 0
    db '123432', 0
    db 'STARSCRN.VGA', 0
    db 'VIDSCN02.VGA', 0
    db 'VIDSCN03.VGA', 0
    db '123432', 0
    db 'VIDSCN04.VGA', 0
    db '123432', 0
    db 'VIDSCN05.VGA', 0
    db '123432', 0
    db 'MAINSCRN.VGA', 0
    times 11 db 0

