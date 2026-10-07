%include "structs/structs.inc"
%include "structs/loc_6e06.inc"
org 0
bits 16
%include "labels/vmaze_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x60, 0xac, 0x98, 0x90

data_010e equ 0x010e
data_0112 equ 0x0112
data_03ae equ 0x03ae
loc_0712 equ 0x0712
loc_0833 equ 0x0833
loc_088a equ 0x088a
loc_0918 equ 0x0918
loc_096c equ 0x096c
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
data_0e16 equ 0x0e16
data_0e18 equ 0x0e18
data_0e1a equ 0x0e1a
data_0e1c equ 0x0e1c
data_100a equ 0x100a
loc_154d equ 0x154d
loc_2fd6 equ 0x2fd6
loc_3405 equ 0x3405
loc_38d2 equ 0x38d2
loc_38e4 equ 0x38e4
loc_391b equ 0x391b
loc_3958 equ 0x3958
loc_397b equ 0x397b
loc_397e equ 0x397e
loc_398c equ 0x398c
loc_39d9 equ 0x39d9
loc_39db equ 0x39db
loc_3a2f equ 0x3a2f
loc_3a73 equ 0x3a73
loc_3a79 equ 0x3a79
loc_3a84 equ 0x3a84
loc_3f75 equ 0x3f75
loc_3f7e equ 0x3f7e
loc_3f8a equ 0x3f8a
loc_3f90 equ 0x3f90
loc_3fb2 equ 0x3fb2
loc_3fbf equ 0x3fbf
loc_3fd6 equ 0x3fd6
loc_3fe2 equ 0x3fe2
loc_3fe8 equ 0x3fe8
loc_3feb equ 0x3feb
loc_3ff9 equ 0x3ff9
loc_4002 equ 0x4002
loc_400b equ 0x400b
loc_4060 equ 0x4060
loc_4085 equ 0x4085
loc_40b6 equ 0x40b6
loc_4110 equ 0x4110
loc_4112 equ 0x4112
loc_416c equ 0x416c
loc_4184 equ 0x4184
loc_41a3 equ 0x41a3
loc_41bf equ 0x41bf
loc_41ed equ 0x41ed
loc_4247 equ 0x4247
loc_424a equ 0x424a
loc_425b equ 0x425b
loc_4264 equ 0x4264
loc_42a5 equ 0x42a5
loc_42f4 equ 0x42f4
loc_42f6 equ 0x42f6
loc_4352 equ 0x4352
loc_439a equ 0x439a
loc_43aa equ 0x43aa
loc_4402 equ 0x4402
data_5216 equ 0x5216
data_590e equ 0x590e
data_5910 equ 0x5910
data_5988 equ 0x5988
data_598c equ 0x598c
data_598e equ 0x598e
data_59fa equ 0x59fa
data_5b3e equ 0x5b3e
data_5b55 equ 0x5b55
data_5b6c equ 0x5b6c
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
data_69c8 equ 0x69c8
loc_6d41 equ 0x6d41
loc_6d6c equ 0x6d6c
loc_6e06 equ 0x6e06
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
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8452 equ 0x8452
data_8456 equ 0x8456
data_845a equ 0x845a
data_8460 equ 0x8460
data_84a0 equ 0x84a0
data_8809 equ 0x8809
data_880a equ 0x880a
data_8aac equ 0x8aac
data_8af0 equ 0x8af0
data_8d06 equ 0x8d06
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

    db 0xfa, 0x00, 0x94, 0x0c, 0x77, 0xfc
api_idx_0002:
    mov ax, 0xfffe                   ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov word [data_8f22], 0          ; 0x0014
    mov word [data_9192], 5          ; 0x001a
    les bx, word [0x0002]            ; 0x0020
    mov ax, word [es:bx]             ; 0x0024
    mov dx, word [es:bx + 0x2]       ; 0x0027
    mov word [data_908c], dx         ; 0x002b
    mov word [data_908a], ax         ; 0x002f
    mov word [data_9194], 0          ; 0x0032
    mov word [data_9196], 0          ; 0x0038
    mov word [data_9198], 0          ; 0x003e
    mov ax, word [es:bx]             ; 0x0044
    mov dx, word [es:bx + 0x2]       ; 0x0047
    add ax, strict word 0x24         ; 0x004b
    adc dx, byte 0                   ; 0x004e
    mov word [data_919c], dx         ; 0x0051
    mov word [data_919a], ax         ; 0x0055
    call api_idx_0002_3              ; 0x0058
    cmp word [data_906a], byte 0     ; 0x005b
    je short @..api_idx_0002.l1      ; 0x0060
    mov ax, 1                        ; 0x0062
    push ax                          ; 0x0065
    push word [data_9068]            ; 0x0066
    call ds_dispatch_c459            ; 0x006a
    add sp, byte 4                   ; 0x006d
    mov word [data_906a], 0          ; 0x0070
@..api_idx_0002.l1:
    cmp word [data_830a], byte 6     ; 0x0076
    jne short @..api_idx_0002.l2     ; 0x007b
    push word [data_830c]            ; 0x007d
    call api_idx_000c                ; 0x0081
    pop cx                           ; 0x0084
@..api_idx_0002.l2:
    cmp word [data_830a], byte 5     ; 0x0085
    jne short @..api_idx_0002.l3     ; 0x008a
    call api_idx_0002_5              ; 0x008c
    call api_idx_0022                ; 0x008f
@..api_idx_0002.l3:
    call loc_0140                    ; 0x0092
    call api_idx_0002_3              ; 0x0095
    mov ax, word [data_830a]         ; 0x0098
    cmp ax, strict word 0x1e         ; 0x009b
    je short @..api_idx_0002.l4      ; 0x009e
    cmp ax, strict word 0x1b         ; 0x00a0
    je short @..api_idx_0002.l4      ; 0x00a3
    cmp ax, strict word 0x18         ; 0x00a5
    je short @..api_idx_0002.l4      ; 0x00a8
    cmp ax, strict word 0x11         ; 0x00aa
    je short @..api_idx_0002.l4      ; 0x00ad
    cmp ax, strict word 0x13         ; 0x00af
    je short @..api_idx_0002.l4      ; 0x00b2
    cmp ax, strict word 0x14         ; 0x00b4
    je short @..api_idx_0002.l4      ; 0x00b7
    mov word [data_8f22], 1          ; 0x00b9
    call api_idx_0030                ; 0x00bf
    mov ax, 0x9098                   ; 0x00c2
    push ax                          ; 0x00c5
    mov ax, 0x8f                     ; 0x00c6
    push ax                          ; 0x00c9
    mov ax, 0xf7                     ; 0x00ca
    push ax                          ; 0x00cd
    mov ax, 0x21                     ; 0x00ce
    push ax                          ; 0x00d1
    mov ax, 0x48                     ; 0x00d2
    push ax                          ; 0x00d5
    call ds_dispatch_c283            ; 0x00d6
    add sp, byte 0x0a                ; 0x00d9
    mov word [data_9068], ax         ; 0x00dc
    mov word [data_906a], 1          ; 0x00df
    mov ax, word [data_82e8]         ; 0x00e5
    inc ax                           ; 0x00e8
    mov cx, 2                        ; 0x00e9
    cwd                              ; 0x00ec
    idiv cx                          ; 0x00ed
    mov word [data_82e8], dx         ; 0x00ef
    call api_idx_0030                ; 0x00f3
    mov word [0x906c], 1             ; 0x00f6
    mov word [data_8f22], 0          ; 0x00fc
@..api_idx_0002.l4:
    mov ax, 0                        ; 0x0102
    ret                              ; 0x0105
%include "vmaze/api_idx_0002_2.asm"

@..api_idx_0002_2.l1:
    mov ax, 3                        ; 0x011b
    push ax                          ; 0x011e
    call ds_dispatch_b7a9            ; 0x011f
    pop cx                           ; 0x0122
    cmp ax, strict word 2            ; 0x0123
    jne short @..api_idx_0002_2.l2   ; 0x0126
    cmp word [data_9196], byte 0     ; 0x0128
    je short @..api_idx_0002_2.l2    ; 0x012d
    mov ax, 0xf                      ; 0x012f
    jmp short @..api_idx_0002_2.l3   ; 0x0132
@..api_idx_0002_2.l2:
    mov ax, api_idx_0002             ; 0x0134
@..api_idx_0002_2.l3:
    mov word [bp - 0x0002], ax       ; 0x0137
    push ax                          ; 0x013a
    call ds_dispatch_b7e0            ; 0x013b
    pop cx                           ; 0x013e
    ret                              ; 0x013f
loc_0140:
    mov ax, 0                        ; 0x0140
    call ds_dispatch_f40b            ; 0x0143
    mov ax, 1                        ; 0x0146
    push ax                          ; 0x0149
    call ds_dispatch_ef14            ; 0x014a
    pop cx                           ; 0x014d
    cmp word [data_9194], byte 0     ; 0x014e
    je short @..local.l1             ; 0x0153
    mov ax, api_idx_0002             ; 0x0155
    push ax                          ; 0x0158
    call ds_dispatch_d6c6            ; 0x0159
    pop cx                           ; 0x015c
@..local.l1:
    cmp word [data_9196], byte 0     ; 0x015d
    je short @..local.l2             ; 0x0162
    mov ax, 0xf                      ; 0x0164
    push ax                          ; 0x0167
    call ds_dispatch_d6c6            ; 0x0168
    pop cx                           ; 0x016b
@..local.l2:
    mov word [data_9194], 0          ; 0x016c
    mov word [data_9196], 0          ; 0x0172
    mov word [data_9198], 0          ; 0x0178
    ret                              ; 0x017e
loc_017f:
    mov ax, 0                        ; 0x017f
    call ds_dispatch_f40b            ; 0x0182
    call loc_0140                    ; 0x0185
    cmp word [bp + 0x4], byte 0      ; 0x0188
    je short @..local.l3             ; 0x018c
    mov ax, 1                        ; 0x018e
    push ax                          ; 0x0191
    mov ax, api_idx_0002             ; 0x0192
    push ax                          ; 0x0195
    push word [bp + 0x4]             ; 0x0196
    call ds_dispatch_d6dc            ; 0x0199
    add sp, byte 6                   ; 0x019c
    mov ax, word [bp + 0x4]          ; 0x019f
    mov word [data_9194], ax         ; 0x01a2
@..local.l3:
    cmp word [bp + 0x6], byte 0      ; 0x01a5
    je short @..local.l4             ; 0x01a9
    mov ax, 1                        ; 0x01ab
    push ax                          ; 0x01ae
    mov ax, 0xf                      ; 0x01af
    push ax                          ; 0x01b2
    push word [bp + 0x6]             ; 0x01b3
    call ds_dispatch_d6dc            ; 0x01b6
    add sp, byte 6                   ; 0x01b9
    mov ax, word [bp + 0x6]          ; 0x01bc
    mov word [data_9196], ax         ; 0x01bf
@..local.l4:
    mov word [data_9198], 0          ; 0x01c2
    ret                              ; 0x01c8
%include "vmaze/api_idx_0008.asm"

@..api_idx_0008.l2:
    mov ax, word [bp + 0xe]          ; 0x01fa
    jmp near @..api_idx_0008.l10     ; 0x01fd
@..api_idx_0008.l3:
    mov ax, word [data_8f3e]         ; 0x0200
    mov cx, 6                        ; 0x0203
    shl ax, cl                       ; 0x0206
    mov cx, word [data_8f40]         ; 0x0208
    shl cx, 1                        ; 0x020c
    shl cx, 1                        ; 0x020e
    shl cx, 1                        ; 0x0210
    add ax, cx                       ; 0x0212
    add ax, word [data_8f42]         ; 0x0214
    mov word [bp - 0x0002], ax       ; 0x0218
    push ax                          ; 0x021b
    mov ax, word [data_0e14]         ; 0x021c
    add ax, 0x8b0                    ; 0x021f
    push ax                          ; 0x0222
    call ds_dispatch_ec74            ; 0x0223
    add sp, byte 4                   ; 0x0226
    test ax, ax                      ; 0x0229
    je short @..api_idx_0008.l4      ; 0x022b
    push word [bp - 0x0002]          ; 0x022d
    mov ax, word [data_0e14]         ; 0x0230
    add ax, 0x9b0                    ; 0x0233
    push ax                          ; 0x0236
    call ds_dispatch_ec74            ; 0x0237
    add sp, byte 4                   ; 0x023a
    test ax, ax                      ; 0x023d
    je short @..api_idx_0008.l4      ; 0x023f
    mov ax, 1                        ; 0x0241
    jmp short @..api_idx_0008.l5     ; 0x0244
@..api_idx_0008.l4:
    mov ax, 0                        ; 0x0246
@..api_idx_0008.l5:
    mov word [bp - 0x0008], ax       ; 0x0249
    jmp short @..api_idx_0008.l12    ; 0x024c
@..api_idx_0008.l6:
    mov word [bp - 0x0004], 0x14a    ; 0x024e
    mov ax, word [data_8f1c]         ; 0x0253
    mov dx, word [data_8f1e]         ; 0x0256
    push ax                          ; 0x025a
    push dx                          ; 0x025b
    mov ax, word [bp - 0x0004]       ; 0x025c
    cwd                              ; 0x025f
    mov cx, ax                       ; 0x0260
    mov bx, dx                       ; 0x0262
    pop dx                           ; 0x0264
    pop ax                           ; 0x0265
    sub ax, cx                       ; 0x0266
    sbb dx, bx                       ; 0x0268
    mov cx, 0x5a0                    ; 0x026a
    mov bx, 0                        ; 0x026d
    call ds_dispatch_f9cd            ; 0x0270
    mov word [bp - 0x0006], ax       ; 0x0273
    cmp ax, strict word 0            ; 0x0276
    jl short @..api_idx_0008.l7      ; 0x0279
    cmp ax, 0x36c                    ; 0x027b
    jl short @..api_idx_0008.l8      ; 0x027e
@..api_idx_0008.l7:
    mov ax, 1                        ; 0x0280
    jmp short @..api_idx_0008.l9     ; 0x0283
@..api_idx_0008.l8:
    mov ax, 0                        ; 0x0285
@..api_idx_0008.l9:
    mov word [bp - 0x0008], ax       ; 0x0288
    jmp short @..api_idx_0008.l12    ; 0x028b
@..api_idx_0008.l10:
    cmp ax, strict word 2            ; 0x028d
    jne short @..api_idx_0008.l11    ; 0x0290
    jmp near @..api_idx_0008.l3      ; 0x0292
@..api_idx_0008.l11:
    jmp short @..api_idx_0008.l6     ; 0x0295
@..api_idx_0008.l12:
    cmp word [bp - 0x0008], byte 0   ; 0x0297
    je short @..api_idx_0008.l15     ; 0x029b
    mov ax, word [data_9194]         ; 0x029d
    cmp ax, word [bp + 0x8]          ; 0x02a0
    jne short @..api_idx_0008.l13    ; 0x02a3
    cmp word [bp + 0xc], byte 0      ; 0x02a5
    je short @..api_idx_0008.l14     ; 0x02a9
@..api_idx_0008.l13:
    push word [bp + 0xa]             ; 0x02ab
    push word [bp + 0x8]             ; 0x02ae
    call loc_017f                    ; 0x02b1
    add sp, byte 4                   ; 0x02b4
@..api_idx_0008.l14:
    jmp short @..api_idx_0008.l17    ; 0x02b7
@..api_idx_0008.l15:
    mov ax, word [data_9194]         ; 0x02b9
    cmp ax, word [bp + 0x4]          ; 0x02bc
    jne short @..api_idx_0008.l16    ; 0x02bf
    cmp word [bp + 0xc], byte 0      ; 0x02c1
    je short @..api_idx_0008.l17     ; 0x02c5
@..api_idx_0008.l16:
    push word [bp + 0x6]             ; 0x02c7
    push word [bp + 0x4]             ; 0x02ca
    call loc_017f                    ; 0x02cd
    add sp, byte 4                   ; 0x02d0
@..api_idx_0008.l17:
    mov ax, word [bp + 0xe]          ; 0x02d3
    mov word [data_9198], ax         ; 0x02d6
    ret                              ; 0x02d9
%include "vmaze/api_idx_0002_3.asm"

%include "vmaze/api_idx_0002_4.asm"

loc_0344:
    mov ax, 0                        ; 0x0344
    call ds_dispatch_f40b            ; 0x0347
    mov ax, word [data_5b6e]         ; 0x034a
    jmp near @..local.l5             ; 0x034d

    db 0xb8, 0x1a, 0x00, 0x50, 0xb8, 0x19, 0x00, 0x50, 0xe8, 0x24, 0xfe, 0x83, 0xc4, 0x04, 0xe9, 0x88
    db 0x00, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x14
    db 0x00, 0x50, 0xb8, 0x15, 0x00, 0x50, 0xe8, 0x50, 0xfe, 0x83, 0xc4, 0x0c, 0xeb, 0x6b, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x1c, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xe8, 0x30, 0xfe, 0x83, 0xc4, 0x0c, 0xeb, 0x4b, 0xb8, 0x18
    db 0x00, 0x50, 0xb8, 0x1d, 0x00, 0x50, 0xe8, 0xd6, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x3b, 0xb8, 0x03
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x1b, 0x00, 0x50, 0xe8, 0x00, 0xfe, 0x83, 0xc4, 0x0c, 0xeb, 0x1b, 0x30, 0x54
    db 0x97, 0x53, 0xa8, 0x53, 0xc5, 0x53, 0xa8, 0x53, 0xe5, 0x53, 0xf5, 0x53

@..local.l5:
    cmp ax, strict word 7            ; 0x03dc
    jae short @..local.l6            ; 0x03df
    xchg bx, ax                      ; 0x03e1
    shl bx, 1                        ; 0x03e2
    jmp [cs:bx + 0x5415]             ; 0x03e4
@..local.l6:
    ret                              ; 0x03e9
%include "vmaze/api_idx_0002_5.asm"

    call api_idx_0002_4              ; 0x05e9
    add sp, byte 4                   ; 0x05ec
    mov ax, 4                        ; 0x05ef
    push ax                          ; 0x05f2
    mov ax, 0x913c                   ; 0x05f3
    push ax                          ; 0x05f6
    call api_idx_0002_4              ; 0x05f7
    add sp, byte 4                   ; 0x05fa
    mov ax, 5                        ; 0x05fd
    push ax                          ; 0x0600
    mov ax, 0x9149                   ; 0x0601
    push ax                          ; 0x0604
    call api_idx_0002_4              ; 0x0605
    add sp, byte 4                   ; 0x0608
    mov ax, 0xa                      ; 0x060b
    push ax                          ; 0x060e
    mov ax, 0x10                     ; 0x060f
    push ax                          ; 0x0612
    db 0xe8, 0x06, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0616
    mov ax, 0xb                      ; 0x0619
    push ax                          ; 0x061c
    mov ax, 0x36                     ; 0x061d
    push ax                          ; 0x0620
    db 0xe8, 0xf8, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0624
    mov ax, 0xc                      ; 0x0627
    push ax                          ; 0x062a
    mov ax, 0x3b                     ; 0x062b
    push ax                          ; 0x062e
    db 0xe8, 0xea, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0632
    mov ax, 9                        ; 0x0635
    push ax                          ; 0x0638
    mov ax, 0x53                     ; 0x0639
    push ax                          ; 0x063c
    db 0xe8, 0xdc, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0640
    mov ax, 0xd                      ; 0x0643
    push ax                          ; 0x0646
    mov ax, 0x38                     ; 0x0647
    push ax                          ; 0x064a
    db 0xe8, 0xce, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x064e
    mov word [data_5b6c], 2          ; 0x0651
    jmp short @..api_idx_0002_5.l5   ; 0x0657
    mov ax, 1                        ; 0x0659
    push ax                          ; 0x065c
    mov ax, 0x9156                   ; 0x065d
    push ax                          ; 0x0660
    call api_idx_0002_4              ; 0x0661
    add sp, byte 4                   ; 0x0664
    mov ax, 4                        ; 0x0667
    push ax                          ; 0x066a
    mov ax, 0x9163                   ; 0x066b
    push ax                          ; 0x066e
    call api_idx_0002_4              ; 0x066f
    add sp, byte 4                   ; 0x0672
    mov ax, 5                        ; 0x0675
    push ax                          ; 0x0678
    mov ax, 0x9170                   ; 0x0679
    push ax                          ; 0x067c
    call api_idx_0002_4              ; 0x067d
    add sp, byte 4                   ; 0x0680
    mov ax, 0xc                      ; 0x0683
    push ax                          ; 0x0686
    mov ax, 0x3b                     ; 0x0687
    push ax                          ; 0x068a
    db 0xe8, 0x8e, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x068e
    mov ax, 9                        ; 0x0691
    push ax                          ; 0x0694
    mov ax, 0x53                     ; 0x0695
    push ax                          ; 0x0698
    db 0xe8, 0x80, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x069c
    mov ax, 0xd                      ; 0x069f
    push ax                          ; 0x06a2
    mov ax, 0x3a                     ; 0x06a3
    push ax                          ; 0x06a6
    db 0xe8, 0x72, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x06aa
    mov word [data_5b6c], 1          ; 0x06ad
    jmp short @..api_idx_0002_5.l5   ; 0x06b3
    pop ss                           ; 0x06b5
    push di                          ; 0x06b6
    ficom word [si + 0x3b]           ; 0x06b7
    push bp                          ; 0x06ba
    jl short loc_0712                ; 0x06bb
    cmc                              ; 0x06bd
    push bp                          ; 0x06be
    sub byte [bp - 0x0060], dl       ; 0x06bf
    push si                          ; 0x06c2
@..api_idx_0002_5.l4:
    cmp ax, strict word 7            ; 0x06c3
    jae short @..api_idx_0002_5.l5   ; 0x06c6
    xchg bx, ax                      ; 0x06c8
    shl bx, 1                        ; 0x06c9
    jmp [cs:bx + 0x56fc]             ; 0x06cb
@..api_idx_0002_5.l5:
    call loc_0344                    ; 0x06d0
    mov word [data_5b70], 1          ; 0x06d3
    ret                              ; 0x06d9
%include "vmaze/api_idx_0014.asm"

    push ax                          ; 0x08da
    call api_idx_0004_6              ; 0x08db
    add sp, byte 0x0a                ; 0x08de
    test ax, ax                      ; 0x08e1
    jne short loc_0918               ; 0x08e3
    mov ax, word [bp - 0x0006]       ; 0x08e5
    mov cx, 6                        ; 0x08e8
    shl ax, cl                       ; 0x08eb
    mov cx, word [bp - 0x000a]       ; 0x08ed
    shl cx, 1                        ; 0x08f0
    shl cx, 1                        ; 0x08f2
    shl cx, 1                        ; 0x08f4
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp - 0x0008]       ; 0x08f8
    mov word [bp - 0x0014], ax       ; 0x08fb
    mov bx, word [bp - 0x0004]       ; 0x08fe
    push word [bx + 0x4]             ; 0x0901
    mov ax, 4                        ; 0x0904
    push ax                          ; 0x0907
    push word [bp - 0x0014]          ; 0x0908
    mov ax, word [data_0e14]         ; 0x090b
    add ax, 0x90                     ; 0x090e
    push ax                          ; 0x0911
    db 0xe8, 0x8f, 0xe3 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x0915
    jmp near @..api_idx_0014.l5      ; 0x0918
    push word [bp - 0x000e]          ; 0x091b
    mov ax, word [bp - 0x000c]       ; 0x091e
    dec ax                           ; 0x0921
    push ax                          ; 0x0922
    lea ax, word [bp - 0x0006]       ; 0x0923
    push ax                          ; 0x0926
    lea ax, word [bp - 0x000a]       ; 0x0927
    push ax                          ; 0x092a
    lea ax, word [bp - 0x0008]       ; 0x092b
    push ax                          ; 0x092e
    call api_idx_0004_6              ; 0x092f
    add sp, byte 0x0a                ; 0x0932
    test ax, ax                      ; 0x0935
    jne short loc_096c               ; 0x0937
    mov ax, word [bp - 0x0006]       ; 0x0939
    mov cx, 6                        ; 0x093c
    shl ax, cl                       ; 0x093f
    mov cx, word [bp - 0x000a]       ; 0x0941
    shl cx, 1                        ; 0x0944
    shl cx, 1                        ; 0x0946
    shl cx, 1                        ; 0x0948
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp - 0x0008]       ; 0x094c
    mov word [bp - 0x0014], ax       ; 0x094f
    mov bx, word [bp - 0x0004]       ; 0x0952
    push word [bx + 0x4]             ; 0x0955
    mov ax, 4                        ; 0x0958
    push ax                          ; 0x095b
    push word [bp - 0x0014]          ; 0x095c
    mov ax, word [data_0e14]         ; 0x095f
    add ax, 0x290                    ; 0x0962
    push ax                          ; 0x0965
    db 0xe8, 0x3b, 0xe3 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x0969
    jmp short @..api_idx_0014.l5     ; 0x096c
    push word [bp - 0x0010]          ; 0x096e
    mov ax, 6                        ; 0x0971
    push ax                          ; 0x0974
    push word [bp - 0x0014]          ; 0x0975
    mov ax, word [data_0e14]         ; 0x0978
    add ax, 0x4b0                    ; 0x097b
    push ax                          ; 0x097e
    db 0xe8, 0x22, 0xe3 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x0982
    push word [bp - 0x0012]          ; 0x0985
    mov ax, 2                        ; 0x0988
    push ax                          ; 0x098b
    push word [bp - 0x0014]          ; 0x098c
    mov ax, word [data_0e14]         ; 0x098f
    add ax, 0x7b0                    ; 0x0992
    push ax                          ; 0x0995
    db 0xe8, 0x0b, 0xe3 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x0999
    jmp short @..api_idx_0014.l5     ; 0x099c
    out 0x57, ax                     ; 0x099e
    aam 0x58                         ; 0x09a0
    int1                             ; 0x09a2
    pop ax                           ; 0x09a3
    push cs                          ; 0x09a4
    pop cx                           ; 0x09a5
    bound bx, dword [bx + di - 0x004b] ; 0x09a6
    pop cx                           ; 0x09a9
@..api_idx_0014.l4:
    cmp ax, strict word 6            ; 0x09aa
    jae short @..api_idx_0014.l5     ; 0x09ad
    xchg bx, ax                      ; 0x09af
    shl bx, 1                        ; 0x09b0
    jmp [cs:bx + 0x59e5]             ; 0x09b2
@..api_idx_0014.l5:
    add word [bp - 0x0004], byte 6   ; 0x09b7
    inc word [bp - 0x0002]           ; 0x09bb
@..api_idx_0014.l6:
    mov ax, word [bp - 0x0002]       ; 0x09be
    cmp ax, word [data_590e]         ; 0x09c1
    jge short @..api_idx_0014.l7     ; 0x09c5
    jmp near @..api_idx_0014.l1      ; 0x09c7
@..api_idx_0014.l7:
    ret                              ; 0x09ca
loc_09cb:
    mov ax, 0                        ; 0x09cb
    call ds_dispatch_f40b            ; 0x09ce
    mov ax, 0                        ; 0x09d1
    push ax                          ; 0x09d4
    push word [data_830c]            ; 0x09d5
    push word [data_0e14]            ; 0x09d9
    mov ax, 2                        ; 0x09dd
    push ax                          ; 0x09e0
    call ds_dispatch_b63c            ; 0x09e1
    add sp, byte 8                   ; 0x09e4
    mov ax, 0                        ; 0x09e7
    push ax                          ; 0x09ea
    push word [data_830c]            ; 0x09eb
    push word [data_0e12]            ; 0x09ef
    mov ax, 3                        ; 0x09f3
    push ax                          ; 0x09f6
    call ds_dispatch_b63c            ; 0x09f7
    add sp, byte 8                   ; 0x09fa
    mov ax, 0x80                     ; 0x09fd
    push ax                          ; 0x0a00
    push ds                          ; 0x0a01
    mov ax, 0x8b7e                   ; 0x0a02
    push ax                          ; 0x0a05
    mov ax, word [data_830c]         ; 0x0a06
    mov cx, 7                        ; 0x0a09
    shl ax, cl                       ; 0x0a0c
    mov cx, ax                       ; 0x0a0e
    mov ax, word [data_0e1a]         ; 0x0a10
    mov dx, word [data_0e1c]         ; 0x0a13
    add ax, cx                       ; 0x0a17
    push dx                          ; 0x0a19
    push ax                          ; 0x0a1a
    call ds_dispatch_afcc            ; 0x0a1b
    add sp, byte 0x0a                ; 0x0a1e
    mov ax, 0x80                     ; 0x0a21
    push ax                          ; 0x0a24
    push ds                          ; 0x0a25
    mov ax, 0x8afe                   ; 0x0a26
    push ax                          ; 0x0a29
    mov ax, word [data_830c]         ; 0x0a2a
    mov cx, 7                        ; 0x0a2d
    shl ax, cl                       ; 0x0a30
    mov cx, ax                       ; 0x0a32
    mov ax, word [data_0e16]         ; 0x0a34
    mov dx, word [data_0e18]         ; 0x0a37
    add ax, cx                       ; 0x0a3b
    push dx                          ; 0x0a3d
    push ax                          ; 0x0a3e
    call ds_dispatch_afcc            ; 0x0a3f
    add sp, byte 0x0a                ; 0x0a42
    call api_idx_0014                ; 0x0a45
    mov bx, word [data_0e14]         ; 0x0a48
    mov si, word [data_8f3e]         ; 0x0a4c
    mov al, byte [bx + si + 0x490]   ; 0x0a50
    sub ah, ah                       ; 0x0a54
    add ax, word [data_8f42]         ; 0x0a56
    mov word [data_8f46], ax         ; 0x0a5a
    mov al, byte [bx + si + 0x4a0]   ; 0x0a5d
    sub ah, ah                       ; 0x0a61
    add ax, word [data_8f40]         ; 0x0a63
    mov word [data_8f44], ax         ; 0x0a67
    call api_idx_0002_5              ; 0x0a6a
    ret                              ; 0x0a6d
%include "vmaze/api_idx_0006.asm"

%include "vmaze/api_idx_0002_6.asm"

%include "vmaze/math_loc_0b14.asm"

%include "vmaze/api_idx_0002_7.asm"

@..api_idx_0002_7.l1:
    push word [bp + 0xa]             ; 0x0bb0
    push word [bp - 0x0002]          ; 0x0bb3
    mov ax, 0x8b7e                   ; 0x0bb6
    push ax                          ; 0x0bb9
    call ds_dispatch_ec41            ; 0x0bba
    add sp, byte 6                   ; 0x0bbd
    mov ax, 4                        ; 0x0bc0
    push ax                          ; 0x0bc3
    push word [bp - 0x0002]          ; 0x0bc4
    mov ax, word [data_0e14]         ; 0x0bc7
    add ax, 0x90                     ; 0x0bca
    push ax                          ; 0x0bcd
    call ds_dispatch_ecf6            ; 0x0bce
    add sp, byte 6                   ; 0x0bd1
    test ax, ax                      ; 0x0bd4
    jne short @..api_idx_0002_7.l2   ; 0x0bd6
    cmp word [bp + 0x8], byte 7      ; 0x0bd8
    jge short @..api_idx_0002_7.l2   ; 0x0bdc
    push word [bp + 0xa]             ; 0x0bde
    mov ax, word [bp + 0x8]          ; 0x0be1
    inc ax                           ; 0x0be4
    push ax                          ; 0x0be5
    push word [bp + 0x6]             ; 0x0be6
    push word [bp + 0x4]             ; 0x0be9
    call api_idx_0002_7              ; 0x0bec
    add sp, byte 8                   ; 0x0bef
@..api_idx_0002_7.l2:
    mov ax, 4                        ; 0x0bf2
    push ax                          ; 0x0bf5
    push word [bp - 0x0002]          ; 0x0bf6
    mov ax, word [data_0e14]         ; 0x0bf9
    add ax, 0x290                    ; 0x0bfc
    push ax                          ; 0x0bff
    call ds_dispatch_ecf6            ; 0x0c00
    add sp, byte 6                   ; 0x0c03
    test ax, ax                      ; 0x0c06
    jne short @..api_idx_0002_7.l3   ; 0x0c08
    cmp word [bp + 0x6], byte 7      ; 0x0c0a
    jge short @..api_idx_0002_7.l3   ; 0x0c0e
    push word [bp + 0xa]             ; 0x0c10
    push word [bp + 0x8]             ; 0x0c13
    mov ax, word [bp + 0x6]          ; 0x0c16
    inc ax                           ; 0x0c19
    push ax                          ; 0x0c1a
    push word [bp + 0x4]             ; 0x0c1b
    call api_idx_0002_7              ; 0x0c1e
    add sp, byte 8                   ; 0x0c21
@..api_idx_0002_7.l3:
    cmp word [bp + 0x8], byte 0      ; 0x0c24
    jle short @..api_idx_0002_7.l4   ; 0x0c28
    mov ax, 4                        ; 0x0c2a
    push ax                          ; 0x0c2d
    mov ax, word [bp + 0x4]          ; 0x0c2e
    mov cx, 6                        ; 0x0c31
    shl ax, cl                       ; 0x0c34
    mov cx, word [bp + 0x8]          ; 0x0c36
    shl cx, 1                        ; 0x0c39
    shl cx, 1                        ; 0x0c3b
    shl cx, 1                        ; 0x0c3d
    add ax, cx                       ; 0x0c3f
    add ax, word [bp + 0x6]          ; 0x0c41
    add ax, strict word 0xfff8       ; 0x0c44
    push ax                          ; 0x0c47
    mov ax, word [data_0e14]         ; 0x0c48
    add ax, 0x90                     ; 0x0c4b
    push ax                          ; 0x0c4e
    call ds_dispatch_ecf6            ; 0x0c4f
    add sp, byte 6                   ; 0x0c52
    test ax, ax                      ; 0x0c55
    jne short @..api_idx_0002_7.l4   ; 0x0c57
    push word [bp + 0xa]             ; 0x0c59
    mov ax, word [bp + 0x8]          ; 0x0c5c
    dec ax                           ; 0x0c5f
    push ax                          ; 0x0c60
    push word [bp + 0x6]             ; 0x0c61
    push word [bp + 0x4]             ; 0x0c64
    call api_idx_0002_7              ; 0x0c67
    add sp, byte 8                   ; 0x0c6a
@..api_idx_0002_7.l4:
    cmp word [bp + 0x6], byte 0      ; 0x0c6d
    jle short @..api_idx_0002_7.l5   ; 0x0c71
    mov ax, 4                        ; 0x0c73
    push ax                          ; 0x0c76
    mov ax, word [bp + 0x4]          ; 0x0c77
    mov cx, 6                        ; 0x0c7a
    shl ax, cl                       ; 0x0c7d
    mov cx, word [bp + 0x8]          ; 0x0c7f
    shl cx, 1                        ; 0x0c82
    shl cx, 1                        ; 0x0c84
    shl cx, 1                        ; 0x0c86
    add ax, cx                       ; 0x0c88
    add ax, word [bp + 0x6]          ; 0x0c8a
    dec ax                           ; 0x0c8d
    push ax                          ; 0x0c8e
    mov ax, word [data_0e14]         ; 0x0c8f
    add ax, 0x290                    ; 0x0c92
    push ax                          ; 0x0c95
    call ds_dispatch_ecf6            ; 0x0c96
    add sp, byte 6                   ; 0x0c99
    test ax, ax                      ; 0x0c9c
    jne short @..api_idx_0002_7.l5   ; 0x0c9e
    push word [bp + 0xa]             ; 0x0ca0
    push word [bp + 0x8]             ; 0x0ca3
    mov ax, word [bp + 0x6]          ; 0x0ca6
    dec ax                           ; 0x0ca9
    push ax                          ; 0x0caa
    push word [bp + 0x4]             ; 0x0cab
    call api_idx_0002_7              ; 0x0cae
    add sp, byte 8                   ; 0x0cb1
@..api_idx_0002_7.l5:
    ret                              ; 0x0cb4
%include "vmaze/api_idx_000c.asm"

@..api_idx_000c.l1:
    call loc_09cb                    ; 0x0cf8
    mov ax, 0x10                     ; 0x0cfb
    push ax                          ; 0x0cfe
    mov ax, word [data_830c]         ; 0x0cff
    mov cx, 4                        ; 0x0d02
    shl ax, cl                       ; 0x0d05
    add ax, 0x8d14                   ; 0x0d07
    push ax                          ; 0x0d0a
    mov ax, word [data_830c]         ; 0x0d0b
    shl ax, cl                       ; 0x0d0e
    add ax, 0x5642                   ; 0x0d10
    push ax                          ; 0x0d13
    call ds_dispatch_fedc            ; 0x0d14
    add sp, byte 6                   ; 0x0d17
    mov word [data_905e], 5          ; 0x0d1a
    mov word [data_8f24], 0xffff     ; 0x0d20
    mov ax, 0                        ; 0x0d26
    push ax                          ; 0x0d29
    mov ax, 0x80                     ; 0x0d2a
    push ax                          ; 0x0d2d
    mov ax, 0x8c7e                   ; 0x0d2e
    push ax                          ; 0x0d31
    call ds_dispatch_f306            ; 0x0d32
    add sp, byte 6                   ; 0x0d35
    mov bx, word [data_0e12]         ; 0x0d38
    mov si, word [data_8f3e]         ; 0x0d3c
    mov al, byte [bx + si + 0xb40]   ; 0x0d40
    sub ah, ah                       ; 0x0d44
    mov word [data_8d12], ax         ; 0x0d46
    mov word [bp - 0x0002], 0        ; 0x0d49
@..api_idx_000c.l2:
    mov bx, word [data_0e12]         ; 0x0d4e
    mov si, word [bp - 0x0002]       ; 0x0d52
    mov al, byte [bx + si + 0xb40]   ; 0x0d55
    sub ah, ah                       ; 0x0d59
    mov word [bp - 0x0004], ax       ; 0x0d5b
@..api_idx_000c.l3:
    cmp word [bp - 0x0004], strict word 0xf0 ; 0x0d5e
    jge short @..api_idx_000c.l5     ; 0x0d63
    mov si, word [bp - 0x0004]       ; 0x0d65
    mov bx, word [data_0e12]         ; 0x0d68
    mov al, byte [bx + si + 0x870]   ; 0x0d6c
    sub ah, ah                       ; 0x0d70
    cmp ax, word [bp - 0x0002]       ; 0x0d72
    jne short @..api_idx_000c.l5     ; 0x0d75
    cmp byte [bx + si + 0x5a0], 0    ; 0x0d77
    jbe short @..api_idx_000c.l4     ; 0x0d7c
    mov ax, 1                        ; 0x0d7e
    push ax                          ; 0x0d81
    mov ax, word [bp - 0x0002]       ; 0x0d82
    mov cx, 6                        ; 0x0d85
    shl ax, cl                       ; 0x0d88
    push ax                          ; 0x0d8a
    mov al, byte [bx + si + 0x780]   ; 0x0d8b
    sub ah, ah                       ; 0x0d8f
    mov cx, ax                       ; 0x0d91
    shl ax, 1                        ; 0x0d93
    shl ax, 1                        ; 0x0d95
    shl ax, 1                        ; 0x0d97
    mov cx, ax                       ; 0x0d99
    pop ax                           ; 0x0d9b
    add ax, cx                       ; 0x0d9c
    push ax                          ; 0x0d9e
    mov al, byte [bx + si + 0x690]   ; 0x0d9f
    sub ah, ah                       ; 0x0da3
    mov cx, ax                       ; 0x0da5
    pop ax                           ; 0x0da7
    add ax, cx                       ; 0x0da8
    push ax                          ; 0x0daa
    mov ax, 0x8c7e                   ; 0x0dab
    push ax                          ; 0x0dae
    call ds_dispatch_ec41            ; 0x0daf
    add sp, byte 6                   ; 0x0db2
@..api_idx_000c.l4:
    inc word [bp - 0x0004]           ; 0x0db5
    jmp short @..api_idx_000c.l3     ; 0x0db8
@..api_idx_000c.l5:
    inc word [bp - 0x0002]           ; 0x0dba
    mov ax, word [bp - 0x0002]       ; 0x0dbd
    cmp ax, strict word 0x10         ; 0x0dc0
    jl short @..api_idx_000c.l2      ; 0x0dc3
    mov ax, 0                        ; 0x0dc5
    push ax                          ; 0x0dc8
    mov ax, 0x80                     ; 0x0dc9
    push ax                          ; 0x0dcc
    mov ax, 0x8bfe                   ; 0x0dcd
    push ax                          ; 0x0dd0
    call ds_dispatch_f306            ; 0x0dd1
    add sp, byte 6                   ; 0x0dd4
    mov ax, word [data_0e0e]         ; 0x0dd7
    mov word [bp - 0x000c], ax       ; 0x0dda
    mov word [bp - 0x0002], 0        ; 0x0ddd
    jmp short @..api_idx_000c.l8     ; 0x0de2
@..api_idx_000c.l6:
    mov bx, word [bp - 0x000c]       ; 0x0de4
    mov al, byte [bx]                ; 0x0de7
    sub ah, ah                       ; 0x0de9
    cmp ax, word [data_830c]         ; 0x0deb
    jne short @..api_idx_000c.l7     ; 0x0def
    mov ax, word [bx + 0x2]          ; 0x0df1
    mov cx, 0x100                    ; 0x0df4
    cwd                              ; 0x0df7
    idiv cx                          ; 0x0df8
    mov word [bp - 0x0006], ax       ; 0x0dfa
    mov ax, word [bx + 0x2]          ; 0x0dfd
    cwd                              ; 0x0e00
    idiv cx                          ; 0x0e01
    mov ax, dx                       ; 0x0e03
    mov cx, 0x10                     ; 0x0e05
    cwd                              ; 0x0e08
    idiv cx                          ; 0x0e09
    mov word [bp - 0x0008], ax       ; 0x0e0b
    mov ax, word [bx + 0x2]          ; 0x0e0e
    mov cx, 0x100                    ; 0x0e11
    cwd                              ; 0x0e14
    idiv cx                          ; 0x0e15
    mov ax, dx                       ; 0x0e17
    mov cx, 0x10                     ; 0x0e19
    cwd                              ; 0x0e1c
    idiv cx                          ; 0x0e1d
    mov word [bp - 0x000a], dx       ; 0x0e1f
    mov ax, 1                        ; 0x0e22
    push ax                          ; 0x0e25
    mov ax, word [bp - 0x0006]       ; 0x0e26
    mov cx, 6                        ; 0x0e29
    shl ax, cl                       ; 0x0e2c
    shl dx, 1                        ; 0x0e2e
    shl dx, 1                        ; 0x0e30
    shl dx, 1                        ; 0x0e32
    mov cx, dx                       ; 0x0e34
    add ax, cx                       ; 0x0e36
    add ax, word [bp - 0x0008]       ; 0x0e38
    push ax                          ; 0x0e3b
    mov ax, 0x8bfe                   ; 0x0e3c
    push ax                          ; 0x0e3f
    call ds_dispatch_ec41            ; 0x0e40
    add sp, byte 6                   ; 0x0e43
@..api_idx_000c.l7:
    add word [bp - 0x000c], byte 8   ; 0x0e46
    inc word [bp - 0x0002]           ; 0x0e4a
@..api_idx_000c.l8:
    mov ax, word [bp - 0x0002]       ; 0x0e4d
    cmp ax, word [data_5910]         ; 0x0e50
    jl short @..api_idx_000c.l6      ; 0x0e54
    mov word [data_830a], 5          ; 0x0e56
    ret                              ; 0x0e5c
%include "vmaze/api_idx_0002_8.asm"

loc_0ea6:
    mov ax, 0                        ; 0x0ea6
    call ds_dispatch_f40b            ; 0x0ea9
    les bx, word [0x0002]            ; 0x0eac
    mov ax, word [es:bx]             ; 0x0eb0
    mov dx, word [es:bx + 0x2]       ; 0x0eb3
    cmp dx, word [data_919c]         ; 0x0eb7
    jl short @..local.l7             ; 0x0ebb
    jne short @..local.l8            ; 0x0ebd
    cmp ax, word [data_919a]         ; 0x0ebf
    ja short @..local.l8             ; 0x0ec3
@..local.l7:
    jmp short @..local.l12           ; 0x0ec5
@..local.l8:
    call api_idx_0002_2              ; 0x0ec7
    mov ax, 0x3c                     ; 0x0eca
    push ax                          ; 0x0ecd
    call ds_dispatch_b7a9            ; 0x0ece
    pop cx                           ; 0x0ed1
    cwd                              ; 0x0ed2
    push ax                          ; 0x0ed3
    push dx                          ; 0x0ed4
    cmp word [data_5b6e], byte 3     ; 0x0ed5
    je short @..local.l9             ; 0x0eda
    cmp word [data_5b6e], byte 5     ; 0x0edc
    jne short @..local.l10           ; 0x0ee1
@..local.l9:
    mov ax, 0x3c                     ; 0x0ee3
    jmp short @..local.l11           ; 0x0ee6
@..local.l10:
    mov ax, 0                        ; 0x0ee8
@..local.l11:
    cwd                              ; 0x0eeb
    mov cx, ax                       ; 0x0eec
    mov bx, dx                       ; 0x0eee
    pop dx                           ; 0x0ef0
    pop ax                           ; 0x0ef1
    add ax, cx                       ; 0x0ef2
    adc dx, bx                       ; 0x0ef4
    les bx, word [0x0002]            ; 0x0ef6
    mov cx, word [es:bx]             ; 0x0efa
    mov bx, word [es:bx + 0x2]       ; 0x0efd
    add ax, cx                       ; 0x0f01
    adc dx, bx                       ; 0x0f03
    mov word [data_919c], dx         ; 0x0f05
    mov word [data_919a], ax         ; 0x0f09
    jmp short @..local.l13           ; 0x0f0c
@..local.l12:
    cmp word [bp + 0x4], byte 0      ; 0x0f0e
    je short @..local.l13            ; 0x0f12
    mov ax, 0xa                      ; 0x0f14
    push ax                          ; 0x0f17
    call ds_dispatch_e489            ; 0x0f18
    pop cx                           ; 0x0f1b
@..local.l13:
    ret                              ; 0x0f1c
%include "vmaze/math_loc_0f1d.asm"

@..math_loc_0f1d.l3:
    mov ax, 0                        ; 0x0f64
    ret                              ; 0x0f67
%include "vmaze/math_loc_0f68.asm"

@..math_loc_0f68.l1:
    mov ax, 0                        ; 0x0f8a
    ret                              ; 0x0f8d
%include "vmaze/api_idx_0006_2.asm"

@..api_idx_0006_2.l4:
    call math_loc_0f68               ; 0x0fd1
    not ax                           ; 0x0fd4
    push ax                          ; 0x0fd6
    call loc_0ea6                    ; 0x0fd7
    pop cx                           ; 0x0fda
    jmp short @..api_idx_0006_2.l1   ; 0x0fdb
@..api_idx_0006_2.l5:
    ret                              ; 0x0fdd
%include "vmaze/api_idx_0008_2.asm"

%include "vmaze/api_idx_0050.asm"

%include "vmaze/math_loc_10b0.asm"

%include "vmaze/api_idx_0002_9.asm"

loc_1165:
    mov ax, 0                        ; 0x1165
    call ds_dispatch_f40b            ; 0x1168
    mov ax, word [bp + 0x4]          ; 0x116b
    jmp short @..local.l18           ; 0x116e
@..local.l14:
    mov ax, 4                        ; 0x1170
    push ax                          ; 0x1173
    mov ax, word [bp + 0x6]          ; 0x1174
    mov cx, 6                        ; 0x1177
    shl ax, cl                       ; 0x117a
    mov cx, word [bp + 0xa]          ; 0x117c
    shl cx, 1                        ; 0x117f
    shl cx, 1                        ; 0x1181
    shl cx, 1                        ; 0x1183
    add ax, cx                       ; 0x1185
    add ax, word [bp + 0x8]          ; 0x1187
    push ax                          ; 0x118a
    mov ax, word [data_0e14]         ; 0x118b
    add ax, 0x90                     ; 0x118e
    push ax                          ; 0x1191
    call ds_dispatch_ecf6            ; 0x1192
    add sp, byte 6                   ; 0x1195
    ret                              ; 0x1198
@..local.l15:
    mov ax, 4                        ; 0x1199
    push ax                          ; 0x119c
    mov ax, word [bp + 0x6]          ; 0x119d
    mov cx, 6                        ; 0x11a0
    shl ax, cl                       ; 0x11a3
    mov cx, word [bp + 0xa]          ; 0x11a5
    shl cx, 1                        ; 0x11a8
    shl cx, 1                        ; 0x11aa
    shl cx, 1                        ; 0x11ac
    add ax, cx                       ; 0x11ae
    add ax, word [bp + 0x8]          ; 0x11b0
    push ax                          ; 0x11b3
    mov ax, word [data_0e14]         ; 0x11b4
    add ax, 0x290                    ; 0x11b7
    push ax                          ; 0x11ba
    call ds_dispatch_ecf6            ; 0x11bb
    add sp, byte 6                   ; 0x11be
    ret                              ; 0x11c1
@..local.l16:
    push word [bp + 0x6]             ; 0x11c2
    push word [bp + 0xa]             ; 0x11c5
    push word [bp + 0x8]             ; 0x11c8
    push word [bp + 0xe]             ; 0x11cb
    push word [bp + 0xc]             ; 0x11ce
    call math_loc_2d94               ; 0x11d1
    add sp, byte 0x0a                ; 0x11d4
    ret                              ; 0x11d7
@..local.l17:
    push word [bp + 0x6]             ; 0x11d8
    push word [bp + 0xa]             ; 0x11db
    push word [bp + 0x8]             ; 0x11de
    push word [bp + 0xe]             ; 0x11e1
    push word [bp + 0xc]             ; 0x11e4
    call math_loc_2e0c               ; 0x11e7
    add sp, byte 0x0a                ; 0x11ea
    ret                              ; 0x11ed
@..local.l18:
    cmp ax, strict word 0            ; 0x11ee
    jne short @..local.l19           ; 0x11f1
    jmp near @..local.l14            ; 0x11f3
@..local.l19:
    cmp ax, strict word 1            ; 0x11f6
    je short @..local.l15            ; 0x11f9
    cmp ax, strict word 2            ; 0x11fb
    je short @..local.l16            ; 0x11fe
    cmp ax, strict word 3            ; 0x1200
    je short @..local.l17            ; 0x1203
    ret                              ; 0x1205
%include "vmaze/api_idx_0002_10.asm"

loc_1240:
    mov ax, 0                        ; 0x1240
    call ds_dispatch_f40b            ; 0x1243
    mov word [data_91a8], 1          ; 0x1246
    mov ax, 0                        ; 0x124c
    push ax                          ; 0x124f
    mov ax, 8                        ; 0x1250
    push ax                          ; 0x1253
    mov ax, 0x8cfe                   ; 0x1254
    push ax                          ; 0x1257
    call ds_dispatch_f306            ; 0x1258
    add sp, byte 6                   ; 0x125b
    mov word [data_82ea], 0          ; 0x125e
    mov ax, word [bp + 0x4]          ; 0x1264
    jmp short @..local.l24           ; 0x1267
@..local.l20:
    mov ax, word [bp + 0x6]          ; 0x1269
    add word [data_8f44], ax         ; 0x126c
    jmp short @..local.l25           ; 0x1270
@..local.l21:
    mov ax, word [bp + 0x6]          ; 0x1272
    add word [data_8f46], ax         ; 0x1275
    jmp short @..local.l25           ; 0x1279
@..local.l22:
    mov ax, word [bp + 0x6]          ; 0x127b
    sub word [data_8f44], ax         ; 0x127e
    jmp short @..local.l25           ; 0x1282
@..local.l23:
    mov ax, word [bp + 0x6]          ; 0x1284
    sub word [data_8f46], ax         ; 0x1287
    jmp short @..local.l25           ; 0x128b
@..local.l24:
    cmp ax, strict word 0            ; 0x128d
    je short @..local.l20            ; 0x1290
    cmp ax, strict word 1            ; 0x1292
    je short @..local.l21            ; 0x1295
    cmp ax, strict word 2            ; 0x1297
    je short @..local.l22            ; 0x129a
    cmp ax, strict word 3            ; 0x129c
    je short @..local.l23            ; 0x129f
@..local.l25:
    ret                              ; 0x12a1
loc_12a2:
    mov ax, 0                        ; 0x12a2
    call ds_dispatch_f40b            ; 0x12a5
    mov ax, word [data_8f46]         ; 0x12a8
    mov word [data_8f3a], ax         ; 0x12ab
    mov ax, word [data_8f44]         ; 0x12ae
    mov word [data_8f38], ax         ; 0x12b1
    mov ax, word [data_8f42]         ; 0x12b4
    mov word [data_8f36], ax         ; 0x12b7
    mov ax, word [data_8f40]         ; 0x12ba
    mov word [data_8f34], ax         ; 0x12bd
    mov ax, word [data_8f3e]         ; 0x12c0
    mov word [data_8f32], ax         ; 0x12c3
    mov ax, word [data_830c]         ; 0x12c6
    mov word [data_8f3c], ax         ; 0x12c9
    mov ax, word [data_82ee]         ; 0x12cc
    mov word [data_8f30], ax         ; 0x12cf
    ret                              ; 0x12d2
loc_12d3:
    mov ax, 0                        ; 0x12d3
    call ds_dispatch_f40b            ; 0x12d6
    push word [bp + 0x4]             ; 0x12d9
    call api_idx_0050                ; 0x12dc
    pop cx                           ; 0x12df
    call ds_dispatch_ec17            ; 0x12e0
    push word [bp + 0x6]             ; 0x12e3
    call ds_dispatch_b7e0            ; 0x12e6
    pop cx                           ; 0x12e9
    push word [bp + 0x8]             ; 0x12ea
    call api_idx_0006_2              ; 0x12ed
    pop cx                           ; 0x12f0
    mov ax, 0x98                     ; 0x12f1
    push ax                          ; 0x12f4
    mov ax, 0x13f                    ; 0x12f5
    push ax                          ; 0x12f8
    mov ax, 0x92                     ; 0x12f9
    push ax                          ; 0x12fc
    mov ax, 0                        ; 0x12fd
    push ax                          ; 0x1300
    call ds_dispatch_e8da            ; 0x1301
    add sp, byte 8                   ; 0x1304
    ret                              ; 0x1307
%include "vmaze/api_idx_0004.asm"

@..api_idx_0004.l5:
    mov ax, 0                        ; 0x13bc
    ret                              ; 0x13bf
%include "vmaze/math_loc_13c0.asm"

%include "vmaze/api_idx_0004_2.asm"

@..api_idx_0004_2.l1:
    call loc_676c                    ; 0x1417
    mov word [bp - 0x0002], 0        ; 0x141a
    jmp near @..api_idx_0004_2.l7    ; 0x141f
@..api_idx_0004_2.l2:
    push word [bp - 0x0002]          ; 0x1422
    call ds_dispatch_ca85            ; 0x1425
    pop cx                           ; 0x1428
    test ax, ax                      ; 0x1429
    jne short @..api_idx_0004_2.l4   ; 0x142b
    mov ax, 0x248                    ; 0x142d
    imul word [bp - 0x0002]          ; 0x1430
    mov bx, ax                       ; 0x1433
    cmp byte [bx + 0x5e2f], 3        ; 0x1435
    jae short @..api_idx_0004_2.l3   ; 0x143a
    mov ax, 1                        ; 0x143c
    push ax                          ; 0x143f
    push word [bp - 0x0002]          ; 0x1440
    call math_loc_10b0               ; 0x1443
    add sp, byte 4                   ; 0x1446
    mov ax, 0                        ; 0x1449
    push ax                          ; 0x144c
    mov ax, 0x80d                    ; 0x144d
    push ax                          ; 0x1450
    push word [bp - 0x0002]          ; 0x1451
    call api_idx_0050_2              ; 0x1454
    add sp, byte 6                   ; 0x1457
@..api_idx_0004_2.l3:
    jmp near @..api_idx_0004_2.l6    ; 0x145a
@..api_idx_0004_2.l4:
    mov ax, 4                        ; 0x145d
    push ax                          ; 0x1460
    call ds_dispatch_b7a9            ; 0x1461
    pop cx                           ; 0x1464
    mov cx, ax                       ; 0x1465
    add ax, strict word 7            ; 0x1467
    mov cx, ax                       ; 0x146a
    mov ax, 0x248                    ; 0x146c
    imul word [bp - 0x0002]          ; 0x146f
    mov bx, ax                       ; 0x1472
    mov al, byte [bx + 0x5d76]       ; 0x1474
    sub ah, ah                       ; 0x1478
    cwd                              ; 0x147a
    idiv cx                          ; 0x147b
    mov cx, ax                       ; 0x147d
    inc ax                           ; 0x147f
    mov cx, ax                       ; 0x1480
    mov ax, word [bx + 0x5c12]       ; 0x1482
    cwd                              ; 0x1486
    idiv cx                          ; 0x1487
    push ax                          ; 0x1489
    mov ax, word [bx + 0x5c12]       ; 0x148a
    mov cx, 0xa                      ; 0x148e
    cwd                              ; 0x1491
    idiv cx                          ; 0x1492
    push ax                          ; 0x1494
    call ds_dispatch_b7a9            ; 0x1495
    pop cx                           ; 0x1498
    mov cx, ax                       ; 0x1499
    pop ax                           ; 0x149b
    add ax, cx                       ; 0x149c
    mov word [bp - 0x0004], ax       ; 0x149e
    push ax                          ; 0x14a1
    mov ax, 0x248                    ; 0x14a2
    imul word [bp - 0x0002]          ; 0x14a5
    mov bx, ax                       ; 0x14a8
    pop ax                           ; 0x14aa
    sub word [bx + 0x5c10], ax       ; 0x14ab
    cmp word [bx + 0x5c10], byte 0   ; 0x14af
    jg short @..api_idx_0004_2.l5    ; 0x14b4
    mov ax, 1                        ; 0x14b6
    push ax                          ; 0x14b9
    push word [bp - 0x0002]          ; 0x14ba
    call math_loc_10b0               ; 0x14bd
    add sp, byte 4                   ; 0x14c0
    mov ax, 0                        ; 0x14c3
    push ax                          ; 0x14c6
    mov ax, 0x80d                    ; 0x14c7
    push ax                          ; 0x14ca
    push word [bp - 0x0002]          ; 0x14cb
    call api_idx_0050_2              ; 0x14ce
    add sp, byte 6                   ; 0x14d1
    jmp short @..api_idx_0004_2.l6   ; 0x14d4
@..api_idx_0004_2.l5:
    mov ax, 3                        ; 0x14d6
    push ax                          ; 0x14d9
    mov ax, 0xa                      ; 0x14da
    push ax                          ; 0x14dd
    push word [bp - 0x0002]          ; 0x14de
    call math_loc_6fbf               ; 0x14e1
    add sp, byte 6                   ; 0x14e4
    mov ax, 1                        ; 0x14e7
    push ax                          ; 0x14ea
    push word [bp - 0x0002]          ; 0x14eb
    call ds_dispatch_cb3a            ; 0x14ee
    add sp, byte 4                   ; 0x14f1
@..api_idx_0004_2.l6:
    inc word [bp - 0x0002]           ; 0x14f4
@..api_idx_0004_2.l7:
    mov ax, word [bp - 0x0002]       ; 0x14f7
    cmp ax, word [data_69c8]         ; 0x14fa
    jge short @..api_idx_0004_2.l8   ; 0x14fe
    jmp near @..api_idx_0004_2.l2    ; 0x1500
@..api_idx_0004_2.l8:
    ret                              ; 0x1503
%include "vmaze/api_idx_0004_3.asm"

%include "vmaze/api_idx_000e.asm"

@..api_idx_000e.l3:
    cmp word [data_919e], byte 0     ; 0x16c0
    jne short @..api_idx_000e.l4     ; 0x16c5
    call math_loc_13c0               ; 0x16c7
@..api_idx_000e.l4:
    call api_idx_0004_3              ; 0x16ca
    jmp near @..api_idx_000e.l13     ; 0x16cd
@..api_idx_000e.l5:
    call api_idx_0004_2              ; 0x16d0
    jmp near @..api_idx_000e.l17     ; 0x16d3
@..api_idx_000e.l6:
    mov ax, 4                        ; 0x16d6
    push ax                          ; 0x16d9
    mov ax, 0x809                    ; 0x16da
    push ax                          ; 0x16dd
    call api_idx_0002_9              ; 0x16de
    add sp, byte 4                   ; 0x16e1
    mov ax, 1                        ; 0x16e4
    ret                              ; 0x16e7
@..api_idx_000e.l7:
    mov word [bp - 0x000e], 0        ; 0x16e8
    jmp near @..api_idx_000e.l10     ; 0x16ed
@..api_idx_000e.l8:
    mov ax, 0x248                    ; 0x16f0
    imul word [bp - 0x000e]          ; 0x16f3
    mov bx, ax                       ; 0x16f6
    cmp byte [bx + 0x5e2f], 0        ; 0x16f8
    jne short @..api_idx_000e.l9     ; 0x16fd
    cmp byte [bx + 0x5d83], 0        ; 0x16ff
    jne short @..api_idx_000e.l9     ; 0x1704
    mov ax, 0x64                     ; 0x1706
    push ax                          ; 0x1709
    call ds_dispatch_b7a9            ; 0x170a
    pop cx                           ; 0x170d
    push ax                          ; 0x170e
    mov ax, 0x248                    ; 0x170f
    imul word [bp - 0x000e]          ; 0x1712
    mov bx, ax                       ; 0x1715
    mov al, byte [bx + 0x5da5]       ; 0x1717
    sub ah, ah                       ; 0x171b
    mov cx, ax                       ; 0x171d
    pop ax                           ; 0x171f
    cmp ax, cx                       ; 0x1720
    jle short @..api_idx_000e.l9     ; 0x1722
    mov ax, 0xfa                     ; 0x1724
    push ax                          ; 0x1727
    mov ax, 0                        ; 0x1728
    push ax                          ; 0x172b
    mov ax, 5                        ; 0x172c
    push ax                          ; 0x172f
    call ds_dispatch_b7a9            ; 0x1730
    pop cx                           ; 0x1733
    push ax                          ; 0x1734
    mov ax, 0x248                    ; 0x1735
    imul word [bp - 0x000e]          ; 0x1738
    mov bx, ax                       ; 0x173b
    mov al, byte [bx + 0x5d5c]       ; 0x173d
    sub ah, ah                       ; 0x1741
    mov cx, ax                       ; 0x1743
    pop ax                           ; 0x1745
    add ax, cx                       ; 0x1746
    add ax, strict word 5            ; 0x1748
    push ax                          ; 0x174b
    call ds_dispatch_b7c2            ; 0x174c
    add sp, byte 6                   ; 0x174f
    push ax                          ; 0x1752
    mov ax, 0x248                    ; 0x1753
    imul word [bp - 0x000e]          ; 0x1756
    mov bx, ax                       ; 0x1759
    pop ax                           ; 0x175b
    mov byte [bx + 0x5d5c], al       ; 0x175c
    mov ax, 1                        ; 0x1760
    push ax                          ; 0x1763
    push word [bp - 0x000e]          ; 0x1764
    call ds_dispatch_cb3a            ; 0x1767
    add sp, byte 4                   ; 0x176a
@..api_idx_000e.l9:
    inc word [bp - 0x000e]           ; 0x176d
@..api_idx_000e.l10:
    mov ax, word [bp - 0x000e]       ; 0x1770
    cmp ax, word [data_69c8]         ; 0x1773
    jge short @..api_idx_000e.l11    ; 0x1777
    jmp near @..api_idx_000e.l8      ; 0x1779
@..api_idx_000e.l11:
    jmp short @..api_idx_000e.l17    ; 0x177c
@..api_idx_000e.l12:
    mov ax, 4                        ; 0x177e
    push ax                          ; 0x1781
    mov ax, 0x7e6                    ; 0x1782
    push ax                          ; 0x1785
    call api_idx_0002_9              ; 0x1786
    add sp, byte 4                   ; 0x1789
    mov ax, 1                        ; 0x178c
    ret                              ; 0x178f
@..api_idx_000e.l13:
    cmp ax, strict word 1            ; 0x1790
    jne short @..api_idx_000e.l14    ; 0x1793
    jmp near @..api_idx_000e.l5      ; 0x1795
@..api_idx_000e.l14:
    cmp ax, strict word 2            ; 0x1798
    jne short @..api_idx_000e.l15    ; 0x179b
    jmp near @..api_idx_000e.l6      ; 0x179d
@..api_idx_000e.l15:
    cmp ax, strict word 3            ; 0x17a0
    jne short @..api_idx_000e.l16    ; 0x17a3
    jmp near @..api_idx_000e.l7      ; 0x17a5
@..api_idx_000e.l16:
    cmp ax, strict word 4            ; 0x17a8
    je short @..api_idx_000e.l12     ; 0x17ab
@..api_idx_000e.l17:
    mov ax, word [data_8f3e]         ; 0x17ad
    mov cx, 6                        ; 0x17b0
    shl ax, cl                       ; 0x17b3
    mov cx, word [data_8f40]         ; 0x17b5
    shl cx, 1                        ; 0x17b9
    shl cx, 1                        ; 0x17bb
    shl cx, 1                        ; 0x17bd
    add ax, cx                       ; 0x17bf
    add ax, word [data_8f42]         ; 0x17c1
    mov word [bp - 0x0002], ax       ; 0x17c5
    mov ax, 1                        ; 0x17c8
    push ax                          ; 0x17cb
    push word [bp - 0x0002]          ; 0x17cc
    mov ax, 0x8afe                   ; 0x17cf
    push ax                          ; 0x17d2
    call ds_dispatch_ec41            ; 0x17d3
    add sp, byte 6                   ; 0x17d6
    mov bx, word [data_0e12]         ; 0x17d9
    mov si, word [data_8f3e]         ; 0x17dd
    mov al, byte [bx + si + 0xb40]   ; 0x17e1
    sub ah, ah                       ; 0x17e5
    mov word [data_8d12], ax         ; 0x17e7
    mov ax, 0                        ; 0x17ea
    ret                              ; 0x17ed
%include "vmaze/api_idx_0004_4.asm"

@..api_idx_0004_4.l3:
    jmp short @..api_idx_0004_4.l5   ; 0x1850
@..api_idx_0004_4.l4:
    cmp word [bp - 0x0002], byte 3   ; 0x1852
    jne short @..api_idx_0004_4.l5   ; 0x1856
    mov ax, word [bp - 0x0004]       ; 0x1858
    cmp ax, word [data_82ee]         ; 0x185b
    jne short @..api_idx_0004_4.l5   ; 0x185f
    mov ax, 0xf                      ; 0x1861
    push ax                          ; 0x1864
    call ds_dispatch_d7aa            ; 0x1865
    pop cx                           ; 0x1868
    mov ax, 1                        ; 0x1869
    push ax                          ; 0x186c
    call ds_dispatch_b7e0            ; 0x186d
    pop cx                           ; 0x1870
    mov word [data_831a], 1          ; 0x1871
    call loc_676c                    ; 0x1877
    mov ax, 0x10                     ; 0x187a
    push ax                          ; 0x187d
    call ds_dispatch_b7e0            ; 0x187e
    pop cx                           ; 0x1881
    mov ax, 0x10                     ; 0x1882
    push ax                          ; 0x1885
    call ds_dispatch_d6c6            ; 0x1886
    pop cx                           ; 0x1889
    mov word [data_598e], 0xffff     ; 0x188a
    mov ax, 2                        ; 0x1890
    push ax                          ; 0x1893
    call ds_dispatch_b75e            ; 0x1894
    pop cx                           ; 0x1897
    mov word [data_831a], 2          ; 0x1898
    call loc_676c                    ; 0x189e
    mov ax, 2                        ; 0x18a1
    push ax                          ; 0x18a4
    call ds_dispatch_b75e            ; 0x18a5
    pop cx                           ; 0x18a8
    mov word [data_831a], 0          ; 0x18a9
    push word [bp - 0x0004]          ; 0x18af
    call api_idx_000e                ; 0x18b2
    pop cx                           ; 0x18b5
    test ax, ax                      ; 0x18b6
    je short @..api_idx_0004_4.l5    ; 0x18b8
    ret                              ; 0x18ba
@..api_idx_0004_4.l5:
    cmp word [data_91a8], byte 0     ; 0x18bb
    jne short @..api_idx_0004_4.l7   ; 0x18c0
    mov ax, 2                        ; 0x18c2
    push ax                          ; 0x18c5
    mov ax, 0                        ; 0x18c6
    cmp word [data_91ac], strict word 0x7e4 ; 0x18c9
    jne short @..api_idx_0004_4.l6   ; 0x18cf
    mov ax, 2                        ; 0x18d1
@..api_idx_0004_4.l6:
    push ax                          ; 0x18d4
    push word [data_91ac]            ; 0x18d5
    call loc_12d3                    ; 0x18d9
    add sp, byte 6                   ; 0x18dc
@..api_idx_0004_4.l7:
    jmp near @..api_idx_0004_4.l18   ; 0x18df
@..api_idx_0004_4.l8:
    cmp word [bp - 0x0002], byte 6   ; 0x18e2
    je short @..api_idx_0004_4.l9    ; 0x18e6
    cmp word [bp - 0x0002], byte 3   ; 0x18e8
    jne short @..api_idx_0004_4.l10  ; 0x18ec
@..api_idx_0004_4.l9:
    mov ax, word [bp - 0x0004]       ; 0x18ee
    cmp ax, word [data_82ee]         ; 0x18f1
    jne short @..api_idx_0004_4.l10  ; 0x18f5
    mov ax, word [data_905a]         ; 0x18f7
    mov cx, 2                        ; 0x18fa
    cwd                              ; 0x18fd
    idiv cx                          ; 0x18fe
    push ax                          ; 0x1900
    push cx                          ; 0x1901
    mov ax, 0x7e5                    ; 0x1902
    push ax                          ; 0x1905
    call loc_12d3                    ; 0x1906
    add sp, byte 6                   ; 0x1909
    jmp short @..api_idx_0004_4.l11  ; 0x190c
@..api_idx_0004_4.l10:
    mov ax, 2                        ; 0x190e
    push ax                          ; 0x1911
    push ax                          ; 0x1912
    push word [data_91ac]            ; 0x1913
    call loc_12d3                    ; 0x1917
    add sp, byte 6                   ; 0x191a
@..api_idx_0004_4.l11:
    jmp short @..api_idx_0004_4.l18  ; 0x191d
@..api_idx_0004_4.l12:
    cmp word [bp - 0x0002], byte 2   ; 0x191f
    jne short @..api_idx_0004_4.l14  ; 0x1923
    push word [bp - 0x0004]          ; 0x1925
    call api_idx_000e                ; 0x1928
    pop cx                           ; 0x192b
    test ax, ax                      ; 0x192c
    je short @..api_idx_0004_4.l13   ; 0x192e
    ret                              ; 0x1930
@..api_idx_0004_4.l13:
    jmp short @..api_idx_0004_4.l15  ; 0x1931
@..api_idx_0004_4.l14:
    mov ax, 2                        ; 0x1933
    push ax                          ; 0x1936
    push ax                          ; 0x1937
    push word [data_91ac]            ; 0x1938
    call loc_12d3                    ; 0x193c
    add sp, byte 6                   ; 0x193f
@..api_idx_0004_4.l15:
    jmp short @..api_idx_0004_4.l18  ; 0x1942
@..api_idx_0004_4.l16:
    cmp ax, strict word 0            ; 0x1944
    jne short @..api_idx_0004_4.l17  ; 0x1947
    jmp near @..api_idx_0004_4.l1    ; 0x1949
@..api_idx_0004_4.l17:
    cmp ax, strict word 1            ; 0x194c
    je short @..api_idx_0004_4.l8    ; 0x194f
    cmp ax, strict word 2            ; 0x1951
    je short @..api_idx_0004_4.l8    ; 0x1954
    cmp ax, strict word 3            ; 0x1956
    je short @..api_idx_0004_4.l12   ; 0x1959
@..api_idx_0004_4.l18:
    ret                              ; 0x195b
%include "vmaze/api_idx_000a.asm"

    mov bx, ax                       ; 0x1b5b
    pop ax                           ; 0x1b5d
    mov byte [bx + 0x5d5c], al       ; 0x1b5e
@..api_idx_000a.l14:
    cmp word [bp + 0x8], byte 0      ; 0x1b62
    jle short @..api_idx_000a.l15    ; 0x1b66
    mov ax, 0x248                    ; 0x1b68
    imul word [bp + 0x4]             ; 0x1b6b
    mov bx, ax                       ; 0x1b6e
    mov ax, word [bx + 0x5c12]       ; 0x1b70
    mov cx, word [bp + 0x8]          ; 0x1b74
    mov bx, cx                       ; 0x1b77
    imul bx                          ; 0x1b79
    mov cx, 0x64                     ; 0x1b7b
    mov bx, 0                        ; 0x1b7e
    call ds_dispatch_f99f            ; 0x1b81
    mov word [bp - 0x0006], ax       ; 0x1b84
    mov cx, 2                        ; 0x1b87
    cwd                              ; 0x1b8a
    idiv cx                          ; 0x1b8b
    push ax                          ; 0x1b8d
    call ds_dispatch_b7a9            ; 0x1b8e
    pop cx                           ; 0x1b91
    push ax                          ; 0x1b92
    mov ax, 0x248                    ; 0x1b93
    imul word [bp + 0x4]             ; 0x1b96
    mov bx, ax                       ; 0x1b99
    mov cx, word [bx + 0x5c10]       ; 0x1b9b
    pop ax                           ; 0x1b9f
    add ax, cx                       ; 0x1ba0
    push ax                          ; 0x1ba2
    mov ax, word [bp - 0x0006]       ; 0x1ba3
    mov cx, 2                        ; 0x1ba6
    cwd                              ; 0x1ba9
    idiv cx                          ; 0x1baa
    mov cx, ax                       ; 0x1bac
    pop ax                           ; 0x1bae
    add ax, cx                       ; 0x1baf
    inc ax                           ; 0x1bb1
    mov word [bx + 0x5c10], ax       ; 0x1bb2
    mov ax, word [bx + 0x5c10]       ; 0x1bb6
    cmp ax, word [bx + 0x5c12]       ; 0x1bba
    jle short @..api_idx_000a.l15    ; 0x1bbe
    mov ax, word [bx + 0x5c12]       ; 0x1bc0
    mov word [bx + 0x5c10], ax       ; 0x1bc4
@..api_idx_000a.l15:
    mov word [bp - 0x0004], 0        ; 0x1bc8
@..api_idx_000a.l16:
    mov ax, 0x248                    ; 0x1bcd
    imul word [bp + 0x4]             ; 0x1bd0
    add ax, word [bp - 0x0004]       ; 0x1bd3
    mov bx, ax                       ; 0x1bd6
    mov al, byte [bx + 0x5d5a]       ; 0x1bd8
    sub ah, ah                       ; 0x1bdc
    mov word [bp - 0x0006], ax       ; 0x1bde
    cmp ax, strict word 0            ; 0x1be1
    jle short @..api_idx_000a.l18    ; 0x1be4
    cmp ax, 0xff                     ; 0x1be6
    je short @..api_idx_000a.l18     ; 0x1be9
    mov ax, word [bp + 0xa]          ; 0x1beb
    sub word [bp - 0x0006], ax       ; 0x1bee
    cmp word [bp - 0x0006], byte 0   ; 0x1bf1
    jge short @..api_idx_000a.l17    ; 0x1bf5
    mov word [bp - 0x0006], 0        ; 0x1bf7
@..api_idx_000a.l17:
    mov al, byte [bp - 0x0006]       ; 0x1bfc
    mov byte [bx + 0x5d5a], al       ; 0x1bff
@..api_idx_000a.l18:
    inc word [bp - 0x0004]           ; 0x1c03
    mov ax, word [bp - 0x0004]       ; 0x1c06
    cmp ax, strict word 0xa          ; 0x1c09
    jl short @..api_idx_000a.l16     ; 0x1c0c
    mov ax, 0x248                    ; 0x1c0e
    imul word [bp + 0x4]             ; 0x1c11
    mov bx, ax                       ; 0x1c14
    cmp byte [bx + 0x5d5f], 0        ; 0x1c16
    je short @..api_idx_000a.l19     ; 0x1c1b
    cmp byte [bx + 0x5e32], 0        ; 0x1c1d
    jne short @..api_idx_000a.l20    ; 0x1c22
@..api_idx_000a.l19:
    mov byte [bx + 0x5d5f], 0        ; 0x1c24
    mov byte [bx + 0x5e32], 0        ; 0x1c29
@..api_idx_000a.l20:
    cmp word [bp + 0xc], byte 0      ; 0x1c2e
    jle short @..api_idx_000a.l23    ; 0x1c32
    mov word [bp - 0x0004], 0        ; 0x1c34
@..api_idx_000a.l21:
    mov ax, 0x248                    ; 0x1c39
    imul word [bp + 0x4]             ; 0x1c3c
    add ax, word [bp - 0x0004]       ; 0x1c3f
    mov bx, ax                       ; 0x1c42
    mov al, byte [bx + 0x5d54]       ; 0x1c44
    sub ah, ah                       ; 0x1c48
    inc ax                           ; 0x1c4a
    push ax                          ; 0x1c4b
    call ds_dispatch_b7a9            ; 0x1c4c
    pop cx                           ; 0x1c4f
    push ax                          ; 0x1c50
    mov ax, 0x248                    ; 0x1c51
    imul word [bp + 0x4]             ; 0x1c54
    mov cx, ax                       ; 0x1c57
    mov dx, word [bp - 0x0004]       ; 0x1c59
    shl dx, 1                        ; 0x1c5c
    shl dx, 1                        ; 0x1c5e
    add ax, dx                       ; 0x1c60
    mov bx, ax                       ; 0x1c62
    pop ax                           ; 0x1c64
    add word [bx + 0x5c1c], ax       ; 0x1c65
    mov ax, word [bx + 0x5c1c]       ; 0x1c69
    cmp ax, word [bx + 0x5c1e]       ; 0x1c6d
    jle short @..api_idx_000a.l22    ; 0x1c71
    mov ax, word [bx + 0x5c1e]       ; 0x1c73
    mov word [bx + 0x5c1c], ax       ; 0x1c77
@..api_idx_000a.l22:
    inc word [bp - 0x0004]           ; 0x1c7b
    mov ax, word [bp - 0x0004]       ; 0x1c7e
    cmp ax, strict word 6            ; 0x1c81
    jl short @..api_idx_000a.l21     ; 0x1c84
@..api_idx_000a.l23:
    mov ax, 1                        ; 0x1c86
    push ax                          ; 0x1c89
    push word [bp + 0x4]             ; 0x1c8a
    call ds_dispatch_cb3a            ; 0x1c8d
    add sp, byte 4                   ; 0x1c90
@..api_idx_000a.l24:
    ret                              ; 0x1c93
%include "vmaze/api_idx_0018.asm"

@..api_idx_0018.l21:
    push ax                          ; 0x1e94
    mov ax, 1                        ; 0x1e95
    push ax                          ; 0x1e98
    test dx, dx                      ; 0x1e99
    jne short @..api_idx_0018.l22    ; 0x1e9b
    mov ax, 0x248                    ; 0x1e9d
    imul word [bp - 0x0002]          ; 0x1ea0
    mov bx, ax                       ; 0x1ea3
    mov al, byte [bx + 0x5e35]       ; 0x1ea5
    sub ah, ah                       ; 0x1ea9
    jmp short @..api_idx_0018.l23    ; 0x1eab
@..api_idx_0018.l22:
    mov ax, 0                        ; 0x1ead
@..api_idx_0018.l23:
    push ax                          ; 0x1eb0
    mov ax, word [bp - 0x0008]       ; 0x1eb1
    cwd                              ; 0x1eb4
    idiv cx                          ; 0x1eb5
    mov ax, dx                       ; 0x1eb7
    test ax, ax                      ; 0x1eb9
    jne short @..api_idx_0018.l24    ; 0x1ebb
    cmp word [bp - 0x000e], byte 0   ; 0x1ebd
    jle short @..api_idx_0018.l24    ; 0x1ec1
    mov ax, 0x248                    ; 0x1ec3
    imul word [bp - 0x0002]          ; 0x1ec6
    mov bx, ax                       ; 0x1ec9
    mov al, byte [bx + 0x5e34]       ; 0x1ecb
    sub ah, ah                       ; 0x1ecf
    inc ax                           ; 0x1ed1
    jmp short @..api_idx_0018.l25    ; 0x1ed2
@..api_idx_0018.l24:
    mov ax, 0                        ; 0x1ed4
@..api_idx_0018.l25:
    push ax                          ; 0x1ed7
    push word [bp - 0x0002]          ; 0x1ed8
    call api_idx_000a                ; 0x1edb
    add sp, byte 0x0a                ; 0x1ede
    mov ax, 5                        ; 0x1ee1
    push ax                          ; 0x1ee4
    call ds_dispatch_b7a9            ; 0x1ee5
    pop cx                           ; 0x1ee8
    push ax                          ; 0x1ee9
    mov ax, 0x248                    ; 0x1eea
    imul word [bp - 0x0002]          ; 0x1eed
    mov bx, ax                       ; 0x1ef0
    pop ax                           ; 0x1ef2
    mov byte [bx + 0x5d5c], al       ; 0x1ef3
    mov ax, word [bp - 0x0008]       ; 0x1ef7
    mov cx, 6                        ; 0x1efa
    cwd                              ; 0x1efd
    idiv cx                          ; 0x1efe
    mov ax, dx                       ; 0x1f00
    test ax, ax                      ; 0x1f02
    jne short @..api_idx_0018.l26    ; 0x1f04
    cmp byte [bx + 0x5e32], 0        ; 0x1f06
    jbe short @..api_idx_0018.l26    ; 0x1f0b
    dec byte [bx + 0x5e32]           ; 0x1f0d
@..api_idx_0018.l26:
    inc word [bp - 0x0002]           ; 0x1f11
@..api_idx_0018.l27:
    mov ax, word [bp - 0x0002]       ; 0x1f14
    cmp ax, word [data_69c8]         ; 0x1f17
    jge short @..api_idx_0018.l28    ; 0x1f1b
    jmp near @..api_idx_0018.l19     ; 0x1f1d
@..api_idx_0018.l28:
    push word [data_69c8]            ; 0x1f20
    call ds_dispatch_b7a9            ; 0x1f24
    pop cx                           ; 0x1f27
    mov cx, 0x248                    ; 0x1f28
    imul cx                          ; 0x1f2b
    mov bx, ax                       ; 0x1f2d
    mov byte [bx + 0x5d5c], 0        ; 0x1f2f
    mov ax, word [bp - 0x0008]       ; 0x1f34
    mov cx, 6                        ; 0x1f37
    cwd                              ; 0x1f3a
    idiv cx                          ; 0x1f3b
    mov ax, dx                       ; 0x1f3d
    test ax, ax                      ; 0x1f3f
    jne short @..api_idx_0018.l31    ; 0x1f41
    call api_idx_0032                ; 0x1f43
    dec word [bp - 0x000e]           ; 0x1f46
    mov ax, 0x3cf                    ; 0x1f49
    cmp byte [data_5988], 1          ; 0x1f4c
    jne short @..api_idx_0018.l29    ; 0x1f51
    mov ax, 0x3de                    ; 0x1f53
@..api_idx_0018.l29:
    mov word [bp - 0x0010], ax       ; 0x1f56
    cmp word [data_91b0], byte 0     ; 0x1f59
    jne short @..api_idx_0018.l31    ; 0x1f5e
    cmp word [bp - 0x0014], byte 0   ; 0x1f60
    jne short @..api_idx_0018.l31    ; 0x1f64
    mov ax, 0x3e8                    ; 0x1f66
    push ax                          ; 0x1f69
    call ds_dispatch_b7a9            ; 0x1f6a
    pop cx                           ; 0x1f6d
    mov cx, ax                       ; 0x1f6e
    mov ax, word [bp - 0x0010]       ; 0x1f70
    cmp cx, ax                       ; 0x1f73
    jl short @..api_idx_0018.l31     ; 0x1f75
    cmp word [data_8450], byte 0     ; 0x1f77
    je short @..api_idx_0018.l30     ; 0x1f7c
    call ds_dispatch_ef90            ; 0x1f7e
    mov ax, 0                        ; 0x1f81
    push ax                          ; 0x1f84
    call ds_dispatch_d907            ; 0x1f85
    pop cx                           ; 0x1f88
@..api_idx_0018.l30:
    mov ax, 1                        ; 0x1f89
    ret                              ; 0x1f8c
@..api_idx_0018.l31:
    jmp near @..api_idx_0018.l6      ; 0x1f8d
@..api_idx_0018.l32:
    mov ax, 0x98                     ; 0x1f90
    push ax                          ; 0x1f93
    mov ax, 0x13f                    ; 0x1f94
    push ax                          ; 0x1f97
    mov ax, 0x92                     ; 0x1f98
    push ax                          ; 0x1f9b
    mov ax, 0                        ; 0x1f9c
    push ax                          ; 0x1f9f
    call ds_dispatch_e8da            ; 0x1fa0
    add sp, byte 8                   ; 0x1fa3
    mov ax, 2                        ; 0x1fa6
    push ax                          ; 0x1fa9
    call ds_dispatch_b7a9            ; 0x1faa
    pop cx                           ; 0x1fad
    mov word [bp - 0x0004], ax       ; 0x1fae
    mov word [bp - 0x0002], 0        ; 0x1fb1
    jmp short @..api_idx_0018.l36    ; 0x1fb6
@..api_idx_0018.l33:
    cmp word [bp - 0x0004], byte 0   ; 0x1fb8
    je short @..api_idx_0018.l34     ; 0x1fbc
    mov ax, 0x248                    ; 0x1fbe
    imul word [bp - 0x0002]          ; 0x1fc1
    mov bx, ax                       ; 0x1fc4
    add word [bx + 0x5bfc], byte 1   ; 0x1fc6
    adc word [bx + 0x5bfe], byte 0   ; 0x1fcb
@..api_idx_0018.l34:
    mov ax, 0x248                    ; 0x1fd0
    imul word [bp - 0x0002]          ; 0x1fd3
    mov bx, ax                       ; 0x1fd6
    mov ax, word [bx + 0x5c10]       ; 0x1fd8
    push ax                          ; 0x1fdc
    mov ax, word [bx + 0x5c12]       ; 0x1fdd
    mov cx, 2                        ; 0x1fe1
    cwd                              ; 0x1fe4
    idiv cx                          ; 0x1fe5
    mov cx, ax                       ; 0x1fe7
    pop ax                           ; 0x1fe9
    cmp ax, cx                       ; 0x1fea
    jle short @..api_idx_0018.l35    ; 0x1fec
    mov byte [bx + 0x5d5c], 0        ; 0x1fee
@..api_idx_0018.l35:
    mov ax, 1                        ; 0x1ff3
    push ax                          ; 0x1ff6
    push word [bp - 0x0002]          ; 0x1ff7
    call ds_dispatch_cb3a            ; 0x1ffa
    add sp, byte 4                   ; 0x1ffd
    inc word [bp - 0x0002]           ; 0x2000
@..api_idx_0018.l36:
    mov ax, word [bp - 0x0002]       ; 0x2003
    cmp ax, word [data_69c8]         ; 0x2006
    jl short @..api_idx_0018.l33     ; 0x200a
    call math_loc_0f68               ; 0x200c
    cmp word [data_8450], byte 0     ; 0x200f
    je short @..api_idx_0018.l37     ; 0x2014
    push word [data_844c]            ; 0x2016
    push word [data_844e]            ; 0x201a
    call ds_dispatch_d91b            ; 0x201e
    add sp, byte 4                   ; 0x2021
    mov ax, 0                        ; 0x2024
    push ax                          ; 0x2027
    call ds_dispatch_d907            ; 0x2028
    pop cx                           ; 0x202b
@..api_idx_0018.l37:
    call loc_0344                    ; 0x202c
    mov ax, 0                        ; 0x202f
    ret                              ; 0x2032
%include "vmaze/api_idx_0010.asm"

%include "vmaze/api_idx_0006_3.asm"

@..api_idx_0006_3.l2:
    add word [bp - 0x0006], byte 8   ; 0x211f
    inc word [bp - 0x0002]           ; 0x2123
@..api_idx_0006_3.l3:
    mov ax, word [bp - 0x0002]       ; 0x2126
    cmp ax, word [data_5910]         ; 0x2129
    jl short @..api_idx_0006_3.l1    ; 0x212d
    mov ax, 0                        ; 0x212f
    ret                              ; 0x2132
%include "vmaze/api_idx_0006_4.asm"

@..api_idx_0006_4.l1:
    mov ax, 0                        ; 0x2190
    push ax                          ; 0x2193
    mov ax, word [data_8f3e]         ; 0x2194
    mov cx, 6                        ; 0x2197
    shl ax, cl                       ; 0x219a
    mov cx, word [data_8f40]         ; 0x219c
    shl cx, 1                        ; 0x21a0
    shl cx, 1                        ; 0x21a2
    shl cx, 1                        ; 0x21a4
    add ax, cx                       ; 0x21a6
    add ax, word [data_8f42]         ; 0x21a8
    push ax                          ; 0x21ac
    mov ax, 0x8bfe                   ; 0x21ad
    push ax                          ; 0x21b0
    call ds_dispatch_ec41            ; 0x21b1
    add sp, byte 6                   ; 0x21b4
    mov ax, 0                        ; 0x21b7
    push ax                          ; 0x21ba
    push word [0x8d08]               ; 0x21bb
    push word [data_8d06]            ; 0x21bf
    call ds_dispatch_e94f            ; 0x21c3
    add sp, byte 6                   ; 0x21c6
    mov ax, 0xc4                     ; 0x21c9
    push ax                          ; 0x21cc
    mov ax, 0x13c                    ; 0x21cd
    push ax                          ; 0x21d0
    mov ax, 0xb9                     ; 0x21d1
    push ax                          ; 0x21d4
    mov ax, 0x131                    ; 0x21d5
    push ax                          ; 0x21d8
    call ds_dispatch_e8da            ; 0x21d9
    add sp, byte 8                   ; 0x21dc
    mov ax, 0                        ; 0x21df
    ret                              ; 0x21e2
loc_21e3:
    mov ax, 0                        ; 0x21e3
    call ds_dispatch_f40b            ; 0x21e6
    mov ax, 0x98                     ; 0x21e9
    push ax                          ; 0x21ec
    mov ax, 0x13f                    ; 0x21ed
    push ax                          ; 0x21f0
    mov ax, 0x92                     ; 0x21f1
    push ax                          ; 0x21f4
    mov ax, 0                        ; 0x21f5
    push ax                          ; 0x21f8
    call ds_dispatch_e8da            ; 0x21f9
    add sp, byte 8                   ; 0x21fc
    mov ax, 0x64                     ; 0x21ff
    push ax                          ; 0x2202
    call ds_dispatch_e489            ; 0x2203
    pop cx                           ; 0x2206
    push word [bp + 0x4]             ; 0x2207
    call api_idx_0050                ; 0x220a
    pop cx                           ; 0x220d
    mov word [data_91b2], 1          ; 0x220e
    ret                              ; 0x2214
%include "vmaze/api_idx_0022.asm"

    mov bx, ax                       ; 0x2414
    cmp byte [bx + 0x5e2f], 3        ; 0x2416
    jb short @..api_idx_0022.l19     ; 0x241b
    jmp near @..api_idx_0022.l24     ; 0x241d
@..api_idx_0022.l19:
    mov ax, word [data_8f1c]         ; 0x2420
    mov dx, word [data_8f1e]         ; 0x2423
    mov cx, 0x3c                     ; 0x2427
    mov bx, 0                        ; 0x242a
    call ds_dispatch_f9cd            ; 0x242d
    mov cx, 0xa                      ; 0x2430
    mov bx, 0                        ; 0x2433
    call ds_dispatch_f99f            ; 0x2436
    push ax                          ; 0x2439
    push dx                          ; 0x243a
    mov ax, word [bp - 0x0004]       ; 0x243b
    cwd                              ; 0x243e
    mov cx, ax                       ; 0x243f
    mov bx, dx                       ; 0x2441
    pop dx                           ; 0x2443
    pop ax                           ; 0x2444
    cmp dx, bx                       ; 0x2445
    jne short @..api_idx_0022.l20    ; 0x2447
    cmp ax, cx                       ; 0x2449
@..api_idx_0022.l20:
    jne short @..api_idx_0022.l21    ; 0x244b
    mov ax, 1                        ; 0x244d
    jmp short @..api_idx_0022.l22    ; 0x2450
@..api_idx_0022.l21:
    mov ax, 0                        ; 0x2452
@..api_idx_0022.l22:
    mov word [bp - 0x0012], ax       ; 0x2455
    cmp word [bp - 0x0012], byte 0   ; 0x2458
    je short @..api_idx_0022.l23     ; 0x245c
    mov ax, 0x248                    ; 0x245e
    imul word [bp - 0x0004]          ; 0x2461
    mov bx, ax                       ; 0x2464
    mov al, byte [bx + 0x5e33]       ; 0x2466
    sub ah, ah                       ; 0x246a
    inc ax                           ; 0x246c
    sub word [bx + 0x5c10], ax       ; 0x246d
    cmp word [bx + 0x5c10], byte 0   ; 0x2471
    jge short @..api_idx_0022.l23    ; 0x2476
    mov word [bx + 0x5c10], 0        ; 0x2478
@..api_idx_0022.l23:
    push word [bp - 0x0012]          ; 0x247e
    mov ax, 1                        ; 0x2481
    push ax                          ; 0x2484
    mov ax, 0                        ; 0x2485
    push ax                          ; 0x2488
    push ax                          ; 0x2489
    push word [bp - 0x0004]          ; 0x248a
    call api_idx_000a                ; 0x248d
    add sp, byte 0x0a                ; 0x2490
@..api_idx_0022.l24:
    inc word [bp - 0x0004]           ; 0x2493
@..api_idx_0022.l25:
    mov ax, word [bp - 0x0004]       ; 0x2496
    cmp ax, word [data_69c8]         ; 0x2499
    jge short @..api_idx_0022.l26    ; 0x249d
    jmp near @..api_idx_0022.l18     ; 0x249f
@..api_idx_0022.l26:
    mov word [bp - 0x0016], 0        ; 0x24a2
    mov word [bp - 0x0018], 0        ; 0x24a7
    mov word [bp - 0x0004], 0        ; 0x24ac
    jmp short @..api_idx_0022.l30    ; 0x24b1
@..api_idx_0022.l27:
    mov ax, 0x248                    ; 0x24b3
    imul word [bp - 0x0004]          ; 0x24b6
    mov bx, ax                       ; 0x24b9
    cmp byte [bx + 0x5e2f], 0        ; 0x24bb
    jne short @..api_idx_0022.l29    ; 0x24c0
    inc word [bp - 0x0016]           ; 0x24c2
    cmp byte [bx + 0x5d5c], 0        ; 0x24c5
    ja short @..api_idx_0022.l28     ; 0x24ca
    cmp byte [bx + 0x5d5d], 0        ; 0x24cc
    jbe short @..api_idx_0022.l29    ; 0x24d1
@..api_idx_0022.l28:
    inc word [bp - 0x0018]           ; 0x24d3
@..api_idx_0022.l29:
    inc word [bp - 0x0004]           ; 0x24d6
@..api_idx_0022.l30:
    mov ax, word [bp - 0x0004]       ; 0x24d9
    cmp ax, word [data_69c8]         ; 0x24dc
    jl short @..api_idx_0022.l27     ; 0x24e0
    cmp word [bp - 0x0016], byte 0   ; 0x24e2
    jne short @..api_idx_0022.l31    ; 0x24e6
    mov word [data_830a], 8          ; 0x24e8
    ret                              ; 0x24ee
@..api_idx_0022.l31:
    mov ax, word [bp - 0x0018]       ; 0x24ef
    cmp ax, word [bp - 0x0016]       ; 0x24f2
    jne short @..api_idx_0022.l32    ; 0x24f5
    call api_idx_0018                ; 0x24f7
    cmp ax, strict word 1            ; 0x24fa
    jne short @..api_idx_0022.l32    ; 0x24fd
    push word [data_8f3e]            ; 0x24ff
    call api_idx_0002_6              ; 0x2503
    pop cx                           ; 0x2506
    push ax                          ; 0x2507
    call api_idx_0006                ; 0x2508
    pop cx                           ; 0x250b
    mov bx, word [data_100a]         ; 0x250c
    mov word [bx], ax                ; 0x2510
    mov ax, 1                        ; 0x2512
    push ax                          ; 0x2515
    mov ax, 0                        ; 0x2516
    push ax                          ; 0x2519
    push ax                          ; 0x251a
    call math_loc_0b14               ; 0x251b
    add sp, byte 6                   ; 0x251e
    ret                              ; 0x2521
@..api_idx_0022.l32:
    mov ax, word [bp - 0x0018]       ; 0x2522
    cmp ax, word [bp - 0x0016]       ; 0x2525
    jne short @..api_idx_0022.l33    ; 0x2528
    jmp near @..api_idx_0022.l26     ; 0x252a
@..api_idx_0022.l33:
    mov ax, word [data_8f3e]         ; 0x252d
    mov cx, 6                        ; 0x2530
    shl ax, cl                       ; 0x2533
    mov cx, word [data_8f40]         ; 0x2535
    shl cx, 1                        ; 0x2539
    shl cx, 1                        ; 0x253b
    shl cx, 1                        ; 0x253d
    add ax, cx                       ; 0x253f
    add ax, word [data_8f42]         ; 0x2541
    mov word [bp - 0x000a], ax       ; 0x2545
    push ax                          ; 0x2548
    mov ax, 0x8b7e                   ; 0x2549
    push ax                          ; 0x254c
    call ds_dispatch_ec74            ; 0x254d
    add sp, byte 4                   ; 0x2550
    test ax, ax                      ; 0x2553
    je short @..api_idx_0022.l34     ; 0x2555
    push word [data_8f3e]            ; 0x2557
    call api_idx_0002_6              ; 0x255b
    pop cx                           ; 0x255e
    push ax                          ; 0x255f
    call api_idx_0006                ; 0x2560
    pop cx                           ; 0x2563
    mov bx, word [data_100a]         ; 0x2564
    mov word [bx], ax                ; 0x2568
    mov ax, 1                        ; 0x256a
    push ax                          ; 0x256d
    mov ax, 0                        ; 0x256e
    push ax                          ; 0x2571
    mov ax, 1                        ; 0x2572
    push ax                          ; 0x2575
    call math_loc_0b14               ; 0x2576
    add sp, byte 6                   ; 0x2579
    ret                              ; 0x257c
@..api_idx_0022.l34:
    push word [bp - 0x000a]          ; 0x257d
    mov ax, 0x8c7e                   ; 0x2580
    push ax                          ; 0x2583
    call ds_dispatch_ec74            ; 0x2584
    add sp, byte 4                   ; 0x2587
    test ax, ax                      ; 0x258a
    je short @..api_idx_0022.l35     ; 0x258c
    cmp word [data_91a8], byte 1     ; 0x258e
    jne short @..api_idx_0022.l35    ; 0x2593
    call loc_8867                    ; 0x2595
    cmp word [data_830a], byte 5     ; 0x2598
    je short @..api_idx_0022.l35     ; 0x259d
    ret                              ; 0x259f
@..api_idx_0022.l35:
    mov ax, word [data_8f1c]         ; 0x25a0
    mov dx, word [data_8f1e]         ; 0x25a3
    mov cx, 0x1e                     ; 0x25a7
    mov bx, 0                        ; 0x25aa
    call ds_dispatch_f9cd            ; 0x25ad
    mov word [bp - 0x0008], ax       ; 0x25b0
    cmp ax, strict word 0x16         ; 0x25b3
    jge short @..api_idx_0022.l37    ; 0x25b6
    mov cx, 0x26                     ; 0x25b8
    imul cx                          ; 0x25bb
    mov bx, ax                       ; 0x25bd
    cmp byte [bx - 0x7b00], 0        ; 0x25bf
    jle short @..api_idx_0022.l37    ; 0x25c4
    cmp byte [bx - 0x7b16], 1        ; 0x25c6
    je short @..api_idx_0022.l37     ; 0x25cb
    mov al, byte [bx - 0x7b14]       ; 0x25cd
    sub ah, ah                       ; 0x25d1
    shl ax, 1                        ; 0x25d3
    shl ax, 1                        ; 0x25d5
    mov bx, ax                       ; 0x25d7
    mov al, byte [bx - 0x7687]       ; 0x25d9
    cbw                              ; 0x25dd
    cmp ax, word [data_830c]         ; 0x25de
    jne short @..api_idx_0022.l37    ; 0x25e2
    mov ax, word [bp - 0x0008]       ; 0x25e4
    imul cx                          ; 0x25e7
    mov bx, ax                       ; 0x25e9
    mov al, byte [bx - 0x7b13]       ; 0x25eb
    sub ah, ah                       ; 0x25ef
    cmp ax, word [data_8f3e]         ; 0x25f1
    jne short @..api_idx_0022.l37    ; 0x25f5
    mov ax, word [bp - 0x0008]       ; 0x25f7
    mov bx, word [data_100a]         ; 0x25fa
    mov word [bx], ax                ; 0x25fe
    mov ax, 0                        ; 0x2600
    cmp word [bp - 0x0008], byte 0x13 ; 0x2603
    je short @..api_idx_0022.l36     ; 0x2607
    mov ax, 1                        ; 0x2609
@..api_idx_0022.l36:
    push ax                          ; 0x260c
    mov ax, 0                        ; 0x260d
    push ax                          ; 0x2610
    mov ax, 1                        ; 0x2611
    push ax                          ; 0x2614
    call math_loc_0b14               ; 0x2615
    add sp, byte 6                   ; 0x2618
    mov word [data_830a], 0x12       ; 0x261b
    ret                              ; 0x2621
@..api_idx_0022.l37:
    mov ax, 0x3e8                    ; 0x2622
    push ax                          ; 0x2625
    call ds_dispatch_b7a9            ; 0x2626
    pop cx                           ; 0x2629
    cmp ax, 0x3e3                    ; 0x262a
    jl short @..api_idx_0022.l38     ; 0x262d
    push word [data_8f3e]            ; 0x262f
    call api_idx_0002_6              ; 0x2633
    pop cx                           ; 0x2636
    push ax                          ; 0x2637
    call api_idx_0006                ; 0x2638
    pop cx                           ; 0x263b
    mov bx, word [data_100a]         ; 0x263c
    mov word [bx], ax                ; 0x2640
    mov ax, 1                        ; 0x2642
    push ax                          ; 0x2645
    mov ax, 0                        ; 0x2646
    push ax                          ; 0x2649
    push ax                          ; 0x264a
    call math_loc_0b14               ; 0x264b
    add sp, byte 6                   ; 0x264e
    ret                              ; 0x2651
@..api_idx_0022.l38:
    mov word [data_91aa], 0          ; 0x2652
    mov word [data_91a8], 0          ; 0x2658
    mov word [bp - 0x0022], 0        ; 0x265e
    call math_loc_13c0               ; 0x2663
    mov ax, word [data_8f3e]         ; 0x2666
    mov cx, 6                        ; 0x2669
    shl ax, cl                       ; 0x266c
    mov cx, word [data_8f40]         ; 0x266e
    shl cx, 1                        ; 0x2672
    shl cx, 1                        ; 0x2674
    shl cx, 1                        ; 0x2676
    add ax, cx                       ; 0x2678
    add ax, word [data_8f42]         ; 0x267a
    mov word [bp - 0x000a], ax       ; 0x267e
    mov ax, 1                        ; 0x2681
    push ax                          ; 0x2684
    push word [bp - 0x000a]          ; 0x2685
    mov ax, 0x8afe                   ; 0x2688
    push ax                          ; 0x268b
    call ds_dispatch_ec41            ; 0x268c
    add sp, byte 6                   ; 0x268f
    call api_idx_0004_3              ; 0x2692
    mov word [bp - 0x0010], ax       ; 0x2695
    cmp ax, strict word 1            ; 0x2698
    jne short @..api_idx_0022.l41    ; 0x269b
    cmp word [data_919e], byte 0     ; 0x269d
    je short @..api_idx_0022.l39     ; 0x26a2
    mov ax, 0x80e                    ; 0x26a4
    push ax                          ; 0x26a7
    call loc_21e3                    ; 0x26a8
    pop cx                           ; 0x26ab
    jmp short @..api_idx_0022.l40    ; 0x26ac
@..api_idx_0022.l39:
    mov ax, 0x80c                    ; 0x26ae
    push ax                          ; 0x26b1
    call loc_21e3                    ; 0x26b2
    pop cx                           ; 0x26b5
    mov word [bp - 0x0022], 1        ; 0x26b6
@..api_idx_0022.l40:
    jmp short @..api_idx_0022.l43    ; 0x26bb
@..api_idx_0022.l41:
    cmp word [bp - 0x0010], byte 3   ; 0x26bd
    jne short @..api_idx_0022.l42    ; 0x26c1
    mov ax, 0x80b                    ; 0x26c3
    push ax                          ; 0x26c6
    call loc_21e3                    ; 0x26c7
    pop cx                           ; 0x26ca
    jmp short @..api_idx_0022.l43    ; 0x26cb
@..api_idx_0022.l42:
    cmp word [data_91b2], byte 1     ; 0x26cd
    jne short @..api_idx_0022.l43    ; 0x26d2
    mov ax, 0x98                     ; 0x26d4
    push ax                          ; 0x26d7
    mov ax, 0x13f                    ; 0x26d8
    push ax                          ; 0x26db
    mov ax, 0x92                     ; 0x26dc
    push ax                          ; 0x26df
    mov ax, 0                        ; 0x26e0
    push ax                          ; 0x26e3
    call ds_dispatch_e8da            ; 0x26e4
    add sp, byte 8                   ; 0x26e7
    mov word [data_91b2], 0          ; 0x26ea
@..api_idx_0022.l43:
    mov word [bp - 0x0004], 0        ; 0x26f0
@..api_idx_0022.l44:
    mov ax, 0                        ; 0x26f5
    push ax                          ; 0x26f8
    mov bx, word [bp - 0x0004]       ; 0x26f9
    mov al, byte [bx + 0x150]        ; 0x26fc
    cbw                              ; 0x2700
    push ax                          ; 0x2701
    shl bx, 1                        ; 0x2702
    shl bx, 1                        ; 0x2704
    shl bx, 1                        ; 0x2706
    push word [bx + 0x126]           ; 0x2708
    push word [bx + 0x124]           ; 0x270c
    push word [bx + 0x122]           ; 0x2710
    push word [bx + 0x120]           ; 0x2714
    push word [bp - 0x0004]          ; 0x2718
    call ds_dispatch_baa6            ; 0x271b
    add sp, byte 0x0e                ; 0x271e
    inc word [bp - 0x0004]           ; 0x2721
    mov ax, word [bp - 0x0004]       ; 0x2724
    cmp ax, strict word 6            ; 0x2727
    jl short @..api_idx_0022.l44     ; 0x272a
    mov ax, 0                        ; 0x272c
    push ax                          ; 0x272f
    mov ax, 0x52                     ; 0x2730
    push ax                          ; 0x2733
    mov ax, 0xac                     ; 0x2734
    push ax                          ; 0x2737
    mov ax, 0x6c                     ; 0x2738
    push ax                          ; 0x273b
    mov ax, 0xa3                     ; 0x273c
    push ax                          ; 0x273f
    mov ax, 0x5c                     ; 0x2740
    push ax                          ; 0x2743
    mov ax, 6                        ; 0x2744
    push ax                          ; 0x2747
    call ds_dispatch_baa6            ; 0x2748
    add sp, byte 0x0e                ; 0x274b
    mov ax, 0                        ; 0x274e
    push ax                          ; 0x2751
    mov ax, 0x53                     ; 0x2752
    push ax                          ; 0x2755
    mov ax, 0xba                     ; 0x2756
    push ax                          ; 0x2759
    mov ax, 0x6b                     ; 0x275a
    push ax                          ; 0x275d
    mov ax, 0xaf                     ; 0x275e
    push ax                          ; 0x2761
    mov ax, 0x58                     ; 0x2762
    push ax                          ; 0x2765
    mov ax, 7                        ; 0x2766
    push ax                          ; 0x2769
    call ds_dispatch_baa6            ; 0x276a
    add sp, byte 0x0e                ; 0x276d
    mov ax, 0                        ; 0x2770
    push ax                          ; 0x2773
    mov ax, 0x4d                     ; 0x2774
    push ax                          ; 0x2777
    mov ax, 0xc3                     ; 0x2778
    push ax                          ; 0x277b
    mov ax, 0x57                     ; 0x277c
    push ax                          ; 0x277f
    mov ax, 0xb9                     ; 0x2780
    push ax                          ; 0x2783
    mov ax, 0x41                     ; 0x2784
    push ax                          ; 0x2787
    mov ax, 8                        ; 0x2788
    push ax                          ; 0x278b
    call ds_dispatch_baa6            ; 0x278c
    add sp, byte 0x0e                ; 0x278f
    mov ax, 0                        ; 0x2792
    push ax                          ; 0x2795
    mov ax, 0x44                     ; 0x2796
    push ax                          ; 0x2799
    mov ax, 0xab                     ; 0x279a
    push ax                          ; 0x279d
    mov ax, 0xe4                     ; 0x279e
    push ax                          ; 0x27a1
    mov ax, 0xa3                     ; 0x27a2
    push ax                          ; 0x27a5
    mov ax, 0xd1                     ; 0x27a6
    push ax                          ; 0x27a9
    mov ax, 9                        ; 0x27aa
    push ax                          ; 0x27ad
    call ds_dispatch_baa6            ; 0x27ae
    add sp, byte 0x0e                ; 0x27b1
    mov ax, 0                        ; 0x27b4
    push ax                          ; 0x27b7
    mov ax, 0x4f                     ; 0x27b8
    push ax                          ; 0x27bb
    mov ax, 0xb9                     ; 0x27bc
    push ax                          ; 0x27bf
    mov ax, 0xe4                     ; 0x27c0
    push ax                          ; 0x27c3
    mov ax, 0xaf                     ; 0x27c4
    push ax                          ; 0x27c7
    mov ax, 0xd5                     ; 0x27c8
    push ax                          ; 0x27cb
    mov ax, 0xa                      ; 0x27cc
    push ax                          ; 0x27cf
    call ds_dispatch_baa6            ; 0x27d0
    add sp, byte 0x0e                ; 0x27d3
    mov ax, 0                        ; 0x27d6
    push ax                          ; 0x27d9
    mov ax, 0x55                     ; 0x27da
    push ax                          ; 0x27dd
    mov ax, 0xc3                     ; 0x27de
    push ax                          ; 0x27e1
    mov ax, 0xfe                     ; 0x27e2
    push ax                          ; 0x27e5
    mov ax, 0xb8                     ; 0x27e6
    push ax                          ; 0x27e9
    mov ax, 0xe5                     ; 0x27ea
    push ax                          ; 0x27ed
    mov ax, 0xb                      ; 0x27ee
    push ax                          ; 0x27f1
    call ds_dispatch_baa6            ; 0x27f2
    add sp, byte 0x0e                ; 0x27f5
    mov word [bp - 0x0004], 0        ; 0x27f8
@..api_idx_0022.l45:
    mov ax, word [bp - 0x0004]       ; 0x27fd
    mov cx, 2                        ; 0x2800
    cwd                              ; 0x2803
    idiv cx                          ; 0x2804
    mov ax, dx                       ; 0x2806
    mov cx, 0xfc                     ; 0x2808
    imul cx                          ; 0x280b
    add ax, strict word 5            ; 0x280d
    mov word [bp - 0x000c], ax       ; 0x2810
    mov ax, word [bp - 0x0004]       ; 0x2813
    mov cx, 2                        ; 0x2816
    cwd                              ; 0x2819
    idiv cx                          ; 0x281a
    mov cx, 0x2d                     ; 0x281c
    imul cx                          ; 0x281f
    add ax, strict word 0x12         ; 0x2821
    mov word [bp - 0x000e], ax       ; 0x2824
    mov ax, 0                        ; 0x2827
    push ax                          ; 0x282a
    mov bx, word [bp - 0x0004]       ; 0x282b
    mov al, byte [bx + 0x156]        ; 0x282e
    cbw                              ; 0x2832
    push ax                          ; 0x2833
    mov ax, word [bp - 0x000e]       ; 0x2834
    add ax, strict word 0x25         ; 0x2837
    push ax                          ; 0x283a
    mov ax, word [bp - 0x000c]       ; 0x283b
    add ax, strict word 0x28         ; 0x283e
    push ax                          ; 0x2841
    mov ax, word [bp - 0x000e]       ; 0x2842
    add ax, strict word 0x20         ; 0x2845
    push ax                          ; 0x2848
    mov ax, word [bp - 0x000c]       ; 0x2849
    add ax, strict word 4            ; 0x284c
    push ax                          ; 0x284f
    add bx, byte 0x0c                ; 0x2850
    mov ax, bx                       ; 0x2853
    push ax                          ; 0x2855
    call ds_dispatch_baa6            ; 0x2856
    add sp, byte 0x0e                ; 0x2859
    mov ax, 0                        ; 0x285c
    push ax                          ; 0x285f
    mov ax, word [bp - 0x0004]       ; 0x2860
    add ax, strict word 0x31         ; 0x2863
    cbw                              ; 0x2866
    push ax                          ; 0x2867
    mov ax, word [bp - 0x000e]       ; 0x2868
    add ax, strict word 0x2b         ; 0x286b
    push ax                          ; 0x286e
    mov ax, word [bp - 0x000c]       ; 0x286f
    add ax, strict word 0x3b         ; 0x2872
    push ax                          ; 0x2875
    push word [bp - 0x000e]          ; 0x2876
    push word [bp - 0x000c]          ; 0x2879
    mov ax, word [bp - 0x0004]       ; 0x287c
    add ax, strict word 0x12         ; 0x287f
    push ax                          ; 0x2882
    call ds_dispatch_baa6            ; 0x2883
    add sp, byte 0x0e                ; 0x2886
    inc word [bp - 0x0004]           ; 0x2889
    mov ax, word [bp - 0x0004]       ; 0x288c
    cmp ax, strict word 6            ; 0x288f
    jge short @..api_idx_0022.l46    ; 0x2892
    jmp near @..api_idx_0022.l45     ; 0x2894
@..api_idx_0022.l46:
    mov ax, 0                        ; 0x2897
    push ax                          ; 0x289a
    mov ax, 0x47                     ; 0x289b
    push ax                          ; 0x289e
    mov ax, 0xc4                     ; 0x289f
    push ax                          ; 0x28a2
    mov ax, 0x13c                    ; 0x28a3
    push ax                          ; 0x28a6
    mov ax, 0xb9                     ; 0x28a7
    push ax                          ; 0x28aa
    mov ax, 0x131                    ; 0x28ab
    push ax                          ; 0x28ae
    mov ax, 0x18                     ; 0x28af
    push ax                          ; 0x28b2
    call ds_dispatch_baa6            ; 0x28b3
    add sp, byte 0x0e                ; 0x28b6
    mov ax, 0                        ; 0x28b9
    push ax                          ; 0x28bc
    push ax                          ; 0x28bd
    push ax                          ; 0x28be
    push ax                          ; 0x28bf
    push ax                          ; 0x28c0
    mov ax, 0xffff                   ; 0x28c1
    push ax                          ; 0x28c4
    mov ax, 0x19                     ; 0x28c5
    push ax                          ; 0x28c8
    call ds_dispatch_baa6            ; 0x28c9
    add sp, byte 0x0e                ; 0x28cc
    mov word [bp - 0x001c], 0        ; 0x28cf
    lea ax, word [bp - 0x0020]       ; 0x28d4
    push ax                          ; 0x28d7
    lea ax, word [bp - 0x001e]       ; 0x28d8
    push ax                          ; 0x28db
    push word [bp - 0x000a]          ; 0x28dc
    call loc_2f55                    ; 0x28df
    add sp, byte 6                   ; 0x28e2
    cmp word [bp - 0x001e], byte 0   ; 0x28e5
    jg short @..api_idx_0022.l47     ; 0x28e9
    jmp near @..api_idx_0022.l55     ; 0x28eb
@..api_idx_0022.l47:
    cmp word [bp - 0x001e], byte 0x0e ; 0x28ee
    jne short @..api_idx_0022.l48    ; 0x28f2
    mov ax, 0                        ; 0x28f4
    push ax                          ; 0x28f7
    mov ax, 0x43                     ; 0x28f8
    push ax                          ; 0x28fb
    mov ax, 0x8d                     ; 0x28fc
    push ax                          ; 0x28ff
    mov ax, 0xb6                     ; 0x2900
    push ax                          ; 0x2903
    mov ax, 0x76                     ; 0x2904
    push ax                          ; 0x2907
    mov ax, 0x8a                     ; 0x2908
    push ax                          ; 0x290b
    mov ax, 0x19                     ; 0x290c
    push ax                          ; 0x290f
    call ds_dispatch_baa6            ; 0x2910
    add sp, byte 0x0e                ; 0x2913
    mov word [bp - 0x001c], 3        ; 0x2916
    jmp near @..api_idx_0022.l55     ; 0x291b
@..api_idx_0022.l48:
    cmp word [bp - 0x001e], byte 8   ; 0x291e
    je short @..api_idx_0022.l49     ; 0x2922
    cmp word [bp - 0x001e], byte 9   ; 0x2924
    jne short @..api_idx_0022.l52    ; 0x2928
@..api_idx_0022.l49:
    mov ax, word [data_82ee]         ; 0x292a
    mov cx, 2                        ; 0x292d
    cwd                              ; 0x2930
    idiv cx                          ; 0x2931
    mov ax, dx                       ; 0x2933
    push ax                          ; 0x2935
    mov ax, word [bp - 0x0020]       ; 0x2936
    cwd                              ; 0x2939
    idiv cx                          ; 0x293a
    mov cx, dx                       ; 0x293c
    pop ax                           ; 0x293e
    cmp ax, cx                       ; 0x293f
    jne short @..api_idx_0022.l52    ; 0x2941
    cmp word [bp - 0x001e], byte 8   ; 0x2943
    jne short @..api_idx_0022.l50    ; 0x2947
    mov ax, 0                        ; 0x2949
    push ax                          ; 0x294c
    mov ax, 0x43                     ; 0x294d
    push ax                          ; 0x2950
    mov ax, 0x8d                     ; 0x2951
    push ax                          ; 0x2954
    mov ax, 0xb6                     ; 0x2955
    push ax                          ; 0x2958
    mov ax, 0x6b                     ; 0x2959
    push ax                          ; 0x295c
    mov ax, 0x8a                     ; 0x295d
    push ax                          ; 0x2960
    mov ax, 0x19                     ; 0x2961
    push ax                          ; 0x2964
    call ds_dispatch_baa6            ; 0x2965
    add sp, byte 0x0e                ; 0x2968
    mov word [bp - 0x001c], 1        ; 0x296b
    jmp short @..api_idx_0022.l51    ; 0x2970
@..api_idx_0022.l50:
    mov ax, 0                        ; 0x2972
    push ax                          ; 0x2975
    mov ax, 0x43                     ; 0x2976
    push ax                          ; 0x2979
    mov ax, 0x5e                     ; 0x297a
    push ax                          ; 0x297d
    mov ax, 0xb6                     ; 0x297e
    push ax                          ; 0x2981
    mov ax, 0x22                     ; 0x2982
    push ax                          ; 0x2985
    mov ax, 0x8a                     ; 0x2986
    push ax                          ; 0x2989
    mov ax, 0x19                     ; 0x298a
    push ax                          ; 0x298d
    call ds_dispatch_baa6            ; 0x298e
    add sp, byte 0x0e                ; 0x2991
    mov word [bp - 0x001c], 2        ; 0x2994
@..api_idx_0022.l51:
    jmp near @..api_idx_0022.l55     ; 0x2999
@..api_idx_0022.l52:
    mov ax, word [data_82ee]         ; 0x299c
    cmp ax, word [bp - 0x0020]       ; 0x299f
    je short @..api_idx_0022.l53     ; 0x29a2
    jmp near @..api_idx_0022.l55     ; 0x29a4
@..api_idx_0022.l53:
    mov ax, word [bp - 0x001e]       ; 0x29a7
    jmp near @..api_idx_0022.l54     ; 0x29aa

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

@..api_idx_0022.l54:
    sub ax, strict word 4            ; 0x2a4c
    cmp ax, strict word 8            ; 0x2a4f
    jae short @..api_idx_0022.l55    ; 0x2a52
    xchg bx, ax                      ; 0x2a54
    shl bx, 1                        ; 0x2a55
    jmp [cs:bx + 0x7a83]             ; 0x2a57
@..api_idx_0022.l55:
    mov ax, 0                        ; 0x2a5c
    push ax                          ; 0x2a5f
    push ax                          ; 0x2a60
    push ax                          ; 0x2a61
    push ax                          ; 0x2a62
    push ax                          ; 0x2a63
    mov ax, 0xffff                   ; 0x2a64
    push ax                          ; 0x2a67
    mov ax, 0x1a                     ; 0x2a68
    push ax                          ; 0x2a6b
    call ds_dispatch_baa6            ; 0x2a6c
    add sp, byte 0x0e                ; 0x2a6f
    mov ax, 0                        ; 0x2a72
    cmp word [data_91b4], byte 0     ; 0x2a75
    je short @..api_idx_0022.l56     ; 0x2a7a
    mov ax, 1                        ; 0x2a7c
@..api_idx_0022.l56:
    mov word [bp - 0x001a], ax       ; 0x2a7f
    les bx, word [0x0002]            ; 0x2a82
    mov ax, word [es:bx]             ; 0x2a86
    mov dx, word [es:bx + 0x2]       ; 0x2a89
    add ax, strict word 0x24         ; 0x2a8d
    adc dx, byte 0                   ; 0x2a90
    mov word [data_919c], dx         ; 0x2a93
    mov word [data_919a], ax         ; 0x2a97
@..api_idx_0022.l57:
    mov ax, 0x59fe                   ; 0x2a9a
    push ax                          ; 0x2a9d
    call ds_dispatch_b90d            ; 0x2a9e
    pop cx                           ; 0x2aa1
    dec ax                           ; 0x2aa2
    mov word [bp - 0x0002], ax       ; 0x2aa3
    call math_loc_0f1d               ; 0x2aa6
    test ax, ax                      ; 0x2aa9
    je short @..api_idx_0022.l58     ; 0x2aab
    mov ax, word [data_82e8]         ; 0x2aad
    inc ax                           ; 0x2ab0
    mov cx, 2                        ; 0x2ab1
    cwd                              ; 0x2ab4
    idiv cx                          ; 0x2ab5
    mov word [data_82e8], dx         ; 0x2ab7
    cmp word [data_5b3e], byte 0     ; 0x2abb
    jne short @..api_idx_0022.l58    ; 0x2ac0
    call loc_676c                    ; 0x2ac2
@..api_idx_0022.l58:
    cmp word [data_5b3e], byte 0     ; 0x2ac5
    jne short @..api_idx_0022.l61    ; 0x2aca
    les bx, word [0x0002]            ; 0x2acc
    mov ax, word [es:bx]             ; 0x2ad0
    mov dx, word [es:bx + 0x2]       ; 0x2ad3
    cmp dx, word [data_919c]         ; 0x2ad7
    jl short @..api_idx_0022.l59     ; 0x2adb
    jne short @..api_idx_0022.l60    ; 0x2add
    cmp ax, word [data_919a]         ; 0x2adf
    ja short @..api_idx_0022.l60     ; 0x2ae3
@..api_idx_0022.l59:
    jmp short @..api_idx_0022.l61    ; 0x2ae5
@..api_idx_0022.l60:
    mov ax, 0                        ; 0x2ae7
    push ax                          ; 0x2aea
    call loc_0ea6                    ; 0x2aeb
    pop cx                           ; 0x2aee
@..api_idx_0022.l61:
    cmp word [data_5b3e], byte 0     ; 0x2aef
    je short @..api_idx_0022.l57     ; 0x2af4
    cmp word [bp - 0x0002], byte 0x0c ; 0x2af6
    jl short @..api_idx_0022.l63     ; 0x2afa
    cmp word [bp - 0x0002], byte 0x12 ; 0x2afc
    jge short @..api_idx_0022.l63    ; 0x2b00
    mov ax, word [bp - 0x0002]       ; 0x2b02
    add ax, strict word 0xfff4       ; 0x2b05
    mov word [data_8af0], ax         ; 0x2b08
    cmp ax, word [data_69c8]         ; 0x2b0b
    jge short @..api_idx_0022.l62    ; 0x2b0f
    mov word [data_830a], 0x1f       ; 0x2b11
@..api_idx_0022.l62:
    jmp near @..api_idx_0022.l69     ; 0x2b17
@..api_idx_0022.l63:
    cmp word [bp - 0x0002], byte 0x12 ; 0x2b1a
    jl short @..api_idx_0022.l65     ; 0x2b1e
    cmp word [bp - 0x0002], byte 0x18 ; 0x2b20
    jge short @..api_idx_0022.l65    ; 0x2b24
    mov ax, word [bp - 0x0002]       ; 0x2b26
    add ax, strict word 0xffee       ; 0x2b29
    mov word [data_8af0], ax         ; 0x2b2c
    cmp ax, word [data_69c8]         ; 0x2b2f
    jge short @..api_idx_0022.l64    ; 0x2b33
    mov ax, 1                        ; 0x2b35
    push ax                          ; 0x2b38
    call api_idx_0002_10             ; 0x2b39
    pop cx                           ; 0x2b3c
    mov word [data_830a], 0x11       ; 0x2b3d
    mov word [data_905e], 5          ; 0x2b43
@..api_idx_0022.l64:
    jmp near @..api_idx_0022.l69     ; 0x2b49
@..api_idx_0022.l65:
    cmp word [bp - 0x0002], byte 0   ; 0x2b4c
    jl short @..api_idx_0022.l66     ; 0x2b50
    cmp word [bp - 0x0002], byte 5   ; 0x2b52
    jg short @..api_idx_0022.l66     ; 0x2b56
    push word [bp - 0x0002]          ; 0x2b58
    call api_idx_0010                ; 0x2b5b
    pop cx                           ; 0x2b5e
    mov ax, 0x32                     ; 0x2b5f
    push ax                          ; 0x2b62
    call ds_dispatch_e489            ; 0x2b63
    pop cx                           ; 0x2b66
@..api_idx_0022.l66:
    mov ax, word [bp - 0x0002]       ; 0x2b67
    jmp near @..api_idx_0022.l67     ; 0x2b6a

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

@..api_idx_0022.l67:
    cmp ax, strict word 0x1a         ; 0x2d4f
    jae short @..api_idx_0022.l68    ; 0x2d52
    xchg bx, ax                      ; 0x2d54
    shl bx, 1                        ; 0x2d55
    jmp [cs:bx + 0x7d62]             ; 0x2d57
@..api_idx_0022.l68:
    cmp word [bp - 0x0002], byte 0   ; 0x2d5c
    jl short @..api_idx_0022.l69     ; 0x2d60
    cmp word [bp - 0x0002], byte 5   ; 0x2d62
    jg short @..api_idx_0022.l69     ; 0x2d66
    mov ax, word [bp - 0x0002]       ; 0x2d68
    shl ax, 1                        ; 0x2d6b
    shl ax, 1                        ; 0x2d6d
    shl ax, 1                        ; 0x2d6f
    mov bx, ax                       ; 0x2d71
    push word [bx + 0x126]           ; 0x2d73
    push word [bx + 0x124]           ; 0x2d77
    push word [bx + 0x122]           ; 0x2d7b
    push word [bx + 0x120]           ; 0x2d7f
    call ds_dispatch_e8da            ; 0x2d83
    add sp, byte 8                   ; 0x2d86
@..api_idx_0022.l69:
    cmp word [data_830a], byte 5     ; 0x2d89
    jne short @..api_idx_0022.l70    ; 0x2d8e
    jmp near @..api_idx_0022.l5      ; 0x2d90
@..api_idx_0022.l70:
    ret                              ; 0x2d93
%include "vmaze/math_loc_2d94.asm"

@..math_loc_2d94.l5:
    mov ax, 4                        ; 0x2de3
    push ax                          ; 0x2de6
    mov ax, word [bp + 0xc]          ; 0x2de7
    mov cx, 6                        ; 0x2dea
    shl ax, cl                       ; 0x2ded
    mov cx, word [bp + 0xa]          ; 0x2def
    shl cx, 1                        ; 0x2df2
    shl cx, 1                        ; 0x2df4
    shl cx, 1                        ; 0x2df6
    add ax, cx                       ; 0x2df8
    add ax, word [bp + 0x8]          ; 0x2dfa
    push ax                          ; 0x2dfd
    mov ax, word [data_0e14]         ; 0x2dfe
    add ax, 0x90                     ; 0x2e01
    push ax                          ; 0x2e04
    call ds_dispatch_ecf6            ; 0x2e05
    add sp, byte 6                   ; 0x2e08
    ret                              ; 0x2e0b
%include "vmaze/math_loc_2e0c.asm"

@..math_loc_2e0c.l5:
    mov ax, 4                        ; 0x2e5b
    push ax                          ; 0x2e5e
    mov ax, word [bp + 0xc]          ; 0x2e5f
    mov cx, 6                        ; 0x2e62
    shl ax, cl                       ; 0x2e65
    mov cx, word [bp + 0xa]          ; 0x2e67
    shl cx, 1                        ; 0x2e6a
    shl cx, 1                        ; 0x2e6c
    shl cx, 1                        ; 0x2e6e
    add ax, cx                       ; 0x2e70
    add ax, word [bp + 0x8]          ; 0x2e72
    push ax                          ; 0x2e75
    mov ax, word [data_0e14]         ; 0x2e76
    add ax, 0x290                    ; 0x2e79
    push ax                          ; 0x2e7c
    call ds_dispatch_ecf6            ; 0x2e7d
    add sp, byte 6                   ; 0x2e80
    ret                              ; 0x2e83
loc_2e84:
    mov ax, 0                        ; 0x2e84
    call ds_dispatch_f40b            ; 0x2e87
    mov ax, 0xffff                   ; 0x2e8a
    cmp word [data_91d0], byte 0     ; 0x2e8d
    je short @..local.l26            ; 0x2e92
    mov ax, word [bp + 0x4]          ; 0x2e94
@..local.l26:
    ret                              ; 0x2e97
loc_2e98:
    mov ax, 0                        ; 0x2e98
    call ds_dispatch_f40b            ; 0x2e9b
    mov ax, word [bp + 0x4]          ; 0x2e9e
    cmp word [data_91d0], byte 0     ; 0x2ea1
    je short @..local.l27            ; 0x2ea6
    mov ax, word [bp + 0x6]          ; 0x2ea8
@..local.l27:
    ret                              ; 0x2eab
loc_2eac:
    mov ax, 0                        ; 0x2eac
    call ds_dispatch_f40b            ; 0x2eaf
    mov ax, 0xffff                   ; 0x2eb2
    cmp word [data_91d2], byte 0     ; 0x2eb5
    je short @..local.l28            ; 0x2eba
    mov ax, word [bp + 0x4]          ; 0x2ebc
@..local.l28:
    ret                              ; 0x2ebf
loc_2ec0:
    mov ax, 0                        ; 0x2ec0
    call ds_dispatch_f40b            ; 0x2ec3
    mov ax, word [bp + 0x4]          ; 0x2ec6
    cmp word [data_91d2], byte 0     ; 0x2ec9
    je short @..local.l29            ; 0x2ece
    mov ax, word [bp + 0x6]          ; 0x2ed0
@..local.l29:
    ret                              ; 0x2ed3
loc_2ed4:
    mov ax, 0                        ; 0x2ed4
    call ds_dispatch_f40b            ; 0x2ed7
    mov ax, word [data_82ee]         ; 0x2eda
    jmp short @..local.l34           ; 0x2edd
@..local.l30:
    mov ax, word [bp + 0xe]          ; 0x2edf
    mov bx, word [bp + 0x4]          ; 0x2ee2
    add word [bx], ax                ; 0x2ee5
    mov ax, word [bp + 0x10]         ; 0x2ee7
    mov bx, word [bp + 0x6]          ; 0x2eea
    add word [bx], ax                ; 0x2eed
    jmp short @..local.l35           ; 0x2eef
@..local.l31:
    mov ax, word [bp + 0x10]         ; 0x2ef1
    mov bx, word [bp + 0x4]          ; 0x2ef4
    add word [bx], ax                ; 0x2ef7
    mov ax, word [bp + 0xe]          ; 0x2ef9
    mov bx, word [bp + 0x6]          ; 0x2efc
    sub word [bx], ax                ; 0x2eff
    jmp short @..local.l35           ; 0x2f01
@..local.l32:
    mov ax, word [bp + 0xe]          ; 0x2f03
    mov bx, word [bp + 0x4]          ; 0x2f06
    sub word [bx], ax                ; 0x2f09
    mov ax, word [bp + 0x10]         ; 0x2f0b
    mov bx, word [bp + 0x6]          ; 0x2f0e
    sub word [bx], ax                ; 0x2f11
    jmp short @..local.l35           ; 0x2f13
@..local.l33:
    mov ax, word [bp + 0x10]         ; 0x2f15
    mov bx, word [bp + 0x4]          ; 0x2f18
    sub word [bx], ax                ; 0x2f1b
    mov ax, word [bp + 0xe]          ; 0x2f1d
    mov bx, word [bp + 0x6]          ; 0x2f20
    add word [bx], ax                ; 0x2f23
    jmp short @..local.l35           ; 0x2f25
@..local.l34:
    cmp ax, strict word 0            ; 0x2f27
    je short @..local.l30            ; 0x2f2a
    cmp ax, strict word 1            ; 0x2f2c
    je short @..local.l31            ; 0x2f2f
    cmp ax, strict word 2            ; 0x2f31
    je short @..local.l32            ; 0x2f34
    cmp ax, strict word 3            ; 0x2f36
    je short @..local.l33            ; 0x2f39
@..local.l35:
    mov bx, word [bp + 0x6]          ; 0x2f3b
    push word [bx]                   ; 0x2f3e
    mov bx, word [bp + 0x4]          ; 0x2f40
    push word [bx]                   ; 0x2f43
    push word [bp + 0xc]             ; 0x2f45
    push word [bp + 0xa]             ; 0x2f48
    push word [bp + 0x8]             ; 0x2f4b
    call api_idx_0004_6              ; 0x2f4e
    add sp, byte 0x0a                ; 0x2f51
    ret                              ; 0x2f54
loc_2f55:
    mov ax, 0                        ; 0x2f55
    call ds_dispatch_f40b            ; 0x2f58
    mov ax, 6                        ; 0x2f5b
    push ax                          ; 0x2f5e
    push word [bp + 0x4]             ; 0x2f5f
    mov ax, word [data_0e14]         ; 0x2f62
    add ax, 0x4b0                    ; 0x2f65
    push ax                          ; 0x2f68
    call ds_dispatch_ecf6            ; 0x2f69
    add sp, byte 6                   ; 0x2f6c
    mov bx, word [bp + 0x6]          ; 0x2f6f
    mov word [bx], ax                ; 0x2f72
    mov ax, 2                        ; 0x2f74
    push ax                          ; 0x2f77
    push word [bp + 0x4]             ; 0x2f78
    mov ax, word [data_0e14]         ; 0x2f7b
    add ax, 0x7b0                    ; 0x2f7e
    push ax                          ; 0x2f81
    call ds_dispatch_ecf6            ; 0x2f82
    add sp, byte 6                   ; 0x2f85
    mov bx, word [bp + 0x8]          ; 0x2f88
    mov word [bx], ax                ; 0x2f8b
    ret                              ; 0x2f8d
%include "vmaze/api_idx_0008_3.asm"

    cmp word [data_91a6], byte 0     ; 0x2fcb
    je short loc_2fd6                ; 0x2fd0
    mov ax, 0                        ; 0x2fd2
    ret                              ; 0x2fd5
    mov ax, 5                        ; 0x2fd6
    imul word [data_91d6]            ; 0x2fd9
    add ax, word [bp + 0xe]          ; 0x2fdd
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 1        ; 0x2fe2
    mov ax, 4                        ; 0x2fe7
    ret                              ; 0x2fea
    mov ax, 5                        ; 0x2feb
    imul word [data_91d6]            ; 0x2fee
    add ax, word [bp + 0xe]          ; 0x2ff2
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e26], 3        ; 0x2ff7
    mov ax, 0                        ; 0x2ffc
    ret                              ; 0x2fff
    push cs                          ; 0x3000
    sbb byte [di], 0x80              ; 0x3001
    push cs                          ; 0x3004
    adc byte [bp + si], 0x80         ; 0x3005
    push cs                          ; 0x3008
    xor byte [bp + si], 0x80         ; 0x3009
@..api_idx_0008_3.l2:
    cmp ax, strict word 6            ; 0x300c
    jae short @..api_idx_0008_3.l3   ; 0x300f
    xchg bx, ax                      ; 0x3011
    shl bx, 1                        ; 0x3012
    jmp [cs:bx - 0x7fb9]             ; 0x3014
@..api_idx_0008_3.l3:
    mov ax, word [bp + 0xc]          ; 0x3019
    mov cx, 6                        ; 0x301c
    shl ax, cl                       ; 0x301f
    mov cx, word [bp + 0xa]          ; 0x3021
    shl cx, 1                        ; 0x3024
    shl cx, 1                        ; 0x3026
    shl cx, 1                        ; 0x3028
    add ax, cx                       ; 0x302a
    add ax, word [bp + 0x8]          ; 0x302c
    mov word [bp - 0x0002], ax       ; 0x302f
    push ax                          ; 0x3032
    mov ax, word [data_0e14]         ; 0x3033
    add ax, 0x9b0                    ; 0x3036
    push ax                          ; 0x3039
    call ds_dispatch_ec74            ; 0x303a
    add sp, byte 4                   ; 0x303d
    test ax, ax                      ; 0x3040
    je short @..api_idx_0008_3.l5    ; 0x3042
    mov ax, word [data_91d4]         ; 0x3044
    jmp short @..api_idx_0008_3.l4   ; 0x3047

    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91
    db 0x03, 0xeb, 0x3f, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6
    db 0x87, 0xda, 0x91, 0x01, 0xeb, 0x2c, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e
    db 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91, 0x02, 0xeb, 0x19, 0x90, 0x80, 0xa3, 0x80, 0xb6, 0x80, 0xa3
    db 0x80, 0x90, 0x80, 0xa3, 0x80

@..api_idx_0008_3.l4:
    cmp ax, strict word 6            ; 0x308e
    jae short @..api_idx_0008_3.l5   ; 0x3091
    xchg bx, ax                      ; 0x3093
    shl bx, 1                        ; 0x3094
    jmp [cs:bx - 0x7f37]             ; 0x3096
@..api_idx_0008_3.l5:
    push word [bp - 0x0002]          ; 0x309b
    mov ax, word [data_0e14]         ; 0x309e
    add ax, 0x8b0                    ; 0x30a1
    push ax                          ; 0x30a4
    call ds_dispatch_ec74            ; 0x30a5
    add sp, byte 4                   ; 0x30a8
    test ax, ax                      ; 0x30ab
    jne short @..api_idx_0008_3.l6   ; 0x30ad
    jmp near @..api_idx_0008_3.l8    ; 0x30af
@..api_idx_0008_3.l6:
    mov ax, word [data_91d4]         ; 0x30b2
    jmp short @..api_idx_0008_3.l7   ; 0x30b5

    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91
    db 0x02, 0xeb, 0x60, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6
    db 0x87, 0xf3, 0x91, 0x01, 0xeb, 0x4d, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91, 0x03, 0x46, 0x0e
    db 0x8b, 0xd8, 0xc6, 0x87, 0xda, 0x91, 0x03, 0xeb, 0x3a, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xd6, 0x91
    db 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0x0c, 0x92, 0x01, 0x83, 0x3e, 0xd6, 0x91, 0x04, 0x7d
    db 0x05, 0xc6, 0x87, 0x11, 0x92, 0x01, 0xb8, 0x00, 0x00, 0xc3, 0x37, 0x81, 0xfe, 0x80, 0x11, 0x81
    db 0x37, 0x81, 0x11, 0x81, 0x24, 0x81

@..api_idx_0008_3.l7:
    cmp ax, strict word 6            ; 0x311d
    jae short @..api_idx_0008_3.l8   ; 0x3120
    xchg bx, ax                      ; 0x3122
    shl bx, 1                        ; 0x3123
    jmp [cs:bx - 0x7ea8]             ; 0x3125
@..api_idx_0008_3.l8:
    push word [bp - 0x0002]          ; 0x312a
    mov ax, word [data_0e14]         ; 0x312d
    add ax, 0x930                    ; 0x3130
    push ax                          ; 0x3133
    call ds_dispatch_ec74            ; 0x3134
    add sp, byte 4                   ; 0x3137
    test ax, ax                      ; 0x313a
    je short @..api_idx_0008_3.l13   ; 0x313c
    mov ax, word [data_830c]         ; 0x313e
    jmp short @..api_idx_0008_3.l12  ; 0x3141
@..api_idx_0008_3.l9:
    mov ax, 5                        ; 0x3143
    imul word [data_91d6]            ; 0x3146
    add ax, word [bp + 0xe]          ; 0x314a
    mov bx, ax                       ; 0x314d
    mov byte [bx - 0x6e26], 3        ; 0x314f
    jmp short @..api_idx_0008_3.l13  ; 0x3154
@..api_idx_0008_3.l10:
    mov ax, 5                        ; 0x3156
    imul word [data_91d6]            ; 0x3159
    add ax, word [bp + 0xe]          ; 0x315d
    mov bx, ax                       ; 0x3160
    mov byte [bx - 0x6df4], 2        ; 0x3162
    cmp word [data_91d6], byte 4     ; 0x3167
    jge short @..api_idx_0008_3.l11  ; 0x316c
    mov byte [bx - 0x6def], 2        ; 0x316e
@..api_idx_0008_3.l11:
    jmp short @..api_idx_0008_3.l13  ; 0x3173
@..api_idx_0008_3.l12:
    cmp ax, strict word 0xa          ; 0x3175
    je short @..api_idx_0008_3.l10   ; 0x3178
    cmp ax, strict word 0xe          ; 0x317a
    je short @..api_idx_0008_3.l9    ; 0x317d
    cmp ax, strict word 0x13         ; 0x317f
    je short @..api_idx_0008_3.l9    ; 0x3182
    cmp ax, strict word 0x19         ; 0x3184
    je short @..api_idx_0008_3.l10   ; 0x3187
    cmp ax, strict word 0x1f         ; 0x3189
    je short @..api_idx_0008_3.l9    ; 0x318c
@..api_idx_0008_3.l13:
    mov ax, word [data_82ee]         ; 0x318e
    jmp short @..api_idx_0008_3.l18  ; 0x3191
@..api_idx_0008_3.l14:
    mov ax, 4                        ; 0x3193
    push ax                          ; 0x3196
    push word [bp - 0x0002]          ; 0x3197
    mov ax, word [data_0e14]         ; 0x319a
    add ax, 0x90                     ; 0x319d
    push ax                          ; 0x31a0
    call ds_dispatch_ecf6            ; 0x31a1
    add sp, byte 6                   ; 0x31a4
    mov word [bp - 0x0004], ax       ; 0x31a7
    jmp short @..api_idx_0008_3.l19  ; 0x31aa
@..api_idx_0008_3.l15:
    mov ax, 4                        ; 0x31ac
    push ax                          ; 0x31af
    push word [bp - 0x0002]          ; 0x31b0
    mov ax, word [data_0e14]         ; 0x31b3
    add ax, 0x290                    ; 0x31b6
    push ax                          ; 0x31b9
    call ds_dispatch_ecf6            ; 0x31ba
    add sp, byte 6                   ; 0x31bd
    mov word [bp - 0x0004], ax       ; 0x31c0
    jmp short @..api_idx_0008_3.l19  ; 0x31c3
@..api_idx_0008_3.l16:
    push word [bp + 0xc]             ; 0x31c5
    push word [bp + 0xa]             ; 0x31c8
    push word [bp + 0x8]             ; 0x31cb
    push word [bp + 0x6]             ; 0x31ce
    push word [bp + 0x4]             ; 0x31d1
    call math_loc_2d94               ; 0x31d4
    add sp, byte 0x0a                ; 0x31d7
    mov word [bp - 0x0004], ax       ; 0x31da
    jmp short @..api_idx_0008_3.l19  ; 0x31dd
@..api_idx_0008_3.l17:
    push word [bp + 0xc]             ; 0x31df
    push word [bp + 0xa]             ; 0x31e2
    push word [bp + 0x8]             ; 0x31e5
    push word [bp + 0x6]             ; 0x31e8
    push word [bp + 0x4]             ; 0x31eb
    call math_loc_2e0c               ; 0x31ee
    add sp, byte 0x0a                ; 0x31f1
    mov word [bp - 0x0004], ax       ; 0x31f4
    jmp short @..api_idx_0008_3.l19  ; 0x31f7
@..api_idx_0008_3.l18:
    cmp ax, strict word 0            ; 0x31f9
    je short @..api_idx_0008_3.l14   ; 0x31fc
    cmp ax, strict word 1            ; 0x31fe
    je short @..api_idx_0008_3.l15   ; 0x3201
    cmp ax, strict word 2            ; 0x3203
    je short @..api_idx_0008_3.l16   ; 0x3206
    cmp ax, strict word 3            ; 0x3208
    je short @..api_idx_0008_3.l17   ; 0x320b
@..api_idx_0008_3.l19:
    lea ax, word [bp - 0x0008]       ; 0x320d
    push ax                          ; 0x3210
    lea ax, word [bp - 0x0006]       ; 0x3211
    push ax                          ; 0x3214
    push word [bp - 0x0002]          ; 0x3215
    call loc_2f55                    ; 0x3218
    add sp, byte 6                   ; 0x321b
    mov ax, word [data_82ee]         ; 0x321e
    cmp ax, word [bp - 0x0008]       ; 0x3221
    je short @..api_idx_0008_3.l21   ; 0x3224
    mov ax, word [bp - 0x0006]       ; 0x3226
    cmp ax, strict word 7            ; 0x3229
    jl short @..api_idx_0008_3.l20   ; 0x322c
    cmp ax, strict word 9            ; 0x322e
    jle short @..api_idx_0008_3.l21  ; 0x3231
@..api_idx_0008_3.l20:
    cmp ax, strict word 0xb          ; 0x3233
    jg short @..api_idx_0008_3.l21   ; 0x3236
    jmp near @..api_idx_0008_3.l23   ; 0x3238
@..api_idx_0008_3.l21:
    mov ax, word [bp - 0x0006]       ; 0x323b
    jmp near @..api_idx_0008_3.l22   ; 0x323e

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

@..api_idx_0008_3.l22:
    cmp ax, strict word 0x12         ; 0x337a
    jae short @..api_idx_0008_3.l23  ; 0x337d
    xchg bx, ax                      ; 0x337f
    shl bx, 1                        ; 0x3380
    jmp [cs:bx - 0x7c63]             ; 0x3382
@..api_idx_0008_3.l23:
    mov ax, word [data_830c]         ; 0x3387
    cmp ax, word [data_8f28]         ; 0x338a
    jne short @..api_idx_0008_3.l24  ; 0x338e
    mov ax, word [bp + 0xc]          ; 0x3390
    cmp ax, word [data_8f2a]         ; 0x3393
    jne short @..api_idx_0008_3.l24  ; 0x3397
    mov ax, word [bp + 0x8]          ; 0x3399
    cmp ax, word [data_8f2e]         ; 0x339c
    jne short @..api_idx_0008_3.l24  ; 0x33a0
    mov ax, word [bp + 0xa]          ; 0x33a2
    cmp ax, word [data_8f2c]         ; 0x33a5
    jne short @..api_idx_0008_3.l24  ; 0x33a9
    mov ax, 5                        ; 0x33ab
    imul word [data_91d6]            ; 0x33ae
    add ax, word [bp + 0xe]          ; 0x33b2
    mov bx, ax                       ; 0x33b5
    mov byte [bx - 0x6d5e], 3        ; 0x33b7
@..api_idx_0008_3.l24:
    mov ax, word [bp - 0x0004]       ; 0x33bc
    ret                              ; 0x33bf
%include "vmaze/api_idx_0008_4.asm"

    cmp word [data_91a6], byte 0     ; 0x33fa
    je short loc_3405                ; 0x33ff
    mov ax, 0                        ; 0x3401
    ret                              ; 0x3404
    mov ax, 4                        ; 0x3405
    ret                              ; 0x3408
    mov ax, 0                        ; 0x3409
    ret                              ; 0x340c
    cmp ax, 0x4c84                   ; 0x340d
    test byte [di], bh               ; 0x3410
    test byte [bx + di - 0x007c], al ; 0x3412
    cmp ax, 0x5084                   ; 0x3415
    db 0x84
@..api_idx_0008_4.l1:
    cmp ax, strict word 6            ; 0x3419
    jae short @..api_idx_0008_4.l2   ; 0x341c
    xchg bx, ax                      ; 0x341e
    shl bx, 1                        ; 0x341f
    jmp [cs:bx - 0x7bac]             ; 0x3421
@..api_idx_0008_4.l2:
    mov ax, word [bp + 0xe]          ; 0x3426
    mov cx, 6                        ; 0x3429
    shl ax, cl                       ; 0x342c
    mov cx, word [bp + 0xc]          ; 0x342e
    shl cx, 1                        ; 0x3431
    shl cx, 1                        ; 0x3433
    shl cx, 1                        ; 0x3435
    add ax, cx                       ; 0x3437
    add ax, word [bp + 0xa]          ; 0x3439
    mov word [bp - 0x0002], ax       ; 0x343c
    push ax                          ; 0x343f
    mov ax, word [data_0e14]         ; 0x3440
    add ax, 0x8b0                    ; 0x3443
    push ax                          ; 0x3446
    call ds_dispatch_ec74            ; 0x3447
    add sp, byte 4                   ; 0x344a
    test ax, ax                      ; 0x344d
    je short @..api_idx_0008_4.l5    ; 0x344f
    mov ax, word [data_91d4]         ; 0x3451
    jmp short @..api_idx_0008_4.l4   ; 0x3454
@..api_idx_0008_4.l3:
    mov ax, 0                        ; 0x3456
    ret                              ; 0x3459
@..api_idx_0008_4.l4:
    cmp ax, strict word 0            ; 0x345a
    je short @..api_idx_0008_4.l3    ; 0x345d
    cmp ax, strict word 3            ; 0x345f
    je short @..api_idx_0008_4.l3    ; 0x3462
@..api_idx_0008_4.l5:
    mov ax, word [data_82ee]         ; 0x3464
    add ax, word [bp + 0x4]          ; 0x3467
    mov cx, 4                        ; 0x346a
    cwd                              ; 0x346d
    idiv cx                          ; 0x346e
    mov ax, dx                       ; 0x3470
    jmp short @..api_idx_0008_4.l10  ; 0x3472
@..api_idx_0008_4.l6:
    push word [bp + 0xe]             ; 0x3474
    push word [bp + 0xc]             ; 0x3477
    push word [bp + 0xa]             ; 0x347a
    push word [bp + 0x8]             ; 0x347d
    push word [bp + 0x6]             ; 0x3480
    call math_loc_2e0c               ; 0x3483
    add sp, byte 0x0a                ; 0x3486
    mov word [bp - 0x0004], ax       ; 0x3489
    jmp short @..api_idx_0008_4.l11  ; 0x348c
@..api_idx_0008_4.l7:
    mov ax, 4                        ; 0x348e
    push ax                          ; 0x3491
    push word [bp - 0x0002]          ; 0x3492
    mov ax, word [data_0e14]         ; 0x3495
    add ax, 0x90                     ; 0x3498
    push ax                          ; 0x349b
    call ds_dispatch_ecf6            ; 0x349c
    add sp, byte 6                   ; 0x349f
    mov word [bp - 0x0004], ax       ; 0x34a2
    jmp short @..api_idx_0008_4.l11  ; 0x34a5
@..api_idx_0008_4.l8:
    mov ax, 4                        ; 0x34a7
    push ax                          ; 0x34aa
    push word [bp - 0x0002]          ; 0x34ab
    mov ax, word [data_0e14]         ; 0x34ae
    add ax, 0x290                    ; 0x34b1
    push ax                          ; 0x34b4
    call ds_dispatch_ecf6            ; 0x34b5
    add sp, byte 6                   ; 0x34b8
    mov word [bp - 0x0004], ax       ; 0x34bb
    jmp short @..api_idx_0008_4.l11  ; 0x34be
@..api_idx_0008_4.l9:
    push word [bp + 0xe]             ; 0x34c0
    push word [bp + 0xc]             ; 0x34c3
    push word [bp + 0xa]             ; 0x34c6
    push word [bp + 0x8]             ; 0x34c9
    push word [bp + 0x6]             ; 0x34cc
    call math_loc_2d94               ; 0x34cf
    add sp, byte 0x0a                ; 0x34d2
    mov word [bp - 0x0004], ax       ; 0x34d5
    jmp short @..api_idx_0008_4.l11  ; 0x34d8
@..api_idx_0008_4.l10:
    cmp ax, strict word 0            ; 0x34da
    je short @..api_idx_0008_4.l6    ; 0x34dd
    cmp ax, strict word 1            ; 0x34df
    je short @..api_idx_0008_4.l7    ; 0x34e2
    cmp ax, strict word 2            ; 0x34e4
    je short @..api_idx_0008_4.l8    ; 0x34e7
    cmp ax, strict word 3            ; 0x34e9
    je short @..api_idx_0008_4.l9    ; 0x34ec
@..api_idx_0008_4.l11:
    lea ax, word [bp - 0x0008]       ; 0x34ee
    push ax                          ; 0x34f1
    lea ax, word [bp - 0x0006]       ; 0x34f2
    push ax                          ; 0x34f5
    push word [bp - 0x0002]          ; 0x34f6
    call loc_2f55                    ; 0x34f9
    add sp, byte 6                   ; 0x34fc
    mov ax, word [bp - 0x0008]       ; 0x34ff
    add ax, word [bp + 0x4]          ; 0x3502
    inc ax                           ; 0x3505
    mov cx, 4                        ; 0x3506
    cwd                              ; 0x3509
    idiv cx                          ; 0x350a
    mov word [bp - 0x0008], dx       ; 0x350c
    cmp dx, word [data_82ee]         ; 0x350f
    je short @..api_idx_0008_4.l12   ; 0x3513
    jmp near @..api_idx_0008_4.l14   ; 0x3515
@..api_idx_0008_4.l12:
    mov ax, word [bp - 0x0006]       ; 0x3518
    jmp short @..api_idx_0008_4.l13  ; 0x351b

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xeb, 0x64, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xeb, 0x5d, 0xc7, 0x46
    db 0xfc, 0x0a, 0x00, 0xeb, 0x56, 0xc7, 0x46, 0xfc, 0x0b, 0x00, 0xeb, 0x4f, 0x83, 0x3e, 0xd6, 0x91
    db 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0c, 0x00, 0xeb, 0x41, 0x83, 0x3e, 0xd6, 0x91, 0x00, 0x75
    db 0x05, 0xc7, 0x46, 0xfc, 0x0d, 0x00, 0xeb, 0x33, 0xc7, 0x46, 0xfc, 0x0e, 0x00, 0xeb, 0x2c, 0xc7
    db 0x46, 0xfc, 0x0f, 0x00, 0xeb, 0x25, 0xcf, 0x85, 0x64, 0x85, 0x6b, 0x85, 0x72, 0x85, 0x79, 0x85
    db 0x80, 0x85, 0x8e, 0x85, 0xcf, 0x85, 0xcf, 0x85, 0xcf, 0x85, 0x9c, 0x85, 0xa3, 0x85

@..api_idx_0008_4.l13:
    cmp ax, strict word 0xc          ; 0x357b
    jae short @..api_idx_0008_4.l14  ; 0x357e
    xchg bx, ax                      ; 0x3580
    shl bx, 1                        ; 0x3581
    jmp [cs:bx - 0x7a56]             ; 0x3583
@..api_idx_0008_4.l14:
    mov ax, word [bp - 0x0004]       ; 0x3588
    ret                              ; 0x358b
%include "vmaze/api_idx_0004_5.asm"

    mov ax, 0x11                     ; 0x378c
    imul word [data_931e]            ; 0x378f
    mov bx, ax                       ; 0x3793
    pop ax                           ; 0x3795
    mov word [bx - 0x6ce0], ax       ; 0x3796
    mov ax, word [bp + 0x8]          ; 0x379a
    mov word [bx - 0x6cde], ax       ; 0x379d
@..api_idx_0004_5.l14:
    mov al, byte [bp + 0xa]          ; 0x37a1
    push ax                          ; 0x37a4
    mov ax, 0x11                     ; 0x37a5
    imul word [data_931e]            ; 0x37a8
    mov bx, ax                       ; 0x37ac
    pop ax                           ; 0x37ae
    mov byte [bx - 0x6cd8], al       ; 0x37af
    mov al, byte [bp + 0xc]          ; 0x37b3
    mov byte [bx - 0x6cd7], al       ; 0x37b6
    mov al, byte [bp + 0xe]          ; 0x37ba
    mov byte [bx - 0x6cd6], al       ; 0x37bd
    mov al, byte [bp + 0x10]         ; 0x37c1
    mov byte [bx - 0x6cd5], al       ; 0x37c4
    mov ax, word [bp + 0x12]         ; 0x37c8
    mov word [bx - 0x6cdc], ax       ; 0x37cb
    mov ax, word [bp + 0x14]         ; 0x37cf
    mov word [bx - 0x6cda], ax       ; 0x37d2
    mov al, byte [bp + 0x16]         ; 0x37d6
    mov byte [bx - 0x6cd3], al       ; 0x37d9
    mov al, byte [bp + 0x1a]         ; 0x37dd
    mov byte [bx - 0x6cd1], al       ; 0x37e0
    mov al, byte [bp + 0x1c]         ; 0x37e4
    mov byte [bx - 0x6cd0], al       ; 0x37e7
    inc word [data_931e]             ; 0x37eb
    mov ax, word [data_931e]         ; 0x37ef
    cmp ax, strict word 0x78         ; 0x37f2
    jl short @..api_idx_0004_5.l16   ; 0x37f5
@..api_idx_0004_5.l15:
    mov ax, 0                        ; 0x37f7
    push ax                          ; 0x37fa
    call ds_dispatch_b7e0            ; 0x37fb
    pop cx                           ; 0x37fe
    jmp short @..api_idx_0004_5.l15  ; 0x37ff
@..api_idx_0004_5.l16:
    ret                              ; 0x3801
%include "vmaze/api_idx_0010_2.asm"

    push ax                          ; 0x3a02
    mov ax, 0                        ; 0x3a03
    push ax                          ; 0x3a06
    push ax                          ; 0x3a07
    mov ax, 2                        ; 0x3a08
    push ax                          ; 0x3a0b
    push ax                          ; 0x3a0c
    push word [bp - 0x0002]          ; 0x3a0d
    mov ax, word [bp + 0x48]         ; 0x3a10
    add ax, word [bp + 0x4]          ; 0x3a13
    push ax                          ; 0x3a16
    mov ax, word [bp + 0x46]         ; 0x3a17
    add ax, word [bp + 0x4]          ; 0x3a1a
    push ax                          ; 0x3a1d
    call loc_2e98                    ; 0x3a1e
    add sp, byte 4                   ; 0x3a21
    push ax                          ; 0x3a24
    mov ax, 0xff                     ; 0x3a25
    push ax                          ; 0x3a28
    call api_idx_0004_5              ; 0x3a29
    add sp, byte 0x1c                ; 0x3a2c
    jmp near @..api_idx_0010_2.l13   ; 0x3a2f
    mov ax, word [data_91d4]         ; 0x3a32
    mov cx, 2                        ; 0x3a35
    cwd                              ; 0x3a38
    idiv cx                          ; 0x3a39
    db 0x8b, 0xc2 ; mov ax, dx
    cmp ax, strict word 1            ; 0x3a3d
    jne short loc_3a84               ; 0x3a40
    cmp word [bp + 0x4], byte 4      ; 0x3a42
    jge short loc_3a84               ; 0x3a46
    mov ax, 0                        ; 0x3a48
    push ax                          ; 0x3a4b
    push ax                          ; 0x3a4c
    push ax                          ; 0x3a4d
    push word [bp + 0xc]             ; 0x3a4e
    push word [bp + 0x4]             ; 0x3a51
    mov ax, 0xffff                   ; 0x3a54
    push ax                          ; 0x3a57
    push ax                          ; 0x3a58
    mov ax, 0                        ; 0x3a59
    push ax                          ; 0x3a5c
    push ax                          ; 0x3a5d
    push ax                          ; 0x3a5e
    push cx                          ; 0x3a5f
    mov ax, 0xffff                   ; 0x3a60
    push ax                          ; 0x3a63
    cmp word [data_9b18], byte 0     ; 0x3a64
    je short loc_3a73                ; 0x3a69
    mov ax, word [bp + 0x1c]         ; 0x3a6b
    add ax, word [bp + 0x4]          ; 0x3a6e
    jmp short loc_3a79               ; 0x3a71
    mov ax, word [bp + 0x1a]         ; 0x3a73
    add ax, word [bp + 0x4]          ; 0x3a76
    push ax                          ; 0x3a79
    mov ax, 0xfc                     ; 0x3a7a
    push ax                          ; 0x3a7d
    call api_idx_0004_5              ; 0x3a7e
    add sp, byte 0x1c                ; 0x3a81
    jmp short @..api_idx_0010_2.l13  ; 0x3a84
    cli                              ; 0x3a86
    db 0x8a, 0xf1 ; mov dh, cl
    mov byte [di - 0x0077], ah       ; 0x3a89
    int1                             ; 0x3a8c
    mov byte [bx + di - 0x0076], bh  ; 0x3a8d
    cs mov cx, si                    ; 0x3a90
    mov cl, dh                       ; 0x3a93
    mov dl, bh                       ; 0x3a95
    db 0x8a, 0xfa ; mov bh, dl
    mov ah, byte [di - 0x0077]       ; 0x3a99
    mov word [gs:di - 0x0077], sp    ; 0x3a9c
    mov word [gs:di - 0x0077], sp    ; 0x3aa0
    db 0x65, 0x89
@..api_idx_0010_2.l12:
    cmp ax, strict word 0x10         ; 0x3aa6
    jae short @..api_idx_0010_2.l13  ; 0x3aa9
    xchg bx, ax                      ; 0x3aab
    shl bx, 1                        ; 0x3aac
    jmp [cs:bx - 0x7533]             ; 0x3aae
@..api_idx_0010_2.l13:
    mov word [bp - 0x0002], 0xffff   ; 0x3ab3
    mov word [bp - 0x0004], 0xffff   ; 0x3ab8
    mov ax, word [bp + 0x4]          ; 0x3abd
    cmp ax, word [bp - 0x000a]       ; 0x3ac0
    jl short @..api_idx_0010_2.l14   ; 0x3ac3
    jmp near @..api_idx_0010_2.l19   ; 0x3ac5
@..api_idx_0010_2.l14:
    mov word [bp - 0x0010], 0xffff   ; 0x3ac8
    mov ax, word [bp + 0x6]          ; 0x3acd
    jmp near @..api_idx_0010_2.l17   ; 0x3ad0

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

    push ax                          ; 0x3db1
    mov ax, word [bp + 0x3c]         ; 0x3db2
    add ax, word [bp + 0x4]          ; 0x3db5
    push ax                          ; 0x3db8
    mov ax, word [bp + 0x3a]         ; 0x3db9
    add ax, word [bp + 0x4]          ; 0x3dbc
    push ax                          ; 0x3dbf
    call loc_2e98                    ; 0x3dc0
    add sp, byte 4                   ; 0x3dc3
    push ax                          ; 0x3dc6
    mov ax, 0xff                     ; 0x3dc7
    push ax                          ; 0x3dca
    call api_idx_0004_5              ; 0x3dcb
    add sp, byte 0x1c                ; 0x3dce
    cmp word [bp + 0x6], byte 8      ; 0x3dd1
    je short @..api_idx_0010_2.l15   ; 0x3dd5
    cmp word [bp + 0x6], byte 9      ; 0x3dd7
    jne short @..api_idx_0010_2.l16  ; 0x3ddb
@..api_idx_0010_2.l15:
    mov ax, 0                        ; 0x3ddd
    push ax                          ; 0x3de0
    push ax                          ; 0x3de1
    push ax                          ; 0x3de2
    push word [bp + 0xa]             ; 0x3de3
    push word [bp + 0x4]             ; 0x3de6
    mov ax, 0xffff                   ; 0x3de9
    push ax                          ; 0x3dec
    push ax                          ; 0x3ded
    mov ax, 0                        ; 0x3dee
    push ax                          ; 0x3df1
    push ax                          ; 0x3df2
    push ax                          ; 0x3df3
    mov ax, 2                        ; 0x3df4
    push ax                          ; 0x3df7
    mov ax, 0xffff                   ; 0x3df8
    push ax                          ; 0x3dfb
    mov ax, word [bp - 0x0006]       ; 0x3dfc
    add ax, word [bp + 0x4]          ; 0x3dff
    push ax                          ; 0x3e02
    mov ax, 0xff                     ; 0x3e03
    push ax                          ; 0x3e06
    call api_idx_0004_5              ; 0x3e07
    add sp, byte 0x1c                ; 0x3e0a
@..api_idx_0010_2.l16:
    jmp near @..api_idx_0010_2.l18   ; 0x3e0d

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

@..api_idx_0010_2.l17:
    cmp ax, strict word 0x10         ; 0x3ef8
    jae short @..api_idx_0010_2.l18  ; 0x3efb
    xchg bx, ax                      ; 0x3efd
    shl bx, 1                        ; 0x3efe
    jmp [cs:bx - 0x70e1]             ; 0x3f00
@..api_idx_0010_2.l18:
    cmp word [bp - 0x0010], byte 0xff ; 0x3f05
    je short @..api_idx_0010_2.l19   ; 0x3f09
    mov ax, 2                        ; 0x3f0b
    push ax                          ; 0x3f0e
    mov ax, 0                        ; 0x3f0f
    push ax                          ; 0x3f12
    push word [data_91d0]            ; 0x3f13
    mov ax, word [bp + 0x4]          ; 0x3f17
    shl ax, 1                        ; 0x3f1a
    mov bx, ax                       ; 0x3f1c
    push word [bx + 0x576]           ; 0x3f1e
    push word [bp + 0x4]             ; 0x3f22
    mov ax, 0xf8                     ; 0x3f25
    push ax                          ; 0x3f28
    mov ax, 0x48                     ; 0x3f29
    push ax                          ; 0x3f2c
    mov ax, 0                        ; 0x3f2d
    push ax                          ; 0x3f30
    push ax                          ; 0x3f31
    push word [bp - 0x000e]          ; 0x3f32
    push word [bp - 0x000c]          ; 0x3f35
    push ax                          ; 0x3f38
    mov ax, 0xa                      ; 0x3f39
    imul word [bp + 0x4]             ; 0x3f3c
    mov cx, word [bp + 0x8]          ; 0x3f3f
    shl cx, 1                        ; 0x3f42
    add ax, cx                       ; 0x3f44
    mov bx, ax                       ; 0x3f46
    push word [bx + 0x36e]           ; 0x3f48
    push word [bp - 0x0010]          ; 0x3f4c
    call api_idx_0004_5              ; 0x3f4f
    add sp, byte 0x1c                ; 0x3f52
@..api_idx_0010_2.l19:
    ret                              ; 0x3f55
%include "vmaze/api_idx_0012.asm"

    mov ax, word [bp + 0x2c]         ; 0x4154
    add ax, word [bp + 0x4]          ; 0x4157
    push ax                          ; 0x415a
    call loc_2ec0                    ; 0x415b
    add sp, byte 4                   ; 0x415e
    push ax                          ; 0x4161
    mov ax, 0xfd                     ; 0x4162
    push ax                          ; 0x4165
    call api_idx_0004_5              ; 0x4166
    add sp, byte 0x1c                ; 0x4169
    cmp word [bp + 0x26], byte 0xff  ; 0x416c
    je short loc_41bf                ; 0x4170
    cmp word [bp + 0x4], byte 0      ; 0x4172
    jne short loc_41bf               ; 0x4176
    cmp word [bp + 0x6], byte 8      ; 0x4178
    je short loc_4184                ; 0x417c
    cmp word [bp + 0x6], byte 9      ; 0x417e
    db 0x75, 0x3b ; jne short loc_41bf
    mov ax, 0                        ; 0x4184
    push ax                          ; 0x4187
    mov ax, 1                        ; 0x4188
    push ax                          ; 0x418b
    mov ax, 0                        ; 0x418c
    push ax                          ; 0x418f
    push word [bp + 0xa]             ; 0x4190
    push word [bp + 0x4]             ; 0x4193
    mov ax, 0xffff                   ; 0x4196
    push ax                          ; 0x4199
    cmp word [bp + 0x8], byte 2      ; 0x419a
    jge short loc_41a3               ; 0x419e
    mov ax, word [bp + 0x26]         ; 0x41a0
    push ax                          ; 0x41a3
    mov ax, 0                        ; 0x41a4
    push ax                          ; 0x41a7
    push ax                          ; 0x41a8
    push ax                          ; 0x41a9
    mov ax, 2                        ; 0x41aa
    push ax                          ; 0x41ad
    mov ax, 0xffff                   ; 0x41ae
    push ax                          ; 0x41b1
    push word [bp + 0x26]            ; 0x41b2
    mov ax, 0xfd                     ; 0x41b5
    push ax                          ; 0x41b8
    call api_idx_0004_5              ; 0x41b9
    add sp, byte 0x1c                ; 0x41bc
    jmp near @..api_idx_0012.l2      ; 0x41bf
    cmp word [bp + 0x4], byte 4      ; 0x41c2
    jge short loc_41ed               ; 0x41c6
    mov ax, word [bp + 0x3a]         ; 0x41c8
    add ax, word [bp + 0x4]          ; 0x41cb
    push ax                          ; 0x41ce
    mov ax, word [bp + 0x38]         ; 0x41cf
    add ax, word [bp + 0x4]          ; 0x41d2
    push ax                          ; 0x41d5
    call loc_2ec0                    ; 0x41d6
    add sp, byte 4                   ; 0x41d9
    mov word [bp - 0x0004], ax       ; 0x41dc
    mov ax, word [bp + 0x38]         ; 0x41df
    add ax, word [bp + 0x4]          ; 0x41e2
    push ax                          ; 0x41e5
    call loc_2eac                    ; 0x41e6
    pop cx                           ; 0x41e9
    mov word [bp - 0x0006], ax       ; 0x41ea
    cmp word [data_91d4], byte 0     ; 0x41ed
    jne short loc_424a               ; 0x41f2
    cmp word [bp + 0x4], byte 4      ; 0x41f4
    jge short loc_4247               ; 0x41f8
    mov ax, 0                        ; 0x41fa
    push ax                          ; 0x41fd
    mov ax, 1                        ; 0x41fe
    push ax                          ; 0x4201
    mov ax, 0                        ; 0x4202
    push ax                          ; 0x4205
    push word [bp + 0xa]             ; 0x4206
    push word [bp + 0x4]             ; 0x4209
    push word [bp - 0x0006]          ; 0x420c
    mov ax, word [bp + 0x16]         ; 0x420f
    add ax, word [bp + 0x4]          ; 0x4212
    push ax                          ; 0x4215
    call loc_2eac                    ; 0x4216
    pop cx                           ; 0x4219
    push ax                          ; 0x421a
    mov ax, 0                        ; 0x421b
    push ax                          ; 0x421e
    push ax                          ; 0x421f
    mov ax, 2                        ; 0x4220
    push ax                          ; 0x4223
    push ax                          ; 0x4224
    push word [bp - 0x0004]          ; 0x4225
    mov ax, word [bp + 0x18]         ; 0x4228
    add ax, word [bp + 0x4]          ; 0x422b
    push ax                          ; 0x422e
    mov ax, word [bp + 0x16]         ; 0x422f
    add ax, word [bp + 0x4]          ; 0x4232
    push ax                          ; 0x4235
    call loc_2ec0                    ; 0x4236
    add sp, byte 4                   ; 0x4239
    push ax                          ; 0x423c
    mov ax, 0xfd                     ; 0x423d
    push ax                          ; 0x4240
    call api_idx_0004_5              ; 0x4241
    add sp, byte 0x1c                ; 0x4244
    jmp near loc_4352                ; 0x4247
    cmp word [data_91d4], byte 3     ; 0x424a
    jl short loc_425b                ; 0x424f
    cmp word [data_91d4], byte 5     ; 0x4251
    je short loc_425b                ; 0x4256
    jmp near loc_42f6                ; 0x4258
    cmp word [bp + 0x4], byte 5      ; 0x425b
    jl short loc_4264                ; 0x425f
    jmp near loc_42f4                ; 0x4261
    cmp word [data_91d4], byte 2     ; 0x4264
    jne short loc_42a5               ; 0x4269
    cmp word [bp - 0x0004], byte 0xff ; 0x426b
    je short loc_42a5                ; 0x426f
    mov ax, 0                        ; 0x4271
    push ax                          ; 0x4274
    mov ax, 1                        ; 0x4275
    push ax                          ; 0x4278
    mov ax, 0                        ; 0x4279
    push ax                          ; 0x427c
    push word [bp + 0xe]             ; 0x427d
    push word [bp + 0x4]             ; 0x4280
    mov ax, 0xffff                   ; 0x4283
    push ax                          ; 0x4286
    push word [bp - 0x0006]          ; 0x4287
    mov ax, 0                        ; 0x428a
    push ax                          ; 0x428d
    push ax                          ; 0x428e
    push ax                          ; 0x428f
    mov ax, 2                        ; 0x4290
    push ax                          ; 0x4293
    mov ax, 0xffff                   ; 0x4294
    push ax                          ; 0x4297
    push word [bp - 0x0004]          ; 0x4298
    mov ax, 0xfd                     ; 0x429b
    push ax                          ; 0x429e
    call api_idx_0004_5              ; 0x429f
    add sp, byte 0x1c                ; 0x42a2
    mov ax, 0                        ; 0x42a5
    push ax                          ; 0x42a8
    mov ax, 1                        ; 0x42a9
    push ax                          ; 0x42ac
    mov ax, 0                        ; 0x42ad
    push ax                          ; 0x42b0
    push word [bp + 0x10]            ; 0x42b1
    push word [bp + 0x4]             ; 0x42b4
    mov ax, 0xffff                   ; 0x42b7
    push ax                          ; 0x42ba
    mov ax, word [bp + 0x28]         ; 0x42bb
    add ax, word [bp + 0x4]          ; 0x42be
    push ax                          ; 0x42c1
    call loc_2eac                    ; 0x42c2
    pop cx                           ; 0x42c5
    push ax                          ; 0x42c6
    mov ax, 0                        ; 0x42c7
    push ax                          ; 0x42ca
    push ax                          ; 0x42cb
    push ax                          ; 0x42cc
    mov ax, 2                        ; 0x42cd
    push ax                          ; 0x42d0
    mov ax, 0xffff                   ; 0x42d1
    push ax                          ; 0x42d4
    mov ax, word [bp + 0x2a]         ; 0x42d5
    add ax, word [bp + 0x4]          ; 0x42d8
    push ax                          ; 0x42db
    mov ax, word [bp + 0x28]         ; 0x42dc
    add ax, word [bp + 0x4]          ; 0x42df
    push ax                          ; 0x42e2
    call loc_2ec0                    ; 0x42e3
    add sp, byte 4                   ; 0x42e6
    push ax                          ; 0x42e9
    mov ax, 0xfd                     ; 0x42ea
    push ax                          ; 0x42ed
    call api_idx_0004_5              ; 0x42ee
    add sp, byte 0x1c                ; 0x42f1
    jmp short loc_4352               ; 0x42f4
    cmp word [data_91d4], byte 5     ; 0x42f6
    jge short loc_4352               ; 0x42fb
    cmp word [bp + 0x4], byte 4      ; 0x42fd
    db 0x7d, 0x4f ; jge short loc_4352
    mov ax, 0                        ; 0x4303
    push ax                          ; 0x4306
    mov ax, 1                        ; 0x4307
    push ax                          ; 0x430a
    mov ax, 0                        ; 0x430b
    push ax                          ; 0x430e
    push word [bp + 0x14]            ; 0x430f
    push word [bp + 0x4]             ; 0x4312
    mov ax, 0xffff                   ; 0x4315
    push ax                          ; 0x4318
    mov ax, word [bp + 0x3c]         ; 0x4319
    add ax, word [bp + 0x4]          ; 0x431c
    push ax                          ; 0x431f
    call loc_2eac                    ; 0x4320
    pop cx                           ; 0x4323
    push ax                          ; 0x4324
    mov ax, 0                        ; 0x4325
    push ax                          ; 0x4328
    push ax                          ; 0x4329
    push ax                          ; 0x432a
    mov ax, 2                        ; 0x432b
    push ax                          ; 0x432e
    mov ax, 0xffff                   ; 0x432f
    push ax                          ; 0x4332
    mov ax, word [bp + 0x3e]         ; 0x4333
    add ax, word [bp + 0x4]          ; 0x4336
    push ax                          ; 0x4339
    mov ax, word [bp + 0x3c]         ; 0x433a
    add ax, word [bp + 0x4]          ; 0x433d
    push ax                          ; 0x4340
    call loc_2ec0                    ; 0x4341
    add sp, byte 4                   ; 0x4344
    push ax                          ; 0x4347
    mov ax, 0xfd                     ; 0x4348
    push ax                          ; 0x434b
    call api_idx_0004_5              ; 0x434c
    add sp, byte 0x1c                ; 0x434f
    jmp near @..api_idx_0012.l2      ; 0x4352
    cmp word [bp + 0x4], byte 4      ; 0x4355
    jge short loc_43aa               ; 0x4359
    mov ax, 0                        ; 0x435b
    push ax                          ; 0x435e
    mov ax, 1                        ; 0x435f
    push ax                          ; 0x4362
    mov ax, 0                        ; 0x4363
    push ax                          ; 0x4366
    push word [bp + 0xc]             ; 0x4367
    push word [bp + 0x4]             ; 0x436a
    mov ax, 0xffff                   ; 0x436d
    push ax                          ; 0x4370
    mov ax, word [bp + 0x1a]         ; 0x4371
    add ax, word [bp + 0x4]          ; 0x4374
    push ax                          ; 0x4377
    call loc_2e84                    ; 0x4378
    pop cx                           ; 0x437b
    push ax                          ; 0x437c
    mov ax, 0                        ; 0x437d
    push ax                          ; 0x4380
    push ax                          ; 0x4381
    push ax                          ; 0x4382
    mov ax, 2                        ; 0x4383
    push ax                          ; 0x4386
    mov ax, 0xffff                   ; 0x4387
    push ax                          ; 0x438a
    mov ax, word [bp + 0x1c]         ; 0x438b
    add ax, word [bp + 0x4]          ; 0x438e
    push ax                          ; 0x4391
    mov ax, word [bp + 0x1a]         ; 0x4392
    add ax, word [bp + 0x4]          ; 0x4395
    push ax                          ; 0x4398
    call loc_2e98                    ; 0x4399
    add sp, byte 4                   ; 0x439c
    push ax                          ; 0x439f
    mov ax, 0xfb                     ; 0x43a0
    push ax                          ; 0x43a3
    call api_idx_0004_5              ; 0x43a4
    add sp, byte 0x1c                ; 0x43a7
    jmp near @..api_idx_0012.l2      ; 0x43aa
    cmp word [bp + 0x4], byte 4      ; 0x43ad
    jge short loc_4402               ; 0x43b1
    mov ax, 0                        ; 0x43b3
    push ax                          ; 0x43b6
    mov ax, 1                        ; 0x43b7
    push ax                          ; 0x43ba
    mov ax, 0                        ; 0x43bb
    push ax                          ; 0x43be
    push word [bp + 0x12]            ; 0x43bf
    push word [bp + 0x4]             ; 0x43c2
    mov ax, 0xffff                   ; 0x43c5
    push ax                          ; 0x43c8
    mov ax, word [bp + 0x40]         ; 0x43c9
    add ax, word [bp + 0x4]          ; 0x43cc
    push ax                          ; 0x43cf
    call loc_2eac                    ; 0x43d0
    pop cx                           ; 0x43d3
    push ax                          ; 0x43d4
    mov ax, 0                        ; 0x43d5
    push ax                          ; 0x43d8
    push ax                          ; 0x43d9
    push ax                          ; 0x43da
    mov ax, 2                        ; 0x43db
    push ax                          ; 0x43de
    mov ax, 0xffff                   ; 0x43df
    push ax                          ; 0x43e2
    mov ax, word [bp + 0x42]         ; 0x43e3
    add ax, word [bp + 0x4]          ; 0x43e6
    push ax                          ; 0x43e9
    mov ax, word [bp + 0x40]         ; 0x43ea
    add ax, word [bp + 0x4]          ; 0x43ed
    push ax                          ; 0x43f0
    call loc_2ec0                    ; 0x43f1
    add sp, byte 4                   ; 0x43f4
    push ax                          ; 0x43f7
    mov ax, 0xfd                     ; 0x43f8
    push ax                          ; 0x43fb
    call api_idx_0004_5              ; 0x43fc
    add sp, byte 0x1c                ; 0x43ff
    jmp short @..api_idx_0012.l2     ; 0x4402
    js short loc_439a                ; 0x4404
    std                              ; 0x4406
    nop                              ; 0x4407
    xor al, 0x92                     ; 0x4408
    inc ax                           ; 0x440a
    nop                              ; 0x440b
    pushf                            ; 0x440c
    xchg bx, ax                      ; 0x440d
    hlt                              ; 0x440e
    xchg bx, ax                      ; 0x440f
    inc ax                           ; 0x4410
    nop                              ; 0x4411
    or word [bp + si - 0x704d], dx   ; 0x4412
    mov bl, 0x8f                     ; 0x4416
    xor al, 0x92                     ; 0x4418
    xor al, 0x92                     ; 0x441a
    xor al, 0x92                     ; 0x441c
    xor al, 0x92                     ; 0x441e
    xor al, 0x92                     ; 0x4420
    xor al, 0x92                     ; 0x4422
@..api_idx_0012.l1:
    cmp ax, strict word 0x10         ; 0x4424
    jae short @..api_idx_0012.l2     ; 0x4427
    xchg bx, ax                      ; 0x4429
    shl bx, 1                        ; 0x442a
    jmp [cs:bx - 0x6bb5]             ; 0x442c
@..api_idx_0012.l2:
    cmp word [bp + 0x4], byte 4      ; 0x4431
    jl short @..api_idx_0012.l3      ; 0x4435
    jmp near @..api_idx_0012.l10     ; 0x4437
@..api_idx_0012.l3:
    cmp word [bp + 0x8], byte 1      ; 0x443a
    je short @..api_idx_0012.l4      ; 0x443e
    cmp word [bp + 0x8], byte 3      ; 0x4440
    jne short @..api_idx_0012.l5     ; 0x4444
@..api_idx_0012.l4:
    mov ax, 0                        ; 0x4446
    jmp short @..api_idx_0012.l6     ; 0x4449
@..api_idx_0012.l5:
    mov ax, 1                        ; 0x444b
@..api_idx_0012.l6:
    mov word [bp - 0x0012], ax       ; 0x444e
    mov ax, 0                        ; 0x4451
    cmp word [bp + 0x8], byte 2      ; 0x4454
    jle short @..api_idx_0012.l7     ; 0x4458
    mov ax, 1                        ; 0x445a
@..api_idx_0012.l7:
    mov word [bp - 0x0006], ax       ; 0x445d
    mov word [bp - 0x000c], 0xffff   ; 0x4460
    mov ax, word [bp + 0x6]          ; 0x4465
    jmp near @..api_idx_0012.l8      ; 0x4468

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

@..api_idx_0012.l8:
    sub ax, strict word 0xa          ; 0x4613
    cmp ax, strict word 6            ; 0x4616
    jae short @..api_idx_0012.l9     ; 0x4619
    xchg bx, ax                      ; 0x461b
    shl bx, 1                        ; 0x461c
    jmp [cs:bx - 0x69b2]             ; 0x461e
@..api_idx_0012.l9:
    cmp word [bp - 0x000c], byte 0xff ; 0x4623
    je short @..api_idx_0012.l10     ; 0x4627
    mov ax, 3                        ; 0x4629
    push ax                          ; 0x462c
    mov ax, 1                        ; 0x462d
    push ax                          ; 0x4630
    push word [bp - 0x0006]          ; 0x4631
    mov ax, word [bp + 0x4]          ; 0x4634
    shl ax, 1                        ; 0x4637
    mov bx, ax                       ; 0x4639
    push word [bx + 0x576]           ; 0x463b
    push word [bp + 0x4]             ; 0x463f
    mov ax, 0xf8                     ; 0x4642
    push ax                          ; 0x4645
    mov ax, 0x48                     ; 0x4646
    push ax                          ; 0x4649
    mov ax, 0                        ; 0x464a
    push ax                          ; 0x464d
    push ax                          ; 0x464e
    push word [bp - 0x000a]          ; 0x464f
    push word [bp - 0x0008]          ; 0x4652
    push word [bp - 0x0010]          ; 0x4655
    push word [bp - 0x000e]          ; 0x4658
    push word [bp - 0x000c]          ; 0x465b
    call api_idx_0004_5              ; 0x465e
    add sp, byte 0x1c                ; 0x4661
@..api_idx_0012.l10:
    ret                              ; 0x4664
%include "vmaze/api_idx_0012_2.asm"

%include "vmaze/math_loc_4691.asm"

    add ax, word [bp + 0x4]          ; 0x4890
    push ax                          ; 0x4893
    mov ax, word [bp + 0x18]         ; 0x4894
    add ax, word [bp + 0x4]          ; 0x4897
    push ax                          ; 0x489a
    call loc_2ec0                    ; 0x489b
    add sp, byte 4                   ; 0x489e
    push ax                          ; 0x48a1
    mov ax, 0xff                     ; 0x48a2
    push ax                          ; 0x48a5
    call api_idx_0004_5              ; 0x48a6
    add sp, byte 0x1c                ; 0x48a9
    mov word [bp - 0x000e], 0xffff   ; 0x48ac
    mov word [bp - 0x000a], 0xffff   ; 0x48b1
    mov word [bp - 0x0010], 0xffff   ; 0x48b6
    mov word [bp - 0x000c], 0xffff   ; 0x48bb
    cmp word [bp + 0x40], byte 0xff  ; 0x48c0
    je short loc_48eb                ; 0x48c4
    mov ax, word [bp + 0x42]         ; 0x48c6
    add ax, word [bp + 0x4]          ; 0x48c9
    push ax                          ; 0x48cc
    mov ax, word [bp + 0x40]         ; 0x48cd
    add ax, word [bp + 0x4]          ; 0x48d0
    push ax                          ; 0x48d3
    call loc_2ec0                    ; 0x48d4
    add sp, byte 4                   ; 0x48d7
    mov word [bp - 0x000e], ax       ; 0x48da
    mov ax, word [bp + 0x40]         ; 0x48dd
    add ax, word [bp + 0x4]          ; 0x48e0
    push ax                          ; 0x48e3
    call loc_2eac                    ; 0x48e4
    pop cx                           ; 0x48e7
    mov word [bp - 0x0010], ax       ; 0x48e8
loc_48eb:
    cmp word [bp + 0x4], byte 0      ; 0x48eb
    jle short loc_4919               ; 0x48ef
    mov ax, word [bp + 0x3e]         ; 0x48f1
    add ax, word [bp + 0x4]          ; 0x48f4
    dec ax                           ; 0x48f7
    push ax                          ; 0x48f8
    mov ax, word [bp + 0x3c]         ; 0x48f9
    add ax, word [bp + 0x4]          ; 0x48fc
    dec ax                           ; 0x48ff
    push ax                          ; 0x4900
    call loc_2e98                    ; 0x4901
    add sp, byte 4                   ; 0x4904
    mov word [bp - 0x000a], ax       ; 0x4907
    mov ax, word [bp + 0x3c]         ; 0x490a
    add ax, word [bp + 0x4]          ; 0x490d
    dec ax                           ; 0x4910
    push ax                          ; 0x4911
    call loc_2e84                    ; 0x4912
    pop cx                           ; 0x4915
    mov word [bp - 0x000c], ax       ; 0x4916
loc_4919:
    cmp word [bp - 0x000a], byte 0xff ; 0x4919
    jne short loc_4928               ; 0x491d
    cmp word [bp - 0x000e], byte 0xff ; 0x491f
    jne short loc_4928               ; 0x4923
    jmp near loc_49fd                ; 0x4925
loc_4928:
    mov ax, 0                        ; 0x4928
    push ax                          ; 0x492b
    push ax                          ; 0x492c
    push ax                          ; 0x492d
    push word [bp + 0xc]             ; 0x492e
    push word [bp + 0x4]             ; 0x4931
    push word [bp - 0x000c]          ; 0x4934
    push word [bp - 0x0010]          ; 0x4937
    push ax                          ; 0x493a
    push ax                          ; 0x493b
    mov ax, 2                        ; 0x493c
    push ax                          ; 0x493f
    push ax                          ; 0x4940
    push word [bp - 0x000a]          ; 0x4941
    push word [bp - 0x000e]          ; 0x4944
    mov ax, 0xff                     ; 0x4947
    push ax                          ; 0x494a
    call api_idx_0004_5              ; 0x494b
    add sp, byte 0x1c                ; 0x494e
    cmp word [bp - 0x000a], byte 0xff ; 0x4951
    jne short loc_495a               ; 0x4955
    jmp near loc_49fd                ; 0x4957
loc_495a:
    cmp word [data_91d4], byte 0     ; 0x495a
    jne short loc_4964               ; 0x495f
    jmp near loc_49fd                ; 0x4961
loc_4964:
    mov ax, word [bp + 0x4]          ; 0x4964
    cmp ax, strict word 4            ; 0x4967
    je short loc_496f                ; 0x496a
    jmp near loc_49fd                ; 0x496c
loc_496f:
    cmp word [bp + 0x6], byte 0      ; 0x496f
    jne short loc_49b7               ; 0x4973
    mov ax, 0                        ; 0x4975
    push ax                          ; 0x4978
    push ax                          ; 0x4979
    push ax                          ; 0x497a
    push word [bp + 0xc]             ; 0x497b
    push word [bp + 0x4]             ; 0x497e
    mov ax, 0xffff                   ; 0x4981
    push ax                          ; 0x4984
    mov ax, 0xc2                     ; 0x4985
    push ax                          ; 0x4988
    call loc_2e84                    ; 0x4989
    pop cx                           ; 0x498c
    push ax                          ; 0x498d
    mov ax, 0                        ; 0x498e
    push ax                          ; 0x4991
    push ax                          ; 0x4992
    push ax                          ; 0x4993
    mov ax, 2                        ; 0x4994
    push ax                          ; 0x4997
    mov ax, 0xffff                   ; 0x4998
    push ax                          ; 0x499b
    mov ax, 0xc3                     ; 0x499c
    push ax                          ; 0x499f
    mov ax, 0xc2                     ; 0x49a0
    push ax                          ; 0x49a3
    call loc_2e98                    ; 0x49a4
    add sp, byte 4                   ; 0x49a7
    push ax                          ; 0x49aa
    mov ax, 0xff                     ; 0x49ab
    push ax                          ; 0x49ae
    call api_idx_0004_5              ; 0x49af
    add sp, byte 0x1c                ; 0x49b2
    jmp short loc_49fd               ; 0x49b5
loc_49b7:
    cmp word [bp + 0x6], byte 4      ; 0x49b7
    jne short loc_49fd               ; 0x49bb
    mov ax, 0                        ; 0x49bd
    push ax                          ; 0x49c0
    push ax                          ; 0x49c1
    push ax                          ; 0x49c2
    push word [bp + 0xc]             ; 0x49c3
    push word [bp + 0x4]             ; 0x49c6
    mov ax, 0xffff                   ; 0x49c9
    push ax                          ; 0x49cc
    mov ax, 0xc3                     ; 0x49cd
    push ax                          ; 0x49d0
    call loc_2e84                    ; 0x49d1
    pop cx                           ; 0x49d4
    push ax                          ; 0x49d5
    mov ax, 0                        ; 0x49d6
    push ax                          ; 0x49d9
    push ax                          ; 0x49da
    push ax                          ; 0x49db
    mov ax, 2                        ; 0x49dc
    push ax                          ; 0x49df
    mov ax, 0xffff                   ; 0x49e0
    push ax                          ; 0x49e3
    mov ax, 0xc2                     ; 0x49e4
    push ax                          ; 0x49e7
    mov ax, 0xc3                     ; 0x49e8
    push ax                          ; 0x49eb
    call loc_2e98                    ; 0x49ec
    add sp, byte 4                   ; 0x49ef
    push ax                          ; 0x49f2
    mov ax, 0xff                     ; 0x49f3
    push ax                          ; 0x49f6
    call api_idx_0004_5              ; 0x49f7
    add sp, byte 0x1c                ; 0x49fa
loc_49fd:
    jmp near loc_4a98                ; 0x49fd
loc_4a00:
    cmp word [data_91d4], byte 4     ; 0x4a00
    je short loc_4a0a                ; 0x4a05
    jmp near loc_4a98                ; 0x4a07
loc_4a0a:
    cmp word [bp + 0x4], byte 4      ; 0x4a0a
    jl short loc_4a13                ; 0x4a0e
    jmp near loc_4a98                ; 0x4a10
loc_4a13:
    mov ax, word [bp + 0x38]         ; 0x4a13
    add ax, word [bp + 0x4]          ; 0x4a16
    push ax                          ; 0x4a19
    call loc_2eac                    ; 0x4a1a
    pop cx                           ; 0x4a1d
    push ax                          ; 0x4a1e
    mov ax, 2                        ; 0x4a1f
    push ax                          ; 0x4a22
    mov ax, word [bp + 0x3a]         ; 0x4a23
    add ax, word [bp + 0x4]          ; 0x4a26
    push ax                          ; 0x4a29
    mov ax, word [bp + 0x38]         ; 0x4a2a
    add ax, word [bp + 0x4]          ; 0x4a2d
    push ax                          ; 0x4a30
    call loc_2ec0                    ; 0x4a31
    add sp, byte 4                   ; 0x4a34
    push ax                          ; 0x4a37
    push word [bp + 0x10]            ; 0x4a38
    call 0xf01f                      ; 0x4a3b
    add sp, byte 8                   ; 0x4a3e
    mov ax, word [bp + 0x4]          ; 0x4a41
    cmp ax, strict word 2            ; 0x4a44
    jge short loc_4a98               ; 0x4a47
    cmp word [bp + 0x6], byte 2      ; 0x4a49
    jne short loc_4a98               ; 0x4a4d
    mov ax, 0                        ; 0x4a4f
    push ax                          ; 0x4a52
    mov ax, 1                        ; 0x4a53
    push ax                          ; 0x4a56
    mov ax, 0                        ; 0x4a57
    push ax                          ; 0x4a5a
    push word [bp + 0x10]            ; 0x4a5b
    push word [bp + 0x4]             ; 0x4a5e
    mov ax, 0xffff                   ; 0x4a61
    push ax                          ; 0x4a64
    mov ax, word [bp + 0x4]          ; 0x4a65
    add ax, strict word 0x19         ; 0x4a68
    push ax                          ; 0x4a6b
    call loc_2eac                    ; 0x4a6c
    pop cx                           ; 0x4a6f
    push ax                          ; 0x4a70
    mov ax, 0                        ; 0x4a71
    push ax                          ; 0x4a74
    push ax                          ; 0x4a75
    push ax                          ; 0x4a76
    mov ax, 2                        ; 0x4a77
    push ax                          ; 0x4a7a
    mov ax, 0xffff                   ; 0x4a7b
    push ax                          ; 0x4a7e
    mov ax, word [bp + 0x4]          ; 0x4a7f
    add ax, strict word 0x19         ; 0x4a82
    push ax                          ; 0x4a85
    push ax                          ; 0x4a86
    call loc_2ec0                    ; 0x4a87
    add sp, byte 4                   ; 0x4a8a
    push ax                          ; 0x4a8d
    mov ax, 0xfe                     ; 0x4a8e
    push ax                          ; 0x4a91
    call api_idx_0004_5              ; 0x4a92
    add sp, byte 0x1c                ; 0x4a95
loc_4a98:
    jmp short loc_4aa2               ; 0x4a98
loc_4a9a:
    cmp ax, strict word 1            ; 0x4a9a
    jne short loc_4aa2               ; 0x4a9d
    jmp near loc_4850                ; 0x4a9f
loc_4aa2:
    mov ax, 5                        ; 0x4aa2
    imul word [bp + 0x4]             ; 0x4aa5
    add ax, word [bp + 0x6]          ; 0x4aa8
    mov bx, ax                       ; 0x4aab
    mov al, byte [bx - 0x6e28]       ; 0x4aad
    sub ah, ah                       ; 0x4ab1
    jmp near loc_4b75                ; 0x4ab3

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

loc_4b75:
    cmp ax, strict word 5            ; 0x4b75
    jae short loc_4b82               ; 0x4b78
    xchg bx, ax                      ; 0x4b7a
    shl bx, 1                        ; 0x4b7b
    jmp [cs:bx - 0x644e]             ; 0x4b7d
loc_4b82:
    cmp word [bp - 0x0012], byte 0   ; 0x4b82
    jne short loc_4b8b               ; 0x4b86
    jmp near loc_4cdb                ; 0x4b88
loc_4b8b:
    mov ax, 0xa                      ; 0x4b8b
    imul word [bp + 0x4]             ; 0x4b8e
    mov cx, word [bp + 0x6]          ; 0x4b91
    shl cx, 1                        ; 0x4b94
    add ax, cx                       ; 0x4b96
    mov bx, ax                       ; 0x4b98
    cmp word [bx - 0x6dc4], byte 0   ; 0x4b9a
    jne short loc_4bab               ; 0x4b9f
    cmp word [bx - 0x6d46], byte 0   ; 0x4ba1
    jne short loc_4bab               ; 0x4ba6
    jmp near loc_4cdb                ; 0x4ba8
loc_4bab:
    cmp word [bp + 0x6], byte 2      ; 0x4bab
    jne short loc_4be2               ; 0x4baf
    mov ax, word [bp + 0x24]         ; 0x4bb1
    add ax, word [bp + 0x4]          ; 0x4bb4
    push ax                          ; 0x4bb7
    call loc_2eac                    ; 0x4bb8
    pop cx                           ; 0x4bbb
    push ax                          ; 0x4bbc
    mov ax, 2                        ; 0x4bbd
    push ax                          ; 0x4bc0
    mov ax, word [bp + 0x26]         ; 0x4bc1
    add ax, word [bp + 0x4]          ; 0x4bc4
    push ax                          ; 0x4bc7
    mov ax, word [bp + 0x24]         ; 0x4bc8
    add ax, word [bp + 0x4]          ; 0x4bcb
    push ax                          ; 0x4bce
    call loc_2ec0                    ; 0x4bcf
    add sp, byte 4                   ; 0x4bd2
    push ax                          ; 0x4bd5
    mov ax, 3                        ; 0x4bd6
    push ax                          ; 0x4bd9
    db 0xe8, 0x42, 0xa4 ; call 0xf01f
    add sp, byte 8                   ; 0x4bdd
    jmp short loc_4c1b               ; 0x4be0
loc_4be2:
    cmp word [bp + 0x4], byte 0      ; 0x4be2
    jle short loc_4c1b               ; 0x4be6
    mov ax, 0xffff                   ; 0x4be8
    cmp word [bp + 0x6], byte 3      ; 0x4beb
    jne short loc_4bf7               ; 0x4bef
    mov ax, word [bp + 0x2e]         ; 0x4bf1
    add ax, word [bp + 0x4]          ; 0x4bf4
loc_4bf7:
    push ax                          ; 0x4bf7
    mov ax, 2                        ; 0x4bf8
    push ax                          ; 0x4bfb
    cmp word [bp + 0x6], byte 3      ; 0x4bfc
    jne short loc_4c0a               ; 0x4c00
    mov ax, word [bp + 0x2e]         ; 0x4c02
    add ax, word [bp + 0x4]          ; 0x4c05
    jmp short loc_4c10               ; 0x4c08
loc_4c0a:
    mov ax, word [bp + 0x2c]         ; 0x4c0a
    add ax, word [bp + 0x4]          ; 0x4c0d
loc_4c10:
    push ax                          ; 0x4c10
    mov ax, 3                        ; 0x4c11
    push ax                          ; 0x4c14
    db 0xe8, 0x07, 0xa4 ; call 0xf01f
    add sp, byte 8                   ; 0x4c18
loc_4c1b:
    mov ax, 0xa                      ; 0x4c1b
    imul word [bp + 0x4]             ; 0x4c1e
    mov cx, word [bp + 0x6]          ; 0x4c21
    shl cx, 1                        ; 0x4c24
    add ax, cx                       ; 0x4c26
    mov bx, ax                       ; 0x4c28
    cmp word [bx - 0x6dc4], byte 0   ; 0x4c2a
    jne short loc_4c34               ; 0x4c2f
    jmp near loc_4cdb                ; 0x4c31
loc_4c34:
    mov cx, word [bx - 0x6dc4]       ; 0x4c34
    dec cx                           ; 0x4c38
    mov ax, word [data_82ee]         ; 0x4c39
    sub ax, cx                       ; 0x4c3c
    add ax, strict word 6            ; 0x4c3e
    mov cx, 4                        ; 0x4c41
    cwd                              ; 0x4c44
    idiv cx                          ; 0x4c45
    mov word [bp - 0x0002], dx       ; 0x4c47
    mov word [bp - 0x0004], 0        ; 0x4c4a
    mov ax, dx                       ; 0x4c4f
    mov cx, 2                        ; 0x4c51
    cwd                              ; 0x4c54
    idiv cx                          ; 0x4c55
    mov ax, dx                       ; 0x4c57
    test ax, ax                      ; 0x4c59
    jne short loc_4c63               ; 0x4c5b
    cmp word [bp + 0x4], byte 0      ; 0x4c5d
    jg short loc_4c69                ; 0x4c61
loc_4c63:
    cmp word [bp + 0x6], byte 2      ; 0x4c63
    jne short loc_4c87               ; 0x4c67
loc_4c69:
    mov cx, word [bp + 0x4]          ; 0x4c69
    shl cx, 1                        ; 0x4c6c
    shl cx, 1                        ; 0x4c6e
    shl cx, 1                        ; 0x4c70
    add ax, cx                       ; 0x4c72
    inc ax                           ; 0x4c74
    mov word [bp - 0x0004], ax       ; 0x4c75
    mov ax, word [data_91d0]         ; 0x4c78
    mov word [bp - 0x0006], ax       ; 0x4c7b
    mov ax, word [bx + 0x260]        ; 0x4c7e
    mov word [bp - 0x0008], ax       ; 0x4c82
    jmp short loc_4caa               ; 0x4c85
loc_4c87:
    cmp word [bp + 0x4], byte 0      ; 0x4c87
    jle short loc_4caa               ; 0x4c8b
    mov ax, word [bp + 0x4]          ; 0x4c8d
    add ax, strict word 0x20         ; 0x4c90
    mov word [bp - 0x0004], ax       ; 0x4c93
    mov ax, 0                        ; 0x4c96
    cmp word [bp + 0x6], byte 3      ; 0x4c99
    jne short loc_4ca2               ; 0x4c9d
    mov ax, 1                        ; 0x4c9f
loc_4ca2:
    mov word [bp - 0x0006], ax       ; 0x4ca2
    mov word [bp - 0x0008], 0        ; 0x4ca5
loc_4caa:
    cmp word [bp - 0x0004], byte 0   ; 0x4caa
    je short loc_4cdb                ; 0x4cae
    mov ax, 0                        ; 0x4cb0
    push ax                          ; 0x4cb3
    push ax                          ; 0x4cb4
    push word [bp - 0x0006]          ; 0x4cb5
    push ax                          ; 0x4cb8
    push word [bp + 0x4]             ; 0x4cb9
    mov ax, 0xf8                     ; 0x4cbc
    push ax                          ; 0x4cbf
    mov ax, 0x48                     ; 0x4cc0
    push ax                          ; 0x4cc3
    mov ax, 0                        ; 0x4cc4
    push ax                          ; 0x4cc7
    push ax                          ; 0x4cc8
    push ax                          ; 0x4cc9
    push word [bp - 0x0004]          ; 0x4cca
    push ax                          ; 0x4ccd
    push word [bp - 0x0008]          ; 0x4cce
    mov ax, 4                        ; 0x4cd1
    push ax                          ; 0x4cd4
    call api_idx_0004_5              ; 0x4cd5
    add sp, byte 0x1c                ; 0x4cd8
loc_4cdb:
    cmp word [bp + 0x4], byte 4      ; 0x4cdb
    jl short loc_4ce4                ; 0x4cdf
    jmp near loc_4f52                ; 0x4ce1
loc_4ce4:
    mov ax, 5                        ; 0x4ce4
    imul word [bp + 0x4]             ; 0x4ce7
    add ax, word [bp + 0x6]          ; 0x4cea
    mov bx, ax                       ; 0x4ced
    cmp byte [bx - 0x6d60], 3        ; 0x4cef
    je short loc_4cf9                ; 0x4cf4
    jmp near loc_4d96                ; 0x4cf6
loc_4cf9:
    mov ax, word [bp + 0x4]          ; 0x4cf9
    cmp ax, strict word 0            ; 0x4cfc
    jg short loc_4d0c                ; 0x4cff
    mov ax, word [bp + 0x6]          ; 0x4d01
    cmp ax, strict word 2            ; 0x4d04
    je short loc_4d0c                ; 0x4d07
    jmp near loc_4d96                ; 0x4d09
loc_4d0c:
    cmp word [bp + 0x4], byte 0      ; 0x4d0c
    jne short loc_4d27               ; 0x4d10
    mov ax, word [bp + 0x6]          ; 0x4d12
    cmp ax, strict word 2            ; 0x4d15
    jne short loc_4d27               ; 0x4d18
    cmp word [data_8f22], byte 0     ; 0x4d1a
    je short loc_4d27                ; 0x4d1f
    mov word [data_8f20], 0xffff     ; 0x4d21
loc_4d27:
    cmp word [bp + 0x4], byte 0      ; 0x4d27
    jne short loc_4d3a               ; 0x4d2b
    mov ax, word [bp + 0x6]          ; 0x4d2d
    cmp ax, strict word 2            ; 0x4d30
    jne short loc_4d3a               ; 0x4d33
    mov ax, 2                        ; 0x4d35
    jmp short loc_4d3d               ; 0x4d38
loc_4d3a:
    mov ax, 1                        ; 0x4d3a
loc_4d3d:
    mov word [bp - 0x0004], ax       ; 0x4d3d
    mov ax, word [bp + 0x4]          ; 0x4d40
    cmp word [bp - 0x0004], byte 2   ; 0x4d43
    je short loc_4d4a                ; 0x4d47
    dec ax                           ; 0x4d49
loc_4d4a:
    mov word [bp - 0x0008], ax       ; 0x4d4a
    mov ax, 1                        ; 0x4d4d
    push ax                          ; 0x4d50
    push ax                          ; 0x4d51
    mov ax, 0                        ; 0x4d52
    push ax                          ; 0x4d55
    mov ax, word [bp - 0x0008]       ; 0x4d56
    shl ax, 1                        ; 0x4d59
    mov bx, ax                       ; 0x4d5b
    push word [bx + 0x576]           ; 0x4d5d
    push word [bp + 0x4]             ; 0x4d61
    mov ax, 0xf8                     ; 0x4d64
    push ax                          ; 0x4d67
    mov ax, 0x48                     ; 0x4d68
    push ax                          ; 0x4d6b
    mov ax, 0                        ; 0x4d6c
    push ax                          ; 0x4d6f
    push ax                          ; 0x4d70
    push ax                          ; 0x4d71
    push word [bp - 0x0004]          ; 0x4d72
    push word [bx + 0x3dc]           ; 0x4d75
    mov ax, 0xa                      ; 0x4d79
    imul word [bp + 0x4]             ; 0x4d7c
    mov cx, word [bp + 0x6]          ; 0x4d7f
    shl cx, 1                        ; 0x4d82
    add ax, cx                       ; 0x4d84
    mov bx, ax                       ; 0x4d86
    push word [bx + 0x3aa]           ; 0x4d88
    mov ax, 0xc                      ; 0x4d8c
    push ax                          ; 0x4d8f
    call api_idx_0004_5              ; 0x4d90
    add sp, byte 0x1c                ; 0x4d93
loc_4d96:
    mov ax, 5                        ; 0x4d96
    imul word [bp + 0x4]             ; 0x4d99
    add ax, word [bp + 0x6]          ; 0x4d9c
    mov bx, ax                       ; 0x4d9f
    cmp byte [bx - 0x6d60], 1        ; 0x4da1
    je short loc_4daf                ; 0x4da6
    cmp byte [bx - 0x6d60], 2        ; 0x4da8
    jne short loc_4e1e               ; 0x4dad
loc_4daf:
    mov ax, word [bp + 0x4]          ; 0x4daf
    cmp ax, strict word 0            ; 0x4db2
    jg short loc_4dbf                ; 0x4db5
    mov ax, word [bp + 0x6]          ; 0x4db7
    cmp ax, strict word 2            ; 0x4dba
    jne short loc_4e1e               ; 0x4dbd
loc_4dbf:
    mov ax, 1                        ; 0x4dbf
    push ax                          ; 0x4dc2
    push ax                          ; 0x4dc3
    mov ax, 0                        ; 0x4dc4
    push ax                          ; 0x4dc7
    mov ax, word [bp + 0x4]          ; 0x4dc8
    shl ax, 1                        ; 0x4dcb
    mov bx, ax                       ; 0x4dcd
    push word [bx + 0x576]           ; 0x4dcf
    push word [bp + 0x4]             ; 0x4dd3
    mov ax, 0xf8                     ; 0x4dd6
    push ax                          ; 0x4dd9
    mov ax, 0x48                     ; 0x4dda
    push ax                          ; 0x4ddd
    mov ax, 0                        ; 0x4dde
    push ax                          ; 0x4de1
    push ax                          ; 0x4de2
    push ax                          ; 0x4de3
    mov ax, 5                        ; 0x4de4
    imul word [bp + 0x4]             ; 0x4de7
    add ax, word [bp + 0x6]          ; 0x4dea
    mov bx, ax                       ; 0x4ded
    mov al, byte [bx - 0x6d60]       ; 0x4def
    sub ah, ah                       ; 0x4df3
    push ax                          ; 0x4df5
    mov ax, word [bp + 0x4]          ; 0x4df6
    shl ax, 1                        ; 0x4df9
    mov bx, ax                       ; 0x4dfb
    push word [bx + 0x3dc]           ; 0x4dfd
    mov ax, 0xa                      ; 0x4e01
    imul word [bp + 0x4]             ; 0x4e04
    mov cx, word [bp + 0x6]          ; 0x4e07
    shl cx, 1                        ; 0x4e0a
    add ax, cx                       ; 0x4e0c
    mov bx, ax                       ; 0x4e0e
    push word [bx + 0x3aa]           ; 0x4e10
    mov ax, 0xb                      ; 0x4e14
    push ax                          ; 0x4e17
    call api_idx_0004_5              ; 0x4e18
    add sp, byte 0x1c                ; 0x4e1b
loc_4e1e:
    mov ax, 5                        ; 0x4e1e
    imul word [bp + 0x4]             ; 0x4e21
    add ax, word [bp + 0x6]          ; 0x4e24
    mov bx, ax                       ; 0x4e27
    cmp byte [bx - 0x6ddd], 0        ; 0x4e29
    jne short loc_4e33               ; 0x4e2e
    jmp near loc_4f52                ; 0x4e30
loc_4e33:
    cmp word [bp + 0x4], byte 0      ; 0x4e33
    jne short loc_4e54               ; 0x4e37
    mov ax, word [bp + 0x6]          ; 0x4e39
    cmp ax, strict word 2            ; 0x4e3c
    jne short loc_4e54               ; 0x4e3f
    cmp word [data_8f22], byte 0     ; 0x4e41
    je short loc_4e54                ; 0x4e46
    mov al, byte [bx - 0x6ddd]       ; 0x4e48
    sub ah, ah                       ; 0x4e4c
    mov word [data_8f20], ax         ; 0x4e4e
    jmp near loc_4f52                ; 0x4e51
loc_4e54:
    mov ax, word [bp + 0x4]          ; 0x4e54
    cmp ax, strict word 0            ; 0x4e57
    jg short loc_4e67                ; 0x4e5a
    mov ax, word [bp + 0x6]          ; 0x4e5c
    cmp ax, strict word 2            ; 0x4e5f
    je short loc_4e67                ; 0x4e62
    jmp near loc_4f52                ; 0x4e64
loc_4e67:
    mov al, byte [bx - 0x6ddd]       ; 0x4e67
    sub ah, ah                       ; 0x4e6b
    mov cx, ax                       ; 0x4e6d
    dec ax                           ; 0x4e6f
    mov cx, ax                       ; 0x4e70
    mov ax, word [data_82ee]         ; 0x4e72
    sub ax, cx                       ; 0x4e75
    add ax, strict word 6            ; 0x4e77
    mov cx, 4                        ; 0x4e7a
    cwd                              ; 0x4e7d
    idiv cx                          ; 0x4e7e
    mov word [bp - 0x0002], dx       ; 0x4e80
    mov ax, dx                       ; 0x4e83
    jmp near loc_4f38                ; 0x4e85
loc_4e88:
    mov ax, 1                        ; 0x4e88
    push ax                          ; 0x4e8b
    push ax                          ; 0x4e8c
    mov ax, 0                        ; 0x4e8d
    push ax                          ; 0x4e90
    mov ax, word [bp + 0x4]          ; 0x4e91
    shl ax, 1                        ; 0x4e94
    mov bx, ax                       ; 0x4e96
    push word [bx + 0x576]           ; 0x4e98
    push word [bp + 0x4]             ; 0x4e9c
    mov ax, 0xf8                     ; 0x4e9f
    push ax                          ; 0x4ea2
    mov ax, 0x48                     ; 0x4ea3
    push ax                          ; 0x4ea6
    mov ax, 0                        ; 0x4ea7
    push ax                          ; 0x4eaa
    mov ax, 5                        ; 0x4eab
    cmp word [bp - 0x0002], byte 0   ; 0x4eae
    jne short loc_4eb7               ; 0x4eb2
    mov ax, 4                        ; 0x4eb4
loc_4eb7:
    push ax                          ; 0x4eb7
    mov ax, 2                        ; 0x4eb8
    push ax                          ; 0x4ebb
    mov ax, 1                        ; 0x4ebc
    push ax                          ; 0x4ebf
    push word [bx + 0x3dc]           ; 0x4ec0
    mov ax, 0xa                      ; 0x4ec4
    imul word [bp + 0x4]             ; 0x4ec7
    mov cx, word [bp + 0x6]          ; 0x4eca
    shl cx, 1                        ; 0x4ecd
    add ax, cx                       ; 0x4ecf
    mov bx, ax                       ; 0x4ed1
    push word [bx + 0x3aa]           ; 0x4ed3
    mov ax, 3                        ; 0x4ed7
    push ax                          ; 0x4eda
    call api_idx_0004_5              ; 0x4edb
    add sp, byte 0x1c                ; 0x4ede
    jmp short loc_4f52               ; 0x4ee1
loc_4ee3:
    mov ax, 1                        ; 0x4ee3
    push ax                          ; 0x4ee6
    push ax                          ; 0x4ee7
    mov ax, 0                        ; 0x4ee8
    cmp word [bp - 0x0002], byte 3   ; 0x4eeb
    jne short loc_4ef4               ; 0x4eef
    mov ax, 1                        ; 0x4ef1
loc_4ef4:
    push ax                          ; 0x4ef4
    mov ax, word [bp + 0x4]          ; 0x4ef5
    shl ax, 1                        ; 0x4ef8
    mov bx, ax                       ; 0x4efa
    push word [bx + 0x576]           ; 0x4efc
    push word [bp + 0x4]             ; 0x4f00
    mov ax, 0xf8                     ; 0x4f03
    push ax                          ; 0x4f06
    mov ax, 0x48                     ; 0x4f07
    push ax                          ; 0x4f0a
    mov ax, 0                        ; 0x4f0b
    push ax                          ; 0x4f0e
    push ax                          ; 0x4f0f
    push ax                          ; 0x4f10
    mov ax, 3                        ; 0x4f11
    push ax                          ; 0x4f14
    push word [bx + 0x3dc]           ; 0x4f15
    mov ax, 0xa                      ; 0x4f19
    imul word [bp + 0x4]             ; 0x4f1c
    mov cx, word [bp + 0x6]          ; 0x4f1f
    shl cx, 1                        ; 0x4f22
    add ax, cx                       ; 0x4f24
    mov bx, ax                       ; 0x4f26
    push word [bx + 0x3aa]           ; 0x4f28
    mov ax, 3                        ; 0x4f2c
    push ax                          ; 0x4f2f
    call api_idx_0004_5              ; 0x4f30
    add sp, byte 0x1c                ; 0x4f33
    jmp short loc_4f52               ; 0x4f36
loc_4f38:
    cmp ax, strict word 0            ; 0x4f38
    jne short loc_4f40               ; 0x4f3b
    jmp near loc_4e88                ; 0x4f3d
loc_4f40:
    cmp ax, strict word 1            ; 0x4f40
    je short loc_4ee3                ; 0x4f43
    cmp ax, strict word 2            ; 0x4f45
    jne short loc_4f4d               ; 0x4f48
    jmp near loc_4e88                ; 0x4f4a
loc_4f4d:
    cmp ax, strict word 3            ; 0x4f4d
    je short loc_4ee3                ; 0x4f50
loc_4f52:
    ret                              ; 0x4f52
%include "vmaze/api_idx_0016.asm"

%include "vmaze/api_idx_0024.asm"

@..api_idx_0024.l5:
    mov cx, 2                        ; 0x518b
    cwd                              ; 0x518e
    idiv cx                          ; 0x518f
    mov word [bp - 0x000a], ax       ; 0x5191
    mov word [bp - 0x0002], 0        ; 0x5194
@..api_idx_0024.l6:
    mov ax, word [bp - 0x0002]       ; 0x5199
    shl ax, 1                        ; 0x519c
    mov bx, ax                       ; 0x519e
    add bx, bp                       ; 0x51a0
    mov word [bx - 0x0016], 0xff01   ; 0x51a2
    inc word [bp - 0x0002]           ; 0x51a7
    mov ax, word [bp - 0x0002]       ; 0x51aa
    cmp ax, strict word 4            ; 0x51ad
    jl short @..api_idx_0024.l6      ; 0x51b0
    cmp word [bp - 0x000a], byte 0x3e ; 0x51b2
    jge short @..api_idx_0024.l7     ; 0x51b6
    mov ax, word [bp - 0x000a]       ; 0x51b8
    add ax, strict word 0x72         ; 0x51bb
    mov word [bp - 0x0014], ax       ; 0x51be
@..api_idx_0024.l7:
    cmp word [bp - 0x000a], byte 0x10 ; 0x51c1
    jl short @..api_idx_0024.l8      ; 0x51c5
    cmp word [bp - 0x000a], strict word 0xd0 ; 0x51c7
    jg short @..api_idx_0024.l8      ; 0x51cc
    mov ax, word [bp - 0x000a]       ; 0x51ce
    add ax, strict word 0xffe0       ; 0x51d1
    mov word [bp - 0x0012], ax       ; 0x51d4
@..api_idx_0024.l8:
    cmp word [bp - 0x000a], strict word 0xa2 ; 0x51d7
    jl short @..api_idx_0024.l9      ; 0x51dc
    cmp word [bp - 0x000a], strict word 0xf0 ; 0x51de
    jg short @..api_idx_0024.l9      ; 0x51e3
    mov ax, word [bp - 0x000a]       ; 0x51e5
    add ax, 0xff4e                   ; 0x51e8
    mov word [bp - 0x0010], ax       ; 0x51eb
@..api_idx_0024.l9:
    mov ax, word [data_82ee]         ; 0x51ee
    shl ax, 1                        ; 0x51f1
    mov bx, ax                       ; 0x51f3
    add bx, bp                       ; 0x51f5
    cmp word [bx - 0x0016], strict word 0xff01 ; 0x51f7
    jne short @..api_idx_0024.l10    ; 0x51fc
    ret                              ; 0x51fe
@..api_idx_0024.l10:
    mov ax, word [bp - 0x0008]       ; 0x51ff
    mov cx, 0xf0                     ; 0x5202
    cwd                              ; 0x5205
    idiv cx                          ; 0x5206
    mov ax, dx                       ; 0x5208
    mov cx, 7                        ; 0x520a
    cwd                              ; 0x520d
    idiv cx                          ; 0x520e
    mov word [bp - 0x000c], ax       ; 0x5210
    mov ax, word [bp - 0x0008]       ; 0x5213
    mov cx, 0xf0                     ; 0x5216
    cwd                              ; 0x5219
    idiv cx                          ; 0x521a
    test ax, ax                      ; 0x521c
    je short @..api_idx_0024.l11     ; 0x521e
    mov ax, 0x22                     ; 0x5220
    sub ax, word [bp - 0x000c]       ; 0x5223
    jmp short @..api_idx_0024.l12    ; 0x5226
@..api_idx_0024.l11:
    mov ax, word [bp - 0x000c]       ; 0x5228
@..api_idx_0024.l12:
    mov word [bp - 0x000e], ax       ; 0x522b
    mov ax, word [bp - 0x0004]       ; 0x522e
    mov cx, 3                        ; 0x5231
    cwd                              ; 0x5234
    idiv cx                          ; 0x5235
    mov cx, 8                        ; 0x5237
    cwd                              ; 0x523a
    idiv cx                          ; 0x523b
    mov word [bp - 0x0018], dx       ; 0x523d
    mov ax, 1                        ; 0x5240
    cmp dx, byte 5                   ; 0x5243
    jge short @..api_idx_0024.l13    ; 0x5246
    mov ax, 0                        ; 0x5248
@..api_idx_0024.l13:
    mov word [bp - 0x001a], ax       ; 0x524b
    cmp dx, byte 5                   ; 0x524e
    jge short @..api_idx_0024.l14    ; 0x5251
    inc dx                           ; 0x5253
    mov ax, dx                       ; 0x5254
    jmp short @..api_idx_0024.l15    ; 0x5256
@..api_idx_0024.l14:
    sub cx, word [bp - 0x0018]       ; 0x5258
    mov ax, cx                       ; 0x525b
    inc ax                           ; 0x525d
@..api_idx_0024.l15:
    mov byte [bp - 0x0024], al       ; 0x525e
    mov byte [bp - 0x0023], 0        ; 0x5261
    mov ax, 0                        ; 0x5265
    push ax                          ; 0x5268
    push ax                          ; 0x5269
    lea ax, word [bp - 0x0024]       ; 0x526a
    push ax                          ; 0x526d
    push word [bp - 0x001a]          ; 0x526e
    mov ax, 0x90                     ; 0x5271
    push ax                          ; 0x5274
    mov ax, 0x20                     ; 0x5275
    push ax                          ; 0x5278
    mov ax, 0xf8                     ; 0x5279
    push ax                          ; 0x527c
    mov ax, 0x48                     ; 0x527d
    push ax                          ; 0x5280
    mov ax, 0x44                     ; 0x5281
    sub ax, word [bp - 0x000e]       ; 0x5284
    push ax                          ; 0x5287
    mov ax, word [bx - 0x0016]       ; 0x5288
    add ax, strict word 0x48         ; 0x528b
    push ax                          ; 0x528e
    mov ax, 6                        ; 0x528f
    push ax                          ; 0x5292
    call ds_dispatch_efd1            ; 0x5293
    add sp, byte 0x16                ; 0x5296
    ret                              ; 0x5299
%include "vmaze/api_idx_001e.asm"

@..api_idx_001e.l2:
    mov cx, 3                        ; 0x52d3
    cwd                              ; 0x52d6
    idiv cx                          ; 0x52d7
    mov word [bp - 0x0008], ax       ; 0x52d9
    mov word [bp - 0x0002], 0        ; 0x52dc
@..api_idx_001e.l3:
    mov ax, word [bp - 0x0002]       ; 0x52e1
    shl ax, 1                        ; 0x52e4
    mov bx, ax                       ; 0x52e6
    add bx, bp                       ; 0x52e8
    mov word [bx - 0x0014], 0xff01   ; 0x52ea
    inc word [bp - 0x0002]           ; 0x52ef
    mov ax, word [bp - 0x0002]       ; 0x52f2
    cmp ax, strict word 4            ; 0x52f5
    jl short @..api_idx_001e.l3      ; 0x52f8
    cmp word [bp - 0x0008], byte 0x68 ; 0x52fa
    jg short @..api_idx_001e.l4      ; 0x52fe
    mov ax, 0x58                     ; 0x5300
    sub ax, word [bp - 0x0008]       ; 0x5303
    mov word [bp - 0x0012], ax       ; 0x5306
@..api_idx_001e.l4:
    cmp word [bp - 0x0008], byte 0x3a ; 0x5309
    jl short @..api_idx_001e.l5      ; 0x530d
    cmp word [bp - 0x0008], strict word 0xfa ; 0x530f
    jg short @..api_idx_001e.l5      ; 0x5314
    mov ax, 0xb0                     ; 0x5316
    mov cx, word [bp - 0x0008]       ; 0x5319
    add cx, byte 0xc6                ; 0x531c
    sub ax, cx                       ; 0x531f
    mov word [bp - 0x0014], ax       ; 0x5321
@..api_idx_001e.l5:
    cmp word [bp - 0x0008], strict word 0xcc ; 0x5324
    jl short @..api_idx_001e.l6      ; 0x5329
    cmp word [bp - 0x0008], strict word 0x124 ; 0x532b
    jg short @..api_idx_001e.l6      ; 0x5330
    mov ax, 0xb0                     ; 0x5332
    mov cx, word [bp - 0x0008]       ; 0x5335
    add cx, strict word 0xff34       ; 0x5338
    sub ax, cx                       ; 0x533c
    mov word [bp - 0x000e], ax       ; 0x533e
@..api_idx_001e.l6:
    mov ax, word [data_82ee]         ; 0x5341
    shl ax, 1                        ; 0x5344
    mov bx, ax                       ; 0x5346
    add bx, bp                       ; 0x5348
    cmp word [bx - 0x0014], strict word 0xff01 ; 0x534a
    jne short @..api_idx_001e.l7     ; 0x534f
    ret                              ; 0x5351
@..api_idx_001e.l7:
    cmp word [bp - 0x0006], data_010e ; 0x5352
    jge short @..api_idx_001e.l8     ; 0x5357
    mov ax, word [bp - 0x0006]       ; 0x5359
    mov cx, 0xa                      ; 0x535c
    cwd                              ; 0x535f
    idiv cx                          ; 0x5360
    add ax, strict word 5            ; 0x5362
    mov word [bp - 0x000c], ax       ; 0x5365
    jmp short @..api_idx_001e.l12    ; 0x5368
@..api_idx_001e.l8:
    mov ax, word [bp - 0x0006]       ; 0x536a
    cmp ax, 0x276                    ; 0x536d
    jl short @..api_idx_001e.l9      ; 0x5370
    add ax, 0xfd8a                   ; 0x5372
    mov cx, 9                        ; 0x5375
    cwd                              ; 0x5378
    idiv cx                          ; 0x5379
    mov cx, ax                       ; 0x537b
    mov ax, 0x20                     ; 0x537d
    sub ax, cx                       ; 0x5380
    mov word [bp - 0x000c], ax       ; 0x5382
    jmp short @..api_idx_001e.l12    ; 0x5385
@..api_idx_001e.l9:
    mov ax, word [bp - 0x0006]       ; 0x5387
    add ax, 0xfef2                   ; 0x538a
    mov cx, 0xb4                     ; 0x538d
    cwd                              ; 0x5390
    idiv cx                          ; 0x5391
    mov ax, dx                       ; 0x5393
    mov cx, 0x24                     ; 0x5395
    cwd                              ; 0x5398
    idiv cx                          ; 0x5399
    mov word [bp - 0x000a], ax       ; 0x539b
    mov ax, word [bp - 0x0006]       ; 0x539e
    add ax, 0xfef2                   ; 0x53a1
    mov cx, 0xb4                     ; 0x53a4
    cwd                              ; 0x53a7
    idiv cx                          ; 0x53a8
    test ax, ax                      ; 0x53aa
    je short @..api_idx_001e.l10     ; 0x53ac
    mov ax, 0x24                     ; 0x53ae
    sub ax, word [bp - 0x000a]       ; 0x53b1
    jmp short @..api_idx_001e.l11    ; 0x53b4
@..api_idx_001e.l10:
    mov ax, word [bp - 0x000a]       ; 0x53b6
    add ax, strict word 0x20         ; 0x53b9
@..api_idx_001e.l11:
    mov word [bp - 0x000c], ax       ; 0x53bc
@..api_idx_001e.l12:
    mov byte [bp - 0x001e], 6        ; 0x53bf
    mov byte [bp - 0x001d], 0        ; 0x53c3
    mov ax, 0                        ; 0x53c7
    push ax                          ; 0x53ca
    push ax                          ; 0x53cb
    lea ax, word [bp - 0x001e]       ; 0x53cc
    push ax                          ; 0x53cf
    mov ax, 0                        ; 0x53d0
    push ax                          ; 0x53d3
    mov ax, 0x90                     ; 0x53d4
    push ax                          ; 0x53d7
    mov ax, 0x20                     ; 0x53d8
    push ax                          ; 0x53db
    mov ax, 0xf8                     ; 0x53dc
    push ax                          ; 0x53df
    mov ax, 0x48                     ; 0x53e0
    push ax                          ; 0x53e3
    mov ax, 0x46                     ; 0x53e4
    sub ax, word [bp - 0x000c]       ; 0x53e7
    push ax                          ; 0x53ea
    mov ax, word [bx - 0x0014]       ; 0x53eb
    add ax, strict word 0x48         ; 0x53ee
    push ax                          ; 0x53f1
    mov ax, 6                        ; 0x53f2
    push ax                          ; 0x53f5
    call ds_dispatch_efd1            ; 0x53f6
    add sp, byte 0x16                ; 0x53f9
    ret                              ; 0x53fc
%include "vmaze/api_idx_0030.asm"

@..api_idx_0030.l5:
    cmp word [data_5b6e], byte 1     ; 0x5531
    je short @..api_idx_0030.l6      ; 0x5536
    cmp word [data_91a6], byte 0     ; 0x5538
    je short @..api_idx_0030.l8      ; 0x553d
@..api_idx_0030.l6:
    push word [bp - 0x0008]          ; 0x553f
    mov ax, word [data_0e14]         ; 0x5542
    add ax, 0x8b0                    ; 0x5545
    push ax                          ; 0x5548
    call ds_dispatch_ec74            ; 0x5549
    add sp, byte 4                   ; 0x554c
    test ax, ax                      ; 0x554f
    je short @..api_idx_0030.l8      ; 0x5551
    cmp word [data_91a6], byte 0     ; 0x5553
    je short @..api_idx_0030.l7      ; 0x5558
    mov ax, 0xff                     ; 0x555a
    push ax                          ; 0x555d
    mov ax, 0x8e                     ; 0x555e
    push ax                          ; 0x5561
    mov ax, 0xf7                     ; 0x5562
    push ax                          ; 0x5565
    mov ax, 0x21                     ; 0x5566
    push ax                          ; 0x5569
    mov ax, 0x48                     ; 0x556a
    push ax                          ; 0x556d
    call ds_dispatch_e901            ; 0x556e
    add sp, byte 0x0a                ; 0x5571
    call api_idx_001e                ; 0x5574
    call api_idx_0024                ; 0x5577
@..api_idx_0030.l7:
    call ds_dispatch_da22            ; 0x557a
    ret                              ; 0x557d
@..api_idx_0030.l8:
    mov ax, 0                        ; 0x557e
    push ax                          ; 0x5581
    mov ax, 0x19                     ; 0x5582
    push ax                          ; 0x5585
    mov ax, 0x920a                   ; 0x5586
    push ax                          ; 0x5589
    call ds_dispatch_f306            ; 0x558a
    add sp, byte 6                   ; 0x558d
    mov ax, 0                        ; 0x5590
    push ax                          ; 0x5593
    mov ax, 0x19                     ; 0x5594
    push ax                          ; 0x5597
    mov ax, 0x91f1                   ; 0x5598
    push ax                          ; 0x559b
    call ds_dispatch_f306            ; 0x559c
    add sp, byte 6                   ; 0x559f
    mov ax, 0                        ; 0x55a2
    push ax                          ; 0x55a5
    mov ax, 0x19                     ; 0x55a6
    push ax                          ; 0x55a9
    mov ax, 0x91d8                   ; 0x55aa
    push ax                          ; 0x55ad
    call ds_dispatch_f306            ; 0x55ae
    add sp, byte 6                   ; 0x55b1
    mov ax, 0                        ; 0x55b4
    push ax                          ; 0x55b7
    mov ax, 0x19                     ; 0x55b8
    push ax                          ; 0x55bb
    mov ax, 0x9b1a                   ; 0x55bc
    push ax                          ; 0x55bf
    call ds_dispatch_f306            ; 0x55c0
    add sp, byte 6                   ; 0x55c3
    mov ax, 0                        ; 0x55c6
    push ax                          ; 0x55c9
    mov ax, 0x19                     ; 0x55ca
    push ax                          ; 0x55cd
    mov ax, 0x9223                   ; 0x55ce
    push ax                          ; 0x55d1
    call ds_dispatch_f306            ; 0x55d2
    add sp, byte 6                   ; 0x55d5
    mov ax, 0                        ; 0x55d8
    push ax                          ; 0x55db
    mov ax, 0x32                     ; 0x55dc
    push ax                          ; 0x55df
    mov ax, 0x92ba                   ; 0x55e0
    push ax                          ; 0x55e3
    call ds_dispatch_f306            ; 0x55e4
    add sp, byte 6                   ; 0x55e7
    mov ax, 0                        ; 0x55ea
    push ax                          ; 0x55ed
    mov ax, 0x19                     ; 0x55ee
    push ax                          ; 0x55f1
    mov ax, 0x92a0                   ; 0x55f2
    push ax                          ; 0x55f5
    call ds_dispatch_f306            ; 0x55f6
    add sp, byte 6                   ; 0x55f9
    mov ax, 0                        ; 0x55fc
    push ax                          ; 0x55ff
    mov ax, 0x32                     ; 0x5600
    push ax                          ; 0x5603
    mov ax, 0x923c                   ; 0x5604
    push ax                          ; 0x5607
    call ds_dispatch_f306            ; 0x5608
    add sp, byte 6                   ; 0x560b
    mov ax, 0                        ; 0x560e
    push ax                          ; 0x5611
    mov ax, 0x32                     ; 0x5612
    push ax                          ; 0x5615
    mov ax, 0x92ec                   ; 0x5616
    push ax                          ; 0x5619
    call ds_dispatch_f306            ; 0x561a
    add sp, byte 6                   ; 0x561d
    mov ax, 0                        ; 0x5620
    push ax                          ; 0x5623
    mov ax, 0x32                     ; 0x5624
    push ax                          ; 0x5627
    mov ax, 0x926e                   ; 0x5628
    push ax                          ; 0x562b
    call ds_dispatch_f306            ; 0x562c
    add sp, byte 6                   ; 0x562f
    mov ax, 0                        ; 0x5632
    push ax                          ; 0x5635
    mov ax, 0x7f8                    ; 0x5636
    push ax                          ; 0x5639
    mov ax, 0x9320                   ; 0x563a
    push ax                          ; 0x563d
    call ds_dispatch_f306            ; 0x563e
    add sp, byte 6                   ; 0x5641
    mov word [data_931e], 0          ; 0x5644
    mov ax, word [bp - 0x0012]       ; 0x564a
    mov word [bp - 0x0014], ax       ; 0x564d
    mov ax, 0xffff                   ; 0x5650
    push ax                          ; 0x5653
    mov ax, 0                        ; 0x5654
    push ax                          ; 0x5657
    lea ax, word [bp - 0x0014]       ; 0x5658
    push ax                          ; 0x565b
    lea ax, word [bp - 0x0010]       ; 0x565c
    push ax                          ; 0x565f
    lea ax, word [bp - 0x000e]       ; 0x5660
    push ax                          ; 0x5663
    lea ax, word [bp - 0x000c]       ; 0x5664
    push ax                          ; 0x5667
    lea ax, word [bp - 0x000a]       ; 0x5668
    push ax                          ; 0x566b
    call loc_2ed4                    ; 0x566c
    add sp, byte 0x0e                ; 0x566f
    mov word [data_9b34], 5          ; 0x5672
    mov ax, word [data_8f46]         ; 0x5678
    add ax, word [data_8f44]         ; 0x567b
    add ax, word [data_82ee]         ; 0x567f
    mov cx, 2                        ; 0x5683
    cwd                              ; 0x5686
    idiv cx                          ; 0x5687
    mov word [data_91d2], dx         ; 0x5689
    mov word [data_91d4], 0          ; 0x568d
    mov ax, word [data_5b6e]         ; 0x5693
    jmp near @..api_idx_0030.l9      ; 0x5696

    db 0xc7, 0x06, 0xd4, 0x91, 0x00, 0x00, 0x83, 0x3e, 0x0c, 0x83, 0x1e, 0x75, 0x09, 0x83, 0x3e, 0x3e
    db 0x8f, 0x08, 0x75, 0x02, 0xeb, 0x23, 0xb8, 0x1f, 0x00, 0x50, 0xe8, 0xf6, 0xd7, 0x59, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x1f, 0x00, 0x50, 0x50, 0xe8, 0xfc, 0xd7, 0x83, 0xc4, 0x04, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x50, 0x99, 0x83, 0xc4, 0x08, 0xb8, 0x20, 0x00, 0x50, 0xe8, 0xd3, 0xd7
    db 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x20, 0x00, 0x50, 0x50, 0xe8, 0xd9, 0xd7, 0x83, 0xc4
    db 0x04, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x2d, 0x99, 0x83, 0xc4, 0x08, 0xe9, 0x05, 0x03, 0xc7
    db 0x06, 0xd4, 0x91, 0x01, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7, 0x00
    db 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0xec, 0x91, 0x83, 0xc4, 0x0a, 0xe8
    db 0x7f, 0xfb, 0xe8, 0xd6, 0xf9, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x87, 0xd7, 0x59, 0x50, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0x8d, 0xd7, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x01
    db 0x00, 0x50, 0xe8, 0xe1, 0x98, 0x83, 0xc4, 0x08, 0xb8, 0x3e, 0x00, 0x50, 0xe8, 0x64, 0xd7, 0x59
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x3e, 0x00, 0x50, 0x50, 0xe8, 0x6a, 0xd7, 0x83, 0xc4, 0x04
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xbe, 0x98, 0x83, 0xc4, 0x08, 0xe9, 0x96, 0x02, 0xc7, 0x06
    db 0xd4, 0x91, 0x02, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50
    db 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x7d, 0x91, 0x83, 0xc4, 0x0a, 0xe8, 0x10
    db 0xfb, 0xe8, 0x67, 0xf9, 0x83, 0x3e, 0x0c, 0x83, 0x0e, 0x75, 0x3d, 0x83, 0x3e, 0x3e, 0x8f, 0x09
    db 0x7e, 0x36, 0x83, 0x3e, 0x3e, 0x8f, 0x0a, 0x7f, 0x16, 0xa1, 0xee, 0x82, 0x3d, 0x02, 0x00, 0x74
    db 0x0e, 0x83, 0x3e, 0xee, 0x82, 0x00, 0x74, 0x20, 0x83, 0x3e, 0x40, 0x8f, 0x05, 0x7d, 0x19, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x50, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0x50
    db 0xe8, 0x35, 0x91, 0x83, 0xc4, 0x0a, 0xeb, 0x46, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xd4, 0xd6, 0x59
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0xda, 0xd6, 0x83, 0xc4, 0x04
    db 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x2e, 0x98, 0x83, 0xc4, 0x08, 0xb8, 0xad, 0x00, 0x50, 0xe8
    db 0xb1, 0xd6, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xad, 0x00, 0x50, 0x50, 0xe8, 0xb7, 0xd6
    db 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x0b, 0x98, 0x83, 0xc4, 0x08, 0xe9, 0xe3
    db 0x01, 0xc7, 0x06, 0xd4, 0x91, 0x03, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x83, 0x3e
    db 0xa6, 0x91, 0x00, 0x74, 0x03, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21, 0x00
    db 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0xc0, 0x90, 0x83, 0xc4, 0x0a, 0xe8, 0x53, 0xfa, 0xe8, 0xaa
    db 0xf8, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x5b, 0xd6, 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x04
    db 0x00, 0x50, 0x50, 0xe8, 0x61, 0xd6, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xb5
    db 0x97, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0xa6, 0x91, 0x00, 0x75, 0x23, 0xb8, 0x2a, 0x00, 0x50, 0xe8
    db 0x31, 0xd6, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2a, 0x00, 0x50, 0x50, 0xe8, 0x37, 0xd6
    db 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x8b, 0x97, 0x83, 0xc4, 0x08, 0xe9, 0x63
    db 0x01, 0xc7, 0x06, 0xd4, 0x91, 0x04, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x38, 0x00, 0x50, 0xb8
    db 0xf7, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x4a, 0x90, 0x83, 0xc4
    db 0x0a, 0xe8, 0xdd, 0xf9, 0xe8, 0x34, 0xf8, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x00, 0x50, 0xb8
    db 0xf7, 0x00, 0x50, 0xb8, 0x39, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x2a, 0x90, 0x83, 0xc4
    db 0x0a, 0xb8, 0x2a, 0x00, 0x50, 0xe8, 0xcb, 0xd5, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2a
    db 0x00, 0x50, 0x50, 0xe8, 0xd1, 0xd5, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x25
    db 0x97, 0x83, 0xc4, 0x08, 0xe9, 0xfd, 0x00, 0xc7, 0x06, 0xd4, 0x91, 0x05, 0x00, 0xb8, 0xff, 0x00
    db 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00
    db 0x50, 0xe8, 0xe4, 0x8f, 0x83, 0xc4, 0x0a, 0xe8, 0x77, 0xf9, 0xe8, 0xce, 0xf7, 0xb8, 0x3e, 0x00
    db 0x50, 0xe8, 0x7f, 0xd5, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x3e, 0x00, 0x50, 0x50, 0xe8
    db 0x85, 0xd5, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xd9, 0x96, 0x83, 0xc4, 0x08
    db 0x83, 0x3e, 0x0c, 0x83, 0x08, 0x75, 0x3a, 0x83, 0x3e, 0x3e, 0x8f, 0x06, 0x75, 0x33, 0x83, 0x3e
    db 0x40, 0x8f, 0x04, 0x75, 0x2c, 0xa1, 0x42, 0x8f, 0x3d, 0x02, 0x00, 0x74, 0x05, 0x3d, 0x01, 0x00
    db 0x75, 0x08, 0xa1, 0xee, 0x82, 0x3d, 0x01, 0x00, 0x74, 0x15, 0xa1, 0x42, 0x8f, 0x3d, 0x05, 0x00
    db 0x74, 0x05, 0x3d, 0x06, 0x00, 0x75, 0x0a, 0xa1, 0xee, 0x82, 0x3d, 0x03, 0x00, 0x75, 0x02, 0xeb
    db 0x17, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x48, 0x00
    db 0x50, 0x50, 0xe8, 0x63, 0x8f, 0x83, 0xc4, 0x0a, 0x83, 0x3e, 0x0c, 0x83, 0x08, 0x74, 0x15, 0x83
    db 0x3e, 0x0c, 0x83, 0x0b, 0x75, 0x31, 0x83, 0x3e, 0x3e, 0x8f, 0x06, 0x75, 0x2a, 0x83, 0x3e, 0x40
    db 0x8f, 0x03, 0x7e, 0x23, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xe8, 0xd4, 0x59, 0x50, 0xb8, 0x02, 0x00
    db 0x50, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0xee, 0xd4, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xe8, 0x42, 0x96, 0x83, 0xc4, 0x08, 0xeb, 0x1b, 0x44, 0xaa, 0xe0, 0xa6, 0x3f, 0xa7, 0xae
    db 0xa7, 0x61, 0xa8, 0xe1, 0xa8, 0x47, 0xa9

@..api_idx_0030.l9:
    cmp ax, strict word 7            ; 0x59f0
    jae short @..api_idx_0030.l10    ; 0x59f3
    xchg bx, ax                      ; 0x59f5
    shl bx, 1                        ; 0x59f6
    jmp [cs:bx - 0x55d7]             ; 0x59f8
@..api_idx_0030.l10:
    mov word [data_91d6], 0          ; 0x59fd
@..api_idx_0030.l11:
    mov ax, word [data_91d6]         ; 0x5a03
    cmp ax, word [data_9b34]         ; 0x5a06
    jl short @..api_idx_0030.l12     ; 0x5a0a
    jmp near @..api_idx_0030.l24     ; 0x5a0c
@..api_idx_0030.l12:
    mov ax, word [data_8f46]         ; 0x5a0f
    add ax, word [data_8f44]         ; 0x5a12
    add ax, word [data_82ee]         ; 0x5a16
    mov cx, ax                       ; 0x5a1a
    mov ax, word [data_91d6]         ; 0x5a1c
    add cx, ax                       ; 0x5a1f
    mov ax, cx                       ; 0x5a21
    mov cx, 2                        ; 0x5a23
    cwd                              ; 0x5a26
    idiv cx                          ; 0x5a27
    mov word [data_91d0], dx         ; 0x5a29
    mov ax, 1                        ; 0x5a2d
    push ax                          ; 0x5a30
    mov ax, 0                        ; 0x5a31
    push ax                          ; 0x5a34
    lea ax, word [bp - 0x0012]       ; 0x5a35
    push ax                          ; 0x5a38
    lea ax, word [bp - 0x0010]       ; 0x5a39
    push ax                          ; 0x5a3c
    lea ax, word [bp - 0x000e]       ; 0x5a3d
    push ax                          ; 0x5a40
    lea ax, word [bp - 0x000c]       ; 0x5a41
    push ax                          ; 0x5a44
    lea ax, word [bp - 0x000a]       ; 0x5a45
    push ax                          ; 0x5a48
    call loc_2ed4                    ; 0x5a49
    add sp, byte 0x0e                ; 0x5a4c
    test ax, ax                      ; 0x5a4f
    je short @..api_idx_0030.l19     ; 0x5a51
    mov ax, word [data_91d4]         ; 0x5a53
    mov cx, 2                        ; 0x5a56
    cwd                              ; 0x5a59
    idiv cx                          ; 0x5a5a
    mov ax, dx                       ; 0x5a5c
    cmp ax, strict word 1            ; 0x5a5e
    jne short @..api_idx_0030.l17    ; 0x5a61
    mov ax, word [data_91d4]         ; 0x5a63
    cmp ax, strict word 5            ; 0x5a66
    je short @..api_idx_0030.l15     ; 0x5a69
    cmp word [data_91a6], byte 0     ; 0x5a6b
    je short @..api_idx_0030.l13     ; 0x5a70
    mov word [data_9b36], 0          ; 0x5a72
    jmp short @..api_idx_0030.l14    ; 0x5a78
@..api_idx_0030.l13:
    mov ax, 5                        ; 0x5a7a
    imul word [data_91d6]            ; 0x5a7d
    mov bx, ax                       ; 0x5a81
    mov byte [bx - 0x6e26], 1        ; 0x5a83
    mov word [data_9b36], 4          ; 0x5a88
@..api_idx_0030.l14:
    jmp short @..api_idx_0030.l16    ; 0x5a8e
@..api_idx_0030.l15:
    mov ax, 5                        ; 0x5a90
    imul word [data_91d6]            ; 0x5a93
    mov bx, ax                       ; 0x5a97
    mov byte [bx - 0x6e26], 3        ; 0x5a99
    mov word [data_9b36], 0          ; 0x5a9e
@..api_idx_0030.l16:
    jmp short @..api_idx_0030.l18    ; 0x5aa4
@..api_idx_0030.l17:
    mov word [data_9b36], 2          ; 0x5aa6
@..api_idx_0030.l18:
    mov ax, word [data_9b36]         ; 0x5aac
    mov word [data_9b38], ax         ; 0x5aaf
    mov word [data_9b3a], ax         ; 0x5ab2
    jmp short @..api_idx_0030.l20    ; 0x5ab5
@..api_idx_0030.l19:
    mov ax, 0                        ; 0x5ab7
    push ax                          ; 0x5aba
    push word [bp - 0x0012]          ; 0x5abb
    push word [bp - 0x0010]          ; 0x5abe
    push word [bp - 0x000e]          ; 0x5ac1
    push word [bp - 0x000c]          ; 0x5ac4
    push word [bp - 0x000a]          ; 0x5ac7
    call api_idx_0008_3              ; 0x5aca
    add sp, byte 0x0c                ; 0x5acd
    mov word [data_9b36], ax         ; 0x5ad0
    mov ax, 0                        ; 0x5ad3
    push ax                          ; 0x5ad6
    push word [bp - 0x0012]          ; 0x5ad7
    push word [bp - 0x0010]          ; 0x5ada
    push word [bp - 0x000e]          ; 0x5add
    push word [bp - 0x000c]          ; 0x5ae0
    push word [bp - 0x000a]          ; 0x5ae3
    push ax                          ; 0x5ae6
    call api_idx_0008_4              ; 0x5ae7
    add sp, byte 0x0e                ; 0x5aea
    mov word [data_9b38], ax         ; 0x5aed
    mov ax, 0                        ; 0x5af0
    push ax                          ; 0x5af3
    push word [bp - 0x0012]          ; 0x5af4
    push word [bp - 0x0010]          ; 0x5af7
    push word [bp - 0x000e]          ; 0x5afa
    push word [bp - 0x000c]          ; 0x5afd
    push word [bp - 0x000a]          ; 0x5b00
    mov ax, 2                        ; 0x5b03
    push ax                          ; 0x5b06
    call api_idx_0008_4              ; 0x5b07
    add sp, byte 0x0e                ; 0x5b0a
    mov word [data_9b3a], ax         ; 0x5b0d
@..api_idx_0030.l20:
    mov ax, 0xffff                   ; 0x5b10
    push ax                          ; 0x5b13
    push word [bp - 0x0012]          ; 0x5b14
    push word [bp - 0x0010]          ; 0x5b17
    push word [bp - 0x000e]          ; 0x5b1a
    push word [bp - 0x000c]          ; 0x5b1d
    push word [bp - 0x000a]          ; 0x5b20
    call api_idx_0008_3              ; 0x5b23
    add sp, byte 0x0c                ; 0x5b26
    mov word [data_9b3c], ax         ; 0x5b29
    mov ax, 1                        ; 0x5b2c
    push ax                          ; 0x5b2f
    push word [bp - 0x0012]          ; 0x5b30
    push word [bp - 0x0010]          ; 0x5b33
    push word [bp - 0x000e]          ; 0x5b36
    push word [bp - 0x000c]          ; 0x5b39
    push word [bp - 0x000a]          ; 0x5b3c
    call api_idx_0008_3              ; 0x5b3f
    add sp, byte 0x0c                ; 0x5b42
    mov word [data_9b3e], ax         ; 0x5b45
    cmp word [data_91d6], byte 1     ; 0x5b48
    jle short @..api_idx_0030.l21    ; 0x5b4d
    mov ax, 0xfffe                   ; 0x5b4f
    push ax                          ; 0x5b52
    push word [bp - 0x0012]          ; 0x5b53
    push word [bp - 0x0010]          ; 0x5b56
    push word [bp - 0x000e]          ; 0x5b59
    push word [bp - 0x000c]          ; 0x5b5c
    push word [bp - 0x000a]          ; 0x5b5f
    call api_idx_0008_3              ; 0x5b62
    add sp, byte 0x0c                ; 0x5b65
    mov word [data_9b40], ax         ; 0x5b68
    mov ax, 2                        ; 0x5b6b
    push ax                          ; 0x5b6e
    push word [bp - 0x0012]          ; 0x5b6f
    push word [bp - 0x0010]          ; 0x5b72
    push word [bp - 0x000e]          ; 0x5b75
    push word [bp - 0x000c]          ; 0x5b78
    push word [bp - 0x000a]          ; 0x5b7b
    call api_idx_0008_3              ; 0x5b7e
    add sp, byte 0x0c                ; 0x5b81
    mov word [data_9b42], ax         ; 0x5b84
    mov ax, 0xffff                   ; 0x5b87
    push ax                          ; 0x5b8a
    push word [bp - 0x0012]          ; 0x5b8b
    push word [bp - 0x0010]          ; 0x5b8e
    push word [bp - 0x000e]          ; 0x5b91
    push word [bp - 0x000c]          ; 0x5b94
    push word [bp - 0x000a]          ; 0x5b97
    mov ax, 0                        ; 0x5b9a
    push ax                          ; 0x5b9d
    call api_idx_0008_4              ; 0x5b9e
    add sp, byte 0x0e                ; 0x5ba1
    mov word [data_9b44], ax         ; 0x5ba4
    mov ax, 1                        ; 0x5ba7
    push ax                          ; 0x5baa
    push word [bp - 0x0012]          ; 0x5bab
    push word [bp - 0x0010]          ; 0x5bae
    push word [bp - 0x000e]          ; 0x5bb1
    push word [bp - 0x000c]          ; 0x5bb4
    push word [bp - 0x000a]          ; 0x5bb7
    mov ax, 2                        ; 0x5bba
    push ax                          ; 0x5bbd
    call api_idx_0008_4              ; 0x5bbe
    add sp, byte 0x0e                ; 0x5bc1
    mov word [data_9b46], ax         ; 0x5bc4
    jmp short @..api_idx_0030.l22    ; 0x5bc7
@..api_idx_0030.l21:
    mov word [data_9b40], 0          ; 0x5bc9
    mov word [data_9b42], 0          ; 0x5bcf
    mov word [data_9b44], 0          ; 0x5bd5
    mov word [data_9b46], 0          ; 0x5bdb
@..api_idx_0030.l22:
    cmp word [data_9b36], byte 0     ; 0x5be1
    jne short @..api_idx_0030.l23    ; 0x5be6
    mov ax, word [data_8456]         ; 0x5be8
    cmp ax, word [data_91d6]         ; 0x5beb
    jne short @..api_idx_0030.l23    ; 0x5bef
    inc word [data_8456]             ; 0x5bf1
@..api_idx_0030.l23:
    mov ax, word [data_91d0]         ; 0x5bf5
    mov word [data_9b18], ax         ; 0x5bf8
    mov ax, 0x1e                     ; 0x5bfb
    push ax                          ; 0x5bfe
    push ax                          ; 0x5bff
    mov ax, 0                        ; 0x5c00
    push ax                          ; 0x5c03
    push ax                          ; 0x5c04
    mov ax, 0x85                     ; 0x5c05
    push ax                          ; 0x5c08
    push ax                          ; 0x5c09
    mov ax, 0x1d                     ; 0x5c0a
    push ax                          ; 0x5c0d
    mov ax, 0x21                     ; 0x5c0e
    push ax                          ; 0x5c11
    push ax                          ; 0x5c12
    mov ax, 0x1d                     ; 0x5c13
    push ax                          ; 0x5c16
    mov ax, 0x19                     ; 0x5c17
    push ax                          ; 0x5c1a
    push ax                          ; 0x5c1b
    mov ax, 0                        ; 0x5c1c
    push ax                          ; 0x5c1f
    push ax                          ; 0x5c20
    mov ax, 0x8c                     ; 0x5c21
    push ax                          ; 0x5c24
    push ax                          ; 0x5c25
    mov ax, 0x6e                     ; 0x5c26
    push ax                          ; 0x5c29
    push ax                          ; 0x5c2a
    mov ax, 0x24                     ; 0x5c2b
    push ax                          ; 0x5c2e
    mov ax, 0x27                     ; 0x5c2f
    push ax                          ; 0x5c32
    push ax                          ; 0x5c33
    mov ax, 0x24                     ; 0x5c34
    push ax                          ; 0x5c37
    mov ax, 0x21                     ; 0x5c38
    push ax                          ; 0x5c3b
    push ax                          ; 0x5c3c
    mov ax, 0x3f                     ; 0x5c3d
    push ax                          ; 0x5c40
    mov ax, 0                        ; 0x5c41
    push ax                          ; 0x5c44
    push ax                          ; 0x5c45
    push ax                          ; 0x5c46
    mov ax, 4                        ; 0x5c47
    push ax                          ; 0x5c4a
    mov ax, 2                        ; 0x5c4b
    push ax                          ; 0x5c4e
    mov ax, 4                        ; 0x5c4f
    push ax                          ; 0x5c52
    mov ax, 2                        ; 0x5c53
    push ax                          ; 0x5c56
    mov ax, 1                        ; 0x5c57
    push ax                          ; 0x5c5a
    mov ax, 0                        ; 0x5c5b
    push ax                          ; 0x5c5e
    mov ax, 2                        ; 0x5c5f
    push ax                          ; 0x5c62
    push word [data_9b36]            ; 0x5c63
    push word [data_91d6]            ; 0x5c67
    call api_idx_0010_2              ; 0x5c6b
    add sp, byte 0x4a                ; 0x5c6e
    mov ax, 0xffff                   ; 0x5c71
    push ax                          ; 0x5c74
    push ax                          ; 0x5c75
    mov ax, 0xae                     ; 0x5c76
    push ax                          ; 0x5c79
    push ax                          ; 0x5c7a
    mov ax, 0                        ; 0x5c7b
    push ax                          ; 0x5c7e
    push ax                          ; 0x5c7f
    push ax                          ; 0x5c80
    push ax                          ; 0x5c81
    push ax                          ; 0x5c82
    push ax                          ; 0x5c83
    mov ax, 0xc                      ; 0x5c84
    push ax                          ; 0x5c87
    mov ax, 8                        ; 0x5c88
    push ax                          ; 0x5c8b
    mov ax, 0x14                     ; 0x5c8c
    push ax                          ; 0x5c8f
    mov ax, 0x10                     ; 0x5c90
    push ax                          ; 0x5c93
    mov ax, 0                        ; 0x5c94
    push ax                          ; 0x5c97
    push ax                          ; 0x5c98
    mov ax, 4                        ; 0x5c99
    push ax                          ; 0x5c9c
    push ax                          ; 0x5c9d
    mov ax, 0x25                     ; 0x5c9e
    push ax                          ; 0x5ca1
    push ax                          ; 0x5ca2
    mov ax, 0                        ; 0x5ca3
    push ax                          ; 0x5ca6
    push ax                          ; 0x5ca7
    mov ax, 6                        ; 0x5ca8
    push ax                          ; 0x5cab
    mov ax, 5                        ; 0x5cac
    push ax                          ; 0x5caf
    mov ax, 4                        ; 0x5cb0
    push ax                          ; 0x5cb3
    mov ax, 2                        ; 0x5cb4
    push ax                          ; 0x5cb7
    mov ax, 4                        ; 0x5cb8
    push ax                          ; 0x5cbb
    mov ax, 2                        ; 0x5cbc
    push ax                          ; 0x5cbf
    mov ax, 1                        ; 0x5cc0
    push ax                          ; 0x5cc3
    mov ax, 0                        ; 0x5cc4
    push ax                          ; 0x5cc7
    mov ax, 2                        ; 0x5cc8
    push ax                          ; 0x5ccb
    push word [data_91d6]            ; 0x5ccc
    call api_idx_0012_2              ; 0x5cd0
    add sp, byte 0x40                ; 0x5cd3
    mov ax, 0x39                     ; 0x5cd6
    push ax                          ; 0x5cd9
    mov ax, 0x34                     ; 0x5cda
    push ax                          ; 0x5cdd
    mov ax, 0x1b                     ; 0x5cde
    push ax                          ; 0x5ce1
    mov ax, 0x16                     ; 0x5ce2
    push ax                          ; 0x5ce5
    mov ax, 0x9e                     ; 0x5ce6
    push ax                          ; 0x5ce9
    mov ax, 0x99                     ; 0x5cea
    push ax                          ; 0x5ced
    mov ax, 0x80                     ; 0x5cee
    push ax                          ; 0x5cf1
    mov ax, 0x7b                     ; 0x5cf2
    push ax                          ; 0x5cf5
    mov ax, 0x6d                     ; 0x5cf6
    push ax                          ; 0x5cf9
    mov ax, 0x69                     ; 0x5cfa
    push ax                          ; 0x5cfd
    mov ax, 0x5a                     ; 0x5cfe
    push ax                          ; 0x5d01
    mov ax, 0x55                     ; 0x5d02
    push ax                          ; 0x5d05
    mov ax, 0x1c                     ; 0x5d06
    push ax                          ; 0x5d09
    mov ax, 0x17                     ; 0x5d0a
    push ax                          ; 0x5d0d
    mov ax, 0xaa                     ; 0x5d0e
    push ax                          ; 0x5d11
    mov ax, 0x62                     ; 0x5d12
    push ax                          ; 0x5d15
    mov ax, 0x5e                     ; 0x5d16
    push ax                          ; 0x5d19
    mov ax, 0x52                     ; 0x5d1a
    push ax                          ; 0x5d1d
    mov ax, 0x4e                     ; 0x5d1e
    push ax                          ; 0x5d21
    mov ax, 0x19                     ; 0x5d22
    push ax                          ; 0x5d25
    mov ax, 0x15                     ; 0x5d26
    push ax                          ; 0x5d29
    mov ax, 0x13                     ; 0x5d2a
    push ax                          ; 0x5d2d
    mov ax, 0xf                      ; 0x5d2e
    push ax                          ; 0x5d31
    mov ax, 4                        ; 0x5d32
    push ax                          ; 0x5d35
    mov ax, 2                        ; 0x5d36
    push ax                          ; 0x5d39
    mov ax, 4                        ; 0x5d3a
    push ax                          ; 0x5d3d
    mov ax, 2                        ; 0x5d3e
    push ax                          ; 0x5d41
    mov ax, 1                        ; 0x5d42
    push ax                          ; 0x5d45
    mov ax, 0                        ; 0x5d46
    push ax                          ; 0x5d49
    mov ax, 1                        ; 0x5d4a
    push ax                          ; 0x5d4d
    push word [data_9b38]            ; 0x5d4e
    push word [data_91d6]            ; 0x5d52
    call api_idx_0012                ; 0x5d56
    add sp, byte 0x40                ; 0x5d59
    mov ax, 0x34                     ; 0x5d5c
    push ax                          ; 0x5d5f
    mov ax, 0x39                     ; 0x5d60
    push ax                          ; 0x5d63
    mov ax, 0x16                     ; 0x5d64
    push ax                          ; 0x5d67
    mov ax, 0x1b                     ; 0x5d68
    push ax                          ; 0x5d6b
    mov ax, 0x99                     ; 0x5d6c
    push ax                          ; 0x5d6f
    mov ax, 0x9e                     ; 0x5d70
    push ax                          ; 0x5d73
    mov ax, 0xffff                   ; 0x5d74
    push ax                          ; 0x5d77
    push ax                          ; 0x5d78
    mov ax, 0x69                     ; 0x5d79
    push ax                          ; 0x5d7c
    mov ax, 0x6d                     ; 0x5d7d
    push ax                          ; 0x5d80
    mov ax, 0x55                     ; 0x5d81
    push ax                          ; 0x5d84
    mov ax, 0x5a                     ; 0x5d85
    push ax                          ; 0x5d88
    mov ax, 0x17                     ; 0x5d89
    push ax                          ; 0x5d8c
    mov ax, 0x1c                     ; 0x5d8d
    push ax                          ; 0x5d90
    mov ax, 0xaf                     ; 0x5d91
    push ax                          ; 0x5d94
    mov ax, 0x5e                     ; 0x5d95
    push ax                          ; 0x5d98
    mov ax, 0x62                     ; 0x5d99
    push ax                          ; 0x5d9c
    mov ax, 0x4e                     ; 0x5d9d
    push ax                          ; 0x5da0
    mov ax, 0x52                     ; 0x5da1
    push ax                          ; 0x5da4
    mov ax, 0x15                     ; 0x5da5
    push ax                          ; 0x5da8
    mov ax, 0x19                     ; 0x5da9
    push ax                          ; 0x5dac
    mov ax, 0xf                      ; 0x5dad
    push ax                          ; 0x5db0
    mov ax, 0x13                     ; 0x5db1
    push ax                          ; 0x5db4
    mov ax, 4                        ; 0x5db5
    push ax                          ; 0x5db8
    mov ax, 2                        ; 0x5db9
    push ax                          ; 0x5dbc
    mov ax, 4                        ; 0x5dbd
    push ax                          ; 0x5dc0
    mov ax, 2                        ; 0x5dc1
    push ax                          ; 0x5dc4
    mov ax, 1                        ; 0x5dc5
    push ax                          ; 0x5dc8
    mov ax, 0                        ; 0x5dc9
    push ax                          ; 0x5dcc
    mov ax, 3                        ; 0x5dcd
    push ax                          ; 0x5dd0
    push word [data_9b3a]            ; 0x5dd1
    push word [data_91d6]            ; 0x5dd5
    call api_idx_0012                ; 0x5dd9
    add sp, byte 0x40                ; 0x5ddc
    mov ax, 0x43                     ; 0x5ddf
    push ax                          ; 0x5de2
    mov ax, 0x3e                     ; 0x5de3
    push ax                          ; 0x5de6
    mov ax, 0x25                     ; 0x5de7
    push ax                          ; 0x5dea
    mov ax, 0x20                     ; 0x5deb
    push ax                          ; 0x5dee
    mov ax, 0xa8                     ; 0x5def
    push ax                          ; 0x5df2
    mov ax, 0xa3                     ; 0x5df3
    push ax                          ; 0x5df6
    mov ax, 0xffff                   ; 0x5df7
    push ax                          ; 0x5dfa
    push ax                          ; 0x5dfb
    mov ax, 0x76                     ; 0x5dfc
    push ax                          ; 0x5dff
    mov ax, 0x71                     ; 0x5e00
    push ax                          ; 0x5e03
    mov ax, 0x64                     ; 0x5e04
    push ax                          ; 0x5e07
    mov ax, 0x5f                     ; 0x5e08
    push ax                          ; 0x5e0b
    mov ax, 0x26                     ; 0x5e0c
    push ax                          ; 0x5e0f
    mov ax, 0x21                     ; 0x5e10
    push ax                          ; 0x5e13
    mov ax, 0xffff                   ; 0x5e14
    push ax                          ; 0x5e17
    mov ax, 0x6a                     ; 0x5e18
    push ax                          ; 0x5e1b
    mov ax, 0x66                     ; 0x5e1c
    push ax                          ; 0x5e1f
    mov ax, 0x5a                     ; 0x5e20
    push ax                          ; 0x5e23
    mov ax, 0x56                     ; 0x5e24
    push ax                          ; 0x5e27
    mov ax, 0x21                     ; 0x5e28
    push ax                          ; 0x5e2b
    mov ax, 0x1d                     ; 0x5e2c
    push ax                          ; 0x5e2f
    mov ax, 0x1b                     ; 0x5e30
    push ax                          ; 0x5e33
    mov ax, 0x17                     ; 0x5e34
    push ax                          ; 0x5e37
    mov ax, 4                        ; 0x5e38
    push ax                          ; 0x5e3b
    mov ax, 2                        ; 0x5e3c
    push ax                          ; 0x5e3f
    mov ax, 4                        ; 0x5e40
    push ax                          ; 0x5e43
    mov ax, 2                        ; 0x5e44
    push ax                          ; 0x5e47
    mov ax, 1                        ; 0x5e48
    push ax                          ; 0x5e4b
    mov ax, 0                        ; 0x5e4c
    push ax                          ; 0x5e4f
    push ax                          ; 0x5e50
    push word [data_9b44]            ; 0x5e51
    push word [data_91d6]            ; 0x5e55
    call api_idx_0012                ; 0x5e59
    add sp, byte 0x40                ; 0x5e5c
    mov ax, 0x3e                     ; 0x5e5f
    push ax                          ; 0x5e62
    mov ax, 0x43                     ; 0x5e63
    push ax                          ; 0x5e66
    mov ax, 0x20                     ; 0x5e67
    push ax                          ; 0x5e6a
    mov ax, 0x25                     ; 0x5e6b
    push ax                          ; 0x5e6e
    mov ax, 0xa3                     ; 0x5e6f
    push ax                          ; 0x5e72
    mov ax, 0xa8                     ; 0x5e73
    push ax                          ; 0x5e76
    mov ax, 0xffff                   ; 0x5e77
    push ax                          ; 0x5e7a
    push ax                          ; 0x5e7b
    mov ax, 0x71                     ; 0x5e7c
    push ax                          ; 0x5e7f
    mov ax, 0x76                     ; 0x5e80
    push ax                          ; 0x5e83
    mov ax, 0x5f                     ; 0x5e84
    push ax                          ; 0x5e87
    mov ax, 0x64                     ; 0x5e88
    push ax                          ; 0x5e8b
    mov ax, 0x21                     ; 0x5e8c
    push ax                          ; 0x5e8f
    mov ax, 0x26                     ; 0x5e90
    push ax                          ; 0x5e93
    mov ax, 0xffff                   ; 0x5e94
    push ax                          ; 0x5e97
    mov ax, 0x66                     ; 0x5e98
    push ax                          ; 0x5e9b
    mov ax, 0x6a                     ; 0x5e9c
    push ax                          ; 0x5e9f
    mov ax, 0x56                     ; 0x5ea0
    push ax                          ; 0x5ea3
    mov ax, 0x5a                     ; 0x5ea4
    push ax                          ; 0x5ea7
    mov ax, 0x1d                     ; 0x5ea8
    push ax                          ; 0x5eab
    mov ax, 0x21                     ; 0x5eac
    push ax                          ; 0x5eaf
    mov ax, 0x17                     ; 0x5eb0
    push ax                          ; 0x5eb3
    mov ax, 0x1b                     ; 0x5eb4
    push ax                          ; 0x5eb7
    mov ax, 4                        ; 0x5eb8
    push ax                          ; 0x5ebb
    mov ax, 2                        ; 0x5ebc
    push ax                          ; 0x5ebf
    mov ax, 4                        ; 0x5ec0
    push ax                          ; 0x5ec3
    mov ax, 2                        ; 0x5ec4
    push ax                          ; 0x5ec7
    mov ax, 1                        ; 0x5ec8
    push ax                          ; 0x5ecb
    mov ax, 0                        ; 0x5ecc
    push ax                          ; 0x5ecf
    mov ax, 4                        ; 0x5ed0
    push ax                          ; 0x5ed3
    push word [data_9b46]            ; 0x5ed4
    push word [data_91d6]            ; 0x5ed8
    call api_idx_0012                ; 0x5edc
    add sp, byte 0x40                ; 0x5edf
    mov ax, word [data_91d0]         ; 0x5ee2
    inc ax                           ; 0x5ee5
    mov cx, 2                        ; 0x5ee6
    cwd                              ; 0x5ee9
    idiv cx                          ; 0x5eea
    mov word [data_9b18], dx         ; 0x5eec
    mov ax, 0x22                     ; 0x5ef0
    push ax                          ; 0x5ef3
    push ax                          ; 0x5ef4
    mov ax, 4                        ; 0x5ef5
    push ax                          ; 0x5ef8
    push ax                          ; 0x5ef9
    mov ax, 0x91                     ; 0x5efa
    push ax                          ; 0x5efd
    mov ax, 0x89                     ; 0x5efe
    push ax                          ; 0x5f01
    mov ax, 0x29                     ; 0x5f02
    push ax                          ; 0x5f05
    mov ax, 0x2d                     ; 0x5f06
    push ax                          ; 0x5f09
    push ax                          ; 0x5f0a
    mov ax, 0x29                     ; 0x5f0b
    push ax                          ; 0x5f0e
    mov ax, 0x25                     ; 0x5f0f
    push ax                          ; 0x5f12
    push ax                          ; 0x5f13
    mov ax, 5                        ; 0x5f14
    push ax                          ; 0x5f17
    push ax                          ; 0x5f18
    mov ax, 0x92                     ; 0x5f19
    push ax                          ; 0x5f1c
    push ax                          ; 0x5f1d
    mov ax, 0x74                     ; 0x5f1e
    push ax                          ; 0x5f21
    push ax                          ; 0x5f22
    mov ax, 0x2d                     ; 0x5f23
    push ax                          ; 0x5f26
    mov ax, 0x30                     ; 0x5f27
    push ax                          ; 0x5f2a
    push ax                          ; 0x5f2b
    mov ax, 0x2d                     ; 0x5f2c
    push ax                          ; 0x5f2f
    mov ax, 0x2a                     ; 0x5f30
    push ax                          ; 0x5f33
    push ax                          ; 0x5f34
    mov ax, 0x43                     ; 0x5f35
    push ax                          ; 0x5f38
    mov ax, 5                        ; 0x5f39
    push ax                          ; 0x5f3c
    mov ax, 3                        ; 0x5f3d
    push ax                          ; 0x5f40
    push ax                          ; 0x5f41
    mov ax, 4                        ; 0x5f42
    push ax                          ; 0x5f45
    push cx                          ; 0x5f46
    push ax                          ; 0x5f47
    push cx                          ; 0x5f48
    mov ax, 1                        ; 0x5f49
    push ax                          ; 0x5f4c
    mov ax, 0                        ; 0x5f4d
    push ax                          ; 0x5f50
    mov ax, 1                        ; 0x5f51
    push ax                          ; 0x5f54
    push word [data_9b3c]            ; 0x5f55
    push word [data_91d6]            ; 0x5f59
    call api_idx_0010_2              ; 0x5f5d
    add sp, byte 0x4a                ; 0x5f60
    mov ax, 0xc9                     ; 0x5f63
    push ax                          ; 0x5f66
    mov ax, 0xc4                     ; 0x5f67
    push ax                          ; 0x5f6a
    mov ax, 0xb2                     ; 0x5f6b
    push ax                          ; 0x5f6e
    push ax                          ; 0x5f6f
    mov ax, 0xf                      ; 0x5f70
    push ax                          ; 0x5f73
    mov ax, 5                        ; 0x5f74
    push ax                          ; 0x5f77
    mov ax, 0xf                      ; 0x5f78
    push ax                          ; 0x5f7b
    mov ax, 5                        ; 0x5f7c
    push ax                          ; 0x5f7f
    mov ax, 0xf                      ; 0x5f80
    push ax                          ; 0x5f83
    mov ax, 5                        ; 0x5f84
    push ax                          ; 0x5f87
    mov ax, 0xc                      ; 0x5f88
    push ax                          ; 0x5f8b
    mov ax, 8                        ; 0x5f8c
    push ax                          ; 0x5f8f
    mov ax, 0x14                     ; 0x5f90
    push ax                          ; 0x5f93
    mov ax, 0x10                     ; 0x5f94
    push ax                          ; 0x5f97
    mov ax, 0                        ; 0x5f98
    push ax                          ; 0x5f9b
    push ax                          ; 0x5f9c
    mov ax, 4                        ; 0x5f9d
    push ax                          ; 0x5fa0
    push ax                          ; 0x5fa1
    mov ax, 0x34                     ; 0x5fa2
    push ax                          ; 0x5fa5
    mov ax, 0x2a                     ; 0x5fa6
    push ax                          ; 0x5fa9
    mov ax, 0xf                      ; 0x5faa
    push ax                          ; 0x5fad
    mov ax, 5                        ; 0x5fae
    push ax                          ; 0x5fb1
    mov ax, 6                        ; 0x5fb2
    push ax                          ; 0x5fb5
    mov ax, 5                        ; 0x5fb6
    push ax                          ; 0x5fb9
    mov ax, 4                        ; 0x5fba
    push ax                          ; 0x5fbd
    mov ax, 2                        ; 0x5fbe
    push ax                          ; 0x5fc1
    mov ax, 4                        ; 0x5fc2
    push ax                          ; 0x5fc5
    mov ax, 2                        ; 0x5fc6
    push ax                          ; 0x5fc9
    mov ax, 1                        ; 0x5fca
    push ax                          ; 0x5fcd
    mov ax, 0                        ; 0x5fce
    push ax                          ; 0x5fd1
    mov ax, 1                        ; 0x5fd2
    push ax                          ; 0x5fd5
    push word [data_91d6]            ; 0x5fd6
    call api_idx_0012_2              ; 0x5fda
    add sp, byte 0x40                ; 0x5fdd
    mov ax, word [data_91d0]         ; 0x5fe0
    mov word [data_9b18], ax         ; 0x5fe3
    mov ax, 0x26                     ; 0x5fe6
    push ax                          ; 0x5fe9
    push ax                          ; 0x5fea
    mov ax, 8                        ; 0x5feb
    push ax                          ; 0x5fee
    push ax                          ; 0x5fef
    mov ax, 0x95                     ; 0x5ff0
    push ax                          ; 0x5ff3
    mov ax, 0x8d                     ; 0x5ff4
    push ax                          ; 0x5ff7
    mov ax, 0x35                     ; 0x5ff8
    push ax                          ; 0x5ffb
    mov ax, 0x39                     ; 0x5ffc
    push ax                          ; 0x5fff
    push ax                          ; 0x6000
    mov ax, 0x35                     ; 0x6001
    push ax                          ; 0x6004
    mov ax, 0x31                     ; 0x6005
    push ax                          ; 0x6008
    push ax                          ; 0x6009
    mov ax, 9                        ; 0x600a
    push ax                          ; 0x600d
    push ax                          ; 0x600e
    mov ax, 0x98                     ; 0x600f
    push ax                          ; 0x6012
    push ax                          ; 0x6013
    mov ax, 0x7a                     ; 0x6014
    push ax                          ; 0x6017
    push ax                          ; 0x6018
    mov ax, 0x36                     ; 0x6019
    push ax                          ; 0x601c
    mov ax, 0x39                     ; 0x601d
    push ax                          ; 0x6020
    push ax                          ; 0x6021
    mov ax, 0x36                     ; 0x6022
    push ax                          ; 0x6025
    mov ax, 0x33                     ; 0x6026
    push ax                          ; 0x6029
    push ax                          ; 0x602a
    mov ax, 0x47                     ; 0x602b
    push ax                          ; 0x602e
    mov ax, 9                        ; 0x602f
    push ax                          ; 0x6032
    mov ax, 6                        ; 0x6033
    push ax                          ; 0x6036
    push ax                          ; 0x6037
    mov ax, 4                        ; 0x6038
    push ax                          ; 0x603b
    mov ax, 2                        ; 0x603c
    push ax                          ; 0x603f
    mov ax, 4                        ; 0x6040
    push ax                          ; 0x6043
    mov ax, 2                        ; 0x6044
    push ax                          ; 0x6047
    mov ax, 1                        ; 0x6048
    push ax                          ; 0x604b
    mov ax, 0                        ; 0x604c
    push ax                          ; 0x604f
    push ax                          ; 0x6050
    push word [data_9b40]            ; 0x6051
    push word [data_91d6]            ; 0x6055
    call api_idx_0010_2              ; 0x6059
    add sp, byte 0x4a                ; 0x605c
    mov ax, 0xd3                     ; 0x605f
    push ax                          ; 0x6062
    mov ax, 0xce                     ; 0x6063
    push ax                          ; 0x6066
    mov ax, 0xb6                     ; 0x6067
    push ax                          ; 0x606a
    push ax                          ; 0x606b
    mov ax, 0x14                     ; 0x606c
    push ax                          ; 0x606f
    mov ax, 0xa                      ; 0x6070
    push ax                          ; 0x6073
    mov ax, 0x14                     ; 0x6074
    push ax                          ; 0x6077
    mov ax, 0xa                      ; 0x6078
    push ax                          ; 0x607b
    mov ax, 0x14                     ; 0x607c
    push ax                          ; 0x607f
    mov ax, 0xa                      ; 0x6080
    push ax                          ; 0x6083
    mov ax, 0xc                      ; 0x6084
    push ax                          ; 0x6087
    mov ax, 8                        ; 0x6088
    push ax                          ; 0x608b
    mov ax, 0x14                     ; 0x608c
    push ax                          ; 0x608f
    mov ax, 0x10                     ; 0x6090
    push ax                          ; 0x6093
    mov ax, 0                        ; 0x6094
    push ax                          ; 0x6097
    push ax                          ; 0x6098
    mov ax, 4                        ; 0x6099
    push ax                          ; 0x609c
    push ax                          ; 0x609d
    mov ax, 0x39                     ; 0x609e
    push ax                          ; 0x60a1
    mov ax, 0x2f                     ; 0x60a2
    push ax                          ; 0x60a5
    mov ax, 0x14                     ; 0x60a6
    push ax                          ; 0x60a9
    mov ax, 0xa                      ; 0x60aa
    push ax                          ; 0x60ad
    mov ax, 6                        ; 0x60ae
    push ax                          ; 0x60b1
    mov ax, 5                        ; 0x60b2
    push ax                          ; 0x60b5
    mov ax, 4                        ; 0x60b6
    push ax                          ; 0x60b9
    mov ax, 2                        ; 0x60ba
    push ax                          ; 0x60bd
    mov ax, 4                        ; 0x60be
    push ax                          ; 0x60c1
    mov ax, 2                        ; 0x60c2
    push ax                          ; 0x60c5
    mov ax, 1                        ; 0x60c6
    push ax                          ; 0x60c9
    mov ax, 0                        ; 0x60ca
    push ax                          ; 0x60cd
    push ax                          ; 0x60ce
    push word [data_91d6]            ; 0x60cf
    call api_idx_0012_2              ; 0x60d3
    add sp, byte 0x40                ; 0x60d6
    mov ax, word [data_91d0]         ; 0x60d9
    inc ax                           ; 0x60dc
    mov cx, 2                        ; 0x60dd
    cwd                              ; 0x60e0
    idiv cx                          ; 0x60e1
    mov word [data_9b18], dx         ; 0x60e3
    mov ax, 0x2a                     ; 0x60e7
    push ax                          ; 0x60ea
    push ax                          ; 0x60eb
    mov ax, 0xc                      ; 0x60ec
    push ax                          ; 0x60ef
    push ax                          ; 0x60f0
    mov ax, 0x89                     ; 0x60f1
    push ax                          ; 0x60f4
    mov ax, 0x91                     ; 0x60f5
    push ax                          ; 0x60f8
    mov ax, 0x41                     ; 0x60f9
    push ax                          ; 0x60fc
    mov ax, 0x45                     ; 0x60fd
    push ax                          ; 0x6100
    push ax                          ; 0x6101
    mov ax, 0x41                     ; 0x6102
    push ax                          ; 0x6105
    mov ax, 0x3d                     ; 0x6106
    push ax                          ; 0x6109
    push ax                          ; 0x610a
    mov ax, 0xd                      ; 0x610b
    push ax                          ; 0x610e
    push ax                          ; 0x610f
    mov ax, 0x9e                     ; 0x6110
    push ax                          ; 0x6113
    push ax                          ; 0x6114
    mov ax, 0x80                     ; 0x6115
    push ax                          ; 0x6118
    push ax                          ; 0x6119
    mov ax, 0x3f                     ; 0x611a
    push ax                          ; 0x611d
    mov ax, 0x42                     ; 0x611e
    push ax                          ; 0x6121
    push ax                          ; 0x6122
    mov ax, 0x3f                     ; 0x6123
    push ax                          ; 0x6126
    mov ax, 0x3c                     ; 0x6127
    push ax                          ; 0x612a
    push ax                          ; 0x612b
    mov ax, 0x4b                     ; 0x612c
    push ax                          ; 0x612f
    mov ax, 0xd                      ; 0x6130
    push ax                          ; 0x6133
    mov ax, 9                        ; 0x6134
    push ax                          ; 0x6137
    push ax                          ; 0x6138
    mov ax, 4                        ; 0x6139
    push ax                          ; 0x613c
    push cx                          ; 0x613d
    push ax                          ; 0x613e
    push cx                          ; 0x613f
    mov ax, 1                        ; 0x6140
    push ax                          ; 0x6143
    mov ax, 0                        ; 0x6144
    push ax                          ; 0x6147
    mov ax, 3                        ; 0x6148
    push ax                          ; 0x614b
    push word [data_9b3e]            ; 0x614c
    push word [data_91d6]            ; 0x6150
    call api_idx_0010_2              ; 0x6154
    add sp, byte 0x4a                ; 0x6157
    mov ax, 0xc4                     ; 0x615a
    push ax                          ; 0x615d
    mov ax, 0xc9                     ; 0x615e
    push ax                          ; 0x6161
    mov ax, 0xba                     ; 0x6162
    push ax                          ; 0x6165
    push ax                          ; 0x6166
    mov ax, 5                        ; 0x6167
    push ax                          ; 0x616a
    mov ax, 0xf                      ; 0x616b
    push ax                          ; 0x616e
    mov ax, 5                        ; 0x616f
    push ax                          ; 0x6172
    mov ax, 0xf                      ; 0x6173
    push ax                          ; 0x6176
    mov ax, 5                        ; 0x6177
    push ax                          ; 0x617a
    mov ax, 0xf                      ; 0x617b
    push ax                          ; 0x617e
    mov ax, 0xc                      ; 0x617f
    push ax                          ; 0x6182
    mov ax, 8                        ; 0x6183
    push ax                          ; 0x6186
    mov ax, 0x14                     ; 0x6187
    push ax                          ; 0x618a
    mov ax, 0x10                     ; 0x618b
    push ax                          ; 0x618e
    mov ax, 0                        ; 0x618f
    push ax                          ; 0x6192
    push ax                          ; 0x6193
    mov ax, 4                        ; 0x6194
    push ax                          ; 0x6197
    push ax                          ; 0x6198
    mov ax, 0x2a                     ; 0x6199
    push ax                          ; 0x619c
    mov ax, 0x34                     ; 0x619d
    push ax                          ; 0x61a0
    mov ax, 5                        ; 0x61a1
    push ax                          ; 0x61a4
    mov ax, 0xf                      ; 0x61a5
    push ax                          ; 0x61a8
    mov ax, 6                        ; 0x61a9
    push ax                          ; 0x61ac
    mov ax, 5                        ; 0x61ad
    push ax                          ; 0x61b0
    mov ax, 4                        ; 0x61b1
    push ax                          ; 0x61b4
    mov ax, 2                        ; 0x61b5
    push ax                          ; 0x61b8
    mov ax, 4                        ; 0x61b9
    push ax                          ; 0x61bc
    mov ax, 2                        ; 0x61bd
    push ax                          ; 0x61c0
    mov ax, 1                        ; 0x61c1
    push ax                          ; 0x61c4
    mov ax, 0                        ; 0x61c5
    push ax                          ; 0x61c8
    mov ax, 3                        ; 0x61c9
    push ax                          ; 0x61cc
    push word [data_91d6]            ; 0x61cd
    call api_idx_0012_2              ; 0x61d1
    add sp, byte 0x40                ; 0x61d4
    mov ax, word [data_91d0]         ; 0x61d7
    mov word [data_9b18], ax         ; 0x61da
    mov ax, 0x2e                     ; 0x61dd
    push ax                          ; 0x61e0
    push ax                          ; 0x61e1
    mov ax, 0x10                     ; 0x61e2
    push ax                          ; 0x61e5
    push ax                          ; 0x61e6
    mov ax, 0x8d                     ; 0x61e7
    push ax                          ; 0x61ea
    mov ax, 0x95                     ; 0x61eb
    push ax                          ; 0x61ee
    mov ax, 0x4d                     ; 0x61ef
    push ax                          ; 0x61f2
    mov ax, 0x51                     ; 0x61f3
    push ax                          ; 0x61f6
    push ax                          ; 0x61f7
    mov ax, 0x4d                     ; 0x61f8
    push ax                          ; 0x61fb
    mov ax, 0x49                     ; 0x61fc
    push ax                          ; 0x61ff
    push ax                          ; 0x6200
    mov ax, 0x11                     ; 0x6201
    push ax                          ; 0x6204
    push ax                          ; 0x6205
    mov ax, 0xa4                     ; 0x6206
    push ax                          ; 0x6209
    push ax                          ; 0x620a
    mov ax, 0x86                     ; 0x620b
    push ax                          ; 0x620e
    push ax                          ; 0x620f
    mov ax, 0x48                     ; 0x6210
    push ax                          ; 0x6213
    mov ax, 0x4b                     ; 0x6214
    push ax                          ; 0x6217
    push ax                          ; 0x6218
    mov ax, 0x48                     ; 0x6219
    push ax                          ; 0x621c
    mov ax, 0x45                     ; 0x621d
    push ax                          ; 0x6220
    push ax                          ; 0x6221
    mov ax, 0x4f                     ; 0x6222
    push ax                          ; 0x6225
    mov ax, 0x11                     ; 0x6226
    push ax                          ; 0x6229
    mov ax, 0xc                      ; 0x622a
    push ax                          ; 0x622d
    push ax                          ; 0x622e
    mov ax, 4                        ; 0x622f
    push ax                          ; 0x6232
    mov ax, 2                        ; 0x6233
    push ax                          ; 0x6236
    mov ax, 4                        ; 0x6237
    push ax                          ; 0x623a
    mov ax, 2                        ; 0x623b
    push ax                          ; 0x623e
    mov ax, 1                        ; 0x623f
    push ax                          ; 0x6242
    mov ax, 0                        ; 0x6243
    push ax                          ; 0x6246
    mov ax, 4                        ; 0x6247
    push ax                          ; 0x624a
    push word [data_9b42]            ; 0x624b
    push word [data_91d6]            ; 0x624f
    call api_idx_0010_2              ; 0x6253
    add sp, byte 0x4a                ; 0x6256
    mov ax, 0xce                     ; 0x6259
    push ax                          ; 0x625c
    mov ax, 0xd3                     ; 0x625d
    push ax                          ; 0x6260
    mov ax, 0xbe                     ; 0x6261
    push ax                          ; 0x6264
    push ax                          ; 0x6265
    mov ax, 0xa                      ; 0x6266
    push ax                          ; 0x6269
    mov ax, 0x14                     ; 0x626a
    push ax                          ; 0x626d
    mov ax, 0xa                      ; 0x626e
    push ax                          ; 0x6271
    mov ax, 0x14                     ; 0x6272
    push ax                          ; 0x6275
    mov ax, 0xa                      ; 0x6276
    push ax                          ; 0x6279
    mov ax, 0x14                     ; 0x627a
    push ax                          ; 0x627d
    mov ax, 0xc                      ; 0x627e
    push ax                          ; 0x6281
    mov ax, 8                        ; 0x6282
    push ax                          ; 0x6285
    mov ax, 0x14                     ; 0x6286
    push ax                          ; 0x6289
    mov ax, 0x10                     ; 0x628a
    push ax                          ; 0x628d
    mov ax, 0                        ; 0x628e
    push ax                          ; 0x6291
    push ax                          ; 0x6292
    mov ax, 4                        ; 0x6293
    push ax                          ; 0x6296
    push ax                          ; 0x6297
    mov ax, 0x2f                     ; 0x6298
    push ax                          ; 0x629b
    mov ax, 0x39                     ; 0x629c
    push ax                          ; 0x629f
    mov ax, 0xa                      ; 0x62a0
    push ax                          ; 0x62a3
    mov ax, 0x14                     ; 0x62a4
    push ax                          ; 0x62a7
    mov ax, 6                        ; 0x62a8
    push ax                          ; 0x62ab
    mov ax, 5                        ; 0x62ac
    push ax                          ; 0x62af
    mov ax, 4                        ; 0x62b0
    push ax                          ; 0x62b3
    mov ax, 2                        ; 0x62b4
    push ax                          ; 0x62b7
    mov ax, 4                        ; 0x62b8
    push ax                          ; 0x62bb
    mov ax, 2                        ; 0x62bc
    push ax                          ; 0x62bf
    mov ax, 1                        ; 0x62c0
    push ax                          ; 0x62c3
    mov ax, 0                        ; 0x62c4
    push ax                          ; 0x62c7
    mov ax, 4                        ; 0x62c8
    push ax                          ; 0x62cb
    push word [data_91d6]            ; 0x62cc
    call api_idx_0012_2              ; 0x62d0
    add sp, byte 0x40                ; 0x62d3
    inc word [data_91d6]             ; 0x62d6
    jmp near @..api_idx_0030.l11     ; 0x62da
@..api_idx_0030.l24:
    mov ax, word [data_9b34]         ; 0x62dd
    dec ax                           ; 0x62e0
    mov word [data_91d6], ax         ; 0x62e1
    jmp near @..api_idx_0030.l77     ; 0x62e4
@..api_idx_0030.l25:
    mov word [bp - 0x0004], 0xff     ; 0x62e7
@..api_idx_0030.l26:
    mov ax, word [data_931e]         ; 0x62ec
    dec ax                           ; 0x62ef
    mov word [bp - 0x0002], ax       ; 0x62f0
    jmp short @..api_idx_0030.l30    ; 0x62f3
@..api_idx_0030.l27:
    mov ax, 0x11                     ; 0x62f5
    imul word [bp - 0x0002]          ; 0x62f8
    add ax, 0x9320                   ; 0x62fb
    mov word [bp - 0x0026], ax       ; 0x62fe
    mov bx, ax                       ; 0x6301
    mov al, byte [bx + 0xd]          ; 0x6303
    sub ah, ah                       ; 0x6306
    cmp ax, word [data_91d6]         ; 0x6308
    jne short @..api_idx_0030.l29    ; 0x630c
    mov al, byte [bx + 0xc]          ; 0x630e
    sub ah, ah                       ; 0x6311
    cmp ax, word [bp - 0x0004]       ; 0x6313
    jne short @..api_idx_0030.l29    ; 0x6316
    cmp word [bx], byte 0xff         ; 0x6318
    je short @..api_idx_0030.l28     ; 0x631b
    push word [bx + 0x4]             ; 0x631d
    mov al, byte [bx + 0x8]          ; 0x6320
    sub ah, ah                       ; 0x6323
    push ax                          ; 0x6325
    push word [bx]                   ; 0x6326
    mov al, byte [bx + 0xe]          ; 0x6328
    sub ah, ah                       ; 0x632b
    push ax                          ; 0x632d
    db 0xe8, 0xee, 0x8c ; call 0xf01f
    add sp, byte 8                   ; 0x6331
@..api_idx_0030.l28:
    mov bx, word [bp - 0x0026]       ; 0x6334
    cmp word [bx + 0x2], byte 0xff   ; 0x6337
    je short @..api_idx_0030.l29     ; 0x633b
    push word [bx + 0x6]             ; 0x633d
    mov al, byte [bx + 0x9]          ; 0x6340
    sub ah, ah                       ; 0x6343
    push ax                          ; 0x6345
    push word [bx + 0x2]             ; 0x6346
    mov al, byte [bx + 0xe]          ; 0x6349
    sub ah, ah                       ; 0x634c
    push ax                          ; 0x634e
    db 0xe8, 0xcd, 0x8c ; call 0xf01f
    add sp, byte 8                   ; 0x6352
@..api_idx_0030.l29:
    dec word [bp - 0x0002]           ; 0x6355
@..api_idx_0030.l30:
    cmp word [bp - 0x0002], byte 0   ; 0x6358
    jge short @..api_idx_0030.l27    ; 0x635c
    mov ax, 0                        ; 0x635e
    cmp word [bp - 0x0004], strict word 0xff ; 0x6361
    je short @..api_idx_0030.l31     ; 0x6366
    mov ax, 0xffff                   ; 0x6368
    cmp word [bp - 0x0004], strict word 0xfb ; 0x636b
    jne short @..api_idx_0030.l31    ; 0x6370
    mov ax, 1                        ; 0x6372
@..api_idx_0030.l31:
    mov word [bp - 0x0018], ax       ; 0x6375
    cmp ax, strict word 0xffff       ; 0x6378
    jne short @..api_idx_0030.l32    ; 0x637b
    jmp near @..api_idx_0030.l40     ; 0x637d
@..api_idx_0030.l32:
    mov ax, word [data_931e]         ; 0x6380
    dec ax                           ; 0x6383
    mov word [bp - 0x0002], ax       ; 0x6384
    jmp near @..api_idx_0030.l39     ; 0x6387
@..api_idx_0030.l33:
    mov ax, 0x11                     ; 0x638a
    imul word [bp - 0x0002]          ; 0x638d
    add ax, 0x9320                   ; 0x6390
    mov word [bp - 0x0026], ax       ; 0x6393
    mov bx, ax                       ; 0x6396
    mov al, byte [bx + 0xd]          ; 0x6398
    sub ah, ah                       ; 0x639b
    cmp ax, word [data_91d6]         ; 0x639d
    je short @..api_idx_0030.l34     ; 0x63a1
    jmp near @..api_idx_0030.l38     ; 0x63a3
@..api_idx_0030.l34:
    mov al, byte [bx + 0xc]          ; 0x63a6
    sub ah, ah                       ; 0x63a9
    cmp ax, 0xfa                     ; 0x63ab
    jl short @..api_idx_0030.l35     ; 0x63ae
    jmp near @..api_idx_0030.l38     ; 0x63b0
@..api_idx_0030.l35:
    mov al, byte [bx + 0x10]         ; 0x63b3
    sub ah, ah                       ; 0x63b6
    cmp ax, word [bp - 0x0018]       ; 0x63b8
    jne short @..api_idx_0030.l38    ; 0x63bb
    cmp byte [bx + 0xc], 4           ; 0x63bd
    jne short @..api_idx_0030.l36    ; 0x63c1
    cmp byte [bx + 0x9], 1           ; 0x63c3
    jne short @..api_idx_0030.l36    ; 0x63c7
    push bx                          ; 0x63c9
    call api_idx_0016                ; 0x63ca
    pop cx                           ; 0x63cd
    jmp short @..api_idx_0030.l38    ; 0x63ce
@..api_idx_0030.l36:
    mov word [bp - 0x0006], 0        ; 0x63d0
@..api_idx_0030.l37:
    mov bx, word [bp - 0x0026]       ; 0x63d5
    mov si, word [bp - 0x0006]       ; 0x63d8
    mov al, byte [bx + si + 0x8]     ; 0x63db
    mov bx, si                       ; 0x63de
    add bx, bp                       ; 0x63e0
    mov byte [bx - 0x0030], al       ; 0x63e2
    inc word [bp - 0x0006]           ; 0x63e5
    mov ax, word [bp - 0x0006]       ; 0x63e8
    cmp ax, strict word 4            ; 0x63eb
    jl short @..api_idx_0030.l37     ; 0x63ee
    mov byte [bp - 0x002c], 0        ; 0x63f0
    mov bx, word [bp - 0x0026]       ; 0x63f4
    mov al, byte [bx + 0xe]          ; 0x63f7
    sub ah, ah                       ; 0x63fa
    push ax                          ; 0x63fc
    mov ax, 0                        ; 0x63fd
    push ax                          ; 0x6400
    lea ax, word [bp - 0x0030]       ; 0x6401
    push ax                          ; 0x6404
    mov al, byte [bx + 0xf]          ; 0x6405
    sub ah, ah                       ; 0x6408
    push ax                          ; 0x640a
    mov ax, 0x90                     ; 0x640b
    push ax                          ; 0x640e
    mov ax, 0x20                     ; 0x640f
    push ax                          ; 0x6412
    push word [bx + 0x6]             ; 0x6413
    push word [bx + 0x4]             ; 0x6416
    push word [bx + 0x2]             ; 0x6419
    push word [bx]                   ; 0x641c
    mov al, byte [bx + 0xc]          ; 0x641e
    sub ah, ah                       ; 0x6421
    push ax                          ; 0x6423
    call ds_dispatch_efd1            ; 0x6424
    add sp, byte 0x16                ; 0x6427
@..api_idx_0030.l38:
    dec word [bp - 0x0002]           ; 0x642a
@..api_idx_0030.l39:
    cmp word [bp - 0x0002], byte 0   ; 0x642d
    jl short @..api_idx_0030.l40     ; 0x6431
    jmp near @..api_idx_0030.l33     ; 0x6433
@..api_idx_0030.l40:
    dec word [bp - 0x0004]           ; 0x6436
    mov ax, word [bp - 0x0004]       ; 0x6439
    cmp ax, 0xfb                     ; 0x643c
    jl short @..api_idx_0030.l41     ; 0x643f
    jmp near @..api_idx_0030.l26     ; 0x6441
@..api_idx_0030.l41:
    mov al, byte [data_5b55]         ; 0x6444
    sub ah, ah                       ; 0x6447
    cmp ax, 0xff                     ; 0x6449
    jne short @..api_idx_0030.l42    ; 0x644c
    jmp near @..api_idx_0030.l62     ; 0x644e
@..api_idx_0030.l42:
    cmp word [data_91d6], byte 0     ; 0x6451
    je short @..api_idx_0030.l43     ; 0x6456
    jmp near @..api_idx_0030.l62     ; 0x6458
@..api_idx_0030.l43:
    cmp word [data_91d4], byte 0     ; 0x645b
    jne short @..api_idx_0030.l44    ; 0x6460
    cmp byte [data_91e4], 3          ; 0x6462
    jne short @..api_idx_0030.l44    ; 0x6467
    jmp near @..api_idx_0030.l62     ; 0x6469
@..api_idx_0030.l44:
    mov ax, word [data_91d4]         ; 0x646c
    mov cx, 2                        ; 0x646f
    cwd                              ; 0x6472
    idiv cx                          ; 0x6473
    mov ax, dx                       ; 0x6475
    test ax, ax                      ; 0x6477
    jne short @..api_idx_0030.l45    ; 0x6479
    cmp word [data_8456], byte 1     ; 0x647b
    jg short @..api_idx_0030.l45     ; 0x6480
    jmp near @..api_idx_0030.l62     ; 0x6482
@..api_idx_0030.l45:
    mov word [bp - 0x0006], 0        ; 0x6485
@..api_idx_0030.l46:
    mov ax, word [bp - 0x0006]       ; 0x648a
    shl ax, 1                        ; 0x648d
    mov bx, ax                       ; 0x648f
    cmp word [bx - 0x6e60], byte 0   ; 0x6491
    jg short @..api_idx_0030.l47     ; 0x6496
    jmp near @..api_idx_0030.l51     ; 0x6498
@..api_idx_0030.l47:
    mov al, byte [bx - 0x6e60]       ; 0x649b
    mov byte [bp - 0x0030], al       ; 0x649f
    mov byte [bp - 0x002f], 0        ; 0x64a2
    mov ax, 0                        ; 0x64a6
    push ax                          ; 0x64a9
    push ax                          ; 0x64aa
    lea ax, word [bp - 0x0030]       ; 0x64ab
    push ax                          ; 0x64ae
    push word [bx - 0x6e38]          ; 0x64af
    mov ax, 0x90                     ; 0x64b3
    push ax                          ; 0x64b6
    mov ax, 0x20                     ; 0x64b7
    push ax                          ; 0x64ba
    mov ax, 0xf8                     ; 0x64bb
    push ax                          ; 0x64be
    mov ax, 0x48                     ; 0x64bf
    push ax                          ; 0x64c2
    mov bx, word [bx - 0x6e60]       ; 0x64c3
    mov al, byte [bx + 0x7c61]       ; 0x64c7
    sub ah, ah                       ; 0x64cb
    mov cx, word [bp - 0x0006]       ; 0x64cd
    shl cx, 1                        ; 0x64d0
    mov bx, cx                       ; 0x64d2
    add ax, word [bx - 0x6e4a]       ; 0x64d4
    push ax                          ; 0x64d8
    mov ax, word [bx - 0x6e60]       ; 0x64d9
    shl ax, 1                        ; 0x64dd
    add ax, word [bx - 0x6e38]       ; 0x64df
    mov bx, ax                       ; 0x64e3
    mov al, byte [bx + 0x7c18]       ; 0x64e5
    sub ah, ah                       ; 0x64e9
    mov bx, cx                       ; 0x64eb
    add ax, word [bx - 0x6e44]       ; 0x64ed
    push ax                          ; 0x64f1
    mov ax, 0xd                      ; 0x64f2
    push ax                          ; 0x64f5
    call ds_dispatch_efd1            ; 0x64f6
    add sp, byte 0x16                ; 0x64f9
    mov ax, word [bp - 0x0006]       ; 0x64fc
    shl ax, 1                        ; 0x64ff
    mov bx, ax                       ; 0x6501
    cmp word [bx - 0x6e3e], byte 0   ; 0x6503
    je short @..api_idx_0030.l48     ; 0x6508
    dec word [bx - 0x6e60]           ; 0x650a
    jmp short @..api_idx_0030.l49    ; 0x650e
@..api_idx_0030.l48:
    inc word [bx - 0x6e60]           ; 0x6510
@..api_idx_0030.l49:
    mov al, byte [data_7d3c]         ; 0x6514
    sub ah, ah                       ; 0x6517
    cmp ax, word [bx - 0x6e60]       ; 0x6519
    jge short @..api_idx_0030.l50    ; 0x651d
    mov word [bx - 0x6e60], 0        ; 0x651f
@..api_idx_0030.l50:
    jmp near @..api_idx_0030.l61     ; 0x6525
@..api_idx_0030.l51:
    cmp word [data_8f22], byte 0     ; 0x6528
    je short @..api_idx_0030.l52     ; 0x652d
    jmp near @..api_idx_0030.l61     ; 0x652f
@..api_idx_0030.l52:
    mov ax, 0x64                     ; 0x6532
    push ax                          ; 0x6535
    call ds_dispatch_b7a9            ; 0x6536
    pop cx                           ; 0x6539
    cmp ax, word [bp - 0x0006]       ; 0x653a
    jle short @..api_idx_0030.l53    ; 0x653d
    jmp near @..api_idx_0030.l61     ; 0x653f
@..api_idx_0030.l53:
    mov ax, 2                        ; 0x6542
    push ax                          ; 0x6545
    call ds_dispatch_b7a9            ; 0x6546
    pop cx                           ; 0x6549
    mov cx, word [bp - 0x0006]       ; 0x654a
    shl cx, 1                        ; 0x654d
    mov bx, cx                       ; 0x654f
    mov word [bx - 0x6e38], ax       ; 0x6551
    mov ax, word [data_91d4]         ; 0x6555
    mov cx, 2                        ; 0x6558
    cwd                              ; 0x655b
    idiv cx                          ; 0x655c
    mov ax, dx                       ; 0x655e
    test ax, ax                      ; 0x6560
    je short @..api_idx_0030.l54     ; 0x6562
    push cx                          ; 0x6564
    call ds_dispatch_b7a9            ; 0x6565
    pop cx                           ; 0x6568
    jmp short @..api_idx_0030.l55    ; 0x6569
@..api_idx_0030.l54:
    mov ax, 0                        ; 0x656b
@..api_idx_0030.l55:
    mov cx, word [bp - 0x0006]       ; 0x656e
    shl cx, 1                        ; 0x6571
    mov bx, cx                       ; 0x6573
    mov word [bx - 0x6e3e], ax       ; 0x6575
    mov ax, 1                        ; 0x6579
    cmp word [bx - 0x6e3e], byte 0   ; 0x657c
    je short @..api_idx_0030.l56     ; 0x6581
    mov al, byte [data_7d3c]         ; 0x6583
    sub ah, ah                       ; 0x6586
@..api_idx_0030.l56:
    mov word [bx - 0x6e60], ax       ; 0x6588
    mov ax, word [data_91d4]         ; 0x658c
    mov cx, 1                        ; 0x658f
    cwd                              ; 0x6592
    idiv cx                          ; 0x6593
    mov ax, dx                       ; 0x6595
    test ax, ax                      ; 0x6597
    je short @..api_idx_0030.l57     ; 0x6599
    mov ax, 0x1e                     ; 0x659b
    jmp short @..api_idx_0030.l58    ; 0x659e
@..api_idx_0030.l57:
    mov ax, 0xa                      ; 0x65a0
@..api_idx_0030.l58:
    mov word [bp - 0x0002], ax       ; 0x65a3
    cmp word [bx - 0x6e38], byte 0   ; 0x65a6
    je short @..api_idx_0030.l59     ; 0x65ab
    push ax                          ; 0x65ad
    call ds_dispatch_b7a9            ; 0x65ae
    pop cx                           ; 0x65b1
    jmp short @..api_idx_0030.l60    ; 0x65b2
@..api_idx_0030.l59:
    push word [bp - 0x0002]          ; 0x65b4
    call ds_dispatch_b7a9            ; 0x65b7
    pop cx                           ; 0x65ba
    mov cx, ax                       ; 0x65bb
    mov ax, 0                        ; 0x65bd
    sub ax, cx                       ; 0x65c0
@..api_idx_0030.l60:
    mov cx, word [bp - 0x0006]       ; 0x65c2
    shl cx, 1                        ; 0x65c5
    mov bx, cx                       ; 0x65c7
    mov word [bx - 0x6e44], ax       ; 0x65c9
    mov ax, 5                        ; 0x65cd
    push ax                          ; 0x65d0
    call ds_dispatch_b7a9            ; 0x65d1
    pop cx                           ; 0x65d4
    mov cx, word [bp - 0x0006]       ; 0x65d5
    shl cx, 1                        ; 0x65d8
    mov bx, cx                       ; 0x65da
    mov word [bx - 0x6e4a], ax       ; 0x65dc
@..api_idx_0030.l61:
    inc word [bp - 0x0006]           ; 0x65e0
    mov ax, word [bp - 0x0006]       ; 0x65e3
    cmp ax, strict word 3            ; 0x65e6
    jge short @..api_idx_0030.l62    ; 0x65e9
    jmp near @..api_idx_0030.l46     ; 0x65eb
@..api_idx_0030.l62:
    cmp word [data_91d4], byte 0     ; 0x65ee
    je short @..api_idx_0030.l63     ; 0x65f3
    mov ax, word [data_91d4]         ; 0x65f5
    cmp ax, strict word 2            ; 0x65f8
    jg short @..api_idx_0030.l63     ; 0x65fb
    jmp near @..api_idx_0030.l76     ; 0x65fd
@..api_idx_0030.l63:
    mov word [bp - 0x0014], 0        ; 0x6600
@..api_idx_0030.l64:
    mov ax, word [bp - 0x0014]       ; 0x6605
    shl ax, 1                        ; 0x6608
    mov bx, ax                       ; 0x660a
    add bx, bp                       ; 0x660c
    mov ax, word [bx - 0x0024]       ; 0x660e
    mov word [bp - 0x0002], ax       ; 0x6611
    mov ax, 5                        ; 0x6614
    imul word [data_91d6]            ; 0x6617
    mov cx, ax                       ; 0x661b
    mov ax, word [bp - 0x0002]       ; 0x661d
    add cx, ax                       ; 0x6620
    mov bx, cx                       ; 0x6622
    mov al, byte [bx - 0x6df6]       ; 0x6624
    sub ah, ah                       ; 0x6628
    mov word [bp - 0x001a], ax       ; 0x662a
    test ax, ax                      ; 0x662d
    jne short @..api_idx_0030.l65    ; 0x662f
    jmp near @..api_idx_0030.l75     ; 0x6631
@..api_idx_0030.l65:
    mov ax, 0x28                     ; 0x6634
    imul word [data_91d6]            ; 0x6637
    mov cx, word [bp - 0x0002]       ; 0x663b
    shl cx, 1                        ; 0x663e
    shl cx, 1                        ; 0x6640
    shl cx, 1                        ; 0x6642
    add ax, cx                       ; 0x6644
    mov bx, ax                       ; 0x6646
    cmp word [bx + 0x2a6], byte 0    ; 0x6648
    jne short @..api_idx_0030.l66    ; 0x664d
    jmp near @..api_idx_0030.l75     ; 0x664f
@..api_idx_0030.l66:
    cmp word [bp - 0x001a], byte 1   ; 0x6652
    je short @..api_idx_0030.l67     ; 0x6656
    cmp word [data_91a6], byte 0     ; 0x6658
    je short @..api_idx_0030.l69     ; 0x665d
@..api_idx_0030.l67:
    mov ax, 0                        ; 0x665f
    cmp word [data_91a6], byte 0     ; 0x6662
    je short @..api_idx_0030.l68     ; 0x6667
    mov ax, 0xff                     ; 0x6669
@..api_idx_0030.l68:
    push ax                          ; 0x666c
    push word [bx + 0x2ac]           ; 0x666d
    push word [bx + 0x2aa]           ; 0x6671
    push word [bx + 0x2a8]           ; 0x6675
    push word [bx + 0x2a6]           ; 0x6679
    call ds_dispatch_e901            ; 0x667d
    add sp, byte 0x0a                ; 0x6680
    jmp near @..api_idx_0030.l74     ; 0x6683
@..api_idx_0030.l69:
    cmp word [data_91d6], byte 0     ; 0x6686
    jg short @..api_idx_0030.l70     ; 0x668b
    jmp near @..api_idx_0030.l74     ; 0x668d
@..api_idx_0030.l70:
    mov ax, word [bp - 0x0002]       ; 0x6690
    shl ax, 1                        ; 0x6693
    shl ax, 1                        ; 0x6695
    add ax, word [data_91d6]         ; 0x6697
    shl ax, 1                        ; 0x669b
    mov bx, ax                       ; 0x669d
    cmp byte [bx + 0x76a0], 0        ; 0x669f
    jne short @..api_idx_0030.l71    ; 0x66a4
    jmp near @..api_idx_0030.l74     ; 0x66a6
@..api_idx_0030.l71:
    mov ax, 2                        ; 0x66a9
    push ax                          ; 0x66ac
    call ds_dispatch_b7a9            ; 0x66ad
    pop cx                           ; 0x66b0
    add ax, word [data_8f46]         ; 0x66b1
    add ax, word [data_8f44]         ; 0x66b5
    add ax, word [data_82ee]         ; 0x66b9
    add ax, word [data_91d6]         ; 0x66bd
    mov cx, 2                        ; 0x66c1
    cwd                              ; 0x66c4
    idiv cx                          ; 0x66c5
    mov word [data_91d0], dx         ; 0x66c7
    mov al, byte [data_91d6]         ; 0x66cb
    mov byte [bp - 0x0030], al       ; 0x66ce
    mov byte [bp - 0x002f], 0        ; 0x66d1
    mov ax, word [bp - 0x0002]       ; 0x66d5
    shl ax, 1                        ; 0x66d8
    shl ax, 1                        ; 0x66da
    add ax, word [data_91d6]         ; 0x66dc
    shl ax, 1                        ; 0x66e0
    add ax, dx                       ; 0x66e2
    mov bx, ax                       ; 0x66e4
    mov al, byte [bx + 0x76a0]       ; 0x66e6
    sub ah, ah                       ; 0x66ea
    mov word [bp - 0x0006], ax       ; 0x66ec
    cmp ax, 0xff                     ; 0x66ef
    jne short @..api_idx_0030.l73    ; 0x66f2
    mov ax, 0xffee                   ; 0x66f4
    cmp word [data_91d0], byte 0     ; 0x66f7
    je short @..api_idx_0030.l72     ; 0x66fc
    mov ax, 0xffea                   ; 0x66fe
@..api_idx_0030.l72:
    mov word [bp - 0x0006], ax       ; 0x6701
@..api_idx_0030.l73:
    mov ax, 0                        ; 0x6704
    push ax                          ; 0x6707
    push ax                          ; 0x6708
    lea ax, word [bp - 0x0030]       ; 0x6709
    push ax                          ; 0x670c
    push dx                          ; 0x670d
    mov ax, 0x90                     ; 0x670e
    push ax                          ; 0x6711
    mov ax, 0x20                     ; 0x6712
    push ax                          ; 0x6715
    mov ax, 0xf8                     ; 0x6716
    push ax                          ; 0x6719
    mov ax, 0x48                     ; 0x671a
    push ax                          ; 0x671d
    mov ax, word [bp - 0x0002]       ; 0x671e
    shl ax, 1                        ; 0x6721
    shl ax, 1                        ; 0x6723
    add ax, word [data_91d6]         ; 0x6725
    mov bx, ax                       ; 0x6729
    mov al, byte [bx + 0x76e9]       ; 0x672b
    sub ah, ah                       ; 0x672f
    push ax                          ; 0x6731
    push word [bp - 0x0006]          ; 0x6732
    mov ax, 9                        ; 0x6735
    push ax                          ; 0x6738
    call ds_dispatch_efd1            ; 0x6739
    add sp, byte 0x16                ; 0x673c
@..api_idx_0030.l74:
    cmp word [data_91a6], byte 0     ; 0x673f
    je short @..api_idx_0030.l75     ; 0x6744
    call api_idx_001e                ; 0x6746
    call api_idx_0024                ; 0x6749
@..api_idx_0030.l75:
    inc word [bp - 0x0014]           ; 0x674c
    mov ax, word [bp - 0x0014]       ; 0x674f
    cmp ax, strict word 5            ; 0x6752
    jge short @..api_idx_0030.l76    ; 0x6755
    jmp near @..api_idx_0030.l64     ; 0x6757
@..api_idx_0030.l76:
    dec word [data_91d6]             ; 0x675a
@..api_idx_0030.l77:
    cmp word [data_91d6], byte 0     ; 0x675e
    jl short @..api_idx_0030.l78     ; 0x6763
    jmp near @..api_idx_0030.l25     ; 0x6765
@..api_idx_0030.l78:
    call ds_dispatch_da22            ; 0x6768
    ret                              ; 0x676b
loc_676c:
    mov ax, 0                        ; 0x676c
    call ds_dispatch_f40b            ; 0x676f
    call api_idx_0030                ; 0x6772
    mov ax, 0x8f                     ; 0x6775
    push ax                          ; 0x6778
    mov ax, 0xf7                     ; 0x6779
    push ax                          ; 0x677c
    mov ax, 0x20                     ; 0x677d
    push ax                          ; 0x6780
    mov ax, 0x48                     ; 0x6781
    push ax                          ; 0x6784
    call ds_dispatch_e8da            ; 0x6785
    add sp, byte 8                   ; 0x6788
    ret                              ; 0x678b
%include "vmaze/math_loc_678c.asm"

@..math_loc_678c.l1:
    mov ax, 0xffff                   ; 0x67c2
    ret                              ; 0x67c5
%include "vmaze/api_idx_0004_6.asm"

@..api_idx_0004_6.l2:
    jmp short @..api_idx_0004_6.l1   ; 0x683b
@..api_idx_0004_6.l3:
    mov ax, word [bp + 0xa]          ; 0x683d
    push ax                          ; 0x6840
    mov bx, word [data_0e14]         ; 0x6841
    mov si, word [bp - 0x0004]       ; 0x6845
    mov al, byte [bx + si + 0x490]   ; 0x6848
    sub ah, ah                       ; 0x684c
    mov cx, ax                       ; 0x684e
    pop ax                           ; 0x6850
    sub ax, cx                       ; 0x6851
    mov bx, word [bp + 0x4]          ; 0x6853
    mov word [bx], ax                ; 0x6856
    mov ax, word [bp + 0xc]          ; 0x6858
    push ax                          ; 0x685b
    mov bx, word [data_0e14]         ; 0x685c
    mov si, word [bp - 0x0004]       ; 0x6860
    mov al, byte [bx + si + 0x4a0]   ; 0x6863
    sub ah, ah                       ; 0x6867
    mov cx, ax                       ; 0x6869
    pop ax                           ; 0x686b
    sub ax, cx                       ; 0x686c
    mov bx, word [bp + 0x6]          ; 0x686e
    mov word [bx], ax                ; 0x6871
    mov ax, word [bp - 0x0004]       ; 0x6873
    mov bx, word [bp + 0x8]          ; 0x6876
    mov word [bx], ax                ; 0x6879
    mov word [data_8f48], ax         ; 0x687b
    mov ax, 0                        ; 0x687e
    ret                              ; 0x6881
%include "vmaze/api_idx_0002_11.asm"

@..api_idx_0002_11.l2:
    mov al, byte [bx + si + 0x690]   ; 0x68a6
    sub ah, ah                       ; 0x68aa
    cmp ax, word [bp + 0x4]          ; 0x68ac
    jne short @..api_idx_0002_11.l3  ; 0x68af
    mov al, byte [bx + si + 0x780]   ; 0x68b1
    sub ah, ah                       ; 0x68b5
    cmp ax, word [bp + 0x6]          ; 0x68b7
    jne short @..api_idx_0002_11.l3  ; 0x68ba
    cmp byte [bx + si + 0x5a0], 0    ; 0x68bc
    jbe short @..api_idx_0002_11.l3  ; 0x68c1
    mov al, byte [bx + si + 0x960]   ; 0x68c3
    sub ah, ah                       ; 0x68c7
    push ax                          ; 0x68c9
    mov ax, word [data_830c]         ; 0x68ca
    mov cx, 4                        ; 0x68cd
    shl ax, cl                       ; 0x68d0
    add ax, 0x8d14                   ; 0x68d2
    push ax                          ; 0x68d5
    call ds_dispatch_ec74            ; 0x68d6
    add sp, byte 4                   ; 0x68d9
    test ax, ax                      ; 0x68dc
    jne short @..api_idx_0002_11.l3  ; 0x68de
    mov ax, word [bp - 0x0002]       ; 0x68e0
    ret                              ; 0x68e3
@..api_idx_0002_11.l3:
    inc word [bp - 0x0002]           ; 0x68e4
@..api_idx_0002_11.l4:
    cmp word [bp - 0x0002], strict word 0xf0 ; 0x68e7
    jl short @..api_idx_0002_11.l1   ; 0x68ec
    mov ax, 0xffff                   ; 0x68ee
    ret                              ; 0x68f1
loc_68f2:
    mov ax, 0                        ; 0x68f2
    call ds_dispatch_f40b            ; 0x68f5
    mov ax, 0x10                     ; 0x68f8
    push ax                          ; 0x68fb
    mov ax, word [data_830c]         ; 0x68fc
    mov cx, 4                        ; 0x68ff
    shl ax, cl                       ; 0x6902
    add ax, 0x5642                   ; 0x6904
    push ax                          ; 0x6907
    mov ax, word [data_830c]         ; 0x6908
    shl ax, cl                       ; 0x690b
    add ax, 0x8d14                   ; 0x690d
    push ax                          ; 0x6910
    call ds_dispatch_fedc            ; 0x6911
    add sp, byte 6                   ; 0x6914
    mov ax, 0x80                     ; 0x6917
    push ax                          ; 0x691a
    mov ax, word [data_830c]         ; 0x691b
    mov cx, 7                        ; 0x691e
    shl ax, cl                       ; 0x6921
    mov cx, ax                       ; 0x6923
    mov ax, word [data_0e1a]         ; 0x6925
    mov dx, word [data_0e1c]         ; 0x6928
    add ax, cx                       ; 0x692c
    push dx                          ; 0x692e
    push ax                          ; 0x692f
    push ds                          ; 0x6930
    mov ax, 0x8b7e                   ; 0x6931
    push ax                          ; 0x6934
    call ds_dispatch_afcc            ; 0x6935
    add sp, byte 0x0a                ; 0x6938
    mov ax, 0x80                     ; 0x693b
    push ax                          ; 0x693e
    mov ax, word [data_830c]         ; 0x693f
    mov cx, 7                        ; 0x6942
    shl ax, cl                       ; 0x6945
    mov cx, ax                       ; 0x6947
    mov ax, word [data_0e16]         ; 0x6949
    mov dx, word [data_0e18]         ; 0x694c
    add ax, cx                       ; 0x6950
    push dx                          ; 0x6952
    push ax                          ; 0x6953
    push ds                          ; 0x6954
    mov ax, 0x8afe                   ; 0x6955
    push ax                          ; 0x6958
    call ds_dispatch_afcc            ; 0x6959
    add sp, byte 0x0a                ; 0x695c
    ret                              ; 0x695f
%include "vmaze/api_idx_0006_5.asm"

@..api_idx_0006_5.l2:
    jmp short @..api_idx_0006_5.l4   ; 0x69b4
@..api_idx_0006_5.l3:
    mov ax, word [bx + 0x2]          ; 0x69b6
    cmp ax, word [bp - 0x0004]       ; 0x69b9
    jne short @..api_idx_0006_5.l4   ; 0x69bc
    mov ax, word [bp - 0x0002]       ; 0x69be
    ret                              ; 0x69c1
@..api_idx_0006_5.l4:
    add word [bp - 0x0006], byte 6   ; 0x69c2
    inc word [bp - 0x0002]           ; 0x69c6
@..api_idx_0006_5.l5:
    mov ax, word [bp - 0x0002]       ; 0x69c9
    cmp ax, word [data_590e]         ; 0x69cc
    jl short @..api_idx_0006_5.l1    ; 0x69d0
    mov ax, 0xffff                   ; 0x69d2
    ret                              ; 0x69d5
%include "vmaze/api_idx_0004_7.asm"

loc_6ac7:
    mov ax, 0                        ; 0x6ac7
    call ds_dispatch_f40b            ; 0x6aca
    cmp word [bp + 0x4], byte 0      ; 0x6acd
    jle short @..local.l38           ; 0x6ad1
    mov ax, word [bp + 0x4]          ; 0x6ad3
    cmp ax, strict word 5            ; 0x6ad6
    jl short @..local.l36            ; 0x6ad9
    cmp ax, strict word 8            ; 0x6adb
    je short @..local.l36            ; 0x6ade
    cmp ax, strict word 9            ; 0x6ae0
    jne short @..local.l37           ; 0x6ae3
@..local.l36:
    push ax                          ; 0x6ae5
    call ds_dispatch_b7e0            ; 0x6ae6
    pop cx                           ; 0x6ae9
    jmp short @..local.l38           ; 0x6aea
@..local.l37:
    push word [bp + 0x4]             ; 0x6aec
    call ds_dispatch_d7aa            ; 0x6aef
    pop cx                           ; 0x6af2
    mov ax, 0x10                     ; 0x6af3
    push ax                          ; 0x6af6
    call ds_dispatch_b7e0            ; 0x6af7
    pop cx                           ; 0x6afa
    mov ax, 0x10                     ; 0x6afb
    push ax                          ; 0x6afe
    call ds_dispatch_d6c6            ; 0x6aff
    pop cx                           ; 0x6b02
    mov word [data_598e], 0xffff     ; 0x6b03
@..local.l38:
    ret                              ; 0x6b09
%include "vmaze/api_idx_000a_2.asm"

%include "vmaze/math_loc_6b5a.asm"

@..math_loc_6b5a.l1:
    mov ax, 0xc6                     ; 0x6b68
    push ax                          ; 0x6b6b
    mov ax, 0x109                    ; 0x6b6c
    push ax                          ; 0x6b6f
    mov ax, 0x92                     ; 0x6b70
    push ax                          ; 0x6b73
    mov ax, 0x37                     ; 0x6b74
    push ax                          ; 0x6b77
    call ds_dispatch_bb33            ; 0x6b78
    add sp, byte 8                   ; 0x6b7b
    mov ax, 0x3c                     ; 0x6b7e
    push ax                          ; 0x6b81
    call ds_dispatch_b7a9            ; 0x6b82
    pop cx                           ; 0x6b85
    cwd                              ; 0x6b86
    les bx, word [0x0002]            ; 0x6b87
    mov cx, word [es:bx]             ; 0x6b8b
    mov bx, word [es:bx + 0x2]       ; 0x6b8e
    add ax, cx                       ; 0x6b92
    adc dx, bx                       ; 0x6b94
    add ax, strict word 0x24         ; 0x6b96
    adc dx, byte 0                   ; 0x6b99
    mov word [data_919c], dx         ; 0x6b9c
    mov word [data_919a], ax         ; 0x6ba0
    cmp word [bp + 0x4], byte 0      ; 0x6ba3
    je short @..math_loc_6b5a.l3     ; 0x6ba7
    mov ax, word [data_905a]         ; 0x6ba9
    cmp byte [data_598c], 0          ; 0x6bac
    je short @..math_loc_6b5a.l2     ; 0x6bb1
    shl ax, 1                        ; 0x6bb3
@..math_loc_6b5a.l2:
    push ax                          ; 0x6bb5
    call api_idx_0006_2              ; 0x6bb6
    pop cx                           ; 0x6bb9
    jmp short @..math_loc_6b5a.l5    ; 0x6bba
@..math_loc_6b5a.l3:
    call ds_dispatch_baef            ; 0x6bbc
    test ax, ax                      ; 0x6bbf
    jne short @..math_loc_6b5a.l5    ; 0x6bc1
    call math_loc_0f1d               ; 0x6bc3
    test ax, ax                      ; 0x6bc6
    je short @..math_loc_6b5a.l4     ; 0x6bc8
    mov ax, word [data_82e8]         ; 0x6bca
    inc ax                           ; 0x6bcd
    mov cx, 2                        ; 0x6bce
    cwd                              ; 0x6bd1
    idiv cx                          ; 0x6bd2
    mov word [data_82e8], dx         ; 0x6bd4
    cmp word [data_5b3e], byte 0     ; 0x6bd8
    jne short @..math_loc_6b5a.l4    ; 0x6bdd
    call loc_676c                    ; 0x6bdf
@..math_loc_6b5a.l4:
    mov ax, 0                        ; 0x6be2
    push ax                          ; 0x6be5
    call loc_0ea6                    ; 0x6be6
    pop cx                           ; 0x6be9
    jmp short @..math_loc_6b5a.l3    ; 0x6bea
@..math_loc_6b5a.l5:
    cmp word [data_59fa], byte 0     ; 0x6bec
    je short @..math_loc_6b5a.l6     ; 0x6bf1
    cmp word [data_9b4a], byte 0     ; 0x6bf3
    jne short @..math_loc_6b5a.l6    ; 0x6bf8
    mov word [data_9b48], 1          ; 0x6bfa
@..math_loc_6b5a.l6:
    call api_idx_000a_2              ; 0x6c00
    mov word [data_9b4c], 0          ; 0x6c03
    ret                              ; 0x6c09
%include "vmaze/api_idx_0004_8.asm"

@..api_idx_0004_8.l2:
    mov ax, 2                        ; 0x6c2c
    push ax                          ; 0x6c2f
    push bx                          ; 0x6c30
    call ds_dispatch_e883            ; 0x6c31
    add sp, byte 4                   ; 0x6c34
    inc ax                           ; 0x6c37
    mov cx, 2                        ; 0x6c38
    cwd                              ; 0x6c3b
    idiv cx                          ; 0x6c3c
    mov cx, ax                       ; 0x6c3e
    mov ax, 0xa0                     ; 0x6c40
    sub ax, cx                       ; 0x6c43
    mov word [bp - 0x0002], ax       ; 0x6c45
    push word [bp + 0x4]             ; 0x6c48
    call ds_dispatch_fa90            ; 0x6c4b
    pop cx                           ; 0x6c4e
    dec ax                           ; 0x6c4f
    mov word [bp - 0x0004], ax       ; 0x6c50
    mov bx, word [bp + 0x4]          ; 0x6c53
    mov si, ax                       ; 0x6c56
    mov al, byte [bx + si]           ; 0x6c58
    sub ah, ah                       ; 0x6c5a
    jmp short @..api_idx_0004_8.l5   ; 0x6c5c
@..api_idx_0004_8.l3:
    mov bx, word [bp + 0x4]          ; 0x6c5e
    mov si, word [bp - 0x0004]       ; 0x6c61
    mov byte [bx + si], 0            ; 0x6c64
    mov word [bp - 0x0002], 0x44     ; 0x6c67
    jmp short @..api_idx_0004_8.l6   ; 0x6c6c
@..api_idx_0004_8.l4:
    mov bx, word [bp + 0x4]          ; 0x6c6e
    mov si, word [bp - 0x0004]       ; 0x6c71
    mov byte [bx + si], 0            ; 0x6c74
    mov ax, word [data_9b4e]         ; 0x6c77
    mov word [bp - 0x0002], ax       ; 0x6c7a
    jmp short @..api_idx_0004_8.l6   ; 0x6c7d
@..api_idx_0004_8.l5:
    cmp ax, strict word 0x24         ; 0x6c7f
    je short @..api_idx_0004_8.l3    ; 0x6c82
    cmp ax, strict word 0x5e         ; 0x6c84
    je short @..api_idx_0004_8.l4    ; 0x6c87
@..api_idx_0004_8.l6:
    mov ax, 0xc                      ; 0x6c89
    imul word [data_9b4c]            ; 0x6c8c
    add ax, 0x92                     ; 0x6c90
    push ax                          ; 0x6c93
    push word [bp - 0x0002]          ; 0x6c94
    call ds_dispatch_e809            ; 0x6c97
    add sp, byte 4                   ; 0x6c9a
    mov ax, 0                        ; 0x6c9d
    push ax                          ; 0x6ca0
    mov ax, 0x55                     ; 0x6ca1
    push ax                          ; 0x6ca4
    call ds_dispatch_e823            ; 0x6ca5
    add sp, byte 4                   ; 0x6ca8
    mov ax, 2                        ; 0x6cab
    push ax                          ; 0x6cae
    push word [bp + 0x4]             ; 0x6caf
    call ds_dispatch_e84e            ; 0x6cb2
    add sp, byte 4                   ; 0x6cb5
    mov bx, word [bp + 0x4]          ; 0x6cb8
    mov byte [bx], 0                 ; 0x6cbb
    mov ax, word [bp - 0x0002]       ; 0x6cbe
    mov word [data_9b4e], ax         ; 0x6cc1
    inc word [data_9b4c]             ; 0x6cc4
    ret                              ; 0x6cc8
%include "vmaze/api_idx_0090.asm"

%include "vmaze/api_idx_0004_9.asm"

loc_6f14:
    mov ax, 0xfefa                   ; 0x6f14
    call ds_dispatch_f40b            ; 0x6f17
    mov word [data_9b48], 0          ; 0x6f1a
    mov ax, 0xc6                     ; 0x6f20
    push ax                          ; 0x6f23
    mov ax, 0x109                    ; 0x6f24
    push ax                          ; 0x6f27
    mov ax, 0x92                     ; 0x6f28
    push ax                          ; 0x6f2b
    mov ax, 0x37                     ; 0x6f2c
    push ax                          ; 0x6f2f
    call ds_dispatch_e928            ; 0x6f30
    add sp, byte 8                   ; 0x6f33
    mov word [data_8d10], dx         ; 0x6f36
    mov word [data_8d0e], ax         ; 0x6f3a
    call api_idx_000a_2              ; 0x6f3d
    mov word [data_9b4e], 0x44       ; 0x6f40
    mov word [data_9b4c], 0          ; 0x6f46
    mov byte [data_9b50], 0          ; 0x6f4c
@..local.l39:
    lea ax, word [bp - 0x0105]       ; 0x6f51
    push ax                          ; 0x6f55
    push word [bp + 0x4]             ; 0x6f56
    call ds_dispatch_b53b            ; 0x6f59
    add sp, byte 4                   ; 0x6f5c
    cmp word [data_5216], byte 0     ; 0x6f5f
    jne short @..local.l41           ; 0x6f64
    cmp word [data_9b48], byte 0     ; 0x6f66
    jne short @..local.l40           ; 0x6f6b
    lea ax, word [bp - 0x0105]       ; 0x6f6d
    push ax                          ; 0x6f71
    call api_idx_0004_9              ; 0x6f72
    pop cx                           ; 0x6f75
@..local.l40:
    inc word [bp + 0x4]              ; 0x6f76
@..local.l41:
    cmp word [data_5216], byte 0     ; 0x6f79
    je short @..local.l39            ; 0x6f7e
    cmp byte [data_9b50], 0          ; 0x6f80
    je short @..local.l42            ; 0x6f85
    mov ax, data_9b50                ; 0x6f87
    push ax                          ; 0x6f8a
    call api_idx_0004_8              ; 0x6f8b
    pop cx                           ; 0x6f8e
@..local.l42:
    push word [bp + 0x6]             ; 0x6f8f
    call math_loc_6b5a               ; 0x6f92
    pop cx                           ; 0x6f95
    mov ax, 1                        ; 0x6f96
    push ax                          ; 0x6f99
    push word [data_8d10]            ; 0x6f9a
    push word [data_8d0e]            ; 0x6f9e
    call ds_dispatch_e94f            ; 0x6fa2
    add sp, byte 6                   ; 0x6fa5
    mov ax, 0xc6                     ; 0x6fa8
    push ax                          ; 0x6fab
    mov ax, 0x109                    ; 0x6fac
    push ax                          ; 0x6faf
    mov ax, 0x92                     ; 0x6fb0
    push ax                          ; 0x6fb3
    mov ax, 0x37                     ; 0x6fb4
    push ax                          ; 0x6fb7
    call ds_dispatch_bb33            ; 0x6fb8
    add sp, byte 8                   ; 0x6fbb
    ret                              ; 0x6fbe
%include "vmaze/math_loc_6fbf.asm"

%include "vmaze/api_idx_0002_12.asm"

%include "vmaze/api_idx_001e_2.asm"

@..api_idx_001e_2.l14:
    mov bx, word [data_0e12]         ; 0x7212
    mov si, word [data_8f3e]         ; 0x7216
    mov al, byte [bx + si + 0xb40]   ; 0x721a
    sub ah, ah                       ; 0x721e
    mov word [data_8d12], ax         ; 0x7220
    mov word [data_9bd0], 0          ; 0x7223
@..api_idx_001e_2.l15:
    call loc_676c                    ; 0x7229
    inc word [bp - 0x0002]           ; 0x722c
@..api_idx_001e_2.l16:
    mov ax, word [bp - 0x0002]       ; 0x722f
    cmp ax, word [bp - 0x0010]       ; 0x7232
    jge short @..api_idx_001e_2.l17  ; 0x7235
    jmp near @..api_idx_001e_2.l5    ; 0x7237
@..api_idx_001e_2.l17:
    push word [bp - 0x001e]          ; 0x723a
    call api_idx_0006_2              ; 0x723d
    pop cx                           ; 0x7240
    ret                              ; 0x7241
loc_7242:
    mov ax, 0                        ; 0x7242
    call ds_dispatch_f40b            ; 0x7245
    cmp word [bp + 0x4], byte 0      ; 0x7248
    jle short @..local.l43           ; 0x724c
    mov bx, word [data_0e12]         ; 0x724e
    mov si, word [data_8d12]         ; 0x7252
    cmp byte [bx + si + 0x960], 0    ; 0x7256
    jbe short @..local.l43           ; 0x725b
    mov ax, 1                        ; 0x725d
    push ax                          ; 0x7260
    mov al, byte [bx + si + 0x960]   ; 0x7261
    sub ah, ah                       ; 0x7265
    push ax                          ; 0x7267
    mov ax, word [data_830c]         ; 0x7268
    mov cx, 4                        ; 0x726b
    shl ax, cl                       ; 0x726e
    add ax, 0x8d14                   ; 0x7270
    push ax                          ; 0x7273
    call ds_dispatch_ec41            ; 0x7274
    add sp, byte 6                   ; 0x7277
    cmp word [bp + 0x4], byte 1      ; 0x727a
    jle short @..local.l43           ; 0x727e
    mov ax, 1                        ; 0x7280
    push ax                          ; 0x7283
    mov bx, word [data_0e12]         ; 0x7284
    mov si, word [data_8d12]         ; 0x7288
    mov al, byte [bx + si + 0x960]   ; 0x728c
    sub ah, ah                       ; 0x7290
    push ax                          ; 0x7292
    mov ax, word [data_830c]         ; 0x7293
    mov cx, 4                        ; 0x7296
    shl ax, cl                       ; 0x7299
    add ax, 0x5642                   ; 0x729b
    push ax                          ; 0x729e
    call ds_dispatch_ec41            ; 0x729f
    add sp, byte 6                   ; 0x72a2
@..local.l43:
    ret                              ; 0x72a5
%include "vmaze/api_idx_0004_10.asm"

%include "vmaze/api_idx_0002_13.asm"

loc_7436:
    mov ax, 0                        ; 0x7436
    call ds_dispatch_f40b            ; 0x7439
    mov bx, word [data_0e12]         ; 0x743c
    mov si, word [data_8d12]         ; 0x7440
    mov al, byte [bx + si + 0xa50]   ; 0x7444
    sub ah, ah                       ; 0x7448
    mov word [data_91b0], ax         ; 0x744a
    ret                              ; 0x744d
%include "vmaze/api_idx_0004_11.asm"

@..api_idx_0004_11.l1:
    mov ax, word [data_8d12]         ; 0x7497
    shl ax, 1                        ; 0x749a
    mov si, ax                       ; 0x749c
    mov bx, word [data_0e12]         ; 0x749e
    cmp word [bx + si], byte 0       ; 0x74a2
    jle short @..api_idx_0004_11.l2  ; 0x74a5
    mov ax, 0                        ; 0x74a7
    push ax                          ; 0x74aa
    push word [bx + si]              ; 0x74ab
    call loc_6f14                    ; 0x74ad
    add sp, byte 4                   ; 0x74b0
@..api_idx_0004_11.l2:
    mov ax, 1                        ; 0x74b3
    push ax                          ; 0x74b6
    mov ax, 8                        ; 0x74b7
    push ax                          ; 0x74ba
    push word [bp - 0x0002]          ; 0x74bb
    call ds_dispatch_ed3a            ; 0x74be
    add sp, byte 6                   ; 0x74c1
    cmp ax, strict word 1            ; 0x74c4
    jne short @..api_idx_0004_11.l3  ; 0x74c7
    ret                              ; 0x74c9
@..api_idx_0004_11.l3:
    mov bx, word [data_0e12]         ; 0x74ca
    mov si, word [data_8d12]         ; 0x74ce
    mov al, byte [bx + si + 0xa50]   ; 0x74d2
    sub ah, ah                       ; 0x74d6
    mov word [data_84a0], ax         ; 0x74d8
    mov word [data_830a], 0x15       ; 0x74db
    ret                              ; 0x74e1
%include "vmaze/api_idx_0050_2.asm"

%include "vmaze/api_idx_0004_12.asm"

@..api_idx_0004_12.l3:
    inc word [bp - 0x0002]           ; 0x75a1
@..api_idx_0004_12.l4:
    mov ax, word [bp - 0x0002]       ; 0x75a4
    cmp ax, word [data_69c8]         ; 0x75a7
    jl short @..api_idx_0004_12.l2   ; 0x75ab
    ret                              ; 0x75ad
%include "vmaze/api_idx_0006_6.asm"

%include "vmaze/api_idx_001c.asm"

    pop cx                           ; 0x784d
    ret                              ; 0x784e
%include "vmaze/api_idx_000a_3.asm"

@..api_idx_000a_3.l2:
    mov ax, 8                        ; 0x78e1
    push ax                          ; 0x78e4
    mov ax, 0                        ; 0x78e5
    push ax                          ; 0x78e8
    push word [bp - 0x0002]          ; 0x78e9
    call ds_dispatch_ed3a            ; 0x78ec
    add sp, byte 6                   ; 0x78ef
    mov word [bp - 0x0004], ax       ; 0x78f2
    mov ax, 5                        ; 0x78f5
    push ax                          ; 0x78f8
    mov ax, 8                        ; 0x78f9
    push ax                          ; 0x78fc
    push word [bp - 0x0002]          ; 0x78fd
    call ds_dispatch_ed3a            ; 0x7900
    add sp, byte 6                   ; 0x7903
    mov word [bp - 0x0008], ax       ; 0x7906
    mov ax, 1                        ; 0x7909
    push ax                          ; 0x790c
    mov ax, 0xd                      ; 0x790d
    push ax                          ; 0x7910
    push word [bp - 0x0002]          ; 0x7911
    call ds_dispatch_ed3a            ; 0x7914
    add sp, byte 6                   ; 0x7917
    jmp short @..api_idx_000a_3.l5   ; 0x791a
@..api_idx_000a_3.l3:
    mov ax, 0                        ; 0x791c
    push ax                          ; 0x791f
    push word [bp - 0x0004]          ; 0x7920
    mov ax, word [bp - 0x0008]       ; 0x7923
    mov cx, 4                        ; 0x7926
    shl ax, cl                       ; 0x7929
    add ax, 0x8d14                   ; 0x792b
    push ax                          ; 0x792e
    call ds_dispatch_ec41            ; 0x792f
    add sp, byte 6                   ; 0x7932
    jmp short @..api_idx_000a_3.l6   ; 0x7935
@..api_idx_000a_3.l4:
    mov ax, 1                        ; 0x7937
    push ax                          ; 0x793a
    push word [bp - 0x0004]          ; 0x793b
    mov ax, word [bp - 0x0008]       ; 0x793e
    mov cx, 4                        ; 0x7941
    shl ax, cl                       ; 0x7944
    add ax, 0x8d14                   ; 0x7946
    push ax                          ; 0x7949
    call ds_dispatch_ec41            ; 0x794a
    add sp, byte 6                   ; 0x794d
    jmp short @..api_idx_000a_3.l6   ; 0x7950
@..api_idx_000a_3.l5:
    cmp ax, strict word 0            ; 0x7952
    je short @..api_idx_000a_3.l3    ; 0x7955
    cmp ax, strict word 1            ; 0x7957
    je short @..api_idx_000a_3.l4    ; 0x795a
@..api_idx_000a_3.l6:
    mov ax, 1                        ; 0x795c
    push ax                          ; 0x795f
    mov ax, api_idx_0002             ; 0x7960
    push ax                          ; 0x7963
    push word [bp - 0x0002]          ; 0x7964
    call ds_dispatch_ed3a            ; 0x7967
    add sp, byte 6                   ; 0x796a
    cmp ax, strict word 1            ; 0x796d
    jne short @..api_idx_000a_3.l7   ; 0x7970
    push word [bp - 0x0004]          ; 0x7972
    mov ax, word [bp - 0x0008]       ; 0x7975
    mov cx, 4                        ; 0x7978
    shl ax, cl                       ; 0x797b
    add ax, 0x8d14                   ; 0x797d
    push ax                          ; 0x7980
    call ds_dispatch_ec74            ; 0x7981
    add sp, byte 4                   ; 0x7984
    push ax                          ; 0x7987
    push word [bp - 0x0004]          ; 0x7988
    mov ax, word [bp - 0x0008]       ; 0x798b
    mov cx, 4                        ; 0x798e
    shl ax, cl                       ; 0x7991
    add ax, 0x5642                   ; 0x7993
    push ax                          ; 0x7996
    call ds_dispatch_ec41            ; 0x7997
    add sp, byte 6                   ; 0x799a
@..api_idx_000a_3.l7:
    ret                              ; 0x799d
%include "vmaze/api_idx_0004_13.asm"

@..api_idx_0004_13.l2:
    mov ax, 1                        ; 0x7a07
    push ax                          ; 0x7a0a
    mov ax, 2                        ; 0x7a0b
    push ax                          ; 0x7a0e
    push word [bp - 0x0002]          ; 0x7a0f
    call ds_dispatch_ed3a            ; 0x7a12
    add sp, byte 6                   ; 0x7a15
    push ax                          ; 0x7a18
    mov ax, word [data_8d12]         ; 0x7a19
    shl ax, 1                        ; 0x7a1c
    mov si, ax                       ; 0x7a1e
    mov bx, word [data_0e12]         ; 0x7a20
    push word [bx + si]              ; 0x7a24
    call loc_6f14                    ; 0x7a26
    add sp, byte 4                   ; 0x7a29
    push word [bp - 0x0004]          ; 0x7a2c
    call loc_7242                    ; 0x7a2f
    pop cx                           ; 0x7a32
    ret                              ; 0x7a33
loc_7a34:
    mov ax, 0                        ; 0x7a34
    call ds_dispatch_f40b            ; 0x7a37
    mov ax, 1                        ; 0x7a3a
    push ax                          ; 0x7a3d
    mov ax, 0                        ; 0x7a3e
    push ax                          ; 0x7a41
    mov ax, word [data_8d12]         ; 0x7a42
    shl ax, 1                        ; 0x7a45
    mov si, ax                       ; 0x7a47
    mov bx, word [data_0e12]         ; 0x7a49
    push word [bx + si + 0x3c0]      ; 0x7a4d
    call ds_dispatch_ed3a            ; 0x7a51
    add sp, byte 6                   ; 0x7a54
    cmp ax, strict word 1            ; 0x7a57
    jne short @..local.l44           ; 0x7a5a
    mov si, word [data_8d12]         ; 0x7a5c
    mov bx, word [data_0e12]         ; 0x7a60
    mov al, byte [bx + si + 0xa50]   ; 0x7a64
    sub ah, ah                       ; 0x7a68
    push ax                          ; 0x7a6a
    call api_idx_0006                ; 0x7a6b
    pop cx                           ; 0x7a6e
    mov bx, word [data_100a]         ; 0x7a6f
    mov word [bx], ax                ; 0x7a73
    jmp short @..local.l45           ; 0x7a75
@..local.l44:
    mov bx, word [data_0e12]         ; 0x7a77
    mov si, word [data_8d12]         ; 0x7a7b
    mov al, byte [bx + si + 0xa50]   ; 0x7a7f
    sub ah, ah                       ; 0x7a83
    mov bx, word [data_100a]         ; 0x7a85
    mov word [bx], ax                ; 0x7a89
@..local.l45:
    mov ax, 1                        ; 0x7a8b
    push ax                          ; 0x7a8e
    push ax                          ; 0x7a8f
    push ax                          ; 0x7a90
    call math_loc_0b14               ; 0x7a91
    add sp, byte 6                   ; 0x7a94
    mov ax, 2                        ; 0x7a97
    push ax                          ; 0x7a9a
    mov ax, 1                        ; 0x7a9b
    push ax                          ; 0x7a9e
    mov ax, word [data_8d12]         ; 0x7a9f
    shl ax, 1                        ; 0x7aa2
    mov si, ax                       ; 0x7aa4
    mov bx, word [data_0e12]         ; 0x7aa6
    push word [bx + si + 0x3c0]      ; 0x7aaa
    call ds_dispatch_ed3a            ; 0x7aae
    add sp, byte 6                   ; 0x7ab1
    push ax                          ; 0x7ab4
    call loc_7242                    ; 0x7ab5
    pop cx                           ; 0x7ab8
    inc word [data_8d12]             ; 0x7ab9
    ret                              ; 0x7abd
%include "vmaze/api_idx_0002_14.asm"

@..api_idx_0002_14.l1:
    mov bx, word [data_0e12]         ; 0x7b07
    mov si, word [data_8d12]         ; 0x7b0b
    mov al, byte [bx + si + 0xa50]   ; 0x7b0f
    sub ah, ah                       ; 0x7b13
    mov bx, word [data_100a]         ; 0x7b15
    mov word [bx], ax                ; 0x7b19
    mov ax, 1                        ; 0x7b1b
    push ax                          ; 0x7b1e
    mov ax, 3                        ; 0x7b1f
    push ax                          ; 0x7b22
    push word [bp - 0x0002]          ; 0x7b23
    call ds_dispatch_ed3a            ; 0x7b26
    add sp, byte 6                   ; 0x7b29
    cmp ax, strict word 1            ; 0x7b2c
    jne short @..api_idx_0002_14.l2  ; 0x7b2f
    mov ax, 0                        ; 0x7b31
    jmp short @..api_idx_0002_14.l3  ; 0x7b34
@..api_idx_0002_14.l2:
    mov ax, 1                        ; 0x7b36
@..api_idx_0002_14.l3:
    push ax                          ; 0x7b39
    mov ax, 0                        ; 0x7b3a
    push ax                          ; 0x7b3d
    mov ax, 1                        ; 0x7b3e
    push ax                          ; 0x7b41
    call math_loc_0b14               ; 0x7b42
    add sp, byte 6                   ; 0x7b45
    mov word [data_830a], 0x12       ; 0x7b48
    inc word [data_8d12]             ; 0x7b4e
    ret                              ; 0x7b52
%include "vmaze/api_idx_0018_2.asm"

%include "vmaze/math_loc_7cb4.asm"

%include "vmaze/api_idx_000a_4.asm"

%include "vmaze/api_idx_001e_3.asm"

    mov ax, 2                        ; 0x8045
    push ax                          ; 0x8048
    call loc_7242                    ; 0x8049
    pop cx                           ; 0x804c
@..api_idx_001e_3.l15:
    ret                              ; 0x804d
%include "vmaze/api_idx_000e_2.asm"

%include "vmaze/api_idx_0010_3.asm"

%include "vmaze/api_idx_0004_14.asm"

%include "vmaze/api_idx_000e_3.asm"

loc_8540:
    mov ax, 0                        ; 0x8540
    call ds_dispatch_f40b            ; 0x8543
    push word [bp + 0x4]             ; 0x8546
    mov ax, word [data_8d12]         ; 0x8549
    shl ax, 1                        ; 0x854c
    mov si, ax                       ; 0x854e
    mov bx, word [data_0e12]         ; 0x8550
    push word [bx + si + 0x1e0]      ; 0x8554
    push word [bx + si]              ; 0x8558
    call api_idx_0004_14             ; 0x855a
    add sp, byte 6                   ; 0x855d
    push word [bp + 0x6]             ; 0x8560
    call loc_7242                    ; 0x8563
    pop cx                           ; 0x8566
    ret                              ; 0x8567
%include "vmaze/api_idx_0012_3.asm"

%include "vmaze/math_loc_86a9.asm"

%include "vmaze/api_idx_0002_15.asm"

%include "vmaze/api_idx_000c_2.asm"

loc_8867:
    mov ax, 0                        ; 0x8867
    call ds_dispatch_f40b            ; 0x886a
    mov word [data_9b4a], 1          ; 0x886d
    mov word [data_8f24], 0xffff     ; 0x8873
@..local.l46:
    push word [data_8d12]            ; 0x8879
    push word [data_8f3e]            ; 0x887d
    push word [data_8f40]            ; 0x8881
    push word [data_8f42]            ; 0x8885
    call api_idx_0002_11             ; 0x8889
    add sp, byte 8                   ; 0x888c
    mov word [data_8d12], ax         ; 0x888f
    cmp ax, strict word 0xffff       ; 0x8892
    jne short @..local.l47           ; 0x8895
    jmp near @..local.l52            ; 0x8897
@..local.l47:
    mov word [data_9bd0], 1          ; 0x889a
    mov bx, word [data_0e12]         ; 0x88a0
    mov si, ax                       ; 0x88a4
    mov al, byte [bx + si + 0x5a0]   ; 0x88a6
    sub ah, ah                       ; 0x88aa
    jmp near @..local.l48            ; 0x88ac

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

@..local.l48:
    cmp ax, strict word 0x1a         ; 0x89ac
    jae short @..local.l49           ; 0x89af
    xchg bx, ax                      ; 0x89b1
    shl bx, 1                        ; 0x89b2
    jmp [cs:bx - 0x2641]             ; 0x89b4
@..local.l49:
    cmp word [data_830a], byte 5     ; 0x89b9
    je short @..local.l50            ; 0x89be
    ret                              ; 0x89c0
@..local.l50:
    cmp word [data_9bd0], byte 1     ; 0x89c1
    jne short @..local.l51           ; 0x89c6
    inc word [data_8d12]             ; 0x89c8
@..local.l51:
    jmp near @..local.l46            ; 0x89cc
@..local.l52:
    ret                              ; 0x89cf
%include "vmaze/api_idx_0002_16.asm"

%include "vmaze/api_idx_0002_17.asm"

%include "vmaze/api_idx_0006_7.asm"

@..api_idx_0006_7.l1:
    mov bx, word [data_0e12]         ; 0x8b9b
    mov si, word [bp + 0x4]          ; 0x8b9f
    mov al, byte [bx + si + 0xa50]   ; 0x8ba2
    sub ah, ah                       ; 0x8ba6
    push ax                          ; 0x8ba8
    call loc_6ac7                    ; 0x8ba9
    pop cx                           ; 0x8bac
    mov ax, 8                        ; 0x8bad
    push ax                          ; 0x8bb0
    mov ax, 0                        ; 0x8bb1
    push ax                          ; 0x8bb4
    push word [bp - 0x0002]          ; 0x8bb5
    call ds_dispatch_ed3a            ; 0x8bb8
    add sp, byte 6                   ; 0x8bbb
    mov word [bp - 0x0004], ax       ; 0x8bbe
    mov ax, 1                        ; 0x8bc1
    push ax                          ; 0x8bc4
    mov ax, 0xa                      ; 0x8bc5
    push ax                          ; 0x8bc8
    push word [bp - 0x0002]          ; 0x8bc9
    call ds_dispatch_ed3a            ; 0x8bcc
    add sp, byte 6                   ; 0x8bcf
    mov word [bp - 0x0006], ax       ; 0x8bd2
    push ax                          ; 0x8bd5
    push word [bp - 0x0004]          ; 0x8bd6
    mov ax, word [data_830c]         ; 0x8bd9
    mov cx, 4                        ; 0x8bdc
    shl ax, cl                       ; 0x8bdf
    add ax, 0x8d14                   ; 0x8be1
    push ax                          ; 0x8be4
    call ds_dispatch_ec41            ; 0x8be5
    add sp, byte 6                   ; 0x8be8
    mov ax, word [bp + 0x4]          ; 0x8beb
    shl ax, 1                        ; 0x8bee
    mov si, ax                       ; 0x8bf0
    mov bx, word [data_0e12]         ; 0x8bf2
    cmp word [bx + si + 0x1e0], byte 0 ; 0x8bf6
    jle short @..api_idx_0006_7.l2   ; 0x8bfb
    mov ax, 0                        ; 0x8bfd
    push ax                          ; 0x8c00
    push word [bx + si + 0x1e0]      ; 0x8c01
    mov ax, word [data_830c]         ; 0x8c05
    mov cx, 4                        ; 0x8c08
    shl ax, cl                       ; 0x8c0b
    add ax, 0x8d14                   ; 0x8c0d
    push ax                          ; 0x8c10
    call ds_dispatch_ec41            ; 0x8c11
    add sp, byte 6                   ; 0x8c14
@..api_idx_0006_7.l2:
    mov ax, word [bp + 0x4]          ; 0x8c17
    mov word [data_8d12], ax         ; 0x8c1a
    mov ax, 2                        ; 0x8c1d
    push ax                          ; 0x8c20
    mov ax, 8                        ; 0x8c21
    push ax                          ; 0x8c24
    push word [bp - 0x0002]          ; 0x8c25
    call ds_dispatch_ed3a            ; 0x8c28
    add sp, byte 6                   ; 0x8c2b
    mov word [bp - 0x0004], ax       ; 0x8c2e
    push ax                          ; 0x8c31
    call loc_7242                    ; 0x8c32
    pop cx                           ; 0x8c35
    mov ax, word [bp + 0x4]          ; 0x8c36
    inc ax                           ; 0x8c39
    mov word [data_8d12], ax         ; 0x8c3a
    mov word [data_91a8], 1          ; 0x8c3d
    mov ax, 1                        ; 0x8c43
    ret                              ; 0x8c46
%include "vmaze/api_idx_000a_5.asm"

@..api_idx_000a_5.l7:
    mov bx, word [data_0e12]         ; 0x8d3b
    mov si, word [bp - 0x0004]       ; 0x8d3f
    cmp byte [bx + si + 0x5a0], 8    ; 0x8d42
    jne short @..api_idx_000a_5.l8   ; 0x8d47
    push si                          ; 0x8d49
    call api_idx_0006_7              ; 0x8d4a
    pop cx                           ; 0x8d4d
    cmp ax, strict word 1            ; 0x8d4e
    jne short @..api_idx_000a_5.l8   ; 0x8d51
    ret                              ; 0x8d53
@..api_idx_000a_5.l8:
    mov bx, word [data_0e12]         ; 0x8d54
    mov si, word [bp - 0x0004]       ; 0x8d58
    cmp byte [bx + si + 0x5a0], 0x19 ; 0x8d5b
    jne short @..api_idx_000a_5.l9   ; 0x8d60
    mov al, byte [bx + si + 0xa50]   ; 0x8d62
    sub ah, ah                       ; 0x8d66
    mov word [data_8f24], ax         ; 0x8d68
    cmp ax, word [data_82ee]         ; 0x8d6b
    jne short @..api_idx_000a_5.l9   ; 0x8d6f
    mov word [data_830a], 0x1b       ; 0x8d71
    mov word [data_8d12], si         ; 0x8d77
    ret                              ; 0x8d7b
@..api_idx_000a_5.l9:
    inc word [bp - 0x0004]           ; 0x8d7c
    jmp near @..api_idx_000a_5.l5    ; 0x8d7f
@..api_idx_000a_5.l10:
    cmp word [bp - 0x000a], byte 2   ; 0x8d82
    jne short @..api_idx_000a_5.l11  ; 0x8d86
    mov ax, 0x7fb                    ; 0x8d88
    push ax                          ; 0x8d8b
    call api_idx_0050                ; 0x8d8c
    pop cx                           ; 0x8d8f
    push word [data_905a]            ; 0x8d90
    call api_idx_0006_2              ; 0x8d94
    pop cx                           ; 0x8d97
    mov ax, 0x98                     ; 0x8d98
    push ax                          ; 0x8d9b
    mov ax, 0x13f                    ; 0x8d9c
    push ax                          ; 0x8d9f
    mov ax, 0x92                     ; 0x8da0
    push ax                          ; 0x8da3
    mov ax, 0                        ; 0x8da4
    push ax                          ; 0x8da7
    call ds_dispatch_e8da            ; 0x8da8
    add sp, byte 8                   ; 0x8dab
@..api_idx_000a_5.l11:
    cmp word [bp - 0x000a], byte 0   ; 0x8dae
    je short @..api_idx_000a_5.l12   ; 0x8db2
    mov ax, 0x7fd                    ; 0x8db4
    push ax                          ; 0x8db7
    call api_idx_0050                ; 0x8db8
    pop cx                           ; 0x8dbb
    mov ax, 0                        ; 0x8dbc
    push ax                          ; 0x8dbf
    call ds_dispatch_b7e0            ; 0x8dc0
    pop cx                           ; 0x8dc3
    mov ax, word [data_905a]         ; 0x8dc4
    mov cx, 2                        ; 0x8dc7
    cwd                              ; 0x8dca
    idiv cx                          ; 0x8dcb
    push ax                          ; 0x8dcd
    call api_idx_0006_2              ; 0x8dce
    pop cx                           ; 0x8dd1
@..api_idx_000a_5.l12:
    mov ax, 0x98                     ; 0x8dd2
    push ax                          ; 0x8dd5
    mov ax, 0x13f                    ; 0x8dd6
    push ax                          ; 0x8dd9
    mov ax, 0x92                     ; 0x8dda
    push ax                          ; 0x8ddd
    mov ax, 0                        ; 0x8dde
    push ax                          ; 0x8de1
    call ds_dispatch_e8da            ; 0x8de2
    add sp, byte 8                   ; 0x8de5
    ret                              ; 0x8de8
%include "vmaze/api_idx_0002_18.asm"

@..api_idx_0002_18.l1:
    mov ax, 1                        ; 0x8e32
    push ax                          ; 0x8e35
    mov ax, 8                        ; 0x8e36
    push ax                          ; 0x8e39
    push word [bp - 0x0002]          ; 0x8e3a
    call ds_dispatch_ed3a            ; 0x8e3d
    add sp, byte 6                   ; 0x8e40
    test ax, ax                      ; 0x8e43
    jne short @..api_idx_0002_18.l2  ; 0x8e45
    mov ax, 0                        ; 0x8e47
    ret                              ; 0x8e4a
@..api_idx_0002_18.l2:
    mov ax, word [bp + 0x4]          ; 0x8e4b
    mov word [data_8d12], ax         ; 0x8e4e
    mov bx, word [data_0e12]         ; 0x8e51
    mov si, ax                       ; 0x8e55
    mov al, byte [bx + si + 0xa50]   ; 0x8e57
    sub ah, ah                       ; 0x8e5b
    mov word [data_84a0], ax         ; 0x8e5d
    mov word [data_830a], 0x15       ; 0x8e60
    mov ax, 1                        ; 0x8e66
    ret                              ; 0x8e69
%include "vmaze/api_idx_0002_19.asm"

@..api_idx_0002_19.l3:
    mov bx, word [data_0e12]         ; 0x8eb9
    mov si, word [bp - 0x0002]       ; 0x8ebd
    cmp byte [bx + si + 0x5a0], 7    ; 0x8ec0
    jne short @..api_idx_0002_19.l5  ; 0x8ec5
    mov ax, 2                        ; 0x8ec7
    push ax                          ; 0x8eca
    mov ax, word [data_82ee]         ; 0x8ecb
    shl ax, 1                        ; 0x8ece
    push ax                          ; 0x8ed0
    shl si, 1                        ; 0x8ed1
    push word [bx + si + 0x3c0]      ; 0x8ed3
    call ds_dispatch_ed3a            ; 0x8ed7
    add sp, byte 6                   ; 0x8eda
    cmp ax, strict word 1            ; 0x8edd
    je short @..api_idx_0002_19.l4   ; 0x8ee0
    mov ax, 2                        ; 0x8ee2
    push ax                          ; 0x8ee5
    mov ax, word [data_82ee]         ; 0x8ee6
    shl ax, 1                        ; 0x8ee9
    push ax                          ; 0x8eeb
    mov ax, word [bp - 0x0002]       ; 0x8eec
    shl ax, 1                        ; 0x8eef
    mov si, ax                       ; 0x8ef1
    mov bx, word [data_0e12]         ; 0x8ef3
    push word [bx + si + 0x3c0]      ; 0x8ef7
    call ds_dispatch_ed3a            ; 0x8efb
    add sp, byte 6                   ; 0x8efe
    cmp ax, strict word 2            ; 0x8f01
    jne short @..api_idx_0002_19.l5  ; 0x8f04
@..api_idx_0002_19.l4:
    mov ax, word [bp - 0x0002]       ; 0x8f06
    mov word [data_84a0], ax         ; 0x8f09
    mov word [data_830a], 0x1a       ; 0x8f0c
    ret                              ; 0x8f12
@..api_idx_0002_19.l5:
    inc word [bp - 0x0002]           ; 0x8f13
    jmp near @..api_idx_0002_19.l1   ; 0x8f16
@..api_idx_0002_19.l6:
    ret                              ; 0x8f19
%include "vmaze/api_idx_0002_20.asm"

@..api_idx_0002_20.l4:
    inc word [bp - 0x0002]           ; 0x8f8e
    jmp short @..api_idx_0002_20.l1  ; 0x8f91
@..api_idx_0002_20.l5:
    ret                              ; 0x8f93
%include "vmaze/api_idx_0002_21.asm"

@..api_idx_0002_21.l5:
    mov ax, 1                        ; 0x9013
    ret                              ; 0x9016
@..api_idx_0002_21.l6:
    inc word [bp - 0x0002]           ; 0x9017
    mov ax, word [bp - 0x0002]       ; 0x901a
    cmp ax, strict word 0x20         ; 0x901d
    jge short @..api_idx_0002_21.l7  ; 0x9020
    jmp near @..api_idx_0002_21.l1   ; 0x9022
@..api_idx_0002_21.l7:
    mov ax, 0                        ; 0x9025
    ret                              ; 0x9028
%include "vmaze/api_idx_0048.asm"

@..api_idx_0048.l1:
    cmp word [bp + 0x8], byte 0      ; 0x9043
    jne short @..api_idx_0048.l2     ; 0x9047
    mov ax, 0                        ; 0x9049
    ret                              ; 0x904c
@..api_idx_0048.l2:
    mov ax, 1                        ; 0x904d
    mov cx, word [bp + 0xa]          ; 0x9050
    cmp cx, word [data_9c00]         ; 0x9053
    jge short @..api_idx_0048.l3     ; 0x9057
    mov ax, 2                        ; 0x9059
@..api_idx_0048.l3:
    mov word [bp - 0x0008], ax       ; 0x905c
    mov word [bp - 0x0004], 0        ; 0x905f
    jmp near @..api_idx_0048.l20     ; 0x9064
@..api_idx_0048.l4:
    mov word [bp - 0x0002], 0        ; 0x9067
@..api_idx_0048.l5:
    mov ax, word [bp - 0x0002]       ; 0x906c
    shl ax, 1                        ; 0x906f
    shl ax, 1                        ; 0x9071
    mov bx, ax                       ; 0x9073
    mov al, byte [bx - 0x7592]       ; 0x9075
    sub ah, ah                       ; 0x9079
    cmp ax, word [bp + 0x4]          ; 0x907b
    je short @..api_idx_0048.l6      ; 0x907e
    jmp near @..api_idx_0048.l12     ; 0x9080
@..api_idx_0048.l6:
    cmp byte [bx - 0x7590], 0xff     ; 0x9083
    je short @..api_idx_0048.l7      ; 0x9088
    mov al, byte [bx - 0x7590]       ; 0x908a
    cbw                              ; 0x908e
    shl ax, 1                        ; 0x908f
    mov bx, ax                       ; 0x9091
    cmp word [bx - 0x642e], byte 0   ; 0x9093
    jne short @..api_idx_0048.l7     ; 0x9098
    jmp near @..api_idx_0048.l12     ; 0x909a
@..api_idx_0048.l7:
    mov ax, word [bp - 0x0002]       ; 0x909d
    shl ax, 1                        ; 0x90a0
    mov bx, ax                       ; 0x90a2
    cmp word [bx - 0x63fe], byte 0   ; 0x90a4
    je short @..api_idx_0048.l8      ; 0x90a9
    jmp near @..api_idx_0048.l11     ; 0x90ab
@..api_idx_0048.l8:
    cmp word [bp - 0x0004], byte 0   ; 0x90ae
    je short @..api_idx_0048.l9      ; 0x90b2
    mov word [bx - 0x63fe], 1        ; 0x90b4
@..api_idx_0048.l9:
    mov ax, word [data_9be6]         ; 0x90ba
    mov word [bp - 0x0006], ax       ; 0x90bd
    mov ax, 0x40                     ; 0x90c0
    push ax                          ; 0x90c3
    lea ax, word [bp - 0x0048]       ; 0x90c4
    push ax                          ; 0x90c7
    mov ax, 0x9c02                   ; 0x90c8
    push ax                          ; 0x90cb
    call ds_dispatch_fedc            ; 0x90cc
    add sp, byte 6                   ; 0x90cf
    mov ax, word [bp + 0xa]          ; 0x90d2
    inc ax                           ; 0x90d5
    push ax                          ; 0x90d6
    push word [bp - 0x0004]          ; 0x90d7
    push word [bp + 0x6]             ; 0x90da
    mov ax, word [bp - 0x0002]       ; 0x90dd
    shl ax, 1                        ; 0x90e0
    shl ax, 1                        ; 0x90e2
    mov bx, ax                       ; 0x90e4
    mov al, byte [bx - 0x7591]       ; 0x90e6
    sub ah, ah                       ; 0x90ea
    push ax                          ; 0x90ec
    call api_idx_0048                ; 0x90ed
    add sp, byte 8                   ; 0x90f0
    test ax, ax                      ; 0x90f3
    je short @..api_idx_0048.l10     ; 0x90f5
    mov ax, word [bp - 0x0002]       ; 0x90f7
    shl ax, 1                        ; 0x90fa
    shl ax, 1                        ; 0x90fc
    mov bx, ax                       ; 0x90fe
    mov al, byte [bx - 0x7591]       ; 0x9100
    sub ah, ah                       ; 0x9104
    push ax                          ; 0x9106
    push word [bp + 0x4]             ; 0x9107
    call api_idx_0002_21             ; 0x910a
    add sp, byte 4                   ; 0x910d
    mov ax, 1                        ; 0x9110
    ret                              ; 0x9113
@..api_idx_0048.l10:
    mov ax, word [bp - 0x0006]       ; 0x9114
    mov word [data_9be6], ax         ; 0x9117
    mov ax, 0x40                     ; 0x911a
    push ax                          ; 0x911d
    mov ax, 0x9c02                   ; 0x911e
    push ax                          ; 0x9121
    lea ax, word [bp - 0x0048]       ; 0x9122
    push ax                          ; 0x9125
    call ds_dispatch_fedc            ; 0x9126
    add sp, byte 6                   ; 0x9129
@..api_idx_0048.l11:
    jmp near @..api_idx_0048.l18     ; 0x912c
@..api_idx_0048.l12:
    mov ax, word [bp - 0x0002]       ; 0x912f
    shl ax, 1                        ; 0x9132
    shl ax, 1                        ; 0x9134
    mov bx, ax                       ; 0x9136
    mov al, byte [bx - 0x7591]       ; 0x9138
    sub ah, ah                       ; 0x913c
    cmp ax, word [bp + 0x4]          ; 0x913e
    je short @..api_idx_0048.l13     ; 0x9141
    jmp near @..api_idx_0048.l18     ; 0x9143
@..api_idx_0048.l13:
    cmp byte [bx - 0x7590], 0xff     ; 0x9146
    je short @..api_idx_0048.l14     ; 0x914b
    mov al, byte [bx - 0x7590]       ; 0x914d
    cbw                              ; 0x9151
    shl ax, 1                        ; 0x9152
    mov bx, ax                       ; 0x9154
    cmp word [bx - 0x642e], byte 0   ; 0x9156
    jne short @..api_idx_0048.l14    ; 0x915b
    jmp near @..api_idx_0048.l18     ; 0x915d
@..api_idx_0048.l14:
    mov ax, word [bp - 0x0002]       ; 0x9160
    shl ax, 1                        ; 0x9163
    mov bx, ax                       ; 0x9165
    cmp word [bx - 0x63fe], byte 0   ; 0x9167
    je short @..api_idx_0048.l15     ; 0x916c
    jmp near @..api_idx_0048.l18     ; 0x916e
@..api_idx_0048.l15:
    cmp word [bp - 0x0004], byte 0   ; 0x9171
    je short @..api_idx_0048.l16     ; 0x9175
    mov word [bx - 0x63fe], 1        ; 0x9177
@..api_idx_0048.l16:
    mov ax, word [data_9be6]         ; 0x917d
    mov word [bp - 0x0006], ax       ; 0x9180
    mov ax, 0x40                     ; 0x9183
    push ax                          ; 0x9186
    lea ax, word [bp - 0x0048]       ; 0x9187
    push ax                          ; 0x918a
    mov ax, 0x9c02                   ; 0x918b
    push ax                          ; 0x918e
    call ds_dispatch_fedc            ; 0x918f
    add sp, byte 6                   ; 0x9192
    mov ax, word [bp + 0xa]          ; 0x9195
    inc ax                           ; 0x9198
    push ax                          ; 0x9199
    push word [bp - 0x0004]          ; 0x919a
    push word [bp + 0x6]             ; 0x919d
    mov ax, word [bp - 0x0002]       ; 0x91a0
    shl ax, 1                        ; 0x91a3
    shl ax, 1                        ; 0x91a5
    mov bx, ax                       ; 0x91a7
    mov al, byte [bx - 0x7592]       ; 0x91a9
    sub ah, ah                       ; 0x91ad
    push ax                          ; 0x91af
    call api_idx_0048                ; 0x91b0
    add sp, byte 8                   ; 0x91b3
    test ax, ax                      ; 0x91b6
    je short @..api_idx_0048.l17     ; 0x91b8
    mov ax, word [bp - 0x0002]       ; 0x91ba
    shl ax, 1                        ; 0x91bd
    shl ax, 1                        ; 0x91bf
    mov bx, ax                       ; 0x91c1
    mov al, byte [bx - 0x7592]       ; 0x91c3
    sub ah, ah                       ; 0x91c7
    push ax                          ; 0x91c9
    push word [bp + 0x4]             ; 0x91ca
    call api_idx_0002_21             ; 0x91cd
    add sp, byte 4                   ; 0x91d0
    mov ax, 1                        ; 0x91d3
    ret                              ; 0x91d6
@..api_idx_0048.l17:
    mov ax, word [bp - 0x0006]       ; 0x91d7
    mov word [data_9be6], ax         ; 0x91da
    mov ax, 0x40                     ; 0x91dd
    push ax                          ; 0x91e0
    mov ax, 0x9c02                   ; 0x91e1
    push ax                          ; 0x91e4
    lea ax, word [bp - 0x0048]       ; 0x91e5
    push ax                          ; 0x91e8
    call ds_dispatch_fedc            ; 0x91e9
    add sp, byte 6                   ; 0x91ec
@..api_idx_0048.l18:
    inc word [bp - 0x0002]           ; 0x91ef
    mov ax, word [bp - 0x0002]       ; 0x91f2
    cmp ax, strict word 0x20         ; 0x91f5
    jge short @..api_idx_0048.l19    ; 0x91f8
    jmp near @..api_idx_0048.l5      ; 0x91fa
@..api_idx_0048.l19:
    inc word [bp - 0x0004]           ; 0x91fd
@..api_idx_0048.l20:
    mov ax, word [bp - 0x0004]       ; 0x9200
    cmp ax, word [bp - 0x0008]       ; 0x9203
    jge short @..api_idx_0048.l21    ; 0x9206
    jmp near @..api_idx_0048.l4      ; 0x9208
@..api_idx_0048.l21:
    mov ax, 0                        ; 0x920b
    ret                              ; 0x920e
%include "vmaze/api_idx_0006_8.asm"

@..api_idx_0006_8.l9:
    mov word [data_9c00], 0          ; 0x9313
@..api_idx_0006_8.l10:
    mov word [data_9be6], 0          ; 0x9319
    mov ax, 0                        ; 0x931f
    push ax                          ; 0x9322
    mov ax, 0x40                     ; 0x9323
    push ax                          ; 0x9326
    mov ax, 0x9c02                   ; 0x9327
    push ax                          ; 0x932a
    call ds_dispatch_f306            ; 0x932b
    add sp, byte 6                   ; 0x932e
    inc word [data_9c00]             ; 0x9331
    mov ax, 0                        ; 0x9335
    push ax                          ; 0x9338
    mov ax, 1                        ; 0x9339
    push ax                          ; 0x933c
    push word [bp + 0x8]             ; 0x933d
    push word [bp + 0x6]             ; 0x9340
    call api_idx_0048                ; 0x9343
    add sp, byte 8                   ; 0x9346
    test ax, ax                      ; 0x9349
    jne short @..api_idx_0006_8.l11  ; 0x934b
    cmp word [data_9c00], byte 0x14  ; 0x934d
    jl short @..api_idx_0006_8.l10   ; 0x9352
@..api_idx_0006_8.l11:
    cmp word [data_9c00], byte 0x14  ; 0x9354
    jl short @..api_idx_0006_8.l12   ; 0x9359
    mov ax, 0                        ; 0x935b
    ret                              ; 0x935e
@..api_idx_0006_8.l12:
    mov word [bp - 0x0002], 0        ; 0x935f
    jmp short @..api_idx_0006_8.l14  ; 0x9364
@..api_idx_0006_8.l13:
    mov ax, word [bp - 0x0002]       ; 0x9366
    shl ax, 1                        ; 0x9369
    mov bx, ax                       ; 0x936b
    mov al, byte [bx - 0x6418]       ; 0x936d
    push ax                          ; 0x9371
    mov ax, 0x26                     ; 0x9372
    imul word [bp + 0x4]             ; 0x9375
    mov cx, ax                       ; 0x9378
    add ax, word [bp - 0x0002]       ; 0x937a
    mov bx, ax                       ; 0x937d
    pop ax                           ; 0x937f
    mov byte [bx - 0x7b10], al       ; 0x9380
    inc word [bp - 0x0002]           ; 0x9384
@..api_idx_0006_8.l14:
    mov ax, word [bp - 0x0002]       ; 0x9387
    cmp ax, word [data_9be6]         ; 0x938a
    jl short @..api_idx_0006_8.l13   ; 0x938e
    mov ax, word [data_9be6]         ; 0x9390
    dec ax                           ; 0x9393
    push ax                          ; 0x9394
    mov ax, 0x26                     ; 0x9395
    imul word [bp + 0x4]             ; 0x9398
    mov bx, ax                       ; 0x939b
    pop ax                           ; 0x939d
    mov byte [bx - 0x7b11], al       ; 0x939e
    mov byte [bx - 0x7b13], 0        ; 0x93a2
    mov ax, 1                        ; 0x93a7
    ret                              ; 0x93aa
%include "vmaze/api_idx_0002_22.asm"

@..api_idx_0002_22.l2:
    inc word [bp - 0x0002]           ; 0x93e9
    mov ax, word [bp - 0x0002]       ; 0x93ec
    cmp ax, strict word 5            ; 0x93ef
    jl short @..api_idx_0002_22.l1   ; 0x93f2
    mov al, byte [bp + 0x6]          ; 0x93f4
    push ax                          ; 0x93f7
    mov ax, 0xf                      ; 0x93f8
    imul word [bp + 0x4]             ; 0x93fb
    mov cx, ax                       ; 0x93fe
    mov ax, 0x26                     ; 0x9400
    imul word [bp + 0x4]             ; 0x9403
    mov bx, ax                       ; 0x9406
    mov al, byte [bx - 0x7b02]       ; 0x9408
    sub ah, ah                       ; 0x940c
    mov dx, 3                        ; 0x940e
    imul dx                          ; 0x9411
    mov dx, ax                       ; 0x9413
    add cx, ax                       ; 0x9415
    mov bx, cx                       ; 0x9417
    pop ax                           ; 0x9419
    mov byte [bx - 0x77d4], al       ; 0x941a
    mov al, byte [bp + 0x8]          ; 0x941e
    mov byte [bx - 0x77d3], al       ; 0x9421
    mov al, byte [bp + 0xa]          ; 0x9425
    mov byte [bx - 0x77d2], al       ; 0x9428
    mov ax, 0x26                     ; 0x942c
    imul word [bp + 0x4]             ; 0x942f
    mov bx, ax                       ; 0x9432
    mov al, byte [bx - 0x7b02]       ; 0x9434
    sub ah, ah                       ; 0x9438
    inc ax                           ; 0x943a
    mov cx, 5                        ; 0x943b
    cwd                              ; 0x943e
    idiv cx                          ; 0x943f
    mov ax, dx                       ; 0x9441
    mov byte [bx - 0x7b02], al       ; 0x9443
    ret                              ; 0x9447
%include "vmaze/math_loc_9448.asm"

%include "vmaze/math_loc_946a.asm"

%include "vmaze/math_loc_94a6.asm"

@..math_loc_94a6.l1:
    mov ax, 0                        ; 0x94eb
    ret                              ; 0x94ee
%include "vmaze/api_idx_003a.asm"

@..api_idx_003a.l6:
    mov ax, 0x1a                     ; 0x95b7
    push ax                          ; 0x95ba
    call ds_dispatch_b7a9            ; 0x95bb
    pop cx                           ; 0x95be
    mov word [bp - 0x0002], ax       ; 0x95bf
    shl ax, 1                        ; 0x95c2
    shl ax, 1                        ; 0x95c4
    mov bx, ax                       ; 0x95c6
    mov al, byte [bx - 0x768a]       ; 0x95c8
    sub ah, ah                       ; 0x95cc
    mov word [bp - 0x0004], ax       ; 0x95ce
    mov ax, 0                        ; 0x95d1
    cmp word [bp - 0x0004], byte 0   ; 0x95d4
    jle short @..api_idx_003a.l7     ; 0x95d8
    mov ax, 0x26                     ; 0x95da
    imul word [bp + 0x4]             ; 0x95dd
    mov bx, ax                       ; 0x95e0
    mov al, byte [bx - 0x7b18]       ; 0x95e2
    sub ah, ah                       ; 0x95e6
    mov cx, 0xc                      ; 0x95e8
    imul cx                          ; 0x95eb
    add ax, word [bp - 0x0004]       ; 0x95ed
    mov bx, ax                       ; 0x95f0
    mov al, byte [bx - 0x7622]       ; 0x95f2
    cbw                              ; 0x95f6
@..api_idx_003a.l7:
    mov word [bp - 0x0006], ax       ; 0x95f7
    mov ax, word [bp - 0x0002]       ; 0x95fa
    shl ax, 1                        ; 0x95fd
    mov bx, ax                       ; 0x95ff
    add bx, bp                       ; 0x9601
    cmp word [bx - 0x003a], byte 0   ; 0x9603
    je short @..api_idx_003a.l6      ; 0x9607
    mov ax, 0x64                     ; 0x9609
    push ax                          ; 0x960c
    call ds_dispatch_b7a9            ; 0x960d
    pop cx                           ; 0x9610
    add ax, word [bp - 0x0006]       ; 0x9611
    cmp ax, strict word 0xffdd       ; 0x9614
    jl short @..api_idx_003a.l6      ; 0x9617
    mov ax, 4                        ; 0x9619
    push ax                          ; 0x961c
    call ds_dispatch_b7a9            ; 0x961d
    pop cx                           ; 0x9620
    test ax, ax                      ; 0x9621
    je short @..api_idx_003a.l8      ; 0x9623
    push word [bp - 0x0002]          ; 0x9625
    mov ax, 0x26                     ; 0x9628
    imul word [bp + 0x4]             ; 0x962b
    add ax, 0x8506                   ; 0x962e
    push ax                          ; 0x9631
    call ds_dispatch_ec74            ; 0x9632
    add sp, byte 4                   ; 0x9635
    test ax, ax                      ; 0x9638
    je short @..api_idx_003a.l8      ; 0x963a
    jmp near @..api_idx_003a.l6      ; 0x963c
@..api_idx_003a.l8:
    mov al, byte [bp - 0x0002]       ; 0x963f
    push ax                          ; 0x9642
    mov ax, 0x26                     ; 0x9643
    imul word [bp + 0x4]             ; 0x9646
    mov bx, ax                       ; 0x9649
    pop ax                           ; 0x964b
    mov byte [bx - 0x7b15], al       ; 0x964c
    push word [bp + 0x4]             ; 0x9650
    call math_loc_946a               ; 0x9653
    pop cx                           ; 0x9656
    ret                              ; 0x9657
%include "vmaze/math_loc_9658.asm"

%include "vmaze/api_idx_0004_15.asm"

@..api_idx_0004_15.l1:
    push word [bp + 0x4]             ; 0x9746
    call math_loc_94a6               ; 0x9749
    pop cx                           ; 0x974c
    test ax, ax                      ; 0x974d
    je short @..api_idx_0004_15.l2   ; 0x974f
    ret                              ; 0x9751
@..api_idx_0004_15.l2:
    mov word [bp - 0x0002], 0        ; 0x9752
@..api_idx_0004_15.l3:
    push word [bp - 0x0002]          ; 0x9757
    mov ax, 0x26                     ; 0x975a
    imul word [bp + 0x4]             ; 0x975d
    add ax, 0x850a                   ; 0x9760
    push ax                          ; 0x9763
    call ds_dispatch_ec74            ; 0x9764
    add sp, byte 4                   ; 0x9767
    test ax, ax                      ; 0x976a
    je short @..api_idx_0004_15.l6   ; 0x976c
    mov ax, word [bp - 0x0002]       ; 0x976e
    add ax, strict word 0xc          ; 0x9771
    push ax                          ; 0x9774
    mov ax, 0x26                     ; 0x9775
    imul word [bp + 0x4]             ; 0x9778
    add ax, 0x850a                   ; 0x977b
    push ax                          ; 0x977e
    call ds_dispatch_ec74            ; 0x977f
    add sp, byte 4                   ; 0x9782
    test ax, ax                      ; 0x9785
    jne short @..api_idx_0004_15.l5  ; 0x9787
    mov ax, 6                        ; 0x9789
    imul word [bp - 0x0002]          ; 0x978c
    mov bx, ax                       ; 0x978f
    mov al, byte [bx - 0x7b58]       ; 0x9791
    sub ah, ah                       ; 0x9795
    mov word [bp - 0x0004], ax       ; 0x9797
    push ax                          ; 0x979a
    push word [bp + 0x4]             ; 0x979b
    call math_loc_9448               ; 0x979e
    add sp, byte 4                   ; 0x97a1
    test ax, ax                      ; 0x97a4
    je short @..api_idx_0004_15.l4   ; 0x97a6
    mov al, byte [bp - 0x0002]       ; 0x97a8
    push ax                          ; 0x97ab
    mov ax, 0x26                     ; 0x97ac
    imul word [bp + 0x4]             ; 0x97af
    mov bx, ax                       ; 0x97b2
    pop ax                           ; 0x97b4
    mov byte [bx - 0x7b12], al       ; 0x97b5
    mov byte [bx - 0x7b16], 4        ; 0x97b9
    mov byte [bx - 0x7b13], 0        ; 0x97be
    ret                              ; 0x97c3
@..api_idx_0004_15.l4:
    mov al, byte [bp - 0x0004]       ; 0x97c4
    push ax                          ; 0x97c7
    mov ax, 0x26                     ; 0x97c8
    imul word [bp + 0x4]             ; 0x97cb
    mov bx, ax                       ; 0x97ce
    pop ax                           ; 0x97d0
    mov byte [bx - 0x7b15], al       ; 0x97d1
    push word [bp + 0x4]             ; 0x97d5
    call math_loc_946a               ; 0x97d8
    pop cx                           ; 0x97db
    ret                              ; 0x97dc
@..api_idx_0004_15.l5:
    jmp near @..api_idx_0004_15.l12  ; 0x97dd
@..api_idx_0004_15.l6:
    push word [bp - 0x0002]          ; 0x97e0
    mov ax, 0x26                     ; 0x97e3
    imul word [bp + 0x4]             ; 0x97e6
    add ax, 0x8504                   ; 0x97e9
    push ax                          ; 0x97ec
    call ds_dispatch_ec74            ; 0x97ed
    add sp, byte 4                   ; 0x97f0
    test ax, ax                      ; 0x97f3
    jne short @..api_idx_0004_15.l7  ; 0x97f5
    jmp near @..api_idx_0004_15.l11  ; 0x97f7
@..api_idx_0004_15.l7:
    mov ax, 6                        ; 0x97fa
    imul word [bp - 0x0002]          ; 0x97fd
    mov bx, ax                       ; 0x9800
    cmp byte [bx - 0x7b59], 1        ; 0x9802
    jne short @..api_idx_0004_15.l8  ; 0x9807
    mov al, byte [bx - 0x7b5a]       ; 0x9809
    push ax                          ; 0x980d
    mov ax, 0x26                     ; 0x980e
    imul word [bp + 0x4]             ; 0x9811
    mov bx, ax                       ; 0x9814
    pop ax                           ; 0x9816
    mov byte [bx - 0x7b15], al       ; 0x9817
    push word [bp + 0x4]             ; 0x981b
    call math_loc_946a               ; 0x981e
    pop cx                           ; 0x9821
    jmp near @..api_idx_0004_15.l10  ; 0x9822
@..api_idx_0004_15.l8:
    mov ax, 6                        ; 0x9825
    imul word [bp - 0x0002]          ; 0x9828
    mov bx, ax                       ; 0x982b
    cmp byte [bx - 0x7b59], 0        ; 0x982d
    jne short @..api_idx_0004_15.l10 ; 0x9832
    mov al, byte [bx - 0x7b5a]       ; 0x9834
    sub ah, ah                       ; 0x9838
    mov cx, 0x26                     ; 0x983a
    imul cx                          ; 0x983d
    mov bx, ax                       ; 0x983f
    mov al, byte [bx - 0x7b15]       ; 0x9841
    push ax                          ; 0x9845
    mov ax, word [bp + 0x4]          ; 0x9846
    imul cx                          ; 0x9849
    mov bx, ax                       ; 0x984b
    pop ax                           ; 0x984d
    mov byte [bx - 0x7b15], al       ; 0x984e
    mov ax, 6                        ; 0x9852
    imul word [bp - 0x0002]          ; 0x9855
    mov bx, ax                       ; 0x9858
    mov al, byte [bx - 0x7b5a]       ; 0x985a
    push ax                          ; 0x985e
    mov ax, word [bp + 0x4]          ; 0x985f
    imul cx                          ; 0x9862
    mov bx, ax                       ; 0x9864
    pop ax                           ; 0x9866
    mov byte [bx - 0x7b12], al       ; 0x9867
    push word [bp + 0x4]             ; 0x986b
    call math_loc_946a               ; 0x986e
    pop cx                           ; 0x9871
    mov ax, 0x26                     ; 0x9872
    imul word [bp + 0x4]             ; 0x9875
    mov bx, ax                       ; 0x9878
    cmp byte [bx - 0x7b16], 0        ; 0x987a
    jne short @..api_idx_0004_15.l9  ; 0x987f
    push word [bp + 0x4]             ; 0x9881
    call api_idx_003a                ; 0x9884
    pop cx                           ; 0x9887
    ret                              ; 0x9888
@..api_idx_0004_15.l9:
    mov ax, 0x26                     ; 0x9889
    imul word [bp + 0x4]             ; 0x988c
    mov bx, ax                       ; 0x988f
    mov byte [bx - 0x7b16], 5        ; 0x9891
    mov al, byte [bx - 0x7b12]       ; 0x9896
    sub ah, ah                       ; 0x989a
    push ax                          ; 0x989c
    mov ax, 0xa                      ; 0x989d
    push ax                          ; 0x98a0
    push word [bp - 0x0002]          ; 0x98a1
    push word [bp + 0x4]             ; 0x98a4
    call api_idx_0002_22             ; 0x98a7
    add sp, byte 8                   ; 0x98aa
@..api_idx_0004_15.l10:
    ret                              ; 0x98ad
@..api_idx_0004_15.l11:
    push word [bp + 0x4]             ; 0x98ae
    call api_idx_003a                ; 0x98b1
    pop cx                           ; 0x98b4
    ret                              ; 0x98b5
@..api_idx_0004_15.l12:
    inc word [bp - 0x0002]           ; 0x98b6
    mov ax, word [bp - 0x0002]       ; 0x98b9
    cmp ax, strict word 0xb          ; 0x98bc
    jge short @..api_idx_0004_15.l13 ; 0x98bf
    jmp near @..api_idx_0004_15.l3   ; 0x98c1
@..api_idx_0004_15.l13:
    push word [bp + 0x4]             ; 0x98c4
    call api_idx_003a                ; 0x98c7
    pop cx                           ; 0x98ca
    ret                              ; 0x98cb
%include "vmaze/api_idx_0002_23.asm"

%include "vmaze/api_idx_0002_24.asm"

%include "vmaze/api_idx_0006_9.asm"

@..api_idx_0006_9.l3:
    inc word [bp - 0x0002]           ; 0x9a71
    mov ax, word [bp - 0x0002]       ; 0x9a74
    cmp ax, strict word 0xb          ; 0x9a77
    jge short @..api_idx_0006_9.l4   ; 0x9a7a
    jmp near @..api_idx_0006_9.l1    ; 0x9a7c
@..api_idx_0006_9.l4:
    ret                              ; 0x9a7f
%include "vmaze/api_idx_0010_4.asm"

    call math_loc_9658               ; 0x9c7e
    add sp, byte 6                   ; 0x9c81
    mov ax, 5                        ; 0x9c84
    push ax                          ; 0x9c87
    call ds_dispatch_b7a9            ; 0x9c88
    pop cx                           ; 0x9c8b
    push ax                          ; 0x9c8c
    push word [bp + 0x4]             ; 0x9c8d
    push word [bp + 0x6]             ; 0x9c90
    call math_loc_9658               ; 0x9c93
    add sp, byte 6                   ; 0x9c96
@..api_idx_0010_4.l12:
    mov ax, 0x16                     ; 0x9c99
    imul word [bp + 0x4]             ; 0x9c9c
    add ax, word [bp + 0x6]          ; 0x9c9f
    mov bx, ax                       ; 0x9ca2
    mov byte [bx - 0x63be], 1        ; 0x9ca4
    mov ax, 0x16                     ; 0x9ca9
    imul word [bp + 0x6]             ; 0x9cac
    add ax, word [bp + 0x4]          ; 0x9caf
    mov bx, ax                       ; 0x9cb2
    mov byte [bx - 0x63be], 1        ; 0x9cb4
    mov ax, 0x26                     ; 0x9cb9
    imul word [bp + 0x4]             ; 0x9cbc
    mov bx, ax                       ; 0x9cbf
    mov al, byte [bx - 0x7aff]       ; 0x9cc1
    cbw                              ; 0x9cc5
    mov cx, 0xa                      ; 0x9cc6
    cwd                              ; 0x9cc9
    idiv cx                          ; 0x9cca
    inc ax                           ; 0x9ccc
    mov word [bp - 0x000e], ax       ; 0x9ccd
    mov ax, 0x26                     ; 0x9cd0
    imul word [bp + 0x6]             ; 0x9cd3
    mov bx, ax                       ; 0x9cd6
    mov al, byte [bx - 0x7aff]       ; 0x9cd8
    cbw                              ; 0x9cdc
    cwd                              ; 0x9cdd
    idiv cx                          ; 0x9cde
    inc ax                           ; 0x9ce0
    mov word [bp - 0x0010], ax       ; 0x9ce1
    mov ax, 0x26                     ; 0x9ce4
    imul word [bp + 0x4]             ; 0x9ce7
    mov bx, ax                       ; 0x9cea
    mov al, byte [bx - 0x7b18]       ; 0x9cec
    push ax                          ; 0x9cf0
    mov ax, 0x26                     ; 0x9cf1
    imul word [bp + 0x6]             ; 0x9cf4
    mov bx, ax                       ; 0x9cf7
    pop ax                           ; 0x9cf9
    cmp al, byte [bx - 0x7b18]       ; 0x9cfa
    jne short @..api_idx_0010_4.l13  ; 0x9cfe
    cmp byte [bx - 0x7b16], 1        ; 0x9d00
    jne short @..api_idx_0010_4.l13  ; 0x9d05
    mov ax, 0x26                     ; 0x9d07
    imul word [bp + 0x4]             ; 0x9d0a
    mov bx, ax                       ; 0x9d0d
    cmp byte [bx - 0x7aff], 0x41     ; 0x9d0f
    jge short @..api_idx_0010_4.l13  ; 0x9d14
    mov ax, 3                        ; 0x9d16
    push ax                          ; 0x9d19
    call ds_dispatch_b7a9            ; 0x9d1a
    pop cx                           ; 0x9d1d
    test ax, ax                      ; 0x9d1e
    jne short @..api_idx_0010_4.l13  ; 0x9d20
    mov ax, 0x26                     ; 0x9d22
    imul word [bp + 0x4]             ; 0x9d25
    mov bx, ax                       ; 0x9d28
    inc byte [bx - 0x7aff]           ; 0x9d2a
@..api_idx_0010_4.l13:
    cmp word [bp - 0x000c], byte 0xff ; 0x9d2e
    jne short @..api_idx_0010_4.l14  ; 0x9d32
    jmp near @..api_idx_0010_4.l18   ; 0x9d34
@..api_idx_0010_4.l14:
    cmp word [bp - 0x000a], byte 0xff ; 0x9d37
    jne short @..api_idx_0010_4.l17  ; 0x9d3b
    mov ax, 0x32                     ; 0x9d3d
    sub ax, word [bp - 0x000e]       ; 0x9d40
    cmp ax, word [bp + 0x8]          ; 0x9d43
    jg short @..api_idx_0010_4.l15   ; 0x9d46
    mov ax, 0xa                      ; 0x9d48
    push ax                          ; 0x9d4b
    call ds_dispatch_b7a9            ; 0x9d4c
    pop cx                           ; 0x9d4f
    inc ax                           ; 0x9d50
    cmp ax, word [bp - 0x000e]       ; 0x9d51
    jle short @..api_idx_0010_4.l16  ; 0x9d54
@..api_idx_0010_4.l15:
    ret                              ; 0x9d56
@..api_idx_0010_4.l16:
    mov ax, 0x64                     ; 0x9d57
    push ax                          ; 0x9d5a
    mov ax, 1                        ; 0x9d5b
    push ax                          ; 0x9d5e
    mov ax, 0x26                     ; 0x9d5f
    imul word [bp + 0x6]             ; 0x9d62
    mov bx, ax                       ; 0x9d65
    mov al, byte [bx - 0x7aff]       ; 0x9d67
    cbw                              ; 0x9d6b
    add ax, word [bp - 0x000e]       ; 0x9d6c
    push ax                          ; 0x9d6f
    call ds_dispatch_b7c2            ; 0x9d70
    add sp, byte 6                   ; 0x9d73
    push ax                          ; 0x9d76
    mov ax, 0x26                     ; 0x9d77
    imul word [bp + 0x6]             ; 0x9d7a
    mov bx, ax                       ; 0x9d7d
    pop ax                           ; 0x9d7f
    mov byte [bx - 0x7aff], al       ; 0x9d80
    mov ax, 0x64                     ; 0x9d84
    push ax                          ; 0x9d87
    mov ax, 1                        ; 0x9d88
    push ax                          ; 0x9d8b
    mov ax, 0x26                     ; 0x9d8c
    imul word [bp + 0x4]             ; 0x9d8f
    mov bx, ax                       ; 0x9d92
    mov al, byte [bx - 0x7aff]       ; 0x9d94
    cbw                              ; 0x9d98
    sub ax, word [bp - 0x000e]       ; 0x9d99
    push ax                          ; 0x9d9c
    call ds_dispatch_b7c2            ; 0x9d9d
    add sp, byte 6                   ; 0x9da0
    push ax                          ; 0x9da3
    mov ax, 0x26                     ; 0x9da4
    imul word [bp + 0x4]             ; 0x9da7
    mov bx, ax                       ; 0x9daa
    pop ax                           ; 0x9dac
    mov byte [bx - 0x7aff], al       ; 0x9dad
@..api_idx_0010_4.l17:
    push word [bp + 0x6]             ; 0x9db1
    mov ax, 3                        ; 0x9db4
    push ax                          ; 0x9db7
    push word [bp - 0x000c]          ; 0x9db8
    push word [bp + 0x4]             ; 0x9dbb
    call api_idx_0002_22             ; 0x9dbe
    add sp, byte 8                   ; 0x9dc1
    push word [bp - 0x000c]          ; 0x9dc4
    push word [bp + 0x6]             ; 0x9dc7
    push word [bp + 0x4]             ; 0x9dca
    call api_idx_0002_24             ; 0x9dcd
    add sp, byte 6                   ; 0x9dd0
@..api_idx_0010_4.l18:
    cmp word [bp - 0x000a], byte 0xff ; 0x9dd3
    jne short @..api_idx_0010_4.l19  ; 0x9dd7
    jmp near @..api_idx_0010_4.l23   ; 0x9dd9
@..api_idx_0010_4.l19:
    cmp word [bp - 0x000c], byte 0xff ; 0x9ddc
    jne short @..api_idx_0010_4.l22  ; 0x9de0
    mov ax, 0x32                     ; 0x9de2
    sub ax, word [bp - 0x0010]       ; 0x9de5
    cmp ax, word [bp + 0x8]          ; 0x9de8
    jg short @..api_idx_0010_4.l20   ; 0x9deb
    mov ax, 0xa                      ; 0x9ded
    push ax                          ; 0x9df0
    call ds_dispatch_b7a9            ; 0x9df1
    pop cx                           ; 0x9df4
    inc ax                           ; 0x9df5
    cmp ax, word [bp - 0x0010]       ; 0x9df6
    jle short @..api_idx_0010_4.l21  ; 0x9df9
@..api_idx_0010_4.l20:
    ret                              ; 0x9dfb
@..api_idx_0010_4.l21:
    mov ax, 0x64                     ; 0x9dfc
    push ax                          ; 0x9dff
    mov ax, 1                        ; 0x9e00
    push ax                          ; 0x9e03
    mov ax, 0x26                     ; 0x9e04
    imul word [bp + 0x4]             ; 0x9e07
    mov bx, ax                       ; 0x9e0a
    mov al, byte [bx - 0x7aff]       ; 0x9e0c
    cbw                              ; 0x9e10
    add ax, word [bp - 0x0010]       ; 0x9e11
    push ax                          ; 0x9e14
    call ds_dispatch_b7c2            ; 0x9e15
    add sp, byte 6                   ; 0x9e18
    push ax                          ; 0x9e1b
    mov ax, 0x26                     ; 0x9e1c
    imul word [bp + 0x4]             ; 0x9e1f
    mov bx, ax                       ; 0x9e22
    pop ax                           ; 0x9e24
    mov byte [bx - 0x7aff], al       ; 0x9e25
    mov ax, 0x64                     ; 0x9e29
    push ax                          ; 0x9e2c
    mov ax, 1                        ; 0x9e2d
    push ax                          ; 0x9e30
    mov ax, 0x26                     ; 0x9e31
    imul word [bp + 0x6]             ; 0x9e34
    mov bx, ax                       ; 0x9e37
    mov al, byte [bx - 0x7aff]       ; 0x9e39
    cbw                              ; 0x9e3d
    sub ax, word [bp - 0x0010]       ; 0x9e3e
    push ax                          ; 0x9e41
    call ds_dispatch_b7c2            ; 0x9e42
    add sp, byte 6                   ; 0x9e45
    push ax                          ; 0x9e48
    mov ax, 0x26                     ; 0x9e49
    imul word [bp + 0x6]             ; 0x9e4c
    mov bx, ax                       ; 0x9e4f
    pop ax                           ; 0x9e51
    mov byte [bx - 0x7aff], al       ; 0x9e52
@..api_idx_0010_4.l22:
    push word [bp + 0x4]             ; 0x9e56
    mov ax, 3                        ; 0x9e59
    push ax                          ; 0x9e5c
    push word [bp - 0x000a]          ; 0x9e5d
    push word [bp + 0x6]             ; 0x9e60
    call api_idx_0002_22             ; 0x9e63
    add sp, byte 8                   ; 0x9e66
    push word [bp - 0x000a]          ; 0x9e69
    push word [bp + 0x4]             ; 0x9e6c
    push word [bp + 0x6]             ; 0x9e6f
    call api_idx_0002_24             ; 0x9e72
    add sp, byte 6                   ; 0x9e75
@..api_idx_0010_4.l23:
    ret                              ; 0x9e78
%include "vmaze/api_idx_0004_16.asm"

%include "vmaze/api_idx_0012_4.asm"

    mov ax, 0x26                     ; 0xa0f7
    imul word [bp + 0x6]             ; 0xa0fa
    mov bx, ax                       ; 0xa0fd
    mov byte [bx - 0x7b00], 0        ; 0xa0ff
@..api_idx_0012_4.l12:
    push word [bp + 0x6]             ; 0xa104
    push word [bp + 0x4]             ; 0xa107
    call api_idx_0004_16             ; 0xa10a
    add sp, byte 4                   ; 0xa10d
    mov word [bp - 0x000e], 1        ; 0xa110
    jmp near @..api_idx_0012_4.l16   ; 0xa115
@..api_idx_0012_4.l13:
    mov ax, 0x26                     ; 0xa118
    imul word [bp + 0x6]             ; 0xa11b
    mov bx, ax                       ; 0xa11e
    mov al, byte [bx - 0x7b00]       ; 0xa120
    push ax                          ; 0xa124
    mov ax, 0x26                     ; 0xa125
    imul word [bp + 0x4]             ; 0xa128
    mov bx, ax                       ; 0xa12b
    mov cl, byte [bx - 0x7b00]       ; 0xa12d
    pop ax                           ; 0xa131
    cmp al, cl                       ; 0xa132
    jle short @..api_idx_0012_4.l14  ; 0xa134
    mov ax, 3                        ; 0xa136
    push ax                          ; 0xa139
    call ds_dispatch_b7a9            ; 0xa13a
    pop cx                           ; 0xa13d
    test ax, ax                      ; 0xa13e
    jne short @..api_idx_0012_4.l14  ; 0xa140
    mov ax, 0x26                     ; 0xa142
    imul word [bp + 0x4]             ; 0xa145
    mov bx, ax                       ; 0xa148
    mov byte [bx - 0x7b16], 7        ; 0xa14a
    mov word [bp - 0x000e], 0xffff   ; 0xa14f
    jmp short @..api_idx_0012_4.l16  ; 0xa154
@..api_idx_0012_4.l14:
    mov ax, 0x26                     ; 0xa156
    imul word [bp + 0x6]             ; 0xa159
    mov bx, ax                       ; 0xa15c
    mov al, byte [bx - 0x7b00]       ; 0xa15e
    cbw                              ; 0xa162
    push ax                          ; 0xa163
    mov ax, 0x26                     ; 0xa164
    imul word [bp + 0x4]             ; 0xa167
    mov bx, ax                       ; 0xa16a
    mov al, byte [bx - 0x7b00]       ; 0xa16c
    cbw                              ; 0xa170
    mov cx, 3                        ; 0xa171
    cwd                              ; 0xa174
    idiv cx                          ; 0xa175
    mov cx, ax                       ; 0xa177
    pop ax                           ; 0xa179
    cmp ax, cx                       ; 0xa17a
    jge short @..api_idx_0012_4.l16  ; 0xa17c
    mov ax, 0x26                     ; 0xa17e
    imul word [bp + 0x6]             ; 0xa181
    mov bx, ax                       ; 0xa184
    cmp byte [bx - 0x7b16], 3        ; 0xa186
    je short @..api_idx_0012_4.l15   ; 0xa18b
    cmp byte [bx - 0x7b16], 2        ; 0xa18d
    jne short @..api_idx_0012_4.l16  ; 0xa192
@..api_idx_0012_4.l15:
    push word [bp + 0x6]             ; 0xa194
    call api_idx_003a                ; 0xa197
    pop cx                           ; 0xa19a
    mov ax, 0x26                     ; 0xa19b
    imul word [bp + 0x6]             ; 0xa19e
    mov bx, ax                       ; 0xa1a1
    mov byte [bx - 0x7b16], 7        ; 0xa1a3
    mov word [bp - 0x000e], 1        ; 0xa1a8
@..api_idx_0012_4.l16:
    mov ax, 0x26                     ; 0xa1ad
    imul word [bp + 0x4]             ; 0xa1b0
    mov bx, ax                       ; 0xa1b3
    cmp byte [bx - 0x7b00], 0        ; 0xa1b5
    jg short @..api_idx_0012_4.l17   ; 0xa1ba
    mov ax, 3                        ; 0xa1bc
    push ax                          ; 0xa1bf
    call ds_dispatch_b7a9            ; 0xa1c0
    pop cx                           ; 0xa1c3
    inc ax                           ; 0xa1c4
    push ax                          ; 0xa1c5
    mov ax, 0x26                     ; 0xa1c6
    imul word [bp + 0x4]             ; 0xa1c9
    mov bx, ax                       ; 0xa1cc
    pop ax                           ; 0xa1ce
    mov byte [bx - 0x7b00], al       ; 0xa1cf
    mov byte [bx - 0x7b16], 7        ; 0xa1d3
    mov word [bp - 0x000e], 0xffff   ; 0xa1d8
@..api_idx_0012_4.l17:
    mov ax, 0x26                     ; 0xa1dd
    imul word [bp + 0x4]             ; 0xa1e0
    mov bx, ax                       ; 0xa1e3
    cmp byte [bx - 0x7b16], 7        ; 0xa1e5
    jne short @..api_idx_0012_4.l18  ; 0xa1ea
    push word [bp + 0x4]             ; 0xa1ec
    call api_idx_003a                ; 0xa1ef
    pop cx                           ; 0xa1f2
@..api_idx_0012_4.l18:
    mov ax, 0x26                     ; 0xa1f3
    imul word [bp + 0x4]             ; 0xa1f6
    mov bx, ax                       ; 0xa1f9
    mov al, byte [bx - 0x7b14]       ; 0xa1fb
    sub ah, ah                       ; 0xa1ff
    push ax                          ; 0xa201
    push word [bp - 0x0012]          ; 0xa202
    push word [bp + 0x6]             ; 0xa205
    push word [bp + 0x4]             ; 0xa208
    call api_idx_0002_22             ; 0xa20b
    add sp, byte 8                   ; 0xa20e
    mov ax, word [bp - 0x000e]       ; 0xa211
    ret                              ; 0xa214
%include "vmaze/math_loc_a215.asm"

%include "vmaze/api_idx_0002_25.asm"

@..api_idx_0002_25.l2:
    mov ax, 0                        ; 0xa2db
    ret                              ; 0xa2de
%include "vmaze/api_idx_0010_5.asm"

@..api_idx_0010_5.l1:
    mov ax, 0x26                     ; 0xa30f
    imul word [bp + 0x4]             ; 0xa312
    mov bx, ax                       ; 0xa315
    inc byte [bx - 0x7b13]           ; 0xa317
    mov ax, 3                        ; 0xa31b
    push ax                          ; 0xa31e
    mov ax, 2                        ; 0xa31f
    push ax                          ; 0xa322
    push word [bp + 0x4]             ; 0xa323
    call api_idx_0002_25             ; 0xa326
    add sp, byte 6                   ; 0xa329
    test ax, ax                      ; 0xa32c
    je short @..api_idx_0010_5.l2    ; 0xa32e
    ret                              ; 0xa330
@..api_idx_0010_5.l2:
    mov ax, 0x26                     ; 0xa331
    imul word [bp + 0x4]             ; 0xa334
    mov bx, ax                       ; 0xa337
    mov al, byte [bx - 0x7b15]       ; 0xa339
    sub ah, ah                       ; 0xa33d
    mov word [bp - 0x0006], ax       ; 0xa33f
    shl ax, 1                        ; 0xa342
    shl ax, 1                        ; 0xa344
    mov bx, ax                       ; 0xa346
    mov al, byte [bx - 0x768a]       ; 0xa348
    sub ah, ah                       ; 0xa34c
    mov word [bp - 0x0008], ax       ; 0xa34e
    cmp ax, strict word 0            ; 0xa351
    jle short @..api_idx_0010_5.l3   ; 0xa354
    mov ax, 4                        ; 0xa356
    push ax                          ; 0xa359
    call ds_dispatch_b7a9            ; 0xa35a
    pop cx                           ; 0xa35d
    test ax, ax                      ; 0xa35e
    jne short @..api_idx_0010_5.l3   ; 0xa360
    mov ax, 0x26                     ; 0xa362
    imul word [bp + 0x4]             ; 0xa365
    mov bx, ax                       ; 0xa368
    mov al, byte [bx - 0x7b18]       ; 0xa36a
    sub ah, ah                       ; 0xa36e
    mov cx, 0xc                      ; 0xa370
    imul cx                          ; 0xa373
    add ax, word [bp - 0x0008]       ; 0xa375
    mov bx, ax                       ; 0xa378
    mov al, byte [bx - 0x7622]       ; 0xa37a
    cbw                              ; 0xa37e
    mov word [bp - 0x000a], ax       ; 0xa37f
    mov ax, 0x64                     ; 0xa382
    push ax                          ; 0xa385
    call ds_dispatch_b7a9            ; 0xa386
    pop cx                           ; 0xa389
    mov cx, ax                       ; 0xa38a
    add ax, strict word 0xff9c       ; 0xa38c
    mov cx, ax                       ; 0xa38f
    mov ax, word [bp - 0x000a]       ; 0xa391
    cmp cx, ax                       ; 0xa394
    jle short @..api_idx_0010_5.l3   ; 0xa396
    mov ax, 4                        ; 0xa398
    push ax                          ; 0xa39b
    call ds_dispatch_b7a9            ; 0xa39c
    pop cx                           ; 0xa39f
    test ax, ax                      ; 0xa3a0
    jne short @..api_idx_0010_5.l3   ; 0xa3a2
    push word [bp + 0x4]             ; 0xa3a4
    call api_idx_003a                ; 0xa3a7
    pop cx                           ; 0xa3aa
    mov ax, 0x26                     ; 0xa3ab
    imul word [bp + 0x4]             ; 0xa3ae
    mov bx, ax                       ; 0xa3b1
    mov byte [bx - 0x7b16], 7        ; 0xa3b3
    ret                              ; 0xa3b8
@..api_idx_0010_5.l3:
    mov word [bp - 0x000c], 0        ; 0xa3b9
@..api_idx_0010_5.l4:
    mov ax, word [bp - 0x000c]       ; 0xa3be
    cmp ax, word [bp + 0x4]          ; 0xa3c1
    jne short @..api_idx_0010_5.l5   ; 0xa3c4
    jmp near @..api_idx_0010_5.l17   ; 0xa3c6
@..api_idx_0010_5.l5:
    mov cx, 0x26                     ; 0xa3c9
    imul cx                          ; 0xa3cc
    mov bx, ax                       ; 0xa3ce
    cmp byte [bx - 0x7b00], 0        ; 0xa3d0
    jg short @..api_idx_0010_5.l6    ; 0xa3d5
    jmp near @..api_idx_0010_5.l17   ; 0xa3d7
@..api_idx_0010_5.l6:
    mov ax, 0x16                     ; 0xa3da
    imul word [bp + 0x4]             ; 0xa3dd
    add ax, word [bp - 0x000c]       ; 0xa3e0
    mov bx, ax                       ; 0xa3e3
    cmp byte [bx - 0x63be], 0        ; 0xa3e5
    je short @..api_idx_0010_5.l7    ; 0xa3ea
    jmp near @..api_idx_0010_5.l17   ; 0xa3ec
@..api_idx_0010_5.l7:
    push word [bp - 0x0006]          ; 0xa3ef
    push word [bp - 0x000c]          ; 0xa3f2
    call math_loc_9448               ; 0xa3f5
    add sp, byte 4                   ; 0xa3f8
    test ax, ax                      ; 0xa3fb
    jne short @..api_idx_0010_5.l8   ; 0xa3fd
    jmp near @..api_idx_0010_5.l17   ; 0xa3ff
@..api_idx_0010_5.l8:
    mov ax, 0x26                     ; 0xa402
    imul word [bp - 0x000c]          ; 0xa405
    mov bx, ax                       ; 0xa408
    cmp byte [bx - 0x7b16], 2        ; 0xa40a
    je short @..api_idx_0010_5.l9    ; 0xa40f
    cmp byte [bx - 0x7b16], 1        ; 0xa411
    je short @..api_idx_0010_5.l9    ; 0xa416
    jmp near @..api_idx_0010_5.l17   ; 0xa418
@..api_idx_0010_5.l9:
    mov ax, 4                        ; 0xa41b
    push ax                          ; 0xa41e
    call ds_dispatch_b7a9            ; 0xa41f
    pop cx                           ; 0xa422
    test ax, ax                      ; 0xa423
    je short @..api_idx_0010_5.l10   ; 0xa425
    jmp near @..api_idx_0010_5.l17   ; 0xa427
@..api_idx_0010_5.l10:
    mov ax, 0x26                     ; 0xa42a
    imul word [bp + 0x4]             ; 0xa42d
    mov bx, ax                       ; 0xa430
    mov al, byte [bx - 0x7b18]       ; 0xa432
    sub ah, ah                       ; 0xa436
    mov cx, 0xc                      ; 0xa438
    imul cx                          ; 0xa43b
    push ax                          ; 0xa43d
    mov ax, 0x26                     ; 0xa43e
    imul word [bp - 0x000c]          ; 0xa441
    mov bx, ax                       ; 0xa444
    mov al, byte [bx - 0x7b18]       ; 0xa446
    sub ah, ah                       ; 0xa44a
    mov cx, ax                       ; 0xa44c
    pop ax                           ; 0xa44e
    add ax, cx                       ; 0xa44f
    mov bx, ax                       ; 0xa451
    mov al, byte [bx - 0x7622]       ; 0xa453
    cbw                              ; 0xa457
    mov word [bp - 0x000e], ax       ; 0xa458
    mov ax, 0xa                      ; 0xa45b
    push ax                          ; 0xa45e
    call ds_dispatch_b7a9            ; 0xa45f
    pop cx                           ; 0xa462
    mov cx, ax                       ; 0xa463
    add ax, strict word 0x19         ; 0xa465
    mov cx, ax                       ; 0xa468
    mov ax, word [bp - 0x000e]       ; 0xa46a
    cmp cx, ax                       ; 0xa46d
    jg short @..api_idx_0010_5.l11   ; 0xa46f
    push ax                          ; 0xa471
    push word [bp - 0x000c]          ; 0xa472
    push word [bp + 0x4]             ; 0xa475
    call api_idx_0010_4              ; 0xa478
    add sp, byte 6                   ; 0xa47b
    jmp near @..api_idx_0010_5.l17   ; 0xa47e
@..api_idx_0010_5.l11:
    mov ax, 0x19                     ; 0xa481
    push ax                          ; 0xa484
    call ds_dispatch_b7a9            ; 0xa485
    pop cx                           ; 0xa488
    mov cx, ax                       ; 0xa489
    mov ax, 0x26                     ; 0xa48b
    imul word [bp + 0x4]             ; 0xa48e
    mov bx, ax                       ; 0xa491
    mov al, byte [bx - 0x7b00]       ; 0xa493
    cbw                              ; 0xa497
    push ax                          ; 0xa498
    mov ax, 0x26                     ; 0xa499
    imul word [bp - 0x000c]          ; 0xa49c
    mov bx, ax                       ; 0xa49f
    mov al, byte [bx - 0x7b00]       ; 0xa4a1
    cbw                              ; 0xa4a5
    mov dx, ax                       ; 0xa4a6
    pop ax                           ; 0xa4a8
    sub ax, dx                       ; 0xa4a9
    add ax, strict word 0xffdd       ; 0xa4ab
    sub ax, cx                       ; 0xa4ae
    cmp ax, word [bp - 0x000e]       ; 0xa4b0
    jl short @..api_idx_0010_5.l15   ; 0xa4b3
    mov ax, 3                        ; 0xa4b5
    push ax                          ; 0xa4b8
    call ds_dispatch_b7a9            ; 0xa4b9
    pop cx                           ; 0xa4bc
    test ax, ax                      ; 0xa4bd
    je short @..api_idx_0010_5.l14   ; 0xa4bf
    mov ax, 0x26                     ; 0xa4c1
    imul word [bp + 0x4]             ; 0xa4c4
    mov bx, ax                       ; 0xa4c7
    mov al, byte [bx - 0x7b00]       ; 0xa4c9
    cbw                              ; 0xa4cd
    push ax                          ; 0xa4ce
    mov ax, 0x26                     ; 0xa4cf
    imul word [bp - 0x000c]          ; 0xa4d2
    mov bx, ax                       ; 0xa4d5
    mov al, byte [bx - 0x7b00]       ; 0xa4d7
    cbw                              ; 0xa4db
    mov cx, 2                        ; 0xa4dc
    cwd                              ; 0xa4df
    idiv cx                          ; 0xa4e0
    mov cx, ax                       ; 0xa4e2
    pop ax                           ; 0xa4e4
    cmp ax, cx                       ; 0xa4e5
    jle short @..api_idx_0010_5.l14  ; 0xa4e7
    push word [bp - 0x000c]          ; 0xa4e9
    push word [bp + 0x4]             ; 0xa4ec
    call api_idx_0012_4              ; 0xa4ef
    add sp, byte 4                   ; 0xa4f2
    mov word [bp - 0x0004], ax       ; 0xa4f5
    cmp word [bp - 0x0004], byte 0   ; 0xa4f8
    jne short @..api_idx_0010_5.l12  ; 0xa4fc
    mov ax, 3                        ; 0xa4fe
    push ax                          ; 0xa501
    call ds_dispatch_b7a9            ; 0xa502
    pop cx                           ; 0xa505
    test ax, ax                      ; 0xa506
    jne short @..api_idx_0010_5.l13  ; 0xa508
@..api_idx_0010_5.l12:
    cmp word [bp - 0x0004], byte 0xff ; 0xa50a
    jne short @..api_idx_0010_5.l14  ; 0xa50e
@..api_idx_0010_5.l13:
    ret                              ; 0xa510
@..api_idx_0010_5.l14:
    jmp short @..api_idx_0010_5.l17  ; 0xa511
@..api_idx_0010_5.l15:
    push word [bp - 0x000c]          ; 0xa513
    push word [bp + 0x4]             ; 0xa516
    call math_loc_a215               ; 0xa519
    add sp, byte 4                   ; 0xa51c
    mov ax, 5                        ; 0xa51f
    push ax                          ; 0xa522
    call ds_dispatch_b7a9            ; 0xa523
    pop cx                           ; 0xa526
    test ax, ax                      ; 0xa527
    jne short @..api_idx_0010_5.l16  ; 0xa529
    mov ax, 0x26                     ; 0xa52b
    imul word [bp + 0x4]             ; 0xa52e
    mov bx, ax                       ; 0xa531
    mov byte [bx - 0x7b16], 0        ; 0xa533
@..api_idx_0010_5.l16:
    mov ax, 3                        ; 0xa538
    push ax                          ; 0xa53b
    call ds_dispatch_b7a9            ; 0xa53c
    pop cx                           ; 0xa53f
    test ax, ax                      ; 0xa540
    jne short @..api_idx_0010_5.l17  ; 0xa542
    ret                              ; 0xa544
@..api_idx_0010_5.l17:
    inc word [bp - 0x000c]           ; 0xa545
    mov ax, word [bp - 0x000c]       ; 0xa548
    cmp ax, strict word 0x16         ; 0xa54b
    jge short @..api_idx_0010_5.l18  ; 0xa54e
    jmp near @..api_idx_0010_5.l4    ; 0xa550
@..api_idx_0010_5.l18:
    mov ax, 0x26                     ; 0xa553
    imul word [bp + 0x4]             ; 0xa556
    mov bx, ax                       ; 0xa559
    mov al, byte [bx - 0x7b13]       ; 0xa55b
    sub ah, ah                       ; 0xa55f
    mov cx, 4                        ; 0xa561
    cwd                              ; 0xa564
    idiv cx                          ; 0xa565
    mov ax, dx                       ; 0xa567
    test ax, ax                      ; 0xa569
    jne short @..api_idx_0010_5.l19  ; 0xa56b
    push word [bp + 0x4]             ; 0xa56d
    call api_idx_0006_9              ; 0xa570
    pop cx                           ; 0xa573
    push word [bp + 0x4]             ; 0xa574
    call api_idx_0002_23             ; 0xa577
    pop cx                           ; 0xa57a
    mov ax, 1                        ; 0xa57b
    push ax                          ; 0xa57e
    push word [bp - 0x0006]          ; 0xa57f
    mov ax, 0x26                     ; 0xa582
    imul word [bp + 0x4]             ; 0xa585
    add ax, 0x8506                   ; 0xa588
    push ax                          ; 0xa58b
    call ds_dispatch_ec41            ; 0xa58c
    add sp, byte 6                   ; 0xa58f
@..api_idx_0010_5.l19:
    mov ax, 0x26                     ; 0xa592
    imul word [bp + 0x4]             ; 0xa595
    mov bx, ax                       ; 0xa598
    mov al, byte [bx - 0x7b17]       ; 0xa59a
    sub ah, ah                       ; 0xa59e
    cmp ax, word [bp - 0x0006]       ; 0xa5a0
    jne short @..api_idx_0010_5.l20  ; 0xa5a3
    mov al, byte [bx - 0x7aff]       ; 0xa5a5
    mov byte [bx - 0x7b00], al       ; 0xa5a9
@..api_idx_0010_5.l20:
    cmp byte [bx - 0x7b13], 0x18     ; 0xa5ad
    jbe short @..api_idx_0010_5.l21  ; 0xa5b2
    mov byte [bx - 0x7b16], 0        ; 0xa5b4
@..api_idx_0010_5.l21:
    ret                              ; 0xa5b9
%include "vmaze/api_idx_0008_5.asm"

@..api_idx_0008_5.l14:
    jmp short @..api_idx_0008_5.l16  ; 0xa795
@..api_idx_0008_5.l15:
    push word [bp - 0x0006]          ; 0xa797
    push word [bp + 0x4]             ; 0xa79a
    call math_loc_a215               ; 0xa79d
    add sp, byte 4                   ; 0xa7a0
@..api_idx_0008_5.l16:
    inc word [bp - 0x0006]           ; 0xa7a3
    mov ax, word [bp - 0x0006]       ; 0xa7a6
    cmp ax, strict word 0x16         ; 0xa7a9
    jge short @..api_idx_0008_5.l17  ; 0xa7ac
    jmp near @..api_idx_0008_5.l1    ; 0xa7ae
@..api_idx_0008_5.l17:
    ret                              ; 0xa7b1
%include "vmaze/api_idx_0002_26.asm"

@..api_idx_0002_26.l1:
    mov ax, 0x26                     ; 0xa7dd
    imul word [bp + 0x4]             ; 0xa7e0
    mov bx, ax                       ; 0xa7e3
    cmp byte [bx - 0x7b16], 5        ; 0xa7e5
    je short @..api_idx_0002_26.l2   ; 0xa7ea
    jmp near @..api_idx_0002_26.l6   ; 0xa7ec
@..api_idx_0002_26.l2:
    cmp byte [bx - 0x7b11], 0        ; 0xa7ef
    jge short @..api_idx_0002_26.l5  ; 0xa7f4
    mov al, byte [bx - 0x7b12]       ; 0xa7f6
    sub ah, ah                       ; 0xa7fa
    mov cx, 0x26                     ; 0xa7fc
    imul cx                          ; 0xa7ff
    mov bx, ax                       ; 0xa801
    mov al, byte [bx - 0x7b15]       ; 0xa803
    push ax                          ; 0xa807
    mov ax, cx                       ; 0xa808
    imul word [bp + 0x4]             ; 0xa80a
    mov bx, ax                       ; 0xa80d
    pop ax                           ; 0xa80f
    cmp al, byte [bx - 0x7b14]       ; 0xa810
    je short @..api_idx_0002_26.l4   ; 0xa814
    mov byte [bx - 0x7b15], al       ; 0xa816
    push word [bp + 0x4]             ; 0xa81a
    call math_loc_946a               ; 0xa81d
    pop cx                           ; 0xa820
    mov ax, 0x26                     ; 0xa821
    imul word [bp + 0x4]             ; 0xa824
    mov bx, ax                       ; 0xa827
    cmp byte [bx - 0x7b16], 0        ; 0xa829
    jne short @..api_idx_0002_26.l3  ; 0xa82e
    push word [bp + 0x4]             ; 0xa830
    call api_idx_003a                ; 0xa833
    pop cx                           ; 0xa836
    ret                              ; 0xa837
@..api_idx_0002_26.l3:
    mov ax, 0x26                     ; 0xa838
    imul word [bp + 0x4]             ; 0xa83b
    mov bx, ax                       ; 0xa83e
    mov byte [bx - 0x7b16], 5        ; 0xa840
    jmp short @..api_idx_0002_26.l5  ; 0xa845
@..api_idx_0002_26.l4:
    mov ax, 0x10                     ; 0xa847
    push ax                          ; 0xa84a
    call ds_dispatch_b7a9            ; 0xa84b
    pop cx                           ; 0xa84e
    push ax                          ; 0xa84f
    mov ax, 0x26                     ; 0xa850
    imul word [bp + 0x4]             ; 0xa853
    mov bx, ax                       ; 0xa856
    pop ax                           ; 0xa858
    mov byte [bx - 0x7b13], al       ; 0xa859
@..api_idx_0002_26.l5:
    mov ax, 0x26                     ; 0xa85d
    imul word [bp + 0x4]             ; 0xa860
    mov bx, ax                       ; 0xa863
    cmp byte [bx - 0x7b12], 0x15     ; 0xa865
    je short @..api_idx_0002_26.l6   ; 0xa86a
    mov al, byte [bx - 0x7b12]       ; 0xa86c
    sub ah, ah                       ; 0xa870
    mov cx, 0x26                     ; 0xa872
    imul cx                          ; 0xa875
    mov bx, ax                       ; 0xa877
    cmp byte [bx - 0x7b00], 0        ; 0xa879
    jg short @..api_idx_0002_26.l6   ; 0xa87e
    mov ax, cx                       ; 0xa880
    imul word [bp + 0x4]             ; 0xa882
    mov bx, ax                       ; 0xa885
    mov byte [bx - 0x7b16], 3        ; 0xa887
@..api_idx_0002_26.l6:
    mov ax, 0x26                     ; 0xa88c
    imul word [bp + 0x4]             ; 0xa88f
    mov bx, ax                       ; 0xa892
    cmp byte [bx - 0x7b16], 7        ; 0xa894
    je short @..api_idx_0002_26.l9   ; 0xa899
    push word [bp + 0x6]             ; 0xa89b
    push word [bp + 0x4]             ; 0xa89e
    call api_idx_0008_5              ; 0xa8a1
    add sp, byte 4                   ; 0xa8a4
    mov ax, 0x26                     ; 0xa8a7
    imul word [bp + 0x4]             ; 0xa8aa
    mov bx, ax                       ; 0xa8ad
    mov al, byte [bx - 0x7b16]       ; 0xa8af
    cmp al, 3                        ; 0xa8b3
    je short @..api_idx_0002_26.l7   ; 0xa8b5
    cmp al, 7                        ; 0xa8b7
    je short @..api_idx_0002_26.l7   ; 0xa8b9
    cmp al, 5                        ; 0xa8bb
    jne short @..api_idx_0002_26.l8  ; 0xa8bd
@..api_idx_0002_26.l7:
    cmp byte [bx - 0x7b00], 0        ; 0xa8bf
    jg short @..api_idx_0002_26.l9   ; 0xa8c4
@..api_idx_0002_26.l8:
    ret                              ; 0xa8c6
@..api_idx_0002_26.l9:
    mov ax, 0x26                     ; 0xa8c7
    imul word [bp + 0x4]             ; 0xa8ca
    mov bx, ax                       ; 0xa8cd
    cmp byte [bx - 0x7b11], 0        ; 0xa8cf
    jge short @..api_idx_0002_26.l11 ; 0xa8d4
    cmp byte [bx - 0x7b16], 5        ; 0xa8d6
    je short @..api_idx_0002_26.l10  ; 0xa8db
    push word [bp + 0x4]             ; 0xa8dd
    call api_idx_003a                ; 0xa8e0
    pop cx                           ; 0xa8e3
@..api_idx_0002_26.l10:
    ret                              ; 0xa8e4
@..api_idx_0002_26.l11:
    mov ax, 0x26                     ; 0xa8e5
    imul word [bp + 0x4]             ; 0xa8e8
    push ax                          ; 0xa8eb
    mov ax, 0x26                     ; 0xa8ec
    imul word [bp + 0x4]             ; 0xa8ef
    mov bx, ax                       ; 0xa8f2
    mov al, byte [bx - 0x7b11]       ; 0xa8f4
    cbw                              ; 0xa8f8
    mov cx, ax                       ; 0xa8f9
    pop ax                           ; 0xa8fb
    add ax, cx                       ; 0xa8fc
    mov bx, ax                       ; 0xa8fe
    mov al, byte [bx - 0x7b10]       ; 0xa900
    sub ah, ah                       ; 0xa904
    mov word [bp - 0x0002], ax       ; 0xa906
    mov ax, 0x26                     ; 0xa909
    imul word [bp + 0x4]             ; 0xa90c
    mov bx, ax                       ; 0xa90f
    inc byte [bx - 0x7b13]           ; 0xa911
    mov ax, word [bp - 0x0002]       ; 0xa915
    shl ax, 1                        ; 0xa918
    shl ax, 1                        ; 0xa91a
    mov si, ax                       ; 0xa91c
    mov al, byte [si - 0x758f]       ; 0xa91e
    cmp al, byte [bx - 0x7b13]       ; 0xa922
    jbe short @..api_idx_0002_26.l12 ; 0xa926
    jmp near @..api_idx_0002_26.l16  ; 0xa928
@..api_idx_0002_26.l12:
    mov byte [bx - 0x7b13], 0        ; 0xa92b
    mov al, byte [bx - 0x7b14]       ; 0xa930
    cmp al, byte [si - 0x7592]       ; 0xa934
    jne short @..api_idx_0002_26.l13 ; 0xa938
    mov al, byte [si - 0x7591]       ; 0xa93a
    mov byte [bx - 0x7b14], al       ; 0xa93e
    jmp short @..api_idx_0002_26.l14 ; 0xa942
@..api_idx_0002_26.l13:
    mov al, byte [bx - 0x7b14]       ; 0xa944
    cmp al, byte [si - 0x7591]       ; 0xa948
    jne short @..api_idx_0002_26.l14 ; 0xa94c
    mov al, byte [si - 0x7592]       ; 0xa94e
    mov byte [bx - 0x7b14], al       ; 0xa952
@..api_idx_0002_26.l14:
    cmp byte [bx - 0x7b16], 7        ; 0xa956
    jne short @..api_idx_0002_26.l15 ; 0xa95b
    mov byte [bx - 0x7b16], 3        ; 0xa95d
@..api_idx_0002_26.l15:
    dec byte [bx - 0x7b11]           ; 0xa962
    jge short @..api_idx_0002_26.l16 ; 0xa966
    cmp byte [bx - 0x7b16], 3        ; 0xa968
    jne short @..api_idx_0002_26.l16 ; 0xa96d
    mov byte [bx - 0x7b16], 0        ; 0xa96f
    mov al, byte [bx - 0x7b14]       ; 0xa974
    cmp al, byte [bx - 0x7b15]       ; 0xa978
    jne short @..api_idx_0002_26.l16 ; 0xa97c
    mov byte [bx - 0x7b16], 2        ; 0xa97e
    mov byte [bx - 0x7b13], 0        ; 0xa983
    mov al, byte [bx - 0x7b15]       ; 0xa988
    sub ah, ah                       ; 0xa98c
    push ax                          ; 0xa98e
    mov ax, 6                        ; 0xa98f
    push ax                          ; 0xa992
    mov al, byte [bx - 0x7b15]       ; 0xa993
    sub ah, ah                       ; 0xa997
    push ax                          ; 0xa999
    push word [bp + 0x4]             ; 0xa99a
    call api_idx_0002_22             ; 0xa99d
    add sp, byte 8                   ; 0xa9a0
@..api_idx_0002_26.l16:
    ret                              ; 0xa9a3
%include "vmaze/api_idx_0002_27.asm"

%include "vmaze/math_loc_aa3f.asm"

@..math_loc_aa3f.l1:
    jmp short @..math_loc_aa3f.l3    ; 0xaaa0
@..math_loc_aa3f.l2:
    mov ax, 3                        ; 0xaaa2
    push ax                          ; 0xaaa5
    mov ax, 2                        ; 0xaaa6
    push ax                          ; 0xaaa9
    push word [bp + 0x4]             ; 0xaaaa
    call api_idx_0002_25             ; 0xaaad
    add sp, byte 6                   ; 0xaab0
    test ax, ax                      ; 0xaab3
    je short @..math_loc_aa3f.l3     ; 0xaab5
    ret                              ; 0xaab7
@..math_loc_aa3f.l3:
    mov ax, 0xffff                   ; 0xaab8
    push ax                          ; 0xaabb
    push word [bp + 0x4]             ; 0xaabc
    call api_idx_0008_5              ; 0xaabf
    add sp, byte 4                   ; 0xaac2
    mov ax, 0x26                     ; 0xaac5
    imul word [bp + 0x4]             ; 0xaac8
    mov bx, ax                       ; 0xaacb
    mov byte [bx - 0x7b16], 6        ; 0xaacd
    ret                              ; 0xaad2
%include "vmaze/math_loc_aad3.asm"

@..math_loc_aad3.l1:
    mov al, byte [bx - 0x7b16]       ; 0xaae9
    sub ah, ah                       ; 0xaaed
    jmp near @..math_loc_aad3.l2     ; 0xaaef

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

@..math_loc_aad3.l2:
    cmp ax, strict word 8            ; 0xab8d
    jae short @..math_loc_aad3.l3    ; 0xab90
    xchg bx, ax                      ; 0xab92
    shl bx, 1                        ; 0xab93
    jmp [cs:bx - 0x043c]             ; 0xab95
@..math_loc_aad3.l3:
    ret                              ; 0xab9a
%include "vmaze/api_idx_0032.asm"


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

