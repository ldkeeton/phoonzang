%include "structs/structs.inc"
%include "structs/loc_290d.inc"
org 0
bits 16
%include "labels/vpops_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xcd, 0x4e, 0x98, 0x90

data_0002 equ 0x0002
data_0375 equ 0x0375
data_03b8 equ 0x03b8
data_083d equ 0x083d
data_0e32 equ 0x0e32
data_0e36 equ 0x0e36
loc_290d equ 0x290d
loc_2925 equ 0x2925
loc_295e equ 0x295e
data_3b93 equ 0x3b93
data_48eb equ 0x48eb
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_69c8 equ 0x69c8
data_7abc equ 0x7abc
data_7b04 equ 0x7b04
data_82e8 equ 0x82e8
data_82ee equ 0x82ee
data_830a equ 0x830a
data_8454 equ 0x8454
data_845e equ 0x845e
data_8466 equ 0x8466
data_8468 equ 0x8468
data_8482 equ 0x8482
data_8484 equ 0x8484
data_848e equ 0x848e
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8f20 equ 0x8f20
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_906c equ 0x906c
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_90d6 equ 0x90d6
data_9386 equ 0x9386
data_9388 equ 0x9388
data_938a equ 0x938a
data_938c equ 0x938c

    db 0x3e, 0x00, 0xb8, 0x02, 0xe4, 0x9e
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [data_830a], byte 0x0c  ; 0x0014
    jne short @..local.l1            ; 0x0019
    call api_idx_0004_5              ; 0x001b
@..local.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
api_idx_002a:
    mov ax, 0xffd6                   ; 0x0022
    call ds_dispatch_f40b            ; 0x0025
    mov ax, 0                        ; 0x0028
    push ax                          ; 0x002b
    mov ax, 0x28                     ; 0x002c
    push ax                          ; 0x002f
    lea ax, word [bp - 0x002a]       ; 0x0030
    push ax                          ; 0x0033
    call ds_dispatch_f306            ; 0x0034
    add sp, byte 6                   ; 0x0037
    push word [bp + 0x4]             ; 0x003a
    lea ax, word [bp - 0x002a]       ; 0x003d
    push ax                          ; 0x0040
    call ds_dispatch_f364            ; 0x0041
    add sp, byte 4                   ; 0x0044
    mov ax, 0x2f                     ; 0x0047
    push ax                          ; 0x004a
    lea ax, word [bp - 0x002a]       ; 0x004b
    push ax                          ; 0x004e
    call ds_dispatch_ee4a            ; 0x004f
    add sp, byte 4                   ; 0x0052
    mov word [bp - 0x0002], ax       ; 0x0055
    cmp ax, strict word 0xffff       ; 0x0058
    jne short @..api_idx_002a.l1     ; 0x005b
    lea ax, word [bp - 0x002a]       ; 0x005d
    push ax                          ; 0x0060
    call ds_dispatch_fa90            ; 0x0061
    pop cx                           ; 0x0064
    mov word [bp - 0x0002], ax       ; 0x0065
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x0068
    jle short @..api_idx_002a.l2     ; 0x006c
    mov word [bp - 0x0002], 0xa      ; 0x006e
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x0073
    add bx, bp                       ; 0x0076
    mov byte [bx - 0x002a], 0        ; 0x0078
    mov byte [bx - 0x001f], 0        ; 0x007c
    mov ax, 0                        ; 0x0080
    push ax                          ; 0x0083
    push word [bp + 0xa]             ; 0x0084
    call ds_dispatch_e823            ; 0x0087
    add sp, byte 4                   ; 0x008a
    push word [bp + 0x8]             ; 0x008d
    push word [bp + 0x6]             ; 0x0090
    call ds_dispatch_e809            ; 0x0093
    add sp, byte 4                   ; 0x0096
    mov ax, 0                        ; 0x0099
    push ax                          ; 0x009c
    lea ax, word [bp - 0x002a]       ; 0x009d
    push ax                          ; 0x00a0
    call ds_dispatch_e84e            ; 0x00a1
    add sp, byte 4                   ; 0x00a4
    mov ax, word [bp + 0x8]          ; 0x00a7
    add ax, strict word 6            ; 0x00aa
    push ax                          ; 0x00ad
    push word [bp + 0x6]             ; 0x00ae
    call ds_dispatch_e809            ; 0x00b1
    add sp, byte 4                   ; 0x00b4
    mov ax, 0                        ; 0x00b7
    push ax                          ; 0x00ba
    mov ax, word [bp - 0x0002]       ; 0x00bb
    lea cx, word [bp - 0x0029]       ; 0x00be
    add ax, cx                       ; 0x00c1
    push ax                          ; 0x00c3
    call ds_dispatch_e84e            ; 0x00c4
    add sp, byte 4                   ; 0x00c7
    ret                              ; 0x00ca
api_idx_000a:
    mov ax, 0xfff6                   ; 0x00cb
    call ds_dispatch_f40b            ; 0x00ce
    mov ax, 0                        ; 0x00d1
    push ax                          ; 0x00d4
    push word [data_8d10]            ; 0x00d5
    push word [data_8d0e]            ; 0x00d9
    call ds_dispatch_e94f            ; 0x00dd
    add sp, byte 6                   ; 0x00e0
    mov ax, 0                        ; 0x00e3
    push ax                          ; 0x00e6
    push word [data_8d0c]            ; 0x00e7
    push word [data_8d0a]            ; 0x00eb
    call ds_dispatch_e94f            ; 0x00ef
    add sp, byte 6                   ; 0x00f2
    mov byte [bp - 0x000a], 1        ; 0x00f5
    mov byte [bp - 0x0009], 0        ; 0x00f9
    mov ax, 0                        ; 0x00fd
    push ax                          ; 0x0100
    push ax                          ; 0x0101
    lea ax, word [bp - 0x000a]       ; 0x0102
    push ax                          ; 0x0105
    mov ax, 0                        ; 0x0106
    push ax                          ; 0x0109
    mov ax, 0xc7                     ; 0x010a
    push ax                          ; 0x010d
    mov ax, 0                        ; 0x010e
    push ax                          ; 0x0111
    mov ax, 0x13f                    ; 0x0112
    push ax                          ; 0x0115
    mov ax, 0                        ; 0x0116
    push ax                          ; 0x0119
    mov ax, 0x9a                     ; 0x011a
    push ax                          ; 0x011d
    mov ax, 0x37                     ; 0x011e
    push ax                          ; 0x0121
    mov ax, 0xe                      ; 0x0122
    push ax                          ; 0x0125
    call ds_dispatch_efd1            ; 0x0126
    add sp, byte 0x16                ; 0x0129
    cmp word [bp + 0x4], byte 0      ; 0x012c
    je short @..api_idx_000a.l1      ; 0x0130
    mov ax, 0xc2                     ; 0x0132
    push ax                          ; 0x0135
    mov ax, 0x13a                    ; 0x0136
    push ax                          ; 0x0139
    mov ax, 0x93                     ; 0x013a
    push ax                          ; 0x013d
    mov ax, 8                        ; 0x013e
    push ax                          ; 0x0141
    call ds_dispatch_e8da            ; 0x0142
    add sp, byte 8                   ; 0x0145
@..api_idx_000a.l1:
    ret                              ; 0x0148
math_loc_0149:
    mov ax, 0                        ; 0x0149
    call ds_dispatch_f40b            ; 0x014c
    mov ax, 0                        ; 0x014f
    push ax                          ; 0x0152
    push word [bp + 0xa]             ; 0x0153
    call ds_dispatch_e823            ; 0x0156
    add sp, byte 4                   ; 0x0159
    push word [bp + 0x8]             ; 0x015c
    push word [bp + 0x4]             ; 0x015f
    call ds_dispatch_fa90            ; 0x0162
    pop cx                           ; 0x0165
    mov cx, 6                        ; 0x0166
    imul cx                          ; 0x0169
    mov cx, data_0002                ; 0x016b
    cwd                              ; 0x016e
    idiv cx                          ; 0x016f
    mov cx, ax                       ; 0x0171
    mov ax, word [bp + 0x6]          ; 0x0173
    sub ax, cx                       ; 0x0176
    push ax                          ; 0x0178
    call ds_dispatch_e809            ; 0x0179
    add sp, byte 4                   ; 0x017c
    mov ax, 0                        ; 0x017f
    push ax                          ; 0x0182
    push word [bp + 0x4]             ; 0x0183
    call ds_dispatch_e84e            ; 0x0186
    add sp, byte 4                   ; 0x0189
    ret                              ; 0x018c
api_idx_0006:
    mov ax, 0xfffa                   ; 0x018d
    call ds_dispatch_f40b            ; 0x0190
    mov ax, word [bp + 0x4]          ; 0x0193
    jmp near @..api_idx_0006.l5      ; 0x0196
@..api_idx_0006.l1:
    mov ax, 0x9098                   ; 0x0199
    push ax                          ; 0x019c
    mov ax, 0xc2                     ; 0x019d
    push ax                          ; 0x01a0
    mov ax, 0xe0                     ; 0x01a1
    push ax                          ; 0x01a4
    mov ax, 0xa4                     ; 0x01a5
    push ax                          ; 0x01a8
    mov ax, 0x62                     ; 0x01a9
    push ax                          ; 0x01ac
    call ds_dispatch_c283            ; 0x01ad
    add sp, byte 0x0a                ; 0x01b0
    mov word [bp - 0x0002], ax       ; 0x01b3
    mov ax, 0                        ; 0x01b6
    push ax                          ; 0x01b9
    call api_idx_000a                ; 0x01ba
    pop cx                           ; 0x01bd
    mov ax, 1                        ; 0x01be
    push ax                          ; 0x01c1
    push word [bp - 0x0002]          ; 0x01c2
    call ds_dispatch_c459            ; 0x01c5
    add sp, byte 4                   ; 0x01c8
    jmp near @..api_idx_0006.l8      ; 0x01cb
@..api_idx_0006.l2:
    mov ax, 0x909f                   ; 0x01ce
    push ax                          ; 0x01d1
    mov ax, 0xc2                     ; 0x01d2
    push ax                          ; 0x01d5
    mov ax, 0x60                     ; 0x01d6
    push ax                          ; 0x01d9
    mov ax, 0xa5                     ; 0x01da
    push ax                          ; 0x01dd
    mov ax, 8                        ; 0x01de
    push ax                          ; 0x01e1
    call ds_dispatch_c283            ; 0x01e2
    add sp, byte 0x0a                ; 0x01e5
    mov word [bp - 0x0002], ax       ; 0x01e8
    mov ax, 0x90a6                   ; 0x01eb
    push ax                          ; 0x01ee
    mov ax, 0xc2                     ; 0x01ef
    push ax                          ; 0x01f2
    mov ax, 0x13a                    ; 0x01f3
    push ax                          ; 0x01f6
    mov ax, 0xa5                     ; 0x01f7
    push ax                          ; 0x01fa
    mov ax, 0xe7                     ; 0x01fb
    push ax                          ; 0x01fe
    call ds_dispatch_c283            ; 0x01ff
    add sp, byte 0x0a                ; 0x0202
    mov word [bp - 0x0004], ax       ; 0x0205
    mov ax, 0x90ad                   ; 0x0208
    push ax                          ; 0x020b
    mov ax, 0x9f                     ; 0x020c
    push ax                          ; 0x020f
    mov ax, 0xcd                     ; 0x0210
    push ax                          ; 0x0213
    mov ax, 0x93                     ; 0x0214
    push ax                          ; 0x0217
    mov ax, 0x73                     ; 0x0218
    push ax                          ; 0x021b
    call ds_dispatch_c283            ; 0x021c
    add sp, byte 0x0a                ; 0x021f
    mov word [bp - 0x0006], ax       ; 0x0222
    mov ax, 0                        ; 0x0225
    push ax                          ; 0x0228
    call api_idx_000a                ; 0x0229
    pop cx                           ; 0x022c
    mov ax, 1                        ; 0x022d
    push ax                          ; 0x0230
    push word [bp - 0x0006]          ; 0x0231
    call ds_dispatch_c459            ; 0x0234
    add sp, byte 4                   ; 0x0237
    mov ax, 1                        ; 0x023a
    push ax                          ; 0x023d
    push word [bp - 0x0004]          ; 0x023e
    call ds_dispatch_c459            ; 0x0241
    add sp, byte 4                   ; 0x0244
    mov ax, 1                        ; 0x0247
    push ax                          ; 0x024a
    push word [bp - 0x0002]          ; 0x024b
    call ds_dispatch_c459            ; 0x024e
    add sp, byte 4                   ; 0x0251
    jmp short @..api_idx_0006.l8     ; 0x0254
@..api_idx_0006.l3:
    mov ax, 0x90b4                   ; 0x0256
    push ax                          ; 0x0259
    mov ax, 0xc2                     ; 0x025a
    push ax                          ; 0x025d
    mov ax, 0x13a                    ; 0x025e
    push ax                          ; 0x0261
    mov ax, 0xa4                     ; 0x0262
    push ax                          ; 0x0265
    mov ax, 8                        ; 0x0266
    push ax                          ; 0x0269
    call ds_dispatch_c283            ; 0x026a
    add sp, byte 0x0a                ; 0x026d
    mov word [bp - 0x0002], ax       ; 0x0270
    mov ax, 0                        ; 0x0273
    push ax                          ; 0x0276
    call api_idx_000a                ; 0x0277
    pop cx                           ; 0x027a
    mov ax, 1                        ; 0x027b
    push ax                          ; 0x027e
    push word [bp - 0x0002]          ; 0x027f
    call ds_dispatch_c459            ; 0x0282
    add sp, byte 4                   ; 0x0285
    jmp short @..api_idx_0006.l8     ; 0x0288
@..api_idx_0006.l4:
    mov ax, 0                        ; 0x028a
    push ax                          ; 0x028d
    call api_idx_000a                ; 0x028e
    pop cx                           ; 0x0291
    jmp short @..api_idx_0006.l8     ; 0x0292
@..api_idx_0006.l5:
    cmp ax, strict word 0            ; 0x0294
    jne short @..api_idx_0006.l6     ; 0x0297
    jmp near @..api_idx_0006.l1      ; 0x0299
@..api_idx_0006.l6:
    cmp ax, strict word 1            ; 0x029c
    jne short @..api_idx_0006.l7     ; 0x029f
    jmp near @..api_idx_0006.l2      ; 0x02a1
@..api_idx_0006.l7:
    cmp ax, strict word 2            ; 0x02a4
    je short @..api_idx_0006.l3      ; 0x02a7
    cmp ax, strict word 3            ; 0x02a9
    je short @..api_idx_0006.l4      ; 0x02ac
@..api_idx_0006.l8:
    ret                              ; 0x02ae
loc_02af:
    mov ax, 0                        ; 0x02af
    call ds_dispatch_f40b            ; 0x02b2
    mov ax, word [bp + 0x4]          ; 0x02b5
    jmp near @..local.l6             ; 0x02b8
@..local.l2:
    mov ax, 0x9f                     ; 0x02bb
    push ax                          ; 0x02be
    mov ax, 0xcd                     ; 0x02bf
    push ax                          ; 0x02c2
    mov ax, 0x93                     ; 0x02c3
    push ax                          ; 0x02c6
    mov ax, 0x73                     ; 0x02c7
    push ax                          ; 0x02ca
    call ds_dispatch_e8da            ; 0x02cb
    add sp, byte 8                   ; 0x02ce
    mov ax, 0xc2                     ; 0x02d1
    push ax                          ; 0x02d4
    mov ax, 0x60                     ; 0x02d5
    push ax                          ; 0x02d8
    mov ax, 0xa5                     ; 0x02d9
    push ax                          ; 0x02dc
    mov ax, 8                        ; 0x02dd
    push ax                          ; 0x02e0
    call ds_dispatch_e8da            ; 0x02e1
    add sp, byte 8                   ; 0x02e4
    mov ax, 0xc2                     ; 0x02e7
    push ax                          ; 0x02ea
    mov ax, 0x13a                    ; 0x02eb
    push ax                          ; 0x02ee
    mov ax, 0xa5                     ; 0x02ef
    push ax                          ; 0x02f2
    mov ax, 0xe7                     ; 0x02f3
    push ax                          ; 0x02f6
    call ds_dispatch_e8da            ; 0x02f7
    add sp, byte 8                   ; 0x02fa
    jmp short @..local.l8            ; 0x02fd
@..local.l3:
    mov ax, 0xc2                     ; 0x02ff
    push ax                          ; 0x0302
    mov ax, 0xe0                     ; 0x0303
    push ax                          ; 0x0306
    mov ax, 0xa4                     ; 0x0307
    push ax                          ; 0x030a
    mov ax, 0x62                     ; 0x030b
    push ax                          ; 0x030e
    call ds_dispatch_e8da            ; 0x030f
    add sp, byte 8                   ; 0x0312
    jmp short @..local.l8            ; 0x0315
@..local.l4:
    mov ax, 0x9f                     ; 0x0317
    push ax                          ; 0x031a
    mov ax, 0xcd                     ; 0x031b
    push ax                          ; 0x031e
    mov ax, 0x93                     ; 0x031f
    push ax                          ; 0x0322
    mov ax, 0x73                     ; 0x0323
    push ax                          ; 0x0326
    call ds_dispatch_e8da            ; 0x0327
    add sp, byte 8                   ; 0x032a
    jmp short @..local.l8            ; 0x032d
@..local.l5:
    mov ax, 0xc2                     ; 0x032f
    push ax                          ; 0x0332
    mov ax, 0x13a                    ; 0x0333
    push ax                          ; 0x0336
    mov ax, 0x93                     ; 0x0337
    push ax                          ; 0x033a
    mov ax, 8                        ; 0x033b
    push ax                          ; 0x033e
    call ds_dispatch_e8da            ; 0x033f
    add sp, byte 8                   ; 0x0342
    jmp short @..local.l8            ; 0x0345
@..local.l6:
    cmp ax, strict word 0            ; 0x0347
    jne short @..local.l7            ; 0x034a
    jmp near @..local.l2             ; 0x034c
@..local.l7:
    cmp ax, strict word 1            ; 0x034f
    je short @..local.l3             ; 0x0352
    cmp ax, strict word 2            ; 0x0354
    je short @..local.l4             ; 0x0357
    cmp ax, strict word 3            ; 0x0359
    je short @..local.l5             ; 0x035c
@..local.l8:
    ret                              ; 0x035e
api_idx_0054:
    mov ax, 0xffac                   ; 0x035f
    call ds_dispatch_f40b            ; 0x0362
    mov ax, 1                        ; 0x0365
    push ax                          ; 0x0368
    call api_idx_0006                ; 0x0369
    pop cx                           ; 0x036c
    mov word [bp - 0x0002], 1        ; 0x036d
    jmp near @..api_idx_0054.l9      ; 0x0372
@..api_idx_0054.l1:
    mov ax, word [bp - 0x0002]       ; 0x0375
    shl ax, 1                        ; 0x0378
    mov bx, ax                       ; 0x037a
    mov bx, word [bx - 0x7b7e]       ; 0x037c
    mov byte [bx + 0x1a2], 0         ; 0x0380
    mov word [bp - 0x0004], 0        ; 0x0385
    jmp short @..api_idx_0054.l4     ; 0x038a
@..api_idx_0054.l2:
    mov ax, 0x2c                     ; 0x038c
    imul word [bp - 0x0004]          ; 0x038f
    mov si, ax                       ; 0x0392
    mov ax, word [bp - 0x0002]       ; 0x0394
    shl ax, 1                        ; 0x0397
    mov bx, ax                       ; 0x0399
    mov bx, word [bx - 0x7b7e]       ; 0x039b
    cmp byte [bx + si + 0x22], data_0002 ; 0x039f
    jae short @..api_idx_0054.l3     ; 0x03a3
    cmp byte [bx + si + 0x11], 0     ; 0x03a5
    jne short @..api_idx_0054.l3     ; 0x03a9
    cmp byte [bx + si + 0x10], 0     ; 0x03ab
    jne short @..api_idx_0054.l3     ; 0x03af
    inc byte [bx + 0x1a2]            ; 0x03b1
@..api_idx_0054.l3:
    inc word [bp - 0x0004]           ; 0x03b5
@..api_idx_0054.l4:
    mov ax, word [bp - 0x0002]       ; 0x03b8
    shl ax, 1                        ; 0x03bb
    mov bx, ax                       ; 0x03bd
    mov bx, word [bx - 0x7b7e]       ; 0x03bf
    mov al, byte [bx + 0x1a1]        ; 0x03c3
    sub ah, ah                       ; 0x03c7
    cmp ax, word [bp - 0x0004]       ; 0x03c9
    jg short @..api_idx_0054.l2      ; 0x03cc
    mov ax, word [bp - 0x0002]       ; 0x03ce
    cmp ax, word [bp + 0x4]          ; 0x03d1
    jne short @..api_idx_0054.l5     ; 0x03d4
    mov ax, 0x5f                     ; 0x03d6
    push ax                          ; 0x03d9
    mov ax, 6                        ; 0x03da
    imul word [bp - 0x0002]          ; 0x03dd
    add ax, 0xa2                     ; 0x03e0
    push ax                          ; 0x03e3
    mov ax, 0xdd                     ; 0x03e4
    push ax                          ; 0x03e7
    mov ax, 6                        ; 0x03e8
    imul word [bp - 0x0002]          ; 0x03eb
    add ax, 0x9e                     ; 0x03ee
    push ax                          ; 0x03f1
    mov ax, 0x62                     ; 0x03f2
    push ax                          ; 0x03f5
    call ds_dispatch_e901            ; 0x03f6
    add sp, byte 0x0a                ; 0x03f9
    mov ax, 0x5f                     ; 0x03fc
    push ax                          ; 0x03ff
    mov ax, 1                        ; 0x0400
    push ax                          ; 0x0403
    call ds_dispatch_e823            ; 0x0404
    add sp, byte 4                   ; 0x0407
    jmp short @..api_idx_0054.l6     ; 0x040a
@..api_idx_0054.l5:
    mov ax, 0                        ; 0x040c
    push ax                          ; 0x040f
    mov ax, 0x5f                     ; 0x0410
    push ax                          ; 0x0413
    call ds_dispatch_e823            ; 0x0414
    add sp, byte 4                   ; 0x0417
@..api_idx_0054.l6:
    mov ax, 6                        ; 0x041a
    imul word [bp - 0x0002]          ; 0x041d
    add ax, 0x9e                     ; 0x0420
    push ax                          ; 0x0423
    mov ax, 0x63                     ; 0x0424
    push ax                          ; 0x0427
    call ds_dispatch_e809            ; 0x0428
    add sp, byte 4                   ; 0x042b
    mov ax, 0                        ; 0x042e
    push ax                          ; 0x0431
    mov ax, 1                        ; 0x0432
    push ax                          ; 0x0435
    mov ax, word [bp - 0x0002]       ; 0x0436
    shl ax, 1                        ; 0x0439
    mov bx, ax                       ; 0x043b
    mov bx, word [bx - 0x7b7e]       ; 0x043d
    mov al, byte [bx + 0x1a1]        ; 0x0441
    sub ah, ah                       ; 0x0445
    push ax                          ; 0x0447
    call ds_dispatch_b2e7            ; 0x0448
    add sp, byte 6                   ; 0x044b
    mov ax, 0                        ; 0x044e
    push ax                          ; 0x0451
    mov ax, 0x20                     ; 0x0452
    push ax                          ; 0x0455
    call ds_dispatch_e830            ; 0x0456
    add sp, byte 4                   ; 0x0459
    mov ax, 0                        ; 0x045c
    push ax                          ; 0x045f
    mov ax, word [bp - 0x0002]       ; 0x0460
    shl ax, 1                        ; 0x0463
    mov bx, ax                       ; 0x0465
    mov bx, word [bx - 0x7b7e]       ; 0x0467
    cmp byte [bx + 0x1a1], 1         ; 0x046b
    jne short @..api_idx_0054.l7     ; 0x0470
    mov ax, 0                        ; 0x0472
    jmp short @..api_idx_0054.l8     ; 0x0475
@..api_idx_0054.l7:
    mov ax, 1                        ; 0x0477
@..api_idx_0054.l8:
    mov cx, 4                        ; 0x047a
    shl ax, cl                       ; 0x047d
    mov cx, ax                       ; 0x047f
    push cx                          ; 0x0481
    mov al, byte [bx + 0x1a0]        ; 0x0482
    sub ah, ah                       ; 0x0486
    mov cx, 5                        ; 0x0488
    shl ax, cl                       ; 0x048b
    pop cx                           ; 0x048d
    add cx, ax                       ; 0x048e
    mov ax, word [bp - 0x0002]       ; 0x0490
    shl ax, 1                        ; 0x0493
    mov bx, ax                       ; 0x0495
    mov ax, word [bx - 0x7b70]       ; 0x0497
    add ax, cx                       ; 0x049b
    push ax                          ; 0x049d
    call ds_dispatch_e84e            ; 0x049e
    add sp, byte 4                   ; 0x04a1
    mov ax, 6                        ; 0x04a4
    imul word [bp - 0x0002]          ; 0x04a7
    add ax, 0x9e                     ; 0x04aa
    push ax                          ; 0x04ad
    mov ax, 0xce                     ; 0x04ae
    push ax                          ; 0x04b1
    call ds_dispatch_e809            ; 0x04b2
    add sp, byte 4                   ; 0x04b5
    mov ax, 0                        ; 0x04b8
    push ax                          ; 0x04bb
    mov ax, 0x28                     ; 0x04bc
    push ax                          ; 0x04bf
    call ds_dispatch_e830            ; 0x04c0
    add sp, byte 4                   ; 0x04c3
    mov ax, 0                        ; 0x04c6
    push ax                          ; 0x04c9
    mov ax, 1                        ; 0x04ca
    push ax                          ; 0x04cd
    mov ax, word [bp - 0x0002]       ; 0x04ce
    shl ax, 1                        ; 0x04d1
    mov bx, ax                       ; 0x04d3
    mov bx, word [bx - 0x7b7e]       ; 0x04d5
    mov al, byte [bx + 0x1a2]        ; 0x04d9
    sub ah, ah                       ; 0x04dd
    push ax                          ; 0x04df
    call ds_dispatch_b2e7            ; 0x04e0
    add sp, byte 6                   ; 0x04e3
    mov ax, 0                        ; 0x04e6
    push ax                          ; 0x04e9
    mov ax, 0x29                     ; 0x04ea
    push ax                          ; 0x04ed
    call ds_dispatch_e830            ; 0x04ee
    add sp, byte 4                   ; 0x04f1
    inc word [bp - 0x0002]           ; 0x04f4
@..api_idx_0054.l9:
    mov ax, word [bp - 0x0002]       ; 0x04f7
    cmp ax, word [data_8466]         ; 0x04fa
    jg short @..api_idx_0054.l10     ; 0x04fe
    jmp near @..api_idx_0054.l1      ; 0x0500
@..api_idx_0054.l10:
    ret                              ; 0x0503
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0504
    call ds_dispatch_f40b            ; 0x0507
    mov ax, word [bp + 0x4]          ; 0x050a
    shl ax, 1                        ; 0x050d
    mov bx, ax                       ; 0x050f
    mov bx, word [bx - 0x7b7e]       ; 0x0511
    cmp byte [bx + 0x19f], 0xff      ; 0x0515
    jne short @..local.l9            ; 0x051a
    ret                              ; 0x051c
@..local.l9:
    mov al, byte [bx + 0x19f]        ; 0x051d
    cbw                              ; 0x0521
    mov word [bp - 0x0002], ax       ; 0x0522
    mov word [bp - 0x000a], 0        ; 0x0525
    cmp word [bp + 0xa], byte 0xff   ; 0x052a
    jne short @..local.l10           ; 0x052e
    mov word [bp + 0xa], 0           ; 0x0530
    mov cx, 0x15e                    ; 0x0535
    imul cx                          ; 0x0538
    mov bx, ax                       ; 0x053a
    mov al, byte [bx + 0x6b75]       ; 0x053c
    sub ah, ah                       ; 0x0540
    cmp ax, 0xfe                     ; 0x0542
    je short @..local.l10            ; 0x0545
    mov word [bp - 0x000a], 1        ; 0x0547
@..local.l10:
    mov ax, 0x15e                    ; 0x054c
    imul word [bp - 0x0002]          ; 0x054f
    add ax, word [bp + 0xa]          ; 0x0552
    mov bx, ax                       ; 0x0555
    mov al, byte [bx + 0x6a1a]       ; 0x0557
    sub ah, ah                       ; 0x055b
    mov word [bp - 0x0004], ax       ; 0x055d
    jmp near @..local.l16            ; 0x0560
@..local.l11:
    mov ax, 0x15e                    ; 0x0563
    imul word [bp - 0x0002]          ; 0x0566
    add ax, word [bp - 0x0004]       ; 0x0569
    mov bx, ax                       ; 0x056c
    mov al, byte [bx + 0x6a22]       ; 0x056e
    sub ah, ah                       ; 0x0572
    mov word [bp - 0x0006], ax       ; 0x0574
    cmp word [bp + 0xa], byte 0      ; 0x0577
    jne short @..local.l14           ; 0x057b
    mov ax, 0x15e                    ; 0x057d
    imul word [bp - 0x0002]          ; 0x0580
    mov bx, ax                       ; 0x0583
    cmp byte [bx + 0x6b75], 0        ; 0x0585
    jbe short @..local.l14           ; 0x058a
    mov al, byte [bx + 0x6b75]       ; 0x058c
    sub ah, ah                       ; 0x0590
    cmp ax, 0xfe                     ; 0x0592
    jge short @..local.l14           ; 0x0595
    cmp ax, 0xfd                     ; 0x0597
    jne short @..local.l12           ; 0x059a
    mov word [bp - 0x0006], 0        ; 0x059c
    mov word [bp - 0x0008], 0        ; 0x05a1
    jmp short @..local.l13           ; 0x05a6
@..local.l12:
    mov word [bp - 0x0008], ax       ; 0x05a8
    mov ax, word [bp + 0x4]          ; 0x05ab
    shl ax, 1                        ; 0x05ae
    mov bx, ax                       ; 0x05b0
    mov bx, word [bx - 0x7b70]       ; 0x05b2
    cmp byte [bx + 0xd7], 0x47       ; 0x05b6
    jne short @..local.l13           ; 0x05bb
    cmp word [bp - 0x000a], byte 0   ; 0x05bd
    jne short @..local.l13           ; 0x05c1
    mov word [bp - 0x0006], 1        ; 0x05c3
    mov word [bp - 0x0008], 0xb      ; 0x05c8
@..local.l13:
    jmp short @..local.l15           ; 0x05cd
@..local.l14:
    mov ax, 0x15e                    ; 0x05cf
    imul word [bp - 0x0002]          ; 0x05d2
    add ax, word [bp - 0x0004]       ; 0x05d5
    mov bx, ax                       ; 0x05d8
    mov al, byte [bx + 0x6a2c]       ; 0x05da
    sub ah, ah                       ; 0x05de
    push ax                          ; 0x05e0
    call ds_dispatch_b7a9            ; 0x05e1
    pop cx                           ; 0x05e4
    add word [bp - 0x0006], ax       ; 0x05e5
    mov ax, 0x15e                    ; 0x05e8
    imul word [bp - 0x0002]          ; 0x05eb
    add ax, word [bp - 0x0006]       ; 0x05ee
    mov bx, ax                       ; 0x05f1
    mov al, byte [bx + 0x6a40]       ; 0x05f3
    sub ah, ah                       ; 0x05f7
    mov word [bp - 0x0008], ax       ; 0x05f9
    cmp word [bp - 0x000a], byte 0   ; 0x05fc
    je short @..local.l15            ; 0x0600
    mov al, byte [bx + 0x6a4a]       ; 0x0602
    sub ah, ah                       ; 0x0606
    push ax                          ; 0x0608
    call ds_dispatch_b7a9            ; 0x0609
    pop cx                           ; 0x060c
    add word [bp - 0x0008], ax       ; 0x060d
@..local.l15:
    mov al, byte [bp + 0xa]          ; 0x0610
    push ax                          ; 0x0613
    mov ax, 3                        ; 0x0614
    imul word [bp + 0x6]             ; 0x0617
    mov cx, ax                       ; 0x061a
    add ax, word [bp + 0x8]          ; 0x061c
    mov bx, ax                       ; 0x061f
    pop ax                           ; 0x0621
    mov byte [bx - 0x7bd0], al       ; 0x0622
    mov al, byte [bp - 0x0006]       ; 0x0626
    push ax                          ; 0x0629
    mov ax, 0x5a                     ; 0x062a
    imul word [bp + 0x6]             ; 0x062d
    mov cx, ax                       ; 0x0630
    mov ax, 0x1e                     ; 0x0632
    imul word [bp + 0x8]             ; 0x0635
    mov dx, ax                       ; 0x0638
    add cx, ax                       ; 0x063a
    mov ax, 3                        ; 0x063c
    imul word [bp - 0x0004]          ; 0x063f
    mov dx, ax                       ; 0x0642
    add cx, ax                       ; 0x0644
    mov bx, cx                       ; 0x0646
    pop ax                           ; 0x0648
    mov byte [bx - 0x7cde], al       ; 0x0649
    mov al, byte [bp - 0x0008]       ; 0x064d
    mov byte [bx - 0x7cdd], al       ; 0x0650
    mov ax, 0x15e                    ; 0x0654
    imul word [bp - 0x0002]          ; 0x0657
    mov cx, word [bp - 0x0008]       ; 0x065a
    shl cx, 1                        ; 0x065d
    shl cx, 1                        ; 0x065f
    add ax, cx                       ; 0x0661
    mov bx, ax                       ; 0x0663
    mov al, byte [bx + 0x6ac1]       ; 0x0665
    inc al                           ; 0x0669
    push ax                          ; 0x066b
    mov ax, 0x5a                     ; 0x066c
    imul word [bp + 0x6]             ; 0x066f
    mov cx, ax                       ; 0x0672
    mov ax, 0x1e                     ; 0x0674
    imul word [bp + 0x8]             ; 0x0677
    mov dx, ax                       ; 0x067a
    add cx, ax                       ; 0x067c
    mov ax, 3                        ; 0x067e
    imul word [bp - 0x0004]          ; 0x0681
    mov dx, ax                       ; 0x0684
    add cx, ax                       ; 0x0686
    mov bx, cx                       ; 0x0688
    pop ax                           ; 0x068a
    mov byte [bx - 0x7cdc], al       ; 0x068b
    mov al, byte [bx - 0x7cdc]       ; 0x068f
    sub ah, ah                       ; 0x0693
    mov cx, ax                       ; 0x0695
    push cx                          ; 0x0697
    mov ax, 0x15e                    ; 0x0698
    imul word [bp - 0x0002]          ; 0x069b
    mov cx, word [bp - 0x0008]       ; 0x069e
    shl cx, 1                        ; 0x06a1
    shl cx, 1                        ; 0x06a3
    add ax, cx                       ; 0x06a5
    mov bx, ax                       ; 0x06a7
    mov al, byte [bx + 0x6ac2]       ; 0x06a9
    sub ah, ah                       ; 0x06ad
    push ax                          ; 0x06af
    call ds_dispatch_b7a9            ; 0x06b0
    pop cx                           ; 0x06b3
    pop cx                           ; 0x06b4
    add ax, cx                       ; 0x06b5
    push ax                          ; 0x06b7
    mov ax, 0x5a                     ; 0x06b8
    imul word [bp + 0x6]             ; 0x06bb
    mov cx, ax                       ; 0x06be
    mov ax, 0x1e                     ; 0x06c0
    imul word [bp + 0x8]             ; 0x06c3
    mov dx, ax                       ; 0x06c6
    add cx, ax                       ; 0x06c8
    mov ax, 3                        ; 0x06ca
    imul word [bp - 0x0004]          ; 0x06cd
    mov dx, ax                       ; 0x06d0
    add cx, ax                       ; 0x06d2
    mov bx, cx                       ; 0x06d4
    pop ax                           ; 0x06d6
    mov byte [bx - 0x7cdc], al       ; 0x06d7
    inc word [bp - 0x0004]           ; 0x06db
@..local.l16:
    mov ax, 0x15e                    ; 0x06de
    imul word [bp - 0x0002]          ; 0x06e1
    add ax, word [bp + 0xa]          ; 0x06e4
    mov bx, ax                       ; 0x06e7
    mov al, byte [bx + 0x6a1a]       ; 0x06e9
    sub ah, ah                       ; 0x06ed
    push ax                          ; 0x06ef
    mov al, byte [bx + 0x6a1e]       ; 0x06f0
    sub ah, ah                       ; 0x06f4
    mov cx, ax                       ; 0x06f6
    pop ax                           ; 0x06f8
    add ax, cx                       ; 0x06f9
    cmp ax, word [bp - 0x0004]       ; 0x06fb
    jle short @..local.l17           ; 0x06fe
    jmp near @..local.l11            ; 0x0700
@..local.l17:
    ret                              ; 0x0703
api_idx_000e:
    mov ax, 0xfff2                   ; 0x0704
    call ds_dispatch_f40b            ; 0x0707
    mov bx, word [bp + 0xe]          ; 0x070a
    mov byte [bx], 0                 ; 0x070d
    mov ax, word [bp + 0x4]          ; 0x0710
    shl ax, 1                        ; 0x0713
    mov bx, ax                       ; 0x0715
    mov bx, word [bx - 0x7b7e]       ; 0x0717
    cmp byte [bx + 0x19f], 0xff      ; 0x071b
    jne short @..local.l18           ; 0x0720
    ret                              ; 0x0722
@..local.l18:
    mov al, byte [bx + 0x19f]        ; 0x0723
    cbw                              ; 0x0727
    mov word [bp - 0x0002], ax       ; 0x0728
    mov word [bp - 0x000e], 0        ; 0x072b
    mov cx, 0x15e                    ; 0x0730
    imul cx                          ; 0x0733
    push ax                          ; 0x0735
    mov ax, 3                        ; 0x0736
    imul word [bp + 0x8]             ; 0x0739
    add ax, word [bp + 0xa]          ; 0x073c
    mov bx, ax                       ; 0x073f
    mov al, byte [bx - 0x7bd0]       ; 0x0741
    sub ah, ah                       ; 0x0745
    mov cx, ax                       ; 0x0747
    pop ax                           ; 0x0749
    add ax, cx                       ; 0x074a
    mov bx, ax                       ; 0x074c
    mov al, byte [bx + 0x6a1a]       ; 0x074e
    sub ah, ah                       ; 0x0752
    mov word [bp - 0x0004], ax       ; 0x0754
    jmp near @..local.l32            ; 0x0757
@..local.l19:
    mov ax, 0x2c                     ; 0x075a
    imul word [bp + 0x6]             ; 0x075d
    mov si, ax                       ; 0x0760
    mov ax, word [bp + 0x4]          ; 0x0762
    shl ax, 1                        ; 0x0765
    mov bx, ax                       ; 0x0767
    mov bx, word [bx - 0x7b7e]       ; 0x0769
    cmp byte [bx + si + 0x22], data_0002 ; 0x076d
    je short @..local.l20            ; 0x0771
    cmp byte [bx + si + 0x11], 0     ; 0x0773
    ja short @..local.l20            ; 0x0777
    cmp byte [bx + si + 0x10], 0     ; 0x0779
    jbe short @..local.l21           ; 0x077d
@..local.l20:
    mov ax, 0x5a                     ; 0x077f
    imul word [bp + 0x8]             ; 0x0782
    push ax                          ; 0x0785
    mov ax, 0x1e                     ; 0x0786
    imul word [bp + 0xa]             ; 0x0789
    mov cx, ax                       ; 0x078c
    pop ax                           ; 0x078e
    add ax, cx                       ; 0x078f
    push ax                          ; 0x0791
    mov ax, 3                        ; 0x0792
    imul word [bp - 0x0004]          ; 0x0795
    mov cx, ax                       ; 0x0798
    pop ax                           ; 0x079a
    add ax, cx                       ; 0x079b
    mov bx, ax                       ; 0x079d
    mov al, byte [bx - 0x7cde]       ; 0x079f
    sub ah, ah                       ; 0x07a3
    mov word [bp - 0x0006], ax       ; 0x07a5
    mov ax, 0x15e                    ; 0x07a8
    imul word [bp - 0x0002]          ; 0x07ab
    mov cx, ax                       ; 0x07ae
    mov ax, word [bp - 0x0006]       ; 0x07b0
    add cx, ax                       ; 0x07b3
    mov bx, cx                       ; 0x07b5
    mov al, byte [bx + 0x6a40]       ; 0x07b7
    sub ah, ah                       ; 0x07bb
    mov word [bp - 0x0008], ax       ; 0x07bd
    jmp near @..local.l28            ; 0x07c0
@..local.l21:
    mov ax, 0x5a                     ; 0x07c3
    imul word [bp + 0x8]             ; 0x07c6
    push ax                          ; 0x07c9
    mov ax, 0x1e                     ; 0x07ca
    imul word [bp + 0xa]             ; 0x07cd
    mov cx, ax                       ; 0x07d0
    pop ax                           ; 0x07d2
    add ax, cx                       ; 0x07d3
    push ax                          ; 0x07d5
    mov ax, 3                        ; 0x07d6
    imul word [bp - 0x0004]          ; 0x07d9
    mov cx, ax                       ; 0x07dc
    pop ax                           ; 0x07de
    add ax, cx                       ; 0x07df
    mov bx, ax                       ; 0x07e1
    mov al, byte [bx - 0x7cdd]       ; 0x07e3
    sub ah, ah                       ; 0x07e7
    mov word [bp - 0x0008], ax       ; 0x07e9
    mov al, byte [bx - 0x7cdc]       ; 0x07ec
    sub ah, ah                       ; 0x07f0
    mov word [bp - 0x000a], ax       ; 0x07f2
    cmp word [bp + 0xc], byte 0      ; 0x07f5
    je short @..local.l22            ; 0x07f9
    dec word [bp - 0x000a]           ; 0x07fb
@..local.l22:
    cmp word [bp - 0x000a], byte 0   ; 0x07fe
    jle short @..local.l23           ; 0x0802
    jmp near @..local.l27            ; 0x0804
@..local.l23:
    mov al, byte [bx - 0x7cde]       ; 0x0807
    sub ah, ah                       ; 0x080b
    mov word [bp - 0x0006], ax       ; 0x080d
    inc word [bp - 0x0008]           ; 0x0810
    mov ax, 0x15e                    ; 0x0813
    imul word [bp - 0x0002]          ; 0x0816
    mov cx, ax                       ; 0x0819
    mov ax, word [bp - 0x0006]       ; 0x081b
    add cx, ax                       ; 0x081e
    mov bx, cx                       ; 0x0820
    mov al, byte [bx + 0x6a40]       ; 0x0822
    sub ah, ah                       ; 0x0826
    push ax                          ; 0x0828
    mov al, byte [bx + 0x6a4a]       ; 0x0829
    sub ah, ah                       ; 0x082d
    mov cx, ax                       ; 0x082f
    pop ax                           ; 0x0831
    add ax, cx                       ; 0x0832
    dec ax                           ; 0x0834
    cmp ax, word [bp - 0x0008]       ; 0x0835
    jl short @..local.l24            ; 0x0838
    jmp near @..local.l26            ; 0x083a
@..local.l24:
    mov ax, 3                        ; 0x083d
    imul word [bp + 0x8]             ; 0x0840
    add ax, word [bp + 0xa]          ; 0x0843
    mov bx, ax                       ; 0x0846
    cmp byte [bx - 0x7bd0], 0        ; 0x0848
    je short @..local.l25            ; 0x084d
    mov byte [bx - 0x7bd0], 0        ; 0x084f
    mov ax, 0                        ; 0x0854
    push ax                          ; 0x0857
    push word [bp + 0xa]             ; 0x0858
    push word [bp + 0x8]             ; 0x085b
    push word [bp + 0x4]             ; 0x085e
    call api_idx_000a_2              ; 0x0861
    add sp, byte 8                   ; 0x0864
    push word [bp + 0xe]             ; 0x0867
    mov ax, 0                        ; 0x086a
    push ax                          ; 0x086d
    push word [bp + 0xa]             ; 0x086e
    push word [bp + 0x8]             ; 0x0871
    push word [bp + 0x6]             ; 0x0874
    push word [bp + 0x4]             ; 0x0877
    call api_idx_000e                ; 0x087a
    add sp, byte 0x0c                ; 0x087d
    ret                              ; 0x0880
@..local.l25:
    mov ax, 0x15e                    ; 0x0881
    imul word [bp - 0x0002]          ; 0x0884
    add ax, word [bp - 0x0004]       ; 0x0887
    mov bx, ax                       ; 0x088a
    mov al, byte [bx + 0x6a2c]       ; 0x088c
    sub ah, ah                       ; 0x0890
    push ax                          ; 0x0892
    call ds_dispatch_b7a9            ; 0x0893
    pop cx                           ; 0x0896
    push ax                          ; 0x0897
    mov ax, 0x15e                    ; 0x0898
    imul word [bp - 0x0002]          ; 0x089b
    add ax, word [bp - 0x0004]       ; 0x089e
    mov bx, ax                       ; 0x08a1
    mov al, byte [bx + 0x6a22]       ; 0x08a3
    sub ah, ah                       ; 0x08a7
    mov cx, ax                       ; 0x08a9
    pop ax                           ; 0x08ab
    add ax, cx                       ; 0x08ac
    mov word [bp - 0x0006], ax       ; 0x08ae
    mov al, byte [bp - 0x0006]       ; 0x08b1
    push ax                          ; 0x08b4
    mov ax, 0x5a                     ; 0x08b5
    imul word [bp + 0x8]             ; 0x08b8
    mov cx, ax                       ; 0x08bb
    mov ax, 0x1e                     ; 0x08bd
    imul word [bp + 0xa]             ; 0x08c0
    mov dx, ax                       ; 0x08c3
    add cx, ax                       ; 0x08c5
    mov ax, 3                        ; 0x08c7
    imul word [bp - 0x0004]          ; 0x08ca
    mov dx, ax                       ; 0x08cd
    add cx, ax                       ; 0x08cf
    mov bx, cx                       ; 0x08d1
    pop ax                           ; 0x08d3
    mov byte [bx - 0x7cde], al       ; 0x08d4
    mov ax, 0x15e                    ; 0x08d8
    imul word [bp - 0x0002]          ; 0x08db
    add ax, word [bp - 0x0006]       ; 0x08de
    mov bx, ax                       ; 0x08e1
    mov al, byte [bx + 0x6a40]       ; 0x08e3
    sub ah, ah                       ; 0x08e7
    mov word [bp - 0x0008], ax       ; 0x08e9
@..local.l26:
    mov al, byte [bp - 0x0008]       ; 0x08ec
    push ax                          ; 0x08ef
    mov ax, 0x5a                     ; 0x08f0
    imul word [bp + 0x8]             ; 0x08f3
    mov cx, ax                       ; 0x08f6
    mov ax, 0x1e                     ; 0x08f8
    imul word [bp + 0xa]             ; 0x08fb
    mov dx, ax                       ; 0x08fe
    add cx, ax                       ; 0x0900
    mov ax, 3                        ; 0x0902
    imul word [bp - 0x0004]          ; 0x0905
    mov dx, ax                       ; 0x0908
    add cx, ax                       ; 0x090a
    mov bx, cx                       ; 0x090c
    pop ax                           ; 0x090e
    mov byte [bx - 0x7cdd], al       ; 0x090f
    mov ax, 0x15e                    ; 0x0913
    imul word [bp - 0x0002]          ; 0x0916
    mov cx, word [bp - 0x0008]       ; 0x0919
    shl cx, 1                        ; 0x091c
    shl cx, 1                        ; 0x091e
    add ax, cx                       ; 0x0920
    mov bx, ax                       ; 0x0922
    mov al, byte [bx + 0x6ac2]       ; 0x0924
    sub ah, ah                       ; 0x0928
    push ax                          ; 0x092a
    call ds_dispatch_b7a9            ; 0x092b
    pop cx                           ; 0x092e
    push ax                          ; 0x092f
    mov ax, 0x15e                    ; 0x0930
    imul word [bp - 0x0002]          ; 0x0933
    mov cx, word [bp - 0x0008]       ; 0x0936
    shl cx, 1                        ; 0x0939
    shl cx, 1                        ; 0x093b
    add ax, cx                       ; 0x093d
    mov bx, ax                       ; 0x093f
    mov al, byte [bx + 0x6ac1]       ; 0x0941
    sub ah, ah                       ; 0x0945
    mov cx, ax                       ; 0x0947
    pop ax                           ; 0x0949
    add ax, cx                       ; 0x094a
    mov word [bp - 0x000a], ax       ; 0x094c
@..local.l27:
    mov al, byte [bp - 0x000a]       ; 0x094f
    push ax                          ; 0x0952
    mov ax, 0x5a                     ; 0x0953
    imul word [bp + 0x8]             ; 0x0956
    mov cx, ax                       ; 0x0959
    mov ax, 0x1e                     ; 0x095b
    imul word [bp + 0xa]             ; 0x095e
    mov dx, ax                       ; 0x0961
    add cx, ax                       ; 0x0963
    mov ax, 3                        ; 0x0965
    imul word [bp - 0x0004]          ; 0x0968
    mov dx, ax                       ; 0x096b
    add cx, ax                       ; 0x096d
    mov bx, cx                       ; 0x096f
    pop ax                           ; 0x0971
    mov byte [bx - 0x7cdc], al       ; 0x0972
@..local.l28:
    mov ax, 0x15e                    ; 0x0976
    imul word [bp - 0x0002]          ; 0x0979
    mov cx, word [bp - 0x0008]       ; 0x097c
    shl cx, 1                        ; 0x097f
    shl cx, 1                        ; 0x0981
    add ax, cx                       ; 0x0983
    mov bx, ax                       ; 0x0985
    mov al, byte [bx + 0x6ac0]       ; 0x0987
    mov bx, word [bp + 0xe]          ; 0x098b
    mov si, word [bp - 0x000e]       ; 0x098e
    mov byte [bx + si], al           ; 0x0991
    mov ax, word [bp + 0x4]          ; 0x0993
    shl ax, 1                        ; 0x0996
    mov bx, ax                       ; 0x0998
    mov bx, word [bx - 0x7b7e]       ; 0x099a
    cmp byte [bx + 0x19e], 0x79      ; 0x099e
    je short @..local.l29            ; 0x09a3
    mov al, byte [bx + 0x19e]        ; 0x09a5
    sub ah, ah                       ; 0x09a9
    cmp ax, 0x8d                     ; 0x09ab
    jne short @..local.l30           ; 0x09ae
@..local.l29:
    inc word [bp - 0x000e]           ; 0x09b0
    mov bx, word [bp + 0xe]          ; 0x09b3
    mov si, word [bp - 0x000e]       ; 0x09b6
    mov al, byte [bx + si - 0x0001]  ; 0x09b9
    mov byte [bx + si], al           ; 0x09bc
    mov ax, 0x15e                    ; 0x09be
    imul word [bp - 0x0002]          ; 0x09c1
    mov bx, ax                       ; 0x09c4
    mov al, byte [bx + 0x6b76]       ; 0x09c6
    mov bx, word [bp + 0xe]          ; 0x09ca
    mov si, word [bp - 0x000e]       ; 0x09cd
    mov byte [bx + si - 0x0001], al  ; 0x09d0
@..local.l30:
    mov bx, word [bp + 0xe]          ; 0x09d3
    mov si, word [bp - 0x000e]       ; 0x09d6
    cmp byte [bx + si], 0            ; 0x09d9
    je short @..local.l31            ; 0x09dc
    inc word [bp - 0x000e]           ; 0x09de
@..local.l31:
    inc word [bp - 0x0004]           ; 0x09e1
@..local.l32:
    mov ax, 0x15e                    ; 0x09e4
    imul word [bp - 0x0002]          ; 0x09e7
    push ax                          ; 0x09ea
    mov ax, 3                        ; 0x09eb
    imul word [bp + 0x8]             ; 0x09ee
    add ax, word [bp + 0xa]          ; 0x09f1
    mov bx, ax                       ; 0x09f4
    mov al, byte [bx - 0x7bd0]       ; 0x09f6
    sub ah, ah                       ; 0x09fa
    mov cx, ax                       ; 0x09fc
    pop ax                           ; 0x09fe
    add ax, cx                       ; 0x09ff
    mov bx, ax                       ; 0x0a01
    mov al, byte [bx + 0x6a1a]       ; 0x0a03
    sub ah, ah                       ; 0x0a07
    push ax                          ; 0x0a09
    mov al, byte [bx + 0x6a1e]       ; 0x0a0a
    sub ah, ah                       ; 0x0a0e
    mov cx, ax                       ; 0x0a10
    pop ax                           ; 0x0a12
    add ax, cx                       ; 0x0a13
    cmp ax, word [bp - 0x0004]       ; 0x0a15
    jle short @..local.l33           ; 0x0a18
    jmp near @..local.l19            ; 0x0a1a
@..local.l33:
    mov bx, word [bp + 0xe]          ; 0x0a1d
    mov si, word [bp - 0x000e]       ; 0x0a20
    mov byte [bx + si], 0            ; 0x0a23
    ret                              ; 0x0a26
api_idx_0004:
    mov ax, 0xfffc                   ; 0x0a27
    call ds_dispatch_f40b            ; 0x0a2a
    mov word [bp - 0x0002], 0        ; 0x0a2d
@..api_idx_0004.l1:
    mov ax, word [bp - 0x0002]       ; 0x0a32
    cmp ax, word [data_8468]         ; 0x0a35
    jge short @..api_idx_0004.l2     ; 0x0a39
    shl ax, 1                        ; 0x0a3b
    mov bx, ax                       ; 0x0a3d
    mov bx, word [bx - 0x7b96]       ; 0x0a3f
    mov al, byte [bx + 0x14]         ; 0x0a43
    sub ah, ah                       ; 0x0a46
    cmp ax, word [bp + 0x4]          ; 0x0a48
    jg short @..api_idx_0004.l2      ; 0x0a4b
    inc word [bp - 0x0002]           ; 0x0a4d
    jmp short @..api_idx_0004.l1     ; 0x0a50
@..api_idx_0004.l2:
    mov ax, word [data_8468]         ; 0x0a52
    mov word [bp - 0x0004], ax       ; 0x0a55
    jmp short @..api_idx_0004.l4     ; 0x0a58
@..api_idx_0004.l3:
    mov ax, word [bp - 0x0004]       ; 0x0a5a
    shl ax, 1                        ; 0x0a5d
    mov bx, ax                       ; 0x0a5f
    mov si, word [bx - 0x7b98]       ; 0x0a61
    mov di, word [bx - 0x7b96]       ; 0x0a65
    mov cx, ds                       ; 0x0a69
    mov es, cx                       ; 0x0a6b
    mov cx, 0xc                      ; 0x0a6d
    rep movsw                        ; 0x0a70
    dec word [bp - 0x0004]           ; 0x0a72
@..api_idx_0004.l4:
    mov ax, word [bp - 0x0004]       ; 0x0a75
    cmp ax, word [bp - 0x0002]       ; 0x0a78
    jg short @..api_idx_0004.l3      ; 0x0a7b
    cmp word [bp - 0x0002], byte 0x0c ; 0x0a7d
    jl short @..api_idx_0004.l6      ; 0x0a81
@..api_idx_0004.l5:
    mov ax, 0                        ; 0x0a83
    push ax                          ; 0x0a86
    call ds_dispatch_b7e0            ; 0x0a87
    pop cx                           ; 0x0a8a
    jmp short @..api_idx_0004.l5     ; 0x0a8b
@..api_idx_0004.l6:
    mov al, byte [bp + 0x4]          ; 0x0a8d
    mov cx, word [bp - 0x0002]       ; 0x0a90
    shl cx, 1                        ; 0x0a93
    mov bx, cx                       ; 0x0a95
    mov bx, word [bx - 0x7b96]       ; 0x0a97
    mov byte [bx + 0x14], al         ; 0x0a9b
    mov al, byte [bp + 0x6]          ; 0x0a9e
    mov cx, word [bp - 0x0002]       ; 0x0aa1
    shl cx, 1                        ; 0x0aa4
    mov bx, cx                       ; 0x0aa6
    mov bx, word [bx - 0x7b96]       ; 0x0aa8
    mov byte [bx + 0x15], al         ; 0x0aac
    mov ax, word [bp + 0x8]          ; 0x0aaf
    mov cx, word [bp - 0x0002]       ; 0x0ab2
    shl cx, 1                        ; 0x0ab5
    mov bx, cx                       ; 0x0ab7
    mov bx, word [bx - 0x7b96]       ; 0x0ab9
    mov word [bx], ax                ; 0x0abd
    mov ax, word [bp + 0xa]          ; 0x0abf
    mov cx, word [bp - 0x0002]       ; 0x0ac2
    shl cx, 1                        ; 0x0ac5
    mov bx, cx                       ; 0x0ac7
    mov bx, word [bx - 0x7b96]       ; 0x0ac9
    mov word [bx + 0x2], ax          ; 0x0acd
    mov ax, word [bp + 0xc]          ; 0x0ad0
    mov cx, word [bp - 0x0002]       ; 0x0ad3
    shl cx, 1                        ; 0x0ad6
    mov bx, cx                       ; 0x0ad8
    mov bx, word [bx - 0x7b96]       ; 0x0ada
    mov word [bx + 0x4], ax          ; 0x0ade
    mov ax, word [bp + 0xe]          ; 0x0ae1
    mov cx, word [bp - 0x0002]       ; 0x0ae4
    shl cx, 1                        ; 0x0ae7
    mov bx, cx                       ; 0x0ae9
    mov bx, word [bx - 0x7b96]       ; 0x0aeb
    mov word [bx + 0x6], ax          ; 0x0aef
    mov al, byte [bp + 0x10]         ; 0x0af2
    mov cx, word [bp - 0x0002]       ; 0x0af5
    shl cx, 1                        ; 0x0af8
    mov bx, cx                       ; 0x0afa
    mov bx, word [bx - 0x7b96]       ; 0x0afc
    mov byte [bx + 0x16], al         ; 0x0b00
    mov al, byte [bp + 0x12]         ; 0x0b03
    mov cx, word [bp - 0x0002]       ; 0x0b06
    shl cx, 1                        ; 0x0b09
    mov bx, cx                       ; 0x0b0b
    mov bx, word [bx - 0x7b96]       ; 0x0b0d
    mov byte [bx + 0x17], al         ; 0x0b11
    push word [bp + 0x14]            ; 0x0b14
    mov ax, word [bp - 0x0002]       ; 0x0b17
    shl ax, 1                        ; 0x0b1a
    mov bx, ax                       ; 0x0b1c
    mov ax, word [bx - 0x7b96]       ; 0x0b1e
    add ax, strict word 8            ; 0x0b22
    push ax                          ; 0x0b25
    call ds_dispatch_f364            ; 0x0b26
    add sp, byte 4                   ; 0x0b29
    inc word [data_8468]             ; 0x0b2c
    ret                              ; 0x0b30
api_idx_001c:
    mov ax, 0xffe4                   ; 0x0b31
    call ds_dispatch_f40b            ; 0x0b34
    mov byte [bp - 0x001c], 0        ; 0x0b37
    mov ax, 6                        ; 0x0b3b
    imul word [bp + 0x4]             ; 0x0b3e
    mov cx, word [bp + 0x6]          ; 0x0b41
    shl cx, 1                        ; 0x0b44
    add ax, cx                       ; 0x0b46
    mov bx, ax                       ; 0x0b48
    mov ax, word [bx - 0x7bc6]       ; 0x0b4a
    mov cx, 0xa                      ; 0x0b4e
    cwd                              ; 0x0b51
    idiv cx                          ; 0x0b52
    mov word [bp - 0x0002], ax       ; 0x0b54
    mov word [bp - 0x0004], dx       ; 0x0b57
    cmp ax, strict word 1            ; 0x0b5a
    jl short @..api_idx_001c.l1      ; 0x0b5d
    cmp ax, strict word 3            ; 0x0b5f
    jg short @..api_idx_001c.l1      ; 0x0b62
    mov ax, word [bp + 0x4]          ; 0x0b64
    cmp ax, word [data_8454]         ; 0x0b67
    jle short @..local.l34           ; 0x0b6b
@..api_idx_001c.l1:
    ret                              ; 0x0b6d
@..local.l34:
    mov ax, word [bp - 0x0002]       ; 0x0b6e
    shl ax, 1                        ; 0x0b71
    mov bx, ax                       ; 0x0b73
    mov bx, word [bx - 0x7b7e]       ; 0x0b75
    cmp byte [bx + 0x19f], 0xff      ; 0x0b79
    jne short @..local.l35           ; 0x0b7e
    ret                              ; 0x0b80
@..local.l35:
    mov al, byte [bx + 0x19f]        ; 0x0b81
    cbw                              ; 0x0b85
    mov word [bp - 0x0006], ax       ; 0x0b86
    lea ax, word [bp - 0x001c]       ; 0x0b89
    push ax                          ; 0x0b8c
    push word [bp + 0x10]            ; 0x0b8d
    push word [bp + 0x6]             ; 0x0b90
    push word [bp + 0x4]             ; 0x0b93
    push dx                          ; 0x0b96
    push word [bp - 0x0002]          ; 0x0b97
    call api_idx_000e                ; 0x0b9a
    add sp, byte 0x0c                ; 0x0b9d
    cmp byte [bp - 0x001c], 0        ; 0x0ba0
    jne short @..local.l36           ; 0x0ba4
    ret                              ; 0x0ba6
@..local.l36:
    mov ax, word [bp + 0x6]          ; 0x0ba7
    mov cx, data_0002                ; 0x0baa
    cwd                              ; 0x0bad
    idiv cx                          ; 0x0bae
    mov word [bp - 0x0008], dx       ; 0x0bb0
    mov al, byte [bp - 0x001c]       ; 0x0bb3
    sub ah, ah                       ; 0x0bb6
    mov word [bp - 0x000a], ax       ; 0x0bb8
    mov ax, 0x15e                    ; 0x0bbb
    imul word [bp - 0x0006]          ; 0x0bbe
    mov bx, ax                       ; 0x0bc1
    cmp byte [bx + 0x6b75], 0        ; 0x0bc3
    je short @..local.l37            ; 0x0bc8
    mov word [bp + 0x8], 0           ; 0x0bca
@..local.l37:
    mov cx, word [bp - 0x000a]       ; 0x0bcf
    shl cx, 1                        ; 0x0bd2
    shl cx, 1                        ; 0x0bd4
    add ax, cx                       ; 0x0bd6
    mov bx, ax                       ; 0x0bd8
    mov al, byte [bx + 0x6abf]       ; 0x0bda
    sub ah, ah                       ; 0x0bde
    mov word [bp - 0x000c], ax       ; 0x0be0
    cmp word [bp - 0x000c], byte 0   ; 0x0be3
    jne short @..local.l38           ; 0x0be7
    mov ax, 6                        ; 0x0be9
    imul word [bp + 0x4]             ; 0x0bec
    mov cx, word [bp + 0x6]          ; 0x0bef
    shl cx, 1                        ; 0x0bf2
    add ax, cx                       ; 0x0bf4
    mov bx, ax                       ; 0x0bf6
    mov ax, word [bx + 0x5b6]        ; 0x0bf8
    sub ax, word [bp - 0x0002]       ; 0x0bfc
    mov word [bp - 0x000c], ax       ; 0x0bff
    jmp short @..local.l40           ; 0x0c02
@..local.l38:
    mov ax, 0x64                     ; 0x0c04
    push ax                          ; 0x0c07
    mov ax, 5                        ; 0x0c08
    push ax                          ; 0x0c0b
    mov ax, 0xa                      ; 0x0c0c
    imul word [bp + 0x4]             ; 0x0c0f
    mov cx, ax                       ; 0x0c12
    mov ax, 0                        ; 0x0c14
    cmp word [bp + 0x6], byte 0      ; 0x0c17
    jne short @..local.l39           ; 0x0c1b
    mov ax, 5                        ; 0x0c1d
@..local.l39:
    add cx, ax                       ; 0x0c20
    mov ax, word [bp - 0x000c]       ; 0x0c22
    sub ax, cx                       ; 0x0c25
    push ax                          ; 0x0c27
    call ds_dispatch_b7c2            ; 0x0c28
    add sp, byte 6                   ; 0x0c2b
    mov word [bp - 0x000c], ax       ; 0x0c2e
@..local.l40:
    mov ax, word [bp + 0xe]          ; 0x0c31
    dec ax                           ; 0x0c34
    push ax                          ; 0x0c35
    mov ax, 0                        ; 0x0c36
    push ax                          ; 0x0c39
    mov ax, 0x15e                    ; 0x0c3a
    imul word [bp - 0x0006]          ; 0x0c3d
    push ax                          ; 0x0c40
    mov ax, word [bp - 0x0008]       ; 0x0c41
    mov cx, data_0002                ; 0x0c44
    cwd                              ; 0x0c47
    idiv cx                          ; 0x0c48
    mov cx, dx                       ; 0x0c4a
    pop ax                           ; 0x0c4c
    add ax, cx                       ; 0x0c4d
    mov cx, word [bp - 0x000a]       ; 0x0c4f
    shl cx, 1                        ; 0x0c52
    add ax, cx                       ; 0x0c54
    mov bx, ax                       ; 0x0c56
    mov al, byte [bx + 0x6a52]       ; 0x0c58
    sub ah, ah                       ; 0x0c5c
    push ax                          ; 0x0c5e
    mov ax, 0x15e                    ; 0x0c5f
    imul word [bp - 0x0006]          ; 0x0c62
    mov cx, word [bp + 0x6]          ; 0x0c65
    shl cx, 1                        ; 0x0c68
    add ax, cx                       ; 0x0c6a
    mov bx, ax                       ; 0x0c6c
    mov al, byte [bx + 0x6b60]       ; 0x0c6e
    cbw                              ; 0x0c72
    mov cx, ax                       ; 0x0c73
    pop ax                           ; 0x0c75
    add ax, cx                       ; 0x0c76
    push ax                          ; 0x0c78
    call ds_dispatch_b7c2            ; 0x0c79
    add sp, byte 6                   ; 0x0c7c
    mov word [bp - 0x000e], ax       ; 0x0c7f
    mov ax, 0x15e                    ; 0x0c82
    imul word [bp - 0x0006]          ; 0x0c85
    add ax, word [bp - 0x000a]       ; 0x0c88
    mov bx, ax                       ; 0x0c8b
    mov al, byte [bx + 0x6a9b]       ; 0x0c8d
    sub ah, ah                       ; 0x0c91
    push ax                          ; 0x0c93
    mov ax, 0x15e                    ; 0x0c94
    imul word [bp - 0x0006]          ; 0x0c97
    mov cx, word [bp + 0x6]          ; 0x0c9a
    shl cx, 1                        ; 0x0c9d
    add ax, cx                       ; 0x0c9f
    mov bx, ax                       ; 0x0ca1
    mov al, byte [bx + 0x6b61]       ; 0x0ca3
    cbw                              ; 0x0ca7
    mov cx, ax                       ; 0x0ca8
    pop ax                           ; 0x0caa
    add ax, cx                       ; 0x0cab
    mov word [bp - 0x0010], ax       ; 0x0cad
    cmp word [data_8466], byte 1     ; 0x0cb0
    jne short @..local.l41           ; 0x0cb5
    mov bx, word [data_8484]         ; 0x0cb7
    cmp byte [bx + 0x1a1], 1         ; 0x0cbb
    jne short @..local.l41           ; 0x0cc0
    cmp word [bp + 0x4], byte 0      ; 0x0cc2
    jne short @..local.l41           ; 0x0cc6
    mov word [bp + 0xa], 0           ; 0x0cc8
@..local.l41:
    mov ax, 0xa0                     ; 0x0ccd
    sub ax, word [bp - 0x000e]       ; 0x0cd0
    imul word [bp + 0xa]             ; 0x0cd3
    mov cx, 0x64                     ; 0x0cd6
    cwd                              ; 0x0cd9
    idiv cx                          ; 0x0cda
    add word [bp - 0x000e], ax       ; 0x0cdc
    mov ax, word [bp - 0x0008]       ; 0x0cdf
    mov cx, data_0002                ; 0x0ce2
    cwd                              ; 0x0ce5
    idiv cx                          ; 0x0ce6
    mov ax, dx                       ; 0x0ce8
    test ax, ax                      ; 0x0cea
    je short @..local.l42            ; 0x0cec
    mov ax, 0x15e                    ; 0x0cee
    imul word [bp - 0x0006]          ; 0x0cf1
    mov cx, ax                       ; 0x0cf4
    mov ax, word [bp - 0x0008]       ; 0x0cf6
    mov bx, data_0002                ; 0x0cf9
    cwd                              ; 0x0cfc
    idiv bx                          ; 0x0cfd
    mov ax, dx                       ; 0x0cff
    add cx, ax                       ; 0x0d01
    mov ax, cx                       ; 0x0d03
    mov cx, word [bp - 0x000a]       ; 0x0d05
    shl cx, 1                        ; 0x0d08
    add ax, cx                       ; 0x0d0a
    mov bx, ax                       ; 0x0d0c
    mov al, byte [bx + 0x6a52]       ; 0x0d0e
    sub ah, ah                       ; 0x0d12
    mov cx, ax                       ; 0x0d14
    mov ax, 0xa0                     ; 0x0d16
    sub ax, cx                       ; 0x0d19
    shl ax, 1                        ; 0x0d1b
    imul word [bp + 0xa]             ; 0x0d1d
    mov cx, 0x64                     ; 0x0d20
    cwd                              ; 0x0d23
    idiv cx                          ; 0x0d24
    sub word [bp - 0x000e], ax       ; 0x0d26
@..local.l42:
    mov ax, word [bp + 0xe]          ; 0x0d29
    dec ax                           ; 0x0d2c
    push ax                          ; 0x0d2d
    mov ax, 0                        ; 0x0d2e
    push ax                          ; 0x0d31
    mov ax, word [bp - 0x000e]       ; 0x0d32
    add ax, word [bp + 0x8]          ; 0x0d35
    push ax                          ; 0x0d38
    call ds_dispatch_b7c2            ; 0x0d39
    add sp, byte 6                   ; 0x0d3c
    mov word [bp - 0x000e], ax       ; 0x0d3f
    mov ax, 0x3d                     ; 0x0d42
    sub ax, word [bp - 0x0010]       ; 0x0d45
    imul word [bp + 0xa]             ; 0x0d48
    mov cx, 0x64                     ; 0x0d4b
    cwd                              ; 0x0d4e
    idiv cx                          ; 0x0d4f
    add word [bp - 0x0010], ax       ; 0x0d51
    lea ax, word [bp - 0x001c]       ; 0x0d54
    push ax                          ; 0x0d57
    push word [bp + 0xa]             ; 0x0d58
    push word [bp - 0x0008]          ; 0x0d5b
    push word [bp + 0xe]             ; 0x0d5e
    push word [bp + 0xc]             ; 0x0d61
    push word [bp - 0x0010]          ; 0x0d64
    push word [bp - 0x000e]          ; 0x0d67
    push word [bp - 0x0006]          ; 0x0d6a
    push word [bp - 0x000c]          ; 0x0d6d
    call api_idx_0004                ; 0x0d70
    add sp, byte 0x12                ; 0x0d73
    ret                              ; 0x0d76
api_idx_000e_2:
    mov ax, 0xfff2                   ; 0x0d77
    call ds_dispatch_f40b            ; 0x0d7a
    cmp word [data_8f20], byte 0     ; 0x0d7d
    jg short @..api_idx_000e_2.l1    ; 0x0d82
    jmp near @..api_idx_000e_2.l8    ; 0x0d84
@..api_idx_000e_2.l1:
    mov ax, word [data_82ee]         ; 0x0d87
    mov cx, word [data_8f20]         ; 0x0d8a
    dec cx                           ; 0x0d8e
    sub ax, cx                       ; 0x0d8f
    add ax, strict word 6            ; 0x0d91
    mov cx, 4                        ; 0x0d94
    cwd                              ; 0x0d97
    idiv cx                          ; 0x0d98
    mov word [bp - 0x0002], dx       ; 0x0d9a
    mov ax, dx                       ; 0x0d9d
    jmp short @..api_idx_000e_2.l6   ; 0x0d9f
@..api_idx_000e_2.l2:
    mov byte [bp - 0x000e], 1        ; 0x0da1
    mov byte [bp - 0x000d], data_0002 ; 0x0da5
    mov ax, 5                        ; 0x0da9
    cmp word [bp - 0x0002], byte 0   ; 0x0dac
    jne short @..api_idx_000e_2.l3   ; 0x0db0
    mov ax, 4                        ; 0x0db2
@..api_idx_000e_2.l3:
    mov byte [bp - 0x000c], al       ; 0x0db5
    mov byte [bp - 0x000b], 0        ; 0x0db8
    mov word [bp - 0x0004], 0        ; 0x0dbc
    jmp short @..api_idx_000e_2.l7   ; 0x0dc1
@..api_idx_000e_2.l4:
    mov byte [bp - 0x000e], 3        ; 0x0dc3
    mov byte [bp - 0x000d], 0        ; 0x0dc7
    mov ax, 0                        ; 0x0dcb
    cmp word [bp - 0x0002], byte 3   ; 0x0dce
    jne short @..api_idx_000e_2.l5   ; 0x0dd2
    mov ax, 1                        ; 0x0dd4
@..api_idx_000e_2.l5:
    mov word [bp - 0x0004], ax       ; 0x0dd7
    jmp short @..api_idx_000e_2.l7   ; 0x0dda
@..api_idx_000e_2.l6:
    cmp ax, strict word 0            ; 0x0ddc
    je short @..api_idx_000e_2.l2    ; 0x0ddf
    cmp ax, strict word 1            ; 0x0de1
    je short @..api_idx_000e_2.l4    ; 0x0de4
    cmp ax, strict word 2            ; 0x0de6
    je short @..api_idx_000e_2.l2    ; 0x0de9
    cmp ax, strict word 3            ; 0x0deb
    je short @..api_idx_000e_2.l4    ; 0x0dee
@..api_idx_000e_2.l7:
    lea ax, word [bp - 0x000e]       ; 0x0df0
    push ax                          ; 0x0df3
    mov ax, 0                        ; 0x0df4
    push ax                          ; 0x0df7
    push word [bp - 0x0004]          ; 0x0df8
    mov ax, 0xf8                     ; 0x0dfb
    push ax                          ; 0x0dfe
    mov ax, 0x48                     ; 0x0dff
    push ax                          ; 0x0e02
    mov al, byte [bp - 0x000e]       ; 0x0e03
    sub ah, ah                       ; 0x0e06
    mov bx, ax                       ; 0x0e08
    mov al, byte [bx + 0x6eb5]       ; 0x0e0a
    sub ah, ah                       ; 0x0e0e
    inc ax                           ; 0x0e10
    push ax                          ; 0x0e11
    shl bx, 1                        ; 0x0e12
    mov ax, bx                       ; 0x0e14
    add ax, word [bp - 0x0004]       ; 0x0e16
    mov bx, ax                       ; 0x0e19
    mov al, byte [bx + 0x6e6c]       ; 0x0e1b
    sub ah, ah                       ; 0x0e1f
    inc ax                           ; 0x0e21
    push ax                          ; 0x0e22
    mov ax, 3                        ; 0x0e23
    push ax                          ; 0x0e26
    mov ax, 0x1b                     ; 0x0e27
    push ax                          ; 0x0e2a
    call api_idx_0004                ; 0x0e2b
    add sp, byte 0x12                ; 0x0e2e
@..api_idx_000e_2.l8:
    cmp word [data_8f20], byte 0xff  ; 0x0e31
    jne short @..api_idx_000e_2.l9   ; 0x0e36
    mov byte [bp - 0x000e], 1        ; 0x0e38
    mov byte [bp - 0x000d], 0        ; 0x0e3c
    lea ax, word [bp - 0x000e]       ; 0x0e40
    push ax                          ; 0x0e43
    mov ax, 0                        ; 0x0e44
    push ax                          ; 0x0e47
    push ax                          ; 0x0e48
    mov ax, 0xf8                     ; 0x0e49
    push ax                          ; 0x0e4c
    mov ax, 0x48                     ; 0x0e4d
    push ax                          ; 0x0e50
    mov al, byte [data_7b04]         ; 0x0e51
    sub ah, ah                       ; 0x0e54
    push ax                          ; 0x0e56
    mov al, byte [data_7abc]         ; 0x0e57
    sub ah, ah                       ; 0x0e5a
    push ax                          ; 0x0e5c
    mov ax, 0xc                      ; 0x0e5d
    push ax                          ; 0x0e60
    mov ax, 0x1c                     ; 0x0e61
    push ax                          ; 0x0e64
    call api_idx_0004                ; 0x0e65
    add sp, byte 0x12                ; 0x0e68
@..api_idx_000e_2.l9:
    ret                              ; 0x0e6b
loc_0e6c:
    mov ax, 0                        ; 0x0e6c
    call ds_dispatch_f40b            ; 0x0e6f
    mov ax, word [bp + 0x4]          ; 0x0e72
    shl ax, 1                        ; 0x0e75
    mov bx, ax                       ; 0x0e77
    mov bx, word [bx - 0x7b96]       ; 0x0e79
    mov al, byte [bx + 0x14]         ; 0x0e7d
    sub ah, ah                       ; 0x0e80
    cmp ax, 0xff                     ; 0x0e82
    je short @..local.l43            ; 0x0e85
    mov al, byte [bx + 0x17]         ; 0x0e87
    sub ah, ah                       ; 0x0e8a
    push ax                          ; 0x0e8c
    mov ax, 0                        ; 0x0e8d
    push ax                          ; 0x0e90
    add bx, byte 8                   ; 0x0e91
    mov ax, bx                       ; 0x0e94
    push ax                          ; 0x0e96
    mov ax, word [bp + 0x4]          ; 0x0e97
    shl ax, 1                        ; 0x0e9a
    mov bx, ax                       ; 0x0e9c
    mov bx, word [bx - 0x7b96]       ; 0x0e9e
    mov al, byte [bx + 0x16]         ; 0x0ea2
    sub ah, ah                       ; 0x0ea5
    push ax                          ; 0x0ea7
    mov ax, 0x8e                     ; 0x0ea8
    push ax                          ; 0x0eab
    mov ax, 0x21                     ; 0x0eac
    push ax                          ; 0x0eaf
    push word [bx + 0x6]             ; 0x0eb0
    push word [bx + 0x4]             ; 0x0eb3
    push word [bx + 0x2]             ; 0x0eb6
    push word [bx]                   ; 0x0eb9
    mov al, byte [bx + 0x15]         ; 0x0ebb
    sub ah, ah                       ; 0x0ebe
    push ax                          ; 0x0ec0
    call ds_dispatch_efd1            ; 0x0ec1
    add sp, byte 0x16                ; 0x0ec4
@..local.l43:
    ret                              ; 0x0ec7
loc_0ec8:
    mov ax, 0                        ; 0x0ec8
    call ds_dispatch_f40b            ; 0x0ecb
    les bx, word [data_0002]         ; 0x0ece
    mov ax, word [es:bx]             ; 0x0ed2
    mov dx, word [es:bx + 0x2]       ; 0x0ed5
    mov word [data_9090], dx         ; 0x0ed9
    mov word [data_908e], ax         ; 0x0edd
    mov ax, word [data_908e]         ; 0x0ee0
    mov dx, word [data_9090]         ; 0x0ee3
    sub ax, word [data_908a]         ; 0x0ee7
    sbb dx, word [data_908c]         ; 0x0eeb
    mov word [data_9094], dx         ; 0x0eef
    mov word [data_9092], ax         ; 0x0ef3
    mov ax, word [data_90d6]         ; 0x0ef6
    cwd                              ; 0x0ef9
    mov cx, ax                       ; 0x0efa
    mov bx, dx                       ; 0x0efc
    mov ax, word [data_9092]         ; 0x0efe
    mov dx, word [data_9094]         ; 0x0f01
    cmp bx, dx                       ; 0x0f05
    jg short @..local.l44            ; 0x0f07
    jne short @..local.l45           ; 0x0f09
    cmp cx, ax                       ; 0x0f0b
    jbe short @..local.l45           ; 0x0f0d
@..local.l44:
    jmp short @..local.l46           ; 0x0f0f
@..local.l45:
    mov ax, word [data_908e]         ; 0x0f11
    mov dx, word [data_9090]         ; 0x0f14
    mov word [data_908c], dx         ; 0x0f18
    mov word [data_908a], ax         ; 0x0f1c
    mov ax, 1                        ; 0x0f1f
    ret                              ; 0x0f22
@..local.l46:
    mov ax, 0                        ; 0x0f23
    ret                              ; 0x0f26
api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x0f27
    call ds_dispatch_f40b            ; 0x0f2a
    mov ax, word [data_845e]         ; 0x0f2d
    jmp near @..api_idx_0006_2.l12   ; 0x0f30
@..api_idx_0006_2.l1:
    mov ax, 0x8f                     ; 0x0f33
    push ax                          ; 0x0f36
    mov ax, 0xf7                     ; 0x0f37
    push ax                          ; 0x0f3a
    mov ax, 0x20                     ; 0x0f3b
    push ax                          ; 0x0f3e
    mov ax, 0x48                     ; 0x0f3f
    push ax                          ; 0x0f42
    call ds_dispatch_e8da            ; 0x0f43
    add sp, byte 8                   ; 0x0f46
    jmp near @..api_idx_0006_2.l16   ; 0x0f49
@..api_idx_0006_2.l2:
    les bx, word [data_0002]         ; 0x0f4c
    mov ax, word [es:bx]             ; 0x0f50
    mov dx, word [es:bx + 0x2]       ; 0x0f53
    sub ax, word [data_908a]         ; 0x0f57
    sbb dx, word [data_908c]         ; 0x0f5b
    push ax                          ; 0x0f5f
    push dx                          ; 0x0f60
    mov ax, word [data_90d6]         ; 0x0f61
    cwd                              ; 0x0f64
    mov cx, ax                       ; 0x0f65
    mov bx, dx                       ; 0x0f67
    pop dx                           ; 0x0f69
    pop ax                           ; 0x0f6a
    cmp dx, bx                       ; 0x0f6b
    jl short @..api_idx_0006_2.l3    ; 0x0f6d
    jne short @..api_idx_0006_2.l4   ; 0x0f6f
    cmp ax, cx                       ; 0x0f71
    jae short @..api_idx_0006_2.l4   ; 0x0f73
@..api_idx_0006_2.l3:
    jmp short @..api_idx_0006_2.l5   ; 0x0f75
@..api_idx_0006_2.l4:
    mov ax, word [data_906c]         ; 0x0f77
    inc ax                           ; 0x0f7a
    mov cx, data_0002                ; 0x0f7b
    cwd                              ; 0x0f7e
    idiv cx                          ; 0x0f7f
    mov word [data_906c], dx         ; 0x0f81
@..api_idx_0006_2.l5:
    mov ax, 0                        ; 0x0f85
    push ax                          ; 0x0f88
    push ax                          ; 0x0f89
    mov ax, word [data_906c]         ; 0x0f8a
    shl ax, 1                        ; 0x0f8d
    shl ax, 1                        ; 0x0f8f
    mov bx, ax                       ; 0x0f91
    push word [bx - 0x6f9e]          ; 0x0f93
    push word [bx - 0x6fa0]          ; 0x0f97
    call ds_dispatch_e942            ; 0x0f9b
    add sp, byte 8                   ; 0x0f9e
    mov word [bp - 0x0002], 0        ; 0x0fa1
@..api_idx_0006_2.l6:
    mov ax, word [bp - 0x0002]       ; 0x0fa6
    shl ax, 1                        ; 0x0fa9
    mov bx, ax                       ; 0x0fab
    mov bx, word [bx - 0x7b96]       ; 0x0fad
    mov byte [bx + 0x14], 0xff       ; 0x0fb1
    inc word [bp - 0x0002]           ; 0x0fb5
    mov ax, word [bp - 0x0002]       ; 0x0fb8
    cmp ax, strict word 0xc          ; 0x0fbb
    jl short @..api_idx_0006_2.l6    ; 0x0fbe
    mov word [data_8468], 0          ; 0x0fc0
    jmp near @..api_idx_0006_2.l16   ; 0x0fc6
@..api_idx_0006_2.l7:
    call loc_0ec8                    ; 0x0fc9
    mov word [bp - 0x0006], ax       ; 0x0fcc
    mov word [bp - 0x0002], 0        ; 0x0fcf
@..api_idx_0006_2.l8:
    mov word [bp - 0x0004], 0        ; 0x0fd4
@..api_idx_0006_2.l9:
    push word [bp - 0x0006]          ; 0x0fd9
    mov ax, 0xf8                     ; 0x0fdc
    push ax                          ; 0x0fdf
    mov ax, 0x48                     ; 0x0fe0
    push ax                          ; 0x0fe3
    mov ax, 6                        ; 0x0fe4
    imul word [bp - 0x0002]          ; 0x0fe7
    mov cx, word [bp - 0x0004]       ; 0x0fea
    shl cx, 1                        ; 0x0fed
    add ax, cx                       ; 0x0fef
    mov bx, ax                       ; 0x0ff1
    mov cx, word [bx + 0x580]        ; 0x0ff3
    mov ax, 0x64                     ; 0x0ff7
    sub ax, cx                       ; 0x0ffa
    push ax                          ; 0x0ffc
    mov ax, 0                        ; 0x0ffd
    push ax                          ; 0x1000
    push word [bp - 0x0004]          ; 0x1001
    push word [bp - 0x0002]          ; 0x1004
    call api_idx_001c                ; 0x1007
    add sp, byte 0x0e                ; 0x100a
    inc word [bp - 0x0004]           ; 0x100d
    mov ax, word [bp - 0x0004]       ; 0x1010
    cmp ax, strict word 3            ; 0x1013
    jl short @..api_idx_0006_2.l9    ; 0x1016
    inc word [bp - 0x0002]           ; 0x1018
    mov ax, word [bp - 0x0002]       ; 0x101b
    cmp ax, strict word 3            ; 0x101e
    jl short @..api_idx_0006_2.l8    ; 0x1021
    call api_idx_000e_2              ; 0x1023
    cmp word [bp - 0x0006], byte 0   ; 0x1026
    je short @..api_idx_0006_2.l10   ; 0x102a
    mov ax, word [data_82e8]         ; 0x102c
    inc ax                           ; 0x102f
    mov cx, data_0002                ; 0x1030
    cwd                              ; 0x1033
    idiv cx                          ; 0x1034
    mov word [data_82e8], dx         ; 0x1036
@..api_idx_0006_2.l10:
    call ds_dispatch_da22            ; 0x103a
    jmp short @..api_idx_0006_2.l16  ; 0x103d
@..api_idx_0006_2.l11:
    push word [data_845e]            ; 0x103f
    call loc_0e6c                    ; 0x1043
    pop cx                           ; 0x1046
    jmp short @..api_idx_0006_2.l16  ; 0x1047
@..api_idx_0006_2.l12:
    cmp ax, strict word 0xfffd       ; 0x1049
    jne short @..api_idx_0006_2.l13  ; 0x104c
    jmp near @..api_idx_0006_2.l1    ; 0x104e
@..api_idx_0006_2.l13:
    cmp ax, strict word 0xfffe       ; 0x1051
    jne short @..api_idx_0006_2.l14  ; 0x1054
    jmp near @..api_idx_0006_2.l2    ; 0x1056
@..api_idx_0006_2.l14:
    cmp ax, strict word 0xffff       ; 0x1059
    jne short @..api_idx_0006_2.l15  ; 0x105c
    jmp near @..api_idx_0006_2.l7    ; 0x105e
@..api_idx_0006_2.l15:
    jmp short @..api_idx_0006_2.l11  ; 0x1061
@..api_idx_0006_2.l16:
    inc word [data_845e]             ; 0x1063
    mov ax, word [data_845e]         ; 0x1067
    cmp ax, strict word 0xc          ; 0x106a
    jne short @..api_idx_0006_2.l17  ; 0x106d
    mov word [data_845e], 0xfffd     ; 0x106f
@..api_idx_0006_2.l17:
    ret                              ; 0x1075
loc_1076:
    mov ax, 0                        ; 0x1076
    call ds_dispatch_f40b            ; 0x1079
    mov word [data_845e], 0xfffe     ; 0x107c
@..local.l47:
    call api_idx_0006_2              ; 0x1082
    cmp word [data_845e], byte 0xfe  ; 0x1085
    jne short @..local.l47           ; 0x108a
    ret                              ; 0x108c
loc_108d:
    mov ax, 0                        ; 0x108d
    call ds_dispatch_f40b            ; 0x1090
@..local.l48:
    cmp word [data_845e], byte 0xfe  ; 0x1093
    je short @..local.l49            ; 0x1098
    call api_idx_0006_2              ; 0x109a
    jmp short @..local.l48           ; 0x109d
@..local.l49:
    ret                              ; 0x109f
loc_10a0:
    mov ax, 0                        ; 0x10a0
    call ds_dispatch_f40b            ; 0x10a3
    push word [bp + 0xc]             ; 0x10a6
    mov ax, word [bp + 0x6]          ; 0x10a9
    dec ax                           ; 0x10ac
    push ax                          ; 0x10ad
    mov ax, word [bp + 0x8]          ; 0x10ae
    inc ax                           ; 0x10b1
    push ax                          ; 0x10b2
    mov ax, word [bp + 0x6]          ; 0x10b3
    dec ax                           ; 0x10b6
    push ax                          ; 0x10b7
    mov ax, word [bp + 0x4]          ; 0x10b8
    dec ax                           ; 0x10bb
    push ax                          ; 0x10bc
    call ds_dispatch_e901            ; 0x10bd
    add sp, byte 0x0a                ; 0x10c0
    push word [bp + 0xc]             ; 0x10c3
    mov ax, word [bp + 0xa]          ; 0x10c6
    inc ax                           ; 0x10c9
    push ax                          ; 0x10ca
    mov ax, word [bp + 0x8]          ; 0x10cb
    inc ax                           ; 0x10ce
    push ax                          ; 0x10cf
    mov ax, word [bp + 0x6]          ; 0x10d0
    dec ax                           ; 0x10d3
    push ax                          ; 0x10d4
    mov ax, word [bp + 0x8]          ; 0x10d5
    inc ax                           ; 0x10d8
    push ax                          ; 0x10d9
    call ds_dispatch_e901            ; 0x10da
    add sp, byte 0x0a                ; 0x10dd
    push word [bp + 0xc]             ; 0x10e0
    mov ax, word [bp + 0xa]          ; 0x10e3
    inc ax                           ; 0x10e6
    push ax                          ; 0x10e7
    mov ax, word [bp + 0x8]          ; 0x10e8
    inc ax                           ; 0x10eb
    push ax                          ; 0x10ec
    mov ax, word [bp + 0xa]          ; 0x10ed
    inc ax                           ; 0x10f0
    push ax                          ; 0x10f1
    mov ax, word [bp + 0x4]          ; 0x10f2
    dec ax                           ; 0x10f5
    push ax                          ; 0x10f6
    call ds_dispatch_e901            ; 0x10f7
    add sp, byte 0x0a                ; 0x10fa
    push word [bp + 0xc]             ; 0x10fd
    mov ax, word [bp + 0xa]          ; 0x1100
    inc ax                           ; 0x1103
    push ax                          ; 0x1104
    mov ax, word [bp + 0x4]          ; 0x1105
    dec ax                           ; 0x1108
    push ax                          ; 0x1109
    mov ax, word [bp + 0x6]          ; 0x110a
    dec ax                           ; 0x110d
    push ax                          ; 0x110e
    mov ax, word [bp + 0x4]          ; 0x110f
    dec ax                           ; 0x1112
    push ax                          ; 0x1113
    call ds_dispatch_e901            ; 0x1114
    add sp, byte 0x0a                ; 0x1117
    ret                              ; 0x111a
math_loc_111b:
    mov ax, 0xfe32                   ; 0x111b
    call ds_dispatch_f40b            ; 0x111e
    mov word [data_9052], 0xffff     ; 0x1121
    mov ax, word [bp + 0x14]         ; 0x1127
    shl ax, 1                        ; 0x112a
    mov word [bp - 0x0010], ax       ; 0x112c
    mov word [bp - 0x0002], 0        ; 0x112f
    mov word [bp - 0x0004], 0        ; 0x1134
@..math_loc_111b.l1:
    mov ax, word [bp - 0x0004]       ; 0x1139
    shl ax, 1                        ; 0x113c
    mov si, ax                       ; 0x113e
    mov bx, word [bp + 0x1a]         ; 0x1140
    cmp word [bx + si], byte 0xff    ; 0x1143
    jne short @..math_loc_111b.l2    ; 0x1146
    jmp near @..math_loc_111b.l7     ; 0x1148
@..math_loc_111b.l2:
    cmp word [bx + si], byte 1       ; 0x114b
    je short @..math_loc_111b.l3     ; 0x114e
    jmp near @..math_loc_111b.l6     ; 0x1150
@..math_loc_111b.l3:
    mov ax, word [bp - 0x0002]       ; 0x1153
    cmp word [bp + 0x16], byte 0     ; 0x1156
    je short @..math_loc_111b.l4     ; 0x115a
    mov ax, word [bp - 0x0004]       ; 0x115c
@..math_loc_111b.l4:
    mov word [bp - 0x0008], ax       ; 0x115f
    mov ax, word [bp + 0xa]          ; 0x1162
    mov cx, word [bp - 0x0008]       ; 0x1165
    cmp cx, word [bp - 0x0010]       ; 0x1168
    jge short @..math_loc_111b.l5    ; 0x116b
    mov ax, word [bp + 0x8]          ; 0x116d
@..math_loc_111b.l5:
    mov word [bp - 0x0006], ax       ; 0x1170
    mov ax, 0x14                     ; 0x1173
    imul word [bp - 0x0002]          ; 0x1176
    lea cx, word [bp - 0x015a]       ; 0x1179
    add ax, cx                       ; 0x117d
    push ax                          ; 0x117f
    mov ax, word [bp + 0x4]          ; 0x1180
    add ax, word [bp - 0x0004]       ; 0x1183
    push ax                          ; 0x1186
    call ds_dispatch_b53b            ; 0x1187
    add sp, byte 4                   ; 0x118a
    mov ax, word [bp - 0x0008]       ; 0x118d
    cwd                              ; 0x1190
    idiv word [bp - 0x0010]          ; 0x1191
    mov ax, dx                       ; 0x1194
    cwd                              ; 0x1196
    idiv word [bp + 0x14]            ; 0x1197
    imul word [bp + 0x10]            ; 0x119a
    mov word [bp - 0x000a], ax       ; 0x119d
    mov ax, word [bp - 0x0008]       ; 0x11a0
    cwd                              ; 0x11a3
    idiv word [bp - 0x0010]          ; 0x11a4
    mov ax, dx                       ; 0x11a7
    cwd                              ; 0x11a9
    idiv word [bp + 0x14]            ; 0x11aa
    mov ax, dx                       ; 0x11ad
    imul word [bp + 0x12]            ; 0x11af
    mov word [bp - 0x000c], ax       ; 0x11b2
    mov ax, 0                        ; 0x11b5
    push ax                          ; 0x11b8
    mov ax, word [bp + 0xc]          ; 0x11b9
    add ax, word [bp - 0x000c]       ; 0x11bc
    add ax, strict word 6            ; 0x11bf
    push ax                          ; 0x11c2
    mov ax, 6                        ; 0x11c3
    imul word [bp + 0xe]             ; 0x11c6
    add ax, word [bp - 0x0006]       ; 0x11c9
    add ax, word [bp - 0x000a]       ; 0x11cc
    push ax                          ; 0x11cf
    mov ax, word [bp + 0xc]          ; 0x11d0
    add ax, word [bp - 0x000c]       ; 0x11d3
    push ax                          ; 0x11d6
    mov ax, word [bp - 0x0006]       ; 0x11d7
    add ax, word [bp - 0x000a]       ; 0x11da
    push ax                          ; 0x11dd
    call ds_dispatch_bce3            ; 0x11de
    add sp, byte 0x0a                ; 0x11e1
    mov ax, 0                        ; 0x11e4
    push ax                          ; 0x11e7
    push word [bp + 0x18]            ; 0x11e8
    call ds_dispatch_e823            ; 0x11eb
    add sp, byte 4                   ; 0x11ee
    mov ax, word [bp + 0xc]          ; 0x11f1
    add ax, word [bp - 0x000c]       ; 0x11f4
    inc ax                           ; 0x11f7
    push ax                          ; 0x11f8
    mov ax, 0x14                     ; 0x11f9
    imul word [bp - 0x0002]          ; 0x11fc
    lea cx, word [bp - 0x015a]       ; 0x11ff
    add ax, cx                       ; 0x1203
    push ax                          ; 0x1205
    call ds_dispatch_fa90            ; 0x1206
    pop cx                           ; 0x1209
    mov cx, ax                       ; 0x120a
    mov ax, word [bp + 0xe]          ; 0x120c
    sub ax, cx                       ; 0x120f
    mov cx, 6                        ; 0x1211
    imul cx                          ; 0x1214
    mov cx, data_0002                ; 0x1216
    cwd                              ; 0x1219
    idiv cx                          ; 0x121a
    add ax, word [bp - 0x0006]       ; 0x121c
    add ax, word [bp - 0x000a]       ; 0x121f
    inc ax                           ; 0x1222
    push ax                          ; 0x1223
    call ds_dispatch_e809            ; 0x1224
    add sp, byte 4                   ; 0x1227
    mov ax, 0                        ; 0x122a
    push ax                          ; 0x122d
    mov ax, 0x14                     ; 0x122e
    imul word [bp - 0x0002]          ; 0x1231
    lea cx, word [bp - 0x015a]       ; 0x1234
    add ax, cx                       ; 0x1238
    push ax                          ; 0x123a
    call ds_dispatch_e84e            ; 0x123b
    add sp, byte 4                   ; 0x123e
    mov ax, 0                        ; 0x1241
    push ax                          ; 0x1244
    push ax                          ; 0x1245
    mov ax, word [bp + 0xc]          ; 0x1246
    add ax, word [bp - 0x000c]       ; 0x1249
    add ax, strict word 6            ; 0x124c
    push ax                          ; 0x124f
    mov ax, 6                        ; 0x1250
    imul word [bp + 0xe]             ; 0x1253
    add ax, word [bp - 0x0006]       ; 0x1256
    add ax, word [bp - 0x000a]       ; 0x1259
    push ax                          ; 0x125c
    mov ax, word [bp + 0xc]          ; 0x125d
    add ax, word [bp - 0x000c]       ; 0x1260
    push ax                          ; 0x1263
    mov ax, word [bp - 0x0006]       ; 0x1264
    add ax, word [bp - 0x000a]       ; 0x1267
    push ax                          ; 0x126a
    push word [bp - 0x0002]          ; 0x126b
    call ds_dispatch_baa6            ; 0x126e
    add sp, byte 0x0e                ; 0x1271
    mov ax, word [bp - 0x0004]       ; 0x1274
    mov cx, word [bp - 0x0002]       ; 0x1277
    shl cx, 1                        ; 0x127a
    mov bx, cx                       ; 0x127c
    add bx, bp                       ; 0x127e
    mov word [bx - 0x002e], ax       ; 0x1280
    mov ax, word [bp - 0x0002]       ; 0x1283
    mov cx, word [bp - 0x0008]       ; 0x1286
    shl cx, 1                        ; 0x1289
    mov bx, cx                       ; 0x128b
    add bx, bp                       ; 0x128d
    mov word [bx - 0x01ce], ax       ; 0x128f
    inc word [bp - 0x0002]           ; 0x1293
@..math_loc_111b.l6:
    inc word [bp - 0x0004]           ; 0x1296
    jmp near @..math_loc_111b.l1     ; 0x1299
@..math_loc_111b.l7:
    mov ax, word [bp - 0x0004]       ; 0x129c
    mov word [bp - 0x01ac], ax       ; 0x129f
    mov ax, 0                        ; 0x12a3
    push ax                          ; 0x12a6
    push ax                          ; 0x12a7
    push ax                          ; 0x12a8
    push ax                          ; 0x12a9
    push ax                          ; 0x12aa
    mov ax, 0xffff                   ; 0x12ab
    push ax                          ; 0x12ae
    push word [bp - 0x0002]          ; 0x12af
    call ds_dispatch_baa6            ; 0x12b2
    add sp, byte 0x0e                ; 0x12b5
    cmp word [bp + 0x16], byte 1     ; 0x12b8
    jne short @..local.l50           ; 0x12bc
    mov word [bp - 0x000e], 0        ; 0x12be
    jmp short @..math_loc_111b.l9    ; 0x12c3
@..math_loc_111b.l8:
    mov ax, 0                        ; 0x12c5
    push ax                          ; 0x12c8
    mov ax, word [bp - 0x000e]       ; 0x12c9
    add ax, strict word 0x31         ; 0x12cc
    cbw                              ; 0x12cf
    push ax                          ; 0x12d0
    mov ax, 6                        ; 0x12d1
    imul word [bp - 0x000e]          ; 0x12d4
    add ax, 0xa8                     ; 0x12d7
    push ax                          ; 0x12da
    mov ax, 0xdd                     ; 0x12db
    push ax                          ; 0x12de
    mov ax, 6                        ; 0x12df
    imul word [bp - 0x000e]          ; 0x12e2
    add ax, 0xa4                     ; 0x12e5
    push ax                          ; 0x12e8
    mov ax, 0x62                     ; 0x12e9
    push ax                          ; 0x12ec
    mov ax, word [bp - 0x0002]       ; 0x12ed
    add ax, word [bp - 0x000e]       ; 0x12f0
    push ax                          ; 0x12f3
    call ds_dispatch_baa6            ; 0x12f4
    add sp, byte 0x0e                ; 0x12f7
    inc word [bp - 0x000e]           ; 0x12fa
@..math_loc_111b.l9:
    mov ax, word [bp - 0x000e]       ; 0x12fd
    cmp ax, word [data_8466]         ; 0x1300
    jl short @..math_loc_111b.l8     ; 0x1304
    mov ax, 0                        ; 0x1306
    push ax                          ; 0x1309
    push ax                          ; 0x130a
    push ax                          ; 0x130b
    push ax                          ; 0x130c
    push ax                          ; 0x130d
    mov ax, 0xffff                   ; 0x130e
    push ax                          ; 0x1311
    mov ax, word [bp - 0x0002]       ; 0x1312
    add ax, word [data_8466]         ; 0x1315
    push ax                          ; 0x1319
    call ds_dispatch_baa6            ; 0x131a
    add sp, byte 0x0e                ; 0x131d
@..local.l50:
    push word [bp + 0x6]             ; 0x1320
    call loc_02af                    ; 0x1323
    pop cx                           ; 0x1326
    cmp word [data_0e32], byte 0     ; 0x1327
    je short @..local.l52            ; 0x132c
@..local.l51:
    mov ax, 0x59fe                   ; 0x132e
    push ax                          ; 0x1331
    call ds_dispatch_b90d            ; 0x1332
    pop cx                           ; 0x1335
    mov word [bp - 0x0004], ax       ; 0x1336
    call api_idx_0006_2              ; 0x1339
    cmp word [data_5b3e], byte 0     ; 0x133c
    je short @..local.l51            ; 0x1341
    jmp near @..local.l86            ; 0x1343
@..local.l52:
    mov word [bp - 0x0004], 0        ; 0x1346
@..local.l53:
    cmp word [bp + 0x16], byte 0     ; 0x134b
    je short @..local.l54            ; 0x134f
    mov ax, word [bp - 0x0004]       ; 0x1351
    shl ax, 1                        ; 0x1354
    mov si, ax                       ; 0x1356
    mov bx, word [bp + 0x1a]         ; 0x1358
    cmp word [bx + si], byte 1       ; 0x135b
    je short @..local.l54            ; 0x135e
    inc word [bp - 0x0004]           ; 0x1360
    jmp short @..local.l53           ; 0x1363
@..local.l54:
    mov ax, word [bp + 0xa]          ; 0x1365
    mov cx, word [bp - 0x0004]       ; 0x1368
    cmp cx, word [bp - 0x0010]       ; 0x136b
    jge short @..local.l55           ; 0x136e
    mov ax, word [bp + 0x8]          ; 0x1370
@..local.l55:
    mov word [bp - 0x0006], ax       ; 0x1373
    mov ax, cx                       ; 0x1376
    cwd                              ; 0x1378
    idiv word [bp - 0x0010]          ; 0x1379
    mov ax, dx                       ; 0x137c
    cwd                              ; 0x137e
    idiv word [bp + 0x14]            ; 0x137f
    imul word [bp + 0x10]            ; 0x1382
    mov word [bp - 0x000a], ax       ; 0x1385
    mov ax, cx                       ; 0x1388
    cwd                              ; 0x138a
    idiv word [bp - 0x0010]          ; 0x138b
    mov ax, dx                       ; 0x138e
    cwd                              ; 0x1390
    idiv word [bp + 0x14]            ; 0x1391
    mov ax, dx                       ; 0x1394
    imul word [bp + 0x12]            ; 0x1396
    mov word [bp - 0x000c], ax       ; 0x1399
    mov ax, 0x16                     ; 0x139c
    push ax                          ; 0x139f
    mov ax, word [bp + 0xc]          ; 0x13a0
    add ax, word [bp - 0x000c]       ; 0x13a3
    add ax, strict word 6            ; 0x13a6
    push ax                          ; 0x13a9
    mov ax, 6                        ; 0x13aa
    imul word [bp + 0xe]             ; 0x13ad
    add ax, word [bp - 0x0006]       ; 0x13b0
    add ax, word [bp - 0x000a]       ; 0x13b3
    push ax                          ; 0x13b6
    mov ax, word [bp + 0xc]          ; 0x13b7
    add ax, word [bp - 0x000c]       ; 0x13ba
    push ax                          ; 0x13bd
    mov ax, word [bp - 0x0006]       ; 0x13be
    add ax, word [bp - 0x000a]       ; 0x13c1
    push ax                          ; 0x13c4
    call loc_10a0                    ; 0x13c5
    add sp, byte 0x0a                ; 0x13c8
    push word [bp + 0x6]             ; 0x13cb
    call loc_02af                    ; 0x13ce
    pop cx                           ; 0x13d1
    mov ax, 0                        ; 0x13d2
    push ax                          ; 0x13d5
    mov ax, word [bp + 0xc]          ; 0x13d6
    add ax, word [bp - 0x000c]       ; 0x13d9
    add ax, strict word 6            ; 0x13dc
    push ax                          ; 0x13df
    mov ax, 6                        ; 0x13e0
    imul word [bp + 0xe]             ; 0x13e3
    add ax, word [bp - 0x0006]       ; 0x13e6
    add ax, word [bp - 0x000a]       ; 0x13e9
    push ax                          ; 0x13ec
    mov ax, word [bp + 0xc]          ; 0x13ed
    add ax, word [bp - 0x000c]       ; 0x13f0
    push ax                          ; 0x13f3
    mov ax, word [bp - 0x0006]       ; 0x13f4
    add ax, word [bp - 0x000a]       ; 0x13f7
    push ax                          ; 0x13fa
    call loc_10a0                    ; 0x13fb
    add sp, byte 0x0a                ; 0x13fe
@..local.l56:
    mov ax, 1                        ; 0x1401
    push ax                          ; 0x1404
    call ds_dispatch_ea50            ; 0x1405
    pop cx                           ; 0x1408
    test ax, ax                      ; 0x1409
    jne short @..local.l57           ; 0x140b
    call api_idx_0006_2              ; 0x140d
    jmp short @..local.l56           ; 0x1410
@..local.l57:
    mov ax, 1                        ; 0x1412
    push ax                          ; 0x1415
    call ds_dispatch_eb32            ; 0x1416
    pop cx                           ; 0x1419
    sub ah, ah                       ; 0x141a
    mov word [bp - 0x01ae], ax       ; 0x141c
    cmp ax, strict word 0xd          ; 0x1420
    jne short @..local.l58           ; 0x1423
    mov ax, word [bp - 0x0004]       ; 0x1425
    shl ax, 1                        ; 0x1428
    mov bx, ax                       ; 0x142a
    add bx, bp                       ; 0x142c
    mov ax, word [bx - 0x01ce]       ; 0x142e
    mov word [bp - 0x0004], ax       ; 0x1432
    jmp near @..local.l84            ; 0x1435
@..local.l58:
    cmp word [bp + 0x16], byte 1     ; 0x1438
    jne short @..local.l59           ; 0x143c
    cmp word [bp - 0x01ae], byte 0x31 ; 0x143e
    jl short @..local.l59            ; 0x1443
    mov ax, word [data_8466]         ; 0x1445
    add ax, strict word 0x30         ; 0x1448
    cmp ax, word [bp - 0x01ae]       ; 0x144b
    jl short @..local.l59            ; 0x144f
    mov ax, word [bp - 0x0002]       ; 0x1451
    add ax, word [bp - 0x01ae]       ; 0x1454
    add ax, strict word 0xffcf       ; 0x1458
    mov word [bp - 0x0004], ax       ; 0x145b
    mov word [bp - 0x01ae], 0xd      ; 0x145e
    jmp near @..local.l84            ; 0x1464
@..local.l59:
    mov ax, word [bp - 0x0004]       ; 0x1467
    cwd                              ; 0x146a
    idiv word [bp + 0x14]            ; 0x146b
    mov word [bp - 0x000a], ax       ; 0x146e
    mov ax, word [bp - 0x01ac]       ; 0x1471
    dec ax                           ; 0x1475
    cwd                              ; 0x1476
    idiv word [bp + 0x14]            ; 0x1477
    inc ax                           ; 0x147a
    imul word [bp + 0x14]            ; 0x147b
    mov word [bp - 0x000c], ax       ; 0x147e
    mov ax, word [bp - 0x01ae]       ; 0x1481
    jmp near @..local.l80            ; 0x1485
@..local.l60:
    mov ax, word [bp - 0x0004]       ; 0x1488
    add ax, word [bp + 0x14]         ; 0x148b
    dec ax                           ; 0x148e
    cwd                              ; 0x148f
    idiv word [bp + 0x14]            ; 0x1490
    mov ax, dx                       ; 0x1493
    push ax                          ; 0x1495
    mov ax, word [bp - 0x000a]       ; 0x1496
    imul word [bp + 0x14]            ; 0x1499
    mov cx, ax                       ; 0x149c
    pop ax                           ; 0x149e
    add ax, cx                       ; 0x149f
    mov word [bp - 0x0004], ax       ; 0x14a1
    cmp word [bp + 0x16], byte 0     ; 0x14a4
    je short @..local.l61            ; 0x14a8
    mov ax, word [bp - 0x0004]       ; 0x14aa
    shl ax, 1                        ; 0x14ad
    mov si, ax                       ; 0x14af
    mov bx, word [bp + 0x1a]         ; 0x14b1
    cmp word [bx + si], byte 1       ; 0x14b4
    jne short @..local.l60           ; 0x14b7
@..local.l61:
    cmp word [bp + 0x16], byte 0     ; 0x14b9
    jne short @..local.l62           ; 0x14bd
    mov ax, word [bp - 0x0004]       ; 0x14bf
    cmp ax, word [bp - 0x0002]       ; 0x14c2
    jge short @..local.l60           ; 0x14c5
@..local.l62:
    jmp near @..local.l84            ; 0x14c7
@..local.l63:
    mov ax, word [bp - 0x0004]       ; 0x14ca
    inc ax                           ; 0x14cd
    cwd                              ; 0x14ce
    idiv word [bp + 0x14]            ; 0x14cf
    mov ax, dx                       ; 0x14d2
    push ax                          ; 0x14d4
    mov ax, word [bp - 0x000a]       ; 0x14d5
    imul word [bp + 0x14]            ; 0x14d8
    mov cx, ax                       ; 0x14db
    pop ax                           ; 0x14dd
    add ax, cx                       ; 0x14de
    mov word [bp - 0x0004], ax       ; 0x14e0
    cmp word [bp + 0x16], byte 0     ; 0x14e3
    je short @..local.l64            ; 0x14e7
    mov ax, word [bp - 0x0004]       ; 0x14e9
    shl ax, 1                        ; 0x14ec
    mov si, ax                       ; 0x14ee
    mov bx, word [bp + 0x1a]         ; 0x14f0
    cmp word [bx + si], byte 1       ; 0x14f3
    jne short @..local.l63           ; 0x14f6
@..local.l64:
    cmp word [bp + 0x16], byte 0     ; 0x14f8
    jne short @..local.l65           ; 0x14fc
    mov ax, word [bp - 0x0004]       ; 0x14fe
    cmp ax, word [bp - 0x0002]       ; 0x1501
    jge short @..local.l63           ; 0x1504
@..local.l65:
    jmp near @..local.l84            ; 0x1506
@..local.l66:
    mov ax, word [bp - 0x0004]       ; 0x1509
    sub ax, word [bp + 0x14]         ; 0x150c
    add ax, word [bp - 0x000c]       ; 0x150f
    cwd                              ; 0x1512
    idiv word [bp - 0x000c]          ; 0x1513
    mov word [bp - 0x0004], dx       ; 0x1516
    mov ax, dx                       ; 0x1519
    cwd                              ; 0x151b
    idiv word [bp + 0x14]            ; 0x151c
    mov word [bp - 0x000a], ax       ; 0x151f
    mov word [bp - 0x01b0], 0        ; 0x1522
@..local.l67:
    mov ax, word [bp - 0x01b0]       ; 0x1528
    cmp ax, word [bp + 0x14]         ; 0x152c
    jge short @..local.l70           ; 0x152f
    cmp word [bp + 0x16], byte 0     ; 0x1531
    je short @..local.l68            ; 0x1535
    mov ax, word [bp - 0x0004]       ; 0x1537
    shl ax, 1                        ; 0x153a
    mov si, ax                       ; 0x153c
    mov bx, word [bp + 0x1a]         ; 0x153e
    cmp word [bx + si], byte 1       ; 0x1541
    jne short @..local.l69           ; 0x1544
@..local.l68:
    cmp word [bp + 0x16], byte 0     ; 0x1546
    jne short @..local.l70           ; 0x154a
    mov ax, word [bp - 0x0004]       ; 0x154c
    cmp ax, word [bp - 0x0002]       ; 0x154f
    jl short @..local.l70            ; 0x1552
@..local.l69:
    mov ax, word [bp - 0x0004]       ; 0x1554
    add ax, word [bp + 0x14]         ; 0x1557
    dec ax                           ; 0x155a
    cwd                              ; 0x155b
    idiv word [bp + 0x14]            ; 0x155c
    mov ax, dx                       ; 0x155f
    push ax                          ; 0x1561
    mov ax, word [bp - 0x000a]       ; 0x1562
    imul word [bp + 0x14]            ; 0x1565
    mov cx, ax                       ; 0x1568
    pop ax                           ; 0x156a
    add ax, cx                       ; 0x156b
    mov word [bp - 0x0004], ax       ; 0x156d
    inc word [bp - 0x01b0]           ; 0x1570
    jmp short @..local.l67           ; 0x1574
@..local.l70:
    cmp word [bp + 0x16], byte 0     ; 0x1576
    je short @..local.l71            ; 0x157a
    mov ax, word [bp - 0x0004]       ; 0x157c
    shl ax, 1                        ; 0x157f
    mov si, ax                       ; 0x1581
    mov bx, word [bp + 0x1a]         ; 0x1583
    cmp word [bx + si], byte 1       ; 0x1586
    je short @..local.l71            ; 0x1589
    jmp near @..local.l66            ; 0x158b
@..local.l71:
    cmp word [bp + 0x16], byte 0     ; 0x158e
    jne short @..local.l72           ; 0x1592
    mov ax, word [bp - 0x0004]       ; 0x1594
    cmp ax, word [bp - 0x0002]       ; 0x1597
    jl short @..local.l72            ; 0x159a
    jmp near @..local.l66            ; 0x159c
@..local.l72:
    jmp near @..local.l84            ; 0x159f
@..local.l73:
    mov ax, word [bp - 0x0004]       ; 0x15a2
    add ax, word [bp + 0x14]         ; 0x15a5
    cwd                              ; 0x15a8
    idiv word [bp - 0x000c]          ; 0x15a9
    mov word [bp - 0x0004], dx       ; 0x15ac
    mov ax, dx                       ; 0x15af
    cwd                              ; 0x15b1
    idiv word [bp + 0x14]            ; 0x15b2
    mov word [bp - 0x000a], ax       ; 0x15b5
    mov word [bp - 0x01b0], 0        ; 0x15b8
@..local.l74:
    mov ax, word [bp - 0x01b0]       ; 0x15be
    cmp ax, word [bp + 0x14]         ; 0x15c2
    jge short @..local.l77           ; 0x15c5
    cmp word [bp + 0x16], byte 0     ; 0x15c7
    je short @..local.l75            ; 0x15cb
    mov ax, word [bp - 0x0004]       ; 0x15cd
    shl ax, 1                        ; 0x15d0
    mov si, ax                       ; 0x15d2
    mov bx, word [bp + 0x1a]         ; 0x15d4
    cmp word [bx + si], byte 1       ; 0x15d7
    jne short @..local.l76           ; 0x15da
@..local.l75:
    cmp word [bp + 0x16], byte 0     ; 0x15dc
    jne short @..local.l77           ; 0x15e0
    mov ax, word [bp - 0x0004]       ; 0x15e2
    cmp ax, word [bp - 0x0002]       ; 0x15e5
    jl short @..local.l77            ; 0x15e8
@..local.l76:
    mov ax, word [bp - 0x0004]       ; 0x15ea
    inc ax                           ; 0x15ed
    cwd                              ; 0x15ee
    idiv word [bp + 0x14]            ; 0x15ef
    mov ax, dx                       ; 0x15f2
    push ax                          ; 0x15f4
    mov ax, word [bp - 0x000a]       ; 0x15f5
    imul word [bp + 0x14]            ; 0x15f8
    mov cx, ax                       ; 0x15fb
    pop ax                           ; 0x15fd
    add ax, cx                       ; 0x15fe
    mov word [bp - 0x0004], ax       ; 0x1600
    inc word [bp - 0x01b0]           ; 0x1603
    jmp short @..local.l74           ; 0x1607
@..local.l77:
    cmp word [bp + 0x16], byte 0     ; 0x1609
    je short @..local.l78            ; 0x160d
    mov ax, word [bp - 0x0004]       ; 0x160f
    shl ax, 1                        ; 0x1612
    mov si, ax                       ; 0x1614
    mov bx, word [bp + 0x1a]         ; 0x1616
    cmp word [bx + si], byte 1       ; 0x1619
    jne short @..local.l73           ; 0x161c
@..local.l78:
    cmp word [bp + 0x16], byte 0     ; 0x161e
    jne short @..local.l79           ; 0x1622
    mov ax, word [bp - 0x0004]       ; 0x1624
    cmp ax, word [bp - 0x0002]       ; 0x1627
    jl short @..local.l79            ; 0x162a
    jmp near @..local.l73            ; 0x162c
@..local.l79:
    jmp short @..local.l84           ; 0x162f
@..local.l80:
    cmp ax, strict word 8            ; 0x1631
    jne short @..local.l81           ; 0x1634
    jmp near @..local.l66            ; 0x1636
@..local.l81:
    cmp ax, strict word 9            ; 0x1639
    jne short @..local.l82           ; 0x163c
    jmp near @..local.l60            ; 0x163e
@..local.l82:
    cmp ax, strict word 0xa          ; 0x1641
    jne short @..local.l83           ; 0x1644
    jmp near @..local.l73            ; 0x1646
@..local.l83:
    cmp ax, strict word 0xb          ; 0x1649
    jne short @..local.l84           ; 0x164c
    jmp near @..local.l63            ; 0x164e
@..local.l84:
    cmp word [bp - 0x01ae], byte 0x0d ; 0x1651
    je short @..local.l85            ; 0x1656
    jmp near @..local.l54            ; 0x1658
@..local.l85:
    inc word [bp - 0x0004]           ; 0x165b
    push word [bp + 0x6]             ; 0x165e
    call loc_02af                    ; 0x1661
    pop cx                           ; 0x1664
@..local.l86:
    dec word [bp - 0x0004]           ; 0x1665
    mov ax, word [bp - 0x0004]       ; 0x1668
    cmp ax, word [bp - 0x0002]       ; 0x166b
    jl short @..local.l87            ; 0x166e
    mov ax, 0                        ; 0x1670
    mov cx, word [bp - 0x0004]       ; 0x1673
    sub cx, word [bp - 0x0002]       ; 0x1676
    sub ax, cx                       ; 0x1679
    dec ax                           ; 0x167b
    ret                              ; 0x167c
@..local.l87:
    mov ax, word [bp - 0x0004]       ; 0x167d
    cmp word [bp + 0x16], byte 0     ; 0x1680
    je short @..local.l88            ; 0x1684
    shl ax, 1                        ; 0x1686
    mov bx, ax                       ; 0x1688
    add bx, bp                       ; 0x168a
    mov ax, word [bx - 0x002e]       ; 0x168c
@..local.l88:
    mov word [bp - 0x0008], ax       ; 0x168f
    mov ax, word [bp + 0xa]          ; 0x1692
    mov cx, word [bp - 0x0008]       ; 0x1695
    cmp cx, word [bp - 0x0010]       ; 0x1698
    jge short @..local.l89           ; 0x169b
    mov ax, word [bp + 0x8]          ; 0x169d
@..local.l89:
    mov word [bp - 0x0006], ax       ; 0x16a0
    mov ax, cx                       ; 0x16a3
    cwd                              ; 0x16a5
    idiv word [bp - 0x0010]          ; 0x16a6
    mov ax, dx                       ; 0x16a9
    cwd                              ; 0x16ab
    idiv word [bp + 0x14]            ; 0x16ac
    imul word [bp + 0x10]            ; 0x16af
    mov word [bp - 0x000a], ax       ; 0x16b2
    mov ax, cx                       ; 0x16b5
    cwd                              ; 0x16b7
    idiv word [bp - 0x0010]          ; 0x16b8
    mov ax, dx                       ; 0x16bb
    cwd                              ; 0x16bd
    idiv word [bp + 0x14]            ; 0x16be
    mov ax, dx                       ; 0x16c1
    imul word [bp + 0x12]            ; 0x16c3
    mov word [bp - 0x000c], ax       ; 0x16c6
    add ax, word [bp + 0xc]          ; 0x16c9
    add ax, strict word 6            ; 0x16cc
    push ax                          ; 0x16cf
    mov ax, 6                        ; 0x16d0
    imul word [bp + 0xe]             ; 0x16d3
    add ax, word [bp - 0x0006]       ; 0x16d6
    add ax, word [bp - 0x000a]       ; 0x16d9
    push ax                          ; 0x16dc
    mov ax, word [bp - 0x000c]       ; 0x16dd
    add ax, word [bp + 0xc]          ; 0x16e0
    push ax                          ; 0x16e3
    mov ax, word [bp - 0x0006]       ; 0x16e4
    add ax, word [bp - 0x000a]       ; 0x16e7
    push ax                          ; 0x16ea
    call ds_dispatch_e90e            ; 0x16eb
    add sp, byte 8                   ; 0x16ee
    mov ax, word [bp - 0x000c]       ; 0x16f1
    add ax, word [bp + 0xc]          ; 0x16f4
    add ax, strict word 6            ; 0x16f7
    push ax                          ; 0x16fa
    mov ax, 6                        ; 0x16fb
    imul word [bp + 0xe]             ; 0x16fe
    add ax, word [bp - 0x0006]       ; 0x1701
    add ax, word [bp - 0x000a]       ; 0x1704
    push ax                          ; 0x1707
    mov ax, word [bp - 0x000c]       ; 0x1708
    add ax, word [bp + 0xc]          ; 0x170b
    push ax                          ; 0x170e
    mov ax, word [bp - 0x0006]       ; 0x170f
    add ax, word [bp - 0x000a]       ; 0x1712
    push ax                          ; 0x1715
    call ds_dispatch_e8da            ; 0x1716
    add sp, byte 8                   ; 0x1719
    mov ax, 0x19                     ; 0x171c
    push ax                          ; 0x171f
    call ds_dispatch_e489            ; 0x1720
    pop cx                           ; 0x1723
    mov ax, word [bp + 0xc]          ; 0x1724
    add ax, word [bp - 0x000c]       ; 0x1727
    add ax, strict word 6            ; 0x172a
    push ax                          ; 0x172d
    mov ax, 6                        ; 0x172e
    imul word [bp + 0xe]             ; 0x1731
    add ax, word [bp - 0x0006]       ; 0x1734
    add ax, word [bp - 0x000a]       ; 0x1737
    push ax                          ; 0x173a
    mov ax, word [bp + 0xc]          ; 0x173b
    add ax, word [bp - 0x000c]       ; 0x173e
    push ax                          ; 0x1741
    mov ax, word [bp - 0x0006]       ; 0x1742
    add ax, word [bp - 0x000a]       ; 0x1745
    push ax                          ; 0x1748
    call ds_dispatch_e90e            ; 0x1749
    add sp, byte 8                   ; 0x174c
    mov ax, word [bp + 0xc]          ; 0x174f
    add ax, word [bp - 0x000c]       ; 0x1752
    add ax, strict word 6            ; 0x1755
    push ax                          ; 0x1758
    mov ax, 6                        ; 0x1759
    imul word [bp + 0xe]             ; 0x175c
    add ax, word [bp - 0x0006]       ; 0x175f
    add ax, word [bp - 0x000a]       ; 0x1762
    push ax                          ; 0x1765
    mov ax, word [bp + 0xc]          ; 0x1766
    add ax, word [bp - 0x000c]       ; 0x1769
    push ax                          ; 0x176c
    mov ax, word [bp - 0x0006]       ; 0x176d
    add ax, word [bp - 0x000a]       ; 0x1770
    push ax                          ; 0x1773
    call ds_dispatch_e8da            ; 0x1774
    add sp, byte 8                   ; 0x1777
    mov ax, word [bp - 0x0004]       ; 0x177a
    mov word [data_9052], ax         ; 0x177d
    shl ax, 1                        ; 0x1780
    mov bx, ax                       ; 0x1782
    add bx, bp                       ; 0x1784
    mov ax, word [bx - 0x002e]       ; 0x1786
    ret                              ; 0x1789
api_idx_000c:
    mov ax, 0xfff4                   ; 0x178a
    call ds_dispatch_f40b            ; 0x178d
    mov word [bp - 0x000c], 1        ; 0x1790
    mov word [bp - 0x0006], 0        ; 0x1795
    jmp short @..api_idx_000c.l3     ; 0x179a
@..api_idx_000c.l1:
    mov ax, 0x2c                     ; 0x179c
    imul word [bp - 0x0006]          ; 0x179f
    mov si, ax                       ; 0x17a2
    mov ax, word [bp + 0x6]          ; 0x17a4
    shl ax, 1                        ; 0x17a7
    mov bx, ax                       ; 0x17a9
    mov bx, word [bx - 0x7b7e]       ; 0x17ab
    cmp byte [bx + si + 0x2a], 0xff  ; 0x17af
    je short @..api_idx_000c.l2      ; 0x17b3
    mov word [bp - 0x000c], 0        ; 0x17b5
@..api_idx_000c.l2:
    inc word [bp - 0x0006]           ; 0x17ba
@..api_idx_000c.l3:
    mov ax, word [bp + 0x6]          ; 0x17bd
    shl ax, 1                        ; 0x17c0
    mov bx, ax                       ; 0x17c2
    mov bx, word [bx - 0x7b7e]       ; 0x17c4
    mov al, byte [bx + 0x1a1]        ; 0x17c8
    sub ah, ah                       ; 0x17cc
    cmp ax, word [bp - 0x0006]       ; 0x17ce
    jg short @..api_idx_000c.l1      ; 0x17d1
    cmp word [bp - 0x000c], byte 1   ; 0x17d3
    jne short @..local.l92           ; 0x17d7
    mov word [bp - 0x000a], 0        ; 0x17d9
@..api_idx_000c.l4:
    mov word [bp - 0x0006], 0        ; 0x17de
    jmp short @..local.l91           ; 0x17e3
@..api_idx_000c.l5:
    mov ax, 9                        ; 0x17e5
    imul word [bp + 0x6]             ; 0x17e8
    add ax, word [bp - 0x0006]       ; 0x17eb
    mov bx, ax                       ; 0x17ee
    cmp byte [bx - 0x6f31], 0        ; 0x17f0
    je short @..api_idx_000c.l6      ; 0x17f5
    mov ax, word [bp - 0x000a]       ; 0x17f7
    cmp ax, word [bp + 0x4]          ; 0x17fa
    jne short @..local.l90           ; 0x17fd
@..api_idx_000c.l6:
    mov byte [bx - 0x6f31], 1        ; 0x17ff
    mov ax, word [bp - 0x0006]       ; 0x1804
    ret                              ; 0x1807
@..local.l90:
    inc word [bp - 0x000a]           ; 0x1808
    inc word [bp - 0x0006]           ; 0x180b
@..local.l91:
    mov ax, word [bp + 0x6]          ; 0x180e
    shl ax, 1                        ; 0x1811
    mov bx, ax                       ; 0x1813
    mov bx, word [bx - 0x7b7e]       ; 0x1815
    mov al, byte [bx + 0x1a1]        ; 0x1819
    sub ah, ah                       ; 0x181d
    cmp ax, word [bp - 0x0006]       ; 0x181f
    jg short @..api_idx_000c.l5      ; 0x1822
    jmp short @..api_idx_000c.l4     ; 0x1824
@..local.l92:
    mov word [bp - 0x000a], 0        ; 0x1826
    mov word [bp - 0x000c], 0        ; 0x182b
@..local.l93:
    cmp word [bp - 0x000c], byte 0x0a ; 0x1830
    jl short @..local.l94            ; 0x1834
    jmp near @..local.l100           ; 0x1836
@..local.l94:
    inc word [bp - 0x000c]           ; 0x1839
    mov word [bp - 0x0002], 0        ; 0x183c
@..local.l95:
    mov word [bp - 0x0004], 0        ; 0x1841
@..local.l96:
    mov ax, 6                        ; 0x1846
    imul word [bp - 0x0002]          ; 0x1849
    push ax                          ; 0x184c
    mov ax, 6                        ; 0x184d
    imul word [bp + 0x4]             ; 0x1850
    mov cx, ax                       ; 0x1853
    mov dx, word [bp - 0x0004]       ; 0x1855
    shl dx, 1                        ; 0x1858
    add ax, dx                       ; 0x185a
    mov bx, ax                       ; 0x185c
    mov cx, word [bx + 0x592]        ; 0x185e
    shl cx, 1                        ; 0x1862
    pop ax                           ; 0x1864
    add ax, cx                       ; 0x1865
    mov bx, ax                       ; 0x1867
    mov ax, word [bx - 0x7bc6]       ; 0x1869
    mov cx, 0xa                      ; 0x186d
    cwd                              ; 0x1870
    idiv cx                          ; 0x1871
    mov word [bp - 0x0008], ax       ; 0x1873
    mov word [bp - 0x0006], dx       ; 0x1876
    cmp ax, word [bp + 0x6]          ; 0x1879
    jne short @..local.l99           ; 0x187c
    mov ax, 9                        ; 0x187e
    imul word [bp + 0x6]             ; 0x1881
    mov dx, word [bp - 0x0006]       ; 0x1884
    add ax, dx                       ; 0x1887
    mov bx, ax                       ; 0x1889
    cmp byte [bx - 0x6f31], 0        ; 0x188b
    je short @..local.l97            ; 0x1890
    mov ax, word [bp - 0x000a]       ; 0x1892
    cmp ax, word [bp + 0x4]          ; 0x1895
    jne short @..local.l98           ; 0x1898
@..local.l97:
    mov byte [bx - 0x6f31], 1        ; 0x189a
    mov ax, dx                       ; 0x189f
    ret                              ; 0x18a1
@..local.l98:
    inc word [bp - 0x000a]           ; 0x18a2
@..local.l99:
    inc word [bp - 0x0004]           ; 0x18a5
    mov ax, word [bp - 0x0004]       ; 0x18a8
    cmp ax, strict word 3            ; 0x18ab
    jl short @..local.l96            ; 0x18ae
    inc word [bp - 0x0002]           ; 0x18b0
    mov ax, word [bp - 0x0002]       ; 0x18b3
    cmp ax, strict word 3            ; 0x18b6
    jl short @..local.l95            ; 0x18b9
    jmp near @..local.l93            ; 0x18bb
@..local.l100:
    mov ax, 0                        ; 0x18be
    ret                              ; 0x18c1
api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x18c2
    call ds_dispatch_f40b            ; 0x18c5
    mov word [bp - 0x0002], 0        ; 0x18c8
@..api_idx_000c_2.l1:
    mov ax, 0x14                     ; 0x18cd
    imul word [bp - 0x0002]          ; 0x18d0
    mov cx, word [bp - 0x0002]       ; 0x18d3
    shl cx, 1                        ; 0x18d6
    mov bx, cx                       ; 0x18d8
    mov cx, word [bx - 0x7cf2]       ; 0x18da
    shl cx, 1                        ; 0x18de
    add ax, cx                       ; 0x18e0
    mov bx, ax                       ; 0x18e2
    mov al, byte [bx + 0x1d4]        ; 0x18e4
    mov byte [bp - 0x000c], al       ; 0x18e8
    mov byte [bp - 0x000b], 0        ; 0x18eb
    mov ax, 0                        ; 0x18ef
    push ax                          ; 0x18f2
    push ax                          ; 0x18f3
    lea ax, word [bp - 0x000c]       ; 0x18f4
    push ax                          ; 0x18f7
    mov ax, 0                        ; 0x18f8
    push ax                          ; 0x18fb
    mov ax, 0xc7                     ; 0x18fc
    push ax                          ; 0x18ff
    mov ax, 0                        ; 0x1900
    push ax                          ; 0x1903
    mov ax, 0x13f                    ; 0x1904
    push ax                          ; 0x1907
    mov ax, 0                        ; 0x1908
    push ax                          ; 0x190b
    mov ax, 0xc                      ; 0x190c
    imul word [bp + 0x8]             ; 0x190f
    mov cx, word [bp - 0x0002]       ; 0x1912
    shl cx, 1                        ; 0x1915
    add ax, cx                       ; 0x1917
    mov bx, ax                       ; 0x1919
    mov ax, word [bx + 0x1bc]        ; 0x191b
    add ax, word [bp + 0x6]          ; 0x191f
    push ax                          ; 0x1922
    mov ax, word [bx + 0x1a4]        ; 0x1923
    add ax, word [bp + 0x4]          ; 0x1927
    push ax                          ; 0x192a
    mov ax, data_0002                ; 0x192b
    push ax                          ; 0x192e
    call ds_dispatch_efd1            ; 0x192f
    add sp, byte 0x16                ; 0x1932
    inc word [bp - 0x0002]           ; 0x1935
    mov ax, word [bp - 0x0002]       ; 0x1938
    cmp ax, strict word 6            ; 0x193b
    jl short @..api_idx_000c_2.l1    ; 0x193e
    ret                              ; 0x1940
api_idx_0002:
    mov ax, 0xfffe                   ; 0x1941
    call ds_dispatch_f40b            ; 0x1944
    mov word [bp - 0x0002], 0        ; 0x1947
@..api_idx_0002.l1:
    cmp word [bp + 0x4], byte 0      ; 0x194c
    jl short @..api_idx_0002.l2      ; 0x1950
    mov ax, word [bp - 0x0002]       ; 0x1952
    cmp ax, word [bp + 0x4]          ; 0x1955
    jne short @..api_idx_0002.l3     ; 0x1958
@..api_idx_0002.l2:
    mov ax, word [bp - 0x0002]       ; 0x195a
    shl ax, 1                        ; 0x195d
    mov bx, ax                       ; 0x195f
    inc word [bx - 0x7cf2]           ; 0x1961
@..api_idx_0002.l3:
    mov ax, 0x14                     ; 0x1965
    imul word [bp - 0x0002]          ; 0x1968
    mov cx, word [bp - 0x0002]       ; 0x196b
    shl cx, 1                        ; 0x196e
    mov bx, cx                       ; 0x1970
    mov cx, word [bx - 0x7cf2]       ; 0x1972
    shl cx, 1                        ; 0x1976
    add ax, cx                       ; 0x1978
    mov bx, ax                       ; 0x197a
    cmp word [bx + 0x1d4], byte 0xff ; 0x197c
    jne short @..api_idx_0002.l4     ; 0x1981
    mov ax, word [bp - 0x0002]       ; 0x1983
    shl ax, 1                        ; 0x1986
    mov bx, ax                       ; 0x1988
    mov word [bx - 0x7cf2], 0        ; 0x198a
@..api_idx_0002.l4:
    inc word [bp - 0x0002]           ; 0x1990
    mov ax, word [bp - 0x0002]       ; 0x1993
    cmp ax, strict word 6            ; 0x1996
    jl short @..api_idx_0002.l1      ; 0x1999
    ret                              ; 0x199b
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x199c
    call ds_dispatch_f40b            ; 0x199f
    mov word [bp - 0x0004], 0        ; 0x19a2
    mov word [bp - 0x0002], 0        ; 0x19a7
@..api_idx_0004_2.l1:
    mov ax, 6                        ; 0x19ac
    imul word [bp - 0x0002]          ; 0x19af
    mov bx, ax                       ; 0x19b2
    mov al, byte [bx + 0x620]        ; 0x19b4
    sub ah, ah                       ; 0x19b8
    cmp ax, word [bp + 0x6]          ; 0x19ba
    jne short @..api_idx_0004_2.l2   ; 0x19bd
    push word [bp - 0x0002]          ; 0x19bf
    mov ax, 0x248                    ; 0x19c2
    imul word [bp + 0x4]             ; 0x19c5
    add ax, 0x5e12                   ; 0x19c8
    push ax                          ; 0x19cb
    call ds_dispatch_ec74            ; 0x19cc
    add sp, byte 4                   ; 0x19cf
    test ax, ax                      ; 0x19d2
    je short @..api_idx_0004_2.l2    ; 0x19d4
    mov ax, 0x14                     ; 0x19d6
    imul word [bp - 0x0004]          ; 0x19d9
    add ax, 0xe38                    ; 0x19dc
    push ax                          ; 0x19df
    mov ax, word [bp - 0x0002]       ; 0x19e0
    add ax, 0xfa0                    ; 0x19e3
    push ax                          ; 0x19e6
    call ds_dispatch_b53b            ; 0x19e7
    add sp, byte 4                   ; 0x19ea
    mov ax, word [bp - 0x0002]       ; 0x19ed
    mov cx, word [bp - 0x0004]       ; 0x19f0
    shl cx, 1                        ; 0x19f3
    mov bx, cx                       ; 0x19f5
    mov word [bx - 0x6efa], ax       ; 0x19f7
    inc word [bp - 0x0004]           ; 0x19fb
@..api_idx_0004_2.l2:
    inc word [bp - 0x0002]           ; 0x19fe
    mov ax, word [bp - 0x0002]       ; 0x1a01
    cmp ax, strict word 0x66         ; 0x1a04
    jl short @..api_idx_0004_2.l1    ; 0x1a07
    mov ax, word [bp - 0x0004]       ; 0x1a09
    ret                              ; 0x1a0c
api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x1a0d
    call ds_dispatch_f40b            ; 0x1a10
    mov byte [bp - 0x000a], 1        ; 0x1a13
    mov byte [bp - 0x0009], 0        ; 0x1a17
    mov ax, 0                        ; 0x1a1b
    push ax                          ; 0x1a1e
    push ax                          ; 0x1a1f
    lea ax, word [bp - 0x000a]       ; 0x1a20
    push ax                          ; 0x1a23
    mov ax, 0                        ; 0x1a24
    push ax                          ; 0x1a27
    mov ax, 0xc7                     ; 0x1a28
    push ax                          ; 0x1a2b
    mov ax, 0                        ; 0x1a2c
    push ax                          ; 0x1a2f
    mov ax, 0x13f                    ; 0x1a30
    push ax                          ; 0x1a33
    mov ax, 0                        ; 0x1a34
    push ax                          ; 0x1a37
    mov ax, 0x73                     ; 0x1a38
    push ax                          ; 0x1a3b
    mov ax, 0x32                     ; 0x1a3c
    push ax                          ; 0x1a3f
    mov ax, 1                        ; 0x1a40
    push ax                          ; 0x1a43
    call ds_dispatch_efd1            ; 0x1a44
    add sp, byte 0x16                ; 0x1a47
    ret                              ; 0x1a4a
math_loc_1a4b:
    mov ax, 0                        ; 0x1a4b
    call ds_dispatch_f40b            ; 0x1a4e
    push word [bp + 0x6]             ; 0x1a51
    mov ax, 0xa                      ; 0x1a54
    imul word [bp + 0x8]             ; 0x1a57
    add ax, word [bp + 0x4]          ; 0x1a5a
    dec ax                           ; 0x1a5d
    push ax                          ; 0x1a5e
    call ds_dispatch_e809            ; 0x1a5f
    add sp, byte 4                   ; 0x1a62
    mov ax, 7                        ; 0x1a65
    push ax                          ; 0x1a68
    mov ax, 0                        ; 0x1a69
    cmp word [bp + 0xa], byte 0      ; 0x1a6c
    je short @..math_loc_1a4b.l1     ; 0x1a70
    mov ax, 1                        ; 0x1a72
@..math_loc_1a4b.l1:
    add ax, strict word 0x10         ; 0x1a75
    sub ah, ah                       ; 0x1a78
    push ax                          ; 0x1a7a
    call ds_dispatch_e830            ; 0x1a7b
    add sp, byte 4                   ; 0x1a7e
    push word [bp + 0x6]             ; 0x1a81
    mov ax, 0xa                      ; 0x1a84
    imul word [bp + 0x8]             ; 0x1a87
    add ax, word [bp + 0x4]          ; 0x1a8a
    push ax                          ; 0x1a8d
    call ds_dispatch_e809            ; 0x1a8e
    add sp, byte 4                   ; 0x1a91
    mov ax, 0                        ; 0x1a94
    push ax                          ; 0x1a97
    push ax                          ; 0x1a98
    call ds_dispatch_e823            ; 0x1a99
    add sp, byte 4                   ; 0x1a9c
    mov ax, data_0002                ; 0x1a9f
    push ax                          ; 0x1aa2
    mov ax, word [bp + 0x8]          ; 0x1aa3
    inc ax                           ; 0x1aa6
    sub ah, ah                       ; 0x1aa7
    push ax                          ; 0x1aa9
    call ds_dispatch_e830            ; 0x1aaa
    add sp, byte 4                   ; 0x1aad
    cmp word [bp + 0x8], byte 0      ; 0x1ab0
    jne short @..math_loc_1a4b.l2    ; 0x1ab4
    cmp word [bp + 0xa], byte 0      ; 0x1ab6
    jne short @..math_loc_1a4b.l2    ; 0x1aba
    mov ax, 0xc2                     ; 0x1abc
    push ax                          ; 0x1abf
    mov ax, word [bp + 0x6]          ; 0x1ac0
    add ax, strict word 8            ; 0x1ac3
    push ax                          ; 0x1ac6
    mov ax, word [bp + 0x4]          ; 0x1ac7
    dec ax                           ; 0x1aca
    push ax                          ; 0x1acb
    push word [bp + 0x6]             ; 0x1acc
    push ax                          ; 0x1acf
    call ds_dispatch_e901            ; 0x1ad0
    add sp, byte 0x0a                ; 0x1ad3
@..math_loc_1a4b.l2:
    ret                              ; 0x1ad6
loc_1ad7:
    mov ax, 0                        ; 0x1ad7
    call ds_dispatch_f40b            ; 0x1ada
    mov ax, word [bp + 0x6]          ; 0x1add
    add ax, strict word 6            ; 0x1ae0
    push ax                          ; 0x1ae3
    mov ax, word [bp + 0x4]          ; 0x1ae4
    add ax, strict word 0x14         ; 0x1ae7
    push ax                          ; 0x1aea
    push word [bp + 0x6]             ; 0x1aeb
    push word [bp + 0x4]             ; 0x1aee
    call ds_dispatch_bd98            ; 0x1af1
    add sp, byte 8                   ; 0x1af4
    mov ax, word [bp + 0x8]          ; 0x1af7
    shl ax, 1                        ; 0x1afa
    shl ax, 1                        ; 0x1afc
    mov bx, ax                       ; 0x1afe
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x1b04
    add ax, strict word 6            ; 0x1b07
    push ax                          ; 0x1b0a
    mov ax, word [bp + 0x4]          ; 0x1b0b
    add ax, strict word 0x14         ; 0x1b0e
    push ax                          ; 0x1b11
    push word [bp + 0x6]             ; 0x1b12
    push word [bp + 0x4]             ; 0x1b15
    call ds_dispatch_e901            ; 0x1b18
    add sp, byte 0x0a                ; 0x1b1b
    mov ax, word [bp + 0x6]          ; 0x1b1e
    inc ax                           ; 0x1b21
    push ax                          ; 0x1b22
    mov ax, word [bp + 0x4]          ; 0x1b23
    inc ax                           ; 0x1b26
    inc ax                           ; 0x1b27
    push ax                          ; 0x1b28
    call ds_dispatch_e809            ; 0x1b29
    add sp, byte 4                   ; 0x1b2c
    cmp word [bp + 0xa], byte 0      ; 0x1b2f
    jle short @..local.l101          ; 0x1b33
    mov ax, word [bp + 0xa]          ; 0x1b35
    cmp ax, word [bp + 0xc]          ; 0x1b38
    jg short @..local.l101           ; 0x1b3b
    mov ax, 0                        ; 0x1b3d
    push ax                          ; 0x1b40
    mov ax, 1                        ; 0x1b41
    push ax                          ; 0x1b44
    call ds_dispatch_e823            ; 0x1b45
    add sp, byte 4                   ; 0x1b48
    mov ax, 0                        ; 0x1b4b
    push ax                          ; 0x1b4e
    mov ax, 3                        ; 0x1b4f
    push ax                          ; 0x1b52
    push word [bp + 0xa]             ; 0x1b53
    call ds_dispatch_b2e7            ; 0x1b56
    add sp, byte 6                   ; 0x1b59
    jmp short @..local.l102          ; 0x1b5c
@..local.l101:
    mov ax, 0                        ; 0x1b5e
    push ax                          ; 0x1b61
    push ax                          ; 0x1b62
    call ds_dispatch_e823            ; 0x1b63
    add sp, byte 4                   ; 0x1b66
    mov ax, 0                        ; 0x1b69
    push ax                          ; 0x1b6c
    mov ax, 0x90bb                   ; 0x1b6d
    push ax                          ; 0x1b70
    call ds_dispatch_e84e            ; 0x1b71
    add sp, byte 4                   ; 0x1b74
@..local.l102:
    ret                              ; 0x1b77
api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x1b78
    call ds_dispatch_f40b            ; 0x1b7b
    mov word [bp - 0x0002], 0        ; 0x1b7e
@..api_idx_000c_3.l1:
    lea ax, word [bp - 0x000c]       ; 0x1b83
    push ax                          ; 0x1b86
    mov ax, 0x248                    ; 0x1b87
    imul word [bp + 0x4]             ; 0x1b8a
    mov cx, word [bp - 0x0002]       ; 0x1b8d
    shl cx, 1                        ; 0x1b90
    shl cx, 1                        ; 0x1b92
    add ax, cx                       ; 0x1b94
    mov bx, ax                       ; 0x1b96
    push word [bx + 0x5c1c]          ; 0x1b98
    call ds_dispatch_b27d            ; 0x1b9c
    add sp, byte 4                   ; 0x1b9f
    mov ax, 0                        ; 0x1ba2
    push ax                          ; 0x1ba5
    mov ax, word [bp - 0x0002]       ; 0x1ba6
    shl ax, 1                        ; 0x1ba9
    shl ax, 1                        ; 0x1bab
    mov bx, ax                       ; 0x1bad
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x1bb3
    add sp, byte 4                   ; 0x1bb6
    mov ax, word [bp - 0x0002]       ; 0x1bb9
    shl ax, 1                        ; 0x1bbc
    shl ax, 1                        ; 0x1bbe
    mov bx, ax                       ; 0x1bc0
    push word [bx + 0x18e]           ; 0x1bc2
    lea ax, word [bp - 0x000c]       ; 0x1bc6
    push ax                          ; 0x1bc9
    call ds_dispatch_fa90            ; 0x1bca
    pop cx                           ; 0x1bcd
    mov cx, 6                        ; 0x1bce
    imul cx                          ; 0x1bd1
    mov cx, data_0002                ; 0x1bd3
    cwd                              ; 0x1bd6
    idiv cx                          ; 0x1bd7
    mov cx, ax                       ; 0x1bd9
    mov ax, word [bp - 0x0002]       ; 0x1bdb
    shl ax, 1                        ; 0x1bde
    shl ax, 1                        ; 0x1be0
    mov bx, ax                       ; 0x1be2
    mov ax, word [bx + 0x18c]        ; 0x1be4
    add ax, strict word 9            ; 0x1be8
    sub ax, cx                       ; 0x1beb
    push ax                          ; 0x1bed
    call ds_dispatch_e809            ; 0x1bee
    add sp, byte 4                   ; 0x1bf1
    mov ax, 0                        ; 0x1bf4
    push ax                          ; 0x1bf7
    lea ax, word [bp - 0x000c]       ; 0x1bf8
    push ax                          ; 0x1bfb
    call ds_dispatch_e84e            ; 0x1bfc
    add sp, byte 4                   ; 0x1bff
    inc word [bp - 0x0002]           ; 0x1c02
    mov ax, word [bp - 0x0002]       ; 0x1c05
    cmp ax, strict word 6            ; 0x1c08
    jge short @..api_idx_000c_3.l2   ; 0x1c0b
    jmp near @..api_idx_000c_3.l1    ; 0x1c0d
@..api_idx_000c_3.l2:
    ret                              ; 0x1c10
loc_1c11:
    mov ax, 0                        ; 0x1c11
    call ds_dispatch_f40b            ; 0x1c14
    les bx, word [data_0002]         ; 0x1c17
    mov ax, word [es:bx]             ; 0x1c1b
    mov dx, word [es:bx + 0x2]       ; 0x1c1e
    mov word [data_9090], dx         ; 0x1c22
    mov word [data_908e], ax         ; 0x1c26
    mov ax, word [data_908e]         ; 0x1c29
    mov dx, word [data_9090]         ; 0x1c2c
    sub ax, word [data_908a]         ; 0x1c30
    sbb dx, word [data_908c]         ; 0x1c34
    mov word [data_9094], dx         ; 0x1c38
    mov word [data_9092], ax         ; 0x1c3c
    mov ax, word [data_90d6]         ; 0x1c3f
    cwd                              ; 0x1c42
    mov cx, ax                       ; 0x1c43
    mov bx, dx                       ; 0x1c45
    mov ax, word [data_9092]         ; 0x1c47
    mov dx, word [data_9094]         ; 0x1c4a
    cmp bx, dx                       ; 0x1c4e
    jg short @..local.l103           ; 0x1c50
    jne short @..local.l104          ; 0x1c52
    cmp cx, ax                       ; 0x1c54
    jbe short @..local.l104          ; 0x1c56
@..local.l103:
    jmp short @..local.l105          ; 0x1c58
@..local.l104:
    mov ax, word [data_908e]         ; 0x1c5a
    mov dx, word [data_9090]         ; 0x1c5d
    mov word [data_908c], dx         ; 0x1c61
    mov word [data_908a], ax         ; 0x1c65
    call api_idx_000a_3              ; 0x1c68
    push word [bp + 0x4]             ; 0x1c6b
    call api_idx_000c_3              ; 0x1c6e
    pop cx                           ; 0x1c71
    push word [bp + 0x6]             ; 0x1c72
    call api_idx_0002                ; 0x1c75
    pop cx                           ; 0x1c78
    mov ax, 1                        ; 0x1c79
    push ax                          ; 0x1c7c
    mov ax, 0x73                     ; 0x1c7d
    push ax                          ; 0x1c80
    mov ax, 0x32                     ; 0x1c81
    push ax                          ; 0x1c84
    call api_idx_000c_2              ; 0x1c85
    add sp, byte 6                   ; 0x1c88
    mov ax, 0xc5                     ; 0x1c8b
    push ax                          ; 0x1c8e
    mov ax, 0x93                     ; 0x1c8f
    push ax                          ; 0x1c92
    mov ax, 0x73                     ; 0x1c93
    push ax                          ; 0x1c96
    mov ax, 0x32                     ; 0x1c97
    push ax                          ; 0x1c9a
    call ds_dispatch_e8da            ; 0x1c9b
    add sp, byte 8                   ; 0x1c9e
@..local.l105:
    ret                              ; 0x1ca1
api_idx_0044:
    mov ax, 0xffbc                   ; 0x1ca2
    call ds_dispatch_f40b            ; 0x1ca5
    mov word [bp - 0x0002], 0        ; 0x1ca8
@..api_idx_0044.l1:
    mov ax, word [bp - 0x0002]       ; 0x1cad
    shl ax, 1                        ; 0x1cb0
    mov bx, ax                       ; 0x1cb2
    mov word [bx - 0x7cf2], 0        ; 0x1cb4
    inc word [bp - 0x0002]           ; 0x1cba
    mov ax, word [bp - 0x0002]       ; 0x1cbd
    cmp ax, strict word 6            ; 0x1cc0
    jl short @..api_idx_0044.l1      ; 0x1cc3
    mov word [data_904e], 0xffff     ; 0x1cc5
    mov word [bp - 0x0004], 0x32     ; 0x1ccb
    mov word [bp - 0x0006], 0x73     ; 0x1cd0
    mov word [bp - 0x0008], 0x10d    ; 0x1cd5
    mov word [bp - 0x000a], 0xc5     ; 0x1cda
    mov word [bp - 0x000c], 0x95     ; 0x1cdf
    mov word [bp - 0x0014], 0x16     ; 0x1ce4
    mov ax, 0x90bf                   ; 0x1ce9
    push ax                          ; 0x1cec
    mov ax, word [bp - 0x000a]       ; 0x1ced
    inc ax                           ; 0x1cf0
    push ax                          ; 0x1cf1
    mov ax, word [bp - 0x0008]       ; 0x1cf2
    inc ax                           ; 0x1cf5
    push ax                          ; 0x1cf6
    mov ax, word [bp - 0x0006]       ; 0x1cf7
    dec ax                           ; 0x1cfa
    push ax                          ; 0x1cfb
    mov ax, word [bp - 0x0004]       ; 0x1cfc
    dec ax                           ; 0x1cff
    push ax                          ; 0x1d00
    call ds_dispatch_c283            ; 0x1d01
    add sp, byte 0x0a                ; 0x1d04
    mov word [bp - 0x003a], ax       ; 0x1d07
    push word [bp - 0x000a]          ; 0x1d0a
    push word [bp - 0x0008]          ; 0x1d0d
    push word [bp - 0x0006]          ; 0x1d10
    push word [bp - 0x0004]          ; 0x1d13
    call ds_dispatch_bc9a            ; 0x1d16
    add sp, byte 8                   ; 0x1d19
    push word [bp - 0x000a]          ; 0x1d1c
    push word [bp - 0x0008]          ; 0x1d1f
    push word [bp - 0x0006]          ; 0x1d22
    mov ax, 0x95                     ; 0x1d25
    push ax                          ; 0x1d28
    call ds_dispatch_bc9a            ; 0x1d29
    add sp, byte 8                   ; 0x1d2c
    call api_idx_000a_3              ; 0x1d2f
    push word [bp + 0x4]             ; 0x1d32
    call api_idx_000c_3              ; 0x1d35
    pop cx                           ; 0x1d38
    mov ax, 1                        ; 0x1d39
    push ax                          ; 0x1d3c
    mov ax, 0x73                     ; 0x1d3d
    push ax                          ; 0x1d40
    mov ax, 0x32                     ; 0x1d41
    push ax                          ; 0x1d44
    call api_idx_000c_2              ; 0x1d45
    add sp, byte 6                   ; 0x1d48
    lea ax, word [bp - 0x0038]       ; 0x1d4b
    push ax                          ; 0x1d4e
    push word [bp + 0x6]             ; 0x1d4f
    call ds_dispatch_b53b            ; 0x1d52
    add sp, byte 4                   ; 0x1d55
    lea ax, word [bp - 0x0038]       ; 0x1d58
    push ax                          ; 0x1d5b
    push word [bp + 0x8]             ; 0x1d5c
    mov ax, 1                        ; 0x1d5f
    push ax                          ; 0x1d62
    mov ax, 8                        ; 0x1d63
    push ax                          ; 0x1d66
    mov ax, word [bp - 0x0006]       ; 0x1d67
    add ax, strict word 6            ; 0x1d6a
    push ax                          ; 0x1d6d
    mov ax, word [bp - 0x000c]       ; 0x1d6e
    add ax, strict word 6            ; 0x1d71
    push ax                          ; 0x1d74
    call ds_dispatch_c0c1            ; 0x1d75
    add sp, byte 0x0c                ; 0x1d78
    lea ax, word [bp - 0x0038]       ; 0x1d7b
    push ax                          ; 0x1d7e
    mov ax, word [bp + 0x6]          ; 0x1d7f
    inc ax                           ; 0x1d82
    push ax                          ; 0x1d83
    call ds_dispatch_b53b            ; 0x1d84
    add sp, byte 4                   ; 0x1d87
    lea ax, word [bp - 0x0038]       ; 0x1d8a
    push ax                          ; 0x1d8d
    mov ax, 1                        ; 0x1d8e
    push ax                          ; 0x1d91
    push ax                          ; 0x1d92
    mov ax, 8                        ; 0x1d93
    push ax                          ; 0x1d96
    mov ax, word [bp - 0x0006]       ; 0x1d97
    add ax, strict word 6            ; 0x1d9a
    push ax                          ; 0x1d9d
    mov ax, word [bp - 0x000c]       ; 0x1d9e
    add ax, strict word 0x42         ; 0x1da1
    push ax                          ; 0x1da4
    call ds_dispatch_c0c1            ; 0x1da5
    add sp, byte 0x0c                ; 0x1da8
    mov ax, word [bp - 0x0006]       ; 0x1dab
    add ax, strict word 0x14         ; 0x1dae
    push ax                          ; 0x1db1
    mov ax, word [bp - 0x000c]       ; 0x1db2
    add ax, strict word 0x48         ; 0x1db5
    push ax                          ; 0x1db8
    call ds_dispatch_e809            ; 0x1db9
    add sp, byte 4                   ; 0x1dbc
    mov ax, 0                        ; 0x1dbf
    push ax                          ; 0x1dc2
    mov ax, 0xcd                     ; 0x1dc3
    push ax                          ; 0x1dc6
    call ds_dispatch_e823            ; 0x1dc7
    add sp, byte 4                   ; 0x1dca
    mov ax, data_0002                ; 0x1dcd
    push ax                          ; 0x1dd0
    mov ax, 0xa                      ; 0x1dd1
    push ax                          ; 0x1dd4
    call ds_dispatch_e830            ; 0x1dd5
    add sp, byte 4                   ; 0x1dd8
    mov word [bp - 0x003c], 0xffff   ; 0x1ddb
    mov word [bp - 0x003e], 0        ; 0x1de0
    mov word [bp - 0x0040], 0        ; 0x1de5
    mov word [bp - 0x0002], 0        ; 0x1dea
@..api_idx_0044.l2:
    mov ax, 0                        ; 0x1def
    mov cx, word [bp - 0x0002]       ; 0x1df2
    cmp cx, word [bp - 0x003e]       ; 0x1df5
    jne short @..api_idx_0044.l3     ; 0x1df8
    mov ax, 1                        ; 0x1dfa
@..api_idx_0044.l3:
    push ax                          ; 0x1dfd
    push cx                          ; 0x1dfe
    mov ax, word [bp - 0x0006]       ; 0x1dff
    add ax, strict word 0x14         ; 0x1e02
    push ax                          ; 0x1e05
    mov ax, word [bp - 0x000c]       ; 0x1e06
    add ax, strict word 0xc          ; 0x1e09
    push ax                          ; 0x1e0c
    call math_loc_1a4b               ; 0x1e0d
    add sp, byte 8                   ; 0x1e10
    inc word [bp - 0x0002]           ; 0x1e13
    mov ax, word [bp - 0x0002]       ; 0x1e16
    cmp ax, strict word 7            ; 0x1e19
    jl short @..api_idx_0044.l2      ; 0x1e1c
    mov word [bp - 0x0042], 0        ; 0x1e1e
    mov ax, 0                        ; 0x1e23
    push ax                          ; 0x1e26
    push ax                          ; 0x1e27
    push word [bp - 0x0042]          ; 0x1e28
    mov ax, word [bp - 0x0006]       ; 0x1e2b
    add ax, strict word 0x15         ; 0x1e2e
    push ax                          ; 0x1e31
    mov ax, word [bp - 0x000c]       ; 0x1e32
    add ax, strict word 0x5e         ; 0x1e35
    push ax                          ; 0x1e38
    call loc_1ad7                    ; 0x1e39
    add sp, byte 0x0a                ; 0x1e3c
    push word [bp - 0x0042]          ; 0x1e3f
    push word [bp + 0x4]             ; 0x1e42
    call api_idx_0004_2              ; 0x1e45
    add sp, byte 4                   ; 0x1e48
    mov word [bp - 0x0044], ax       ; 0x1e4b
    mov ax, 7                        ; 0x1e4e
    cmp word [bp - 0x0044], byte 7   ; 0x1e51
    jge short @..api_idx_0044.l4     ; 0x1e55
    mov ax, word [bp - 0x0044]       ; 0x1e57
@..api_idx_0044.l4:
    mov word [bp - 0x0024], ax       ; 0x1e5a
    mov word [bp - 0x0018], 0        ; 0x1e5d
    mov word [bp - 0x0022], 0xffff   ; 0x1e62
    push ax                          ; 0x1e67
    push word [bp - 0x0022]          ; 0x1e68
    push word [bp - 0x0018]          ; 0x1e6b
    mov ax, 7                        ; 0x1e6e
    push ax                          ; 0x1e71
    mov ax, 0xf                      ; 0x1e72
    push ax                          ; 0x1e75
    mov ax, word [bp - 0x0006]       ; 0x1e76
    add ax, strict word 0x22         ; 0x1e79
    push ax                          ; 0x1e7c
    mov ax, word [bp - 0x000c]       ; 0x1e7d
    add ax, strict word 6            ; 0x1e80
    push ax                          ; 0x1e83
    call ds_dispatch_bf97            ; 0x1e84
    add sp, byte 0x0e                ; 0x1e87
    mov word [bp - 0x0012], 0        ; 0x1e8a
    push word [bp - 0x0012]          ; 0x1e8f
    mov ax, 7                        ; 0x1e92
    push ax                          ; 0x1e95
    mov ax, 8                        ; 0x1e96
    push ax                          ; 0x1e99
    mov ax, word [bp - 0x0006]       ; 0x1e9a
    add ax, strict word 0x22         ; 0x1e9d
    push ax                          ; 0x1ea0
    mov ax, word [bp - 0x000c]       ; 0x1ea1
    add ax, strict word 0x6a         ; 0x1ea4
    push ax                          ; 0x1ea7
    call ds_dispatch_bfd8            ; 0x1ea8
    add sp, byte 0x0a                ; 0x1eab
    mov ax, 0                        ; 0x1eae
    push ax                          ; 0x1eb1
    push ax                          ; 0x1eb2
    mov ax, word [bp - 0x0006]       ; 0x1eb3
    add ax, word [bp - 0x0012]       ; 0x1eb6
    add ax, strict word 0x2e         ; 0x1eb9
    push ax                          ; 0x1ebc
    mov ax, word [bp - 0x000c]       ; 0x1ebd
    add ax, strict word 0x72         ; 0x1ec0
    push ax                          ; 0x1ec3
    mov ax, word [bp - 0x0006]       ; 0x1ec4
    add ax, word [bp - 0x0012]       ; 0x1ec7
    add ax, strict word 0x2a         ; 0x1eca
    push ax                          ; 0x1ecd
    mov ax, word [bp - 0x000c]       ; 0x1ece
    add ax, strict word 0x6a         ; 0x1ed1
    push ax                          ; 0x1ed4
    mov ax, 0                        ; 0x1ed5
    push ax                          ; 0x1ed8
    call ds_dispatch_baa6            ; 0x1ed9
    add sp, byte 0x0e                ; 0x1edc
    mov ax, 0                        ; 0x1edf
    push ax                          ; 0x1ee2
    mov ax, 9                        ; 0x1ee3
    push ax                          ; 0x1ee6
    mov ax, word [bp - 0x0006]       ; 0x1ee7
    add ax, strict word 0x28         ; 0x1eea
    push ax                          ; 0x1eed
    mov ax, word [bp - 0x000c]       ; 0x1eee
    add ax, strict word 0x72         ; 0x1ef1
    push ax                          ; 0x1ef4
    mov ax, word [bp - 0x0006]       ; 0x1ef5
    add ax, strict word 0x22         ; 0x1ef8
    push ax                          ; 0x1efb
    mov ax, word [bp - 0x000c]       ; 0x1efc
    add ax, strict word 0x6a         ; 0x1eff
    push ax                          ; 0x1f02
    mov ax, 1                        ; 0x1f03
    push ax                          ; 0x1f06
    call ds_dispatch_baa6            ; 0x1f07
    add sp, byte 0x0e                ; 0x1f0a
    mov ax, 0                        ; 0x1f0d
    push ax                          ; 0x1f10
    mov ax, 0xb                      ; 0x1f11
    push ax                          ; 0x1f14
    mov ax, word [bp - 0x0006]       ; 0x1f15
    add ax, strict word 0x4c         ; 0x1f18
    push ax                          ; 0x1f1b
    mov ax, word [bp - 0x000c]       ; 0x1f1c
    add ax, strict word 0x72         ; 0x1f1f
    push ax                          ; 0x1f22
    mov ax, word [bp - 0x0006]       ; 0x1f23
    add ax, strict word 0x46         ; 0x1f26
    push ax                          ; 0x1f29
    mov ax, word [bp - 0x000c]       ; 0x1f2a
    add ax, strict word 0x6a         ; 0x1f2d
    push ax                          ; 0x1f30
    mov ax, data_0002                ; 0x1f31
    push ax                          ; 0x1f34
    call ds_dispatch_baa6            ; 0x1f35
    add sp, byte 0x0e                ; 0x1f38
    mov ax, 0                        ; 0x1f3b
    push ax                          ; 0x1f3e
    mov ax, 0xd                      ; 0x1f3f
    push ax                          ; 0x1f42
    mov ax, word [bp - 0x0006]       ; 0x1f43
    add ax, strict word 0xe          ; 0x1f46
    push ax                          ; 0x1f49
    mov ax, word [bp - 0x000c]       ; 0x1f4a
    add ax, strict word 0x36         ; 0x1f4d
    push ax                          ; 0x1f50
    mov ax, word [bp - 0x0006]       ; 0x1f51
    add ax, strict word 6            ; 0x1f54
    push ax                          ; 0x1f57
    mov ax, word [bp - 0x000c]       ; 0x1f58
    add ax, strict word 6            ; 0x1f5b
    push ax                          ; 0x1f5e
    mov ax, 3                        ; 0x1f5f
    push ax                          ; 0x1f62
    call ds_dispatch_baa6            ; 0x1f63
    add sp, byte 0x0e                ; 0x1f66
    mov ax, 0                        ; 0x1f69
    push ax                          ; 0x1f6c
    mov ax, 0x1b                     ; 0x1f6d
    push ax                          ; 0x1f70
    mov ax, word [bp - 0x0006]       ; 0x1f71
    add ax, strict word 0xe          ; 0x1f74
    push ax                          ; 0x1f77
    mov ax, word [bp - 0x000c]       ; 0x1f78
    add ax, strict word 0x72         ; 0x1f7b
    push ax                          ; 0x1f7e
    mov ax, word [bp - 0x0006]       ; 0x1f7f
    add ax, strict word 6            ; 0x1f82
    push ax                          ; 0x1f85
    mov ax, word [bp - 0x000c]       ; 0x1f86
    add ax, strict word 0x42         ; 0x1f89
    push ax                          ; 0x1f8c
    mov ax, 4                        ; 0x1f8d
    push ax                          ; 0x1f90
    call ds_dispatch_baa6            ; 0x1f91
    add sp, byte 0x0e                ; 0x1f94
    mov word [bp - 0x0002], 0        ; 0x1f97
@..local.l106:
    mov ax, 0                        ; 0x1f9c
    push ax                          ; 0x1f9f
    mov ax, word [bp - 0x0002]       ; 0x1fa0
    add ax, strict word 0x31         ; 0x1fa3
    cbw                              ; 0x1fa6
    push ax                          ; 0x1fa7
    mov ax, word [bp - 0x0006]       ; 0x1fa8
    add ax, strict word 0x1b         ; 0x1fab
    push ax                          ; 0x1fae
    mov ax, 0xa                      ; 0x1faf
    imul word [bp - 0x0002]          ; 0x1fb2
    add ax, word [bp - 0x000c]       ; 0x1fb5
    add ax, strict word 0x13         ; 0x1fb8
    push ax                          ; 0x1fbb
    mov ax, word [bp - 0x0006]       ; 0x1fbc
    add ax, strict word 0x14         ; 0x1fbf
    push ax                          ; 0x1fc2
    mov ax, 0xa                      ; 0x1fc3
    imul word [bp - 0x0002]          ; 0x1fc6
    add ax, word [bp - 0x000c]       ; 0x1fc9
    add ax, strict word 0xc          ; 0x1fcc
    push ax                          ; 0x1fcf
    mov ax, word [bp - 0x0002]       ; 0x1fd0
    add ax, strict word 5            ; 0x1fd3
    push ax                          ; 0x1fd6
    call ds_dispatch_baa6            ; 0x1fd7
    add sp, byte 0x0e                ; 0x1fda
    inc word [bp - 0x0002]           ; 0x1fdd
    mov ax, word [bp - 0x0002]       ; 0x1fe0
    cmp ax, strict word 7            ; 0x1fe3
    jl short @..local.l106           ; 0x1fe6
    mov ax, 0                        ; 0x1fe8
    push ax                          ; 0x1feb
    mov ax, 0x46                     ; 0x1fec
    push ax                          ; 0x1fef
    mov ax, 0x87                     ; 0x1ff0
    push ax                          ; 0x1ff3
    mov ax, 0x52                     ; 0x1ff4
    push ax                          ; 0x1ff7
    mov ax, 0x74                     ; 0x1ff8
    push ax                          ; 0x1ffb
    mov ax, 0x46                     ; 0x1ffc
    push ax                          ; 0x1fff
    mov ax, 0xc                      ; 0x2000
    push ax                          ; 0x2003
    call ds_dispatch_baa6            ; 0x2004
    add sp, byte 0x0e                ; 0x2007
    mov ax, 0                        ; 0x200a
    push ax                          ; 0x200d
    mov ax, 0x57                     ; 0x200e
    push ax                          ; 0x2011
    mov ax, 0x9d                     ; 0x2012
    push ax                          ; 0x2015
    mov ax, 0x4b                     ; 0x2016
    push ax                          ; 0x2019
    mov ax, 0x90                     ; 0x201a
    push ax                          ; 0x201d
    mov ax, 0x32                     ; 0x201e
    push ax                          ; 0x2021
    mov ax, 0xd                      ; 0x2022
    push ax                          ; 0x2025
    call ds_dispatch_baa6            ; 0x2026
    add sp, byte 0x0e                ; 0x2029
    mov ax, 0                        ; 0x202c
    push ax                          ; 0x202f
    mov ax, 0x41                     ; 0x2030
    push ax                          ; 0x2033
    mov ax, 0xbb                     ; 0x2034
    push ax                          ; 0x2037
    mov ax, 0x5f                     ; 0x2038
    push ax                          ; 0x203b
    mov ax, 0xa5                     ; 0x203c
    push ax                          ; 0x203f
    mov ax, 0x43                     ; 0x2040
    push ax                          ; 0x2043
    mov ax, 0xe                      ; 0x2044
    push ax                          ; 0x2047
    call ds_dispatch_baa6            ; 0x2048
    add sp, byte 0x0e                ; 0x204b
    mov ax, 0                        ; 0x204e
    push ax                          ; 0x2051
    mov ax, 0x45                     ; 0x2052
    push ax                          ; 0x2055
    mov ax, 0x89                     ; 0x2056
    push ax                          ; 0x2059
    mov ax, 0x87                     ; 0x205a
    push ax                          ; 0x205d
    mov ax, 0x77                     ; 0x205e
    push ax                          ; 0x2061
    mov ax, 0x6c                     ; 0x2062
    push ax                          ; 0x2065
    mov ax, 0xf                      ; 0x2066
    push ax                          ; 0x2069
    call ds_dispatch_baa6            ; 0x206a
    add sp, byte 0x0e                ; 0x206d
    mov ax, 0                        ; 0x2070
    push ax                          ; 0x2073
    mov ax, 0x4d                     ; 0x2074
    push ax                          ; 0x2077
    mov ax, 0x9c                     ; 0x2078
    push ax                          ; 0x207b
    mov ax, 0x8e                     ; 0x207c
    push ax                          ; 0x207f
    mov ax, 0x91                     ; 0x2080
    push ax                          ; 0x2083
    mov ax, 0x7f                     ; 0x2084
    push ax                          ; 0x2087
    mov ax, 0x10                     ; 0x2088
    push ax                          ; 0x208b
    call ds_dispatch_baa6            ; 0x208c
    add sp, byte 0x0e                ; 0x208f
    mov ax, 0                        ; 0x2092
    push ax                          ; 0x2095
    mov ax, 0x44                     ; 0x2096
    push ax                          ; 0x2099
    mov ax, 0xb9                     ; 0x209a
    push ax                          ; 0x209d
    mov ax, 0x81                     ; 0x209e
    push ax                          ; 0x20a1
    mov ax, 0xa6                     ; 0x20a2
    push ax                          ; 0x20a5
    mov ax, 0x71                     ; 0x20a6
    push ax                          ; 0x20a9
    mov ax, 0x11                     ; 0x20aa
    push ax                          ; 0x20ad
    call ds_dispatch_baa6            ; 0x20ae
    add sp, byte 0x0e                ; 0x20b1
    mov ax, 7                        ; 0x20b4
    cmp word [bp - 0x0044], byte 7   ; 0x20b7
    jge short @..local.l107          ; 0x20bb
    mov ax, word [bp - 0x0044]       ; 0x20bd
@..local.l107:
    mov word [bp - 0x0020], ax       ; 0x20c0
    mov word [bp - 0x0002], 0        ; 0x20c3
@..local.l108:
    mov ax, 0                        ; 0x20c8
    push ax                          ; 0x20cb
    push ax                          ; 0x20cc
    mov ax, 6                        ; 0x20cd
    imul word [bp - 0x0002]          ; 0x20d0
    add ax, word [bp - 0x0006]       ; 0x20d3
    add ax, strict word 0x28         ; 0x20d6
    push ax                          ; 0x20d9
    mov ax, word [bp - 0x000c]       ; 0x20da
    add ax, strict word 0x62         ; 0x20dd
    push ax                          ; 0x20e0
    mov ax, 6                        ; 0x20e1
    imul word [bp - 0x0002]          ; 0x20e4
    add ax, word [bp - 0x0006]       ; 0x20e7
    add ax, strict word 0x22         ; 0x20ea
    push ax                          ; 0x20ed
    mov ax, word [bp - 0x000c]       ; 0x20ee
    add ax, strict word 6            ; 0x20f1
    push ax                          ; 0x20f4
    mov ax, word [bp - 0x0002]       ; 0x20f5
    add ax, strict word 0x12         ; 0x20f8
    push ax                          ; 0x20fb
    call ds_dispatch_baa6            ; 0x20fc
    add sp, byte 0x0e                ; 0x20ff
    inc word [bp - 0x0002]           ; 0x2102
    mov ax, word [bp - 0x0002]       ; 0x2105
    cmp ax, strict word 7            ; 0x2108
    jl short @..local.l108           ; 0x210b
    mov ax, 0                        ; 0x210d
    push ax                          ; 0x2110
    push ax                          ; 0x2111
    push ax                          ; 0x2112
    push ax                          ; 0x2113
    push ax                          ; 0x2114
    mov ax, 0xffff                   ; 0x2115
    push ax                          ; 0x2118
    mov ax, 0x19                     ; 0x2119
    push ax                          ; 0x211c
    call ds_dispatch_baa6            ; 0x211d
    add sp, byte 0x0e                ; 0x2120
    mov ax, word [bp - 0x000a]       ; 0x2123
    inc ax                           ; 0x2126
    push ax                          ; 0x2127
    mov ax, 0x139                    ; 0x2128
    push ax                          ; 0x212b
    mov ax, word [bp - 0x0006]       ; 0x212c
    dec ax                           ; 0x212f
    push ax                          ; 0x2130
    mov ax, 9                        ; 0x2131
    push ax                          ; 0x2134
    call ds_dispatch_e8da            ; 0x2135
    add sp, byte 8                   ; 0x2138
    mov word [data_90d6], 5          ; 0x213b
    les bx, word [data_0002]         ; 0x2141
    mov ax, word [es:bx]             ; 0x2145
    mov dx, word [es:bx + 0x2]       ; 0x2148
    mov word [data_908c], dx         ; 0x214c
    mov word [data_908a], ax         ; 0x2150
    mov word [bp - 0x001c], 1        ; 0x2153
@..local.l109:
    push word [bp - 0x0042]          ; 0x2158
    push word [bp + 0x4]             ; 0x215b
    call loc_1c11                    ; 0x215e
    add sp, byte 4                   ; 0x2161
    mov ax, 0x59fe                   ; 0x2164
    push ax                          ; 0x2167
    call ds_dispatch_b90d            ; 0x2168
    pop cx                           ; 0x216b
    dec ax                           ; 0x216c
    mov word [bp - 0x001a], ax       ; 0x216d
    cmp word [data_59fc], byte 0     ; 0x2170
    je short @..local.l113           ; 0x2175
    mov ax, word [bp - 0x0022]       ; 0x2177
    cmp ax, word [bp - 0x0018]       ; 0x217a
    jl short @..local.l110           ; 0x217d
    inc word [bp - 0x0022]           ; 0x217f
@..local.l110:
    mov ax, word [bp - 0x0022]       ; 0x2182
    cmp ax, strict word 0xffff       ; 0x2185
    je short @..local.l111           ; 0x2188
    cmp ax, word [bp - 0x0018]       ; 0x218a
    jl short @..local.l111           ; 0x218d
    mov ax, word [bp - 0x0018]       ; 0x218f
    add ax, word [bp - 0x0020]       ; 0x2192
    mov cx, ax                       ; 0x2195
    dec ax                           ; 0x2197
    mov cx, ax                       ; 0x2198
    mov ax, word [bp - 0x0022]       ; 0x219a
    cmp cx, ax                       ; 0x219d
    jge short @..local.l112          ; 0x219f
@..local.l111:
    mov ax, word [bp - 0x0018]       ; 0x21a1
    mov word [bp - 0x0022], ax       ; 0x21a4
@..local.l112:
    mov word [data_5b3e], 1          ; 0x21a7
    mov ax, word [bp - 0x0022]       ; 0x21ad
    sub ax, word [bp - 0x0018]       ; 0x21b0
    add ax, strict word 0x12         ; 0x21b3
    mov word [bp - 0x001a], ax       ; 0x21b6
@..local.l113:
    cmp word [data_5b3e], byte 1     ; 0x21b9
    je short @..local.l114           ; 0x21be
    jmp near @..local.l138           ; 0x21c0
@..local.l114:
    mov ax, word [bp - 0x001a]       ; 0x21c3
    jmp near @..local.l136           ; 0x21c6

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x7f, 0xce, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xd1, 0x95, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x51, 0xce, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xa1, 0x95, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x28, 0x9d, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x4a, 0x9d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xe7, 0x97, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xf9, 0xc5, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x9f, 0x9b
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x6e
    db 0x9b, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x3b, 0x94, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0xe8, 0x9b, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x0a, 0x9c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xa7, 0x96, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xb9, 0xc4, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xca, 0x99, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xaa, 0x99, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x10, 0x93, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x71, 0x99, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x51, 0x99, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..local.l115:
    cmp word [bp - 0x001a], byte 5   ; 0x251f
    jge short @..local.l116          ; 0x2523
    jmp near @..local.l124           ; 0x2525
@..local.l116:
    cmp word [bp - 0x001a], byte 0x0b ; 0x2528
    jle short @..local.l117          ; 0x252c
    jmp near @..local.l124           ; 0x252e
@..local.l117:
    mov ax, 0                        ; 0x2531
    push ax                          ; 0x2534
    push word [bp - 0x003e]          ; 0x2535
    mov ax, word [bp - 0x0006]       ; 0x2538
    add ax, strict word 0x14         ; 0x253b
    push ax                          ; 0x253e
    mov ax, word [bp - 0x000c]       ; 0x253f
    add ax, strict word 0xc          ; 0x2542
    push ax                          ; 0x2545
    call math_loc_1a4b               ; 0x2546
    add sp, byte 8                   ; 0x2549
    mov ax, word [bp - 0x001a]       ; 0x254c
    add ax, strict word 0xfffb       ; 0x254f
    mov word [bp - 0x003e], ax       ; 0x2552
    mov ax, 1                        ; 0x2555
    push ax                          ; 0x2558
    push word [bp - 0x003e]          ; 0x2559
    mov ax, word [bp - 0x0006]       ; 0x255c
    add ax, strict word 0x14         ; 0x255f
    push ax                          ; 0x2562
    mov ax, word [bp - 0x000c]       ; 0x2563
    add ax, strict word 0xc          ; 0x2566
    push ax                          ; 0x2569
    call math_loc_1a4b               ; 0x256a
    add sp, byte 8                   ; 0x256d
    cmp word [bp - 0x003c], byte 0   ; 0x2570
    jge short @..local.l118          ; 0x2574
    jmp near @..local.l122           ; 0x2576
@..local.l118:
    mov ax, 6                        ; 0x2579
    push ax                          ; 0x257c
    mov ax, 0                        ; 0x257d
    push ax                          ; 0x2580
    mov ax, 0x248                    ; 0x2581
    imul word [bp + 0x4]             ; 0x2584
    mov bx, ax                       ; 0x2587
    mov ax, word [bx + 0x5c18]       ; 0x2589
    push ax                          ; 0x258d
    mov ax, 6                        ; 0x258e
    imul word [bp - 0x003c]          ; 0x2591
    mov bx, ax                       ; 0x2594
    mov al, byte [bx + 0x621]        ; 0x2596
    sub ah, ah                       ; 0x259a
    mov cx, ax                       ; 0x259c
    pop ax                           ; 0x259e
    sub ax, cx                       ; 0x259f
    push ax                          ; 0x25a1
    call ds_dispatch_b7c2            ; 0x25a2
    add sp, byte 6                   ; 0x25a5
    mov word [bp - 0x0040], ax       ; 0x25a8
    mov ax, 6                        ; 0x25ab
    imul word [bp - 0x003c]          ; 0x25ae
    mov bx, ax                       ; 0x25b1
    mov al, byte [bx + 0x622]        ; 0x25b3
    sub ah, ah                       ; 0x25b7
    mov cx, word [bp - 0x0040]       ; 0x25b9
    inc cx                           ; 0x25bc
    imul cx                          ; 0x25bd
    mov word [bp - 0x0002], ax       ; 0x25bf
    cmp word [bp + 0xa], byte 0      ; 0x25c2
    jne short @..local.l119          ; 0x25c6
    mov ax, 0x3e7                    ; 0x25c8
    jmp short @..local.l121          ; 0x25cb
@..local.l119:
    mov ax, 0x248                    ; 0x25cd
    imul word [bp + 0x4]             ; 0x25d0
    mov cx, word [bp - 0x0042]       ; 0x25d3
    shl cx, 1                        ; 0x25d6
    shl cx, 1                        ; 0x25d8
    add ax, cx                       ; 0x25da
    mov bx, ax                       ; 0x25dc
    mov ax, word [bx + 0x5c1c]       ; 0x25de
    cmp ax, word [bp - 0x0002]       ; 0x25e2
    jge short @..local.l120          ; 0x25e5
    jmp short @..local.l121          ; 0x25e7
@..local.l120:
    mov ax, word [bp - 0x0002]       ; 0x25e9
@..local.l121:
    push ax                          ; 0x25ec
    mov ax, 6                        ; 0x25ed
    imul word [bp - 0x003c]          ; 0x25f0
    mov bx, ax                       ; 0x25f3
    mov al, byte [bx + 0x622]        ; 0x25f5
    sub ah, ah                       ; 0x25f9
    mov cx, word [bp - 0x003e]       ; 0x25fb
    inc cx                           ; 0x25fe
    imul cx                          ; 0x25ff
    push ax                          ; 0x2601
    push word [bp - 0x0042]          ; 0x2602
    mov ax, word [bp - 0x0006]       ; 0x2605
    add ax, strict word 0x15         ; 0x2608
    push ax                          ; 0x260b
    mov ax, word [bp - 0x000c]       ; 0x260c
    add ax, strict word 0x5e         ; 0x260f
    push ax                          ; 0x2612
    call loc_1ad7                    ; 0x2613
    add sp, byte 0x0a                ; 0x2616
    jmp short @..local.l123          ; 0x2619
@..local.l122:
    mov ax, 0                        ; 0x261b
    push ax                          ; 0x261e
    push ax                          ; 0x261f
    push word [bp - 0x0042]          ; 0x2620
    mov ax, word [bp - 0x0006]       ; 0x2623
    add ax, strict word 0x15         ; 0x2626
    push ax                          ; 0x2629
    mov ax, word [bp - 0x000c]       ; 0x262a
    add ax, strict word 0x5e         ; 0x262d
    push ax                          ; 0x2630
    call loc_1ad7                    ; 0x2631
    add sp, byte 0x0a                ; 0x2634
@..local.l123:
    mov ax, word [bp - 0x0006]       ; 0x2637
    add ax, strict word 0x1c         ; 0x263a
    push ax                          ; 0x263d
    mov ax, word [bp - 0x000c]       ; 0x263e
    add ax, strict word 0x56         ; 0x2641
    push ax                          ; 0x2644
    mov ax, word [bp - 0x0006]       ; 0x2645
    add ax, strict word 0x14         ; 0x2648
    push ax                          ; 0x264b
    mov ax, word [bp - 0x000c]       ; 0x264c
    add ax, strict word 0xb          ; 0x264f
    push ax                          ; 0x2652
    call ds_dispatch_e8da            ; 0x2653
    add sp, byte 8                   ; 0x2656
    mov ax, word [bp - 0x0006]       ; 0x2659
    add ax, strict word 0x1b         ; 0x265c
    push ax                          ; 0x265f
    mov ax, word [bp - 0x000c]       ; 0x2660
    add ax, strict word 0x72         ; 0x2663
    push ax                          ; 0x2666
    mov ax, word [bp - 0x0006]       ; 0x2667
    add ax, strict word 0x15         ; 0x266a
    push ax                          ; 0x266d
    mov ax, word [bp - 0x000c]       ; 0x266e
    add ax, strict word 0x5e         ; 0x2671
    push ax                          ; 0x2674
    call ds_dispatch_e8da            ; 0x2675
    add sp, byte 8                   ; 0x2678
    jmp near @..local.l135           ; 0x267b
@..local.l124:
    cmp word [bp - 0x001a], byte 0x0c ; 0x267e
    jge short @..local.l125          ; 0x2682
    jmp near @..local.l129           ; 0x2684
@..local.l125:
    cmp word [bp - 0x001a], byte 0x11 ; 0x2687
    jle short @..local.l126          ; 0x268b
    jmp near @..local.l129           ; 0x268d
@..local.l126:
    mov ax, word [bp - 0x001a]       ; 0x2690
    add ax, strict word 0xfff4       ; 0x2693
    mov word [bp - 0x0042], ax       ; 0x2696
    mov word [bp - 0x003c], 0xffff   ; 0x2699
    push ax                          ; 0x269e
    push word [bp + 0x4]             ; 0x269f
    call api_idx_0004_2              ; 0x26a2
    add sp, byte 4                   ; 0x26a5
    mov word [bp - 0x0044], ax       ; 0x26a8
    mov ax, 7                        ; 0x26ab
    cmp word [bp - 0x0044], byte 7   ; 0x26ae
    jge short @..local.l127          ; 0x26b2
    mov ax, word [bp - 0x0044]       ; 0x26b4
@..local.l127:
    mov word [bp - 0x0024], ax       ; 0x26b7
    mov ax, 7                        ; 0x26ba
    cmp word [bp - 0x0044], byte 7   ; 0x26bd
    jge short @..local.l128          ; 0x26c1
    mov ax, word [bp - 0x0044]       ; 0x26c3
@..local.l128:
    mov word [bp - 0x0020], ax       ; 0x26c6
    mov word [bp - 0x0018], 0        ; 0x26c9
    mov word [bp - 0x0022], 0xffff   ; 0x26ce
    push word [bp - 0x0024]          ; 0x26d3
    push word [bp - 0x0022]          ; 0x26d6
    push word [bp - 0x0018]          ; 0x26d9
    mov ax, 7                        ; 0x26dc
    push ax                          ; 0x26df
    mov ax, 0xf                      ; 0x26e0
    push ax                          ; 0x26e3
    mov ax, word [bp - 0x0006]       ; 0x26e4
    add ax, strict word 0x22         ; 0x26e7
    push ax                          ; 0x26ea
    mov ax, word [bp - 0x000c]       ; 0x26eb
    add ax, strict word 6            ; 0x26ee
    push ax                          ; 0x26f1
    call ds_dispatch_bf97            ; 0x26f2
    add sp, byte 0x0e                ; 0x26f5
    mov word [bp - 0x0012], 0        ; 0x26f8
    push word [bp - 0x0012]          ; 0x26fd
    mov ax, 7                        ; 0x2700
    push ax                          ; 0x2703
    mov ax, 8                        ; 0x2704
    push ax                          ; 0x2707
    mov ax, word [bp - 0x0006]       ; 0x2708
    add ax, strict word 0x22         ; 0x270b
    push ax                          ; 0x270e
    mov ax, word [bp - 0x000c]       ; 0x270f
    add ax, strict word 0x6a         ; 0x2712
    push ax                          ; 0x2715
    call ds_dispatch_bfd8            ; 0x2716
    add sp, byte 0x0a                ; 0x2719
    mov ax, 0                        ; 0x271c
    push ax                          ; 0x271f
    push ax                          ; 0x2720
    mov ax, word [bp - 0x0006]       ; 0x2721
    add ax, word [bp - 0x0012]       ; 0x2724
    add ax, strict word 0x2e         ; 0x2727
    push ax                          ; 0x272a
    mov ax, word [bp - 0x000c]       ; 0x272b
    add ax, strict word 0x72         ; 0x272e
    push ax                          ; 0x2731
    mov ax, word [bp - 0x0006]       ; 0x2732
    add ax, word [bp - 0x0012]       ; 0x2735
    add ax, strict word 0x2a         ; 0x2738
    push ax                          ; 0x273b
    mov ax, word [bp - 0x000c]       ; 0x273c
    add ax, strict word 0x6a         ; 0x273f
    push ax                          ; 0x2742
    mov ax, 0                        ; 0x2743
    push ax                          ; 0x2746
    call ds_dispatch_baa6            ; 0x2747
    add sp, byte 0x0e                ; 0x274a
    mov ax, 0                        ; 0x274d
    push ax                          ; 0x2750
    push ax                          ; 0x2751
    push word [bp - 0x0042]          ; 0x2752
    mov ax, word [bp - 0x0006]       ; 0x2755
    add ax, strict word 0x15         ; 0x2758
    push ax                          ; 0x275b
    mov ax, word [bp - 0x000c]       ; 0x275c
    add ax, strict word 0x5e         ; 0x275f
    push ax                          ; 0x2762
    call loc_1ad7                    ; 0x2763
    add sp, byte 0x0a                ; 0x2766
    mov ax, word [bp - 0x0006]       ; 0x2769
    add ax, strict word 0x4c         ; 0x276c
    push ax                          ; 0x276f
    mov ax, word [bp - 0x000c]       ; 0x2770
    add ax, strict word 0x72         ; 0x2773
    push ax                          ; 0x2776
    mov ax, word [bp - 0x0006]       ; 0x2777
    add ax, strict word 0x22         ; 0x277a
    push ax                          ; 0x277d
    mov ax, word [bp - 0x000c]       ; 0x277e
    add ax, strict word 6            ; 0x2781
    push ax                          ; 0x2784
    call ds_dispatch_e8da            ; 0x2785
    add sp, byte 8                   ; 0x2788
    mov ax, word [bp - 0x0006]       ; 0x278b
    add ax, strict word 0x1b         ; 0x278e
    push ax                          ; 0x2791
    mov ax, word [bp - 0x000c]       ; 0x2792
    add ax, strict word 0x72         ; 0x2795
    push ax                          ; 0x2798
    mov ax, word [bp - 0x0006]       ; 0x2799
    add ax, strict word 0x15         ; 0x279c
    push ax                          ; 0x279f
    mov ax, word [bp - 0x000c]       ; 0x27a0
    add ax, strict word 0x5e         ; 0x27a3
    push ax                          ; 0x27a6
    call ds_dispatch_e8da            ; 0x27a7
    add sp, byte 8                   ; 0x27aa
    jmp near @..local.l135           ; 0x27ad
@..local.l129:
    cmp word [bp - 0x001a], byte 0x12 ; 0x27b0
    jge short @..local.l130          ; 0x27b4
    jmp near @..local.l135           ; 0x27b6
@..local.l130:
    mov ax, word [bp - 0x0020]       ; 0x27b9
    add ax, strict word 0x12         ; 0x27bc
    cmp ax, word [bp - 0x001a]       ; 0x27bf
    jg short @..local.l131           ; 0x27c2
    jmp near @..local.l135           ; 0x27c4
@..local.l131:
    mov ax, word [bp - 0x0018]       ; 0x27c7
    add ax, word [bp - 0x001a]       ; 0x27ca
    add ax, strict word 0xffee       ; 0x27cd
    mov word [bp - 0x0022], ax       ; 0x27d0
    shl ax, 1                        ; 0x27d3
    mov bx, ax                       ; 0x27d5
    mov ax, word [bx - 0x6efa]       ; 0x27d7
    mov word [bp - 0x003c], ax       ; 0x27db
    push word [bp - 0x0024]          ; 0x27de
    push word [bp - 0x0022]          ; 0x27e1
    push word [bp - 0x0018]          ; 0x27e4
    mov ax, 7                        ; 0x27e7
    push ax                          ; 0x27ea
    mov ax, 0xf                      ; 0x27eb
    push ax                          ; 0x27ee
    mov ax, word [bp - 0x0006]       ; 0x27ef
    add ax, strict word 0x22         ; 0x27f2
    push ax                          ; 0x27f5
    mov ax, word [bp - 0x000c]       ; 0x27f6
    add ax, strict word 6            ; 0x27f9
    push ax                          ; 0x27fc
    call ds_dispatch_bf97            ; 0x27fd
    add sp, byte 0x0e                ; 0x2800
    mov ax, 6                        ; 0x2803
    push ax                          ; 0x2806
    mov ax, 0                        ; 0x2807
    push ax                          ; 0x280a
    mov ax, 0x248                    ; 0x280b
    imul word [bp + 0x4]             ; 0x280e
    mov bx, ax                       ; 0x2811
    mov ax, word [bx + 0x5c18]       ; 0x2813
    push ax                          ; 0x2817
    mov ax, 6                        ; 0x2818
    imul word [bp - 0x003c]          ; 0x281b
    mov bx, ax                       ; 0x281e
    mov al, byte [bx + 0x621]        ; 0x2820
    sub ah, ah                       ; 0x2824
    mov cx, ax                       ; 0x2826
    pop ax                           ; 0x2828
    sub ax, cx                       ; 0x2829
    push ax                          ; 0x282b
    call ds_dispatch_b7c2            ; 0x282c
    add sp, byte 6                   ; 0x282f
    mov word [bp - 0x0040], ax       ; 0x2832
    mov ax, 6                        ; 0x2835
    imul word [bp - 0x003c]          ; 0x2838
    mov bx, ax                       ; 0x283b
    mov al, byte [bx + 0x622]        ; 0x283d
    sub ah, ah                       ; 0x2841
    mov cx, word [bp - 0x0040]       ; 0x2843
    inc cx                           ; 0x2846
    imul cx                          ; 0x2847
    mov word [bp - 0x0002], ax       ; 0x2849
    cmp word [bp + 0xa], byte 0      ; 0x284c
    jne short @..local.l132          ; 0x2850
    mov ax, 0x3e7                    ; 0x2852
    jmp short @..local.l134          ; 0x2855
@..local.l132:
    mov ax, 0x248                    ; 0x2857
    imul word [bp + 0x4]             ; 0x285a
    mov cx, word [bp - 0x0042]       ; 0x285d
    shl cx, 1                        ; 0x2860
    shl cx, 1                        ; 0x2862
    add ax, cx                       ; 0x2864
    mov bx, ax                       ; 0x2866
    mov ax, word [bx + 0x5c1c]       ; 0x2868
    cmp ax, word [bp - 0x0002]       ; 0x286c
    jge short @..local.l133          ; 0x286f
    jmp short @..local.l134          ; 0x2871
@..local.l133:
    mov ax, word [bp - 0x0002]       ; 0x2873
@..local.l134:
    push ax                          ; 0x2876
    mov ax, 6                        ; 0x2877
    imul word [bp - 0x003c]          ; 0x287a
    mov bx, ax                       ; 0x287d
    mov al, byte [bx + 0x622]        ; 0x287f
    sub ah, ah                       ; 0x2883
    mov cx, word [bp - 0x003e]       ; 0x2885
    inc cx                           ; 0x2888
    imul cx                          ; 0x2889
    push ax                          ; 0x288b
    push word [bp - 0x0042]          ; 0x288c
    mov ax, word [bp - 0x0006]       ; 0x288f
    add ax, strict word 0x15         ; 0x2892
    push ax                          ; 0x2895
    mov ax, word [bp - 0x000c]       ; 0x2896
    add ax, strict word 0x5e         ; 0x2899
    push ax                          ; 0x289c
    call loc_1ad7                    ; 0x289d
    add sp, byte 0x0a                ; 0x28a0
    mov ax, word [bp - 0x0006]       ; 0x28a3
    add ax, strict word 0x4c         ; 0x28a6
    push ax                          ; 0x28a9
    mov ax, word [bp - 0x000c]       ; 0x28aa
    add ax, strict word 0x72         ; 0x28ad
    push ax                          ; 0x28b0
    mov ax, word [bp - 0x0006]       ; 0x28b1
    add ax, strict word 0x22         ; 0x28b4
    push ax                          ; 0x28b7
    mov ax, word [bp - 0x000c]       ; 0x28b8
    add ax, strict word 6            ; 0x28bb
    push ax                          ; 0x28be
    call ds_dispatch_e8da            ; 0x28bf
    add sp, byte 8                   ; 0x28c2
    mov ax, word [bp - 0x0006]       ; 0x28c5
    add ax, strict word 0x1b         ; 0x28c8
    push ax                          ; 0x28cb
    mov ax, word [bp - 0x000c]       ; 0x28cc
    add ax, strict word 0x72         ; 0x28cf
    push ax                          ; 0x28d2
    mov ax, word [bp - 0x0006]       ; 0x28d3
    add ax, strict word 0x15         ; 0x28d6
    push ax                          ; 0x28d9
    mov ax, word [bp - 0x000c]       ; 0x28da
    add ax, strict word 0x5e         ; 0x28dd
    push ax                          ; 0x28e0
    call ds_dispatch_e8da            ; 0x28e1
    add sp, byte 8                   ; 0x28e4
@..local.l135:
    jmp short @..local.l138          ; 0x28e7
    adc byte [bp + si + 0x37], dh    ; 0x28e9
    jae short loc_2925               ; 0x28ec
    jae short loc_295e               ; 0x28ee
    je short loc_290d                ; 0x28f0
    db 0x75
@..local.l136:
    cmp ax, strict word 5            ; 0x28f3
    jae short @..local.l137          ; 0x28f6
    xchg bx, ax                      ; 0x28f8
    shl bx, 1                        ; 0x28f9
    jmp [cs:bx + 0x7930]             ; 0x28fb
@..local.l137:
    jmp near @..local.l115           ; 0x2900
@..local.l138:
    cmp word [bp - 0x001c], byte 0   ; 0x2903
    je short @..local.l139           ; 0x2907
    jmp near @..local.l109           ; 0x2909
@..local.l139:
    mov ax, 1                        ; 0x290c
    push ax                          ; 0x290f
    push word [bp - 0x003a]          ; 0x2910
    call ds_dispatch_c459            ; 0x2913
    add sp, byte 4                   ; 0x2916
    mov ax, word [bp - 0x000a]       ; 0x2919
    inc ax                           ; 0x291c
    push ax                          ; 0x291d
    mov ax, word [bp - 0x0008]       ; 0x291e
    inc ax                           ; 0x2921
    push ax                          ; 0x2922
    mov ax, word [bp - 0x0006]       ; 0x2923
    dec ax                           ; 0x2926
    push ax                          ; 0x2927
    mov ax, word [bp - 0x0004]       ; 0x2928
    dec ax                           ; 0x292b
    push ax                          ; 0x292c
    call ds_dispatch_e8da            ; 0x292d
    add sp, byte 8                   ; 0x2930
    mov ax, word [bp - 0x003e]       ; 0x2933
    xchg al, ah                      ; 0x2936
    sub al, al                       ; 0x2938
    add ax, word [bp - 0x003c]       ; 0x293a
    add ax, 0x100                    ; 0x293d
    mov word [data_904e], ax         ; 0x2940
    mov ax, word [data_9050]         ; 0x2943
    ret                              ; 0x2946
api_idx_000a_4:
    mov ax, 0xfff6                   ; 0x2947
    call ds_dispatch_f40b            ; 0x294a
    call loc_108d                    ; 0x294d
    mov ax, 1                        ; 0x2950
    push ax                          ; 0x2953
    push ax                          ; 0x2954
    mov ax, 0x7ea                    ; 0x2955
    push ax                          ; 0x2958
    push word [bp + 0x4]             ; 0x2959
    call api_idx_0044                ; 0x295c
    add sp, byte 8                   ; 0x295f
    mov word [bp - 0x0004], ax       ; 0x2962
    mov ax, word [data_904e]         ; 0x2965
    mov word [bp - 0x0002], ax       ; 0x2968
    cmp word [bp - 0x0004], byte 1   ; 0x296b
    jne short @..local.l140          ; 0x296f
    mov ax, 0xffff                   ; 0x2971
    ret                              ; 0x2974
@..local.l140:
    mov ax, word [bp - 0x0002]       ; 0x2975
    mov cx, 0x100                    ; 0x2978
    cwd                              ; 0x297b
    idiv cx                          ; 0x297c
    mov word [bp - 0x0006], ax       ; 0x297e
    mov word [bp - 0x0008], dx       ; 0x2981
    mov ax, 6                        ; 0x2984
    imul dx                          ; 0x2987
    mov bx, ax                       ; 0x2989
    cmp byte [bx + 0x624], 1         ; 0x298b
    jne short @..local.l142          ; 0x2990
    call ds_dispatch_ceb1            ; 0x2992
    mov word [bp - 0x000a], ax       ; 0x2995
    cmp ax, strict word 0xffff       ; 0x2998
    jne short @..local.l141          ; 0x299b
    mov ax, 0xffff                   ; 0x299d
    ret                              ; 0x29a0
@..local.l141:
    mov ax, 0x2c                     ; 0x29a1
    imul word [bp + 0x4]             ; 0x29a4
    mov si, ax                       ; 0x29a7
    mov bx, word [data_8482]         ; 0x29a9
    mov byte [bx + si + 0x1f], 0     ; 0x29ad
    mov al, byte [bp - 0x000a]       ; 0x29b1
    push ax                          ; 0x29b4
    mov ax, 0x2c                     ; 0x29b5
    imul word [bp + 0x4]             ; 0x29b8
    mov si, ax                       ; 0x29bb
    mov bx, word [data_8482]         ; 0x29bd
    pop ax                           ; 0x29c1
    mov byte [bx + si + 0x20], al    ; 0x29c2
@..local.l142:
    mov ax, word [bp - 0x0008]       ; 0x29c5
    cmp ax, strict word 0x13         ; 0x29c8
    je short @..local.l143           ; 0x29cb
    cmp ax, strict word 0x58         ; 0x29cd
    je short @..local.l143           ; 0x29d0
    cmp ax, strict word 0x42         ; 0x29d2
    jne short @..local.l144          ; 0x29d5
@..local.l143:
    mov ax, 0x2c                     ; 0x29d7
    imul word [bp + 0x4]             ; 0x29da
    mov si, ax                       ; 0x29dd
    mov bx, word [data_8482]         ; 0x29df
    mov byte [bx + si + 0x1f], 0     ; 0x29e3
@..local.l144:
    mov ax, word [bp - 0x0006]       ; 0x29e7
    xchg al, ah                      ; 0x29ea
    sub al, al                       ; 0x29ec
    add ax, word [bp - 0x0008]       ; 0x29ee
    ret                              ; 0x29f1
api_idx_0018:
    mov ax, 0xffe8                   ; 0x29f2
    call ds_dispatch_f40b            ; 0x29f5
    mov ax, word [bp + 0x6]          ; 0x29f8
    imul word [bp + 0xe]             ; 0x29fb
    add ax, word [bp + 0xa]          ; 0x29fe
    add ax, strict word 0xb          ; 0x2a01
    push ax                          ; 0x2a04
    mov ax, 6                        ; 0x2a05
    imul word [bp + 0xc]             ; 0x2a08
    add ax, word [bp + 0x8]          ; 0x2a0b
    inc ax                           ; 0x2a0e
    push ax                          ; 0x2a0f
    mov ax, word [bp + 0x6]          ; 0x2a10
    imul word [bp + 0xe]             ; 0x2a13
    add ax, word [bp + 0xa]          ; 0x2a16
    dec ax                           ; 0x2a19
    push ax                          ; 0x2a1a
    mov ax, word [bp + 0x8]          ; 0x2a1b
    dec ax                           ; 0x2a1e
    push ax                          ; 0x2a1f
    call ds_dispatch_e928            ; 0x2a20
    add sp, byte 8                   ; 0x2a23
    mov word [bp - 0x0016], dx       ; 0x2a26
    mov word [bp - 0x0018], ax       ; 0x2a29
    lea ax, word [bp - 0x0014]       ; 0x2a2c
    push ax                          ; 0x2a2f
    push word [bp + 0x4]             ; 0x2a30
    call ds_dispatch_b53b            ; 0x2a33
    add sp, byte 4                   ; 0x2a36
    mov ax, 0                        ; 0x2a39
    push ax                          ; 0x2a3c
    mov ax, word [bp + 0x6]          ; 0x2a3d
    imul word [bp + 0xe]             ; 0x2a40
    add ax, word [bp + 0xa]          ; 0x2a43
    add ax, strict word 8            ; 0x2a46
    push ax                          ; 0x2a49
    mov ax, 6                        ; 0x2a4a
    imul word [bp + 0xc]             ; 0x2a4d
    add ax, word [bp + 0x8]          ; 0x2a50
    push ax                          ; 0x2a53
    mov ax, word [bp + 0x6]          ; 0x2a54
    imul word [bp + 0xe]             ; 0x2a57
    add ax, word [bp + 0xa]          ; 0x2a5a
    push ax                          ; 0x2a5d
    push word [bp + 0x8]             ; 0x2a5e
    call ds_dispatch_bce3            ; 0x2a61
    add sp, byte 0x0a                ; 0x2a64
    mov ax, word [bp + 0x6]          ; 0x2a67
    imul word [bp + 0xe]             ; 0x2a6a
    add ax, word [bp + 0xa]          ; 0x2a6d
    inc ax                           ; 0x2a70
    inc ax                           ; 0x2a71
    push ax                          ; 0x2a72
    lea ax, word [bp - 0x0014]       ; 0x2a73
    push ax                          ; 0x2a76
    call ds_dispatch_fa90            ; 0x2a77
    pop cx                           ; 0x2a7a
    mov cx, ax                       ; 0x2a7b
    mov ax, word [bp + 0xc]          ; 0x2a7d
    sub ax, cx                       ; 0x2a80
    mov cx, 6                        ; 0x2a82
    imul cx                          ; 0x2a85
    mov cx, data_0002                ; 0x2a87
    cwd                              ; 0x2a8a
    idiv cx                          ; 0x2a8b
    add ax, word [bp + 0x8]          ; 0x2a8d
    inc ax                           ; 0x2a90
    push ax                          ; 0x2a91
    call ds_dispatch_e809            ; 0x2a92
    add sp, byte 4                   ; 0x2a95
    mov ax, 0xc0                     ; 0x2a98
    push ax                          ; 0x2a9b
    mov ax, 0x1a                     ; 0x2a9c
    push ax                          ; 0x2a9f
    call ds_dispatch_e823            ; 0x2aa0
    add sp, byte 4                   ; 0x2aa3
    mov ax, 0                        ; 0x2aa6
    push ax                          ; 0x2aa9
    lea ax, word [bp - 0x0014]       ; 0x2aaa
    push ax                          ; 0x2aad
    call ds_dispatch_e84e            ; 0x2aae
    add sp, byte 4                   ; 0x2ab1
    mov ax, word [bp + 0x6]          ; 0x2ab4
    imul word [bp + 0xe]             ; 0x2ab7
    add ax, word [bp + 0xa]          ; 0x2aba
    add ax, strict word 8            ; 0x2abd
    push ax                          ; 0x2ac0
    mov ax, 6                        ; 0x2ac1
    imul word [bp + 0xc]             ; 0x2ac4
    add ax, word [bp + 0x8]          ; 0x2ac7
    push ax                          ; 0x2aca
    mov ax, word [bp + 0x6]          ; 0x2acb
    imul word [bp + 0xe]             ; 0x2ace
    add ax, word [bp + 0xa]          ; 0x2ad1
    push ax                          ; 0x2ad4
    push word [bp + 0x8]             ; 0x2ad5
    call ds_dispatch_e8da            ; 0x2ad8
    add sp, byte 8                   ; 0x2adb
    mov ax, 1                        ; 0x2ade
    push ax                          ; 0x2ae1
    push word [bp - 0x0016]          ; 0x2ae2
    push word [bp - 0x0018]          ; 0x2ae5
    call ds_dispatch_e94f            ; 0x2ae8
    add sp, byte 6                   ; 0x2aeb
    ret                              ; 0x2aee
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x2aef
    call ds_dispatch_f40b            ; 0x2af2
    mov word [bp - 0x0002], 0        ; 0x2af5
    jmp near @..api_idx_0004_3.l8    ; 0x2afa
@..api_idx_0004_3.l1:
    mov ax, word [bp + 0xc]          ; 0x2afd
    add ax, word [bp - 0x0002]       ; 0x2b00
    cmp ax, word [bp + 0xe]          ; 0x2b03
    jne short @..api_idx_0004_3.l2   ; 0x2b06
    mov ax, 1                        ; 0x2b08
    push ax                          ; 0x2b0b
    mov ax, 0xe                      ; 0x2b0c
    imul word [bp - 0x0002]          ; 0x2b0f
    add ax, word [bp + 0x6]          ; 0x2b12
    add ax, strict word 0xd          ; 0x2b15
    push ax                          ; 0x2b18
    mov ax, 6                        ; 0x2b19
    imul word [bp + 0x8]             ; 0x2b1c
    add ax, word [bp + 0x4]          ; 0x2b1f
    inc ax                           ; 0x2b22
    inc ax                           ; 0x2b23
    push ax                          ; 0x2b24
    mov ax, 0xe                      ; 0x2b25
    imul word [bp - 0x0002]          ; 0x2b28
    add ax, word [bp + 0x6]          ; 0x2b2b
    inc ax                           ; 0x2b2e
    push ax                          ; 0x2b2f
    mov ax, word [bp + 0x4]          ; 0x2b30
    add ax, strict word 0x1c         ; 0x2b33
    push ax                          ; 0x2b36
    call ds_dispatch_e901            ; 0x2b37
    add sp, byte 0x0a                ; 0x2b3a
    mov word [bp - 0x0004], 0        ; 0x2b3d
    jmp short @..api_idx_0004_3.l3   ; 0x2b42
@..api_idx_0004_3.l2:
    mov word [bp - 0x0004], 0xb4     ; 0x2b44
@..api_idx_0004_3.l3:
    mov ax, 0xe                      ; 0x2b49
    imul word [bp - 0x0002]          ; 0x2b4c
    add ax, word [bp + 0x6]          ; 0x2b4f
    inc ax                           ; 0x2b52
    push ax                          ; 0x2b53
    mov ax, word [bp + 0x4]          ; 0x2b54
    inc ax                           ; 0x2b57
    inc ax                           ; 0x2b58
    push ax                          ; 0x2b59
    call ds_dispatch_e809            ; 0x2b5a
    add sp, byte 4                   ; 0x2b5d
    mov ax, word [bp + 0xc]          ; 0x2b60
    add ax, word [bp - 0x0002]       ; 0x2b63
    shl ax, 1                        ; 0x2b66
    mov bx, ax                       ; 0x2b68
    cmp word [bx - 0x6eaa], byte 0   ; 0x2b6a
    je short @..api_idx_0004_3.l4    ; 0x2b6f
    mov ax, 4                        ; 0x2b71
    push ax                          ; 0x2b74
    mov ax, 0x63                     ; 0x2b75
    push ax                          ; 0x2b78
    call ds_dispatch_e830            ; 0x2b79
    add sp, byte 4                   ; 0x2b7c
@..api_idx_0004_3.l4:
    mov ax, 0xe                      ; 0x2b7f
    imul word [bp - 0x0002]          ; 0x2b82
    add ax, word [bp + 0x6]          ; 0x2b85
    inc ax                           ; 0x2b88
    push ax                          ; 0x2b89
    mov ax, word [bp + 0x4]          ; 0x2b8a
    add ax, strict word 0xf          ; 0x2b8d
    push ax                          ; 0x2b90
    call ds_dispatch_e809            ; 0x2b91
    add sp, byte 4                   ; 0x2b94
    mov ax, 4                        ; 0x2b97
    push ax                          ; 0x2b9a
    mov ax, word [bp + 0xc]          ; 0x2b9b
    add ax, word [bp - 0x0002]       ; 0x2b9e
    shl ax, 1                        ; 0x2ba1
    mov bx, ax                       ; 0x2ba3
    mov al, byte [bx - 0x6e82]       ; 0x2ba5
    sub ah, ah                       ; 0x2ba9
    push ax                          ; 0x2bab
    call ds_dispatch_e830            ; 0x2bac
    add sp, byte 4                   ; 0x2baf
    push word [bp - 0x0004]          ; 0x2bb2
    mov ax, 0xe                      ; 0x2bb5
    imul word [bp - 0x0002]          ; 0x2bb8
    add ax, word [bp + 0x6]          ; 0x2bbb
    inc ax                           ; 0x2bbe
    inc ax                           ; 0x2bbf
    push ax                          ; 0x2bc0
    mov ax, word [bp + 0x4]          ; 0x2bc1
    add ax, strict word 0x1d         ; 0x2bc4
    push ax                          ; 0x2bc7
    mov ax, word [bp + 0xc]          ; 0x2bc8
    add ax, word [bp - 0x0002]       ; 0x2bcb
    mov cx, 0x16                     ; 0x2bce
    imul cx                          ; 0x2bd1
    add ax, 0x91a6                   ; 0x2bd3
    push ax                          ; 0x2bd6
    call api_idx_002a                ; 0x2bd7
    add sp, byte 8                   ; 0x2bda
    mov ax, word [bp + 0xc]          ; 0x2bdd
    add ax, word [bp - 0x0002]       ; 0x2be0
    shl ax, 1                        ; 0x2be3
    mov bx, ax                       ; 0x2be5
    cmp word [bx - 0x6ca2], byte 0   ; 0x2be7
    jle short @..api_idx_0004_3.l7   ; 0x2bec
    mov ax, 0xe                      ; 0x2bee
    imul word [bp - 0x0002]          ; 0x2bf1
    add ax, word [bp + 0x6]          ; 0x2bf4
    add ax, strict word 8            ; 0x2bf7
    push ax                          ; 0x2bfa
    mov ax, word [bp + 0x4]          ; 0x2bfb
    add ax, strict word 0x47         ; 0x2bfe
    push ax                          ; 0x2c01
    call ds_dispatch_e809            ; 0x2c02
    add sp, byte 4                   ; 0x2c05
    mov ax, 0                        ; 0x2c08
    push ax                          ; 0x2c0b
    mov ax, word [bp + 0xc]          ; 0x2c0c
    add ax, word [bp - 0x0002]       ; 0x2c0f
    cmp ax, word [bp + 0xe]          ; 0x2c12
    jne short @..api_idx_0004_3.l5   ; 0x2c15
    mov ax, word [bp - 0x0004]       ; 0x2c17
    jmp short @..api_idx_0004_3.l6   ; 0x2c1a
@..api_idx_0004_3.l5:
    mov ax, data_0002                ; 0x2c1c
@..api_idx_0004_3.l6:
    push ax                          ; 0x2c1f
    call ds_dispatch_e823            ; 0x2c20
    add sp, byte 4                   ; 0x2c23
    mov ax, 0                        ; 0x2c26
    push ax                          ; 0x2c29
    mov ax, 3                        ; 0x2c2a
    push ax                          ; 0x2c2d
    mov ax, word [bp + 0xc]          ; 0x2c2e
    add ax, word [bp - 0x0002]       ; 0x2c31
    shl ax, 1                        ; 0x2c34
    mov bx, ax                       ; 0x2c36
    push word [bx - 0x6ca2]          ; 0x2c38
    call ds_dispatch_b2e7            ; 0x2c3c
    add sp, byte 6                   ; 0x2c3f
@..api_idx_0004_3.l7:
    inc word [bp - 0x0002]           ; 0x2c42
@..api_idx_0004_3.l8:
    mov ax, word [bp - 0x0002]       ; 0x2c45
    cmp ax, word [bp + 0xa]          ; 0x2c48
    jge short @..api_idx_0004_3.l9   ; 0x2c4b
    jmp near @..api_idx_0004_3.l1    ; 0x2c4d
@..api_idx_0004_3.l9:
    ret                              ; 0x2c50
math_loc_2c51:
    mov ax, 0                        ; 0x2c51
    call ds_dispatch_f40b            ; 0x2c54
    mov ax, 6                        ; 0x2c57
    imul word [bp + 0xa]             ; 0x2c5a
    add ax, word [bp + 0x6]          ; 0x2c5d
    push ax                          ; 0x2c60
    mov ax, 6                        ; 0x2c61
    imul word [bp + 0x8]             ; 0x2c64
    add ax, word [bp + 0x4]          ; 0x2c67
    inc ax                           ; 0x2c6a
    inc ax                           ; 0x2c6b
    push ax                          ; 0x2c6c
    push word [bp + 0x6]             ; 0x2c6d
    push word [bp + 0x4]             ; 0x2c70
    call ds_dispatch_bd98            ; 0x2c73
    add sp, byte 8                   ; 0x2c76
    push word [bp + 0xe]             ; 0x2c79
    push word [bp + 0xc]             ; 0x2c7c
    push word [bp + 0x10]            ; 0x2c7f
    push word [bp + 0x8]             ; 0x2c82
    push word [bp + 0x6]             ; 0x2c85
    push word [bp + 0x4]             ; 0x2c88
    call api_idx_0004_3              ; 0x2c8b
    add sp, byte 0x0c                ; 0x2c8e
    ret                              ; 0x2c91
api_idx_0038:
    mov ax, 0xffc8                   ; 0x2c92
    call ds_dispatch_f40b            ; 0x2c95
    mov word [data_904e], 0xffff     ; 0x2c98
    mov word [bp - 0x0004], 0x37     ; 0x2c9e
    mov word [bp - 0x0006], 0x8f     ; 0x2ca3
    mov word [bp - 0x0008], 0x108    ; 0x2ca8
    mov word [bp - 0x000a], 0xc5     ; 0x2cad
    mov word [bp - 0x0012], 0x16     ; 0x2cb2
    mov ax, 3                        ; 0x2cb7
    cmp word [bp + 0xc], byte 3      ; 0x2cba
    jge short @..api_idx_0038.l1     ; 0x2cbe
    mov ax, word [bp + 0xc]          ; 0x2cc0
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax       ; 0x2cc3
    mov ax, 0x90c5                   ; 0x2cc6
    push ax                          ; 0x2cc9
    mov ax, word [bp - 0x000a]       ; 0x2cca
    inc ax                           ; 0x2ccd
    push ax                          ; 0x2cce
    mov ax, word [bp - 0x0008]       ; 0x2ccf
    inc ax                           ; 0x2cd2
    push ax                          ; 0x2cd3
    mov ax, word [bp - 0x0006]       ; 0x2cd4
    dec ax                           ; 0x2cd7
    push ax                          ; 0x2cd8
    mov ax, word [bp - 0x0004]       ; 0x2cd9
    dec ax                           ; 0x2cdc
    push ax                          ; 0x2cdd
    call ds_dispatch_c283            ; 0x2cde
    add sp, byte 0x0a                ; 0x2ce1
    mov word [bp - 0x0038], ax       ; 0x2ce4
    push word [bp - 0x000a]          ; 0x2ce7
    push word [bp - 0x0008]          ; 0x2cea
    push word [bp - 0x0006]          ; 0x2ced
    push word [bp - 0x0004]          ; 0x2cf0
    call ds_dispatch_bc9a            ; 0x2cf3
    add sp, byte 8                   ; 0x2cf6
    cmp word [bp + 0x6], byte 0      ; 0x2cf9
    je short @..api_idx_0038.l2      ; 0x2cfd
    lea ax, word [bp - 0x0036]       ; 0x2cff
    push ax                          ; 0x2d02
    push word [bp + 0x4]             ; 0x2d03
    call ds_dispatch_b53b            ; 0x2d06
    add sp, byte 4                   ; 0x2d09
    jmp short @..api_idx_0038.l3     ; 0x2d0c
@..api_idx_0038.l2:
    push word [bp + 0xe]             ; 0x2d0e
    lea ax, word [bp - 0x0036]       ; 0x2d11
    push ax                          ; 0x2d14
    call ds_dispatch_f364            ; 0x2d15
    add sp, byte 4                   ; 0x2d18
@..api_idx_0038.l3:
    lea ax, word [bp - 0x0036]       ; 0x2d1b
    push ax                          ; 0x2d1e
    push word [bp + 0x6]             ; 0x2d1f
    mov ax, 1                        ; 0x2d22
    push ax                          ; 0x2d25
    mov ax, 0xc                      ; 0x2d26
    push ax                          ; 0x2d29
    mov ax, word [bp - 0x0006]       ; 0x2d2a
    add ax, strict word 7            ; 0x2d2d
    push ax                          ; 0x2d30
    mov ax, word [bp - 0x0004]       ; 0x2d31
    add ax, strict word 8            ; 0x2d34
    push ax                          ; 0x2d37
    call ds_dispatch_c0c1            ; 0x2d38
    add sp, byte 0x0c                ; 0x2d3b
    lea ax, word [bp - 0x0036]       ; 0x2d3e
    push ax                          ; 0x2d41
    mov ax, word [bp + 0x4]          ; 0x2d42
    inc ax                           ; 0x2d45
    push ax                          ; 0x2d46
    call ds_dispatch_b53b            ; 0x2d47
    add sp, byte 4                   ; 0x2d4a
    lea ax, word [bp - 0x0036]       ; 0x2d4d
    push ax                          ; 0x2d50
    push word [bp + 0x8]             ; 0x2d51
    mov ax, 1                        ; 0x2d54
    push ax                          ; 0x2d57
    mov ax, 0xc                      ; 0x2d58
    push ax                          ; 0x2d5b
    mov ax, word [bp - 0x0006]       ; 0x2d5c
    add ax, strict word 0x17         ; 0x2d5f
    push ax                          ; 0x2d62
    mov ax, word [bp - 0x0004]       ; 0x2d63
    add ax, strict word 8            ; 0x2d66
    push ax                          ; 0x2d69
    call ds_dispatch_c0c1            ; 0x2d6a
    add sp, byte 0x0c                ; 0x2d6d
    lea ax, word [bp - 0x0036]       ; 0x2d70
    push ax                          ; 0x2d73
    mov ax, word [bp + 0x4]          ; 0x2d74
    inc ax                           ; 0x2d77
    inc ax                           ; 0x2d78
    push ax                          ; 0x2d79
    call ds_dispatch_b53b            ; 0x2d7a
    add sp, byte 4                   ; 0x2d7d
    lea ax, word [bp - 0x0036]       ; 0x2d80
    push ax                          ; 0x2d83
    push word [bp + 0xa]             ; 0x2d84
    mov ax, 1                        ; 0x2d87
    push ax                          ; 0x2d8a
    mov ax, 0xc                      ; 0x2d8b
    push ax                          ; 0x2d8e
    mov ax, word [bp - 0x0006]       ; 0x2d8f
    add ax, strict word 0x27         ; 0x2d92
    push ax                          ; 0x2d95
    mov ax, word [bp - 0x0004]       ; 0x2d96
    add ax, strict word 8            ; 0x2d99
    push ax                          ; 0x2d9c
    call ds_dispatch_c0c1            ; 0x2d9d
    add sp, byte 0x0c                ; 0x2da0
    mov word [bp - 0x0016], 0        ; 0x2da3
    mov word [bp - 0x0020], 0xffff   ; 0x2da8
    push word [bp - 0x0022]          ; 0x2dad
    push word [bp - 0x0020]          ; 0x2db0
    push word [bp - 0x0016]          ; 0x2db3
    mov ax, 7                        ; 0x2db6
    push ax                          ; 0x2db9
    mov ax, 0xf                      ; 0x2dba
    push ax                          ; 0x2dbd
    mov ax, word [bp - 0x0006]       ; 0x2dbe
    add ax, strict word 6            ; 0x2dc1
    push ax                          ; 0x2dc4
    mov ax, word [bp - 0x0004]       ; 0x2dc5
    add ax, strict word 0x5d         ; 0x2dc8
    push ax                          ; 0x2dcb
    call math_loc_2c51               ; 0x2dcc
    add sp, byte 0x0e                ; 0x2dcf
    mov word [bp - 0x0010], 0        ; 0x2dd2
    push word [bp - 0x0010]          ; 0x2dd7
    mov ax, 7                        ; 0x2dda
    push ax                          ; 0x2ddd
    mov ax, 8                        ; 0x2dde
    push ax                          ; 0x2de1
    mov ax, word [bp - 0x0006]       ; 0x2de2
    add ax, strict word 6            ; 0x2de5
    push ax                          ; 0x2de8
    mov ax, word [bp - 0x0004]       ; 0x2de9
    add ax, 0xc1                     ; 0x2dec
    push ax                          ; 0x2def
    call ds_dispatch_bfd8            ; 0x2df0
    add sp, byte 0x0a                ; 0x2df3
    mov ax, 0                        ; 0x2df6
    push ax                          ; 0x2df9
    push ax                          ; 0x2dfa
    mov ax, word [bp - 0x0006]       ; 0x2dfb
    add ax, word [bp - 0x0010]       ; 0x2dfe
    add ax, strict word 0x12         ; 0x2e01
    push ax                          ; 0x2e04
    mov ax, word [bp - 0x0004]       ; 0x2e05
    add ax, 0xc9                     ; 0x2e08
    push ax                          ; 0x2e0b
    mov ax, word [bp - 0x0006]       ; 0x2e0c
    add ax, word [bp - 0x0010]       ; 0x2e0f
    add ax, strict word 0xe          ; 0x2e12
    push ax                          ; 0x2e15
    mov ax, word [bp - 0x0004]       ; 0x2e16
    add ax, 0xc1                     ; 0x2e19
    push ax                          ; 0x2e1c
    mov ax, 0                        ; 0x2e1d
    push ax                          ; 0x2e20
    call ds_dispatch_baa6            ; 0x2e21
    add sp, byte 0x0e                ; 0x2e24
    mov ax, 0                        ; 0x2e27
    push ax                          ; 0x2e2a
    mov ax, 9                        ; 0x2e2b
    push ax                          ; 0x2e2e
    mov ax, word [bp - 0x0006]       ; 0x2e2f
    add ax, strict word 0xc          ; 0x2e32
    push ax                          ; 0x2e35
    mov ax, word [bp - 0x0004]       ; 0x2e36
    add ax, 0xc9                     ; 0x2e39
    push ax                          ; 0x2e3c
    mov ax, word [bp - 0x0006]       ; 0x2e3d
    add ax, strict word 6            ; 0x2e40
    push ax                          ; 0x2e43
    mov ax, word [bp - 0x0004]       ; 0x2e44
    add ax, 0xc1                     ; 0x2e47
    push ax                          ; 0x2e4a
    mov ax, 1                        ; 0x2e4b
    push ax                          ; 0x2e4e
    call ds_dispatch_baa6            ; 0x2e4f
    add sp, byte 0x0e                ; 0x2e52
    mov ax, 0                        ; 0x2e55
    push ax                          ; 0x2e58
    mov ax, 0xb                      ; 0x2e59
    push ax                          ; 0x2e5c
    mov ax, word [bp - 0x0006]       ; 0x2e5d
    add ax, strict word 0x30         ; 0x2e60
    push ax                          ; 0x2e63
    mov ax, word [bp - 0x0004]       ; 0x2e64
    add ax, 0xc9                     ; 0x2e67
    push ax                          ; 0x2e6a
    mov ax, word [bp - 0x0006]       ; 0x2e6b
    add ax, strict word 0x2a         ; 0x2e6e
    push ax                          ; 0x2e71
    mov ax, word [bp - 0x0004]       ; 0x2e72
    add ax, 0xc1                     ; 0x2e75
    push ax                          ; 0x2e78
    mov ax, data_0002                ; 0x2e79
    push ax                          ; 0x2e7c
    call ds_dispatch_baa6            ; 0x2e7d
    add sp, byte 0x0e                ; 0x2e80
    mov ax, 0                        ; 0x2e83
    push ax                          ; 0x2e86
    push ax                          ; 0x2e87
    mov ax, word [bp - 0x0006]       ; 0x2e88
    add ax, strict word 0xf          ; 0x2e8b
    push ax                          ; 0x2e8e
    mov ax, word [bp - 0x0004]       ; 0x2e8f
    add ax, strict word 0x50         ; 0x2e92
    push ax                          ; 0x2e95
    mov ax, word [bp - 0x0006]       ; 0x2e96
    add ax, strict word 7            ; 0x2e99
    push ax                          ; 0x2e9c
    mov ax, word [bp - 0x0004]       ; 0x2e9d
    add ax, strict word 8            ; 0x2ea0
    push ax                          ; 0x2ea3
    mov ax, 3                        ; 0x2ea4
    push ax                          ; 0x2ea7
    call ds_dispatch_baa6            ; 0x2ea8
    add sp, byte 0x0e                ; 0x2eab
    mov ax, 0xd                      ; 0x2eae
    push ax                          ; 0x2eb1
    mov ax, 0x55                     ; 0x2eb2
    push ax                          ; 0x2eb5
    mov ax, word [bp - 0x0006]       ; 0x2eb6
    add ax, strict word 0x1f         ; 0x2eb9
    push ax                          ; 0x2ebc
    mov ax, word [bp - 0x0004]       ; 0x2ebd
    add ax, strict word 0x50         ; 0x2ec0
    push ax                          ; 0x2ec3
    mov ax, word [bp - 0x0006]       ; 0x2ec4
    add ax, strict word 0x17         ; 0x2ec7
    push ax                          ; 0x2eca
    mov ax, word [bp - 0x0004]       ; 0x2ecb
    add ax, strict word 8            ; 0x2ece
    push ax                          ; 0x2ed1
    mov ax, 4                        ; 0x2ed2
    push ax                          ; 0x2ed5
    call ds_dispatch_baa6            ; 0x2ed6
    add sp, byte 0x0e                ; 0x2ed9
    mov ax, 0                        ; 0x2edc
    push ax                          ; 0x2edf
    mov ax, 0x1b                     ; 0x2ee0
    push ax                          ; 0x2ee3
    mov ax, word [bp - 0x0006]       ; 0x2ee4
    add ax, strict word 0x2f         ; 0x2ee7
    push ax                          ; 0x2eea
    mov ax, word [bp - 0x0004]       ; 0x2eeb
    add ax, strict word 0x50         ; 0x2eee
    push ax                          ; 0x2ef1
    mov ax, word [bp - 0x0006]       ; 0x2ef2
    add ax, strict word 0x27         ; 0x2ef5
    push ax                          ; 0x2ef8
    mov ax, word [bp - 0x0004]       ; 0x2ef9
    add ax, strict word 8            ; 0x2efc
    push ax                          ; 0x2eff
    mov ax, 5                        ; 0x2f00
    push ax                          ; 0x2f03
    call ds_dispatch_baa6            ; 0x2f04
    add sp, byte 0x0e                ; 0x2f07
    mov ax, 3                        ; 0x2f0a
    cmp word [bp + 0xc], byte 3      ; 0x2f0d
    jge short @..local.l145          ; 0x2f11
    mov ax, word [bp + 0xc]          ; 0x2f13
@..local.l145:
    mov word [bp - 0x001e], ax       ; 0x2f16
    mov word [bp - 0x0002], 0        ; 0x2f19
    jmp short @..local.l147          ; 0x2f1e
@..local.l146:
    mov ax, 0                        ; 0x2f20
    push ax                          ; 0x2f23
    push ax                          ; 0x2f24
    mov ax, 0xe                      ; 0x2f25
    imul word [bp - 0x0002]          ; 0x2f28
    add ax, word [bp - 0x0006]       ; 0x2f2b
    add ax, strict word 0x13         ; 0x2f2e
    push ax                          ; 0x2f31
    mov ax, word [bp - 0x0004]       ; 0x2f32
    add ax, 0xb9                     ; 0x2f35
    push ax                          ; 0x2f38
    mov ax, 0xe                      ; 0x2f39
    imul word [bp - 0x0002]          ; 0x2f3c
    add ax, word [bp - 0x0006]       ; 0x2f3f
    add ax, strict word 7            ; 0x2f42
    push ax                          ; 0x2f45
    mov ax, word [bp - 0x0004]       ; 0x2f46
    add ax, strict word 0x5d         ; 0x2f49
    push ax                          ; 0x2f4c
    mov ax, word [bp - 0x0002]       ; 0x2f4d
    add ax, strict word 6            ; 0x2f50
    push ax                          ; 0x2f53
    call ds_dispatch_baa6            ; 0x2f54
    add sp, byte 0x0e                ; 0x2f57
    inc word [bp - 0x0002]           ; 0x2f5a
@..local.l147:
    mov ax, word [bp - 0x0002]       ; 0x2f5d
    cmp ax, word [bp - 0x001e]       ; 0x2f60
    jl short @..local.l146           ; 0x2f63
    mov ax, 0                        ; 0x2f65
    push ax                          ; 0x2f68
    push ax                          ; 0x2f69
    push ax                          ; 0x2f6a
    push ax                          ; 0x2f6b
    push ax                          ; 0x2f6c
    mov ax, 0xffff                   ; 0x2f6d
    push ax                          ; 0x2f70
    mov ax, word [bp - 0x001e]       ; 0x2f71
    add ax, strict word 6            ; 0x2f74
    push ax                          ; 0x2f77
    call ds_dispatch_baa6            ; 0x2f78
    add sp, byte 0x0e                ; 0x2f7b
    mov ax, 0xc6                     ; 0x2f7e
    push ax                          ; 0x2f81
    mov ax, 0x139                    ; 0x2f82
    push ax                          ; 0x2f85
    mov ax, 0x8e                     ; 0x2f86
    push ax                          ; 0x2f89
    mov ax, 9                        ; 0x2f8a
    push ax                          ; 0x2f8d
    call ds_dispatch_e8da            ; 0x2f8e
    add sp, byte 8                   ; 0x2f91
    mov word [bp - 0x001a], 1        ; 0x2f94
@..local.l148:
    mov ax, 0x59fe                   ; 0x2f99
    push ax                          ; 0x2f9c
    call ds_dispatch_b90d            ; 0x2f9d
    pop cx                           ; 0x2fa0
    dec ax                           ; 0x2fa1
    mov word [bp - 0x0018], ax       ; 0x2fa2
    cmp word [data_59fc], byte 0     ; 0x2fa5
    je short @..local.l152           ; 0x2faa
    mov ax, word [bp - 0x0020]       ; 0x2fac
    cmp ax, word [bp - 0x0016]       ; 0x2faf
    jl short @..local.l149           ; 0x2fb2
    inc word [bp - 0x0020]           ; 0x2fb4
@..local.l149:
    mov ax, word [bp - 0x0020]       ; 0x2fb7
    cmp ax, strict word 0xffff       ; 0x2fba
    je short @..local.l150           ; 0x2fbd
    cmp ax, word [bp - 0x0016]       ; 0x2fbf
    jl short @..local.l150           ; 0x2fc2
    mov ax, word [bp - 0x0016]       ; 0x2fc4
    add ax, word [bp - 0x001e]       ; 0x2fc7
    mov cx, ax                       ; 0x2fca
    dec ax                           ; 0x2fcc
    mov cx, ax                       ; 0x2fcd
    mov ax, word [bp - 0x0020]       ; 0x2fcf
    cmp cx, ax                       ; 0x2fd2
    jge short @..local.l151          ; 0x2fd4
@..local.l150:
    mov ax, word [bp - 0x0016]       ; 0x2fd6
    mov word [bp - 0x0020], ax       ; 0x2fd9
@..local.l151:
    mov word [data_5b3e], 1          ; 0x2fdc
    mov ax, word [bp - 0x0020]       ; 0x2fe2
    sub ax, word [bp - 0x0016]       ; 0x2fe5
    add ax, strict word 6            ; 0x2fe8
    mov word [bp - 0x0018], ax       ; 0x2feb
@..local.l152:
    cmp word [data_5b3e], byte 1     ; 0x2fee
    je short @..local.l153           ; 0x2ff3
    jmp near @..local.l157           ; 0x2ff5
@..local.l153:
    mov ax, word [bp - 0x0018]       ; 0x2ff8
    jmp near @..local.l155           ; 0x2ffb

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x4a, 0xc0, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x9c, 0x87, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x1c, 0xc0, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0x6c, 0x87, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x1f, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d
    db 0x00, 0x50, 0xe8, 0xae, 0xfb, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00
    db 0x50, 0xe8, 0x16, 0x8f, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03
    db 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0xb3, 0x89, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xc5, 0xb7, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x03
    db 0xe9, 0x0b, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x6b, 0x8d, 0x83
    db 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x3a, 0x8d
    db 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x03, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49
    db 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8
    db 0x07, 0x86, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76
    db 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x6e, 0xfa, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xd6, 0x8d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x73, 0x88, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa
    db 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x85, 0xb6, 0x83, 0xc4, 0x08, 0xe9
    db 0x60, 0x01, 0x83, 0x7e, 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0xe4, 0x8b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0xc4, 0x8b, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00
    db 0xe9, 0x0f, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0x93, 0x8b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0x73, 0x8b, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00
    db 0x00, 0xe9, 0xbe, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0x42, 0x8b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0x22, 0x8b, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6
    db 0x00, 0x00, 0xeb, 0x6e

@..local.l154:
    mov ax, word [bp - 0x0016]       ; 0x334d
    add ax, word [bp - 0x0018]       ; 0x3350
    add ax, strict word 0xfffa       ; 0x3353
    mov word [bp - 0x0020], ax       ; 0x3356
    push word [bp - 0x0022]          ; 0x3359
    push ax                          ; 0x335c
    push word [bp - 0x0016]          ; 0x335d
    mov ax, 7                        ; 0x3360
    push ax                          ; 0x3363
    mov ax, 0xf                      ; 0x3364
    push ax                          ; 0x3367
    mov ax, word [bp - 0x0006]       ; 0x3368
    add ax, strict word 6            ; 0x336b
    push ax                          ; 0x336e
    mov ax, word [bp - 0x0004]       ; 0x336f
    add ax, strict word 0x5d         ; 0x3372
    push ax                          ; 0x3375
    call math_loc_2c51               ; 0x3376
    add sp, byte 0x0e                ; 0x3379
    mov ax, word [bp - 0x0006]       ; 0x337c
    add ax, strict word 0x30         ; 0x337f
    push ax                          ; 0x3382
    mov ax, word [bp - 0x0004]       ; 0x3383
    add ax, 0xb9                     ; 0x3386
    push ax                          ; 0x3389
    mov ax, word [bp - 0x0006]       ; 0x338a
    add ax, strict word 6            ; 0x338d
    push ax                          ; 0x3390
    mov ax, word [bp - 0x0004]       ; 0x3391
    add ax, strict word 0x5d         ; 0x3394
    push ax                          ; 0x3397
    call ds_dispatch_e8da            ; 0x3398
    add sp, byte 8                   ; 0x339b
    jmp short @..local.l157          ; 0x339e
    db 0x45, 0x80, 0x6b, 0x81, 0x6b, 0x81, 0xa2, 0x82, 0xf3, 0x82, 0x44, 0x83
@..local.l155:
    cmp ax, strict word 6            ; 0x33ac
    jae short @..local.l156          ; 0x33af
    xchg bx, ax                      ; 0x33b1
    shl bx, 1                        ; 0x33b2
    jmp [cs:bx - 0x7c19]             ; 0x33b4
@..local.l156:
    jmp short @..local.l154          ; 0x33b9
@..local.l157:
    cmp word [bp - 0x001a], byte 0   ; 0x33bb
    je short @..local.l158           ; 0x33bf
    jmp near @..local.l148           ; 0x33c1
@..local.l158:
    mov ax, 1                        ; 0x33c4
    push ax                          ; 0x33c7
    push word [bp - 0x0038]          ; 0x33c8
    call ds_dispatch_c459            ; 0x33cb
    add sp, byte 4                   ; 0x33ce
    mov ax, word [bp - 0x0020]       ; 0x33d1
    mov word [data_904e], ax         ; 0x33d4
    mov ax, word [data_9050]         ; 0x33d7
    ret                              ; 0x33da
api_idx_0094:
    mov ax, 0xff6c                   ; 0x33db
    call ds_dispatch_f40b            ; 0x33de
    mov word [bp - 0x006a], 0        ; 0x33e1
    mov word [bp - 0x004e], 0        ; 0x33e6
@..api_idx_0094.l1:
    mov word [bp - 0x0050], 0        ; 0x33eb
@..api_idx_0094.l2:
    mov ax, 0x248                    ; 0x33f0
    imul word [bp + 0x4]             ; 0x33f3
    push ax                          ; 0x33f6
    mov ax, 0x78                     ; 0x33f7
    imul word [bp - 0x004e]          ; 0x33fa
    mov cx, ax                       ; 0x33fd
    pop ax                           ; 0x33ff
    add ax, cx                       ; 0x3400
    push ax                          ; 0x3402
    mov ax, 0xc                      ; 0x3403
    imul word [bp - 0x0050]          ; 0x3406
    mov cx, ax                       ; 0x3409
    pop ax                           ; 0x340b
    add ax, cx                       ; 0x340c
    mov bx, ax                       ; 0x340e
    cmp word [bx + 0x5c34], byte 0   ; 0x3410
    jg short @..api_idx_0094.l3      ; 0x3415
    jmp near @..api_idx_0094.l8      ; 0x3417
@..api_idx_0094.l3:
    mov ax, 0                        ; 0x341a
    push ax                          ; 0x341d
    push word [bx + 0x5c34]          ; 0x341e
    lea ax, word [bp - 0x004a]       ; 0x3422
    push ax                          ; 0x3425
    mov ax, 1                        ; 0x3426
    push ax                          ; 0x3429
    call ds_dispatch_b63c            ; 0x342a
    add sp, byte 8                   ; 0x342d
    mov ax, 0x248                    ; 0x3430
    imul word [bp + 0x4]             ; 0x3433
    push ax                          ; 0x3436
    mov ax, 0x78                     ; 0x3437
    imul word [bp - 0x004e]          ; 0x343a
    mov cx, ax                       ; 0x343d
    pop ax                           ; 0x343f
    add ax, cx                       ; 0x3440
    push ax                          ; 0x3442
    mov ax, 0xc                      ; 0x3443
    imul word [bp - 0x0050]          ; 0x3446
    mov cx, ax                       ; 0x3449
    pop ax                           ; 0x344b
    add ax, cx                       ; 0x344c
    mov bx, ax                       ; 0x344e
    mov al, byte [bx + 0x5c3b]       ; 0x3450
    sub ah, ah                       ; 0x3454
    test ax, 0x80                    ; 0x3456
    je short @..api_idx_0094.l4      ; 0x3459
    lea ax, word [bp - 0x004a]       ; 0x345b
    push ax                          ; 0x345e
    mov ax, 0x16                     ; 0x345f
    imul word [bp - 0x006a]          ; 0x3462
    add ax, 0x91a6                   ; 0x3465
    push ax                          ; 0x3468
    call ds_dispatch_f364            ; 0x3469
    add sp, byte 4                   ; 0x346c
    jmp short @..api_idx_0094.l5     ; 0x346f
@..api_idx_0094.l4:
    mov ax, 0x16                     ; 0x3471
    imul word [bp - 0x006a]          ; 0x3474
    add ax, 0x91a6                   ; 0x3477
    push ax                          ; 0x347a
    mov ax, 0x248                    ; 0x347b
    imul word [bp + 0x4]             ; 0x347e
    push ax                          ; 0x3481
    mov ax, 0x78                     ; 0x3482
    imul word [bp - 0x004e]          ; 0x3485
    mov cx, ax                       ; 0x3488
    pop ax                           ; 0x348a
    add ax, cx                       ; 0x348b
    push ax                          ; 0x348d
    mov ax, 0xc                      ; 0x348e
    imul word [bp - 0x0050]          ; 0x3491
    mov cx, ax                       ; 0x3494
    pop ax                           ; 0x3496
    add ax, cx                       ; 0x3497
    mov bx, ax                       ; 0x3499
    mov al, byte [bx + 0x5c39]       ; 0x349b
    sub ah, ah                       ; 0x349f
    add ax, 0x1770                   ; 0x34a1
    push ax                          ; 0x34a4
    call ds_dispatch_b53b            ; 0x34a5
    add sp, byte 4                   ; 0x34a8
@..api_idx_0094.l5:
    mov al, byte [bp - 0x0011]       ; 0x34ab
    sub ah, ah                       ; 0x34ae
    mov cx, word [bp - 0x006a]       ; 0x34b0
    shl cx, 1                        ; 0x34b3
    mov bx, cx                       ; 0x34b5
    mov word [bx - 0x6e82], ax       ; 0x34b7
    mov ax, word [bp - 0x004e]       ; 0x34bb
    mov word [bx - 0x6eaa], ax       ; 0x34be
    mov ax, 0x248                    ; 0x34c2
    imul word [bp + 0x4]             ; 0x34c5
    push ax                          ; 0x34c8
    mov ax, 0x78                     ; 0x34c9
    imul word [bp - 0x004e]          ; 0x34cc
    mov cx, ax                       ; 0x34cf
    pop ax                           ; 0x34d1
    add ax, cx                       ; 0x34d2
    push ax                          ; 0x34d4
    mov ax, 0xc                      ; 0x34d5
    imul word [bp - 0x0050]          ; 0x34d8
    mov cx, ax                       ; 0x34db
    pop ax                           ; 0x34dd
    add ax, cx                       ; 0x34de
    mov bx, ax                       ; 0x34e0
    mov al, byte [bx + 0x5c38]       ; 0x34e2
    sub ah, ah                       ; 0x34e6
    mov bx, ax                       ; 0x34e8
    cmp byte [bx + 0x60e], 1         ; 0x34ea
    jne short @..api_idx_0094.l6     ; 0x34ef
    mov ax, 0x248                    ; 0x34f1
    imul word [bp + 0x4]             ; 0x34f4
    push ax                          ; 0x34f7
    mov ax, 0x78                     ; 0x34f8
    imul word [bp - 0x004e]          ; 0x34fb
    mov cx, ax                       ; 0x34fe
    pop ax                           ; 0x3500
    add ax, cx                       ; 0x3501
    push ax                          ; 0x3503
    mov ax, 0xc                      ; 0x3504
    imul word [bp - 0x0050]          ; 0x3507
    mov cx, ax                       ; 0x350a
    pop ax                           ; 0x350c
    add ax, cx                       ; 0x350d
    mov bx, ax                       ; 0x350f
    mov al, byte [bx + 0x5c3a]       ; 0x3511
    sub ah, ah                       ; 0x3515
    mov cx, word [bp - 0x006a]       ; 0x3517
    shl cx, 1                        ; 0x351a
    mov bx, cx                       ; 0x351c
    mov word [bx - 0x6ca2], ax       ; 0x351e
    jmp short @..api_idx_0094.l7     ; 0x3522
@..api_idx_0094.l6:
    mov ax, word [bp - 0x006a]       ; 0x3524
    shl ax, 1                        ; 0x3527
    mov bx, ax                       ; 0x3529
    mov word [bx - 0x6ca2], 0        ; 0x352b
@..api_idx_0094.l7:
    mov ax, word [bp - 0x004e]       ; 0x3531
    xchg al, ah                      ; 0x3534
    sub al, al                       ; 0x3536
    add ax, word [bp - 0x0050]       ; 0x3538
    mov cx, word [bp - 0x006a]       ; 0x353b
    shl cx, 1                        ; 0x353e
    mov bx, cx                       ; 0x3540
    add bx, bp                       ; 0x3542
    mov word [bx - 0x0092], ax       ; 0x3544
    inc word [bp - 0x006a]           ; 0x3548
@..api_idx_0094.l8:
    inc word [bp - 0x0050]           ; 0x354b
    mov ax, word [bp - 0x0050]       ; 0x354e
    cmp ax, strict word 0xa          ; 0x3551
    jge short @..api_idx_0094.l9     ; 0x3554
    jmp near @..api_idx_0094.l2      ; 0x3556
@..api_idx_0094.l9:
    inc word [bp - 0x004e]           ; 0x3559
    mov ax, word [bp - 0x004e]       ; 0x355c
    cmp ax, strict word 2            ; 0x355f
    jge short @..api_idx_0094.l10    ; 0x3562
    jmp near @..api_idx_0094.l1      ; 0x3564
@..api_idx_0094.l10:
    cmp word [bp - 0x006a], byte 0   ; 0x3567
    jne short @..local.l159          ; 0x356b
    mov ax, 0xffff                   ; 0x356d
    ret                              ; 0x3570
@..local.l159:
    call loc_108d                    ; 0x3571
    mov ax, 0x248                    ; 0x3574
    imul word [bp + 0x4]             ; 0x3577
    add ax, 0x5bf4                   ; 0x357a
    push ax                          ; 0x357d
    push word [bp - 0x006a]          ; 0x357e
    mov ax, 1                        ; 0x3581
    push ax                          ; 0x3584
    push ax                          ; 0x3585
    mov ax, 0                        ; 0x3586
    push ax                          ; 0x3589
    mov ax, 0xbd6                    ; 0x358a
    push ax                          ; 0x358d
    call api_idx_0038                ; 0x358e
    add sp, byte 0x0c                ; 0x3591
    mov word [bp - 0x004c], ax       ; 0x3594
    mov ax, word [data_904e]         ; 0x3597
    mov word [bp - 0x0002], ax       ; 0x359a
    cmp word [bp - 0x004c], byte 1   ; 0x359d
    jne short @..local.l160          ; 0x35a1
    cmp ax, strict word 0xffff       ; 0x35a3
    jne short @..local.l161          ; 0x35a6
@..local.l160:
    mov ax, 0xc6                     ; 0x35a8
    push ax                          ; 0x35ab
    mov ax, 0x109                    ; 0x35ac
    push ax                          ; 0x35af
    mov ax, 0x8e                     ; 0x35b0
    push ax                          ; 0x35b3
    mov ax, 0x36                     ; 0x35b4
    push ax                          ; 0x35b7
    call ds_dispatch_e8da            ; 0x35b8
    add sp, byte 8                   ; 0x35bb
    mov ax, 0xffff                   ; 0x35be
    ret                              ; 0x35c1
@..local.l161:
    mov ax, word [bp - 0x0002]       ; 0x35c2
    shl ax, 1                        ; 0x35c5
    mov bx, ax                       ; 0x35c7
    add bx, bp                       ; 0x35c9
    mov ax, word [bx - 0x0092]       ; 0x35cb
    mov cx, 0x100                    ; 0x35cf
    cwd                              ; 0x35d2
    idiv cx                          ; 0x35d3
    mov word [bp - 0x004e], ax       ; 0x35d5
    mov word [bp - 0x0050], dx       ; 0x35d8
    mov ax, 0x10                     ; 0x35db
    push ax                          ; 0x35de
    mov ax, 0xc                      ; 0x35df
    push ax                          ; 0x35e2
    mov ax, 0x96                     ; 0x35e3
    push ax                          ; 0x35e6
    mov ax, 0x3f                     ; 0x35e7
    push ax                          ; 0x35ea
    push word [bp - 0x004c]          ; 0x35eb
    mov ax, word [bp - 0x004c]       ; 0x35ee
    add ax, 0xbd6                    ; 0x35f1
    push ax                          ; 0x35f4
    call api_idx_0018                ; 0x35f5
    add sp, byte 0x0c                ; 0x35f8
    mov ax, 0                        ; 0x35fb
    push ax                          ; 0x35fe
    mov ax, 0x248                    ; 0x35ff
    imul word [bp + 0x4]             ; 0x3602
    push ax                          ; 0x3605
    mov ax, 0x78                     ; 0x3606
    imul word [bp - 0x004e]          ; 0x3609
    mov cx, ax                       ; 0x360c
    pop ax                           ; 0x360e
    add ax, cx                       ; 0x360f
    push ax                          ; 0x3611
    mov ax, 0xc                      ; 0x3612
    imul word [bp - 0x0050]          ; 0x3615
    mov cx, ax                       ; 0x3618
    pop ax                           ; 0x361a
    add ax, cx                       ; 0x361b
    mov bx, ax                       ; 0x361d
    push word [bx + 0x5c34]          ; 0x361f
    lea ax, word [bp - 0x004a]       ; 0x3623
    push ax                          ; 0x3626
    mov ax, 1                        ; 0x3627
    push ax                          ; 0x362a
    call ds_dispatch_b63c            ; 0x362b
    add sp, byte 8                   ; 0x362e
    cmp word [bp - 0x0028], byte 0   ; 0x3631
    je short @..local.l163           ; 0x3635
    mov ax, word [bp - 0x0028]       ; 0x3637
    mov cx, 0x100                    ; 0x363a
    cwd                              ; 0x363d
    idiv cx                          ; 0x363e
    mov word [bp - 0x0054], ax       ; 0x3640
    mov word [bp - 0x0052], dx       ; 0x3643
    mov ax, 6                        ; 0x3646
    imul dx                          ; 0x3649
    mov bx, ax                       ; 0x364b
    cmp byte [bx + 0x624], 1         ; 0x364d
    jne short @..local.l163          ; 0x3652
    call ds_dispatch_ceb1            ; 0x3654
    mov word [bp - 0x0094], ax       ; 0x3657
    cmp ax, strict word 0xffff       ; 0x365b
    jne short @..local.l162          ; 0x365e
    mov ax, 0xc6                     ; 0x3660
    push ax                          ; 0x3663
    mov ax, 0x109                    ; 0x3664
    push ax                          ; 0x3667
    mov ax, 0x8e                     ; 0x3668
    push ax                          ; 0x366b
    mov ax, 0x36                     ; 0x366c
    push ax                          ; 0x366f
    call ds_dispatch_e8da            ; 0x3670
    add sp, byte 8                   ; 0x3673
    mov ax, 0xffff                   ; 0x3676
    ret                              ; 0x3679
@..local.l162:
    mov ax, 0x2c                     ; 0x367a
    imul word [bp + 0x4]             ; 0x367d
    mov si, ax                       ; 0x3680
    mov bx, word [data_8482]         ; 0x3682
    mov byte [bx + si + 0x1f], 0     ; 0x3686
    mov al, byte [bp - 0x0094]       ; 0x368a
    push ax                          ; 0x368e
    mov ax, 0x2c                     ; 0x368f
    imul word [bp + 0x4]             ; 0x3692
    mov si, ax                       ; 0x3695
    mov bx, word [data_8482]         ; 0x3697
    pop ax                           ; 0x369b
    mov byte [bx + si + 0x20], al    ; 0x369c
@..local.l163:
    mov ax, 0xc6                     ; 0x369f
    push ax                          ; 0x36a2
    mov ax, 0x109                    ; 0x36a3
    push ax                          ; 0x36a6
    mov ax, 0x8e                     ; 0x36a7
    push ax                          ; 0x36aa
    mov ax, 0x36                     ; 0x36ab
    push ax                          ; 0x36ae
    call ds_dispatch_e8da            ; 0x36af
    add sp, byte 8                   ; 0x36b2
    mov ax, word [bp - 0x004e]       ; 0x36b5
    xchg al, ah                      ; 0x36b8
    sub al, al                       ; 0x36ba
    add ax, word [bp - 0x0050]       ; 0x36bc
    ret                              ; 0x36bf
api_idx_0006_3:
    mov ax, 0xfffa                   ; 0x36c0
    call ds_dispatch_f40b            ; 0x36c3
    mov word [bp - 0x0002], 0xffff   ; 0x36c6
    mov word [bp - 0x0006], 0        ; 0x36cb
    mov ax, 8                        ; 0x36d0
    push ax                          ; 0x36d3
    call ds_dispatch_b7a9            ; 0x36d4
    pop cx                           ; 0x36d7
    inc ax                           ; 0x36d8
    mov word [bp - 0x0004], ax       ; 0x36d9
@..api_idx_0006_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x36dc
    inc ax                           ; 0x36df
    mov cx, 8                        ; 0x36e0
    cwd                              ; 0x36e3
    idiv cx                          ; 0x36e4
    mov word [bp - 0x0002], dx       ; 0x36e6
    push dx                          ; 0x36e9
    push word [bp + 0x4]             ; 0x36ea
    call ds_dispatch_ec74            ; 0x36ed
    add sp, byte 4                   ; 0x36f0
    cmp ax, strict word 1            ; 0x36f3
    jne short @..api_idx_0006_3.l2   ; 0x36f6
    dec word [bp - 0x0004]           ; 0x36f8
    jmp short @..api_idx_0006_3.l3   ; 0x36fb
@..api_idx_0006_3.l2:
    inc word [bp - 0x0006]           ; 0x36fd
@..api_idx_0006_3.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x3700
    jle short @..api_idx_0006_3.l4   ; 0x3704
    cmp word [bp - 0x0006], byte 0x64 ; 0x3706
    jl short @..api_idx_0006_3.l1    ; 0x370a
@..api_idx_0006_3.l4:
    mov ax, word [bp - 0x0002]       ; 0x370c
    ret                              ; 0x370f
api_idx_00d4:
    mov ax, 0xff2c                   ; 0x3710
    call ds_dispatch_f40b            ; 0x3713
    lea ax, word [bp - 0x00d4]       ; 0x3716
    push ax                          ; 0x371a
    mov ax, 0xdaf                    ; 0x371b
    push ax                          ; 0x371e
    call ds_dispatch_b53b            ; 0x371f
    add sp, byte 4                   ; 0x3722
    mov word [bp - 0x0006], 0        ; 0x3725
    jmp near @..api_idx_00d4.l11     ; 0x372a
@..api_idx_00d4.l1:
    mov ax, 0x2c                     ; 0x372d
    imul word [bp - 0x0006]          ; 0x3730
    mov cx, ax                       ; 0x3733
    mov ax, word [data_8482]         ; 0x3735
    add ax, cx                       ; 0x3738
    mov word [bp - 0x00aa], ax       ; 0x373a
    mov ax, 0xa                      ; 0x373e
    push ax                          ; 0x3741
    call ds_dispatch_b7a9            ; 0x3742
    pop cx                           ; 0x3745
    push ax                          ; 0x3746
    mov ax, 0x248                    ; 0x3747
    imul word [bp - 0x0006]          ; 0x374a
    mov bx, ax                       ; 0x374d
    mov al, byte [bx + 0x5e39]       ; 0x374f
    sub ah, ah                       ; 0x3753
    mov cx, ax                       ; 0x3755
    pop ax                           ; 0x3757
    add ax, cx                       ; 0x3758
    push ax                          ; 0x375a
    mov ax, 0x2c                     ; 0x375b
    imul word [bp - 0x0006]          ; 0x375e
    mov si, ax                       ; 0x3761
    mov bx, word [data_8482]         ; 0x3763
    mov al, byte [bx + si + 0x29]    ; 0x3767
    cbw                              ; 0x376a
    mov cx, ax                       ; 0x376b
    pop ax                           ; 0x376d
    add ax, cx                       ; 0x376e
    mov word [bp - 0x00a4], ax       ; 0x3770
    cmp ax, strict word 1            ; 0x3774
    jge short @..api_idx_00d4.l2     ; 0x3777
    mov word [bp - 0x00a4], 1        ; 0x3779
@..api_idx_00d4.l2:
    cmp word [bp - 0x00a4], byte 0x64 ; 0x377f
    jle short @..api_idx_00d4.l3     ; 0x3784
    mov word [bp - 0x00a4], 0x64     ; 0x3786
@..api_idx_00d4.l3:
    mov ax, 0x248                    ; 0x378c
    imul word [bp - 0x0006]          ; 0x378f
    mov bx, ax                       ; 0x3792
    mov al, byte [bx + 0x5e38]       ; 0x3794
    sub ah, ah                       ; 0x3798
    mov cx, ax                       ; 0x379a
    mov ax, word [bp - 0x00a4]       ; 0x379c
    cwd                              ; 0x37a0
    idiv cx                          ; 0x37a1
    mov word [bp - 0x00a6], ax       ; 0x37a3
    mov bx, word [bp - 0x00aa]       ; 0x37a7
    cmp byte [bx + 0x24], 0          ; 0x37ab
    jbe short @..api_idx_00d4.l4     ; 0x37af
    mov ax, word [bp - 0x00a4]       ; 0x37b1
    mov cx, data_0002                ; 0x37b5
    cwd                              ; 0x37b8
    idiv cx                          ; 0x37b9
    push ax                          ; 0x37bb
    call ds_dispatch_b7a9            ; 0x37bc
    pop cx                           ; 0x37bf
    push ax                          ; 0x37c0
    mov ax, 0x14                     ; 0x37c1
    push ax                          ; 0x37c4
    call ds_dispatch_b7a9            ; 0x37c5
    pop cx                           ; 0x37c8
    mov cx, ax                       ; 0x37c9
    pop ax                           ; 0x37cb
    add ax, cx                       ; 0x37cc
    push ax                          ; 0x37ce
    mov ax, word [bp - 0x00a4]       ; 0x37cf
    mov cx, data_0002                ; 0x37d3
    cwd                              ; 0x37d6
    idiv cx                          ; 0x37d7
    mov cx, ax                       ; 0x37d9
    pop ax                           ; 0x37db
    add ax, cx                       ; 0x37dc
    mov bx, word [bp - 0x00aa]       ; 0x37de
    mov byte [bx + 0x25], al         ; 0x37e2
@..api_idx_00d4.l4:
    mov bx, word [bp - 0x00aa]       ; 0x37e5
    mov byte [bx + 0x21], 0          ; 0x37e9
    mov bx, word [bp - 0x00aa]       ; 0x37ed
    mov byte [bx + 0x1c], 0          ; 0x37f1
    mov bx, word [bp - 0x00aa]       ; 0x37f5
    mov byte [bx + 0x1d], 1          ; 0x37f9
    mov ax, 0x248                    ; 0x37fd
    imul word [bp - 0x0006]          ; 0x3800
    mov bx, ax                       ; 0x3803
    mov al, byte [bx + 0x5e38]       ; 0x3805
    sub ah, ah                       ; 0x3809
    push ax                          ; 0x380b
    mov ax, 0x2c                     ; 0x380c
    imul word [bp - 0x0006]          ; 0x380f
    mov si, ax                       ; 0x3812
    mov bx, word [data_8482]         ; 0x3814
    mov al, byte [bx + si + 0x29]    ; 0x3818
    cbw                              ; 0x381b
    mov cx, 0xa                      ; 0x381c
    cwd                              ; 0x381f
    idiv cx                          ; 0x3820
    mov cx, ax                       ; 0x3822
    pop ax                           ; 0x3824
    add ax, cx                       ; 0x3825
    mov word [bp - 0x00a8], ax       ; 0x3827
    cmp ax, strict word 1            ; 0x382b
    jge short @..api_idx_00d4.l5     ; 0x382e
    mov word [bp - 0x00a8], 1        ; 0x3830
@..api_idx_00d4.l5:
    cmp word [bp - 0x00a8], byte 4   ; 0x3836
    jle short @..api_idx_00d4.l6     ; 0x383b
    mov word [bp - 0x00a8], 4        ; 0x383d
@..api_idx_00d4.l6:
    mov word [bp - 0x00a2], 0        ; 0x3843
@..api_idx_00d4.l7:
    mov ax, word [bp - 0x00a2]       ; 0x3849
    cmp ax, word [bp - 0x00a8]       ; 0x384d
    jge short @..api_idx_00d4.l8     ; 0x3851
    mov ax, 0x248                    ; 0x3853
    imul word [bp - 0x0006]          ; 0x3856
    mov bx, ax                       ; 0x3859
    cmp byte [bx + 0x5e2f], data_0002 ; 0x385b
    jae short @..api_idx_00d4.l8     ; 0x3860
    cmp byte [bx + 0x5d5d], 0        ; 0x3862
    ja short @..api_idx_00d4.l8      ; 0x3867
    cmp byte [bx + 0x5d5c], 0        ; 0x3869
    jbe short @..api_idx_00d4.l9     ; 0x386e
@..api_idx_00d4.l8:
    mov bx, word [bp - 0x00aa]       ; 0x3870
    mov si, word [bp - 0x00a2]       ; 0x3874
    mov byte [bx + si + 0x18], 0     ; 0x3878
    jmp short @..api_idx_00d4.l10    ; 0x387c
@..api_idx_00d4.l9:
    mov al, byte [bp - 0x00a4]       ; 0x387e
    mov bx, word [bp - 0x00aa]       ; 0x3882
    mov si, word [bp - 0x00a2]       ; 0x3886
    mov byte [bx + si + 0x18], al    ; 0x388a
    mov ax, word [bp - 0x00a6]       ; 0x388d
    sub word [bp - 0x00a4], ax       ; 0x3891
@..api_idx_00d4.l10:
    inc word [bp - 0x00a2]           ; 0x3895
    mov ax, word [bp - 0x00a2]       ; 0x3899
    cmp ax, strict word 4            ; 0x389d
    jl short @..api_idx_00d4.l7      ; 0x38a0
    inc word [bp - 0x0006]           ; 0x38a2
@..api_idx_00d4.l11:
    mov ax, word [bp - 0x0006]       ; 0x38a5
    cmp ax, word [data_69c8]         ; 0x38a8
    jge short @..api_idx_00d4.l12    ; 0x38ac
    jmp near @..api_idx_00d4.l1      ; 0x38ae
@..api_idx_00d4.l12:
    mov ax, 0                        ; 0x38b1
    push ax                          ; 0x38b4
    mov ax, 0x2d                     ; 0x38b5
    push ax                          ; 0x38b8
    mov ax, 0x90d8                   ; 0x38b9
    push ax                          ; 0x38bc
    call ds_dispatch_f306            ; 0x38bd
    add sp, byte 6                   ; 0x38c0
    mov word [bp - 0x00b4], 0        ; 0x38c3
    call ds_dispatch_ec17            ; 0x38c9
    mov word [bp - 0x0006], 0        ; 0x38cc
@..api_idx_00d4.l13:
    mov ax, word [bp - 0x0006]       ; 0x38d1
    cmp ax, word [data_69c8]         ; 0x38d4
    jl short @..api_idx_00d4.l14     ; 0x38d8
    jmp near @..local.l221           ; 0x38da
@..api_idx_00d4.l14:
    push ax                          ; 0x38dd
    call ds_dispatch_ca85            ; 0x38de
    pop cx                           ; 0x38e1
    test ax, ax                      ; 0x38e2
    jne short @..api_idx_00d4.l15    ; 0x38e4
    jmp near @..local.l207           ; 0x38e6
@..api_idx_00d4.l15:
    mov ax, word [bp - 0x0006]       ; 0x38e9
    mov cx, word [bp - 0x00b4]       ; 0x38ec
    shl cx, 1                        ; 0x38f0
    mov bx, cx                       ; 0x38f2
    add bx, bp                       ; 0x38f4
    mov word [bx - 0x00c0], ax       ; 0x38f6
    inc word [bp - 0x00b4]           ; 0x38fa
    mov cx, 0x2c                     ; 0x38fe
    imul cx                          ; 0x3901
    mov cx, ax                       ; 0x3903
    mov ax, word [data_8482]         ; 0x3905
    add ax, cx                       ; 0x3908
    mov word [bp - 0x00aa], ax       ; 0x390a
@..local.l164:
    mov ax, 0x2c                     ; 0x390e
    imul word [bp - 0x0006]          ; 0x3911
    mov si, ax                       ; 0x3914
    mov bx, word [data_8482]         ; 0x3916
    cmp byte [bx + si + 0x1f], 1     ; 0x391a
    jb short @..local.l165           ; 0x391e
    mov al, byte [bx + si + 0x1f]    ; 0x3920
    sub ah, ah                       ; 0x3923
    cmp ax, word [data_8466]         ; 0x3925
    jle short @..local.l166          ; 0x3929
@..local.l165:
    mov byte [bx + si + 0x1f], 1     ; 0x392b
@..local.l166:
    mov word [bp - 0x0002], 0        ; 0x392f
@..local.l167:
    mov ax, word [bp - 0x0002]       ; 0x3934
    shl ax, 1                        ; 0x3937
    mov bx, ax                       ; 0x3939
    add bx, bp                       ; 0x393b
    mov word [bx - 0x0028], 1        ; 0x393d
    inc word [bp - 0x0002]           ; 0x3942
    mov ax, word [bp - 0x0002]       ; 0x3945
    cmp ax, strict word 0xb          ; 0x3948
    jl short @..local.l167           ; 0x394b
    mov ax, 0x248                    ; 0x394d
    imul word [bp - 0x0006]          ; 0x3950
    mov bx, ax                       ; 0x3953
    cmp byte [bx + 0x5e2b], 7        ; 0x3955
    je short @..local.l168           ; 0x395a
    mov word [bp - 0x001e], 0        ; 0x395c
@..local.l168:
    mov ax, 0x2c                     ; 0x3961
    imul word [bp - 0x0006]          ; 0x3964
    mov si, ax                       ; 0x3967
    mov bx, word [data_8482]         ; 0x3969
    cmp byte [bx + si + 0x2b], 0     ; 0x396d
    jne short @..local.l169          ; 0x3971
    mov ax, 0x248                    ; 0x3973
    imul word [bp - 0x0006]          ; 0x3976
    mov bx, ax                       ; 0x3979
    mov al, byte [bx + 0x5e2d]       ; 0x397b
    cmp al, 3                        ; 0x397f
    je short @..local.l170           ; 0x3981
    cmp al, 0xd                      ; 0x3983
    je short @..local.l170           ; 0x3985
    cmp al, 4                        ; 0x3987
    je short @..local.l170           ; 0x3989
    cmp al, 6                        ; 0x398b
    je short @..local.l170           ; 0x398d
    cmp al, 0xc                      ; 0x398f
    je short @..local.l170           ; 0x3991
    cmp byte [bx + 0x5d7d], 0        ; 0x3993
    jne short @..local.l170          ; 0x3998
@..local.l169:
    mov word [bp - 0x0024], 0        ; 0x399a
@..local.l170:
    mov word [bp - 0x0020], 0        ; 0x399f
    mov word [bp - 0x00ae], 0        ; 0x39a4
@..local.l171:
    mov word [bp - 0x00ac], 0        ; 0x39aa
@..local.l172:
    mov ax, 0x248                    ; 0x39b0
    imul word [bp - 0x0006]          ; 0x39b3
    push ax                          ; 0x39b6
    mov ax, 0x78                     ; 0x39b7
    imul word [bp - 0x00ae]          ; 0x39ba
    mov cx, ax                       ; 0x39be
    pop ax                           ; 0x39c0
    add ax, cx                       ; 0x39c1
    push ax                          ; 0x39c3
    mov ax, 0xc                      ; 0x39c4
    imul word [bp - 0x00ac]          ; 0x39c7
    mov cx, ax                       ; 0x39cb
    pop ax                           ; 0x39cd
    add ax, cx                       ; 0x39ce
    mov bx, ax                       ; 0x39d0
    cmp word [bx + 0x5c34], byte 0   ; 0x39d2
    jle short @..local.l173          ; 0x39d7
    mov word [bp - 0x0020], 1        ; 0x39d9
@..local.l173:
    inc word [bp - 0x00ac]           ; 0x39de
    mov ax, word [bp - 0x00ac]       ; 0x39e2
    cmp ax, strict word 0xa          ; 0x39e6
    jl short @..local.l172           ; 0x39e9
    inc word [bp - 0x00ae]           ; 0x39eb
    mov ax, word [bp - 0x00ae]       ; 0x39ef
    cmp ax, strict word 2            ; 0x39f3
    jl short @..local.l171           ; 0x39f6
    cmp word [bp - 0x00b4], byte 2   ; 0x39f8
    jge short @..local.l174          ; 0x39fd
    mov word [bp - 0x0016], 0        ; 0x39ff
    mov word [bp - 0x0014], 0        ; 0x3a04
@..local.l174:
    mov ax, 0x248                    ; 0x3a09
    imul word [bp - 0x0006]          ; 0x3a0c
    mov bx, ax                       ; 0x3a0f
    mov al, byte [bx + 0x5d48]       ; 0x3a11
    sub ah, ah                       ; 0x3a15
    mov word [bp - 0x00ac], ax       ; 0x3a17
    cmp ax, 0xff                     ; 0x3a1b
    jne short @..local.l175          ; 0x3a1e
    jmp near @..local.l185           ; 0x3a20
@..local.l175:
    mov cx, 0xc                      ; 0x3a23
    imul cx                          ; 0x3a26
    add bx, ax                       ; 0x3a28
    cmp byte [bx + 0x5c38], 3        ; 0x3a2a
    je short @..local.l176           ; 0x3a2f
    jmp near @..local.l185           ; 0x3a31
@..local.l176:
    mov al, byte [bx + 0x5c3b]       ; 0x3a34
    sub ah, ah                       ; 0x3a38
    test ax, 0x20                    ; 0x3a3a
    je short @..local.l177           ; 0x3a3d
    jmp near @..local.l185           ; 0x3a3f
@..local.l177:
    mov ax, 0x248                    ; 0x3a42
    imul word [bp - 0x0006]          ; 0x3a45
    mov bx, ax                       ; 0x3a48
    mov al, byte [bx + 0x5d49]       ; 0x3a4a
    sub ah, ah                       ; 0x3a4e
    mov word [bp - 0x00ae], ax       ; 0x3a50
    cmp ax, 0xff                     ; 0x3a54
    jne short @..local.l178          ; 0x3a57
    jmp near @..local.l184           ; 0x3a59
@..local.l178:
    imul cx                          ; 0x3a5c
    add bx, ax                       ; 0x3a5e
    cmp byte [bx + 0x5c38], 4        ; 0x3a60
    je short @..local.l179           ; 0x3a65
    mov word [bp - 0x0028], 0        ; 0x3a67
    jmp near @..local.l183           ; 0x3a6c
@..local.l179:
    mov ax, 0x248                    ; 0x3a6f
    imul word [bp - 0x0006]          ; 0x3a72
    push ax                          ; 0x3a75
    mov ax, word [bp - 0x00ac]       ; 0x3a76
    imul cx                          ; 0x3a7a
    mov cx, ax                       ; 0x3a7c
    pop ax                           ; 0x3a7e
    add ax, cx                       ; 0x3a7f
    mov bx, ax                       ; 0x3a81
    mov al, byte [bx + 0x5c39]       ; 0x3a83
    cmp al, 0xb                      ; 0x3a87
    jne short @..local.l180          ; 0x3a89
    mov ax, 0x248                    ; 0x3a8b
    imul word [bp - 0x0006]          ; 0x3a8e
    push ax                          ; 0x3a91
    mov ax, 0xc                      ; 0x3a92
    imul word [bp - 0x00ae]          ; 0x3a95
    mov cx, ax                       ; 0x3a99
    pop ax                           ; 0x3a9b
    add ax, cx                       ; 0x3a9c
    mov bx, ax                       ; 0x3a9e
    mov al, byte [bx + 0x5c39]       ; 0x3aa0
    cmp al, 0x16                     ; 0x3aa4
    je short @..local.l180           ; 0x3aa6
    jmp near @..local.l182           ; 0x3aa8
@..local.l180:
    mov ax, 0x248                    ; 0x3aab
    imul word [bp - 0x0006]          ; 0x3aae
    push ax                          ; 0x3ab1
    mov ax, 0xc                      ; 0x3ab2
    imul word [bp - 0x00ac]          ; 0x3ab5
    mov cx, ax                       ; 0x3ab9
    pop ax                           ; 0x3abb
    add ax, cx                       ; 0x3abc
    mov bx, ax                       ; 0x3abe
    mov al, byte [bx + 0x5c39]       ; 0x3ac0
    cmp al, 0xd                      ; 0x3ac4
    jne short @..local.l181          ; 0x3ac6
    mov ax, 0x248                    ; 0x3ac8
    imul word [bp - 0x0006]          ; 0x3acb
    push ax                          ; 0x3ace
    mov ax, 0xc                      ; 0x3acf
    imul word [bp - 0x00ae]          ; 0x3ad2
    mov cx, ax                       ; 0x3ad6
    pop ax                           ; 0x3ad8
    add ax, cx                       ; 0x3ad9
    mov bx, ax                       ; 0x3adb
    mov al, byte [bx + 0x5c39]       ; 0x3add
    cmp al, 0x17                     ; 0x3ae1
    jne short @..local.l182          ; 0x3ae3
@..local.l181:
    mov ax, 0x248                    ; 0x3ae5
    imul word [bp - 0x0006]          ; 0x3ae8
    push ax                          ; 0x3aeb
    mov ax, 0xc                      ; 0x3aec
    imul word [bp - 0x00ac]          ; 0x3aef
    mov cx, ax                       ; 0x3af3
    pop ax                           ; 0x3af5
    add ax, cx                       ; 0x3af6
    mov bx, ax                       ; 0x3af8
    mov al, byte [bx + 0x5c39]       ; 0x3afa
    cmp al, 0xc                      ; 0x3afe
    jne short @..local.l183          ; 0x3b00
    mov ax, 0x248                    ; 0x3b02
    imul word [bp - 0x0006]          ; 0x3b05
    push ax                          ; 0x3b08
    mov ax, 0xc                      ; 0x3b09
    imul word [bp - 0x00ae]          ; 0x3b0c
    mov cx, ax                       ; 0x3b10
    pop ax                           ; 0x3b12
    add ax, cx                       ; 0x3b13
    mov bx, ax                       ; 0x3b15
    mov al, byte [bx + 0x5c39]       ; 0x3b17
    cmp al, 0x53                     ; 0x3b1b
    je short @..local.l183           ; 0x3b1d
@..local.l182:
    mov word [bp - 0x0028], 0        ; 0x3b1f
@..local.l183:
    jmp short @..local.l185          ; 0x3b24
@..local.l184:
    mov word [bp - 0x0028], 0        ; 0x3b26
@..local.l185:
    mov ax, 0x248                    ; 0x3b2b
    imul word [bp - 0x0006]          ; 0x3b2e
    mov bx, ax                       ; 0x3b31
    mov al, byte [bx + 0x5d31]       ; 0x3b33
    sub ah, ah                       ; 0x3b37
    mov word [bp - 0x00b2], ax       ; 0x3b39
    mov ax, 0x2c                     ; 0x3b3d
    imul word [bp - 0x0006]          ; 0x3b40
    mov si, ax                       ; 0x3b43
    mov bx, word [data_8482]         ; 0x3b45
    mov al, byte [bx + si + 0x1f]    ; 0x3b49
    sub ah, ah                       ; 0x3b4c
    mov cx, word [bp - 0x00b2]       ; 0x3b4e
    shl cx, 1                        ; 0x3b52
    mov bx, cx                       ; 0x3b54
    mov cx, word [bx - 0x6c7a]       ; 0x3b56
    cmp ax, cx                       ; 0x3b5a
    jle short @..local.l186          ; 0x3b5c
    mov word [bp - 0x0028], 0        ; 0x3b5e
@..local.l186:
    cmp word [bp - 0x0006], byte 3   ; 0x3b63
    jl short @..local.l187           ; 0x3b67
    cmp word [bp - 0x00b2], byte 0   ; 0x3b69
    jne short @..local.l187          ; 0x3b6e
    mov bx, word [data_8482]         ; 0x3b70
    cmp byte [bx + si + 0x2b], 1     ; 0x3b74
    je short @..local.l187           ; 0x3b78
    mov word [bp - 0x0028], 0        ; 0x3b7a
@..local.l187:
    mov bx, word [data_8482]         ; 0x3b7f
    mov al, byte [bx + si + 0x1f]    ; 0x3b83
    sub ah, ah                       ; 0x3b86
    cmp ax, word [data_9388]         ; 0x3b88
    jle short @..local.l188          ; 0x3b8c
    mov word [bp - 0x001e], 0        ; 0x3b8e
@..local.l188:
    mov word [bp - 0x0012], 0xffff   ; 0x3b93
    mov word [bp - 0x0098], 0xffff   ; 0x3b98
    mov byte [bx + si + 0x20], 0     ; 0x3b9e
    mov ax, 3                        ; 0x3ba2
    push ax                          ; 0x3ba5
    call api_idx_0006                ; 0x3ba6
    pop cx                           ; 0x3ba9
    mov ax, 0x2c                     ; 0x3baa
    imul word [bp - 0x0006]          ; 0x3bad
    mov si, ax                       ; 0x3bb0
    mov bx, word [data_8482]         ; 0x3bb2
    mov al, byte [bx + si + 0x1f]    ; 0x3bb6
    sub ah, ah                       ; 0x3bb9
    push ax                          ; 0x3bbb
    call api_idx_0054                ; 0x3bbc
    pop cx                           ; 0x3bbf
    mov ax, 1                        ; 0x3bc0
    push ax                          ; 0x3bc3
    mov ax, 0x93                     ; 0x3bc4
    push ax                          ; 0x3bc7
    mov ax, 0xa0                     ; 0x3bc8
    push ax                          ; 0x3bcb
    mov ax, 0x248                    ; 0x3bcc
    imul word [bp - 0x0006]          ; 0x3bcf
    add ax, 0x5bf4                   ; 0x3bd2
    push ax                          ; 0x3bd5
    call math_loc_0149               ; 0x3bd6
    add sp, byte 8                   ; 0x3bd9
    mov ax, 0x16                     ; 0x3bdc
    push ax                          ; 0x3bdf
    mov ax, 0x9a                     ; 0x3be0
    push ax                          ; 0x3be3
    mov ax, 0xa0                     ; 0x3be4
    push ax                          ; 0x3be7
    lea ax, word [bp - 0x00d4]       ; 0x3be8
    push ax                          ; 0x3bec
    call math_loc_0149               ; 0x3bed
    add sp, byte 8                   ; 0x3bf0
    mov word [bp - 0x009e], 0        ; 0x3bf3
    mov word [bp - 0x00a0], 0        ; 0x3bf9
    lea ax, word [bp - 0x0028]       ; 0x3bff
    push ax                          ; 0x3c02
    mov ax, 1                        ; 0x3c03
    push ax                          ; 0x3c06
    push ax                          ; 0x3c07
    mov ax, 3                        ; 0x3c08
    push ax                          ; 0x3c0b
    mov ax, 0xa                      ; 0x3c0c
    push ax                          ; 0x3c0f
    mov ax, 0x2a                     ; 0x3c10
    push ax                          ; 0x3c13
    mov ax, 6                        ; 0x3c14
    push ax                          ; 0x3c17
    mov ax, 0xa6                     ; 0x3c18
    push ax                          ; 0x3c1b
    mov ax, 0xe7                     ; 0x3c1c
    push ax                          ; 0x3c1f
    mov ax, 9                        ; 0x3c20
    push ax                          ; 0x3c23
    mov ax, 3                        ; 0x3c24
    push ax                          ; 0x3c27
    mov ax, 0xbb8                    ; 0x3c28
    push ax                          ; 0x3c2b
    call math_loc_111b               ; 0x3c2c
    add sp, byte 0x18                ; 0x3c2f
    mov word [bp - 0x0008], ax       ; 0x3c32
    cmp ax, strict word 0            ; 0x3c35
    jge short @..local.l190          ; 0x3c38
    mov word [bp - 0x009e], 1        ; 0x3c3a
    push ax                          ; 0x3c40
    cmp ax, strict word 0            ; 0x3c41
    pop ax                           ; 0x3c44
    jge short @..local.l189          ; 0x3c45
    neg ax                           ; 0x3c47
@..local.l189:
    push ax                          ; 0x3c49
    mov ax, 0x2c                     ; 0x3c4a
    imul word [bp - 0x0006]          ; 0x3c4d
    mov si, ax                       ; 0x3c50
    mov bx, word [data_8482]         ; 0x3c52
    pop ax                           ; 0x3c56
    mov byte [bx + si + 0x1f], al    ; 0x3c57
    mov ax, 0                        ; 0x3c5a
    push ax                          ; 0x3c5d
    call api_idx_0054                ; 0x3c5e
    pop cx                           ; 0x3c61
    jmp near @..local.l192           ; 0x3c62
@..local.l190:
    mov ax, word [bp - 0x0008]       ; 0x3c65
    jmp near @..local.l191           ; 0x3c68

    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x1b, 0xc5, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50
    db 0xb8, 0xa0, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x05, 0xf4, 0x5b, 0x50, 0xe8, 0xbd
    db 0xc4, 0x83, 0xc4, 0x08, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x9a, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50
    db 0x8d, 0x86, 0x2c, 0xff, 0x50, 0xe8, 0xa6, 0xc4, 0x83, 0xc4, 0x08, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0xfa, 0x8b, 0xd8, 0x8a, 0x87, 0x48, 0x5d, 0x2a, 0xe4, 0x89, 0x86, 0x54, 0xff, 0x3d, 0xff, 0x00
    db 0x74, 0x1a, 0xb9, 0x0c, 0x00, 0xf7, 0xe9, 0x03, 0xd8, 0x80, 0xbf, 0x38, 0x5c, 0x03, 0x75, 0x0c
    db 0xc7, 0x86, 0x50, 0xff, 0x01, 0x00, 0xc7, 0x86, 0x68, 0xff, 0x08, 0x00, 0x83, 0xbe, 0x68, 0xff
    db 0xff, 0x74, 0x03, 0xe9, 0x97, 0x00, 0xc7, 0x86, 0x50, 0xff, 0x00, 0x00, 0xc7, 0x46, 0xfe, 0x00
    db 0x00, 0xff, 0x76, 0xfe, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x05, 0x33, 0x5d, 0x50, 0xe8, 0x78
    db 0xaf, 0x83, 0xc4, 0x04, 0x8b, 0x4e, 0xfe, 0xd1, 0xe1, 0x8b, 0xd9, 0x03, 0xdd, 0x89, 0x47, 0xba
    db 0x8b, 0x46, 0xfe, 0x3d, 0x04, 0x00, 0x74, 0x38, 0x83, 0x7e, 0xfa, 0x03, 0x7c, 0x32, 0x81, 0xbe
    db 0x54, 0xff, 0xff, 0x00, 0x74, 0x2a, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x50, 0xb8, 0x0c, 0x00
    db 0xf7, 0xae, 0x54, 0xff, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x80, 0xbf, 0x38, 0x5c, 0x02
    db 0x75, 0x0e, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0xc7, 0x47, 0xba, 0x00, 0x00
    db 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xba, 0x01, 0x75, 0x0b, 0xff
    db 0x86, 0x50, 0xff, 0x8b, 0x46, 0xfe, 0x89, 0x86, 0x68, 0xff, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe
    db 0x3d, 0x08, 0x00, 0x7d, 0x03, 0xe9, 0x79, 0xff, 0xc7, 0x46, 0xca, 0xff, 0xff, 0x83, 0xbe, 0x50
    db 0xff, 0x01, 0x7e, 0x3a, 0x8d, 0x46, 0xba, 0x50, 0xb8, 0x1b, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x2a, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50
    db 0xb8, 0xa6, 0x00, 0x50, 0xb8, 0xe7, 0x00, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0xea, 0x0b, 0x50, 0xe8, 0x69, 0xd3, 0x83, 0xc4, 0x18, 0x89, 0x86, 0x68, 0xff, 0x83, 0xbe
    db 0x68, 0xff, 0xff, 0x75, 0x03, 0xe9, 0x82, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8
    db 0x8a, 0x87, 0x31, 0x5d, 0x2a, 0xe4, 0x89, 0x86, 0x4e, 0xff, 0x3d, 0x02, 0x00, 0x75, 0x0d, 0x83
    db 0xbe, 0x68, 0xff, 0x04, 0x74, 0x06, 0xc7, 0x86, 0x4e, 0xff, 0x00, 0x00, 0xb8, 0x2c, 0x00, 0xf7
    db 0x6e, 0xfa, 0x8b, 0xf0, 0x8b, 0x1e, 0x82, 0x84, 0x8a, 0x40, 0x1f, 0x2a, 0xe4, 0x8b, 0x8e, 0x4e
    db 0xff, 0xd1, 0xe1, 0x8b, 0xd9, 0x8b, 0x8f, 0x86, 0x93, 0x3b, 0xc1, 0x7e, 0x0e, 0xb8, 0x00, 0x00
    db 0x50, 0xe8, 0xd1, 0x79, 0x59, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0x83, 0xbe, 0x4e, 0xff, 0x00
    db 0x75, 0x26, 0x83, 0x7e, 0xfa, 0x03, 0x7c, 0x20, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfa, 0x8b, 0xf0
    db 0x8b, 0x1e, 0x82, 0x84, 0x80, 0x78, 0x2b, 0x01, 0x74, 0x0e, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xa4
    db 0x79, 0x59, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0xeb, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00
    db 0xe9, 0x2d, 0x02, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x38, 0xc3, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x93, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x05, 0xf4, 0x5b
    db 0x50, 0xe8, 0xda, 0xc2, 0x83, 0xc4, 0x08, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x9a, 0x00, 0x50, 0xb8
    db 0xa0, 0x00, 0x50, 0x8d, 0x86, 0x2c, 0xff, 0x50, 0xe8, 0xc3, 0xc2, 0x83, 0xc4, 0x08, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0xc7, 0x47, 0xd8, 0x01
    db 0x00, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x04, 0x00, 0x7c, 0xe7, 0xc7, 0x46, 0xd8, 0x00
    db 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8, 0x8a, 0x87, 0x49, 0x5d, 0x2a, 0xe4, 0x89
    db 0x86, 0x54, 0xff, 0x3d, 0xff, 0x00, 0x74, 0x13, 0xb9, 0x0c, 0x00, 0xf7, 0xe9, 0x03, 0xd8, 0x80
    db 0xbf, 0x38, 0x5c, 0x0b, 0x75, 0x05, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0xc7, 0x46, 0xe0, 0xff, 0xff
    db 0x8d, 0x46, 0xd8, 0x50, 0xb8, 0x1b, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x2a, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0xa6, 0x00, 0x50
    db 0xb8, 0xe7, 0x00, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x1c, 0x0c, 0x50
    db 0xe8, 0x0d, 0xd2, 0x83, 0xc4, 0x18, 0x89, 0x86, 0x68, 0xff, 0x3d, 0xff, 0xff, 0x75, 0x06, 0xc7
    db 0x86, 0x62, 0xff, 0x01, 0x00, 0xe9, 0x58, 0x01, 0xe9, 0x55, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xe8
    db 0x60, 0xc2, 0x59, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x9a, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0x8d
    db 0x86, 0x2c, 0xff, 0x50, 0xe8, 0x07, 0xc2, 0x83, 0xc4, 0x08, 0xff, 0x76, 0xfa, 0xe8, 0xfc, 0xe9
    db 0x59, 0x89, 0x86, 0x68, 0xff, 0x3d, 0xff, 0xff, 0x75, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00
    db 0xe9, 0x1d, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x28, 0xc2, 0x59, 0xb8, 0x16, 0x00, 0x50, 0xb8
    db 0x9a, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0x8d, 0x86, 0x2c, 0xff, 0x50, 0xe8, 0xcf, 0xc1, 0x83
    db 0xc4, 0x08, 0xff, 0x76, 0xfa, 0xe8, 0x58, 0xf4, 0x59, 0x89, 0x86, 0x68, 0xff, 0x3d, 0xff, 0xff
    db 0x75, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0xe9, 0xe5, 0x00, 0xe8, 0x18, 0x8f, 0x89, 0x86
    db 0x68, 0xff, 0x3d, 0xff, 0xff, 0x75, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0xe9, 0xd0, 0x00
    db 0xe9, 0xcd, 0x00, 0xc7, 0x86, 0x68, 0xff, 0x08, 0x00, 0xe9, 0xc4, 0x00, 0xe9, 0xc1, 0x00, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x2d, 0x00, 0x50, 0xb8, 0xd8, 0x90, 0x50, 0xe8, 0x3d, 0xb3, 0x83, 0xc4
    db 0x06, 0xc7, 0x86, 0x66, 0xff, 0x00, 0x00, 0xeb, 0x33, 0xb8, 0x2c, 0x00, 0xf7, 0xae, 0x66, 0xff
    db 0x8b, 0xf0, 0x8b, 0x1e, 0x82, 0x84, 0x80, 0x78, 0x1f, 0x00, 0x76, 0x1c, 0x8a, 0x40, 0x1f, 0x2a
    db 0xe4, 0xb9, 0x09, 0x00, 0xf7, 0xe9, 0x50, 0x8a, 0x40, 0x20, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x03
    db 0xc1, 0x8b, 0xd8, 0xc6, 0x87, 0xd8, 0x90, 0x01, 0xff, 0x86, 0x66, 0xff, 0x8b, 0x46, 0xfa, 0x48
    db 0x3b, 0x86, 0x66, 0xff, 0x7f, 0xc3, 0x8b, 0x86, 0x4c, 0xff, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd
    db 0x8b, 0x87, 0x3c, 0xff, 0x48, 0x89, 0x46, 0xfa, 0xff, 0x8e, 0x4c, 0xff, 0xff, 0x8e, 0x4c, 0xff
    db 0xc7, 0x86, 0x60, 0xff, 0x01, 0x00, 0xeb, 0x48, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2d, 0x00, 0x50
    db 0xb8, 0xd8, 0x90, 0x50, 0xe8, 0xc4, 0xb2, 0x83, 0xc4, 0x06, 0xc7, 0x46, 0xfa, 0xff, 0xff, 0xc7
    db 0x86, 0x60, 0xff, 0x01, 0x00, 0xc7, 0x86, 0x4c, 0xff, 0x00, 0x00, 0xeb, 0x23, 0xb2, 0x8c, 0x95
    db 0x8e, 0xf2, 0x8f, 0x6d, 0x8f, 0xa5, 0x8f, 0xf5, 0x8f, 0xfe, 0x8f, 0xdd, 0x8f, 0x6a, 0x8f, 0x01
    db 0x90, 0x7a, 0x90

@..local.l191:
    cmp ax, strict word 0xb          ; 0x406e
    jae short @..local.l192          ; 0x4071
    xchg bx, ax                      ; 0x4073
    shl bx, 1                        ; 0x4074
    jmp [cs:bx - 0x6f61]             ; 0x4076
@..local.l192:
    cmp word [bp - 0x009e], byte 1   ; 0x407b
    jne short @..local.l193          ; 0x4080
    jmp near @..local.l164           ; 0x4082
@..local.l193:
    mov ax, 0                        ; 0x4085
    push ax                          ; 0x4088
    call api_idx_0006                ; 0x4089
    pop cx                           ; 0x408c
    mov ax, 0x16                     ; 0x408d
    push ax                          ; 0x4090
    mov ax, 0x9a                     ; 0x4091
    push ax                          ; 0x4094
    mov ax, 0xa0                     ; 0x4095
    push ax                          ; 0x4098
    lea ax, word [bp - 0x00d4]       ; 0x4099
    push ax                          ; 0x409d
    call math_loc_0149               ; 0x409e
    add sp, byte 8                   ; 0x40a1
    mov ax, 0                        ; 0x40a4
    push ax                          ; 0x40a7
    call loc_02af                    ; 0x40a8
    pop cx                           ; 0x40ab
    mov ax, 0x32                     ; 0x40ac
    push ax                          ; 0x40af
    call ds_dispatch_e489            ; 0x40b0
    pop cx                           ; 0x40b3
    cmp word [bp - 0x00a0], byte 0   ; 0x40b4
    je short @..local.l194           ; 0x40b9
    jmp near @..local.l207           ; 0x40bb
@..local.l194:
    mov ax, word [bp - 0x0098]       ; 0x40be
    push ax                          ; 0x40c2
    mov ax, 0x2c                     ; 0x40c3
    imul word [bp - 0x0006]          ; 0x40c6
    mov si, ax                       ; 0x40c9
    mov bx, word [data_8482]         ; 0x40cb
    pop ax                           ; 0x40cf
    mov word [bx + si + 0xa], ax     ; 0x40d0
    mov ax, 0x2c                     ; 0x40d3
    imul word [bp - 0x0006]          ; 0x40d6
    mov si, ax                       ; 0x40d9
    mov bx, word [data_8482]         ; 0x40db
    mov word [bx + si + 0xc], 0xffff ; 0x40df
    mov al, byte [bp - 0x0008]       ; 0x40e4
    push ax                          ; 0x40e7
    mov ax, 0x2c                     ; 0x40e8
    imul word [bp - 0x0006]          ; 0x40eb
    mov si, ax                       ; 0x40ee
    mov bx, word [data_8482]         ; 0x40f0
    pop ax                           ; 0x40f4
    mov byte [bx + si + 0x1e], al    ; 0x40f5
    mov ax, 0x2c                     ; 0x40f8
    imul word [bp - 0x0006]          ; 0x40fb
    mov si, ax                       ; 0x40fe
    mov bx, word [data_8482]         ; 0x4100
    mov al, byte [bx + si + 0x1f]    ; 0x4104
    sub ah, ah                       ; 0x4107
    mov word [bp - 0x009a], ax       ; 0x4109
    cmp ax, strict word 1            ; 0x410d
    jl short @..local.l195           ; 0x4110
    cmp ax, strict word 5            ; 0x4112
    jg short @..local.l195           ; 0x4115
    mov al, byte [bp - 0x009a]       ; 0x4117
    sub ah, ah                       ; 0x411b
    push ax                          ; 0x411d
    push word [bp - 0x0006]          ; 0x411e
    call api_idx_000c                ; 0x4121
    add sp, byte 4                   ; 0x4124
    push ax                          ; 0x4127
    mov ax, 0x2c                     ; 0x4128
    imul word [bp - 0x0006]          ; 0x412b
    mov si, ax                       ; 0x412e
    mov bx, word [data_8482]         ; 0x4130
    pop ax                           ; 0x4134
    mov byte [bx + si + 0x20], al    ; 0x4135
@..local.l195:
    mov ax, 0x248                    ; 0x4138
    imul word [bp - 0x0006]          ; 0x413b
    mov bx, ax                       ; 0x413e
    mov al, byte [bx + 0x5d49]       ; 0x4140
    sub ah, ah                       ; 0x4144
    mov word [bp - 0x00ac], ax       ; 0x4146
    cmp word [bp - 0x0008], byte 0   ; 0x414a
    je short @..local.l196           ; 0x414e
    jmp near @..local.l207           ; 0x4150
@..local.l196:
    cmp ax, 0xff                     ; 0x4153
    jne short @..local.l198          ; 0x4156
    mov al, byte [bx + 0x5d48]       ; 0x4158
    sub ah, ah                       ; 0x415c
    cmp ax, 0xff                     ; 0x415e
    jne short @..local.l198          ; 0x4161
    add bx, strict word 0x5d33       ; 0x4163
    mov ax, bx                       ; 0x4167
    push ax                          ; 0x4169
    call api_idx_0006_3              ; 0x416a
    pop cx                           ; 0x416d
    mov word [bp - 0x0002], ax       ; 0x416e
    cmp ax, strict word 0xffff       ; 0x4171
    je short @..local.l197           ; 0x4174
    mov ax, word [bp - 0x0002]       ; 0x4176
    push ax                          ; 0x4179
    mov ax, 0x2c                     ; 0x417a
    imul word [bp - 0x0006]          ; 0x417d
    mov si, ax                       ; 0x4180
    mov bx, word [data_8482]         ; 0x4182
    pop ax                           ; 0x4186
    mov word [bx + si + 0xc], ax     ; 0x4187
@..local.l197:
    jmp near @..local.l207           ; 0x418a
@..local.l198:
    cmp word [bp - 0x00ac], strict word 0xff ; 0x418d
    jne short @..local.l199          ; 0x4193
    jmp near @..local.l207           ; 0x4195
@..local.l199:
    mov ax, 0x248                    ; 0x4198
    imul word [bp - 0x0006]          ; 0x419b
    push ax                          ; 0x419e
    mov ax, 0xc                      ; 0x419f
    imul word [bp - 0x00ac]          ; 0x41a2
    mov cx, ax                       ; 0x41a6
    pop ax                           ; 0x41a8
    add ax, cx                       ; 0x41a9
    mov bx, ax                       ; 0x41ab
    cmp byte [bx + 0x5c38], 3        ; 0x41ad
    jne short @..local.l200          ; 0x41b2
    mov al, byte [bx + 0x5c3b]       ; 0x41b4
    sub ah, ah                       ; 0x41b8
    test ax, 0x20                    ; 0x41ba
    je short @..local.l200           ; 0x41bd
    mov ax, 0x2c                     ; 0x41bf
    imul word [bp - 0x0006]          ; 0x41c2
    mov si, ax                       ; 0x41c5
    mov bx, word [data_8482]         ; 0x41c7
    mov word [bx + si + 0xc], 8      ; 0x41cb
    jmp near @..local.l207           ; 0x41d0
@..local.l200:
    mov ax, 0x248                    ; 0x41d3
    imul word [bp - 0x0006]          ; 0x41d6
    push ax                          ; 0x41d9
    mov ax, 0xc                      ; 0x41da
    imul word [bp - 0x00ac]          ; 0x41dd
    mov cx, ax                       ; 0x41e1
    pop ax                           ; 0x41e3
    add ax, cx                       ; 0x41e4
    mov bx, ax                       ; 0x41e6
    mov al, byte [bx + 0x5c38]       ; 0x41e8
    cmp al, data_0002                ; 0x41ec
    je short @..local.l201           ; 0x41ee
    cmp al, 0xc                      ; 0x41f0
    je short @..local.l201           ; 0x41f2
    cmp al, 0x10                     ; 0x41f4
    jne short @..local.l202          ; 0x41f6
@..local.l201:
    mov ax, 0x2c                     ; 0x41f8
    imul word [bp - 0x0006]          ; 0x41fb
    mov si, ax                       ; 0x41fe
    mov bx, word [data_8482]         ; 0x4200
    mov word [bx + si + 0xc], 4      ; 0x4204
    jmp near @..local.l207           ; 0x4209
@..local.l202:
    mov ax, 0x248                    ; 0x420c
    imul word [bp - 0x0006]          ; 0x420f
    push ax                          ; 0x4212
    mov ax, 0xc                      ; 0x4213
    imul word [bp - 0x00ac]          ; 0x4216
    mov cx, ax                       ; 0x421a
    pop ax                           ; 0x421c
    add ax, cx                       ; 0x421d
    mov bx, ax                       ; 0x421f
    cmp byte [bx + 0x5c38], data_0002 ; 0x4221
    jae short @..local.l207          ; 0x4226
    mov ax, 0x248                    ; 0x4228
    imul word [bp - 0x0006]          ; 0x422b
    mov bx, ax                       ; 0x422e
    cmp byte [bx + 0x5d43], 1        ; 0x4230
    je short @..local.l203           ; 0x4235
    cmp word [bp - 0x0006], byte 3   ; 0x4237
    jge short @..local.l207          ; 0x423b
    cmp word [bp - 0x009a], byte 3   ; 0x423d
    jge short @..local.l207          ; 0x4242
@..local.l203:
    mov word [bp - 0x000a], 0        ; 0x4244
@..local.l204:
    mov ax, 0x248                    ; 0x4249
    imul word [bp - 0x0006]          ; 0x424c
    add ax, 0x5d45                   ; 0x424f
    push ax                          ; 0x4252
    call api_idx_0006_3              ; 0x4253
    pop cx                           ; 0x4256
    mov word [bp - 0x0002], ax       ; 0x4257
    inc word [bp - 0x000a]           ; 0x425a
    cmp word [bp - 0x0002], byte 4   ; 0x425d
    jne short @..local.l205          ; 0x4261
    cmp word [bp - 0x000a], byte 0x0a ; 0x4263
    jl short @..local.l204           ; 0x4267
@..local.l205:
    cmp word [bp - 0x0002], byte 4   ; 0x4269
    jne short @..local.l206          ; 0x426d
    mov word [bp - 0x0002], 0xffff   ; 0x426f
@..local.l206:
    cmp word [bp - 0x0002], byte 0xff ; 0x4274
    je short @..local.l207           ; 0x4278
    mov ax, word [bp - 0x0002]       ; 0x427a
    push ax                          ; 0x427d
    mov ax, 0x2c                     ; 0x427e
    imul word [bp - 0x0006]          ; 0x4281
    mov si, ax                       ; 0x4284
    mov bx, word [data_8482]         ; 0x4286
    pop ax                           ; 0x428a
    mov word [bx + si + 0xc], ax     ; 0x428b
@..local.l207:
    inc word [bp - 0x0006]           ; 0x428e
    mov ax, word [bp - 0x0006]       ; 0x4291
    cmp ax, word [data_69c8]         ; 0x4294
    je short @..local.l208           ; 0x4298
    jmp near @..local.l220           ; 0x429a
@..local.l208:
    mov ax, 3                        ; 0x429d
    push ax                          ; 0x42a0
    call api_idx_0006                ; 0x42a1
    pop cx                           ; 0x42a4
    lea ax, word [bp - 0x0096]       ; 0x42a5
    push ax                          ; 0x42a9
    mov ax, 0xdb2                    ; 0x42aa
    push ax                          ; 0x42ad
    call ds_dispatch_b53b            ; 0x42ae
    add sp, byte 4                   ; 0x42b1
    mov ax, 1                        ; 0x42b4
    push ax                          ; 0x42b7
    mov ax, 0x99                     ; 0x42b8
    push ax                          ; 0x42bb
    mov ax, 0xa0                     ; 0x42bc
    push ax                          ; 0x42bf
    lea ax, word [bp - 0x0096]       ; 0x42c0
    push ax                          ; 0x42c4
    call math_loc_0149               ; 0x42c5
    add sp, byte 8                   ; 0x42c8
    mov ax, 3                        ; 0x42cb
    push ax                          ; 0x42ce
    call loc_02af                    ; 0x42cf
    pop cx                           ; 0x42d2
    mov word [bp - 0x0002], 0        ; 0x42d3
@..local.l209:
    mov ax, word [bp - 0x0002]       ; 0x42d8
    shl ax, 1                        ; 0x42db
    mov bx, ax                       ; 0x42dd
    add bx, bp                       ; 0x42df
    mov word [bx - 0x0028], 1        ; 0x42e1
    inc word [bp - 0x0002]           ; 0x42e6
    mov ax, word [bp - 0x0002]       ; 0x42e9
    cmp ax, strict word 3            ; 0x42ec
    jl short @..local.l209           ; 0x42ef
    cmp word [bp - 0x00b4], byte 0   ; 0x42f1
    jne short @..local.l210          ; 0x42f6
    mov word [bp - 0x0026], 0        ; 0x42f8
@..local.l210:
    mov word [bp - 0x0022], 0xffff   ; 0x42fd
    call ds_dispatch_ec17            ; 0x4302
    lea ax, word [bp - 0x0028]       ; 0x4305
    push ax                          ; 0x4308
    mov ax, 1                        ; 0x4309
    push ax                          ; 0x430c
    mov ax, 0                        ; 0x430d
    push ax                          ; 0x4310
    mov ax, 3                        ; 0x4311
    push ax                          ; 0x4314
    mov ax, 0xa                      ; 0x4315
    push ax                          ; 0x4318
    mov ax, 0x78                     ; 0x4319
    push ax                          ; 0x431c
    mov ax, 0x12                     ; 0x431d
    push ax                          ; 0x4320
    mov ax, 0xa6                     ; 0x4321
    push ax                          ; 0x4324
    mov ax, 0x69                     ; 0x4325
    push ax                          ; 0x4328
    push ax                          ; 0x4329
    mov ax, 1                        ; 0x432a
    push ax                          ; 0x432d
    mov ax, 0xdb3                    ; 0x432e
    push ax                          ; 0x4331
    call math_loc_111b               ; 0x4332
    add sp, byte 0x18                ; 0x4335
    mov word [bp - 0x0002], ax       ; 0x4338
    cmp ax, strict word 2            ; 0x433b
    je short @..local.l211           ; 0x433e
    jmp near @..local.l216           ; 0x4340
@..local.l211:
    mov ax, 5                        ; 0x4343
    push ax                          ; 0x4346
    call ds_dispatch_b75e            ; 0x4347
    pop cx                           ; 0x434a
    mov word [bp - 0x0006], 0        ; 0x434b
    jmp near @..local.l214           ; 0x4350
@..local.l212:
    mov ax, 0x2c                     ; 0x4353
    imul word [bp - 0x0006]          ; 0x4356
    mov si, ax                       ; 0x4359
    mov bx, word [data_8482]         ; 0x435b
    cmp byte [bx + si + 0x22], 3     ; 0x435f
    je short @..local.l213           ; 0x4363
    mov ax, 0x248                    ; 0x4365
    imul word [bp - 0x0006]          ; 0x4368
    mov bx, ax                       ; 0x436b
    mov word [bx + 0x5c0c], 0        ; 0x436d
    mov word [bx + 0x5c10], 0        ; 0x4373
    mov byte [bx + 0x5e2f], 3        ; 0x4379
    mov bx, word [data_8482]         ; 0x437e
    mov word [bx + si + 0x2], 0      ; 0x4382
    mov ax, 0x2c                     ; 0x4387
    imul word [bp - 0x0006]          ; 0x438a
    mov si, ax                       ; 0x438d
    mov bx, word [data_8482]         ; 0x438f
    mov word [bx + si + 0x6], 0      ; 0x4393
    mov ax, 0x2c                     ; 0x4398
    imul word [bp - 0x0006]          ; 0x439b
    mov si, ax                       ; 0x439e
    mov bx, word [data_8482]         ; 0x43a0
    mov byte [bx + si + 0x22], 3     ; 0x43a4
    mov ax, 0x248                    ; 0x43a8
    imul word [bp - 0x0006]          ; 0x43ab
    mov bx, ax                       ; 0x43ae
    mov al, byte [bx + 0x5e2c]       ; 0x43b0
    sub ah, ah                       ; 0x43b4
    add ax, strict word 8            ; 0x43b6
    push ax                          ; 0x43b9
    call ds_dispatch_b7e0            ; 0x43ba
    pop cx                           ; 0x43bd
    mov ax, 1                        ; 0x43be
    push ax                          ; 0x43c1
    push word [bp - 0x0006]          ; 0x43c2
    call ds_dispatch_cb3a            ; 0x43c5
    add sp, byte 4                   ; 0x43c8
    mov ax, 8                        ; 0x43cb
    push ax                          ; 0x43ce
    call ds_dispatch_b75e            ; 0x43cf
    pop cx                           ; 0x43d2
@..local.l213:
    inc word [bp - 0x0006]           ; 0x43d3
@..local.l214:
    mov ax, word [bp - 0x0006]       ; 0x43d6
    cmp ax, word [data_69c8]         ; 0x43d9
    jge short @..local.l215          ; 0x43dd
    jmp near @..local.l212           ; 0x43df
@..local.l215:
    mov ax, 1                        ; 0x43e2
    ret                              ; 0x43e5
@..local.l216:
    cmp word [bp - 0x0002], byte 1   ; 0x43e6
    jne short @..local.l220          ; 0x43ea
    mov ax, 0                        ; 0x43ec
    push ax                          ; 0x43ef
    mov ax, 0x2d                     ; 0x43f0
    push ax                          ; 0x43f3
    mov ax, 0x90d8                   ; 0x43f4
    push ax                          ; 0x43f7
    call ds_dispatch_f306            ; 0x43f8
    add sp, byte 6                   ; 0x43fb
    mov word [bp - 0x009a], 0        ; 0x43fe
    jmp short @..local.l219          ; 0x4404
@..local.l217:
    mov ax, 0x2c                     ; 0x4406
    imul word [bp - 0x009a]          ; 0x4409
    mov si, ax                       ; 0x440d
    mov bx, word [data_8482]         ; 0x440f
    cmp byte [bx + si + 0x1f], 0     ; 0x4413
    jbe short @..local.l218          ; 0x4417
    mov al, byte [bx + si + 0x1f]    ; 0x4419
    sub ah, ah                       ; 0x441c
    mov cx, 9                        ; 0x441e
    imul cx                          ; 0x4421
    push ax                          ; 0x4423
    mov al, byte [bx + si + 0x20]    ; 0x4424
    sub ah, ah                       ; 0x4427
    mov cx, ax                       ; 0x4429
    pop ax                           ; 0x442b
    add ax, cx                       ; 0x442c
    mov bx, ax                       ; 0x442e
    mov byte [bx - 0x6f28], 1        ; 0x4430
@..local.l218:
    inc word [bp - 0x009a]           ; 0x4435
@..local.l219:
    mov ax, word [data_69c8]         ; 0x4439
    dec ax                           ; 0x443c
    cmp ax, word [bp - 0x009a]       ; 0x443d
    jg short @..local.l217           ; 0x4441
    mov ax, word [bp - 0x00b4]       ; 0x4443
    shl ax, 1                        ; 0x4447
    mov bx, ax                       ; 0x4449
    add bx, bp                       ; 0x444b
    mov ax, word [bx - 0x00c2]       ; 0x444d
    mov word [bp - 0x0006], ax       ; 0x4451
    dec word [bp - 0x00b4]           ; 0x4454
@..local.l220:
    jmp near @..api_idx_00d4.l13     ; 0x4458
@..local.l221:
    mov word [bp - 0x0006], 0        ; 0x445b
    jmp near @..local.l230           ; 0x4460
@..local.l222:
    mov ax, 0x2c                     ; 0x4463
    imul word [bp - 0x0006]          ; 0x4466
    mov si, ax                       ; 0x4469
    mov bx, word [data_8482]         ; 0x446b
    cmp byte [bx + si + 0xf], 0      ; 0x446f
    jbe short @..local.l223          ; 0x4473
    mov ax, 0x64                     ; 0x4475
    push ax                          ; 0x4478
    call ds_dispatch_b7a9            ; 0x4479
    pop cx                           ; 0x447c
    push ax                          ; 0x447d
    mov ax, 0x248                    ; 0x447e
    imul word [bp - 0x0006]          ; 0x4481
    mov bx, ax                       ; 0x4484
    mov al, byte [bx + 0x5d6a]       ; 0x4486
    sub ah, ah                       ; 0x448a
    mov cx, ax                       ; 0x448c
    add ax, strict word 0x50         ; 0x448e
    mov cx, ax                       ; 0x4491
    pop ax                           ; 0x4493
    cmp ax, cx                       ; 0x4494
    jle short @..local.l223          ; 0x4496
    mov ax, 0x2c                     ; 0x4498
    imul word [bp - 0x0006]          ; 0x449b
    mov si, ax                       ; 0x449e
    mov bx, word [data_8482]         ; 0x44a0
    mov byte [bx + si + 0x1e], 6     ; 0x44a4
@..local.l223:
    mov ax, 0x2c                     ; 0x44a8
    imul word [bp - 0x0006]          ; 0x44ab
    mov si, ax                       ; 0x44ae
    mov bx, word [data_8482]         ; 0x44b0
    cmp byte [bx + si + 0x1e], 1     ; 0x44b4
    je short @..local.l224           ; 0x44b8
    cmp byte [bx + si + 0x1e], 7     ; 0x44ba
    jne short @..local.l225          ; 0x44be
@..local.l224:
    mov byte [bx + si + 0x18], 1     ; 0x44c0
@..local.l225:
    mov ax, 0x2c                     ; 0x44c4
    imul word [bp - 0x0006]          ; 0x44c7
    mov si, ax                       ; 0x44ca
    mov bx, word [data_8482]         ; 0x44cc
    cmp byte [bx + si + 0x1e], 0     ; 0x44d0
    jne short @..local.l227          ; 0x44d4
    cmp word [bx + si + 0xc], byte 0xff ; 0x44d6
    jne short @..local.l226          ; 0x44da
    mov byte [bx + si + 0x19], 0     ; 0x44dc
    mov ax, 0x2c                     ; 0x44e0
    imul word [bp - 0x0006]          ; 0x44e3
    mov si, ax                       ; 0x44e6
    mov bx, word [data_8482]         ; 0x44e8
    mov byte [bx + si + 0x1b], 0     ; 0x44ec
@..local.l226:
    jmp short @..local.l229          ; 0x44f0
@..local.l227:
    mov word [bp - 0x0002], 1        ; 0x44f2
@..local.l228:
    mov ax, 0x2c                     ; 0x44f7
    imul word [bp - 0x0006]          ; 0x44fa
    add ax, word [bp - 0x0002]       ; 0x44fd
    mov si, ax                       ; 0x4500
    mov bx, word [data_8482]         ; 0x4502
    mov byte [bx + si + 0x18], 0     ; 0x4506
    inc word [bp - 0x0002]           ; 0x450a
    mov ax, word [bp - 0x0002]       ; 0x450d
    cmp ax, strict word 4            ; 0x4510
    jl short @..local.l228           ; 0x4513
@..local.l229:
    inc word [bp - 0x0006]           ; 0x4515
@..local.l230:
    mov ax, word [bp - 0x0006]       ; 0x4518
    cmp ax, word [data_69c8]         ; 0x451b
    jge short @..local.l231          ; 0x451f
    jmp near @..local.l222           ; 0x4521
@..local.l231:
    mov ax, 0                        ; 0x4524
    ret                              ; 0x4527
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x4528
    call ds_dispatch_f40b            ; 0x452b
    mov word [bp - 0x0004], 0        ; 0x452e
    mov word [bp - 0x0002], 0        ; 0x4533
    jmp short @..api_idx_0004_4.l3   ; 0x4538
@..api_idx_0004_4.l1:
    mov ax, 0x2c                     ; 0x453a
    imul word [bp - 0x0002]          ; 0x453d
    mov si, ax                       ; 0x4540
    mov ax, word [bp + 0x6]          ; 0x4542
    shl ax, 1                        ; 0x4545
    mov bx, ax                       ; 0x4547
    mov bx, word [bx - 0x7b7e]       ; 0x4549
    mov ax, word [bx + si + 0x4]     ; 0x454d
    mov cx, word [bx + si + 0x2]     ; 0x4550
    sub ax, cx                       ; 0x4553
    cmp ax, word [bp - 0x0004]       ; 0x4555
    jle short @..api_idx_0004_4.l2   ; 0x4558
    mov ax, data_0002                ; 0x455a
    push ax                          ; 0x455d
    call ds_dispatch_b7a9            ; 0x455e
    pop cx                           ; 0x4561
    test ax, ax                      ; 0x4562
    jne short @..api_idx_0004_4.l2   ; 0x4564
    mov al, byte [bp + 0x6]          ; 0x4566
    mov bx, word [bp + 0x4]          ; 0x4569
    mov byte [bx + 0x1f], al         ; 0x456c
    mov al, byte [bp - 0x0002]       ; 0x456f
    mov bx, word [bp + 0x4]          ; 0x4572
    mov byte [bx + 0x20], al         ; 0x4575
    mov ax, 0x2c                     ; 0x4578
    imul word [bp - 0x0002]          ; 0x457b
    mov si, ax                       ; 0x457e
    mov ax, word [bp + 0x6]          ; 0x4580
    shl ax, 1                        ; 0x4583
    mov bx, ax                       ; 0x4585
    mov bx, word [bx - 0x7b7e]       ; 0x4587
    mov ax, word [bx + si + 0x4]     ; 0x458b
    mov cx, word [bx + si + 0x2]     ; 0x458e
    sub ax, cx                       ; 0x4591
    mov word [bp - 0x0004], ax       ; 0x4593
@..api_idx_0004_4.l2:
    inc word [bp - 0x0002]           ; 0x4596
@..api_idx_0004_4.l3:
    mov ax, word [bp + 0x6]          ; 0x4599
    shl ax, 1                        ; 0x459c
    mov bx, ax                       ; 0x459e
    mov bx, word [bx - 0x7b7e]       ; 0x45a0
    mov al, byte [bx + 0x1a1]        ; 0x45a4
    sub ah, ah                       ; 0x45a8
    cmp ax, word [bp - 0x0002]       ; 0x45aa
    jg short @..api_idx_0004_4.l1    ; 0x45ad
    mov ax, word [bp - 0x0004]       ; 0x45af
    ret                              ; 0x45b2
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x45b3
    call ds_dispatch_f40b            ; 0x45b6
    mov word [bp - 0x0002], 0        ; 0x45b9
@..api_idx_0002_2.l1:
    mov ax, word [bp + 0x4]          ; 0x45be
    shl ax, 1                        ; 0x45c1
    mov bx, ax                       ; 0x45c3
    mov bx, word [bx - 0x7b70]       ; 0x45c5
    mov si, word [bp - 0x0002]       ; 0x45c9
    cmp byte [bx + si + 0x86], 0     ; 0x45cc
    je short @..api_idx_0002_2.l2    ; 0x45d1
    mov ax, data_0002                ; 0x45d3
    push ax                          ; 0x45d6
    call ds_dispatch_b7a9            ; 0x45d7
    pop cx                           ; 0x45da
    cmp ax, strict word 1            ; 0x45db
    jne short @..api_idx_0002_2.l3   ; 0x45de
@..api_idx_0002_2.l2:
    mov ax, word [bp - 0x0002]       ; 0x45e0
    inc ax                           ; 0x45e3
    mov cx, 3                        ; 0x45e4
    cwd                              ; 0x45e7
    idiv cx                          ; 0x45e8
    mov word [bp - 0x0002], dx       ; 0x45ea
    jmp short @..api_idx_0002_2.l1   ; 0x45ed
@..api_idx_0002_2.l3:
    mov ax, word [bp - 0x0002]       ; 0x45ef
    ret                              ; 0x45f2
api_idx_0024:
    mov ax, 0xffdc                   ; 0x45f3
    call ds_dispatch_f40b            ; 0x45f6
    mov word [bp - 0x001e], 0        ; 0x45f9
    mov word [bp - 0x0020], 0        ; 0x45fe
    mov word [bp - 0x0022], 0        ; 0x4603
    mov word [bp - 0x0024], 0        ; 0x4608
    mov word [bp - 0x0004], 0        ; 0x460d
    jmp short @..api_idx_0024.l3     ; 0x4612
@..api_idx_0024.l1:
    push word [bp - 0x0004]          ; 0x4614
    call ds_dispatch_ca85            ; 0x4617
    pop cx                           ; 0x461a
    test ax, ax                      ; 0x461b
    je short @..api_idx_0024.l2      ; 0x461d
    mov ax, 0x2c                     ; 0x461f
    imul word [bp - 0x0004]          ; 0x4622
    mov si, ax                       ; 0x4625
    mov bx, word [data_8482]         ; 0x4627
    mov ax, word [bx + si + 0x2]     ; 0x462b
    cwd                              ; 0x462e
    add word [bp - 0x0020], ax       ; 0x462f
    adc word [bp - 0x001e], dx       ; 0x4632
@..api_idx_0024.l2:
    inc word [bp - 0x0004]           ; 0x4635
@..api_idx_0024.l3:
    mov bx, word [data_8482]         ; 0x4638
    mov al, byte [bx + 0x1a1]        ; 0x463c
    sub ah, ah                       ; 0x4640
    cmp ax, word [bp - 0x0004]       ; 0x4642
    jg short @..api_idx_0024.l1      ; 0x4645
    mov word [bp - 0x0004], 0        ; 0x4647
    jmp short @..api_idx_0024.l5     ; 0x464c
@..api_idx_0024.l4:
    mov ax, 0x2c                     ; 0x464e
    imul word [bp - 0x0004]          ; 0x4651
    mov si, ax                       ; 0x4654
    mov bx, word [data_848e]         ; 0x4656
    mov ax, word [bx + si + 0x2]     ; 0x465a
    cwd                              ; 0x465d
    add word [bp - 0x0020], ax       ; 0x465e
    adc word [bp - 0x001e], dx       ; 0x4661
    inc word [bp - 0x0004]           ; 0x4664
@..api_idx_0024.l5:
    mov bx, word [data_848e]         ; 0x4667
    mov al, byte [bx + 0x1a1]        ; 0x466b
    sub ah, ah                       ; 0x466f
    cmp ax, word [bp - 0x0004]       ; 0x4671
    jg short @..api_idx_0024.l4      ; 0x4674
    mov word [bp - 0x0004], 1        ; 0x4676
    jmp short @..api_idx_0024.l9     ; 0x467b
@..api_idx_0024.l6:
    mov word [bp - 0x0006], 0        ; 0x467d
    jmp short @..api_idx_0024.l8     ; 0x4682
@..api_idx_0024.l7:
    mov ax, 0x2c                     ; 0x4684
    imul word [bp - 0x0006]          ; 0x4687
    mov si, ax                       ; 0x468a
    mov ax, word [bp - 0x0004]       ; 0x468c
    shl ax, 1                        ; 0x468f
    mov bx, ax                       ; 0x4691
    mov bx, word [bx - 0x7b7e]       ; 0x4693
    mov ax, word [bx + si + 0x2]     ; 0x4697
    cwd                              ; 0x469a
    add word [bp - 0x0024], ax       ; 0x469b
    adc word [bp - 0x0022], dx       ; 0x469e
    inc word [bp - 0x0006]           ; 0x46a1
@..api_idx_0024.l8:
    mov ax, word [bp - 0x0004]       ; 0x46a4
    shl ax, 1                        ; 0x46a7
    mov bx, ax                       ; 0x46a9
    mov bx, word [bx - 0x7b7e]       ; 0x46ab
    mov al, byte [bx + 0x1a1]        ; 0x46af
    sub ah, ah                       ; 0x46b3
    cmp ax, word [bp - 0x0006]       ; 0x46b5
    jg short @..api_idx_0024.l7      ; 0x46b8
    inc word [bp - 0x0004]           ; 0x46ba
@..api_idx_0024.l9:
    mov ax, word [bp - 0x0004]       ; 0x46bd
    cmp ax, word [data_8466]         ; 0x46c0
    jle short @..api_idx_0024.l6     ; 0x46c4
    cmp word [bp + 0x4], byte 6      ; 0x46c6
    jne short @..api_idx_0024.l10    ; 0x46ca
    mov ax, word [bp - 0x0024]       ; 0x46cc
    mov dx, word [bp - 0x0022]       ; 0x46cf
    push ax                          ; 0x46d2
    xchg dx, ax                      ; 0x46d3
    mov bx, 0x64                     ; 0x46d4
    mul bx                           ; 0x46d7
    mov cx, ax                       ; 0x46d9
    pop ax                           ; 0x46db
    mul bx                           ; 0x46dc
    add dx, cx                       ; 0x46de
    mov cx, word [bp - 0x0020]       ; 0x46e0
    mov bx, word [bp - 0x001e]       ; 0x46e3
    call ds_dispatch_f99f            ; 0x46e6
    mov cx, 0x19                     ; 0x46e9
    mov bx, 0                        ; 0x46ec
    call ds_dispatch_f99f            ; 0x46ef
    push ax                          ; 0x46f2
    xchg dx, ax                      ; 0x46f3
    mov bx, 5                        ; 0x46f4
    mul bx                           ; 0x46f7
    mov cx, ax                       ; 0x46f9
    pop ax                           ; 0x46fb
    mul bx                           ; 0x46fc
    add dx, cx                       ; 0x46fe
    add ax, strict word 0xffec       ; 0x4700
    adc dx, byte 0xff                ; 0x4703
    mov word [bp - 0x001c], ax       ; 0x4706
    jmp short @..api_idx_0024.l11    ; 0x4709
@..api_idx_0024.l10:
    mov ax, word [bp - 0x0020]       ; 0x470b
    mov dx, word [bp - 0x001e]       ; 0x470e
    push ax                          ; 0x4711
    xchg dx, ax                      ; 0x4712
    mov bx, 0x64                     ; 0x4713
    mul bx                           ; 0x4716
    mov cx, ax                       ; 0x4718
    pop ax                           ; 0x471a
    mul bx                           ; 0x471b
    add dx, cx                       ; 0x471d
    mov cx, word [bp - 0x0024]       ; 0x471f
    mov bx, word [bp - 0x0022]       ; 0x4722
    call ds_dispatch_f99f            ; 0x4725
    mov cx, 0x19                     ; 0x4728
    mov bx, 0                        ; 0x472b
    call ds_dispatch_f99f            ; 0x472e
    push ax                          ; 0x4731
    xchg dx, ax                      ; 0x4732
    mov bx, 5                        ; 0x4733
    mul bx                           ; 0x4736
    mov cx, ax                       ; 0x4738
    pop ax                           ; 0x473a
    mul bx                           ; 0x473b
    add dx, cx                       ; 0x473d
    add ax, strict word 0xffec       ; 0x473f
    adc dx, byte 0xff                ; 0x4742
    mov word [bp - 0x001c], ax       ; 0x4745
@..api_idx_0024.l11:
    mov ax, word [bp + 0x4]          ; 0x4748
    shl ax, 1                        ; 0x474b
    mov bx, ax                       ; 0x474d
    mov bx, word [bx - 0x7b70]       ; 0x474f
    mov al, byte [bx + 0xe2]         ; 0x4753
    sub ah, ah                       ; 0x4757
    test ax, 1                       ; 0x4759
    je short @..api_idx_0024.l13     ; 0x475c
    cmp word [bp - 0x001c], byte 0   ; 0x475e
    jge short @..api_idx_0024.l12    ; 0x4762
    mov word [bp - 0x001c], 0        ; 0x4764
@..api_idx_0024.l12:
    mov ax, word [bp + 0x4]          ; 0x4769
    shl ax, 1                        ; 0x476c
    mov bx, ax                       ; 0x476e
    mov bx, word [bx - 0x7b7e]       ; 0x4770
    mov ax, word [bx + 0x4]          ; 0x4774
    shl ax, 1                        ; 0x4777
    mov cx, word [bx + 0x2]          ; 0x4779
    inc cx                           ; 0x477c
    cwd                              ; 0x477d
    idiv cx                          ; 0x477e
    add word [bp - 0x001c], ax       ; 0x4780
    mov ax, word [bp - 0x001c]       ; 0x4783
    shl ax, 1                        ; 0x4786
    add ax, strict word 0xa          ; 0x4788
    mov word [bp - 0x001c], ax       ; 0x478b
@..api_idx_0024.l13:
    mov word [bp - 0x0002], 0        ; 0x478e
    jmp near @..local.l288           ; 0x4793
@..api_idx_0024.l14:
    mov ax, 0x2c                     ; 0x4796
    imul word [bp - 0x0002]          ; 0x4799
    mov cx, ax                       ; 0x479c
    mov ax, word [bp + 0x4]          ; 0x479e
    shl ax, 1                        ; 0x47a1
    mov bx, ax                       ; 0x47a3
    mov ax, word [bx - 0x7b7e]       ; 0x47a5
    add ax, cx                       ; 0x47a9
    mov word [bp - 0x0008], ax       ; 0x47ab
    mov ax, 0xa                      ; 0x47ae
    push ax                          ; 0x47b1
    call ds_dispatch_b7a9            ; 0x47b2
    pop cx                           ; 0x47b5
    push ax                          ; 0x47b6
    mov ax, 0x2c                     ; 0x47b7
    imul word [bp - 0x0002]          ; 0x47ba
    mov si, ax                       ; 0x47bd
    mov ax, word [bp + 0x4]          ; 0x47bf
    shl ax, 1                        ; 0x47c2
    mov bx, ax                       ; 0x47c4
    mov bx, word [bx - 0x7b7e]       ; 0x47c6
    mov al, byte [bx + si + 0x29]    ; 0x47ca
    cbw                              ; 0x47cd
    mov cx, ax                       ; 0x47ce
    pop ax                           ; 0x47d0
    add ax, cx                       ; 0x47d1
    push ax                          ; 0x47d3
    mov ax, word [bp + 0x4]          ; 0x47d4
    shl ax, 1                        ; 0x47d7
    mov bx, ax                       ; 0x47d9
    mov bx, word [bx - 0x7b70]       ; 0x47db
    mov al, byte [bx + 0xd9]         ; 0x47df
    sub ah, ah                       ; 0x47e3
    mov cx, ax                       ; 0x47e5
    pop ax                           ; 0x47e7
    add ax, cx                       ; 0x47e8
    mov word [bp - 0x000a], ax       ; 0x47ea
    cmp ax, strict word 1            ; 0x47ed
    jge short @..local.l232          ; 0x47f0
    mov word [bp - 0x000a], 1        ; 0x47f2
@..local.l232:
    cmp word [bp - 0x000a], byte 0x64 ; 0x47f7
    jle short @..local.l233          ; 0x47fb
    mov word [bp - 0x000a], 0x64     ; 0x47fd
@..local.l233:
    mov ax, word [bp - 0x000a]       ; 0x4802
    push ax                          ; 0x4805
    mov al, byte [bx + 0xdb]         ; 0x4806
    sub ah, ah                       ; 0x480a
    mov cx, ax                       ; 0x480c
    pop ax                           ; 0x480e
    cwd                              ; 0x480f
    idiv cx                          ; 0x4810
    mov word [bp - 0x000c], ax       ; 0x4812
    mov al, byte [bx + 0xe2]         ; 0x4815
    sub ah, ah                       ; 0x4819
    test ax, data_0002               ; 0x481b
    je short @..local.l234           ; 0x481e
    mov bx, word [bp - 0x0008]       ; 0x4820
    mov byte [bx + 0x24], 1          ; 0x4823
@..local.l234:
    mov bx, word [bp - 0x0008]       ; 0x4827
    cmp byte [bx + 0x24], 0          ; 0x482a
    jbe short @..local.l235          ; 0x482e
    mov ax, word [bp - 0x000a]       ; 0x4830
    mov cx, data_0002                ; 0x4833
    cwd                              ; 0x4836
    idiv cx                          ; 0x4837
    push ax                          ; 0x4839
    call ds_dispatch_b7a9            ; 0x483a
    pop cx                           ; 0x483d
    push ax                          ; 0x483e
    mov ax, 0x14                     ; 0x483f
    push ax                          ; 0x4842
    call ds_dispatch_b7a9            ; 0x4843
    pop cx                           ; 0x4846
    mov cx, ax                       ; 0x4847
    pop ax                           ; 0x4849
    add ax, cx                       ; 0x484a
    push ax                          ; 0x484c
    mov ax, word [bp - 0x000a]       ; 0x484d
    mov cx, data_0002                ; 0x4850
    cwd                              ; 0x4853
    idiv cx                          ; 0x4854
    mov cx, ax                       ; 0x4856
    pop ax                           ; 0x4858
    add ax, cx                       ; 0x4859
    mov bx, word [bp - 0x0008]       ; 0x485b
    mov byte [bx + 0x25], al         ; 0x485e
@..local.l235:
    mov bx, word [bp - 0x0008]       ; 0x4861
    mov byte [bx + 0x21], 0          ; 0x4864
    push word [bp + 0x4]             ; 0x4868
    call api_idx_0002_2              ; 0x486b
    pop cx                           ; 0x486e
    mov bx, word [bp - 0x0008]       ; 0x486f
    mov byte [bx + 0x1c], al         ; 0x4872
    mov word [bp - 0x0016], 0        ; 0x4875
@..local.l236:
    push word [bp + 0x4]             ; 0x487a
    call api_idx_0002_2              ; 0x487d
    pop cx                           ; 0x4880
    mov bx, word [bp - 0x0008]       ; 0x4881
    mov byte [bx + 0x1d], al         ; 0x4884
    inc word [bp - 0x0016]           ; 0x4887
    mov bx, word [bp - 0x0008]       ; 0x488a
    mov al, byte [bx + 0x1d]         ; 0x488d
    mov cl, byte [bx + 0x1c]         ; 0x4890
    cmp al, cl                       ; 0x4893
    jne short @..local.l237          ; 0x4895
    cmp word [bp - 0x0016], byte 3   ; 0x4897
    jl short @..local.l236           ; 0x489b
@..local.l237:
    mov word [bp - 0x000e], 0        ; 0x489d
@..local.l238:
    mov ax, word [bp + 0x4]          ; 0x48a2
    shl ax, 1                        ; 0x48a5
    mov bx, ax                       ; 0x48a7
    mov bx, word [bx - 0x7b70]       ; 0x48a9
    mov al, byte [bx + 0xdb]         ; 0x48ad
    sub ah, ah                       ; 0x48b1
    cmp ax, word [bp - 0x000e]       ; 0x48b3
    jle short @..local.l239          ; 0x48b6
    mov bx, word [bp - 0x0008]       ; 0x48b8
    cmp byte [bx + 0x22], data_0002  ; 0x48bb
    jae short @..local.l239          ; 0x48bf
    cmp byte [bx + 0x11], 0          ; 0x48c1
    ja short @..local.l239           ; 0x48c5
    cmp byte [bx + 0x10], 0          ; 0x48c7
    jbe short @..local.l240          ; 0x48cb
@..local.l239:
    mov bx, word [bp - 0x0008]       ; 0x48cd
    mov si, word [bp - 0x000e]       ; 0x48d0
    mov byte [bx + si + 0x18], 0     ; 0x48d3
    jmp short @..local.l241          ; 0x48d7
@..local.l240:
    mov al, byte [bp - 0x000a]       ; 0x48d9
    mov bx, word [bp - 0x0008]       ; 0x48dc
    mov si, word [bp - 0x000e]       ; 0x48df
    mov byte [bx + si + 0x18], al    ; 0x48e2
    mov ax, word [bp - 0x000c]       ; 0x48e5
    sub word [bp - 0x000a], ax       ; 0x48e8
@..local.l241:
    inc word [bp - 0x000e]           ; 0x48eb
    mov ax, word [bp - 0x000e]       ; 0x48ee
    cmp ax, strict word 4            ; 0x48f1
    jl short @..local.l238           ; 0x48f4
    mov word [bp - 0x0018], 0xffff   ; 0x48f6
    mov al, byte [bp + 0x6]          ; 0x48fb
    mov bx, word [bp - 0x0008]       ; 0x48fe
    mov byte [bx + 0x1f], al         ; 0x4901
@..local.l242:
    mov ax, word [bp + 0x6]          ; 0x4904
    shl ax, 1                        ; 0x4907
    mov bx, ax                       ; 0x4909
    mov bx, word [bx - 0x7b7e]       ; 0x490b
    mov al, byte [bx + 0x1a1]        ; 0x490f
    sub ah, ah                       ; 0x4913
    push ax                          ; 0x4915
    call ds_dispatch_b7a9            ; 0x4916
    pop cx                           ; 0x4919
    mov bx, word [bp - 0x0008]       ; 0x491a
    mov byte [bx + 0x20], al         ; 0x491d
    mov bx, word [bp - 0x0008]       ; 0x4920
    mov al, byte [bx + 0x20]         ; 0x4923
    sub ah, ah                       ; 0x4926
    mov cx, 0x2c                     ; 0x4928
    imul cx                          ; 0x492b
    mov si, ax                       ; 0x492d
    mov al, byte [bx + 0x1f]         ; 0x492f
    sub ah, ah                       ; 0x4932
    shl ax, 1                        ; 0x4934
    mov bx, ax                       ; 0x4936
    mov bx, word [bx - 0x7b7e]       ; 0x4938
    cmp byte [bx + si + 0x22], 3     ; 0x493c
    jae short @..local.l242          ; 0x4940
    mov ax, 0x64                     ; 0x4942
    push ax                          ; 0x4945
    call ds_dispatch_b7a9            ; 0x4946
    pop cx                           ; 0x4949
    push ax                          ; 0x494a
    mov ax, word [bp + 0x4]          ; 0x494b
    shl ax, 1                        ; 0x494e
    mov bx, ax                       ; 0x4950
    mov bx, word [bx - 0x7b70]       ; 0x4952
    mov al, byte [bx + 0xae]         ; 0x4956
    sub ah, ah                       ; 0x495a
    mov cx, ax                       ; 0x495c
    pop ax                           ; 0x495e
    cmp ax, cx                       ; 0x495f
    jl short @..local.l243           ; 0x4961
    jmp near @..local.l256           ; 0x4963
@..local.l243:
    mov word [bp - 0x0018], 3        ; 0x4966
    mov bx, word [bp - 0x0008]       ; 0x496b
    mov byte [bx + 0x1e], 3          ; 0x496e
    mov ax, 0x64                     ; 0x4972
    push ax                          ; 0x4975
    call ds_dispatch_b7a9            ; 0x4976
    pop cx                           ; 0x4979
    mov word [bp - 0x0012], ax       ; 0x497a
    mov word [bp - 0x0016], 5        ; 0x497d
    mov word [bp - 0x0010], 0        ; 0x4982
    mov word [bp - 0x001a], 0xffff   ; 0x4987
@..local.l244:
    mov ax, word [bp - 0x0012]       ; 0x498c
    cmp ax, word [bp - 0x0016]       ; 0x498f
    jge short @..local.l245          ; 0x4992
    mov ax, word [bp + 0x4]          ; 0x4994
    shl ax, 1                        ; 0x4997
    mov bx, ax                       ; 0x4999
    mov bx, word [bx - 0x7b70]       ; 0x499b
    mov si, word [bp - 0x0010]       ; 0x499f
    mov al, byte [bx + si + 0x90]    ; 0x49a2
    sub ah, ah                       ; 0x49a6
    mov word [bp - 0x001a], ax       ; 0x49a8
@..local.l245:
    inc word [bp - 0x0010]           ; 0x49ab
    cmp word [bp - 0x0016], byte 0x0f ; 0x49ae
    jge short @..local.l246          ; 0x49b2
    add word [bp - 0x0016], byte 5   ; 0x49b4
    jmp short @..local.l248          ; 0x49b8
@..local.l246:
    cmp word [bp - 0x0016], byte 0x37 ; 0x49ba
    jge short @..local.l247          ; 0x49be
    add word [bp - 0x0016], byte 0x0a ; 0x49c0
    jmp short @..local.l248          ; 0x49c4
@..local.l247:
    add word [bp - 0x0016], byte 0x0f ; 0x49c6
@..local.l248:
    cmp word [bp - 0x001a], byte 0xff ; 0x49ca
    je short @..local.l244           ; 0x49ce
    mov ax, 6                        ; 0x49d0
    imul word [bp - 0x001a]          ; 0x49d3
    mov bx, ax                       ; 0x49d6
    cmp byte [bx + 0x624], 1         ; 0x49d8
    je short @..local.l249           ; 0x49dd
    mov ax, word [bp - 0x001a]       ; 0x49df
    cmp ax, strict word 0x58         ; 0x49e2
    je short @..local.l249           ; 0x49e5
    cmp ax, strict word 0x13         ; 0x49e7
    je short @..local.l249           ; 0x49ea
    cmp ax, strict word 0x42         ; 0x49ec
    jne short @..local.l252          ; 0x49ef
@..local.l249:
    cmp word [bp + 0x4], byte 6      ; 0x49f1
    jne short @..local.l251          ; 0x49f5
    mov ax, 0                        ; 0x49f7
    push ax                          ; 0x49fa
    push word [bp - 0x0008]          ; 0x49fb
    call api_idx_0004_4              ; 0x49fe
    add sp, byte 4                   ; 0x4a01
    test ax, ax                      ; 0x4a04
    jne short @..local.l250          ; 0x4a06
    mov ax, 6                        ; 0x4a08
    push ax                          ; 0x4a0b
    push word [bp - 0x0008]          ; 0x4a0c
    call api_idx_0004_4              ; 0x4a0f
    add sp, byte 4                   ; 0x4a12
    test ax, ax                      ; 0x4a15
    jne short @..local.l250          ; 0x4a17
    mov word [bp - 0x0018], 0xffff   ; 0x4a19
@..local.l250:
    jmp short @..local.l252          ; 0x4a1e
@..local.l251:
    push word [bp + 0x4]             ; 0x4a20
    push word [bp - 0x0008]          ; 0x4a23
    call api_idx_0004_4              ; 0x4a26
    add sp, byte 4                   ; 0x4a29
    test ax, ax                      ; 0x4a2c
    jne short @..local.l252          ; 0x4a2e
    push word [data_8466]            ; 0x4a30
    call ds_dispatch_b7a9            ; 0x4a34
    pop cx                           ; 0x4a37
    inc ax                           ; 0x4a38
    push ax                          ; 0x4a39
    push word [bp - 0x0008]          ; 0x4a3a
    call api_idx_0004_4              ; 0x4a3d
    add sp, byte 4                   ; 0x4a40
    test ax, ax                      ; 0x4a43
    jne short @..local.l252          ; 0x4a45
    mov word [bp - 0x0018], 0xffff   ; 0x4a47
@..local.l252:
    mov ax, 6                        ; 0x4a4c
    imul word [bp - 0x001a]          ; 0x4a4f
    mov bx, ax                       ; 0x4a52
    mov al, byte [bx + 0x621]        ; 0x4a54
    sub ah, ah                       ; 0x4a58
    mov cx, ax                       ; 0x4a5a
    mov bx, word [bp - 0x0008]       ; 0x4a5c
    mov ax, word [bx]                ; 0x4a5f
    sub ax, cx                       ; 0x4a61
    inc ax                           ; 0x4a63
    mov word [bp - 0x0012], ax       ; 0x4a64
    mov ax, 1                        ; 0x4a67
    mov cx, word [bp - 0x0012]       ; 0x4a6a
    cmp cx, byte 1                   ; 0x4a6d
    jl short @..local.l253           ; 0x4a70
    mov ax, cx                       ; 0x4a72
    push ax                          ; 0x4a74
    cmp ax, strict word 6            ; 0x4a75
    pop ax                           ; 0x4a78
    jle short @..local.l253          ; 0x4a79
    mov ax, 6                        ; 0x4a7b
@..local.l253:
    mov word [bp - 0x0012], ax       ; 0x4a7e
@..local.l254:
    mov bx, word [bp - 0x0008]       ; 0x4a81
    push word [bx]                   ; 0x4a84
    call ds_dispatch_b7a9            ; 0x4a86
    pop cx                           ; 0x4a89
    inc ax                           ; 0x4a8a
    cmp ax, word [bp - 0x0012]       ; 0x4a8b
    jge short @..local.l255          ; 0x4a8e
    dec word [bp - 0x0012]           ; 0x4a90
    jmp short @..local.l254          ; 0x4a93
@..local.l255:
    mov ax, word [bp - 0x0012]       ; 0x4a95
    xchg al, ah                      ; 0x4a98
    sub al, al                       ; 0x4a9a
    add ax, word [bp - 0x001a]       ; 0x4a9c
    mov bx, word [bp - 0x0008]       ; 0x4a9f
    mov word [bx + 0xa], ax          ; 0x4aa2
@..local.l256:
    cmp word [bp - 0x0018], byte 0xff ; 0x4aa5
    jne short @..local.l257          ; 0x4aa9
    mov ax, 0x64                     ; 0x4aab
    push ax                          ; 0x4aae
    call ds_dispatch_b7a9            ; 0x4aaf
    pop cx                           ; 0x4ab2
    push ax                          ; 0x4ab3
    mov ax, word [bp + 0x4]          ; 0x4ab4
    shl ax, 1                        ; 0x4ab7
    mov bx, ax                       ; 0x4ab9
    mov bx, word [bx - 0x7b70]       ; 0x4abb
    mov al, byte [bx + 0xb0]         ; 0x4abf
    sub ah, ah                       ; 0x4ac3
    mov cx, ax                       ; 0x4ac5
    pop ax                           ; 0x4ac7
    cmp ax, cx                       ; 0x4ac8
    jge short @..local.l257          ; 0x4aca
    mov word [bp - 0x0018], 5        ; 0x4acc
    mov bx, word [bp - 0x0008]       ; 0x4ad1
    mov byte [bx + 0x1e], 5          ; 0x4ad4
    mov ax, word [bp + 0x4]          ; 0x4ad8
    shl ax, 1                        ; 0x4adb
    mov bx, ax                       ; 0x4add
    mov bx, word [bx - 0x7b70]       ; 0x4adf
    mov al, byte [bx + 0xde]         ; 0x4ae3
    sub ah, ah                       ; 0x4ae7
    mov bx, word [bp - 0x0008]       ; 0x4ae9
    mov word [bx + 0xa], ax          ; 0x4aec
@..local.l257:
    cmp word [bp - 0x0018], byte 0xff ; 0x4aef
    je short @..local.l258           ; 0x4af3
    jmp near @..local.l274           ; 0x4af5
@..local.l258:
    mov word [bp - 0x0012], 0        ; 0x4af8
    mov bx, word [bp - 0x0008]       ; 0x4afd
    cmp byte [bx + 0x22], data_0002  ; 0x4b00
    jb short @..local.l259           ; 0x4b04
    jmp near @..local.l264           ; 0x4b06
@..local.l259:
    cmp byte [bx + 0x11], 0          ; 0x4b09
    je short @..local.l260           ; 0x4b0d
    jmp near @..local.l264           ; 0x4b0f
@..local.l260:
    cmp byte [bx + 0x10], 0          ; 0x4b12
    jne short @..local.l264          ; 0x4b16
    mov al, byte [bx + 0x1c]         ; 0x4b18
    sub ah, ah                       ; 0x4b1b
    mov word [bp - 0x0014], ax       ; 0x4b1d
    cmp word [bp + 0x4], byte 6      ; 0x4b20
    jne short @..local.l261          ; 0x4b24
    mov word [bp - 0x0012], 9        ; 0x4b26
    jmp short @..local.l264          ; 0x4b2b
@..local.l261:
    cmp word [bp + 0x4], byte 3      ; 0x4b2d
    jl short @..local.l262           ; 0x4b31
    mov cx, 0x12                     ; 0x4b33
    imul cx                          ; 0x4b36
    mov si, ax                       ; 0x4b38
    mov ax, word [bp + 0x4]          ; 0x4b3a
    shl ax, 1                        ; 0x4b3d
    mov bx, ax                       ; 0x4b3f
    mov bx, word [bx - 0x7b70]       ; 0x4b41
    cmp byte [bx + si + 0x51], 1     ; 0x4b45
    jbe short @..local.l264          ; 0x4b49
@..local.l262:
    mov word [bp - 0x0012], 3        ; 0x4b4b
    mov ax, 0x12                     ; 0x4b50
    imul word [bp - 0x0014]          ; 0x4b53
    mov si, ax                       ; 0x4b56
    mov ax, word [bp + 0x4]          ; 0x4b58
    shl ax, 1                        ; 0x4b5b
    mov bx, ax                       ; 0x4b5d
    mov bx, word [bx - 0x7b70]       ; 0x4b5f
    mov al, byte [bx + si + 0x51]    ; 0x4b63
    sub ah, ah                       ; 0x4b66
    mov cx, data_0002                ; 0x4b68
    cmp word [bp + 0x4], byte 3      ; 0x4b6b
    jge short @..local.l263          ; 0x4b6f
    mov cx, 0                        ; 0x4b71
@..local.l263:
    cmp ax, cx                       ; 0x4b74
    jle short @..local.l264          ; 0x4b76
    mov word [bp - 0x0012], 6        ; 0x4b78
@..local.l264:
    mov ax, word [bp + 0x6]          ; 0x4b7d
    shl ax, 1                        ; 0x4b80
    mov bx, ax                       ; 0x4b82
    mov bx, word [bx - 0x7b7e]       ; 0x4b84
    mov al, byte [bx + 0x1a1]        ; 0x4b88
    sub ah, ah                       ; 0x4b8c
    cmp ax, word [bp - 0x0012]       ; 0x4b8e
    jge short @..local.l265          ; 0x4b91
    mov word [bp - 0x0012], ax       ; 0x4b93
@..local.l265:
    mov word [bp - 0x0010], 0        ; 0x4b96
    mov word [bp - 0x0016], 0        ; 0x4b9b
    jmp short @..local.l268          ; 0x4ba0
@..local.l266:
    mov ax, 0x2c                     ; 0x4ba2
    imul word [bp - 0x0016]          ; 0x4ba5
    mov si, ax                       ; 0x4ba8
    mov ax, word [bp + 0x6]          ; 0x4baa
    shl ax, 1                        ; 0x4bad
    mov bx, ax                       ; 0x4baf
    mov bx, word [bx - 0x7b7e]       ; 0x4bb1
    cmp byte [bx + si + 0x22], 3     ; 0x4bb5
    jae short @..local.l267          ; 0x4bb9
    inc word [bp - 0x0010]           ; 0x4bbb
@..local.l267:
    inc word [bp - 0x0016]           ; 0x4bbe
@..local.l268:
    mov ax, word [bp - 0x0016]       ; 0x4bc1
    cmp ax, word [bp - 0x0012]       ; 0x4bc4
    jl short @..local.l266           ; 0x4bc7
    cmp word [bp - 0x0010], byte 0   ; 0x4bc9
    jg short @..local.l269           ; 0x4bcd
    jmp near @..local.l273           ; 0x4bcf
@..local.l269:
    mov bx, word [bp - 0x0008]       ; 0x4bd2
    mov byte [bx + 0x1e], 0          ; 0x4bd5
    mov al, byte [bp + 0x6]          ; 0x4bd9
    mov bx, word [bp - 0x0008]       ; 0x4bdc
    mov byte [bx + 0x1f], al         ; 0x4bdf
    push word [bp - 0x0010]          ; 0x4be2
    call ds_dispatch_b7a9            ; 0x4be5
    pop cx                           ; 0x4be8
    mov bx, word [bp - 0x0008]       ; 0x4be9
    mov byte [bx + 0x20], al         ; 0x4bec
    mov bx, word [bp - 0x0008]       ; 0x4bef
    mov al, byte [bx + 0x1c]         ; 0x4bf2
    sub ah, ah                       ; 0x4bf5
    mov word [bp - 0x0014], ax       ; 0x4bf7
    mov ax, word [bp + 0x4]          ; 0x4bfa
    shl ax, 1                        ; 0x4bfd
    mov bx, ax                       ; 0x4bff
    mov bx, word [bx - 0x7b70]       ; 0x4c01
    mov si, word [bp - 0x0014]       ; 0x4c05
    cmp byte [bx + si + 0x86], data_0002 ; 0x4c08
    jne short @..local.l270          ; 0x4c0d
    mov bx, word [bp - 0x0008]       ; 0x4c0f
    mov word [bx + 0xa], 4           ; 0x4c12
    jmp short @..local.l272          ; 0x4c17
@..local.l270:
    mov ax, word [bp + 0x4]          ; 0x4c19
    shl ax, 1                        ; 0x4c1c
    mov bx, ax                       ; 0x4c1e
    mov bx, word [bx - 0x7b70]       ; 0x4c20
    mov si, word [bp - 0x0014]       ; 0x4c24
    cmp byte [bx + si + 0x86], 3     ; 0x4c27
    jne short @..local.l271          ; 0x4c2c
    mov bx, word [bp - 0x0008]       ; 0x4c2e
    mov word [bx + 0xa], 8           ; 0x4c31
    jmp short @..local.l272          ; 0x4c36
@..local.l271:
    mov ax, 0x12                     ; 0x4c38
    imul word [bp - 0x0014]          ; 0x4c3b
    mov cx, ax                       ; 0x4c3e
    mov ax, word [bp + 0x4]          ; 0x4c40
    shl ax, 1                        ; 0x4c43
    mov bx, ax                       ; 0x4c45
    mov ax, word [bx - 0x7b70]       ; 0x4c47
    add ax, cx                       ; 0x4c4b
    add ax, strict word 0x53         ; 0x4c4d
    push ax                          ; 0x4c50
    call api_idx_0006_3              ; 0x4c51
    pop cx                           ; 0x4c54
    mov bx, word [bp - 0x0008]       ; 0x4c55
    mov word [bx + 0xa], ax          ; 0x4c58
@..local.l272:
    jmp short @..local.l274          ; 0x4c5b
@..local.l273:
    mov bx, word [bp - 0x0008]       ; 0x4c5d
    mov byte [bx + 0x18], 0          ; 0x4c60
@..local.l274:
    mov ax, 0x64                     ; 0x4c64
    push ax                          ; 0x4c67
    call ds_dispatch_b7a9            ; 0x4c68
    pop cx                           ; 0x4c6b
    mov word [bp - 0x0006], ax       ; 0x4c6c
    mov bx, word [bp - 0x0008]       ; 0x4c6f
    cmp byte [bx + 0xf], 0           ; 0x4c72
    jbe short @..local.l275          ; 0x4c76
    mov cx, word [bp - 0x001c]       ; 0x4c78
    add cx, byte 0x0a                ; 0x4c7b
    jmp short @..local.l276          ; 0x4c7e
@..local.l275:
    mov cx, word [bp - 0x001c]       ; 0x4c80
@..local.l276:
    cmp cx, ax                       ; 0x4c83
    jle short @..local.l277          ; 0x4c85
    mov ax, word [bp + 0x4]          ; 0x4c87
    shl ax, 1                        ; 0x4c8a
    mov bx, ax                       ; 0x4c8c
    mov bx, word [bx - 0x7b70]       ; 0x4c8e
    mov al, byte [bx + 0xb2]         ; 0x4c92
    sub ah, ah                       ; 0x4c96
    mov cx, ax                       ; 0x4c98
    mov ax, word [bp - 0x0006]       ; 0x4c9a
    cmp cx, ax                       ; 0x4c9d
    jle short @..local.l277          ; 0x4c9f
    mov word [bp - 0x0018], 6        ; 0x4ca1
    mov bx, word [bp - 0x0008]       ; 0x4ca6
    mov byte [bx + 0x1e], 6          ; 0x4ca9
@..local.l277:
    mov bx, word [bp - 0x0008]       ; 0x4cad
    mov word [bx + 0xc], 0xffff      ; 0x4cb0
    mov bx, word [bp - 0x0008]       ; 0x4cb5
    cmp byte [bx + 0x1e], 0          ; 0x4cb8
    je short @..local.l278           ; 0x4cbc
    jmp near @..local.l285           ; 0x4cbe
@..local.l278:
    mov al, byte [bx + 0x1d]         ; 0x4cc1
    sub ah, ah                       ; 0x4cc4
    mov word [bp - 0x0014], ax       ; 0x4cc6
    cmp word [bp + 0x4], byte 3      ; 0x4cc9
    jl short @..local.l279           ; 0x4ccd
    mov cx, 0x12                     ; 0x4ccf
    imul cx                          ; 0x4cd2
    mov si, ax                       ; 0x4cd4
    mov ax, word [bp + 0x4]          ; 0x4cd6
    shl ax, 1                        ; 0x4cd9
    mov bx, ax                       ; 0x4cdb
    mov bx, word [bx - 0x7b70]       ; 0x4cdd
    cmp byte [bx + si + 0x51], 1     ; 0x4ce1
    jbe short @..local.l283          ; 0x4ce5
@..local.l279:
    mov ax, word [bp + 0x4]          ; 0x4ce7
    shl ax, 1                        ; 0x4cea
    mov bx, ax                       ; 0x4cec
    mov bx, word [bx - 0x7b70]       ; 0x4cee
    mov si, word [bp - 0x0014]       ; 0x4cf2
    cmp byte [bx + si + 0x86], data_0002 ; 0x4cf5
    jne short @..local.l280          ; 0x4cfa
    mov bx, word [bp - 0x0008]       ; 0x4cfc
    mov word [bx + 0xc], 4           ; 0x4cff
    jmp short @..local.l282          ; 0x4d04
@..local.l280:
    mov ax, word [bp + 0x4]          ; 0x4d06
    shl ax, 1                        ; 0x4d09
    mov bx, ax                       ; 0x4d0b
    mov bx, word [bx - 0x7b70]       ; 0x4d0d
    mov si, word [bp - 0x0014]       ; 0x4d11
    cmp byte [bx + si + 0x86], 3     ; 0x4d14
    jne short @..local.l281          ; 0x4d19
    mov bx, word [bp - 0x0008]       ; 0x4d1b
    mov word [bx + 0xc], 8           ; 0x4d1e
    jmp short @..local.l282          ; 0x4d23
@..local.l281:
    mov ax, 0x12                     ; 0x4d25
    imul word [bp - 0x0014]          ; 0x4d28
    mov cx, ax                       ; 0x4d2b
    mov ax, word [bp + 0x4]          ; 0x4d2d
    shl ax, 1                        ; 0x4d30
    mov bx, ax                       ; 0x4d32
    mov ax, word [bx - 0x7b70]       ; 0x4d34
    add ax, cx                       ; 0x4d38
    add ax, strict word 0x53         ; 0x4d3a
    push ax                          ; 0x4d3d
    call api_idx_0006_3              ; 0x4d3e
    pop cx                           ; 0x4d41
    mov bx, word [bp - 0x0008]       ; 0x4d42
    mov word [bx + 0xc], ax          ; 0x4d45
@..local.l282:
    jmp short @..local.l284          ; 0x4d48
@..local.l283:
    mov bx, word [bp - 0x0008]       ; 0x4d4a
    mov byte [bx + 0x19], 0          ; 0x4d4d
    mov bx, word [bp - 0x0008]       ; 0x4d51
    mov byte [bx + 0x1b], 0          ; 0x4d54
@..local.l284:
    jmp short @..local.l287          ; 0x4d58
@..local.l285:
    mov word [bp - 0x0004], 1        ; 0x4d5a
@..local.l286:
    mov bx, word [bp - 0x0008]       ; 0x4d5f
    mov si, word [bp - 0x0004]       ; 0x4d62
    mov byte [bx + si + 0x18], 0     ; 0x4d65
    inc word [bp - 0x0004]           ; 0x4d69
    mov ax, word [bp - 0x0004]       ; 0x4d6c
    cmp ax, strict word 4            ; 0x4d6f
    jl short @..local.l286           ; 0x4d72
@..local.l287:
    inc word [bp - 0x0002]           ; 0x4d74
@..local.l288:
    mov ax, word [bp + 0x4]          ; 0x4d77
    shl ax, 1                        ; 0x4d7a
    mov bx, ax                       ; 0x4d7c
    mov bx, word [bx - 0x7b7e]       ; 0x4d7e
    mov al, byte [bx + 0x1a1]        ; 0x4d82
    sub ah, ah                       ; 0x4d86
    cmp ax, word [bp - 0x0002]       ; 0x4d88
    jle short @..local.l289          ; 0x4d8b
    jmp near @..api_idx_0024.l14     ; 0x4d8d
@..local.l289:
    ret                              ; 0x4d90
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x4d91
    call ds_dispatch_f40b            ; 0x4d94
    mov al, byte [data_69c8]         ; 0x4d97
    mov bx, word [data_8482]         ; 0x4d9a
    mov byte [bx + 0x1a1], al        ; 0x4d9e
    mov word [bp - 0x0002], 1        ; 0x4da2
    jmp short @..api_idx_0002_3.l5   ; 0x4da7
@..api_idx_0002_3.l1:
    mov bx, word [data_848e]         ; 0x4da9
    cmp byte [bx + 0x1a1], 0         ; 0x4dad
    jbe short @..api_idx_0002_3.l2   ; 0x4db2
    mov ax, 4                        ; 0x4db4
    push ax                          ; 0x4db7
    call ds_dispatch_b7a9            ; 0x4db8
    pop cx                           ; 0x4dbb
    cmp ax, strict word 1            ; 0x4dbc
    jne short @..api_idx_0002_3.l2   ; 0x4dbf
    mov ax, word [bp - 0x0002]       ; 0x4dc1
    shl ax, 1                        ; 0x4dc4
    mov bx, ax                       ; 0x4dc6
    mov bx, word [bx - 0x7b70]       ; 0x4dc8
    cmp byte [bx + 0xd6], 0x16       ; 0x4dcc
    je short @..api_idx_0002_3.l2    ; 0x4dd1
    cmp word [data_0e36], strict word 0xe1 ; 0x4dd3
    jne short @..api_idx_0002_3.l3   ; 0x4dd9
@..api_idx_0002_3.l2:
    mov ax, 0                        ; 0x4ddb
    push ax                          ; 0x4dde
    push word [bp - 0x0002]          ; 0x4ddf
    call api_idx_0024                ; 0x4de2
    add sp, byte 4                   ; 0x4de5
    jmp short @..api_idx_0002_3.l4   ; 0x4de8
@..api_idx_0002_3.l3:
    mov ax, 6                        ; 0x4dea
    push ax                          ; 0x4ded
    push word [bp - 0x0002]          ; 0x4dee
    call api_idx_0024                ; 0x4df1
    add sp, byte 4                   ; 0x4df4
@..api_idx_0002_3.l4:
    inc word [bp - 0x0002]           ; 0x4df7
@..api_idx_0002_3.l5:
    mov ax, word [bp - 0x0002]       ; 0x4dfa
    cmp ax, word [data_8466]         ; 0x4dfd
    jle short @..api_idx_0002_3.l1   ; 0x4e01
    mov bx, word [data_848e]         ; 0x4e03
    cmp byte [bx + 0x1a1], 0         ; 0x4e07
    jbe short @..api_idx_0002_3.l8   ; 0x4e0c
    mov word [bp - 0x0002], 1        ; 0x4e0e
@..api_idx_0002_3.l6:
    mov ax, word [bp - 0x0002]       ; 0x4e13
    cmp ax, word [data_8466]         ; 0x4e16
    jge short @..api_idx_0002_3.l7   ; 0x4e1a
    mov ax, 3                        ; 0x4e1c
    push ax                          ; 0x4e1f
    call ds_dispatch_b7a9            ; 0x4e20
    pop cx                           ; 0x4e23
    test ax, ax                      ; 0x4e24
    jne short @..api_idx_0002_3.l7   ; 0x4e26
    inc word [bp - 0x0002]           ; 0x4e28
    jmp short @..api_idx_0002_3.l6   ; 0x4e2b
@..api_idx_0002_3.l7:
    push word [bp - 0x0002]          ; 0x4e2d
    mov ax, 6                        ; 0x4e30
    push ax                          ; 0x4e33
    call api_idx_0024                ; 0x4e34
    add sp, byte 4                   ; 0x4e37
@..api_idx_0002_3.l8:
    ret                              ; 0x4e3a
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x4e3b
    call ds_dispatch_f40b            ; 0x4e3e
    mov word [data_90d6], 5          ; 0x4e41
    mov word [data_9386], data_0002  ; 0x4e47
    mov word [data_9388], data_0002  ; 0x4e4d
    mov word [data_938a], 3          ; 0x4e53
    mov word [data_938c], 5          ; 0x4e59
    mov ax, 3                        ; 0x4e5f
    push ax                          ; 0x4e62
    call api_idx_0006                ; 0x4e63
    pop cx                           ; 0x4e66
    mov ax, 3                        ; 0x4e67
    push ax                          ; 0x4e6a
    call loc_02af                    ; 0x4e6b
    pop cx                           ; 0x4e6e
    call api_idx_00d4                ; 0x4e6f
    mov word [bp - 0x0004], ax       ; 0x4e72
    mov ax, 3                        ; 0x4e75
    push ax                          ; 0x4e78
    call api_idx_0006                ; 0x4e79
    pop cx                           ; 0x4e7c
    mov ax, 3                        ; 0x4e7d
    push ax                          ; 0x4e80
    call loc_02af                    ; 0x4e81
    pop cx                           ; 0x4e84
    cmp word [bp - 0x0004], byte 0   ; 0x4e85
    je short @..api_idx_0004_5.l1    ; 0x4e89
    mov word [data_830a], 0xe        ; 0x4e8b
    jmp short @..api_idx_0004_5.l2   ; 0x4e91
@..api_idx_0004_5.l1:
    call api_idx_0002_3              ; 0x4e93
    mov word [data_830a], 0xd        ; 0x4e96
@..api_idx_0004_5.l2:
    ret                              ; 0x4e9c

    db 0x8f, 0x06, 0xd4, 0x90, 0x59, 0x89, 0x26, 0xd0, 0x90, 0x89, 0x2e, 0xd2, 0x90, 0x89, 0x36, 0xcc
    db 0x90, 0x89, 0x3e, 0xce, 0x90, 0xfc, 0xbf, 0xd6, 0x90, 0xb9, 0x8e, 0x93, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x48, 0xb1, 0x8b, 0x2e, 0xd2, 0x90, 0x8b, 0x26, 0xd0
    db 0x90, 0x8b, 0x36, 0xcc, 0x90, 0x8b, 0x3e, 0xce, 0x90, 0x51, 0xff, 0x26, 0xd4, 0x90
    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    times 11 db 0

