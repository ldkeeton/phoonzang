%include "structs/structs.inc"
%include "structs/loc_5187.inc"
org 0
bits 16
%include "labels/vtrea_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x0d, 0x9a, 0x98, 0x90

data_0002 equ 0x0002
data_0050 equ 0x0050
data_0086 equ 0x0086
data_00a6 equ 0x00a6
data_0110 equ 0x0110
data_0112 equ 0x0112
data_06b9 equ 0x06b9
data_06c7 equ 0x06c7
data_0a7f equ 0x0a7f
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e2a equ 0x0e2a
data_0e2c equ 0x0e2c
data_0e32 equ 0x0e32
data_1205 equ 0x1205
data_148c equ 0x148c
data_22e8 equ 0x22e8
data_2b2a equ 0x2b2a
data_357f equ 0x357f
data_3f00 equ 0x3f00
loc_4ad8 equ 0x4ad8
api_idx_0092 equ 0x4bcc
api_idx_007a equ 0x4f0c
loc_502d equ 0x502d
loc_5069 equ 0x5069
loc_507b equ 0x507b
loc_5089 equ 0x5089
loc_5095 equ 0x5095
loc_50f2 equ 0x50f2
loc_5120 equ 0x5120
loc_5132 equ 0x5132
loc_5140 equ 0x5140
loc_5169 equ 0x5169
loc_5176 equ 0x5176
loc_5187 equ 0x5187
loc_51b6 equ 0x51b6
loc_51c6 equ 0x51c6
data_5216 equ 0x5216
data_590e equ 0x590e
data_5910 equ 0x5910
data_598c equ 0x598c
data_598e equ 0x598e
data_599d equ 0x599d
data_59fa equ 0x59fa
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_5b6e equ 0x5b6e
data_5c38 equ 0x5c38
data_5da7 equ 0x5da7
data_69c8 equ 0x69c8
data_7ae9 equ 0x7ae9
data_82e8 equ 0x82e8
data_82ee equ 0x82ee
data_82f2 equ 0x82f2
data_82f4 equ 0x82f4
data_82f6 equ 0x82f6
data_82f8 equ 0x82f8
data_82fa equ 0x82fa
data_82fc equ 0x82fc
data_82fe equ 0x82fe
data_8300 equ 0x8300
data_8302 equ 0x8302
data_8306 equ 0x8306
data_830a equ 0x830a
data_830c equ 0x830c
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_849e equ 0x849e
data_84a0 equ 0x84a0
data_84a2 equ 0x84a2
data_84a4 equ 0x84a4
data_86b8 equ 0x86b8
data_8d06 equ 0x8d06
data_8d08 equ 0x8d08
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8d12 equ 0x8d12
data_8f20 equ 0x8f20
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_8f44 equ 0x8f44
data_8f46 equ 0x8f46
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
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
data_9114 equ 0x9114
data_9116 equ 0x9116
data_9118 equ 0x9118
data_911a equ 0x911a
data_911c equ 0x911c
data_911e equ 0x911e
data_9120 equ 0x9120
data_9122 equ 0x9122
data_9124 equ 0x9124
data_9126 equ 0x9126
data_9150 equ 0x9150
data_9152 equ 0x9152
data_9154 equ 0x9154
data_91d4 equ 0x91d4
data_91fe equ 0x91fe
data_9200 equ 0x9200
data_9250 equ 0x9250
data_95de equ 0x95de
data_95e0 equ 0x95e0
data_95e4 equ 0x95e4
data_a16a equ 0xa16a

    db 0x7c, 0x00, 0xa6, 0x05, 0x0c, 0xea
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov word [data_9114], 0          ; 0x0014
    mov word [data_9116], 0xffff     ; 0x001a
    mov word [data_9118], 0          ; 0x0020
    mov word [data_911a], 0xffff     ; 0x0026
    cmp word [data_830a], byte 0x0f  ; 0x002c
    jne short @..local.l1            ; 0x0031
    mov word [data_830a], 0x16       ; 0x0033
    call api_idx_0050_2              ; 0x0039
    jmp short @..local.l6            ; 0x003c
@..local.l1:
    cmp word [data_830a], byte 0x15  ; 0x003e
    jne short @..local.l2            ; 0x0043
    mov word [data_830a], 0x16       ; 0x0045
    call loc_809e                    ; 0x004b
    jmp short @..local.l6            ; 0x004e
@..local.l2:
    cmp word [data_830a], byte 0x1a  ; 0x0050
    jne short @..local.l3            ; 0x0055
    mov word [data_830a], 5          ; 0x0057
    call loc_811f                    ; 0x005d
    jmp short @..local.l6            ; 0x0060
@..local.l3:
    cmp word [data_830a], byte 0x1c  ; 0x0062
    jne short @..local.l4            ; 0x0067
    mov word [data_830a], 5          ; 0x0069
    call loc_81b6                    ; 0x006f
    jmp short @..local.l6            ; 0x0072
@..local.l4:
    cmp word [data_830a], byte 0x1d  ; 0x0074
    jne short @..local.l5            ; 0x0079
    mov word [data_830a], 5          ; 0x007b
    call loc_81db                    ; 0x0081
    jmp short @..local.l6            ; 0x0084
@..local.l5:
    mov word [data_830a], 0x16       ; 0x0086
@..local.l6:
    mov ax, 0                        ; 0x008c
    ret                              ; 0x008f
api_idx_0010:
    mov ax, 0xfff0                   ; 0x0090
    call ds_dispatch_f40b            ; 0x0093
    cmp word [bp + 0x4], byte 0      ; 0x0096
    jl short @..api_idx_0010.l1      ; 0x009a
    cmp word [bp + 0x4], byte 6      ; 0x009c
    jle short @..local.l7            ; 0x00a0
@..api_idx_0010.l1:
    mov ax, 0xffff                   ; 0x00a2
    ret                              ; 0x00a5
@..local.l7:
    mov word [bp - 0x0002], 7        ; 0x00a6
    mov ax, word [bp + 0x4]          ; 0x00ab
    inc ax                           ; 0x00ae
    mov word [bp - 0x0004], ax       ; 0x00af
    mov al, byte [bp - 0x0004]       ; 0x00b2
    mov byte [bp - 0x0010], al       ; 0x00b5
    mov byte [bp - 0x000f], 0        ; 0x00b8
    mov ax, 0                        ; 0x00bc
    push ax                          ; 0x00bf
    push ax                          ; 0x00c0
    lea ax, word [bp - 0x0010]       ; 0x00c1
    push ax                          ; 0x00c4
    mov ax, 0                        ; 0x00c5
    push ax                          ; 0x00c8
    mov ax, 0x8f                     ; 0x00c9
    push ax                          ; 0x00cc
    mov ax, 0x21                     ; 0x00cd
    push ax                          ; 0x00d0
    mov ax, 0xf8                     ; 0x00d1
    push ax                          ; 0x00d4
    mov ax, 0x48                     ; 0x00d5
    push ax                          ; 0x00d8
    mov ax, 0x15e                    ; 0x00d9
    imul word [bp - 0x0002]          ; 0x00dc
    add ax, word [bp - 0x0004]       ; 0x00df
    mov bx, ax                       ; 0x00e2
    mov al, byte [bx + 0x6a9b]       ; 0x00e4
    sub ah, ah                       ; 0x00e8
    add ax, strict word 0x20         ; 0x00ea
    push ax                          ; 0x00ed
    mov ax, 0x15e                    ; 0x00ee
    imul word [bp - 0x0002]          ; 0x00f1
    mov cx, word [bp - 0x0004]       ; 0x00f4
    shl cx, 1                        ; 0x00f7
    add ax, cx                       ; 0x00f9
    mov bx, ax                       ; 0x00fb
    mov al, byte [bx + 0x6a52]       ; 0x00fd
    sub ah, ah                       ; 0x0101
    push ax                          ; 0x0103
    push word [bp - 0x0002]          ; 0x0104
    call ds_dispatch_efd1            ; 0x0107
    add sp, byte 0x16                ; 0x010a
    mov ax, word [bp + 0x4]          ; 0x010d
    ret                              ; 0x0110
math_loc_0111:
    mov ax, 0xfee8                   ; 0x0111
    call ds_dispatch_f40b            ; 0x0114
    mov word [bp - 0x00f6], 7        ; 0x0117
    mov ax, 6                        ; 0x011d
    imul word [bp + 0x6]             ; 0x0120
    mov bx, ax                       ; 0x0123
    mov al, byte [bx + 0x889]        ; 0x0125
    sub ah, ah                       ; 0x0129
    jmp short @..math_loc_0111.l4    ; 0x012b
@..math_loc_0111.l1:
    mov word [bp - 0x0010], 1        ; 0x012d
    mov word [bp - 0x00fa], 1        ; 0x0132
    jmp short @..math_loc_0111.l5    ; 0x0138
@..math_loc_0111.l2:
    mov word [bp - 0x0010], 1        ; 0x013a
    mov word [bp - 0x00fa], 1        ; 0x013f
    jmp short @..math_loc_0111.l5    ; 0x0145
@..math_loc_0111.l3:
    mov word [bp - 0x0010], 0        ; 0x0147
    mov word [bp - 0x00fa], 4        ; 0x014c
    jmp short @..math_loc_0111.l5    ; 0x0152
@..math_loc_0111.l4:
    cmp ax, strict word 0            ; 0x0154
    je short @..math_loc_0111.l1     ; 0x0157
    cmp ax, strict word 1            ; 0x0159
    je short @..math_loc_0111.l2     ; 0x015c
    cmp ax, strict word 2            ; 0x015e
    je short @..math_loc_0111.l3     ; 0x0161
@..math_loc_0111.l5:
    mov word [bp - 0x00fc], 6        ; 0x0163
    mov ax, 0xc                      ; 0x0169
    cwd                              ; 0x016c
    idiv word [bp - 0x00fa]          ; 0x016d
    mov word [bp - 0x00fe], ax       ; 0x0171
    mov ax, 6                        ; 0x0175
    imul word [bp + 0x6]             ; 0x0178
    mov bx, ax                       ; 0x017b
    mov al, byte [bx + 0x888]        ; 0x017d
    sub ah, ah                       ; 0x0181
    mov word [bp - 0x00f8], ax       ; 0x0183
    mov word [bp - 0x000c], 1        ; 0x0187
    mov ax, word [bp - 0x00fc]       ; 0x018c
    dec ax                           ; 0x0190
    mov word [bp - 0x0006], ax       ; 0x0191
    mov word [bp - 0x0008], 0        ; 0x0194
    mov word [bp - 0x000a], 0xffff   ; 0x0199
    mov al, byte [bx + 0x889]        ; 0x019e
    sub ah, ah                       ; 0x01a2
    jmp short @..math_loc_0111.l8    ; 0x01a4
@..math_loc_0111.l6:
    inc word [bp + 0x6]              ; 0x01a6
    inc word [bp - 0x00f8]           ; 0x01a9
    jmp short @..math_loc_0111.l9    ; 0x01ad
@..math_loc_0111.l7:
    add word [bp - 0x00f8], byte 3   ; 0x01af
    jmp short @..math_loc_0111.l9    ; 0x01b4
@..math_loc_0111.l8:
    cmp ax, strict word 1            ; 0x01b6
    je short @..math_loc_0111.l6     ; 0x01b9
    cmp ax, strict word 2            ; 0x01bb
    je short @..math_loc_0111.l7     ; 0x01be
@..math_loc_0111.l9:
    cmp word [bp + 0x4], byte 0xff   ; 0x01c0
    je short @..math_loc_0111.l10    ; 0x01c4
    mov ax, word [bp + 0x4]          ; 0x01c6
    mov cx, data_0002                ; 0x01c9
    cwd                              ; 0x01cc
    idiv cx                          ; 0x01cd
    mov ax, dx                       ; 0x01cf
    test ax, ax                      ; 0x01d1
    jne short @..math_loc_0111.l12   ; 0x01d3
@..math_loc_0111.l10:
    mov word [bp - 0x000e], 0        ; 0x01d5
    mov ax, 0                        ; 0x01da
    cmp word [bp - 0x0010], byte 0   ; 0x01dd
    je short @..math_loc_0111.l11    ; 0x01e1
    mov ax, 1                        ; 0x01e3
@..math_loc_0111.l11:
    mov word [bp - 0x0104], ax       ; 0x01e6
    jmp short @..math_loc_0111.l14   ; 0x01ea
@..math_loc_0111.l12:
    mov word [bp - 0x000e], 1        ; 0x01ec
    mov ax, 1                        ; 0x01f1
    cmp word [bp - 0x0010], byte 0   ; 0x01f4
    je short @..math_loc_0111.l13    ; 0x01f8
    mov ax, 0                        ; 0x01fa
@..math_loc_0111.l13:
    mov word [bp - 0x0104], ax       ; 0x01fd
@..math_loc_0111.l14:
    mov ax, 6                        ; 0x0201
    imul word [bp + 0x6]             ; 0x0204
    mov bx, ax                       ; 0x0207
    mov ax, word [bx + 0x884]        ; 0x0209
    mov word [bp - 0x00ea], ax       ; 0x020d
    mov ax, word [bx + 0x886]        ; 0x0211
    mov word [bp - 0x00ec], ax       ; 0x0215
    mov word [bp - 0x00e8], 0        ; 0x0219
    mov word [bp - 0x00e6], 0        ; 0x021f
    mov word [bp - 0x00e4], 0        ; 0x0225
    mov word [bp - 0x00e2], 0        ; 0x022b
    mov word [bp - 0x00e0], 0        ; 0x0231
    mov word [bp - 0x00de], 0        ; 0x0237
    mov word [bp - 0x00dc], 0        ; 0x023d
    mov word [bp - 0x00da], 3        ; 0x0243
    mov word [bp - 0x00d8], 3        ; 0x0249
    mov word [bp - 0x00d6], 3        ; 0x024f
    mov word [bp - 0x00d4], 3        ; 0x0255
    mov word [bp - 0x00d2], 3        ; 0x025b
    mov word [bp - 0x00d0], 3        ; 0x0261
    mov word [bp - 0x00ce], data_0002 ; 0x0267
    mov word [bp - 0x00cc], data_0002 ; 0x026d
    mov word [bp - 0x00ca], data_0002 ; 0x0273
    mov word [bp - 0x00c8], data_0002 ; 0x0279
    mov word [bp - 0x00c6], 1        ; 0x027f
    mov word [bp - 0x00c4], 1        ; 0x0285
    mov word [bp - 0x00c2], 3        ; 0x028b
    mov word [bp - 0x00c0], data_0002 ; 0x0291
    mov word [bp - 0x00be], data_0002 ; 0x0297
    mov word [bp - 0x00bc], data_0002 ; 0x029d
    mov word [bp - 0x00ba], 3        ; 0x02a3
    mov word [bp - 0x00b8], data_0002 ; 0x02a9
    mov word [bp - 0x00b6], data_0002 ; 0x02af
    mov word [bp - 0x00b4], data_0002 ; 0x02b5
    mov word [bp - 0x00b2], 4        ; 0x02bb
    mov word [bp - 0x00b0], 3        ; 0x02c1
    mov word [bp - 0x00ae], 3        ; 0x02c7
    mov word [bp - 0x00ac], 3        ; 0x02cd
    mov word [bp - 0x00aa], 1        ; 0x02d3
    mov word [bp - 0x00a8], 1        ; 0x02d9
    mov word [bp - 0x00a6], 1        ; 0x02df
    mov word [bp - 0x00a4], 1        ; 0x02e5
    mov word [bp - 0x00a2], 3        ; 0x02eb
    mov word [bp - 0x00a0], 3        ; 0x02f1
    mov word [bp - 0x009e], 3        ; 0x02f7
    mov word [bp - 0x009c], 3        ; 0x02fd
    mov word [bp - 0x009a], 3        ; 0x0303
    mov word [bp - 0x0098], 5        ; 0x0309
    mov word [bp - 0x0096], 3        ; 0x030f
    mov word [bp - 0x0094], 5        ; 0x0315
    mov word [bp - 0x0092], 4        ; 0x031b
    mov word [bp - 0x0090], 3        ; 0x0321
    mov word [bp - 0x008e], 3        ; 0x0327
    mov word [bp - 0x008c], 4        ; 0x032d
    mov word [bp - 0x008a], 4        ; 0x0333
    mov word [bp - 0x0088], 3        ; 0x0339
    mov word [bp - 0x0086], data_0002 ; 0x033f
    mov word [bp - 0x0084], 6        ; 0x0345
    mov word [bp - 0x0082], 5        ; 0x034b
    mov word [bp - 0x0080], 4        ; 0x0351
    mov word [bp - 0x007e], 3        ; 0x0356
    mov word [bp - 0x007c], data_0002 ; 0x035b
    mov word [bp - 0x007a], 6        ; 0x0360
    mov word [bp - 0x0078], 5        ; 0x0365
    mov word [bp - 0x0076], 3        ; 0x036a
    mov word [bp - 0x0074], 3        ; 0x036f
    mov word [bp - 0x0040], 0x57     ; 0x0374
    mov word [bp - 0x0028], 0xe8     ; 0x0379
    mov word [bp - 0x003e], 0x62     ; 0x037e
    mov word [bp - 0x0026], 0xdd     ; 0x0383
    mov word [bp - 0x003c], 0x6c     ; 0x0388
    mov word [bp - 0x0024], 0xd3     ; 0x038d
    mov word [bp - 0x003a], 0x75     ; 0x0392
    mov word [bp - 0x0022], 0xca     ; 0x0397
    mov word [bp - 0x0038], 0x7d     ; 0x039c
    mov word [bp - 0x0020], 0xc2     ; 0x03a1
    mov word [bp - 0x0036], 0x84     ; 0x03a6
    mov word [bp - 0x001e], 0xbb     ; 0x03ab
    mov word [bp - 0x0034], 0x8a     ; 0x03b0
    mov word [bp - 0x001c], 0xb5     ; 0x03b5
    mov word [bp - 0x0032], 0x8f     ; 0x03ba
    mov word [bp - 0x001a], 0xb0     ; 0x03bf
    mov word [bp - 0x0030], 0x93     ; 0x03c4
    mov word [bp - 0x0018], 0xac     ; 0x03c9
    mov word [bp - 0x002e], 0x96     ; 0x03ce
    mov word [bp - 0x0016], 0xa9     ; 0x03d3
    mov word [bp - 0x002c], 0x98     ; 0x03d8
    mov word [bp - 0x0014], 0xa7     ; 0x03dd
    mov word [bp - 0x002a], 0x99     ; 0x03e2
    mov word [bp - 0x0012], data_00a6 ; 0x03e7
    mov word [bp - 0x0058], 0x49     ; 0x03ec
    mov word [bp - 0x0056], 0x47     ; 0x03f1
    mov word [bp - 0x0054], 0x46     ; 0x03f6
    mov word [bp - 0x0052], 0x45     ; 0x03fb
    mov word [bp - 0x0050], 0x44     ; 0x0400
    mov word [bp - 0x004e], 0x43     ; 0x0405
    mov word [bp - 0x004c], 0x42     ; 0x040a
    mov word [bp - 0x004a], 0x42     ; 0x040f
    mov word [bp - 0x0048], 0x42     ; 0x0414
    mov word [bp - 0x0046], 0x41     ; 0x0419
    mov word [bp - 0x0044], 0x41     ; 0x041e
    mov word [bp - 0x0042], 0x41     ; 0x0423
    mov word [bp - 0x0070], 0x64     ; 0x0428
    mov word [bp - 0x006e], 0x5e     ; 0x042d
    mov word [bp - 0x006c], 0x58     ; 0x0432
    mov word [bp - 0x006a], 0x52     ; 0x0437
    mov word [bp - 0x0068], 0x4c     ; 0x043c
    mov word [bp - 0x0066], 0x46     ; 0x0441
    mov word [bp - 0x0064], 0x40     ; 0x0446
    mov word [bp - 0x0062], 0x3a     ; 0x044b
    mov word [bp - 0x0060], 0x34     ; 0x0450
    mov word [bp - 0x005e], 0x2e     ; 0x0455
    mov word [bp - 0x005c], 0x28     ; 0x045a
    mov word [bp - 0x005a], 0x22     ; 0x045f
    mov ax, 0                        ; 0x0464
    cmp word [bp - 0x000c], byte 0   ; 0x0467
    je short @..local.l8             ; 0x046b
    mov ax, 5                        ; 0x046d
    cmp byte [bx + 0x889], data_0002 ; 0x0470
    jne short @..local.l8            ; 0x0475
    mov ax, 3                        ; 0x0477
@..local.l8:
    mov word [bp - 0x0102], ax       ; 0x047a
    mov word [bp - 0x0100], ax       ; 0x047e
    mov ax, 0                        ; 0x0482
    push ax                          ; 0x0485
    mov ax, data_0002                ; 0x0486
    push ax                          ; 0x0489
    mov ax, 0x8f                     ; 0x048a
    push ax                          ; 0x048d
    mov ax, 0xf7                     ; 0x048e
    push ax                          ; 0x0491
    mov ax, 0x21                     ; 0x0492
    push ax                          ; 0x0495
    mov ax, 0x48                     ; 0x0496
    push ax                          ; 0x0499
    call ds_dispatch_e935            ; 0x049a
    add sp, byte 0x0c                ; 0x049d
    mov word [bp - 0x0116], dx       ; 0x04a0
    mov word [bp - 0x0118], ax       ; 0x04a4
    mov ax, 0                        ; 0x04a8
    push ax                          ; 0x04ab
    call api_idx_0010                ; 0x04ac
    pop cx                           ; 0x04af
    mov word [data_9116], ax         ; 0x04b0
    push word [data_911c]            ; 0x04b3
    mov ax, 0xf8                     ; 0x04b7
    push ax                          ; 0x04ba
    mov ax, 0x21                     ; 0x04bb
    push ax                          ; 0x04be
    mov ax, 0x48                     ; 0x04bf
    push ax                          ; 0x04c2
    call ds_dispatch_e8da            ; 0x04c3
    add sp, byte 8                   ; 0x04c6
    mov ax, 5                        ; 0x04c9
    push ax                          ; 0x04cc
    call ds_dispatch_b7e0            ; 0x04cd
    pop cx                           ; 0x04d0
    mov word [bp - 0x0004], 0        ; 0x04d1
    mov ax, word [bp - 0x0006]       ; 0x04d6
    mov word [bp - 0x0002], ax       ; 0x04d9
    jmp near @..local.l16            ; 0x04dc
@..local.l9:
    les bx, word [data_0002]         ; 0x04df
    mov ax, word [es:bx]             ; 0x04e3
    mov dx, word [es:bx + 0x2]       ; 0x04e6
    mov word [bp - 0x0112], dx       ; 0x04ea
    mov word [bp - 0x0114], ax       ; 0x04ee
    mov ax, word [bp - 0x0002]       ; 0x04f2
    shl ax, 1                        ; 0x04f5
    mov bx, ax                       ; 0x04f7
    add bx, bp                       ; 0x04f9
    mov ax, word [bx - 0x0070]       ; 0x04fb
    imul word [bp - 0x00ea]          ; 0x04fe
    mov cx, 0x64                     ; 0x0502
    cwd                              ; 0x0505
    idiv cx                          ; 0x0506
    mov word [bp - 0x00ee], ax       ; 0x0508
    cmp word [bp - 0x0104], byte 0   ; 0x050c
    je short @..local.l10            ; 0x0511
    mov cx, 0                        ; 0x0513
    sub cx, ax                       ; 0x0516
    mov ax, cx                       ; 0x0518
    mov cx, word [bp - 0x00f8]       ; 0x051a
    shl cx, 1                        ; 0x051e
    mov bx, cx                       ; 0x0520
    add bx, bp                       ; 0x0522
    mov cx, word [bx - 0x00ea]       ; 0x0524
    shl cx, 1                        ; 0x0528
    shl cx, 1                        ; 0x052a
    shl cx, 1                        ; 0x052c
    sub ax, cx                       ; 0x052e
    mov word [bp - 0x00ee], ax       ; 0x0530
@..local.l10:
    mov ax, word [bp - 0x00ec]       ; 0x0534
    imul word [bp - 0x0064]          ; 0x0538
    mov cx, 0x64                     ; 0x053b
    cwd                              ; 0x053e
    idiv cx                          ; 0x053f
    mov word [bp - 0x00f0], ax       ; 0x0541
    mov al, byte [bp - 0x00f8]       ; 0x0545
    mov byte [bp - 0x0110], al       ; 0x0549
    mov byte [bp - 0x010f], 0        ; 0x054d
    mov ax, 0                        ; 0x0552
    push ax                          ; 0x0555
    push ax                          ; 0x0556
    push word [bp - 0x0116]          ; 0x0557
    push word [bp - 0x0118]          ; 0x055b
    call ds_dispatch_e942            ; 0x055f
    add sp, byte 8                   ; 0x0562
    cmp word [data_9116], byte 0     ; 0x0565
    jl short @..local.l12            ; 0x056a
    mov ax, word [bp - 0x0004]       ; 0x056c
    mov cx, 3                        ; 0x056f
    cwd                              ; 0x0572
    idiv cx                          ; 0x0573
    mov ax, dx                       ; 0x0575
    test ax, ax                      ; 0x0577
    jne short @..local.l11           ; 0x0579
    inc word [data_9116]             ; 0x057b
@..local.l11:
    push word [data_9116]            ; 0x057f
    call api_idx_0010                ; 0x0583
    pop cx                           ; 0x0586
    mov word [data_9116], ax         ; 0x0587
@..local.l12:
    mov ax, 0x18                     ; 0x058a
    imul word [bp - 0x000e]          ; 0x058d
    mov cx, word [bp - 0x0002]       ; 0x0590
    shl cx, 1                        ; 0x0593
    add ax, cx                       ; 0x0595
    mov bx, ax                       ; 0x0597
    add bx, bp                       ; 0x0599
    mov ax, word [bx - 0x0040]       ; 0x059b
    add ax, word [bp - 0x00ee]       ; 0x059e
    mov word [bp - 0x00f2], ax       ; 0x05a2
    mov bx, cx                       ; 0x05a6
    add bx, bp                       ; 0x05a8
    mov ax, word [bx - 0x0058]       ; 0x05aa
    add ax, word [bp - 0x00f0]       ; 0x05ad
    mov word [bp - 0x00f4], ax       ; 0x05b1
    mov ax, word [bp - 0x0100]       ; 0x05b5
    shl ax, 1                        ; 0x05b9
    mov bx, ax                       ; 0x05bb
    add bx, bp                       ; 0x05bd
    mov cx, word [bx - 0x0070]       ; 0x05bf
    mov ax, 0x64                     ; 0x05c2
    sub ax, cx                       ; 0x05c5
    push ax                          ; 0x05c7
    mov ax, 0                        ; 0x05c8
    push ax                          ; 0x05cb
    lea ax, word [bp - 0x0110]       ; 0x05cc
    push ax                          ; 0x05d0
    push word [bp - 0x0104]          ; 0x05d1
    mov ax, 0x8f                     ; 0x05d5
    push ax                          ; 0x05d8
    mov ax, 0x21                     ; 0x05d9
    push ax                          ; 0x05dc
    mov ax, 0xf8                     ; 0x05dd
    push ax                          ; 0x05e0
    mov ax, 0x48                     ; 0x05e1
    push ax                          ; 0x05e4
    mov ax, word [bp - 0x00f4]       ; 0x05e5
    add ax, strict word 0x20         ; 0x05e9
    push ax                          ; 0x05ec
    push word [bp - 0x00f2]          ; 0x05ed
    push word [bp - 0x00f6]          ; 0x05f1
    call ds_dispatch_efd1            ; 0x05f5
    add sp, byte 0x16                ; 0x05f8
    push word [data_911c]            ; 0x05fb
    mov ax, 0xf8                     ; 0x05ff
    push ax                          ; 0x0602
    mov ax, 0x21                     ; 0x0603
    push ax                          ; 0x0606
    mov ax, 0x48                     ; 0x0607
    push ax                          ; 0x060a
    call ds_dispatch_e8da            ; 0x060b
    add sp, byte 8                   ; 0x060e
    mov ax, word [bp - 0x000a]       ; 0x0611
    add word [bp - 0x0100], ax       ; 0x0614
    mov ax, word [bp - 0x0004]       ; 0x0618
    inc ax                           ; 0x061b
    cwd                              ; 0x061c
    idiv word [bp - 0x00fe]          ; 0x061d
    mov ax, dx                       ; 0x0621
    test ax, ax                      ; 0x0623
    jne short @..local.l13           ; 0x0625
    mov ax, word [bp - 0x000a]       ; 0x0627
    add word [bp - 0x00f8], ax       ; 0x062a
    mov ax, word [bp - 0x0102]       ; 0x062e
    mov word [bp - 0x0100], ax       ; 0x0632
@..local.l13:
    les bx, word [data_0002]         ; 0x0636
    mov ax, word [es:bx]             ; 0x063a
    mov dx, word [es:bx + 0x2]       ; 0x063d
    cmp dx, word [bp - 0x0112]       ; 0x0641
    jne short @..local.l14           ; 0x0645
    cmp ax, word [bp - 0x0114]       ; 0x0647
@..local.l14:
    jne short @..local.l15           ; 0x064b
    jmp short @..local.l13           ; 0x064d
@..local.l15:
    mov ax, word [bp - 0x000a]       ; 0x064f
    add word [bp - 0x0002], ax       ; 0x0652
    inc word [bp - 0x0004]           ; 0x0655
@..local.l16:
    mov ax, word [bp - 0x0004]       ; 0x0658
    cmp ax, word [bp - 0x00fc]       ; 0x065b
    jge short @..local.l17           ; 0x065f
    jmp near @..local.l9             ; 0x0661
@..local.l17:
    mov ax, 0                        ; 0x0664
    push ax                          ; 0x0667
    mov ax, 1                        ; 0x0668
    push ax                          ; 0x066b
    push word [bp - 0x0116]          ; 0x066c
    push word [bp - 0x0118]          ; 0x0670
    call ds_dispatch_e942            ; 0x0674
    add sp, byte 8                   ; 0x0677
    ret                              ; 0x067a
api_idx_000e:
    mov ax, 0xfff2                   ; 0x067b
    call ds_dispatch_f40b            ; 0x067e
    cmp word [data_8f20], byte 0     ; 0x0681
    jg short @..api_idx_000e.l1      ; 0x0686
    jmp near @..api_idx_000e.l8      ; 0x0688
@..api_idx_000e.l1:
    mov ax, word [data_82ee]         ; 0x068b
    mov cx, word [data_8f20]         ; 0x068e
    dec cx                           ; 0x0692
    sub ax, cx                       ; 0x0693
    add ax, strict word 6            ; 0x0695
    mov cx, 4                        ; 0x0698
    cwd                              ; 0x069b
    idiv cx                          ; 0x069c
    mov word [bp - 0x0002], dx       ; 0x069e
    mov ax, dx                       ; 0x06a1
    jmp short @..api_idx_000e.l6     ; 0x06a3
@..api_idx_000e.l2:
    mov byte [bp - 0x000e], 1        ; 0x06a5
    mov byte [bp - 0x000d], data_0002 ; 0x06a9
    mov ax, 5                        ; 0x06ad
    cmp word [bp - 0x0002], byte 0   ; 0x06b0
    jne short @..api_idx_000e.l3     ; 0x06b4
    mov ax, 4                        ; 0x06b6
@..api_idx_000e.l3:
    mov byte [bp - 0x000c], al       ; 0x06b9
    mov byte [bp - 0x000b], 0        ; 0x06bc
    mov word [bp - 0x0004], 0        ; 0x06c0
    jmp short @..api_idx_000e.l7     ; 0x06c5
@..api_idx_000e.l4:
    mov byte [bp - 0x000e], 3        ; 0x06c7
    mov byte [bp - 0x000d], 0        ; 0x06cb
    mov ax, 0                        ; 0x06cf
    cmp word [bp - 0x0002], byte 3   ; 0x06d2
    jne short @..api_idx_000e.l5     ; 0x06d6
    mov ax, 1                        ; 0x06d8
@..api_idx_000e.l5:
    mov word [bp - 0x0004], ax       ; 0x06db
    jmp short @..api_idx_000e.l7     ; 0x06de
@..api_idx_000e.l6:
    cmp ax, strict word 0            ; 0x06e0
    je short @..api_idx_000e.l2      ; 0x06e3
    cmp ax, strict word 1            ; 0x06e5
    je short @..api_idx_000e.l4      ; 0x06e8
    cmp ax, strict word 2            ; 0x06ea
    je short @..api_idx_000e.l2      ; 0x06ed
    cmp ax, strict word 3            ; 0x06ef
    je short @..api_idx_000e.l4      ; 0x06f2
@..api_idx_000e.l7:
    mov ax, 0                        ; 0x06f4
    push ax                          ; 0x06f7
    push ax                          ; 0x06f8
    lea ax, word [bp - 0x000e]       ; 0x06f9
    push ax                          ; 0x06fc
    push word [bp - 0x0004]          ; 0x06fd
    mov ax, 0x8f                     ; 0x0700
    push ax                          ; 0x0703
    mov ax, 0x21                     ; 0x0704
    push ax                          ; 0x0707
    mov ax, 0xf8                     ; 0x0708
    push ax                          ; 0x070b
    mov ax, 0x48                     ; 0x070c
    push ax                          ; 0x070f
    mov al, byte [bp - 0x000e]       ; 0x0710
    sub ah, ah                       ; 0x0713
    mov bx, ax                       ; 0x0715
    mov al, byte [bx + 0x6eb5]       ; 0x0717
    sub ah, ah                       ; 0x071b
    inc ax                           ; 0x071d
    push ax                          ; 0x071e
    shl bx, 1                        ; 0x071f
    mov ax, bx                       ; 0x0721
    add ax, word [bp - 0x0004]       ; 0x0723
    mov bx, ax                       ; 0x0726
    mov al, byte [bx + 0x6e6c]       ; 0x0728
    sub ah, ah                       ; 0x072c
    inc ax                           ; 0x072e
    push ax                          ; 0x072f
    mov ax, 3                        ; 0x0730
    push ax                          ; 0x0733
    call ds_dispatch_efd1            ; 0x0734
    add sp, byte 0x16                ; 0x0737
@..api_idx_000e.l8:
    ret                              ; 0x073a
api_idx_000a:
    mov ax, 0xfff6                   ; 0x073b
    call ds_dispatch_f40b            ; 0x073e
    mov byte [bp - 0x000a], 1        ; 0x0741
    mov byte [bp - 0x0009], 4        ; 0x0745
    mov byte [bp - 0x0008], 0        ; 0x0749
    mov ax, 0                        ; 0x074d
    push ax                          ; 0x0750
    push ax                          ; 0x0751
    lea ax, word [bp - 0x000a]       ; 0x0752
    push ax                          ; 0x0755
    mov ax, 0                        ; 0x0756
    push ax                          ; 0x0759
    mov ax, 0x8f                     ; 0x075a
    push ax                          ; 0x075d
    mov ax, 0x21                     ; 0x075e
    push ax                          ; 0x0761
    mov ax, 0xf8                     ; 0x0762
    push ax                          ; 0x0765
    mov ax, 0x48                     ; 0x0766
    push ax                          ; 0x0769
    mov al, byte [bp - 0x000a]       ; 0x076a
    sub ah, ah                       ; 0x076d
    mov bx, ax                       ; 0x076f
    mov al, byte [bx + 0x6eb5]       ; 0x0771
    sub ah, ah                       ; 0x0775
    inc ax                           ; 0x0777
    push ax                          ; 0x0778
    shl bx, 1                        ; 0x0779
    mov al, byte [bx + 0x6e6c]       ; 0x077b
    sub ah, ah                       ; 0x077f
    inc ax                           ; 0x0781
    push ax                          ; 0x0782
    mov ax, 3                        ; 0x0783
    push ax                          ; 0x0786
    call ds_dispatch_efd1            ; 0x0787
    add sp, byte 0x16                ; 0x078a
    mov byte [bp - 0x000a], 1        ; 0x078d
    mov ax, word [data_911e]         ; 0x0791
    inc ax                           ; 0x0794
    inc ax                           ; 0x0795
    mov byte [bp - 0x0009], al       ; 0x0796
    mov byte [bp - 0x0008], 0        ; 0x0799
    mov ax, 0                        ; 0x079d
    push ax                          ; 0x07a0
    push ax                          ; 0x07a1
    lea ax, word [bp - 0x000a]       ; 0x07a2
    push ax                          ; 0x07a5
    mov ax, 0                        ; 0x07a6
    push ax                          ; 0x07a9
    mov ax, 0x8f                     ; 0x07aa
    push ax                          ; 0x07ad
    mov ax, 0x21                     ; 0x07ae
    push ax                          ; 0x07b1
    mov ax, 0xf8                     ; 0x07b2
    push ax                          ; 0x07b5
    mov ax, 0x48                     ; 0x07b6
    push ax                          ; 0x07b9
    mov al, byte [bp - 0x000a]       ; 0x07ba
    sub ah, ah                       ; 0x07bd
    mov bx, ax                       ; 0x07bf
    mov al, byte [bx + 0x7f1d]       ; 0x07c1
    sub ah, ah                       ; 0x07c5
    inc ax                           ; 0x07c7
    push ax                          ; 0x07c8
    shl bx, 1                        ; 0x07c9
    mov al, byte [bx + 0x7ed4]       ; 0x07cb
    sub ah, ah                       ; 0x07cf
    inc ax                           ; 0x07d1
    push ax                          ; 0x07d2
    mov ax, 0xf                      ; 0x07d3
    push ax                          ; 0x07d6
    call ds_dispatch_efd1            ; 0x07d7
    add sp, byte 0x16                ; 0x07da
    ret                              ; 0x07dd
loc_07de:
    mov ax, 0                        ; 0x07de
    call ds_dispatch_f40b            ; 0x07e1
    mov ax, 0                        ; 0x07e4
    push ax                          ; 0x07e7
    push ax                          ; 0x07e8
    mov ax, word [data_906c]         ; 0x07e9
    shl ax, 1                        ; 0x07ec
    shl ax, 1                        ; 0x07ee
    mov bx, ax                       ; 0x07f0
    push word [bx - 0x6f9e]          ; 0x07f2
    push word [bx - 0x6fa0]          ; 0x07f6
    call ds_dispatch_e942            ; 0x07fa
    add sp, byte 8                   ; 0x07fd
    cmp word [data_9114], byte 1     ; 0x0800
    jne short @..local.l18           ; 0x0805
    call api_idx_000a                ; 0x0807
    jmp short @..local.l19           ; 0x080a
@..local.l18:
    call api_idx_000e                ; 0x080c
@..local.l19:
    call ds_dispatch_da22            ; 0x080f
    cmp word [data_911a], byte 0     ; 0x0812
    jl short @..local.l20            ; 0x0817
    push word [data_9120]            ; 0x0819
    push word [data_9122]            ; 0x081d
    call math_loc_0111               ; 0x0821
    add sp, byte 4                   ; 0x0824
    mov word [data_911a], 0xffff     ; 0x0827
@..local.l20:
    cmp word [data_9116], byte 0     ; 0x082d
    jl short @..local.l21            ; 0x0832
    push word [data_9116]            ; 0x0834
    call api_idx_0010                ; 0x0838
    pop cx                           ; 0x083b
    mov word [data_9116], ax         ; 0x083c
@..local.l21:
    push word [data_911c]            ; 0x083f
    mov ax, 0xf7                     ; 0x0843
    push ax                          ; 0x0846
    mov ax, 0x20                     ; 0x0847
    push ax                          ; 0x084a
    mov ax, 0x48                     ; 0x084b
    push ax                          ; 0x084e
    call ds_dispatch_e8da            ; 0x084f
    add sp, byte 8                   ; 0x0852
    cmp word [data_9118], byte 0     ; 0x0855
    je short @..local.l22            ; 0x085a
    mov ax, 5                        ; 0x085c
    push ax                          ; 0x085f
    call ds_dispatch_b7e0            ; 0x0860
    pop cx                           ; 0x0863
    mov word [data_9118], 0          ; 0x0864
@..local.l22:
    ret                              ; 0x086a
math_loc_086b:
    mov ax, 0                        ; 0x086b
    call ds_dispatch_f40b            ; 0x086e
    les bx, word [data_0002]         ; 0x0871
    mov ax, word [es:bx]             ; 0x0875
    mov dx, word [es:bx + 0x2]       ; 0x0878
    sub ax, word [data_908a]         ; 0x087c
    sbb dx, word [data_908c]         ; 0x0880
    push ax                          ; 0x0884
    push dx                          ; 0x0885
    mov ax, word [data_9124]         ; 0x0886
    cwd                              ; 0x0889
    mov cx, ax                       ; 0x088a
    mov bx, dx                       ; 0x088c
    pop dx                           ; 0x088e
    pop ax                           ; 0x088f
    cmp dx, bx                       ; 0x0890
    jl short @..math_loc_086b.l1     ; 0x0892
    jne short @..math_loc_086b.l2    ; 0x0894
    cmp ax, cx                       ; 0x0896
    jae short @..math_loc_086b.l2    ; 0x0898
@..math_loc_086b.l1:
    jmp short @..local.l23           ; 0x089a
@..math_loc_086b.l2:
    mov ax, word [data_906c]         ; 0x089c
    inc ax                           ; 0x089f
    mov cx, data_0002                ; 0x08a0
    cwd                              ; 0x08a3
    idiv cx                          ; 0x08a4
    mov word [data_906c], dx         ; 0x08a6
    mov ax, word [data_82e8]         ; 0x08aa
    inc ax                           ; 0x08ad
    cwd                              ; 0x08ae
    idiv cx                          ; 0x08af
    mov word [data_82e8], dx         ; 0x08b1
    mov ax, word [data_911e]         ; 0x08b5
    inc ax                           ; 0x08b8
    mov cx, 3                        ; 0x08b9
    cwd                              ; 0x08bc
    idiv cx                          ; 0x08bd
    mov word [data_911e], dx         ; 0x08bf
    cmp word [data_9116], byte 0     ; 0x08c3
    jl short @..math_loc_086b.l3     ; 0x08c8
    inc word [data_9116]             ; 0x08ca
@..math_loc_086b.l3:
    les bx, word [data_0002]         ; 0x08ce
    mov ax, word [es:bx]             ; 0x08d2
    mov dx, word [es:bx + 0x2]       ; 0x08d5
    mov word [data_908c], dx         ; 0x08d9
    mov word [data_908a], ax         ; 0x08dd
    call loc_07de                    ; 0x08e0
    mov ax, 1                        ; 0x08e3
    ret                              ; 0x08e6
@..local.l23:
    mov ax, 0                        ; 0x08e7
    ret                              ; 0x08ea
api_idx_0004:
    mov ax, 0xfffc                   ; 0x08eb
    call ds_dispatch_f40b            ; 0x08ee
    call ds_dispatch_ec17            ; 0x08f1
    mov ax, word [bp + 0x4]          ; 0x08f4
    cwd                              ; 0x08f7
    les bx, word [data_0002]         ; 0x08f8
    mov cx, word [es:bx]             ; 0x08fc
    mov bx, word [es:bx + 0x2]       ; 0x08ff
    add ax, cx                       ; 0x0903
    adc dx, bx                       ; 0x0905
    mov word [bp - 0x0002], dx       ; 0x0907
    mov word [bp - 0x0004], ax       ; 0x090a
@..api_idx_0004.l1:
    les bx, word [data_0002]         ; 0x090d
    mov ax, word [es:bx]             ; 0x0911
    mov dx, word [es:bx + 0x2]       ; 0x0914
    cmp dx, word [bp - 0x0002]       ; 0x0918
    jg short @..api_idx_0004.l2      ; 0x091b
    jne short @..api_idx_0004.l3     ; 0x091d
    cmp ax, word [bp - 0x0004]       ; 0x091f
    jb short @..api_idx_0004.l3      ; 0x0922
@..api_idx_0004.l2:
    jmp short @..local.l27           ; 0x0924
@..api_idx_0004.l3:
    call ds_dispatch_baef            ; 0x0926
    test ax, ax                      ; 0x0929
    je short @..local.l24            ; 0x092b
    ret                              ; 0x092d
@..local.l24:
    mov ax, 1                        ; 0x092e
    push ax                          ; 0x0931
    call ds_dispatch_ea50            ; 0x0932
    pop cx                           ; 0x0935
    test ax, ax                      ; 0x0936
    je short @..local.l25            ; 0x0938
    mov ax, 1                        ; 0x093a
    push ax                          ; 0x093d
    call ds_dispatch_eb32            ; 0x093e
    pop cx                           ; 0x0941
    cmp al, 0xd                      ; 0x0942
    jne short @..local.l25           ; 0x0944
    ret                              ; 0x0946
@..local.l25:
    call math_loc_086b               ; 0x0947
    test ax, ax                      ; 0x094a
    jne short @..local.l26           ; 0x094c
    call math_loc_82a9               ; 0x094e
@..local.l26:
    jmp short @..api_idx_0004.l1     ; 0x0951
@..local.l27:
    ret                              ; 0x0953
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0954
    call ds_dispatch_f40b            ; 0x0957
    mov ax, 0                        ; 0x095a
    push ax                          ; 0x095d
    push word [data_8d10]            ; 0x095e
    push word [data_8d0e]            ; 0x0962
    call ds_dispatch_e94f            ; 0x0966
    add sp, byte 6                   ; 0x0969
    mov ax, 0                        ; 0x096c
    push ax                          ; 0x096f
    push word [data_8d0c]            ; 0x0970
    push word [data_8d0a]            ; 0x0974
    call ds_dispatch_e94f            ; 0x0978
    add sp, byte 6                   ; 0x097b
    mov byte [bp - 0x000a], 1        ; 0x097e
    mov byte [bp - 0x0009], 0        ; 0x0982
    mov ax, 0                        ; 0x0986
    push ax                          ; 0x0989
    push ax                          ; 0x098a
    lea ax, word [bp - 0x000a]       ; 0x098b
    push ax                          ; 0x098e
    mov ax, 0                        ; 0x098f
    push ax                          ; 0x0992
    mov ax, 0xc7                     ; 0x0993
    push ax                          ; 0x0996
    mov ax, 0                        ; 0x0997
    push ax                          ; 0x099a
    mov ax, 0x13f                    ; 0x099b
    push ax                          ; 0x099e
    mov ax, 0                        ; 0x099f
    push ax                          ; 0x09a2
    mov ax, 0x9a                     ; 0x09a3
    push ax                          ; 0x09a6
    mov ax, 0x37                     ; 0x09a7
    push ax                          ; 0x09aa
    mov ax, 0xe                      ; 0x09ab
    push ax                          ; 0x09ae
    call ds_dispatch_efd1            ; 0x09af
    add sp, byte 0x16                ; 0x09b2
    cmp word [data_9126], byte 0     ; 0x09b5
    je short @..api_idx_000a_2.l1    ; 0x09ba
    mov ax, 0x92                     ; 0x09bc
    push ax                          ; 0x09bf
    mov ax, 0x9128                   ; 0x09c0
    push ax                          ; 0x09c3
    call ds_dispatch_fa90            ; 0x09c4
    pop cx                           ; 0x09c7
    mov cx, 6                        ; 0x09c8
    imul cx                          ; 0x09cb
    mov cx, data_0002                ; 0x09cd
    cwd                              ; 0x09d0
    idiv cx                          ; 0x09d1
    mov cx, ax                       ; 0x09d3
    mov ax, 0xa1                     ; 0x09d5
    sub ax, cx                       ; 0x09d8
    push ax                          ; 0x09da
    call ds_dispatch_e809            ; 0x09db
    add sp, byte 4                   ; 0x09de
    mov ax, 0                        ; 0x09e1
    push ax                          ; 0x09e4
    mov ax, 0x17                     ; 0x09e5
    push ax                          ; 0x09e8
    call ds_dispatch_e823            ; 0x09e9
    add sp, byte 4                   ; 0x09ec
    mov ax, 0                        ; 0x09ef
    push ax                          ; 0x09f2
    mov ax, 0x9128                   ; 0x09f3
    push ax                          ; 0x09f6
    call ds_dispatch_e84e            ; 0x09f7
    add sp, byte 4                   ; 0x09fa
@..api_idx_000a_2.l1:
    cmp word [bp + 0x4], byte 0      ; 0x09fd
    je short @..api_idx_000a_2.l2    ; 0x0a01
    mov ax, 0xc6                     ; 0x0a03
    push ax                          ; 0x0a06
    mov ax, 0x127                    ; 0x0a07
    push ax                          ; 0x0a0a
    mov ax, 0x92                     ; 0x0a0b
    push ax                          ; 0x0a0e
    mov ax, 0x19                     ; 0x0a0f
    push ax                          ; 0x0a12
    call ds_dispatch_e8da            ; 0x0a13
    add sp, byte 8                   ; 0x0a16
@..api_idx_000a_2.l2:
    ret                              ; 0x0a19
loc_0a1a:
    mov ax, 0                        ; 0x0a1a
    call ds_dispatch_f40b            ; 0x0a1d
    mov ax, 0xc6                     ; 0x0a20
    push ax                          ; 0x0a23
    mov ax, 0x109                    ; 0x0a24
    push ax                          ; 0x0a27
    mov ax, 0x92                     ; 0x0a28
    push ax                          ; 0x0a2b
    mov ax, 0x37                     ; 0x0a2c
    push ax                          ; 0x0a2f
    call ds_dispatch_bb33            ; 0x0a30
    add sp, byte 8                   ; 0x0a33
    cmp word [bp + 0x4], byte 0      ; 0x0a36
    je short @..local.l29            ; 0x0a3a
    mov ax, word [data_905a]         ; 0x0a3c
    cmp byte [data_598c], 0          ; 0x0a3f
    je short @..local.l28            ; 0x0a44
    shl ax, 1                        ; 0x0a46
@..local.l28:
    push ax                          ; 0x0a48
    call api_idx_0004                ; 0x0a49
    pop cx                           ; 0x0a4c
    jmp short @..local.l30           ; 0x0a4d
@..local.l29:
    call ds_dispatch_baef            ; 0x0a4f
    test ax, ax                      ; 0x0a52
    jne short @..local.l30           ; 0x0a54
    call math_loc_086b               ; 0x0a56
    jmp short @..local.l29           ; 0x0a59
@..local.l30:
    mov ax, 0                        ; 0x0a5b
    push ax                          ; 0x0a5e
    call api_idx_000a_2              ; 0x0a5f
    pop cx                           ; 0x0a62
    mov word [data_9150], 0          ; 0x0a63
    ret                              ; 0x0a69
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x0a6a
    call ds_dispatch_f40b            ; 0x0a6d
    cmp word [data_9150], byte 3     ; 0x0a70
    jle short @..api_idx_0004_2.l1   ; 0x0a75
    mov ax, 0                        ; 0x0a77
    push ax                          ; 0x0a7a
    call loc_0a1a                    ; 0x0a7b
    pop cx                           ; 0x0a7e
@..api_idx_0004_2.l1:
    mov bx, word [bp + 0x4]          ; 0x0a7f
    cmp byte [bx], 0                 ; 0x0a82
    jne short @..local.l31           ; 0x0a85
    inc word [data_9150]             ; 0x0a87
    ret                              ; 0x0a8b
@..local.l31:
    mov ax, data_0002                ; 0x0a8c
    push ax                          ; 0x0a8f
    push bx                          ; 0x0a90
    call ds_dispatch_e883            ; 0x0a91
    add sp, byte 4                   ; 0x0a94
    inc ax                           ; 0x0a97
    mov cx, data_0002                ; 0x0a98
    cwd                              ; 0x0a9b
    idiv cx                          ; 0x0a9c
    mov cx, ax                       ; 0x0a9e
    mov ax, 0xa0                     ; 0x0aa0
    sub ax, cx                       ; 0x0aa3
    mov word [bp - 0x0002], ax       ; 0x0aa5
    push word [bp + 0x4]             ; 0x0aa8
    call ds_dispatch_fa90            ; 0x0aab
    pop cx                           ; 0x0aae
    dec ax                           ; 0x0aaf
    mov word [bp - 0x0004], ax       ; 0x0ab0
    mov bx, word [bp + 0x4]          ; 0x0ab3
    mov si, ax                       ; 0x0ab6
    mov al, byte [bx + si]           ; 0x0ab8
    sub ah, ah                       ; 0x0aba
    jmp short @..local.l34           ; 0x0abc
@..local.l32:
    mov bx, word [bp + 0x4]          ; 0x0abe
    mov si, word [bp - 0x0004]       ; 0x0ac1
    mov byte [bx + si], 0            ; 0x0ac4
    mov word [bp - 0x0002], 0x44     ; 0x0ac7
    jmp short @..local.l35           ; 0x0acc
@..local.l33:
    mov bx, word [bp + 0x4]          ; 0x0ace
    mov si, word [bp - 0x0004]       ; 0x0ad1
    mov byte [bx + si], 0            ; 0x0ad4
    mov ax, word [data_9152]         ; 0x0ad7
    mov word [bp - 0x0002], ax       ; 0x0ada
    jmp short @..local.l35           ; 0x0add
@..local.l34:
    cmp ax, strict word 0x24         ; 0x0adf
    je short @..local.l32            ; 0x0ae2
    cmp ax, strict word 0x5e         ; 0x0ae4
    je short @..local.l33            ; 0x0ae7
@..local.l35:
    mov ax, 0xc                      ; 0x0ae9
    imul word [data_9150]            ; 0x0aec
    add ax, 0x92                     ; 0x0af0
    push ax                          ; 0x0af3
    push word [bp - 0x0002]          ; 0x0af4
    call ds_dispatch_e809            ; 0x0af7
    add sp, byte 4                   ; 0x0afa
    mov ax, 0                        ; 0x0afd
    push ax                          ; 0x0b00
    mov ax, 0x55                     ; 0x0b01
    push ax                          ; 0x0b04
    call ds_dispatch_e823            ; 0x0b05
    add sp, byte 4                   ; 0x0b08
    mov ax, data_0002                ; 0x0b0b
    push ax                          ; 0x0b0e
    push word [bp + 0x4]             ; 0x0b0f
    call ds_dispatch_e84e            ; 0x0b12
    add sp, byte 4                   ; 0x0b15
    mov bx, word [bp + 0x4]          ; 0x0b18
    mov byte [bx], 0                 ; 0x0b1b
    mov ax, word [bp - 0x0002]       ; 0x0b1e
    mov word [data_9152], ax         ; 0x0b21
    inc word [data_9150]             ; 0x0b24
    ret                              ; 0x0b28
api_idx_0090:
    mov ax, 0xff70                   ; 0x0b29
    call ds_dispatch_f40b            ; 0x0b2c
@..api_idx_0090.l1:
    mov bx, word [bp + 0x4]          ; 0x0b2f
    mov al, byte [bx]                ; 0x0b32
    sub ah, ah                       ; 0x0b34
    push ax                          ; 0x0b36
    mov ax, 0x9098                   ; 0x0b37
    push ax                          ; 0x0b3a
    call ds_dispatch_ee4a            ; 0x0b3b
    add sp, byte 4                   ; 0x0b3e
    mov word [bp - 0x0004], ax       ; 0x0b41
    cmp ax, strict word 0            ; 0x0b44
    jge short @..api_idx_0090.l2     ; 0x0b47
    jmp near @..api_idx_0090.l9      ; 0x0b49
@..api_idx_0090.l2:
    jmp near @..api_idx_0090.l7      ; 0x0b4c
    inc word [bp + 0x4]              ; 0x0b4f
    mov ax, data_9154                ; 0x0b52
    push ax                          ; 0x0b55
    call api_idx_0004_2              ; 0x0b56
    pop cx                           ; 0x0b59
    jmp near @..api_idx_0090.l8      ; 0x0b5a
    inc word [bp + 0x4]              ; 0x0b5d
    mov ax, data_9154                ; 0x0b60
    push ax                          ; 0x0b63
    call api_idx_0004_2              ; 0x0b64
    pop cx                           ; 0x0b67
    mov ax, 0xc6                     ; 0x0b68
    push ax                          ; 0x0b6b
    mov ax, 0x109                    ; 0x0b6c
    push ax                          ; 0x0b6f
    mov ax, 0x92                     ; 0x0b70
    push ax                          ; 0x0b73
    mov ax, 0x37                     ; 0x0b74
    push ax                          ; 0x0b77
    call ds_dispatch_bb33            ; 0x0b78
    add sp, byte 8                   ; 0x0b7b
    push word [data_905a]            ; 0x0b7e
    call api_idx_0004                ; 0x0b82
    pop cx                           ; 0x0b85
    jmp near @..api_idx_0090.l8      ; 0x0b86
    inc word [bp + 0x4]              ; 0x0b89
    mov ax, data_9154                ; 0x0b8c
    push ax                          ; 0x0b8f
    call api_idx_0004_2              ; 0x0b90
    pop cx                           ; 0x0b93
    mov ax, 0xc6                     ; 0x0b94
    push ax                          ; 0x0b97
    mov ax, 0x109                    ; 0x0b98
    push ax                          ; 0x0b9b
    mov ax, 0x92                     ; 0x0b9c
    push ax                          ; 0x0b9f
    mov ax, 0x37                     ; 0x0ba0
    push ax                          ; 0x0ba3
    call ds_dispatch_bb33            ; 0x0ba4
    add sp, byte 8                   ; 0x0ba7
    jmp near @..api_idx_0090.l8      ; 0x0baa
    inc word [bp + 0x4]              ; 0x0bad
    mov ax, 0                        ; 0x0bb0
    push ax                          ; 0x0bb3
    call api_idx_000a_2              ; 0x0bb4
    pop cx                           ; 0x0bb7
    mov word [data_9150], 0          ; 0x0bb8
    jmp near @..api_idx_0090.l8      ; 0x0bbe
    inc word [bp + 0x4]              ; 0x0bc1
    mov ax, data_9154                ; 0x0bc4
    push ax                          ; 0x0bc7
    call api_idx_0004_2              ; 0x0bc8
    pop cx                           ; 0x0bcb
    mov ax, 0                        ; 0x0bcc
    push ax                          ; 0x0bcf
    call loc_0a1a                    ; 0x0bd0
    pop cx                           ; 0x0bd3
    jmp near @..api_idx_0090.l8      ; 0x0bd4
    inc word [bp + 0x4]              ; 0x0bd7
    mov ax, 0x10                     ; 0x0bda
    push ax                          ; 0x0bdd
    mov ax, 0xa                      ; 0x0bde
    push ax                          ; 0x0be1
    call ds_dispatch_d61c            ; 0x0be2
    add sp, byte 4                   ; 0x0be5
    mov byte [bp - 0x0090], 1        ; 0x0be8
    mov byte [bp - 0x008f], 0        ; 0x0bed
    mov ax, 0                        ; 0x0bf2
    push ax                          ; 0x0bf5
    push ax                          ; 0x0bf6
    lea ax, word [bp - 0x0090]       ; 0x0bf7
    push ax                          ; 0x0bfb
    mov ax, 0                        ; 0x0bfc
    push ax                          ; 0x0bff
    mov ax, 0xc7                     ; 0x0c00
    push ax                          ; 0x0c03
    mov ax, 0                        ; 0x0c04
    push ax                          ; 0x0c07
    mov ax, 0x13f                    ; 0x0c08
    push ax                          ; 0x0c0b
    mov ax, 0                        ; 0x0c0c
    push ax                          ; 0x0c0f
    mov ax, 0x92                     ; 0x0c10
    push ax                          ; 0x0c13
    mov ax, 0x59                     ; 0x0c14
    push ax                          ; 0x0c17
    mov ax, 0x10                     ; 0x0c18
    push ax                          ; 0x0c1b
    call ds_dispatch_efd1            ; 0x0c1c
    add sp, byte 0x16                ; 0x0c1f
    mov ax, 0x10                     ; 0x0c22
    push ax                          ; 0x0c25
    call ds_dispatch_c12a            ; 0x0c26
    pop cx                           ; 0x0c29
    jmp near @..api_idx_0090.l8      ; 0x0c2a
    inc word [bp + 0x4]              ; 0x0c2d
    mov bx, word [bp + 0x4]          ; 0x0c30
    mov al, byte [bx]                ; 0x0c33
    sub ah, ah                       ; 0x0c35
    mov word [bp - 0x0006], ax       ; 0x0c37
    cmp ax, strict word 0x63         ; 0x0c3a
    jne short @..api_idx_0090.l3     ; 0x0c3d
    mov word [bp - 0x0006], 0x20     ; 0x0c3f
@..api_idx_0090.l3:
    cmp word [bp - 0x0006], byte 0   ; 0x0c44
    jle short @..api_idx_0090.l6     ; 0x0c48
    mov ax, word [bp - 0x0006]       ; 0x0c4a
    cmp ax, strict word 5            ; 0x0c4d
    jl short @..api_idx_0090.l4      ; 0x0c50
    cmp ax, strict word 8            ; 0x0c52
    je short @..api_idx_0090.l4      ; 0x0c55
    cmp ax, strict word 9            ; 0x0c57
    jne short @..api_idx_0090.l5     ; 0x0c5a
@..api_idx_0090.l4:
    push ax                          ; 0x0c5c
    call ds_dispatch_b7e0            ; 0x0c5d
    pop cx                           ; 0x0c60
    jmp short @..api_idx_0090.l6     ; 0x0c61
@..api_idx_0090.l5:
    push word [bp - 0x0006]          ; 0x0c63
    call ds_dispatch_d7aa            ; 0x0c66
    pop cx                           ; 0x0c69
    mov ax, 0x10                     ; 0x0c6a
    push ax                          ; 0x0c6d
    call ds_dispatch_b7e0            ; 0x0c6e
    pop cx                           ; 0x0c71
    mov ax, 0x10                     ; 0x0c72
    push ax                          ; 0x0c75
    call ds_dispatch_d6c6            ; 0x0c76
    pop cx                           ; 0x0c79
    mov word [data_598e], 0xffff     ; 0x0c7a
@..api_idx_0090.l6:
    inc word [bp + 0x4]              ; 0x0c80
    jmp short @..api_idx_0090.l8     ; 0x0c83
    xchg si, ax                      ; 0x0c85
    pop bx                           ; 0x0c86
    movsb                            ; 0x0c87
    pop bx                           ; 0x0c88
    rcr byte [bp + di - 0x000c], 1   ; 0x0c89
    pop bx                           ; 0x0c8c
    or byte [si + 0x1e], bl          ; 0x0c8d
    pop sp                           ; 0x0c90
    je short @..api_idx_0090.l12     ; 0x0c91
@..api_idx_0090.l7:
    cmp ax, strict word 7            ; 0x0c93
    jae short @..api_idx_0090.l8     ; 0x0c96
    xchg bx, ax                      ; 0x0c98
    shl bx, 1                        ; 0x0c99
    jmp [cs:bx + 0x5ccc]             ; 0x0c9b
@..api_idx_0090.l8:
    jmp near @..api_idx_0090.l1      ; 0x0ca0
@..api_idx_0090.l9:
    cmp byte [data_9154], 0          ; 0x0ca3
    je short @..api_idx_0090.l10     ; 0x0ca8
    mov ax, data_9154                ; 0x0caa
    push ax                          ; 0x0cad
    lea ax, word [bp - 0x0086]       ; 0x0cae
    push ax                          ; 0x0cb2
    call ds_dispatch_f364            ; 0x0cb3
    add sp, byte 4                   ; 0x0cb6
    mov ax, 0x90a0                   ; 0x0cb9
    push ax                          ; 0x0cbc
    lea ax, word [bp - 0x0086]       ; 0x0cbd
    push ax                          ; 0x0cc1
    call ds_dispatch_f32d            ; 0x0cc2
    add sp, byte 4                   ; 0x0cc5
    push word [bp + 0x4]             ; 0x0cc8
    lea ax, word [bp - 0x0086]       ; 0x0ccb
    push ax                          ; 0x0ccf
    call ds_dispatch_f32d            ; 0x0cd0
    add sp, byte 4                   ; 0x0cd3
    jmp short @..api_idx_0090.l11    ; 0x0cd6
@..api_idx_0090.l10:
    push word [bp + 0x4]             ; 0x0cd8
    lea ax, word [bp - 0x0086]       ; 0x0cdb
    push ax                          ; 0x0cdf
    call ds_dispatch_f364            ; 0x0ce0
    add sp, byte 4                   ; 0x0ce3
@..api_idx_0090.l11:
    mov ax, data_0002                ; 0x0ce6
    push ax                          ; 0x0ce9
    lea ax, word [bp - 0x0086]       ; 0x0cea
    push ax                          ; 0x0cee
@..api_idx_0090.l12:
    call ds_dispatch_e883            ; 0x0cef
    add sp, byte 4                   ; 0x0cf2
    mov word [bp - 0x0002], ax       ; 0x0cf5
    cmp ax, 0xb8                     ; 0x0cf8
    jle short @..api_idx_0090.l13    ; 0x0cfb
    mov ax, data_9154                ; 0x0cfd
    push ax                          ; 0x0d00
    call api_idx_0004_2              ; 0x0d01
    pop cx                           ; 0x0d04
    push word [bp + 0x4]             ; 0x0d05
    mov ax, data_9154                ; 0x0d08
    push ax                          ; 0x0d0b
    call ds_dispatch_f364            ; 0x0d0c
    add sp, byte 4                   ; 0x0d0f
    jmp short @..api_idx_0090.l14    ; 0x0d12
@..api_idx_0090.l13:
    lea ax, word [bp - 0x0086]       ; 0x0d14
    push ax                          ; 0x0d18
    mov ax, data_9154                ; 0x0d19
    push ax                          ; 0x0d1c
    call ds_dispatch_f364            ; 0x0d1d
    add sp, byte 4                   ; 0x0d20
@..api_idx_0090.l14:
    ret                              ; 0x0d23
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x0d24
    call ds_dispatch_f40b            ; 0x0d27
@..api_idx_0004_3.l1:
    mov ax, 0x20                     ; 0x0d2a
    push ax                          ; 0x0d2d
    push word [bp + 0x4]             ; 0x0d2e
    call ds_dispatch_ee4a            ; 0x0d31
    add sp, byte 4                   ; 0x0d34
    mov word [bp - 0x0002], ax       ; 0x0d37
    cmp ax, strict word 0xffff       ; 0x0d3a
    je short @..api_idx_0004_3.l4    ; 0x0d3d
    mov bx, word [bp + 0x4]          ; 0x0d3f
    mov si, ax                       ; 0x0d42
    mov byte [bx + si], 0            ; 0x0d44
@..api_idx_0004_3.l2:
    mov ax, 0x5f                     ; 0x0d47
    push ax                          ; 0x0d4a
    push word [bp + 0x4]             ; 0x0d4b
    call ds_dispatch_ee4a            ; 0x0d4e
    add sp, byte 4                   ; 0x0d51
    mov word [bp - 0x0004], ax       ; 0x0d54
    cmp ax, strict word 0xffff       ; 0x0d57
    je short @..api_idx_0004_3.l3    ; 0x0d5a
    mov bx, word [bp + 0x4]          ; 0x0d5c
    mov si, ax                       ; 0x0d5f
    mov byte [bx + si], 0x20         ; 0x0d61
    jmp short @..api_idx_0004_3.l2   ; 0x0d64
@..api_idx_0004_3.l3:
    push word [bp + 0x4]             ; 0x0d66
    call api_idx_0090                ; 0x0d69
    pop cx                           ; 0x0d6c
    mov ax, word [bp - 0x0002]       ; 0x0d6d
    add word [bp + 0x4], ax          ; 0x0d70
    add word [bp + 0x4], byte 1      ; 0x0d73
    jmp short @..api_idx_0004_3.l1   ; 0x0d77
@..api_idx_0004_3.l4:
    mov bx, word [bp + 0x4]          ; 0x0d79
    cmp byte [bx], 0                 ; 0x0d7c
    je short @..api_idx_0004_3.l5    ; 0x0d7f
    push bx                          ; 0x0d81
    call api_idx_0090                ; 0x0d82
    pop cx                           ; 0x0d85
@..api_idx_0004_3.l5:
    ret                              ; 0x0d86
loc_0d87:
    mov ax, 0xfefa                   ; 0x0d87
    call ds_dispatch_f40b            ; 0x0d8a
    mov ax, 0                        ; 0x0d8d
    push ax                          ; 0x0d90
    call api_idx_000a_2              ; 0x0d91
    pop cx                           ; 0x0d94
    mov word [data_9152], 0x44       ; 0x0d95
    mov word [data_9150], 0          ; 0x0d9b
    mov byte [data_9154], 0          ; 0x0da1
@..local.l36:
    lea ax, word [bp - 0x0105]       ; 0x0da6
    push ax                          ; 0x0daa
    push word [bp + 0x4]             ; 0x0dab
    call ds_dispatch_b53b            ; 0x0dae
    add sp, byte 4                   ; 0x0db1
    cmp word [data_5216], byte 0     ; 0x0db4
    jne short @..local.l37           ; 0x0db9
    lea ax, word [bp - 0x0105]       ; 0x0dbb
    push ax                          ; 0x0dbf
    call api_idx_0004_3              ; 0x0dc0
    pop cx                           ; 0x0dc3
    inc word [bp + 0x4]              ; 0x0dc4
@..local.l37:
    cmp word [data_5216], byte 0     ; 0x0dc7
    je short @..local.l36            ; 0x0dcc
    cmp byte [data_9154], 0          ; 0x0dce
    je short @..local.l38            ; 0x0dd3
    mov ax, data_9154                ; 0x0dd5
    push ax                          ; 0x0dd8
    call api_idx_0004_2              ; 0x0dd9
    pop cx                           ; 0x0ddc
@..local.l38:
    push word [bp + 0x6]             ; 0x0ddd
    call loc_0a1a                    ; 0x0de0
    pop cx                           ; 0x0de3
    mov ax, 0                        ; 0x0de4
    push ax                          ; 0x0de7
    call api_idx_000a_2              ; 0x0de8
    pop cx                           ; 0x0deb
    mov ax, 0xc6                     ; 0x0dec
    push ax                          ; 0x0def
    mov ax, 0x109                    ; 0x0df0
    push ax                          ; 0x0df3
    mov ax, 0x92                     ; 0x0df4
    push ax                          ; 0x0df7
    mov ax, 0x37                     ; 0x0df8
    push ax                          ; 0x0dfb
    call ds_dispatch_bb33            ; 0x0dfc
    add sp, byte 8                   ; 0x0dff
    ret                              ; 0x0e02
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x0e03
    call ds_dispatch_f40b            ; 0x0e06
    mov word [bp - 0x0002], 0        ; 0x0e09
    mov word [bp - 0x0004], 0        ; 0x0e0e
    cmp word [bp + 0x4], byte 0      ; 0x0e13
    jle short @..api_idx_0004_4.l1   ; 0x0e17
    mov ax, 0x90a2                   ; 0x0e19
    push ax                          ; 0x0e1c
    mov ax, 7                        ; 0x0e1d
    imul word [bp + 0x4]             ; 0x0e20
    add ax, 0x9b                     ; 0x0e23
    push ax                          ; 0x0e26
    mov ax, 0x127                    ; 0x0e27
    push ax                          ; 0x0e2a
    mov ax, 0x9c                     ; 0x0e2b
    push ax                          ; 0x0e2e
    mov ax, 0x19                     ; 0x0e2f
    push ax                          ; 0x0e32
    call ds_dispatch_c283            ; 0x0e33
    add sp, byte 0x0a                ; 0x0e36
    mov word [bp - 0x0002], ax       ; 0x0e39
@..api_idx_0004_4.l1:
    cmp word [bp + 0x6], byte 4      ; 0x0e3c
    jge short @..api_idx_0004_4.l2   ; 0x0e40
    mov ax, 0x90a9                   ; 0x0e42
    push ax                          ; 0x0e45
    mov ax, 0xc4                     ; 0x0e46
    push ax                          ; 0x0e49
    mov ax, 0x127                    ; 0x0e4a
    push ax                          ; 0x0e4d
    mov ax, 7                        ; 0x0e4e
    imul word [bp + 0x6]             ; 0x0e51
    add ax, 0xa2                     ; 0x0e54
    push ax                          ; 0x0e57
    mov ax, 0x19                     ; 0x0e58
    push ax                          ; 0x0e5b
    call ds_dispatch_c283            ; 0x0e5c
    add sp, byte 0x0a                ; 0x0e5f
    mov word [bp - 0x0004], ax       ; 0x0e62
@..api_idx_0004_4.l2:
    mov ax, 0                        ; 0x0e65
    push ax                          ; 0x0e68
    call api_idx_000a_2              ; 0x0e69
    pop cx                           ; 0x0e6c
    cmp word [bp - 0x0004], byte 0   ; 0x0e6d
    je short @..api_idx_0004_4.l3    ; 0x0e71
    mov ax, 1                        ; 0x0e73
    push ax                          ; 0x0e76
    push word [bp - 0x0004]          ; 0x0e77
    call ds_dispatch_c459            ; 0x0e7a
    add sp, byte 4                   ; 0x0e7d
@..api_idx_0004_4.l3:
    cmp word [bp - 0x0002], byte 0   ; 0x0e80
    je short @..api_idx_0004_4.l4    ; 0x0e84
    mov ax, 1                        ; 0x0e86
    push ax                          ; 0x0e89
    push word [bp - 0x0002]          ; 0x0e8a
    call ds_dispatch_c459            ; 0x0e8d
    add sp, byte 4                   ; 0x0e90
@..api_idx_0004_4.l4:
    mov ax, 0xc2                     ; 0x0e93
    push ax                          ; 0x0e96
    mov ax, 0x127                    ; 0x0e97
    push ax                          ; 0x0e9a
    mov ax, 0x92                     ; 0x0e9b
    push ax                          ; 0x0e9e
    mov ax, 0x19                     ; 0x0e9f
    push ax                          ; 0x0ea2
    call ds_dispatch_e8da            ; 0x0ea3
    add sp, byte 8                   ; 0x0ea6
    mov ax, 1                        ; 0x0ea9
    push ax                          ; 0x0eac
    call api_idx_0004                ; 0x0ead
    pop cx                           ; 0x0eb0
    ret                              ; 0x0eb1
math_loc_0eb2:
    mov ax, 0                        ; 0x0eb2
    call ds_dispatch_f40b            ; 0x0eb5
    push word [bp + 0x6]             ; 0x0eb8
    push word [bp + 0x6]             ; 0x0ebb
    call api_idx_0004_4              ; 0x0ebe
    add sp, byte 4                   ; 0x0ec1
    mov ax, 0                        ; 0x0ec4
    push ax                          ; 0x0ec7
    push word [bp + 0xa]             ; 0x0ec8
    call ds_dispatch_e823            ; 0x0ecb
    add sp, byte 4                   ; 0x0ece
    mov ax, 7                        ; 0x0ed1
    imul word [bp + 0x6]             ; 0x0ed4
    add ax, 0x9c                     ; 0x0ed7
    push ax                          ; 0x0eda
    push word [bp + 0x4]             ; 0x0edb
    call ds_dispatch_fa90            ; 0x0ede
    pop cx                           ; 0x0ee1
    mov cx, 6                        ; 0x0ee2
    imul cx                          ; 0x0ee5
    mov cx, data_0002                ; 0x0ee7
    cwd                              ; 0x0eea
    idiv cx                          ; 0x0eeb
    mov cx, ax                       ; 0x0eed
    mov ax, 0xa0                     ; 0x0eef
    sub ax, cx                       ; 0x0ef2
    push ax                          ; 0x0ef4
    call ds_dispatch_e809            ; 0x0ef5
    add sp, byte 4                   ; 0x0ef8
    mov ax, 0                        ; 0x0efb
    push ax                          ; 0x0efe
    push word [bp + 0x4]             ; 0x0eff
    call ds_dispatch_e84e            ; 0x0f02
    add sp, byte 4                   ; 0x0f05
    mov ax, 7                        ; 0x0f08
    imul word [bp + 0x6]             ; 0x0f0b
    add ax, 0xa2                     ; 0x0f0e
    push ax                          ; 0x0f11
    mov ax, 0x127                    ; 0x0f12
    push ax                          ; 0x0f15
    mov ax, 7                        ; 0x0f16
    imul word [bp + 0x6]             ; 0x0f19
    add ax, 0x9c                     ; 0x0f1c
    push ax                          ; 0x0f1f
    mov ax, 0x19                     ; 0x0f20
    push ax                          ; 0x0f23
    call ds_dispatch_e8da            ; 0x0f24
    add sp, byte 8                   ; 0x0f27
    cmp word [bp + 0x8], byte 0      ; 0x0f2a
    jle short @..math_loc_0eb2.l1    ; 0x0f2e
    mov ax, word [bp + 0x8]          ; 0x0f30
    dec ax                           ; 0x0f33
    push ax                          ; 0x0f34
    call ds_dispatch_b7e0            ; 0x0f35
    pop cx                           ; 0x0f38
@..math_loc_0eb2.l1:
    push word [data_905a]            ; 0x0f39
    call api_idx_0004                ; 0x0f3d
    pop cx                           ; 0x0f40
    cmp word [bp + 0x8], byte 0xff   ; 0x0f41
    je short @..math_loc_0eb2.l2     ; 0x0f45
    push word [bp + 0x6]             ; 0x0f47
    push word [bp + 0x6]             ; 0x0f4a
    call api_idx_0004_4              ; 0x0f4d
    add sp, byte 4                   ; 0x0f50
@..math_loc_0eb2.l2:
    ret                              ; 0x0f53
math_loc_0f54:
    mov ax, 0                        ; 0x0f54
    call ds_dispatch_f40b            ; 0x0f57
    mov ax, 0x248                    ; 0x0f5a
    imul word [bp + 0x4]             ; 0x0f5d
    add ax, word [bp + 0x6]          ; 0x0f60
    mov bx, ax                       ; 0x0f63
    cmp byte [bx + 0x5d6c], 0x64     ; 0x0f65
    jae short @..math_loc_0f54.l1    ; 0x0f6a
    mov al, byte [bx + 0x5d6c]       ; 0x0f6c
    sub ah, ah                       ; 0x0f70
    push ax                          ; 0x0f72
    call ds_dispatch_b7a9            ; 0x0f73
    pop cx                           ; 0x0f76
    push ax                          ; 0x0f77
    mov ax, 0x248                    ; 0x0f78
    imul word [bp + 0x4]             ; 0x0f7b
    mov bx, ax                       ; 0x0f7e
    mov ax, word [bx + 0x5c18]       ; 0x0f80
    imul word [bp + 0x8]             ; 0x0f84
    mov cx, ax                       ; 0x0f87
    pop ax                           ; 0x0f89
    sub ax, cx                       ; 0x0f8a
    jg short @..math_loc_0f54.l1     ; 0x0f8c
    add bx, word [bp + 0x6]          ; 0x0f8e
    inc byte [bx + 0x5d6c]           ; 0x0f91
@..math_loc_0f54.l1:
    ret                              ; 0x0f95
api_idx_0002:
    mov ax, 0xfffe                   ; 0x0f96
    call ds_dispatch_f40b            ; 0x0f99
    mov ax, 1                        ; 0x0f9c
    push ax                          ; 0x0f9f
    push ax                          ; 0x0fa0
    call api_idx_0004_4              ; 0x0fa1
    add sp, byte 4                   ; 0x0fa4
    mov bx, word [bp + 0x6]          ; 0x0fa7
    cmp byte [bx], 0                 ; 0x0faa
    je short @..api_idx_0002.l1      ; 0x0fad
    mov ax, 1                        ; 0x0faf
    jmp short @..api_idx_0002.l2     ; 0x0fb2
@..api_idx_0002.l1:
    mov ax, 0                        ; 0x0fb4
@..api_idx_0002.l2:
    mov bx, word [bp + 0x8]          ; 0x0fb7
    cmp byte [bx], 0                 ; 0x0fba
    je short @..api_idx_0002.l3      ; 0x0fbd
    mov cx, 1                        ; 0x0fbf
    jmp short @..api_idx_0002.l4     ; 0x0fc2
@..api_idx_0002.l3:
    mov cx, 0                        ; 0x0fc4
@..api_idx_0002.l4:
    add ax, cx                       ; 0x0fc7
    mov bx, word [bp + 0xa]          ; 0x0fc9
    cmp byte [bx], 0                 ; 0x0fcc
    je short @..api_idx_0002.l5      ; 0x0fcf
    mov cx, 1                        ; 0x0fd1
    jmp short @..api_idx_0002.l6     ; 0x0fd4
@..api_idx_0002.l5:
    mov cx, 0                        ; 0x0fd6
@..api_idx_0002.l6:
    add ax, cx                       ; 0x0fd9
    mov word [bp - 0x0002], ax       ; 0x0fdb
    mov ax, 0xa3                     ; 0x0fde
    push ax                          ; 0x0fe1
    mov ax, 0x248                    ; 0x0fe2
    imul word [bp + 0x4]             ; 0x0fe5
    add ax, 0x5bf4                   ; 0x0fe8
    push ax                          ; 0x0feb
    call ds_dispatch_fa90            ; 0x0fec
    pop cx                           ; 0x0fef
    push ax                          ; 0x0ff0
    push word [bp + 0x6]             ; 0x0ff1
    call ds_dispatch_fa90            ; 0x0ff4
    pop cx                           ; 0x0ff7
    mov cx, ax                       ; 0x0ff8
    pop ax                           ; 0x0ffa
    add ax, cx                       ; 0x0ffb
    push ax                          ; 0x0ffd
    push word [bp + 0x8]             ; 0x0ffe
    call ds_dispatch_fa90            ; 0x1001
    pop cx                           ; 0x1004
    mov cx, ax                       ; 0x1005
    pop ax                           ; 0x1007
    add ax, cx                       ; 0x1008
    push ax                          ; 0x100a
    push word [bp + 0xa]             ; 0x100b
    call ds_dispatch_fa90            ; 0x100e
    pop cx                           ; 0x1011
    mov cx, ax                       ; 0x1012
    pop ax                           ; 0x1014
    add ax, cx                       ; 0x1015
    add ax, word [bp - 0x0002]       ; 0x1017
    mov cx, 6                        ; 0x101a
    imul cx                          ; 0x101d
    mov cx, data_0002                ; 0x101f
    cwd                              ; 0x1022
    idiv cx                          ; 0x1023
    mov cx, ax                       ; 0x1025
    mov ax, 0xa0                     ; 0x1027
    sub ax, cx                       ; 0x102a
    push ax                          ; 0x102c
    call ds_dispatch_e809            ; 0x102d
    add sp, byte 4                   ; 0x1030
    mov ax, 0                        ; 0x1033
    push ax                          ; 0x1036
    push word [bp + 0xc]             ; 0x1037
    call ds_dispatch_e823            ; 0x103a
    add sp, byte 4                   ; 0x103d
    mov ax, 0                        ; 0x1040
    push ax                          ; 0x1043
    mov ax, 0x248                    ; 0x1044
    imul word [bp + 0x4]             ; 0x1047
    add ax, 0x5bf4                   ; 0x104a
    push ax                          ; 0x104d
    call ds_dispatch_e84e            ; 0x104e
    add sp, byte 4                   ; 0x1051
    mov ax, 0                        ; 0x1054
    push ax                          ; 0x1057
    mov ax, 0x20                     ; 0x1058
    push ax                          ; 0x105b
    call ds_dispatch_e830            ; 0x105c
    add sp, byte 4                   ; 0x105f
    mov bx, word [bp + 0x6]          ; 0x1062
    cmp byte [bx], 0                 ; 0x1065
    je short @..api_idx_0002.l7      ; 0x1068
    mov ax, 0                        ; 0x106a
    push ax                          ; 0x106d
    push word [bp + 0xe]             ; 0x106e
    call ds_dispatch_e823            ; 0x1071
    add sp, byte 4                   ; 0x1074
    mov ax, 0                        ; 0x1077
    push ax                          ; 0x107a
    push word [bp + 0x6]             ; 0x107b
    call ds_dispatch_e84e            ; 0x107e
    add sp, byte 4                   ; 0x1081
    mov ax, 0                        ; 0x1084
    push ax                          ; 0x1087
    mov ax, 0x20                     ; 0x1088
    push ax                          ; 0x108b
    call ds_dispatch_e830            ; 0x108c
    add sp, byte 4                   ; 0x108f
@..api_idx_0002.l7:
    mov bx, word [bp + 0x8]          ; 0x1092
    cmp byte [bx], 0                 ; 0x1095
    je short @..api_idx_0002.l8      ; 0x1098
    mov ax, 0                        ; 0x109a
    push ax                          ; 0x109d
    push word [bp + 0x10]            ; 0x109e
    call ds_dispatch_e823            ; 0x10a1
    add sp, byte 4                   ; 0x10a4
    mov ax, 0                        ; 0x10a7
    push ax                          ; 0x10aa
    push word [bp + 0x8]             ; 0x10ab
    call ds_dispatch_e84e            ; 0x10ae
    add sp, byte 4                   ; 0x10b1
    mov ax, 0                        ; 0x10b4
    push ax                          ; 0x10b7
    mov ax, 0x20                     ; 0x10b8
    push ax                          ; 0x10bb
    call ds_dispatch_e830            ; 0x10bc
    add sp, byte 4                   ; 0x10bf
@..api_idx_0002.l8:
    mov bx, word [bp + 0xa]          ; 0x10c2
    cmp byte [bx], 0                 ; 0x10c5
    je short @..api_idx_0002.l9      ; 0x10c8
    mov ax, 0                        ; 0x10ca
    push ax                          ; 0x10cd
    push word [bp + 0x12]            ; 0x10ce
    call ds_dispatch_e823            ; 0x10d1
    add sp, byte 4                   ; 0x10d4
    mov ax, 0                        ; 0x10d7
    push ax                          ; 0x10da
    push word [bp + 0xa]             ; 0x10db
    call ds_dispatch_e84e            ; 0x10de
    add sp, byte 4                   ; 0x10e1
@..api_idx_0002.l9:
    mov ax, 0xa9                     ; 0x10e4
    push ax                          ; 0x10e7
    mov ax, 0x127                    ; 0x10e8
    push ax                          ; 0x10eb
    mov ax, 0xa3                     ; 0x10ec
    push ax                          ; 0x10ef
    mov ax, 0x19                     ; 0x10f0
    push ax                          ; 0x10f3
    call ds_dispatch_e8da            ; 0x10f4
    add sp, byte 8                   ; 0x10f7
    ret                              ; 0x10fa
api_idx_005a:
    mov ax, 0xffa6                   ; 0x10fb
    call ds_dispatch_f40b            ; 0x10fe
    cmp word [bp + 0x8], byte 0      ; 0x1101
    je short @..api_idx_005a.l1      ; 0x1105
    mov ax, 0x64                     ; 0x1107
    push ax                          ; 0x110a
    call ds_dispatch_b7a9            ; 0x110b
    pop cx                           ; 0x110e
    push ax                          ; 0x110f
    mov ax, 0x248                    ; 0x1110
    imul word [bp + 0x4]             ; 0x1113
    add ax, word [bp + 0x8]          ; 0x1116
    mov bx, ax                       ; 0x1119
    mov al, byte [bx + 0x5d9c]       ; 0x111b
    sub ah, ah                       ; 0x111f
    mov cx, ax                       ; 0x1121
    pop ax                           ; 0x1123
    cmp ax, cx                       ; 0x1124
    jg short @..api_idx_005a.l1      ; 0x1126
    jmp near @..api_idx_005a.l5      ; 0x1128
@..api_idx_005a.l1:
    mov ax, 0x248                    ; 0x112b
    imul word [bp + 0x4]             ; 0x112e
    mov bx, ax                       ; 0x1131
    mov al, byte [bx + 0x5e2f]       ; 0x1133
    sub ah, ah                       ; 0x1137
    cmp ax, word [bp + 0xa]          ; 0x1139
    jl short @..api_idx_005a.l2      ; 0x113c
    jmp near @..api_idx_005a.l5      ; 0x113e
@..api_idx_005a.l2:
    mov al, byte [bp + 0xa]          ; 0x1141
    mov byte [bx + 0x5e2f], al       ; 0x1144
    cmp word [bp + 0xa], byte 3      ; 0x1148
    jl short @..api_idx_005a.l3      ; 0x114c
    mov word [bx + 0x5c0c], 0        ; 0x114e
    mov word [bx + 0x5c10], 0        ; 0x1154
@..api_idx_005a.l3:
    lea ax, word [bp - 0x0050]       ; 0x115a
    push ax                          ; 0x115d
    push word [bp + 0x6]             ; 0x115e
    call ds_dispatch_b53b            ; 0x1161
    add sp, byte 4                   ; 0x1164
    mov ax, 0                        ; 0x1167
    push ax                          ; 0x116a
    push ax                          ; 0x116b
    mov ax, 0x41                     ; 0x116c
    push ax                          ; 0x116f
    mov ax, 1                        ; 0x1170
    push ax                          ; 0x1173
    mov ax, 0x90b1                   ; 0x1174
    push ax                          ; 0x1177
    mov ax, 0x90b0                   ; 0x1178
    push ax                          ; 0x117b
    lea ax, word [bp - 0x0050]       ; 0x117c
    push ax                          ; 0x117f
    push word [bp + 0x4]             ; 0x1180
    call api_idx_0002                ; 0x1183
    add sp, byte 0x10                ; 0x1186
    mov ax, 0x248                    ; 0x1189
    imul word [bp + 0x4]             ; 0x118c
    mov bx, ax                       ; 0x118f
    cmp byte [bx + 0x5e2f], 3        ; 0x1191
    jb short @..api_idx_005a.l4      ; 0x1196
    mov al, byte [bx + 0x5e2c]       ; 0x1198
    sub ah, ah                       ; 0x119c
    add ax, strict word 8            ; 0x119e
    push ax                          ; 0x11a1
    call ds_dispatch_b7e0            ; 0x11a2
    pop cx                           ; 0x11a5
@..api_idx_005a.l4:
    mov ax, 1                        ; 0x11a6
    push ax                          ; 0x11a9
    push word [bp + 0x4]             ; 0x11aa
    call ds_dispatch_cb3a            ; 0x11ad
    add sp, byte 4                   ; 0x11b0
    push word [data_905a]            ; 0x11b3
    call api_idx_0004                ; 0x11b7
    pop cx                           ; 0x11ba
@..api_idx_005a.l5:
    ret                              ; 0x11bb
api_idx_003e:
    mov ax, 0xffc2                   ; 0x11bc
    call ds_dispatch_f40b            ; 0x11bf
    mov ax, 0                        ; 0x11c2
    push ax                          ; 0x11c5
    push word [bp + 0x8]             ; 0x11c6
    push word [bp + 0x6]             ; 0x11c9
    call ds_dispatch_d0ea            ; 0x11cc
    add sp, byte 6                   ; 0x11cf
    mov cx, ax                       ; 0x11d2
    sub sp, byte 4                   ; 0x11d4
    mov ax, sp                       ; 0x11d7
    mov dx, ss                       ; 0x11d9
    mov es, dx                       ; 0x11db
    mov si, cx                       ; 0x11dd
    mov di, ax                       ; 0x11df
    movsw                            ; 0x11e1
    movsw                            ; 0x11e2
    call ds_dispatch_d0be            ; 0x11e3
    add sp, byte 4                   ; 0x11e6
    mov word [bp - 0x0002], ax       ; 0x11e9
    cmp word [bp - 0x0002], byte 0   ; 0x11ec
    je short @..api_idx_003e.l1      ; 0x11f0
    mov ax, 0x248                    ; 0x11f2
    imul word [bp + 0x4]             ; 0x11f5
    mov bx, ax                       ; 0x11f8
    cmp byte [bx + 0x5e2f], 3        ; 0x11fa
    jb short @..local.l39            ; 0x11ff
@..api_idx_003e.l1:
    mov ax, 0                        ; 0x1201
    ret                              ; 0x1204
@..local.l39:
    lea ax, word [bp - 0x002a]       ; 0x1205
    push ax                          ; 0x1208
    push word [bp - 0x0002]          ; 0x1209
    call ds_dispatch_b27d            ; 0x120c
    add sp, byte 4                   ; 0x120f
    lea ax, word [bp - 0x0016]       ; 0x1212
    push ax                          ; 0x1215
    mov ax, 0x146f                   ; 0x1216
    push ax                          ; 0x1219
    call ds_dispatch_b53b            ; 0x121a
    add sp, byte 4                   ; 0x121d
    lea ax, word [bp - 0x003e]       ; 0x1220
    push ax                          ; 0x1223
    mov ax, 0x1470                   ; 0x1224
    push ax                          ; 0x1227
    call ds_dispatch_b53b            ; 0x1228
    add sp, byte 4                   ; 0x122b
    mov ax, 0x248                    ; 0x122e
    imul word [bp + 0x4]             ; 0x1231
    mov bx, ax                       ; 0x1234
    mov ax, word [bx + 0x5c0c]       ; 0x1236
    cmp ax, word [bp - 0x0002]       ; 0x123a
    jge short @..local.l40           ; 0x123d
    mov word [bp - 0x0002], ax       ; 0x123f
@..local.l40:
    mov ax, word [bp - 0x0002]       ; 0x1242
    sub word [bx + 0x5c0c], ax       ; 0x1245
    mov ax, 0x43                     ; 0x1249
    push ax                          ; 0x124c
    mov ax, 0x41                     ; 0x124d
    push ax                          ; 0x1250
    mov ax, 0x43                     ; 0x1251
    push ax                          ; 0x1254
    mov ax, 1                        ; 0x1255
    push ax                          ; 0x1258
    lea ax, word [bp - 0x003e]       ; 0x1259
    push ax                          ; 0x125c
    lea ax, word [bp - 0x002a]       ; 0x125d
    push ax                          ; 0x1260
    lea ax, word [bp - 0x0016]       ; 0x1261
    push ax                          ; 0x1264
    push word [bp + 0x4]             ; 0x1265
    call api_idx_0002                ; 0x1268
    add sp, byte 0x10                ; 0x126b
    mov ax, 1                        ; 0x126e
    push ax                          ; 0x1271
    push word [bp + 0x4]             ; 0x1272
    call ds_dispatch_cb3a            ; 0x1275
    add sp, byte 4                   ; 0x1278
    mov ax, 0x248                    ; 0x127b
    imul word [bp + 0x4]             ; 0x127e
    mov bx, ax                       ; 0x1281
    cmp word [bx + 0x5c0c], byte 0   ; 0x1283
    jg short @..local.l41            ; 0x1288
    mov ax, 4                        ; 0x128a
    push ax                          ; 0x128d
    call api_idx_0004                ; 0x128e
    pop cx                           ; 0x1291
    mov ax, 3                        ; 0x1292
    push ax                          ; 0x1295
    mov ax, 0                        ; 0x1296
    push ax                          ; 0x1299
    mov ax, 0x1490                   ; 0x129a
    push ax                          ; 0x129d
    push word [bp + 0x4]             ; 0x129e
    call api_idx_005a                ; 0x12a1
    add sp, byte 8                   ; 0x12a4
    mov ax, 0                        ; 0x12a7
    ret                              ; 0x12aa
@..local.l41:
    mov ax, 0x248                    ; 0x12ab
    imul word [bp + 0x4]             ; 0x12ae
    mov bx, ax                       ; 0x12b1
    mov al, byte [bx + 0x5e2c]       ; 0x12b3
    sub ah, ah                       ; 0x12b7
    inc ax                           ; 0x12b9
    inc ax                           ; 0x12ba
    push ax                          ; 0x12bb
    call ds_dispatch_b7e0            ; 0x12bc
    pop cx                           ; 0x12bf
    push word [data_905a]            ; 0x12c0
    call api_idx_0004                ; 0x12c4
    pop cx                           ; 0x12c7
    mov ax, 1                        ; 0x12c8
    ret                              ; 0x12cb
api_idx_0056:
    mov ax, 0xffaa                   ; 0x12cc
    call ds_dispatch_f40b            ; 0x12cf
    mov ax, 0x248                    ; 0x12d2
    imul word [bp + 0x4]             ; 0x12d5
    mov bx, ax                       ; 0x12d8
    cmp byte [bx + 0x5e2f], data_0002 ; 0x12da
    jb short @..local.l42            ; 0x12df
    ret                              ; 0x12e1
@..local.l42:
    push word [bp + 0x10]            ; 0x12e2
    push word [bp + 0xe]             ; 0x12e5
    push word [bp + 0xc]             ; 0x12e8
    call ds_dispatch_d0ea            ; 0x12eb
    add sp, byte 6                   ; 0x12ee
    mov cx, ax                       ; 0x12f1
    sub sp, byte 4                   ; 0x12f3
    mov ax, sp                       ; 0x12f6
    mov dx, ss                       ; 0x12f8
    mov es, dx                       ; 0x12fa
    mov si, cx                       ; 0x12fc
    mov di, ax                       ; 0x12fe
    movsw                            ; 0x1300
    movsw                            ; 0x1301
    call ds_dispatch_d0be            ; 0x1302
    add sp, byte 4                   ; 0x1305
    mov word [bp - 0x0006], ax       ; 0x1308
    cmp word [bp + 0x8], byte 0      ; 0x130b
    je short @..local.l43            ; 0x130f
    mov ax, 0x64                     ; 0x1311
    push ax                          ; 0x1314
    call ds_dispatch_b7a9            ; 0x1315
    pop cx                           ; 0x1318
    push ax                          ; 0x1319
    mov ax, 0x248                    ; 0x131a
    imul word [bp + 0x4]             ; 0x131d
    add ax, word [bp + 0x8]          ; 0x1320
    mov bx, ax                       ; 0x1323
    mov al, byte [bx + 0x5d9c]       ; 0x1325
    sub ah, ah                       ; 0x1329
    mov cx, ax                       ; 0x132b
    pop ax                           ; 0x132d
    cmp ax, cx                       ; 0x132e
    jg short @..local.l43            ; 0x1330
    jmp near @..local.l48            ; 0x1332
@..local.l43:
    cmp word [bp + 0x10], strict word 0xff ; 0x1335
    jne short @..local.l44           ; 0x133a
    mov ax, 0x248                    ; 0x133c
    imul word [bp + 0x4]             ; 0x133f
    add ax, word [bp + 0xa]          ; 0x1342
    mov bx, ax                       ; 0x1345
    mov byte [bx + 0x5d5a], 0xff     ; 0x1347
    jmp short @..local.l46           ; 0x134c
@..local.l44:
    mov ax, 0x248                    ; 0x134e
    imul word [bp + 0x4]             ; 0x1351
    add ax, word [bp + 0xa]          ; 0x1354
    mov bx, ax                       ; 0x1357
    mov al, byte [bx + 0x5d5a]       ; 0x1359
    sub ah, ah                       ; 0x135d
    add ax, word [bp - 0x0006]       ; 0x135f
    cmp ax, 0xfa                     ; 0x1362
    jle short @..local.l45           ; 0x1365
    mov al, byte [bx + 0x5d5a]       ; 0x1367
    sub ah, ah                       ; 0x136b
    mov cx, ax                       ; 0x136d
    mov ax, 0xfa                     ; 0x136f
    sub ax, cx                       ; 0x1372
    mov word [bp - 0x0006], ax       ; 0x1374
@..local.l45:
    mov al, byte [bx + 0x5d5a]       ; 0x1377
    sub ah, ah                       ; 0x137b
    add ax, word [bp - 0x0006]       ; 0x137d
    mov byte [bx + 0x5d5a], al       ; 0x1380
@..local.l46:
    cmp word [bp + 0xa], byte 5      ; 0x1384
    jne short @..local.l47           ; 0x1388
    mov al, byte [bp + 0xc]          ; 0x138a
    push ax                          ; 0x138d
    mov ax, 0x248                    ; 0x138e
    imul word [bp + 0x4]             ; 0x1391
    mov bx, ax                       ; 0x1394
    pop ax                           ; 0x1396
    mov byte [bx + 0x5e32], al       ; 0x1397
@..local.l47:
    lea ax, word [bp - 0x0056]       ; 0x139b
    push ax                          ; 0x139e
    push word [bp + 0x6]             ; 0x139f
    call ds_dispatch_b53b            ; 0x13a2
    add sp, byte 4                   ; 0x13a5
    mov ax, 0                        ; 0x13a8
    push ax                          ; 0x13ab
    push ax                          ; 0x13ac
    mov ax, 0x41                     ; 0x13ad
    push ax                          ; 0x13b0
    mov ax, 1                        ; 0x13b1
    push ax                          ; 0x13b4
    mov ax, 0x90b3                   ; 0x13b5
    push ax                          ; 0x13b8
    mov ax, 0x90b2                   ; 0x13b9
    push ax                          ; 0x13bc
    lea ax, word [bp - 0x0056]       ; 0x13bd
    push ax                          ; 0x13c0
    push word [bp + 0x4]             ; 0x13c1
    call api_idx_0002                ; 0x13c4
    add sp, byte 0x10                ; 0x13c7
    mov ax, 1                        ; 0x13ca
    push ax                          ; 0x13cd
    push word [bp + 0x4]             ; 0x13ce
    call ds_dispatch_cb3a            ; 0x13d1
    add sp, byte 4                   ; 0x13d4
    push word [data_905a]            ; 0x13d7
    call api_idx_0004                ; 0x13db
    pop cx                           ; 0x13de
@..local.l48:
    ret                              ; 0x13df
api_idx_0050:
    mov ax, 0xffb0                   ; 0x13e0
    call ds_dispatch_f40b            ; 0x13e3
    cmp word [bp + 0x6], byte 0      ; 0x13e6
    jl short @..api_idx_0050.l1      ; 0x13ea
    mov word [data_911a], 1          ; 0x13ec
    mov ax, word [bp + 0x4]          ; 0x13f2
    mov word [data_9122], ax         ; 0x13f5
    mov ax, word [bp + 0x6]          ; 0x13f8
    mov word [data_9120], ax         ; 0x13fb
    jmp short @..api_idx_0050.l2     ; 0x13fe
@..api_idx_0050.l1:
    mov word [data_9116], 0          ; 0x1400
    mov word [data_9118], 1          ; 0x1406
@..api_idx_0050.l2:
    lea ax, word [bp - 0x0050]       ; 0x140c
    push ax                          ; 0x140f
    mov ax, 0x146b                   ; 0x1410
    push ax                          ; 0x1413
    call ds_dispatch_b53b            ; 0x1414
    add sp, byte 4                   ; 0x1417
    mov ax, 1                        ; 0x141a
    push ax                          ; 0x141d
    mov ax, 0                        ; 0x141e
    push ax                          ; 0x1421
    push word [data_91d4]            ; 0x1422
    lea ax, word [bp - 0x0050]       ; 0x1426
    push ax                          ; 0x1429
    call math_loc_0eb2               ; 0x142a
    add sp, byte 8                   ; 0x142d
    mov ax, 0xb8                     ; 0x1430
    push ax                          ; 0x1433
    mov ax, 0                        ; 0x1434
    push ax                          ; 0x1437
    push word [data_91d4]            ; 0x1438
    mov ax, 0x91d6                   ; 0x143c
    push ax                          ; 0x143f
    call math_loc_0eb2               ; 0x1440
    add sp, byte 8                   ; 0x1443
    ret                              ; 0x1446
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x1447
    call ds_dispatch_f40b            ; 0x144a
    mov word [bp - 0x0004], 0        ; 0x144d
@..api_idx_0004_5.l1:
    push word [data_69c8]            ; 0x1452
    call ds_dispatch_b7a9            ; 0x1456
    pop cx                           ; 0x1459
    mov word [bp - 0x0002], ax       ; 0x145a
    inc word [bp - 0x0004]           ; 0x145d
    cmp word [bp - 0x0004], byte 0x18 ; 0x1460
    jge short @..api_idx_0004_5.l2   ; 0x1464
    mov ax, word [bp - 0x0002]       ; 0x1466
    shl ax, 1                        ; 0x1469
    mov si, ax                       ; 0x146b
    mov bx, word [bp + 0x4]          ; 0x146d
    cmp word [bx + si], byte 0       ; 0x1470
    jne short @..api_idx_0004_5.l1   ; 0x1473
@..api_idx_0004_5.l2:
    mov ax, word [bp - 0x0002]       ; 0x1475
    shl ax, 1                        ; 0x1478
    mov si, ax                       ; 0x147a
    mov bx, word [bp + 0x4]          ; 0x147c
    cmp word [bx + si], byte 0       ; 0x147f
    je short @..api_idx_0004_5.l3    ; 0x1482
    mov ax, 0xffff                   ; 0x1484
    jmp short @..api_idx_0004_5.l4   ; 0x1487
@..api_idx_0004_5.l3:
    mov ax, word [bp - 0x0002]       ; 0x1489
@..api_idx_0004_5.l4:
    ret                              ; 0x148c
api_idx_0006:
    mov ax, 0xfffa                   ; 0x148d
    call ds_dispatch_f40b            ; 0x1490
    mov ax, word [bp + 0xc]          ; 0x1493
    inc ax                           ; 0x1496
    push ax                          ; 0x1497
    call ds_dispatch_b7a9            ; 0x1498
    pop cx                           ; 0x149b
    add ax, word [bp + 0xa]          ; 0x149c
    mov word [bp - 0x0004], ax       ; 0x149f
    cmp ax, word [data_69c8]         ; 0x14a2
    jle short @..api_idx_0006.l1     ; 0x14a6
    mov ax, word [data_69c8]         ; 0x14a8
    mov word [bp - 0x0004], ax       ; 0x14ab
@..api_idx_0006.l1:
    mov ax, word [data_69c8]         ; 0x14ae
    sub ax, word [bp - 0x0004]       ; 0x14b1
    inc ax                           ; 0x14b4
    push ax                          ; 0x14b5
    call ds_dispatch_b7a9            ; 0x14b6
    pop cx                           ; 0x14b9
    mov word [bp - 0x0002], ax       ; 0x14ba
    push word [bp - 0x0004]          ; 0x14bd
    call ds_dispatch_b7a9            ; 0x14c0
    pop cx                           ; 0x14c3
    mov cx, ax                       ; 0x14c4
    mov ax, word [bp - 0x0002]       ; 0x14c6
    add cx, ax                       ; 0x14c9
    mov word [bp - 0x0006], cx       ; 0x14cb
    mov ax, word [bp - 0x0002]       ; 0x14ce
    mov bx, word [bp + 0x4]          ; 0x14d1
    mov word [bx], ax                ; 0x14d4
    mov ax, word [bp - 0x0004]       ; 0x14d6
    mov bx, word [bp + 0x6]          ; 0x14d9
    mov word [bx], ax                ; 0x14dc
    mov ax, word [bp - 0x0006]       ; 0x14de
    mov bx, word [bp + 0x8]          ; 0x14e1
    mov word [bx], ax                ; 0x14e4
    ret                              ; 0x14e6
api_idx_00b8:
    mov ax, 0xff48                   ; 0x14e7
    call ds_dispatch_f40b            ; 0x14ea
    mov ax, 1                        ; 0x14ed
    push ax                          ; 0x14f0
    call api_idx_000a_2              ; 0x14f1
    pop cx                           ; 0x14f4
    cmp word [bp + 0x4], byte 0      ; 0x14f5
    jne short @..local.l49           ; 0x14f9
    lea ax, word [bp - 0x0068]       ; 0x14fb
    push ax                          ; 0x14fe
    mov ax, 0x146c                   ; 0x14ff
    push ax                          ; 0x1502
    call ds_dispatch_b53b            ; 0x1503
    add sp, byte 4                   ; 0x1506
    mov ax, 1                        ; 0x1509
    push ax                          ; 0x150c
    mov ax, 0                        ; 0x150d
    push ax                          ; 0x1510
    push word [data_91d4]            ; 0x1511
    lea ax, word [bp - 0x0068]       ; 0x1515
    push ax                          ; 0x1518
    call math_loc_0eb2               ; 0x1519
    add sp, byte 8                   ; 0x151c
    ret                              ; 0x151f
@..local.l49:
    mov ax, 0                        ; 0x1520
    push ax                          ; 0x1523
    mov ax, 0xc                      ; 0x1524
    push ax                          ; 0x1527
    lea ax, word [bp - 0x0018]       ; 0x1528
    push ax                          ; 0x152b
    call ds_dispatch_f306            ; 0x152c
    add sp, byte 6                   ; 0x152f
    mov word [bp - 0x0002], 0        ; 0x1532
    jmp short @..local.l52           ; 0x1537
@..local.l50:
    mov ax, 0x248                    ; 0x1539
    imul word [bp - 0x0002]          ; 0x153c
    mov bx, ax                       ; 0x153f
    cmp byte [bx + 0x5e2f], 3        ; 0x1541
    jb short @..local.l51            ; 0x1546
    mov ax, word [bp - 0x0002]       ; 0x1548
    shl ax, 1                        ; 0x154b
    mov bx, ax                       ; 0x154d
    add bx, bp                       ; 0x154f
    mov word [bx - 0x0018], 1        ; 0x1551
@..local.l51:
    inc word [bp - 0x0002]           ; 0x1556
@..local.l52:
    mov ax, word [bp - 0x0002]       ; 0x1559
    cmp ax, word [data_69c8]         ; 0x155c
    jl short @..local.l50            ; 0x1560
    mov ax, word [bp + 0x4]          ; 0x1562
    jmp near @..local.l53            ; 0x1565

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

@..local.l53:
    cmp ax, strict word 0x12         ; 0x1fc7
    jae short @..local.l54           ; 0x1fca
    xchg bx, ax                      ; 0x1fcc
    shl bx, 1                        ; 0x1fcd
    jmp [cs:bx + 0x6fea]             ; 0x1fcf
@..local.l54:
    ret                              ; 0x1fd4
api_idx_0060:
    mov ax, 0xffa0                   ; 0x1fd5
    call ds_dispatch_f40b            ; 0x1fd8
    mov word [data_91fe], 0          ; 0x1fdb
    mov ax, 0x64                     ; 0x1fe1
    push ax                          ; 0x1fe4
    call ds_dispatch_b7a9            ; 0x1fe5
    pop cx                           ; 0x1fe8
    inc ax                           ; 0x1fe9
    mov word [bp - 0x0002], ax       ; 0x1fea
    mov word [bp - 0x0004], 0        ; 0x1fed
@..api_idx_0060.l1:
    cmp word [bp - 0x0002], byte 0   ; 0x1ff2
    jle short @..api_idx_0060.l4     ; 0x1ff6
    cmp word [bp - 0x0004], byte 0x64 ; 0x1ff8
    jge short @..api_idx_0060.l4     ; 0x1ffc
    inc word [data_91fe]             ; 0x1ffe
    mov ax, word [data_91fe]         ; 0x2002
    cmp ax, strict word 0x12         ; 0x2005
    jl short @..api_idx_0060.l2      ; 0x2008
    mov word [data_91fe], 0          ; 0x200a
    inc word [bp - 0x0004]           ; 0x2010
@..api_idx_0060.l2:
    push word [data_91fe]            ; 0x2013
    mov ax, word [bp + 0x4]          ; 0x2017
    add ax, strict word 0x30         ; 0x201a
    push ax                          ; 0x201d
    call ds_dispatch_ec74            ; 0x201e
    add sp, byte 4                   ; 0x2021
    test ax, ax                      ; 0x2024
    je short @..api_idx_0060.l3      ; 0x2026
    dec word [bp - 0x0002]           ; 0x2028
@..api_idx_0060.l3:
    jmp short @..api_idx_0060.l1     ; 0x202b
@..api_idx_0060.l4:
    mov ax, 0x91d6                   ; 0x202d
    push ax                          ; 0x2030
    mov ax, word [data_91fe]         ; 0x2031
    add ax, 0x14b4                   ; 0x2034
    push ax                          ; 0x2037
    call ds_dispatch_b53b            ; 0x2038
    add sp, byte 4                   ; 0x203b
    mov ax, 0                        ; 0x203e
    push ax                          ; 0x2041
    mov ax, 0x30                     ; 0x2042
    push ax                          ; 0x2045
    mov ax, data_9200                ; 0x2046
    push ax                          ; 0x2049
    call ds_dispatch_f306            ; 0x204a
    add sp, byte 6                   ; 0x204d
    mov ax, word [data_91fe]         ; 0x2050
    shl ax, 1                        ; 0x2053
    mov bx, ax                       ; 0x2055
    mov word [bx - 0x6e00], 1        ; 0x2057
    mov ax, 0                        ; 0x205d
    push ax                          ; 0x2060
    mov ax, 0x10                     ; 0x2061
    push ax                          ; 0x2064
    mov ax, 0x9230                   ; 0x2065
    push ax                          ; 0x2068
    call ds_dispatch_f306            ; 0x2069
    add sp, byte 6                   ; 0x206c
    mov word [bp - 0x002e], 0        ; 0x206f
    mov ax, 0                        ; 0x2074
    push ax                          ; 0x2077
    mov ax, 0x20                     ; 0x2078
    push ax                          ; 0x207b
    lea ax, word [bp - 0x002c]       ; 0x207c
    push ax                          ; 0x207f
    call ds_dispatch_f306            ; 0x2080
    add sp, byte 6                   ; 0x2083
    mov word [bp - 0x0002], 0        ; 0x2086
@..api_idx_0060.l5:
    mov ax, word [data_91fe]         ; 0x208b
    mov cx, 4                        ; 0x208e
    shl ax, cl                       ; 0x2091
    mov cx, word [bp - 0x0002]       ; 0x2093
    shl cx, 1                        ; 0x2096
    add ax, cx                       ; 0x2098
    mov bx, ax                       ; 0x209a
    cmp word [bx + 0x99a], strict word 0xff ; 0x209c
    je short @..api_idx_0060.l6      ; 0x20a2
    mov ax, word [bx + 0x99a]        ; 0x20a4
    shl ax, 1                        ; 0x20a8
    mov bx, ax                       ; 0x20aa
    add bx, bp                       ; 0x20ac
    mov word [bx - 0x002c], 1        ; 0x20ae
    inc word [bp - 0x002e]           ; 0x20b3
@..api_idx_0060.l6:
    inc word [bp - 0x0002]           ; 0x20b6
    mov ax, word [bp - 0x0002]       ; 0x20b9
    cmp ax, strict word 8            ; 0x20bc
    jl short @..api_idx_0060.l5      ; 0x20bf
    mov word [bp - 0x000a], 0        ; 0x20c1
@..api_idx_0060.l7:
    mov ax, 1                        ; 0x20c6
    cmp word [bp - 0x000a], byte 0   ; 0x20c9
    jne short @..api_idx_0060.l8     ; 0x20cd
    mov ax, word [data_91fe]         ; 0x20cf
    shl ax, 1                        ; 0x20d2
    mov bx, ax                       ; 0x20d4
    mov ax, word [bx + 0x96a]        ; 0x20d6
@..api_idx_0060.l8:
    mov word [bp - 0x000c], ax       ; 0x20da
    mov word [bp - 0x0002], ax       ; 0x20dd
    jmp near @..api_idx_0060.l17     ; 0x20e0
@..api_idx_0060.l9:
    mov ax, word [bp - 0x0002]       ; 0x20e3
    shl ax, 1                        ; 0x20e6
    mov bx, ax                       ; 0x20e8
    cmp word [bx - 0x6e00], byte 0   ; 0x20ea
    je short @..api_idx_0060.l10     ; 0x20ef
    jmp near @..api_idx_0060.l16     ; 0x20f1
@..api_idx_0060.l10:
    cmp word [bp - 0x000a], byte 2   ; 0x20f4
    je short @..api_idx_0060.l11     ; 0x20f8
    push word [bp - 0x0002]          ; 0x20fa
    mov ax, word [bp + 0x4]          ; 0x20fd
    add ax, strict word 0x30         ; 0x2100
    push ax                          ; 0x2103
    call ds_dispatch_ec74            ; 0x2104
    add sp, byte 4                   ; 0x2107
    test ax, ax                      ; 0x210a
    jne short @..api_idx_0060.l11    ; 0x210c
    jmp near @..api_idx_0060.l16     ; 0x210e
@..api_idx_0060.l11:
    mov ax, word [bp - 0x0002]       ; 0x2111
    shl ax, 1                        ; 0x2114
    mov bx, ax                       ; 0x2116
    add bx, bp                       ; 0x2118
    mov word [bx - 0x005e], 0        ; 0x211a
    mov word [bp - 0x0006], 0        ; 0x211f
@..api_idx_0060.l12:
    mov ax, word [bp - 0x0002]       ; 0x2124
    mov cx, 4                        ; 0x2127
    shl ax, cl                       ; 0x212a
    mov cx, word [bp - 0x0006]       ; 0x212c
    shl cx, 1                        ; 0x212f
    add ax, cx                       ; 0x2131
    mov bx, ax                       ; 0x2133
    cmp word [bx + 0x99a], strict word 0xff ; 0x2135
    je short @..api_idx_0060.l13     ; 0x213b
    mov ax, word [bx + 0x99a]        ; 0x213d
    shl ax, 1                        ; 0x2141
    mov bx, ax                       ; 0x2143
    add bx, bp                       ; 0x2145
    cmp word [bx - 0x002c], byte 0   ; 0x2147
    jne short @..api_idx_0060.l13    ; 0x214b
    mov ax, word [bp - 0x0002]       ; 0x214d
    shl ax, 1                        ; 0x2150
    mov bx, ax                       ; 0x2152
    add bx, bp                       ; 0x2154
    inc word [bx - 0x005e]           ; 0x2156
@..api_idx_0060.l13:
    inc word [bp - 0x0006]           ; 0x2159
    mov ax, word [bp - 0x0006]       ; 0x215c
    cmp ax, strict word 8            ; 0x215f
    jl short @..api_idx_0060.l12     ; 0x2162
    mov ax, word [bp - 0x0002]       ; 0x2164
    shl ax, 1                        ; 0x2167
    mov bx, ax                       ; 0x2169
    add bx, bp                       ; 0x216b
    mov ax, word [bx - 0x005e]       ; 0x216d
    add ax, word [bp - 0x002e]       ; 0x2170
    cmp ax, strict word 8            ; 0x2173
    jg short @..api_idx_0060.l16     ; 0x2176
    mov ax, word [bp - 0x0002]       ; 0x2178
    shl ax, 1                        ; 0x217b
    mov bx, ax                       ; 0x217d
    mov word [bx - 0x6e00], 1        ; 0x217f
    mov word [bp - 0x0006], 0        ; 0x2185
@..api_idx_0060.l14:
    mov ax, word [bp - 0x0002]       ; 0x218a
    mov cx, 4                        ; 0x218d
    shl ax, cl                       ; 0x2190
    mov cx, word [bp - 0x0006]       ; 0x2192
    shl cx, 1                        ; 0x2195
    add ax, cx                       ; 0x2197
    mov bx, ax                       ; 0x2199
    cmp word [bx + 0x99a], strict word 0xff ; 0x219b
    je short @..api_idx_0060.l15     ; 0x21a1
    mov ax, word [bx + 0x99a]        ; 0x21a3
    shl ax, 1                        ; 0x21a7
    mov bx, ax                       ; 0x21a9
    add bx, bp                       ; 0x21ab
    cmp word [bx - 0x002c], byte 0   ; 0x21ad
    jne short @..api_idx_0060.l15    ; 0x21b1
    mov word [bx - 0x002c], 1        ; 0x21b3
    inc word [bp - 0x002e]           ; 0x21b8
@..api_idx_0060.l15:
    inc word [bp - 0x0006]           ; 0x21bb
    mov ax, word [bp - 0x0006]       ; 0x21be
    cmp ax, strict word 8            ; 0x21c1
    jl short @..api_idx_0060.l14     ; 0x21c4
@..api_idx_0060.l16:
    inc word [bp - 0x0002]           ; 0x21c6
@..api_idx_0060.l17:
    cmp word [bp - 0x0002], byte 0x12 ; 0x21c9
    jge short @..api_idx_0060.l18    ; 0x21cd
    jmp near @..api_idx_0060.l9      ; 0x21cf
@..api_idx_0060.l18:
    inc word [bp - 0x000a]           ; 0x21d2
    mov ax, word [bp - 0x000a]       ; 0x21d5
    cmp ax, strict word 3            ; 0x21d8
    jge short @..local.l55           ; 0x21db
    jmp near @..api_idx_0060.l7      ; 0x21dd
@..local.l55:
    cmp word [bp - 0x002e], byte 8   ; 0x21e0
    jge short @..local.l58           ; 0x21e4
    mov word [bp - 0x0002], 0        ; 0x21e6
@..local.l56:
    cmp word [bp - 0x002e], byte 8   ; 0x21eb
    jge short @..local.l58           ; 0x21ef
    mov ax, word [bp - 0x0002]       ; 0x21f1
    shl ax, 1                        ; 0x21f4
    mov bx, ax                       ; 0x21f6
    add bx, bp                       ; 0x21f8
    cmp word [bx - 0x002c], byte 0   ; 0x21fa
    jne short @..local.l57           ; 0x21fe
    mov word [bx - 0x002c], 1        ; 0x2200
    inc word [bp - 0x002e]           ; 0x2205
@..local.l57:
    inc word [bp - 0x0002]           ; 0x2208
    jmp short @..local.l56           ; 0x220b
@..local.l58:
    mov word [bp - 0x0004], 0        ; 0x220d
    mov word [bp - 0x0002], 0        ; 0x2212
@..local.l59:
    mov ax, word [bp - 0x0002]       ; 0x2217
    shl ax, 1                        ; 0x221a
    mov bx, ax                       ; 0x221c
    add bx, bp                       ; 0x221e
    cmp word [bx - 0x002c], byte 0   ; 0x2220
    je short @..local.l60            ; 0x2224
    mov ax, word [bp - 0x0002]       ; 0x2226
    mov cx, word [bp - 0x0004]       ; 0x2229
    shl cx, 1                        ; 0x222c
    mov bx, cx                       ; 0x222e
    mov word [bx - 0x6dc0], ax       ; 0x2230
    inc word [bp - 0x0004]           ; 0x2234
@..local.l60:
    inc word [bp - 0x0002]           ; 0x2237
    mov ax, word [bp - 0x0002]       ; 0x223a
    cmp ax, strict word 0x10         ; 0x223d
    jl short @..local.l59            ; 0x2240
    mov word [bp - 0x0008], 0        ; 0x2242
    mov word [data_9200], 0          ; 0x2247
    mov word [data_9250], 0xffff     ; 0x224d
    mov word [bp - 0x0002], 1        ; 0x2253
@..local.l61:
    mov ax, word [bp - 0x0002]       ; 0x2258
    shl ax, 1                        ; 0x225b
    mov bx, ax                       ; 0x225d
    cmp word [bx - 0x6e00], byte 0   ; 0x225f
    jne short @..local.l62           ; 0x2264
    jmp near @..local.l68            ; 0x2266
@..local.l62:
    mov ax, 0x90bb                   ; 0x2269
    push ax                          ; 0x226c
    mov ax, 0xa                      ; 0x226d
    imul word [bp - 0x0008]          ; 0x2270
    add ax, 0x9252                   ; 0x2273
    push ax                          ; 0x2276
    call ds_dispatch_f364            ; 0x2277
    add sp, byte 4                   ; 0x227a
    mov word [bp - 0x0004], 0        ; 0x227d
@..local.l63:
    mov ax, word [bp - 0x0002]       ; 0x2282
    mov cx, 4                        ; 0x2285
    shl ax, cl                       ; 0x2288
    mov cx, word [bp - 0x0004]       ; 0x228a
    shl cx, 1                        ; 0x228d
    add ax, cx                       ; 0x228f
    mov bx, ax                       ; 0x2291
    cmp word [bx + 0x99a], strict word 0xff ; 0x2293
    je short @..local.l66            ; 0x2299
    mov word [bp - 0x0006], 0        ; 0x229b
@..local.l64:
    mov ax, word [bp - 0x0002]       ; 0x22a0
    mov cx, 4                        ; 0x22a3
    shl ax, cl                       ; 0x22a6
    mov cx, word [bp - 0x0004]       ; 0x22a8
    shl cx, 1                        ; 0x22ab
    add ax, cx                       ; 0x22ad
    mov bx, ax                       ; 0x22af
    mov ax, word [bx + 0x99a]        ; 0x22b1
    mov cx, word [bp - 0x0006]       ; 0x22b5
    shl cx, 1                        ; 0x22b8
    mov bx, cx                       ; 0x22ba
    mov cx, word [bx - 0x6dc0]       ; 0x22bc
    cmp ax, cx                       ; 0x22c0
    jne short @..local.l65           ; 0x22c2
    mov ax, word [bp - 0x0004]       ; 0x22c4
    add ax, strict word 0x31         ; 0x22c7
    push ax                          ; 0x22ca
    mov ax, 0xa                      ; 0x22cb
    imul word [bp - 0x0008]          ; 0x22ce
    mov cx, ax                       ; 0x22d1
    add ax, word [bp - 0x0006]       ; 0x22d3
    mov bx, ax                       ; 0x22d6
    pop ax                           ; 0x22d8
    mov byte [bx - 0x6dae], al       ; 0x22d9
@..local.l65:
    inc word [bp - 0x0006]           ; 0x22dd
    mov ax, word [bp - 0x0006]       ; 0x22e0
    cmp ax, strict word 8            ; 0x22e3
    jl short @..local.l64            ; 0x22e6
@..local.l66:
    inc word [bp - 0x0004]           ; 0x22e8
    mov ax, word [bp - 0x0004]       ; 0x22eb
    cmp ax, strict word 8            ; 0x22ee
    jl short @..local.l63            ; 0x22f1
    mov ax, word [bp - 0x0002]       ; 0x22f3
    mov cx, word [bp - 0x0008]       ; 0x22f6
    shl cx, 1                        ; 0x22f9
    mov bx, cx                       ; 0x22fb
    mov word [bx - 0x6cbe], ax       ; 0x22fd
    cmp ax, word [data_91fe]         ; 0x2301
    jne short @..local.l67           ; 0x2305
    mov ax, word [bp - 0x0008]       ; 0x2307
    mov word [data_9250], ax         ; 0x230a
@..local.l67:
    inc word [bp - 0x0008]           ; 0x230d
@..local.l68:
    inc word [bp - 0x0002]           ; 0x2310
    mov ax, word [bp - 0x0002]       ; 0x2313
    cmp ax, strict word 0x12         ; 0x2316
    jge short @..local.l69           ; 0x2319
    jmp near @..local.l61            ; 0x231b
@..local.l69:
    mov word [bp - 0x0002], 0        ; 0x231e
    jmp near @..local.l80            ; 0x2323
@..local.l70:
    mov ax, 0x90c4                   ; 0x2326
    push ax                          ; 0x2329
    mov ax, 0xa                      ; 0x232a
    imul word [bp - 0x0002]          ; 0x232d
    add ax, 0x9372                   ; 0x2330
    push ax                          ; 0x2333
    call ds_dispatch_f364            ; 0x2334
    add sp, byte 4                   ; 0x2337
    mov word [bp - 0x0006], 0xfffb   ; 0x233a
    mov ax, 0x248                    ; 0x233f
    imul word [bp - 0x0002]          ; 0x2342
    mov bx, ax                       ; 0x2345
    mov al, byte [bx + 0x5e2d]       ; 0x2347
    sub ah, ah                       ; 0x234b
    jmp short @..local.l73           ; 0x234d
@..local.l71:
    mov word [bp - 0x0006], 0x14     ; 0x234f
    jmp short @..local.l74           ; 0x2354
@..local.l72:
    mov word [bp - 0x0006], 0xf      ; 0x2356
    jmp short @..local.l74           ; 0x235b
@..local.l73:
    cmp ax, strict word 3            ; 0x235d
    je short @..local.l71            ; 0x2360
    cmp ax, strict word 4            ; 0x2362
    je short @..local.l72            ; 0x2365
    cmp ax, strict word 6            ; 0x2367
    je short @..local.l72            ; 0x236a
    cmp ax, strict word 0xd          ; 0x236c
    je short @..local.l72            ; 0x236f
@..local.l74:
    mov ax, 0x5a                     ; 0x2371
    push ax                          ; 0x2374
    mov ax, 0                        ; 0x2375
    push ax                          ; 0x2378
    mov ax, 0x248                    ; 0x2379
    imul word [bp - 0x0002]          ; 0x237c
    mov bx, ax                       ; 0x237f
    mov al, byte [bx + 0x5d7c]       ; 0x2381
    sub ah, ah                       ; 0x2385
    mov cx, data_0002                ; 0x2387
    cwd                              ; 0x238a
    idiv cx                          ; 0x238b
    mov cx, word [bx + 0x5c18]       ; 0x238d
    add ax, cx                       ; 0x2391
    push ax                          ; 0x2393
    mov bx, word [bp + 0x4]          ; 0x2394
    mov al, byte [bx + 0x34]         ; 0x2397
    sub ah, ah                       ; 0x239a
    mov cx, ax                       ; 0x239c
    pop ax                           ; 0x239e
    sub ax, cx                       ; 0x239f
    add ax, word [bp - 0x0006]       ; 0x23a1
    push ax                          ; 0x23a4
    call ds_dispatch_b7c2            ; 0x23a5
    add sp, byte 6                   ; 0x23a8
    mov word [bp - 0x0060], ax       ; 0x23ab
    mov word [bp - 0x0004], 0        ; 0x23ae
@..local.l75:
    mov ax, 0x64                     ; 0x23b3
    push ax                          ; 0x23b6
    call ds_dispatch_b7a9            ; 0x23b7
    pop cx                           ; 0x23ba
    cmp ax, word [bp - 0x0060]       ; 0x23bb
    jge short @..local.l79           ; 0x23be
    cmp word [data_91fe], byte 0     ; 0x23c0
    jle short @..local.l78           ; 0x23c5
    cmp word [data_9250], byte 0xff  ; 0x23c7
    je short @..local.l78            ; 0x23cc
    mov ax, 0xa                      ; 0x23ce
    imul word [data_9250]            ; 0x23d1
    add ax, word [bp - 0x0004]       ; 0x23d5
    mov bx, ax                       ; 0x23d8
    cmp byte [bx - 0x6dae], 0x2d     ; 0x23da
    jne short @..local.l76           ; 0x23df
    mov ax, 0x2d                     ; 0x23e1
    jmp short @..local.l77           ; 0x23e4
@..local.l76:
    mov ax, 0x2a                     ; 0x23e6
@..local.l77:
    push ax                          ; 0x23e9
    mov ax, 0xa                      ; 0x23ea
    imul word [bp - 0x0002]          ; 0x23ed
    mov cx, ax                       ; 0x23f0
    add ax, word [bp - 0x0004]       ; 0x23f2
    mov bx, ax                       ; 0x23f5
    pop ax                           ; 0x23f7
    mov byte [bx - 0x6c8e], al       ; 0x23f8
    jmp short @..local.l79           ; 0x23fc
@..local.l78:
    mov ax, 0xa                      ; 0x23fe
    imul word [bp - 0x0002]          ; 0x2401
    add ax, word [bp - 0x0004]       ; 0x2404
    mov bx, ax                       ; 0x2407
    mov byte [bx - 0x6c8e], 0x2d     ; 0x2409
@..local.l79:
    inc word [bp - 0x0004]           ; 0x240e
    mov ax, word [bp - 0x0004]       ; 0x2411
    cmp ax, strict word 8            ; 0x2414
    jl short @..local.l75            ; 0x2417
    inc word [bp - 0x0002]           ; 0x2419
@..local.l80:
    mov ax, word [bp - 0x0002]       ; 0x241c
    cmp ax, word [data_69c8]         ; 0x241f
    jge short @..local.l81           ; 0x2423
    jmp near @..local.l70            ; 0x2425
@..local.l81:
    mov ax, word [bp - 0x0008]       ; 0x2428
    ret                              ; 0x242b
loc_242c:
    mov ax, 0                        ; 0x242c
    call ds_dispatch_f40b            ; 0x242f
    mov ax, 0xc0                     ; 0x2432
    cmp word [bp + 0xc], byte 0      ; 0x2435
    je short @..local.l82            ; 0x2439
    mov ax, 0xc2                     ; 0x243b
@..local.l82:
    push ax                          ; 0x243e
    push word [bp + 0xa]             ; 0x243f
    push word [bp + 0x8]             ; 0x2442
    push word [bp + 0x6]             ; 0x2445
    push word [bp + 0x4]             ; 0x2448
    call ds_dispatch_e901            ; 0x244b
    add sp, byte 0x0a                ; 0x244e
    push word [bp + 0xa]             ; 0x2451
    push word [bp + 0x8]             ; 0x2454
    push word [bp + 0x6]             ; 0x2457
    push word [bp + 0x4]             ; 0x245a
    call 0xbbbc                      ; 0x245d
    add sp, byte 8                   ; 0x2460
    mov ax, 0xc5                     ; 0x2463
    cmp word [bp + 0xc], byte 0      ; 0x2466
    je short @..local.l83            ; 0x246a
    mov ax, 0xc6                     ; 0x246c
@..local.l83:
    push ax                          ; 0x246f
    mov ax, 0xb0                     ; 0x2470
    cmp word [bp + 0xc], byte 0      ; 0x2473
    je short @..local.l84            ; 0x2477
    mov ax, 0xc4                     ; 0x2479
@..local.l84:
    push ax                          ; 0x247c
    push word [bp + 0xa]             ; 0x247d
    push word [bp + 0x8]             ; 0x2480
    push word [bp + 0x6]             ; 0x2483
    push word [bp + 0x4]             ; 0x2486
    call 0xbc3b                      ; 0x2489
    add sp, byte 0x0c                ; 0x248c
    mov ax, 0xb4                     ; 0x248f
    push ax                          ; 0x2492
    mov ax, 0xc5                     ; 0x2493
    push ax                          ; 0x2496
    mov ax, word [bp + 0xa]          ; 0x2497
    inc ax                           ; 0x249a
    inc ax                           ; 0x249b
    push ax                          ; 0x249c
    mov ax, word [bp + 0x8]          ; 0x249d
    inc ax                           ; 0x24a0
    inc ax                           ; 0x24a1
    push ax                          ; 0x24a2
    mov ax, word [bp + 0x6]          ; 0x24a3
    dec ax                           ; 0x24a6
    dec ax                           ; 0x24a7
    push ax                          ; 0x24a8
    mov ax, word [bp + 0x4]          ; 0x24a9
    dec ax                           ; 0x24ac
    dec ax                           ; 0x24ad
    push ax                          ; 0x24ae
    db 0xe8, 0x89, 0x97 ; call 0xbc3b
    add sp, byte 0x0c                ; 0x24b2
    mov ax, 0x51                     ; 0x24b5
    cmp word [bp + 0xc], byte 0      ; 0x24b8
    je short @..local.l85            ; 0x24bc
    mov ax, 0xc3                     ; 0x24be
@..local.l85:
    push ax                          ; 0x24c1
    push word [bp + 0x6]             ; 0x24c2
    push word [bp + 0x4]             ; 0x24c5
    call ds_dispatch_e8f4            ; 0x24c8
    add sp, byte 6                   ; 0x24cb
    mov ax, 0xb6                     ; 0x24ce
    cmp word [bp + 0xc], byte 0      ; 0x24d1
    je short @..local.l86            ; 0x24d5
    mov ax, 0xc5                     ; 0x24d7
@..local.l86:
    push ax                          ; 0x24da
    push word [bp + 0x6]             ; 0x24db
    push word [bp + 0x8]             ; 0x24de
    call ds_dispatch_e8f4            ; 0x24e1
    add sp, byte 6                   ; 0x24e4
    mov ax, 0xb6                     ; 0x24e7
    cmp word [bp + 0xc], byte 0      ; 0x24ea
    je short @..local.l87            ; 0x24ee
    mov ax, 0xc5                     ; 0x24f0
@..local.l87:
    push ax                          ; 0x24f3
    push word [bp + 0xa]             ; 0x24f4
    push word [bp + 0x4]             ; 0x24f7
    call ds_dispatch_e8f4            ; 0x24fa
    add sp, byte 6                   ; 0x24fd
    mov ax, 0xc6                     ; 0x2500
    cmp word [bp + 0xc], byte 0      ; 0x2503
    je short @..local.l88            ; 0x2507
    mov ax, 0xc7                     ; 0x2509
@..local.l88:
    push ax                          ; 0x250c
    push word [bp + 0xa]             ; 0x250d
    push word [bp + 0x8]             ; 0x2510
    call ds_dispatch_e8f4            ; 0x2513
    add sp, byte 6                   ; 0x2516
    ret                              ; 0x2519
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x251a
    call ds_dispatch_f40b            ; 0x251d
    mov ax, 0xc3                     ; 0x2520
    push ax                          ; 0x2523
    mov ax, 0xb4                     ; 0x2524
    push ax                          ; 0x2527
    call ds_dispatch_e823            ; 0x2528
    add sp, byte 4                   ; 0x252b
    mov word [bp - 0x0002], 0        ; 0x252e
@..api_idx_0002_2.l1:
    mov ax, word [bp - 0x0002]       ; 0x2533
    mov cx, 4                        ; 0x2536
    cwd                              ; 0x2539
    idiv cx                          ; 0x253a
    mov cx, 6                        ; 0x253c
    imul cx                          ; 0x253f
    add ax, word [bp + 0x8]          ; 0x2541
    push ax                          ; 0x2544
    mov ax, word [bp - 0x0002]       ; 0x2545
    mov cx, 4                        ; 0x2548
    cwd                              ; 0x254b
    idiv cx                          ; 0x254c
    mov ax, dx                       ; 0x254e
    mov cx, 6                        ; 0x2550
    imul cx                          ; 0x2553
    add ax, word [bp + 0x6]          ; 0x2555
    push ax                          ; 0x2558
    call ds_dispatch_e809            ; 0x2559
    add sp, byte 4                   ; 0x255c
    cmp word [bp + 0xa], byte 0      ; 0x255f
    je short @..api_idx_0002_2.l2    ; 0x2563
    mov ax, 0                        ; 0x2565
    push ax                          ; 0x2568
    mov ax, 0xa                      ; 0x2569
    imul word [bp + 0x4]             ; 0x256c
    add ax, word [bp - 0x0002]       ; 0x256f
    mov bx, ax                       ; 0x2572
    mov al, byte [bx - 0x6c8e]       ; 0x2574
    sub ah, ah                       ; 0x2578
    push ax                          ; 0x257a
    call ds_dispatch_e830            ; 0x257b
    add sp, byte 4                   ; 0x257e
    jmp short @..api_idx_0002_2.l3   ; 0x2581
@..api_idx_0002_2.l2:
    mov ax, 0                        ; 0x2583
    push ax                          ; 0x2586
    mov ax, 0xa                      ; 0x2587
    imul word [bp + 0x4]             ; 0x258a
    add ax, word [bp - 0x0002]       ; 0x258d
    mov bx, ax                       ; 0x2590
    mov al, byte [bx - 0x6dae]       ; 0x2592
    sub ah, ah                       ; 0x2596
    push ax                          ; 0x2598
    call ds_dispatch_e830            ; 0x2599
    add sp, byte 4                   ; 0x259c
@..api_idx_0002_2.l3:
    inc word [bp - 0x0002]           ; 0x259f
    mov ax, word [bp - 0x0002]       ; 0x25a2
    cmp ax, strict word 8            ; 0x25a5
    jl short @..api_idx_0002_2.l1    ; 0x25a8
    ret                              ; 0x25aa
api_idx_0084:
    mov ax, 0xff7c                   ; 0x25ab
    call ds_dispatch_f40b            ; 0x25ae
    mov word [bp - 0x0002], 0        ; 0x25b1
    jmp short @..api_idx_0084.l2     ; 0x25b6
@..api_idx_0084.l1:
    mov ax, 0x14                     ; 0x25b8
    imul word [bp - 0x0002]          ; 0x25bb
    add ax, 0xe38                    ; 0x25be
    push ax                          ; 0x25c1
    mov ax, word [bp - 0x0002]       ; 0x25c2
    shl ax, 1                        ; 0x25c5
    mov bx, ax                       ; 0x25c7
    mov ax, word [bx - 0x6cbe]       ; 0x25c9
    add ax, 0x14b4                   ; 0x25cd
    push ax                          ; 0x25d0
    call ds_dispatch_b53b            ; 0x25d1
    add sp, byte 4                   ; 0x25d4
    inc word [bp - 0x0002]           ; 0x25d7
@..api_idx_0084.l2:
    mov ax, word [bp - 0x0002]       ; 0x25da
    cmp ax, word [bp + 0xc]          ; 0x25dd
    jl short @..api_idx_0084.l1      ; 0x25e0
    mov word [data_911c], 0x8d       ; 0x25e2
    mov word [bp - 0x0078], 0        ; 0x25e8
    cmp word [data_9250], byte 0xff  ; 0x25ed
    je short @..api_idx_0084.l5      ; 0x25f2
    mov word [bp - 0x0004], 0        ; 0x25f4
@..api_idx_0084.l3:
    mov ax, 0xa                      ; 0x25f9
    imul word [data_9250]            ; 0x25fc
    add ax, word [bp - 0x0004]       ; 0x2600
    mov bx, ax                       ; 0x2603
    cmp byte [bx - 0x6dae], 0x2d     ; 0x2605
    je short @..api_idx_0084.l4      ; 0x260a
    inc word [bp - 0x0078]           ; 0x260c
@..api_idx_0084.l4:
    inc word [bp - 0x0004]           ; 0x260f
    mov ax, word [bp - 0x0004]       ; 0x2612
    cmp ax, strict word 8            ; 0x2615
    jl short @..api_idx_0084.l3      ; 0x2618
@..api_idx_0084.l5:
    mov word [data_904e], 0xffff     ; 0x261a
    mov word [bp - 0x0006], 0x37     ; 0x2620
    mov word [bp - 0x0008], 0x8f     ; 0x2625
    mov word [bp - 0x000a], 0x108    ; 0x262a
    mov word [bp - 0x000c], 0xc5     ; 0x262f
    mov word [bp - 0x0014], 0x16     ; 0x2634
    mov word [bp - 0x0024], 1        ; 0x2639
    mov ax, 0x90cd                   ; 0x263e
    push ax                          ; 0x2641
    mov ax, word [bp - 0x000c]       ; 0x2642
    inc ax                           ; 0x2645
    push ax                          ; 0x2646
    mov ax, word [bp - 0x000a]       ; 0x2647
    inc ax                           ; 0x264a
    push ax                          ; 0x264b
    mov ax, word [bp - 0x0008]       ; 0x264c
    dec ax                           ; 0x264f
    push ax                          ; 0x2650
    mov ax, word [bp - 0x0006]       ; 0x2651
    dec ax                           ; 0x2654
    push ax                          ; 0x2655
    call ds_dispatch_c283            ; 0x2656
    add sp, byte 0x0a                ; 0x2659
    mov word [bp - 0x0076], ax       ; 0x265c
    push word [bp - 0x000c]          ; 0x265f
    push word [bp - 0x000a]          ; 0x2662
    push word [bp - 0x0008]          ; 0x2665
    push word [bp - 0x0006]          ; 0x2668
    call ds_dispatch_bc9a            ; 0x266b
    add sp, byte 8                   ; 0x266e
    mov ax, 0xc2                     ; 0x2671
    push ax                          ; 0x2674
    mov ax, 1                        ; 0x2675
    push ax                          ; 0x2678
    call ds_dispatch_e823            ; 0x2679
    add sp, byte 4                   ; 0x267c
    mov ax, word [bp - 0x0008]       ; 0x267f
    add ax, strict word 6            ; 0x2682
    push ax                          ; 0x2685
    mov ax, 0x248                    ; 0x2686
    imul word [bp + 0x4]             ; 0x2689
    add ax, 0x5bf4                   ; 0x268c
    push ax                          ; 0x268f
    call ds_dispatch_fa90            ; 0x2690
    pop cx                           ; 0x2693
    mov cx, 6                        ; 0x2694
    imul cx                          ; 0x2697
    mov cx, data_0002                ; 0x2699
    cwd                              ; 0x269c
    idiv cx                          ; 0x269d
    mov cx, ax                       ; 0x269f
    mov ax, word [bp - 0x0006]       ; 0x26a1
    add ax, strict word 0x1b         ; 0x26a4
    sub ax, cx                       ; 0x26a7
    push ax                          ; 0x26a9
    call ds_dispatch_e809            ; 0x26aa
    add sp, byte 4                   ; 0x26ad
    mov ax, 0                        ; 0x26b0
    push ax                          ; 0x26b3
    mov ax, 0x248                    ; 0x26b4
    imul word [bp + 0x4]             ; 0x26b7
    add ax, 0x5bf4                   ; 0x26ba
    push ax                          ; 0x26bd
    call ds_dispatch_e84e            ; 0x26be
    add sp, byte 4                   ; 0x26c1
    mov ax, 0x90d3                   ; 0x26c4
    push ax                          ; 0x26c7
    lea ax, word [bp - 0x0074]       ; 0x26c8
    push ax                          ; 0x26cb
    call ds_dispatch_f364            ; 0x26cc
    add sp, byte 4                   ; 0x26cf
    lea ax, word [bp - 0x0073]       ; 0x26d2
    push ax                          ; 0x26d5
    mov ax, 0x248                    ; 0x26d6
    imul word [bp + 0x4]             ; 0x26d9
    mov bx, ax                       ; 0x26dc
    mov al, byte [bx + 0x5d7c]       ; 0x26de
    sub ah, ah                       ; 0x26e2
    push ax                          ; 0x26e4
    call ds_dispatch_b27d            ; 0x26e5
    add sp, byte 4                   ; 0x26e8
    mov ax, 0x90d5                   ; 0x26eb
    push ax                          ; 0x26ee
    lea ax, word [bp - 0x0074]       ; 0x26ef
    push ax                          ; 0x26f2
    call ds_dispatch_f32d            ; 0x26f3
    add sp, byte 4                   ; 0x26f6
    mov ax, word [bp - 0x0008]       ; 0x26f9
    add ax, strict word 0xc          ; 0x26fc
    push ax                          ; 0x26ff
    lea ax, word [bp - 0x0074]       ; 0x2700
    push ax                          ; 0x2703
    call ds_dispatch_fa90            ; 0x2704
    pop cx                           ; 0x2707
    mov cx, 6                        ; 0x2708
    imul cx                          ; 0x270b
    mov cx, data_0002                ; 0x270d
    cwd                              ; 0x2710
    idiv cx                          ; 0x2711
    mov cx, ax                       ; 0x2713
    mov ax, word [bp - 0x0006]       ; 0x2715
    add ax, strict word 0x1b         ; 0x2718
    sub ax, cx                       ; 0x271b
    push ax                          ; 0x271d
    call ds_dispatch_e809            ; 0x271e
    add sp, byte 4                   ; 0x2721
    mov ax, 0                        ; 0x2724
    push ax                          ; 0x2727
    lea ax, word [bp - 0x0074]       ; 0x2728
    push ax                          ; 0x272b
    call ds_dispatch_e84e            ; 0x272c
    add sp, byte 4                   ; 0x272f
    mov ax, word [bp - 0x0008]       ; 0x2732
    add ax, strict word 0x11         ; 0x2735
    push ax                          ; 0x2738
    mov ax, word [bp - 0x0006]       ; 0x2739
    add ax, strict word 0x50         ; 0x273c
    push ax                          ; 0x273f
    mov ax, word [bp - 0x0008]       ; 0x2740
    add ax, strict word 5            ; 0x2743
    push ax                          ; 0x2746
    mov ax, word [bp - 0x0006]       ; 0x2747
    add ax, strict word 0x36         ; 0x274a
    push ax                          ; 0x274d
    call ds_dispatch_bd98            ; 0x274e
    add sp, byte 8                   ; 0x2751
    mov ax, 0                        ; 0x2754
    push ax                          ; 0x2757
    mov ax, word [bp - 0x0008]       ; 0x2758
    add ax, strict word 6            ; 0x275b
    push ax                          ; 0x275e
    mov ax, word [bp - 0x0006]       ; 0x275f
    add ax, strict word 0x38         ; 0x2762
    push ax                          ; 0x2765
    mov ax, 0                        ; 0x2766
    push ax                          ; 0x2769
    call api_idx_0002_2              ; 0x276a
    add sp, byte 8                   ; 0x276d
    lea ax, word [bp - 0x004c]       ; 0x2770
    push ax                          ; 0x2773
    push word [bp + 0x6]             ; 0x2774
    call ds_dispatch_b53b            ; 0x2777
    add sp, byte 4                   ; 0x277a
    lea ax, word [bp - 0x004c]       ; 0x277d
    push ax                          ; 0x2780
    push word [bp + 0x8]             ; 0x2781
    mov ax, 1                        ; 0x2784
    push ax                          ; 0x2787
    mov ax, 0xc                      ; 0x2788
    push ax                          ; 0x278b
    mov ax, word [bp - 0x0008]       ; 0x278c
    add ax, strict word 0x18         ; 0x278f
    push ax                          ; 0x2792
    mov ax, word [bp - 0x0006]       ; 0x2793
    add ax, strict word 8            ; 0x2796
    push ax                          ; 0x2799
    call ds_dispatch_c0c1            ; 0x279a
    add sp, byte 0x0c                ; 0x279d
    lea ax, word [bp - 0x0074]       ; 0x27a0
    push ax                          ; 0x27a3
    mov ax, word [bp + 0x6]          ; 0x27a4
    inc ax                           ; 0x27a7
    push ax                          ; 0x27a8
    call ds_dispatch_b53b            ; 0x27a9
    add sp, byte 4                   ; 0x27ac
    lea ax, word [bp - 0x0074]       ; 0x27af
    push ax                          ; 0x27b2
    push word [bp + 0xa]             ; 0x27b3
    mov ax, 1                        ; 0x27b6
    push ax                          ; 0x27b9
    mov ax, 0xc                      ; 0x27ba
    push ax                          ; 0x27bd
    mov ax, word [bp - 0x0008]       ; 0x27be
    add ax, strict word 0x28         ; 0x27c1
    push ax                          ; 0x27c4
    mov ax, word [bp - 0x0006]       ; 0x27c5
    add ax, strict word 8            ; 0x27c8
    push ax                          ; 0x27cb
    call ds_dispatch_c0c1            ; 0x27cc
    add sp, byte 0x0c                ; 0x27cf
    mov ax, 0xc0                     ; 0x27d2
    push ax                          ; 0x27d5
    mov ax, 0                        ; 0x27d6
    push ax                          ; 0x27d9
    call ds_dispatch_e823            ; 0x27da
    add sp, byte 4                   ; 0x27dd
    mov word [bp - 0x0002], 0        ; 0x27e0
@..local.l89:
    mov ax, word [bp - 0x0002]       ; 0x27e5
    shl ax, 1                        ; 0x27e8
    mov bx, ax                       ; 0x27ea
    push word [bx - 0x6dd0]          ; 0x27ec
    mov ax, word [bp - 0x0002]       ; 0x27f0
    mov cx, 4                        ; 0x27f3
    cwd                              ; 0x27f6
    idiv cx                          ; 0x27f7
    mov cx, 5                        ; 0x27f9
    shl ax, cl                       ; 0x27fc
    add ax, word [bp - 0x0008]       ; 0x27fe
    add ax, strict word 0x11         ; 0x2801
    push ax                          ; 0x2804
    mov ax, word [bp - 0x0002]       ; 0x2805
    mov cx, 4                        ; 0x2808
    cwd                              ; 0x280b
    idiv cx                          ; 0x280c
    mov ax, dx                       ; 0x280e
    mov cx, 0x1a                     ; 0x2810
    imul cx                          ; 0x2813
    add ax, word [bp - 0x0006]       ; 0x2815
    add ax, strict word 0x6b         ; 0x2818
    push ax                          ; 0x281b
    mov ax, word [bp - 0x0002]       ; 0x281c
    mov cx, 4                        ; 0x281f
    cwd                              ; 0x2822
    idiv cx                          ; 0x2823
    mov cx, 5                        ; 0x2825
    shl ax, cl                       ; 0x2828
    add ax, word [bp - 0x0008]       ; 0x282a
    add ax, strict word 5            ; 0x282d
    push ax                          ; 0x2830
    mov ax, word [bp - 0x0002]       ; 0x2831
    mov cx, 4                        ; 0x2834
    cwd                              ; 0x2837
    idiv cx                          ; 0x2838
    mov ax, dx                       ; 0x283a
    mov cx, 0x1a                     ; 0x283c
    imul cx                          ; 0x283f
    add ax, word [bp - 0x0006]       ; 0x2841
    add ax, strict word 0x5d         ; 0x2844
    push ax                          ; 0x2847
    call loc_242c                    ; 0x2848
    add sp, byte 0x0a                ; 0x284b
    mov ax, word [bp - 0x0002]       ; 0x284e
    mov cx, 4                        ; 0x2851
    cwd                              ; 0x2854
    idiv cx                          ; 0x2855
    mov cx, 5                        ; 0x2857
    shl ax, cl                       ; 0x285a
    add ax, word [bp - 0x0008]       ; 0x285c
    add ax, strict word 7            ; 0x285f
    push ax                          ; 0x2862
    mov ax, word [bp - 0x0002]       ; 0x2863
    mov cx, 4                        ; 0x2866
    cwd                              ; 0x2869
    idiv cx                          ; 0x286a
    mov ax, dx                       ; 0x286c
    mov cx, 0x1a                     ; 0x286e
    imul cx                          ; 0x2871
    add ax, word [bp - 0x0006]       ; 0x2873
    add ax, strict word 0x5f         ; 0x2876
    push ax                          ; 0x2879
    call ds_dispatch_e809            ; 0x287a
    add sp, byte 4                   ; 0x287d
    mov ax, 1                        ; 0x2880
    push ax                          ; 0x2883
    mov ax, word [bp - 0x0002]       ; 0x2884
    shl ax, 1                        ; 0x2887
    mov bx, ax                       ; 0x2889
    mov al, byte [bx - 0x6dc0]       ; 0x288b
    sub ah, ah                       ; 0x288f
    push ax                          ; 0x2891
    call ds_dispatch_e830            ; 0x2892
    add sp, byte 4                   ; 0x2895
    inc word [bp - 0x0002]           ; 0x2898
    mov ax, word [bp - 0x0002]       ; 0x289b
    cmp ax, strict word 8            ; 0x289e
    jge short @..local.l90           ; 0x28a1
    jmp near @..local.l89            ; 0x28a3
@..local.l90:
    mov ax, word [bp - 0x0008]       ; 0x28a6
    add ax, strict word 0x1e         ; 0x28a9
    push ax                          ; 0x28ac
    mov ax, word [bp - 0x0006]       ; 0x28ad
    add ax, strict word 0x61         ; 0x28b0
    push ax                          ; 0x28b3
    mov ax, word [bp - 0x0008]       ; 0x28b4
    add ax, strict word 0x18         ; 0x28b7
    push ax                          ; 0x28ba
    mov ax, word [bp - 0x0006]       ; 0x28bb
    add ax, strict word 0x5d         ; 0x28be
    push ax                          ; 0x28c1
    call ds_dispatch_bd98            ; 0x28c2
    add sp, byte 8                   ; 0x28c5
    mov word [bp - 0x0018], 0        ; 0x28c8
    mov word [bp - 0x0022], 0xffff   ; 0x28cd
    push word [bp - 0x0024]          ; 0x28d2
    push word [bp - 0x0022]          ; 0x28d5
    push word [bp - 0x0018]          ; 0x28d8
    mov ax, 1                        ; 0x28db
    push ax                          ; 0x28de
    mov ax, 0xd                      ; 0x28df
    push ax                          ; 0x28e2
    mov ax, word [bp - 0x0008]       ; 0x28e3
    add ax, strict word 0x18         ; 0x28e6
    push ax                          ; 0x28e9
    mov ax, word [bp - 0x0006]       ; 0x28ea
    add ax, strict word 0x69         ; 0x28ed
    push ax                          ; 0x28f0
    call ds_dispatch_bf97            ; 0x28f1
    add sp, byte 0x0e                ; 0x28f4
    mov word [bp - 0x0012], 0        ; 0x28f7
    push word [bp - 0x0012]          ; 0x28fc
    mov ax, 7                        ; 0x28ff
    push ax                          ; 0x2902
    mov ax, 8                        ; 0x2903
    push ax                          ; 0x2906
    mov ax, word [bp - 0x0008]       ; 0x2907
    add ax, strict word 6            ; 0x290a
    push ax                          ; 0x290d
    mov ax, word [bp - 0x0006]       ; 0x290e
    add ax, 0xc1                     ; 0x2911
    push ax                          ; 0x2914
    call ds_dispatch_bfd8            ; 0x2915
    add sp, byte 0x0a                ; 0x2918
    mov ax, 0                        ; 0x291b
    push ax                          ; 0x291e
    push ax                          ; 0x291f
    mov ax, word [bp - 0x0008]       ; 0x2920
    add ax, word [bp - 0x0012]       ; 0x2923
    add ax, strict word 0x12         ; 0x2926
    push ax                          ; 0x2929
    mov ax, word [bp - 0x0006]       ; 0x292a
    add ax, 0xc9                     ; 0x292d
    push ax                          ; 0x2930
    mov ax, word [bp - 0x0008]       ; 0x2931
    add ax, word [bp - 0x0012]       ; 0x2934
    add ax, strict word 0xe          ; 0x2937
    push ax                          ; 0x293a
    mov ax, word [bp - 0x0006]       ; 0x293b
    add ax, 0xc1                     ; 0x293e
    push ax                          ; 0x2941
    mov ax, 0                        ; 0x2942
    push ax                          ; 0x2945
    call ds_dispatch_baa6            ; 0x2946
    add sp, byte 0x0e                ; 0x2949
    mov ax, 0                        ; 0x294c
    push ax                          ; 0x294f
    mov ax, 9                        ; 0x2950
    push ax                          ; 0x2953
    mov ax, word [bp - 0x0008]       ; 0x2954
    add ax, strict word 0xc          ; 0x2957
    push ax                          ; 0x295a
    mov ax, word [bp - 0x0006]       ; 0x295b
    add ax, 0xc9                     ; 0x295e
    push ax                          ; 0x2961
    mov ax, word [bp - 0x0008]       ; 0x2962
    add ax, strict word 6            ; 0x2965
    push ax                          ; 0x2968
    mov ax, word [bp - 0x0006]       ; 0x2969
    add ax, 0xc1                     ; 0x296c
    push ax                          ; 0x296f
    mov ax, 1                        ; 0x2970
    push ax                          ; 0x2973
    call ds_dispatch_baa6            ; 0x2974
    add sp, byte 0x0e                ; 0x2977
    mov ax, 0                        ; 0x297a
    push ax                          ; 0x297d
    mov ax, 0xb                      ; 0x297e
    push ax                          ; 0x2981
    mov ax, word [bp - 0x0008]       ; 0x2982
    add ax, strict word 0x30         ; 0x2985
    push ax                          ; 0x2988
    mov ax, word [bp - 0x0006]       ; 0x2989
    add ax, 0xc9                     ; 0x298c
    push ax                          ; 0x298f
    mov ax, word [bp - 0x0008]       ; 0x2990
    add ax, strict word 0x2a         ; 0x2993
    push ax                          ; 0x2996
    mov ax, word [bp - 0x0006]       ; 0x2997
    add ax, 0xc1                     ; 0x299a
    push ax                          ; 0x299d
    mov ax, data_0002                ; 0x299e
    push ax                          ; 0x29a1
    call ds_dispatch_baa6            ; 0x29a2
    add sp, byte 0x0e                ; 0x29a5
    mov ax, 0xd                      ; 0x29a8
    push ax                          ; 0x29ab
    mov ax, 0x49                     ; 0x29ac
    push ax                          ; 0x29af
    mov ax, word [bp - 0x0008]       ; 0x29b0
    add ax, strict word 0x20         ; 0x29b3
    push ax                          ; 0x29b6
    mov ax, word [bp - 0x0006]       ; 0x29b7
    add ax, strict word 0x50         ; 0x29ba
    push ax                          ; 0x29bd
    mov ax, word [bp - 0x0008]       ; 0x29be
    add ax, strict word 0x18         ; 0x29c1
    push ax                          ; 0x29c4
    mov ax, word [bp - 0x0006]       ; 0x29c5
    add ax, strict word 8            ; 0x29c8
    push ax                          ; 0x29cb
    mov ax, 3                        ; 0x29cc
    push ax                          ; 0x29cf
    call ds_dispatch_baa6            ; 0x29d0
    add sp, byte 0x0e                ; 0x29d3
    mov ax, 0                        ; 0x29d6
    push ax                          ; 0x29d9
    mov ax, 0x1b                     ; 0x29da
    push ax                          ; 0x29dd
    mov ax, word [bp - 0x0008]       ; 0x29de
    add ax, strict word 0x30         ; 0x29e1
    push ax                          ; 0x29e4
    mov ax, word [bp - 0x0006]       ; 0x29e5
    add ax, strict word 0x50         ; 0x29e8
    push ax                          ; 0x29eb
    mov ax, word [bp - 0x0008]       ; 0x29ec
    add ax, strict word 0x28         ; 0x29ef
    push ax                          ; 0x29f2
    mov ax, word [bp - 0x0006]       ; 0x29f3
    add ax, strict word 8            ; 0x29f6
    push ax                          ; 0x29f9
    mov ax, 4                        ; 0x29fa
    push ax                          ; 0x29fd
    call ds_dispatch_baa6            ; 0x29fe
    add sp, byte 0x0e                ; 0x2a01
    mov word [bp - 0x0002], 0        ; 0x2a04
@..local.l91:
    mov ax, 0                        ; 0x2a09
    push ax                          ; 0x2a0c
    mov ax, word [bp - 0x0002]       ; 0x2a0d
    add ax, strict word 0x31         ; 0x2a10
    cbw                              ; 0x2a13
    push ax                          ; 0x2a14
    mov ax, word [bp - 0x0002]       ; 0x2a15
    mov cx, 4                        ; 0x2a18
    cwd                              ; 0x2a1b
    idiv cx                          ; 0x2a1c
    mov cx, 5                        ; 0x2a1e
    shl ax, cl                       ; 0x2a21
    add ax, word [bp - 0x0008]       ; 0x2a23
    add ax, strict word 0x11         ; 0x2a26
    push ax                          ; 0x2a29
    mov ax, word [bp - 0x0002]       ; 0x2a2a
    mov cx, 4                        ; 0x2a2d
    cwd                              ; 0x2a30
    idiv cx                          ; 0x2a31
    mov ax, dx                       ; 0x2a33
    mov cx, 0x1a                     ; 0x2a35
    imul cx                          ; 0x2a38
    add ax, word [bp - 0x0006]       ; 0x2a3a
    add ax, strict word 0x6b         ; 0x2a3d
    push ax                          ; 0x2a40
    mov ax, word [bp - 0x0002]       ; 0x2a41
    mov cx, 4                        ; 0x2a44
    cwd                              ; 0x2a47
    idiv cx                          ; 0x2a48
    mov cx, 5                        ; 0x2a4a
    shl ax, cl                       ; 0x2a4d
    add ax, word [bp - 0x0008]       ; 0x2a4f
    add ax, strict word 5            ; 0x2a52
    push ax                          ; 0x2a55
    mov ax, word [bp - 0x0002]       ; 0x2a56
    mov cx, 4                        ; 0x2a59
    cwd                              ; 0x2a5c
    idiv cx                          ; 0x2a5d
    mov ax, dx                       ; 0x2a5f
    mov cx, 0x1a                     ; 0x2a61
    imul cx                          ; 0x2a64
    add ax, word [bp - 0x0006]       ; 0x2a66
    add ax, strict word 0x5d         ; 0x2a69
    push ax                          ; 0x2a6c
    mov ax, word [bp - 0x0002]       ; 0x2a6d
    add ax, strict word 5            ; 0x2a70
    push ax                          ; 0x2a73
    call ds_dispatch_baa6            ; 0x2a74
    add sp, byte 0x0e                ; 0x2a77
    inc word [bp - 0x0002]           ; 0x2a7a
    mov ax, word [bp - 0x0002]       ; 0x2a7d
    cmp ax, strict word 8            ; 0x2a80
    jl short @..local.l91            ; 0x2a83
    mov ax, 0                        ; 0x2a85
    push ax                          ; 0x2a88
    push ax                          ; 0x2a89
    push ax                          ; 0x2a8a
    push ax                          ; 0x2a8b
    push ax                          ; 0x2a8c
    mov ax, 0xffff                   ; 0x2a8d
    push ax                          ; 0x2a90
    mov ax, 0xd                      ; 0x2a91
    push ax                          ; 0x2a94
    call ds_dispatch_baa6            ; 0x2a95
    add sp, byte 0x0e                ; 0x2a98
    mov ax, word [bp - 0x000c]       ; 0x2a9b
    inc ax                           ; 0x2a9e
    push ax                          ; 0x2a9f
    mov ax, word [bp - 0x000a]       ; 0x2aa0
    inc ax                           ; 0x2aa3
    push ax                          ; 0x2aa4
    mov ax, word [bp - 0x0008]       ; 0x2aa5
    dec ax                           ; 0x2aa8
    push ax                          ; 0x2aa9
    mov ax, word [bp - 0x0006]       ; 0x2aaa
    dec ax                           ; 0x2aad
    push ax                          ; 0x2aae
    call ds_dispatch_e8da            ; 0x2aaf
    add sp, byte 8                   ; 0x2ab2
    mov word [bp - 0x001c], 1        ; 0x2ab5
    mov ax, 0x248                    ; 0x2aba
    imul word [bp + 0x4]             ; 0x2abd
    mov bx, ax                       ; 0x2ac0
    mov al, byte [bx + 0x5d7c]       ; 0x2ac2
    sub ah, ah                       ; 0x2ac6
    push ax                          ; 0x2ac8
    mov ax, 5                        ; 0x2ac9
    imul word [bp + 0xe]             ; 0x2acc
    mov cx, ax                       ; 0x2acf
    pop ax                           ; 0x2ad1
    sub ax, cx                       ; 0x2ad2
    push ax                          ; 0x2ad4
    mov al, byte [bx + 0x5d68]       ; 0x2ad5
    sub ah, ah                       ; 0x2ad9
    mov cx, data_0002                ; 0x2adb
    cwd                              ; 0x2ade
    idiv cx                          ; 0x2adf
    mov cx, ax                       ; 0x2ae1
    pop ax                           ; 0x2ae3
    add ax, cx                       ; 0x2ae4
    push ax                          ; 0x2ae6
    mov ax, word [bx + 0x5c18]       ; 0x2ae7
    mov cx, data_0002                ; 0x2aeb
    cwd                              ; 0x2aee
    idiv cx                          ; 0x2aef
    mov cx, ax                       ; 0x2af1
    pop ax                           ; 0x2af3
    add ax, cx                       ; 0x2af4
    mov word [bp - 0x007c], ax       ; 0x2af6
    mov word [bp - 0x007e], 0        ; 0x2af9
    cmp byte [bx + 0x5e2d], 3        ; 0x2afe
    jne short @..local.l92           ; 0x2b03
    mov al, byte [bx + 0x5d68]       ; 0x2b05
    sub ah, ah                       ; 0x2b09
    mov cx, 3                        ; 0x2b0b
    imul cx                          ; 0x2b0e
    add word [bp - 0x007c], ax       ; 0x2b10
    mov word [bp - 0x007e], 3        ; 0x2b13
    jmp short @..local.l94           ; 0x2b18
@..local.l92:
    mov al, byte [bx + 0x5e2d]       ; 0x2b1a
    cmp al, 0xd                      ; 0x2b1e
    je short @..local.l93            ; 0x2b20
    cmp al, 4                        ; 0x2b22
    je short @..local.l93            ; 0x2b24
    cmp al, 6                        ; 0x2b26
    jne short @..local.l94           ; 0x2b28
@..local.l93:
    mov al, byte [bx + 0x5d68]       ; 0x2b2a
    sub ah, ah                       ; 0x2b2e
    shl ax, 1                        ; 0x2b30
    add word [bp - 0x007c], ax       ; 0x2b32
    mov word [bp - 0x007e], data_0002 ; 0x2b35
@..local.l94:
    mov ax, 0x5a                     ; 0x2b3a
    push ax                          ; 0x2b3d
    mov ax, 5                        ; 0x2b3e
    push ax                          ; 0x2b41
    push word [bp - 0x007c]          ; 0x2b42
    call ds_dispatch_b7c2            ; 0x2b45
    add sp, byte 6                   ; 0x2b48
    mov word [bp - 0x007c], ax       ; 0x2b4b
@..local.l95:
    mov ax, 0x64                     ; 0x2b4e
    push ax                          ; 0x2b51
    call ds_dispatch_b7a9            ; 0x2b52
    pop cx                           ; 0x2b55
    mov word [bp - 0x0084], ax       ; 0x2b56
    mov ax, 0x64                     ; 0x2b5a
    sub ax, word [bp - 0x007c]       ; 0x2b5d
    mov cx, 3                        ; 0x2b60
    cwd                              ; 0x2b63
    idiv cx                          ; 0x2b64
    mov cx, 0x64                     ; 0x2b66
    sub cx, ax                       ; 0x2b69
    mov ax, word [bp - 0x0084]       ; 0x2b6b
    cmp cx, ax                       ; 0x2b6f
    jge short @..local.l96           ; 0x2b71
    mov ax, 0                        ; 0x2b73
    jmp short @..local.l97           ; 0x2b76
@..local.l96:
    mov ax, 1                        ; 0x2b78
@..local.l97:
    mov word [bp - 0x0080], ax       ; 0x2b7b
    mov ax, 0                        ; 0x2b7e
    mov cx, word [bp - 0x0084]       ; 0x2b81
    cmp cx, word [bp - 0x007c]       ; 0x2b85
    jge short @..local.l98           ; 0x2b88
    mov ax, 1                        ; 0x2b8a
@..local.l98:
    mov word [bp - 0x0082], ax       ; 0x2b8d
    cmp word [bp - 0x0080], byte 0   ; 0x2b91
    jne short @..local.l99           ; 0x2b95
    mov ax, 0x1a                     ; 0x2b97
    jmp short @..local.l100          ; 0x2b9a
@..local.l99:
    mov ax, 0x56                     ; 0x2b9c
    cmp word [bp - 0x0082], byte 0   ; 0x2b9f
    je short @..local.l100           ; 0x2ba4
    mov ax, 0x37                     ; 0x2ba6
@..local.l100:
    push ax                          ; 0x2ba9
    mov ax, word [bp - 0x0008]       ; 0x2baa
    add ax, strict word 0x1e         ; 0x2bad
    push ax                          ; 0x2bb0
    mov ax, word [bp - 0x0006]       ; 0x2bb1
    add ax, strict word 0x61         ; 0x2bb4
    push ax                          ; 0x2bb7
    mov ax, word [bp - 0x0008]       ; 0x2bb8
    add ax, strict word 0x18         ; 0x2bbb
    push ax                          ; 0x2bbe
    mov ax, word [bp - 0x0006]       ; 0x2bbf
    add ax, strict word 0x5d         ; 0x2bc2
    push ax                          ; 0x2bc5
    call ds_dispatch_e901            ; 0x2bc6
    add sp, byte 0x0a                ; 0x2bc9
    mov ax, word [bp - 0x0008]       ; 0x2bcc
    add ax, strict word 0x1e         ; 0x2bcf
    push ax                          ; 0x2bd2
    mov ax, word [bp - 0x0006]       ; 0x2bd3
    add ax, strict word 0x61         ; 0x2bd6
    push ax                          ; 0x2bd9
    mov ax, word [bp - 0x0008]       ; 0x2bda
    add ax, strict word 0x18         ; 0x2bdd
    push ax                          ; 0x2be0
    mov ax, word [bp - 0x0006]       ; 0x2be1
    add ax, strict word 0x5d         ; 0x2be4
    push ax                          ; 0x2be7
    call ds_dispatch_e8da            ; 0x2be8
    add sp, byte 8                   ; 0x2beb
    call math_loc_086b               ; 0x2bee
    test ax, ax                      ; 0x2bf1
    jne short @..local.l101          ; 0x2bf3
    mov ax, 0x19                     ; 0x2bf5
    push ax                          ; 0x2bf8
    call ds_dispatch_e489            ; 0x2bf9
    pop cx                           ; 0x2bfc
@..local.l101:
    mov ax, 0x59fe                   ; 0x2bfd
    push ax                          ; 0x2c00
    call ds_dispatch_b90d            ; 0x2c01
    pop cx                           ; 0x2c04
    dec ax                           ; 0x2c05
    mov word [bp - 0x001a], ax       ; 0x2c06
    cmp word [data_5b3e], byte 1     ; 0x2c09
    je short @..local.l102           ; 0x2c0e
    jmp near @..local.l104           ; 0x2c10
@..local.l102:
    jmp near @..local.l103           ; 0x2c13

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x32, 0xc4, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xf8, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x84, 0x8b, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x04, 0xc4, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xf8, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0x54, 0x8b, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0x0c, 0x01, 0x7e, 0x1b, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x99, 0xf7, 0x7e, 0x0c, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xe8, 0xff
    db 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0d, 0x00, 0x50
    db 0x8b, 0x46, 0xf8, 0x05, 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x69, 0x00, 0x50, 0xe8, 0xe0
    db 0x92, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50
    db 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50
    db 0xe8, 0xbf, 0x90, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x06, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x38, 0x00, 0x50, 0xff, 0x76, 0xe8, 0xe8, 0x26, 0xf8, 0x83, 0xc4
    db 0x08, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xc5, 0x92, 0x83, 0xc4, 0x0a
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xee, 0x05, 0x12, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xee, 0x05, 0x0e, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x62, 0x8d, 0x83, 0xc4
    db 0x0e, 0x8b, 0x46, 0xf8, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xf8, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x74, 0xbb
    db 0x83, 0xc4, 0x08, 0x8b, 0x46, 0xf8, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00
    db 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50, 0xe8
    db 0x52, 0xbb, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74, 0x03, 0xe9, 0xb0, 0xfe, 0xe9, 0x81
    db 0x07, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xf8, 0x90, 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8
    db 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x32, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x2a, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xc7, 0x90, 0x83, 0xc4, 0x0a, 0x8b, 0x46
    db 0x0c, 0x48, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff, 0x46, 0xe8, 0x8b, 0x46, 0x0c, 0x3d, 0x01, 0x00
    db 0x7e, 0x2a, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99
    db 0xf7, 0xf9, 0x50, 0xe8, 0x96, 0x89, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff
    db 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0d, 0x00, 0x50, 0x8b, 0x46, 0xf8
    db 0x05, 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x69, 0x00, 0x50, 0xe8, 0x43, 0x91, 0x83, 0xc4
    db 0x0e, 0x8b, 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b
    db 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50, 0xe8, 0x22, 0x8f
    db 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x38, 0x00, 0x50, 0xff, 0x76, 0xe8, 0xe8, 0x89, 0xf6, 0x83, 0xc4, 0x08, 0xff, 0x76
    db 0xee, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x28, 0x91, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00
    db 0x50, 0x50, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xee, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05
    db 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xee, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xc5, 0x8b, 0x83, 0xc4, 0x0e, 0x8b, 0x46
    db 0xf8, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xd7, 0xb9, 0x83, 0xc4, 0x08
    db 0x8b, 0x46, 0xf8, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46
    db 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50, 0xe8, 0xb5, 0xb9, 0x83
    db 0xc4, 0x08, 0xe9, 0xed, 0x05, 0x83, 0x7e, 0x08, 0x00, 0x75, 0x03, 0xe9, 0x4d, 0x02, 0x83, 0x7e
    db 0x80, 0x00, 0x75, 0x16, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x9f, 0x88, 0x59, 0xc7, 0x06, 0x50, 0x90
    db 0x01, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0xe9, 0x31, 0x02, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46
    db 0xf8, 0x05, 0x20, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xb9, 0xf4, 0x83, 0xc4, 0x0a
    db 0xb8, 0xc0, 0x00, 0x50, 0xb8, 0x1a, 0x00, 0x50, 0xe8, 0xa2, 0xb8, 0x83, 0xc4, 0x04, 0xb8, 0xd8
    db 0x90, 0x50, 0x8d, 0x46, 0x8c, 0x50, 0xe8, 0xd5, 0xc3, 0x83, 0xc4, 0x04, 0x8d, 0x46, 0xb4, 0x50
    db 0x8d, 0x46, 0x8c, 0x50, 0xe8, 0x90, 0xc3, 0x83, 0xc4, 0x04, 0xb8, 0xda, 0x90, 0x50, 0x8d, 0x46
    db 0x8c, 0x50, 0xe8, 0x82, 0xc3, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xf8, 0x05, 0x1a, 0x00, 0x50, 0x8d
    db 0x46, 0x8c, 0x50, 0xe8, 0xd4, 0xca, 0x59, 0x8b, 0xc8, 0xb8, 0x0c, 0x00, 0x2b, 0xc1, 0xb9, 0x06
    db 0x00, 0xf7, 0xe9, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x03, 0x46, 0xfa, 0x05, 0x09, 0x00, 0x50
    db 0xe8, 0x30, 0xb8, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x46, 0x8c, 0x50, 0xe8, 0x67
    db 0xb8, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xf8, 0x05, 0x20, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50
    db 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0xd1, 0xb8, 0x83, 0xc4, 0x08, 0x8b, 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36
    db 0x00, 0x50, 0xe8, 0x6d, 0x8d, 0x83, 0xc4, 0x08, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x38, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd4, 0xf4
    db 0x83, 0xc4, 0x08, 0x8b, 0x46, 0xf8, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00
    db 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50, 0xe8
    db 0x72, 0xb8, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0x32, 0x0e, 0x00, 0x74, 0x16, 0x8d, 0x46, 0xf0, 0x50
    db 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xd6, 0xbf, 0x83, 0xc4, 0x04, 0x85, 0xc0, 0x74, 0x02, 0xeb, 0xec
    db 0xeb, 0x08, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xa3, 0xba, 0x59, 0x8b, 0x46, 0xf8, 0x05, 0x11, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50, 0xe8, 0xe9, 0x8c, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50
    db 0x8b, 0x46, 0xf8, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x38, 0x00, 0x50, 0xff, 0x76
    db 0xe8, 0xe8, 0x50, 0xf4, 0x83, 0xc4, 0x08, 0x8b, 0x46, 0xf8, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05
    db 0x36, 0x00, 0x50, 0xe8, 0xee, 0xb7, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf8
    db 0x05, 0x20, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x18
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x1a, 0xf3, 0x83, 0xc4, 0x0a, 0xb8
    db 0xc0, 0x00, 0x50, 0xb8, 0x55, 0x00, 0x50, 0xe8, 0x03, 0xb7, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xf8
    db 0x05, 0x1a, 0x00, 0x50, 0x8d, 0x46, 0xb4, 0x50, 0xe8, 0x5f, 0xc9, 0x59, 0x8b, 0xc8, 0xb8, 0x0c
    db 0x00, 0x2b, 0xc1, 0xb9, 0x06, 0x00, 0xf7, 0xe9, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x03, 0x46
    db 0xfa, 0x05, 0x09, 0x00, 0x50, 0xe8, 0xbb, 0xb6, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d
    db 0x46, 0xb4, 0x50, 0xe8, 0xf2, 0xb6, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xf8, 0x05, 0x20, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x18, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x5c, 0xb7, 0x83, 0xc4, 0x08, 0xe9, 0x94, 0x03, 0x83, 0x7e
    db 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xf8
    db 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xbb, 0x8c, 0x83, 0xc4
    db 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xf8
    db 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x9b, 0x8c, 0x83, 0xc4
    db 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0xe9, 0x43, 0x03, 0x8b
    db 0x46, 0xe6, 0x05, 0xfb, 0xff, 0x89, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x83, 0xbf, 0x30, 0x92
    db 0x00, 0x74, 0x03, 0xe9, 0x03, 0x03, 0xc7, 0x46, 0x86, 0x00, 0x00, 0xc7, 0x46, 0xfc, 0x00, 0x00
    db 0x8b, 0x46, 0xfc, 0xd1, 0xe0, 0x8b, 0xd8, 0x83, 0xbf, 0x30, 0x92, 0x00, 0x74, 0x03, 0xff, 0x46
    db 0x86, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x08, 0x00, 0x7c, 0xe4, 0x8b, 0x46, 0xfe, 0xd1
    db 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0x30, 0x92, 0x01, 0x00, 0xff, 0xb7, 0x30, 0x92, 0x8b, 0x46, 0xfe
    db 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x11
    db 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00
    db 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x6b, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99
    db 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46
    db 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46
    db 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xae, 0xf1, 0x83, 0xc4, 0x0a, 0xb8, 0xc2, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xe8, 0x97, 0xb5, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99
    db 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46
    db 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46
    db 0xfa, 0x05, 0x5f, 0x00, 0x50, 0xe8, 0x4b, 0xb5, 0x83, 0xc4, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x8b
    db 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x8a, 0x87, 0x40, 0x92, 0x2a, 0xe4, 0x50, 0xe8, 0x5a, 0xb5
    db 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3
    db 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7
    db 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x6b, 0x00, 0x50, 0x8b
    db 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8
    db 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9
    db 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xa6, 0xb5, 0x83, 0xc4
    db 0x08, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xa2, 0x84, 0x59, 0x83, 0x3e, 0x50, 0x92, 0xff, 0x75, 0x0e
    db 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0xe9, 0x9b, 0x01, 0x83, 0x7e
    db 0x80, 0x00, 0x74, 0x1c, 0xb8, 0x0a, 0x00, 0xf7, 0x2e, 0x50, 0x92, 0x03, 0x46, 0xfe, 0x8b, 0xd8
    db 0x8a, 0x87, 0x52, 0x92, 0x2a, 0xe4, 0x8b, 0x4e, 0x86, 0x83, 0xc1, 0x31, 0x3b, 0xc1, 0x74, 0x0e
    db 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0xe9, 0x6b, 0x01, 0x83, 0xbe
    db 0x7e, 0xff, 0x00, 0x74, 0x03, 0xe9, 0x37, 0x01, 0xb8, 0xc8, 0x00, 0x50, 0xe8, 0xf4, 0xb0, 0x59
    db 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0x30, 0x92, 0x00, 0x00, 0xff, 0xb7, 0x30
    db 0x92, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03
    db 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b
    db 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x6b, 0x00, 0x50, 0x8b, 0x46, 0xfe
    db 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x05
    db 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00
    db 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x2a, 0xf0, 0x83, 0xc4, 0x0a, 0xb8
    db 0xc2, 0x00, 0x50, 0xb8, 0x1a, 0x00, 0x50, 0xe8, 0x13, 0xb4, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xfe
    db 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x07
    db 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00
    db 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x5f, 0x00, 0x50, 0xe8, 0xc7, 0xb3, 0x83, 0xc4, 0x04, 0xb8
    db 0x01, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x8a, 0x87, 0x40, 0x92, 0x2a, 0xe4
    db 0x50, 0xe8, 0xd6, 0xb3, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9
    db 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9
    db 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05
    db 0x6b, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3
    db 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7
    db 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8
    db 0x22, 0xb4, 0x83, 0xc4, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x1e, 0x83, 0x59, 0xeb, 0x2a, 0x8b
    db 0x46, 0x88, 0x48, 0x3b, 0x46, 0x86, 0x75, 0x21, 0x83, 0x7e, 0x82, 0x00, 0x74, 0x10, 0xff, 0x76
    db 0x82, 0xb8, 0x10, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x73, 0xda, 0x83, 0xc4, 0x06, 0xc7, 0x06
    db 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0xeb, 0x27, 0x5d, 0x7c, 0xde, 0x7d, 0xde
    db 0x7d, 0x72, 0x7f, 0xcb, 0x81, 0x1c, 0x82, 0x1c, 0x82, 0x1c, 0x82, 0x1c, 0x82, 0x1c, 0x82, 0x1c
    db 0x82, 0x1c, 0x82, 0x1c, 0x82

@..local.l103:
    cmp ax, strict word 0xd          ; 0x350b
    jae short @..local.l104          ; 0x350e
    xchg bx, ax                      ; 0x3510
    shl bx, 1                        ; 0x3511
    jmp [cs:bx - 0x7ac8]             ; 0x3513
@..local.l104:
    cmp word [bp - 0x001c], byte 0   ; 0x3518
    je short @..local.l105           ; 0x351c
    jmp near @..local.l95            ; 0x351e
@..local.l105:
    mov ax, 1                        ; 0x3521
    push ax                          ; 0x3524
    push word [bp - 0x0076]          ; 0x3525
    call ds_dispatch_c459            ; 0x3528
    add sp, byte 4                   ; 0x352b
    mov word [data_911c], 0x8f       ; 0x352e
    mov ax, word [bp - 0x000c]       ; 0x3534
    inc ax                           ; 0x3537
    push ax                          ; 0x3538
    mov ax, word [bp - 0x000a]       ; 0x3539
    inc ax                           ; 0x353c
    push ax                          ; 0x353d
    mov ax, word [bp - 0x0008]       ; 0x353e
    dec ax                           ; 0x3541
    push ax                          ; 0x3542
    mov ax, word [bp - 0x0006]       ; 0x3543
    dec ax                           ; 0x3546
    push ax                          ; 0x3547
    call ds_dispatch_e8da            ; 0x3548
    add sp, byte 8                   ; 0x354b
    mov ax, word [data_9050]         ; 0x354e
    ret                              ; 0x3551
api_idx_0008:
    mov ax, 0xfff8                   ; 0x3552
    call ds_dispatch_f40b            ; 0x3555
    mov word [bp - 0x0006], 0xffff   ; 0x3558
    mov word [bp - 0x0008], 0xffff   ; 0x355d
    mov ax, word [data_0e0e]         ; 0x3562
    mov word [bp - 0x0004], ax       ; 0x3565
    mov word [bp - 0x0002], 0        ; 0x3568
    jmp short @..local.l110          ; 0x356d
@..api_idx_0008.l1:
    mov bx, word [bp - 0x0004]       ; 0x356f
    mov al, byte [bx]                ; 0x3572
    sub ah, ah                       ; 0x3574
    cmp ax, 0xff                     ; 0x3576
    jne short @..local.l106          ; 0x3579
    mov ax, word [bp - 0x0002]       ; 0x357b
    ret                              ; 0x357e
@..local.l106:
    mov al, byte [bx + 0x1]          ; 0x357f
    sub ah, ah                       ; 0x3582
    test ax, 0x40                    ; 0x3584
    jne short @..local.l109          ; 0x3587
    cmp word [bp - 0x0006], byte 0xff ; 0x3589
    je short @..local.l107           ; 0x358d
    mov ax, 7                        ; 0x358f
    push ax                          ; 0x3592
    call ds_dispatch_b7a9            ; 0x3593
    pop cx                           ; 0x3596
    test ax, ax                      ; 0x3597
    jne short @..local.l109          ; 0x3599
@..local.l107:
    mov bx, word [bp - 0x0004]       ; 0x359b
    mov al, byte [bx]                ; 0x359e
    sub ah, ah                       ; 0x35a0
    cmp ax, word [data_830c]         ; 0x35a2
    jne short @..local.l108          ; 0x35a6
    mov ax, word [bp - 0x0002]       ; 0x35a8
    mov word [bp - 0x0008], ax       ; 0x35ab
    jmp short @..local.l109          ; 0x35ae
@..local.l108:
    mov ax, word [bp - 0x0002]       ; 0x35b0
    mov word [bp - 0x0006], ax       ; 0x35b3
@..local.l109:
    add word [bp - 0x0004], byte 8   ; 0x35b6
    inc word [bp - 0x0002]           ; 0x35ba
@..local.l110:
    mov ax, word [bp - 0x0002]       ; 0x35bd
    cmp ax, word [data_5910]         ; 0x35c0
    jl short @..api_idx_0008.l1      ; 0x35c4
    cmp word [bp + 0x4], byte 0      ; 0x35c6
    je short @..local.l112           ; 0x35ca
    cmp word [bp - 0x0006], byte 0xff ; 0x35cc
    jne short @..local.l111          ; 0x35d0
    mov ax, word [bp - 0x0008]       ; 0x35d2
    ret                              ; 0x35d5
@..local.l111:
    mov ax, word [bp - 0x0006]       ; 0x35d6
    ret                              ; 0x35d9
@..local.l112:
    mov ax, 0xffff                   ; 0x35da
    ret                              ; 0x35dd
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x35de
    call ds_dispatch_f40b            ; 0x35e1
    mov ax, 0                        ; 0x35e4
    push ax                          ; 0x35e7
    call api_idx_0008                ; 0x35e8
    pop cx                           ; 0x35eb
    mov word [bp - 0x0002], ax       ; 0x35ec
    cmp ax, strict word 0xffff       ; 0x35ef
    jne short @..api_idx_0004_6.l4   ; 0x35f2
    cmp word [data_5910], byte 0x7f  ; 0x35f4
    jl short @..api_idx_0004_6.l3    ; 0x35f9
    mov ax, 1                        ; 0x35fb
    push ax                          ; 0x35fe
    call api_idx_0008                ; 0x35ff
    pop cx                           ; 0x3602
    mov word [bp - 0x0002], ax       ; 0x3603
    cmp ax, strict word 0xffff       ; 0x3606
    jne short @..api_idx_0004_6.l2   ; 0x3609
@..api_idx_0004_6.l1:
    mov ax, 0                        ; 0x360b
    push ax                          ; 0x360e
    call ds_dispatch_b7e0            ; 0x360f
    pop cx                           ; 0x3612
    jmp short @..api_idx_0004_6.l1   ; 0x3613
@..api_idx_0004_6.l2:
    jmp short @..api_idx_0004_6.l4   ; 0x3615
@..api_idx_0004_6.l3:
    mov ax, word [data_5910]         ; 0x3617
    mov word [bp - 0x0002], ax       ; 0x361a
    inc word [data_5910]             ; 0x361d
@..api_idx_0004_6.l4:
    mov cx, word [bp - 0x0002]       ; 0x3621
    shl cx, 1                        ; 0x3624
    shl cx, 1                        ; 0x3626
    shl cx, 1                        ; 0x3628
    mov ax, word [data_0e0e]         ; 0x362a
    add ax, cx                       ; 0x362d
    mov word [bp - 0x0004], ax       ; 0x362f
    mov al, byte [data_830c]         ; 0x3632
    mov bx, word [bp - 0x0004]       ; 0x3635
    mov byte [bx], al                ; 0x3638
    mov bx, word [bp + 0x4]          ; 0x363a
    mov al, byte [bx + 0x7]          ; 0x363d
    mov bx, word [bp - 0x0004]       ; 0x3640
    mov byte [bx + 0x1], al          ; 0x3643
    mov ax, word [data_8f3e]         ; 0x3646
    xchg al, ah                      ; 0x3649
    sub al, al                       ; 0x364b
    mov dx, word [data_8f42]         ; 0x364d
    mov cx, 4                        ; 0x3651
    shl dx, cl                       ; 0x3654
    mov cx, dx                       ; 0x3656
    add ax, cx                       ; 0x3658
    add ax, word [data_8f40]         ; 0x365a
    mov bx, word [bp - 0x0004]       ; 0x365e
    mov word [bx + 0x2], ax          ; 0x3661
    mov bx, word [bp + 0x4]          ; 0x3664
    mov ax, word [bx]                ; 0x3667
    mov bx, word [bp - 0x0004]       ; 0x3669
    mov word [bx + 0x4], ax          ; 0x366c
    mov bx, word [bp + 0x4]          ; 0x366f
    mov al, byte [bx + 0x5]          ; 0x3672
    mov bx, word [bp - 0x0004]       ; 0x3675
    mov byte [bx + 0x7], al          ; 0x3678
    mov bx, word [bp + 0x4]          ; 0x367b
    mov al, byte [bx + 0x6]          ; 0x367e
    mov bx, word [bp - 0x0004]       ; 0x3681
    mov byte [bx + 0x6], al          ; 0x3684
    mov ax, 1                        ; 0x3687
    push ax                          ; 0x368a
    mov ax, word [data_8f3e]         ; 0x368b
    mov cx, 6                        ; 0x368e
    shl ax, cl                       ; 0x3691
    mov cx, word [data_8f40]         ; 0x3693
    shl cx, 1                        ; 0x3697
    shl cx, 1                        ; 0x3699
    shl cx, 1                        ; 0x369b
    add ax, cx                       ; 0x369d
    add ax, word [data_8f42]         ; 0x369f
    push ax                          ; 0x36a3
    mov ax, 0x8bfe                   ; 0x36a4
    push ax                          ; 0x36a7
    call ds_dispatch_ec41            ; 0x36a8
    add sp, byte 6                   ; 0x36ab
    ret                              ; 0x36ae
api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x36af
    call ds_dispatch_f40b            ; 0x36b2
    mov ax, word [data_0e0e]         ; 0x36b5
    mov word [bp - 0x0006], ax       ; 0x36b8
    mov word [bp - 0x0002], 0        ; 0x36bb
    jmp short @..local.l114          ; 0x36c0
@..api_idx_0006_2.l1:
    mov bx, word [bp - 0x0006]       ; 0x36c2
    mov al, byte [bx]                ; 0x36c5
    sub ah, ah                       ; 0x36c7
    cmp ax, word [data_830c]         ; 0x36c9
    jne short @..local.l113          ; 0x36cd
    mov ax, word [data_8f3e]         ; 0x36cf
    xchg al, ah                      ; 0x36d2
    sub al, al                       ; 0x36d4
    mov dx, word [data_8f42]         ; 0x36d6
    mov cx, 4                        ; 0x36da
    shl dx, cl                       ; 0x36dd
    mov cx, dx                       ; 0x36df
    add ax, cx                       ; 0x36e1
    add ax, word [data_8f40]         ; 0x36e3
    mov word [bp - 0x0004], ax       ; 0x36e7
    cmp ax, word [bx + 0x2]          ; 0x36ea
    jne short @..local.l113          ; 0x36ed
    mov ax, bx                       ; 0x36ef
    ret                              ; 0x36f1
@..local.l113:
    add word [bp - 0x0006], byte 8   ; 0x36f2
    inc word [bp - 0x0002]           ; 0x36f6
@..local.l114:
    mov ax, word [bp - 0x0002]       ; 0x36f9
    cmp ax, word [data_5910]         ; 0x36fc
    jl short @..api_idx_0006_2.l1    ; 0x3700
    mov ax, 0                        ; 0x3702
    ret                              ; 0x3705
api_idx_0006_3:
    mov ax, 0xfffa                   ; 0x3706
    call ds_dispatch_f40b            ; 0x3709
    call api_idx_0006_2              ; 0x370c
    mov word [bp - 0x0002], ax       ; 0x370f
    test ax, ax                      ; 0x3712
    je short @..local.l115           ; 0x3714
    mov ax, 0                        ; 0x3716
    push ax                          ; 0x3719
    push word [data_8d08]            ; 0x371a
    push word [data_8d06]            ; 0x371e
    call ds_dispatch_e94f            ; 0x3722
    add sp, byte 6                   ; 0x3725
    mov ax, 0xb9                     ; 0x3728
    push ax                          ; 0x372b
    mov ax, 0x131                    ; 0x372c
    push ax                          ; 0x372f
    call ds_dispatch_e809            ; 0x3730
    add sp, byte 4                   ; 0x3733
    mov ax, 4                        ; 0x3736
    push ax                          ; 0x3739
    mov bx, word [bp - 0x0002]       ; 0x373a
    mov al, byte [bx + 0x7]          ; 0x373d
    sub ah, ah                       ; 0x3740
    push ax                          ; 0x3742
    call ds_dispatch_e830            ; 0x3743
    add sp, byte 4                   ; 0x3746
    mov ax, 0xc4                     ; 0x3749
    push ax                          ; 0x374c
    mov ax, 0x13c                    ; 0x374d
    push ax                          ; 0x3750
    mov ax, 0xb9                     ; 0x3751
    push ax                          ; 0x3754
    mov ax, 0x131                    ; 0x3755
    push ax                          ; 0x3758
    call ds_dispatch_e8da            ; 0x3759
    add sp, byte 8                   ; 0x375c
    mov ax, 1                        ; 0x375f
    ret                              ; 0x3762
@..local.l115:
    mov ax, 0                        ; 0x3763
    push ax                          ; 0x3766
    mov ax, word [data_8f3e]         ; 0x3767
    mov cx, 6                        ; 0x376a
    shl ax, cl                       ; 0x376d
    mov cx, word [data_8f40]         ; 0x376f
    shl cx, 1                        ; 0x3773
    shl cx, 1                        ; 0x3775
    shl cx, 1                        ; 0x3777
    add ax, cx                       ; 0x3779
    add ax, word [data_8f42]         ; 0x377b
    push ax                          ; 0x377f
    mov ax, 0x8bfe                   ; 0x3780
    push ax                          ; 0x3783
    call ds_dispatch_ec41            ; 0x3784
    add sp, byte 6                   ; 0x3787
    mov ax, 0                        ; 0x378a
    push ax                          ; 0x378d
    push word [data_8d08]            ; 0x378e
    push word [data_8d06]            ; 0x3792
    call ds_dispatch_e94f            ; 0x3796
    add sp, byte 6                   ; 0x3799
    mov ax, 0xc4                     ; 0x379c
    push ax                          ; 0x379f
    mov ax, 0x13c                    ; 0x37a0
    push ax                          ; 0x37a3
    mov ax, 0xb9                     ; 0x37a4
    push ax                          ; 0x37a7
    mov ax, 0x131                    ; 0x37a8
    push ax                          ; 0x37ab
    call ds_dispatch_e8da            ; 0x37ac
    add sp, byte 8                   ; 0x37af
    mov ax, 0                        ; 0x37b2
    ret                              ; 0x37b5
api_idx_0018:
    mov ax, 0xffe8                   ; 0x37b6
    call ds_dispatch_f40b            ; 0x37b9
    mov ax, word [bp + 0x6]          ; 0x37bc
    imul word [bp + 0xe]             ; 0x37bf
    add ax, word [bp + 0xa]          ; 0x37c2
    add ax, strict word 0xb          ; 0x37c5
    push ax                          ; 0x37c8
    mov ax, 6                        ; 0x37c9
    imul word [bp + 0xc]             ; 0x37cc
    add ax, word [bp + 0x8]          ; 0x37cf
    inc ax                           ; 0x37d2
    push ax                          ; 0x37d3
    mov ax, word [bp + 0x6]          ; 0x37d4
    imul word [bp + 0xe]             ; 0x37d7
    add ax, word [bp + 0xa]          ; 0x37da
    dec ax                           ; 0x37dd
    push ax                          ; 0x37de
    mov ax, word [bp + 0x8]          ; 0x37df
    dec ax                           ; 0x37e2
    push ax                          ; 0x37e3
    call ds_dispatch_e928            ; 0x37e4
    add sp, byte 8                   ; 0x37e7
    mov word [bp - 0x0016], dx       ; 0x37ea
    mov word [bp - 0x0018], ax       ; 0x37ed
    lea ax, word [bp - 0x0014]       ; 0x37f0
    push ax                          ; 0x37f3
    push word [bp + 0x4]             ; 0x37f4
    call ds_dispatch_b53b            ; 0x37f7
    add sp, byte 4                   ; 0x37fa
    mov ax, 0                        ; 0x37fd
    push ax                          ; 0x3800
    mov ax, word [bp + 0x6]          ; 0x3801
    imul word [bp + 0xe]             ; 0x3804
    add ax, word [bp + 0xa]          ; 0x3807
    add ax, strict word 8            ; 0x380a
    push ax                          ; 0x380d
    mov ax, 6                        ; 0x380e
    imul word [bp + 0xc]             ; 0x3811
    add ax, word [bp + 0x8]          ; 0x3814
    push ax                          ; 0x3817
    mov ax, word [bp + 0x6]          ; 0x3818
    imul word [bp + 0xe]             ; 0x381b
    add ax, word [bp + 0xa]          ; 0x381e
    push ax                          ; 0x3821
    push word [bp + 0x8]             ; 0x3822
    call ds_dispatch_bce3            ; 0x3825
    add sp, byte 0x0a                ; 0x3828
    mov ax, word [bp + 0x6]          ; 0x382b
    imul word [bp + 0xe]             ; 0x382e
    add ax, word [bp + 0xa]          ; 0x3831
    inc ax                           ; 0x3834
    inc ax                           ; 0x3835
    push ax                          ; 0x3836
    lea ax, word [bp - 0x0014]       ; 0x3837
    push ax                          ; 0x383a
    call ds_dispatch_fa90            ; 0x383b
    pop cx                           ; 0x383e
    mov cx, ax                       ; 0x383f
    mov ax, word [bp + 0xc]          ; 0x3841
    sub ax, cx                       ; 0x3844
    mov cx, 6                        ; 0x3846
    imul cx                          ; 0x3849
    mov cx, data_0002                ; 0x384b
    cwd                              ; 0x384e
    idiv cx                          ; 0x384f
    add ax, word [bp + 0x8]          ; 0x3851
    inc ax                           ; 0x3854
    push ax                          ; 0x3855
    call ds_dispatch_e809            ; 0x3856
    add sp, byte 4                   ; 0x3859
    mov ax, 0xc0                     ; 0x385c
    push ax                          ; 0x385f
    mov ax, 0x1a                     ; 0x3860
    push ax                          ; 0x3863
    call ds_dispatch_e823            ; 0x3864
    add sp, byte 4                   ; 0x3867
    mov ax, 0                        ; 0x386a
    push ax                          ; 0x386d
    lea ax, word [bp - 0x0014]       ; 0x386e
    push ax                          ; 0x3871
    call ds_dispatch_e84e            ; 0x3872
    add sp, byte 4                   ; 0x3875
    mov ax, word [bp + 0x6]          ; 0x3878
    imul word [bp + 0xe]             ; 0x387b
    add ax, word [bp + 0xa]          ; 0x387e
    add ax, strict word 8            ; 0x3881
    push ax                          ; 0x3884
    mov ax, 6                        ; 0x3885
    imul word [bp + 0xc]             ; 0x3888
    add ax, word [bp + 0x8]          ; 0x388b
    push ax                          ; 0x388e
    mov ax, word [bp + 0x6]          ; 0x388f
    imul word [bp + 0xe]             ; 0x3892
    add ax, word [bp + 0xa]          ; 0x3895
    push ax                          ; 0x3898
    push word [bp + 0x8]             ; 0x3899
    call ds_dispatch_e8da            ; 0x389c
    add sp, byte 8                   ; 0x389f
    mov ax, 1                        ; 0x38a2
    push ax                          ; 0x38a5
    push word [bp - 0x0016]          ; 0x38a6
    push word [bp - 0x0018]          ; 0x38a9
    call ds_dispatch_e94f            ; 0x38ac
    add sp, byte 6                   ; 0x38af
    ret                              ; 0x38b2
api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x38b3
    call ds_dispatch_f40b            ; 0x38b6
    mov word [bp - 0x0002], 0        ; 0x38b9
    jmp near @..api_idx_0004_7.l8    ; 0x38be
@..api_idx_0004_7.l1:
    mov ax, word [bp + 0xc]          ; 0x38c1
    add ax, word [bp - 0x0002]       ; 0x38c4
    cmp ax, word [bp + 0xe]          ; 0x38c7
    jne short @..api_idx_0004_7.l2   ; 0x38ca
    mov ax, 1                        ; 0x38cc
    push ax                          ; 0x38cf
    mov ax, 0xe                      ; 0x38d0
    imul word [bp - 0x0002]          ; 0x38d3
    add ax, word [bp + 0x6]          ; 0x38d6
    add ax, strict word 0xd          ; 0x38d9
    push ax                          ; 0x38dc
    mov ax, 6                        ; 0x38dd
    imul word [bp + 0x8]             ; 0x38e0
    add ax, word [bp + 0x4]          ; 0x38e3
    inc ax                           ; 0x38e6
    inc ax                           ; 0x38e7
    push ax                          ; 0x38e8
    mov ax, 0xe                      ; 0x38e9
    imul word [bp - 0x0002]          ; 0x38ec
    add ax, word [bp + 0x6]          ; 0x38ef
    inc ax                           ; 0x38f2
    push ax                          ; 0x38f3
    mov ax, word [bp + 0x4]          ; 0x38f4
    add ax, strict word 0x1c         ; 0x38f7
    push ax                          ; 0x38fa
    call ds_dispatch_e901            ; 0x38fb
    add sp, byte 0x0a                ; 0x38fe
    mov word [bp - 0x0004], 0        ; 0x3901
    jmp short @..api_idx_0004_7.l3   ; 0x3906
@..api_idx_0004_7.l2:
    mov word [bp - 0x0004], 0xb4     ; 0x3908
@..api_idx_0004_7.l3:
    mov ax, 0xe                      ; 0x390d
    imul word [bp - 0x0002]          ; 0x3910
    add ax, word [bp + 0x6]          ; 0x3913
    inc ax                           ; 0x3916
    push ax                          ; 0x3917
    mov ax, word [bp + 0x4]          ; 0x3918
    inc ax                           ; 0x391b
    inc ax                           ; 0x391c
    push ax                          ; 0x391d
    call ds_dispatch_e809            ; 0x391e
    add sp, byte 4                   ; 0x3921
    mov ax, word [bp + 0xc]          ; 0x3924
    add ax, word [bp - 0x0002]       ; 0x3927
    shl ax, 1                        ; 0x392a
    mov bx, ax                       ; 0x392c
    cmp word [bx - 0x6c52], byte 0   ; 0x392e
    je short @..api_idx_0004_7.l4    ; 0x3933
    mov ax, 4                        ; 0x3935
    push ax                          ; 0x3938
    mov ax, 0x63                     ; 0x3939
    push ax                          ; 0x393c
    call ds_dispatch_e830            ; 0x393d
    add sp, byte 4                   ; 0x3940
@..api_idx_0004_7.l4:
    mov ax, 0xe                      ; 0x3943
    imul word [bp - 0x0002]          ; 0x3946
    add ax, word [bp + 0x6]          ; 0x3949
    inc ax                           ; 0x394c
    push ax                          ; 0x394d
    mov ax, word [bp + 0x4]          ; 0x394e
    add ax, strict word 0xf          ; 0x3951
    push ax                          ; 0x3954
    call ds_dispatch_e809            ; 0x3955
    add sp, byte 4                   ; 0x3958
    mov ax, 4                        ; 0x395b
    push ax                          ; 0x395e
    mov ax, word [bp + 0xc]          ; 0x395f
    add ax, word [bp - 0x0002]       ; 0x3962
    shl ax, 1                        ; 0x3965
    mov bx, ax                       ; 0x3967
    mov al, byte [bx - 0x6c2a]       ; 0x3969
    sub ah, ah                       ; 0x396d
    push ax                          ; 0x396f
    call ds_dispatch_e830            ; 0x3970
    add sp, byte 4                   ; 0x3973
    push word [bp - 0x0004]          ; 0x3976
    mov ax, 0xe                      ; 0x3979
    imul word [bp - 0x0002]          ; 0x397c
    add ax, word [bp + 0x6]          ; 0x397f
    inc ax                           ; 0x3982
    inc ax                           ; 0x3983
    push ax                          ; 0x3984
    mov ax, word [bp + 0x4]          ; 0x3985
    add ax, strict word 0x1d         ; 0x3988
    push ax                          ; 0x398b
    mov ax, word [bp + 0xc]          ; 0x398c
    add ax, word [bp - 0x0002]       ; 0x398f
    mov cx, 0x16                     ; 0x3992
    imul cx                          ; 0x3995
    add ax, 0x93fe                   ; 0x3997
    push ax                          ; 0x399a
    call api_idx_002a                ; 0x399b
    add sp, byte 8                   ; 0x399e
    mov ax, word [bp + 0xc]          ; 0x39a1
    add ax, word [bp - 0x0002]       ; 0x39a4
    shl ax, 1                        ; 0x39a7
    mov bx, ax                       ; 0x39a9
    cmp word [bx - 0x6a4a], byte 0   ; 0x39ab
    jle short @..api_idx_0004_7.l7   ; 0x39b0
    mov ax, 0xe                      ; 0x39b2
    imul word [bp - 0x0002]          ; 0x39b5
    add ax, word [bp + 0x6]          ; 0x39b8
    add ax, strict word 8            ; 0x39bb
    push ax                          ; 0x39be
    mov ax, word [bp + 0x4]          ; 0x39bf
    add ax, strict word 0x47         ; 0x39c2
    push ax                          ; 0x39c5
    call ds_dispatch_e809            ; 0x39c6
    add sp, byte 4                   ; 0x39c9
    mov ax, 0                        ; 0x39cc
    push ax                          ; 0x39cf
    mov ax, word [bp + 0xc]          ; 0x39d0
    add ax, word [bp - 0x0002]       ; 0x39d3
    cmp ax, word [bp + 0xe]          ; 0x39d6
    jne short @..api_idx_0004_7.l5   ; 0x39d9
    mov ax, word [bp - 0x0004]       ; 0x39db
    jmp short @..api_idx_0004_7.l6   ; 0x39de
@..api_idx_0004_7.l5:
    mov ax, data_0002                ; 0x39e0
@..api_idx_0004_7.l6:
    push ax                          ; 0x39e3
    call ds_dispatch_e823            ; 0x39e4
    add sp, byte 4                   ; 0x39e7
    mov ax, 0                        ; 0x39ea
    push ax                          ; 0x39ed
    mov ax, 3                        ; 0x39ee
    push ax                          ; 0x39f1
    mov ax, word [bp + 0xc]          ; 0x39f2
    add ax, word [bp - 0x0002]       ; 0x39f5
    shl ax, 1                        ; 0x39f8
    mov bx, ax                       ; 0x39fa
    push word [bx - 0x6a4a]          ; 0x39fc
    call ds_dispatch_b2e7            ; 0x3a00
    add sp, byte 6                   ; 0x3a03
@..api_idx_0004_7.l7:
    inc word [bp - 0x0002]           ; 0x3a06
@..api_idx_0004_7.l8:
    mov ax, word [bp - 0x0002]       ; 0x3a09
    cmp ax, word [bp + 0xa]          ; 0x3a0c
    jge short @..api_idx_0004_7.l9   ; 0x3a0f
    jmp near @..api_idx_0004_7.l1    ; 0x3a11
@..api_idx_0004_7.l9:
    ret                              ; 0x3a14
math_loc_3a15:
    mov ax, 0                        ; 0x3a15
    call ds_dispatch_f40b            ; 0x3a18
    mov ax, 6                        ; 0x3a1b
    imul word [bp + 0xa]             ; 0x3a1e
    add ax, word [bp + 0x6]          ; 0x3a21
    push ax                          ; 0x3a24
    mov ax, 6                        ; 0x3a25
    imul word [bp + 0x8]             ; 0x3a28
    add ax, word [bp + 0x4]          ; 0x3a2b
    inc ax                           ; 0x3a2e
    inc ax                           ; 0x3a2f
    push ax                          ; 0x3a30
    push word [bp + 0x6]             ; 0x3a31
    push word [bp + 0x4]             ; 0x3a34
    call ds_dispatch_bd98            ; 0x3a37
    add sp, byte 8                   ; 0x3a3a
    push word [bp + 0xe]             ; 0x3a3d
    push word [bp + 0xc]             ; 0x3a40
    push word [bp + 0x10]            ; 0x3a43
    push word [bp + 0x8]             ; 0x3a46
    push word [bp + 0x6]             ; 0x3a49
    push word [bp + 0x4]             ; 0x3a4c
    call api_idx_0004_7              ; 0x3a4f
    add sp, byte 0x0c                ; 0x3a52
    ret                              ; 0x3a55
api_idx_0038:
    mov ax, 0xffc8                   ; 0x3a56
    call ds_dispatch_f40b            ; 0x3a59
    mov word [data_904e], 0xffff     ; 0x3a5c
    mov word [bp - 0x0004], 0x37     ; 0x3a62
    mov word [bp - 0x0006], 0x8f     ; 0x3a67
    mov word [bp - 0x0008], 0x108    ; 0x3a6c
    mov word [bp - 0x000a], 0xc5     ; 0x3a71
    mov word [data_911c], 0x8d       ; 0x3a76
    mov word [bp - 0x0012], 0x16     ; 0x3a7c
    mov ax, 3                        ; 0x3a81
    cmp word [bp + 0xc], byte 3      ; 0x3a84
    jge short @..api_idx_0038.l1     ; 0x3a88
    mov ax, word [bp + 0xc]          ; 0x3a8a
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax       ; 0x3a8d
    mov ax, 0x90dc                   ; 0x3a90
    push ax                          ; 0x3a93
    mov ax, word [bp - 0x000a]       ; 0x3a94
    inc ax                           ; 0x3a97
    push ax                          ; 0x3a98
    mov ax, word [bp - 0x0008]       ; 0x3a99
    inc ax                           ; 0x3a9c
    push ax                          ; 0x3a9d
    mov ax, word [bp - 0x0006]       ; 0x3a9e
    dec ax                           ; 0x3aa1
    push ax                          ; 0x3aa2
    mov ax, word [bp - 0x0004]       ; 0x3aa3
    dec ax                           ; 0x3aa6
    push ax                          ; 0x3aa7
    call ds_dispatch_c283            ; 0x3aa8
    add sp, byte 0x0a                ; 0x3aab
    mov word [bp - 0x0038], ax       ; 0x3aae
    push word [bp - 0x000a]          ; 0x3ab1
    push word [bp - 0x0008]          ; 0x3ab4
    push word [bp - 0x0006]          ; 0x3ab7
    push word [bp - 0x0004]          ; 0x3aba
    call ds_dispatch_bc9a            ; 0x3abd
    add sp, byte 8                   ; 0x3ac0
    cmp word [bp + 0x6], byte 0      ; 0x3ac3
    je short @..api_idx_0038.l2      ; 0x3ac7
    lea ax, word [bp - 0x0036]       ; 0x3ac9
    push ax                          ; 0x3acc
    push word [bp + 0x4]             ; 0x3acd
    call ds_dispatch_b53b            ; 0x3ad0
    add sp, byte 4                   ; 0x3ad3
    jmp short @..api_idx_0038.l3     ; 0x3ad6
@..api_idx_0038.l2:
    push word [bp + 0xe]             ; 0x3ad8
    lea ax, word [bp - 0x0036]       ; 0x3adb
    push ax                          ; 0x3ade
    call ds_dispatch_f364            ; 0x3adf
    add sp, byte 4                   ; 0x3ae2
@..api_idx_0038.l3:
    lea ax, word [bp - 0x0036]       ; 0x3ae5
    push ax                          ; 0x3ae8
    push word [bp + 0x6]             ; 0x3ae9
    mov ax, 1                        ; 0x3aec
    push ax                          ; 0x3aef
    mov ax, 0xc                      ; 0x3af0
    push ax                          ; 0x3af3
    mov ax, word [bp - 0x0006]       ; 0x3af4
    add ax, strict word 7            ; 0x3af7
    push ax                          ; 0x3afa
    mov ax, word [bp - 0x0004]       ; 0x3afb
    add ax, strict word 8            ; 0x3afe
    push ax                          ; 0x3b01
    call ds_dispatch_c0c1            ; 0x3b02
    add sp, byte 0x0c                ; 0x3b05
    lea ax, word [bp - 0x0036]       ; 0x3b08
    push ax                          ; 0x3b0b
    mov ax, word [bp + 0x4]          ; 0x3b0c
    inc ax                           ; 0x3b0f
    push ax                          ; 0x3b10
    call ds_dispatch_b53b            ; 0x3b11
    add sp, byte 4                   ; 0x3b14
    lea ax, word [bp - 0x0036]       ; 0x3b17
    push ax                          ; 0x3b1a
    push word [bp + 0x8]             ; 0x3b1b
    mov ax, 1                        ; 0x3b1e
    push ax                          ; 0x3b21
    mov ax, 0xc                      ; 0x3b22
    push ax                          ; 0x3b25
    mov ax, word [bp - 0x0006]       ; 0x3b26
    add ax, strict word 0x17         ; 0x3b29
    push ax                          ; 0x3b2c
    mov ax, word [bp - 0x0004]       ; 0x3b2d
    add ax, strict word 8            ; 0x3b30
    push ax                          ; 0x3b33
    call ds_dispatch_c0c1            ; 0x3b34
    add sp, byte 0x0c                ; 0x3b37
    lea ax, word [bp - 0x0036]       ; 0x3b3a
    push ax                          ; 0x3b3d
    mov ax, word [bp + 0x4]          ; 0x3b3e
    inc ax                           ; 0x3b41
    inc ax                           ; 0x3b42
    push ax                          ; 0x3b43
    call ds_dispatch_b53b            ; 0x3b44
    add sp, byte 4                   ; 0x3b47
    lea ax, word [bp - 0x0036]       ; 0x3b4a
    push ax                          ; 0x3b4d
    push word [bp + 0xa]             ; 0x3b4e
    mov ax, 1                        ; 0x3b51
    push ax                          ; 0x3b54
    mov ax, 0xc                      ; 0x3b55
    push ax                          ; 0x3b58
    mov ax, word [bp - 0x0006]       ; 0x3b59
    add ax, strict word 0x27         ; 0x3b5c
    push ax                          ; 0x3b5f
    mov ax, word [bp - 0x0004]       ; 0x3b60
    add ax, strict word 8            ; 0x3b63
    push ax                          ; 0x3b66
    call ds_dispatch_c0c1            ; 0x3b67
    add sp, byte 0x0c                ; 0x3b6a
    mov word [bp - 0x0016], 0        ; 0x3b6d
    mov word [bp - 0x0020], 0xffff   ; 0x3b72
    push word [bp - 0x0022]          ; 0x3b77
    push word [bp - 0x0020]          ; 0x3b7a
    push word [bp - 0x0016]          ; 0x3b7d
    mov ax, 7                        ; 0x3b80
    push ax                          ; 0x3b83
    mov ax, 0xf                      ; 0x3b84
    push ax                          ; 0x3b87
    mov ax, word [bp - 0x0006]       ; 0x3b88
    add ax, strict word 6            ; 0x3b8b
    push ax                          ; 0x3b8e
    mov ax, word [bp - 0x0004]       ; 0x3b8f
    add ax, strict word 0x5d         ; 0x3b92
    push ax                          ; 0x3b95
    call math_loc_3a15               ; 0x3b96
    add sp, byte 0x0e                ; 0x3b99
    mov word [bp - 0x0010], 0        ; 0x3b9c
    push word [bp - 0x0010]          ; 0x3ba1
    mov ax, 7                        ; 0x3ba4
    push ax                          ; 0x3ba7
    mov ax, 8                        ; 0x3ba8
    push ax                          ; 0x3bab
    mov ax, word [bp - 0x0006]       ; 0x3bac
    add ax, strict word 6            ; 0x3baf
    push ax                          ; 0x3bb2
    mov ax, word [bp - 0x0004]       ; 0x3bb3
    add ax, 0xc1                     ; 0x3bb6
    push ax                          ; 0x3bb9
    call ds_dispatch_bfd8            ; 0x3bba
    add sp, byte 0x0a                ; 0x3bbd
    mov ax, 0                        ; 0x3bc0
    push ax                          ; 0x3bc3
    push ax                          ; 0x3bc4
    mov ax, word [bp - 0x0006]       ; 0x3bc5
    add ax, word [bp - 0x0010]       ; 0x3bc8
    add ax, strict word 0x12         ; 0x3bcb
    push ax                          ; 0x3bce
    mov ax, word [bp - 0x0004]       ; 0x3bcf
    add ax, 0xc9                     ; 0x3bd2
    push ax                          ; 0x3bd5
    mov ax, word [bp - 0x0006]       ; 0x3bd6
    add ax, word [bp - 0x0010]       ; 0x3bd9
    add ax, strict word 0xe          ; 0x3bdc
    push ax                          ; 0x3bdf
    mov ax, word [bp - 0x0004]       ; 0x3be0
    add ax, 0xc1                     ; 0x3be3
    push ax                          ; 0x3be6
    mov ax, 0                        ; 0x3be7
    push ax                          ; 0x3bea
    call ds_dispatch_baa6            ; 0x3beb
    add sp, byte 0x0e                ; 0x3bee
    mov ax, 0                        ; 0x3bf1
    push ax                          ; 0x3bf4
    mov ax, 9                        ; 0x3bf5
    push ax                          ; 0x3bf8
    mov ax, word [bp - 0x0006]       ; 0x3bf9
    add ax, strict word 0xc          ; 0x3bfc
    push ax                          ; 0x3bff
    mov ax, word [bp - 0x0004]       ; 0x3c00
    add ax, 0xc9                     ; 0x3c03
    push ax                          ; 0x3c06
    mov ax, word [bp - 0x0006]       ; 0x3c07
    add ax, strict word 6            ; 0x3c0a
    push ax                          ; 0x3c0d
    mov ax, word [bp - 0x0004]       ; 0x3c0e
    add ax, 0xc1                     ; 0x3c11
    push ax                          ; 0x3c14
    mov ax, 1                        ; 0x3c15
    push ax                          ; 0x3c18
    call ds_dispatch_baa6            ; 0x3c19
    add sp, byte 0x0e                ; 0x3c1c
    mov ax, 0                        ; 0x3c1f
    push ax                          ; 0x3c22
    mov ax, 0xb                      ; 0x3c23
    push ax                          ; 0x3c26
    mov ax, word [bp - 0x0006]       ; 0x3c27
    add ax, strict word 0x30         ; 0x3c2a
    push ax                          ; 0x3c2d
    mov ax, word [bp - 0x0004]       ; 0x3c2e
    add ax, 0xc9                     ; 0x3c31
    push ax                          ; 0x3c34
    mov ax, word [bp - 0x0006]       ; 0x3c35
    add ax, strict word 0x2a         ; 0x3c38
    push ax                          ; 0x3c3b
    mov ax, word [bp - 0x0004]       ; 0x3c3c
    add ax, 0xc1                     ; 0x3c3f
    push ax                          ; 0x3c42
    mov ax, data_0002                ; 0x3c43
    push ax                          ; 0x3c46
    call ds_dispatch_baa6            ; 0x3c47
    add sp, byte 0x0e                ; 0x3c4a
    cmp word [bp + 0x6], byte 0      ; 0x3c4d
    jne short @..local.l116          ; 0x3c51
    jmp near @..local.l117           ; 0x3c53
@..local.l116:
    mov ax, 0xd                      ; 0x3c56
    push ax                          ; 0x3c59
    mov ax, 0x55                     ; 0x3c5a
    push ax                          ; 0x3c5d
    mov ax, word [bp - 0x0006]       ; 0x3c5e
    add ax, strict word 0xf          ; 0x3c61
    push ax                          ; 0x3c64
    mov ax, word [bp - 0x0004]       ; 0x3c65
    add ax, strict word 0x50         ; 0x3c68
    push ax                          ; 0x3c6b
    mov ax, word [bp - 0x0006]       ; 0x3c6c
    add ax, strict word 7            ; 0x3c6f
    push ax                          ; 0x3c72
    mov ax, word [bp - 0x0004]       ; 0x3c73
    add ax, strict word 8            ; 0x3c76
    push ax                          ; 0x3c79
    mov ax, 3                        ; 0x3c7a
    push ax                          ; 0x3c7d
    call ds_dispatch_baa6            ; 0x3c7e
    add sp, byte 0x0e                ; 0x3c81
    mov ax, 0                        ; 0x3c84
    push ax                          ; 0x3c87
    mov ax, 0x44                     ; 0x3c88
    push ax                          ; 0x3c8b
    mov ax, word [bp - 0x0006]       ; 0x3c8c
    add ax, strict word 0x1f         ; 0x3c8f
    push ax                          ; 0x3c92
    mov ax, word [bp - 0x0004]       ; 0x3c93
    add ax, strict word 0x50         ; 0x3c96
    push ax                          ; 0x3c99
    mov ax, word [bp - 0x0006]       ; 0x3c9a
    add ax, strict word 0x17         ; 0x3c9d
    push ax                          ; 0x3ca0
    mov ax, word [bp - 0x0004]       ; 0x3ca1
    add ax, strict word 8            ; 0x3ca4
    push ax                          ; 0x3ca7
    mov ax, 4                        ; 0x3ca8
    push ax                          ; 0x3cab
    call ds_dispatch_baa6            ; 0x3cac
    add sp, byte 0x0e                ; 0x3caf
    mov ax, 0                        ; 0x3cb2
    push ax                          ; 0x3cb5
    mov ax, 0x1b                     ; 0x3cb6
    push ax                          ; 0x3cb9
    mov ax, word [bp - 0x0006]       ; 0x3cba
    add ax, strict word 0x2f         ; 0x3cbd
    push ax                          ; 0x3cc0
    mov ax, word [bp - 0x0004]       ; 0x3cc1
    add ax, strict word 0x50         ; 0x3cc4
    push ax                          ; 0x3cc7
    mov ax, word [bp - 0x0006]       ; 0x3cc8
    add ax, strict word 0x27         ; 0x3ccb
    push ax                          ; 0x3cce
    mov ax, word [bp - 0x0004]       ; 0x3ccf
    add ax, strict word 8            ; 0x3cd2
    push ax                          ; 0x3cd5
    mov ax, 5                        ; 0x3cd6
    push ax                          ; 0x3cd9
    call ds_dispatch_baa6            ; 0x3cda
    add sp, byte 0x0e                ; 0x3cdd
    jmp near @..local.l118           ; 0x3ce0
@..local.l117:
    mov ax, 0                        ; 0x3ce3
    push ax                          ; 0x3ce6
    push ax                          ; 0x3ce7
    mov ax, word [bp - 0x0006]       ; 0x3ce8
    add ax, strict word 0xf          ; 0x3ceb
    push ax                          ; 0x3cee
    mov ax, word [bp - 0x0004]       ; 0x3cef
    add ax, strict word 0x50         ; 0x3cf2
    push ax                          ; 0x3cf5
    mov ax, word [bp - 0x0006]       ; 0x3cf6
    add ax, strict word 7            ; 0x3cf9
    push ax                          ; 0x3cfc
    mov ax, word [bp - 0x0004]       ; 0x3cfd
    add ax, strict word 8            ; 0x3d00
    push ax                          ; 0x3d03
    mov ax, 3                        ; 0x3d04
    push ax                          ; 0x3d07
    call ds_dispatch_baa6            ; 0x3d08
    add sp, byte 0x0e                ; 0x3d0b
    mov ax, 0xd                      ; 0x3d0e
    push ax                          ; 0x3d11
    mov ax, 0x54                     ; 0x3d12
    push ax                          ; 0x3d15
    mov ax, word [bp - 0x0006]       ; 0x3d16
    add ax, strict word 0x1f         ; 0x3d19
    push ax                          ; 0x3d1c
    mov ax, word [bp - 0x0004]       ; 0x3d1d
    add ax, strict word 0x50         ; 0x3d20
    push ax                          ; 0x3d23
    mov ax, word [bp - 0x0006]       ; 0x3d24
    add ax, strict word 0x17         ; 0x3d27
    push ax                          ; 0x3d2a
    mov ax, word [bp - 0x0004]       ; 0x3d2b
    add ax, strict word 8            ; 0x3d2e
    push ax                          ; 0x3d31
    mov ax, 4                        ; 0x3d32
    push ax                          ; 0x3d35
    call ds_dispatch_baa6            ; 0x3d36
    add sp, byte 0x0e                ; 0x3d39
    mov ax, 0x1b                     ; 0x3d3c
    push ax                          ; 0x3d3f
    mov ax, 0x4c                     ; 0x3d40
    push ax                          ; 0x3d43
    mov ax, word [bp - 0x0006]       ; 0x3d44
    add ax, strict word 0x2f         ; 0x3d47
    push ax                          ; 0x3d4a
    mov ax, word [bp - 0x0004]       ; 0x3d4b
    add ax, strict word 0x50         ; 0x3d4e
    push ax                          ; 0x3d51
    mov ax, word [bp - 0x0006]       ; 0x3d52
    add ax, strict word 0x27         ; 0x3d55
    push ax                          ; 0x3d58
    mov ax, word [bp - 0x0004]       ; 0x3d59
    add ax, strict word 8            ; 0x3d5c
    push ax                          ; 0x3d5f
    mov ax, 5                        ; 0x3d60
    push ax                          ; 0x3d63
    call ds_dispatch_baa6            ; 0x3d64
    add sp, byte 0x0e                ; 0x3d67
@..local.l118:
    mov ax, 3                        ; 0x3d6a
    cmp word [bp + 0xc], byte 3      ; 0x3d6d
    jge short @..local.l119          ; 0x3d71
    mov ax, word [bp + 0xc]          ; 0x3d73
@..local.l119:
    mov word [bp - 0x001e], ax       ; 0x3d76
    mov word [bp - 0x0002], 0        ; 0x3d79
    jmp short @..local.l121          ; 0x3d7e
@..local.l120:
    mov ax, 0                        ; 0x3d80
    push ax                          ; 0x3d83
    push ax                          ; 0x3d84
    mov ax, 0xe                      ; 0x3d85
    imul word [bp - 0x0002]          ; 0x3d88
    add ax, word [bp - 0x0006]       ; 0x3d8b
    add ax, strict word 0x13         ; 0x3d8e
    push ax                          ; 0x3d91
    mov ax, word [bp - 0x0004]       ; 0x3d92
    add ax, 0xb9                     ; 0x3d95
    push ax                          ; 0x3d98
    mov ax, 0xe                      ; 0x3d99
    imul word [bp - 0x0002]          ; 0x3d9c
    add ax, word [bp - 0x0006]       ; 0x3d9f
    add ax, strict word 7            ; 0x3da2
    push ax                          ; 0x3da5
    mov ax, word [bp - 0x0004]       ; 0x3da6
    add ax, strict word 0x5d         ; 0x3da9
    push ax                          ; 0x3dac
    mov ax, word [bp - 0x0002]       ; 0x3dad
    add ax, strict word 6            ; 0x3db0
    push ax                          ; 0x3db3
    call ds_dispatch_baa6            ; 0x3db4
    add sp, byte 0x0e                ; 0x3db7
    inc word [bp - 0x0002]           ; 0x3dba
@..local.l121:
    mov ax, word [bp - 0x0002]       ; 0x3dbd
    cmp ax, word [bp - 0x001e]       ; 0x3dc0
    jl short @..local.l120           ; 0x3dc3
    mov ax, 0                        ; 0x3dc5
    push ax                          ; 0x3dc8
    push ax                          ; 0x3dc9
    push ax                          ; 0x3dca
    push ax                          ; 0x3dcb
    push ax                          ; 0x3dcc
    mov ax, 0xffff                   ; 0x3dcd
    push ax                          ; 0x3dd0
    mov ax, word [bp - 0x001e]       ; 0x3dd1
    add ax, strict word 6            ; 0x3dd4
    push ax                          ; 0x3dd7
    call ds_dispatch_baa6            ; 0x3dd8
    add sp, byte 0x0e                ; 0x3ddb
    mov ax, word [bp - 0x000a]       ; 0x3dde
    inc ax                           ; 0x3de1
    push ax                          ; 0x3de2
    mov ax, word [bp - 0x0008]       ; 0x3de3
    inc ax                           ; 0x3de6
    push ax                          ; 0x3de7
    mov ax, word [bp - 0x0006]       ; 0x3de8
    dec ax                           ; 0x3deb
    push ax                          ; 0x3dec
    mov ax, word [bp - 0x0004]       ; 0x3ded
    dec ax                           ; 0x3df0
    push ax                          ; 0x3df1
    call ds_dispatch_e8da            ; 0x3df2
    add sp, byte 8                   ; 0x3df5
    mov word [bp - 0x001a], 1        ; 0x3df8
    mov word [data_9124], 5          ; 0x3dfd
@..local.l122:
    cmp word [bp + 0x6], byte 0      ; 0x3e03
    jne short @..local.l123          ; 0x3e07
    call math_loc_086b               ; 0x3e09
@..local.l123:
    mov ax, 0x59fe                   ; 0x3e0c
    push ax                          ; 0x3e0f
    call ds_dispatch_b90d            ; 0x3e10
    pop cx                           ; 0x3e13
    dec ax                           ; 0x3e14
    mov word [bp - 0x0018], ax       ; 0x3e15
    cmp word [data_59fc], byte 0     ; 0x3e18
    je short @..local.l127           ; 0x3e1d
    mov ax, word [bp - 0x0020]       ; 0x3e1f
    cmp ax, word [bp - 0x0016]       ; 0x3e22
    jl short @..local.l124           ; 0x3e25
    inc word [bp - 0x0020]           ; 0x3e27
@..local.l124:
    mov ax, word [bp - 0x0020]       ; 0x3e2a
    cmp ax, strict word 0xffff       ; 0x3e2d
    je short @..local.l125           ; 0x3e30
    cmp ax, word [bp - 0x0016]       ; 0x3e32
    jl short @..local.l125           ; 0x3e35
    mov ax, word [bp - 0x0016]       ; 0x3e37
    add ax, word [bp - 0x001e]       ; 0x3e3a
    mov cx, ax                       ; 0x3e3d
    dec ax                           ; 0x3e3f
    mov cx, ax                       ; 0x3e40
    mov ax, word [bp - 0x0020]       ; 0x3e42
    cmp cx, ax                       ; 0x3e45
    jge short @..local.l126          ; 0x3e47
@..local.l125:
    mov ax, word [bp - 0x0016]       ; 0x3e49
    mov word [bp - 0x0020], ax       ; 0x3e4c
@..local.l126:
    mov word [data_5b3e], 1          ; 0x3e4f
    mov ax, word [bp - 0x0020]       ; 0x3e55
    sub ax, word [bp - 0x0016]       ; 0x3e58
    add ax, strict word 6            ; 0x3e5b
    mov word [bp - 0x0018], ax       ; 0x3e5e
@..local.l127:
    cmp word [data_5b3e], byte 1     ; 0x3e61
    je short @..local.l128           ; 0x3e66
    jmp near @..local.l132           ; 0x3e68
@..local.l128:
    mov ax, word [bp - 0x0018]       ; 0x3e6b
    jmp near @..local.l130           ; 0x3e6e

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
    db 0x00, 0x00, 0xeb, 0x6e

@..local.l129:
    mov ax, word [bp - 0x0016]       ; 0x41c0
    add ax, word [bp - 0x0018]       ; 0x41c3
    add ax, strict word 0xfffa       ; 0x41c6
    mov word [bp - 0x0020], ax       ; 0x41c9
    push word [bp - 0x0022]          ; 0x41cc
    push ax                          ; 0x41cf
    push word [bp - 0x0016]          ; 0x41d0
    mov ax, 7                        ; 0x41d3
    push ax                          ; 0x41d6
    mov ax, 0xf                      ; 0x41d7
    push ax                          ; 0x41da
    mov ax, word [bp - 0x0006]       ; 0x41db
    add ax, strict word 6            ; 0x41de
    push ax                          ; 0x41e1
    mov ax, word [bp - 0x0004]       ; 0x41e2
    add ax, strict word 0x5d         ; 0x41e5
    push ax                          ; 0x41e8
    call math_loc_3a15               ; 0x41e9
    add sp, byte 0x0e                ; 0x41ec
    mov ax, word [bp - 0x0006]       ; 0x41ef
    add ax, strict word 0x30         ; 0x41f2
    push ax                          ; 0x41f5
    mov ax, word [bp - 0x0004]       ; 0x41f6
    add ax, 0xb9                     ; 0x41f9
    push ax                          ; 0x41fc
    mov ax, word [bp - 0x0006]       ; 0x41fd
    add ax, strict word 6            ; 0x4200
    push ax                          ; 0x4203
    mov ax, word [bp - 0x0004]       ; 0x4204
    add ax, strict word 0x5d         ; 0x4207
    push ax                          ; 0x420a
    call ds_dispatch_e8da            ; 0x420b
    add sp, byte 8                   ; 0x420e
    jmp short @..local.l132          ; 0x4211
    db 0xb8, 0x8e, 0xde, 0x8f, 0xde, 0x8f, 0x15, 0x91, 0x66, 0x91, 0xb7, 0x91
@..local.l130:
    cmp ax, strict word 6            ; 0x421f
    jae short @..local.l131          ; 0x4222
    xchg bx, ax                      ; 0x4224
    shl bx, 1                        ; 0x4225
    jmp [cs:bx - 0x6da6]             ; 0x4227
@..local.l131:
    jmp short @..local.l129          ; 0x422c
@..local.l132:
    cmp word [bp - 0x001a], byte 0   ; 0x422e
    je short @..local.l133           ; 0x4232
    jmp near @..local.l122           ; 0x4234
@..local.l133:
    mov ax, 1                        ; 0x4237
    push ax                          ; 0x423a
    push word [bp - 0x0038]          ; 0x423b
    call ds_dispatch_c459            ; 0x423e
    add sp, byte 4                   ; 0x4241
    mov word [data_911c], 0x8f       ; 0x4244
    mov ax, word [bp - 0x0020]       ; 0x424a
    mov word [data_904e], ax         ; 0x424d
    mov ax, word [data_9050]         ; 0x4250
    ret                              ; 0x4253
api_idx_0054:
    mov ax, 0xffac                   ; 0x4254
    call ds_dispatch_f40b            ; 0x4257
    mov ax, 0xa                      ; 0x425a
    imul word [bp + 0x6]             ; 0x425d
    add ax, strict word 0x32         ; 0x4260
    push ax                          ; 0x4263
    mov ax, 5                        ; 0x4264
    imul word [data_95de]            ; 0x4267
    mov cx, ax                       ; 0x426b
    pop ax                           ; 0x426d
    sub ax, cx                       ; 0x426e
    mov word [bp - 0x0004], ax       ; 0x4270
    cmp ax, strict word 0x5f         ; 0x4273
    jle short @..api_idx_0054.l1     ; 0x4276
    mov word [bp - 0x0004], 0x5f     ; 0x4278
@..api_idx_0054.l1:
    cmp word [bp - 0x0004], byte 5   ; 0x427d
    jge short @..api_idx_0054.l2     ; 0x4281
    mov word [bp - 0x0004], 5        ; 0x4283
@..api_idx_0054.l2:
    mov ax, 0x64                     ; 0x4288
    push ax                          ; 0x428b
    call ds_dispatch_b7a9            ; 0x428c
    pop cx                           ; 0x428f
    mov word [bp - 0x0002], ax       ; 0x4290
    cmp ax, word [bp - 0x0004]       ; 0x4293
    jge short @..api_idx_0054.l3     ; 0x4296
    mov word [data_91fe], 0          ; 0x4298
    mov word [data_95e0], 1          ; 0x429e
    mov word [data_9114], 1          ; 0x42a4
    lea ax, word [bp - 0x0054]       ; 0x42aa
    push ax                          ; 0x42ad
    mov ax, 0x1472                   ; 0x42ae
    push ax                          ; 0x42b1
    call ds_dispatch_b53b            ; 0x42b2
    add sp, byte 4                   ; 0x42b5
    mov ax, 1                        ; 0x42b8
    push ax                          ; 0x42bb
    mov ax, data_0002                ; 0x42bc
    push ax                          ; 0x42bf
    push word [data_91d4]            ; 0x42c0
    lea ax, word [bp - 0x0054]       ; 0x42c4
    push ax                          ; 0x42c7
    call math_loc_0eb2               ; 0x42c8
    add sp, byte 8                   ; 0x42cb
    jmp short @..api_idx_0054.l5     ; 0x42ce
@..api_idx_0054.l3:
    mov ax, 0x64                     ; 0x42d0
    sub ax, word [bp - 0x0004]       ; 0x42d3
    mov cx, 3                        ; 0x42d6
    cwd                              ; 0x42d9
    idiv cx                          ; 0x42da
    mov cx, ax                       ; 0x42dc
    mov ax, 0x64                     ; 0x42de
    sub ax, cx                       ; 0x42e1
    cmp ax, word [bp - 0x0002]       ; 0x42e3
    jge short @..api_idx_0054.l4     ; 0x42e6
    mov word [data_95e0], 0xffff     ; 0x42e8
    jmp short @..api_idx_0054.l5     ; 0x42ee
@..api_idx_0054.l4:
    mov word [data_95e0], 0          ; 0x42f0
    lea ax, word [bp - 0x0054]       ; 0x42f6
    push ax                          ; 0x42f9
    mov ax, 0x1473                   ; 0x42fa
    push ax                          ; 0x42fd
    call ds_dispatch_b53b            ; 0x42fe
    add sp, byte 4                   ; 0x4301
    mov ax, 1                        ; 0x4304
    push ax                          ; 0x4307
    push ax                          ; 0x4308
    push word [data_91d4]            ; 0x4309
    lea ax, word [bp - 0x0054]       ; 0x430d
    push ax                          ; 0x4310
    call math_loc_0eb2               ; 0x4311
    add sp, byte 8                   ; 0x4314
@..api_idx_0054.l5:
    ret                              ; 0x4317
math_loc_4318:
    mov ax, 0                        ; 0x4318
    call ds_dispatch_f40b            ; 0x431b
    cmp word [bp + 0x8], byte 1      ; 0x431e
    jne short @..math_loc_4318.l3    ; 0x4322
    cmp word [bp + 0x6], byte 0      ; 0x4324
    jle short @..math_loc_4318.l1    ; 0x4328
    mov ax, word [bp + 0x4]          ; 0x432a
    sub word [bp + 0x6], ax          ; 0x432d
    jmp short @..math_loc_4318.l2    ; 0x4330
@..math_loc_4318.l1:
    mov ax, 0                        ; 0x4332
    sub ax, word [bp + 0x4]          ; 0x4335
    cmp ax, word [bp + 0x6]          ; 0x4338
    jge short @..math_loc_4318.l2    ; 0x433b
    mov word [bp + 0x6], ax          ; 0x433d
@..math_loc_4318.l2:
    jmp short @..math_loc_4318.l5    ; 0x4340
@..math_loc_4318.l3:
    cmp word [bp + 0x8], byte 0      ; 0x4342
    jne short @..math_loc_4318.l5    ; 0x4346
    cmp word [bp + 0x6], byte 0      ; 0x4348
    jge short @..math_loc_4318.l4    ; 0x434c
    mov ax, word [bp + 0x4]          ; 0x434e
    add word [bp + 0x6], ax          ; 0x4351
    jmp short @..math_loc_4318.l5    ; 0x4354
@..math_loc_4318.l4:
    mov ax, word [bp + 0x6]          ; 0x4356
    cmp ax, word [bp + 0x4]          ; 0x4359
    jge short @..math_loc_4318.l5    ; 0x435c
    mov ax, word [bp + 0x4]          ; 0x435e
    mov word [bp + 0x6], ax          ; 0x4361
@..math_loc_4318.l5:
    mov ax, word [bp + 0x6]          ; 0x4364
    ret                              ; 0x4367
api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x4368
    call ds_dispatch_f40b            ; 0x436b
    mov ax, word [bp + 0x6]          ; 0x436e
    jmp near @..local.l139           ; 0x4371
    mov ax, 0x32                     ; 0x4374
    imul word [bp + 0x8]             ; 0x4377
    add word [data_82fe], ax         ; 0x437a
    mov ax, 0                        ; 0x437e
    push ax                          ; 0x4381
    push word [data_8300]            ; 0x4382
    mov ax, 5                        ; 0x4386
    imul word [bp + 0x8]             ; 0x4389
    add ax, strict word 0x46         ; 0x438c
    push ax                          ; 0x438f
    call math_loc_4318               ; 0x4390
    add sp, byte 6                   ; 0x4393
    mov word [data_8300], ax         ; 0x4396
    jmp near @..local.l140           ; 0x4399
    mov ax, 0x23                     ; 0x439c
    imul word [bp + 0x8]             ; 0x439f
    add word [data_82f2], ax         ; 0x43a2
    mov ax, 0                        ; 0x43a6
    push ax                          ; 0x43a9
    push word [data_82f4]            ; 0x43aa
    mov ax, word [bp + 0x8]          ; 0x43ae
    dec ax                           ; 0x43b1
    mov cx, data_0002                ; 0x43b2
    cwd                              ; 0x43b5
    idiv cx                          ; 0x43b6
    inc ax                           ; 0x43b8
    push ax                          ; 0x43b9
    call math_loc_4318               ; 0x43ba
    add sp, byte 6                   ; 0x43bd
    mov word [data_82f4], ax         ; 0x43c0
    jmp near @..local.l140           ; 0x43c3
    mov ax, 0x32                     ; 0x43c6
    imul word [bp + 0x8]             ; 0x43c9
    add word [data_82f6], ax         ; 0x43cc
    mov ax, 0                        ; 0x43d0
    push ax                          ; 0x43d3
    push word [data_82f8]            ; 0x43d4
    mov ax, word [bp + 0x8]          ; 0x43d8
    dec ax                           ; 0x43db
    mov cx, data_0002                ; 0x43dc
    cwd                              ; 0x43df
    idiv cx                          ; 0x43e0
    inc ax                           ; 0x43e2
    push ax                          ; 0x43e3
    call math_loc_4318               ; 0x43e4
    add sp, byte 6                   ; 0x43e7
    mov word [data_82f8], ax         ; 0x43ea
    jmp near @..local.l140           ; 0x43ed
    mov ax, 5                        ; 0x43f0
    imul word [bp + 0x8]             ; 0x43f3
    add word [data_8306], ax         ; 0x43f6
    jmp near @..local.l140           ; 0x43fa
    mov ax, 0x64                     ; 0x43fd
    imul word [bp + 0x8]             ; 0x4400
    add word [data_8302], ax         ; 0x4403
    jmp near @..local.l140           ; 0x4407
    mov ax, 0x32                     ; 0x440a
    imul word [bp + 0x8]             ; 0x440d
    add word [data_82fa], ax         ; 0x4410
    mov ax, 0                        ; 0x4414
    push ax                          ; 0x4417
    push word [data_82fc]            ; 0x4418
    mov ax, 5                        ; 0x441c
    imul word [bp + 0x8]             ; 0x441f
    push ax                          ; 0x4422
    call math_loc_4318               ; 0x4423
    add sp, byte 6                   ; 0x4426
    mov word [data_82fc], ax         ; 0x4429
    jmp near @..local.l140           ; 0x442c
    push word [bp + 0x8]             ; 0x442f
    push word [bp + 0x4]             ; 0x4432
    call api_idx_0054                ; 0x4435
    add sp, byte 4                   ; 0x4438
    jmp near @..local.l140           ; 0x443b
    mov word [bp - 0x0006], 0        ; 0x443e
@..api_idx_0008_2.l1:
    mov ax, 0x64                     ; 0x4443
    push ax                          ; 0x4446
    call ds_dispatch_b7a9            ; 0x4447
    pop cx                           ; 0x444a
    push ax                          ; 0x444b
    mov ax, 0xa                      ; 0x444c
    imul word [bp + 0x8]             ; 0x444f
    mov cx, ax                       ; 0x4452
    add ax, strict word 0x23         ; 0x4454
    mov cx, ax                       ; 0x4457
    mov dx, word [data_95de]         ; 0x4459
    shl dx, 1                        ; 0x445d
    sub ax, dx                       ; 0x445f
    mov cx, ax                       ; 0x4461
    pop ax                           ; 0x4463
    cmp ax, cx                       ; 0x4464
    jge short @..api_idx_0008_2.l8   ; 0x4466
    mov word [bp - 0x0002], 0        ; 0x4468
    jmp short @..api_idx_0008_2.l7   ; 0x446d
@..api_idx_0008_2.l2:
    cmp word [data_91fe], byte 0     ; 0x446f
    jle short @..api_idx_0008_2.l5   ; 0x4474
    cmp word [data_9250], byte 0xff  ; 0x4476
    je short @..api_idx_0008_2.l5    ; 0x447b
    mov ax, 0xa                      ; 0x447d
    imul word [data_9250]            ; 0x4480
    add ax, word [bp - 0x0006]       ; 0x4484
    mov bx, ax                       ; 0x4487
    cmp byte [bx - 0x6dae], 0x2d     ; 0x4489
    jne short @..api_idx_0008_2.l3   ; 0x448e
    mov ax, 0x2d                     ; 0x4490
    jmp short @..api_idx_0008_2.l4   ; 0x4493
@..api_idx_0008_2.l3:
    mov ax, 0x2a                     ; 0x4495
@..api_idx_0008_2.l4:
    push ax                          ; 0x4498
    mov ax, 0xa                      ; 0x4499
    imul word [bp - 0x0002]          ; 0x449c
    mov cx, ax                       ; 0x449f
    add ax, word [bp - 0x0006]       ; 0x44a1
    mov bx, ax                       ; 0x44a4
    pop ax                           ; 0x44a6
    mov byte [bx - 0x6c8e], al       ; 0x44a7
    jmp short @..api_idx_0008_2.l6   ; 0x44ab
@..api_idx_0008_2.l5:
    mov ax, 0xa                      ; 0x44ad
    imul word [bp - 0x0002]          ; 0x44b0
    add ax, word [bp - 0x0006]       ; 0x44b3
    mov bx, ax                       ; 0x44b6
    mov byte [bx - 0x6c8e], 0x2d     ; 0x44b8
@..api_idx_0008_2.l6:
    inc word [bp - 0x0002]           ; 0x44bd
@..api_idx_0008_2.l7:
    mov ax, word [bp - 0x0002]       ; 0x44c0
    cmp ax, word [data_69c8]         ; 0x44c3
    jl short @..api_idx_0008_2.l2    ; 0x44c7
@..api_idx_0008_2.l8:
    inc word [bp - 0x0006]           ; 0x44c9
    mov ax, word [bp - 0x0006]       ; 0x44cc
    cmp ax, strict word 8            ; 0x44cf
    jge short @..api_idx_0008_2.l9   ; 0x44d2
    jmp near @..api_idx_0008_2.l1    ; 0x44d4
@..api_idx_0008_2.l9:
    jmp near @..local.l140           ; 0x44d7
    mov ax, 0                        ; 0x44da
    cmp word [bp + 0x6], byte 0x13   ; 0x44dd
    je short @..api_idx_0008_2.l10   ; 0x44e1
    mov ax, word [bp + 0xa]          ; 0x44e3
@..api_idx_0008_2.l10:
    mov word [bp - 0x0002], ax       ; 0x44e6
    mov ax, word [data_69c8]         ; 0x44e9
    cmp word [bp + 0x6], byte 0x13   ; 0x44ec
    je short @..api_idx_0008_2.l11   ; 0x44f0
    mov ax, word [bp + 0xa]          ; 0x44f2
    inc ax                           ; 0x44f5
@..api_idx_0008_2.l11:
    mov word [bp - 0x0004], ax       ; 0x44f6
    mov ax, word [bp + 0x8]          ; 0x44f9
    cmp word [bp + 0x6], byte 0x13   ; 0x44fc
    je short @..api_idx_0008_2.l12   ; 0x4500
    shl ax, 1                        ; 0x4502
@..api_idx_0008_2.l12:
    mov word [bp - 0x0006], ax       ; 0x4504
    mov ax, 0                        ; 0x4507
    cmp word [bp + 0x6], byte 0x13   ; 0x450a
    je short @..api_idx_0008_2.l13   ; 0x450e
    mov ax, word [bp + 0x8]          ; 0x4510
@..api_idx_0008_2.l13:
    mov word [bp - 0x0008], ax       ; 0x4513
    jmp short @..local.l134          ; 0x4516
    mov ax, 0x248                    ; 0x4518
    imul word [bp - 0x0002]          ; 0x451b
    mov bx, ax                       ; 0x451e
    push word [bx + 0x5c12]          ; 0x4520
    mov ax, 0                        ; 0x4524
    push ax                          ; 0x4527
    push word [bp - 0x0008]          ; 0x4528
    mov ax, 8                        ; 0x452b
    push ax                          ; 0x452e
    push word [bp - 0x0006]          ; 0x452f
    call ds_dispatch_d0ea            ; 0x4532
    add sp, byte 6                   ; 0x4535
    mov cx, ax                       ; 0x4538
    sub sp, byte 4                   ; 0x453a
    mov ax, sp                       ; 0x453d
    mov dx, ss                       ; 0x453f
    mov es, dx                       ; 0x4541
    mov si, cx                       ; 0x4543
    mov di, ax                       ; 0x4545
    movsw                            ; 0x4547
    movsw                            ; 0x4548
    call ds_dispatch_d0be            ; 0x4549
    add sp, byte 4                   ; 0x454c
    push ax                          ; 0x454f
    mov ax, 0x248                    ; 0x4550
    imul word [bp - 0x0002]          ; 0x4553
    mov bx, ax                       ; 0x4556
    pop ax                           ; 0x4558
    add ax, word [bx + 0x5c10]       ; 0x4559
    push ax                          ; 0x455d
    call ds_dispatch_b7c2            ; 0x455e
    add sp, byte 6                   ; 0x4561
    push ax                          ; 0x4564
    mov ax, 0x248                    ; 0x4565
    imul word [bp - 0x0002]          ; 0x4568
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x456d
    mov word [bx + 0x5c10], ax       ; 0x456e
    mov ax, 1                        ; 0x4572
    push ax                          ; 0x4575
    push word [bp - 0x0002]          ; 0x4576
    db 0xe8, 0xbe, 0x85 ; call ds_dispatch_cb3a
    add sp, byte 4                   ; 0x457c
    inc word [bp - 0x0002]           ; 0x457f
@..local.l134:

    db 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xfc, 0x7c, 0x8e, 0xe9, 0x4a, 0x05, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x5d, 0x5d, 0x2a, 0xe4, 0x50, 0xb8, 0x19, 0x00, 0xf7, 0x6e, 0x08
    db 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe
    db 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5d, 0x5d, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a
    db 0xe8, 0x75, 0x85, 0x83, 0xc4, 0x04, 0xe9, 0x0c, 0x05, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b
    db 0xd8, 0x8a, 0x87, 0x32, 0x5e, 0x2a, 0xe4, 0x2b, 0x46, 0x08, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00
    db 0x7f, 0x0a, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xc6, 0x87, 0x5f, 0x5d, 0x00, 0x8a, 0x46, 0xfe, 0x88
    db 0x87, 0x32, 0x5e, 0x8a, 0x87, 0x5f, 0x5d, 0x2a, 0xe4, 0x50, 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0x08
    db 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7f, 0x0a, 0xc7, 0x46, 0xfe
    db 0x00, 0x00, 0xc6, 0x87, 0x32, 0x5e, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5f, 0x5d, 0xb8, 0x01
    db 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x10, 0x85, 0x83, 0xc4, 0x04, 0xe9, 0xa7, 0x04, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x80, 0xbf, 0x2f, 0x5e, 0x02, 0x74, 0x03, 0xe9, 0x80, 0x00
    db 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9
    db 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x67, 0xfe, 0x8f, 0x67, 0x5d, 0xb8, 0xb7, 0x00
    db 0x50, 0xe8, 0x43, 0x71, 0x59, 0x05, 0xb7, 0x00, 0x99, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b, 0x11, 0x97, 0xfe, 0x5b, 0xb8, 0x12, 0x00
    db 0x50, 0xe8, 0x23, 0x71, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87
    db 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x13, 0xc6, 0x87, 0x2f, 0x5e, 0x03
    db 0xc7, 0x87, 0x0c, 0x5c, 0x00, 0x00, 0xc7, 0x87, 0x10, 0x5c, 0x00, 0x00, 0xeb, 0x05, 0xc6, 0x87
    db 0x2f, 0x5e, 0x00, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x7b, 0x84, 0x83, 0xc4, 0x04
    db 0xe9, 0x12, 0x04, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x61, 0x5d, 0x2a
    db 0xe4, 0x50, 0xb8, 0x19, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe
    db 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x61
    db 0x5d, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x3d, 0x84, 0x83, 0xc4, 0x04, 0xe9, 0xd4
    db 0x03, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8
    db 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x12, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1
    db 0x7e, 0x05, 0xc6, 0x87, 0x60, 0x5d, 0x00, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x07
    db 0x84, 0x83, 0xc4, 0x04, 0xe9, 0x9e, 0x03, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x42, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x5c, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46, 0x08
    db 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfc, 0x3d
    db 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x87, 0x5c, 0x5d
    db 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xbe, 0x83, 0x83, 0xc4, 0x04, 0xff, 0x46, 0xfe
    db 0x8b, 0x46, 0xfe, 0x3b, 0x06, 0xc8, 0x69, 0x7c, 0xb5, 0xe9, 0x49, 0x03, 0xc7, 0x46, 0xfc, 0x01
    db 0x00, 0x8b, 0x46, 0xfc, 0x3d, 0x01, 0x00, 0x74, 0x14, 0x3d, 0x02, 0x00, 0x74, 0x0f, 0x3d, 0x04
    db 0x00, 0x74, 0x0a, 0x3d, 0x08, 0x00, 0x74, 0x05, 0x3d, 0x09, 0x00, 0x75, 0x39, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x0a, 0x8b, 0xc8, 0x8b, 0x46, 0xfc, 0x03, 0xc8, 0x8b, 0xd9, 0x8a, 0x87, 0x5a, 0x5d
    db 0x2a, 0xe4, 0x50, 0x8b, 0x46, 0x08, 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58
    db 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a
    db 0x46, 0xfe, 0x88, 0x87, 0x5a, 0x5d, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x09, 0x00, 0x7e
    db 0xa0, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x3d, 0x83, 0x83, 0xc4, 0x04, 0xe9, 0xd4
    db 0x02, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46, 0x0a, 0x89, 0x46, 0xfe
    db 0xa1, 0xc8, 0x69, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x04, 0x8b, 0x46, 0x0a, 0x40, 0x89, 0x46, 0xfc
    db 0xb8, 0x04, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0xb8, 0x07, 0x00, 0x89, 0x46, 0xfa, 0xb8
    db 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46, 0x08, 0x89, 0x46, 0xf8, 0xeb, 0x73
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0xff, 0xb7, 0x0e, 0x5c, 0xb8, 0x00, 0x00, 0x50
    db 0xff, 0x76, 0xf8, 0xff, 0x76, 0xfa, 0xff, 0x76, 0x08, 0xe8, 0x8c, 0x88, 0x83, 0xc4, 0x06, 0x8b
    db 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5
    db 0xe8, 0x49, 0x88, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58
    db 0x03, 0x87, 0x0c, 0x5c, 0x50, 0xe8, 0x38, 0x6f, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x83, 0x87, 0xfc, 0x5b, 0x01, 0x83, 0x97
    db 0xfe, 0x5b, 0x00, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x8b, 0x82, 0x83, 0xc4, 0x04
    db 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xfc, 0x7c, 0x85, 0xe9, 0x17, 0x02, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x80, 0xbf, 0x2f, 0x5e, 0x03, 0x74, 0x03, 0xe9, 0x88, 0x00
    db 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9
    db 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x6f, 0xfe, 0x8f, 0x67, 0x5d, 0xc6, 0x87, 0x2f
    db 0x5e, 0x00, 0xff, 0xb7, 0x0e, 0x5c, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x87, 0x0e, 0x5c, 0xb9, 0x03
    db 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0xb8, 0x6e, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0x0a, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x8b, 0x87, 0x12, 0x5c, 0xb9, 0x0a, 0x00
    db 0x99, 0xf7, 0xf9, 0x89, 0x87, 0x10, 0x5c, 0xff, 0x87, 0x1a, 0x5c, 0xb8, 0xb7, 0x00, 0x50, 0xe8
    db 0x75, 0x6e, 0x59, 0x05, 0x6d, 0x01, 0x99, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b
    db 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b, 0x11, 0x97, 0xfe, 0x5b, 0xb8, 0x01, 0x00, 0x50, 0xff
    db 0x76, 0x0a, 0xe8, 0xe3, 0x81, 0x83, 0xc4, 0x04, 0xe9, 0x7a, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x08
    db 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8, 0x80, 0x87, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04
    db 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x3d, 0x87, 0x83
    db 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01
    db 0x87, 0x10, 0x5c, 0x8b, 0x87, 0x10, 0x5c, 0x3b, 0x87, 0x12, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x12
    db 0x5c, 0x89, 0x87, 0x10, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08
    db 0xe8, 0x35, 0x87, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e
    db 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0xf2, 0x86, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x0c, 0x5c, 0x8b, 0x87
    db 0x0c, 0x5c, 0x3b, 0x87, 0x0e, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x0e, 0x5c, 0x89, 0x87, 0x0c, 0x5c
    db 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x3e, 0x81, 0x83, 0xc4, 0x04, 0xe9, 0xd5, 0x00
    db 0xc7, 0x46, 0xfe, 0x00, 0x00

@..local.l135:
    mov ax, 0                        ; 0x4a07
    push ax                          ; 0x4a0a
    mov ax, 0xa                      ; 0x4a0b
    push ax                          ; 0x4a0e
    push word [bp + 0x8]             ; 0x4a0f
    call ds_dispatch_d0ea            ; 0x4a12
    add sp, byte 6                   ; 0x4a15
    mov cx, ax                       ; 0x4a18
    sub sp, byte 4                   ; 0x4a1a
    mov ax, sp                       ; 0x4a1d
    mov dx, ss                       ; 0x4a1f
    mov es, dx                       ; 0x4a21
    mov si, cx                       ; 0x4a23
    mov di, ax                       ; 0x4a25
    movsw                            ; 0x4a27
    movsw                            ; 0x4a28
    call ds_dispatch_d0be            ; 0x4a29
    add sp, byte 4                   ; 0x4a2c
    mov word [bp - 0x0004], ax       ; 0x4a2f
    push ax                          ; 0x4a32
    mov ax, 0x248                    ; 0x4a33
    imul word [bp + 0x4]             ; 0x4a36
    mov cx, ax                       ; 0x4a39
    mov dx, word [bp - 0x0002]       ; 0x4a3b
    shl dx, 1                        ; 0x4a3e
    shl dx, 1                        ; 0x4a40
    add ax, dx                       ; 0x4a42
    mov bx, ax                       ; 0x4a44
    pop ax                           ; 0x4a46
    add word [bx + 0x5c1c], ax       ; 0x4a47
    db 0x8b, 0x87
@..local.l136:
    db 0x1c, 0x5c
    cmp ax, word [bx + 0x5c1e]       ; 0x4a4f
    jle short @..local.l137          ; 0x4a53
    mov ax, word [bx + 0x5c1e]       ; 0x4a55
    mov word [bx + 0x5c1c], ax       ; 0x4a59
@..local.l137:
    db 0xff
@..local.l138:
    db 0x46, 0xfe
    mov ax, word [bp - 0x0002]       ; 0x4a60
    cmp ax, strict word 6            ; 0x4a63
    jl short @..local.l135           ; 0x4a66
    mov ax, 1                        ; 0x4a68
    push ax                          ; 0x4a6b
    push word [bp + 0x4]             ; 0x4a6c
    call ds_dispatch_cb3a            ; 0x4a6f
    add sp, byte 4                   ; 0x4a72
    jmp short @..local.l140          ; 0x4a75
@..local.l139:
    mov cx, 0x17                     ; 0x4a77
    call leaf_loc_9a03               ; 0x4a7a
    or al, 0                         ; 0x4a7d
    adc word [bx + si], ax           ; 0x4a7f
    adc ax, word [bx + si]           ; 0x4a81
    sbb word [bx + si], ax           ; 0x4a83
    and word [bx + si], ax           ; 0x4a85
    and ax, 0x2e00                   ; 0x4a87
    add byte [bx], ch                ; 0x4a8a
    add byte [bx + di], dh           ; 0x4a8c
    add byte [bx + si], bh           ; 0x4a8e
    add byte [di], bh                ; 0x4a90
    add byte [data_3f00], bh         ; 0x4a92
    db 0x00, 0x42, 0x00 ; add byte [bp + si], al
    inc bp                           ; 0x4a99
    add byte [bp], cl                ; 0x4a9a
    push dx                          ; 0x4a9d
    db 0x00, 0x54, 0x00 ; add byte [si], dl
    pop ax                           ; 0x4aa1
    add byte [bp], bl                ; 0x4aa2
    popaw                            ; 0x4aa5
    db 0x00, 0x62, 0x00 ; add byte [bp + si], ah
    and word [di - 0x6a2c], dx       ; 0x4aa9
    and word [di - 0x68b6], dx       ; 0x4aad
    adc dl, byte [bp - 0x6bc9]       ; 0x4ab1
    inc sp                           ; 0x4ab5
    xchg sp, ax                      ; 0x4ab6
    jbe short @..local.l136          ; 0x4ab7
    or ax, 0x7794                    ; 0x4ab9
    xchg si, ax                      ; 0x4abc
    aad 0x97                         ; 0x4abd
    test word [si - 0x6c45], dx      ; 0x4abf
    adc byte [bx - 0x68f4], 0x4a     ; 0x4ac3
    cbw                              ; 0x4ac8
    jcxz @..local.l138               ; 0x4ac9
    push cx                          ; 0x4acb
    xchg sp, ax                      ; 0x4acc
    dec dx                           ; 0x4acd
    cbw                              ; 0x4ace
    pop es                           ; 0x4acf
    cwd                              ; 0x4ad0
    movsb                            ; 0x4ad1
    cwd                              ; 0x4ad2
    dec cx                           ; 0x4ad3
    db 0x9a, 0x1e, 0x9b
@..local.l140:
    db 0xc3, 0xb8
    cld                              ; 0x4ad9

    db 0xff, 0xe8, 0x2d, 0xa9, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0xea, 0x07, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x31, 0x42, 0x83, 0xc4, 0x08, 0x85, 0xc0, 0x74, 0x03, 0xe9, 0xd4, 0x00, 0xa1, 0x4e, 0x90
    db 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xfc, 0x89, 0x56, 0xfe, 0xb8, 0x06, 0x00, 0xf7
    db 0xea, 0x8b, 0xd8, 0x80, 0xbf, 0x24, 0x06, 0x01, 0x75, 0x0b, 0xe8, 0x9a, 0x83, 0xa3, 0xe2, 0x95
    db 0x3d, 0xff, 0xff, 0x75, 0x00, 0x83, 0x7e, 0xfe, 0x00, 0x7d, 0x03, 0xe9, 0xa3, 0x00, 0xb8, 0x06
    db 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0xf7, 0x6e, 0xfc, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8a, 0x87, 0x20, 0x06, 0x2a, 0xe4, 0x8b, 0xd0
    db 0xd1, 0xe0, 0xd1, 0xe0, 0x8b, 0xd0, 0x03, 0xc8, 0x8b, 0xd9, 0x58, 0x29, 0x87, 0x1c, 0x5c, 0xff
    db 0x36, 0xe2, 0x95, 0xff, 0x76, 0xfc, 0xff, 0x76, 0xfe, 0xff, 0x76, 0x04, 0xe8, 0xff, 0xf7, 0x83
    db 0xc4, 0x08, 0xff, 0x76, 0xfc, 0xe8, 0x37, 0x6c, 0x59, 0x50, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xfe
    db 0x8b, 0xd8, 0x8a, 0x87, 0x21, 0x06, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x03, 0x46, 0xfc
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x29, 0x87, 0x10, 0x5c, 0x83, 0xbf
    db 0x10, 0x5c, 0x00, 0x7d, 0x1f, 0xc7, 0x87, 0x10, 0x5c, 0x00, 0x00, 0xb8, 0x06, 0x00, 0x50, 0xe8
    db 0xfd, 0x6b, 0x59, 0x05, 0x06, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58
    db 0x88, 0x87, 0x5c, 0x5d, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x72, 0x7f, 0x83, 0xc4
    db 0x04, 0xc3, 0xb8, 0x6e, 0xff, 0xe8, 0x39, 0xa8, 0xc7, 0x86, 0x6e, 0xff, 0x00, 0x00, 0xc7, 0x46
    db 0xb2, 0x00, 0x00, 0xc7, 0x46, 0xb0, 0x00, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8
    db 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e
    db 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x83, 0xbf, 0x34, 0x5c, 0x00, 0x7f, 0x03, 0xe9
    db 0x17, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xff, 0xb7, 0x34, 0x5c, 0x8d, 0x46, 0xb6, 0x50, 0xb8, 0x01
    db 0x00, 0x50, 0xe8, 0x1d, 0x6a, 0x83, 0xc4, 0x08, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8
    db 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e
    db 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x8a, 0x87, 0x3b, 0x5c, 0x2a, 0xe4, 0xa9, 0x80
    db 0x00, 0x74, 0x17, 0x8d, 0x46, 0xb6, 0x50, 0xb8, 0x16, 0x00, 0xf7, 0xae, 0x6e, 0xff, 0x05, 0xfe
    db 0x93, 0x50, 0xe8, 0x05, 0xa7, 0x83, 0xc4, 0x04, 0xeb, 0x1a, 0xb8, 0x16, 0x00, 0xf7, 0xae, 0x6e
    db 0xff, 0x05, 0xfe, 0x93, 0x50, 0x8a, 0x46, 0xef, 0x2a, 0xe4, 0x05, 0x70, 0x17, 0x50, 0xe8, 0xc0
    db 0x68, 0x83, 0xc4, 0x04, 0x8a, 0x46, 0xef, 0x2a, 0xe4, 0x8b, 0x8e, 0x6e, 0xff, 0xd1, 0xe1, 0x8b
    db 0xd9, 0x89, 0x87, 0xd6, 0x93, 0x8b, 0x46, 0xb2, 0x89, 0x87, 0xae, 0x93, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8
    db 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x8a, 0x87, 0x38, 0x5c
    db 0x2a, 0xe4, 0x8b, 0xd8, 0x80, 0xbf, 0x0e, 0x06, 0x01, 0x75, 0x34, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c
    db 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x8a, 0x87, 0x3a, 0x5c, 0x2a
    db 0xe4, 0x8b, 0x8e, 0x6e, 0xff, 0xd1, 0xe1, 0x8b, 0xd9, 0x89, 0x87, 0xb6, 0x95, 0xeb, 0x0e, 0x8b
    db 0x86, 0x6e, 0xff, 0xd1, 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0xb6, 0x95, 0x00, 0x00, 0x8b, 0x46, 0xb2
    db 0x86, 0xe0, 0x2a, 0xc0, 0x03, 0x46, 0xb0, 0x8b, 0x8e, 0x6e, 0xff, 0xd1, 0xe1, 0x8b, 0xd9, 0x03
    db 0xdd, 0x89, 0x87, 0x70, 0xff, 0xff, 0x86, 0x6e, 0xff, 0xff, 0x46, 0xb0, 0x8b, 0x46, 0xb0, 0x3d
    db 0x0a, 0x00, 0x7d, 0x03, 0xe9, 0xb1, 0xfe, 0xff, 0x46, 0xb2, 0x8b, 0x46, 0xb2, 0x3d, 0x02, 0x00
    db 0x7d, 0x03, 0xe9, 0x9e, 0xfe, 0x83, 0xbe, 0x6e, 0xff, 0x00, 0x75, 0x01, 0xc3, 0xb8, 0xe2, 0x90
    db 0x50, 0xff, 0xb6, 0x6e, 0xff, 0xb8, 0x01, 0x00, 0x50, 0x50, 0x50, 0xb8, 0xee, 0x07, 0x50, 0xe8
    db 0xfa, 0xec, 0x83, 0xc4, 0x0c, 0x89, 0x46, 0xb4, 0xa1, 0x4e, 0x90, 0x89, 0x46, 0xfe, 0x83, 0x7e
    db 0xb4, 0x02, 0x74, 0x05, 0x3d, 0xff, 0xff, 0x75, 0x17, 0xb8, 0xc6, 0x00, 0x50, 0xb8, 0x09, 0x01
    db 0x50, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8, 0x54, 0x9b, 0x83, 0xc4, 0x08, 0xc3
    db 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x8b, 0x87, 0x70, 0xff, 0xb9, 0x00, 0x01
    db 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xb2, 0x89, 0x56, 0xb0, 0xb8, 0x10, 0x00, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0xb8, 0x96, 0x00, 0x50, 0xb8, 0x3f, 0x00, 0x50, 0xff, 0x76, 0xb4, 0x8b, 0x46, 0xb4, 0x05
    db 0xee, 0x07, 0x50, 0xe8, 0xf6, 0xe9, 0x83, 0xc4, 0x0c, 0x83, 0x7e, 0xb4, 0x00, 0x74, 0x03, 0xe9
    db 0xa9, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00
    db 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x34, 0x5c, 0x8d, 0x46, 0xb6, 0x50, 0xb8, 0x01
    db 0x00, 0x50, 0xe8, 0x3d, 0x68, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xd8, 0x00, 0x74, 0x6b, 0x8b, 0x46
    db 0xd8, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xac, 0x89, 0x56, 0xae, 0xb8, 0x06, 0x00
    db 0xf7, 0xea, 0x8b, 0xd8, 0x80, 0xbf, 0x24, 0x06, 0x01, 0x75, 0x10, 0xe8, 0x89, 0x80, 0xa3, 0xe2
    db 0x95, 0x3d, 0xff, 0xff, 0x75, 0x05, 0xc7, 0x46, 0xae, 0xff, 0xff, 0xb8, 0xc6, 0x00, 0x50, 0xb8
    db 0x09, 0x01, 0x50, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8, 0x92, 0x9a, 0x83, 0xc4
    db 0x08, 0x83, 0x7e, 0xae, 0xff, 0x74, 0x22, 0xff, 0x76, 0xb0, 0xff, 0x76, 0xb2, 0xff, 0x76, 0x04
    db 0xe8, 0xca, 0x7b, 0x83, 0xc4, 0x06, 0xff, 0x36, 0xe2, 0x95, 0xff, 0x76, 0xac, 0xff, 0x76, 0xae
    db 0xff, 0x76, 0x04, 0xe8, 0xf8, 0xf4, 0x83, 0xc4, 0x08, 0xeb, 0x70, 0x83, 0x7e, 0xb4, 0x01, 0x75
    db 0x6a, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8
    db 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b
    db 0xd8, 0x8a, 0x87, 0x3b, 0x5c, 0x2a, 0xe4, 0xa9, 0x02, 0x00, 0x74, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0xe8, 0x33, 0x69, 0x59, 0xeb, 0x35, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00
    db 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x05, 0x34, 0x5c, 0x50, 0xe8, 0x09, 0xe7, 0x59, 0xff, 0x76, 0xb0, 0xff
    db 0x76, 0xb2, 0xff, 0x76, 0x04, 0xe8, 0x06, 0x7b, 0x83, 0xc4, 0x06, 0xb8, 0xc6, 0x00, 0x50, 0xb8
    db 0x09, 0x01, 0x50, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8, 0xe2, 0x99, 0x83, 0xc4
    db 0x08, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x35, 0x7c, 0x83, 0xc4, 0x04, 0xe8, 0xfb
    db 0xe7, 0xc3, 0xb8, 0x86, 0xff, 0xe8, 0xf9, 0xa4, 0xc7, 0x06, 0x1e, 0x91, 0x00, 0x00, 0xff, 0x76
    db 0x04, 0xe8, 0xb7, 0xd0, 0x59, 0x89, 0x46, 0x86, 0x8b, 0x5e, 0x04, 0x80, 0x7f, 0x35, 0x02, 0x75
    db 0x3e, 0xff, 0x36, 0xc8, 0x69, 0xe8, 0x77, 0x68, 0x59, 0x89, 0x46, 0xfa, 0xff, 0x76, 0xfa, 0xe8
    db 0x49, 0x7b, 0x59, 0x85, 0xc0, 0x74, 0xea, 0xc7, 0x06, 0x14, 0x91, 0x01, 0x00, 0xb8, 0x01, 0x00
    db 0x50, 0xe8, 0x92, 0x68, 0x59, 0x8b, 0x5e, 0x04, 0x8a, 0x47, 0x34, 0x2a, 0xe4, 0x50, 0xff, 0x76
    db 0xfa, 0xff, 0x36, 0xfe, 0x91, 0xe8, 0x85, 0xc5, 0x83, 0xc4, 0x06, 0xb8, 0x00, 0x00, 0xc3, 0xc7
    db 0x46, 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0xc7, 0x47, 0xe4
    db 0x01, 0x00, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x05, 0x00, 0x7e, 0xe7, 0xc7, 0x46, 0xee
    db 0xff, 0xff

@..local.l141:
    mov word [data_9126], 1          ; 0x4f8c
    mov ax, 0                        ; 0x4f92
    push ax                          ; 0x4f95
    call api_idx_000a_2              ; 0x4f96
    pop cx                           ; 0x4f99
    mov word [data_9126], 0          ; 0x4f9a
    lea ax, word [bp - 0x001c]       ; 0x4fa0
    push ax                          ; 0x4fa3
    mov ax, 0                        ; 0x4fa4
    push ax                          ; 0x4fa7
    mov ax, 0xffff                   ; 0x4fa8
    push ax                          ; 0x4fab
    mov ax, 1                        ; 0x4fac
    push ax                          ; 0x4faf
    mov ax, 5                        ; 0x4fb0
    push ax                          ; 0x4fb3
    mov ax, data_0002                ; 0x4fb4
    push ax                          ; 0x4fb7
    mov ax, 0xc                      ; 0x4fb8
    push ax                          ; 0x4fbb
    mov ax, 0x34                     ; 0x4fbc
    push ax                          ; 0x4fbf
    mov ax, 8                        ; 0x4fc0
    push ax                          ; 0x4fc3
    mov ax, 0x9c                     ; 0x4fc4
    push ax                          ; 0x4fc7
    mov ax, 0x52                     ; 0x4fc8
    push ax                          ; 0x4fcb
    mov ax, 0                        ; 0x4fcc
    push ax                          ; 0x4fcf
    mov ax, 0x1450                   ; 0x4fd0
    push ax                          ; 0x4fd3
    call math_loc_8441               ; 0x4fd4
    add sp, byte 0x1a                ; 0x4fd7
    mov word [bp - 0x0008], ax       ; 0x4fda
    lea ax, word [bp - 0x0078]       ; 0x4fdd
    push ax                          ; 0x4fe0
    mov ax, word [bp - 0x0008]       ; 0x4fe1
    add ax, 0x1450                   ; 0x4fe4
    push ax                          ; 0x4fe7
    db 0xe8, 0x50, 0x65 ; call ds_dispatch_b53b
    add sp, byte 4                   ; 0x4feb
    mov ax, 0x1a                     ; 0x4fee
    push ax                          ; 0x4ff1
    mov ax, data_0002                ; 0x4ff2
    push ax                          ; 0x4ff5
    mov ax, 0xc                      ; 0x4ff6
    push ax                          ; 0x4ff9
    mov ax, 0x34                     ; 0x4ffa
    push ax                          ; 0x4ffd
    mov ax, 8                        ; 0x4ffe
    push ax                          ; 0x5001
    mov ax, 0x9c                     ; 0x5002
    push ax                          ; 0x5005
    mov ax, 0x52                     ; 0x5006
    push ax                          ; 0x5009
    push word [data_9052]            ; 0x500a
    lea ax, word [bp - 0x0078]       ; 0x500e
    push ax                          ; 0x5011
    call api_idx_0008_3              ; 0x5012
    add sp, byte 0x12                ; 0x5015
    mov ax, word [bp - 0x0008]       ; 0x5018
    jmp near loc_51c6                ; 0x501b
    cmp word [data_0e32], byte 0     ; 0x501e
    jne short loc_502d               ; 0x5023
    mov ax, 1                        ; 0x5025
    push ax                          ; 0x5028
    call api_idx_000a_2              ; 0x5029
    pop cx                           ; 0x502c
    db 0xe8, 0x81, 0x7e ; call ds_dispatch_ceb1
    mov word [bp - 0x0006], ax       ; 0x5030
    cmp ax, strict word 0xffff       ; 0x5033
    je short loc_5069                ; 0x5036
    push ax                          ; 0x5038
    db 0xe8, 0x49, 0x7a ; call ds_dispatch_ca85
    pop cx                           ; 0x503c
    test ax, ax                      ; 0x503d
    db 0x74, 0x28 ; je short loc_5069
    mov word [data_9114], 1          ; 0x5041
    mov ax, 1                        ; 0x5047
    push ax                          ; 0x504a
    db 0xe8, 0x92, 0x67 ; call ds_dispatch_b7e0
    pop cx                           ; 0x504e
    mov bx, word [bp + 0x4]          ; 0x504f
    mov al, byte [bx + 0x34]         ; 0x5052
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x5057
    push word [bp - 0x0006]          ; 0x5058
    push word [data_91fe]            ; 0x505b
    call api_idx_00b8                ; 0x505f
    add sp, byte 6                   ; 0x5062
    mov ax, 0                        ; 0x5065
    ret                              ; 0x5068
    jmp near @..local.l142           ; 0x5069
    cmp word [data_0e32], byte 0     ; 0x506c
    jne short loc_507b               ; 0x5071
    mov ax, 1                        ; 0x5073
    push ax                          ; 0x5076
    call api_idx_000a_2              ; 0x5077
    pop cx                           ; 0x507a
    db 0xe8, 0x33, 0x7e ; call ds_dispatch_ceb1
    mov word [bp - 0x0006], ax       ; 0x507e
    cmp ax, strict word 0xffff       ; 0x5081
    jne short loc_5089               ; 0x5084
    jmp near loc_5120                ; 0x5086
    push ax                          ; 0x5089
    db 0xe8, 0xf8, 0x79 ; call ds_dispatch_ca85
    pop cx                           ; 0x508d
    test ax, ax                      ; 0x508e
    jne short loc_5095               ; 0x5090
    db 0xe9, 0x8b, 0x00 ; jmp near loc_5120
    mov ax, 0                        ; 0x5095
    push ax                          ; 0x5098
    call api_idx_000a_2              ; 0x5099
    pop cx                           ; 0x509c
    mov bx, word [bp + 0x4]          ; 0x509d
    mov al, byte [bx + 0x34]         ; 0x50a0
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x50a5
    push word [bp - 0x007a]          ; 0x50a6
    mov ax, 1                        ; 0x50a9
    push ax                          ; 0x50ac
    push ax                          ; 0x50ad
    mov ax, 0x145a                   ; 0x50ae
    push ax                          ; 0x50b1
    push word [bp - 0x0006]          ; 0x50b2
    call api_idx_0084                ; 0x50b5
    add sp, byte 0x0c                ; 0x50b8
    mov word [bp - 0x0002], ax       ; 0x50bb
    cmp word [bp - 0x0002], byte 0   ; 0x50be
    jne short loc_50f2               ; 0x50c2
    mov word [data_9114], 1          ; 0x50c4
    lea ax, word [bp - 0x0078]       ; 0x50ca
    push ax                          ; 0x50cd
    mov ax, 0x146d                   ; 0x50ce
    push ax                          ; 0x50d1
    db 0xe8, 0x66, 0x64 ; call ds_dispatch_b53b
    add sp, byte 4                   ; 0x50d5
    mov ax, 1                        ; 0x50d8
    push ax                          ; 0x50db
    mov ax, data_0002                ; 0x50dc
    push ax                          ; 0x50df
    push word [data_91d4]            ; 0x50e0
    lea ax, word [bp - 0x0078]       ; 0x50e4
    push ax                          ; 0x50e7
    call math_loc_0eb2               ; 0x50e8
    add sp, byte 8                   ; 0x50eb
    mov ax, 0                        ; 0x50ee
    ret                              ; 0x50f1
    cmp word [bp - 0x0002], byte 1   ; 0x50f2
    jne short loc_5120               ; 0x50f6
    mov word [data_9114], 1          ; 0x50f8
    mov ax, 1                        ; 0x50fe
    push ax                          ; 0x5101
    db 0xe8, 0xdb, 0x66 ; call ds_dispatch_b7e0
    pop cx                           ; 0x5105
    mov bx, word [bp + 0x4]          ; 0x5106
    mov al, byte [bx + 0x34]         ; 0x5109
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x510e
    push word [bp - 0x0006]          ; 0x510f
    push word [data_91fe]            ; 0x5112
    call api_idx_00b8                ; 0x5116
    add sp, byte 6                   ; 0x5119
    mov ax, 0                        ; 0x511c
    ret                              ; 0x511f
    jmp near @..local.l142           ; 0x5120
    cmp word [data_0e32], byte 0     ; 0x5123
    jne short loc_5132               ; 0x5128
    mov ax, 1                        ; 0x512a
    push ax                          ; 0x512d
    call api_idx_000a_2              ; 0x512e
    pop cx                           ; 0x5131
    db 0xe8, 0x7c, 0x7d ; call ds_dispatch_ceb1
    mov word [bp - 0x0006], ax       ; 0x5135
    cmp ax, strict word 0xffff       ; 0x5138
    jne short loc_5140               ; 0x513b
    jmp near loc_51b6                ; 0x513d
    push ax                          ; 0x5140
    db 0xe8, 0x41, 0x79 ; call ds_dispatch_ca85
    pop cx                           ; 0x5144
    test ax, ax                      ; 0x5145
    je short loc_51b6                ; 0x5147
    mov word [data_95e0], 0          ; 0x5149
    mov bx, word [bp + 0x4]          ; 0x514f
    mov al, byte [bx + 0x34]         ; 0x5152
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [data_95de], ax         ; 0x5157
    cmp word [bp - 0x0008], byte 2   ; 0x515a
    jne short loc_5169               ; 0x515e
    push word [bp - 0x0006]          ; 0x5160
    call loc_4ad8                    ; 0x5163
    pop cx                           ; 0x5166
    jmp short loc_5176               ; 0x5167
    cmp word [bp - 0x0008], byte 3   ; 0x5169
    jne short loc_5176               ; 0x516d
    push word [bp - 0x0006]          ; 0x516f
    call api_idx_0092                ; 0x5172
    pop cx                           ; 0x5175
    cmp word [data_95e0], byte 1     ; 0x5176
    jne short loc_5187               ; 0x517b
    mov word [data_9114], 1          ; 0x517d
    mov ax, 0                        ; 0x5183
    ret                              ; 0x5186
    cmp word [data_95e0], byte 0xff  ; 0x5187
    jne short loc_51b6               ; 0x518c
    mov word [data_9114], 1          ; 0x518e
    mov ax, 1                        ; 0x5194
    push ax                          ; 0x5197
    db 0xe8, 0x45, 0x66 ; call ds_dispatch_b7e0
    pop cx                           ; 0x519b
    mov bx, word [bp + 0x4]          ; 0x519c
    mov al, byte [bx + 0x34]         ; 0x519f
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x51a4
    push word [bp - 0x0006]          ; 0x51a5
    push word [data_91fe]            ; 0x51a8
    call api_idx_00b8                ; 0x51ac
    add sp, byte 6                   ; 0x51af
    mov ax, 0                        ; 0x51b2
    ret                              ; 0x51b5
    jmp short @..local.l142          ; 0x51b6
    mov ax, 0xffff                   ; 0x51b8
    ret                              ; 0x51bb
    mov bl, 0xa0                     ; 0x51bc
    mov al, byte [gs:data_a16a]      ; 0x51be
    db 0x6a, 0xa1 ; push 0xffa1
    db 0xff, 0xa1
    cmp ax, strict word 5            ; 0x51c6
    jae short @..local.l142          ; 0x51c9
    xchg bx, ax                      ; 0x51cb
    shl bx, 1                        ; 0x51cc
    jmp [cs:bx - 0x5dfd]             ; 0x51ce
@..local.l142:
    jmp near @..local.l141           ; 0x51d3
    db 0xc3
api_idx_004c:
    mov ax, 0xffb4                   ; 0x51d7
    call ds_dispatch_f40b            ; 0x51da
    mov ax, 0                        ; 0x51dd
    push ax                          ; 0x51e0
    push word [bp + 0x6]             ; 0x51e1
    lea ax, word [bp - 0x004c]       ; 0x51e4
    push ax                          ; 0x51e7
    mov ax, 1                        ; 0x51e8
    push ax                          ; 0x51eb
    call ds_dispatch_b63c            ; 0x51ec
    add sp, byte 8                   ; 0x51ef
    cmp word [bp + 0xa], byte 0xfe   ; 0x51f2
    jne short @..api_idx_004c.l1     ; 0x51f6
    mov al, byte [bp - 0x0030]       ; 0x51f8
    sub ah, ah                       ; 0x51fb
    push ax                          ; 0x51fd
    mov al, byte [bp - 0x002f]       ; 0x51fe
    sub ah, ah                       ; 0x5201
    mov cx, ax                       ; 0x5203
    pop ax                           ; 0x5205
    imul cx                          ; 0x5206
    add ax, word [bp - 0x0032]       ; 0x5208
    mov bx, word [bp + 0x8]          ; 0x520b
    mov byte [bx + 0x6], al          ; 0x520e
    jmp short @..api_idx_004c.l3     ; 0x5211
@..api_idx_004c.l1:
    cmp word [bp + 0xa], byte 0xff   ; 0x5213
    jne short @..api_idx_004c.l2     ; 0x5217
    push word [bp - 0x0030]          ; 0x5219
    push word [bp - 0x0032]          ; 0x521c
    call ds_dispatch_d0be            ; 0x521f
    add sp, byte 4                   ; 0x5222
    mov bx, word [bp + 0x8]          ; 0x5225
    mov byte [bx + 0x6], al          ; 0x5228
    jmp short @..api_idx_004c.l3     ; 0x522b
@..api_idx_004c.l2:
    mov al, byte [bp + 0xa]          ; 0x522d
    mov bx, word [bp + 0x8]          ; 0x5230
    mov byte [bx + 0x6], al          ; 0x5233
@..api_idx_004c.l3:
    mov ax, word [bp + 0x6]          ; 0x5236
    mov bx, word [bp + 0x8]          ; 0x5239
    mov word [bx], ax                ; 0x523c
    mov al, byte [bp - 0x0014]       ; 0x523e
    mov bx, word [bp + 0x8]          ; 0x5241
    mov byte [bx + 0x4], al          ; 0x5244
    mov al, byte [bp - 0x0013]       ; 0x5247
    mov bx, word [bp + 0x8]          ; 0x524a
    mov byte [bx + 0x5], al          ; 0x524d
    mov ax, word [bp - 0x0028]       ; 0x5250
    mov bx, word [bp + 0x8]          ; 0x5253
    mov word [bx + 0x2], ax          ; 0x5256
    mov al, byte [bp - 0x0024]       ; 0x5259
    mov bx, word [bp + 0x8]          ; 0x525c
    mov byte [bx + 0x8], al          ; 0x525f
    mov al, byte [bp - 0x0023]       ; 0x5262
    mov bx, word [bp + 0x8]          ; 0x5265
    mov byte [bx + 0x9], al          ; 0x5268
    mov al, byte [bp - 0x0010]       ; 0x526b
    mov bx, word [bp + 0x8]          ; 0x526e
    mov byte [bx + 0xa], al          ; 0x5271
    mov al, byte [bp - 0x000c]       ; 0x5274
    mov bx, word [bp + 0x8]          ; 0x5277
    mov byte [bx + 0xb], al          ; 0x527a
    mov ax, 0                        ; 0x527d
    cmp word [bp + 0xc], byte 0      ; 0x5280
    je short @..api_idx_004c.l4      ; 0x5284
    mov ax, 0x80                     ; 0x5286
@..api_idx_004c.l4:
    mov bx, word [bp + 0x8]          ; 0x5289
    mov byte [bx + 0x7], al          ; 0x528c
    mov al, byte [bp - 0x0015]       ; 0x528f
    sub ah, ah                       ; 0x5292
    test ax, 8                       ; 0x5294
    je short @..api_idx_004c.l5      ; 0x5297
    mov bx, word [bp + 0x8]          ; 0x5299
    or byte [bx + 0x7], 4            ; 0x529c
@..api_idx_004c.l5:
    mov al, byte [bp - 0x0015]       ; 0x52a0
    sub ah, ah                       ; 0x52a3
    test ax, 4                       ; 0x52a5
    je short @..api_idx_004c.l6      ; 0x52a8
    mov bx, word [bp + 0x8]          ; 0x52aa
    or byte [bx + 0x7], 8            ; 0x52ad
@..api_idx_004c.l6:
    mov al, byte [bp - 0x0015]       ; 0x52b1
    sub ah, ah                       ; 0x52b4
    test ax, 0x10                    ; 0x52b6
    je short @..api_idx_004c.l7      ; 0x52b9
    mov bx, word [bp + 0x8]          ; 0x52bb
    or byte [bx + 0x7], 0x10         ; 0x52be
@..api_idx_004c.l7:
    mov al, byte [bp - 0x0015]       ; 0x52c2
    sub ah, ah                       ; 0x52c5
    test ax, 0x20                    ; 0x52c7
    je short @..api_idx_004c.l8      ; 0x52ca
    mov bx, word [bp + 0x8]          ; 0x52cc
    or byte [bx + 0x7], 0x20         ; 0x52cf
@..api_idx_004c.l8:
    mov al, byte [bp - 0x0015]       ; 0x52d3
    sub ah, ah                       ; 0x52d6
    test ax, data_0002               ; 0x52d8
    je short @..api_idx_004c.l9      ; 0x52db
    mov bx, word [bp + 0x8]          ; 0x52dd
    or byte [bx + 0x7], 0x40         ; 0x52e0
@..api_idx_004c.l9:
    push word [bp + 0x4]             ; 0x52e4
    call ds_dispatch_c58f            ; 0x52e7
    pop cx                           ; 0x52ea
    ret                              ; 0x52eb
api_idx_0004_9:
    mov ax, 0xfffc                   ; 0x52ec
    call ds_dispatch_f40b            ; 0x52ef
    mov word [bp - 0x0002], 0        ; 0x52f2
@..api_idx_0004_9.l1:
    mov word [bp - 0x0004], 0        ; 0x52f7
@..api_idx_0004_9.l2:
    mov ax, 0x248                    ; 0x52fc
    imul word [bp + 0x4]             ; 0x52ff
    push ax                          ; 0x5302
    mov ax, 0x78                     ; 0x5303
    imul word [bp - 0x0002]          ; 0x5306
    mov cx, ax                       ; 0x5309
    pop ax                           ; 0x530b
    add ax, cx                       ; 0x530c
    push ax                          ; 0x530e
    mov ax, 0xc                      ; 0x530f
    imul word [bp - 0x0004]          ; 0x5312
    mov cx, ax                       ; 0x5315
    pop ax                           ; 0x5317
    add ax, cx                       ; 0x5318
    mov bx, ax                       ; 0x531a
    cmp word [bx + 0x5c34], byte 0   ; 0x531c
    jne short @..local.l143          ; 0x5321
    mov ax, word [bp - 0x0002]       ; 0x5323
    xchg al, ah                      ; 0x5326
    sub al, al                       ; 0x5328
    add ax, word [bp - 0x0004]       ; 0x532a
    ret                              ; 0x532d
@..local.l143:
    inc word [bp - 0x0004]           ; 0x532e
    mov ax, word [bp - 0x0004]       ; 0x5331
    cmp ax, strict word 0xa          ; 0x5334
    jl short @..api_idx_0004_9.l2    ; 0x5337
    inc word [bp - 0x0002]           ; 0x5339
    mov ax, word [bp - 0x0002]       ; 0x533c
    cmp ax, strict word 2            ; 0x533f
    jl short @..api_idx_0004_9.l1    ; 0x5342
    mov ax, 0xffff                   ; 0x5344
    ret                              ; 0x5347
api_idx_0040:
    mov ax, 0xffc0                   ; 0x5348
    call ds_dispatch_f40b            ; 0x534b
    lea ax, word [bp - 0x0034]       ; 0x534e
    push ax                          ; 0x5351
    mov ax, 0x13ec                   ; 0x5352
    push ax                          ; 0x5355
    call ds_dispatch_b53b            ; 0x5356
    add sp, byte 4                   ; 0x5359
@..api_idx_0040.l1:
    lea ax, word [bp - 0x0034]       ; 0x535c
    push ax                          ; 0x535f
    push word [data_95e4]            ; 0x5360
    mov ax, 1                        ; 0x5364
    push ax                          ; 0x5367
    push ax                          ; 0x5368
    mov ax, 0                        ; 0x5369
    push ax                          ; 0x536c
    mov ax, 0x13ec                   ; 0x536d
    push ax                          ; 0x5370
    call api_idx_0038                ; 0x5371
    add sp, byte 0x0c                ; 0x5374
    mov word [bp - 0x0006], ax       ; 0x5377
    mov ax, word [data_904e]         ; 0x537a
    mov word [bp - 0x0002], ax       ; 0x537d
    cmp word [bp - 0x0002], byte 0xff ; 0x5380
    je short @..api_idx_0040.l1      ; 0x5384
    mov ax, 0x10                     ; 0x5386
    push ax                          ; 0x5389
    mov ax, 0xc                      ; 0x538a
    push ax                          ; 0x538d
    mov ax, 0x96                     ; 0x538e
    push ax                          ; 0x5391
    mov ax, 0x3f                     ; 0x5392
    push ax                          ; 0x5395
    push word [bp - 0x0006]          ; 0x5396
    mov ax, word [bp - 0x0006]       ; 0x5399
    add ax, 0x13ec                   ; 0x539c
    push ax                          ; 0x539f
    call api_idx_0018                ; 0x53a0
    add sp, byte 0x0c                ; 0x53a3
    mov ax, word [bp - 0x0006]       ; 0x53a6
    cmp word [bp - 0x0006], byte 1   ; 0x53a9
    je short @..api_idx_0040.l2      ; 0x53ad
    jmp near @..api_idx_0040.l8      ; 0x53af
@..api_idx_0040.l2:
    cmp word [data_0e32], byte 0     ; 0x53b2
    jne short @..api_idx_0040.l3     ; 0x53b7
    mov ax, 0xc6                     ; 0x53b9
    push ax                          ; 0x53bc
    mov ax, 0x109                    ; 0x53bd
    push ax                          ; 0x53c0
    mov ax, 0x8e                     ; 0x53c1
    push ax                          ; 0x53c4
    mov ax, 0x36                     ; 0x53c5
    push ax                          ; 0x53c8
    call ds_dispatch_e8da            ; 0x53c9
    add sp, byte 8                   ; 0x53cc
@..api_idx_0040.l3:
    call ds_dispatch_ceb1            ; 0x53cf
    mov word [bp - 0x0008], ax       ; 0x53d2
    cmp ax, strict word 0xffff       ; 0x53d5
    je short @..api_idx_0040.l6      ; 0x53d8
    push ax                          ; 0x53da
    call api_idx_0004_9              ; 0x53db
    pop cx                           ; 0x53de
    mov word [bp - 0x0004], ax       ; 0x53df
    cmp ax, strict word 0xffff       ; 0x53e2
    jne short @..api_idx_0040.l4     ; 0x53e5
    mov word [bp - 0x0002], 0xffff   ; 0x53e7
    mov ax, 0                        ; 0x53ec
    push ax                          ; 0x53ef
    call ds_dispatch_b7e0            ; 0x53f0
    pop cx                           ; 0x53f3
    jmp short @..api_idx_0040.l5     ; 0x53f4
@..api_idx_0040.l4:
    mov ax, word [bp - 0x0004]       ; 0x53f6
    mov cx, 0x100                    ; 0x53f9
    cwd                              ; 0x53fc
    idiv cx                          ; 0x53fd
    mov word [bp - 0x000a], ax       ; 0x53ff
    mov word [bp - 0x000c], dx       ; 0x5402
    mov ax, word [bp - 0x0002]       ; 0x5405
    shl ax, 1                        ; 0x5408
    mov bx, ax                       ; 0x540a
    push word [bx - 0x6a1a]          ; 0x540c
    push word [bx - 0x6a4a]          ; 0x5410
    mov ax, 0x248                    ; 0x5414
    imul word [bp - 0x0008]          ; 0x5417
    push ax                          ; 0x541a
    mov ax, 0x78                     ; 0x541b
    imul word [bp - 0x000a]          ; 0x541e
    mov cx, ax                       ; 0x5421
    pop ax                           ; 0x5423
    add ax, cx                       ; 0x5424
    push ax                          ; 0x5426
    mov ax, 0xc                      ; 0x5427
    imul word [bp - 0x000c]          ; 0x542a
    mov cx, ax                       ; 0x542d
    pop ax                           ; 0x542f
    add ax, cx                       ; 0x5430
    add ax, 0x5c34                   ; 0x5432
    push ax                          ; 0x5435
    push word [bx - 0x69f2]          ; 0x5436
    push word [bp - 0x0008]          ; 0x543a
    call api_idx_004c                ; 0x543d
    add sp, byte 0x0a                ; 0x5440
@..api_idx_0040.l5:
    jmp short @..api_idx_0040.l7     ; 0x5443
@..api_idx_0040.l6:
    mov word [bp - 0x0002], 0xffff   ; 0x5445
@..api_idx_0040.l7:
    jmp short @..api_idx_0040.l9     ; 0x544a
@..api_idx_0040.l8:
    cmp word [bp - 0x0006], byte 2   ; 0x544c
    jne short @..api_idx_0040.l9     ; 0x5450
    mov ax, word [bp - 0x0002]       ; 0x5452
    shl ax, 1                        ; 0x5455
    mov bx, ax                       ; 0x5457
    push word [bx - 0x6a1a]          ; 0x5459
    push word [bx - 0x6a4a]          ; 0x545d
    lea ax, word [bp - 0x0040]       ; 0x5461
    push ax                          ; 0x5464
    push word [bx - 0x69f2]          ; 0x5465
    mov ax, 0                        ; 0x5469
    push ax                          ; 0x546c
    call api_idx_004c                ; 0x546d
    add sp, byte 0x0a                ; 0x5470
    lea ax, word [bp - 0x0040]       ; 0x5473
    push ax                          ; 0x5476
    call api_idx_0004_6              ; 0x5477
    pop cx                           ; 0x547a
    call api_idx_0006_3              ; 0x547b
@..api_idx_0040.l9:
    cmp word [bp - 0x0002], byte 0xff ; 0x547e
    je short @..api_idx_0040.l12     ; 0x5482
    dec word [data_95e4]             ; 0x5484
    mov ax, word [bp - 0x0002]       ; 0x5488
    mov word [bp - 0x0004], ax       ; 0x548b
    jmp short @..api_idx_0040.l11    ; 0x548e
@..api_idx_0040.l10:
    mov ax, 0x16                     ; 0x5490
    imul word [bp - 0x0004]          ; 0x5493
    add ax, 0x9414                   ; 0x5496
    push ax                          ; 0x5499
    mov ax, 0x16                     ; 0x549a
    imul word [bp - 0x0004]          ; 0x549d
    add ax, 0x93fe                   ; 0x54a0
    push ax                          ; 0x54a3
    call ds_dispatch_f364            ; 0x54a4
    add sp, byte 4                   ; 0x54a7
    mov ax, word [bp - 0x0004]       ; 0x54aa
    shl ax, 1                        ; 0x54ad
    mov bx, ax                       ; 0x54af
    mov ax, word [bx - 0x69f0]       ; 0x54b1
    mov word [bx - 0x69f2], ax       ; 0x54b5
    mov ax, word [bx - 0x6a48]       ; 0x54b9
    mov word [bx - 0x6a4a], ax       ; 0x54bd
    mov ax, word [bx - 0x6c50]       ; 0x54c1
    mov word [bx - 0x6c52], ax       ; 0x54c5
    mov ax, word [bx - 0x6c28]       ; 0x54c9
    mov word [bx - 0x6c2a], ax       ; 0x54cd
    mov ax, word [bx - 0x69c8]       ; 0x54d1
    mov word [bx - 0x69ca], ax       ; 0x54d5
    mov ax, word [bx - 0x6a18]       ; 0x54d9
    mov word [bx - 0x6a1a], ax       ; 0x54dd
    inc word [bp - 0x0004]           ; 0x54e1
@..api_idx_0040.l11:
    mov ax, word [bp - 0x0004]       ; 0x54e4
    cmp ax, word [data_95e4]         ; 0x54e7
    jl short @..api_idx_0040.l10     ; 0x54eb
@..api_idx_0040.l12:
    cmp word [data_95e4], byte 0     ; 0x54ed
    jle short @..api_idx_0040.l13    ; 0x54f2
    jmp near @..api_idx_0040.l1      ; 0x54f4
@..api_idx_0040.l13:
    mov ax, 0xc6                     ; 0x54f7
    push ax                          ; 0x54fa
    mov ax, 0x109                    ; 0x54fb
    push ax                          ; 0x54fe
    mov ax, 0x8e                     ; 0x54ff
    push ax                          ; 0x5502
    mov ax, 0x36                     ; 0x5503
    push ax                          ; 0x5506
    call ds_dispatch_e8da            ; 0x5507
    add sp, byte 8                   ; 0x550a
    ret                              ; 0x550d
api_idx_0006_4:
    mov ax, 0xfffa                   ; 0x550e
    call ds_dispatch_f40b            ; 0x5511
    mov ax, word [data_8d12]         ; 0x5514
    shl ax, 1                        ; 0x5517
    mov si, ax                       ; 0x5519
    mov bx, word [data_0e12]         ; 0x551b
    mov ax, word [bx + si + 0x3c0]   ; 0x551f
    mov word [bp - 0x0004], ax       ; 0x5523
    cmp word [bx + si + 0x1e0], byte 0 ; 0x5526
    jle short @..api_idx_0006_4.l1   ; 0x552b
    mov ax, 0                        ; 0x552d
    push ax                          ; 0x5530
    push word [bx + si + 0x1e0]      ; 0x5531
    call loc_0d87                    ; 0x5535
    add sp, byte 4                   ; 0x5538
@..api_idx_0006_4.l1:
    cmp word [data_830c], byte 0x0e  ; 0x553b
    je short @..api_idx_0006_4.l2    ; 0x5540
    jmp near @..api_idx_0006_4.l7    ; 0x5542
@..api_idx_0006_4.l2:
    cmp word [data_8f3e], byte 8     ; 0x5545
    je short @..api_idx_0006_4.l3    ; 0x554a
    jmp near @..api_idx_0006_4.l7    ; 0x554c
@..api_idx_0006_4.l3:
    cmp word [data_8f42], byte 7     ; 0x554f
    jne short @..api_idx_0006_4.l7   ; 0x5554
    cmp word [data_8f40], byte 2     ; 0x5556
    jne short @..api_idx_0006_4.l7   ; 0x555b
    mov ax, 1                        ; 0x555d
    push ax                          ; 0x5560
    call api_idx_000a_2              ; 0x5561
    pop cx                           ; 0x5564
    mov word [bp - 0x0002], 0        ; 0x5565
    jmp short @..api_idx_0006_4.l6   ; 0x556a
@..api_idx_0006_4.l4:
    mov ax, 0x248                    ; 0x556c
    imul word [bp - 0x0002]          ; 0x556f
    mov bx, ax                       ; 0x5572
    cmp byte [bx + 0x5e2f], 3        ; 0x5574
    jae short @..api_idx_0006_4.l5   ; 0x5579
    mov ax, 0xc8                     ; 0x557b
    push ax                          ; 0x557e
    call ds_dispatch_b7a9            ; 0x557f
    pop cx                           ; 0x5582
    push ax                          ; 0x5583
    mov ax, 0x248                    ; 0x5584
    imul word [bp - 0x0002]          ; 0x5587
    mov bx, ax                       ; 0x558a
    mov al, byte [bx + 0x5da1]       ; 0x558c
    sub ah, ah                       ; 0x5590
    mov cx, ax                       ; 0x5592
    pop ax                           ; 0x5594
    cmp ax, cx                       ; 0x5595
    jle short @..api_idx_0006_4.l5   ; 0x5597
    mov ax, 0x32                     ; 0x5599
    push ax                          ; 0x559c
    mov ax, 0xa                      ; 0x559d
    push ax                          ; 0x55a0
    push ax                          ; 0x55a1
    mov ax, 8                        ; 0x55a2
    push ax                          ; 0x55a5
    mov ax, 5                        ; 0x55a6
    push ax                          ; 0x55a9
    mov ax, 0x149b                   ; 0x55aa
    push ax                          ; 0x55ad
    push word [bp - 0x0002]          ; 0x55ae
    call api_idx_0056                ; 0x55b1
    add sp, byte 0x0e                ; 0x55b4
@..api_idx_0006_4.l5:
    inc word [bp - 0x0002]           ; 0x55b7
@..api_idx_0006_4.l6:
    mov ax, word [bp - 0x0002]       ; 0x55ba
    cmp ax, word [data_69c8]         ; 0x55bd
    jl short @..api_idx_0006_4.l4    ; 0x55c1
@..api_idx_0006_4.l7:
    mov ax, 8                        ; 0x55c3
    push ax                          ; 0x55c6
    mov ax, 0                        ; 0x55c7
    push ax                          ; 0x55ca
    push word [bp - 0x0004]          ; 0x55cb
    call ds_dispatch_ed3a            ; 0x55ce
    add sp, byte 6                   ; 0x55d1
    mov word [bp - 0x0006], ax       ; 0x55d4
    mov ax, 0                        ; 0x55d7
    push ax                          ; 0x55da
    push word [bp - 0x0006]          ; 0x55db
    mov ax, word [data_830c]         ; 0x55de
    mov cx, 4                        ; 0x55e1
    shl ax, cl                       ; 0x55e4
    add ax, 0x8d14                   ; 0x55e6
    push ax                          ; 0x55e9
    call ds_dispatch_ec41            ; 0x55ea
    add sp, byte 6                   ; 0x55ed
    mov ax, 1                        ; 0x55f0
    push ax                          ; 0x55f3
    mov ax, 0xb                      ; 0x55f4
    push ax                          ; 0x55f7
    push word [bp - 0x0004]          ; 0x55f8
    call ds_dispatch_ed3a            ; 0x55fb
    add sp, byte 6                   ; 0x55fe
    cmp ax, strict word 1            ; 0x5601
    jne short @..api_idx_0006_4.l8   ; 0x5604
    mov ax, 0                        ; 0x5606
    push ax                          ; 0x5609
    push word [bp - 0x0006]          ; 0x560a
    mov ax, word [data_830c]         ; 0x560d
    mov cx, 4                        ; 0x5610
    shl ax, cl                       ; 0x5613
    add ax, 0x5642                   ; 0x5615
    push ax                          ; 0x5618
    call ds_dispatch_ec41            ; 0x5619
    add sp, byte 6                   ; 0x561c
@..api_idx_0006_4.l8:
    mov ax, data_0002                ; 0x561f
    push ax                          ; 0x5622
    mov ax, 9                        ; 0x5623
    push ax                          ; 0x5626
    push word [bp - 0x0004]          ; 0x5627
    call ds_dispatch_ed3a            ; 0x562a
    add sp, byte 6                   ; 0x562d
    mov word [bp - 0x0006], ax       ; 0x5630
    cmp ax, strict word 0            ; 0x5633
    jle short @..api_idx_0006_4.l9   ; 0x5636
    mov ax, 1                        ; 0x5638
    push ax                          ; 0x563b
    mov bx, word [data_0e12]         ; 0x563c
    mov si, word [data_8d12]         ; 0x5640
    mov al, byte [bx + si + 0x960]   ; 0x5644
    sub ah, ah                       ; 0x5648
    push ax                          ; 0x564a
    mov ax, word [data_830c]         ; 0x564b
    mov cx, 4                        ; 0x564e
    shl ax, cl                       ; 0x5651
    add ax, 0x8d14                   ; 0x5653
    push ax                          ; 0x5656
    call ds_dispatch_ec41            ; 0x5657
    add sp, byte 6                   ; 0x565a
    cmp word [bp - 0x0006], byte 1   ; 0x565d
    jle short @..api_idx_0006_4.l9   ; 0x5661
    mov ax, 1                        ; 0x5663
    push ax                          ; 0x5666
    mov bx, word [data_0e12]         ; 0x5667
    mov si, word [data_8d12]         ; 0x566b
    mov al, byte [bx + si + 0x960]   ; 0x566f
    sub ah, ah                       ; 0x5673
    push ax                          ; 0x5675
    mov ax, word [data_830c]         ; 0x5676
    mov cx, 4                        ; 0x5679
    shl ax, cl                       ; 0x567c
    add ax, 0x5642                   ; 0x567e
    push ax                          ; 0x5681
    call ds_dispatch_ec41            ; 0x5682
    add sp, byte 6                   ; 0x5685
@..api_idx_0006_4.l9:
    ret                              ; 0x5688
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x5689
    call ds_dispatch_f40b            ; 0x568c
@..api_idx_0002_3.l1:
    mov ax, 0x2f                     ; 0x568f
    push ax                          ; 0x5692
    push word [bp + 0x4]             ; 0x5693
    call ds_dispatch_ee4a            ; 0x5696
    add sp, byte 4                   ; 0x5699
    mov word [bp - 0x0002], ax       ; 0x569c
    cmp ax, strict word 0xffff       ; 0x569f
    je short @..api_idx_0002_3.l2    ; 0x56a2
    mov bx, word [bp + 0x4]          ; 0x56a4
    mov si, ax                       ; 0x56a7
    mov byte [bx + si], 0x20         ; 0x56a9
    jmp short @..api_idx_0002_3.l1   ; 0x56ac
@..api_idx_0002_3.l2:
    ret                              ; 0x56ae
math_loc_56af:
    mov ax, 0                        ; 0x56af
    call ds_dispatch_f40b            ; 0x56b2
    cmp word [bp + 0x4], strict word 0x190 ; 0x56b5
    jl short @..math_loc_56af.l1     ; 0x56ba
    cmp word [bp + 0x4], strict word 0x19b ; 0x56bc
    jge short @..math_loc_56af.l1    ; 0x56c1
    mov ax, 1                        ; 0x56c3
    jmp short @..math_loc_56af.l2    ; 0x56c6
@..math_loc_56af.l1:
    mov ax, 0                        ; 0x56c8
@..math_loc_56af.l2:
    ret                              ; 0x56cb
api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x56cc
    call ds_dispatch_f40b            ; 0x56cf
    mov al, byte [bp + 0x4]          ; 0x56d2
    push ax                          ; 0x56d5
    mov ax, 6                        ; 0x56d6
    imul word [bp + 0x8]             ; 0x56d9
    mov bx, ax                       ; 0x56dc
    pop ax                           ; 0x56de
    mov byte [bx - 0x7b5a], al       ; 0x56df
    mov byte [bx - 0x7b59], 0        ; 0x56e3
    mov ax, 1                        ; 0x56e8
    push ax                          ; 0x56eb
    push word [bp + 0x8]             ; 0x56ec
    mov ax, 0x26                     ; 0x56ef
    imul word [bp + 0x4]             ; 0x56f2
    add ax, 0x8502                   ; 0x56f5
    push ax                          ; 0x56f8
    call ds_dispatch_ec41            ; 0x56f9
    add sp, byte 6                   ; 0x56fc
    mov ax, 1                        ; 0x56ff
    push ax                          ; 0x5702
    push word [bp + 0x8]             ; 0x5703
    mov ax, 0x26                     ; 0x5706
    imul word [bp + 0x4]             ; 0x5709
    add ax, 0x850a                   ; 0x570c
    push ax                          ; 0x570f
    call ds_dispatch_ec41            ; 0x5710
    add sp, byte 6                   ; 0x5713
    mov word [bp - 0x0002], 0        ; 0x5716
@..api_idx_0002_4.l1:
    mov ax, 0                        ; 0x571b
    push ax                          ; 0x571e
    push word [bp + 0x8]             ; 0x571f
    mov ax, 0x26                     ; 0x5722
    imul word [bp - 0x0002]          ; 0x5725
    add ax, 0x8504                   ; 0x5728
    push ax                          ; 0x572b
    call ds_dispatch_ec41            ; 0x572c
    add sp, byte 6                   ; 0x572f
    inc word [bp - 0x0002]           ; 0x5732
    mov ax, word [bp - 0x0002]       ; 0x5735
    cmp ax, strict word 0x16         ; 0x5738
    jl short @..api_idx_0002_4.l1    ; 0x573b
    mov ax, 1                        ; 0x573d
    push ax                          ; 0x5740
    push word [bp + 0x8]             ; 0x5741
    mov ax, 0x26                     ; 0x5744
    imul word [bp + 0x4]             ; 0x5747
    add ax, 0x8504                   ; 0x574a
    push ax                          ; 0x574d
    call ds_dispatch_ec41            ; 0x574e
    add sp, byte 6                   ; 0x5751
    cmp word [bp + 0x6], byte 0xff   ; 0x5754
    je short @..api_idx_0002_4.l2    ; 0x5758
    mov ax, 0                        ; 0x575a
    push ax                          ; 0x575d
    push word [bp + 0x8]             ; 0x575e
    mov ax, 0x26                     ; 0x5761
    imul word [bp + 0x6]             ; 0x5764
    add ax, 0x8502                   ; 0x5767
    push ax                          ; 0x576a
    call ds_dispatch_ec41            ; 0x576b
    add sp, byte 6                   ; 0x576e
    mov ax, 1                        ; 0x5771
    push ax                          ; 0x5774
    push word [bp + 0x8]             ; 0x5775
    mov ax, 0x26                     ; 0x5778
    imul word [bp + 0x6]             ; 0x577b
    add ax, 0x8504                   ; 0x577e
    push ax                          ; 0x5781
    call ds_dispatch_ec41            ; 0x5782
    add sp, byte 6                   ; 0x5785
@..api_idx_0002_4.l2:
    ret                              ; 0x5788
loc_5789:
    mov ax, 0xfe5c                   ; 0x5789
    call ds_dispatch_f40b            ; 0x578c
    mov ax, 0                        ; 0x578f
    push ax                          ; 0x5792
    push word [data_84a0]            ; 0x5793
    lea ax, word [bp - 0x003a]       ; 0x5797
    push ax                          ; 0x579a
    mov ax, 7                        ; 0x579b
    push ax                          ; 0x579e
    call ds_dispatch_b63c            ; 0x579f
    add sp, byte 8                   ; 0x57a2
    mov word [data_84a0], 0xffff     ; 0x57a5
    cmp byte [bp - 0x0005], 0        ; 0x57ab
    jbe short @..local.l145          ; 0x57af
    mov ax, 0xc6                     ; 0x57b1
    push ax                          ; 0x57b4
    mov ax, 0x109                    ; 0x57b5
    push ax                          ; 0x57b8
    mov ax, 0x92                     ; 0x57b9
    push ax                          ; 0x57bc
    mov ax, 0x37                     ; 0x57bd
    push ax                          ; 0x57c0
    call ds_dispatch_e8da            ; 0x57c1
    add sp, byte 8                   ; 0x57c4
    lea ax, word [bp - 0x003a]       ; 0x57c7
    push ax                          ; 0x57ca
    call api_idx_007a                ; 0x57cb
    pop cx                           ; 0x57ce
    cmp ax, strict word 0xffff       ; 0x57cf
    jne short @..local.l144          ; 0x57d2
    mov ax, 1                        ; 0x57d4
    push ax                          ; 0x57d7
    call api_idx_000a_2              ; 0x57d8
    pop cx                           ; 0x57db
    ret                              ; 0x57dc
@..local.l144:
    mov ax, 1                        ; 0x57dd
    push ax                          ; 0x57e0
    call api_idx_000a_2              ; 0x57e1
    pop cx                           ; 0x57e4
@..local.l145:
    cmp word [data_905e], byte 0x15  ; 0x57e5
    jne short @..local.l146          ; 0x57ea
    call api_idx_0006_4              ; 0x57ec
@..local.l146:
    mov ax, 1                        ; 0x57ef
    push ax                          ; 0x57f2
    call api_idx_000a_2              ; 0x57f3
    pop cx                           ; 0x57f6
    mov word [bp - 0x0086], 0        ; 0x57f7
    mov word [bp - 0x0088], 0        ; 0x57fd
    mov word [bp - 0x008a], 0        ; 0x5803
    mov word [bp - 0x008c], 0        ; 0x5809
    mov word [data_95e4], 0          ; 0x580f
    cmp word [data_849e], byte 0xff  ; 0x5815
    jne short @..local.l147          ; 0x581a
    jmp near @..local.l152           ; 0x581c
@..local.l147:
    mov ax, 0x26                     ; 0x581f
    imul word [data_849e]            ; 0x5822
    mov bx, ax                       ; 0x5826
    cmp byte [bx - 0x7b00], 0        ; 0x5828
    jle short @..local.l148          ; 0x582d
    jmp near @..local.l152           ; 0x582f
@..local.l148:
    mov word [bp - 0x0002], 0        ; 0x5832
@..local.l149:
    push word [bp - 0x0002]          ; 0x5837
    mov ax, 0x26                     ; 0x583a
    imul word [data_849e]            ; 0x583d
    add ax, 0x8502                   ; 0x5841
    push ax                          ; 0x5844
    call ds_dispatch_ec74            ; 0x5845
    add sp, byte 4                   ; 0x5848
    test ax, ax                      ; 0x584b
    je short @..local.l150           ; 0x584d
    push word [bp - 0x0002]          ; 0x584f
    push word [data_849e]            ; 0x5852
    mov ax, 0x15                     ; 0x5856
    push ax                          ; 0x5859
    call api_idx_0002_4              ; 0x585a
    add sp, byte 6                   ; 0x585d
    mov ax, word [bp - 0x0002]       ; 0x5860
    add ax, 0x190                    ; 0x5863
    mov cx, word [data_95e4]         ; 0x5866
    shl cx, 1                        ; 0x586a
    mov bx, cx                       ; 0x586c
    mov word [bx - 0x69f2], ax       ; 0x586e
    inc word [data_95e4]             ; 0x5872
@..local.l150:
    push word [bp - 0x0002]          ; 0x5876
    mov ax, 0x26                     ; 0x5879
    imul word [data_849e]            ; 0x587c
    add ax, 0x8504                   ; 0x5880
    push ax                          ; 0x5883
    call ds_dispatch_ec74            ; 0x5884
    add sp, byte 4                   ; 0x5887
    test ax, ax                      ; 0x588a
    je short @..local.l151           ; 0x588c
    mov ax, 1                        ; 0x588e
    push ax                          ; 0x5891
    push word [bp - 0x0002]          ; 0x5892
    mov ax, 0x8822                   ; 0x5895
    push ax                          ; 0x5898
    call ds_dispatch_ec41            ; 0x5899
    add sp, byte 6                   ; 0x589c
@..local.l151:
    inc word [bp - 0x0002]           ; 0x589f
    mov ax, word [bp - 0x0002]       ; 0x58a2
    cmp ax, strict word 0xb          ; 0x58a5
    jl short @..local.l149           ; 0x58a8
@..local.l152:
    mov word [bp - 0x0002], 0        ; 0x58aa
@..local.l153:
    mov ax, 0x64                     ; 0x58af
    push ax                          ; 0x58b2
    call ds_dispatch_b7a9            ; 0x58b3
    pop cx                           ; 0x58b6
    push ax                          ; 0x58b7
    mov ax, 6                        ; 0x58b8
    imul word [bp - 0x0002]          ; 0x58bb
    mov bx, ax                       ; 0x58be
    add bx, bp                       ; 0x58c0
    mov al, byte [bx - 0x0035]       ; 0x58c2
    sub ah, ah                       ; 0x58c5
    mov cx, ax                       ; 0x58c7
    pop ax                           ; 0x58c9
    cmp ax, cx                       ; 0x58ca
    jl short @..local.l154           ; 0x58cc
    jmp near @..local.l162           ; 0x58ce
@..local.l154:
    mov al, byte [bx - 0x0036]       ; 0x58d1
    sub ah, ah                       ; 0x58d4
    jmp near @..local.l160           ; 0x58d6
@..local.l155:
    mov ax, 6                        ; 0x58d9
    imul word [bp - 0x0002]          ; 0x58dc
    mov bx, ax                       ; 0x58df
    add bx, bp                       ; 0x58e1
    mov ax, word [bx - 0x003a]       ; 0x58e3
    mov cx, word [bx - 0x0038]       ; 0x58e6
    sub ax, cx                       ; 0x58e9
    push ax                          ; 0x58eb
    call ds_dispatch_b7a9            ; 0x58ec
    pop cx                           ; 0x58ef
    cwd                              ; 0x58f0
    push ax                          ; 0x58f1
    push dx                          ; 0x58f2
    mov ax, 6                        ; 0x58f3
    imul word [bp - 0x0002]          ; 0x58f6
    mov bx, ax                       ; 0x58f9
    add bx, bp                       ; 0x58fb
    mov ax, word [bx - 0x0038]       ; 0x58fd
    cwd                              ; 0x5900
    mov cx, ax                       ; 0x5901
    mov bx, dx                       ; 0x5903
    pop dx                           ; 0x5905
    pop ax                           ; 0x5906
    add ax, cx                       ; 0x5907
    adc dx, bx                       ; 0x5909
    add word [bp - 0x0088], ax       ; 0x590b
    adc word [bp - 0x0086], dx       ; 0x590f
    jmp near @..local.l162           ; 0x5913
@..local.l156:
    mov ax, 6                        ; 0x5916
    imul word [bp - 0x0002]          ; 0x5919
    mov bx, ax                       ; 0x591c
    add bx, bp                       ; 0x591e
    mov ax, word [bx - 0x003a]       ; 0x5920
    mov cx, word [bx - 0x0038]       ; 0x5923
    mov bx, cx                       ; 0x5926
    imul bx                          ; 0x5928
    add word [bp - 0x008c], ax       ; 0x592a
    adc word [bp - 0x008a], dx       ; 0x592e
    jmp near @..local.l162           ; 0x5932
@..local.l157:
    mov ax, 6                        ; 0x5935
    imul word [bp - 0x0002]          ; 0x5938
    mov bx, ax                       ; 0x593b
    add bx, bp                       ; 0x593d
    push word [bx - 0x0038]          ; 0x593f
    call ds_dispatch_b7a9            ; 0x5942
    pop cx                           ; 0x5945
    push ax                          ; 0x5946
    mov ax, 6                        ; 0x5947
    imul word [bp - 0x0002]          ; 0x594a
    mov bx, ax                       ; 0x594d
    add bx, bp                       ; 0x594f
    mov cx, word [bx - 0x003a]       ; 0x5951
    pop ax                           ; 0x5954
    add ax, cx                       ; 0x5955
    mov cx, word [data_95e4]         ; 0x5957
    shl cx, 1                        ; 0x595b
    mov bx, cx                       ; 0x595d
    mov word [bx - 0x69f2], ax       ; 0x595f
    push ax                          ; 0x5963
    call math_loc_56af               ; 0x5964
    pop cx                           ; 0x5967
    test ax, ax                      ; 0x5968
    je short @..local.l158           ; 0x596a
    mov ax, word [data_95e4]         ; 0x596c
    shl ax, 1                        ; 0x596f
    mov bx, ax                       ; 0x5971
    mov ax, word [bx - 0x69f2]       ; 0x5973
    add ax, 0xfe70                   ; 0x5977
    push ax                          ; 0x597a
    mov ax, 0xffff                   ; 0x597b
    push ax                          ; 0x597e
    mov ax, 0x15                     ; 0x597f
    push ax                          ; 0x5982
    call api_idx_0002_4              ; 0x5983
    add sp, byte 6                   ; 0x5986
@..local.l158:
    mov ax, word [data_95e4]         ; 0x5989
    shl ax, 1                        ; 0x598c
    mov bx, ax                       ; 0x598e
    cmp word [bx - 0x69f2], byte 0   ; 0x5990
    jle short @..local.l159          ; 0x5995
    inc word [data_95e4]             ; 0x5997
@..local.l159:
    jmp short @..local.l162          ; 0x599b
@..local.l160:
    cmp ax, strict word 1            ; 0x599d
    jne short @..local.l161          ; 0x59a0
    jmp near @..local.l155           ; 0x59a2
@..local.l161:
    cmp ax, strict word 2            ; 0x59a5
    je short @..local.l157           ; 0x59a8
    cmp ax, strict word 4            ; 0x59aa
    jne short @..local.l162          ; 0x59ad
    jmp near @..local.l156           ; 0x59af
@..local.l162:
    inc word [bp - 0x0002]           ; 0x59b2
    mov ax, word [bp - 0x0002]       ; 0x59b5
    cmp ax, strict word 8            ; 0x59b8
    jge short @..local.l163          ; 0x59bb
    jmp near @..local.l153           ; 0x59bd
@..local.l163:
    mov word [bp - 0x0084], 0        ; 0x59c0
    mov word [bp - 0x0002], 0        ; 0x59c6
    jmp short @..local.l166          ; 0x59cb
@..local.l164:
    mov ax, 0x248                    ; 0x59cd
    imul word [bp - 0x0002]          ; 0x59d0
    mov bx, ax                       ; 0x59d3
    cmp byte [bx + 0x5e2f], 0        ; 0x59d5
    jne short @..local.l165          ; 0x59da
    inc word [bp - 0x0084]           ; 0x59dc
@..local.l165:
    inc word [bp - 0x0002]           ; 0x59e0
@..local.l166:
    mov ax, word [bp - 0x0002]       ; 0x59e3
    cmp ax, word [data_69c8]         ; 0x59e6
    jl short @..local.l164           ; 0x59ea
    cmp word [bp - 0x0084], byte 0   ; 0x59ec
    jne short @..local.l167          ; 0x59f1
    mov word [data_830a], 8          ; 0x59f3
    ret                              ; 0x59f9
@..local.l167:
    mov ax, word [bp - 0x0088]       ; 0x59fa
    mov dx, word [bp - 0x0086]       ; 0x59fe
    push ax                          ; 0x5a02
    push dx                          ; 0x5a03
    mov ax, word [bp - 0x0084]       ; 0x5a04
    cwd                              ; 0x5a08
    mov cx, ax                       ; 0x5a09
    mov bx, dx                       ; 0x5a0b
    pop dx                           ; 0x5a0d
    pop ax                           ; 0x5a0e
    call ds_dispatch_f99f            ; 0x5a0f
    mov word [bp - 0x0086], dx       ; 0x5a12
    mov word [bp - 0x0088], ax       ; 0x5a16
    push word [data_0e2c]            ; 0x5a1a
    push word [data_0e2a]            ; 0x5a1e
    call ds_dispatch_b8af            ; 0x5a22
    add sp, byte 4                   ; 0x5a25
    mov ax, 0                        ; 0x5a28
    push ax                          ; 0x5a2b
    mov ax, 0xa4                     ; 0x5a2c
    push ax                          ; 0x5a2f
    mov ax, 0x12e                    ; 0x5a30
    push ax                          ; 0x5a33
    call ds_dispatch_f0e4            ; 0x5a34
    add sp, byte 6                   ; 0x5a37
    lea ax, word [bp - 0x00b4]       ; 0x5a3a
    push ax                          ; 0x5a3e
    mov ax, 0x138d                   ; 0x5a3f
    push ax                          ; 0x5a42
    call ds_dispatch_b53b            ; 0x5a43
    add sp, byte 4                   ; 0x5a46
    mov word [bp - 0x0002], 0        ; 0x5a49
    jmp near @..local.l187           ; 0x5a4e
@..local.l168:
    mov ax, word [bp - 0x0002]       ; 0x5a51
    shl ax, 1                        ; 0x5a54
    mov bx, ax                       ; 0x5a56
    cmp word [bx - 0x69f2], byte 0   ; 0x5a58
    jg short @..local.l169           ; 0x5a5d
    jmp near @..local.l186           ; 0x5a5f
@..local.l169:
    mov ax, 0                        ; 0x5a62
    push ax                          ; 0x5a65
    push word [bx - 0x69f2]          ; 0x5a66
    lea ax, word [bp - 0x0082]       ; 0x5a6a
    push ax                          ; 0x5a6e
    mov ax, 1                        ; 0x5a6f
    push ax                          ; 0x5a72
    call ds_dispatch_b63c            ; 0x5a73
    add sp, byte 8                   ; 0x5a76
    mov al, byte [bp - 0x004b]       ; 0x5a79
    sub ah, ah                       ; 0x5a7c
    test ax, 1                       ; 0x5a7e
    je short @..local.l170           ; 0x5a81
    lea ax, word [bp - 0x0082]       ; 0x5a83
    push ax                          ; 0x5a87
    mov ax, 0x16                     ; 0x5a88
    imul word [bp - 0x0002]          ; 0x5a8b
    add ax, 0x93fe                   ; 0x5a8e
    push ax                          ; 0x5a91
    call ds_dispatch_f364            ; 0x5a92
    add sp, byte 4                   ; 0x5a95
    jmp short @..local.l171          ; 0x5a98
@..local.l170:
    mov ax, 0x16                     ; 0x5a9a
    imul word [bp - 0x0002]          ; 0x5a9d
    add ax, 0x93fe                   ; 0x5aa0
    push ax                          ; 0x5aa3
    mov al, byte [bp - 0x0049]       ; 0x5aa4
    sub ah, ah                       ; 0x5aa7
    add ax, 0x1770                   ; 0x5aa9
    push ax                          ; 0x5aac
    call ds_dispatch_b53b            ; 0x5aad
    add sp, byte 4                   ; 0x5ab0
@..local.l171:
    mov ax, 0x16                     ; 0x5ab3
    imul word [bp - 0x0002]          ; 0x5ab6
    add ax, 0x93fe                   ; 0x5ab9
    push ax                          ; 0x5abc
    lea ax, word [bp - 0x01a4]       ; 0x5abd
    push ax                          ; 0x5ac1
    call ds_dispatch_f364            ; 0x5ac2
    add sp, byte 4                   ; 0x5ac5
    lea ax, word [bp - 0x01a4]       ; 0x5ac8
    push ax                          ; 0x5acc
    call api_idx_0002_3              ; 0x5acd
    pop cx                           ; 0x5ad0
    mov al, byte [bp - 0x004a]       ; 0x5ad1
    sub ah, ah                       ; 0x5ad4
    mov bx, ax                       ; 0x5ad6
    cmp byte [bx + 0x60e], 1         ; 0x5ad8
    jne short @..local.l172          ; 0x5add
    push word [bp - 0x0066]          ; 0x5adf
    push word [bp - 0x0068]          ; 0x5ae2
    call ds_dispatch_d0be            ; 0x5ae5
    add sp, byte 4                   ; 0x5ae8
    sub ah, ah                       ; 0x5aeb
    mov cx, word [bp - 0x0002]       ; 0x5aed
    shl cx, 1                        ; 0x5af0
    mov bx, cx                       ; 0x5af2
    mov word [bx - 0x6a4a], ax       ; 0x5af4
    jmp short @..local.l173          ; 0x5af8
@..local.l172:
    mov ax, word [bp - 0x0002]       ; 0x5afa
    shl ax, 1                        ; 0x5afd
    mov bx, ax                       ; 0x5aff
    mov word [bx - 0x6a4a], 0xffff   ; 0x5b01
@..local.l173:
    mov al, byte [bp - 0x0049]       ; 0x5b07
    sub ah, ah                       ; 0x5b0a
    mov cx, word [bp - 0x0002]       ; 0x5b0c
    shl cx, 1                        ; 0x5b0f
    mov bx, cx                       ; 0x5b11
    mov word [bx - 0x6c2a], ax       ; 0x5b13
    mov word [bx - 0x6c52], 0        ; 0x5b17
    mov al, byte [bp - 0x004b]       ; 0x5b1d
    sub ah, ah                       ; 0x5b20
    test ax, data_0002               ; 0x5b22
    je short @..local.l174           ; 0x5b25
    mov ax, 1                        ; 0x5b27
    jmp short @..local.l175          ; 0x5b2a
@..local.l174:
    mov ax, 0                        ; 0x5b2c
@..local.l175:
    mov word [bx - 0x69ca], ax       ; 0x5b2f
    mov al, byte [bp - 0x004b]       ; 0x5b33
    sub ah, ah                       ; 0x5b36
    test ax, 1                       ; 0x5b38
    je short @..local.l176           ; 0x5b3b
    mov ax, 1                        ; 0x5b3d
    jmp short @..local.l177          ; 0x5b40
@..local.l176:
    mov ax, 0                        ; 0x5b42
@..local.l177:
    mov word [bx - 0x6a1a], ax       ; 0x5b45
    lea ax, word [bp - 0x00b4]       ; 0x5b49
    push ax                          ; 0x5b4d
    lea ax, word [bp - 0x0104]       ; 0x5b4e
    push ax                          ; 0x5b52
    call ds_dispatch_f364            ; 0x5b53
    add sp, byte 4                   ; 0x5b56
    lea ax, word [bp - 0x0154]       ; 0x5b59
    push ax                          ; 0x5b5d
    mov ax, word [bp - 0x0002]       ; 0x5b5e
    shl ax, 1                        ; 0x5b61
    mov bx, ax                       ; 0x5b63
    cmp word [bx - 0x6a4a], byte 0   ; 0x5b65
    jle short @..local.l178          ; 0x5b6a
    mov ax, word [bx - 0x6a4a]       ; 0x5b6c
    jmp short @..local.l179          ; 0x5b70
@..local.l178:
    mov ax, 1                        ; 0x5b72
@..local.l179:
    push ax                          ; 0x5b75
    call ds_dispatch_b27d            ; 0x5b76
    add sp, byte 4                   ; 0x5b79
    mov ax, 0x25                     ; 0x5b7c
    push ax                          ; 0x5b7f
    lea ax, word [bp - 0x0154]       ; 0x5b80
    push ax                          ; 0x5b84
    lea ax, word [bp - 0x0104]       ; 0x5b85
    push ax                          ; 0x5b89
    call ds_dispatch_b300            ; 0x5b8a
    add sp, byte 6                   ; 0x5b8d
    mov ax, 0x24                     ; 0x5b90
    push ax                          ; 0x5b93
    mov ax, 0                        ; 0x5b94
    cmp byte [bp - 0x01a4], 0x3f     ; 0x5b97
    jne short @..local.l180          ; 0x5b9c
    mov ax, 1                        ; 0x5b9e
@..local.l180:
    lea cx, word [bp - 0x01a4]       ; 0x5ba1
    add ax, cx                       ; 0x5ba5
    push ax                          ; 0x5ba7
    lea ax, word [bp - 0x0104]       ; 0x5ba8
    push ax                          ; 0x5bac
    call ds_dispatch_b300            ; 0x5bad
    add sp, byte 6                   ; 0x5bb0
    mov al, byte [bp - 0x004b]       ; 0x5bb3
    sub ah, ah                       ; 0x5bb6
    test ax, 1                       ; 0x5bb8
    je short @..local.l185           ; 0x5bbb
    lea ax, word [bp - 0x0104]       ; 0x5bbd
    push ax                          ; 0x5bc1
    call ds_dispatch_fa90            ; 0x5bc2
    pop cx                           ; 0x5bc5
    mov word [bp - 0x0004], ax       ; 0x5bc6
    mov al, byte [bp - 0x004a]       ; 0x5bc9
    sub ah, ah                       ; 0x5bcc
    jmp short @..local.l184          ; 0x5bce
@..local.l181:
    mov ax, word [bp - 0x0004]       ; 0x5bd0
    lea cx, word [bp - 0x0104]       ; 0x5bd3
    add ax, cx                       ; 0x5bd7
    push ax                          ; 0x5bd9
    mov ax, 0x1398                   ; 0x5bda
    push ax                          ; 0x5bdd
    call ds_dispatch_b53b            ; 0x5bde
    add sp, byte 4                   ; 0x5be1
    jmp short @..local.l185          ; 0x5be4
@..local.l182:
    mov ax, word [bp - 0x0004]       ; 0x5be6
    lea cx, word [bp - 0x0104]       ; 0x5be9
    add ax, cx                       ; 0x5bed
    push ax                          ; 0x5bef
    mov ax, 0x1399                   ; 0x5bf0
    push ax                          ; 0x5bf3
    call ds_dispatch_b53b            ; 0x5bf4
    add sp, byte 4                   ; 0x5bf7
    jmp short @..local.l185          ; 0x5bfa
@..local.l183:
    mov ax, word [bp - 0x0004]       ; 0x5bfc
    lea cx, word [bp - 0x0104]       ; 0x5bff
    add ax, cx                       ; 0x5c03
    push ax                          ; 0x5c05
    mov ax, 0x139a                   ; 0x5c06
    push ax                          ; 0x5c09
    call ds_dispatch_b53b            ; 0x5c0a
    add sp, byte 4                   ; 0x5c0d
    jmp short @..local.l185          ; 0x5c10
@..local.l184:
    cmp ax, strict word 0xc          ; 0x5c12
    je short @..local.l181           ; 0x5c15
    cmp ax, strict word 0xd          ; 0x5c17
    je short @..local.l182           ; 0x5c1a
    cmp ax, strict word 0x10         ; 0x5c1c
    je short @..local.l183           ; 0x5c1f
@..local.l185:
    mov ax, 1                        ; 0x5c21
    push ax                          ; 0x5c24
    push ax                          ; 0x5c25
    push word [data_91d4]            ; 0x5c26
    lea ax, word [bp - 0x0104]       ; 0x5c2a
    push ax                          ; 0x5c2e
    call math_loc_0eb2               ; 0x5c2f
    add sp, byte 8                   ; 0x5c32
@..local.l186:
    inc word [bp - 0x0002]           ; 0x5c35
@..local.l187:
    mov ax, word [bp - 0x0002]       ; 0x5c38
    cmp ax, word [data_95e4]         ; 0x5c3b
    jge short @..local.l188          ; 0x5c3f
    jmp near @..local.l168           ; 0x5c41
@..local.l188:
    cmp word [bp - 0x0086], byte 0   ; 0x5c44
    jl short @..local.l189           ; 0x5c49
    jne short @..local.l190          ; 0x5c4b
    cmp word [bp - 0x0088], byte 0   ; 0x5c4d
    ja short @..local.l190           ; 0x5c52
@..local.l189:
    jmp short @..local.l191          ; 0x5c54
@..local.l190:
    lea ax, word [bp - 0x0104]       ; 0x5c56
    push ax                          ; 0x5c5a
    mov ax, 0x138a                   ; 0x5c5b
    push ax                          ; 0x5c5e
    call ds_dispatch_b53b            ; 0x5c5f
    add sp, byte 4                   ; 0x5c62
    lea ax, word [bp - 0x0154]       ; 0x5c65
    push ax                          ; 0x5c69
    push word [bp - 0x0086]          ; 0x5c6a
    push word [bp - 0x0088]          ; 0x5c6e
    call ds_dispatch_b1db            ; 0x5c72
    add sp, byte 6                   ; 0x5c75
    mov ax, 0x24                     ; 0x5c78
    push ax                          ; 0x5c7b
    lea ax, word [bp - 0x0154]       ; 0x5c7c
    push ax                          ; 0x5c80
    lea ax, word [bp - 0x0104]       ; 0x5c81
    push ax                          ; 0x5c85
    call ds_dispatch_b300            ; 0x5c86
    add sp, byte 6                   ; 0x5c89
    mov ax, 0x55                     ; 0x5c8c
    push ax                          ; 0x5c8f
    mov ax, 0                        ; 0x5c90
    push ax                          ; 0x5c93
    push word [data_91d4]            ; 0x5c94
    lea ax, word [bp - 0x0104]       ; 0x5c98
    push ax                          ; 0x5c9c
    call math_loc_0eb2               ; 0x5c9d
    add sp, byte 8                   ; 0x5ca0
@..local.l191:
    cmp word [bp - 0x008a], byte 0   ; 0x5ca3
    jl short @..local.l192           ; 0x5ca8
    jne short @..local.l193          ; 0x5caa
    cmp word [bp - 0x008c], byte 0   ; 0x5cac
    ja short @..local.l193           ; 0x5cb1
@..local.l192:
    jmp short @..local.l194          ; 0x5cb3
@..local.l193:
    lea ax, word [bp - 0x0104]       ; 0x5cb5
    push ax                          ; 0x5cb9
    mov ax, 0x138b                   ; 0x5cba
    push ax                          ; 0x5cbd
    call ds_dispatch_b53b            ; 0x5cbe
    add sp, byte 4                   ; 0x5cc1
    lea ax, word [bp - 0x0154]       ; 0x5cc4
    push ax                          ; 0x5cc8
    push word [bp - 0x008a]          ; 0x5cc9
    push word [bp - 0x008c]          ; 0x5ccd
    call ds_dispatch_b1db            ; 0x5cd1
    add sp, byte 6                   ; 0x5cd4
    mov ax, 0x24                     ; 0x5cd7
    push ax                          ; 0x5cda
    lea ax, word [bp - 0x0154]       ; 0x5cdb
    push ax                          ; 0x5cdf
    lea ax, word [bp - 0x0104]       ; 0x5ce0
    push ax                          ; 0x5ce4
    call ds_dispatch_b300            ; 0x5ce5
    add sp, byte 6                   ; 0x5ce8
    mov ax, 0x41                     ; 0x5ceb
    push ax                          ; 0x5cee
    mov ax, 1                        ; 0x5cef
    push ax                          ; 0x5cf2
    push word [data_91d4]            ; 0x5cf3
    lea ax, word [bp - 0x0104]       ; 0x5cf7
    push ax                          ; 0x5cfb
    call math_loc_0eb2               ; 0x5cfc
    add sp, byte 8                   ; 0x5cff
@..local.l194:
    mov ax, 0                        ; 0x5d02
    push ax                          ; 0x5d05
    mov ax, 0xa4                     ; 0x5d06
    push ax                          ; 0x5d09
    mov ax, 0x12e                    ; 0x5d0a
    push ax                          ; 0x5d0d
    call ds_dispatch_f0f1            ; 0x5d0e
    add sp, byte 6                   ; 0x5d11
    mov ax, 0                        ; 0x5d14
    mov dx, 0                        ; 0x5d17
    push dx                          ; 0x5d1a
    push ax                          ; 0x5d1b
    call ds_dispatch_b8af            ; 0x5d1c
    add sp, byte 4                   ; 0x5d1f
    mov word [bp - 0x0002], 0        ; 0x5d22
    jmp short @..local.l197          ; 0x5d27
@..local.l195:
    mov ax, 0x248                    ; 0x5d29
    imul word [bp - 0x0002]          ; 0x5d2c
    mov bx, ax                       ; 0x5d2f
    cmp byte [bx + 0x5e2f], 0        ; 0x5d31
    jne short @..local.l196          ; 0x5d36
    mov ax, word [bp - 0x008c]       ; 0x5d38
    mov dx, word [bp - 0x008a]       ; 0x5d3c
    add word [bx + 0x5c00], ax       ; 0x5d40
    adc word [bx + 0x5c02], dx       ; 0x5d44
    mov ax, word [bp - 0x0088]       ; 0x5d48
    mov dx, word [bp - 0x0086]       ; 0x5d4c
    add word [bx + 0x5c08], ax       ; 0x5d50
    adc word [bx + 0x5c0a], dx       ; 0x5d54
@..local.l196:
    inc word [bp - 0x0002]           ; 0x5d58
@..local.l197:
    mov ax, word [bp - 0x0002]       ; 0x5d5b
    cmp ax, word [data_69c8]         ; 0x5d5e
    jl short @..local.l195           ; 0x5d62
    cmp word [data_95e4], byte 0     ; 0x5d64
    jle short @..local.l198          ; 0x5d69
    call api_idx_0040                ; 0x5d6b
@..local.l198:
    mov word [data_9114], 0          ; 0x5d6e
    call loc_07de                    ; 0x5d74
    mov ax, data_0002                ; 0x5d77
    push ax                          ; 0x5d7a
    call api_idx_0004                ; 0x5d7b
    pop cx                           ; 0x5d7e
    ret                              ; 0x5d7f
api_idx_00a8:
    mov ax, 0xff58                   ; 0x5d80
    call ds_dispatch_f40b            ; 0x5d83
    mov word [bp - 0x0004], 0        ; 0x5d86
    mov word [bp - 0x0002], 0        ; 0x5d8b
    jmp short @..api_idx_00a8.l3     ; 0x5d90
@..api_idx_00a8.l1:
    mov ax, 0x248                    ; 0x5d92
    imul word [bp - 0x0002]          ; 0x5d95
    mov bx, ax                       ; 0x5d98
    cmp byte [bx + 0x5e2f], 0        ; 0x5d9a
    jne short @..api_idx_00a8.l2     ; 0x5d9f
    inc word [bp - 0x0004]           ; 0x5da1
@..api_idx_00a8.l2:
    inc word [bp - 0x0002]           ; 0x5da4
@..api_idx_00a8.l3:
    mov ax, word [bp - 0x0002]       ; 0x5da7
    cmp ax, word [data_69c8]         ; 0x5daa
    jl short @..api_idx_00a8.l1      ; 0x5dae
    mov ax, word [data_84a2]         ; 0x5db0
    mov dx, word [data_84a4]         ; 0x5db3
    mov cx, 0x14                     ; 0x5db7
    mov bx, 0                        ; 0x5dba
    call ds_dispatch_f99f            ; 0x5dbd
    push ax                          ; 0x5dc0
    push dx                          ; 0x5dc1
    mov ax, word [data_69c8]         ; 0x5dc2
    sub ax, word [bp - 0x0004]       ; 0x5dc5
    cwd                              ; 0x5dc8
    mov cx, ax                       ; 0x5dc9
    mov bx, dx                       ; 0x5dcb
    pop dx                           ; 0x5dcd
    pop ax                           ; 0x5dce
    push ax                          ; 0x5dcf
    push dx                          ; 0x5dd0
    mul bx                           ; 0x5dd1
    mov bx, ax                       ; 0x5dd3
    pop ax                           ; 0x5dd5
    mul cx                           ; 0x5dd6
    add bx, ax                       ; 0x5dd8
    pop ax                           ; 0x5dda
    mul cx                           ; 0x5ddb
    add dx, bx                       ; 0x5ddd
    mov word [bp - 0x0006], dx       ; 0x5ddf
    mov word [bp - 0x0008], ax       ; 0x5de2
    mov ax, word [bp - 0x0008]       ; 0x5de5
    mov dx, word [bp - 0x0006]       ; 0x5de8
    add word [data_84a2], ax         ; 0x5deb
    adc word [data_84a4], dx         ; 0x5def
    mov ax, word [data_84a2]         ; 0x5df3
    mov dx, word [data_84a4]         ; 0x5df6
    push ax                          ; 0x5dfa
    push dx                          ; 0x5dfb
    mov ax, word [bp - 0x0004]       ; 0x5dfc
    cwd                              ; 0x5dff
    mov cx, ax                       ; 0x5e00
    mov bx, dx                       ; 0x5e02
    pop dx                           ; 0x5e04
    pop ax                           ; 0x5e05
    call ds_dispatch_f99f            ; 0x5e06
    mov word [bp - 0x0006], dx       ; 0x5e09
    mov word [bp - 0x0008], ax       ; 0x5e0c
    lea ax, word [bp - 0x0058]       ; 0x5e0f
    push ax                          ; 0x5e12
    mov ax, 0x1389                   ; 0x5e13
    push ax                          ; 0x5e16
    call ds_dispatch_b53b            ; 0x5e17
    add sp, byte 4                   ; 0x5e1a
    lea ax, word [bp - 0x00a8]       ; 0x5e1d
    push ax                          ; 0x5e21
    push word [bp - 0x0006]          ; 0x5e22
    push word [bp - 0x0008]          ; 0x5e25
    call ds_dispatch_b1db            ; 0x5e28
    add sp, byte 6                   ; 0x5e2b
    mov ax, 0x24                     ; 0x5e2e
    push ax                          ; 0x5e31
    lea ax, word [bp - 0x00a8]       ; 0x5e32
    push ax                          ; 0x5e36
    lea ax, word [bp - 0x0058]       ; 0x5e37
    push ax                          ; 0x5e3a
    call ds_dispatch_b300            ; 0x5e3b
    add sp, byte 6                   ; 0x5e3e
    mov ax, 0x41                     ; 0x5e41
    push ax                          ; 0x5e44
    mov ax, 0                        ; 0x5e45
    push ax                          ; 0x5e48
    push word [data_91d4]            ; 0x5e49
    lea ax, word [bp - 0x0058]       ; 0x5e4d
    push ax                          ; 0x5e50
    call math_loc_0eb2               ; 0x5e51
    add sp, byte 8                   ; 0x5e54
    mov word [bp - 0x0002], 0        ; 0x5e57
    jmp short @..api_idx_00a8.l6     ; 0x5e5c
@..api_idx_00a8.l4:
    mov ax, 0x248                    ; 0x5e5e
    imul word [bp - 0x0002]          ; 0x5e61
    mov bx, ax                       ; 0x5e64
    cmp byte [bx + 0x5e2f], 0        ; 0x5e66
    jne short @..api_idx_00a8.l5     ; 0x5e6b
    mov ax, word [bp - 0x0008]       ; 0x5e6d
    mov dx, word [bp - 0x0006]       ; 0x5e70
    add word [bx + 0x5c00], ax       ; 0x5e73
    adc word [bx + 0x5c02], dx       ; 0x5e77
@..api_idx_00a8.l5:
    inc word [bp - 0x0002]           ; 0x5e7b
@..api_idx_00a8.l6:
    mov ax, word [bp - 0x0002]       ; 0x5e7e
    cmp ax, word [data_69c8]         ; 0x5e81
    jl short @..api_idx_00a8.l4      ; 0x5e85
    ret                              ; 0x5e87
api_idx_0006_5:
    mov ax, 0xfffa                   ; 0x5e88
    call ds_dispatch_f40b            ; 0x5e8b
    mov ax, word [bp + 0x8]          ; 0x5e8e
    xchg al, ah                      ; 0x5e91
    sub al, al                       ; 0x5e93
    mov dx, word [bp + 0xa]          ; 0x5e95
    mov cx, 4                        ; 0x5e98
    shl dx, cl                       ; 0x5e9b
    mov cx, dx                       ; 0x5e9d
    add ax, cx                       ; 0x5e9f
    add ax, word [bp + 0xc]          ; 0x5ea1
    mov word [bp - 0x0004], ax       ; 0x5ea4
    mov ax, word [data_0e10]         ; 0x5ea7
    mov word [bp - 0x0006], ax       ; 0x5eaa
    mov word [bp - 0x0002], 0        ; 0x5ead
    jmp short @..local.l202          ; 0x5eb2
@..api_idx_0006_5.l1:
    mov bx, word [bp - 0x0006]       ; 0x5eb4
    mov al, byte [bx]                ; 0x5eb7
    sub ah, ah                       ; 0x5eb9
    cmp ax, word [bp + 0x4]          ; 0x5ebb
    jne short @..local.l201          ; 0x5ebe
    mov al, byte [bx + 0x1]          ; 0x5ec0
    sub ah, ah                       ; 0x5ec3
    cmp ax, word [bp + 0x6]          ; 0x5ec5
    jne short @..local.l201          ; 0x5ec8
    cmp word [bp + 0x6], byte 6      ; 0x5eca
    jne short @..local.l200          ; 0x5ece
    mov ax, word [bx + 0x2]          ; 0x5ed0
    cmp ax, word [bp + 0x8]          ; 0x5ed3
    jne short @..local.l199          ; 0x5ed6
    mov ax, word [bp - 0x0002]       ; 0x5ed8
    ret                              ; 0x5edb
@..local.l199:
    jmp short @..local.l201          ; 0x5edc
@..local.l200:
    mov ax, word [bx + 0x2]          ; 0x5ede
    cmp ax, word [bp - 0x0004]       ; 0x5ee1
    jne short @..local.l201          ; 0x5ee4
    mov ax, word [bp - 0x0002]       ; 0x5ee6
    ret                              ; 0x5ee9
@..local.l201:
    add word [bp - 0x0006], byte 6   ; 0x5eea
    inc word [bp - 0x0002]           ; 0x5eee
@..local.l202:
    mov ax, word [bp - 0x0002]       ; 0x5ef1
    cmp ax, word [data_590e]         ; 0x5ef4
    jl short @..api_idx_0006_5.l1    ; 0x5ef8
    mov ax, 0xffff                   ; 0x5efa
    ret                              ; 0x5efd
api_idx_0004_10:
    mov ax, 0xfffc                   ; 0x5efe
    call ds_dispatch_f40b            ; 0x5f01
    push word [bp + 0xc]             ; 0x5f04
    push word [bp + 0xa]             ; 0x5f07
    push word [bp + 0x8]             ; 0x5f0a
    push word [bp + 0x6]             ; 0x5f0d
    push word [bp + 0x4]             ; 0x5f10
    call api_idx_0006_5              ; 0x5f13
    add sp, byte 0x0a                ; 0x5f16
    mov word [bp - 0x0002], ax       ; 0x5f19
    cmp ax, strict word 0xffff       ; 0x5f1c
    jne short @..api_idx_0004_10.l2  ; 0x5f1f
    mov ax, word [data_590e]         ; 0x5f21
    mov word [bp - 0x0002], ax       ; 0x5f24
    inc word [data_590e]             ; 0x5f27
    mov ax, word [data_590e]         ; 0x5f2b
    cmp ax, 0x200                    ; 0x5f2e
    jl short @..api_idx_0004_10.l2   ; 0x5f31
@..api_idx_0004_10.l1:
    mov ax, 0                        ; 0x5f33
    push ax                          ; 0x5f36
    call ds_dispatch_b7e0            ; 0x5f37
    pop cx                           ; 0x5f3a
    jmp short @..api_idx_0004_10.l1  ; 0x5f3b
@..api_idx_0004_10.l2:
    mov ax, 6                        ; 0x5f3d
    imul word [bp - 0x0002]          ; 0x5f40
    mov cx, ax                       ; 0x5f43
    mov ax, word [data_0e10]         ; 0x5f45
    add ax, cx                       ; 0x5f48
    mov word [bp - 0x0004], ax       ; 0x5f4a
    mov al, byte [bp + 0x4]          ; 0x5f4d
    mov bx, word [bp - 0x0004]       ; 0x5f50
    mov byte [bx], al                ; 0x5f53
    mov al, byte [bp + 0x6]          ; 0x5f55
    mov bx, word [bp - 0x0004]       ; 0x5f58
    mov byte [bx + 0x1], al          ; 0x5f5b
    mov ax, word [bp + 0x8]          ; 0x5f5e
    xchg al, ah                      ; 0x5f61
    sub al, al                       ; 0x5f63
    mov dx, word [bp + 0xa]          ; 0x5f65
    mov cx, 4                        ; 0x5f68
    shl dx, cl                       ; 0x5f6b
    mov cx, dx                       ; 0x5f6d
    add ax, cx                       ; 0x5f6f
    add ax, word [bp + 0xc]          ; 0x5f71
    mov bx, word [bp - 0x0004]       ; 0x5f74
    mov word [bx + 0x2], ax          ; 0x5f77
    mov ax, word [bp + 0x6]          ; 0x5f7a
    jmp short @..local.l203          ; 0x5f7d
    mov ax, word [bp + 0xe]          ; 0x5f7f
    mov cx, 4                        ; 0x5f82
    shl ax, cl                       ; 0x5f85
    add ax, word [bp + 0x10]         ; 0x5f87
    xchg al, ah                      ; 0x5f8a
    sub al, al                       ; 0x5f8c
    mov dx, word [bp + 0x12]         ; 0x5f8e
    shl dx, cl                       ; 0x5f91
    mov cx, dx                       ; 0x5f93
    add ax, cx                       ; 0x5f95
    add ax, word [bp + 0x14]         ; 0x5f97
    mov bx, word [bp - 0x0004]       ; 0x5f9a
    mov word [bx + 0x4], ax          ; 0x5f9d
    jmp short @..local.l204          ; 0x5fa0
    mov ax, word [bp + 0xe]          ; 0x5fa2
    mov bx, word [bp - 0x0004]       ; 0x5fa5
    mov word [bx + 0x4], ax          ; 0x5fa8
    jmp short @..local.l204          ; 0x5fab
    mov ax, word [bp + 0xe]          ; 0x5fad
    xchg al, ah                      ; 0x5fb0
    sub al, al                       ; 0x5fb2
    add ax, word [bp + 0x10]         ; 0x5fb4
    mov bx, word [bp - 0x0004]       ; 0x5fb7
    mov word [bx + 0x4], ax          ; 0x5fba
    jmp short @..local.l204          ; 0x5fbd
    mov ax, word [bp + 0x8]          ; 0x5fbf
    mov bx, word [bp - 0x0004]       ; 0x5fc2
    mov word [bx + 0x2], ax          ; 0x5fc5
    mov ax, word [bp + 0xe]          ; 0x5fc8
    mov bx, word [bp - 0x0004]       ; 0x5fcb
    mov word [bx + 0x4], ax          ; 0x5fce
    jmp short @..local.l204          ; 0x5fd1
    db 0xc6, 0xaf, 0xe9, 0xaf, 0xe9, 0xaf, 0xe9, 0xaf, 0xe9, 0xaf, 0xf4, 0xaf, 0x06, 0xb0
@..local.l203:
    cmp ax, strict word 7            ; 0x5fe1
    jae short @..local.l204          ; 0x5fe4
    xchg bx, ax                      ; 0x5fe6
    shl bx, 1                        ; 0x5fe7
    jmp [cs:bx - 0x4fe6]             ; 0x5fe9
@..local.l204:
    ret                              ; 0x5fee
api_idx_006a:
    mov ax, 0xff96                   ; 0x5fef
    call ds_dispatch_f40b            ; 0x5ff2
    mov word [data_911c], 0x8d       ; 0x5ff5
    mov word [data_904e], 0xffff     ; 0x5ffb
    mov word [bp - 0x0006], 0x37     ; 0x6001
    mov word [bp - 0x0008], 0x8f     ; 0x6006
    mov word [bp - 0x000a], 0x108    ; 0x600b
    mov word [bp - 0x000c], 0xc5     ; 0x6010
    mov ax, 0x90e3                   ; 0x6015
    push ax                          ; 0x6018
    mov ax, word [bp - 0x000c]       ; 0x6019
    inc ax                           ; 0x601c
    push ax                          ; 0x601d
    mov ax, word [bp - 0x000a]       ; 0x601e
    inc ax                           ; 0x6021
    push ax                          ; 0x6022
    mov ax, word [bp - 0x0008]       ; 0x6023
    dec ax                           ; 0x6026
    push ax                          ; 0x6027
    mov ax, word [bp - 0x0006]       ; 0x6028
    dec ax                           ; 0x602b
    push ax                          ; 0x602c
    call ds_dispatch_c283            ; 0x602d
    add sp, byte 0x0a                ; 0x6030
    mov word [bp - 0x0018], ax       ; 0x6033
    push word [bp - 0x000c]          ; 0x6036
    push word [bp - 0x000a]          ; 0x6039
    push word [bp - 0x0008]          ; 0x603c
    push word [bp - 0x0006]          ; 0x603f
    call ds_dispatch_bc9a            ; 0x6042
    add sp, byte 8                   ; 0x6045
    lea ax, word [bp - 0x006a]       ; 0x6048
    push ax                          ; 0x604b
    push word [bp + 0x6]             ; 0x604c
    call ds_dispatch_b53b            ; 0x604f
    add sp, byte 4                   ; 0x6052
    mov ax, 0xc2                     ; 0x6055
    push ax                          ; 0x6058
    mov ax, 0x1c                     ; 0x6059
    push ax                          ; 0x605c
    call ds_dispatch_e823            ; 0x605d
    add sp, byte 4                   ; 0x6060
    mov ax, word [bp - 0x0008]       ; 0x6063
    add ax, strict word 9            ; 0x6066
    push ax                          ; 0x6069
    lea ax, word [bp - 0x006a]       ; 0x606a
    push ax                          ; 0x606d
    call ds_dispatch_fa90            ; 0x606e
    pop cx                           ; 0x6071
    mov cx, ax                       ; 0x6072
    mov ax, 0xc                      ; 0x6074
    sub ax, cx                       ; 0x6077
    mov cx, 6                        ; 0x6079
    imul cx                          ; 0x607c
    mov cx, data_0002                ; 0x607e
    cwd                              ; 0x6081
    idiv cx                          ; 0x6082
    add ax, word [bp - 0x0006]       ; 0x6084
    add ax, strict word 9            ; 0x6087
    push ax                          ; 0x608a
    call ds_dispatch_e809            ; 0x608b
    add sp, byte 4                   ; 0x608e
    mov ax, 0                        ; 0x6091
    push ax                          ; 0x6094
    lea ax, word [bp - 0x006a]       ; 0x6095
    push ax                          ; 0x6098
    call ds_dispatch_e84e            ; 0x6099
    add sp, byte 4                   ; 0x609c
    mov ax, 0xc2                     ; 0x609f
    push ax                          ; 0x60a2
    mov ax, 1                        ; 0x60a3
    push ax                          ; 0x60a6
    call ds_dispatch_e823            ; 0x60a7
    add sp, byte 4                   ; 0x60aa
    mov ax, word [bp - 0x0008]       ; 0x60ad
    add ax, strict word 0x15         ; 0x60b0
    push ax                          ; 0x60b3
    mov ax, 0x248                    ; 0x60b4
    imul word [bp + 0x4]             ; 0x60b7
    add ax, 0x5bf4                   ; 0x60ba
    push ax                          ; 0x60bd
    call ds_dispatch_fa90            ; 0x60be
    pop cx                           ; 0x60c1
    mov cx, 6                        ; 0x60c2
    imul cx                          ; 0x60c5
    mov cx, data_0002                ; 0x60c7
    cwd                              ; 0x60ca
    idiv cx                          ; 0x60cb
    mov cx, ax                       ; 0x60cd
    mov ax, word [bp - 0x0006]       ; 0x60cf
    add ax, strict word 0x2d         ; 0x60d2
    sub ax, cx                       ; 0x60d5
    push ax                          ; 0x60d7
    call ds_dispatch_e809            ; 0x60d8
    add sp, byte 4                   ; 0x60db
    mov ax, 0                        ; 0x60de
    push ax                          ; 0x60e1
    mov ax, 0x248                    ; 0x60e2
    imul word [bp + 0x4]             ; 0x60e5
    add ax, 0x5bf4                   ; 0x60e8
    push ax                          ; 0x60eb
    call ds_dispatch_e84e            ; 0x60ec
    add sp, byte 4                   ; 0x60ef
    mov ax, 0x90e9                   ; 0x60f2
    push ax                          ; 0x60f5
    lea ax, word [bp - 0x006a]       ; 0x60f6
    push ax                          ; 0x60f9
    call ds_dispatch_f364            ; 0x60fa
    add sp, byte 4                   ; 0x60fd
    lea ax, word [bp - 0x0069]       ; 0x6100
    push ax                          ; 0x6103
    mov ax, 0x248                    ; 0x6104
    imul word [bp + 0x4]             ; 0x6107
    mov bx, ax                       ; 0x610a
    mov al, byte [bx + 0x5d7c]       ; 0x610c
    sub ah, ah                       ; 0x6110
    push ax                          ; 0x6112
    call ds_dispatch_b27d            ; 0x6113
    add sp, byte 4                   ; 0x6116
    mov ax, 0x90eb                   ; 0x6119
    push ax                          ; 0x611c
    lea ax, word [bp - 0x006a]       ; 0x611d
    push ax                          ; 0x6120
    call ds_dispatch_f32d            ; 0x6121
    add sp, byte 4                   ; 0x6124
    mov ax, word [bp - 0x0008]       ; 0x6127
    add ax, strict word 0x1b         ; 0x612a
    push ax                          ; 0x612d
    lea ax, word [bp - 0x006a]       ; 0x612e
    push ax                          ; 0x6131
    call ds_dispatch_fa90            ; 0x6132
    pop cx                           ; 0x6135
    mov cx, 6                        ; 0x6136
    imul cx                          ; 0x6139
    mov cx, data_0002                ; 0x613b
    cwd                              ; 0x613e
    idiv cx                          ; 0x613f
    mov cx, ax                       ; 0x6141
    mov ax, word [bp - 0x0006]       ; 0x6143
    add ax, strict word 0x2d         ; 0x6146
    sub ax, cx                       ; 0x6149
    push ax                          ; 0x614b
    call ds_dispatch_e809            ; 0x614c
    add sp, byte 4                   ; 0x614f
    mov ax, 0                        ; 0x6152
    push ax                          ; 0x6155
    lea ax, word [bp - 0x006a]       ; 0x6156
    push ax                          ; 0x6159
    call ds_dispatch_e84e            ; 0x615a
    add sp, byte 4                   ; 0x615d
    lea ax, word [bp - 0x006a]       ; 0x6160
    push ax                          ; 0x6163
    mov ax, word [bp + 0x6]          ; 0x6164
    inc ax                           ; 0x6167
    push ax                          ; 0x6168
    call ds_dispatch_b53b            ; 0x6169
    add sp, byte 4                   ; 0x616c
    lea ax, word [bp - 0x006a]       ; 0x616f
    push ax                          ; 0x6172
    push word [bp + 0x8]             ; 0x6173
    mov ax, 1                        ; 0x6176
    push ax                          ; 0x6179
    mov ax, 0xc                      ; 0x617a
    push ax                          ; 0x617d
    mov ax, word [bp - 0x0008]       ; 0x617e
    add ax, strict word 0x26         ; 0x6181
    push ax                          ; 0x6184
    mov ax, word [bp - 0x0006]       ; 0x6185
    add ax, strict word 8            ; 0x6188
    push ax                          ; 0x618b
    call ds_dispatch_c0c1            ; 0x618c
    add sp, byte 0x0c                ; 0x618f
    mov word [bp - 0x0002], 0        ; 0x6192
@..api_idx_006a.l1:
    mov ax, word [bp - 0x0008]       ; 0x6197
    add ax, strict word 0xe          ; 0x619a
    push ax                          ; 0x619d
    mov ax, 0x14                     ; 0x619e
    imul word [bp - 0x0002]          ; 0x61a1
    add ax, word [bp - 0x0006]       ; 0x61a4
    add ax, strict word 0x67         ; 0x61a7
    push ax                          ; 0x61aa
    mov ax, word [bp - 0x0008]       ; 0x61ab
    add ax, strict word 8            ; 0x61ae
    push ax                          ; 0x61b1
    mov ax, 0x14                     ; 0x61b2
    imul word [bp - 0x0002]          ; 0x61b5
    add ax, word [bp - 0x0006]       ; 0x61b8
    add ax, strict word 0x59         ; 0x61bb
    push ax                          ; 0x61be
    call ds_dispatch_bd98            ; 0x61bf
    add sp, byte 8                   ; 0x61c2
    mov ax, word [bp - 0x0008]       ; 0x61c5
    add ax, strict word 0x1d         ; 0x61c8
    push ax                          ; 0x61cb
    mov ax, 0x14                     ; 0x61cc
    imul word [bp - 0x0002]          ; 0x61cf
    add ax, word [bp - 0x0006]       ; 0x61d2
    add ax, strict word 0x62         ; 0x61d5
    push ax                          ; 0x61d8
    mov ax, word [bp - 0x0008]       ; 0x61d9
    add ax, strict word 0x17         ; 0x61dc
    push ax                          ; 0x61df
    mov ax, 0x14                     ; 0x61e0
    imul word [bp - 0x0002]          ; 0x61e3
    add ax, word [bp - 0x0006]       ; 0x61e6
    add ax, strict word 0x5e         ; 0x61e9
    push ax                          ; 0x61ec
    call ds_dispatch_bd98            ; 0x61ed
    add sp, byte 8                   ; 0x61f0
    mov ax, 0                        ; 0x61f3
    push ax                          ; 0x61f6
    mov ax, word [bp - 0x0008]       ; 0x61f7
    add ax, strict word 0x2e         ; 0x61fa
    push ax                          ; 0x61fd
    mov ax, 0x14                     ; 0x61fe
    imul word [bp - 0x0002]          ; 0x6201
    add ax, word [bp - 0x0006]       ; 0x6204
    add ax, strict word 0x67         ; 0x6207
    push ax                          ; 0x620a
    mov ax, word [bp - 0x0008]       ; 0x620b
    add ax, strict word 0x26         ; 0x620e
    push ax                          ; 0x6211
    mov ax, 0x14                     ; 0x6212
    imul word [bp - 0x0002]          ; 0x6215
    add ax, word [bp - 0x0006]       ; 0x6218
    add ax, strict word 0x59         ; 0x621b
    push ax                          ; 0x621e
    call loc_242c                    ; 0x621f
    add sp, byte 0x0a                ; 0x6222
    inc word [bp - 0x0002]           ; 0x6225
    mov ax, word [bp - 0x0002]       ; 0x6228
    cmp ax, strict word 6            ; 0x622b
    jge short @..local.l205          ; 0x622e
    jmp near @..api_idx_006a.l1      ; 0x6230
@..local.l205:
    mov ax, 0                        ; 0x6233
    push ax                          ; 0x6236
    mov ax, 0x1b                     ; 0x6237
    push ax                          ; 0x623a
    mov ax, word [bp - 0x0008]       ; 0x623b
    add ax, strict word 0x2e         ; 0x623e
    push ax                          ; 0x6241
    mov ax, word [bp - 0x0006]       ; 0x6242
    add ax, strict word 0x50         ; 0x6245
    push ax                          ; 0x6248
    mov ax, word [bp - 0x0008]       ; 0x6249
    add ax, strict word 0x26         ; 0x624c
    push ax                          ; 0x624f
    mov ax, word [bp - 0x0006]       ; 0x6250
    add ax, strict word 8            ; 0x6253
    push ax                          ; 0x6256
    mov ax, 0                        ; 0x6257
    push ax                          ; 0x625a
    call ds_dispatch_baa6            ; 0x625b
    add sp, byte 0x0e                ; 0x625e
    mov word [bp - 0x0002], 0        ; 0x6261
    jmp short @..local.l207          ; 0x6266
@..local.l206:
    mov ax, 0                        ; 0x6268
    push ax                          ; 0x626b
    mov ax, word [bp - 0x0002]       ; 0x626c
    add ax, strict word 0x31         ; 0x626f
    cbw                              ; 0x6272
    push ax                          ; 0x6273
    mov ax, word [bp - 0x0008]       ; 0x6274
    add ax, strict word 0x2e         ; 0x6277
    push ax                          ; 0x627a
    mov ax, 0x14                     ; 0x627b
    imul word [bp - 0x0002]          ; 0x627e
    add ax, word [bp - 0x0006]       ; 0x6281
    add ax, strict word 0x67         ; 0x6284
    push ax                          ; 0x6287
    mov ax, word [bp - 0x0008]       ; 0x6288
    add ax, strict word 0x26         ; 0x628b
    push ax                          ; 0x628e
    mov ax, 0x14                     ; 0x628f
    imul word [bp - 0x0002]          ; 0x6292
    add ax, word [bp - 0x0006]       ; 0x6295
    add ax, strict word 0x59         ; 0x6298
    push ax                          ; 0x629b
    mov ax, word [bp - 0x0002]       ; 0x629c
    inc ax                           ; 0x629f
    push ax                          ; 0x62a0
    call ds_dispatch_baa6            ; 0x62a1
    add sp, byte 0x0e                ; 0x62a4
    inc word [bp - 0x0002]           ; 0x62a7
@..local.l207:
    mov ax, word [bp - 0x0002]       ; 0x62aa
    cmp ax, word [bp + 0xa]          ; 0x62ad
    jl short @..local.l206           ; 0x62b0
    mov ax, 0                        ; 0x62b2
    push ax                          ; 0x62b5
    push ax                          ; 0x62b6
    push ax                          ; 0x62b7
    push ax                          ; 0x62b8
    push ax                          ; 0x62b9
    mov ax, 0xffff                   ; 0x62ba
    push ax                          ; 0x62bd
    mov ax, word [bp + 0xa]          ; 0x62be
    inc ax                           ; 0x62c1
    push ax                          ; 0x62c2
    call ds_dispatch_baa6            ; 0x62c3
    add sp, byte 0x0e                ; 0x62c6
    mov ax, word [bp - 0x000c]       ; 0x62c9
    inc ax                           ; 0x62cc
    push ax                          ; 0x62cd
    mov ax, word [bp - 0x000a]       ; 0x62ce
    inc ax                           ; 0x62d1
    push ax                          ; 0x62d2
    mov ax, word [bp - 0x0008]       ; 0x62d3
    dec ax                           ; 0x62d6
    push ax                          ; 0x62d7
    mov ax, word [bp - 0x0006]       ; 0x62d8
    dec ax                           ; 0x62db
    push ax                          ; 0x62dc
    call ds_dispatch_e8da            ; 0x62dd
    add sp, byte 8                   ; 0x62e0
    mov word [bp - 0x0016], 1        ; 0x62e3
    mov word [bp - 0x001c], 0        ; 0x62e8
    mov ax, 0x248                    ; 0x62ed
    imul word [bp + 0x4]             ; 0x62f0
    mov bx, ax                       ; 0x62f3
    mov al, byte [bx + 0x5d7c]       ; 0x62f5
    sub ah, ah                       ; 0x62f9
    push ax                          ; 0x62fb
    mov ax, 3                        ; 0x62fc
    imul word [bp + 0xe]             ; 0x62ff
    mov cx, ax                       ; 0x6302
    pop ax                           ; 0x6304
    sub ax, cx                       ; 0x6305
    mov cx, word [bx + 0x5c18]       ; 0x6307
    add ax, cx                       ; 0x630b
    mov word [bp - 0x001a], ax       ; 0x630d
    cmp byte [bx + 0x5e2d], 3        ; 0x6310
    jne short @..local.l208          ; 0x6315
    mov al, byte [bx + 0x5d68]       ; 0x6317
    sub ah, ah                       ; 0x631b
    add word [bp - 0x001a], ax       ; 0x631d
    mov word [bp - 0x001c], data_0002 ; 0x6320
    jmp short @..local.l210          ; 0x6325
@..local.l208:
    mov al, byte [bx + 0x5e2d]       ; 0x6327
    cmp al, 0xd                      ; 0x632b
    je short @..local.l209           ; 0x632d
    cmp al, 4                        ; 0x632f
    je short @..local.l209           ; 0x6331
    cmp al, 6                        ; 0x6333
    jne short @..local.l210          ; 0x6335
@..local.l209:
    mov al, byte [bx + 0x5d68]       ; 0x6337
    sub ah, ah                       ; 0x633b
    mov cx, data_0002                ; 0x633d
    cwd                              ; 0x6340
    idiv cx                          ; 0x6341
    add word [bp - 0x001a], ax       ; 0x6343
    mov word [bp - 0x001c], 1        ; 0x6346
@..local.l210:
    mov ax, 0x5f                     ; 0x634b
    push ax                          ; 0x634e
    mov ax, data_0002                ; 0x634f
    push ax                          ; 0x6352
    push word [bp - 0x001a]          ; 0x6353
    call ds_dispatch_b7c2            ; 0x6356
    add sp, byte 6                   ; 0x6359
    mov word [bp - 0x001a], ax       ; 0x635c
    mov ax, word [bp + 0xa]          ; 0x635f
    mov word [bp - 0x001e], ax       ; 0x6362
    mov ax, 0                        ; 0x6365
    push ax                          ; 0x6368
    mov ax, 0xc                      ; 0x6369
    push ax                          ; 0x636c
    lea ax, word [bp - 0x002a]       ; 0x636d
    push ax                          ; 0x6370
    call ds_dispatch_f306            ; 0x6371
    add sp, byte 6                   ; 0x6374
@..local.l211:
    mov word [bp - 0x0002], 0        ; 0x6377
    jmp near @..local.l222           ; 0x637c
@..local.l212:
    mov ax, word [bp - 0x0002]       ; 0x637f
    shl ax, 1                        ; 0x6382
    mov bx, ax                       ; 0x6384
    add bx, bp                       ; 0x6386
    cmp word [bx - 0x002a], byte 0   ; 0x6388
    je short @..local.l213           ; 0x638c
    jmp near @..local.l221           ; 0x638e
@..local.l213:
    push word [bp - 0x001a]          ; 0x6391
    call ds_dispatch_b7a9            ; 0x6394
    pop cx                           ; 0x6397
    mov word [bp - 0x0014], ax       ; 0x6398
    mov ax, 1                        ; 0x639b
    push ax                          ; 0x639e
    call ds_dispatch_f096            ; 0x639f
    pop cx                           ; 0x63a2
    mov ax, 0xc3                     ; 0x63a3
    push ax                          ; 0x63a6
    mov ax, 0xb4                     ; 0x63a7
    push ax                          ; 0x63aa
    call ds_dispatch_e823            ; 0x63ab
    add sp, byte 4                   ; 0x63ae
    mov ax, word [bp - 0x0008]       ; 0x63b1
    add ax, strict word 9            ; 0x63b4
    push ax                          ; 0x63b7
    mov ax, 0x14                     ; 0x63b8
    imul word [bp - 0x0002]          ; 0x63bb
    add ax, word [bp - 0x0006]       ; 0x63be
    add ax, strict word 0x5b         ; 0x63c1
    push ax                          ; 0x63c4
    call ds_dispatch_e809            ; 0x63c5
    add sp, byte 4                   ; 0x63c8
    mov ax, 0                        ; 0x63cb
    push ax                          ; 0x63ce
    mov ax, data_0002                ; 0x63cf
    push ax                          ; 0x63d2
    push word [bp - 0x0014]          ; 0x63d3
    call ds_dispatch_b2e7            ; 0x63d6
    add sp, byte 6                   ; 0x63d9
    mov ax, 0                        ; 0x63dc
    push ax                          ; 0x63df
    call ds_dispatch_f096            ; 0x63e0
    pop cx                           ; 0x63e3
    mov ax, word [bp - 0x001a]       ; 0x63e4
    mov cx, word [bp - 0x0002]       ; 0x63e7
    shl cx, 1                        ; 0x63ea
    mov bx, cx                       ; 0x63ec
    mov cx, word [bx - 0x69a2]       ; 0x63ee
    sub ax, cx                       ; 0x63f2
    mov cx, 3                        ; 0x63f4
    cwd                              ; 0x63f7
    idiv cx                          ; 0x63f8
    mov cx, ax                       ; 0x63fa
    mov ax, word [bx - 0x69a2]       ; 0x63fc
    sub ax, cx                       ; 0x6400
    cmp ax, word [bp - 0x0014]       ; 0x6402
    jge short @..local.l214          ; 0x6405
    mov ax, 1                        ; 0x6407
    jmp short @..local.l215          ; 0x640a
@..local.l214:
    mov ax, 0                        ; 0x640c
@..local.l215:
    add bx, bp                       ; 0x640f
    mov word [bx - 0x0036], ax       ; 0x6411
    mov ax, word [bp - 0x0002]       ; 0x6414
    shl ax, 1                        ; 0x6417
    mov bx, ax                       ; 0x6419
    mov ax, word [bx - 0x69a2]       ; 0x641b
    cmp ax, word [bp - 0x0014]       ; 0x641f
    jge short @..local.l216          ; 0x6422
    mov ax, 1                        ; 0x6424
    jmp short @..local.l217          ; 0x6427
@..local.l216:
    mov ax, 0                        ; 0x6429
@..local.l217:
    add bx, bp                       ; 0x642c
    mov word [bx - 0x0042], ax       ; 0x642e
    mov ax, word [bp - 0x0002]       ; 0x6431
    shl ax, 1                        ; 0x6434
    mov bx, ax                       ; 0x6436
    add bx, bp                       ; 0x6438
    cmp word [bx - 0x0036], byte 0   ; 0x643a
    jne short @..local.l218          ; 0x643e
    mov ax, 0x1a                     ; 0x6440
    jmp short @..local.l220          ; 0x6443
@..local.l218:
    mov ax, word [bp - 0x0002]       ; 0x6445
    shl ax, 1                        ; 0x6448
    mov bx, ax                       ; 0x644a
    add bx, bp                       ; 0x644c
    cmp word [bx - 0x0042], byte 0   ; 0x644e
    je short @..local.l219           ; 0x6452
    mov ax, 0x37                     ; 0x6454
    jmp short @..local.l220          ; 0x6457
@..local.l219:
    mov ax, 0x56                     ; 0x6459
@..local.l220:
    push ax                          ; 0x645c
    mov ax, word [bp - 0x0008]       ; 0x645d
    add ax, strict word 0x1d         ; 0x6460
    push ax                          ; 0x6463
    mov ax, 0x14                     ; 0x6464
    imul word [bp - 0x0002]          ; 0x6467
    add ax, word [bp - 0x0006]       ; 0x646a
    add ax, strict word 0x62         ; 0x646d
    push ax                          ; 0x6470
    mov ax, word [bp - 0x0008]       ; 0x6471
    add ax, strict word 0x17         ; 0x6474
    push ax                          ; 0x6477
    mov ax, 0x14                     ; 0x6478
    imul word [bp - 0x0002]          ; 0x647b
    add ax, word [bp - 0x0006]       ; 0x647e
    add ax, strict word 0x5e         ; 0x6481
    push ax                          ; 0x6484
    call ds_dispatch_e901            ; 0x6485
    add sp, byte 0x0a                ; 0x6488
@..local.l221:
    inc word [bp - 0x0002]           ; 0x648b
@..local.l222:
    mov ax, word [bp - 0x0002]       ; 0x648e
    cmp ax, word [bp + 0xa]          ; 0x6491
    jge short @..local.l223          ; 0x6494
    jmp near @..local.l212           ; 0x6496
@..local.l223:
    mov ax, word [bp - 0x0008]       ; 0x6499
    add ax, strict word 0x1f         ; 0x649c
    push ax                          ; 0x649f
    mov ax, word [bp - 0x0006]       ; 0x64a0
    add ax, 0xd1                     ; 0x64a3
    push ax                          ; 0x64a6
    mov ax, word [bp - 0x0008]       ; 0x64a7
    add ax, strict word 8            ; 0x64aa
    push ax                          ; 0x64ad
    mov ax, word [bp - 0x0006]       ; 0x64ae
    add ax, strict word 0x59         ; 0x64b1
    push ax                          ; 0x64b4
    call ds_dispatch_e8da            ; 0x64b5
    add sp, byte 8                   ; 0x64b8
    call math_loc_086b               ; 0x64bb
    test ax, ax                      ; 0x64be
    jne short @..local.l224          ; 0x64c0
    mov ax, 0x19                     ; 0x64c2
    push ax                          ; 0x64c5
    call ds_dispatch_e489            ; 0x64c6
    pop cx                           ; 0x64c9
@..local.l224:
    mov ax, 0x59fe                   ; 0x64ca
    push ax                          ; 0x64cd
    call ds_dispatch_b90d            ; 0x64ce
    pop cx                           ; 0x64d1
    dec ax                           ; 0x64d2
    mov word [bp - 0x0012], ax       ; 0x64d3
    cmp word [data_5b3e], byte 1     ; 0x64d6
    je short @..local.l225           ; 0x64db
    jmp near @..local.l238           ; 0x64dd
@..local.l225:
    jmp near @..local.l236           ; 0x64e0
@..local.l226:
    cmp word [bp + 0x8], byte 0      ; 0x64e3
    je short @..local.l227           ; 0x64e7
    mov ax, 1                        ; 0x64e9
    push ax                          ; 0x64ec
    push ax                          ; 0x64ed
    mov ax, 0xc                      ; 0x64ee
    push ax                          ; 0x64f1
    mov ax, word [bp - 0x0008]       ; 0x64f2
    add ax, strict word 0x27         ; 0x64f5
    push ax                          ; 0x64f8
    mov ax, word [bp - 0x0006]       ; 0x64f9
    add ax, strict word 8            ; 0x64fc
    push ax                          ; 0x64ff
    call ds_dispatch_be5f            ; 0x6500
    add sp, byte 0x0a                ; 0x6503
    mov ax, 0                        ; 0x6506
    push ax                          ; 0x6509
    mov ax, 1                        ; 0x650a
    push ax                          ; 0x650d
    mov ax, 0xc                      ; 0x650e
    push ax                          ; 0x6511
    mov ax, word [bp - 0x0008]       ; 0x6512
    add ax, strict word 0x27         ; 0x6515
    push ax                          ; 0x6518
    mov ax, word [bp - 0x0006]       ; 0x6519
    add ax, strict word 8            ; 0x651c
    push ax                          ; 0x651f
    call ds_dispatch_be5f            ; 0x6520
    add sp, byte 0x0a                ; 0x6523
    mov word [data_9050], 0xffff     ; 0x6526
    mov word [bp - 0x0016], 0        ; 0x652c
@..local.l227:
    jmp near @..local.l238           ; 0x6531
@..local.l228:
    mov ax, word [bp - 0x0012]       ; 0x6534
    dec ax                           ; 0x6537
    mov word [bp - 0x0002], ax       ; 0x6538
    shl ax, 1                        ; 0x653b
    mov bx, ax                       ; 0x653d
    add bx, bp                       ; 0x653f
    cmp word [bx - 0x002a], byte 0   ; 0x6541
    je short @..local.l229           ; 0x6545
    jmp near @..local.l235           ; 0x6547
@..local.l229:
    mov word [bx - 0x002a], 1        ; 0x654a
    push word [bx - 0x002a]          ; 0x654f
    mov ax, word [bp - 0x0008]       ; 0x6552
    add ax, strict word 0x2e         ; 0x6555
    push ax                          ; 0x6558
    mov ax, 0x14                     ; 0x6559
    imul word [bp - 0x0002]          ; 0x655c
    add ax, word [bp - 0x0006]       ; 0x655f
    add ax, strict word 0x67         ; 0x6562
    push ax                          ; 0x6565
    mov ax, word [bp - 0x0008]       ; 0x6566
    add ax, strict word 0x26         ; 0x6569
    push ax                          ; 0x656c
    mov ax, 0x14                     ; 0x656d
    imul word [bp - 0x0002]          ; 0x6570
    add ax, word [bp - 0x0006]       ; 0x6573
    add ax, strict word 0x59         ; 0x6576
    push ax                          ; 0x6579
    call loc_242c                    ; 0x657a
    add sp, byte 0x0a                ; 0x657d
    mov ax, word [bp - 0x0008]       ; 0x6580
    add ax, strict word 0x2e         ; 0x6583
    push ax                          ; 0x6586
    mov ax, 0x14                     ; 0x6587
    imul word [bp - 0x0002]          ; 0x658a
    add ax, word [bp - 0x0006]       ; 0x658d
    add ax, strict word 0x67         ; 0x6590
    push ax                          ; 0x6593
    mov ax, word [bp - 0x0008]       ; 0x6594
    add ax, strict word 0x26         ; 0x6597
    push ax                          ; 0x659a
    mov ax, 0x14                     ; 0x659b
    imul word [bp - 0x0002]          ; 0x659e
    add ax, word [bp - 0x0006]       ; 0x65a1
    add ax, strict word 0x59         ; 0x65a4
    push ax                          ; 0x65a7
    call ds_dispatch_e8da            ; 0x65a8
    add sp, byte 8                   ; 0x65ab
    mov ax, 4                        ; 0x65ae
    push ax                          ; 0x65b1
    call ds_dispatch_b7e0            ; 0x65b2
    pop cx                           ; 0x65b5
    mov ax, word [bp - 0x0002]       ; 0x65b6
    shl ax, 1                        ; 0x65b9
    mov bx, ax                       ; 0x65bb
    add bx, bp                       ; 0x65bd
    cmp word [bx - 0x0036], byte 0   ; 0x65bf
    jne short @..local.l231          ; 0x65c3
    mov ax, 3                        ; 0x65c5
    push ax                          ; 0x65c8
    call ds_dispatch_b7a9            ; 0x65c9
    pop cx                           ; 0x65cc
    test ax, ax                      ; 0x65cd
    jne short @..local.l230          ; 0x65cf
    mov word [bp + 0xc], 1           ; 0x65d1
@..local.l230:
    mov ax, word [bp + 0xc]          ; 0x65d6
    inc ax                           ; 0x65d9
    mov word [data_9050], ax         ; 0x65da
    mov word [bp - 0x0016], 0        ; 0x65dd
    jmp near @..local.l235           ; 0x65e2
@..local.l231:
    mov ax, word [bp - 0x0002]       ; 0x65e5
    shl ax, 1                        ; 0x65e8
    mov bx, ax                       ; 0x65ea
    add bx, bp                       ; 0x65ec
    cmp word [bx - 0x0042], byte 0   ; 0x65ee
    je short @..local.l232           ; 0x65f2
    jmp near @..local.l233           ; 0x65f4
@..local.l232:
    mov ax, 0xc8                     ; 0x65f7
    push ax                          ; 0x65fa
    call ds_dispatch_e489            ; 0x65fb
    pop cx                           ; 0x65fe
    mov ax, word [bp - 0x0002]       ; 0x65ff
    shl ax, 1                        ; 0x6602
    mov bx, ax                       ; 0x6604
    add bx, bp                       ; 0x6606
    mov word [bx - 0x002a], 0        ; 0x6608
    push word [bx - 0x002a]          ; 0x660d
    mov ax, word [bp - 0x0008]       ; 0x6610
    add ax, strict word 0x2e         ; 0x6613
    push ax                          ; 0x6616
    mov ax, 0x14                     ; 0x6617
    imul word [bp - 0x0002]          ; 0x661a
    add ax, word [bp - 0x0006]       ; 0x661d
    add ax, strict word 0x67         ; 0x6620
    push ax                          ; 0x6623
    mov ax, word [bp - 0x0008]       ; 0x6624
    add ax, strict word 0x26         ; 0x6627
    push ax                          ; 0x662a
    mov ax, 0x14                     ; 0x662b
    imul word [bp - 0x0002]          ; 0x662e
    add ax, word [bp - 0x0006]       ; 0x6631
    add ax, strict word 0x59         ; 0x6634
    push ax                          ; 0x6637
    call loc_242c                    ; 0x6638
    add sp, byte 0x0a                ; 0x663b
    mov ax, word [bp - 0x0008]       ; 0x663e
    add ax, strict word 0x2e         ; 0x6641
    push ax                          ; 0x6644
    mov ax, 0x14                     ; 0x6645
    imul word [bp - 0x0002]          ; 0x6648
    add ax, word [bp - 0x0006]       ; 0x664b
    add ax, strict word 0x67         ; 0x664e
    push ax                          ; 0x6651
    mov ax, word [bp - 0x0008]       ; 0x6652
    add ax, strict word 0x26         ; 0x6655
    push ax                          ; 0x6658
    mov ax, 0x14                     ; 0x6659
    imul word [bp - 0x0002]          ; 0x665c
    add ax, word [bp - 0x0006]       ; 0x665f
    add ax, strict word 0x59         ; 0x6662
    push ax                          ; 0x6665
    call ds_dispatch_e8da            ; 0x6666
    add sp, byte 8                   ; 0x6669
    mov ax, 4                        ; 0x666c
    push ax                          ; 0x666f
    call ds_dispatch_b7e0            ; 0x6670
    pop cx                           ; 0x6673
    jmp short @..local.l235          ; 0x6674
@..local.l233:
    dec word [bp - 0x001e]           ; 0x6676
    jne short @..local.l235          ; 0x6679
    cmp word [bp - 0x001c], byte 0   ; 0x667b
    je short @..local.l234           ; 0x667f
    push word [bp - 0x001c]          ; 0x6681
    mov ax, 0x10                     ; 0x6684
    push ax                          ; 0x6687
    push word [bp + 0x4]             ; 0x6688
    call math_loc_0f54               ; 0x668b
    add sp, byte 6                   ; 0x668e
@..local.l234:
    mov word [data_9050], 0          ; 0x6691
    mov word [bp - 0x0016], 0        ; 0x6697
@..local.l235:
    jmp short @..local.l238          ; 0x669c
@..local.l236:
    cmp ax, strict word 0            ; 0x669e
    jne short @..local.l237          ; 0x66a1
    jmp near @..local.l226           ; 0x66a3
@..local.l237:
    jmp near @..local.l228           ; 0x66a6
@..local.l238:
    cmp word [bp - 0x0016], byte 0   ; 0x66a9
    je short @..local.l239           ; 0x66ad
    jmp near @..local.l211           ; 0x66af
@..local.l239:
    push word [data_905a]            ; 0x66b2
    call api_idx_0004                ; 0x66b6
    pop cx                           ; 0x66b9
    mov word [data_911c], 0x8f       ; 0x66ba
    mov ax, 1                        ; 0x66c0
    push ax                          ; 0x66c3
    push word [bp - 0x0018]          ; 0x66c4
    call ds_dispatch_c459            ; 0x66c7
    add sp, byte 4                   ; 0x66ca
    mov ax, word [bp - 0x000c]       ; 0x66cd
    inc ax                           ; 0x66d0
    push ax                          ; 0x66d1
    mov ax, word [bp - 0x000a]       ; 0x66d2
    inc ax                           ; 0x66d5
    push ax                          ; 0x66d6
    mov ax, word [bp - 0x0008]       ; 0x66d7
    dec ax                           ; 0x66da
    push ax                          ; 0x66db
    mov ax, word [bp - 0x0006]       ; 0x66dc
    dec ax                           ; 0x66df
    push ax                          ; 0x66e0
    call ds_dispatch_e8da            ; 0x66e1
    add sp, byte 8                   ; 0x66e4
    mov ax, word [data_9050]         ; 0x66e7
    ret                              ; 0x66ea
api_idx_0074:
    mov ax, 0xff8c                   ; 0x66eb
    call ds_dispatch_f40b            ; 0x66ee
    mov word [data_911c], 0x8d       ; 0x66f1
    mov word [data_904e], 0xffff     ; 0x66f7
    mov word [bp - 0x0006], 0x37     ; 0x66fd
    mov word [bp - 0x0008], 0x8f     ; 0x6702
    mov word [bp - 0x000a], 0x108    ; 0x6707
    mov word [bp - 0x000c], 0xc5     ; 0x670c
    mov ax, 0x90ee                   ; 0x6711
    push ax                          ; 0x6714
    mov ax, word [bp - 0x000c]       ; 0x6715
    inc ax                           ; 0x6718
    push ax                          ; 0x6719
    mov ax, word [bp - 0x000a]       ; 0x671a
    inc ax                           ; 0x671d
    push ax                          ; 0x671e
    mov ax, word [bp - 0x0008]       ; 0x671f
    dec ax                           ; 0x6722
    push ax                          ; 0x6723
    mov ax, word [bp - 0x0006]       ; 0x6724
    dec ax                           ; 0x6727
    push ax                          ; 0x6728
    call ds_dispatch_c283            ; 0x6729
    add sp, byte 0x0a                ; 0x672c
    mov word [bp - 0x0024], ax       ; 0x672f
    push word [bp - 0x000c]          ; 0x6732
    push word [bp - 0x000a]          ; 0x6735
    push word [bp - 0x0008]          ; 0x6738
    push word [bp - 0x0006]          ; 0x673b
    call ds_dispatch_bc9a            ; 0x673e
    add sp, byte 8                   ; 0x6741
    lea ax, word [bp - 0x004c]       ; 0x6744
    push ax                          ; 0x6747
    push word [bp + 0x6]             ; 0x6748
    call ds_dispatch_b53b            ; 0x674b
    add sp, byte 4                   ; 0x674e
    mov ax, 0xc2                     ; 0x6751
    push ax                          ; 0x6754
    mov ax, 0x1c                     ; 0x6755
    push ax                          ; 0x6758
    call ds_dispatch_e823            ; 0x6759
    add sp, byte 4                   ; 0x675c
    mov ax, word [bp - 0x0008]       ; 0x675f
    add ax, strict word 9            ; 0x6762
    push ax                          ; 0x6765
    lea ax, word [bp - 0x004c]       ; 0x6766
    push ax                          ; 0x6769
    call ds_dispatch_fa90            ; 0x676a
    pop cx                           ; 0x676d
    mov cx, ax                       ; 0x676e
    mov ax, 0xc                      ; 0x6770
    sub ax, cx                       ; 0x6773
    mov cx, 6                        ; 0x6775
    imul cx                          ; 0x6778
    mov cx, data_0002                ; 0x677a
    cwd                              ; 0x677d
    idiv cx                          ; 0x677e
    add ax, word [bp - 0x0006]       ; 0x6780
    add ax, strict word 9            ; 0x6783
    push ax                          ; 0x6786
    call ds_dispatch_e809            ; 0x6787
    add sp, byte 4                   ; 0x678a
    mov ax, 0                        ; 0x678d
    push ax                          ; 0x6790
    lea ax, word [bp - 0x004c]       ; 0x6791
    push ax                          ; 0x6794
    call ds_dispatch_e84e            ; 0x6795
    add sp, byte 4                   ; 0x6798
    lea ax, word [bp - 0x0074]       ; 0x679b
    push ax                          ; 0x679e
    mov ax, word [bp + 0x6]          ; 0x679f
    inc ax                           ; 0x67a2
    push ax                          ; 0x67a3
    call ds_dispatch_b53b            ; 0x67a4
    add sp, byte 4                   ; 0x67a7
    lea ax, word [bp - 0x0074]       ; 0x67aa
    push ax                          ; 0x67ad
    push word [bp + 0x8]             ; 0x67ae
    mov ax, 1                        ; 0x67b1
    push ax                          ; 0x67b4
    mov ax, 0xc                      ; 0x67b5
    push ax                          ; 0x67b8
    mov ax, word [bp - 0x0008]       ; 0x67b9
    add ax, strict word 0x16         ; 0x67bc
    push ax                          ; 0x67bf
    mov ax, word [bp - 0x0006]       ; 0x67c0
    add ax, strict word 8            ; 0x67c3
    push ax                          ; 0x67c6
    call ds_dispatch_c0c1            ; 0x67c7
    add sp, byte 0x0c                ; 0x67ca
    lea ax, word [bp - 0x004c]       ; 0x67cd
    push ax                          ; 0x67d0
    mov ax, word [bp + 0x6]          ; 0x67d1
    inc ax                           ; 0x67d4
    inc ax                           ; 0x67d5
    push ax                          ; 0x67d6
    call ds_dispatch_b53b            ; 0x67d7
    add sp, byte 4                   ; 0x67da
    lea ax, word [bp - 0x004c]       ; 0x67dd
    push ax                          ; 0x67e0
    push word [bp + 0xa]             ; 0x67e1
    mov ax, 1                        ; 0x67e4
    push ax                          ; 0x67e7
    mov ax, 0xc                      ; 0x67e8
    push ax                          ; 0x67eb
    mov ax, word [bp - 0x0008]       ; 0x67ec
    add ax, strict word 0x26         ; 0x67ef
    push ax                          ; 0x67f2
    mov ax, word [bp - 0x0006]       ; 0x67f3
    add ax, strict word 8            ; 0x67f6
    push ax                          ; 0x67f9
    call ds_dispatch_c0c1            ; 0x67fa
    add sp, byte 0x0c                ; 0x67fd
    lea ax, word [bp - 0x004c]       ; 0x6800
    push ax                          ; 0x6803
    mov ax, word [bp + 0x6]          ; 0x6804
    inc ax                           ; 0x6807
    inc ax                           ; 0x6808
    inc ax                           ; 0x6809
    push ax                          ; 0x680a
    call ds_dispatch_b53b            ; 0x680b
    add sp, byte 4                   ; 0x680e
    mov ax, 0xc2                     ; 0x6811
    push ax                          ; 0x6814
    mov ax, 1                        ; 0x6815
    push ax                          ; 0x6818
    call ds_dispatch_e823            ; 0x6819
    add sp, byte 4                   ; 0x681c
    mov ax, word [bp - 0x0008]       ; 0x681f
    add ax, strict word 6            ; 0x6822
    push ax                          ; 0x6825
    lea ax, word [bp - 0x004c]       ; 0x6826
    push ax                          ; 0x6829
    call ds_dispatch_fa90            ; 0x682a
    pop cx                           ; 0x682d
    mov cx, 6                        ; 0x682e
    imul cx                          ; 0x6831
    mov cx, data_0002                ; 0x6833
    cwd                              ; 0x6836
    idiv cx                          ; 0x6837
    mov cx, ax                       ; 0x6839
    mov ax, word [bp - 0x0006]       ; 0x683b
    add ax, 0x93                     ; 0x683e
    sub ax, cx                       ; 0x6841
    push ax                          ; 0x6843
    call ds_dispatch_e809            ; 0x6844
    add sp, byte 4                   ; 0x6847
    mov ax, 0                        ; 0x684a
    push ax                          ; 0x684d
    lea ax, word [bp - 0x004c]       ; 0x684e
    push ax                          ; 0x6851
    call ds_dispatch_e84e            ; 0x6852
    add sp, byte 4                   ; 0x6855
    lea ax, word [bp - 0x004c]       ; 0x6858
    push ax                          ; 0x685b
    mov ax, word [bp + 0x6]          ; 0x685c
    add ax, strict word 4            ; 0x685f
    push ax                          ; 0x6862
    call ds_dispatch_b53b            ; 0x6863
    add sp, byte 4                   ; 0x6866
    mov ax, 0xc2                     ; 0x6869
    push ax                          ; 0x686c
    mov ax, 0x9b                     ; 0x686d
    push ax                          ; 0x6870
    call ds_dispatch_e823            ; 0x6871
    add sp, byte 4                   ; 0x6874
    mov ax, word [bp - 0x0008]       ; 0x6877
    add ax, strict word 0x1e         ; 0x687a
    push ax                          ; 0x687d
    lea ax, word [bp - 0x004c]       ; 0x687e
    push ax                          ; 0x6881
    call ds_dispatch_fa90            ; 0x6882
    pop cx                           ; 0x6885
    mov cx, 6                        ; 0x6886
    imul cx                          ; 0x6889
    mov cx, data_0002                ; 0x688b
    cwd                              ; 0x688e
    idiv cx                          ; 0x688f
    mov cx, ax                       ; 0x6891
    mov ax, word [bp - 0x0006]       ; 0x6893
    add ax, 0x93                     ; 0x6896
    sub ax, cx                       ; 0x6899
    push ax                          ; 0x689b
    call ds_dispatch_e809            ; 0x689c
    add sp, byte 4                   ; 0x689f
    mov ax, 0                        ; 0x68a2
    push ax                          ; 0x68a5
    lea ax, word [bp - 0x004c]       ; 0x68a6
    push ax                          ; 0x68a9
    call ds_dispatch_e84e            ; 0x68aa
    add sp, byte 4                   ; 0x68ad
    mov word [bp - 0x0002], 0        ; 0x68b0
@..api_idx_0074.l1:
    mov ax, word [bp - 0x0008]       ; 0x68b5
    add ax, strict word 0x15         ; 0x68b8
    push ax                          ; 0x68bb
    mov ax, word [bp - 0x0002]       ; 0x68bc
    shl ax, 1                        ; 0x68bf
    shl ax, 1                        ; 0x68c1
    shl ax, 1                        ; 0x68c3
    add ax, word [bp - 0x0006]       ; 0x68c5
    add ax, strict word 0x60         ; 0x68c8
    push ax                          ; 0x68cb
    mov ax, word [bp - 0x0008]       ; 0x68cc
    add ax, strict word 0xf          ; 0x68cf
    push ax                          ; 0x68d2
    mov ax, word [bp - 0x0002]       ; 0x68d3
    shl ax, 1                        ; 0x68d6
    shl ax, 1                        ; 0x68d8
    shl ax, 1                        ; 0x68da
    add ax, word [bp - 0x0006]       ; 0x68dc
    add ax, strict word 0x5c         ; 0x68df
    push ax                          ; 0x68e2
    call ds_dispatch_bd98            ; 0x68e3
    add sp, byte 8                   ; 0x68e6
    mov ax, 0                        ; 0x68e9
    push ax                          ; 0x68ec
    mov ax, word [bp - 0x0008]       ; 0x68ed
    add ax, strict word 0x15         ; 0x68f0
    push ax                          ; 0x68f3
    mov ax, word [bp - 0x0002]       ; 0x68f4
    shl ax, 1                        ; 0x68f7
    shl ax, 1                        ; 0x68f9
    shl ax, 1                        ; 0x68fb
    add ax, word [bp - 0x0006]       ; 0x68fd
    add ax, strict word 0x60         ; 0x6900
    push ax                          ; 0x6903
    mov ax, word [bp - 0x0008]       ; 0x6904
    add ax, strict word 0xf          ; 0x6907
    push ax                          ; 0x690a
    mov ax, word [bp - 0x0002]       ; 0x690b
    shl ax, 1                        ; 0x690e
    shl ax, 1                        ; 0x6910
    shl ax, 1                        ; 0x6912
    add ax, word [bp - 0x0006]       ; 0x6914
    add ax, strict word 0x5c         ; 0x6917
    push ax                          ; 0x691a
    call ds_dispatch_e901            ; 0x691b
    add sp, byte 0x0a                ; 0x691e
    mov ax, word [bp - 0x0008]       ; 0x6921
    add ax, strict word 0x2d         ; 0x6924
    push ax                          ; 0x6927
    mov ax, word [bp - 0x0002]       ; 0x6928
    shl ax, 1                        ; 0x692b
    shl ax, 1                        ; 0x692d
    shl ax, 1                        ; 0x692f
    add ax, word [bp - 0x0006]       ; 0x6931
    add ax, strict word 0x60         ; 0x6934
    push ax                          ; 0x6937
    mov ax, word [bp - 0x0008]       ; 0x6938
    add ax, strict word 0x27         ; 0x693b
    push ax                          ; 0x693e
    mov ax, word [bp - 0x0002]       ; 0x693f
    shl ax, 1                        ; 0x6942
    shl ax, 1                        ; 0x6944
    shl ax, 1                        ; 0x6946
    add ax, word [bp - 0x0006]       ; 0x6948
    add ax, strict word 0x5c         ; 0x694b
    push ax                          ; 0x694e
    call ds_dispatch_bd98            ; 0x694f
    add sp, byte 8                   ; 0x6952
    mov ax, word [bp + 0xe]          ; 0x6955
    mov cx, data_0002                ; 0x6958
    cwd                              ; 0x695b
    idiv cx                          ; 0x695c
    add ax, strict word 4            ; 0x695e
    cmp ax, word [bp - 0x0002]       ; 0x6961
    jle short @..local.l240          ; 0x6964
    mov ax, 0x1a                     ; 0x6966
    jmp short @..local.l241          ; 0x6969
@..local.l240:
    mov ax, 0                        ; 0x696b
@..local.l241:
    push ax                          ; 0x696e
    mov ax, word [bp - 0x0008]       ; 0x696f
    add ax, strict word 0x2d         ; 0x6972
    push ax                          ; 0x6975
    mov ax, word [bp - 0x0002]       ; 0x6976
    shl ax, 1                        ; 0x6979
    shl ax, 1                        ; 0x697b
    shl ax, 1                        ; 0x697d
    add ax, word [bp - 0x0006]       ; 0x697f
    add ax, strict word 0x60         ; 0x6982
    push ax                          ; 0x6985
    mov ax, word [bp - 0x0008]       ; 0x6986
    add ax, strict word 0x27         ; 0x6989
    push ax                          ; 0x698c
    mov ax, word [bp - 0x0002]       ; 0x698d
    shl ax, 1                        ; 0x6990
    shl ax, 1                        ; 0x6992
    shl ax, 1                        ; 0x6994
    add ax, word [bp - 0x0006]       ; 0x6996
    add ax, strict word 0x5c         ; 0x6999
    push ax                          ; 0x699c
    call ds_dispatch_e901            ; 0x699d
    add sp, byte 0x0a                ; 0x69a0
    inc word [bp - 0x0002]           ; 0x69a3
    mov ax, word [bp - 0x0002]       ; 0x69a6
    cmp ax, strict word 0xe          ; 0x69a9
    jge short @..local.l242          ; 0x69ac
    jmp near @..api_idx_0074.l1      ; 0x69ae
@..local.l242:
    mov ax, 0xd                      ; 0x69b1
    push ax                          ; 0x69b4
    mov ax, 0x48                     ; 0x69b5
    push ax                          ; 0x69b8
    mov ax, word [bp - 0x0008]       ; 0x69b9
    add ax, strict word 0x1e         ; 0x69bc
    push ax                          ; 0x69bf
    mov ax, word [bp - 0x0006]       ; 0x69c0
    add ax, strict word 0x50         ; 0x69c3
    push ax                          ; 0x69c6
    mov ax, word [bp - 0x0008]       ; 0x69c7
    add ax, strict word 0x16         ; 0x69ca
    push ax                          ; 0x69cd
    mov ax, word [bp - 0x0006]       ; 0x69ce
    add ax, strict word 8            ; 0x69d1
    push ax                          ; 0x69d4
    mov ax, 0                        ; 0x69d5
    push ax                          ; 0x69d8
    call ds_dispatch_baa6            ; 0x69d9
    add sp, byte 0x0e                ; 0x69dc
    mov ax, 0                        ; 0x69df
    push ax                          ; 0x69e2
    mov ax, 0x1b                     ; 0x69e3
    push ax                          ; 0x69e6
    mov ax, word [bp - 0x0008]       ; 0x69e7
    add ax, strict word 0x2e         ; 0x69ea
    push ax                          ; 0x69ed
    mov ax, word [bp - 0x0006]       ; 0x69ee
    add ax, strict word 0x50         ; 0x69f1
    push ax                          ; 0x69f4
    mov ax, word [bp - 0x0008]       ; 0x69f5
    add ax, strict word 0x26         ; 0x69f8
    push ax                          ; 0x69fb
    mov ax, word [bp - 0x0006]       ; 0x69fc
    add ax, strict word 8            ; 0x69ff
    push ax                          ; 0x6a02
    mov ax, 1                        ; 0x6a03
    push ax                          ; 0x6a06
    call ds_dispatch_baa6            ; 0x6a07
    add sp, byte 0x0e                ; 0x6a0a
    mov ax, 0                        ; 0x6a0d
    push ax                          ; 0x6a10
    push ax                          ; 0x6a11
    push ax                          ; 0x6a12
    push ax                          ; 0x6a13
    push ax                          ; 0x6a14
    mov ax, 0xffff                   ; 0x6a15
    push ax                          ; 0x6a18
    mov ax, data_0002                ; 0x6a19
    push ax                          ; 0x6a1c
    call ds_dispatch_baa6            ; 0x6a1d
    add sp, byte 0x0e                ; 0x6a20
    mov ax, word [bp - 0x000c]       ; 0x6a23
    inc ax                           ; 0x6a26
    push ax                          ; 0x6a27
    mov ax, word [bp - 0x000a]       ; 0x6a28
    inc ax                           ; 0x6a2b
    push ax                          ; 0x6a2c
    mov ax, word [bp - 0x0008]       ; 0x6a2d
    dec ax                           ; 0x6a30
    push ax                          ; 0x6a31
    mov ax, word [bp - 0x0006]       ; 0x6a32
    dec ax                           ; 0x6a35
    push ax                          ; 0x6a36
    call ds_dispatch_e8da            ; 0x6a37
    add sp, byte 8                   ; 0x6a3a
    mov ax, 0x37                     ; 0x6a3d
    cmp word [bp + 0xc], byte 0      ; 0x6a40
    je short @..local.l243           ; 0x6a44
    mov ax, 0x1a                     ; 0x6a46
@..local.l243:
    mov word [bp - 0x001e], ax       ; 0x6a49
    mov word [bp - 0x0018], 1        ; 0x6a4c
    mov word [bp - 0x001c], 0        ; 0x6a51
@..local.l244:
    mov word [bp - 0x0022], 0        ; 0x6a56
    mov word [bp - 0x0002], 0        ; 0x6a5b
    jmp near @..local.l247           ; 0x6a60
@..local.l245:
    push word [bp - 0x0002]          ; 0x6a63
    call ds_dispatch_ca85            ; 0x6a66
    pop cx                           ; 0x6a69
    test ax, ax                      ; 0x6a6a
    je short @..local.l246           ; 0x6a6c
    mov ax, 0x248                    ; 0x6a6e
    imul word [bp - 0x0002]          ; 0x6a71
    mov bx, ax                       ; 0x6a74
    mov ax, word [bx + 0x5c10]       ; 0x6a76
    mov bx, 0x64                     ; 0x6a7a
    imul bx                          ; 0x6a7d
    push ax                          ; 0x6a7f
    push dx                          ; 0x6a80
    mov ax, 0x248                    ; 0x6a81
    imul word [bp - 0x0002]          ; 0x6a84
    mov bx, ax                       ; 0x6a87
    mov ax, word [bx + 0x5c12]       ; 0x6a89
    cwd                              ; 0x6a8d
    mov cx, ax                       ; 0x6a8e
    mov bx, dx                       ; 0x6a90
    pop dx                           ; 0x6a92
    pop ax                           ; 0x6a93
    call ds_dispatch_f99f            ; 0x6a94
    push ax                          ; 0x6a97
    push dx                          ; 0x6a98
    mov ax, 0x248                    ; 0x6a99
    imul word [bp - 0x0002]          ; 0x6a9c
    mov bx, ax                       ; 0x6a9f
    mov al, byte [bx + 0x5d64]       ; 0x6aa1
    sub ah, ah                       ; 0x6aa5
    cwd                              ; 0x6aa7
    mov cx, ax                       ; 0x6aa8
    mov bx, dx                       ; 0x6aaa
    pop dx                           ; 0x6aac
    pop ax                           ; 0x6aad
    push ax                          ; 0x6aae
    push dx                          ; 0x6aaf
    mul bx                           ; 0x6ab0
    mov bx, ax                       ; 0x6ab2
    pop ax                           ; 0x6ab4
    mul cx                           ; 0x6ab5
    add bx, ax                       ; 0x6ab7
    pop ax                           ; 0x6ab9
    mul cx                           ; 0x6aba
    add dx, bx                       ; 0x6abc
    mov cx, 0x64                     ; 0x6abe
    mov bx, 0                        ; 0x6ac1
    call ds_dispatch_f99f            ; 0x6ac4
    mov word [bp - 0x0020], ax       ; 0x6ac7
    mov ax, 0x248                    ; 0x6aca
    imul word [bp - 0x0002]          ; 0x6acd
    mov bx, ax                       ; 0x6ad0
    mov ax, word [bx + 0x5c18]       ; 0x6ad2
    mov cx, 3                        ; 0x6ad6
    cwd                              ; 0x6ad9
    idiv cx                          ; 0x6ada
    add ax, word [bp - 0x0022]       ; 0x6adc
    mov cx, ax                       ; 0x6adf
    mov ax, word [bp - 0x0020]       ; 0x6ae1
    add cx, ax                       ; 0x6ae4
    mov word [bp - 0x0022], cx       ; 0x6ae6
@..local.l246:
    inc word [bp - 0x0002]           ; 0x6ae9
@..local.l247:
    mov ax, word [bp - 0x0002]       ; 0x6aec
    cmp ax, word [data_69c8]         ; 0x6aef
    jge short @..local.l248          ; 0x6af3
    jmp near @..local.l245           ; 0x6af5
@..local.l248:
    cmp word [bp - 0x0022], byte 0   ; 0x6af8
    jg short @..local.l249           ; 0x6afc
    mov ax, word [bp + 0xc]          ; 0x6afe
    inc ax                           ; 0x6b01
    mov word [data_9050], ax         ; 0x6b02
    mov word [bp - 0x0018], 0        ; 0x6b05
@..local.l249:
    mov ax, word [bp - 0x001c]       ; 0x6b0a
    mov word [bp - 0x0002], ax       ; 0x6b0d
    push ax                          ; 0x6b10
    call ds_dispatch_ca85            ; 0x6b11
    pop cx                           ; 0x6b14
    test ax, ax                      ; 0x6b15
    jne short @..local.l250          ; 0x6b17
    jmp near @..local.l257           ; 0x6b19
@..local.l250:
    mov ax, 0x248                    ; 0x6b1c
    imul word [bp - 0x0002]          ; 0x6b1f
    mov bx, ax                       ; 0x6b22
    dec word [bx + 0x5c10]           ; 0x6b24
    jg short @..local.l251           ; 0x6b28
    mov ax, 6                        ; 0x6b2a
    push ax                          ; 0x6b2d
    call ds_dispatch_b7a9            ; 0x6b2e
    pop cx                           ; 0x6b31
    add ax, strict word 6            ; 0x6b32
    push ax                          ; 0x6b35
    mov ax, 0x248                    ; 0x6b36
    imul word [bp - 0x0002]          ; 0x6b39
    mov bx, ax                       ; 0x6b3c
    pop ax                           ; 0x6b3e
    mov byte [bx + 0x5d5c], al       ; 0x6b3f
    mov word [bx + 0x5c10], 0        ; 0x6b43
@..local.l251:
    mov ax, 0                        ; 0x6b49
    push ax                          ; 0x6b4c
    push word [bp - 0x0002]          ; 0x6b4d
    call ds_dispatch_cb3a            ; 0x6b50
    add sp, byte 4                   ; 0x6b53
    mov ax, word [bp - 0x0002]       ; 0x6b56
    mov cx, data_0002                ; 0x6b59
    cwd                              ; 0x6b5c
    idiv cx                          ; 0x6b5d
    mov ax, dx                       ; 0x6b5f
    mov cx, 0xfc                     ; 0x6b61
    imul cx                          ; 0x6b64
    add ax, strict word 5            ; 0x6b66
    mov word [bp - 0x0012], ax       ; 0x6b69
    mov ax, word [bp - 0x0002]       ; 0x6b6c
    mov cx, data_0002                ; 0x6b6f
    cwd                              ; 0x6b72
    idiv cx                          ; 0x6b73
    mov cx, 0x2d                     ; 0x6b75
    imul cx                          ; 0x6b78
    add ax, strict word 0x12         ; 0x6b7a
    mov word [bp - 0x0014], ax       ; 0x6b7d
    mov ax, word [bp - 0x0002]       ; 0x6b80
    jmp near @..local.l255           ; 0x6b83
@..local.l252:
    mov ax, 0x8d                     ; 0x6b86
    push ax                          ; 0x6b89
    mov ax, word [bp - 0x0012]       ; 0x6b8a
    add ax, strict word 0x3b         ; 0x6b8d
    push ax                          ; 0x6b90
    push word [bp - 0x0014]          ; 0x6b91
    push word [bp - 0x0012]          ; 0x6b94
    call ds_dispatch_e8da            ; 0x6b97
    add sp, byte 8                   ; 0x6b9a
    mov ax, word [bp - 0x0014]       ; 0x6b9d
    add ax, strict word 0x2b         ; 0x6ba0
    push ax                          ; 0x6ba3
    mov ax, 0x35                     ; 0x6ba4
    push ax                          ; 0x6ba7
    push word [bp - 0x0014]          ; 0x6ba8
    push word [bp - 0x0012]          ; 0x6bab
    call ds_dispatch_e8da            ; 0x6bae
    add sp, byte 8                   ; 0x6bb1
    jmp short @..local.l257          ; 0x6bb4
@..local.l253:
    mov ax, 0x8d                     ; 0x6bb6
    push ax                          ; 0x6bb9
    mov ax, word [bp - 0x0012]       ; 0x6bba
    add ax, strict word 0x3b         ; 0x6bbd
    push ax                          ; 0x6bc0
    push word [bp - 0x0014]          ; 0x6bc1
    push word [bp - 0x0012]          ; 0x6bc4
    call ds_dispatch_e8da            ; 0x6bc7
    add sp, byte 8                   ; 0x6bca
    mov ax, word [bp - 0x0014]       ; 0x6bcd
    add ax, strict word 0x2b         ; 0x6bd0
    push ax                          ; 0x6bd3
    mov ax, word [bp - 0x0012]       ; 0x6bd4
    add ax, strict word 0x3b         ; 0x6bd7
    push ax                          ; 0x6bda
    push word [bp - 0x0014]          ; 0x6bdb
    mov ax, 0x10a                    ; 0x6bde
    push ax                          ; 0x6be1
    call ds_dispatch_e8da            ; 0x6be2
    add sp, byte 8                   ; 0x6be5
    jmp short @..local.l257          ; 0x6be8
@..local.l254:
    mov ax, word [bp - 0x0014]       ; 0x6bea
    add ax, strict word 0x2b         ; 0x6bed
    push ax                          ; 0x6bf0
    mov ax, word [bp - 0x0012]       ; 0x6bf1
    add ax, strict word 0x3b         ; 0x6bf4
    push ax                          ; 0x6bf7
    push word [bp - 0x0014]          ; 0x6bf8
    push word [bp - 0x0012]          ; 0x6bfb
    call ds_dispatch_e8da            ; 0x6bfe
    add sp, byte 8                   ; 0x6c01
    jmp short @..local.l257          ; 0x6c04
@..local.l255:
    cmp ax, strict word 4            ; 0x6c06
    jne short @..local.l256          ; 0x6c09
    jmp near @..local.l252           ; 0x6c0b
@..local.l256:
    cmp ax, strict word 5            ; 0x6c0e
    je short @..local.l253           ; 0x6c11
    jmp short @..local.l254          ; 0x6c13
@..local.l257:
    mov ax, word [bp - 0x001c]       ; 0x6c15
    inc ax                           ; 0x6c18
    cwd                              ; 0x6c19
    idiv word [data_69c8]            ; 0x6c1a
    mov word [bp - 0x001c], dx       ; 0x6c1e
    push word [bp - 0x0022]          ; 0x6c21
    call ds_dispatch_b7a9            ; 0x6c24
    pop cx                           ; 0x6c27
    push ax                          ; 0x6c28
    push word [bp - 0x0022]          ; 0x6c29
    call ds_dispatch_b7a9            ; 0x6c2c
    pop cx                           ; 0x6c2f
    mov cx, ax                       ; 0x6c30
    pop ax                           ; 0x6c32
    add ax, cx                       ; 0x6c33
    add ax, word [bp - 0x0022]       ; 0x6c35
    add ax, word [bp - 0x0022]       ; 0x6c38
    mov cx, 4                        ; 0x6c3b
    cwd                              ; 0x6c3e
    idiv cx                          ; 0x6c3f
    mov word [bp - 0x001a], ax       ; 0x6c41
    mov word [bp - 0x0002], 0        ; 0x6c44
@..local.l258:
    mov ax, word [bp - 0x001a]       ; 0x6c49
    add ax, strict word 0xffe2       ; 0x6c4c
    mov cx, 6                        ; 0x6c4f
    cwd                              ; 0x6c52
    idiv cx                          ; 0x6c53
    cmp ax, word [bp - 0x0002]       ; 0x6c55
    jle short @..local.l259          ; 0x6c58
    mov ax, word [bp - 0x001e]       ; 0x6c5a
    jmp short @..local.l260          ; 0x6c5d
@..local.l259:
    mov ax, 0                        ; 0x6c5f
@..local.l260:
    push ax                          ; 0x6c62
    mov ax, word [bp - 0x0008]       ; 0x6c63
    add ax, strict word 0x15         ; 0x6c66
    push ax                          ; 0x6c69
    mov ax, word [bp - 0x0002]       ; 0x6c6a
    shl ax, 1                        ; 0x6c6d
    shl ax, 1                        ; 0x6c6f
    shl ax, 1                        ; 0x6c71
    add ax, word [bp - 0x0006]       ; 0x6c73
    add ax, strict word 0x60         ; 0x6c76
    push ax                          ; 0x6c79
    mov ax, word [bp - 0x0008]       ; 0x6c7a
    add ax, strict word 0xf          ; 0x6c7d
    push ax                          ; 0x6c80
    mov ax, word [bp - 0x0002]       ; 0x6c81
    shl ax, 1                        ; 0x6c84
    shl ax, 1                        ; 0x6c86
    shl ax, 1                        ; 0x6c88
    add ax, word [bp - 0x0006]       ; 0x6c8a
    add ax, strict word 0x5c         ; 0x6c8d
    push ax                          ; 0x6c90
    call ds_dispatch_e901            ; 0x6c91
    add sp, byte 0x0a                ; 0x6c94
    inc word [bp - 0x0002]           ; 0x6c97
    mov ax, word [bp - 0x0002]       ; 0x6c9a
    cmp ax, strict word 0xe          ; 0x6c9d
    jl short @..local.l258           ; 0x6ca0
    mov ax, word [bp - 0x0008]       ; 0x6ca2
    add ax, strict word 0x15         ; 0x6ca5
    push ax                          ; 0x6ca8
    mov ax, word [bp - 0x0006]       ; 0x6ca9
    add ax, 0xcc                     ; 0x6cac
    push ax                          ; 0x6caf
    mov ax, word [bp - 0x0008]       ; 0x6cb0
    add ax, strict word 0xf          ; 0x6cb3
    push ax                          ; 0x6cb6
    mov ax, word [bp - 0x0006]       ; 0x6cb7
    add ax, strict word 0x5c         ; 0x6cba
    push ax                          ; 0x6cbd
    call ds_dispatch_e8da            ; 0x6cbe
    add sp, byte 8                   ; 0x6cc1
    call math_loc_086b               ; 0x6cc4
    test ax, ax                      ; 0x6cc7
    jne short @..local.l261          ; 0x6cc9
    mov ax, 0x19                     ; 0x6ccb
    push ax                          ; 0x6cce
    call ds_dispatch_e489            ; 0x6ccf
    pop cx                           ; 0x6cd2
@..local.l261:
    mov ax, 0x59fe                   ; 0x6cd3
    push ax                          ; 0x6cd6
    call ds_dispatch_b90d            ; 0x6cd7
    pop cx                           ; 0x6cda
    dec ax                           ; 0x6cdb
    mov word [bp - 0x0016], ax       ; 0x6cdc
    cmp word [data_5b3e], byte 1     ; 0x6cdf
    je short @..local.l262           ; 0x6ce4
    jmp near @..local.l271           ; 0x6ce6
@..local.l262:
    jmp near @..local.l269           ; 0x6ce9
@..local.l263:
    cmp word [bp + 0x8], byte 0      ; 0x6cec
    jne short @..local.l264          ; 0x6cf0
    jmp near @..local.l266           ; 0x6cf2
@..local.l264:
    mov ax, 1                        ; 0x6cf5
    push ax                          ; 0x6cf8
    mov ax, word [bp - 0x0008]       ; 0x6cf9
    add ax, strict word 0x1e         ; 0x6cfc
    push ax                          ; 0x6cff
    mov ax, word [bp - 0x0006]       ; 0x6d00
    add ax, strict word 0x50         ; 0x6d03
    push ax                          ; 0x6d06
    mov ax, word [bp - 0x0008]       ; 0x6d07
    add ax, strict word 0x16         ; 0x6d0a
    push ax                          ; 0x6d0d
    mov ax, word [bp - 0x0006]       ; 0x6d0e
    add ax, strict word 8            ; 0x6d11
    push ax                          ; 0x6d14
    call loc_242c                    ; 0x6d15
    add sp, byte 0x0a                ; 0x6d18
    mov ax, 0                        ; 0x6d1b
    push ax                          ; 0x6d1e
    mov ax, 0x1a                     ; 0x6d1f
    push ax                          ; 0x6d22
    call ds_dispatch_e823            ; 0x6d23
    add sp, byte 4                   ; 0x6d26
    mov ax, word [bp - 0x0008]       ; 0x6d29
    add ax, strict word 0x18         ; 0x6d2c
    push ax                          ; 0x6d2f
    lea ax, word [bp - 0x0074]       ; 0x6d30
    push ax                          ; 0x6d33
    call ds_dispatch_fa90            ; 0x6d34
    pop cx                           ; 0x6d37
    mov cx, ax                       ; 0x6d38
    mov ax, 0xc                      ; 0x6d3a
    sub ax, cx                       ; 0x6d3d
    mov cx, 6                        ; 0x6d3f
    imul cx                          ; 0x6d42
    mov cx, data_0002                ; 0x6d44
    cwd                              ; 0x6d47
    idiv cx                          ; 0x6d48
    add ax, word [bp - 0x0006]       ; 0x6d4a
    add ax, strict word 9            ; 0x6d4d
    push ax                          ; 0x6d50
    call ds_dispatch_e809            ; 0x6d51
    add sp, byte 4                   ; 0x6d54
    mov ax, 0                        ; 0x6d57
    push ax                          ; 0x6d5a
    lea ax, word [bp - 0x0074]       ; 0x6d5b
    push ax                          ; 0x6d5e
    call ds_dispatch_e84e            ; 0x6d5f
    add sp, byte 4                   ; 0x6d62
    mov ax, word [bp - 0x0008]       ; 0x6d65
    add ax, strict word 0x1e         ; 0x6d68
    push ax                          ; 0x6d6b
    mov ax, word [bp - 0x0006]       ; 0x6d6c
    add ax, strict word 0x50         ; 0x6d6f
    push ax                          ; 0x6d72
    mov ax, word [bp - 0x0008]       ; 0x6d73
    add ax, strict word 0x16         ; 0x6d76
    push ax                          ; 0x6d79
    mov ax, word [bp - 0x0006]       ; 0x6d7a
    add ax, strict word 8            ; 0x6d7d
    push ax                          ; 0x6d80
    call ds_dispatch_e8da            ; 0x6d81
    add sp, byte 8                   ; 0x6d84
    mov ax, 4                        ; 0x6d87
    push ax                          ; 0x6d8a
    call ds_dispatch_b7e0            ; 0x6d8b
    pop cx                           ; 0x6d8e
    mov ax, word [bp + 0xe]          ; 0x6d8f
    mov cx, data_0002                ; 0x6d92
    cwd                              ; 0x6d95
    idiv cx                          ; 0x6d96
    add ax, strict word 4            ; 0x6d98
    push ax                          ; 0x6d9b
    mov ax, word [bp - 0x001a]       ; 0x6d9c
    add ax, strict word 0xffe2       ; 0x6d9f
    mov cx, 6                        ; 0x6da2
    cwd                              ; 0x6da5
    idiv cx                          ; 0x6da6
    mov cx, ax                       ; 0x6da8
    pop ax                           ; 0x6daa
    cmp ax, cx                       ; 0x6dab
    jg short @..local.l265           ; 0x6dad
    mov word [data_9050], 0          ; 0x6daf
    mov word [bp - 0x0018], 0        ; 0x6db5
    jmp short @..local.l266          ; 0x6dba
@..local.l265:
    mov ax, word [bp + 0xc]          ; 0x6dbc
    inc ax                           ; 0x6dbf
    mov word [data_9050], ax         ; 0x6dc0
    mov word [bp - 0x0018], 0        ; 0x6dc3
@..local.l266:
    jmp short @..local.l271          ; 0x6dc8
@..local.l267:
    cmp word [bp + 0xa], byte 0      ; 0x6dca
    je short @..local.l268           ; 0x6dce
    mov ax, 1                        ; 0x6dd0
    push ax                          ; 0x6dd3
    push ax                          ; 0x6dd4
    mov ax, 0xc                      ; 0x6dd5
    push ax                          ; 0x6dd8
    mov ax, word [bp - 0x0008]       ; 0x6dd9
    add ax, strict word 0x26         ; 0x6ddc
    push ax                          ; 0x6ddf
    mov ax, word [bp - 0x0006]       ; 0x6de0
    add ax, strict word 8            ; 0x6de3
    push ax                          ; 0x6de6
    call ds_dispatch_be5f            ; 0x6de7
    add sp, byte 0x0a                ; 0x6dea
    mov ax, 0                        ; 0x6ded
    push ax                          ; 0x6df0
    mov ax, 1                        ; 0x6df1
    push ax                          ; 0x6df4
    mov ax, 0xc                      ; 0x6df5
    push ax                          ; 0x6df8
    mov ax, word [bp - 0x0008]       ; 0x6df9
    add ax, strict word 0x26         ; 0x6dfc
    push ax                          ; 0x6dff
    mov ax, word [bp - 0x0006]       ; 0x6e00
    add ax, strict word 8            ; 0x6e03
    push ax                          ; 0x6e06
    call ds_dispatch_be5f            ; 0x6e07
    add sp, byte 0x0a                ; 0x6e0a
    mov word [data_9050], 0xffff     ; 0x6e0d
    mov word [bp - 0x0018], 0        ; 0x6e13
@..local.l268:
    jmp short @..local.l271          ; 0x6e18
@..local.l269:
    cmp ax, strict word 0            ; 0x6e1a
    jne short @..local.l270          ; 0x6e1d
    jmp near @..local.l263           ; 0x6e1f
@..local.l270:
    cmp ax, strict word 1            ; 0x6e22
    je short @..local.l267           ; 0x6e25
@..local.l271:
    cmp word [bp - 0x0018], byte 0   ; 0x6e27
    je short @..local.l272           ; 0x6e2b
    jmp near @..local.l244           ; 0x6e2d
@..local.l272:
    push word [data_905a]            ; 0x6e30
    call api_idx_0004                ; 0x6e34
    pop cx                           ; 0x6e37
    mov word [data_911c], 0x8f       ; 0x6e38
    mov ax, 1                        ; 0x6e3e
    push ax                          ; 0x6e41
    push word [bp - 0x0024]          ; 0x6e42
    call ds_dispatch_c459            ; 0x6e45
    add sp, byte 4                   ; 0x6e48
    mov ax, word [bp - 0x000c]       ; 0x6e4b
    inc ax                           ; 0x6e4e
    push ax                          ; 0x6e4f
    mov ax, word [bp - 0x000a]       ; 0x6e50
    inc ax                           ; 0x6e53
    push ax                          ; 0x6e54
    mov ax, word [bp - 0x0008]       ; 0x6e55
    dec ax                           ; 0x6e58
    push ax                          ; 0x6e59
    mov ax, word [bp - 0x0006]       ; 0x6e5a
    dec ax                           ; 0x6e5d
    push ax                          ; 0x6e5e
    call ds_dispatch_e8da            ; 0x6e5f
    add sp, byte 8                   ; 0x6e62
    mov ax, word [data_9050]         ; 0x6e65
    ret                              ; 0x6e68
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x6e69
    call ds_dispatch_f40b            ; 0x6e6c
    mov ax, word [bp + 0x6]          ; 0x6e6f
    mov word [bp - 0x0002], ax       ; 0x6e72
    jmp short @..api_idx_0002_5.l2   ; 0x6e75
@..api_idx_0002_5.l1:
    mov ax, word [bp - 0x0002]       ; 0x6e77
    mov cx, 8                        ; 0x6e7a
    cwd                              ; 0x6e7d
    idiv cx                          ; 0x6e7e
    mov si, ax                       ; 0x6e80
    mov bx, word [bp + 0x4]          ; 0x6e82
    mov al, byte [bx + si]           ; 0x6e85
    cbw                              ; 0x6e87
    push ax                          ; 0x6e88
    mov ax, word [bp - 0x0002]       ; 0x6e89
    cwd                              ; 0x6e8c
    idiv cx                          ; 0x6e8d
    mov cx, dx                       ; 0x6e8f
    mov dx, 1                        ; 0x6e91
    shl dx, cl                       ; 0x6e94
    mov cx, dx                       ; 0x6e96
    not cx                           ; 0x6e98
    pop ax                           ; 0x6e9a
    and ax, cx                       ; 0x6e9b
    mov byte [bx + si], al           ; 0x6e9d
    inc word [bp - 0x0002]           ; 0x6e9f
@..api_idx_0002_5.l2:
    mov ax, word [bp + 0x6]          ; 0x6ea2
    inc ax                           ; 0x6ea5
    inc ax                           ; 0x6ea6
    cmp ax, word [bp - 0x0002]       ; 0x6ea7
    jg short @..api_idx_0002_5.l1    ; 0x6eaa
    ret                              ; 0x6eac
api_idx_0004_11:
    mov ax, 0xfffc                   ; 0x6ead
    call ds_dispatch_f40b            ; 0x6eb0
    mov cx, word [bp + 0x4]          ; 0x6eb3
    shl cx, 1                        ; 0x6eb6
    mov ax, word [data_0e12]         ; 0x6eb8
    add ax, cx                       ; 0x6ebb
    add ax, 0x3c0                    ; 0x6ebd
    mov word [bp - 0x0004], ax       ; 0x6ec0
    mov ax, word [data_82ee]         ; 0x6ec3
    shl ax, 1                        ; 0x6ec6
    mov word [bp - 0x0002], ax       ; 0x6ec8
    mov cx, 8                        ; 0x6ecb
    cwd                              ; 0x6ece
    idiv cx                          ; 0x6ecf
    mov si, ax                       ; 0x6ed1
    mov bx, word [bp - 0x0004]       ; 0x6ed3
    mov al, byte [bx + si]           ; 0x6ed6
    cbw                              ; 0x6ed8
    push ax                          ; 0x6ed9
    mov ax, word [bp - 0x0002]       ; 0x6eda
    cwd                              ; 0x6edd
    idiv cx                          ; 0x6ede
    mov cx, dx                       ; 0x6ee0
    mov dx, 1                        ; 0x6ee2
    shl dx, cl                       ; 0x6ee5
    mov cx, dx                       ; 0x6ee7
    not cx                           ; 0x6ee9
    pop ax                           ; 0x6eeb
    and ax, cx                       ; 0x6eec
    mov byte [bx + si], al           ; 0x6eee
    mov ax, word [bp - 0x0002]       ; 0x6ef0
    inc ax                           ; 0x6ef3
    mov cx, 8                        ; 0x6ef4
    cwd                              ; 0x6ef7
    idiv cx                          ; 0x6ef8
    mov si, ax                       ; 0x6efa
    mov al, byte [bx + si]           ; 0x6efc
    cbw                              ; 0x6efe
    push ax                          ; 0x6eff
    mov ax, word [bp - 0x0002]       ; 0x6f00
    inc ax                           ; 0x6f03
    cwd                              ; 0x6f04
    idiv cx                          ; 0x6f05
    mov cx, dx                       ; 0x6f07
    mov dx, 1                        ; 0x6f09
    shl dx, cl                       ; 0x6f0c
    mov cx, dx                       ; 0x6f0e
    pop ax                           ; 0x6f10
    or ax, cx                        ; 0x6f11
    mov byte [bx + si], al           ; 0x6f13
    mov ax, 0                        ; 0x6f15
    push ax                          ; 0x6f18
    push ax                          ; 0x6f19
    push ax                          ; 0x6f1a
    mov ax, word [bp + 0x4]          ; 0x6f1b
    shl ax, 1                        ; 0x6f1e
    mov si, ax                       ; 0x6f20
    mov bx, word [data_0e12]         ; 0x6f22
    push word [bx + si + 0x3c0]      ; 0x6f26
    mov ax, 0                        ; 0x6f2a
    push ax                          ; 0x6f2d
    push ax                          ; 0x6f2e
    push word [bp + 0x4]             ; 0x6f2f
    mov ax, 6                        ; 0x6f32
    push ax                          ; 0x6f35
    push word [data_830c]            ; 0x6f36
    call api_idx_0004_10             ; 0x6f3a
    add sp, byte 0x12                ; 0x6f3d
    ret                              ; 0x6f40
loc_6f41:
    mov ax, 0                        ; 0x6f41
    call ds_dispatch_f40b            ; 0x6f44
    mov ax, word [data_82ee]         ; 0x6f47
    shl ax, 1                        ; 0x6f4a
    mov bx, ax                       ; 0x6f4c
    mov word [bx - 0x7302], 0        ; 0x6f4e
    push ax                          ; 0x6f54
    mov cx, word [bp + 0x4]          ; 0x6f55
    shl cx, 1                        ; 0x6f58
    mov ax, word [data_0e12]         ; 0x6f5a
    add ax, cx                       ; 0x6f5d
    add ax, 0x3c0                    ; 0x6f5f
    push ax                          ; 0x6f62
    call api_idx_0002_5              ; 0x6f63
    add sp, byte 4                   ; 0x6f66
    mov ax, 0                        ; 0x6f69
    push ax                          ; 0x6f6c
    push ax                          ; 0x6f6d
    push ax                          ; 0x6f6e
    mov ax, word [bp + 0x4]          ; 0x6f6f
    shl ax, 1                        ; 0x6f72
    mov si, ax                       ; 0x6f74
    mov bx, word [data_0e12]         ; 0x6f76
    push word [bx + si + 0x3c0]      ; 0x6f7a
    mov ax, 0                        ; 0x6f7e
    push ax                          ; 0x6f81
    push ax                          ; 0x6f82
    push word [bp + 0x4]             ; 0x6f83
    mov ax, 6                        ; 0x6f86
    push ax                          ; 0x6f89
    push word [data_830c]            ; 0x6f8a
    call api_idx_0004_10             ; 0x6f8e
    add sp, byte 0x12                ; 0x6f91
    mov ax, word [bp + 0x4]          ; 0x6f94
    shl ax, 1                        ; 0x6f97
    mov si, ax                       ; 0x6f99
    mov bx, word [data_0e12]         ; 0x6f9b
    cmp word [bx + si], byte 0       ; 0x6f9f
    jle short @..local.l273          ; 0x6fa2
    mov ax, 0                        ; 0x6fa4
    push ax                          ; 0x6fa7
    push word [bx + si]              ; 0x6fa8
    mov ax, word [data_830c]         ; 0x6faa
    mov cx, 4                        ; 0x6fad
    shl ax, cl                       ; 0x6fb0
    add ax, 0x8d14                   ; 0x6fb2
    push ax                          ; 0x6fb5
    call ds_dispatch_ec41            ; 0x6fb6
    add sp, byte 6                   ; 0x6fb9
    mov ax, 0                        ; 0x6fbc
    push ax                          ; 0x6fbf
    mov ax, word [bp + 0x4]          ; 0x6fc0
    shl ax, 1                        ; 0x6fc3
    mov si, ax                       ; 0x6fc5
    mov bx, word [data_0e12]         ; 0x6fc7
    push word [bx + si]              ; 0x6fcb
    mov ax, word [data_830c]         ; 0x6fcd
    mov cx, 4                        ; 0x6fd0
    shl ax, cl                       ; 0x6fd3
    add ax, 0x5642                   ; 0x6fd5
    push ax                          ; 0x6fd8
    call ds_dispatch_ec41            ; 0x6fd9
    add sp, byte 6                   ; 0x6fdc
    mov ax, word [bp + 0x4]          ; 0x6fdf
    inc ax                           ; 0x6fe2
    mov word [data_8d12], ax         ; 0x6fe3
@..local.l273:
    cmp word [bp + 0x6], byte 0      ; 0x6fe6
    je short @..local.l274           ; 0x6fea
    mov ax, 1                        ; 0x6fec
    push ax                          ; 0x6fef
    call ds_dispatch_b7e0            ; 0x6ff0
    pop cx                           ; 0x6ff3
@..local.l274:
    ret                              ; 0x6ff4
api_idx_0034:
    mov ax, 0xffcc                   ; 0x6ff5
    call ds_dispatch_f40b            ; 0x6ff8
    call ds_dispatch_ec17            ; 0x6ffb
    mov ax, word [bp + 0x6]          ; 0x6ffe
    shl ax, 1                        ; 0x7001
    mov si, ax                       ; 0x7003
    mov bx, word [data_0e12]         ; 0x7005
    mov ax, word [bx + si + 0x1e0]   ; 0x7009
    mov word [bp - 0x0006], ax       ; 0x700d
    mov si, word [bp + 0x6]          ; 0x7010
    mov al, byte [bx + si + 0xa50]   ; 0x7013
    sub ah, ah                       ; 0x7017
    mov word [bp - 0x0002], ax       ; 0x7019
    mov ax, 5                        ; 0x701c
    push ax                          ; 0x701f
    mov ax, 0                        ; 0x7020
    push ax                          ; 0x7023
    push word [bp - 0x0002]          ; 0x7024
    call ds_dispatch_ed3a            ; 0x7027
    add sp, byte 6                   ; 0x702a
    mov word [bp - 0x0004], ax       ; 0x702d
    mov cx, 3                        ; 0x7030
    cwd                              ; 0x7033
    idiv cx                          ; 0x7034
    inc ax                           ; 0x7036
    mov word [bp - 0x000a], ax       ; 0x7037
    cmp ax, strict word 6            ; 0x703a
    jle short @..api_idx_0034.l1     ; 0x703d
    mov word [bp - 0x000a], 6        ; 0x703f
@..api_idx_0034.l1:
    mov word [bp - 0x000c], 0        ; 0x7044
    mov ax, word [bp + 0x6]          ; 0x7049
    shl ax, 1                        ; 0x704c
    mov si, ax                       ; 0x704e
    mov bx, word [data_0e12]         ; 0x7050
    mov ax, word [bx + si + 0x3c0]   ; 0x7054
    mov word [bp - 0x0002], ax       ; 0x7058
    mov ax, data_0002                ; 0x705b
    push ax                          ; 0x705e
    mov ax, word [data_82ee]         ; 0x705f
    shl ax, 1                        ; 0x7062
    push ax                          ; 0x7064
    push word [bp - 0x0002]          ; 0x7065
    call ds_dispatch_ed3a            ; 0x7068
    add sp, byte 6                   ; 0x706b
    cmp ax, strict word 2            ; 0x706e
    jne short @..api_idx_0034.l2     ; 0x7071
    mov ax, word [data_8f46]         ; 0x7073
    add ax, word [data_8f44]         ; 0x7076
    cwd                              ; 0x707a
    idiv word [bp - 0x000a]          ; 0x707b
    mov ax, dx                       ; 0x707e
    shl ax, 1                        ; 0x7080
    mov bx, ax                       ; 0x7082
    mov word [bx - 0x69a2], 0x64     ; 0x7084
    mov word [bp - 0x000c], 1        ; 0x708a
@..api_idx_0034.l2:
    cmp word [bp + 0x8], byte 0      ; 0x708f
    jne short @..api_idx_0034.l3     ; 0x7093
    push word [bp - 0x0004]          ; 0x7095
    push word [bp - 0x000c]          ; 0x7098
    push word [bp - 0x000a]          ; 0x709b
    mov ax, 1                        ; 0x709e
    push ax                          ; 0x70a1
    mov ax, 0x83c                    ; 0x70a2
    push ax                          ; 0x70a5
    push word [bp + 0x4]             ; 0x70a6
    call api_idx_006a                ; 0x70a9
    add sp, byte 0x0c                ; 0x70ac
    mov word [bp - 0x0008], ax       ; 0x70af
    jmp short @..api_idx_0034.l6     ; 0x70b2
@..api_idx_0034.l3:
    mov ax, word [bp - 0x0004]       ; 0x70b4
    cmp word [bp - 0x000c], byte 0   ; 0x70b7
    je short @..api_idx_0034.l4      ; 0x70bb
    mov ax, 0x14                     ; 0x70bd
@..api_idx_0034.l4:
    push ax                          ; 0x70c0
    push word [bp - 0x000c]          ; 0x70c1
    mov ax, 1                        ; 0x70c4
    push ax                          ; 0x70c7
    push ax                          ; 0x70c8
    mov ax, 0x837                    ; 0x70c9
    cmp word [data_5b6e], byte 1     ; 0x70cc
    jne short @..api_idx_0034.l5     ; 0x70d1
    mov ax, 0x844                    ; 0x70d3
@..api_idx_0034.l5:
    push ax                          ; 0x70d6
    push word [bp + 0x4]             ; 0x70d7
    call api_idx_0074                ; 0x70da
    add sp, byte 0x0c                ; 0x70dd
    mov word [bp - 0x0008], ax       ; 0x70e0
@..api_idx_0034.l6:
    cmp word [bp - 0x0008], byte 0xff ; 0x70e3
    je short @..api_idx_0034.l10     ; 0x70e7
    cmp word [bp - 0x0008], byte 0   ; 0x70e9
    jne short @..api_idx_0034.l7     ; 0x70ed
    mov ax, 1                        ; 0x70ef
    push ax                          ; 0x70f2
    push word [bp + 0x6]             ; 0x70f3
    call loc_6f41                    ; 0x70f6
    add sp, byte 4                   ; 0x70f9
    jmp short @..api_idx_0034.l8     ; 0x70fc
@..api_idx_0034.l7:
    cmp word [bp - 0x0008], byte 2   ; 0x70fe
    jne short @..api_idx_0034.l8     ; 0x7102
    push word [bp + 0x6]             ; 0x7104
    call api_idx_0004_11             ; 0x7107
    pop cx                           ; 0x710a
@..api_idx_0034.l8:
    lea ax, word [bp - 0x0034]       ; 0x710b
    push ax                          ; 0x710e
    mov ax, word [bp - 0x0008]       ; 0x710f
    add ax, 0x841                    ; 0x7112
    push ax                          ; 0x7115
    call ds_dispatch_b53b            ; 0x7116
    add sp, byte 4                   ; 0x7119
    cmp word [bp - 0x0008], byte 0   ; 0x711c
    jne short @..api_idx_0034.l9     ; 0x7120
    mov ax, 0x55                     ; 0x7122
    push ax                          ; 0x7125
    mov ax, 0                        ; 0x7126
    push ax                          ; 0x7129
    mov ax, 1                        ; 0x712a
    push ax                          ; 0x712d
    lea ax, word [bp - 0x0034]       ; 0x712e
    push ax                          ; 0x7131
    call math_loc_0eb2               ; 0x7132
    add sp, byte 8                   ; 0x7135
    jmp short @..api_idx_0034.l10    ; 0x7138
@..api_idx_0034.l9:
    mov ax, 0x16                     ; 0x713a
    push ax                          ; 0x713d
    mov ax, 1                        ; 0x713e
    push ax                          ; 0x7141
    push ax                          ; 0x7142
    lea ax, word [bp - 0x0034]       ; 0x7143
    push ax                          ; 0x7146
    call math_loc_0eb2               ; 0x7147
    add sp, byte 8                   ; 0x714a
@..api_idx_0034.l10:
    mov ax, word [bp - 0x0008]       ; 0x714d
    ret                              ; 0x7150
api_idx_0072:
    mov ax, 0xff8e                   ; 0x7151
    call ds_dispatch_f40b            ; 0x7154
    mov ax, word [bp + 0x4]          ; 0x7157
    shl ax, 1                        ; 0x715a
    mov si, ax                       ; 0x715c
    mov bx, word [data_0e12]         ; 0x715e
    mov ax, word [bx + si + 0x1e0]   ; 0x7162
    mov word [bp - 0x0022], ax       ; 0x7166
    mov si, word [bp + 0x4]          ; 0x7169
    mov al, byte [bx + si + 0xa50]   ; 0x716c
    sub ah, ah                       ; 0x7170
    mov word [bp - 0x001e], ax       ; 0x7172
    mov ax, 5                        ; 0x7175
    push ax                          ; 0x7178
    mov ax, 0                        ; 0x7179
    push ax                          ; 0x717c
    push word [bp - 0x001e]          ; 0x717d
    call ds_dispatch_ed3a            ; 0x7180
    add sp, byte 6                   ; 0x7183
    mov word [bp - 0x0020], ax       ; 0x7186
    mov word [bp - 0x0002], 0        ; 0x7189
@..api_idx_0072.l1:
    mov ax, word [bp - 0x0002]       ; 0x718e
    shl ax, 1                        ; 0x7191
    mov bx, ax                       ; 0x7193
    mov word [bx - 0x69a2], data_0002 ; 0x7195
    mov word [bp - 0x0004], 0        ; 0x719b
    jmp short @..api_idx_0072.l3     ; 0x71a0
@..api_idx_0072.l2:
    mov ax, 5                        ; 0x71a2
    push ax                          ; 0x71a5
    call ds_dispatch_b7a9            ; 0x71a6
    pop cx                           ; 0x71a9
    mov cx, word [bp - 0x0002]       ; 0x71aa
    shl cx, 1                        ; 0x71ad
    mov bx, cx                       ; 0x71af
    add word [bx - 0x69a2], ax       ; 0x71b1
    inc word [bp - 0x0004]           ; 0x71b5
@..api_idx_0072.l3:
    mov ax, word [bp - 0x0004]       ; 0x71b8
    cmp ax, word [bp - 0x0020]       ; 0x71bb
    jl short @..api_idx_0072.l2      ; 0x71be
    mov ax, 0x5f                     ; 0x71c0
    push ax                          ; 0x71c3
    mov ax, 0                        ; 0x71c4
    push ax                          ; 0x71c7
    mov ax, word [bp - 0x0002]       ; 0x71c8
    shl ax, 1                        ; 0x71cb
    mov bx, ax                       ; 0x71cd
    push word [bx - 0x69a2]          ; 0x71cf
    call ds_dispatch_b7c2            ; 0x71d3
    add sp, byte 6                   ; 0x71d6
    mov cx, word [bp - 0x0002]       ; 0x71d9
    shl cx, 1                        ; 0x71dc
    mov bx, cx                       ; 0x71de
    mov word [bx - 0x69a2], ax       ; 0x71e0
    inc word [bp - 0x0002]           ; 0x71e4
    mov ax, word [bp - 0x0002]       ; 0x71e7
    cmp ax, strict word 6            ; 0x71ea
    jl short @..api_idx_0072.l1      ; 0x71ed
    mov word [bp - 0x0002], 0        ; 0x71ef
@..api_idx_0072.l4:
    mov ax, word [bp - 0x0002]       ; 0x71f4
    shl ax, 1                        ; 0x71f7
    mov bx, ax                       ; 0x71f9
    add bx, bp                       ; 0x71fb
    mov word [bx - 0x001a], 1        ; 0x71fd
    inc word [bp - 0x0002]           ; 0x7202
    mov ax, word [bp - 0x0002]       ; 0x7205
    cmp ax, strict word 2            ; 0x7208
    jle short @..api_idx_0072.l4     ; 0x720b
    mov word [bp - 0x0014], 0xffff   ; 0x720d
@..api_idx_0072.l5:
    mov word [data_9126], 1          ; 0x7212
    mov ax, 0                        ; 0x7218
    push ax                          ; 0x721b
    call api_idx_000a_2              ; 0x721c
    pop cx                           ; 0x721f
    mov word [data_9126], 0          ; 0x7220
    lea ax, word [bp - 0x001a]       ; 0x7226
    push ax                          ; 0x7229
    mov ax, 0                        ; 0x722a
    push ax                          ; 0x722d
    mov ax, 0xffff                   ; 0x722e
    push ax                          ; 0x7231
    mov ax, 1                        ; 0x7232
    push ax                          ; 0x7235
    mov ax, 3                        ; 0x7236
    push ax                          ; 0x7239
    mov ax, 1                        ; 0x723a
    push ax                          ; 0x723d
    mov ax, 0xc                      ; 0x723e
    push ax                          ; 0x7241
    mov ax, 0x34                     ; 0x7242
    push ax                          ; 0x7245
    mov ax, 8                        ; 0x7246
    push ax                          ; 0x7249
    mov ax, 0x9c                     ; 0x724a
    push ax                          ; 0x724d
    mov ax, 0x52                     ; 0x724e
    push ax                          ; 0x7251
    mov ax, 0                        ; 0x7252
    push ax                          ; 0x7255
    mov ax, 0x834                    ; 0x7256
    push ax                          ; 0x7259
    call math_loc_8441               ; 0x725a
    add sp, byte 0x1a                ; 0x725d
    mov word [bp - 0x001c], ax       ; 0x7260
    lea ax, word [bp - 0x0072]       ; 0x7263
    push ax                          ; 0x7266
    mov ax, word [bp - 0x001c]       ; 0x7267
    add ax, 0x834                    ; 0x726a
    push ax                          ; 0x726d
    call ds_dispatch_b53b            ; 0x726e
    add sp, byte 4                   ; 0x7271
    mov ax, 0x1a                     ; 0x7274
    push ax                          ; 0x7277
    mov ax, 1                        ; 0x7278
    push ax                          ; 0x727b
    mov ax, 0xc                      ; 0x727c
    push ax                          ; 0x727f
    mov ax, 0x34                     ; 0x7280
    push ax                          ; 0x7283
    mov ax, 8                        ; 0x7284
    push ax                          ; 0x7287
    mov ax, 0x9c                     ; 0x7288
    push ax                          ; 0x728b
    mov ax, 0x52                     ; 0x728c
    push ax                          ; 0x728f
    push word [data_9052]            ; 0x7290
    lea ax, word [bp - 0x0072]       ; 0x7294
    push ax                          ; 0x7297
    call api_idx_0008_3              ; 0x7298
    add sp, byte 0x12                ; 0x729b
    mov ax, 0                        ; 0x729e
    push ax                          ; 0x72a1
    call api_idx_000a_2              ; 0x72a2
    pop cx                           ; 0x72a5
    mov ax, word [bp - 0x001c]       ; 0x72a6
    jmp short @..api_idx_0072.l11    ; 0x72a9
@..api_idx_0072.l6:
    cmp word [data_0e32], byte 0     ; 0x72ab
    jne short @..api_idx_0072.l7     ; 0x72b0
    mov ax, 1                        ; 0x72b2
    push ax                          ; 0x72b5
    call api_idx_000a_2              ; 0x72b6
    pop cx                           ; 0x72b9
@..api_idx_0072.l7:
    call ds_dispatch_ceb1            ; 0x72ba
    mov word [bp - 0x0006], ax       ; 0x72bd
    cmp ax, strict word 0xffff       ; 0x72c0
    je short @..api_idx_0072.l8      ; 0x72c3
    push ax                          ; 0x72c5
    call ds_dispatch_ca85            ; 0x72c6
    pop cx                           ; 0x72c9
    test ax, ax                      ; 0x72ca
    je short @..api_idx_0072.l8      ; 0x72cc
    mov ax, 0                        ; 0x72ce
    push ax                          ; 0x72d1
    push word [bp + 0x4]             ; 0x72d2
    push word [bp - 0x0006]          ; 0x72d5
    call api_idx_0034                ; 0x72d8
    add sp, byte 6                   ; 0x72db
    test ax, ax                      ; 0x72de
    jne short @..api_idx_0072.l8     ; 0x72e0
    mov word [bp - 0x001c], data_0002 ; 0x72e2
@..api_idx_0072.l8:
    jmp short @..api_idx_0072.l12    ; 0x72e7
@..api_idx_0072.l9:
    mov ax, 1                        ; 0x72e9
    push ax                          ; 0x72ec
    push word [bp + 0x4]             ; 0x72ed
    mov ax, 0                        ; 0x72f0
    push ax                          ; 0x72f3
    call api_idx_0034                ; 0x72f4
    add sp, byte 6                   ; 0x72f7
    test ax, ax                      ; 0x72fa
    jne short @..api_idx_0072.l10    ; 0x72fc
    mov word [bp - 0x001c], data_0002 ; 0x72fe
@..api_idx_0072.l10:
    jmp short @..api_idx_0072.l12    ; 0x7303
@..api_idx_0072.l11:
    cmp ax, strict word 0            ; 0x7305
    je short @..api_idx_0072.l6      ; 0x7308
    cmp ax, strict word 1            ; 0x730a
    je short @..api_idx_0072.l9      ; 0x730d
@..api_idx_0072.l12:
    cmp word [bp - 0x001c], byte 2   ; 0x730f
    je short @..api_idx_0072.l13     ; 0x7313
    jmp near @..api_idx_0072.l5      ; 0x7315
@..api_idx_0072.l13:
    ret                              ; 0x7318
api_idx_0004_12:
    mov ax, 0xfffc                   ; 0x7319
    call ds_dispatch_f40b            ; 0x731c
    mov ax, word [bp + 0x6]          ; 0x731f
    cmp word [bp + 0x8], byte 0      ; 0x7322
    jne short @..api_idx_0004_12.l1  ; 0x7326
    mov ax, word [bp + 0x4]          ; 0x7328
@..api_idx_0004_12.l1:
    mov word [bp - 0x0002], ax       ; 0x732b
    mov ax, word [bp + 0x4]          ; 0x732e
    cmp word [bp + 0x8], byte 0      ; 0x7331
    jne short @..api_idx_0004_12.l2  ; 0x7335
    mov ax, word [bp + 0x6]          ; 0x7337
@..api_idx_0004_12.l2:
    mov word [bp - 0x0004], ax       ; 0x733a
    cmp word [bp - 0x0002], byte 0   ; 0x733d
    je short @..api_idx_0004_12.l3   ; 0x7341
    mov ax, 0                        ; 0x7343
    push ax                          ; 0x7346
    push word [bp - 0x0002]          ; 0x7347
    mov ax, word [data_830c]         ; 0x734a
    mov cx, 4                        ; 0x734d
    shl ax, cl                       ; 0x7350
    add ax, 0x8d14                   ; 0x7352
    push ax                          ; 0x7355
    call ds_dispatch_ec41            ; 0x7356
    add sp, byte 6                   ; 0x7359
    mov ax, 0                        ; 0x735c
    push ax                          ; 0x735f
    push word [bp - 0x0002]          ; 0x7360
    mov ax, word [data_830c]         ; 0x7363
    mov cx, 4                        ; 0x7366
    shl ax, cl                       ; 0x7369
    add ax, 0x5642                   ; 0x736b
    push ax                          ; 0x736e
    call ds_dispatch_ec41            ; 0x736f
    add sp, byte 6                   ; 0x7372
@..api_idx_0004_12.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x7375
    je short @..api_idx_0004_12.l4   ; 0x7379
    mov ax, 1                        ; 0x737b
    push ax                          ; 0x737e
    push word [bp - 0x0004]          ; 0x737f
    mov ax, word [data_830c]         ; 0x7382
    mov cx, 4                        ; 0x7385
    shl ax, cl                       ; 0x7388
    add ax, 0x8d14                   ; 0x738a
    push ax                          ; 0x738d
    call ds_dispatch_ec41            ; 0x738e
    add sp, byte 6                   ; 0x7391
    mov ax, 1                        ; 0x7394
    push ax                          ; 0x7397
    push word [bp - 0x0004]          ; 0x7398
    mov ax, word [data_830c]         ; 0x739b
    mov cx, 4                        ; 0x739e
    shl ax, cl                       ; 0x73a1
    add ax, 0x5642                   ; 0x73a3
    push ax                          ; 0x73a6
    call ds_dispatch_ec41            ; 0x73a7
    add sp, byte 6                   ; 0x73aa
@..api_idx_0004_12.l4:
    ret                              ; 0x73ad
api_idx_00e6:
    mov ax, 0xff1a                   ; 0x73ae
    call ds_dispatch_f40b            ; 0x73b1
    mov bx, word [data_0e12]         ; 0x73b4
    mov si, word [data_8d12]         ; 0x73b8
    cmp byte [bx + si + 0xa50], 0    ; 0x73bc
    jbe short @..api_idx_00e6.l1     ; 0x73c1
    mov ax, 0                        ; 0x73c3
    push ax                          ; 0x73c6
    shl si, 1                        ; 0x73c7
    mov ax, word [bx + si]           ; 0x73c9
    push ax                          ; 0x73cb
    mov si, word [data_8d12]         ; 0x73cc
    mov al, byte [bx + si + 0xa50]   ; 0x73d0
    sub ah, ah                       ; 0x73d4
    mov cx, ax                       ; 0x73d6
    pop ax                           ; 0x73d8
    add ax, cx                       ; 0x73d9
    push ax                          ; 0x73db
    call loc_0d87                    ; 0x73dc
    add sp, byte 4                   ; 0x73df
@..api_idx_00e6.l1:
    mov ax, word [data_8d12]         ; 0x73e2
    shl ax, 1                        ; 0x73e5
    mov si, ax                       ; 0x73e7
    mov bx, word [data_0e12]         ; 0x73e9
    mov ax, word [bx + si + 0x3c0]   ; 0x73ed
    mov word [bp - 0x0008], ax       ; 0x73f1
    mov ax, 4                        ; 0x73f4
    push ax                          ; 0x73f7
    mov ax, 0                        ; 0x73f8
    push ax                          ; 0x73fb
    push word [bp - 0x0008]          ; 0x73fc
    call ds_dispatch_ed3a            ; 0x73ff
    add sp, byte 6                   ; 0x7402
    mov word [bp - 0x000e], ax       ; 0x7405
    mov ax, 4                        ; 0x7408
    push ax                          ; 0x740b
    push ax                          ; 0x740c
    push word [bp - 0x0008]          ; 0x740d
    call ds_dispatch_ed3a            ; 0x7410
    add sp, byte 6                   ; 0x7413
    mov word [bp - 0x0010], ax       ; 0x7416
    mov ax, 1                        ; 0x7419
    push ax                          ; 0x741c
    mov ax, 8                        ; 0x741d
    push ax                          ; 0x7420
    push word [bp - 0x0008]          ; 0x7421
    call ds_dispatch_ed3a            ; 0x7424
    add sp, byte 6                   ; 0x7427
    mov word [bp - 0x0014], ax       ; 0x742a
    mov ax, 1                        ; 0x742d
    push ax                          ; 0x7430
    mov ax, 9                        ; 0x7431
    push ax                          ; 0x7434
    push word [bp - 0x0008]          ; 0x7435
    call ds_dispatch_ed3a            ; 0x7438
    add sp, byte 6                   ; 0x743b
    mov word [bp - 0x0016], ax       ; 0x743e
    mov ax, 1                        ; 0x7441
    push ax                          ; 0x7444
    mov ax, 0xc                      ; 0x7445
    push ax                          ; 0x7448
    push word [bp - 0x0008]          ; 0x7449
    call ds_dispatch_ed3a            ; 0x744c
    add sp, byte 6                   ; 0x744f
    mov word [bp - 0x0018], ax       ; 0x7452
    mov ax, 1                        ; 0x7455
    push ax                          ; 0x7458
    mov ax, 0xd                      ; 0x7459
    push ax                          ; 0x745c
    push word [bp - 0x0008]          ; 0x745d
    call ds_dispatch_ed3a            ; 0x7460
    add sp, byte 6                   ; 0x7463
    mov word [bp - 0x001a], ax       ; 0x7466
    mov ax, 1                        ; 0x7469
    push ax                          ; 0x746c
    mov ax, 0xe                      ; 0x746d
    push ax                          ; 0x7470
    push word [bp - 0x0008]          ; 0x7471
    call ds_dispatch_ed3a            ; 0x7474
    add sp, byte 6                   ; 0x7477
    mov word [bp - 0x001c], ax       ; 0x747a
    mov ax, 1                        ; 0x747d
    push ax                          ; 0x7480
    mov ax, 0xf                      ; 0x7481
    push ax                          ; 0x7484
    push word [bp - 0x0008]          ; 0x7485
    call ds_dispatch_ed3a            ; 0x7488
    add sp, byte 6                   ; 0x748b
    mov word [bp - 0x0022], ax       ; 0x748e
    mov ax, word [data_8d12]         ; 0x7491
    shl ax, 1                        ; 0x7494
    mov si, ax                       ; 0x7496
    mov bx, word [data_0e12]         ; 0x7498
    mov ax, word [bx + si]           ; 0x749c
    mov word [bp - 0x000a], ax       ; 0x749e
    cmp word [bp - 0x001a], byte 0   ; 0x74a1
    jne short @..api_idx_00e6.l2     ; 0x74a5
    mov ax, 0x9128                   ; 0x74a7
    push ax                          ; 0x74aa
    push word [bp - 0x000a]          ; 0x74ab
    call ds_dispatch_b53b            ; 0x74ae
    add sp, byte 4                   ; 0x74b1
    inc word [bp - 0x000a]           ; 0x74b4
@..api_idx_00e6.l2:
    lea ax, word [bp - 0x00c2]       ; 0x74b7
    push ax                          ; 0x74bb
    push word [bp - 0x000a]          ; 0x74bc
    call ds_dispatch_b53b            ; 0x74bf
    add sp, byte 4                   ; 0x74c2
    inc word [bp - 0x000a]           ; 0x74c5
    mov word [bp - 0x0002], 0        ; 0x74c8
    jmp short @..api_idx_00e6.l4     ; 0x74cd
@..api_idx_00e6.l3:
    mov ax, word [bp - 0x0002]       ; 0x74cf
    shl ax, 1                        ; 0x74d2
    mov bx, ax                       ; 0x74d4
    add bx, bp                       ; 0x74d6
    mov word [bx - 0x00e2], 1        ; 0x74d8
    inc word [bp - 0x0002]           ; 0x74de
@..api_idx_00e6.l4:
    mov ax, word [bp - 0x0002]       ; 0x74e1
    cmp ax, word [bp - 0x000e]       ; 0x74e4
    jl short @..api_idx_00e6.l3      ; 0x74e7
    mov ax, word [bp - 0x000e]       ; 0x74e9
    shl ax, 1                        ; 0x74ec
    mov bx, ax                       ; 0x74ee
    add bx, bp                       ; 0x74f0
    mov word [bx - 0x00e2], 0xffff   ; 0x74f2
    mov word [data_9126], 1          ; 0x74f8
    mov ax, 0                        ; 0x74fe
    push ax                          ; 0x7501
    call api_idx_000a_2              ; 0x7502
    pop cx                           ; 0x7505
    cmp word [bp - 0x001a], byte 1   ; 0x7506
    je short @..api_idx_00e6.l5      ; 0x750a
    jmp near @..local.l276           ; 0x750c
@..api_idx_00e6.l5:
    lea ax, word [bp - 0x0072]       ; 0x750f
    push ax                          ; 0x7512
    push word [bp - 0x000a]          ; 0x7513
    call ds_dispatch_b53b            ; 0x7516
    add sp, byte 4                   ; 0x7519
    lea ax, word [bp - 0x0072]       ; 0x751c
    push ax                          ; 0x751f
    call ds_dispatch_fa90            ; 0x7520
    pop cx                           ; 0x7523
    mov word [bp - 0x000c], ax       ; 0x7524
    lea ax, word [bp - 0x00e2]       ; 0x7527
    push ax                          ; 0x752b
    mov ax, 0                        ; 0x752c
    push ax                          ; 0x752f
    mov ax, 0xffff                   ; 0x7530
    push ax                          ; 0x7533
    mov ax, 1                        ; 0x7534
    push ax                          ; 0x7537
    push word [bp - 0x000e]          ; 0x7538
    mov ax, 3                        ; 0x753b
    push ax                          ; 0x753e
    mov ax, 0xc                      ; 0x753f
    push ax                          ; 0x7542
    mov ax, 6                        ; 0x7543
    imul word [bp - 0x000c]          ; 0x7546
    add ax, strict word 4            ; 0x7549
    push ax                          ; 0x754c
    push word [bp - 0x000c]          ; 0x754d
    mov ax, 0x9c                     ; 0x7550
    push ax                          ; 0x7553
    mov ax, 6                        ; 0x7554
    imul word [bp - 0x000c]          ; 0x7557
    mov cx, data_0002                ; 0x755a
    cwd                              ; 0x755d
    idiv cx                          ; 0x755e
    mov cx, ax                       ; 0x7560
    mov ax, 0xa1                     ; 0x7562
    sub ax, cx                       ; 0x7565
    push ax                          ; 0x7567
    mov ax, 0                        ; 0x7568
    push ax                          ; 0x756b
    push word [bp - 0x000a]          ; 0x756c
    call math_loc_8441               ; 0x756f
    add sp, byte 0x1a                ; 0x7572
    mov word [bp - 0x0006], ax       ; 0x7575
    lea ax, word [bp - 0x0072]       ; 0x7578
    push ax                          ; 0x757b
    mov ax, word [bp - 0x000a]       ; 0x757c
    add ax, word [bp - 0x0006]       ; 0x757f
    push ax                          ; 0x7582
    call ds_dispatch_b53b            ; 0x7583
    add sp, byte 4                   ; 0x7586
    mov ax, 0x1a                     ; 0x7589
    push ax                          ; 0x758c
    mov ax, 3                        ; 0x758d
    push ax                          ; 0x7590
    mov ax, 0xc                      ; 0x7591
    push ax                          ; 0x7594
    mov ax, 6                        ; 0x7595
    imul word [bp - 0x000c]          ; 0x7598
    add ax, strict word 4            ; 0x759b
    push ax                          ; 0x759e
    push word [bp - 0x000c]          ; 0x759f
    mov ax, 0x9c                     ; 0x75a2
    push ax                          ; 0x75a5
    mov ax, 6                        ; 0x75a6
    imul word [bp - 0x000c]          ; 0x75a9
    mov cx, data_0002                ; 0x75ac
    cwd                              ; 0x75af
    idiv cx                          ; 0x75b0
    mov cx, ax                       ; 0x75b2
    mov ax, 0xa1                     ; 0x75b4
    sub ax, cx                       ; 0x75b7
    push ax                          ; 0x75b9
    push word [data_9052]            ; 0x75ba
    lea ax, word [bp - 0x0072]       ; 0x75be
    push ax                          ; 0x75c1
    call api_idx_0008_3              ; 0x75c2
    add sp, byte 0x12                ; 0x75c5
    mov ax, word [data_905a]         ; 0x75c8
    mov cx, data_0002                ; 0x75cb
    cwd                              ; 0x75ce
    idiv cx                          ; 0x75cf
    push ax                          ; 0x75d1
    call api_idx_0004                ; 0x75d2
    pop cx                           ; 0x75d5
    mov ax, 0                        ; 0x75d6
    push ax                          ; 0x75d9
    call api_idx_000a_2              ; 0x75da
    pop cx                           ; 0x75dd
    mov ax, word [bp - 0x0006]       ; 0x75de
    shl ax, 1                        ; 0x75e1
    mov bx, ax                       ; 0x75e3
    add bx, bp                       ; 0x75e5
    mov al, byte [bx - 0x00c2]       ; 0x75e7
    sub ah, ah                       ; 0x75eb
    mov cx, 0xa                      ; 0x75ed
    imul cx                          ; 0x75f0
    push ax                          ; 0x75f2
    mov al, byte [bx - 0x00c1]       ; 0x75f3
    sub ah, ah                       ; 0x75f7
    mov cx, ax                       ; 0x75f9
    pop ax                           ; 0x75fb
    add ax, cx                       ; 0x75fc
    add ax, 0xfdf0                   ; 0x75fe
    mov word [bp - 0x0012], ax       ; 0x7601
    cmp ax, strict word 0            ; 0x7604
    jle short @..local.l275          ; 0x7607
    cmp ax, 0x80                     ; 0x7609
    jge short @..local.l275          ; 0x760c
    mov ax, 0                        ; 0x760e
    push ax                          ; 0x7611
    push word [bp - 0x0012]          ; 0x7612
    mov ax, word [data_830c]         ; 0x7615
    mov cx, 4                        ; 0x7618
    shl ax, cl                       ; 0x761b
    add ax, 0x8d14                   ; 0x761d
    push ax                          ; 0x7620
    call ds_dispatch_ec41            ; 0x7621
    add sp, byte 6                   ; 0x7624
@..local.l275:
    jmp near @..local.l288           ; 0x7627
@..local.l276:
    mov word [bp - 0x001e], 0        ; 0x762a
    mov word [bp - 0x0020], 0        ; 0x762f
    mov word [bp - 0x0002], 0        ; 0x7634
    jmp near @..local.l286           ; 0x7639
@..local.l277:
    lea ax, word [bp - 0x0072]       ; 0x763c
    push ax                          ; 0x763f
    push word [bp - 0x000a]          ; 0x7640
    call ds_dispatch_b53b            ; 0x7643
    add sp, byte 4                   ; 0x7646
    lea ax, word [bp - 0x0072]       ; 0x7649
    push ax                          ; 0x764c
    call ds_dispatch_fa90            ; 0x764d
    pop cx                           ; 0x7650
    mov word [bp - 0x000c], ax       ; 0x7651
    cmp word [bp - 0x000e], byte 6   ; 0x7654
    jle short @..local.l278          ; 0x7658
    mov cx, 6                        ; 0x765a
    imul cx                          ; 0x765d
    mov cx, 3                        ; 0x765f
    imul cx                          ; 0x7662
    add ax, strict word 0x3e         ; 0x7664
    mov cx, data_0002                ; 0x7667
    cwd                              ; 0x766a
    idiv cx                          ; 0x766b
    mov cx, ax                       ; 0x766d
    mov ax, 0xa1                     ; 0x766f
    sub ax, cx                       ; 0x7672
    mov word [bp - 0x00e4], ax       ; 0x7674
    mov ax, word [bp - 0x000e]       ; 0x7678
    dec ax                           ; 0x767b
    mov cx, 3                        ; 0x767c
    cwd                              ; 0x767f
    idiv cx                          ; 0x7680
    inc ax                           ; 0x7682
    mov word [bp - 0x00e6], ax       ; 0x7683
    jmp short @..local.l279          ; 0x7687
@..local.l278:
    mov ax, 6                        ; 0x7689
    imul word [bp - 0x000c]          ; 0x768c
    shl ax, 1                        ; 0x768f
    add ax, strict word 0x28         ; 0x7691
    mov cx, data_0002                ; 0x7694
    cwd                              ; 0x7697
    idiv cx                          ; 0x7698
    mov cx, ax                       ; 0x769a
    mov ax, 0xa1                     ; 0x769c
    sub ax, cx                       ; 0x769f
    mov word [bp - 0x00e4], ax       ; 0x76a1
    mov ax, word [bp - 0x000e]       ; 0x76a5
    dec ax                           ; 0x76a8
    mov cx, data_0002                ; 0x76a9
    cwd                              ; 0x76ac
    idiv cx                          ; 0x76ad
    inc ax                           ; 0x76af
    mov word [bp - 0x00e6], ax       ; 0x76b0
@..local.l279:
    lea ax, word [bp - 0x00e2]       ; 0x76b4
    push ax                          ; 0x76b8
    mov ax, 0                        ; 0x76b9
    push ax                          ; 0x76bc
    mov ax, 0xffff                   ; 0x76bd
    push ax                          ; 0x76c0
    mov ax, 1                        ; 0x76c1
    push ax                          ; 0x76c4
    push word [bp - 0x000e]          ; 0x76c5
    push word [bp - 0x00e6]          ; 0x76c8
    mov ax, 0xc                      ; 0x76cc
    push ax                          ; 0x76cf
    mov ax, 6                        ; 0x76d0
    imul word [bp - 0x000c]          ; 0x76d3
    add ax, strict word 0x16         ; 0x76d6
    push ax                          ; 0x76d9
    mov ax, word [bp - 0x000c]       ; 0x76da
    inc ax                           ; 0x76dd
    inc ax                           ; 0x76de
    inc ax                           ; 0x76df
    push ax                          ; 0x76e0
    mov ax, 0x9c                     ; 0x76e1
    push ax                          ; 0x76e4
    push word [bp - 0x00e4]          ; 0x76e5
    mov ax, 0                        ; 0x76e9
    push ax                          ; 0x76ec
    push word [bp - 0x000a]          ; 0x76ed
    call math_loc_8441               ; 0x76f0
    add sp, byte 0x1a                ; 0x76f3
    mov word [bp - 0x0006], ax       ; 0x76f6
    lea ax, word [bp - 0x0072]       ; 0x76f9
    push ax                          ; 0x76fc
    mov ax, word [bp - 0x000a]       ; 0x76fd
    add ax, word [bp - 0x0006]       ; 0x7700
    push ax                          ; 0x7703
    call ds_dispatch_b53b            ; 0x7704
    add sp, byte 4                   ; 0x7707
    mov ax, 0x1a                     ; 0x770a
    push ax                          ; 0x770d
    push word [bp - 0x00e6]          ; 0x770e
    mov ax, 0xc                      ; 0x7712
    push ax                          ; 0x7715
    mov ax, 6                        ; 0x7716
    imul word [bp - 0x000c]          ; 0x7719
    add ax, strict word 0x16         ; 0x771c
    push ax                          ; 0x771f
    mov ax, word [bp - 0x000c]       ; 0x7720
    inc ax                           ; 0x7723
    inc ax                           ; 0x7724
    inc ax                           ; 0x7725
    push ax                          ; 0x7726
    mov ax, 0x9c                     ; 0x7727
    push ax                          ; 0x772a
    push word [bp - 0x00e4]          ; 0x772b
    push word [data_9052]            ; 0x772f
    lea ax, word [bp - 0x0072]       ; 0x7733
    push ax                          ; 0x7736
    call api_idx_0008_3              ; 0x7737
    add sp, byte 0x12                ; 0x773a
    mov ax, 0                        ; 0x773d
    push ax                          ; 0x7740
    call api_idx_000a_2              ; 0x7741
    pop cx                           ; 0x7744
    cmp word [bp - 0x001c], byte 1   ; 0x7745
    jne short @..local.l280          ; 0x7749
    mov ax, word [bp - 0x0006]       ; 0x774b
    shl ax, 1                        ; 0x774e
    mov bx, ax                       ; 0x7750
    add bx, bp                       ; 0x7752
    mov word [bx - 0x00e2], 0        ; 0x7754
@..local.l280:
    cmp word [bp - 0x0016], byte 0   ; 0x775a
    jne short @..local.l282          ; 0x775e
    mov ax, word [bp - 0x000e]       ; 0x7760
    dec ax                           ; 0x7763
    cmp ax, word [bp - 0x0006]       ; 0x7764
    jne short @..local.l282          ; 0x7767
    mov ax, word [bp - 0x0010]       ; 0x7769
    mov word [bp - 0x0002], ax       ; 0x776c
    cmp word [bp - 0x001e], byte 0   ; 0x776f
    jne short @..local.l281          ; 0x7773
    mov word [bp - 0x0020], 1        ; 0x7775
@..local.l281:
    jmp short @..local.l285          ; 0x777a
@..local.l282:
    cmp word [bp - 0x0014], byte 0   ; 0x777c
    je short @..local.l283           ; 0x7780
    mov ax, 4                        ; 0x7782
    push ax                          ; 0x7785
    call ds_dispatch_b7e0            ; 0x7786
    pop cx                           ; 0x7789
@..local.l283:
    mov ax, word [bp - 0x0006]       ; 0x778a
    add ax, strict word 0x30         ; 0x778d
    sub ah, ah                       ; 0x7790
    push ax                          ; 0x7792
    lea ax, word [bp - 0x00c2]       ; 0x7793
    push ax                          ; 0x7797
    call ds_dispatch_ee4a            ; 0x7798
    add sp, byte 4                   ; 0x779b
    mov word [bp - 0x0004], ax       ; 0x779e
    cmp ax, strict word 0xffff       ; 0x77a1
    je short @..local.l284           ; 0x77a4
    cmp word [bp - 0x0018], byte 0   ; 0x77a6
    jne short @..local.l285          ; 0x77aa
    mov bx, word [bp - 0x0002]       ; 0x77ac
    add bx, bp                       ; 0x77af
    mov al, byte [bx - 0x00c2]       ; 0x77b1
    sub ah, ah                       ; 0x77b5
    add ax, strict word 0xffd0       ; 0x77b7
    cmp ax, word [bp - 0x0006]       ; 0x77ba
    je short @..local.l285           ; 0x77bd
@..local.l284:
    mov word [bp - 0x001e], 1        ; 0x77bf
    cmp word [bp - 0x0022], byte 1   ; 0x77c4
    jne short @..local.l285          ; 0x77c8
    mov ax, word [bp - 0x0010]       ; 0x77ca
    mov word [bp - 0x0002], ax       ; 0x77cd
@..local.l285:
    inc word [bp - 0x0002]           ; 0x77d0
@..local.l286:
    mov ax, word [bp - 0x0002]       ; 0x77d3
    cmp ax, word [bp - 0x0010]       ; 0x77d6
    jge short @..local.l287          ; 0x77d9
    jmp near @..local.l277           ; 0x77db
@..local.l287:
    cmp word [bp - 0x0020], byte 0   ; 0x77de
    jne short @..local.l288          ; 0x77e2
    mov ax, word [data_8d12]         ; 0x77e4
    shl ax, 1                        ; 0x77e7
    mov si, ax                       ; 0x77e9
    mov bx, word [data_0e12]         ; 0x77eb
    mov ax, word [bx + si + 0x1e0]   ; 0x77ef
    mov word [bp - 0x0008], ax       ; 0x77f3
    push word [bp - 0x001e]          ; 0x77f6
    mov ax, 8                        ; 0x77f9
    push ax                          ; 0x77fc
    push ax                          ; 0x77fd
    push word [bp - 0x0008]          ; 0x77fe
    call ds_dispatch_ed3a            ; 0x7801
    add sp, byte 6                   ; 0x7804
    push ax                          ; 0x7807
    mov ax, 8                        ; 0x7808
    push ax                          ; 0x780b
    mov ax, 0                        ; 0x780c
    push ax                          ; 0x780f
    push word [bp - 0x0008]          ; 0x7810
    call ds_dispatch_ed3a            ; 0x7813
    add sp, byte 6                   ; 0x7816
    push ax                          ; 0x7819
    call api_idx_0004_12             ; 0x781a
    add sp, byte 6                   ; 0x781d
@..local.l288:
    mov word [data_9126], 0          ; 0x7820
    inc word [data_8d12]             ; 0x7826
    ret                              ; 0x782a
math_loc_782b:
    mov ax, 0                        ; 0x782b
    call ds_dispatch_f40b            ; 0x782e
    cmp word [bp + 0x4], byte 0      ; 0x7831
    jle short @..math_loc_782b.l1    ; 0x7835
    mov bx, word [data_0e12]         ; 0x7837
    mov si, word [data_8d12]         ; 0x783b
    cmp byte [bx + si + 0x960], 0    ; 0x783f
    jbe short @..math_loc_782b.l1    ; 0x7844
    mov ax, 1                        ; 0x7846
    push ax                          ; 0x7849
    mov al, byte [bx + si + 0x960]   ; 0x784a
    sub ah, ah                       ; 0x784e
    push ax                          ; 0x7850
    mov ax, word [data_830c]         ; 0x7851
    mov cx, 4                        ; 0x7854
    shl ax, cl                       ; 0x7857
    add ax, 0x8d14                   ; 0x7859
    push ax                          ; 0x785c
    call ds_dispatch_ec41            ; 0x785d
    add sp, byte 6                   ; 0x7860
    cmp word [bp + 0x4], byte 1      ; 0x7863
    jle short @..math_loc_782b.l1    ; 0x7867
    mov ax, 1                        ; 0x7869
    push ax                          ; 0x786c
    mov bx, word [data_0e12]         ; 0x786d
    mov si, word [data_8d12]         ; 0x7871
    mov al, byte [bx + si + 0x960]   ; 0x7875
    sub ah, ah                       ; 0x7879
    push ax                          ; 0x787b
    mov ax, word [data_830c]         ; 0x787c
    mov cx, 4                        ; 0x787f
    shl ax, cl                       ; 0x7882
    add ax, 0x5642                   ; 0x7884
    push ax                          ; 0x7887
    call ds_dispatch_ec41            ; 0x7888
    add sp, byte 6                   ; 0x788b
@..math_loc_782b.l1:
    ret                              ; 0x788e
math_loc_788f:
    mov ax, 0                        ; 0x788f
    call ds_dispatch_f40b            ; 0x7892
    mov ax, 0x248                    ; 0x7895
    imul word [bp + 0x4]             ; 0x7898
    mov bx, ax                       ; 0x789b
    cmp byte [bx + 0x5e2f], 3        ; 0x789d
    jae short @..math_loc_788f.l1    ; 0x78a2
    mov al, byte [bx + 0x5e2c]       ; 0x78a4
    sub ah, ah                       ; 0x78a8
    add ax, strict word 8            ; 0x78aa
    push ax                          ; 0x78ad
    call ds_dispatch_b7e0            ; 0x78ae
    pop cx                           ; 0x78b1
@..math_loc_788f.l1:
    mov ax, 0x248                    ; 0x78b2
    imul word [bp + 0x4]             ; 0x78b5
    mov bx, ax                       ; 0x78b8
    mov byte [bx + 0x5e2f], 3        ; 0x78ba
    mov word [bx + 0x5c0c], 0        ; 0x78bf
    mov word [bx + 0x5c10], 0        ; 0x78c5
    cmp word [bp + 0x6], byte 0      ; 0x78cb
    jle short @..math_loc_788f.l2    ; 0x78cf
    mov ax, 1                        ; 0x78d1
    push ax                          ; 0x78d4
    push word [bp + 0x4]             ; 0x78d5
    call ds_dispatch_cb3a            ; 0x78d8
    add sp, byte 4                   ; 0x78db
    cmp word [bp + 0x6], byte 1      ; 0x78de
    jle short @..math_loc_788f.l2    ; 0x78e2
    mov ax, 8                        ; 0x78e4
    push ax                          ; 0x78e7
    call ds_dispatch_b75e            ; 0x78e8
    pop cx                           ; 0x78eb
@..math_loc_788f.l2:
    ret                              ; 0x78ec
api_idx_0074_2:
    mov ax, 0xff8c                   ; 0x78ed
    call ds_dispatch_f40b            ; 0x78f0
    mov ax, word [data_8d12]         ; 0x78f3
    shl ax, 1                        ; 0x78f6
    mov si, ax                       ; 0x78f8
    mov bx, word [data_0e12]         ; 0x78fa
    mov ax, word [bx + si + 0x3c0]   ; 0x78fe
    mov word [bp - 0x0006], ax       ; 0x7902
    mov ax, 4                        ; 0x7905
    push ax                          ; 0x7908
    mov ax, 8                        ; 0x7909
    push ax                          ; 0x790c
    push word [bp - 0x0006]          ; 0x790d
    call ds_dispatch_ed3a            ; 0x7910
    add sp, byte 6                   ; 0x7913
    mov word [bp - 0x0004], ax       ; 0x7916
    mov ax, 4                        ; 0x7919
    push ax                          ; 0x791c
    mov ax, 0                        ; 0x791d
    push ax                          ; 0x7920
    push word [bp - 0x0006]          ; 0x7921
    call ds_dispatch_ed3a            ; 0x7924
    add sp, byte 6                   ; 0x7927
    mov word [bp - 0x000a], ax       ; 0x792a
    mov ax, 4                        ; 0x792d
    push ax                          ; 0x7930
    push ax                          ; 0x7931
    push word [bp - 0x0006]          ; 0x7932
    call ds_dispatch_ed3a            ; 0x7935
    add sp, byte 6                   ; 0x7938
    mov word [bp - 0x0008], ax       ; 0x793b
    mov ax, 1                        ; 0x793e
    push ax                          ; 0x7941
    mov ax, 0xc                      ; 0x7942
    push ax                          ; 0x7945
    push word [bp - 0x0006]          ; 0x7946
    call ds_dispatch_ed3a            ; 0x7949
    add sp, byte 6                   ; 0x794c
    mov word [bp - 0x0018], ax       ; 0x794f
    mov word [bp - 0x0024], 0        ; 0x7952
    mov ax, 1                        ; 0x7957
    push ax                          ; 0x795a
    mov ax, 0xf                      ; 0x795b
    push ax                          ; 0x795e
    push word [bp - 0x0006]          ; 0x795f
    call ds_dispatch_ed3a            ; 0x7962
    add sp, byte 6                   ; 0x7965
    mov word [bp - 0x0010], ax       ; 0x7968
    mov ax, word [data_8d12]         ; 0x796b
    shl ax, 1                        ; 0x796e
    mov si, ax                       ; 0x7970
    mov bx, word [data_0e12]         ; 0x7972
    cmp word [bx + si], byte 0       ; 0x7976
    jle short @..api_idx_0074_2.l1   ; 0x7979
    mov ax, 0                        ; 0x797b
    push ax                          ; 0x797e
    push word [bx + si]              ; 0x797f
    call loc_0d87                    ; 0x7981
    add sp, byte 4                   ; 0x7984
@..api_idx_0074_2.l1:
    mov ax, 1                        ; 0x7987
    push ax                          ; 0x798a
    call api_idx_000a_2              ; 0x798b
    pop cx                           ; 0x798e
    cmp word [bp - 0x0004], byte 4   ; 0x798f
    jne short @..local.l289          ; 0x7993
    mov word [bp - 0x0002], 0        ; 0x7995
    jmp short @..api_idx_0074_2.l3   ; 0x799a
@..api_idx_0074_2.l2:
    mov ax, data_0002                ; 0x799c
    push ax                          ; 0x799f
    push word [bp - 0x0002]          ; 0x79a0
    call math_loc_788f               ; 0x79a3
    add sp, byte 4                   ; 0x79a6
    inc word [bp - 0x0002]           ; 0x79a9
@..api_idx_0074_2.l3:
    mov ax, word [bp - 0x0002]       ; 0x79ac
    cmp ax, word [data_69c8]         ; 0x79af
    jl short @..api_idx_0074_2.l2    ; 0x79b3
    mov ax, word [data_905a]         ; 0x79b5
    shl ax, 1                        ; 0x79b8
    push ax                          ; 0x79ba
    call api_idx_0004                ; 0x79bb
    pop cx                           ; 0x79be
    mov word [data_830a], 8          ; 0x79bf
    ret                              ; 0x79c5
@..local.l289:
    cmp word [bp - 0x0018], byte 0   ; 0x79c6
    jne short @..local.l290          ; 0x79ca
    jmp near @..math_loc_7a1b.l1     ; 0x79cc
@..local.l290:
    cmp word [data_8306], byte 0     ; 0x79cf
    jg short @..local.l291           ; 0x79d4
    jmp near @..math_loc_7a1b.l1     ; 0x79d6
@..local.l291:
    mov word [bp - 0x0010], 1        ; 0x79d9
    lea ax, word [bp - 0x0074]       ; 0x79de
    push ax                          ; 0x79e1
    mov ax, 0x808                    ; 0x79e2
    push ax                          ; 0x79e5
    call ds_dispatch_b53b            ; 0x79e6
    add sp, byte 4                   ; 0x79e9
    lea ax, word [bp - 0x0074]       ; 0x79ec
    push ax                          ; 0x79ef
    call ds_dispatch_fa90            ; 0x79f0
    pop cx                           ; 0x79f3
    mov cx, 6                        ; 0x79f4
    imul cx                          ; 0x79f7
    mov cx, data_0002                ; 0x79f9
    cwd                              ; 0x79fc
    idiv cx                          ; 0x79fd
    mov cx, ax                       ; 0x79ff
    mov ax, 0xa0                     ; 0x7a01
    sub ax, cx                       ; 0x7a04
    mov word [bp - 0x0020], ax       ; 0x7a06
    mov ax, 0xa3                     ; 0x7a09
    push ax                          ; 0x7a0c
    push word [bp - 0x0020]          ; 0x7a0d
    call ds_dispatch_e809            ; 0x7a10
    add sp, byte 4                   ; 0x7a13
    mov ax, 0                        ; 0x7a16
    push ax                          ; 0x7a19
    mov ax, 0xb8                     ; 0x7a1a
    push ax                          ; 0x7a1d
    call ds_dispatch_e823            ; 0x7a1e
    add sp, byte 4                   ; 0x7a21
    mov ax, 0                        ; 0x7a24
    push ax                          ; 0x7a27
    lea ax, word [bp - 0x0074]       ; 0x7a28
    push ax                          ; 0x7a2b
    call ds_dispatch_e84e            ; 0x7a2c
    add sp, byte 4                   ; 0x7a2f
    mov ax, 0xa9                     ; 0x7a32
    push ax                          ; 0x7a35
    lea ax, word [bp - 0x0074]       ; 0x7a36
    push ax                          ; 0x7a39
    call ds_dispatch_fa90            ; 0x7a3a
    pop cx                           ; 0x7a3d
    mov cx, 6                        ; 0x7a3e
    imul cx                          ; 0x7a41
    add ax, word [bp - 0x0020]       ; 0x7a43
    push ax                          ; 0x7a46
    mov ax, 0xa3                     ; 0x7a47
    push ax                          ; 0x7a4a
    push word [bp - 0x0020]          ; 0x7a4b
    call ds_dispatch_e8da            ; 0x7a4e
    add sp, byte 8                   ; 0x7a51
    mov ax, 0x11                     ; 0x7a54
    push ax                          ; 0x7a57
    call ds_dispatch_d7aa            ; 0x7a58
    pop cx                           ; 0x7a5b
    mov ax, 0x10                     ; 0x7a5c
    push ax                          ; 0x7a5f
    call ds_dispatch_b7e0            ; 0x7a60
    pop cx                           ; 0x7a63
    mov ax, 0x10                     ; 0x7a64
    push ax                          ; 0x7a67
    call ds_dispatch_d6c6            ; 0x7a68
    pop cx                           ; 0x7a6b
    mov word [data_598e], 0xffff     ; 0x7a6c
    push word [data_905a]            ; 0x7a72
    call api_idx_0004                ; 0x7a76
    pop cx                           ; 0x7a79
@..math_loc_7a1b.l1:
    mov bx, word [data_0e12]         ; 0x7a7a
    mov si, word [data_8d12]         ; 0x7a7e
    mov al, byte [bx + si + 0xa50]   ; 0x7a82
    sub ah, ah                       ; 0x7a86
    mov word [bp - 0x0022], ax       ; 0x7a88
    cmp ax, strict word 0            ; 0x7a8b
    jle short @..math_loc_7a1b.l4    ; 0x7a8e
    cmp ax, strict word 5            ; 0x7a90
    jl short @..math_loc_7a1b.l2     ; 0x7a93
    cmp ax, strict word 8            ; 0x7a95
    je short @..math_loc_7a1b.l2     ; 0x7a98
    cmp ax, strict word 9            ; 0x7a9a
    jne short @..math_loc_7a1b.l3    ; 0x7a9d
@..math_loc_7a1b.l2:
    push ax                          ; 0x7a9f
    call ds_dispatch_b7e0            ; 0x7aa0
    pop cx                           ; 0x7aa3
    jmp short @..math_loc_7a1b.l4    ; 0x7aa4
@..math_loc_7a1b.l3:
    push word [bp - 0x0022]          ; 0x7aa6
    call ds_dispatch_d7aa            ; 0x7aa9
    pop cx                           ; 0x7aac
    mov ax, 0x10                     ; 0x7aad
    push ax                          ; 0x7ab0
    call ds_dispatch_b7e0            ; 0x7ab1
    pop cx                           ; 0x7ab4
    mov ax, 0x10                     ; 0x7ab5
    push ax                          ; 0x7ab8
    call ds_dispatch_d6c6            ; 0x7ab9
    pop cx                           ; 0x7abc
    mov word [data_598e], 0xffff     ; 0x7abd
@..math_loc_7a1b.l4:
    mov ax, word [data_8d12]         ; 0x7ac3
    shl ax, 1                        ; 0x7ac6
    mov si, ax                       ; 0x7ac8
    mov bx, word [data_0e12]         ; 0x7aca
    mov ax, word [bx + si + 0x1e0]   ; 0x7ace
    mov word [bp - 0x000c], ax       ; 0x7ad2
    cmp ax, strict word 0xe          ; 0x7ad5
    jne short @..math_loc_7a1b.l5    ; 0x7ad8
    mov word [bp - 0x000c], 9        ; 0x7ada
    mov word [bp - 0x0024], 1        ; 0x7adf
@..math_loc_7a1b.l5:
    mov word [bp - 0x0014], 0        ; 0x7ae4
@..math_loc_7a1b.l6:
    mov ax, 0x248                    ; 0x7ae9
    imul word [bp - 0x0014]          ; 0x7aec
    mov bx, ax                       ; 0x7aef
    cmp byte [bx + 0x5e2f], 3        ; 0x7af1
    jb short @..math_loc_7a1b.l7     ; 0x7af6
    inc word [bp - 0x0014]           ; 0x7af8
    jmp short @..math_loc_7a1b.l6    ; 0x7afb
@..math_loc_7a1b.l7:
    mov ax, word [data_69c8]         ; 0x7afd
    cmp word [bp - 0x0004], byte 0x0c ; 0x7b00
    jne short @..math_loc_7a1b.l8    ; 0x7b04
    mov ax, word [bp - 0x0014]       ; 0x7b06
    inc ax                           ; 0x7b09
@..math_loc_7a1b.l8:
    mov word [bp - 0x0016], ax       ; 0x7b0a
    mov ax, word [data_69c8]         ; 0x7b0d
    push ax                          ; 0x7b10
    cmp ax, word [bp - 0x0016]       ; 0x7b11
    pop ax                           ; 0x7b14
    jle short @..math_loc_7a1b.l9    ; 0x7b15
    mov ax, word [bp - 0x0016]       ; 0x7b17
@..math_loc_7a1b.l9:
    mov word [bp - 0x0016], ax       ; 0x7b1a
    cmp word [bp - 0x0004], byte 0x0c ; 0x7b1d
    je short @..math_loc_7a1b.l10    ; 0x7b21
    cmp word [bp - 0x0024], byte 1   ; 0x7b23
    je short @..math_loc_7a1b.l10    ; 0x7b27
    cmp word [bp - 0x000c], byte 0   ; 0x7b29
    je short @..math_loc_7a1b.l10    ; 0x7b2d
    mov ax, word [bp - 0x000c]       ; 0x7b2f
    cmp ax, strict word 3            ; 0x7b32
    je short @..math_loc_7a1b.l10    ; 0x7b35
    cmp ax, strict word 0xd          ; 0x7b37
    jne short @..math_loc_7a1b.l11   ; 0x7b3a
@..math_loc_7a1b.l10:
    mov ax, 1                        ; 0x7b3c
    jmp short @..math_loc_7a1b.l12   ; 0x7b3f
@..math_loc_7a1b.l11:
    mov ax, 0                        ; 0x7b41
@..math_loc_7a1b.l12:
    mov word [bp - 0x0012], ax       ; 0x7b44
    mov ax, word [bp - 0x0014]       ; 0x7b47
    mov word [bp - 0x0002], ax       ; 0x7b4a
    jmp near @..local.l305           ; 0x7b4d
@..math_loc_7a1b.l13:
    mov ax, 0x36                     ; 0x7b50
    push ax                          ; 0x7b53
    call ds_dispatch_b7a9            ; 0x7b54
    pop cx                           ; 0x7b57
    push ax                          ; 0x7b58
    mov ax, 0x248                    ; 0x7b59
    imul word [bp - 0x0002]          ; 0x7b5c
    mov bx, ax                       ; 0x7b5f
    mov al, byte [bx + 0x5d68]       ; 0x7b61
    sub ah, ah                       ; 0x7b65
    mov cx, ax                       ; 0x7b67
    sub ax, word [bp - 0x0008]       ; 0x7b69
    mov cx, ax                       ; 0x7b6c
    pop ax                           ; 0x7b6e
    cmp ax, cx                       ; 0x7b6f
    jg short @..math_loc_7a1b.l14    ; 0x7b71
    cmp word [bp - 0x0012], byte 0   ; 0x7b73
    jne short @..math_loc_7a1b.l14   ; 0x7b77
    jmp near @..local.l303           ; 0x7b79
@..math_loc_7a1b.l14:
    mov ax, word [bp - 0x000c]       ; 0x7b7c
    cmp ax, strict word 0xd          ; 0x7b7f
    jne short @..math_loc_7a1b.l15   ; 0x7b82
    mov al, byte [bx + 0x5d77]       ; 0x7b84
    sub ah, ah                       ; 0x7b88
    sub ax, word [bp - 0x0008]       ; 0x7b8a
    jmp short @..math_loc_7a1b.l17   ; 0x7b8d
@..math_loc_7a1b.l15:
    mov ax, word [bp - 0x000c]       ; 0x7b8f
    cmp ax, strict word 3            ; 0x7b92
    jne short @..math_loc_7a1b.l16   ; 0x7b95
    mov al, byte [bx + 0x5d76]       ; 0x7b97
    sub ah, ah                       ; 0x7b9b
    sub ax, word [bp - 0x0008]       ; 0x7b9d
    jmp short @..math_loc_7a1b.l17   ; 0x7ba0
@..math_loc_7a1b.l16:
    add bx, word [bp - 0x000c]       ; 0x7ba2
    mov al, byte [bx + 0x5d9c]       ; 0x7ba5
    sub ah, ah                       ; 0x7ba9
    push ax                          ; 0x7bab
    mov ax, 3                        ; 0x7bac
    imul word [bp - 0x0008]          ; 0x7baf
    mov cx, ax                       ; 0x7bb2
    pop ax                           ; 0x7bb4
    sub ax, cx                       ; 0x7bb5
@..math_loc_7a1b.l17:
    mov word [bp - 0x001e], ax       ; 0x7bb7
    mov ax, 1                        ; 0x7bba
    cmp word [bp - 0x000c], byte 0   ; 0x7bbd
    je short @..math_loc_7a1b.l19    ; 0x7bc1
    mov cx, word [bp - 0x000c]       ; 0x7bc3
    cmp cx, byte 0x0d                ; 0x7bc6
    je short @..math_loc_7a1b.l19    ; 0x7bc9
    cmp cx, byte 3                   ; 0x7bcb
    je short @..math_loc_7a1b.l19    ; 0x7bce
    mov ax, 0x64                     ; 0x7bd0
    push ax                          ; 0x7bd3
    call ds_dispatch_b7a9            ; 0x7bd4
    pop cx                           ; 0x7bd7
    cmp ax, word [bp - 0x001e]       ; 0x7bd8
    jle short @..math_loc_7a1b.l18   ; 0x7bdb
    mov ax, 1                        ; 0x7bdd
    jmp short @..math_loc_7a1b.l19   ; 0x7be0
@..math_loc_7a1b.l18:
    mov ax, 0                        ; 0x7be2
@..math_loc_7a1b.l19:
    mov word [bp - 0x000e], ax       ; 0x7be5
    mov ax, word [bp - 0x0008]       ; 0x7be8
    mov word [bp - 0x001a], ax       ; 0x7beb
    mov ax, word [bp - 0x000a]       ; 0x7bee
    mov word [bp - 0x001c], ax       ; 0x7bf1
@..math_loc_7a1b.l20:
    cmp word [bp - 0x001c], byte 0   ; 0x7bf4
    jle short @..local.l293          ; 0x7bf8
    mov ax, 0x64                     ; 0x7bfa
    push ax                          ; 0x7bfd
    call ds_dispatch_b7a9            ; 0x7bfe
    pop cx                           ; 0x7c01
    cmp ax, word [bp - 0x001e]       ; 0x7c02
    jge short @..local.l293          ; 0x7c05
    dec word [bp - 0x001c]           ; 0x7c07
    cmp word [bp - 0x001a], byte 0   ; 0x7c0a
    jle short @..local.l292          ; 0x7c0e
    mov ax, 0x64                     ; 0x7c10
    push ax                          ; 0x7c13
    call ds_dispatch_b7a9            ; 0x7c14
    pop cx                           ; 0x7c17
    cmp ax, word [bp - 0x001e]       ; 0x7c18
    jge short @..local.l292          ; 0x7c1b
    dec word [bp - 0x001a]           ; 0x7c1d
@..local.l292:
    jmp short @..math_loc_7a1b.l20   ; 0x7c20
@..local.l293:
    cmp word [bp - 0x0010], byte 0   ; 0x7c22
    je short @..local.l294           ; 0x7c26
    jmp near @..local.l300           ; 0x7c28
@..local.l294:
    cmp word [bp - 0x000e], byte 0   ; 0x7c2b
    jne short @..local.l295          ; 0x7c2f
    jmp near @..local.l300           ; 0x7c31
@..local.l295:
    cmp word [bp - 0x001a], byte 0   ; 0x7c34
    jg short @..local.l296           ; 0x7c38
    jmp near @..local.l300           ; 0x7c3a
@..local.l296:
    cmp word [bp - 0x001c], byte 0   ; 0x7c3d
    jg short @..local.l297           ; 0x7c41
    jmp near @..local.l300           ; 0x7c43
@..local.l297:
    cmp word [bp - 0x000c], byte 3   ; 0x7c46
    jne short @..local.l298          ; 0x7c4a
    mov ax, 0x248                    ; 0x7c4c
    imul word [bp - 0x0002]          ; 0x7c4f
    mov bx, ax                       ; 0x7c52
    cmp word [bx + 0x5c10], byte 0   ; 0x7c54
    jle short @..local.l298          ; 0x7c59
    push word [bx + 0x5c10]          ; 0x7c5b
    mov ax, 1                        ; 0x7c5f
    push ax                          ; 0x7c62
    push word [bp - 0x001a]          ; 0x7c63
    push word [bp - 0x001c]          ; 0x7c66
    push word [bp - 0x001a]          ; 0x7c69
    call ds_dispatch_d0ea            ; 0x7c6c
    add sp, byte 6                   ; 0x7c6f
    mov cx, ax                       ; 0x7c72
    sub sp, byte 4                   ; 0x7c74
    mov ax, sp                       ; 0x7c77
    mov dx, ss                       ; 0x7c79
    mov es, dx                       ; 0x7c7b
    mov si, cx                       ; 0x7c7d
    mov di, ax                       ; 0x7c7f
    movsw                            ; 0x7c81
    movsw                            ; 0x7c82
    call ds_dispatch_d0be            ; 0x7c83
    add sp, byte 4                   ; 0x7c86
    mov cx, ax                       ; 0x7c89
    mov ax, 0x248                    ; 0x7c8b
    imul word [bp - 0x0002]          ; 0x7c8e
    mov bx, ax                       ; 0x7c91
    mov ax, word [bx + 0x5c10]       ; 0x7c93
    sub ax, cx                       ; 0x7c97
    push ax                          ; 0x7c99
    call ds_dispatch_b7c2            ; 0x7c9a
    add sp, byte 6                   ; 0x7c9d
    push ax                          ; 0x7ca0
    mov ax, 0x248                    ; 0x7ca1
    imul word [bp - 0x0002]          ; 0x7ca4
    mov bx, ax                       ; 0x7ca7
    pop ax                           ; 0x7ca9
    mov word [bx + 0x5c10], ax       ; 0x7caa
@..local.l298:
    push word [bp - 0x001c]          ; 0x7cae
    push word [bp - 0x001a]          ; 0x7cb1
    push word [bp - 0x0002]          ; 0x7cb4
    call api_idx_003e                ; 0x7cb7
    add sp, byte 6                   ; 0x7cba
    cmp word [bp - 0x000c], byte 3   ; 0x7cbd
    jne short @..local.l299          ; 0x7cc1
    mov ax, data_0002                ; 0x7cc3
    push ax                          ; 0x7cc6
    mov ax, 0xa                      ; 0x7cc7
    push ax                          ; 0x7cca
    push word [bp - 0x0002]          ; 0x7ccb
    call math_loc_0f54               ; 0x7cce
    add sp, byte 6                   ; 0x7cd1
@..local.l299:
    cmp word [bp - 0x000c], byte 0x0d ; 0x7cd4
    jne short @..local.l300          ; 0x7cd8
    mov ax, 1                        ; 0x7cda
    push ax                          ; 0x7cdd
    mov ax, 0xb                      ; 0x7cde
    push ax                          ; 0x7ce1
    push word [bp - 0x0002]          ; 0x7ce2
    call math_loc_0f54               ; 0x7ce5
    add sp, byte 6                   ; 0x7ce8
@..local.l300:
    cmp word [bp - 0x0004], byte 0   ; 0x7ceb
    jle short @..local.l303          ; 0x7cef
    cmp word [bp - 0x0004], byte 6   ; 0x7cf1
    jge short @..local.l301          ; 0x7cf5
    push word [bp - 0x0004]          ; 0x7cf7
    push word [bp - 0x000c]          ; 0x7cfa
    mov ax, word [bp - 0x0004]       ; 0x7cfd
    add ax, api_idx_0006             ; 0x7d00
    push ax                          ; 0x7d03
    push word [bp - 0x0002]          ; 0x7d04
    call api_idx_005a                ; 0x7d07
    add sp, byte 8                   ; 0x7d0a
    jmp short @..local.l303          ; 0x7d0d
@..local.l301:
    mov ax, word [bp - 0x0008]       ; 0x7d0f
    mov cx, word [bp - 0x0004]       ; 0x7d12
    cmp cx, byte 0x0c                ; 0x7d15
    jne short @..local.l302          ; 0x7d18
    mov ax, 0xff                     ; 0x7d1a
@..local.l302:
    push ax                          ; 0x7d1d
    mov ax, 0xa                      ; 0x7d1e
    push ax                          ; 0x7d21
    push word [bp - 0x0008]          ; 0x7d22
    add cx, byte 0xfa                ; 0x7d25
    mov ax, cx                       ; 0x7d28
    push ax                          ; 0x7d2a
    push word [bp - 0x000c]          ; 0x7d2b
    mov ax, word [bp - 0x0004]       ; 0x7d2e
    add ax, 0x147c                   ; 0x7d31
    push ax                          ; 0x7d34
    push word [bp - 0x0002]          ; 0x7d35
    call api_idx_0056                ; 0x7d38
    add sp, byte 0x0e                ; 0x7d3b
@..local.l303:
    cmp word [bp - 0x0024], byte 0   ; 0x7d3e
    je short @..local.l304           ; 0x7d42
    mov ax, 0x248                    ; 0x7d44
    imul word [bp - 0x0002]          ; 0x7d47
    mov bx, ax                       ; 0x7d4a
    cmp byte [bx + 0x5d5c], 0        ; 0x7d4c
    jne short @..local.l304          ; 0x7d51
    mov ax, data_0002                ; 0x7d53
    push ax                          ; 0x7d56
    mov ax, 0x17                     ; 0x7d57
    push ax                          ; 0x7d5a
    push word [bp - 0x0002]          ; 0x7d5b
    call math_loc_0f54               ; 0x7d5e
    add sp, byte 6                   ; 0x7d61
@..local.l304:
    inc word [bp - 0x0002]           ; 0x7d64
@..local.l305:
    mov ax, word [bp - 0x0002]       ; 0x7d67
    cmp ax, word [bp - 0x0016]       ; 0x7d6a
    jge short @..local.l306          ; 0x7d6d
    jmp near @..math_loc_7a1b.l13    ; 0x7d6f
@..local.l306:
    mov ax, data_0002                ; 0x7d72
    push ax                          ; 0x7d75
    mov ax, 0xd                      ; 0x7d76
    push ax                          ; 0x7d79
    mov ax, word [data_8d12]         ; 0x7d7a
    shl ax, 1                        ; 0x7d7d
    mov si, ax                       ; 0x7d7f
    mov bx, word [data_0e12]         ; 0x7d81
    push word [bx + si + 0x3c0]      ; 0x7d85
    call ds_dispatch_ed3a            ; 0x7d89
    add sp, byte 6                   ; 0x7d8c
    push ax                          ; 0x7d8f
    call math_loc_782b               ; 0x7d90
    pop cx                           ; 0x7d93
    inc word [data_8d12]             ; 0x7d94
    ret                              ; 0x7d98
loc_7d99:
    mov ax, 0                        ; 0x7d99
    call ds_dispatch_f40b            ; 0x7d9c
    call ds_dispatch_c145            ; 0x7d9f
    mov ax, 1                        ; 0x7da2
    push ax                          ; 0x7da5
    mov ax, 5                        ; 0x7da6
    push ax                          ; 0x7da9
    push ax                          ; 0x7daa
    call ds_dispatch_d6dc            ; 0x7dab
    add sp, byte 6                   ; 0x7dae
    mov ax, 7                        ; 0x7db1
    push ax                          ; 0x7db4
    mov ax, 9                        ; 0x7db5
    push ax                          ; 0x7db8
    call ds_dispatch_d61c            ; 0x7db9
    add sp, byte 4                   ; 0x7dbc
    mov ax, 0xf                      ; 0x7dbf
    push ax                          ; 0x7dc2
    mov ax, 0xd                      ; 0x7dc3
    push ax                          ; 0x7dc6
    call ds_dispatch_d61c            ; 0x7dc7
    add sp, byte 4                   ; 0x7dca
    mov ax, 0                        ; 0x7dcd
    push ax                          ; 0x7dd0
    mov ax, data_0002                ; 0x7dd1
    push ax                          ; 0x7dd4
    mov ax, 0x8f                     ; 0x7dd5
    push ax                          ; 0x7dd8
    mov ax, 0xf7                     ; 0x7dd9
    push ax                          ; 0x7ddc
    mov ax, 0x21                     ; 0x7ddd
    push ax                          ; 0x7de0
    mov ax, 0x48                     ; 0x7de1
    push ax                          ; 0x7de4
    call ds_dispatch_e935            ; 0x7de5
    add sp, byte 0x0c                ; 0x7de8
    mov word [data_9062], dx         ; 0x7deb
    mov word [data_9060], ax         ; 0x7def
    cmp word [data_906a], byte 0     ; 0x7df2
    je short @..local.l307           ; 0x7df7
    mov ax, 1                        ; 0x7df9
    push ax                          ; 0x7dfc
    push word [data_9068]            ; 0x7dfd
    call ds_dispatch_c459            ; 0x7e01
    add sp, byte 4                   ; 0x7e04
    mov word [data_906a], 0          ; 0x7e07
@..local.l307:
    mov ax, 0                        ; 0x7e0d
    push ax                          ; 0x7e10
    mov ax, data_0002                ; 0x7e11
    push ax                          ; 0x7e14
    mov ax, 0x8f                     ; 0x7e15
    push ax                          ; 0x7e18
    mov ax, 0xf7                     ; 0x7e19
    push ax                          ; 0x7e1c
    mov ax, 0x21                     ; 0x7e1d
    push ax                          ; 0x7e20
    mov ax, 0x48                     ; 0x7e21
    push ax                          ; 0x7e24
    call ds_dispatch_e935            ; 0x7e25
    add sp, byte 0x0c                ; 0x7e28
    mov word [data_9066], dx         ; 0x7e2b
    mov word [data_9064], ax         ; 0x7e2f
    call api_idx_000e                ; 0x7e32
    mov ax, 0xc6                     ; 0x7e35
    push ax                          ; 0x7e38
    mov ax, 0x127                    ; 0x7e39
    push ax                          ; 0x7e3c
    mov ax, 0xa5                     ; 0x7e3d
    push ax                          ; 0x7e40
    mov ax, 0x19                     ; 0x7e41
    push ax                          ; 0x7e44
    call ds_dispatch_e928            ; 0x7e45
    add sp, byte 8                   ; 0x7e48
    mov word [data_8d10], dx         ; 0x7e4b
    mov word [data_8d0e], ax         ; 0x7e4f
    mov ax, 0xa4                     ; 0x7e52
    push ax                          ; 0x7e55
    mov ax, 0xff                     ; 0x7e56
    push ax                          ; 0x7e59
    mov ax, 0x92                     ; 0x7e5a
    push ax                          ; 0x7e5d
    mov ax, 0x41                     ; 0x7e5e
    push ax                          ; 0x7e61
    call ds_dispatch_e928            ; 0x7e62
    add sp, byte 8                   ; 0x7e65
    mov word [data_8d0c], dx         ; 0x7e68
    mov word [data_8d0a], ax         ; 0x7e6c
    mov ax, 1                        ; 0x7e6f
    push ax                          ; 0x7e72
    mov ax, data_0002                ; 0x7e73
    push ax                          ; 0x7e76
    call ds_dispatch_d61c            ; 0x7e77
    add sp, byte 4                   ; 0x7e7a
    mov ax, data_0002                ; 0x7e7d
    push ax                          ; 0x7e80
    mov ax, 3                        ; 0x7e81
    push ax                          ; 0x7e84
    call ds_dispatch_d61c            ; 0x7e85
    add sp, byte 4                   ; 0x7e88
    mov word [data_91d4], 1          ; 0x7e8b
    mov word [data_9124], 5          ; 0x7e91
    mov word [data_911c], 0x8f       ; 0x7e97
    call ds_dispatch_ec17            ; 0x7e9d
    mov word [data_9126], 0          ; 0x7ea0
    cmp word [bp + 0x4], byte 0      ; 0x7ea6
    jle short @..local.l308          ; 0x7eaa
    mov ax, 0x9128                   ; 0x7eac
    push ax                          ; 0x7eaf
    push word [bp + 0x4]             ; 0x7eb0
    call ds_dispatch_b53b            ; 0x7eb3
    add sp, byte 4                   ; 0x7eb6
@..local.l308:
    ret                              ; 0x7eb9
loc_7eba:
    mov ax, 0                        ; 0x7eba
    call ds_dispatch_f40b            ; 0x7ebd
    mov ax, 0                        ; 0x7ec0
    push ax                          ; 0x7ec3
    mov ax, 1                        ; 0x7ec4
    push ax                          ; 0x7ec7
    push word [data_9066]            ; 0x7ec8
    push word [data_9064]            ; 0x7ecc
    call ds_dispatch_e942            ; 0x7ed0
    add sp, byte 8                   ; 0x7ed3
    mov ax, 0                        ; 0x7ed6
    push ax                          ; 0x7ed9
    mov ax, 1                        ; 0x7eda
    push ax                          ; 0x7edd
    push word [data_9062]            ; 0x7ede
    push word [data_9060]            ; 0x7ee2
    call ds_dispatch_e942            ; 0x7ee6
    add sp, byte 8                   ; 0x7ee9
    call api_idx_000e                ; 0x7eec
    mov ax, 0xf                      ; 0x7eef
    push ax                          ; 0x7ef2
    call ds_dispatch_c12a            ; 0x7ef3
    pop cx                           ; 0x7ef6
    mov ax, 7                        ; 0x7ef7
    push ax                          ; 0x7efa
    call ds_dispatch_c12a            ; 0x7efb
    pop cx                           ; 0x7efe
    mov ax, 5                        ; 0x7eff
    push ax                          ; 0x7f02
    call ds_dispatch_d6c6            ; 0x7f03
    pop cx                           ; 0x7f06
    mov ax, 0                        ; 0x7f07
    push ax                          ; 0x7f0a
    call api_idx_000a_2              ; 0x7f0b
    pop cx                           ; 0x7f0e
    mov ax, 1                        ; 0x7f0f
    push ax                          ; 0x7f12
    call ds_dispatch_c12a            ; 0x7f13
    pop cx                           ; 0x7f16
    mov ax, data_0002                ; 0x7f17
    push ax                          ; 0x7f1a
    call ds_dispatch_c12a            ; 0x7f1b
    pop cx                           ; 0x7f1e
    mov ax, 1                        ; 0x7f1f
    push ax                          ; 0x7f22
    push word [data_8d0c]            ; 0x7f23
    push word [data_8d0a]            ; 0x7f27
    call ds_dispatch_e94f            ; 0x7f2b
    add sp, byte 6                   ; 0x7f2e
    mov ax, 1                        ; 0x7f31
    push ax                          ; 0x7f34
    push word [data_8d10]            ; 0x7f35
    push word [data_8d0e]            ; 0x7f39
    call ds_dispatch_e94f            ; 0x7f3d
    add sp, byte 6                   ; 0x7f40
    mov ax, 0xc6                     ; 0x7f43
    push ax                          ; 0x7f46
    mov ax, 0x109                    ; 0x7f47
    push ax                          ; 0x7f4a
    mov ax, 0x92                     ; 0x7f4b
    push ax                          ; 0x7f4e
    mov ax, 0x37                     ; 0x7f4f
    push ax                          ; 0x7f52
    call ds_dispatch_bb33            ; 0x7f53
    add sp, byte 8                   ; 0x7f56
    ret                              ; 0x7f59
api_idx_0050_2:
    mov ax, 0xffb0                   ; 0x7f5a
    call ds_dispatch_f40b            ; 0x7f5d
    mov ax, 0x138c                   ; 0x7f60
    push ax                          ; 0x7f63
    call loc_7d99                    ; 0x7f64
    pop cx                           ; 0x7f67
    mov ax, 1                        ; 0x7f68
    push ax                          ; 0x7f6b
    call api_idx_000a_2              ; 0x7f6c
    pop cx                           ; 0x7f6f
    push word [data_0e2c]            ; 0x7f70
    push word [data_0e2a]            ; 0x7f74
    call ds_dispatch_b8af            ; 0x7f78
    add sp, byte 4                   ; 0x7f7b
    mov ax, 0                        ; 0x7f7e
    push ax                          ; 0x7f81
    mov ax, 0xa4                     ; 0x7f82
    push ax                          ; 0x7f85
    mov ax, 0x12e                    ; 0x7f86
    push ax                          ; 0x7f89
    call ds_dispatch_f0e4            ; 0x7f8a
    add sp, byte 6                   ; 0x7f8d
    call ds_dispatch_d9a6            ; 0x7f90
    mov word [data_8450], ax         ; 0x7f93
    test ax, ax                      ; 0x7f96
    je short @..api_idx_0050_2.l1    ; 0x7f98
    mov ax, 0                        ; 0x7f9a
    push ax                          ; 0x7f9d
    mov ax, 3                        ; 0x7f9e
    push ax                          ; 0x7fa1
    call ds_dispatch_d7e7            ; 0x7fa2
    add sp, byte 4                   ; 0x7fa5
    mov ax, 1                        ; 0x7fa8
    push ax                          ; 0x7fab
    mov ax, data_0002                ; 0x7fac
    push ax                          ; 0x7faf
    call ds_dispatch_d7e7            ; 0x7fb0
    add sp, byte 4                   ; 0x7fb3
    mov ax, word [data_0112]         ; 0x7fb6
    mov word [data_844e], ax         ; 0x7fb9
    mov ax, 0                        ; 0x7fbc
    push ax                          ; 0x7fbf
    push word [data_844e]            ; 0x7fc0
    push ax                          ; 0x7fc4
    call ds_dispatch_d964            ; 0x7fc5
    add sp, byte 6                   ; 0x7fc8
    mov word [data_844c], ax         ; 0x7fcb
@..api_idx_0050_2.l1:
    lea ax, word [bp - 0x0050]       ; 0x7fce
    push ax                          ; 0x7fd1
    mov ax, 0x1388                   ; 0x7fd2
    push ax                          ; 0x7fd5
    call ds_dispatch_b53b            ; 0x7fd6
    add sp, byte 4                   ; 0x7fd9
    mov ax, 0xa9                     ; 0x7fdc
    push ax                          ; 0x7fdf
    mov ax, 0xffff                   ; 0x7fe0
    push ax                          ; 0x7fe3
    push word [data_91d4]            ; 0x7fe4
    lea ax, word [bp - 0x0050]       ; 0x7fe8
    push ax                          ; 0x7feb
    call math_loc_0eb2               ; 0x7fec
    add sp, byte 8                   ; 0x7fef
    cmp word [data_8450], byte 0     ; 0x7ff2
    je short @..api_idx_0050_2.l4    ; 0x7ff7
@..api_idx_0050_2.l2:
    call ds_dispatch_ef83            ; 0x7ff9
    test ax, ax                      ; 0x7ffc
    je short @..api_idx_0050_2.l3    ; 0x7ffe
    jmp short @..api_idx_0050_2.l2   ; 0x8000
@..api_idx_0050_2.l3:
    mov ax, 0x190                    ; 0x8002
    push ax                          ; 0x8005
    call ds_dispatch_e489            ; 0x8006
    pop cx                           ; 0x8009
    push word [data_91d4]            ; 0x800a
    push word [data_91d4]            ; 0x800e
    call api_idx_0004_4              ; 0x8012
    add sp, byte 4                   ; 0x8015
    mov ax, word [data_0110]         ; 0x8018
    mov word [data_844e], ax         ; 0x801b
    mov ax, 1                        ; 0x801e
    push ax                          ; 0x8021
    push word [data_844e]            ; 0x8022
    push ax                          ; 0x8026
    call ds_dispatch_d964            ; 0x8027
    add sp, byte 6                   ; 0x802a
    mov word [data_844c], ax         ; 0x802d
@..api_idx_0050_2.l4:
    cmp word [data_84a4], byte 0     ; 0x8030
    jl short @..api_idx_0050_2.l5    ; 0x8035
    jne short @..api_idx_0050_2.l6   ; 0x8037
    cmp word [data_84a2], byte 0     ; 0x8039
    ja short @..api_idx_0050_2.l6    ; 0x803e
@..api_idx_0050_2.l5:
    jmp short @..api_idx_0050_2.l7   ; 0x8040
@..api_idx_0050_2.l6:
    call api_idx_00a8                ; 0x8042
@..api_idx_0050_2.l7:
    mov ax, 0                        ; 0x8045
    push ax                          ; 0x8048
    mov ax, 0xa4                     ; 0x8049
    push ax                          ; 0x804c
    mov ax, 0x12e                    ; 0x804d
    push ax                          ; 0x8050
    call ds_dispatch_f0f1            ; 0x8051
    add sp, byte 6                   ; 0x8054
    mov ax, 0                        ; 0x8057
    mov dx, 0                        ; 0x805a
    push dx                          ; 0x805d
    push ax                          ; 0x805e
    call ds_dispatch_b8af            ; 0x805f
    add sp, byte 4                   ; 0x8062
    cmp word [data_84a0], byte 0xff  ; 0x8065
    je short @..api_idx_0050_2.l8    ; 0x806a
    mov word [data_905e], 0xf        ; 0x806c
    call loc_5789                    ; 0x8072
@..api_idx_0050_2.l8:
    cmp word [data_8450], byte 0     ; 0x8075
    je short @..api_idx_0050_2.l9    ; 0x807a
    push word [data_844c]            ; 0x807c
    push word [data_844e]            ; 0x8080
    call ds_dispatch_d91b            ; 0x8084
    add sp, byte 4                   ; 0x8087
    mov ax, 1                        ; 0x808a
    push ax                          ; 0x808d
    call ds_dispatch_d907            ; 0x808e
    pop cx                           ; 0x8091
    mov ax, 0                        ; 0x8092
    push ax                          ; 0x8095
    call ds_dispatch_d907            ; 0x8096
    pop cx                           ; 0x8099
@..api_idx_0050_2.l9:
    call loc_7eba                    ; 0x809a
    ret                              ; 0x809d
loc_809e:
    mov ax, 0                        ; 0x809e
    call ds_dispatch_f40b            ; 0x80a1
    mov word [data_849e], 0xffff     ; 0x80a4
    mov ax, 0x138c                   ; 0x80aa
    push ax                          ; 0x80ad
    call loc_7d99                    ; 0x80ae
    pop cx                           ; 0x80b1
    mov ax, 0                        ; 0x80b2
    push ax                          ; 0x80b5
    call api_idx_000a_2              ; 0x80b6
    pop cx                           ; 0x80b9
    cmp word [data_84a0], byte 0xff  ; 0x80ba
    je short @..local.l310           ; 0x80bf
    call ds_dispatch_d9a6            ; 0x80c1
    mov word [data_8450], ax         ; 0x80c4
    test ax, ax                      ; 0x80c7
    je short @..local.l309           ; 0x80c9
    mov ax, 1                        ; 0x80cb
    push ax                          ; 0x80ce
    mov ax, data_0002                ; 0x80cf
    push ax                          ; 0x80d2
    call ds_dispatch_d7e7            ; 0x80d3
    add sp, byte 4                   ; 0x80d6
    mov ax, word [data_0110]         ; 0x80d9
    mov word [data_844e], ax         ; 0x80dc
    mov ax, 1                        ; 0x80df
    push ax                          ; 0x80e2
    push word [data_844e]            ; 0x80e3
    push ax                          ; 0x80e7
    call ds_dispatch_d964            ; 0x80e8
    add sp, byte 6                   ; 0x80eb
    mov word [data_844c], ax         ; 0x80ee
@..local.l309:
    mov word [data_905e], 0x15       ; 0x80f1
    call loc_5789                    ; 0x80f7
    cmp word [data_8450], byte 0     ; 0x80fa
    je short @..local.l310           ; 0x80ff
    push word [data_844c]            ; 0x8101
    push word [data_844e]            ; 0x8105
    call ds_dispatch_d91b            ; 0x8109
    add sp, byte 4                   ; 0x810c
    mov ax, 1                        ; 0x810f
    push ax                          ; 0x8112
    call ds_dispatch_d907            ; 0x8113
    pop cx                           ; 0x8116
@..local.l310:
    inc word [data_8d12]             ; 0x8117
    call loc_7eba                    ; 0x811b
    ret                              ; 0x811e
loc_811f:
    mov ax, 0                        ; 0x811f
    call ds_dispatch_f40b            ; 0x8122
    mov ax, 0x138e                   ; 0x8125
    cmp word [data_5b6e], byte 1     ; 0x8128
    jne short @..local.l311          ; 0x812d
    mov ax, 0x138f                   ; 0x812f
@..local.l311:
    push ax                          ; 0x8132
    call loc_7d99                    ; 0x8133
    pop cx                           ; 0x8136
    mov ax, 0                        ; 0x8137
    push ax                          ; 0x813a
    call api_idx_000a_2              ; 0x813b
    pop cx                           ; 0x813e
    mov ax, 0xc6                     ; 0x813f
    push ax                          ; 0x8142
    mov ax, 0x109                    ; 0x8143
    push ax                          ; 0x8146
    mov ax, 0x92                     ; 0x8147
    push ax                          ; 0x814a
    mov ax, 0x37                     ; 0x814b
    push ax                          ; 0x814e
    call ds_dispatch_e8da            ; 0x814f
    add sp, byte 8                   ; 0x8152
    call ds_dispatch_d9a6            ; 0x8155
    mov word [data_8450], ax         ; 0x8158
    test ax, ax                      ; 0x815b
    je short @..local.l312           ; 0x815d
    mov ax, 1                        ; 0x815f
    push ax                          ; 0x8162
    mov ax, data_0002                ; 0x8163
    push ax                          ; 0x8166
    call ds_dispatch_d7e7            ; 0x8167
    add sp, byte 4                   ; 0x816a
    mov ax, word [data_0110]         ; 0x816d
    mov word [data_844e], ax         ; 0x8170
    mov ax, 1                        ; 0x8173
    push ax                          ; 0x8176
    push word [data_844e]            ; 0x8177
    push ax                          ; 0x817b
    call ds_dispatch_d964            ; 0x817c
    add sp, byte 6                   ; 0x817f
    mov word [data_844c], ax         ; 0x8182
@..local.l312:
    push word [data_84a0]            ; 0x8185
    call api_idx_0072                ; 0x8189
    pop cx                           ; 0x818c
    mov ax, 1                        ; 0x818d
    push ax                          ; 0x8190
    call api_idx_000a_2              ; 0x8191
    pop cx                           ; 0x8194
    cmp word [data_8450], byte 0     ; 0x8195
    je short @..local.l313           ; 0x819a
    push word [data_844c]            ; 0x819c
    push word [data_844e]            ; 0x81a0
    call ds_dispatch_d91b            ; 0x81a4
    add sp, byte 4                   ; 0x81a7
    mov ax, 1                        ; 0x81aa
    push ax                          ; 0x81ad
    call ds_dispatch_d907            ; 0x81ae
    pop cx                           ; 0x81b1
@..local.l313:
    call loc_7eba                    ; 0x81b2
    ret                              ; 0x81b5
loc_81b6:
    mov ax, 0                        ; 0x81b6
    call ds_dispatch_f40b            ; 0x81b9
    mov ax, 0x7f6                    ; 0x81bc
    push ax                          ; 0x81bf
    call loc_7d99                    ; 0x81c0
    pop cx                           ; 0x81c3
    mov ax, 0                        ; 0x81c4
    push ax                          ; 0x81c7
    call api_idx_000a_2              ; 0x81c8
    pop cx                           ; 0x81cb
    call api_idx_00e6                ; 0x81cc
    mov ax, 1                        ; 0x81cf
    push ax                          ; 0x81d2
    call api_idx_000a_2              ; 0x81d3
    pop cx                           ; 0x81d6
    call loc_7eba                    ; 0x81d7
    ret                              ; 0x81da
loc_81db:
    mov ax, 0                        ; 0x81db
    call ds_dispatch_f40b            ; 0x81de
    mov ax, 0                        ; 0x81e1
    push ax                          ; 0x81e4
    call loc_7d99                    ; 0x81e5
    pop cx                           ; 0x81e8
    mov ax, 0                        ; 0x81e9
    push ax                          ; 0x81ec
    call api_idx_000a_2              ; 0x81ed
    pop cx                           ; 0x81f0
    call api_idx_0074_2              ; 0x81f1
    mov ax, 1                        ; 0x81f4
    push ax                          ; 0x81f7
    call api_idx_000a_2              ; 0x81f8
    pop cx                           ; 0x81fb
    call loc_7eba                    ; 0x81fc
    ret                              ; 0x81ff
api_idx_002a:
    mov ax, 0xffd6                   ; 0x8200
    call ds_dispatch_f40b            ; 0x8203
    mov ax, 0                        ; 0x8206
    push ax                          ; 0x8209
    mov ax, 0x28                     ; 0x820a
    push ax                          ; 0x820d
    lea ax, word [bp - 0x002a]       ; 0x820e
    push ax                          ; 0x8211
    call ds_dispatch_f306            ; 0x8212
    add sp, byte 6                   ; 0x8215
    push word [bp + 0x4]             ; 0x8218
    lea ax, word [bp - 0x002a]       ; 0x821b
    push ax                          ; 0x821e
    call ds_dispatch_f364            ; 0x821f
    add sp, byte 4                   ; 0x8222
    mov ax, 0x2f                     ; 0x8225
    push ax                          ; 0x8228
    lea ax, word [bp - 0x002a]       ; 0x8229
    push ax                          ; 0x822c
    call ds_dispatch_ee4a            ; 0x822d
    add sp, byte 4                   ; 0x8230
    mov word [bp - 0x0002], ax       ; 0x8233
    cmp ax, strict word 0xffff       ; 0x8236
    jne short @..api_idx_002a.l1     ; 0x8239
    lea ax, word [bp - 0x002a]       ; 0x823b
    push ax                          ; 0x823e
    call ds_dispatch_fa90            ; 0x823f
    pop cx                           ; 0x8242
    mov word [bp - 0x0002], ax       ; 0x8243
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x8246
    jle short @..api_idx_002a.l2     ; 0x824a
    mov word [bp - 0x0002], 0xa      ; 0x824c
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x8251
    add bx, bp                       ; 0x8254
    mov byte [bx - 0x002a], 0        ; 0x8256
    mov byte [bx - 0x001f], 0        ; 0x825a
    mov ax, 0                        ; 0x825e
    push ax                          ; 0x8261
    push word [bp + 0xa]             ; 0x8262
    call ds_dispatch_e823            ; 0x8265
    add sp, byte 4                   ; 0x8268
    push word [bp + 0x8]             ; 0x826b
    push word [bp + 0x6]             ; 0x826e
    call ds_dispatch_e809            ; 0x8271
    add sp, byte 4                   ; 0x8274
    mov ax, 0                        ; 0x8277
    push ax                          ; 0x827a
    lea ax, word [bp - 0x002a]       ; 0x827b
    push ax                          ; 0x827e
    call ds_dispatch_e84e            ; 0x827f
    add sp, byte 4                   ; 0x8282
    mov ax, word [bp + 0x8]          ; 0x8285
    add ax, strict word 6            ; 0x8288
    push ax                          ; 0x828b
    push word [bp + 0x6]             ; 0x828c
    call ds_dispatch_e809            ; 0x828f
    add sp, byte 4                   ; 0x8292
    mov ax, 0                        ; 0x8295
    push ax                          ; 0x8298
    mov ax, word [bp - 0x0002]       ; 0x8299
    lea cx, word [bp - 0x0029]       ; 0x829c
    add ax, cx                       ; 0x829f
    push ax                          ; 0x82a1
    call ds_dispatch_e84e            ; 0x82a2
    add sp, byte 4                   ; 0x82a5
    ret                              ; 0x82a8
math_loc_82a9:
    mov ax, 0                        ; 0x82a9
    call ds_dispatch_f40b            ; 0x82ac
    mov ax, 0xa                      ; 0x82af
    push ax                          ; 0x82b2
    call ds_dispatch_e489            ; 0x82b3
    pop cx                           ; 0x82b6
    ret                              ; 0x82b7
api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x82b8
    call ds_dispatch_f40b            ; 0x82bb
    mov ax, word [bp + 0x6]          ; 0x82be
    cwd                              ; 0x82c1
    idiv word [bp + 0x12]            ; 0x82c2
    imul word [bp + 0xe]             ; 0x82c5
    mov word [bp - 0x0002], ax       ; 0x82c8
    mov ax, word [bp + 0x6]          ; 0x82cb
    cwd                              ; 0x82ce
    idiv word [bp + 0x12]            ; 0x82cf
    mov ax, dx                       ; 0x82d2
    imul word [bp + 0x10]            ; 0x82d4
    mov word [bp - 0x0004], ax       ; 0x82d7
    mov ax, word [bp + 0xa]          ; 0x82da
    add ax, word [bp - 0x0004]       ; 0x82dd
    add ax, strict word 9            ; 0x82e0
    push ax                          ; 0x82e3
    mov ax, 6                        ; 0x82e4
    imul word [bp + 0xc]             ; 0x82e7
    add ax, word [bp + 0x8]          ; 0x82ea
    add ax, word [bp - 0x0002]       ; 0x82ed
    inc ax                           ; 0x82f0
    push ax                          ; 0x82f1
    mov ax, word [bp + 0xa]          ; 0x82f2
    add ax, word [bp - 0x0004]       ; 0x82f5
    dec ax                           ; 0x82f8
    push ax                          ; 0x82f9
    mov ax, word [bp + 0x8]          ; 0x82fa
    add ax, word [bp - 0x0002]       ; 0x82fd
    dec ax                           ; 0x8300
    push ax                          ; 0x8301
    call ds_dispatch_e928            ; 0x8302
    add sp, byte 8                   ; 0x8305
    mov word [bp - 0x0006], dx       ; 0x8308
    mov word [bp - 0x0008], ax       ; 0x830b
    mov ax, 0                        ; 0x830e
    push ax                          ; 0x8311
    mov ax, word [bp + 0xa]          ; 0x8312
    add ax, word [bp - 0x0004]       ; 0x8315
    add ax, strict word 8            ; 0x8318
    push ax                          ; 0x831b
    mov ax, 6                        ; 0x831c
    imul word [bp + 0xc]             ; 0x831f
    add ax, word [bp + 0x8]          ; 0x8322
    add ax, word [bp - 0x0002]       ; 0x8325
    push ax                          ; 0x8328
    mov ax, word [bp + 0xa]          ; 0x8329
    add ax, word [bp - 0x0004]       ; 0x832c
    push ax                          ; 0x832f
    mov ax, word [bp + 0x8]          ; 0x8330
    add ax, word [bp - 0x0002]       ; 0x8333
    push ax                          ; 0x8336
    call ds_dispatch_bce3            ; 0x8337
    add sp, byte 0x0a                ; 0x833a
    mov ax, 0xc0                     ; 0x833d
    push ax                          ; 0x8340
    push word [bp + 0x14]            ; 0x8341
    call ds_dispatch_e823            ; 0x8344
    add sp, byte 4                   ; 0x8347
    mov ax, word [bp + 0xa]          ; 0x834a
    add ax, word [bp - 0x0004]       ; 0x834d
    inc ax                           ; 0x8350
    inc ax                           ; 0x8351
    push ax                          ; 0x8352
    push word [bp + 0x4]             ; 0x8353
    call ds_dispatch_fa90            ; 0x8356
    pop cx                           ; 0x8359
    mov cx, ax                       ; 0x835a
    mov ax, word [bp + 0xc]          ; 0x835c
    sub ax, cx                       ; 0x835f
    mov cx, 6                        ; 0x8361
    imul cx                          ; 0x8364
    mov cx, data_0002                ; 0x8366
    cwd                              ; 0x8369
    idiv cx                          ; 0x836a
    add ax, word [bp + 0x8]          ; 0x836c
    add ax, word [bp - 0x0002]       ; 0x836f
    inc ax                           ; 0x8372
    push ax                          ; 0x8373
    call ds_dispatch_e809            ; 0x8374
    add sp, byte 4                   ; 0x8377
    mov ax, 0                        ; 0x837a
    push ax                          ; 0x837d
    push word [bp + 0x4]             ; 0x837e
    call ds_dispatch_e84e            ; 0x8381
    add sp, byte 4                   ; 0x8384
    mov ax, word [bp + 0xa]          ; 0x8387
    add ax, word [bp - 0x0004]       ; 0x838a
    add ax, strict word 9            ; 0x838d
    push ax                          ; 0x8390
    mov ax, 6                        ; 0x8391
    imul word [bp + 0xc]             ; 0x8394
    add ax, word [bp + 0x8]          ; 0x8397
    add ax, word [bp - 0x0002]       ; 0x839a
    inc ax                           ; 0x839d
    push ax                          ; 0x839e
    mov ax, word [bp + 0xa]          ; 0x839f
    add ax, word [bp - 0x0004]       ; 0x83a2
    dec ax                           ; 0x83a5
    push ax                          ; 0x83a6
    mov ax, word [bp + 0x8]          ; 0x83a7
    add ax, word [bp - 0x0002]       ; 0x83aa
    dec ax                           ; 0x83ad
    push ax                          ; 0x83ae
    call ds_dispatch_e8da            ; 0x83af
    add sp, byte 8                   ; 0x83b2
    mov ax, 1                        ; 0x83b5
    push ax                          ; 0x83b8
    push word [bp - 0x0006]          ; 0x83b9
    push word [bp - 0x0008]          ; 0x83bc
    call ds_dispatch_e94f            ; 0x83bf
    add sp, byte 6                   ; 0x83c2
    ret                              ; 0x83c5
loc_83c6:
    mov ax, 0                        ; 0x83c6
    call ds_dispatch_f40b            ; 0x83c9
    push word [bp + 0xc]             ; 0x83cc
    mov ax, word [bp + 0x6]          ; 0x83cf
    dec ax                           ; 0x83d2
    push ax                          ; 0x83d3
    mov ax, word [bp + 0x8]          ; 0x83d4
    inc ax                           ; 0x83d7
    push ax                          ; 0x83d8
    mov ax, word [bp + 0x6]          ; 0x83d9
    dec ax                           ; 0x83dc
    push ax                          ; 0x83dd
    mov ax, word [bp + 0x4]          ; 0x83de
    dec ax                           ; 0x83e1
    push ax                          ; 0x83e2
    call ds_dispatch_e901            ; 0x83e3
    add sp, byte 0x0a                ; 0x83e6
    push word [bp + 0xc]             ; 0x83e9
    mov ax, word [bp + 0xa]          ; 0x83ec
    inc ax                           ; 0x83ef
    push ax                          ; 0x83f0
    mov ax, word [bp + 0x8]          ; 0x83f1
    inc ax                           ; 0x83f4
    push ax                          ; 0x83f5
    mov ax, word [bp + 0x6]          ; 0x83f6
    dec ax                           ; 0x83f9
    push ax                          ; 0x83fa
    mov ax, word [bp + 0x8]          ; 0x83fb
    inc ax                           ; 0x83fe
    push ax                          ; 0x83ff
    call ds_dispatch_e901            ; 0x8400
    add sp, byte 0x0a                ; 0x8403
    push word [bp + 0xc]             ; 0x8406
    mov ax, word [bp + 0xa]          ; 0x8409
    inc ax                           ; 0x840c
    push ax                          ; 0x840d
    mov ax, word [bp + 0x8]          ; 0x840e
    inc ax                           ; 0x8411
    push ax                          ; 0x8412
    mov ax, word [bp + 0xa]          ; 0x8413
    inc ax                           ; 0x8416
    push ax                          ; 0x8417
    mov ax, word [bp + 0x4]          ; 0x8418
    dec ax                           ; 0x841b
    push ax                          ; 0x841c
    call ds_dispatch_e901            ; 0x841d
    add sp, byte 0x0a                ; 0x8420
    push word [bp + 0xc]             ; 0x8423
    mov ax, word [bp + 0xa]          ; 0x8426
    inc ax                           ; 0x8429
    push ax                          ; 0x842a
    mov ax, word [bp + 0x4]          ; 0x842b
    dec ax                           ; 0x842e
    push ax                          ; 0x842f
    mov ax, word [bp + 0x6]          ; 0x8430
    dec ax                           ; 0x8433
    push ax                          ; 0x8434
    mov ax, word [bp + 0x4]          ; 0x8435
    dec ax                           ; 0x8438
    push ax                          ; 0x8439
    call ds_dispatch_e901            ; 0x843a
    add sp, byte 0x0a                ; 0x843d
    ret                              ; 0x8440
math_loc_8441:
    mov ax, 0xfe56                   ; 0x8441
    call ds_dispatch_f40b            ; 0x8444
    mov ax, word [bp + 0x14]         ; 0x8447
    dec ax                           ; 0x844a
    cwd                              ; 0x844b
    idiv word [bp + 0x12]            ; 0x844c
    inc ax                           ; 0x844f
    imul word [bp + 0xe]             ; 0x8450
    add ax, word [bp + 0x8]          ; 0x8453
    push ax                          ; 0x8456
    mov ax, 6                        ; 0x8457
    imul word [bp + 0xc]             ; 0x845a
    mov dx, ax                       ; 0x845d
    mov cx, word [bp + 0xe]          ; 0x845f
    sub cx, ax                       ; 0x8462
    pop ax                           ; 0x8464
    sub ax, cx                       ; 0x8465
    mov word [bp - 0x0006], ax       ; 0x8467
    mov ax, word [bp + 0x10]         ; 0x846a
    imul word [bp + 0x12]            ; 0x846d
    add ax, word [bp + 0xa]          ; 0x8470
    mov cx, word [bp + 0x10]         ; 0x8473
    add cx, byte 0xf7                ; 0x8476
    sub ax, cx                       ; 0x8479
    mov word [bp - 0x0008], ax       ; 0x847b
    cmp word [bp + 0x6], byte 0      ; 0x847e
    jne short @..math_loc_8441.l1    ; 0x8482
    jmp near @..math_loc_8441.l2     ; 0x8484
@..math_loc_8441.l1:
    mov ax, 0x90f4                   ; 0x8487
    push ax                          ; 0x848a
    mov ax, word [bp - 0x0008]       ; 0x848b
    add ax, strict word 6            ; 0x848e
    push ax                          ; 0x8491
    mov ax, word [bp - 0x0006]       ; 0x8492
    add ax, strict word 6            ; 0x8495
    push ax                          ; 0x8498
    mov ax, word [bp + 0xa]          ; 0x8499
    add ax, strict word 0xffeb       ; 0x849c
    push ax                          ; 0x849f
    mov ax, word [bp + 0x8]          ; 0x84a0
    add ax, strict word 0xfffa       ; 0x84a3
    push ax                          ; 0x84a6
    call ds_dispatch_c283            ; 0x84a7
    add sp, byte 0x0a                ; 0x84aa
    mov word [bp - 0x01a8], ax       ; 0x84ad
    mov ax, word [bp - 0x0008]       ; 0x84b1
    add ax, strict word 5            ; 0x84b4
    push ax                          ; 0x84b7
    mov ax, word [bp - 0x0006]       ; 0x84b8
    add ax, strict word 5            ; 0x84bb
    push ax                          ; 0x84be
    mov ax, word [bp + 0xa]          ; 0x84bf
    add ax, strict word 0xffec       ; 0x84c2
    push ax                          ; 0x84c5
    mov ax, word [bp + 0x8]          ; 0x84c6
    add ax, strict word 0xfffb       ; 0x84c9
    push ax                          ; 0x84cc
    call ds_dispatch_bc9a            ; 0x84cd
    add sp, byte 8                   ; 0x84d0
    lea ax, word [bp - 0x01a6]       ; 0x84d3
    push ax                          ; 0x84d7
    push word [bp + 0x6]             ; 0x84d8
    call ds_dispatch_b53b            ; 0x84db
    add sp, byte 4                   ; 0x84de
    mov ax, 0xc2                     ; 0x84e1
    push ax                          ; 0x84e4
    mov ax, 1                        ; 0x84e5
    push ax                          ; 0x84e8
    call ds_dispatch_e823            ; 0x84e9
    add sp, byte 4                   ; 0x84ec
    mov ax, word [bp + 0xa]          ; 0x84ef
    add ax, strict word 0xfff3       ; 0x84f2
    push ax                          ; 0x84f5
    lea ax, word [bp - 0x01a6]       ; 0x84f6
    push ax                          ; 0x84fa
    call ds_dispatch_fa90            ; 0x84fb
    pop cx                           ; 0x84fe
    mov cx, 6                        ; 0x84ff
    imul cx                          ; 0x8502
    mov cx, data_0002                ; 0x8504
    cwd                              ; 0x8507
    idiv cx                          ; 0x8508
    mov cx, ax                       ; 0x850a
    mov ax, 0xa0                     ; 0x850c
    sub ax, cx                       ; 0x850f
    push ax                          ; 0x8511
    call ds_dispatch_e809            ; 0x8512
    add sp, byte 4                   ; 0x8515
    mov ax, 0                        ; 0x8518
    push ax                          ; 0x851b
    lea ax, word [bp - 0x01a6]       ; 0x851c
    push ax                          ; 0x8520
    call ds_dispatch_e84e            ; 0x8521
    add sp, byte 4                   ; 0x8524
    jmp short @..math_loc_8441.l3    ; 0x8527
@..math_loc_8441.l2:
    mov ax, 0x90fa                   ; 0x8529
    push ax                          ; 0x852c
    mov ax, word [bp - 0x0008]       ; 0x852d
    inc ax                           ; 0x8530
    push ax                          ; 0x8531
    mov ax, word [bp - 0x0006]       ; 0x8532
    inc ax                           ; 0x8535
    push ax                          ; 0x8536
    mov ax, word [bp + 0xa]          ; 0x8537
    dec ax                           ; 0x853a
    push ax                          ; 0x853b
    mov ax, word [bp + 0x8]          ; 0x853c
    dec ax                           ; 0x853f
    push ax                          ; 0x8540
    call ds_dispatch_c283            ; 0x8541
    add sp, byte 0x0a                ; 0x8544
    mov word [bp - 0x01a8], ax       ; 0x8547
@..math_loc_8441.l3:
    mov word [bp - 0x0002], 0        ; 0x854b
    mov word [bp - 0x0004], 0        ; 0x8550
@..math_loc_8441.l4:
    mov ax, word [bp - 0x0004]       ; 0x8555
    shl ax, 1                        ; 0x8558
    mov si, ax                       ; 0x855a
    mov bx, word [bp + 0x1c]         ; 0x855c
    cmp word [bx + si], byte 0xff    ; 0x855f
    jne short @..math_loc_8441.l5    ; 0x8562
    jmp near @..local.l315           ; 0x8564
@..math_loc_8441.l5:
    cmp word [bx + si], byte 1       ; 0x8567
    je short @..math_loc_8441.l6     ; 0x856a
    jmp near @..local.l314           ; 0x856c
@..math_loc_8441.l6:
    mov ax, 0x14                     ; 0x856f
    imul word [bp - 0x0002]          ; 0x8572
    lea cx, word [bp - 0x0156]       ; 0x8575
    add ax, cx                       ; 0x8579
    push ax                          ; 0x857b
    mov ax, word [bp + 0x4]          ; 0x857c
    add ax, word [bp - 0x0004]       ; 0x857f
    push ax                          ; 0x8582
    call ds_dispatch_b53b            ; 0x8583
    add sp, byte 4                   ; 0x8586
    mov ax, word [bp - 0x0002]       ; 0x8589
    cwd                              ; 0x858c
    idiv word [bp + 0x12]            ; 0x858d
    imul word [bp + 0xe]             ; 0x8590
    mov word [bp - 0x000a], ax       ; 0x8593
    mov ax, word [bp - 0x0002]       ; 0x8596
    cwd                              ; 0x8599
    idiv word [bp + 0x12]            ; 0x859a
    mov ax, dx                       ; 0x859d
    imul word [bp + 0x10]            ; 0x859f
    mov word [bp - 0x000c], ax       ; 0x85a2
    mov ax, 0                        ; 0x85a5
    push ax                          ; 0x85a8
    mov ax, word [bp + 0xa]          ; 0x85a9
    add ax, word [bp - 0x000c]       ; 0x85ac
    add ax, strict word 8            ; 0x85af
    push ax                          ; 0x85b2
    mov ax, 6                        ; 0x85b3
    imul word [bp + 0xc]             ; 0x85b6
    add ax, word [bp + 0x8]          ; 0x85b9
    add ax, word [bp - 0x000a]       ; 0x85bc
    push ax                          ; 0x85bf
    mov ax, word [bp + 0xa]          ; 0x85c0
    add ax, word [bp - 0x000c]       ; 0x85c3
    push ax                          ; 0x85c6
    mov ax, word [bp + 0x8]          ; 0x85c7
    add ax, word [bp - 0x000a]       ; 0x85ca
    push ax                          ; 0x85cd
    call ds_dispatch_bce3            ; 0x85ce
    add sp, byte 0x0a                ; 0x85d1
    mov ax, 0xc0                     ; 0x85d4
    push ax                          ; 0x85d7
    mov ax, word [bp + 0x16]         ; 0x85d8
    mov cx, word [bp - 0x0004]       ; 0x85db
    cmp cx, word [bp + 0x18]         ; 0x85de
    jne short @..math_loc_8441.l7    ; 0x85e1
    mov ax, 0x1a                     ; 0x85e3
@..math_loc_8441.l7:
    push ax                          ; 0x85e6
    call ds_dispatch_e823            ; 0x85e7
    add sp, byte 4                   ; 0x85ea
    mov ax, word [bp + 0xa]          ; 0x85ed
    add ax, word [bp - 0x000c]       ; 0x85f0
    inc ax                           ; 0x85f3
    inc ax                           ; 0x85f4
    push ax                          ; 0x85f5
    mov ax, 0x14                     ; 0x85f6
    imul word [bp - 0x0002]          ; 0x85f9
    lea cx, word [bp - 0x0156]       ; 0x85fc
    add ax, cx                       ; 0x8600
    push ax                          ; 0x8602
    call ds_dispatch_fa90            ; 0x8603
    pop cx                           ; 0x8606
    mov cx, ax                       ; 0x8607
    mov ax, word [bp + 0xc]          ; 0x8609
    sub ax, cx                       ; 0x860c
    mov cx, 6                        ; 0x860e
    imul cx                          ; 0x8611
    mov cx, data_0002                ; 0x8613
    cwd                              ; 0x8616
    idiv cx                          ; 0x8617
    add ax, word [bp + 0x8]          ; 0x8619
    add ax, word [bp - 0x000a]       ; 0x861c
    inc ax                           ; 0x861f
    push ax                          ; 0x8620
    call ds_dispatch_e809            ; 0x8621
    add sp, byte 4                   ; 0x8624
    mov ax, 0                        ; 0x8627
    push ax                          ; 0x862a
    mov ax, 0x14                     ; 0x862b
    imul word [bp - 0x0002]          ; 0x862e
    lea cx, word [bp - 0x0156]       ; 0x8631
    add ax, cx                       ; 0x8635
    push ax                          ; 0x8637
    call ds_dispatch_e84e            ; 0x8638
    add sp, byte 4                   ; 0x863b
    mov ax, 0                        ; 0x863e
    push ax                          ; 0x8641
    push ax                          ; 0x8642
    mov ax, word [bp + 0xa]          ; 0x8643
    add ax, word [bp - 0x000c]       ; 0x8646
    add ax, strict word 8            ; 0x8649
    push ax                          ; 0x864c
    mov ax, 6                        ; 0x864d
    imul word [bp + 0xc]             ; 0x8650
    add ax, word [bp + 0x8]          ; 0x8653
    add ax, word [bp - 0x000a]       ; 0x8656
    push ax                          ; 0x8659
    mov ax, word [bp + 0xa]          ; 0x865a
    add ax, word [bp - 0x000c]       ; 0x865d
    push ax                          ; 0x8660
    mov ax, word [bp + 0x8]          ; 0x8661
    add ax, word [bp - 0x000a]       ; 0x8664
    push ax                          ; 0x8667
    push word [bp - 0x0002]          ; 0x8668
    call ds_dispatch_baa6            ; 0x866b
    add sp, byte 0x0e                ; 0x866e
    mov ax, word [bp - 0x0004]       ; 0x8671
    mov cx, word [bp - 0x0002]       ; 0x8674
    shl cx, 1                        ; 0x8677
    mov bx, cx                       ; 0x8679
    add bx, bp                       ; 0x867b
    mov word [bx - 0x002a], ax       ; 0x867d
    inc word [bp - 0x0002]           ; 0x8680
@..local.l314:
    inc word [bp - 0x0004]           ; 0x8683
    jmp near @..math_loc_8441.l4     ; 0x8686
@..local.l315:
    mov ax, 0                        ; 0x8689
    push ax                          ; 0x868c
    push ax                          ; 0x868d
    push ax                          ; 0x868e
    push ax                          ; 0x868f
    push ax                          ; 0x8690
    mov ax, 0xffff                   ; 0x8691
    push ax                          ; 0x8694
    push word [bp - 0x0002]          ; 0x8695
    call ds_dispatch_baa6            ; 0x8698
    add sp, byte 0x0e                ; 0x869b
    mov ax, 0xc7                     ; 0x869e
    push ax                          ; 0x86a1
    mov ax, 0x13f                    ; 0x86a2
    push ax                          ; 0x86a5
    mov ax, 0                        ; 0x86a6
    push ax                          ; 0x86a9
    push ax                          ; 0x86aa
    call ds_dispatch_e8da            ; 0x86ab
    add sp, byte 8                   ; 0x86ae
    cmp word [data_0e32], byte 0     ; 0x86b1
    je short @..local.l318           ; 0x86b6
@..local.l316:
    mov ax, 0x59fe                   ; 0x86b8
    push ax                          ; 0x86bb
    call ds_dispatch_b90d            ; 0x86bc
    pop cx                           ; 0x86bf
    mov word [bp - 0x0004], ax       ; 0x86c0
    cmp word [data_5b3e], byte 0     ; 0x86c3
    jne short @..local.l317          ; 0x86c8
    call math_loc_086b               ; 0x86ca
@..local.l317:
    cmp word [data_5b3e], byte 0     ; 0x86cd
    je short @..local.l316           ; 0x86d2
    jmp near @..local.l332           ; 0x86d4
@..local.l318:
    mov word [bp - 0x0004], 0        ; 0x86d7
@..local.l319:
    mov ax, word [bp - 0x0004]       ; 0x86dc
    cwd                              ; 0x86df
    idiv word [bp + 0x12]            ; 0x86e0
    imul word [bp + 0xe]             ; 0x86e3
    mov word [bp - 0x000a], ax       ; 0x86e6
    mov ax, word [bp - 0x0004]       ; 0x86e9
    cwd                              ; 0x86ec
    idiv word [bp + 0x12]            ; 0x86ed
    mov ax, dx                       ; 0x86f0
    imul word [bp + 0x10]            ; 0x86f2
    mov word [bp - 0x000c], ax       ; 0x86f5
    mov ax, 0x16                     ; 0x86f8
    push ax                          ; 0x86fb
    mov ax, word [bp + 0xa]          ; 0x86fc
    add ax, word [bp - 0x000c]       ; 0x86ff
    add ax, strict word 8            ; 0x8702
    push ax                          ; 0x8705
    mov ax, 6                        ; 0x8706
    imul word [bp + 0xc]             ; 0x8709
    add ax, word [bp + 0x8]          ; 0x870c
    add ax, word [bp - 0x000a]       ; 0x870f
    push ax                          ; 0x8712
    mov ax, word [bp + 0xa]          ; 0x8713
    add ax, word [bp - 0x000c]       ; 0x8716
    push ax                          ; 0x8719
    mov ax, word [bp + 0x8]          ; 0x871a
    add ax, word [bp - 0x000a]       ; 0x871d
    push ax                          ; 0x8720
    call loc_83c6                    ; 0x8721
    add sp, byte 0x0a                ; 0x8724
    mov ax, word [bp - 0x0008]       ; 0x8727
    inc ax                           ; 0x872a
    push ax                          ; 0x872b
    mov ax, word [bp - 0x0006]       ; 0x872c
    inc ax                           ; 0x872f
    push ax                          ; 0x8730
    mov ax, word [bp + 0xa]          ; 0x8731
    dec ax                           ; 0x8734
    push ax                          ; 0x8735
    mov ax, word [bp + 0x8]          ; 0x8736
    dec ax                           ; 0x8739
    push ax                          ; 0x873a
    call ds_dispatch_e8da            ; 0x873b
    add sp, byte 8                   ; 0x873e
    mov ax, 0                        ; 0x8741
    push ax                          ; 0x8744
    mov ax, word [bp + 0xa]          ; 0x8745
    add ax, word [bp - 0x000c]       ; 0x8748
    add ax, strict word 8            ; 0x874b
    push ax                          ; 0x874e
    mov ax, 6                        ; 0x874f
    imul word [bp + 0xc]             ; 0x8752
    add ax, word [bp + 0x8]          ; 0x8755
    add ax, word [bp - 0x000a]       ; 0x8758
    push ax                          ; 0x875b
    mov ax, word [bp + 0xa]          ; 0x875c
    add ax, word [bp - 0x000c]       ; 0x875f
    push ax                          ; 0x8762
    mov ax, word [bp + 0x8]          ; 0x8763
    add ax, word [bp - 0x000a]       ; 0x8766
    push ax                          ; 0x8769
    call loc_83c6                    ; 0x876a
    add sp, byte 0x0a                ; 0x876d
@..local.l320:
    mov ax, 1                        ; 0x8770
    push ax                          ; 0x8773
    call ds_dispatch_ea50            ; 0x8774
    pop cx                           ; 0x8777
    test ax, ax                      ; 0x8778
    jne short @..local.l321          ; 0x877a
    call math_loc_086b               ; 0x877c
    jmp short @..local.l320          ; 0x877f
@..local.l321:
    mov ax, 1                        ; 0x8781
    push ax                          ; 0x8784
    call ds_dispatch_eb32            ; 0x8785
    pop cx                           ; 0x8788
    sub ah, ah                       ; 0x8789
    mov word [bp - 0x01aa], ax       ; 0x878b
    mov ax, word [bp - 0x0004]       ; 0x878f
    cwd                              ; 0x8792
    idiv word [bp + 0x12]            ; 0x8793
    mov word [bp - 0x000a], ax       ; 0x8796
    mov ax, word [bp - 0x0002]       ; 0x8799
    dec ax                           ; 0x879c
    cwd                              ; 0x879d
    idiv word [bp + 0x12]            ; 0x879e
    inc ax                           ; 0x87a1
    mov word [bp - 0x000c], ax       ; 0x87a2
@..local.l322:
    mov ax, word [bp - 0x01aa]       ; 0x87a5
    jmp near @..local.l327           ; 0x87a9
@..local.l323:
    mov ax, word [bp - 0x0004]       ; 0x87ac
    add ax, word [bp + 0x12]         ; 0x87af
    dec ax                           ; 0x87b2
    cwd                              ; 0x87b3
    idiv word [bp + 0x12]            ; 0x87b4
    mov ax, dx                       ; 0x87b7
    push ax                          ; 0x87b9
    mov ax, word [bp - 0x000a]       ; 0x87ba
    imul word [bp + 0x12]            ; 0x87bd
    mov cx, ax                       ; 0x87c0
    pop ax                           ; 0x87c2
    add ax, cx                       ; 0x87c3
    mov word [bp - 0x0004], ax       ; 0x87c5
    jmp near @..local.l329           ; 0x87c8
@..local.l324:
    mov ax, word [bp - 0x0004]       ; 0x87cb
    inc ax                           ; 0x87ce
    cwd                              ; 0x87cf
    idiv word [bp + 0x12]            ; 0x87d0
    mov ax, dx                       ; 0x87d3
    push ax                          ; 0x87d5
    mov ax, word [bp - 0x000a]       ; 0x87d6
    imul word [bp + 0x12]            ; 0x87d9
    mov cx, ax                       ; 0x87dc
    pop ax                           ; 0x87de
    add ax, cx                       ; 0x87df
    mov word [bp - 0x0004], ax       ; 0x87e1
    jmp short @..local.l329          ; 0x87e4
@..local.l325:
    mov ax, word [bp - 0x000a]       ; 0x87e6
    add ax, word [bp - 0x000c]       ; 0x87e9
    dec ax                           ; 0x87ec
    cwd                              ; 0x87ed
    idiv word [bp - 0x000c]          ; 0x87ee
    mov word [bp - 0x000a], dx       ; 0x87f1
    mov ax, word [bp - 0x0004]       ; 0x87f4
    cwd                              ; 0x87f7
    idiv word [bp + 0x12]            ; 0x87f8
    mov ax, dx                       ; 0x87fb
    push ax                          ; 0x87fd
    mov ax, word [bp - 0x000a]       ; 0x87fe
    imul word [bp + 0x12]            ; 0x8801
    mov cx, ax                       ; 0x8804
    pop ax                           ; 0x8806
    add ax, cx                       ; 0x8807
    mov word [bp - 0x0004], ax       ; 0x8809
    jmp short @..local.l329          ; 0x880c
@..local.l326:
    mov ax, word [bp - 0x000a]       ; 0x880e
    inc ax                           ; 0x8811
    cwd                              ; 0x8812
    idiv word [bp - 0x000c]          ; 0x8813
    mov word [bp - 0x000a], dx       ; 0x8816
    mov ax, word [bp - 0x0004]       ; 0x8819
    cwd                              ; 0x881c
    idiv word [bp + 0x12]            ; 0x881d
    mov ax, dx                       ; 0x8820
    push ax                          ; 0x8822
    mov ax, word [bp - 0x000a]       ; 0x8823
    imul word [bp + 0x12]            ; 0x8826
    mov cx, ax                       ; 0x8829
    pop ax                           ; 0x882b
    add ax, cx                       ; 0x882c
    mov word [bp - 0x0004], ax       ; 0x882e
    jmp short @..local.l329          ; 0x8831
@..local.l327:
    cmp ax, strict word 8            ; 0x8833
    je short @..local.l325           ; 0x8836
    cmp ax, strict word 9            ; 0x8838
    jne short @..local.l328          ; 0x883b
    jmp near @..local.l323           ; 0x883d
@..local.l328:
    cmp ax, strict word 0xa          ; 0x8840
    je short @..local.l326           ; 0x8843
    cmp ax, strict word 0xb          ; 0x8845
    je short @..local.l324           ; 0x8848
@..local.l329:
    mov ax, word [bp - 0x0004]       ; 0x884a
    cmp ax, word [bp - 0x0002]       ; 0x884d
    jl short @..local.l330           ; 0x8850
    jmp near @..local.l322           ; 0x8852
@..local.l330:
    cmp word [bp - 0x01aa], byte 0x0d ; 0x8855
    je short @..local.l331           ; 0x885a
    jmp near @..local.l319           ; 0x885c
@..local.l331:
    inc word [bp - 0x0004]           ; 0x885f
    mov ax, word [bp - 0x0008]       ; 0x8862
    inc ax                           ; 0x8865
    push ax                          ; 0x8866
    mov ax, word [bp - 0x0006]       ; 0x8867
    inc ax                           ; 0x886a
    push ax                          ; 0x886b
    mov ax, word [bp + 0xa]          ; 0x886c
    dec ax                           ; 0x886f
    push ax                          ; 0x8870
    mov ax, word [bp + 0x8]          ; 0x8871
    dec ax                           ; 0x8874
    push ax                          ; 0x8875
    call ds_dispatch_e8da            ; 0x8876
    add sp, byte 8                   ; 0x8879
@..local.l332:
    dec word [bp - 0x0004]           ; 0x887c
    mov ax, word [bp - 0x0004]       ; 0x887f
    cwd                              ; 0x8882
    idiv word [bp + 0x12]            ; 0x8883
    imul word [bp + 0xe]             ; 0x8886
    mov word [bp - 0x000a], ax       ; 0x8889
    mov ax, word [bp - 0x0004]       ; 0x888c
    cwd                              ; 0x888f
    idiv word [bp + 0x12]            ; 0x8890
    mov ax, dx                       ; 0x8893
    imul word [bp + 0x10]            ; 0x8895
    mov word [bp - 0x000c], ax       ; 0x8898
    mov ax, 1                        ; 0x889b
    push ax                          ; 0x889e
    push ax                          ; 0x889f
    push word [bp + 0xc]             ; 0x88a0
    mov ax, word [bp + 0xa]          ; 0x88a3
    add ax, word [bp - 0x000c]       ; 0x88a6
    push ax                          ; 0x88a9
    mov ax, word [bp + 0x8]          ; 0x88aa
    add ax, word [bp - 0x000a]       ; 0x88ad
    push ax                          ; 0x88b0
    call ds_dispatch_be5f            ; 0x88b1
    add sp, byte 0x0a                ; 0x88b4
    mov ax, 0                        ; 0x88b7
    push ax                          ; 0x88ba
    mov ax, 1                        ; 0x88bb
    push ax                          ; 0x88be
    push word [bp + 0xc]             ; 0x88bf
    mov ax, word [bp + 0xa]          ; 0x88c2
    add ax, word [bp - 0x000c]       ; 0x88c5
    push ax                          ; 0x88c8
    mov ax, word [bp + 0x8]          ; 0x88c9
    add ax, word [bp - 0x000a]       ; 0x88cc
    push ax                          ; 0x88cf
    call ds_dispatch_be5f            ; 0x88d0
    add sp, byte 0x0a                ; 0x88d3
    mov ax, 1                        ; 0x88d6
    push ax                          ; 0x88d9
    push word [bp - 0x01a8]          ; 0x88da
    call ds_dispatch_c459            ; 0x88de
    add sp, byte 4                   ; 0x88e1
    cmp word [bp + 0x1a], byte 0     ; 0x88e4
    je short @..local.l334           ; 0x88e8
    cmp word [bp + 0x6], byte 0      ; 0x88ea
    je short @..local.l333           ; 0x88ee
    mov ax, word [bp - 0x0008]       ; 0x88f0
    add ax, strict word 6            ; 0x88f3
    push ax                          ; 0x88f6
    mov ax, word [bp - 0x0006]       ; 0x88f7
    add ax, strict word 6            ; 0x88fa
    push ax                          ; 0x88fd
    mov ax, word [bp + 0xa]          ; 0x88fe
    add ax, strict word 0xffeb       ; 0x8901
    push ax                          ; 0x8904
    mov ax, word [bp + 0x8]          ; 0x8905
    add ax, strict word 0xfffa       ; 0x8908
    push ax                          ; 0x890b
    call ds_dispatch_e8da            ; 0x890c
    add sp, byte 8                   ; 0x890f
    jmp short @..local.l334          ; 0x8912
@..local.l333:
    mov ax, word [bp - 0x0008]       ; 0x8914
    inc ax                           ; 0x8917
    push ax                          ; 0x8918
    mov ax, word [bp - 0x0006]       ; 0x8919
    inc ax                           ; 0x891c
    push ax                          ; 0x891d
    mov ax, word [bp + 0xa]          ; 0x891e
    dec ax                           ; 0x8921
    push ax                          ; 0x8922
    mov ax, word [bp + 0x8]          ; 0x8923
    dec ax                           ; 0x8926
    push ax                          ; 0x8927
    call ds_dispatch_e8da            ; 0x8928
    add sp, byte 8                   ; 0x892b
@..local.l334:
    mov ax, word [bp - 0x0004]       ; 0x892e
    mov word [data_9052], ax         ; 0x8931
    shl ax, 1                        ; 0x8934
    mov bx, ax                       ; 0x8936
    add bx, bp                       ; 0x8938
    mov ax, word [bx - 0x002a]       ; 0x893a
    ret                              ; 0x893d
api_idx_000c:
    mov ax, 0xfff4                   ; 0x893e
    call ds_dispatch_f40b            ; 0x8941
    mov word [bp - 0x0002], 0        ; 0x8944
@..api_idx_000c.l1:
    mov ax, 0x14                     ; 0x8949
    imul word [bp - 0x0002]          ; 0x894c
    mov cx, word [bp - 0x0002]       ; 0x894f
    shl cx, 1                        ; 0x8952
    mov bx, cx                       ; 0x8954
    mov cx, word [bx - 0x7cf2]       ; 0x8956
    shl cx, 1                        ; 0x895a
    add ax, cx                       ; 0x895c
    mov bx, ax                       ; 0x895e
    mov al, byte [bx + 0x1d4]        ; 0x8960
    mov byte [bp - 0x000c], al       ; 0x8964
    mov byte [bp - 0x000b], 0        ; 0x8967
    mov ax, 0                        ; 0x896b
    push ax                          ; 0x896e
    push ax                          ; 0x896f
    lea ax, word [bp - 0x000c]       ; 0x8970
    push ax                          ; 0x8973
    mov ax, 0                        ; 0x8974
    push ax                          ; 0x8977
    mov ax, 0xc7                     ; 0x8978
    push ax                          ; 0x897b
    mov ax, 0                        ; 0x897c
    push ax                          ; 0x897f
    mov ax, 0x13f                    ; 0x8980
    push ax                          ; 0x8983
    mov ax, 0                        ; 0x8984
    push ax                          ; 0x8987
    mov ax, 0xc                      ; 0x8988
    imul word [bp + 0x8]             ; 0x898b
    mov cx, word [bp - 0x0002]       ; 0x898e
    shl cx, 1                        ; 0x8991
    add ax, cx                       ; 0x8993
    mov bx, ax                       ; 0x8995
    mov ax, word [bx + 0x1bc]        ; 0x8997
    add ax, word [bp + 0x6]          ; 0x899b
    push ax                          ; 0x899e
    mov ax, word [bx + 0x1a4]        ; 0x899f
    add ax, word [bp + 0x4]          ; 0x89a3
    push ax                          ; 0x89a6
    mov ax, data_0002                ; 0x89a7
    push ax                          ; 0x89aa
    call ds_dispatch_efd1            ; 0x89ab
    add sp, byte 0x16                ; 0x89ae
    inc word [bp - 0x0002]           ; 0x89b1
    mov ax, word [bp - 0x0002]       ; 0x89b4
    cmp ax, strict word 6            ; 0x89b7
    jl short @..api_idx_000c.l1      ; 0x89ba
    ret                              ; 0x89bc
api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x89bd
    call ds_dispatch_f40b            ; 0x89c0
    mov word [bp - 0x0002], 0        ; 0x89c3
@..api_idx_0002_6.l1:
    cmp word [bp + 0x4], byte 0      ; 0x89c8
    jl short @..api_idx_0002_6.l2    ; 0x89cc
    mov ax, word [bp - 0x0002]       ; 0x89ce
    cmp ax, word [bp + 0x4]          ; 0x89d1
    jne short @..api_idx_0002_6.l3   ; 0x89d4
@..api_idx_0002_6.l2:
    mov ax, word [bp - 0x0002]       ; 0x89d6
    shl ax, 1                        ; 0x89d9
    mov bx, ax                       ; 0x89db
    inc word [bx - 0x7cf2]           ; 0x89dd
@..api_idx_0002_6.l3:
    mov ax, 0x14                     ; 0x89e1
    imul word [bp - 0x0002]          ; 0x89e4
    mov cx, word [bp - 0x0002]       ; 0x89e7
    shl cx, 1                        ; 0x89ea
    mov bx, cx                       ; 0x89ec
    mov cx, word [bx - 0x7cf2]       ; 0x89ee
    shl cx, 1                        ; 0x89f2
    add ax, cx                       ; 0x89f4
    mov bx, ax                       ; 0x89f6
    cmp word [bx + 0x1d4], byte 0xff ; 0x89f8
    jne short @..api_idx_0002_6.l4   ; 0x89fd
    mov ax, word [bp - 0x0002]       ; 0x89ff
    shl ax, 1                        ; 0x8a02
    mov bx, ax                       ; 0x8a04
    mov word [bx - 0x7cf2], 0        ; 0x8a06
@..api_idx_0002_6.l4:
    inc word [bp - 0x0002]           ; 0x8a0c
    mov ax, word [bp - 0x0002]       ; 0x8a0f
    cmp ax, strict word 6            ; 0x8a12
    jl short @..api_idx_0002_6.l1    ; 0x8a15
    ret                              ; 0x8a17
api_idx_0004_13:
    mov ax, 0xfffc                   ; 0x8a18
    call ds_dispatch_f40b            ; 0x8a1b
    mov word [bp - 0x0004], 0        ; 0x8a1e
    mov word [bp - 0x0002], 0        ; 0x8a23
@..api_idx_0004_13.l1:
    mov ax, 6                        ; 0x8a28
    imul word [bp - 0x0002]          ; 0x8a2b
    mov bx, ax                       ; 0x8a2e
    mov al, byte [bx + 0x620]        ; 0x8a30
    sub ah, ah                       ; 0x8a34
    cmp ax, word [bp + 0x6]          ; 0x8a36
    jne short @..api_idx_0004_13.l2  ; 0x8a39
    push word [bp - 0x0002]          ; 0x8a3b
    mov ax, 0x248                    ; 0x8a3e
    imul word [bp + 0x4]             ; 0x8a41
    add ax, 0x5e12                   ; 0x8a44
    push ax                          ; 0x8a47
    call ds_dispatch_ec74            ; 0x8a48
    add sp, byte 4                   ; 0x8a4b
    test ax, ax                      ; 0x8a4e
    je short @..api_idx_0004_13.l2   ; 0x8a50
    mov ax, 0x14                     ; 0x8a52
    imul word [bp - 0x0004]          ; 0x8a55
    add ax, 0xe38                    ; 0x8a58
    push ax                          ; 0x8a5b
    mov ax, word [bp - 0x0002]       ; 0x8a5c
    add ax, 0xfa0                    ; 0x8a5f
    push ax                          ; 0x8a62
    call ds_dispatch_b53b            ; 0x8a63
    add sp, byte 4                   ; 0x8a66
    mov ax, word [bp - 0x0002]       ; 0x8a69
    mov cx, word [bp - 0x0004]       ; 0x8a6c
    shl cx, 1                        ; 0x8a6f
    mov bx, cx                       ; 0x8a71
    mov word [bx - 0x6996], ax       ; 0x8a73
    inc word [bp - 0x0004]           ; 0x8a77
@..api_idx_0004_13.l2:
    inc word [bp - 0x0002]           ; 0x8a7a
    mov ax, word [bp - 0x0002]       ; 0x8a7d
    cmp ax, strict word 0x66         ; 0x8a80
    jl short @..api_idx_0004_13.l1   ; 0x8a83
    mov ax, word [bp - 0x0004]       ; 0x8a85
    ret                              ; 0x8a88
api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x8a89
    call ds_dispatch_f40b            ; 0x8a8c
    mov byte [bp - 0x000a], 1        ; 0x8a8f
    mov byte [bp - 0x0009], 0        ; 0x8a93
    mov ax, 0                        ; 0x8a97
    push ax                          ; 0x8a9a
    push ax                          ; 0x8a9b
    lea ax, word [bp - 0x000a]       ; 0x8a9c
    push ax                          ; 0x8a9f
    mov ax, 0                        ; 0x8aa0
    push ax                          ; 0x8aa3
    mov ax, 0xc7                     ; 0x8aa4
    push ax                          ; 0x8aa7
    mov ax, 0                        ; 0x8aa8
    push ax                          ; 0x8aab
    mov ax, 0x13f                    ; 0x8aac
    push ax                          ; 0x8aaf
    mov ax, 0                        ; 0x8ab0
    push ax                          ; 0x8ab3
    mov ax, 0x73                     ; 0x8ab4
    push ax                          ; 0x8ab7
    mov ax, 0x32                     ; 0x8ab8
    push ax                          ; 0x8abb
    mov ax, 1                        ; 0x8abc
    push ax                          ; 0x8abf
    call ds_dispatch_efd1            ; 0x8ac0
    add sp, byte 0x16                ; 0x8ac3
    ret                              ; 0x8ac6
math_loc_8ac7:
    mov ax, 0                        ; 0x8ac7
    call ds_dispatch_f40b            ; 0x8aca
    push word [bp + 0x6]             ; 0x8acd
    mov ax, 0xa                      ; 0x8ad0
    imul word [bp + 0x8]             ; 0x8ad3
    add ax, word [bp + 0x4]          ; 0x8ad6
    dec ax                           ; 0x8ad9
    push ax                          ; 0x8ada
    call ds_dispatch_e809            ; 0x8adb
    add sp, byte 4                   ; 0x8ade
    mov ax, 7                        ; 0x8ae1
    push ax                          ; 0x8ae4
    mov ax, 0                        ; 0x8ae5
    cmp word [bp + 0xa], byte 0      ; 0x8ae8
    je short @..math_loc_8ac7.l1     ; 0x8aec
    mov ax, 1                        ; 0x8aee
@..math_loc_8ac7.l1:
    add ax, strict word 0x10         ; 0x8af1
    sub ah, ah                       ; 0x8af4
    push ax                          ; 0x8af6
    call ds_dispatch_e830            ; 0x8af7
    add sp, byte 4                   ; 0x8afa
    push word [bp + 0x6]             ; 0x8afd
    mov ax, 0xa                      ; 0x8b00
    imul word [bp + 0x8]             ; 0x8b03
    add ax, word [bp + 0x4]          ; 0x8b06
    push ax                          ; 0x8b09
    call ds_dispatch_e809            ; 0x8b0a
    add sp, byte 4                   ; 0x8b0d
    mov ax, 0                        ; 0x8b10
    push ax                          ; 0x8b13
    push ax                          ; 0x8b14
    call ds_dispatch_e823            ; 0x8b15
    add sp, byte 4                   ; 0x8b18
    mov ax, data_0002                ; 0x8b1b
    push ax                          ; 0x8b1e
    mov ax, word [bp + 0x8]          ; 0x8b1f
    inc ax                           ; 0x8b22
    sub ah, ah                       ; 0x8b23
    push ax                          ; 0x8b25
    call ds_dispatch_e830            ; 0x8b26
    add sp, byte 4                   ; 0x8b29
    cmp word [bp + 0x8], byte 0      ; 0x8b2c
    jne short @..math_loc_8ac7.l2    ; 0x8b30
    cmp word [bp + 0xa], byte 0      ; 0x8b32
    jne short @..math_loc_8ac7.l2    ; 0x8b36
    mov ax, 0xc2                     ; 0x8b38
    push ax                          ; 0x8b3b
    mov ax, word [bp + 0x6]          ; 0x8b3c
    add ax, strict word 8            ; 0x8b3f
    push ax                          ; 0x8b42
    mov ax, word [bp + 0x4]          ; 0x8b43
    dec ax                           ; 0x8b46
    push ax                          ; 0x8b47
    push word [bp + 0x6]             ; 0x8b48
    push ax                          ; 0x8b4b
    call ds_dispatch_e901            ; 0x8b4c
    add sp, byte 0x0a                ; 0x8b4f
@..math_loc_8ac7.l2:
    ret                              ; 0x8b52
loc_8b53:
    mov ax, 0                        ; 0x8b53
    call ds_dispatch_f40b            ; 0x8b56
    mov ax, word [bp + 0x6]          ; 0x8b59
    add ax, strict word 6            ; 0x8b5c
    push ax                          ; 0x8b5f
    mov ax, word [bp + 0x4]          ; 0x8b60
    add ax, strict word 0x14         ; 0x8b63
    push ax                          ; 0x8b66
    push word [bp + 0x6]             ; 0x8b67
    push word [bp + 0x4]             ; 0x8b6a
    call ds_dispatch_bd98            ; 0x8b6d
    add sp, byte 8                   ; 0x8b70
    mov ax, word [bp + 0x8]          ; 0x8b73
    shl ax, 1                        ; 0x8b76
    shl ax, 1                        ; 0x8b78
    mov bx, ax                       ; 0x8b7a
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x8b80
    add ax, strict word 6            ; 0x8b83
    push ax                          ; 0x8b86
    mov ax, word [bp + 0x4]          ; 0x8b87
    add ax, strict word 0x14         ; 0x8b8a
    push ax                          ; 0x8b8d
    push word [bp + 0x6]             ; 0x8b8e
    push word [bp + 0x4]             ; 0x8b91
    call ds_dispatch_e901            ; 0x8b94
    add sp, byte 0x0a                ; 0x8b97
    mov ax, word [bp + 0x6]          ; 0x8b9a
    inc ax                           ; 0x8b9d
    push ax                          ; 0x8b9e
    mov ax, word [bp + 0x4]          ; 0x8b9f
    inc ax                           ; 0x8ba2
    inc ax                           ; 0x8ba3
    push ax                          ; 0x8ba4
    call ds_dispatch_e809            ; 0x8ba5
    add sp, byte 4                   ; 0x8ba8
    cmp word [bp + 0xa], byte 0      ; 0x8bab
    jle short @..local.l335          ; 0x8baf
    mov ax, word [bp + 0xa]          ; 0x8bb1
    cmp ax, word [bp + 0xc]          ; 0x8bb4
    jg short @..local.l335           ; 0x8bb7
    mov ax, 0                        ; 0x8bb9
    push ax                          ; 0x8bbc
    mov ax, 1                        ; 0x8bbd
    push ax                          ; 0x8bc0
    call ds_dispatch_e823            ; 0x8bc1
    add sp, byte 4                   ; 0x8bc4
    mov ax, 0                        ; 0x8bc7
    push ax                          ; 0x8bca
    mov ax, 3                        ; 0x8bcb
    push ax                          ; 0x8bce
    push word [bp + 0xa]             ; 0x8bcf
    call ds_dispatch_b2e7            ; 0x8bd2
    add sp, byte 6                   ; 0x8bd5
    jmp short @..local.l336          ; 0x8bd8
@..local.l335:
    mov ax, 0                        ; 0x8bda
    push ax                          ; 0x8bdd
    push ax                          ; 0x8bde
    call ds_dispatch_e823            ; 0x8bdf
    add sp, byte 4                   ; 0x8be2
    mov ax, 0                        ; 0x8be5
    push ax                          ; 0x8be8
    mov ax, 0x9100                   ; 0x8be9
    push ax                          ; 0x8bec
    call ds_dispatch_e84e            ; 0x8bed
    add sp, byte 4                   ; 0x8bf0
@..local.l336:
    ret                              ; 0x8bf3
api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x8bf4
    call ds_dispatch_f40b            ; 0x8bf7
    mov word [bp - 0x0002], 0        ; 0x8bfa
@..api_idx_000c_2.l1:
    lea ax, word [bp - 0x000c]       ; 0x8bff
    push ax                          ; 0x8c02
    mov ax, 0x248                    ; 0x8c03
    imul word [bp + 0x4]             ; 0x8c06
    mov cx, word [bp - 0x0002]       ; 0x8c09
    shl cx, 1                        ; 0x8c0c
    shl cx, 1                        ; 0x8c0e
    add ax, cx                       ; 0x8c10
    mov bx, ax                       ; 0x8c12
    push word [bx + 0x5c1c]          ; 0x8c14
    call ds_dispatch_b27d            ; 0x8c18
    add sp, byte 4                   ; 0x8c1b
    mov ax, 0                        ; 0x8c1e
    push ax                          ; 0x8c21
    mov ax, word [bp - 0x0002]       ; 0x8c22
    shl ax, 1                        ; 0x8c25
    shl ax, 1                        ; 0x8c27
    mov bx, ax                       ; 0x8c29
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x8c2f
    add sp, byte 4                   ; 0x8c32
    mov ax, word [bp - 0x0002]       ; 0x8c35
    shl ax, 1                        ; 0x8c38
    shl ax, 1                        ; 0x8c3a
    mov bx, ax                       ; 0x8c3c
    push word [bx + 0x18e]           ; 0x8c3e
    lea ax, word [bp - 0x000c]       ; 0x8c42
    push ax                          ; 0x8c45
    call ds_dispatch_fa90            ; 0x8c46
    pop cx                           ; 0x8c49
    mov cx, 6                        ; 0x8c4a
    imul cx                          ; 0x8c4d
    mov cx, data_0002                ; 0x8c4f
    cwd                              ; 0x8c52
    idiv cx                          ; 0x8c53
    mov cx, ax                       ; 0x8c55
    mov ax, word [bp - 0x0002]       ; 0x8c57
    shl ax, 1                        ; 0x8c5a
    shl ax, 1                        ; 0x8c5c
    mov bx, ax                       ; 0x8c5e
    mov ax, word [bx + 0x18c]        ; 0x8c60
    add ax, strict word 9            ; 0x8c64
    sub ax, cx                       ; 0x8c67
    push ax                          ; 0x8c69
    call ds_dispatch_e809            ; 0x8c6a
    add sp, byte 4                   ; 0x8c6d
    mov ax, 0                        ; 0x8c70
    push ax                          ; 0x8c73
    lea ax, word [bp - 0x000c]       ; 0x8c74
    push ax                          ; 0x8c77
    call ds_dispatch_e84e            ; 0x8c78
    add sp, byte 4                   ; 0x8c7b
    inc word [bp - 0x0002]           ; 0x8c7e
    mov ax, word [bp - 0x0002]       ; 0x8c81
    cmp ax, strict word 6            ; 0x8c84
    jge short @..api_idx_000c_2.l2   ; 0x8c87
    jmp near @..api_idx_000c_2.l1    ; 0x8c89
@..api_idx_000c_2.l2:
    ret                              ; 0x8c8c
loc_8c8d:
    mov ax, 0                        ; 0x8c8d
    call ds_dispatch_f40b            ; 0x8c90
    les bx, word [data_0002]         ; 0x8c93
    mov ax, word [es:bx]             ; 0x8c97
    mov dx, word [es:bx + 0x2]       ; 0x8c9a
    mov word [data_9090], dx         ; 0x8c9e
    mov word [data_908e], ax         ; 0x8ca2
    mov ax, word [data_908e]         ; 0x8ca5
    mov dx, word [data_9090]         ; 0x8ca8
    sub ax, word [data_908a]         ; 0x8cac
    sbb dx, word [data_908c]         ; 0x8cb0
    mov word [data_9094], dx         ; 0x8cb4
    mov word [data_9092], ax         ; 0x8cb8
    mov ax, word [data_9124]         ; 0x8cbb
    cwd                              ; 0x8cbe
    mov cx, ax                       ; 0x8cbf
    mov bx, dx                       ; 0x8cc1
    mov ax, word [data_9092]         ; 0x8cc3
    mov dx, word [data_9094]         ; 0x8cc6
    cmp bx, dx                       ; 0x8cca
    jg short @..local.l337           ; 0x8ccc
    jne short @..local.l338          ; 0x8cce
    cmp cx, ax                       ; 0x8cd0
    jbe short @..local.l338          ; 0x8cd2
@..local.l337:
    jmp short @..local.l339          ; 0x8cd4
@..local.l338:
    mov ax, word [data_908e]         ; 0x8cd6
    mov dx, word [data_9090]         ; 0x8cd9
    mov word [data_908c], dx         ; 0x8cdd
    mov word [data_908a], ax         ; 0x8ce1
    call api_idx_000a_3              ; 0x8ce4
    push word [bp + 0x4]             ; 0x8ce7
    call api_idx_000c_2              ; 0x8cea
    pop cx                           ; 0x8ced
    push word [bp + 0x6]             ; 0x8cee
    call api_idx_0002_6              ; 0x8cf1
    pop cx                           ; 0x8cf4
    mov ax, 1                        ; 0x8cf5
    push ax                          ; 0x8cf8
    mov ax, 0x73                     ; 0x8cf9
    push ax                          ; 0x8cfc
    mov ax, 0x32                     ; 0x8cfd
    push ax                          ; 0x8d00
    call api_idx_000c                ; 0x8d01
    add sp, byte 6                   ; 0x8d04
    mov ax, 0xc5                     ; 0x8d07
    push ax                          ; 0x8d0a
    mov ax, 0x93                     ; 0x8d0b
    push ax                          ; 0x8d0e
    mov ax, 0x73                     ; 0x8d0f
    push ax                          ; 0x8d12
    mov ax, 0x32                     ; 0x8d13
    push ax                          ; 0x8d16
    call ds_dispatch_e8da            ; 0x8d17
    add sp, byte 8                   ; 0x8d1a
@..local.l339:
    ret                              ; 0x8d1d
api_idx_0044:
    mov ax, 0xffbc                   ; 0x8d1e
    call ds_dispatch_f40b            ; 0x8d21
    mov word [bp - 0x0002], 0        ; 0x8d24
@..api_idx_0044.l1:
    mov ax, word [bp - 0x0002]       ; 0x8d29
    shl ax, 1                        ; 0x8d2c
    mov bx, ax                       ; 0x8d2e
    mov word [bx - 0x7cf2], 0        ; 0x8d30
    inc word [bp - 0x0002]           ; 0x8d36
    mov ax, word [bp - 0x0002]       ; 0x8d39
    cmp ax, strict word 6            ; 0x8d3c
    jl short @..api_idx_0044.l1      ; 0x8d3f
    mov word [data_904e], 0xffff     ; 0x8d41
    mov word [bp - 0x0004], 0x32     ; 0x8d47
    mov word [bp - 0x0006], 0x73     ; 0x8d4c
    mov word [bp - 0x0008], 0x10d    ; 0x8d51
    mov word [bp - 0x000a], 0xc5     ; 0x8d56
    mov word [bp - 0x000c], 0x95     ; 0x8d5b
    mov word [bp - 0x0014], 0x16     ; 0x8d60
    mov ax, 0x9104                   ; 0x8d65
    push ax                          ; 0x8d68
    mov ax, word [bp - 0x000a]       ; 0x8d69
    inc ax                           ; 0x8d6c
    push ax                          ; 0x8d6d
    mov ax, word [bp - 0x0008]       ; 0x8d6e
    inc ax                           ; 0x8d71
    push ax                          ; 0x8d72
    mov ax, word [bp - 0x0006]       ; 0x8d73
    dec ax                           ; 0x8d76
    push ax                          ; 0x8d77
    mov ax, word [bp - 0x0004]       ; 0x8d78
    dec ax                           ; 0x8d7b
    push ax                          ; 0x8d7c
    call ds_dispatch_c283            ; 0x8d7d
    add sp, byte 0x0a                ; 0x8d80
    mov word [bp - 0x003a], ax       ; 0x8d83
    push word [bp - 0x000a]          ; 0x8d86
    push word [bp - 0x0008]          ; 0x8d89
    push word [bp - 0x0006]          ; 0x8d8c
    push word [bp - 0x0004]          ; 0x8d8f
    call ds_dispatch_bc9a            ; 0x8d92
    add sp, byte 8                   ; 0x8d95
    push word [bp - 0x000a]          ; 0x8d98
    push word [bp - 0x0008]          ; 0x8d9b
    push word [bp - 0x0006]          ; 0x8d9e
    mov ax, 0x95                     ; 0x8da1
    push ax                          ; 0x8da4
    call ds_dispatch_bc9a            ; 0x8da5
    add sp, byte 8                   ; 0x8da8
    call api_idx_000a_3              ; 0x8dab
    push word [bp + 0x4]             ; 0x8dae
    call api_idx_000c_2              ; 0x8db1
    pop cx                           ; 0x8db4
    mov ax, 1                        ; 0x8db5
    push ax                          ; 0x8db8
    mov ax, 0x73                     ; 0x8db9
    push ax                          ; 0x8dbc
    mov ax, 0x32                     ; 0x8dbd
    push ax                          ; 0x8dc0
    call api_idx_000c                ; 0x8dc1
    add sp, byte 6                   ; 0x8dc4
    lea ax, word [bp - 0x0038]       ; 0x8dc7
    push ax                          ; 0x8dca
    push word [bp + 0x6]             ; 0x8dcb
    call ds_dispatch_b53b            ; 0x8dce
    add sp, byte 4                   ; 0x8dd1
    lea ax, word [bp - 0x0038]       ; 0x8dd4
    push ax                          ; 0x8dd7
    push word [bp + 0x8]             ; 0x8dd8
    mov ax, 1                        ; 0x8ddb
    push ax                          ; 0x8dde
    mov ax, 8                        ; 0x8ddf
    push ax                          ; 0x8de2
    mov ax, word [bp - 0x0006]       ; 0x8de3
    add ax, strict word 6            ; 0x8de6
    push ax                          ; 0x8de9
    mov ax, word [bp - 0x000c]       ; 0x8dea
    add ax, strict word 6            ; 0x8ded
    push ax                          ; 0x8df0
    call ds_dispatch_c0c1            ; 0x8df1
    add sp, byte 0x0c                ; 0x8df4
    lea ax, word [bp - 0x0038]       ; 0x8df7
    push ax                          ; 0x8dfa
    mov ax, word [bp + 0x6]          ; 0x8dfb
    inc ax                           ; 0x8dfe
    push ax                          ; 0x8dff
    call ds_dispatch_b53b            ; 0x8e00
    add sp, byte 4                   ; 0x8e03
    lea ax, word [bp - 0x0038]       ; 0x8e06
    push ax                          ; 0x8e09
    mov ax, 1                        ; 0x8e0a
    push ax                          ; 0x8e0d
    push ax                          ; 0x8e0e
    mov ax, 8                        ; 0x8e0f
    push ax                          ; 0x8e12
    mov ax, word [bp - 0x0006]       ; 0x8e13
    add ax, strict word 6            ; 0x8e16
    push ax                          ; 0x8e19
    mov ax, word [bp - 0x000c]       ; 0x8e1a
    add ax, strict word 0x42         ; 0x8e1d
    push ax                          ; 0x8e20
    call ds_dispatch_c0c1            ; 0x8e21
    add sp, byte 0x0c                ; 0x8e24
    mov ax, word [bp - 0x0006]       ; 0x8e27
    add ax, strict word 0x14         ; 0x8e2a
    push ax                          ; 0x8e2d
    mov ax, word [bp - 0x000c]       ; 0x8e2e
    add ax, strict word 0x48         ; 0x8e31
    push ax                          ; 0x8e34
    call ds_dispatch_e809            ; 0x8e35
    add sp, byte 4                   ; 0x8e38
    mov ax, 0                        ; 0x8e3b
    push ax                          ; 0x8e3e
    mov ax, 0xcd                     ; 0x8e3f
    push ax                          ; 0x8e42
    call ds_dispatch_e823            ; 0x8e43
    add sp, byte 4                   ; 0x8e46
    mov ax, data_0002                ; 0x8e49
    push ax                          ; 0x8e4c
    mov ax, 0xa                      ; 0x8e4d
    push ax                          ; 0x8e50
    call ds_dispatch_e830            ; 0x8e51
    add sp, byte 4                   ; 0x8e54
    mov word [bp - 0x003c], 0xffff   ; 0x8e57
    mov word [bp - 0x003e], 0        ; 0x8e5c
    mov word [bp - 0x0040], 0        ; 0x8e61
    mov word [bp - 0x0002], 0        ; 0x8e66
@..api_idx_0044.l2:
    mov ax, 0                        ; 0x8e6b
    mov cx, word [bp - 0x0002]       ; 0x8e6e
    cmp cx, word [bp - 0x003e]       ; 0x8e71
    jne short @..api_idx_0044.l3     ; 0x8e74
    mov ax, 1                        ; 0x8e76
@..api_idx_0044.l3:
    push ax                          ; 0x8e79
    push cx                          ; 0x8e7a
    mov ax, word [bp - 0x0006]       ; 0x8e7b
    add ax, strict word 0x14         ; 0x8e7e
    push ax                          ; 0x8e81
    mov ax, word [bp - 0x000c]       ; 0x8e82
    add ax, strict word 0xc          ; 0x8e85
    push ax                          ; 0x8e88
    call math_loc_8ac7               ; 0x8e89
    add sp, byte 8                   ; 0x8e8c
    inc word [bp - 0x0002]           ; 0x8e8f
    mov ax, word [bp - 0x0002]       ; 0x8e92
    cmp ax, strict word 7            ; 0x8e95
    jl short @..api_idx_0044.l2      ; 0x8e98
    mov word [bp - 0x0042], 0        ; 0x8e9a
    mov ax, 0                        ; 0x8e9f
    push ax                          ; 0x8ea2
    push ax                          ; 0x8ea3
    push word [bp - 0x0042]          ; 0x8ea4
    mov ax, word [bp - 0x0006]       ; 0x8ea7
    add ax, strict word 0x15         ; 0x8eaa
    push ax                          ; 0x8ead
    mov ax, word [bp - 0x000c]       ; 0x8eae
    add ax, strict word 0x5e         ; 0x8eb1
    push ax                          ; 0x8eb4
    call loc_8b53                    ; 0x8eb5
    add sp, byte 0x0a                ; 0x8eb8
    push word [bp - 0x0042]          ; 0x8ebb
    push word [bp + 0x4]             ; 0x8ebe
    call api_idx_0004_13             ; 0x8ec1
    add sp, byte 4                   ; 0x8ec4
    mov word [bp - 0x0044], ax       ; 0x8ec7
    mov ax, 7                        ; 0x8eca
    cmp word [bp - 0x0044], byte 7   ; 0x8ecd
    jge short @..api_idx_0044.l4     ; 0x8ed1
    mov ax, word [bp - 0x0044]       ; 0x8ed3
@..api_idx_0044.l4:
    mov word [bp - 0x0024], ax       ; 0x8ed6
    mov word [bp - 0x0018], 0        ; 0x8ed9
    mov word [bp - 0x0022], 0xffff   ; 0x8ede
    push ax                          ; 0x8ee3
    push word [bp - 0x0022]          ; 0x8ee4
    push word [bp - 0x0018]          ; 0x8ee7
    mov ax, 7                        ; 0x8eea
    push ax                          ; 0x8eed
    mov ax, 0xf                      ; 0x8eee
    push ax                          ; 0x8ef1
    mov ax, word [bp - 0x0006]       ; 0x8ef2
    add ax, strict word 0x22         ; 0x8ef5
    push ax                          ; 0x8ef8
    mov ax, word [bp - 0x000c]       ; 0x8ef9
    add ax, strict word 6            ; 0x8efc
    push ax                          ; 0x8eff
    call ds_dispatch_bf97            ; 0x8f00
    add sp, byte 0x0e                ; 0x8f03
    mov word [bp - 0x0012], 0        ; 0x8f06
    push word [bp - 0x0012]          ; 0x8f0b
    mov ax, 7                        ; 0x8f0e
    push ax                          ; 0x8f11
    mov ax, 8                        ; 0x8f12
    push ax                          ; 0x8f15
    mov ax, word [bp - 0x0006]       ; 0x8f16
    add ax, strict word 0x22         ; 0x8f19
    push ax                          ; 0x8f1c
    mov ax, word [bp - 0x000c]       ; 0x8f1d
    add ax, strict word 0x6a         ; 0x8f20
    push ax                          ; 0x8f23
    call ds_dispatch_bfd8            ; 0x8f24
    add sp, byte 0x0a                ; 0x8f27
    mov ax, 0                        ; 0x8f2a
    push ax                          ; 0x8f2d
    push ax                          ; 0x8f2e
    mov ax, word [bp - 0x0006]       ; 0x8f2f
    add ax, word [bp - 0x0012]       ; 0x8f32
    add ax, strict word 0x2e         ; 0x8f35
    push ax                          ; 0x8f38
    mov ax, word [bp - 0x000c]       ; 0x8f39
    add ax, strict word 0x72         ; 0x8f3c
    push ax                          ; 0x8f3f
    mov ax, word [bp - 0x0006]       ; 0x8f40
    add ax, word [bp - 0x0012]       ; 0x8f43
    add ax, strict word 0x2a         ; 0x8f46
    push ax                          ; 0x8f49
    mov ax, word [bp - 0x000c]       ; 0x8f4a
    add ax, strict word 0x6a         ; 0x8f4d
    push ax                          ; 0x8f50
    mov ax, 0                        ; 0x8f51
    push ax                          ; 0x8f54
    call ds_dispatch_baa6            ; 0x8f55
    add sp, byte 0x0e                ; 0x8f58
    mov ax, 0                        ; 0x8f5b
    push ax                          ; 0x8f5e
    mov ax, 9                        ; 0x8f5f
    push ax                          ; 0x8f62
    mov ax, word [bp - 0x0006]       ; 0x8f63
    add ax, strict word 0x28         ; 0x8f66
    push ax                          ; 0x8f69
    mov ax, word [bp - 0x000c]       ; 0x8f6a
    add ax, strict word 0x72         ; 0x8f6d
    push ax                          ; 0x8f70
    mov ax, word [bp - 0x0006]       ; 0x8f71
    add ax, strict word 0x22         ; 0x8f74
    push ax                          ; 0x8f77
    mov ax, word [bp - 0x000c]       ; 0x8f78
    add ax, strict word 0x6a         ; 0x8f7b
    push ax                          ; 0x8f7e
    mov ax, 1                        ; 0x8f7f
    push ax                          ; 0x8f82
    call ds_dispatch_baa6            ; 0x8f83
    add sp, byte 0x0e                ; 0x8f86
    mov ax, 0                        ; 0x8f89
    push ax                          ; 0x8f8c
    mov ax, 0xb                      ; 0x8f8d
    push ax                          ; 0x8f90
    mov ax, word [bp - 0x0006]       ; 0x8f91
    add ax, strict word 0x4c         ; 0x8f94
    push ax                          ; 0x8f97
    mov ax, word [bp - 0x000c]       ; 0x8f98
    add ax, strict word 0x72         ; 0x8f9b
    push ax                          ; 0x8f9e
    mov ax, word [bp - 0x0006]       ; 0x8f9f
    add ax, strict word 0x46         ; 0x8fa2
    push ax                          ; 0x8fa5
    mov ax, word [bp - 0x000c]       ; 0x8fa6
    add ax, strict word 0x6a         ; 0x8fa9
    push ax                          ; 0x8fac
    mov ax, data_0002                ; 0x8fad
    push ax                          ; 0x8fb0
    call ds_dispatch_baa6            ; 0x8fb1
    add sp, byte 0x0e                ; 0x8fb4
    mov ax, 0                        ; 0x8fb7
    push ax                          ; 0x8fba
    mov ax, 0xd                      ; 0x8fbb
    push ax                          ; 0x8fbe
    mov ax, word [bp - 0x0006]       ; 0x8fbf
    add ax, strict word 0xe          ; 0x8fc2
    push ax                          ; 0x8fc5
    mov ax, word [bp - 0x000c]       ; 0x8fc6
    add ax, strict word 0x36         ; 0x8fc9
    push ax                          ; 0x8fcc
    mov ax, word [bp - 0x0006]       ; 0x8fcd
    add ax, strict word 6            ; 0x8fd0
    push ax                          ; 0x8fd3
    mov ax, word [bp - 0x000c]       ; 0x8fd4
    add ax, strict word 6            ; 0x8fd7
    push ax                          ; 0x8fda
    mov ax, 3                        ; 0x8fdb
    push ax                          ; 0x8fde
    call ds_dispatch_baa6            ; 0x8fdf
    add sp, byte 0x0e                ; 0x8fe2
    mov ax, 0                        ; 0x8fe5
    push ax                          ; 0x8fe8
    mov ax, 0x1b                     ; 0x8fe9
    push ax                          ; 0x8fec
    mov ax, word [bp - 0x0006]       ; 0x8fed
    add ax, strict word 0xe          ; 0x8ff0
    push ax                          ; 0x8ff3
    mov ax, word [bp - 0x000c]       ; 0x8ff4
    add ax, strict word 0x72         ; 0x8ff7
    push ax                          ; 0x8ffa
    mov ax, word [bp - 0x0006]       ; 0x8ffb
    add ax, strict word 6            ; 0x8ffe
    push ax                          ; 0x9001
    mov ax, word [bp - 0x000c]       ; 0x9002
    add ax, strict word 0x42         ; 0x9005
    push ax                          ; 0x9008
    mov ax, 4                        ; 0x9009
    push ax                          ; 0x900c
    call ds_dispatch_baa6            ; 0x900d
    add sp, byte 0x0e                ; 0x9010
    mov word [bp - 0x0002], 0        ; 0x9013
@..local.l340:
    mov ax, 0                        ; 0x9018
    push ax                          ; 0x901b
    mov ax, word [bp - 0x0002]       ; 0x901c
    add ax, strict word 0x31         ; 0x901f
    cbw                              ; 0x9022
    push ax                          ; 0x9023
    mov ax, word [bp - 0x0006]       ; 0x9024
    add ax, strict word 0x1b         ; 0x9027
    push ax                          ; 0x902a
    mov ax, 0xa                      ; 0x902b
    imul word [bp - 0x0002]          ; 0x902e
    add ax, word [bp - 0x000c]       ; 0x9031
    add ax, strict word 0x13         ; 0x9034
    push ax                          ; 0x9037
    mov ax, word [bp - 0x0006]       ; 0x9038
    add ax, strict word 0x14         ; 0x903b
    push ax                          ; 0x903e
    mov ax, 0xa                      ; 0x903f
    imul word [bp - 0x0002]          ; 0x9042
    add ax, word [bp - 0x000c]       ; 0x9045
    add ax, strict word 0xc          ; 0x9048
    push ax                          ; 0x904b
    mov ax, word [bp - 0x0002]       ; 0x904c
    add ax, strict word 5            ; 0x904f
    push ax                          ; 0x9052
    call ds_dispatch_baa6            ; 0x9053
    add sp, byte 0x0e                ; 0x9056
    inc word [bp - 0x0002]           ; 0x9059
    mov ax, word [bp - 0x0002]       ; 0x905c
    cmp ax, strict word 7            ; 0x905f
    jl short @..local.l340           ; 0x9062
    mov ax, 0                        ; 0x9064
    push ax                          ; 0x9067
    mov ax, 0x46                     ; 0x9068
    push ax                          ; 0x906b
    mov ax, 0x87                     ; 0x906c
    push ax                          ; 0x906f
    mov ax, 0x52                     ; 0x9070
    push ax                          ; 0x9073
    mov ax, 0x74                     ; 0x9074
    push ax                          ; 0x9077
    mov ax, 0x46                     ; 0x9078
    push ax                          ; 0x907b
    mov ax, 0xc                      ; 0x907c
    push ax                          ; 0x907f
    call ds_dispatch_baa6            ; 0x9080
    add sp, byte 0x0e                ; 0x9083
    mov ax, 0                        ; 0x9086
    push ax                          ; 0x9089
    mov ax, 0x57                     ; 0x908a
    push ax                          ; 0x908d
    mov ax, 0x9d                     ; 0x908e
    push ax                          ; 0x9091
    mov ax, 0x4b                     ; 0x9092
    push ax                          ; 0x9095
    mov ax, api_idx_0010             ; 0x9096
    push ax                          ; 0x9099
    mov ax, 0x32                     ; 0x909a
    push ax                          ; 0x909d
    mov ax, 0xd                      ; 0x909e
    push ax                          ; 0x90a1
    call ds_dispatch_baa6            ; 0x90a2
    add sp, byte 0x0e                ; 0x90a5
    mov ax, 0                        ; 0x90a8
    push ax                          ; 0x90ab
    mov ax, 0x41                     ; 0x90ac
    push ax                          ; 0x90af
    mov ax, 0xbb                     ; 0x90b0
    push ax                          ; 0x90b3
    mov ax, 0x5f                     ; 0x90b4
    push ax                          ; 0x90b7
    mov ax, 0xa5                     ; 0x90b8
    push ax                          ; 0x90bb
    mov ax, 0x43                     ; 0x90bc
    push ax                          ; 0x90bf
    mov ax, 0xe                      ; 0x90c0
    push ax                          ; 0x90c3
    call ds_dispatch_baa6            ; 0x90c4
    add sp, byte 0x0e                ; 0x90c7
    mov ax, 0                        ; 0x90ca
    push ax                          ; 0x90cd
    mov ax, 0x45                     ; 0x90ce
    push ax                          ; 0x90d1
    mov ax, 0x89                     ; 0x90d2
    push ax                          ; 0x90d5
    mov ax, 0x87                     ; 0x90d6
    push ax                          ; 0x90d9
    mov ax, 0x77                     ; 0x90da
    push ax                          ; 0x90dd
    mov ax, 0x6c                     ; 0x90de
    push ax                          ; 0x90e1
    mov ax, 0xf                      ; 0x90e2
    push ax                          ; 0x90e5
    call ds_dispatch_baa6            ; 0x90e6
    add sp, byte 0x0e                ; 0x90e9
    mov ax, 0                        ; 0x90ec
    push ax                          ; 0x90ef
    mov ax, 0x4d                     ; 0x90f0
    push ax                          ; 0x90f3
    mov ax, 0x9c                     ; 0x90f4
    push ax                          ; 0x90f7
    mov ax, 0x8e                     ; 0x90f8
    push ax                          ; 0x90fb
    mov ax, 0x91                     ; 0x90fc
    push ax                          ; 0x90ff
    mov ax, 0x7f                     ; 0x9100
    push ax                          ; 0x9103
    mov ax, 0x10                     ; 0x9104
    push ax                          ; 0x9107
    call ds_dispatch_baa6            ; 0x9108
    add sp, byte 0x0e                ; 0x910b
    mov ax, 0                        ; 0x910e
    push ax                          ; 0x9111
    mov ax, 0x44                     ; 0x9112
    push ax                          ; 0x9115
    mov ax, 0xb9                     ; 0x9116
    push ax                          ; 0x9119
    mov ax, 0x81                     ; 0x911a
    push ax                          ; 0x911d
    mov ax, data_00a6                ; 0x911e
    push ax                          ; 0x9121
    mov ax, 0x71                     ; 0x9122
    push ax                          ; 0x9125
    mov ax, 0x11                     ; 0x9126
    push ax                          ; 0x9129
    call ds_dispatch_baa6            ; 0x912a
    add sp, byte 0x0e                ; 0x912d
    mov ax, 7                        ; 0x9130
    cmp word [bp - 0x0044], byte 7   ; 0x9133
    jge short @..local.l341          ; 0x9137
    mov ax, word [bp - 0x0044]       ; 0x9139
@..local.l341:
    mov word [bp - 0x0020], ax       ; 0x913c
    mov word [bp - 0x0002], 0        ; 0x913f
@..local.l342:
    mov ax, 0                        ; 0x9144
    push ax                          ; 0x9147
    push ax                          ; 0x9148
    mov ax, 6                        ; 0x9149
    imul word [bp - 0x0002]          ; 0x914c
    add ax, word [bp - 0x0006]       ; 0x914f
    add ax, strict word 0x28         ; 0x9152
    push ax                          ; 0x9155
    mov ax, word [bp - 0x000c]       ; 0x9156
    add ax, strict word 0x62         ; 0x9159
    push ax                          ; 0x915c
    mov ax, 6                        ; 0x915d
    imul word [bp - 0x0002]          ; 0x9160
    add ax, word [bp - 0x0006]       ; 0x9163
    add ax, strict word 0x22         ; 0x9166
    push ax                          ; 0x9169
    mov ax, word [bp - 0x000c]       ; 0x916a
    add ax, strict word 6            ; 0x916d
    push ax                          ; 0x9170
    mov ax, word [bp - 0x0002]       ; 0x9171
    add ax, strict word 0x12         ; 0x9174
    push ax                          ; 0x9177
    call ds_dispatch_baa6            ; 0x9178
    add sp, byte 0x0e                ; 0x917b
    inc word [bp - 0x0002]           ; 0x917e
    mov ax, word [bp - 0x0002]       ; 0x9181
    cmp ax, strict word 7            ; 0x9184
    jl short @..local.l342           ; 0x9187
    mov ax, 0                        ; 0x9189
    push ax                          ; 0x918c
    push ax                          ; 0x918d
    push ax                          ; 0x918e
    push ax                          ; 0x918f
    push ax                          ; 0x9190
    mov ax, 0xffff                   ; 0x9191
    push ax                          ; 0x9194
    mov ax, 0x19                     ; 0x9195
    push ax                          ; 0x9198
    call ds_dispatch_baa6            ; 0x9199
    add sp, byte 0x0e                ; 0x919c
    mov ax, word [bp - 0x000a]       ; 0x919f
    inc ax                           ; 0x91a2
    push ax                          ; 0x91a3
    mov ax, word [bp - 0x0008]       ; 0x91a4
    inc ax                           ; 0x91a7
    push ax                          ; 0x91a8
    mov ax, word [bp - 0x0006]       ; 0x91a9
    dec ax                           ; 0x91ac
    push ax                          ; 0x91ad
    mov ax, word [bp - 0x0004]       ; 0x91ae
    dec ax                           ; 0x91b1
    push ax                          ; 0x91b2
    call ds_dispatch_e8da            ; 0x91b3
    add sp, byte 8                   ; 0x91b6
    mov word [data_9124], 5          ; 0x91b9
    les bx, word [data_0002]         ; 0x91bf
    mov ax, word [es:bx]             ; 0x91c3
    mov dx, word [es:bx + 0x2]       ; 0x91c6
    mov word [data_908c], dx         ; 0x91ca
    mov word [data_908a], ax         ; 0x91ce
    mov word [bp - 0x001c], 1        ; 0x91d1
@..local.l343:
    push word [bp - 0x0042]          ; 0x91d6
    push word [bp + 0x4]             ; 0x91d9
    call loc_8c8d                    ; 0x91dc
    add sp, byte 4                   ; 0x91df
    mov ax, 0x59fe                   ; 0x91e2
    push ax                          ; 0x91e5
    call ds_dispatch_b90d            ; 0x91e6
    pop cx                           ; 0x91e9
    dec ax                           ; 0x91ea
    mov word [bp - 0x001a], ax       ; 0x91eb
    cmp word [data_59fc], byte 0     ; 0x91ee
    je short @..local.l347           ; 0x91f3
    mov ax, word [bp - 0x0022]       ; 0x91f5
    cmp ax, word [bp - 0x0018]       ; 0x91f8
    jl short @..local.l344           ; 0x91fb
    inc word [bp - 0x0022]           ; 0x91fd
@..local.l344:
    mov ax, word [bp - 0x0022]       ; 0x9200
    cmp ax, strict word 0xffff       ; 0x9203
    je short @..local.l345           ; 0x9206
    cmp ax, word [bp - 0x0018]       ; 0x9208
    jl short @..local.l345           ; 0x920b
    mov ax, word [bp - 0x0018]       ; 0x920d
    add ax, word [bp - 0x0020]       ; 0x9210
    mov cx, ax                       ; 0x9213
    dec ax                           ; 0x9215
    mov cx, ax                       ; 0x9216
    mov ax, word [bp - 0x0022]       ; 0x9218
    cmp cx, ax                       ; 0x921b
    jge short @..local.l346          ; 0x921d
@..local.l345:
    mov ax, word [bp - 0x0018]       ; 0x921f
    mov word [bp - 0x0022], ax       ; 0x9222
@..local.l346:
    mov word [data_5b3e], 1          ; 0x9225
    mov ax, word [bp - 0x0022]       ; 0x922b
    sub ax, word [bp - 0x0018]       ; 0x922e
    add ax, strict word 0x12         ; 0x9231
    mov word [bp - 0x001a], ax       ; 0x9234
@..local.l347:
    cmp word [data_5b3e], byte 1     ; 0x9237
    je short @..local.l348           ; 0x923c
    jmp near @..local.l372           ; 0x923e
@..local.l348:
    mov ax, word [bp - 0x001a]       ; 0x9241
    jmp near @..local.l370           ; 0x9244

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x01, 0x5e, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0x53, 0x25, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xd3, 0x5d, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0x23, 0x25, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0xaa, 0x2c, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0xcc, 0x2c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x69, 0x27, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x7b, 0x55, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x21, 0x2b
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xf0
    db 0x2a, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0xbd, 0x23, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x6a, 0x2b, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x8c, 0x2b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x29, 0x26, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x3b, 0x54, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x4c, 0x29, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x2c, 0x29, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x92, 0x22, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xf3, 0x28, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xd3, 0x28, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..local.l349:
    cmp word [bp - 0x001a], byte 5   ; 0x959d
    jge short @..local.l350          ; 0x95a1
    jmp near @..local.l358           ; 0x95a3
@..local.l350:
    cmp word [bp - 0x001a], byte 0x0b ; 0x95a6
    jle short @..local.l351          ; 0x95aa
    jmp near @..local.l358           ; 0x95ac
@..local.l351:
    mov ax, 0                        ; 0x95af
    push ax                          ; 0x95b2
    push word [bp - 0x003e]          ; 0x95b3
    mov ax, word [bp - 0x0006]       ; 0x95b6
    add ax, strict word 0x14         ; 0x95b9
    push ax                          ; 0x95bc
    mov ax, word [bp - 0x000c]       ; 0x95bd
    add ax, strict word 0xc          ; 0x95c0
    push ax                          ; 0x95c3
    call math_loc_8ac7               ; 0x95c4
    add sp, byte 8                   ; 0x95c7
    mov ax, word [bp - 0x001a]       ; 0x95ca
    add ax, strict word 0xfffb       ; 0x95cd
    mov word [bp - 0x003e], ax       ; 0x95d0
    mov ax, 1                        ; 0x95d3
    push ax                          ; 0x95d6
    push word [bp - 0x003e]          ; 0x95d7
    mov ax, word [bp - 0x0006]       ; 0x95da
    add ax, strict word 0x14         ; 0x95dd
    push ax                          ; 0x95e0
    mov ax, word [bp - 0x000c]       ; 0x95e1
    add ax, strict word 0xc          ; 0x95e4
    push ax                          ; 0x95e7
    call math_loc_8ac7               ; 0x95e8
    add sp, byte 8                   ; 0x95eb
    cmp word [bp - 0x003c], byte 0   ; 0x95ee
    jge short @..local.l352          ; 0x95f2
    jmp near @..local.l356           ; 0x95f4
@..local.l352:
    mov ax, 6                        ; 0x95f7
    push ax                          ; 0x95fa
    mov ax, 0                        ; 0x95fb
    push ax                          ; 0x95fe
    mov ax, 0x248                    ; 0x95ff
    imul word [bp + 0x4]             ; 0x9602
    mov bx, ax                       ; 0x9605
    mov ax, word [bx + 0x5c18]       ; 0x9607
    push ax                          ; 0x960b
    mov ax, 6                        ; 0x960c
    imul word [bp - 0x003c]          ; 0x960f
    mov bx, ax                       ; 0x9612
    mov al, byte [bx + 0x621]        ; 0x9614
    sub ah, ah                       ; 0x9618
    mov cx, ax                       ; 0x961a
    pop ax                           ; 0x961c
    sub ax, cx                       ; 0x961d
    push ax                          ; 0x961f
    call ds_dispatch_b7c2            ; 0x9620
    add sp, byte 6                   ; 0x9623
    mov word [bp - 0x0040], ax       ; 0x9626
    mov ax, 6                        ; 0x9629
    imul word [bp - 0x003c]          ; 0x962c
    mov bx, ax                       ; 0x962f
    mov al, byte [bx + 0x622]        ; 0x9631
    sub ah, ah                       ; 0x9635
    mov cx, word [bp - 0x0040]       ; 0x9637
    inc cx                           ; 0x963a
    imul cx                          ; 0x963b
    mov word [bp - 0x0002], ax       ; 0x963d
    cmp word [bp + 0xa], byte 0      ; 0x9640
    jne short @..local.l353          ; 0x9644
    mov ax, 0x3e7                    ; 0x9646
    jmp short @..local.l355          ; 0x9649
@..local.l353:
    mov ax, 0x248                    ; 0x964b
    imul word [bp + 0x4]             ; 0x964e
    mov cx, word [bp - 0x0042]       ; 0x9651
    shl cx, 1                        ; 0x9654
    shl cx, 1                        ; 0x9656
    add ax, cx                       ; 0x9658
    mov bx, ax                       ; 0x965a
    mov ax, word [bx + 0x5c1c]       ; 0x965c
    cmp ax, word [bp - 0x0002]       ; 0x9660
    jge short @..local.l354          ; 0x9663
    jmp short @..local.l355          ; 0x9665
@..local.l354:
    mov ax, word [bp - 0x0002]       ; 0x9667
@..local.l355:
    push ax                          ; 0x966a
    mov ax, 6                        ; 0x966b
    imul word [bp - 0x003c]          ; 0x966e
    mov bx, ax                       ; 0x9671
    mov al, byte [bx + 0x622]        ; 0x9673
    sub ah, ah                       ; 0x9677
    mov cx, word [bp - 0x003e]       ; 0x9679
    inc cx                           ; 0x967c
    imul cx                          ; 0x967d
    push ax                          ; 0x967f
    push word [bp - 0x0042]          ; 0x9680
    mov ax, word [bp - 0x0006]       ; 0x9683
    add ax, strict word 0x15         ; 0x9686
    push ax                          ; 0x9689
    mov ax, word [bp - 0x000c]       ; 0x968a
    add ax, strict word 0x5e         ; 0x968d
    push ax                          ; 0x9690
    call loc_8b53                    ; 0x9691
    add sp, byte 0x0a                ; 0x9694
    jmp short @..local.l357          ; 0x9697
@..local.l356:
    mov ax, 0                        ; 0x9699
    push ax                          ; 0x969c
    push ax                          ; 0x969d
    push word [bp - 0x0042]          ; 0x969e
    mov ax, word [bp - 0x0006]       ; 0x96a1
    add ax, strict word 0x15         ; 0x96a4
    push ax                          ; 0x96a7
    mov ax, word [bp - 0x000c]       ; 0x96a8
    add ax, strict word 0x5e         ; 0x96ab
    push ax                          ; 0x96ae
    call loc_8b53                    ; 0x96af
    add sp, byte 0x0a                ; 0x96b2
@..local.l357:
    mov ax, word [bp - 0x0006]       ; 0x96b5
    add ax, strict word 0x1c         ; 0x96b8
    push ax                          ; 0x96bb
    mov ax, word [bp - 0x000c]       ; 0x96bc
    add ax, strict word 0x56         ; 0x96bf
    push ax                          ; 0x96c2
    mov ax, word [bp - 0x0006]       ; 0x96c3
    add ax, strict word 0x14         ; 0x96c6
    push ax                          ; 0x96c9
    mov ax, word [bp - 0x000c]       ; 0x96ca
    add ax, strict word 0xb          ; 0x96cd
    push ax                          ; 0x96d0
    call ds_dispatch_e8da            ; 0x96d1
    add sp, byte 8                   ; 0x96d4
    mov ax, word [bp - 0x0006]       ; 0x96d7
    add ax, strict word 0x1b         ; 0x96da
    push ax                          ; 0x96dd
    mov ax, word [bp - 0x000c]       ; 0x96de
    add ax, strict word 0x72         ; 0x96e1
    push ax                          ; 0x96e4
    mov ax, word [bp - 0x0006]       ; 0x96e5
    add ax, strict word 0x15         ; 0x96e8
    push ax                          ; 0x96eb
    mov ax, word [bp - 0x000c]       ; 0x96ec
    add ax, strict word 0x5e         ; 0x96ef
    push ax                          ; 0x96f2
    call ds_dispatch_e8da            ; 0x96f3
    add sp, byte 8                   ; 0x96f6
    jmp near @..local.l369           ; 0x96f9
@..local.l358:
    cmp word [bp - 0x001a], byte 0x0c ; 0x96fc
    jge short @..local.l359          ; 0x9700
    jmp near @..local.l363           ; 0x9702
@..local.l359:
    cmp word [bp - 0x001a], byte 0x11 ; 0x9705
    jle short @..local.l360          ; 0x9709
    jmp near @..local.l363           ; 0x970b
@..local.l360:
    mov ax, word [bp - 0x001a]       ; 0x970e
    add ax, strict word 0xfff4       ; 0x9711
    mov word [bp - 0x0042], ax       ; 0x9714
    mov word [bp - 0x003c], 0xffff   ; 0x9717
    push ax                          ; 0x971c
    push word [bp + 0x4]             ; 0x971d
    call api_idx_0004_13             ; 0x9720
    add sp, byte 4                   ; 0x9723
    mov word [bp - 0x0044], ax       ; 0x9726
    mov ax, 7                        ; 0x9729
    cmp word [bp - 0x0044], byte 7   ; 0x972c
    jge short @..local.l361          ; 0x9730
    mov ax, word [bp - 0x0044]       ; 0x9732
@..local.l361:
    mov word [bp - 0x0024], ax       ; 0x9735
    mov ax, 7                        ; 0x9738
    cmp word [bp - 0x0044], byte 7   ; 0x973b
    jge short @..local.l362          ; 0x973f
    mov ax, word [bp - 0x0044]       ; 0x9741
@..local.l362:
    mov word [bp - 0x0020], ax       ; 0x9744
    mov word [bp - 0x0018], 0        ; 0x9747
    mov word [bp - 0x0022], 0xffff   ; 0x974c
    push word [bp - 0x0024]          ; 0x9751
    push word [bp - 0x0022]          ; 0x9754
    push word [bp - 0x0018]          ; 0x9757
    mov ax, 7                        ; 0x975a
    push ax                          ; 0x975d
    mov ax, 0xf                      ; 0x975e
    push ax                          ; 0x9761
    mov ax, word [bp - 0x0006]       ; 0x9762
    add ax, strict word 0x22         ; 0x9765
    push ax                          ; 0x9768
    mov ax, word [bp - 0x000c]       ; 0x9769
    add ax, strict word 6            ; 0x976c
    push ax                          ; 0x976f
    call ds_dispatch_bf97            ; 0x9770
    add sp, byte 0x0e                ; 0x9773
    mov word [bp - 0x0012], 0        ; 0x9776
    push word [bp - 0x0012]          ; 0x977b
    mov ax, 7                        ; 0x977e
    push ax                          ; 0x9781
    mov ax, 8                        ; 0x9782
    push ax                          ; 0x9785
    mov ax, word [bp - 0x0006]       ; 0x9786
    add ax, strict word 0x22         ; 0x9789
    push ax                          ; 0x978c
    mov ax, word [bp - 0x000c]       ; 0x978d
    add ax, strict word 0x6a         ; 0x9790
    push ax                          ; 0x9793
    call ds_dispatch_bfd8            ; 0x9794
    add sp, byte 0x0a                ; 0x9797
    mov ax, 0                        ; 0x979a
    push ax                          ; 0x979d
    push ax                          ; 0x979e
    mov ax, word [bp - 0x0006]       ; 0x979f
    add ax, word [bp - 0x0012]       ; 0x97a2
    add ax, strict word 0x2e         ; 0x97a5
    push ax                          ; 0x97a8
    mov ax, word [bp - 0x000c]       ; 0x97a9
    add ax, strict word 0x72         ; 0x97ac
    push ax                          ; 0x97af
    mov ax, word [bp - 0x0006]       ; 0x97b0
    add ax, word [bp - 0x0012]       ; 0x97b3
    add ax, strict word 0x2a         ; 0x97b6
    push ax                          ; 0x97b9
    mov ax, word [bp - 0x000c]       ; 0x97ba
    add ax, strict word 0x6a         ; 0x97bd
    push ax                          ; 0x97c0
    mov ax, 0                        ; 0x97c1
    push ax                          ; 0x97c4
    call ds_dispatch_baa6            ; 0x97c5
    add sp, byte 0x0e                ; 0x97c8
    mov ax, 0                        ; 0x97cb
    push ax                          ; 0x97ce
    push ax                          ; 0x97cf
    push word [bp - 0x0042]          ; 0x97d0
    mov ax, word [bp - 0x0006]       ; 0x97d3
    add ax, strict word 0x15         ; 0x97d6
    push ax                          ; 0x97d9
    mov ax, word [bp - 0x000c]       ; 0x97da
    add ax, strict word 0x5e         ; 0x97dd
    push ax                          ; 0x97e0
    call loc_8b53                    ; 0x97e1
    add sp, byte 0x0a                ; 0x97e4
    mov ax, word [bp - 0x0006]       ; 0x97e7
    add ax, strict word 0x4c         ; 0x97ea
    push ax                          ; 0x97ed
    mov ax, word [bp - 0x000c]       ; 0x97ee
    add ax, strict word 0x72         ; 0x97f1
    push ax                          ; 0x97f4
    mov ax, word [bp - 0x0006]       ; 0x97f5
    add ax, strict word 0x22         ; 0x97f8
    push ax                          ; 0x97fb
    mov ax, word [bp - 0x000c]       ; 0x97fc
    add ax, strict word 6            ; 0x97ff
    push ax                          ; 0x9802
    call ds_dispatch_e8da            ; 0x9803
    add sp, byte 8                   ; 0x9806
    mov ax, word [bp - 0x0006]       ; 0x9809
    add ax, strict word 0x1b         ; 0x980c
    push ax                          ; 0x980f
    mov ax, word [bp - 0x000c]       ; 0x9810
    add ax, strict word 0x72         ; 0x9813
    push ax                          ; 0x9816
    mov ax, word [bp - 0x0006]       ; 0x9817
    add ax, strict word 0x15         ; 0x981a
    push ax                          ; 0x981d
    mov ax, word [bp - 0x000c]       ; 0x981e
    add ax, strict word 0x5e         ; 0x9821
    push ax                          ; 0x9824
    call ds_dispatch_e8da            ; 0x9825
    add sp, byte 8                   ; 0x9828
    jmp near @..local.l369           ; 0x982b
@..local.l363:
    cmp word [bp - 0x001a], byte 0x12 ; 0x982e
    jge short @..local.l364          ; 0x9832
    jmp near @..local.l369           ; 0x9834
@..local.l364:
    mov ax, word [bp - 0x0020]       ; 0x9837
    add ax, strict word 0x12         ; 0x983a
    cmp ax, word [bp - 0x001a]       ; 0x983d
    jg short @..local.l365           ; 0x9840
    jmp near @..local.l369           ; 0x9842
@..local.l365:
    mov ax, word [bp - 0x0018]       ; 0x9845
    add ax, word [bp - 0x001a]       ; 0x9848
    add ax, strict word 0xffee       ; 0x984b
    mov word [bp - 0x0022], ax       ; 0x984e
    shl ax, 1                        ; 0x9851
    mov bx, ax                       ; 0x9853
    mov ax, word [bx - 0x6996]       ; 0x9855
    mov word [bp - 0x003c], ax       ; 0x9859
    push word [bp - 0x0024]          ; 0x985c
    push word [bp - 0x0022]          ; 0x985f
    push word [bp - 0x0018]          ; 0x9862
    mov ax, 7                        ; 0x9865
    push ax                          ; 0x9868
    mov ax, 0xf                      ; 0x9869
    push ax                          ; 0x986c
    mov ax, word [bp - 0x0006]       ; 0x986d
    add ax, strict word 0x22         ; 0x9870
    push ax                          ; 0x9873
    mov ax, word [bp - 0x000c]       ; 0x9874
    add ax, strict word 6            ; 0x9877
    push ax                          ; 0x987a
    call ds_dispatch_bf97            ; 0x987b
    add sp, byte 0x0e                ; 0x987e
    mov ax, 6                        ; 0x9881
    push ax                          ; 0x9884
    mov ax, 0                        ; 0x9885
    push ax                          ; 0x9888
    mov ax, 0x248                    ; 0x9889
    imul word [bp + 0x4]             ; 0x988c
    mov bx, ax                       ; 0x988f
    mov ax, word [bx + 0x5c18]       ; 0x9891
    push ax                          ; 0x9895
    mov ax, 6                        ; 0x9896
    imul word [bp - 0x003c]          ; 0x9899
    mov bx, ax                       ; 0x989c
    mov al, byte [bx + 0x621]        ; 0x989e
    sub ah, ah                       ; 0x98a2
    mov cx, ax                       ; 0x98a4
    pop ax                           ; 0x98a6
    sub ax, cx                       ; 0x98a7
    push ax                          ; 0x98a9
    call ds_dispatch_b7c2            ; 0x98aa
    add sp, byte 6                   ; 0x98ad
    mov word [bp - 0x0040], ax       ; 0x98b0
    mov ax, 6                        ; 0x98b3
    imul word [bp - 0x003c]          ; 0x98b6
    mov bx, ax                       ; 0x98b9
    mov al, byte [bx + 0x622]        ; 0x98bb
    sub ah, ah                       ; 0x98bf
    mov cx, word [bp - 0x0040]       ; 0x98c1
    inc cx                           ; 0x98c4
    imul cx                          ; 0x98c5
    mov word [bp - 0x0002], ax       ; 0x98c7
    cmp word [bp + 0xa], byte 0      ; 0x98ca
    jne short @..local.l366          ; 0x98ce
    mov ax, 0x3e7                    ; 0x98d0
    jmp short @..local.l368          ; 0x98d3
@..local.l366:
    mov ax, 0x248                    ; 0x98d5
    imul word [bp + 0x4]             ; 0x98d8
    mov cx, word [bp - 0x0042]       ; 0x98db
    shl cx, 1                        ; 0x98de
    shl cx, 1                        ; 0x98e0
    add ax, cx                       ; 0x98e2
    mov bx, ax                       ; 0x98e4
    mov ax, word [bx + 0x5c1c]       ; 0x98e6
    cmp ax, word [bp - 0x0002]       ; 0x98ea
    jge short @..local.l367          ; 0x98ed
    jmp short @..local.l368          ; 0x98ef
@..local.l367:
    mov ax, word [bp - 0x0002]       ; 0x98f1
@..local.l368:
    push ax                          ; 0x98f4
    mov ax, 6                        ; 0x98f5
    imul word [bp - 0x003c]          ; 0x98f8
    mov bx, ax                       ; 0x98fb
    mov al, byte [bx + 0x622]        ; 0x98fd
    sub ah, ah                       ; 0x9901
    mov cx, word [bp - 0x003e]       ; 0x9903
    inc cx                           ; 0x9906
    imul cx                          ; 0x9907
    push ax                          ; 0x9909
    push word [bp - 0x0042]          ; 0x990a
    mov ax, word [bp - 0x0006]       ; 0x990d
    add ax, strict word 0x15         ; 0x9910
    push ax                          ; 0x9913
    mov ax, word [bp - 0x000c]       ; 0x9914
    add ax, strict word 0x5e         ; 0x9917
    push ax                          ; 0x991a
    call loc_8b53                    ; 0x991b
    add sp, byte 0x0a                ; 0x991e
    mov ax, word [bp - 0x0006]       ; 0x9921
    add ax, strict word 0x4c         ; 0x9924
    push ax                          ; 0x9927
    mov ax, word [bp - 0x000c]       ; 0x9928
    add ax, strict word 0x72         ; 0x992b
    push ax                          ; 0x992e
    mov ax, word [bp - 0x0006]       ; 0x992f
    add ax, strict word 0x22         ; 0x9932
    push ax                          ; 0x9935
    mov ax, word [bp - 0x000c]       ; 0x9936
    add ax, strict word 6            ; 0x9939
    push ax                          ; 0x993c
    call ds_dispatch_e8da            ; 0x993d
    add sp, byte 8                   ; 0x9940
    mov ax, word [bp - 0x0006]       ; 0x9943
    add ax, strict word 0x1b         ; 0x9946
    push ax                          ; 0x9949
    mov ax, word [bp - 0x000c]       ; 0x994a
    add ax, strict word 0x72         ; 0x994d
    push ax                          ; 0x9950
    mov ax, word [bp - 0x0006]       ; 0x9951
    add ax, strict word 0x15         ; 0x9954
    push ax                          ; 0x9957
    mov ax, word [bp - 0x000c]       ; 0x9958
    add ax, strict word 0x5e         ; 0x995b
    push ax                          ; 0x995e
    call ds_dispatch_e8da            ; 0x995f
    add sp, byte 8                   ; 0x9962
@..local.l369:
    jmp short @..local.l372          ; 0x9965
    db 0x8e, 0xe2, 0xb5, 0xe3, 0xb5, 0xe3, 0xec, 0xe4, 0x99, 0xe5
@..local.l370:
    cmp ax, strict word 5            ; 0x9971
    jae short @..local.l371          ; 0x9974
    xchg bx, ax                      ; 0x9976
    shl bx, 1                        ; 0x9977
    jmp [cs:bx - 0x1652]             ; 0x9979
@..local.l371:
    jmp near @..local.l349           ; 0x997e
@..local.l372:
    cmp word [bp - 0x001c], byte 0   ; 0x9981
    je short @..local.l373           ; 0x9985
    jmp near @..local.l343           ; 0x9987
@..local.l373:
    mov ax, 1                        ; 0x998a
    push ax                          ; 0x998d
    push word [bp - 0x003a]          ; 0x998e
    call ds_dispatch_c459            ; 0x9991
    add sp, byte 4                   ; 0x9994
    mov ax, word [bp - 0x000a]       ; 0x9997
    inc ax                           ; 0x999a
    push ax                          ; 0x999b
    mov ax, word [bp - 0x0008]       ; 0x999c
    inc ax                           ; 0x999f
    push ax                          ; 0x99a0
    mov ax, word [bp - 0x0006]       ; 0x99a1
    dec ax                           ; 0x99a4
    push ax                          ; 0x99a5
    mov ax, word [bp - 0x0004]       ; 0x99a6
    dec ax                           ; 0x99a9
    push ax                          ; 0x99aa
    call ds_dispatch_e8da            ; 0x99ab
    add sp, byte 8                   ; 0x99ae
    mov ax, word [bp - 0x003e]       ; 0x99b1
    xchg al, ah                      ; 0x99b4
    sub al, al                       ; 0x99b6
    add ax, word [bp - 0x003c]       ; 0x99b8
    add ax, 0x100                    ; 0x99bb
    mov word [data_904e], ax         ; 0x99be
    mov ax, word [data_9050]         ; 0x99c1
    ret                              ; 0x99c4

    db 0x8f, 0x06, 0x12, 0x91, 0x59, 0x89, 0x26, 0x0e, 0x91, 0x89, 0x2e, 0x10, 0x91, 0x89, 0x36, 0x0a
    db 0x91, 0x89, 0x3e, 0x0c, 0x91, 0xfc, 0xbf, 0x14, 0x91, 0xb9, 0xba, 0x96, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x20, 0x66, 0x8b, 0x2e, 0x10, 0x91, 0x8b, 0x26, 0x0e
    db 0x91, 0x8b, 0x36, 0x0a, 0x91, 0x8b, 0x3e, 0x0c, 0x91, 0x51, 0xff, 0x26, 0x12, 0x91

leaf_loc_9a03:
    pop bx                           ; 0x9a03
    push di                          ; 0x9a04
    push es                          ; 0x9a05
    mov di, cs                       ; 0x9a06
    mov es, di                       ; 0x9a08
    mov di, bx                       ; 0x9a0a
    mov bx, cx                       ; 0x9a0c
    shl bx, 1                        ; 0x9a0e
    cld                              ; 0x9a10
    repne scasw                      ; 0x9a11
    mov cx, word [es:bx + di - 0x0004] ; 0x9a13
    pop es                           ; 0x9a17
    pop di                           ; 0x9a18
    jmp cx                           ; 0x9a19

    db '!%&]@#~', 0
    db 0x20, 0x00
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    times 11 db 0
    db '--------', 0
    db '????????', 0
    db 'V.$$$', 0
    db 0x28, 0x00, 0x25, 0x29, 0x00, 0x28, 0x00, 0x29, 0x00
    db 'V.$$$', 0
    db 0x00
    db 'V.$$$', 0
    db 0x28, 0x00, 0x25, 0x29, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    times 10 db 0

