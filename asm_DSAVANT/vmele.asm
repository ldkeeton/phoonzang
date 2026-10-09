%include "structs/structs.inc"
%include "structs/data_90bc.inc"
org 0
bits 16
%include "labels/vmele_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x65, 0x37, 0x98, 0x90

data_0002 equ 0x0002
data_0e36 equ 0x0e36
data_5962 equ 0x5962
data_5963 equ 0x5963
data_5964 equ 0x5964
data_5988 equ 0x5988
data_598e equ 0x598e
data_5b6e equ 0x5b6e
data_69c8 equ 0x69c8
data_7abc equ 0x7abc
data_7b04 equ 0x7b04
data_82b6 equ 0x82b6
data_82e8 equ 0x82e8
data_82ee equ 0x82ee
data_82fa equ 0x82fa
data_82fc equ 0x82fc
data_830a equ 0x830a
data_830c equ 0x830c
data_8452 equ 0x8452
data_8454 equ 0x8454
data_8456 equ 0x8456
data_8458 equ 0x8458
data_845a equ 0x845a
data_845c equ 0x845c
data_845e equ 0x845e
data_8460 equ 0x8460
data_8466 equ 0x8466
data_8468 equ 0x8468
data_8482 equ 0x8482
data_8484 equ 0x8484
data_8492 equ 0x8492
data_849e equ 0x849e
data_84a0 equ 0x84a0
data_84a2 equ 0x84a2
data_84a4 equ 0x84a4
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8f20 equ 0x8f20
data_905a equ 0x905a
data_905e equ 0x905e
data_9060 equ 0x9060
data_9062 equ 0x9062
data_9064 equ 0x9064
data_9066 equ 0x9066
data_9068 equ 0x9068
data_906a equ 0x906a
data_906c equ 0x906c
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_90ac equ 0x90ac
data_90ae equ 0x90ae
data_90b0 equ 0x90b0
data_90b2 equ 0x90b2
data_90b4 equ 0x90b4
data_90b6 equ 0x90b6
data_90b8 equ 0x90b8
data_90ba equ 0x90ba
data_90bc equ 0x90bc

    db 0x1e, 0x00, 0x1a, 0x00, 0x57, 0x87
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov word [data_90b6], 5          ; 0x0014
    mov word [data_90b8], 0          ; 0x001a
    mov word [data_90ba], 0          ; 0x0020
    mov word [data_90bc], 0          ; 0x0026
    cmp word [data_830a], byte 0x0a  ; 0x002c
    jne short @..local.l1            ; 0x0031
    call loc_33df                    ; 0x0033
@..local.l1:
    cmp word [data_830a], byte 0x0e  ; 0x0036
    jne short @..local.l2            ; 0x003b
    call api_idx_0056                ; 0x003d
@..local.l2:
    cmp word [data_830a], byte 0x0b  ; 0x0040
    jne short @..local.l3            ; 0x0045
    call api_idx_0002_2              ; 0x0047
@..local.l3:
    mov ax, 0                        ; 0x004a
    ret                              ; 0x004d
%include "vmele/api_idx_0008.asm"

%include "vmele/api_idx_0004.asm"

%include "vmele/api_idx_0008_2.asm"

%include "vmele/api_idx_000a.asm"

%include "vmele/api_idx_0004_2.asm"

%include "vmele/api_idx_000c.asm"

%include "vmele/api_idx_0004_3.asm"

%include "vmele/api_idx_00a8.asm"

%include "vmele/api_idx_005e.asm"

%include "vmele/api_idx_0008_3.asm"

@..api_idx_0008_3.l3:
    mov ax, word [bp + 0x6]          ; 0x086c
    shl ax, 1                        ; 0x086f
    mov bx, ax                       ; 0x0871
    mov bx, word [bx - 0x7b70]       ; 0x0873
    cmp word [bx + 0x7a], byte 0     ; 0x0877
    jle short @..api_idx_0008_3.l4   ; 0x087b
    dec word [bx + 0x7a]             ; 0x087d
@..api_idx_0008_3.l4:
    jmp short @..api_idx_0008_3.l7   ; 0x0880
@..api_idx_0008_3.l5:
    mov ax, word [bp + 0x6]          ; 0x0882
    shl ax, 1                        ; 0x0885
    mov bx, ax                       ; 0x0887
    mov bx, word [bx - 0x7b70]       ; 0x0889
    inc word [bx + 0x7a]             ; 0x088d
    jmp short @..api_idx_0008_3.l7   ; 0x0890
@..api_idx_0008_3.l6:
    cmp ax, strict word 1            ; 0x0892
    je short @..api_idx_0008_3.l3    ; 0x0895
    cmp ax, strict word 2            ; 0x0897
    je short @..api_idx_0008_3.l5    ; 0x089a
@..api_idx_0008_3.l7:
    mov ax, word [bp + 0x6]          ; 0x089c
    shl ax, 1                        ; 0x089f
    mov bx, ax                       ; 0x08a1
    mov cx, word [bx - 0x7b70]       ; 0x08a3
    add cx, byte 0x7a                ; 0x08a7
    sub sp, byte 4                   ; 0x08aa
    mov ax, sp                       ; 0x08ad
    mov dx, ss                       ; 0x08af
    mov es, dx                       ; 0x08b1
    mov si, cx                       ; 0x08b3
    mov di, ax                       ; 0x08b5
    movsw                            ; 0x08b7
    movsw                            ; 0x08b8
    call ds_dispatch_d0be            ; 0x08b9
    add sp, byte 4                   ; 0x08bc
    mov cx, word [bp + 0x6]          ; 0x08bf
    shl cx, 1                        ; 0x08c2
    mov bx, cx                       ; 0x08c4
    mov bx, word [bx - 0x7b7e]       ; 0x08c6
    mov byte [bx + 0x1a1], al        ; 0x08ca
    mov ax, word [bp + 0x6]          ; 0x08ce
    shl ax, 1                        ; 0x08d1
    mov bx, ax                       ; 0x08d3
    mov bx, word [bx - 0x7b7e]       ; 0x08d5
    cmp byte [bx + 0x1a1], 1         ; 0x08d9
    jae short @..api_idx_0008_3.l8   ; 0x08de
    mov byte [bx + 0x1a1], 1         ; 0x08e0
@..api_idx_0008_3.l8:
    mov ax, word [bp + 0x6]          ; 0x08e5
    shl ax, 1                        ; 0x08e8
    mov bx, ax                       ; 0x08ea
    mov bx, word [bx - 0x7b7e]       ; 0x08ec
    cmp byte [bx + 0x1a1], 9         ; 0x08f0
    jbe short @..api_idx_0008_3.l9   ; 0x08f5
    mov byte [bx + 0x1a1], 9         ; 0x08f7
@..api_idx_0008_3.l9:
    mov ax, word [bp + 0x6]          ; 0x08fc
    shl ax, 1                        ; 0x08ff
    mov bx, ax                       ; 0x0901
    mov bx, word [bx - 0x7b7e]       ; 0x0903
    mov byte [bx + 0x1a0], 1         ; 0x0907
    mov word [bp - 0x0002], 0        ; 0x090c
@..api_idx_0008_3.l10:
    mov ax, word [bp + 0x6]          ; 0x0911
    shl ax, 1                        ; 0x0914
    mov bx, ax                       ; 0x0916
    mov bx, word [bx - 0x7b7e]       ; 0x0918
    mov si, word [bp - 0x0002]       ; 0x091c
    mov byte [bx + si + 0x18c], 0    ; 0x091f
    inc word [bp - 0x0002]           ; 0x0924
    mov ax, word [bp - 0x0002]       ; 0x0927
    cmp ax, strict word 6            ; 0x092a
    jl short @..api_idx_0008_3.l10   ; 0x092d
    mov word [bp - 0x0002], 0        ; 0x092f
@..api_idx_0008_3.l11:
    mov ax, word [bp + 0x6]          ; 0x0934
    shl ax, 1                        ; 0x0937
    mov bx, ax                       ; 0x0939
    mov bx, word [bx - 0x7b7e]       ; 0x093b
    mov si, word [bp - 0x0002]       ; 0x093f
    mov byte [bx + si + 0x192], 0    ; 0x0942
    inc word [bp - 0x0002]           ; 0x0947
    mov ax, word [bp - 0x0002]       ; 0x094a
    cmp ax, strict word 6            ; 0x094d
    jl short @..api_idx_0008_3.l11   ; 0x0950
    cmp byte [data_5988], data_0002  ; 0x0952
    jne short @..api_idx_0008_3.l12  ; 0x0957
    mov ax, word [bp + 0x6]          ; 0x0959
    shl ax, 1                        ; 0x095c
    mov bx, ax                       ; 0x095e
    mov bx, word [bx - 0x7b70]       ; 0x0960
    inc byte [bx + 0x80]             ; 0x0964
@..api_idx_0008_3.l12:
    mov word [bp - 0x0002], 0        ; 0x0968
    jmp near @..api_idx_0008_3.l19   ; 0x096d
@..api_idx_0008_3.l13:
    mov ax, word [bp + 0x6]          ; 0x0970
    shl ax, 1                        ; 0x0973
    mov bx, ax                       ; 0x0975
    mov bx, word [bx - 0x7b70]       ; 0x0977
    mov al, byte [bx + 0x80]         ; 0x097b
    sub ah, ah                       ; 0x097f
    push ax                          ; 0x0981
    mov ax, 0x2c                     ; 0x0982
    imul word [bp - 0x0002]          ; 0x0985
    mov si, ax                       ; 0x0988
    mov ax, word [bp + 0x6]          ; 0x098a
    shl ax, 1                        ; 0x098d
    mov bx, ax                       ; 0x098f
    mov bx, word [bx - 0x7b7e]       ; 0x0991
    pop ax                           ; 0x0995
    mov word [bx + si], ax           ; 0x0996
    mov ax, word [bp + 0x6]          ; 0x0998
    shl ax, 1                        ; 0x099b
    mov bx, ax                       ; 0x099d
    mov cx, word [bx - 0x7b70]       ; 0x099f
    add cx, byte 0x7e                ; 0x09a3
    sub sp, byte 4                   ; 0x09a6
    mov ax, sp                       ; 0x09a9
    mov dx, ss                       ; 0x09ab
    mov es, dx                       ; 0x09ad
    mov si, cx                       ; 0x09af
    mov di, ax                       ; 0x09b1
    movsw                            ; 0x09b3
    movsw                            ; 0x09b4
    call ds_dispatch_d0be            ; 0x09b5
    add sp, byte 4                   ; 0x09b8
    push ax                          ; 0x09bb
    mov ax, 0x2c                     ; 0x09bc
    imul word [bp - 0x0002]          ; 0x09bf
    mov si, ax                       ; 0x09c2
    mov ax, word [bp + 0x6]          ; 0x09c4
    shl ax, 1                        ; 0x09c7
    mov bx, ax                       ; 0x09c9
    mov bx, word [bx - 0x7b7e]       ; 0x09cb
    pop ax                           ; 0x09cf
    mov word [bx + si + 0x4], ax     ; 0x09d0
    mov ax, 0x2c                     ; 0x09d3
    imul word [bp - 0x0002]          ; 0x09d6
    mov si, ax                       ; 0x09d9
    mov ax, word [bp + 0x6]          ; 0x09db
    shl ax, 1                        ; 0x09de
    mov bx, ax                       ; 0x09e0
    mov bx, word [bx - 0x7b7e]       ; 0x09e2
    mov ax, word [bx + si + 0x4]     ; 0x09e6
    mov word [bx + si + 0x2], ax     ; 0x09e9
    mov ax, word [bp + 0x6]          ; 0x09ec
    shl ax, 1                        ; 0x09ef
    mov bx, ax                       ; 0x09f1
    mov cx, word [bx - 0x7b70]       ; 0x09f3
    add cx, strict word 0x82         ; 0x09f7
    sub sp, byte 4                   ; 0x09fb
    mov ax, sp                       ; 0x09fe
    mov dx, ss                       ; 0x0a00
    mov es, dx                       ; 0x0a02
    mov si, cx                       ; 0x0a04
    mov di, ax                       ; 0x0a06
    movsw                            ; 0x0a08
    movsw                            ; 0x0a09
    call ds_dispatch_d0be            ; 0x0a0a
    add sp, byte 4                   ; 0x0a0d
    push ax                          ; 0x0a10
    mov ax, 0x2c                     ; 0x0a11
    imul word [bp - 0x0002]          ; 0x0a14
    mov si, ax                       ; 0x0a17
    mov ax, word [bp + 0x6]          ; 0x0a19
    shl ax, 1                        ; 0x0a1c
    mov bx, ax                       ; 0x0a1e
    mov bx, word [bx - 0x7b7e]       ; 0x0a20
    pop ax                           ; 0x0a24
    mov word [bx + si + 0x8], ax     ; 0x0a25
    mov ax, 0x2c                     ; 0x0a28
    imul word [bp - 0x0002]          ; 0x0a2b
    mov si, ax                       ; 0x0a2e
    mov ax, word [bp + 0x6]          ; 0x0a30
    shl ax, 1                        ; 0x0a33
    mov bx, ax                       ; 0x0a35
    mov bx, word [bx - 0x7b7e]       ; 0x0a37
    mov ax, word [bx + si + 0x8]     ; 0x0a3b
    mov word [bx + si + 0x6], ax     ; 0x0a3e
    mov ax, 0x2c                     ; 0x0a41
    imul word [bp - 0x0002]          ; 0x0a44
    mov si, ax                       ; 0x0a47
    mov ax, word [bp + 0x6]          ; 0x0a49
    shl ax, 1                        ; 0x0a4c
    mov bx, ax                       ; 0x0a4e
    mov bx, word [bx - 0x7b7e]       ; 0x0a50
    mov byte [bx + si + 0x2a], 0xff  ; 0x0a54
    mov al, byte [data_5988]         ; 0x0a58
    sub ah, ah                       ; 0x0a5b
    jmp near @..api_idx_0008_3.l16   ; 0x0a5d
@..api_idx_0008_3.l14:
    mov ax, 0x2c                     ; 0x0a60
    imul word [bp - 0x0002]          ; 0x0a63
    mov si, ax                       ; 0x0a66
    mov ax, word [bp + 0x6]          ; 0x0a68
    shl ax, 1                        ; 0x0a6b
    mov bx, ax                       ; 0x0a6d
    mov bx, word [bx - 0x7b7e]       ; 0x0a6f
    mov byte [bx + si + 0x26], data_0002 ; 0x0a73
    mov ax, 0x2c                     ; 0x0a77
    imul word [bp - 0x0002]          ; 0x0a7a
    mov si, ax                       ; 0x0a7d
    mov ax, word [bp + 0x6]          ; 0x0a7f
    shl ax, 1                        ; 0x0a82
    mov bx, ax                       ; 0x0a84
    mov bx, word [bx - 0x7b7e]       ; 0x0a86
    mov byte [bx + si + 0x27], data_0002 ; 0x0a8a
    mov ax, 0x2c                     ; 0x0a8e
    imul word [bp - 0x0002]          ; 0x0a91
    mov si, ax                       ; 0x0a94
    mov ax, word [bp + 0x6]          ; 0x0a96
    shl ax, 1                        ; 0x0a99
    mov bx, ax                       ; 0x0a9b
    mov bx, word [bx - 0x7b7e]       ; 0x0a9d
    mov byte [bx + si + 0x29], 0xfb  ; 0x0aa1
    jmp short @..api_idx_0008_3.l18  ; 0x0aa5
@..api_idx_0008_3.l15:
    mov ax, 0x2c                     ; 0x0aa7
    imul word [bp - 0x0002]          ; 0x0aaa
    mov si, ax                       ; 0x0aad
    mov ax, word [bp + 0x6]          ; 0x0aaf
    shl ax, 1                        ; 0x0ab2
    mov bx, ax                       ; 0x0ab4
    mov bx, word [bx - 0x7b7e]       ; 0x0ab6
    mov byte [bx + si + 0x26], 0xfe  ; 0x0aba
    mov ax, 0x2c                     ; 0x0abe
    imul word [bp - 0x0002]          ; 0x0ac1
    mov si, ax                       ; 0x0ac4
    mov ax, word [bp + 0x6]          ; 0x0ac6
    shl ax, 1                        ; 0x0ac9
    mov bx, ax                       ; 0x0acb
    mov bx, word [bx - 0x7b7e]       ; 0x0acd
    mov byte [bx + si + 0x27], 0xfe  ; 0x0ad1
    mov ax, 0x2c                     ; 0x0ad5
    imul word [bp - 0x0002]          ; 0x0ad8
    mov si, ax                       ; 0x0adb
    mov ax, word [bp + 0x6]          ; 0x0add
    shl ax, 1                        ; 0x0ae0
    mov bx, ax                       ; 0x0ae2
    mov bx, word [bx - 0x7b7e]       ; 0x0ae4
    mov byte [bx + si + 0x29], 5     ; 0x0ae8
    jmp short @..api_idx_0008_3.l18  ; 0x0aec
@..api_idx_0008_3.l16:
    cmp ax, strict word 1            ; 0x0aee
    jne short @..api_idx_0008_3.l17  ; 0x0af1
    jmp near @..api_idx_0008_3.l14   ; 0x0af3
@..api_idx_0008_3.l17:
    cmp ax, strict word 2            ; 0x0af6
    je short @..api_idx_0008_3.l15   ; 0x0af9
@..api_idx_0008_3.l18:
    inc word [bp - 0x0002]           ; 0x0afb
@..api_idx_0008_3.l19:
    mov ax, word [bp + 0x6]          ; 0x0afe
    shl ax, 1                        ; 0x0b01
    mov bx, ax                       ; 0x0b03
    mov bx, word [bx - 0x7b7e]       ; 0x0b05
    mov al, byte [bx + 0x1a1]        ; 0x0b09
    sub ah, ah                       ; 0x0b0d
    cmp ax, word [bp - 0x0002]       ; 0x0b0f
    jle short @..api_idx_0008_3.l20  ; 0x0b12
    jmp near @..api_idx_0008_3.l13   ; 0x0b14
@..api_idx_0008_3.l20:
    mov word [bp - 0x0006], 0        ; 0x0b17
    mov word [bp - 0x0002], 0        ; 0x0b1c
    jmp short @..api_idx_0008_3.l22  ; 0x0b21
@..api_idx_0008_3.l21:
    mov ax, 0x248                    ; 0x0b23
    imul word [bp - 0x0002]          ; 0x0b26
    mov bx, ax                       ; 0x0b29
    mov ax, word [bx + 0x5c18]       ; 0x0b2b
    add word [bp - 0x0006], ax       ; 0x0b2f
    inc word [bp - 0x0002]           ; 0x0b32
@..api_idx_0008_3.l22:
    mov ax, word [bp - 0x0002]       ; 0x0b35
    cmp ax, word [data_69c8]         ; 0x0b38
    jl short @..api_idx_0008_3.l21   ; 0x0b3c
    mov ax, word [bp - 0x0006]       ; 0x0b3e
    cwd                              ; 0x0b41
    idiv word [data_69c8]            ; 0x0b42
    inc ax                           ; 0x0b46
    mov cx, 3                        ; 0x0b47
    cwd                              ; 0x0b4a
    idiv cx                          ; 0x0b4b
    mov word [bp - 0x0006], ax       ; 0x0b4d
    cmp word [data_8452], byte 0     ; 0x0b50
    jle short @..api_idx_0008_3.l23  ; 0x0b55
    inc word [bp - 0x0006]           ; 0x0b57
@..api_idx_0008_3.l23:
    mov ax, 5                        ; 0x0b5a
    push ax                          ; 0x0b5d
    mov ax, 1                        ; 0x0b5e
    push ax                          ; 0x0b61
    push word [bp - 0x0006]          ; 0x0b62
    call ds_dispatch_b7c2            ; 0x0b65
    add sp, byte 6                   ; 0x0b68
    mov word [bp - 0x0006], ax       ; 0x0b6b
    mov ax, 0x96                     ; 0x0b6e
    cmp byte [data_5988], 1          ; 0x0b71
    je short @..api_idx_0008_3.l24   ; 0x0b76
    mov ax, 0x64                     ; 0x0b78
    cmp byte [data_5988], data_0002  ; 0x0b7b
    jne short @..api_idx_0008_3.l24  ; 0x0b80
    mov ax, 0x4b                     ; 0x0b82
@..api_idx_0008_3.l24:
    mov word [bp - 0x0004], ax       ; 0x0b85
    mov word [bp - 0x0008], 1        ; 0x0b88
    mov ax, word [bp + 0x6]          ; 0x0b8d
    cmp ax, word [bp - 0x0006]       ; 0x0b90
    jl short @..api_idx_0008_3.l25   ; 0x0b93
    jmp near @..api_idx_0008_3.l31   ; 0x0b95
@..api_idx_0008_3.l25:
    mov ax, 0x64                     ; 0x0b98
    push ax                          ; 0x0b9b
    call ds_dispatch_b7a9            ; 0x0b9c
    pop cx                           ; 0x0b9f
    cmp ax, strict word 0x19         ; 0x0ba0
    jle short @..api_idx_0008_3.l27  ; 0x0ba3
    push word [bp + 0x4]             ; 0x0ba5
    push word [bp - 0x0008]          ; 0x0ba8
    call api_idx_00a8                ; 0x0bab
    add sp, byte 4                   ; 0x0bae
    mov word [bp + 0x4], ax          ; 0x0bb1
    push word [bp - 0x0004]          ; 0x0bb4
    call ds_dispatch_b7a9            ; 0x0bb7
    pop cx                           ; 0x0bba
    push ax                          ; 0x0bbb
    mov ax, word [bp + 0x6]          ; 0x0bbc
    shl ax, 1                        ; 0x0bbf
    mov bx, ax                       ; 0x0bc1
    mov bx, word [bx - 0x7b70]       ; 0x0bc3
    mov al, byte [bx + 0xac]         ; 0x0bc7
    sub ah, ah                       ; 0x0bcb
    mov cx, ax                       ; 0x0bcd
    pop ax                           ; 0x0bcf
    cmp ax, cx                       ; 0x0bd0
    jle short @..api_idx_0008_3.l26  ; 0x0bd2
    mov word [bp + 0x4], 0xffff      ; 0x0bd4
@..api_idx_0008_3.l26:
    jmp short @..api_idx_0008_3.l28  ; 0x0bd9
@..api_idx_0008_3.l27:
    mov word [bp + 0x4], 0xffff      ; 0x0bdb
@..api_idx_0008_3.l28:
    mov word [bp - 0x0002], 0        ; 0x0be0
@..api_idx_0008_3.l29:
    cmp word [bp + 0x4], byte 0xff   ; 0x0be5
    jne short @..api_idx_0008_3.l30  ; 0x0be9
    mov ax, word [bp - 0x0008]       ; 0x0beb
    shl ax, 1                        ; 0x0bee
    mov bx, ax                       ; 0x0bf0
    mov bx, word [bx - 0x7b70]       ; 0x0bf2
    mov si, word [bp - 0x0002]       ; 0x0bf6
    cmp byte [bx + si + 0xac], 0     ; 0x0bf9
    jbe short @..api_idx_0008_3.l30  ; 0x0bfe
    mov ax, word [bp + 0x6]          ; 0x0c00
    shl ax, 1                        ; 0x0c03
    mov bx, ax                       ; 0x0c05
    mov bx, word [bx - 0x7b70]       ; 0x0c07
    cmp byte [bx + si + 0xac], 0     ; 0x0c0b
    jbe short @..api_idx_0008_3.l30  ; 0x0c10
    push word [bp - 0x0004]          ; 0x0c12
    call ds_dispatch_b7a9            ; 0x0c15
    pop cx                           ; 0x0c18
    push ax                          ; 0x0c19
    mov ax, word [bp + 0x6]          ; 0x0c1a
    shl ax, 1                        ; 0x0c1d
    mov bx, ax                       ; 0x0c1f
    mov bx, word [bx - 0x7b70]       ; 0x0c21
    mov si, word [bp - 0x0002]       ; 0x0c25
    mov al, byte [bx + si + 0xac]    ; 0x0c28
    sub ah, ah                       ; 0x0c2c
    mov cx, ax                       ; 0x0c2e
    pop ax                           ; 0x0c30
    cmp ax, cx                       ; 0x0c31
    jge short @..api_idx_0008_3.l30  ; 0x0c33
    mov ax, word [bp - 0x0008]       ; 0x0c35
    shl ax, 1                        ; 0x0c38
    mov bx, ax                       ; 0x0c3a
    mov bx, word [bx - 0x7b70]       ; 0x0c3c
    mov al, byte [bx + si + 0xaa]    ; 0x0c40
    sub ah, ah                       ; 0x0c44
    mov word [bp + 0x4], ax          ; 0x0c46
@..api_idx_0008_3.l30:
    inc word [bp - 0x0002]           ; 0x0c49
    cmp word [bp - 0x0002], byte 2   ; 0x0c4c
    jl short @..api_idx_0008_3.l29   ; 0x0c50
    cmp word [bp + 0x4], byte 0xff   ; 0x0c52
    je short @..api_idx_0008_3.l31   ; 0x0c56
    mov ax, word [bp + 0x6]          ; 0x0c58
    inc ax                           ; 0x0c5b
    push ax                          ; 0x0c5c
    push word [bp + 0x4]             ; 0x0c5d
    call api_idx_0008_3              ; 0x0c60
    add sp, byte 4                   ; 0x0c63
@..api_idx_0008_3.l31:
    ret                              ; 0x0c66
%include "vmele/api_idx_0004_4.asm"

    push ax                          ; 0x0e67
    mov ax, 0x248                    ; 0x0e68
    imul word [bp - 0x0002]          ; 0x0e6b
    mov bx, ax                       ; 0x0e6e
    mov al, byte [bx + 0x5d82]       ; 0x0e70
    sub ah, ah                       ; 0x0e74
    mov cx, 0xa                      ; 0x0e76
    cwd                              ; 0x0e79
    idiv cx                          ; 0x0e7a
    mov cx, ax                       ; 0x0e7c
    pop ax                           ; 0x0e7e
    add ax, cx                       ; 0x0e7f
    inc ax                           ; 0x0e81
    inc ax                           ; 0x0e82
    mov cx, word [bp - 0x0004]       ; 0x0e83
    shl cx, 1                        ; 0x0e86
    mov bx, cx                       ; 0x0e88
    mov bx, word [bx - 0x7b7e]       ; 0x0e8a
    mov byte [bx + si + 0x28], al    ; 0x0e8e
@..api_idx_0004_4.l5:
    mov ax, 0x248                    ; 0x0e91
    imul word [bp - 0x0002]          ; 0x0e94
    mov bx, ax                       ; 0x0e97
    cmp byte [bx + 0x5d7f], 0        ; 0x0e99
    jbe short @..api_idx_0004_4.l6   ; 0x0e9e
    mov ax, 0x2c                     ; 0x0ea0
    imul word [bp - 0x0002]          ; 0x0ea3
    mov si, ax                       ; 0x0ea6
    mov ax, word [bp - 0x0004]       ; 0x0ea8
    shl ax, 1                        ; 0x0eab
    mov bx, ax                       ; 0x0ead
    mov bx, word [bx - 0x7b7e]       ; 0x0eaf
    mov al, byte [bx + si + 0x26]    ; 0x0eb3
    cbw                              ; 0x0eb6
    push ax                          ; 0x0eb7
    mov ax, 0x248                    ; 0x0eb8
    imul word [bp - 0x0002]          ; 0x0ebb
    mov bx, ax                       ; 0x0ebe
    mov al, byte [bx + 0x5d7f]       ; 0x0ec0
    sub ah, ah                       ; 0x0ec4
    mov cx, 0xf                      ; 0x0ec6
    cwd                              ; 0x0ec9
    idiv cx                          ; 0x0eca
    mov cx, ax                       ; 0x0ecc
    inc ax                           ; 0x0ece
    inc ax                           ; 0x0ecf
    mov cx, ax                       ; 0x0ed0
    pop ax                           ; 0x0ed2
    sub ax, cx                       ; 0x0ed3
    mov cx, word [bp - 0x0004]       ; 0x0ed5
    shl cx, 1                        ; 0x0ed8
    mov bx, cx                       ; 0x0eda
    mov bx, word [bx - 0x7b7e]       ; 0x0edc
    mov byte [bx + si + 0x26], al    ; 0x0ee0
@..api_idx_0004_4.l6:
    mov ax, 0x248                    ; 0x0ee3
    imul word [bp - 0x0002]          ; 0x0ee6
    mov bx, ax                       ; 0x0ee9
    cmp byte [bx + 0x5d81], 0        ; 0x0eeb
    jbe short @..api_idx_0004_4.l7   ; 0x0ef0
    mov ax, 0x2c                     ; 0x0ef2
    imul word [bp - 0x0002]          ; 0x0ef5
    mov si, ax                       ; 0x0ef8
    mov ax, word [bp - 0x0004]       ; 0x0efa
    shl ax, 1                        ; 0x0efd
    mov bx, ax                       ; 0x0eff
    mov bx, word [bx - 0x7b7e]       ; 0x0f01
    mov al, byte [bx + si + 0x27]    ; 0x0f05
    cbw                              ; 0x0f08
    push ax                          ; 0x0f09
    mov ax, 0x248                    ; 0x0f0a
    imul word [bp - 0x0002]          ; 0x0f0d
    mov bx, ax                       ; 0x0f10
    mov al, byte [bx + 0x5d81]       ; 0x0f12
    sub ah, ah                       ; 0x0f16
    mov cx, 0xf                      ; 0x0f18
    cwd                              ; 0x0f1b
    idiv cx                          ; 0x0f1c
    mov cx, ax                       ; 0x0f1e
    inc ax                           ; 0x0f20
    inc ax                           ; 0x0f21
    mov cx, ax                       ; 0x0f22
    pop ax                           ; 0x0f24
    sub ax, cx                       ; 0x0f25
    mov cx, word [bp - 0x0004]       ; 0x0f27
    shl cx, 1                        ; 0x0f2a
    mov bx, cx                       ; 0x0f2c
    mov bx, word [bx - 0x7b7e]       ; 0x0f2e
    mov byte [bx + si + 0x27], al    ; 0x0f32
@..api_idx_0004_4.l7:
    mov ax, 0x248                    ; 0x0f35
    imul word [bp - 0x0002]          ; 0x0f38
    mov bx, ax                       ; 0x0f3b
    cmp byte [bx + 0x5d80], 0        ; 0x0f3d
    jbe short @..api_idx_0004_4.l8   ; 0x0f42
    mov ax, 0x2c                     ; 0x0f44
    imul word [bp - 0x0002]          ; 0x0f47
    mov si, ax                       ; 0x0f4a
    mov ax, word [bp - 0x0004]       ; 0x0f4c
    shl ax, 1                        ; 0x0f4f
    mov bx, ax                       ; 0x0f51
    mov bx, word [bx - 0x7b7e]       ; 0x0f53
    mov al, byte [bx + si + 0x29]    ; 0x0f57
    cbw                              ; 0x0f5a
    push ax                          ; 0x0f5b
    mov ax, 0x248                    ; 0x0f5c
    imul word [bp - 0x0002]          ; 0x0f5f
    mov bx, ax                       ; 0x0f62
    mov al, byte [bx + 0x5d80]       ; 0x0f64
    sub ah, ah                       ; 0x0f68
    mov cx, 0xa                      ; 0x0f6a
    cwd                              ; 0x0f6d
    idiv cx                          ; 0x0f6e
    mov cx, ax                       ; 0x0f70
    pop ax                           ; 0x0f72
    add ax, cx                       ; 0x0f73
    inc ax                           ; 0x0f75
    inc ax                           ; 0x0f76
    mov cx, word [bp - 0x0004]       ; 0x0f77
    shl cx, 1                        ; 0x0f7a
    mov bx, cx                       ; 0x0f7c
    mov bx, word [bx - 0x7b7e]       ; 0x0f7e
    mov byte [bx + si + 0x29], al    ; 0x0f82
@..api_idx_0004_4.l8:
    inc word [bp - 0x0002]           ; 0x0f85
@..api_idx_0004_4.l9:
    mov ax, word [bp - 0x0002]       ; 0x0f88
    cmp ax, word [data_69c8]         ; 0x0f8b
    jge short @..api_idx_0004_4.l10  ; 0x0f8f
    jmp near @..api_idx_0004_4.l4    ; 0x0f91
@..api_idx_0004_4.l10:
    ret                              ; 0x0f94
%include "vmele/api_idx_000a_2.asm"

@..api_idx_000a_2.l3:
    mov ax, 0x15e                    ; 0x0ff4
    imul word [bp - 0x0002]          ; 0x0ff7
    add ax, word [bp - 0x0004]       ; 0x0ffa
    mov bx, ax                       ; 0x0ffd
    mov al, byte [bx + 0x6a22]       ; 0x0fff
    sub ah, ah                       ; 0x1003
    mov word [bp - 0x0006], ax       ; 0x1005
    cmp word [bp + 0xa], byte 0      ; 0x1008
    je short @..api_idx_000a_2.l4    ; 0x100c
    jmp near @..api_idx_000a_2.l8    ; 0x100e
@..api_idx_000a_2.l4:
    mov ax, 0x15e                    ; 0x1011
    imul word [bp - 0x0002]          ; 0x1014
    mov bx, ax                       ; 0x1017
    cmp byte [bx + 0x6b75], 0        ; 0x1019
    jbe short @..api_idx_000a_2.l8   ; 0x101e
    mov al, byte [bx + 0x6b75]       ; 0x1020
    sub ah, ah                       ; 0x1024
    cmp ax, 0xfe                     ; 0x1026
    jge short @..api_idx_000a_2.l8   ; 0x1029
    cmp ax, 0xfd                     ; 0x102b
    jne short @..api_idx_000a_2.l5   ; 0x102e
    mov word [bp - 0x0006], 0        ; 0x1030
    mov word [bp - 0x0008], 0        ; 0x1035
    jmp short @..api_idx_000a_2.l7   ; 0x103a
@..api_idx_000a_2.l5:
    mov word [bp - 0x0008], ax       ; 0x103c
    mov ax, word [bp + 0x4]          ; 0x103f
    shl ax, 1                        ; 0x1042
    mov bx, ax                       ; 0x1044
    mov bx, word [bx - 0x7b70]       ; 0x1046
    cmp byte [bx + 0xd7], 0x47       ; 0x104a
    jne short @..api_idx_000a_2.l7   ; 0x104f
    cmp word [data_90ba], byte 1     ; 0x1051
    jne short @..api_idx_000a_2.l6   ; 0x1056
    mov ax, word [data_8460]         ; 0x1058
    mov cx, 0x100                    ; 0x105b
    cwd                              ; 0x105e
    idiv cx                          ; 0x105f
    mov word [bp - 0x0006], ax       ; 0x1061
    mov word [bp - 0x0008], dx       ; 0x1064
    jmp short @..api_idx_000a_2.l7   ; 0x1067
@..api_idx_000a_2.l6:
    cmp word [bp - 0x000a], byte 0   ; 0x1069
    jne short @..api_idx_000a_2.l7   ; 0x106d
    mov word [bp - 0x0006], 1        ; 0x106f
    mov word [bp - 0x0008], 0xb      ; 0x1074
@..api_idx_000a_2.l7:
    jmp short @..api_idx_000a_2.l9   ; 0x1079
@..api_idx_000a_2.l8:
    mov ax, 0x15e                    ; 0x107b
    imul word [bp - 0x0002]          ; 0x107e
    add ax, word [bp - 0x0004]       ; 0x1081
    mov bx, ax                       ; 0x1084
    mov al, byte [bx + 0x6a2c]       ; 0x1086
    sub ah, ah                       ; 0x108a
    push ax                          ; 0x108c
    call ds_dispatch_b7a9            ; 0x108d
    pop cx                           ; 0x1090
    add word [bp - 0x0006], ax       ; 0x1091
    mov ax, 0x15e                    ; 0x1094
    imul word [bp - 0x0002]          ; 0x1097
    add ax, word [bp - 0x0006]       ; 0x109a
    mov bx, ax                       ; 0x109d
    mov al, byte [bx + 0x6a40]       ; 0x109f
    sub ah, ah                       ; 0x10a3
    mov word [bp - 0x0008], ax       ; 0x10a5
    cmp word [bp - 0x000a], byte 0   ; 0x10a8
    je short @..api_idx_000a_2.l9    ; 0x10ac
    mov al, byte [bx + 0x6a4a]       ; 0x10ae
    sub ah, ah                       ; 0x10b2
    push ax                          ; 0x10b4
    call ds_dispatch_b7a9            ; 0x10b5
    pop cx                           ; 0x10b8
    add word [bp - 0x0008], ax       ; 0x10b9
@..api_idx_000a_2.l9:
    mov al, byte [bp + 0xa]          ; 0x10bc
    push ax                          ; 0x10bf
    mov ax, 3                        ; 0x10c0
    imul word [bp + 0x6]             ; 0x10c3
    mov cx, ax                       ; 0x10c6
    add ax, word [bp + 0x8]          ; 0x10c8
    mov bx, ax                       ; 0x10cb
    pop ax                           ; 0x10cd
    mov byte [bx - 0x7bd0], al       ; 0x10ce
    mov al, byte [bp - 0x0006]       ; 0x10d2
    push ax                          ; 0x10d5
    mov ax, 0x5a                     ; 0x10d6
    imul word [bp + 0x6]             ; 0x10d9
    mov cx, ax                       ; 0x10dc
    mov ax, 0x1e                     ; 0x10de
    imul word [bp + 0x8]             ; 0x10e1
    mov dx, ax                       ; 0x10e4
    add cx, ax                       ; 0x10e6
    mov ax, 3                        ; 0x10e8
    imul word [bp - 0x0004]          ; 0x10eb
    mov dx, ax                       ; 0x10ee
    add cx, ax                       ; 0x10f0
    mov bx, cx                       ; 0x10f2
    pop ax                           ; 0x10f4
    mov byte [bx - 0x7cde], al       ; 0x10f5
    mov al, byte [bp - 0x0008]       ; 0x10f9
    mov byte [bx - 0x7cdd], al       ; 0x10fc
    mov ax, 0x15e                    ; 0x1100
    imul word [bp - 0x0002]          ; 0x1103
    mov cx, word [bp - 0x0008]       ; 0x1106
    shl cx, 1                        ; 0x1109
    shl cx, 1                        ; 0x110b
    add ax, cx                       ; 0x110d
    mov bx, ax                       ; 0x110f
    mov al, byte [bx + 0x6ac1]       ; 0x1111
    inc al                           ; 0x1115
    push ax                          ; 0x1117
    mov ax, 0x5a                     ; 0x1118
    imul word [bp + 0x6]             ; 0x111b
    mov cx, ax                       ; 0x111e
    mov ax, 0x1e                     ; 0x1120
    imul word [bp + 0x8]             ; 0x1123
    mov dx, ax                       ; 0x1126
    add cx, ax                       ; 0x1128
    mov ax, 3                        ; 0x112a
    imul word [bp - 0x0004]          ; 0x112d
    mov dx, ax                       ; 0x1130
    add cx, ax                       ; 0x1132
    mov bx, cx                       ; 0x1134
    pop ax                           ; 0x1136
    mov byte [bx - 0x7cdc], al       ; 0x1137
    mov al, byte [bx - 0x7cdc]       ; 0x113b
    sub ah, ah                       ; 0x113f
    mov cx, ax                       ; 0x1141
    push cx                          ; 0x1143
    mov ax, 0x15e                    ; 0x1144
    imul word [bp - 0x0002]          ; 0x1147
    mov cx, word [bp - 0x0008]       ; 0x114a
    shl cx, 1                        ; 0x114d
    shl cx, 1                        ; 0x114f
    add ax, cx                       ; 0x1151
    mov bx, ax                       ; 0x1153
    mov al, byte [bx + 0x6ac2]       ; 0x1155
    sub ah, ah                       ; 0x1159
    push ax                          ; 0x115b
    call ds_dispatch_b7a9            ; 0x115c
    pop cx                           ; 0x115f
    pop cx                           ; 0x1160
    add ax, cx                       ; 0x1161
    push ax                          ; 0x1163
    mov ax, 0x5a                     ; 0x1164
    imul word [bp + 0x6]             ; 0x1167
    mov cx, ax                       ; 0x116a
    mov ax, 0x1e                     ; 0x116c
    imul word [bp + 0x8]             ; 0x116f
    mov dx, ax                       ; 0x1172
    add cx, ax                       ; 0x1174
    mov ax, 3                        ; 0x1176
    imul word [bp - 0x0004]          ; 0x1179
    mov dx, ax                       ; 0x117c
    add cx, ax                       ; 0x117e
    mov bx, cx                       ; 0x1180
    pop ax                           ; 0x1182
    mov byte [bx - 0x7cdc], al       ; 0x1183
    inc word [bp - 0x0004]           ; 0x1187
@..api_idx_000a_2.l10:
    mov ax, 0x15e                    ; 0x118a
    imul word [bp - 0x0002]          ; 0x118d
    add ax, word [bp + 0xa]          ; 0x1190
    mov bx, ax                       ; 0x1193
    mov al, byte [bx + 0x6a1a]       ; 0x1195
    sub ah, ah                       ; 0x1199
    push ax                          ; 0x119b
    mov al, byte [bx + 0x6a1e]       ; 0x119c
    sub ah, ah                       ; 0x11a0
    mov cx, ax                       ; 0x11a2
    pop ax                           ; 0x11a4
    add ax, cx                       ; 0x11a5
    cmp ax, word [bp - 0x0004]       ; 0x11a7
    jle short @..api_idx_000a_2.l11  ; 0x11aa
    jmp near @..api_idx_000a_2.l3    ; 0x11ac
@..api_idx_000a_2.l11:
    ret                              ; 0x11af
%include "vmele/api_idx_000c_2.asm"

%include "vmele/api_idx_000e.asm"

%include "vmele/api_idx_005c.asm"

%include "vmele/math_loc_16d1.asm"

%include "vmele/api_idx_0006.asm"

%include "vmele/api_idx_0004_5.asm"

%include "vmele/api_idx_0014.asm"

%include "vmele/math_loc_1a16.asm"

    mov ax, word [bp - 0x0002]       ; 0x1c15
    shl ax, 1                        ; 0x1c18
    mov bx, ax                       ; 0x1c1a
    add bx, bp                       ; 0x1c1c
    mov word [bx - 0x001c], 0        ; 0x1c1e
@..math_loc_1a16.l13:
    inc word [bp - 0x0002]           ; 0x1c23
@..math_loc_1a16.l14:
    mov ax, word [bp - 0x0002]       ; 0x1c26
    cmp ax, word [data_8466]         ; 0x1c29
    jg short @..math_loc_1a16.l15    ; 0x1c2d
    jmp near @..math_loc_1a16.l1     ; 0x1c2f
@..math_loc_1a16.l15:
    mov ax, word [data_8466]         ; 0x1c32
    mov word [bp - 0x0002], ax       ; 0x1c35
    jmp near @..math_loc_1a16.l33    ; 0x1c38
@..math_loc_1a16.l16:
    mov ax, word [bp - 0x0002]       ; 0x1c3b
    shl ax, 1                        ; 0x1c3e
    mov bx, ax                       ; 0x1c40
    add bx, bp                       ; 0x1c42
    push word [bx - 0x001c]          ; 0x1c44
    call ds_dispatch_b7a9            ; 0x1c47
    pop cx                           ; 0x1c4a
    push ax                          ; 0x1c4b
    mov ax, word [bp - 0x0002]       ; 0x1c4c
    shl ax, 1                        ; 0x1c4f
    mov bx, ax                       ; 0x1c51
    add bx, bp                       ; 0x1c53
    push word [bx - 0x001e]          ; 0x1c55
    call ds_dispatch_b7a9            ; 0x1c58
    pop cx                           ; 0x1c5b
    mov cx, ax                       ; 0x1c5c
    pop ax                           ; 0x1c5e
    cmp ax, cx                       ; 0x1c5f
    jg short @..math_loc_1a16.l17    ; 0x1c61
    jmp near @..math_loc_1a16.l32    ; 0x1c63
@..math_loc_1a16.l17:
    mov ax, 1                        ; 0x1c66
    push ax                          ; 0x1c69
    call api_idx_000a                ; 0x1c6a
    pop cx                           ; 0x1c6d
    mov ax, 1                        ; 0x1c6e
    push ax                          ; 0x1c71
    call api_idx_0004                ; 0x1c72
    pop cx                           ; 0x1c75
    mov ax, word [bp - 0x0002]       ; 0x1c76
    shl ax, 1                        ; 0x1c79
    mov bx, ax                       ; 0x1c7b
    mov bx, word [bx - 0x7b7e]       ; 0x1c7d
    cmp byte [bx + 0x1a1], 1         ; 0x1c81
    jne short @..math_loc_1a16.l18   ; 0x1c86
    mov ax, 0                        ; 0x1c88
    jmp short @..math_loc_1a16.l19   ; 0x1c8b
@..math_loc_1a16.l18:
    mov ax, 1                        ; 0x1c8d
@..math_loc_1a16.l19:
    mov cx, 4                        ; 0x1c90
    shl ax, cl                       ; 0x1c93
    mov cx, ax                       ; 0x1c95
    push cx                          ; 0x1c97
    mov al, byte [bx + 0x1a0]        ; 0x1c98
    sub ah, ah                       ; 0x1c9c
    mov cx, 5                        ; 0x1c9e
    shl ax, cl                       ; 0x1ca1
    pop cx                           ; 0x1ca3
    add cx, ax                       ; 0x1ca4
    mov ax, word [bp - 0x0002]       ; 0x1ca6
    shl ax, 1                        ; 0x1ca9
    mov bx, ax                       ; 0x1cab
    mov ax, word [bx - 0x7b70]       ; 0x1cad
    add ax, cx                       ; 0x1cb1
    push ax                          ; 0x1cb3
    lea ax, word [bp - 0x006c]       ; 0x1cb4
    push ax                          ; 0x1cb7
    call ds_dispatch_f364            ; 0x1cb8
    add sp, byte 4                   ; 0x1cbb
    lea ax, word [bp - 0x006c]       ; 0x1cbe
    push ax                          ; 0x1cc1
    call api_idx_0004_2              ; 0x1cc2
    pop cx                           ; 0x1cc5
    lea ax, word [bp - 0x006c]       ; 0x1cc6
    push ax                          ; 0x1cc9
    call ds_dispatch_fa90            ; 0x1cca
    pop cx                           ; 0x1ccd
    mov word [bp - 0x000a], ax       ; 0x1cce
    mov bx, ax                       ; 0x1cd1
    add bx, bp                       ; 0x1cd3
    mov byte [bx - 0x006c], 0x20     ; 0x1cd5
    lea cx, word [bp - 0x006b]       ; 0x1cd9
    add ax, cx                       ; 0x1cdc
    push ax                          ; 0x1cde
    mov ax, word [bp - 0x0002]       ; 0x1cdf
    shl ax, 1                        ; 0x1ce2
    mov bx, ax                       ; 0x1ce4
    mov bx, word [bx - 0x7b7e]       ; 0x1ce6
    cmp byte [bx + 0x1a1], 1         ; 0x1cea
    jne short @..math_loc_1a16.l20   ; 0x1cef
    mov ax, 0xdb6                    ; 0x1cf1
    jmp short @..math_loc_1a16.l21   ; 0x1cf4
@..math_loc_1a16.l20:
    mov ax, 0xdb7                    ; 0x1cf6
@..math_loc_1a16.l21:
    push ax                          ; 0x1cf9
    call ds_dispatch_b53b            ; 0x1cfa
    add sp, byte 4                   ; 0x1cfd
    mov ax, 0x11                     ; 0x1d00
    push ax                          ; 0x1d03
    lea ax, word [bp - 0x006c]       ; 0x1d04
    push ax                          ; 0x1d07
    call api_idx_000c                ; 0x1d08
    add sp, byte 4                   ; 0x1d0b
    mov word [bp - 0x0004], 0        ; 0x1d0e
    jmp short @..math_loc_1a16.l24   ; 0x1d13
@..math_loc_1a16.l22:
    mov ax, 0x2c                     ; 0x1d15
    imul word [bp - 0x0004]          ; 0x1d18
    mov si, ax                       ; 0x1d1b
    mov ax, word [bp - 0x0002]       ; 0x1d1d
    shl ax, 1                        ; 0x1d20
    mov bx, ax                       ; 0x1d22
    mov bx, word [bx - 0x7b80]       ; 0x1d24
    cmp byte [bx + si + 0x2a], 0xff  ; 0x1d28
    je short @..math_loc_1a16.l23    ; 0x1d2c
    mov al, byte [bx + si + 0x2a]    ; 0x1d2e
    cbw                              ; 0x1d31
    mov cx, 0xa                      ; 0x1d32
    cwd                              ; 0x1d35
    idiv cx                          ; 0x1d36
    mov word [bp - 0x0006], ax       ; 0x1d38
    mov al, byte [bx + si + 0x2a]    ; 0x1d3b
    cbw                              ; 0x1d3e
    cwd                              ; 0x1d3f
    idiv cx                          ; 0x1d40
    mov word [bp - 0x0008], dx       ; 0x1d42
    mov ax, 6                        ; 0x1d45
    imul word [bp - 0x0006]          ; 0x1d48
    mov cx, word [bp - 0x0008]       ; 0x1d4b
    shl cx, 1                        ; 0x1d4e
    add ax, cx                       ; 0x1d50
    mov bx, ax                       ; 0x1d52
    mov word [bx - 0x6f42], 1        ; 0x1d54
@..math_loc_1a16.l23:
    inc word [bp - 0x0004]           ; 0x1d5a
@..math_loc_1a16.l24:
    mov ax, word [bp - 0x0002]       ; 0x1d5d
    shl ax, 1                        ; 0x1d60
    mov bx, ax                       ; 0x1d62
    mov bx, word [bx - 0x7b80]       ; 0x1d64
    mov al, byte [bx + 0x1a1]        ; 0x1d68
    sub ah, ah                       ; 0x1d6c
    cmp ax, word [bp - 0x0004]       ; 0x1d6e
    jg short @..math_loc_1a16.l22    ; 0x1d71
    mov ax, 1                        ; 0x1d73
    push ax                          ; 0x1d76
    call api_idx_005a                ; 0x1d77
    pop cx                           ; 0x1d7a
    mov word [bp - 0x0004], 0        ; 0x1d7b
    jmp short @..math_loc_1a16.l27   ; 0x1d80
@..math_loc_1a16.l25:
    mov ax, 0x2c                     ; 0x1d82
    imul word [bp - 0x0004]          ; 0x1d85
    mov si, ax                       ; 0x1d88
    mov ax, word [bp - 0x0002]       ; 0x1d8a
    shl ax, 1                        ; 0x1d8d
    mov bx, ax                       ; 0x1d8f
    mov bx, word [bx - 0x7b80]       ; 0x1d91
    cmp byte [bx + si + 0x2a], 0xff  ; 0x1d95
    je short @..math_loc_1a16.l26    ; 0x1d99
    mov al, byte [bx + si + 0x2a]    ; 0x1d9b
    cbw                              ; 0x1d9e
    mov cx, 0xa                      ; 0x1d9f
    cwd                              ; 0x1da2
    idiv cx                          ; 0x1da3
    mov word [bp - 0x0006], ax       ; 0x1da5
    mov al, byte [bx + si + 0x2a]    ; 0x1da8
    cbw                              ; 0x1dab
    cwd                              ; 0x1dac
    idiv cx                          ; 0x1dad
    mov word [bp - 0x0008], dx       ; 0x1daf
    mov ax, 6                        ; 0x1db2
    imul word [bp - 0x0006]          ; 0x1db5
    mov cx, word [bp - 0x0008]       ; 0x1db8
    shl cx, 1                        ; 0x1dbb
    add ax, cx                       ; 0x1dbd
    mov bx, ax                       ; 0x1dbf
    mov word [bx - 0x7bc6], 0        ; 0x1dc1
    mov ax, word [bp - 0x0002]       ; 0x1dc7
    shl ax, 1                        ; 0x1dca
    mov bx, ax                       ; 0x1dcc
    mov bx, word [bx - 0x7b80]       ; 0x1dce
    mov byte [bx + si + 0x2a], 0xff  ; 0x1dd2
@..math_loc_1a16.l26:
    inc word [bp - 0x0004]           ; 0x1dd6
@..math_loc_1a16.l27:
    mov ax, word [bp - 0x0002]       ; 0x1dd9
    shl ax, 1                        ; 0x1ddc
    mov bx, ax                       ; 0x1dde
    mov bx, word [bx - 0x7b80]       ; 0x1de0
    mov al, byte [bx + 0x1a1]        ; 0x1de4
    sub ah, ah                       ; 0x1de8
    cmp ax, word [bp - 0x0004]       ; 0x1dea
    jg short @..math_loc_1a16.l25    ; 0x1ded
    call loc_2cc7                    ; 0x1def
    mov ax, word [bp - 0x0002]       ; 0x1df2
    shl ax, 1                        ; 0x1df5
    mov bx, ax                       ; 0x1df7
    add bx, bp                       ; 0x1df9
    mov ax, word [bx - 0x001c]       ; 0x1dfb
    mov word [bp - 0x0006], ax       ; 0x1dfe
    mov ax, word [bx - 0x001e]       ; 0x1e01
    mov word [bx - 0x001c], ax       ; 0x1e04
    mov ax, word [bp - 0x0006]       ; 0x1e07
    mov word [bx - 0x001e], ax       ; 0x1e0a
    mov ax, 0x1a4                    ; 0x1e0d
    push ax                          ; 0x1e10
    mov ax, word [bp - 0x0002]       ; 0x1e11
    shl ax, 1                        ; 0x1e14
    mov bx, ax                       ; 0x1e16
    push word [bx - 0x7b80]          ; 0x1e18
    push word [bx - 0x7b7e]          ; 0x1e1c
    call string_loc_374e             ; 0x1e20
    add sp, byte 6                   ; 0x1e23
    mov ax, 0xe8                     ; 0x1e26
    push ax                          ; 0x1e29
    mov ax, word [bp - 0x0002]       ; 0x1e2a
    shl ax, 1                        ; 0x1e2d
    mov bx, ax                       ; 0x1e2f
    push word [bx - 0x7b72]          ; 0x1e31
    push word [bx - 0x7b70]          ; 0x1e35
    call string_loc_374e             ; 0x1e39
    add sp, byte 6                   ; 0x1e3c
    mov word [bp - 0x000e], 0        ; 0x1e3f
    jmp short @..math_loc_1a16.l31   ; 0x1e44
@..math_loc_1a16.l28:
    mov ax, 0x2c                     ; 0x1e46
    imul word [bp - 0x000e]          ; 0x1e49
    mov si, ax                       ; 0x1e4c
    mov bx, word [data_8482]         ; 0x1e4e
    mov al, byte [bx + si + 0x1f]    ; 0x1e52
    sub ah, ah                       ; 0x1e55
    cmp ax, word [bp - 0x0002]       ; 0x1e57
    jne short @..math_loc_1a16.l29   ; 0x1e5a
    mov ax, word [bp - 0x0002]       ; 0x1e5c
    dec ax                           ; 0x1e5f
    mov byte [bx + si + 0x1f], al    ; 0x1e60
    jmp short @..math_loc_1a16.l30   ; 0x1e63
@..math_loc_1a16.l29:
    mov ax, 0x2c                     ; 0x1e65
    imul word [bp - 0x000e]          ; 0x1e68
    mov si, ax                       ; 0x1e6b
    mov bx, word [data_8482]         ; 0x1e6d
    mov al, byte [bx + si + 0x1f]    ; 0x1e71
    sub ah, ah                       ; 0x1e74
    mov cx, word [bp - 0x0002]       ; 0x1e76
    dec cx                           ; 0x1e79
    cmp ax, cx                       ; 0x1e7a
    jne short @..math_loc_1a16.l30   ; 0x1e7c
    mov al, byte [bp - 0x0002]       ; 0x1e7e
    mov byte [bx + si + 0x1f], al    ; 0x1e81
@..math_loc_1a16.l30:
    inc word [bp - 0x000e]           ; 0x1e84
@..math_loc_1a16.l31:
    mov ax, word [bp - 0x000e]       ; 0x1e87
    cmp ax, word [data_69c8]         ; 0x1e8a
    jl short @..math_loc_1a16.l28    ; 0x1e8e
    call api_idx_0004_5              ; 0x1e90
    mov ax, word [bp - 0x0002]       ; 0x1e93
    dec ax                           ; 0x1e96
    push ax                          ; 0x1e97
    call api_idx_000c_2              ; 0x1e98
    pop cx                           ; 0x1e9b
    call api_idx_000c_3              ; 0x1e9c
    mov ax, 0                        ; 0x1e9f
    push ax                          ; 0x1ea2
    call api_idx_005a                ; 0x1ea3
    pop cx                           ; 0x1ea6
@..math_loc_1a16.l32:
    dec word [bp - 0x0002]           ; 0x1ea7
@..math_loc_1a16.l33:
    cmp word [bp - 0x0002], byte 2   ; 0x1eaa
    jl short @..math_loc_1a16.l34    ; 0x1eae
    jmp near @..math_loc_1a16.l16    ; 0x1eb0
@..math_loc_1a16.l34:
    ret                              ; 0x1eb3
%include "vmele/math_loc_1eb4.asm"

%include "vmele/math_loc_1f39.asm"

%include "vmele/api_idx_000e_2.asm"

@..api_idx_000e_2.l2:
    mov ax, 0x2c                     ; 0x218e
    imul word [bp + 0x6]             ; 0x2191
    mov si, ax                       ; 0x2194
    mov ax, word [bp + 0x4]          ; 0x2196
    shl ax, 1                        ; 0x2199
    mov bx, ax                       ; 0x219b
    mov bx, word [bx - 0x7b7e]       ; 0x219d
    cmp byte [bx + si + 0x22], data_0002 ; 0x21a1
    je short @..api_idx_000e_2.l3    ; 0x21a5
    cmp byte [bx + si + 0x11], 0     ; 0x21a7
    ja short @..api_idx_000e_2.l3    ; 0x21ab
    cmp byte [bx + si + 0x10], 0     ; 0x21ad
    jbe short @..api_idx_000e_2.l4   ; 0x21b1
@..api_idx_000e_2.l3:
    mov ax, 0x5a                     ; 0x21b3
    imul word [bp + 0x8]             ; 0x21b6
    push ax                          ; 0x21b9
    mov ax, 0x1e                     ; 0x21ba
    imul word [bp + 0xa]             ; 0x21bd
    mov cx, ax                       ; 0x21c0
    pop ax                           ; 0x21c2
    add ax, cx                       ; 0x21c3
    push ax                          ; 0x21c5
    mov ax, 3                        ; 0x21c6
    imul word [bp - 0x0004]          ; 0x21c9
    mov cx, ax                       ; 0x21cc
    pop ax                           ; 0x21ce
    add ax, cx                       ; 0x21cf
    mov bx, ax                       ; 0x21d1
    mov al, byte [bx - 0x7cde]       ; 0x21d3
    sub ah, ah                       ; 0x21d7
    mov word [bp - 0x0006], ax       ; 0x21d9
    mov ax, 0x15e                    ; 0x21dc
    imul word [bp - 0x0002]          ; 0x21df
    mov cx, ax                       ; 0x21e2
    mov ax, word [bp - 0x0006]       ; 0x21e4
    add cx, ax                       ; 0x21e7
    mov bx, cx                       ; 0x21e9
    mov al, byte [bx + 0x6a40]       ; 0x21eb
    sub ah, ah                       ; 0x21ef
    mov word [bp - 0x0008], ax       ; 0x21f1
    jmp near @..api_idx_000e_2.l11   ; 0x21f4
@..api_idx_000e_2.l4:
    mov ax, 0x5a                     ; 0x21f7
    imul word [bp + 0x8]             ; 0x21fa
    push ax                          ; 0x21fd
    mov ax, 0x1e                     ; 0x21fe
    imul word [bp + 0xa]             ; 0x2201
    mov cx, ax                       ; 0x2204
    pop ax                           ; 0x2206
    add ax, cx                       ; 0x2207
    push ax                          ; 0x2209
    mov ax, 3                        ; 0x220a
    imul word [bp - 0x0004]          ; 0x220d
    mov cx, ax                       ; 0x2210
    pop ax                           ; 0x2212
    add ax, cx                       ; 0x2213
    mov bx, ax                       ; 0x2215
    mov al, byte [bx - 0x7cdd]       ; 0x2217
    sub ah, ah                       ; 0x221b
    mov word [bp - 0x0008], ax       ; 0x221d
    mov al, byte [bx - 0x7cdc]       ; 0x2220
    sub ah, ah                       ; 0x2224
    mov word [bp - 0x000a], ax       ; 0x2226
    cmp word [bp + 0xc], byte 0      ; 0x2229
    je short @..api_idx_000e_2.l5    ; 0x222d
    dec word [bp - 0x000a]           ; 0x222f
@..api_idx_000e_2.l5:
    cmp word [bp - 0x000a], byte 0   ; 0x2232
    jle short @..api_idx_000e_2.l6   ; 0x2236
    jmp near @..api_idx_000e_2.l10   ; 0x2238
@..api_idx_000e_2.l6:
    mov al, byte [bx - 0x7cde]       ; 0x223b
    sub ah, ah                       ; 0x223f
    mov word [bp - 0x0006], ax       ; 0x2241
    inc word [bp - 0x0008]           ; 0x2244
    mov ax, 0x15e                    ; 0x2247
    imul word [bp - 0x0002]          ; 0x224a
    mov cx, ax                       ; 0x224d
    mov ax, word [bp - 0x0006]       ; 0x224f
    add cx, ax                       ; 0x2252
    mov bx, cx                       ; 0x2254
    mov al, byte [bx + 0x6a40]       ; 0x2256
    sub ah, ah                       ; 0x225a
    push ax                          ; 0x225c
    mov al, byte [bx + 0x6a4a]       ; 0x225d
    sub ah, ah                       ; 0x2261
    mov cx, ax                       ; 0x2263
    pop ax                           ; 0x2265
    add ax, cx                       ; 0x2266
    dec ax                           ; 0x2268
    cmp ax, word [bp - 0x0008]       ; 0x2269
    jl short @..api_idx_000e_2.l7    ; 0x226c
    jmp near @..api_idx_000e_2.l9    ; 0x226e
@..api_idx_000e_2.l7:
    mov ax, 3                        ; 0x2271
    imul word [bp + 0x8]             ; 0x2274
    add ax, word [bp + 0xa]          ; 0x2277
    mov bx, ax                       ; 0x227a
    cmp byte [bx - 0x7bd0], 0        ; 0x227c
    je short @..api_idx_000e_2.l8    ; 0x2281
    mov byte [bx - 0x7bd0], 0        ; 0x2283
    mov ax, 0                        ; 0x2288
    push ax                          ; 0x228b
    push word [bp + 0xa]             ; 0x228c
    push word [bp + 0x8]             ; 0x228f
    push word [bp + 0x4]             ; 0x2292
    call api_idx_000a_2              ; 0x2295
    add sp, byte 8                   ; 0x2298
    push word [bp + 0xe]             ; 0x229b
    mov ax, 0                        ; 0x229e
    push ax                          ; 0x22a1
    push word [bp + 0xa]             ; 0x22a2
    push word [bp + 0x8]             ; 0x22a5
    push word [bp + 0x6]             ; 0x22a8
    push word [bp + 0x4]             ; 0x22ab
    call api_idx_000e_2              ; 0x22ae
    add sp, byte 0x0c                ; 0x22b1
    ret                              ; 0x22b4
@..api_idx_000e_2.l8:
    mov ax, 0x15e                    ; 0x22b5
    imul word [bp - 0x0002]          ; 0x22b8
    add ax, word [bp - 0x0004]       ; 0x22bb
    mov bx, ax                       ; 0x22be
    mov al, byte [bx + 0x6a2c]       ; 0x22c0
    sub ah, ah                       ; 0x22c4
    push ax                          ; 0x22c6
    call ds_dispatch_b7a9            ; 0x22c7
    pop cx                           ; 0x22ca
    push ax                          ; 0x22cb
    mov ax, 0x15e                    ; 0x22cc
    imul word [bp - 0x0002]          ; 0x22cf
    add ax, word [bp - 0x0004]       ; 0x22d2
    mov bx, ax                       ; 0x22d5
    mov al, byte [bx + 0x6a22]       ; 0x22d7
    sub ah, ah                       ; 0x22db
    mov cx, ax                       ; 0x22dd
    pop ax                           ; 0x22df
    add ax, cx                       ; 0x22e0
    mov word [bp - 0x0006], ax       ; 0x22e2
    mov al, byte [bp - 0x0006]       ; 0x22e5
    push ax                          ; 0x22e8
    mov ax, 0x5a                     ; 0x22e9
    imul word [bp + 0x8]             ; 0x22ec
    mov cx, ax                       ; 0x22ef
    mov ax, 0x1e                     ; 0x22f1
    imul word [bp + 0xa]             ; 0x22f4
    mov dx, ax                       ; 0x22f7
    add cx, ax                       ; 0x22f9
    mov ax, 3                        ; 0x22fb
    imul word [bp - 0x0004]          ; 0x22fe
    mov dx, ax                       ; 0x2301
    add cx, ax                       ; 0x2303
    mov bx, cx                       ; 0x2305
    pop ax                           ; 0x2307
    mov byte [bx - 0x7cde], al       ; 0x2308
    mov ax, 0x15e                    ; 0x230c
    imul word [bp - 0x0002]          ; 0x230f
    add ax, word [bp - 0x0006]       ; 0x2312
    mov bx, ax                       ; 0x2315
    mov al, byte [bx + 0x6a40]       ; 0x2317
    sub ah, ah                       ; 0x231b
    mov word [bp - 0x0008], ax       ; 0x231d
@..api_idx_000e_2.l9:
    mov al, byte [bp - 0x0008]       ; 0x2320
    push ax                          ; 0x2323
    mov ax, 0x5a                     ; 0x2324
    imul word [bp + 0x8]             ; 0x2327
    mov cx, ax                       ; 0x232a
    mov ax, 0x1e                     ; 0x232c
    imul word [bp + 0xa]             ; 0x232f
    mov dx, ax                       ; 0x2332
    add cx, ax                       ; 0x2334
    mov ax, 3                        ; 0x2336
    imul word [bp - 0x0004]          ; 0x2339
    mov dx, ax                       ; 0x233c
    add cx, ax                       ; 0x233e
    mov bx, cx                       ; 0x2340
    pop ax                           ; 0x2342
    mov byte [bx - 0x7cdd], al       ; 0x2343
    mov ax, 0x15e                    ; 0x2347
    imul word [bp - 0x0002]          ; 0x234a
    mov cx, word [bp - 0x0008]       ; 0x234d
    shl cx, 1                        ; 0x2350
    shl cx, 1                        ; 0x2352
    add ax, cx                       ; 0x2354
    mov bx, ax                       ; 0x2356
    mov al, byte [bx + 0x6ac2]       ; 0x2358
    sub ah, ah                       ; 0x235c
    push ax                          ; 0x235e
    call ds_dispatch_b7a9            ; 0x235f
    pop cx                           ; 0x2362
    push ax                          ; 0x2363
    mov ax, 0x15e                    ; 0x2364
    imul word [bp - 0x0002]          ; 0x2367
    mov cx, word [bp - 0x0008]       ; 0x236a
    shl cx, 1                        ; 0x236d
    shl cx, 1                        ; 0x236f
    add ax, cx                       ; 0x2371
    mov bx, ax                       ; 0x2373
    mov al, byte [bx + 0x6ac1]       ; 0x2375
    sub ah, ah                       ; 0x2379
    mov cx, ax                       ; 0x237b
    pop ax                           ; 0x237d
    add ax, cx                       ; 0x237e
    mov word [bp - 0x000a], ax       ; 0x2380
@..api_idx_000e_2.l10:
    mov al, byte [bp - 0x000a]       ; 0x2383
    push ax                          ; 0x2386
    mov ax, 0x5a                     ; 0x2387
    imul word [bp + 0x8]             ; 0x238a
    mov cx, ax                       ; 0x238d
    mov ax, 0x1e                     ; 0x238f
    imul word [bp + 0xa]             ; 0x2392
    mov dx, ax                       ; 0x2395
    add cx, ax                       ; 0x2397
    mov ax, 3                        ; 0x2399
    imul word [bp - 0x0004]          ; 0x239c
    mov dx, ax                       ; 0x239f
    add cx, ax                       ; 0x23a1
    mov bx, cx                       ; 0x23a3
    pop ax                           ; 0x23a5
    mov byte [bx - 0x7cdc], al       ; 0x23a6
@..api_idx_000e_2.l11:
    mov ax, 0x15e                    ; 0x23aa
    imul word [bp - 0x0002]          ; 0x23ad
    mov cx, word [bp - 0x0008]       ; 0x23b0
    shl cx, 1                        ; 0x23b3
    shl cx, 1                        ; 0x23b5
    add ax, cx                       ; 0x23b7
    mov bx, ax                       ; 0x23b9
    mov al, byte [bx + 0x6ac0]       ; 0x23bb
    mov bx, word [bp + 0xe]          ; 0x23bf
    mov si, word [bp - 0x000e]       ; 0x23c2
    mov byte [bx + si], al           ; 0x23c5
    mov ax, word [bp + 0x4]          ; 0x23c7
    shl ax, 1                        ; 0x23ca
    mov bx, ax                       ; 0x23cc
    mov bx, word [bx - 0x7b7e]       ; 0x23ce
    cmp byte [bx + 0x19e], 0x79      ; 0x23d2
    je short @..api_idx_000e_2.l12   ; 0x23d7
    mov al, byte [bx + 0x19e]        ; 0x23d9
    sub ah, ah                       ; 0x23dd
    cmp ax, 0x8d                     ; 0x23df
    jne short @..api_idx_000e_2.l13  ; 0x23e2
@..api_idx_000e_2.l12:
    inc word [bp - 0x000e]           ; 0x23e4
    mov bx, word [bp + 0xe]          ; 0x23e7
    mov si, word [bp - 0x000e]       ; 0x23ea
    mov al, byte [bx + si - 0x0001]  ; 0x23ed
    mov byte [bx + si], al           ; 0x23f0
    mov ax, 0x15e                    ; 0x23f2
    imul word [bp - 0x0002]          ; 0x23f5
    mov bx, ax                       ; 0x23f8
    mov al, byte [bx + 0x6b76]       ; 0x23fa
    mov bx, word [bp + 0xe]          ; 0x23fe
    mov si, word [bp - 0x000e]       ; 0x2401
    mov byte [bx + si - 0x0001], al  ; 0x2404
@..api_idx_000e_2.l13:
    mov bx, word [bp + 0xe]          ; 0x2407
    mov si, word [bp - 0x000e]       ; 0x240a
    cmp byte [bx + si], 0            ; 0x240d
    je short @..api_idx_000e_2.l14   ; 0x2410
    inc word [bp - 0x000e]           ; 0x2412
@..api_idx_000e_2.l14:
    inc word [bp - 0x0004]           ; 0x2415
@..api_idx_000e_2.l15:
    mov ax, 0x15e                    ; 0x2418
    imul word [bp - 0x0002]          ; 0x241b
    push ax                          ; 0x241e
    mov ax, 3                        ; 0x241f
    imul word [bp + 0x8]             ; 0x2422
    add ax, word [bp + 0xa]          ; 0x2425
    mov bx, ax                       ; 0x2428
    mov al, byte [bx - 0x7bd0]       ; 0x242a
    sub ah, ah                       ; 0x242e
    mov cx, ax                       ; 0x2430
    pop ax                           ; 0x2432
    add ax, cx                       ; 0x2433
    mov bx, ax                       ; 0x2435
    mov al, byte [bx + 0x6a1a]       ; 0x2437
    sub ah, ah                       ; 0x243b
    push ax                          ; 0x243d
    mov al, byte [bx + 0x6a1e]       ; 0x243e
    sub ah, ah                       ; 0x2442
    mov cx, ax                       ; 0x2444
    pop ax                           ; 0x2446
    add ax, cx                       ; 0x2447
    cmp ax, word [bp - 0x0004]       ; 0x2449
    jle short @..api_idx_000e_2.l16  ; 0x244c
    jmp near @..api_idx_000e_2.l2    ; 0x244e
@..api_idx_000e_2.l16:
    mov bx, word [bp + 0xe]          ; 0x2451
    mov si, word [bp - 0x000e]       ; 0x2454
    mov byte [bx + si], 0            ; 0x2457
    ret                              ; 0x245a
%include "vmele/api_idx_0004_6.asm"

%include "vmele/api_idx_001c.asm"

%include "vmele/api_idx_000e_3.asm"

loc_28a0:
    mov ax, 0                        ; 0x28a0
    call ds_dispatch_f40b            ; 0x28a3
    mov ax, word [bp + 0x4]          ; 0x28a6
    shl ax, 1                        ; 0x28a9
    mov bx, ax                       ; 0x28ab
    mov bx, word [bx - 0x7b96]       ; 0x28ad
    mov al, byte [bx + 0x14]         ; 0x28b1
    sub ah, ah                       ; 0x28b4
    cmp ax, 0xff                     ; 0x28b6
    je short @..local.l4             ; 0x28b9
    mov al, byte [bx + 0x17]         ; 0x28bb
    sub ah, ah                       ; 0x28be
    push ax                          ; 0x28c0
    mov ax, 0                        ; 0x28c1
    push ax                          ; 0x28c4
    add bx, byte 8                   ; 0x28c5
    mov ax, bx                       ; 0x28c8
    push ax                          ; 0x28ca
    mov ax, word [bp + 0x4]          ; 0x28cb
    shl ax, 1                        ; 0x28ce
    mov bx, ax                       ; 0x28d0
    mov bx, word [bx - 0x7b96]       ; 0x28d2
    mov al, byte [bx + 0x16]         ; 0x28d6
    sub ah, ah                       ; 0x28d9
    push ax                          ; 0x28db
    mov ax, 0x8e                     ; 0x28dc
    push ax                          ; 0x28df
    mov ax, 0x21                     ; 0x28e0
    push ax                          ; 0x28e3
    push word [bx + 0x6]             ; 0x28e4
    push word [bx + 0x4]             ; 0x28e7
    push word [bx + 0x2]             ; 0x28ea
    push word [bx]                   ; 0x28ed
    mov al, byte [bx + 0x15]         ; 0x28ef
    sub ah, ah                       ; 0x28f2
    push ax                          ; 0x28f4
    call ds_dispatch_efd1            ; 0x28f5
    add sp, byte 0x16                ; 0x28f8
@..local.l4:
    ret                              ; 0x28fb
%include "vmele/api_idx_0002.asm"

@..api_idx_0002.l2:
    mov ax, 0x2c                     ; 0x2916
    imul word [bp - 0x0002]          ; 0x2919
    mov si, ax                       ; 0x291c
    mov ax, word [bp + 0x4]          ; 0x291e
    shl ax, 1                        ; 0x2921
    mov bx, ax                       ; 0x2923
    mov bx, word [bx - 0x7b7e]       ; 0x2925
    cmp byte [bx + si + 0x2a], 0xff  ; 0x2929
    jne short @..api_idx_0002.l3     ; 0x292d
    mov ax, 6                        ; 0x292f
    imul word [bp + 0x6]             ; 0x2932
    mov cx, word [bp + 0x8]          ; 0x2935
    shl cx, 1                        ; 0x2938
    add ax, cx                       ; 0x293a
    mov bx, ax                       ; 0x293c
    mov word [bx - 0x6f42], 1        ; 0x293e
    mov ax, 0xa                      ; 0x2944
    imul word [bp + 0x4]             ; 0x2947
    add ax, word [bp - 0x0002]       ; 0x294a
    mov word [bx - 0x7bc6], ax       ; 0x294d
    mov ax, 0xa                      ; 0x2951
    imul word [bp + 0x6]             ; 0x2954
    add ax, word [bp + 0x8]          ; 0x2957
    mov cx, word [bp + 0x4]          ; 0x295a
    shl cx, 1                        ; 0x295d
    mov bx, cx                       ; 0x295f
    mov bx, word [bx - 0x7b7e]       ; 0x2961
    mov byte [bx + si + 0x2a], al    ; 0x2965
    mov ax, 0xffff                   ; 0x2968
    push ax                          ; 0x296b
    push word [bp + 0x8]             ; 0x296c
    push word [bp + 0x6]             ; 0x296f
    push word [bp + 0x4]             ; 0x2972
    call api_idx_000a_2              ; 0x2975
    add sp, byte 8                   ; 0x2978
    mov ax, 0                        ; 0x297b
    ret                              ; 0x297e
@..api_idx_0002.l3:
    inc word [bp - 0x0002]           ; 0x297f
@..api_idx_0002.l4:
    mov ax, word [bp + 0x4]          ; 0x2982
    shl ax, 1                        ; 0x2985
    mov bx, ax                       ; 0x2987
    mov bx, word [bx - 0x7b7e]       ; 0x2989
    mov al, byte [bx + 0x1a1]        ; 0x298d
    sub ah, ah                       ; 0x2991
    cmp ax, word [bp - 0x0002]       ; 0x2993
    jle short @..api_idx_0002.l5     ; 0x2996
    jmp near @..api_idx_0002.l2      ; 0x2998
@..api_idx_0002.l5:
    mov ax, 0xffff                   ; 0x299b
    ret                              ; 0x299e
loc_299f:
    mov ax, 0                        ; 0x299f
    call ds_dispatch_f40b            ; 0x29a2
    jmp short @..local.l7            ; 0x29a5
@..local.l5:
    push word [bp + 0x8]             ; 0x29a7
    push word [bp + 0x6]             ; 0x29aa
    push word [bp + 0x4]             ; 0x29ad
    call api_idx_0002                ; 0x29b0
    add sp, byte 6                   ; 0x29b3
    test ax, ax                      ; 0x29b6
    jne short @..local.l6            ; 0x29b8
    ret                              ; 0x29ba
@..local.l6:
    inc word [bp + 0x4]              ; 0x29bb
@..local.l7:
    cmp word [bp + 0x4], byte 3      ; 0x29be
    jle short @..local.l5            ; 0x29c2
    ret                              ; 0x29c4
%include "vmele/api_idx_000c_3.asm"

loc_2b19:
    mov ax, 0                        ; 0x2b19
    call ds_dispatch_f40b            ; 0x2b1c
    les bx, word [data_0002]         ; 0x2b1f
    mov ax, word [es:bx]             ; 0x2b23
    mov dx, word [es:bx + 0x2]       ; 0x2b26
    mov word [data_9090], dx         ; 0x2b2a
    mov word [data_908e], ax         ; 0x2b2e
    mov ax, word [data_908e]         ; 0x2b31
    mov dx, word [data_9090]         ; 0x2b34
    sub ax, word [data_908a]         ; 0x2b38
    sbb dx, word [data_908c]         ; 0x2b3c
    mov word [data_9094], dx         ; 0x2b40
    mov word [data_9092], ax         ; 0x2b44
    mov ax, word [data_90b6]         ; 0x2b47
    cwd                              ; 0x2b4a
    mov cx, ax                       ; 0x2b4b
    mov bx, dx                       ; 0x2b4d
    mov ax, word [data_9092]         ; 0x2b4f
    mov dx, word [data_9094]         ; 0x2b52
    cmp bx, dx                       ; 0x2b56
    jg short @..local.l8             ; 0x2b58
    jne short @..local.l9            ; 0x2b5a
    cmp cx, ax                       ; 0x2b5c
    jbe short @..local.l9            ; 0x2b5e
@..local.l8:
    jmp short @..local.l10           ; 0x2b60
@..local.l9:
    mov ax, word [data_908e]         ; 0x2b62
    mov dx, word [data_9090]         ; 0x2b65
    mov word [data_908c], dx         ; 0x2b69
    mov word [data_908a], ax         ; 0x2b6d
    mov ax, 1                        ; 0x2b70
    ret                              ; 0x2b73
@..local.l10:
    mov ax, 0                        ; 0x2b74
    ret                              ; 0x2b77
%include "vmele/api_idx_0006_2.asm"

loc_2cc7:
    mov ax, 0                        ; 0x2cc7
    call ds_dispatch_f40b            ; 0x2cca
    mov word [data_845e], 0xfffe     ; 0x2ccd
@..local.l11:
    call api_idx_0006_2              ; 0x2cd3
    cmp word [data_845e], byte 0xfe  ; 0x2cd6
    jne short @..local.l11           ; 0x2cdb
    ret                              ; 0x2cdd
%include "vmele/api_idx_005a.asm"

%include "vmele/api_idx_0004_7.asm"

%include "vmele/api_idx_0008_4.asm"

%include "vmele/api_idx_0056.asm"

loc_331c:
    mov ax, 0xfe5a                   ; 0x331c
    call ds_dispatch_f40b            ; 0x331f
    mov ax, 0                        ; 0x3322
    push ax                          ; 0x3325
    mov ax, 0x12                     ; 0x3326
    push ax                          ; 0x3329
    mov ax, 0x843a                   ; 0x332a
    push ax                          ; 0x332d
    call ds_dispatch_f306            ; 0x332e
    add sp, byte 6                   ; 0x3331
    mov word [bp - 0x0002], 0        ; 0x3334
@..local.l12:
    mov ax, 0                        ; 0x3339
    push ax                          ; 0x333c
    mov ax, 0x1a4                    ; 0x333d
    push ax                          ; 0x3340
    mov ax, word [bp - 0x0002]       ; 0x3341
    shl ax, 1                        ; 0x3344
    mov bx, ax                       ; 0x3346
    push word [bx - 0x7b7e]          ; 0x3348
    call ds_dispatch_f306            ; 0x334c
    add sp, byte 6                   ; 0x334f
    inc word [bp - 0x0002]           ; 0x3352
    mov ax, word [bp - 0x0002]       ; 0x3355
    cmp ax, strict word 7            ; 0x3358
    jl short @..local.l12            ; 0x335b
    mov word [bp - 0x0002], 0        ; 0x335d
@..local.l13:
    mov ax, word [bp - 0x0002]       ; 0x3362
    shl ax, 1                        ; 0x3365
    mov bx, ax                       ; 0x3367
    mov bx, word [bx - 0x7b7e]       ; 0x3369
    mov byte [bx + 0x1a1], 0         ; 0x336d
    inc word [bp - 0x0002]           ; 0x3372
    mov ax, word [bp - 0x0002]       ; 0x3375
    cmp ax, strict word 7            ; 0x3378
    jl short @..local.l13            ; 0x337b
    mov word [data_8466], 0          ; 0x337d
    mov word [data_845c], 0          ; 0x3383
    mov word [data_845e], 0xfffe     ; 0x3389
    ret                              ; 0x338f
%include "vmele/api_idx_0004_8.asm"

loc_33df:
    mov ax, 0xfd06                   ; 0x33df
    call ds_dispatch_f40b            ; 0x33e2
    mov word [data_90bc], 1          ; 0x33e5
    mov ax, data_0002                ; 0x33eb
    push ax                          ; 0x33ee
    mov ax, 0                        ; 0x33ef
    push ax                          ; 0x33f2
    push word [data_8456]            ; 0x33f3
    call ds_dispatch_b7c2            ; 0x33f7
    add sp, byte 6                   ; 0x33fa
    mov word [data_8454], ax         ; 0x33fd
    mov word [data_8458], 0          ; 0x3400
    cmp word [data_82b6], byte 0xff  ; 0x3406
    je short @..local.l16            ; 0x340b
@..local.l14:
    call ds_dispatch_ef83            ; 0x340d
    test ax, ax                      ; 0x3410
    je short @..local.l15            ; 0x3412
    jmp short @..local.l14           ; 0x3414
@..local.l15:
    mov ax, 0                        ; 0x3416
    push ax                          ; 0x3419
    call ds_dispatch_d907            ; 0x341a
    pop cx                           ; 0x341d
@..local.l16:
    call ds_dispatch_c145            ; 0x341e
    mov ax, 0                        ; 0x3421
    push ax                          ; 0x3424
    call ds_dispatch_c12a            ; 0x3425
    pop cx                           ; 0x3428
    mov ax, 4                        ; 0x3429
    push ax                          ; 0x342c
    call ds_dispatch_c12a            ; 0x342d
    pop cx                           ; 0x3430
    mov ax, 6                        ; 0x3431
    push ax                          ; 0x3434
    call ds_dispatch_c12a            ; 0x3435
    pop cx                           ; 0x3438
    mov ax, 1                        ; 0x3439
    push ax                          ; 0x343c
    mov ax, 5                        ; 0x343d
    push ax                          ; 0x3440
    push ax                          ; 0x3441
    call ds_dispatch_d6dc            ; 0x3442
    add sp, byte 6                   ; 0x3445
    mov ax, 1                        ; 0x3448
    push ax                          ; 0x344b
    mov ax, 6                        ; 0x344c
    push ax                          ; 0x344f
    push ax                          ; 0x3450
    call ds_dispatch_d6dc            ; 0x3451
    add sp, byte 6                   ; 0x3454
    mov ax, 1                        ; 0x3457
    push ax                          ; 0x345a
    mov ax, 7                        ; 0x345b
    push ax                          ; 0x345e
    push ax                          ; 0x345f
    call ds_dispatch_d6dc            ; 0x3460
    add sp, byte 6                   ; 0x3463
    mov ax, 1                        ; 0x3466
    push ax                          ; 0x3469
    mov ax, 0xa                      ; 0x346a
    push ax                          ; 0x346d
    push ax                          ; 0x346e
    call ds_dispatch_d6dc            ; 0x346f
    add sp, byte 6                   ; 0x3472
    mov ax, 1                        ; 0x3475
    push ax                          ; 0x3478
    mov ax, 0xb                      ; 0x3479
    push ax                          ; 0x347c
    push ax                          ; 0x347d
    call ds_dispatch_d6dc            ; 0x347e
    add sp, byte 6                   ; 0x3481
    mov ax, 1                        ; 0x3484
    push ax                          ; 0x3487
    mov ax, 0xc                      ; 0x3488
    push ax                          ; 0x348b
    push ax                          ; 0x348c
    call ds_dispatch_d6dc            ; 0x348d
    add sp, byte 6                   ; 0x3490
    mov ax, 7                        ; 0x3493
    push ax                          ; 0x3496
    mov ax, 9                        ; 0x3497
    push ax                          ; 0x349a
    call ds_dispatch_d61c            ; 0x349b
    add sp, byte 4                   ; 0x349e
    mov ax, 0xc                      ; 0x34a1
    push ax                          ; 0x34a4
    mov ax, 0x52                     ; 0x34a5
    push ax                          ; 0x34a8
    call ds_dispatch_d61c            ; 0x34a9
    add sp, byte 4                   ; 0x34ac
    mov ax, 0                        ; 0x34af
    push ax                          ; 0x34b2
    mov ax, data_0002                ; 0x34b3
    push ax                          ; 0x34b6
    mov ax, 0x8f                     ; 0x34b7
    push ax                          ; 0x34ba
    mov ax, 0xf7                     ; 0x34bb
    push ax                          ; 0x34be
    mov ax, 0x21                     ; 0x34bf
    push ax                          ; 0x34c2
    mov ax, 0x48                     ; 0x34c3
    push ax                          ; 0x34c6
    call ds_dispatch_e935            ; 0x34c7
    add sp, byte 0x0c                ; 0x34ca
    mov word [data_9062], dx         ; 0x34cd
    mov word [data_9060], ax         ; 0x34d1
    cmp word [data_906a], byte 0     ; 0x34d4
    je short @..local.l17            ; 0x34d9
    mov ax, 1                        ; 0x34db
    push ax                          ; 0x34de
    push word [data_9068]            ; 0x34df
    call ds_dispatch_c459            ; 0x34e3
    add sp, byte 4                   ; 0x34e6
    mov word [data_906a], 0          ; 0x34e9
@..local.l17:
    mov ax, 0                        ; 0x34ef
    push ax                          ; 0x34f2
    mov ax, data_0002                ; 0x34f3
    push ax                          ; 0x34f6
    mov ax, 0x8f                     ; 0x34f7
    push ax                          ; 0x34fa
    mov ax, 0xf7                     ; 0x34fb
    push ax                          ; 0x34fe
    mov ax, 0x21                     ; 0x34ff
    push ax                          ; 0x3502
    mov ax, 0x48                     ; 0x3503
    push ax                          ; 0x3506
    call ds_dispatch_e935            ; 0x3507
    add sp, byte 0x0c                ; 0x350a
    mov word [data_9066], dx         ; 0x350d
    mov word [data_9064], ax         ; 0x3511
    mov word [bp - 0x0002], 0        ; 0x3514
@..local.l18:
    mov ax, 0xe8                     ; 0x3519
    push ax                          ; 0x351c
    call ds_dispatch_f4a3            ; 0x351d
    pop cx                           ; 0x3520
    mov cx, word [bp - 0x0002]       ; 0x3521
    shl cx, 1                        ; 0x3524
    mov bx, cx                       ; 0x3526
    mov word [bx - 0x7b70], ax       ; 0x3528
    mov ax, 0x1a4                    ; 0x352c
    push ax                          ; 0x352f
    call ds_dispatch_f4a3            ; 0x3530
    pop cx                           ; 0x3533
    mov cx, word [bp - 0x0002]       ; 0x3534
    shl cx, 1                        ; 0x3537
    mov bx, cx                       ; 0x3539
    mov word [bx - 0x7b7e], ax       ; 0x353b
    cmp word [bx - 0x7b70], byte 0   ; 0x353f
    je short @..local.l19            ; 0x3544
    cmp word [bx - 0x7b7e], byte 0   ; 0x3546
    jne short @..local.l20           ; 0x354b
@..local.l19:
    mov ax, 0x1d                     ; 0x354d
    push ax                          ; 0x3550
    call ds_dispatch_b171            ; 0x3551
    pop cx                           ; 0x3554
@..local.l20:
    inc word [bp - 0x0002]           ; 0x3555
    mov ax, word [bp - 0x0002]       ; 0x3558
    cmp ax, strict word 7            ; 0x355b
    jl short @..local.l18            ; 0x355e
    mov word [bp - 0x0002], 0        ; 0x3560
@..local.l21:
    mov ax, 0x18                     ; 0x3565
    push ax                          ; 0x3568
    call ds_dispatch_f4a3            ; 0x3569
    pop cx                           ; 0x356c
    mov cx, word [bp - 0x0002]       ; 0x356d
    shl cx, 1                        ; 0x3570
    mov bx, cx                       ; 0x3572
    mov word [bx - 0x7b96], ax       ; 0x3574
    cmp word [bx - 0x7b96], byte 0   ; 0x3578
    jne short @..local.l22           ; 0x357d
    mov ax, 0x1d                     ; 0x357f
    push ax                          ; 0x3582
    call ds_dispatch_b171            ; 0x3583
    pop cx                           ; 0x3586
@..local.l22:
    mov ax, word [bp - 0x0002]       ; 0x3587
    shl ax, 1                        ; 0x358a
    mov bx, ax                       ; 0x358c
    mov bx, word [bx - 0x7b96]       ; 0x358e
    mov byte [bx + 0x14], 0xff       ; 0x3592
    inc word [bp - 0x0002]           ; 0x3596
    mov ax, word [bp - 0x0002]       ; 0x3599
    cmp ax, strict word 0xc          ; 0x359c
    jl short @..local.l21            ; 0x359f
    mov word [bp - 0x0002], 0xf      ; 0x35a1
@..local.l23:
    mov bx, word [bp - 0x0002]       ; 0x35a6
    mov byte [bx + 0x5b48], 0xff     ; 0x35a9
    mov byte [bx + 0x5b5a], 0        ; 0x35ae
    inc word [bp - 0x0002]           ; 0x35b3
    mov ax, word [bp - 0x0002]       ; 0x35b6
    cmp ax, strict word 0x12         ; 0x35b9
    jl short @..local.l23            ; 0x35bc
    mov ax, 0xc6                     ; 0x35be
    push ax                          ; 0x35c1
    mov ax, 0x13a                    ; 0x35c2
    push ax                          ; 0x35c5
    mov ax, 0xa5                     ; 0x35c6
    push ax                          ; 0x35c9
    mov ax, 8                        ; 0x35ca
    push ax                          ; 0x35cd
    call ds_dispatch_e928            ; 0x35ce
    add sp, byte 8                   ; 0x35d1
    mov word [data_8d10], dx         ; 0x35d4
    mov word [data_8d0e], ax         ; 0x35d8
    mov ax, 0xa4                     ; 0x35db
    push ax                          ; 0x35de
    mov ax, 0xff                     ; 0x35df
    push ax                          ; 0x35e2
    mov ax, 0x92                     ; 0x35e3
    push ax                          ; 0x35e6
    mov ax, 0x41                     ; 0x35e7
    push ax                          ; 0x35ea
    call ds_dispatch_e928            ; 0x35eb
    add sp, byte 8                   ; 0x35ee
    mov word [data_8d0c], dx         ; 0x35f1
    mov word [data_8d0a], ax         ; 0x35f5
    mov ax, 1                        ; 0x35f8
    push ax                          ; 0x35fb
    mov ax, data_0002                ; 0x35fc
    push ax                          ; 0x35ff
    call ds_dispatch_d61c            ; 0x3600
    add sp, byte 4                   ; 0x3603
    mov ax, data_0002                ; 0x3606
    push ax                          ; 0x3609
    mov ax, 3                        ; 0x360a
    push ax                          ; 0x360d
    call ds_dispatch_d61c            ; 0x360e
    add sp, byte 4                   ; 0x3611
    mov ax, 0                        ; 0x3614
    push ax                          ; 0x3617
    call api_idx_000a                ; 0x3618
    pop cx                           ; 0x361b
    call api_idx_0004_8              ; 0x361c
    mov ax, 1                        ; 0x361f
    cmp word [data_905e], byte 0x12  ; 0x3622
    jne short @..local.l24           ; 0x3627
    mov ax, 0                        ; 0x3629
@..local.l24:
    mov word [data_90b8], ax         ; 0x362c
    mov ax, 0                        ; 0x362f
    cmp word [data_905e], byte 0x12  ; 0x3632
    jne short @..local.l25           ; 0x3637
    mov ax, 1                        ; 0x3639
@..local.l25:
    mov word [data_90ba], ax         ; 0x363c
    cmp word [data_905e], byte 0x12  ; 0x363f
    jne short @..local.l26           ; 0x3644
    cmp word [data_8466], byte 1     ; 0x3646
    jle short @..local.l26           ; 0x364b
    mov ax, 1                        ; 0x364d
    push ax                          ; 0x3650
    call api_idx_000a                ; 0x3651
    pop cx                           ; 0x3654
    mov ax, 1                        ; 0x3655
    push ax                          ; 0x3658
    call ds_dispatch_b75e            ; 0x3659
    pop cx                           ; 0x365c
    push word [data_8492]            ; 0x365d
    lea ax, word [bp - 0x0056]       ; 0x3661
    push ax                          ; 0x3664
    call ds_dispatch_f364            ; 0x3665
    add sp, byte 4                   ; 0x3668
    lea ax, word [bp - 0x0056]       ; 0x366b
    push ax                          ; 0x366e
    call api_idx_0004_2              ; 0x366f
    pop cx                           ; 0x3672
    lea ax, word [bp - 0x0056]       ; 0x3673
    push ax                          ; 0x3676
    call ds_dispatch_fa90            ; 0x3677
    pop cx                           ; 0x367a
    mov word [bp - 0x0004], ax       ; 0x367b
    lea cx, word [bp - 0x0056]       ; 0x367e
    add ax, cx                       ; 0x3681
    push ax                          ; 0x3683
    mov ax, 0xdb8                    ; 0x3684
    push ax                          ; 0x3687
    call ds_dispatch_b53b            ; 0x3688
    add sp, byte 4                   ; 0x368b
    mov ax, 0x11                     ; 0x368e
    push ax                          ; 0x3691
    lea ax, word [bp - 0x0056]       ; 0x3692
    push ax                          ; 0x3695
    call api_idx_000c                ; 0x3696
    add sp, byte 4                   ; 0x3699
@..local.l26:
    call math_loc_1f39               ; 0x369c
    les bx, word [data_0002]         ; 0x369f
    mov ax, word [es:bx]             ; 0x36a3
    mov dx, word [es:bx + 0x2]       ; 0x36a6
    mov word [data_908c], dx         ; 0x36aa
    mov word [data_908a], ax         ; 0x36ae
    mov word [data_830a], 0xb        ; 0x36b1
    ret                              ; 0x36b7
%include "vmele/api_idx_0002_2.asm"

%include "vmele/string_loc_3710.asm"

%include "vmele/string_loc_374e.asm"


    db 'MON00.PIC', 0
    db 0x20, 0x00
    db 'VM1.$$$', 0
    times 10 db 0

