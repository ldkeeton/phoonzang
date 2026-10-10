%include "inc/structs/structs.inc"
%include "inc/structs/loc_2e75.inc"
org 0
bits 16
%include "inc/labels/vmext_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x4b, 0x52, 0x98, 0x90

loc_0307 equ 0x0307
loc_0309 equ 0x0309
loc_030b equ 0x030b
loc_030d equ 0x030d
loc_030f equ 0x030f
data_03ae equ 0x03ae
data_03dc equ 0x03dc
loc_08e0 equ 0x08e0
data_0e0e equ 0x0e0e
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
loc_0fe7 equ 0x0fe7
loc_106d equ 0x106d
loc_10d8 equ 0x10d8
loc_10e5 equ 0x10e5
loc_1101 equ 0x1101
loc_1115 equ 0x1115
loc_1199 equ 0x1199
loc_11a1 equ 0x11a1
loc_1227 equ 0x1227
loc_127a equ 0x127a
loc_1297 equ 0x1297
loc_12a9 equ 0x12a9
loc_12c6 equ 0x12c6
loc_12dc equ 0x12dc
loc_12f8 equ 0x12f8
loc_1372 equ 0x1372
loc_1a65 equ 0x1a65
loc_1e94 equ 0x1e94
loc_2361 equ 0x2361
loc_2373 equ 0x2373
loc_23aa equ 0x23aa
loc_23e7 equ 0x23e7
loc_240a equ 0x240a
loc_240d equ 0x240d
loc_241b equ 0x241b
loc_2468 equ 0x2468
loc_246a equ 0x246a
loc_249c equ 0x249c
loc_24a2 equ 0x24a2
loc_24a4 equ 0x24a4
loc_24af equ 0x24af
loc_24b1 equ 0x24b1
loc_24be equ 0x24be
loc_24dd equ 0x24dd
loc_2502 equ 0x2502
loc_2508 equ 0x2508
loc_250e equ 0x250e
loc_2513 equ 0x2513
loc_251e equ 0x251e
loc_2520 equ 0x2520
loc_2522 equ 0x2522
loc_2524 equ 0x2524
loc_2526 equ 0x2526
loc_2528 equ 0x2528
loc_2a04 equ 0x2a04
loc_2a0d equ 0x2a0d
loc_2a19 equ 0x2a19
loc_2a1f equ 0x2a1f
loc_2a41 equ 0x2a41
loc_2a4e equ 0x2a4e
loc_2a65 equ 0x2a65
loc_2a71 equ 0x2a71
loc_2a77 equ 0x2a77
loc_2a7a equ 0x2a7a
loc_2a88 equ 0x2a88
loc_2a91 equ 0x2a91
loc_2a9a equ 0x2a9a
loc_2aef equ 0x2aef
loc_2b14 equ 0x2b14
loc_2b45 equ 0x2b45
loc_2b9f equ 0x2b9f
loc_2ba1 equ 0x2ba1
loc_2bfb equ 0x2bfb
loc_2c13 equ 0x2c13
loc_2c32 equ 0x2c32
loc_2c4e equ 0x2c4e
loc_2c7c equ 0x2c7c
loc_2cd6 equ 0x2cd6
loc_2cd9 equ 0x2cd9
loc_2cea equ 0x2cea
loc_2cf3 equ 0x2cf3
loc_2d34 equ 0x2d34
loc_2d83 equ 0x2d83
loc_2d85 equ 0x2d85
loc_2de1 equ 0x2de1
loc_2e21 equ 0x2e21
loc_2e22 equ 0x2e22
loc_2e39 equ 0x2e39
loc_2e3a equ 0x2e3a
loc_2e5b equ 0x2e5b
loc_2e69 equ 0x2e69
loc_2e6b equ 0x2e6b
loc_2e6d equ 0x2e6d
loc_2e6f equ 0x2e6f
loc_2e71 equ 0x2e71
loc_2e73 equ 0x2e73
loc_2e75 equ 0x2e75
loc_2e91 equ 0x2e91
loc_2ec7 equ 0x2ec7
loc_2ee6 equ 0x2ee6
loc_2ee8 equ 0x2ee8
data_5910 equ 0x5910
data_5b55 equ 0x5b55
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
data_7abe equ 0x7abe
data_7b05 equ 0x7b05
data_7d3c equ 0x7d3c
data_82e8 equ 0x82e8
data_82ea equ 0x82ea
data_82ee equ 0x82ee
data_830a equ 0x830a
data_830c equ 0x830c
data_8456 equ 0x8456
data_8af0 equ 0x8af0
data_8d12 equ 0x8d12
data_8f1c equ 0x8f1c
data_8f1e equ 0x8f1e
data_8f20 equ 0x8f20
data_8f22 equ 0x8f22
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
data_908a equ 0x908a
data_908c equ 0x908c
data_9176 equ 0x9176
data_9178 equ 0x9178
data_917a equ 0x917a
data_917c equ 0x917c
data_917e equ 0x917e
data_9180 equ 0x9180
data_9188 equ 0x9188
data_918a equ 0x918a
data_91a4 equ 0x91a4
data_91a6 equ 0x91a6
data_91a8 equ 0x91a8
data_91aa equ 0x91aa
data_91b8 equ 0x91b8
data_92f2 equ 0x92f2
data_9aec equ 0x9aec
data_9b08 equ 0x9b08
data_9b0a equ 0x9b0a
data_9b0c equ 0x9b0c
data_9b0e equ 0x9b0e
data_9b10 equ 0x9b10
data_9b12 equ 0x9b12
data_9b14 equ 0x9b14
data_9b16 equ 0x9b16
data_9b18 equ 0x9b18
data_9b1a equ 0x9b1a

    db 0xe8, 0x00, 0x9c ; call ds_dispatch_9c0b
    or word [bp + si - 0x005e], sp   ; 0x000b
%include "vmext/api_idx_0002.asm"

%include "vmext/api_idx_0004.asm"

%include "vmext/api_idx_0002_2.asm"

%include "vmext/api_idx_0002_3.asm"

%include "vmext/api_idx_0002_4.asm"

%include "vmext/api_idx_0004_2.asm"

%include "vmext/api_idx_0008.asm"

%include "vmext/api_idx_0050.asm"

%include "vmext/api_idx_0004_3.asm"

%include "vmext/api_idx_000c.asm"

%include "vmext/api_idx_0002_5.asm"

%include "vmext/api_idx_000a.asm"

%include "vmext/api_idx_008a.asm"

%include "vmext/api_idx_0012.asm"

%include "vmext/api_idx_004c.asm"

%include "vmext/api_idx_0004_4.asm"

%include "vmext/api_idx_0006.asm"

%include "vmext/api_idx_0008_2.asm"

%include "vmext/api_idx_0008_3.asm"

%include "vmext/api_idx_0008_4.asm"

%include "vmext/api_idx_0004_5.asm"

%include "vmext/api_idx_0010.asm"

%include "vmext/api_idx_0012_2.asm"

%include "vmext/api_idx_0012_3.asm"

%include "vmext/api_idx_0016.asm"

%include "vmext/api_idx_0024.asm"

%include "vmext/api_idx_001e.asm"

%include "vmext/api_idx_0030.asm"


    db 0xc7, 0x06, 0xa8, 0x91, 0x00, 0x00, 0x83, 0x3e, 0x0c, 0x83, 0x1e, 0x75, 0x09, 0x83, 0x3e, 0x3e
    db 0x8f, 0x08, 0x75, 0x02, 0xeb, 0x23, 0xb8, 0x1f, 0x00, 0x50, 0xe8, 0xf6, 0xd7, 0x59, 0x50, 0xb8
    db 0x00, 0x00, 0x50

    mov ax, 0x1f                     ; 0x414b
    push ax                          ; 0x414e
    push ax                          ; 0x414f
    call loc_194f                    ; 0x4150
    add sp, byte 4                   ; 0x4153
    push ax                          ; 0x4156
    mov ax, 0                        ; 0x4157
    push ax                          ; 0x415a
    db 0xe8, 0xc1, 0xae ; call 0xf01f
    add sp, byte 8                   ; 0x415e
    mov ax, 0x20                     ; 0x4161
    push ax                          ; 0x4164
    call loc_193b                    ; 0x4165
    pop cx                           ; 0x4168
    push ax                          ; 0x4169
    mov ax, 0                        ; 0x416a
    push ax                          ; 0x416d
    mov ax, 0x20                     ; 0x416e
    push ax                          ; 0x4171
    push ax                          ; 0x4172
    call loc_194f                    ; 0x4173
    add sp, byte 4                   ; 0x4176
    push ax                          ; 0x4179
    mov ax, 0                        ; 0x417a
    push ax                          ; 0x417d
    db 0xe8, 0x9e, 0xae ; call 0xf01f
    add sp, byte 8                   ; 0x4181
    jmp near @..api_idx_0030.l14     ; 0x4184

    db 0xc7, 0x06, 0xa8, 0x91, 0x01, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7
    db 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x5d, 0xa7, 0x83, 0xc4, 0x0a
    db 0xe8, 0x7f, 0xfb, 0xe8, 0xd6, 0xf9, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x87, 0xd7, 0x59, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0x8d, 0xd7, 0x83, 0xc4, 0x04, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xe8, 0x52, 0xae, 0x83, 0xc4, 0x08, 0xb8, 0x3e, 0x00, 0x50, 0xe8, 0x64, 0xd7
    db 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x3e, 0x00, 0x50, 0x50, 0xe8, 0x6a, 0xd7, 0x83, 0xc4
    db 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x2f, 0xae, 0x83, 0xc4, 0x08, 0xe9, 0x96, 0x02, 0xc7
    db 0x06, 0xa8, 0x91, 0x02, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7, 0x00
    db 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0xee, 0xa6, 0x83, 0xc4, 0x0a, 0xe8
    db 0x10, 0xfb, 0xe8, 0x67, 0xf9, 0x83, 0x3e, 0x0c, 0x83, 0x0e, 0x75, 0x3d, 0x83, 0x3e, 0x3e, 0x8f
    db 0x09, 0x7e, 0x36, 0x83, 0x3e, 0x3e, 0x8f, 0x0a, 0x7f, 0x16, 0xa1, 0xee, 0x82, 0x3d, 0x02, 0x00
    db 0x74, 0x0e, 0x83, 0x3e, 0xee, 0x82, 0x00, 0x74, 0x20, 0x83, 0x3e, 0x40, 0x8f, 0x05, 0x7d, 0x19
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50
    db 0x50, 0xe8, 0xa6, 0xa6, 0x83, 0xc4, 0x0a, 0xeb, 0x46, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xd4, 0xd6
    db 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0xda, 0xd6, 0x83, 0xc4
    db 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x9f, 0xad, 0x83, 0xc4, 0x08, 0xb8, 0xad, 0x00, 0x50
    db 0xe8, 0xb1, 0xd6, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xad, 0x00, 0x50, 0x50, 0xe8, 0xb7
    db 0xd6, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x7c, 0xad, 0x83, 0xc4, 0x08, 0xe9
    db 0xe3, 0x01, 0xc7, 0x06, 0xa8, 0x91, 0x03, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x83
    db 0x3e, 0x88, 0x91, 0x00, 0x74, 0x03, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21
    db 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x31, 0xa6, 0x83, 0xc4, 0x0a, 0xe8, 0x53, 0xfa, 0xe8
    db 0xaa, 0xf8, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x5b, 0xd6, 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x04, 0x00, 0x50, 0x50, 0xe8, 0x61, 0xd6, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8
    db 0x26, 0xad, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0x88, 0x91, 0x00, 0x75, 0x23, 0xb8, 0x2a, 0x00, 0x50
    db 0xe8, 0x31, 0xd6, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2a, 0x00, 0x50, 0x50, 0xe8, 0x37
    db 0xd6, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xfc, 0xac, 0x83, 0xc4, 0x08, 0xe9
    db 0x63, 0x01, 0xc7, 0x06, 0xa8, 0x91, 0x04, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x38, 0x00, 0x50
    db 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0xbb, 0xa5, 0x83
    db 0xc4, 0x0a, 0xe8, 0xdd, 0xf9, 0xe8, 0x34, 0xf8, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x00, 0x50
    db 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x39, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x9b, 0xa5, 0x83
    db 0xc4, 0x0a, 0xb8, 0x2a, 0x00, 0x50, 0xe8, 0xcb, 0xd5, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x2a, 0x00, 0x50, 0x50, 0xe8, 0xd1, 0xd5, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db 0x96, 0xac, 0x83, 0xc4, 0x08, 0xe9, 0xfd, 0x00, 0xc7, 0x06, 0xa8, 0x91, 0x05, 0x00, 0xb8, 0xff
    db 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48
    db 0x00, 0x50, 0xe8, 0x55, 0xa5, 0x83, 0xc4, 0x0a, 0xe8, 0x77, 0xf9, 0xe8, 0xce, 0xf7, 0xb8, 0x3e
    db 0x00, 0x50, 0xe8, 0x7f, 0xd5, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x3e, 0x00, 0x50, 0x50
    db 0xe8, 0x85, 0xd5, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x4a, 0xac, 0x83, 0xc4
    db 0x08, 0x83, 0x3e, 0x0c, 0x83, 0x08, 0x75, 0x3a, 0x83, 0x3e, 0x3e, 0x8f, 0x06, 0x75, 0x33, 0x83
    db 0x3e, 0x40, 0x8f, 0x04, 0x75, 0x2c, 0xa1, 0x42, 0x8f, 0x3d, 0x02, 0x00, 0x74, 0x05, 0x3d, 0x01
    db 0x00, 0x75, 0x08, 0xa1, 0xee, 0x82, 0x3d, 0x01, 0x00, 0x74, 0x15, 0xa1, 0x42, 0x8f, 0x3d, 0x05
    db 0x00, 0x74, 0x05, 0x3d, 0x06, 0x00, 0x75, 0x0a, 0xa1

@..api_idx_0030.l9:
    out dx, al                       ; 0x4410
    cmp byte [di], 3                 ; 0x4411
    add byte [di + 0x2], dh          ; 0x4414
    jmp short @..api_idx_0030.l10    ; 0x4417
    mov ax, 0                        ; 0x4419
    push ax                          ; 0x441c
    mov ax, 0x50                     ; 0x441d
    push ax                          ; 0x4420
    mov ax, 0xf7                     ; 0x4421
    push ax                          ; 0x4424
    mov ax, 0x48                     ; 0x4425
    push ax                          ; 0x4428
    push ax                          ; 0x4429
    db 0xe8, 0xd4, 0xa4 ; call ds_dispatch_e901
    add sp, byte 0x0a                ; 0x442d
@..api_idx_0030.l10:
    cmp word [data_830c], byte 8     ; 0x4430
    je short @..api_idx_0030.l11     ; 0x4435
    cmp word [data_830c], byte 0x0b  ; 0x4437
    jne short @..api_idx_0030.l12    ; 0x443c
    cmp word [data_8f3e], byte 6     ; 0x443e
    jne short @..api_idx_0030.l12    ; 0x4443
    cmp word [data_8f40], byte 3     ; 0x4445
    jle short @..api_idx_0030.l12    ; 0x444a
@..api_idx_0030.l11:
    mov ax, 4                        ; 0x444c
    push ax                          ; 0x444f
    call loc_193b                    ; 0x4450
    pop cx                           ; 0x4453
    push ax                          ; 0x4454
    mov ax, 2                        ; 0x4455
    push ax                          ; 0x4458
    mov ax, 4                        ; 0x4459
    push ax                          ; 0x445c
    push ax                          ; 0x445d
    call loc_194f                    ; 0x445e
    add sp, byte 4                   ; 0x4461
    push ax                          ; 0x4464
    mov ax, 1                        ; 0x4465
    push ax                          ; 0x4468
    db 0xe8, 0xb3, 0xab ; call 0xf01f
    add sp, byte 8                   ; 0x446c
@..api_idx_0030.l12:
    jmp short @..api_idx_0030.l14    ; 0x446f
loc_4471:
    rcl word [si - 0x6e91], cl       ; 0x4471
    into                             ; 0x4475
    xchg cx, ax                      ; 0x4476
    cmp ax, 0xf092                   ; 0x4477
    xchg dx, ax                      ; 0x447a
    jo short @..api_idx_0030.l9      ; 0x447b
    salc                             ; 0x447d
    xchg bx, ax                      ; 0x447e
@..api_idx_0030.l13:
    cmp ax, strict word 7            ; 0x447f
    jae short @..api_idx_0030.l14    ; 0x4482
    xchg bx, ax                      ; 0x4484
    shl bx, 1                        ; 0x4485
    jmp [cs:bx - 0x6b48]             ; 0x4487
@..api_idx_0030.l14:
    mov word [data_91aa], 0          ; 0x448c
@..api_idx_0030.l15:
    mov ax, word [data_91aa]         ; 0x4492
    cmp ax, word [data_9b08]         ; 0x4495
    jl short @..api_idx_0030.l16     ; 0x4499
    jmp near @..api_idx_0030.l28     ; 0x449b
@..api_idx_0030.l16:
    mov ax, word [data_8f46]         ; 0x449e
    add ax, word [data_8f44]         ; 0x44a1
    add ax, word [data_82ee]         ; 0x44a5
    mov cx, ax                       ; 0x44a9
    mov ax, word [data_91aa]         ; 0x44ab
    add cx, ax                       ; 0x44ae
    mov ax, cx                       ; 0x44b0
    mov cx, 2                        ; 0x44b2
    cwd                              ; 0x44b5
    idiv cx                          ; 0x44b6
    mov word [data_91a4], dx         ; 0x44b8
    mov ax, 1                        ; 0x44bc
    push ax                          ; 0x44bf
    mov ax, 0                        ; 0x44c0
    push ax                          ; 0x44c3
    lea ax, word [bp - 0x0012]       ; 0x44c4
    push ax                          ; 0x44c7
    lea ax, word [bp - 0x0010]       ; 0x44c8
    push ax                          ; 0x44cb
    lea ax, word [bp - 0x000e]       ; 0x44cc
    push ax                          ; 0x44cf
    lea ax, word [bp - 0x000c]       ; 0x44d0
    push ax                          ; 0x44d3
    lea ax, word [bp - 0x000a]       ; 0x44d4
    push ax                          ; 0x44d7
    call loc_1963                    ; 0x44d8
    add sp, byte 0x0e                ; 0x44db
    test ax, ax                      ; 0x44de
    je short @..api_idx_0030.l23     ; 0x44e0
    mov ax, word [data_91a8]         ; 0x44e2
    mov cx, 2                        ; 0x44e5
    cwd                              ; 0x44e8
    idiv cx                          ; 0x44e9
    mov ax, dx                       ; 0x44eb
    cmp ax, strict word 1            ; 0x44ed
    jne short @..api_idx_0030.l21    ; 0x44f0
    mov ax, word [data_91a8]         ; 0x44f2
    cmp ax, strict word 5            ; 0x44f5
    je short @..api_idx_0030.l19     ; 0x44f8
    cmp word [data_9188], byte 0     ; 0x44fa
    je short @..api_idx_0030.l17     ; 0x44ff
    mov word [data_9b0a], 0          ; 0x4501
    jmp short @..api_idx_0030.l18    ; 0x4507
@..api_idx_0030.l17:
    mov ax, 5                        ; 0x4509
    imul word [data_91aa]            ; 0x450c
    mov bx, ax                       ; 0x4510
    mov byte [bx - 0x6e52], 1        ; 0x4512
    mov word [data_9b0a], 4          ; 0x4517
@..api_idx_0030.l18:
    jmp short @..api_idx_0030.l20    ; 0x451d
@..api_idx_0030.l19:
    mov ax, 5                        ; 0x451f
    imul word [data_91aa]            ; 0x4522
    mov bx, ax                       ; 0x4526
    mov byte [bx - 0x6e52], 3        ; 0x4528
    mov word [data_9b0a], 0          ; 0x452d
@..api_idx_0030.l20:
    jmp short @..api_idx_0030.l22    ; 0x4533
@..api_idx_0030.l21:
    mov word [data_9b0a], 2          ; 0x4535
@..api_idx_0030.l22:
    mov ax, word [data_9b0a]         ; 0x453b
    mov word [data_9b0c], ax         ; 0x453e
    mov word [data_9b0e], ax         ; 0x4541
    jmp short @..api_idx_0030.l24    ; 0x4544
@..api_idx_0030.l23:
    mov ax, 0                        ; 0x4546
    push ax                          ; 0x4549
    push word [bp - 0x0012]          ; 0x454a
    push word [bp - 0x0010]          ; 0x454d
    push word [bp - 0x000e]          ; 0x4550
    push word [bp - 0x000c]          ; 0x4553
    push word [bp - 0x000a]          ; 0x4556
    call api_idx_0008_3              ; 0x4559
    add sp, byte 0x0c                ; 0x455c
    mov word [data_9b0a], ax         ; 0x455f
    mov ax, 0                        ; 0x4562
    push ax                          ; 0x4565
    push word [bp - 0x0012]          ; 0x4566
    push word [bp - 0x0010]          ; 0x4569
    push word [bp - 0x000e]          ; 0x456c
    push word [bp - 0x000c]          ; 0x456f
    push word [bp - 0x000a]          ; 0x4572
    push ax                          ; 0x4575
    call api_idx_0008_4              ; 0x4576
    add sp, byte 0x0e                ; 0x4579
    mov word [data_9b0c], ax         ; 0x457c
    mov ax, 0                        ; 0x457f
    push ax                          ; 0x4582
    push word [bp - 0x0012]          ; 0x4583
    push word [bp - 0x0010]          ; 0x4586
    push word [bp - 0x000e]          ; 0x4589
    push word [bp - 0x000c]          ; 0x458c
    push word [bp - 0x000a]          ; 0x458f
    mov ax, 2                        ; 0x4592
    push ax                          ; 0x4595
    call api_idx_0008_4              ; 0x4596
    add sp, byte 0x0e                ; 0x4599
    mov word [data_9b0e], ax         ; 0x459c
@..api_idx_0030.l24:
    mov ax, 0xffff                   ; 0x459f
    push ax                          ; 0x45a2
    push word [bp - 0x0012]          ; 0x45a3
    push word [bp - 0x0010]          ; 0x45a6
    push word [bp - 0x000e]          ; 0x45a9
    push word [bp - 0x000c]          ; 0x45ac
    push word [bp - 0x000a]          ; 0x45af
    call api_idx_0008_3              ; 0x45b2
    add sp, byte 0x0c                ; 0x45b5
    mov word [data_9b10], ax         ; 0x45b8
    mov ax, 1                        ; 0x45bb
    push ax                          ; 0x45be
    push word [bp - 0x0012]          ; 0x45bf
    push word [bp - 0x0010]          ; 0x45c2
    push word [bp - 0x000e]          ; 0x45c5
    push word [bp - 0x000c]          ; 0x45c8
    push word [bp - 0x000a]          ; 0x45cb
    call api_idx_0008_3              ; 0x45ce
    add sp, byte 0x0c                ; 0x45d1
    mov word [data_9b12], ax         ; 0x45d4
    cmp word [data_91aa], byte 1     ; 0x45d7
    jle short @..api_idx_0030.l25    ; 0x45dc
    mov ax, 0xfffe                   ; 0x45de
    push ax                          ; 0x45e1
    push word [bp - 0x0012]          ; 0x45e2
    push word [bp - 0x0010]          ; 0x45e5
    push word [bp - 0x000e]          ; 0x45e8
    push word [bp - 0x000c]          ; 0x45eb
    push word [bp - 0x000a]          ; 0x45ee
    call api_idx_0008_3              ; 0x45f1
    add sp, byte 0x0c                ; 0x45f4
    mov word [data_9b14], ax         ; 0x45f7
    mov ax, 2                        ; 0x45fa
    push ax                          ; 0x45fd
    push word [bp - 0x0012]          ; 0x45fe
    push word [bp - 0x0010]          ; 0x4601
    push word [bp - 0x000e]          ; 0x4604
    push word [bp - 0x000c]          ; 0x4607
    push word [bp - 0x000a]          ; 0x460a
    call api_idx_0008_3              ; 0x460d
    add sp, byte 0x0c                ; 0x4610
    mov word [data_9b16], ax         ; 0x4613
    mov ax, 0xffff                   ; 0x4616
    push ax                          ; 0x4619
    push word [bp - 0x0012]          ; 0x461a
    push word [bp - 0x0010]          ; 0x461d
    push word [bp - 0x000e]          ; 0x4620
    push word [bp - 0x000c]          ; 0x4623
    push word [bp - 0x000a]          ; 0x4626
    mov ax, 0                        ; 0x4629
    push ax                          ; 0x462c
    call api_idx_0008_4              ; 0x462d
    add sp, byte 0x0e                ; 0x4630
    mov word [data_9b18], ax         ; 0x4633
    mov ax, 1                        ; 0x4636
    push ax                          ; 0x4639
    push word [bp - 0x0012]          ; 0x463a
    push word [bp - 0x0010]          ; 0x463d
    push word [bp - 0x000e]          ; 0x4640
    push word [bp - 0x000c]          ; 0x4643
    push word [bp - 0x000a]          ; 0x4646
    mov ax, 2                        ; 0x4649
    push ax                          ; 0x464c
    call api_idx_0008_4              ; 0x464d
    add sp, byte 0x0e                ; 0x4650
    mov word [data_9b1a], ax         ; 0x4653
    jmp short @..api_idx_0030.l26    ; 0x4656
@..api_idx_0030.l25:
    mov word [data_9b14], 0          ; 0x4658
    mov word [data_9b16], 0          ; 0x465e
    mov word [data_9b18], 0          ; 0x4664
    mov word [data_9b1a], 0          ; 0x466a
@..api_idx_0030.l26:
    cmp word [data_9b0a], byte 0     ; 0x4670
    jne short @..api_idx_0030.l27    ; 0x4675
    mov ax, word [data_8456]         ; 0x4677
    cmp ax, word [data_91aa]         ; 0x467a
    jne short @..api_idx_0030.l27    ; 0x467e
    inc word [data_8456]             ; 0x4680
@..api_idx_0030.l27:
    mov ax, word [data_91a4]         ; 0x4684
    mov word [data_9aec], ax         ; 0x4687
    mov ax, 0x1e                     ; 0x468a
    push ax                          ; 0x468d
    push ax                          ; 0x468e
    mov ax, 0                        ; 0x468f
    push ax                          ; 0x4692
    push ax                          ; 0x4693
    mov ax, 0x85                     ; 0x4694
    push ax                          ; 0x4697
    push ax                          ; 0x4698
    mov ax, 0x1d                     ; 0x4699
    push ax                          ; 0x469c
    mov ax, 0x21                     ; 0x469d
    push ax                          ; 0x46a0
    push ax                          ; 0x46a1
    mov ax, 0x1d                     ; 0x46a2
    push ax                          ; 0x46a5
    mov ax, 0x19                     ; 0x46a6
    push ax                          ; 0x46a9
    push ax                          ; 0x46aa
    mov ax, 0                        ; 0x46ab
    push ax                          ; 0x46ae
    push ax                          ; 0x46af
    mov ax, 0x8c                     ; 0x46b0
    push ax                          ; 0x46b3
    push ax                          ; 0x46b4
    mov ax, 0x6e                     ; 0x46b5
    push ax                          ; 0x46b8
    push ax                          ; 0x46b9
    mov ax, 0x24                     ; 0x46ba
    push ax                          ; 0x46bd
    mov ax, 0x27                     ; 0x46be
    push ax                          ; 0x46c1
    push ax                          ; 0x46c2
    mov ax, 0x24                     ; 0x46c3
    push ax                          ; 0x46c6
    mov ax, 0x21                     ; 0x46c7
    push ax                          ; 0x46ca
    push ax                          ; 0x46cb
    mov ax, 0x3f                     ; 0x46cc
    push ax                          ; 0x46cf
    mov ax, 0                        ; 0x46d0
    push ax                          ; 0x46d3
    push ax                          ; 0x46d4
    push ax                          ; 0x46d5
    mov ax, 4                        ; 0x46d6
    push ax                          ; 0x46d9
    mov ax, 2                        ; 0x46da
    push ax                          ; 0x46dd
    mov ax, 4                        ; 0x46de
    push ax                          ; 0x46e1
    mov ax, 2                        ; 0x46e2
    push ax                          ; 0x46e5
    mov ax, 1                        ; 0x46e6
    push ax                          ; 0x46e9
    mov ax, 0                        ; 0x46ea
    push ax                          ; 0x46ed
    mov ax, 2                        ; 0x46ee
    push ax                          ; 0x46f1
    push word [data_9b0a]            ; 0x46f2
    push word [data_91aa]            ; 0x46f6
    call api_idx_0010                ; 0x46fa
    add sp, byte 0x4a                ; 0x46fd
    mov ax, 0xffff                   ; 0x4700
    push ax                          ; 0x4703
    push ax                          ; 0x4704
    mov ax, 0xae                     ; 0x4705
    push ax                          ; 0x4708
    push ax                          ; 0x4709
    mov ax, 0                        ; 0x470a
    push ax                          ; 0x470d
    push ax                          ; 0x470e
    push ax                          ; 0x470f
    push ax                          ; 0x4710
    push ax                          ; 0x4711
    push ax                          ; 0x4712
    mov ax, 0xc                      ; 0x4713
    push ax                          ; 0x4716
    mov ax, 8                        ; 0x4717
    push ax                          ; 0x471a
    mov ax, 0x14                     ; 0x471b
    push ax                          ; 0x471e
    mov ax, 0x10                     ; 0x471f
    push ax                          ; 0x4722
    mov ax, 0                        ; 0x4723
    push ax                          ; 0x4726
    push ax                          ; 0x4727
    mov ax, 4                        ; 0x4728
    push ax                          ; 0x472b
    push ax                          ; 0x472c
    mov ax, 0x25                     ; 0x472d
    push ax                          ; 0x4730
    push ax                          ; 0x4731
    mov ax, 0                        ; 0x4732
    push ax                          ; 0x4735
    push ax                          ; 0x4736
    mov ax, 6                        ; 0x4737
    push ax                          ; 0x473a
    mov ax, 5                        ; 0x473b
    push ax                          ; 0x473e
    mov ax, 4                        ; 0x473f
    push ax                          ; 0x4742
    mov ax, 2                        ; 0x4743
    push ax                          ; 0x4746
    mov ax, 4                        ; 0x4747
    push ax                          ; 0x474a
    mov ax, 2                        ; 0x474b
    push ax                          ; 0x474e
    mov ax, 1                        ; 0x474f
    push ax                          ; 0x4752
    mov ax, 0                        ; 0x4753
    push ax                          ; 0x4756
    mov ax, 2                        ; 0x4757
    push ax                          ; 0x475a
    push word [data_91aa]            ; 0x475b
    call api_idx_0012_3              ; 0x475f
    add sp, byte 0x40                ; 0x4762
    mov ax, 0x39                     ; 0x4765
    push ax                          ; 0x4768
    mov ax, 0x34                     ; 0x4769
    push ax                          ; 0x476c
    mov ax, 0x1b                     ; 0x476d
    push ax                          ; 0x4770
    mov ax, 0x16                     ; 0x4771
    push ax                          ; 0x4774
    mov ax, 0x9e                     ; 0x4775
    push ax                          ; 0x4778
    mov ax, 0x99                     ; 0x4779
    push ax                          ; 0x477c
    mov ax, 0x80                     ; 0x477d
    push ax                          ; 0x4780
    mov ax, 0x7b                     ; 0x4781
    push ax                          ; 0x4784
    mov ax, 0x6d                     ; 0x4785
    push ax                          ; 0x4788
    mov ax, 0x69                     ; 0x4789
    push ax                          ; 0x478c
    mov ax, 0x5a                     ; 0x478d
    push ax                          ; 0x4790
    mov ax, 0x55                     ; 0x4791
    push ax                          ; 0x4794
    mov ax, 0x1c                     ; 0x4795
    push ax                          ; 0x4798
    mov ax, 0x17                     ; 0x4799
    push ax                          ; 0x479c
    mov ax, 0xaa                     ; 0x479d
    push ax                          ; 0x47a0
    mov ax, 0x62                     ; 0x47a1
    push ax                          ; 0x47a4
    mov ax, 0x5e                     ; 0x47a5
    push ax                          ; 0x47a8
    mov ax, 0x52                     ; 0x47a9
    push ax                          ; 0x47ac
    mov ax, 0x4e                     ; 0x47ad
    push ax                          ; 0x47b0
    mov ax, 0x19                     ; 0x47b1
    push ax                          ; 0x47b4
    mov ax, 0x15                     ; 0x47b5
    push ax                          ; 0x47b8
    mov ax, 0x13                     ; 0x47b9
    push ax                          ; 0x47bc
    mov ax, 0xf                      ; 0x47bd
    push ax                          ; 0x47c0
    mov ax, 4                        ; 0x47c1
    push ax                          ; 0x47c4
    mov ax, 2                        ; 0x47c5
    push ax                          ; 0x47c8
    mov ax, 4                        ; 0x47c9
    push ax                          ; 0x47cc
    mov ax, 2                        ; 0x47cd
    push ax                          ; 0x47d0
    mov ax, 1                        ; 0x47d1
    push ax                          ; 0x47d4
    mov ax, 0                        ; 0x47d5
    push ax                          ; 0x47d8
    mov ax, 1                        ; 0x47d9
    push ax                          ; 0x47dc
    push word [data_9b0c]            ; 0x47dd
    push word [data_91aa]            ; 0x47e1
    call api_idx_0012_2              ; 0x47e5
    add sp, byte 0x40                ; 0x47e8
    mov ax, 0x34                     ; 0x47eb
    push ax                          ; 0x47ee
    mov ax, 0x39                     ; 0x47ef
    push ax                          ; 0x47f2
    mov ax, 0x16                     ; 0x47f3
    push ax                          ; 0x47f6
    mov ax, 0x1b                     ; 0x47f7
    push ax                          ; 0x47fa
    mov ax, 0x99                     ; 0x47fb
    push ax                          ; 0x47fe
    mov ax, 0x9e                     ; 0x47ff
    push ax                          ; 0x4802
    mov ax, 0xffff                   ; 0x4803
    push ax                          ; 0x4806
    push ax                          ; 0x4807
    mov ax, 0x69                     ; 0x4808
    push ax                          ; 0x480b
    mov ax, 0x6d                     ; 0x480c
    push ax                          ; 0x480f
    mov ax, 0x55                     ; 0x4810
    push ax                          ; 0x4813
    mov ax, 0x5a                     ; 0x4814
    push ax                          ; 0x4817
    mov ax, 0x17                     ; 0x4818
    push ax                          ; 0x481b
    mov ax, 0x1c                     ; 0x481c
    push ax                          ; 0x481f
    mov ax, 0xaf                     ; 0x4820
    push ax                          ; 0x4823
    mov ax, 0x5e                     ; 0x4824
    push ax                          ; 0x4827
    mov ax, 0x62                     ; 0x4828
    push ax                          ; 0x482b
    mov ax, 0x4e                     ; 0x482c
    push ax                          ; 0x482f
    mov ax, 0x52                     ; 0x4830
    push ax                          ; 0x4833
    mov ax, 0x15                     ; 0x4834
    push ax                          ; 0x4837
    mov ax, 0x19                     ; 0x4838
    push ax                          ; 0x483b
    mov ax, 0xf                      ; 0x483c
    push ax                          ; 0x483f
    mov ax, 0x13                     ; 0x4840
    push ax                          ; 0x4843
    mov ax, 4                        ; 0x4844
    push ax                          ; 0x4847
    mov ax, 2                        ; 0x4848
    push ax                          ; 0x484b
    mov ax, 4                        ; 0x484c
    push ax                          ; 0x484f
    mov ax, 2                        ; 0x4850
    push ax                          ; 0x4853
    mov ax, 1                        ; 0x4854
    push ax                          ; 0x4857
    mov ax, 0                        ; 0x4858
    push ax                          ; 0x485b
    mov ax, 3                        ; 0x485c
    push ax                          ; 0x485f
    push word [data_9b0e]            ; 0x4860
    push word [data_91aa]            ; 0x4864
    call api_idx_0012_2              ; 0x4868
    add sp, byte 0x40                ; 0x486b
    mov ax, 0x43                     ; 0x486e
    push ax                          ; 0x4871
    mov ax, 0x3e                     ; 0x4872
    push ax                          ; 0x4875
    mov ax, 0x25                     ; 0x4876
    push ax                          ; 0x4879
    mov ax, 0x20                     ; 0x487a
    push ax                          ; 0x487d
    mov ax, 0xa8                     ; 0x487e
    push ax                          ; 0x4881
    mov ax, 0xa3                     ; 0x4882
    push ax                          ; 0x4885
    mov ax, 0xffff                   ; 0x4886
    push ax                          ; 0x4889
    push ax                          ; 0x488a
    mov ax, 0x76                     ; 0x488b
    push ax                          ; 0x488e
    mov ax, 0x71                     ; 0x488f
    push ax                          ; 0x4892
    mov ax, 0x64                     ; 0x4893
    push ax                          ; 0x4896
    mov ax, 0x5f                     ; 0x4897
    push ax                          ; 0x489a
    mov ax, 0x26                     ; 0x489b
    push ax                          ; 0x489e
    mov ax, 0x21                     ; 0x489f
    push ax                          ; 0x48a2
    mov ax, 0xffff                   ; 0x48a3
    push ax                          ; 0x48a6
    mov ax, 0x6a                     ; 0x48a7
    push ax                          ; 0x48aa
    mov ax, 0x66                     ; 0x48ab
    push ax                          ; 0x48ae
    mov ax, 0x5a                     ; 0x48af
    push ax                          ; 0x48b2
    mov ax, 0x56                     ; 0x48b3
    push ax                          ; 0x48b6
    mov ax, 0x21                     ; 0x48b7
    push ax                          ; 0x48ba
    mov ax, 0x1d                     ; 0x48bb
    push ax                          ; 0x48be
    mov ax, 0x1b                     ; 0x48bf
    push ax                          ; 0x48c2
    mov ax, 0x17                     ; 0x48c3
    push ax                          ; 0x48c6
    mov ax, 4                        ; 0x48c7
    push ax                          ; 0x48ca
    mov ax, 2                        ; 0x48cb
    push ax                          ; 0x48ce
    mov ax, 4                        ; 0x48cf
    push ax                          ; 0x48d2
    mov ax, 2                        ; 0x48d3
    push ax                          ; 0x48d6
    mov ax, 1                        ; 0x48d7
    push ax                          ; 0x48da
    mov ax, 0                        ; 0x48db
    push ax                          ; 0x48de
    push ax                          ; 0x48df
    push word [data_9b18]            ; 0x48e0
    push word [data_91aa]            ; 0x48e4
    call api_idx_0012_2              ; 0x48e8
    add sp, byte 0x40                ; 0x48eb
    mov ax, 0x3e                     ; 0x48ee
    push ax                          ; 0x48f1
    mov ax, 0x43                     ; 0x48f2
    push ax                          ; 0x48f5
    mov ax, 0x20                     ; 0x48f6
    push ax                          ; 0x48f9
    mov ax, 0x25                     ; 0x48fa
    push ax                          ; 0x48fd
    mov ax, 0xa3                     ; 0x48fe
    push ax                          ; 0x4901
    mov ax, 0xa8                     ; 0x4902
    push ax                          ; 0x4905
    mov ax, 0xffff                   ; 0x4906
    push ax                          ; 0x4909
    push ax                          ; 0x490a
    mov ax, 0x71                     ; 0x490b
    push ax                          ; 0x490e
    mov ax, 0x76                     ; 0x490f
    push ax                          ; 0x4912
    mov ax, 0x5f                     ; 0x4913
    push ax                          ; 0x4916
    mov ax, 0x64                     ; 0x4917
    push ax                          ; 0x491a
    mov ax, 0x21                     ; 0x491b
    push ax                          ; 0x491e
    mov ax, 0x26                     ; 0x491f
    push ax                          ; 0x4922
    mov ax, 0xffff                   ; 0x4923
    push ax                          ; 0x4926
    mov ax, 0x66                     ; 0x4927
    push ax                          ; 0x492a
    mov ax, 0x6a                     ; 0x492b
    push ax                          ; 0x492e
    mov ax, 0x56                     ; 0x492f
    push ax                          ; 0x4932
    mov ax, 0x5a                     ; 0x4933
    push ax                          ; 0x4936
    mov ax, 0x1d                     ; 0x4937
    push ax                          ; 0x493a
    mov ax, 0x21                     ; 0x493b
    push ax                          ; 0x493e
    mov ax, 0x17                     ; 0x493f
    push ax                          ; 0x4942
    mov ax, 0x1b                     ; 0x4943
    push ax                          ; 0x4946
    mov ax, 4                        ; 0x4947
    push ax                          ; 0x494a
    mov ax, 2                        ; 0x494b
    push ax                          ; 0x494e
    mov ax, 4                        ; 0x494f
    push ax                          ; 0x4952
    mov ax, 2                        ; 0x4953
    push ax                          ; 0x4956
    mov ax, 1                        ; 0x4957
    push ax                          ; 0x495a
    mov ax, 0                        ; 0x495b
    push ax                          ; 0x495e
    mov ax, 4                        ; 0x495f
    push ax                          ; 0x4962
    push word [data_9b1a]            ; 0x4963
    push word [data_91aa]            ; 0x4967
    call api_idx_0012_2              ; 0x496b
    add sp, byte 0x40                ; 0x496e
    mov ax, word [data_91a4]         ; 0x4971
    inc ax                           ; 0x4974
    mov cx, 2                        ; 0x4975
    cwd                              ; 0x4978
    idiv cx                          ; 0x4979
    mov word [data_9aec], dx         ; 0x497b
    mov ax, 0x22                     ; 0x497f
    push ax                          ; 0x4982
    push ax                          ; 0x4983
    mov ax, 4                        ; 0x4984
    push ax                          ; 0x4987
    push ax                          ; 0x4988
    mov ax, 0x91                     ; 0x4989
    push ax                          ; 0x498c
    mov ax, 0x89                     ; 0x498d
    push ax                          ; 0x4990
    mov ax, 0x29                     ; 0x4991
    push ax                          ; 0x4994
    mov ax, 0x2d                     ; 0x4995
    push ax                          ; 0x4998
    push ax                          ; 0x4999
    mov ax, 0x29                     ; 0x499a
    push ax                          ; 0x499d
    mov ax, 0x25                     ; 0x499e
    push ax                          ; 0x49a1
    push ax                          ; 0x49a2
    mov ax, 5                        ; 0x49a3
    push ax                          ; 0x49a6
    push ax                          ; 0x49a7
    mov ax, 0x92                     ; 0x49a8
    push ax                          ; 0x49ab
    push ax                          ; 0x49ac
    mov ax, 0x74                     ; 0x49ad
    push ax                          ; 0x49b0
    push ax                          ; 0x49b1
    mov ax, 0x2d                     ; 0x49b2
    push ax                          ; 0x49b5
    mov ax, 0x30                     ; 0x49b6
    push ax                          ; 0x49b9
    push ax                          ; 0x49ba
    mov ax, 0x2d                     ; 0x49bb
    push ax                          ; 0x49be
    mov ax, 0x2a                     ; 0x49bf
    push ax                          ; 0x49c2
    push ax                          ; 0x49c3
    mov ax, 0x43                     ; 0x49c4
    push ax                          ; 0x49c7
    mov ax, 5                        ; 0x49c8
    push ax                          ; 0x49cb
    mov ax, 3                        ; 0x49cc
    push ax                          ; 0x49cf
    push ax                          ; 0x49d0
    mov ax, 4                        ; 0x49d1
    push ax                          ; 0x49d4
    push cx                          ; 0x49d5
    push ax                          ; 0x49d6
    push cx                          ; 0x49d7
    mov ax, 1                        ; 0x49d8
    push ax                          ; 0x49db
    mov ax, 0                        ; 0x49dc
    push ax                          ; 0x49df
    mov ax, 1                        ; 0x49e0
    push ax                          ; 0x49e3
    push word [data_9b10]            ; 0x49e4
    push word [data_91aa]            ; 0x49e8
    call api_idx_0010                ; 0x49ec
    add sp, byte 0x4a                ; 0x49ef
    mov ax, 0xc9                     ; 0x49f2
    push ax                          ; 0x49f5
    mov ax, 0xc4                     ; 0x49f6
    push ax                          ; 0x49f9
    mov ax, 0xb2                     ; 0x49fa
    push ax                          ; 0x49fd
    push ax                          ; 0x49fe
    mov ax, 0xf                      ; 0x49ff
    push ax                          ; 0x4a02
    mov ax, 5                        ; 0x4a03
    push ax                          ; 0x4a06
    mov ax, 0xf                      ; 0x4a07
    push ax                          ; 0x4a0a
    mov ax, 5                        ; 0x4a0b
    push ax                          ; 0x4a0e
    mov ax, 0xf                      ; 0x4a0f
    push ax                          ; 0x4a12
    mov ax, 5                        ; 0x4a13
    push ax                          ; 0x4a16
    mov ax, 0xc                      ; 0x4a17
    push ax                          ; 0x4a1a
    mov ax, 8                        ; 0x4a1b
    push ax                          ; 0x4a1e
    mov ax, 0x14                     ; 0x4a1f
    push ax                          ; 0x4a22
    mov ax, 0x10                     ; 0x4a23
    push ax                          ; 0x4a26
    mov ax, 0                        ; 0x4a27
    push ax                          ; 0x4a2a
    push ax                          ; 0x4a2b
    mov ax, 4                        ; 0x4a2c
    push ax                          ; 0x4a2f
    push ax                          ; 0x4a30
    mov ax, 0x34                     ; 0x4a31
    push ax                          ; 0x4a34
    mov ax, 0x2a                     ; 0x4a35
    push ax                          ; 0x4a38
    mov ax, 0xf                      ; 0x4a39
    push ax                          ; 0x4a3c
    mov ax, 5                        ; 0x4a3d
    push ax                          ; 0x4a40
    mov ax, 6                        ; 0x4a41
    push ax                          ; 0x4a44
    mov ax, 5                        ; 0x4a45
    push ax                          ; 0x4a48
    mov ax, 4                        ; 0x4a49
    push ax                          ; 0x4a4c
    mov ax, 2                        ; 0x4a4d
    push ax                          ; 0x4a50
    mov ax, 4                        ; 0x4a51
    push ax                          ; 0x4a54
    mov ax, 2                        ; 0x4a55
    push ax                          ; 0x4a58
    mov ax, 1                        ; 0x4a59
    push ax                          ; 0x4a5c
    mov ax, 0                        ; 0x4a5d
    push ax                          ; 0x4a60
    mov ax, 1                        ; 0x4a61
    push ax                          ; 0x4a64
    push word [data_91aa]            ; 0x4a65
    call api_idx_0012_3              ; 0x4a69
    add sp, byte 0x40                ; 0x4a6c
    mov ax, word [data_91a4]         ; 0x4a6f
    mov word [data_9aec], ax         ; 0x4a72
    mov ax, 0x26                     ; 0x4a75
    push ax                          ; 0x4a78
    push ax                          ; 0x4a79
    mov ax, 8                        ; 0x4a7a
    push ax                          ; 0x4a7d
    push ax                          ; 0x4a7e
    mov ax, 0x95                     ; 0x4a7f
    push ax                          ; 0x4a82
    mov ax, 0x8d                     ; 0x4a83
    push ax                          ; 0x4a86
    mov ax, 0x35                     ; 0x4a87
    push ax                          ; 0x4a8a
    mov ax, 0x39                     ; 0x4a8b
    push ax                          ; 0x4a8e
    push ax                          ; 0x4a8f
    mov ax, 0x35                     ; 0x4a90
    push ax                          ; 0x4a93
    mov ax, 0x31                     ; 0x4a94
    push ax                          ; 0x4a97
    push ax                          ; 0x4a98
    mov ax, 9                        ; 0x4a99
    push ax                          ; 0x4a9c
    push ax                          ; 0x4a9d
    mov ax, 0x98                     ; 0x4a9e
    push ax                          ; 0x4aa1
    push ax                          ; 0x4aa2
    mov ax, 0x7a                     ; 0x4aa3
    push ax                          ; 0x4aa6
    push ax                          ; 0x4aa7
    mov ax, 0x36                     ; 0x4aa8
    push ax                          ; 0x4aab
    mov ax, 0x39                     ; 0x4aac
    push ax                          ; 0x4aaf
    push ax                          ; 0x4ab0
    mov ax, 0x36                     ; 0x4ab1
    push ax                          ; 0x4ab4
    mov ax, 0x33                     ; 0x4ab5
    push ax                          ; 0x4ab8
    push ax                          ; 0x4ab9
    mov ax, 0x47                     ; 0x4aba
    push ax                          ; 0x4abd
    mov ax, 9                        ; 0x4abe
    push ax                          ; 0x4ac1
    mov ax, 6                        ; 0x4ac2
    push ax                          ; 0x4ac5
    push ax                          ; 0x4ac6
    mov ax, 4                        ; 0x4ac7
    push ax                          ; 0x4aca
    mov ax, 2                        ; 0x4acb
    push ax                          ; 0x4ace
    mov ax, 4                        ; 0x4acf
    push ax                          ; 0x4ad2
    mov ax, 2                        ; 0x4ad3
    push ax                          ; 0x4ad6
    mov ax, 1                        ; 0x4ad7
    push ax                          ; 0x4ada
    mov ax, 0                        ; 0x4adb
    push ax                          ; 0x4ade
    push ax                          ; 0x4adf
    push word [data_9b14]            ; 0x4ae0
    push word [data_91aa]            ; 0x4ae4
    call api_idx_0010                ; 0x4ae8
    add sp, byte 0x4a                ; 0x4aeb
    mov ax, 0xd3                     ; 0x4aee
    push ax                          ; 0x4af1
    mov ax, 0xce                     ; 0x4af2
    push ax                          ; 0x4af5
    mov ax, 0xb6                     ; 0x4af6
    push ax                          ; 0x4af9
    push ax                          ; 0x4afa
    mov ax, 0x14                     ; 0x4afb
    push ax                          ; 0x4afe
    mov ax, 0xa                      ; 0x4aff
    push ax                          ; 0x4b02
    mov ax, 0x14                     ; 0x4b03
    push ax                          ; 0x4b06
    mov ax, 0xa                      ; 0x4b07
    push ax                          ; 0x4b0a
    mov ax, 0x14                     ; 0x4b0b
    push ax                          ; 0x4b0e
    mov ax, 0xa                      ; 0x4b0f
    push ax                          ; 0x4b12
    mov ax, 0xc                      ; 0x4b13
    push ax                          ; 0x4b16
    mov ax, 8                        ; 0x4b17
    push ax                          ; 0x4b1a
    mov ax, 0x14                     ; 0x4b1b
    push ax                          ; 0x4b1e
    mov ax, 0x10                     ; 0x4b1f
    push ax                          ; 0x4b22
    mov ax, 0                        ; 0x4b23
    push ax                          ; 0x4b26
    push ax                          ; 0x4b27
    mov ax, 4                        ; 0x4b28
    push ax                          ; 0x4b2b
    push ax                          ; 0x4b2c
    mov ax, 0x39                     ; 0x4b2d
    push ax                          ; 0x4b30
    mov ax, 0x2f                     ; 0x4b31
    push ax                          ; 0x4b34
    mov ax, 0x14                     ; 0x4b35
    push ax                          ; 0x4b38
    mov ax, 0xa                      ; 0x4b39
    push ax                          ; 0x4b3c
    mov ax, 6                        ; 0x4b3d
    push ax                          ; 0x4b40
    mov ax, 5                        ; 0x4b41
    push ax                          ; 0x4b44
    mov ax, 4                        ; 0x4b45
    push ax                          ; 0x4b48
    mov ax, 2                        ; 0x4b49
    push ax                          ; 0x4b4c
    mov ax, 4                        ; 0x4b4d
    push ax                          ; 0x4b50
    mov ax, 2                        ; 0x4b51
    push ax                          ; 0x4b54
    mov ax, 1                        ; 0x4b55
    push ax                          ; 0x4b58
    mov ax, 0                        ; 0x4b59
    push ax                          ; 0x4b5c
    push ax                          ; 0x4b5d
    push word [data_91aa]            ; 0x4b5e
    call api_idx_0012_3              ; 0x4b62
    add sp, byte 0x40                ; 0x4b65
    mov ax, word [data_91a4]         ; 0x4b68
    inc ax                           ; 0x4b6b
    mov cx, 2                        ; 0x4b6c
    cwd                              ; 0x4b6f
    idiv cx                          ; 0x4b70
    mov word [data_9aec], dx         ; 0x4b72
    mov ax, 0x2a                     ; 0x4b76
    push ax                          ; 0x4b79
    push ax                          ; 0x4b7a
    mov ax, 0xc                      ; 0x4b7b
    push ax                          ; 0x4b7e
    push ax                          ; 0x4b7f
    mov ax, 0x89                     ; 0x4b80
    push ax                          ; 0x4b83
    mov ax, 0x91                     ; 0x4b84
    push ax                          ; 0x4b87
    mov ax, 0x41                     ; 0x4b88
    push ax                          ; 0x4b8b
    mov ax, 0x45                     ; 0x4b8c
    push ax                          ; 0x4b8f
    push ax                          ; 0x4b90
    mov ax, 0x41                     ; 0x4b91
    push ax                          ; 0x4b94
    mov ax, 0x3d                     ; 0x4b95
    push ax                          ; 0x4b98
    push ax                          ; 0x4b99
    mov ax, 0xd                      ; 0x4b9a
    push ax                          ; 0x4b9d
    push ax                          ; 0x4b9e
    mov ax, 0x9e                     ; 0x4b9f
    push ax                          ; 0x4ba2
    push ax                          ; 0x4ba3
    mov ax, 0x80                     ; 0x4ba4
    push ax                          ; 0x4ba7
    push ax                          ; 0x4ba8
    mov ax, 0x3f                     ; 0x4ba9
    push ax                          ; 0x4bac
    mov ax, 0x42                     ; 0x4bad
    push ax                          ; 0x4bb0
    push ax                          ; 0x4bb1
    mov ax, 0x3f                     ; 0x4bb2
    push ax                          ; 0x4bb5
    mov ax, 0x3c                     ; 0x4bb6
    push ax                          ; 0x4bb9
    push ax                          ; 0x4bba
    mov ax, 0x4b                     ; 0x4bbb
    push ax                          ; 0x4bbe
    mov ax, 0xd                      ; 0x4bbf
    push ax                          ; 0x4bc2
    mov ax, 9                        ; 0x4bc3
    push ax                          ; 0x4bc6
    push ax                          ; 0x4bc7
    mov ax, 4                        ; 0x4bc8
    push ax                          ; 0x4bcb
    push cx                          ; 0x4bcc
    push ax                          ; 0x4bcd
    push cx                          ; 0x4bce
    mov ax, 1                        ; 0x4bcf
    push ax                          ; 0x4bd2
    mov ax, 0                        ; 0x4bd3
    push ax                          ; 0x4bd6
    mov ax, 3                        ; 0x4bd7
    push ax                          ; 0x4bda
    push word [data_9b12]            ; 0x4bdb
    push word [data_91aa]            ; 0x4bdf
    call api_idx_0010                ; 0x4be3
    add sp, byte 0x4a                ; 0x4be6
    mov ax, 0xc4                     ; 0x4be9
    push ax                          ; 0x4bec
    mov ax, 0xc9                     ; 0x4bed
    push ax                          ; 0x4bf0
    mov ax, 0xba                     ; 0x4bf1
    push ax                          ; 0x4bf4
    push ax                          ; 0x4bf5
    mov ax, 5                        ; 0x4bf6
    push ax                          ; 0x4bf9
    mov ax, 0xf                      ; 0x4bfa
    push ax                          ; 0x4bfd
    mov ax, 5                        ; 0x4bfe
    push ax                          ; 0x4c01
    mov ax, 0xf                      ; 0x4c02
    push ax                          ; 0x4c05
    mov ax, 5                        ; 0x4c06
    push ax                          ; 0x4c09
    mov ax, 0xf                      ; 0x4c0a
    push ax                          ; 0x4c0d
    mov ax, 0xc                      ; 0x4c0e
    push ax                          ; 0x4c11
    mov ax, 8                        ; 0x4c12
    push ax                          ; 0x4c15
    mov ax, 0x14                     ; 0x4c16
    push ax                          ; 0x4c19
    mov ax, 0x10                     ; 0x4c1a
    push ax                          ; 0x4c1d
    mov ax, 0                        ; 0x4c1e
    push ax                          ; 0x4c21
    push ax                          ; 0x4c22
    mov ax, 4                        ; 0x4c23
    push ax                          ; 0x4c26
    push ax                          ; 0x4c27
    mov ax, 0x2a                     ; 0x4c28
    push ax                          ; 0x4c2b
    mov ax, 0x34                     ; 0x4c2c
    push ax                          ; 0x4c2f
    mov ax, 5                        ; 0x4c30
    push ax                          ; 0x4c33
    mov ax, 0xf                      ; 0x4c34
    push ax                          ; 0x4c37
    mov ax, 6                        ; 0x4c38
    push ax                          ; 0x4c3b
    mov ax, 5                        ; 0x4c3c
    push ax                          ; 0x4c3f
    mov ax, 4                        ; 0x4c40
    push ax                          ; 0x4c43
    mov ax, 2                        ; 0x4c44
    push ax                          ; 0x4c47
    mov ax, 4                        ; 0x4c48
    push ax                          ; 0x4c4b
    mov ax, 2                        ; 0x4c4c
    push ax                          ; 0x4c4f
    mov ax, 1                        ; 0x4c50
    push ax                          ; 0x4c53
    mov ax, 0                        ; 0x4c54
    push ax                          ; 0x4c57
    mov ax, 3                        ; 0x4c58
    push ax                          ; 0x4c5b
    push word [data_91aa]            ; 0x4c5c
    call api_idx_0012_3              ; 0x4c60
    add sp, byte 0x40                ; 0x4c63
    mov ax, word [data_91a4]         ; 0x4c66
    mov word [data_9aec], ax         ; 0x4c69
    mov ax, 0x2e                     ; 0x4c6c
    push ax                          ; 0x4c6f
    push ax                          ; 0x4c70
    mov ax, 0x10                     ; 0x4c71
    push ax                          ; 0x4c74
    push ax                          ; 0x4c75
    mov ax, 0x8d                     ; 0x4c76
    push ax                          ; 0x4c79
    mov ax, 0x95                     ; 0x4c7a
    push ax                          ; 0x4c7d
    mov ax, 0x4d                     ; 0x4c7e
    push ax                          ; 0x4c81
    mov ax, 0x51                     ; 0x4c82
    push ax                          ; 0x4c85
    push ax                          ; 0x4c86
    mov ax, 0x4d                     ; 0x4c87
    push ax                          ; 0x4c8a
    mov ax, 0x49                     ; 0x4c8b
    push ax                          ; 0x4c8e
    push ax                          ; 0x4c8f
    mov ax, 0x11                     ; 0x4c90
    push ax                          ; 0x4c93
    push ax                          ; 0x4c94
    mov ax, 0xa4                     ; 0x4c95
    push ax                          ; 0x4c98
    push ax                          ; 0x4c99
    mov ax, 0x86                     ; 0x4c9a
    push ax                          ; 0x4c9d
    push ax                          ; 0x4c9e
    mov ax, 0x48                     ; 0x4c9f
    push ax                          ; 0x4ca2
    mov ax, 0x4b                     ; 0x4ca3
    push ax                          ; 0x4ca6
    push ax                          ; 0x4ca7
    mov ax, 0x48                     ; 0x4ca8
    push ax                          ; 0x4cab
    mov ax, 0x45                     ; 0x4cac
    push ax                          ; 0x4caf
    push ax                          ; 0x4cb0
    mov ax, 0x4f                     ; 0x4cb1
    push ax                          ; 0x4cb4
    mov ax, 0x11                     ; 0x4cb5
    push ax                          ; 0x4cb8
    mov ax, 0xc                      ; 0x4cb9
    push ax                          ; 0x4cbc
    push ax                          ; 0x4cbd
    mov ax, 4                        ; 0x4cbe
    push ax                          ; 0x4cc1
    mov ax, 2                        ; 0x4cc2
    push ax                          ; 0x4cc5
    mov ax, 4                        ; 0x4cc6
    push ax                          ; 0x4cc9
    mov ax, 2                        ; 0x4cca
    push ax                          ; 0x4ccd
    mov ax, 1                        ; 0x4cce
    push ax                          ; 0x4cd1
    mov ax, 0                        ; 0x4cd2
    push ax                          ; 0x4cd5
    mov ax, 4                        ; 0x4cd6
    push ax                          ; 0x4cd9
    push word [data_9b16]            ; 0x4cda
    push word [data_91aa]            ; 0x4cde
    call api_idx_0010                ; 0x4ce2
    add sp, byte 0x4a                ; 0x4ce5
    mov ax, 0xce                     ; 0x4ce8
    push ax                          ; 0x4ceb
    mov ax, 0xd3                     ; 0x4cec
    push ax                          ; 0x4cef
    mov ax, 0xbe                     ; 0x4cf0
    push ax                          ; 0x4cf3
    push ax                          ; 0x4cf4
    mov ax, 0xa                      ; 0x4cf5
    push ax                          ; 0x4cf8
    mov ax, 0x14                     ; 0x4cf9
    push ax                          ; 0x4cfc
    mov ax, 0xa                      ; 0x4cfd
    push ax                          ; 0x4d00
    mov ax, 0x14                     ; 0x4d01
    push ax                          ; 0x4d04
    mov ax, 0xa                      ; 0x4d05
    push ax                          ; 0x4d08
    mov ax, 0x14                     ; 0x4d09
    push ax                          ; 0x4d0c
    mov ax, 0xc                      ; 0x4d0d
    push ax                          ; 0x4d10
    mov ax, 8                        ; 0x4d11
    push ax                          ; 0x4d14
    mov ax, 0x14                     ; 0x4d15
    push ax                          ; 0x4d18
    mov ax, 0x10                     ; 0x4d19
    push ax                          ; 0x4d1c
    mov ax, 0                        ; 0x4d1d
    push ax                          ; 0x4d20
    push ax                          ; 0x4d21
    mov ax, 4                        ; 0x4d22
    push ax                          ; 0x4d25
    push ax                          ; 0x4d26
    mov ax, 0x2f                     ; 0x4d27
    push ax                          ; 0x4d2a
    mov ax, 0x39                     ; 0x4d2b
    push ax                          ; 0x4d2e
    mov ax, 0xa                      ; 0x4d2f
    push ax                          ; 0x4d32
    mov ax, 0x14                     ; 0x4d33
    push ax                          ; 0x4d36
    mov ax, 6                        ; 0x4d37
    push ax                          ; 0x4d3a
    mov ax, 5                        ; 0x4d3b
    push ax                          ; 0x4d3e
    mov ax, 4                        ; 0x4d3f
    push ax                          ; 0x4d42
    mov ax, 2                        ; 0x4d43
    push ax                          ; 0x4d46
    mov ax, 4                        ; 0x4d47
    push ax                          ; 0x4d4a
    mov ax, 2                        ; 0x4d4b
    push ax                          ; 0x4d4e
    mov ax, 1                        ; 0x4d4f
    push ax                          ; 0x4d52
    mov ax, 0                        ; 0x4d53
    push ax                          ; 0x4d56
    mov ax, 4                        ; 0x4d57
    push ax                          ; 0x4d5a
    push word [data_91aa]            ; 0x4d5b
    call api_idx_0012_3              ; 0x4d5f
    add sp, byte 0x40                ; 0x4d62
    inc word [data_91aa]             ; 0x4d65
    jmp near @..api_idx_0030.l15     ; 0x4d69
@..api_idx_0030.l28:
    mov ax, word [data_9b08]         ; 0x4d6c
    dec ax                           ; 0x4d6f
    mov word [data_91aa], ax         ; 0x4d70
    jmp near @..api_idx_0030.l81     ; 0x4d73
@..api_idx_0030.l29:
    mov word [bp - 0x0004], 0xff     ; 0x4d76
@..api_idx_0030.l30:
    mov ax, word [data_92f2]         ; 0x4d7b
    dec ax                           ; 0x4d7e
    mov word [bp - 0x0002], ax       ; 0x4d7f
    jmp short @..api_idx_0030.l34    ; 0x4d82
@..api_idx_0030.l31:
    mov ax, 0x11                     ; 0x4d84
    imul word [bp - 0x0002]          ; 0x4d87
    add ax, 0x92f4                   ; 0x4d8a
    mov word [bp - 0x0026], ax       ; 0x4d8d
    mov bx, ax                       ; 0x4d90
    mov al, byte [bx + 0xd]          ; 0x4d92
    sub ah, ah                       ; 0x4d95
    cmp ax, word [data_91aa]         ; 0x4d97
    jne short @..api_idx_0030.l33    ; 0x4d9b
    mov al, byte [bx + 0xc]          ; 0x4d9d
    sub ah, ah                       ; 0x4da0
    cmp ax, word [bp - 0x0004]       ; 0x4da2
    jne short @..api_idx_0030.l33    ; 0x4da5
    cmp word [bx], byte 0xff         ; 0x4da7
    je short @..api_idx_0030.l32     ; 0x4daa
    push word [bx + 0x4]             ; 0x4dac
    mov al, byte [bx + 0x8]          ; 0x4daf
    sub ah, ah                       ; 0x4db2
    push ax                          ; 0x4db4
    push word [bx]                   ; 0x4db5
    mov al, byte [bx + 0xe]          ; 0x4db7
    sub ah, ah                       ; 0x4dba
    push ax                          ; 0x4dbc
    db 0xe8, 0x5f, 0xa2 ; call 0xf01f
    add sp, byte 8                   ; 0x4dc0
@..api_idx_0030.l32:
    mov bx, word [bp - 0x0026]       ; 0x4dc3
    cmp word [bx + 0x2], byte 0xff   ; 0x4dc6
    je short @..api_idx_0030.l33     ; 0x4dca
    push word [bx + 0x6]             ; 0x4dcc
    mov al, byte [bx + 0x9]          ; 0x4dcf
    sub ah, ah                       ; 0x4dd2
    push ax                          ; 0x4dd4
    push word [bx + 0x2]             ; 0x4dd5
    mov al, byte [bx + 0xe]          ; 0x4dd8
    sub ah, ah                       ; 0x4ddb
    push ax                          ; 0x4ddd
    db 0xe8, 0x3e, 0xa2 ; call 0xf01f
    add sp, byte 8                   ; 0x4de1
@..api_idx_0030.l33:
    dec word [bp - 0x0002]           ; 0x4de4
@..api_idx_0030.l34:
    cmp word [bp - 0x0002], byte 0   ; 0x4de7
    jge short @..api_idx_0030.l31    ; 0x4deb
    mov ax, 0                        ; 0x4ded
    cmp word [bp - 0x0004], strict word 0xff ; 0x4df0
    je short @..api_idx_0030.l35     ; 0x4df5
    mov ax, 0xffff                   ; 0x4df7
    cmp word [bp - 0x0004], strict word 0xfb ; 0x4dfa
    jne short @..api_idx_0030.l35    ; 0x4dff
    mov ax, 1                        ; 0x4e01
@..api_idx_0030.l35:
    mov word [bp - 0x0018], ax       ; 0x4e04
    cmp ax, strict word 0xffff       ; 0x4e07
    jne short @..api_idx_0030.l36    ; 0x4e0a
    jmp near @..api_idx_0030.l44     ; 0x4e0c
@..api_idx_0030.l36:
    mov ax, word [data_92f2]         ; 0x4e0f
    dec ax                           ; 0x4e12
    mov word [bp - 0x0002], ax       ; 0x4e13
    jmp near @..api_idx_0030.l43     ; 0x4e16
@..api_idx_0030.l37:
    mov ax, 0x11                     ; 0x4e19
    imul word [bp - 0x0002]          ; 0x4e1c
    add ax, 0x92f4                   ; 0x4e1f
    mov word [bp - 0x0026], ax       ; 0x4e22
    mov bx, ax                       ; 0x4e25
    mov al, byte [bx + 0xd]          ; 0x4e27
    sub ah, ah                       ; 0x4e2a
    cmp ax, word [data_91aa]         ; 0x4e2c
    je short @..api_idx_0030.l38     ; 0x4e30
    jmp near @..api_idx_0030.l42     ; 0x4e32
@..api_idx_0030.l38:
    mov al, byte [bx + 0xc]          ; 0x4e35
    sub ah, ah                       ; 0x4e38
    cmp ax, 0xfa                     ; 0x4e3a
    jl short @..api_idx_0030.l39     ; 0x4e3d
    jmp near @..api_idx_0030.l42     ; 0x4e3f
@..api_idx_0030.l39:
    mov al, byte [bx + 0x10]         ; 0x4e42
    sub ah, ah                       ; 0x4e45
    cmp ax, word [bp - 0x0018]       ; 0x4e47
    jne short @..api_idx_0030.l42    ; 0x4e4a
    cmp byte [bx + 0xc], 4           ; 0x4e4c
    jne short @..api_idx_0030.l40    ; 0x4e50
    cmp byte [bx + 0x9], 1           ; 0x4e52
    jne short @..api_idx_0030.l40    ; 0x4e56
    push bx                          ; 0x4e58
    call api_idx_0016                ; 0x4e59
    pop cx                           ; 0x4e5c
    jmp short @..api_idx_0030.l42    ; 0x4e5d
@..api_idx_0030.l40:
    mov word [bp - 0x0006], 0        ; 0x4e5f
@..api_idx_0030.l41:
    mov bx, word [bp - 0x0026]       ; 0x4e64
    mov si, word [bp - 0x0006]       ; 0x4e67
    mov al, byte [bx + si + 0x8]     ; 0x4e6a
    mov bx, si                       ; 0x4e6d
    add bx, bp                       ; 0x4e6f
    mov byte [bx - 0x0030], al       ; 0x4e71
    inc word [bp - 0x0006]           ; 0x4e74
    mov ax, word [bp - 0x0006]       ; 0x4e77
    cmp ax, strict word 4            ; 0x4e7a
    jl short @..api_idx_0030.l41     ; 0x4e7d
    mov byte [bp - 0x002c], 0        ; 0x4e7f
    mov bx, word [bp - 0x0026]       ; 0x4e83
    mov al, byte [bx + 0xe]          ; 0x4e86
    sub ah, ah                       ; 0x4e89
    push ax                          ; 0x4e8b
    mov ax, 0                        ; 0x4e8c
    push ax                          ; 0x4e8f
    lea ax, word [bp - 0x0030]       ; 0x4e90
    push ax                          ; 0x4e93
    mov al, byte [bx + 0xf]          ; 0x4e94
    sub ah, ah                       ; 0x4e97
    push ax                          ; 0x4e99
    mov ax, 0x90                     ; 0x4e9a
    push ax                          ; 0x4e9d
    mov ax, 0x20                     ; 0x4e9e
    push ax                          ; 0x4ea1
    push word [bx + 0x6]             ; 0x4ea2
    push word [bx + 0x4]             ; 0x4ea5
    push word [bx + 0x2]             ; 0x4ea8
    push word [bx]                   ; 0x4eab
    mov al, byte [bx + 0xc]          ; 0x4ead
    sub ah, ah                       ; 0x4eb0
    push ax                          ; 0x4eb2
    call ds_dispatch_efd1            ; 0x4eb3
    add sp, byte 0x16                ; 0x4eb6
@..api_idx_0030.l42:
    dec word [bp - 0x0002]           ; 0x4eb9
@..api_idx_0030.l43:
    cmp word [bp - 0x0002], byte 0   ; 0x4ebc
    jl short @..api_idx_0030.l44     ; 0x4ec0
    jmp near @..api_idx_0030.l37     ; 0x4ec2
@..api_idx_0030.l44:
    dec word [bp - 0x0004]           ; 0x4ec5
    mov ax, word [bp - 0x0004]       ; 0x4ec8
    cmp ax, 0xfb                     ; 0x4ecb
    jl short @..api_idx_0030.l45     ; 0x4ece
    jmp near @..api_idx_0030.l30     ; 0x4ed0
@..api_idx_0030.l45:
    mov al, byte [data_5b55]         ; 0x4ed3
    sub ah, ah                       ; 0x4ed6
    cmp ax, 0xff                     ; 0x4ed8
    jne short @..api_idx_0030.l46    ; 0x4edb
    jmp near @..api_idx_0030.l66     ; 0x4edd
@..api_idx_0030.l46:
    cmp word [data_91aa], byte 0     ; 0x4ee0
    je short @..api_idx_0030.l47     ; 0x4ee5
    jmp near @..api_idx_0030.l66     ; 0x4ee7
@..api_idx_0030.l47:
    cmp word [data_91a8], byte 0     ; 0x4eea
    jne short @..api_idx_0030.l48    ; 0x4eef
    cmp byte [data_91b8], 3          ; 0x4ef1
    jne short @..api_idx_0030.l48    ; 0x4ef6
    jmp near @..api_idx_0030.l66     ; 0x4ef8
@..api_idx_0030.l48:
    mov ax, word [data_91a8]         ; 0x4efb
    mov cx, 2                        ; 0x4efe
    cwd                              ; 0x4f01
    idiv cx                          ; 0x4f02
    mov ax, dx                       ; 0x4f04
    test ax, ax                      ; 0x4f06
    jne short @..api_idx_0030.l49    ; 0x4f08
    cmp word [data_8456], byte 1     ; 0x4f0a
    jg short @..api_idx_0030.l49     ; 0x4f0f
    jmp near @..api_idx_0030.l66     ; 0x4f11
@..api_idx_0030.l49:
    mov word [bp - 0x0006], 0        ; 0x4f14
@..api_idx_0030.l50:
    mov ax, word [bp - 0x0006]       ; 0x4f19
    shl ax, 1                        ; 0x4f1c
    mov bx, ax                       ; 0x4f1e
    cmp word [bx - 0x6e7e], byte 0   ; 0x4f20
    jg short @..api_idx_0030.l51     ; 0x4f25
    jmp near @..api_idx_0030.l55     ; 0x4f27
@..api_idx_0030.l51:
    mov al, byte [bx - 0x6e7e]       ; 0x4f2a
    mov byte [bp - 0x0030], al       ; 0x4f2e
    mov byte [bp - 0x002f], 0        ; 0x4f31
    mov ax, 0                        ; 0x4f35
    push ax                          ; 0x4f38
    push ax                          ; 0x4f39
    lea ax, word [bp - 0x0030]       ; 0x4f3a
    push ax                          ; 0x4f3d
    push word [bx - 0x6e62]          ; 0x4f3e
    mov ax, 0x90                     ; 0x4f42
    push ax                          ; 0x4f45
    mov ax, 0x20                     ; 0x4f46
    push ax                          ; 0x4f49
    mov ax, 0xf8                     ; 0x4f4a
    push ax                          ; 0x4f4d
    mov ax, 0x48                     ; 0x4f4e
    push ax                          ; 0x4f51
    mov bx, word [bx - 0x6e7e]       ; 0x4f52
    mov al, byte [bx + 0x7c61]       ; 0x4f56
    sub ah, ah                       ; 0x4f5a
    mov cx, word [bp - 0x0006]       ; 0x4f5c
    shl cx, 1                        ; 0x4f5f
    mov bx, cx                       ; 0x4f61
    add ax, word [bx - 0x6e74]       ; 0x4f63
    push ax                          ; 0x4f67
    mov ax, word [bx - 0x6e7e]       ; 0x4f68
    shl ax, 1                        ; 0x4f6c
    add ax, word [bx - 0x6e62]       ; 0x4f6e
    mov bx, ax                       ; 0x4f72
    mov al, byte [bx + 0x7c18]       ; 0x4f74
    sub ah, ah                       ; 0x4f78
    mov bx, cx                       ; 0x4f7a
    add ax, word [bx - 0x6e6e]       ; 0x4f7c
    push ax                          ; 0x4f80
    mov ax, 0xd                      ; 0x4f81
    push ax                          ; 0x4f84
    call ds_dispatch_efd1            ; 0x4f85
    add sp, byte 0x16                ; 0x4f88
    mov ax, word [bp - 0x0006]       ; 0x4f8b
    shl ax, 1                        ; 0x4f8e
    mov bx, ax                       ; 0x4f90
    cmp word [bx - 0x6e68], byte 0   ; 0x4f92
    je short @..api_idx_0030.l52     ; 0x4f97
    dec word [bx - 0x6e7e]           ; 0x4f99
    jmp short @..api_idx_0030.l53    ; 0x4f9d
@..api_idx_0030.l52:
    inc word [bx - 0x6e7e]           ; 0x4f9f
@..api_idx_0030.l53:
    mov al, byte [data_7d3c]         ; 0x4fa3
    sub ah, ah                       ; 0x4fa6
    cmp ax, word [bx - 0x6e7e]       ; 0x4fa8
    jge short @..api_idx_0030.l54    ; 0x4fac
    mov word [bx - 0x6e7e], 0        ; 0x4fae
@..api_idx_0030.l54:
    jmp near @..api_idx_0030.l65     ; 0x4fb4
@..api_idx_0030.l55:
    cmp word [data_8f22], byte 0     ; 0x4fb7
    je short @..api_idx_0030.l56     ; 0x4fbc
    jmp near @..api_idx_0030.l65     ; 0x4fbe
@..api_idx_0030.l56:
    mov ax, 0x64                     ; 0x4fc1
    push ax                          ; 0x4fc4
    call ds_dispatch_b7a9            ; 0x4fc5
    pop cx                           ; 0x4fc8
    cmp ax, word [bp - 0x0006]       ; 0x4fc9
    jle short @..api_idx_0030.l57    ; 0x4fcc
    jmp near @..api_idx_0030.l65     ; 0x4fce
@..api_idx_0030.l57:
    mov ax, 2                        ; 0x4fd1
    push ax                          ; 0x4fd4
    call ds_dispatch_b7a9            ; 0x4fd5
    pop cx                           ; 0x4fd8
    mov cx, word [bp - 0x0006]       ; 0x4fd9
    shl cx, 1                        ; 0x4fdc
    mov bx, cx                       ; 0x4fde
    mov word [bx - 0x6e62], ax       ; 0x4fe0
    mov ax, word [data_91a8]         ; 0x4fe4
    mov cx, 2                        ; 0x4fe7
    cwd                              ; 0x4fea
    idiv cx                          ; 0x4feb
    mov ax, dx                       ; 0x4fed
    test ax, ax                      ; 0x4fef
    je short @..api_idx_0030.l58     ; 0x4ff1
    push cx                          ; 0x4ff3
    call ds_dispatch_b7a9            ; 0x4ff4
    pop cx                           ; 0x4ff7
    jmp short @..api_idx_0030.l59    ; 0x4ff8
@..api_idx_0030.l58:
    mov ax, 0                        ; 0x4ffa
@..api_idx_0030.l59:
    mov cx, word [bp - 0x0006]       ; 0x4ffd
    shl cx, 1                        ; 0x5000
    mov bx, cx                       ; 0x5002
    mov word [bx - 0x6e68], ax       ; 0x5004
    mov ax, 1                        ; 0x5008
    cmp word [bx - 0x6e68], byte 0   ; 0x500b
    je short @..api_idx_0030.l60     ; 0x5010
    mov al, byte [data_7d3c]         ; 0x5012
    sub ah, ah                       ; 0x5015
@..api_idx_0030.l60:
    mov word [bx - 0x6e7e], ax       ; 0x5017
    mov ax, word [data_91a8]         ; 0x501b
    mov cx, 1                        ; 0x501e
    cwd                              ; 0x5021
    idiv cx                          ; 0x5022
    mov ax, dx                       ; 0x5024
    test ax, ax                      ; 0x5026
    je short @..api_idx_0030.l61     ; 0x5028
    mov ax, 0x1e                     ; 0x502a
    jmp short @..api_idx_0030.l62    ; 0x502d
@..api_idx_0030.l61:
    mov ax, 0xa                      ; 0x502f
@..api_idx_0030.l62:
    mov word [bp - 0x0002], ax       ; 0x5032
    cmp word [bx - 0x6e62], byte 0   ; 0x5035
    je short @..api_idx_0030.l63     ; 0x503a
    push ax                          ; 0x503c
    call ds_dispatch_b7a9            ; 0x503d
    pop cx                           ; 0x5040
    jmp short @..api_idx_0030.l64    ; 0x5041
@..api_idx_0030.l63:
    push word [bp - 0x0002]          ; 0x5043
    call ds_dispatch_b7a9            ; 0x5046
    pop cx                           ; 0x5049
    mov cx, ax                       ; 0x504a
    mov ax, 0                        ; 0x504c
    sub ax, cx                       ; 0x504f
@..api_idx_0030.l64:
    mov cx, word [bp - 0x0006]       ; 0x5051
    shl cx, 1                        ; 0x5054
    mov bx, cx                       ; 0x5056
    mov word [bx - 0x6e6e], ax       ; 0x5058
    mov ax, 5                        ; 0x505c
    push ax                          ; 0x505f
    call ds_dispatch_b7a9            ; 0x5060
    pop cx                           ; 0x5063
    mov cx, word [bp - 0x0006]       ; 0x5064
    shl cx, 1                        ; 0x5067
    mov bx, cx                       ; 0x5069
    mov word [bx - 0x6e74], ax       ; 0x506b
@..api_idx_0030.l65:
    inc word [bp - 0x0006]           ; 0x506f
    mov ax, word [bp - 0x0006]       ; 0x5072
    cmp ax, strict word 3            ; 0x5075
    jge short @..api_idx_0030.l66    ; 0x5078
    jmp near @..api_idx_0030.l50     ; 0x507a
@..api_idx_0030.l66:
    cmp word [data_91a8], byte 0     ; 0x507d
    je short @..api_idx_0030.l67     ; 0x5082
    mov ax, word [data_91a8]         ; 0x5084
    cmp ax, strict word 2            ; 0x5087
    jg short @..api_idx_0030.l67     ; 0x508a
    jmp near @..api_idx_0030.l80     ; 0x508c
@..api_idx_0030.l67:
    mov word [bp - 0x0014], 0        ; 0x508f
@..api_idx_0030.l68:
    mov ax, word [bp - 0x0014]       ; 0x5094
    shl ax, 1                        ; 0x5097
    mov bx, ax                       ; 0x5099
    add bx, bp                       ; 0x509b
    mov ax, word [bx - 0x0024]       ; 0x509d
    mov word [bp - 0x0002], ax       ; 0x50a0
    mov ax, 5                        ; 0x50a3
    imul word [data_91aa]            ; 0x50a6
    mov cx, ax                       ; 0x50aa
    mov ax, word [bp - 0x0002]       ; 0x50ac
    add cx, ax                       ; 0x50af
    mov bx, cx                       ; 0x50b1
    mov al, byte [bx - 0x6e22]       ; 0x50b3
    sub ah, ah                       ; 0x50b7
    mov word [bp - 0x001a], ax       ; 0x50b9
    test ax, ax                      ; 0x50bc
    jne short @..api_idx_0030.l69    ; 0x50be
    jmp near @..api_idx_0030.l79     ; 0x50c0
@..api_idx_0030.l69:
    mov ax, 0x28                     ; 0x50c3
    imul word [data_91aa]            ; 0x50c6
    mov cx, word [bp - 0x0002]       ; 0x50ca
    shl cx, 1                        ; 0x50cd
    shl cx, 1                        ; 0x50cf
    shl cx, 1                        ; 0x50d1
    add ax, cx                       ; 0x50d3
    mov bx, ax                       ; 0x50d5
    cmp word [bx + 0x2a6], byte 0    ; 0x50d7
    jne short @..api_idx_0030.l70    ; 0x50dc
    jmp near @..api_idx_0030.l79     ; 0x50de
@..api_idx_0030.l70:
    cmp word [bp - 0x001a], byte 1   ; 0x50e1
    je short @..api_idx_0030.l71     ; 0x50e5
    cmp word [data_9188], byte 0     ; 0x50e7
    je short @..api_idx_0030.l73     ; 0x50ec
@..api_idx_0030.l71:
    mov ax, 0                        ; 0x50ee
    cmp word [data_9188], byte 0     ; 0x50f1
    je short @..api_idx_0030.l72     ; 0x50f6
    mov ax, 0xff                     ; 0x50f8
@..api_idx_0030.l72:
    push ax                          ; 0x50fb
    push word [bx + 0x2ac]           ; 0x50fc
    push word [bx + 0x2aa]           ; 0x5100
    push word [bx + 0x2a8]           ; 0x5104
    push word [bx + 0x2a6]           ; 0x5108
    call ds_dispatch_e901            ; 0x510c
    add sp, byte 0x0a                ; 0x510f
    jmp near @..api_idx_0030.l78     ; 0x5112
@..api_idx_0030.l73:
    cmp word [data_91aa], byte 0     ; 0x5115
    jg short @..api_idx_0030.l74     ; 0x511a
    jmp near @..api_idx_0030.l78     ; 0x511c
@..api_idx_0030.l74:
    mov ax, word [bp - 0x0002]       ; 0x511f
    shl ax, 1                        ; 0x5122
    shl ax, 1                        ; 0x5124
    add ax, word [data_91aa]         ; 0x5126
    shl ax, 1                        ; 0x512a
    mov bx, ax                       ; 0x512c
    cmp byte [bx + 0x76a0], 0        ; 0x512e
    jne short @..api_idx_0030.l75    ; 0x5133
    jmp near @..api_idx_0030.l78     ; 0x5135
@..api_idx_0030.l75:
    mov ax, 2                        ; 0x5138
    push ax                          ; 0x513b
    call ds_dispatch_b7a9            ; 0x513c
    pop cx                           ; 0x513f
    add ax, word [data_8f46]         ; 0x5140
    add ax, word [data_8f44]         ; 0x5144
    add ax, word [data_82ee]         ; 0x5148
    add ax, word [data_91aa]         ; 0x514c
    mov cx, 2                        ; 0x5150
    cwd                              ; 0x5153
    idiv cx                          ; 0x5154
    mov word [data_91a4], dx         ; 0x5156
    mov al, byte [data_91aa]         ; 0x515a
    mov byte [bp - 0x0030], al       ; 0x515d
    mov byte [bp - 0x002f], 0        ; 0x5160
    mov ax, word [bp - 0x0002]       ; 0x5164
    shl ax, 1                        ; 0x5167
    shl ax, 1                        ; 0x5169
    add ax, word [data_91aa]         ; 0x516b
    shl ax, 1                        ; 0x516f
    add ax, dx                       ; 0x5171
    mov bx, ax                       ; 0x5173
    mov al, byte [bx + 0x76a0]       ; 0x5175
    sub ah, ah                       ; 0x5179
    mov word [bp - 0x0006], ax       ; 0x517b
    cmp ax, 0xff                     ; 0x517e
    jne short @..api_idx_0030.l77    ; 0x5181
    mov ax, 0xffee                   ; 0x5183
    cmp word [data_91a4], byte 0     ; 0x5186
    je short @..api_idx_0030.l76     ; 0x518b
    mov ax, 0xffea                   ; 0x518d
@..api_idx_0030.l76:
    mov word [bp - 0x0006], ax       ; 0x5190
@..api_idx_0030.l77:
    mov ax, 0                        ; 0x5193
    push ax                          ; 0x5196
    push ax                          ; 0x5197
    lea ax, word [bp - 0x0030]       ; 0x5198
    push ax                          ; 0x519b
    push dx                          ; 0x519c
    mov ax, 0x90                     ; 0x519d
    push ax                          ; 0x51a0
    mov ax, 0x20                     ; 0x51a1
    push ax                          ; 0x51a4
    mov ax, 0xf8                     ; 0x51a5
    push ax                          ; 0x51a8
    mov ax, 0x48                     ; 0x51a9
    push ax                          ; 0x51ac
    mov ax, word [bp - 0x0002]       ; 0x51ad
    shl ax, 1                        ; 0x51b0
    shl ax, 1                        ; 0x51b2
    add ax, word [data_91aa]         ; 0x51b4
    mov bx, ax                       ; 0x51b8
    mov al, byte [bx + 0x76e9]       ; 0x51ba
    sub ah, ah                       ; 0x51be
    push ax                          ; 0x51c0
    push word [bp - 0x0006]          ; 0x51c1
    mov ax, 9                        ; 0x51c4
    push ax                          ; 0x51c7
    call ds_dispatch_efd1            ; 0x51c8
    add sp, byte 0x16                ; 0x51cb
@..api_idx_0030.l78:
    cmp word [data_9188], byte 0     ; 0x51ce
    je short @..api_idx_0030.l79     ; 0x51d3
    call api_idx_001e                ; 0x51d5
    call api_idx_0024                ; 0x51d8
@..api_idx_0030.l79:
    inc word [bp - 0x0014]           ; 0x51db
    mov ax, word [bp - 0x0014]       ; 0x51de
    cmp ax, strict word 5            ; 0x51e1
    jge short @..api_idx_0030.l80    ; 0x51e4
    jmp near @..api_idx_0030.l68     ; 0x51e6
@..api_idx_0030.l80:
    dec word [data_91aa]             ; 0x51e9
@..api_idx_0030.l81:
    cmp word [data_91aa], byte 0     ; 0x51ed
    jl short @..api_idx_0030.l82     ; 0x51f2
    jmp near @..api_idx_0030.l29     ; 0x51f4
@..api_idx_0030.l82:
    call ds_dispatch_da22            ; 0x51f7
    ret                              ; 0x51fa
loc_51fb:
    mov ax, 0                        ; 0x51fb
    call ds_dispatch_f40b            ; 0x51fe
    call api_idx_0030                ; 0x5201
    mov ax, 0x8f                     ; 0x5204
    push ax                          ; 0x5207
    mov ax, 0xf7                     ; 0x5208
    push ax                          ; 0x520b
    mov ax, 0x20                     ; 0x520c
    push ax                          ; 0x520f
    mov ax, 0x48                     ; 0x5210
    push ax                          ; 0x5213
    call ds_dispatch_e8da            ; 0x5214
    add sp, byte 8                   ; 0x5217
    ret                              ; 0x521a
loc_521b:
    pop word [data_917e]             ; 0x521b
    pop cx                           ; 0x521f
    mov word [data_917a], sp         ; 0x5220
    mov word [data_917c], bp         ; 0x5224
    mov word [data_9176], si         ; 0x5228
    mov word [data_9178], di         ; 0x522c
    cld                              ; 0x5230
    mov di, data_9180                ; 0x5231
    mov cx, 0x9b1c                   ; 0x5234
    sub cx, di                       ; 0x5237
    shr cx, 1                        ; 0x5239
    je short @..local.l43            ; 0x523b
    sub ax, ax                       ; 0x523d
    rep stosw                        ; 0x523f
@..local.l43:
    call api_idx_0002                ; 0x5241
    mov bp, word [data_917c]         ; 0x5244
    mov sp, word [data_917a]         ; 0x5248
    mov si, word [data_9176]         ; 0x524c
    mov di, word [data_9178]         ; 0x5250
    push cx                          ; 0x5254
    jmp [data_917e]                  ; 0x5255

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
    times 11 db 0

