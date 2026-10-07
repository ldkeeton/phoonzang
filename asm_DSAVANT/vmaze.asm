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
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0106
    call ds_dispatch_f40b            ; 0x0109
    cmp word [data_830c], byte 0x17  ; 0x010c
    jne short @..api_idx_0002_2.l1   ; 0x0111
    cmp word [data_8f3e], byte 0x0f  ; 0x0113
    jne short @..api_idx_0002_2.l1   ; 0x0118
    ret                              ; 0x011a
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
api_idx_0008:
    mov ax, 0xfff8                   ; 0x01c9
    call ds_dispatch_f40b            ; 0x01cc
    mov word [bp - 0x0008], 0        ; 0x01cf
    call math_loc_13c0               ; 0x01d4
    cmp word [data_919e], byte 0     ; 0x01d7
    je short @..api_idx_0008.l2      ; 0x01dc
    cmp word [data_9194], byte 0x0d  ; 0x01de
    je short @..api_idx_0008.l1      ; 0x01e3
    mov ax, 0                        ; 0x01e5
    push ax                          ; 0x01e8
    mov ax, 0xd                      ; 0x01e9
    push ax                          ; 0x01ec
    call loc_017f                    ; 0x01ed
    add sp, byte 4                   ; 0x01f0
@..api_idx_0008.l1:
    mov ax, word [bp + 0xe]          ; 0x01f3
    mov word [data_9198], ax         ; 0x01f6
    ret                              ; 0x01f9
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
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x02da
    call ds_dispatch_f40b            ; 0x02dd
    mov word [bp - 0x0002], 0        ; 0x02e0
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x02e5
    shl ax, 1                        ; 0x02e8
    mov bx, ax                       ; 0x02ea
    mov word [bx - 0x6e60], 0        ; 0x02ec
    inc word [bp - 0x0002]           ; 0x02f2
    mov ax, word [bp - 0x0002]       ; 0x02f5
    cmp ax, strict word 3            ; 0x02f8
    jl short @..api_idx_0002_3.l1    ; 0x02fb
    ret                              ; 0x02fd
api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x02fe
    call ds_dispatch_f40b            ; 0x0301
    mov ax, 0                        ; 0x0304
    push ax                          ; 0x0307
    mov ax, 1                        ; 0x0308
    push ax                          ; 0x030b
    push word [bp + 0x4]             ; 0x030c
    call ds_dispatch_d161            ; 0x030f
    add sp, byte 4                   ; 0x0312
    push ax                          ; 0x0315
    call ds_dispatch_f909            ; 0x0316
    add sp, byte 4                   ; 0x0319
    mov word [bp - 0x0002], ax       ; 0x031c
    cmp ax, strict word 0xffff       ; 0x031f
    jne short @..api_idx_0002_4.l1   ; 0x0322
    mov ax, 0x1b                     ; 0x0324
    push ax                          ; 0x0327
    call ds_dispatch_b171            ; 0x0328
    pop cx                           ; 0x032b
@..api_idx_0002_4.l1:
    mov ax, 0                        ; 0x032c
    push ax                          ; 0x032f
    push word [bp + 0x6]             ; 0x0330
    push word [bp - 0x0002]          ; 0x0333
    call ds_dispatch_f012            ; 0x0336
    add sp, byte 6                   ; 0x0339
    push word [bp - 0x0002]          ; 0x033c
    call ds_dispatch_fda5            ; 0x033f
    pop cx                           ; 0x0342
    ret                              ; 0x0343
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
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x03ea
    call ds_dispatch_f40b            ; 0x03ed
    mov word [data_91a6], 0          ; 0x03f0
    mov ax, word [data_830c]         ; 0x03f6
    jmp short @..api_idx_0002_5.l1   ; 0x03f9
    mov word [bp - 0x0002], 1        ; 0x03fb
    jmp short @..api_idx_0002_5.l2   ; 0x0400
    mov word [bp - 0x0002], 2        ; 0x0402
    jmp short @..api_idx_0002_5.l2   ; 0x0407
    mov word [bp - 0x0002], 3        ; 0x0409
    jmp short @..api_idx_0002_5.l2   ; 0x040e
    mov word [data_91a6], 1          ; 0x0410
    mov word [bp - 0x0002], 4        ; 0x0416
    jmp short @..api_idx_0002_5.l2   ; 0x041b
    mov word [bp - 0x0002], 5        ; 0x041d
    jmp short @..api_idx_0002_5.l2   ; 0x0422
    mov word [bp - 0x0002], 6        ; 0x0424

    db 0xeb
    db 'MITITITITITITIT]TkTkTkTkTkTITPTBTPTBTPTPTPTPTdTBTBTdTBTWTdTBTBTPT'

@..api_idx_0002_5.l1:
    cmp ax, strict word 0x20         ; 0x046b
    jae short @..api_idx_0002_5.l2   ; 0x046e
    xchg bx, ax                      ; 0x0470
    shl bx, 1                        ; 0x0471
    jmp [cs:bx + 0x5472]             ; 0x0473
@..api_idx_0002_5.l2:
    cmp word [data_5b70], byte 0     ; 0x0478
    je short @..api_idx_0002_5.l3    ; 0x047d
    mov ax, word [bp - 0x0002]       ; 0x047f
    cmp ax, word [data_5b6e]         ; 0x0482
    jne short @..api_idx_0002_5.l3   ; 0x0486
    jmp near @..api_idx_0002_5.l5    ; 0x0488
@..api_idx_0002_5.l3:
    call ds_dispatch_c145            ; 0x048b
    mov ax, word [bp - 0x0002]       ; 0x048e
    mov word [data_5b6e], ax         ; 0x0491
    jmp near @..api_idx_0002_5.l4    ; 0x0494
    mov ax, 0                        ; 0x0497
    push ax                          ; 0x049a
    mov ax, 0x90a0                   ; 0x049b
    push ax                          ; 0x049e
    call api_idx_0002_4              ; 0x049f
    add sp, byte 4                   ; 0x04a2
    mov ax, 5                        ; 0x04a5
    push ax                          ; 0x04a8
    mov ax, 0x90ad                   ; 0x04a9
    push ax                          ; 0x04ac
    call api_idx_0002_4              ; 0x04ad
    add sp, byte 4                   ; 0x04b0
    mov ax, 5                        ; 0x04b3
    push ax                          ; 0x04b6
    mov ax, 6                        ; 0x04b7
    push ax                          ; 0x04ba
    db 0xe8, 0x5e, 0xd1 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x04be
    mov ax, 9                        ; 0x04c1
    push ax                          ; 0x04c4
    mov ax, 0xf                      ; 0x04c5
    push ax                          ; 0x04c8
    db 0xe8, 0x50, 0xd1 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x04cc
    mov ax, 0xa                      ; 0x04cf
    push ax                          ; 0x04d2
    mov ax, 0x10                     ; 0x04d3
    push ax                          ; 0x04d6
    db 0xe8, 0x42, 0xd1 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x04da
    mov ax, 0xd                      ; 0x04dd
    push ax                          ; 0x04e0
    mov ax, 0x39                     ; 0x04e1
    push ax                          ; 0x04e4
    db 0xe8, 0x34, 0xd1 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x04e8
    mov word [data_5b6c], 0          ; 0x04eb
    jmp near @..api_idx_0002_5.l5    ; 0x04f1
    mov ax, 1                        ; 0x04f4
    push ax                          ; 0x04f7
    mov ax, 0x90ba                   ; 0x04f8
    push ax                          ; 0x04fb
    call api_idx_0002_4              ; 0x04fc
    add sp, byte 4                   ; 0x04ff
    mov ax, 4                        ; 0x0502
    push ax                          ; 0x0505
    mov ax, 0x90c7                   ; 0x0506
    push ax                          ; 0x0509
    call api_idx_0002_4              ; 0x050a
    add sp, byte 4                   ; 0x050d
    mov ax, 6                        ; 0x0510
    push ax                          ; 0x0513
    mov ax, 0x90d4                   ; 0x0514
    push ax                          ; 0x0517
    call api_idx_0002_4              ; 0x0518
    add sp, byte 4                   ; 0x051b
    mov ax, 0xd                      ; 0x051e
    push ax                          ; 0x0521
    mov ax, 0x3a                     ; 0x0522
    push ax                          ; 0x0525
    db 0xe8, 0xf3, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0529
    mov word [data_5b6c], 1          ; 0x052c
    jmp near @..api_idx_0002_5.l5    ; 0x0532
    mov ax, 2                        ; 0x0535
    push ax                          ; 0x0538
    mov ax, 0x90e1                   ; 0x0539
    push ax                          ; 0x053c
    call api_idx_0002_4              ; 0x053d
    add sp, byte 4                   ; 0x0540
    mov ax, 4                        ; 0x0543
    push ax                          ; 0x0546
    mov ax, 0x90ee                   ; 0x0547
    push ax                          ; 0x054a
    call api_idx_0002_4              ; 0x054b
    add sp, byte 4                   ; 0x054e
    mov ax, 5                        ; 0x0551
    push ax                          ; 0x0554
    mov ax, 0x90fb                   ; 0x0555
    push ax                          ; 0x0558
    call api_idx_0002_4              ; 0x0559
    add sp, byte 4                   ; 0x055c
    mov ax, 6                        ; 0x055f
    push ax                          ; 0x0562
    mov ax, 0x9108                   ; 0x0563
    push ax                          ; 0x0566
    call api_idx_0002_4              ; 0x0567
    add sp, byte 4                   ; 0x056a
    mov ax, 5                        ; 0x056d
    push ax                          ; 0x0570
    mov ax, 8                        ; 0x0571
    push ax                          ; 0x0574
    db 0xe8, 0xa4, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0578
    mov ax, 0xa                      ; 0x057b
    push ax                          ; 0x057e
    mov ax, 0x10                     ; 0x057f
    push ax                          ; 0x0582
    db 0xe8, 0x96, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0586
    mov ax, 0xb                      ; 0x0589
    push ax                          ; 0x058c
    mov ax, 0x11                     ; 0x058d
    push ax                          ; 0x0590
    db 0xe8, 0x88, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0594
    mov ax, 0xc                      ; 0x0597
    push ax                          ; 0x059a
    mov ax, 0x3b                     ; 0x059b
    push ax                          ; 0x059e
    db 0xe8, 0x7a, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x05a2
    mov word [data_5b6c], 2          ; 0x05a5
    jmp near @..api_idx_0002_5.l5    ; 0x05ab
    mov ax, 1                        ; 0x05ae
    push ax                          ; 0x05b1
    mov ax, 0x9115                   ; 0x05b2
    push ax                          ; 0x05b5
    call api_idx_0002_4              ; 0x05b6
    add sp, byte 4                   ; 0x05b9
    mov ax, 4                        ; 0x05bc
    push ax                          ; 0x05bf
    mov ax, 0x9122                   ; 0x05c0
    push ax                          ; 0x05c3
    call api_idx_0002_4              ; 0x05c4
    add sp, byte 4                   ; 0x05c7
    mov ax, 0xd                      ; 0x05ca
    push ax                          ; 0x05cd
    mov ax, 0x3a                     ; 0x05ce
    push ax                          ; 0x05d1
    db 0xe8, 0x47, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x05d5
    mov word [data_5b6c], 1          ; 0x05d8
    jmp near @..api_idx_0002_5.l5    ; 0x05de
    mov ax, 2                        ; 0x05e1
    push ax                          ; 0x05e4
    mov ax, 0x912f                   ; 0x05e5
    push ax                          ; 0x05e8
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
api_idx_0014:
    mov ax, 0xffec                   ; 0x06da
    call ds_dispatch_f40b            ; 0x06dd
    mov ax, word [data_0e10]         ; 0x06e0
    mov word [bp - 0x0004], ax       ; 0x06e3
    mov word [bp - 0x0002], 0        ; 0x06e6
    jmp near @..api_idx_0014.l6      ; 0x06eb
@..api_idx_0014.l1:
    mov bx, word [bp - 0x0004]       ; 0x06ee
    mov al, byte [bx]                ; 0x06f1
    sub ah, ah                       ; 0x06f3
    cmp ax, word [data_830c]         ; 0x06f5
    je short @..api_idx_0014.l2      ; 0x06f9
    jmp near @..api_idx_0014.l5      ; 0x06fb
@..api_idx_0014.l2:
    cmp byte [bx + 0x1], 6           ; 0x06fe
    jne short @..api_idx_0014.l3     ; 0x0702
    mov ax, word [bx + 0x4]          ; 0x0704
    mov cx, word [bx + 0x2]          ; 0x0707
    shl cx, 1                        ; 0x070a
    mov si, cx                       ; 0x070c
    mov bx, word [data_0e12]         ; 0x070e
    mov word [bx + si + 0x3c0], ax   ; 0x0712
    jmp near @..api_idx_0014.l5      ; 0x0716
@..api_idx_0014.l3:
    mov bx, word [bp - 0x0004]       ; 0x0719
    mov ax, word [bx + 0x2]          ; 0x071c
    mov cx, 0x100                    ; 0x071f
    cwd                              ; 0x0722
    idiv cx                          ; 0x0723
    mov word [bp - 0x0010], ax       ; 0x0725
    mov ax, word [bx + 0x2]          ; 0x0728
    cwd                              ; 0x072b
    idiv cx                          ; 0x072c
    mov word [bp - 0x0012], dx       ; 0x072e
    mov ax, word [bp - 0x0010]       ; 0x0731
    mov word [bp - 0x0006], ax       ; 0x0734
    mov ax, dx                       ; 0x0737
    mov cx, 0x10                     ; 0x0739
    cwd                              ; 0x073c
    idiv cx                          ; 0x073d
    mov word [bp - 0x0008], ax       ; 0x073f
    mov word [bp - 0x000a], dx       ; 0x0742
    mov ax, word [bp - 0x0006]       ; 0x0745
    mov cx, 6                        ; 0x0748
    shl ax, cl                       ; 0x074b
    shl dx, 1                        ; 0x074d
    shl dx, 1                        ; 0x074f
    shl dx, 1                        ; 0x0751
    mov cx, dx                       ; 0x0753
    add ax, cx                       ; 0x0755
    mov cx, ax                       ; 0x0757
    mov ax, word [bp - 0x0008]       ; 0x0759
    add cx, ax                       ; 0x075c
    mov word [bp - 0x0014], cx       ; 0x075e
    mov ax, word [bx + 0x4]          ; 0x0761
    mov cx, 0x100                    ; 0x0764
    cwd                              ; 0x0767
    idiv cx                          ; 0x0768
    mov word [bp - 0x0010], ax       ; 0x076a
    mov ax, word [bx + 0x4]          ; 0x076d
    cwd                              ; 0x0770
    idiv cx                          ; 0x0771
    mov word [bp - 0x0012], dx       ; 0x0773
    mov bx, word [data_0e14]         ; 0x0776
    mov si, word [bp - 0x0006]       ; 0x077a
    mov al, byte [bx + si + 0x490]   ; 0x077d
    sub ah, ah                       ; 0x0781
    add ax, word [bp - 0x0008]       ; 0x0783
    mov word [bp - 0x000c], ax       ; 0x0786
    mov al, byte [bx + si + 0x4a0]   ; 0x0789
    sub ah, ah                       ; 0x078d
    add ax, word [bp - 0x000a]       ; 0x078f
    mov word [bp - 0x000e], ax       ; 0x0792
    mov bx, word [bp - 0x0004]       ; 0x0795
    mov al, byte [bx + 0x1]          ; 0x0798
    sub ah, ah                       ; 0x079b
    jmp near @..api_idx_0014.l4      ; 0x079d
    mov ax, word [bp - 0x0010]       ; 0x07a0
    mov cx, 0x10                     ; 0x07a3
    cwd                              ; 0x07a6
    idiv cx                          ; 0x07a7
    push ax                          ; 0x07a9
    mov ax, 4                        ; 0x07aa
    push ax                          ; 0x07ad
    push word [bp - 0x0014]          ; 0x07ae
    mov ax, word [data_0e14]         ; 0x07b1
    add ax, 0x90                     ; 0x07b4
    push ax                          ; 0x07b7
    db 0xe8, 0xe9, 0xe4 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x07bb
    mov ax, word [bp - 0x0010]       ; 0x07be
    mov cx, 0x10                     ; 0x07c1
    cwd                              ; 0x07c4
    idiv cx                          ; 0x07c5
    db 0x8b, 0xc2 ; mov ax, dx
    push ax                          ; 0x07c9
    mov ax, 4                        ; 0x07ca
    push ax                          ; 0x07cd
    push word [bp - 0x0014]          ; 0x07ce
    mov ax, word [data_0e14]         ; 0x07d1
    add ax, 0x290                    ; 0x07d4
    push ax                          ; 0x07d7
    db 0xe8, 0xc9, 0xe4 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x07db
    mov ax, word [bp - 0x000e]       ; 0x07de
    dec ax                           ; 0x07e1
    push ax                          ; 0x07e2
    push word [bp - 0x000c]          ; 0x07e3
    lea ax, word [bp - 0x0006]       ; 0x07e6
    push ax                          ; 0x07e9
    lea ax, word [bp - 0x000a]       ; 0x07ea
    push ax                          ; 0x07ed
    lea ax, word [bp - 0x0008]       ; 0x07ee
    push ax                          ; 0x07f1
    call api_idx_0004_6              ; 0x07f2
    add sp, byte 0x0a                ; 0x07f5
    test ax, ax                      ; 0x07f8
    jne short loc_0833               ; 0x07fa
    mov ax, word [bp - 0x0006]       ; 0x07fc
    mov cx, 6                        ; 0x07ff
    shl ax, cl                       ; 0x0802
    mov cx, word [bp - 0x000a]       ; 0x0804
    shl cx, 1                        ; 0x0807
    shl cx, 1                        ; 0x0809
    shl cx, 1                        ; 0x080b
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp - 0x0008]       ; 0x080f
    mov word [bp - 0x0014], ax       ; 0x0812
    mov ax, word [bp - 0x0012]       ; 0x0815
    mov cx, 0x10                     ; 0x0818
    cwd                              ; 0x081b
    idiv cx                          ; 0x081c
    push ax                          ; 0x081e
    mov ax, 4                        ; 0x081f
    push ax                          ; 0x0822
    push word [bp - 0x0014]          ; 0x0823
    mov ax, word [data_0e14]         ; 0x0826
    add ax, 0x90                     ; 0x0829
    push ax                          ; 0x082c
    db 0xe8, 0x74, 0xe4 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x0830
    push word [bp - 0x000e]          ; 0x0833
    mov ax, word [bp - 0x000c]       ; 0x0836
    dec ax                           ; 0x0839
    push ax                          ; 0x083a
    lea ax, word [bp - 0x0006]       ; 0x083b
    push ax                          ; 0x083e
    lea ax, word [bp - 0x000a]       ; 0x083f
    push ax                          ; 0x0842
    lea ax, word [bp - 0x0008]       ; 0x0843
    push ax                          ; 0x0846
    call api_idx_0004_6              ; 0x0847
    add sp, byte 0x0a                ; 0x084a
    test ax, ax                      ; 0x084d
    jne short loc_088a               ; 0x084f
    mov ax, word [bp - 0x0006]       ; 0x0851
    mov cx, 6                        ; 0x0854
    shl ax, cl                       ; 0x0857
    mov cx, word [bp - 0x000a]       ; 0x0859
    shl cx, 1                        ; 0x085c
    shl cx, 1                        ; 0x085e
    shl cx, 1                        ; 0x0860
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp - 0x0008]       ; 0x0864
    db 0x89, 0x46
loc_0869:
    in al, dx                        ; 0x0869
    mov ax, word [bp - 0x0012]       ; 0x086a
    mov cx, 0x10                     ; 0x086d
    cwd                              ; 0x0870
    idiv cx                          ; 0x0871
    mov ax, dx                       ; 0x0873
    push ax                          ; 0x0875
    mov ax, 4                        ; 0x0876
    push ax                          ; 0x0879
    push word [bp - 0x0014]          ; 0x087a
    mov ax, word [data_0e14]         ; 0x087d
    add ax, 0x290                    ; 0x0880
    push ax                          ; 0x0883
    call ds_dispatch_eca4            ; 0x0884
    add sp, byte 8                   ; 0x0887
    jmp near @..api_idx_0014.l5      ; 0x088a
    mov bx, word [bp - 0x0004]       ; 0x088d
    push word [bx + 0x4]             ; 0x0890
    mov ax, 4                        ; 0x0893
    push ax                          ; 0x0896
    push word [bp - 0x0014]          ; 0x0897
    mov ax, word [data_0e14]         ; 0x089a
    add ax, 0x90                     ; 0x089d
    push ax                          ; 0x08a0
    db 0xe8, 0x00, 0xe4 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x08a4
    jmp near @..api_idx_0014.l5      ; 0x08a7
    mov bx, word [bp - 0x0004]       ; 0x08aa
    push word [bx + 0x4]             ; 0x08ad
    mov ax, 4                        ; 0x08b0
    push ax                          ; 0x08b3
    push word [bp - 0x0014]          ; 0x08b4
    mov ax, word [data_0e14]         ; 0x08b7
    add ax, 0x290                    ; 0x08ba
    push ax                          ; 0x08bd
    db 0xe8, 0xe3, 0xe3 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x08c1
    jmp near @..api_idx_0014.l5      ; 0x08c4
    mov ax, word [bp - 0x000e]       ; 0x08c7
    dec ax                           ; 0x08ca
    push ax                          ; 0x08cb
    push word [bp - 0x000c]          ; 0x08cc
    lea ax, word [bp - 0x0006]       ; 0x08cf
    push ax                          ; 0x08d2
    lea ax, word [bp - 0x000a]       ; 0x08d3
    push ax                          ; 0x08d6
    lea ax, word [bp - 0x0008]       ; 0x08d7
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
api_idx_0006:
    mov ax, 0xfffa                   ; 0x0a6e
    call ds_dispatch_f40b            ; 0x0a71
    mov ax, 0x64                     ; 0x0a74
    push ax                          ; 0x0a77
    call ds_dispatch_b7a9            ; 0x0a78
    pop cx                           ; 0x0a7b
    mov cx, 4                        ; 0x0a7c
    cwd                              ; 0x0a7f
    idiv cx                          ; 0x0a80
    mov word [bp - 0x0002], dx       ; 0x0a82
    mov ax, 0x64                     ; 0x0a85
    push ax                          ; 0x0a88
    call ds_dispatch_b7a9            ; 0x0a89
    pop cx                           ; 0x0a8c
    mov word [bp - 0x0004], ax       ; 0x0a8d
    mov ax, 0                        ; 0x0a90
    cmp word [bp - 0x0004], byte 0x4a ; 0x0a93
    jl short @..api_idx_0006.l1      ; 0x0a97
    mov ax, 2                        ; 0x0a99
    cmp word [bp - 0x0004], byte 0x5c ; 0x0a9c
    jge short @..api_idx_0006.l1     ; 0x0aa0
    mov ax, 1                        ; 0x0aa2
@..api_idx_0006.l1:
    mov word [bp - 0x0006], ax       ; 0x0aa5
    mov ax, 0xc                      ; 0x0aa8
    imul word [bp + 0x4]             ; 0x0aab
    push ax                          ; 0x0aae
    mov ax, 3                        ; 0x0aaf
    imul word [bp - 0x0002]          ; 0x0ab2
    mov cx, ax                       ; 0x0ab5
    pop ax                           ; 0x0ab7
    add ax, cx                       ; 0x0ab8
    mov cx, ax                       ; 0x0aba
    mov ax, word [bp - 0x0006]       ; 0x0abc
    add cx, ax                       ; 0x0abf
    mov si, cx                       ; 0x0ac1
    mov bx, word [data_0e14]         ; 0x0ac3
    mov al, byte [bx + si]           ; 0x0ac7
    sub ah, ah                       ; 0x0ac9
    ret                              ; 0x0acb
api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x0acc
    call ds_dispatch_f40b            ; 0x0acf
    mov ax, 0x64                     ; 0x0ad2
    push ax                          ; 0x0ad5
    call ds_dispatch_b7a9            ; 0x0ad6
    pop cx                           ; 0x0ad9
    push ax                          ; 0x0ada
    mov bx, word [data_0e14]         ; 0x0adb
    mov si, word [bp + 0x4]          ; 0x0adf
    mov al, byte [bx + si + 0xac0]   ; 0x0ae2
    sub ah, ah                       ; 0x0ae6
    mov cx, ax                       ; 0x0ae8
    pop ax                           ; 0x0aea
    cmp ax, cx                       ; 0x0aeb
    jge short @..api_idx_0002_6.l1   ; 0x0aed
    mov ax, 0                        ; 0x0aef
    jmp short @..api_idx_0002_6.l2   ; 0x0af2
@..api_idx_0002_6.l1:
    mov ax, 1                        ; 0x0af4
@..api_idx_0002_6.l2:
    mov word [bp - 0x0002], ax       ; 0x0af7
    mov ax, 4                        ; 0x0afa
    push ax                          ; 0x0afd
    shl si, 1                        ; 0x0afe
    mov ax, si                       ; 0x0b00
    add ax, word [bp - 0x0002]       ; 0x0b02
    push ax                          ; 0x0b05
    add bx, strict word 0xab0        ; 0x0b06
    mov ax, bx                       ; 0x0b0a
    push ax                          ; 0x0b0c
    call ds_dispatch_ecf6            ; 0x0b0d
    add sp, byte 6                   ; 0x0b10
    ret                              ; 0x0b13
math_loc_0b14:
    mov ax, 0                        ; 0x0b14
    call ds_dispatch_f40b            ; 0x0b17
    call loc_0140                    ; 0x0b1a
    cmp word [bp + 0x8], byte 0      ; 0x0b1d
    je short @..math_loc_0b14.l1     ; 0x0b21
    call ds_dispatch_d9a6            ; 0x0b23
    mov word [data_8450], ax         ; 0x0b26
    test ax, ax                      ; 0x0b29
    je short @..math_loc_0b14.l1     ; 0x0b2b
    mov ax, 0                        ; 0x0b2d
    push ax                          ; 0x0b30
    mov ax, 3                        ; 0x0b31
    push ax                          ; 0x0b34
    call ds_dispatch_d7e7            ; 0x0b35
    add sp, byte 4                   ; 0x0b38
    mov ax, word [data_0112]         ; 0x0b3b
    mov word [data_844e], ax         ; 0x0b3e
    mov ax, 0                        ; 0x0b41
    push ax                          ; 0x0b44
    push word [data_844e]            ; 0x0b45
    push ax                          ; 0x0b49
    call ds_dispatch_d964            ; 0x0b4a
    add sp, byte 6                   ; 0x0b4d
    mov word [data_844c], ax         ; 0x0b50
@..math_loc_0b14.l1:
    mov ax, word [bp + 0x4]          ; 0x0b53
    mov word [data_8452], ax         ; 0x0b56
    mov ax, word [bp + 0x6]          ; 0x0b59
    mov word [data_845a], ax         ; 0x0b5c
    mov word [data_830a], 0xa        ; 0x0b5f
    ret                              ; 0x0b65
api_idx_0002_7:
    mov ax, 0xfffe                   ; 0x0b66
    call ds_dispatch_f40b            ; 0x0b69
    mov ax, word [bp + 0x6]          ; 0x0b6c
    add ax, strict word 8            ; 0x0b6f
    mov cx, 8                        ; 0x0b72
    cwd                              ; 0x0b75
    idiv cx                          ; 0x0b76
    mov word [bp + 0x6], dx          ; 0x0b78
    mov ax, word [bp + 0x8]          ; 0x0b7b
    add ax, strict word 8            ; 0x0b7e
    cwd                              ; 0x0b81
    idiv cx                          ; 0x0b82
    mov word [bp + 0x8], dx          ; 0x0b84
    mov ax, word [bp + 0x4]          ; 0x0b87
    mov cx, 6                        ; 0x0b8a
    shl ax, cl                       ; 0x0b8d
    shl dx, 1                        ; 0x0b8f
    shl dx, 1                        ; 0x0b91
    shl dx, 1                        ; 0x0b93
    mov cx, dx                       ; 0x0b95
    add ax, cx                       ; 0x0b97
    add ax, word [bp + 0x6]          ; 0x0b99
    mov word [bp - 0x0002], ax       ; 0x0b9c
    push ax                          ; 0x0b9f
    mov ax, 0x8b7e                   ; 0x0ba0
    push ax                          ; 0x0ba3
    call ds_dispatch_ec74            ; 0x0ba4
    add sp, byte 4                   ; 0x0ba7
    cmp ax, word [bp + 0xa]          ; 0x0baa
    jne short @..api_idx_0002_7.l1   ; 0x0bad
    ret                              ; 0x0baf
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
api_idx_000c:
    mov ax, 0xfff4                   ; 0x0cb5
    call ds_dispatch_f40b            ; 0x0cb8
    call loc_0140                    ; 0x0cbb
    les bx, word [0x0002]            ; 0x0cbe
    mov ax, word [es:bx]             ; 0x0cc2
    mov dx, word [es:bx + 0x2]       ; 0x0cc5
    add ax, strict word 0x24         ; 0x0cc9
    adc dx, byte 0                   ; 0x0ccc
    mov word [data_919c], dx         ; 0x0ccf
    mov word [data_919a], ax         ; 0x0cd3
    call api_idx_0002_3              ; 0x0cd6
    mov ax, word [bp + 0x4]          ; 0x0cd9
    mov word [data_830c], ax         ; 0x0cdc
    push ax                          ; 0x0cdf
    mov ax, 2                        ; 0x0ce0
    push ax                          ; 0x0ce3
    call ds_dispatch_d5a2            ; 0x0ce4
    add sp, byte 4                   ; 0x0ce7
    cmp word [data_830c], byte 0     ; 0x0cea
    jge short @..api_idx_000c.l1     ; 0x0cef
    mov word [data_830a], 7          ; 0x0cf1
    ret                              ; 0x0cf7
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
api_idx_0002_8:
    mov ax, 0xfffe                   ; 0x0e5d
    call ds_dispatch_f40b            ; 0x0e60
    mov ax, word [data_8f1c]         ; 0x0e63
    mov dx, word [data_8f1e]         ; 0x0e66
    mov cx, 0x5a0                    ; 0x0e6a
    mov bx, 0                        ; 0x0e6d
    call ds_dispatch_f9cd            ; 0x0e70
    mov cx, 0x3c                     ; 0x0e73
    mov bx, 0                        ; 0x0e76
    call ds_dispatch_f99f            ; 0x0e79
    mov word [bp - 0x0002], ax       ; 0x0e7c
    mov cx, 3                        ; 0x0e7f
    imul cx                          ; 0x0e82
    mov bx, ax                       ; 0x0e84
    mov al, byte [bx + 0xc6]         ; 0x0e86
    sub ah, ah                       ; 0x0e8a
    push ax                          ; 0x0e8c
    mov al, byte [bx + 0xc5]         ; 0x0e8d
    sub ah, ah                       ; 0x0e91
    push ax                          ; 0x0e93
    mov al, byte [bx + 0xc4]         ; 0x0e94
    sub ah, ah                       ; 0x0e98
    push ax                          ; 0x0e9a
    mov ax, 0xff                     ; 0x0e9b
    push ax                          ; 0x0e9e
    call ds_dispatch_f0a3            ; 0x0e9f
    add sp, byte 8                   ; 0x0ea2
    ret                              ; 0x0ea5
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
math_loc_0f1d:
    mov ax, 0                        ; 0x0f1d
    call ds_dispatch_f40b            ; 0x0f20
    les bx, word [0x0002]            ; 0x0f23
    mov ax, word [es:bx]             ; 0x0f27
    mov dx, word [es:bx + 0x2]       ; 0x0f2a
    sub ax, word [data_908a]         ; 0x0f2e
    sbb dx, word [data_908c]         ; 0x0f32
    push ax                          ; 0x0f36
    push dx                          ; 0x0f37
    mov ax, word [data_9192]         ; 0x0f38
    cwd                              ; 0x0f3b
    mov cx, ax                       ; 0x0f3c
    mov bx, dx                       ; 0x0f3e
    pop dx                           ; 0x0f40
    pop ax                           ; 0x0f41
    cmp dx, bx                       ; 0x0f42
    jl short @..math_loc_0f1d.l1     ; 0x0f44
    jne short @..math_loc_0f1d.l2    ; 0x0f46
    cmp ax, cx                       ; 0x0f48
    jae short @..math_loc_0f1d.l2    ; 0x0f4a
@..math_loc_0f1d.l1:
    jmp short @..math_loc_0f1d.l3    ; 0x0f4c
@..math_loc_0f1d.l2:
    les bx, word [0x0002]            ; 0x0f4e
    mov ax, word [es:bx]             ; 0x0f52
    mov dx, word [es:bx + 0x2]       ; 0x0f55
    mov word [data_908c], dx         ; 0x0f59
    mov word [data_908a], ax         ; 0x0f5d
    mov ax, 1                        ; 0x0f60
    ret                              ; 0x0f63
@..math_loc_0f1d.l3:
    mov ax, 0                        ; 0x0f64
    ret                              ; 0x0f67
math_loc_0f68:
    mov ax, 0                        ; 0x0f68
    call ds_dispatch_f40b            ; 0x0f6b
    call math_loc_0f1d               ; 0x0f6e
    test ax, ax                      ; 0x0f71
    je short @..math_loc_0f68.l1     ; 0x0f73
    mov ax, word [data_82e8]         ; 0x0f75
    inc ax                           ; 0x0f78
    mov cx, 2                        ; 0x0f79
    cwd                              ; 0x0f7c
    idiv cx                          ; 0x0f7d
    mov word [data_82e8], dx         ; 0x0f7f
    call loc_676c                    ; 0x0f83
    mov ax, 1                        ; 0x0f86
    ret                              ; 0x0f89
@..math_loc_0f68.l1:
    mov ax, 0                        ; 0x0f8a
    ret                              ; 0x0f8d
api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x0f8e
    call ds_dispatch_f40b            ; 0x0f91
    call ds_dispatch_ec17            ; 0x0f94
    mov ax, word [bp + 0x4]          ; 0x0f97
    cwd                              ; 0x0f9a
    les bx, word [0x0002]            ; 0x0f9b
    mov cx, word [es:bx]             ; 0x0f9f
    mov bx, word [es:bx + 0x2]       ; 0x0fa2
    add ax, cx                       ; 0x0fa6
    adc dx, bx                       ; 0x0fa8
    mov word [bp - 0x0002], dx       ; 0x0faa
    mov word [bp - 0x0004], ax       ; 0x0fad
@..api_idx_0006_2.l1:
    les bx, word [0x0002]            ; 0x0fb0
    mov ax, word [es:bx]             ; 0x0fb4
    mov dx, word [es:bx + 0x2]       ; 0x0fb7
    cmp dx, word [bp - 0x0002]       ; 0x0fbb
    jg short @..api_idx_0006_2.l2    ; 0x0fbe
    jne short @..api_idx_0006_2.l3   ; 0x0fc0
    cmp ax, word [bp - 0x0004]       ; 0x0fc2
    jb short @..api_idx_0006_2.l3    ; 0x0fc5
@..api_idx_0006_2.l2:
    jmp short @..api_idx_0006_2.l5   ; 0x0fc7
@..api_idx_0006_2.l3:
    call ds_dispatch_baef            ; 0x0fc9
    test ax, ax                      ; 0x0fcc
    je short @..api_idx_0006_2.l4    ; 0x0fce
    ret                              ; 0x0fd0
@..api_idx_0006_2.l4:
    call math_loc_0f68               ; 0x0fd1
    not ax                           ; 0x0fd4
    push ax                          ; 0x0fd6
    call loc_0ea6                    ; 0x0fd7
    pop cx                           ; 0x0fda
    jmp short @..api_idx_0006_2.l1   ; 0x0fdb
@..api_idx_0006_2.l5:
    ret                              ; 0x0fdd
api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x0fde
    call ds_dispatch_f40b            ; 0x0fe1
    mov ax, 0x98                     ; 0x0fe4
    push ax                          ; 0x0fe7
    mov ax, 0x13f                    ; 0x0fe8
    push ax                          ; 0x0feb
    mov ax, 0x92                     ; 0x0fec
    push ax                          ; 0x0fef
    mov ax, 0                        ; 0x0ff0
    push ax                          ; 0x0ff3
    call ds_dispatch_e8da            ; 0x0ff4
    add sp, byte 8                   ; 0x0ff7
    push word [bp + 0x4]             ; 0x0ffa
    call ds_dispatch_fa90            ; 0x0ffd
    pop cx                           ; 0x1000
    mov cx, 6                        ; 0x1001
    imul cx                          ; 0x1004
    mov cx, 2                        ; 0x1006
    cwd                              ; 0x1009
    idiv cx                          ; 0x100a
    mov cx, ax                       ; 0x100c
    mov ax, 0xa1                     ; 0x100e
    sub ax, cx                       ; 0x1011
    mov word [bp - 0x0002], ax       ; 0x1013
    push word [bp + 0x4]             ; 0x1016
    call ds_dispatch_fa90            ; 0x1019
    pop cx                           ; 0x101c
    mov cx, 6                        ; 0x101d
    imul cx                          ; 0x1020
    mov cx, ax                       ; 0x1022
    mov ax, word [bp - 0x0002]       ; 0x1024
    add cx, ax                       ; 0x1027
    mov word [bp - 0x0004], cx       ; 0x1029
    mov ax, 0x98                     ; 0x102c
    push ax                          ; 0x102f
    push cx                          ; 0x1030
    mov ax, 0x92                     ; 0x1031
    push ax                          ; 0x1034
    push word [bp - 0x0002]          ; 0x1035
    call ds_dispatch_e928            ; 0x1038
    add sp, byte 8                   ; 0x103b
    mov word [bp - 0x0006], dx       ; 0x103e
    mov word [bp - 0x0008], ax       ; 0x1041
    mov ax, 0                        ; 0x1044
    push ax                          ; 0x1047
    mov ax, 0x16                     ; 0x1048
    push ax                          ; 0x104b
    call ds_dispatch_e823            ; 0x104c
    add sp, byte 4                   ; 0x104f
    mov ax, 0x92                     ; 0x1052
    push ax                          ; 0x1055
    push word [bp - 0x0002]          ; 0x1056
    call ds_dispatch_e809            ; 0x1059
    add sp, byte 4                   ; 0x105c
    mov ax, 0                        ; 0x105f
    push ax                          ; 0x1062
    push word [bp + 0x4]             ; 0x1063
    call ds_dispatch_e84e            ; 0x1066
    add sp, byte 4                   ; 0x1069
    mov ax, 0x98                     ; 0x106c
    push ax                          ; 0x106f
    push word [bp - 0x0004]          ; 0x1070
    mov ax, 0x92                     ; 0x1073
    push ax                          ; 0x1076
    push word [bp - 0x0002]          ; 0x1077
    call ds_dispatch_e8da            ; 0x107a
    add sp, byte 8                   ; 0x107d
    mov ax, 1                        ; 0x1080
    push ax                          ; 0x1083
    push word [bp - 0x0006]          ; 0x1084
    push word [bp - 0x0008]          ; 0x1087
    call ds_dispatch_e94f            ; 0x108a
    add sp, byte 6                   ; 0x108d
    call ds_dispatch_ec17            ; 0x1090
    ret                              ; 0x1093
api_idx_0050:
    mov ax, 0xffb0                   ; 0x1094
    call ds_dispatch_f40b            ; 0x1097
    lea ax, word [bp - 0x0050]       ; 0x109a
    push ax                          ; 0x109d
    push word [bp + 0x4]             ; 0x109e
    call ds_dispatch_b53b            ; 0x10a1
    add sp, byte 4                   ; 0x10a4
    lea ax, word [bp - 0x0050]       ; 0x10a7
    push ax                          ; 0x10aa
    call api_idx_0008_2              ; 0x10ab
    pop cx                           ; 0x10ae
    ret                              ; 0x10af
math_loc_10b0:
    mov ax, 0                        ; 0x10b0
    call ds_dispatch_f40b            ; 0x10b3
    mov ax, 0x248                    ; 0x10b6
    imul word [bp + 0x4]             ; 0x10b9
    mov bx, ax                       ; 0x10bc
    cmp byte [bx + 0x5e2f], 3        ; 0x10be
    jae short @..math_loc_10b0.l1    ; 0x10c3
    mov al, byte [bx + 0x5e2c]       ; 0x10c5
    sub ah, ah                       ; 0x10c9
    add ax, strict word 8            ; 0x10cb
    push ax                          ; 0x10ce
    call ds_dispatch_b7e0            ; 0x10cf
    pop cx                           ; 0x10d2
@..math_loc_10b0.l1:
    mov ax, 0x248                    ; 0x10d3
    imul word [bp + 0x4]             ; 0x10d6
    mov bx, ax                       ; 0x10d9
    mov byte [bx + 0x5e2f], 3        ; 0x10db
    mov word [bx + 0x5c0c], 0        ; 0x10e0
    mov word [bx + 0x5c10], 0        ; 0x10e6
    cmp word [bp + 0x6], byte 0      ; 0x10ec
    jle short @..math_loc_10b0.l2    ; 0x10f0
    mov ax, 1                        ; 0x10f2
    push ax                          ; 0x10f5
    push word [bp + 0x4]             ; 0x10f6
    call ds_dispatch_cb3a            ; 0x10f9
    add sp, byte 4                   ; 0x10fc
    cmp word [bp + 0x6], byte 1      ; 0x10ff
    jle short @..math_loc_10b0.l2    ; 0x1103
    mov ax, 8                        ; 0x1105
    push ax                          ; 0x1108
    call ds_dispatch_b75e            ; 0x1109
    pop cx                           ; 0x110c
@..math_loc_10b0.l2:
    ret                              ; 0x110d
api_idx_0002_9:
    mov ax, 0xfffe                   ; 0x110e
    call ds_dispatch_f40b            ; 0x1111
    call loc_676c                    ; 0x1114
    push word [bp + 0x4]             ; 0x1117
    call api_idx_0050                ; 0x111a
    pop cx                           ; 0x111d
    mov word [bp - 0x0002], 0        ; 0x111e
    jmp short @..api_idx_0002_9.l2   ; 0x1123
@..api_idx_0002_9.l1:
    mov ax, 2                        ; 0x1125
    push ax                          ; 0x1128
    push word [bp - 0x0002]          ; 0x1129
    call math_loc_10b0               ; 0x112c
    add sp, byte 4                   ; 0x112f
    inc word [bp - 0x0002]           ; 0x1132
@..api_idx_0002_9.l2:
    mov ax, word [bp - 0x0002]       ; 0x1135
    cmp ax, word [data_69c8]         ; 0x1138
    jl short @..api_idx_0002_9.l1    ; 0x113c
    mov ax, word [data_905a]         ; 0x113e
    shl ax, 1                        ; 0x1141
    push ax                          ; 0x1143
    call api_idx_0006_2              ; 0x1144
    pop cx                           ; 0x1147
    mov ax, 0x98                     ; 0x1148
    push ax                          ; 0x114b
    mov ax, 0x13f                    ; 0x114c
    push ax                          ; 0x114f
    mov ax, 0x92                     ; 0x1150
    push ax                          ; 0x1153
    mov ax, 0                        ; 0x1154
    push ax                          ; 0x1157
    call ds_dispatch_e8da            ; 0x1158
    add sp, byte 8                   ; 0x115b
    mov word [data_830a], 8          ; 0x115e
    ret                              ; 0x1164
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
api_idx_0002_10:
    mov ax, 0xfffe                   ; 0x1206
    call ds_dispatch_f40b            ; 0x1209
    mov word [bp - 0x0002], 0        ; 0x120c
@..api_idx_0002_10.l1:
    mov ax, word [bp + 0x4]          ; 0x1211
    mov cx, word [bp - 0x0002]       ; 0x1214
    shl cx, 1                        ; 0x1217
    shl cx, 1                        ; 0x1219
    mov bx, cx                       ; 0x121b
    sub word [bx - 0x7d0e], ax       ; 0x121d
    cmp word [bx - 0x7d0e], byte 0   ; 0x1221
    jg short @..api_idx_0002_10.l2   ; 0x1226
    mov word [bx - 0x7d0e], 0        ; 0x1228
    mov word [bx - 0x7d0c], 0        ; 0x122e
@..api_idx_0002_10.l2:
    inc word [bp - 0x0002]           ; 0x1234
    mov ax, word [bp - 0x0002]       ; 0x1237
    cmp ax, strict word 6            ; 0x123a
    jl short @..api_idx_0002_10.l1   ; 0x123d
    ret                              ; 0x123f
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
api_idx_0004:
    mov ax, 0xfffc                   ; 0x1308
    call ds_dispatch_f40b            ; 0x130b
    mov word [bp - 0x0004], 0        ; 0x130e
    mov word [bp - 0x0002], 0        ; 0x1313
    jmp short @..api_idx_0004.l2     ; 0x1318
@..api_idx_0004.l1:
    push word [bp - 0x0002]          ; 0x131a
    call ds_dispatch_ca85            ; 0x131d
    pop cx                           ; 0x1320
    or word [bp - 0x0004], ax        ; 0x1321
    inc word [bp - 0x0002]           ; 0x1324
@..api_idx_0004.l2:
    mov ax, word [bp - 0x0002]       ; 0x1327
    cmp ax, word [data_69c8]         ; 0x132a
    jl short @..api_idx_0004.l1      ; 0x132e
    cmp word [bp - 0x0004], byte 0   ; 0x1330
    je short @..api_idx_0004.l3      ; 0x1334
    jmp near @..api_idx_0004.l5      ; 0x1336
@..api_idx_0004.l3:
    mov ax, 3                        ; 0x1339
    push ax                          ; 0x133c
    mov ax, word [data_830c]         ; 0x133d
    mov cx, 4                        ; 0x1340
    shl ax, cl                       ; 0x1343
    add ax, 0x8d14                   ; 0x1345
    push ax                          ; 0x1348
    call ds_dispatch_ec74            ; 0x1349
    add sp, byte 4                   ; 0x134c
    test ax, ax                      ; 0x134f
    jne short @..api_idx_0004.l4     ; 0x1351
    mov word [data_8f3e], 0xa        ; 0x1353
    mov word [data_8f42], 7          ; 0x1359
    mov word [data_8f40], 2          ; 0x135f
@..api_idx_0004.l4:
    mov ax, 4                        ; 0x1365
    push ax                          ; 0x1368
    call ds_dispatch_b7a9            ; 0x1369
    pop cx                           ; 0x136c
    mov word [data_82ee], ax         ; 0x136d
    mov bx, word [data_0e14]         ; 0x1370
    mov si, word [data_8f3e]         ; 0x1374
    mov al, byte [bx + si + 0x490]   ; 0x1378
    sub ah, ah                       ; 0x137c
    add ax, word [data_8f42]         ; 0x137e
    mov word [data_8f46], ax         ; 0x1382
    mov al, byte [bx + si + 0x4a0]   ; 0x1385
    sub ah, ah                       ; 0x1389
    add ax, word [data_8f40]         ; 0x138b
    mov word [data_8f44], ax         ; 0x138f
    push ax                          ; 0x1392
    push word [data_8f46]            ; 0x1393
    mov ax, data_8f3e                ; 0x1397
    push ax                          ; 0x139a
    mov ax, data_8f40                ; 0x139b
    push ax                          ; 0x139e
    mov ax, data_8f42                ; 0x139f
    push ax                          ; 0x13a2
    call api_idx_0004_6              ; 0x13a3
    add sp, byte 0x0a                ; 0x13a6
    mov word [data_91aa], 1          ; 0x13a9
    mov word [data_91a8], 1          ; 0x13af
    call loc_12a2                    ; 0x13b5
    mov ax, 1                        ; 0x13b8
    ret                              ; 0x13bb
@..api_idx_0004.l5:
    mov ax, 0                        ; 0x13bc
    ret                              ; 0x13bf
math_loc_13c0:
    mov ax, 0                        ; 0x13c0
    call ds_dispatch_f40b            ; 0x13c3
    mov word [data_919e], 0          ; 0x13c6
    mov ax, word [data_830c]         ; 0x13cc
    cmp ax, word [data_8f28]         ; 0x13cf
    jne short @..math_loc_13c0.l1    ; 0x13d3
    mov ax, word [data_8f3e]         ; 0x13d5
    cmp ax, word [data_8f2a]         ; 0x13d8
    jne short @..math_loc_13c0.l1    ; 0x13dc
    mov ax, word [data_8f42]         ; 0x13de
    cmp ax, word [data_8f2e]         ; 0x13e1
    jne short @..math_loc_13c0.l1    ; 0x13e5
    mov ax, word [data_8f40]         ; 0x13e7
    cmp ax, word [data_8f2c]         ; 0x13ea
    jne short @..math_loc_13c0.l1    ; 0x13ee
    mov word [data_919e], 1          ; 0x13f0
@..math_loc_13c0.l1:
    ret                              ; 0x13f6
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x13f7
    call ds_dispatch_f40b            ; 0x13fa
    cmp word [data_919e], byte 0     ; 0x13fd
    je short @..api_idx_0004_2.l1    ; 0x1402
    mov ax, word [data_8f3e]         ; 0x1404
    mov word [data_8f2a], ax         ; 0x1407
    mov ax, word [data_8f42]         ; 0x140a
    mov word [data_8f2e], ax         ; 0x140d
    mov ax, word [data_8f40]         ; 0x1410
    mov word [data_8f2c], ax         ; 0x1413
    ret                              ; 0x1416
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
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x1504
    call ds_dispatch_f40b            ; 0x1507
    mov ax, word [data_8f3e]         ; 0x150a
    mov cx, 6                        ; 0x150d
    shl ax, cl                       ; 0x1510
    mov cx, word [data_8f40]         ; 0x1512
    shl cx, 1                        ; 0x1516
    shl cx, 1                        ; 0x1518
    shl cx, 1                        ; 0x151a
    add ax, cx                       ; 0x151c
    add ax, word [data_8f42]         ; 0x151e
    mov word [bp - 0x0002], ax       ; 0x1522
    mov word [bp - 0x0004], 0        ; 0x1525
    push ax                          ; 0x152a
    mov ax, word [data_0e14]         ; 0x152b
    add ax, 0x9b0                    ; 0x152e
    push ax                          ; 0x1531
    call ds_dispatch_ec74            ; 0x1532
    add sp, byte 4                   ; 0x1535
    test ax, ax                      ; 0x1538
    je short @..api_idx_0004_3.l2    ; 0x153a
    mov ax, word [data_830c]         ; 0x153c
    jmp short @..api_idx_0004_3.l1   ; 0x153f
    cmp word [data_8f3e], byte 0x0c  ; 0x1541
    jle short loc_154d               ; 0x1546
    mov word [bp - 0x0004], 1        ; 0x1548
    jmp short @..api_idx_0004_3.l2   ; 0x154d
    mov word [bp - 0x0004], 1        ; 0x154f
    jmp short @..api_idx_0004_3.l2   ; 0x1554
    xchg si, ax                      ; 0x1556
    db 0x65, 0xcd, 0x65 ; int 0x65
    xchg si, ax                      ; 0x155a
    db 0x65, 0xcd, 0x65 ; int 0x65
    int 0x65                         ; 0x155e
    int 0x65                         ; 0x1560
    int 0x65                         ; 0x1562
    xchg si, ax                      ; 0x1564
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0xcd, 0x65 ; int 0x65
    int 0x65                         ; 0x1570
    mov byte [di - 0x006a], ah       ; 0x1572
    db 0x65
@..api_idx_0004_3.l1:
    sub ax, strict word 0xf          ; 0x1576
    cmp ax, strict word 0x10         ; 0x1579
    jae short @..api_idx_0004_3.l2   ; 0x157c
    xchg bx, ax                      ; 0x157e
    shl bx, 1                        ; 0x157f
    jmp [cs:bx + 0x659d]             ; 0x1581
@..api_idx_0004_3.l2:
    push word [bp - 0x0002]          ; 0x1586
    mov ax, word [data_0e14]         ; 0x1589
    add ax, 0x8b0                    ; 0x158c
    push ax                          ; 0x158f
    call ds_dispatch_ec74            ; 0x1590
    add sp, byte 4                   ; 0x1593
    test ax, ax                      ; 0x1596
    je short @..api_idx_0004_3.l6    ; 0x1598
    mov ax, word [data_830c]         ; 0x159a
    jmp short @..api_idx_0004_3.l5   ; 0x159d
@..api_idx_0004_3.l3:
    mov word [bp - 0x0004], 1        ; 0x159f
    jmp short @..api_idx_0004_3.l6   ; 0x15a4
@..api_idx_0004_3.l4:
    mov word [bp - 0x0004], 2        ; 0x15a6
    jmp short @..api_idx_0004_3.l6   ; 0x15ab
@..api_idx_0004_3.l5:
    cmp ax, strict word 8            ; 0x15ad
    je short @..api_idx_0004_3.l3    ; 0x15b0
    cmp ax, strict word 9            ; 0x15b2
    je short @..api_idx_0004_3.l3    ; 0x15b5
    cmp ax, strict word 0xa          ; 0x15b7
    je short @..api_idx_0004_3.l3    ; 0x15ba
    cmp ax, strict word 0xb          ; 0x15bc
    je short @..api_idx_0004_3.l3    ; 0x15bf
    cmp ax, strict word 0xc          ; 0x15c1
    je short @..api_idx_0004_3.l3    ; 0x15c4
    cmp ax, strict word 0x1b         ; 0x15c6
    je short @..api_idx_0004_3.l4    ; 0x15c9
@..api_idx_0004_3.l6:
    push word [bp - 0x0002]          ; 0x15cb
    mov ax, word [data_0e14]         ; 0x15ce
    add ax, 0x930                    ; 0x15d1
    push ax                          ; 0x15d4
    call ds_dispatch_ec74            ; 0x15d5
    add sp, byte 4                   ; 0x15d8
    test ax, ax                      ; 0x15db
    je short @..api_idx_0004_3.l13   ; 0x15dd
    mov ax, word [data_830c]         ; 0x15df
    jmp short @..api_idx_0004_3.l12  ; 0x15e2
@..api_idx_0004_3.l7:
    mov word [bp - 0x0004], 3        ; 0x15e4
    jmp short @..api_idx_0004_3.l13  ; 0x15e9
@..api_idx_0004_3.l8:
    jmp short @..api_idx_0004_3.l13  ; 0x15eb
@..api_idx_0004_3.l9:
    mov word [bp - 0x0004], 1        ; 0x15ed
    jmp short @..api_idx_0004_3.l13  ; 0x15f2
@..api_idx_0004_3.l10:
    mov word [bp - 0x0004], 2        ; 0x15f4
    jmp short @..api_idx_0004_3.l13  ; 0x15f9
@..api_idx_0004_3.l11:
    mov word [bp - 0x0004], 4        ; 0x15fb
    jmp short @..api_idx_0004_3.l13  ; 0x1600
@..api_idx_0004_3.l12:
    cmp ax, strict word 0            ; 0x1602
    je short @..api_idx_0004_3.l7    ; 0x1605
    cmp ax, strict word 0xa          ; 0x1607
    je short @..api_idx_0004_3.l8    ; 0x160a
    cmp ax, strict word 0xe          ; 0x160c
    je short @..api_idx_0004_3.l9    ; 0x160f
    cmp ax, strict word 0x13         ; 0x1611
    je short @..api_idx_0004_3.l9    ; 0x1614
    cmp ax, strict word 0x17         ; 0x1616
    je short @..api_idx_0004_3.l10   ; 0x1619
    cmp ax, strict word 0x19         ; 0x161b
    je short @..api_idx_0004_3.l8    ; 0x161e
    cmp ax, strict word 0x1f         ; 0x1620
    je short @..api_idx_0004_3.l9    ; 0x1623
    jmp short @..api_idx_0004_3.l11  ; 0x1625
@..api_idx_0004_3.l13:
    mov ax, word [bp - 0x0004]       ; 0x1627
    ret                              ; 0x162a
api_idx_000e:
    mov ax, 0xfff2                   ; 0x162b
    call ds_dispatch_f40b            ; 0x162e
    call math_loc_13c0               ; 0x1631
    call loc_12a2                    ; 0x1634
    mov ax, word [data_8f3e]         ; 0x1637
    mov cx, 6                        ; 0x163a
    shl ax, cl                       ; 0x163d
    mov cx, word [data_8f40]         ; 0x163f
    shl cx, 1                        ; 0x1643
    shl cx, 1                        ; 0x1645
    shl cx, 1                        ; 0x1647
    add ax, cx                       ; 0x1649
    add ax, word [data_8f42]         ; 0x164b
    mov word [bp - 0x0002], ax       ; 0x164f
    mov word [data_91aa], 1          ; 0x1652
    lea ax, word [bp - 0x000c]       ; 0x1658
    push ax                          ; 0x165b
    lea ax, word [bp - 0x000a]       ; 0x165c
    push ax                          ; 0x165f
    push word [bp - 0x0002]          ; 0x1660
    call loc_2f55                    ; 0x1663
    add sp, byte 6                   ; 0x1666
    cmp word [bp - 0x000a], byte 1   ; 0x1669
    je short @..api_idx_000e.l1      ; 0x166d
    cmp word [bp - 0x000a], byte 2   ; 0x166f
    jne short @..api_idx_000e.l2     ; 0x1673
@..api_idx_000e.l1:
    mov ax, word [bp - 0x000c]       ; 0x1675
    cmp ax, word [bp + 0x4]          ; 0x1678
    jne short @..api_idx_000e.l2     ; 0x167b
    mov word [data_91aa], 0          ; 0x167d
@..api_idx_000e.l2:
    mov ax, 1                        ; 0x1683
    push ax                          ; 0x1686
    push word [bp + 0x4]             ; 0x1687
    call loc_1240                    ; 0x168a
    add sp, byte 4                   ; 0x168d
    push word [data_8f44]            ; 0x1690
    push word [data_8f46]            ; 0x1694
    mov ax, data_8f3e                ; 0x1698
    push ax                          ; 0x169b
    mov ax, data_8f40                ; 0x169c
    push ax                          ; 0x169f
    mov ax, data_8f42                ; 0x16a0
    push ax                          ; 0x16a3
    call api_idx_0004_6              ; 0x16a4
    add sp, byte 0x0a                ; 0x16a7
    test ax, ax                      ; 0x16aa
    je short @..api_idx_000e.l3      ; 0x16ac
    mov ax, 4                        ; 0x16ae
    push ax                          ; 0x16b1
    mov ax, 0x7e6                    ; 0x16b2
    push ax                          ; 0x16b5
    call api_idx_0002_9              ; 0x16b6
    add sp, byte 4                   ; 0x16b9
    mov ax, 1                        ; 0x16bc
    ret                              ; 0x16bf
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
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x17ee
    call ds_dispatch_f40b            ; 0x17f1
    mov word [data_91ac], 0x7e4      ; 0x17f4
    mov ax, word [data_82ee]         ; 0x17fa
    add ax, word [bp + 0x4]          ; 0x17fd
    add ax, strict word 4            ; 0x1800
    mov cx, 4                        ; 0x1803
    cwd                              ; 0x1806
    idiv cx                          ; 0x1807
    mov word [bp - 0x0004], dx       ; 0x1809
    push word [data_8f44]            ; 0x180c
    push word [data_8f46]            ; 0x1810
    push word [data_8f40]            ; 0x1814
    push word [data_8f42]            ; 0x1818
    push word [data_8f3e]            ; 0x181c
    push dx                          ; 0x1820
    call loc_1165                    ; 0x1821
    add sp, byte 0x0c                ; 0x1824
    mov word [bp - 0x0002], ax       ; 0x1827
    mov ax, word [bp - 0x0004]       ; 0x182a
    shl ax, 1                        ; 0x182d
    mov bx, ax                       ; 0x182f
    mov ax, word [bx - 0x7302]       ; 0x1831
    jmp near @..api_idx_0004_4.l16   ; 0x1835
@..api_idx_0004_4.l1:
    cmp word [bp - 0x0002], byte 2   ; 0x1838
    jl short @..api_idx_0004_4.l2    ; 0x183c
    cmp word [bp - 0x0002], byte 5   ; 0x183e
    jne short @..api_idx_0004_4.l4   ; 0x1842
@..api_idx_0004_4.l2:
    push word [bp - 0x0004]          ; 0x1844
    call api_idx_000e                ; 0x1847
    pop cx                           ; 0x184a
    test ax, ax                      ; 0x184b
    je short @..api_idx_0004_4.l3    ; 0x184d
    ret                              ; 0x184f
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
api_idx_000a:
    mov ax, 0xfff6                   ; 0x195c
    call ds_dispatch_f40b            ; 0x195f
    mov ax, 0x248                    ; 0x1962
    imul word [bp + 0x4]             ; 0x1965
    mov bx, ax                       ; 0x1968
    cmp byte [bx + 0x5e2f], 3        ; 0x196a
    jb short @..api_idx_000a.l1      ; 0x196f
    jmp near @..api_idx_000a.l24     ; 0x1971
@..api_idx_000a.l1:
    cmp byte [bx + 0x5d60], 0        ; 0x1974
    ja short @..api_idx_000a.l2      ; 0x1979
    jmp near @..api_idx_000a.l11     ; 0x197b
@..api_idx_000a.l2:
    mov ax, 0x64                     ; 0x197e
    push ax                          ; 0x1981
    call ds_dispatch_b7a9            ; 0x1982
    pop cx                           ; 0x1985
    test ax, ax                      ; 0x1986
    je short @..api_idx_000a.l3      ; 0x1988
    jmp near @..api_idx_000a.l8      ; 0x198a
@..api_idx_000a.l3:
    mov ax, 6                        ; 0x198d
    push ax                          ; 0x1990
    call ds_dispatch_b7a9            ; 0x1991
    pop cx                           ; 0x1994
    jmp short @..api_idx_000a.l4     ; 0x1995
    mov word [bp - 0x0008], 3        ; 0x1997
    jmp short @..api_idx_000a.l5     ; 0x199c
    mov word [bp - 0x0008], 4        ; 0x199e
    jmp short @..api_idx_000a.l5     ; 0x19a3
    mov word [bp - 0x0008], 5        ; 0x19a5
    jmp short @..api_idx_000a.l5     ; 0x19aa
    mov word [bp - 0x0008], 7        ; 0x19ac
    jmp short @..api_idx_000a.l5     ; 0x19b1
    mov word [bp - 0x0008], 8        ; 0x19b3
    jmp short @..api_idx_000a.l5     ; 0x19b8
    mov word [bp - 0x0008], 9        ; 0x19ba
    jmp short @..api_idx_000a.l5     ; 0x19bf
    fisubr word [bx + di - 0x001b]   ; 0x19c1
    imul bp, sp, 0xf369              ; 0x19c4
    imul di, dx, 0x169               ; 0x19c8
    db 0x6a
@..api_idx_000a.l4:
    cmp ax, strict word 6            ; 0x19cd
    jae short @..api_idx_000a.l5     ; 0x19d0
    xchg bx, ax                      ; 0x19d2
    shl bx, 1                        ; 0x19d3
    jmp [cs:bx + 0x6a08]             ; 0x19d5
@..api_idx_000a.l5:
    mov ax, 0x248                    ; 0x19da
    imul word [bp + 0x4]             ; 0x19dd
    add ax, word [bp - 0x0008]       ; 0x19e0
    mov bx, ax                       ; 0x19e3
    mov byte [bx + 0x5d5a], 0xff     ; 0x19e5
    cmp word [bp - 0x0008], byte 5   ; 0x19ea
    jne short @..api_idx_000a.l6     ; 0x19ee
    mov ax, 2                        ; 0x19f0
    push ax                          ; 0x19f3
    call ds_dispatch_b7a9            ; 0x19f4
    pop cx                           ; 0x19f7
    push ax                          ; 0x19f8
    mov ax, 0x248                    ; 0x19f9
    imul word [bp + 0x4]             ; 0x19fc
    mov bx, ax                       ; 0x19ff
    mov al, byte [bx + 0x5e32]       ; 0x1a01
    sub ah, ah                       ; 0x1a05
    mov cx, ax                       ; 0x1a07
    pop ax                           ; 0x1a09
    add ax, cx                       ; 0x1a0a
    inc ax                           ; 0x1a0c
    mov byte [bx + 0x5e32], al       ; 0x1a0d
@..api_idx_000a.l6:
    mov ax, 7                        ; 0x1a11
    push ax                          ; 0x1a14
    call ds_dispatch_b7a9            ; 0x1a15
    pop cx                           ; 0x1a18
    mov word [bp - 0x000a], ax       ; 0x1a19
    mov ax, 0xa                      ; 0x1a1c
    push ax                          ; 0x1a1f
    call ds_dispatch_b7a9            ; 0x1a20
    pop cx                           ; 0x1a23
    test ax, ax                      ; 0x1a24
    jne short @..api_idx_000a.l7     ; 0x1a26
    mov ax, 0x248                    ; 0x1a28
    imul word [bp + 0x4]             ; 0x1a2b
    add ax, word [bp - 0x000a]       ; 0x1a2e
    mov bx, ax                       ; 0x1a31
    cmp byte [bx + 0x5d64], 1        ; 0x1a33
    jbe short @..api_idx_000a.l7     ; 0x1a38
    dec byte [bx + 0x5d64]           ; 0x1a3a
@..api_idx_000a.l7:
    mov ax, 0xa                      ; 0x1a3e
    push ax                          ; 0x1a41
    call ds_dispatch_b7a9            ; 0x1a42
    pop cx                           ; 0x1a45
    test ax, ax                      ; 0x1a46
    jne short @..api_idx_000a.l8     ; 0x1a48
    mov ax, 0x248                    ; 0x1a4a
    imul word [bp + 0x4]             ; 0x1a4d
    mov bx, ax                       ; 0x1a50
    cmp word [bx + 0x5c0e], byte 2   ; 0x1a52
    jle short @..api_idx_000a.l8     ; 0x1a57
    mov ax, 3                        ; 0x1a59
    push ax                          ; 0x1a5c
    call ds_dispatch_b7a9            ; 0x1a5d
    pop cx                           ; 0x1a60
    push ax                          ; 0x1a61
    mov ax, 0x248                    ; 0x1a62
    imul word [bp + 0x4]             ; 0x1a65
    mov bx, ax                       ; 0x1a68
    pop ax                           ; 0x1a6a
    sub word [bx + 0x5c0e], ax       ; 0x1a6b
@..api_idx_000a.l8:
    mov ax, 0x248                    ; 0x1a6f
    imul word [bp + 0x4]             ; 0x1a72
    mov bx, ax                       ; 0x1a75
    mov al, byte [bx + 0x5e30]       ; 0x1a77
    sub ah, ah                       ; 0x1a7b
    imul word [bp + 0xa]             ; 0x1a7d
    push ax                          ; 0x1a80
    mov al, byte [bx + 0x5e31]       ; 0x1a81
    sub ah, ah                       ; 0x1a85
    imul word [bp + 0xa]             ; 0x1a87
    mov cx, ax                       ; 0x1a8a
    pop ax                           ; 0x1a8c
    sub ax, cx                       ; 0x1a8d
    push ax                          ; 0x1a8f
    mov al, byte [bx + 0x5e32]       ; 0x1a90
    sub ah, ah                       ; 0x1a94
    imul word [bp + 0xa]             ; 0x1a96
    mov cx, ax                       ; 0x1a99
    pop ax                           ; 0x1a9b
    sub ax, cx                       ; 0x1a9c
    add word [bx + 0x5c0c], ax       ; 0x1a9e
    mov ax, word [bx + 0x5c0c]       ; 0x1aa2
    cmp ax, word [bx + 0x5c0e]       ; 0x1aa6
    jle short @..api_idx_000a.l9     ; 0x1aaa
    mov ax, word [bx + 0x5c0e]       ; 0x1aac
    mov word [bx + 0x5c0c], ax       ; 0x1ab0
@..api_idx_000a.l9:
    cmp word [bx + 0x5c0c], byte 0   ; 0x1ab4
    jg short @..api_idx_000a.l10     ; 0x1ab9
    mov ax, 0                        ; 0x1abb
    push ax                          ; 0x1abe
    push word [bp + 0x4]             ; 0x1abf
    call math_loc_10b0               ; 0x1ac2
    add sp, byte 4                   ; 0x1ac5
@..api_idx_000a.l10:
    jmp near @..api_idx_000a.l23     ; 0x1ac8
@..api_idx_000a.l11:
    push word [bp + 0x6]             ; 0x1acb
    call ds_dispatch_b7a9            ; 0x1ace
    pop cx                           ; 0x1ad1
    push ax                          ; 0x1ad2
    mov ax, 0x248                    ; 0x1ad3
    imul word [bp + 0x4]             ; 0x1ad6
    mov bx, ax                       ; 0x1ad9
    mov al, byte [bx + 0x5e30]       ; 0x1adb
    sub ah, ah                       ; 0x1adf
    imul word [bp + 0xa]             ; 0x1ae1
    mov cx, ax                       ; 0x1ae4
    pop ax                           ; 0x1ae6
    add ax, cx                       ; 0x1ae7
    push ax                          ; 0x1ae9
    mov al, byte [bx + 0x5e31]       ; 0x1aea
    sub ah, ah                       ; 0x1aee
    imul word [bp + 0xa]             ; 0x1af0
    mov cx, ax                       ; 0x1af3
    pop ax                           ; 0x1af5
    sub ax, cx                       ; 0x1af6
    push ax                          ; 0x1af8
    mov al, byte [bx + 0x5e32]       ; 0x1af9
    sub ah, ah                       ; 0x1afd
    imul word [bp + 0xa]             ; 0x1aff
    mov cx, ax                       ; 0x1b02
    pop ax                           ; 0x1b04
    sub ax, cx                       ; 0x1b05
    add word [bx + 0x5c0c], ax       ; 0x1b07
    mov ax, word [bx + 0x5c0c]       ; 0x1b0b
    cmp ax, word [bx + 0x5c0e]       ; 0x1b0f
    jle short @..api_idx_000a.l12    ; 0x1b13
    mov ax, word [bx + 0x5c0e]       ; 0x1b15
    mov word [bx + 0x5c0c], ax       ; 0x1b19
@..api_idx_000a.l12:
    cmp word [bx + 0x5c0c], byte 0   ; 0x1b1d
    jg short @..api_idx_000a.l13     ; 0x1b22
    mov ax, 0                        ; 0x1b24
    push ax                          ; 0x1b27
    push word [bp + 0x4]             ; 0x1b28
    call math_loc_10b0               ; 0x1b2b
    add sp, byte 4                   ; 0x1b2e
    jmp near @..api_idx_000a.l23     ; 0x1b31
@..api_idx_000a.l13:
    mov ax, 0x248                    ; 0x1b34
    imul word [bp + 0x4]             ; 0x1b37
    mov bx, ax                       ; 0x1b3a
    cmp word [bx + 0x5c10], byte 0   ; 0x1b3c
    jg short @..api_idx_000a.l14     ; 0x1b41
    mov word [bx + 0x5c10], 0        ; 0x1b43
    mov ax, 6                        ; 0x1b49
    push ax                          ; 0x1b4c
    call ds_dispatch_b7a9            ; 0x1b4d
    pop cx                           ; 0x1b50
    add ax, strict word 6            ; 0x1b51
    push ax                          ; 0x1b54
    mov ax, 0x248                    ; 0x1b55
    imul word [bp + 0x4]             ; 0x1b58
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
api_idx_0018:
    mov ax, 0xffe8                   ; 0x1c94
    call ds_dispatch_f40b            ; 0x1c97
    call loc_0140                    ; 0x1c9a
    call ds_dispatch_d9a6            ; 0x1c9d
    mov word [data_8450], ax         ; 0x1ca0
    test ax, ax                      ; 0x1ca3
    je short @..api_idx_0018.l1      ; 0x1ca5
    mov ax, 0                        ; 0x1ca7
    push ax                          ; 0x1caa
    mov ax, 1                        ; 0x1cab
    push ax                          ; 0x1cae
    call ds_dispatch_d7e7            ; 0x1caf
    add sp, byte 4                   ; 0x1cb2
    mov ax, word [data_010e]         ; 0x1cb5
    mov word [data_844e], ax         ; 0x1cb8
    mov ax, 0                        ; 0x1cbb
    push ax                          ; 0x1cbe
    push word [data_844e]            ; 0x1cbf
    push ax                          ; 0x1cc3
    call ds_dispatch_d964            ; 0x1cc4
    add sp, byte 6                   ; 0x1cc7
    mov word [data_844c], ax         ; 0x1cca
@..api_idx_0018.l1:
    mov ax, 0x7f4                    ; 0x1ccd
    push ax                          ; 0x1cd0
    call api_idx_0050                ; 0x1cd1
    pop cx                           ; 0x1cd4
    mov word [data_91ae], 0          ; 0x1cd5
    mov ax, word [data_8f1c]         ; 0x1cdb
    mov dx, word [data_8f1e]         ; 0x1cde
    sub ax, word [data_8f18]         ; 0x1ce2
    sbb dx, word [api_idx_0002_20]   ; 0x1ce6
    add word [data_8f14], ax         ; 0x1cea
    adc word [data_8f16], dx         ; 0x1cee
    mov ax, word [data_8f14]         ; 0x1cf2
    mov dx, word [data_8f16]         ; 0x1cf5
    mov cx, 0x3c                     ; 0x1cf9
    mov bx, 0                        ; 0x1cfc
    call ds_dispatch_f99f            ; 0x1cff
    mov word [bp - 0x000c], ax       ; 0x1d02
    mov word [bp - 0x000e], 0        ; 0x1d05
@..api_idx_0018.l2:
    cmp word [bp - 0x000c], byte 4   ; 0x1d0a
    jl short @..api_idx_0018.l3      ; 0x1d0e
    inc word [bp - 0x000e]           ; 0x1d10
    add word [bp - 0x000c], byte 0xfc ; 0x1d13
    add word [data_8f14], strict word 0xff10 ; 0x1d17
    adc word [data_8f16], byte 0xff  ; 0x1d1d
    jmp short @..api_idx_0018.l2     ; 0x1d22
@..api_idx_0018.l3:
    mov ax, word [data_8f1c]         ; 0x1d24
    mov dx, word [data_8f1e]         ; 0x1d27
    mov word [api_idx_0002_20], dx   ; 0x1d2b
    mov word [data_8f18], ax         ; 0x1d2f
    cmp word [data_8450], byte 0     ; 0x1d32
    jne short @..api_idx_0018.l4     ; 0x1d37
    mov ax, 0x30                     ; 0x1d39
    jmp short @..api_idx_0018.l5     ; 0x1d3c
@..api_idx_0018.l4:
    mov ax, 0                        ; 0x1d3e
@..api_idx_0018.l5:
    mov word [bp - 0x0012], ax       ; 0x1d41
    mov word [bp - 0x0008], 0        ; 0x1d44
    mov word [bp - 0x0014], 0        ; 0x1d49
    mov word [bp - 0x0016], 0        ; 0x1d4e
    cmp word [data_830c], byte 0     ; 0x1d53
    jne short @..api_idx_0018.l6     ; 0x1d58
    mov ax, word [data_8f3e]         ; 0x1d5a
    mov cx, 6                        ; 0x1d5d
    shl ax, cl                       ; 0x1d60
    mov cx, word [data_8f40]         ; 0x1d62
    shl cx, 1                        ; 0x1d66
    shl cx, 1                        ; 0x1d68
    shl cx, 1                        ; 0x1d6a
    add ax, cx                       ; 0x1d6c
    add ax, word [data_8f42]         ; 0x1d6e
    mov word [bp - 0x0018], ax       ; 0x1d72
    push ax                          ; 0x1d75
    mov ax, word [data_0e14]         ; 0x1d76
    add ax, 0x930                    ; 0x1d79
    push ax                          ; 0x1d7c
    call ds_dispatch_ec74            ; 0x1d7d
    add sp, byte 4                   ; 0x1d80
    mov word [bp - 0x0014], ax       ; 0x1d83
@..api_idx_0018.l6:
    mov ax, word [bp - 0x0008]       ; 0x1d86
    cmp ax, word [bp - 0x0012]       ; 0x1d89
    jl short @..api_idx_0018.l7      ; 0x1d8c
    call ds_dispatch_ef83            ; 0x1d8e
    test ax, ax                      ; 0x1d91
    jne short @..api_idx_0018.l7     ; 0x1d93
    jmp near @..api_idx_0018.l32     ; 0x1d95
@..api_idx_0018.l7:
    cmp word [data_91ae], byte 0     ; 0x1d98
    je short @..api_idx_0018.l8      ; 0x1d9d
    jmp near @..api_idx_0018.l32     ; 0x1d9f
@..api_idx_0018.l8:
    cmp word [data_830a], byte 5     ; 0x1da2
    je short @..api_idx_0018.l9      ; 0x1da7
    jmp near @..api_idx_0018.l32     ; 0x1da9
@..api_idx_0018.l9:
    call math_loc_0f68               ; 0x1dac
    test ax, ax                      ; 0x1daf
    jne short @..api_idx_0018.l10    ; 0x1db1
    jmp short @..api_idx_0018.l9     ; 0x1db3
@..api_idx_0018.l10:
    mov word [bp - 0x0002], 0        ; 0x1db5
    jmp short @..api_idx_0018.l12    ; 0x1dba
@..api_idx_0018.l11:
    mov ax, 0x248                    ; 0x1dbc
    imul word [bp - 0x0002]          ; 0x1dbf
    mov bx, ax                       ; 0x1dc2
    mov byte [bx + 0x5d5c], 0xa      ; 0x1dc4
    mov ax, 1                        ; 0x1dc9
    push ax                          ; 0x1dcc
    push word [bp - 0x0002]          ; 0x1dcd
    call ds_dispatch_cb3a            ; 0x1dd0
    add sp, byte 4                   ; 0x1dd3
    inc word [bp - 0x0002]           ; 0x1dd6
@..api_idx_0018.l12:
    mov ax, word [bp - 0x0002]       ; 0x1dd9
    cmp ax, word [data_69c8]         ; 0x1ddc
    jl short @..api_idx_0018.l11     ; 0x1de0
    cmp word [bp - 0x0014], byte 0   ; 0x1de2
    je short @..api_idx_0018.l13     ; 0x1de6
    cmp word [bp - 0x0016], byte 0   ; 0x1de8
    jne short @..api_idx_0018.l13    ; 0x1dec
    mov word [bp - 0x0016], 1        ; 0x1dee
    call api_idx_0004                ; 0x1df3
    test ax, ax                      ; 0x1df6
    je short @..api_idx_0018.l13     ; 0x1df8
    mov bx, word [data_0e12]         ; 0x1dfa
    mov si, word [data_8f3e]         ; 0x1dfe
    mov al, byte [bx + si + 0xb40]   ; 0x1e02
    sub ah, ah                       ; 0x1e06
    mov word [data_8d12], ax         ; 0x1e08
@..api_idx_0018.l13:
    call ds_dispatch_baef            ; 0x1e0b
    test ax, ax                      ; 0x1e0e
    je short @..api_idx_0018.l14     ; 0x1e10
    mov word [data_91ae], 1          ; 0x1e12
@..api_idx_0018.l14:
    call math_loc_0f68               ; 0x1e18
    test ax, ax                      ; 0x1e1b
    jne short @..api_idx_0018.l15    ; 0x1e1d
    mov ax, 0xa                      ; 0x1e1f
    push ax                          ; 0x1e22
    call ds_dispatch_e489            ; 0x1e23
    pop cx                           ; 0x1e26
@..api_idx_0018.l15:
    cmp word [bp - 0x0014], byte 0   ; 0x1e27
    je short @..api_idx_0018.l16     ; 0x1e2b
    mov word [data_91ae], 0          ; 0x1e2d
@..api_idx_0018.l16:
    cmp word [data_91ae], byte 0     ; 0x1e33
    je short @..api_idx_0018.l17     ; 0x1e38
    jmp near @..api_idx_0018.l31     ; 0x1e3a
@..api_idx_0018.l17:
    inc word [bp - 0x0008]           ; 0x1e3d
    add word [data_8f1c], byte 0x0a  ; 0x1e40
    adc word [data_8f1e], byte 0     ; 0x1e45
    call api_idx_0002_8              ; 0x1e4a
    mov ax, 0xa                      ; 0x1e4d
    push ax                          ; 0x1e50
    call api_idx_0002_10             ; 0x1e51
    pop cx                           ; 0x1e54
    cmp word [bp - 0x0008], byte 0x18 ; 0x1e55
    jne short @..api_idx_0018.l18    ; 0x1e59
    mov ax, 0x64                     ; 0x1e5b
    push ax                          ; 0x1e5e
    call ds_dispatch_b7a9            ; 0x1e5f
    pop cx                           ; 0x1e62
    mov word [bp - 0x0002], ax       ; 0x1e63
    mov ax, 0x64                     ; 0x1e66
    push ax                          ; 0x1e69
    call ds_dispatch_b7a9            ; 0x1e6a
    pop cx                           ; 0x1e6d
    mov bx, word [bp - 0x0002]       ; 0x1e6e
    mov byte [bx + 0x5990], al       ; 0x1e71
@..api_idx_0018.l18:
    mov word [bp - 0x0002], 0        ; 0x1e75
    jmp near @..api_idx_0018.l27     ; 0x1e7a
@..api_idx_0018.l19:
    mov ax, word [bp - 0x0008]       ; 0x1e7d
    mov cx, 6                        ; 0x1e80
    cwd                              ; 0x1e83
    idiv cx                          ; 0x1e84
    mov ax, dx                       ; 0x1e86
    test ax, ax                      ; 0x1e88
    jne short @..api_idx_0018.l20    ; 0x1e8a
    mov ax, 1                        ; 0x1e8c
    jmp short @..api_idx_0018.l21    ; 0x1e8f
@..api_idx_0018.l20:
    mov ax, 0                        ; 0x1e91
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
api_idx_0010:
    mov ax, 0xfff0                   ; 0x2033
    call ds_dispatch_f40b            ; 0x2036
    mov ax, word [bp + 0x4]          ; 0x2039
    shl ax, 1                        ; 0x203c
    shl ax, 1                        ; 0x203e
    shl ax, 1                        ; 0x2040
    mov bx, ax                       ; 0x2042
    push word [bx + 0x126]           ; 0x2044
    push word [bx + 0x124]           ; 0x2048
    push word [bx + 0x122]           ; 0x204c
    push word [bx + 0x120]           ; 0x2050
    call ds_dispatch_e928            ; 0x2054
    add sp, byte 8                   ; 0x2057
    mov word [bp - 0x000e], dx       ; 0x205a
    mov word [bp - 0x0010], ax       ; 0x205d
    mov word [bp - 0x0002], 0        ; 0x2060
    mov al, byte [bp + 0x4]          ; 0x2065
    inc al                           ; 0x2068
    mov byte [bp - 0x000c], al       ; 0x206a
    mov byte [bp - 0x000b], 0        ; 0x206d
    mov ax, 0                        ; 0x2071
    push ax                          ; 0x2074
    push ax                          ; 0x2075
    lea ax, word [bp - 0x000c]       ; 0x2076
    push ax                          ; 0x2079
    mov ax, 0                        ; 0x207a
    push ax                          ; 0x207d
    mov ax, 0xc7                     ; 0x207e
    push ax                          ; 0x2081
    mov ax, 0                        ; 0x2082
    push ax                          ; 0x2085
    mov ax, 0x13f                    ; 0x2086
    push ax                          ; 0x2089
    mov ax, 0                        ; 0x208a
    push ax                          ; 0x208d
    mov ax, word [bp + 0x4]          ; 0x208e
    shl ax, 1                        ; 0x2091
    shl ax, 1                        ; 0x2093
    shl ax, 1                        ; 0x2095
    mov bx, ax                       ; 0x2097
    push word [bx + 0x122]           ; 0x2099
    push word [bx + 0x120]           ; 0x209d
    push word [bp - 0x0002]          ; 0x20a1
    call ds_dispatch_efd1            ; 0x20a4
    add sp, byte 0x16                ; 0x20a7
    mov ax, word [bp + 0x4]          ; 0x20aa
    shl ax, 1                        ; 0x20ad
    shl ax, 1                        ; 0x20af
    shl ax, 1                        ; 0x20b1
    mov bx, ax                       ; 0x20b3
    push word [bx + 0x126]           ; 0x20b5
    push word [bx + 0x124]           ; 0x20b9
    push word [bx + 0x122]           ; 0x20bd
    push word [bx + 0x120]           ; 0x20c1
    call ds_dispatch_e8da            ; 0x20c5
    add sp, byte 8                   ; 0x20c8
    mov ax, 1                        ; 0x20cb
    push ax                          ; 0x20ce
    push word [bp - 0x000e]          ; 0x20cf
    push word [bp - 0x0010]          ; 0x20d2
    call ds_dispatch_e94f            ; 0x20d5
    add sp, byte 6                   ; 0x20d8
    ret                              ; 0x20db
api_idx_0006_3:
    mov ax, 0xfffa                   ; 0x20dc
    call ds_dispatch_f40b            ; 0x20df
    mov ax, word [data_0e0e]         ; 0x20e2
    mov word [bp - 0x0006], ax       ; 0x20e5
    mov word [bp - 0x0002], 0        ; 0x20e8
    jmp short @..api_idx_0006_3.l3   ; 0x20ed
@..api_idx_0006_3.l1:
    mov bx, word [bp - 0x0006]       ; 0x20ef
    mov al, byte [bx]                ; 0x20f2
    sub ah, ah                       ; 0x20f4
    cmp ax, word [data_830c]         ; 0x20f6
    jne short @..api_idx_0006_3.l2   ; 0x20fa
    mov ax, word [data_8f3e]         ; 0x20fc
    xchg al, ah                      ; 0x20ff
    sub al, al                       ; 0x2101
    mov dx, word [data_8f42]         ; 0x2103
    mov cx, 4                        ; 0x2107
    shl dx, cl                       ; 0x210a
    mov cx, dx                       ; 0x210c
    add ax, cx                       ; 0x210e
    add ax, word [data_8f40]         ; 0x2110
    mov word [bp - 0x0004], ax       ; 0x2114
    cmp ax, word [bx + 0x2]          ; 0x2117
    jne short @..api_idx_0006_3.l2   ; 0x211a
    mov ax, bx                       ; 0x211c
    ret                              ; 0x211e
@..api_idx_0006_3.l2:
    add word [bp - 0x0006], byte 8   ; 0x211f
    inc word [bp - 0x0002]           ; 0x2123
@..api_idx_0006_3.l3:
    mov ax, word [bp - 0x0002]       ; 0x2126
    cmp ax, word [data_5910]         ; 0x2129
    jl short @..api_idx_0006_3.l1    ; 0x212d
    mov ax, 0                        ; 0x212f
    ret                              ; 0x2132
api_idx_0006_4:
    mov ax, 0xfffa                   ; 0x2133
    call ds_dispatch_f40b            ; 0x2136
    call api_idx_0006_3              ; 0x2139
    mov word [bp - 0x0002], ax       ; 0x213c
    test ax, ax                      ; 0x213f
    je short @..api_idx_0006_4.l1    ; 0x2141
    mov ax, 0                        ; 0x2143
    push ax                          ; 0x2146
    push word [0x8d08]               ; 0x2147
    push word [data_8d06]            ; 0x214b
    call ds_dispatch_e94f            ; 0x214f
    add sp, byte 6                   ; 0x2152
    mov ax, 0xb9                     ; 0x2155
    push ax                          ; 0x2158
    mov ax, 0x131                    ; 0x2159
    push ax                          ; 0x215c
    call ds_dispatch_e809            ; 0x215d
    add sp, byte 4                   ; 0x2160
    mov ax, 4                        ; 0x2163
    push ax                          ; 0x2166
    mov bx, word [bp - 0x0002]       ; 0x2167
    mov al, byte [bx + 0x7]          ; 0x216a
    sub ah, ah                       ; 0x216d
    push ax                          ; 0x216f
    call ds_dispatch_e830            ; 0x2170
    add sp, byte 4                   ; 0x2173
    mov ax, 0xc4                     ; 0x2176
    push ax                          ; 0x2179
    mov ax, 0x13c                    ; 0x217a
    push ax                          ; 0x217d
    mov ax, 0xb9                     ; 0x217e
    push ax                          ; 0x2181
    mov ax, 0x131                    ; 0x2182
    push ax                          ; 0x2185
    call ds_dispatch_e8da            ; 0x2186
    add sp, byte 8                   ; 0x2189
    mov ax, 1                        ; 0x218c
    ret                              ; 0x218f
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
api_idx_0022:
    mov ax, 0xffde                   ; 0x2215
    call ds_dispatch_f40b            ; 0x2218
    cmp word [data_8d12], byte 0     ; 0x221b
    jl short @..api_idx_0022.l1      ; 0x2220
    mov bx, word [data_0e12]         ; 0x2222
    mov si, word [data_8f3e]         ; 0x2226
    mov al, byte [bx + si + 0xb40]   ; 0x222a
    sub ah, ah                       ; 0x222e
    cmp ax, word [data_8d12]         ; 0x2230
    jle short @..api_idx_0022.l1     ; 0x2234
    mov word [data_8d12], ax         ; 0x2236
@..api_idx_0022.l1:
    cmp word [data_905e], byte 0x17  ; 0x2239
    je short @..api_idx_0022.l2      ; 0x223e
    mov ax, 0                        ; 0x2240
    push ax                          ; 0x2243
    push word [data_8f40]            ; 0x2244
    push word [data_8f42]            ; 0x2248
    push word [data_8f3e]            ; 0x224c
    call api_idx_0002_7              ; 0x2250
    add sp, byte 8                   ; 0x2253
@..api_idx_0022.l2:
    mov word [bp - 0x0004], 0        ; 0x2256
    jmp short @..api_idx_0022.l4     ; 0x225b
@..api_idx_0022.l3:
    mov ax, 1                        ; 0x225d
    push ax                          ; 0x2260
    push word [bp - 0x0004]          ; 0x2261
    call ds_dispatch_cb3a            ; 0x2264
    add sp, byte 4                   ; 0x2267
    inc word [bp - 0x0004]           ; 0x226a
@..api_idx_0022.l4:
    mov ax, word [bp - 0x0004]       ; 0x226d
    cmp ax, word [data_69c8]         ; 0x2270
    jl short @..api_idx_0022.l3      ; 0x2274
    mov word [data_91aa], 1          ; 0x2276
    mov word [data_91a8], 1          ; 0x227c
    mov word [data_82e8], 0          ; 0x2282
    mov word [data_82ec], 0          ; 0x2288
    mov word [data_831a], 0          ; 0x228e
    call api_idx_0002_8              ; 0x2294
    mov word [data_905e], 5          ; 0x2297
    mov word [data_830a], 5          ; 0x229d
    mov word [data_91b2], 1          ; 0x22a3
    mov word [data_91b4], 1          ; 0x22a9
    mov word [data_91b0], 0          ; 0x22af
@..api_idx_0022.l5:
    cmp word [data_91aa], byte 1     ; 0x22b5
    jne short @..api_idx_0022.l6     ; 0x22ba
    call loc_676c                    ; 0x22bc
@..api_idx_0022.l6:
    mov ax, word [data_8f3e]         ; 0x22bf
    mov cx, 6                        ; 0x22c2
    shl ax, cl                       ; 0x22c5
    mov cx, word [data_8f40]         ; 0x22c7
    shl cx, 1                        ; 0x22cb
    shl cx, 1                        ; 0x22cd
    shl cx, 1                        ; 0x22cf
    add ax, cx                       ; 0x22d1
    add ax, word [data_8f42]         ; 0x22d3
    mov word [bp - 0x000a], ax       ; 0x22d7
    push ax                          ; 0x22da
    mov ax, 0x8bfe                   ; 0x22db
    push ax                          ; 0x22de
    call ds_dispatch_ec74            ; 0x22df
    add sp, byte 4                   ; 0x22e2
    test ax, ax                      ; 0x22e5
    je short @..api_idx_0022.l7      ; 0x22e7
    call api_idx_0006_4              ; 0x22e9
    mov word [data_91b4], ax         ; 0x22ec
    jmp short @..api_idx_0022.l8     ; 0x22ef
@..api_idx_0022.l7:
    cmp word [data_91b4], byte 0     ; 0x22f1
    je short @..api_idx_0022.l8      ; 0x22f6
    mov word [data_91b4], 0          ; 0x22f8
    mov ax, 0                        ; 0x22fe
    push ax                          ; 0x2301
    push word [0x8d08]               ; 0x2302
    push word [data_8d06]            ; 0x2306
    call ds_dispatch_e94f            ; 0x230a
    add sp, byte 6                   ; 0x230d
    mov ax, 0xc4                     ; 0x2310
    push ax                          ; 0x2313
    mov ax, 0x13c                    ; 0x2314
    push ax                          ; 0x2317
    mov ax, 0xb9                     ; 0x2318
    push ax                          ; 0x231b
    mov ax, 0x131                    ; 0x231c
    push ax                          ; 0x231f
    call ds_dispatch_e8da            ; 0x2320
    add sp, byte 8                   ; 0x2323
@..api_idx_0022.l8:
    add word [data_8f1c], byte 1     ; 0x2326
    adc word [data_8f1e], byte 0     ; 0x232b
    call api_idx_0002_8              ; 0x2330
    mov ax, word [data_9198]         ; 0x2333
    jmp short @..api_idx_0022.l12    ; 0x2336
@..api_idx_0022.l9:
    mov ax, 1                        ; 0x2338
    push ax                          ; 0x233b
    mov ax, 0                        ; 0x233c
    push ax                          ; 0x233f
    mov ax, 0x17                     ; 0x2340
    push ax                          ; 0x2343
    mov ax, 0x16                     ; 0x2344
    push ax                          ; 0x2347
    mov ax, 0x14                     ; 0x2348
    push ax                          ; 0x234b
    mov ax, 0x15                     ; 0x234c
    push ax                          ; 0x234f
    call api_idx_0008                ; 0x2350
    add sp, byte 0x0c                ; 0x2353
    jmp short @..api_idx_0022.l13    ; 0x2356
@..api_idx_0022.l10:
    mov ax, 2                        ; 0x2358
    push ax                          ; 0x235b
    mov ax, 0                        ; 0x235c
    push ax                          ; 0x235f
    push ax                          ; 0x2360
    mov ax, 0x1c                     ; 0x2361
    push ax                          ; 0x2364
    mov ax, 0                        ; 0x2365
    push ax                          ; 0x2368
    mov ax, api_idx_0002             ; 0x2369
    push ax                          ; 0x236c
    call api_idx_0008                ; 0x236d
    add sp, byte 0x0c                ; 0x2370
    jmp short @..api_idx_0022.l13    ; 0x2373
@..api_idx_0022.l11:
    mov ax, 3                        ; 0x2375
    push ax                          ; 0x2378
    mov ax, 0                        ; 0x2379
    push ax                          ; 0x237c
    mov ax, 0x17                     ; 0x237d
    push ax                          ; 0x2380
    mov ax, 0x16                     ; 0x2381
    push ax                          ; 0x2384
    mov ax, 0                        ; 0x2385
    push ax                          ; 0x2388
    mov ax, 0x1b                     ; 0x2389
    push ax                          ; 0x238c
    call api_idx_0008                ; 0x238d
    add sp, byte 0x0c                ; 0x2390
    jmp short @..api_idx_0022.l13    ; 0x2393
@..api_idx_0022.l12:
    cmp ax, strict word 1            ; 0x2395
    je short @..api_idx_0022.l9      ; 0x2398
    cmp ax, strict word 2            ; 0x239a
    je short @..api_idx_0022.l10     ; 0x239d
    cmp ax, strict word 3            ; 0x239f
    je short @..api_idx_0022.l11     ; 0x23a2
@..api_idx_0022.l13:
    mov ax, word [data_8f1c]         ; 0x23a4
    mov dx, word [data_8f1e]         ; 0x23a7
    mov cx, 0x3c                     ; 0x23ab
    mov bx, 0                        ; 0x23ae
    call ds_dispatch_f9cd            ; 0x23b1
    or dx, ax                        ; 0x23b4
    jne short @..api_idx_0022.l14    ; 0x23b6
    call api_idx_0032                ; 0x23b8
@..api_idx_0022.l14:
    mov ax, word [data_8f1c]         ; 0x23bb
    mov dx, word [data_8f1e]         ; 0x23be
    mov cx, 0xf0                     ; 0x23c2
    mov bx, 0                        ; 0x23c5
    call ds_dispatch_f9cd            ; 0x23c8
    or dx, ax                        ; 0x23cb
    jne short @..api_idx_0022.l15    ; 0x23cd
    mov ax, 0x64                     ; 0x23cf
    push ax                          ; 0x23d2
    call ds_dispatch_b7a9            ; 0x23d3
    pop cx                           ; 0x23d6
    mov word [bp - 0x0004], ax       ; 0x23d7
    mov ax, 0x64                     ; 0x23da
    push ax                          ; 0x23dd
    call ds_dispatch_b7a9            ; 0x23de
    pop cx                           ; 0x23e1
    mov bx, word [bp - 0x0004]       ; 0x23e2
    mov byte [bx + 0x5990], al       ; 0x23e5
@..api_idx_0022.l15:
    mov ax, word [data_8f1c]         ; 0x23e9
    mov dx, word [data_8f1e]         ; 0x23ec
    mov cx, 0xa                      ; 0x23f0
    mov bx, 0                        ; 0x23f3
    call ds_dispatch_f9cd            ; 0x23f6
    cmp dx, byte 0                   ; 0x23f9
    jne short @..api_idx_0022.l16    ; 0x23fc
    cmp ax, strict word 5            ; 0x23fe
@..api_idx_0022.l16:
    je short @..api_idx_0022.l17     ; 0x2401
    jmp near @..api_idx_0022.l26     ; 0x2403
@..api_idx_0022.l17:
    mov word [bp - 0x0004], 0        ; 0x2406
    jmp near @..api_idx_0022.l25     ; 0x240b
@..api_idx_0022.l18:
    mov ax, 0x248                    ; 0x240e
    imul word [bp - 0x0004]          ; 0x2411
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
math_loc_2d94:
    mov ax, 0                        ; 0x2d94
    call ds_dispatch_f40b            ; 0x2d97
    mov ax, word [bp + 0x6]          ; 0x2d9a
    dec ax                           ; 0x2d9d
    push ax                          ; 0x2d9e
    push word [bp + 0x4]             ; 0x2d9f
    lea ax, word [bp + 0xc]          ; 0x2da2
    push ax                          ; 0x2da5
    lea ax, word [bp + 0xa]          ; 0x2da6
    push ax                          ; 0x2da9
    lea ax, word [bp + 0x8]          ; 0x2daa
    push ax                          ; 0x2dad
    call api_idx_0004_6              ; 0x2dae
    add sp, byte 0x0a                ; 0x2db1
    test ax, ax                      ; 0x2db4
    je short @..math_loc_2d94.l5     ; 0x2db6
    mov ax, word [data_5b6e]         ; 0x2db8
    mov cx, 2                        ; 0x2dbb
    cwd                              ; 0x2dbe
    idiv cx                          ; 0x2dbf
    mov ax, dx                       ; 0x2dc1
    test ax, ax                      ; 0x2dc3
    je short @..math_loc_2d94.l1     ; 0x2dc5
    mov ax, cx                       ; 0x2dc7
    jmp short @..math_loc_2d94.l4    ; 0x2dc9
@..math_loc_2d94.l1:
    mov ax, word [data_5b6e]         ; 0x2dcb
    cmp ax, strict word 6            ; 0x2dce
    je short @..math_loc_2d94.l2     ; 0x2dd1
    cmp word [data_91a6], byte 0     ; 0x2dd3
    je short @..math_loc_2d94.l3     ; 0x2dd8
@..math_loc_2d94.l2:
    mov ax, 0                        ; 0x2dda
    jmp short @..math_loc_2d94.l4    ; 0x2ddd
@..math_loc_2d94.l3:
    mov ax, 4                        ; 0x2ddf
@..math_loc_2d94.l4:
    ret                              ; 0x2de2
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
math_loc_2e0c:
    mov ax, 0                        ; 0x2e0c
    call ds_dispatch_f40b            ; 0x2e0f
    push word [bp + 0x6]             ; 0x2e12
    mov ax, word [bp + 0x4]          ; 0x2e15
    dec ax                           ; 0x2e18
    push ax                          ; 0x2e19
    lea ax, word [bp + 0xc]          ; 0x2e1a
    push ax                          ; 0x2e1d
    lea ax, word [bp + 0xa]          ; 0x2e1e
    push ax                          ; 0x2e21
    lea ax, word [bp + 0x8]          ; 0x2e22
    push ax                          ; 0x2e25
    call api_idx_0004_6              ; 0x2e26
    add sp, byte 0x0a                ; 0x2e29
    test ax, ax                      ; 0x2e2c
    je short @..math_loc_2e0c.l5     ; 0x2e2e
    mov ax, word [data_5b6e]         ; 0x2e30
    mov cx, 2                        ; 0x2e33
    cwd                              ; 0x2e36
    idiv cx                          ; 0x2e37
    mov ax, dx                       ; 0x2e39
    test ax, ax                      ; 0x2e3b
    je short @..math_loc_2e0c.l1     ; 0x2e3d
    mov ax, cx                       ; 0x2e3f
    jmp short @..math_loc_2e0c.l4    ; 0x2e41
@..math_loc_2e0c.l1:
    mov ax, word [data_5b6e]         ; 0x2e43
    cmp ax, strict word 6            ; 0x2e46
    je short @..math_loc_2e0c.l2     ; 0x2e49
    cmp word [data_91a6], byte 0     ; 0x2e4b
    je short @..math_loc_2e0c.l3     ; 0x2e50
@..math_loc_2e0c.l2:
    mov ax, 0                        ; 0x2e52
    jmp short @..math_loc_2e0c.l4    ; 0x2e55
@..math_loc_2e0c.l3:
    mov ax, 4                        ; 0x2e57
@..math_loc_2e0c.l4:
    ret                              ; 0x2e5a
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
api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x2f8e
    call ds_dispatch_f40b            ; 0x2f91
    cmp word [bp + 0xe], byte 0      ; 0x2f94
    jne short @..api_idx_0008_3.l1   ; 0x2f98
    jmp near @..api_idx_0008_3.l3    ; 0x2f9a
@..api_idx_0008_3.l1:
    mov ax, 0                        ; 0x2f9d
    push ax                          ; 0x2fa0
    push word [bp + 0xe]             ; 0x2fa1
    lea ax, word [bp + 0xc]          ; 0x2fa4
    push ax                          ; 0x2fa7
    lea ax, word [bp + 0xa]          ; 0x2fa8
    push ax                          ; 0x2fab
    lea ax, word [bp + 0x8]          ; 0x2fac
    push ax                          ; 0x2faf
    lea ax, word [bp + 0x6]          ; 0x2fb0
    push ax                          ; 0x2fb3
    lea ax, word [bp + 0x4]          ; 0x2fb4
    push ax                          ; 0x2fb7
    call loc_2ed4                    ; 0x2fb8
    add sp, byte 0x0e                ; 0x2fbb
    test ax, ax                      ; 0x2fbe
    je short @..api_idx_0008_3.l3    ; 0x2fc0
    mov ax, word [data_91d4]         ; 0x2fc2
    jmp short @..api_idx_0008_3.l2   ; 0x2fc5
    mov ax, 2                        ; 0x2fc7
    ret                              ; 0x2fca
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
api_idx_0008_4:
    mov ax, 0xfff8                   ; 0x33c0
    call ds_dispatch_f40b            ; 0x33c3
    cmp word [bp + 0x10], byte 0     ; 0x33c6
    je short @..api_idx_0008_4.l2    ; 0x33ca
    mov ax, 0                        ; 0x33cc
    push ax                          ; 0x33cf
    push word [bp + 0x10]            ; 0x33d0
    lea ax, word [bp + 0xe]          ; 0x33d3
    push ax                          ; 0x33d6
    lea ax, word [bp + 0xc]          ; 0x33d7
    push ax                          ; 0x33da
    lea ax, word [bp + 0xa]          ; 0x33db
    push ax                          ; 0x33de
    lea ax, word [bp + 0x8]          ; 0x33df
    push ax                          ; 0x33e2
    lea ax, word [bp + 0x6]          ; 0x33e3
    push ax                          ; 0x33e6
    call loc_2ed4                    ; 0x33e7
    add sp, byte 0x0e                ; 0x33ea
    test ax, ax                      ; 0x33ed
    je short @..api_idx_0008_4.l2    ; 0x33ef
    mov ax, word [data_91d4]         ; 0x33f1
    jmp short @..api_idx_0008_4.l1   ; 0x33f4
    mov ax, 2                        ; 0x33f6
    ret                              ; 0x33f9
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
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x358c
    call ds_dispatch_f40b            ; 0x358f
    mov al, byte [bp + 0x4]          ; 0x3592
    push ax                          ; 0x3595
    mov ax, 0x11                     ; 0x3596
    imul word [data_931e]            ; 0x3599
    mov bx, ax                       ; 0x359d
    pop ax                           ; 0x359f
    mov byte [bx - 0x6cd4], al       ; 0x35a0
    mov al, byte [bp + 0x18]         ; 0x35a4
    mov byte [bx - 0x6cd2], al       ; 0x35a7
    cmp word [bp + 0x4], strict word 0xfa ; 0x35ab
    jl short @..api_idx_0004_5.l1    ; 0x35b0
    jmp near @..api_idx_0004_5.l13   ; 0x35b2
@..api_idx_0004_5.l1:
    mov ax, 0x15e                    ; 0x35b5
    imul word [bp + 0x4]             ; 0x35b8
    mov cx, word [bp + 0xa]          ; 0x35bb
    shl cx, 1                        ; 0x35be
    add ax, cx                       ; 0x35c0
    add ax, word [bp + 0x1a]         ; 0x35c2
    mov bx, ax                       ; 0x35c5
    mov al, byte [bx + 0x6a52]       ; 0x35c7
    sub ah, ah                       ; 0x35cb
    mov word [bp - 0x0002], ax       ; 0x35cd
    mov ax, 0x15e                    ; 0x35d0
    imul word [bp + 0x4]             ; 0x35d3
    add ax, word [bp + 0xa]          ; 0x35d6
    mov bx, ax                       ; 0x35d9
    mov al, byte [bx + 0x6a9b]       ; 0x35db
    sub ah, ah                       ; 0x35df
    mov word [bp - 0x0004], ax       ; 0x35e1
    cmp word [bp + 0x18], byte 0     ; 0x35e4
    jg short @..api_idx_0004_5.l2    ; 0x35e8
    jmp near @..api_idx_0004_5.l11   ; 0x35ea
@..api_idx_0004_5.l2:
    cmp word [bp + 0x1e], byte 0     ; 0x35ed
    jg short @..api_idx_0004_5.l3    ; 0x35f1
    jmp near @..api_idx_0004_5.l11   ; 0x35f3
@..api_idx_0004_5.l3:
    mov ax, 0x64                     ; 0x35f6
    sub ax, word [bp + 0x18]         ; 0x35f9
    mov cx, 0x64                     ; 0x35fc
    cwd                              ; 0x35ff
    idiv cx                          ; 0x3600
    mov ax, dx                       ; 0x3602
    push ax                          ; 0x3604
    mov ax, 0x11                     ; 0x3605
    imul word [data_931e]            ; 0x3608
    mov bx, ax                       ; 0x360c
    pop ax                           ; 0x360e
    mov byte [bx - 0x6cd2], al       ; 0x360f
    cmp word [bp + 0x1e], byte 1     ; 0x3613
    je short @..api_idx_0004_5.l4    ; 0x3617
    jmp near @..api_idx_0004_5.l6    ; 0x3619
@..api_idx_0004_5.l4:
    mov ax, word [data_03ae]         ; 0x361c
    sub ax, word [bp - 0x0002]       ; 0x361f
    imul word [bp + 0x18]            ; 0x3622
    add ax, strict word 0xffce       ; 0x3625
    cwd                              ; 0x3628
    idiv cx                          ; 0x3629
    mov cx, ax                       ; 0x362b
    mov ax, word [bp + 0x6]          ; 0x362d
    sub ax, cx                       ; 0x3630
    mov word [bx - 0x6ce0], ax       ; 0x3632
    cmp word [bp + 0x1a], byte 0     ; 0x3636
    je short @..api_idx_0004_5.l5    ; 0x363a
    mov ax, 0x15e                    ; 0x363c
    imul word [bp + 0x4]             ; 0x363f
    mov cx, word [bp + 0xa]          ; 0x3642
    shl cx, 1                        ; 0x3645
    add ax, cx                       ; 0x3647
    add ax, word [bp + 0x1a]         ; 0x3649
    mov bx, ax                       ; 0x364c
    mov al, byte [bx + 0x6a52]       ; 0x364e
    sub ah, ah                       ; 0x3652
    mov cx, ax                       ; 0x3654
    mov ax, 0xa0                     ; 0x3656
    sub ax, cx                       ; 0x3659
    shl ax, 1                        ; 0x365b
    push ax                          ; 0x365d
    mov ax, 0x11                     ; 0x365e
    imul word [data_931e]            ; 0x3661
    mov bx, ax                       ; 0x3665
    mov al, byte [bx - 0x6cd2]       ; 0x3667
    sub ah, ah                       ; 0x366b
    mov cx, ax                       ; 0x366d
    pop ax                           ; 0x366f
    imul cx                          ; 0x3670
    mov cx, 0x64                     ; 0x3672
    cwd                              ; 0x3675
    idiv cx                          ; 0x3676
    sub word [bx - 0x6ce0], ax       ; 0x3678
@..api_idx_0004_5.l5:
    mov ax, word [0x03dc]            ; 0x367c
    sub ax, word [bp - 0x0004]       ; 0x367f
    imul word [bp + 0x18]            ; 0x3682
    add ax, strict word 0xffce       ; 0x3685
    mov cx, 0x64                     ; 0x3688
    cwd                              ; 0x368b
    idiv cx                          ; 0x368c
    mov cx, ax                       ; 0x368e
    mov ax, word [bp + 0x8]          ; 0x3690
    sub ax, cx                       ; 0x3693
    push ax                          ; 0x3695
    mov ax, 0x11                     ; 0x3696
    imul word [data_931e]            ; 0x3699
    mov bx, ax                       ; 0x369d
    pop ax                           ; 0x369f
    mov word [bx - 0x6cde], ax       ; 0x36a0
    jmp near @..api_idx_0004_5.l10   ; 0x36a4
@..api_idx_0004_5.l6:
    cmp word [bp + 0x1e], byte 2     ; 0x36a7
    je short @..api_idx_0004_5.l7    ; 0x36ab
    jmp near @..api_idx_0004_5.l9    ; 0x36ad
@..api_idx_0004_5.l7:
    mov ax, 0x11                     ; 0x36b0
    imul word [data_931e]            ; 0x36b3
    mov bx, ax                       ; 0x36b7
    mov al, byte [bx - 0x6cd2]       ; 0x36b9
    sub ah, ah                       ; 0x36bd
    mov cx, 0xa0                     ; 0x36bf
    sub cx, word [bp - 0x0002]       ; 0x36c2
    imul cx                          ; 0x36c5
    mov cx, 0x64                     ; 0x36c7
    cwd                              ; 0x36ca
    idiv cx                          ; 0x36cb
    add ax, word [bp - 0x0002]       ; 0x36cd
    add ax, word [bp + 0x6]          ; 0x36d0
    mov word [bx - 0x6ce0], ax       ; 0x36d3
    cmp word [bp + 0x1a], byte 0     ; 0x36d7
    je short @..api_idx_0004_5.l8    ; 0x36db
    mov ax, 0x15e                    ; 0x36dd
    imul word [bp + 0x4]             ; 0x36e0
    mov cx, word [bp + 0xa]          ; 0x36e3
    shl cx, 1                        ; 0x36e6
    add ax, cx                       ; 0x36e8
    add ax, word [bp + 0x1a]         ; 0x36ea
    mov bx, ax                       ; 0x36ed
    mov al, byte [bx + 0x6a52]       ; 0x36ef
    sub ah, ah                       ; 0x36f3
    mov cx, ax                       ; 0x36f5
    mov ax, 0xa0                     ; 0x36f7
    sub ax, cx                       ; 0x36fa
    shl ax, 1                        ; 0x36fc
    push ax                          ; 0x36fe
    mov ax, 0x11                     ; 0x36ff
    imul word [data_931e]            ; 0x3702
    mov bx, ax                       ; 0x3706
    mov al, byte [bx - 0x6cd2]       ; 0x3708
    sub ah, ah                       ; 0x370c
    mov cx, ax                       ; 0x370e
    pop ax                           ; 0x3710
    imul cx                          ; 0x3711
    mov cx, 0x64                     ; 0x3713
    cwd                              ; 0x3716
    idiv cx                          ; 0x3717
    sub word [bx - 0x6ce0], ax       ; 0x3719
@..api_idx_0004_5.l8:
    mov ax, 0x11                     ; 0x371d
    imul word [data_931e]            ; 0x3720
    mov bx, ax                       ; 0x3724
    mov al, byte [bx - 0x6cd2]       ; 0x3726
    sub ah, ah                       ; 0x372a
    mov cx, 0x42                     ; 0x372c
    sub cx, word [bp - 0x0004]       ; 0x372f
    imul cx                          ; 0x3732
    mov cx, 0x64                     ; 0x3734
    cwd                              ; 0x3737
    idiv cx                          ; 0x3738
    add ax, word [bp - 0x0004]       ; 0x373a
    add ax, word [bp + 0x8]          ; 0x373d
    mov word [bx - 0x6cde], ax       ; 0x3740
    jmp short @..api_idx_0004_5.l10  ; 0x3744
@..api_idx_0004_5.l9:
    cmp word [bp + 0x1e], byte 3     ; 0x3746
    jne short @..api_idx_0004_5.l10  ; 0x374a
    mov ax, word [bp + 0x6]          ; 0x374c
    push ax                          ; 0x374f
    mov ax, 0x11                     ; 0x3750
    imul word [data_931e]            ; 0x3753
    mov bx, ax                       ; 0x3757
    pop ax                           ; 0x3759
    mov word [bx - 0x6ce0], ax       ; 0x375a
    mov ax, word [bp + 0x8]          ; 0x375e
    mov word [bx - 0x6cde], ax       ; 0x3761
@..api_idx_0004_5.l10:
    jmp short @..api_idx_0004_5.l12  ; 0x3765
@..api_idx_0004_5.l11:
    mov ax, word [bp - 0x0002]       ; 0x3767
    add ax, word [bp + 0x6]          ; 0x376a
    push ax                          ; 0x376d
    mov ax, 0x11                     ; 0x376e
    imul word [data_931e]            ; 0x3771
    mov bx, ax                       ; 0x3775
    pop ax                           ; 0x3777
    mov word [bx - 0x6ce0], ax       ; 0x3778
    mov ax, word [bp - 0x0004]       ; 0x377c
    add ax, word [bp + 0x8]          ; 0x377f
    mov word [bx - 0x6cde], ax       ; 0x3782
@..api_idx_0004_5.l12:
    jmp short @..api_idx_0004_5.l14  ; 0x3786
@..api_idx_0004_5.l13:
    mov ax, word [bp + 0x6]          ; 0x3788
    push ax                          ; 0x378b
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
api_idx_0010_2:
    mov ax, 0xfff0                   ; 0x3802
    call ds_dispatch_f40b            ; 0x3805
    mov ax, 4                        ; 0x3808
    cmp word [data_91d4], byte 0     ; 0x380b
    jne short @..api_idx_0010_2.l1   ; 0x3810
    mov ax, 3                        ; 0x3812
@..api_idx_0010_2.l1:
    mov word [bp - 0x000a], ax       ; 0x3815
    mov word [bp - 0x0002], 0xffff   ; 0x3818
    mov word [bp - 0x0004], 0xffff   ; 0x381d
    cmp word [data_91d4], byte 0     ; 0x3822
    jg short @..api_idx_0010_2.l2    ; 0x3827
    jmp near @..api_idx_0010_2.l11   ; 0x3829
@..api_idx_0010_2.l2:
    cmp word [bp + 0x4], byte 3      ; 0x382c
    je short @..api_idx_0010_2.l3    ; 0x3830
    jmp near @..api_idx_0010_2.l11   ; 0x3832
@..api_idx_0010_2.l3:
    mov ax, word [data_91d4]         ; 0x3835
    cmp ax, strict word 3            ; 0x3838
    jl short @..api_idx_0010_2.l4    ; 0x383b
    cmp ax, strict word 5            ; 0x383d
    jne short @..api_idx_0010_2.l5   ; 0x3840
@..api_idx_0010_2.l4:
    mov ax, 0x15                     ; 0x3842
    jmp short @..api_idx_0010_2.l6   ; 0x3845
@..api_idx_0010_2.l5:
    mov ax, 0x14                     ; 0x3847
@..api_idx_0010_2.l6:
    mov word [bp - 0x000c], ax       ; 0x384a
    cmp word [data_91d4], byte 3     ; 0x384d
    jl short @..api_idx_0010_2.l7    ; 0x3852
    cmp word [data_91d4], byte 5     ; 0x3854
    jne short @..api_idx_0010_2.l8   ; 0x3859
@..api_idx_0010_2.l7:
    mov ax, 0x16                     ; 0x385b
    jmp short @..api_idx_0010_2.l9   ; 0x385e
@..api_idx_0010_2.l8:
    mov ax, 0x15                     ; 0x3860
@..api_idx_0010_2.l9:
    mov word [bp - 0x000e], ax       ; 0x3863
    cmp word [bp + 0x8], byte 0      ; 0x3866
    jne short @..api_idx_0010_2.l10  ; 0x386a
    push ax                          ; 0x386c
    push word [bp - 0x000c]          ; 0x386d
    call loc_2e98                    ; 0x3870
    add sp, byte 4                   ; 0x3873
    mov word [bp - 0x0002], ax       ; 0x3876
    push word [bp - 0x000c]          ; 0x3879
    call loc_2e84                    ; 0x387c
    pop cx                           ; 0x387f
    mov word [bp - 0x0004], ax       ; 0x3880
    jmp short @..api_idx_0010_2.l11  ; 0x3883
@..api_idx_0010_2.l10:
    cmp word [bp + 0x8], byte 4      ; 0x3885
    jne short @..api_idx_0010_2.l11  ; 0x3889
    push word [bp - 0x000c]          ; 0x388b
    push word [bp - 0x000e]          ; 0x388e
    call loc_2e98                    ; 0x3891
    add sp, byte 4                   ; 0x3894
    mov word [bp - 0x0002], ax       ; 0x3897
    push word [bp - 0x000e]          ; 0x389a
    call loc_2e84                    ; 0x389d
    pop cx                           ; 0x38a0
    mov word [bp - 0x0004], ax       ; 0x38a1
@..api_idx_0010_2.l11:
    mov ax, word [bp + 0x6]          ; 0x38a4
    jmp near @..api_idx_0010_2.l12   ; 0x38a7
    cmp word [bp - 0x0002], byte 0xff ; 0x38aa
    je short loc_38e4                ; 0x38ae
    mov ax, 0                        ; 0x38b0
    push ax                          ; 0x38b3
    push ax                          ; 0x38b4
    push ax                          ; 0x38b5
    push word [bp + 0x10]            ; 0x38b6
    push word [bp + 0x4]             ; 0x38b9
    mov ax, 0xffff                   ; 0x38bc
    push ax                          ; 0x38bf
    push word [bp - 0x0004]          ; 0x38c0
    mov ax, 0                        ; 0x38c3
    push ax                          ; 0x38c6
    push ax                          ; 0x38c7
    push ax                          ; 0x38c8
    cmp word [bp + 0x4], byte 1      ; 0x38c9
    jne short loc_38d2               ; 0x38cd
    mov ax, 2                        ; 0x38cf
    push ax                          ; 0x38d2
    mov ax, 0xffff                   ; 0x38d3
    push ax                          ; 0x38d6
    push word [bp - 0x0002]          ; 0x38d7
    mov ax, 0xff                     ; 0x38da
    push ax                          ; 0x38dd
    call api_idx_0004_5              ; 0x38de
    add sp, byte 0x1c                ; 0x38e1
    jmp near @..api_idx_0010_2.l13   ; 0x38e4
    cmp word [bp - 0x0002], byte 0xff ; 0x38e7
    je short loc_391b                ; 0x38eb
    mov ax, 0                        ; 0x38ed
    push ax                          ; 0x38f0
    push ax                          ; 0x38f1
    push ax                          ; 0x38f2
    push word [bp + 0x14]            ; 0x38f3
    push word [bp + 0x4]             ; 0x38f6
    mov ax, 0xffff                   ; 0x38f9
    push ax                          ; 0x38fc
    push word [bp - 0x0004]          ; 0x38fd
    mov ax, 0                        ; 0x3900
    push ax                          ; 0x3903
    push ax                          ; 0x3904
    push ax                          ; 0x3905
    mov ax, 2                        ; 0x3906
    push ax                          ; 0x3909
    mov ax, 0xffff                   ; 0x390a
    push ax                          ; 0x390d
    push word [bp - 0x0002]          ; 0x390e
    mov ax, 0xff                     ; 0x3911
    push ax                          ; 0x3914
    call api_idx_0004_5              ; 0x3915
    add sp, byte 0x1c                ; 0x3918
    jmp near @..api_idx_0010_2.l13   ; 0x391b
    cmp word [data_91d4], byte 0     ; 0x391e
    jne short loc_397e               ; 0x3923
    cmp word [bp + 0x4], byte 3      ; 0x3925
    jge short loc_397b               ; 0x3929
    mov ax, 0                        ; 0x392b
    push ax                          ; 0x392e
    push ax                          ; 0x392f
    push ax                          ; 0x3930
    push word [bp + 0xa]             ; 0x3931
    push word [bp + 0x4]             ; 0x3934
    mov ax, 0xffff                   ; 0x3937
    push ax                          ; 0x393a
    mov ax, word [bp + 0x16]         ; 0x393b
    add ax, word [bp + 0x4]          ; 0x393e
    push ax                          ; 0x3941
    call loc_2e84                    ; 0x3942
    pop cx                           ; 0x3945
    push ax                          ; 0x3946
    mov ax, 0                        ; 0x3947
    push ax                          ; 0x394a
    push ax                          ; 0x394b
    push ax                          ; 0x394c
    mov cx, word [bp + 0x4]          ; 0x394d
    cmp cx, byte 1                   ; 0x3950
    jne short loc_3958               ; 0x3953
    mov ax, 2                        ; 0x3955
    push ax                          ; 0x3958
    mov ax, 0xffff                   ; 0x3959
    push ax                          ; 0x395c
    add cx, word [bp + 0x18]         ; 0x395d
    db 0x8b, 0xc1 ; mov ax, cx
    push ax                          ; 0x3962
    mov ax, word [bp + 0x16]         ; 0x3963
    add ax, word [bp + 0x4]          ; 0x3966
    push ax                          ; 0x3969
    call loc_2e98                    ; 0x396a
    add sp, byte 4                   ; 0x396d
    push ax                          ; 0x3970
    mov ax, 0xff                     ; 0x3971
    push ax                          ; 0x3974
    call api_idx_0004_5              ; 0x3975
    add sp, byte 0x1c                ; 0x3978
    jmp near loc_3a2f                ; 0x397b
    cmp word [data_91d4], byte 3     ; 0x397e
    jl short loc_398c                ; 0x3983
    cmp word [data_91d4], byte 5     ; 0x3985
    jne short loc_39db               ; 0x398a
    cmp word [bp + 0x4], byte 4      ; 0x398c
    jge short loc_39d9               ; 0x3990
    mov ax, 0                        ; 0x3992
    push ax                          ; 0x3995
    push ax                          ; 0x3996
    push ax                          ; 0x3997
    push word [bp + 0x10]            ; 0x3998
    push word [bp + 0x4]             ; 0x399b
    push word [bp - 0x0004]          ; 0x399e
    mov ax, word [bp + 0x32]         ; 0x39a1
    add ax, word [bp + 0x4]          ; 0x39a4
    push ax                          ; 0x39a7
    call loc_2e84                    ; 0x39a8
    pop cx                           ; 0x39ab
    push ax                          ; 0x39ac
    mov ax, 0                        ; 0x39ad
    push ax                          ; 0x39b0
    push ax                          ; 0x39b1
    mov ax, 2                        ; 0x39b2
    push ax                          ; 0x39b5
    push ax                          ; 0x39b6
    push word [bp - 0x0002]          ; 0x39b7
    mov ax, word [bp + 0x34]         ; 0x39ba
    add ax, word [bp + 0x4]          ; 0x39bd
    push ax                          ; 0x39c0
    mov ax, word [bp + 0x32]         ; 0x39c1
    add ax, word [bp + 0x4]          ; 0x39c4
    push ax                          ; 0x39c7
    call loc_2e98                    ; 0x39c8
    add sp, byte 4                   ; 0x39cb
    push ax                          ; 0x39ce
    mov ax, 0xff                     ; 0x39cf
    push ax                          ; 0x39d2
    call api_idx_0004_5              ; 0x39d3
    add sp, byte 0x1c                ; 0x39d6
    jmp short loc_3a2f               ; 0x39d9
    cmp word [data_91d4], byte 5     ; 0x39db
    jge short loc_3a2f               ; 0x39e0
    cmp word [bp + 0x4], byte 4      ; 0x39e2
    db 0x7d, 0x47 ; jge short loc_3a2f
    mov ax, 0                        ; 0x39e8
    push ax                          ; 0x39eb
    push ax                          ; 0x39ec
    push ax                          ; 0x39ed
    push word [bp + 0x14]            ; 0x39ee
    push word [bp + 0x4]             ; 0x39f1
    push word [bp - 0x0004]          ; 0x39f4
    mov ax, word [bp + 0x46]         ; 0x39f7
    add ax, word [bp + 0x4]          ; 0x39fa
    push ax                          ; 0x39fd
    call loc_2e84                    ; 0x39fe
    pop cx                           ; 0x3a01
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
api_idx_0012:
    mov ax, 0xffee                   ; 0x3f56
    call ds_dispatch_f40b            ; 0x3f59
    mov word [bp - 0x0004], 0xffff   ; 0x3f5c
    mov word [bp - 0x0006], 0xffff   ; 0x3f61
    mov ax, word [bp + 0x6]          ; 0x3f66
    jmp near @..api_idx_0012.l1      ; 0x3f69
    cmp word [bp + 0x26], byte 0xff  ; 0x3f6c
    jne short loc_3f75               ; 0x3f70
    jmp near loc_3ff9                ; 0x3f72
    cmp word [bp + 0x4], byte 0      ; 0x3f75
    je short loc_3f7e                ; 0x3f79
    db 0xe9, 0x7b, 0x00 ; jmp near loc_3ff9
    cmp word [bp + 0x6], byte 8      ; 0x3f7e
    jne short loc_3f8a               ; 0x3f82
    mov ax, word [bp + 0x26]         ; 0x3f84
    inc ax                           ; 0x3f87
    jmp short loc_3f90               ; 0x3f88
    mov ax, word [bp + 0x26]         ; 0x3f8a
    inc ax                           ; 0x3f8d
    inc ax                           ; 0x3f8e
    inc ax                           ; 0x3f8f
    mov word [bp - 0x0002], ax       ; 0x3f90
    mov ax, 0                        ; 0x3f93
    push ax                          ; 0x3f96
    mov ax, 1                        ; 0x3f97
    push ax                          ; 0x3f9a
    mov ax, 0                        ; 0x3f9b
    push ax                          ; 0x3f9e
    push word [bp + 0xa]             ; 0x3f9f
    push word [bp + 0x4]             ; 0x3fa2
    mov ax, 0xffff                   ; 0x3fa5
    cmp word [bp + 0x8], byte 2      ; 0x3fa8
    jge short loc_3fb2               ; 0x3fac
    mov ax, word [bp - 0x0002]       ; 0x3fae
    inc ax                           ; 0x3fb1
    push ax                          ; 0x3fb2
    mov ax, 0xffff                   ; 0x3fb3
    cmp word [bp + 0x8], byte 2      ; 0x3fb6
    jge short loc_3fbf               ; 0x3fba
    mov ax, word [bp - 0x0002]       ; 0x3fbc
    push ax                          ; 0x3fbf
    mov ax, 0                        ; 0x3fc0
    push ax                          ; 0x3fc3
    push ax                          ; 0x3fc4
    mov ax, 2                        ; 0x3fc5
    push ax                          ; 0x3fc8
    push ax                          ; 0x3fc9
    cmp word [bp + 0x6], byte 8      ; 0x3fca
    jne short loc_3fd6               ; 0x3fce
    cmp word [bp + 0x8], byte 2      ; 0x3fd0
    jg short loc_3fe2                ; 0x3fd4
    cmp word [bp + 0x6], byte 9      ; 0x3fd6
    jne short loc_3fe8               ; 0x3fda
    cmp word [bp + 0x8], byte 2      ; 0x3fdc
    jge short loc_3fe8               ; 0x3fe0
    mov ax, word [bp - 0x0002]       ; 0x3fe2
    inc ax                           ; 0x3fe5
    jmp short loc_3feb               ; 0x3fe6
    mov ax, 0xffff                   ; 0x3fe8
    push ax                          ; 0x3feb
    push word [bp - 0x0002]          ; 0x3fec
    mov ax, 0xfd                     ; 0x3fef
    push ax                          ; 0x3ff2
    call api_idx_0004_5              ; 0x3ff3
    add sp, byte 0x1c                ; 0x3ff6
    cmp word [bp + 0x6], byte 3      ; 0x3ff9
    db 0x74, 0x03 ; je short loc_4002
    jmp near loc_4085                ; 0x3fff
    cmp word [bp + 0x4], byte 4      ; 0x4002
    jl short loc_400b                ; 0x4006
    db 0xe9, 0x7a, 0x00 ; jmp near loc_4085
    cmp word [bp + 0x34], byte 0xff  ; 0x400b
    je short loc_4060                ; 0x400f
    mov ax, 0                        ; 0x4011
    push ax                          ; 0x4014
    mov ax, 1                        ; 0x4015
    push ax                          ; 0x4018
    mov ax, 0                        ; 0x4019
    push ax                          ; 0x401c
    push word [bp + 0xe]             ; 0x401d
    push word [bp + 0x4]             ; 0x4020
    mov ax, 0xffff                   ; 0x4023
    push ax                          ; 0x4026
    mov ax, word [bp + 0x34]         ; 0x4027
    add ax, word [bp + 0x4]          ; 0x402a
    push ax                          ; 0x402d
    call loc_2eac                    ; 0x402e
    pop cx                           ; 0x4031
    push ax                          ; 0x4032
    mov ax, 0                        ; 0x4033
    push ax                          ; 0x4036
    push ax                          ; 0x4037
    push ax                          ; 0x4038
    mov ax, 2                        ; 0x4039
    push ax                          ; 0x403c
    mov ax, 0xffff                   ; 0x403d
    push ax                          ; 0x4040
    mov ax, word [bp + 0x36]         ; 0x4041
    add ax, word [bp + 0x4]          ; 0x4044
    push ax                          ; 0x4047
    mov ax, word [bp + 0x34]         ; 0x4048
    add ax, word [bp + 0x4]          ; 0x404b
    push ax                          ; 0x404e
    call loc_2ec0                    ; 0x404f
    add sp, byte 4                   ; 0x4052
    push ax                          ; 0x4055
    mov ax, 0xfd                     ; 0x4056
    push ax                          ; 0x4059
    call api_idx_0004_5              ; 0x405a
    add sp, byte 0x1c                ; 0x405d
    mov ax, word [bp + 0x32]         ; 0x4060
    add ax, word [bp + 0x4]          ; 0x4063
    push ax                          ; 0x4066
    mov ax, word [bp + 0x30]         ; 0x4067
    add ax, word [bp + 0x4]          ; 0x406a
    push ax                          ; 0x406d
    call loc_2ec0                    ; 0x406e
    add sp, byte 4                   ; 0x4071
    mov word [bp - 0x0004], ax       ; 0x4074
    mov ax, word [bp + 0x30]         ; 0x4077
    add ax, word [bp + 0x4]          ; 0x407a
    push ax                          ; 0x407d
    call loc_2eac                    ; 0x407e
    pop cx                           ; 0x4081
    mov word [bp - 0x0006], ax       ; 0x4082
    cmp word [bp + 0x6], byte 6      ; 0x4085
    jne short loc_40b6               ; 0x4089
    cmp word [bp + 0x4], byte 4      ; 0x408b
    jge short loc_40b6               ; 0x408f
    mov ax, word [bp + 0x24]         ; 0x4091
    add ax, word [bp + 0x4]          ; 0x4094
    push ax                          ; 0x4097
    mov ax, word [bp + 0x22]         ; 0x4098
    add ax, word [bp + 0x4]          ; 0x409b
    push ax                          ; 0x409e
    call loc_2ec0                    ; 0x409f
    add sp, byte 4                   ; 0x40a2
    mov word [bp - 0x0004], ax       ; 0x40a5
    mov ax, word [bp + 0x22]         ; 0x40a8
    add ax, word [bp + 0x4]          ; 0x40ab
    push ax                          ; 0x40ae
    call loc_2eac                    ; 0x40af
    pop cx                           ; 0x40b2
    mov word [bp - 0x0006], ax       ; 0x40b3
    cmp word [data_91d4], byte 0     ; 0x40b6
    jne short loc_4112               ; 0x40bb
    cmp word [bp + 0x4], byte 4      ; 0x40bd
    jge short loc_4110               ; 0x40c1
    mov ax, 0                        ; 0x40c3
    push ax                          ; 0x40c6
    mov ax, 1                        ; 0x40c7
    push ax                          ; 0x40ca
    mov ax, 0                        ; 0x40cb
    push ax                          ; 0x40ce
    push word [bp + 0xa]             ; 0x40cf
    push word [bp + 0x4]             ; 0x40d2
    push word [bp - 0x0006]          ; 0x40d5
    mov ax, word [bp + 0x1e]         ; 0x40d8
    add ax, word [bp + 0x4]          ; 0x40db
    push ax                          ; 0x40de
    call loc_2eac                    ; 0x40df
    pop cx                           ; 0x40e2
    push ax                          ; 0x40e3
    mov ax, 0                        ; 0x40e4
    push ax                          ; 0x40e7
    push ax                          ; 0x40e8
    mov ax, 2                        ; 0x40e9
    push ax                          ; 0x40ec
    push ax                          ; 0x40ed
    push word [bp - 0x0004]          ; 0x40ee
    mov ax, word [bp + 0x20]         ; 0x40f1
    add ax, word [bp + 0x4]          ; 0x40f4
    push ax                          ; 0x40f7
    mov ax, word [bp + 0x1e]         ; 0x40f8
    add ax, word [bp + 0x4]          ; 0x40fb
    push ax                          ; 0x40fe
    call loc_2ec0                    ; 0x40ff
    add sp, byte 4                   ; 0x4102
    push ax                          ; 0x4105
    mov ax, 0xfd                     ; 0x4106
    push ax                          ; 0x4109
    call api_idx_0004_5              ; 0x410a
    add sp, byte 0x1c                ; 0x410d
    jmp short loc_416c               ; 0x4110
    cmp word [data_91d4], byte 2     ; 0x4112
    jne short loc_416c               ; 0x4117
    cmp word [bp + 0x4], byte 5      ; 0x4119
    jge short loc_416c               ; 0x411d
    mov ax, 0                        ; 0x411f
    push ax                          ; 0x4122
    mov ax, 1                        ; 0x4123
    push ax                          ; 0x4126
    mov ax, 0                        ; 0x4127
    push ax                          ; 0x412a
    push word [bp + 0xe]             ; 0x412b
    push word [bp + 0x4]             ; 0x412e
    push word [bp - 0x0006]          ; 0x4131
    mov ax, word [bp + 0x2c]         ; 0x4134
    add ax, word [bp + 0x4]          ; 0x4137
    push ax                          ; 0x413a
    call loc_2eac                    ; 0x413b
    pop cx                           ; 0x413e
    push ax                          ; 0x413f
    mov ax, 0                        ; 0x4140
    push ax                          ; 0x4143
    push ax                          ; 0x4144
    mov ax, 2                        ; 0x4145
    push ax                          ; 0x4148
    push ax                          ; 0x4149
    push word [bp - 0x0004]          ; 0x414a
    mov ax, word [bp + 0x2e]         ; 0x414d
    add ax, word [bp + 0x4]          ; 0x4150
    push ax                          ; 0x4153
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
api_idx_0012_2:
    mov ax, 0xffee                   ; 0x4665
    call ds_dispatch_f40b            ; 0x4668
    cmp word [bp + 0x4], byte 4      ; 0x466b
    jge short @..api_idx_0012_2.l1   ; 0x466f
    cmp word [bp + 0x6], byte 0      ; 0x4671
    jle short @..api_idx_0012_2.l1   ; 0x4675
    cmp word [bp + 0x6], byte 4      ; 0x4677
    jge short @..api_idx_0012_2.l1   ; 0x467b
    mov ax, 1                        ; 0x467d
    jmp short @..api_idx_0012_2.l2   ; 0x4680
@..api_idx_0012_2.l1:
    mov ax, 0                        ; 0x4682
@..api_idx_0012_2.l2:
    mov word [bp - 0x0012], ax       ; 0x4685
    cmp word [bp - 0x0012], byte 0   ; 0x4688
    jne short math_loc_4691          ; 0x468c
    jmp near loc_483c                ; 0x468e
math_loc_4691:
    mov ax, 0xa                      ; 0x4691
    imul word [bp + 0x4]             ; 0x4694
    mov cx, word [bp + 0x6]          ; 0x4697
    shl cx, 1                        ; 0x469a
    add ax, cx                       ; 0x469c
    mov bx, ax                       ; 0x469e
    cmp word [bx - 0x6d92], byte 0   ; 0x46a0
    jne short @..math_loc_4691.l1    ; 0x46a5
    cmp word [bx - 0x6d14], byte 0   ; 0x46a7
    jne short @..math_loc_4691.l1    ; 0x46ac
    jmp near loc_483c                ; 0x46ae
@..math_loc_4691.l1:
    cmp word [bp + 0x6], byte 2      ; 0x46b1
    jne short @..math_loc_4691.l2    ; 0x46b5
    mov ax, 0                        ; 0x46b7
    push ax                          ; 0x46ba
    push ax                          ; 0x46bb
    push ax                          ; 0x46bc
    mov ax, 3                        ; 0x46bd
    push ax                          ; 0x46c0
    push word [bp + 0x4]             ; 0x46c1
    mov ax, 0xffff                   ; 0x46c4
    push ax                          ; 0x46c7
    mov ax, word [bp + 0x20]         ; 0x46c8
    add ax, word [bp + 0x4]          ; 0x46cb
    push ax                          ; 0x46ce
    call loc_2eac                    ; 0x46cf
    pop cx                           ; 0x46d2
    push ax                          ; 0x46d3
    mov ax, 0                        ; 0x46d4
    push ax                          ; 0x46d7
    push ax                          ; 0x46d8
    push ax                          ; 0x46d9
    mov ax, 2                        ; 0x46da
    push ax                          ; 0x46dd
    mov ax, 0xffff                   ; 0x46de
    push ax                          ; 0x46e1
    mov ax, word [bp + 0x22]         ; 0x46e2
    add ax, word [bp + 0x4]          ; 0x46e5
    push ax                          ; 0x46e8
    mov ax, word [bp + 0x20]         ; 0x46e9
    add ax, word [bp + 0x4]          ; 0x46ec
    push ax                          ; 0x46ef
    call loc_2ec0                    ; 0x46f0
    add sp, byte 4                   ; 0x46f3
    push ax                          ; 0x46f6
    mov ax, 0xff                     ; 0x46f7
    push ax                          ; 0x46fa
    call api_idx_0004_5              ; 0x46fb
    add sp, byte 0x1c                ; 0x46fe
    jmp short @..math_loc_4691.l6    ; 0x4701
@..math_loc_4691.l2:
    cmp word [bp + 0x4], byte 0      ; 0x4703
    jle short @..math_loc_4691.l6    ; 0x4707
    mov ax, 0                        ; 0x4709
    push ax                          ; 0x470c
    push ax                          ; 0x470d
    push ax                          ; 0x470e
    mov ax, 3                        ; 0x470f
    push ax                          ; 0x4712
    push word [bp + 0x4]             ; 0x4713
    mov ax, 0xffff                   ; 0x4716
    push ax                          ; 0x4719
    cmp word [bp + 0x6], byte 3      ; 0x471a
    jne short @..math_loc_4691.l3    ; 0x471e
    mov ax, word [bp + 0x2a]         ; 0x4720
    add ax, word [bp + 0x4]          ; 0x4723
@..math_loc_4691.l3:
    push ax                          ; 0x4726
    mov ax, 0                        ; 0x4727
    push ax                          ; 0x472a
    push ax                          ; 0x472b
    push ax                          ; 0x472c
    mov ax, 2                        ; 0x472d
    push ax                          ; 0x4730
    mov ax, 0xffff                   ; 0x4731
    push ax                          ; 0x4734
    cmp word [bp + 0x6], byte 3      ; 0x4735
    jne short @..math_loc_4691.l4    ; 0x4739
    mov ax, word [bp + 0x2a]         ; 0x473b
    add ax, word [bp + 0x4]          ; 0x473e
    jmp short @..math_loc_4691.l5    ; 0x4741
@..math_loc_4691.l4:
    mov ax, word [bp + 0x28]         ; 0x4743
    add ax, word [bp + 0x4]          ; 0x4746
@..math_loc_4691.l5:
    push ax                          ; 0x4749
    mov ax, 0xff                     ; 0x474a
    push ax                          ; 0x474d
    call api_idx_0004_5              ; 0x474e
    add sp, byte 0x1c                ; 0x4751
@..math_loc_4691.l6:
    mov ax, 0xa                      ; 0x4754
    imul word [bp + 0x4]             ; 0x4757
    mov cx, word [bp + 0x6]          ; 0x475a
    shl cx, 1                        ; 0x475d
    add ax, cx                       ; 0x475f
    mov bx, ax                       ; 0x4761
    cmp word [bx - 0x6d92], byte 0   ; 0x4763
    jne short @..math_loc_4691.l7    ; 0x4768
    jmp near loc_483c                ; 0x476a
@..math_loc_4691.l7:
    mov cx, word [bx - 0x6d92]       ; 0x476d
    dec cx                           ; 0x4771
    mov ax, word [data_82ee]         ; 0x4772
    sub ax, cx                       ; 0x4775
    add ax, strict word 6            ; 0x4777
    mov cx, 4                        ; 0x477a
    cwd                              ; 0x477d
    idiv cx                          ; 0x477e
    mov word [bp - 0x0002], dx       ; 0x4780
    mov word [bp - 0x0004], 0        ; 0x4783
    mov ax, dx                       ; 0x4788
    mov cx, 2                        ; 0x478a
    cwd                              ; 0x478d
    idiv cx                          ; 0x478e
    mov ax, dx                       ; 0x4790
    test ax, ax                      ; 0x4792
    jne short @..math_loc_4691.l8    ; 0x4794
    cmp word [bp + 0x4], byte 0      ; 0x4796
    jg short @..math_loc_4691.l9     ; 0x479a
@..math_loc_4691.l8:
    cmp word [bp + 0x6], byte 2      ; 0x479c
    jne short @..math_loc_4691.l12   ; 0x47a0
@..math_loc_4691.l9:
    test ax, ax                      ; 0x47a2
    je short @..math_loc_4691.l10    ; 0x47a4
    mov ax, 3                        ; 0x47a6
    jmp short @..math_loc_4691.l11   ; 0x47a9
@..math_loc_4691.l10:
    mov ax, 0                        ; 0x47ab
@..math_loc_4691.l11:
    mov cx, word [bp + 0x4]          ; 0x47ae
    shl cx, 1                        ; 0x47b1
    shl cx, 1                        ; 0x47b3
    shl cx, 1                        ; 0x47b5
    add ax, cx                       ; 0x47b7
    inc ax                           ; 0x47b9
    inc ax                           ; 0x47ba
loc_47bb:
    inc ax                           ; 0x47bb
    mov word [bp - 0x0004], ax       ; 0x47bc
    mov ax, word [data_91d0]         ; 0x47bf
    mov word [bp - 0x0006], ax       ; 0x47c2
    mov ax, word [bx + 0x260]        ; 0x47c5
    mov word [bp - 0x0008], ax       ; 0x47c9
    jmp short @..math_loc_4691.l14   ; 0x47cc
@..math_loc_4691.l12:
    cmp word [bp + 0x4], byte 0      ; 0x47ce
    jle short @..math_loc_4691.l14   ; 0x47d2
    mov ax, word [bp + 0x4]          ; 0x47d4
    add ax, strict word 0x20         ; 0x47d7
    mov word [bp - 0x0004], ax       ; 0x47da
    mov ax, 0                        ; 0x47dd
    cmp word [bp + 0x6], byte 3      ; 0x47e0
    jne short @..math_loc_4691.l13   ; 0x47e4
    mov ax, 1                        ; 0x47e6
@..math_loc_4691.l13:
    mov word [bp - 0x0006], ax       ; 0x47e9
    mov word [bp - 0x0008], 0        ; 0x47ec
@..math_loc_4691.l14:
    cmp word [bp - 0x0004], byte 0   ; 0x47f1
    je short loc_483c                ; 0x47f5
    mov ax, 0                        ; 0x47f7
    push ax                          ; 0x47fa
    push ax                          ; 0x47fb
    push word [bp - 0x0006]          ; 0x47fc
    push ax                          ; 0x47ff
    push word [bp + 0x4]             ; 0x4800
    mov ax, 0xf8                     ; 0x4803
    push ax                          ; 0x4806
    mov ax, 0x48                     ; 0x4807
    push ax                          ; 0x480a
    push word [bp + 0x6]             ; 0x480b
    mov ax, word [bp + 0x6]          ; 0x480e
    cmp ax, strict word 2            ; 0x4811
    je short @..math_loc_4691.l15    ; 0x4814
    cmp dx, byte 1                   ; 0x4816
    jne short @..math_loc_4691.l15   ; 0x4819
    mov ax, 1                        ; 0x481b
    jmp short @..math_loc_4691.l16   ; 0x481e
@..math_loc_4691.l15:
    mov ax, 0                        ; 0x4820
@..math_loc_4691.l16:
    push ax                          ; 0x4823
    mov ax, 1                        ; 0x4824
    push ax                          ; 0x4827
    push word [bp - 0x0004]          ; 0x4828
    mov ax, 0                        ; 0x482b
    push ax                          ; 0x482e
    push word [bp - 0x0008]          ; 0x482f
    mov ax, 4                        ; 0x4832
    push ax                          ; 0x4835
    call api_idx_0004_5              ; 0x4836
    add sp, byte 0x1c                ; 0x4839
loc_483c:
    mov ax, 5                        ; 0x483c
    imul word [bp + 0x4]             ; 0x483f
    add ax, word [bp + 0x6]          ; 0x4842
    mov bx, ax                       ; 0x4845
    mov al, byte [bx - 0x6e0f]       ; 0x4847
    sub ah, ah                       ; 0x484b
    jmp near loc_4a9a                ; 0x484d
loc_4850:
    cmp word [data_91d4], byte 2     ; 0x4850
    je short loc_485a                ; 0x4855
    jmp near loc_4a00                ; 0x4857
loc_485a:
    cmp word [bp + 0x4], byte 5      ; 0x485a
    jl short loc_4863                ; 0x485e
    jmp near loc_49fd                ; 0x4860
loc_4863:
    mov ax, 0                        ; 0x4863
    push ax                          ; 0x4866
    push ax                          ; 0x4867
    push ax                          ; 0x4868
    push word [bp + 0xc]             ; 0x4869
    push word [bp + 0x4]             ; 0x486c
    mov ax, 0xffff                   ; 0x486f
    push ax                          ; 0x4872
    mov ax, word [bp + 0x18]         ; 0x4873
    add ax, word [bp + 0x4]          ; 0x4876
    push ax                          ; 0x4879
    call loc_2eac                    ; 0x487a
    pop cx                           ; 0x487d
    push ax                          ; 0x487e
    mov ax, 0                        ; 0x487f
    push ax                          ; 0x4882
    push ax                          ; 0x4883
    push ax                          ; 0x4884
    mov ax, 2                        ; 0x4885
    push ax                          ; 0x4888
    mov ax, 0xffff                   ; 0x4889
    push ax                          ; 0x488c
    mov ax, word [bp + 0x1a]         ; 0x488d
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
api_idx_0016:
    mov ax, 0xffea                   ; 0x4f53
    call ds_dispatch_f40b            ; 0x4f56
    mov bx, word [bp + 0x4]          ; 0x4f59
    mov al, byte [bx + 0xb]          ; 0x4f5c
    sub ah, ah                       ; 0x4f5f
    mov word [bp - 0x000c], ax       ; 0x4f61
    cmp byte [bx + 0xa], 0           ; 0x4f64
    je short @..api_idx_0016.l1      ; 0x4f68
    jmp near @..api_idx_0016.l10     ; 0x4f6a
@..api_idx_0016.l1:
    mov al, byte [bx + 0x8]          ; 0x4f6d
    sub ah, ah                       ; 0x4f70
    mov word [bp - 0x0002], ax       ; 0x4f72
    jmp near @..api_idx_0016.l8      ; 0x4f75
@..api_idx_0016.l2:
    mov word [bp - 0x000a], 0        ; 0x4f78
    mov al, byte [bp - 0x0002]       ; 0x4f7d
    mov byte [bp - 0x0016], al       ; 0x4f80
    mov byte [bp - 0x0015], 0        ; 0x4f83
    mov word [bp - 0x0006], 0        ; 0x4f87
    mov bx, word [bp + 0x4]          ; 0x4f8c
    mov al, byte [bx + 0x8]          ; 0x4f8f
    sub ah, ah                       ; 0x4f92
    inc ax                           ; 0x4f94
    cmp ax, word [bp - 0x0002]       ; 0x4f95
    jne short @..api_idx_0016.l3     ; 0x4f98
    mov ax, 3                        ; 0x4f9a
    jmp short @..api_idx_0016.l4     ; 0x4f9d
@..api_idx_0016.l3:
    mov ax, 1                        ; 0x4f9f
@..api_idx_0016.l4:
    mov word [bp - 0x0008], ax       ; 0x4fa2
    mov ax, word [bp - 0x0006]       ; 0x4fa5
    mov word [bp - 0x0004], ax       ; 0x4fa8
    jmp near @..api_idx_0016.l6      ; 0x4fab
@..api_idx_0016.l5:
    mov ax, 0                        ; 0x4fae
    push ax                          ; 0x4fb1
    push ax                          ; 0x4fb2
    lea ax, word [bp - 0x0016]       ; 0x4fb3
    push ax                          ; 0x4fb6
    mov bx, word [bp + 0x4]          ; 0x4fb7
    mov al, byte [bx + 0xf]          ; 0x4fba
    sub ah, ah                       ; 0x4fbd
    push ax                          ; 0x4fbf
    mov ax, 0x90                     ; 0x4fc0
    push ax                          ; 0x4fc3
    mov ax, 0x20                     ; 0x4fc4
    push ax                          ; 0x4fc7
    push word [bx + 0x6]             ; 0x4fc8
    push word [bx + 0x4]             ; 0x4fcb
    mov bx, word [bp - 0x0002]       ; 0x4fce
    mov al, byte [bx + 0x7013]       ; 0x4fd1
    sub ah, ah                       ; 0x4fd5
    add ax, word [bp - 0x000a]       ; 0x4fd7
    push ax                          ; 0x4fda
    mov bx, word [bp + 0x4]          ; 0x4fdb
    mov al, byte [bx + 0xd]          ; 0x4fde
    sub ah, ah                       ; 0x4fe1
    mov cx, 0xa                      ; 0x4fe3
    imul cx                          ; 0x4fe6
    mov cx, word [bp - 0x000c]       ; 0x4fe8
    shl cx, 1                        ; 0x4feb
    add ax, cx                       ; 0x4fed
    mov bx, ax                       ; 0x4fef
    mov ax, word [bx + 0x260]        ; 0x4ff1
    push ax                          ; 0x4ff5
    mov ax, word [bp - 0x0002]       ; 0x4ff6
    shl ax, 1                        ; 0x4ff9
    push ax                          ; 0x4ffb
    mov bx, word [bp + 0x4]          ; 0x4ffc
    mov al, byte [bx + 0xf]          ; 0x4fff
    sub ah, ah                       ; 0x5002
    mov cx, ax                       ; 0x5004
    pop ax                           ; 0x5006
    add ax, cx                       ; 0x5007
    mov bx, ax                       ; 0x5009
    mov al, byte [bx + 0x6fca]       ; 0x500b
    sub ah, ah                       ; 0x500f
    mov cx, ax                       ; 0x5011
    pop ax                           ; 0x5013
    add ax, cx                       ; 0x5014
    push ax                          ; 0x5016
    mov bx, word [bp + 0x4]          ; 0x5017
    mov al, byte [bx + 0xc]          ; 0x501a
    sub ah, ah                       ; 0x501d
    push ax                          ; 0x501f
    call ds_dispatch_efd1            ; 0x5020
    add sp, byte 0x16                ; 0x5023
    mov bx, word [bp + 0x4]          ; 0x5026
    mov al, byte [bx + 0xd]          ; 0x5029
    sub ah, ah                       ; 0x502c
    shl ax, 1                        ; 0x502e
    mov bx, ax                       ; 0x5030
    mov ax, word [bx + 0x29c]        ; 0x5032
    add word [bp - 0x000a], ax       ; 0x5036
    inc word [bp - 0x0004]           ; 0x5039
@..api_idx_0016.l6:
    mov ax, word [bp - 0x0004]       ; 0x503c
    cmp ax, word [bp - 0x0008]       ; 0x503f
    jge short @..api_idx_0016.l7     ; 0x5042
    jmp near @..api_idx_0016.l5      ; 0x5044
@..api_idx_0016.l7:
    inc word [bp - 0x0002]           ; 0x5047
@..api_idx_0016.l8:
    mov bx, word [bp + 0x4]          ; 0x504a
    mov al, byte [bx + 0x8]          ; 0x504d
    sub ah, ah                       ; 0x5050
    inc ax                           ; 0x5052
    inc ax                           ; 0x5053
    inc ax                           ; 0x5054
    cmp ax, word [bp - 0x0002]       ; 0x5055
    jle short @..api_idx_0016.l9     ; 0x5058
    jmp near @..api_idx_0016.l2      ; 0x505a
@..api_idx_0016.l9:
    jmp near @..api_idx_0016.l12     ; 0x505d
@..api_idx_0016.l10:
    mov word [bp - 0x000a], 0        ; 0x5060
    mov bx, word [bp + 0x4]          ; 0x5065
    mov al, byte [bx + 0x8]          ; 0x5068
    mov byte [bp - 0x0016], al       ; 0x506b
    mov byte [bp - 0x0015], 0        ; 0x506e
    mov word [bp - 0x0004], 0        ; 0x5072
@..api_idx_0016.l11:
    mov ax, 0                        ; 0x5077
    push ax                          ; 0x507a
    push ax                          ; 0x507b
    lea ax, word [bp - 0x0016]       ; 0x507c
    push ax                          ; 0x507f
    mov bx, word [bp + 0x4]          ; 0x5080
    mov al, byte [bx + 0xf]          ; 0x5083
    sub ah, ah                       ; 0x5086
    push ax                          ; 0x5088
    mov ax, 0x90                     ; 0x5089
    push ax                          ; 0x508c
    mov ax, 0x20                     ; 0x508d
    push ax                          ; 0x5090
    push word [bx + 0x6]             ; 0x5091
    push word [bx + 0x4]             ; 0x5094
    mov al, byte [bx + 0xd]          ; 0x5097
    sub ah, ah                       ; 0x509a
    shl ax, 1                        ; 0x509c
    mov bx, ax                       ; 0x509e
    mov ax, word [bx + 0x292]        ; 0x50a0
    add ax, word [bp - 0x000a]       ; 0x50a4
    push ax                          ; 0x50a7
    mov bx, word [bp + 0x4]          ; 0x50a8
    mov al, byte [bx + 0x8]          ; 0x50ab
    sub ah, ah                       ; 0x50ae
    shl ax, 1                        ; 0x50b0
    push ax                          ; 0x50b2
    mov al, byte [bx + 0xf]          ; 0x50b3
    sub ah, ah                       ; 0x50b6
    mov cx, ax                       ; 0x50b8
    pop ax                           ; 0x50ba
    add ax, cx                       ; 0x50bb
    mov bx, ax                       ; 0x50bd
    mov al, byte [bx + 0x6fca]       ; 0x50bf
    sub ah, ah                       ; 0x50c3
    push ax                          ; 0x50c5
    mov bx, word [bp + 0x4]          ; 0x50c6
    mov al, byte [bx + 0xc]          ; 0x50c9
    sub ah, ah                       ; 0x50cc
    push ax                          ; 0x50ce
    call ds_dispatch_efd1            ; 0x50cf
    add sp, byte 0x16                ; 0x50d2
    mov bx, word [bp + 0x4]          ; 0x50d5
    mov al, byte [bx + 0xd]          ; 0x50d8
    sub ah, ah                       ; 0x50db
    shl ax, 1                        ; 0x50dd
    mov bx, ax                       ; 0x50df
    mov ax, word [bx + 0x29c]        ; 0x50e1
    add word [bp - 0x000a], ax       ; 0x50e5
    inc word [bp - 0x0004]           ; 0x50e8
    mov ax, word [bp - 0x0004]       ; 0x50eb
    cmp ax, strict word 3            ; 0x50ee
    jl short @..api_idx_0016.l11     ; 0x50f1
@..api_idx_0016.l12:
    ret                              ; 0x50f3
api_idx_0024:
    mov ax, 0xffdc                   ; 0x50f4
    call ds_dispatch_f40b            ; 0x50f7
    mov ax, word [data_8f1c]         ; 0x50fa
    mov dx, word [data_8f1e]         ; 0x50fd
    mov cx, 0x5a0                    ; 0x5101
    mov bx, 0                        ; 0x5104
    call ds_dispatch_f99f            ; 0x5107
    add ax, strict word 1            ; 0x510a
    adc dx, byte 0                   ; 0x510d
    mov word [bp - 0x0004], ax       ; 0x5110
    add ax, strict word 0x12         ; 0x5113
    mov cx, 0x18                     ; 0x5116
    cwd                              ; 0x5119
    idiv cx                          ; 0x511a
    mov word [bp - 0x0006], dx       ; 0x511c
    mov ax, word [data_8f1c]         ; 0x511f
    mov dx, word [data_8f1e]         ; 0x5122
    mov cx, 0x5a0                    ; 0x5126
    mov bx, 0                        ; 0x5129
    call ds_dispatch_f9cd            ; 0x512c
    mov cx, 0x3c                     ; 0x512f
    mov bx, 0                        ; 0x5132
    call ds_dispatch_f99f            ; 0x5135
    cmp dx, byte 0                   ; 0x5138
    jg short @..api_idx_0024.l1      ; 0x513b
    jne short @..api_idx_0024.l2     ; 0x513d
    cmp ax, strict word 0xc          ; 0x513f
    jb short @..api_idx_0024.l2      ; 0x5142
@..api_idx_0024.l1:
    jmp short @..api_idx_0024.l3     ; 0x5144
@..api_idx_0024.l2:
    cmp word [bp - 0x0006], byte 0x0c ; 0x5146
    jle short @..api_idx_0024.l3     ; 0x514a
    dec word [bp - 0x0004]           ; 0x514c
    mov ax, word [bp - 0x0004]       ; 0x514f
    add ax, strict word 0x12         ; 0x5152
    mov cx, 0x18                     ; 0x5155
    cwd                              ; 0x5158
    idiv cx                          ; 0x5159
    mov word [bp - 0x0006], dx       ; 0x515b
@..api_idx_0024.l3:
    mov ax, 0x3c                     ; 0x515e
    imul word [bp - 0x0006]          ; 0x5161
    cwd                              ; 0x5164
    mov cx, ax                       ; 0x5165
    mov bx, dx                       ; 0x5167
    mov ax, word [data_8f1c]         ; 0x5169
    mov dx, word [data_8f1e]         ; 0x516c
    sub ax, cx                       ; 0x5170
    sbb dx, bx                       ; 0x5172
    mov cx, 0x5a0                    ; 0x5174
    mov bx, 0                        ; 0x5177
    call ds_dispatch_f9cd            ; 0x517a
    mov word [bp - 0x0008], ax       ; 0x517d
    cmp ax, strict word 0            ; 0x5180
    jl short @..api_idx_0024.l4      ; 0x5183
    cmp ax, 0x1e0                    ; 0x5185
    jl short @..api_idx_0024.l5      ; 0x5188
@..api_idx_0024.l4:
    ret                              ; 0x518a
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
api_idx_001e:
    mov ax, 0xffe2                   ; 0x529a
    call ds_dispatch_f40b            ; 0x529d
    mov word [bp - 0x0004], 0x14a    ; 0x52a0
    mov ax, word [data_8f1c]         ; 0x52a5
    mov dx, word [data_8f1e]         ; 0x52a8
    push ax                          ; 0x52ac
    push dx                          ; 0x52ad
    mov ax, word [bp - 0x0004]       ; 0x52ae
    cwd                              ; 0x52b1
    mov cx, ax                       ; 0x52b2
    mov bx, dx                       ; 0x52b4
    pop dx                           ; 0x52b6
    pop ax                           ; 0x52b7
    sub ax, cx                       ; 0x52b8
    sbb dx, bx                       ; 0x52ba
    mov cx, 0x5a0                    ; 0x52bc
    mov bx, 0                        ; 0x52bf
    call ds_dispatch_f9cd            ; 0x52c2
    mov word [bp - 0x0006], ax       ; 0x52c5
    cmp ax, strict word 0            ; 0x52c8
    jl short @..api_idx_001e.l1      ; 0x52cb
    cmp ax, 0x36c                    ; 0x52cd
    jl short @..api_idx_001e.l2      ; 0x52d0
@..api_idx_001e.l1:
    ret                              ; 0x52d2
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
api_idx_0030:
    mov ax, 0xffd0                   ; 0x53fd
    call ds_dispatch_f40b            ; 0x5400
    mov word [bp - 0x0024], 0        ; 0x5403
    mov word [bp - 0x0022], 4        ; 0x5408
    mov word [bp - 0x0020], 1        ; 0x540d
    mov word [bp - 0x001e], 3        ; 0x5412
    mov word [bp - 0x001c], 2        ; 0x5417
    mov word [data_8f20], 0          ; 0x541c
    mov ax, word [data_8f46]         ; 0x5422
    mov word [bp - 0x000a], ax       ; 0x5425
    mov ax, word [data_8f44]         ; 0x5428
    mov word [bp - 0x000c], ax       ; 0x542b
    mov ax, word [data_8f42]         ; 0x542e
    mov word [bp - 0x000e], ax       ; 0x5431
    mov ax, word [data_8f40]         ; 0x5434
    mov word [bp - 0x0010], ax       ; 0x5437
    mov ax, word [data_8f3e]         ; 0x543a
    mov word [bp - 0x0012], ax       ; 0x543d
    mov word [data_8f48], 0          ; 0x5440
    mov word [data_8456], 0          ; 0x5446
    mov ax, 0                        ; 0x544c
    push ax                          ; 0x544f
    mov ax, 0x8f                     ; 0x5450
    push ax                          ; 0x5453
    mov ax, 0xf7                     ; 0x5454
    push ax                          ; 0x5457
    mov ax, 0x20                     ; 0x5458
    push ax                          ; 0x545b
    mov ax, 0x48                     ; 0x545c
    push ax                          ; 0x545f
    call ds_dispatch_e901            ; 0x5460
    add sp, byte 0x0a                ; 0x5463
    mov ax, word [bp - 0x0012]       ; 0x5466
    mov cx, 6                        ; 0x5469
    shl ax, cl                       ; 0x546c
    mov cx, word [bp - 0x0010]       ; 0x546e
    shl cx, 1                        ; 0x5471
    shl cx, 1                        ; 0x5473
    shl cx, 1                        ; 0x5475
    add ax, cx                       ; 0x5477
    add ax, word [bp - 0x000e]       ; 0x5479
    mov word [bp - 0x0008], ax       ; 0x547c
    cmp word [data_830c], byte 0x0a  ; 0x547f
    je short @..api_idx_0030.l1      ; 0x5484
    cmp word [data_830c], byte 0x19  ; 0x5486
    je short @..api_idx_0030.l1      ; 0x548b
    jmp near @..api_idx_0030.l5      ; 0x548d
@..api_idx_0030.l1:
    push ax                          ; 0x5490
    mov ax, word [data_0e14]         ; 0x5491
    add ax, 0x930                    ; 0x5494
    push ax                          ; 0x5497
    call ds_dispatch_ec74            ; 0x5498
    add sp, byte 4                   ; 0x549b
    test ax, ax                      ; 0x549e
    jne short @..api_idx_0030.l2     ; 0x54a0
    jmp near @..api_idx_0030.l5      ; 0x54a2
@..api_idx_0030.l2:
    mov ax, 0x63                     ; 0x54a5
    push ax                          ; 0x54a8
    mov ax, 0x8e                     ; 0x54a9
    push ax                          ; 0x54ac
    mov ax, 0xf7                     ; 0x54ad
    push ax                          ; 0x54b0
    mov ax, 0x21                     ; 0x54b1
    push ax                          ; 0x54b4
    mov ax, 0x48                     ; 0x54b5
    push ax                          ; 0x54b8
    call ds_dispatch_e901            ; 0x54b9
    add sp, byte 0x0a                ; 0x54bc
    mov ax, word [data_830c]         ; 0x54bf
    cmp ax, word [data_8f28]         ; 0x54c2
    jne short @..api_idx_0030.l4     ; 0x54c6
    mov ax, word [bp - 0x0012]       ; 0x54c8
    cmp ax, word [data_8f2a]         ; 0x54cb
    jne short @..api_idx_0030.l4     ; 0x54cf
    mov ax, word [bp - 0x000e]       ; 0x54d1
    cmp ax, word [data_8f2e]         ; 0x54d4
    jne short @..api_idx_0030.l4     ; 0x54d8
    mov ax, word [bp - 0x0010]       ; 0x54da
    cmp ax, word [data_8f2c]         ; 0x54dd
    jne short @..api_idx_0030.l4     ; 0x54e1
    cmp word [data_8f22], byte 0     ; 0x54e3
    je short @..api_idx_0030.l3      ; 0x54e8
    mov word [data_8f20], 0xffff     ; 0x54ea
@..api_idx_0030.l3:
    mov byte [bp - 0x0030], 2        ; 0x54f0
    mov byte [bp - 0x002f], 0        ; 0x54f4
    mov ax, 0                        ; 0x54f8
    push ax                          ; 0x54fb
    push ax                          ; 0x54fc
    lea ax, word [bp - 0x0030]       ; 0x54fd
    push ax                          ; 0x5500
    mov ax, 0                        ; 0x5501
    push ax                          ; 0x5504
    mov ax, 0x90                     ; 0x5505
    push ax                          ; 0x5508
    mov ax, 0x20                     ; 0x5509
    push ax                          ; 0x550c
    mov ax, 0xf8                     ; 0x550d
    push ax                          ; 0x5510
    mov ax, 0x48                     ; 0x5511
    push ax                          ; 0x5514
    mov al, byte [data_7b05]         ; 0x5515
    sub ah, ah                       ; 0x5518
    inc ax                           ; 0x551a
    push ax                          ; 0x551b
    mov al, byte [api_idx_0002_14]   ; 0x551c
    sub ah, ah                       ; 0x551f
    inc ax                           ; 0x5521
    push ax                          ; 0x5522
    mov ax, 0xc                      ; 0x5523
    push ax                          ; 0x5526
    call ds_dispatch_efd1            ; 0x5527
    add sp, byte 0x16                ; 0x552a
@..api_idx_0030.l4:
    call ds_dispatch_da22            ; 0x552d
    ret                              ; 0x5530
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
math_loc_678c:
    mov ax, 0                        ; 0x678c
    call ds_dispatch_f40b            ; 0x678f
    mov bx, word [data_0e14]         ; 0x6792
    mov si, word [bp + 0x4]          ; 0x6796
    mov al, byte [bx + si + 0x490]   ; 0x6799
    sub ah, ah                       ; 0x679d
    cmp ax, word [bp + 0x6]          ; 0x679f
    jg short @..math_loc_678c.l1     ; 0x67a2
    add ax, strict word 7            ; 0x67a4
    cmp ax, word [bp + 0x6]          ; 0x67a7
    jl short @..math_loc_678c.l1     ; 0x67aa
    mov al, byte [bx + si + 0x4a0]   ; 0x67ac
    sub ah, ah                       ; 0x67b0
    cmp ax, word [bp + 0x8]          ; 0x67b2
    jg short @..math_loc_678c.l1     ; 0x67b5
    add ax, strict word 7            ; 0x67b7
    cmp ax, word [bp + 0x8]          ; 0x67ba
    jl short @..math_loc_678c.l1     ; 0x67bd
    mov ax, si                       ; 0x67bf
    ret                              ; 0x67c1
@..math_loc_678c.l1:
    mov ax, 0xffff                   ; 0x67c2
    ret                              ; 0x67c5
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x67c6
    call ds_dispatch_f40b            ; 0x67c9
    push word [bp + 0xc]             ; 0x67cc
    push word [bp + 0xa]             ; 0x67cf
    mov bx, word [bp + 0x8]          ; 0x67d2
    push word [bx]                   ; 0x67d5
    call math_loc_678c               ; 0x67d7
    add sp, byte 6                   ; 0x67da
    mov word [bp - 0x0004], ax       ; 0x67dd
    cmp ax, strict word 0xffff       ; 0x67e0
    jne short @..api_idx_0004_6.l3   ; 0x67e3
    push word [bp + 0xc]             ; 0x67e5
    push word [bp + 0xa]             ; 0x67e8
    push word [data_8f48]            ; 0x67eb
    call math_loc_678c               ; 0x67ef
    add sp, byte 6                   ; 0x67f2
    mov word [bp - 0x0004], ax       ; 0x67f5
    cmp ax, strict word 0xffff       ; 0x67f8
    jne short @..api_idx_0004_6.l3   ; 0x67fb
    mov bx, word [bp + 0x8]          ; 0x67fd
    mov ax, word [bx]                ; 0x6800
    inc ax                           ; 0x6802
    mov cx, 0x10                     ; 0x6803
    cwd                              ; 0x6806
    idiv cx                          ; 0x6807
    mov word [bp - 0x0002], dx       ; 0x6809
@..api_idx_0004_6.l1:
    push word [bp + 0xc]             ; 0x680c
    push word [bp + 0xa]             ; 0x680f
    push word [bp - 0x0002]          ; 0x6812
    call math_loc_678c               ; 0x6815
    add sp, byte 6                   ; 0x6818
    mov word [bp - 0x0004], ax       ; 0x681b
    cmp ax, strict word 0xffff       ; 0x681e
    jne short @..api_idx_0004_6.l3   ; 0x6821
    mov ax, word [bp - 0x0002]       ; 0x6823
    inc ax                           ; 0x6826
    mov cx, 0x10                     ; 0x6827
    cwd                              ; 0x682a
    idiv cx                          ; 0x682b
    mov word [bp - 0x0002], dx       ; 0x682d
    mov bx, word [bp + 0x8]          ; 0x6830
    cmp dx, word [bx]                ; 0x6833
    jne short @..api_idx_0004_6.l2   ; 0x6835
    mov ax, 1                        ; 0x6837
    ret                              ; 0x683a
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
api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x6882
    call ds_dispatch_f40b            ; 0x6885
    mov ax, word [bp + 0xa]          ; 0x6888
    mov word [bp - 0x0002], ax       ; 0x688b
    jmp short @..api_idx_0002_11.l4  ; 0x688e
@..api_idx_0002_11.l1:
    mov bx, word [data_0e12]         ; 0x6890
    mov si, word [bp - 0x0002]       ; 0x6894
    mov al, byte [bx + si + 0x870]   ; 0x6897
    sub ah, ah                       ; 0x689b
    cmp ax, word [bp + 0x8]          ; 0x689d
    je short @..api_idx_0002_11.l2   ; 0x68a0
    mov ax, 0xffff                   ; 0x68a2
    ret                              ; 0x68a5
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
api_idx_0006_5:
    mov ax, 0xfffa                   ; 0x6960
    call ds_dispatch_f40b            ; 0x6963
    mov ax, word [bp + 0x8]          ; 0x6966
    xchg al, ah                      ; 0x6969
    sub al, al                       ; 0x696b
    mov dx, word [bp + 0xa]          ; 0x696d
    mov cx, 4                        ; 0x6970
    shl dx, cl                       ; 0x6973
    mov cx, dx                       ; 0x6975
    add ax, cx                       ; 0x6977
    add ax, word [bp + 0xc]          ; 0x6979
    mov word [bp - 0x0004], ax       ; 0x697c
    mov ax, word [data_0e10]         ; 0x697f
    mov word [bp - 0x0006], ax       ; 0x6982
    mov word [bp - 0x0002], 0        ; 0x6985
    jmp short @..api_idx_0006_5.l5   ; 0x698a
@..api_idx_0006_5.l1:
    mov bx, word [bp - 0x0006]       ; 0x698c
    mov al, byte [bx]                ; 0x698f
    sub ah, ah                       ; 0x6991
    cmp ax, word [bp + 0x4]          ; 0x6993
    jne short @..api_idx_0006_5.l4   ; 0x6996
    mov al, byte [bx + 0x1]          ; 0x6998
    sub ah, ah                       ; 0x699b
    cmp ax, word [bp + 0x6]          ; 0x699d
    jne short @..api_idx_0006_5.l4   ; 0x69a0
    cmp word [bp + 0x6], byte 6      ; 0x69a2
    jne short @..api_idx_0006_5.l3   ; 0x69a6
    mov ax, word [bx + 0x2]          ; 0x69a8
    cmp ax, word [bp + 0x8]          ; 0x69ab
    jne short @..api_idx_0006_5.l2   ; 0x69ae
    mov ax, word [bp - 0x0002]       ; 0x69b0
    ret                              ; 0x69b3
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
api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x69d6
    call ds_dispatch_f40b            ; 0x69d9
    push word [bp + 0xc]             ; 0x69dc
    push word [bp + 0xa]             ; 0x69df
    push word [bp + 0x8]             ; 0x69e2
    push word [bp + 0x6]             ; 0x69e5
    push word [bp + 0x4]             ; 0x69e8
    call api_idx_0006_5              ; 0x69eb
    add sp, byte 0x0a                ; 0x69ee
    mov word [bp - 0x0002], ax       ; 0x69f1
    cmp ax, strict word 0xffff       ; 0x69f4
    jne short @..api_idx_0004_7.l2   ; 0x69f7
    mov ax, word [data_590e]         ; 0x69f9
    mov word [bp - 0x0002], ax       ; 0x69fc
    inc word [data_590e]             ; 0x69ff
    mov ax, word [data_590e]         ; 0x6a03
    cmp ax, 0x200                    ; 0x6a06
    jl short @..api_idx_0004_7.l2    ; 0x6a09
@..api_idx_0004_7.l1:
    mov ax, 0                        ; 0x6a0b
    push ax                          ; 0x6a0e
    call ds_dispatch_b7e0            ; 0x6a0f
    pop cx                           ; 0x6a12
    jmp short @..api_idx_0004_7.l1   ; 0x6a13
@..api_idx_0004_7.l2:
    mov ax, 6                        ; 0x6a15
    imul word [bp - 0x0002]          ; 0x6a18
    mov cx, ax                       ; 0x6a1b
    mov ax, word [data_0e10]         ; 0x6a1d
    add ax, cx                       ; 0x6a20
    mov word [bp - 0x0004], ax       ; 0x6a22
    mov al, byte [bp + 0x4]          ; 0x6a25
    mov bx, word [bp - 0x0004]       ; 0x6a28
    mov byte [bx], al                ; 0x6a2b
    mov al, byte [bp + 0x6]          ; 0x6a2d
    mov bx, word [bp - 0x0004]       ; 0x6a30
    mov byte [bx + 0x1], al          ; 0x6a33
    mov ax, word [bp + 0x8]          ; 0x6a36
    xchg al, ah                      ; 0x6a39
    sub al, al                       ; 0x6a3b
    mov dx, word [bp + 0xa]          ; 0x6a3d
    mov cx, 4                        ; 0x6a40
    shl dx, cl                       ; 0x6a43
    mov cx, dx                       ; 0x6a45
    add ax, cx                       ; 0x6a47
    add ax, word [bp + 0xc]          ; 0x6a49
    mov bx, word [bp - 0x0004]       ; 0x6a4c
    mov word [bx + 0x2], ax          ; 0x6a4f
    mov ax, word [bp + 0x6]          ; 0x6a52
    jmp short @..api_idx_0004_7.l3   ; 0x6a55
    mov ax, word [bp + 0xe]          ; 0x6a57
    mov cx, 4                        ; 0x6a5a
    shl ax, cl                       ; 0x6a5d
    add ax, word [bp + 0x10]         ; 0x6a5f
    db 0x86, 0xe0 ; xchg al, ah
    db 0x2a, 0xc0 ; sub al, al
    mov dx, word [bp + 0x12]         ; 0x6a66
    shl dx, cl                       ; 0x6a69
    db 0x8b, 0xca ; mov cx, dx
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0x14]         ; 0x6a6f
    mov bx, word [bp - 0x0004]       ; 0x6a72
    mov word [bx + 0x4], ax          ; 0x6a75
    jmp short @..api_idx_0004_7.l4   ; 0x6a78
    mov ax, word [bp + 0xe]          ; 0x6a7a
    mov bx, word [bp - 0x0004]       ; 0x6a7d
    mov word [bx + 0x4], ax          ; 0x6a80
    jmp short @..api_idx_0004_7.l4   ; 0x6a83
    mov ax, word [bp + 0xe]          ; 0x6a85
    db 0x86, 0xe0 ; xchg al, ah
    db 0x2a, 0xc0 ; sub al, al
    add ax, word [bp + 0x10]         ; 0x6a8c
    mov bx, word [bp - 0x0004]       ; 0x6a8f
    mov word [bx + 0x4], ax          ; 0x6a92
    jmp short @..api_idx_0004_7.l4   ; 0x6a95
    mov ax, word [bp + 0x8]          ; 0x6a97
    mov bx, word [bp - 0x0004]       ; 0x6a9a
    mov word [bx + 0x2], ax          ; 0x6a9d
    mov ax, word [bp + 0xe]          ; 0x6aa0
    mov bx, word [bp - 0x0004]       ; 0x6aa3
    mov word [bx + 0x4], ax          ; 0x6aa6
    jmp short @..api_idx_0004_7.l4   ; 0x6aa9
    sahf                             ; 0x6aab
    mov dx, 0xbac1                   ; 0x6aac
    sar word [bp + si - 0x453f], 0xc1 ; 0x6aaf
    mov dx, 0xbacc                   ; 0x6ab4
    db 0xde, 0xba
@..api_idx_0004_7.l3:
    cmp ax, strict word 7            ; 0x6ab9
    jae short @..api_idx_0004_7.l4   ; 0x6abc
    xchg bx, ax                      ; 0x6abe
    shl bx, 1                        ; 0x6abf
    jmp [cs:bx - 0x450e]             ; 0x6ac1
@..api_idx_0004_7.l4:
    ret                              ; 0x6ac6
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
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x6b0a
    call ds_dispatch_f40b            ; 0x6b0d
    mov ax, 0                        ; 0x6b10
    push ax                          ; 0x6b13
    push word [data_8d10]            ; 0x6b14
    push word [data_8d0e]            ; 0x6b18
    call ds_dispatch_e94f            ; 0x6b1c
    add sp, byte 6                   ; 0x6b1f
    mov byte [bp - 0x000a], 1        ; 0x6b22
    mov byte [bp - 0x0009], 0        ; 0x6b26
    mov ax, 0                        ; 0x6b2a
    push ax                          ; 0x6b2d
    push ax                          ; 0x6b2e
    lea ax, word [bp - 0x000a]       ; 0x6b2f
    push ax                          ; 0x6b32
    mov ax, 0                        ; 0x6b33
    push ax                          ; 0x6b36
    mov ax, 0xc7                     ; 0x6b37
    push ax                          ; 0x6b3a
    mov ax, 0                        ; 0x6b3b
    push ax                          ; 0x6b3e
    mov ax, 0x13f                    ; 0x6b3f
    push ax                          ; 0x6b42
    mov ax, 0                        ; 0x6b43
    push ax                          ; 0x6b46
    mov ax, 0x9a                     ; 0x6b47
    push ax                          ; 0x6b4a
    mov ax, 0x37                     ; 0x6b4b
    push ax                          ; 0x6b4e
    mov ax, api_idx_0002             ; 0x6b4f
    push ax                          ; 0x6b52
    call ds_dispatch_efd1            ; 0x6b53
    add sp, byte 0x16                ; 0x6b56
    ret                              ; 0x6b59
math_loc_6b5a:
    mov ax, 0                        ; 0x6b5a
    call ds_dispatch_f40b            ; 0x6b5d
    cmp word [data_9b48], byte 0     ; 0x6b60
    je short @..math_loc_6b5a.l1     ; 0x6b65
    ret                              ; 0x6b67
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
api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x6c0a
    call ds_dispatch_f40b            ; 0x6c0d
    cmp word [data_9b4c], byte 3     ; 0x6c10
    jle short @..api_idx_0004_8.l1   ; 0x6c15
    mov ax, 0                        ; 0x6c17
    push ax                          ; 0x6c1a
    call math_loc_6b5a               ; 0x6c1b
    pop cx                           ; 0x6c1e
@..api_idx_0004_8.l1:
    mov bx, word [bp + 0x4]          ; 0x6c1f
    cmp byte [bx], 0                 ; 0x6c22
    jne short @..api_idx_0004_8.l2   ; 0x6c25
    inc word [data_9b4c]             ; 0x6c27
    ret                              ; 0x6c2b
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
api_idx_0090:
    mov ax, 0xff70                   ; 0x6cc9
    call ds_dispatch_f40b            ; 0x6ccc
@..api_idx_0090.l1:
    mov bx, word [bp + 0x4]          ; 0x6ccf
    mov al, byte [bx]                ; 0x6cd2
    sub ah, ah                       ; 0x6cd4
    push ax                          ; 0x6cd6
    mov ax, 0x917e                   ; 0x6cd7
    push ax                          ; 0x6cda
    call ds_dispatch_ee4a            ; 0x6cdb
    add sp, byte 4                   ; 0x6cde
    mov word [bp - 0x0004], ax       ; 0x6ce1
    cmp ax, strict word 0            ; 0x6ce4
    jge short @..api_idx_0090.l2     ; 0x6ce7
    jmp near @..api_idx_0090.l5      ; 0x6ce9
@..api_idx_0090.l2:
    jmp near @..api_idx_0090.l3      ; 0x6cec
    inc word [bp + 0x4]              ; 0x6cef
    mov ax, data_9b50                ; 0x6cf2
    push ax                          ; 0x6cf5
    call api_idx_0004_8              ; 0x6cf6
    pop cx                           ; 0x6cf9
    jmp near @..api_idx_0090.l4      ; 0x6cfa
    inc word [bp + 0x4]              ; 0x6cfd
    mov ax, data_9b50                ; 0x6d00
    push ax                          ; 0x6d03
    call api_idx_0004_8              ; 0x6d04
    pop cx                           ; 0x6d07
    cmp word [data_9b48], byte 0     ; 0x6d08
    jne short loc_6d41               ; 0x6d0d
    mov ax, 0xc6                     ; 0x6d0f
    push ax                          ; 0x6d12
    mov ax, 0x109                    ; 0x6d13
    push ax                          ; 0x6d16
    mov ax, 0x92                     ; 0x6d17
    push ax                          ; 0x6d1a
    mov ax, 0x37                     ; 0x6d1b
    push ax                          ; 0x6d1e
    db 0xe8, 0x11, 0x4e ; call ds_dispatch_bb33
    add sp, byte 8                   ; 0x6d22
    push word [data_905a]            ; 0x6d25
    call api_idx_0006_2              ; 0x6d29
    pop cx                           ; 0x6d2c
    cmp word [data_59fa], byte 0     ; 0x6d2d
    je short loc_6d41                ; 0x6d32
    cmp word [data_9b4a], byte 0     ; 0x6d34
    jne short loc_6d41               ; 0x6d39
    mov word [data_9b48], 1          ; 0x6d3b
    jmp near @..api_idx_0090.l4      ; 0x6d41
    inc word [bp + 0x4]              ; 0x6d44
    mov ax, data_9b50                ; 0x6d47
    push ax                          ; 0x6d4a
    call api_idx_0004_8              ; 0x6d4b
    pop cx                           ; 0x6d4e
    cmp word [data_9b48], byte 0     ; 0x6d4f
    jne short loc_6d6c               ; 0x6d54
    mov ax, 0xc6                     ; 0x6d56
    push ax                          ; 0x6d59
    mov ax, 0x109                    ; 0x6d5a
    push ax                          ; 0x6d5d
    mov ax, 0x92                     ; 0x6d5e
    push ax                          ; 0x6d61
    mov ax, 0x37                     ; 0x6d62
    push ax                          ; 0x6d65
    db 0xe8, 0xca, 0x4d ; call ds_dispatch_bb33
    add sp, byte 8                   ; 0x6d69
    jmp near @..api_idx_0090.l4      ; 0x6d6c
    inc word [bp + 0x4]              ; 0x6d6f
    call api_idx_000a_2              ; 0x6d72
    mov word [data_9b4c], 0          ; 0x6d75
    jmp near @..api_idx_0090.l4      ; 0x6d7b
    inc word [bp + 0x4]              ; 0x6d7e
    mov ax, data_9b50                ; 0x6d81
    push ax                          ; 0x6d84
    call api_idx_0004_8              ; 0x6d85
    pop cx                           ; 0x6d88
    mov ax, 0                        ; 0x6d89
    push ax                          ; 0x6d8c
    call math_loc_6b5a               ; 0x6d8d
    pop cx                           ; 0x6d90
    jmp near @..api_idx_0090.l4      ; 0x6d91
    inc word [bp + 0x4]              ; 0x6d94
    call loc_0140                    ; 0x6d97
    mov ax, 0x10                     ; 0x6d9a
    push ax                          ; 0x6d9d
    mov ax, 0xa                      ; 0x6d9e
    push ax                          ; 0x6da1
    db 0xe8, 0x77, 0x68 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x6da5
    mov byte [bp - 0x0090], 1        ; 0x6da8
    mov byte [bp - 0x008f], 0        ; 0x6dad
    mov ax, 0                        ; 0x6db2
    push ax                          ; 0x6db5
    push ax                          ; 0x6db6
    lea ax, word [bp - 0x0090]       ; 0x6db7
    push ax                          ; 0x6dbb
    mov ax, 0                        ; 0x6dbc
    push ax                          ; 0x6dbf
    mov ax, 0xc7                     ; 0x6dc0
    push ax                          ; 0x6dc3
    mov ax, 0                        ; 0x6dc4
    push ax                          ; 0x6dc7
    mov ax, 0x13f                    ; 0x6dc8
    push ax                          ; 0x6dcb
    mov ax, 0                        ; 0x6dcc
    push ax                          ; 0x6dcf
    mov ax, 0x92                     ; 0x6dd0
    push ax                          ; 0x6dd3
    mov ax, 0x59                     ; 0x6dd4
    push ax                          ; 0x6dd7
    mov ax, 0x10                     ; 0x6dd8
    push ax                          ; 0x6ddb
    db 0xe8, 0xf2, 0x81 ; call ds_dispatch_efd1
    add sp, byte 0x16                ; 0x6ddf
    mov ax, 0x10                     ; 0x6de2
    push ax                          ; 0x6de5
    db 0xe8, 0x41, 0x53 ; call ds_dispatch_c12a
    pop cx                           ; 0x6de9
    call loc_0344                    ; 0x6dea
    jmp short @..api_idx_0090.l4     ; 0x6ded
    inc word [bp + 0x4]              ; 0x6def
    mov bx, word [bp + 0x4]          ; 0x6df2
    mov al, byte [bx]                ; 0x6df5
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0006], ax       ; 0x6df9
    cmp ax, strict word 0x63         ; 0x6dfc
    jne short loc_6e06               ; 0x6dff
    mov word [bp - 0x0006], 0x20     ; 0x6e01
    push word [bp - 0x0006]          ; 0x6e06
    call loc_6ac7                    ; 0x6e09
    pop cx                           ; 0x6e0c
    inc word [bp + 0x4]              ; 0x6e0d
    jmp short @..api_idx_0090.l4     ; 0x6e10
    ss mov bp, 0xbd44                ; 0x6e12
    mov di, word [di - 0x424a]       ; 0x6e16
    lds di, word [di - 0x4225]       ; 0x6e1a
    db 0x36, 0xbe
@..api_idx_0090.l3:
    cmp ax, strict word 7            ; 0x6e20
    jae short @..api_idx_0090.l4     ; 0x6e23
    xchg bx, ax                      ; 0x6e25
    shl bx, 1                        ; 0x6e26
    jmp [cs:bx - 0x41a7]             ; 0x6e28
@..api_idx_0090.l4:
    jmp near @..api_idx_0090.l1      ; 0x6e2d
@..api_idx_0090.l5:
    cmp byte [data_9b50], 0          ; 0x6e30
    je short @..api_idx_0090.l6      ; 0x6e35
    mov ax, data_9b50                ; 0x6e37
    push ax                          ; 0x6e3a
    lea ax, word [bp - 0x0086]       ; 0x6e3b
    push ax                          ; 0x6e3f
    call ds_dispatch_f364            ; 0x6e40
    add sp, byte 4                   ; 0x6e43
    mov ax, 0x9186                   ; 0x6e46
    push ax                          ; 0x6e49
    lea ax, word [bp - 0x0086]       ; 0x6e4a
    push ax                          ; 0x6e4e
    call ds_dispatch_f32d            ; 0x6e4f
    add sp, byte 4                   ; 0x6e52
    push word [bp + 0x4]             ; 0x6e55
    lea ax, word [bp - 0x0086]       ; 0x6e58
    push ax                          ; 0x6e5c
    call ds_dispatch_f32d            ; 0x6e5d
    add sp, byte 4                   ; 0x6e60
    jmp short @..api_idx_0090.l7     ; 0x6e63
@..api_idx_0090.l6:
    push word [bp + 0x4]             ; 0x6e65
    lea ax, word [bp - 0x0086]       ; 0x6e68
    push ax                          ; 0x6e6c
    call ds_dispatch_f364            ; 0x6e6d
    add sp, byte 4                   ; 0x6e70
@..api_idx_0090.l7:
    mov ax, 2                        ; 0x6e73
    push ax                          ; 0x6e76
    lea ax, word [bp - 0x0086]       ; 0x6e77
    push ax                          ; 0x6e7b
    call ds_dispatch_e883            ; 0x6e7c
    add sp, byte 4                   ; 0x6e7f
    mov word [bp - 0x0002], ax       ; 0x6e82
    cmp ax, 0xb8                     ; 0x6e85
    jle short @..api_idx_0090.l8     ; 0x6e88
    mov ax, data_9b50                ; 0x6e8a
    push ax                          ; 0x6e8d
    call api_idx_0004_8              ; 0x6e8e
    pop cx                           ; 0x6e91
    push word [bp + 0x4]             ; 0x6e92
    mov ax, data_9b50                ; 0x6e95
    push ax                          ; 0x6e98
    call ds_dispatch_f364            ; 0x6e99
    add sp, byte 4                   ; 0x6e9c
    jmp short @..api_idx_0090.l9     ; 0x6e9f
@..api_idx_0090.l8:
    lea ax, word [bp - 0x0086]       ; 0x6ea1
    push ax                          ; 0x6ea5
    mov ax, data_9b50                ; 0x6ea6
    push ax                          ; 0x6ea9
    call ds_dispatch_f364            ; 0x6eaa
    add sp, byte 4                   ; 0x6ead
@..api_idx_0090.l9:
    ret                              ; 0x6eb0
api_idx_0004_9:
    mov ax, 0xfffc                   ; 0x6eb1
    call ds_dispatch_f40b            ; 0x6eb4
@..api_idx_0004_9.l1:
    mov ax, 0x20                     ; 0x6eb7
    push ax                          ; 0x6eba
    push word [bp + 0x4]             ; 0x6ebb
    call ds_dispatch_ee4a            ; 0x6ebe
    add sp, byte 4                   ; 0x6ec1
    mov word [bp - 0x0002], ax       ; 0x6ec4
    cmp ax, strict word 0xffff       ; 0x6ec7
    je short @..api_idx_0004_9.l4    ; 0x6eca
    mov bx, word [bp + 0x4]          ; 0x6ecc
    mov si, ax                       ; 0x6ecf
    mov byte [bx + si], 0            ; 0x6ed1
@..api_idx_0004_9.l2:
    mov ax, 0x5f                     ; 0x6ed4
    push ax                          ; 0x6ed7
    push word [bp + 0x4]             ; 0x6ed8
    call ds_dispatch_ee4a            ; 0x6edb
    add sp, byte 4                   ; 0x6ede
    mov word [bp - 0x0004], ax       ; 0x6ee1
    cmp ax, strict word 0xffff       ; 0x6ee4
    je short @..api_idx_0004_9.l3    ; 0x6ee7
    mov bx, word [bp + 0x4]          ; 0x6ee9
    mov si, ax                       ; 0x6eec
    mov byte [bx + si], 0x20         ; 0x6eee
    jmp short @..api_idx_0004_9.l2   ; 0x6ef1
@..api_idx_0004_9.l3:
    push word [bp + 0x4]             ; 0x6ef3
    call api_idx_0090                ; 0x6ef6
    pop cx                           ; 0x6ef9
    mov ax, word [bp - 0x0002]       ; 0x6efa
    add word [bp + 0x4], ax          ; 0x6efd
    add word [bp + 0x4], byte 1      ; 0x6f00
    jmp short @..api_idx_0004_9.l1   ; 0x6f04
@..api_idx_0004_9.l4:
    mov bx, word [bp + 0x4]          ; 0x6f06
    cmp byte [bx], 0                 ; 0x6f09
    je short @..api_idx_0004_9.l5    ; 0x6f0c
    push bx                          ; 0x6f0e
    call api_idx_0090                ; 0x6f0f
    pop cx                           ; 0x6f12
@..api_idx_0004_9.l5:
    ret                              ; 0x6f13
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
math_loc_6fbf:
    mov ax, 0                        ; 0x6fbf
    call ds_dispatch_f40b            ; 0x6fc2
    mov ax, 0x248                    ; 0x6fc5
    imul word [bp + 0x4]             ; 0x6fc8
    add ax, word [bp + 0x6]          ; 0x6fcb
    mov bx, ax                       ; 0x6fce
    cmp byte [bx + 0x5d6c], 0x64     ; 0x6fd0
    jae short @..math_loc_6fbf.l1    ; 0x6fd5
    mov al, byte [bx + 0x5d6c]       ; 0x6fd7
    sub ah, ah                       ; 0x6fdb
    push ax                          ; 0x6fdd
    call ds_dispatch_b7a9            ; 0x6fde
    pop cx                           ; 0x6fe1
    push ax                          ; 0x6fe2
    mov ax, 0x248                    ; 0x6fe3
    imul word [bp + 0x4]             ; 0x6fe6
    mov bx, ax                       ; 0x6fe9
    mov ax, word [bx + 0x5c18]       ; 0x6feb
    imul word [bp + 0x8]             ; 0x6fef
    mov cx, ax                       ; 0x6ff2
    pop ax                           ; 0x6ff4
    sub ax, cx                       ; 0x6ff5
    jg short @..math_loc_6fbf.l1     ; 0x6ff7
    add bx, word [bp + 0x6]          ; 0x6ff9
    inc byte [bx + 0x5d6c]           ; 0x6ffc
@..math_loc_6fbf.l1:
    ret                              ; 0x7000
api_idx_0002_12:
    mov ax, 0xfffe                   ; 0x7001
    call ds_dispatch_f40b            ; 0x7004
    mov ax, 4                        ; 0x7007
    push ax                          ; 0x700a
    call ds_dispatch_b7a9            ; 0x700b
    pop cx                           ; 0x700e
    mov word [bp - 0x0002], ax       ; 0x700f
@..api_idx_0002_12.l1:
    mov ax, word [bp - 0x0002]       ; 0x7012
    shl ax, 1                        ; 0x7015
    mov si, ax                       ; 0x7017
    mov bx, word [bp + 0x4]          ; 0x7019
    cmp word [bx + si], byte 0       ; 0x701c
    jne short @..api_idx_0002_12.l2  ; 0x701f
    mov ax, word [bp - 0x0002]       ; 0x7021
    inc ax                           ; 0x7024
    mov cx, 4                        ; 0x7025
    cwd                              ; 0x7028
    idiv cx                          ; 0x7029
    mov word [bp - 0x0002], dx       ; 0x702b
    jmp short @..api_idx_0002_12.l1  ; 0x702e
@..api_idx_0002_12.l2:
    mov ax, word [bp - 0x0002]       ; 0x7030
    ret                              ; 0x7033
api_idx_001e_2:
    mov ax, 0xffe2                   ; 0x7034
    call ds_dispatch_f40b            ; 0x7037
    mov ax, word [data_8d12]         ; 0x703a
    shl ax, 1                        ; 0x703d
    mov si, ax                       ; 0x703f
    mov bx, word [data_0e12]         ; 0x7041
    cmp word [bx + si], byte 0       ; 0x7045
    jle short @..api_idx_001e_2.l1   ; 0x7048
    push word [bx + si]              ; 0x704a
    call api_idx_0050                ; 0x704c
    pop cx                           ; 0x704f
    push word [data_905a]            ; 0x7050
    call api_idx_0006_2              ; 0x7054
    pop cx                           ; 0x7057
    mov ax, 0x98                     ; 0x7058
    push ax                          ; 0x705b
    mov ax, 0x13f                    ; 0x705c
    push ax                          ; 0x705f
    mov ax, 0x92                     ; 0x7060
    push ax                          ; 0x7063
    mov ax, 0                        ; 0x7064
    push ax                          ; 0x7067
    call ds_dispatch_e8da            ; 0x7068
    add sp, byte 8                   ; 0x706b
@..api_idx_001e_2.l1:
    mov ax, word [data_8d12]         ; 0x706e
    shl ax, 1                        ; 0x7071
    mov si, ax                       ; 0x7073
    mov bx, word [data_0e12]         ; 0x7075
    mov ax, word [bx + si + 0x1e0]   ; 0x7079
    mov word [bp - 0x001e], ax       ; 0x707d
    mov ax, word [bx + si + 0x3c0]   ; 0x7080
    mov word [bp - 0x000e], ax       ; 0x7084
    mov word [bp - 0x0002], 0        ; 0x7087
@..api_idx_001e_2.l2:
    mov ax, 1                        ; 0x708c
    push ax                          ; 0x708f
    mov ax, word [bp - 0x0002]       ; 0x7090
    add ax, strict word 8            ; 0x7093
    push ax                          ; 0x7096
    push word [bp - 0x000e]          ; 0x7097
    call ds_dispatch_ed3a            ; 0x709a
    add sp, byte 6                   ; 0x709d
    mov cx, word [bp - 0x0002]       ; 0x70a0
    shl cx, 1                        ; 0x70a3
    mov bx, cx                       ; 0x70a5
    add bx, bp                       ; 0x70a7
    mov word [bx - 0x000c], ax       ; 0x70a9
    inc word [bp - 0x0002]           ; 0x70ac
    mov ax, word [bp - 0x0002]       ; 0x70af
    cmp ax, strict word 4            ; 0x70b2
    jl short @..api_idx_001e_2.l2    ; 0x70b5
    mov ax, 8                        ; 0x70b7
    push ax                          ; 0x70ba
    mov ax, 0                        ; 0x70bb
    push ax                          ; 0x70be
    push word [bp - 0x000e]          ; 0x70bf
    call ds_dispatch_ed3a            ; 0x70c2
    add sp, byte 6                   ; 0x70c5
    mov word [bp - 0x0010], ax       ; 0x70c8
    mov bx, word [data_0e12]         ; 0x70cb
    mov si, word [data_8d12]         ; 0x70cf
    mov al, byte [bx + si + 0xa50]   ; 0x70d3
    sub ah, ah                       ; 0x70d7
    mov word [bp - 0x0012], ax       ; 0x70d9
    mov ax, 1                        ; 0x70dc
    push ax                          ; 0x70df
    mov ax, 0xc                      ; 0x70e0
    push ax                          ; 0x70e3
    push word [bp - 0x000e]          ; 0x70e4
    call ds_dispatch_ed3a            ; 0x70e7
    add sp, byte 6                   ; 0x70ea
    mov word [bp - 0x0018], ax       ; 0x70ed
    mov ax, 1                        ; 0x70f0
    push ax                          ; 0x70f3
    mov ax, 0xd                      ; 0x70f4
    push ax                          ; 0x70f7
    push word [bp - 0x000e]          ; 0x70f8
    call ds_dispatch_ed3a            ; 0x70fb
    add sp, byte 6                   ; 0x70fe
    cmp ax, strict word 1            ; 0x7101
    jne short @..api_idx_001e_2.l3   ; 0x7104
    mov ax, 1                        ; 0x7106
    jmp short @..api_idx_001e_2.l4   ; 0x7109
@..api_idx_001e_2.l3:
    mov ax, 0xffff                   ; 0x710b
@..api_idx_001e_2.l4:
    mov word [bp - 0x001a], ax       ; 0x710e
    mov ax, 1                        ; 0x7111
    push ax                          ; 0x7114
    mov ax, api_idx_0002             ; 0x7115
    push ax                          ; 0x7118
    push word [bp - 0x000e]          ; 0x7119
    call ds_dispatch_ed3a            ; 0x711c
    add sp, byte 6                   ; 0x711f
    mov word [bp - 0x001c], ax       ; 0x7122
    mov word [bp - 0x0002], 0        ; 0x7125
    jmp near @..api_idx_001e_2.l16   ; 0x712a
@..api_idx_001e_2.l5:
    lea ax, word [bp - 0x000c]       ; 0x712d
    push ax                          ; 0x7130
    call api_idx_0002_12             ; 0x7131
    pop cx                           ; 0x7134
    mov word [bp - 0x0016], ax       ; 0x7135
    cmp word [bp - 0x0018], byte 1   ; 0x7138
    jne short @..api_idx_001e_2.l11  ; 0x713c
    cmp ax, word [data_82ee]         ; 0x713e
    je short @..api_idx_001e_2.l11   ; 0x7142
    cmp word [bp - 0x001a], byte 1   ; 0x7144
    jne short @..api_idx_001e_2.l6   ; 0x7148
    sub ax, word [data_82ee]         ; 0x714a
    add ax, strict word 4            ; 0x714e
    mov cx, 4                        ; 0x7151
    cwd                              ; 0x7154
    idiv cx                          ; 0x7155
    mov word [bp - 0x0014], dx       ; 0x7157
    jmp short @..api_idx_001e_2.l7   ; 0x715a
@..api_idx_001e_2.l6:
    mov ax, word [data_82ee]         ; 0x715c
    sub ax, word [bp - 0x0016]       ; 0x715f
    add ax, strict word 4            ; 0x7162
    mov cx, 4                        ; 0x7165
    cwd                              ; 0x7168
    idiv cx                          ; 0x7169
    mov word [bp - 0x0014], dx       ; 0x716b
@..api_idx_001e_2.l7:
    cmp word [bp - 0x0012], byte 0   ; 0x716e
    jne short @..api_idx_001e_2.l8   ; 0x7172
    dec word [bp - 0x0014]           ; 0x7174
@..api_idx_001e_2.l8:
    mov word [bp - 0x0004], 0        ; 0x7177
    jmp short @..api_idx_001e_2.l10  ; 0x717c
@..api_idx_001e_2.l9:
    push word [bp - 0x001e]          ; 0x717e
    call api_idx_0006_2              ; 0x7181
    pop cx                           ; 0x7184
    mov ax, word [data_82ee]         ; 0x7185
    add ax, word [bp - 0x001a]       ; 0x7188
    add ax, strict word 4            ; 0x718b
    mov cx, 4                        ; 0x718e
    cwd                              ; 0x7191
    idiv cx                          ; 0x7192
    mov word [data_82ee], dx         ; 0x7194
    call loc_676c                    ; 0x7198
    inc word [bp - 0x0004]           ; 0x719b
@..api_idx_001e_2.l10:
    mov ax, word [bp - 0x0004]       ; 0x719e
    cmp ax, word [bp - 0x0014]       ; 0x71a1
    jl short @..api_idx_001e_2.l9    ; 0x71a4
@..api_idx_001e_2.l11:
    push word [bp - 0x001e]          ; 0x71a6
    call api_idx_0006_2              ; 0x71a9
    pop cx                           ; 0x71ac
    mov ax, word [bp - 0x0016]       ; 0x71ad
    mov word [data_82ee], ax         ; 0x71b0
    cmp word [bp - 0x0012], byte 0   ; 0x71b3
    jle short @..api_idx_001e_2.l15  ; 0x71b7
    call loc_12a2                    ; 0x71b9
    cmp word [bp - 0x001c], byte 1   ; 0x71bc
    jne short @..api_idx_001e_2.l12  ; 0x71c0
    push word [bp - 0x0012]          ; 0x71c2
    call ds_dispatch_b7a9            ; 0x71c5
    pop cx                           ; 0x71c8
    inc ax                           ; 0x71c9
    push ax                          ; 0x71ca
    push word [data_82ee]            ; 0x71cb
    call loc_1240                    ; 0x71cf
    add sp, byte 4                   ; 0x71d2
    jmp short @..api_idx_001e_2.l13  ; 0x71d5
@..api_idx_001e_2.l12:
    push word [bp - 0x0012]          ; 0x71d7
    push word [data_82ee]            ; 0x71da
    call loc_1240                    ; 0x71de
    add sp, byte 4                   ; 0x71e1
@..api_idx_001e_2.l13:
    push word [data_8f44]            ; 0x71e4
    push word [data_8f46]            ; 0x71e8
    mov ax, data_8f3e                ; 0x71ec
    push ax                          ; 0x71ef
    mov ax, data_8f40                ; 0x71f0
    push ax                          ; 0x71f3
    mov ax, data_8f42                ; 0x71f4
    push ax                          ; 0x71f7
    call api_idx_0004_6              ; 0x71f8
    add sp, byte 0x0a                ; 0x71fb
    cmp ax, strict word 1            ; 0x71fe
    jne short @..api_idx_001e_2.l14  ; 0x7201
    mov ax, 4                        ; 0x7203
    push ax                          ; 0x7206
    mov ax, 0x7e6                    ; 0x7207
    push ax                          ; 0x720a
    call api_idx_0002_9              ; 0x720b
    add sp, byte 4                   ; 0x720e
    ret                              ; 0x7211
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
api_idx_0004_10:
    mov ax, 0xfffc                   ; 0x72a6
    call ds_dispatch_f40b            ; 0x72a9
    call math_loc_13c0               ; 0x72ac
    mov ax, word [bp + 0x4]          ; 0x72af
    shl ax, 1                        ; 0x72b2
    mov si, ax                       ; 0x72b4
    mov bx, word [data_0e12]         ; 0x72b6
    mov ax, word [bx + si + 0x3c0]   ; 0x72ba
    mov word [bp - 0x0002], ax       ; 0x72be
    mov ax, 2                        ; 0x72c1
    push ax                          ; 0x72c4
    mov ax, 0xa                      ; 0x72c5
    push ax                          ; 0x72c8
    push word [bp - 0x0002]          ; 0x72c9
    call ds_dispatch_ed3a            ; 0x72cc
    add sp, byte 6                   ; 0x72cf
    push ax                          ; 0x72d2
    call loc_7242                    ; 0x72d3
    pop cx                           ; 0x72d6
    mov ax, 3                        ; 0x72d7
    push ax                          ; 0x72da
    mov ax, 0                        ; 0x72db
    push ax                          ; 0x72de
    push word [bp - 0x0002]          ; 0x72df
    call ds_dispatch_ed3a            ; 0x72e2
    add sp, byte 6                   ; 0x72e5
    mov word [data_8f42], ax         ; 0x72e8
    mov ax, 3                        ; 0x72eb
    push ax                          ; 0x72ee
    push ax                          ; 0x72ef
    push word [bp - 0x0002]          ; 0x72f0
    call ds_dispatch_ed3a            ; 0x72f3
    add sp, byte 6                   ; 0x72f6
    mov word [data_8f40], ax         ; 0x72f9
    mov ax, 4                        ; 0x72fc
    push ax                          ; 0x72ff
    mov ax, 6                        ; 0x7300
    push ax                          ; 0x7303
    push word [bp - 0x0002]          ; 0x7304
    call ds_dispatch_ed3a            ; 0x7307
    add sp, byte 6                   ; 0x730a
    mov word [data_8f3e], ax         ; 0x730d
    mov bx, word [data_0e12]         ; 0x7310
    mov si, word [bp + 0x4]          ; 0x7314
    mov al, byte [bx + si + 0xa50]   ; 0x7317
    sub ah, ah                       ; 0x731b
    mov word [bp - 0x0004], ax       ; 0x731d
    mov word [data_8460], 0          ; 0x7320
    cmp ax, strict word 0x63         ; 0x7326
    jne short @..api_idx_0004_10.l1  ; 0x7329
    shl si, 1                        ; 0x732b
    mov ax, word [bx + si + 0x1e0]   ; 0x732d
    mov word [data_8460], ax         ; 0x7331
    mov word [bp - 0x0004], 0xffff   ; 0x7334
@..api_idx_0004_10.l1:
    cmp word [data_919e], byte 0     ; 0x7339
    je short @..api_idx_0004_10.l2   ; 0x733e
    mov ax, word [bp - 0x0004]       ; 0x7340
    mov word [data_8f28], ax         ; 0x7343
    mov ax, word [data_8f3e]         ; 0x7346
    mov word [data_8f2a], ax         ; 0x7349
    mov ax, word [data_8f42]         ; 0x734c
    mov word [data_8f2e], ax         ; 0x734f
    mov ax, word [data_8f40]         ; 0x7352
    mov word [data_8f2c], ax         ; 0x7355
@..api_idx_0004_10.l2:
    mov bx, word [data_0e14]         ; 0x7358
    mov si, word [data_8f3e]         ; 0x735c
    mov al, byte [bx + si + 0x490]   ; 0x7360
    sub ah, ah                       ; 0x7364
    add ax, word [data_8f42]         ; 0x7366
    mov word [data_8f46], ax         ; 0x736a
    mov al, byte [bx + si + 0x4a0]   ; 0x736d
    sub ah, ah                       ; 0x7371
    add ax, word [data_8f40]         ; 0x7373
    mov word [data_8f44], ax         ; 0x7377
    mov bx, word [data_0e12]         ; 0x737a
    mov al, byte [bx + si + 0xb40]   ; 0x737e
    sub ah, ah                       ; 0x7382
    mov word [data_8d12], ax         ; 0x7384
    mov word [data_9bd0], 0          ; 0x7387
    mov ax, word [bp - 0x0004]       ; 0x738d
    cmp ax, word [data_830c]         ; 0x7390
    jne short @..api_idx_0004_10.l3  ; 0x7394
    call loc_676c                    ; 0x7396
    jmp short @..api_idx_0004_10.l4  ; 0x7399
@..api_idx_0004_10.l3:
    call loc_68f2                    ; 0x739b
    push word [bp - 0x0004]          ; 0x739e
    call api_idx_000c                ; 0x73a1
    pop cx                           ; 0x73a4
    cmp word [data_830c], byte 0     ; 0x73a5
    jl short @..api_idx_0004_10.l4   ; 0x73aa
    call loc_676c                    ; 0x73ac
@..api_idx_0004_10.l4:
    mov word [data_91a8], 1          ; 0x73af
    ret                              ; 0x73b5
api_idx_0002_13:
    mov ax, 0xfffe                   ; 0x73b6
    call ds_dispatch_f40b            ; 0x73b9
    mov ax, word [data_8d12]         ; 0x73bc
    shl ax, 1                        ; 0x73bf
    mov si, ax                       ; 0x73c1
    mov bx, word [data_0e12]         ; 0x73c3
    mov ax, word [bx + si]           ; 0x73c7
    mov word [bp - 0x0002], ax       ; 0x73c9
    jmp short @..api_idx_0002_13.l1  ; 0x73cc
    mov ax, 0x11                     ; 0x73ce
    push ax                          ; 0x73d1
    call loc_6ac7                    ; 0x73d2
    pop cx                           ; 0x73d5
    push word [data_8d12]            ; 0x73d6
    call api_idx_0004_10             ; 0x73da
    pop cx                           ; 0x73dd
    jmp short @..api_idx_0002_13.l2  ; 0x73de
    mov ax, 0x804                    ; 0x73e0
    push ax                          ; 0x73e3
    call api_idx_0050                ; 0x73e4
    pop cx                           ; 0x73e7
    mov ax, 8                        ; 0x73e8
    push ax                          ; 0x73eb
    db 0xe8, 0xf1, 0x43 ; call ds_dispatch_b7e0
    pop cx                           ; 0x73ef
    mov ax, 8                        ; 0x73f0
    push ax                          ; 0x73f3
    call api_idx_0006_2              ; 0x73f4
    pop cx                           ; 0x73f7
    mov word [data_91b2], 1          ; 0x73f8
    push word [data_8d12]            ; 0x73fe
    call api_idx_0004_10             ; 0x7402
    pop cx                           ; 0x7405
    jmp short @..api_idx_0002_13.l2  ; 0x7406
    mov ax, 8                        ; 0x7408
    push ax                          ; 0x740b
    db 0xe8, 0xd1, 0x43 ; call ds_dispatch_b7e0
    pop cx                           ; 0x740f
    push word [data_8d12]            ; 0x7410
    call api_idx_0004_10             ; 0x7414
    pop cx                           ; 0x7417
    jmp short @..api_idx_0002_13.l2  ; 0x7418
    sbb ax, 0x15c4                   ; 0x741a
    les sp, word [bx]                ; 0x741d
    les di, word [si - 0x003c]       ; 0x741f
    dec di                           ; 0x7422
    les cx, word [bx - 0x003c]       ; 0x7423
    dec di                           ; 0x7426
    db 0xc4
@..api_idx_0002_13.l1:
    cmp ax, strict word 7            ; 0x7428
    jae short @..api_idx_0002_13.l2  ; 0x742b
    xchg bx, ax                      ; 0x742d
    shl bx, 1                        ; 0x742e
    jmp [cs:bx - 0x3b9f]             ; 0x7430
@..api_idx_0002_13.l2:
    ret                              ; 0x7435
loc_7436:
    mov ax, 0                        ; 0x7436
    call ds_dispatch_f40b            ; 0x7439
    mov bx, word [data_0e12]         ; 0x743c
    mov si, word [data_8d12]         ; 0x7440
    mov al, byte [bx + si + 0xa50]   ; 0x7444
    sub ah, ah                       ; 0x7448
    mov word [data_91b0], ax         ; 0x744a
    ret                              ; 0x744d
api_idx_0004_11:
    mov ax, 0xfffc                   ; 0x744e
    call ds_dispatch_f40b            ; 0x7451
    mov ax, word [data_8d12]         ; 0x7454
    shl ax, 1                        ; 0x7457
    mov si, ax                       ; 0x7459
    mov bx, word [data_0e12]         ; 0x745b
    mov ax, word [bx + si + 0x3c0]   ; 0x745f
    mov word [bp - 0x0002], ax       ; 0x7463
    mov ax, 1                        ; 0x7466
    push ax                          ; 0x7469
    mov ax, api_idx_0002             ; 0x746a
    push ax                          ; 0x746d
    push word [bp - 0x0002]          ; 0x746e
    call ds_dispatch_ed3a            ; 0x7471
    add sp, byte 6                   ; 0x7474
    cmp ax, strict word 1            ; 0x7477
    jne short @..api_idx_0004_11.l1  ; 0x747a
    mov ax, 2                        ; 0x747c
    push ax                          ; 0x747f
    mov ax, 0xc                      ; 0x7480
    push ax                          ; 0x7483
    push word [bp - 0x0002]          ; 0x7484
    call ds_dispatch_ed3a            ; 0x7487
    add sp, byte 6                   ; 0x748a
    mov word [data_8f24], ax         ; 0x748d
    cmp ax, word [data_82ee]         ; 0x7490
    je short @..api_idx_0004_11.l1   ; 0x7494
    ret                              ; 0x7496
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
api_idx_0050_2:
    mov ax, 0xffb0                   ; 0x74e2
    call ds_dispatch_f40b            ; 0x74e5
    lea ax, word [bp - 0x0050]       ; 0x74e8
    push ax                          ; 0x74eb
    push word [bp + 0x6]             ; 0x74ec
    call ds_dispatch_b53b            ; 0x74ef
    add sp, byte 4                   ; 0x74f2
    mov ax, 0x5e                     ; 0x74f5
    push ax                          ; 0x74f8
    mov ax, 0x248                    ; 0x74f9
    imul word [bp + 0x4]             ; 0x74fc
    add ax, 0x5bf4                   ; 0x74ff
    push ax                          ; 0x7502
    lea ax, word [bp - 0x0050]       ; 0x7503
    push ax                          ; 0x7506
    call ds_dispatch_b300            ; 0x7507
    add sp, byte 6                   ; 0x750a
    lea ax, word [bp - 0x0050]       ; 0x750d
    push ax                          ; 0x7510
    call api_idx_0008_2              ; 0x7511
    pop cx                           ; 0x7514
    cmp word [bp + 0x8], byte 0      ; 0x7515
    je short @..api_idx_0050_2.l1    ; 0x7519
    mov ax, 0                        ; 0x751b
    push ax                          ; 0x751e
    call ds_dispatch_b7e0            ; 0x751f
    pop cx                           ; 0x7522
@..api_idx_0050_2.l1:
    push word [data_905a]            ; 0x7523
    call api_idx_0006_2              ; 0x7527
    pop cx                           ; 0x752a
    mov ax, 0x98                     ; 0x752b
    push ax                          ; 0x752e
    mov ax, 0x13f                    ; 0x752f
    push ax                          ; 0x7532
    mov ax, 0x92                     ; 0x7533
    push ax                          ; 0x7536
    mov ax, 0                        ; 0x7537
    push ax                          ; 0x753a
    call ds_dispatch_e8da            ; 0x753b
    add sp, byte 8                   ; 0x753e
    ret                              ; 0x7541
api_idx_0004_12:
    mov ax, 0xfffc                   ; 0x7542
    call ds_dispatch_f40b            ; 0x7545
    cmp word [data_82fe], byte 0     ; 0x7548
    jle short @..api_idx_0004_12.l1  ; 0x754d
    mov ax, 0x64                     ; 0x754f
    push ax                          ; 0x7552
    call ds_dispatch_b7a9            ; 0x7553
    pop cx                           ; 0x7556
    cmp ax, word [data_8300]         ; 0x7557
    jge short @..api_idx_0004_12.l1  ; 0x755b
    mov word [data_82ea], 1          ; 0x755d
@..api_idx_0004_12.l1:
    mov word [bp - 0x0002], 0        ; 0x7563
    jmp short @..api_idx_0004_12.l4  ; 0x7568
@..api_idx_0004_12.l2:
    push word [bp - 0x0002]          ; 0x756a
    call ds_dispatch_ca85            ; 0x756d
    pop cx                           ; 0x7570
    test ax, ax                      ; 0x7571
    je short @..api_idx_0004_12.l3   ; 0x7573
    mov ax, 0xc8                     ; 0x7575
    push ax                          ; 0x7578
    call ds_dispatch_b7a9            ; 0x7579
    pop cx                           ; 0x757c
    push ax                          ; 0x757d
    mov ax, 0x248                    ; 0x757e
    imul word [bp - 0x0002]          ; 0x7581
    mov bx, ax                       ; 0x7584
    mov al, byte [bx + 0x5d78]       ; 0x7586
    sub ah, ah                       ; 0x758a
    mov cx, ax                       ; 0x758c
    pop ax                           ; 0x758e
    cmp ax, cx                       ; 0x758f
    jge short @..api_idx_0004_12.l3  ; 0x7591
    mov ax, 0x7f8                    ; 0x7593
    push ax                          ; 0x7596
    push word [bp - 0x0002]          ; 0x7597
    call api_idx_0050_2              ; 0x759a
    add sp, byte 4                   ; 0x759d
    ret                              ; 0x75a0
@..api_idx_0004_12.l3:
    inc word [bp - 0x0002]           ; 0x75a1
@..api_idx_0004_12.l4:
    mov ax, word [bp - 0x0002]       ; 0x75a4
    cmp ax, word [data_69c8]         ; 0x75a7
    jl short @..api_idx_0004_12.l2   ; 0x75ab
    ret                              ; 0x75ad
api_idx_0006_6:
    mov ax, 0xfffa                   ; 0x75ae
    call ds_dispatch_f40b            ; 0x75b1
    mov word [bp - 0x0004], 0        ; 0x75b4
    mov word [bp - 0x0002], 0        ; 0x75b9
@..api_idx_0006_6.l1:
    mov ax, 2                        ; 0x75be
    push ax                          ; 0x75c1
    mov ax, word [bp - 0x0002]       ; 0x75c2
    shl ax, 1                        ; 0x75c5
    push ax                          ; 0x75c7
    mov ax, word [data_8d12]         ; 0x75c8
    shl ax, 1                        ; 0x75cb
    mov si, ax                       ; 0x75cd
    mov bx, word [data_0e12]         ; 0x75cf
    push word [bx + si + 0x3c0]      ; 0x75d3
    call ds_dispatch_ed3a            ; 0x75d7
    add sp, byte 6                   ; 0x75da
    mov cx, word [bp - 0x0002]       ; 0x75dd
    shl cx, 1                        ; 0x75e0
    mov bx, cx                       ; 0x75e2
    mov word [bx - 0x7302], ax       ; 0x75e4
    mov ax, 2                        ; 0x75e8
    push ax                          ; 0x75eb
    add cx, byte 8                   ; 0x75ec
    mov ax, cx                       ; 0x75ef
    push ax                          ; 0x75f1
    mov ax, word [data_8d12]         ; 0x75f2
    shl ax, 1                        ; 0x75f5
    mov si, ax                       ; 0x75f7
    mov bx, word [data_0e12]         ; 0x75f9
    push word [bx + si + 0x3c0]      ; 0x75fd
    call ds_dispatch_ed3a            ; 0x7601
    add sp, byte 6                   ; 0x7604
    cmp ax, strict word 2            ; 0x7607
    jne short @..api_idx_0006_6.l2   ; 0x760a
    mov word [bp - 0x0004], 1        ; 0x760c
@..api_idx_0006_6.l2:
    inc word [bp - 0x0002]           ; 0x7611
    mov ax, word [bp - 0x0002]       ; 0x7614
    cmp ax, strict word 4            ; 0x7617
    jl short @..api_idx_0006_6.l1    ; 0x761a
    cmp word [bp - 0x0004], byte 0   ; 0x761c
    je short @..api_idx_0006_6.l3    ; 0x7620
    call api_idx_0004_12             ; 0x7622
@..api_idx_0006_6.l3:
    mov bx, word [data_0e12]         ; 0x7625
    mov si, word [data_8d12]         ; 0x7629
    mov al, byte [bx + si + 0xa50]   ; 0x762d
    sub ah, ah                       ; 0x7631
    mov word [bp - 0x0006], ax       ; 0x7633
    mov ax, 2                        ; 0x7636
    push ax                          ; 0x7639
    mov ax, 5                        ; 0x763a
    push ax                          ; 0x763d
    push word [bp - 0x0006]          ; 0x763e
    call ds_dispatch_ed3a            ; 0x7641
    add sp, byte 6                   ; 0x7644
    push ax                          ; 0x7647
    call loc_7242                    ; 0x7648
    pop cx                           ; 0x764b
    ret                              ; 0x764c
api_idx_001c:
    mov ax, 0xffe4                   ; 0x764d
    call ds_dispatch_f40b            ; 0x7650
    mov ax, word [data_8d12]         ; 0x7653
    shl ax, 1                        ; 0x7656
    mov si, ax                       ; 0x7658
    mov bx, word [data_0e12]         ; 0x765a
    mov ax, word [bx + si + 0x3c0]   ; 0x765e
    mov word [bp - 0x0006], ax       ; 0x7662
    mov ax, 3                        ; 0x7665
    push ax                          ; 0x7668
    mov ax, 0                        ; 0x7669
    push ax                          ; 0x766c
    push word [bp - 0x0006]          ; 0x766d
    call ds_dispatch_ed3a            ; 0x7670
    add sp, byte 6                   ; 0x7673
    mov word [bp - 0x000e], ax       ; 0x7676
    mov ax, 3                        ; 0x7679
    push ax                          ; 0x767c
    push ax                          ; 0x767d
    push word [bp - 0x0006]          ; 0x767e
    call ds_dispatch_ed3a            ; 0x7681
    add sp, byte 6                   ; 0x7684
    mov word [bp - 0x0010], ax       ; 0x7687
    mov ax, 4                        ; 0x768a
    push ax                          ; 0x768d
    mov ax, 6                        ; 0x768e
    push ax                          ; 0x7691
    push word [bp - 0x0006]          ; 0x7692
    call ds_dispatch_ed3a            ; 0x7695
    add sp, byte 6                   ; 0x7698
    mov word [bp - 0x000c], ax       ; 0x769b
    mov ax, 1                        ; 0x769e
    push ax                          ; 0x76a1
    mov ax, 0xa                      ; 0x76a2
    push ax                          ; 0x76a5
    push word [bp - 0x0006]          ; 0x76a6
    call ds_dispatch_ed3a            ; 0x76a9
    add sp, byte 6                   ; 0x76ac
    mov word [bp - 0x0012], ax       ; 0x76af
    mov ax, 2                        ; 0x76b2
    push ax                          ; 0x76b5
    mov ax, 0xb                      ; 0x76b6
    push ax                          ; 0x76b9
    push word [bp - 0x0006]          ; 0x76ba
    call ds_dispatch_ed3a            ; 0x76bd
    add sp, byte 6                   ; 0x76c0
    mov word [bp - 0x0014], ax       ; 0x76c3
    mov bx, word [data_0e14]         ; 0x76c6
    mov si, word [bp - 0x000c]       ; 0x76ca
    mov al, byte [bx + si + 0x490]   ; 0x76cd
    sub ah, ah                       ; 0x76d1
    add ax, word [bp - 0x000e]       ; 0x76d3
    mov word [bp - 0x0008], ax       ; 0x76d6
    mov al, byte [bx + si + 0x4a0]   ; 0x76d9
    sub ah, ah                       ; 0x76dd
    add ax, word [bp - 0x0010]       ; 0x76df
    mov word [bp - 0x000a], ax       ; 0x76e2
    mov cx, 6                        ; 0x76e5
    shl si, cl                       ; 0x76e8
    mov ax, si                       ; 0x76ea
    mov cx, word [bp - 0x0010]       ; 0x76ec
    shl cx, 1                        ; 0x76ef
    shl cx, 1                        ; 0x76f1
    shl cx, 1                        ; 0x76f3
    add ax, cx                       ; 0x76f5
    add ax, word [bp - 0x000e]       ; 0x76f7
    mov word [bp - 0x0004], ax       ; 0x76fa
    mov ax, word [data_8d12]         ; 0x76fd
    shl ax, 1                        ; 0x7700
    mov si, ax                       ; 0x7702
    mov bx, word [data_0e12]         ; 0x7704
    mov ax, word [bx + si + 0x1e0]   ; 0x7708
    mov word [bp - 0x0006], ax       ; 0x770c
    mov word [bp - 0x0002], 0        ; 0x770f
@..api_idx_001c.l1:
    mov ax, 4                        ; 0x7714
    push ax                          ; 0x7717
    mov ax, word [bp - 0x0002]       ; 0x7718
    shl ax, 1                        ; 0x771b
    shl ax, 1                        ; 0x771d
    push ax                          ; 0x771f
    push word [bp - 0x0006]          ; 0x7720
    call ds_dispatch_ed3a            ; 0x7723
    add sp, byte 6                   ; 0x7726
    mov cx, word [bp - 0x0002]       ; 0x7729
    shl cx, 1                        ; 0x772c
    mov bx, cx                       ; 0x772e
    add bx, bp                       ; 0x7730
    mov word [bx - 0x001c], ax       ; 0x7732
    inc word [bp - 0x0002]           ; 0x7735
    mov ax, word [bp - 0x0002]       ; 0x7738
    cmp ax, strict word 4            ; 0x773b
    jl short @..api_idx_001c.l1      ; 0x773e
    push word [bp - 0x0016]          ; 0x7740
    push word [bp - 0x0018]          ; 0x7743
    push word [bp - 0x001a]          ; 0x7746
    push word [bp - 0x001c]          ; 0x7749
    push word [bp - 0x0010]          ; 0x774c
    push word [bp - 0x000e]          ; 0x774f
    push word [bp - 0x000c]          ; 0x7752
    mov ax, 0                        ; 0x7755
    push ax                          ; 0x7758
    push word [data_830c]            ; 0x7759
    call api_idx_0004_7              ; 0x775d
    add sp, byte 0x12                ; 0x7760
    push word [bp - 0x001c]          ; 0x7763
    mov ax, 4                        ; 0x7766
    push ax                          ; 0x7769
    push word [bp - 0x0004]          ; 0x776a
    mov ax, word [data_0e14]         ; 0x776d
    add ax, 0x90                     ; 0x7770
    push ax                          ; 0x7773
    call ds_dispatch_eca4            ; 0x7774
    add sp, byte 8                   ; 0x7777
    push word [bp - 0x001a]          ; 0x777a
    mov ax, 4                        ; 0x777d
    push ax                          ; 0x7780
    push word [bp - 0x0004]          ; 0x7781
    mov ax, word [data_0e14]         ; 0x7784
    add ax, 0x290                    ; 0x7787
    push ax                          ; 0x778a
    call ds_dispatch_eca4            ; 0x778b
    add sp, byte 8                   ; 0x778e
    mov ax, word [bp - 0x000a]       ; 0x7791
    dec ax                           ; 0x7794
    push ax                          ; 0x7795
    push word [bp - 0x0008]          ; 0x7796
    lea ax, word [bp - 0x000c]       ; 0x7799
    push ax                          ; 0x779c
    lea ax, word [bp - 0x0010]       ; 0x779d
    push ax                          ; 0x77a0
    lea ax, word [bp - 0x000e]       ; 0x77a1
    push ax                          ; 0x77a4
    call api_idx_0004_6              ; 0x77a5
    add sp, byte 0x0a                ; 0x77a8
    test ax, ax                      ; 0x77ab
    jne short @..api_idx_001c.l2     ; 0x77ad
    mov ax, word [bp - 0x000c]       ; 0x77af
    mov cx, 6                        ; 0x77b2
    shl ax, cl                       ; 0x77b5
    mov cx, word [bp - 0x0010]       ; 0x77b7
    shl cx, 1                        ; 0x77ba
    shl cx, 1                        ; 0x77bc
    shl cx, 1                        ; 0x77be
    add ax, cx                       ; 0x77c0
    add ax, word [bp - 0x000e]       ; 0x77c2
    mov word [bp - 0x0004], ax       ; 0x77c5
    push word [bp - 0x0018]          ; 0x77c8
    mov ax, 4                        ; 0x77cb
    push ax                          ; 0x77ce
    push word [bp - 0x0004]          ; 0x77cf
    mov ax, word [data_0e14]         ; 0x77d2
    add ax, 0x90                     ; 0x77d5
    push ax                          ; 0x77d8
    call ds_dispatch_eca4            ; 0x77d9
    add sp, byte 8                   ; 0x77dc
@..api_idx_001c.l2:
    push word [bp - 0x000a]          ; 0x77df
    mov ax, word [bp - 0x0008]       ; 0x77e2
    dec ax                           ; 0x77e5
    push ax                          ; 0x77e6
    lea ax, word [bp - 0x000c]       ; 0x77e7
    push ax                          ; 0x77ea
    lea ax, word [bp - 0x0010]       ; 0x77eb
    push ax                          ; 0x77ee
    lea ax, word [bp - 0x000e]       ; 0x77ef
    push ax                          ; 0x77f2
    call api_idx_0004_6              ; 0x77f3
    add sp, byte 0x0a                ; 0x77f6
    test ax, ax                      ; 0x77f9
    jne short @..api_idx_001c.l3     ; 0x77fb
    mov ax, word [bp - 0x000c]       ; 0x77fd
    mov cx, 6                        ; 0x7800
    shl ax, cl                       ; 0x7803
    mov cx, word [bp - 0x0010]       ; 0x7805
    shl cx, 1                        ; 0x7808
    shl cx, 1                        ; 0x780a
    shl cx, 1                        ; 0x780c
    add ax, cx                       ; 0x780e
    add ax, word [bp - 0x000e]       ; 0x7810
    mov word [bp - 0x0004], ax       ; 0x7813
    push word [bp - 0x0016]          ; 0x7816
    mov ax, 4                        ; 0x7819
    push ax                          ; 0x781c
    push word [bp - 0x0004]          ; 0x781d
    mov ax, word [data_0e14]         ; 0x7820
    add ax, 0x290                    ; 0x7823
    push ax                          ; 0x7826
    call ds_dispatch_eca4            ; 0x7827
    add sp, byte 8                   ; 0x782a
@..api_idx_001c.l3:
    mov ax, word [data_8d12]         ; 0x782d
    shl ax, 1                        ; 0x7830
    mov si, ax                       ; 0x7832
    mov bx, word [data_0e12]         ; 0x7834
    push word [bx + si]              ; 0x7838
    call loc_6ac7                    ; 0x783a
    pop cx                           ; 0x783d
    cmp word [bp - 0x0012], byte 1   ; 0x783e
    jne short @..api_idx_001c.l4     ; 0x7842
    call loc_676c                    ; 0x7844
@..api_idx_001c.l4:
    push word [bp - 0x0014]          ; 0x7847
    call loc_7242                    ; 0x784a
    pop cx                           ; 0x784d
    ret                              ; 0x784e
api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x784f
    call ds_dispatch_f40b            ; 0x7852
    mov bx, word [data_0e12]         ; 0x7855
    mov si, word [data_8d12]         ; 0x7859
    mov al, byte [bx + si + 0xa50]   ; 0x785d
    sub ah, ah                       ; 0x7861
    push ax                          ; 0x7863
    call loc_6ac7                    ; 0x7864
    pop cx                           ; 0x7867
    mov ax, word [data_8d12]         ; 0x7868
    shl ax, 1                        ; 0x786b
    mov si, ax                       ; 0x786d
    mov bx, word [data_0e12]         ; 0x786f
    mov ax, word [bx + si + 0x3c0]   ; 0x7873
    mov word [bp - 0x0002], ax       ; 0x7877
    mov ax, 1                        ; 0x787a
    push ax                          ; 0x787d
    mov ax, 0xf                      ; 0x787e
    push ax                          ; 0x7881
    push word [bp - 0x0002]          ; 0x7882
    call ds_dispatch_ed3a            ; 0x7885
    add sp, byte 6                   ; 0x7888
    mov word [bp - 0x0006], ax       ; 0x788b
    mov ax, word [data_8d12]         ; 0x788e
    shl ax, 1                        ; 0x7891
    mov si, ax                       ; 0x7893
    mov bx, word [data_0e12]         ; 0x7895
    push word [bx + si]              ; 0x7899
    mov ax, word [data_830c]         ; 0x789b
    mov cx, 4                        ; 0x789e
    shl ax, cl                       ; 0x78a1
    add ax, 0x8d14                   ; 0x78a3
    push ax                          ; 0x78a6
    call ds_dispatch_ec74            ; 0x78a7
    add sp, byte 4                   ; 0x78aa
    mov cx, ax                       ; 0x78ad
    mov ax, word [bp - 0x0006]       ; 0x78af
    cmp cx, ax                       ; 0x78b2
    jne short @..api_idx_000a_3.l1   ; 0x78b4
    mov ax, word [data_8d12]         ; 0x78b6
    shl ax, 1                        ; 0x78b9
    mov si, ax                       ; 0x78bb
    mov bx, word [data_0e12]         ; 0x78bd
    push word [bx + si + 0x1e0]      ; 0x78c1
    mov ax, word [data_830c]         ; 0x78c5
    mov cx, 4                        ; 0x78c8
    shl ax, cl                       ; 0x78cb
    add ax, 0x8d14                   ; 0x78cd
    push ax                          ; 0x78d0
    call ds_dispatch_ec74            ; 0x78d1
    add sp, byte 4                   ; 0x78d4
    mov cx, ax                       ; 0x78d7
    mov ax, word [bp - 0x0006]       ; 0x78d9
    cmp cx, ax                       ; 0x78dc
    je short @..api_idx_000a_3.l2    ; 0x78de
@..api_idx_000a_3.l1:
    ret                              ; 0x78e0
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
api_idx_0004_13:
    mov ax, 0xfffc                   ; 0x799e
    call ds_dispatch_f40b            ; 0x79a1
    mov ax, word [data_8d12]         ; 0x79a4
    shl ax, 1                        ; 0x79a7
    mov si, ax                       ; 0x79a9
    mov bx, word [data_0e12]         ; 0x79ab
    mov ax, word [bx + si + 0x3c0]   ; 0x79af
    mov word [bp - 0x0002], ax       ; 0x79b3
    mov ax, 2                        ; 0x79b6
    push ax                          ; 0x79b9
    mov ax, 0                        ; 0x79ba
    push ax                          ; 0x79bd
    push word [bp - 0x0002]          ; 0x79be
    call ds_dispatch_ed3a            ; 0x79c1
    add sp, byte 6                   ; 0x79c4
    mov word [bp - 0x0004], ax       ; 0x79c7
    cmp word [bp - 0x0004], byte 0   ; 0x79ca
    jne short @..api_idx_0004_13.l1  ; 0x79ce
    mov word [data_9b4a], 0          ; 0x79d0
@..api_idx_0004_13.l1:
    mov ax, 1                        ; 0x79d6
    push ax                          ; 0x79d9
    mov ax, 6                        ; 0x79da
    push ax                          ; 0x79dd
    push word [bp - 0x0002]          ; 0x79de
    call ds_dispatch_ed3a            ; 0x79e1
    add sp, byte 6                   ; 0x79e4
    cmp ax, strict word 1            ; 0x79e7
    jne short @..api_idx_0004_13.l2  ; 0x79ea
    mov ax, 2                        ; 0x79ec
    push ax                          ; 0x79ef
    mov ax, 4                        ; 0x79f0
    push ax                          ; 0x79f3
    push word [bp - 0x0002]          ; 0x79f4
    call ds_dispatch_ed3a            ; 0x79f7
    add sp, byte 6                   ; 0x79fa
    mov word [data_8f24], ax         ; 0x79fd
    cmp ax, word [data_82ee]         ; 0x7a00
    je short @..api_idx_0004_13.l2   ; 0x7a04
    ret                              ; 0x7a06
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
api_idx_0002_14:
    mov ax, 0xfffe                   ; 0x7abe
    call ds_dispatch_f40b            ; 0x7ac1
    mov ax, word [data_8d12]         ; 0x7ac4
    shl ax, 1                        ; 0x7ac7
    mov si, ax                       ; 0x7ac9
    mov bx, word [data_0e12]         ; 0x7acb
    mov ax, word [bx + si + 0x3c0]   ; 0x7acf
    mov word [bp - 0x0002], ax       ; 0x7ad3
    mov ax, 1                        ; 0x7ad6
    push ax                          ; 0x7ad9
    mov ax, 2                        ; 0x7ada
    push ax                          ; 0x7add
    push word [bp - 0x0002]          ; 0x7ade
    call ds_dispatch_ed3a            ; 0x7ae1
    add sp, byte 6                   ; 0x7ae4
    cmp ax, strict word 1            ; 0x7ae7
    jne short @..api_idx_0002_14.l1  ; 0x7aea
    mov ax, 2                        ; 0x7aec
    push ax                          ; 0x7aef
    mov ax, 0                        ; 0x7af0
    push ax                          ; 0x7af3
    push word [bp - 0x0002]          ; 0x7af4
    call ds_dispatch_ed3a            ; 0x7af7
    add sp, byte 6                   ; 0x7afa
    mov word [data_8f24], ax         ; 0x7afd
    cmp ax, word [data_82ee]         ; 0x7b00
    je short @..api_idx_0002_14.l1   ; 0x7b04
    ret                              ; 0x7b06
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
api_idx_0018_2:
    mov ax, 0xffe8                   ; 0x7b53
    call ds_dispatch_f40b            ; 0x7b56
    mov ax, word [bp + 0x6]          ; 0x7b59
    inc ax                           ; 0x7b5c
    mov word [bp - 0x000c], ax       ; 0x7b5d
    mov bx, ax                       ; 0x7b60
    mov al, byte [bx + 0x7171]       ; 0x7b62
    sub ah, ah                       ; 0x7b66
    dec ax                           ; 0x7b68
    mov word [bp - 0x0004], ax       ; 0x7b69
    mov ax, word [bp + 0x6]          ; 0x7b6c
    shl ax, 1                        ; 0x7b6f
    mov bx, ax                       ; 0x7b71
    mov ax, word [bx + 0x256]        ; 0x7b73
    mov cx, 0x64                     ; 0x7b77
    imul cx                          ; 0x7b7a
    mov cx, 0xa                      ; 0x7b7c
    cwd                              ; 0x7b7f
    idiv cx                          ; 0x7b80
    mov word [bp - 0x000e], ax       ; 0x7b82
    cmp word [bp + 0x4], byte 0      ; 0x7b85
    je short @..api_idx_0018_2.l1    ; 0x7b89
    mov cx, 0                        ; 0x7b8b
    sub cx, ax                       ; 0x7b8e
    mov word [bp - 0x0008], cx       ; 0x7b90
    mov word [bp - 0x0006], 0        ; 0x7b93
    jmp short @..api_idx_0018_2.l2   ; 0x7b98
@..api_idx_0018_2.l1:
    mov word [bp - 0x0008], ax       ; 0x7b9a
    mov ax, 0                        ; 0x7b9d
    sub ax, word [bx + 0x256]        ; 0x7ba0
    mov word [bp - 0x0006], ax       ; 0x7ba4
@..api_idx_0018_2.l2:
    mov ax, word [data_8f46]         ; 0x7ba7
    add ax, word [data_8f44]         ; 0x7baa
    add ax, word [data_82ee]         ; 0x7bae
    add ax, word [bp + 0x6]          ; 0x7bb2
    mov cx, 2                        ; 0x7bb5
    cwd                              ; 0x7bb8
    idiv cx                          ; 0x7bb9
    mov word [bp - 0x000a], dx       ; 0x7bbb
    mov word [bp - 0x0002], 1        ; 0x7bbe
@..api_idx_0018_2.l3:
    mov ax, word [data_82e8]         ; 0x7bc3
    inc ax                           ; 0x7bc6
    mov cx, 2                        ; 0x7bc7
    cwd                              ; 0x7bca
    idiv cx                          ; 0x7bcb
    mov word [data_82e8], dx         ; 0x7bcd
    call api_idx_0030                ; 0x7bd1
    mov al, byte [bp - 0x000c]       ; 0x7bd4
    mov byte [bp - 0x0018], al       ; 0x7bd7
    mov byte [bp - 0x0017], 0        ; 0x7bda
    mov ax, 0                        ; 0x7bde
    push ax                          ; 0x7be1
    push ax                          ; 0x7be2
    lea ax, word [bp - 0x0018]       ; 0x7be3
    push ax                          ; 0x7be6
    push word [bp - 0x000a]          ; 0x7be7
    mov ax, 0x90                     ; 0x7bea
    push ax                          ; 0x7bed
    push word [bp - 0x0004]          ; 0x7bee
    mov ax, 0xf8                     ; 0x7bf1
    push ax                          ; 0x7bf4
    mov ax, 0x48                     ; 0x7bf5
    push ax                          ; 0x7bf8
    mov ax, word [bp - 0x0002]       ; 0x7bf9
    imul word [bp - 0x0008]          ; 0x7bfc
    mov cx, 0x64                     ; 0x7bff
    cwd                              ; 0x7c02
    idiv cx                          ; 0x7c03
    push ax                          ; 0x7c05
    mov bx, word [bp - 0x000c]       ; 0x7c06
    mov al, byte [bx + 0x7171]       ; 0x7c09
    sub ah, ah                       ; 0x7c0d
    mov cx, ax                       ; 0x7c0f
    pop ax                           ; 0x7c11
    add ax, cx                       ; 0x7c12
    add ax, word [bp - 0x0006]       ; 0x7c14
    push ax                          ; 0x7c17
    mov ax, 0xa                      ; 0x7c18
    imul word [bp + 0x6]             ; 0x7c1b
    mov cx, word [bp + 0x8]          ; 0x7c1e
    shl cx, 1                        ; 0x7c21
    add ax, cx                       ; 0x7c23
    mov bx, ax                       ; 0x7c25
    mov ax, word [bx + 0x36e]        ; 0x7c27
    push ax                          ; 0x7c2b
    mov ax, word [bp - 0x000c]       ; 0x7c2c
    shl ax, 1                        ; 0x7c2f
    add ax, word [bp - 0x000a]       ; 0x7c31
    mov bx, ax                       ; 0x7c34
    mov al, byte [bx + 0x7128]       ; 0x7c36
    sub ah, ah                       ; 0x7c3a
    mov cx, ax                       ; 0x7c3c
    pop ax                           ; 0x7c3e
    add ax, cx                       ; 0x7c3f
    push ax                          ; 0x7c41
    mov ax, 5                        ; 0x7c42
    push ax                          ; 0x7c45
    call ds_dispatch_efd1            ; 0x7c46
    add sp, byte 0x16                ; 0x7c49
    mov ax, 0xffff                   ; 0x7c4c
    cmp word [bp - 0x000a], byte 0   ; 0x7c4f
    je short @..api_idx_0018_2.l4    ; 0x7c53
    mov ax, word [bp + 0x8]          ; 0x7c55
    shl ax, 1                        ; 0x7c58
    mov bx, ax                       ; 0x7c5a
    mov ax, word [bx + 0x24c]        ; 0x7c5c
    add ax, word [bp + 0x6]          ; 0x7c60
@..api_idx_0018_2.l4:
    push ax                          ; 0x7c63
    mov ax, 2                        ; 0x7c64
    push ax                          ; 0x7c67
    mov ax, word [bp + 0x8]          ; 0x7c68
    shl ax, 1                        ; 0x7c6b
    mov bx, ax                       ; 0x7c6d
    mov ax, word [bx + 0x24c]        ; 0x7c6f
    add ax, word [bp + 0x6]          ; 0x7c73
    push ax                          ; 0x7c76
    mov ax, 0                        ; 0x7c77
    push ax                          ; 0x7c7a
    db 0xe8, 0xa1, 0x73 ; call 0xf01f
    add sp, byte 8                   ; 0x7c7e
    mov ax, 0x8f                     ; 0x7c81
    push ax                          ; 0x7c84
    mov ax, 0xf7                     ; 0x7c85
    push ax                          ; 0x7c88
    mov ax, 0x20                     ; 0x7c89
    push ax                          ; 0x7c8c
    mov ax, 0x48                     ; 0x7c8d
    push ax                          ; 0x7c90
    call ds_dispatch_e8da            ; 0x7c91
    add sp, byte 8                   ; 0x7c94
    cmp word [bp + 0xa], byte 0      ; 0x7c97
    je short @..api_idx_0018_2.l5    ; 0x7c9b
    mov ax, 0x10                     ; 0x7c9d
    push ax                          ; 0x7ca0
    call ds_dispatch_b7e0            ; 0x7ca1
    pop cx                           ; 0x7ca4
@..api_idx_0018_2.l5:
    inc word [bp - 0x0002]           ; 0x7ca5
    mov ax, word [bp - 0x0002]       ; 0x7ca8
    cmp ax, strict word 0xa          ; 0x7cab
    jg short @..api_idx_0018_2.l6    ; 0x7cae
    jmp near @..api_idx_0018_2.l3    ; 0x7cb0
@..api_idx_0018_2.l6:
    ret                              ; 0x7cb3
math_loc_7cb4:
    mov ax, 0                        ; 0x7cb4
    call ds_dispatch_f40b            ; 0x7cb7
@..math_loc_7cb4.l1:
    cmp word [bp + 0x4], byte 0      ; 0x7cba
    jle short @..math_loc_7cb4.l3    ; 0x7cbe
    cmp word [bp + 0x6], byte 0      ; 0x7cc0
    je short @..math_loc_7cb4.l2     ; 0x7cc4
    mov ax, word [data_82e8]         ; 0x7cc6
    inc ax                           ; 0x7cc9
    mov cx, 2                        ; 0x7cca
    cwd                              ; 0x7ccd
    idiv cx                          ; 0x7cce
    mov word [data_82e8], dx         ; 0x7cd0
    call loc_676c                    ; 0x7cd4
    mov ax, 0x10                     ; 0x7cd7
    push ax                          ; 0x7cda
    call ds_dispatch_b7e0            ; 0x7cdb
    pop cx                           ; 0x7cde
@..math_loc_7cb4.l2:
    dec word [bp + 0x4]              ; 0x7cdf
    jmp short @..math_loc_7cb4.l1    ; 0x7ce2
@..math_loc_7cb4.l3:
    ret                              ; 0x7ce4
api_idx_000a_4:
    mov ax, 0xfff6                   ; 0x7ce5
    call ds_dispatch_f40b            ; 0x7ce8
    mov bx, word [data_0e14]         ; 0x7ceb
    mov si, word [bp + 0x8]          ; 0x7cef
    mov al, byte [bx + si + 0x490]   ; 0x7cf2
    sub ah, ah                       ; 0x7cf6
    add ax, word [bp + 0xa]          ; 0x7cf8
    mov word [bp - 0x0006], ax       ; 0x7cfb
    mov al, byte [bx + si + 0x4a0]   ; 0x7cfe
    sub ah, ah                       ; 0x7d02
    add ax, word [bp + 0xc]          ; 0x7d04
    mov word [bp - 0x0008], ax       ; 0x7d07
    mov cx, 6                        ; 0x7d0a
    shl si, cl                       ; 0x7d0d
    mov ax, si                       ; 0x7d0f
    mov cx, word [bp + 0xc]          ; 0x7d11
    shl cx, 1                        ; 0x7d14
    shl cx, 1                        ; 0x7d16
    shl cx, 1                        ; 0x7d18
    add ax, cx                       ; 0x7d1a
    add ax, word [bp + 0xa]          ; 0x7d1c
    mov word [bp - 0x000a], ax       ; 0x7d1f
    mov word [bp - 0x0002], 0xffff   ; 0x7d22
    mov ax, word [bp + 0x4]          ; 0x7d27
    jmp near @..api_idx_000a_4.l7    ; 0x7d2a
@..api_idx_000a_4.l1:
    mov word [bp - 0x0002], 0        ; 0x7d2d
    mov word [bp - 0x0004], 1        ; 0x7d32
    jmp near @..api_idx_000a_4.l11   ; 0x7d37
@..api_idx_000a_4.l2:
    mov word [bp - 0x0002], 1        ; 0x7d3a
    mov word [bp - 0x0004], 2        ; 0x7d3f
    jmp near @..api_idx_000a_4.l11   ; 0x7d44
@..api_idx_000a_4.l3:
    mov ax, word [bp - 0x0008]       ; 0x7d47
    dec ax                           ; 0x7d4a
    push ax                          ; 0x7d4b
    push word [bp - 0x0006]          ; 0x7d4c
    lea ax, word [bp + 0x8]          ; 0x7d4f
    push ax                          ; 0x7d52
    lea ax, word [bp + 0xc]          ; 0x7d53
    push ax                          ; 0x7d56
    lea ax, word [bp + 0xa]          ; 0x7d57
    push ax                          ; 0x7d5a
    call api_idx_0004_6              ; 0x7d5b
    add sp, byte 0x0a                ; 0x7d5e
    test ax, ax                      ; 0x7d61
    jne short @..api_idx_000a_4.l4   ; 0x7d63
    mov ax, word [bp + 0x8]          ; 0x7d65
    mov cx, 6                        ; 0x7d68
    shl ax, cl                       ; 0x7d6b
    mov cx, word [bp + 0xc]          ; 0x7d6d
    shl cx, 1                        ; 0x7d70
    shl cx, 1                        ; 0x7d72
    shl cx, 1                        ; 0x7d74
    add ax, cx                       ; 0x7d76
    add ax, word [bp + 0xa]          ; 0x7d78
    mov word [bp - 0x000a], ax       ; 0x7d7b
    mov word [bp - 0x0002], 0        ; 0x7d7e
    mov word [bp - 0x0004], 1        ; 0x7d83
@..api_idx_000a_4.l4:
    jmp short @..api_idx_000a_4.l11  ; 0x7d88
@..api_idx_000a_4.l5:
    push word [bp - 0x0008]          ; 0x7d8a
    mov ax, word [bp - 0x0006]       ; 0x7d8d
    dec ax                           ; 0x7d90
    push ax                          ; 0x7d91
    lea ax, word [bp + 0x8]          ; 0x7d92
    push ax                          ; 0x7d95
    lea ax, word [bp + 0xc]          ; 0x7d96
    push ax                          ; 0x7d99
    lea ax, word [bp + 0xa]          ; 0x7d9a
    push ax                          ; 0x7d9d
    call api_idx_0004_6              ; 0x7d9e
    add sp, byte 0x0a                ; 0x7da1
    test ax, ax                      ; 0x7da4
    jne short @..api_idx_000a_4.l6   ; 0x7da6
    mov ax, word [bp + 0x8]          ; 0x7da8
    mov cx, 6                        ; 0x7dab
    shl ax, cl                       ; 0x7dae
    mov cx, word [bp + 0xc]          ; 0x7db0
    shl cx, 1                        ; 0x7db3
    shl cx, 1                        ; 0x7db5
    shl cx, 1                        ; 0x7db7
    add ax, cx                       ; 0x7db9
    add ax, word [bp + 0xa]          ; 0x7dbb
    mov word [bp - 0x000a], ax       ; 0x7dbe
    mov word [bp - 0x0002], 1        ; 0x7dc1
    mov word [bp - 0x0004], 2        ; 0x7dc6
@..api_idx_000a_4.l6:
    jmp short @..api_idx_000a_4.l11  ; 0x7dcb
@..api_idx_000a_4.l7:
    cmp ax, strict word 0            ; 0x7dcd
    jne short @..api_idx_000a_4.l8   ; 0x7dd0
    jmp near @..api_idx_000a_4.l1    ; 0x7dd2
@..api_idx_000a_4.l8:
    cmp ax, strict word 1            ; 0x7dd5
    jne short @..api_idx_000a_4.l9   ; 0x7dd8
    jmp near @..api_idx_000a_4.l2    ; 0x7dda
@..api_idx_000a_4.l9:
    cmp ax, strict word 2            ; 0x7ddd
    jne short @..api_idx_000a_4.l10  ; 0x7de0
    jmp near @..api_idx_000a_4.l3    ; 0x7de2
@..api_idx_000a_4.l10:
    cmp ax, strict word 3            ; 0x7de5
    je short @..api_idx_000a_4.l5    ; 0x7de8
@..api_idx_000a_4.l11:
    cmp word [bp - 0x0002], byte 0xff ; 0x7dea
    je short @..api_idx_000a_4.l13   ; 0x7dee
    mov ax, 0                        ; 0x7df0
    push ax                          ; 0x7df3
    push ax                          ; 0x7df4
    push ax                          ; 0x7df5
    push word [bp + 0x6]             ; 0x7df6
    push word [bp + 0xc]             ; 0x7df9
    push word [bp + 0xa]             ; 0x7dfc
    push word [bp + 0x8]             ; 0x7dff
    push word [bp - 0x0004]          ; 0x7e02
    push word [data_830c]            ; 0x7e05
    call api_idx_0004_7              ; 0x7e09
    add sp, byte 0x12                ; 0x7e0c
    cmp word [bp - 0x0002], byte 0   ; 0x7e0f
    jne short @..api_idx_000a_4.l12  ; 0x7e13
    push word [bp + 0x6]             ; 0x7e15
    mov ax, 4                        ; 0x7e18
    push ax                          ; 0x7e1b
    push word [bp - 0x000a]          ; 0x7e1c
    mov ax, word [data_0e14]         ; 0x7e1f
    add ax, 0x90                     ; 0x7e22
    push ax                          ; 0x7e25
    call ds_dispatch_eca4            ; 0x7e26
    add sp, byte 8                   ; 0x7e29
    jmp short @..api_idx_000a_4.l13  ; 0x7e2c
@..api_idx_000a_4.l12:
    push word [bp + 0x6]             ; 0x7e2e
    mov ax, 4                        ; 0x7e31
    push ax                          ; 0x7e34
    push word [bp - 0x000a]          ; 0x7e35
    mov ax, word [data_0e14]         ; 0x7e38
    add ax, 0x290                    ; 0x7e3b
    push ax                          ; 0x7e3e
    call ds_dispatch_eca4            ; 0x7e3f
    add sp, byte 8                   ; 0x7e42
@..api_idx_000a_4.l13:
    ret                              ; 0x7e45
api_idx_001e_3:
    mov ax, 0xffe2                   ; 0x7e46
    call ds_dispatch_f40b            ; 0x7e49
    mov ax, word [data_8d12]         ; 0x7e4c
    shl ax, 1                        ; 0x7e4f
    mov si, ax                       ; 0x7e51
    mov bx, word [data_0e12]         ; 0x7e53
    mov ax, word [bx + si + 0x1e0]   ; 0x7e57
    mov cx, 0x100                    ; 0x7e5b
    cwd                              ; 0x7e5e
    idiv cx                          ; 0x7e5f
    mov word [bp - 0x0016], ax       ; 0x7e61
    mov ax, word [bx + si + 0x1e0]   ; 0x7e64
    cwd                              ; 0x7e68
    idiv cx                          ; 0x7e69
    mov word [bp - 0x0018], dx       ; 0x7e6b
    mov ax, word [bx + si]           ; 0x7e6e
    cwd                              ; 0x7e70
    idiv cx                          ; 0x7e71
    mov word [bp - 0x001e], ax       ; 0x7e73
    mov ax, word [bx + si]           ; 0x7e76
    cwd                              ; 0x7e78
    idiv cx                          ; 0x7e79
    mov word [bp - 0x001c], dx       ; 0x7e7b
    mov ax, word [data_82ee]         ; 0x7e7e
    sub ax, word [bp - 0x0016]       ; 0x7e81
    add ax, strict word 4            ; 0x7e84
    mov cx, 4                        ; 0x7e87
    cwd                              ; 0x7e8a
    idiv cx                          ; 0x7e8b
    mov word [bp - 0x001a], dx       ; 0x7e8d
    mov si, word [data_8d12]         ; 0x7e90
    mov al, byte [bx + si + 0xa50]   ; 0x7e94
    sub ah, ah                       ; 0x7e98
    mov word [bp - 0x0014], ax       ; 0x7e9a
    cmp word [bp - 0x0014], byte 0   ; 0x7e9d
    je short @..api_idx_001e_3.l1    ; 0x7ea1
    mov ax, 0x12                     ; 0x7ea3
    push ax                          ; 0x7ea6
    call loc_6ac7                    ; 0x7ea7
    pop cx                           ; 0x7eaa
    mov ax, 0x10                     ; 0x7eab
    push ax                          ; 0x7eae
    call ds_dispatch_d7aa            ; 0x7eaf
    pop cx                           ; 0x7eb2
@..api_idx_001e_3.l1:
    mov ax, word [data_8d12]         ; 0x7eb3
    shl ax, 1                        ; 0x7eb6
    mov si, ax                       ; 0x7eb8
    mov bx, word [data_0e12]         ; 0x7eba
    mov ax, word [bx + si + 0x3c0]   ; 0x7ebe
    mov word [bp - 0x0004], ax       ; 0x7ec2
    mov ax, 3                        ; 0x7ec5
    push ax                          ; 0x7ec8
    mov ax, 0                        ; 0x7ec9
    push ax                          ; 0x7ecc
    push word [bp - 0x0004]          ; 0x7ecd
    call ds_dispatch_ed3a            ; 0x7ed0
    add sp, byte 6                   ; 0x7ed3
    mov word [bp - 0x0008], ax       ; 0x7ed6
    mov ax, 3                        ; 0x7ed9
    push ax                          ; 0x7edc
    push ax                          ; 0x7edd
    push word [bp - 0x0004]          ; 0x7ede
    call ds_dispatch_ed3a            ; 0x7ee1
    add sp, byte 6                   ; 0x7ee4
    mov word [bp - 0x000a], ax       ; 0x7ee7
    mov ax, 4                        ; 0x7eea
    push ax                          ; 0x7eed
    mov ax, 6                        ; 0x7eee
    push ax                          ; 0x7ef1
    push word [bp - 0x0004]          ; 0x7ef2
    call ds_dispatch_ed3a            ; 0x7ef5
    add sp, byte 6                   ; 0x7ef8
    mov word [bp - 0x0006], ax       ; 0x7efb
    mov ax, 1                        ; 0x7efe
    push ax                          ; 0x7f01
    mov ax, 0xa                      ; 0x7f02
    push ax                          ; 0x7f05
    push word [bp - 0x0004]          ; 0x7f06
    call ds_dispatch_ed3a            ; 0x7f09
    add sp, byte 6                   ; 0x7f0c
    mov word [bp - 0x0010], ax       ; 0x7f0f
    mov ax, 1                        ; 0x7f12
    push ax                          ; 0x7f15
    mov ax, 0xb                      ; 0x7f16
    push ax                          ; 0x7f19
    push word [bp - 0x0004]          ; 0x7f1a
    call ds_dispatch_ed3a            ; 0x7f1d
    add sp, byte 6                   ; 0x7f20
    mov word [bp - 0x0012], ax       ; 0x7f23
    mov ax, 1                        ; 0x7f26
    push ax                          ; 0x7f29
    mov ax, 0xc                      ; 0x7f2a
    push ax                          ; 0x7f2d
    push word [bp - 0x0004]          ; 0x7f2e
    call ds_dispatch_ed3a            ; 0x7f31
    add sp, byte 6                   ; 0x7f34
    mov word [bp - 0x000e], ax       ; 0x7f37
    mov ax, 1                        ; 0x7f3a
    cmp word [bp - 0x0012], byte 0   ; 0x7f3d
    je short @..api_idx_001e_3.l2    ; 0x7f41
    mov ax, 6                        ; 0x7f43
@..api_idx_001e_3.l2:
    mov word [bp - 0x000c], ax       ; 0x7f46
    cmp word [bp - 0x000e], byte 0   ; 0x7f49
    je short @..api_idx_001e_3.l4    ; 0x7f4d
    cmp word [bp - 0x0010], byte 0   ; 0x7f4f
    je short @..api_idx_001e_3.l4    ; 0x7f53
    cmp word [bp - 0x0012], byte 0   ; 0x7f55
    je short @..api_idx_001e_3.l4    ; 0x7f59
    cmp word [bp - 0x001a], byte 0   ; 0x7f5b
    jne short @..api_idx_001e_3.l4   ; 0x7f5f
    mov ax, word [data_82ee]         ; 0x7f61
    cmp ax, word [bp - 0x0018]       ; 0x7f64
    jne short @..api_idx_001e_3.l3   ; 0x7f67
    push word [bp - 0x0014]          ; 0x7f69
    push word [bp - 0x001e]          ; 0x7f6c
    push word [bp - 0x001c]          ; 0x7f6f
    mov ax, 0                        ; 0x7f72
    push ax                          ; 0x7f75
    call api_idx_0018_2              ; 0x7f76
    add sp, byte 8                   ; 0x7f79
    jmp short @..api_idx_001e_3.l4   ; 0x7f7c
@..api_idx_001e_3.l3:
    push word [bp - 0x0014]          ; 0x7f7e
    mov ax, 7                        ; 0x7f81
    push ax                          ; 0x7f84
    call math_loc_7cb4               ; 0x7f85
    add sp, byte 4                   ; 0x7f88
@..api_idx_001e_3.l4:
    push word [bp - 0x000a]          ; 0x7f8b
    push word [bp - 0x0008]          ; 0x7f8e
    push word [bp - 0x0006]          ; 0x7f91
    push word [bp - 0x000c]          ; 0x7f94
    push word [bp - 0x0016]          ; 0x7f97
    call api_idx_000a_4              ; 0x7f9a
    add sp, byte 0x0a                ; 0x7f9d
    cmp word [bp - 0x000e], byte 0   ; 0x7fa0
    je short @..api_idx_001e_3.l11   ; 0x7fa4
    cmp word [bp - 0x0010], byte 0   ; 0x7fa6
    je short @..api_idx_001e_3.l9    ; 0x7faa
    cmp word [bp - 0x0012], byte 0   ; 0x7fac
    jne short @..api_idx_001e_3.l7   ; 0x7fb0
    cmp word [bp - 0x001a], byte 0   ; 0x7fb2
    jne short @..api_idx_001e_3.l7   ; 0x7fb6
    mov ax, word [data_82ee]         ; 0x7fb8
    cmp ax, word [bp - 0x0018]       ; 0x7fbb
    jne short @..api_idx_001e_3.l5   ; 0x7fbe
    push word [bp - 0x0014]          ; 0x7fc0
    push word [bp - 0x001e]          ; 0x7fc3
    push word [bp - 0x001c]          ; 0x7fc6
    mov ax, 1                        ; 0x7fc9
    push ax                          ; 0x7fcc
    call api_idx_0018_2              ; 0x7fcd
    add sp, byte 8                   ; 0x7fd0
    jmp short @..api_idx_001e_3.l6   ; 0x7fd3
@..api_idx_001e_3.l5:
    push word [bp - 0x0014]          ; 0x7fd5
    mov ax, 7                        ; 0x7fd8
    push ax                          ; 0x7fdb
    call math_loc_7cb4               ; 0x7fdc
    add sp, byte 4                   ; 0x7fdf
@..api_idx_001e_3.l6:
    jmp short @..api_idx_001e_3.l8   ; 0x7fe2
@..api_idx_001e_3.l7:
    cmp word [bp - 0x001a], byte 1   ; 0x7fe4
    jl short @..api_idx_001e_3.l8    ; 0x7fe8
    cmp word [bp - 0x001a], byte 3   ; 0x7fea
    jg short @..api_idx_001e_3.l8    ; 0x7fee
    push word [bp - 0x0014]          ; 0x7ff0
    mov ax, 7                        ; 0x7ff3
    push ax                          ; 0x7ff6
    call math_loc_7cb4               ; 0x7ff7
    add sp, byte 4                   ; 0x7ffa
@..api_idx_001e_3.l8:
    call loc_676c                    ; 0x7ffd
    jmp short @..api_idx_001e_3.l10  ; 0x8000
@..api_idx_001e_3.l9:
    call loc_676c                    ; 0x8002
@..api_idx_001e_3.l10:
    jmp short @..api_idx_001e_3.l13  ; 0x8005
@..api_idx_001e_3.l11:
    cmp word [bp - 0x0010], byte 0   ; 0x8007
    je short @..api_idx_001e_3.l12   ; 0x800b
    push word [bp - 0x0014]          ; 0x800d
    mov ax, 7                        ; 0x8010
    push ax                          ; 0x8013
    call math_loc_7cb4               ; 0x8014
    add sp, byte 4                   ; 0x8017
@..api_idx_001e_3.l12:
    mov ax, 2                        ; 0x801a
    push ax                          ; 0x801d
    call api_idx_0006_2              ; 0x801e
    pop cx                           ; 0x8021
@..api_idx_001e_3.l13:
    cmp word [bp - 0x0014], byte 0   ; 0x8022
    je short @..api_idx_001e_3.l14   ; 0x8026
    mov ax, 0x10                     ; 0x8028
    push ax                          ; 0x802b
    call ds_dispatch_d6c6            ; 0x802c
    pop cx                           ; 0x802f
    mov word [data_598e], 0xffff     ; 0x8030
@..api_idx_001e_3.l14:
    mov si, word [data_8d12]         ; 0x8036
    mov bx, word [data_0e12]         ; 0x803a
    cmp byte [bx + si + 0x960], 0    ; 0x803e
    jbe short @..api_idx_001e_3.l15  ; 0x8043
    mov ax, 2                        ; 0x8045
    push ax                          ; 0x8048
    call loc_7242                    ; 0x8049
    pop cx                           ; 0x804c
@..api_idx_001e_3.l15:
    ret                              ; 0x804d
api_idx_000e_2:
    mov ax, 0xfff2                   ; 0x804e
    call ds_dispatch_f40b            ; 0x8051
    mov ax, 5                        ; 0x8054
    push ax                          ; 0x8057
    call api_idx_0006_2              ; 0x8058
    pop cx                           ; 0x805b
    mov ax, word [data_8d12]         ; 0x805c
    shl ax, 1                        ; 0x805f
    mov si, ax                       ; 0x8061
    mov bx, word [data_0e12]         ; 0x8063
    mov ax, word [bx + si + 0x3c0]   ; 0x8067
    mov word [bp - 0x0002], ax       ; 0x806b
    mov ax, 8                        ; 0x806e
    push ax                          ; 0x8071
    mov ax, 0                        ; 0x8072
    push ax                          ; 0x8075
    push word [bp - 0x0002]          ; 0x8076
    call ds_dispatch_ed3a            ; 0x8079
    add sp, byte 6                   ; 0x807c
    mov word [bp - 0x0006], ax       ; 0x807f
    mov bx, word [data_0e12]         ; 0x8082
    mov si, word [data_8d12]         ; 0x8086
    mov al, byte [bx + si + 0xa50]   ; 0x808a
    sub ah, ah                       ; 0x808e
    mov word [bp - 0x000a], ax       ; 0x8090
    cmp word [bp - 0x000a], byte 0   ; 0x8093
    jne short @..api_idx_000e_2.l4   ; 0x8097
@..api_idx_000e_2.l1:
    call ds_dispatch_ceb1            ; 0x8099
    mov word [bp - 0x0004], ax       ; 0x809c
    cmp ax, strict word 0xffff       ; 0x809f
    je short @..api_idx_000e_2.l2    ; 0x80a2
    push ax                          ; 0x80a4
    call ds_dispatch_ca85            ; 0x80a5
    pop cx                           ; 0x80a8
    test ax, ax                      ; 0x80a9
    jne short @..api_idx_000e_2.l3   ; 0x80ab
@..api_idx_000e_2.l2:
    jmp short @..api_idx_000e_2.l1   ; 0x80ad
@..api_idx_000e_2.l3:
    mov ax, 3                        ; 0x80af
    push ax                          ; 0x80b2
    mov ax, 0xb                      ; 0x80b3
    push ax                          ; 0x80b6
    push word [bp - 0x0002]          ; 0x80b7
    call ds_dispatch_ed3a            ; 0x80ba
    add sp, byte 6                   ; 0x80bd
    push ax                          ; 0x80c0
    mov ax, 0x248                    ; 0x80c1
    imul word [bp - 0x0004]          ; 0x80c4
    mov cx, ax                       ; 0x80c7
    pop ax                           ; 0x80c9
    add ax, cx                       ; 0x80ca
    mov bx, ax                       ; 0x80cc
    mov al, byte [bx + 0x5d64]       ; 0x80ce
    sub ah, ah                       ; 0x80d2
    mov word [bp - 0x000a], ax       ; 0x80d4
    jmp near @..api_idx_000e_2.l10   ; 0x80d7
@..api_idx_000e_2.l4:
    cmp word [bp - 0x000a], strict word 0xfe ; 0x80da
    jne short @..api_idx_000e_2.l6   ; 0x80df
    cmp word [bp - 0x0006], byte 0x15 ; 0x80e1
    jne short @..api_idx_000e_2.l5   ; 0x80e5
    mov ax, 1                        ; 0x80e7
    push ax                          ; 0x80ea
    mov ax, 0x12                     ; 0x80eb
    push ax                          ; 0x80ee
    push word [data_8af0]            ; 0x80ef
    call math_loc_6fbf               ; 0x80f3
    add sp, byte 6                   ; 0x80f6
@..api_idx_000e_2.l5:
    mov ax, 0x248                    ; 0x80f9
    imul word [data_8af0]            ; 0x80fc
    mov bx, ax                       ; 0x8100
    mov al, byte [bx + 0x5d68]       ; 0x8102
    sub ah, ah                       ; 0x8106
    mov cx, 2                        ; 0x8108
    cwd                              ; 0x810b
    idiv cx                          ; 0x810c
    push ax                          ; 0x810e
    mov al, byte [bx + 0x5d7e]       ; 0x810f
    sub ah, ah                       ; 0x8113
    mov cx, 3                        ; 0x8115
    cwd                              ; 0x8118
    idiv cx                          ; 0x8119
    mov cx, ax                       ; 0x811b
    pop ax                           ; 0x811d
    add ax, cx                       ; 0x811e
    mov word [bp - 0x000a], ax       ; 0x8120
    jmp short @..api_idx_000e_2.l10  ; 0x8123
@..api_idx_000e_2.l6:
    cmp word [bp - 0x000a], strict word 0xff ; 0x8125
    jne short @..api_idx_000e_2.l10  ; 0x812a
    mov word [bp - 0x000a], 0        ; 0x812c
    mov word [bp - 0x0004], 0        ; 0x8131
    jmp short @..api_idx_000e_2.l9   ; 0x8136
@..api_idx_000e_2.l7:
    push word [bp - 0x0004]          ; 0x8138
    call ds_dispatch_ca85            ; 0x813b
    pop cx                           ; 0x813e
    test ax, ax                      ; 0x813f
    je short @..api_idx_000e_2.l8    ; 0x8141
    mov ax, 0x248                    ; 0x8143
    imul word [bp - 0x0004]          ; 0x8146
    mov bx, ax                       ; 0x8149
    mov al, byte [bx + 0x5d77]       ; 0x814b
    sub ah, ah                       ; 0x814f
    add word [bp - 0x000a], ax       ; 0x8151
    mov ax, 2                        ; 0x8154
    push ax                          ; 0x8157
    mov ax, 0xb                      ; 0x8158
    push ax                          ; 0x815b
    push word [bp - 0x0004]          ; 0x815c
    call math_loc_6fbf               ; 0x815f
    add sp, byte 6                   ; 0x8162
@..api_idx_000e_2.l8:
    inc word [bp - 0x0004]           ; 0x8165
@..api_idx_000e_2.l9:
    mov ax, word [bp - 0x0004]       ; 0x8168
    cmp ax, word [data_69c8]         ; 0x816b
    jl short @..api_idx_000e_2.l7    ; 0x816f
    mov ax, word [bp - 0x000a]       ; 0x8171
    cwd                              ; 0x8174
    idiv word [data_69c8]            ; 0x8175
    mov word [bp - 0x000a], ax       ; 0x8179
@..api_idx_000e_2.l10:
    push word [bp - 0x0006]          ; 0x817c
    call ds_dispatch_b7a9            ; 0x817f
    pop cx                           ; 0x8182
    mov word [bp - 0x000c], ax       ; 0x8183
    cmp ax, word [bp - 0x000a]       ; 0x8186
    jge short @..api_idx_000e_2.l11  ; 0x8189
    mov ax, word [data_8d12]         ; 0x818b
    shl ax, 1                        ; 0x818e
    mov si, ax                       ; 0x8190
    mov bx, word [data_0e12]         ; 0x8192
    mov ax, word [bx + si]           ; 0x8196
    jmp short @..api_idx_000e_2.l12  ; 0x8198
@..api_idx_000e_2.l11:
    mov ax, word [data_8d12]         ; 0x819a
    shl ax, 1                        ; 0x819d
    mov si, ax                       ; 0x819f
    mov bx, word [data_0e12]         ; 0x81a1
    mov ax, word [bx + si + 0x1e0]   ; 0x81a5
@..api_idx_000e_2.l12:
    mov word [bp - 0x000e], ax       ; 0x81a9
    mov ax, 0                        ; 0x81ac
    push ax                          ; 0x81af
    push word [bp - 0x000e]          ; 0x81b0
    mov ax, word [data_830c]         ; 0x81b3
    mov cx, 4                        ; 0x81b6
    shl ax, cl                       ; 0x81b9
    add ax, 0x8d14                   ; 0x81bb
    push ax                          ; 0x81be
    call ds_dispatch_ec41            ; 0x81bf
    add sp, byte 6                   ; 0x81c2
    mov ax, 1                        ; 0x81c5
    push ax                          ; 0x81c8
    mov ax, 8                        ; 0x81c9
    push ax                          ; 0x81cc
    push word [bp - 0x0002]          ; 0x81cd
    call ds_dispatch_ed3a            ; 0x81d0
    add sp, byte 6                   ; 0x81d3
    cmp ax, strict word 1            ; 0x81d6
    jne short @..api_idx_000e_2.l13  ; 0x81d9
    mov ax, 0                        ; 0x81db
    push ax                          ; 0x81de
    push word [bp - 0x000e]          ; 0x81df
    mov ax, word [data_830c]         ; 0x81e2
    mov cx, 4                        ; 0x81e5
    shl ax, cl                       ; 0x81e8
    add ax, 0x5642                   ; 0x81ea
    push ax                          ; 0x81ed
    call ds_dispatch_ec41            ; 0x81ee
    add sp, byte 6                   ; 0x81f1
@..api_idx_000e_2.l13:
    mov ax, 2                        ; 0x81f4
    push ax                          ; 0x81f7
    mov ax, 9                        ; 0x81f8
    push ax                          ; 0x81fb
    push word [bp - 0x0002]          ; 0x81fc
    call ds_dispatch_ed3a            ; 0x81ff
    add sp, byte 6                   ; 0x8202
    push ax                          ; 0x8205
    call loc_7242                    ; 0x8206
    pop cx                           ; 0x8209
    ret                              ; 0x820a
api_idx_0010_3:
    mov ax, 0xfff0                   ; 0x820b
    call ds_dispatch_f40b            ; 0x820e
    mov ax, word [data_8d12]         ; 0x8211
    shl ax, 1                        ; 0x8214
    mov si, ax                       ; 0x8216
    mov bx, word [data_0e12]         ; 0x8218
    mov ax, word [bx + si + 0x3c0]   ; 0x821c
    mov word [bp - 0x0004], ax       ; 0x8220
    mov ax, 3                        ; 0x8223
    push ax                          ; 0x8226
    mov ax, 0                        ; 0x8227
    push ax                          ; 0x822a
    push word [bp - 0x0004]          ; 0x822b
    call ds_dispatch_ed3a            ; 0x822e
    add sp, byte 6                   ; 0x8231
    mov word [bp - 0x0006], ax       ; 0x8234
    mov ax, 3                        ; 0x8237
    push ax                          ; 0x823a
    push ax                          ; 0x823b
    push word [bp - 0x0004]          ; 0x823c
    call ds_dispatch_ed3a            ; 0x823f
    add sp, byte 6                   ; 0x8242
    mov word [bp - 0x0008], ax       ; 0x8245
    mov ax, 4                        ; 0x8248
    push ax                          ; 0x824b
    mov ax, 6                        ; 0x824c
    push ax                          ; 0x824f
    push word [bp - 0x0004]          ; 0x8250
    call ds_dispatch_ed3a            ; 0x8253
    add sp, byte 6                   ; 0x8256
    mov word [bp - 0x000a], ax       ; 0x8259
    mov ax, word [data_8d12]         ; 0x825c
    shl ax, 1                        ; 0x825f
    mov si, ax                       ; 0x8261
    mov bx, word [data_0e12]         ; 0x8263
    mov ax, word [bx + si + 0x1e0]   ; 0x8267
    mov word [bp - 0x0010], ax       ; 0x826b
    mov ax, word [bp - 0x000a]       ; 0x826e
    mov cx, 6                        ; 0x8271
    shl ax, cl                       ; 0x8274
    mov cx, word [bp - 0x0008]       ; 0x8276
    shl cx, 1                        ; 0x8279
    shl cx, 1                        ; 0x827b
    shl cx, 1                        ; 0x827d
    add ax, cx                       ; 0x827f
    add ax, word [bp - 0x0006]       ; 0x8281
    mov word [bp - 0x0002], ax       ; 0x8284
    mov ax, word [bx + si]           ; 0x8287
    mov word [bp - 0x000c], ax       ; 0x8289
    mov si, word [data_8d12]         ; 0x828c
    mov al, byte [bx + si + 0xa50]   ; 0x8290
    sub ah, ah                       ; 0x8294
    mov word [bp - 0x000e], ax       ; 0x8296
    mov ax, 0                        ; 0x8299
    push ax                          ; 0x829c
    push ax                          ; 0x829d
    push word [bp - 0x000e]          ; 0x829e
    push word [bp - 0x000c]          ; 0x82a1
    push word [bp - 0x0008]          ; 0x82a4
    push word [bp - 0x0006]          ; 0x82a7
    push word [bp - 0x000a]          ; 0x82aa
    mov ax, 5                        ; 0x82ad
    push ax                          ; 0x82b0
    push word [data_830c]            ; 0x82b1
    call api_idx_0004_7              ; 0x82b5
    add sp, byte 0x12                ; 0x82b8
    push word [bp - 0x000c]          ; 0x82bb
    mov ax, 6                        ; 0x82be
    push ax                          ; 0x82c1
    push word [bp - 0x0002]          ; 0x82c2
    mov ax, word [data_0e14]         ; 0x82c5
    add ax, 0x4b0                    ; 0x82c8
    push ax                          ; 0x82cb
    call ds_dispatch_eca4            ; 0x82cc
    add sp, byte 8                   ; 0x82cf
    push word [bp - 0x000e]          ; 0x82d2
    mov ax, 2                        ; 0x82d5
    push ax                          ; 0x82d8
    push word [bp - 0x0002]          ; 0x82d9
    mov ax, word [data_0e14]         ; 0x82dc
    add ax, 0x7b0                    ; 0x82df
    push ax                          ; 0x82e2
    call ds_dispatch_eca4            ; 0x82e3
    add sp, byte 8                   ; 0x82e6
    cmp word [bp - 0x0010], byte 0   ; 0x82e9
    jle short @..api_idx_0010_3.l1   ; 0x82ed
    push word [bp - 0x0010]          ; 0x82ef
    call ds_dispatch_d7aa            ; 0x82f2
    pop cx                           ; 0x82f5
@..api_idx_0010_3.l1:
    mov ax, 1                        ; 0x82f6
    push ax                          ; 0x82f9
    mov ax, 0xa                      ; 0x82fa
    push ax                          ; 0x82fd
    push word [bp - 0x0004]          ; 0x82fe
    call ds_dispatch_ed3a            ; 0x8301
    add sp, byte 6                   ; 0x8304
    cmp ax, strict word 1            ; 0x8307
    je short @..api_idx_0010_3.l2    ; 0x830a
    jmp near @..api_idx_0010_3.l10   ; 0x830c
@..api_idx_0010_3.l2:
    call loc_676c                    ; 0x830f
    mov ax, word [bp - 0x000c]       ; 0x8312
    cmp ax, strict word 5            ; 0x8315
    je short @..api_idx_0010_3.l3    ; 0x8318
    cmp ax, strict word 6            ; 0x831a
    je short @..api_idx_0010_3.l3    ; 0x831d
    cmp ax, strict word 0xa          ; 0x831f
    je short @..api_idx_0010_3.l3    ; 0x8322
    cmp ax, strict word 0xb          ; 0x8324
    jne short @..api_idx_0010_3.l10  ; 0x8327
@..api_idx_0010_3.l3:
    cmp ax, strict word 6            ; 0x8329
    je short @..api_idx_0010_3.l4    ; 0x832c
    cmp ax, strict word 0xa          ; 0x832e
    je short @..api_idx_0010_3.l4    ; 0x8331
    cmp ax, strict word 0xb          ; 0x8333
    jne short @..api_idx_0010_3.l6   ; 0x8336
@..api_idx_0010_3.l4:
    mov ax, 0x80a                    ; 0x8338
    cmp word [bp - 0x000c], byte 6   ; 0x833b
    jne short @..api_idx_0010_3.l5   ; 0x833f
    mov ax, 0x7fc                    ; 0x8341
@..api_idx_0010_3.l5:
    push ax                          ; 0x8344
    call api_idx_0050                ; 0x8345
    pop cx                           ; 0x8348
@..api_idx_0010_3.l6:
    cmp word [bp - 0x000c], byte 5   ; 0x8349
    je short @..api_idx_0010_3.l7    ; 0x834d
    cmp word [bp - 0x000c], byte 6   ; 0x834f
    jne short @..api_idx_0010_3.l8   ; 0x8353
@..api_idx_0010_3.l7:
    mov ax, 4                        ; 0x8355
    jmp short @..api_idx_0010_3.l9   ; 0x8358
@..api_idx_0010_3.l8:
    mov ax, 1                        ; 0x835a
@..api_idx_0010_3.l9:
    push ax                          ; 0x835d
    call ds_dispatch_b7e0            ; 0x835e
    pop cx                           ; 0x8361
    mov ax, 2                        ; 0x8362
    push ax                          ; 0x8365
    call api_idx_0006_2              ; 0x8366
    pop cx                           ; 0x8369
    mov ax, 0x98                     ; 0x836a
    push ax                          ; 0x836d
    mov ax, 0x13f                    ; 0x836e
    push ax                          ; 0x8371
    mov ax, 0x92                     ; 0x8372
    push ax                          ; 0x8375
    mov ax, 0                        ; 0x8376
    push ax                          ; 0x8379
    call ds_dispatch_e8da            ; 0x837a
    add sp, byte 8                   ; 0x837d
@..api_idx_0010_3.l10:
    cmp word [bp - 0x0010], byte 0   ; 0x8380
    jle short @..api_idx_0010_3.l11  ; 0x8384
    mov ax, 0x10                     ; 0x8386
    push ax                          ; 0x8389
    call ds_dispatch_b7e0            ; 0x838a
    pop cx                           ; 0x838d
    mov ax, 0x10                     ; 0x838e
    push ax                          ; 0x8391
    call ds_dispatch_d6c6            ; 0x8392
    pop cx                           ; 0x8395
    mov word [data_598e], 0xffff     ; 0x8396
@..api_idx_0010_3.l11:
    mov ax, 2                        ; 0x839c
    push ax                          ; 0x839f
    mov ax, 0xb                      ; 0x83a0
    push ax                          ; 0x83a3
    push word [bp - 0x0004]          ; 0x83a4
    call ds_dispatch_ed3a            ; 0x83a7
    add sp, byte 6                   ; 0x83aa
    push ax                          ; 0x83ad
    call loc_7242                    ; 0x83ae
    pop cx                           ; 0x83b1
    ret                              ; 0x83b2
api_idx_0004_14:
    mov ax, 0xfffc                   ; 0x83b3
    call ds_dispatch_f40b            ; 0x83b6
    mov ax, word [bp + 0x6]          ; 0x83b9
    cmp word [bp + 0x8], byte 0      ; 0x83bc
    jne short @..api_idx_0004_14.l1  ; 0x83c0
    mov ax, word [bp + 0x4]          ; 0x83c2
@..api_idx_0004_14.l1:
    mov word [bp - 0x0002], ax       ; 0x83c5
    mov ax, word [bp + 0x4]          ; 0x83c8
    cmp word [bp + 0x8], byte 0      ; 0x83cb
    jne short @..api_idx_0004_14.l2  ; 0x83cf
    mov ax, word [bp + 0x6]          ; 0x83d1
@..api_idx_0004_14.l2:
    mov word [bp - 0x0004], ax       ; 0x83d4
    cmp word [bp - 0x0002], byte 0   ; 0x83d7
    je short @..api_idx_0004_14.l3   ; 0x83db
    mov ax, 0                        ; 0x83dd
    push ax                          ; 0x83e0
    push word [bp - 0x0002]          ; 0x83e1
    mov ax, word [data_830c]         ; 0x83e4
    mov cx, 4                        ; 0x83e7
    shl ax, cl                       ; 0x83ea
    add ax, 0x8d14                   ; 0x83ec
    push ax                          ; 0x83ef
    call ds_dispatch_ec41            ; 0x83f0
    add sp, byte 6                   ; 0x83f3
    mov ax, 0                        ; 0x83f6
    push ax                          ; 0x83f9
    push word [bp - 0x0002]          ; 0x83fa
    mov ax, word [data_830c]         ; 0x83fd
    mov cx, 4                        ; 0x8400
    shl ax, cl                       ; 0x8403
    add ax, 0x5642                   ; 0x8405
    push ax                          ; 0x8408
    call ds_dispatch_ec41            ; 0x8409
    add sp, byte 6                   ; 0x840c
@..api_idx_0004_14.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x840f
    je short @..api_idx_0004_14.l4   ; 0x8413
    mov ax, 1                        ; 0x8415
    push ax                          ; 0x8418
    push word [bp - 0x0004]          ; 0x8419
    mov ax, word [data_830c]         ; 0x841c
    mov cx, 4                        ; 0x841f
    shl ax, cl                       ; 0x8422
    add ax, 0x8d14                   ; 0x8424
    push ax                          ; 0x8427
    call ds_dispatch_ec41            ; 0x8428
    add sp, byte 6                   ; 0x842b
    mov ax, 1                        ; 0x842e
    push ax                          ; 0x8431
    push word [bp - 0x0004]          ; 0x8432
    mov ax, word [data_830c]         ; 0x8435
    mov cx, 4                        ; 0x8438
    shl ax, cl                       ; 0x843b
    add ax, 0x5642                   ; 0x843d
    push ax                          ; 0x8440
    call ds_dispatch_ec41            ; 0x8441
    add sp, byte 6                   ; 0x8444
@..api_idx_0004_14.l4:
    ret                              ; 0x8447
api_idx_000e_3:
    mov ax, 0xfff2                   ; 0x8448
    call ds_dispatch_f40b            ; 0x844b
    mov word [bp - 0x000e], 1        ; 0x844e
    mov ax, word [data_8d12]         ; 0x8453
    shl ax, 1                        ; 0x8456
    mov si, ax                       ; 0x8458
    mov bx, word [data_0e12]         ; 0x845a
    mov ax, word [bx + si]           ; 0x845e
    mov word [bp - 0x000a], ax       ; 0x8460
    mov ax, word [bx + si + 0x3c0]   ; 0x8463
    mov word [bp - 0x0008], ax       ; 0x8467
    mov ax, 1                        ; 0x846a
    push ax                          ; 0x846d
    mov ax, 2                        ; 0x846e
    push ax                          ; 0x8471
    push word [bp - 0x0008]          ; 0x8472
    call ds_dispatch_ed3a            ; 0x8475
    add sp, byte 6                   ; 0x8478
    mov word [bp - 0x000c], ax       ; 0x847b
    mov word [bp - 0x0002], 0        ; 0x847e
    jmp short @..api_idx_000e_3.l6   ; 0x8483
@..api_idx_000e_3.l1:
    mov word [bp - 0x0006], 0        ; 0x8485
@..api_idx_000e_3.l2:
    mov word [bp - 0x0004], 0        ; 0x848a
@..api_idx_000e_3.l3:
    mov ax, 0x248                    ; 0x848f
    imul word [bp - 0x0002]          ; 0x8492
    push ax                          ; 0x8495
    mov ax, 0x78                     ; 0x8496
    imul word [bp - 0x0006]          ; 0x8499
    mov cx, ax                       ; 0x849c
    pop ax                           ; 0x849e
    add ax, cx                       ; 0x849f
    push ax                          ; 0x84a1
    mov ax, 0xc                      ; 0x84a2
    imul word [bp - 0x0004]          ; 0x84a5
    mov cx, ax                       ; 0x84a8
    pop ax                           ; 0x84aa
    add ax, cx                       ; 0x84ab
    mov bx, ax                       ; 0x84ad
    mov ax, word [bx + 0x5c34]       ; 0x84af
    cmp ax, word [bp - 0x000a]       ; 0x84b3
    jne short @..api_idx_000e_3.l5   ; 0x84b6
    mov al, byte [bx + 0x5c3b]       ; 0x84b8
    sub ah, ah                       ; 0x84bc
    test ax, 1                       ; 0x84be
    jne short @..api_idx_000e_3.l4   ; 0x84c1
    cmp word [bp - 0x000c], byte 0   ; 0x84c3
    je short @..api_idx_000e_3.l5    ; 0x84c7
@..api_idx_000e_3.l4:
    mov word [bp - 0x000e], 0        ; 0x84c9
@..api_idx_000e_3.l5:
    inc word [bp - 0x0004]           ; 0x84ce
    mov ax, word [bp - 0x0004]       ; 0x84d1
    cmp ax, strict word 0xa          ; 0x84d4
    jl short @..api_idx_000e_3.l3    ; 0x84d7
    inc word [bp - 0x0006]           ; 0x84d9
    mov ax, word [bp - 0x0006]       ; 0x84dc
    cmp ax, strict word 2            ; 0x84df
    jl short @..api_idx_000e_3.l2    ; 0x84e2
    inc word [bp - 0x0002]           ; 0x84e4
@..api_idx_000e_3.l6:
    mov ax, word [bp - 0x0002]       ; 0x84e7
    cmp ax, word [data_69c8]         ; 0x84ea
    jl short @..api_idx_000e_3.l1    ; 0x84ee
    push word [bp - 0x000e]          ; 0x84f0
    mov si, word [data_8d12]         ; 0x84f3
    mov bx, word [data_0e12]         ; 0x84f7
    mov al, byte [bx + si + 0xa50]   ; 0x84fb
    sub ah, ah                       ; 0x84ff
    push ax                          ; 0x8501
    shl si, 1                        ; 0x8502
    push word [bx + si + 0x1e0]      ; 0x8504
    call api_idx_0004_14             ; 0x8508
    add sp, byte 6                   ; 0x850b
    cmp word [bp - 0x000e], byte 0   ; 0x850e
    je short @..api_idx_000e_3.l7    ; 0x8512
    mov ax, 1                        ; 0x8514
    push ax                          ; 0x8517
    mov ax, 3                        ; 0x8518
    push ax                          ; 0x851b
    push word [bp - 0x0008]          ; 0x851c
    call ds_dispatch_ed3a            ; 0x851f
    add sp, byte 6                   ; 0x8522
    test ax, ax                      ; 0x8525
    je short @..api_idx_000e_3.l8    ; 0x8527
@..api_idx_000e_3.l7:
    mov ax, 2                        ; 0x8529
    push ax                          ; 0x852c
    mov ax, 0                        ; 0x852d
    push ax                          ; 0x8530
    push word [bp - 0x0008]          ; 0x8531
    call ds_dispatch_ed3a            ; 0x8534
    add sp, byte 6                   ; 0x8537
    push ax                          ; 0x853a
    call loc_7242                    ; 0x853b
    pop cx                           ; 0x853e
@..api_idx_000e_3.l8:
    ret                              ; 0x853f
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
api_idx_0012_3:
    mov ax, 0xffee                   ; 0x8568
    call ds_dispatch_f40b            ; 0x856b
    mov ax, word [data_8d12]         ; 0x856e
    shl ax, 1                        ; 0x8571
    mov si, ax                       ; 0x8573
    mov bx, word [data_0e12]         ; 0x8575
    mov ax, word [bx + si + 0x3c0]   ; 0x8579
    mov word [bp - 0x0002], ax       ; 0x857d
    mov ax, 5                        ; 0x8580
    push ax                          ; 0x8583
    mov ax, 0                        ; 0x8584
    push ax                          ; 0x8587
    push word [bp - 0x0002]          ; 0x8588
    call ds_dispatch_ed3a            ; 0x858b
    add sp, byte 6                   ; 0x858e
    mov word [bp - 0x0004], ax       ; 0x8591
    mov ax, 5                        ; 0x8594
    push ax                          ; 0x8597
    push ax                          ; 0x8598
    push word [bp - 0x0002]          ; 0x8599
    call ds_dispatch_ed3a            ; 0x859c
    add sp, byte 6                   ; 0x859f
    mov word [bp - 0x0006], ax       ; 0x85a2
    mov ax, 2                        ; 0x85a5
    push ax                          ; 0x85a8
    mov ax, 0xa                      ; 0x85a9
    push ax                          ; 0x85ac
    push word [bp - 0x0002]          ; 0x85ad
    call ds_dispatch_ed3a            ; 0x85b0
    add sp, byte 6                   ; 0x85b3
    mov word [bp - 0x0010], ax       ; 0x85b6
    mov ax, 1                        ; 0x85b9
    push ax                          ; 0x85bc
    mov ax, 0xc                      ; 0x85bd
    push ax                          ; 0x85c0
    push word [bp - 0x0002]          ; 0x85c1
    call ds_dispatch_ed3a            ; 0x85c4
    add sp, byte 6                   ; 0x85c7
    mov word [bp - 0x0012], ax       ; 0x85ca
    mov ax, word [data_8f1c]         ; 0x85cd
    mov dx, word [data_8f1e]         ; 0x85d0
    mov cx, 0x5a0                    ; 0x85d4
    mov bx, 0                        ; 0x85d7
    call ds_dispatch_f9cd            ; 0x85da
    mov cx, 0x3c                     ; 0x85dd
    mov bx, 0                        ; 0x85e0
    call ds_dispatch_f99f            ; 0x85e3
    mov word [bp - 0x000a], ax       ; 0x85e6
    mov ax, word [bp - 0x0006]       ; 0x85e9
    push ax                          ; 0x85ec
    cmp ax, word [bp - 0x0004]       ; 0x85ed
    pop ax                           ; 0x85f0
    jge short @..api_idx_0012_3.l1   ; 0x85f1
    mov ax, 0x18                     ; 0x85f3
@..api_idx_0012_3.l1:
    mov word [bp - 0x0008], ax       ; 0x85f6
    mov ax, word [bp - 0x000a]       ; 0x85f9
    cmp ax, word [bp - 0x0004]       ; 0x85fc
    jl short @..api_idx_0012_3.l2    ; 0x85ff
    cmp ax, word [bp - 0x0008]       ; 0x8601
    jge short @..api_idx_0012_3.l2   ; 0x8604
    mov ax, 0                        ; 0x8606
    jmp short @..api_idx_0012_3.l3   ; 0x8609
@..api_idx_0012_3.l2:
    mov ax, 1                        ; 0x860b
@..api_idx_0012_3.l3:
    mov word [bp - 0x000e], ax       ; 0x860e
    mov ax, word [bp - 0x0006]       ; 0x8611
    cmp ax, word [bp - 0x0004]       ; 0x8614
    jge short @..api_idx_0012_3.l6   ; 0x8617
    cmp word [bp - 0x000a], byte 0   ; 0x8619
    jl short @..api_idx_0012_3.l4    ; 0x861d
    cmp ax, word [bp - 0x000a]       ; 0x861f
    jle short @..api_idx_0012_3.l4   ; 0x8622
    mov ax, 0                        ; 0x8624
    jmp short @..api_idx_0012_3.l5   ; 0x8627
@..api_idx_0012_3.l4:
    mov ax, word [bp - 0x000e]       ; 0x8629
@..api_idx_0012_3.l5:
    mov word [bp - 0x000e], ax       ; 0x862c
@..api_idx_0012_3.l6:
    cmp word [bp - 0x0012], byte 0   ; 0x862f
    jne short @..api_idx_0012_3.l7   ; 0x8633
    push word [bp - 0x0010]          ; 0x8635
    push word [bp - 0x000e]          ; 0x8638
    call loc_8540                    ; 0x863b
    add sp, byte 4                   ; 0x863e
    jmp short @..api_idx_0012_3.l11  ; 0x8641
@..api_idx_0012_3.l7:
    cmp word [bp - 0x000e], byte 0   ; 0x8643
    jne short @..api_idx_0012_3.l8   ; 0x8647
    mov ax, word [data_8d12]         ; 0x8649
    shl ax, 1                        ; 0x864c
    mov si, ax                       ; 0x864e
    mov bx, word [data_0e12]         ; 0x8650
    mov ax, word [bx + si]           ; 0x8654
    jmp short @..api_idx_0012_3.l9   ; 0x8656
@..api_idx_0012_3.l8:
    mov ax, word [data_8d12]         ; 0x8658
    shl ax, 1                        ; 0x865b
    mov si, ax                       ; 0x865d
    mov bx, word [data_0e12]         ; 0x865f
    mov ax, word [bx + si + 0x1e0]   ; 0x8663
@..api_idx_0012_3.l9:
    mov word [bp - 0x000c], ax       ; 0x8667
    cmp ax, strict word 0            ; 0x866a
    jle short @..api_idx_0012_3.l10  ; 0x866d
    mov ax, 0                        ; 0x866f
    push ax                          ; 0x8672
    push word [bp - 0x000c]          ; 0x8673
    mov ax, word [data_830c]         ; 0x8676
    mov cx, 4                        ; 0x8679
    shl ax, cl                       ; 0x867c
    add ax, 0x8d14                   ; 0x867e
    push ax                          ; 0x8681
    call ds_dispatch_ec41            ; 0x8682
    add sp, byte 6                   ; 0x8685
    mov ax, 0                        ; 0x8688
    push ax                          ; 0x868b
    push word [bp - 0x000c]          ; 0x868c
    mov ax, word [data_830c]         ; 0x868f
    mov cx, 4                        ; 0x8692
    shl ax, cl                       ; 0x8695
    add ax, 0x5642                   ; 0x8697
    push ax                          ; 0x869a
    call ds_dispatch_ec41            ; 0x869b
    add sp, byte 6                   ; 0x869e
@..api_idx_0012_3.l10:
    push word [bp - 0x0010]          ; 0x86a1
    call loc_7242                    ; 0x86a4
    pop cx                           ; 0x86a7
@..api_idx_0012_3.l11:
    ret                              ; 0x86a8
math_loc_86a9:
    mov ax, 0                        ; 0x86a9
    call ds_dispatch_f40b            ; 0x86ac
    mov ax, 2                        ; 0x86af
    push ax                          ; 0x86b2
    mov ax, 0                        ; 0x86b3
    push ax                          ; 0x86b6
    mov ax, word [data_8d12]         ; 0x86b7
    shl ax, 1                        ; 0x86ba
    mov si, ax                       ; 0x86bc
    mov bx, word [data_0e12]         ; 0x86be
    push word [bx + si + 0x3c0]      ; 0x86c2
    call ds_dispatch_ed3a            ; 0x86c6
    add sp, byte 6                   ; 0x86c9
    push ax                          ; 0x86cc
    mov si, word [data_8d12]         ; 0x86cd
    mov bx, word [data_0e12]         ; 0x86d1
    mov al, byte [bx + si + 0xa50]   ; 0x86d5
    sub ah, ah                       ; 0x86d9
    mov cx, 6                        ; 0x86db
    imul cx                          ; 0x86de
    mov bx, ax                       ; 0x86e0
    cmp byte [bx - 0x7b59], 0        ; 0x86e2
    je short @..math_loc_86a9.l1     ; 0x86e7
    mov ax, 0                        ; 0x86e9
    jmp short @..math_loc_86a9.l2    ; 0x86ec
@..math_loc_86a9.l1:
    mov ax, 1                        ; 0x86ee
@..math_loc_86a9.l2:
    push ax                          ; 0x86f1
    call loc_8540                    ; 0x86f2
    add sp, byte 4                   ; 0x86f5
    ret                              ; 0x86f8
api_idx_0002_15:
    mov ax, 0xfffe                   ; 0x86f9
    call ds_dispatch_f40b            ; 0x86fc
    mov ax, 2                        ; 0x86ff
    push ax                          ; 0x8702
    mov ax, 0                        ; 0x8703
    push ax                          ; 0x8706
    mov ax, word [data_8d12]         ; 0x8707
    shl ax, 1                        ; 0x870a
    mov si, ax                       ; 0x870c
    mov bx, word [data_0e12]         ; 0x870e
    push word [bx + si + 0x3c0]      ; 0x8712
    call ds_dispatch_ed3a            ; 0x8716
    add sp, byte 6                   ; 0x8719
    mov word [bp - 0x0002], ax       ; 0x871c
    mov ax, 1                        ; 0x871f
    push ax                          ; 0x8722
    mov ax, 2                        ; 0x8723
    push ax                          ; 0x8726
    mov ax, word [data_8d12]         ; 0x8727
    shl ax, 1                        ; 0x872a
    mov si, ax                       ; 0x872c
    mov bx, word [data_0e12]         ; 0x872e
    push word [bx + si + 0x3c0]      ; 0x8732
    call ds_dispatch_ed3a            ; 0x8736
    add sp, byte 6                   ; 0x8739
    test ax, ax                      ; 0x873c
    jne short @..api_idx_0002_15.l1  ; 0x873e
    push word [bp - 0x0002]          ; 0x8740
    mov si, word [data_8d12]         ; 0x8743
    mov bx, word [data_0e12]         ; 0x8747
    mov al, byte [bx + si + 0xa50]   ; 0x874b
    sub ah, ah                       ; 0x874f
    push ax                          ; 0x8751
    mov ax, 0x5842                   ; 0x8752
    push ax                          ; 0x8755
    call ds_dispatch_ec74            ; 0x8756
    add sp, byte 4                   ; 0x8759
    push ax                          ; 0x875c
    call loc_8540                    ; 0x875d
    add sp, byte 4                   ; 0x8760
    jmp short @..api_idx_0002_15.l4  ; 0x8763
@..api_idx_0002_15.l1:
    push word [bp - 0x0002]          ; 0x8765
    mov bx, word [data_0e12]         ; 0x8768
    mov si, word [data_8d12]         ; 0x876c
    mov al, byte [bx + si + 0xa50]   ; 0x8770
    sub ah, ah                       ; 0x8774
    mov cx, 0x26                     ; 0x8776
    imul cx                          ; 0x8779
    mov bx, ax                       ; 0x877b
    cmp byte [bx - 0x7b00], 0        ; 0x877d
    jne short @..api_idx_0002_15.l2  ; 0x8782
    mov ax, 1                        ; 0x8784
    jmp short @..api_idx_0002_15.l3  ; 0x8787
@..api_idx_0002_15.l2:
    mov ax, 0                        ; 0x8789
@..api_idx_0002_15.l3:
    push ax                          ; 0x878c
    call loc_8540                    ; 0x878d
    add sp, byte 4                   ; 0x8790
@..api_idx_0002_15.l4:
    ret                              ; 0x8793
api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x8794
    call ds_dispatch_f40b            ; 0x8797
    mov ax, word [data_8d12]         ; 0x879a
    shl ax, 1                        ; 0x879d
    mov si, ax                       ; 0x879f
    mov bx, word [data_0e12]         ; 0x87a1
    mov ax, word [bx + si + 0x3c0]   ; 0x87a5
    mov word [bp - 0x0002], ax       ; 0x87a9
    mov ax, 8                        ; 0x87ac
    push ax                          ; 0x87af
    mov ax, 0                        ; 0x87b0
    push ax                          ; 0x87b3
    push word [bp - 0x0002]          ; 0x87b4
    call ds_dispatch_ed3a            ; 0x87b7
    add sp, byte 6                   ; 0x87ba
    mov word [bp - 0x0008], ax       ; 0x87bd
    mov ax, 4                        ; 0x87c0
    push ax                          ; 0x87c3
    mov ax, 8                        ; 0x87c4
    push ax                          ; 0x87c7
    push word [bp - 0x0002]          ; 0x87c8
    call ds_dispatch_ed3a            ; 0x87cb
    add sp, byte 6                   ; 0x87ce
    mov word [bp - 0x000a], ax       ; 0x87d1
    mov ax, 1                        ; 0x87d4
    push ax                          ; 0x87d7
    mov ax, 0xf                      ; 0x87d8
    push ax                          ; 0x87db
    push word [bp - 0x0002]          ; 0x87dc
    call ds_dispatch_ed3a            ; 0x87df
    add sp, byte 6                   ; 0x87e2
    mov word [bp - 0x000c], ax       ; 0x87e5
    mov word [bp - 0x0006], 0        ; 0x87e8
    mov word [bp - 0x0004], 0        ; 0x87ed
    jmp short @..api_idx_000c_2.l3   ; 0x87f2
@..api_idx_000c_2.l1:
    mov ax, word [bp - 0x0008]       ; 0x87f4
    add ax, word [bp - 0x0004]       ; 0x87f7
    push ax                          ; 0x87fa
    mov ax, word [data_830c]         ; 0x87fb
    mov cx, 4                        ; 0x87fe
    shl ax, cl                       ; 0x8801
    add ax, 0x8d14                   ; 0x8803
    push ax                          ; 0x8806
    call ds_dispatch_ec74            ; 0x8807
    add sp, byte 4                   ; 0x880a
    cmp ax, word [bp - 0x000c]       ; 0x880d
    je short @..api_idx_000c_2.l2    ; 0x8810
    inc word [bp - 0x0006]           ; 0x8812
@..api_idx_000c_2.l2:
    inc word [bp - 0x0004]           ; 0x8815
@..api_idx_000c_2.l3:
    mov ax, word [bp - 0x0004]       ; 0x8818
    cmp ax, word [bp - 0x000a]       ; 0x881b
    jl short @..api_idx_000c_2.l1    ; 0x881e
    mov ax, 1                        ; 0x8820
    push ax                          ; 0x8823
    mov ax, api_idx_0002             ; 0x8824
    push ax                          ; 0x8827
    push word [bp - 0x0002]          ; 0x8828
    call ds_dispatch_ed3a            ; 0x882b
    add sp, byte 6                   ; 0x882e
    push ax                          ; 0x8831
    mov bx, word [data_0e12]         ; 0x8832
    mov si, word [data_8d12]         ; 0x8836
    mov al, byte [bx + si + 0xa50]   ; 0x883a
    sub ah, ah                       ; 0x883e
    imul word [bp - 0x0006]          ; 0x8840
    shl si, 1                        ; 0x8843
    mov cx, word [bx + si]           ; 0x8845
    add ax, cx                       ; 0x8847
    push ax                          ; 0x8849
    call loc_6f14                    ; 0x884a
    add sp, byte 4                   ; 0x884d
    mov ax, 2                        ; 0x8850
    push ax                          ; 0x8853
    mov ax, 0xc                      ; 0x8854
    push ax                          ; 0x8857
    push word [bp - 0x0002]          ; 0x8858
    call ds_dispatch_ed3a            ; 0x885b
    add sp, byte 6                   ; 0x885e
    push ax                          ; 0x8861
    call loc_7242                    ; 0x8862
    pop cx                           ; 0x8865
    ret                              ; 0x8866
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
api_idx_0002_16:
    mov ax, 0xfffe                   ; 0x89d0
    call ds_dispatch_f40b            ; 0x89d3
    mov ax, word [bp + 0x6]          ; 0x89d6
    mov word [bp - 0x0002], ax       ; 0x89d9
    jmp short @..api_idx_0002_16.l2  ; 0x89dc
@..api_idx_0002_16.l1:
    mov ax, word [bp - 0x0002]       ; 0x89de
    mov cx, 8                        ; 0x89e1
    cwd                              ; 0x89e4
    idiv cx                          ; 0x89e5
    mov si, ax                       ; 0x89e7
    mov bx, word [bp + 0x4]          ; 0x89e9
    mov al, byte [bx + si]           ; 0x89ec
    cbw                              ; 0x89ee
    push ax                          ; 0x89ef
    mov ax, word [bp - 0x0002]       ; 0x89f0
    cwd                              ; 0x89f3
    idiv cx                          ; 0x89f4
    mov cx, dx                       ; 0x89f6
    mov dx, 1                        ; 0x89f8
    shl dx, cl                       ; 0x89fb
    mov cx, dx                       ; 0x89fd
    not cx                           ; 0x89ff
    pop ax                           ; 0x8a01
    and ax, cx                       ; 0x8a02
    mov byte [bx + si], al           ; 0x8a04
    inc word [bp - 0x0002]           ; 0x8a06
@..api_idx_0002_16.l2:
    mov ax, word [bp + 0x6]          ; 0x8a09
    inc ax                           ; 0x8a0c
    inc ax                           ; 0x8a0d
    cmp ax, word [bp - 0x0002]       ; 0x8a0e
    jg short @..api_idx_0002_16.l1   ; 0x8a11
    ret                              ; 0x8a13
api_idx_0002_17:
    mov ax, 0xfffe                   ; 0x8a14
    call ds_dispatch_f40b            ; 0x8a17
    mov ax, word [data_8f3e]         ; 0x8a1a
    mov cx, 6                        ; 0x8a1d
    shl ax, cl                       ; 0x8a20
    mov cx, word [data_8f40]         ; 0x8a22
    shl cx, 1                        ; 0x8a26
    shl cx, 1                        ; 0x8a28
    shl cx, 1                        ; 0x8a2a
    add ax, cx                       ; 0x8a2c
    add ax, word [data_8f42]         ; 0x8a2e
    mov word [bp - 0x0002], ax       ; 0x8a32
    mov ax, 6                        ; 0x8a35
    push ax                          ; 0x8a38
    push ax                          ; 0x8a39
    push word [bp - 0x0002]          ; 0x8a3a
    mov ax, word [data_0e14]         ; 0x8a3d
    add ax, 0x4b0                    ; 0x8a40
    push ax                          ; 0x8a43
    call ds_dispatch_eca4            ; 0x8a44
    add sp, byte 8                   ; 0x8a47
    push word [data_82ee]            ; 0x8a4a
    mov ax, 2                        ; 0x8a4e
    push ax                          ; 0x8a51
    push word [bp - 0x0002]          ; 0x8a52
    mov ax, word [data_0e14]         ; 0x8a55
    add ax, 0x7b0                    ; 0x8a58
    push ax                          ; 0x8a5b
    call ds_dispatch_eca4            ; 0x8a5c
    add sp, byte 8                   ; 0x8a5f
    call loc_676c                    ; 0x8a62
    mov ax, 0x7fc                    ; 0x8a65
    push ax                          ; 0x8a68
    call api_idx_0050                ; 0x8a69
    pop cx                           ; 0x8a6c
    mov ax, 4                        ; 0x8a6d
    push ax                          ; 0x8a70
    call ds_dispatch_b7e0            ; 0x8a71
    pop cx                           ; 0x8a74
    mov ax, 2                        ; 0x8a75
    push ax                          ; 0x8a78
    call api_idx_0006_2              ; 0x8a79
    pop cx                           ; 0x8a7c
    mov ax, 0x98                     ; 0x8a7d
    push ax                          ; 0x8a80
    mov ax, 0x13f                    ; 0x8a81
    push ax                          ; 0x8a84
    mov ax, 0x92                     ; 0x8a85
    push ax                          ; 0x8a88
    mov ax, 0                        ; 0x8a89
    push ax                          ; 0x8a8c
    call ds_dispatch_e8da            ; 0x8a8d
    add sp, byte 8                   ; 0x8a90
    push word [data_8f40]            ; 0x8a93
    push word [data_8f42]            ; 0x8a97
    push word [data_8f3e]            ; 0x8a9b
    mov ax, 1                        ; 0x8a9f
    push ax                          ; 0x8aa2
    push word [data_82ee]            ; 0x8aa3
    call api_idx_000a_4              ; 0x8aa7
    add sp, byte 0x0a                ; 0x8aaa
    mov ax, 0                        ; 0x8aad
    push ax                          ; 0x8ab0
    push ax                          ; 0x8ab1
    push ax                          ; 0x8ab2
    push ax                          ; 0x8ab3
    push word [data_8f40]            ; 0x8ab4
    push word [data_8f42]            ; 0x8ab8
    push word [data_8f3e]            ; 0x8abc
    mov ax, 5                        ; 0x8ac0
    push ax                          ; 0x8ac3
    push word [data_830c]            ; 0x8ac4
    call api_idx_0004_7              ; 0x8ac8
    add sp, byte 0x12                ; 0x8acb
    mov ax, 0                        ; 0x8ace
    push ax                          ; 0x8ad1
    mov ax, 6                        ; 0x8ad2
    push ax                          ; 0x8ad5
    push word [bp - 0x0002]          ; 0x8ad6
    mov ax, word [data_0e14]         ; 0x8ad9
    add ax, 0x4b0                    ; 0x8adc
    push ax                          ; 0x8adf
    call ds_dispatch_eca4            ; 0x8ae0
    add sp, byte 8                   ; 0x8ae3
    mov ax, 0                        ; 0x8ae6
    push ax                          ; 0x8ae9
    mov ax, 2                        ; 0x8aea
    push ax                          ; 0x8aed
    push word [bp - 0x0002]          ; 0x8aee
    mov ax, word [data_0e14]         ; 0x8af1
    add ax, 0x7b0                    ; 0x8af4
    push ax                          ; 0x8af7
    call ds_dispatch_eca4            ; 0x8af8
    add sp, byte 8                   ; 0x8afb
    mov ax, 0x12                     ; 0x8afe
    push ax                          ; 0x8b01
    call loc_6ac7                    ; 0x8b02
    pop cx                           ; 0x8b05
    call loc_676c                    ; 0x8b06
    mov ax, word [data_82ee]         ; 0x8b09
    shl ax, 1                        ; 0x8b0c
    add ax, strict word 8            ; 0x8b0e
    push ax                          ; 0x8b11
    mov cx, word [bp + 0x4]          ; 0x8b12
    shl cx, 1                        ; 0x8b15
    mov ax, word [data_0e12]         ; 0x8b17
    add ax, cx                       ; 0x8b1a
    add ax, 0x3c0                    ; 0x8b1c
    push ax                          ; 0x8b1f
    call api_idx_0002_16             ; 0x8b20
    add sp, byte 4                   ; 0x8b23
    mov ax, 0                        ; 0x8b26
    push ax                          ; 0x8b29
    push ax                          ; 0x8b2a
    push ax                          ; 0x8b2b
    mov ax, word [bp + 0x4]          ; 0x8b2c
    shl ax, 1                        ; 0x8b2f
    mov si, ax                       ; 0x8b31
    mov bx, word [data_0e12]         ; 0x8b33
    push word [bx + si + 0x3c0]      ; 0x8b37
    mov ax, 0                        ; 0x8b3b
    push ax                          ; 0x8b3e
    push ax                          ; 0x8b3f
    push word [bp + 0x4]             ; 0x8b40
    mov ax, 6                        ; 0x8b43
    push ax                          ; 0x8b46
    push word [data_830c]            ; 0x8b47
    call api_idx_0004_7              ; 0x8b4b
    add sp, byte 0x12                ; 0x8b4e
    ret                              ; 0x8b51
api_idx_0006_7:
    mov ax, 0xfffa                   ; 0x8b52
    call ds_dispatch_f40b            ; 0x8b55
    mov ax, word [bp + 0x4]          ; 0x8b58
    shl ax, 1                        ; 0x8b5b
    mov si, ax                       ; 0x8b5d
    mov bx, word [data_0e12]         ; 0x8b5f
    mov ax, word [bx + si + 0x3c0]   ; 0x8b63
    mov word [bp - 0x0002], ax       ; 0x8b67
    mov ax, 1                        ; 0x8b6a
    push ax                          ; 0x8b6d
    mov ax, api_idx_0002             ; 0x8b6e
    push ax                          ; 0x8b71
    push word [bp - 0x0002]          ; 0x8b72
    call ds_dispatch_ed3a            ; 0x8b75
    add sp, byte 6                   ; 0x8b78
    cmp ax, strict word 1            ; 0x8b7b
    jne short @..api_idx_0006_7.l1   ; 0x8b7e
    mov ax, 2                        ; 0x8b80
    push ax                          ; 0x8b83
    mov ax, 0xc                      ; 0x8b84
    push ax                          ; 0x8b87
    push word [bp - 0x0002]          ; 0x8b88
    call ds_dispatch_ed3a            ; 0x8b8b
    add sp, byte 6                   ; 0x8b8e
    cmp ax, word [data_82ee]         ; 0x8b91
    je short @..api_idx_0006_7.l1    ; 0x8b95
    mov ax, 0                        ; 0x8b97
    ret                              ; 0x8b9a
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
api_idx_000a_5:
    mov ax, 0xfff6                   ; 0x8c47
    call ds_dispatch_f40b            ; 0x8c4a
    mov ax, word [data_8f3e]         ; 0x8c4d
    mov cx, 6                        ; 0x8c50
    shl ax, cl                       ; 0x8c53
    mov cx, word [data_8f40]         ; 0x8c55
    shl cx, 1                        ; 0x8c59
    shl cx, 1                        ; 0x8c5b
    shl cx, 1                        ; 0x8c5d
    add ax, cx                       ; 0x8c5f
    add ax, word [data_8f42]         ; 0x8c61
    mov word [bp - 0x0002], ax       ; 0x8c65
    lea ax, word [bp - 0x0008]       ; 0x8c68
    push ax                          ; 0x8c6b
    lea ax, word [bp - 0x0006]       ; 0x8c6c
    push ax                          ; 0x8c6f
    push word [bp - 0x0002]          ; 0x8c70
    call loc_2f55                    ; 0x8c73
    add sp, byte 6                   ; 0x8c76
    mov word [bp - 0x000a], 0        ; 0x8c79
    mov ax, word [bp - 0x0006]       ; 0x8c7e
    cmp ax, strict word 5            ; 0x8c81
    je short @..api_idx_000a_5.l1    ; 0x8c84
    cmp ax, strict word 0xa          ; 0x8c86
    je short @..api_idx_000a_5.l1    ; 0x8c89
    cmp ax, strict word 0xb          ; 0x8c8b
    jne short @..api_idx_000a_5.l3   ; 0x8c8e
@..api_idx_000a_5.l1:
    mov ax, word [bp - 0x0008]       ; 0x8c90
    cmp ax, word [data_82ee]         ; 0x8c93
    jne short @..api_idx_000a_5.l3   ; 0x8c97
    cmp word [bp + 0x4], byte 0      ; 0x8c99
    je short @..api_idx_000a_5.l2    ; 0x8c9d
    mov word [bp - 0x000a], 2        ; 0x8c9f
@..api_idx_000a_5.l2:
    jmp short @..api_idx_000a_5.l4   ; 0x8ca4
@..api_idx_000a_5.l3:
    cmp word [bp + 0x4], byte 0      ; 0x8ca6
    je short @..api_idx_000a_5.l4    ; 0x8caa
    mov word [bp - 0x000a], 1        ; 0x8cac
    mov ax, 0x7fb                    ; 0x8cb1
    push ax                          ; 0x8cb4
    call api_idx_0050                ; 0x8cb5
    pop cx                           ; 0x8cb8
    push word [data_905a]            ; 0x8cb9
    call api_idx_0006_2              ; 0x8cbd
    pop cx                           ; 0x8cc0
@..api_idx_000a_5.l4:
    mov ax, 0x98                     ; 0x8cc1
    push ax                          ; 0x8cc4
    mov ax, 0x13f                    ; 0x8cc5
    push ax                          ; 0x8cc8
    mov ax, 0x92                     ; 0x8cc9
    push ax                          ; 0x8ccc
    mov ax, 0                        ; 0x8ccd
    push ax                          ; 0x8cd0
    call ds_dispatch_e8da            ; 0x8cd1
    add sp, byte 8                   ; 0x8cd4
    mov bx, word [data_0e12]         ; 0x8cd7
    mov si, word [data_8f3e]         ; 0x8cdb
    mov al, byte [bx + si + 0xb40]   ; 0x8cdf
    sub ah, ah                       ; 0x8ce3
    mov word [bp - 0x0004], ax       ; 0x8ce5
@..api_idx_000a_5.l5:
    push word [bp - 0x0004]          ; 0x8ce8
    push word [data_8f3e]            ; 0x8ceb
    push word [data_8f40]            ; 0x8cef
    push word [data_8f42]            ; 0x8cf3
    call api_idx_0002_11             ; 0x8cf7
    add sp, byte 8                   ; 0x8cfa
    mov word [bp - 0x0004], ax       ; 0x8cfd
    cmp ax, strict word 0xffff       ; 0x8d00
    jne short @..api_idx_000a_5.l6   ; 0x8d03
    jmp near @..api_idx_000a_5.l10   ; 0x8d05
@..api_idx_000a_5.l6:
    mov bx, word [data_0e12]         ; 0x8d08
    mov si, ax                       ; 0x8d0c
    cmp byte [bx + si + 0x5a0], 7    ; 0x8d0e
    jne short @..api_idx_000a_5.l7   ; 0x8d13
    mov ax, 2                        ; 0x8d15
    push ax                          ; 0x8d18
    mov ax, word [data_82ee]         ; 0x8d19
    shl ax, 1                        ; 0x8d1c
    add ax, strict word 8            ; 0x8d1e
    push ax                          ; 0x8d21
    shl si, 1                        ; 0x8d22
    push word [bx + si + 0x3c0]      ; 0x8d24
    call ds_dispatch_ed3a            ; 0x8d28
    add sp, byte 6                   ; 0x8d2b
    cmp ax, strict word 2            ; 0x8d2e
    jne short @..api_idx_000a_5.l7   ; 0x8d31
    push word [bp - 0x0004]          ; 0x8d33
    call api_idx_0002_17             ; 0x8d36
    pop cx                           ; 0x8d39
    ret                              ; 0x8d3a
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
api_idx_0002_18:
    mov ax, 0xfffe                   ; 0x8de9
    call ds_dispatch_f40b            ; 0x8dec
    mov ax, word [bp + 0x4]          ; 0x8def
    shl ax, 1                        ; 0x8df2
    mov si, ax                       ; 0x8df4
    mov bx, word [data_0e12]         ; 0x8df6
    mov ax, word [bx + si + 0x3c0]   ; 0x8dfa
    mov word [bp - 0x0002], ax       ; 0x8dfe
    mov ax, 1                        ; 0x8e01
    push ax                          ; 0x8e04
    mov ax, api_idx_0002             ; 0x8e05
    push ax                          ; 0x8e08
    push word [bp - 0x0002]          ; 0x8e09
    call ds_dispatch_ed3a            ; 0x8e0c
    add sp, byte 6                   ; 0x8e0f
    cmp ax, strict word 1            ; 0x8e12
    jne short @..api_idx_0002_18.l1  ; 0x8e15
    mov ax, 2                        ; 0x8e17
    push ax                          ; 0x8e1a
    mov ax, 0xc                      ; 0x8e1b
    push ax                          ; 0x8e1e
    push word [bp - 0x0002]          ; 0x8e1f
    call ds_dispatch_ed3a            ; 0x8e22
    add sp, byte 6                   ; 0x8e25
    cmp ax, word [data_82ee]         ; 0x8e28
    je short @..api_idx_0002_18.l1   ; 0x8e2c
    mov ax, 0                        ; 0x8e2e
    ret                              ; 0x8e31
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
api_idx_0002_19:
    mov ax, 0xfffe                   ; 0x8e6a
    call ds_dispatch_f40b            ; 0x8e6d
    mov bx, word [data_0e12]         ; 0x8e70
    mov si, word [data_8f3e]         ; 0x8e74
    mov al, byte [bx + si + 0xb40]   ; 0x8e78
    sub ah, ah                       ; 0x8e7c
    mov word [bp - 0x0002], ax       ; 0x8e7e
@..api_idx_0002_19.l1:
    push word [bp - 0x0002]          ; 0x8e81
    push word [data_8f3e]            ; 0x8e84
    push word [data_8f40]            ; 0x8e88
    push word [data_8f42]            ; 0x8e8c
    call api_idx_0002_11             ; 0x8e90
    add sp, byte 8                   ; 0x8e93
    mov word [bp - 0x0002], ax       ; 0x8e96
    cmp ax, strict word 0xffff       ; 0x8e99
    jne short @..api_idx_0002_19.l2  ; 0x8e9c
    jmp near @..api_idx_0002_19.l6   ; 0x8e9e
@..api_idx_0002_19.l2:
    mov bx, word [data_0e12]         ; 0x8ea1
    mov si, ax                       ; 0x8ea5
    cmp byte [bx + si + 0x5a0], 3    ; 0x8ea7
    jne short @..api_idx_0002_19.l3  ; 0x8eac
    push ax                          ; 0x8eae
    call api_idx_0002_18             ; 0x8eaf
    pop cx                           ; 0x8eb2
    cmp ax, strict word 1            ; 0x8eb3
    jne short @..api_idx_0002_19.l3  ; 0x8eb6
    ret                              ; 0x8eb8
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
api_idx_0002_20:
    mov ax, 0xfffe                   ; 0x8f1a
    call ds_dispatch_f40b            ; 0x8f1d
    mov bx, word [data_0e12]         ; 0x8f20
    mov si, word [data_8f3e]         ; 0x8f24
    mov al, byte [bx + si + 0xb40]   ; 0x8f28
    sub ah, ah                       ; 0x8f2c
    mov word [bp - 0x0002], ax       ; 0x8f2e
@..api_idx_0002_20.l1:
    push word [bp - 0x0002]          ; 0x8f31
    push word [data_8f3e]            ; 0x8f34
    push word [data_8f40]            ; 0x8f38
    push word [data_8f42]            ; 0x8f3c
    call api_idx_0002_11             ; 0x8f40
    add sp, byte 8                   ; 0x8f43
    mov word [bp - 0x0002], ax       ; 0x8f46
    cmp ax, strict word 0xffff       ; 0x8f49
    je short @..api_idx_0002_20.l5   ; 0x8f4c
    mov bx, word [data_0e12]         ; 0x8f4e
    mov si, ax                       ; 0x8f52
    cmp byte [bx + si + 0x5a0], 0xf  ; 0x8f54
    jne short @..api_idx_0002_20.l4  ; 0x8f59
    shl ax, 1                        ; 0x8f5b
    mov si, ax                       ; 0x8f5d
    cmp word [bx + si + 0x1e0], byte 2 ; 0x8f5f
    je short @..api_idx_0002_20.l2   ; 0x8f64
    mov ax, word [data_82ee]         ; 0x8f66
    mov cx, 2                        ; 0x8f69
    cwd                              ; 0x8f6c
    idiv cx                          ; 0x8f6d
    mov ax, dx                       ; 0x8f6f
    cmp ax, word [bx + si + 0x1e0]   ; 0x8f71
    jne short @..api_idx_0002_20.l4  ; 0x8f75
@..api_idx_0002_20.l2:
    cmp word [bx + si + 0x1e0], byte 2 ; 0x8f77
    jne short @..api_idx_0002_20.l3  ; 0x8f7c
    mov ax, 8                        ; 0x8f7e
    push ax                          ; 0x8f81
    call ds_dispatch_b7e0            ; 0x8f82
    pop cx                           ; 0x8f85
@..api_idx_0002_20.l3:
    push word [bp - 0x0002]          ; 0x8f86
    call api_idx_0004_10             ; 0x8f89
    pop cx                           ; 0x8f8c
    ret                              ; 0x8f8d
@..api_idx_0002_20.l4:
    inc word [bp - 0x0002]           ; 0x8f8e
    jmp short @..api_idx_0002_20.l1  ; 0x8f91
@..api_idx_0002_20.l5:
    ret                              ; 0x8f93
api_idx_0002_21:
    mov ax, 0xfffe                   ; 0x8f94
    call ds_dispatch_f40b            ; 0x8f97
    mov word [bp - 0x0002], 0        ; 0x8f9a
@..api_idx_0002_21.l1:
    mov ax, word [bp - 0x0002]       ; 0x8f9f
    shl ax, 1                        ; 0x8fa2
    shl ax, 1                        ; 0x8fa4
    mov bx, ax                       ; 0x8fa6
    cmp byte [bx - 0x7590], 0xff     ; 0x8fa8
    je short @..api_idx_0002_21.l2   ; 0x8fad
    mov al, byte [bx - 0x7590]       ; 0x8faf
    cbw                              ; 0x8fb3
    shl ax, 1                        ; 0x8fb4
    mov bx, ax                       ; 0x8fb6
    cmp word [bx - 0x642e], byte 0   ; 0x8fb8
    je short @..api_idx_0002_21.l6   ; 0x8fbd
@..api_idx_0002_21.l2:
    mov ax, word [bp - 0x0002]       ; 0x8fbf
    shl ax, 1                        ; 0x8fc2
    shl ax, 1                        ; 0x8fc4
    mov bx, ax                       ; 0x8fc6
    mov al, byte [bx - 0x7592]       ; 0x8fc8
    sub ah, ah                       ; 0x8fcc
    cmp ax, word [bp + 0x4]          ; 0x8fce
    jne short @..api_idx_0002_21.l3  ; 0x8fd1
    mov al, byte [bx - 0x7591]       ; 0x8fd3
    sub ah, ah                       ; 0x8fd7
    cmp ax, word [bp + 0x6]          ; 0x8fd9
    je short @..api_idx_0002_21.l4   ; 0x8fdc
@..api_idx_0002_21.l3:
    mov al, byte [bx - 0x7591]       ; 0x8fde
    sub ah, ah                       ; 0x8fe2
    cmp ax, word [bp + 0x4]          ; 0x8fe4
    jne short @..api_idx_0002_21.l6  ; 0x8fe7
    mov al, byte [bx - 0x7592]       ; 0x8fe9
    sub ah, ah                       ; 0x8fed
    cmp ax, word [bp + 0x6]          ; 0x8fef
    jne short @..api_idx_0002_21.l6  ; 0x8ff2
@..api_idx_0002_21.l4:
    mov ax, word [bp - 0x0002]       ; 0x8ff4
    mov cx, word [data_9be6]         ; 0x8ff7
    shl cx, 1                        ; 0x8ffb
    mov bx, cx                       ; 0x8ffd
    mov word [bx - 0x6418], ax       ; 0x8fff
    inc word [data_9be6]             ; 0x9003
    mov ax, word [data_9be6]         ; 0x9007
    cmp ax, strict word 0xc          ; 0x900a
    jl short @..api_idx_0002_21.l5   ; 0x900d
    mov ax, 0                        ; 0x900f
    ret                              ; 0x9012
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
api_idx_0048:
    mov ax, 0xffb8                   ; 0x9029
    call ds_dispatch_f40b            ; 0x902c
    push word [bp + 0x6]             ; 0x902f
    push word [bp + 0x4]             ; 0x9032
    call api_idx_0002_21             ; 0x9035
    add sp, byte 4                   ; 0x9038
    test ax, ax                      ; 0x903b
    je short @..api_idx_0048.l1      ; 0x903d
    mov ax, 1                        ; 0x903f
    ret                              ; 0x9042
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
api_idx_0006_8:
    mov ax, 0xfffa                   ; 0x920f
    call ds_dispatch_f40b            ; 0x9212
    mov ax, 0                        ; 0x9215
    push ax                          ; 0x9218
    mov ax, 0x14                     ; 0x9219
    push ax                          ; 0x921c
    mov ax, 0x9bd2                   ; 0x921d
    push ax                          ; 0x9220
    call ds_dispatch_f306            ; 0x9221
    add sp, byte 6                   ; 0x9224
    mov word [bp - 0x0002], 0        ; 0x9227
@..api_idx_0006_8.l1:
    mov ax, 6                        ; 0x922c
    imul word [bp - 0x0002]          ; 0x922f
    mov bx, ax                       ; 0x9232
    cmp byte [bx - 0x7b57], 0xff     ; 0x9234
    je short @..api_idx_0006_8.l2    ; 0x9239
    mov ax, word [bp - 0x0002]       ; 0x923b
    add ax, strict word 0xc          ; 0x923e
    push ax                          ; 0x9241
    mov ax, 0x26                     ; 0x9242
    imul word [bp + 0x4]             ; 0x9245
    add ax, 0x850a                   ; 0x9248
    push ax                          ; 0x924b
    call ds_dispatch_ec74            ; 0x924c
    add sp, byte 4                   ; 0x924f
    test ax, ax                      ; 0x9252
    je short @..api_idx_0006_8.l2    ; 0x9254
    mov ax, 6                        ; 0x9256
    imul word [bp - 0x0002]          ; 0x9259
    mov bx, ax                       ; 0x925c
    mov al, byte [bx - 0x7b57]       ; 0x925e
    cbw                              ; 0x9262
    shl ax, 1                        ; 0x9263
    mov bx, ax                       ; 0x9265
    mov word [bx - 0x642e], 1        ; 0x9267
@..api_idx_0006_8.l2:
    inc word [bp - 0x0002]           ; 0x926d
    mov ax, word [bp - 0x0002]       ; 0x9270
    cmp ax, strict word 0xb          ; 0x9273
    jl short @..api_idx_0006_8.l1    ; 0x9276
    mov ax, api_idx_0002             ; 0x9278
    push ax                          ; 0x927b
    mov ax, 0x26                     ; 0x927c
    imul word [bp + 0x4]             ; 0x927f
    add ax, 0x8506                   ; 0x9282
    push ax                          ; 0x9285
    call ds_dispatch_ec74            ; 0x9286
    add sp, byte 4                   ; 0x9289
    test ax, ax                      ; 0x928c
    je short @..api_idx_0006_8.l3    ; 0x928e
    mov word [data_9bdc], 1          ; 0x9290
@..api_idx_0006_8.l3:
    mov byte [data_8aac], 6          ; 0x9296
    mov ax, 0xd                      ; 0x929b
    push ax                          ; 0x929e
    mov ax, 0x26                     ; 0x929f
    imul word [bp + 0x4]             ; 0x92a2
    add ax, 0x8506                   ; 0x92a5
    push ax                          ; 0x92a8
    call ds_dispatch_ec74            ; 0x92a9
    add sp, byte 4                   ; 0x92ac
    test ax, ax                      ; 0x92af
    je short @..api_idx_0006_8.l4    ; 0x92b1
    mov word [data_9bde], 1          ; 0x92b3
@..api_idx_0006_8.l4:
    mov word [bp - 0x0006], 1        ; 0x92b9
    mov word [bp - 0x0002], 0        ; 0x92be
@..api_idx_0006_8.l5:
    mov ax, word [bp - 0x0002]       ; 0x92c3
    shl ax, 1                        ; 0x92c6
    shl ax, 1                        ; 0x92c8
    mov bx, ax                       ; 0x92ca
    mov al, byte [bx - 0x7592]       ; 0x92cc
    sub ah, ah                       ; 0x92d0
    cmp ax, word [bp + 0x8]          ; 0x92d2
    je short @..api_idx_0006_8.l6    ; 0x92d5
    mov al, byte [bx - 0x7591]       ; 0x92d7
    sub ah, ah                       ; 0x92db
    cmp ax, word [bp + 0x8]          ; 0x92dd
    jne short @..api_idx_0006_8.l8   ; 0x92e0
@..api_idx_0006_8.l6:
    cmp byte [bx - 0x7590], 0xff     ; 0x92e2
    je short @..api_idx_0006_8.l7    ; 0x92e7
    mov al, byte [bx - 0x7590]       ; 0x92e9
    cbw                              ; 0x92ed
    shl ax, 1                        ; 0x92ee
    mov bx, ax                       ; 0x92f0
    cmp word [bx - 0x642e], byte 1   ; 0x92f2
    jne short @..api_idx_0006_8.l8   ; 0x92f7
@..api_idx_0006_8.l7:
    mov word [bp - 0x0006], 0        ; 0x92f9
@..api_idx_0006_8.l8:
    inc word [bp - 0x0002]           ; 0x92fe
    mov ax, word [bp - 0x0002]       ; 0x9301
    cmp ax, strict word 0x20         ; 0x9304
    jl short @..api_idx_0006_8.l5    ; 0x9307
    cmp word [bp - 0x0006], byte 0   ; 0x9309
    je short @..api_idx_0006_8.l9    ; 0x930d
    mov ax, 0                        ; 0x930f
    ret                              ; 0x9312
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
api_idx_0002_22:
    mov ax, 0xfffe                   ; 0x93ab
    call ds_dispatch_f40b            ; 0x93ae
    mov word [bp - 0x0002], 0        ; 0x93b1
@..api_idx_0002_22.l1:
    mov ax, 0xf                      ; 0x93b6
    imul word [bp + 0x4]             ; 0x93b9
    push ax                          ; 0x93bc
    mov ax, 3                        ; 0x93bd
    imul word [bp - 0x0002]          ; 0x93c0
    mov cx, ax                       ; 0x93c3
    pop ax                           ; 0x93c5
    add ax, cx                       ; 0x93c6
    mov bx, ax                       ; 0x93c8
    mov al, byte [bx - 0x77d4]       ; 0x93ca
    cbw                              ; 0x93ce
    cmp ax, word [bp + 0x6]          ; 0x93cf
    jne short @..api_idx_0002_22.l2  ; 0x93d2
    mov al, byte [bx - 0x77d3]       ; 0x93d4
    cbw                              ; 0x93d8
    cmp ax, word [bp + 0x8]          ; 0x93d9
    jne short @..api_idx_0002_22.l2  ; 0x93dc
    mov al, byte [bx - 0x77d2]       ; 0x93de
    cbw                              ; 0x93e2
    cmp ax, word [bp + 0xa]          ; 0x93e3
    jne short @..api_idx_0002_22.l2  ; 0x93e6
    ret                              ; 0x93e8
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
math_loc_9448:
    mov ax, 0                        ; 0x9448
    call ds_dispatch_f40b            ; 0x944b
    mov ax, 0x26                     ; 0x944e
    imul word [bp + 0x4]             ; 0x9451
    mov bx, ax                       ; 0x9454
    mov al, byte [bx - 0x7b14]       ; 0x9456
    sub ah, ah                       ; 0x945a
    cmp ax, word [bp + 0x6]          ; 0x945c
    jne short @..math_loc_9448.l1    ; 0x945f
    mov ax, 1                        ; 0x9461
    jmp short @..math_loc_9448.l2    ; 0x9464
@..math_loc_9448.l1:
    mov ax, 0                        ; 0x9466
@..math_loc_9448.l2:
    ret                              ; 0x9469
math_loc_946a:
    mov ax, 0                        ; 0x946a
    call ds_dispatch_f40b            ; 0x946d
    mov ax, 0x26                     ; 0x9470
    imul word [bp + 0x4]             ; 0x9473
    mov bx, ax                       ; 0x9476
    mov byte [bx - 0x7b16], 3        ; 0x9478
    mov al, byte [bx - 0x7b15]       ; 0x947d
    sub ah, ah                       ; 0x9481
    push ax                          ; 0x9483
    mov al, byte [bx - 0x7b14]       ; 0x9484
    sub ah, ah                       ; 0x9488
    push ax                          ; 0x948a
    push word [bp + 0x4]             ; 0x948b
    call api_idx_0006_8              ; 0x948e
    add sp, byte 6                   ; 0x9491
    test ax, ax                      ; 0x9494
    jne short @..math_loc_946a.l1    ; 0x9496
    mov ax, 0x26                     ; 0x9498
    imul word [bp + 0x4]             ; 0x949b
    mov bx, ax                       ; 0x949e
    mov byte [bx - 0x7b16], 0        ; 0x94a0
@..math_loc_946a.l1:
    ret                              ; 0x94a5
math_loc_94a6:
    mov ax, 0                        ; 0x94a6
    call ds_dispatch_f40b            ; 0x94a9
    mov ax, 3                        ; 0x94ac
    push ax                          ; 0x94af
    call ds_dispatch_b7a9            ; 0x94b0
    pop cx                           ; 0x94b3
    test ax, ax                      ; 0x94b4
    je short @..math_loc_94a6.l1     ; 0x94b6
    mov ax, 0x26                     ; 0x94b8
    imul word [bp + 0x4]             ; 0x94bb
    mov bx, ax                       ; 0x94be
    mov al, byte [bx - 0x7b00]       ; 0x94c0
    cbw                              ; 0x94c4
    push ax                          ; 0x94c5
    mov al, byte [bx - 0x7aff]       ; 0x94c6
    cbw                              ; 0x94ca
    mov cx, 2                        ; 0x94cb
    cwd                              ; 0x94ce
    idiv cx                          ; 0x94cf
    mov cx, ax                       ; 0x94d1
    pop ax                           ; 0x94d3
    cmp ax, cx                       ; 0x94d4
    jge short @..math_loc_94a6.l1    ; 0x94d6
    mov al, byte [bx - 0x7b17]       ; 0x94d8
    mov byte [bx - 0x7b15], al       ; 0x94dc
    push word [bp + 0x4]             ; 0x94e0
    call math_loc_946a               ; 0x94e3
    pop cx                           ; 0x94e6
    mov ax, 1                        ; 0x94e7
    ret                              ; 0x94ea
@..math_loc_94a6.l1:
    mov ax, 0                        ; 0x94eb
    ret                              ; 0x94ee
api_idx_003a:
    mov ax, 0xffc6                   ; 0x94ef
    call ds_dispatch_f40b            ; 0x94f2
    mov ax, 0                        ; 0x94f5
    push ax                          ; 0x94f8
    mov ax, 0x34                     ; 0x94f9
    push ax                          ; 0x94fc
    lea ax, word [bp - 0x003a]       ; 0x94fd
    push ax                          ; 0x9500
    call ds_dispatch_f306            ; 0x9501
    add sp, byte 6                   ; 0x9504
    mov word [bp - 0x003a], 1        ; 0x9507
    mov word [bp - 0x0038], 1        ; 0x950c
    mov word [bp - 0x0036], 1        ; 0x9511
    mov word [bp - 0x0030], 1        ; 0x9516
    mov word [bp - 0x002c], 1        ; 0x951b
    mov word [bp - 0x0002], 0        ; 0x9520
@..api_idx_003a.l1:
    mov ax, word [bp - 0x0002]       ; 0x9525
    shl ax, 1                        ; 0x9528
    shl ax, 1                        ; 0x952a
    mov bx, ax                       ; 0x952c
    cmp byte [bx - 0x7688], 0x1b     ; 0x952e
    jne short @..api_idx_003a.l2     ; 0x9533
    mov byte [bx - 0x7688], 8        ; 0x9535
@..api_idx_003a.l2:
    push word [bp - 0x0002]          ; 0x953a
    mov ax, 0x26                     ; 0x953d
    imul word [bp + 0x4]             ; 0x9540
    add ax, 0x8506                   ; 0x9543
    push ax                          ; 0x9546
    call ds_dispatch_ec74            ; 0x9547
    add sp, byte 4                   ; 0x954a
    test ax, ax                      ; 0x954d
    je short @..api_idx_003a.l3      ; 0x954f
    mov ax, word [bp - 0x0002]       ; 0x9551
    shl ax, 1                        ; 0x9554
    shl ax, 1                        ; 0x9556
    mov bx, ax                       ; 0x9558
    mov al, byte [bx - 0x7688]       ; 0x955a
    sub ah, ah                       ; 0x955e
    shl ax, 1                        ; 0x9560
    mov bx, ax                       ; 0x9562
    add bx, bp                       ; 0x9564
    mov word [bx - 0x003a], 1        ; 0x9566
@..api_idx_003a.l3:
    inc word [bp - 0x0002]           ; 0x956b
    mov ax, word [bp - 0x0002]       ; 0x956e
    cmp ax, strict word 0x1a         ; 0x9571
    jl short @..api_idx_003a.l1      ; 0x9574
    mov word [bp - 0x0002], 0        ; 0x9576
@..api_idx_003a.l4:
    push word [bp - 0x0002]          ; 0x957b
    mov ax, 0x26                     ; 0x957e
    imul word [bp + 0x4]             ; 0x9581
    add ax, 0x8506                   ; 0x9584
    push ax                          ; 0x9587
    call ds_dispatch_ec74            ; 0x9588
    add sp, byte 4                   ; 0x958b
    test ax, ax                      ; 0x958e
    je short @..api_idx_003a.l5      ; 0x9590
    mov ax, word [bp - 0x0002]       ; 0x9592
    shl ax, 1                        ; 0x9595
    mov bx, ax                       ; 0x9597
    add bx, bp                       ; 0x9599
    mov word [bx - 0x003a], 2        ; 0x959b
@..api_idx_003a.l5:
    inc word [bp - 0x0002]           ; 0x95a0
    mov ax, word [bp - 0x0002]       ; 0x95a3
    cmp ax, strict word 0x1a         ; 0x95a6
    jl short @..api_idx_003a.l4      ; 0x95a9
    push word [bp + 0x4]             ; 0x95ab
    call math_loc_94a6               ; 0x95ae
    pop cx                           ; 0x95b1
    test ax, ax                      ; 0x95b2
    je short @..api_idx_003a.l6      ; 0x95b4
    ret                              ; 0x95b6
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
math_loc_9658:
    mov ax, 0                        ; 0x9658
    call ds_dispatch_f40b            ; 0x965b
    mov ax, 0x64                     ; 0x965e
    push ax                          ; 0x9661
    mov ax, 0xff9c                   ; 0x9662
    push ax                          ; 0x9665
    mov ax, 0x26                     ; 0x9666
    imul word [bp + 0x4]             ; 0x9669
    mov bx, ax                       ; 0x966c
    mov al, byte [bx - 0x7b18]       ; 0x966e
    sub ah, ah                       ; 0x9672
    mov cx, 0xc                      ; 0x9674
    imul cx                          ; 0x9677
    push ax                          ; 0x9679
    mov ax, 0x26                     ; 0x967a
    imul word [bp + 0x6]             ; 0x967d
    mov bx, ax                       ; 0x9680
    mov al, byte [bx - 0x7b18]       ; 0x9682
    sub ah, ah                       ; 0x9686
    mov cx, ax                       ; 0x9688
    pop ax                           ; 0x968a
    add ax, cx                       ; 0x968b
    mov bx, ax                       ; 0x968d
    mov al, byte [bx - 0x7622]       ; 0x968f
    cbw                              ; 0x9693
    add ax, word [bp + 0x8]          ; 0x9694
    push ax                          ; 0x9697
    call ds_dispatch_b7c2            ; 0x9698
    add sp, byte 6                   ; 0x969b
    push ax                          ; 0x969e
    mov ax, 0x26                     ; 0x969f
    imul word [bp + 0x4]             ; 0x96a2
    mov bx, ax                       ; 0x96a5
    mov al, byte [bx - 0x7b18]       ; 0x96a7
    sub ah, ah                       ; 0x96ab
    mov cx, 0xc                      ; 0x96ad
    imul cx                          ; 0x96b0
    mov cx, ax                       ; 0x96b2
    mov ax, 0x26                     ; 0x96b4
    imul word [bp + 0x6]             ; 0x96b7
    mov bx, ax                       ; 0x96ba
    mov al, byte [bx - 0x7b18]       ; 0x96bc
    sub ah, ah                       ; 0x96c0
    mov dx, ax                       ; 0x96c2
    add cx, ax                       ; 0x96c4
    mov bx, cx                       ; 0x96c6
    pop ax                           ; 0x96c8
    mov byte [bx - 0x7622], al       ; 0x96c9
    ret                              ; 0x96cd
api_idx_0004_15:
    mov ax, 0xfffc                   ; 0x96ce
    call ds_dispatch_f40b            ; 0x96d1
    mov ax, 0x26                     ; 0x96d4
    imul word [bp + 0x4]             ; 0x96d7
    mov bx, ax                       ; 0x96da
    mov al, byte [bx - 0x7b15]       ; 0x96dc
    sub ah, ah                       ; 0x96e0
    push ax                          ; 0x96e2
    push word [bp + 0x4]             ; 0x96e3
    call math_loc_9448               ; 0x96e6
    add sp, byte 4                   ; 0x96e9
    test ax, ax                      ; 0x96ec
    je short @..api_idx_0004_15.l1   ; 0x96ee
    mov ax, 0x26                     ; 0x96f0
    imul word [bp + 0x4]             ; 0x96f3
    mov bx, ax                       ; 0x96f6
    mov al, byte [bx - 0x7b15]       ; 0x96f8
    sub ah, ah                       ; 0x96fc
    push ax                          ; 0x96fe
    add bx, strict word 0x8506       ; 0x96ff
    mov ax, bx                       ; 0x9703
    push ax                          ; 0x9705
    call ds_dispatch_ec74            ; 0x9706
    add sp, byte 4                   ; 0x9709
    test ax, ax                      ; 0x970c
    jne short @..api_idx_0004_15.l1  ; 0x970e
    mov ax, 0x26                     ; 0x9710
    imul word [bp + 0x4]             ; 0x9713
    mov bx, ax                       ; 0x9716
    mov al, byte [bx - 0x7b15]       ; 0x9718
    sub ah, ah                       ; 0x971c
    push ax                          ; 0x971e
    mov ax, 6                        ; 0x971f
    push ax                          ; 0x9722
    mov al, byte [bx - 0x7b15]       ; 0x9723
    sub ah, ah                       ; 0x9727
    push ax                          ; 0x9729
    push word [bp + 0x4]             ; 0x972a
    call api_idx_0002_22             ; 0x972d
    add sp, byte 8                   ; 0x9730
    mov ax, 0x26                     ; 0x9733
    imul word [bp + 0x4]             ; 0x9736
    mov bx, ax                       ; 0x9739
    mov byte [bx - 0x7b16], 2        ; 0x973b
    mov byte [bx - 0x7b13], 0        ; 0x9740
    ret                              ; 0x9745
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
api_idx_0002_23:
    mov ax, 0xfffe                   ; 0x98cc
    call ds_dispatch_f40b            ; 0x98cf
    mov ax, 0x26                     ; 0x98d2
    imul word [bp + 0x4]             ; 0x98d5
    mov bx, ax                       ; 0x98d8
    mov al, byte [bx - 0x7b15]       ; 0x98da
    sub ah, ah                       ; 0x98de
    mov word [bp - 0x0002], ax       ; 0x98e0
    shl ax, 1                        ; 0x98e3
    shl ax, 1                        ; 0x98e5
    mov bx, ax                       ; 0x98e7
    cmp byte [bx - 0x7689], 0xff     ; 0x98e9
    je short @..api_idx_0002_23.l1   ; 0x98ee
    mov ax, 4                        ; 0x98f0
    push ax                          ; 0x98f3
    call ds_dispatch_b7a9            ; 0x98f4
    pop cx                           ; 0x98f7
    test ax, ax                      ; 0x98f8
    jne short @..api_idx_0002_23.l1  ; 0x98fa
    mov ax, 1                        ; 0x98fc
    push ax                          ; 0x98ff
    mov ax, word [bp - 0x0002]       ; 0x9900
    shl ax, 1                        ; 0x9903
    shl ax, 1                        ; 0x9905
    mov bx, ax                       ; 0x9907
    mov al, byte [bx - 0x7689]       ; 0x9909
    cbw                              ; 0x990d
    push ax                          ; 0x990e
    mov ax, 0x26                     ; 0x990f
    imul word [bp + 0x4]             ; 0x9912
    add ax, 0x8504                   ; 0x9915
    push ax                          ; 0x9918
    call ds_dispatch_ec41            ; 0x9919
    add sp, byte 6                   ; 0x991c
@..api_idx_0002_23.l1:
    ret                              ; 0x991f
api_idx_0002_24:
    mov ax, 0xfffe                   ; 0x9920
    call ds_dispatch_f40b            ; 0x9923
    mov al, byte [bp + 0x4]          ; 0x9926
    push ax                          ; 0x9929
    mov ax, 6                        ; 0x992a
    imul word [bp + 0x8]             ; 0x992d
    mov bx, ax                       ; 0x9930
    pop ax                           ; 0x9932
    mov byte [bx - 0x7b5a], al       ; 0x9933
    mov byte [bx - 0x7b59], 0        ; 0x9937
    mov ax, 1                        ; 0x993c
    push ax                          ; 0x993f
    push word [bp + 0x8]             ; 0x9940
    mov ax, 0x26                     ; 0x9943
    imul word [bp + 0x4]             ; 0x9946
    add ax, 0x8502                   ; 0x9949
    push ax                          ; 0x994c
    call ds_dispatch_ec41            ; 0x994d
    add sp, byte 6                   ; 0x9950
    mov ax, 1                        ; 0x9953
    push ax                          ; 0x9956
    push word [bp + 0x8]             ; 0x9957
    mov ax, 0x26                     ; 0x995a
    imul word [bp + 0x4]             ; 0x995d
    add ax, 0x850a                   ; 0x9960
    push ax                          ; 0x9963
    call ds_dispatch_ec41            ; 0x9964
    add sp, byte 6                   ; 0x9967
    mov word [bp - 0x0002], 0        ; 0x996a
@..api_idx_0002_24.l1:
    mov ax, 0                        ; 0x996f
    push ax                          ; 0x9972
    push word [bp + 0x8]             ; 0x9973
    mov ax, 0x26                     ; 0x9976
    imul word [bp - 0x0002]          ; 0x9979
    add ax, 0x8504                   ; 0x997c
    push ax                          ; 0x997f
    call ds_dispatch_ec41            ; 0x9980
    add sp, byte 6                   ; 0x9983
    inc word [bp - 0x0002]           ; 0x9986
    mov ax, word [bp - 0x0002]       ; 0x9989
    cmp ax, strict word 0x16         ; 0x998c
    jl short @..api_idx_0002_24.l1   ; 0x998f
    mov ax, 1                        ; 0x9991
    push ax                          ; 0x9994
    push word [bp + 0x8]             ; 0x9995
    mov ax, 0x26                     ; 0x9998
    imul word [bp + 0x4]             ; 0x999b
    add ax, 0x8504                   ; 0x999e
    push ax                          ; 0x99a1
    call ds_dispatch_ec41            ; 0x99a2
    add sp, byte 6                   ; 0x99a5
    cmp word [bp + 0x6], byte 0xff   ; 0x99a8
    je short @..api_idx_0002_24.l2   ; 0x99ac
    mov ax, 0                        ; 0x99ae
    push ax                          ; 0x99b1
    push word [bp + 0x8]             ; 0x99b2
    mov ax, 0x26                     ; 0x99b5
    imul word [bp + 0x6]             ; 0x99b8
    add ax, 0x8502                   ; 0x99bb
    push ax                          ; 0x99be
    call ds_dispatch_ec41            ; 0x99bf
    add sp, byte 6                   ; 0x99c2
    mov ax, 1                        ; 0x99c5
    push ax                          ; 0x99c8
    push word [bp + 0x8]             ; 0x99c9
    mov ax, 0x26                     ; 0x99cc
    imul word [bp + 0x6]             ; 0x99cf
    add ax, 0x8504                   ; 0x99d2
    push ax                          ; 0x99d5
    call ds_dispatch_ec41            ; 0x99d6
    add sp, byte 6                   ; 0x99d9
@..api_idx_0002_24.l2:
    ret                              ; 0x99dc
api_idx_0006_9:
    mov ax, 0xfffa                   ; 0x99dd
    call ds_dispatch_f40b            ; 0x99e0
    mov ax, 0x26                     ; 0x99e3
    imul word [bp + 0x4]             ; 0x99e6
    mov bx, ax                       ; 0x99e9
    mov al, byte [bx - 0x7b15]       ; 0x99eb
    sub ah, ah                       ; 0x99ef
    mov word [bp - 0x0006], ax       ; 0x99f1
    mov word [bp - 0x0002], 0        ; 0x99f4
@..api_idx_0006_9.l1:
    mov ax, 6                        ; 0x99f9
    imul word [bp - 0x0002]          ; 0x99fc
    mov bx, ax                       ; 0x99ff
    cmp byte [bx - 0x7b59], 0        ; 0x9a01
    jbe short @..api_idx_0006_9.l3   ; 0x9a06
    mov al, byte [bx - 0x7b5a]       ; 0x9a08
    sub ah, ah                       ; 0x9a0c
    cmp ax, word [bp - 0x0006]       ; 0x9a0e
    jne short @..api_idx_0006_9.l3   ; 0x9a11
    push word [bp - 0x0002]          ; 0x9a13
    mov ax, 0x26                     ; 0x9a16
    imul word [bp + 0x4]             ; 0x9a19
    add ax, 0x8504                   ; 0x9a1c
    push ax                          ; 0x9a1f
    call ds_dispatch_ec74            ; 0x9a20
    add sp, byte 4                   ; 0x9a23
    test ax, ax                      ; 0x9a26
    je short @..api_idx_0006_9.l2    ; 0x9a28
    push word [bp - 0x0002]          ; 0x9a2a
    mov ax, 0x26                     ; 0x9a2d
    imul word [bp + 0x4]             ; 0x9a30
    add ax, 0x850a                   ; 0x9a33
    push ax                          ; 0x9a36
    call ds_dispatch_ec74            ; 0x9a37
    add sp, byte 4                   ; 0x9a3a
    test ax, ax                      ; 0x9a3d
    jne short @..api_idx_0006_9.l2   ; 0x9a3f
    mov ax, 4                        ; 0x9a41
    push ax                          ; 0x9a44
    call ds_dispatch_b7a9            ; 0x9a45
    pop cx                           ; 0x9a48
    test ax, ax                      ; 0x9a49
    jne short @..api_idx_0006_9.l2   ; 0x9a4b
    push word [bp - 0x0006]          ; 0x9a4d
    mov ax, 4                        ; 0x9a50
    push ax                          ; 0x9a53
    push word [bp - 0x0002]          ; 0x9a54
    push word [bp + 0x4]             ; 0x9a57
    call api_idx_0002_22             ; 0x9a5a
    add sp, byte 8                   ; 0x9a5d
    push word [bp - 0x0002]          ; 0x9a60
    mov ax, 0xffff                   ; 0x9a63
    push ax                          ; 0x9a66
    push word [bp + 0x4]             ; 0x9a67
    call api_idx_0002_24             ; 0x9a6a
    add sp, byte 6                   ; 0x9a6d
@..api_idx_0006_9.l2:
    ret                              ; 0x9a70
@..api_idx_0006_9.l3:
    inc word [bp - 0x0002]           ; 0x9a71
    mov ax, word [bp - 0x0002]       ; 0x9a74
    cmp ax, strict word 0xb          ; 0x9a77
    jge short @..api_idx_0006_9.l4   ; 0x9a7a
    jmp near @..api_idx_0006_9.l1    ; 0x9a7c
@..api_idx_0006_9.l4:
    ret                              ; 0x9a7f
api_idx_0010_4:
    mov ax, 0xfff0                   ; 0x9a80
    call ds_dispatch_f40b            ; 0x9a83
    mov word [bp - 0x000a], 0xffff   ; 0x9a86
    mov word [bp - 0x000c], 0xffff   ; 0x9a8b
    mov word [bp - 0x0002], 0xa      ; 0x9a90
@..api_idx_0010_4.l1:
    push word [bp - 0x0002]          ; 0x9a95
    mov ax, 0x26                     ; 0x9a98
    imul word [bp + 0x4]             ; 0x9a9b
    add ax, 0x8502                   ; 0x9a9e
    push ax                          ; 0x9aa1
    call ds_dispatch_ec74            ; 0x9aa2
    add sp, byte 4                   ; 0x9aa5
    test ax, ax                      ; 0x9aa8
    je short @..api_idx_0010_4.l2    ; 0x9aaa
    push word [bp - 0x0002]          ; 0x9aac
    mov ax, 0x26                     ; 0x9aaf
    imul word [bp + 0x6]             ; 0x9ab2
    add ax, 0x850a                   ; 0x9ab5
    push ax                          ; 0x9ab8
    call ds_dispatch_ec74            ; 0x9ab9
    add sp, byte 4                   ; 0x9abc
    test ax, ax                      ; 0x9abf
    jne short @..api_idx_0010_4.l2   ; 0x9ac1
    mov ax, 6                        ; 0x9ac3
    imul word [bp - 0x0002]          ; 0x9ac6
    mov bx, ax                       ; 0x9ac9
    mov al, byte [bx - 0x7b58]       ; 0x9acb
    sub ah, ah                       ; 0x9acf
    mov word [bp - 0x0006], ax       ; 0x9ad1
    push ax                          ; 0x9ad4
    push word [bp + 0x4]             ; 0x9ad5
    call math_loc_9448               ; 0x9ad8
    add sp, byte 4                   ; 0x9adb
    test ax, ax                      ; 0x9ade
    jne short @..api_idx_0010_4.l2   ; 0x9ae0
    mov ax, word [bp - 0x0002]       ; 0x9ae2
    mov word [bp - 0x000a], ax       ; 0x9ae5
@..api_idx_0010_4.l2:
    push word [bp - 0x0002]          ; 0x9ae8
    mov ax, 0x26                     ; 0x9aeb
    imul word [bp + 0x6]             ; 0x9aee
    add ax, 0x8502                   ; 0x9af1
    push ax                          ; 0x9af4
    call ds_dispatch_ec74            ; 0x9af5
    add sp, byte 4                   ; 0x9af8
    test ax, ax                      ; 0x9afb
    je short @..api_idx_0010_4.l3    ; 0x9afd
    push word [bp - 0x0002]          ; 0x9aff
    mov ax, 0x26                     ; 0x9b02
    imul word [bp + 0x4]             ; 0x9b05
    add ax, 0x850a                   ; 0x9b08
    push ax                          ; 0x9b0b
    call ds_dispatch_ec74            ; 0x9b0c
    add sp, byte 4                   ; 0x9b0f
    test ax, ax                      ; 0x9b12
    jne short @..api_idx_0010_4.l3   ; 0x9b14
    mov ax, word [bp - 0x0002]       ; 0x9b16
    mov word [bp - 0x000c], ax       ; 0x9b19
@..api_idx_0010_4.l3:
    push word [bp - 0x0002]          ; 0x9b1c
    mov ax, 0x26                     ; 0x9b1f
    imul word [bp + 0x4]             ; 0x9b22
    add ax, 0x8504                   ; 0x9b25
    push ax                          ; 0x9b28
    call ds_dispatch_ec74            ; 0x9b29
    add sp, byte 4                   ; 0x9b2c
    test ax, ax                      ; 0x9b2f
    je short @..api_idx_0010_4.l4    ; 0x9b31
    mov ax, 1                        ; 0x9b33
    push ax                          ; 0x9b36
    push word [bp - 0x0002]          ; 0x9b37
    mov ax, 0x26                     ; 0x9b3a
    imul word [bp + 0x6]             ; 0x9b3d
    add ax, 0x8504                   ; 0x9b40
    push ax                          ; 0x9b43
    call ds_dispatch_ec41            ; 0x9b44
    add sp, byte 6                   ; 0x9b47
@..api_idx_0010_4.l4:
    push word [bp - 0x0002]          ; 0x9b4a
    mov ax, 0x26                     ; 0x9b4d
    imul word [bp + 0x6]             ; 0x9b50
    add ax, 0x8504                   ; 0x9b53
    push ax                          ; 0x9b56
    call ds_dispatch_ec74            ; 0x9b57
    add sp, byte 4                   ; 0x9b5a
    test ax, ax                      ; 0x9b5d
    je short @..api_idx_0010_4.l5    ; 0x9b5f
    mov ax, 1                        ; 0x9b61
    push ax                          ; 0x9b64
    push word [bp - 0x0002]          ; 0x9b65
    mov ax, 0x26                     ; 0x9b68
    imul word [bp + 0x4]             ; 0x9b6b
    add ax, 0x8504                   ; 0x9b6e
    push ax                          ; 0x9b71
    call ds_dispatch_ec41            ; 0x9b72
    add sp, byte 6                   ; 0x9b75
@..api_idx_0010_4.l5:
    mov ax, 0x26                     ; 0x9b78
    imul word [bp + 0x4]             ; 0x9b7b
    mov bx, ax                       ; 0x9b7e
    mov al, byte [bx - 0x7b18]       ; 0x9b80
    push ax                          ; 0x9b84
    mov ax, 0x26                     ; 0x9b85
    imul word [bp + 0x6]             ; 0x9b88
    mov bx, ax                       ; 0x9b8b
    mov cl, byte [bx - 0x7b18]       ; 0x9b8d
    pop ax                           ; 0x9b91
    cmp al, cl                       ; 0x9b92
    je short @..api_idx_0010_4.l6    ; 0x9b94
    jmp near @..api_idx_0010_4.l10   ; 0x9b96
@..api_idx_0010_4.l6:
    push word [bp - 0x0002]          ; 0x9b99
    mov ax, 0x26                     ; 0x9b9c
    imul word [bp + 0x4]             ; 0x9b9f
    add ax, 0x850a                   ; 0x9ba2
    push ax                          ; 0x9ba5
    call ds_dispatch_ec74            ; 0x9ba6
    add sp, byte 4                   ; 0x9ba9
    test ax, ax                      ; 0x9bac
    je short @..api_idx_0010_4.l7    ; 0x9bae
    mov ax, 1                        ; 0x9bb0
    push ax                          ; 0x9bb3
    push word [bp - 0x0002]          ; 0x9bb4
    mov ax, 0x26                     ; 0x9bb7
    imul word [bp + 0x6]             ; 0x9bba
    add ax, 0x850a                   ; 0x9bbd
    push ax                          ; 0x9bc0
    call ds_dispatch_ec41            ; 0x9bc1
    add sp, byte 6                   ; 0x9bc4
@..api_idx_0010_4.l7:
    push word [bp - 0x0002]          ; 0x9bc7
    mov ax, 0x26                     ; 0x9bca
    imul word [bp + 0x6]             ; 0x9bcd
    add ax, 0x850a                   ; 0x9bd0
    push ax                          ; 0x9bd3
    call ds_dispatch_ec74            ; 0x9bd4
    add sp, byte 4                   ; 0x9bd7
    test ax, ax                      ; 0x9bda
    je short @..api_idx_0010_4.l8    ; 0x9bdc
    mov ax, 1                        ; 0x9bde
    push ax                          ; 0x9be1
    push word [bp - 0x0002]          ; 0x9be2
    mov ax, 0x26                     ; 0x9be5
    imul word [bp + 0x4]             ; 0x9be8
    add ax, 0x850a                   ; 0x9beb
    push ax                          ; 0x9bee
    call ds_dispatch_ec41            ; 0x9bef
    add sp, byte 6                   ; 0x9bf2
@..api_idx_0010_4.l8:
    mov ax, word [bp - 0x0002]       ; 0x9bf5
    add ax, strict word 0xc          ; 0x9bf8
    push ax                          ; 0x9bfb
    mov ax, 0x26                     ; 0x9bfc
    imul word [bp + 0x4]             ; 0x9bff
    add ax, 0x850a                   ; 0x9c02
    push ax                          ; 0x9c05
    call ds_dispatch_ec74            ; 0x9c06
    add sp, byte 4                   ; 0x9c09
    test ax, ax                      ; 0x9c0c
    je short @..api_idx_0010_4.l9    ; 0x9c0e
    mov ax, 1                        ; 0x9c10
    push ax                          ; 0x9c13
    mov ax, word [bp - 0x0002]       ; 0x9c14
    add ax, strict word 0xc          ; 0x9c17
    push ax                          ; 0x9c1a
    mov ax, 0x26                     ; 0x9c1b
    imul word [bp + 0x6]             ; 0x9c1e
    add ax, 0x850a                   ; 0x9c21
    push ax                          ; 0x9c24
    call ds_dispatch_ec41            ; 0x9c25
    add sp, byte 6                   ; 0x9c28
@..api_idx_0010_4.l9:
    mov ax, word [bp - 0x0002]       ; 0x9c2b
    add ax, strict word 0xc          ; 0x9c2e
    push ax                          ; 0x9c31
    mov ax, 0x26                     ; 0x9c32
    imul word [bp + 0x6]             ; 0x9c35
    add ax, 0x850a                   ; 0x9c38
    push ax                          ; 0x9c3b
    call ds_dispatch_ec74            ; 0x9c3c
    add sp, byte 4                   ; 0x9c3f
    test ax, ax                      ; 0x9c42
    je short @..api_idx_0010_4.l10   ; 0x9c44
    mov ax, 1                        ; 0x9c46
    push ax                          ; 0x9c49
    mov ax, word [bp - 0x0002]       ; 0x9c4a
    add ax, strict word 0xc          ; 0x9c4d
    push ax                          ; 0x9c50
    mov ax, 0x26                     ; 0x9c51
    imul word [bp + 0x4]             ; 0x9c54
    add ax, 0x850a                   ; 0x9c57
    push ax                          ; 0x9c5a
    call ds_dispatch_ec41            ; 0x9c5b
    add sp, byte 6                   ; 0x9c5e
@..api_idx_0010_4.l10:
    dec word [bp - 0x0002]           ; 0x9c61
    jl short @..api_idx_0010_4.l11   ; 0x9c64
    jmp near @..api_idx_0010_4.l1    ; 0x9c66
@..api_idx_0010_4.l11:
    cmp word [bp + 0x8], byte 0      ; 0x9c69
    jle short @..api_idx_0010_4.l12  ; 0x9c6d
    mov ax, 5                        ; 0x9c6f
    push ax                          ; 0x9c72
    call ds_dispatch_b7a9            ; 0x9c73
    pop cx                           ; 0x9c76
    push ax                          ; 0x9c77
    push word [bp + 0x6]             ; 0x9c78
    push word [bp + 0x4]             ; 0x9c7b
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
api_idx_0004_16:
    mov ax, 0xfffc                   ; 0x9e79
    call ds_dispatch_f40b            ; 0x9e7c
    mov word [bp - 0x0002], 0        ; 0x9e7f
@..api_idx_0004_16.l1:
    push word [bp - 0x0002]          ; 0x9e84
    mov ax, 0x26                     ; 0x9e87
    imul word [bp + 0x6]             ; 0x9e8a
    add ax, 0x8504                   ; 0x9e8d
    push ax                          ; 0x9e90
    call ds_dispatch_ec74            ; 0x9e91
    add sp, byte 4                   ; 0x9e94
    test ax, ax                      ; 0x9e97
    je short @..api_idx_0004_16.l2   ; 0x9e99
    mov ax, 1                        ; 0x9e9b
    push ax                          ; 0x9e9e
    push word [bp - 0x0002]          ; 0x9e9f
    mov ax, 0x26                     ; 0x9ea2
    imul word [bp + 0x4]             ; 0x9ea5
    add ax, 0x8504                   ; 0x9ea8
    push ax                          ; 0x9eab
    call ds_dispatch_ec41            ; 0x9eac
    add sp, byte 6                   ; 0x9eaf
@..api_idx_0004_16.l2:
    push word [bp - 0x0002]          ; 0x9eb2
    mov ax, 0x26                     ; 0x9eb5
    imul word [bp + 0x6]             ; 0x9eb8
    add ax, 0x8502                   ; 0x9ebb
    push ax                          ; 0x9ebe
    call ds_dispatch_ec74            ; 0x9ebf
    add sp, byte 4                   ; 0x9ec2
    test ax, ax                      ; 0x9ec5
    je short @..api_idx_0004_16.l3   ; 0x9ec7
    push word [bp + 0x6]             ; 0x9ec9
    mov ax, 3                        ; 0x9ecc
    push ax                          ; 0x9ecf
    push word [bp - 0x0002]          ; 0x9ed0
    push word [bp + 0x4]             ; 0x9ed3
    call api_idx_0002_22             ; 0x9ed6
    add sp, byte 8                   ; 0x9ed9
    push word [bp - 0x0002]          ; 0x9edc
    push word [bp + 0x6]             ; 0x9edf
    push word [bp + 0x4]             ; 0x9ee2
    call api_idx_0002_24             ; 0x9ee5
    add sp, byte 6                   ; 0x9ee8
@..api_idx_0004_16.l3:
    inc word [bp - 0x0002]           ; 0x9eeb
    mov ax, word [bp - 0x0002]       ; 0x9eee
    cmp ax, strict word 0xb          ; 0x9ef1
    jl short @..api_idx_0004_16.l1   ; 0x9ef4
    ret                              ; 0x9ef6
api_idx_0012_4:
    mov ax, 0xffee                   ; 0x9ef7
    call ds_dispatch_f40b            ; 0x9efa
    mov ax, 0xf                      ; 0x9efd
    push ax                          ; 0x9f00
    call ds_dispatch_b7a9            ; 0x9f01
    pop cx                           ; 0x9f04
    mov cx, ax                       ; 0x9f05
    add ax, strict word 0xf          ; 0x9f07
    mov cx, ax                       ; 0x9f0a
    mov ax, 0                        ; 0x9f0c
    sub ax, cx                       ; 0x9f0f
    push ax                          ; 0x9f11
    push word [bp + 0x6]             ; 0x9f12
    push word [bp + 0x4]             ; 0x9f15
    call math_loc_9658               ; 0x9f18
    add sp, byte 6                   ; 0x9f1b
    mov ax, 0xf                      ; 0x9f1e
    push ax                          ; 0x9f21
    call ds_dispatch_b7a9            ; 0x9f22
    pop cx                           ; 0x9f25
    mov cx, ax                       ; 0x9f26
    add ax, strict word 0xf          ; 0x9f28
    mov cx, ax                       ; 0x9f2b
    mov ax, 0                        ; 0x9f2d
    sub ax, cx                       ; 0x9f30
    push ax                          ; 0x9f32
    push word [bp + 0x4]             ; 0x9f33
    push word [bp + 0x6]             ; 0x9f36
    call math_loc_9658               ; 0x9f39
    add sp, byte 6                   ; 0x9f3c
    mov ax, 0x26                     ; 0x9f3f
    imul word [bp + 0x6]             ; 0x9f42
    mov bx, ax                       ; 0x9f45
    cmp byte [bx - 0x7b16], 1        ; 0x9f47
    je short @..api_idx_0012_4.l1    ; 0x9f4c
    cmp word [bp + 0x6], byte 0x13   ; 0x9f4e
    jne short @..api_idx_0012_4.l2   ; 0x9f52
@..api_idx_0012_4.l1:
    mov ax, 1                        ; 0x9f54
    jmp short @..api_idx_0012_4.l3   ; 0x9f57
@..api_idx_0012_4.l2:
    mov ax, 0                        ; 0x9f59
@..api_idx_0012_4.l3:
    mov word [bp - 0x0010], ax       ; 0x9f5c
    mov word [bp - 0x0006], 0        ; 0x9f5f
    mov word [bp - 0x000a], 0        ; 0x9f64
    mov word [bp - 0x0008], 0        ; 0x9f69
    mov word [bp - 0x000c], 0        ; 0x9f6e
    mov word [bp - 0x000e], 0        ; 0x9f73
@..api_idx_0012_4.l4:
    mov ax, 0x26                     ; 0x9f78
    imul word [bp + 0x6]             ; 0x9f7b
    mov bx, ax                       ; 0x9f7e
    mov al, byte [bx - 0x7b00]       ; 0x9f80
    cbw                              ; 0x9f84
    mov cx, 4                        ; 0x9f85
    cwd                              ; 0x9f88
    idiv cx                          ; 0x9f89
    push ax                          ; 0x9f8b
    call ds_dispatch_b7a9            ; 0x9f8c
    pop cx                           ; 0x9f8f
    inc ax                           ; 0x9f90
    mov word [bp - 0x0006], ax       ; 0x9f91
    add word [bp - 0x000a], ax       ; 0x9f94
    mov ax, 0x26                     ; 0x9f97
    imul word [bp + 0x4]             ; 0x9f9a
    mov bx, ax                       ; 0x9f9d
    mov al, byte [bx - 0x7b00]       ; 0x9f9f
    cbw                              ; 0x9fa3
    mov cx, 4                        ; 0x9fa4
    cwd                              ; 0x9fa7
    idiv cx                          ; 0x9fa8
    push ax                          ; 0x9faa
    call ds_dispatch_b7a9            ; 0x9fab
    pop cx                           ; 0x9fae
    inc ax                           ; 0x9faf
    mov word [bp - 0x0008], ax       ; 0x9fb0
    add word [bp - 0x000c], ax       ; 0x9fb3
    mov ax, 0x26                     ; 0x9fb6
    imul word [bp + 0x4]             ; 0x9fb9
    mov bx, ax                       ; 0x9fbc
    mov al, byte [bx - 0x7b00]       ; 0x9fbe
    cbw                              ; 0x9fc2
    push ax                          ; 0x9fc3
    call ds_dispatch_b7a9            ; 0x9fc4
    pop cx                           ; 0x9fc7
    cmp ax, word [bp - 0x000a]       ; 0x9fc8
    jge short @..api_idx_0012_4.l5   ; 0x9fcb
    mov ax, 0x26                     ; 0x9fcd
    imul word [bp + 0x4]             ; 0x9fd0
    mov bx, ax                       ; 0x9fd3
    mov byte [bx - 0x7b16], 7        ; 0x9fd5
    mov word [bp - 0x000e], 0xffff   ; 0x9fda
@..api_idx_0012_4.l5:
    cmp word [bp - 0x000e], byte 0   ; 0x9fdf
    je short @..api_idx_0012_4.l6    ; 0x9fe3
    jmp near @..api_idx_0012_4.l8    ; 0x9fe5
@..api_idx_0012_4.l6:
    mov ax, word [bp - 0x0008]       ; 0x9fe8
    mov cx, 2                        ; 0x9feb
    cwd                              ; 0x9fee
    idiv cx                          ; 0x9fef
    push ax                          ; 0x9ff1
    call ds_dispatch_b7a9            ; 0x9ff2
    pop cx                           ; 0x9ff5
    push ax                          ; 0x9ff6
    mov ax, word [bp - 0x0008]       ; 0x9ff7
    mov cx, 2                        ; 0x9ffa
    cwd                              ; 0x9ffd
    idiv cx                          ; 0x9ffe
    mov cx, ax                       ; 0xa000
    pop ax                           ; 0xa002
    add ax, cx                       ; 0xa003
    push ax                          ; 0xa005
    mov ax, 0x26                     ; 0xa006
    imul word [bp + 0x6]             ; 0xa009
    mov bx, ax                       ; 0xa00c
    mov al, byte [bx - 0x7b00]       ; 0xa00e
    cbw                              ; 0xa012
    mov cx, ax                       ; 0xa013
    pop ax                           ; 0xa015
    cmp ax, cx                       ; 0xa016
    jle short @..api_idx_0012_4.l7   ; 0xa018
    push word [bp + 0x6]             ; 0xa01a
    push word [bp + 0x4]             ; 0xa01d
    call api_idx_0004_16             ; 0xa020
    add sp, byte 4                   ; 0xa023
    mov word [bp - 0x000e], 1        ; 0xa026
    jmp short @..api_idx_0012_4.l8   ; 0xa02b
@..api_idx_0012_4.l7:
    mov ax, 0x26                     ; 0xa02d
    imul word [bp + 0x6]             ; 0xa030
    mov bx, ax                       ; 0xa033
    mov al, byte [bx - 0x7b00]       ; 0xa035
    push ax                          ; 0xa039
    mov ax, 0x26                     ; 0xa03a
    imul word [bp + 0x4]             ; 0xa03d
    mov bx, ax                       ; 0xa040
    mov cl, byte [bx - 0x7b00]       ; 0xa042
    pop ax                           ; 0xa046
    cmp al, cl                       ; 0xa047
    jge short @..api_idx_0012_4.l8   ; 0xa049
    mov ax, 3                        ; 0xa04b
    push ax                          ; 0xa04e
    call ds_dispatch_b7a9            ; 0xa04f
    pop cx                           ; 0xa052
    test ax, ax                      ; 0xa053
    jne short @..api_idx_0012_4.l8   ; 0xa055
    push word [bp + 0x6]             ; 0xa057
    push word [bp + 0x4]             ; 0xa05a
    call api_idx_0010_4              ; 0xa05d
    add sp, byte 4                   ; 0xa060
    mov word [bp - 0x000e], 1        ; 0xa063
@..api_idx_0012_4.l8:
    cmp word [bp - 0x000e], byte 0   ; 0xa068
    jne short @..api_idx_0012_4.l9   ; 0xa06c
    mov ax, 0x26                     ; 0xa06e
    imul word [bp + 0x4]             ; 0xa071
    mov bx, ax                       ; 0xa074
    mov al, byte [bx - 0x7b00]       ; 0xa076
    cbw                              ; 0xa07a
    sub ax, word [bp - 0x0006]       ; 0xa07b
    mov byte [bx - 0x7b00], al       ; 0xa07e
    mov ax, 0x26                     ; 0xa082
    imul word [bp + 0x6]             ; 0xa085
    mov bx, ax                       ; 0xa088
    mov al, byte [bx - 0x7b00]       ; 0xa08a
    cbw                              ; 0xa08e
    sub ax, word [bp - 0x0008]       ; 0xa08f
    mov byte [bx - 0x7b00], al       ; 0xa092
@..api_idx_0012_4.l9:
    cmp word [bp - 0x000e], byte 0   ; 0xa096
    jne short @..api_idx_0012_4.l10  ; 0xa09a
    mov ax, 0x26                     ; 0xa09c
    imul word [bp + 0x4]             ; 0xa09f
    mov bx, ax                       ; 0xa0a2
    cmp byte [bx - 0x7b00], 0        ; 0xa0a4
    jle short @..api_idx_0012_4.l10  ; 0xa0a9
    mov ax, 0x26                     ; 0xa0ab
    imul word [bp + 0x6]             ; 0xa0ae
    mov bx, ax                       ; 0xa0b1
    cmp byte [bx - 0x7b00], 0        ; 0xa0b3
    jle short @..api_idx_0012_4.l10  ; 0xa0b8
    jmp near @..api_idx_0012_4.l4    ; 0xa0ba
@..api_idx_0012_4.l10:
    mov word [bp - 0x0012], 0        ; 0xa0bd
    mov ax, 0x26                     ; 0xa0c2
    imul word [bp + 0x6]             ; 0xa0c5
    mov bx, ax                       ; 0xa0c8
    cmp byte [bx - 0x7b00], 0        ; 0xa0ca
    jg short @..api_idx_0012_4.l13   ; 0xa0cf
    cmp word [bp - 0x0010], byte 0   ; 0xa0d1
    je short @..api_idx_0012_4.l11   ; 0xa0d5
    mov ax, 0xa                      ; 0xa0d7
    push ax                          ; 0xa0da
    call ds_dispatch_b7a9            ; 0xa0db
    pop cx                           ; 0xa0de
    add ax, strict word 0xa          ; 0xa0df
    push ax                          ; 0xa0e2
    mov ax, 0x26                     ; 0xa0e3
    imul word [bp + 0x6]             ; 0xa0e6
    mov bx, ax                       ; 0xa0e9
    pop ax                           ; 0xa0eb
    mov byte [bx - 0x7b00], al       ; 0xa0ec
    jmp short @..api_idx_0012_4.l12  ; 0xa0f0
@..api_idx_0012_4.l11:
    mov word [bp - 0x0012], 1        ; 0xa0f2
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
math_loc_a215:
    mov ax, 0                        ; 0xa215
    call ds_dispatch_f40b            ; 0xa218
    mov ax, 3                        ; 0xa21b
    push ax                          ; 0xa21e
    call ds_dispatch_b7a9            ; 0xa21f
    pop cx                           ; 0xa222
    test ax, ax                      ; 0xa223
    jne short @..math_loc_a215.l1    ; 0xa225
    mov ax, 0xffff                   ; 0xa227
    push ax                          ; 0xa22a
    mov ax, 5                        ; 0xa22b
    push ax                          ; 0xa22e
    push word [bp + 0x6]             ; 0xa22f
    push word [bp + 0x4]             ; 0xa232
    call api_idx_0002_22             ; 0xa235
    add sp, byte 8                   ; 0xa238
    mov ax, 0xf                      ; 0xa23b
    push ax                          ; 0xa23e
    call ds_dispatch_b7a9            ; 0xa23f
    pop cx                           ; 0xa242
    add ax, strict word 0xfffb       ; 0xa243
    push ax                          ; 0xa246
    push word [bp + 0x6]             ; 0xa247
    push word [bp + 0x4]             ; 0xa24a
    call math_loc_9658               ; 0xa24d
    add sp, byte 6                   ; 0xa250
    mov ax, 0xf                      ; 0xa253
    push ax                          ; 0xa256
    call ds_dispatch_b7a9            ; 0xa257
    pop cx                           ; 0xa25a
    add ax, strict word 0xfffb       ; 0xa25b
    push ax                          ; 0xa25e
    push word [bp + 0x4]             ; 0xa25f
    push word [bp + 0x6]             ; 0xa262
    call math_loc_9658               ; 0xa265
    add sp, byte 6                   ; 0xa268
@..math_loc_a215.l1:
    mov ax, 0x16                     ; 0xa26b
    imul word [bp + 0x4]             ; 0xa26e
    add ax, word [bp + 0x6]          ; 0xa271
    mov bx, ax                       ; 0xa274
    mov byte [bx - 0x63be], 1        ; 0xa276
    mov ax, 0x16                     ; 0xa27b
    imul word [bp + 0x6]             ; 0xa27e
    add ax, word [bp + 0x4]          ; 0xa281
    mov bx, ax                       ; 0xa284
    mov byte [bx - 0x63be], 1        ; 0xa286
    ret                              ; 0xa28b
api_idx_0002_25:
    mov ax, 0xfffe                   ; 0xa28c
    call ds_dispatch_f40b            ; 0xa28f
    mov ax, 0x18                     ; 0xa292
    push ax                          ; 0xa295
    call ds_dispatch_b7a9            ; 0xa296
    pop cx                           ; 0xa299
    cmp ax, strict word 0xf          ; 0xa29a
    jle short @..api_idx_0002_25.l2  ; 0xa29d
    push word [bp + 0x8]             ; 0xa29f
    call ds_dispatch_b7a9            ; 0xa2a2
    pop cx                           ; 0xa2a5
    push ax                          ; 0xa2a6
    mov ax, 0x26                     ; 0xa2a7
    imul word [bp + 0x4]             ; 0xa2aa
    mov bx, ax                       ; 0xa2ad
    mov al, byte [bx - 0x7b00]       ; 0xa2af
    cbw                              ; 0xa2b3
    mov cx, ax                       ; 0xa2b4
    pop ax                           ; 0xa2b6
    add ax, cx                       ; 0xa2b7
    add ax, word [bp + 0x6]          ; 0xa2b9
    mov word [bp - 0x0002], ax       ; 0xa2bc
    mov al, byte [bx - 0x7aff]       ; 0xa2bf
    cbw                              ; 0xa2c3
    mov cx, ax                       ; 0xa2c4
    mov ax, word [bp - 0x0002]       ; 0xa2c6
    cmp cx, ax                       ; 0xa2c9
    jge short @..api_idx_0002_25.l1  ; 0xa2cb
    mov word [bp - 0x0002], cx       ; 0xa2cd
@..api_idx_0002_25.l1:
    mov al, byte [bp - 0x0002]       ; 0xa2d0
    mov byte [bx - 0x7b00], al       ; 0xa2d3
    mov ax, 1                        ; 0xa2d7
    ret                              ; 0xa2da
@..api_idx_0002_25.l2:
    mov ax, 0                        ; 0xa2db
    ret                              ; 0xa2de
api_idx_0010_5:
    mov ax, 0xfff0                   ; 0xa2df
    call ds_dispatch_f40b            ; 0xa2e2
    mov ax, 0x26                     ; 0xa2e5
    imul word [bp + 0x4]             ; 0xa2e8
    mov bx, ax                       ; 0xa2eb
    mov al, byte [bx - 0x7b15]       ; 0xa2ed
    sub ah, ah                       ; 0xa2f1
    push ax                          ; 0xa2f3
    push word [bp + 0x4]             ; 0xa2f4
    call math_loc_9448               ; 0xa2f7
    add sp, byte 4                   ; 0xa2fa
    test ax, ax                      ; 0xa2fd
    jne short @..api_idx_0010_5.l1   ; 0xa2ff
    mov ax, 0x26                     ; 0xa301
    imul word [bp + 0x4]             ; 0xa304
    mov bx, ax                       ; 0xa307
    mov byte [bx - 0x7b16], 0        ; 0xa309
    ret                              ; 0xa30e
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
api_idx_0008_5:
    mov ax, 0xfff8                   ; 0xa5ba
    call ds_dispatch_f40b            ; 0xa5bd
    mov word [bp - 0x0006], 0        ; 0xa5c0
@..api_idx_0008_5.l1:
    mov ax, word [bp - 0x0006]       ; 0xa5c5
    cmp ax, word [bp + 0x4]          ; 0xa5c8
    jne short @..api_idx_0008_5.l2   ; 0xa5cb
    jmp near @..api_idx_0008_5.l16   ; 0xa5cd
@..api_idx_0008_5.l2:
    mov cx, 0x26                     ; 0xa5d0
    imul cx                          ; 0xa5d3
    mov bx, ax                       ; 0xa5d5
    cmp byte [bx - 0x7b00], 0        ; 0xa5d7
    jg short @..api_idx_0008_5.l3    ; 0xa5dc
    jmp near @..api_idx_0008_5.l16   ; 0xa5de
@..api_idx_0008_5.l3:
    mov ax, 0x16                     ; 0xa5e1
    imul word [bp + 0x4]             ; 0xa5e4
    add ax, word [bp - 0x0006]       ; 0xa5e7
    mov bx, ax                       ; 0xa5ea
    cmp byte [bx - 0x63be], 0        ; 0xa5ec
    je short @..api_idx_0008_5.l4    ; 0xa5f1
    jmp near @..api_idx_0008_5.l16   ; 0xa5f3
@..api_idx_0008_5.l4:
    mov ax, word [bp + 0x4]          ; 0xa5f6
    imul cx                          ; 0xa5f9
    mov bx, ax                       ; 0xa5fb
    mov al, byte [bx - 0x7b14]       ; 0xa5fd
    push ax                          ; 0xa601
    mov ax, word [bp - 0x0006]       ; 0xa602
    imul cx                          ; 0xa605
    mov bx, ax                       ; 0xa607
    mov cl, byte [bx - 0x7b14]       ; 0xa609
    pop ax                           ; 0xa60d
    cmp al, cl                       ; 0xa60e
    je short @..api_idx_0008_5.l5    ; 0xa610
    jmp near @..api_idx_0008_5.l16   ; 0xa612
@..api_idx_0008_5.l5:
    mov ax, word [bp - 0x0006]       ; 0xa615
    cmp ax, word [bp + 0x6]          ; 0xa618
    je short @..api_idx_0008_5.l8    ; 0xa61b
    mov ax, 0x26                     ; 0xa61d
    imul word [bp + 0x4]             ; 0xa620
    mov bx, ax                       ; 0xa623
    mov al, byte [bx - 0x7b13]       ; 0xa625
    sub ah, ah                       ; 0xa629
    push ax                          ; 0xa62b
    call ds_dispatch_b7a9            ; 0xa62c
    pop cx                           ; 0xa62f
    push ax                          ; 0xa630
    mov ax, 0x26                     ; 0xa631
    imul word [bp - 0x0006]          ; 0xa634
    mov bx, ax                       ; 0xa637
    mov al, byte [bx - 0x7b13]       ; 0xa639
    sub ah, ah                       ; 0xa63d
    push ax                          ; 0xa63f
    call ds_dispatch_b7a9            ; 0xa640
    pop cx                           ; 0xa643
    mov cx, ax                       ; 0xa644
    pop ax                           ; 0xa646
    cmp ax, cx                       ; 0xa647
    je short @..api_idx_0008_5.l6    ; 0xa649
    jmp near @..api_idx_0008_5.l16   ; 0xa64b
@..api_idx_0008_5.l6:
    mov ax, 0x26                     ; 0xa64e
    imul word [bp - 0x0006]          ; 0xa651
    mov bx, ax                       ; 0xa654
    mov al, byte [bx - 0x7b16]       ; 0xa656
    cmp al, 3                        ; 0xa65a
    je short @..api_idx_0008_5.l8    ; 0xa65c
    cmp byte [bx - 0x7b16], 0        ; 0xa65e
    je short @..api_idx_0008_5.l8    ; 0xa663
    mov ax, 0x26                     ; 0xa665
    imul word [bp + 0x4]             ; 0xa668
    mov bx, ax                       ; 0xa66b
    cmp byte [bx - 0x7b16], 6        ; 0xa66d
    je short @..api_idx_0008_5.l7    ; 0xa672
    jmp near @..api_idx_0008_5.l16   ; 0xa674
@..api_idx_0008_5.l7:
    mov ax, 0x26                     ; 0xa677
    imul word [bp - 0x0006]          ; 0xa67a
    mov bx, ax                       ; 0xa67d
    mov al, byte [bx - 0x7b16]       ; 0xa67f
    cmp al, 1                        ; 0xa683
    jne short @..api_idx_0008_5.l8   ; 0xa685
    jmp near @..api_idx_0008_5.l16   ; 0xa687
@..api_idx_0008_5.l8:
    mov ax, 0x26                     ; 0xa68a
    imul word [bp + 0x4]             ; 0xa68d
    mov bx, ax                       ; 0xa690
    mov al, byte [bx - 0x7b18]       ; 0xa692
    sub ah, ah                       ; 0xa696
    mov cx, 0xc                      ; 0xa698
    imul cx                          ; 0xa69b
    push ax                          ; 0xa69d
    mov ax, 0x26                     ; 0xa69e
    imul word [bp - 0x0006]          ; 0xa6a1
    mov bx, ax                       ; 0xa6a4
    mov al, byte [bx - 0x7b18]       ; 0xa6a6
    sub ah, ah                       ; 0xa6aa
    mov cx, ax                       ; 0xa6ac
    pop ax                           ; 0xa6ae
    add ax, cx                       ; 0xa6af
    mov bx, ax                       ; 0xa6b1
    mov al, byte [bx - 0x7622]       ; 0xa6b3
    cbw                              ; 0xa6b7
    mov word [bp - 0x0008], ax       ; 0xa6b8
    mov ax, 0xa                      ; 0xa6bb
    push ax                          ; 0xa6be
    call ds_dispatch_b7a9            ; 0xa6bf
    pop cx                           ; 0xa6c2
    mov cx, ax                       ; 0xa6c3
    add ax, strict word 0x19         ; 0xa6c5
    mov cx, ax                       ; 0xa6c8
    mov ax, word [bp - 0x0008]       ; 0xa6ca
    cmp cx, ax                       ; 0xa6cd
    jg short @..api_idx_0008_5.l10   ; 0xa6cf
    push ax                          ; 0xa6d1
    push word [bp - 0x0006]          ; 0xa6d2
    push word [bp + 0x4]             ; 0xa6d5
    call api_idx_0010_4              ; 0xa6d8
    add sp, byte 6                   ; 0xa6db
    mov ax, word [bp - 0x0006]       ; 0xa6de
    cmp ax, word [bp + 0x6]          ; 0xa6e1
    jne short @..api_idx_0008_5.l9   ; 0xa6e4
    push word [bp + 0x4]             ; 0xa6e6
    call api_idx_003a                ; 0xa6e9
    pop cx                           ; 0xa6ec
@..api_idx_0008_5.l9:
    jmp near @..api_idx_0008_5.l16   ; 0xa6ed
@..api_idx_0008_5.l10:
    mov ax, 0xa                      ; 0xa6f0
    push ax                          ; 0xa6f3
    call ds_dispatch_b7a9            ; 0xa6f4
    pop cx                           ; 0xa6f7
    mov cx, ax                       ; 0xa6f8
    mov ax, 0x26                     ; 0xa6fa
    imul word [bp + 0x4]             ; 0xa6fd
    mov bx, ax                       ; 0xa700
    mov al, byte [bx - 0x7b00]       ; 0xa702
    cbw                              ; 0xa706
    push ax                          ; 0xa707
    mov ax, 0x26                     ; 0xa708
    imul word [bp - 0x0006]          ; 0xa70b
    mov bx, ax                       ; 0xa70e
    mov al, byte [bx - 0x7b00]       ; 0xa710
    cbw                              ; 0xa714
    mov dx, ax                       ; 0xa715
    pop ax                           ; 0xa717
    sub ax, dx                       ; 0xa718
    add ax, strict word 0xffdd       ; 0xa71a
    sub ax, cx                       ; 0xa71d
    cmp ax, word [bp - 0x0008]       ; 0xa71f
    jge short @..api_idx_0008_5.l11  ; 0xa722
    jmp near @..api_idx_0008_5.l15   ; 0xa724
@..api_idx_0008_5.l11:
    mov ax, word [bp - 0x0006]       ; 0xa727
    cmp ax, word [bp + 0x6]          ; 0xa72a
    je short @..api_idx_0008_5.l12   ; 0xa72d
    mov ax, 3                        ; 0xa72f
    push ax                          ; 0xa732
    call ds_dispatch_b7a9            ; 0xa733
    pop cx                           ; 0xa736
    test ax, ax                      ; 0xa737
    je short @..api_idx_0008_5.l14   ; 0xa739
    mov ax, 0x26                     ; 0xa73b
    imul word [bp + 0x4]             ; 0xa73e
    mov bx, ax                       ; 0xa741
    mov al, byte [bx - 0x7b00]       ; 0xa743
    cbw                              ; 0xa747
    push ax                          ; 0xa748
    mov cx, 2                        ; 0xa749
    cwd                              ; 0xa74c
    idiv cx                          ; 0xa74d
    mov cx, ax                       ; 0xa74f
    pop ax                           ; 0xa751
    cmp ax, cx                       ; 0xa752
    jle short @..api_idx_0008_5.l14  ; 0xa754
@..api_idx_0008_5.l12:
    push word [bp - 0x0006]          ; 0xa756
    push word [bp + 0x4]             ; 0xa759
    call api_idx_0012_4              ; 0xa75c
    add sp, byte 4                   ; 0xa75f
    mov word [bp - 0x0002], ax       ; 0xa762
    mov ax, word [bp - 0x0006]       ; 0xa765
    cmp ax, word [bp + 0x6]          ; 0xa768
    jne short @..api_idx_0008_5.l13  ; 0xa76b
    cmp word [bp - 0x0002], byte 1   ; 0xa76d
    jne short @..api_idx_0008_5.l13  ; 0xa771
    mov ax, 3                        ; 0xa773
    push ax                          ; 0xa776
    call ds_dispatch_b7a9            ; 0xa777
    pop cx                           ; 0xa77a
    test ax, ax                      ; 0xa77b
    jne short @..api_idx_0008_5.l13  ; 0xa77d
    mov ax, 0x26                     ; 0xa77f
    imul word [bp + 0x4]             ; 0xa782
    mov bx, ax                       ; 0xa785
    mov byte [bx - 0x7b16], 0        ; 0xa787
    jmp short @..api_idx_0008_5.l14  ; 0xa78c
@..api_idx_0008_5.l13:
    cmp word [bp - 0x0002], byte 0xff ; 0xa78e
    jne short @..api_idx_0008_5.l14  ; 0xa792
    ret                              ; 0xa794
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
api_idx_0002_26:
    mov ax, 0xfffe                   ; 0xa7b2
    call ds_dispatch_f40b            ; 0xa7b5
    mov ax, 0x26                     ; 0xa7b8
    imul word [bp + 0x4]             ; 0xa7bb
    mov bx, ax                       ; 0xa7be
    cmp byte [bx - 0x7b16], 3        ; 0xa7c0
    jne short @..api_idx_0002_26.l1  ; 0xa7c5
    mov ax, 3                        ; 0xa7c7
    push ax                          ; 0xa7ca
    mov ax, 2                        ; 0xa7cb
    push ax                          ; 0xa7ce
    push word [bp + 0x4]             ; 0xa7cf
    call api_idx_0002_25             ; 0xa7d2
    add sp, byte 6                   ; 0xa7d5
    test ax, ax                      ; 0xa7d8
    je short @..api_idx_0002_26.l1   ; 0xa7da
    ret                              ; 0xa7dc
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
api_idx_0002_27:
    mov ax, 0xfffe                   ; 0xa9a4
    call ds_dispatch_f40b            ; 0xa9a7
    mov ax, 0x26                     ; 0xa9aa
    imul word [bp + 0x4]             ; 0xa9ad
    mov bx, ax                       ; 0xa9b0
    mov al, byte [bx - 0x7b12]       ; 0xa9b2
    sub ah, ah                       ; 0xa9b6
    mov word [bp - 0x0002], ax       ; 0xa9b8
    inc byte [bx - 0x7b13]           ; 0xa9bb
    mov al, byte [bx - 0x7b13]       ; 0xa9bf
    sub ah, ah                       ; 0xa9c3
    push ax                          ; 0xa9c5
    call ds_dispatch_b7a9            ; 0xa9c6
    pop cx                           ; 0xa9c9
    cmp ax, strict word 0x18         ; 0xa9ca
    jle short @..api_idx_0002_27.l1  ; 0xa9cd
    mov ax, 0x26                     ; 0xa9cf
    imul word [bp + 0x4]             ; 0xa9d2
    mov bx, ax                       ; 0xa9d5
    mov al, byte [bx - 0x7b15]       ; 0xa9d7
    sub ah, ah                       ; 0xa9db
    push ax                          ; 0xa9dd
    mov ax, 7                        ; 0xa9de
    push ax                          ; 0xa9e1
    push word [bp - 0x0002]          ; 0xa9e2
    push word [bp + 0x4]             ; 0xa9e5
    call api_idx_0002_22             ; 0xa9e8
    add sp, byte 8                   ; 0xa9eb
    mov ax, 1                        ; 0xa9ee
    push ax                          ; 0xa9f1
    mov ax, word [bp - 0x0002]       ; 0xa9f2
    add ax, strict word 0xc          ; 0xa9f5
    push ax                          ; 0xa9f8
    mov ax, 0x26                     ; 0xa9f9
    imul word [bp + 0x4]             ; 0xa9fc
    add ax, 0x850a                   ; 0xa9ff
    push ax                          ; 0xaa02
    call ds_dispatch_ec41            ; 0xaa03
    add sp, byte 6                   ; 0xaa06
    mov ax, 0x26                     ; 0xaa09
    imul word [bp + 0x4]             ; 0xaa0c
    mov bx, ax                       ; 0xaa0f
    mov byte [bx - 0x7b16], 0        ; 0xaa11
    mov ax, 6                        ; 0xaa16
    imul word [bp - 0x0002]          ; 0xaa19
    mov bx, ax                       ; 0xaa1c
    cmp byte [bx - 0x7b56], 0xff     ; 0xaa1e
    je short @..api_idx_0002_27.l1   ; 0xaa23
    mov al, byte [bx - 0x7b56]       ; 0xaa25
    push ax                          ; 0xaa29
    mov ax, 0x26                     ; 0xaa2a
    imul word [bp + 0x4]             ; 0xaa2d
    mov bx, ax                       ; 0xaa30
    pop ax                           ; 0xaa32
    mov byte [bx - 0x7b15], al       ; 0xaa33
    push word [bp + 0x4]             ; 0xaa37
    call math_loc_946a               ; 0xaa3a
    pop cx                           ; 0xaa3d
@..api_idx_0002_27.l1:
    ret                              ; 0xaa3e
math_loc_aa3f:
    mov ax, 0                        ; 0xaa3f
    call ds_dispatch_f40b            ; 0xaa42
    mov ax, 0x10                     ; 0xaa45
    push ax                          ; 0xaa48
    call ds_dispatch_b7a9            ; 0xaa49
    pop cx                           ; 0xaa4c
    push ax                          ; 0xaa4d
    mov ax, 0x26                     ; 0xaa4e
    imul word [bp + 0x4]             ; 0xaa51
    mov bx, ax                       ; 0xaa54
    pop ax                           ; 0xaa56
    mov byte [bx - 0x7b13], al       ; 0xaa57
    mov al, byte [bx - 0x7b14]       ; 0xaa5b
    cmp al, byte [bx - 0x7b17]       ; 0xaa5f
    jne short @..math_loc_aa3f.l2    ; 0xaa63
    mov ax, 0xa                      ; 0xaa65
    push ax                          ; 0xaa68
    call ds_dispatch_b7a9            ; 0xaa69
    pop cx                           ; 0xaa6c
    test ax, ax                      ; 0xaa6d
    jne short @..math_loc_aa3f.l2    ; 0xaa6f
    mov ax, 0x26                     ; 0xaa71
    imul word [bp + 0x4]             ; 0xaa74
    mov bx, ax                       ; 0xaa77
    mov al, byte [bx - 0x7aff]       ; 0xaa79
    mov byte [bx - 0x7b00], al       ; 0xaa7d
    mov ax, 0xa                      ; 0xaa81
    push ax                          ; 0xaa84
    call ds_dispatch_b7a9            ; 0xaa85
    pop cx                           ; 0xaa88
    test ax, ax                      ; 0xaa89
    jne short @..math_loc_aa3f.l1    ; 0xaa8b
    mov ax, 0x26                     ; 0xaa8d
    imul word [bp + 0x4]             ; 0xaa90
    mov bx, ax                       ; 0xaa93
    mov byte [bx - 0x7b16], 2        ; 0xaa95
    mov byte [bx - 0x7b13], 0        ; 0xaa9a
    ret                              ; 0xaa9f
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
math_loc_aad3:
    mov ax, 0                        ; 0xaad3
    call ds_dispatch_f40b            ; 0xaad6
    mov ax, 0x26                     ; 0xaad9
    imul word [bp + 0x4]             ; 0xaadc
    mov bx, ax                       ; 0xaadf
    cmp byte [bx - 0x7b00], 0        ; 0xaae1
    jg short @..math_loc_aad3.l1     ; 0xaae6
    ret                              ; 0xaae8
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
api_idx_0032:
    mov ax, 0xffce                   ; 0xab9b
    call ds_dispatch_f40b            ; 0xab9e
    mov ax, 0                        ; 0xaba1
    push ax                          ; 0xaba4
    mov ax, 0x1e4                    ; 0xaba5
    push ax                          ; 0xaba8
    mov ax, 0x9c42                   ; 0xaba9
    push ax                          ; 0xabac
    call ds_dispatch_f306            ; 0xabad
    add sp, byte 6                   ; 0xabb0
    mov ax, 0                        ; 0xabb3
    push ax                          ; 0xabb6
    mov ax, 0x2c                     ; 0xabb7
    push ax                          ; 0xabba
    lea ax, word [bp - 0x0032]       ; 0xabbb
    push ax                          ; 0xabbe
    call ds_dispatch_f306            ; 0xabbf
    add sp, byte 6                   ; 0xabc2
    mov word [bp - 0x0004], 0        ; 0xabc5
@..api_idx_0032.l1:
    mov ax, word [bp - 0x0004]       ; 0xabca
    shl ax, 1                        ; 0xabcd
    shl ax, 1                        ; 0xabcf
    mov bx, ax                       ; 0xabd1
    mov al, byte [bx - 0x7687]       ; 0xabd3
    cbw                              ; 0xabd7
    cmp ax, word [data_830c]         ; 0xabd8
    jne short @..api_idx_0032.l2     ; 0xabdc
    mov al, byte [bp - 0x0004]       ; 0xabde
    mov byte [data_8809], al         ; 0xabe1
    mov byte [data_880a], al         ; 0xabe4
@..api_idx_0032.l2:
    inc word [bp - 0x0004]           ; 0xabe7
    mov ax, word [bp - 0x0004]       ; 0xabea
    cmp ax, strict word 0x1a         ; 0xabed
    jl short @..api_idx_0032.l1      ; 0xabf0
    mov word [bp - 0x0006], 0        ; 0xabf2
@..api_idx_0032.l3:
    mov ax, 0x16                     ; 0xabf7
    push ax                          ; 0xabfa
    call ds_dispatch_b7a9            ; 0xabfb
    pop cx                           ; 0xabfe
    mov word [bp - 0x0002], ax       ; 0xabff
    mov ax, word [bp - 0x0002]       ; 0xac02
    shl ax, 1                        ; 0xac05
    mov bx, ax                       ; 0xac07
    add bx, bp                       ; 0xac09
    cmp word [bx - 0x0032], byte 0   ; 0xac0b
    jne short @..api_idx_0032.l3     ; 0xac0f
    mov ax, word [bp - 0x0002]       ; 0xac11
    shl ax, 1                        ; 0xac14
    mov bx, ax                       ; 0xac16
    add bx, bp                       ; 0xac18
    mov word [bx - 0x0032], 1        ; 0xac1a
    push word [bp - 0x0002]          ; 0xac1f
    call math_loc_aad3               ; 0xac22
    pop cx                           ; 0xac25
    inc word [bp - 0x0006]           ; 0xac26
    cmp word [bp - 0x0006], byte 0x16 ; 0xac29
    jl short @..api_idx_0032.l3      ; 0xac2d
    ret                              ; 0xac2f

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

