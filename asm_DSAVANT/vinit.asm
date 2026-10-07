%include "structs/structs.inc"
%include "structs/data_91b8.inc"
org 0
bits 16
%include "labels/vinit_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x09, 0x16, 0x98, 0x90

data_0002 equ 0x0002
data_0041 equ 0x0041
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
data_0e16 equ 0x0e16
data_0e18 equ 0x0e18
data_0e1a equ 0x0e1a
data_0e1c equ 0x0e1c
data_0e1e equ 0x0e1e
data_0e20 equ 0x0e20
data_0e22 equ 0x0e22
data_0e24 equ 0x0e24
data_0e26 equ 0x0e26
data_0e28 equ 0x0e28
data_0e2a equ 0x0e2a
data_0e2c equ 0x0e2c
data_0e2e equ 0x0e2e
data_0e30 equ 0x0e30
data_0e32 equ 0x0e32
data_0e34 equ 0x0e34
data_0e36 equ 0x0e36
data_1008 equ 0x1008
data_100a equ 0x100a
data_5212 equ 0x5212
data_5214 equ 0x5214
data_5216 equ 0x5216
data_5528 equ 0x5528
data_552a equ 0x552a
data_5978 equ 0x5978
data_5979 equ 0x5979
data_5980 equ 0x5980
data_5984 equ 0x5984
data_5986 equ 0x5986
data_5989 equ 0x5989
data_598a equ 0x598a
data_598e equ 0x598e
data_59f8 equ 0x59f8
data_5b3e equ 0x5b3e
data_5b6c equ 0x5b6c
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
data_69c8 equ 0x69c8
data_82b6 equ 0x82b6
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8d06 equ 0x8d06
data_8d08 equ 0x8d08
data_904c equ 0x904c
data_9056 equ 0x9056
data_9058 equ 0x9058
data_905a equ 0x905a
data_905c equ 0x905c
data_9068 equ 0x9068
data_906a equ 0x906a
data_9088 equ 0x9088
data_91b8 equ 0x91b8

    db 0x20, 0x01, 0x02, 0x00, 0x20, 0x66
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov ax, word [data_830a]         ; 0x0014
    jmp short @..local.l5            ; 0x0017
@..local.l1:
    call loc_03a8                    ; 0x0019
    jmp short @..local.l6            ; 0x001c
@..local.l2:
    call api_idx_0068                ; 0x001e
    jmp short @..local.l6            ; 0x0021
@..local.l3:
    call api_idx_0002_7              ; 0x0023
    jmp short @..local.l6            ; 0x0026
@..local.l4:
    call api_idx_0008                ; 0x0028
    jmp short @..local.l6            ; 0x002b
@..local.l5:
    cmp ax, strict word 0            ; 0x002d
    je short @..local.l1             ; 0x0030
    cmp ax, strict word 1            ; 0x0032
    je short @..local.l2             ; 0x0035
    cmp ax, strict word 2            ; 0x0037
    je short @..local.l4             ; 0x003a
    cmp ax, strict word 8            ; 0x003c
    je short @..local.l3             ; 0x003f
@..local.l6:
    mov ax, 0                        ; 0x0041
    ret                              ; 0x0044
api_idx_0002:
    mov ax, 0xfffe                   ; 0x0045
    call ds_dispatch_f40b            ; 0x0048
    mov ax, 0                        ; 0x004b
    push ax                          ; 0x004e
    push ax                          ; 0x004f
    push word [bp + 0x4]             ; 0x0050
    call ds_dispatch_d161            ; 0x0053
    add sp, byte 4                   ; 0x0056
    push ax                          ; 0x0059
    call ds_dispatch_f909            ; 0x005a
    add sp, byte 4                   ; 0x005d
    mov word [bp - 0x0002], ax       ; 0x0060
    cmp ax, strict word 0xffff       ; 0x0063
    jne short @..api_idx_0002.l1     ; 0x0066
    mov ax, 5                        ; 0x0068
    push ax                          ; 0x006b
    call ds_dispatch_b171            ; 0x006c
    pop cx                           ; 0x006f
@..api_idx_0002.l1:
    push word [bp + 0x6]             ; 0x0070
    push word [bp - 0x0002]          ; 0x0073
    call ds_dispatch_e619            ; 0x0076
    add sp, byte 4                   ; 0x0079
    push word [bp - 0x0002]          ; 0x007c
    call ds_dispatch_fda5            ; 0x007f
    pop cx                           ; 0x0082
    ret                              ; 0x0083
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0084
    call ds_dispatch_f40b            ; 0x0087
    mov ax, 0                        ; 0x008a
    push ax                          ; 0x008d
    mov ax, 1                        ; 0x008e
    push ax                          ; 0x0091
    push word [bp + 0x4]             ; 0x0092
    call ds_dispatch_d161            ; 0x0095
    add sp, byte 4                   ; 0x0098
    push ax                          ; 0x009b
    call ds_dispatch_f909            ; 0x009c
    add sp, byte 4                   ; 0x009f
    mov word [bp - 0x0002], ax       ; 0x00a2
    cmp ax, strict word 0xffff       ; 0x00a5
    jne short @..api_idx_0002_2.l1   ; 0x00a8
    mov ax, 7                        ; 0x00aa
    push ax                          ; 0x00ad
    call ds_dispatch_b171            ; 0x00ae
    pop cx                           ; 0x00b1
@..api_idx_0002_2.l1:
    mov ax, 0                        ; 0x00b2
    push ax                          ; 0x00b5
    push word [bp + 0x6]             ; 0x00b6
    push word [bp - 0x0002]          ; 0x00b9
    call ds_dispatch_f012            ; 0x00bc
    add sp, byte 6                   ; 0x00bf
    push word [bp - 0x0002]          ; 0x00c2
    call ds_dispatch_fda5            ; 0x00c5
    pop cx                           ; 0x00c8
    ret                              ; 0x00c9
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x00ca
    call ds_dispatch_f40b            ; 0x00cd
    mov ax, 0                        ; 0x00d0
    push ax                          ; 0x00d3
    push ax                          ; 0x00d4
    push word [bp + 0x4]             ; 0x00d5
    call ds_dispatch_d161            ; 0x00d8
    add sp, byte 4                   ; 0x00db
    push ax                          ; 0x00de
    call ds_dispatch_f909            ; 0x00df
    add sp, byte 4                   ; 0x00e2
    mov word [bp - 0x0002], ax       ; 0x00e5
    cmp ax, strict word 0xffff       ; 0x00e8
    jne short @..api_idx_0002_3.l1   ; 0x00eb
    mov ax, 8                        ; 0x00ed
    push ax                          ; 0x00f0
    call ds_dispatch_b171            ; 0x00f1
    pop cx                           ; 0x00f4
@..api_idx_0002_3.l1:
    push word [bp + 0x8]             ; 0x00f5
    push word [bp + 0x6]             ; 0x00f8
    push word [bp - 0x0002]          ; 0x00fb
    call ds_dispatch_fd6f            ; 0x00fe
    add sp, byte 6                   ; 0x0101
    push word [bp - 0x0002]          ; 0x0104
    call ds_dispatch_fda5            ; 0x0107
    pop cx                           ; 0x010a
    ret                              ; 0x010b
api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x010c
    call ds_dispatch_f40b            ; 0x010f
    mov ax, 0                        ; 0x0112
    push ax                          ; 0x0115
    push ax                          ; 0x0116
    push word [bp + 0x4]             ; 0x0117
    call ds_dispatch_d161            ; 0x011a
    add sp, byte 4                   ; 0x011d
    push ax                          ; 0x0120
    call ds_dispatch_f909            ; 0x0121
    add sp, byte 4                   ; 0x0124
    mov word [bp - 0x0002], ax       ; 0x0127
    cmp ax, strict word 0xffff       ; 0x012a
    jne short @..api_idx_0002_4.l1   ; 0x012d
    mov ax, 8                        ; 0x012f
    push ax                          ; 0x0132
    call ds_dispatch_b171            ; 0x0133
    pop cx                           ; 0x0136
@..api_idx_0002_4.l1:
    push word [bp - 0x0002]          ; 0x0137
    call ds_dispatch_ed62            ; 0x013a
    pop cx                           ; 0x013d
    push word [bp - 0x0002]          ; 0x013e
    call ds_dispatch_fda5            ; 0x0141
    pop cx                           ; 0x0144
    ret                              ; 0x0145
api_idx_000c:
    mov ax, 0xfff4                   ; 0x0146
    call ds_dispatch_f40b            ; 0x0149
    mov ax, 0                        ; 0x014c
    push ax                          ; 0x014f
    push ax                          ; 0x0150
    push word [bp + 0x4]             ; 0x0151
    call ds_dispatch_d161            ; 0x0154
    add sp, byte 4                   ; 0x0157
    push ax                          ; 0x015a
    call ds_dispatch_f909            ; 0x015b
    add sp, byte 4                   ; 0x015e
    mov word [bp - 0x0002], ax       ; 0x0161
    cmp ax, strict word 0xffff       ; 0x0164
    jne short @..api_idx_000c.l1     ; 0x0167
    mov ax, 6                        ; 0x0169
    push ax                          ; 0x016c
    call ds_dispatch_b171            ; 0x016d
    pop cx                           ; 0x0170
@..api_idx_000c.l1:
    mov ax, data_0002                ; 0x0171
    push ax                          ; 0x0174
    mov ax, 0                        ; 0x0175
    mov dx, 0                        ; 0x0178
    push dx                          ; 0x017b
    push ax                          ; 0x017c
    push word [bp - 0x0002]          ; 0x017d
    call ds_dispatch_fdbd            ; 0x0180
    add sp, byte 8                   ; 0x0183
    mov word [bp - 0x0004], dx       ; 0x0186
    mov word [bp - 0x0006], ax       ; 0x0189
    push word [bp - 0x0004]          ; 0x018c
    push word [bp - 0x0006]          ; 0x018f
    call ds_dispatch_afb9            ; 0x0192
    add sp, byte 4                   ; 0x0195
    mov word [bp - 0x0008], dx       ; 0x0198
    mov word [bp - 0x000a], ax       ; 0x019b
    push word [bp - 0x0006]          ; 0x019e
    call ds_dispatch_f4a3            ; 0x01a1
    pop cx                           ; 0x01a4
    mov word [bp - 0x000c], ax       ; 0x01a5
    cmp word [bp - 0x0008], byte 0   ; 0x01a8
    jne short @..api_idx_000c.l2     ; 0x01ac
    cmp word [bp - 0x000a], byte 0   ; 0x01ae
@..api_idx_000c.l2:
    je short @..api_idx_000c.l3      ; 0x01b2
    cmp word [bp - 0x000c], byte 0   ; 0x01b4
    jne short @..api_idx_000c.l4     ; 0x01b8
@..api_idx_000c.l3:
    mov ax, 6                        ; 0x01ba
    push ax                          ; 0x01bd
    call ds_dispatch_b171            ; 0x01be
    pop cx                           ; 0x01c1
@..api_idx_000c.l4:
    mov ax, 0                        ; 0x01c2
    push ax                          ; 0x01c5
    mov ax, 0                        ; 0x01c6
    mov dx, 0                        ; 0x01c9
    push dx                          ; 0x01cc
    push ax                          ; 0x01cd
    push word [bp - 0x0002]          ; 0x01ce
    call ds_dispatch_fdbd            ; 0x01d1
    add sp, byte 8                   ; 0x01d4
    push word [bp - 0x0006]          ; 0x01d7
    push word [bp - 0x000c]          ; 0x01da
    push word [bp - 0x0002]          ; 0x01dd
    call ds_dispatch_fd6f            ; 0x01e0
    add sp, byte 6                   ; 0x01e3
    push word [bp - 0x0002]          ; 0x01e6
    call ds_dispatch_fda5            ; 0x01e9
    pop cx                           ; 0x01ec
    push word [bp - 0x0006]          ; 0x01ed
    push word [bp - 0x0008]          ; 0x01f0
    push word [bp - 0x000a]          ; 0x01f3
    mov ax, word [bp - 0x000c]       ; 0x01f6
    mov dx, ds                       ; 0x01f9
    push dx                          ; 0x01fb
    push ax                          ; 0x01fc
    call ds_dispatch_afcc            ; 0x01fd
    add sp, byte 0x0a                ; 0x0200
    push word [bp - 0x000c]          ; 0x0203
    call ds_dispatch_f5a1            ; 0x0206
    pop cx                           ; 0x0209
    mov ax, word [bp - 0x000a]       ; 0x020a
    mov dx, word [bp - 0x0008]       ; 0x020d
    ret                              ; 0x0210
math_loc_0211:
    mov ax, 0xfaf4                   ; 0x0211
    call ds_dispatch_f40b            ; 0x0214
    mov word [bp - 0x0002], 0        ; 0x0217
@..math_loc_0211.l1:
    mov word [bp - 0x0004], 0        ; 0x021c
@..math_loc_0211.l2:
    mov ax, 0x3f                     ; 0x0221
    push ax                          ; 0x0224
    mov ax, 0                        ; 0x0225
    push ax                          ; 0x0228
    mov ax, 3                        ; 0x0229
    imul word [bp - 0x0002]          ; 0x022c
    add ax, word [bp - 0x0004]       ; 0x022f
    mov si, ax                       ; 0x0232
    mov bx, word [bp + 0x8]          ; 0x0234
    mov al, byte [bx + si]           ; 0x0237
    sub ah, ah                       ; 0x0239
    add ax, word [bp + 0x4]          ; 0x023b
    push ax                          ; 0x023e
    call ds_dispatch_b7c2            ; 0x023f
    add sp, byte 6                   ; 0x0242
    push ax                          ; 0x0245
    mov ax, 3                        ; 0x0246
    imul word [bp - 0x0002]          ; 0x0249
    mov cx, ax                       ; 0x024c
    add ax, word [bp - 0x0004]       ; 0x024e
    mov bx, ax                       ; 0x0251
    add bx, bp                       ; 0x0253
    pop ax                           ; 0x0255
    mov byte [bx - 0x030c], al       ; 0x0256
    cmp al, 0x20                     ; 0x025a
    jbe short @..math_loc_0211.l3    ; 0x025c
    sub ah, ah                       ; 0x025e
    add ax, strict word 0xffe0       ; 0x0260
    imul word [bp + 0x6]             ; 0x0263
    mov cx, 0x20                     ; 0x0266
    cwd                              ; 0x0269
    idiv cx                          ; 0x026a
    mov word [bp - 0x0006], ax       ; 0x026c
    mov ax, 0x3f                     ; 0x026f
    push ax                          ; 0x0272
    mov ax, 0                        ; 0x0273
    push ax                          ; 0x0276
    mov al, byte [bx - 0x030c]       ; 0x0277
    sub ah, ah                       ; 0x027b
    add ax, word [bp - 0x0006]       ; 0x027d
    push ax                          ; 0x0280
    call ds_dispatch_b7c2            ; 0x0281
    add sp, byte 6                   ; 0x0284
    push ax                          ; 0x0287
    mov ax, 3                        ; 0x0288
    imul word [bp - 0x0002]          ; 0x028b
    mov cx, ax                       ; 0x028e
    add ax, word [bp - 0x0004]       ; 0x0290
    mov bx, ax                       ; 0x0293
    add bx, bp                       ; 0x0295
    pop ax                           ; 0x0297
    mov byte [bx - 0x030c], al       ; 0x0298
    jmp short @..math_loc_0211.l4    ; 0x029c
@..math_loc_0211.l3:
    mov ax, 3                        ; 0x029e
    imul word [bp - 0x0002]          ; 0x02a1
    add ax, word [bp - 0x0004]       ; 0x02a4
    mov bx, ax                       ; 0x02a7
    add bx, bp                       ; 0x02a9
    cmp byte [bx - 0x030c], 0x20     ; 0x02ab
    jae short @..math_loc_0211.l4    ; 0x02b0
    mov al, byte [bx - 0x030c]       ; 0x02b2
    sub ah, ah                       ; 0x02b6
    mov cx, ax                       ; 0x02b8
    mov ax, 0x20                     ; 0x02ba
    sub ax, cx                       ; 0x02bd
    imul word [bp + 0x6]             ; 0x02bf
    mov cx, 0x20                     ; 0x02c2
    cwd                              ; 0x02c5
    idiv cx                          ; 0x02c6
    mov word [bp - 0x0006], ax       ; 0x02c8
    mov ax, 0x3f                     ; 0x02cb
    push ax                          ; 0x02ce
    mov ax, 0                        ; 0x02cf
    push ax                          ; 0x02d2
    mov al, byte [bx - 0x030c]       ; 0x02d3
    sub ah, ah                       ; 0x02d7
    sub ax, word [bp - 0x0006]       ; 0x02d9
    push ax                          ; 0x02dc
    call ds_dispatch_b7c2            ; 0x02dd
    add sp, byte 6                   ; 0x02e0
    push ax                          ; 0x02e3
    mov ax, 3                        ; 0x02e4
    imul word [bp - 0x0002]          ; 0x02e7
    mov cx, ax                       ; 0x02ea
    add ax, word [bp - 0x0004]       ; 0x02ec
    mov bx, ax                       ; 0x02ef
    add bx, bp                       ; 0x02f1
    pop ax                           ; 0x02f3
    mov byte [bx - 0x030c], al       ; 0x02f4
@..math_loc_0211.l4:
    inc word [bp - 0x0004]           ; 0x02f8
    mov ax, word [bp - 0x0004]       ; 0x02fb
    cmp ax, strict word 3            ; 0x02fe
    jge short @..math_loc_0211.l5    ; 0x0301
    jmp near @..math_loc_0211.l2     ; 0x0303
@..math_loc_0211.l5:
    inc word [bp - 0x0002]           ; 0x0306
    mov ax, word [bp - 0x0002]       ; 0x0309
    cmp ax, 0x100                    ; 0x030c
    jge short @..math_loc_0211.l6    ; 0x030f
    jmp near @..math_loc_0211.l1     ; 0x0311
@..math_loc_0211.l6:
    mov ax, 0xff                     ; 0x0314
    push ax                          ; 0x0317
    mov ax, 0x200                    ; 0x0318
    push ax                          ; 0x031b
    lea ax, word [bp - 0x050c]       ; 0x031c
    push ax                          ; 0x0320
    call ds_dispatch_f306            ; 0x0321
    add sp, byte 6                   ; 0x0324
    mov word [bp - 0x0002], 0        ; 0x0327
@..math_loc_0211.l7:
    mov ax, 3                        ; 0x032c
    imul word [bp - 0x0002]          ; 0x032f
    mov bx, ax                       ; 0x0332
    add bx, bp                       ; 0x0334
    mov al, byte [bx - 0x030c]       ; 0x0336
    sub ah, ah                       ; 0x033a
    mov cx, 8                        ; 0x033c
    cwd                              ; 0x033f
    idiv cx                          ; 0x0340
    mov word [bp - 0x0008], ax       ; 0x0342
    mov al, byte [bx - 0x030b]       ; 0x0345
    sub ah, ah                       ; 0x0349
    cwd                              ; 0x034b
    idiv cx                          ; 0x034c
    mov word [bp - 0x000a], ax       ; 0x034e
    mov al, byte [bx - 0x030a]       ; 0x0351
    sub ah, ah                       ; 0x0355
    cwd                              ; 0x0357
    idiv cx                          ; 0x0358
    mov word [bp - 0x000c], ax       ; 0x035a
    mov al, byte [bp - 0x0002]       ; 0x035d
    mov dx, word [bp - 0x0008]       ; 0x0360
    mov cx, 6                        ; 0x0363
    shl dx, cl                       ; 0x0366
    mov cx, dx                       ; 0x0368
    mov dx, word [bp - 0x000a]       ; 0x036a
    shl dx, 1                        ; 0x036d
    shl dx, 1                        ; 0x036f
    shl dx, 1                        ; 0x0371
    add cx, dx                       ; 0x0373
    add cx, word [bp - 0x000c]       ; 0x0375
    mov bx, cx                       ; 0x0378
    add bx, bp                       ; 0x037a
    mov byte [bx - 0x050c], al       ; 0x037c
    inc word [bp - 0x0002]           ; 0x0380
    mov ax, word [bp - 0x0002]       ; 0x0383
    cmp ax, 0x100                    ; 0x0386
    jl short @..math_loc_0211.l7     ; 0x0389
    lea ax, word [bp - 0x050c]       ; 0x038b
    push ax                          ; 0x038f
    lea ax, word [bp - 0x030c]       ; 0x0390
    push ax                          ; 0x0394
    call ds_dispatch_f10b            ; 0x0395
    add sp, byte 4                   ; 0x0398
    mov ax, 0xffff                   ; 0x039b
    push ax                          ; 0x039e
    push ax                          ; 0x039f
    push ax                          ; 0x03a0
    call ds_dispatch_f0d7            ; 0x03a1
    add sp, byte 6                   ; 0x03a4
    ret                              ; 0x03a7
loc_03a8:
    mov ax, 0xfce6                   ; 0x03a8
    call ds_dispatch_f40b            ; 0x03ab
    mov word [data_905c], 0          ; 0x03ae
    mov word [data_0e30], 0          ; 0x03b4
    mov word [data_0e2e], 0          ; 0x03ba
    mov word [data_0e2c], 0          ; 0x03c0
    mov word [data_0e2a], 0          ; 0x03c6
    mov word [data_0e28], 0          ; 0x03cc
    mov word [data_0e26], 0          ; 0x03d2
    mov ax, 0                        ; 0x03d8
    push ax                          ; 0x03db
    mov ax, 0x9098                   ; 0x03dc
    push ax                          ; 0x03df
    call ds_dispatch_f909            ; 0x03e0
    add sp, byte 4                   ; 0x03e3
    mov word [data_9088], ax         ; 0x03e6
    cmp ax, strict word 0xffff       ; 0x03e9
    jne short @..local.l7            ; 0x03ec
    mov ax, 1                        ; 0x03ee
    push ax                          ; 0x03f1
    call ds_dispatch_b171            ; 0x03f2
    pop cx                           ; 0x03f5
@..local.l7:
    mov ax, 0x34c                    ; 0x03f6
    push ax                          ; 0x03f9
    mov ax, 0x5642                   ; 0x03fa
    push ax                          ; 0x03fd
    push word [data_9088]            ; 0x03fe
    call ds_dispatch_fd6f            ; 0x0402
    add sp, byte 6                   ; 0x0405
    push word [data_9088]            ; 0x0408
    call ds_dispatch_fda5            ; 0x040c
    pop cx                           ; 0x040f
    mov word [data_905a], 0x36       ; 0x0410
    mov al, byte [data_5986]         ; 0x0416
    sub ah, ah                       ; 0x0419
    mov word [data_9058], ax         ; 0x041b
    mov al, byte [data_598a]         ; 0x041e
    sub ah, ah                       ; 0x0421
    jmp short @..local.l12           ; 0x0423
@..local.l8:
    mov ax, data_0002                ; 0x0425
    push ax                          ; 0x0428
    call ds_dispatch_b171            ; 0x0429
    pop cx                           ; 0x042c
    jmp short @..local.l13           ; 0x042d
@..local.l9:
    mov word [bp - 0x0002], 1        ; 0x042f
    jmp short @..local.l13           ; 0x0434
@..local.l10:
    mov word [bp - 0x0002], data_0002 ; 0x0436
    jmp short @..local.l13           ; 0x043b
@..local.l11:
    mov ax, data_0002                ; 0x043d
    push ax                          ; 0x0440
    call ds_dispatch_b171            ; 0x0441
    pop cx                           ; 0x0444
    jmp short @..local.l13           ; 0x0445
@..local.l12:
    cmp ax, strict word 1            ; 0x0447
    je short @..local.l9             ; 0x044a
    cmp ax, strict word 2            ; 0x044c
    je short @..local.l10            ; 0x044f
    cmp ax, 0xff                     ; 0x0451
    je short @..local.l8             ; 0x0454
    jmp short @..local.l11           ; 0x0456
@..local.l13:
    push word [bp - 0x0002]          ; 0x0458
    call ds_dispatch_de20            ; 0x045b
    pop cx                           ; 0x045e
    mov word [data_9056], ax         ; 0x045f
    test ax, 1                       ; 0x0462
    jne short @..local.l14           ; 0x0465
    test ax, data_0002               ; 0x0467
    je short @..local.l15            ; 0x046a
@..local.l14:
    jmp short @..local.l16           ; 0x046c
@..local.l15:
    mov ax, 3                        ; 0x046e
    push ax                          ; 0x0471
    call ds_dispatch_b171            ; 0x0472
    pop cx                           ; 0x0475
@..local.l16:
    mov word [data_0e34], data_905c  ; 0x0476
    mov al, byte [data_5984]         ; 0x047c
    sub ah, ah                       ; 0x047f
    mov word [bp - 0x000a], ax       ; 0x0481
    cmp ax, strict word 6            ; 0x0484
    jne short @..local.l17           ; 0x0487
    mov word [bp - 0x000a], 4        ; 0x0489
@..local.l17:
    mov ax, word [data_5980]         ; 0x048e
    cmp word [bp - 0x000a], byte 0   ; 0x0491
    jne short @..local.l18           ; 0x0495
    mov ax, 0                        ; 0x0497
@..local.l18:
    mov word [bp - 0x000c], ax       ; 0x049a
    push word [bp - 0x000a]          ; 0x049d
    push ax                          ; 0x04a0
    call ds_dispatch_ef2e            ; 0x04a1
    add sp, byte 4                   ; 0x04a4
    mov word [data_59f8], data_905c  ; 0x04a7
    mov word [data_0e32], 0          ; 0x04ad
    mov word [data_5b3e], 0          ; 0x04b3
    mov word [bp - 0x0006], 0        ; 0x04b9
@..local.l19:
    mov ax, 0x64                     ; 0x04be
    push ax                          ; 0x04c1
    call ds_dispatch_b7a9            ; 0x04c2
    pop cx                           ; 0x04c5
    mov bx, word [bp - 0x0006]       ; 0x04c6
    mov byte [bx + 0x5990], al       ; 0x04c9
    inc word [bp - 0x0006]           ; 0x04cd
    mov ax, word [bp - 0x0006]       ; 0x04d0
    cmp ax, strict word 0x64         ; 0x04d3
    jl short @..local.l19            ; 0x04d6
    call ds_dispatch_b186            ; 0x04d8
    mov ax, 0                        ; 0x04db
    push ax                          ; 0x04de
    push ax                          ; 0x04df
    call ds_dispatch_e91b            ; 0x04e0
    add sp, byte 4                   ; 0x04e3
    cmp dx, byte 1                   ; 0x04e6
    jg short @..local.l20            ; 0x04e9
    jne short @..local.l21           ; 0x04eb
    cmp ax, 0x6200                   ; 0x04ed
    jb short @..local.l21            ; 0x04f0
@..local.l20:
    jmp short @..local.l22           ; 0x04f2
@..local.l21:
    mov ax, 4                        ; 0x04f4
    push ax                          ; 0x04f7
    call ds_dispatch_b171            ; 0x04f8
    pop cx                           ; 0x04fb
@..local.l22:
    mov ax, 0                        ; 0x04fc
    push ax                          ; 0x04ff
    mov ax, 0x90a5                   ; 0x0500
    push ax                          ; 0x0503
    call api_idx_0002                ; 0x0504
    add sp, byte 4                   ; 0x0507
    mov ax, 1                        ; 0x050a
    push ax                          ; 0x050d
    mov ax, 0x90b1                   ; 0x050e
    push ax                          ; 0x0511
    call api_idx_0002                ; 0x0512
    add sp, byte 4                   ; 0x0515
    mov ax, data_0002                ; 0x0518
    push ax                          ; 0x051b
    mov ax, 0x90bd                   ; 0x051c
    push ax                          ; 0x051f
    call api_idx_0002                ; 0x0520
    add sp, byte 4                   ; 0x0523
    mov ax, 3                        ; 0x0526
    push ax                          ; 0x0529
    mov ax, 0x90c9                   ; 0x052a
    push ax                          ; 0x052d
    call api_idx_0002                ; 0x052e
    add sp, byte 4                   ; 0x0531
    mov ax, 4                        ; 0x0534
    push ax                          ; 0x0537
    mov ax, 0x90d5                   ; 0x0538
    push ax                          ; 0x053b
    call api_idx_0002                ; 0x053c
    add sp, byte 4                   ; 0x053f
    mov ax, 5                        ; 0x0542
    push ax                          ; 0x0545
    mov ax, 0x90e1                   ; 0x0546
    push ax                          ; 0x0549
    call api_idx_0002                ; 0x054a
    add sp, byte 4                   ; 0x054d
    mov ax, 6                        ; 0x0550
    push ax                          ; 0x0553
    mov ax, 0x90ed                   ; 0x0554
    push ax                          ; 0x0557
    call api_idx_0002                ; 0x0558
    add sp, byte 4                   ; 0x055b
    mov ax, 7                        ; 0x055e
    push ax                          ; 0x0561
    mov ax, 0x90f9                   ; 0x0562
    push ax                          ; 0x0565
    call api_idx_0002                ; 0x0566
    add sp, byte 4                   ; 0x0569
    call ds_dispatch_ca6a            ; 0x056c
    mov ax, 0x9105                   ; 0x056f
    push ax                          ; 0x0572
    call api_idx_000c                ; 0x0573
    pop cx                           ; 0x0576
    mov word [data_0e30], dx         ; 0x0577
    mov word [data_0e2e], ax         ; 0x057b
    mov ax, 0x9111                   ; 0x057e
    push ax                          ; 0x0581
    call api_idx_000c                ; 0x0582
    pop cx                           ; 0x0585
    mov word [data_0e2c], dx         ; 0x0586
    mov word [data_0e2a], ax         ; 0x058a
    mov ax, 0x911d                   ; 0x058d
    push ax                          ; 0x0590
    call api_idx_000c                ; 0x0591
    pop cx                           ; 0x0594
    mov word [data_0e28], dx         ; 0x0595
    mov word [data_0e26], ax         ; 0x0599
    mov ax, 3                        ; 0x059c
    push ax                          ; 0x059f
    mov ax, 0x9129                   ; 0x05a0
    push ax                          ; 0x05a3
    call api_idx_0002_2              ; 0x05a4
    add sp, byte 4                   ; 0x05a7
    mov word [data_1008], data_905c  ; 0x05aa
    mov ax, 0x52                     ; 0x05b0
    push ax                          ; 0x05b3
    mov ax, 0x5524                   ; 0x05b4
    push ax                          ; 0x05b7
    mov ax, 0x9136                   ; 0x05b8
    push ax                          ; 0x05bb
    call api_idx_0002_3              ; 0x05bc
    add sp, byte 6                   ; 0x05bf
    mov ax, 0x30c                    ; 0x05c2
    push ax                          ; 0x05c5
    mov ax, 0x5218                   ; 0x05c6
    push ax                          ; 0x05c9
    mov ax, 0x9141                   ; 0x05ca
    push ax                          ; 0x05cd
    call api_idx_0002_3              ; 0x05ce
    add sp, byte 6                   ; 0x05d1
    mov ax, 0x2dfe                   ; 0x05d4
    push ax                          ; 0x05d7
    mov ax, 0x100c                   ; 0x05d8
    push ax                          ; 0x05db
    mov ax, 0x914a                   ; 0x05dc
    push ax                          ; 0x05df
    call api_idx_0002_3              ; 0x05e0
    add sp, byte 6                   ; 0x05e3
    mov ax, 0x18                     ; 0x05e6
    push ax                          ; 0x05e9
    mov ax, 0x906e                   ; 0x05ea
    push ax                          ; 0x05ed
    mov ax, 0x9152                   ; 0x05ee
    push ax                          ; 0x05f1
    call api_idx_0002_3              ; 0x05f2
    add sp, byte 6                   ; 0x05f5
    mov ax, 0x915d                   ; 0x05f8
    push ax                          ; 0x05fb
    call api_idx_0002_4              ; 0x05fc
    pop cx                           ; 0x05ff
    mov ax, 0                        ; 0x0600
    push ax                          ; 0x0603
    push ax                          ; 0x0604
    mov ax, 0x9166                   ; 0x0605
    push ax                          ; 0x0608
    call ds_dispatch_d161            ; 0x0609
    add sp, byte 4                   ; 0x060c
    push ax                          ; 0x060f
    call ds_dispatch_f909            ; 0x0610
    add sp, byte 4                   ; 0x0613
    mov word [data_0e24], ax         ; 0x0616
    cmp ax, strict word 0xffff       ; 0x0619
    jne short @..local.l23           ; 0x061c
    mov ax, 9                        ; 0x061e
    push ax                          ; 0x0621
    call ds_dispatch_b171            ; 0x0622
    pop cx                           ; 0x0625
@..local.l23:
    mov word [data_5212], 0xffff     ; 0x0626
    mov word [data_5214], 0          ; 0x062c
@..local.l24:
    mov ax, word [data_5214]         ; 0x0632
    shl ax, 1                        ; 0x0635
    mov bx, ax                       ; 0x0637
    mov word [bx + 0x3e0a], 0xffff   ; 0x0639
    inc word [data_5214]             ; 0x063f
    mov ax, word [data_5214]         ; 0x0643
    cmp ax, strict word 4            ; 0x0646
    jl short @..local.l24            ; 0x0649
    mov word [data_5214], 0          ; 0x064b
    mov word [bp - 0x0006], 0        ; 0x0651
@..local.l25:
    mov ax, word [bp - 0x0006]       ; 0x0656
    shl ax, 1                        ; 0x0659
    mov bx, ax                       ; 0x065b
    mov word [bx + 0x5b72], 0xffff   ; 0x065d
    mov ax, 0x14                     ; 0x0663
    imul word [bp - 0x0006]          ; 0x0666
    mov bx, ax                       ; 0x0669
    mov byte [bx + 0x5b7c], 0        ; 0x066b
    mov ax, word [bp - 0x0006]       ; 0x0670
    shl ax, 1                        ; 0x0673
    shl ax, 1                        ; 0x0675
    mov bx, ax                       ; 0x0677
    mov word [bx + 0x5be2], 0        ; 0x0679
    mov word [bx + 0x5be0], 0        ; 0x067f
    inc word [bp - 0x0006]           ; 0x0685
    mov ax, word [bp - 0x0006]       ; 0x0688
    cmp ax, strict word 5            ; 0x068b
    jl short @..local.l25            ; 0x068e
    mov ax, 0                        ; 0x0690
    push ax                          ; 0x0693
    push ax                          ; 0x0694
    mov ax, 0x916e                   ; 0x0695
    push ax                          ; 0x0698
    call ds_dispatch_d161            ; 0x0699
    add sp, byte 4                   ; 0x069c
    push ax                          ; 0x069f
    call ds_dispatch_f909            ; 0x06a0
    add sp, byte 4                   ; 0x06a3
    mov word [data_0e22], ax         ; 0x06a6
    cmp ax, strict word 0xffff       ; 0x06a9
    jne short @..local.l26           ; 0x06ac
    mov ax, 0xa                      ; 0x06ae
    push ax                          ; 0x06b1
    call ds_dispatch_b171            ; 0x06b2
    pop cx                           ; 0x06b5
@..local.l26:
    call ds_dispatch_b9c4            ; 0x06b6
    mov ax, 1                        ; 0x06b9
    push ax                          ; 0x06bc
    mov ax, 0                        ; 0x06bd
    push ax                          ; 0x06c0
    push ax                          ; 0x06c1
    call ds_dispatch_d6dc            ; 0x06c2
    add sp, byte 6                   ; 0x06c5
    mov ax, 1                        ; 0x06c8
    push ax                          ; 0x06cb
    push ax                          ; 0x06cc
    push ax                          ; 0x06cd
    call ds_dispatch_d6dc            ; 0x06ce
    add sp, byte 6                   ; 0x06d1
    mov ax, 1                        ; 0x06d4
    push ax                          ; 0x06d7
    mov ax, data_0002                ; 0x06d8
    push ax                          ; 0x06db
    push ax                          ; 0x06dc
    call ds_dispatch_d6dc            ; 0x06dd
    add sp, byte 6                   ; 0x06e0
    mov ax, 1                        ; 0x06e3
    push ax                          ; 0x06e6
    mov ax, 3                        ; 0x06e7
    push ax                          ; 0x06ea
    push ax                          ; 0x06eb
    call ds_dispatch_d6dc            ; 0x06ec
    add sp, byte 6                   ; 0x06ef
    mov ax, 1                        ; 0x06f2
    push ax                          ; 0x06f5
    mov ax, 4                        ; 0x06f6
    push ax                          ; 0x06f9
    push ax                          ; 0x06fa
    call ds_dispatch_d6dc            ; 0x06fb
    add sp, byte 6                   ; 0x06fe
    mov ax, 1                        ; 0x0701
    push ax                          ; 0x0704
    mov ax, 8                        ; 0x0705
    push ax                          ; 0x0708
    push ax                          ; 0x0709
    call ds_dispatch_d6dc            ; 0x070a
    add sp, byte 6                   ; 0x070d
    mov ax, 1                        ; 0x0710
    push ax                          ; 0x0713
    mov ax, 9                        ; 0x0714
    push ax                          ; 0x0717
    push ax                          ; 0x0718
    call ds_dispatch_d6dc            ; 0x0719
    add sp, byte 6                   ; 0x071c
    mov word [data_598e], 0xffff     ; 0x071f
    mov word [data_82b6], 0xffff     ; 0x0725
    mov word [data_100a], data_905c  ; 0x072b
    mov word [data_0e20], 0          ; 0x0731
    mov word [data_0e1e], 0          ; 0x0737
    mov word [data_0e1c], 0          ; 0x073d
    mov word [data_0e1a], 0          ; 0x0743
    mov word [data_0e18], 0          ; 0x0749
    mov word [data_0e16], 0          ; 0x074f
    mov word [data_0e14], 0          ; 0x0755
    mov word [data_0e12], 0          ; 0x075b
    mov word [data_0e10], 0          ; 0x0761
    mov word [data_0e0e], 0          ; 0x0767
    mov ax, 0x400                    ; 0x076d
    mov dx, 0                        ; 0x0770
    push dx                          ; 0x0773
    push ax                          ; 0x0774
    call ds_dispatch_afb9            ; 0x0775
    add sp, byte 4                   ; 0x0778
    mov word [data_0e20], dx         ; 0x077b
    mov word [data_0e1e], ax         ; 0x077f
    cmp word [data_0e20], byte 0     ; 0x0782
    jne short @..local.l27           ; 0x0787
    cmp word [data_0e1e], byte 0     ; 0x0789
@..local.l27:
    jne short @..local.l28           ; 0x078e
    mov ax, 0xd                      ; 0x0790
    push ax                          ; 0x0793
    call ds_dispatch_b171            ; 0x0794
    pop cx                           ; 0x0797
@..local.l28:
    mov ax, 0x1000                   ; 0x0798
    mov dx, 0                        ; 0x079b
    push dx                          ; 0x079e
    push ax                          ; 0x079f
    call ds_dispatch_afb9            ; 0x07a0
    add sp, byte 4                   ; 0x07a3
    mov word [data_0e1c], dx         ; 0x07a6
    mov word [data_0e1a], ax         ; 0x07aa
    cmp word [data_0e1c], byte 0     ; 0x07ad
    jne short @..local.l29           ; 0x07b2
    cmp word [data_0e1a], byte 0     ; 0x07b4
@..local.l29:
    jne short @..local.l30           ; 0x07b9
    mov ax, 0xd                      ; 0x07bb
    push ax                          ; 0x07be
    call ds_dispatch_b171            ; 0x07bf
    pop cx                           ; 0x07c2
@..local.l30:
    mov ax, 0x1000                   ; 0x07c3
    mov dx, 0                        ; 0x07c6
    push dx                          ; 0x07c9
    push ax                          ; 0x07ca
    call ds_dispatch_afb9            ; 0x07cb
    add sp, byte 4                   ; 0x07ce
    mov word [data_0e18], dx         ; 0x07d1
    mov word [data_0e16], ax         ; 0x07d5
    cmp word [data_0e18], byte 0     ; 0x07d8
    jne short @..local.l31           ; 0x07dd
    cmp word [data_0e16], byte 0     ; 0x07df
@..local.l31:
    jne short @..local.l32           ; 0x07e4
    mov ax, 0xd                      ; 0x07e6
    push ax                          ; 0x07e9
    call ds_dispatch_b171            ; 0x07ea
    pop cx                           ; 0x07ed
@..local.l32:
    push word [data_5528]            ; 0x07ee
    call ds_dispatch_f4a3            ; 0x07f2
    pop cx                           ; 0x07f5
    mov word [data_0e14], ax         ; 0x07f6
    cmp word [data_0e14], byte 0     ; 0x07f9
    jne short @..local.l33           ; 0x07fe
    mov ax, 0xd                      ; 0x0800
    push ax                          ; 0x0803
    call ds_dispatch_b171            ; 0x0804
    pop cx                           ; 0x0807
@..local.l33:
    push word [data_552a]            ; 0x0808
    call ds_dispatch_f4a3            ; 0x080c
    pop cx                           ; 0x080f
    mov word [data_0e12], ax         ; 0x0810
    cmp word [data_0e12], byte 0     ; 0x0813
    jne short @..local.l34           ; 0x0818
    mov ax, 0xd                      ; 0x081a
    push ax                          ; 0x081d
    call ds_dispatch_b171            ; 0x081e
    pop cx                           ; 0x0821
@..local.l34:
    mov ax, 0xc00                    ; 0x0822
    push ax                          ; 0x0825
    call ds_dispatch_f4a3            ; 0x0826
    pop cx                           ; 0x0829
    mov word [data_0e10], ax         ; 0x082a
    cmp word [data_0e10], byte 0     ; 0x082d
    jne short @..local.l35           ; 0x0832
    mov ax, 0xd                      ; 0x0834
    push ax                          ; 0x0837
    call ds_dispatch_b171            ; 0x0838
    pop cx                           ; 0x083b
@..local.l35:
    mov ax, 0x400                    ; 0x083c
    push ax                          ; 0x083f
    call ds_dispatch_f4a3            ; 0x0840
    pop cx                           ; 0x0843
    mov word [data_0e0e], ax         ; 0x0844
    cmp word [data_0e0e], byte 0     ; 0x0847
    jne short @..local.l36           ; 0x084c
    mov ax, 0xd                      ; 0x084e
    push ax                          ; 0x0851
    call ds_dispatch_b171            ; 0x0852
    pop cx                           ; 0x0855
@..local.l36:
    mov word [data_904c], 0          ; 0x0856
    mov ax, 0                        ; 0x085c
    push ax                          ; 0x085f
    push ax                          ; 0x0860
    mov ax, 0x917b                   ; 0x0861
    push ax                          ; 0x0864
    call ds_dispatch_d161            ; 0x0865
    add sp, byte 4                   ; 0x0868
    push ax                          ; 0x086b
    call ds_dispatch_f909            ; 0x086c
    add sp, byte 4                   ; 0x086f
    mov word [bp - 0x0004], ax       ; 0x0872
    cmp ax, strict word 0xffff       ; 0x0875
    jne short @..local.l37           ; 0x0878
    mov ax, 0xe                      ; 0x087a
    push ax                          ; 0x087d
    call ds_dispatch_b171            ; 0x087e
    pop cx                           ; 0x0881
@..local.l37:
    mov ax, 0x300                    ; 0x0882
    push ax                          ; 0x0885
    lea ax, word [bp - 0x031a]       ; 0x0886
    push ax                          ; 0x088a
    push word [bp - 0x0004]          ; 0x088b
    call ds_dispatch_fd6f            ; 0x088e
    add sp, byte 6                   ; 0x0891
    push word [bp - 0x0004]          ; 0x0894
    call ds_dispatch_fda5            ; 0x0897
    pop cx                           ; 0x089a
    lea ax, word [bp - 0x031a]       ; 0x089b
    push ax                          ; 0x089f
    mov al, byte [data_5979]         ; 0x08a0
    cbw                              ; 0x08a3
    push ax                          ; 0x08a4
    mov al, byte [data_5978]         ; 0x08a5
    cbw                              ; 0x08a8
    push ax                          ; 0x08a9
    call math_loc_0211               ; 0x08aa
    add sp, byte 6                   ; 0x08ad
    mov word [data_830a], 1          ; 0x08b0
    ret                              ; 0x08b6
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x08b7
    call ds_dispatch_f40b            ; 0x08ba
    mov ax, 0                        ; 0x08bd
    push ax                          ; 0x08c0
    call ds_dispatch_ef14            ; 0x08c1
    pop cx                           ; 0x08c4
    mov ax, 0                        ; 0x08c5
    push ax                          ; 0x08c8
    mov ax, 1                        ; 0x08c9
    push ax                          ; 0x08cc
    push word [bp + 0x4]             ; 0x08cd
    call ds_dispatch_d161            ; 0x08d0
    add sp, byte 4                   ; 0x08d3
    push ax                          ; 0x08d6
    call ds_dispatch_f909            ; 0x08d7
    add sp, byte 4                   ; 0x08da
    mov word [bp - 0x0002], ax       ; 0x08dd
    cmp ax, strict word 0xffff       ; 0x08e0
    jne short @..api_idx_0002_5.l1   ; 0x08e3
    mov ax, 0xe                      ; 0x08e5
    push ax                          ; 0x08e8
    call ds_dispatch_b171            ; 0x08e9
    pop cx                           ; 0x08ec
@..api_idx_0002_5.l1:
    mov ax, 0                        ; 0x08ed
    push ax                          ; 0x08f0
    push word [bp - 0x0002]          ; 0x08f1
    call ds_dispatch_efde            ; 0x08f4
    add sp, byte 4                   ; 0x08f7
    push word [bp - 0x0002]          ; 0x08fa
    call ds_dispatch_fda5            ; 0x08fd
    pop cx                           ; 0x0900
    cmp word [bp + 0x6], byte 1      ; 0x0901
    jne short @..api_idx_0002_5.l2   ; 0x0905
    mov ax, 0xc7                     ; 0x0907
    push ax                          ; 0x090a
    mov ax, 0x13f                    ; 0x090b
    push ax                          ; 0x090e
    mov ax, 0                        ; 0x090f
    push ax                          ; 0x0912
    push ax                          ; 0x0913
    call ds_dispatch_e8da            ; 0x0914
    add sp, byte 8                   ; 0x0917
    jmp short @..api_idx_0002_5.l3   ; 0x091a
@..api_idx_0002_5.l2:
    cmp word [bp + 0x6], byte 2      ; 0x091c
    jne short @..api_idx_0002_5.l3   ; 0x0920
    mov ax, 0                        ; 0x0922
    push ax                          ; 0x0925
    push ax                          ; 0x0926
    push ax                          ; 0x0927
    call ds_dispatch_f0d7            ; 0x0928
    add sp, byte 6                   ; 0x092b
    mov ax, 0xc7                     ; 0x092e
    push ax                          ; 0x0931
    mov ax, 0x13f                    ; 0x0932
    push ax                          ; 0x0935
    mov ax, 0                        ; 0x0936
    push ax                          ; 0x0939
    push ax                          ; 0x093a
    call ds_dispatch_e8da            ; 0x093b
    add sp, byte 8                   ; 0x093e
    mov ax, 0                        ; 0x0941
    push ax                          ; 0x0944
    call ds_dispatch_f0bd            ; 0x0945
    pop cx                           ; 0x0948
@..api_idx_0002_5.l3:
    ret                              ; 0x0949
api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x094a
    call ds_dispatch_f40b            ; 0x094d
    cmp word [data_91b8], byte 0xff  ; 0x0950
    jne short @..local.l38           ; 0x0955
    mov ax, 0                        ; 0x0957
    ret                              ; 0x095a
@..local.l38:
    mov ax, 1                        ; 0x095b
    push ax                          ; 0x095e
    call ds_dispatch_ea50            ; 0x095f
    pop cx                           ; 0x0962
    test ax, ax                      ; 0x0963
    je short @..local.l40            ; 0x0965
    mov ax, 1                        ; 0x0967
    push ax                          ; 0x096a
    call ds_dispatch_eb32            ; 0x096b
    pop cx                           ; 0x096e
    sub ah, ah                       ; 0x096f
    mov word [bp - 0x0002], ax       ; 0x0971
    mov ax, 0                        ; 0x0974
    cmp word [bp - 0x0002], byte 0x1b ; 0x0977
    jne short @..local.l39           ; 0x097b
    mov ax, 1                        ; 0x097d
@..local.l39:
    or word [data_91b8], ax          ; 0x0980
@..local.l40:
    mov ax, word [data_91b8]         ; 0x0984
    ret                              ; 0x0987
api_idx_0004:
    mov ax, 0xfffc                   ; 0x0988
    call ds_dispatch_f40b            ; 0x098b
    mov ax, word [bp + 0x4]          ; 0x098e
    cwd                              ; 0x0991
    les bx, word [data_0002]         ; 0x0992
    mov cx, word [es:bx]             ; 0x0996
    mov bx, word [es:bx + 0x2]       ; 0x0999
    add ax, cx                       ; 0x099d
    adc dx, bx                       ; 0x099f
    mov word [bp - 0x0002], dx       ; 0x09a1
    mov word [bp - 0x0004], ax       ; 0x09a4
@..api_idx_0004.l1:
    les bx, word [data_0002]         ; 0x09a7
    mov ax, word [es:bx]             ; 0x09ab
    mov dx, word [es:bx + 0x2]       ; 0x09ae
    cmp dx, word [bp - 0x0002]       ; 0x09b2
    jg short @..api_idx_0004.l2      ; 0x09b5
    jne short @..api_idx_0004.l3     ; 0x09b7
    cmp ax, word [bp - 0x0004]       ; 0x09b9
    jb short @..api_idx_0004.l3      ; 0x09bc
@..api_idx_0004.l2:
    jmp short @..local.l42           ; 0x09be
@..api_idx_0004.l3:
    call api_idx_0002_6              ; 0x09c0
    test ax, ax                      ; 0x09c3
    je short @..local.l41            ; 0x09c5
    ret                              ; 0x09c7
@..local.l41:
    mov ax, 0xa                      ; 0x09c8
    push ax                          ; 0x09cb
    call ds_dispatch_e489            ; 0x09cc
    pop cx                           ; 0x09cf
    jmp short @..api_idx_0004.l1     ; 0x09d0
@..local.l42:
    ret                              ; 0x09d2
api_idx_000e:
    mov ax, 0xfff2                   ; 0x09d3
    call ds_dispatch_f40b            ; 0x09d6
    mov al, byte [bp + 0x4]          ; 0x09d9
    mov byte [bp - 0x000e], al       ; 0x09dc
    mov byte [bp - 0x000d], 0        ; 0x09df
    mov ax, word [bp + 0x4]          ; 0x09e3
    shl ax, 1                        ; 0x09e6
    mov bx, ax                       ; 0x09e8
    mov al, byte [bx + 0x7ed4]       ; 0x09ea
    sub ah, ah                       ; 0x09ee
    mov word [bp - 0x0002], ax       ; 0x09f0
    mov bx, word [bp + 0x4]          ; 0x09f3
    mov al, byte [bx + 0x7f1d]       ; 0x09f6
    sub ah, ah                       ; 0x09fa
    mov word [bp - 0x0004], ax       ; 0x09fc
    cmp word [bp + 0x6], byte 0      ; 0x09ff
    je short @..api_idx_000e.l1      ; 0x0a03
    mov ax, 0xa0                     ; 0x0a05
    sub ax, word [bp - 0x0002]       ; 0x0a08
    imul word [bp + 0x6]             ; 0x0a0b
    mov cx, 0x64                     ; 0x0a0e
    cwd                              ; 0x0a11
    idiv cx                          ; 0x0a12
    add word [bp - 0x0002], ax       ; 0x0a14
    mov ax, 0x31                     ; 0x0a17
    sub ax, word [bp - 0x0004]       ; 0x0a1a
    imul word [bp + 0x6]             ; 0x0a1d
    cwd                              ; 0x0a20
    idiv cx                          ; 0x0a21
    add word [bp - 0x0004], ax       ; 0x0a23
@..api_idx_000e.l1:
    push word [bp + 0x6]             ; 0x0a26
    mov ax, 0                        ; 0x0a29
    push ax                          ; 0x0a2c
    lea ax, word [bp - 0x000e]       ; 0x0a2d
    push ax                          ; 0x0a30
    mov ax, 0                        ; 0x0a31
    push ax                          ; 0x0a34
    mov ax, 0xc7                     ; 0x0a35
    push ax                          ; 0x0a38
    mov ax, 0                        ; 0x0a39
    push ax                          ; 0x0a3c
    mov ax, 0x13f                    ; 0x0a3d
    push ax                          ; 0x0a40
    mov ax, 0                        ; 0x0a41
    push ax                          ; 0x0a44
    push word [bp - 0x0004]          ; 0x0a45
    push word [bp - 0x0002]          ; 0x0a48
    mov ax, 0xf                      ; 0x0a4b
    push ax                          ; 0x0a4e
    call ds_dispatch_efd1            ; 0x0a4f
    add sp, byte 0x16                ; 0x0a52
    ret                              ; 0x0a55
loc_0a56:
    mov ax, 0                        ; 0x0a56
    call ds_dispatch_f40b            ; 0x0a59
    mov ax, 0                        ; 0x0a5c
    push ax                          ; 0x0a5f
    mov ax, 0xc7                     ; 0x0a60
    push ax                          ; 0x0a63
    mov ax, 0x13f                    ; 0x0a64
    push ax                          ; 0x0a67
    mov ax, 0                        ; 0x0a68
    push ax                          ; 0x0a6b
    push ax                          ; 0x0a6c
    call ds_dispatch_e901            ; 0x0a6d
    add sp, byte 0x0a                ; 0x0a70
    mov ax, 0                        ; 0x0a73
    push ax                          ; 0x0a76
    push word [bp + 0x4]             ; 0x0a77
    call api_idx_000e                ; 0x0a7a
    add sp, byte 4                   ; 0x0a7d
    cmp word [bp + 0x6], byte 0      ; 0x0a80
    je short @..local.l43            ; 0x0a84
    mov ax, 0                        ; 0x0a86
    push ax                          ; 0x0a89
    push word [bp + 0x6]             ; 0x0a8a
    call api_idx_000e                ; 0x0a8d
    add sp, byte 4                   ; 0x0a90
@..local.l43:
    cmp word [bp + 0x8], byte 0      ; 0x0a93
    je short @..local.l44            ; 0x0a97
    mov ax, 0                        ; 0x0a99
    push ax                          ; 0x0a9c
    push word [bp + 0x8]             ; 0x0a9d
    call api_idx_000e                ; 0x0aa0
    add sp, byte 4                   ; 0x0aa3
@..local.l44:
    mov ax, 0xc7                     ; 0x0aa6
    push ax                          ; 0x0aa9
    mov ax, 0x13f                    ; 0x0aaa
    push ax                          ; 0x0aad
    mov ax, 0                        ; 0x0aae
    push ax                          ; 0x0ab1
    push ax                          ; 0x0ab2
    call ds_dispatch_e8da            ; 0x0ab3
    add sp, byte 8                   ; 0x0ab6
    cmp word [bp + 0xa], byte 0      ; 0x0ab9
    je short @..local.l45            ; 0x0abd
    push word [bp + 0xa]             ; 0x0abf
    call api_idx_0004                ; 0x0ac2
    pop cx                           ; 0x0ac5
@..local.l45:
    ret                              ; 0x0ac6
api_idx_0068:
    mov ax, 0xff98                   ; 0x0ac7
    call ds_dispatch_f40b            ; 0x0aca
    call ds_dispatch_d9a6            ; 0x0acd
    mov word [data_8450], ax         ; 0x0ad0
    test ax, ax                      ; 0x0ad3
    je short @..api_idx_0068.l1      ; 0x0ad5
    mov ax, 0                        ; 0x0ad7
    push ax                          ; 0x0ada
    push ax                          ; 0x0adb
    call ds_dispatch_d7e7            ; 0x0adc
    add sp, byte 4                   ; 0x0adf
    mov ax, word [api_idx_0002_4]    ; 0x0ae2
    mov word [data_844e], ax         ; 0x0ae5
@..api_idx_0068.l1:
    mov word [bp - 0x0008], 0        ; 0x0ae8
@..api_idx_0068.l2:
    mov bx, word [bp - 0x0008]       ; 0x0aed
    mov byte [bx + 0x5b48], 0xff     ; 0x0af0
    mov byte [bx + 0x5b5a], 0        ; 0x0af5
    inc word [bp - 0x0008]           ; 0x0afa
    mov ax, word [bp - 0x0008]       ; 0x0afd
    cmp ax, strict word 0x12         ; 0x0b00
    jl short @..api_idx_0068.l2      ; 0x0b03
    mov ax, 0xf                      ; 0x0b05
    push ax                          ; 0x0b08
    mov ax, 0x3c                     ; 0x0b09
    push ax                          ; 0x0b0c
    call ds_dispatch_d61c            ; 0x0b0d
    add sp, byte 4                   ; 0x0b10
    mov ax, 0                        ; 0x0b13
    push ax                          ; 0x0b16
    mov ax, 0xc7                     ; 0x0b17
    push ax                          ; 0x0b1a
    mov ax, 0x13f                    ; 0x0b1b
    push ax                          ; 0x0b1e
    mov ax, 0                        ; 0x0b1f
    push ax                          ; 0x0b22
    push ax                          ; 0x0b23
    call ds_dispatch_e901            ; 0x0b24
    add sp, byte 0x0a                ; 0x0b27
    mov ax, 0                        ; 0x0b2a
    push ax                          ; 0x0b2d
    mov ax, 1                        ; 0x0b2e
    push ax                          ; 0x0b31
    call api_idx_000e                ; 0x0b32
    add sp, byte 4                   ; 0x0b35
    mov ax, 0                        ; 0x0b38
    push ax                          ; 0x0b3b
    push ax                          ; 0x0b3c
    push ax                          ; 0x0b3d
    call ds_dispatch_f0d7            ; 0x0b3e
    add sp, byte 6                   ; 0x0b41
    mov ax, 0xc7                     ; 0x0b44
    push ax                          ; 0x0b47
    mov ax, 0x13f                    ; 0x0b48
    push ax                          ; 0x0b4b
    mov ax, 0                        ; 0x0b4c
    push ax                          ; 0x0b4f
    push ax                          ; 0x0b50
    call ds_dispatch_e8da            ; 0x0b51
    add sp, byte 8                   ; 0x0b54
    mov ax, 0                        ; 0x0b57
    push ax                          ; 0x0b5a
    call ds_dispatch_f0bd            ; 0x0b5b
    pop cx                           ; 0x0b5e
    mov word [data_91b8], 0          ; 0x0b5f
    call api_idx_0002_6              ; 0x0b65
    test ax, ax                      ; 0x0b68
    jne short @..api_idx_0068.l4     ; 0x0b6a
    cmp word [data_8450], byte 0     ; 0x0b6c
    je short @..api_idx_0068.l3      ; 0x0b71
    mov ax, 0                        ; 0x0b73
    push ax                          ; 0x0b76
    push word [data_844e]            ; 0x0b77
    push ax                          ; 0x0b7b
    call ds_dispatch_d964            ; 0x0b7c
    add sp, byte 6                   ; 0x0b7f
    mov word [data_844c], ax         ; 0x0b82
@..api_idx_0068.l3:
    mov ax, 0xb4                     ; 0x0b85
    push ax                          ; 0x0b88
    call api_idx_0004                ; 0x0b89
    pop cx                           ; 0x0b8c
@..api_idx_0068.l4:
    call api_idx_0002_6              ; 0x0b8d
    test ax, ax                      ; 0x0b90
    jne short @..api_idx_0068.l5     ; 0x0b92
    mov ax, 0xa                      ; 0x0b94
    push ax                          ; 0x0b97
    mov ax, 0                        ; 0x0b98
    push ax                          ; 0x0b9b
    mov ax, 3                        ; 0x0b9c
    push ax                          ; 0x0b9f
    mov ax, data_0002                ; 0x0ba0
    push ax                          ; 0x0ba3
    call loc_0a56                    ; 0x0ba4
    add sp, byte 8                   ; 0x0ba7
@..api_idx_0068.l5:
    call api_idx_0002_6              ; 0x0baa
    test ax, ax                      ; 0x0bad
    jne short @..api_idx_0068.l6     ; 0x0baf
    mov ax, 0xa                      ; 0x0bb1
    push ax                          ; 0x0bb4
    mov ax, 0                        ; 0x0bb5
    push ax                          ; 0x0bb8
    mov ax, 5                        ; 0x0bb9
    push ax                          ; 0x0bbc
    mov ax, 4                        ; 0x0bbd
    push ax                          ; 0x0bc0
    call loc_0a56                    ; 0x0bc1
    add sp, byte 8                   ; 0x0bc4
@..api_idx_0068.l6:
    call api_idx_0002_6              ; 0x0bc7
    test ax, ax                      ; 0x0bca
    jne short @..api_idx_0068.l7     ; 0x0bcc
    mov ax, 0xa                      ; 0x0bce
    push ax                          ; 0x0bd1
    mov ax, 0                        ; 0x0bd2
    push ax                          ; 0x0bd5
    mov ax, 7                        ; 0x0bd6
    push ax                          ; 0x0bd9
    mov ax, 6                        ; 0x0bda
    push ax                          ; 0x0bdd
    call loc_0a56                    ; 0x0bde
    add sp, byte 8                   ; 0x0be1
@..api_idx_0068.l7:
    call api_idx_0002_6              ; 0x0be4
    test ax, ax                      ; 0x0be7
    jne short @..api_idx_0068.l8     ; 0x0be9
    mov ax, 0xa                      ; 0x0beb
    push ax                          ; 0x0bee
    push ax                          ; 0x0bef
    mov ax, 9                        ; 0x0bf0
    push ax                          ; 0x0bf3
    mov ax, 8                        ; 0x0bf4
    push ax                          ; 0x0bf7
    call loc_0a56                    ; 0x0bf8
    add sp, byte 8                   ; 0x0bfb
@..api_idx_0068.l8:
    call api_idx_0002_6              ; 0x0bfe
    test ax, ax                      ; 0x0c01
    jne short @..api_idx_0068.l9     ; 0x0c03
    mov ax, 0xa                      ; 0x0c05
    push ax                          ; 0x0c08
    mov ax, 0xd                      ; 0x0c09
    push ax                          ; 0x0c0c
    mov ax, 0xc                      ; 0x0c0d
    push ax                          ; 0x0c10
    mov ax, 0xb                      ; 0x0c11
    push ax                          ; 0x0c14
    call loc_0a56                    ; 0x0c15
    add sp, byte 8                   ; 0x0c18
@..api_idx_0068.l9:
    call api_idx_0002_6              ; 0x0c1b
    test ax, ax                      ; 0x0c1e
    jne short @..api_idx_0068.l10    ; 0x0c20
    mov ax, 0xa                      ; 0x0c22
    push ax                          ; 0x0c25
    mov ax, 0                        ; 0x0c26
    push ax                          ; 0x0c29
    mov ax, 0xf                      ; 0x0c2a
    push ax                          ; 0x0c2d
    mov ax, 0xe                      ; 0x0c2e
    push ax                          ; 0x0c31
    call loc_0a56                    ; 0x0c32
    add sp, byte 8                   ; 0x0c35
@..api_idx_0068.l10:
    call api_idx_0002_6              ; 0x0c38
    test ax, ax                      ; 0x0c3b
    jne short @..api_idx_0068.l11    ; 0x0c3d
    mov ax, 0                        ; 0x0c3f
    push ax                          ; 0x0c42
    push ax                          ; 0x0c43
    mov ax, 0x11                     ; 0x0c44
    push ax                          ; 0x0c47
    mov ax, 0x10                     ; 0x0c48
    push ax                          ; 0x0c4b
    call loc_0a56                    ; 0x0c4c
    add sp, byte 8                   ; 0x0c4f
@..api_idx_0068.l11:
    mov ax, 0xf                      ; 0x0c52
    push ax                          ; 0x0c55
    call ds_dispatch_c12a            ; 0x0c56
    pop cx                           ; 0x0c59
    call api_idx_0002_6              ; 0x0c5a
    test ax, ax                      ; 0x0c5d
    je short @..api_idx_0068.l12     ; 0x0c5f
    jmp near @..local.l50            ; 0x0c61
@..api_idx_0068.l12:
    mov ax, 0xf                      ; 0x0c64
    push ax                          ; 0x0c67
    mov ax, 0x3d                     ; 0x0c68
    push ax                          ; 0x0c6b
    call ds_dispatch_d61c            ; 0x0c6c
    add sp, byte 4                   ; 0x0c6f
    mov ax, 0x98                     ; 0x0c72
    push ax                          ; 0x0c75
    call api_idx_0004                ; 0x0c76
    pop cx                           ; 0x0c79
    call api_idx_0002_6              ; 0x0c7a
    test ax, ax                      ; 0x0c7d
    jne short @..api_idx_0068.l13    ; 0x0c7f
    mov ax, 0xa                      ; 0x0c81
    push ax                          ; 0x0c84
    mov ax, 3                        ; 0x0c85
    push ax                          ; 0x0c88
    mov ax, data_0002                ; 0x0c89
    push ax                          ; 0x0c8c
    mov ax, 1                        ; 0x0c8d
    push ax                          ; 0x0c90
    call loc_0a56                    ; 0x0c91
    add sp, byte 8                   ; 0x0c94
@..api_idx_0068.l13:
    call api_idx_0002_6              ; 0x0c97
    test ax, ax                      ; 0x0c9a
    jne short @..api_idx_0068.l14    ; 0x0c9c
    mov ax, 0xa                      ; 0x0c9e
    push ax                          ; 0x0ca1
    mov ax, 6                        ; 0x0ca2
    push ax                          ; 0x0ca5
    mov ax, 5                        ; 0x0ca6
    push ax                          ; 0x0ca9
    mov ax, 4                        ; 0x0caa
    push ax                          ; 0x0cad
    call loc_0a56                    ; 0x0cae
    add sp, byte 8                   ; 0x0cb1
@..api_idx_0068.l14:
    call api_idx_0002_6              ; 0x0cb4
    test ax, ax                      ; 0x0cb7
    jne short @..local.l46           ; 0x0cb9
    mov ax, 0                        ; 0x0cbb
    push ax                          ; 0x0cbe
    push ax                          ; 0x0cbf
    mov ax, 8                        ; 0x0cc0
    push ax                          ; 0x0cc3
    mov ax, 7                        ; 0x0cc4
    push ax                          ; 0x0cc7
    call loc_0a56                    ; 0x0cc8
    add sp, byte 8                   ; 0x0ccb
@..local.l46:
    mov ax, 0x90                     ; 0x0cce
    push ax                          ; 0x0cd1
    call api_idx_0004                ; 0x0cd2
    pop cx                           ; 0x0cd5
    call api_idx_0002_6              ; 0x0cd6
    test ax, ax                      ; 0x0cd9
    jne short @..local.l47           ; 0x0cdb
    mov ax, 0xa                      ; 0x0cdd
    push ax                          ; 0x0ce0
    mov ax, 0xb                      ; 0x0ce1
    push ax                          ; 0x0ce4
    mov ax, 0xa                      ; 0x0ce5
    push ax                          ; 0x0ce8
    mov ax, 9                        ; 0x0ce9
    push ax                          ; 0x0cec
    call loc_0a56                    ; 0x0ced
    add sp, byte 8                   ; 0x0cf0
@..local.l47:
    call api_idx_0002_6              ; 0x0cf3
    test ax, ax                      ; 0x0cf6
    jne short @..local.l48           ; 0x0cf8
    mov ax, 0xa                      ; 0x0cfa
    push ax                          ; 0x0cfd
    mov ax, 0xe                      ; 0x0cfe
    push ax                          ; 0x0d01
    mov ax, 0xd                      ; 0x0d02
    push ax                          ; 0x0d05
    mov ax, 0xc                      ; 0x0d06
    push ax                          ; 0x0d09
    call loc_0a56                    ; 0x0d0a
    add sp, byte 8                   ; 0x0d0d
@..local.l48:
    call api_idx_0002_6              ; 0x0d10
    test ax, ax                      ; 0x0d13
    jne short @..local.l49           ; 0x0d15
    mov ax, 0                        ; 0x0d17
    push ax                          ; 0x0d1a
    mov ax, 0x11                     ; 0x0d1b
    push ax                          ; 0x0d1e
    mov ax, 0x10                     ; 0x0d1f
    push ax                          ; 0x0d22
    mov ax, 0xf                      ; 0x0d23
    push ax                          ; 0x0d26
    call loc_0a56                    ; 0x0d27
    add sp, byte 8                   ; 0x0d2a
@..local.l49:
    mov ax, 5                        ; 0x0d2d
    push ax                          ; 0x0d30
    call api_idx_0004                ; 0x0d31
    pop cx                           ; 0x0d34
    mov ax, 0xf                      ; 0x0d35
    push ax                          ; 0x0d38
    call ds_dispatch_c12a            ; 0x0d39
    pop cx                           ; 0x0d3c
@..local.l50:
    call api_idx_0002_6              ; 0x0d3d
    test ax, ax                      ; 0x0d40
    je short @..local.l51            ; 0x0d42
    jmp near @..local.l58            ; 0x0d44
@..local.l51:
    mov ax, 0xf                      ; 0x0d47
    push ax                          ; 0x0d4a
    mov ax, 0x3e                     ; 0x0d4b
    push ax                          ; 0x0d4e
    call ds_dispatch_d61c            ; 0x0d4f
    add sp, byte 4                   ; 0x0d52
    call api_idx_0002_6              ; 0x0d55
    test ax, ax                      ; 0x0d58
    jne short @..local.l52           ; 0x0d5a
    mov ax, 0                        ; 0x0d5c
    push ax                          ; 0x0d5f
    mov ax, 0xc7                     ; 0x0d60
    push ax                          ; 0x0d63
    mov ax, 0x13f                    ; 0x0d64
    push ax                          ; 0x0d67
    mov ax, 0                        ; 0x0d68
    push ax                          ; 0x0d6b
    push ax                          ; 0x0d6c
    call ds_dispatch_e901            ; 0x0d6d
    add sp, byte 0x0a                ; 0x0d70
@..local.l52:
    call api_idx_0002_6              ; 0x0d73
    test ax, ax                      ; 0x0d76
    jne short @..local.l53           ; 0x0d78
    mov ax, 0                        ; 0x0d7a
    push ax                          ; 0x0d7d
    mov ax, 1                        ; 0x0d7e
    push ax                          ; 0x0d81
    call api_idx_000e                ; 0x0d82
    add sp, byte 4                   ; 0x0d85
@..local.l53:
    call api_idx_0002_6              ; 0x0d88
    test ax, ax                      ; 0x0d8b
    jne short @..local.l54           ; 0x0d8d
    mov ax, 0                        ; 0x0d8f
    push ax                          ; 0x0d92
    mov ax, data_0002                ; 0x0d93
    push ax                          ; 0x0d96
    call api_idx_000e                ; 0x0d97
    add sp, byte 4                   ; 0x0d9a
@..local.l54:
    call api_idx_0002_6              ; 0x0d9d
    test ax, ax                      ; 0x0da0
    jne short @..local.l55           ; 0x0da2
    mov ax, 0                        ; 0x0da4
    push ax                          ; 0x0da7
    mov ax, 3                        ; 0x0da8
    push ax                          ; 0x0dab
    call api_idx_000e                ; 0x0dac
    add sp, byte 4                   ; 0x0daf
@..local.l55:
    call api_idx_0002_6              ; 0x0db2
    test ax, ax                      ; 0x0db5
    jne short @..local.l56           ; 0x0db7
    mov ax, 0                        ; 0x0db9
    push ax                          ; 0x0dbc
    mov ax, 4                        ; 0x0dbd
    push ax                          ; 0x0dc0
    call api_idx_000e                ; 0x0dc1
    add sp, byte 4                   ; 0x0dc4
@..local.l56:
    call api_idx_0002_6              ; 0x0dc7
    test ax, ax                      ; 0x0dca
    jne short @..local.l57           ; 0x0dcc
    mov ax, 0xc7                     ; 0x0dce
    push ax                          ; 0x0dd1
    mov ax, 0x13f                    ; 0x0dd2
    push ax                          ; 0x0dd5
    mov ax, 0                        ; 0x0dd6
    push ax                          ; 0x0dd9
    push ax                          ; 0x0dda
    call ds_dispatch_e8da            ; 0x0ddb
    add sp, byte 8                   ; 0x0dde
@..local.l57:
    mov ax, 5                        ; 0x0de1
    push ax                          ; 0x0de4
    call api_idx_0004                ; 0x0de5
    pop cx                           ; 0x0de8
    mov ax, 0xf                      ; 0x0de9
    push ax                          ; 0x0dec
    call ds_dispatch_c12a            ; 0x0ded
    pop cx                           ; 0x0df0
@..local.l58:
    call api_idx_0002_6              ; 0x0df1
    test ax, ax                      ; 0x0df4
    jne short @..local.l59           ; 0x0df6
    mov ax, 1                        ; 0x0df8
    push ax                          ; 0x0dfb
    mov ax, 0x9187                   ; 0x0dfc
    push ax                          ; 0x0dff
    call api_idx_0002_5              ; 0x0e00
    add sp, byte 4                   ; 0x0e03
    mov ax, 5                        ; 0x0e06
    push ax                          ; 0x0e09
    call api_idx_0004                ; 0x0e0a
    pop cx                           ; 0x0e0d
@..local.l59:
    mov ax, 0                        ; 0x0e0e
    push ax                          ; 0x0e11
    mov ax, 0x9194                   ; 0x0e12
    push ax                          ; 0x0e15
    call api_idx_0002_5              ; 0x0e16
    add sp, byte 4                   ; 0x0e19
    mov ax, 0xf                      ; 0x0e1c
    push ax                          ; 0x0e1f
    mov ax, 0x3f                     ; 0x0e20
    push ax                          ; 0x0e23
    call ds_dispatch_d61c            ; 0x0e24
    add sp, byte 4                   ; 0x0e27
    call api_idx_0002_6              ; 0x0e2a
    test ax, ax                      ; 0x0e2d
    je short @..local.l60            ; 0x0e2f
    jmp near @..local.l62            ; 0x0e31
@..local.l60:
    mov ax, 0xc7                     ; 0x0e34
    push ax                          ; 0x0e37
    mov ax, 0x13f                    ; 0x0e38
    push ax                          ; 0x0e3b
    mov ax, 0                        ; 0x0e3c
    push ax                          ; 0x0e3f
    push ax                          ; 0x0e40
    call ds_dispatch_e8da            ; 0x0e41
    add sp, byte 8                   ; 0x0e44
    mov ax, 0xc                      ; 0x0e47
    push ax                          ; 0x0e4a
    call api_idx_0004                ; 0x0e4b
    pop cx                           ; 0x0e4e
    mov ax, 0                        ; 0x0e4f
    push ax                          ; 0x0e52
    mov ax, data_0002                ; 0x0e53
    push ax                          ; 0x0e56
    mov ax, 0x62                     ; 0x0e57
    push ax                          ; 0x0e5a
    mov ax, 0x110                    ; 0x0e5b
    push ax                          ; 0x0e5e
    mov ax, 0                        ; 0x0e5f
    push ax                          ; 0x0e62
    mov ax, 0x37                     ; 0x0e63
    push ax                          ; 0x0e66
    call ds_dispatch_e935            ; 0x0e67
    add sp, byte 0x0c                ; 0x0e6a
    mov word [bp - 0x000a], dx       ; 0x0e6d
    mov word [bp - 0x000c], ax       ; 0x0e70
    mov word [bp - 0x0002], 0x5f     ; 0x0e73
@..local.l61:
    mov ax, 0                        ; 0x0e78
    push ax                          ; 0x0e7b
    push ax                          ; 0x0e7c
    push word [bp - 0x000a]          ; 0x0e7d
    push word [bp - 0x000c]          ; 0x0e80
    call ds_dispatch_e942            ; 0x0e83
    add sp, byte 8                   ; 0x0e86
    push word [bp - 0x0002]          ; 0x0e89
    mov ax, 1                        ; 0x0e8c
    push ax                          ; 0x0e8f
    call api_idx_000e                ; 0x0e90
    add sp, byte 4                   ; 0x0e93
    mov ax, 0x62                     ; 0x0e96
    push ax                          ; 0x0e99
    mov ax, 0x110                    ; 0x0e9a
    push ax                          ; 0x0e9d
    mov ax, 9                        ; 0x0e9e
    push ax                          ; 0x0ea1
    mov ax, 0x37                     ; 0x0ea2
    push ax                          ; 0x0ea5
    call ds_dispatch_e8da            ; 0x0ea6
    add sp, byte 8                   ; 0x0ea9
    add word [bp - 0x0002], byte 0xfb ; 0x0eac
    cmp word [bp - 0x0002], byte 0   ; 0x0eb0
    jge short @..local.l61           ; 0x0eb4
    mov ax, 0                        ; 0x0eb6
    push ax                          ; 0x0eb9
    mov ax, 1                        ; 0x0eba
    push ax                          ; 0x0ebd
    push word [bp - 0x000a]          ; 0x0ebe
    push word [bp - 0x000c]          ; 0x0ec1
    call ds_dispatch_e942            ; 0x0ec4
    add sp, byte 8                   ; 0x0ec7
    jmp short @..local.l63           ; 0x0eca
@..local.l62:
    mov ax, 0                        ; 0x0ecc
    push ax                          ; 0x0ecf
    mov ax, 1                        ; 0x0ed0
    push ax                          ; 0x0ed3
    call api_idx_000e                ; 0x0ed4
    add sp, byte 4                   ; 0x0ed7
    mov ax, 0xc7                     ; 0x0eda
    push ax                          ; 0x0edd
    mov ax, 0x13f                    ; 0x0ede
    push ax                          ; 0x0ee1
    mov ax, 0                        ; 0x0ee2
    push ax                          ; 0x0ee5
    push ax                          ; 0x0ee6
    call ds_dispatch_e8da            ; 0x0ee7
    add sp, byte 8                   ; 0x0eea
@..local.l63:
    mov ax, 0xf                      ; 0x0eed
    push ax                          ; 0x0ef0
    call ds_dispatch_c12a            ; 0x0ef1
    pop cx                           ; 0x0ef4
    mov ax, 0                        ; 0x0ef5
    push ax                          ; 0x0ef8
    mov ax, data_0002                ; 0x0ef9
    push ax                          ; 0x0efc
    mov ax, 0xa2                     ; 0x0efd
    push ax                          ; 0x0f00
    mov ax, 0x13f                    ; 0x0f01
    push ax                          ; 0x0f04
    mov ax, 0x66                     ; 0x0f05
    push ax                          ; 0x0f08
    mov ax, 0                        ; 0x0f09
    push ax                          ; 0x0f0c
    call ds_dispatch_e935            ; 0x0f0d
    add sp, byte 0x0c                ; 0x0f10
    mov word [bp - 0x000a], dx       ; 0x0f13
    mov word [bp - 0x000c], ax       ; 0x0f16
    call api_idx_0002_6              ; 0x0f19
    mov ax, 0xb54                    ; 0x0f1c
    cmp word [data_91b8], byte 0     ; 0x0f1f
    je short @..local.l64            ; 0x0f24
    mov ax, 0xb69                    ; 0x0f26
@..local.l64:
    mov word [bp - 0x0060], ax       ; 0x0f29
    lea ax, word [bp - 0x005c]       ; 0x0f2c
    push ax                          ; 0x0f2f
    push word [bp - 0x0060]          ; 0x0f30
    call ds_dispatch_b53b            ; 0x0f33
    add sp, byte 4                   ; 0x0f36
    lea ax, word [bp - 0x005c]       ; 0x0f39
    mov word [bp - 0x005e], ax       ; 0x0f3c
    mov word [bp - 0x0002], 0        ; 0x0f3f
@..local.l65:
    mov ax, word [bp - 0x0002]       ; 0x0f44
    mov word [bp - 0x0066], ax       ; 0x0f47
    mov bx, word [bp - 0x005e]       ; 0x0f4a
    mov al, byte [bx]                ; 0x0f4d
    sub ah, ah                       ; 0x0f4f
    mov word [bp - 0x0002], ax       ; 0x0f51
    inc word [bp - 0x005e]           ; 0x0f54
    mov word [bp - 0x0004], 0        ; 0x0f57
    jmp near @..local.l77            ; 0x0f5c
@..local.l66:
    mov bx, word [bp - 0x005e]       ; 0x0f5f
    mov al, byte [bx]                ; 0x0f62
    sub ah, ah                       ; 0x0f64
    mov word [bp - 0x0062], ax       ; 0x0f66
    inc word [bp - 0x005e]           ; 0x0f69
    cmp ax, strict word 2            ; 0x0f6c
    je short @..local.l67            ; 0x0f6f
    jmp near @..local.l68            ; 0x0f71
@..local.l67:
    mov ax, data_0002                ; 0x0f74
    push ax                          ; 0x0f77
    push word [bp - 0x005e]          ; 0x0f78
    call ds_dispatch_e883            ; 0x0f7b
    add sp, byte 4                   ; 0x0f7e
    inc ax                           ; 0x0f81
    mov cx, data_0002                ; 0x0f82
    cwd                              ; 0x0f85
    idiv cx                          ; 0x0f86
    mov cx, ax                       ; 0x0f88
    mov ax, 0xa0                     ; 0x0f8a
    sub ax, cx                       ; 0x0f8d
    mov word [bp - 0x0064], ax       ; 0x0f8f
    mov ax, 0xc                      ; 0x0f92
    imul word [bp - 0x0004]          ; 0x0f95
    add ax, strict word 0x66         ; 0x0f98
    push ax                          ; 0x0f9b
    mov ax, word [bp - 0x0064]       ; 0x0f9c
    dec ax                           ; 0x0f9f
    push ax                          ; 0x0fa0
    call ds_dispatch_e809            ; 0x0fa1
    add sp, byte 4                   ; 0x0fa4
    mov ax, 0                        ; 0x0fa7
    push ax                          ; 0x0faa
    mov ax, 0xc                      ; 0x0fab
    push ax                          ; 0x0fae
    call ds_dispatch_e823            ; 0x0faf
    add sp, byte 4                   ; 0x0fb2
    mov ax, data_0002                ; 0x0fb5
    push ax                          ; 0x0fb8
    push word [bp - 0x005e]          ; 0x0fb9
    call ds_dispatch_e84e            ; 0x0fbc
    add sp, byte 4                   ; 0x0fbf
    mov ax, 0xc                      ; 0x0fc2
    imul word [bp - 0x0004]          ; 0x0fc5
    add ax, strict word 0x66         ; 0x0fc8
    push ax                          ; 0x0fcb
    mov ax, word [bp - 0x0064]       ; 0x0fcc
    inc ax                           ; 0x0fcf
    push ax                          ; 0x0fd0
    call ds_dispatch_e809            ; 0x0fd1
    add sp, byte 4                   ; 0x0fd4
    mov ax, 0                        ; 0x0fd7
    push ax                          ; 0x0fda
    mov ax, 0xc                      ; 0x0fdb
    push ax                          ; 0x0fde
    call ds_dispatch_e823            ; 0x0fdf
    add sp, byte 4                   ; 0x0fe2
    mov ax, data_0002                ; 0x0fe5
    push ax                          ; 0x0fe8
    push word [bp - 0x005e]          ; 0x0fe9
    call ds_dispatch_e84e            ; 0x0fec
    add sp, byte 4                   ; 0x0fef
    mov ax, 0xc                      ; 0x0ff2
    imul word [bp - 0x0004]          ; 0x0ff5
    add ax, strict word 0x67         ; 0x0ff8
    push ax                          ; 0x0ffb
    push word [bp - 0x0064]          ; 0x0ffc
    call ds_dispatch_e809            ; 0x0fff
    add sp, byte 4                   ; 0x1002
    mov ax, 0                        ; 0x1005
    push ax                          ; 0x1008
    mov ax, 0xc                      ; 0x1009
    push ax                          ; 0x100c
    call ds_dispatch_e823            ; 0x100d
    add sp, byte 4                   ; 0x1010
    mov ax, data_0002                ; 0x1013
    push ax                          ; 0x1016
    push word [bp - 0x005e]          ; 0x1017
    call ds_dispatch_e84e            ; 0x101a
    add sp, byte 4                   ; 0x101d
    mov ax, 0xc                      ; 0x1020
    imul word [bp - 0x0004]          ; 0x1023
    add ax, strict word 0x65         ; 0x1026
    push ax                          ; 0x1029
    push word [bp - 0x0064]          ; 0x102a
    call ds_dispatch_e809            ; 0x102d
    add sp, byte 4                   ; 0x1030
    mov ax, 0                        ; 0x1033
    push ax                          ; 0x1036
    mov ax, 0xc                      ; 0x1037
    push ax                          ; 0x103a
    call ds_dispatch_e823            ; 0x103b
    add sp, byte 4                   ; 0x103e
    mov ax, data_0002                ; 0x1041
    push ax                          ; 0x1044
    push word [bp - 0x005e]          ; 0x1045
    call ds_dispatch_e84e            ; 0x1048
    add sp, byte 4                   ; 0x104b
    mov ax, 0xc                      ; 0x104e
    imul word [bp - 0x0004]          ; 0x1051
    add ax, strict word 0x66         ; 0x1054
    push ax                          ; 0x1057
    push word [bp - 0x0064]          ; 0x1058
    call ds_dispatch_e809            ; 0x105b
    add sp, byte 4                   ; 0x105e
    mov ax, 0                        ; 0x1061
    push ax                          ; 0x1064
    mov ax, 1                        ; 0x1065
    push ax                          ; 0x1068
    call ds_dispatch_e823            ; 0x1069
    add sp, byte 4                   ; 0x106c
    mov ax, data_0002                ; 0x106f
    push ax                          ; 0x1072
    push word [bp - 0x005e]          ; 0x1073
    call ds_dispatch_e84e            ; 0x1076
    add sp, byte 4                   ; 0x1079
    jmp near @..local.l76            ; 0x107c
@..local.l68:
    cmp word [bp - 0x0062], byte 3   ; 0x107f
    jne short @..local.l69           ; 0x1083
    push word [bp - 0x005e]          ; 0x1085
    call ds_dispatch_fa90            ; 0x1088
    pop cx                           ; 0x108b
    mov cx, 6                        ; 0x108c
    imul cx                          ; 0x108f
    mov cx, data_0002                ; 0x1091
    cwd                              ; 0x1094
    idiv cx                          ; 0x1095
    mov cx, ax                       ; 0x1097
    mov ax, 0xa0                     ; 0x1099
    sub ax, cx                       ; 0x109c
    mov word [bp - 0x0064], ax       ; 0x109e
    mov word [bp - 0x0068], 0        ; 0x10a1
    jmp short @..local.l70           ; 0x10a6
@..local.l69:
    mov ax, data_0002                ; 0x10a8
    push ax                          ; 0x10ab
    push word [bp - 0x005e]          ; 0x10ac
    call ds_dispatch_e883            ; 0x10af
    add sp, byte 4                   ; 0x10b2
    inc ax                           ; 0x10b5
    mov cx, data_0002                ; 0x10b6
    cwd                              ; 0x10b9
    idiv cx                          ; 0x10ba
    mov cx, ax                       ; 0x10bc
    mov ax, 0xa0                     ; 0x10be
    sub ax, cx                       ; 0x10c1
    mov word [bp - 0x0064], ax       ; 0x10c3
    mov word [bp - 0x0068], data_0002 ; 0x10c6
@..local.l70:
    mov ax, 0xc                      ; 0x10cb
    imul word [bp - 0x0004]          ; 0x10ce
    add ax, strict word 0x66         ; 0x10d1
    push ax                          ; 0x10d4
    mov ax, word [bp - 0x0064]       ; 0x10d5
    dec ax                           ; 0x10d8
    push ax                          ; 0x10d9
    call ds_dispatch_e809            ; 0x10da
    add sp, byte 4                   ; 0x10dd
    mov ax, 0                        ; 0x10e0
    push ax                          ; 0x10e3
    cmp word [bp - 0x0062], byte 1   ; 0x10e4
    jne short @..local.l71           ; 0x10e8
    mov ax, 0x22                     ; 0x10ea
@..local.l71:
    push ax                          ; 0x10ed
    call ds_dispatch_e823            ; 0x10ee
    add sp, byte 4                   ; 0x10f1
    push word [bp - 0x0068]          ; 0x10f4
    push word [bp - 0x005e]          ; 0x10f7
    call ds_dispatch_e84e            ; 0x10fa
    add sp, byte 4                   ; 0x10fd
    mov ax, 0xc                      ; 0x1100
    imul word [bp - 0x0004]          ; 0x1103
    add ax, strict word 0x66         ; 0x1106
    push ax                          ; 0x1109
    mov ax, word [bp - 0x0064]       ; 0x110a
    inc ax                           ; 0x110d
    push ax                          ; 0x110e
    call ds_dispatch_e809            ; 0x110f
    add sp, byte 4                   ; 0x1112
    mov ax, 0                        ; 0x1115
    push ax                          ; 0x1118
    cmp word [bp - 0x0062], byte 1   ; 0x1119
    jne short @..local.l72           ; 0x111d
    mov ax, 0x22                     ; 0x111f
@..local.l72:
    push ax                          ; 0x1122
    call ds_dispatch_e823            ; 0x1123
    add sp, byte 4                   ; 0x1126
    push word [bp - 0x0068]          ; 0x1129
    push word [bp - 0x005e]          ; 0x112c
    call ds_dispatch_e84e            ; 0x112f
    add sp, byte 4                   ; 0x1132
    mov ax, 0xc                      ; 0x1135
    imul word [bp - 0x0004]          ; 0x1138
    add ax, strict word 0x67         ; 0x113b
    push ax                          ; 0x113e
    push word [bp - 0x0064]          ; 0x113f
    call ds_dispatch_e809            ; 0x1142
    add sp, byte 4                   ; 0x1145
    mov ax, 0                        ; 0x1148
    push ax                          ; 0x114b
    cmp word [bp - 0x0062], byte 1   ; 0x114c
    jne short @..local.l73           ; 0x1150
    mov ax, 0x22                     ; 0x1152
@..local.l73:
    push ax                          ; 0x1155
    call ds_dispatch_e823            ; 0x1156
    add sp, byte 4                   ; 0x1159
    push word [bp - 0x0068]          ; 0x115c
    push word [bp - 0x005e]          ; 0x115f
    call ds_dispatch_e84e            ; 0x1162
    add sp, byte 4                   ; 0x1165
    mov ax, 0xc                      ; 0x1168
    imul word [bp - 0x0004]          ; 0x116b
    add ax, strict word 0x65         ; 0x116e
    push ax                          ; 0x1171
    push word [bp - 0x0064]          ; 0x1172
    call ds_dispatch_e809            ; 0x1175
    add sp, byte 4                   ; 0x1178
    mov ax, 0                        ; 0x117b
    push ax                          ; 0x117e
    cmp word [bp - 0x0062], byte 1   ; 0x117f
    jne short @..local.l74           ; 0x1183
    mov ax, 0x22                     ; 0x1185
@..local.l74:
    push ax                          ; 0x1188
    call ds_dispatch_e823            ; 0x1189
    add sp, byte 4                   ; 0x118c
    push word [bp - 0x0068]          ; 0x118f
    push word [bp - 0x005e]          ; 0x1192
    call ds_dispatch_e84e            ; 0x1195
    add sp, byte 4                   ; 0x1198
    mov ax, 0xc                      ; 0x119b
    imul word [bp - 0x0004]          ; 0x119e
    add ax, strict word 0x66         ; 0x11a1
    push ax                          ; 0x11a4
    push word [bp - 0x0064]          ; 0x11a5
    call ds_dispatch_e809            ; 0x11a8
    add sp, byte 4                   ; 0x11ab
    mov ax, 0                        ; 0x11ae
    push ax                          ; 0x11b1
    mov ax, 0x55                     ; 0x11b2
    cmp word [bp - 0x0062], byte 1   ; 0x11b5
    jne short @..local.l75           ; 0x11b9
    mov ax, 0x16                     ; 0x11bb
@..local.l75:
    push ax                          ; 0x11be
    call ds_dispatch_e823            ; 0x11bf
    add sp, byte 4                   ; 0x11c2
    push word [bp - 0x0068]          ; 0x11c5
    push word [bp - 0x005e]          ; 0x11c8
    call ds_dispatch_e84e            ; 0x11cb
    add sp, byte 4                   ; 0x11ce
@..local.l76:
    inc word [bp - 0x0060]           ; 0x11d1
    lea ax, word [bp - 0x005c]       ; 0x11d4
    push ax                          ; 0x11d7
    push word [bp - 0x0060]          ; 0x11d8
    call ds_dispatch_b53b            ; 0x11db
    add sp, byte 4                   ; 0x11de
    lea ax, word [bp - 0x005c]       ; 0x11e1
    mov word [bp - 0x005e], ax       ; 0x11e4
    inc word [bp - 0x0004]           ; 0x11e7
@..local.l77:
    mov ax, word [bp - 0x0004]       ; 0x11ea
    cmp ax, word [bp - 0x0002]       ; 0x11ed
    jge short @..local.l78           ; 0x11f0
    jmp near @..local.l66            ; 0x11f2
@..local.l78:
    mov ax, 0                        ; 0x11f5
    push ax                          ; 0x11f8
    mov ax, word [bp - 0x0002]       ; 0x11f9
    cmp ax, word [bp - 0x0066]       ; 0x11fc
    jle short @..local.l79           ; 0x11ff
    mov cx, 0xc                      ; 0x1201
    imul cx                          ; 0x1204
    jmp short @..local.l80           ; 0x1206
@..local.l79:
    mov ax, 0xc                      ; 0x1208
    imul word [bp - 0x0066]          ; 0x120b
@..local.l80:
    add ax, strict word 0x66         ; 0x120e
    push ax                          ; 0x1211
    mov ax, 0x10d                    ; 0x1212
    push ax                          ; 0x1215
    mov ax, 0x66                     ; 0x1216
    push ax                          ; 0x1219
    mov ax, 0x32                     ; 0x121a
    push ax                          ; 0x121d
    call ds_dispatch_f005            ; 0x121e
    add sp, byte 0x0a                ; 0x1221
    mov ax, 0x10                     ; 0x1224
    push ax                          ; 0x1227
    call api_idx_0004                ; 0x1228
    pop cx                           ; 0x122b
    mov ax, 0                        ; 0x122c
    push ax                          ; 0x122f
    push ax                          ; 0x1230
    push word [bp - 0x000a]          ; 0x1231
    push word [bp - 0x000c]          ; 0x1234
    call ds_dispatch_e942            ; 0x1237
    add sp, byte 8                   ; 0x123a
    call api_idx_0002_6              ; 0x123d
    test ax, ax                      ; 0x1240
    je short @..local.l81            ; 0x1242
    cmp word [bp - 0x0060], strict word 0xb69 ; 0x1244
    jge short @..local.l81           ; 0x1249
    mov word [bp - 0x0060], 0xb69    ; 0x124b
    lea ax, word [bp - 0x005c]       ; 0x1250
    push ax                          ; 0x1253
    push word [bp - 0x0060]          ; 0x1254
    call ds_dispatch_b53b            ; 0x1257
    add sp, byte 4                   ; 0x125a
    lea ax, word [bp - 0x005c]       ; 0x125d
    mov word [bp - 0x005e], ax       ; 0x1260
@..local.l81:
    cmp word [data_5216], byte 0     ; 0x1263
    jne short @..local.l82           ; 0x1268
    jmp near @..local.l65            ; 0x126a
@..local.l82:
    call api_idx_0002_6              ; 0x126d
    test ax, ax                      ; 0x1270
    je short @..local.l83            ; 0x1272
    mov word [data_91b8], 0xffff     ; 0x1274
@..local.l83:
    mov ax, 0x32                     ; 0x127a
    push ax                          ; 0x127d
    call api_idx_0004                ; 0x127e
    pop cx                           ; 0x1281
    mov ax, 0                        ; 0x1282
    push ax                          ; 0x1285
    mov ax, 1                        ; 0x1286
    push ax                          ; 0x1289
    push word [bp - 0x000a]          ; 0x128a
    push word [bp - 0x000c]          ; 0x128d
    call ds_dispatch_e942            ; 0x1290
    add sp, byte 8                   ; 0x1293
    cmp word [data_8450], byte 0     ; 0x1296
    je short @..local.l86            ; 0x129b
    cmp word [data_91b8], byte 0     ; 0x129d
    jne short @..local.l85           ; 0x12a2
@..local.l84:
    call ds_dispatch_ef83            ; 0x12a4
    test ax, ax                      ; 0x12a7
    je short @..local.l85            ; 0x12a9
    jmp short @..local.l84           ; 0x12ab
@..local.l85:
    push word [data_844c]            ; 0x12ad
    push word [data_844e]            ; 0x12b1
    call ds_dispatch_d91b            ; 0x12b5
    add sp, byte 4                   ; 0x12b8
    mov ax, 0                        ; 0x12bb
    push ax                          ; 0x12be
    call ds_dispatch_d907            ; 0x12bf
    pop cx                           ; 0x12c2
    jmp short @..local.l87           ; 0x12c3
@..local.l86:
    call ds_dispatch_baef            ; 0x12c5
    test ax, ax                      ; 0x12c8
    jne short @..local.l87           ; 0x12ca
    jmp short @..local.l86           ; 0x12cc
@..local.l87:
    call ds_dispatch_ec17            ; 0x12ce
    mov ax, 0                        ; 0x12d1
    push ax                          ; 0x12d4
    push ax                          ; 0x12d5
    push ax                          ; 0x12d6
    push ax                          ; 0x12d7
    call ds_dispatch_f0ca            ; 0x12d8
    add sp, byte 8                   ; 0x12db
    mov ax, 0                        ; 0x12de
    push ax                          ; 0x12e1
    mov ax, 0xc7                     ; 0x12e2
    push ax                          ; 0x12e5
    mov ax, 0x13f                    ; 0x12e6
    push ax                          ; 0x12e9
    mov ax, 0                        ; 0x12ea
    push ax                          ; 0x12ed
    push ax                          ; 0x12ee
    call ds_dispatch_e901            ; 0x12ef
    add sp, byte 0x0a                ; 0x12f2
    mov ax, 0xc7                     ; 0x12f5
    push ax                          ; 0x12f8
    mov ax, 0x13f                    ; 0x12f9
    push ax                          ; 0x12fc
    mov ax, 0                        ; 0x12fd
    push ax                          ; 0x1300
    push ax                          ; 0x1301
    call ds_dispatch_e8da            ; 0x1302
    add sp, byte 8                   ; 0x1305
    mov ax, 1                        ; 0x1308
    push ax                          ; 0x130b
    call ds_dispatch_ef14            ; 0x130c
    pop cx                           ; 0x130f
    test word [data_9056], 0x1000    ; 0x1310
    je short @..local.l88            ; 0x1316
    cmp byte [data_5989], 1          ; 0x1318
    jne short @..local.l88           ; 0x131d
    call ds_dispatch_f02c            ; 0x131f
    mov word [data_0e32], 1          ; 0x1322
    jmp short @..local.l89           ; 0x1328
@..local.l88:
    mov word [data_0e32], 0          ; 0x132a
@..local.l89:
    mov word [data_5b3e], 0          ; 0x1330
    mov word [data_830a], data_0002  ; 0x1336
    ret                              ; 0x133c
api_idx_0002_7:
    mov ax, 0xfffe                   ; 0x133d
    call ds_dispatch_f40b            ; 0x1340
    cmp word [data_906a], byte 0     ; 0x1343
    je short @..api_idx_0002_7.l1    ; 0x1348
    mov ax, 1                        ; 0x134a
    push ax                          ; 0x134d
    push word [data_9068]            ; 0x134e
    call ds_dispatch_c459            ; 0x1352
    add sp, byte 4                   ; 0x1355
    mov word [data_906a], 0          ; 0x1358
@..api_idx_0002_7.l1:
    mov ax, 1                        ; 0x135e
    push ax                          ; 0x1361
    push word [data_8d08]            ; 0x1362
    push word [data_8d06]            ; 0x1366
    call ds_dispatch_e94f            ; 0x136a
    add sp, byte 6                   ; 0x136d
    mov word [data_69c8], 0          ; 0x1370
    mov word [bp - 0x0002], 0        ; 0x1376
@..api_idx_0002_7.l2:
    mov ax, 1                        ; 0x137b
    push ax                          ; 0x137e
    mov ax, word [bp - 0x0002]       ; 0x137f
    shl ax, 1                        ; 0x1382
    shl ax, 1                        ; 0x1384
    mov bx, ax                       ; 0x1386
    push word [bx + 0x69a6]          ; 0x1388
    push word [bx + 0x69a4]          ; 0x138c
    call ds_dispatch_e94f            ; 0x1390
    add sp, byte 6                   ; 0x1393
    inc word [bp - 0x0002]           ; 0x1396
    mov ax, word [bp - 0x0002]       ; 0x1399
    cmp ax, strict word 6            ; 0x139c
    jl short @..api_idx_0002_7.l2    ; 0x139f
    mov word [bp - 0x0002], 0        ; 0x13a1
@..api_idx_0002_7.l3:
    mov ax, 1                        ; 0x13a6
    push ax                          ; 0x13a9
    mov ax, word [bp - 0x0002]       ; 0x13aa
    shl ax, 1                        ; 0x13ad
    shl ax, 1                        ; 0x13af
    mov bx, ax                       ; 0x13b1
    push word [bx - 0x7d2e]          ; 0x13b3
    push word [bx - 0x7d30]          ; 0x13b7
    call ds_dispatch_e94f            ; 0x13bb
    add sp, byte 6                   ; 0x13be
    inc word [bp - 0x0002]           ; 0x13c1
    mov ax, word [bp - 0x0002]       ; 0x13c4
    cmp ax, strict word 6            ; 0x13c7
    jl short @..api_idx_0002_7.l3    ; 0x13ca
    call ds_dispatch_c145            ; 0x13cc
    mov ax, 0                        ; 0x13cf
    push ax                          ; 0x13d2
    call ds_dispatch_c12a            ; 0x13d3
    pop cx                           ; 0x13d6
    mov ax, 3                        ; 0x13d7
    push ax                          ; 0x13da
    call ds_dispatch_c12a            ; 0x13db
    pop cx                           ; 0x13de
    mov ax, 4                        ; 0x13df
    push ax                          ; 0x13e2
    call ds_dispatch_c12a            ; 0x13e3
    pop cx                           ; 0x13e6
    mov ax, 6                        ; 0x13e7
    push ax                          ; 0x13ea
    call ds_dispatch_c12a            ; 0x13eb
    pop cx                           ; 0x13ee
    mov ax, 8                        ; 0x13ef
    push ax                          ; 0x13f2
    call ds_dispatch_c12a            ; 0x13f3
    pop cx                           ; 0x13f6
    mov ax, 0xe                      ; 0x13f7
    push ax                          ; 0x13fa
    call ds_dispatch_c12a            ; 0x13fb
    pop cx                           ; 0x13fe
    mov word [data_830a], data_0002  ; 0x13ff
    call ds_dispatch_ec17            ; 0x1405
    ret                              ; 0x1408
api_idx_0008:
    mov ax, 0xfff8                   ; 0x1409
    call ds_dispatch_f40b            ; 0x140c
    mov ax, 0                        ; 0x140f
    push ax                          ; 0x1412
    call ds_dispatch_f096            ; 0x1413
    pop cx                           ; 0x1416
    mov ax, 0                        ; 0x1417
    push ax                          ; 0x141a
    mov ax, 1                        ; 0x141b
    push ax                          ; 0x141e
    call ds_dispatch_e823            ; 0x141f
    add sp, byte 4                   ; 0x1422
    mov ax, 0                        ; 0x1425
    push ax                          ; 0x1428
    push ax                          ; 0x1429
    call ds_dispatch_e809            ; 0x142a
    add sp, byte 4                   ; 0x142d
    mov word [bp - 0x0004], 0        ; 0x1430
@..api_idx_0008.l1:
    mov bx, word [bp - 0x0004]       ; 0x1435
    mov byte [bx + 0x5b48], 0xff     ; 0x1438
    mov byte [bx + 0x5b5a], 0        ; 0x143d
    inc word [bp - 0x0004]           ; 0x1442
    mov ax, word [bp - 0x0004]       ; 0x1445
    cmp ax, strict word 0x12         ; 0x1448
    jl short @..api_idx_0008.l1      ; 0x144b
    mov word [data_906a], 0          ; 0x144d
    mov word [data_5b70], 0          ; 0x1453
    mov word [data_5b6e], 0          ; 0x1459
    mov word [data_5b6c], 0xffff     ; 0x145f
    mov ax, 0                        ; 0x1465
    push ax                          ; 0x1468
    mov ax, 1                        ; 0x1469
    push ax                          ; 0x146c
    call ds_dispatch_d61c            ; 0x146d
    add sp, byte 4                   ; 0x1470
    mov ax, 3                        ; 0x1473
    push ax                          ; 0x1476
    mov ax, 4                        ; 0x1477
    push ax                          ; 0x147a
    call ds_dispatch_d61c            ; 0x147b
    add sp, byte 4                   ; 0x147e
    mov ax, 4                        ; 0x1481
    push ax                          ; 0x1484
    mov ax, 5                        ; 0x1485
    push ax                          ; 0x1488
    call ds_dispatch_d61c            ; 0x1489
    add sp, byte 4                   ; 0x148c
    mov ax, 6                        ; 0x148f
    push ax                          ; 0x1492
    mov ax, 7                        ; 0x1493
    push ax                          ; 0x1496
    call ds_dispatch_d61c            ; 0x1497
    add sp, byte 4                   ; 0x149a
    mov ax, 8                        ; 0x149d
    push ax                          ; 0x14a0
    mov ax, 0xc                      ; 0x14a1
    push ax                          ; 0x14a4
    call ds_dispatch_d61c            ; 0x14a5
    add sp, byte 4                   ; 0x14a8
    mov ax, 0xe                      ; 0x14ab
    push ax                          ; 0x14ae
    mov ax, 0                        ; 0x14af
    push ax                          ; 0x14b2
    call ds_dispatch_d61c            ; 0x14b3
    add sp, byte 4                   ; 0x14b6
    cmp word [data_904c], byte 0     ; 0x14b9
    jne short @..api_idx_0008.l2     ; 0x14be
    call ds_dispatch_b890            ; 0x14c0
@..api_idx_0008.l2:
    mov ax, data_0002                ; 0x14c3
    push ax                          ; 0x14c6
    mov ax, 0x91a1                   ; 0x14c7
    push ax                          ; 0x14ca
    call api_idx_0002_5              ; 0x14cb
    add sp, byte 4                   ; 0x14ce
    mov word [bp - 0x0002], 0        ; 0x14d1
@..api_idx_0008.l3:
    mov ax, word [bp - 0x0002]       ; 0x14d6
    mov cx, 3                        ; 0x14d9
    cwd                              ; 0x14dc
    idiv cx                          ; 0x14dd
    mov cx, 0x28                     ; 0x14df
    imul cx                          ; 0x14e2
    push ax                          ; 0x14e4
    mov ax, 0x19                     ; 0x14e5
    imul word [bp - 0x0002]          ; 0x14e8
    mov cx, ax                       ; 0x14eb
    pop ax                           ; 0x14ed
    add ax, cx                       ; 0x14ee
    add ax, strict word 0x44         ; 0x14f0
    mov word [bp - 0x0006], ax       ; 0x14f3
    mov word [bp - 0x0008], 6        ; 0x14f6
    mov ax, word [bp - 0x0008]       ; 0x14fb
    add ax, strict word 0xe          ; 0x14fe
    push ax                          ; 0x1501
    mov ax, word [bp - 0x0006]       ; 0x1502
    add ax, strict word 0x11         ; 0x1505
    push ax                          ; 0x1508
    push word [bp - 0x0008]          ; 0x1509
    push word [bp - 0x0006]          ; 0x150c
    call ds_dispatch_e928            ; 0x150f
    add sp, byte 8                   ; 0x1512
    mov cx, word [bp - 0x0002]       ; 0x1515
    shl cx, 1                        ; 0x1518
    shl cx, 1                        ; 0x151a
    mov bx, cx                       ; 0x151c
    mov word [bx - 0x7d2e], dx       ; 0x151e
    mov word [bx - 0x7d30], ax       ; 0x1522
    inc word [bp - 0x0002]           ; 0x1526
    mov ax, word [bp - 0x0002]       ; 0x1529
    cmp ax, strict word 6            ; 0x152c
    jl short @..api_idx_0008.l3      ; 0x152f
    mov word [data_5212], 0xffff     ; 0x1531
    mov word [data_69c8], 0          ; 0x1537
    mov word [bp - 0x0002], 0        ; 0x153d
@..api_idx_0008.l4:
    mov ax, word [bp - 0x0002]       ; 0x1542
    shl ax, 1                        ; 0x1545
    mov bx, ax                       ; 0x1547
    mov word [bx - 0x750e], 0xffff   ; 0x1549
    mov ax, word [bp - 0x0002]       ; 0x154f
    mov cx, data_0002                ; 0x1552
    cwd                              ; 0x1555
    idiv cx                          ; 0x1556
    mov ax, dx                       ; 0x1558
    mov cx, 0xfc                     ; 0x155a
    imul cx                          ; 0x155d
    add ax, strict word 5            ; 0x155f
    mov word [bp - 0x0006], ax       ; 0x1562
    mov ax, word [bp - 0x0002]       ; 0x1565
    mov cx, data_0002                ; 0x1568
    cwd                              ; 0x156b
    idiv cx                          ; 0x156c
    mov cx, 0x2d                     ; 0x156e
    imul cx                          ; 0x1571
    add ax, strict word 0x12         ; 0x1573
    mov word [bp - 0x0008], ax       ; 0x1576
    mov ax, word [bp - 0x0008]       ; 0x1579
    add ax, strict word 0x2b         ; 0x157c
    push ax                          ; 0x157f
    mov ax, word [bp - 0x0006]       ; 0x1580
    add ax, strict word 0x3b         ; 0x1583
    push ax                          ; 0x1586
    push word [bp - 0x0008]          ; 0x1587
    push word [bp - 0x0006]          ; 0x158a
    call ds_dispatch_e928            ; 0x158d
    add sp, byte 8                   ; 0x1590
    mov cx, word [bp - 0x0002]       ; 0x1593
    shl cx, 1                        ; 0x1596
    shl cx, 1                        ; 0x1598
    mov bx, cx                       ; 0x159a
    mov word [bx + 0x69a6], dx       ; 0x159c
    mov word [bx + 0x69a4], ax       ; 0x15a0
    inc word [bp - 0x0002]           ; 0x15a4
    mov ax, word [bp - 0x0002]       ; 0x15a7
    cmp ax, strict word 6            ; 0x15aa
    jl short @..api_idx_0008.l4      ; 0x15ad
    mov ax, 0xc4                     ; 0x15af
    push ax                          ; 0x15b2
    mov ax, 0x13c                    ; 0x15b3
    push ax                          ; 0x15b6
    mov ax, 0xb9                     ; 0x15b7
    push ax                          ; 0x15ba
    mov ax, 0x131                    ; 0x15bb
    push ax                          ; 0x15be
    call ds_dispatch_e928            ; 0x15bf
    add sp, byte 8                   ; 0x15c2
    mov word [data_8d08], dx         ; 0x15c5
    mov word [data_8d06], ax         ; 0x15c9
    mov word [data_0e36], 0          ; 0x15cc
    mov word [data_830a], 4          ; 0x15d2
    ret                              ; 0x15d8

    db 0x8f, 0x06, 0xb6, 0x91, 0x59, 0x89, 0x26, 0xb2, 0x91, 0x89, 0x2e, 0xb4, 0x91, 0x89, 0x36, 0xae
    db 0x91, 0x89, 0x3e, 0xb0, 0x91, 0xfc, 0xbf, 0xb8, 0x91, 0xb9, 0xba, 0x91, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x0c, 0xea, 0x8b, 0x2e, 0xb4, 0x91, 0x8b, 0x26, 0xb2
    db 0x91, 0x8b, 0x36, 0xae, 0x91, 0x8b, 0x3e, 0xb0, 0x91, 0x51, 0xff, 0x26, 0xb6, 0x91
    db 'SCENARIO.HDR', 0
    db 'VBFONT0.VGA', 0
    db 'VBFONT1.VGA', 0
    db 'VBFONT2.VGA', 0
    db 'VBFONT3.VGA', 0
    db 'VCFONT1.VGA', 0
    db 'VCPORT0.VGA', 0
    db 'VCFONT2.VGA', 0
    db 'VCFONT3.VGA', 0
    db 'VMPNTR0.VGA', 0
    db 'VMPNTR1.VGA', 0
    db 'VMPNTR2.VGA', 0
    db 'BASEDATA.VGA', 0
    db 'MASTER.HDR', 0
    db 'DISK.HDR', 0
    db 'MSG.HDR', 0
    db 'PCFILE.DBS', 0
    db 'MISC.HDR', 0
    db 'MSG.DBS', 0
    db 'SCENARIO.DBS', 0
    db 'PALETTE.DEF', 0
    db 'TIT1SCRN.VGA', 0
    db 'TIT2SCRN.VGA', 0
    db 'MAINSCRN.VGA', 0
    times 10 db 0

