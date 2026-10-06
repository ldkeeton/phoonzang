%include "structs/structs.inc"
%include "structs/loc_62e7.inc"
org 0
bits 16
%include "labels/vmaze_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x60, 0xac, 0x98, 0x90

data_0076 equ 0x0076
data_010e equ 0x010e
data_0112 equ 0x0112
data_02b9 equ 0x02b9
data_032c equ 0x032c
data_03ae equ 0x03ae
data_03dc equ 0x03dc
data_0cf8 equ 0x0cf8
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
data_0e16 equ 0x0e16
data_0e18 equ 0x0e18
data_0e1a equ 0x0e1a
data_0e1c equ 0x0e1c
data_0e46 equ 0x0e46
data_100a equ 0x100a
data_12a1 equ 0x12a1
data_1a3e equ 0x1a3e
data_1fb8 equ 0x1fb8
data_257d equ 0x257d
data_3175 equ 0x3175
loc_3405 equ 0x3405
data_4446 equ 0x4446
data_444e equ 0x444e
data_48eb equ 0x48eb
data_5216 equ 0x5216
loc_553f equ 0x553f
loc_557a equ 0x557a
loc_557e equ 0x557e
loc_56af equ 0x56af
loc_56d2 equ 0x56d2
loc_57b8 equ 0x57b8
loc_57d1 equ 0x57d1
loc_5817 equ 0x5817
loc_5831 equ 0x5831
loc_5897 equ 0x5897
data_590e equ 0x590e
data_5910 equ 0x5910
loc_596b equ 0x596b
loc_5973 equ 0x5973
loc_5980 equ 0x5980
data_5988 equ 0x5988
loc_598a equ 0x598a
data_598c equ 0x598c
data_598e equ 0x598e
loc_59a1 equ 0x59a1
loc_59bd equ 0x59bd
loc_59e0 equ 0x59e0
loc_59f0 equ 0x59f0
data_59fa equ 0x59fa
loc_59fd equ 0x59fd
loc_5a03 equ 0x5a03
loc_5a0f equ 0x5a0f
loc_5a7a equ 0x5a7a
loc_5a8e equ 0x5a8e
loc_5a90 equ 0x5a90
loc_5aa4 equ 0x5aa4
loc_5aa6 equ 0x5aa6
loc_5aac equ 0x5aac
loc_5ab7 equ 0x5ab7
loc_5b10 equ 0x5b10
data_5b3e equ 0x5b3e
data_5b55 equ 0x5b55
data_5b6c equ 0x5b6c
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
loc_5bc9 equ 0x5bc9
loc_5be1 equ 0x5be1
loc_5bf5 equ 0x5bf5
loc_62dd equ 0x62dd
loc_62e7 equ 0x62e7
loc_62ec equ 0x62ec
loc_62f5 equ 0x62f5
loc_6334 equ 0x6334
loc_6355 equ 0x6355
loc_6358 equ 0x6358
loc_6375 equ 0x6375
loc_6380 equ 0x6380
loc_638a equ 0x638a
loc_63a6 equ 0x63a6
loc_63b3 equ 0x63b3
loc_63d0 equ 0x63d0
loc_63d5 equ 0x63d5
loc_642a equ 0x642a
loc_642d equ 0x642d
loc_6436 equ 0x6436
loc_6444 equ 0x6444
loc_6451 equ 0x6451
loc_645b equ 0x645b
loc_646c equ 0x646c
loc_6485 equ 0x6485
loc_648a equ 0x648a
loc_649b equ 0x649b
loc_6510 equ 0x6510
loc_6514 equ 0x6514
loc_6525 equ 0x6525
loc_6528 equ 0x6528
loc_6532 equ 0x6532
loc_6542 equ 0x6542
loc_656b equ 0x656b
loc_656e equ 0x656e
loc_6588 equ 0x6588
loc_65a0 equ 0x65a0
loc_65a3 equ 0x65a3
loc_65b4 equ 0x65b4
loc_65c2 equ 0x65c2
loc_65e0 equ 0x65e0
loc_65ee equ 0x65ee
loc_6600 equ 0x6600
loc_6605 equ 0x6605
loc_6634 equ 0x6634
loc_6652 equ 0x6652
loc_665f equ 0x665f
loc_666c equ 0x666c
loc_6686 equ 0x6686
loc_6690 equ 0x6690
loc_66a9 equ 0x66a9
loc_6701 equ 0x6701
loc_6704 equ 0x6704
loc_673f equ 0x673f
loc_674c equ 0x674c
loc_675a equ 0x675a
loc_675e equ 0x675e
loc_6768 equ 0x6768
data_69c8 equ 0x69c8
data_6ea1 equ 0x6ea1
data_6eb7 equ 0x6eb7
data_7b05 equ 0x7b05
data_7d3c equ 0x7d3c
data_82e8 equ 0x82e8
data_82ea equ 0x82ea
data_82ec equ 0x82ec
data_82ee equ 0x82ee
data_82fe equ 0x82fe
data_8300 equ 0x8300
data_830a equ 0x830a
data_830c equ 0x830c
data_831a equ 0x831a
data_8355 equ 0x8355
data_83d4 equ 0x83d4
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8452 equ 0x8452
data_8456 equ 0x8456
data_845a equ 0x845a
data_8460 equ 0x8460
data_84a0 equ 0x84a0
data_8789 equ 0x8789
data_8809 equ 0x8809
data_880a equ 0x880a
data_89c1 equ 0x89c1
data_8aac equ 0x8aac
data_8af0 equ 0x8af0
data_8ce8 equ 0x8ce8
data_8d06 equ 0x8d06
data_8d08 equ 0x8d08
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8d12 equ 0x8d12
data_8f14 equ 0x8f14
data_8f16 equ 0x8f16
data_8f18 equ 0x8f18
data_8f1c equ 0x8f1c
data_8f1e equ 0x8f1e
data_8f20 equ 0x8f20
data_8f22 equ 0x8f22
data_8f24 equ 0x8f24
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
data_8f48 equ 0x8f48
data_905a equ 0x905a
data_905e equ 0x905e
data_9068 equ 0x9068
data_906a equ 0x906a
data_906c equ 0x906c
data_908a equ 0x908a
data_908c equ 0x908c
data_9192 equ 0x9192
data_9194 equ 0x9194
data_9196 equ 0x9196
data_9198 equ 0x9198
data_919a equ 0x919a
data_919c equ 0x919c
data_919e equ 0x919e
data_91a6 equ 0x91a6
data_91a8 equ 0x91a8
data_91aa equ 0x91aa
data_91ac equ 0x91ac
data_91ae equ 0x91ae
data_91b0 equ 0x91b0
data_91b2 equ 0x91b2
data_91b4 equ 0x91b4
data_91d0 equ 0x91d0
data_91d2 equ 0x91d2
data_91d4 equ 0x91d4
data_91d6 equ 0x91d6
data_91e4 equ 0x91e4
data_931e equ 0x931e
data_9ae8 equ 0x9ae8
data_9b18 equ 0x9b18
data_9b34 equ 0x9b34
data_9b36 equ 0x9b36
data_9b38 equ 0x9b38
data_9b3a equ 0x9b3a
data_9b3c equ 0x9b3c
data_9b3e equ 0x9b3e
data_9b40 equ 0x9b40
data_9b42 equ 0x9b42
data_9b44 equ 0x9b44
data_9b46 equ 0x9b46
data_9b48 equ 0x9b48
data_9b4a equ 0x9b4a
data_9b4c equ 0x9b4c
data_9b4e equ 0x9b4e
data_9b50 equ 0x9b50
data_9bd0 equ 0x9bd0
data_9bdc equ 0x9bdc
data_9bde equ 0x9bde
data_9be6 equ 0x9be6
data_9c00 equ 0x9c00

    cli
    add byte [si + 0x770c], dl
    cld
api_idx_0002:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [data_8f22], 0
    mov word [data_9192], 5
    les bx, word [ds_data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [data_9194], 0
    mov word [data_9196], 0
    mov word [data_9198], 0
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    add ax, strict word 0x24
    adc dx, byte 0
    mov word [data_919c], dx
    mov word [data_919a], ax
    call api_idx_0002_3
    cmp word [data_906a], byte 0
    je short @..api_idx_0002.l1
    mov ax, 1
    push ax
    push word [data_9068]
    call ds_dispatch_c459
    add sp, byte 4
    mov word [data_906a], 0
@..api_idx_0002.l1:
    cmp word [data_830a], byte 6
    jne short @..api_idx_0002.l2
    push word [data_830c]
    call api_idx_000c
    pop cx
@..api_idx_0002.l2:
    cmp word [data_830a], byte 5
    jne short @..api_idx_0002.l3
    call api_idx_0002_5
    call api_idx_0022
@..api_idx_0002.l3:
    call loc_0140
    call api_idx_0002_3
    mov ax, word [data_830a]
    cmp ax, strict word 0x1e
    je short @..api_idx_0002.l4
    cmp ax, strict word 0x1b
    je short @..api_idx_0002.l4
    cmp ax, strict word 0x18
    je short @..api_idx_0002.l4
    cmp ax, strict word 0x11
    je short @..api_idx_0002.l4
    cmp ax, strict word 0x13
    je short @..api_idx_0002.l4
    cmp ax, strict word 0x14
    je short @..api_idx_0002.l4
    mov word [data_8f22], 1
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
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [data_9068], ax
    mov word [data_906a], 1
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
    call api_idx_0030
    mov word [data_906c], 1
    mov word [data_8f22], 0
@..api_idx_0002.l4:
    mov ax, 0
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    cmp word [data_830c], byte 0x17
    jne short @..local.l1
    cmp word [data_8f3e], byte 0x0f
    jne short @..local.l1
    ret
@..local.l1:
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, strict word 2
    jne short @..local.l2
    cmp word [data_9196], byte 0
    je short @..local.l2
    mov ax, 0xf
    jmp short @..local.l3
@..local.l2:
    mov ax, api_idx_0002
@..local.l3:
    mov word [bp - 0x0002], ax
    push ax
    call ds_dispatch_b7e0
    pop cx
    ret
loc_0140:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 1
    push ax
    call ds_dispatch_ef14
    pop cx
    cmp word [data_9194], byte 0
    je short @..local.l4
    mov ax, api_idx_0002
    push ax
    call ds_dispatch_d6c6
    pop cx
@..local.l4:
    cmp word [data_9196], byte 0
    je short @..local.l5
    mov ax, 0xf
    push ax
    call ds_dispatch_d6c6
    pop cx
@..local.l5:
    mov word [data_9194], 0
    mov word [data_9196], 0
    mov word [data_9198], 0
    ret
loc_017f:
    mov ax, 0
    call ds_dispatch_f40b
    call loc_0140
    cmp word [bp + 0x4], byte 0
    je short @..local.l6
    mov ax, 1
    push ax
    mov ax, api_idx_0002
    push ax
    push word [bp + 0x4]
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov word [data_9194], ax
@..local.l6:
    cmp word [bp + 0x6], byte 0
    je short @..local.l7
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    push word [bp + 0x6]
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, word [bp + 0x6]
    mov word [data_9196], ax
@..local.l7:
    mov word [data_9198], 0
    ret
api_idx_0008:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    mov word [bp - 0x0008], 0
    call math_loc_13c0
    cmp word [data_919e], byte 0
    je short @..local.l8
    cmp word [data_9194], byte 0x0d
    je short @..api_idx_0008.l1
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    call loc_017f
    add sp, byte 4
@..api_idx_0008.l1:
    mov ax, word [bp + 0xe]
    mov word [data_9198], ax
    ret
@..local.l8:
    mov ax, word [bp + 0xe]
    jmp near @..local.l16
@..local.l9:
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l10
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x9b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l10
    mov ax, 1
    jmp short @..local.l11
@..local.l10:
    mov ax, 0
@..local.l11:
    mov word [bp - 0x0008], ax
    jmp short @..local.l18
@..local.l12:
    mov word [bp - 0x0004], 0x14a
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
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
    call ds_dispatch_f9cd
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short @..local.l13
    cmp ax, 0x36c
    jl short @..local.l14
@..local.l13:
    mov ax, 1
    jmp short @..local.l15
@..local.l14:
    mov ax, 0
@..local.l15:
    mov word [bp - 0x0008], ax
    jmp short @..local.l18
@..local.l16:
    cmp ax, strict word 2
    jne short @..local.l17
    jmp near @..local.l9
@..local.l17:
    jmp short @..local.l12
@..local.l18:
    cmp word [bp - 0x0008], byte 0
    je short @..local.l21
    mov ax, word [data_9194]
    cmp ax, word [bp + 0x8]
    jne short @..local.l19
    cmp word [bp + 0xc], byte 0
    je short @..local.l20
@..local.l19:
    push word [bp + 0xa]
    push word [bp + 0x8]
    call loc_017f
    add sp, byte 4
@..local.l20:
    jmp short @..local.l23
@..local.l21:
    mov ax, word [data_9194]
    cmp ax, word [bp + 0x4]
    jne short @..local.l22
    cmp word [bp + 0xc], byte 0
    je short @..local.l23
@..local.l22:
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_017f
    add sp, byte 4
@..local.l23:
    mov ax, word [bp + 0xe]
    mov word [data_9198], ax
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6e60], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..api_idx_0002_3.l1
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call ds_dispatch_f40b
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
    jne short @..api_idx_0002_4.l1
    mov ax, 0x1b
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0002_4.l1:
    mov ax, 0
    push ax
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call ds_dispatch_f012
    add sp, byte 6
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    ret
loc_0344:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [data_5b6e]
    jmp near @..local.l24

    db 0xb8, 0x1a, 0x00, 0x50, 0xb8, 0x19, 0x00, 0x50, 0xe8, 0x24, 0xfe, 0x83, 0xc4, 0x04, 0xe9, 0x88
    db 0x00, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x14
    db 0x00, 0x50, 0xb8, 0x15, 0x00, 0x50, 0xe8, 0x50, 0xfe, 0x83, 0xc4, 0x0c, 0xeb, 0x6b, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x1c, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xe8, 0x30, 0xfe, 0x83, 0xc4, 0x0c, 0xeb, 0x4b, 0xb8, 0x18
    db 0x00, 0x50, 0xb8, 0x1d, 0x00, 0x50, 0xe8, 0xd6, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x3b, 0xb8, 0x03
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x1b, 0x00, 0x50, 0xe8, 0x00, 0xfe, 0x83, 0xc4, 0x0c, 0xeb, 0x1b, 0x30, 0x54
    db 0x97, 0x53, 0xa8, 0x53, 0xc5, 0x53, 0xa8, 0x53, 0xe5, 0x53, 0xf5, 0x53

@..local.l24:
    cmp ax, strict word 7
    jae short @..local.l25
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5415]
@..local.l25:
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [data_91a6], 0
    mov ax, word [data_830c]
    jmp short @..api_idx_0002_5.l1
    mov word [bp - 0x0002], 1
    jmp short @..api_idx_0002_5.l2
    mov word [bp - 0x0002], 2
    jmp short @..api_idx_0002_5.l2
    mov word [bp - 0x0002], 3
    jmp short @..api_idx_0002_5.l2
    mov word [data_91a6], 1
    mov word [bp - 0x0002], 4
    jmp short @..api_idx_0002_5.l2
    mov word [bp - 0x0002], 5
    jmp short @..api_idx_0002_5.l2
    mov word [bp - 0x0002], 6
    jmp short @..api_idx_0002_5.l2

    db 'ITITITITITITIT]TkTkTkTkTkTITPTBTPTBTPTPTPTPTdTBTBTdTBTWTdTBTBTPT'

@..api_idx_0002_5.l1:
    db 0x3d, 0x20, 0x00
    jae short @..api_idx_0002_5.l2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5472]
@..api_idx_0002_5.l2:
    cmp word [data_5b70], byte 0
    je short @..api_idx_0002_5.l3
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_5b6e]
    jne short @..api_idx_0002_5.l3
    jmp near @..local.l27
@..api_idx_0002_5.l3:
    call ds_dispatch_c145
    mov ax, word [bp - 0x0002]
    mov word [data_5b6e], ax
    jmp near @..local.l26
    mov ax, 0
    push ax
    mov ax, 0x90a0
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 0x90ad
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 6
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 9
    push ax
    mov ax, 0xf
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 0xa
    push ax
    mov ax, 0x10
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 0xd
    push ax
    mov ax, 0x39
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov word [data_5b6c], 0
    jmp near @..local.l27
    mov ax, 1
    push ax
    mov ax, 0x90ba
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x90c7
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x90d4
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 0xd
    push ax
    mov ax, 0x3a
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov word [data_5b6c], 1
    jmp near @..local.l27
    mov ax, 2
    push ax
    mov ax, 0x90e1
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x90ee
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 0x90fb
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x9108
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 8
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 0xa
    push ax
    mov ax, 0x10
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 0xb
    push ax
    mov ax, 0x11
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x3b
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov word [data_5b6c], 2
    jmp near @..local.l27
    mov ax, 1
    push ax
    mov ax, 0x9115
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x9122
    push ax
    call api_idx_0002_4
    add sp, byte 4
    mov ax, 0xd
    push ax
    mov ax, 0x3a
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov word [data_5b6c], 1
    jmp near @..local.l27
    mov ax, 2
    push ax
    mov ax, 0x912f
    push ax

    db 0xe8, 0x12, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x3c, 0x91, 0x50, 0xe8, 0x04
    db 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x49, 0x91, 0x50, 0xe8, 0xf6, 0xfc, 0x83
    db 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x06, 0xd0, 0x83, 0xc4, 0x04
    db 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8, 0xf8, 0xcf, 0x83, 0xc4, 0x04, 0xb8, 0x0c
    db 0x00, 0x50, 0xb8, 0x3b, 0x00, 0x50, 0xe8, 0xea, 0xcf, 0x83, 0xc4, 0x04, 0xb8, 0x09, 0x00, 0x50
    db 0xb8, 0x53, 0x00, 0x50, 0xe8, 0xdc, 0xcf, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x38
    db 0x00, 0x50, 0xe8, 0xce, 0xcf, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x02, 0x00, 0xeb, 0x77
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x56, 0x91, 0x50, 0xe8, 0x9a, 0xfc, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x63, 0x91, 0x50, 0xe8, 0x8c, 0xfc, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50
    db 0xb8, 0x70, 0x91, 0x50, 0xe8, 0x7e, 0xfc, 0x83, 0xc4, 0x04, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x3b
    db 0x00, 0x50, 0xe8, 0x8e, 0xcf, 0x83, 0xc4, 0x04, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x53, 0x00, 0x50
    db 0xe8, 0x80, 0xcf, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x3a, 0x00, 0x50, 0xe8, 0x72
    db 0xcf, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x01, 0x00, 0xeb, 0x1b, 0x17, 0x57, 0xde
    db 'T;U|U'
    db 0xf5, 0x55, 0x28, 0x56, 0xa0, 0x56

@..local.l26:
    db 0x3d, 0x07, 0x00, 0x73, 0x08, 0x93, 0xd1, 0xe3, 0x2e
    jmp [bx + 0x56fc]
@..local.l27:
    call loc_0344
    mov word [data_5b70], 1
    ret
api_idx_0014:
    mov ax, 0xffec
    call ds_dispatch_f40b
    mov ax, word [data_0e10]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp near @..local.l30
@..api_idx_0014.l1:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [data_830c]
    je short @..api_idx_0014.l2
    jmp near @..local.l29
@..api_idx_0014.l2:
    cmp byte [bx + 0x1], 6
    jne short @..api_idx_0014.l3
    mov ax, word [bx + 0x4]
    mov cx, word [bx + 0x2]
    shl cx, 1
    mov si, cx
    mov bx, word [data_0e12]
    mov word [bx + si + 0x3c0], ax
    jmp near @..local.l29
@..api_idx_0014.l3:
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
    mov bx, word [data_0e14]
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
    jmp near @..local.l28
    mov ax, word [bp - 0x0010]
    mov cx, 0x10
    cwd
    idiv cx
    push ax
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_eca4
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
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_eca4
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
    call api_idx_0004_6
    add sp, byte 0x0a
    test ax, ax
    jne short @..api_idx_0014.l4
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
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
@..api_idx_0014.l4:
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
    call api_idx_0004_6
    add sp, byte 0x0a
    test ax, ax
    jne short @..api_idx_0014.l5
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
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
@..api_idx_0014.l5:
    jmp near @..local.l29
    mov bx, word [bp - 0x0004]
    push word [bx + 0x4]
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    jmp near @..local.l29
    mov bx, word [bp - 0x0004]
    push word [bx + 0x4]
    mov ax, 4
    push ax
    push word [bp - 0x0014]
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    jmp near @..local.l29
    mov ax, word [bp - 0x000e]
    dec ax
    push ax
    push word [bp - 0x000c]
    lea ax, word [bp - 0x0006]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    lea ax, word [bp - 0x0008]

    db 0x50, 0xe8, 0xe8, 0x5e, 0x83, 0xc4, 0x0a, 0x85, 0xc0, 0x75, 0x33, 0x8b, 0x46, 0xfa, 0xb9, 0x06
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xf6, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x03, 0x46
    db 0xf8, 0x89, 0x46, 0xec, 0x8b, 0x5e, 0xfc, 0xff, 0x77, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76
    db 0xec, 0xa1, 0x14, 0x0e, 0x05, 0x90, 0x00, 0x50, 0xe8, 0x8f, 0xe3, 0x83, 0xc4, 0x08, 0xe9, 0x9c
    db 0x00, 0xff, 0x76, 0xf2, 0x8b, 0x46, 0xf4, 0x48, 0x50, 0x8d, 0x46, 0xfa, 0x50, 0x8d, 0x46, 0xf6
    db 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x94, 0x5e, 0x83, 0xc4, 0x0a, 0x85, 0xc0, 0x75, 0x33, 0x8b
    db 0x46, 0xfa, 0xb9, 0x06, 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xf6, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1
    db 0x03, 0xc1, 0x03, 0x46, 0xf8, 0x89, 0x46, 0xec, 0x8b, 0x5e, 0xfc, 0xff, 0x77, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xff, 0x76, 0xec, 0xa1, 0x14, 0x0e, 0x05, 0x90, 0x02, 0x50, 0xe8, 0x3b, 0xe3, 0x83
    db 0xc4, 0x08, 0xeb, 0x49, 0xff, 0x76, 0xf0, 0xb8, 0x06, 0x00, 0x50, 0xff, 0x76, 0xec, 0xa1, 0x14
    db 0x0e, 0x05, 0xb0, 0x04, 0x50, 0xe8, 0x22, 0xe3, 0x83, 0xc4, 0x08, 0xff, 0x76, 0xee, 0xb8, 0x02
    db 0x00, 0x50, 0xff, 0x76, 0xec, 0xa1, 0x14, 0x0e, 0x05, 0xb0, 0x07, 0x50, 0xe8, 0x0b, 0xe3, 0x83
    db 0xc4, 0x08, 0xeb, 0x19, 0xe7, 0x57, 0xd4, 0x58, 0xf1, 0x58, 0x0e, 0x59, 0x62, 0x59, 0xb5, 0x59

@..local.l28:
    cmp ax, strict word 6
    jae short @..local.l29
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x59e5]
@..local.l29:
    add word [bp - 0x0004], byte 6
    inc word [bp - 0x0002]
@..local.l30:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_590e]
    jge short @..local.l31
    jmp near @..api_idx_0014.l1
@..local.l31:
    ret
loc_09cb:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push word [data_830c]
    push word [data_0e14]
    mov ax, 2
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    mov ax, 0
    push ax
    push word [data_830c]
    push word [data_0e12]
    mov ax, 3
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    mov ax, 0x80
    push ax
    push ds
    mov ax, 0x8b7e
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
    call ds_dispatch_afcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    push ds
    mov ax, 0x8afe
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
    call ds_dispatch_afcc
    add sp, byte 0x0a
    call api_idx_0014
    mov bx, word [data_0e14]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    add ax, word [data_8f42]
    mov word [data_8f46], ax
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    add ax, word [data_8f40]
    mov word [data_8f44], ax
    call api_idx_0002_5
    ret
api_idx_0006:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp - 0x0004], byte 0x4a
    jl short @..api_idx_0006.l1
    mov ax, 2
    cmp word [bp - 0x0004], byte 0x5c
    jge short @..api_idx_0006.l1
    mov ax, 1
@..api_idx_0006.l1:
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
    mov bx, word [data_0e14]
    mov al, byte [bx + si]
    sub ah, ah
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov bx, word [data_0e14]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0xac0]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short @..api_idx_0002_6.l1
    mov ax, 0
    jmp short @..api_idx_0002_6.l2
@..api_idx_0002_6.l1:
    mov ax, 1
@..api_idx_0002_6.l2:
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
    call ds_dispatch_ecf6
    add sp, byte 6
    ret
math_loc_0b14:
    mov ax, 0
    call ds_dispatch_f40b
    call loc_0140
    cmp word [bp + 0x8], byte 0
    je short @..math_loc_0b14.l1
    call ds_dispatch_d9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..math_loc_0b14.l1
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_d7e7
    add sp, byte 4
    mov ax, word [data_0112]
    mov word [data_844e], ax
    mov ax, 0
    push ax
    push word [data_844e]
    push ax
    call ds_dispatch_d964
    add sp, byte 6
    mov word [data_844c], ax
@..math_loc_0b14.l1:
    mov ax, word [bp + 0x4]
    mov word [data_8452], ax
    mov ax, word [bp + 0x6]
    mov word [data_845a], ax
    mov word [data_830a], 0xa
    ret
api_idx_0002_7:
    mov ax, 0xfffe
    call ds_dispatch_f40b
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
    call ds_dispatch_ec74
    add sp, byte 4
    cmp ax, word [bp + 0xa]
    jne short @..local.l32
    ret
@..local.l32:
    push word [bp + 0xa]
    push word [bp - 0x0002]
    mov ax, 0x8b7e
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    test ax, ax
    jne short @..local.l33
    cmp word [bp + 0x8], byte 7
    jge short @..local.l33
    push word [bp + 0xa]
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_7
    add sp, byte 8
@..local.l33:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    test ax, ax
    jne short @..local.l34
    cmp word [bp + 0x6], byte 7
    jge short @..local.l34
    push word [bp + 0xa]
    push word [bp + 0x8]
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_7
    add sp, byte 8
@..local.l34:
    cmp word [bp + 0x8], byte 0
    jle short @..local.l35
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
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    test ax, ax
    jne short @..local.l35
    push word [bp + 0xa]
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_7
    add sp, byte 8
@..local.l35:
    cmp word [bp + 0x6], byte 0
    jle short @..local.l36
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
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    test ax, ax
    jne short @..local.l36
    push word [bp + 0xa]
    push word [bp + 0x8]
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_7
    add sp, byte 8
@..local.l36:
    ret
api_idx_000c:
    mov ax, 0xfff4
    call ds_dispatch_f40b
    call loc_0140
    les bx, word [ds_data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    add ax, strict word 0x24
    adc dx, byte 0
    mov word [data_919c], dx
    mov word [data_919a], ax
    call api_idx_0002_3
    mov ax, word [bp + 0x4]
    mov word [data_830c], ax
    push ax
    mov ax, 2
    push ax
    call ds_dispatch_d5a2
    add sp, byte 4
    cmp word [data_830c], byte 0
    jge short @..local.l37
    mov word [data_830a], 7
    ret
@..local.l37:
    call loc_09cb
    mov ax, 0x10
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    mov ax, word [data_830c]
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_fedc
    add sp, byte 6
    mov word [data_905e], 5
    mov word [data_8f24], 0xffff
    mov ax, 0
    push ax
    mov ax, 0x80
    push ax
    mov ax, 0x8c7e
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [data_8d12], ax
    mov word [bp - 0x0002], 0
@..local.l38:
    mov bx, word [data_0e12]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [bp - 0x0004], ax
@..local.l39:
    cmp word [bp - 0x0004], strict word 0xf0
    jge short @..local.l41
    mov si, word [bp - 0x0004]
    mov bx, word [data_0e12]
    mov al, byte [bx + si + 0x870]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short @..local.l41
    cmp byte [bx + si + 0x5a0], 0
    jbe short @..local.l40
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
    call ds_dispatch_ec41
    add sp, byte 6
@..local.l40:
    inc word [bp - 0x0004]
    jmp short @..local.l39
@..local.l41:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x10
    jl short @..local.l38
    mov ax, 0
    push ax
    mov ax, 0x80
    push ax
    mov ax, 0x8bfe
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov ax, word [data_0e0e]
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l44
@..local.l42:
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [data_830c]
    jne short @..local.l43
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
    call ds_dispatch_ec41
    add sp, byte 6
@..local.l43:
    add word [bp - 0x000c], byte 8
    inc word [bp - 0x0002]
@..local.l44:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_5910]
    jl short @..local.l42
    mov word [data_830a], 5
    ret
api_idx_0002_8:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call ds_dispatch_f9cd
    mov cx, 0x3c
    mov bx, 0
    call ds_dispatch_f99f
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
    call ds_dispatch_f0a3
    add sp, byte 8
    ret
loc_0ea6:
    mov ax, 0
    call ds_dispatch_f40b
    les bx, word [ds_data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [data_919c]
    jl short @..local.l45
    jne short @..local.l46
    cmp ax, word [data_919a]
    ja short @..local.l46
@..local.l45:
    jmp short @..local.l50
@..local.l46:
    call api_idx_0002_2
    mov ax, 0x3c
    push ax
    call ds_dispatch_b7a9
    pop cx
    cwd
    push ax
    push dx
    cmp word [data_5b6e], byte 3
    je short @..local.l47
    cmp word [data_5b6e], byte 5
    jne short @..local.l48
@..local.l47:
    mov ax, 0x3c
    jmp short @..local.l49
@..local.l48:
    mov ax, 0
@..local.l49:
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    les bx, word [ds_data_0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    mov word [data_919c], dx
    mov word [data_919a], ax
    jmp short @..local.l51
@..local.l50:
    cmp word [bp + 0x4], byte 0
    je short @..local.l51
    mov ax, 0xa
    push ax
    call ds_dispatch_e489
    pop cx
@..local.l51:
    ret
math_loc_0f1d:
    mov ax, 0
    call ds_dispatch_f40b
    les bx, word [ds_data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [data_908a]
    sbb dx, word [data_908c]
    push ax
    push dx
    mov ax, word [data_9192]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short @..math_loc_0f1d.l1
    jne short @..math_loc_0f1d.l2
    cmp ax, cx
    jae short @..math_loc_0f1d.l2
@..math_loc_0f1d.l1:
    jmp short @..local.l52
@..math_loc_0f1d.l2:
    les bx, word [ds_data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov ax, 1
    ret
@..local.l52:
    mov ax, 0
    ret
math_loc_0f68:
    mov ax, 0
    call ds_dispatch_f40b
    call math_loc_0f1d
    test ax, ax
    je short @..local.l53
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
    call loc_676c
    mov ax, 1
    ret
@..local.l53:
    mov ax, 0
    ret
api_idx_0006_2:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    call ds_dispatch_ec17
    mov ax, word [bp + 0x4]
    cwd
    les bx, word [ds_data_0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
@..api_idx_0006_2.l1:
    les bx, word [ds_data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short @..api_idx_0006_2.l2
    jne short @..api_idx_0006_2.l3
    cmp ax, word [bp - 0x0004]
    jb short @..api_idx_0006_2.l3
@..api_idx_0006_2.l2:
    jmp short @..local.l55
@..api_idx_0006_2.l3:
    call ds_dispatch_baef
    test ax, ax
    je short @..local.l54
    ret
@..local.l54:
    call math_loc_0f68
    not ax
    push ax
    call loc_0ea6
    pop cx
    jmp short @..api_idx_0006_2.l1
@..local.l55:
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    push word [bp + 0x4]
    call ds_dispatch_fa90
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
    call ds_dispatch_fa90
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
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0x98
    push ax
    push word [bp - 0x0004]
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call ds_dispatch_e94f
    add sp, byte 6
    call ds_dispatch_ec17
    ret
api_idx_0050:
    mov ax, 0xffb0
    call ds_dispatch_f40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0050]
    push ax
    call api_idx_0008_2
    pop cx
    ret
math_loc_10b0:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short @..math_loc_10b0.l1
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, strict word 8
    push ax
    call ds_dispatch_b7e0
    pop cx
@..math_loc_10b0.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e2f], 3
    mov word [bx + 0x5c0c], 0
    mov word [bx + 0x5c10], 0
    cmp word [bp + 0x6], byte 0
    jle short @..math_loc_10b0.l2
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_dispatch_cb3a
    add sp, byte 4
    cmp word [bp + 0x6], byte 1
    jle short @..math_loc_10b0.l2
    mov ax, 8
    push ax
    call ds_dispatch_b75e
    pop cx
@..math_loc_10b0.l2:
    ret
api_idx_0002_9:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    call loc_676c
    push word [bp + 0x4]
    call api_idx_0050
    pop cx
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0002_9.l2
@..api_idx_0002_9.l1:
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    call math_loc_10b0
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0002_9.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0002_9.l1
    mov ax, word [data_905a]
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [data_830a], 8
    ret
loc_1165:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    jmp short @..local.l60
@..local.l56:
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
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    ret
@..local.l57:
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
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    ret
@..local.l58:
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call math_loc_2d94
    add sp, byte 0x0a
    ret
@..local.l59:
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call math_loc_2e0c
    add sp, byte 0x0a
    ret
@..local.l60:
    cmp ax, strict word 0
    jne short @..local.l61
    jmp near @..local.l56
@..local.l61:
    cmp ax, strict word 1
    je short @..local.l57
    cmp ax, strict word 2
    je short @..local.l58
    cmp ax, strict word 3
    je short @..local.l59
    ret
api_idx_0002_10:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_10.l1:
    mov ax, word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    sub word [bx - 0x7d0e], ax
    cmp word [bx - 0x7d0e], byte 0
    jg short @..api_idx_0002_10.l2
    mov word [bx - 0x7d0e], 0
    mov word [bx - 0x7d0c], 0
@..api_idx_0002_10.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_10.l1
    ret
loc_1240:
    mov ax, 0
    call ds_dispatch_f40b
    mov word [data_91a8], 1
    mov ax, 0
    push ax
    mov ax, 8
    push ax
    mov ax, 0x8cfe
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov word [data_82ea], 0
    mov ax, word [bp + 0x4]
    jmp short @..local.l66
@..local.l62:
    mov ax, word [bp + 0x6]
    add word [data_8f44], ax
    jmp short @..local.l67
@..local.l63:
    mov ax, word [bp + 0x6]
    add word [data_8f46], ax
    jmp short @..local.l67
@..local.l64:
    mov ax, word [bp + 0x6]
    sub word [data_8f44], ax
    jmp short @..local.l67
@..local.l65:
    mov ax, word [bp + 0x6]
    sub word [data_8f46], ax
    jmp short @..local.l67
@..local.l66:
    cmp ax, strict word 0
    je short @..local.l62
    cmp ax, strict word 1
    je short @..local.l63
    cmp ax, strict word 2
    je short @..local.l64
    cmp ax, strict word 3
    je short @..local.l65
@..local.l67:
    ret
loc_12a2:
    mov ax, 0
    call ds_dispatch_f40b
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
    mov ax, word [data_830c]
    mov word [data_8f3c], ax
    mov ax, word [data_82ee]
    mov word [data_8f30], ax
    ret
loc_12d3:
    mov ax, 0
    call ds_dispatch_f40b
    push word [bp + 0x4]
    call api_idx_0050
    pop cx
    call ds_dispatch_ec17
    push word [bp + 0x6]
    call ds_dispatch_b7e0
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
    call ds_dispatch_e8da
    add sp, byte 8
    ret
api_idx_0004:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0004.l2
@..api_idx_0004.l1:
    push word [bp - 0x0002]
    call ds_dispatch_ca85
    pop cx
    or word [bp - 0x0004], ax
    inc word [bp - 0x0002]
@..api_idx_0004.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0004.l1
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0004.l3
    jmp near @..local.l68
@..api_idx_0004.l3:
    mov ax, 3
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0004.l4
    mov word [data_8f3e], 0xa
    mov word [data_8f42], 7
    mov word [data_8f40], 2
@..api_idx_0004.l4:
    mov ax, 4
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [data_82ee], ax
    mov bx, word [data_0e14]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    add ax, word [data_8f42]
    mov word [data_8f46], ax
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    add ax, word [data_8f40]
    mov word [data_8f44], ax
    push ax
    push word [data_8f46]
    mov ax, data_8f3e
    push ax
    mov ax, data_8f40
    push ax
    mov ax, data_8f42
    push ax
    call api_idx_0004_6
    add sp, byte 0x0a
    mov word [data_91aa], 1
    mov word [data_91a8], 1
    call loc_12a2
    mov ax, 1
    ret
@..local.l68:
    mov ax, 0
    ret
math_loc_13c0:
    mov ax, 0
    call ds_dispatch_f40b
    mov word [data_919e], 0
    mov ax, word [data_830c]
    cmp ax, word [data_8f28]
    jne short @..math_loc_13c0.l1
    mov ax, word [data_8f3e]
    cmp ax, word [data_8f2a]
    jne short @..math_loc_13c0.l1
    mov ax, word [data_8f42]
    cmp ax, word [data_8f2e]
    jne short @..math_loc_13c0.l1
    mov ax, word [data_8f40]
    cmp ax, word [data_8f2c]
    jne short @..math_loc_13c0.l1
    mov word [data_919e], 1
@..math_loc_13c0.l1:
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    cmp word [data_919e], byte 0
    je short @..local.l69
    mov ax, word [data_8f3e]
    mov word [data_8f2a], ax
    mov ax, word [data_8f42]
    mov word [data_8f2e], ax
    mov ax, word [data_8f40]
    mov word [data_8f2c], ax
    ret
@..local.l69:
    call loc_676c
    mov word [bp - 0x0002], 0
    jmp near @..local.l75
@..local.l70:
    push word [bp - 0x0002]
    call ds_dispatch_ca85
    pop cx
    test ax, ax
    jne short @..local.l72
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short @..local.l71
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
    call api_idx_0050_2
    add sp, byte 6
@..local.l71:
    jmp near @..local.l74
@..local.l72:
    mov ax, 4
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    add ax, strict word 7
    mov cx, ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d76]
    sub ah, ah
    cwd
    idiv cx
    mov cx, ax
    inc ax
    mov cx, ax
    mov ax, word [bx + 0x5c12]
    cwd
    idiv cx
    push ax
    mov ax, word [bx + 0x5c12]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    sub word [bx + 0x5c10], ax
    cmp word [bx + 0x5c10], byte 0
    jg short @..local.l73
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
    call api_idx_0050_2
    add sp, byte 6
    jmp short @..local.l74
@..local.l73:
    mov ax, 3
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    call math_loc_6fbf
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_cb3a
    add sp, byte 4
@..local.l74:
    inc word [bp - 0x0002]
@..local.l75:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jge short @..local.l76
    jmp near @..local.l70
@..local.l76:
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    push ax
    mov ax, word [data_0e14]
    add ax, 0x9b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_3.l3
    mov ax, word [data_830c]
    jmp short @..api_idx_0004_3.l2
    cmp word [data_8f3e], byte 0x0c
    jle short @..api_idx_0004_3.l1
    mov word [bp - 0x0004], 1
@..api_idx_0004_3.l1:
    jmp short @..api_idx_0004_3.l3
    mov word [bp - 0x0004], 1
    jmp short @..api_idx_0004_3.l3
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
    db 0x65
@..api_idx_0004_3.l2:
    db 0x2d, 0x0f
    db 0x00
    cmp ax, strict word 0x10
    jae short @..api_idx_0004_3.l3
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x659d]
@..api_idx_0004_3.l3:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_3.l7
    mov ax, word [data_830c]
    jmp short @..api_idx_0004_3.l6
@..api_idx_0004_3.l4:
    mov word [bp - 0x0004], 1
    jmp short @..api_idx_0004_3.l7
@..api_idx_0004_3.l5:
    mov word [bp - 0x0004], 2
    jmp short @..api_idx_0004_3.l7
@..api_idx_0004_3.l6:
    cmp ax, strict word 8
    je short @..api_idx_0004_3.l4
    cmp ax, strict word 9
    je short @..api_idx_0004_3.l4
    cmp ax, strict word 0xa
    je short @..api_idx_0004_3.l4
    cmp ax, strict word 0xb
    je short @..api_idx_0004_3.l4
    cmp ax, strict word 0xc
    je short @..api_idx_0004_3.l4
    cmp ax, strict word 0x1b
    je short @..api_idx_0004_3.l5
@..api_idx_0004_3.l7:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x930
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_3.l14
    mov ax, word [data_830c]
    jmp short @..api_idx_0004_3.l13
@..api_idx_0004_3.l8:
    mov word [bp - 0x0004], 3
    jmp short @..api_idx_0004_3.l14
@..api_idx_0004_3.l9:
    jmp short @..api_idx_0004_3.l14
@..api_idx_0004_3.l10:
    mov word [bp - 0x0004], 1
    jmp short @..api_idx_0004_3.l14
@..api_idx_0004_3.l11:
    mov word [bp - 0x0004], 2
    jmp short @..api_idx_0004_3.l14
@..api_idx_0004_3.l12:
    mov word [bp - 0x0004], 4
    jmp short @..api_idx_0004_3.l14
@..api_idx_0004_3.l13:
    cmp ax, strict word 0
    je short @..api_idx_0004_3.l8
    cmp ax, strict word 0xa
    je short @..api_idx_0004_3.l9
    cmp ax, strict word 0xe
    je short @..api_idx_0004_3.l10
    cmp ax, strict word 0x13
    je short @..api_idx_0004_3.l10
    cmp ax, strict word 0x17
    je short @..api_idx_0004_3.l11
    cmp ax, strict word 0x19
    je short @..api_idx_0004_3.l9
    cmp ax, strict word 0x1f
    je short @..api_idx_0004_3.l10
    jmp short @..api_idx_0004_3.l12
@..api_idx_0004_3.l14:
    mov ax, word [bp - 0x0004]
    ret
api_idx_000e:
    mov ax, 0xfff2
    call ds_dispatch_f40b
    call math_loc_13c0
    call loc_12a2
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x0002], ax
    mov word [data_91aa], 1
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    push word [bp - 0x0002]
    call loc_2f55
    add sp, byte 6
    cmp word [bp - 0x000a], byte 1
    je short @..api_idx_000e.l1
    cmp word [bp - 0x000a], byte 2
    jne short @..api_idx_000e.l2
@..api_idx_000e.l1:
    mov ax, word [bp - 0x000c]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_000e.l2
    mov word [data_91aa], 0
@..api_idx_000e.l2:
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call loc_1240
    add sp, byte 4
    push word [data_8f44]
    push word [data_8f46]
    mov ax, data_8f3e
    push ax
    mov ax, data_8f40
    push ax
    mov ax, data_8f42
    push ax
    call api_idx_0004_6
    add sp, byte 0x0a
    test ax, ax
    je short @..local.l77
    mov ax, 4
    push ax
    mov ax, 0x7e6
    push ax
    call api_idx_0002_9
    add sp, byte 4
    mov ax, 1
    ret
@..local.l77:
    cmp word [data_919e], byte 0
    jne short @..local.l78
    call math_loc_13c0
@..local.l78:
    call api_idx_0004_3
    jmp near @..local.l87
@..local.l79:
    call api_idx_0004_2
    jmp near @..local.l91
@..local.l80:
    mov ax, 4
    push ax
    mov ax, 0x809
    push ax
    call api_idx_0002_9
    add sp, byte 4
    mov ax, 1
    ret
@..local.l81:
    mov word [bp - 0x000e], 0
    jmp near @..local.l84
@..local.l82:
    mov ax, 0x248
    imul word [bp - 0x000e]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short @..local.l83
    cmp byte [bx + 0x5d83], 0
    jne short @..local.l83
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x000e]
    mov bx, ax
    mov al, byte [bx + 0x5da5]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jle short @..local.l83
    mov ax, 0xfa
    push ax
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x000e]
    mov bx, ax
    mov al, byte [bx + 0x5d5c]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, strict word 5
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x000e]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
    mov ax, 1
    push ax
    push word [bp - 0x000e]
    call ds_dispatch_cb3a
    add sp, byte 4
@..local.l83:
    inc word [bp - 0x000e]
@..local.l84:
    mov ax, word [bp - 0x000e]
    cmp ax, word [data_69c8]
    jge short @..local.l85
    jmp near @..local.l82
@..local.l85:
    jmp short @..local.l91
@..local.l86:
    mov ax, 4
    push ax
    mov ax, 0x7e6
    push ax
    call api_idx_0002_9
    add sp, byte 4
    mov ax, 1
    ret
@..local.l87:
    cmp ax, strict word 1
    jne short @..local.l88
    jmp near @..local.l79
@..local.l88:
    cmp ax, strict word 2
    jne short @..local.l89
    jmp near @..local.l80
@..local.l89:
    cmp ax, strict word 3
    jne short @..local.l90
    jmp near @..local.l81
@..local.l90:
    cmp ax, strict word 4
    je short @..local.l86
@..local.l91:
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x8afe
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [data_8d12], ax
    mov ax, 0
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [data_91ac], 0x7e4
    mov ax, word [data_82ee]
    add ax, word [bp + 0x4]
    add ax, strict word 4
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0004], dx
    push word [data_8f44]
    push word [data_8f46]
    push word [data_8f40]
    push word [data_8f42]
    push word [data_8f3e]
    push dx
    call loc_1165
    add sp, byte 0x0c
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7302]
    jmp near @..local.l105
@..api_idx_0004_4.l1:
    cmp word [bp - 0x0002], byte 2
    jl short @..api_idx_0004_4.l2
    cmp word [bp - 0x0002], byte 5
    jne short @..local.l93
@..api_idx_0004_4.l2:
    push word [bp - 0x0004]
    call api_idx_000e
    pop cx
    test ax, ax
    je short @..local.l92
    ret
@..local.l92:
    jmp short @..local.l94
@..local.l93:
    cmp word [bp - 0x0002], byte 3
    jne short @..local.l94
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_82ee]
    jne short @..local.l94
    mov ax, 0xf
    push ax
    call ds_dispatch_d7aa
    pop cx
    mov ax, 1
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov word [data_831a], 1
    call loc_676c
    mov ax, 0x10
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, 0x10
    push ax
    call ds_dispatch_d6c6
    pop cx
    mov word [data_598e], 0xffff
    mov ax, 2
    push ax
    call ds_dispatch_b75e
    pop cx
    mov word [data_831a], 2
    call loc_676c
    mov ax, 2
    push ax
    call ds_dispatch_b75e
    pop cx
    mov word [data_831a], 0
    push word [bp - 0x0004]
    call api_idx_000e
    pop cx
    test ax, ax
    je short @..local.l94
    ret
@..local.l94:
    cmp word [data_91a8], byte 0
    jne short @..local.l96
    mov ax, 2
    push ax
    mov ax, 0
    cmp word [data_91ac], strict word 0x7e4
    jne short @..local.l95
    mov ax, 2
@..local.l95:
    push ax
    push word [data_91ac]
    call loc_12d3
    add sp, byte 6
@..local.l96:
    jmp near @..local.l107
@..local.l97:
    cmp word [bp - 0x0002], byte 6
    je short @..local.l98
    cmp word [bp - 0x0002], byte 3
    jne short @..local.l99
@..local.l98:
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_82ee]
    jne short @..local.l99
    mov ax, word [data_905a]
    mov cx, 2
    cwd
    idiv cx
    push ax
    push cx
    mov ax, 0x7e5
    push ax
    call loc_12d3
    add sp, byte 6
    jmp short @..local.l100
@..local.l99:
    mov ax, 2
    push ax
    push ax
    push word [data_91ac]
    call loc_12d3
    add sp, byte 6
@..local.l100:
    jmp short @..local.l107
@..local.l101:
    cmp word [bp - 0x0002], byte 2
    jne short @..local.l103
    push word [bp - 0x0004]
    call api_idx_000e
    pop cx
    test ax, ax
    je short @..local.l102
    ret
@..local.l102:
    jmp short @..local.l104
@..local.l103:
    mov ax, 2
    push ax
    push ax
    push word [data_91ac]
    call loc_12d3
    add sp, byte 6
@..local.l104:
    jmp short @..local.l107
@..local.l105:
    cmp ax, strict word 0
    jne short @..local.l106
    jmp near @..api_idx_0004_4.l1
@..local.l106:
    cmp ax, strict word 1
    je short @..local.l97
    cmp ax, strict word 2
    je short @..local.l97
    cmp ax, strict word 3
    je short @..local.l101
@..local.l107:
    ret
api_idx_000a:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short @..api_idx_000a.l1
    jmp near @..local.l118
@..api_idx_000a.l1:
    cmp byte [bx + 0x5d60], 0
    ja short @..api_idx_000a.l2
    jmp near @..api_idx_000a.l11
@..api_idx_000a.l2:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    je short @..api_idx_000a.l3
    jmp near @..api_idx_000a.l8
@..api_idx_000a.l3:
    mov ax, 6
    push ax
    call ds_dispatch_b7a9
    pop cx
    jmp short @..api_idx_000a.l4
    mov word [bp - 0x0008], 3
    jmp short @..api_idx_000a.l5
    mov word [bp - 0x0008], 4
    jmp short @..api_idx_000a.l5
    mov word [bp - 0x0008], 5
    jmp short @..api_idx_000a.l5
    mov word [bp - 0x0008], 7
    jmp short @..api_idx_000a.l5
    mov word [bp - 0x0008], 8
    jmp short @..api_idx_000a.l5
    mov word [bp - 0x0008], 9
    jmp short @..api_idx_000a.l5
    fisubr word [bx + di - 0x001b]
    imul bp, sp, 0xf369
    imul di, dx, 0x169
    db 0x6a
@..api_idx_000a.l4:
    db 0x3d
    push es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6a08]
@..api_idx_000a.l5:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0008]
    mov bx, ax
    mov byte [bx + 0x5d5a], 0xff
    cmp word [bp - 0x0008], byte 5
    jne short @..api_idx_000a.l6
    mov ax, 2
    push ax
    call ds_dispatch_b7a9
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
@..api_idx_000a.l6:
    mov ax, 7
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x000a], ax
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..api_idx_000a.l7
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x000a]
    mov bx, ax
    cmp byte [bx + 0x5d64], 1
    jbe short @..api_idx_000a.l7
    dec byte [bx + 0x5d64]
@..api_idx_000a.l7:
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..api_idx_000a.l8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c0e], byte 2
    jle short @..api_idx_000a.l8
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    sub word [bx + 0x5c0e], ax
@..api_idx_000a.l8:
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
    jle short @..api_idx_000a.l9
    mov ax, word [bx + 0x5c0e]
    mov word [bx + 0x5c0c], ax
@..api_idx_000a.l9:
    cmp word [bx + 0x5c0c], byte 0
    jg short @..api_idx_000a.l10
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_10b0
    add sp, byte 4
@..api_idx_000a.l10:
    jmp near @..local.l117
@..api_idx_000a.l11:
    push word [bp + 0x6]
    call ds_dispatch_b7a9
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
    jle short @..api_idx_000a.l12
    mov ax, word [bx + 0x5c0e]
    mov word [bx + 0x5c0c], ax
@..api_idx_000a.l12:
    cmp word [bx + 0x5c0c], byte 0
    jg short @..api_idx_000a.l13
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_10b0
    add sp, byte 4
    jmp near @..local.l117
@..api_idx_000a.l13:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c10], byte 0
    jg short @..local.l108
    mov word [bx + 0x5c10], 0
    mov ax, 6
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
@..local.l108:
    cmp word [bp + 0x8], byte 0
    jle short @..local.l109
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    mov cx, word [bp + 0x8]
    mov bx, cx
    imul bx
    mov cx, 0x64
    mov bx, 0
    call ds_dispatch_f99f
    mov word [bp - 0x0006], ax
    mov cx, 2
    cwd
    idiv cx
    push ax
    call ds_dispatch_b7a9
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
    jle short @..local.l109
    mov ax, word [bx + 0x5c12]
    mov word [bx + 0x5c10], ax
@..local.l109:
    mov word [bp - 0x0004], 0
@..local.l110:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short @..local.l112
    cmp ax, 0xff
    je short @..local.l112
    mov ax, word [bp + 0xa]
    sub word [bp - 0x0006], ax
    cmp word [bp - 0x0006], byte 0
    jge short @..local.l111
    mov word [bp - 0x0006], 0
@..local.l111:
    mov al, byte [bp - 0x0006]
    mov byte [bx + 0x5d5a], al
@..local.l112:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short @..local.l110
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5f], 0
    je short @..local.l113
    cmp byte [bx + 0x5e32], 0
    jne short @..local.l114
@..local.l113:
    mov byte [bx + 0x5d5f], 0
    mov byte [bx + 0x5e32], 0
@..local.l114:
    cmp word [bp + 0xc], byte 0
    jle short @..local.l117
    mov word [bp - 0x0004], 0
@..local.l115:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d54]
    sub ah, ah
    inc ax
    push ax
    call ds_dispatch_b7a9
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
    jle short @..local.l116
    mov ax, word [bx + 0x5c1e]
    mov word [bx + 0x5c1c], ax
@..local.l116:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jl short @..local.l115
@..local.l117:
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_dispatch_cb3a
    add sp, byte 4
@..local.l118:
    ret
api_idx_0018:
    mov ax, 0xffe8
    call ds_dispatch_f40b
    call loc_0140
    call ds_dispatch_d9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..api_idx_0018.l1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_d7e7
    add sp, byte 4
    mov ax, word [data_010e]
    mov word [data_844e], ax
    mov ax, 0
    push ax
    push word [data_844e]
    push ax
    call ds_dispatch_d964
    add sp, byte 6
    mov word [data_844c], ax
@..api_idx_0018.l1:
    mov ax, 0x7f4
    push ax
    call api_idx_0050
    pop cx
    mov word [data_91ae], 0
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    sub ax, word [data_8f18]
    sbb dx, word [api_idx_0002_20]
    add word [data_8f14], ax
    adc word [data_8f16], dx
    mov ax, word [data_8f14]
    mov dx, word [data_8f16]
    mov cx, 0x3c
    mov bx, 0
    call ds_dispatch_f99f
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000e], 0
@..api_idx_0018.l2:
    cmp word [bp - 0x000c], byte 4
    jl short @..api_idx_0018.l3
    inc word [bp - 0x000e]
    add word [bp - 0x000c], byte 0xfc
    add word [data_8f14], strict word 0xff10
    adc word [data_8f16], byte 0xff
    jmp short @..api_idx_0018.l2
@..api_idx_0018.l3:
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov word [api_idx_0002_20], dx
    mov word [data_8f18], ax
    cmp word [data_8450], byte 0
    jne short @..api_idx_0018.l4
    mov ax, 0x30
    jmp short @..api_idx_0018.l5
@..api_idx_0018.l4:
    mov ax, 0
@..api_idx_0018.l5:
    mov word [bp - 0x0012], ax
    mov word [bp - 0x0008], 0
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0016], 0
    cmp word [data_830c], byte 0
    jne short @..api_idx_0018.l6
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x0018], ax
    push ax
    mov ax, word [data_0e14]
    add ax, 0x930
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    mov word [bp - 0x0014], ax
@..api_idx_0018.l6:
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp - 0x0012]
    jl short @..api_idx_0018.l7
    call ds_dispatch_ef83
    test ax, ax
    jne short @..api_idx_0018.l7
    jmp near @..local.l130
@..api_idx_0018.l7:
    cmp word [data_91ae], byte 0
    je short @..api_idx_0018.l8
    jmp near @..local.l130
@..api_idx_0018.l8:
    cmp word [data_830a], byte 5
    je short @..api_idx_0018.l9
    jmp near @..local.l130
@..api_idx_0018.l9:
    call math_loc_0f68
    test ax, ax
    jne short @..api_idx_0018.l10
    jmp short @..api_idx_0018.l9
@..api_idx_0018.l10:
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0018.l12
@..api_idx_0018.l11:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov byte [bx + 0x5d5c], 0xa
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_cb3a
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0018.l12:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0018.l11
    cmp word [bp - 0x0014], byte 0
    je short @..api_idx_0018.l13
    cmp word [bp - 0x0016], byte 0
    jne short @..api_idx_0018.l13
    mov word [bp - 0x0016], 1
    call api_idx_0004
    test ax, ax
    je short @..api_idx_0018.l13
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [data_8d12], ax
@..api_idx_0018.l13:
    call ds_dispatch_baef
    test ax, ax
    je short @..api_idx_0018.l14
    mov word [data_91ae], 1
@..api_idx_0018.l14:
    call math_loc_0f68
    test ax, ax
    jne short @..api_idx_0018.l15
    mov ax, 0xa
    push ax
    call ds_dispatch_e489
    pop cx
@..api_idx_0018.l15:
    cmp word [bp - 0x0014], byte 0
    je short @..api_idx_0018.l16
    mov word [data_91ae], 0
@..api_idx_0018.l16:
    cmp word [data_91ae], byte 0
    je short @..api_idx_0018.l17
    jmp near @..local.l129
@..api_idx_0018.l17:
    inc word [bp - 0x0008]
    add word [data_8f1c], byte 0x0a
    adc word [data_8f1e], byte 0
    call api_idx_0002_8
    mov ax, 0xa
    push ax
    call api_idx_0002_10
    pop cx
    cmp word [bp - 0x0008], byte 0x18
    jne short @..api_idx_0018.l18
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov bx, word [bp - 0x0002]
    mov byte [bx + 0x5990], al
@..api_idx_0018.l18:
    mov word [bp - 0x0002], 0
    jmp near @..local.l125
@..api_idx_0018.l19:
    mov ax, word [bp - 0x0008]
    mov cx, 6
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..api_idx_0018.l20
    mov ax, 1
    jmp short @..local.l119
@..api_idx_0018.l20:
    mov ax, 0
@..local.l119:
    push ax
    mov ax, 1
    push ax
    test dx, dx
    jne short @..local.l120
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e35]
    sub ah, ah
    jmp short @..local.l121
@..local.l120:
    mov ax, 0
@..local.l121:
    push ax
    mov ax, word [bp - 0x0008]
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..local.l122
    cmp word [bp - 0x000e], byte 0
    jle short @..local.l122
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e34]
    sub ah, ah
    inc ax
    jmp short @..local.l123
@..local.l122:
    mov ax, 0
@..local.l123:
    push ax
    push word [bp - 0x0002]
    call api_idx_000a
    add sp, byte 0x0a
    mov ax, 5
    push ax
    call ds_dispatch_b7a9
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
    jne short @..local.l124
    cmp byte [bx + 0x5e32], 0
    jbe short @..local.l124
    dec byte [bx + 0x5e32]
@..local.l124:
    inc word [bp - 0x0002]
@..local.l125:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jge short @..local.l126
    jmp near @..api_idx_0018.l19
@..local.l126:
    push word [data_69c8]
    call ds_dispatch_b7a9
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
    jne short @..local.l129
    call api_idx_0032
    dec word [bp - 0x000e]
    mov ax, 0x3cf
    cmp byte [data_5988], 1
    jne short @..local.l127
    mov ax, 0x3de
@..local.l127:
    mov word [bp - 0x0010], ax
    cmp word [data_91b0], byte 0
    jne short @..local.l129
    cmp word [bp - 0x0014], byte 0
    jne short @..local.l129
    mov ax, 0x3e8
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x0010]
    cmp cx, ax
    jl short @..local.l129
    cmp word [data_8450], byte 0
    je short @..local.l128
    call ds_dispatch_ef90
    mov ax, 0
    push ax
    call ds_dispatch_d907
    pop cx
@..local.l128:
    mov ax, 1
    ret
@..local.l129:
    jmp near @..api_idx_0018.l6
@..local.l130:
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 2
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l134
@..local.l131:
    cmp word [bp - 0x0004], byte 0
    je short @..local.l132
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    add word [bx + 0x5bfc], byte 1
    adc word [bx + 0x5bfe], byte 0
@..local.l132:
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
    jle short @..local.l133
    mov byte [bx + 0x5d5c], 0
@..local.l133:
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_cb3a
    add sp, byte 4
    inc word [bp - 0x0002]
@..local.l134:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..local.l131
    call math_loc_0f68
    cmp word [data_8450], byte 0
    je short @..local.l135
    push word [data_844c]
    push word [data_844e]
    call ds_dispatch_d91b
    add sp, byte 4
    mov ax, 0
    push ax
    call ds_dispatch_d907
    pop cx
@..local.l135:
    call loc_0344
    mov ax, 0
    ret
api_idx_0010:
    mov ax, 0xfff0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x126]
    push word [bx + 0x124]
    push word [bx + 0x122]
    push word [bx + 0x120]
    call ds_dispatch_e928
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
    call ds_dispatch_efd1
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x000e]
    push word [bp - 0x0010]
    call ds_dispatch_e94f
    add sp, byte 6
    ret
api_idx_0006_3:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov ax, word [data_0e0e]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l137
@..api_idx_0006_3.l1:
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [data_830c]
    jne short @..local.l136
    mov ax, word [data_8f3e]
    xchg al, ah
    sub al, al
    mov dx, word [data_8f42]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [data_8f40]
    mov word [bp - 0x0004], ax
    cmp ax, word [bx + 0x2]
    jne short @..local.l136
    mov ax, bx
    ret
@..local.l136:
    add word [bp - 0x0006], byte 8
    inc word [bp - 0x0002]
@..local.l137:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_5910]
    jl short @..api_idx_0006_3.l1
    mov ax, 0
    ret
api_idx_0006_4:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    call api_idx_0006_3
    mov word [bp - 0x0002], ax
    test ax, ax
    je short @..local.l138
    mov ax, 0
    push ax
    push word [data_8d08]
    push word [data_8d06]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 4
    push ax
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x7]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    ret
@..local.l138:
    mov ax, 0
    push ax
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    push ax
    mov ax, 0x8bfe
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 0
    push ax
    push word [data_8d08]
    push word [data_8d06]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    ret
loc_21e3:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0x64
    push ax
    call ds_dispatch_e489
    pop cx
    push word [bp + 0x4]
    call api_idx_0050
    pop cx
    mov word [data_91b2], 1
    ret
api_idx_0022:
    mov ax, 0xffde
    call ds_dispatch_f40b
    cmp word [data_8d12], byte 0
    jl short @..api_idx_0022.l1
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    cmp ax, word [data_8d12]
    jle short @..api_idx_0022.l1
    mov word [data_8d12], ax
@..api_idx_0022.l1:
    cmp word [data_905e], byte 0x17
    je short @..api_idx_0022.l2
    mov ax, 0
    push ax
    push word [data_8f40]
    push word [data_8f42]
    push word [data_8f3e]
    call api_idx_0002_7
    add sp, byte 8
@..api_idx_0022.l2:
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0022.l4
@..api_idx_0022.l3:
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_cb3a
    add sp, byte 4
    inc word [bp - 0x0004]
@..api_idx_0022.l4:
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0022.l3
    mov word [data_91aa], 1
    mov word [data_91a8], 1
    mov word [data_82e8], 0
    mov word [data_82ec], 0
    mov word [data_831a], 0
    call api_idx_0002_8
    mov word [data_905e], 5
    mov word [data_830a], 5
    mov word [data_91b2], 1
    mov word [data_91b4], 1
    mov word [data_91b0], 0
@..api_idx_0022.l5:
    cmp word [data_91aa], byte 1
    jne short @..api_idx_0022.l6
    call loc_676c
@..api_idx_0022.l6:
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x000a], ax
    push ax
    mov ax, 0x8bfe
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0022.l7
    call api_idx_0006_4
    mov word [data_91b4], ax
    jmp short @..api_idx_0022.l8
@..api_idx_0022.l7:
    cmp word [data_91b4], byte 0
    je short @..api_idx_0022.l8
    mov word [data_91b4], 0
    mov ax, 0
    push ax
    push word [data_8d08]
    push word [data_8d06]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..api_idx_0022.l8:
    add word [data_8f1c], byte 1
    adc word [data_8f1e], byte 0
    call api_idx_0002_8
    mov ax, word [data_9198]
    jmp short @..api_idx_0022.l12
@..api_idx_0022.l9:
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
    jmp short @..api_idx_0022.l13
@..api_idx_0022.l10:
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0x1c
    push ax
    mov ax, 0
    push ax
    mov ax, api_idx_0002
    push ax
    call api_idx_0008
    add sp, byte 0x0c
    jmp short @..api_idx_0022.l13
@..api_idx_0022.l11:
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
    jmp short @..api_idx_0022.l13
@..api_idx_0022.l12:
    cmp ax, strict word 1
    je short @..api_idx_0022.l9
    cmp ax, strict word 2
    je short @..api_idx_0022.l10
    cmp ax, strict word 3
    je short @..api_idx_0022.l11
@..api_idx_0022.l13:
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0x3c
    mov bx, 0
    call ds_dispatch_f9cd
    or dx, ax
    jne short @..api_idx_0022.l14
    call api_idx_0032
@..api_idx_0022.l14:
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0xf0
    mov bx, 0
    call ds_dispatch_f9cd
    or dx, ax
    jne short @..api_idx_0022.l15
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x5990], al
@..api_idx_0022.l15:
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0xa
    mov bx, 0
    call ds_dispatch_f9cd
    cmp dx, byte 0
    jne short @..api_idx_0022.l16
    cmp ax, strict word 5
@..api_idx_0022.l16:
    je short @..api_idx_0022.l17
    jmp near @..local.l146
@..api_idx_0022.l17:
    mov word [bp - 0x0004], 0
    jmp near @..local.l145
@..api_idx_0022.l18:
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short @..local.l139
    jmp near @..local.l144
@..local.l139:
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0x3c
    mov bx, 0
    call ds_dispatch_f9cd
    mov cx, 0xa
    mov bx, 0
    call ds_dispatch_f99f
    push ax
    push dx
    mov ax, word [bp - 0x0004]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jne short @..local.l140
    cmp ax, cx
@..local.l140:
    jne short @..local.l141
    mov ax, 1
    jmp short @..local.l142
@..local.l141:
    mov ax, 0
@..local.l142:
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0012], byte 0
    je short @..local.l143
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5e33]
    sub ah, ah
    inc ax
    sub word [bx + 0x5c10], ax
    cmp word [bx + 0x5c10], byte 0
    jge short @..local.l143
    mov word [bx + 0x5c10], 0
@..local.l143:
    push word [bp - 0x0012]
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0004]
    call api_idx_000a
    add sp, byte 0x0a
@..local.l144:
    inc word [bp - 0x0004]
@..local.l145:
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_69c8]
    jge short @..local.l146
    jmp near @..api_idx_0022.l18
@..local.l146:
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0004], 0
    jmp short @..local.l150
@..local.l147:
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short @..local.l149
    inc word [bp - 0x0016]
    cmp byte [bx + 0x5d5c], 0
    ja short @..local.l148
    cmp byte [bx + 0x5d5d], 0
    jbe short @..local.l149
@..local.l148:
    inc word [bp - 0x0018]
@..local.l149:
    inc word [bp - 0x0004]
@..local.l150:
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_69c8]
    jl short @..local.l147
    cmp word [bp - 0x0016], byte 0
    jne short @..local.l151
    mov word [data_830a], 8
    ret
@..local.l151:
    mov ax, word [bp - 0x0018]
    cmp ax, word [bp - 0x0016]
    jne short @..local.l152
    call api_idx_0018
    cmp ax, strict word 1
    jne short @..local.l152
    push word [data_8f3e]
    call api_idx_0002_6
    pop cx
    push ax
    call api_idx_0006
    pop cx
    mov bx, word [data_100a]
    mov word [bx], ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    call math_loc_0b14
    add sp, byte 6
    ret
@..local.l152:
    mov ax, word [bp - 0x0018]
    cmp ax, word [bp - 0x0016]
    jne short @..local.l153
    jmp near @..local.l146
@..local.l153:
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x000a], ax
    push ax
    mov ax, 0x8b7e
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l154
    push word [data_8f3e]
    call api_idx_0002_6
    pop cx
    push ax
    call api_idx_0006
    pop cx
    mov bx, word [data_100a]
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
@..local.l154:
    push word [bp - 0x000a]
    mov ax, 0x8c7e
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l155
    cmp word [data_91a8], byte 1
    jne short @..local.l155
    call loc_8867
    cmp word [data_830a], byte 5
    je short @..local.l155
    ret
@..local.l155:
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0x1e
    mov bx, 0
    call ds_dispatch_f9cd
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0x16
    jge short @..local.l157
    mov cx, 0x26
    imul cx
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jle short @..local.l157
    cmp byte [bx - 0x7b16], 1
    je short @..local.l157
    mov al, byte [bx - 0x7b14]
    sub ah, ah
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7687]
    cbw
    cmp ax, word [data_830c]
    jne short @..local.l157
    mov ax, word [bp - 0x0008]
    imul cx
    mov bx, ax
    mov al, byte [bx - 0x7b13]
    sub ah, ah
    cmp ax, word [data_8f3e]
    jne short @..local.l157
    mov ax, word [bp - 0x0008]
    mov bx, word [data_100a]
    mov word [bx], ax
    mov ax, 0
    cmp word [bp - 0x0008], byte 0x13
    je short @..local.l156
    mov ax, 1
@..local.l156:
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call math_loc_0b14
    add sp, byte 6
    mov word [data_830a], 0x12
    ret
@..local.l157:
    mov ax, 0x3e8
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, 0x3e3
    jl short @..local.l158
    push word [data_8f3e]
    call api_idx_0002_6
    pop cx
    push ax
    call api_idx_0006
    pop cx
    mov bx, word [data_100a]
    mov word [bx], ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    call math_loc_0b14
    add sp, byte 6
    ret
@..local.l158:
    mov word [data_91aa], 0
    mov word [data_91a8], 0
    mov word [bp - 0x0022], 0
    call math_loc_13c0
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x000a], ax
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    mov ax, 0x8afe
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    call api_idx_0004_3
    mov word [bp - 0x0010], ax
    cmp ax, strict word 1
    jne short @..local.l161
    cmp word [data_919e], byte 0
    je short @..local.l159
    mov ax, 0x80e
    push ax
    call loc_21e3
    pop cx
    jmp short @..local.l160
@..local.l159:
    mov ax, 0x80c
    push ax
    call loc_21e3
    pop cx
    mov word [bp - 0x0022], 1
@..local.l160:
    jmp short @..local.l163
@..local.l161:
    cmp word [bp - 0x0010], byte 3
    jne short @..local.l162
    mov ax, 0x80b
    push ax
    call loc_21e3
    pop cx
    jmp short @..local.l163
@..local.l162:
    cmp word [data_91b2], byte 1
    jne short @..local.l163
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [data_91b2], 0
@..local.l163:
    mov word [bp - 0x0004], 0
@..local.l164:
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jl short @..local.l164
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0xc3
    push ax
    mov ax, 0x57
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x41
    push ax
    mov ax, 8
    push ax
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov word [bp - 0x0004], 0
@..local.l165:
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jge short @..local.l166
    jmp near @..local.l165
@..local.l166:
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
    mov word [bp - 0x001c], 0
    lea ax, word [bp - 0x0020]
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    push word [bp - 0x000a]
    call loc_2f55
    add sp, byte 6
    cmp word [bp - 0x001e], byte 0
    jg short @..local.l167
    jmp near @..local.l175
@..local.l167:
    cmp word [bp - 0x001e], byte 0x0e
    jne short @..local.l168
    mov ax, 0
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0x8d
    push ax
    mov ax, 0xb6
    push ax
    mov ax, data_0076
    push ax
    mov ax, 0x8a
    push ax
    mov ax, 0x19
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov word [bp - 0x001c], 3
    jmp near @..local.l175
@..local.l168:
    cmp word [bp - 0x001e], byte 8
    je short @..local.l169
    cmp word [bp - 0x001e], byte 9
    jne short @..local.l172
@..local.l169:
    mov ax, word [data_82ee]
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
    jne short @..local.l172
    cmp word [bp - 0x001e], byte 8
    jne short @..local.l170
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov word [bp - 0x001c], 1
    jmp short @..local.l171
@..local.l170:
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov word [bp - 0x001c], 2
@..local.l171:
    jmp near @..local.l175
@..local.l172:
    mov ax, word [data_82ee]
    cmp ax, word [bp - 0x0020]
    je short @..local.l173
    jmp near @..local.l175
@..local.l173:
    mov ax, word [bp - 0x001e]
    jmp near @..local.l174

    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x46, 0x00, 0x50, 0xb8, 0x5f, 0x00, 0x50, 0xb8, 0xbc, 0x00, 0x50
    db 0xb8, 0x36, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x19, 0x00, 0x50, 0xe8, 0xda, 0x90, 0x83
    db 0xc4, 0x0e, 0xe9, 0x8a, 0x00, 0x83, 0x3e, 0x6e, 0x5b, 0x01, 0x75, 0x21, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0xb8, 0x47, 0x00, 0x50, 0xb8, 0xa2, 0x00, 0x50, 0xb8, 0x41, 0x00, 0x50, 0xb8, 0x9c, 0x00
    db 0x50, 0xb8, 0x19, 0x00, 0x50, 0xe8, 0xb1, 0x90, 0x83, 0xc4, 0x0e, 0xeb, 0x1f, 0xb8, 0x00, 0x00
    db 0x50, 0x50, 0xb8, 0x41, 0x00, 0x50, 0xb8, 0xa2, 0x00, 0x50, 0xb8, 0x3b, 0x00, 0x50, 0xb8, 0x9c
    db 0x00, 0x50, 0xb8, 0x19, 0x00, 0x50, 0xe8, 0x90, 0x90, 0x83, 0xc4, 0x0e, 0xeb, 0x41, 0xb8, 0x00
    db 0x00, 0x50, 0x50, 0xb8, 0x4d, 0x00, 0x50, 0xb8, 0xa4, 0x00, 0x50, 0xb8, 0x3b, 0x00, 0x50, 0xb8
    db 0x9a, 0x00, 0x50, 0xb8, 0x19, 0x00, 0x50, 0xe8, 0x6f, 0x90, 0x83, 0xc4, 0x0e, 0xeb, 0x20, 0xf4
    db 0x79, 0x19, 0x7a, 0x19, 0x7a, 0xa3, 0x7a, 0xa3, 0x7a, 0xa3
    db 'zbzbz'

@..local.l174:
    sub ax, strict word 4
    cmp ax, strict word 8
    jae short @..local.l175
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7a83]
@..local.l175:
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    cmp word [data_91b4], byte 0
    je short @..local.l176
    mov ax, 1
@..local.l176:
    mov word [bp - 0x001a], ax
    les bx, word [ds_data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    add ax, strict word 0x24
    adc dx, byte 0
    mov word [data_919c], dx
    mov word [data_919a], ax
@..local.l177:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    call math_loc_0f1d
    test ax, ax
    je short @..local.l178
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
    cmp word [data_5b3e], byte 0
    jne short @..local.l178
    call loc_676c
@..local.l178:
    cmp word [data_5b3e], byte 0
    jne short @..local.l181
    les bx, word [ds_data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [data_919c]
    jl short @..local.l179
    jne short @..local.l180
    cmp ax, word [data_919a]
    ja short @..local.l180
@..local.l179:
    jmp short @..local.l181
@..local.l180:
    mov ax, 0
    push ax
    call loc_0ea6
    pop cx
@..local.l181:
    cmp word [data_5b3e], byte 0
    je short @..local.l177
    cmp word [bp - 0x0002], byte 0x0c
    jl short @..local.l183
    cmp word [bp - 0x0002], byte 0x12
    jge short @..local.l183
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xfff4
    mov word [data_8af0], ax
    cmp ax, word [data_69c8]
    jge short @..local.l182
    mov word [data_830a], 0x1f
@..local.l182:
    jmp near @..local.l189
@..local.l183:
    cmp word [bp - 0x0002], byte 0x12
    jl short @..local.l185
    cmp word [bp - 0x0002], byte 0x18
    jge short @..local.l185
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xffee
    mov word [data_8af0], ax
    cmp ax, word [data_69c8]
    jge short @..local.l184
    mov ax, 1
    push ax
    call api_idx_0002_10
    pop cx
    mov word [data_830a], 0x11
    mov word [data_905e], 5
@..local.l184:
    jmp near @..local.l189
@..local.l185:
    cmp word [bp - 0x0002], byte 0
    jl short @..local.l186
    cmp word [bp - 0x0002], byte 5
    jg short @..local.l186
    push word [bp - 0x0002]
    call api_idx_0010
    pop cx
    mov ax, 0x32
    push ax
    call ds_dispatch_e489
    pop cx
@..local.l186:
    mov ax, word [bp - 0x0002]
    jmp near @..local.l187

    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x7a, 0xec, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x8a, 0xe6, 0x59
    db 0xc7, 0x06, 0xb0, 0x91, 0x00, 0x00, 0xe9, 0xd6, 0x01, 0xe8, 0x51, 0xd7, 0xb8, 0x01, 0x00, 0x83
    db 0x7e, 0xfe, 0x01, 0x75, 0x03, 0xb8, 0x03, 0x00, 0x03, 0x06, 0xee, 0x82, 0xb9, 0x04, 0x00, 0x99
    db 0xf7, 0xf9, 0x89, 0x16, 0xee, 0x82, 0xc7, 0x06, 0xaa, 0x91, 0x01, 0x00, 0x3b, 0x16, 0x24, 0x8f
    db 0x75, 0x17, 0xc7, 0x06, 0xa8, 0x91, 0x01, 0x00, 0x8b, 0x1e, 0x12, 0x0e, 0x8b, 0x36, 0x3e, 0x8f
    db 0x8a, 0x80, 0x40, 0x0b, 0x2a, 0xe4, 0xa3, 0x12, 0x8d, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x39, 0xe6
    db 0x59, 0xe9, 0x8b, 0x01, 0xb8, 0x03, 0x00, 0x8b, 0x4e, 0xfe, 0x83, 0xf9, 0x03, 0x74, 0x0b, 0xb8
    db 0x02, 0x00, 0x83, 0xf9, 0x04, 0x75, 0x03, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x03, 0xec, 0x59, 0xb8
    db 0x01, 0x00, 0x50, 0xe8, 0x13, 0xe6, 0x59, 0xe9, 0x65, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xe2
    db 0x8b, 0x59, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x2c, 0xbf, 0x59, 0x2a, 0xe4, 0x05, 0xd0, 0xff, 0x89
    db 0x46, 0xfc, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x1c, 0xbf, 0x59, 0x2a, 0xe4, 0x50, 0xb8, 0x0a, 0x00
    db 0xf7, 0x6e, 0xfc, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x05, 0xd0, 0xff, 0x89, 0x46, 0xfc, 0x8b, 0x46
    db 0xfc, 0x8b, 0x1e, 0x0a, 0x10, 0x89, 0x07, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50
    db 0xe8, 0xd4, 0xde, 0x83, 0xc4, 0x06, 0xc3, 0x83, 0x7e, 0xe4, 0x00, 0x7e, 0x13, 0x8b, 0x46, 0xe4
    db 0x48, 0x50, 0xe8, 0xc8, 0x62, 0x59, 0x83, 0x3e, 0x0a, 0x83, 0x05, 0x74, 0x01, 0xc3, 0xeb, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xe3, 0x5f, 0x59, 0xe9, 0xf4, 0x00, 0xb8, 0x01, 0x00, 0x50, 0xe8
    db 0xd8, 0x5f, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x8f, 0xe5, 0x59, 0xe9, 0xe1, 0x00, 0xe8, 0x33
    db 0xa2, 0xa3, 0xf0, 0x8a, 0x3d, 0xff, 0xff, 0x74, 0x26, 0x50, 0xe8, 0xfb, 0x9d, 0x59, 0x85, 0xc0
    db 0x74, 0x1d, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x70, 0xe5, 0x59, 0xb8, 0x14, 0x00, 0x83, 0x7e, 0xfe
    db 0x08, 0x75, 0x03, 0xb8, 0x13, 0x00, 0xa3, 0x0a, 0x83, 0xc7, 0x06, 0x5e, 0x90, 0x05, 0x00, 0xe9
    db 0xad, 0x00, 0xe8, 0xb8, 0x61, 0xe9, 0xa7, 0x00, 0x83, 0x7e, 0xde, 0x00, 0x75, 0x2c, 0xe8, 0xd6
    db 0xef, 0x3d, 0x01, 0x00, 0x75, 0x22, 0xff, 0x36, 0x3e, 0x8f, 0xe8, 0x02, 0xde, 0x59, 0x50, 0xe8
    db 0x9f, 0xdd, 0x59, 0x8b, 0x1e, 0x0a, 0x10, 0x89, 0x07, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00
    db 0x50, 0x50, 0xe8, 0x32, 0xde, 0x83, 0xc4, 0x06, 0xeb, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xf2
    db 0x8a, 0x59, 0xeb, 0x6b, 0xc7, 0x06, 0x0a, 0x83, 0x18, 0x00, 0xeb, 0x63, 0x83, 0x7e, 0xe6, 0x00
    db 0x74, 0x1a, 0xe8, 0xaf, 0xa1, 0xa3, 0xf0, 0x8a, 0x3d, 0xff, 0xff, 0x74, 0x0f, 0x50, 0xe8, 0x77
    db 0x9d, 0x59, 0x85, 0xc0, 0x74, 0x06, 0xc7, 0x06, 0x0a, 0x83, 0x1e, 0x00, 0xeb, 0x41, 0xb4, 0x7b
    db 0xcd, 0x7b, 0xcd, 0x7b, 0x18, 0x7c, 0x18, 0x7c, 0x18, 0x7c, 0xfc, 0x7c, 0xaf, 0x7c, 0xc2, 0x7c
    db 0x38, 0x7d, 0xf6, 0x7c, 0xc2, 0x7c, 0xa3, 0x7d, 0xa3, 0x7d, 0xa3, 0x7d, 0xa3, 0x7d, 0xa3, 0x7d
    db 0xa3, 0x7d, 0xa3, 0x7d, 0xa3, 0x7d, 0xa3, 0x7d, 0xa3, 0x7d, 0xa3, 0x7d, 0xa3, 0x7d, 0x40, 0x7d
    db 0x8b, 0x7c

@..local.l187:
    cmp ax, strict word 0x1a
    jae short @..local.l188
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7d62]
@..local.l188:
    cmp word [bp - 0x0002], byte 0
    jl short @..local.l189
    cmp word [bp - 0x0002], byte 5
    jg short @..local.l189
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x126]
    push word [bx + 0x124]
    push word [bx + 0x122]
    push word [bx + 0x120]
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l189:
    cmp word [data_830a], byte 5
    jne short @..local.l190
    jmp near @..api_idx_0022.l5
@..local.l190:
    ret
math_loc_2d94:
    mov ax, 0
    call ds_dispatch_f40b
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
    call api_idx_0004_6
    add sp, byte 0x0a
    test ax, ax
    je short @..local.l191
    mov ax, word [data_5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..math_loc_2d94.l1
    mov ax, cx
    jmp short @..math_loc_2d94.l4
@..math_loc_2d94.l1:
    mov ax, word [data_5b6e]
    cmp ax, strict word 6
    je short @..math_loc_2d94.l2
    cmp word [data_91a6], byte 0
    je short @..math_loc_2d94.l3
@..math_loc_2d94.l2:
    mov ax, 0
    jmp short @..math_loc_2d94.l4
@..math_loc_2d94.l3:
    mov ax, 4
@..math_loc_2d94.l4:
    ret
@..local.l191:
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
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    ret
math_loc_2e0c:
    mov ax, 0
    call ds_dispatch_f40b
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
    call api_idx_0004_6
    add sp, byte 0x0a
    test ax, ax
    je short @..local.l192
    mov ax, word [data_5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..math_loc_2e0c.l1
    mov ax, cx
    jmp short @..math_loc_2e0c.l4
@..math_loc_2e0c.l1:
    mov ax, word [data_5b6e]
    cmp ax, strict word 6
    je short @..math_loc_2e0c.l2
    cmp word [data_91a6], byte 0
    je short @..math_loc_2e0c.l3
@..math_loc_2e0c.l2:
    mov ax, 0
    jmp short @..math_loc_2e0c.l4
@..math_loc_2e0c.l3:
    mov ax, 4
@..math_loc_2e0c.l4:
    ret
@..local.l192:
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
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    ret
loc_2e84:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0xffff
    cmp word [data_91d0], byte 0
    je short @..local.l193
    mov ax, word [bp + 0x4]
@..local.l193:
    ret
loc_2e98:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    cmp word [data_91d0], byte 0
    je short @..local.l194
    mov ax, word [bp + 0x6]
@..local.l194:
    ret
loc_2eac:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0xffff
    cmp word [data_91d2], byte 0
    je short @..local.l195
    mov ax, word [bp + 0x4]
@..local.l195:
    ret
loc_2ec0:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    cmp word [data_91d2], byte 0
    je short @..local.l196
    mov ax, word [bp + 0x6]
@..local.l196:
    ret
loc_2ed4:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [data_82ee]
    jmp short @..local.l201
@..local.l197:
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x4]
    add word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x6]
    add word [bx], ax
    jmp short @..local.l202
@..local.l198:
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x4]
    add word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x6]
    sub word [bx], ax
    jmp short @..local.l202
@..local.l199:
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x4]
    sub word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x6]
    sub word [bx], ax
    jmp short @..local.l202
@..local.l200:
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x4]
    sub word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x6]
    add word [bx], ax
    jmp short @..local.l202
@..local.l201:
    cmp ax, strict word 0
    je short @..local.l197
    cmp ax, strict word 1
    je short @..local.l198
    cmp ax, strict word 2
    je short @..local.l199
    cmp ax, strict word 3
    je short @..local.l200
@..local.l202:
    mov bx, word [bp + 0x6]
    push word [bx]
    mov bx, word [bp + 0x4]
    push word [bx]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    call api_idx_0004_6
    add sp, byte 0x0a
    ret
loc_2f55:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 6
    push ax
    push word [bp + 0x4]
    mov ax, word [data_0e14]
    add ax, 0x4b0
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov word [bx], ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    mov ax, word [data_0e14]
    add ax, 0x7b0
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    ret
api_idx_0008_3:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    cmp word [bp + 0xe], byte 0
    jne short @..api_idx_0008_3.l1
    jmp near @..local.l204
@..api_idx_0008_3.l1:
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
    je short @..local.l204
    mov ax, word [data_91d4]
    jmp short @..local.l203
    mov ax, 2
    ret

    db 0x83, 0x3e, 0xa6, 0x91, 0x00, 0x74, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xb8, 0x05, 0x00, 0xf7, 0x2e
    db 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91, 0x01, 0xb8, 0x04, 0x00, 0xc3
    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91
    db 0x03, 0xb8, 0x00, 0x00, 0xc3, 0x0e, 0x80, 0x1d, 0x80, 0x0e, 0x80, 0x12, 0x80, 0x0e, 0x80, 0x32
    db 0x80

@..local.l203:
    cmp ax, strict word 6
    jae short @..local.l204
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7fb9]
@..local.l204:
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
    mov ax, word [data_0e14]
    add ax, 0x9b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l206
    mov ax, word [data_91d4]
    jmp short @..local.l205

    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91
    db 0x03, 0xeb, 0x3f, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6
    db 0x87, 0xda, 0x91, 0x01, 0xeb, 0x2c, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e
    db 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91, 0x02, 0xeb, 0x19, 0x90, 0x80, 0xa3, 0x80, 0xb6, 0x80, 0xa3
    db 0x80, 0x90, 0x80, 0xa3, 0x80

@..local.l205:
    cmp ax, strict word 6
    jae short @..local.l206
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7f37]
@..local.l206:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..local.l207
    jmp near @..local.l209
@..local.l207:
    mov ax, word [data_91d4]
    jmp short @..local.l208

    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91
    db 0x02, 0xeb, 0x60, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6
    db 0x87, 0xf3, 0x91, 0x01, 0xeb, 0x4d, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e
    db 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91, 0x03, 0xeb, 0x3a, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91
    db 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0x0c, 0x92, 0x01, 0x83, 0x3e, 0xd6, 0x91, 0x04, 0x7d
    db 0x05, 0xc6, 0x87, 0x11, 0x92, 0x01, 0xb8, 0x00, 0x00, 0xc3, 0x37, 0x81, 0xfe, 0x80, 0x11, 0x81
    db 0x37, 0x81, 0x11, 0x81, 0x24, 0x81

@..local.l208:
    cmp ax, strict word 6
    jae short @..local.l209
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7ea8]
@..local.l209:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x930
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l214
    mov ax, word [data_830c]
    jmp short @..local.l213
@..local.l210:
    mov ax, 5
    imul word [data_91d6]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx - 0x6e26], 3
    jmp short @..local.l214
@..local.l211:
    mov ax, 5
    imul word [data_91d6]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx - 0x6df4], 2
    cmp word [data_91d6], byte 4
    jge short @..local.l212
    mov byte [bx - 0x6def], 2
@..local.l212:
    jmp short @..local.l214
@..local.l213:
    cmp ax, strict word 0xa
    je short @..local.l211
    cmp ax, strict word 0xe
    je short @..local.l210
    cmp ax, strict word 0x13
    je short @..local.l210
    cmp ax, strict word 0x19
    je short @..local.l211
    cmp ax, strict word 0x1f
    je short @..local.l210
@..local.l214:
    mov ax, word [data_82ee]
    jmp short @..local.l219
@..local.l215:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..local.l220
@..local.l216:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..local.l220
@..local.l217:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_2d94
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..local.l220
@..local.l218:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_2e0c
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..local.l220
@..local.l219:
    cmp ax, strict word 0
    je short @..local.l215
    cmp ax, strict word 1
    je short @..local.l216
    cmp ax, strict word 2
    je short @..local.l217
    cmp ax, strict word 3
    je short @..local.l218
@..local.l220:
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call loc_2f55
    add sp, byte 6
    mov ax, word [data_82ee]
    cmp ax, word [bp - 0x0008]
    je short @..local.l222
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 7
    jl short @..local.l221
    cmp ax, strict word 9
    jle short @..local.l222
@..local.l221:
    cmp ax, strict word 0xb
    jg short @..local.l222
    jmp near @..local.l224
@..local.l222:
    mov ax, word [bp - 0x0006]
    jmp near @..local.l223

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xe9, 0x3e, 0x01, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xe9, 0x36, 0x01
    db 0xc7, 0x46, 0xfc, 0x0a, 0x00, 0xe9, 0x2e, 0x01, 0xc7, 0x46, 0xfc, 0x0b, 0x00, 0xe9, 0x26, 0x01
    db 0x83, 0x3e, 0xd6, 0x91, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0c, 0x00, 0xe9, 0x17, 0x01, 0x83
    db 0x3e, 0xd6, 0x91, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0d, 0x00, 0xe9, 0x08, 0x01, 0x8b, 0x46
    db 0xf8, 0x40, 0x50, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x8b, 0xc8, 0x03, 0x46, 0x0e, 0x8b
    db 0xd8, 0x58, 0x88, 0x87, 0x25, 0x92, 0xe9, 0xed, 0x00, 0x8b, 0x46, 0xf8, 0x40, 0x50, 0xb8, 0x0a
    db 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x8b, 0xc8, 0x8b, 0x56, 0x0e, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8
    db 0x58, 0x89, 0x87, 0x40, 0x92, 0xe9, 0xce, 0x00, 0x8b, 0x46, 0xf8, 0x40, 0x50, 0xb8, 0x0a, 0x00
    db 0xf7, 0x2e, 0xd6, 0x91, 0x8b, 0xc8, 0x8b, 0x56, 0x0e, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x58
    db 0x89, 0x87, 0x72, 0x92, 0xe9, 0xaf, 0x00, 0xc7, 0x46, 0xfc, 0x0e, 0x00, 0xe9, 0xa7, 0x00, 0xc7
    db 0x46, 0xfc, 0x0f, 0x00, 0xe9, 0x9f, 0x00, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46
    db 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xa2, 0x92, 0x01, 0xe9, 0x8b, 0x00, 0xb8, 0x05, 0x00, 0xf7, 0x2e
    db 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91, 0x03, 0xeb, 0x78, 0xb8, 0x0a
    db 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x8b, 0x4e, 0x0e, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87
    db 0xbe, 0x92, 0x01, 0x00, 0x83, 0x7e, 0xfa, 0x0e, 0x74, 0x16, 0xb8, 0x0a, 0x00, 0xf7, 0x2e, 0xd6
    db 0x91, 0x8b, 0x4e, 0x0e, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87, 0xf0, 0x92, 0x01, 0x00
    db 0xeb, 0x44, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87
    db 0xa2, 0x92, 0x02, 0xeb, 0x31, 0xce, 0x83, 0x88, 0x82, 0x90, 0x82, 0x98, 0x82, 0xa0, 0x82, 0xa8
    db 0x82, 0xb7, 0x82, 0xc6, 0x82, 0xe1, 0x82, 0x00, 0x83, 0x1f, 0x83, 0x27, 0x83, 0x2f, 0x83, 0x43
    db 0x83, 0x56, 0x83, 0x6c, 0x83, 0x8a, 0x83, 0x56, 0x83

@..local.l223:
    cmp ax, strict word 0x12
    jae short @..local.l224
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7c63]
@..local.l224:
    mov ax, word [data_830c]
    cmp ax, word [data_8f28]
    jne short @..local.l225
    mov ax, word [bp + 0xc]
    cmp ax, word [data_8f2a]
    jne short @..local.l225
    mov ax, word [bp + 0x8]
    cmp ax, word [data_8f2e]
    jne short @..local.l225
    mov ax, word [bp + 0xa]
    cmp ax, word [data_8f2c]
    jne short @..local.l225
    mov ax, 5
    imul word [data_91d6]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx - 0x6d5e], 3
@..local.l225:
    mov ax, word [bp - 0x0004]
    ret
api_idx_0008_4:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    cmp word [bp + 0x10], byte 0
    je short @..local.l227
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
    je short @..local.l227
    mov ax, word [data_91d4]
    jmp short @..local.l226
    mov ax, 2
    ret
    cmp word [data_91a6], byte 0
    je short loc_3405
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
    db 0x84
@..local.l226:
    cmp ax, strict word 6
    jae short @..local.l227
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7bac]
@..local.l227:
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
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l230
    mov ax, word [data_91d4]
    jmp short @..local.l229
@..local.l228:
    mov ax, 0
    ret
@..local.l229:
    cmp ax, strict word 0
    je short @..local.l228
    cmp ax, strict word 3
    je short @..local.l228
@..local.l230:
    mov ax, word [data_82ee]
    add ax, word [bp + 0x4]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    jmp short @..local.l235
@..local.l231:
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call math_loc_2e0c
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..local.l236
@..local.l232:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..local.l236
@..local.l233:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..local.l236
@..local.l234:
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call math_loc_2d94
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..local.l236
@..local.l235:
    cmp ax, strict word 0
    je short @..local.l231
    cmp ax, strict word 1
    je short @..local.l232
    cmp ax, strict word 2
    je short @..local.l233
    cmp ax, strict word 3
    je short @..local.l234
@..local.l236:
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
    cmp dx, word [data_82ee]
    je short @..local.l237
    jmp near @..local.l239
@..local.l237:
    mov ax, word [bp - 0x0006]
    jmp short @..local.l238

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xeb, 0x64, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xeb, 0x5d, 0xc7, 0x46
    db 0xfc, 0x0a, 0x00, 0xeb, 0x56, 0xc7, 0x46, 0xfc, 0x0b, 0x00, 0xeb, 0x4f, 0x83, 0x3e, 0xd6, 0x91
    db 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0c, 0x00, 0xeb, 0x41, 0x83, 0x3e, 0xd6, 0x91, 0x00, 0x75
    db 0x05, 0xc7, 0x46, 0xfc, 0x0d, 0x00, 0xeb, 0x33, 0xc7, 0x46, 0xfc, 0x0e, 0x00, 0xeb, 0x2c, 0xc7
    db 0x46, 0xfc, 0x0f, 0x00, 0xeb, 0x25, 0xcf, 0x85, 0x64, 0x85, 0x6b, 0x85, 0x72, 0x85, 0x79, 0x85
    db 0x80, 0x85, 0x8e, 0x85, 0xcf, 0x85, 0xcf, 0x85, 0xcf, 0x85, 0x9c, 0x85, 0xa3, 0x85

@..local.l238:
    cmp ax, strict word 0xc
    jae short @..local.l239
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7a56]
@..local.l239:
    mov ax, word [bp - 0x0004]
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov al, byte [bp + 0x4]
    push ax
    mov ax, 0x11
    imul word [data_931e]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6cd4], al
    mov al, byte [bp + 0x18]
    mov byte [bx - 0x6cd2], al
    cmp word [bp + 0x4], strict word 0xfa
    jl short @..api_idx_0004_5.l1
    jmp near @..api_idx_0004_5.l13
@..api_idx_0004_5.l1:
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
    jg short @..api_idx_0004_5.l2
    jmp near @..api_idx_0004_5.l11
@..api_idx_0004_5.l2:
    cmp word [bp + 0x1e], byte 0
    jg short @..api_idx_0004_5.l3
    jmp near @..api_idx_0004_5.l11
@..api_idx_0004_5.l3:
    mov ax, 0x64
    sub ax, word [bp + 0x18]
    mov cx, 0x64
    cwd
    idiv cx
    mov ax, dx
    push ax
    mov ax, 0x11
    imul word [data_931e]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6cd2], al
    cmp word [bp + 0x1e], byte 1
    je short @..api_idx_0004_5.l4
    jmp near @..api_idx_0004_5.l6
@..api_idx_0004_5.l4:
    mov ax, word [data_03ae]
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
    je short @..api_idx_0004_5.l5
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
    imul word [data_931e]
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
@..api_idx_0004_5.l5:
    mov ax, word [data_03dc]
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
    imul word [data_931e]
    mov bx, ax
    pop ax
    mov word [bx - 0x6cde], ax
    jmp near @..api_idx_0004_5.l10
@..api_idx_0004_5.l6:
    cmp word [bp + 0x1e], byte 2
    je short @..api_idx_0004_5.l7
    jmp near @..api_idx_0004_5.l9
@..api_idx_0004_5.l7:
    mov ax, 0x11
    imul word [data_931e]
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
    je short @..api_idx_0004_5.l8
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
    imul word [data_931e]
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
@..api_idx_0004_5.l8:
    mov ax, 0x11
    imul word [data_931e]
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
    jmp short @..api_idx_0004_5.l10
@..api_idx_0004_5.l9:
    cmp word [bp + 0x1e], byte 3
    jne short @..api_idx_0004_5.l10
    mov ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [data_931e]
    mov bx, ax
    pop ax
    mov word [bx - 0x6ce0], ax
    mov ax, word [bp + 0x8]
    mov word [bx - 0x6cde], ax
@..api_idx_0004_5.l10:
    jmp short @..api_idx_0004_5.l12
@..api_idx_0004_5.l11:
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [data_931e]
    mov bx, ax
    pop ax
    mov word [bx - 0x6ce0], ax
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0x8]
    mov word [bx - 0x6cde], ax
@..api_idx_0004_5.l12:
    jmp short @..local.l240
@..api_idx_0004_5.l13:
    mov ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [data_931e]
    mov bx, ax
    pop ax
    mov word [bx - 0x6ce0], ax
    mov ax, word [bp + 0x8]
    mov word [bx - 0x6cde], ax
@..local.l240:
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 0x11
    imul word [data_931e]
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
    inc word [data_931e]
    mov ax, word [data_931e]
    cmp ax, strict word 0x78
    jl short @..local.l242
@..local.l241:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..local.l241
@..local.l242:
    ret
api_idx_0010_2:
    mov ax, 0xfff0
    call ds_dispatch_f40b
    mov ax, 4
    cmp word [data_91d4], byte 0
    jne short @..api_idx_0010_2.l1
    mov ax, 3
@..api_idx_0010_2.l1:
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0xffff
    mov word [bp - 0x0004], 0xffff
    cmp word [data_91d4], byte 0
    jg short @..api_idx_0010_2.l2
    jmp near @..api_idx_0010_2.l11
@..api_idx_0010_2.l2:
    cmp word [bp + 0x4], byte 3
    je short @..api_idx_0010_2.l3
    jmp near @..api_idx_0010_2.l11
@..api_idx_0010_2.l3:
    mov ax, word [data_91d4]
    cmp ax, strict word 3
    jl short @..api_idx_0010_2.l4
    cmp ax, strict word 5
    jne short @..api_idx_0010_2.l5
@..api_idx_0010_2.l4:
    mov ax, 0x15
    jmp short @..api_idx_0010_2.l6
@..api_idx_0010_2.l5:
    mov ax, 0x14
@..api_idx_0010_2.l6:
    mov word [bp - 0x000c], ax
    cmp word [data_91d4], byte 3
    jl short @..api_idx_0010_2.l7
    cmp word [data_91d4], byte 5
    jne short @..api_idx_0010_2.l8
@..api_idx_0010_2.l7:
    mov ax, 0x16
    jmp short @..api_idx_0010_2.l9
@..api_idx_0010_2.l8:
    mov ax, 0x15
@..api_idx_0010_2.l9:
    mov word [bp - 0x000e], ax
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0010_2.l10
    push ax
    push word [bp - 0x000c]
    call loc_2e98
    add sp, byte 4
    mov word [bp - 0x0002], ax
    push word [bp - 0x000c]
    call loc_2e84
    pop cx
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0010_2.l11
@..api_idx_0010_2.l10:
    cmp word [bp + 0x8], byte 4
    jne short @..api_idx_0010_2.l11
    push word [bp - 0x000c]
    push word [bp - 0x000e]
    call loc_2e98
    add sp, byte 4
    mov word [bp - 0x0002], ax
    push word [bp - 0x000e]
    call loc_2e84
    pop cx
    mov word [bp - 0x0004], ax
@..api_idx_0010_2.l11:
    mov ax, word [bp + 0x6]
    jmp near @..local.l244
    cmp word [bp - 0x0002], byte 0xff
    je short @..api_idx_0010_2.l13
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
    jne short @..api_idx_0010_2.l12
    mov ax, 2
@..api_idx_0010_2.l12:
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0010_2.l13:
    jmp near @..local.l245
    cmp word [bp - 0x0002], byte 0xff
    je short @..api_idx_0010_2.l14
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
@..api_idx_0010_2.l14:
    jmp near @..local.l245
    cmp word [data_91d4], byte 0
    jne short @..api_idx_0010_2.l17
    cmp word [bp + 0x4], byte 3
    jge short @..api_idx_0010_2.l16
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
    jne short @..api_idx_0010_2.l15
    mov ax, 2
@..api_idx_0010_2.l15:
    push ax
    mov ax, 0xffff
    push ax
    add cx, word [bp + 0x18]
    mov ax, cx
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 0x4]
    push ax
    call loc_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0010_2.l16:
    jmp near @..local.l243
@..api_idx_0010_2.l17:
    cmp word [data_91d4], byte 3
    jl short @..api_idx_0010_2.l18
    cmp word [data_91d4], byte 5
    jne short @..api_idx_0010_2.l20
@..api_idx_0010_2.l18:
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0010_2.l19
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
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0010_2.l19:
    jmp short @..local.l243
@..api_idx_0010_2.l20:
    cmp word [data_91d4], byte 5
    jge short @..local.l243
    cmp word [bp + 0x4], byte 4
    jge short @..local.l243
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

    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0xff, 0x76, 0xfe, 0x8b, 0x46
    db 0x48, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x46, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x77, 0xf4, 0x83
    db 0xc4, 0x04, 0x50, 0xb8, 0xff, 0x00, 0x50, 0xe8, 0x60, 0xfb, 0x83, 0xc4, 0x1c

@..local.l243:

    db 0xe9, 0x81, 0x00, 0xa1, 0xd4, 0x91, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x3d, 0x01
    db 0x00, 0x75, 0x42, 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x3c, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff
    db 0x76, 0x0c, 0xff, 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50
    db 0x51, 0xb8, 0xff, 0xff, 0x50, 0x83, 0x3e, 0x18, 0x9b, 0x00, 0x74, 0x08, 0x8b, 0x46, 0x1c, 0x03
    db 0x46, 0x04, 0xeb, 0x06, 0x8b, 0x46, 0x1a, 0x03, 0x46, 0x04, 0x50, 0xb8, 0xfc, 0x00, 0x50, 0xe8
    db 0x0b, 0xfb, 0x83, 0xc4, 0x1c, 0xeb, 0x2d, 0xfa, 0x8a, 0xf1, 0x88, 0x65, 0x89, 0xf1, 0x88, 0x79
    db 0x8a, 0x2e, 0x89, 0xf1, 0x88, 0xf1, 0x88, 0xfa, 0x8a, 0xfa, 0x8a, 0x65, 0x89, 0x65, 0x89, 0x65
    db 0x89, 0x65, 0x89, 0x65, 0x89, 0x65, 0x89

@..local.l244:
    cmp ax, strict word 0x10
    jae short @..local.l245
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7533]
@..local.l245:
    mov word [bp - 0x0002], 0xffff
    mov word [bp - 0x0004], 0xffff
    mov ax, word [bp + 0x4]
    cmp ax, word [bp - 0x000a]
    jl short @..local.l246
    jmp near @..local.l251
@..local.l246:
    mov word [bp - 0x0010], 0xffff
    mov ax, word [bp + 0x6]
    jmp near @..local.l249

    db 0x8b, 0x46, 0x2e, 0x83, 0x7e, 0x06, 0x08, 0x75, 0x03, 0x8b, 0x46, 0x2a, 0x89, 0x46, 0xfa, 0x8b
    db 0x46, 0x30, 0x83, 0x7e, 0x06, 0x08, 0x75, 0x03, 0x8b, 0x46, 0x2c, 0x89, 0x46, 0xf8, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0x04, 0x40, 0x40, 0x40, 0x89, 0x46, 0xfe, 0xc7, 0x46, 0xfc, 0xff, 0xff, 0x83
    db 0x7e, 0x06, 0x07, 0x75, 0x25, 0x8b, 0x46, 0x44, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x42, 0x03
    db 0x46, 0x04, 0x50, 0xe8, 0x7f, 0xf3, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x8b, 0x46, 0x42, 0x03
    db 0x46, 0x04, 0x50, 0xe8, 0x5b, 0xf3, 0x59, 0x89, 0x46, 0xfc, 0x83, 0x3e, 0xd4, 0x91, 0x00, 0x75
    db 0x49, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04, 0xff, 0x76, 0xfc
    db 0x8b, 0x46, 0x1e, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x37, 0xf3, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0xff, 0x76, 0xfe, 0x8b, 0x46, 0x20, 0x03, 0x46, 0x04, 0x50
    db 0x8b, 0x46, 0x1e, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x2b, 0xf3, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff
    db 0x00, 0x50, 0xe8, 0x14, 0xfa, 0x83, 0xc4, 0x1c, 0xeb, 0x4e, 0x83, 0x3e, 0xd4, 0x91, 0x02, 0x75
    db 0x47, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x0e, 0xff, 0x76, 0x04, 0xff, 0x76, 0xfc
    db 0x8b, 0x46, 0x36, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe7, 0xf2, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0xff, 0x76, 0xfe, 0x8b, 0x46, 0x38, 0x03, 0x46, 0x04, 0x50
    db 0x8b, 0x46, 0x36, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xdb, 0xf2, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff
    db 0x00, 0x50, 0xe8, 0xc4, 0xf9, 0x83, 0xc4, 0x1c, 0x83, 0x7e, 0x06, 0x03, 0x74, 0x03, 0xe9, 0xe2
    db 0x00, 0x83, 0x3e, 0x1a, 0x83, 0x00, 0x74, 0x4f, 0x83, 0x7e, 0x04, 0x00, 0x75, 0x49, 0x83, 0x7e
    db 0x08, 0x02, 0x75, 0x43, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8
    db 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xa1, 0x1a, 0x83, 0x05
    db 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08
    db 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x68
    db 0xf9, 0x83, 0xc4, 0x1c, 0xe9, 0x8a, 0x00, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36, 0xd0, 0x91
    db 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x50, 0x8b, 0x46, 0x04, 0xd1, 0xe0, 0x03, 0x06, 0xd0, 0x91, 0x05, 0x05, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08, 0xd1, 0xe1, 0x03, 0xc1
    db 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x1c, 0xf9, 0x83, 0xc4, 0x1c
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36, 0xd0, 0x91, 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8, 0x00
    db 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0x8b, 0x46, 0x04, 0x40, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08, 0xd1, 0xe1, 0x03
    db 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0xdb, 0xf8, 0x83, 0xc4
    db 0x1c, 0xeb, 0x47, 0x83, 0x7e, 0x06, 0x06, 0x75, 0x41, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36
    db 0xd0, 0x91, 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0x50, 0x50, 0x8b, 0x46, 0x04, 0x40, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00
    db 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03
    db 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x92, 0xf8, 0x83, 0xc4, 0x1c, 0x83, 0x3e, 0xd4, 0x91, 0x00, 0x75
    db 0x64, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04, 0x8b, 0x46, 0x26
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0x6a, 0xf1, 0x59, 0x50, 0x8b, 0x46, 0x22, 0x03, 0x46, 0x04, 0x50
    db 0xe8, 0x5e, 0xf1, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0x8b
    db 0x46, 0x28, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x26, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x55, 0xf1
    db 0x83, 0xc4, 0x04, 0x50, 0x8b, 0x46, 0x24, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x22, 0x03, 0x46
    db 0x04, 0x50, 0xe8, 0x40, 0xf1, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff, 0x00, 0x50, 0xe8, 0x29, 0xf8
    db 0x83, 0xc4, 0x1c, 0xeb, 0x69, 0x83, 0x3e, 0xd4, 0x91, 0x02, 0x75, 0x62, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x50, 0xff, 0x76, 0x0e, 0xff, 0x76, 0x04, 0x8b, 0x46, 0x3e, 0x03, 0x46, 0x04, 0x50, 0xe8
    db 0xff, 0xf0, 0x59, 0x50, 0x8b, 0x46, 0x3a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xf3, 0xf0, 0x59, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0x8b, 0x46, 0x40, 0x03, 0x46, 0x04
    db 0x50, 0x8b, 0x46, 0x3e, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xea, 0xf0, 0x83, 0xc4, 0x04

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
    call api_idx_0004_5
    add sp, byte 0x1c
    cmp word [bp + 0x6], byte 8
    je short @..local.l247
    cmp word [bp + 0x6], byte 9
    jne short @..local.l248
@..local.l247:
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
@..local.l248:
    jmp near @..local.l250

    db 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x49, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x12, 0xff
    db 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x4a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x54, 0xf0
    db 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50
    db 0x8b, 0x46, 0x4c, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x4a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x47
    db 0xf0, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff, 0x00, 0x50, 0xe8, 0x30, 0xf7, 0x83, 0xc4, 0x1c, 0xe9
    db 0xa3, 0x00, 0xc7, 0x46, 0xf0, 0x09, 0x00, 0xc7, 0x46, 0xf4, 0x01, 0x00, 0xa1, 0xe8, 0x82, 0x40
    db 0x40, 0x89, 0x46, 0xf2, 0xe9, 0x8e, 0x00, 0xc7, 0x46, 0xf0, 0x09, 0x00, 0xc7, 0x46, 0xf4, 0x07
    db 0x00, 0xb8, 0x00, 0x00, 0x83, 0x3e, 0xe8, 0x82, 0x00, 0x74, 0x03, 0xb8, 0x08, 0x00, 0x89, 0x46
    db 0xf2, 0xeb, 0x72, 0xc7, 0x46, 0xf0, 0x0a, 0x00, 0xb8, 0x05, 0x00, 0x83, 0x3e, 0xd4, 0x91, 0x00
    db 0x75, 0x03, 0xb8, 0x01, 0x00, 0xb9, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x0d, 0x75, 0x03, 0xb9, 0x01
    db 0x00, 0x03, 0xc1, 0x89, 0x46, 0xf4, 0xc7, 0x46, 0xf2, 0x00, 0x00, 0xeb, 0x48, 0xc7, 0x46, 0xf0
    db 0x0a, 0x00, 0xc7, 0x46, 0xf4, 0x09, 0x00, 0xb8, 0x0b, 0x00, 0x83, 0x7e, 0x06, 0x0e, 0x75, 0x03
    db 0xb8, 0x0a, 0x00, 0x89, 0x46, 0xf2, 0xeb, 0x2d, 0x4c, 0x8f, 0x74, 0x8b, 0x4c, 0x8f, 0x74, 0x8b
    db 0x4c, 0x8f, 0x57, 0x8e, 0x74, 0x8b, 0x49, 0x8b, 0x1a, 0x8b, 0x1a, 0x8b, 0xa9, 0x8e, 0xbe, 0x8e
    db 0xda, 0x8e, 0xda, 0x8e, 0x04, 0x8f, 0x04, 0x8f

@..local.l249:
    cmp ax, strict word 0x10
    jae short @..local.l250
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x70e1]
@..local.l250:
    cmp word [bp - 0x0010], byte 0xff
    je short @..local.l251
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [data_91d0]
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
@..local.l251:
    ret
api_idx_0012:
    mov ax, 0xffee
    call ds_dispatch_f40b
    mov word [bp - 0x0004], 0xffff
    mov word [bp - 0x0006], 0xffff
    mov ax, word [bp + 0x6]
    jmp near @..local.l253
    cmp word [bp + 0x26], byte 0xff
    jne short @..api_idx_0012.l1
    jmp near @..api_idx_0012.l11
@..api_idx_0012.l1:
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_0012.l2
    jmp near @..api_idx_0012.l11
@..api_idx_0012.l2:
    cmp word [bp + 0x6], byte 8
    jne short @..api_idx_0012.l3
    mov ax, word [bp + 0x26]
    inc ax
    jmp short @..api_idx_0012.l4
@..api_idx_0012.l3:
    mov ax, word [bp + 0x26]
    inc ax
    inc ax
    inc ax
@..api_idx_0012.l4:
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
    jge short @..api_idx_0012.l5
    mov ax, word [bp - 0x0002]
    inc ax
@..api_idx_0012.l5:
    push ax
    mov ax, 0xffff
    cmp word [bp + 0x8], byte 2
    jge short @..api_idx_0012.l6
    mov ax, word [bp - 0x0002]
@..api_idx_0012.l6:
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    cmp word [bp + 0x6], byte 8
    jne short @..api_idx_0012.l7
    cmp word [bp + 0x8], byte 2
    jg short @..api_idx_0012.l8
@..api_idx_0012.l7:
    cmp word [bp + 0x6], byte 9
    jne short @..api_idx_0012.l9
    cmp word [bp + 0x8], byte 2
    jge short @..api_idx_0012.l9
@..api_idx_0012.l8:
    mov ax, word [bp - 0x0002]
    inc ax
    jmp short @..api_idx_0012.l10
@..api_idx_0012.l9:
    mov ax, 0xffff
@..api_idx_0012.l10:
    push ax
    push word [bp - 0x0002]
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0012.l11:
    cmp word [bp + 0x6], byte 3
    je short @..api_idx_0012.l12
    jmp near @..api_idx_0012.l15
@..api_idx_0012.l12:
    cmp word [bp + 0x4], byte 4
    jl short @..api_idx_0012.l13
    jmp near @..api_idx_0012.l15
@..api_idx_0012.l13:
    cmp word [bp + 0x34], byte 0xff
    je short @..api_idx_0012.l14
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
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0012.l14:
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
@..api_idx_0012.l15:
    cmp word [bp + 0x6], byte 6
    jne short @..api_idx_0012.l16
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012.l16
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
@..api_idx_0012.l16:
    cmp word [data_91d4], byte 0
    jne short @..api_idx_0012.l18
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012.l17
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
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0012.l17:
    jmp short @..local.l252
@..api_idx_0012.l18:
    cmp word [data_91d4], byte 2
    jne short @..local.l252
    cmp word [bp + 0x4], byte 5
    jge short @..local.l252
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
    call api_idx_0004_5
    add sp, byte 0x1c
@..local.l252:

    db 0x83, 0x7e, 0x26, 0xff, 0x74, 0x4d, 0x83, 0x7e, 0x04, 0x00, 0x75, 0x47, 0x83, 0x7e, 0x06, 0x08
    db 0x74, 0x06, 0x83, 0x7e, 0x06, 0x09, 0x75, 0x3b, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x83, 0x7e
    db 0x08, 0x02, 0x7d, 0x03, 0x8b, 0x46, 0x26, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76, 0x26, 0xb8, 0xfd, 0x00, 0x50, 0xe8, 0xd0, 0xf3
    db 0x83, 0xc4, 0x1c, 0xe9, 0x6f, 0x02, 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x25, 0x8b, 0x46, 0x3a, 0x03
    db 0x46, 0x04, 0x50, 0x8b, 0x46, 0x38, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe7, 0xec, 0x83, 0xc4, 0x04
    db 0x89, 0x46, 0xfc, 0x8b, 0x46, 0x38, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xc3, 0xec, 0x59, 0x89, 0x46
    db 0xfa, 0x83, 0x3e, 0xd4, 0x91, 0x00, 0x75, 0x56, 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x4d, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04
    db 0xff, 0x76, 0xfa, 0x8b, 0x46, 0x16, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x93, 0xec, 0x59, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0xff, 0x76, 0xfc, 0x8b, 0x46, 0x18, 0x03
    db 0x46, 0x04, 0x50, 0x8b, 0x46, 0x16, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x87, 0xec, 0x83, 0xc4, 0x04
    db 0x50, 0xb8, 0xfd, 0x00, 0x50, 0xe8, 0x48, 0xf3, 0x83, 0xc4, 0x1c, 0xe9, 0x08, 0x01, 0x83, 0x3e
    db 0xd4, 0x91, 0x03, 0x7c, 0x0a, 0x83, 0x3e, 0xd4, 0x91, 0x05, 0x74, 0x03, 0xe9, 0x9b, 0x00, 0x83
    db 0x7e, 0x04, 0x05, 0x7c, 0x03, 0xe9, 0x90, 0x00, 0x83, 0x3e, 0xd4, 0x91, 0x02, 0x75, 0x3a, 0x83
    db 0x7e, 0xfc, 0xff, 0x74, 0x34, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00
    db 0x50, 0xff, 0x76, 0x0e, 0xff, 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76, 0xfa, 0xb8, 0x00
    db 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76, 0xfc, 0xb8
    db 0xfd, 0x00, 0x50, 0xe8, 0xea, 0xf2, 0x83, 0xc4, 0x1c, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x10, 0xff, 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x8b
    db 0x46, 0x28, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe7, 0xeb, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x2a, 0x03, 0x46, 0x04, 0x50
    db 0x8b, 0x46, 0x28, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xda, 0xeb, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xfd
    db 0x00, 0x50, 0xe8, 0x9b, 0xf2, 0x83, 0xc4, 0x1c, 0xeb, 0x5c, 0x83, 0x3e, 0xd4, 0x91, 0x05, 0x7d
    db 0x55, 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x4f, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0x14, 0xff, 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x3c
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0x89, 0xeb, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x3e, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46
    db 0x3c, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x7c, 0xeb, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xfd, 0x00, 0x50
    db 0xe8, 0x3d, 0xf2, 0x83, 0xc4, 0x1c, 0xe9, 0xdc, 0x00, 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x4f, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x0c, 0xff, 0x76
    db 0x04, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x1a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x09, 0xeb, 0x59
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b
    db 0x46, 0x1c, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x1a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xfc, 0xea
    db 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xfb, 0x00, 0x50, 0xe8, 0xe5, 0xf1, 0x83, 0xc4, 0x1c, 0xe9, 0x84
    db 0x00, 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x4f, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0x12, 0xff, 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x40
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0xd9, 0xea, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x42, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46
    db 0x40, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xcc, 0xea, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xfd, 0x00, 0x50
    db 0xe8, 0x8d, 0xf1, 0x83, 0xc4, 0x1c, 0xeb, 0x2d, 0x78, 0x94, 0xfd, 0x90, 0x34, 0x92, 0x40, 0x90
    db 0x9c, 0x93, 0xf4, 0x93, 0x40, 0x90, 0x09, 0x92, 0xb3, 0x8f, 0xb3, 0x8f, 0x34, 0x92, 0x34, 0x92
    db 0x34, 0x92, 0x34, 0x92, 0x34, 0x92, 0x34, 0x92

@..local.l253:
    cmp ax, strict word 0x10
    jae short @..local.l254
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6bb5]
@..local.l254:
    cmp word [bp + 0x4], byte 4
    jl short @..local.l255
    jmp near @..local.l262
@..local.l255:
    cmp word [bp + 0x8], byte 1
    je short @..local.l256
    cmp word [bp + 0x8], byte 3
    jne short @..local.l257
@..local.l256:
    mov ax, 0
    jmp short @..local.l258
@..local.l257:
    mov ax, 1
@..local.l258:
    mov word [bp - 0x0012], ax
    mov ax, 0
    cmp word [bp + 0x8], byte 2
    jle short @..local.l259
    mov ax, 1
@..local.l259:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x000c], 0xffff
    mov ax, word [bp + 0x6]
    jmp near @..local.l260

    db 0xc7, 0x46, 0xf4, 0x09, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee
    db 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03
    db 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xe6, 0x03, 0x89, 0x46, 0xf2, 0x8b, 0x87, 0xe8, 0x03, 0x89, 0x46
    db 0xf0, 0xc7, 0x46, 0xf8, 0x04, 0x00, 0xa1, 0xe8, 0x82, 0x05, 0x05, 0x00, 0x89, 0x46, 0xf6, 0xe9
    db 0x76, 0x01, 0xc7, 0x46, 0xf4, 0x09, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x36, 0x04, 0x89, 0x46, 0xf2, 0x8b, 0x87, 0x38, 0x04
    db 0x89, 0x46, 0xf0, 0xc7, 0x46, 0xf8, 0x09, 0x00, 0xb8, 0x00, 0x00, 0x83, 0x3e, 0xe8, 0x82, 0x00
    db 0x74, 0x03, 0xb8, 0x0a, 0x00, 0x89, 0x46, 0xf6, 0xe9, 0x2d, 0x01, 0xc7, 0x46, 0xf4, 0x0a, 0x00
    db 0x83, 0x3e, 0xd4, 0x91, 0x00, 0x75, 0x24, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x86, 0x04, 0xeb, 0x22, 0x8b, 0x46, 0x04, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e
    db 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xd6, 0x04, 0x89, 0x46, 0xf2
    db 0x83, 0x3e, 0xd4, 0x91, 0x00, 0x75, 0x24, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x88, 0x04, 0xeb, 0x22, 0x8b, 0x46, 0x04, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e
    db 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xd8, 0x04, 0x89, 0x46, 0xf0
    db 0xb8, 0x07, 0x00, 0x83, 0x3e, 0xd4, 0x91, 0x00, 0x75, 0x03, 0xb8, 0x03, 0x00, 0xb9, 0x00, 0x00
    db 0x83, 0x7e, 0x06, 0x0d, 0x75, 0x03, 0xb9, 0x01, 0x00, 0x03, 0xc1, 0x89, 0x46, 0xf8, 0xc7, 0x46
    db 0xf6, 0x00, 0x00, 0xeb, 0x63, 0xc7, 0x46, 0xf4, 0x0a, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00
    db 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa
    db 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x26, 0x05, 0x89, 0x46, 0xf2, 0x8b
    db 0x87, 0x28, 0x05, 0x89, 0x46, 0xf0, 0xc7, 0x46, 0xf8, 0x0c, 0x00, 0xb8, 0x0e, 0x00, 0x83, 0x7e
    db 0x06, 0x0e, 0x75, 0x03, 0xb8, 0x0d, 0x00, 0x89, 0x46, 0xf6, 0xeb, 0x1c, 0xb2, 0x94, 0xf4, 0x94
    db 0x3d, 0x95, 0x3d, 0x95, 0x07, 0x96, 0x07, 0x96

@..local.l260:
    sub ax, strict word 0xa
    cmp ax, strict word 6
    jae short @..local.l261
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x69b2]
@..local.l261:
    cmp word [bp - 0x000c], byte 0xff
    je short @..local.l262
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
@..local.l262:
    ret
api_idx_0012_2:
    mov ax, 0xffee
    call ds_dispatch_f40b
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_2.l1
    cmp word [bp + 0x6], byte 0
    jle short @..api_idx_0012_2.l1
    cmp word [bp + 0x6], byte 4
    jge short @..api_idx_0012_2.l1
    mov ax, 1
    jmp short @..api_idx_0012_2.l2
@..api_idx_0012_2.l1:
    mov ax, 0
@..api_idx_0012_2.l2:
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0012], byte 0
    jne short @..api_idx_0012_2.l3
    jmp near @..api_idx_0012_2.l20
@..api_idx_0012_2.l3:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6d92], byte 0
    jne short @..api_idx_0012_2.l4
    cmp word [bx - 0x6d14], byte 0
    jne short @..api_idx_0012_2.l4
    jmp near @..api_idx_0012_2.l20
@..api_idx_0012_2.l4:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0012_2.l5
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
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short @..api_idx_0012_2.l9
@..api_idx_0012_2.l5:
    cmp word [bp + 0x4], byte 0
    jle short @..api_idx_0012_2.l9
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
    jne short @..api_idx_0012_2.l6
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 0x4]
@..api_idx_0012_2.l6:
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
    jne short @..api_idx_0012_2.l7
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 0x4]
    jmp short @..api_idx_0012_2.l8
@..api_idx_0012_2.l7:
    mov ax, word [bp + 0x28]
    add ax, word [bp + 0x4]
@..api_idx_0012_2.l8:
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0012_2.l9:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6d92], byte 0
    jne short @..api_idx_0012_2.l10
    jmp near @..api_idx_0012_2.l20
@..api_idx_0012_2.l10:
    mov cx, word [bx - 0x6d92]
    dec cx
    mov ax, word [data_82ee]
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
    jne short @..api_idx_0012_2.l11
    cmp word [bp + 0x4], byte 0
    jg short @..api_idx_0012_2.l12
@..api_idx_0012_2.l11:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0012_2.l15
@..api_idx_0012_2.l12:
    test ax, ax
    je short @..api_idx_0012_2.l13
    mov ax, 3
    jmp short @..api_idx_0012_2.l14
@..api_idx_0012_2.l13:
    mov ax, 0
@..api_idx_0012_2.l14:
    mov cx, word [bp + 0x4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [data_91d0]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x260]
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0012_2.l17
@..api_idx_0012_2.l15:
    cmp word [bp + 0x4], byte 0
    jle short @..api_idx_0012_2.l17
    mov ax, word [bp + 0x4]
    add ax, strict word 0x20
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 3
    jne short @..api_idx_0012_2.l16
    mov ax, 1
@..api_idx_0012_2.l16:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
@..api_idx_0012_2.l17:
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0012_2.l20
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
    je short @..api_idx_0012_2.l18
    cmp dx, byte 1
    jne short @..api_idx_0012_2.l18
    mov ax, 1
    jmp short @..api_idx_0012_2.l19
@..api_idx_0012_2.l18:
    mov ax, 0
@..api_idx_0012_2.l19:
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
@..api_idx_0012_2.l20:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x6e0f]
    sub ah, ah
    jmp near @..local.l276
@..api_idx_0012_2.l21:
    cmp word [data_91d4], byte 2
    je short @..api_idx_0012_2.l22
    jmp near @..local.l272
@..api_idx_0012_2.l22:
    cmp word [bp + 0x4], byte 5
    jl short @..local.l263
    jmp near @..local.l271
@..local.l263:
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
    call api_idx_0004_5
    add sp, byte 0x1c
    mov word [bp - 0x000e], 0xffff
    mov word [bp - 0x000a], 0xffff
    mov word [bp - 0x0010], 0xffff
    mov word [bp - 0x000c], 0xffff
    cmp word [bp + 0x40], byte 0xff
    je short @..local.l264
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
@..local.l264:
    cmp word [bp + 0x4], byte 0
    jle short @..local.l265
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
@..local.l265:
    cmp word [bp - 0x000a], byte 0xff
    jne short @..local.l266
    cmp word [bp - 0x000e], byte 0xff
    jne short @..local.l266
    jmp near @..local.l271
@..local.l266:
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
    jne short @..local.l267
    jmp near @..local.l271
@..local.l267:
    cmp word [data_91d4], byte 0
    jne short @..local.l268
    jmp near @..local.l271
@..local.l268:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 4
    je short @..local.l269
    jmp near @..local.l271
@..local.l269:
    cmp word [bp + 0x6], byte 0
    jne short @..local.l270
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
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short @..local.l271
@..local.l270:
    cmp word [bp + 0x6], byte 4
    jne short @..local.l271
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
    call api_idx_0004_5
    add sp, byte 0x1c
@..local.l271:
    jmp near @..local.l275
@..local.l272:
    cmp word [data_91d4], byte 4
    je short @..local.l273
    jmp near @..local.l275
@..local.l273:
    cmp word [bp + 0x4], byte 4
    jl short @..local.l274
    jmp near @..local.l275
@..local.l274:
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
    jge short @..local.l275
    cmp word [bp + 0x6], byte 2
    jne short @..local.l275
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
    call api_idx_0004_5
    add sp, byte 0x1c
@..local.l275:
    jmp short @..local.l277
@..local.l276:
    cmp ax, strict word 1
    jne short @..local.l277
    jmp near @..api_idx_0012_2.l21
@..local.l277:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x6e28]
    sub ah, ah
    jmp near @..local.l278

    db 0x83, 0x7e, 0x04, 0x05, 0x7d, 0x2e, 0x8b, 0x46, 0x1c, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe6, 0xe3
    db 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x8b, 0x46, 0x1e, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x1c
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe3, 0xe3, 0x83, 0xc4, 0x04, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x38
    db 0xa5, 0x83, 0xc4, 0x08, 0xe9, 0x95, 0x00, 0x83, 0x7e, 0x04, 0x05, 0x7d, 0x2e, 0x8b, 0x46, 0x30
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0xaf, 0xe3, 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x8b, 0x46, 0x32
    db 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x30, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xac, 0xe3, 0x83, 0xc4
    db 0x04, 0x50, 0xff, 0x76, 0x16, 0xe8, 0x01, 0xa5, 0x83, 0xc4, 0x08, 0xeb, 0x5f, 0x83, 0x7e, 0x04
    db 0x05, 0x7d, 0x3c, 0xa1, 0xd2, 0x91, 0x03, 0x06, 0xe8, 0x82, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9
    db 0x8b, 0xc2, 0x85, 0xc0, 0x74, 0x08, 0x8b, 0x46, 0x34, 0x03, 0x46, 0x04, 0xeb, 0x03, 0xb8, 0xff
    db 0xff, 0x50, 0x51, 0x85, 0xd2, 0x74, 0x08, 0x8b, 0x46, 0x36, 0x03, 0x46, 0x04, 0xeb, 0x06, 0x8b
    db 0x46, 0x34, 0x03, 0x46, 0x04, 0x50, 0xff, 0x76, 0x14, 0xe8, 0xbd, 0xa4, 0x83, 0xc4, 0x08, 0xeb
    db 0x1b, 0xeb, 0x19, 0xeb, 0x17, 0xb0, 0x9b, 0xfd, 0x9a, 0x34, 0x9b, 0x6a, 0x9b, 0xae, 0x9b

@..local.l278:
    cmp ax, strict word 5
    jae short @..local.l279
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x644e]
@..local.l279:
    cmp word [bp - 0x0012], byte 0
    jne short @..local.l280
    jmp near @..local.l293
@..local.l280:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6dc4], byte 0
    jne short @..local.l281
    cmp word [bx - 0x6d46], byte 0
    jne short @..local.l281
    jmp near @..local.l293
@..local.l281:
    cmp word [bp + 0x6], byte 2
    jne short @..local.l282
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
    db 0xe8, 0x42, 0xa4 ; call 0xf01f
    add sp, byte 8
    jmp short @..local.l286
@..local.l282:
    cmp word [bp + 0x4], byte 0
    jle short @..local.l286
    mov ax, 0xffff
    cmp word [bp + 0x6], byte 3
    jne short @..local.l283
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
@..local.l283:
    push ax
    mov ax, 2
    push ax
    cmp word [bp + 0x6], byte 3
    jne short @..local.l284
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
    jmp short @..local.l285
@..local.l284:
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 0x4]
@..local.l285:
    push ax
    mov ax, 3
    push ax
    db 0xe8, 0x07, 0xa4 ; call 0xf01f
    add sp, byte 8
@..local.l286:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6dc4], byte 0
    jne short @..local.l287
    jmp near @..local.l293
@..local.l287:
    mov cx, word [bx - 0x6dc4]
    dec cx
    mov ax, word [data_82ee]
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
    jne short @..local.l288
    cmp word [bp + 0x4], byte 0
    jg short @..local.l289
@..local.l288:
    cmp word [bp + 0x6], byte 2
    jne short @..local.l290
@..local.l289:
    mov cx, word [bp + 0x4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [data_91d0]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x260]
    mov word [bp - 0x0008], ax
    jmp short @..local.l292
@..local.l290:
    cmp word [bp + 0x4], byte 0
    jle short @..local.l292
    mov ax, word [bp + 0x4]
    add ax, strict word 0x20
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 3
    jne short @..local.l291
    mov ax, 1
@..local.l291:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
@..local.l292:
    cmp word [bp - 0x0004], byte 0
    je short @..local.l293
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
@..local.l293:
    cmp word [bp + 0x4], byte 4
    jl short @..local.l294
    jmp near @..local.l315
@..local.l294:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x6d60], 3
    je short @..local.l295
    jmp near @..local.l301
@..local.l295:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short @..local.l296
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short @..local.l296
    jmp near @..local.l301
@..local.l296:
    cmp word [bp + 0x4], byte 0
    jne short @..local.l297
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..local.l297
    cmp word [data_8f22], byte 0
    je short @..local.l297
    mov word [data_8f20], 0xffff
@..local.l297:
    cmp word [bp + 0x4], byte 0
    jne short @..local.l298
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..local.l298
    mov ax, 2
    jmp short @..local.l299
@..local.l298:
    mov ax, 1
@..local.l299:
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x4]
    cmp word [bp - 0x0004], byte 2
    je short @..local.l300
    dec ax
@..local.l300:
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
@..local.l301:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x6d60], 1
    je short @..local.l302
    cmp byte [bx - 0x6d60], 2
    jne short @..local.l304
@..local.l302:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short @..local.l303
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..local.l304
@..local.l303:
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
    mov al, byte [bx - 0x6d60]
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
@..local.l304:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x6ddd], 0
    jne short @..local.l305
    jmp near @..local.l315
@..local.l305:
    cmp word [bp + 0x4], byte 0
    jne short @..local.l306
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..local.l306
    cmp word [data_8f22], byte 0
    je short @..local.l306
    mov al, byte [bx - 0x6ddd]
    sub ah, ah
    mov word [data_8f20], ax
    jmp near @..local.l315
@..local.l306:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short @..local.l307
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short @..local.l307
    jmp near @..local.l315
@..local.l307:
    mov al, byte [bx - 0x6ddd]
    sub ah, ah
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [data_82ee]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, dx
    jmp near @..local.l312
@..local.l308:
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
    jne short @..local.l309
    mov ax, 4
@..local.l309:
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
    jmp short @..local.l315
@..local.l310:
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short @..local.l311
    mov ax, 1
@..local.l311:
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
    jmp short @..local.l315
@..local.l312:
    cmp ax, strict word 0
    jne short @..local.l313
    jmp near @..local.l308
@..local.l313:
    cmp ax, strict word 1
    je short @..local.l310
    cmp ax, strict word 2
    jne short @..local.l314
    jmp near @..local.l308
@..local.l314:
    cmp ax, strict word 3
    je short @..local.l310
@..local.l315:
    ret
api_idx_0016:
    mov ax, 0xffea
    call ds_dispatch_f40b
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xb]
    sub ah, ah
    mov word [bp - 0x000c], ax
    cmp byte [bx + 0xa], 0
    je short @..api_idx_0016.l1
    jmp near @..api_idx_0016.l10
@..api_idx_0016.l1:
    mov al, byte [bx + 0x8]
    sub ah, ah
    mov word [bp - 0x0002], ax
    jmp near @..api_idx_0016.l8
@..api_idx_0016.l2:
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
    jne short @..api_idx_0016.l3
    mov ax, 3
    jmp short @..api_idx_0016.l4
@..api_idx_0016.l3:
    mov ax, 1
@..api_idx_0016.l4:
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0004], ax
    jmp near @..api_idx_0016.l6
@..api_idx_0016.l5:
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
    call ds_dispatch_efd1
    add sp, byte 0x16
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x29c]
    add word [bp - 0x000a], ax
    inc word [bp - 0x0004]
@..api_idx_0016.l6:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jge short @..api_idx_0016.l7
    jmp near @..api_idx_0016.l5
@..api_idx_0016.l7:
    inc word [bp - 0x0002]
@..api_idx_0016.l8:
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    inc ax
    inc ax
    inc ax
    cmp ax, word [bp - 0x0002]
    jle short @..api_idx_0016.l9
    jmp near @..api_idx_0016.l2
@..api_idx_0016.l9:
    jmp near @..api_idx_0016.l12
@..api_idx_0016.l10:
    mov word [bp - 0x000a], 0
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    mov byte [bp - 0x0016], al
    mov byte [bp - 0x0015], 0
    mov word [bp - 0x0004], 0
@..api_idx_0016.l11:
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
    call ds_dispatch_efd1
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
    jl short @..api_idx_0016.l11
@..api_idx_0016.l12:
    ret
api_idx_0024:
    mov ax, 0xffdc
    call ds_dispatch_f40b
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call ds_dispatch_f99f
    add ax, strict word 1
    adc dx, byte 0
    mov word [bp - 0x0004], ax
    add ax, strict word 0x12
    mov cx, 0x18
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call ds_dispatch_f9cd
    mov cx, 0x3c
    mov bx, 0
    call ds_dispatch_f99f
    cmp dx, byte 0
    jg short @..api_idx_0024.l1
    jne short @..api_idx_0024.l2
    cmp ax, strict word 0xc
    jb short @..api_idx_0024.l2
@..api_idx_0024.l1:
    jmp short @..api_idx_0024.l3
@..api_idx_0024.l2:
    cmp word [bp - 0x0006], byte 0x0c
    jle short @..api_idx_0024.l3
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x12
    mov cx, 0x18
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
@..api_idx_0024.l3:
    mov ax, 0x3c
    imul word [bp - 0x0006]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    sub ax, cx
    sbb dx, bx
    mov cx, 0x5a0
    mov bx, 0
    call ds_dispatch_f9cd
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jl short @..api_idx_0024.l4
    cmp ax, 0x1e0
    jl short @..local.l316
@..api_idx_0024.l4:
    ret
@..local.l316:
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0
@..local.l317:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0016], 0xff01
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..local.l317
    cmp word [bp - 0x000a], byte 0x3e
    jge short @..local.l318
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x72
    mov word [bp - 0x0014], ax
@..local.l318:
    cmp word [bp - 0x000a], byte 0x10
    jl short @..local.l319
    cmp word [bp - 0x000a], strict word 0xd0
    jg short @..local.l319
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xffe0
    mov word [bp - 0x0012], ax
@..local.l319:
    cmp word [bp - 0x000a], strict word 0xa2
    jl short @..local.l320
    cmp word [bp - 0x000a], strict word 0xf0
    jg short @..local.l320
    mov ax, word [bp - 0x000a]
    add ax, 0xff4e
    mov word [bp - 0x0010], ax
@..local.l320:
    mov ax, word [data_82ee]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0016], strict word 0xff01
    jne short @..local.l321
    ret
@..local.l321:
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
    je short @..local.l322
    mov ax, 0x22
    sub ax, word [bp - 0x000c]
    jmp short @..local.l323
@..local.l322:
    mov ax, word [bp - 0x000c]
@..local.l323:
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
    jge short @..local.l324
    mov ax, 0
@..local.l324:
    mov word [bp - 0x001a], ax
    cmp dx, byte 5
    jge short @..local.l325
    inc dx
    mov ax, dx
    jmp short @..local.l326
@..local.l325:
    sub cx, word [bp - 0x0018]
    mov ax, cx
    inc ax
@..local.l326:
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
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
api_idx_001e:
    mov ax, 0xffe2
    call ds_dispatch_f40b
    mov word [bp - 0x0004], 0x14a
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
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
    call ds_dispatch_f9cd
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short @..api_idx_001e.l1
    cmp ax, 0x36c
    jl short @..local.l327
@..api_idx_001e.l1:
    ret
@..local.l327:
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0002], 0
@..local.l328:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0014], 0xff01
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..local.l328
    cmp word [bp - 0x0008], byte 0x68
    jg short @..local.l329
    mov ax, 0x58
    sub ax, word [bp - 0x0008]
    mov word [bp - 0x0012], ax
@..local.l329:
    cmp word [bp - 0x0008], byte 0x3a
    jl short @..local.l330
    cmp word [bp - 0x0008], strict word 0xfa
    jg short @..local.l330
    mov ax, 0xb0
    mov cx, word [bp - 0x0008]
    add cx, byte 0xc6
    sub ax, cx
    mov word [bp - 0x0014], ax
@..local.l330:
    cmp word [bp - 0x0008], strict word 0xcc
    jl short @..local.l331
    cmp word [bp - 0x0008], strict word 0x124
    jg short @..local.l331
    mov ax, 0xb0
    mov cx, word [bp - 0x0008]
    add cx, strict word 0xff34
    sub ax, cx
    mov word [bp - 0x000e], ax
@..local.l331:
    mov ax, word [data_82ee]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0014], strict word 0xff01
    jne short @..local.l332
    ret
@..local.l332:
    cmp word [bp - 0x0006], data_010e
    jge short @..local.l333
    mov ax, word [bp - 0x0006]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 5
    mov word [bp - 0x000c], ax
    jmp short @..local.l337
@..local.l333:
    mov ax, word [bp - 0x0006]
    cmp ax, 0x276
    jl short @..local.l334
    add ax, 0xfd8a
    mov cx, 9
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x20
    sub ax, cx
    mov word [bp - 0x000c], ax
    jmp short @..local.l337
@..local.l334:
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
    je short @..local.l335
    mov ax, 0x24
    sub ax, word [bp - 0x000a]
    jmp short @..local.l336
@..local.l335:
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x20
@..local.l336:
    mov word [bp - 0x000c], ax
@..local.l337:
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
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
api_idx_0030:
    mov ax, 0xffd0
    call ds_dispatch_f40b
    mov word [bp - 0x0024], 0
    mov word [bp - 0x0022], 4
    mov word [bp - 0x0020], 1
    mov word [bp - 0x001e], 3
    mov word [bp - 0x001c], 2
    mov word [data_8f20], 0
    mov ax, word [data_8f46]
    mov word [bp - 0x000a], ax
    mov ax, word [data_8f44]
    mov word [bp - 0x000c], ax
    mov ax, word [data_8f42]
    mov word [bp - 0x000e], ax
    mov ax, word [data_8f40]
    mov word [bp - 0x0010], ax
    mov ax, word [data_8f3e]
    mov word [bp - 0x0012], ax
    mov word [data_8f48], 0
    mov word [data_8456], 0
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
    cmp word [data_830c], byte 0x0a
    je short @..api_idx_0030.l1
    cmp word [data_830c], byte 0x19
    je short @..api_idx_0030.l1
    jmp near @..local.l338
@..api_idx_0030.l1:
    push ax
    mov ax, word [data_0e14]
    add ax, 0x930
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0030.l2
    jmp near @..local.l338
@..api_idx_0030.l2:
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, word [data_830c]
    cmp ax, word [data_8f28]
    jne short @..api_idx_0030.l4
    mov ax, word [bp - 0x0012]
    cmp ax, word [data_8f2a]
    jne short @..api_idx_0030.l4
    mov ax, word [bp - 0x000e]
    cmp ax, word [data_8f2e]
    jne short @..api_idx_0030.l4
    mov ax, word [bp - 0x0010]
    cmp ax, word [data_8f2c]
    jne short @..api_idx_0030.l4
    cmp word [data_8f22], byte 0
    je short @..api_idx_0030.l3
    mov word [data_8f20], 0xffff
@..api_idx_0030.l3:
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
    mov al, byte [data_7b05]
    sub ah, ah
    inc ax
    push ax
    mov al, byte [api_idx_0002_14]
    sub ah, ah
    inc ax
    push ax
    mov ax, 0xc
    push ax
    call ds_dispatch_efd1
    add sp, byte 0x16
@..api_idx_0030.l4:
    call ds_dispatch_da22
    ret
@..local.l338:
    cmp word [data_5b6e], byte 1
    je short loc_553f
    cmp word [data_91a6], byte 0
    je short loc_557e
    push word [bp - 0x0008]
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    db 0xe8, 0x28, 0x97 ; call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    db 0x74, 0x2b ; je short loc_557e
    cmp word [data_91a6], byte 0
    je short loc_557a
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
    db 0xe8, 0x90, 0x93 ; call ds_dispatch_e901
    add sp, byte 0x0a
    call api_idx_001e
    call api_idx_0024
    db 0xe8, 0xa5, 0x84 ; call ds_dispatch_da22
    ret
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x920a
    push ax
    db 0xe8, 0x79, 0x9d ; call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91f1
    push ax
    db 0xe8, 0x67, 0x9d ; call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91d8
    push ax
    db 0xe8, 0x55, 0x9d ; call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x9b1a
    push ax
    db 0xe8, 0x43, 0x9d ; call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x9223
    push ax
    db 0xe8, 0x31, 0x9d ; call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x92ba
    push ax
    db 0xe8, 0x1f, 0x9d ; call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x92a0
    push ax
    db 0xe8, 0x0d, 0x9d ; call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x923c
    push ax
    db 0xe8, 0xfb, 0x9c ; call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x92ec
    push ax
    db 0xe8, 0xe9, 0x9c ; call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x926e
    push ax
    db 0xe8, 0xd7, 0x9c ; call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x7f8
    push ax
    mov ax, 0x9320
    push ax
    db 0xe8, 0xc5, 0x9c ; call ds_dispatch_f306
    add sp, byte 6
    mov word [data_931e], 0
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
    mov word [data_9b34], 5
    mov ax, word [data_8f46]
    add ax, word [data_8f44]
    add ax, word [data_82ee]
    mov cx, 2
    cwd
    idiv cx
    mov word [data_91d2], dx
    mov word [data_91d4], 0
    mov ax, word [data_5b6e]
    jmp near loc_59f0
    mov word [data_91d4], 0
    cmp word [data_830c], byte 0x1e
    jne short loc_56af
    cmp word [data_8f3e], byte 8
    db 0x75, 0x02 ; jne short loc_56af
    jmp short loc_56d2
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
    db 0xe8, 0x2d, 0x99 ; call 0xf01f
    add sp, byte 8
    jmp near loc_59fd
    mov word [data_91d4], 1
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
    db 0xe8, 0xec, 0x91 ; call ds_dispatch_e901
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
    db 0xe8, 0xe1, 0x98 ; call 0xf01f
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
    db 0xe8, 0xbe, 0x98 ; call 0xf01f
    add sp, byte 8
    db 0xe9, 0x96, 0x02 ; jmp near loc_59fd
    mov word [data_91d4], 2
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
    db 0xe8, 0x7d, 0x91 ; call ds_dispatch_e901
    add sp, byte 0x0a
    call api_idx_001e
    call api_idx_0024
    cmp word [data_830c], byte 0x0e
    jne short loc_57d1
    cmp word [data_8f3e], byte 9
    jle short loc_57d1
    cmp word [data_8f3e], byte 0x0a
    jg short loc_57b8
    mov ax, word [data_82ee]
    cmp ax, strict word 2
    je short loc_57b8
    cmp word [data_82ee], byte 0
    je short loc_57d1
    cmp word [data_8f40], byte 5
    jge short loc_57d1
    mov ax, 0
    push ax
    mov ax, 0x50
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x48
    push ax
    push ax
    db 0xe8, 0x35, 0x91 ; call ds_dispatch_e901
    add sp, byte 0x0a
    jmp short loc_5817
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
    db 0xe8, 0x2e, 0x98 ; call 0xf01f
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
    db 0xe8, 0x0b, 0x98 ; call 0xf01f
    add sp, byte 8
    db 0xe9, 0xe3, 0x01 ; jmp near loc_59fd
    mov word [data_91d4], 3
    mov ax, 0xff
    push ax
    mov ax, 0x48
    cmp word [data_91a6], byte 0
    je short loc_5831
    mov ax, 0x8e
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    db 0xe8, 0xc0, 0x90 ; call ds_dispatch_e901
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
    db 0xe8, 0xb5, 0x97 ; call 0xf01f
    add sp, byte 8
    cmp word [data_91a6], byte 0
    jne short loc_5897
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
    db 0xe8, 0x8b, 0x97 ; call 0xf01f
    add sp, byte 8
    db 0xe9, 0x63, 0x01 ; jmp near loc_59fd
    mov word [data_91d4], 4
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
    db 0xe8, 0x4a, 0x90 ; call ds_dispatch_e901
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
    db 0xe8, 0x2a, 0x90 ; call ds_dispatch_e901
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
    db 0xe8, 0x25, 0x97 ; call 0xf01f
    add sp, byte 8
    db 0xe9, 0xfd, 0x00 ; jmp near loc_59fd
    mov word [data_91d4], 5
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
    db 0xe8, 0xe4, 0x8f ; call ds_dispatch_e901
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
    db 0xe8, 0xd9, 0x96 ; call 0xf01f
    add sp, byte 8
    cmp word [data_830c], byte 8
    jne short loc_598a
    cmp word [data_8f3e], byte 6
    db 0x75, 0x33 ; jne short loc_598a
    cmp word [data_8f40], byte 4
    db 0x75, 0x2c ; jne short loc_598a
    mov ax, word [data_8f42]
    cmp ax, strict word 2
    je short loc_596b
    cmp ax, strict word 1
    jne short loc_5973
    mov ax, word [data_82ee]
    cmp ax, strict word 1
    je short data_5988
    mov ax, word [data_8f42]
    cmp ax, strict word 5
    je short loc_5980
    cmp ax, strict word 6
    db 0x75, 0x0a ; jne short loc_598a
    mov ax, word [data_82ee]
    cmp ax, strict word 3
    db 0x75, 0x02 ; jne short loc_598a
    jmp short loc_59a1
    mov ax, 0
    push ax
    mov ax, 0x50
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x48
    push ax
    push ax
    db 0xe8, 0x63, 0x8f ; call ds_dispatch_e901
    add sp, byte 0x0a
    cmp word [data_830c], byte 8
    je short loc_59bd
    cmp word [data_830c], byte 0x0b
    jne short loc_59e0
    cmp word [data_8f3e], byte 6
    db 0x75, 0x2a ; jne short loc_59e0
    cmp word [data_8f40], byte 3
    jle short loc_59e0
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
    db 0xe8, 0x42, 0x96 ; call 0xf01f
    add sp, byte 8
    jmp short loc_59fd
    inc sp
    stosb
    loopne data_598c
    aas
    cmpsw
    scasb
    cmpsw
    popaw
    test al, 0xe1
    test al, 0x47
    test ax, 0x73d
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x55d7]
    mov word [data_91d6], 0
    mov ax, word [data_91d6]
    cmp ax, word [data_9b34]
    jl short loc_5a0f
    jmp near loc_62dd
    mov ax, word [data_8f46]
    add ax, word [data_8f44]
    add ax, word [data_82ee]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [data_91d6]
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xc1 ; mov ax, cx
    mov cx, 2
    cwd
    idiv cx
    mov word [data_91d0], dx
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
    je short loc_5ab7
    mov ax, word [data_91d4]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    cmp ax, strict word 1
    jne short loc_5aa6
    mov ax, word [data_91d4]
    cmp ax, strict word 5
    je short loc_5a90
    cmp word [data_91a6], byte 0
    je short loc_5a7a
    mov word [data_9b36], 0
    jmp short loc_5a8e
    mov ax, 5
    imul word [data_91d6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 1
    mov word [data_9b36], 4
    jmp short loc_5aa4
    mov ax, 5
    imul word [data_91d6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 3
    mov word [data_9b36], 0
    jmp short loc_5aac
    mov word [data_9b36], 2
    mov ax, word [data_9b36]
    mov word [data_9b38], ax
    mov word [data_9b3a], ax
    jmp short loc_5b10
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [data_9b36], ax
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
    mov word [data_9b38], ax
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
    mov word [data_9b3a], ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [data_9b3c], ax
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [data_9b3e], ax
    cmp word [data_91d6], byte 1
    jle short loc_5bc9
    mov ax, 0xfffe
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [data_9b40], ax
    mov ax, 2
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [data_9b42], ax
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
    mov word [data_9b44], ax
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
    mov word [data_9b46], ax
    jmp short loc_5be1
    mov word [data_9b40], 0
    mov word [data_9b42], 0
    mov word [data_9b44], 0
    mov word [data_9b46], 0
    cmp word [data_9b36], byte 0
    jne short loc_5bf5
    mov ax, word [data_8456]
    cmp ax, word [data_91d6]
    db 0x75, 0x04 ; jne short loc_5bf5
    inc word [data_8456]
    mov ax, word [data_91d0]
    mov word [data_9b18], ax
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
    push word [data_9b36]
    push word [data_91d6]
    call api_idx_0010_2
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
    push word [data_91d6]
    call api_idx_0012_2
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
    push word [data_9b38]
    push word [data_91d6]
    call api_idx_0012
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
    push word [data_9b3a]
    push word [data_91d6]
    call api_idx_0012
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
    mov ax, data_0076
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
    push word [data_9b44]
    push word [data_91d6]
    call api_idx_0012
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
    mov ax, data_0076
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
    push word [data_9b46]
    push word [data_91d6]
    call api_idx_0012
    add sp, byte 0x40
    mov ax, word [data_91d0]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_9b18], dx
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
    push word [data_9b3c]
    push word [data_91d6]
    call api_idx_0010_2
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
    push word [data_91d6]
    call api_idx_0012_2
    add sp, byte 0x40
    mov ax, word [data_91d0]
    mov word [data_9b18], ax
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
    push word [data_9b40]
    push word [data_91d6]
    call api_idx_0010_2
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
    push word [data_91d6]
    call api_idx_0012_2
    add sp, byte 0x40
    mov ax, word [data_91d0]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_9b18], dx
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
    push word [data_9b3e]
    push word [data_91d6]
    call api_idx_0010_2
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
    push word [data_91d6]
    call api_idx_0012_2
    add sp, byte 0x40
    mov ax, word [data_91d0]
    mov word [data_9b18], ax
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
    push word [data_9b42]
    push word [data_91d6]
    call api_idx_0010_2
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
    push word [data_91d6]
    call api_idx_0012_2
    add sp, byte 0x40
    inc word [data_91d6]
    jmp near loc_5a03
    mov ax, word [data_9b34]
    dec ax
    mov word [data_91d6], ax
    jmp near loc_675e
    mov word [bp - 0x0004], 0xff
    mov ax, word [data_931e]
    dec ax
    mov word [bp - 0x0002], ax
    jmp short loc_6358
    mov ax, 0x11
    imul word [bp - 0x0002]
    add ax, 0x9320
    mov word [bp - 0x0026], ax
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0xd]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [data_91d6]
    jne short loc_6355
    mov al, byte [bx + 0xc]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x0004]
    db 0x75, 0x3d ; jne short loc_6355
    cmp word [bx], byte 0xff
    je short loc_6334
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
    je short loc_6355
    push word [bx + 0x6]
    mov al, byte [bx + 0x9]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bx + 0x2]
    mov al, byte [bx + 0xe]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    db 0xe8, 0xcd, 0x8c ; call 0xf01f
    add sp, byte 8
    dec word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 0
    jge short loc_62f5
    mov ax, 0
    cmp word [bp - 0x0004], strict word 0xff
    je short loc_6375
    mov ax, 0xffff
    cmp word [bp - 0x0004], strict word 0xfb
    jne short loc_6375
    mov ax, 1
    mov word [bp - 0x0018], ax
    cmp ax, strict word 0xffff
    jne short loc_6380
    jmp near loc_6436
    mov ax, word [data_931e]
    dec ax
    mov word [bp - 0x0002], ax
    jmp near loc_642d
    mov ax, 0x11
    imul word [bp - 0x0002]
    add ax, 0x9320
    mov word [bp - 0x0026], ax
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0xd]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [data_91d6]
    je short loc_63a6
    jmp near loc_642a
    mov al, byte [bx + 0xc]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, 0xfa
    jl short loc_63b3
    db 0xe9, 0x77, 0x00 ; jmp near loc_642a
    mov al, byte [bx + 0x10]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x0018]
    jne short loc_642a
    cmp byte [bx + 0xc], 4
    jne short loc_63d0
    cmp byte [bx + 0x9], 1
    db 0x75, 0x07 ; jne short loc_63d0
    push bx
    call api_idx_0016
    pop cx
    jmp short loc_642a
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
    jl short loc_63d5
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
    db 0xe8, 0xaa, 0x8b ; call ds_dispatch_efd1
    add sp, byte 0x16
    dec word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 0
    jl short loc_6436
    jmp near loc_638a
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, 0xfb
    jl short loc_6444
    jmp near loc_62ec
    mov al, byte [data_5b55]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, 0xff
    jne short loc_6451
    jmp near loc_65ee
    cmp word [data_91d6], byte 0
    je short loc_645b
    db 0xe9, 0x93, 0x01 ; jmp near loc_65ee
    cmp word [data_91d4], byte 0
    jne short loc_646c
    cmp byte [data_91e4], 3
    jne short loc_646c
    jmp near loc_65ee
    mov ax, word [data_91d4]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    jne short loc_6485
    cmp word [data_8456], byte 1
    jg short loc_6485
    db 0xe9, 0x69, 0x01 ; jmp near loc_65ee
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0006]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x6e60], byte 0
    jg short loc_649b
    jmp near loc_6528
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
    db 0xe8, 0xd8, 0x8a ; call ds_dispatch_efd1
    add sp, byte 0x16
    mov ax, word [bp - 0x0006]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x6e3e], byte 0
    je short loc_6510
    dec word [bx - 0x6e60]
    jmp short loc_6514
    inc word [bx - 0x6e60]
    mov al, byte [data_7d3c]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bx - 0x6e60]
    jge short loc_6525
    mov word [bx - 0x6e60], 0
    jmp near loc_65e0
    cmp word [data_8f22], byte 0
    je short loc_6532
    db 0xe9, 0xae, 0x00 ; jmp near loc_65e0
    mov ax, 0x64
    push ax
    db 0xe8, 0x70, 0x52 ; call ds_dispatch_b7a9
    pop cx
    cmp ax, word [bp - 0x0006]
    jle short loc_6542
    db 0xe9, 0x9e, 0x00 ; jmp near loc_65e0
    mov ax, 2
    push ax
    db 0xe8, 0x60, 0x52 ; call ds_dispatch_b7a9
    pop cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6e38], ax
    mov ax, word [data_91d4]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    je short loc_656b
    push cx
    db 0xe8, 0x41, 0x52 ; call ds_dispatch_b7a9
    pop cx
    jmp short loc_656e
    mov ax, 0
    mov cx, word [bp - 0x0006]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6e3e], ax
    mov ax, 1
    cmp word [bx - 0x6e3e], byte 0
    je short loc_6588
    mov al, byte [data_7d3c]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bx - 0x6e60], ax
    mov ax, word [data_91d4]
    mov cx, 1
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    je short loc_65a0
    mov ax, 0x1e
    jmp short loc_65a3
    mov ax, 0xa
    mov word [bp - 0x0002], ax
    cmp word [bx - 0x6e38], byte 0
    je short loc_65b4
    push ax
    db 0xe8, 0xf8, 0x51 ; call ds_dispatch_b7a9
    pop cx
    jmp short loc_65c2
    push word [bp - 0x0002]
    db 0xe8, 0xef, 0x51 ; call ds_dispatch_b7a9
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
    db 0xe8, 0xd5, 0x51 ; call ds_dispatch_b7a9
    pop cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6e4a], ax
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jge short loc_65ee
    jmp near loc_648a
    cmp word [data_91d4], byte 0
    je short loc_6600
    mov ax, word [data_91d4]
    cmp ax, strict word 2
    jg short loc_6600
    jmp near loc_675a
    mov word [bp - 0x0014], 0
    mov ax, word [bp - 0x0014]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    db 0x03, 0xdd ; add bx, bp
    mov ax, word [bx - 0x0024]
    mov word [bp - 0x0002], ax
    mov ax, 5
    imul word [data_91d6]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0002]
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xd9 ; mov bx, cx
    mov al, byte [bx - 0x6df6]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x001a], ax
    test ax, ax
    jne short loc_6634
    jmp near loc_674c
    mov ax, 0x28
    imul word [data_91d6]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx + 0x2a6], byte 0
    jne short loc_6652
    db 0xe9, 0xfa, 0x00 ; jmp near loc_674c
    cmp word [bp - 0x001a], byte 1
    je short loc_665f
    cmp word [data_91a6], byte 0
    je short loc_6686
    mov ax, 0
    cmp word [data_91a6], byte 0
    je short loc_666c
    mov ax, 0xff
    push ax
    push word [bx + 0x2ac]
    push word [bx + 0x2aa]
    push word [bx + 0x2a8]
    push word [bx + 0x2a6]
    db 0xe8, 0x81, 0x82 ; call ds_dispatch_e901
    add sp, byte 0x0a
    jmp near loc_673f
    cmp word [data_91d6], byte 0
    jg short loc_6690
    db 0xe9, 0xaf, 0x00 ; jmp near loc_673f
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add ax, word [data_91d6]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x76a0], 0
    jne short loc_66a9
    db 0xe9, 0x96, 0x00 ; jmp near loc_673f
    mov ax, 2
    push ax
    db 0xe8, 0xf9, 0x50 ; call ds_dispatch_b7a9
    pop cx
    add ax, word [data_8f46]
    add ax, word [data_8f44]
    add ax, word [data_82ee]
    add ax, word [data_91d6]
    mov cx, 2
    cwd
    idiv cx
    mov word [data_91d0], dx
    mov al, byte [data_91d6]
    mov byte [bp - 0x0030], al
    mov byte [bp - 0x002f], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add ax, word [data_91d6]
    shl ax, 1
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x76a0]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, 0xff
    jne short loc_6704
    mov ax, 0xffee
    cmp word [data_91d0], byte 0
    je short loc_6701
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
    add ax, word [data_91d6]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x76e9]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    push word [bp - 0x0006]
    mov ax, 9
    push ax
    db 0xe8, 0x95, 0x88 ; call ds_dispatch_efd1
    add sp, byte 0x16
    cmp word [data_91a6], byte 0
    je short loc_674c
    call api_idx_001e
    call api_idx_0024
    inc word [bp - 0x0014]
    mov ax, word [bp - 0x0014]
    cmp ax, strict word 5
    jge short loc_675a
    jmp near loc_6605
    dec word [data_91d6]
    cmp word [data_91d6], byte 0
    jl short loc_6768
    jmp near loc_62e7
    db 0xe8, 0xb7, 0x72 ; call ds_dispatch_da22
    ret
loc_676c:
    mov ax, 0
    call ds_dispatch_f40b
    call api_idx_0030
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
    ret
math_loc_678c:
    mov ax, 0
    call ds_dispatch_f40b
    mov bx, word [data_0e14]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jg short @..local.l339
    add ax, strict word 7
    cmp ax, word [bp + 0x6]
    jl short @..local.l339
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    jg short @..local.l339
    add ax, strict word 7
    cmp ax, word [bp + 0x8]
    jl short @..local.l339
    mov ax, si
    ret
@..local.l339:
    mov ax, 0xffff
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    push word [bp + 0xc]
    push word [bp + 0xa]
    mov bx, word [bp + 0x8]
    push word [bx]
    call math_loc_678c
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..local.l341
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [data_8f48]
    call math_loc_678c
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..local.l341
    mov bx, word [bp + 0x8]
    mov ax, word [bx]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
@..api_idx_0004_6.l1:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp - 0x0002]
    call math_loc_678c
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..local.l341
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov bx, word [bp + 0x8]
    cmp dx, word [bx]
    jne short @..local.l340
    mov ax, 1
    ret
@..local.l340:
    jmp short @..api_idx_0004_6.l1
@..local.l341:
    mov ax, word [bp + 0xa]
    push ax
    mov bx, word [data_0e14]
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
    mov bx, word [data_0e14]
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
    mov word [data_8f48], ax
    mov ax, 0
    ret
api_idx_0002_11:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    jmp short @..local.l344
@..api_idx_0002_11.l1:
    mov bx, word [data_0e12]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si + 0x870]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    je short @..local.l342
    mov ax, 0xffff
    ret
@..local.l342:
    mov al, byte [bx + si + 0x690]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..local.l343
    mov al, byte [bx + si + 0x780]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..local.l343
    cmp byte [bx + si + 0x5a0], 0
    jbe short @..local.l343
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..local.l343
    mov ax, word [bp - 0x0002]
    ret
@..local.l343:
    inc word [bp - 0x0002]
@..local.l344:
    cmp word [bp - 0x0002], strict word 0xf0
    jl short @..api_idx_0002_11.l1
    mov ax, 0xffff
    ret
loc_68f2:
    mov ax, 0
    call ds_dispatch_f40b
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
    ret
api_idx_0006_5:
    mov ax, 0xfffa
    call ds_dispatch_f40b
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
    mov ax, word [data_0e10]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l348
@..api_idx_0006_5.l1:
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..local.l347
    mov al, byte [bx + 0x1]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..local.l347
    cmp word [bp + 0x6], byte 6
    jne short @..local.l346
    mov ax, word [bx + 0x2]
    cmp ax, word [bp + 0x8]
    jne short @..local.l345
    mov ax, word [bp - 0x0002]
    ret
@..local.l345:
    jmp short @..local.l347
@..local.l346:
    mov ax, word [bx + 0x2]
    cmp ax, word [bp - 0x0004]
    jne short @..local.l347
    mov ax, word [bp - 0x0002]
    ret
@..local.l347:
    add word [bp - 0x0006], byte 6
    inc word [bp - 0x0002]
@..local.l348:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_590e]
    jl short @..api_idx_0006_5.l1
    mov ax, 0xffff
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0006_5
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_7.l2
    mov ax, word [data_590e]
    mov word [bp - 0x0002], ax
    inc word [data_590e]
    mov ax, word [data_590e]
    cmp ax, 0x200
    jl short @..api_idx_0004_7.l2
@..api_idx_0004_7.l1:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..api_idx_0004_7.l1
@..api_idx_0004_7.l2:
    mov ax, 6
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [data_0e10]
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
    jmp short @..api_idx_0004_7.l3
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
    jmp short @..api_idx_0004_7.l4
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..api_idx_0004_7.l4
    mov ax, word [bp + 0xe]
    xchg al, ah
    sub al, al
    add ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..api_idx_0004_7.l4
    mov ax, word [bp + 0x8]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..api_idx_0004_7.l4
    sahf
    mov dx, 0xbac1
    sar word [bp + si - 0x453f], 0xc1
    mov dx, 0xbacc
    db 0xde, 0xba
@..api_idx_0004_7.l3:
    db 0x3d, 0x07
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x450e]
@..api_idx_0004_7.l4:
    ret
loc_6ac7:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [bp + 0x4], byte 0
    jle short @..local.l351
    mov ax, word [bp + 0x4]
    cmp ax, strict word 5
    jl short @..local.l349
    cmp ax, strict word 8
    je short @..local.l349
    cmp ax, strict word 9
    jne short @..local.l350
@..local.l349:
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..local.l351
@..local.l350:
    push word [bp + 0x4]
    call ds_dispatch_d7aa
    pop cx
    mov ax, 0x10
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, 0x10
    push ax
    call ds_dispatch_d6c6
    pop cx
    mov word [data_598e], 0xffff
@..local.l351:
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push word [data_8d10]
    push word [data_8d0e]
    call ds_dispatch_e94f
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
    mov ax, api_idx_0002
    push ax
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
math_loc_6b5a:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [data_9b48], byte 0
    je short @..local.l352
    ret
@..local.l352:
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_bb33
    add sp, byte 8
    mov ax, 0x3c
    push ax
    call ds_dispatch_b7a9
    pop cx
    cwd
    les bx, word [ds_data_0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    add ax, strict word 0x24
    adc dx, byte 0
    mov word [data_919c], dx
    mov word [data_919a], ax
    cmp word [bp + 0x4], byte 0
    je short @..local.l354
    mov ax, word [data_905a]
    cmp byte [data_598c], 0
    je short @..local.l353
    shl ax, 1
@..local.l353:
    push ax
    call api_idx_0006_2
    pop cx
    jmp short @..local.l356
@..local.l354:
    call ds_dispatch_baef
    test ax, ax
    jne short @..local.l356
    call math_loc_0f1d
    test ax, ax
    je short @..local.l355
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
    cmp word [data_5b3e], byte 0
    jne short @..local.l355
    call loc_676c
@..local.l355:
    mov ax, 0
    push ax
    call loc_0ea6
    pop cx
    jmp short @..local.l354
@..local.l356:
    cmp word [data_59fa], byte 0
    je short @..local.l357
    cmp word [data_9b4a], byte 0
    jne short @..local.l357
    mov word [data_9b48], 1
@..local.l357:
    call api_idx_000a_2
    mov word [data_9b4c], 0
    ret
api_idx_0004_8:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    cmp word [data_9b4c], byte 3
    jle short @..api_idx_0004_8.l1
    mov ax, 0
    push ax
    call math_loc_6b5a
    pop cx
@..api_idx_0004_8.l1:
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short @..local.l358
    inc word [data_9b4c]
    ret
@..local.l358:
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
    jmp short @..local.l361
@..local.l359:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov word [bp - 0x0002], 0x44
    jmp short @..local.l362
@..local.l360:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov ax, word [data_9b4e]
    mov word [bp - 0x0002], ax
    jmp short @..local.l362
@..local.l361:
    cmp ax, strict word 0x24
    je short @..local.l359
    cmp ax, strict word 0x5e
    je short @..local.l360
@..local.l362:
    mov ax, 0xc
    imul word [data_9b4c]
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
    mov word [data_9b4e], ax
    inc word [data_9b4c]
    ret
api_idx_0090:
    mov ax, 0xff70
    call ds_dispatch_f40b
@..api_idx_0090.l1:
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    sub ah, ah
    push ax
    mov ax, 0x917e
    push ax
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short @..api_idx_0090.l2
    jmp near @..api_idx_0090.l8
@..api_idx_0090.l2:
    jmp near @..api_idx_0090.l6
    inc word [bp + 0x4]
    mov ax, data_9b50
    push ax
    call api_idx_0004_8
    pop cx
    jmp near @..api_idx_0090.l7
    inc word [bp + 0x4]
    mov ax, data_9b50
    push ax
    call api_idx_0004_8
    pop cx
    cmp word [data_9b48], byte 0
    jne short @..api_idx_0090.l3
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_bb33
    add sp, byte 8
    push word [data_905a]
    call api_idx_0006_2
    pop cx
    cmp word [data_59fa], byte 0
    je short @..api_idx_0090.l3
    cmp word [data_9b4a], byte 0
    jne short @..api_idx_0090.l3
    mov word [data_9b48], 1
@..api_idx_0090.l3:
    jmp near @..api_idx_0090.l7
    inc word [bp + 0x4]
    mov ax, data_9b50
    push ax
    call api_idx_0004_8
    pop cx
    cmp word [data_9b48], byte 0
    jne short @..api_idx_0090.l4
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_bb33
    add sp, byte 8
@..api_idx_0090.l4:
    jmp near @..api_idx_0090.l7
    inc word [bp + 0x4]
    call api_idx_000a_2
    mov word [data_9b4c], 0
    jmp near @..api_idx_0090.l7
    inc word [bp + 0x4]
    mov ax, data_9b50
    push ax
    call api_idx_0004_8
    pop cx
    mov ax, 0
    push ax
    call math_loc_6b5a
    pop cx
    jmp near @..api_idx_0090.l7
    inc word [bp + 0x4]
    call loc_0140
    mov ax, 0x10
    push ax
    mov ax, 0xa
    push ax
    call ds_dispatch_d61c
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
    call ds_dispatch_efd1
    add sp, byte 0x16
    mov ax, 0x10
    push ax
    call ds_dispatch_c12a
    pop cx
    call loc_0344
    jmp short @..api_idx_0090.l7
    inc word [bp + 0x4]
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0x63
    jne short @..api_idx_0090.l5
    mov word [bp - 0x0006], 0x20
@..api_idx_0090.l5:
    push word [bp - 0x0006]
    call loc_6ac7
    pop cx
    inc word [bp + 0x4]
    jmp short @..api_idx_0090.l7
    ss mov bp, 0xbd44
    mov di, word [di - 0x424a]
    lds di, word [di - 0x4225]
    db 0x36, 0xbe
@..api_idx_0090.l6:
    db 0x3d, 0x07
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x41a7]
@..api_idx_0090.l7:
    jmp near @..api_idx_0090.l1
@..api_idx_0090.l8:
    cmp byte [data_9b50], 0
    je short @..api_idx_0090.l9
    mov ax, data_9b50
    push ax
    lea ax, word [bp - 0x0086]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0x9186
    push ax
    lea ax, word [bp - 0x0086]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0086]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    jmp short @..api_idx_0090.l10
@..api_idx_0090.l9:
    push word [bp + 0x4]
    lea ax, word [bp - 0x0086]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
@..api_idx_0090.l10:
    mov ax, 2
    push ax
    lea ax, word [bp - 0x0086]
    push ax
    call ds_dispatch_e883
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, 0xb8
    jle short @..api_idx_0090.l11
    mov ax, data_9b50
    push ax
    call api_idx_0004_8
    pop cx
    push word [bp + 0x4]
    mov ax, data_9b50
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    jmp short @..api_idx_0090.l12
@..api_idx_0090.l11:
    lea ax, word [bp - 0x0086]
    push ax
    mov ax, data_9b50
    push ax
    call ds_dispatch_f364
    add sp, byte 4
@..api_idx_0090.l12:
    ret
api_idx_0004_9:
    mov ax, 0xfffc
    call ds_dispatch_f40b
@..api_idx_0004_9.l1:
    mov ax, 0x20
    push ax
    push word [bp + 0x4]
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0004_9.l4
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0
@..api_idx_0004_9.l2:
    mov ax, 0x5f
    push ax
    push word [bp + 0x4]
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0004_9.l3
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short @..api_idx_0004_9.l2
@..api_idx_0004_9.l3:
    push word [bp + 0x4]
    call api_idx_0090
    pop cx
    mov ax, word [bp - 0x0002]
    add word [bp + 0x4], ax
    add word [bp + 0x4], byte 1
    jmp short @..api_idx_0004_9.l1
@..api_idx_0004_9.l4:
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    je short @..api_idx_0004_9.l5
    push bx
    call api_idx_0090
    pop cx
@..api_idx_0004_9.l5:
    ret
loc_6f14:
    mov ax, 0xfefa
    call ds_dispatch_f40b
    mov word [data_9b48], 0
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_e928
    add sp, byte 8
    mov word [data_8d10], dx
    mov word [data_8d0e], ax
    call api_idx_000a_2
    mov word [data_9b4e], 0x44
    mov word [data_9b4c], 0
    mov byte [data_9b50], 0
@..local.l363:
    lea ax, word [bp - 0x0105]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
    cmp word [data_5216], byte 0
    jne short @..local.l365
    cmp word [data_9b48], byte 0
    jne short @..local.l364
    lea ax, word [bp - 0x0105]
    push ax
    call api_idx_0004_9
    pop cx
@..local.l364:
    inc word [bp + 0x4]
@..local.l365:
    cmp word [data_5216], byte 0
    je short @..local.l363
    cmp byte [data_9b50], 0
    je short @..local.l366
    mov ax, data_9b50
    push ax
    call api_idx_0004_8
    pop cx
@..local.l366:
    push word [bp + 0x6]
    call math_loc_6b5a
    pop cx
    mov ax, 1
    push ax
    push word [data_8d10]
    push word [data_8d0e]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_bb33
    add sp, byte 8
    ret
math_loc_6fbf:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short @..math_loc_6fbf.l1
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    call ds_dispatch_b7a9
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
    jg short @..math_loc_6fbf.l1
    add bx, word [bp + 0x6]
    inc byte [bx + 0x5d6c]
@..math_loc_6fbf.l1:
    ret
api_idx_0002_12:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 4
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0002], ax
@..api_idx_0002_12.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x4]
    cmp word [bx + si], byte 0
    jne short @..api_idx_0002_12.l2
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    jmp short @..api_idx_0002_12.l1
@..api_idx_0002_12.l2:
    mov ax, word [bp - 0x0002]
    ret
api_idx_001e_2:
    mov ax, 0xffe2
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    cmp word [bx + si], byte 0
    jle short @..api_idx_001e_2.l1
    push word [bx + si]
    call api_idx_0050
    pop cx
    push word [data_905a]
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
    call ds_dispatch_e8da
    add sp, byte 8
@..api_idx_001e_2.l1:
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x001e], ax
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x000e], ax
    mov word [bp - 0x0002], 0
@..api_idx_001e_2.l2:
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    push word [bp - 0x000e]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x000c], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_001e_2.l2
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x0012], ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x000e]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0018], ax
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    push word [bp - 0x000e]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..api_idx_001e_2.l3
    mov ax, 1
    jmp short @..api_idx_001e_2.l4
@..api_idx_001e_2.l3:
    mov ax, 0xffff
@..api_idx_001e_2.l4:
    mov word [bp - 0x001a], ax
    mov ax, 1
    push ax
    mov ax, api_idx_0002
    push ax
    push word [bp - 0x000e]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x001c], ax
    mov word [bp - 0x0002], 0
    jmp near @..local.l369
@..api_idx_001e_2.l5:
    lea ax, word [bp - 0x000c]
    push ax
    call api_idx_0002_12
    pop cx
    mov word [bp - 0x0016], ax
    cmp word [bp - 0x0018], byte 1
    jne short @..api_idx_001e_2.l11
    cmp ax, word [data_82ee]
    je short @..api_idx_001e_2.l11
    cmp word [bp - 0x001a], byte 1
    jne short @..api_idx_001e_2.l6
    sub ax, word [data_82ee]
    add ax, strict word 4
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0014], dx
    jmp short @..api_idx_001e_2.l7
@..api_idx_001e_2.l6:
    mov ax, word [data_82ee]
    sub ax, word [bp - 0x0016]
    add ax, strict word 4
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0014], dx
@..api_idx_001e_2.l7:
    cmp word [bp - 0x0012], byte 0
    jne short @..api_idx_001e_2.l8
    dec word [bp - 0x0014]
@..api_idx_001e_2.l8:
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_001e_2.l10
@..api_idx_001e_2.l9:
    push word [bp - 0x001e]
    call api_idx_0006_2
    pop cx
    mov ax, word [data_82ee]
    add ax, word [bp - 0x001a]
    add ax, strict word 4
    mov cx, 4
    cwd
    idiv cx
    mov word [data_82ee], dx
    call loc_676c
    inc word [bp - 0x0004]
@..api_idx_001e_2.l10:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0014]
    jl short @..api_idx_001e_2.l9
@..api_idx_001e_2.l11:
    push word [bp - 0x001e]
    call api_idx_0006_2
    pop cx
    mov ax, word [bp - 0x0016]
    mov word [data_82ee], ax
    cmp word [bp - 0x0012], byte 0
    jle short @..local.l368
    call loc_12a2
    cmp word [bp - 0x001c], byte 1
    jne short @..api_idx_001e_2.l12
    push word [bp - 0x0012]
    call ds_dispatch_b7a9
    pop cx
    inc ax
    push ax
    push word [data_82ee]
    call loc_1240
    add sp, byte 4
    jmp short @..api_idx_001e_2.l13
@..api_idx_001e_2.l12:
    push word [bp - 0x0012]
    push word [data_82ee]
    call loc_1240
    add sp, byte 4
@..api_idx_001e_2.l13:
    push word [data_8f44]
    push word [data_8f46]
    mov ax, data_8f3e
    push ax
    mov ax, data_8f40
    push ax
    mov ax, data_8f42
    push ax
    call api_idx_0004_6
    add sp, byte 0x0a
    cmp ax, strict word 1
    jne short @..local.l367
    mov ax, 4
    push ax
    mov ax, 0x7e6
    push ax
    call api_idx_0002_9
    add sp, byte 4
    ret
@..local.l367:
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [data_8d12], ax
    mov word [data_9bd0], 0
@..local.l368:
    call loc_676c
    inc word [bp - 0x0002]
@..local.l369:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0010]
    jge short @..local.l370
    jmp near @..api_idx_001e_2.l5
@..local.l370:
    push word [bp - 0x001e]
    call api_idx_0006_2
    pop cx
    ret
loc_7242:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [bp + 0x4], byte 0
    jle short @..local.l371
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    cmp byte [bx + si + 0x960], 0
    jbe short @..local.l371
    mov ax, 1
    push ax
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    cmp word [bp + 0x4], byte 1
    jle short @..local.l371
    mov ax, 1
    push ax
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..local.l371:
    ret
api_idx_0004_10:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    call math_loc_13c0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [data_8f42], ax
    mov ax, 3
    push ax
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [data_8f40], ax
    mov ax, 4
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [data_8f3e], ax
    mov bx, word [data_0e12]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x0004], ax
    mov word [data_8460], 0
    cmp ax, strict word 0x63
    jne short @..api_idx_0004_10.l1
    shl si, 1
    mov ax, word [bx + si + 0x1e0]
    mov word [data_8460], ax
    mov word [bp - 0x0004], 0xffff
@..api_idx_0004_10.l1:
    cmp word [data_919e], byte 0
    je short @..api_idx_0004_10.l2
    mov ax, word [bp - 0x0004]
    mov word [data_8f28], ax
    mov ax, word [data_8f3e]
    mov word [data_8f2a], ax
    mov ax, word [data_8f42]
    mov word [data_8f2e], ax
    mov ax, word [data_8f40]
    mov word [data_8f2c], ax
@..api_idx_0004_10.l2:
    mov bx, word [data_0e14]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    add ax, word [data_8f42]
    mov word [data_8f46], ax
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    add ax, word [data_8f40]
    mov word [data_8f44], ax
    mov bx, word [data_0e12]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [data_8d12], ax
    mov word [data_9bd0], 0
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_830c]
    jne short @..api_idx_0004_10.l3
    call loc_676c
    jmp short @..api_idx_0004_10.l4
@..api_idx_0004_10.l3:
    call loc_68f2
    push word [bp - 0x0004]
    call api_idx_000c
    pop cx
    cmp word [data_830c], byte 0
    jl short @..api_idx_0004_10.l4
    call loc_676c
@..api_idx_0004_10.l4:
    mov word [data_91a8], 1
    ret
api_idx_0002_13:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0002_13.l1
    mov ax, 0x11
    push ax
    call loc_6ac7
    pop cx
    push word [data_8d12]
    call api_idx_0004_10
    pop cx
    jmp short @..api_idx_0002_13.l2
    mov ax, 0x804
    push ax
    call api_idx_0050
    pop cx
    mov ax, 8
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, 8
    push ax
    call api_idx_0006_2
    pop cx
    mov word [data_91b2], 1
    push word [data_8d12]
    call api_idx_0004_10
    pop cx
    jmp short @..api_idx_0002_13.l2
    mov ax, 8
    push ax
    call ds_dispatch_b7e0
    pop cx
    push word [data_8d12]
    call api_idx_0004_10
    pop cx
    jmp short @..api_idx_0002_13.l2
    sbb ax, 0x15c4
    les sp, word [bx]
    les di, word [si - 0x003c]
    dec di
    les cx, word [bx - 0x003c]
    dec di
    db 0xc4
@..api_idx_0002_13.l1:
    db 0x3d
    pop es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x3b9f]
@..api_idx_0002_13.l2:
    ret
loc_7436:
    mov ax, 0
    call ds_dispatch_f40b
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [data_91b0], ax
    ret
api_idx_0004_11:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    mov ax, api_idx_0002
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..local.l372
    mov ax, 2
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [data_8f24], ax
    cmp ax, word [data_82ee]
    je short @..local.l372
    ret
@..local.l372:
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    cmp word [bx + si], byte 0
    jle short @..local.l373
    mov ax, 0
    push ax
    push word [bx + si]
    call loc_6f14
    add sp, byte 4
@..local.l373:
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..local.l374
    ret
@..local.l374:
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [data_84a0], ax
    mov word [data_830a], 0x15
    ret
api_idx_0050_2:
    mov ax, 0xffb0
    call ds_dispatch_f40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x6]
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call ds_dispatch_b300
    add sp, byte 6
    lea ax, word [bp - 0x0050]
    push ax
    call api_idx_0008_2
    pop cx
    cmp word [bp + 0x8], byte 0
    je short @..api_idx_0050_2.l1
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
@..api_idx_0050_2.l1:
    push word [data_905a]
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
    call ds_dispatch_e8da
    add sp, byte 8
    ret
api_idx_0004_12:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    cmp word [data_82fe], byte 0
    jle short @..api_idx_0004_12.l1
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, word [data_8300]
    jge short @..api_idx_0004_12.l1
    mov word [data_82ea], 1
@..api_idx_0004_12.l1:
    mov word [bp - 0x0002], 0
    jmp short @..local.l376
@..api_idx_0004_12.l2:
    push word [bp - 0x0002]
    call ds_dispatch_ca85
    pop cx
    test ax, ax
    je short @..local.l375
    mov ax, 0xc8
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d78]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short @..local.l375
    mov ax, 0x7f8
    push ax
    push word [bp - 0x0002]
    call api_idx_0050_2
    add sp, byte 4
    ret
@..local.l375:
    inc word [bp - 0x0002]
@..local.l376:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0004_12.l2
    ret
api_idx_0006_6:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_0006_6.l1:
    mov ax, 2
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    push ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7302], ax
    mov ax, 2
    push ax
    add cx, byte 8
    mov ax, cx
    push ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 2
    jne short @..api_idx_0006_6.l2
    mov word [bp - 0x0004], 1
@..api_idx_0006_6.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_0006_6.l1
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0006_6.l3
    call api_idx_0004_12
@..api_idx_0006_6.l3:
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov ax, 2
    push ax
    mov ax, 5
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    ret
api_idx_001c:
    mov ax, 0xffe4
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0006], ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000e], ax
    mov ax, 3
    push ax
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov ax, 4
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000c], ax
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0012], ax
    mov ax, 2
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0014], ax
    mov bx, word [data_0e14]
    mov si, word [bp - 0x000c]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    add ax, word [bp - 0x000e]
    mov word [bp - 0x0008], ax
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    add ax, word [bp - 0x0010]
    mov word [bp - 0x000a], ax
    mov cx, 6
    shl si, cl
    mov ax, si
    mov cx, word [bp - 0x0010]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp - 0x000e]
    mov word [bp - 0x0004], ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
@..api_idx_001c.l1:
    mov ax, 4
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x001c], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_001c.l1
    push word [bp - 0x0016]
    push word [bp - 0x0018]
    push word [bp - 0x001a]
    push word [bp - 0x001c]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    mov ax, 0
    push ax
    push word [data_830c]
    call api_idx_0004_7
    add sp, byte 0x12
    push word [bp - 0x001c]
    mov ax, 4
    push ax
    push word [bp - 0x0004]
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    push word [bp - 0x001a]
    mov ax, 4
    push ax
    push word [bp - 0x0004]
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    push word [bp - 0x0008]
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    call api_idx_0004_6
    add sp, byte 0x0a
    test ax, ax
    jne short @..api_idx_001c.l2
    mov ax, word [bp - 0x000c]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x0010]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp - 0x000e]
    mov word [bp - 0x0004], ax
    push word [bp - 0x0018]
    mov ax, 4
    push ax
    push word [bp - 0x0004]
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
@..api_idx_001c.l2:
    push word [bp - 0x000a]
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    call api_idx_0004_6
    add sp, byte 0x0a
    test ax, ax
    jne short @..api_idx_001c.l3
    mov ax, word [bp - 0x000c]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x0010]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp - 0x000e]
    mov word [bp - 0x0004], ax
    push word [bp - 0x0016]
    mov ax, 4
    push ax
    push word [bp - 0x0004]
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
@..api_idx_001c.l3:
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si]
    call loc_6ac7
    pop cx
    cmp word [bp - 0x0012], byte 1
    jne short @..api_idx_001c.l4
    call loc_676c
@..api_idx_001c.l4:
    push word [bp - 0x0014]
    call loc_7242
    pop cx
    ret
api_idx_000a_3:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    push ax
    call loc_6ac7
    pop cx
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    mov cx, ax
    mov ax, word [bp - 0x0006]
    cmp cx, ax
    jne short @..api_idx_000a_3.l1
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x1e0]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    mov cx, ax
    mov ax, word [bp - 0x0006]
    cmp cx, ax
    je short @..local.l377
@..api_idx_000a_3.l1:
    ret
@..local.l377:
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov ax, 5
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    jmp short @..local.l380
@..local.l378:
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    mov ax, word [bp - 0x0008]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    jmp short @..local.l381
@..local.l379:
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, word [bp - 0x0008]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    jmp short @..local.l381
@..local.l380:
    cmp ax, strict word 0
    je short @..local.l378
    cmp ax, strict word 1
    je short @..local.l379
@..local.l381:
    mov ax, 1
    push ax
    mov ax, api_idx_0002
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..local.l382
    push word [bp - 0x0004]
    mov ax, word [bp - 0x0008]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    push ax
    push word [bp - 0x0004]
    mov ax, word [bp - 0x0008]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..local.l382:
    ret
api_idx_0004_13:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0004], byte 0
    jne short @..api_idx_0004_13.l1
    mov word [data_9b4a], 0
@..api_idx_0004_13.l1:
    mov ax, 1
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..local.l383
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [data_8f24], ax
    cmp ax, word [data_82ee]
    je short @..local.l383
    ret
@..local.l383:
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si]
    call loc_6f14
    add sp, byte 4
    push word [bp - 0x0004]
    call loc_7242
    pop cx
    ret
loc_7a34:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..local.l384
    mov si, word [data_8d12]
    mov bx, word [data_0e12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    push ax
    call api_idx_0006
    pop cx
    mov bx, word [data_100a]
    mov word [bx], ax
    jmp short @..local.l385
@..local.l384:

    db 0x8b, 0x1e, 0x12, 0x0e, 0x8b, 0x36, 0x12, 0x8d, 0x8a, 0x80, 0x50, 0x0a, 0x2a, 0xe4, 0x8b, 0x1e
    db 0x0a, 0x10, 0x89, 0x07

@..local.l385:

    db 0xb8, 0x01, 0x00, 0x50, 0x50, 0x50, 0xe8, 0x80, 0x90, 0x83, 0xc4, 0x06, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xa1, 0x12, 0x8d, 0xd1, 0xe0, 0x8b, 0xf0, 0x8b, 0x1e, 0x12, 0x0e, 0xff
    db 0xb0, 0xc0, 0x03, 0xe8, 0x89, 0x72, 0x83, 0xc4, 0x06, 0x50, 0xe8, 0x8a, 0xf7, 0x59, 0xff, 0x06
    db 0x12, 0x8d, 0xc3

api_idx_0002_14:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..local.l386
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [data_8f24], ax
    cmp ax, word [data_82ee]
    je short @..local.l386
    ret
@..local.l386:
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov bx, word [data_100a]
    mov word [bx], ax
    mov ax, 1
    push ax
    mov ax, 3
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..local.l387
    mov ax, 0
    jmp short @..local.l388
@..local.l387:
    mov ax, 1
@..local.l388:
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call math_loc_0b14
    add sp, byte 6
    mov word [data_830a], 0x12
    inc word [data_8d12]
    ret
api_idx_0018_2:
    mov ax, 0xffe8
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    inc ax
    mov word [bp - 0x000c], ax
    mov bx, ax
    mov al, byte [bx + 0x7171]
    sub ah, ah
    dec ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x256]
    mov cx, 0x64
    imul cx
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x000e], ax
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_0018_2.l1
    mov cx, 0
    sub cx, ax
    mov word [bp - 0x0008], cx
    mov word [bp - 0x0006], 0
    jmp short @..api_idx_0018_2.l2
@..api_idx_0018_2.l1:
    mov word [bp - 0x0008], ax
    mov ax, 0
    sub ax, word [bx + 0x256]
    mov word [bp - 0x0006], ax
@..api_idx_0018_2.l2:
    mov ax, word [data_8f46]
    add ax, word [data_8f44]
    add ax, word [data_82ee]
    add ax, word [bp + 0x6]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000a], dx
    mov word [bp - 0x0002], 1
@..api_idx_0018_2.l3:
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
    call api_idx_0030
    mov al, byte [bp - 0x000c]
    mov byte [bp - 0x0018], al
    mov byte [bp - 0x0017], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    push word [bp - 0x000a]
    mov ax, 0x90
    push ax
    push word [bp - 0x0004]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, word [bp - 0x0002]
    imul word [bp - 0x0008]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    mov bx, word [bp - 0x000c]
    mov al, byte [bx + 0x7171]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0006]
    push ax
    mov ax, 0xa
    imul word [bp + 0x6]
    mov cx, word [bp + 0x8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x36e]
    push ax
    mov ax, word [bp - 0x000c]
    shl ax, 1
    add ax, word [bp - 0x000a]
    mov bx, ax
    mov al, byte [bx + 0x7128]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 5
    push ax
    call ds_dispatch_efd1
    add sp, byte 0x16
    mov ax, 0xffff
    cmp word [bp - 0x000a], byte 0
    je short @..api_idx_0018_2.l4
    mov ax, word [bp + 0x8]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x24c]
    add ax, word [bp + 0x6]
@..api_idx_0018_2.l4:
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x8]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x24c]
    add ax, word [bp + 0x6]
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0xa1, 0x73 ; call 0xf01f
    add sp, byte 8
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
    cmp word [bp + 0xa], byte 0
    je short @..api_idx_0018_2.l5
    mov ax, 0x10
    push ax
    call ds_dispatch_b7e0
    pop cx
@..api_idx_0018_2.l5:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jg short @..api_idx_0018_2.l6
    jmp near @..api_idx_0018_2.l3
@..api_idx_0018_2.l6:
    ret
math_loc_7cb4:
    mov ax, 0
    call ds_dispatch_f40b
@..math_loc_7cb4.l1:
    cmp word [bp + 0x4], byte 0
    jle short @..math_loc_7cb4.l3
    cmp word [bp + 0x6], byte 0
    je short @..math_loc_7cb4.l2
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
    call loc_676c
    mov ax, 0x10
    push ax
    call ds_dispatch_b7e0
    pop cx
@..math_loc_7cb4.l2:
    dec word [bp + 0x4]
    jmp short @..math_loc_7cb4.l1
@..math_loc_7cb4.l3:
    ret
api_idx_000a_4:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov bx, word [data_0e14]
    mov si, word [bp + 0x8]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    add ax, word [bp + 0xa]
    mov word [bp - 0x0006], ax
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    add ax, word [bp + 0xc]
    mov word [bp - 0x0008], ax
    mov cx, 6
    shl si, cl
    mov ax, si
    mov cx, word [bp + 0xc]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0xa]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0xffff
    mov ax, word [bp + 0x4]
    jmp near @..api_idx_000a_4.l7
@..api_idx_000a_4.l1:
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 1
    jmp near @..api_idx_000a_4.l11
@..api_idx_000a_4.l2:
    mov word [bp - 0x0002], 1
    mov word [bp - 0x0004], 2
    jmp near @..api_idx_000a_4.l11
@..api_idx_000a_4.l3:
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    push word [bp - 0x0006]
    lea ax, word [bp + 0x8]
    push ax
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    call api_idx_0004_6
    add sp, byte 0x0a
    test ax, ax
    jne short @..api_idx_000a_4.l4
    mov ax, word [bp + 0x8]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xc]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0xa]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 1
@..api_idx_000a_4.l4:
    jmp short @..api_idx_000a_4.l11
@..api_idx_000a_4.l5:
    push word [bp - 0x0008]
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    lea ax, word [bp + 0x8]
    push ax
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    call api_idx_0004_6
    add sp, byte 0x0a
    test ax, ax
    jne short @..api_idx_000a_4.l6
    mov ax, word [bp + 0x8]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xc]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0xa]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 1
    mov word [bp - 0x0004], 2
@..api_idx_000a_4.l6:
    jmp short @..api_idx_000a_4.l11
@..api_idx_000a_4.l7:
    cmp ax, strict word 0
    jne short @..api_idx_000a_4.l8
    jmp near @..api_idx_000a_4.l1
@..api_idx_000a_4.l8:
    cmp ax, strict word 1
    jne short @..api_idx_000a_4.l9
    jmp near @..api_idx_000a_4.l2
@..api_idx_000a_4.l9:
    cmp ax, strict word 2
    jne short @..api_idx_000a_4.l10
    jmp near @..api_idx_000a_4.l3
@..api_idx_000a_4.l10:
    cmp ax, strict word 3
    je short @..api_idx_000a_4.l5
@..api_idx_000a_4.l11:
    cmp word [bp - 0x0002], byte 0xff
    je short @..api_idx_000a_4.l13
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x6]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp - 0x0004]
    push word [data_830c]
    call api_idx_0004_7
    add sp, byte 0x12
    cmp word [bp - 0x0002], byte 0
    jne short @..api_idx_000a_4.l12
    push word [bp + 0x6]
    mov ax, 4
    push ax
    push word [bp - 0x000a]
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    jmp short @..api_idx_000a_4.l13
@..api_idx_000a_4.l12:
    push word [bp + 0x6]
    mov ax, 4
    push ax
    push word [bp - 0x000a]
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
@..api_idx_000a_4.l13:
    ret
api_idx_001e_3:
    mov ax, 0xffe2
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0016], ax
    mov ax, word [bx + si + 0x1e0]
    cwd
    idiv cx
    mov word [bp - 0x0018], dx
    mov ax, word [bx + si]
    cwd
    idiv cx
    mov word [bp - 0x001e], ax
    mov ax, word [bx + si]
    cwd
    idiv cx
    mov word [bp - 0x001c], dx
    mov ax, word [data_82ee]
    sub ax, word [bp - 0x0016]
    add ax, strict word 4
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x001a], dx
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x0014], ax
    cmp word [bp - 0x0014], byte 0
    je short @..api_idx_001e_3.l1
    mov ax, 0x12
    push ax
    call loc_6ac7
    pop cx
    mov ax, 0x10
    push ax
    call ds_dispatch_d7aa
    pop cx
@..api_idx_001e_3.l1:
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0004], ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 3
    push ax
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 4
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov ax, 1
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0012], ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000e], ax
    mov ax, 1
    cmp word [bp - 0x0012], byte 0
    je short @..api_idx_001e_3.l2
    mov ax, 6
@..api_idx_001e_3.l2:
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000e], byte 0
    je short @..api_idx_001e_3.l4
    cmp word [bp - 0x0010], byte 0
    je short @..api_idx_001e_3.l4
    cmp word [bp - 0x0012], byte 0
    je short @..api_idx_001e_3.l4
    cmp word [bp - 0x001a], byte 0
    jne short @..api_idx_001e_3.l4
    mov ax, word [data_82ee]
    cmp ax, word [bp - 0x0018]
    jne short @..api_idx_001e_3.l3
    push word [bp - 0x0014]
    push word [bp - 0x001e]
    push word [bp - 0x001c]
    mov ax, 0
    push ax
    call api_idx_0018_2
    add sp, byte 8
    jmp short @..api_idx_001e_3.l4
@..api_idx_001e_3.l3:
    push word [bp - 0x0014]
    mov ax, 7
    push ax
    call math_loc_7cb4
    add sp, byte 4
@..api_idx_001e_3.l4:
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x000c]
    push word [bp - 0x0016]
    call api_idx_000a_4
    add sp, byte 0x0a
    cmp word [bp - 0x000e], byte 0
    je short @..api_idx_001e_3.l11
    cmp word [bp - 0x0010], byte 0
    je short @..api_idx_001e_3.l9
    cmp word [bp - 0x0012], byte 0
    jne short @..api_idx_001e_3.l7
    cmp word [bp - 0x001a], byte 0
    jne short @..api_idx_001e_3.l7
    mov ax, word [data_82ee]
    cmp ax, word [bp - 0x0018]
    jne short @..api_idx_001e_3.l5
    push word [bp - 0x0014]
    push word [bp - 0x001e]
    push word [bp - 0x001c]
    mov ax, 1
    push ax
    call api_idx_0018_2
    add sp, byte 8
    jmp short @..api_idx_001e_3.l6
@..api_idx_001e_3.l5:
    push word [bp - 0x0014]
    mov ax, 7
    push ax
    call math_loc_7cb4
    add sp, byte 4
@..api_idx_001e_3.l6:
    jmp short @..api_idx_001e_3.l8
@..api_idx_001e_3.l7:
    cmp word [bp - 0x001a], byte 1
    jl short @..api_idx_001e_3.l8
    cmp word [bp - 0x001a], byte 3
    jg short @..api_idx_001e_3.l8
    push word [bp - 0x0014]
    mov ax, 7
    push ax
    call math_loc_7cb4
    add sp, byte 4
@..api_idx_001e_3.l8:
    call loc_676c
    jmp short @..api_idx_001e_3.l10
@..api_idx_001e_3.l9:
    call loc_676c
@..api_idx_001e_3.l10:
    jmp short @..api_idx_001e_3.l13
@..api_idx_001e_3.l11:
    cmp word [bp - 0x0010], byte 0
    je short @..api_idx_001e_3.l12
    push word [bp - 0x0014]
    mov ax, 7
    push ax
    call math_loc_7cb4
    add sp, byte 4
@..api_idx_001e_3.l12:
    mov ax, 2
    push ax
    call api_idx_0006_2
    pop cx
@..api_idx_001e_3.l13:
    cmp word [bp - 0x0014], byte 0
    je short @..api_idx_001e_3.l14
    mov ax, 0x10
    push ax
    call ds_dispatch_d6c6
    pop cx
    mov word [data_598e], 0xffff
@..api_idx_001e_3.l14:
    mov si, word [data_8d12]
    mov bx, word [data_0e12]
    cmp byte [bx + si + 0x960], 0
    jbe short @..local.l389
    mov ax, 2
    push ax
    call loc_7242
    pop cx
@..local.l389:
    ret
api_idx_000e_2:
    mov ax, 0xfff2
    call ds_dispatch_f40b
    mov ax, 5
    push ax
    call api_idx_0006_2
    pop cx
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp word [bp - 0x000a], byte 0
    jne short @..api_idx_000e_2.l4
@..api_idx_000e_2.l1:
    call ds_dispatch_ceb1
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_000e_2.l2
    push ax
    call ds_dispatch_ca85
    pop cx
    test ax, ax
    jne short @..api_idx_000e_2.l3
@..api_idx_000e_2.l2:
    jmp short @..api_idx_000e_2.l1
@..api_idx_000e_2.l3:
    mov ax, 3
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    mov word [bp - 0x000a], ax
    jmp near @..api_idx_000e_2.l10
@..api_idx_000e_2.l4:
    cmp word [bp - 0x000a], strict word 0xfe
    jne short @..api_idx_000e_2.l6
    cmp word [bp - 0x0006], byte 0x15
    jne short @..api_idx_000e_2.l5
    mov ax, 1
    push ax
    mov ax, 0x12
    push ax
    push word [data_8af0]
    call math_loc_6fbf
    add sp, byte 6
@..api_idx_000e_2.l5:
    mov ax, 0x248
    imul word [data_8af0]
    mov bx, ax
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    push ax
    mov al, byte [bx + 0x5d7e]
    sub ah, ah
    mov cx, 3
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x000a], ax
    jmp short @..api_idx_000e_2.l10
@..api_idx_000e_2.l6:
    cmp word [bp - 0x000a], strict word 0xff
    jne short @..api_idx_000e_2.l10
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_000e_2.l9
@..api_idx_000e_2.l7:
    push word [bp - 0x0004]
    call ds_dispatch_ca85
    pop cx
    test ax, ax
    je short @..api_idx_000e_2.l8
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d77]
    sub ah, ah
    add word [bp - 0x000a], ax
    mov ax, 2
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0004]
    call math_loc_6fbf
    add sp, byte 6
@..api_idx_000e_2.l8:
    inc word [bp - 0x0004]
@..api_idx_000e_2.l9:
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_69c8]
    jl short @..api_idx_000e_2.l7
    mov ax, word [bp - 0x000a]
    cwd
    idiv word [data_69c8]
    mov word [bp - 0x000a], ax
@..api_idx_000e_2.l10:
    push word [bp - 0x0006]
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x000c], ax
    cmp ax, word [bp - 0x000a]
    jge short @..api_idx_000e_2.l11
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si]
    jmp short @..api_idx_000e_2.l12
@..api_idx_000e_2.l11:
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
@..api_idx_000e_2.l12:
    mov word [bp - 0x000e], ax
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..api_idx_000e_2.l13
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_000e_2.l13:
    mov ax, 2
    push ax
    mov ax, 9
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    ret
api_idx_0010_3:
    mov ax, 0xfff0
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0004], ax
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, 3
    push ax
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 4
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0010], ax
    mov ax, word [bp - 0x000a]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp - 0x0006]
    mov word [bp - 0x0002], ax
    mov ax, word [bx + si]
    mov word [bp - 0x000c], ax
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
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
    push word [data_830c]
    call api_idx_0004_7
    add sp, byte 0x12
    push word [bp - 0x000c]
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x4b0
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    push word [bp - 0x000e]
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x7b0
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    cmp word [bp - 0x0010], byte 0
    jle short @..api_idx_0010_3.l1
    push word [bp - 0x0010]
    call ds_dispatch_d7aa
    pop cx
@..api_idx_0010_3.l1:
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    je short @..api_idx_0010_3.l2
    jmp near @..api_idx_0010_3.l10
@..api_idx_0010_3.l2:
    call loc_676c
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 5
    je short @..api_idx_0010_3.l3
    cmp ax, strict word 6
    je short @..api_idx_0010_3.l3
    cmp ax, strict word 0xa
    je short @..api_idx_0010_3.l3
    cmp ax, strict word 0xb
    jne short @..api_idx_0010_3.l10
@..api_idx_0010_3.l3:
    cmp ax, strict word 6
    je short @..api_idx_0010_3.l4
    cmp ax, strict word 0xa
    je short @..api_idx_0010_3.l4
    cmp ax, strict word 0xb
    jne short @..api_idx_0010_3.l6
@..api_idx_0010_3.l4:
    mov ax, 0x80a
    cmp word [bp - 0x000c], byte 6
    jne short @..api_idx_0010_3.l5
    mov ax, 0x7fc
@..api_idx_0010_3.l5:
    push ax
    call api_idx_0050
    pop cx
@..api_idx_0010_3.l6:
    cmp word [bp - 0x000c], byte 5
    je short @..api_idx_0010_3.l7
    cmp word [bp - 0x000c], byte 6
    jne short @..api_idx_0010_3.l8
@..api_idx_0010_3.l7:
    mov ax, 4
    jmp short @..api_idx_0010_3.l9
@..api_idx_0010_3.l8:
    mov ax, 1
@..api_idx_0010_3.l9:
    push ax
    call ds_dispatch_b7e0
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
    call ds_dispatch_e8da
    add sp, byte 8
@..api_idx_0010_3.l10:
    cmp word [bp - 0x0010], byte 0
    jle short @..api_idx_0010_3.l11
    mov ax, 0x10
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, 0x10
    push ax
    call ds_dispatch_d6c6
    pop cx
    mov word [data_598e], 0xffff
@..api_idx_0010_3.l11:
    mov ax, 2
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    ret
api_idx_0004_14:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0004_14.l1
    mov ax, word [bp + 0x4]
@..api_idx_0004_14.l1:
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x4]
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0004_14.l2
    mov ax, word [bp + 0x6]
@..api_idx_0004_14.l2:
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0002], byte 0
    je short @..api_idx_0004_14.l3
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0004_14.l3:
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0004_14.l4
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0004_14.l4:
    ret
api_idx_000e_3:
    mov ax, 0xfff2
    call ds_dispatch_f40b
    mov word [bp - 0x000e], 1
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si]
    mov word [bp - 0x000a], ax
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0008], ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_000e_3.l6
@..api_idx_000e_3.l1:
    mov word [bp - 0x0006], 0
@..api_idx_000e_3.l2:
    mov word [bp - 0x0004], 0
@..api_idx_000e_3.l3:
    mov ax, 0x248
    imul word [bp - 0x0002]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0006]
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
    mov ax, word [bx + 0x5c34]
    cmp ax, word [bp - 0x000a]
    jne short @..api_idx_000e_3.l5
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 1
    jne short @..api_idx_000e_3.l4
    cmp word [bp - 0x000c], byte 0
    je short @..api_idx_000e_3.l5
@..api_idx_000e_3.l4:
    mov word [bp - 0x000e], 0
@..api_idx_000e_3.l5:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short @..api_idx_000e_3.l3
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 2
    jl short @..api_idx_000e_3.l2
    inc word [bp - 0x0002]
@..api_idx_000e_3.l6:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_000e_3.l1
    push word [bp - 0x000e]
    mov si, word [data_8d12]
    mov bx, word [data_0e12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    push ax
    shl si, 1
    push word [bx + si + 0x1e0]
    call api_idx_0004_14
    add sp, byte 6
    cmp word [bp - 0x000e], byte 0
    je short @..api_idx_000e_3.l7
    mov ax, 1
    push ax
    mov ax, 3
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    test ax, ax
    je short @..api_idx_000e_3.l8
@..api_idx_000e_3.l7:
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
@..api_idx_000e_3.l8:
    ret
loc_8540:
    mov ax, 0
    call ds_dispatch_f40b
    push word [bp + 0x4]
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x1e0]
    push word [bx + si]
    call api_idx_0004_14
    add sp, byte 6
    push word [bp + 0x6]
    call loc_7242
    pop cx
    ret
api_idx_0012_3:
    mov ax, 0xffee
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 5
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov ax, 5
    push ax
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0012], ax
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call ds_dispatch_f9cd
    mov cx, 0x3c
    mov bx, 0
    call ds_dispatch_f99f
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0006]
    push ax
    cmp ax, word [bp - 0x0004]
    pop ax
    jge short @..api_idx_0012_3.l1
    mov ax, 0x18
@..api_idx_0012_3.l1:
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x000a]
    cmp ax, word [bp - 0x0004]
    jl short @..api_idx_0012_3.l2
    cmp ax, word [bp - 0x0008]
    jge short @..api_idx_0012_3.l2
    mov ax, 0
    jmp short @..api_idx_0012_3.l3
@..api_idx_0012_3.l2:
    mov ax, 1
@..api_idx_0012_3.l3:
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp - 0x0004]
    jge short @..api_idx_0012_3.l6
    cmp word [bp - 0x000a], byte 0
    jl short @..api_idx_0012_3.l4
    cmp ax, word [bp - 0x000a]
    jle short @..api_idx_0012_3.l4
    mov ax, 0
    jmp short @..api_idx_0012_3.l5
@..api_idx_0012_3.l4:
    mov ax, word [bp - 0x000e]
@..api_idx_0012_3.l5:
    mov word [bp - 0x000e], ax
@..api_idx_0012_3.l6:
    cmp word [bp - 0x0012], byte 0
    jne short @..api_idx_0012_3.l7
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    call loc_8540
    add sp, byte 4
    jmp short @..api_idx_0012_3.l11
@..api_idx_0012_3.l7:
    cmp word [bp - 0x000e], byte 0
    jne short @..api_idx_0012_3.l8
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si]
    jmp short @..api_idx_0012_3.l9
@..api_idx_0012_3.l8:
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
@..api_idx_0012_3.l9:
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jle short @..api_idx_0012_3.l10
    mov ax, 0
    push ax
    push word [bp - 0x000c]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bp - 0x000c]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0012_3.l10:
    push word [bp - 0x0010]
    call loc_7242
    pop cx
@..api_idx_0012_3.l11:
    ret
math_loc_86a9:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    mov si, word [data_8d12]
    mov bx, word [data_0e12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov cx, 6
    imul cx
    mov bx, ax
    cmp byte [bx - 0x7b59], 0
    je short @..math_loc_86a9.l1
    mov ax, 0
    jmp short @..math_loc_86a9.l2
@..math_loc_86a9.l1:
    mov ax, 1
@..math_loc_86a9.l2:
    push ax
    call loc_8540
    add sp, byte 4
    ret
api_idx_0002_15:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    test ax, ax
    jne short @..api_idx_0002_15.l1
    push word [bp - 0x0002]
    mov si, word [data_8d12]
    mov bx, word [data_0e12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    push ax
    mov ax, 0x5842
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    push ax
    call loc_8540
    add sp, byte 4
    jmp short @..api_idx_0002_15.l4
@..api_idx_0002_15.l1:
    push word [bp - 0x0002]
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov cx, 0x26
    imul cx
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jne short @..api_idx_0002_15.l2
    mov ax, 1
    jmp short @..api_idx_0002_15.l3
@..api_idx_0002_15.l2:
    mov ax, 0
@..api_idx_0002_15.l3:
    push ax
    call loc_8540
    add sp, byte 4
@..api_idx_0002_15.l4:
    ret
api_idx_000c_2:
    mov ax, 0xfff4
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 4
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_000c_2.l3
@..api_idx_000c_2.l1:
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0004]
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    cmp ax, word [bp - 0x000c]
    je short @..api_idx_000c_2.l2
    inc word [bp - 0x0006]
@..api_idx_000c_2.l2:
    inc word [bp - 0x0004]
@..api_idx_000c_2.l3:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x000a]
    jl short @..api_idx_000c_2.l1
    mov ax, 1
    push ax
    mov ax, api_idx_0002
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    imul word [bp - 0x0006]
    shl si, 1
    mov cx, word [bx + si]
    add ax, cx
    push ax
    call loc_6f14
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    call loc_7242
    pop cx
    ret
loc_8867:
    mov ax, 0
    call ds_dispatch_f40b
    mov word [data_9b4a], 1
    mov word [data_8f24], 0xffff
@..local.l390:
    push word [data_8d12]
    push word [data_8f3e]
    push word [data_8f40]
    push word [data_8f42]
    call api_idx_0002_11
    add sp, byte 8
    mov word [data_8d12], ax
    cmp ax, strict word 0xffff
    jne short @..local.l391
    jmp near @..local.l396
@..local.l391:
    mov word [data_9bd0], 1
    mov bx, word [data_0e12]
    mov si, ax
    mov al, byte [bx + si + 0x5a0]
    sub ah, ah
    jmp near @..local.l392

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

@..local.l392:
    cmp ax, strict word 0x1a
    jae short @..local.l393
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x2641]
@..local.l393:
    cmp word [data_830a], byte 5
    je short @..local.l394
    ret
@..local.l394:
    cmp word [data_9bd0], byte 1
    jne short @..local.l395
    inc word [data_8d12]
@..local.l395:
    jmp near @..local.l390
@..local.l396:
    ret
api_idx_0002_16:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0002_16.l2
@..api_idx_0002_16.l1:
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
@..api_idx_0002_16.l2:
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0002_16.l1
    ret
api_idx_0002_17:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x0002], ax
    mov ax, 6
    push ax
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x4b0
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    push word [data_82ee]
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x7b0
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    call loc_676c
    mov ax, 0x7fc
    push ax
    call api_idx_0050
    pop cx
    mov ax, 4
    push ax
    call ds_dispatch_b7e0
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
    call ds_dispatch_e8da
    add sp, byte 8
    push word [data_8f40]
    push word [data_8f42]
    push word [data_8f3e]
    mov ax, 1
    push ax
    push word [data_82ee]
    call api_idx_000a_4
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push word [data_8f40]
    push word [data_8f42]
    push word [data_8f3e]
    mov ax, 5
    push ax
    push word [data_830c]
    call api_idx_0004_7
    add sp, byte 0x12
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x4b0
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x7b0
    push ax
    call ds_dispatch_eca4
    add sp, byte 8
    mov ax, 0x12
    push ax
    call loc_6ac7
    pop cx
    call loc_676c
    mov ax, word [data_82ee]
    shl ax, 1
    add ax, strict word 8
    push ax
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov ax, word [data_0e12]
    add ax, cx
    add ax, 0x3c0
    push ax
    call api_idx_0002_16
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    mov ax, 6
    push ax
    push word [data_830c]
    call api_idx_0004_7
    add sp, byte 0x12
    ret
api_idx_0006_7:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    mov ax, api_idx_0002
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..local.l397
    mov ax, 2
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, word [data_82ee]
    je short @..local.l397
    mov ax, 0
    ret
@..local.l397:
    mov bx, word [data_0e12]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    push ax
    call loc_6ac7
    pop cx
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    push ax
    push word [bp - 0x0004]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    cmp word [bx + si + 0x1e0], byte 0
    jle short @..local.l398
    mov ax, 0
    push ax
    push word [bx + si + 0x1e0]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..local.l398:
    mov ax, word [bp + 0x4]
    mov word [data_8d12], ax
    mov ax, 2
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    push ax
    call loc_7242
    pop cx
    mov ax, word [bp + 0x4]
    inc ax
    mov word [data_8d12], ax
    mov word [data_91a8], 1
    mov ax, 1
    ret
api_idx_000a_5:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
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
    je short @..api_idx_000a_5.l1
    cmp ax, strict word 0xa
    je short @..api_idx_000a_5.l1
    cmp ax, strict word 0xb
    jne short @..api_idx_000a_5.l3
@..api_idx_000a_5.l1:
    mov ax, word [bp - 0x0008]
    cmp ax, word [data_82ee]
    jne short @..api_idx_000a_5.l3
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_000a_5.l2
    mov word [bp - 0x000a], 2
@..api_idx_000a_5.l2:
    jmp short @..api_idx_000a_5.l4
@..api_idx_000a_5.l3:
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_000a_5.l4
    mov word [bp - 0x000a], 1
    mov ax, 0x7fb
    push ax
    call api_idx_0050
    pop cx
    push word [data_905a]
    call api_idx_0006_2
    pop cx
@..api_idx_000a_5.l4:
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [bp - 0x0004], ax
@..api_idx_000a_5.l5:
    push word [bp - 0x0004]
    push word [data_8f3e]
    push word [data_8f40]
    push word [data_8f42]
    call api_idx_0002_11
    add sp, byte 8
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_000a_5.l6
    jmp near @..local.l402
@..api_idx_000a_5.l6:
    mov bx, word [data_0e12]
    mov si, ax
    cmp byte [bx + si + 0x5a0], 7
    jne short @..local.l399
    mov ax, 2
    push ax
    mov ax, word [data_82ee]
    shl ax, 1
    add ax, strict word 8
    push ax
    shl si, 1
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 2
    jne short @..local.l399
    push word [bp - 0x0004]
    call api_idx_0002_17
    pop cx
    ret
@..local.l399:
    mov bx, word [data_0e12]
    mov si, word [bp - 0x0004]
    cmp byte [bx + si + 0x5a0], 8
    jne short @..local.l400
    push si
    call api_idx_0006_7
    pop cx
    cmp ax, strict word 1
    jne short @..local.l400
    ret
@..local.l400:
    mov bx, word [data_0e12]
    mov si, word [bp - 0x0004]
    cmp byte [bx + si + 0x5a0], 0x19
    jne short @..local.l401
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [data_8f24], ax
    cmp ax, word [data_82ee]
    jne short @..local.l401
    mov word [data_830a], 0x1b
    mov word [data_8d12], si
    ret
@..local.l401:
    inc word [bp - 0x0004]
    jmp near @..api_idx_000a_5.l5
@..local.l402:
    cmp word [bp - 0x000a], byte 2
    jne short @..local.l403
    mov ax, 0x7fb
    push ax
    call api_idx_0050
    pop cx
    push word [data_905a]
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
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l403:
    cmp word [bp - 0x000a], byte 0
    je short @..local.l404
    mov ax, 0x7fd
    push ax
    call api_idx_0050
    pop cx
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, word [data_905a]
    mov cx, 2
    cwd
    idiv cx
    push ax
    call api_idx_0006_2
    pop cx
@..local.l404:
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    ret
api_idx_0002_18:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 1
    push ax
    mov ax, api_idx_0002
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..local.l405
    mov ax, 2
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, word [data_82ee]
    je short @..local.l405
    mov ax, 0
    ret
@..local.l405:
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    test ax, ax
    jne short @..local.l406
    mov ax, 0
    ret
@..local.l406:
    mov ax, word [bp + 0x4]
    mov word [data_8d12], ax
    mov bx, word [data_0e12]
    mov si, ax
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [data_84a0], ax
    mov word [data_830a], 0x15
    mov ax, 1
    ret
api_idx_0002_19:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [bp - 0x0002], ax
@..api_idx_0002_19.l1:
    push word [bp - 0x0002]
    push word [data_8f3e]
    push word [data_8f40]
    push word [data_8f42]
    call api_idx_0002_11
    add sp, byte 8
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002_19.l2
    jmp near @..local.l410
@..api_idx_0002_19.l2:
    mov bx, word [data_0e12]
    mov si, ax
    cmp byte [bx + si + 0x5a0], 3
    jne short @..local.l407
    push ax
    call api_idx_0002_18
    pop cx
    cmp ax, strict word 1
    jne short @..local.l407
    ret
@..local.l407:
    mov bx, word [data_0e12]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si + 0x5a0], 7
    jne short @..local.l409
    mov ax, 2
    push ax
    mov ax, word [data_82ee]
    shl ax, 1
    push ax
    shl si, 1
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    je short @..local.l408
    mov ax, 2
    push ax
    mov ax, word [data_82ee]
    shl ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 2
    jne short @..local.l409
@..local.l408:
    mov ax, word [bp - 0x0002]
    mov word [data_84a0], ax
    mov word [data_830a], 0x1a
    ret
@..local.l409:
    inc word [bp - 0x0002]
    jmp near @..api_idx_0002_19.l1
@..local.l410:
    ret
api_idx_0002_20:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [bp - 0x0002], ax
@..api_idx_0002_20.l1:
    push word [bp - 0x0002]
    push word [data_8f3e]
    push word [data_8f40]
    push word [data_8f42]
    call api_idx_0002_11
    add sp, byte 8
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l412
    mov bx, word [data_0e12]
    mov si, ax
    cmp byte [bx + si + 0x5a0], 0xf
    jne short @..local.l411
    shl ax, 1
    mov si, ax
    cmp word [bx + si + 0x1e0], byte 2
    je short @..api_idx_0002_20.l2
    mov ax, word [data_82ee]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, word [bx + si + 0x1e0]
    jne short @..local.l411
@..api_idx_0002_20.l2:
    cmp word [bx + si + 0x1e0], byte 2
    jne short @..api_idx_0002_20.l3
    mov ax, 8
    push ax
    call ds_dispatch_b7e0
    pop cx
@..api_idx_0002_20.l3:
    push word [bp - 0x0002]
    call api_idx_0004_10
    pop cx
    ret
@..local.l411:
    inc word [bp - 0x0002]
    jmp short @..api_idx_0002_20.l1
@..local.l412:
    ret
api_idx_0002_21:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_21.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    cmp byte [bx - 0x7590], 0xff
    je short @..api_idx_0002_21.l2
    mov al, byte [bx - 0x7590]
    cbw
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x642e], byte 0
    je short @..local.l414
@..api_idx_0002_21.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7592]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0002_21.l3
    mov al, byte [bx - 0x7591]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    je short @..api_idx_0002_21.l4
@..api_idx_0002_21.l3:
    mov al, byte [bx - 0x7591]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..local.l414
    mov al, byte [bx - 0x7592]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..local.l414
@..api_idx_0002_21.l4:
    mov ax, word [bp - 0x0002]
    mov cx, word [data_9be6]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6418], ax
    inc word [data_9be6]
    mov ax, word [data_9be6]
    cmp ax, strict word 0xc
    jl short @..local.l413
    mov ax, 0
    ret
@..local.l413:
    mov ax, 1
    ret
@..local.l414:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jge short @..local.l415
    jmp near @..api_idx_0002_21.l1
@..local.l415:
    mov ax, 0
    ret
api_idx_0048:
    mov ax, 0xffb8
    call ds_dispatch_f40b
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_21
    add sp, byte 4
    test ax, ax
    je short @..local.l416
    mov ax, 1
    ret
@..local.l416:
    cmp word [bp + 0x8], byte 0
    jne short @..local.l417
    mov ax, 0
    ret
@..local.l417:
    mov ax, 1
    mov cx, word [bp + 0xa]
    cmp cx, word [data_9c00]
    jge short @..local.l418
    mov ax, 2
@..local.l418:
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0004], 0
    jmp near @..local.l435
@..local.l419:
    mov word [bp - 0x0002], 0
@..local.l420:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7592]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    je short @..local.l421
    jmp near @..local.l427
@..local.l421:
    cmp byte [bx - 0x7590], 0xff
    je short @..local.l422
    mov al, byte [bx - 0x7590]
    cbw
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x642e], byte 0
    jne short @..local.l422
    jmp near @..local.l427
@..local.l422:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x63fe], byte 0
    je short @..local.l423
    jmp near @..local.l426
@..local.l423:
    cmp word [bp - 0x0004], byte 0
    je short @..local.l424
    mov word [bx - 0x63fe], 1
@..local.l424:
    mov ax, word [data_9be6]
    mov word [bp - 0x0006], ax
    mov ax, 0x40
    push ax
    lea ax, word [bp - 0x0048]
    push ax
    mov ax, 0x9c02
    push ax
    call ds_dispatch_fedc
    add sp, byte 6
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    push word [bp - 0x0004]
    push word [bp + 0x6]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7591]
    sub ah, ah
    push ax
    call api_idx_0048
    add sp, byte 8
    test ax, ax
    je short @..local.l425
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7591]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0002_21
    add sp, byte 4
    mov ax, 1
    ret
@..local.l425:
    mov ax, word [bp - 0x0006]
    mov word [data_9be6], ax
    mov ax, 0x40
    push ax
    mov ax, 0x9c02
    push ax
    lea ax, word [bp - 0x0048]
    push ax
    call ds_dispatch_fedc
    add sp, byte 6
@..local.l426:
    jmp near @..local.l433
@..local.l427:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7591]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    je short @..local.l428
    jmp near @..local.l433
@..local.l428:
    cmp byte [bx - 0x7590], 0xff
    je short @..local.l429
    mov al, byte [bx - 0x7590]
    cbw
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x642e], byte 0
    jne short @..local.l429
    jmp near @..local.l433
@..local.l429:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x63fe], byte 0
    je short @..local.l430
    jmp near @..local.l433
@..local.l430:
    cmp word [bp - 0x0004], byte 0
    je short @..local.l431
    mov word [bx - 0x63fe], 1
@..local.l431:
    mov ax, word [data_9be6]
    mov word [bp - 0x0006], ax
    mov ax, 0x40
    push ax
    lea ax, word [bp - 0x0048]
    push ax
    mov ax, 0x9c02
    push ax
    call ds_dispatch_fedc
    add sp, byte 6
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    push word [bp - 0x0004]
    push word [bp + 0x6]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7592]
    sub ah, ah
    push ax
    call api_idx_0048
    add sp, byte 8
    test ax, ax
    je short @..local.l432
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7592]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0002_21
    add sp, byte 4
    mov ax, 1
    ret
@..local.l432:
    mov ax, word [bp - 0x0006]
    mov word [data_9be6], ax
    mov ax, 0x40
    push ax
    mov ax, 0x9c02
    push ax
    lea ax, word [bp - 0x0048]
    push ax
    call ds_dispatch_fedc
    add sp, byte 6
@..local.l433:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jge short @..local.l434
    jmp near @..local.l420
@..local.l434:
    inc word [bp - 0x0004]
@..local.l435:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jge short @..local.l436
    jmp near @..local.l419
@..local.l436:
    mov ax, 0
    ret
api_idx_0006_8:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x9bd2
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..api_idx_0006_8.l1:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx - 0x7b57], 0xff
    je short @..api_idx_0006_8.l2
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0006_8.l2
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x7b57]
    cbw
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x642e], 1
@..api_idx_0006_8.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short @..api_idx_0006_8.l1
    mov ax, api_idx_0002
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0006_8.l3
    mov word [data_9bdc], 1
@..api_idx_0006_8.l3:
    mov byte [data_8aac], 6
    mov ax, 0xd
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0006_8.l4
    mov word [data_9bde], 1
@..api_idx_0006_8.l4:
    mov word [bp - 0x0006], 1
    mov word [bp - 0x0002], 0
@..api_idx_0006_8.l5:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7592]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    je short @..api_idx_0006_8.l6
    mov al, byte [bx - 0x7591]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    jne short @..api_idx_0006_8.l8
@..api_idx_0006_8.l6:
    cmp byte [bx - 0x7590], 0xff
    je short @..api_idx_0006_8.l7
    mov al, byte [bx - 0x7590]
    cbw
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x642e], byte 1
    jne short @..api_idx_0006_8.l8
@..api_idx_0006_8.l7:
    mov word [bp - 0x0006], 0
@..api_idx_0006_8.l8:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short @..api_idx_0006_8.l5
    cmp word [bp - 0x0006], byte 0
    je short @..local.l437
    mov ax, 0
    ret
@..local.l437:
    mov word [data_9c00], 0
@..local.l438:
    mov word [data_9be6], 0
    mov ax, 0
    push ax
    mov ax, 0x40
    push ax
    mov ax, 0x9c02
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    inc word [data_9c00]
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call api_idx_0048
    add sp, byte 8
    test ax, ax
    jne short @..local.l439
    cmp word [data_9c00], byte 0x14
    jl short @..local.l438
@..local.l439:
    cmp word [data_9c00], byte 0x14
    jl short @..local.l440
    mov ax, 0
    ret
@..local.l440:
    mov word [bp - 0x0002], 0
    jmp short @..local.l442
@..local.l441:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6418]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b10], al
    inc word [bp - 0x0002]
@..local.l442:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9be6]
    jl short @..local.l441
    mov ax, word [data_9be6]
    dec ax
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b11], al
    mov byte [bx - 0x7b13], 0
    mov ax, 1
    ret
api_idx_0002_22:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_22.l1:
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
    jne short @..local.l443
    mov al, byte [bx - 0x77d3]
    cbw
    cmp ax, word [bp + 0x8]
    jne short @..local.l443
    mov al, byte [bx - 0x77d2]
    cbw
    cmp ax, word [bp + 0xa]
    jne short @..local.l443
    ret
@..local.l443:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short @..api_idx_0002_22.l1
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
math_loc_9448:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b14]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..math_loc_9448.l1
    mov ax, 1
    jmp short @..math_loc_9448.l2
@..math_loc_9448.l1:
    mov ax, 0
@..math_loc_9448.l2:
    ret
math_loc_946a:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 3
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    push ax
    mov al, byte [bx - 0x7b14]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0006_8
    add sp, byte 6
    test ax, ax
    jne short @..math_loc_946a.l1
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 0
@..math_loc_946a.l1:
    ret
math_loc_94a6:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    je short @..local.l444
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov al, byte [bx - 0x7aff]
    cbw
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short @..local.l444
    mov al, byte [bx - 0x7b17]
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call math_loc_946a
    pop cx
    mov ax, 1
    ret
@..local.l444:
    mov ax, 0
    ret
api_idx_003a:
    mov ax, 0xffc6
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x34
    push ax
    lea ax, word [bp - 0x003a]
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov word [bp - 0x003a], 1
    mov word [bp - 0x0038], 1
    mov word [bp - 0x0036], 1
    mov word [bp - 0x0030], 1
    mov word [bp - 0x002c], 1
    mov word [bp - 0x0002], 0
@..api_idx_003a.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    cmp byte [bx - 0x7688], 0x1b
    jne short @..api_idx_003a.l2
    mov byte [bx - 0x7688], 8
@..api_idx_003a.l2:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_003a.l3
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7688]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x003a], 1
@..api_idx_003a.l3:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x1a
    jl short @..api_idx_003a.l1
    mov word [bp - 0x0002], 0
@..api_idx_003a.l4:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_003a.l5
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x003a], 2
@..api_idx_003a.l5:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x1a
    jl short @..api_idx_003a.l4
    push word [bp + 0x4]
    call math_loc_94a6
    pop cx
    test ax, ax
    je short @..local.l445
    ret
@..local.l445:
    mov ax, 0x1a
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0002], ax
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x768a]
    sub ah, ah
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp - 0x0004], byte 0
    jle short @..local.l446
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    mov cx, 0xc
    imul cx
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
@..local.l446:
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x003a], byte 0
    je short @..local.l445
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, word [bp - 0x0006]
    cmp ax, strict word 0xffdd
    jl short @..local.l445
    mov ax, 4
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    je short @..local.l447
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l447
    jmp near @..local.l445
@..local.l447:
    mov al, byte [bp - 0x0002]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call math_loc_946a
    pop cx
    ret
math_loc_9658:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x64
    push ax
    mov ax, 0xff9c
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    mov cx, 0xc
    imul cx
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    add ax, word [bp + 0x8]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    mov cx, 0xc
    imul cx
    mov cx, ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7622], al
    ret
api_idx_0004_15:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call math_loc_9448
    add sp, byte 4
    test ax, ax
    je short @..local.l448
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    push ax
    add bx, strict word 0x8506
    mov ax, bx
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..local.l448
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    push ax
    mov ax, 6
    push ax
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0002_22
    add sp, byte 8
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 2
    mov byte [bx - 0x7b13], 0
    ret
@..local.l448:
    push word [bp + 0x4]
    call math_loc_94a6
    pop cx
    test ax, ax
    je short @..local.l449
    ret
@..local.l449:
    mov word [bp - 0x0002], 0
@..local.l450:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l453
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..local.l452
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x7b58]
    sub ah, ah
    mov word [bp - 0x0004], ax
    push ax
    push word [bp + 0x4]
    call math_loc_9448
    add sp, byte 4
    test ax, ax
    je short @..local.l451
    mov al, byte [bp - 0x0002]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b12], al
    mov byte [bx - 0x7b16], 4
    mov byte [bx - 0x7b13], 0
    ret
@..local.l451:
    mov al, byte [bp - 0x0004]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call math_loc_946a
    pop cx
    ret
@..local.l452:
    jmp near @..local.l459
@..local.l453:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..local.l454
    jmp near @..local.l458
@..local.l454:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx - 0x7b59], 1
    jne short @..local.l455
    mov al, byte [bx - 0x7b5a]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call math_loc_946a
    pop cx
    jmp near @..local.l457
@..local.l455:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx - 0x7b59], 0
    jne short @..local.l457
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    mov cx, 0x26
    imul cx
    mov bx, ax
    mov al, byte [bx - 0x7b15]
    push ax
    mov ax, word [bp + 0x4]
    imul cx
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b15], al
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x7b5a]
    push ax
    mov ax, word [bp + 0x4]
    imul cx
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b12], al
    push word [bp + 0x4]
    call math_loc_946a
    pop cx
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b16], 0
    jne short @..local.l456
    push word [bp + 0x4]
    call api_idx_003a
    pop cx
    ret
@..local.l456:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 5
    mov al, byte [bx - 0x7b12]
    sub ah, ah
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0002_22
    add sp, byte 8
@..local.l457:
    ret
@..local.l458:
    push word [bp + 0x4]
    call api_idx_003a
    pop cx
    ret
@..local.l459:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jge short @..local.l460
    jmp near @..local.l450
@..local.l460:
    push word [bp + 0x4]
    call api_idx_003a
    pop cx
    ret
api_idx_0002_23:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    mov word [bp - 0x0002], ax
    shl ax, 1
    shl ax, 1
    mov bx, ax
    cmp byte [bx - 0x7689], 0xff
    je short @..api_idx_0002_23.l1
    mov ax, 4
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..api_idx_0002_23.l1
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7689]
    cbw
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0002_23.l1:
    ret
api_idx_0002_24:
    mov ax, 0xfffe
    call ds_dispatch_f40b
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
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..api_idx_0002_24.l1:
    mov ax, 0
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp - 0x0002]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x16
    jl short @..api_idx_0002_24.l1
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    cmp word [bp + 0x6], byte 0xff
    je short @..api_idx_0002_24.l2
    mov ax, 0
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8502
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0002_24.l2:
    ret
api_idx_0006_9:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
@..api_idx_0006_9.l1:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx - 0x7b59], 0
    jbe short @..local.l461
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jne short @..local.l461
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0006_9.l2
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0006_9.l2
    mov ax, 4
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..api_idx_0006_9.l2
    push word [bp - 0x0006]
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0002_22
    add sp, byte 8
    push word [bp - 0x0002]
    mov ax, 0xffff
    push ax
    push word [bp + 0x4]
    call api_idx_0002_24
    add sp, byte 6
@..api_idx_0006_9.l2:
    ret
@..local.l461:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jge short @..local.l462
    jmp near @..api_idx_0006_9.l1
@..local.l462:
    ret
api_idx_0010_4:
    mov ax, 0xfff0
    call ds_dispatch_f40b
    mov word [bp - 0x000a], 0xffff
    mov word [bp - 0x000c], 0xffff
    mov word [bp - 0x0002], 0xa
@..api_idx_0010_4.l1:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8502
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0010_4.l2
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0010_4.l2
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x7b58]
    sub ah, ah
    mov word [bp - 0x0006], ax
    push ax
    push word [bp + 0x4]
    call math_loc_9448
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0010_4.l2
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x000a], ax
@..api_idx_0010_4.l2:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8502
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0010_4.l3
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0010_4.l3
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x000c], ax
@..api_idx_0010_4.l3:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0010_4.l4
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0010_4.l4:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0010_4.l5
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0010_4.l5:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov cl, byte [bx - 0x7b18]
    pop ax
    cmp al, cl
    je short @..api_idx_0010_4.l6
    jmp near @..api_idx_0010_4.l10
@..api_idx_0010_4.l6:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0010_4.l7
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0010_4.l7:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0010_4.l8
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0010_4.l8:
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0010_4.l9
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0010_4.l9:
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0010_4.l10
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xc
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0010_4.l10:
    dec word [bp - 0x0002]
    jl short @..api_idx_0010_4.l11
    jmp near @..api_idx_0010_4.l1
@..api_idx_0010_4.l11:
    cmp word [bp + 0x8], byte 0
    jle short @..local.l463
    mov ax, 5
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_9658
    add sp, byte 6
    mov ax, 5
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    push word [bp + 0x4]
    push word [bp + 0x6]
    call math_loc_9658
    add sp, byte 6
@..local.l463:
    mov ax, 0x16
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov byte [bx - 0x63be], 1
    mov ax, 0x16
    imul word [bp + 0x6]
    add ax, word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x63be], 1
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    mov cx, 0xa
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x000e], ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x0010], ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    pop ax
    cmp al, byte [bx - 0x7b18]
    jne short @..local.l464
    cmp byte [bx - 0x7b16], 1
    jne short @..local.l464
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7aff], 0x41
    jge short @..local.l464
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l464
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    inc byte [bx - 0x7aff]
@..local.l464:
    cmp word [bp - 0x000c], byte 0xff
    jne short @..local.l465
    jmp near @..local.l469
@..local.l465:
    cmp word [bp - 0x000a], byte 0xff
    jne short @..local.l468
    mov ax, 0x32
    sub ax, word [bp - 0x000e]
    cmp ax, word [bp + 0x8]
    jg short @..local.l466
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    inc ax
    cmp ax, word [bp - 0x000e]
    jle short @..local.l467
@..local.l466:
    ret
@..local.l467:
    mov ax, 0x64
    push ax
    mov ax, 1
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    add ax, word [bp - 0x000e]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7aff], al
    mov ax, 0x64
    push ax
    mov ax, 1
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    sub ax, word [bp - 0x000e]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7aff], al
@..local.l468:
    push word [bp + 0x6]
    mov ax, 3
    push ax
    push word [bp - 0x000c]
    push word [bp + 0x4]
    call api_idx_0002_22
    add sp, byte 8
    push word [bp - 0x000c]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_24
    add sp, byte 6
@..local.l469:
    cmp word [bp - 0x000a], byte 0xff
    jne short @..local.l470
    jmp near @..local.l474
@..local.l470:
    cmp word [bp - 0x000c], byte 0xff
    jne short @..local.l473
    mov ax, 0x32
    sub ax, word [bp - 0x0010]
    cmp ax, word [bp + 0x8]
    jg short @..local.l471
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    inc ax
    cmp ax, word [bp - 0x0010]
    jle short @..local.l472
@..local.l471:
    ret
@..local.l472:
    mov ax, 0x64
    push ax
    mov ax, 1
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    add ax, word [bp - 0x0010]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7aff], al
    mov ax, 0x64
    push ax
    mov ax, 1
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7aff]
    cbw
    sub ax, word [bp - 0x0010]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7aff], al
@..local.l473:
    push word [bp + 0x4]
    mov ax, 3
    push ax
    push word [bp - 0x000a]
    push word [bp + 0x6]
    call api_idx_0002_22
    add sp, byte 8
    push word [bp - 0x000a]
    push word [bp + 0x4]
    push word [bp + 0x6]
    call api_idx_0002_24
    add sp, byte 6
@..local.l474:
    ret
api_idx_0004_16:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0004_16.l1:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_16.l2
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0004_16.l2:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8502
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_16.l3
    push word [bp + 0x6]
    mov ax, 3
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0002_22
    add sp, byte 8
    push word [bp - 0x0002]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_24
    add sp, byte 6
@..api_idx_0004_16.l3:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short @..api_idx_0004_16.l1
    ret
api_idx_0012_4:
    mov ax, 0xffee
    call ds_dispatch_f40b
    mov ax, 0xf
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    add ax, strict word 0xf
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_9658
    add sp, byte 6
    mov ax, 0xf
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    add ax, strict word 0xf
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    push word [bp + 0x4]
    push word [bp + 0x6]
    call math_loc_9658
    add sp, byte 6
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x7b16], 1
    je short @..api_idx_0012_4.l1
    cmp word [bp + 0x6], byte 0x13
    jne short @..api_idx_0012_4.l2
@..api_idx_0012_4.l1:
    mov ax, 1
    jmp short @..api_idx_0012_4.l3
@..api_idx_0012_4.l2:
    mov ax, 0
@..api_idx_0012_4.l3:
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0006], 0
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0008], 0
    mov word [bp - 0x000c], 0
    mov word [bp - 0x000e], 0
@..api_idx_0012_4.l4:
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov cx, 4
    cwd
    idiv cx
    push ax
    call ds_dispatch_b7a9
    pop cx
    inc ax
    mov word [bp - 0x0006], ax
    add word [bp - 0x000a], ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov cx, 4
    cwd
    idiv cx
    push ax
    call ds_dispatch_b7a9
    pop cx
    inc ax
    mov word [bp - 0x0008], ax
    add word [bp - 0x000c], ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, word [bp - 0x000a]
    jge short @..api_idx_0012_4.l5
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 7
    mov word [bp - 0x000e], 0xffff
@..api_idx_0012_4.l5:
    cmp word [bp - 0x000e], byte 0
    je short @..api_idx_0012_4.l6
    jmp near @..api_idx_0012_4.l8
@..api_idx_0012_4.l6:
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov cx, ax
    pop ax
    cmp ax, cx
    jle short @..api_idx_0012_4.l7
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0004_16
    add sp, byte 4
    mov word [bp - 0x000e], 1
    jmp short @..api_idx_0012_4.l8
@..api_idx_0012_4.l7:
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov cl, byte [bx - 0x7b00]
    pop ax
    cmp al, cl
    jge short @..api_idx_0012_4.l8
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..api_idx_0012_4.l8
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0010_4
    add sp, byte 4
    mov word [bp - 0x000e], 1
@..api_idx_0012_4.l8:
    cmp word [bp - 0x000e], byte 0
    jne short @..api_idx_0012_4.l9
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    sub ax, word [bp - 0x0006]
    mov byte [bx - 0x7b00], al
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    sub ax, word [bp - 0x0008]
    mov byte [bx - 0x7b00], al
@..api_idx_0012_4.l9:
    cmp word [bp - 0x000e], byte 0
    jne short @..api_idx_0012_4.l10
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jle short @..api_idx_0012_4.l10
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jle short @..api_idx_0012_4.l10
    jmp near @..api_idx_0012_4.l4
@..api_idx_0012_4.l10:
    mov word [bp - 0x0012], 0
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short @..local.l476
    cmp word [bp - 0x0010], byte 0
    je short @..api_idx_0012_4.l11
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, strict word 0xa
    push ax
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b00], al
    jmp short @..local.l475
@..api_idx_0012_4.l11:
    mov word [bp - 0x0012], 1
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov byte [bx - 0x7b00], 0
@..local.l475:
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0004_16
    add sp, byte 4
    mov word [bp - 0x000e], 1
    jmp near @..local.l479
@..local.l476:
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov cl, byte [bx - 0x7b00]
    pop ax
    cmp al, cl
    jle short @..local.l477
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l477
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 7
    mov word [bp - 0x000e], 0xffff
    jmp short @..local.l479
@..local.l477:
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov cx, 3
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short @..local.l479
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x7b16], 3
    je short @..local.l478
    cmp byte [bx - 0x7b16], 2
    jne short @..local.l479
@..local.l478:
    push word [bp + 0x6]
    call api_idx_003a
    pop cx
    mov ax, 0x26
    imul word [bp + 0x6]
    mov bx, ax
    mov byte [bx - 0x7b16], 7
    mov word [bp - 0x000e], 1
@..local.l479:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short @..local.l480
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    inc ax
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b00], al
    mov byte [bx - 0x7b16], 7
    mov word [bp - 0x000e], 0xffff
@..local.l480:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b16], 7
    jne short @..local.l481
    push word [bp + 0x4]
    call api_idx_003a
    pop cx
@..local.l481:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b14]
    sub ah, ah
    push ax
    push word [bp - 0x0012]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_22
    add sp, byte 8
    mov ax, word [bp - 0x000e]
    ret
math_loc_a215:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..math_loc_a215.l1
    mov ax, 0xffff
    push ax
    mov ax, 5
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_22
    add sp, byte 8
    mov ax, 0xf
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, strict word 0xfffb
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_9658
    add sp, byte 6
    mov ax, 0xf
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, strict word 0xfffb
    push ax
    push word [bp + 0x4]
    push word [bp + 0x6]
    call math_loc_9658
    add sp, byte 6
@..math_loc_a215.l1:
    mov ax, 0x16
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov byte [bx - 0x63be], 1
    mov ax, 0x16
    imul word [bp + 0x6]
    add ax, word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x63be], 1
    ret
api_idx_0002_25:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0x18
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, strict word 0xf
    jle short @..local.l482
    push word [bp + 0x8]
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp + 0x6]
    mov word [bp - 0x0002], ax
    mov al, byte [bx - 0x7aff]
    cbw
    mov cx, ax
    mov ax, word [bp - 0x0002]
    cmp cx, ax
    jge short @..api_idx_0002_25.l1
    mov word [bp - 0x0002], cx
@..api_idx_0002_25.l1:
    mov al, byte [bp - 0x0002]
    mov byte [bx - 0x7b00], al
    mov ax, 1
    ret
@..local.l482:
    mov ax, 0
    ret
api_idx_0010_5:
    mov ax, 0xfff0
    call ds_dispatch_f40b
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call math_loc_9448
    add sp, byte 4
    test ax, ax
    jne short @..local.l483
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 0
    ret
@..local.l483:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    inc byte [bx - 0x7b13]
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call api_idx_0002_25
    add sp, byte 6
    test ax, ax
    je short @..local.l484
    ret
@..local.l484:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    mov word [bp - 0x0006], ax
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x768a]
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jle short @..local.l485
    mov ax, 4
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l485
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    mov cx, 0xc
    imul cx
    add ax, word [bp - 0x0008]
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x000a], ax
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    add ax, strict word 0xff9c
    mov cx, ax
    mov ax, word [bp - 0x000a]
    cmp cx, ax
    jle short @..local.l485
    mov ax, 4
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l485
    push word [bp + 0x4]
    call api_idx_003a
    pop cx
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 7
    ret
@..local.l485:
    mov word [bp - 0x000c], 0
@..local.l486:
    mov ax, word [bp - 0x000c]
    cmp ax, word [bp + 0x4]
    jne short @..local.l487
    jmp near @..local.l499
@..local.l487:
    mov cx, 0x26
    imul cx
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short @..local.l488
    jmp near @..local.l499
@..local.l488:
    mov ax, 0x16
    imul word [bp + 0x4]
    add ax, word [bp - 0x000c]
    mov bx, ax
    cmp byte [bx - 0x63be], 0
    je short @..local.l489
    jmp near @..local.l499
@..local.l489:
    push word [bp - 0x0006]
    push word [bp - 0x000c]
    call math_loc_9448
    add sp, byte 4
    test ax, ax
    jne short @..local.l490
    jmp near @..local.l499
@..local.l490:
    mov ax, 0x26
    imul word [bp - 0x000c]
    mov bx, ax
    cmp byte [bx - 0x7b16], 2
    je short @..local.l491
    cmp byte [bx - 0x7b16], 1
    je short @..local.l491
    jmp near @..local.l499
@..local.l491:
    mov ax, 4
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    je short @..local.l492
    jmp near @..local.l499
@..local.l492:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    mov cx, 0xc
    imul cx
    push ax
    mov ax, 0x26
    imul word [bp - 0x000c]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x000e], ax
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    add ax, strict word 0x19
    mov cx, ax
    mov ax, word [bp - 0x000e]
    cmp cx, ax
    jg short @..local.l493
    push ax
    push word [bp - 0x000c]
    push word [bp + 0x4]
    call api_idx_0010_4
    add sp, byte 6
    jmp near @..local.l499
@..local.l493:
    mov ax, 0x19
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov ax, 0x26
    imul word [bp - 0x000c]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov dx, ax
    pop ax
    sub ax, dx
    add ax, strict word 0xffdd
    sub ax, cx
    cmp ax, word [bp - 0x000e]
    jl short @..local.l497
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    je short @..local.l496
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov ax, 0x26
    imul word [bp - 0x000c]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cmp ax, cx
    jle short @..local.l496
    push word [bp - 0x000c]
    push word [bp + 0x4]
    call api_idx_0012_4
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0004], byte 0
    jne short @..local.l494
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l495
@..local.l494:
    cmp word [bp - 0x0004], byte 0xff
    jne short @..local.l496
@..local.l495:
    ret
@..local.l496:
    jmp short @..local.l499
@..local.l497:
    push word [bp - 0x000c]
    push word [bp + 0x4]
    call math_loc_a215
    add sp, byte 4
    mov ax, 5
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l498
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 0
@..local.l498:
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l499
    ret
@..local.l499:
    inc word [bp - 0x000c]
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 0x16
    jge short @..local.l500
    jmp near @..local.l486
@..local.l500:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b13]
    sub ah, ah
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..local.l501
    push word [bp + 0x4]
    call api_idx_0006_9
    pop cx
    push word [bp + 0x4]
    call api_idx_0002_23
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8506
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..local.l501:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b17]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jne short @..local.l502
    mov al, byte [bx - 0x7aff]
    mov byte [bx - 0x7b00], al
@..local.l502:
    cmp byte [bx - 0x7b13], 0x18
    jbe short @..local.l503
    mov byte [bx - 0x7b16], 0
@..local.l503:
    ret
api_idx_0008_5:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    mov word [bp - 0x0006], 0
@..api_idx_0008_5.l1:
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0008_5.l2
    jmp near @..local.l506
@..api_idx_0008_5.l2:
    mov cx, 0x26
    imul cx
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short @..api_idx_0008_5.l3
    jmp near @..local.l506
@..api_idx_0008_5.l3:
    mov ax, 0x16
    imul word [bp + 0x4]
    add ax, word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx - 0x63be], 0
    je short @..api_idx_0008_5.l4
    jmp near @..local.l506
@..api_idx_0008_5.l4:
    mov ax, word [bp + 0x4]
    imul cx
    mov bx, ax
    mov al, byte [bx - 0x7b14]
    push ax
    mov ax, word [bp - 0x0006]
    imul cx
    mov bx, ax
    mov cl, byte [bx - 0x7b14]
    pop ax
    cmp al, cl
    je short @..api_idx_0008_5.l5
    jmp near @..local.l506
@..api_idx_0008_5.l5:
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x6]
    je short @..api_idx_0008_5.l8
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b13]
    sub ah, ah
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x26
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx - 0x7b13]
    sub ah, ah
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    pop ax
    cmp ax, cx
    je short @..api_idx_0008_5.l6
    jmp near @..local.l506
@..api_idx_0008_5.l6:
    mov ax, 0x26
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx - 0x7b16]
    cmp al, 3
    je short @..api_idx_0008_5.l8
    cmp byte [bx - 0x7b16], 0
    je short @..api_idx_0008_5.l8
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b16], 6
    je short @..api_idx_0008_5.l7
    jmp near @..local.l506
@..api_idx_0008_5.l7:
    mov ax, 0x26
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx - 0x7b16]
    cmp al, 1
    jne short @..api_idx_0008_5.l8
    jmp near @..local.l506
@..api_idx_0008_5.l8:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    mov cx, 0xc
    imul cx
    push ax
    mov ax, 0x26
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x0008], ax
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    add ax, strict word 0x19
    mov cx, ax
    mov ax, word [bp - 0x0008]
    cmp cx, ax
    jg short @..api_idx_0008_5.l10
    push ax
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0010_4
    add sp, byte 6
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x6]
    jne short @..api_idx_0008_5.l9
    push word [bp + 0x4]
    call api_idx_003a
    pop cx
@..api_idx_0008_5.l9:
    jmp near @..local.l506
@..api_idx_0008_5.l10:
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov ax, 0x26
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    mov dx, ax
    pop ax
    sub ax, dx
    add ax, strict word 0xffdd
    sub ax, cx
    cmp ax, word [bp - 0x0008]
    jge short @..api_idx_0008_5.l11
    jmp near @..local.l505
@..api_idx_0008_5.l11:
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x6]
    je short @..api_idx_0008_5.l12
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    je short @..local.l504
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b00]
    cbw
    push ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cmp ax, cx
    jle short @..local.l504
@..api_idx_0008_5.l12:
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0012_4
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x6]
    jne short @..api_idx_0008_5.l13
    cmp word [bp - 0x0002], byte 1
    jne short @..api_idx_0008_5.l13
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..api_idx_0008_5.l13
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 0
    jmp short @..local.l504
@..api_idx_0008_5.l13:
    cmp word [bp - 0x0002], byte 0xff
    jne short @..local.l504
    ret
@..local.l504:
    jmp short @..local.l506
@..local.l505:
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call math_loc_a215
    add sp, byte 4
@..local.l506:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 0x16
    jge short @..local.l507
    jmp near @..api_idx_0008_5.l1
@..local.l507:
    ret
api_idx_0002_26:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b16], 3
    jne short @..local.l508
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call api_idx_0002_25
    add sp, byte 6
    test ax, ax
    je short @..local.l508
    ret
@..local.l508:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b16], 5
    je short @..local.l509
    jmp near @..local.l513
@..local.l509:
    cmp byte [bx - 0x7b11], 0
    jge short @..local.l512
    mov al, byte [bx - 0x7b12]
    sub ah, ah
    mov cx, 0x26
    imul cx
    mov bx, ax
    mov al, byte [bx - 0x7b15]
    push ax
    mov ax, cx
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    cmp al, byte [bx - 0x7b14]
    je short @..local.l511
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call math_loc_946a
    pop cx
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b16], 0
    jne short @..local.l510
    push word [bp + 0x4]
    call api_idx_003a
    pop cx
    ret
@..local.l510:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 5
    jmp short @..local.l512
@..local.l511:
    mov ax, 0x10
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b13], al
@..local.l512:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b12], 0x15
    je short @..local.l513
    mov al, byte [bx - 0x7b12]
    sub ah, ah
    mov cx, 0x26
    imul cx
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short @..local.l513
    mov ax, cx
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 3
@..local.l513:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b16], 7
    je short @..local.l516
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0008_5
    add sp, byte 4
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b16]
    cmp al, 3
    je short @..local.l514
    cmp al, 7
    je short @..local.l514
    cmp al, 5
    jne short @..local.l515
@..local.l514:
    cmp byte [bx - 0x7b00], 0
    jg short @..local.l516
@..local.l515:
    ret
@..local.l516:
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b11], 0
    jge short @..local.l518
    cmp byte [bx - 0x7b16], 5
    je short @..local.l517
    push word [bp + 0x4]
    call api_idx_003a
    pop cx
@..local.l517:
    ret
@..local.l518:
    mov ax, 0x26
    imul word [bp + 0x4]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b11]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7b10]
    sub ah, ah
    mov word [bp - 0x0002], ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    inc byte [bx - 0x7b13]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov si, ax
    mov al, byte [si - 0x758f]
    cmp al, byte [bx - 0x7b13]
    jbe short @..local.l519
    jmp near @..local.l523
@..local.l519:
    mov byte [bx - 0x7b13], 0
    mov al, byte [bx - 0x7b14]
    cmp al, byte [si - 0x7592]
    jne short @..local.l520
    mov al, byte [si - 0x7591]
    mov byte [bx - 0x7b14], al
    jmp short @..local.l521
@..local.l520:
    mov al, byte [bx - 0x7b14]
    cmp al, byte [si - 0x7591]
    jne short @..local.l521
    mov al, byte [si - 0x7592]
    mov byte [bx - 0x7b14], al
@..local.l521:
    cmp byte [bx - 0x7b16], 7
    jne short @..local.l522
    mov byte [bx - 0x7b16], 3
@..local.l522:
    dec byte [bx - 0x7b11]
    jge short @..local.l523
    cmp byte [bx - 0x7b16], 3
    jne short @..local.l523
    mov byte [bx - 0x7b16], 0
    mov al, byte [bx - 0x7b14]
    cmp al, byte [bx - 0x7b15]
    jne short @..local.l523
    mov byte [bx - 0x7b16], 2
    mov byte [bx - 0x7b13], 0
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    push ax
    mov ax, 6
    push ax
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0002_22
    add sp, byte 8
@..local.l523:
    ret
api_idx_0002_27:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b12]
    sub ah, ah
    mov word [bp - 0x0002], ax
    inc byte [bx - 0x7b13]
    mov al, byte [bx - 0x7b13]
    sub ah, ah
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, strict word 0x18
    jle short @..api_idx_0002_27.l1
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b15]
    sub ah, ah
    push ax
    mov ax, 7
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0002_22
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
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx - 0x7b56], 0xff
    je short @..api_idx_0002_27.l1
    mov al, byte [bx - 0x7b56]
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b15], al
    push word [bp + 0x4]
    call math_loc_946a
    pop cx
@..api_idx_0002_27.l1:
    ret
math_loc_aa3f:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x10
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b13], al
    mov al, byte [bx - 0x7b14]
    cmp al, byte [bx - 0x7b17]
    jne short @..local.l525
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l525
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7aff]
    mov byte [bx - 0x7b00], al
    mov ax, 0xa
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l524
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 2
    mov byte [bx - 0x7b13], 0
    ret
@..local.l524:
    jmp short @..local.l526
@..local.l525:
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call api_idx_0002_25
    add sp, byte 6
    test ax, ax
    je short @..local.l526
    ret
@..local.l526:
    mov ax, 0xffff
    push ax
    push word [bp + 0x4]
    call api_idx_0008_5
    add sp, byte 4
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx - 0x7b16], 6
    ret
math_loc_aad3:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x26
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jg short @..local.l527
    ret
@..local.l527:
    mov al, byte [bx - 0x7b16]
    sub ah, ah
    jmp near @..local.l528

    db 0xff, 0x76, 0x04, 0xe8, 0xd6, 0xeb, 0x59, 0xe9, 0x9e, 0x00, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0x85, 0xf7, 0x83, 0xc4, 0x06, 0xe9, 0x8d, 0x00, 0xff, 0x76, 0x04, 0xe8, 0xcc
    db 0xf7, 0x59, 0xe9, 0x83, 0x00, 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x91, 0xfc, 0x83
    db 0xc4, 0x04, 0xeb, 0x74, 0xff, 0x76, 0x04, 0xe8, 0x78, 0xfe, 0x59, 0xeb, 0x6b, 0xb8, 0x26, 0x00
    db 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0xee, 0x84, 0x2a, 0xe4, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x6e, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x51, 0xff, 0x76, 0x04, 0xe8, 0xf0, 0xfe, 0x59, 0xeb, 0x48
    db 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x56, 0xfc, 0x83, 0xc4, 0x04, 0xb8, 0x26, 0x00
    db 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x80, 0xbf, 0xea, 0x84, 0x07, 0x75, 0x0d, 0xb8, 0xff, 0xff, 0x50
    db 0xff, 0x76, 0x04, 0xe8, 0x3a, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x1d, 0x39, 0xfb, 0x43, 0xfb, 0x54
    db 0xfb, 0x5e, 0xfb, 0x6d, 0xfb, 0x76, 0xfb, 0x90, 0xfb, 0x99, 0xfb

@..local.l528:
    cmp ax, strict word 8
    jae short @..local.l529
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x043c]
@..local.l529:
    ret
api_idx_0032:
    mov ax, 0xffce
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x1e4
    push ax
    mov ax, 0x9c42
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x2c
    push ax
    lea ax, word [bp - 0x0032]
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov word [bp - 0x0004], 0
@..api_idx_0032.l1:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7687]
    cbw
    cmp ax, word [data_830c]
    jne short @..api_idx_0032.l2
    mov al, byte [bp - 0x0004]
    mov byte [data_8809], al
    mov byte [data_880a], al
@..api_idx_0032.l2:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x1a
    jl short @..api_idx_0032.l1
    mov word [bp - 0x0006], 0
@..api_idx_0032.l3:
    mov ax, 0x16
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0032], byte 0
    jne short @..api_idx_0032.l3
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
    jl short @..api_idx_0032.l3
    ret

    db 0x8f, 0x06, 0x90, 0x91, 0x59, 0x89, 0x26, 0x8c, 0x91, 0x89, 0x2e, 0x8e, 0x91, 0x89, 0x36, 0x88
    db 0x91, 0x89, 0x3e, 0x8a, 0x91, 0xfc, 0xbf, 0x92, 0x91, 0xb9, 0x26, 0x9e, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0xb5, 0x53, 0x8b, 0x2e, 0x8e, 0x91, 0x8b, 0x26, 0x8c
    db 0x91, 0x8b, 0x36, 0x88, 0x91, 0x8b, 0x3e, 0x8a, 0x91, 0x51, 0xff, 0x26, 0x90, 0x91
    db 'VM1.$$$', 0
    db 'MAZEDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TOWNDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'CAVEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 0x00
    db '!%&]@#~', 0
    db 0x20
    times 11 db 0

