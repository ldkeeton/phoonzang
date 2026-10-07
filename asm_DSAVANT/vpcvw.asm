%include "structs/structs.inc"
%include "structs/loc_522f.inc"
org 0
bits 16
%include "labels/vpcvw_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x36, 0x98, 0x98, 0x90

data_0002 equ 0x0002
data_0024 equ 0x0024
data_0038 equ 0x0038
data_003c equ 0x003c
data_0040 equ 0x0040
data_0042 equ 0x0042
data_0044 equ 0x0044
data_005d equ 0x005d
data_008a equ 0x008a
data_0104 equ 0x0104
data_0110 equ 0x0110
data_05e4 equ 0x05e4
data_0e0e equ 0x0e0e
data_0e1e equ 0x0e1e
data_0e20 equ 0x0e20
data_0e26 equ 0x0e26
data_0e28 equ 0x0e28
data_0e2e equ 0x0e2e
data_0e30 equ 0x0e30
data_0e32 equ 0x0e32
data_0f00 equ 0x0f00
data_3300 equ 0x3300
data_3700 equ 0x3700
data_4941 equ 0x4941
data_5000 equ 0x5000
data_5216 equ 0x5216
data_5218 equ 0x5218
loc_522f equ 0x522f
data_5910 equ 0x5910
data_5987 equ 0x5987
data_59fa equ 0x59fa
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_5c1a equ 0x5c1a
data_69c8 equ 0x69c8
data_7501 equ 0x7501
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
data_833d equ 0x833d
data_8374 equ 0x8374
data_838d equ 0x838d
data_83fc equ 0x83fc
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8aee equ 0x8aee
data_8af0 equ 0x8af0
data_8f20 equ 0x8f20
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_905a equ 0x905a
data_905e equ 0x905e
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_939c equ 0x939c
data_93ee equ 0x93ee
data_93f0 equ 0x93f0
data_93f2 equ 0x93f2
data_93f4 equ 0x93f4
data_93f6 equ 0x93f6
data_93f8 equ 0x93f8
data_93fa equ 0x93fa
data_93fc equ 0x93fc
data_93fe equ 0x93fe
data_9400 equ 0x9400
data_9402 equ 0x9402
data_9404 equ 0x9404
data_940a equ 0x940a
data_940c equ 0x940c
data_940e equ 0x940e
data_9410 equ 0x9410
data_9412 equ 0x9412
data_942a equ 0x942a
data_942c equ 0x942c
data_942e equ 0x942e
data_9430 equ 0x9430
data_9432 equ 0x9432
data_9562 equ 0x9562
data_9564 equ 0x9564
data_9566 equ 0x9566
data_9568 equ 0x9568
data_956a equ 0x956a
data_95ea equ 0x95ea
data_9614 equ 0x9614
data_967a equ 0x967a
data_96d0 equ 0x96d0

    db 0x48, 0x03, 0x10, 0x03, 0x35, 0xe8
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [data_830a], byte 0x11  ; 0x0014
    jne short @..local.l1            ; 0x0019
    push word [data_8af0]            ; 0x001b
    call api_idx_0014                ; 0x001f
    pop cx                           ; 0x0022
@..local.l1:
    mov ax, 0                        ; 0x0023
    ret                              ; 0x0026
api_idx_0002:
    mov ax, 0xfffe                   ; 0x0027
    call ds_dispatch_f40b            ; 0x002a
    mov ax, 0                        ; 0x002d
    push ax                          ; 0x0030
    call ds_dispatch_ef14            ; 0x0031
    pop cx                           ; 0x0034
    mov ax, 0                        ; 0x0035
    push ax                          ; 0x0038
    mov ax, 1                        ; 0x0039
    push ax                          ; 0x003c
    push word [bp + 0x4]             ; 0x003d
    call ds_dispatch_d161            ; 0x0040
    add sp, byte 4                   ; 0x0043
    push ax                          ; 0x0046
    call ds_dispatch_f909            ; 0x0047
    add sp, byte 4                   ; 0x004a
    mov word [bp - 0x0002], ax       ; 0x004d
    cmp ax, strict word 0xffff       ; 0x0050
    jne short @..api_idx_0002.l1     ; 0x0053
    mov ax, 0x1c                     ; 0x0055
    push ax                          ; 0x0058
    call ds_dispatch_b171            ; 0x0059
    pop cx                           ; 0x005c
@..api_idx_0002.l1:
    mov ax, 0                        ; 0x005d
    push ax                          ; 0x0060
    push word [bp - 0x0002]          ; 0x0061
    call ds_dispatch_efde            ; 0x0064
    add sp, byte 4                   ; 0x0067
    push word [bp - 0x0002]          ; 0x006a
    call ds_dispatch_fda5            ; 0x006d
    pop cx                           ; 0x0070
    cmp word [bp + 0x6], byte 0      ; 0x0071
    je short @..api_idx_0002.l2      ; 0x0075
    mov ax, 0xc7                     ; 0x0077
    push ax                          ; 0x007a
    mov ax, 0x13f                    ; 0x007b
    push ax                          ; 0x007e
    mov ax, 0                        ; 0x007f
    push ax                          ; 0x0082
    push ax                          ; 0x0083
    call ds_dispatch_e8da            ; 0x0084
    add sp, byte 8                   ; 0x0087
@..api_idx_0002.l2:
    ret                              ; 0x008a
api_idx_000e:
    mov ax, 0xfff2                   ; 0x008b
    call ds_dispatch_f40b            ; 0x008e
    cmp word [data_8f20], byte 0     ; 0x0091
    jg short @..api_idx_000e.l1      ; 0x0096
    jmp near @..api_idx_000e.l8      ; 0x0098
@..api_idx_000e.l1:
    mov ax, word [data_82ee]         ; 0x009b
    mov cx, word [data_8f20]         ; 0x009e
    dec cx                           ; 0x00a2
    sub ax, cx                       ; 0x00a3
    add ax, strict word 6            ; 0x00a5
    mov cx, 4                        ; 0x00a8
    cwd                              ; 0x00ab
    idiv cx                          ; 0x00ac
    mov word [bp - 0x0002], dx       ; 0x00ae
    mov ax, dx                       ; 0x00b1
    jmp short @..api_idx_000e.l6     ; 0x00b3
@..api_idx_000e.l2:
    mov byte [bp - 0x000e], 1        ; 0x00b5
    mov byte [bp - 0x000d], data_0002 ; 0x00b9
    mov ax, 5                        ; 0x00bd
    cmp word [bp - 0x0002], byte 0   ; 0x00c0
    jne short @..api_idx_000e.l3     ; 0x00c4
    mov ax, 4                        ; 0x00c6
@..api_idx_000e.l3:
    mov byte [bp - 0x000c], al       ; 0x00c9
    mov byte [bp - 0x000b], 0        ; 0x00cc
    mov word [bp - 0x0004], 0        ; 0x00d0
    jmp short @..api_idx_000e.l7     ; 0x00d5
@..api_idx_000e.l4:
    mov byte [bp - 0x000e], 3        ; 0x00d7
    mov byte [bp - 0x000d], 0        ; 0x00db
    mov ax, 0                        ; 0x00df
    cmp word [bp - 0x0002], byte 3   ; 0x00e2
    jne short @..api_idx_000e.l5     ; 0x00e6
    mov ax, 1                        ; 0x00e8
@..api_idx_000e.l5:
    mov word [bp - 0x0004], ax       ; 0x00eb
    jmp short @..api_idx_000e.l7     ; 0x00ee
@..api_idx_000e.l6:
    cmp ax, strict word 0            ; 0x00f0
    je short @..api_idx_000e.l2      ; 0x00f3
    cmp ax, strict word 1            ; 0x00f5
    je short @..api_idx_000e.l4      ; 0x00f8
    cmp ax, strict word 2            ; 0x00fa
    je short @..api_idx_000e.l2      ; 0x00fd
    cmp ax, strict word 3            ; 0x00ff
    je short @..api_idx_000e.l4      ; 0x0102
@..api_idx_000e.l7:
    mov ax, 0                        ; 0x0104
    push ax                          ; 0x0107
    push ax                          ; 0x0108
    lea ax, word [bp - 0x000e]       ; 0x0109
    push ax                          ; 0x010c
    push word [bp - 0x0004]          ; 0x010d
    mov ax, 0x8f                     ; 0x0110
    push ax                          ; 0x0113
    mov ax, 0x21                     ; 0x0114
    push ax                          ; 0x0117
    mov ax, 0xf8                     ; 0x0118
    push ax                          ; 0x011b
    mov ax, 0x48                     ; 0x011c
    push ax                          ; 0x011f
    mov al, byte [bp - 0x000e]       ; 0x0120
    sub ah, ah                       ; 0x0123
    mov bx, ax                       ; 0x0125
    mov al, byte [bx + 0x6eb5]       ; 0x0127
    sub ah, ah                       ; 0x012b
    inc ax                           ; 0x012d
    push ax                          ; 0x012e
    shl bx, 1                        ; 0x012f
    mov ax, bx                       ; 0x0131
    add ax, word [bp - 0x0004]       ; 0x0133
    mov bx, ax                       ; 0x0136
    mov al, byte [bx + 0x6e6c]       ; 0x0138
    sub ah, ah                       ; 0x013c
    inc ax                           ; 0x013e
    push ax                          ; 0x013f
    mov ax, 3                        ; 0x0140
    push ax                          ; 0x0143
    call ds_dispatch_efd1            ; 0x0144
    add sp, byte 0x16                ; 0x0147
@..api_idx_000e.l8:
    ret                              ; 0x014a
api_idx_0012:
    mov ax, 0xffee                   ; 0x014b
    call ds_dispatch_f40b            ; 0x014e
    mov word [bp - 0x000e], 0        ; 0x0151
    mov word [bp - 0x000c], 0        ; 0x0156
    mov word [bp - 0x000a], 0        ; 0x015b
    mov ax, 0x248                    ; 0x0160
    imul word [bp + 0x4]             ; 0x0163
    mov bx, ax                       ; 0x0166
    mov al, byte [bx + 0x5e37]       ; 0x0168
    sub ah, ah                       ; 0x016c
    mov word [bp - 0x0008], ax       ; 0x016e
    mov al, byte [bx + 0x5e38]       ; 0x0171
    sub ah, ah                       ; 0x0175
    mov word [bp - 0x0006], ax       ; 0x0177
    mov word [bp - 0x0004], 0        ; 0x017a
    mov word [bp - 0x0002], 9        ; 0x017f
    mov ax, word [bx + 0x5c14]       ; 0x0184
    mov bx, 0x64                     ; 0x0188
    imul bx                          ; 0x018b
    push ax                          ; 0x018d
    push dx                          ; 0x018e
    mov ax, 0x248                    ; 0x018f
    imul word [bp + 0x4]             ; 0x0192
    mov bx, ax                       ; 0x0195
    mov ax, word [bx + 0x5c16]       ; 0x0197
    cwd                              ; 0x019b
    mov cx, ax                       ; 0x019c
    mov bx, dx                       ; 0x019e
    pop dx                           ; 0x01a0
    pop ax                           ; 0x01a1
    call ds_dispatch_f99f            ; 0x01a2
    mov word [bp - 0x0010], dx       ; 0x01a5
    mov word [bp - 0x0012], ax       ; 0x01a8
    cmp dx, byte 0                   ; 0x01ab
    jg short @..api_idx_0012.l1      ; 0x01ae
    jne short @..api_idx_0012.l2     ; 0x01b0
    cmp ax, strict word 0x32         ; 0x01b2
    jbe short @..api_idx_0012.l2     ; 0x01b5
@..api_idx_0012.l1:
    jmp short @..api_idx_0012.l3     ; 0x01b7
@..api_idx_0012.l2:
    jmp near @..api_idx_0012.l17     ; 0x01b9
@..api_idx_0012.l3:
    cmp dx, byte 0                   ; 0x01bc
    jg short @..api_idx_0012.l4      ; 0x01bf
    jne short @..api_idx_0012.l5     ; 0x01c1
    cmp ax, strict word 0x42         ; 0x01c3
    jbe short @..api_idx_0012.l5     ; 0x01c6
@..api_idx_0012.l4:
    jmp short @..api_idx_0012.l8     ; 0x01c8
@..api_idx_0012.l5:
    mov word [bp - 0x000c], 5        ; 0x01ca
    mov word [bp - 0x000a], 0xa      ; 0x01cf
    cmp word [bp - 0x0008], byte 3   ; 0x01d4
    jle short @..api_idx_0012.l6     ; 0x01d8
    mov word [bp - 0x0008], 3        ; 0x01da
@..api_idx_0012.l6:
    cmp word [bp - 0x0006], byte 3   ; 0x01df
    jle short @..api_idx_0012.l7     ; 0x01e3
    mov word [bp - 0x0006], 3        ; 0x01e5
@..api_idx_0012.l7:
    jmp near @..api_idx_0012.l17     ; 0x01ea
@..api_idx_0012.l8:
    cmp dx, byte 0                   ; 0x01ed
    jg short @..api_idx_0012.l9      ; 0x01f0
    jne short @..api_idx_0012.l10    ; 0x01f2
    cmp ax, strict word 0x4b         ; 0x01f4
    jbe short @..api_idx_0012.l10    ; 0x01f7
@..api_idx_0012.l9:
    jmp short @..api_idx_0012.l13    ; 0x01f9
@..api_idx_0012.l10:
    mov word [bp - 0x000e], 1        ; 0x01fb
    mov word [bp - 0x000c], 0xa      ; 0x0200
    mov word [bp - 0x000a], 0x14     ; 0x0205
    cmp word [bp - 0x0008], byte 2   ; 0x020a
    jle short @..api_idx_0012.l11    ; 0x020e
    mov word [bp - 0x0008], data_0002 ; 0x0210
@..api_idx_0012.l11:
    cmp word [bp - 0x0006], byte 2   ; 0x0215
    jle short @..api_idx_0012.l12    ; 0x0219
    mov word [bp - 0x0006], data_0002 ; 0x021b
@..api_idx_0012.l12:
    mov ax, 0x248                    ; 0x0220
    imul word [bp + 0x4]             ; 0x0223
    mov bx, ax                       ; 0x0226
    mov ax, word [bx + 0x5c12]       ; 0x0228
    mov cx, 0x64                     ; 0x022c
    cwd                              ; 0x022f
    idiv cx                          ; 0x0230
    mov word [bp - 0x0004], ax       ; 0x0232
    mov word [bp - 0x0002], 0x83     ; 0x0235
    jmp short @..api_idx_0012.l17    ; 0x023a
@..api_idx_0012.l13:
    cmp word [bp - 0x0010], byte 0   ; 0x023c
    jg short @..api_idx_0012.l14     ; 0x0240
    jne short @..api_idx_0012.l15    ; 0x0242
    cmp word [bp - 0x0012], byte 0x5a ; 0x0244
    jbe short @..api_idx_0012.l15    ; 0x0248
@..api_idx_0012.l14:
    jmp short @..api_idx_0012.l16    ; 0x024a
@..api_idx_0012.l15:
    mov word [bp - 0x000e], data_0002 ; 0x024c
    mov word [bp - 0x000c], 0x14     ; 0x0251
    mov word [bp - 0x000a], 0x28     ; 0x0256
    mov word [bp - 0x0008], 1        ; 0x025b
    mov word [bp - 0x0006], 1        ; 0x0260
    mov ax, 0x248                    ; 0x0265
    imul word [bp + 0x4]             ; 0x0268
    mov bx, ax                       ; 0x026b
    mov ax, word [bx + 0x5c12]       ; 0x026d
    mov cx, 0x32                     ; 0x0271
    cwd                              ; 0x0274
    idiv cx                          ; 0x0275
    mov word [bp - 0x0004], ax       ; 0x0277
    mov word [bp - 0x0002], 0x54     ; 0x027a
    jmp short @..api_idx_0012.l17    ; 0x027f
@..api_idx_0012.l16:
    mov word [bp - 0x000e], 4        ; 0x0281
    mov word [bp - 0x000c], 0x28     ; 0x0286
    mov word [bp - 0x000a], 0x50     ; 0x028b
    mov word [bp - 0x0008], 1        ; 0x0290
    mov word [bp - 0x0006], 1        ; 0x0295
    mov ax, 0x248                    ; 0x029a
    imul word [bp + 0x4]             ; 0x029d
    mov bx, ax                       ; 0x02a0
    mov ax, word [bx + 0x5c12]       ; 0x02a2
    mov cx, 0x19                     ; 0x02a6
    cwd                              ; 0x02a9
    idiv cx                          ; 0x02aa
    mov word [bp - 0x0004], ax       ; 0x02ac
    mov word [bp - 0x0002], 0x16     ; 0x02af
@..api_idx_0012.l17:
    lea si, word [bp - 0x000e]       ; 0x02b4
    mov di, 0x93e0                   ; 0x02b7
    mov cx, ds                       ; 0x02ba
    mov es, cx                       ; 0x02bc
    mov cx, 7                        ; 0x02be
    rep movsw                        ; 0x02c1
    mov ax, 0x93e0                   ; 0x02c3
    ret                              ; 0x02c6
api_idx_0004:
    mov ax, 0xfffc                   ; 0x02c7
    call ds_dispatch_f40b            ; 0x02ca
    mov ax, 0xc2                     ; 0x02cd
    push ax                          ; 0x02d0
    mov ax, 0x13f                    ; 0x02d1
    push ax                          ; 0x02d4
    mov ax, 0xbc                     ; 0x02d5
    push ax                          ; 0x02d8
    mov ax, 0                        ; 0x02d9
    push ax                          ; 0x02dc
    call ds_dispatch_e928            ; 0x02dd
    add sp, byte 8                   ; 0x02e0
    mov word [bp - 0x0002], dx       ; 0x02e3
    mov word [bp - 0x0004], ax       ; 0x02e6
    mov ax, 0xbc                     ; 0x02e9
    push ax                          ; 0x02ec
    push word [bp + 0x4]             ; 0x02ed
    call ds_dispatch_fa90            ; 0x02f0
    pop cx                           ; 0x02f3
    mov cx, 6                        ; 0x02f4
    imul cx                          ; 0x02f7
    mov cx, data_0002                ; 0x02f9
    cwd                              ; 0x02fc
    idiv cx                          ; 0x02fd
    mov cx, ax                       ; 0x02ff
    mov ax, 0xa0                     ; 0x0301
    sub ax, cx                       ; 0x0304
    push ax                          ; 0x0306
    call ds_dispatch_e809            ; 0x0307
    add sp, byte 4                   ; 0x030a
    mov ax, 0                        ; 0x030d
    push ax                          ; 0x0310
    mov ax, 0x55                     ; 0x0311
    push ax                          ; 0x0314
    call ds_dispatch_e823            ; 0x0315
    add sp, byte 4                   ; 0x0318
    mov ax, 0                        ; 0x031b
    push ax                          ; 0x031e
    push word [bp + 0x4]             ; 0x031f
    call ds_dispatch_e84e            ; 0x0322
    add sp, byte 4                   ; 0x0325
    mov ax, 0xc2                     ; 0x0328
    push ax                          ; 0x032b
    mov ax, 0x13f                    ; 0x032c
    push ax                          ; 0x032f
    mov ax, 0xbc                     ; 0x0330
    push ax                          ; 0x0333
    mov ax, 0                        ; 0x0334
    push ax                          ; 0x0337
    call ds_dispatch_e8da            ; 0x0338
    add sp, byte 8                   ; 0x033b
    cmp word [bp + 0x6], byte 0      ; 0x033e
    jle short @..api_idx_0004.l1     ; 0x0342
    mov ax, 0                        ; 0x0344
    push ax                          ; 0x0347
    call ds_dispatch_b7e0            ; 0x0348
    pop cx                           ; 0x034b
@..api_idx_0004.l1:
    push word [data_905a]            ; 0x034c
    call ds_dispatch_b75e            ; 0x0350
    pop cx                           ; 0x0353
    mov ax, 1                        ; 0x0354
    push ax                          ; 0x0357
    push word [bp - 0x0002]          ; 0x0358
    push word [bp - 0x0004]          ; 0x035b
    call ds_dispatch_e94f            ; 0x035e
    add sp, byte 6                   ; 0x0361
    mov ax, 0xc2                     ; 0x0364
    push ax                          ; 0x0367
    mov ax, 0x13f                    ; 0x0368
    push ax                          ; 0x036b
    mov ax, 0xbc                     ; 0x036c
    push ax                          ; 0x036f
    mov ax, 0                        ; 0x0370
    push ax                          ; 0x0373
    call ds_dispatch_e8da            ; 0x0374
    add sp, byte 8                   ; 0x0377
    ret                              ; 0x037a
api_idx_000c:
    mov ax, 0xfff4                   ; 0x037b
    call ds_dispatch_f40b            ; 0x037e
    mov ax, word [bp + 0x4]          ; 0x0381
    mov cx, 3                        ; 0x0384
    cwd                              ; 0x0387
    idiv cx                          ; 0x0388
    mov ax, dx                       ; 0x038a
    mov cx, 0x32                     ; 0x038c
    imul cx                          ; 0x038f
    add ax, strict word 4            ; 0x0391
    mov word [bp - 0x0006], ax       ; 0x0394
    mov ax, word [bp + 0x4]          ; 0x0397
    mov cx, 3                        ; 0x039a
    cwd                              ; 0x039d
    idiv cx                          ; 0x039e
    mov cx, api_idx_0002             ; 0x03a0
    imul cx                          ; 0x03a3
    add ax, strict word 0x70         ; 0x03a5
    mov word [bp - 0x0008], ax       ; 0x03a8
    push ax                          ; 0x03ab
    push word [bp - 0x0006]          ; 0x03ac
    call ds_dispatch_e809            ; 0x03af
    add sp, byte 4                   ; 0x03b2
    mov ax, 5                        ; 0x03b5
    push ax                          ; 0x03b8
    mov ax, word [bp + 0x4]          ; 0x03b9
    shl ax, 1                        ; 0x03bc
    mov bx, ax                       ; 0x03be
    mov al, byte [bx + 0x69bc]       ; 0x03c0
    sub ah, ah                       ; 0x03c4
    push ax                          ; 0x03c6
    call ds_dispatch_e830            ; 0x03c7
    add sp, byte 4                   ; 0x03ca
    cmp word [bp + 0x8], byte 0      ; 0x03cd
    je short @..api_idx_000c.l1      ; 0x03d1
    mov ax, 0x18                     ; 0x03d3
    push ax                          ; 0x03d6
    mov ax, word [bp - 0x0008]       ; 0x03d7
    add ax, strict word 0x24         ; 0x03da
    push ax                          ; 0x03dd
    mov ax, 0x248                    ; 0x03de
    imul word [bp + 0x4]             ; 0x03e1
    add ax, 0x5bf4                   ; 0x03e4
    push ax                          ; 0x03e7
    call ds_dispatch_fa90            ; 0x03e8
    pop cx                           ; 0x03eb
    mov cx, 6                        ; 0x03ec
    imul cx                          ; 0x03ef
    add ax, word [bp - 0x0006]       ; 0x03f1
    inc ax                           ; 0x03f4
    inc ax                           ; 0x03f5
    push ax                          ; 0x03f6
    mov ax, word [bp - 0x0008]       ; 0x03f7
    add ax, strict word 0x20         ; 0x03fa
    push ax                          ; 0x03fd
    mov ax, word [bp - 0x0006]       ; 0x03fe
    add ax, strict word 4            ; 0x0401
    push ax                          ; 0x0404
    call ds_dispatch_e901            ; 0x0405
    add sp, byte 0x0a                ; 0x0408
@..api_idx_000c.l1:
    mov ax, 0                        ; 0x040b
    push ax                          ; 0x040e
    mov ax, 1                        ; 0x040f
    push ax                          ; 0x0412
    call ds_dispatch_e823            ; 0x0413
    add sp, byte 4                   ; 0x0416
    mov ax, word [bp - 0x0008]       ; 0x0419
    add ax, strict word 0x20         ; 0x041c
    push ax                          ; 0x041f
    mov ax, word [bp - 0x0006]       ; 0x0420
    add ax, strict word 4            ; 0x0423
    push ax                          ; 0x0426
    call ds_dispatch_e809            ; 0x0427
    add sp, byte 4                   ; 0x042a
    mov ax, 0                        ; 0x042d
    push ax                          ; 0x0430
    mov ax, 0x248                    ; 0x0431
    imul word [bp + 0x4]             ; 0x0434
    add ax, 0x5bf4                   ; 0x0437
    push ax                          ; 0x043a
    call ds_dispatch_e84e            ; 0x043b
    add sp, byte 4                   ; 0x043e
    mov ax, 0x1b                     ; 0x0441
    push ax                          ; 0x0444
    mov ax, 0x248                    ; 0x0445
    imul word [bp + 0x4]             ; 0x0448
    mov bx, ax                       ; 0x044b
    push word [bx + 0x5c0e]          ; 0x044d
    push word [bx + 0x5c0c]          ; 0x0451
    mov ax, 0x16                     ; 0x0455
    push ax                          ; 0x0458
    mov ax, 3                        ; 0x0459
    push ax                          ; 0x045c
    mov ax, word [bp - 0x0008]       ; 0x045d
    add ax, strict word 7            ; 0x0460
    push ax                          ; 0x0463
    mov ax, word [bp - 0x0006]       ; 0x0464
    add ax, strict word 0x22         ; 0x0467
    push ax                          ; 0x046a
    call ds_dispatch_cab1            ; 0x046b
    add sp, byte 0x0e                ; 0x046e
    mov ax, 0x56                     ; 0x0471
    push ax                          ; 0x0474
    mov ax, 0x248                    ; 0x0475
    imul word [bp + 0x4]             ; 0x0478
    mov bx, ax                       ; 0x047b
    push word [bx + 0x5c12]          ; 0x047d
    push word [bx + 0x5c10]          ; 0x0481
    mov ax, 0x16                     ; 0x0485
    push ax                          ; 0x0488
    mov ax, 3                        ; 0x0489
    push ax                          ; 0x048c
    mov ax, word [bp - 0x0008]       ; 0x048d
    add ax, strict word 7            ; 0x0490
    push ax                          ; 0x0493
    mov ax, word [bp - 0x0006]       ; 0x0494
    add ax, strict word 0x26         ; 0x0497
    push ax                          ; 0x049a
    call ds_dispatch_cab1            ; 0x049b
    add sp, byte 0x0e                ; 0x049e
    mov word [bp - 0x000a], 0        ; 0x04a1
    mov word [bp - 0x000c], 0        ; 0x04a6
    mov word [bp - 0x0002], 0        ; 0x04ab
@..api_idx_000c.l2:
    mov ax, 0x248                    ; 0x04b0
    imul word [bp + 0x4]             ; 0x04b3
    mov cx, word [bp - 0x0002]       ; 0x04b6
    shl cx, 1                        ; 0x04b9
    shl cx, 1                        ; 0x04bb
    add ax, cx                       ; 0x04bd
    mov bx, ax                       ; 0x04bf
    mov ax, word [bx + 0x5c1c]       ; 0x04c1
    add word [bp - 0x000a], ax       ; 0x04c5
    mov ax, word [bx + 0x5c1e]       ; 0x04c8
    add word [bp - 0x000c], ax       ; 0x04cc
    inc word [bp - 0x0002]           ; 0x04cf
    mov ax, word [bp - 0x0002]       ; 0x04d2
    cmp ax, strict word 6            ; 0x04d5
    jl short @..api_idx_000c.l2      ; 0x04d8
    mov ax, 0x98                     ; 0x04da
    push ax                          ; 0x04dd
    push word [bp - 0x000c]          ; 0x04de
    push word [bp - 0x000a]          ; 0x04e1
    mov ax, 0x16                     ; 0x04e4
    push ax                          ; 0x04e7
    mov ax, 3                        ; 0x04e8
    push ax                          ; 0x04eb
    mov ax, word [bp - 0x0008]       ; 0x04ec
    add ax, strict word 7            ; 0x04ef
    push ax                          ; 0x04f2
    mov ax, word [bp - 0x0006]       ; 0x04f3
    add ax, strict word 0x2a         ; 0x04f6
    push ax                          ; 0x04f9
    call ds_dispatch_cab1            ; 0x04fa
    add sp, byte 0x0e                ; 0x04fd
    cmp word [bp + 0x6], byte 0      ; 0x0500
    je short @..api_idx_000c.l3      ; 0x0504
    mov ax, word [bp - 0x0008]       ; 0x0506
    add ax, strict word 0x26         ; 0x0509
    push ax                          ; 0x050c
    mov ax, word [bp - 0x0006]       ; 0x050d
    add ax, strict word 0x2e         ; 0x0510
    push ax                          ; 0x0513
    push word [bp - 0x0008]          ; 0x0514
    push word [bp - 0x0006]          ; 0x0517
    call ds_dispatch_e8da            ; 0x051a
    add sp, byte 8                   ; 0x051d
@..api_idx_000c.l3:
    ret                              ; 0x0520
api_idx_0012_2:
    mov ax, 0xffee                   ; 0x0521
    call ds_dispatch_f40b            ; 0x0524
    mov ax, 0                        ; 0x0527
    push ax                          ; 0x052a
    push ax                          ; 0x052b
    push word [data_93f8]            ; 0x052c
    push word [data_93f6]            ; 0x0530
    call ds_dispatch_e942            ; 0x0534
    add sp, byte 8                   ; 0x0537
    mov word [bp - 0x0002], 0        ; 0x053a
    jmp short @..api_idx_0012_2.l2   ; 0x053f
@..api_idx_0012_2.l1:
    mov ax, 0                        ; 0x0541
    push ax                          ; 0x0544
    push ax                          ; 0x0545
    push word [bp - 0x0002]          ; 0x0546
    call api_idx_000c                ; 0x0549
    add sp, byte 6                   ; 0x054c
    mov ax, word [bp - 0x0002]       ; 0x054f
    mov cx, 3                        ; 0x0552
    cwd                              ; 0x0555
    idiv cx                          ; 0x0556
    mov ax, dx                       ; 0x0558
    mov cx, 0x32                     ; 0x055a
    imul cx                          ; 0x055d
    add ax, strict word 4            ; 0x055f
    mov word [bp - 0x000a], ax       ; 0x0562
    mov ax, word [bp - 0x0002]       ; 0x0565
    mov cx, 3                        ; 0x0568
    cwd                              ; 0x056b
    idiv cx                          ; 0x056c
    mov cx, api_idx_0002             ; 0x056e
    imul cx                          ; 0x0571
    add ax, strict word 0x70         ; 0x0573
    mov word [bp - 0x000c], ax       ; 0x0576
    mov ax, 0                        ; 0x0579
    push ax                          ; 0x057c
    mov ax, word [bp - 0x0002]       ; 0x057d
    add ax, strict word 0x31         ; 0x0580
    cbw                              ; 0x0583
    push ax                          ; 0x0584
    mov ax, word [bp - 0x000c]       ; 0x0585
    add ax, strict word 0x26         ; 0x0588
    push ax                          ; 0x058b
    mov ax, word [bp - 0x000a]       ; 0x058c
    add ax, strict word 0x2e         ; 0x058f
    push ax                          ; 0x0592
    push word [bp - 0x000c]          ; 0x0593
    push word [bp - 0x000a]          ; 0x0596
    push word [bp - 0x0002]          ; 0x0599
    call ds_dispatch_baa6            ; 0x059c
    add sp, byte 0x0e                ; 0x059f
    inc word [bp - 0x0002]           ; 0x05a2
@..api_idx_0012_2.l2:
    mov ax, word [bp - 0x0002]       ; 0x05a5
    cmp ax, word [data_69c8]         ; 0x05a8
    jl short @..api_idx_0012_2.l1    ; 0x05ac
    mov ax, 0                        ; 0x05ae
    push ax                          ; 0x05b1
    push ax                          ; 0x05b2
    push ax                          ; 0x05b3
    push ax                          ; 0x05b4
    push ax                          ; 0x05b5
    mov ax, 0xffff                   ; 0x05b6
    push ax                          ; 0x05b9
    push word [data_69c8]            ; 0x05ba
    call ds_dispatch_baa6            ; 0x05be
    add sp, byte 0x0e                ; 0x05c1
    mov ax, 0xbb                     ; 0x05c4
    push ax                          ; 0x05c7
    mov ax, 0xab                     ; 0x05c8
    push ax                          ; 0x05cb
    mov ax, 0x70                     ; 0x05cc
    push ax                          ; 0x05cf
    mov ax, 1                        ; 0x05d0
    push ax                          ; 0x05d3
    call ds_dispatch_e8da            ; 0x05d4
    add sp, byte 8                   ; 0x05d7
    cmp word [data_0e32], byte 0     ; 0x05da
    je short @..api_idx_0012_2.l3    ; 0x05df
    jmp near @..local.l2             ; 0x05e1
@..api_idx_0012_2.l3:
    mov ax, 0xa3                     ; 0x05e4
    push ax                          ; 0x05e7
    mov ax, 0xb1                     ; 0x05e8
    push ax                          ; 0x05eb
    mov ax, 0x90                     ; 0x05ec
    push ax                          ; 0x05ef
    mov ax, 0x9a                     ; 0x05f0
    push ax                          ; 0x05f3
    call ds_dispatch_e928            ; 0x05f4
    add sp, byte 8                   ; 0x05f7
    mov word [bp - 0x0010], dx       ; 0x05fa
    mov word [bp - 0x0012], ax       ; 0x05fd
    mov ax, 0x90                     ; 0x0600
    push ax                          ; 0x0603
    mov ax, 0x9a                     ; 0x0604
    push ax                          ; 0x0607
    call ds_dispatch_e809            ; 0x0608
    add sp, byte 4                   ; 0x060b
    mov ax, 7                        ; 0x060e
    push ax                          ; 0x0611
    mov ax, 0x12                     ; 0x0612
    push ax                          ; 0x0615
    call ds_dispatch_e830            ; 0x0616
    add sp, byte 4                   ; 0x0619
    mov ax, 0x9c                     ; 0x061c
    push ax                          ; 0x061f
    mov ax, 0x9a                     ; 0x0620
    push ax                          ; 0x0623
    call ds_dispatch_e809            ; 0x0624
    add sp, byte 4                   ; 0x0627
    mov ax, 7                        ; 0x062a
    push ax                          ; 0x062d
    mov ax, 0x13                     ; 0x062e
    push ax                          ; 0x0631
    call ds_dispatch_e830            ; 0x0632
    add sp, byte 4                   ; 0x0635
    mov ax, 0x9c                     ; 0x0638
    push ax                          ; 0x063b
    mov ax, 0xa6                     ; 0x063c
    push ax                          ; 0x063f
    call ds_dispatch_e809            ; 0x0640
    add sp, byte 4                   ; 0x0643
    mov ax, 7                        ; 0x0646
    push ax                          ; 0x0649
    mov ax, 0x14                     ; 0x064a
    push ax                          ; 0x064d
    call ds_dispatch_e830            ; 0x064e
    add sp, byte 4                   ; 0x0651
    mov ax, 0xa3                     ; 0x0654
    push ax                          ; 0x0657
    mov ax, 0xb1                     ; 0x0658
    push ax                          ; 0x065b
    mov ax, 0x90                     ; 0x065c
    push ax                          ; 0x065f
    mov ax, 0x9a                     ; 0x0660
    push ax                          ; 0x0663
    call ds_dispatch_e8da            ; 0x0664
    add sp, byte 8                   ; 0x0667
    mov word [bp - 0x0004], 0xfffe   ; 0x066a
@..api_idx_0012_2.l4:
    cmp word [bp - 0x0004], byte 0xfe ; 0x066f
    jne short @..api_idx_0012_2.l7   ; 0x0673
    mov ax, 1                        ; 0x0675
    push ax                          ; 0x0678
    call ds_dispatch_eb32            ; 0x0679
    pop cx                           ; 0x067c
    sub ah, ah                       ; 0x067d
    mov word [bp - 0x0002], ax       ; 0x067f
    cmp ax, strict word 0x1b         ; 0x0682
    jne short @..api_idx_0012_2.l5   ; 0x0685
    mov word [bp - 0x0004], 0xffff   ; 0x0687
@..api_idx_0012_2.l5:
    cmp ax, strict word 0x31         ; 0x068c
    jl short @..api_idx_0012_2.l6    ; 0x068f
    mov cx, word [data_69c8]         ; 0x0691
    add cx, byte 0x31                ; 0x0695
    cmp cx, ax                       ; 0x0698
    jle short @..api_idx_0012_2.l6   ; 0x069a
    add ax, strict word 0xffcf       ; 0x069c
    mov word [bp - 0x0004], ax       ; 0x069f
    mov ax, 1                        ; 0x06a2
    push ax                          ; 0x06a5
    push ax                          ; 0x06a6
    push word [bp - 0x0004]          ; 0x06a7
    call api_idx_000c                ; 0x06aa
    add sp, byte 6                   ; 0x06ad
@..api_idx_0012_2.l6:
    jmp short @..api_idx_0012_2.l4   ; 0x06b0
@..api_idx_0012_2.l7:
    mov ax, 1                        ; 0x06b2
    push ax                          ; 0x06b5
    push word [bp - 0x0010]          ; 0x06b6
    push word [bp - 0x0012]          ; 0x06b9
    call ds_dispatch_e94f            ; 0x06bc
    add sp, byte 6                   ; 0x06bf
    mov ax, 0xa3                     ; 0x06c2
    push ax                          ; 0x06c5
    mov ax, 0xb1                     ; 0x06c6
    push ax                          ; 0x06c9
    mov ax, 0x90                     ; 0x06ca
    push ax                          ; 0x06cd
    mov ax, 0x9a                     ; 0x06ce
    push ax                          ; 0x06d1
    call ds_dispatch_e8da            ; 0x06d2
    add sp, byte 8                   ; 0x06d5
    mov ax, word [bp - 0x0004]       ; 0x06d8
    ret                              ; 0x06db
@..local.l2:
    push word [data_0e30]            ; 0x06dc
    push word [data_0e2e]            ; 0x06e0
    call ds_dispatch_b8af            ; 0x06e4
    add sp, byte 4                   ; 0x06e7
    mov word [bp - 0x0008], 0        ; 0x06ea
@..local.l3:
    lea ax, word [bp - 0x000c]       ; 0x06ef
    push ax                          ; 0x06f2
    lea ax, word [bp - 0x000a]       ; 0x06f3
    push ax                          ; 0x06f6
    call ds_dispatch_f053            ; 0x06f7
    add sp, byte 4                   ; 0x06fa
    mov word [bp - 0x0006], ax       ; 0x06fd
    mov ax, 0                        ; 0x0700
    cmp word [bp - 0x0006], byte 0   ; 0x0703
    jne short @..local.l4            ; 0x0707
    mov ax, 1                        ; 0x0709
@..local.l4:
    or word [bp - 0x0008], ax        ; 0x070c
    mov ax, 0x14                     ; 0x070f
    push ax                          ; 0x0712
    call ds_dispatch_e489            ; 0x0713
    pop cx                           ; 0x0716
    mov ax, 0x59fe                   ; 0x0717
    push ax                          ; 0x071a
    call ds_dispatch_b90d            ; 0x071b
    pop cx                           ; 0x071e
    dec ax                           ; 0x071f
    mov word [bp - 0x0004], ax       ; 0x0720
    cmp word [data_59fa], byte 0     ; 0x0723
    je short @..local.l5             ; 0x0728
    mov ax, 0                        ; 0x072a
    mov dx, 0                        ; 0x072d
    push dx                          ; 0x0730
    push ax                          ; 0x0731
    call ds_dispatch_b8af            ; 0x0732
    add sp, byte 4                   ; 0x0735
    mov ax, 0xffff                   ; 0x0738
    ret                              ; 0x073b
@..local.l5:
    cmp word [data_5b3e], byte 1     ; 0x073c
    jne short @..local.l6            ; 0x0741
    mov ax, 1                        ; 0x0743
    push ax                          ; 0x0746
    push ax                          ; 0x0747
    push word [bp - 0x0004]          ; 0x0748
    call api_idx_000c                ; 0x074b
    add sp, byte 6                   ; 0x074e
    mov ax, 0                        ; 0x0751
    mov dx, 0                        ; 0x0754
    push dx                          ; 0x0757
    push ax                          ; 0x0758
    call ds_dispatch_b8af            ; 0x0759
    add sp, byte 4                   ; 0x075c
    mov ax, word [bp - 0x0004]       ; 0x075f
    ret                              ; 0x0762
@..local.l6:
    cmp word [bp - 0x0006], byte 0   ; 0x0763
    je short @..local.l3             ; 0x0767
    cmp word [bp - 0x0008], byte 0   ; 0x0769
    je short @..local.l3             ; 0x076d
    mov ax, 0                        ; 0x076f
    mov dx, 0                        ; 0x0772
    push dx                          ; 0x0775
    push ax                          ; 0x0776
    call ds_dispatch_b8af            ; 0x0777
    add sp, byte 4                   ; 0x077a
    mov ax, 0xffff                   ; 0x077d
    ret                              ; 0x0780
api_idx_0012_3:
    mov ax, 0xffee                   ; 0x0781
    call ds_dispatch_f40b            ; 0x0784
    cmp word [data_0e32], byte 0     ; 0x0787
    je short @..api_idx_0012_3.l1    ; 0x078c
    jmp near @..local.l7             ; 0x078e
@..api_idx_0012_3.l1:
    mov ax, 0xa3                     ; 0x0791
    push ax                          ; 0x0794
    mov ax, 0xb1                     ; 0x0795
    push ax                          ; 0x0798
    mov ax, 0x90                     ; 0x0799
    push ax                          ; 0x079c
    mov ax, 0x9a                     ; 0x079d
    push ax                          ; 0x07a0
    call ds_dispatch_e928            ; 0x07a1
    add sp, byte 8                   ; 0x07a4
    mov word [bp - 0x0010], dx       ; 0x07a7
    mov word [bp - 0x0012], ax       ; 0x07aa
    mov ax, 0x90                     ; 0x07ad
    push ax                          ; 0x07b0
    mov ax, 0x9a                     ; 0x07b1
    push ax                          ; 0x07b4
    call ds_dispatch_e809            ; 0x07b5
    add sp, byte 4                   ; 0x07b8
    mov ax, 7                        ; 0x07bb
    push ax                          ; 0x07be
    mov ax, 0x12                     ; 0x07bf
    push ax                          ; 0x07c2
    call ds_dispatch_e830            ; 0x07c3
    add sp, byte 4                   ; 0x07c6
    mov ax, 0x9c                     ; 0x07c9
    push ax                          ; 0x07cc
    mov ax, 0x9a                     ; 0x07cd
    push ax                          ; 0x07d0
    call ds_dispatch_e809            ; 0x07d1
    add sp, byte 4                   ; 0x07d4
    mov ax, 7                        ; 0x07d7
    push ax                          ; 0x07da
    mov ax, 0x15                     ; 0x07db
    push ax                          ; 0x07de
    call ds_dispatch_e830            ; 0x07df
    add sp, byte 4                   ; 0x07e2
    mov ax, 0x9c                     ; 0x07e5
    push ax                          ; 0x07e8
    mov ax, 0xa6                     ; 0x07e9
    push ax                          ; 0x07ec
    call ds_dispatch_e809            ; 0x07ed
    add sp, byte 4                   ; 0x07f0
    mov ax, 7                        ; 0x07f3
    push ax                          ; 0x07f6
    mov ax, 0x16                     ; 0x07f7
    push ax                          ; 0x07fa
    call ds_dispatch_e830            ; 0x07fb
    add sp, byte 4                   ; 0x07fe
    mov ax, 0xa3                     ; 0x0801
    push ax                          ; 0x0804
    mov ax, 0xb1                     ; 0x0805
    push ax                          ; 0x0808
    mov ax, 0x90                     ; 0x0809
    push ax                          ; 0x080c
    mov ax, 0x9a                     ; 0x080d
    push ax                          ; 0x0810
    call ds_dispatch_e8da            ; 0x0811
    add sp, byte 8                   ; 0x0814
    mov word [bp - 0x0004], 0xfffe   ; 0x0817
@..api_idx_0012_3.l2:
    cmp word [bp - 0x0004], byte 0xfe ; 0x081c
    jne short @..api_idx_0012_3.l5   ; 0x0820
    mov ax, 1                        ; 0x0822
    push ax                          ; 0x0825
    call ds_dispatch_eb32            ; 0x0826
    pop cx                           ; 0x0829
    sub ah, ah                       ; 0x082a
    mov word [bp - 0x0002], ax       ; 0x082c
    cmp ax, strict word 0x1b         ; 0x082f
    jne short @..api_idx_0012_3.l3   ; 0x0832
    mov word [bp - 0x0004], 0xffff   ; 0x0834
@..api_idx_0012_3.l3:
    cmp ax, strict word 0x30         ; 0x0839
    jl short @..api_idx_0012_3.l4    ; 0x083c
    cmp ax, strict word 0x39         ; 0x083e
    jg short @..api_idx_0012_3.l4    ; 0x0841
    add ax, strict word 0xffd9       ; 0x0843
    mov cx, 0xa                      ; 0x0846
    cwd                              ; 0x0849
    idiv cx                          ; 0x084a
    mov word [bp - 0x0004], dx       ; 0x084c
@..api_idx_0012_3.l4:
    jmp short @..api_idx_0012_3.l2   ; 0x084f
@..api_idx_0012_3.l5:
    mov ax, 1                        ; 0x0851
    push ax                          ; 0x0854
    push word [bp - 0x0010]          ; 0x0855
    push word [bp - 0x0012]          ; 0x0858
    call ds_dispatch_e94f            ; 0x085b
    add sp, byte 6                   ; 0x085e
    mov ax, 0xa3                     ; 0x0861
    push ax                          ; 0x0864
    mov ax, 0xb1                     ; 0x0865
    push ax                          ; 0x0868
    mov ax, 0x90                     ; 0x0869
    push ax                          ; 0x086c
    mov ax, 0x9a                     ; 0x086d
    push ax                          ; 0x0870
    call ds_dispatch_e8da            ; 0x0871
    add sp, byte 8                   ; 0x0874
    mov ax, word [bp - 0x0004]       ; 0x0877
    ret                              ; 0x087a
@..local.l7:
    push word [data_0e28]            ; 0x087b
    push word [data_0e26]            ; 0x087f
    call ds_dispatch_b8af            ; 0x0883
    add sp, byte 4                   ; 0x0886
    mov word [bp - 0x0002], 0        ; 0x0889
@..local.l8:
    mov ax, 0                        ; 0x088e
    push ax                          ; 0x0891
    mov ax, word [bp - 0x0002]       ; 0x0892
    inc ax                           ; 0x0895
    mov cx, 0xa                      ; 0x0896
    cwd                              ; 0x0899
    idiv cx                          ; 0x089a
    mov ax, dx                       ; 0x089c
    add ax, strict word 0x30         ; 0x089e
    cbw                              ; 0x08a1
    push ax                          ; 0x08a2
    mov ax, word [bp - 0x0002]       ; 0x08a3
    mov cx, 5                        ; 0x08a6
    cwd                              ; 0x08a9
    idiv cx                          ; 0x08aa
    mov ax, dx                       ; 0x08ac
    mov cx, 0xe                      ; 0x08ae
    imul cx                          ; 0x08b1
    add ax, strict word 0x7d         ; 0x08b3
    push ax                          ; 0x08b6
    mov ax, word [bp - 0x0002]       ; 0x08b7
    mov cx, 5                        ; 0x08ba
    cwd                              ; 0x08bd
    idiv cx                          ; 0x08be
    mov cx, 0x4f                     ; 0x08c0
    imul cx                          ; 0x08c3
    add ax, strict word 0x4e         ; 0x08c5
    push ax                          ; 0x08c8
    mov ax, word [bp - 0x0002]       ; 0x08c9
    mov cx, 5                        ; 0x08cc
    cwd                              ; 0x08cf
    idiv cx                          ; 0x08d0
    mov ax, dx                       ; 0x08d2
    mov cx, 0xe                      ; 0x08d4
    imul cx                          ; 0x08d7
    add ax, strict word 0x71         ; 0x08d9
    push ax                          ; 0x08dc
    mov ax, word [bp - 0x0002]       ; 0x08dd
    mov cx, 5                        ; 0x08e0
    cwd                              ; 0x08e3
    idiv cx                          ; 0x08e4
    mov cx, 0x4f                     ; 0x08e6
    imul cx                          ; 0x08e9
    inc ax                           ; 0x08eb
    inc ax                           ; 0x08ec
    push ax                          ; 0x08ed
    push word [bp - 0x0002]          ; 0x08ee
    call ds_dispatch_baa6            ; 0x08f1
    add sp, byte 0x0e                ; 0x08f4
    inc word [bp - 0x0002]           ; 0x08f7
    mov ax, word [bp - 0x0002]       ; 0x08fa
    cmp ax, strict word 0xa          ; 0x08fd
    jl short @..local.l8             ; 0x0900
    mov ax, 0                        ; 0x0902
    push ax                          ; 0x0905
    push ax                          ; 0x0906
    push ax                          ; 0x0907
    push ax                          ; 0x0908
    push ax                          ; 0x0909
    mov ax, 0xffff                   ; 0x090a
    push ax                          ; 0x090d
    mov ax, 0xa                      ; 0x090e
    push ax                          ; 0x0911
    call ds_dispatch_baa6            ; 0x0912
    add sp, byte 0x0e                ; 0x0915
    mov word [bp - 0x0008], 0        ; 0x0918
@..local.l9:
    lea ax, word [bp - 0x000c]       ; 0x091d
    push ax                          ; 0x0920
    lea ax, word [bp - 0x000a]       ; 0x0921
    push ax                          ; 0x0924
    call ds_dispatch_f053            ; 0x0925
    add sp, byte 4                   ; 0x0928
    mov word [bp - 0x0006], ax       ; 0x092b
    mov ax, 0                        ; 0x092e
    cmp word [bp - 0x0006], byte 0   ; 0x0931
    jne short @..local.l10           ; 0x0935
    mov ax, 1                        ; 0x0937
@..local.l10:
    or word [bp - 0x0008], ax        ; 0x093a
    mov ax, 0x14                     ; 0x093d
    push ax                          ; 0x0940
    call ds_dispatch_e489            ; 0x0941
    pop cx                           ; 0x0944
    mov ax, 0x59fe                   ; 0x0945
    push ax                          ; 0x0948
    call ds_dispatch_b90d            ; 0x0949
    pop cx                           ; 0x094c
    dec ax                           ; 0x094d
    mov word [bp - 0x0004], ax       ; 0x094e
    cmp word [data_59fa], byte 0     ; 0x0951
    je short @..local.l11            ; 0x0956
    mov ax, 0                        ; 0x0958
    mov dx, 0                        ; 0x095b
    push dx                          ; 0x095e
    push ax                          ; 0x095f
    call ds_dispatch_b8af            ; 0x0960
    add sp, byte 4                   ; 0x0963
    mov ax, 0xffff                   ; 0x0966
    ret                              ; 0x0969
@..local.l11:
    cmp word [data_5b3e], byte 1     ; 0x096a
    jne short @..local.l12           ; 0x096f
    mov ax, 0                        ; 0x0971
    mov dx, 0                        ; 0x0974
    push dx                          ; 0x0977
    push ax                          ; 0x0978
    call ds_dispatch_b8af            ; 0x0979
    add sp, byte 4                   ; 0x097c
    mov ax, word [bp - 0x0004]       ; 0x097f
    ret                              ; 0x0982
@..local.l12:
    cmp word [bp - 0x0006], byte 0   ; 0x0983
    je short @..local.l9             ; 0x0987
    cmp word [bp - 0x0008], byte 0   ; 0x0989
    je short @..local.l9             ; 0x098d
    mov ax, 0                        ; 0x098f
    mov dx, 0                        ; 0x0992
    push dx                          ; 0x0995
    push ax                          ; 0x0996
    call ds_dispatch_b8af            ; 0x0997
    add sp, byte 4                   ; 0x099a
    mov ax, 0xffff                   ; 0x099d
    ret                              ; 0x09a0
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x09a1
    call ds_dispatch_f40b            ; 0x09a4
    cmp word [data_940e], byte 0xff  ; 0x09a7
    jne short @..local.l13           ; 0x09ac
    ret                              ; 0x09ae
@..local.l13:
    mov ax, word [data_940e]         ; 0x09af
    mov cx, 5                        ; 0x09b2
    cwd                              ; 0x09b5
    idiv cx                          ; 0x09b6
    mov cx, 0xd                      ; 0x09b8
    imul cx                          ; 0x09bb
    mov cx, 6                        ; 0x09bd
    imul cx                          ; 0x09c0
    push ax                          ; 0x09c2
    mov ax, word [data_940e]         ; 0x09c3
    mov cx, 5                        ; 0x09c6
    cwd                              ; 0x09c9
    idiv cx                          ; 0x09ca
    mov cx, ax                       ; 0x09cc
    pop ax                           ; 0x09ce
    add ax, cx                       ; 0x09cf
    add ax, strict word 6            ; 0x09d1
    mov word [bp - 0x0002], ax       ; 0x09d4
    shl dx, 1                        ; 0x09d7
    mov ax, dx                       ; 0x09d9
    mov cx, 6                        ; 0x09db
    imul cx                          ; 0x09de
    push ax                          ; 0x09e0
    mov ax, word [data_940e]         ; 0x09e1
    mov cx, 5                        ; 0x09e4
    cwd                              ; 0x09e7
    idiv cx                          ; 0x09e8
    mov cx, dx                       ; 0x09ea
    shl cx, 1                        ; 0x09ec
    pop ax                           ; 0x09ee
    add ax, cx                       ; 0x09ef
    add ax, strict word 0x74         ; 0x09f1
    mov word [bp - 0x0004], ax       ; 0x09f4
    push ax                          ; 0x09f7
    push word [bp - 0x0002]          ; 0x09f8
    call ds_dispatch_e809            ; 0x09fb
    add sp, byte 4                   ; 0x09fe
    mov ax, 4                        ; 0x0a01
    push ax                          ; 0x0a04
    mov al, byte [data_9410]         ; 0x0a05
    sub ah, ah                       ; 0x0a08
    push ax                          ; 0x0a0a
    call ds_dispatch_e830            ; 0x0a0b
    add sp, byte 4                   ; 0x0a0e
    push word [data_9412]            ; 0x0a11
    push word [bp - 0x0004]          ; 0x0a15
    mov ax, word [bp - 0x0002]       ; 0x0a18
    add ax, strict word 0xe          ; 0x0a1b
    push ax                          ; 0x0a1e
    mov ax, 0x9414                   ; 0x0a1f
    push ax                          ; 0x0a22
    call api_idx_002a                ; 0x0a23
    add sp, byte 8                   ; 0x0a26
    mov bx, word [data_942a]         ; 0x0a29
    cmp byte [bx + 0x60e], 1         ; 0x0a2d
    jne short @..local.l14           ; 0x0a32
    mov ax, word [bp - 0x0004]       ; 0x0a34
    add ax, strict word 6            ; 0x0a37
    push ax                          ; 0x0a3a
    mov ax, word [bp - 0x0002]       ; 0x0a3b
    add ax, strict word 0x38         ; 0x0a3e
    push ax                          ; 0x0a41
    call ds_dispatch_e809            ; 0x0a42
    add sp, byte 4                   ; 0x0a45
    mov ax, 0                        ; 0x0a48
    push ax                          ; 0x0a4b
    mov ax, data_0002                ; 0x0a4c
    push ax                          ; 0x0a4f
    call ds_dispatch_e823            ; 0x0a50
    add sp, byte 4                   ; 0x0a53
    mov ax, 0                        ; 0x0a56
    push ax                          ; 0x0a59
    mov ax, 3                        ; 0x0a5a
    push ax                          ; 0x0a5d
    push word [data_942c]            ; 0x0a5e
    call ds_dispatch_b2e7            ; 0x0a62
    add sp, byte 6                   ; 0x0a65
@..local.l14:
    mov ax, 0xff                     ; 0x0a68
    push ax                          ; 0x0a6b
    mov ax, 0x15                     ; 0x0a6c
    push ax                          ; 0x0a6f
    call ds_dispatch_e823            ; 0x0a70
    add sp, byte 4                   ; 0x0a73
    mov ax, word [bp - 0x0004]       ; 0x0a76
    dec ax                           ; 0x0a79
    push ax                          ; 0x0a7a
    mov ax, word [bp - 0x0002]       ; 0x0a7b
    dec ax                           ; 0x0a7e
    dec ax                           ; 0x0a7f
    push ax                          ; 0x0a80
    call ds_dispatch_e809            ; 0x0a81
    add sp, byte 4                   ; 0x0a84
    mov ax, 0                        ; 0x0a87
    push ax                          ; 0x0a8a
    mov ax, 4                        ; 0x0a8b
    push ax                          ; 0x0a8e
    call ds_dispatch_e830            ; 0x0a8f
    add sp, byte 4                   ; 0x0a92
    ret                              ; 0x0a95
api_idx_0012_4:
    mov ax, 0xffee                   ; 0x0a96
    call ds_dispatch_f40b            ; 0x0a99
    mov word [data_940e], 0xffff     ; 0x0a9c
    mov ax, word [bp + 0x6]          ; 0x0aa2
    push ax                          ; 0x0aa5
    cmp ax, strict word 0            ; 0x0aa6
    pop ax                           ; 0x0aa9
    jge short @..api_idx_0012_4.l2   ; 0x0aaa
    push ax                          ; 0x0aac
    cmp ax, strict word 0            ; 0x0aad
    pop ax                           ; 0x0ab0
    jge short @..api_idx_0012_4.l1   ; 0x0ab1
    neg ax                           ; 0x0ab3
@..api_idx_0012_4.l1:
    dec ax                           ; 0x0ab5
@..api_idx_0012_4.l2:
    mov word [bp - 0x0002], ax       ; 0x0ab6
    mov cx, 5                        ; 0x0ab9
    cwd                              ; 0x0abc
    idiv cx                          ; 0x0abd
    mov cx, 0xd                      ; 0x0abf
    imul cx                          ; 0x0ac2
    mov cx, 6                        ; 0x0ac4
    imul cx                          ; 0x0ac7
    push ax                          ; 0x0ac9
    mov ax, word [bp - 0x0002]       ; 0x0aca
    mov cx, 5                        ; 0x0acd
    cwd                              ; 0x0ad0
    idiv cx                          ; 0x0ad1
    mov cx, ax                       ; 0x0ad3
    pop ax                           ; 0x0ad5
    add ax, cx                       ; 0x0ad6
    inc ax                           ; 0x0ad8
    inc ax                           ; 0x0ad9
    mov word [bp - 0x0008], ax       ; 0x0ada
    shl dx, 1                        ; 0x0add
    mov ax, dx                       ; 0x0adf
    mov cx, 6                        ; 0x0ae1
    imul cx                          ; 0x0ae4
    push ax                          ; 0x0ae6
    mov ax, word [bp - 0x0002]       ; 0x0ae7
    mov cx, 5                        ; 0x0aea
    cwd                              ; 0x0aed
    idiv cx                          ; 0x0aee
    mov cx, dx                       ; 0x0af0
    shl cx, 1                        ; 0x0af2
    pop ax                           ; 0x0af4
    add ax, cx                       ; 0x0af5
    add ax, strict word 0x71         ; 0x0af7
    mov word [bp - 0x000a], ax       ; 0x0afa
    cmp word [data_0e32], byte 0     ; 0x0afd
    jne short @..api_idx_0012_4.l3   ; 0x0b02
    jmp near @..api_idx_0012_4.l6    ; 0x0b04
@..api_idx_0012_4.l3:
    cmp word [bp + 0x6], byte 0      ; 0x0b07
    jge short @..api_idx_0012_4.l4   ; 0x0b0b
    lea ax, word [bp - 0x0006]       ; 0x0b0d
    push ax                          ; 0x0b10
    lea ax, word [bp - 0x0004]       ; 0x0b11
    push ax                          ; 0x0b14
    call ds_dispatch_f053            ; 0x0b15
    add sp, byte 4                   ; 0x0b18
    mov ax, word [bp - 0x0006]       ; 0x0b1b
    add ax, word [bp + 0x10]         ; 0x0b1e
    push ax                          ; 0x0b21
    mov ax, word [bp - 0x0004]       ; 0x0b22
    add ax, word [bp + 0xe]          ; 0x0b25
    push ax                          ; 0x0b28
    mov ax, 0                        ; 0x0b29
    push ax                          ; 0x0b2c
    push ax                          ; 0x0b2d
    mov ax, 0                        ; 0x0b2e
    mov dx, 0                        ; 0x0b31
    push dx                          ; 0x0b34
    push ax                          ; 0x0b35
    call ds_dispatch_f060            ; 0x0b36
    add sp, byte 0x0c                ; 0x0b39
    call ds_dispatch_ec17            ; 0x0b3c
    jmp near @..api_idx_0012_4.l5    ; 0x0b3f
@..api_idx_0012_4.l4:
    mov ax, word [bp - 0x000a]       ; 0x0b42
    add ax, strict word 0xc          ; 0x0b45
    push ax                          ; 0x0b48
    mov ax, word [bp - 0x0008]       ; 0x0b49
    add ax, strict word 0x4b         ; 0x0b4c
    push ax                          ; 0x0b4f
    push word [bp - 0x000a]          ; 0x0b50
    push word [bp - 0x0008]          ; 0x0b53
    call ds_dispatch_e928            ; 0x0b56
    add sp, byte 8                   ; 0x0b59
    mov word [bp - 0x000c], dx       ; 0x0b5c
    mov word [bp - 0x000e], ax       ; 0x0b5f
    mov ax, 0xff                     ; 0x0b62
    push ax                          ; 0x0b65
    mov ax, word [bp - 0x000a]       ; 0x0b66
    add ax, strict word 0xc          ; 0x0b69
    push ax                          ; 0x0b6c
    mov ax, word [bp - 0x0008]       ; 0x0b6d
    add ax, strict word 0x4b         ; 0x0b70
    push ax                          ; 0x0b73
    push word [bp - 0x000a]          ; 0x0b74
    push word [bp - 0x0008]          ; 0x0b77
    call ds_dispatch_e901            ; 0x0b7a
    add sp, byte 0x0a                ; 0x0b7d
    push word [bp + 0xc]             ; 0x0b80
    push word [bp + 0xa]             ; 0x0b83
    push word [bp + 0x8]             ; 0x0b86
    push word [bp - 0x0002]          ; 0x0b89
    push word [bp + 0x4]             ; 0x0b8c
    call api_idx_0004_10             ; 0x0b8f
    add sp, byte 0x0a                ; 0x0b92
    mov ax, 0xff                     ; 0x0b95
    push ax                          ; 0x0b98
    mov ax, 0x15                     ; 0x0b99
    push ax                          ; 0x0b9c
    call ds_dispatch_e823            ; 0x0b9d
    add sp, byte 4                   ; 0x0ba0
    push word [bp - 0x000a]          ; 0x0ba3
    push word [bp - 0x0008]          ; 0x0ba6
    call ds_dispatch_e809            ; 0x0ba9
    add sp, byte 4                   ; 0x0bac
    mov ax, 0                        ; 0x0baf
    push ax                          ; 0x0bb2
    mov ax, 4                        ; 0x0bb3
    push ax                          ; 0x0bb6
    call ds_dispatch_e830            ; 0x0bb7
    add sp, byte 4                   ; 0x0bba
    mov ax, word [bp - 0x000a]       ; 0x0bbd
    add ax, strict word 0xc          ; 0x0bc0
    push ax                          ; 0x0bc3
    mov ax, word [bp - 0x0008]       ; 0x0bc4
    add ax, strict word 0x4b         ; 0x0bc7
    push ax                          ; 0x0bca
    push word [bp - 0x000a]          ; 0x0bcb
    push word [bp - 0x0008]          ; 0x0bce
    call ds_dispatch_e928            ; 0x0bd1
    add sp, byte 8                   ; 0x0bd4
    mov word [bp - 0x0010], dx       ; 0x0bd7
    mov word [bp - 0x0012], ax       ; 0x0bda
    mov ax, 0x3dc                    ; 0x0bdd
    push ax                          ; 0x0be0
    push word [data_0e20]            ; 0x0be1
    push word [data_0e1e]            ; 0x0be5
    mov ax, word [bp - 0x0012]       ; 0x0be9
    add ax, strict word 0xc          ; 0x0bec
    push dx                          ; 0x0bef
    push ax                          ; 0x0bf0
    call ds_dispatch_afcc            ; 0x0bf1
    add sp, byte 0x0a                ; 0x0bf4
    mov ax, 1                        ; 0x0bf7
    push ax                          ; 0x0bfa
    push word [bp - 0x0010]          ; 0x0bfb
    push word [bp - 0x0012]          ; 0x0bfe
    call ds_dispatch_e94f            ; 0x0c01
    add sp, byte 6                   ; 0x0c04
    mov ax, 1                        ; 0x0c07
    push ax                          ; 0x0c0a
    push word [bp - 0x000c]          ; 0x0c0b
    push word [bp - 0x000e]          ; 0x0c0e
    call ds_dispatch_e94f            ; 0x0c11
    add sp, byte 6                   ; 0x0c14
    lea ax, word [bp - 0x0006]       ; 0x0c17
    push ax                          ; 0x0c1a
    lea ax, word [bp - 0x0004]       ; 0x0c1b
    push ax                          ; 0x0c1e
    call ds_dispatch_f053            ; 0x0c1f
    add sp, byte 4                   ; 0x0c22
    mov ax, 0x13f                    ; 0x0c25
    push ax                          ; 0x0c28
    mov ax, 0                        ; 0x0c29
    push ax                          ; 0x0c2c
    mov ax, word [bp - 0x0004]       ; 0x0c2d
    add ax, word [bp + 0xe]          ; 0x0c30
    add ax, strict word 0xffdc       ; 0x0c33
    push ax                          ; 0x0c36
    call ds_dispatch_b7c2            ; 0x0c37
    add sp, byte 6                   ; 0x0c3a
    mov word [bp - 0x0004], ax       ; 0x0c3d
    mov ax, 0xc7                     ; 0x0c40
    push ax                          ; 0x0c43
    mov ax, 0                        ; 0x0c44
    push ax                          ; 0x0c47
    mov ax, word [bp - 0x0006]       ; 0x0c48
    add ax, word [bp + 0x10]         ; 0x0c4b
    add ax, strict word 0xfffa       ; 0x0c4e
    push ax                          ; 0x0c51
    call ds_dispatch_b7c2            ; 0x0c52
    add sp, byte 6                   ; 0x0c55
    mov word [bp - 0x0006], ax       ; 0x0c58
    push ax                          ; 0x0c5b
    push word [bp - 0x0004]          ; 0x0c5c
    mov ax, 0xd                      ; 0x0c5f
    push ax                          ; 0x0c62
    mov ax, 0x4c                     ; 0x0c63
    push ax                          ; 0x0c66
    push word [data_0e20]            ; 0x0c67
    push word [data_0e1e]            ; 0x0c6b
    call ds_dispatch_f060            ; 0x0c6f
    add sp, byte 0x0c                ; 0x0c72
    call ds_dispatch_ec17            ; 0x0c75
@..api_idx_0012_4.l5:
    jmp short @..local.l15           ; 0x0c78
@..api_idx_0012_4.l6:
    cmp word [bp + 0x6], byte 0      ; 0x0c7a
    jge short @..api_idx_0012_4.l7   ; 0x0c7e
    mov word [data_940e], 0xffff     ; 0x0c80
    jmp short @..local.l15           ; 0x0c86
@..api_idx_0012_4.l7:
    mov ax, word [bp - 0x0002]       ; 0x0c88
    mov word [data_940e], ax         ; 0x0c8b
    push word [bp + 0xa]             ; 0x0c8e
    mov ax, 0x9414                   ; 0x0c91
    push ax                          ; 0x0c94
    call ds_dispatch_f364            ; 0x0c95
    add sp, byte 4                   ; 0x0c98
    mov bx, word [bp + 0x8]          ; 0x0c9b
    mov al, byte [bx + 0x5]          ; 0x0c9e
    sub ah, ah                       ; 0x0ca1
    mov word [data_9410], ax         ; 0x0ca3
    mov al, byte [bx + 0x4]          ; 0x0ca6
    sub ah, ah                       ; 0x0ca9
    mov word [data_942a], ax         ; 0x0cab
    mov al, byte [bx + 0x6]          ; 0x0cae
    sub ah, ah                       ; 0x0cb1
    mov word [data_942c], ax         ; 0x0cb3
    mov word [data_9412], 1          ; 0x0cb6
    call api_idx_0004_2              ; 0x0cbc
@..local.l15:
    mov ax, 0xb6                     ; 0x0cbf
    push ax                          ; 0x0cc2
    mov ax, 0xab                     ; 0x0cc3
    push ax                          ; 0x0cc6
    mov ax, 0x70                     ; 0x0cc7
    push ax                          ; 0x0cca
    mov ax, 1                        ; 0x0ccb
    push ax                          ; 0x0cce
    call ds_dispatch_e8da            ; 0x0ccf
    add sp, byte 8                   ; 0x0cd2
    ret                              ; 0x0cd5
api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x0cd6
    call ds_dispatch_f40b            ; 0x0cd9
    mov word [bp - 0x0002], 0        ; 0x0cdc
@..api_idx_000c_2.l1:
    mov ax, 0x14                     ; 0x0ce1
    imul word [bp - 0x0002]          ; 0x0ce4
    mov cx, word [bp - 0x0002]       ; 0x0ce7
    shl cx, 1                        ; 0x0cea
    mov bx, cx                       ; 0x0cec
    mov cx, word [bx - 0x7cf2]       ; 0x0cee
    shl cx, 1                        ; 0x0cf2
    add ax, cx                       ; 0x0cf4
    mov bx, ax                       ; 0x0cf6
    mov al, byte [bx + 0x1d4]        ; 0x0cf8
    mov byte [bp - 0x000c], al       ; 0x0cfc
    mov byte [bp - 0x000b], 0        ; 0x0cff
    mov ax, 0                        ; 0x0d03
    push ax                          ; 0x0d06
    push ax                          ; 0x0d07
    lea ax, word [bp - 0x000c]       ; 0x0d08
    push ax                          ; 0x0d0b
    mov ax, 0                        ; 0x0d0c
    push ax                          ; 0x0d0f
    mov ax, 0xc7                     ; 0x0d10
    push ax                          ; 0x0d13
    mov ax, 0                        ; 0x0d14
    push ax                          ; 0x0d17
    mov ax, 0x13f                    ; 0x0d18
    push ax                          ; 0x0d1b
    mov ax, 0                        ; 0x0d1c
    push ax                          ; 0x0d1f
    mov ax, 0xc                      ; 0x0d20
    imul word [bp + 0x8]             ; 0x0d23
    mov cx, word [bp - 0x0002]       ; 0x0d26
    shl cx, 1                        ; 0x0d29
    add ax, cx                       ; 0x0d2b
    mov bx, ax                       ; 0x0d2d
    mov ax, word [bx + 0x1bc]        ; 0x0d2f
    add ax, word [bp + 0x6]          ; 0x0d33
    push ax                          ; 0x0d36
    mov ax, word [bx + 0x1a4]        ; 0x0d37
    add ax, word [bp + 0x4]          ; 0x0d3b
    push ax                          ; 0x0d3e
    mov ax, data_0002                ; 0x0d3f
    push ax                          ; 0x0d42
    call ds_dispatch_efd1            ; 0x0d43
    add sp, byte 0x16                ; 0x0d46
    inc word [bp - 0x0002]           ; 0x0d49
    mov ax, word [bp - 0x0002]       ; 0x0d4c
    cmp ax, strict word 6            ; 0x0d4f
    jl short @..api_idx_000c_2.l1    ; 0x0d52
    ret                              ; 0x0d54
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x0d55
    call ds_dispatch_f40b            ; 0x0d58
    mov ax, 0                        ; 0x0d5b
    push ax                          ; 0x0d5e
    push ax                          ; 0x0d5f
    push word [data_9404]            ; 0x0d60
    push word [data_9402]            ; 0x0d64
    call ds_dispatch_e942            ; 0x0d68
    add sp, byte 8                   ; 0x0d6b
    mov word [bp - 0x0002], 0        ; 0x0d6e
@..api_idx_0004_3.l1:
    mov word [bp - 0x0004], 0        ; 0x0d73
@..api_idx_0004_3.l2:
    mov ax, 0                        ; 0x0d78
    push ax                          ; 0x0d7b
    mov ax, word [bp - 0x0002]       ; 0x0d7c
    shl ax, 1                        ; 0x0d7f
    shl ax, 1                        ; 0x0d81
    mov cx, word [bp - 0x0004]       ; 0x0d83
    shl cx, 1                        ; 0x0d86
    add ax, cx                       ; 0x0d88
    mov bx, ax                       ; 0x0d8a
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x0d90
    add sp, byte 4                   ; 0x0d93
    mov ax, word [bp - 0x0002]       ; 0x0d96
    shl ax, 1                        ; 0x0d99
    shl ax, 1                        ; 0x0d9b
    shl ax, 1                        ; 0x0d9d
    mov cx, word [bp - 0x0004]       ; 0x0d9f
    shl cx, 1                        ; 0x0da2
    shl cx, 1                        ; 0x0da4
    add ax, cx                       ; 0x0da6
    mov bx, ax                       ; 0x0da8
    push word [bx + 0x15e]           ; 0x0daa
    push word [bx + 0x15c]           ; 0x0dae
    call ds_dispatch_e809            ; 0x0db2
    add sp, byte 4                   ; 0x0db5
    mov ax, 3                        ; 0x0db8
    push ax                          ; 0x0dbb
    push ax                          ; 0x0dbc
    mov ax, 0x248                    ; 0x0dbd
    imul word [bp + 0x4]             ; 0x0dc0
    mov cx, word [bp - 0x0002]       ; 0x0dc3
    shl cx, 1                        ; 0x0dc6
    shl cx, 1                        ; 0x0dc8
    add ax, cx                       ; 0x0dca
    mov cx, word [bp - 0x0004]       ; 0x0dcc
    shl cx, 1                        ; 0x0dcf
    add ax, cx                       ; 0x0dd1
    mov bx, ax                       ; 0x0dd3
    push word [bx + 0x5c1c]          ; 0x0dd5
    call ds_dispatch_b2e7            ; 0x0dd9
    add sp, byte 6                   ; 0x0ddc
    inc word [bp - 0x0004]           ; 0x0ddf
    mov ax, word [bp - 0x0004]       ; 0x0de2
    cmp ax, strict word 2            ; 0x0de5
    jl short @..api_idx_0004_3.l2    ; 0x0de8
    inc word [bp - 0x0002]           ; 0x0dea
    mov ax, word [bp - 0x0002]       ; 0x0ded
    cmp ax, strict word 6            ; 0x0df0
    jge short @..api_idx_0004_3.l3   ; 0x0df3
    jmp near @..api_idx_0004_3.l1    ; 0x0df5
@..api_idx_0004_3.l3:
    mov ax, 0                        ; 0x0df8
    push ax                          ; 0x0dfb
    push ax                          ; 0x0dfc
    push ax                          ; 0x0dfd
    call api_idx_000c_2              ; 0x0dfe
    add sp, byte 6                   ; 0x0e01
    ret                              ; 0x0e04
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0e05
    call ds_dispatch_f40b            ; 0x0e08
    mov word [bp - 0x0002], 0        ; 0x0e0b
@..api_idx_0002_2.l1:
    cmp word [bp + 0x4], byte 0      ; 0x0e10
    jl short @..api_idx_0002_2.l2    ; 0x0e14
    mov ax, word [bp - 0x0002]       ; 0x0e16
    cmp ax, word [bp + 0x4]          ; 0x0e19
    jne short @..api_idx_0002_2.l3   ; 0x0e1c
@..api_idx_0002_2.l2:
    mov ax, word [bp - 0x0002]       ; 0x0e1e
    shl ax, 1                        ; 0x0e21
    mov bx, ax                       ; 0x0e23
    inc word [bx - 0x7cf2]           ; 0x0e25
@..api_idx_0002_2.l3:
    mov ax, 0x14                     ; 0x0e29
    imul word [bp - 0x0002]          ; 0x0e2c
    mov cx, word [bp - 0x0002]       ; 0x0e2f
    shl cx, 1                        ; 0x0e32
    mov bx, cx                       ; 0x0e34
    mov cx, word [bx - 0x7cf2]       ; 0x0e36
    shl cx, 1                        ; 0x0e3a
    add ax, cx                       ; 0x0e3c
    mov bx, ax                       ; 0x0e3e
    cmp word [bx + 0x1d4], byte 0xff ; 0x0e40
    jne short @..api_idx_0002_2.l4   ; 0x0e45
    mov ax, word [bp - 0x0002]       ; 0x0e47
    shl ax, 1                        ; 0x0e4a
    mov bx, ax                       ; 0x0e4c
    mov word [bx - 0x7cf2], 0        ; 0x0e4e
@..api_idx_0002_2.l4:
    inc word [bp - 0x0002]           ; 0x0e54
    mov ax, word [bp - 0x0002]       ; 0x0e57
    cmp ax, strict word 6            ; 0x0e5a
    jl short @..api_idx_0002_2.l1    ; 0x0e5d
    ret                              ; 0x0e5f
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x0e60
    call ds_dispatch_f40b            ; 0x0e63
    mov word [bp - 0x0002], 0        ; 0x0e66
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x0e6b
    shl ax, 1                        ; 0x0e6e
    shl ax, 1                        ; 0x0e70
    mov bx, ax                       ; 0x0e72
    db 0x8b, 0x87, 0x4a, 0x00 ; mov ax, word [bx + 0x4a]
    cmp ax, word [bp + 0x4]          ; 0x0e78
    jge short @..api_idx_0002_3.l2   ; 0x0e7b
    inc word [bp - 0x0002]           ; 0x0e7d
    jmp short @..api_idx_0002_3.l1   ; 0x0e80
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x0e82
    shl ax, 1                        ; 0x0e85
    shl ax, 1                        ; 0x0e87
    mov bx, ax                       ; 0x0e89
    db 0xff, 0xb7, 0x4a, 0x00 ; push word [bx + 0x4a]
    db 0xff, 0xb7, 0x48, 0x00 ; push word [bx + 0x48]
    mov ax, word [bp + 0x4]          ; 0x0e93
    add ax, word [bp + 0x6]          ; 0x0e96
    push ax                          ; 0x0e99
    call ds_dispatch_b7c2            ; 0x0e9a
    add sp, byte 6                   ; 0x0e9d
    ret                              ; 0x0ea0
api_idx_0010:
    mov ax, 0xfff0                   ; 0x0ea1
    call ds_dispatch_f40b            ; 0x0ea4
    lea ax, word [bp - 0x000c]       ; 0x0ea7
    push ax                          ; 0x0eaa
    lea ax, word [bp - 0x000a]       ; 0x0eab
    push ax                          ; 0x0eae
    mov ax, word [bp + 0x4]          ; 0x0eaf
    shl ax, 1                        ; 0x0eb2
    mov bx, ax                       ; 0x0eb4
    push word [bx + 0x69bc]          ; 0x0eb6
    mov ax, 5                        ; 0x0eba
    push ax                          ; 0x0ebd
    call ds_dispatch_e7af            ; 0x0ebe
    add sp, byte 8                   ; 0x0ec1
    mov word [bp - 0x0006], dx       ; 0x0ec4
    mov word [bp - 0x0008], ax       ; 0x0ec7
    mov ax, word [bp - 0x000a]       ; 0x0eca
    mov word [bp - 0x000e], ax       ; 0x0ecd
    mov word [bp - 0x0004], 0        ; 0x0ed0
    jmp near @..api_idx_0010.l7      ; 0x0ed5
@..api_idx_0010.l1:
    mov word [bp - 0x0002], 0        ; 0x0ed8
    jmp near @..api_idx_0010.l5      ; 0x0edd
@..api_idx_0010.l2:
    les bx, word [bp - 0x0008]       ; 0x0ee0
    mov si, word [bp - 0x000e]       ; 0x0ee3
    mov al, byte [es:bx + si]        ; 0x0ee6
    sub ah, ah                       ; 0x0ee9
    mov word [bp - 0x0010], ax       ; 0x0eeb
    cmp ax, 0xff                     ; 0x0eee
    jne short @..api_idx_0010.l3     ; 0x0ef1
    jmp near @..api_idx_0010.l4      ; 0x0ef3
@..api_idx_0010.l3:
    mov ax, 0xffff                   ; 0x0ef6
    push ax                          ; 0x0ef9
    push word [bp - 0x0010]          ; 0x0efa
    call api_idx_0002_3              ; 0x0efd
    add sp, byte 4                   ; 0x0f00
    push ax                          ; 0x0f03
    mov ax, word [bp - 0x0004]       ; 0x0f04
    shl ax, 1                        ; 0x0f07
    add ax, word [bp + 0x8]          ; 0x0f09
    push ax                          ; 0x0f0c
    mov ax, word [bp - 0x0002]       ; 0x0f0d
    shl ax, 1                        ; 0x0f10
    add ax, word [bp + 0x6]          ; 0x0f12
    push ax                          ; 0x0f15
    call ds_dispatch_e8f4            ; 0x0f16
    add sp, byte 6                   ; 0x0f19
    push word [bp - 0x0010]          ; 0x0f1c
    mov ax, word [bp - 0x0004]       ; 0x0f1f
    shl ax, 1                        ; 0x0f22
    add ax, word [bp + 0x8]          ; 0x0f24
    push ax                          ; 0x0f27
    mov ax, word [bp - 0x0002]       ; 0x0f28
    shl ax, 1                        ; 0x0f2b
    add ax, word [bp + 0x6]          ; 0x0f2d
    inc ax                           ; 0x0f30
    push ax                          ; 0x0f31
    call ds_dispatch_e8f4            ; 0x0f32
    add sp, byte 6                   ; 0x0f35
    push word [bp - 0x0010]          ; 0x0f38
    mov ax, word [bp - 0x0004]       ; 0x0f3b
    shl ax, 1                        ; 0x0f3e
    add ax, word [bp + 0x8]          ; 0x0f40
    inc ax                           ; 0x0f43
    push ax                          ; 0x0f44
    mov ax, word [bp - 0x0002]       ; 0x0f45
    shl ax, 1                        ; 0x0f48
    add ax, word [bp + 0x6]          ; 0x0f4a
    push ax                          ; 0x0f4d
    call ds_dispatch_e8f4            ; 0x0f4e
    add sp, byte 6                   ; 0x0f51
    mov ax, 1                        ; 0x0f54
    push ax                          ; 0x0f57
    push word [bp - 0x0010]          ; 0x0f58
    call api_idx_0002_3              ; 0x0f5b
    add sp, byte 4                   ; 0x0f5e
    push ax                          ; 0x0f61
    mov ax, word [bp - 0x0004]       ; 0x0f62
    shl ax, 1                        ; 0x0f65
    add ax, word [bp + 0x8]          ; 0x0f67
    inc ax                           ; 0x0f6a
    push ax                          ; 0x0f6b
    mov ax, word [bp - 0x0002]       ; 0x0f6c
    shl ax, 1                        ; 0x0f6f
    add ax, word [bp + 0x6]          ; 0x0f71
    inc ax                           ; 0x0f74
    push ax                          ; 0x0f75
    call ds_dispatch_e8f4            ; 0x0f76
    add sp, byte 6                   ; 0x0f79
@..api_idx_0010.l4:
    inc word [bp - 0x000e]           ; 0x0f7c
    inc word [bp - 0x0002]           ; 0x0f7f
@..api_idx_0010.l5:
    mov ax, word [bp - 0x0002]       ; 0x0f82
    cmp ax, word [bp - 0x000a]       ; 0x0f85
    jge short @..api_idx_0010.l6     ; 0x0f88
    jmp near @..api_idx_0010.l2      ; 0x0f8a
@..api_idx_0010.l6:
    inc word [bp - 0x0004]           ; 0x0f8d
@..api_idx_0010.l7:
    mov ax, word [bp - 0x000c]       ; 0x0f90
    dec ax                           ; 0x0f93
    dec ax                           ; 0x0f94
    cmp ax, word [bp - 0x0004]       ; 0x0f95
    jle short @..api_idx_0010.l8     ; 0x0f98
    jmp near @..api_idx_0010.l1      ; 0x0f9a
@..api_idx_0010.l8:
    ret                              ; 0x0f9d
api_idx_000a:
    mov ax, 0xfff6                   ; 0x0f9e
    call ds_dispatch_f40b            ; 0x0fa1
    mov ax, 0                        ; 0x0fa4
    push ax                          ; 0x0fa7
    push ax                          ; 0x0fa8
    push word [data_940c]            ; 0x0fa9
    push word [data_940a]            ; 0x0fad
    call ds_dispatch_e942            ; 0x0fb1
    add sp, byte 8                   ; 0x0fb4
    cmp word [data_942e], byte 0     ; 0x0fb7
    jle short @..api_idx_000a.l1     ; 0x0fbc
    mov byte [bp - 0x000a], 1        ; 0x0fbe
    mov byte [bp - 0x0009], 0        ; 0x0fc2
    mov ax, 0                        ; 0x0fc6
    push ax                          ; 0x0fc9
    push ax                          ; 0x0fca
    lea ax, word [bp - 0x000a]       ; 0x0fcb
    push ax                          ; 0x0fce
    mov ax, 0                        ; 0x0fcf
    push ax                          ; 0x0fd2
    mov ax, 0xc7                     ; 0x0fd3
    push ax                          ; 0x0fd6
    mov ax, 0x41                     ; 0x0fd7
    sub ax, word [data_942e]         ; 0x0fda
    push ax                          ; 0x0fde
    mov ax, 0x13f                    ; 0x0fdf
    push ax                          ; 0x0fe2
    mov ax, 0                        ; 0x0fe3
    push ax                          ; 0x0fe6
    mov ax, 0x2d                     ; 0x0fe7
    push ax                          ; 0x0fea
    mov ax, 0x5a                     ; 0x0feb
    push ax                          ; 0x0fee
    mov ax, 0xf                      ; 0x0fef
    push ax                          ; 0x0ff2
    call ds_dispatch_efd1            ; 0x0ff3
    add sp, byte 0x16                ; 0x0ff6
@..api_idx_000a.l1:
    mov ax, 5                        ; 0x0ff9
    cmp word [data_9430], byte 0     ; 0x0ffc
    jne short @..api_idx_000a.l2     ; 0x1001
    mov ax, word [bp + 0x4]          ; 0x1003
    inc ax                           ; 0x1006
    inc ax                           ; 0x1007
@..api_idx_000a.l2:
    mov byte [bp - 0x000a], al       ; 0x1008
    mov byte [bp - 0x0009], 0        ; 0x100b
    mov ax, 0                        ; 0x100f
    push ax                          ; 0x1012
    push ax                          ; 0x1013
    lea ax, word [bp - 0x000a]       ; 0x1014
    push ax                          ; 0x1017
    mov ax, 0                        ; 0x1018
    push ax                          ; 0x101b
    mov ax, 0xc7                     ; 0x101c
    push ax                          ; 0x101f
    mov ax, 0                        ; 0x1020
    push ax                          ; 0x1023
    mov ax, 0x13f                    ; 0x1024
    push ax                          ; 0x1027
    mov ax, 0                        ; 0x1028
    push ax                          ; 0x102b
    mov ax, 0x14                     ; 0x102c
    sub ax, word [data_942e]         ; 0x102f
    add ax, strict word 0x19         ; 0x1033
    push ax                          ; 0x1036
    mov ax, 0x5a                     ; 0x1037
    push ax                          ; 0x103a
    mov ax, 0xf                      ; 0x103b
    push ax                          ; 0x103e
    call ds_dispatch_efd1            ; 0x103f
    add sp, byte 0x16                ; 0x1042
    ret                              ; 0x1045
api_idx_007c:
    mov ax, 0xff84                   ; 0x1046
    call ds_dispatch_f40b            ; 0x1049
    mov ax, 0                        ; 0x104c
    push ax                          ; 0x104f
    push ax                          ; 0x1050
    push word [data_93f0]            ; 0x1051
    push word [data_93ee]            ; 0x1055
    call ds_dispatch_e942            ; 0x1059
    add sp, byte 8                   ; 0x105c
    mov ax, 0                        ; 0x105f
    push ax                          ; 0x1062
    push ax                          ; 0x1063
    push word [data_93f4]            ; 0x1064
    push word [data_93f2]            ; 0x1068
    call ds_dispatch_e942            ; 0x106c
    add sp, byte 8                   ; 0x106f
    mov ax, 0x12                     ; 0x1072
    push ax                          ; 0x1075
    mov ax, 0xe                      ; 0x1076
    push ax                          ; 0x1079
    push word [bp + 0x4]             ; 0x107a
    call api_idx_0010                ; 0x107d
    add sp, byte 6                   ; 0x1080
    mov ax, 0                        ; 0x1083
    push ax                          ; 0x1086
    push ax                          ; 0x1087
    call ds_dispatch_e823            ; 0x1088
    add sp, byte 4                   ; 0x108b
    mov ax, 0x4c                     ; 0x108e
    push ax                          ; 0x1091
    mov ax, 0x248                    ; 0x1092
    imul word [bp + 0x4]             ; 0x1095
    add ax, 0x5bf4                   ; 0x1098
    push ax                          ; 0x109b
    call ds_dispatch_fa90            ; 0x109c
    pop cx                           ; 0x109f
    mov cx, 6                        ; 0x10a0
    imul cx                          ; 0x10a3
    mov cx, data_0002                ; 0x10a5
    cwd                              ; 0x10a8
    idiv cx                          ; 0x10a9
    mov cx, ax                       ; 0x10ab
    mov ax, 0x28                     ; 0x10ad
    sub ax, cx                       ; 0x10b0
    push ax                          ; 0x10b2
    call ds_dispatch_e809            ; 0x10b3
    add sp, byte 4                   ; 0x10b6
    mov ax, 0                        ; 0x10b9
    push ax                          ; 0x10bc
    mov ax, 0x248                    ; 0x10bd
    imul word [bp + 0x4]             ; 0x10c0
    add ax, 0x5bf4                   ; 0x10c3
    push ax                          ; 0x10c6
    call ds_dispatch_e84e            ; 0x10c7
    add sp, byte 4                   ; 0x10ca
    mov ax, 0                        ; 0x10cd
    push ax                          ; 0x10d0
    mov ax, 1                        ; 0x10d1
    push ax                          ; 0x10d4
    call ds_dispatch_e823            ; 0x10d5
    add sp, byte 4                   ; 0x10d8
    mov ax, 6                        ; 0x10db
    push ax                          ; 0x10de
    mov ax, 0x5a                     ; 0x10df
    push ax                          ; 0x10e2
    call ds_dispatch_e809            ; 0x10e3
    add sp, byte 4                   ; 0x10e6
    lea ax, word [bp - 0x0058]       ; 0x10e9
    push ax                          ; 0x10ec
    mov ax, 0x248                    ; 0x10ed
    imul word [bp + 0x4]             ; 0x10f0
    mov bx, ax                       ; 0x10f3
    mov al, byte [bx + 0x5e2c]       ; 0x10f5
    sub ah, ah                       ; 0x10f9
    add ax, 0x8c                     ; 0x10fb
    push ax                          ; 0x10fe
    call ds_dispatch_b53b            ; 0x10ff
    add sp, byte 4                   ; 0x1102
    mov ax, 0                        ; 0x1105
    push ax                          ; 0x1108
    mov al, byte [bp - 0x0058]       ; 0x1109
    sub ah, ah                       ; 0x110c
    push ax                          ; 0x110e
    call ds_dispatch_e830            ; 0x110f
    add sp, byte 4                   ; 0x1112
    mov ax, 0                        ; 0x1115
    push ax                          ; 0x1118
    mov ax, 0x2d                     ; 0x1119
    push ax                          ; 0x111c
    call ds_dispatch_e830            ; 0x111d
    add sp, byte 4                   ; 0x1120
    lea ax, word [bp - 0x0058]       ; 0x1123
    push ax                          ; 0x1126
    mov ax, 0x248                    ; 0x1127
    imul word [bp + 0x4]             ; 0x112a
    mov bx, ax                       ; 0x112d
    mov al, byte [bx + 0x5e2b]       ; 0x112f
    sub ah, ah                       ; 0x1133
    add ax, strict word 0x64         ; 0x1135
    push ax                          ; 0x1138
    call ds_dispatch_b53b            ; 0x1139
    add sp, byte 4                   ; 0x113c
    mov ax, 0                        ; 0x113f
    push ax                          ; 0x1142
    lea ax, word [bp - 0x0058]       ; 0x1143
    push ax                          ; 0x1146
    call ds_dispatch_e84e            ; 0x1147
    add sp, byte 4                   ; 0x114a
    mov ax, 0                        ; 0x114d
    push ax                          ; 0x1150
    mov ax, 0x84                     ; 0x1151
    push ax                          ; 0x1154
    call ds_dispatch_e823            ; 0x1155
    add sp, byte 4                   ; 0x1158
    mov ax, 0xc                      ; 0x115b
    push ax                          ; 0x115e
    mov ax, 0x5a                     ; 0x115f
    push ax                          ; 0x1162
    call ds_dispatch_e809            ; 0x1163
    add sp, byte 4                   ; 0x1166
    lea ax, word [bp - 0x0058]       ; 0x1169
    push ax                          ; 0x116c
    mov ax, 0x248                    ; 0x116d
    imul word [bp + 0x4]             ; 0x1170
    mov bx, ax                       ; 0x1173
    mov al, byte [bx + 0x5e2d]       ; 0x1175
    sub ah, ah                       ; 0x1179
    add ax, strict word 0x78         ; 0x117b
    push ax                          ; 0x117e
    call ds_dispatch_b53b            ; 0x117f
    add sp, byte 4                   ; 0x1182
    mov ax, 0                        ; 0x1185
    push ax                          ; 0x1188
    lea ax, word [bp - 0x0058]       ; 0x1189
    push ax                          ; 0x118c
    call ds_dispatch_e84e            ; 0x118d
    add sp, byte 4                   ; 0x1190
    mov ax, 0x12                     ; 0x1193
    push ax                          ; 0x1196
    mov ax, 0x5a                     ; 0x1197
    push ax                          ; 0x119a
    call ds_dispatch_e809            ; 0x119b
    add sp, byte 4                   ; 0x119e
    lea ax, word [bp - 0x0058]       ; 0x11a1
    push ax                          ; 0x11a4
    mov ax, 0xc8                     ; 0x11a5
    push ax                          ; 0x11a8
    call ds_dispatch_b53b            ; 0x11a9
    add sp, byte 4                   ; 0x11ac
    mov ax, 0                        ; 0x11af
    push ax                          ; 0x11b2
    lea ax, word [bp - 0x0058]       ; 0x11b3
    push ax                          ; 0x11b6
    call ds_dispatch_e84e            ; 0x11b7
    add sp, byte 4                   ; 0x11ba
    mov ax, 0                        ; 0x11bd
    push ax                          ; 0x11c0
    mov ax, 4                        ; 0x11c1
    push ax                          ; 0x11c4
    mov ax, 0x248                    ; 0x11c5
    imul word [bp + 0x4]             ; 0x11c8
    mov bx, ax                       ; 0x11cb
    push word [bx + 0x5c18]          ; 0x11cd
    call ds_dispatch_b2e7            ; 0x11d1
    add sp, byte 6                   ; 0x11d4
    mov ax, 0x248                    ; 0x11d7
    imul word [bp + 0x4]             ; 0x11da
    mov bx, ax                       ; 0x11dd
    mov ax, word [bx + 0x5bfc]       ; 0x11df
    mov dx, word [bx + 0x5bfe]       ; 0x11e3
    mov cx, 0x16d                    ; 0x11e7
    mov bx, 0                        ; 0x11ea
    call ds_dispatch_f99f            ; 0x11ed
    add ax, strict word 0xffee       ; 0x11f0
    adc dx, byte 0xff                ; 0x11f3
    mov cx, 4                        ; 0x11f6
    mov bx, 0                        ; 0x11f9
    call ds_dispatch_f99f            ; 0x11fc
    push ax                          ; 0x11ff
    push dx                          ; 0x1200
    mov ax, 0x248                    ; 0x1201
    imul word [bp + 0x4]             ; 0x1204
    mov bx, ax                       ; 0x1207
    mov ax, word [bx + 0x5c1a]       ; 0x1209
    cwd                              ; 0x120d
    mov cx, ax                       ; 0x120e
    mov bx, dx                       ; 0x1210
    pop dx                           ; 0x1212
    pop ax                           ; 0x1213
    add ax, cx                       ; 0x1214
    adc dx, bx                       ; 0x1216
    mov cx, ax                       ; 0x1218
    mov bx, dx                       ; 0x121a
    add ax, strict word 0xffff       ; 0x121c
    adc dx, byte 0xff                ; 0x121f
    mov cx, ax                       ; 0x1222
    mov bx, dx                       ; 0x1224
    mov ax, 0x14                     ; 0x1226
    mov dx, 0                        ; 0x1229
    sub ax, cx                       ; 0x122c
    sbb dx, bx                       ; 0x122e
    push ax                          ; 0x1230
    push dx                          ; 0x1231
    mov ax, 0x248                    ; 0x1232
    imul word [bp + 0x4]             ; 0x1235
    mov bx, ax                       ; 0x1238
    mov al, byte [bx + 0x5d67]       ; 0x123a
    sub ah, ah                       ; 0x123e
    cwd                              ; 0x1240
    mov cx, ax                       ; 0x1241
    mov bx, dx                       ; 0x1243
    pop dx                           ; 0x1245
    pop ax                           ; 0x1246
    push ax                          ; 0x1247
    push dx                          ; 0x1248
    mul bx                           ; 0x1249
    mov bx, ax                       ; 0x124b
    pop ax                           ; 0x124d
    mul cx                           ; 0x124e
    add bx, ax                       ; 0x1250
    pop ax                           ; 0x1252
    mul cx                           ; 0x1253
    add dx, bx                       ; 0x1255
    mov cx, 0x12                     ; 0x1257
    mov bx, 0                        ; 0x125a
    call ds_dispatch_f99f            ; 0x125d
    mov word [data_942e], ax         ; 0x1260
    mov ax, 0x14                     ; 0x1263
    push ax                          ; 0x1266
    mov ax, 0                        ; 0x1267
    push ax                          ; 0x126a
    push word [data_942e]            ; 0x126b
    call ds_dispatch_b7c2            ; 0x126f
    add sp, byte 6                   ; 0x1272
    mov word [data_942e], ax         ; 0x1275
    mov ax, 0x248                    ; 0x1278
    imul word [bp + 0x4]             ; 0x127b
    mov bx, ax                       ; 0x127e
    cmp byte [bx + 0x5e2f], 3        ; 0x1280
    jae short @..local.l16           ; 0x1285
    mov ax, 0                        ; 0x1287
    jmp short @..local.l17           ; 0x128a
@..local.l16:
    mov ax, 1                        ; 0x128c
@..local.l17:
    mov word [data_9430], ax         ; 0x128f
    mov word [data_9432], 0          ; 0x1292
    push word [data_9432]            ; 0x1298
    call api_idx_000a                ; 0x129c
    pop cx                           ; 0x129f
    mov ax, 0                        ; 0x12a0
    push ax                          ; 0x12a3
    mov ax, 0x55                     ; 0x12a4
    push ax                          ; 0x12a7
    call ds_dispatch_e823            ; 0x12a8
    add sp, byte 4                   ; 0x12ab
    mov word [bp - 0x0002], 0        ; 0x12ae
@..local.l18:
    mov ax, 6                        ; 0x12b3
    imul word [bp - 0x0002]          ; 0x12b6
    add ax, strict word 0x23         ; 0x12b9
    push ax                          ; 0x12bc
    mov ax, 0x73                     ; 0x12bd
    push ax                          ; 0x12c0
    call ds_dispatch_e809            ; 0x12c1
    add sp, byte 4                   ; 0x12c4
    lea ax, word [bp - 0x0058]       ; 0x12c7
    push ax                          ; 0x12ca
    mov ax, word [bp - 0x0002]       ; 0x12cb
    add ax, 0xcc                     ; 0x12ce
    push ax                          ; 0x12d1
    call ds_dispatch_b53b            ; 0x12d2
    add sp, byte 4                   ; 0x12d5
    mov ax, 0                        ; 0x12d8
    push ax                          ; 0x12db
    lea ax, word [bp - 0x0058]       ; 0x12dc
    push ax                          ; 0x12df
    call ds_dispatch_e84e            ; 0x12e0
    add sp, byte 4                   ; 0x12e3
    mov ax, 0                        ; 0x12e6
    push ax                          ; 0x12e9
    mov ax, 3                        ; 0x12ea
    push ax                          ; 0x12ed
    mov ax, 0x248                    ; 0x12ee
    imul word [bp + 0x4]             ; 0x12f1
    add ax, word [bp - 0x0002]       ; 0x12f4
    mov bx, ax                       ; 0x12f7
    mov al, byte [bx + 0x5d64]       ; 0x12f9
    sub ah, ah                       ; 0x12fd
    push ax                          ; 0x12ff
    call ds_dispatch_b2e7            ; 0x1300
    add sp, byte 6                   ; 0x1303
    inc word [bp - 0x0002]           ; 0x1306
    mov ax, word [bp - 0x0002]       ; 0x1309
    cmp ax, strict word 8            ; 0x130c
    jl short @..local.l18            ; 0x130f
    mov ax, 0                        ; 0x1311
    push ax                          ; 0x1314
    mov ax, 0xfd                     ; 0x1315
    push ax                          ; 0x1318
    call ds_dispatch_e823            ; 0x1319
    add sp, byte 4                   ; 0x131c
    lea ax, word [bp - 0x0058]       ; 0x131f
    push ax                          ; 0x1322
    mov ax, 0xc9                     ; 0x1323
    push ax                          ; 0x1326
    call ds_dispatch_b53b            ; 0x1327
    add sp, byte 4                   ; 0x132a
    mov ax, 6                        ; 0x132d
    push ax                          ; 0x1330
    mov ax, 0xe4                     ; 0x1331
    push ax                          ; 0x1334
    call ds_dispatch_e809            ; 0x1335
    add sp, byte 4                   ; 0x1338
    mov ax, 0                        ; 0x133b
    push ax                          ; 0x133e
    lea ax, word [bp - 0x0058]       ; 0x133f
    push ax                          ; 0x1342
    call ds_dispatch_e84e            ; 0x1343
    add sp, byte 4                   ; 0x1346
    lea ax, word [bp - 0x0058]       ; 0x1349
    push ax                          ; 0x134c
    mov ax, 0x248                    ; 0x134d
    imul word [bp + 0x4]             ; 0x1350
    mov bx, ax                       ; 0x1353
    mov al, byte [bx + 0x5e2d]       ; 0x1355
    sub ah, ah                       ; 0x1359
    mov cx, 0xa                      ; 0x135b
    imul cx                          ; 0x135e
    push ax                          ; 0x1360
    mov al, byte [bx + 0x5e2e]       ; 0x1361
    sub ah, ah                       ; 0x1365
    mov cx, ax                       ; 0x1367
    pop ax                           ; 0x1369
    add ax, cx                       ; 0x136a
    add ax, 0x320                    ; 0x136c
    push ax                          ; 0x136f
    call ds_dispatch_b53b            ; 0x1370
    add sp, byte 4                   ; 0x1373
    mov ax, 6                        ; 0x1376
    push ax                          ; 0x1379
    lea ax, word [bp - 0x0058]       ; 0x137a
    push ax                          ; 0x137d
    call ds_dispatch_fa90            ; 0x137e
    pop cx                           ; 0x1381
    mov cx, 0x34                     ; 0x1382
    sub cx, ax                       ; 0x1385
    mov ax, 6                        ; 0x1387
    imul cx                          ; 0x138a
    push ax                          ; 0x138c
    call ds_dispatch_e809            ; 0x138d
    add sp, byte 4                   ; 0x1390
    mov ax, 0                        ; 0x1393
    push ax                          ; 0x1396
    lea ax, word [bp - 0x0058]       ; 0x1397
    push ax                          ; 0x139a
    call ds_dispatch_e84e            ; 0x139b
    add sp, byte 4                   ; 0x139e
    mov ax, 0                        ; 0x13a1
    push ax                          ; 0x13a4
    mov ax, 0x47                     ; 0x13a5
    push ax                          ; 0x13a8
    call ds_dispatch_e823            ; 0x13a9
    add sp, byte 4                   ; 0x13ac
    lea ax, word [bp - 0x0058]       ; 0x13af
    push ax                          ; 0x13b2
    mov ax, 0xca                     ; 0x13b3
    push ax                          ; 0x13b6
    call ds_dispatch_b53b            ; 0x13b7
    add sp, byte 4                   ; 0x13ba
    mov ax, 0xc                      ; 0x13bd
    push ax                          ; 0x13c0
    mov ax, 0xe4                     ; 0x13c1
    push ax                          ; 0x13c4
    call ds_dispatch_e809            ; 0x13c5
    add sp, byte 4                   ; 0x13c8
    mov ax, 0                        ; 0x13cb
    push ax                          ; 0x13ce
    lea ax, word [bp - 0x0058]       ; 0x13cf
    push ax                          ; 0x13d2
    call ds_dispatch_e84e            ; 0x13d3
    add sp, byte 4                   ; 0x13d6
    mov ax, 0                        ; 0x13d9
    push ax                          ; 0x13dc
    mov ax, 0x20                     ; 0x13dd
    push ax                          ; 0x13e0
    call ds_dispatch_e830            ; 0x13e1
    add sp, byte 4                   ; 0x13e4
    mov ax, 0                        ; 0x13e7
    push ax                          ; 0x13ea
    mov ax, 0xa                      ; 0x13eb
    push ax                          ; 0x13ee
    mov ax, 0x248                    ; 0x13ef
    imul word [bp + 0x4]             ; 0x13f2
    mov bx, ax                       ; 0x13f5
    push word [bx + 0x5c02]          ; 0x13f7
    push word [bx + 0x5c00]          ; 0x13fb
    call ds_dispatch_b293            ; 0x13ff
    add sp, byte 8                   ; 0x1402
    lea ax, word [bp - 0x0058]       ; 0x1405
    push ax                          ; 0x1408
    mov ax, 0xcb                     ; 0x1409
    push ax                          ; 0x140c
    call ds_dispatch_b53b            ; 0x140d
    add sp, byte 4                   ; 0x1410
    mov ax, 0x12                     ; 0x1413
    push ax                          ; 0x1416
    mov ax, 0xe4                     ; 0x1417
    push ax                          ; 0x141a
    call ds_dispatch_e809            ; 0x141b
    add sp, byte 4                   ; 0x141e
    mov ax, 0                        ; 0x1421
    push ax                          ; 0x1424
    lea ax, word [bp - 0x0058]       ; 0x1425
    push ax                          ; 0x1428
    call ds_dispatch_e84e            ; 0x1429
    add sp, byte 4                   ; 0x142c
    mov ax, 0                        ; 0x142f
    push ax                          ; 0x1432
    mov ax, 0x20                     ; 0x1433
    push ax                          ; 0x1436
    call ds_dispatch_e830            ; 0x1437
    add sp, byte 4                   ; 0x143a
    mov ax, 0                        ; 0x143d
    push ax                          ; 0x1440
    mov ax, 0xa                      ; 0x1441
    push ax                          ; 0x1444
    mov ax, 0x248                    ; 0x1445
    imul word [bp + 0x4]             ; 0x1448
    mov bx, ax                       ; 0x144b
    push word [bx + 0x5c06]          ; 0x144d
    push word [bx + 0x5c04]          ; 0x1451
    call ds_dispatch_b293            ; 0x1455
    add sp, byte 8                   ; 0x1458
    mov ax, 0                        ; 0x145b
    push ax                          ; 0x145e
    mov ax, 0x1d                     ; 0x145f
    push ax                          ; 0x1462
    call ds_dispatch_e823            ; 0x1463
    add sp, byte 4                   ; 0x1466
    lea ax, word [bp - 0x0058]       ; 0x1469
    push ax                          ; 0x146c
    mov ax, 0xd4                     ; 0x146d
    push ax                          ; 0x1470
    call ds_dispatch_b53b            ; 0x1471
    add sp, byte 4                   ; 0x1474
    mov ax, data_005d                ; 0x1477
    push ax                          ; 0x147a
    mov ax, 6                        ; 0x147b
    push ax                          ; 0x147e
    call ds_dispatch_e809            ; 0x147f
    add sp, byte 4                   ; 0x1482
    mov ax, 0                        ; 0x1485
    push ax                          ; 0x1488
    lea ax, word [bp - 0x0058]       ; 0x1489
    push ax                          ; 0x148c
    call ds_dispatch_e84e            ; 0x148d
    add sp, byte 4                   ; 0x1490
    mov ax, 0                        ; 0x1493
    push ax                          ; 0x1496
    mov ax, 0x20                     ; 0x1497
    push ax                          ; 0x149a
    call ds_dispatch_e830            ; 0x149b
    add sp, byte 4                   ; 0x149e
    mov ax, 0                        ; 0x14a1
    push ax                          ; 0x14a4
    mov ax, 0x1b                     ; 0x14a5
    push ax                          ; 0x14a8
    call ds_dispatch_e823            ; 0x14a9
    add sp, byte 4                   ; 0x14ac
    lea ax, word [bp - 0x0058]       ; 0x14af
    push ax                          ; 0x14b2
    mov ax, 0x248                    ; 0x14b3
    imul word [bp + 0x4]             ; 0x14b6
    mov bx, ax                       ; 0x14b9
    push word [bx + 0x5c0c]          ; 0x14bb
    call ds_dispatch_b27d            ; 0x14bf
    add sp, byte 4                   ; 0x14c2
    mov ax, 0                        ; 0x14c5
    push ax                          ; 0x14c8
    lea ax, word [bp - 0x0058]       ; 0x14c9
    push ax                          ; 0x14cc
    call ds_dispatch_e84e            ; 0x14cd
    add sp, byte 4                   ; 0x14d0
    mov ax, 0                        ; 0x14d3
    push ax                          ; 0x14d6
    mov ax, 0x2f                     ; 0x14d7
    push ax                          ; 0x14da
    call ds_dispatch_e830            ; 0x14db
    add sp, byte 4                   ; 0x14de
    lea ax, word [bp - 0x0058]       ; 0x14e1
    push ax                          ; 0x14e4
    mov ax, 0x248                    ; 0x14e5
    imul word [bp + 0x4]             ; 0x14e8
    mov bx, ax                       ; 0x14eb
    push word [bx + 0x5c0e]          ; 0x14ed
    call ds_dispatch_b27d            ; 0x14f1
    add sp, byte 4                   ; 0x14f4
    mov ax, 0                        ; 0x14f7
    push ax                          ; 0x14fa
    lea ax, word [bp - 0x0058]       ; 0x14fb
    push ax                          ; 0x14fe
    call ds_dispatch_e84e            ; 0x14ff
    add sp, byte 4                   ; 0x1502
    mov ax, 0                        ; 0x1505
    push ax                          ; 0x1508
    mov ax, 0x1d                     ; 0x1509
    push ax                          ; 0x150c
    call ds_dispatch_e823            ; 0x150d
    add sp, byte 4                   ; 0x1510
    lea ax, word [bp - 0x0058]       ; 0x1513
    push ax                          ; 0x1516
    mov ax, 0xd5                     ; 0x1517
    push ax                          ; 0x151a
    call ds_dispatch_b53b            ; 0x151b
    add sp, byte 4                   ; 0x151e
    mov ax, 0x63                     ; 0x1521
    push ax                          ; 0x1524
    mov ax, 6                        ; 0x1525
    push ax                          ; 0x1528
    call ds_dispatch_e809            ; 0x1529
    add sp, byte 4                   ; 0x152c
    mov ax, 0                        ; 0x152f
    push ax                          ; 0x1532
    lea ax, word [bp - 0x0058]       ; 0x1533
    push ax                          ; 0x1536
    call ds_dispatch_e84e            ; 0x1537
    add sp, byte 4                   ; 0x153a
    mov ax, 0                        ; 0x153d
    push ax                          ; 0x1540
    mov ax, 0x20                     ; 0x1541
    push ax                          ; 0x1544
    call ds_dispatch_e830            ; 0x1545
    add sp, byte 4                   ; 0x1548
    mov ax, 0                        ; 0x154b
    push ax                          ; 0x154e
    mov ax, 0x1b                     ; 0x154f
    push ax                          ; 0x1552
    call ds_dispatch_e823            ; 0x1553
    add sp, byte 4                   ; 0x1556
    mov ax, 0x248                    ; 0x1559
    imul word [bp + 0x4]             ; 0x155c
    mov bx, ax                       ; 0x155f
    mov ax, word [bx + 0x5c10]       ; 0x1561
    mov cx, 0x64                     ; 0x1565
    imul cx                          ; 0x1568
    mov cx, word [bx + 0x5c12]       ; 0x156a
    cwd                              ; 0x156e
    idiv cx                          ; 0x156f
    mov word [bp - 0x0008], ax       ; 0x1571
    cmp ax, strict word 1            ; 0x1574
    jge short @..local.l19           ; 0x1577
    cmp word [bx + 0x5c10], byte 0   ; 0x1579
    jle short @..local.l19           ; 0x157e
    mov ax, 1                        ; 0x1580
    jmp short @..local.l20           ; 0x1583
@..local.l19:
    mov ax, word [bp - 0x0008]       ; 0x1585
@..local.l20:
    mov word [bp - 0x0008], ax       ; 0x1588
    lea ax, word [bp - 0x0058]       ; 0x158b
    push ax                          ; 0x158e
    push word [bp - 0x0008]          ; 0x158f
    call ds_dispatch_b27d            ; 0x1592
    add sp, byte 4                   ; 0x1595
    mov ax, 0                        ; 0x1598
    push ax                          ; 0x159b
    lea ax, word [bp - 0x0058]       ; 0x159c
    push ax                          ; 0x159f
    call ds_dispatch_e84e            ; 0x15a0
    add sp, byte 4                   ; 0x15a3
    mov ax, 0                        ; 0x15a6
    push ax                          ; 0x15a9
    mov ax, 0x9098                   ; 0x15aa
    push ax                          ; 0x15ad
    call ds_dispatch_e84e            ; 0x15ae
    add sp, byte 4                   ; 0x15b1
    mov ax, 0                        ; 0x15b4
    push ax                          ; 0x15b7
    mov ax, 0x1d                     ; 0x15b8
    push ax                          ; 0x15bb
    call ds_dispatch_e823            ; 0x15bc
    add sp, byte 4                   ; 0x15bf
    mov ax, 0                        ; 0x15c2
    push ax                          ; 0x15c5
    mov ax, 0x28                     ; 0x15c6
    push ax                          ; 0x15c9
    call ds_dispatch_e830            ; 0x15ca
    add sp, byte 4                   ; 0x15cd
    lea ax, word [bp - 0x0058]       ; 0x15d0
    push ax                          ; 0x15d3
    mov ax, 0x248                    ; 0x15d4
    imul word [bp + 0x4]             ; 0x15d7
    mov bx, ax                       ; 0x15da
    push word [bx + 0x5c12]          ; 0x15dc
    call ds_dispatch_b27d            ; 0x15e0
    add sp, byte 4                   ; 0x15e3
    mov ax, 0                        ; 0x15e6
    push ax                          ; 0x15e9
    lea ax, word [bp - 0x0058]       ; 0x15ea
    push ax                          ; 0x15ed
    call ds_dispatch_e84e            ; 0x15ee
    add sp, byte 4                   ; 0x15f1
    mov ax, 0                        ; 0x15f4
    push ax                          ; 0x15f7
    mov ax, 0x29                     ; 0x15f8
    push ax                          ; 0x15fb
    call ds_dispatch_e830            ; 0x15fc
    add sp, byte 4                   ; 0x15ff
    mov ax, 0                        ; 0x1602
    push ax                          ; 0x1605
    mov ax, 0xc4                     ; 0x1606
    push ax                          ; 0x1609
    call ds_dispatch_e823            ; 0x160a
    add sp, byte 4                   ; 0x160d
    lea ax, word [bp - 0x0058]       ; 0x1610
    push ax                          ; 0x1613
    mov ax, 0xd6                     ; 0x1614
    push ax                          ; 0x1617
    call ds_dispatch_b53b            ; 0x1618
    add sp, byte 4                   ; 0x161b
    mov ax, data_005d                ; 0x161e
    push ax                          ; 0x1621
    mov ax, 0x5b                     ; 0x1622
    push ax                          ; 0x1625
    call ds_dispatch_e809            ; 0x1626
    add sp, byte 4                   ; 0x1629
    mov ax, 0                        ; 0x162c
    push ax                          ; 0x162f
    lea ax, word [bp - 0x0058]       ; 0x1630
    push ax                          ; 0x1633
    call ds_dispatch_e84e            ; 0x1634
    add sp, byte 4                   ; 0x1637
    mov ax, 0                        ; 0x163a
    push ax                          ; 0x163d
    mov ax, 0x20                     ; 0x163e
    push ax                          ; 0x1641
    call ds_dispatch_e830            ; 0x1642
    add sp, byte 4                   ; 0x1645
    lea ax, word [bp - 0x0058]       ; 0x1648
    push ax                          ; 0x164b
    mov ax, 0x248                    ; 0x164c
    imul word [bp + 0x4]             ; 0x164f
    mov bx, ax                       ; 0x1652
    push word [bx + 0x5c0a]          ; 0x1654
    push word [bx + 0x5c08]          ; 0x1658
    call ds_dispatch_b1db            ; 0x165c
    add sp, byte 6                   ; 0x165f
    mov ax, 0                        ; 0x1662
    push ax                          ; 0x1665
    lea ax, word [bp - 0x0058]       ; 0x1666
    push ax                          ; 0x1669
    call ds_dispatch_e84e            ; 0x166a
    add sp, byte 4                   ; 0x166d
    push word [bp + 0x4]             ; 0x1670
    call ds_dispatch_c58f            ; 0x1673
    pop cx                           ; 0x1676
    push word [bp + 0x4]             ; 0x1677
    call api_idx_0012                ; 0x167a
    pop cx                           ; 0x167d
    mov si, ax                       ; 0x167e
    lea di, word [bp - 0x007c]       ; 0x1680
    mov cx, ds                       ; 0x1683
    mov es, cx                       ; 0x1685
    mov cx, 7                        ; 0x1687
    rep movsw                        ; 0x168a
    mov al, byte [bp - 0x0072]       ; 0x168c
    push ax                          ; 0x168f
    mov ax, 0x248                    ; 0x1690
    imul word [bp + 0x4]             ; 0x1693
    mov bx, ax                       ; 0x1696
    pop ax                           ; 0x1698
    mov byte [bx + 0x5e33], al       ; 0x1699
    mov ax, 0                        ; 0x169d
    push ax                          ; 0x16a0
    push word [bp - 0x0070]          ; 0x16a1
    call ds_dispatch_e823            ; 0x16a4
    add sp, byte 4                   ; 0x16a7
    lea ax, word [bp - 0x0058]       ; 0x16aa
    push ax                          ; 0x16ad
    mov ax, 0xd7                     ; 0x16ae
    push ax                          ; 0x16b1
    call ds_dispatch_b53b            ; 0x16b2
    add sp, byte 4                   ; 0x16b5
    mov ax, 0x63                     ; 0x16b8
    push ax                          ; 0x16bb
    mov ax, 0x5b                     ; 0x16bc
    push ax                          ; 0x16bf
    call ds_dispatch_e809            ; 0x16c0
    add sp, byte 4                   ; 0x16c3
    mov ax, 0                        ; 0x16c6
    push ax                          ; 0x16c9
    lea ax, word [bp - 0x0058]       ; 0x16ca
    push ax                          ; 0x16cd
    call ds_dispatch_e84e            ; 0x16ce
    add sp, byte 4                   ; 0x16d1
    mov ax, 0                        ; 0x16d4
    push ax                          ; 0x16d7
    mov ax, 0x20                     ; 0x16d8
    push ax                          ; 0x16db
    call ds_dispatch_e830            ; 0x16dc
    add sp, byte 4                   ; 0x16df
    lea ax, word [bp - 0x0058]       ; 0x16e2
    push ax                          ; 0x16e5
    mov ax, 0x248                    ; 0x16e6
    imul word [bp + 0x4]             ; 0x16e9
    mov bx, ax                       ; 0x16ec
    mov ax, word [bx + 0x5c14]       ; 0x16ee
    mov cx, 0xa                      ; 0x16f2
    cwd                              ; 0x16f5
    idiv cx                          ; 0x16f6
    push ax                          ; 0x16f8
    call ds_dispatch_b27d            ; 0x16f9
    add sp, byte 4                   ; 0x16fc
    mov ax, 0                        ; 0x16ff
    push ax                          ; 0x1702
    lea ax, word [bp - 0x0058]       ; 0x1703
    push ax                          ; 0x1706
    call ds_dispatch_e84e            ; 0x1707
    add sp, byte 4                   ; 0x170a
    mov ax, 0                        ; 0x170d
    push ax                          ; 0x1710
    mov ax, 0x2f                     ; 0x1711
    push ax                          ; 0x1714
    call ds_dispatch_e830            ; 0x1715
    add sp, byte 4                   ; 0x1718
    lea ax, word [bp - 0x0058]       ; 0x171b
    push ax                          ; 0x171e
    mov ax, 0x248                    ; 0x171f
    imul word [bp + 0x4]             ; 0x1722
    mov bx, ax                       ; 0x1725
    mov ax, word [bx + 0x5c16]       ; 0x1727
    mov cx, 0xa                      ; 0x172b
    cwd                              ; 0x172e
    idiv cx                          ; 0x172f
    push ax                          ; 0x1731
    call ds_dispatch_b27d            ; 0x1732
    add sp, byte 4                   ; 0x1735
    mov ax, 0                        ; 0x1738
    push ax                          ; 0x173b
    lea ax, word [bp - 0x0058]       ; 0x173c
    push ax                          ; 0x173f
    call ds_dispatch_e84e            ; 0x1740
    add sp, byte 4                   ; 0x1743
    push word [bp + 0x4]             ; 0x1746
    call api_idx_0004_3              ; 0x1749
    pop cx                           ; 0x174c
    mov word [bp - 0x0004], 0        ; 0x174d
    mov ax, 0x248                    ; 0x1752
    imul word [bp + 0x4]             ; 0x1755
    mov bx, ax                       ; 0x1758
    mov al, byte [bx + 0x5e2f]       ; 0x175a
    sub ah, ah                       ; 0x175e
    shl ax, 1                        ; 0x1760
    mov bx, ax                       ; 0x1762
    mov ax, word [bx + 0x920]        ; 0x1764
    mov word [bp - 0x0006], ax       ; 0x1768
    cmp ax, strict word 0xffff       ; 0x176b
    jne short @..local.l21           ; 0x176e
    mov ax, 0x248                    ; 0x1770
    imul word [bp + 0x4]             ; 0x1773
    mov bx, ax                       ; 0x1776
    cmp byte [bx + 0x5d5c], 0        ; 0x1778
    jbe short @..local.l21           ; 0x177d
    mov ax, 0                        ; 0x177f
    jmp short @..local.l22           ; 0x1782
@..local.l21:
    mov ax, word [bp - 0x0006]       ; 0x1784
@..local.l22:
    mov word [bp - 0x0006], ax       ; 0x1787
    cmp ax, strict word 0            ; 0x178a
    jg short @..local.l23            ; 0x178d
    mov ax, 0x248                    ; 0x178f
    imul word [bp + 0x4]             ; 0x1792
    mov bx, ax                       ; 0x1795
    cmp byte [bx + 0x5d5d], 0        ; 0x1797
    jbe short @..local.l23           ; 0x179c
    mov ax, 1                        ; 0x179e
    jmp short @..local.l24           ; 0x17a1
@..local.l23:
    mov ax, word [bp - 0x0006]       ; 0x17a3
@..local.l24:
    mov word [bp - 0x0006], ax       ; 0x17a6
    cmp ax, strict word 0xffff       ; 0x17a9
    je short @..local.l25            ; 0x17ac
    mov ax, 0x2d                     ; 0x17ae
    push ax                          ; 0x17b1
    mov ax, 0x51                     ; 0x17b2
    push ax                          ; 0x17b5
    call ds_dispatch_e809            ; 0x17b6
    add sp, byte 4                   ; 0x17b9
    mov ax, 6                        ; 0x17bc
    push ax                          ; 0x17bf
    mov al, byte [bp - 0x0006]       ; 0x17c0
    sub ah, ah                       ; 0x17c3
    push ax                          ; 0x17c5
    call ds_dispatch_e830            ; 0x17c6
    add sp, byte 4                   ; 0x17c9
    inc word [bp - 0x0004]           ; 0x17cc
@..local.l25:
    mov word [bp - 0x006e], 6        ; 0x17cf
    mov word [bp - 0x006c], 7        ; 0x17d4
    mov word [bp - 0x006a], 5        ; 0x17d9
    mov word [bp - 0x0068], 4        ; 0x17de
    mov word [bp - 0x0066], 8        ; 0x17e3
    mov word [bp - 0x0064], 9        ; 0x17e8
    mov word [bp - 0x0062], 1        ; 0x17ed
    mov word [bp - 0x0006], 0xffff   ; 0x17f2
    mov word [bp - 0x0002], 0        ; 0x17f7
@..local.l26:
    mov ax, word [bp - 0x0002]       ; 0x17fc
    shl ax, 1                        ; 0x17ff
    mov bx, ax                       ; 0x1801
    add bx, bp                       ; 0x1803
    mov ax, word [bx - 0x006e]       ; 0x1805
    mov word [bp - 0x0008], ax       ; 0x1808
    cmp word [bp - 0x0004], byte 6   ; 0x180b
    jge short @..local.l27           ; 0x180f
    shl ax, 1                        ; 0x1811
    mov bx, ax                       ; 0x1813
    mov ax, word [bx + 0x92c]        ; 0x1815
    cmp ax, word [bp - 0x0006]       ; 0x1819
    je short @..local.l27            ; 0x181c
    mov ax, 0x248                    ; 0x181e
    imul word [bp + 0x4]             ; 0x1821
    add ax, word [bp - 0x0008]       ; 0x1824
    mov bx, ax                       ; 0x1827
    cmp byte [bx + 0x5d5a], 0        ; 0x1829
    jbe short @..local.l27           ; 0x182e
    mov ax, word [bp - 0x0004]       ; 0x1830
    mov cx, 3                        ; 0x1833
    cwd                              ; 0x1836
    idiv cx                          ; 0x1837
    mov ax, dx                       ; 0x1839
    mov cx, 0xb                      ; 0x183b
    imul cx                          ; 0x183e
    add ax, strict word 0x2d         ; 0x1840
    push ax                          ; 0x1843
    mov ax, word [bp - 0x0004]       ; 0x1844
    mov cx, 3                        ; 0x1847
    cwd                              ; 0x184a
    idiv cx                          ; 0x184b
    mov cx, 0x17                     ; 0x184d
    imul cx                          ; 0x1850
    add ax, strict word 0x51         ; 0x1852
    push ax                          ; 0x1855
    call ds_dispatch_e809            ; 0x1856
    add sp, byte 4                   ; 0x1859
    mov ax, 6                        ; 0x185c
    push ax                          ; 0x185f
    mov ax, word [bp - 0x0008]       ; 0x1860
    shl ax, 1                        ; 0x1863
    mov bx, ax                       ; 0x1865
    mov al, byte [bx + 0x92c]        ; 0x1867
    sub ah, ah                       ; 0x186b
    push ax                          ; 0x186d
    call ds_dispatch_e830            ; 0x186e
    add sp, byte 4                   ; 0x1871
    mov ax, word [bp - 0x0008]       ; 0x1874
    shl ax, 1                        ; 0x1877
    mov bx, ax                       ; 0x1879
    mov ax, word [bx + 0x92c]        ; 0x187b
    mov word [bp - 0x0006], ax       ; 0x187f
    inc word [bp - 0x0004]           ; 0x1882
@..local.l27:
    inc word [bp - 0x0002]           ; 0x1885
    mov ax, word [bp - 0x0002]       ; 0x1888
    cmp ax, strict word 7            ; 0x188b
    jge short @..local.l28           ; 0x188e
    jmp near @..local.l26            ; 0x1890
@..local.l28:
    ret                              ; 0x1893
api_idx_009e:
    mov ax, 0xff62                   ; 0x1894
    call ds_dispatch_f40b            ; 0x1897
    mov word [bp - 0x0004], 0        ; 0x189a
    cmp word [data_0e32], byte 0     ; 0x189f
    je short @..api_idx_009e.l1      ; 0x18a4
    lea ax, word [bp - 0x0008]       ; 0x18a6
    push ax                          ; 0x18a9
    lea ax, word [bp - 0x0006]       ; 0x18aa
    push ax                          ; 0x18ad
    call ds_dispatch_f053            ; 0x18ae
    add sp, byte 4                   ; 0x18b1
    mov word [bp - 0x0004], ax       ; 0x18b4
@..api_idx_009e.l1:
    mov ax, 0                        ; 0x18b7
    push ax                          ; 0x18ba
    push ax                          ; 0x18bb
    push word [data_93f0]            ; 0x18bc
    push word [data_93ee]            ; 0x18c0
    call ds_dispatch_e942            ; 0x18c4
    add sp, byte 8                   ; 0x18c7
    mov ax, 0                        ; 0x18ca
    push ax                          ; 0x18cd
    mov ax, 0x248                    ; 0x18ce
    imul word [bp + 0x4]             ; 0x18d1
    mov bx, ax                       ; 0x18d4
    mov al, byte [bx + 0x5e2d]       ; 0x18d6
    sub ah, ah                       ; 0x18da
    push ax                          ; 0x18dc
    lea ax, word [bp - 0x004c]       ; 0x18dd
    push ax                          ; 0x18e0
    mov ax, 0                        ; 0x18e1
    push ax                          ; 0x18e4
    call ds_dispatch_b63c            ; 0x18e5
    add sp, byte 8                   ; 0x18e8
    lea ax, word [bp - 0x009e]       ; 0x18eb
    push ax                          ; 0x18ef
    mov ax, 0xd9                     ; 0x18f0
    push ax                          ; 0x18f3
    call ds_dispatch_b53b            ; 0x18f4
    add sp, byte 4                   ; 0x18f7
    mov ax, data_005d                ; 0x18fa
    push ax                          ; 0x18fd
    mov ax, 6                        ; 0x18fe
    push ax                          ; 0x1901
    call ds_dispatch_e809            ; 0x1902
    add sp, byte 4                   ; 0x1905
    mov ax, 0                        ; 0x1908
    push ax                          ; 0x190b
    mov ax, 0x36                     ; 0x190c
    push ax                          ; 0x190f
    call ds_dispatch_e823            ; 0x1910
    add sp, byte 4                   ; 0x1913
    mov ax, 0                        ; 0x1916
    push ax                          ; 0x1919
    lea ax, word [bp - 0x009e]       ; 0x191a
    push ax                          ; 0x191e
    call ds_dispatch_e84e            ; 0x191f
    add sp, byte 4                   ; 0x1922
    mov ax, 0                        ; 0x1925
    push ax                          ; 0x1928
    mov ax, 0x34                     ; 0x1929
    push ax                          ; 0x192c
    call ds_dispatch_e823            ; 0x192d
    add sp, byte 4                   ; 0x1930
    lea ax, word [bp - 0x009e]       ; 0x1933
    push ax                          ; 0x1937
    mov ax, 0x248                    ; 0x1938
    imul word [bp + 0x4]             ; 0x193b
    mov bx, ax                       ; 0x193e
    mov ax, word [bx + 0x5bfc]       ; 0x1940
    mov dx, word [bx + 0x5bfe]       ; 0x1944
    mov cx, 0x16d                    ; 0x1948
    mov bx, 0                        ; 0x194b
    call ds_dispatch_f99f            ; 0x194e
    push ax                          ; 0x1951
    call ds_dispatch_b27d            ; 0x1952
    add sp, byte 4                   ; 0x1955
    mov ax, 0                        ; 0x1958
    push ax                          ; 0x195b
    lea ax, word [bp - 0x009e]       ; 0x195c
    push ax                          ; 0x1960
    call ds_dispatch_e84e            ; 0x1961
    add sp, byte 4                   ; 0x1964
    lea ax, word [bp - 0x009e]       ; 0x1967
    push ax                          ; 0x196b
    mov ax, 0xda                     ; 0x196c
    push ax                          ; 0x196f
    call ds_dispatch_b53b            ; 0x1970
    add sp, byte 4                   ; 0x1973
    mov ax, 0x63                     ; 0x1976
    push ax                          ; 0x1979
    mov ax, 6                        ; 0x197a
    push ax                          ; 0x197d
    call ds_dispatch_e809            ; 0x197e
    add sp, byte 4                   ; 0x1981
    mov ax, 0                        ; 0x1984
    push ax                          ; 0x1987
    mov ax, 0x58                     ; 0x1988
    push ax                          ; 0x198b
    call ds_dispatch_e823            ; 0x198c
    add sp, byte 4                   ; 0x198f
    mov ax, 0                        ; 0x1992
    push ax                          ; 0x1995
    lea ax, word [bp - 0x009e]       ; 0x1996
    push ax                          ; 0x199a
    call ds_dispatch_e84e            ; 0x199b
    add sp, byte 4                   ; 0x199e
    mov ax, 0                        ; 0x19a1
    push ax                          ; 0x19a4
    mov ax, 0x55                     ; 0x19a5
    push ax                          ; 0x19a8
    call ds_dispatch_e823            ; 0x19a9
    add sp, byte 4                   ; 0x19ac
    lea ax, word [bp - 0x009e]       ; 0x19af
    push ax                          ; 0x19b3
    mov ax, 0x248                    ; 0x19b4
    imul word [bp + 0x4]             ; 0x19b7
    mov bx, ax                       ; 0x19ba
    push word [bx + 0x5c1a]          ; 0x19bc
    call ds_dispatch_b27d            ; 0x19c0
    add sp, byte 4                   ; 0x19c3
    mov ax, 0                        ; 0x19c6
    push ax                          ; 0x19c9
    lea ax, word [bp - 0x009e]       ; 0x19ca
    push ax                          ; 0x19ce
    call ds_dispatch_e84e            ; 0x19cf
    add sp, byte 4                   ; 0x19d2
    mov ax, 0x248                    ; 0x19d5
    imul word [bp + 0x4]             ; 0x19d8
    mov bx, ax                       ; 0x19db
    cmp word [bx + 0x5c18], byte 0x10 ; 0x19dd
    jge short @..api_idx_009e.l2     ; 0x19e2
    mov ax, word [bx + 0x5c18]       ; 0x19e4
    shl ax, 1                        ; 0x19e8
    shl ax, 1                        ; 0x19ea
    mov bx, ax                       ; 0x19ec
    add bx, bp                       ; 0x19ee
    mov ax, word [bx - 0x0050]       ; 0x19f0
    mov dx, word [bx - 0x004e]       ; 0x19f3
    mov word [bp - 0x000a], dx       ; 0x19f6
    mov word [bp - 0x000c], ax       ; 0x19f9
    jmp short @..api_idx_009e.l3     ; 0x19fc
@..api_idx_009e.l2:
    mov ax, 0x248                    ; 0x19fe
    imul word [bp + 0x4]             ; 0x1a01
    mov bx, ax                       ; 0x1a04
    mov ax, word [bx + 0x5c18]       ; 0x1a06
    add ax, strict word 0xfff0       ; 0x1a0a
    mov word [bp - 0x004e], ax       ; 0x1a0d
    mov ax, word [bp - 0x0010]       ; 0x1a10
    mov dx, word [bp - 0x000e]       ; 0x1a13
    sub ax, word [bp - 0x0014]       ; 0x1a16
    sbb dx, word [bp - 0x0012]       ; 0x1a19
    push ax                          ; 0x1a1c
    push dx                          ; 0x1a1d
    mov ax, word [bp - 0x004e]       ; 0x1a1e
    cwd                              ; 0x1a21
    mov cx, ax                       ; 0x1a22
    mov bx, dx                       ; 0x1a24
    pop dx                           ; 0x1a26
    pop ax                           ; 0x1a27
    push ax                          ; 0x1a28
    push dx                          ; 0x1a29
    mul bx                           ; 0x1a2a
    mov bx, ax                       ; 0x1a2c
    pop ax                           ; 0x1a2e
    mul cx                           ; 0x1a2f
    add bx, ax                       ; 0x1a31
    pop ax                           ; 0x1a33
    mul cx                           ; 0x1a34
    add dx, bx                       ; 0x1a36
    add ax, word [bp - 0x0010]       ; 0x1a38
    adc dx, word [bp - 0x000e]       ; 0x1a3b
    mov word [bp - 0x000a], dx       ; 0x1a3e
    mov word [bp - 0x000c], ax       ; 0x1a41
@..api_idx_009e.l3:
    lea ax, word [bp - 0x009e]       ; 0x1a44
    push ax                          ; 0x1a48
    mov ax, 0xdb                     ; 0x1a49
    push ax                          ; 0x1a4c
    call ds_dispatch_b53b            ; 0x1a4d
    add sp, byte 4                   ; 0x1a50
    mov ax, data_005d                ; 0x1a53
    push ax                          ; 0x1a56
    mov ax, 0x5b                     ; 0x1a57
    push ax                          ; 0x1a5a
    call ds_dispatch_e809            ; 0x1a5b
    add sp, byte 4                   ; 0x1a5e
    mov ax, 0                        ; 0x1a61
    push ax                          ; 0x1a64
    mov ax, 0x87                     ; 0x1a65
    push ax                          ; 0x1a68
    call ds_dispatch_e823            ; 0x1a69
    add sp, byte 4                   ; 0x1a6c
    mov ax, 0                        ; 0x1a6f
    push ax                          ; 0x1a72
    lea ax, word [bp - 0x009e]       ; 0x1a73
    push ax                          ; 0x1a77
    call ds_dispatch_e84e            ; 0x1a78
    add sp, byte 4                   ; 0x1a7b
    mov ax, 0x63                     ; 0x1a7e
    push ax                          ; 0x1a81
    mov ax, 0x5b                     ; 0x1a82
    push ax                          ; 0x1a85
    call ds_dispatch_e809            ; 0x1a86
    add sp, byte 4                   ; 0x1a89
    mov ax, 0                        ; 0x1a8c
    push ax                          ; 0x1a8f
    mov ax, 0x85                     ; 0x1a90
    push ax                          ; 0x1a93
    call ds_dispatch_e823            ; 0x1a94
    add sp, byte 4                   ; 0x1a97
    mov ax, 0                        ; 0x1a9a
    push ax                          ; 0x1a9d
    mov ax, 8                        ; 0x1a9e
    push ax                          ; 0x1aa1
    mov ax, 0x248                    ; 0x1aa2
    imul word [bp + 0x4]             ; 0x1aa5
    mov bx, ax                       ; 0x1aa8
    mov cx, word [bx + 0x5c00]       ; 0x1aaa
    mov bx, word [bx + 0x5c02]       ; 0x1aae
    mov ax, word [bp - 0x000c]       ; 0x1ab2
    mov dx, word [bp - 0x000a]       ; 0x1ab5
    sub ax, cx                       ; 0x1ab8
    sbb dx, bx                       ; 0x1aba
    push dx                          ; 0x1abc
    push ax                          ; 0x1abd
    call ds_dispatch_b293            ; 0x1abe
    add sp, byte 8                   ; 0x1ac1
    mov ax, 0x69                     ; 0x1ac4
    push ax                          ; 0x1ac7
    mov ax, 0x97                     ; 0x1ac8
    push ax                          ; 0x1acb
    mov ax, data_005d                ; 0x1acc
    push ax                          ; 0x1acf
    mov ax, 6                        ; 0x1ad0
    push ax                          ; 0x1ad3
    call ds_dispatch_e8da            ; 0x1ad4
    add sp, byte 8                   ; 0x1ad7
    cmp word [data_0e32], byte 0     ; 0x1ada
    je short @..local.l31            ; 0x1adf
@..local.l29:
    cmp word [bp - 0x0004], byte 0   ; 0x1ae1
    je short @..local.l30            ; 0x1ae5
    lea ax, word [bp - 0x0008]       ; 0x1ae7
    push ax                          ; 0x1aea
    lea ax, word [bp - 0x0006]       ; 0x1aeb
    push ax                          ; 0x1aee
    call ds_dispatch_f053            ; 0x1aef
    add sp, byte 4                   ; 0x1af2
    test ax, ax                      ; 0x1af5
    je short @..local.l30            ; 0x1af7
    jmp short @..local.l29           ; 0x1af9
@..local.l30:
    jmp short @..local.l32           ; 0x1afb
@..local.l31:
    mov ax, 1                        ; 0x1afd
    push ax                          ; 0x1b00
    call ds_dispatch_eb32            ; 0x1b01
    pop cx                           ; 0x1b04
    sub ah, ah                       ; 0x1b05
    mov word [bp - 0x0002], ax       ; 0x1b07
    cmp word [bp - 0x0002], byte 0x0d ; 0x1b0a
    je short @..local.l32            ; 0x1b0e
    cmp word [bp - 0x0002], byte 0x1b ; 0x1b10
    jne short @..local.l31           ; 0x1b14
@..local.l32:
    ret                              ; 0x1b16
api_idx_0008:
    mov ax, 0xfff8                   ; 0x1b17
    call ds_dispatch_f40b            ; 0x1b1a
    mov ax, word [bp + 0x6]          ; 0x1b1d
    cwd                              ; 0x1b20
    idiv word [bp + 0x12]            ; 0x1b21
    imul word [bp + 0xe]             ; 0x1b24
    mov word [bp - 0x0002], ax       ; 0x1b27
    mov ax, word [bp + 0x6]          ; 0x1b2a
    cwd                              ; 0x1b2d
    idiv word [bp + 0x12]            ; 0x1b2e
    mov ax, dx                       ; 0x1b31
    imul word [bp + 0x10]            ; 0x1b33
    mov word [bp - 0x0004], ax       ; 0x1b36
    mov ax, word [bp + 0xa]          ; 0x1b39
    add ax, word [bp - 0x0004]       ; 0x1b3c
    add ax, strict word 9            ; 0x1b3f
    push ax                          ; 0x1b42
    mov ax, 6                        ; 0x1b43
    imul word [bp + 0xc]             ; 0x1b46
    add ax, word [bp + 0x8]          ; 0x1b49
    add ax, word [bp - 0x0002]       ; 0x1b4c
    inc ax                           ; 0x1b4f
    push ax                          ; 0x1b50
    mov ax, word [bp + 0xa]          ; 0x1b51
    add ax, word [bp - 0x0004]       ; 0x1b54
    dec ax                           ; 0x1b57
    push ax                          ; 0x1b58
    mov ax, word [bp + 0x8]          ; 0x1b59
    add ax, word [bp - 0x0002]       ; 0x1b5c
    dec ax                           ; 0x1b5f
    push ax                          ; 0x1b60
    call ds_dispatch_e928            ; 0x1b61
    add sp, byte 8                   ; 0x1b64
    mov word [bp - 0x0006], dx       ; 0x1b67
    mov word [bp - 0x0008], ax       ; 0x1b6a
    mov ax, 0                        ; 0x1b6d
    push ax                          ; 0x1b70
    mov ax, word [bp + 0xa]          ; 0x1b71
    add ax, word [bp - 0x0004]       ; 0x1b74
    add ax, strict word 8            ; 0x1b77
    push ax                          ; 0x1b7a
    mov ax, 6                        ; 0x1b7b
    imul word [bp + 0xc]             ; 0x1b7e
    add ax, word [bp + 0x8]          ; 0x1b81
    add ax, word [bp - 0x0002]       ; 0x1b84
    push ax                          ; 0x1b87
    mov ax, word [bp + 0xa]          ; 0x1b88
    add ax, word [bp - 0x0004]       ; 0x1b8b
    push ax                          ; 0x1b8e
    mov ax, word [bp + 0x8]          ; 0x1b8f
    add ax, word [bp - 0x0002]       ; 0x1b92
    push ax                          ; 0x1b95
    call ds_dispatch_bce3            ; 0x1b96
    add sp, byte 0x0a                ; 0x1b99
    mov ax, 0xc0                     ; 0x1b9c
    push ax                          ; 0x1b9f
    push word [bp + 0x14]            ; 0x1ba0
    call ds_dispatch_e823            ; 0x1ba3
    add sp, byte 4                   ; 0x1ba6
    mov ax, word [bp + 0xa]          ; 0x1ba9
    add ax, word [bp - 0x0004]       ; 0x1bac
    inc ax                           ; 0x1baf
    inc ax                           ; 0x1bb0
    push ax                          ; 0x1bb1
    push word [bp + 0x4]             ; 0x1bb2
    call ds_dispatch_fa90            ; 0x1bb5
    pop cx                           ; 0x1bb8
    mov cx, ax                       ; 0x1bb9
    mov ax, word [bp + 0xc]          ; 0x1bbb
    sub ax, cx                       ; 0x1bbe
    mov cx, 6                        ; 0x1bc0
    imul cx                          ; 0x1bc3
    mov cx, data_0002                ; 0x1bc5
    cwd                              ; 0x1bc8
    idiv cx                          ; 0x1bc9
    add ax, word [bp + 0x8]          ; 0x1bcb
    add ax, word [bp - 0x0002]       ; 0x1bce
    inc ax                           ; 0x1bd1
    push ax                          ; 0x1bd2
    call ds_dispatch_e809            ; 0x1bd3
    add sp, byte 4                   ; 0x1bd6
    mov ax, 0                        ; 0x1bd9
    push ax                          ; 0x1bdc
    push word [bp + 0x4]             ; 0x1bdd
    call ds_dispatch_e84e            ; 0x1be0
    add sp, byte 4                   ; 0x1be3
    mov ax, word [bp + 0xa]          ; 0x1be6
    add ax, word [bp - 0x0004]       ; 0x1be9
    add ax, strict word 9            ; 0x1bec
    push ax                          ; 0x1bef
    mov ax, 6                        ; 0x1bf0
    imul word [bp + 0xc]             ; 0x1bf3
    add ax, word [bp + 0x8]          ; 0x1bf6
    add ax, word [bp - 0x0002]       ; 0x1bf9
    inc ax                           ; 0x1bfc
    push ax                          ; 0x1bfd
    mov ax, word [bp + 0xa]          ; 0x1bfe
    add ax, word [bp - 0x0004]       ; 0x1c01
    dec ax                           ; 0x1c04
    push ax                          ; 0x1c05
    mov ax, word [bp + 0x8]          ; 0x1c06
    add ax, word [bp - 0x0002]       ; 0x1c09
    dec ax                           ; 0x1c0c
    push ax                          ; 0x1c0d
    call ds_dispatch_e8da            ; 0x1c0e
    add sp, byte 8                   ; 0x1c11
    mov ax, 1                        ; 0x1c14
    push ax                          ; 0x1c17
    push word [bp - 0x0006]          ; 0x1c18
    push word [bp - 0x0008]          ; 0x1c1b
    call ds_dispatch_e94f            ; 0x1c1e
    add sp, byte 6                   ; 0x1c21
    ret                              ; 0x1c24
loc_1c25:
    mov ax, 0                        ; 0x1c25
    call ds_dispatch_f40b            ; 0x1c28
    push word [bp + 0xc]             ; 0x1c2b
    mov ax, word [bp + 0x6]          ; 0x1c2e
    dec ax                           ; 0x1c31
    push ax                          ; 0x1c32
    mov ax, word [bp + 0x8]          ; 0x1c33
    inc ax                           ; 0x1c36
    push ax                          ; 0x1c37
    mov ax, word [bp + 0x6]          ; 0x1c38
    dec ax                           ; 0x1c3b
    push ax                          ; 0x1c3c
    mov ax, word [bp + 0x4]          ; 0x1c3d
    dec ax                           ; 0x1c40
    push ax                          ; 0x1c41
    call ds_dispatch_e901            ; 0x1c42
    add sp, byte 0x0a                ; 0x1c45
    push word [bp + 0xc]             ; 0x1c48
    mov ax, word [bp + 0xa]          ; 0x1c4b
    inc ax                           ; 0x1c4e
    push ax                          ; 0x1c4f
    mov ax, word [bp + 0x8]          ; 0x1c50
    inc ax                           ; 0x1c53
    push ax                          ; 0x1c54
    mov ax, word [bp + 0x6]          ; 0x1c55
    dec ax                           ; 0x1c58
    push ax                          ; 0x1c59
    mov ax, word [bp + 0x8]          ; 0x1c5a
    inc ax                           ; 0x1c5d
    push ax                          ; 0x1c5e
    call ds_dispatch_e901            ; 0x1c5f
    add sp, byte 0x0a                ; 0x1c62
    push word [bp + 0xc]             ; 0x1c65
    mov ax, word [bp + 0xa]          ; 0x1c68
    inc ax                           ; 0x1c6b
    push ax                          ; 0x1c6c
    mov ax, word [bp + 0x8]          ; 0x1c6d
    inc ax                           ; 0x1c70
    push ax                          ; 0x1c71
    mov ax, word [bp + 0xa]          ; 0x1c72
    inc ax                           ; 0x1c75
    push ax                          ; 0x1c76
    mov ax, word [bp + 0x4]          ; 0x1c77
    dec ax                           ; 0x1c7a
    push ax                          ; 0x1c7b
    call ds_dispatch_e901            ; 0x1c7c
    add sp, byte 0x0a                ; 0x1c7f
    push word [bp + 0xc]             ; 0x1c82
    mov ax, word [bp + 0xa]          ; 0x1c85
    inc ax                           ; 0x1c88
    push ax                          ; 0x1c89
    mov ax, word [bp + 0x4]          ; 0x1c8a
    dec ax                           ; 0x1c8d
    push ax                          ; 0x1c8e
    mov ax, word [bp + 0x6]          ; 0x1c8f
    dec ax                           ; 0x1c92
    push ax                          ; 0x1c93
    mov ax, word [bp + 0x4]          ; 0x1c94
    dec ax                           ; 0x1c97
    push ax                          ; 0x1c98
    call ds_dispatch_e901            ; 0x1c99
    add sp, byte 0x0a                ; 0x1c9c
    ret                              ; 0x1c9f
math_loc_1ca0:
    mov ax, 0xfe56                   ; 0x1ca0
    call ds_dispatch_f40b            ; 0x1ca3
    mov ax, word [bp + 0x14]         ; 0x1ca6
    dec ax                           ; 0x1ca9
    cwd                              ; 0x1caa
    idiv word [bp + 0x12]            ; 0x1cab
    inc ax                           ; 0x1cae
    imul word [bp + 0xe]             ; 0x1caf
    add ax, word [bp + 0x8]          ; 0x1cb2
    push ax                          ; 0x1cb5
    mov ax, 6                        ; 0x1cb6
    imul word [bp + 0xc]             ; 0x1cb9
    mov dx, ax                       ; 0x1cbc
    mov cx, word [bp + 0xe]          ; 0x1cbe
    sub cx, ax                       ; 0x1cc1
    pop ax                           ; 0x1cc3
    sub ax, cx                       ; 0x1cc4
    mov word [bp - 0x0006], ax       ; 0x1cc6
    mov ax, word [bp + 0x10]         ; 0x1cc9
    imul word [bp + 0x12]            ; 0x1ccc
    add ax, word [bp + 0xa]          ; 0x1ccf
    mov cx, word [bp + 0x10]         ; 0x1cd2
    add cx, byte 0xf7                ; 0x1cd5
    sub ax, cx                       ; 0x1cd8
    mov word [bp - 0x0008], ax       ; 0x1cda
    cmp word [bp + 0x6], byte 0      ; 0x1cdd
    jne short @..math_loc_1ca0.l1    ; 0x1ce1
    jmp near @..math_loc_1ca0.l2     ; 0x1ce3
@..math_loc_1ca0.l1:
    mov ax, 0x909b                   ; 0x1ce6
    push ax                          ; 0x1ce9
    mov ax, word [bp - 0x0008]       ; 0x1cea
    add ax, strict word 6            ; 0x1ced
    push ax                          ; 0x1cf0
    mov ax, word [bp - 0x0006]       ; 0x1cf1
    add ax, strict word 6            ; 0x1cf4
    push ax                          ; 0x1cf7
    mov ax, word [bp + 0xa]          ; 0x1cf8
    add ax, strict word 0xffeb       ; 0x1cfb
    push ax                          ; 0x1cfe
    mov ax, word [bp + 0x8]          ; 0x1cff
    add ax, strict word 0xfffa       ; 0x1d02
    push ax                          ; 0x1d05
    call ds_dispatch_c283            ; 0x1d06
    add sp, byte 0x0a                ; 0x1d09
    mov word [bp - 0x01a8], ax       ; 0x1d0c
    mov ax, word [bp - 0x0008]       ; 0x1d10
    add ax, strict word 5            ; 0x1d13
    push ax                          ; 0x1d16
    mov ax, word [bp - 0x0006]       ; 0x1d17
    add ax, strict word 5            ; 0x1d1a
    push ax                          ; 0x1d1d
    mov ax, word [bp + 0xa]          ; 0x1d1e
    add ax, strict word 0xffec       ; 0x1d21
    push ax                          ; 0x1d24
    mov ax, word [bp + 0x8]          ; 0x1d25
    add ax, strict word 0xfffb       ; 0x1d28
    push ax                          ; 0x1d2b
    call ds_dispatch_bc9a            ; 0x1d2c
    add sp, byte 8                   ; 0x1d2f
    lea ax, word [bp - 0x01a6]       ; 0x1d32
    push ax                          ; 0x1d36
    push word [bp + 0x6]             ; 0x1d37
    call ds_dispatch_b53b            ; 0x1d3a
    add sp, byte 4                   ; 0x1d3d
    mov ax, 0xc2                     ; 0x1d40
    push ax                          ; 0x1d43
    mov ax, 1                        ; 0x1d44
    push ax                          ; 0x1d47
    call ds_dispatch_e823            ; 0x1d48
    add sp, byte 4                   ; 0x1d4b
    mov ax, word [bp + 0xa]          ; 0x1d4e
    add ax, strict word 0xfff3       ; 0x1d51
    push ax                          ; 0x1d54
    lea ax, word [bp - 0x01a6]       ; 0x1d55
    push ax                          ; 0x1d59
    call ds_dispatch_fa90            ; 0x1d5a
    pop cx                           ; 0x1d5d
    mov cx, 6                        ; 0x1d5e
    imul cx                          ; 0x1d61
    mov cx, data_0002                ; 0x1d63
    cwd                              ; 0x1d66
    idiv cx                          ; 0x1d67
    mov cx, ax                       ; 0x1d69
    mov ax, 0xa0                     ; 0x1d6b
    sub ax, cx                       ; 0x1d6e
    push ax                          ; 0x1d70
    call ds_dispatch_e809            ; 0x1d71
    add sp, byte 4                   ; 0x1d74
    mov ax, 0                        ; 0x1d77
    push ax                          ; 0x1d7a
    lea ax, word [bp - 0x01a6]       ; 0x1d7b
    push ax                          ; 0x1d7f
    call ds_dispatch_e84e            ; 0x1d80
    add sp, byte 4                   ; 0x1d83
    jmp short @..math_loc_1ca0.l3    ; 0x1d86
@..math_loc_1ca0.l2:
    mov ax, 0x90a1                   ; 0x1d88
    push ax                          ; 0x1d8b
    mov ax, word [bp - 0x0008]       ; 0x1d8c
    inc ax                           ; 0x1d8f
    push ax                          ; 0x1d90
    mov ax, word [bp - 0x0006]       ; 0x1d91
    inc ax                           ; 0x1d94
    push ax                          ; 0x1d95
    mov ax, word [bp + 0xa]          ; 0x1d96
    dec ax                           ; 0x1d99
    push ax                          ; 0x1d9a
    mov ax, word [bp + 0x8]          ; 0x1d9b
    dec ax                           ; 0x1d9e
    push ax                          ; 0x1d9f
    call ds_dispatch_c283            ; 0x1da0
    add sp, byte 0x0a                ; 0x1da3
    mov word [bp - 0x01a8], ax       ; 0x1da6
@..math_loc_1ca0.l3:
    mov word [bp - 0x0002], 0        ; 0x1daa
    mov word [bp - 0x0004], 0        ; 0x1daf
@..math_loc_1ca0.l4:
    mov ax, word [bp - 0x0004]       ; 0x1db4
    shl ax, 1                        ; 0x1db7
    mov si, ax                       ; 0x1db9
    mov bx, word [bp + 0x1c]         ; 0x1dbb
    cmp word [bx + si], byte 0xff    ; 0x1dbe
    jne short @..math_loc_1ca0.l5    ; 0x1dc1
    jmp near @..local.l34            ; 0x1dc3
@..math_loc_1ca0.l5:
    cmp word [bx + si], byte 1       ; 0x1dc6
    je short @..math_loc_1ca0.l6     ; 0x1dc9
    jmp near @..local.l33            ; 0x1dcb
@..math_loc_1ca0.l6:
    mov ax, 0x14                     ; 0x1dce
    imul word [bp - 0x0002]          ; 0x1dd1
    lea cx, word [bp - 0x0156]       ; 0x1dd4
    add ax, cx                       ; 0x1dd8
    push ax                          ; 0x1dda
    mov ax, word [bp + 0x4]          ; 0x1ddb
    add ax, word [bp - 0x0004]       ; 0x1dde
    push ax                          ; 0x1de1
    call ds_dispatch_b53b            ; 0x1de2
    add sp, byte 4                   ; 0x1de5
    mov ax, word [bp - 0x0002]       ; 0x1de8
    cwd                              ; 0x1deb
    idiv word [bp + 0x12]            ; 0x1dec
    imul word [bp + 0xe]             ; 0x1def
    mov word [bp - 0x000a], ax       ; 0x1df2
    mov ax, word [bp - 0x0002]       ; 0x1df5
    cwd                              ; 0x1df8
    idiv word [bp + 0x12]            ; 0x1df9
    mov ax, dx                       ; 0x1dfc
    imul word [bp + 0x10]            ; 0x1dfe
    mov word [bp - 0x000c], ax       ; 0x1e01
    mov ax, 0                        ; 0x1e04
    push ax                          ; 0x1e07
    mov ax, word [bp + 0xa]          ; 0x1e08
    add ax, word [bp - 0x000c]       ; 0x1e0b
    add ax, strict word 8            ; 0x1e0e
    push ax                          ; 0x1e11
    mov ax, 6                        ; 0x1e12
    imul word [bp + 0xc]             ; 0x1e15
    add ax, word [bp + 0x8]          ; 0x1e18
    add ax, word [bp - 0x000a]       ; 0x1e1b
    push ax                          ; 0x1e1e
    mov ax, word [bp + 0xa]          ; 0x1e1f
    add ax, word [bp - 0x000c]       ; 0x1e22
    push ax                          ; 0x1e25
    mov ax, word [bp + 0x8]          ; 0x1e26
    add ax, word [bp - 0x000a]       ; 0x1e29
    push ax                          ; 0x1e2c
    call ds_dispatch_bce3            ; 0x1e2d
    add sp, byte 0x0a                ; 0x1e30
    mov ax, 0xc0                     ; 0x1e33
    push ax                          ; 0x1e36
    mov ax, word [bp + 0x16]         ; 0x1e37
    mov cx, word [bp - 0x0004]       ; 0x1e3a
    cmp cx, word [bp + 0x18]         ; 0x1e3d
    jne short @..math_loc_1ca0.l7    ; 0x1e40
    mov ax, 0x1a                     ; 0x1e42
@..math_loc_1ca0.l7:
    push ax                          ; 0x1e45
    call ds_dispatch_e823            ; 0x1e46
    add sp, byte 4                   ; 0x1e49
    mov ax, word [bp + 0xa]          ; 0x1e4c
    add ax, word [bp - 0x000c]       ; 0x1e4f
    inc ax                           ; 0x1e52
    inc ax                           ; 0x1e53
    push ax                          ; 0x1e54
    mov ax, 0x14                     ; 0x1e55
    imul word [bp - 0x0002]          ; 0x1e58
    lea cx, word [bp - 0x0156]       ; 0x1e5b
    add ax, cx                       ; 0x1e5f
    push ax                          ; 0x1e61
    call ds_dispatch_fa90            ; 0x1e62
    pop cx                           ; 0x1e65
    mov cx, ax                       ; 0x1e66
    mov ax, word [bp + 0xc]          ; 0x1e68
    sub ax, cx                       ; 0x1e6b
    mov cx, 6                        ; 0x1e6d
    imul cx                          ; 0x1e70
    mov cx, data_0002                ; 0x1e72
    cwd                              ; 0x1e75
    idiv cx                          ; 0x1e76
    add ax, word [bp + 0x8]          ; 0x1e78
    add ax, word [bp - 0x000a]       ; 0x1e7b
    inc ax                           ; 0x1e7e
    push ax                          ; 0x1e7f
    call ds_dispatch_e809            ; 0x1e80
    add sp, byte 4                   ; 0x1e83
    mov ax, 0                        ; 0x1e86
    push ax                          ; 0x1e89
    mov ax, 0x14                     ; 0x1e8a
    imul word [bp - 0x0002]          ; 0x1e8d
    lea cx, word [bp - 0x0156]       ; 0x1e90
    add ax, cx                       ; 0x1e94
    push ax                          ; 0x1e96
    call ds_dispatch_e84e            ; 0x1e97
    add sp, byte 4                   ; 0x1e9a
    mov ax, 0                        ; 0x1e9d
    push ax                          ; 0x1ea0
    push ax                          ; 0x1ea1
    mov ax, word [bp + 0xa]          ; 0x1ea2
    add ax, word [bp - 0x000c]       ; 0x1ea5
    add ax, strict word 8            ; 0x1ea8
    push ax                          ; 0x1eab
    mov ax, 6                        ; 0x1eac
    imul word [bp + 0xc]             ; 0x1eaf
    add ax, word [bp + 0x8]          ; 0x1eb2
    add ax, word [bp - 0x000a]       ; 0x1eb5
    push ax                          ; 0x1eb8
    mov ax, word [bp + 0xa]          ; 0x1eb9
    add ax, word [bp - 0x000c]       ; 0x1ebc
    push ax                          ; 0x1ebf
    mov ax, word [bp + 0x8]          ; 0x1ec0
    add ax, word [bp - 0x000a]       ; 0x1ec3
    push ax                          ; 0x1ec6
    push word [bp - 0x0002]          ; 0x1ec7
    call ds_dispatch_baa6            ; 0x1eca
    add sp, byte 0x0e                ; 0x1ecd
    mov ax, word [bp - 0x0004]       ; 0x1ed0
    mov cx, word [bp - 0x0002]       ; 0x1ed3
    shl cx, 1                        ; 0x1ed6
    mov bx, cx                       ; 0x1ed8
    add bx, bp                       ; 0x1eda
    mov word [bx - 0x002a], ax       ; 0x1edc
    inc word [bp - 0x0002]           ; 0x1edf
@..local.l33:
    inc word [bp - 0x0004]           ; 0x1ee2
    jmp near @..math_loc_1ca0.l4     ; 0x1ee5
@..local.l34:
    mov ax, 0                        ; 0x1ee8
    push ax                          ; 0x1eeb
    push ax                          ; 0x1eec
    push ax                          ; 0x1eed
    push ax                          ; 0x1eee
    push ax                          ; 0x1eef
    mov ax, 0xffff                   ; 0x1ef0
    push ax                          ; 0x1ef3
    push word [bp - 0x0002]          ; 0x1ef4
    call ds_dispatch_baa6            ; 0x1ef7
    add sp, byte 0x0e                ; 0x1efa
    mov ax, 0xc7                     ; 0x1efd
    push ax                          ; 0x1f00
    mov ax, 0x13f                    ; 0x1f01
    push ax                          ; 0x1f04
    mov ax, 0                        ; 0x1f05
    push ax                          ; 0x1f08
    push ax                          ; 0x1f09
    call ds_dispatch_e8da            ; 0x1f0a
    add sp, byte 8                   ; 0x1f0d
    cmp word [data_0e32], byte 0     ; 0x1f10
    je short @..local.l36            ; 0x1f15
@..local.l35:
    mov ax, 0x59fe                   ; 0x1f17
    push ax                          ; 0x1f1a
    call ds_dispatch_b90d            ; 0x1f1b
    pop cx                           ; 0x1f1e
    mov word [bp - 0x0004], ax       ; 0x1f1f
    cmp word [data_5b3e], byte 0     ; 0x1f22
    je short @..local.l35            ; 0x1f27
    jmp near @..local.l50            ; 0x1f29
@..local.l36:
    mov word [bp - 0x0004], 0        ; 0x1f2c
@..local.l37:
    mov ax, word [bp - 0x0004]       ; 0x1f31
    cwd                              ; 0x1f34
    idiv word [bp + 0x12]            ; 0x1f35
    imul word [bp + 0xe]             ; 0x1f38
    mov word [bp - 0x000a], ax       ; 0x1f3b
    mov ax, word [bp - 0x0004]       ; 0x1f3e
    cwd                              ; 0x1f41
    idiv word [bp + 0x12]            ; 0x1f42
    mov ax, dx                       ; 0x1f45
    imul word [bp + 0x10]            ; 0x1f47
    mov word [bp - 0x000c], ax       ; 0x1f4a
    mov ax, 0x16                     ; 0x1f4d
    push ax                          ; 0x1f50
    mov ax, word [bp + 0xa]          ; 0x1f51
    add ax, word [bp - 0x000c]       ; 0x1f54
    add ax, strict word 8            ; 0x1f57
    push ax                          ; 0x1f5a
    mov ax, 6                        ; 0x1f5b
    imul word [bp + 0xc]             ; 0x1f5e
    add ax, word [bp + 0x8]          ; 0x1f61
    add ax, word [bp - 0x000a]       ; 0x1f64
    push ax                          ; 0x1f67
    mov ax, word [bp + 0xa]          ; 0x1f68
    add ax, word [bp - 0x000c]       ; 0x1f6b
    push ax                          ; 0x1f6e
    mov ax, word [bp + 0x8]          ; 0x1f6f
    add ax, word [bp - 0x000a]       ; 0x1f72
    push ax                          ; 0x1f75
    call loc_1c25                    ; 0x1f76
    add sp, byte 0x0a                ; 0x1f79
    mov ax, word [bp - 0x0008]       ; 0x1f7c
    inc ax                           ; 0x1f7f
    push ax                          ; 0x1f80
    mov ax, word [bp - 0x0006]       ; 0x1f81
    inc ax                           ; 0x1f84
    push ax                          ; 0x1f85
    mov ax, word [bp + 0xa]          ; 0x1f86
    dec ax                           ; 0x1f89
    push ax                          ; 0x1f8a
    mov ax, word [bp + 0x8]          ; 0x1f8b
    dec ax                           ; 0x1f8e
    push ax                          ; 0x1f8f
    call ds_dispatch_e8da            ; 0x1f90
    add sp, byte 8                   ; 0x1f93
    mov ax, 0                        ; 0x1f96
    push ax                          ; 0x1f99
    mov ax, word [bp + 0xa]          ; 0x1f9a
    add ax, word [bp - 0x000c]       ; 0x1f9d
    add ax, strict word 8            ; 0x1fa0
    push ax                          ; 0x1fa3
    mov ax, 6                        ; 0x1fa4
    imul word [bp + 0xc]             ; 0x1fa7
    add ax, word [bp + 0x8]          ; 0x1faa
    add ax, word [bp - 0x000a]       ; 0x1fad
    push ax                          ; 0x1fb0
    mov ax, word [bp + 0xa]          ; 0x1fb1
    add ax, word [bp - 0x000c]       ; 0x1fb4
    push ax                          ; 0x1fb7
    mov ax, word [bp + 0x8]          ; 0x1fb8
    add ax, word [bp - 0x000a]       ; 0x1fbb
    push ax                          ; 0x1fbe
    call loc_1c25                    ; 0x1fbf
    add sp, byte 0x0a                ; 0x1fc2
@..local.l38:
    mov ax, 1                        ; 0x1fc5
    push ax                          ; 0x1fc8
    call ds_dispatch_ea50            ; 0x1fc9
    pop cx                           ; 0x1fcc
    test ax, ax                      ; 0x1fcd
    jne short @..local.l39           ; 0x1fcf
    jmp short @..local.l38           ; 0x1fd1
@..local.l39:
    mov ax, 1                        ; 0x1fd3
    push ax                          ; 0x1fd6
    call ds_dispatch_eb32            ; 0x1fd7
    pop cx                           ; 0x1fda
    sub ah, ah                       ; 0x1fdb
    mov word [bp - 0x01aa], ax       ; 0x1fdd
    mov ax, word [bp - 0x0004]       ; 0x1fe1
    cwd                              ; 0x1fe4
    idiv word [bp + 0x12]            ; 0x1fe5
    mov word [bp - 0x000a], ax       ; 0x1fe8
    mov ax, word [bp - 0x0002]       ; 0x1feb
    dec ax                           ; 0x1fee
    cwd                              ; 0x1fef
    idiv word [bp + 0x12]            ; 0x1ff0
    inc ax                           ; 0x1ff3
    mov word [bp - 0x000c], ax       ; 0x1ff4
@..local.l40:
    mov ax, word [bp - 0x01aa]       ; 0x1ff7
    jmp near @..local.l45            ; 0x1ffb
@..local.l41:
    mov ax, word [bp - 0x0004]       ; 0x1ffe
    add ax, word [bp + 0x12]         ; 0x2001
    dec ax                           ; 0x2004
    cwd                              ; 0x2005
    idiv word [bp + 0x12]            ; 0x2006
    mov ax, dx                       ; 0x2009
    push ax                          ; 0x200b
    mov ax, word [bp - 0x000a]       ; 0x200c
    imul word [bp + 0x12]            ; 0x200f
    mov cx, ax                       ; 0x2012
    pop ax                           ; 0x2014
    add ax, cx                       ; 0x2015
    mov word [bp - 0x0004], ax       ; 0x2017
    jmp near @..local.l47            ; 0x201a
@..local.l42:
    mov ax, word [bp - 0x0004]       ; 0x201d
    inc ax                           ; 0x2020
    cwd                              ; 0x2021
    idiv word [bp + 0x12]            ; 0x2022
    mov ax, dx                       ; 0x2025
    push ax                          ; 0x2027
    mov ax, word [bp - 0x000a]       ; 0x2028
    imul word [bp + 0x12]            ; 0x202b
    mov cx, ax                       ; 0x202e
    pop ax                           ; 0x2030
    add ax, cx                       ; 0x2031
    mov word [bp - 0x0004], ax       ; 0x2033
    jmp short @..local.l47           ; 0x2036
@..local.l43:
    mov ax, word [bp - 0x000a]       ; 0x2038
    add ax, word [bp - 0x000c]       ; 0x203b
    dec ax                           ; 0x203e
    cwd                              ; 0x203f
    idiv word [bp - 0x000c]          ; 0x2040
    mov word [bp - 0x000a], dx       ; 0x2043
    mov ax, word [bp - 0x0004]       ; 0x2046
    cwd                              ; 0x2049
    idiv word [bp + 0x12]            ; 0x204a
    mov ax, dx                       ; 0x204d
    push ax                          ; 0x204f
    mov ax, word [bp - 0x000a]       ; 0x2050
    imul word [bp + 0x12]            ; 0x2053
    mov cx, ax                       ; 0x2056
    pop ax                           ; 0x2058
    add ax, cx                       ; 0x2059
    mov word [bp - 0x0004], ax       ; 0x205b
    jmp short @..local.l47           ; 0x205e
@..local.l44:
    mov ax, word [bp - 0x000a]       ; 0x2060
    inc ax                           ; 0x2063
    cwd                              ; 0x2064
    idiv word [bp - 0x000c]          ; 0x2065
    mov word [bp - 0x000a], dx       ; 0x2068
    mov ax, word [bp - 0x0004]       ; 0x206b
    cwd                              ; 0x206e
    idiv word [bp + 0x12]            ; 0x206f
    mov ax, dx                       ; 0x2072
    push ax                          ; 0x2074
    mov ax, word [bp - 0x000a]       ; 0x2075
    imul word [bp + 0x12]            ; 0x2078
    mov cx, ax                       ; 0x207b
    pop ax                           ; 0x207d
    add ax, cx                       ; 0x207e
    mov word [bp - 0x0004], ax       ; 0x2080
    jmp short @..local.l47           ; 0x2083
@..local.l45:
    cmp ax, strict word 8            ; 0x2085
    je short @..local.l43            ; 0x2088
    cmp ax, strict word 9            ; 0x208a
    jne short @..local.l46           ; 0x208d
    jmp near @..local.l41            ; 0x208f
@..local.l46:
    cmp ax, strict word 0xa          ; 0x2092
    je short @..local.l44            ; 0x2095
    cmp ax, strict word 0xb          ; 0x2097
    je short @..local.l42            ; 0x209a
@..local.l47:
    mov ax, word [bp - 0x0004]       ; 0x209c
    cmp ax, word [bp - 0x0002]       ; 0x209f
    jl short @..local.l48            ; 0x20a2
    jmp near @..local.l40            ; 0x20a4
@..local.l48:
    cmp word [bp - 0x01aa], byte 0x0d ; 0x20a7
    je short @..local.l49            ; 0x20ac
    jmp near @..local.l37            ; 0x20ae
@..local.l49:
    inc word [bp - 0x0004]           ; 0x20b1
    mov ax, word [bp - 0x0008]       ; 0x20b4
    inc ax                           ; 0x20b7
    push ax                          ; 0x20b8
    mov ax, word [bp - 0x0006]       ; 0x20b9
    inc ax                           ; 0x20bc
    push ax                          ; 0x20bd
    mov ax, word [bp + 0xa]          ; 0x20be
    dec ax                           ; 0x20c1
    push ax                          ; 0x20c2
    mov ax, word [bp + 0x8]          ; 0x20c3
    dec ax                           ; 0x20c6
    push ax                          ; 0x20c7
    call ds_dispatch_e8da            ; 0x20c8
    add sp, byte 8                   ; 0x20cb
@..local.l50:
    dec word [bp - 0x0004]           ; 0x20ce
    mov ax, word [bp - 0x0004]       ; 0x20d1
    cwd                              ; 0x20d4
    idiv word [bp + 0x12]            ; 0x20d5
    imul word [bp + 0xe]             ; 0x20d8
    mov word [bp - 0x000a], ax       ; 0x20db
    mov ax, word [bp - 0x0004]       ; 0x20de
    cwd                              ; 0x20e1
    idiv word [bp + 0x12]            ; 0x20e2
    mov ax, dx                       ; 0x20e5
    imul word [bp + 0x10]            ; 0x20e7
    mov word [bp - 0x000c], ax       ; 0x20ea
    mov ax, 1                        ; 0x20ed
    push ax                          ; 0x20f0
    push ax                          ; 0x20f1
    push word [bp + 0xc]             ; 0x20f2
    mov ax, word [bp + 0xa]          ; 0x20f5
    add ax, word [bp - 0x000c]       ; 0x20f8
    push ax                          ; 0x20fb
    mov ax, word [bp + 0x8]          ; 0x20fc
    add ax, word [bp - 0x000a]       ; 0x20ff
    push ax                          ; 0x2102
    call ds_dispatch_be5f            ; 0x2103
    add sp, byte 0x0a                ; 0x2106
    mov ax, 0                        ; 0x2109
    push ax                          ; 0x210c
    mov ax, 1                        ; 0x210d
    push ax                          ; 0x2110
    push word [bp + 0xc]             ; 0x2111
    mov ax, word [bp + 0xa]          ; 0x2114
    add ax, word [bp - 0x000c]       ; 0x2117
    push ax                          ; 0x211a
    mov ax, word [bp + 0x8]          ; 0x211b
    add ax, word [bp - 0x000a]       ; 0x211e
    push ax                          ; 0x2121
    call ds_dispatch_be5f            ; 0x2122
    add sp, byte 0x0a                ; 0x2125
    mov ax, 1                        ; 0x2128
    push ax                          ; 0x212b
    push word [bp - 0x01a8]          ; 0x212c
    call ds_dispatch_c459            ; 0x2130
    add sp, byte 4                   ; 0x2133
    cmp word [bp + 0x1a], byte 0     ; 0x2136
    je short @..local.l52            ; 0x213a
    cmp word [bp + 0x6], byte 0      ; 0x213c
    je short @..local.l51            ; 0x2140
    mov ax, word [bp - 0x0008]       ; 0x2142
    add ax, strict word 6            ; 0x2145
    push ax                          ; 0x2148
    mov ax, word [bp - 0x0006]       ; 0x2149
    add ax, strict word 6            ; 0x214c
    push ax                          ; 0x214f
    mov ax, word [bp + 0xa]          ; 0x2150
    add ax, strict word 0xffeb       ; 0x2153
    push ax                          ; 0x2156
    mov ax, word [bp + 0x8]          ; 0x2157
    add ax, strict word 0xfffa       ; 0x215a
    push ax                          ; 0x215d
    call ds_dispatch_e8da            ; 0x215e
    add sp, byte 8                   ; 0x2161
    jmp short @..local.l52           ; 0x2164
@..local.l51:
    mov ax, word [bp - 0x0008]       ; 0x2166
    inc ax                           ; 0x2169
    push ax                          ; 0x216a
    mov ax, word [bp - 0x0006]       ; 0x216b
    inc ax                           ; 0x216e
    push ax                          ; 0x216f
    mov ax, word [bp + 0xa]          ; 0x2170
    dec ax                           ; 0x2173
    push ax                          ; 0x2174
    mov ax, word [bp + 0x8]          ; 0x2175
    dec ax                           ; 0x2178
    push ax                          ; 0x2179
    call ds_dispatch_e8da            ; 0x217a
    add sp, byte 8                   ; 0x217d
@..local.l52:
    mov ax, word [bp - 0x0004]       ; 0x2180
    mov word [data_9052], ax         ; 0x2183
    shl ax, 1                        ; 0x2186
    mov bx, ax                       ; 0x2188
    add bx, bp                       ; 0x218a
    mov ax, word [bx - 0x002a]       ; 0x218c
    ret                              ; 0x218f
math_loc_2190:
    mov ax, 0                        ; 0x2190
    call ds_dispatch_f40b            ; 0x2193
    mov ax, 1                        ; 0x2196
    push ax                          ; 0x2199
    push ax                          ; 0x219a
    push word [bp + 0x4]             ; 0x219b
    call api_idx_000c                ; 0x219e
    add sp, byte 6                   ; 0x21a1
    mov ax, 0x3e8                    ; 0x21a4
    push ax                          ; 0x21a7
    call ds_dispatch_e489            ; 0x21a8
    pop cx                           ; 0x21ab
    ret                              ; 0x21ac
math_loc_21ad:
    mov ax, 0                        ; 0x21ad
    call ds_dispatch_f40b            ; 0x21b0
    cmp word [bp + 0x8], byte 1      ; 0x21b3
    jne short @..math_loc_21ad.l3    ; 0x21b7
    cmp word [bp + 0x6], byte 0      ; 0x21b9
    jle short @..math_loc_21ad.l1    ; 0x21bd
    mov ax, word [bp + 0x4]          ; 0x21bf
    sub word [bp + 0x6], ax          ; 0x21c2
    jmp short @..math_loc_21ad.l2    ; 0x21c5
@..math_loc_21ad.l1:
    mov ax, 0                        ; 0x21c7
    sub ax, word [bp + 0x4]          ; 0x21ca
    cmp ax, word [bp + 0x6]          ; 0x21cd
    jge short @..math_loc_21ad.l2    ; 0x21d0
    mov word [bp + 0x6], ax          ; 0x21d2
@..math_loc_21ad.l2:
    jmp short @..math_loc_21ad.l5    ; 0x21d5
@..math_loc_21ad.l3:
    cmp word [bp + 0x8], byte 0      ; 0x21d7
    jne short @..math_loc_21ad.l5    ; 0x21db
    cmp word [bp + 0x6], byte 0      ; 0x21dd
    jge short @..math_loc_21ad.l4    ; 0x21e1
    mov ax, word [bp + 0x4]          ; 0x21e3
    add word [bp + 0x6], ax          ; 0x21e6
    jmp short @..math_loc_21ad.l5    ; 0x21e9
@..math_loc_21ad.l4:
    mov ax, word [bp + 0x6]          ; 0x21eb
    cmp ax, word [bp + 0x4]          ; 0x21ee
    jge short @..math_loc_21ad.l5    ; 0x21f1
    mov ax, word [bp + 0x4]          ; 0x21f3
    mov word [bp + 0x6], ax          ; 0x21f6
@..math_loc_21ad.l5:
    mov ax, word [bp + 0x6]          ; 0x21f9
    ret                              ; 0x21fc
api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x21fd
    call ds_dispatch_f40b            ; 0x2200
    mov ax, word [bp + 0x6]          ; 0x2203
    jmp near @..local.l57            ; 0x2206
    mov ax, 0x32                     ; 0x2209
    imul word [bp + 0x8]             ; 0x220c
    add word [data_82fe], ax         ; 0x220f
    mov ax, 0                        ; 0x2213
    push ax                          ; 0x2216
    push word [data_8300]            ; 0x2217
    mov ax, 5                        ; 0x221b
    imul word [bp + 0x8]             ; 0x221e
    add ax, strict word 0x46         ; 0x2221
    push ax                          ; 0x2224
    call math_loc_21ad               ; 0x2225
    add sp, byte 6                   ; 0x2228
    mov word [data_8300], ax         ; 0x222b
    jmp near @..local.l69            ; 0x222e
    mov ax, 0x23                     ; 0x2231
    imul word [bp + 0x8]             ; 0x2234
    add word [data_82f2], ax         ; 0x2237
    mov ax, 0                        ; 0x223b
    push ax                          ; 0x223e
    push word [data_82f4]            ; 0x223f
    mov ax, word [bp + 0x8]          ; 0x2243
    dec ax                           ; 0x2246
    mov cx, data_0002                ; 0x2247
    cwd                              ; 0x224a
    idiv cx                          ; 0x224b
    inc ax                           ; 0x224d
    push ax                          ; 0x224e
    call math_loc_21ad               ; 0x224f
    add sp, byte 6                   ; 0x2252
    mov word [data_82f4], ax         ; 0x2255
    jmp near @..local.l69            ; 0x2258
    mov ax, 0x32                     ; 0x225b
    imul word [bp + 0x8]             ; 0x225e
    add word [data_82f6], ax         ; 0x2261
    mov ax, 0                        ; 0x2265
    push ax                          ; 0x2268
    push word [data_82f8]            ; 0x2269
    mov ax, word [bp + 0x8]          ; 0x226d
    dec ax                           ; 0x2270
    mov cx, data_0002                ; 0x2271
    cwd                              ; 0x2274
    idiv cx                          ; 0x2275
    inc ax                           ; 0x2277
    push ax                          ; 0x2278
    call math_loc_21ad               ; 0x2279
    add sp, byte 6                   ; 0x227c
    mov word [data_82f8], ax         ; 0x227f
    jmp near @..local.l69            ; 0x2282
    mov ax, 5                        ; 0x2285
    imul word [bp + 0x8]             ; 0x2288
    add word [data_8306], ax         ; 0x228b
    jmp near @..local.l69            ; 0x228f
    mov ax, 0x64                     ; 0x2292
    imul word [bp + 0x8]             ; 0x2295
    add word [data_8302], ax         ; 0x2298
    jmp near @..local.l69            ; 0x229c
    mov ax, 0x32                     ; 0x229f
    imul word [bp + 0x8]             ; 0x22a2
    add word [data_82fa], ax         ; 0x22a5
    mov ax, 0                        ; 0x22a9
    push ax                          ; 0x22ac
    push word [data_82fc]            ; 0x22ad
    mov ax, 5                        ; 0x22b1
    imul word [bp + 0x8]             ; 0x22b4
    push ax                          ; 0x22b7
    call math_loc_21ad               ; 0x22b8
    add sp, byte 6                   ; 0x22bb
    mov word [data_82fc], ax         ; 0x22be
    jmp near @..local.l69            ; 0x22c1
    mov ax, 0                        ; 0x22c4
    cmp word [bp + 0x6], byte 0x13   ; 0x22c7
    je short @..api_idx_0008_2.l1    ; 0x22cb
    mov ax, word [bp + 0xa]          ; 0x22cd
@..api_idx_0008_2.l1:
    mov word [bp - 0x0002], ax       ; 0x22d0
    mov ax, word [data_69c8]         ; 0x22d3
    cmp word [bp + 0x6], byte 0x13   ; 0x22d6
    je short @..api_idx_0008_2.l2    ; 0x22da
    mov ax, word [bp + 0xa]          ; 0x22dc
    inc ax                           ; 0x22df
@..api_idx_0008_2.l2:
    mov word [bp - 0x0004], ax       ; 0x22e0
    mov ax, word [bp + 0x8]          ; 0x22e3
    cmp word [bp + 0x6], byte 0x13   ; 0x22e6
    je short @..api_idx_0008_2.l3    ; 0x22ea
    shl ax, 1                        ; 0x22ec
@..api_idx_0008_2.l3:
    mov word [bp - 0x0006], ax       ; 0x22ee
    mov ax, 0                        ; 0x22f1
    cmp word [bp + 0x6], byte 0x13   ; 0x22f4
    je short @..api_idx_0008_2.l4    ; 0x22f8
    mov ax, word [bp + 0x8]          ; 0x22fa
@..api_idx_0008_2.l4:
    mov word [bp - 0x0008], ax       ; 0x22fd
    jmp short @..api_idx_0008_2.l7   ; 0x2300
@..api_idx_0008_2.l5:
    mov ax, 0x248                    ; 0x2302
    imul word [bp - 0x0002]          ; 0x2305
    mov bx, ax                       ; 0x2308
    push word [bx + 0x5c12]          ; 0x230a
    mov ax, 0                        ; 0x230e
    push ax                          ; 0x2311
    push word [bp - 0x0008]          ; 0x2312
    mov ax, 8                        ; 0x2315
    push ax                          ; 0x2318
    push word [bp - 0x0006]          ; 0x2319
    call ds_dispatch_d0ea            ; 0x231c
    add sp, byte 6                   ; 0x231f
    mov cx, ax                       ; 0x2322
    sub sp, byte 4                   ; 0x2324
    mov ax, sp                       ; 0x2327
    mov dx, ss                       ; 0x2329
    mov es, dx                       ; 0x232b
    mov si, cx                       ; 0x232d
    mov di, ax                       ; 0x232f
    movsw                            ; 0x2331
    movsw                            ; 0x2332
    call ds_dispatch_d0be            ; 0x2333
    add sp, byte 4                   ; 0x2336
    push ax                          ; 0x2339
    mov ax, 0x248                    ; 0x233a
    imul word [bp - 0x0002]          ; 0x233d
    mov bx, ax                       ; 0x2340
    pop ax                           ; 0x2342
    add ax, word [bx + 0x5c10]       ; 0x2343
    push ax                          ; 0x2347
    call ds_dispatch_b7c2            ; 0x2348
    add sp, byte 6                   ; 0x234b
    push ax                          ; 0x234e
    mov ax, 0x248                    ; 0x234f
    imul word [bp - 0x0002]          ; 0x2352
    mov bx, ax                       ; 0x2355
    pop ax                           ; 0x2357
    mov word [bx + 0x5c10], ax       ; 0x2358
    cmp word [bp + 0x6], byte 0x13   ; 0x235c
    je short @..api_idx_0008_2.l6    ; 0x2360
    push word [bp - 0x0002]          ; 0x2362
    call math_loc_2190               ; 0x2365
    pop cx                           ; 0x2368
@..api_idx_0008_2.l6:
    inc word [bp - 0x0002]           ; 0x2369
@..api_idx_0008_2.l7:
    mov ax, word [bp - 0x0002]       ; 0x236c
    cmp ax, word [bp - 0x0004]       ; 0x236f
    jl short @..api_idx_0008_2.l5    ; 0x2372
    jmp near @..local.l69            ; 0x2374
    mov ax, 0x248                    ; 0x2377
    imul word [bp + 0xa]             ; 0x237a
    mov bx, ax                       ; 0x237d
    mov al, byte [bx + 0x5d5d]       ; 0x237f
    sub ah, ah                       ; 0x2383
    push ax                          ; 0x2385
    mov ax, 0x19                     ; 0x2386
    imul word [bp + 0x8]             ; 0x2389
    mov cx, ax                       ; 0x238c
    pop ax                           ; 0x238e
    sub ax, cx                       ; 0x238f
    mov word [bp - 0x0002], ax       ; 0x2391
    cmp ax, strict word 0            ; 0x2394
    jge short @..api_idx_0008_2.l8   ; 0x2397
    mov word [bp - 0x0002], 0        ; 0x2399
@..api_idx_0008_2.l8:
    mov al, byte [bp - 0x0002]       ; 0x239e
    mov byte [bx + 0x5d5d], al       ; 0x23a1
    push word [bp + 0xa]             ; 0x23a5
    call math_loc_2190               ; 0x23a8
    pop cx                           ; 0x23ab
    jmp near @..local.l69            ; 0x23ac
    mov ax, 0x248                    ; 0x23af
    imul word [bp + 0xa]             ; 0x23b2
    mov bx, ax                       ; 0x23b5
    mov al, byte [bx + 0x5e32]       ; 0x23b7
    sub ah, ah                       ; 0x23bb
    sub ax, word [bp + 0x8]          ; 0x23bd
    mov word [bp - 0x0002], ax       ; 0x23c0
    cmp ax, strict word 0            ; 0x23c3
    jg short @..api_idx_0008_2.l9    ; 0x23c6
    mov word [bp - 0x0002], 0        ; 0x23c8
    mov byte [bx + 0x5d5f], 0        ; 0x23cd
@..api_idx_0008_2.l9:
    mov al, byte [bp - 0x0002]       ; 0x23d2
    mov byte [bx + 0x5e32], al       ; 0x23d5
    mov al, byte [bx + 0x5d5f]       ; 0x23d9
    sub ah, ah                       ; 0x23dd
    push ax                          ; 0x23df
    mov ax, 5                        ; 0x23e0
    imul word [bp + 0x8]             ; 0x23e3
    mov cx, ax                       ; 0x23e6
    pop ax                           ; 0x23e8
    sub ax, cx                       ; 0x23e9
    mov word [bp - 0x0002], ax       ; 0x23eb
    cmp ax, strict word 0            ; 0x23ee
    jg short @..local.l53            ; 0x23f1
    mov word [bp - 0x0002], 0        ; 0x23f3
    mov byte [bx + 0x5e32], 0        ; 0x23f8
@..local.l53:

    db 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5f, 0x5d, 0xff, 0x76, 0x0a, 0xe8, 0x86, 0xfd, 0x59, 0xe9, 0x6f
    db 0x05, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x80, 0xbf, 0x2f, 0x5e, 0x02, 0x74, 0x03
    db 0xe9, 0x7a, 0x00, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4
    db 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x61, 0xfe, 0x8f, 0x67, 0x5d
    db 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0x65, 0x93, 0x59, 0x05, 0xb7, 0x00, 0x99, 0x50, 0x52, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b, 0x11, 0x97, 0xfe, 0x5b
    db 0xb8, 0x12, 0x00, 0x50, 0xe8, 0x45, 0x93, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b
    db 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x13, 0xc6, 0x87
    db 0x2f, 0x5e, 0x03, 0xc7, 0x87, 0x0c, 0x5c, 0x00, 0x00, 0xc7, 0x87, 0x10, 0x5c, 0x00, 0x00, 0xeb
    db 0x05, 0xc6, 0x87, 0x2f, 0x5e, 0x00, 0xff, 0x76, 0x0a, 0xe8, 0xf7, 0xfc, 0x59, 0xe9, 0xe0, 0x04
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x61, 0x5d, 0x2a, 0xe4, 0x50, 0xb8
    db 0x19, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00
    db 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x61, 0x5d, 0xff, 0x76
    db 0x0a, 0xe8, 0xbf, 0xfc, 0x59, 0xe9, 0xa8, 0x04, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9
    db 0x12, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x05, 0xc6, 0x87, 0x60, 0x5d, 0x00, 0xff, 0x76
    db 0x0a, 0xe8, 0x8f, 0xfc, 0x59, 0xe9, 0x78, 0x04, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x3c, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x5c, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46
    db 0x08, 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfc
    db 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x87, 0x5c
    db 0x5d, 0xff, 0x76, 0xfe, 0xe8, 0x4c, 0xfc, 0x59, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x06
    db 0xc8, 0x69, 0x7c, 0xbb, 0xe9, 0x29, 0x04, 0xc7, 0x46, 0xfc, 0x01, 0x00, 0x8b, 0x46, 0xfc, 0x3d
    db 0x01, 0x00, 0x74, 0x14, 0x3d, 0x02, 0x00, 0x74, 0x0f, 0x3d, 0x04, 0x00, 0x74, 0x0a, 0x3d, 0x08
    db 0x00, 0x74, 0x05, 0x3d, 0x09, 0x00, 0x75, 0x39, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xc8
    db 0x8b, 0x46, 0xfc, 0x03, 0xc8, 0x8b, 0xd9, 0x8a, 0x87, 0x5a, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46
    db 0x08, 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe
    db 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5a
    db 0x5d, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x09, 0x00, 0x7e, 0xa0, 0xff, 0x76, 0x0a, 0xe8
    db 0xd1, 0xfb, 0x59, 0xe9, 0xba, 0x03, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b
    db 0x46, 0x0a, 0x89, 0x46, 0xfe, 0xa1, 0xc8, 0x69, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x04, 0x8b, 0x46
    db 0x0a, 0x40, 0x89, 0x46, 0xfc, 0xb8, 0x04, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0xb8, 0x07
    db 0x00, 0x89, 0x46, 0xfa, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46, 0x08
    db 0x89, 0x46, 0xf8, 0xeb, 0x73, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0xff, 0xb7, 0x0e
    db 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xff, 0x76, 0xfa, 0xff, 0x76, 0x08, 0xe8, 0xcc
    db 0xaa, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b
    db 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x89, 0xaa, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x03, 0x87, 0x0c, 0x5c, 0x50, 0xe8, 0x78, 0x91, 0x83, 0xc4, 0x06
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x83, 0x87
    db 0xfc, 0x5b, 0x01, 0x83, 0x97, 0xfe, 0x5b, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x07, 0xff, 0x76
    db 0xfe, 0xe8, 0x1f, 0xfb, 0x59, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xfc, 0x7c, 0x85
    db 0xe9, 0xfd, 0x02, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x80, 0xbf, 0x2f, 0x5e, 0x03
    db 0x74, 0x03, 0xe9, 0x82, 0x00, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0x8a, 0x87, 0x67, 0x5d
    db 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x69, 0xfe, 0x8f
    db 0x67, 0x5d, 0xc6, 0x87, 0x2f, 0x5e, 0x00, 0xff, 0xb7, 0x0e, 0x5c, 0xb8, 0x01, 0x00, 0x50, 0x8b
    db 0x87, 0x0e, 0x5c, 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0xf8, 0x90, 0x83, 0xc4, 0x06
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x8b, 0x87
    db 0x12, 0x5c, 0xb9, 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x87, 0x10, 0x5c, 0xff, 0x87, 0x1a, 0x5c
    db 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0xb5, 0x90, 0x59, 0x05, 0x6d, 0x01, 0x99, 0x50, 0x52, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b, 0x11, 0x97, 0xfe, 0x5b
    db 0xff, 0x76, 0x0a, 0xe8, 0x7d, 0xfa, 0x59, 0xe9, 0x66, 0x02, 0xff, 0x76, 0x08, 0xb8, 0x08, 0x00
    db 0x50, 0xff, 0x76, 0x08, 0xe8, 0xc6, 0xa9, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b
    db 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x83, 0xa9, 0x83, 0xc4
    db 0x04, 0x89, 0x46, 0xfe, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87
    db 0x10, 0x5c, 0x8b, 0x87, 0x10, 0x5c, 0x3b, 0x87, 0x12, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x12, 0x5c
    db 0x89, 0x87, 0x10, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8
    db 0x7b, 0xa9, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2
    db 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x38, 0xa9, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x0c, 0x5c, 0x8b, 0x87, 0x0c
    db 0x5c, 0x3b, 0x87, 0x0e, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x0e, 0x5c, 0x89, 0x87, 0x0c, 0x5c, 0xe9
    db 0xce, 0x01, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xff
    db 0x76, 0x08, 0xe8, 0x28, 0xa9, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c
    db 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0xe5, 0xa8, 0x83, 0xc4, 0x04, 0x89
    db 0x46, 0xfc, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56, 0xfe, 0xd1, 0xe2
    db 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x1c, 0x5c, 0x8b, 0x87, 0x1c, 0x5c, 0x3b
    db 0x87, 0x1e, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x1e, 0x5c, 0x89, 0x87, 0x1c, 0x5c, 0xff, 0x46, 0xfe
    db 0x8b, 0x46, 0xfe, 0x3d, 0x06, 0x00, 0x7c, 0x9f, 0xe9, 0x65, 0x01, 0xe8, 0x66, 0xdf, 0xa3, 0xee
    db 0x8a, 0x3d, 0xff, 0xff, 0x74, 0x47, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00
    db 0xf7, 0x2e, 0x34, 0x94, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x2e, 0xee
    db 0x8a, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x83, 0xbf, 0x34, 0x5c, 0x00, 0x7e, 0x1e, 0xff
    db 0x76, 0x08, 0xb8, 0x16, 0x00, 0xf7, 0x2e, 0xee, 0x8a, 0x05, 0x36, 0x94, 0x50, 0x81, 0xc3, 0x34
    db 0x5c, 0x8b, 0xc3, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x63, 0x48, 0x83, 0xc4, 0x08, 0xe9, 0x10, 0x01
    db 0xc7, 0x46, 0xfc, 0x00, 0x00, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x2b
    db 0x8f, 0x59, 0x50, 0xb8, 0x0f, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7d, 0x2d
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xfc, 0x8b, 0xc8, 0x58
    db 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8
    db 0x8a, 0x87, 0x3b, 0x5c, 0x2a, 0xe4, 0x25, 0xfd, 0xff, 0x88, 0x87, 0x3b, 0x5c, 0xff, 0x46, 0xfe
    db 0x8b, 0x46, 0xfe, 0x3d, 0x0a, 0x00, 0x7c, 0xb2, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x02
    db 0x00, 0x7c, 0xa2, 0xe9, 0xaa, 0x00, 0xe8, 0xab, 0xde, 0xa3, 0xee, 0x8a, 0x3d, 0xff, 0xff, 0x74
    db 0x39, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x2e, 0x34, 0x94, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x2e, 0xee, 0x8a, 0x8b, 0xc8

@..local.l54:
    pop ax                           ; 0x28fb
    add ax, cx                       ; 0x28fc
@..local.l55:
    mov bx, ax                       ; 0x28fe
    cmp word [bx + 0x5c34], byte 0   ; 0x2900
    jle short @..local.l56           ; 0x2905
    push word [bp + 0x8]             ; 0x2907
    add ax, 0x5c34                   ; 0x290a
    push ax                          ; 0x290d
    push word [bp + 0x4]             ; 0x290e
    call api_idx_009a                ; 0x2911
    add sp, byte 6                   ; 0x2914
@..local.l56:
    jmp short @..local.l69           ; 0x2917
@..local.l57:
    mov cx, 0x18                     ; 0x2919
    call leaf_loc_982c               ; 0x291c
    or al, 0                         ; 0x291f
    adc word [bx + si], ax           ; 0x2921
    db 0x13
@..local.l58:
    db 0x00
    sbb word [bx + si], ax           ; 0x2925
    and word [bx + si], ax           ; 0x2927
    and ax, 0x2e00                   ; 0x2929
    add byte [bx + di], dh           ; 0x292c
    add byte [bx + si], bh           ; 0x292e
    add byte [di], bh                ; 0x2930
    db 0x00
@..local.l59:
    db 0x3f
    db 0x00, 0x40, 0x00 ; add byte [bx + si], al
    inc dx                           ; 0x2937
    db 0x00, 0x45, 0x00 ; add byte [di], al
    dec si                           ; 0x293b
    db 0x00
@..local.l60:
    db 0x52
    db 0x00
    push sp                          ; 0x293f
@..local.l61:
    db 0x00
@..local.l62:
    db 0x57
    db 0x00
    pop ax                           ; 0x2943
    db 0x00, 0x5c, 0x00 ; add byte [si], bl
    pop si                           ; 0x2947
    db 0x00, 0x61, 0x00 ; add byte [bx + di], ah
    db 0x62
@..local.l63:
    db 0x00
    or si, word [bp + di - 0x0042]   ; 0x294d
    jae short @..local.l65           ; 0x2950
    jae short @..local.l66           ; 0x2952
@..local.l64:
    jne short @..local.l63           ; 0x2954
    jae short @..local.l58           ; 0x2956
    jb short @..local.l59            ; 0x2958
    jb short @..local.l55            ; 0x295a
    db 0x72
@..local.l65:
    db 0x55
    je short @..local.l54            ; 0x295e
    jne short @..api_idx_0004_4.l2   ; 0x2960
    jb short @..api_idx_0004_4.l4    ; 0x2962
    js short @..api_idx_0004_4.l2    ; 0x2964
    jne short @..local.l63           ; 0x2966
    je short @..local.l67            ; 0x2968
    jbe short @..api_idx_0004_4.l7   ; 0x296a
    jb short @..local.l64            ; 0x296c
    jb short @..local.l58            ; 0x296e
@..local.l66:
    js short @..local.l68            ; 0x2970
    jbe short @..api_idx_0004_4.l1   ; 0x2972
@..local.l67:
    jns short @..local.l60           ; 0x2974
    jbe short @..api_idx_0004_4.l5   ; 0x2976
    ja short @..local.l66            ; 0x2978
    ja short @..local.l61            ; 0x297a
@..local.l68:
    db 0x79
@..local.l69:
    db 0xc3
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x297e
    call ds_dispatch_f40b            ; 0x2981
    mov word [bp - 0x0004], 0        ; 0x2984
    mov word [bp - 0x0002], 0        ; 0x2989
@..api_idx_0004_4.l1:
    mov ax, 6                        ; 0x298e
    imul word [bp - 0x0002]          ; 0x2991
    mov bx, ax                       ; 0x2994
    mov al, byte [bx + 0x620]        ; 0x2996
    sub ah, ah                       ; 0x299a
    cmp ax, word [bp + 0x6]          ; 0x299c
    jne short @..api_idx_0004_4.l6   ; 0x299f
    push word [bp - 0x0002]          ; 0x29a1
    mov ax, 0x248                    ; 0x29a4
    imul word [bp + 0x4]             ; 0x29a7
    add ax, 0x5e12                   ; 0x29aa
    push ax                          ; 0x29ad
    call ds_dispatch_ec74            ; 0x29ae
    db 0x83
@..api_idx_0004_4.l2:
    db 0xc4
@..api_idx_0004_4.l3:
    db 0x04
    test ax, ax                      ; 0x29b4
    je short @..api_idx_0004_4.l6    ; 0x29b6
    mov ax, 0x14                     ; 0x29b8
    imul word [bp - 0x0004]          ; 0x29bb
    add ax, 0xe38                    ; 0x29be
    push ax                          ; 0x29c1
    db 0x8b
@..api_idx_0004_4.l4:
    db 0x46, 0xfe
    add ax, 0xfa0                    ; 0x29c5
    push ax                          ; 0x29c8
    call ds_dispatch_b53b            ; 0x29c9
    add sp, byte 4                   ; 0x29cc
    mov ax, word [bp - 0x0002]       ; 0x29cf
    mov cx, word [bp - 0x0004]       ; 0x29d2
    db 0xd1
@..api_idx_0004_4.l5:
    db 0xe1
    mov bx, cx                       ; 0x29d7
    mov word [bx - 0x6aee], ax       ; 0x29d9
    inc word [bp - 0x0004]           ; 0x29dd
@..api_idx_0004_4.l6:
    inc word [bp - 0x0002]           ; 0x29e0
    db 0x8b
@..api_idx_0004_4.l7:
    db 0x46, 0xfe
    cmp ax, strict word 0x66         ; 0x29e6
    jl short @..api_idx_0004_4.l1    ; 0x29e9
    mov ax, word [bp - 0x0004]       ; 0x29eb
    ret                              ; 0x29ee
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x29ef
    call ds_dispatch_f40b            ; 0x29f2
    mov byte [bp - 0x000a], 1        ; 0x29f5
    mov byte [bp - 0x0009], 0        ; 0x29f9
    mov ax, 0                        ; 0x29fd
    push ax                          ; 0x2a00
    push ax                          ; 0x2a01
    lea ax, word [bp - 0x000a]       ; 0x2a02
    push ax                          ; 0x2a05
    mov ax, 0                        ; 0x2a06
    push ax                          ; 0x2a09
    mov ax, 0xc7                     ; 0x2a0a
    push ax                          ; 0x2a0d
    mov ax, 0                        ; 0x2a0e
    push ax                          ; 0x2a11
    mov ax, 0x13f                    ; 0x2a12
    push ax                          ; 0x2a15
    mov ax, 0                        ; 0x2a16
    push ax                          ; 0x2a19
    mov ax, 0x73                     ; 0x2a1a
    push ax                          ; 0x2a1d
    mov ax, 0x32                     ; 0x2a1e
    push ax                          ; 0x2a21
    mov ax, 1                        ; 0x2a22
    push ax                          ; 0x2a25
    call ds_dispatch_efd1            ; 0x2a26
    add sp, byte 0x16                ; 0x2a29
    ret                              ; 0x2a2c
math_loc_2a2d:
    mov ax, 0                        ; 0x2a2d
    call ds_dispatch_f40b            ; 0x2a30
    push word [bp + 0x6]             ; 0x2a33
    mov ax, 0xa                      ; 0x2a36
    imul word [bp + 0x8]             ; 0x2a39
    add ax, word [bp + 0x4]          ; 0x2a3c
    dec ax                           ; 0x2a3f
    push ax                          ; 0x2a40
    call ds_dispatch_e809            ; 0x2a41
    add sp, byte 4                   ; 0x2a44
    mov ax, 7                        ; 0x2a47
    push ax                          ; 0x2a4a
    mov ax, 0                        ; 0x2a4b
    cmp word [bp + 0xa], byte 0      ; 0x2a4e
    je short @..math_loc_2a2d.l1     ; 0x2a52
    mov ax, 1                        ; 0x2a54
@..math_loc_2a2d.l1:
    add ax, strict word 0x10         ; 0x2a57
    sub ah, ah                       ; 0x2a5a
    push ax                          ; 0x2a5c
    call ds_dispatch_e830            ; 0x2a5d
    add sp, byte 4                   ; 0x2a60
    push word [bp + 0x6]             ; 0x2a63
    mov ax, 0xa                      ; 0x2a66
    imul word [bp + 0x8]             ; 0x2a69
    add ax, word [bp + 0x4]          ; 0x2a6c
    push ax                          ; 0x2a6f
    call ds_dispatch_e809            ; 0x2a70
    add sp, byte 4                   ; 0x2a73
    mov ax, 0                        ; 0x2a76
    push ax                          ; 0x2a79
    push ax                          ; 0x2a7a
    call ds_dispatch_e823            ; 0x2a7b
    add sp, byte 4                   ; 0x2a7e
    mov ax, data_0002                ; 0x2a81
    push ax                          ; 0x2a84
    mov ax, word [bp + 0x8]          ; 0x2a85
    inc ax                           ; 0x2a88
    sub ah, ah                       ; 0x2a89
    push ax                          ; 0x2a8b
    call ds_dispatch_e830            ; 0x2a8c
    add sp, byte 4                   ; 0x2a8f
    cmp word [bp + 0x8], byte 0      ; 0x2a92
    jne short @..math_loc_2a2d.l2    ; 0x2a96
    cmp word [bp + 0xa], byte 0      ; 0x2a98
    jne short @..math_loc_2a2d.l2    ; 0x2a9c
    mov ax, 0xc2                     ; 0x2a9e
    push ax                          ; 0x2aa1
    mov ax, word [bp + 0x6]          ; 0x2aa2
    add ax, strict word 8            ; 0x2aa5
    push ax                          ; 0x2aa8
    mov ax, word [bp + 0x4]          ; 0x2aa9
    dec ax                           ; 0x2aac
    push ax                          ; 0x2aad
    push word [bp + 0x6]             ; 0x2aae
    push ax                          ; 0x2ab1
    call ds_dispatch_e901            ; 0x2ab2
    add sp, byte 0x0a                ; 0x2ab5
@..math_loc_2a2d.l2:
    ret                              ; 0x2ab8
loc_2ab9:
    mov ax, 0                        ; 0x2ab9
    call ds_dispatch_f40b            ; 0x2abc
    mov ax, word [bp + 0x6]          ; 0x2abf
    add ax, strict word 6            ; 0x2ac2
    push ax                          ; 0x2ac5
    mov ax, word [bp + 0x4]          ; 0x2ac6
    add ax, strict word 0x14         ; 0x2ac9
    push ax                          ; 0x2acc
    push word [bp + 0x6]             ; 0x2acd
    push word [bp + 0x4]             ; 0x2ad0
    call ds_dispatch_bd98            ; 0x2ad3
    add sp, byte 8                   ; 0x2ad6
    mov ax, word [bp + 0x8]          ; 0x2ad9
    shl ax, 1                        ; 0x2adc
    shl ax, 1                        ; 0x2ade
    mov bx, ax                       ; 0x2ae0
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x2ae6
    add ax, strict word 6            ; 0x2ae9
    push ax                          ; 0x2aec
    mov ax, word [bp + 0x4]          ; 0x2aed
    add ax, strict word 0x14         ; 0x2af0
    push ax                          ; 0x2af3
    push word [bp + 0x6]             ; 0x2af4
    push word [bp + 0x4]             ; 0x2af7
    call ds_dispatch_e901            ; 0x2afa
    add sp, byte 0x0a                ; 0x2afd
    mov ax, word [bp + 0x6]          ; 0x2b00
    inc ax                           ; 0x2b03
    push ax                          ; 0x2b04
    mov ax, word [bp + 0x4]          ; 0x2b05
    inc ax                           ; 0x2b08
    inc ax                           ; 0x2b09
    push ax                          ; 0x2b0a
    call ds_dispatch_e809            ; 0x2b0b
    add sp, byte 4                   ; 0x2b0e
    cmp word [bp + 0xa], byte 0      ; 0x2b11
    jle short @..local.l70           ; 0x2b15
    mov ax, word [bp + 0xa]          ; 0x2b17
    cmp ax, word [bp + 0xc]          ; 0x2b1a
    jg short @..local.l70            ; 0x2b1d
    mov ax, 0                        ; 0x2b1f
    push ax                          ; 0x2b22
    mov ax, 1                        ; 0x2b23
    push ax                          ; 0x2b26
    call ds_dispatch_e823            ; 0x2b27
    add sp, byte 4                   ; 0x2b2a
    mov ax, 0                        ; 0x2b2d
    push ax                          ; 0x2b30
    mov ax, 3                        ; 0x2b31
    push ax                          ; 0x2b34
    push word [bp + 0xa]             ; 0x2b35
    call ds_dispatch_b2e7            ; 0x2b38
    add sp, byte 6                   ; 0x2b3b
    jmp short @..local.l71           ; 0x2b3e
@..local.l70:
    mov ax, 0                        ; 0x2b40
    push ax                          ; 0x2b43
    push ax                          ; 0x2b44
    call ds_dispatch_e823            ; 0x2b45
    add sp, byte 4                   ; 0x2b48
    mov ax, 0                        ; 0x2b4b
    push ax                          ; 0x2b4e
    mov ax, 0x90a7                   ; 0x2b4f
    push ax                          ; 0x2b52
    call ds_dispatch_e84e            ; 0x2b53
    add sp, byte 4                   ; 0x2b56
@..local.l71:
    ret                              ; 0x2b59
api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x2b5a
    call ds_dispatch_f40b            ; 0x2b5d
    mov word [bp - 0x0002], 0        ; 0x2b60
@..api_idx_000c_3.l1:
    lea ax, word [bp - 0x000c]       ; 0x2b65
    push ax                          ; 0x2b68
    mov ax, 0x248                    ; 0x2b69
    imul word [bp + 0x4]             ; 0x2b6c
    mov cx, word [bp - 0x0002]       ; 0x2b6f
    shl cx, 1                        ; 0x2b72
    shl cx, 1                        ; 0x2b74
    add ax, cx                       ; 0x2b76
    mov bx, ax                       ; 0x2b78
    push word [bx + 0x5c1c]          ; 0x2b7a
    call ds_dispatch_b27d            ; 0x2b7e
    add sp, byte 4                   ; 0x2b81
    mov ax, 0                        ; 0x2b84
    push ax                          ; 0x2b87
    mov ax, word [bp - 0x0002]       ; 0x2b88
    shl ax, 1                        ; 0x2b8b
    shl ax, 1                        ; 0x2b8d
    mov bx, ax                       ; 0x2b8f
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x2b95
    add sp, byte 4                   ; 0x2b98
    mov ax, word [bp - 0x0002]       ; 0x2b9b
    shl ax, 1                        ; 0x2b9e
    shl ax, 1                        ; 0x2ba0
    mov bx, ax                       ; 0x2ba2
    push word [bx + 0x18e]           ; 0x2ba4
    lea ax, word [bp - 0x000c]       ; 0x2ba8
    push ax                          ; 0x2bab
    call ds_dispatch_fa90            ; 0x2bac
    pop cx                           ; 0x2baf
    mov cx, 6                        ; 0x2bb0
    imul cx                          ; 0x2bb3
    mov cx, data_0002                ; 0x2bb5
    cwd                              ; 0x2bb8
    idiv cx                          ; 0x2bb9
    mov cx, ax                       ; 0x2bbb
    mov ax, word [bp - 0x0002]       ; 0x2bbd
    shl ax, 1                        ; 0x2bc0
    shl ax, 1                        ; 0x2bc2
    mov bx, ax                       ; 0x2bc4
    mov ax, word [bx + 0x18c]        ; 0x2bc6
    add ax, strict word 9            ; 0x2bca
    sub ax, cx                       ; 0x2bcd
    push ax                          ; 0x2bcf
    call ds_dispatch_e809            ; 0x2bd0
    add sp, byte 4                   ; 0x2bd3
    mov ax, 0                        ; 0x2bd6
    push ax                          ; 0x2bd9
    lea ax, word [bp - 0x000c]       ; 0x2bda
    push ax                          ; 0x2bdd
    call ds_dispatch_e84e            ; 0x2bde
    add sp, byte 4                   ; 0x2be1
    inc word [bp - 0x0002]           ; 0x2be4
    mov ax, word [bp - 0x0002]       ; 0x2be7
    cmp ax, strict word 6            ; 0x2bea
    jge short @..api_idx_000c_3.l2   ; 0x2bed
    jmp near @..api_idx_000c_3.l1    ; 0x2bef
@..api_idx_000c_3.l2:
    ret                              ; 0x2bf2
loc_2bf3:
    mov ax, 0                        ; 0x2bf3
    call ds_dispatch_f40b            ; 0x2bf6
    les bx, word [data_0002]         ; 0x2bf9
    mov ax, word [es:bx]             ; 0x2bfd
    mov dx, word [es:bx + 0x2]       ; 0x2c00
    mov word [data_9090], dx         ; 0x2c04
    mov word [data_908e], ax         ; 0x2c08
    mov ax, word [data_908e]         ; 0x2c0b
    mov dx, word [data_9090]         ; 0x2c0e
    sub ax, word [data_908a]         ; 0x2c12
    sbb dx, word [data_908c]         ; 0x2c16
    mov word [data_9094], dx         ; 0x2c1a
    mov word [data_9092], ax         ; 0x2c1e
    mov ax, word [data_9562]         ; 0x2c21
    cwd                              ; 0x2c24
    mov cx, ax                       ; 0x2c25
    mov bx, dx                       ; 0x2c27
    mov ax, word [data_9092]         ; 0x2c29
    mov dx, word [data_9094]         ; 0x2c2c
    cmp bx, dx                       ; 0x2c30
    jg short @..local.l72            ; 0x2c32
    jne short @..local.l73           ; 0x2c34
    cmp cx, ax                       ; 0x2c36
    jbe short @..local.l73           ; 0x2c38
@..local.l72:
    jmp short @..local.l74           ; 0x2c3a
@..local.l73:
    mov ax, word [data_908e]         ; 0x2c3c
    mov dx, word [data_9090]         ; 0x2c3f
    mov word [data_908c], dx         ; 0x2c43
    mov word [data_908a], ax         ; 0x2c47
    call api_idx_000a_2              ; 0x2c4a
    push word [bp + 0x4]             ; 0x2c4d
    call api_idx_000c_3              ; 0x2c50
    pop cx                           ; 0x2c53
    push word [bp + 0x6]             ; 0x2c54
    call api_idx_0002_2              ; 0x2c57
    pop cx                           ; 0x2c5a
    mov ax, 1                        ; 0x2c5b
    push ax                          ; 0x2c5e
    mov ax, 0x73                     ; 0x2c5f
    push ax                          ; 0x2c62
    mov ax, 0x32                     ; 0x2c63
    push ax                          ; 0x2c66
    call api_idx_000c_2              ; 0x2c67
    add sp, byte 6                   ; 0x2c6a
    mov ax, 0xc5                     ; 0x2c6d
    push ax                          ; 0x2c70
    mov ax, 0x93                     ; 0x2c71
    push ax                          ; 0x2c74
    mov ax, 0x73                     ; 0x2c75
    push ax                          ; 0x2c78
    mov ax, 0x32                     ; 0x2c79
    push ax                          ; 0x2c7c
    call ds_dispatch_e8da            ; 0x2c7d
    add sp, byte 8                   ; 0x2c80
@..local.l74:
    ret                              ; 0x2c83
api_idx_0050:
    mov ax, 0xffb0                   ; 0x2c84
    call ds_dispatch_f40b            ; 0x2c87
    mov word [bp - 0x0002], 0        ; 0x2c8a
@..api_idx_0050.l1:
    mov ax, word [bp - 0x0002]       ; 0x2c8f
    shl ax, 1                        ; 0x2c92
    mov bx, ax                       ; 0x2c94
    mov ax, word [bx - 0x7cf2]       ; 0x2c96
    add bx, bp                       ; 0x2c9a
    mov word [bx - 0x0050], ax       ; 0x2c9c
    mov ax, word [bp - 0x0002]       ; 0x2c9f
    shl ax, 1                        ; 0x2ca2
    mov bx, ax                       ; 0x2ca4
    mov word [bx - 0x7cf2], 0        ; 0x2ca6
    inc word [bp - 0x0002]           ; 0x2cac
    mov ax, word [bp - 0x0002]       ; 0x2caf
    cmp ax, strict word 6            ; 0x2cb2
    jl short @..api_idx_0050.l1      ; 0x2cb5
    mov word [data_904e], 0xffff     ; 0x2cb7
    mov word [bp - 0x0004], 0x32     ; 0x2cbd
    mov word [bp - 0x0006], 0x73     ; 0x2cc2
    mov word [bp - 0x0008], 0x10d    ; 0x2cc7
    mov word [bp - 0x000a], 0xc5     ; 0x2ccc
    mov word [bp - 0x000c], 0x95     ; 0x2cd1
    mov word [bp - 0x0014], 0x16     ; 0x2cd6
    mov ax, 0x90ab                   ; 0x2cdb
    push ax                          ; 0x2cde
    mov ax, word [bp - 0x000a]       ; 0x2cdf
    inc ax                           ; 0x2ce2
    push ax                          ; 0x2ce3
    mov ax, word [bp - 0x0008]       ; 0x2ce4
    inc ax                           ; 0x2ce7
    push ax                          ; 0x2ce8
    mov ax, word [bp - 0x0006]       ; 0x2ce9
    dec ax                           ; 0x2cec
    push ax                          ; 0x2ced
    mov ax, word [bp - 0x0004]       ; 0x2cee
    dec ax                           ; 0x2cf1
    push ax                          ; 0x2cf2
    call ds_dispatch_c283            ; 0x2cf3
    add sp, byte 0x0a                ; 0x2cf6
    mov word [bp - 0x003a], ax       ; 0x2cf9
    push word [bp - 0x000a]          ; 0x2cfc
    push word [bp - 0x0008]          ; 0x2cff
    push word [bp - 0x0006]          ; 0x2d02
    push word [bp - 0x0004]          ; 0x2d05
    call ds_dispatch_bc9a            ; 0x2d08
    add sp, byte 8                   ; 0x2d0b
    push word [bp - 0x000a]          ; 0x2d0e
    push word [bp - 0x0008]          ; 0x2d11
    push word [bp - 0x0006]          ; 0x2d14
    mov ax, 0x95                     ; 0x2d17
    push ax                          ; 0x2d1a
    call ds_dispatch_bc9a            ; 0x2d1b
    add sp, byte 8                   ; 0x2d1e
    call api_idx_000a_2              ; 0x2d21
    push word [bp + 0x4]             ; 0x2d24
    call api_idx_000c_3              ; 0x2d27
    pop cx                           ; 0x2d2a
    mov ax, 1                        ; 0x2d2b
    push ax                          ; 0x2d2e
    mov ax, 0x73                     ; 0x2d2f
    push ax                          ; 0x2d32
    mov ax, 0x32                     ; 0x2d33
    push ax                          ; 0x2d36
    call api_idx_000c_2              ; 0x2d37
    add sp, byte 6                   ; 0x2d3a
    lea ax, word [bp - 0x0038]       ; 0x2d3d
    push ax                          ; 0x2d40
    push word [bp + 0x6]             ; 0x2d41
    call ds_dispatch_b53b            ; 0x2d44
    add sp, byte 4                   ; 0x2d47
    lea ax, word [bp - 0x0038]       ; 0x2d4a
    push ax                          ; 0x2d4d
    push word [bp + 0x8]             ; 0x2d4e
    mov ax, 1                        ; 0x2d51
    push ax                          ; 0x2d54
    mov ax, 8                        ; 0x2d55
    push ax                          ; 0x2d58
    mov ax, word [bp - 0x0006]       ; 0x2d59
    add ax, strict word 6            ; 0x2d5c
    push ax                          ; 0x2d5f
    mov ax, word [bp - 0x000c]       ; 0x2d60
    add ax, strict word 6            ; 0x2d63
    push ax                          ; 0x2d66
    call ds_dispatch_c0c1            ; 0x2d67
    add sp, byte 0x0c                ; 0x2d6a
    lea ax, word [bp - 0x0038]       ; 0x2d6d
    push ax                          ; 0x2d70
    mov ax, word [bp + 0x6]          ; 0x2d71
    inc ax                           ; 0x2d74
    push ax                          ; 0x2d75
    call ds_dispatch_b53b            ; 0x2d76
    add sp, byte 4                   ; 0x2d79
    lea ax, word [bp - 0x0038]       ; 0x2d7c
    push ax                          ; 0x2d7f
    mov ax, 1                        ; 0x2d80
    push ax                          ; 0x2d83
    push ax                          ; 0x2d84
    mov ax, 8                        ; 0x2d85
    push ax                          ; 0x2d88
    mov ax, word [bp - 0x0006]       ; 0x2d89
    add ax, strict word 6            ; 0x2d8c
    push ax                          ; 0x2d8f
    mov ax, word [bp - 0x000c]       ; 0x2d90
    add ax, strict word 0x42         ; 0x2d93
    push ax                          ; 0x2d96
    call ds_dispatch_c0c1            ; 0x2d97
    add sp, byte 0x0c                ; 0x2d9a
    mov ax, word [bp - 0x0006]       ; 0x2d9d
    add ax, strict word 0x14         ; 0x2da0
    push ax                          ; 0x2da3
    mov ax, word [bp - 0x000c]       ; 0x2da4
    add ax, strict word 0x48         ; 0x2da7
    push ax                          ; 0x2daa
    call ds_dispatch_e809            ; 0x2dab
    add sp, byte 4                   ; 0x2dae
    mov ax, 0                        ; 0x2db1
    push ax                          ; 0x2db4
    mov ax, 0xcd                     ; 0x2db5
    push ax                          ; 0x2db8
    call ds_dispatch_e823            ; 0x2db9
    add sp, byte 4                   ; 0x2dbc
    mov ax, data_0002                ; 0x2dbf
    push ax                          ; 0x2dc2
    mov ax, 0xa                      ; 0x2dc3
    push ax                          ; 0x2dc6
    call ds_dispatch_e830            ; 0x2dc7
    add sp, byte 4                   ; 0x2dca
    mov word [bp - 0x003c], 0xffff   ; 0x2dcd
    mov word [bp - 0x003e], 0        ; 0x2dd2
    mov word [bp - 0x0040], 0        ; 0x2dd7
    mov word [bp - 0x0002], 0        ; 0x2ddc
@..api_idx_0050.l2:
    mov ax, 0                        ; 0x2de1
    mov cx, word [bp - 0x0002]       ; 0x2de4
    cmp cx, word [bp - 0x003e]       ; 0x2de7
    jne short @..api_idx_0050.l3     ; 0x2dea
    mov ax, 1                        ; 0x2dec
@..api_idx_0050.l3:
    push ax                          ; 0x2def
    push cx                          ; 0x2df0
    mov ax, word [bp - 0x0006]       ; 0x2df1
    add ax, strict word 0x14         ; 0x2df4
    push ax                          ; 0x2df7
    mov ax, word [bp - 0x000c]       ; 0x2df8
    add ax, strict word 0xc          ; 0x2dfb
    push ax                          ; 0x2dfe
    call math_loc_2a2d               ; 0x2dff
    add sp, byte 8                   ; 0x2e02
    inc word [bp - 0x0002]           ; 0x2e05
    mov ax, word [bp - 0x0002]       ; 0x2e08
    cmp ax, strict word 7            ; 0x2e0b
    jl short @..api_idx_0050.l2      ; 0x2e0e
    mov word [bp - 0x0042], 0        ; 0x2e10
    mov ax, 0                        ; 0x2e15
    push ax                          ; 0x2e18
    push ax                          ; 0x2e19
    push word [bp - 0x0042]          ; 0x2e1a
    mov ax, word [bp - 0x0006]       ; 0x2e1d
    add ax, strict word 0x15         ; 0x2e20
    push ax                          ; 0x2e23
    mov ax, word [bp - 0x000c]       ; 0x2e24
    add ax, strict word 0x5e         ; 0x2e27
    push ax                          ; 0x2e2a
    call loc_2ab9                    ; 0x2e2b
    add sp, byte 0x0a                ; 0x2e2e
    push word [bp - 0x0042]          ; 0x2e31
    push word [bp + 0x4]             ; 0x2e34
    call api_idx_0004_4              ; 0x2e37
    add sp, byte 4                   ; 0x2e3a
    mov word [bp - 0x0044], ax       ; 0x2e3d
    mov ax, 7                        ; 0x2e40
    cmp word [bp - 0x0044], byte 7   ; 0x2e43
    jge short @..api_idx_0050.l4     ; 0x2e47
    mov ax, word [bp - 0x0044]       ; 0x2e49
@..api_idx_0050.l4:
    mov word [bp - 0x0024], ax       ; 0x2e4c
    mov word [bp - 0x0018], 0        ; 0x2e4f
    mov word [bp - 0x0022], 0xffff   ; 0x2e54
    push ax                          ; 0x2e59
    push word [bp - 0x0022]          ; 0x2e5a
    push word [bp - 0x0018]          ; 0x2e5d
    mov ax, 7                        ; 0x2e60
    push ax                          ; 0x2e63
    mov ax, 0xf                      ; 0x2e64
    push ax                          ; 0x2e67
    mov ax, word [bp - 0x0006]       ; 0x2e68
    add ax, strict word 0x22         ; 0x2e6b
    push ax                          ; 0x2e6e
    mov ax, word [bp - 0x000c]       ; 0x2e6f
    add ax, strict word 6            ; 0x2e72
    push ax                          ; 0x2e75
    call ds_dispatch_bf97            ; 0x2e76
    add sp, byte 0x0e                ; 0x2e79
    mov word [bp - 0x0012], 0        ; 0x2e7c
    push word [bp - 0x0012]          ; 0x2e81
    mov ax, 7                        ; 0x2e84
    push ax                          ; 0x2e87
    mov ax, 8                        ; 0x2e88
    push ax                          ; 0x2e8b
    mov ax, word [bp - 0x0006]       ; 0x2e8c
    add ax, strict word 0x22         ; 0x2e8f
    push ax                          ; 0x2e92
    mov ax, word [bp - 0x000c]       ; 0x2e93
    add ax, strict word 0x6a         ; 0x2e96
    push ax                          ; 0x2e99
    call ds_dispatch_bfd8            ; 0x2e9a
    add sp, byte 0x0a                ; 0x2e9d
    mov ax, 0                        ; 0x2ea0
    push ax                          ; 0x2ea3
    push ax                          ; 0x2ea4
    mov ax, word [bp - 0x0006]       ; 0x2ea5
    add ax, word [bp - 0x0012]       ; 0x2ea8
    add ax, strict word 0x2e         ; 0x2eab
    push ax                          ; 0x2eae
    mov ax, word [bp - 0x000c]       ; 0x2eaf
    add ax, strict word 0x72         ; 0x2eb2
    push ax                          ; 0x2eb5
    mov ax, word [bp - 0x0006]       ; 0x2eb6
    add ax, word [bp - 0x0012]       ; 0x2eb9
    add ax, strict word 0x2a         ; 0x2ebc
    push ax                          ; 0x2ebf
    mov ax, word [bp - 0x000c]       ; 0x2ec0
    add ax, strict word 0x6a         ; 0x2ec3
    push ax                          ; 0x2ec6
    mov ax, 0                        ; 0x2ec7
    push ax                          ; 0x2eca
    call ds_dispatch_baa6            ; 0x2ecb
    add sp, byte 0x0e                ; 0x2ece
    mov ax, 0                        ; 0x2ed1
    push ax                          ; 0x2ed4
    mov ax, 9                        ; 0x2ed5
    push ax                          ; 0x2ed8
    mov ax, word [bp - 0x0006]       ; 0x2ed9
    add ax, strict word 0x28         ; 0x2edc
    push ax                          ; 0x2edf
    mov ax, word [bp - 0x000c]       ; 0x2ee0
    add ax, strict word 0x72         ; 0x2ee3
    push ax                          ; 0x2ee6
    mov ax, word [bp - 0x0006]       ; 0x2ee7
    add ax, strict word 0x22         ; 0x2eea
    push ax                          ; 0x2eed
    mov ax, word [bp - 0x000c]       ; 0x2eee
    add ax, strict word 0x6a         ; 0x2ef1
    push ax                          ; 0x2ef4
    mov ax, 1                        ; 0x2ef5
    push ax                          ; 0x2ef8
    call ds_dispatch_baa6            ; 0x2ef9
    add sp, byte 0x0e                ; 0x2efc
    mov ax, 0                        ; 0x2eff
    push ax                          ; 0x2f02
    mov ax, 0xb                      ; 0x2f03
    push ax                          ; 0x2f06
    mov ax, word [bp - 0x0006]       ; 0x2f07
    add ax, strict word 0x4c         ; 0x2f0a
    push ax                          ; 0x2f0d
    mov ax, word [bp - 0x000c]       ; 0x2f0e
    add ax, strict word 0x72         ; 0x2f11
    push ax                          ; 0x2f14
    mov ax, word [bp - 0x0006]       ; 0x2f15
    add ax, strict word 0x46         ; 0x2f18
    push ax                          ; 0x2f1b
    mov ax, word [bp - 0x000c]       ; 0x2f1c
    add ax, strict word 0x6a         ; 0x2f1f
    push ax                          ; 0x2f22
    mov ax, data_0002                ; 0x2f23
    push ax                          ; 0x2f26
    call ds_dispatch_baa6            ; 0x2f27
    add sp, byte 0x0e                ; 0x2f2a
    mov ax, 0                        ; 0x2f2d
    push ax                          ; 0x2f30
    mov ax, 0xd                      ; 0x2f31
    push ax                          ; 0x2f34
    mov ax, word [bp - 0x0006]       ; 0x2f35
    add ax, strict word 0xe          ; 0x2f38
    push ax                          ; 0x2f3b
    mov ax, word [bp - 0x000c]       ; 0x2f3c
    add ax, strict word 0x36         ; 0x2f3f
    push ax                          ; 0x2f42
    mov ax, word [bp - 0x0006]       ; 0x2f43
    add ax, strict word 6            ; 0x2f46
    push ax                          ; 0x2f49
    mov ax, word [bp - 0x000c]       ; 0x2f4a
    add ax, strict word 6            ; 0x2f4d
    push ax                          ; 0x2f50
    mov ax, 3                        ; 0x2f51
    push ax                          ; 0x2f54
    call ds_dispatch_baa6            ; 0x2f55
    add sp, byte 0x0e                ; 0x2f58
    mov ax, 0                        ; 0x2f5b
    push ax                          ; 0x2f5e
    mov ax, 0x1b                     ; 0x2f5f
    push ax                          ; 0x2f62
    mov ax, word [bp - 0x0006]       ; 0x2f63
    add ax, strict word 0xe          ; 0x2f66
    push ax                          ; 0x2f69
    mov ax, word [bp - 0x000c]       ; 0x2f6a
    add ax, strict word 0x72         ; 0x2f6d
    push ax                          ; 0x2f70
    mov ax, word [bp - 0x0006]       ; 0x2f71
    add ax, strict word 6            ; 0x2f74
    push ax                          ; 0x2f77
    mov ax, word [bp - 0x000c]       ; 0x2f78
    add ax, strict word 0x42         ; 0x2f7b
    push ax                          ; 0x2f7e
    mov ax, 4                        ; 0x2f7f
    push ax                          ; 0x2f82
    call ds_dispatch_baa6            ; 0x2f83
    add sp, byte 0x0e                ; 0x2f86
    mov word [bp - 0x0002], 0        ; 0x2f89
@..local.l75:
    mov ax, 0                        ; 0x2f8e
    push ax                          ; 0x2f91
    mov ax, word [bp - 0x0002]       ; 0x2f92
    add ax, strict word 0x31         ; 0x2f95
    cbw                              ; 0x2f98
    push ax                          ; 0x2f99
    mov ax, word [bp - 0x0006]       ; 0x2f9a
    add ax, strict word 0x1b         ; 0x2f9d
    push ax                          ; 0x2fa0
    mov ax, 0xa                      ; 0x2fa1
    imul word [bp - 0x0002]          ; 0x2fa4
    add ax, word [bp - 0x000c]       ; 0x2fa7
    add ax, strict word 0x13         ; 0x2faa
    push ax                          ; 0x2fad
    mov ax, word [bp - 0x0006]       ; 0x2fae
    add ax, strict word 0x14         ; 0x2fb1
    push ax                          ; 0x2fb4
    mov ax, 0xa                      ; 0x2fb5
    imul word [bp - 0x0002]          ; 0x2fb8
    add ax, word [bp - 0x000c]       ; 0x2fbb
    add ax, strict word 0xc          ; 0x2fbe
    push ax                          ; 0x2fc1
    mov ax, word [bp - 0x0002]       ; 0x2fc2
    add ax, strict word 5            ; 0x2fc5
    push ax                          ; 0x2fc8
    call ds_dispatch_baa6            ; 0x2fc9
    add sp, byte 0x0e                ; 0x2fcc
    inc word [bp - 0x0002]           ; 0x2fcf
    mov ax, word [bp - 0x0002]       ; 0x2fd2
    cmp ax, strict word 7            ; 0x2fd5
    jl short @..local.l75            ; 0x2fd8
    mov ax, 0                        ; 0x2fda
    push ax                          ; 0x2fdd
    mov ax, 0x46                     ; 0x2fde
    push ax                          ; 0x2fe1
    mov ax, 0x87                     ; 0x2fe2
    push ax                          ; 0x2fe5
    mov ax, 0x52                     ; 0x2fe6
    push ax                          ; 0x2fe9
    mov ax, 0x74                     ; 0x2fea
    push ax                          ; 0x2fed
    mov ax, 0x46                     ; 0x2fee
    push ax                          ; 0x2ff1
    mov ax, 0xc                      ; 0x2ff2
    push ax                          ; 0x2ff5
    call ds_dispatch_baa6            ; 0x2ff6
    add sp, byte 0x0e                ; 0x2ff9
    mov ax, 0                        ; 0x2ffc
    push ax                          ; 0x2fff
    mov ax, 0x57                     ; 0x3000
    push ax                          ; 0x3003
    mov ax, 0x9d                     ; 0x3004
    push ax                          ; 0x3007
    mov ax, 0x4b                     ; 0x3008
    push ax                          ; 0x300b
    mov ax, 0x90                     ; 0x300c
    push ax                          ; 0x300f
    mov ax, 0x32                     ; 0x3010
    push ax                          ; 0x3013
    mov ax, 0xd                      ; 0x3014
    push ax                          ; 0x3017
    call ds_dispatch_baa6            ; 0x3018
    add sp, byte 0x0e                ; 0x301b
    mov ax, 0                        ; 0x301e
    push ax                          ; 0x3021
    mov ax, 0x41                     ; 0x3022
    push ax                          ; 0x3025
    mov ax, 0xbb                     ; 0x3026
    push ax                          ; 0x3029
    mov ax, 0x5f                     ; 0x302a
    push ax                          ; 0x302d
    mov ax, 0xa5                     ; 0x302e
    push ax                          ; 0x3031
    mov ax, 0x43                     ; 0x3032
    push ax                          ; 0x3035
    mov ax, 0xe                      ; 0x3036
    push ax                          ; 0x3039
    call ds_dispatch_baa6            ; 0x303a
    add sp, byte 0x0e                ; 0x303d
    mov ax, 0                        ; 0x3040
    push ax                          ; 0x3043
    mov ax, 0x45                     ; 0x3044
    push ax                          ; 0x3047
    mov ax, 0x89                     ; 0x3048
    push ax                          ; 0x304b
    mov ax, 0x87                     ; 0x304c
    push ax                          ; 0x304f
    mov ax, 0x77                     ; 0x3050
    push ax                          ; 0x3053
    mov ax, 0x6c                     ; 0x3054
    push ax                          ; 0x3057
    mov ax, 0xf                      ; 0x3058
    push ax                          ; 0x305b
    call ds_dispatch_baa6            ; 0x305c
    add sp, byte 0x0e                ; 0x305f
    mov ax, 0                        ; 0x3062
    push ax                          ; 0x3065
    mov ax, 0x4d                     ; 0x3066
    push ax                          ; 0x3069
    mov ax, 0x9c                     ; 0x306a
    push ax                          ; 0x306d
    mov ax, 0x8e                     ; 0x306e
    push ax                          ; 0x3071
    mov ax, 0x91                     ; 0x3072
    push ax                          ; 0x3075
    mov ax, 0x7f                     ; 0x3076
    push ax                          ; 0x3079
    mov ax, 0x10                     ; 0x307a
    push ax                          ; 0x307d
    call ds_dispatch_baa6            ; 0x307e
    add sp, byte 0x0e                ; 0x3081
    mov ax, 0                        ; 0x3084
    push ax                          ; 0x3087
    mov ax, data_0044                ; 0x3088
    push ax                          ; 0x308b
    mov ax, 0xb9                     ; 0x308c
    push ax                          ; 0x308f
    mov ax, 0x81                     ; 0x3090
    push ax                          ; 0x3093
    mov ax, 0xa6                     ; 0x3094
    push ax                          ; 0x3097
    mov ax, 0x71                     ; 0x3098
    push ax                          ; 0x309b
    mov ax, 0x11                     ; 0x309c
    push ax                          ; 0x309f
    call ds_dispatch_baa6            ; 0x30a0
    add sp, byte 0x0e                ; 0x30a3
    mov ax, 7                        ; 0x30a6
    cmp word [bp - 0x0044], byte 7   ; 0x30a9
    jge short @..local.l76           ; 0x30ad
    mov ax, word [bp - 0x0044]       ; 0x30af
@..local.l76:
    mov word [bp - 0x0020], ax       ; 0x30b2
    mov word [bp - 0x0002], 0        ; 0x30b5
@..local.l77:
    mov ax, 0                        ; 0x30ba
    push ax                          ; 0x30bd
    push ax                          ; 0x30be
    mov ax, 6                        ; 0x30bf
    imul word [bp - 0x0002]          ; 0x30c2
    add ax, word [bp - 0x0006]       ; 0x30c5
    add ax, strict word 0x28         ; 0x30c8
    push ax                          ; 0x30cb
    mov ax, word [bp - 0x000c]       ; 0x30cc
    add ax, strict word 0x62         ; 0x30cf
    push ax                          ; 0x30d2
    mov ax, 6                        ; 0x30d3
    imul word [bp - 0x0002]          ; 0x30d6
    add ax, word [bp - 0x0006]       ; 0x30d9
    add ax, strict word 0x22         ; 0x30dc
    push ax                          ; 0x30df
    mov ax, word [bp - 0x000c]       ; 0x30e0
    add ax, strict word 6            ; 0x30e3
    push ax                          ; 0x30e6
    mov ax, word [bp - 0x0002]       ; 0x30e7
    add ax, strict word 0x12         ; 0x30ea
    push ax                          ; 0x30ed
    call ds_dispatch_baa6            ; 0x30ee
    add sp, byte 0x0e                ; 0x30f1
    inc word [bp - 0x0002]           ; 0x30f4
    mov ax, word [bp - 0x0002]       ; 0x30f7
    cmp ax, strict word 7            ; 0x30fa
    jl short @..local.l77            ; 0x30fd
    mov ax, 0                        ; 0x30ff
    push ax                          ; 0x3102
    push ax                          ; 0x3103
    push ax                          ; 0x3104
    push ax                          ; 0x3105
    push ax                          ; 0x3106
    mov ax, 0xffff                   ; 0x3107
    push ax                          ; 0x310a
    mov ax, 0x19                     ; 0x310b
    push ax                          ; 0x310e
    call ds_dispatch_baa6            ; 0x310f
    add sp, byte 0x0e                ; 0x3112
    mov ax, word [bp - 0x000a]       ; 0x3115
    inc ax                           ; 0x3118
    push ax                          ; 0x3119
    mov ax, word [bp - 0x0008]       ; 0x311a
    inc ax                           ; 0x311d
    push ax                          ; 0x311e
    mov ax, word [bp - 0x0006]       ; 0x311f
    dec ax                           ; 0x3122
    push ax                          ; 0x3123
    mov ax, word [bp - 0x0004]       ; 0x3124
    dec ax                           ; 0x3127
    push ax                          ; 0x3128
    call ds_dispatch_e8da            ; 0x3129
    add sp, byte 8                   ; 0x312c
    mov word [data_9562], 7          ; 0x312f
    les bx, word [data_0002]         ; 0x3135
    mov ax, word [es:bx]             ; 0x3139
    mov dx, word [es:bx + 0x2]       ; 0x313c
    mov word [data_908c], dx         ; 0x3140
    mov word [data_908a], ax         ; 0x3144
    mov word [bp - 0x001c], 1        ; 0x3147
@..local.l78:
    push word [bp - 0x0042]          ; 0x314c
    push word [bp + 0x4]             ; 0x314f
    call loc_2bf3                    ; 0x3152
    add sp, byte 4                   ; 0x3155
    mov ax, 0x59fe                   ; 0x3158
    push ax                          ; 0x315b
    call ds_dispatch_b90d            ; 0x315c
    pop cx                           ; 0x315f
    dec ax                           ; 0x3160
    mov word [bp - 0x001a], ax       ; 0x3161
    cmp word [data_59fc], byte 0     ; 0x3164
    je short @..local.l82            ; 0x3169
    mov ax, word [bp - 0x0022]       ; 0x316b
    cmp ax, word [bp - 0x0018]       ; 0x316e
    jl short @..local.l79            ; 0x3171
    inc word [bp - 0x0022]           ; 0x3173
@..local.l79:
    mov ax, word [bp - 0x0022]       ; 0x3176
    cmp ax, strict word 0xffff       ; 0x3179
    je short @..local.l80            ; 0x317c
    cmp ax, word [bp - 0x0018]       ; 0x317e
    jl short @..local.l80            ; 0x3181
    mov ax, word [bp - 0x0018]       ; 0x3183
    add ax, word [bp - 0x0020]       ; 0x3186
    mov cx, ax                       ; 0x3189
    dec ax                           ; 0x318b
    mov cx, ax                       ; 0x318c
    mov ax, word [bp - 0x0022]       ; 0x318e
    cmp cx, ax                       ; 0x3191
    jge short @..local.l81           ; 0x3193
@..local.l80:
    mov ax, word [bp - 0x0018]       ; 0x3195
    mov word [bp - 0x0022], ax       ; 0x3198
@..local.l81:
    mov word [data_5b3e], 1          ; 0x319b
    mov ax, word [bp - 0x0022]       ; 0x31a1
    sub ax, word [bp - 0x0018]       ; 0x31a4
    add ax, strict word 0x12         ; 0x31a7
    mov word [bp - 0x001a], ax       ; 0x31aa
@..local.l82:
    cmp word [data_5b3e], byte 1     ; 0x31ad
    je short @..local.l83            ; 0x31b2
    jmp near @..local.l107           ; 0x31b4
@..local.l83:
    mov ax, word [bp - 0x001a]       ; 0x31b7
    jmp near @..local.l105           ; 0x31ba

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x8b, 0xbe, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xdd, 0x85, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x5d, 0xbe, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xad, 0x85, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x34, 0x8d, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x56, 0x8d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xf3, 0x87, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x05, 0xb6, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xab, 0x8b
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x7a
    db 0x8b, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x47, 0x84, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0xf4, 0x8b, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x16, 0x8c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xb3, 0x86, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xc5, 0xb4, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xd6, 0x89, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xb6, 0x89, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x1c, 0x83, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x7d, 0x89, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x5d, 0x89, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..local.l84:
    cmp word [bp - 0x001a], byte 5   ; 0x3513
    jge short @..local.l85           ; 0x3517
    jmp near @..local.l93            ; 0x3519
@..local.l85:
    cmp word [bp - 0x001a], byte 0x0b ; 0x351c
    jle short @..local.l86           ; 0x3520
    jmp near @..local.l93            ; 0x3522
@..local.l86:
    mov ax, 0                        ; 0x3525
    push ax                          ; 0x3528
    push word [bp - 0x003e]          ; 0x3529
    mov ax, word [bp - 0x0006]       ; 0x352c
    add ax, strict word 0x14         ; 0x352f
    push ax                          ; 0x3532
    mov ax, word [bp - 0x000c]       ; 0x3533
    add ax, strict word 0xc          ; 0x3536
    push ax                          ; 0x3539
    call math_loc_2a2d               ; 0x353a
    add sp, byte 8                   ; 0x353d
    mov ax, word [bp - 0x001a]       ; 0x3540
    add ax, strict word 0xfffb       ; 0x3543
    mov word [bp - 0x003e], ax       ; 0x3546
    mov ax, 1                        ; 0x3549
    push ax                          ; 0x354c
    push word [bp - 0x003e]          ; 0x354d
    mov ax, word [bp - 0x0006]       ; 0x3550
    add ax, strict word 0x14         ; 0x3553
    push ax                          ; 0x3556
    mov ax, word [bp - 0x000c]       ; 0x3557
    add ax, strict word 0xc          ; 0x355a
    push ax                          ; 0x355d
    call math_loc_2a2d               ; 0x355e
    add sp, byte 8                   ; 0x3561
    cmp word [bp - 0x003c], byte 0   ; 0x3564
    jge short @..local.l87           ; 0x3568
    jmp near @..local.l91            ; 0x356a
@..local.l87:
    mov ax, 6                        ; 0x356d
    push ax                          ; 0x3570
    mov ax, 0                        ; 0x3571
    push ax                          ; 0x3574
    mov ax, 0x248                    ; 0x3575
    imul word [bp + 0x4]             ; 0x3578
    mov bx, ax                       ; 0x357b
    mov ax, word [bx + 0x5c18]       ; 0x357d
    push ax                          ; 0x3581
    mov ax, 6                        ; 0x3582
    imul word [bp - 0x003c]          ; 0x3585
    mov bx, ax                       ; 0x3588
    mov al, byte [bx + 0x621]        ; 0x358a
    sub ah, ah                       ; 0x358e
    mov cx, ax                       ; 0x3590
    pop ax                           ; 0x3592
    sub ax, cx                       ; 0x3593
    push ax                          ; 0x3595
    call ds_dispatch_b7c2            ; 0x3596
    add sp, byte 6                   ; 0x3599
    mov word [bp - 0x0040], ax       ; 0x359c
    mov ax, 6                        ; 0x359f
    imul word [bp - 0x003c]          ; 0x35a2
    mov bx, ax                       ; 0x35a5
    mov al, byte [bx + 0x622]        ; 0x35a7
    sub ah, ah                       ; 0x35ab
    mov cx, word [bp - 0x0040]       ; 0x35ad
    inc cx                           ; 0x35b0
    imul cx                          ; 0x35b1
    mov word [bp - 0x0002], ax       ; 0x35b3
    cmp word [bp + 0xa], byte 0      ; 0x35b6
    jne short @..local.l88           ; 0x35ba
    mov ax, 0x3e7                    ; 0x35bc
    jmp short @..local.l90           ; 0x35bf
@..local.l88:
    mov ax, 0x248                    ; 0x35c1
    imul word [bp + 0x4]             ; 0x35c4
    mov cx, word [bp - 0x0042]       ; 0x35c7
    shl cx, 1                        ; 0x35ca
    shl cx, 1                        ; 0x35cc
    add ax, cx                       ; 0x35ce
    mov bx, ax                       ; 0x35d0
    mov ax, word [bx + 0x5c1c]       ; 0x35d2
    cmp ax, word [bp - 0x0002]       ; 0x35d6
    jge short @..local.l89           ; 0x35d9
    jmp short @..local.l90           ; 0x35db
@..local.l89:
    mov ax, word [bp - 0x0002]       ; 0x35dd
@..local.l90:
    push ax                          ; 0x35e0
    mov ax, 6                        ; 0x35e1
    imul word [bp - 0x003c]          ; 0x35e4
    mov bx, ax                       ; 0x35e7
    mov al, byte [bx + 0x622]        ; 0x35e9
    sub ah, ah                       ; 0x35ed
    mov cx, word [bp - 0x003e]       ; 0x35ef
    inc cx                           ; 0x35f2
    imul cx                          ; 0x35f3
    push ax                          ; 0x35f5
    push word [bp - 0x0042]          ; 0x35f6
    mov ax, word [bp - 0x0006]       ; 0x35f9
    add ax, strict word 0x15         ; 0x35fc
    push ax                          ; 0x35ff
    mov ax, word [bp - 0x000c]       ; 0x3600
    add ax, strict word 0x5e         ; 0x3603
    push ax                          ; 0x3606
    call loc_2ab9                    ; 0x3607
    add sp, byte 0x0a                ; 0x360a
    jmp short @..local.l92           ; 0x360d
@..local.l91:
    mov ax, 0                        ; 0x360f
    push ax                          ; 0x3612
    push ax                          ; 0x3613
    push word [bp - 0x0042]          ; 0x3614
    mov ax, word [bp - 0x0006]       ; 0x3617
    add ax, strict word 0x15         ; 0x361a
    push ax                          ; 0x361d
    mov ax, word [bp - 0x000c]       ; 0x361e
    add ax, strict word 0x5e         ; 0x3621
    push ax                          ; 0x3624
    call loc_2ab9                    ; 0x3625
    add sp, byte 0x0a                ; 0x3628
@..local.l92:
    mov ax, word [bp - 0x0006]       ; 0x362b
    add ax, strict word 0x1c         ; 0x362e
    push ax                          ; 0x3631
    mov ax, word [bp - 0x000c]       ; 0x3632
    add ax, strict word 0x56         ; 0x3635
    push ax                          ; 0x3638
    mov ax, word [bp - 0x0006]       ; 0x3639
    add ax, strict word 0x14         ; 0x363c
    push ax                          ; 0x363f
    mov ax, word [bp - 0x000c]       ; 0x3640
    add ax, strict word 0xb          ; 0x3643
    push ax                          ; 0x3646
    call ds_dispatch_e8da            ; 0x3647
    add sp, byte 8                   ; 0x364a
    mov ax, word [bp - 0x0006]       ; 0x364d
    add ax, strict word 0x1b         ; 0x3650
    push ax                          ; 0x3653
    mov ax, word [bp - 0x000c]       ; 0x3654
    add ax, strict word 0x72         ; 0x3657
    push ax                          ; 0x365a
    mov ax, word [bp - 0x0006]       ; 0x365b
    add ax, strict word 0x15         ; 0x365e
    push ax                          ; 0x3661
    mov ax, word [bp - 0x000c]       ; 0x3662
    add ax, strict word 0x5e         ; 0x3665
    push ax                          ; 0x3668
    call ds_dispatch_e8da            ; 0x3669
    add sp, byte 8                   ; 0x366c
    jmp near @..local.l104           ; 0x366f
@..local.l93:
    cmp word [bp - 0x001a], byte 0x0c ; 0x3672
    jge short @..local.l94           ; 0x3676
    jmp near @..local.l98            ; 0x3678
@..local.l94:
    cmp word [bp - 0x001a], byte 0x11 ; 0x367b
    jle short @..local.l95           ; 0x367f
    jmp near @..local.l98            ; 0x3681
@..local.l95:
    mov ax, word [bp - 0x001a]       ; 0x3684
    add ax, strict word 0xfff4       ; 0x3687
    mov word [bp - 0x0042], ax       ; 0x368a
    mov word [bp - 0x003c], 0xffff   ; 0x368d
    push ax                          ; 0x3692
    push word [bp + 0x4]             ; 0x3693
    call api_idx_0004_4              ; 0x3696
    add sp, byte 4                   ; 0x3699
    mov word [bp - 0x0044], ax       ; 0x369c
    mov ax, 7                        ; 0x369f
    cmp word [bp - 0x0044], byte 7   ; 0x36a2
    jge short @..local.l96           ; 0x36a6
    mov ax, word [bp - 0x0044]       ; 0x36a8
@..local.l96:
    mov word [bp - 0x0024], ax       ; 0x36ab
    mov ax, 7                        ; 0x36ae
    cmp word [bp - 0x0044], byte 7   ; 0x36b1
    jge short @..local.l97           ; 0x36b5
    mov ax, word [bp - 0x0044]       ; 0x36b7
@..local.l97:
    mov word [bp - 0x0020], ax       ; 0x36ba
    mov word [bp - 0x0018], 0        ; 0x36bd
    mov word [bp - 0x0022], 0xffff   ; 0x36c2
    push word [bp - 0x0024]          ; 0x36c7
    push word [bp - 0x0022]          ; 0x36ca
    push word [bp - 0x0018]          ; 0x36cd
    mov ax, 7                        ; 0x36d0
    push ax                          ; 0x36d3
    mov ax, 0xf                      ; 0x36d4
    push ax                          ; 0x36d7
    mov ax, word [bp - 0x0006]       ; 0x36d8
    add ax, strict word 0x22         ; 0x36db
    push ax                          ; 0x36de
    mov ax, word [bp - 0x000c]       ; 0x36df
    add ax, strict word 6            ; 0x36e2
    push ax                          ; 0x36e5
    call ds_dispatch_bf97            ; 0x36e6
    add sp, byte 0x0e                ; 0x36e9
    mov word [bp - 0x0012], 0        ; 0x36ec
    push word [bp - 0x0012]          ; 0x36f1
    mov ax, 7                        ; 0x36f4
    push ax                          ; 0x36f7
    mov ax, 8                        ; 0x36f8
    push ax                          ; 0x36fb
    mov ax, word [bp - 0x0006]       ; 0x36fc
    add ax, strict word 0x22         ; 0x36ff
    push ax                          ; 0x3702
    mov ax, word [bp - 0x000c]       ; 0x3703
    add ax, strict word 0x6a         ; 0x3706
    push ax                          ; 0x3709
    call ds_dispatch_bfd8            ; 0x370a
    add sp, byte 0x0a                ; 0x370d
    mov ax, 0                        ; 0x3710
    push ax                          ; 0x3713
    push ax                          ; 0x3714
    mov ax, word [bp - 0x0006]       ; 0x3715
    add ax, word [bp - 0x0012]       ; 0x3718
    add ax, strict word 0x2e         ; 0x371b
    push ax                          ; 0x371e
    mov ax, word [bp - 0x000c]       ; 0x371f
    add ax, strict word 0x72         ; 0x3722
    push ax                          ; 0x3725
    mov ax, word [bp - 0x0006]       ; 0x3726
    add ax, word [bp - 0x0012]       ; 0x3729
    add ax, strict word 0x2a         ; 0x372c
    push ax                          ; 0x372f
    mov ax, word [bp - 0x000c]       ; 0x3730
    add ax, strict word 0x6a         ; 0x3733
    push ax                          ; 0x3736
    mov ax, 0                        ; 0x3737
    push ax                          ; 0x373a
    call ds_dispatch_baa6            ; 0x373b
    add sp, byte 0x0e                ; 0x373e
    mov ax, 0                        ; 0x3741
    push ax                          ; 0x3744
    push ax                          ; 0x3745
    push word [bp - 0x0042]          ; 0x3746
    mov ax, word [bp - 0x0006]       ; 0x3749
    add ax, strict word 0x15         ; 0x374c
    push ax                          ; 0x374f
    mov ax, word [bp - 0x000c]       ; 0x3750
    add ax, strict word 0x5e         ; 0x3753
    push ax                          ; 0x3756
    call loc_2ab9                    ; 0x3757
    add sp, byte 0x0a                ; 0x375a
    mov ax, word [bp - 0x0006]       ; 0x375d
    add ax, strict word 0x4c         ; 0x3760
    push ax                          ; 0x3763
    mov ax, word [bp - 0x000c]       ; 0x3764
    add ax, strict word 0x72         ; 0x3767
    push ax                          ; 0x376a
    mov ax, word [bp - 0x0006]       ; 0x376b
    add ax, strict word 0x22         ; 0x376e
    push ax                          ; 0x3771
    mov ax, word [bp - 0x000c]       ; 0x3772
    add ax, strict word 6            ; 0x3775
    push ax                          ; 0x3778
    call ds_dispatch_e8da            ; 0x3779
    add sp, byte 8                   ; 0x377c
    mov ax, word [bp - 0x0006]       ; 0x377f
    add ax, strict word 0x1b         ; 0x3782
    push ax                          ; 0x3785
    mov ax, word [bp - 0x000c]       ; 0x3786
    add ax, strict word 0x72         ; 0x3789
    push ax                          ; 0x378c
    mov ax, word [bp - 0x0006]       ; 0x378d
    add ax, strict word 0x15         ; 0x3790
    push ax                          ; 0x3793
    mov ax, word [bp - 0x000c]       ; 0x3794
    add ax, strict word 0x5e         ; 0x3797
    push ax                          ; 0x379a
    call ds_dispatch_e8da            ; 0x379b
    add sp, byte 8                   ; 0x379e
    jmp near @..local.l104           ; 0x37a1
@..local.l98:
    cmp word [bp - 0x001a], byte 0x12 ; 0x37a4
    jge short @..local.l99           ; 0x37a8
    jmp near @..local.l104           ; 0x37aa
@..local.l99:
    mov ax, word [bp - 0x0020]       ; 0x37ad
    add ax, strict word 0x12         ; 0x37b0
    cmp ax, word [bp - 0x001a]       ; 0x37b3
    jg short @..local.l100           ; 0x37b6
    jmp near @..local.l104           ; 0x37b8
@..local.l100:
    mov ax, word [bp - 0x0018]       ; 0x37bb
    add ax, word [bp - 0x001a]       ; 0x37be
    add ax, strict word 0xffee       ; 0x37c1
    mov word [bp - 0x0022], ax       ; 0x37c4
    shl ax, 1                        ; 0x37c7
    mov bx, ax                       ; 0x37c9
    mov ax, word [bx - 0x6aee]       ; 0x37cb
    mov word [bp - 0x003c], ax       ; 0x37cf
    push word [bp - 0x0024]          ; 0x37d2
    push word [bp - 0x0022]          ; 0x37d5
    push word [bp - 0x0018]          ; 0x37d8
    mov ax, 7                        ; 0x37db
    push ax                          ; 0x37de
    mov ax, 0xf                      ; 0x37df
    push ax                          ; 0x37e2
    mov ax, word [bp - 0x0006]       ; 0x37e3
    add ax, strict word 0x22         ; 0x37e6
    push ax                          ; 0x37e9
    mov ax, word [bp - 0x000c]       ; 0x37ea
    add ax, strict word 6            ; 0x37ed
    push ax                          ; 0x37f0
    call ds_dispatch_bf97            ; 0x37f1
    add sp, byte 0x0e                ; 0x37f4
    mov ax, 6                        ; 0x37f7
    push ax                          ; 0x37fa
    mov ax, 0                        ; 0x37fb
    push ax                          ; 0x37fe
    mov ax, 0x248                    ; 0x37ff
    imul word [bp + 0x4]             ; 0x3802
    mov bx, ax                       ; 0x3805
    mov ax, word [bx + 0x5c18]       ; 0x3807
    push ax                          ; 0x380b
    mov ax, 6                        ; 0x380c
    imul word [bp - 0x003c]          ; 0x380f
    mov bx, ax                       ; 0x3812
    mov al, byte [bx + 0x621]        ; 0x3814
    sub ah, ah                       ; 0x3818
    mov cx, ax                       ; 0x381a
    pop ax                           ; 0x381c
    sub ax, cx                       ; 0x381d
    push ax                          ; 0x381f
    call ds_dispatch_b7c2            ; 0x3820
    add sp, byte 6                   ; 0x3823
    mov word [bp - 0x0040], ax       ; 0x3826
    mov ax, 6                        ; 0x3829
    imul word [bp - 0x003c]          ; 0x382c
    mov bx, ax                       ; 0x382f
    mov al, byte [bx + 0x622]        ; 0x3831
    sub ah, ah                       ; 0x3835
    mov cx, word [bp - 0x0040]       ; 0x3837
    inc cx                           ; 0x383a
    imul cx                          ; 0x383b
    mov word [bp - 0x0002], ax       ; 0x383d
    cmp word [bp + 0xa], byte 0      ; 0x3840
    jne short @..local.l101          ; 0x3844
    mov ax, 0x3e7                    ; 0x3846
    jmp short @..local.l103          ; 0x3849
@..local.l101:
    mov ax, 0x248                    ; 0x384b
    imul word [bp + 0x4]             ; 0x384e
    mov cx, word [bp - 0x0042]       ; 0x3851
    shl cx, 1                        ; 0x3854
    shl cx, 1                        ; 0x3856
    add ax, cx                       ; 0x3858
    mov bx, ax                       ; 0x385a
    mov ax, word [bx + 0x5c1c]       ; 0x385c
    cmp ax, word [bp - 0x0002]       ; 0x3860
    jge short @..local.l102          ; 0x3863
    jmp short @..local.l103          ; 0x3865
@..local.l102:
    mov ax, word [bp - 0x0002]       ; 0x3867
@..local.l103:
    push ax                          ; 0x386a
    mov ax, 6                        ; 0x386b
    imul word [bp - 0x003c]          ; 0x386e
    mov bx, ax                       ; 0x3871
    mov al, byte [bx + 0x622]        ; 0x3873
    sub ah, ah                       ; 0x3877
    mov cx, word [bp - 0x003e]       ; 0x3879
    inc cx                           ; 0x387c
    imul cx                          ; 0x387d
    push ax                          ; 0x387f
    push word [bp - 0x0042]          ; 0x3880
    mov ax, word [bp - 0x0006]       ; 0x3883
    add ax, strict word 0x15         ; 0x3886
    push ax                          ; 0x3889
    mov ax, word [bp - 0x000c]       ; 0x388a
    add ax, strict word 0x5e         ; 0x388d
    push ax                          ; 0x3890
    call loc_2ab9                    ; 0x3891
    add sp, byte 0x0a                ; 0x3894
    mov ax, word [bp - 0x0006]       ; 0x3897
    add ax, strict word 0x4c         ; 0x389a
    push ax                          ; 0x389d
    mov ax, word [bp - 0x000c]       ; 0x389e
    add ax, strict word 0x72         ; 0x38a1
    push ax                          ; 0x38a4
    mov ax, word [bp - 0x0006]       ; 0x38a5
    add ax, strict word 0x22         ; 0x38a8
    push ax                          ; 0x38ab
    mov ax, word [bp - 0x000c]       ; 0x38ac
    add ax, strict word 6            ; 0x38af
    push ax                          ; 0x38b2
    call ds_dispatch_e8da            ; 0x38b3
    add sp, byte 8                   ; 0x38b6
    mov ax, word [bp - 0x0006]       ; 0x38b9
    add ax, strict word 0x1b         ; 0x38bc
    push ax                          ; 0x38bf
    mov ax, word [bp - 0x000c]       ; 0x38c0
    add ax, strict word 0x72         ; 0x38c3
    push ax                          ; 0x38c6
    mov ax, word [bp - 0x0006]       ; 0x38c7
    add ax, strict word 0x15         ; 0x38ca
    push ax                          ; 0x38cd
    mov ax, word [bp - 0x000c]       ; 0x38ce
    add ax, strict word 0x5e         ; 0x38d1
    push ax                          ; 0x38d4
    call ds_dispatch_e8da            ; 0x38d5
    add sp, byte 8                   ; 0x38d8
@..local.l104:
    jmp short @..local.l107          ; 0x38db
    db 0x04, 0x82, 0x2b, 0x83, 0x2b, 0x83, 0x62, 0x84, 0x0f, 0x85
@..local.l105:
    cmp ax, strict word 5            ; 0x38e7
    jae short @..local.l106          ; 0x38ea
    xchg bx, ax                      ; 0x38ec
    shl bx, 1                        ; 0x38ed
    jmp [cs:bx - 0x76dc]             ; 0x38ef
@..local.l106:
    jmp near @..local.l84            ; 0x38f4
@..local.l107:
    cmp word [bp - 0x001c], byte 0   ; 0x38f7
    je short @..local.l108           ; 0x38fb
    jmp near @..local.l78            ; 0x38fd
@..local.l108:
    mov ax, 1                        ; 0x3900
    push ax                          ; 0x3903
    push word [bp - 0x003a]          ; 0x3904
    call ds_dispatch_c459            ; 0x3907
    add sp, byte 4                   ; 0x390a
    mov ax, word [bp - 0x000a]       ; 0x390d
    inc ax                           ; 0x3910
    push ax                          ; 0x3911
    mov ax, word [bp - 0x0008]       ; 0x3912
    inc ax                           ; 0x3915
    push ax                          ; 0x3916
    mov ax, word [bp - 0x0006]       ; 0x3917
    dec ax                           ; 0x391a
    push ax                          ; 0x391b
    mov ax, word [bp - 0x0004]       ; 0x391c
    dec ax                           ; 0x391f
    push ax                          ; 0x3920
    call ds_dispatch_e8da            ; 0x3921
    add sp, byte 8                   ; 0x3924
    mov word [bp - 0x0002], 0        ; 0x3927
@..local.l109:
    mov ax, word [bp - 0x0002]       ; 0x392c
    shl ax, 1                        ; 0x392f
    mov bx, ax                       ; 0x3931
    add bx, bp                       ; 0x3933
    mov ax, word [bx - 0x0050]       ; 0x3935
    mov cx, word [bp - 0x0002]       ; 0x3938
    shl cx, 1                        ; 0x393b
    mov bx, cx                       ; 0x393d
    mov word [bx - 0x7cf2], ax       ; 0x393f
    inc word [bp - 0x0002]           ; 0x3943
    mov ax, word [bp - 0x0002]       ; 0x3946
    cmp ax, strict word 6            ; 0x3949
    jl short @..local.l109           ; 0x394c
    les bx, word [data_0002]         ; 0x394e
    mov ax, word [es:bx]             ; 0x3952
    mov dx, word [es:bx + 0x2]       ; 0x3955
    mov word [data_908c], dx         ; 0x3959
    mov word [data_908a], ax         ; 0x395d
    mov ax, word [bp - 0x003e]       ; 0x3960
    xchg al, ah                      ; 0x3963
    sub al, al                       ; 0x3965
    add ax, word [bp - 0x003c]       ; 0x3967
    add ax, 0x100                    ; 0x396a
    mov word [data_904e], ax         ; 0x396d
    mov ax, word [data_9050]         ; 0x3970
    ret                              ; 0x3973
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x3974
    call ds_dispatch_f40b            ; 0x3977
    push word [bp + 0x6]             ; 0x397a
    push word [bp + 0x6]             ; 0x397d
    mov ax, 0x7f1                    ; 0x3980
    cmp word [bp + 0x6], byte 0      ; 0x3983
    je short @..api_idx_0004_5.l1    ; 0x3987
    mov ax, 0x7ea                    ; 0x3989
@..api_idx_0004_5.l1:
    push ax                          ; 0x398c
    push word [bp + 0x4]             ; 0x398d
    call api_idx_0050                ; 0x3990
    add sp, byte 8                   ; 0x3993
    test ax, ax                      ; 0x3996
    je short @..api_idx_0004_5.l2    ; 0x3998
    jmp near @..api_idx_0004_5.l6    ; 0x399a
@..api_idx_0004_5.l2:
    mov ax, word [data_904e]         ; 0x399d
    mov cx, 0x100                    ; 0x39a0
    cwd                              ; 0x39a3
    idiv cx                          ; 0x39a4
    mov word [bp - 0x0004], ax       ; 0x39a6
    mov word [bp - 0x0002], dx       ; 0x39a9
    mov ax, 6                        ; 0x39ac
    imul dx                          ; 0x39af
    mov bx, ax                       ; 0x39b1
    cmp byte [bx + 0x624], 1         ; 0x39b3
    jne short @..api_idx_0004_5.l3   ; 0x39b8
    call api_idx_0012_2              ; 0x39ba
    mov word [data_9564], ax         ; 0x39bd
    cmp ax, strict word 0xffff       ; 0x39c0
    jne short @..api_idx_0004_5.l3   ; 0x39c3
    mov word [bp - 0x0002], 0xffff   ; 0x39c5
@..api_idx_0004_5.l3:
    cmp word [bp - 0x0002], byte 0   ; 0x39ca
    jge short @..api_idx_0004_5.l4   ; 0x39ce
    jmp near @..api_idx_0004_5.l6    ; 0x39d0
@..api_idx_0004_5.l4:
    mov ax, 6                        ; 0x39d3
    imul word [bp - 0x0002]          ; 0x39d6
    mov bx, ax                       ; 0x39d9
    mov al, byte [bx + 0x622]        ; 0x39db
    sub ah, ah                       ; 0x39df
    imul word [bp - 0x0004]          ; 0x39e1
    push ax                          ; 0x39e4
    mov ax, 0x248                    ; 0x39e5
    imul word [bp + 0x4]             ; 0x39e8
    mov cx, ax                       ; 0x39eb
    mov al, byte [bx + 0x620]        ; 0x39ed
    sub ah, ah                       ; 0x39f1
    mov dx, ax                       ; 0x39f3
    shl ax, 1                        ; 0x39f5
    shl ax, 1                        ; 0x39f7
    mov dx, ax                       ; 0x39f9
    add cx, ax                       ; 0x39fb
    mov bx, cx                       ; 0x39fd
    pop ax                           ; 0x39ff
    sub word [bx + 0x5c1c], ax       ; 0x3a00
    push word [bp - 0x0004]          ; 0x3a04
    call ds_dispatch_b7a9            ; 0x3a07
    pop cx                           ; 0x3a0a
    push ax                          ; 0x3a0b
    mov ax, 6                        ; 0x3a0c
    imul word [bp - 0x0002]          ; 0x3a0f
    mov bx, ax                       ; 0x3a12
    mov al, byte [bx + 0x621]        ; 0x3a14
    sub ah, ah                       ; 0x3a18
    mov cx, ax                       ; 0x3a1a
    pop ax                           ; 0x3a1c
    add ax, cx                       ; 0x3a1d
    add ax, word [bp - 0x0004]       ; 0x3a1f
    push ax                          ; 0x3a22
    mov ax, 0x248                    ; 0x3a23
    imul word [bp + 0x4]             ; 0x3a26
    mov bx, ax                       ; 0x3a29
    pop ax                           ; 0x3a2b
    sub word [bx + 0x5c10], ax       ; 0x3a2c
    cmp word [bx + 0x5c10], byte 0   ; 0x3a30
    jge short @..api_idx_0004_5.l5   ; 0x3a35
    mov word [bx + 0x5c10], 0        ; 0x3a37
    mov ax, 6                        ; 0x3a3d
    push ax                          ; 0x3a40
    call ds_dispatch_b7a9            ; 0x3a41
    pop cx                           ; 0x3a44
    add ax, strict word 6            ; 0x3a45
    push ax                          ; 0x3a48
    mov ax, 0x248                    ; 0x3a49
    imul word [bp + 0x4]             ; 0x3a4c
    mov bx, ax                       ; 0x3a4f
    pop ax                           ; 0x3a51
    mov byte [bx + 0x5d5c], al       ; 0x3a52
@..api_idx_0004_5.l5:
    push word [data_9564]            ; 0x3a56
    push word [bp - 0x0004]          ; 0x3a5a
    push word [bp - 0x0002]          ; 0x3a5d
    push word [bp + 0x4]             ; 0x3a60
    call api_idx_0008_2              ; 0x3a63
    add sp, byte 8                   ; 0x3a66
@..api_idx_0004_5.l6:
    ret                              ; 0x3a69
math_loc_3a6a:
    mov ax, 0                        ; 0x3a6a
    call ds_dispatch_f40b            ; 0x3a6d
    mov ax, 0xbb                     ; 0x3a70
    push ax                          ; 0x3a73
    mov ax, 0xab                     ; 0x3a74
    push ax                          ; 0x3a77
    mov ax, 0x70                     ; 0x3a78
    push ax                          ; 0x3a7b
    mov ax, 1                        ; 0x3a7c
    push ax                          ; 0x3a7f
    call ds_dispatch_e8da            ; 0x3a80
    add sp, byte 8                   ; 0x3a83
    call ds_dispatch_ec17            ; 0x3a86
@..math_loc_3a6a.l1:
    call ds_dispatch_baef            ; 0x3a89
    test ax, ax                      ; 0x3a8c
    jne short @..math_loc_3a6a.l2    ; 0x3a8e
    jmp short @..math_loc_3a6a.l1    ; 0x3a90
@..math_loc_3a6a.l2:
    mov ax, 0                        ; 0x3a92
    push ax                          ; 0x3a95
    push ax                          ; 0x3a96
    push word [data_93f8]            ; 0x3a97
    push word [data_93f6]            ; 0x3a9b
    call ds_dispatch_e942            ; 0x3a9f
    add sp, byte 8                   ; 0x3aa2
    mov word [data_9566], 0          ; 0x3aa5
    ret                              ; 0x3aab
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x3aac
    call ds_dispatch_f40b            ; 0x3aaf
    cmp word [data_9566], byte 5     ; 0x3ab2
    jle short @..api_idx_0004_6.l1   ; 0x3ab7
    call math_loc_3a6a               ; 0x3ab9
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x4]          ; 0x3abc
    cmp byte [bx], 0                 ; 0x3abf
    jne short @..local.l110          ; 0x3ac2
    inc word [data_9566]             ; 0x3ac4
    ret                              ; 0x3ac8
@..local.l110:
    mov ax, data_0002                ; 0x3ac9
    push ax                          ; 0x3acc
    push bx                          ; 0x3acd
    call ds_dispatch_e883            ; 0x3ace
    add sp, byte 4                   ; 0x3ad1
    inc ax                           ; 0x3ad4
    mov cx, data_0002                ; 0x3ad5
    cwd                              ; 0x3ad8
    idiv cx                          ; 0x3ad9
    mov cx, ax                       ; 0x3adb
    mov ax, 0x54                     ; 0x3add
    sub ax, cx                       ; 0x3ae0
    mov word [bp - 0x0002], ax       ; 0x3ae2
    push word [bp + 0x4]             ; 0x3ae5
    call ds_dispatch_fa90            ; 0x3ae8
    pop cx                           ; 0x3aeb
    dec ax                           ; 0x3aec
    mov word [bp - 0x0004], ax       ; 0x3aed
    mov bx, word [bp + 0x4]          ; 0x3af0
    mov si, ax                       ; 0x3af3
    mov al, byte [bx + si]           ; 0x3af5
    sub ah, ah                       ; 0x3af7
    jmp short @..local.l113          ; 0x3af9
@..local.l111:
    mov bx, word [bp + 0x4]          ; 0x3afb
    mov si, word [bp - 0x0004]       ; 0x3afe
    mov byte [bx + si], 0            ; 0x3b01
    mov word [bp - 0x0002], 4        ; 0x3b04
    jmp short @..local.l114          ; 0x3b09
@..local.l112:
    mov bx, word [bp + 0x4]          ; 0x3b0b
    mov si, word [bp - 0x0004]       ; 0x3b0e
    mov byte [bx + si], 0            ; 0x3b11
    mov ax, word [data_9568]         ; 0x3b14
    mov word [bp - 0x0002], ax       ; 0x3b17
    jmp short @..local.l114          ; 0x3b1a
@..local.l113:
    cmp ax, strict word 0x24         ; 0x3b1c
    je short @..local.l111           ; 0x3b1f
    cmp ax, strict word 0x5e         ; 0x3b21
    je short @..local.l112           ; 0x3b24
@..local.l114:
    mov ax, 0xc                      ; 0x3b26
    imul word [data_9566]            ; 0x3b29
    add ax, strict word 0x70         ; 0x3b2d
    push ax                          ; 0x3b30
    push word [bp - 0x0002]          ; 0x3b31
    call ds_dispatch_e809            ; 0x3b34
    add sp, byte 4                   ; 0x3b37
    mov ax, 0                        ; 0x3b3a
    push ax                          ; 0x3b3d
    mov ax, 0x55                     ; 0x3b3e
    push ax                          ; 0x3b41
    call ds_dispatch_e823            ; 0x3b42
    add sp, byte 4                   ; 0x3b45
    mov ax, data_0002                ; 0x3b48
    push ax                          ; 0x3b4b
    push word [bp + 0x4]             ; 0x3b4c
    call ds_dispatch_e84e            ; 0x3b4f
    add sp, byte 4                   ; 0x3b52
    mov bx, word [bp + 0x4]          ; 0x3b55
    mov byte [bx], 0                 ; 0x3b58
    mov ax, word [bp - 0x0002]       ; 0x3b5b
    mov word [data_9568], ax         ; 0x3b5e
    inc word [data_9566]             ; 0x3b61
    ret                              ; 0x3b65
api_idx_0084:
    mov ax, 0xff7c                   ; 0x3b66
    call ds_dispatch_f40b            ; 0x3b69
    mov bx, word [bp + 0x4]          ; 0x3b6c
    cmp byte [bx], 0x21              ; 0x3b6f
    jne short @..api_idx_0084.l1     ; 0x3b72
    inc word [bp + 0x4]              ; 0x3b74
    mov ax, data_956a                ; 0x3b77
    push ax                          ; 0x3b7a
    call api_idx_0004_6              ; 0x3b7b
    pop cx                           ; 0x3b7e
    jmp short @..api_idx_0084.l2     ; 0x3b7f
@..api_idx_0084.l1:
    mov bx, word [bp + 0x4]          ; 0x3b81
    cmp byte [bx], data_0040         ; 0x3b84
    jne short @..api_idx_0084.l2     ; 0x3b87
    inc word [bp + 0x4]              ; 0x3b89
    mov ax, data_956a                ; 0x3b8c
    push ax                          ; 0x3b8f
    call api_idx_0004_6              ; 0x3b90
    pop cx                           ; 0x3b93
    call math_loc_3a6a               ; 0x3b94
@..api_idx_0084.l2:
    cmp byte [data_956a], 0          ; 0x3b97
    je short @..api_idx_0084.l3      ; 0x3b9c
    mov ax, data_956a                ; 0x3b9e
    push ax                          ; 0x3ba1
    lea ax, word [bp - 0x0084]       ; 0x3ba2
    push ax                          ; 0x3ba6
    call ds_dispatch_f364            ; 0x3ba7
    add sp, byte 4                   ; 0x3baa
    mov ax, 0x90b1                   ; 0x3bad
    push ax                          ; 0x3bb0
    lea ax, word [bp - 0x0084]       ; 0x3bb1
    push ax                          ; 0x3bb5
    call ds_dispatch_f32d            ; 0x3bb6
    add sp, byte 4                   ; 0x3bb9
    push word [bp + 0x4]             ; 0x3bbc
    lea ax, word [bp - 0x0084]       ; 0x3bbf
    push ax                          ; 0x3bc3
    call ds_dispatch_f32d            ; 0x3bc4
    add sp, byte 4                   ; 0x3bc7
    jmp short @..api_idx_0084.l4     ; 0x3bca
@..api_idx_0084.l3:
    push word [bp + 0x4]             ; 0x3bcc
    lea ax, word [bp - 0x0084]       ; 0x3bcf
    push ax                          ; 0x3bd3
    call ds_dispatch_f364            ; 0x3bd4
    add sp, byte 4                   ; 0x3bd7
@..api_idx_0084.l4:
    mov ax, data_0002                ; 0x3bda
    push ax                          ; 0x3bdd
    lea ax, word [bp - 0x0084]       ; 0x3bde
    push ax                          ; 0x3be2
    call ds_dispatch_e883            ; 0x3be3
    add sp, byte 4                   ; 0x3be6
    mov word [bp - 0x0002], ax       ; 0x3be9
    cmp ax, 0xa8                     ; 0x3bec
    jle short @..api_idx_0084.l5     ; 0x3bef
    mov ax, data_956a                ; 0x3bf1
    push ax                          ; 0x3bf4
    call api_idx_0004_6              ; 0x3bf5
    pop cx                           ; 0x3bf8
    push word [bp + 0x4]             ; 0x3bf9
    mov ax, data_956a                ; 0x3bfc
    push ax                          ; 0x3bff
    call ds_dispatch_f364            ; 0x3c00
    add sp, byte 4                   ; 0x3c03
    jmp short @..api_idx_0084.l6     ; 0x3c06
@..api_idx_0084.l5:
    lea ax, word [bp - 0x0084]       ; 0x3c08
    push ax                          ; 0x3c0c
    mov ax, data_956a                ; 0x3c0d
    push ax                          ; 0x3c10
    call ds_dispatch_f364            ; 0x3c11
    add sp, byte 4                   ; 0x3c14
@..api_idx_0084.l6:
    ret                              ; 0x3c17
api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x3c18
    call ds_dispatch_f40b            ; 0x3c1b
@..api_idx_0004_7.l1:
    mov ax, 0x20                     ; 0x3c1e
    push ax                          ; 0x3c21
    push word [bp + 0x4]             ; 0x3c22
    call ds_dispatch_ee4a            ; 0x3c25
    add sp, byte 4                   ; 0x3c28
    mov word [bp - 0x0002], ax       ; 0x3c2b
    cmp ax, strict word 0xffff       ; 0x3c2e
    je short @..api_idx_0004_7.l4    ; 0x3c31
    mov bx, word [bp + 0x4]          ; 0x3c33
    mov si, ax                       ; 0x3c36
    mov byte [bx + si], 0            ; 0x3c38
@..api_idx_0004_7.l2:
    mov ax, 0x5f                     ; 0x3c3b
    push ax                          ; 0x3c3e
    push word [bp + 0x4]             ; 0x3c3f
    call ds_dispatch_ee4a            ; 0x3c42
    add sp, byte 4                   ; 0x3c45
    mov word [bp - 0x0004], ax       ; 0x3c48
    cmp ax, strict word 0xffff       ; 0x3c4b
    je short @..api_idx_0004_7.l3    ; 0x3c4e
    mov bx, word [bp + 0x4]          ; 0x3c50
    mov si, ax                       ; 0x3c53
    mov byte [bx + si], 0x20         ; 0x3c55
    jmp short @..api_idx_0004_7.l2   ; 0x3c58
@..api_idx_0004_7.l3:
    push word [bp + 0x4]             ; 0x3c5a
    call api_idx_0084                ; 0x3c5d
    pop cx                           ; 0x3c60
    mov ax, word [bp - 0x0002]       ; 0x3c61
    add word [bp + 0x4], ax          ; 0x3c64
    add word [bp + 0x4], byte 1      ; 0x3c67
    jmp short @..api_idx_0004_7.l1   ; 0x3c6b
@..api_idx_0004_7.l4:
    mov bx, word [bp + 0x4]          ; 0x3c6d
    cmp byte [bx], 0                 ; 0x3c70
    je short @..api_idx_0004_7.l5    ; 0x3c73
    push bx                          ; 0x3c75
    call api_idx_0084                ; 0x3c76
    pop cx                           ; 0x3c79
@..api_idx_0004_7.l5:
    ret                              ; 0x3c7a
api_idx_0056:
    mov ax, 0xffaa                   ; 0x3c7b
    call ds_dispatch_f40b            ; 0x3c7e
    mov ax, 0                        ; 0x3c81
    push ax                          ; 0x3c84
    push ax                          ; 0x3c85
    push word [data_93f8]            ; 0x3c86
    push word [data_93f6]            ; 0x3c8a
    call ds_dispatch_e942            ; 0x3c8e
    add sp, byte 8                   ; 0x3c91
    mov word [data_9568], 4          ; 0x3c94
    mov word [data_9566], 0          ; 0x3c9a
    mov byte [data_956a], 0          ; 0x3ca0
@..api_idx_0056.l1:
    lea ax, word [bp - 0x0056]       ; 0x3ca5
    push ax                          ; 0x3ca8
    push word [bp + 0x4]             ; 0x3ca9
    call ds_dispatch_b53b            ; 0x3cac
    add sp, byte 4                   ; 0x3caf
    cmp word [data_5216], byte 0     ; 0x3cb2
    jne short @..api_idx_0056.l2     ; 0x3cb7
    lea ax, word [bp - 0x0056]       ; 0x3cb9
    push ax                          ; 0x3cbc
    call api_idx_0004_7              ; 0x3cbd
    pop cx                           ; 0x3cc0
    inc word [bp + 0x4]              ; 0x3cc1
@..api_idx_0056.l2:
    cmp word [data_5216], byte 0     ; 0x3cc4
    je short @..api_idx_0056.l1      ; 0x3cc9
    cmp byte [data_956a], 0          ; 0x3ccb
    je short @..api_idx_0056.l3      ; 0x3cd0
    mov ax, data_956a                ; 0x3cd2
    push ax                          ; 0x3cd5
    call api_idx_0004_6              ; 0x3cd6
    pop cx                           ; 0x3cd9
@..api_idx_0056.l3:
    call math_loc_3a6a               ; 0x3cda
    ret                              ; 0x3cdd
math_loc_3cde:
    mov ax, 0                        ; 0x3cde
    call ds_dispatch_f40b            ; 0x3ce1
    mov bx, word [bp + 0x4]          ; 0x3ce4
    cmp byte [bx + 0x6], 0           ; 0x3ce7
    jbe short @..math_loc_3cde.l1    ; 0x3ceb
    dec byte [bx + 0x6]              ; 0x3ced
    mov bx, word [bp + 0x4]          ; 0x3cf0
    cmp byte [bx + 0x6], 0           ; 0x3cf3
    jne short @..math_loc_3cde.l1    ; 0x3cf7
    mov word [bx], 0                 ; 0x3cf9
@..math_loc_3cde.l1:
    ret                              ; 0x3cfd
api_idx_009e_2:
    mov ax, 0xff62                   ; 0x3cfe
    call ds_dispatch_f40b            ; 0x3d01
    mov ax, 0                        ; 0x3d04
    push ax                          ; 0x3d07
    mov bx, word [bp + 0x6]          ; 0x3d08
    push word [bx]                   ; 0x3d0b
    lea ax, word [bp - 0x004a]       ; 0x3d0d
    push ax                          ; 0x3d10
    mov ax, 1                        ; 0x3d11
    push ax                          ; 0x3d14
    call ds_dispatch_b63c            ; 0x3d15
    add sp, byte 8                   ; 0x3d18
    cmp byte [bp - 0x000b], 0        ; 0x3d1b
    ja short @..api_idx_009e_2.l1    ; 0x3d1f
    jmp near @..local.l117           ; 0x3d21
@..api_idx_009e_2.l1:
    mov al, byte [bp - 0x000b]       ; 0x3d24
    sub ah, ah                       ; 0x3d27
    jmp near @..local.l115           ; 0x3d29
    call api_idx_0012_3              ; 0x3d2c
    mov word [data_8aee], ax         ; 0x3d2f
    cmp ax, strict word 0xffff       ; 0x3d32
    je short @..api_idx_009e_2.l2    ; 0x3d35
    mov ax, 0x248                    ; 0x3d37
    imul word [bp + 0x4]             ; 0x3d3a
    push ax                          ; 0x3d3d
    mov ax, 0x78                     ; 0x3d3e
    imul word [api_idx_0016]         ; 0x3d41
    mov cx, ax                       ; 0x3d45
    pop ax                           ; 0x3d47
    add ax, cx                       ; 0x3d48
    push ax                          ; 0x3d4a
    mov ax, 0xc                      ; 0x3d4b
    imul word [data_8aee]            ; 0x3d4e
    mov cx, ax                       ; 0x3d52
    pop ax                           ; 0x3d54
    add ax, cx                       ; 0x3d55
    mov bx, ax                       ; 0x3d57
    cmp word [bx + 0x5c34], strict word 0x1d7 ; 0x3d59
    jne short @..api_idx_009e_2.l2   ; 0x3d5f
    mov ax, 0x4c18                   ; 0x3d61
    push ax                          ; 0x3d64
    call api_idx_0056                ; 0x3d65
    pop cx                           ; 0x3d68
@..api_idx_009e_2.l2:
    jmp near @..local.l116           ; 0x3d69
    push word [bp - 0x0024]          ; 0x3d6c
    call api_idx_0056                ; 0x3d6f
    pop cx                           ; 0x3d72
    jmp near @..local.l116           ; 0x3d73
    mov ax, 0x248                    ; 0x3d76
    imul word [bp + 0x4]             ; 0x3d79
    mov bx, ax                       ; 0x3d7c
    mov al, byte [bx + 0x5e2d]       ; 0x3d7e
    sub ah, ah                       ; 0x3d82
    push ax                          ; 0x3d84
    lea ax, word [bp - 0x0018]       ; 0x3d85
    push ax                          ; 0x3d88
    call ds_dispatch_ec74            ; 0x3d89
    add sp, byte 4                   ; 0x3d8c
    test ax, ax                      ; 0x3d8f
    jne short @..api_idx_009e_2.l3   ; 0x3d91
    jmp near @..api_idx_009e_2.l6    ; 0x3d93
@..api_idx_009e_2.l3:
    mov ax, word [bp - 0x0028]       ; 0x3d96
    mov cx, 0x100                    ; 0x3d99
    cwd                              ; 0x3d9c
    idiv cx                          ; 0x3d9d
    mov word [bp - 0x004c], dx       ; 0x3d9f
    mov ax, 6                        ; 0x3da2
    imul dx                          ; 0x3da5
    mov bx, ax                       ; 0x3da7
    mov al, byte [bx + 0x621]        ; 0x3da9
    sub ah, ah                       ; 0x3dad
    shl ax, 1                        ; 0x3daf
    push ax                          ; 0x3db1
    mov ax, 0x248                    ; 0x3db2
    imul word [bp + 0x4]             ; 0x3db5
    mov bx, ax                       ; 0x3db8
    mov cx, word [bx + 0x5c18]       ; 0x3dba
    pop ax                           ; 0x3dbe
    cmp ax, cx                       ; 0x3dbf
    jle short @..api_idx_009e_2.l4   ; 0x3dc1
    lea ax, word [bp - 0x009e]       ; 0x3dc3
    push ax                          ; 0x3dc7
    mov ax, 0x2d1                    ; 0x3dc8
    push ax                          ; 0x3dcb
    call ds_dispatch_b53b            ; 0x3dcc
    add sp, byte 4                   ; 0x3dcf
    mov ax, 1                        ; 0x3dd2
    push ax                          ; 0x3dd5
    lea ax, word [bp - 0x009e]       ; 0x3dd6
    push ax                          ; 0x3dda
    call api_idx_0004                ; 0x3ddb
    add sp, byte 4                   ; 0x3dde
    jmp short @..api_idx_009e_2.l5   ; 0x3de1
@..api_idx_009e_2.l4:
    mov ax, 1                        ; 0x3de3
    push ax                          ; 0x3de6
    push word [bp - 0x004c]          ; 0x3de7
    mov ax, 0x248                    ; 0x3dea
    imul word [bp + 0x4]             ; 0x3ded
    add ax, 0x5e12                   ; 0x3df0
    push ax                          ; 0x3df3
    call ds_dispatch_ec41            ; 0x3df4
    add sp, byte 6                   ; 0x3df7
    lea ax, word [bp - 0x009e]       ; 0x3dfa
    push ax                          ; 0x3dfe
    mov ax, 0x2d0                    ; 0x3dff
    push ax                          ; 0x3e02
    call ds_dispatch_b53b            ; 0x3e03
    add sp, byte 4                   ; 0x3e06
    mov ax, 1                        ; 0x3e09
    push ax                          ; 0x3e0c
    lea ax, word [bp - 0x009e]       ; 0x3e0d
    push ax                          ; 0x3e11
    call api_idx_0004                ; 0x3e12
    add sp, byte 4                   ; 0x3e15
    mov bx, word [bp + 0x6]          ; 0x3e18
    mov word [bx], 0                 ; 0x3e1b
@..api_idx_009e_2.l5:
    jmp short @..api_idx_009e_2.l7   ; 0x3e1f
@..api_idx_009e_2.l6:
    lea ax, word [bp - 0x009e]       ; 0x3e21
    push ax                          ; 0x3e25
    mov ax, 0x2d2                    ; 0x3e26
    push ax                          ; 0x3e29
    call ds_dispatch_b53b            ; 0x3e2a
    add sp, byte 4                   ; 0x3e2d
    mov ax, 1                        ; 0x3e30
    push ax                          ; 0x3e33
    lea ax, word [bp - 0x009e]       ; 0x3e34
    push ax                          ; 0x3e38
    call api_idx_0004                ; 0x3e39
    add sp, byte 4                   ; 0x3e3c
@..api_idx_009e_2.l7:
    jmp near @..local.l116           ; 0x3e3f
    mov ax, word [data_830c]         ; 0x3e42
    cmp ax, word [bp - 0x002c]       ; 0x3e45
    jne short @..api_idx_009e_2.l8   ; 0x3e48
    mov ax, 0                        ; 0x3e4a
    push ax                          ; 0x3e4d
    mov al, byte [bp - 0x002a]       ; 0x3e4e
    sub ah, ah                       ; 0x3e51
    push ax                          ; 0x3e53
    mov ax, word [bp - 0x002c]       ; 0x3e54
    mov cx, 4                        ; 0x3e57
    shl ax, cl                       ; 0x3e5a
    add ax, 0x8d14                   ; 0x3e5c
    push ax                          ; 0x3e5f
    call ds_dispatch_ec41            ; 0x3e60
    add sp, byte 6                   ; 0x3e63
    mov ax, 0                        ; 0x3e66
    push ax                          ; 0x3e69
    mov al, byte [bp - 0x002a]       ; 0x3e6a
    sub ah, ah                       ; 0x3e6d
    push ax                          ; 0x3e6f
    mov ax, word [bp - 0x002c]       ; 0x3e70
    mov cx, 4                        ; 0x3e73
    shl ax, cl                       ; 0x3e76
    add ax, 0x5642                   ; 0x3e78
    push ax                          ; 0x3e7b
    call ds_dispatch_ec41            ; 0x3e7c
    add sp, byte 6                   ; 0x3e7f
    mov ax, 1                        ; 0x3e82
    push ax                          ; 0x3e85
    mov al, byte [bp - 0x0029]       ; 0x3e86
    sub ah, ah                       ; 0x3e89
    push ax                          ; 0x3e8b
    mov ax, word [bp - 0x002c]       ; 0x3e8c
    mov cx, 4                        ; 0x3e8f
    shl ax, cl                       ; 0x3e92
    add ax, 0x8d14                   ; 0x3e94
    push ax                          ; 0x3e97
    call ds_dispatch_ec41            ; 0x3e98
    add sp, byte 6                   ; 0x3e9b
    mov ax, 1                        ; 0x3e9e
    push ax                          ; 0x3ea1
    mov al, byte [bp - 0x0029]       ; 0x3ea2
    sub ah, ah                       ; 0x3ea5
    push ax                          ; 0x3ea7
    mov ax, word [bp - 0x002c]       ; 0x3ea8
    mov cx, 4                        ; 0x3eab
    shl ax, cl                       ; 0x3eae
    add ax, 0x5642                   ; 0x3eb0
    push ax                          ; 0x3eb3
    call ds_dispatch_ec41            ; 0x3eb4
    add sp, byte 6                   ; 0x3eb7
    push word [bp + 0x6]             ; 0x3eba
    call math_loc_3cde               ; 0x3ebd
    pop cx                           ; 0x3ec0
@..api_idx_009e_2.l8:
    jmp near @..local.l116           ; 0x3ec1
    mov ax, 0x248                    ; 0x3ec4
    imul word [bp + 0x4]             ; 0x3ec7
    mov bx, ax                       ; 0x3eca
    cmp byte [bx + 0x5e32], 3        ; 0x3ecc
    jae short @..api_idx_009e_2.l9   ; 0x3ed1
    mov byte [bx + 0x5e32], 3        ; 0x3ed3
@..api_idx_009e_2.l9:
    mov ax, 0xfa                     ; 0x3ed8
    push ax                          ; 0x3edb
    mov ax, 0                        ; 0x3edc
    push ax                          ; 0x3edf
    mov al, byte [bx + 0x5d5f]       ; 0x3ee0
    sub ah, ah                       ; 0x3ee4
    add ax, 0xc8                     ; 0x3ee6
    push ax                          ; 0x3ee9
    call ds_dispatch_b7c2            ; 0x3eea
    add sp, byte 6                   ; 0x3eed
    push ax                          ; 0x3ef0
    mov ax, 0x248                    ; 0x3ef1
    imul word [bp + 0x4]             ; 0x3ef4
    mov bx, ax                       ; 0x3ef7
    pop ax                           ; 0x3ef9
    mov byte [bx + 0x5d5f], al       ; 0x3efa

    db 0xb8, 0xfa, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8a, 0x87, 0x62, 0x5d, 0x2a, 0xe4, 0x05, 0xc8
    db 0x00, 0x50, 0xe8, 0xaf, 0x78, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b
    db 0xd8, 0x58, 0x88, 0x87, 0x62, 0x5d, 0xff, 0x76, 0x06, 0xe8, 0xb4, 0xfd, 0x59, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2c, 0x5e, 0x2a, 0xe4, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0xa0, 0x78, 0x59, 0xe9, 0x77, 0x00, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x04, 0x8b, 0xd8, 0x80, 0xbf, 0x6b, 0x5d, 0x00, 0x76, 0x17, 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x11
    db 0xfe, 0x8f, 0x6b, 0x5d, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x40, 0x78, 0x59, 0x89, 0x46, 0xfe, 0xeb
    db 0xda, 0xff, 0x76, 0x06, 0xe8, 0x69, 0xfd, 0x59, 0xeb, 0x43, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03
    db 0x00, 0x50, 0xb8, 0x14, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x7c, 0x10, 0x83, 0xc4, 0x08, 0xff
    db 0x76, 0x06, 0xe8, 0x4b, 0xfd, 0x59, 0xeb, 0x25, 0x02, 0x90, 0x73, 0x8d, 0xb3, 0x8d, 0xbd, 0x8d
    db 0x89, 0x8e, 0x02, 0x90, 0x0b, 0x8f, 0x02, 0x90, 0x02, 0x90, 0x02, 0x90, 0x8b, 0x8f, 0xbf, 0x8f

@..local.l115:
    cmp ax, strict word 0xc          ; 0x3fae
    jae short @..local.l116          ; 0x3fb1
    xchg bx, ax                      ; 0x3fb3
    shl bx, 1                        ; 0x3fb4
    jmp [cs:bx - 0x7023]             ; 0x3fb6
@..local.l116:
    jmp short @..local.l120          ; 0x3fbb
@..local.l117:
    cmp word [bp - 0x0028], byte 0   ; 0x3fbd
    je short @..local.l119           ; 0x3fc1
    mov ax, word [bp - 0x0028]       ; 0x3fc3
    mov cx, 0x100                    ; 0x3fc6
    cwd                              ; 0x3fc9
    idiv cx                          ; 0x3fca
    mov word [bp - 0x004e], ax       ; 0x3fcc
    mov word [bp - 0x004c], dx       ; 0x3fcf
    mov ax, 6                        ; 0x3fd2
    imul dx                          ; 0x3fd5
    mov bx, ax                       ; 0x3fd7
    cmp byte [bx + 0x624], 1         ; 0x3fd9
    jne short @..local.l118          ; 0x3fde
    call api_idx_0012_2              ; 0x3fe0
    mov word [data_9564], ax         ; 0x3fe3
    cmp ax, strict word 0xffff       ; 0x3fe6
    jne short @..local.l118          ; 0x3fe9
    ret                              ; 0x3feb
@..local.l118:
    push word [data_9564]            ; 0x3fec
    push word [bp - 0x004e]          ; 0x3ff0
    push word [bp - 0x004c]          ; 0x3ff3
    push word [bp + 0x4]             ; 0x3ff6
    call api_idx_0008_2              ; 0x3ff9
    add sp, byte 8                   ; 0x3ffc
    push word [bp + 0x6]             ; 0x3fff
    call math_loc_3cde               ; 0x4002
    pop cx                           ; 0x4005
    jmp short @..local.l120          ; 0x4006
@..local.l119:
    mov ax, 0                        ; 0x4008
    push ax                          ; 0x400b
    call ds_dispatch_b7e0            ; 0x400c
    pop cx                           ; 0x400f
@..local.l120:
    ret                              ; 0x4010
math_loc_4011:
    mov ax, 0                        ; 0x4011
    call ds_dispatch_f40b            ; 0x4014
    les bx, word [data_0002]         ; 0x4017
    mov ax, word [es:bx]             ; 0x401b
    mov dx, word [es:bx + 0x2]       ; 0x401e
    mov word [data_9090], dx         ; 0x4022
    mov word [data_908e], ax         ; 0x4026
    mov ax, word [data_908e]         ; 0x4029
    mov dx, word [data_9090]         ; 0x402c
    sub ax, word [data_908a]         ; 0x4030
    sbb dx, word [data_908c]         ; 0x4034
    mov word [data_9094], dx         ; 0x4038
    mov word [data_9092], ax         ; 0x403c
    mov ax, word [data_9562]         ; 0x403f
    cwd                              ; 0x4042
    mov cx, ax                       ; 0x4043
    mov bx, dx                       ; 0x4045
    mov ax, word [data_9092]         ; 0x4047
    mov dx, word [data_9094]         ; 0x404a
    cmp bx, dx                       ; 0x404e
    jg short @..math_loc_4011.l1     ; 0x4050
    jne short @..math_loc_4011.l2    ; 0x4052
    cmp cx, ax                       ; 0x4054
    jbe short @..math_loc_4011.l2    ; 0x4056
@..math_loc_4011.l1:
    jmp short @..math_loc_4011.l3    ; 0x4058
@..math_loc_4011.l2:
    mov ax, word [data_908e]         ; 0x405a
    mov dx, word [data_9090]         ; 0x405d
    mov word [data_908c], dx         ; 0x4061
    mov word [data_908a], ax         ; 0x4065
    mov ax, word [data_9432]         ; 0x4068
    inc ax                           ; 0x406b
    mov cx, 3                        ; 0x406c
    cwd                              ; 0x406f
    idiv cx                          ; 0x4070
    mov word [data_9432], dx         ; 0x4072
    push dx                          ; 0x4076
    call api_idx_000a                ; 0x4077
    pop cx                           ; 0x407a
    mov ax, 0x41                     ; 0x407b
    push ax                          ; 0x407e
    mov ax, 0x65                     ; 0x407f
    push ax                          ; 0x4082
    mov ax, 0x19                     ; 0x4083
    push ax                          ; 0x4086
    mov ax, 0x5a                     ; 0x4087
    push ax                          ; 0x408a
    call ds_dispatch_e8da            ; 0x408b
    add sp, byte 8                   ; 0x408e
    mov ax, 0xffff                   ; 0x4091
    push ax                          ; 0x4094
    call api_idx_0002_2              ; 0x4095
    pop cx                           ; 0x4098
    push word [bp + 0x4]             ; 0x4099
    call api_idx_0004_3              ; 0x409c
    pop cx                           ; 0x409f
    mov ax, 0xbf                     ; 0x40a0
    push ax                          ; 0x40a3
    mov ax, 0x13f                    ; 0x40a4
    push ax                          ; 0x40a7
    mov ax, 0x7e                     ; 0x40a8
    push ax                          ; 0x40ab
    mov ax, 0xb8                     ; 0x40ac
    push ax                          ; 0x40af
    call ds_dispatch_e8da            ; 0x40b0
    add sp, byte 8                   ; 0x40b3
@..math_loc_4011.l3:
    ret                              ; 0x40b6
math_loc_40b7:
    mov ax, 0                        ; 0x40b7
    call ds_dispatch_f40b            ; 0x40ba
    push word [bp + 0x4]             ; 0x40bd
    call api_idx_007c                ; 0x40c0
    pop cx                           ; 0x40c3
    push word [bp + 0x4]             ; 0x40c4
    call api_idx_0080                ; 0x40c7
    pop cx                           ; 0x40ca
    cmp word [bp + 0x6], byte 0      ; 0x40cb
    jne short @..math_loc_40b7.l1    ; 0x40cf
    push word [bp + 0x4]             ; 0x40d1
    call api_idx_004c                ; 0x40d4
    pop cx                           ; 0x40d7
    call api_idx_0004_2              ; 0x40d8
    mov ax, 0xc7                     ; 0x40db
    push ax                          ; 0x40de
    mov ax, 0x13f                    ; 0x40df
    push ax                          ; 0x40e2
    mov ax, 0                        ; 0x40e3
    push ax                          ; 0x40e6
    push ax                          ; 0x40e7
    call ds_dispatch_e8da            ; 0x40e8
    add sp, byte 8                   ; 0x40eb
@..math_loc_40b7.l1:
    ret                              ; 0x40ee
api_idx_0084_2:
    mov ax, 0xff7c                   ; 0x40ef
    call ds_dispatch_f40b            ; 0x40f2
    mov word [bp - 0x0004], 0        ; 0x40f5
    mov word [bp - 0x0008], 0        ; 0x40fa
    mov ax, word [data_0040]         ; 0x40ff
    mov word [bp - 0x0002], ax       ; 0x4102
    jmp short @..api_idx_0084_2.l3   ; 0x4105
@..api_idx_0084_2.l1:
    mov ax, 0x248                    ; 0x4107
    imul word [bp + 0x4]             ; 0x410a
    add ax, word [bp - 0x0002]       ; 0x410d
    mov bx, ax                       ; 0x4110
    cmp byte [bx + 0x5d6c], 0        ; 0x4112
    jbe short @..api_idx_0084_2.l2   ; 0x4117
    mov word [bp - 0x0008], 1        ; 0x4119
@..api_idx_0084_2.l2:
    inc word [bp - 0x0002]           ; 0x411e
@..api_idx_0084_2.l3:
    mov ax, word [bp - 0x0002]       ; 0x4121
    cmp ax, word [data_0042]         ; 0x4124
    jle short @..api_idx_0084_2.l1   ; 0x4128
    mov word [bp - 0x000a], 0        ; 0x412a
    mov word [bp - 0x000c], 0        ; 0x412f
@..api_idx_0084_2.l4:
    lea ax, word [bp - 0x0034]       ; 0x4134
    push ax                          ; 0x4137
    push word [bp - 0x0004]          ; 0x4138
    push word [bp + 0x4]             ; 0x413b
    call api_idx_0004_12             ; 0x413e
    add sp, byte 6                   ; 0x4141
    mov word [bp - 0x0006], ax       ; 0x4144
    lea ax, word [bp - 0x0034]       ; 0x4147
    push ax                          ; 0x414a
    push word [bp - 0x0006]          ; 0x414b
    push word [bp - 0x0004]          ; 0x414e
    push word [bp + 0x4]             ; 0x4151
    call api_idx_0002_8              ; 0x4154
    add sp, byte 8                   ; 0x4157
    mov word [bp - 0x0002], 0        ; 0x415a
@..api_idx_0084_2.l5:
    mov ax, word [bp - 0x0002]       ; 0x415f
    shl ax, 1                        ; 0x4162
    mov bx, ax                       ; 0x4164
    add bx, bp                       ; 0x4166
    mov word [bx - 0x0020], 1        ; 0x4168
    inc word [bp - 0x0002]           ; 0x416d
    mov ax, word [bp - 0x0002]       ; 0x4170
    cmp ax, strict word 4            ; 0x4173
    jle short @..api_idx_0084_2.l5   ; 0x4176
    mov ax, word [bp - 0x0008]       ; 0x4178
    mov word [bp - 0x001c], ax       ; 0x417b
    mov word [bp - 0x0016], 0xffff   ; 0x417e
    lea ax, word [bp - 0x0020]       ; 0x4183
    push ax                          ; 0x4186
    mov ax, 0                        ; 0x4187
    push ax                          ; 0x418a
    push word [bp - 0x0004]          ; 0x418b
    mov ax, 1                        ; 0x418e
    push ax                          ; 0x4191
    mov ax, 5                        ; 0x4192
    push ax                          ; 0x4195
    mov ax, 1                        ; 0x4196
    push ax                          ; 0x4199
    mov ax, 9                        ; 0x419a
    push ax                          ; 0x419d
    mov ax, 0x3a                     ; 0x419e
    push ax                          ; 0x41a1
    mov ax, 9                        ; 0x41a2
    push ax                          ; 0x41a5
    mov ax, 0xbc                     ; 0x41a6
    push ax                          ; 0x41a9
    mov ax, 4                        ; 0x41aa
    push ax                          ; 0x41ad
    mov ax, 0                        ; 0x41ae
    push ax                          ; 0x41b1
    mov ax, 0x258                    ; 0x41b2
    push ax                          ; 0x41b5
    call math_loc_1ca0               ; 0x41b6
    add sp, byte 0x1a                ; 0x41b9
    mov word [bp - 0x0004], ax       ; 0x41bc
    lea ax, word [bp - 0x0084]       ; 0x41bf
    push ax                          ; 0x41c3
    mov ax, word [bp - 0x0004]       ; 0x41c4
    add ax, 0x258                    ; 0x41c7
    push ax                          ; 0x41ca
    call ds_dispatch_b53b            ; 0x41cb
    add sp, byte 4                   ; 0x41ce
    mov ax, 0x1a                     ; 0x41d1
    push ax                          ; 0x41d4
    mov ax, 1                        ; 0x41d5
    push ax                          ; 0x41d8
    mov ax, 9                        ; 0x41d9
    push ax                          ; 0x41dc
    mov ax, 0x3a                     ; 0x41dd
    push ax                          ; 0x41e0
    mov ax, 9                        ; 0x41e1
    push ax                          ; 0x41e4
    mov ax, 0xbc                     ; 0x41e5
    push ax                          ; 0x41e8
    mov ax, 4                        ; 0x41e9
    push ax                          ; 0x41ec
    push word [data_9052]            ; 0x41ed
    lea ax, word [bp - 0x0084]       ; 0x41f1
    push ax                          ; 0x41f5
    call api_idx_0008                ; 0x41f6
    add sp, byte 0x12                ; 0x41f9
    mov ax, word [bp - 0x000a]       ; 0x41fc
    cmp ax, word [bp - 0x0004]       ; 0x41ff
    je short @..api_idx_0084_2.l6    ; 0x4202
    lea ax, word [bp - 0x0084]       ; 0x4204
    push ax                          ; 0x4208
    mov ax, word [bp - 0x000a]       ; 0x4209
    add ax, 0x258                    ; 0x420c
    push ax                          ; 0x420f
    call ds_dispatch_b53b            ; 0x4210
    add sp, byte 4                   ; 0x4213
    mov ax, 1                        ; 0x4216
    push ax                          ; 0x4219
    push ax                          ; 0x421a
    mov ax, 9                        ; 0x421b
    push ax                          ; 0x421e
    mov ax, 0x3a                     ; 0x421f
    push ax                          ; 0x4222
    mov ax, 9                        ; 0x4223
    push ax                          ; 0x4226
    mov ax, 0xbc                     ; 0x4227
    push ax                          ; 0x422a
    mov ax, 4                        ; 0x422b
    push ax                          ; 0x422e
    push word [bp - 0x000c]          ; 0x422f
    lea ax, word [bp - 0x0084]       ; 0x4232
    push ax                          ; 0x4236
    call api_idx_0008                ; 0x4237
    add sp, byte 0x12                ; 0x423a
@..api_idx_0084_2.l6:
    mov ax, word [bp - 0x0004]       ; 0x423d
    mov word [bp - 0x000a], ax       ; 0x4240
    mov ax, word [data_9052]         ; 0x4243
    mov word [bp - 0x000c], ax       ; 0x4246
    cmp word [bp - 0x0004], byte 4   ; 0x4249
    je short @..api_idx_0084_2.l7    ; 0x424d
    jmp near @..api_idx_0084_2.l4    ; 0x424f
@..api_idx_0084_2.l7:
    ret                              ; 0x4252
api_idx_0048:
    mov ax, 0xffb8                   ; 0x4253
    call ds_dispatch_f40b            ; 0x4256
    mov ax, 0                        ; 0x4259
    push ax                          ; 0x425c
    push word [bp + 0x4]             ; 0x425d
    lea ax, word [bp - 0x0048]       ; 0x4260
    push ax                          ; 0x4263
    mov ax, 1                        ; 0x4264
    push ax                          ; 0x4267
    call ds_dispatch_b63c            ; 0x4268
    add sp, byte 8                   ; 0x426b
    lea ax, word [bp - 0x0048]       ; 0x426e
    push ax                          ; 0x4271
    push word [bp + 0xa]             ; 0x4272
    call ds_dispatch_f364            ; 0x4275
    add sp, byte 4                   ; 0x4278
    mov ax, word [bp + 0x4]          ; 0x427b
    mov bx, word [bp + 0x6]          ; 0x427e
    mov word [bx], ax                ; 0x4281
    mov al, byte [bp - 0x000f]       ; 0x4283
    mov bx, word [bp + 0x6]          ; 0x4286
    mov byte [bx + 0x5], al          ; 0x4289
    mov al, byte [bp - 0x0010]       ; 0x428c
    mov bx, word [bp + 0x6]          ; 0x428f
    mov byte [bx + 0x4], al          ; 0x4292
    mov ax, word [bp - 0x0024]       ; 0x4295
    mov bx, word [bp + 0x6]          ; 0x4298
    mov word [bx + 0x2], ax          ; 0x429b
    mov bx, word [bp + 0x6]          ; 0x429e
    mov byte [bx + 0x7], 0x80        ; 0x42a1
    push word [bp - 0x002c]          ; 0x42a5
    push word [bp - 0x002e]          ; 0x42a8
    call ds_dispatch_d0be            ; 0x42ab
    add sp, byte 4                   ; 0x42ae
    mov bx, word [bp + 0x6]          ; 0x42b1
    mov byte [bx + 0x6], al          ; 0x42b4
    mov al, byte [bp - 0x0020]       ; 0x42b7
    mov bx, word [bp + 0x6]          ; 0x42ba
    mov byte [bx + 0x8], al          ; 0x42bd
    mov al, byte [bp - 0x001f]       ; 0x42c0
    mov bx, word [bp + 0x6]          ; 0x42c3
    mov byte [bx + 0x9], al          ; 0x42c6
    mov al, byte [bp - 0x000c]       ; 0x42c9
    mov bx, word [bp + 0x6]          ; 0x42cc
    mov byte [bx + 0xa], al          ; 0x42cf
    mov al, byte [bp - 0x0008]       ; 0x42d2
    mov bx, word [bp + 0x6]          ; 0x42d5
    mov byte [bx + 0xb], al          ; 0x42d8
    mov bx, word [bp + 0x8]          ; 0x42db
    mov word [bx], 0                 ; 0x42de
    ret                              ; 0x42e2
api_idx_004e:
    mov ax, 0xffb2                   ; 0x42e3
    call ds_dispatch_f40b            ; 0x42e6
    mov ax, 0                        ; 0x42e9
    push ax                          ; 0x42ec
    mov bx, word [bp + 0x4]          ; 0x42ed
    push word [bx]                   ; 0x42f0
    lea ax, word [bp - 0x004a]       ; 0x42f2
    push ax                          ; 0x42f5
    mov ax, 1                        ; 0x42f6
    push ax                          ; 0x42f9
    call ds_dispatch_b63c            ; 0x42fa
    add sp, byte 8                   ; 0x42fd
    mov bx, word [bp + 0x6]          ; 0x4300
    mov al, byte [bx + 0x6]          ; 0x4303
    sub ah, ah                       ; 0x4306
    push ax                          ; 0x4308
    mov bx, word [bp + 0x4]          ; 0x4309
    mov al, byte [bx + 0x6]          ; 0x430c
    sub ah, ah                       ; 0x430f
    mov cx, ax                       ; 0x4311
    pop ax                           ; 0x4313
    add ax, cx                       ; 0x4314
    cmp ax, word [bp - 0x0024]       ; 0x4316
    jge short @..api_idx_004e.l1     ; 0x4319
    jmp short @..api_idx_004e.l2     ; 0x431b
@..api_idx_004e.l1:
    mov ax, word [bp - 0x0024]       ; 0x431d
@..api_idx_004e.l2:
    mov word [bp - 0x004c], ax       ; 0x4320
    push ax                          ; 0x4323
    mov al, byte [bx + 0x6]          ; 0x4324
    sub ah, ah                       ; 0x4327
    mov cx, ax                       ; 0x4329
    pop ax                           ; 0x432b
    sub ax, cx                       ; 0x432c
    mov word [bp - 0x004e], ax       ; 0x432e
    mov al, byte [bx + 0x6]          ; 0x4331
    sub ah, ah                       ; 0x4334
    mov cx, ax                       ; 0x4336
    mov ax, word [bp - 0x004e]       ; 0x4338
    add cx, ax                       ; 0x433b
    mov ax, cx                       ; 0x433d
    mov byte [bx + 0x6], al          ; 0x433f
    mov bx, word [bp + 0x6]          ; 0x4342
    mov al, byte [bx + 0x6]          ; 0x4345
    sub ah, ah                       ; 0x4348
    sub ax, word [bp - 0x004e]       ; 0x434a
    mov byte [bx + 0x6], al          ; 0x434d
    cmp byte [bx + 0x6], 0           ; 0x4350
    ja short @..api_idx_004e.l3      ; 0x4354
    mov word [bx], 0                 ; 0x4356
@..api_idx_004e.l3:
    ret                              ; 0x435a
api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x435b
    call ds_dispatch_f40b            ; 0x435e
    mov word [bp - 0x0002], 0        ; 0x4361
@..api_idx_0002_4.l1:
    mov ax, 6                        ; 0x4366
    imul word [bp - 0x0002]          ; 0x4369
    mov bx, ax                       ; 0x436c
    mov ax, word [bx + 0xb1a]        ; 0x436e
    mov bx, word [bp + 0x4]          ; 0x4372
    mov cx, word [bx]                ; 0x4375
    cmp ax, cx                       ; 0x4377
    jne short @..api_idx_0002_4.l2   ; 0x4379
    mov ax, 6                        ; 0x437b
    imul word [bp - 0x0002]          ; 0x437e
    mov bx, ax                       ; 0x4381
    mov ax, word [bx + 0xb1c]        ; 0x4383
    mov bx, word [bp + 0x6]          ; 0x4387
    mov cx, word [bx]                ; 0x438a
    cmp ax, cx                       ; 0x438c
    je short @..api_idx_0002_4.l3    ; 0x438e
@..api_idx_0002_4.l2:
    mov ax, 6                        ; 0x4390
    imul word [bp - 0x0002]          ; 0x4393
    mov bx, ax                       ; 0x4396
    mov ax, word [bx + 0xb1c]        ; 0x4398
    mov bx, word [bp + 0x4]          ; 0x439c
    mov cx, word [bx]                ; 0x439f
    cmp ax, cx                       ; 0x43a1
    jne short @..local.l123          ; 0x43a3
    mov ax, 6                        ; 0x43a5
    imul word [bp - 0x0002]          ; 0x43a8
    mov bx, ax                       ; 0x43ab
    mov ax, word [bx + 0xb1a]        ; 0x43ad
    mov bx, word [bp + 0x6]          ; 0x43b1
    mov cx, word [bx]                ; 0x43b4
    cmp ax, cx                       ; 0x43b6
    jne short @..local.l123          ; 0x43b8
@..api_idx_0002_4.l3:
    mov bx, word [bp + 0x4]          ; 0x43ba
    mov al, byte [bx + 0x7]          ; 0x43bd
    sub ah, ah                       ; 0x43c0
    test ax, 0x20                    ; 0x43c2
    je short @..local.l121           ; 0x43c5
    push word [bp + 0x6]             ; 0x43c7
    push bx                          ; 0x43ca
    call api_idx_004e                ; 0x43cb
    add sp, byte 4                   ; 0x43ce
    mov ax, 1                        ; 0x43d1
    ret                              ; 0x43d4
@..local.l121:
    mov bx, word [bp + 0x6]          ; 0x43d5
    mov al, byte [bx + 0x7]          ; 0x43d8
    sub ah, ah                       ; 0x43db
    test ax, 0x20                    ; 0x43dd
    je short @..local.l122           ; 0x43e0
    push word [bp + 0x4]             ; 0x43e2
    push bx                          ; 0x43e5
    call api_idx_004e                ; 0x43e6
    add sp, byte 4                   ; 0x43e9
    mov ax, 1                        ; 0x43ec
    ret                              ; 0x43ef
@..local.l122:
    push word [bp + 0x8]             ; 0x43f0
    push word [bp + 0x6]             ; 0x43f3
    push word [bp + 0x4]             ; 0x43f6
    mov ax, 6                        ; 0x43f9
    imul word [bp - 0x0002]          ; 0x43fc
    mov bx, ax                       ; 0x43ff
    push word [bx + 0xb1e]           ; 0x4401
    call api_idx_0048                ; 0x4405
    add sp, byte 8                   ; 0x4408
    mov ax, 1                        ; 0x440b
    ret                              ; 0x440e
@..local.l123:
    inc word [bp - 0x0002]           ; 0x440f
    mov ax, word [bp - 0x0002]       ; 0x4412
    cmp ax, strict word 0xf          ; 0x4415
    jge short @..local.l124          ; 0x4418
    jmp near @..api_idx_0002_4.l1    ; 0x441a
@..local.l124:
    mov ax, 0                        ; 0x441d
    ret                              ; 0x4420
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x4421
    call ds_dispatch_f40b            ; 0x4424
    mov bx, word [bp + 0x4]          ; 0x4427
    mov ax, word [bx]                ; 0x442a
    mov bx, word [bp + 0x6]          ; 0x442c
    mov cx, word [bx]                ; 0x442f
    cmp ax, cx                       ; 0x4431
    je short @..api_idx_0002_5.l1    ; 0x4433
    jmp near @..api_idx_0002_5.l7    ; 0x4435
@..api_idx_0002_5.l1:
    mov bx, word [bp + 0x4]          ; 0x4438
    mov al, byte [bx + 0x4]          ; 0x443b
    sub ah, ah                       ; 0x443e
    mov bx, ax                       ; 0x4440
    cmp byte [bx + 0x60e], 1         ; 0x4442
    je short @..api_idx_0002_5.l2    ; 0x4447
    jmp near @..api_idx_0002_5.l7    ; 0x4449
@..api_idx_0002_5.l2:
    mov bx, word [bp + 0x4]          ; 0x444c
    mov al, byte [bx + 0x6]          ; 0x444f
    sub ah, ah                       ; 0x4452
    push ax                          ; 0x4454
    mov bx, word [bp + 0x6]          ; 0x4455
    mov al, byte [bx + 0x6]          ; 0x4458
    sub ah, ah                       ; 0x445b
    mov cx, ax                       ; 0x445d
    pop ax                           ; 0x445f
    add ax, cx                       ; 0x4460
    mov word [bp - 0x0002], ax       ; 0x4462
    mov bx, word [bp + 0x4]          ; 0x4465
    mov al, byte [bx + 0x7]          ; 0x4468
    sub ah, ah                       ; 0x446b
    test ax, 0x80                    ; 0x446d
    je short @..api_idx_0002_5.l3    ; 0x4470
    mov bx, word [bp + 0x6]          ; 0x4472
    mov al, byte [bx + 0x7]          ; 0x4475
    sub ah, ah                       ; 0x4478
    or ax, 0x80                      ; 0x447a
    mov byte [bx + 0x7], al          ; 0x447d
    push word [bp + 0x8]             ; 0x4480
    push word [bp + 0xa]             ; 0x4483
    call ds_dispatch_f364            ; 0x4486
    add sp, byte 4                   ; 0x4489
@..api_idx_0002_5.l3:
    mov bx, word [bp + 0x6]          ; 0x448c
    mov al, byte [bx + 0x7]          ; 0x448f
    sub ah, ah                       ; 0x4492
    test ax, 0x80                    ; 0x4494
    je short @..api_idx_0002_5.l4    ; 0x4497
    mov bx, word [bp + 0x4]          ; 0x4499
    mov al, byte [bx + 0x7]          ; 0x449c
    sub ah, ah                       ; 0x449f
    or ax, 0x80                      ; 0x44a1
    mov byte [bx + 0x7], al          ; 0x44a4
    push word [bp + 0xa]             ; 0x44a7
    push word [bp + 0x8]             ; 0x44aa
    call ds_dispatch_f364            ; 0x44ad
    add sp, byte 4                   ; 0x44b0
@..api_idx_0002_5.l4:
    cmp word [bp - 0x0002], strict word 0xfa ; 0x44b3
    jg short @..api_idx_0002_5.l5    ; 0x44b8
    mov al, byte [bp - 0x0002]       ; 0x44ba
    mov bx, word [bp + 0x4]          ; 0x44bd
    mov byte [bx + 0x6], al          ; 0x44c0
    mov bx, word [bp + 0x6]          ; 0x44c3
    mov word [bx], 0                 ; 0x44c6
    jmp short @..api_idx_0002_5.l6   ; 0x44ca
@..api_idx_0002_5.l5:
    mov bx, word [bp + 0x4]          ; 0x44cc
    mov byte [bx + 0x6], 0xfa        ; 0x44cf
    mov ax, word [bp - 0x0002]       ; 0x44d3
    add ax, 0xff06                   ; 0x44d6
    mov bx, word [bp + 0x6]          ; 0x44d9
    mov byte [bx + 0x6], al          ; 0x44dc
@..api_idx_0002_5.l6:
    mov ax, 0                        ; 0x44df
    push ax                          ; 0x44e2
    call ds_dispatch_b7e0            ; 0x44e3
    pop cx                           ; 0x44e6
    jmp short @..api_idx_0002_5.l8   ; 0x44e7
@..api_idx_0002_5.l7:
    push word [bp + 0x8]             ; 0x44e9
    push word [bp + 0x6]             ; 0x44ec
    push word [bp + 0x4]             ; 0x44ef
    call api_idx_0002_4              ; 0x44f2
    add sp, byte 6                   ; 0x44f5
    test ax, ax                      ; 0x44f8
    je short @..api_idx_0002_5.l8    ; 0x44fa
    mov ax, 0                        ; 0x44fc
    push ax                          ; 0x44ff
    call ds_dispatch_b7e0            ; 0x4500
    pop cx                           ; 0x4503
@..api_idx_0002_5.l8:
    ret                              ; 0x4504
api_idx_000e_2:
    mov ax, 0xfff2                   ; 0x4505
    call ds_dispatch_f40b            ; 0x4508
    mov bx, word [bp + 0x4]          ; 0x450b
    mov al, byte [bx + 0x4]          ; 0x450e
    sub ah, ah                       ; 0x4511
    mov bx, ax                       ; 0x4513
    cmp byte [bx + 0x60e], 1         ; 0x4515
    jne short @..api_idx_000e_2.l1   ; 0x451a
    mov bx, word [bp + 0x4]          ; 0x451c
    cmp byte [bx + 0x6], 1           ; 0x451f
    jbe short @..api_idx_000e_2.l1   ; 0x4523
    mov ax, 0xc                      ; 0x4525
    push ax                          ; 0x4528
    push word [bp + 0x6]             ; 0x4529
    push bx                          ; 0x452c
    call ds_dispatch_fedc            ; 0x452d
    add sp, byte 6                   ; 0x4530
    push word [bp + 0x8]             ; 0x4533
    push word [bp + 0xa]             ; 0x4536
    call ds_dispatch_f364            ; 0x4539
    add sp, byte 4                   ; 0x453c
    mov bx, word [bp + 0x4]          ; 0x453f
    mov al, byte [bx + 0x6]          ; 0x4542
    sub ah, ah                       ; 0x4545
    mov cx, data_0002                ; 0x4547
    cwd                              ; 0x454a
    idiv cx                          ; 0x454b
    mov word [bp - 0x0002], ax       ; 0x454d
    mov al, byte [bx + 0x6]          ; 0x4550
    sub ah, ah                       ; 0x4553
    mov cx, ax                       ; 0x4555
    mov ax, word [bp - 0x0002]       ; 0x4557
    sub cx, ax                       ; 0x455a
    mov ax, cx                       ; 0x455c
    mov byte [bx + 0x6], al          ; 0x455e
    mov al, byte [bp - 0x0002]       ; 0x4561
    mov bx, word [bp + 0x6]          ; 0x4564
    mov byte [bx + 0x6], al          ; 0x4567
    mov ax, 0                        ; 0x456a
    push ax                          ; 0x456d
    call ds_dispatch_b7e0            ; 0x456e
    pop cx                           ; 0x4571
@..api_idx_000e_2.l1:
    ret                              ; 0x4572
api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x4573
    call ds_dispatch_f40b            ; 0x4576
    mov word [bp - 0x0002], 0xffff   ; 0x4579
    mov bx, word [bp + 0x6]          ; 0x457e
    mov al, byte [bx + 0x38]         ; 0x4581
    sub ah, ah                       ; 0x4584
    jmp near @..api_idx_0002_6.l3    ; 0x4586
    mov word [bp - 0x0002], 0        ; 0x4589
    mov bx, word [bp + 0x6]          ; 0x458e
    mov al, byte [bx + 0x37]         ; 0x4591
    sub ah, ah                       ; 0x4594
    test ax, 8                       ; 0x4596
    je short @..api_idx_0002_6.l1    ; 0x4599
    mov word [bp - 0x0002], 0xfffe   ; 0x459b
@..api_idx_0002_6.l1:
    jmp near @..api_idx_0002_6.l4    ; 0x45a0
    mov word [bp - 0x0002], 1        ; 0x45a3
    jmp near @..api_idx_0002_6.l4    ; 0x45a8
    mov word [bp - 0x0002], data_0002 ; 0x45ab
    jmp short @..api_idx_0002_6.l4   ; 0x45b0
    mov word [bp - 0x0002], 3        ; 0x45b2
    jmp short @..api_idx_0002_6.l4   ; 0x45b7
    mov word [bp - 0x0002], 4        ; 0x45b9
    jmp short @..api_idx_0002_6.l4   ; 0x45be
    mov word [bp - 0x0002], 5        ; 0x45c0
    jmp short @..api_idx_0002_6.l4   ; 0x45c5
    mov word [bp - 0x0002], 6        ; 0x45c7
    jmp short @..api_idx_0002_6.l4   ; 0x45cc
    mov word [bp - 0x0002], 7        ; 0x45ce
    jmp short @..api_idx_0002_6.l4   ; 0x45d3
    mov word [bp - 0x0002], 1        ; 0x45d5
    jmp short @..api_idx_0002_6.l4   ; 0x45da
    mov bx, word [bp + 0x6]          ; 0x45dc
    mov al, byte [bx + 0x37]         ; 0x45df
    sub ah, ah                       ; 0x45e2
    test ax, 8                       ; 0x45e4
    je short @..api_idx_0002_6.l2    ; 0x45e7
    mov word [bp - 0x0002], 1        ; 0x45e9
@..api_idx_0002_6.l2:
    jmp short @..api_idx_0002_6.l4   ; 0x45ee
    rcl byte [di - 0x6a30], 1        ; 0x45f0
    rcl byte [di - 0x6a30], 1        ; 0x45f4
    jmp far 0xf995:0xf295            ; 0x45f8
    xchg bp, ax                      ; 0x45fd
    add byte [bp - 0x69f9], dl       ; 0x45fe
    push cs                          ; 0x4602
    xchg si, ax                      ; 0x4603
    adc ax, 0x1c96                   ; 0x4604
    xchg si, ax                      ; 0x4607
    rcl byte [di - 0x69dd], 1        ; 0x4608
    and dx, word [bp - 0x69dd]       ; 0x460c
    db 0xd0, 0x95
@..api_idx_0002_6.l3:
    db 0x3d, 0x11
    add byte [bp + di + 0x8], dh     ; 0x4614
    xchg bx, ax                      ; 0x4617
    shl bx, 1                        ; 0x4618
    jmp [cs:bx - 0x69c9]             ; 0x461a
@..api_idx_0002_6.l4:
    mov ax, 0x248                    ; 0x461f
    imul word [bp + 0x4]             ; 0x4622
    mov bx, ax                       ; 0x4625
    mov al, byte [bx + 0x5e2d]       ; 0x4627
    sub ah, ah                       ; 0x462b
    push ax                          ; 0x462d
    mov ax, word [bp + 0x6]          ; 0x462e
    add ax, strict word 0x32         ; 0x4631
    push ax                          ; 0x4634
    call ds_dispatch_ec74            ; 0x4635
    add sp, byte 4                   ; 0x4638
    cmp ax, strict word 1            ; 0x463b
    jne short @..api_idx_0002_6.l5   ; 0x463e
    mov ax, 0x248                    ; 0x4640
    imul word [bp + 0x4]             ; 0x4643
    mov bx, ax                       ; 0x4646
    mov al, byte [bx + 0x5e2b]       ; 0x4648
    sub ah, ah                       ; 0x464c
    push ax                          ; 0x464e
    mov ax, word [bp + 0x6]          ; 0x464f
    add ax, strict word 0x34         ; 0x4652
    push ax                          ; 0x4655
    call ds_dispatch_ec74            ; 0x4656
    add sp, byte 4                   ; 0x4659
    cmp ax, strict word 1            ; 0x465c
    jne short @..api_idx_0002_6.l5   ; 0x465f
    mov ax, 0x248                    ; 0x4661
    imul word [bp + 0x4]             ; 0x4664
    mov bx, ax                       ; 0x4667
    mov al, byte [bx + 0x5e2c]       ; 0x4669
    sub ah, ah                       ; 0x466d
    push ax                          ; 0x466f
    mov ax, word [bp + 0x6]          ; 0x4670
    add ax, strict word 0x36         ; 0x4673
    push ax                          ; 0x4676
    call ds_dispatch_ec74            ; 0x4677
    add sp, byte 4                   ; 0x467a
    cmp ax, strict word 1            ; 0x467d
    je short @..api_idx_0002_6.l6    ; 0x4680
@..api_idx_0002_6.l5:
    mov word [bp - 0x0002], 0xffff   ; 0x4682
@..api_idx_0002_6.l6:
    mov ax, word [bp - 0x0002]       ; 0x4687
    ret                              ; 0x468a
api_idx_0056_2:
    mov ax, 0xffaa                   ; 0x468b
    call ds_dispatch_f40b            ; 0x468e
    lea ax, word [bp - 0x0056]       ; 0x4691
    push ax                          ; 0x4694
    mov ax, 0x164                    ; 0x4695
    push ax                          ; 0x4698
    call ds_dispatch_b53b            ; 0x4699
    add sp, byte 4                   ; 0x469c
    lea ax, word [bp - 0x0056]       ; 0x469f
    push ax                          ; 0x46a2
    call ds_dispatch_fa90            ; 0x46a3
    pop cx                           ; 0x46a6
    mov cx, 6                        ; 0x46a7
    imul cx                          ; 0x46aa
    mov cx, data_0002                ; 0x46ac
    cwd                              ; 0x46af
    idiv cx                          ; 0x46b0
    mov cx, ax                       ; 0x46b2
    mov ax, 0x10f                    ; 0x46b4
    sub ax, cx                       ; 0x46b7
    mov word [bp - 0x0002], ax       ; 0x46b9
    mov ax, 0x3e                     ; 0x46bc
    push ax                          ; 0x46bf
    mov ax, 0x13f                    ; 0x46c0
    push ax                          ; 0x46c3
    mov ax, 0x39                     ; 0x46c4
    push ax                          ; 0x46c7
    push word [bp - 0x0002]          ; 0x46c8
    call ds_dispatch_e928            ; 0x46cb
    add sp, byte 8                   ; 0x46ce
    mov word [bp - 0x0004], dx       ; 0x46d1
    mov word [bp - 0x0006], ax       ; 0x46d4
    mov ax, 0x39                     ; 0x46d7
    push ax                          ; 0x46da
    push word [bp - 0x0002]          ; 0x46db
    call ds_dispatch_e809            ; 0x46de
    add sp, byte 4                   ; 0x46e1
    mov ax, 0                        ; 0x46e4
    push ax                          ; 0x46e7
    mov ax, 0x55                     ; 0x46e8
    push ax                          ; 0x46eb
    call ds_dispatch_e823            ; 0x46ec
    add sp, byte 4                   ; 0x46ef
    mov ax, 0                        ; 0x46f2
    push ax                          ; 0x46f5
    lea ax, word [bp - 0x0056]       ; 0x46f6
    push ax                          ; 0x46f9
    call ds_dispatch_e84e            ; 0x46fa
    add sp, byte 4                   ; 0x46fd
    mov ax, 0x3e                     ; 0x4700
    push ax                          ; 0x4703
    mov ax, 0x13f                    ; 0x4704
    push ax                          ; 0x4707
    mov ax, 0x39                     ; 0x4708
    push ax                          ; 0x470b
    push word [bp - 0x0002]          ; 0x470c
    call ds_dispatch_e8da            ; 0x470f
    add sp, byte 8                   ; 0x4712
    mov ax, 0                        ; 0x4715
    push ax                          ; 0x4718
    call ds_dispatch_b7e0            ; 0x4719
    pop cx                           ; 0x471c
    push word [data_905a]            ; 0x471d
    call ds_dispatch_b75e            ; 0x4721
    pop cx                           ; 0x4724
    mov ax, 1                        ; 0x4725
    push ax                          ; 0x4728
    push word [bp - 0x0004]          ; 0x4729
    push word [bp - 0x0006]          ; 0x472c
    call ds_dispatch_e94f            ; 0x472f
    add sp, byte 6                   ; 0x4732
    mov ax, 0x3e                     ; 0x4735
    push ax                          ; 0x4738
    mov ax, 0x13f                    ; 0x4739
    push ax                          ; 0x473c
    mov ax, 0x39                     ; 0x473d
    push ax                          ; 0x4740
    push word [bp - 0x0002]          ; 0x4741
    call ds_dispatch_e8da            ; 0x4744
    add sp, byte 8                   ; 0x4747
    ret                              ; 0x474a
math_loc_474b:
    mov ax, 0                        ; 0x474b
    call ds_dispatch_f40b            ; 0x474e
    mov ax, 0x248                    ; 0x4751
    imul word [bp + 0x4]             ; 0x4754
    add ax, word [bp + 0x6]          ; 0x4757
    mov bx, ax                       ; 0x475a
    mov al, byte [bx + 0x5d48]       ; 0x475c
    sub ah, ah                       ; 0x4760
    cmp ax, 0xff                     ; 0x4762
    je short @..local.l125           ; 0x4765
    mov ax, 0x248                    ; 0x4767
    imul word [bp + 0x4]             ; 0x476a
    push ax                          ; 0x476d
    mov al, byte [bx + 0x5d48]       ; 0x476e
    sub ah, ah                       ; 0x4772
    mov cx, 0xc                      ; 0x4774
    imul cx                          ; 0x4777
    mov cx, ax                       ; 0x4779
    pop ax                           ; 0x477b
    add ax, cx                       ; 0x477c
    mov bx, ax                       ; 0x477e
    mov al, byte [bx + 0x5c3b]       ; 0x4780
    sub ah, ah                       ; 0x4784
    test ax, data_0002               ; 0x4786
    je short @..local.l125           ; 0x4789
    mov ax, 1                        ; 0x478b
    ret                              ; 0x478e
@..local.l125:
    mov ax, 0                        ; 0x478f
    ret                              ; 0x4792
api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x4793
    call ds_dispatch_f40b            ; 0x4796
    mov bx, word [bp + 0x8]          ; 0x4799
    mov al, byte [bx + 0x44]         ; 0x479c
    push ax                          ; 0x479f
    mov ax, 0x248                    ; 0x47a0
    imul word [bp + 0x4]             ; 0x47a3
    mov cx, ax                       ; 0x47a6
    mov ax, 0x12                     ; 0x47a8
    imul word [bp + 0x6]             ; 0x47ab
    mov dx, ax                       ; 0x47ae
    add cx, ax                       ; 0x47b0
    mov bx, cx                       ; 0x47b2
    pop ax                           ; 0x47b4
    mov byte [bx + 0x5d31], al       ; 0x47b5
    mov word [bp - 0x0004], 0        ; 0x47b9
@..api_idx_0004_8.l1:
    mov bx, word [bp + 0x8]          ; 0x47be
    mov si, word [bp - 0x0004]       ; 0x47c1
    mov al, byte [bx + si + 0x2a]    ; 0x47c4
    push ax                          ; 0x47c7
    mov ax, 0x248                    ; 0x47c8
    imul word [bp + 0x4]             ; 0x47cb
    mov cx, ax                       ; 0x47ce
    mov ax, 0x12                     ; 0x47d0
    imul word [bp + 0x6]             ; 0x47d3
    mov dx, ax                       ; 0x47d6
    add cx, ax                       ; 0x47d8
    add cx, si                       ; 0x47da
    mov bx, cx                       ; 0x47dc
    pop ax                           ; 0x47de
    mov byte [bx + 0x5d28], al       ; 0x47df
    inc word [bp - 0x0004]           ; 0x47e3
    mov ax, word [bp - 0x0004]       ; 0x47e6
    cmp ax, strict word 8            ; 0x47e9
    jl short @..api_idx_0004_8.l1    ; 0x47ec
    mov ax, 0x248                    ; 0x47ee
    imul word [bp + 0x4]             ; 0x47f1
    mov bx, ax                       ; 0x47f4
    mov al, byte [bx + 0x5d8d]       ; 0x47f6
    sub ah, ah                       ; 0x47fa
    mov cx, 5                        ; 0x47fc
    cwd                              ; 0x47ff
    idiv cx                          ; 0x4800
    mov word [bp - 0x0004], ax       ; 0x4802
    cmp byte [bx + 0x5e2d], 0xc      ; 0x4805
    je short @..api_idx_0004_8.l2    ; 0x480a
    cmp byte [bx + 0x5e2d], 0xd      ; 0x480c
    jne short @..api_idx_0004_8.l3   ; 0x4811
@..api_idx_0004_8.l2:
    mov ax, 0x12                     ; 0x4813
    imul word [bp + 0x6]             ; 0x4816
    add bx, ax                       ; 0x4819
    mov al, byte [bx + 0x5d2e]       ; 0x481b
    sub ah, ah                       ; 0x481f
    mov cx, ax                       ; 0x4821
    mov ax, word [bp - 0x0004]       ; 0x4823
    add cx, ax                       ; 0x4826
    mov ax, cx                       ; 0x4828
    add ax, strict word 5            ; 0x482a
    mov byte [bx + 0x5d2e], al       ; 0x482d
    jmp short @..api_idx_0004_8.l4   ; 0x4831
@..api_idx_0004_8.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x4833
    jle short @..api_idx_0004_8.l4   ; 0x4837
    mov ax, 0x248                    ; 0x4839
    imul word [bp + 0x4]             ; 0x483c
    push ax                          ; 0x483f
    mov ax, 0x12                     ; 0x4840
    imul word [bp + 0x6]             ; 0x4843
    mov cx, ax                       ; 0x4846
    pop ax                           ; 0x4848
    add ax, cx                       ; 0x4849
    mov bx, ax                       ; 0x484b
    mov al, byte [bx + 0x5d2e]       ; 0x484d
    sub ah, ah                       ; 0x4851
    add ax, word [bp - 0x0004]       ; 0x4853
    mov byte [bx + 0x5d2e], al       ; 0x4856
@..api_idx_0004_8.l4:
    mov bx, word [bp + 0x8]          ; 0x485a
    mov al, byte [bx + 0x45]         ; 0x485d
    push ax                          ; 0x4860
    mov ax, 0x248                    ; 0x4861
    imul word [bp + 0x4]             ; 0x4864
    mov cx, ax                       ; 0x4867
    mov ax, 0x12                     ; 0x4869
    imul word [bp + 0x6]             ; 0x486c
    mov dx, ax                       ; 0x486f
    add cx, ax                       ; 0x4871
    mov bx, cx                       ; 0x4873
    pop ax                           ; 0x4875
    mov byte [bx + 0x5d30], al       ; 0x4876
    mov bx, word [bp + 0x8]          ; 0x487a
    cmp byte [bx + 0x38], 4          ; 0x487d
    jne short @..api_idx_0004_8.l6   ; 0x4881
    mov al, byte [bx + 0x41]         ; 0x4883
    cbw                              ; 0x4886
    mov cx, 5                        ; 0x4887
    imul cx                          ; 0x488a
    mov cx, ax                       ; 0x488c
    mov ax, 0                        ; 0x488e
    sub ax, cx                       ; 0x4891
    push ax                          ; 0x4893
    mov ax, 0x248                    ; 0x4894
    imul word [bp + 0x4]             ; 0x4897
    mov cx, ax                       ; 0x489a
    mov ax, 0x12                     ; 0x489c
    imul word [bp + 0x6]             ; 0x489f
    mov dx, ax                       ; 0x48a2
    add cx, ax                       ; 0x48a4
    mov bx, cx                       ; 0x48a6
    pop ax                           ; 0x48a8
    mov byte [bx + 0x5d32], al       ; 0x48a9
    mov ax, 0x248                    ; 0x48ad
    imul word [bp + 0x4]             ; 0x48b0
    mov bx, ax                       ; 0x48b3
    cmp byte [bx + 0x5e2d], 4        ; 0x48b5
    jne short @..api_idx_0004_8.l5   ; 0x48ba
    mov bx, cx                       ; 0x48bc
    add byte [bx + 0x5d32], 0xf1     ; 0x48be
    mov al, byte [bx + 0x5d2e]       ; 0x48c3
    sub ah, ah                       ; 0x48c7
    shl ax, 1                        ; 0x48c9
    mov byte [bx + 0x5d2e], al       ; 0x48cb
@..api_idx_0004_8.l5:
    jmp near @..api_idx_0004_8.l12   ; 0x48cf
@..api_idx_0004_8.l6:
    mov ax, 0x248                    ; 0x48d2
    imul word [bp + 0x4]             ; 0x48d5
    push ax                          ; 0x48d8
    mov ax, 0x12                     ; 0x48d9
    imul word [bp + 0x6]             ; 0x48dc
    mov cx, ax                       ; 0x48df
    pop ax                           ; 0x48e1
    add ax, cx                       ; 0x48e2
    mov bx, ax                       ; 0x48e4
    mov byte [bx + 0x5d32], 0        ; 0x48e6
    cmp word [bp + 0x6], byte 0      ; 0x48eb
    jne short @..api_idx_0004_8.l9   ; 0x48ef
    mov ax, 0x248                    ; 0x48f1
    imul word [bp + 0x4]             ; 0x48f4
    mov bx, ax                       ; 0x48f7
    mov al, byte [bx + 0x5d32]       ; 0x48f9
    cbw                              ; 0x48fd
    mov cx, 0                        ; 0x48fe
    cmp byte [bx + 0x5d68], 0xf      ; 0x4901
    jbe short @..api_idx_0004_8.l7   ; 0x4906
    mov cx, 5                        ; 0x4908
@..api_idx_0004_8.l7:
    sub ax, cx                       ; 0x490b
    mov byte [bx + 0x5d32], al       ; 0x490d
    cbw                              ; 0x4911
    mov cx, 0                        ; 0x4912
    cmp byte [bx + 0x5d68], 0x11     ; 0x4915
    jbe short @..api_idx_0004_8.l8   ; 0x491a
    mov cx, 5                        ; 0x491c
@..api_idx_0004_8.l8:
    sub ax, cx                       ; 0x491f
    mov byte [bx + 0x5d32], al       ; 0x4921
    jmp short @..api_idx_0004_8.l11  ; 0x4925
@..api_idx_0004_8.l9:
    mov ax, 0x248                    ; 0x4927
    imul word [bp + 0x4]             ; 0x492a
    mov bx, ax                       ; 0x492d
    mov al, byte [bx + 0x5d44]       ; 0x492f
    cbw                              ; 0x4933
    mov cx, 0                        ; 0x4934
    cmp byte [bx + 0x5d68], 0x11     ; 0x4937
    jbe short @..api_idx_0004_8.l10  ; 0x493c
    mov cx, 5                        ; 0x493e
@..api_idx_0004_8.l10:
    sub ax, cx                       ; 0x4941
    mov byte [bx + 0x5d44], al       ; 0x4943
@..api_idx_0004_8.l11:
    mov ax, 0x248                    ; 0x4947
    imul word [bp + 0x4]             ; 0x494a
    push ax                          ; 0x494d
    mov ax, 0x12                     ; 0x494e
    imul word [bp + 0x6]             ; 0x4951
    mov cx, ax                       ; 0x4954
    pop ax                           ; 0x4956
    add ax, cx                       ; 0x4957
    mov bx, ax                       ; 0x4959
    mov al, byte [bx + 0x5d32]       ; 0x495b
    cbw                              ; 0x495f
    push ax                          ; 0x4960
    mov bx, word [bp + 0x8]          ; 0x4961
    mov al, byte [bx + 0x41]         ; 0x4964
    cbw                              ; 0x4967
    mov cx, 5                        ; 0x4968
    imul cx                          ; 0x496b
    mov cx, ax                       ; 0x496d
    pop ax                           ; 0x496f
    sub ax, cx                       ; 0x4970
    push ax                          ; 0x4972
    mov ax, 0x248                    ; 0x4973
    imul word [bp + 0x4]             ; 0x4976
    mov cx, ax                       ; 0x4979
    mov ax, 0x12                     ; 0x497b
    imul word [bp + 0x6]             ; 0x497e
    mov dx, ax                       ; 0x4981
    add cx, ax                       ; 0x4983
    mov bx, cx                       ; 0x4985
    pop ax                           ; 0x4987
    mov byte [bx + 0x5d32], al       ; 0x4988
@..api_idx_0004_8.l12:
    mov si, word [bp + 0x8]          ; 0x498c
    add si, byte 0x1e                ; 0x498f
    mov ax, 0x248                    ; 0x4992
    imul word [bp + 0x4]             ; 0x4995
    push ax                          ; 0x4998
    mov ax, 0x12                     ; 0x4999
    imul word [bp + 0x6]             ; 0x499c
    mov cx, ax                       ; 0x499f
    pop ax                           ; 0x49a1
    add ax, cx                       ; 0x49a2
    mov di, ax                       ; 0x49a4
    add ax, 0x5d24                   ; 0x49a6
    mov di, ax                       ; 0x49a9
    mov cx, ds                       ; 0x49ab
    mov es, cx                       ; 0x49ad
    movsw                            ; 0x49af
    movsw                            ; 0x49b0
    cmp word [bp + 0x6], byte 0      ; 0x49b1
    jne short @..local.l129          ; 0x49b5
    mov ax, 0x248                    ; 0x49b7
    imul word [bp + 0x4]             ; 0x49ba
    mov bx, ax                       ; 0x49bd
    cmp byte [bx + 0x5d64], 0xf      ; 0x49bf
    jbe short @..local.l126          ; 0x49c4
    mov ax, 1                        ; 0x49c6
    jmp short @..local.l127          ; 0x49c9
@..local.l126:
    mov ax, 0                        ; 0x49cb
@..local.l127:
    add word [bx + 0x5d24], ax       ; 0x49ce
    mov ax, 0                        ; 0x49d2
    cmp byte [bx + 0x5d64], 0x11     ; 0x49d5
    jbe short @..local.l128          ; 0x49da
    mov ax, 1                        ; 0x49dc
@..local.l128:
    add word [bx + 0x5d24], ax       ; 0x49df
@..local.l129:
    mov bx, word [bp + 0x8]          ; 0x49e3
    mov al, byte [bx + 0x46]         ; 0x49e6
    push ax                          ; 0x49e9
    mov ax, 0x248                    ; 0x49ea
    imul word [bp + 0x4]             ; 0x49ed
    mov cx, ax                       ; 0x49f0
    mov ax, 0x12                     ; 0x49f2
    imul word [bp + 0x6]             ; 0x49f5
    mov dx, ax                       ; 0x49f8
    add cx, ax                       ; 0x49fa
    mov bx, cx                       ; 0x49fc
    pop ax                           ; 0x49fe
    mov byte [bx + 0x5d33], al       ; 0x49ff
    mov bx, word [bp + 0x8]          ; 0x4a03
    mov al, byte [bx + 0x42]         ; 0x4a06
    mov bx, cx                       ; 0x4a09
    mov byte [bx + 0x5d34], al       ; 0x4a0b
    mov bx, word [bp + 0x8]          ; 0x4a0f
    mov al, byte [bx + 0x43]         ; 0x4a12
    mov bx, cx                       ; 0x4a15
    mov byte [bx + 0x5d35], al       ; 0x4a17
    ret                              ; 0x4a1b
api_idx_0048_2:
    mov ax, 0xffb8                   ; 0x4a1c
    call ds_dispatch_f40b            ; 0x4a1f
    mov ax, 0                        ; 0x4a22
    push ax                          ; 0x4a25
    mov bx, word [bp + 0x6]          ; 0x4a26
    push word [bx]                   ; 0x4a29
    lea ax, word [bp - 0x0048]       ; 0x4a2b
    push ax                          ; 0x4a2e
    mov ax, 1                        ; 0x4a2f
    push ax                          ; 0x4a32
    call ds_dispatch_b63c            ; 0x4a33
    add sp, byte 8                   ; 0x4a36
    mov al, byte [bp - 0x000a]       ; 0x4a39
    sub ah, ah                       ; 0x4a3c
    ret                              ; 0x4a3e
api_idx_0072:
    mov ax, 0xff8e                   ; 0x4a3f
    call ds_dispatch_f40b            ; 0x4a42
    mov word [data_95ea], 0          ; 0x4a45
    mov word [bp - 0x000c], 0        ; 0x4a4b
    mov word [bp - 0x000e], 0        ; 0x4a50
@..api_idx_0072.l1:
    cmp word [bp - 0x000c], byte 2   ; 0x4a55
    jge short @..local.l131          ; 0x4a59
    mov ax, 0x248                    ; 0x4a5b
    imul word [bp + 0x4]             ; 0x4a5e
    push ax                          ; 0x4a61
    mov ax, 0x78                     ; 0x4a62
    imul word [bp - 0x000c]          ; 0x4a65
    mov cx, ax                       ; 0x4a68
    pop ax                           ; 0x4a6a
    add ax, cx                       ; 0x4a6b
    push ax                          ; 0x4a6d
    mov ax, 0xc                      ; 0x4a6e
    imul word [bp - 0x000e]          ; 0x4a71
    mov cx, ax                       ; 0x4a74
    pop ax                           ; 0x4a76
    add ax, cx                       ; 0x4a77
    mov bx, ax                       ; 0x4a79
    cmp word [bx + 0x5c34], byte 0   ; 0x4a7b
    jle short @..local.l131          ; 0x4a80
    inc word [bp - 0x000e]           ; 0x4a82
    mov ax, word [bp - 0x000e]       ; 0x4a85
    cmp ax, strict word 0xa          ; 0x4a88
    jne short @..local.l130          ; 0x4a8b
    mov word [bp - 0x000e], 0        ; 0x4a8d
    inc word [bp - 0x000c]           ; 0x4a92
    mov ax, word [bp - 0x000c]       ; 0x4a95
    cmp ax, strict word 2            ; 0x4a98
    jne short @..local.l130          ; 0x4a9b
    mov ax, 0                        ; 0x4a9d
    push ax                          ; 0x4aa0
    call ds_dispatch_b7e0            ; 0x4aa1
    pop cx                           ; 0x4aa4
    mov ax, 0xffff                   ; 0x4aa5
    ret                              ; 0x4aa8
@..local.l130:
    jmp short @..api_idx_0072.l1     ; 0x4aa9
@..local.l131:
    mov ax, 0                        ; 0x4aab
    push ax                          ; 0x4aae
    mov bx, word [bp + 0x6]          ; 0x4aaf
    push word [bx]                   ; 0x4ab2
    lea ax, word [bp - 0x0066]       ; 0x4ab4
    push ax                          ; 0x4ab7
    mov ax, 1                        ; 0x4ab8
    push ax                          ; 0x4abb
    call ds_dispatch_b63c            ; 0x4abc
    add sp, byte 8                   ; 0x4abf
    lea ax, word [bp - 0x0066]       ; 0x4ac2
    push ax                          ; 0x4ac5
    push word [bp + 0x4]             ; 0x4ac6
    call api_idx_0002_6              ; 0x4ac9
    add sp, byte 4                   ; 0x4acc
    mov word [bp - 0x0006], ax       ; 0x4acf
    cmp ax, strict word 0xffff       ; 0x4ad2
    jne short @..local.l132          ; 0x4ad5
    mov ax, 0                        ; 0x4ad7
    push ax                          ; 0x4ada
    call ds_dispatch_b7e0            ; 0x4adb
    pop cx                           ; 0x4ade
    mov ax, 0xffff                   ; 0x4adf
    ret                              ; 0x4ae2
@..local.l132:
    cmp word [bp - 0x0006], byte 0xfe ; 0x4ae3
    jne short @..local.l134          ; 0x4ae7
    mov ax, 0                        ; 0x4ae9
    push ax                          ; 0x4aec
    push word [bp + 0x4]             ; 0x4aed
    call math_loc_474b               ; 0x4af0
    add sp, byte 4                   ; 0x4af3
    test ax, ax                      ; 0x4af6
    je short @..local.l133           ; 0x4af8
    mov word [bp - 0x0006], 1        ; 0x4afa
@..local.l133:
    mov ax, 1                        ; 0x4aff
    push ax                          ; 0x4b02
    push word [bp + 0x4]             ; 0x4b03
    call math_loc_474b               ; 0x4b06
    add sp, byte 4                   ; 0x4b09
    test ax, ax                      ; 0x4b0c
    je short @..local.l134           ; 0x4b0e
    mov word [bp - 0x0006], 0        ; 0x4b10
@..local.l134:
    mov al, byte [bp - 0x002f]       ; 0x4b15
    sub ah, ah                       ; 0x4b18
    test ax, 4                       ; 0x4b1a
    je short @..local.l135           ; 0x4b1d
    mov ax, 1                        ; 0x4b1f
    push ax                          ; 0x4b22
    push word [bp + 0x4]             ; 0x4b23
    call math_loc_474b               ; 0x4b26
    add sp, byte 4                   ; 0x4b29
    test ax, ax                      ; 0x4b2c
    je short @..local.l135           ; 0x4b2e
    call api_idx_0056_2              ; 0x4b30
    mov ax, 0xffff                   ; 0x4b33
    ret                              ; 0x4b36
@..local.l135:
    push word [bp - 0x0006]          ; 0x4b37
    push word [bp + 0x4]             ; 0x4b3a
    call math_loc_474b               ; 0x4b3d
    add sp, byte 4                   ; 0x4b40
    test ax, ax                      ; 0x4b43
    je short @..local.l136           ; 0x4b45
    call api_idx_0056_2              ; 0x4b47
    mov ax, 0xffff                   ; 0x4b4a
    ret                              ; 0x4b4d
@..local.l136:
    cmp word [bp - 0x0006], byte 1   ; 0x4b4e
    jne short @..local.l137          ; 0x4b52
    mov ax, 0x248                    ; 0x4b54
    imul word [bp + 0x4]             ; 0x4b57
    mov bx, ax                       ; 0x4b5a
    mov al, byte [bx + 0x5d48]       ; 0x4b5c
    sub ah, ah                       ; 0x4b60
    cmp ax, 0xff                     ; 0x4b62
    je short @..local.l137           ; 0x4b65
    mov cx, 0xc                      ; 0x4b67
    imul cx                          ; 0x4b6a
    add bx, ax                       ; 0x4b6c
    mov al, byte [bx + 0x5c3b]       ; 0x4b6e
    sub ah, ah                       ; 0x4b72
    test ax, 8                       ; 0x4b74
    je short @..local.l137           ; 0x4b77
    mov ax, 0                        ; 0x4b79
    push ax                          ; 0x4b7c
    push word [bp + 0x4]             ; 0x4b7d
    call math_loc_474b               ; 0x4b80
    add sp, byte 4                   ; 0x4b83
    test ax, ax                      ; 0x4b86
    je short @..local.l137           ; 0x4b88
    call api_idx_0056_2              ; 0x4b8a
    mov ax, 0xffff                   ; 0x4b8d
    ret                              ; 0x4b90
@..local.l137:
    cmp word [bp - 0x0006], byte 0xfe ; 0x4b91
    jne short @..local.l138          ; 0x4b95
    mov ax, 0xc6                     ; 0x4b97
    push ax                          ; 0x4b9a
    mov ax, 0xbd                     ; 0x4b9b
    push ax                          ; 0x4b9e
    mov ax, 0xbb                     ; 0x4b9f
    push ax                          ; 0x4ba2
    mov ax, 3                        ; 0x4ba3
    push ax                          ; 0x4ba6
    call ds_dispatch_e8da            ; 0x4ba7
    add sp, byte 8                   ; 0x4baa
    mov word [bp - 0x001e], 1        ; 0x4bad
    mov word [bp - 0x001c], 1        ; 0x4bb2
    mov word [bp - 0x001a], 0xffff   ; 0x4bb7
    lea ax, word [bp - 0x001e]       ; 0x4bbc
    push ax                          ; 0x4bbf
    mov ax, 0                        ; 0x4bc0
    push ax                          ; 0x4bc3
    mov ax, 0xffff                   ; 0x4bc4
    push ax                          ; 0x4bc7
    mov ax, 1                        ; 0x4bc8
    push ax                          ; 0x4bcb
    mov ax, data_0002                ; 0x4bcc
    push ax                          ; 0x4bcf
    mov ax, 1                        ; 0x4bd0
    push ax                          ; 0x4bd3
    mov ax, 0xc                      ; 0x4bd4
    push ax                          ; 0x4bd7
    mov ax, 0x6a                     ; 0x4bd8
    push ax                          ; 0x4bdb
    mov ax, 0xb                      ; 0x4bdc
    push ax                          ; 0x4bdf
    mov ax, 0x70                     ; 0x4be0
    push ax                          ; 0x4be3
    mov ax, 0x4a                     ; 0x4be4
    push ax                          ; 0x4be7
    mov ax, 0x15e                    ; 0x4be8
    push ax                          ; 0x4beb
    mov ax, 0x15f                    ; 0x4bec
    push ax                          ; 0x4bef
    call math_loc_1ca0               ; 0x4bf0
    add sp, byte 0x1a                ; 0x4bf3
    mov word [bp - 0x0006], ax       ; 0x4bf6
@..local.l138:
    cmp word [bp - 0x0006], byte 0   ; 0x4bf9
    jne short @..local.l140          ; 0x4bfd
    mov al, byte [bp - 0x002f]       ; 0x4bff
    sub ah, ah                       ; 0x4c02
    test ax, 4                       ; 0x4c04
    je short @..local.l139           ; 0x4c07
    mov ax, 0x248                    ; 0x4c09
    imul word [bp + 0x4]             ; 0x4c0c
    mov bx, ax                       ; 0x4c0f
    mov al, byte [bx + 0x5d49]       ; 0x4c11
    sub ah, ah                       ; 0x4c15
    mov word [bp - 0x000a], ax       ; 0x4c17
    cmp ax, 0xff                     ; 0x4c1a
    je short @..local.l139           ; 0x4c1d
    push ax                          ; 0x4c1f
    push word [bp + 0x4]             ; 0x4c20
    call ds_dispatch_c7dc            ; 0x4c23
    add sp, byte 4                   ; 0x4c26
@..local.l139:
    jmp short @..local.l141          ; 0x4c29
@..local.l140:
    cmp word [bp - 0x0006], byte 1   ; 0x4c2b
    jne short @..local.l141          ; 0x4c2f
    mov ax, 0x248                    ; 0x4c31
    imul word [bp + 0x4]             ; 0x4c34
    mov bx, ax                       ; 0x4c37
    mov al, byte [bx + 0x5d48]       ; 0x4c39
    sub ah, ah                       ; 0x4c3d
    mov word [bp - 0x000a], ax       ; 0x4c3f
    cmp ax, 0xff                     ; 0x4c42
    je short @..local.l141           ; 0x4c45
    mov cx, 0xc                      ; 0x4c47
    imul cx                          ; 0x4c4a
    add bx, ax                       ; 0x4c4c
    mov al, byte [bx + 0x5c3b]       ; 0x4c4e
    sub ah, ah                       ; 0x4c52
    test ax, 8                       ; 0x4c54
    je short @..local.l141           ; 0x4c57
    push word [bp - 0x000a]          ; 0x4c59
    push word [bp + 0x4]             ; 0x4c5c
    call ds_dispatch_c7dc            ; 0x4c5f
    add sp, byte 4                   ; 0x4c62
@..local.l141:
    mov ax, 0x248                    ; 0x4c65
    imul word [bp + 0x4]             ; 0x4c68
    add ax, word [bp - 0x0006]       ; 0x4c6b
    mov bx, ax                       ; 0x4c6e
    mov al, byte [bx + 0x5d48]       ; 0x4c70
    sub ah, ah                       ; 0x4c74
    mov word [bp - 0x000a], ax       ; 0x4c76
    cmp ax, 0xff                     ; 0x4c79
    je short @..local.l142           ; 0x4c7c
    push ax                          ; 0x4c7e
    push word [bp + 0x4]             ; 0x4c7f
    call ds_dispatch_c7dc            ; 0x4c82
    add sp, byte 4                   ; 0x4c85
@..local.l142:
    cmp word [bp - 0x000c], byte 0   ; 0x4c88
    je short @..local.l143           ; 0x4c8c
    mov ax, 0x248                    ; 0x4c8e
    imul word [bp + 0x4]             ; 0x4c91
    mov si, ax                       ; 0x4c94
    add ax, 0x5ca0                   ; 0x4c96
    mov si, ax                       ; 0x4c99
    mov ax, 0x248                    ; 0x4c9b
    imul word [bp + 0x4]             ; 0x4c9e
    push ax                          ; 0x4ca1
    mov ax, 0x78                     ; 0x4ca2
    imul word [bp - 0x000c]          ; 0x4ca5
    mov cx, ax                       ; 0x4ca8
    pop ax                           ; 0x4caa
    add ax, cx                       ; 0x4cab
    push ax                          ; 0x4cad
    mov ax, 0xc                      ; 0x4cae
    imul word [bp - 0x000e]          ; 0x4cb1
    mov cx, ax                       ; 0x4cb4
    pop ax                           ; 0x4cb6
    add ax, cx                       ; 0x4cb7
    mov di, ax                       ; 0x4cb9
    add ax, 0x5c34                   ; 0x4cbb
    mov di, ax                       ; 0x4cbe
    mov cx, ds                       ; 0x4cc0
    mov es, cx                       ; 0x4cc2
    mov cx, 6                        ; 0x4cc4
    rep movsw                        ; 0x4cc7
    mov word [bp - 0x000c], 0        ; 0x4cc9
    mov word [bp - 0x000e], 9        ; 0x4cce
@..local.l143:
    mov ax, word [bp - 0x000e]       ; 0x4cd3
    mov word [data_95ea], ax         ; 0x4cd6
    mov si, word [bp + 0x6]          ; 0x4cd9
    mov ax, 0x248                    ; 0x4cdc
    imul word [bp + 0x4]             ; 0x4cdf
    push ax                          ; 0x4ce2
    mov ax, 0x78                     ; 0x4ce3
    imul word [bp - 0x000c]          ; 0x4ce6
    mov cx, ax                       ; 0x4ce9
    pop ax                           ; 0x4ceb
    add ax, cx                       ; 0x4cec
    push ax                          ; 0x4cee
    mov ax, 0xc                      ; 0x4cef
    imul word [bp - 0x000e]          ; 0x4cf2
    mov cx, ax                       ; 0x4cf5
    pop ax                           ; 0x4cf7
    add ax, cx                       ; 0x4cf8
    mov di, ax                       ; 0x4cfa
    add ax, 0x5c34                   ; 0x4cfc
    mov di, ax                       ; 0x4cff
    mov cx, ds                       ; 0x4d01
    mov es, cx                       ; 0x4d03
    mov cx, 6                        ; 0x4d05
    rep movsw                        ; 0x4d08
    mov ax, 0x248                    ; 0x4d0a
    imul word [bp + 0x4]             ; 0x4d0d
    push ax                          ; 0x4d10
    mov ax, 0x78                     ; 0x4d11
    imul word [bp - 0x000c]          ; 0x4d14
    mov cx, ax                       ; 0x4d17
    pop ax                           ; 0x4d19
    add ax, cx                       ; 0x4d1a
    push ax                          ; 0x4d1c
    mov ax, 0xc                      ; 0x4d1d
    imul word [bp - 0x000e]          ; 0x4d20
    mov cx, ax                       ; 0x4d23
    pop ax                           ; 0x4d25
    add ax, cx                       ; 0x4d26
    mov bx, ax                       ; 0x4d28
    or byte [bx + 0x5c3b], 1         ; 0x4d2a
    mov al, byte [bp - 0x000e]       ; 0x4d2f
    push ax                          ; 0x4d32
    mov ax, 0x248                    ; 0x4d33
    imul word [bp + 0x4]             ; 0x4d36
    mov cx, ax                       ; 0x4d39
    add ax, word [bp - 0x0006]       ; 0x4d3b
    mov bx, ax                       ; 0x4d3e
    pop ax                           ; 0x4d40
    mov byte [bx + 0x5d48], al       ; 0x4d41
    cmp byte [bp - 0x0029], 0        ; 0x4d45
    jbe short @..local.l144          ; 0x4d49
    mov ax, 0x78                     ; 0x4d4b
    imul word [bp - 0x000c]          ; 0x4d4e
    add cx, ax                       ; 0x4d51
    mov ax, cx                       ; 0x4d53
    push ax                          ; 0x4d55
    mov ax, 0xc                      ; 0x4d56
    imul word [bp - 0x000e]          ; 0x4d59
    mov cx, ax                       ; 0x4d5c
    pop ax                           ; 0x4d5e
    add ax, cx                       ; 0x4d5f
    mov bx, ax                       ; 0x4d61
    or byte [bx + 0x5c3b], data_0002 ; 0x4d63
    call api_idx_0056_2              ; 0x4d68
@..local.l144:
    mov word [bp - 0x0002], 0        ; 0x4d6b
    mov word [bp - 0x000a], 0        ; 0x4d70
@..local.l145:
    cmp word [bp - 0x0002], byte 8   ; 0x4d75
    jl short @..local.l146           ; 0x4d79
    jmp near @..local.l154           ; 0x4d7b
@..local.l146:
    mov ax, 0x248                    ; 0x4d7e
    imul word [bp + 0x4]             ; 0x4d81
    add ax, word [bp - 0x0002]       ; 0x4d84
    mov bx, ax                       ; 0x4d87
    mov al, byte [bx + 0x5d48]       ; 0x4d89
    sub ah, ah                       ; 0x4d8d
    mov word [bp - 0x000e], ax       ; 0x4d8f
    cmp ax, 0xff                     ; 0x4d92
    jne short @..local.l147          ; 0x4d95
    jmp near @..local.l153           ; 0x4d97
@..local.l147:
    mov ax, 0x248                    ; 0x4d9a
    imul word [bp + 0x4]             ; 0x4d9d
    push ax                          ; 0x4da0
    mov ax, 0xc                      ; 0x4da1
    imul word [bp - 0x000e]          ; 0x4da4
    mov cx, ax                       ; 0x4da7
    pop ax                           ; 0x4da9
    add ax, cx                       ; 0x4daa
    mov si, ax                       ; 0x4dac
    add ax, 0x5c34                   ; 0x4dae
    mov si, ax                       ; 0x4db1
    lea di, word [bp - 0x0072]       ; 0x4db3
    mov cx, ds                       ; 0x4db6
    mov es, cx                       ; 0x4db8
    mov cx, 6                        ; 0x4dba
    rep movsw                        ; 0x4dbd
@..local.l148:
    mov ax, word [bp - 0x000e]       ; 0x4dbf
    cmp ax, word [bp - 0x000a]       ; 0x4dc2
    jle short @..local.l151          ; 0x4dc5
    mov ax, 0x248                    ; 0x4dc7
    imul word [bp + 0x4]             ; 0x4dca
    push ax                          ; 0x4dcd
    mov ax, 0xc                      ; 0x4dce
    imul word [bp - 0x000e]          ; 0x4dd1
    mov cx, ax                       ; 0x4dd4
    pop ax                           ; 0x4dd6
    add ax, cx                       ; 0x4dd7
    mov si, ax                       ; 0x4dd9
    add ax, 0x5c28                   ; 0x4ddb
    mov si, ax                       ; 0x4dde
    mov ax, 0x248                    ; 0x4de0
    imul word [bp + 0x4]             ; 0x4de3
    add ax, cx                       ; 0x4de6
    mov di, ax                       ; 0x4de8
    add ax, 0x5c34                   ; 0x4dea
    mov di, ax                       ; 0x4ded
    mov cx, ds                       ; 0x4def
    mov es, cx                       ; 0x4df1
    mov cx, 6                        ; 0x4df3
    rep movsw                        ; 0x4df6
    mov word [bp - 0x0004], 0        ; 0x4df8
@..local.l149:
    mov ax, 0x248                    ; 0x4dfd
    imul word [bp + 0x4]             ; 0x4e00
    add ax, word [bp - 0x0004]       ; 0x4e03
    mov bx, ax                       ; 0x4e06
    mov al, byte [bx + 0x5d48]       ; 0x4e08
    sub ah, ah                       ; 0x4e0c
    mov cx, word [bp - 0x000e]       ; 0x4e0e
    dec cx                           ; 0x4e11
    cmp ax, cx                       ; 0x4e12
    jne short @..local.l150          ; 0x4e14
    mov al, byte [bp - 0x000e]       ; 0x4e16
    mov byte [bx + 0x5d48], al       ; 0x4e19
@..local.l150:
    inc word [bp - 0x0004]           ; 0x4e1d
    mov ax, word [bp - 0x0004]       ; 0x4e20
    cmp ax, strict word 8            ; 0x4e23
    jl short @..local.l149           ; 0x4e26
    dec word [bp - 0x000e]           ; 0x4e28
    jmp short @..local.l148          ; 0x4e2b
@..local.l151:
    lea si, word [bp - 0x0072]       ; 0x4e2d
    mov ax, 0x248                    ; 0x4e30
    imul word [bp + 0x4]             ; 0x4e33
    push ax                          ; 0x4e36
    mov ax, 0xc                      ; 0x4e37
    imul word [bp - 0x000a]          ; 0x4e3a
    mov cx, ax                       ; 0x4e3d
    pop ax                           ; 0x4e3f
    add ax, cx                       ; 0x4e40
    mov di, ax                       ; 0x4e42
    add ax, 0x5c34                   ; 0x4e44
    mov di, ax                       ; 0x4e47
    mov cx, ds                       ; 0x4e49
    mov es, cx                       ; 0x4e4b
    mov cx, 6                        ; 0x4e4d
    rep movsw                        ; 0x4e50
    mov al, byte [bp - 0x000a]       ; 0x4e52
    push ax                          ; 0x4e55
    mov ax, 0x248                    ; 0x4e56
    imul word [bp + 0x4]             ; 0x4e59
    mov cx, ax                       ; 0x4e5c
    add ax, word [bp - 0x0002]       ; 0x4e5e
    mov bx, ax                       ; 0x4e61
    pop ax                           ; 0x4e63
    mov byte [bx + 0x5d48], al       ; 0x4e64
    mov ax, word [bp - 0x0006]       ; 0x4e68
    cmp ax, word [bp - 0x0002]       ; 0x4e6b
    jne short @..local.l152          ; 0x4e6e
    mov ax, word [bp - 0x000a]       ; 0x4e70
    mov word [data_95ea], ax         ; 0x4e73
@..local.l152:
    inc word [bp - 0x000a]           ; 0x4e76
@..local.l153:
    inc word [bp - 0x0002]           ; 0x4e79
    jmp near @..local.l145           ; 0x4e7c
@..local.l154:
    cmp word [bp - 0x0006], byte 0   ; 0x4e7f
    je short @..local.l155           ; 0x4e83
    mov ax, word [bp - 0x0006]       ; 0x4e85
    cmp ax, strict word 1            ; 0x4e88
    jne short @..local.l156          ; 0x4e8b
@..local.l155:
    mov al, byte [bp - 0x0026]       ; 0x4e8d
    push ax                          ; 0x4e90
    mov ax, 0x248                    ; 0x4e91
    imul word [bp + 0x4]             ; 0x4e94
    mov bx, ax                       ; 0x4e97
    pop ax                           ; 0x4e99
    sub byte [bx + 0x5dab], al       ; 0x4e9a
    lea ax, word [bp - 0x0066]       ; 0x4e9e
    push ax                          ; 0x4ea1
    push word [bp - 0x0006]          ; 0x4ea2
    push word [bp + 0x4]             ; 0x4ea5
    call api_idx_0004_8              ; 0x4ea8
    add sp, byte 6                   ; 0x4eab
    jmp short @..local.l157          ; 0x4eae
@..local.l156:
    mov al, byte [bp - 0x0026]       ; 0x4eb0
    push ax                          ; 0x4eb3
    mov ax, 0x248                    ; 0x4eb4
    imul word [bp + 0x4]             ; 0x4eb7
    mov cx, ax                       ; 0x4eba
    add ax, word [bp - 0x0006]       ; 0x4ebc
    mov bx, ax                       ; 0x4ebf
    pop ax                           ; 0x4ec1
    sub byte [bx + 0x5daa], al       ; 0x4ec2
@..local.l157:
    mov word [bp - 0x0002], 0        ; 0x4ec6
@..local.l158:
    mov ax, 0x248                    ; 0x4ecb
    imul word [bp + 0x4]             ; 0x4ece
    add ax, word [bp - 0x0002]       ; 0x4ed1
    mov bx, ax                       ; 0x4ed4
    mov al, byte [bx + 0x5d8e]       ; 0x4ed6
    mov byte [bx + 0x5d9c], al       ; 0x4eda
    inc word [bp - 0x0002]           ; 0x4ede
    mov ax, word [bp - 0x0002]       ; 0x4ee1
    cmp ax, strict word 0xe          ; 0x4ee4
    jl short @..local.l158           ; 0x4ee7
    mov word [bp - 0x0002], 0        ; 0x4ee9
@..local.l159:
    mov ax, 0x248                    ; 0x4eee
    imul word [bp + 0x4]             ; 0x4ef1
    add ax, word [bp - 0x0002]       ; 0x4ef4
    mov bx, ax                       ; 0x4ef7
    mov al, byte [bx + 0x5d48]       ; 0x4ef9
    sub ah, ah                       ; 0x4efd
    cmp ax, 0xff                     ; 0x4eff
    jne short @..local.l160          ; 0x4f02
    jmp near @..local.l166           ; 0x4f04
@..local.l160:
    mov word [bp - 0x0010], 0        ; 0x4f07
@..local.l161:
    mov ax, 0x248                    ; 0x4f0c
    imul word [bp + 0x4]             ; 0x4f0f
    push ax                          ; 0x4f12
    add ax, word [bp - 0x0002]       ; 0x4f13
    mov bx, ax                       ; 0x4f16
    mov al, byte [bx + 0x5d48]       ; 0x4f18
    sub ah, ah                       ; 0x4f1c
    mov cx, 0xc                      ; 0x4f1e
    imul cx                          ; 0x4f21
    mov cx, ax                       ; 0x4f23
    pop ax                           ; 0x4f25
    add ax, cx                       ; 0x4f26
    add ax, word [bp - 0x0010]       ; 0x4f28
    mov bx, ax                       ; 0x4f2b
    mov al, byte [bx + 0x5c3c]       ; 0x4f2d
    sub ah, ah                       ; 0x4f31
    mov cx, 0x10                     ; 0x4f33
    cwd                              ; 0x4f36
    idiv cx                          ; 0x4f37
    mov word [bp - 0x0012], ax       ; 0x4f39
    mov ax, 0xa                      ; 0x4f3c
    imul dx                          ; 0x4f3f
    mov word [bp - 0x0014], ax       ; 0x4f41
    mov ax, 0x7d                     ; 0x4f44
    push ax                          ; 0x4f47
    mov ax, 0                        ; 0x4f48
    push ax                          ; 0x4f4b
    mov ax, 0x248                    ; 0x4f4c
    imul word [bp + 0x4]             ; 0x4f4f
    add ax, word [bp - 0x0012]       ; 0x4f52
    mov bx, ax                       ; 0x4f55
    mov al, byte [bx + 0x5d9c]       ; 0x4f57
    sub ah, ah                       ; 0x4f5b
    add ax, word [bp - 0x0014]       ; 0x4f5d
    push ax                          ; 0x4f60
    call ds_dispatch_b7c2            ; 0x4f61
    add sp, byte 6                   ; 0x4f64
    push ax                          ; 0x4f67
    mov ax, 0x248                    ; 0x4f68
    imul word [bp + 0x4]             ; 0x4f6b
    mov cx, ax                       ; 0x4f6e
    add ax, word [bp - 0x0012]       ; 0x4f70
    mov bx, ax                       ; 0x4f73
    pop ax                           ; 0x4f75
    mov byte [bx + 0x5d9c], al       ; 0x4f76
    inc word [bp - 0x0010]           ; 0x4f7a
    mov ax, word [bp - 0x0010]       ; 0x4f7d
    cmp ax, strict word 2            ; 0x4f80
    jl short @..local.l161           ; 0x4f83
    mov ax, 0x248                    ; 0x4f85
    imul word [bp + 0x4]             ; 0x4f88
    push ax                          ; 0x4f8b
    add ax, word [bp - 0x0002]       ; 0x4f8c
    mov bx, ax                       ; 0x4f8f
    mov al, byte [bx + 0x5d48]       ; 0x4f91
    sub ah, ah                       ; 0x4f95
    mov cx, 0xc                      ; 0x4f97
    imul cx                          ; 0x4f9a
    mov cx, ax                       ; 0x4f9c
    pop ax                           ; 0x4f9e
    add ax, cx                       ; 0x4f9f
    mov bx, ax                       ; 0x4fa1
    mov al, byte [bx + 0x5c3e]       ; 0x4fa3
    sub ah, ah                       ; 0x4fa7
    mov cx, 0x10                     ; 0x4fa9
    cwd                              ; 0x4fac
    idiv cx                          ; 0x4fad
    mov word [bp - 0x0012], ax       ; 0x4faf
    mov word [bp - 0x0014], dx       ; 0x4fb2
    mov ax, 0x248                    ; 0x4fb5
    imul word [bp + 0x4]             ; 0x4fb8
    mov bx, ax                       ; 0x4fbb
    mov al, byte [bx + 0x5e30]       ; 0x4fbd
    sub ah, ah                       ; 0x4fc1
    mov dx, word [bp - 0x0014]       ; 0x4fc3
    cmp ax, dx                       ; 0x4fc6
    jge short @..local.l162          ; 0x4fc8
    mov ax, dx                       ; 0x4fca
    jmp short @..local.l163          ; 0x4fcc
@..local.l162:
    mov al, byte [bx + 0x5e30]       ; 0x4fce
    sub ah, ah                       ; 0x4fd2
@..local.l163:
    mov byte [bx + 0x5e30], al       ; 0x4fd4
    mov al, byte [bx + 0x5e31]       ; 0x4fd8
    sub ah, ah                       ; 0x4fdc
    cmp ax, word [bp - 0x0012]       ; 0x4fde
    jge short @..local.l164          ; 0x4fe1
    mov ax, word [bp - 0x0012]       ; 0x4fe3
    jmp short @..local.l165          ; 0x4fe6
@..local.l164:
    mov al, byte [bx + 0x5e31]       ; 0x4fe8
    sub ah, ah                       ; 0x4fec
@..local.l165:
    mov byte [bx + 0x5e31], al       ; 0x4fee
@..local.l166:
    inc word [bp - 0x0002]           ; 0x4ff2
    mov ax, word [bp - 0x0002]       ; 0x4ff5
    cmp ax, strict word 8            ; 0x4ff8
    jge short @..local.l167          ; 0x4ffb
    jmp near @..local.l159           ; 0x4ffd
@..local.l167:
    mov al, byte [bp - 0x0028]       ; 0x5000
    sub ah, ah                       ; 0x5003
    ret                              ; 0x5005
api_idx_0002_7:
    mov ax, 0xfffe                   ; 0x5006
    call ds_dispatch_f40b            ; 0x5009
    push word [bp + 0xa]             ; 0x500c
    call ds_dispatch_b7a9            ; 0x500f
    pop cx                           ; 0x5012
    add ax, word [bp + 0x8]          ; 0x5013
    mov word [bp - 0x0002], ax       ; 0x5016
    mov ax, 0x64                     ; 0x5019
    push ax                          ; 0x501c
    mov ax, 0                        ; 0x501d
    push ax                          ; 0x5020
    mov ax, 0x248                    ; 0x5021
    imul word [bp + 0x4]             ; 0x5024
    add ax, word [bp + 0x6]          ; 0x5027
    mov bx, ax                       ; 0x502a
    mov al, byte [bx + 0x5d6c]       ; 0x502c
    sub ah, ah                       ; 0x5030
    add ax, word [bp - 0x0002]       ; 0x5032
    push ax                          ; 0x5035
    call ds_dispatch_b7c2            ; 0x5036
    add sp, byte 6                   ; 0x5039
    push ax                          ; 0x503c
    mov ax, 0x248                    ; 0x503d
    imul word [bp + 0x4]             ; 0x5040
    mov cx, ax                       ; 0x5043
    add ax, word [bp + 0x6]          ; 0x5045
    mov bx, ax                       ; 0x5048
    pop ax                           ; 0x504a
    mov byte [bx + 0x5d6c], al       ; 0x504b
    ret                              ; 0x504f
api_idx_0010_2:
    mov ax, 0xfff0                   ; 0x5050
    call ds_dispatch_f40b            ; 0x5053
    mov word [bp - 0x0010], 1        ; 0x5056
    mov word [bp - 0x000e], 1        ; 0x505b
    mov word [bp - 0x000c], 0xffff   ; 0x5060
    lea ax, word [bp - 0x0010]       ; 0x5065
    push ax                          ; 0x5068
    mov ax, 1                        ; 0x5069
    push ax                          ; 0x506c
    mov ax, 0xffff                   ; 0x506d
    push ax                          ; 0x5070
    mov ax, 1                        ; 0x5071
    push ax                          ; 0x5074
    mov ax, data_0002                ; 0x5075
    push ax                          ; 0x5078
    mov ax, 1                        ; 0x5079
    push ax                          ; 0x507c
    mov ax, 0xc                      ; 0x507d
    push ax                          ; 0x5080
    mov ax, 0x6a                     ; 0x5081
    push ax                          ; 0x5084
    mov ax, 0xb                      ; 0x5085
    push ax                          ; 0x5088
    mov ax, 0x70                     ; 0x5089
    push ax                          ; 0x508c
    mov ax, 0x4a                     ; 0x508d
    push ax                          ; 0x5090
    mov ax, 0x161                    ; 0x5091
    push ax                          ; 0x5094
    mov ax, 0x162                    ; 0x5095
    push ax                          ; 0x5098
    call math_loc_1ca0               ; 0x5099
    add sp, byte 0x1a                ; 0x509c
    mov word [bp - 0x0006], ax       ; 0x509f
    cmp word [bp - 0x0006], byte 0   ; 0x50a2
    je short @..api_idx_0010_2.l1    ; 0x50a6
    jmp near @..local.l171           ; 0x50a8
@..api_idx_0010_2.l1:
    cmp word [bp + 0xa], byte 9      ; 0x50ab
    jge short @..api_idx_0010_2.l3   ; 0x50af
    mov ax, word [bp + 0xa]          ; 0x50b1
    dec ax                           ; 0x50b4
    mov word [bp - 0x0004], ax       ; 0x50b5
    mov ax, 0x248                    ; 0x50b8
    imul word [bp + 0x4]             ; 0x50bb
    mov cx, ax                       ; 0x50be
    mov ax, word [bp - 0x0004]       ; 0x50c0
    add cx, ax                       ; 0x50c3
    mov bx, cx                       ; 0x50c5
    cmp byte [bx + 0x5d64], 0x14     ; 0x50c7
    jae short @..api_idx_0010_2.l2   ; 0x50cc
    inc byte [bx + 0x5d64]           ; 0x50ce
@..api_idx_0010_2.l2:
    jmp near @..local.l170           ; 0x50d2
@..api_idx_0010_2.l3:
    mov ax, word [bp + 0xa]          ; 0x50d5
    jmp near @..local.l169           ; 0x50d8
    mov ax, 0x248                    ; 0x50db
    imul word [bp + 0x4]             ; 0x50de
    mov bx, ax                       ; 0x50e1
    cmp byte [bx + 0x5e37], 4        ; 0x50e3
    jae short @..api_idx_0010_2.l4   ; 0x50e8
    mov byte [bx + 0x5e37], 4        ; 0x50ea
@..api_idx_0010_2.l4:
    jmp near @..local.l170           ; 0x50ef
    mov ax, 0x248                    ; 0x50f2
    imul word [bp + 0x4]             ; 0x50f5
    mov bx, ax                       ; 0x50f8
    cmp byte [bx + 0x5e38], 4        ; 0x50fa
    jae short @..api_idx_0010_2.l5   ; 0x50ff
    mov byte [bx + 0x5e38], 4        ; 0x5101
@..api_idx_0010_2.l5:
    jmp near @..local.l170           ; 0x5106
    mov ax, 0x248                    ; 0x5109
    imul word [bp + 0x4]             ; 0x510c
    mov bx, ax                       ; 0x510f
    mov byte [bx + 0x5e2f], 0        ; 0x5111
    mov word [bp - 0x0004], 0        ; 0x5116
@..api_idx_0010_2.l6:
    mov ax, 0x248                    ; 0x511b
    imul word [bp + 0x4]             ; 0x511e
    add ax, word [bp - 0x0004]       ; 0x5121
    mov bx, ax                       ; 0x5124
    mov byte [bx + 0x5d5a], 0        ; 0x5126
    inc word [bp - 0x0004]           ; 0x512b
    mov ax, word [bp - 0x0004]       ; 0x512e
    cmp ax, strict word 0xa          ; 0x5131
    jl short @..api_idx_0010_2.l6    ; 0x5134
    mov ax, 0x248                    ; 0x5136
    imul word [bp + 0x4]             ; 0x5139
    mov bx, ax                       ; 0x513c
    mov ax, word [bx + 0x5c0e]       ; 0x513e
    mov word [bx + 0x5c0c], ax       ; 0x5142
    mov ax, word [bx + 0x5c12]       ; 0x5146
    mov word [bx + 0x5c10], ax       ; 0x514a
    cmp word [bp + 0xa], byte 0x0b   ; 0x514e
    je short @..api_idx_0010_2.l10   ; 0x5152
    mov ax, 0x248                    ; 0x5154
    imul word [bp + 0x4]             ; 0x5157
    mov bx, ax                       ; 0x515a
    mov ax, word [bx + 0x5bfc]       ; 0x515c
    mov dx, word [bx + 0x5bfe]       ; 0x5160
    mov cx, 0x16d                    ; 0x5164
    mov bx, 0                        ; 0x5167
    call ds_dispatch_f99f            ; 0x516a
    cmp dx, byte 0                   ; 0x516d
    jl short @..api_idx_0010_2.l7    ; 0x5170
    jne short @..api_idx_0010_2.l8   ; 0x5172
    cmp ax, strict word 0x12         ; 0x5174
    ja short @..api_idx_0010_2.l8    ; 0x5177
@..api_idx_0010_2.l7:
    jmp short @..api_idx_0010_2.l9   ; 0x5179
@..api_idx_0010_2.l8:
    mov ax, 0x248                    ; 0x517b
    imul word [bp + 0x4]             ; 0x517e
    mov bx, ax                       ; 0x5181
    add word [bx + 0x5bfc], strict word 0xfe92 ; 0x5183
    adc word [bx + 0x5bfe], byte 0xff ; 0x5189
@..api_idx_0010_2.l9:
    mov ax, 0x248                    ; 0x518e
    imul word [bp + 0x4]             ; 0x5191
    mov bx, ax                       ; 0x5194
    cmp byte [bx + 0x5d67], 0x12     ; 0x5196
    jae short @..api_idx_0010_2.l10  ; 0x519b
    inc byte [bx + 0x5d67]           ; 0x519d
@..api_idx_0010_2.l10:
    jmp near @..local.l170           ; 0x51a1
    mov ax, 5                        ; 0x51a4
    push ax                          ; 0x51a7
    call ds_dispatch_b7a9            ; 0x51a8
    pop cx                           ; 0x51ab
    inc ax                           ; 0x51ac
    inc ax                           ; 0x51ad
    mov word [bp - 0x0004], ax       ; 0x51ae
    push ax                          ; 0x51b1
    mov ax, 0x248                    ; 0x51b2
    imul word [bp + 0x4]             ; 0x51b5
    mov bx, ax                       ; 0x51b8
    pop ax                           ; 0x51ba
    add word [bx + 0x5c0e], ax       ; 0x51bb
    add word [bx + 0x5c0c], ax       ; 0x51bf
    jmp near @..local.l170           ; 0x51c3
    mov word [bp - 0x0004], 0        ; 0x51c6
@..api_idx_0010_2.l11:
    mov ax, 0x248                    ; 0x51cb
    imul word [bp + 0x4]             ; 0x51ce
    mov cx, word [bp - 0x0004]       ; 0x51d1
    shl cx, 1                        ; 0x51d4
    shl cx, 1                        ; 0x51d6
    add ax, cx                       ; 0x51d8
    mov bx, ax                       ; 0x51da
    mov ax, word [bx + 0x5c1e]       ; 0x51dc
    mov word [bx + 0x5c1c], ax       ; 0x51e0
    inc word [bp - 0x0004]           ; 0x51e4
    mov ax, word [bp - 0x0004]       ; 0x51e7
    cmp ax, strict word 6            ; 0x51ea
    jl short @..api_idx_0010_2.l11   ; 0x51ed
    jmp near @..local.l170           ; 0x51ef
    mov ax, 0x248                    ; 0x51f2
    imul word [bp + 0x4]             ; 0x51f5
    mov bx, ax                       ; 0x51f8
    cmp byte [bx + 0x5d68], 0x12     ; 0x51fa
    jae short @..api_idx_0010_2.l12  ; 0x51ff
    mov byte [bx + 0x5d68], 0x12     ; 0x5201
@..api_idx_0010_2.l12:
    cmp byte [bx + 0x5d69], 0x12     ; 0x5206
    jae short @..api_idx_0010_2.l13  ; 0x520b
    mov byte [bx + 0x5d69], 0x12     ; 0x520d
@..api_idx_0010_2.l13:
    mov ax, 5                        ; 0x5212
    push ax                          ; 0x5215
    mov ax, 0xa                      ; 0x5216
    push ax                          ; 0x5219
    mov ax, 0x21                     ; 0x521a
    push ax                          ; 0x521d
    push word [bp + 0x4]             ; 0x521e
    call api_idx_0002_7              ; 0x5221
    add sp, byte 8                   ; 0x5224
    jmp near @..local.l170           ; 0x5227
    mov word [bp - 0x0002], 0        ; 0x522a
    mov ax, 0x248                    ; 0x522f
    imul word [bp + 0x4]             ; 0x5232
    mov bx, ax                       ; 0x5235
    cmp byte [bx + 0x5d6b], 0        ; 0x5237
    jbe short @..local.l168          ; 0x523c
    cmp word [bp - 0x0002], byte 0   ; 0x523e
    jne short @..local.l168          ; 0x5242
    dec byte [bx + 0x5d6b]           ; 0x5244
    mov ax, 3                        ; 0x5248
    push ax                          ; 0x524b
    call ds_dispatch_b7a9            ; 0x524c
    pop cx                           ; 0x524f
    mov word [bp - 0x0002], ax       ; 0x5250
    jmp short loc_522f               ; 0x5253
@..local.l168:

    db 0xe9, 0x36, 0x01, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0x9c, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0x1e, 0x01, 0xb8, 0x05, 0x00, 0x50, 0xb8
    db 0x04, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x84, 0xfd, 0x83, 0xc4, 0x08
    db 0xe9, 0x06, 0x01, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x13, 0x00, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0x6c, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xee, 0x00, 0xb8, 0x03, 0x00, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xb8, 0x18, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x54, 0xfd, 0x83, 0xc4, 0x08
    db 0xe9, 0xd6, 0x00, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0x3c, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xbe, 0x00, 0xb8, 0x04, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x24, 0xfd, 0x83, 0xc4, 0x08
    db 0xe9, 0xa6, 0x00, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0x0c, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0x8e, 0x00, 0xb8, 0x05, 0x00, 0x50, 0xb8
    db 0x04, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf4, 0xfc, 0x83, 0xc4, 0x08
    db 0xeb, 0x77, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x15, 0x00, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0xdd, 0xfc, 0x83, 0xc4, 0x08, 0xeb, 0x60, 0x22, 0xa1, 0x39, 0xa1, 0x50, 0xa1, 0x95
    db 0xa1, 0xeb, 0xa1, 0x0d, 0xa2, 0x39, 0xa2, 0x71, 0xa2, 0x50, 0xa1, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5
    db 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5
    db 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5
    db 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0x9f, 0xa2, 0xb7, 0xa2, 0xcf, 0xa2, 0xe7, 0xa2, 0xff
    db 0xa2, 0x17, 0xa3, 0x2f, 0xa3, 0x47, 0xa3, 0x5e, 0xa3

@..local.l169:
    sub ax, strict word 9            ; 0x537e
    cmp ax, strict word 0x28         ; 0x5381
    jae short @..local.l170          ; 0x5384
    xchg bx, ax                      ; 0x5386
    shl bx, 1                        ; 0x5387
    jmp [cs:bx - 0x5c8b]             ; 0x5389
@..local.l170:
    push word [bp + 0x8]             ; 0x538e
    push word [bp + 0x6]             ; 0x5391
    push word [bp + 0x4]             ; 0x5394
    call ds_dispatch_ca27            ; 0x5397
    add sp, byte 6                   ; 0x539a
@..local.l171:
    ret                              ; 0x539d
api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x539e
    call ds_dispatch_f40b            ; 0x53a1
    mov word [bp - 0x0006], 0xffff   ; 0x53a4
    mov word [bp - 0x0008], 0xffff   ; 0x53a9
    mov ax, word [data_0e0e]         ; 0x53ae
    mov word [bp - 0x0004], ax       ; 0x53b1
    mov word [bp - 0x0002], 0        ; 0x53b4
    jmp short @..local.l176          ; 0x53b9
@..api_idx_0008_3.l1:
    mov bx, word [bp - 0x0004]       ; 0x53bb
    mov al, byte [bx]                ; 0x53be
    sub ah, ah                       ; 0x53c0
    cmp ax, 0xff                     ; 0x53c2
    jne short @..local.l172          ; 0x53c5
    mov ax, word [bp - 0x0002]       ; 0x53c7
    ret                              ; 0x53ca
@..local.l172:
    mov al, byte [bx + 0x1]          ; 0x53cb
    sub ah, ah                       ; 0x53ce
    test ax, data_0040               ; 0x53d0
    jne short @..local.l175          ; 0x53d3
    cmp word [bp - 0x0006], byte 0xff ; 0x53d5
    je short @..local.l173           ; 0x53d9
    mov ax, 7                        ; 0x53db
    push ax                          ; 0x53de
    call ds_dispatch_b7a9            ; 0x53df
    pop cx                           ; 0x53e2
    test ax, ax                      ; 0x53e3
    jne short @..local.l175          ; 0x53e5
@..local.l173:
    mov bx, word [bp - 0x0004]       ; 0x53e7
    mov al, byte [bx]                ; 0x53ea
    sub ah, ah                       ; 0x53ec
    cmp ax, word [data_830c]         ; 0x53ee
    jne short @..local.l174          ; 0x53f2
    mov ax, word [bp - 0x0002]       ; 0x53f4
    mov word [bp - 0x0008], ax       ; 0x53f7
    jmp short @..local.l175          ; 0x53fa
@..local.l174:
    mov ax, word [bp - 0x0002]       ; 0x53fc
    mov word [bp - 0x0006], ax       ; 0x53ff
@..local.l175:
    add word [bp - 0x0004], byte 8   ; 0x5402
    inc word [bp - 0x0002]           ; 0x5406
@..local.l176:
    mov ax, word [bp - 0x0002]       ; 0x5409
    cmp ax, word [data_5910]         ; 0x540c
    jl short @..api_idx_0008_3.l1    ; 0x5410
    cmp word [bp + 0x4], byte 0      ; 0x5412
    je short @..local.l178           ; 0x5416
    cmp word [bp - 0x0006], byte 0xff ; 0x5418
    jne short @..local.l177          ; 0x541c
    mov ax, word [bp - 0x0008]       ; 0x541e
    ret                              ; 0x5421
@..local.l177:
    mov ax, word [bp - 0x0006]       ; 0x5422
    ret                              ; 0x5425
@..local.l178:
    mov ax, 0xffff                   ; 0x5426
    ret                              ; 0x5429
api_idx_0004_9:
    mov ax, 0xfffc                   ; 0x542a
    call ds_dispatch_f40b            ; 0x542d
    mov ax, 0                        ; 0x5430
    push ax                          ; 0x5433
    call api_idx_0008_3              ; 0x5434
    pop cx                           ; 0x5437
    mov word [bp - 0x0002], ax       ; 0x5438
    cmp ax, strict word 0xffff       ; 0x543b
    jne short @..api_idx_0004_9.l4   ; 0x543e
    cmp word [data_5910], byte 0x7f  ; 0x5440
    jl short @..api_idx_0004_9.l3    ; 0x5445
    mov ax, 1                        ; 0x5447
    push ax                          ; 0x544a
    call api_idx_0008_3              ; 0x544b
    pop cx                           ; 0x544e
    mov word [bp - 0x0002], ax       ; 0x544f
    cmp ax, strict word 0xffff       ; 0x5452
    jne short @..api_idx_0004_9.l2   ; 0x5455
@..api_idx_0004_9.l1:
    mov ax, 0                        ; 0x5457
    push ax                          ; 0x545a
    call ds_dispatch_b7e0            ; 0x545b
    pop cx                           ; 0x545e
    jmp short @..api_idx_0004_9.l1   ; 0x545f
@..api_idx_0004_9.l2:
    jmp short @..api_idx_0004_9.l4   ; 0x5461
@..api_idx_0004_9.l3:
    mov ax, word [data_5910]         ; 0x5463
    mov word [bp - 0x0002], ax       ; 0x5466
    inc word [data_5910]             ; 0x5469
@..api_idx_0004_9.l4:
    mov cx, word [bp - 0x0002]       ; 0x546d
    shl cx, 1                        ; 0x5470
    shl cx, 1                        ; 0x5472
    shl cx, 1                        ; 0x5474
    mov ax, word [data_0e0e]         ; 0x5476
    add ax, cx                       ; 0x5479
    mov word [bp - 0x0004], ax       ; 0x547b
    mov al, byte [data_830c]         ; 0x547e
    mov bx, word [bp - 0x0004]       ; 0x5481
    mov byte [bx], al                ; 0x5484
    mov bx, word [bp + 0x4]          ; 0x5486
    mov al, byte [bx + 0x7]          ; 0x5489
    mov bx, word [bp - 0x0004]       ; 0x548c
    mov byte [bx + 0x1], al          ; 0x548f
    mov ax, word [data_8f3e]         ; 0x5492
    xchg al, ah                      ; 0x5495
    sub al, al                       ; 0x5497
    mov dx, word [data_8f42]         ; 0x5499
    mov cx, 4                        ; 0x549d
    shl dx, cl                       ; 0x54a0
    mov cx, dx                       ; 0x54a2
    add ax, cx                       ; 0x54a4
    add ax, word [data_8f40]         ; 0x54a6
    mov bx, word [bp - 0x0004]       ; 0x54aa
    mov word [bx + 0x2], ax          ; 0x54ad
    mov bx, word [bp + 0x4]          ; 0x54b0
    mov ax, word [bx]                ; 0x54b3
    mov bx, word [bp - 0x0004]       ; 0x54b5
    mov word [bx + 0x4], ax          ; 0x54b8
    mov bx, word [bp + 0x4]          ; 0x54bb
    mov al, byte [bx + 0x5]          ; 0x54be
    mov bx, word [bp - 0x0004]       ; 0x54c1
    mov byte [bx + 0x7], al          ; 0x54c4
    mov bx, word [bp + 0x4]          ; 0x54c7
    mov al, byte [bx + 0x6]          ; 0x54ca
    mov bx, word [bp - 0x0004]       ; 0x54cd
    mov byte [bx + 0x6], al          ; 0x54d0
    mov ax, 1                        ; 0x54d3
    push ax                          ; 0x54d6
    mov ax, word [data_8f3e]         ; 0x54d7
    mov cx, 6                        ; 0x54da
    shl ax, cl                       ; 0x54dd
    mov cx, word [data_8f40]         ; 0x54df
    shl cx, 1                        ; 0x54e3
    shl cx, 1                        ; 0x54e5
    shl cx, 1                        ; 0x54e7
    add ax, cx                       ; 0x54e9
    add ax, word [data_8f42]         ; 0x54eb
    push ax                          ; 0x54ef
    mov ax, 0x8bfe                   ; 0x54f0
    push ax                          ; 0x54f3
    call ds_dispatch_ec41            ; 0x54f4
    add sp, byte 6                   ; 0x54f7
    ret                              ; 0x54fa
api_idx_00c2:
    mov ax, 0xff3e                   ; 0x54fb
    call ds_dispatch_f40b            ; 0x54fe
    mov ax, 0x248                    ; 0x5501
    imul word [bp + 0x4]             ; 0x5504
    push ax                          ; 0x5507
    mov ax, 0x78                     ; 0x5508
    imul word [api_idx_0016]         ; 0x550b
    mov cx, ax                       ; 0x550f
    pop ax                           ; 0x5511
    add ax, cx                       ; 0x5512
    push ax                          ; 0x5514
    mov ax, 0xc                      ; 0x5515
    imul word [bp + 0x6]             ; 0x5518
    mov cx, ax                       ; 0x551b
    pop ax                           ; 0x551d
    add ax, cx                       ; 0x551e
    mov bx, ax                       ; 0x5520
    mov al, byte [bx + 0x5c3b]       ; 0x5522
    sub ah, ah                       ; 0x5526
    test ax, data_0002               ; 0x5528
    je short @..local.l179           ; 0x552b
    call api_idx_0056_2              ; 0x552d
    mov ax, 0x248                    ; 0x5530
    imul word [bp + 0x4]             ; 0x5533
    push ax                          ; 0x5536
    mov ax, 0x78                     ; 0x5537
    imul word [api_idx_0016]         ; 0x553a
    mov cx, ax                       ; 0x553e
    pop ax                           ; 0x5540
    add ax, cx                       ; 0x5541
    push ax                          ; 0x5543
    mov ax, 0xc                      ; 0x5544
    imul word [bp + 0x6]             ; 0x5547
    mov cx, ax                       ; 0x554a
    pop ax                           ; 0x554c
    add ax, cx                       ; 0x554d
    add ax, 0x5c34                   ; 0x554f
    push ax                          ; 0x5552
    push word [bp + 0x4]             ; 0x5553
    call api_idx_0048_2              ; 0x5556
    add sp, byte 4                   ; 0x5559
    mov word [bp - 0x0014], ax       ; 0x555c
    cmp word [bp - 0x0014], byte 0   ; 0x555f
    je short @..api_idx_00c2.l1      ; 0x5563
    push ax                          ; 0x5565
    push word [bp + 0x6]             ; 0x5566
    push word [api_idx_0016]         ; 0x5569
    push word [bp + 0x4]             ; 0x556d
    call api_idx_0010_2              ; 0x5570
    add sp, byte 8                   ; 0x5573
@..api_idx_00c2.l1:
    ret                              ; 0x5576
@..local.l179:
    mov ax, 0x248                    ; 0x5577
    imul word [bp + 0x4]             ; 0x557a
    push ax                          ; 0x557d
    mov ax, 0x78                     ; 0x557e
    imul word [api_idx_0016]         ; 0x5581
    mov cx, ax                       ; 0x5585
    pop ax                           ; 0x5587
    add ax, cx                       ; 0x5588
    push ax                          ; 0x558a
    mov ax, 0xc                      ; 0x558b
    imul word [bp + 0x6]             ; 0x558e
    mov cx, ax                       ; 0x5591
    pop ax                           ; 0x5593
    add ax, cx                       ; 0x5594
    mov bx, ax                       ; 0x5596
    mov al, byte [bx + 0x5c3b]       ; 0x5598
    sub ah, ah                       ; 0x559c
    and ax, strict word 0xfffe       ; 0x559e
    mov byte [bx + 0x5c3b], al       ; 0x55a1
    add bx, strict word 0x5c34       ; 0x55a5
    mov si, bx                       ; 0x55a9
    lea di, word [bp - 0x002c]       ; 0x55ab
    mov cx, ds                       ; 0x55ae
    mov es, cx                       ; 0x55b0
    mov cx, 6                        ; 0x55b2
    rep movsw                        ; 0x55b5
    mov ax, 0x16                     ; 0x55b7
    imul word [bp + 0x6]             ; 0x55ba
    add ax, 0x9436                   ; 0x55bd
    push ax                          ; 0x55c0
    lea ax, word [bp - 0x004e]       ; 0x55c1
    push ax                          ; 0x55c4
    call ds_dispatch_f364            ; 0x55c5
    add sp, byte 4                   ; 0x55c8
    mov ax, word [bp + 0x6]          ; 0x55cb
    shl ax, 1                        ; 0x55ce
    mov bx, ax                       ; 0x55d0
    mov ax, word [bx - 0x6a14]       ; 0x55d2
    mov word [bp - 0x0066], ax       ; 0x55d6
    mov ax, word [bx - 0x6a00]       ; 0x55d9
    mov word [bp - 0x006a], ax       ; 0x55dd
    push word [bp + 0x6]             ; 0x55e0
    push word [api_idx_0016]         ; 0x55e3
    push word [bp + 0x4]             ; 0x55e7
    call ds_dispatch_c9e8            ; 0x55ea
    add sp, byte 6                   ; 0x55ed
    mov word [data_9614], 1          ; 0x55f0
    push word [bp + 0x4]             ; 0x55f6
    call api_idx_004c                ; 0x55f9
    pop cx                           ; 0x55fc
    mov ax, 0                        ; 0x55fd
    push ax                          ; 0x5600
    push ax                          ; 0x5601
    push word [bp - 0x0066]          ; 0x5602
    lea ax, word [bp - 0x004e]       ; 0x5605
    push ax                          ; 0x5608
    lea ax, word [bp - 0x002c]       ; 0x5609
    push ax                          ; 0x560c
    push word [bp + 0x6]             ; 0x560d
    push word [bp + 0x4]             ; 0x5610
    call api_idx_0012_4              ; 0x5613
    add sp, byte 0x0e                ; 0x5616
    mov word [bp - 0x000a], 4        ; 0x5619
    mov word [bp - 0x000c], 0xbc     ; 0x561e
    mov word [bp - 0x000e], 7        ; 0x5623
    mov ax, 6                        ; 0x5628
    imul word [bp - 0x000e]          ; 0x562b
    add ax, strict word 4            ; 0x562e
    mov word [bp - 0x0010], ax       ; 0x5631
    mov word [bp - 0x0012], 4        ; 0x5634
    mov ax, word [bp - 0x000c]       ; 0x5639
    add ax, strict word 0xa          ; 0x563c
    push ax                          ; 0x563f
    mov ax, word [bp - 0x0010]       ; 0x5640
    imul word [bp - 0x0012]          ; 0x5643
    add ax, word [bp - 0x000a]       ; 0x5646
    inc ax                           ; 0x5649
    push ax                          ; 0x564a
    mov ax, word [bp - 0x000c]       ; 0x564b
    dec ax                           ; 0x564e
    push ax                          ; 0x564f
    mov ax, word [bp - 0x000a]       ; 0x5650
    dec ax                           ; 0x5653
    push ax                          ; 0x5654
    call ds_dispatch_e928            ; 0x5655
    add sp, byte 8                   ; 0x5658
    mov word [bp - 0x001e], dx       ; 0x565b
    mov word [bp - 0x0020], ax       ; 0x565e
    mov word [bp - 0x001a], 1        ; 0x5661
    mov word [bp - 0x001c], 0        ; 0x5666
@..local.l180:
    mov word [bp - 0x0002], 0        ; 0x566b
@..local.l181:
    mov ax, 0                        ; 0x5670
    push ax                          ; 0x5673
    mov ax, word [bp - 0x0002]       ; 0x5674
    inc ax                           ; 0x5677
    mov cx, 0xa                      ; 0x5678
    cwd                              ; 0x567b
    idiv cx                          ; 0x567c
    mov ax, dx                       ; 0x567e
    add ax, strict word 0x30         ; 0x5680
    cbw                              ; 0x5683
    push ax                          ; 0x5684
    mov ax, word [bp - 0x0002]       ; 0x5685
    mov cx, 5                        ; 0x5688
    cwd                              ; 0x568b
    idiv cx                          ; 0x568c
    mov ax, dx                       ; 0x568e
    mov cx, 0xe                      ; 0x5690
    imul cx                          ; 0x5693
    add ax, strict word 0x7d         ; 0x5695
    push ax                          ; 0x5698
    mov ax, word [bp - 0x0002]       ; 0x5699
    mov cx, 5                        ; 0x569c
    cwd                              ; 0x569f
    idiv cx                          ; 0x56a0
    mov cx, 0x4f                     ; 0x56a2
    imul cx                          ; 0x56a5
    add ax, strict word 0x4e         ; 0x56a7
    push ax                          ; 0x56aa
    mov ax, word [bp - 0x0002]       ; 0x56ab
    mov cx, 5                        ; 0x56ae
    cwd                              ; 0x56b1
    idiv cx                          ; 0x56b2
    mov ax, dx                       ; 0x56b4
    mov cx, 0xe                      ; 0x56b6
    imul cx                          ; 0x56b9
    add ax, strict word 0x71         ; 0x56bb
    push ax                          ; 0x56be
    mov ax, word [bp - 0x0002]       ; 0x56bf
    mov cx, 5                        ; 0x56c2
    cwd                              ; 0x56c5
    idiv cx                          ; 0x56c6
    mov cx, 0x4f                     ; 0x56c8
    imul cx                          ; 0x56cb
    inc ax                           ; 0x56cd
    inc ax                           ; 0x56ce
    push ax                          ; 0x56cf
    push word [bp - 0x0002]          ; 0x56d0
    call ds_dispatch_baa6            ; 0x56d3
    add sp, byte 0x0e                ; 0x56d6
    inc word [bp - 0x0002]           ; 0x56d9
    mov ax, word [bp - 0x0002]       ; 0x56dc
    cmp ax, strict word 0xa          ; 0x56df
    jl short @..local.l181           ; 0x56e2
    mov ax, 0                        ; 0x56e4
    push ax                          ; 0x56e7
    mov ax, 0xb                      ; 0x56e8
    push ax                          ; 0x56eb
    mov ax, 0x4a                     ; 0x56ec
    push ax                          ; 0x56ef
    mov ax, 0x26                     ; 0x56f0
    push ax                          ; 0x56f3
    mov ax, 0x11                     ; 0x56f4
    push ax                          ; 0x56f7
    mov ax, 0xc                      ; 0x56f8
    push ax                          ; 0x56fb
    mov ax, 0xa                      ; 0x56fc
    push ax                          ; 0x56ff
    call ds_dispatch_baa6            ; 0x5700
    add sp, byte 0x0e                ; 0x5703
    mov ax, 0                        ; 0x5706
    push ax                          ; 0x5709
    mov ax, 9                        ; 0x570a
    push ax                          ; 0x570d
    mov ax, 0x4a                     ; 0x570e
    push ax                          ; 0x5711
    mov ax, 0x43                     ; 0x5712
    push ax                          ; 0x5715
    mov ax, 0x11                     ; 0x5716
    push ax                          ; 0x5719
    mov ax, api_idx_0002             ; 0x571a
    push ax                          ; 0x571d
    mov ax, 0xb                      ; 0x571e
    push ax                          ; 0x5721
    call ds_dispatch_baa6            ; 0x5722
    add sp, byte 0x0e                ; 0x5725
    mov ax, 0                        ; 0x5728
    push ax                          ; 0x572b
    mov ax, data_0042                ; 0x572c
    push ax                          ; 0x572f
    mov ax, 0x6e                     ; 0x5730
    push ax                          ; 0x5733
    mov ax, 0xf2                     ; 0x5734
    push ax                          ; 0x5737
    mov ax, 0x53                     ; 0x5738
    push ax                          ; 0x573b
    mov ax, 0xdb                     ; 0x573c
    push ax                          ; 0x573f
    mov ax, 0xc                      ; 0x5740
    push ax                          ; 0x5743
    call ds_dispatch_baa6            ; 0x5744
    add sp, byte 0x0e                ; 0x5747
    mov ax, 0                        ; 0x574a
    push ax                          ; 0x574d
    mov ax, 0x45                     ; 0x574e
    push ax                          ; 0x5751
    mov ax, 0x7e                     ; 0x5752
    push ax                          ; 0x5755
    mov ax, 0x13a                    ; 0x5756
    push ax                          ; 0x5759
    mov ax, 0x29                     ; 0x575a
    push ax                          ; 0x575d
    mov ax, 0xf8                     ; 0x575e
    push ax                          ; 0x5761
    mov ax, 0xd                      ; 0x5762
    push ax                          ; 0x5765
    call ds_dispatch_baa6            ; 0x5766
    add sp, byte 0x0e                ; 0x5769
    mov ax, word [bp - 0x006a]       ; 0x576c
    mov word [bp - 0x0016], ax       ; 0x576f
    mov word [bp - 0x0002], 0        ; 0x5772
@..local.l182:
    mov ax, word [bp - 0x0002]       ; 0x5777
    shl ax, 1                        ; 0x577a
    mov bx, ax                       ; 0x577c
    add bx, bp                       ; 0x577e
    mov word [bx - 0x0098], 1        ; 0x5780
    inc word [bp - 0x0002]           ; 0x5786
    mov ax, word [bp - 0x0002]       ; 0x5789
    cmp ax, strict word 4            ; 0x578c
    jl short @..local.l182           ; 0x578f
    cmp word [data_905e], byte 4     ; 0x5791
    je short @..local.l183           ; 0x5796
    cmp word [data_905e], byte 0x0d  ; 0x5798
    jne short @..local.l184          ; 0x579d
@..local.l183:
    mov word [bp - 0x0098], 0        ; 0x579f
    mov word [bp - 0x0092], 0        ; 0x57a5
@..local.l184:
    push word [bp + 0x4]             ; 0x57ab
    call ds_dispatch_ca85            ; 0x57ae
    pop cx                           ; 0x57b1
    test ax, ax                      ; 0x57b2
    jne short @..local.l185          ; 0x57b4
    mov word [bp - 0x0098], 0        ; 0x57b6
    mov word [bp - 0x0096], 0        ; 0x57bc
@..local.l185:
    mov word [bp - 0x0090], 0xffff   ; 0x57c2
    mov ax, 0                        ; 0x57c8
    push ax                          ; 0x57cb
    push word [bp - 0x001e]          ; 0x57cc
    push word [bp - 0x0020]          ; 0x57cf
    call ds_dispatch_e94f            ; 0x57d2
    add sp, byte 6                   ; 0x57d5
    mov word [bp - 0x0070], 0        ; 0x57d8
    mov word [bp - 0x0002], 0        ; 0x57dd
@..local.l186:
    mov ax, word [bp - 0x0002]       ; 0x57e2
    shl ax, 1                        ; 0x57e5
    mov bx, ax                       ; 0x57e7
    add bx, bp                       ; 0x57e9
    cmp word [bx - 0x0098], byte 0xff ; 0x57eb
    jne short @..local.l187          ; 0x57f0
    jmp near @..local.l191           ; 0x57f2
@..local.l187:
    cmp word [bx - 0x0098], byte 1   ; 0x57f5
    je short @..local.l188           ; 0x57fa
    jmp near @..local.l190           ; 0x57fc
@..local.l188:
    mov ax, word [bp - 0x0002]       ; 0x57ff
    cmp word [bp - 0x0002], byte 0   ; 0x5802
    jne short @..local.l189          ; 0x5806
    mov ax, word [bp - 0x0016]       ; 0x5808
@..local.l189:
    mov word [bp - 0x0018], ax       ; 0x580b
    mov ax, 0                        ; 0x580e
    push ax                          ; 0x5811
    mov ax, word [bp - 0x000c]       ; 0x5812
    add ax, strict word 8            ; 0x5815
    push ax                          ; 0x5818
    mov ax, word [bp - 0x0010]       ; 0x5819
    imul word [bp - 0x0070]          ; 0x581c
    push ax                          ; 0x581f
    mov ax, 6                        ; 0x5820
    imul word [bp - 0x000e]          ; 0x5823
    mov cx, ax                       ; 0x5826
    pop ax                           ; 0x5828
    add ax, cx                       ; 0x5829
    add ax, word [bp - 0x000a]       ; 0x582b
    push ax                          ; 0x582e
    push word [bp - 0x000c]          ; 0x582f
    mov ax, word [bp - 0x0010]       ; 0x5832
    imul word [bp - 0x0070]          ; 0x5835
    add ax, word [bp - 0x000a]       ; 0x5838
    push ax                          ; 0x583b
    call ds_dispatch_bce3            ; 0x583c
    add sp, byte 0x0a                ; 0x583f
    mov ax, 0xc0                     ; 0x5842
    push ax                          ; 0x5845
    mov ax, 1                        ; 0x5846
    push ax                          ; 0x5849
    call ds_dispatch_e823            ; 0x584a
    add sp, byte 4                   ; 0x584d
    mov ax, word [bp - 0x000c]       ; 0x5850
    inc ax                           ; 0x5853
    inc ax                           ; 0x5854
    push ax                          ; 0x5855
    mov ax, 0xa                      ; 0x5856
    imul word [bp - 0x0018]          ; 0x5859
    add ax, 0x9616                   ; 0x585c
    push ax                          ; 0x585f
    call ds_dispatch_fa90            ; 0x5860
    pop cx                           ; 0x5863
    mov cx, ax                       ; 0x5864
    mov ax, word [bp - 0x000e]       ; 0x5866
    sub ax, cx                       ; 0x5869
    mov cx, 6                        ; 0x586b
    imul cx                          ; 0x586e
    mov cx, data_0002                ; 0x5870
    cwd                              ; 0x5873
    idiv cx                          ; 0x5874
    push ax                          ; 0x5876
    mov ax, word [bp - 0x0010]       ; 0x5877
    imul word [bp - 0x0070]          ; 0x587a
    mov cx, ax                       ; 0x587d
    pop ax                           ; 0x587f
    add ax, cx                       ; 0x5880
    add ax, word [bp - 0x000a]       ; 0x5882
    inc ax                           ; 0x5885
    push ax                          ; 0x5886
    call ds_dispatch_e809            ; 0x5887
    add sp, byte 4                   ; 0x588a
    mov ax, 0                        ; 0x588d
    push ax                          ; 0x5890
    mov ax, 0xa                      ; 0x5891
    imul word [bp - 0x0018]          ; 0x5894
    add ax, 0x9616                   ; 0x5897
    push ax                          ; 0x589a
    call ds_dispatch_e84e            ; 0x589b
    add sp, byte 4                   ; 0x589e
    mov ax, 0                        ; 0x58a1
    push ax                          ; 0x58a4
    push ax                          ; 0x58a5
    mov ax, word [bp - 0x000c]       ; 0x58a6
    add ax, strict word 8            ; 0x58a9
    push ax                          ; 0x58ac
    mov ax, word [bp - 0x0010]       ; 0x58ad
    imul word [bp - 0x0070]          ; 0x58b0
    push ax                          ; 0x58b3
    mov ax, 6                        ; 0x58b4
    imul word [bp - 0x000e]          ; 0x58b7
    mov cx, ax                       ; 0x58ba
    pop ax                           ; 0x58bc
    add ax, cx                       ; 0x58bd
    add ax, word [bp - 0x000a]       ; 0x58bf
    push ax                          ; 0x58c2
    push word [bp - 0x000c]          ; 0x58c3
    mov ax, word [bp - 0x0010]       ; 0x58c6
    imul word [bp - 0x0070]          ; 0x58c9
    add ax, word [bp - 0x000a]       ; 0x58cc
    push ax                          ; 0x58cf
    mov ax, word [bp - 0x0070]       ; 0x58d0
    add ax, strict word 0xe          ; 0x58d3
    push ax                          ; 0x58d6
    call ds_dispatch_baa6            ; 0x58d7
    add sp, byte 0x0e                ; 0x58da
    mov ax, word [bp - 0x0002]       ; 0x58dd
    mov cx, word [bp - 0x0070]       ; 0x58e0
    shl cx, 1                        ; 0x58e3
    mov bx, cx                       ; 0x58e5
    add bx, bp                       ; 0x58e7
    mov word [bx - 0x0084], ax       ; 0x58e9
    inc word [bp - 0x0070]           ; 0x58ed
@..local.l190:
    inc word [bp - 0x0002]           ; 0x58f0
    jmp near @..local.l186           ; 0x58f3
@..local.l191:
    mov ax, 0                        ; 0x58f6
    push ax                          ; 0x58f9
    push ax                          ; 0x58fa
    push ax                          ; 0x58fb
    push ax                          ; 0x58fc
    push ax                          ; 0x58fd
    mov ax, 0xffff                   ; 0x58fe
    push ax                          ; 0x5901
    mov ax, word [bp - 0x0070]       ; 0x5902
    add ax, strict word 0xe          ; 0x5905
    push ax                          ; 0x5908
    call ds_dispatch_baa6            ; 0x5909
    add sp, byte 0x0e                ; 0x590c
    mov ax, word [bp - 0x000c]       ; 0x590f
    add ax, strict word 0xa          ; 0x5912
    push ax                          ; 0x5915
    mov ax, word [bp - 0x0010]       ; 0x5916
    imul word [bp - 0x0012]          ; 0x5919
    add ax, word [bp - 0x000a]       ; 0x591c
    inc ax                           ; 0x591f
    push ax                          ; 0x5920
    mov ax, word [bp - 0x000c]       ; 0x5921
    dec ax                           ; 0x5924
    push ax                          ; 0x5925
    mov ax, word [bp - 0x000a]       ; 0x5926
    dec ax                           ; 0x5929
    push ax                          ; 0x592a
    call ds_dispatch_e8da            ; 0x592b
    add sp, byte 8                   ; 0x592e
    mov word [bp - 0x001a], 1        ; 0x5931
    mov word [bp - 0x001c], 0        ; 0x5936
@..local.l192:
    cmp word [data_0e32], byte 0     ; 0x593b
    je short @..local.l194           ; 0x5940
@..local.l193:
    mov ax, 0x59fe                   ; 0x5942
    push ax                          ; 0x5945
    call ds_dispatch_b90d            ; 0x5946
    pop cx                           ; 0x5949
    dec ax                           ; 0x594a
    mov word [bp - 0x0004], ax       ; 0x594b
    cmp word [data_5b3e], byte 0     ; 0x594e
    je short @..local.l193           ; 0x5953
    jmp near @..local.l217           ; 0x5955
@..local.l194:
    cmp word [bp - 0x001c], byte 0   ; 0x5958
    je short @..local.l195           ; 0x595c
    jmp near @..local.l211           ; 0x595e
@..local.l195:
    mov word [bp - 0x0004], 0xffff   ; 0x5961
    mov word [bp - 0x0002], 0        ; 0x5966
@..local.l196:
    mov ax, 0x16                     ; 0x596b
    push ax                          ; 0x596e
    mov ax, word [bp - 0x000c]       ; 0x596f
    add ax, strict word 8            ; 0x5972
    push ax                          ; 0x5975
    mov ax, word [bp - 0x0010]       ; 0x5976
    imul word [bp - 0x0002]          ; 0x5979
    push ax                          ; 0x597c
    mov ax, 6                        ; 0x597d
    imul word [bp - 0x000e]          ; 0x5980
    mov cx, ax                       ; 0x5983
    pop ax                           ; 0x5985
    add ax, cx                       ; 0x5986
    add ax, word [bp - 0x000a]       ; 0x5988
    push ax                          ; 0x598b
    push word [bp - 0x000c]          ; 0x598c
    mov ax, word [bp - 0x0010]       ; 0x598f
    imul word [bp - 0x0002]          ; 0x5992
    add ax, word [bp - 0x000a]       ; 0x5995
    push ax                          ; 0x5998
    call loc_1c25                    ; 0x5999
    add sp, byte 0x0a                ; 0x599c
    mov ax, word [bp - 0x000c]       ; 0x599f
    add ax, strict word 0xa          ; 0x59a2
    push ax                          ; 0x59a5
    mov ax, word [bp - 0x0010]       ; 0x59a6
    imul word [bp - 0x0012]          ; 0x59a9
    add ax, word [bp - 0x000a]       ; 0x59ac
    inc ax                           ; 0x59af
    push ax                          ; 0x59b0
    mov ax, word [bp - 0x000c]       ; 0x59b1
    dec ax                           ; 0x59b4
    push ax                          ; 0x59b5
    mov ax, word [bp - 0x000a]       ; 0x59b6
    dec ax                           ; 0x59b9
    push ax                          ; 0x59ba
    call ds_dispatch_e8da            ; 0x59bb
    add sp, byte 8                   ; 0x59be
    mov ax, 0                        ; 0x59c1
    push ax                          ; 0x59c4
    mov ax, word [bp - 0x000c]       ; 0x59c5
    add ax, strict word 8            ; 0x59c8
    push ax                          ; 0x59cb
    mov ax, word [bp - 0x0010]       ; 0x59cc
    imul word [bp - 0x0002]          ; 0x59cf
    push ax                          ; 0x59d2
    mov ax, 6                        ; 0x59d3
    imul word [bp - 0x000e]          ; 0x59d6
    mov cx, ax                       ; 0x59d9
    pop ax                           ; 0x59db
    add ax, cx                       ; 0x59dc
    add ax, word [bp - 0x000a]       ; 0x59de
    push ax                          ; 0x59e1
    push word [bp - 0x000c]          ; 0x59e2
    mov ax, word [bp - 0x0010]       ; 0x59e5
    imul word [bp - 0x0002]          ; 0x59e8
    add ax, word [bp - 0x000a]       ; 0x59eb
    push ax                          ; 0x59ee
    call loc_1c25                    ; 0x59ef
    add sp, byte 0x0a                ; 0x59f2
@..local.l197:
    mov ax, 1                        ; 0x59f5
    push ax                          ; 0x59f8
    call ds_dispatch_ea50            ; 0x59f9
    pop cx                           ; 0x59fc
    test ax, ax                      ; 0x59fd
    jne short @..local.l198          ; 0x59ff
    jmp short @..local.l197          ; 0x5a01
@..local.l198:
    mov ax, 1                        ; 0x5a03
    push ax                          ; 0x5a06
    call ds_dispatch_eb32            ; 0x5a07
    pop cx                           ; 0x5a0a
    sub ah, ah                       ; 0x5a0b
    mov word [bp - 0x009a], ax       ; 0x5a0d
    cmp ax, strict word 0x30         ; 0x5a11
    jl short @..local.l200           ; 0x5a14
    cmp ax, strict word 0x39         ; 0x5a16
    jg short @..local.l200           ; 0x5a19
    add ax, strict word 0xffcf       ; 0x5a1b
    mov word [bp - 0x0004], ax       ; 0x5a1e
    cmp ax, strict word 0            ; 0x5a21
    jge short @..local.l199          ; 0x5a24
    add word [bp - 0x0004], byte 0x0a ; 0x5a26
@..local.l199:
    jmp short @..local.l209          ; 0x5a2a
@..local.l200:
    mov ax, word [bp - 0x009a]       ; 0x5a2c
    jmp short @..local.l208          ; 0x5a30
@..local.l201:
    mov word [bp - 0x0004], 0xa      ; 0x5a32
    jmp short @..local.l209          ; 0x5a37
@..local.l202:
    mov word [bp - 0x0004], 0xb      ; 0x5a39
    jmp short @..local.l209          ; 0x5a3e
@..local.l203:
    mov word [bp - 0x0004], 0xc      ; 0x5a40
    jmp short @..local.l209          ; 0x5a45
@..local.l204:
    mov word [bp - 0x0004], 0xd      ; 0x5a47
    jmp short @..local.l209          ; 0x5a4c
@..local.l205:
    mov ax, word [bp - 0x0002]       ; 0x5a4e
    add ax, word [bp - 0x0070]       ; 0x5a51
    dec ax                           ; 0x5a54
    cwd                              ; 0x5a55
    idiv word [bp - 0x0070]          ; 0x5a56
    mov word [bp - 0x0002], dx       ; 0x5a59
    jmp short @..local.l209          ; 0x5a5c
@..local.l206:
    mov ax, word [bp - 0x0002]       ; 0x5a5e
    inc ax                           ; 0x5a61
    cwd                              ; 0x5a62
    idiv word [bp - 0x0070]          ; 0x5a63
    mov word [bp - 0x0002], dx       ; 0x5a66
    jmp short @..local.l209          ; 0x5a69
@..local.l207:
    mov ax, word [bp - 0x0002]       ; 0x5a6b
    add ax, strict word 0xe          ; 0x5a6e
    mov word [bp - 0x0004], ax       ; 0x5a71
    jmp short @..local.l209          ; 0x5a74
@..local.l208:
    cmp ax, strict word 8            ; 0x5a76
    je short @..local.l205           ; 0x5a79
    cmp ax, strict word 9            ; 0x5a7b
    je short @..local.l202           ; 0x5a7e
    cmp ax, strict word 0xa          ; 0x5a80
    je short @..local.l206           ; 0x5a83
    cmp ax, strict word 0xb          ; 0x5a85
    je short @..local.l201           ; 0x5a88
    cmp ax, strict word 0xd          ; 0x5a8a
    je short @..local.l207           ; 0x5a8d
    cmp ax, strict word 0x42         ; 0x5a8f
    je short @..local.l203           ; 0x5a92
    cmp ax, strict word 0x45         ; 0x5a94
    je short @..local.l204           ; 0x5a97
@..local.l209:
    cmp word [bp - 0x0004], byte 0xff ; 0x5a99
    jne short @..local.l210          ; 0x5a9d
    jmp near @..local.l196           ; 0x5a9f
@..local.l210:
    mov ax, word [bp - 0x000c]       ; 0x5aa2
    add ax, strict word 0xa          ; 0x5aa5
    push ax                          ; 0x5aa8
    mov ax, word [bp - 0x0010]       ; 0x5aa9
    imul word [bp - 0x0012]          ; 0x5aac
    add ax, word [bp - 0x000a]       ; 0x5aaf
    inc ax                           ; 0x5ab2
    push ax                          ; 0x5ab3
    mov ax, word [bp - 0x000c]       ; 0x5ab4
    dec ax                           ; 0x5ab7
    push ax                          ; 0x5ab8
    mov ax, word [bp - 0x000a]       ; 0x5ab9
    dec ax                           ; 0x5abc
    push ax                          ; 0x5abd
    call ds_dispatch_e8da            ; 0x5abe
    add sp, byte 8                   ; 0x5ac1
    jmp short @..local.l217          ; 0x5ac4
@..local.l211:
    mov word [bp - 0x0004], 0xffff   ; 0x5ac6
@..local.l212:
    mov ax, 1                        ; 0x5acb
    push ax                          ; 0x5ace
    call ds_dispatch_ea50            ; 0x5acf
    pop cx                           ; 0x5ad2
    test ax, ax                      ; 0x5ad3
    jne short @..local.l213          ; 0x5ad5
    jmp short @..local.l212          ; 0x5ad7
@..local.l213:
    mov ax, 1                        ; 0x5ad9
    push ax                          ; 0x5adc
    call ds_dispatch_eb32            ; 0x5add
    pop cx                           ; 0x5ae0
    sub ah, ah                       ; 0x5ae1
    mov word [bp - 0x009a], ax       ; 0x5ae3
    cmp ax, strict word 0x30         ; 0x5ae7
    jl short @..local.l214           ; 0x5aea
    cmp ax, strict word 0x39         ; 0x5aec
    jg short @..local.l214           ; 0x5aef
    add ax, strict word 0xffcf       ; 0x5af1
    mov word [bp - 0x0004], ax       ; 0x5af4
    cmp ax, strict word 0            ; 0x5af7
    jge short @..local.l214          ; 0x5afa
    add word [bp - 0x0004], byte 0x0a ; 0x5afc
@..local.l214:
    cmp word [bp - 0x009a], byte 0x0d ; 0x5b00
    je short @..local.l215           ; 0x5b05
    cmp word [bp - 0x009a], byte 0x1b ; 0x5b07
    jne short @..local.l216          ; 0x5b0c
@..local.l215:
    mov word [bp - 0x001c], 0        ; 0x5b0e
@..local.l216:
    cmp word [bp - 0x009a], byte 0x0d ; 0x5b13
    je short @..local.l217           ; 0x5b18
    cmp word [bp - 0x009a], byte 0x1b ; 0x5b1a
    je short @..local.l217           ; 0x5b1f
    cmp word [bp - 0x0004], byte 0xff ; 0x5b21
    je short @..local.l212           ; 0x5b25
@..local.l217:
    cmp word [bp - 0x0004], byte 0   ; 0x5b27
    jge short @..local.l218          ; 0x5b2b
    jmp near @..local.l226           ; 0x5b2d
@..local.l218:
    cmp word [bp - 0x0004], byte 0x0a ; 0x5b30
    jl short @..local.l219           ; 0x5b34
    jmp near @..local.l226           ; 0x5b36
@..local.l219:
    mov ax, 0x248                    ; 0x5b39
    imul word [bp + 0x4]             ; 0x5b3c
    push ax                          ; 0x5b3f
    mov ax, 0x78                     ; 0x5b40
    imul word [api_idx_0016]         ; 0x5b43
    mov cx, ax                       ; 0x5b47
    pop ax                           ; 0x5b49
    add ax, cx                       ; 0x5b4a
    push ax                          ; 0x5b4c
    mov ax, 0xc                      ; 0x5b4d
    imul word [bp - 0x0004]          ; 0x5b50
    mov cx, ax                       ; 0x5b53
    pop ax                           ; 0x5b55
    add ax, cx                       ; 0x5b56
    mov bx, ax                       ; 0x5b58
    cmp word [bx + 0x5c34], byte 0   ; 0x5b5a
    jle short @..local.l220          ; 0x5b5f
    mov al, byte [bx + 0x5c3b]       ; 0x5b61
    sub ah, ah                       ; 0x5b65
    test ax, data_0002               ; 0x5b67
    je short @..local.l220           ; 0x5b6a
    call api_idx_0056_2              ; 0x5b6c
    mov word [bp - 0x001a], data_0002 ; 0x5b6f
    jmp near @..local.l225           ; 0x5b74
@..local.l220:
    mov ax, word [bp - 0x0004]       ; 0x5b77
    mov word [bp + 0x6], ax          ; 0x5b7a
    mov ax, 0x248                    ; 0x5b7d
    imul word [bp + 0x4]             ; 0x5b80
    push ax                          ; 0x5b83
    mov ax, 0x78                     ; 0x5b84
    imul word [api_idx_0016]         ; 0x5b87
    mov cx, ax                       ; 0x5b8b
    pop ax                           ; 0x5b8d
    add ax, cx                       ; 0x5b8e
    push ax                          ; 0x5b90
    mov ax, 0xc                      ; 0x5b91
    imul word [bp + 0x6]             ; 0x5b94
    mov cx, ax                       ; 0x5b97
    pop ax                           ; 0x5b99
    add ax, cx                       ; 0x5b9a
    mov bx, ax                       ; 0x5b9c
    mov al, byte [bx + 0x5c3b]       ; 0x5b9e
    sub ah, ah                       ; 0x5ba2
    and ax, strict word 0xfffe       ; 0x5ba4
    mov byte [bx + 0x5c3b], al       ; 0x5ba7
    add bx, strict word 0x5c34       ; 0x5bab
    mov si, bx                       ; 0x5baf
    lea di, word [bp - 0x0038]       ; 0x5bb1
    mov cx, ds                       ; 0x5bb4
    mov es, cx                       ; 0x5bb6
    mov cx, 6                        ; 0x5bb8
    rep movsw                        ; 0x5bbb
    mov ax, 0x16                     ; 0x5bbd
    imul word [bp + 0x6]             ; 0x5bc0
    add ax, 0x9436                   ; 0x5bc3
    push ax                          ; 0x5bc6
    lea ax, word [bp - 0x0064]       ; 0x5bc7
    push ax                          ; 0x5bca
    call ds_dispatch_f364            ; 0x5bcb
    add sp, byte 4                   ; 0x5bce
    mov ax, word [bp + 0x6]          ; 0x5bd1
    shl ax, 1                        ; 0x5bd4
    mov bx, ax                       ; 0x5bd6
    mov ax, word [bx - 0x6a14]       ; 0x5bd8
    mov word [bp - 0x0068], ax       ; 0x5bdc
    mov ax, word [bx - 0x6a00]       ; 0x5bdf
    mov word [bp - 0x006c], ax       ; 0x5be3
    push word [bp + 0x6]             ; 0x5be6
    push word [api_idx_0016]         ; 0x5be9
    push word [bp + 0x4]             ; 0x5bed
    call ds_dispatch_c9e8            ; 0x5bf0
    add sp, byte 6                   ; 0x5bf3
    cmp word [bp - 0x001c], byte 0   ; 0x5bf6
    je short @..local.l223           ; 0x5bfa
    cmp word [bp - 0x0038], byte 0   ; 0x5bfc
    jle short @..local.l221          ; 0x5c00
    lea ax, word [bp - 0x0064]       ; 0x5c02
    push ax                          ; 0x5c05
    lea ax, word [bp - 0x004e]       ; 0x5c06
    push ax                          ; 0x5c09
    lea ax, word [bp - 0x0038]       ; 0x5c0a
    push ax                          ; 0x5c0d
    lea ax, word [bp - 0x002c]       ; 0x5c0e
    push ax                          ; 0x5c11
    call api_idx_0002_5              ; 0x5c12
    add sp, byte 8                   ; 0x5c15
    jmp short @..local.l222          ; 0x5c18
@..local.l221:
    lea ax, word [bp - 0x0064]       ; 0x5c1a
    push ax                          ; 0x5c1d
    lea ax, word [bp - 0x004e]       ; 0x5c1e
    push ax                          ; 0x5c21
    lea ax, word [bp - 0x0038]       ; 0x5c22
    push ax                          ; 0x5c25
    lea ax, word [bp - 0x002c]       ; 0x5c26
    push ax                          ; 0x5c29
    call api_idx_000e_2              ; 0x5c2a
    add sp, byte 8                   ; 0x5c2d
    mov ax, word [bp - 0x0066]       ; 0x5c30
    mov word [bp - 0x0068], ax       ; 0x5c33
    mov ax, word [bp - 0x006a]       ; 0x5c36
    mov word [bp - 0x006c], ax       ; 0x5c39
@..local.l222:
    mov word [bp - 0x001c], 0        ; 0x5c3c
@..local.l223:
    lea si, word [bp - 0x002c]       ; 0x5c41
    mov ax, 0x248                    ; 0x5c44
    imul word [bp + 0x4]             ; 0x5c47
    push ax                          ; 0x5c4a
    mov ax, 0x78                     ; 0x5c4b
    imul word [api_idx_0016]         ; 0x5c4e
    mov cx, ax                       ; 0x5c52
    pop ax                           ; 0x5c54
    add ax, cx                       ; 0x5c55
    push ax                          ; 0x5c57
    mov ax, 0xc                      ; 0x5c58
    imul word [bp + 0x6]             ; 0x5c5b
    mov cx, ax                       ; 0x5c5e
    pop ax                           ; 0x5c60
    add ax, cx                       ; 0x5c61
    mov di, ax                       ; 0x5c63
    add ax, 0x5c34                   ; 0x5c65
    mov di, ax                       ; 0x5c68
    mov cx, ds                       ; 0x5c6a
    mov es, cx                       ; 0x5c6c
    mov cx, 6                        ; 0x5c6e
    rep movsw                        ; 0x5c71
    lea ax, word [bp - 0x004e]       ; 0x5c73
    push ax                          ; 0x5c76
    mov ax, 0x16                     ; 0x5c77
    imul word [bp + 0x6]             ; 0x5c7a
    add ax, 0x9436                   ; 0x5c7d
    push ax                          ; 0x5c80
    call ds_dispatch_f364            ; 0x5c81
    add sp, byte 4                   ; 0x5c84
    mov ax, word [bp - 0x0066]       ; 0x5c87
    mov cx, word [bp + 0x6]          ; 0x5c8a
    shl cx, 1                        ; 0x5c8d
    mov bx, cx                       ; 0x5c8f
    mov word [bx - 0x6a14], ax       ; 0x5c91
    mov ax, word [bp - 0x006a]       ; 0x5c95
    mov word [bx - 0x6a00], ax       ; 0x5c98
    lea si, word [bp - 0x0038]       ; 0x5c9c
    lea di, word [bp - 0x002c]       ; 0x5c9f
    mov cx, ds                       ; 0x5ca2
    mov es, cx                       ; 0x5ca4
    mov cx, 6                        ; 0x5ca6
    rep movsw                        ; 0x5ca9
    lea ax, word [bp - 0x0064]       ; 0x5cab
    push ax                          ; 0x5cae
    lea ax, word [bp - 0x004e]       ; 0x5caf
    push ax                          ; 0x5cb2
    call ds_dispatch_f364            ; 0x5cb3
    add sp, byte 4                   ; 0x5cb6
    mov ax, word [bp - 0x0068]       ; 0x5cb9
    mov word [bp - 0x0066], ax       ; 0x5cbc
    mov ax, word [bp - 0x006c]       ; 0x5cbf
    mov word [bp - 0x006a], ax       ; 0x5cc2
    cmp word [bp - 0x0038], byte 0   ; 0x5cc5
    jne short @..local.l224          ; 0x5cc9
    mov word [data_9614], 0          ; 0x5ccb
    push word [bp + 0x4]             ; 0x5cd1
    call api_idx_004c                ; 0x5cd4
    pop cx                           ; 0x5cd7
    mov ax, 6                        ; 0x5cd8
    push ax                          ; 0x5cdb
    mov ax, data_0024                ; 0x5cdc
    push ax                          ; 0x5cdf
    mov ax, 0                        ; 0x5ce0
    push ax                          ; 0x5ce3
    mov ax, 0                        ; 0x5ce4
    push ax                          ; 0x5ce7
    push ax                          ; 0x5ce8
    mov ax, 0                        ; 0x5ce9
    sub ax, word [bp + 0x6]          ; 0x5cec
    dec ax                           ; 0x5cef
    push ax                          ; 0x5cf0
    push word [bp + 0x4]             ; 0x5cf1
    call api_idx_0012_4              ; 0x5cf4
    add sp, byte 0x0e                ; 0x5cf7
    mov word [bp - 0x001a], 0        ; 0x5cfa
    jmp short @..local.l225          ; 0x5cff
@..local.l224:
    mov word [data_9614], 1          ; 0x5d01
    push word [bp + 0x4]             ; 0x5d07
    call api_idx_004c                ; 0x5d0a
    pop cx                           ; 0x5d0d
    mov ax, 6                        ; 0x5d0e
    push ax                          ; 0x5d11
    mov ax, data_0024                ; 0x5d12
    push ax                          ; 0x5d15
    push word [bp - 0x0066]          ; 0x5d16
    lea ax, word [bp - 0x004e]       ; 0x5d19
    push ax                          ; 0x5d1c
    lea ax, word [bp - 0x002c]       ; 0x5d1d
    push ax                          ; 0x5d20
    push word [bp + 0x6]             ; 0x5d21
    push word [bp + 0x4]             ; 0x5d24
    call api_idx_0012_4              ; 0x5d27
    add sp, byte 0x0e                ; 0x5d2a
    mov word [bp - 0x001a], data_0002 ; 0x5d2d
@..local.l225:
    jmp near @..local.l258           ; 0x5d32
@..local.l226:
    cmp word [bp - 0x0004], byte 0x0e ; 0x5d35
    jge short @..local.l227          ; 0x5d39
    jmp near @..local.l244           ; 0x5d3b
@..local.l227:
    mov ax, word [bp - 0x0070]       ; 0x5d3e
    add ax, strict word 0xe          ; 0x5d41
    cmp ax, word [bp - 0x0004]       ; 0x5d44
    jg short @..local.l228           ; 0x5d47
    jmp near @..local.l244           ; 0x5d49
@..local.l228:
    mov word [bp - 0x001c], 0        ; 0x5d4c
    add word [bp - 0x0004], byte 0xf2 ; 0x5d51
    mov ax, 1                        ; 0x5d55
    push ax                          ; 0x5d58
    push ax                          ; 0x5d59
    push word [bp - 0x000e]          ; 0x5d5a
    push word [bp - 0x000c]          ; 0x5d5d
    mov ax, word [bp - 0x0004]       ; 0x5d60
    imul word [bp - 0x0010]          ; 0x5d63
    add ax, word [bp - 0x000a]       ; 0x5d66
    push ax                          ; 0x5d69
    call ds_dispatch_be5f            ; 0x5d6a
    add sp, byte 0x0a                ; 0x5d6d
    mov ax, 0                        ; 0x5d70
    push ax                          ; 0x5d73
    mov ax, 1                        ; 0x5d74
    push ax                          ; 0x5d77
    push word [bp - 0x000e]          ; 0x5d78
    push word [bp - 0x000c]          ; 0x5d7b
    mov ax, word [bp - 0x0004]       ; 0x5d7e
    imul word [bp - 0x0010]          ; 0x5d81
    add ax, word [bp - 0x000a]       ; 0x5d84
    push ax                          ; 0x5d87
    call ds_dispatch_be5f            ; 0x5d88
    add sp, byte 0x0a                ; 0x5d8b
    mov ax, word [bp - 0x0004]       ; 0x5d8e
    shl ax, 1                        ; 0x5d91
    mov bx, ax                       ; 0x5d93
    add bx, bp                       ; 0x5d95
    cmp word [bx - 0x0084], byte 0   ; 0x5d97
    jne short @..local.l229          ; 0x5d9c
    mov ax, word [bp - 0x0016]       ; 0x5d9e
    jmp short @..local.l230          ; 0x5da1
@..local.l229:
    mov ax, word [bx - 0x0084]       ; 0x5da3
@..local.l230:
    mov word [bp - 0x0018], ax       ; 0x5da7
    mov ax, 0x1a                     ; 0x5daa
    push ax                          ; 0x5dad
    mov ax, 1                        ; 0x5dae
    push ax                          ; 0x5db1
    mov ax, 9                        ; 0x5db2
    push ax                          ; 0x5db5
    push word [bp - 0x0010]          ; 0x5db6
    push word [bp - 0x000e]          ; 0x5db9
    push word [bp - 0x000c]          ; 0x5dbc
    push word [bp - 0x000a]          ; 0x5dbf
    push word [bp - 0x0004]          ; 0x5dc2
    mov ax, 0xa                      ; 0x5dc5
    imul word [bp - 0x0018]          ; 0x5dc8
    add ax, 0x9616                   ; 0x5dcb
    push ax                          ; 0x5dce
    call api_idx_0008                ; 0x5dcf
    add sp, byte 0x12                ; 0x5dd2
    mov ax, word [bp - 0x0004]       ; 0x5dd5
    shl ax, 1                        ; 0x5dd8
    mov bx, ax                       ; 0x5dda
    add bx, bp                       ; 0x5ddc
    mov ax, word [bx - 0x0084]       ; 0x5dde
    jmp near @..local.l240           ; 0x5de2
@..local.l231:
    mov ax, 0x12c                    ; 0x5de5
    push ax                          ; 0x5de8
    call ds_dispatch_e489            ; 0x5de9
    pop cx                           ; 0x5dec
    mov ax, 0                        ; 0x5ded
    push ax                          ; 0x5df0
    push word [bp - 0x001e]          ; 0x5df1
    push word [bp - 0x0020]          ; 0x5df4
    call ds_dispatch_e94f            ; 0x5df7
    add sp, byte 6                   ; 0x5dfa
    mov ax, word [bp - 0x000c]       ; 0x5dfd
    add ax, strict word 0xa          ; 0x5e00
    push ax                          ; 0x5e03
    mov ax, word [bp - 0x0010]       ; 0x5e04
    imul word [bp - 0x0012]          ; 0x5e07
    add ax, word [bp - 0x000a]       ; 0x5e0a
    inc ax                           ; 0x5e0d
    push ax                          ; 0x5e0e
    mov ax, word [bp - 0x000c]       ; 0x5e0f
    dec ax                           ; 0x5e12
    push ax                          ; 0x5e13
    mov ax, word [bp - 0x000a]       ; 0x5e14
    dec ax                           ; 0x5e17
    push ax                          ; 0x5e18
    call ds_dispatch_e8da            ; 0x5e19
    add sp, byte 8                   ; 0x5e1c
    lea ax, word [bp - 0x002c]       ; 0x5e1f
    push ax                          ; 0x5e22
    push word [bp + 0x4]             ; 0x5e23
    call api_idx_009e_2              ; 0x5e26
    add sp, byte 4                   ; 0x5e29
    push word [bp + 0x4]             ; 0x5e2c
    call api_idx_004c                ; 0x5e2f
    pop cx                           ; 0x5e32
    cmp word [bp - 0x002c], byte 0   ; 0x5e33
    jne short @..local.l232          ; 0x5e37
    mov word [data_9614], 0          ; 0x5e39
    mov ax, 6                        ; 0x5e3f
    push ax                          ; 0x5e42
    mov ax, data_0024                ; 0x5e43
    push ax                          ; 0x5e46
    mov ax, 0                        ; 0x5e47
    push ax                          ; 0x5e4a
    mov ax, 0                        ; 0x5e4b
    push ax                          ; 0x5e4e
    push ax                          ; 0x5e4f
    mov ax, 0                        ; 0x5e50
    sub ax, word [bp + 0x6]          ; 0x5e53
    dec ax                           ; 0x5e56
    push ax                          ; 0x5e57
    push word [bp + 0x4]             ; 0x5e58
    call api_idx_0012_4              ; 0x5e5b
    add sp, byte 0x0e                ; 0x5e5e
    mov word [bp - 0x001a], 0        ; 0x5e61
    jmp short @..local.l233          ; 0x5e66
@..local.l232:
    mov ax, 6                        ; 0x5e68
    push ax                          ; 0x5e6b
    mov ax, data_0024                ; 0x5e6c
    push ax                          ; 0x5e6f
    push word [bp - 0x0066]          ; 0x5e70
    lea ax, word [bp - 0x004e]       ; 0x5e73
    push ax                          ; 0x5e76
    lea ax, word [bp - 0x002c]       ; 0x5e77
    push ax                          ; 0x5e7a
    push word [bp + 0x6]             ; 0x5e7b
    push word [bp + 0x4]             ; 0x5e7e
    call api_idx_0012_4              ; 0x5e81
    add sp, byte 0x0e                ; 0x5e84
    mov word [bp - 0x001a], data_0002 ; 0x5e87
@..local.l233:
    mov ax, 0xbb                     ; 0x5e8c
    push ax                          ; 0x5e8f
    mov ax, 0xab                     ; 0x5e90
    push ax                          ; 0x5e93
    mov ax, 0x70                     ; 0x5e94
    push ax                          ; 0x5e97
    mov ax, 1                        ; 0x5e98
    push ax                          ; 0x5e9b
    call ds_dispatch_e8da            ; 0x5e9c
    add sp, byte 8                   ; 0x5e9f
    jmp near @..local.l243           ; 0x5ea2
@..local.l234:
    mov ax, 0                        ; 0x5ea5
    push ax                          ; 0x5ea8
    lea ax, word [bp - 0x004e]       ; 0x5ea9
    push ax                          ; 0x5eac
    lea ax, word [bp - 0x002c]       ; 0x5ead
    push ax                          ; 0x5eb0
    push word [bp + 0x4]             ; 0x5eb1
    call math_loc_70ca               ; 0x5eb4
    add sp, byte 8                   ; 0x5eb7
    cmp ax, strict word 0xffff       ; 0x5eba
    jne short @..local.l235          ; 0x5ebd
    mov ax, 0x12c                    ; 0x5ebf
    push ax                          ; 0x5ec2
    call ds_dispatch_e489            ; 0x5ec3
    pop cx                           ; 0x5ec6
    mov ax, 0                        ; 0x5ec7
    push ax                          ; 0x5eca
    push word [bp - 0x001e]          ; 0x5ecb
    push word [bp - 0x0020]          ; 0x5ece
    call ds_dispatch_e94f            ; 0x5ed1
    add sp, byte 6                   ; 0x5ed4
    mov ax, word [bp - 0x000c]       ; 0x5ed7
    add ax, strict word 0xa          ; 0x5eda
    push ax                          ; 0x5edd
    mov ax, word [bp - 0x0010]       ; 0x5ede
    imul word [bp - 0x0012]          ; 0x5ee1
    add ax, word [bp - 0x000a]       ; 0x5ee4
    inc ax                           ; 0x5ee7
    push ax                          ; 0x5ee8
    mov ax, word [bp - 0x000c]       ; 0x5ee9
    dec ax                           ; 0x5eec
    push ax                          ; 0x5eed
    mov ax, word [bp - 0x000a]       ; 0x5eee
    dec ax                           ; 0x5ef1
    push ax                          ; 0x5ef2
    call ds_dispatch_e8da            ; 0x5ef3
    add sp, byte 8                   ; 0x5ef6
    lea ax, word [bp - 0x00c2]       ; 0x5ef9
    push ax                          ; 0x5efd
    mov ax, 0x1d1                    ; 0x5efe
    push ax                          ; 0x5f01
    call ds_dispatch_b53b            ; 0x5f02
    add sp, byte 4                   ; 0x5f05
    mov ax, 1                        ; 0x5f08
    push ax                          ; 0x5f0b
    lea ax, word [bp - 0x00c2]       ; 0x5f0c
    push ax                          ; 0x5f10
    call api_idx_0004                ; 0x5f11
    add sp, byte 4                   ; 0x5f14
@..local.l235:
    push word [bp + 0x4]             ; 0x5f17
    call api_idx_004c                ; 0x5f1a
    pop cx                           ; 0x5f1d
    mov ax, 6                        ; 0x5f1e
    push ax                          ; 0x5f21
    mov ax, data_0024                ; 0x5f22
    push ax                          ; 0x5f25
    push word [bp - 0x0066]          ; 0x5f26
    lea ax, word [bp - 0x004e]       ; 0x5f29
    push ax                          ; 0x5f2c
    lea ax, word [bp - 0x002c]       ; 0x5f2d
    push ax                          ; 0x5f30
    push word [bp + 0x6]             ; 0x5f31
    push word [bp + 0x4]             ; 0x5f34
    call api_idx_0012_4              ; 0x5f37
    add sp, byte 0x0e                ; 0x5f3a
    mov word [bp - 0x001a], data_0002 ; 0x5f3d
    jmp short @..local.l243          ; 0x5f42
@..local.l236:
    mov word [bp - 0x001c], 1        ; 0x5f44
    jmp short @..local.l243          ; 0x5f49
@..local.l237:
    cmp word [bp - 0x002c], strict word 0x229 ; 0x5f4b
    jne short @..local.l238          ; 0x5f50
    mov ax, 0                        ; 0x5f52
    push ax                          ; 0x5f55
    call ds_dispatch_b7e0            ; 0x5f56
    pop cx                           ; 0x5f59
    jmp short @..local.l239          ; 0x5f5a
@..local.l238:
    lea ax, word [bp - 0x002c]       ; 0x5f5c
    push ax                          ; 0x5f5f
    call api_idx_0004_9              ; 0x5f60
    pop cx                           ; 0x5f63
    mov word [data_9614], 0          ; 0x5f64
    mov ax, 6                        ; 0x5f6a
    push ax                          ; 0x5f6d
    mov ax, data_0024                ; 0x5f6e
    push ax                          ; 0x5f71
    mov ax, 0                        ; 0x5f72
    push ax                          ; 0x5f75
    mov ax, 0                        ; 0x5f76
    push ax                          ; 0x5f79
    push ax                          ; 0x5f7a
    mov ax, 0                        ; 0x5f7b
    sub ax, word [bp + 0x6]          ; 0x5f7e
    dec ax                           ; 0x5f81
    push ax                          ; 0x5f82
    push word [bp + 0x4]             ; 0x5f83
    call api_idx_0012_4              ; 0x5f86
    add sp, byte 0x0e                ; 0x5f89
    mov word [bp - 0x001a], 0        ; 0x5f8c
@..local.l239:
    jmp short @..local.l243          ; 0x5f91
@..local.l240:
    cmp ax, strict word 0            ; 0x5f93
    jne short @..local.l241          ; 0x5f96
    jmp near @..local.l231           ; 0x5f98
@..local.l241:
    cmp ax, strict word 1            ; 0x5f9b
    jne short @..local.l242          ; 0x5f9e
    jmp near @..local.l234           ; 0x5fa0
@..local.l242:
    cmp ax, strict word 2            ; 0x5fa3
    je short @..local.l236           ; 0x5fa6
    cmp ax, strict word 3            ; 0x5fa8
    je short @..local.l237           ; 0x5fab
@..local.l243:
    jmp near @..local.l258           ; 0x5fad
@..local.l244:
    mov word [bp - 0x001c], 0        ; 0x5fb0
    mov ax, word [bp - 0x0004]       ; 0x5fb5
    jmp near @..local.l254           ; 0x5fb8
@..local.l245:
    cmp word [data_905e], byte 0x0d  ; 0x5fbb
    je short @..local.l246           ; 0x5fc0
    cmp word [data_905e], byte 4     ; 0x5fc2
    je short @..local.l246           ; 0x5fc7
    mov ax, word [bp + 0x4]          ; 0x5fc9
    add ax, word [data_69c8]         ; 0x5fcc
    dec ax                           ; 0x5fd0
    cwd                              ; 0x5fd1
    idiv word [data_69c8]            ; 0x5fd2
    mov word [data_8af0], dx         ; 0x5fd6
    mov word [bp + 0x4], dx          ; 0x5fda
    mov word [data_967a], 0          ; 0x5fdd
    mov ax, 0                        ; 0x5fe3
    push ax                          ; 0x5fe6
    push dx                          ; 0x5fe7
    call math_loc_40b7               ; 0x5fe8
    add sp, byte 4                   ; 0x5feb
    mov word [bp - 0x001a], data_0002 ; 0x5fee
@..local.l246:
    jmp near @..local.l258           ; 0x5ff3
@..local.l247:
    cmp word [data_905e], byte 0x0d  ; 0x5ff6
    je short @..local.l248           ; 0x5ffb
    cmp word [data_905e], byte 4     ; 0x5ffd
    je short @..local.l248           ; 0x6002
    mov ax, word [bp + 0x4]          ; 0x6004
    inc ax                           ; 0x6007
    cwd                              ; 0x6008
    idiv word [data_69c8]            ; 0x6009
    mov word [data_8af0], dx         ; 0x600d
    mov word [bp + 0x4], dx          ; 0x6011
    mov word [data_967a], 0          ; 0x6014
    mov ax, 0                        ; 0x601a
    push ax                          ; 0x601d
    push dx                          ; 0x601e
    call math_loc_40b7               ; 0x601f
    add sp, byte 4                   ; 0x6022
    mov word [bp - 0x001a], data_0002 ; 0x6025
@..local.l248:
    jmp near @..local.l258           ; 0x602a
@..local.l249:
    mov ax, word [api_idx_0016]      ; 0x602d
    inc ax                           ; 0x6030
    mov cx, data_0002                ; 0x6031
    cwd                              ; 0x6034
    idiv cx                          ; 0x6035
    mov word [api_idx_0016], dx      ; 0x6037
    mov word [data_967a], 0          ; 0x603b
    push word [bp + 0x4]             ; 0x6041
    call api_idx_004c                ; 0x6044
    pop cx                           ; 0x6047
    call api_idx_0004_2              ; 0x6048
    mov ax, 0xb6                     ; 0x604b
    push ax                          ; 0x604e
    mov ax, 0xab                     ; 0x604f
    push ax                          ; 0x6052
    mov ax, 0x70                     ; 0x6053
    push ax                          ; 0x6056
    mov ax, 1                        ; 0x6057
    push ax                          ; 0x605a
    call ds_dispatch_e8da            ; 0x605b
    add sp, byte 8                   ; 0x605e
    jmp near @..local.l258           ; 0x6061
@..local.l250:
    mov ax, 0                        ; 0x6064
    push ax                          ; 0x6067
    push word [bp - 0x001e]          ; 0x6068
    push word [bp - 0x0020]          ; 0x606b
    call ds_dispatch_e94f            ; 0x606e
    add sp, byte 6                   ; 0x6071
    lea ax, word [bp - 0x002c]       ; 0x6074
    push ax                          ; 0x6077
    push word [bp + 0x4]             ; 0x6078
    call api_idx_0072                ; 0x607b
    add sp, byte 4                   ; 0x607e
    mov word [bp - 0x0014], ax       ; 0x6081
    cmp ax, strict word 0xffff       ; 0x6084
    je short @..local.l252           ; 0x6087
    mov word [api_idx_0016], 0       ; 0x6089
    mov word [data_967a], 0          ; 0x608f
    mov word [data_9614], 0          ; 0x6095
    push word [bp + 0x4]             ; 0x609b
    call api_idx_0080                ; 0x609e
    pop cx                           ; 0x60a1
    push word [bp + 0x4]             ; 0x60a2
    call api_idx_004c                ; 0x60a5
    pop cx                           ; 0x60a8
    mov ax, 0xc7                     ; 0x60a9
    push ax                          ; 0x60ac
    mov ax, 0x13f                    ; 0x60ad
    push ax                          ; 0x60b0
    mov ax, 0                        ; 0x60b1
    push ax                          ; 0x60b4
    push ax                          ; 0x60b5
    call ds_dispatch_e8da            ; 0x60b6
    add sp, byte 8                   ; 0x60b9
    mov ax, 6                        ; 0x60bc
    push ax                          ; 0x60bf
    mov ax, data_0024                ; 0x60c0
    push ax                          ; 0x60c3
    mov ax, 0                        ; 0x60c4
    push ax                          ; 0x60c7
    mov ax, 0                        ; 0x60c8
    push ax                          ; 0x60cb
    push ax                          ; 0x60cc
    mov ax, 0                        ; 0x60cd
    sub ax, word [data_95ea]         ; 0x60d0
    dec ax                           ; 0x60d4
    push ax                          ; 0x60d5
    push word [bp + 0x4]             ; 0x60d6
    call api_idx_0012_4              ; 0x60d9
    add sp, byte 0x0e                ; 0x60dc
    mov word [bp - 0x001a], 0        ; 0x60df
    cmp word [bp - 0x0014], byte 0   ; 0x60e4
    jle short @..local.l251          ; 0x60e8
    push word [bp - 0x0014]          ; 0x60ea
    push word [data_95ea]            ; 0x60ed
    mov ax, 0                        ; 0x60f1
    push ax                          ; 0x60f4
    push word [bp + 0x4]             ; 0x60f5
    call api_idx_0010_2              ; 0x60f8
    add sp, byte 8                   ; 0x60fb
@..local.l251:
    jmp short @..local.l253          ; 0x60fe
@..local.l252:
    mov word [bp - 0x001a], data_0002 ; 0x6100
@..local.l253:
    jmp short @..local.l258          ; 0x6105
@..local.l254:
    cmp ax, strict word 0xa          ; 0x6107
    jne short @..local.l255          ; 0x610a
    jmp near @..local.l245           ; 0x610c
@..local.l255:
    cmp ax, strict word 0xb          ; 0x610f
    jne short @..local.l256          ; 0x6112
    jmp near @..local.l247           ; 0x6114
@..local.l256:
    cmp ax, strict word 0xc          ; 0x6117
    jne short @..local.l257          ; 0x611a
    jmp near @..local.l249           ; 0x611c
@..local.l257:
    cmp ax, strict word 0xd          ; 0x611f
    jne short @..local.l258          ; 0x6122
    jmp near @..local.l250           ; 0x6124
@..local.l258:
    cmp word [bp - 0x001a], byte 1   ; 0x6127
    jne short @..local.l259          ; 0x612b
    jmp near @..local.l192           ; 0x612d
@..local.l259:
    cmp word [bp - 0x001a], byte 2   ; 0x6130
    jne short @..local.l260          ; 0x6134
    jmp near @..local.l180           ; 0x6136
@..local.l260:
    mov ax, 1                        ; 0x6139
    push ax                          ; 0x613c
    push word [bp - 0x001e]          ; 0x613d
    push word [bp - 0x0020]          ; 0x6140
    call ds_dispatch_e94f            ; 0x6143
    add sp, byte 6                   ; 0x6146
    mov ax, word [bp - 0x000c]       ; 0x6149
    add ax, strict word 0xa          ; 0x614c
    push ax                          ; 0x614f
    mov ax, word [bp - 0x0010]       ; 0x6150
    imul word [bp - 0x0012]          ; 0x6153
    add ax, word [bp - 0x000a]       ; 0x6156
    inc ax                           ; 0x6159
    push ax                          ; 0x615a
    mov ax, word [bp - 0x000c]       ; 0x615b
    dec ax                           ; 0x615e
    push ax                          ; 0x615f
    mov ax, word [bp - 0x000a]       ; 0x6160
    dec ax                           ; 0x6163
    push ax                          ; 0x6164
    call ds_dispatch_e8da            ; 0x6165
    add sp, byte 8                   ; 0x6168
    ret                              ; 0x616b
api_idx_0014:
    mov ax, 0xffec                   ; 0x616c
    call ds_dispatch_f40b            ; 0x616f
    mov ax, word [data_905e]         ; 0x6172
    mov word [data_830a], ax         ; 0x6175
    mov word [data_942e], 0x14       ; 0x6178
    mov word [data_9430], 0          ; 0x617e
    mov word [data_9432], 0          ; 0x6184
    mov word [data_940e], 0xffff     ; 0x618a
    cmp ax, strict word 0xd          ; 0x6190
    je short @..api_idx_0014.l1      ; 0x6193
    call ds_dispatch_c145            ; 0x6195
    mov ax, 1                        ; 0x6198
    push ax                          ; 0x619b
    mov ax, data_0002                ; 0x619c
    push ax                          ; 0x619f
    call ds_dispatch_d61c            ; 0x61a0
    add sp, byte 4                   ; 0x61a3
    mov ax, data_0002                ; 0x61a6
    push ax                          ; 0x61a9
    mov ax, 3                        ; 0x61aa
    push ax                          ; 0x61ad
    call ds_dispatch_d61c            ; 0x61ae
    add sp, byte 4                   ; 0x61b1
    jmp short @..api_idx_0014.l4     ; 0x61b4
@..api_idx_0014.l1:
    mov word [bp - 0x0002], 0xf      ; 0x61b6
@..api_idx_0014.l2:
    mov bx, word [bp - 0x0002]       ; 0x61bb
    mov al, byte [bx + 0x5b48]       ; 0x61be
    sub ah, ah                       ; 0x61c2
    shl bx, 1                        ; 0x61c4
    add bx, bp                       ; 0x61c6
    mov word [bx - 0x002a], ax       ; 0x61c8
    cmp ax, 0xff                     ; 0x61cb
    je short @..api_idx_0014.l3      ; 0x61ce
    push word [bp - 0x0002]          ; 0x61d0
    call ds_dispatch_c12a            ; 0x61d3
    pop cx                           ; 0x61d6
@..api_idx_0014.l3:
    inc word [bp - 0x0002]           ; 0x61d7
    mov ax, word [bp - 0x0002]       ; 0x61da
    cmp ax, strict word 0x12         ; 0x61dd
    jl short @..api_idx_0014.l2      ; 0x61e0
    mov ax, 7                        ; 0x61e2
    push ax                          ; 0x61e5
    call ds_dispatch_c12a            ; 0x61e6
    pop cx                           ; 0x61e9
    mov ax, 0xa                      ; 0x61ea
    push ax                          ; 0x61ed
    call ds_dispatch_d6c6            ; 0x61ee
    pop cx                           ; 0x61f1
    mov ax, 0xb                      ; 0x61f2
    push ax                          ; 0x61f5
    call ds_dispatch_d6c6            ; 0x61f6
    pop cx                           ; 0x61f9
    mov ax, 0xc                      ; 0x61fa
    push ax                          ; 0x61fd
    call ds_dispatch_d6c6            ; 0x61fe
    pop cx                           ; 0x6201
@..api_idx_0014.l4:
    mov ax, 0                        ; 0x6202
    push ax                          ; 0x6205
    mov ax, data_0002                ; 0x6206
    push ax                          ; 0x6209
    mov ax, 0xc7                     ; 0x620a
    push ax                          ; 0x620d
    mov ax, 0x13f                    ; 0x620e
    push ax                          ; 0x6211
    mov ax, 0                        ; 0x6212
    push ax                          ; 0x6215
    push ax                          ; 0x6216
    call ds_dispatch_e935            ; 0x6217
    add sp, byte 0x0c                ; 0x621a
    mov word [bp - 0x0012], dx       ; 0x621d
    mov word [bp - 0x0014], ax       ; 0x6220
    mov ax, 0                        ; 0x6223
    push ax                          ; 0x6226
    mov ax, 0x90b3                   ; 0x6227
    push ax                          ; 0x622a
    call api_idx_0002                ; 0x622b
    add sp, byte 4                   ; 0x622e
    mov ax, 0                        ; 0x6231
    push ax                          ; 0x6234
    mov ax, data_0002                ; 0x6235
    push ax                          ; 0x6238
    mov ax, 0x67                     ; 0x6239
    push ax                          ; 0x623c
    mov ax, 0xa2                     ; 0x623d
    push ax                          ; 0x6240
    mov ax, 6                        ; 0x6241
    push ax                          ; 0x6244
    push ax                          ; 0x6245
    call ds_dispatch_e935            ; 0x6246
    add sp, byte 0x0c                ; 0x6249
    mov word [data_93f0], dx         ; 0x624c
    mov word [data_93ee], ax         ; 0x6250
    mov ax, 0                        ; 0x6253
    push ax                          ; 0x6256
    mov ax, data_0002                ; 0x6257
    push ax                          ; 0x625a
    mov ax, 0x16                     ; 0x625b
    push ax                          ; 0x625e
    mov ax, 0x136                    ; 0x625f
    push ax                          ; 0x6262
    mov ax, 6                        ; 0x6263
    push ax                          ; 0x6266
    mov ax, 0xe4                     ; 0x6267
    push ax                          ; 0x626a
    call ds_dispatch_e935            ; 0x626b
    add sp, byte 0x0c                ; 0x626e
    mov word [data_93f4], dx         ; 0x6271
    mov word [data_93f2], ax         ; 0x6275
    mov ax, 0                        ; 0x6278
    push ax                          ; 0x627b
    mov ax, data_0002                ; 0x627c
    push ax                          ; 0x627f
    mov ax, 0xbb                     ; 0x6280
    push ax                          ; 0x6283
    mov ax, 0xab                     ; 0x6284
    push ax                          ; 0x6287
    mov ax, 0x70                     ; 0x6288
    push ax                          ; 0x628b
    mov ax, 1                        ; 0x628c
    push ax                          ; 0x628f
    call ds_dispatch_e935            ; 0x6290
    add sp, byte 0x0c                ; 0x6293
    mov word [data_93f8], dx         ; 0x6296
    mov word [data_93f6], ax         ; 0x629a
    mov ax, 0                        ; 0x629d
    push ax                          ; 0x62a0
    mov ax, data_0002                ; 0x62a1
    push ax                          ; 0x62a4
    mov ax, 0x23                     ; 0x62a5
    push ax                          ; 0x62a8
    mov ax, 0x13f                    ; 0x62a9
    push ax                          ; 0x62ac
    mov ax, 0x1e                     ; 0x62ad
    push ax                          ; 0x62b0
    mov ax, 0xdc                     ; 0x62b1
    push ax                          ; 0x62b4
    call ds_dispatch_e935            ; 0x62b5
    add sp, byte 0x0c                ; 0x62b8
    mov word [data_93fc], dx         ; 0x62bb
    mov word [data_93fa], ax         ; 0x62bf
    mov ax, 0                        ; 0x62c2
    push ax                          ; 0x62c5
    mov ax, data_0002                ; 0x62c6
    push ax                          ; 0x62c9
    mov ax, 0x74                     ; 0x62ca
    push ax                          ; 0x62cd
    mov ax, 0x136                    ; 0x62ce
    push ax                          ; 0x62d1
    mov ax, 0x2e                     ; 0x62d2
    push ax                          ; 0x62d5
    mov ax, 0x114                    ; 0x62d6
    push ax                          ; 0x62d9
    call ds_dispatch_e935            ; 0x62da
    add sp, byte 0x0c                ; 0x62dd
    mov word [data_9400], dx         ; 0x62e0
    mov word [data_93fe], ax         ; 0x62e4
    mov ax, 0                        ; 0x62e7
    push ax                          ; 0x62ea
    mov ax, data_0002                ; 0x62eb
    push ax                          ; 0x62ee
    mov ax, 0xbf                     ; 0x62ef
    push ax                          ; 0x62f2
    mov ax, 0x13f                    ; 0x62f3
    push ax                          ; 0x62f6
    mov ax, 0x7e                     ; 0x62f7
    push ax                          ; 0x62fa
    mov ax, 0xb8                     ; 0x62fb
    push ax                          ; 0x62fe
    call ds_dispatch_e935            ; 0x62ff
    add sp, byte 0x0c                ; 0x6302
    mov word [data_9404], dx         ; 0x6305
    mov word [data_9402], ax         ; 0x6309
    mov ax, 0                        ; 0x630c
    push ax                          ; 0x630f
    mov ax, data_0002                ; 0x6310
    push ax                          ; 0x6313
    mov ax, 0x41                     ; 0x6314
    push ax                          ; 0x6317
    mov ax, 0x65                     ; 0x6318
    push ax                          ; 0x631b
    mov ax, 0x19                     ; 0x631c
    push ax                          ; 0x631f
    mov ax, 0x5a                     ; 0x6320
    push ax                          ; 0x6323
    call ds_dispatch_e935            ; 0x6324
    add sp, byte 0x0c                ; 0x6327
    mov word [data_940c], dx         ; 0x632a
    mov word [data_940a], ax         ; 0x632e
    mov ax, 0xf                      ; 0x6331
    push ax                          ; 0x6334
    mov ax, 0xb                      ; 0x6335
    push ax                          ; 0x6338
    call ds_dispatch_d61c            ; 0x6339
    add sp, byte 4                   ; 0x633c
    call ds_dispatch_d9a6            ; 0x633f
    mov word [data_8450], ax         ; 0x6342
    test ax, ax                      ; 0x6345
    je short @..local.l261           ; 0x6347
    mov ax, 0                        ; 0x6349
    push ax                          ; 0x634c
    mov ax, data_0002                ; 0x634d
    push ax                          ; 0x6350
    call ds_dispatch_d7e7            ; 0x6351
    add sp, byte 4                   ; 0x6354
    mov ax, word [data_0110]         ; 0x6357
    mov word [data_844e], ax         ; 0x635a
    mov ax, 1                        ; 0x635d
    push ax                          ; 0x6360
    push word [data_844e]            ; 0x6361
    mov ax, 0                        ; 0x6365
    push ax                          ; 0x6368
    call ds_dispatch_d964            ; 0x6369
    add sp, byte 6                   ; 0x636c
    mov word [data_844c], ax         ; 0x636f
@..local.l261:
    mov word [data_967a], 0          ; 0x6372
    mov word [data_9614], 0          ; 0x6378
    mov word [api_idx_0016], 0       ; 0x637e
    mov word [bp - 0x0002], 0        ; 0x6384
@..local.l262:
    mov ax, 0xa                      ; 0x6389
    imul word [bp - 0x0002]          ; 0x638c
    add ax, 0x9616                   ; 0x638f
    push ax                          ; 0x6392
    mov ax, word [bp - 0x0002]       ; 0x6393
    add ax, 0x12c                    ; 0x6396
    push ax                          ; 0x6399
    call ds_dispatch_b53b            ; 0x639a
    add sp, byte 4                   ; 0x639d
    inc word [bp - 0x0002]           ; 0x63a0
    mov ax, word [bp - 0x0002]       ; 0x63a3
    cmp ax, strict word 9            ; 0x63a6
    jl short @..local.l262           ; 0x63a9
    mov word [bp - 0x0002], 0        ; 0x63ab
@..local.l263:
    mov ax, word [bp - 0x0002]       ; 0x63b0
    shl ax, 1                        ; 0x63b3
    mov bx, ax                       ; 0x63b5
    mov word [bx - 0x7cf2], 0        ; 0x63b7
    inc word [bp - 0x0002]           ; 0x63bd
    mov ax, word [bp - 0x0002]       ; 0x63c0
    cmp ax, strict word 6            ; 0x63c3
    jl short @..local.l263           ; 0x63c6
    mov word [data_9562], 7          ; 0x63c8
    les bx, word [data_0002]         ; 0x63ce
    mov ax, word [es:bx]             ; 0x63d2
    mov dx, word [es:bx + 0x2]       ; 0x63d5
    mov word [data_908c], dx         ; 0x63d9
    mov word [data_908a], ax         ; 0x63dd
    cmp word [data_905e], byte 4     ; 0x63e0
    je short @..local.l264           ; 0x63e5
    cmp word [data_905e], byte 0x0d  ; 0x63e7
    jne short @..local.l265          ; 0x63ec
@..local.l264:
    mov ax, 0                        ; 0x63ee
    jmp short @..local.l266          ; 0x63f1
@..local.l265:
    mov ax, 1                        ; 0x63f3
@..local.l266:
    mov word [bp - 0x0006], ax       ; 0x63f6
@..local.l267:
    mov ax, 0                        ; 0x63f9
    push ax                          ; 0x63fc
    push word [bp + 0x4]             ; 0x63fd
    call math_loc_40b7               ; 0x6400
    add sp, byte 4                   ; 0x6403
    mov ax, 0                        ; 0x6406
    push ax                          ; 0x6409
    mov ax, 0x45                     ; 0x640a
    push ax                          ; 0x640d
    mov ax, 0x53                     ; 0x640e
    push ax                          ; 0x6411
    mov ax, 0x3d                     ; 0x6412
    push ax                          ; 0x6415
    mov ax, 0x4d                     ; 0x6416
    push ax                          ; 0x6419
    mov ax, 0x13                     ; 0x641a
    push ax                          ; 0x641d
    mov ax, 0                        ; 0x641e
    push ax                          ; 0x6421
    call ds_dispatch_baa6            ; 0x6422
    add sp, byte 0x0e                ; 0x6425
    mov ax, 0                        ; 0x6428
    push ax                          ; 0x642b
    mov ax, 0xb                      ; 0x642c
    push ax                          ; 0x642f
    mov ax, 0x4a                     ; 0x6430
    push ax                          ; 0x6433
    mov ax, 0x26                     ; 0x6434
    push ax                          ; 0x6437
    mov ax, 0x11                     ; 0x6438
    push ax                          ; 0x643b
    mov ax, 0xc                      ; 0x643c
    push ax                          ; 0x643f
    mov ax, 1                        ; 0x6440
    push ax                          ; 0x6443
    call ds_dispatch_baa6            ; 0x6444
    add sp, byte 0x0e                ; 0x6447
    mov ax, 0                        ; 0x644a
    push ax                          ; 0x644d
    mov ax, 9                        ; 0x644e
    push ax                          ; 0x6451
    mov ax, 0x4a                     ; 0x6452
    push ax                          ; 0x6455
    mov ax, 0x43                     ; 0x6456
    push ax                          ; 0x6459
    mov ax, 0x11                     ; 0x645a
    push ax                          ; 0x645d
    mov ax, api_idx_0002             ; 0x645e
    push ax                          ; 0x6461
    mov ax, data_0002                ; 0x6462
    push ax                          ; 0x6465
    call ds_dispatch_baa6            ; 0x6466
    add sp, byte 0x0e                ; 0x6469
    mov ax, 0                        ; 0x646c
    push ax                          ; 0x646f
    mov ax, 0x43                     ; 0x6470
    push ax                          ; 0x6473
    mov ax, 0x4b                     ; 0x6474
    push ax                          ; 0x6477
    mov ax, 0x66                     ; 0x6478
    push ax                          ; 0x647b
    mov ax, 0x1f                     ; 0x647c
    push ax                          ; 0x647f
    mov ax, 0x5a                     ; 0x6480
    push ax                          ; 0x6483
    mov ax, 3                        ; 0x6484
    push ax                          ; 0x6487
    call ds_dispatch_baa6            ; 0x6488
    add sp, byte 0x0e                ; 0x648b
    mov ax, 0                        ; 0x648e
    push ax                          ; 0x6491
    push ax                          ; 0x6492
    mov ax, 0x62                     ; 0x6493
    push ax                          ; 0x6496
    mov ax, 0x96                     ; 0x6497
    push ax                          ; 0x649a
    mov ax, 0x5c                     ; 0x649b
    push ax                          ; 0x649e
    mov ax, 0x5a                     ; 0x649f
    push ax                          ; 0x64a2
    mov ax, 4                        ; 0x64a3
    push ax                          ; 0x64a6
    call ds_dispatch_baa6            ; 0x64a7
    add sp, byte 0x0e                ; 0x64aa
    mov ax, 0                        ; 0x64ad
    push ax                          ; 0x64b0
    push ax                          ; 0x64b1
    mov ax, 0x6e                     ; 0x64b2
    push ax                          ; 0x64b5
    mov ax, 0xd9                     ; 0x64b6
    push ax                          ; 0x64b9
    mov ax, 0x55                     ; 0x64ba
    push ax                          ; 0x64bd
    mov ax, 0xb3                     ; 0x64be
    push ax                          ; 0x64c1
    mov ax, 5                        ; 0x64c2
    push ax                          ; 0x64c5
    call ds_dispatch_baa6            ; 0x64c6
    add sp, byte 0x0e                ; 0x64c9
    mov ax, 0                        ; 0x64cc
    push ax                          ; 0x64cf
    mov ax, data_0042                ; 0x64d0
    push ax                          ; 0x64d3
    mov ax, 0x6e                     ; 0x64d4
    push ax                          ; 0x64d7
    mov ax, 0xf2                     ; 0x64d8
    push ax                          ; 0x64db
    mov ax, 0x53                     ; 0x64dc
    push ax                          ; 0x64df
    mov ax, 0xdb                     ; 0x64e0
    push ax                          ; 0x64e3
    mov ax, 6                        ; 0x64e4
    push ax                          ; 0x64e7
    call ds_dispatch_baa6            ; 0x64e8
    add sp, byte 0x0e                ; 0x64eb
    mov ax, 0                        ; 0x64ee
    push ax                          ; 0x64f1
    mov ax, 0x53                     ; 0x64f2
    push ax                          ; 0x64f5
    mov ax, 0x2f                     ; 0x64f6
    push ax                          ; 0x64f9
    mov ax, 0xd5                     ; 0x64fa
    push ax                          ; 0x64fd
    mov ax, 0xc                      ; 0x64fe
    push ax                          ; 0x6501
    mov ax, 0xaf                     ; 0x6502
    push ax                          ; 0x6505
    mov ax, 7                        ; 0x6506
    push ax                          ; 0x6509
    call ds_dispatch_baa6            ; 0x650a
    add sp, byte 0x0e                ; 0x650d
    mov ax, 0                        ; 0x6510
    push ax                          ; 0x6513
    push ax                          ; 0x6514
    mov ax, 0x23                     ; 0x6515
    push ax                          ; 0x6518
    mov ax, 0x138                    ; 0x6519
    push ax                          ; 0x651c
    mov ax, 0x1d                     ; 0x651d
    push ax                          ; 0x6520
    mov ax, 0xef                     ; 0x6521
    push ax                          ; 0x6524
    mov ax, 8                        ; 0x6525
    push ax                          ; 0x6528
    call ds_dispatch_baa6            ; 0x6529
    add sp, byte 0x0e                ; 0x652c
    mov ax, 0                        ; 0x652f
    push ax                          ; 0x6532
    push ax                          ; 0x6533
    mov ax, 0x39                     ; 0x6534
    push ax                          ; 0x6537
    mov ax, 0x116                    ; 0x6538
    push ax                          ; 0x653b
    mov ax, 0x29                     ; 0x653c
    push ax                          ; 0x653f
    mov ax, 0x106                    ; 0x6540
    push ax                          ; 0x6543
    mov ax, 9                        ; 0x6544
    push ax                          ; 0x6547
    call ds_dispatch_baa6            ; 0x6548
    add sp, byte 0x0e                ; 0x654b
    mov ax, 0                        ; 0x654e
    push ax                          ; 0x6551
    push ax                          ; 0x6552
    mov ax, 0x4e                     ; 0x6553
    push ax                          ; 0x6556
    mov ax, 0x11b                    ; 0x6557
    push ax                          ; 0x655a
    mov ax, 0x3a                     ; 0x655b
    push ax                          ; 0x655e
    mov ax, 0x102                    ; 0x655f
    push ax                          ; 0x6562
    mov ax, 0xa                      ; 0x6563
    push ax                          ; 0x6566
    call ds_dispatch_baa6            ; 0x6567
    add sp, byte 0x0e                ; 0x656a
    mov ax, 0                        ; 0x656d
    push ax                          ; 0x6570
    push ax                          ; 0x6571
    mov ax, 0x69                     ; 0x6572
    push ax                          ; 0x6575
    mov ax, 0x118                    ; 0x6576
    push ax                          ; 0x6579
    mov ax, 0x4f                     ; 0x657a
    push ax                          ; 0x657d
    mov ax, data_0104                ; 0x657e
    push ax                          ; 0x6581
    mov ax, 0xb                      ; 0x6582
    push ax                          ; 0x6585
    call ds_dispatch_baa6            ; 0x6586
    add sp, byte 0x0e                ; 0x6589
    mov ax, 0                        ; 0x658c
    push ax                          ; 0x658f
    push ax                          ; 0x6590
    mov ax, 0x4f                     ; 0x6591
    push ax                          ; 0x6594
    mov ax, 0x12d                    ; 0x6595
    push ax                          ; 0x6598
    mov ax, 0x41                     ; 0x6599
    push ax                          ; 0x659c
    mov ax, 0x11e                    ; 0x659d
    push ax                          ; 0x65a0
    mov ax, 0xc                      ; 0x65a1
    push ax                          ; 0x65a4
    call ds_dispatch_baa6            ; 0x65a5
    add sp, byte 0x0e                ; 0x65a8
    mov ax, 0                        ; 0x65ab
    push ax                          ; 0x65ae
    push ax                          ; 0x65af
    mov ax, 0x7e                     ; 0x65b0
    push ax                          ; 0x65b3
    mov ax, 0x11f                    ; 0x65b4
    push ax                          ; 0x65b7
    mov ax, 0x6a                     ; 0x65b8
    push ax                          ; 0x65bb
    mov ax, data_0104                ; 0x65bc
    push ax                          ; 0x65bf
    mov ax, 0xd                      ; 0x65c0
    push ax                          ; 0x65c3
    call ds_dispatch_baa6            ; 0x65c4
    add sp, byte 0x0e                ; 0x65c7
    mov ax, 0                        ; 0x65ca
    push ax                          ; 0x65cd
    push ax                          ; 0x65ce
    mov ax, 0x48                     ; 0x65cf
    push ax                          ; 0x65d2
    mov ax, 0x13a                    ; 0x65d3
    push ax                          ; 0x65d6
    mov ax, 0x2b                     ; 0x65d7
    push ax                          ; 0x65da
    mov ax, 0x12e                    ; 0x65db
    push ax                          ; 0x65de
    mov ax, 0xe                      ; 0x65df
    push ax                          ; 0x65e2
    call ds_dispatch_baa6            ; 0x65e3
    add sp, byte 0x0e                ; 0x65e6
    mov word [bp - 0x0002], 0        ; 0x65e9
@..local.l268:
    mov ax, 0                        ; 0x65ee
    push ax                          ; 0x65f1
    mov ax, word [bp - 0x0002]       ; 0x65f2
    inc ax                           ; 0x65f5
    mov cx, 0xa                      ; 0x65f6
    cwd                              ; 0x65f9
    idiv cx                          ; 0x65fa
    mov ax, dx                       ; 0x65fc
    add ax, strict word 0x30         ; 0x65fe
    cbw                              ; 0x6601
    push ax                          ; 0x6602
    mov ax, word [bp - 0x0002]       ; 0x6603
    mov cx, 5                        ; 0x6606
    cwd                              ; 0x6609
    idiv cx                          ; 0x660a
    mov ax, dx                       ; 0x660c
    mov cx, 0xe                      ; 0x660e
    imul cx                          ; 0x6611
    add ax, strict word 0x7d         ; 0x6613
    push ax                          ; 0x6616
    mov ax, word [bp - 0x0002]       ; 0x6617
    mov cx, 5                        ; 0x661a
    cwd                              ; 0x661d
    idiv cx                          ; 0x661e
    mov cx, 0x4f                     ; 0x6620
    imul cx                          ; 0x6623
    add ax, strict word 0x4e         ; 0x6625
    push ax                          ; 0x6628
    mov ax, word [bp - 0x0002]       ; 0x6629
    mov cx, 5                        ; 0x662c
    cwd                              ; 0x662f
    idiv cx                          ; 0x6630
    mov ax, dx                       ; 0x6632
    mov cx, 0xe                      ; 0x6634
    imul cx                          ; 0x6637
    add ax, strict word 0x71         ; 0x6639
    push ax                          ; 0x663c
    mov ax, word [bp - 0x0002]       ; 0x663d
    mov cx, 5                        ; 0x6640
    cwd                              ; 0x6643
    idiv cx                          ; 0x6644
    mov cx, 0x4f                     ; 0x6646
    imul cx                          ; 0x6649
    inc ax                           ; 0x664b
    inc ax                           ; 0x664c
    push ax                          ; 0x664d
    mov ax, word [bp - 0x0002]       ; 0x664e
    add ax, strict word 0xf          ; 0x6651
    push ax                          ; 0x6654
    call ds_dispatch_baa6            ; 0x6655
    add sp, byte 0x0e                ; 0x6658
    inc word [bp - 0x0002]           ; 0x665b
    mov ax, word [bp - 0x0002]       ; 0x665e
    cmp ax, strict word 0xa          ; 0x6661
    jl short @..local.l268           ; 0x6664
    mov ax, 0                        ; 0x6666
    push ax                          ; 0x6669
    mov ax, 0x4d                     ; 0x666a
    push ax                          ; 0x666d
    mov ax, 0xc2                     ; 0x666e
    push ax                          ; 0x6671
    mov ax, 0x13f                    ; 0x6672
    push ax                          ; 0x6675
    mov ax, 0x83                     ; 0x6676
    push ax                          ; 0x6679
    mov ax, 0xb6                     ; 0x667a
    push ax                          ; 0x667d
    mov ax, 0x19                     ; 0x667e
    push ax                          ; 0x6681
    call ds_dispatch_baa6            ; 0x6682
    add sp, byte 0x0e                ; 0x6685
    mov ax, 0x1b                     ; 0x6688
    push ax                          ; 0x668b
    mov ax, 0x58                     ; 0x668c
    push ax                          ; 0x668f
    mov ax, 0x78                     ; 0x6690
    push ax                          ; 0x6693
    mov ax, 0x13f                    ; 0x6694
    push ax                          ; 0x6697
    mov ax, 0x1e                     ; 0x6698
    push ax                          ; 0x669b
    mov ax, 0x13b                    ; 0x669c
    push ax                          ; 0x669f
    mov ax, 0x1a                     ; 0x66a0
    push ax                          ; 0x66a3
    call ds_dispatch_baa6            ; 0x66a4
    add sp, byte 0x0e                ; 0x66a7
    mov ax, 0                        ; 0x66aa
    push ax                          ; 0x66ad
    push ax                          ; 0x66ae
    push ax                          ; 0x66af
    push ax                          ; 0x66b0
    push ax                          ; 0x66b1
    mov ax, 0xffff                   ; 0x66b2
    push ax                          ; 0x66b5
    mov ax, 0x1b                     ; 0x66b6
    push ax                          ; 0x66b9
    call ds_dispatch_baa6            ; 0x66ba
    add sp, byte 0x0e                ; 0x66bd
@..local.l269:
    push word [bp + 0x4]             ; 0x66c0
    call math_loc_4011               ; 0x66c3
    pop cx                           ; 0x66c6
    mov ax, 0x59fe                   ; 0x66c7
    push ax                          ; 0x66ca
    call ds_dispatch_b90d            ; 0x66cb
    pop cx                           ; 0x66ce
    dec ax                           ; 0x66cf
    mov word [bp - 0x0004], ax       ; 0x66d0
    cmp word [data_5b3e], byte 0     ; 0x66d3
    je short @..local.l269           ; 0x66d8
    cmp word [bp - 0x0004], byte 0x0f ; 0x66da
    jl short @..local.l271           ; 0x66de
    cmp word [bp - 0x0004], byte 0x19 ; 0x66e0
    jge short @..local.l271          ; 0x66e4
    mov ax, 0x248                    ; 0x66e6
    imul word [bp + 0x4]             ; 0x66e9
    push ax                          ; 0x66ec
    mov ax, 0x78                     ; 0x66ed
    imul word [api_idx_0016]         ; 0x66f0
    mov cx, ax                       ; 0x66f4
    pop ax                           ; 0x66f6
    add ax, cx                       ; 0x66f7
    push ax                          ; 0x66f9
    mov ax, 0xc                      ; 0x66fa
    imul word [bp - 0x0004]          ; 0x66fd
    mov cx, ax                       ; 0x6700
    pop ax                           ; 0x6702
    add ax, cx                       ; 0x6703
    mov bx, ax                       ; 0x6705
    cmp word [bx + 0x5b80], byte 0   ; 0x6707
    jle short @..local.l270          ; 0x670c
    mov ax, word [bp - 0x0004]       ; 0x670e
    add ax, strict word 0xfff1       ; 0x6711
    push ax                          ; 0x6714
    push word [bp + 0x4]             ; 0x6715
    call api_idx_00c2                ; 0x6718
    add sp, byte 4                   ; 0x671b
    mov ax, word [data_8af0]         ; 0x671e
    mov word [bp + 0x4], ax          ; 0x6721
@..local.l270:
    jmp near @..local.l273           ; 0x6724
@..local.l271:
    mov ax, word [bp - 0x0004]       ; 0x6727
    jmp near @..local.l272           ; 0x672a

    db 0xff, 0x76, 0x04, 0xe8, 0x0d, 0x30, 0x59, 0xe9, 0xcd, 0x00, 0x83, 0x7e, 0xfa, 0x00, 0x74, 0x1a
    db 0x8b, 0x46, 0x04, 0x03, 0x06, 0xc8, 0x69, 0x48, 0x99, 0xf7, 0x3e, 0xc8, 0x69, 0x89, 0x16, 0xf0
    db 0x8a, 0x89, 0x56, 0x04, 0xc7, 0x06, 0x7a, 0x96, 0x00, 0x00, 0xe9, 0xaa, 0x00, 0x83, 0x7e, 0xfa
    db 0x00, 0x74, 0x16, 0x8b, 0x46, 0x04, 0x40, 0x99, 0xf7, 0x3e, 0xc8, 0x69, 0x89, 0x16, 0xf0, 0x8a
    db 0x89, 0x56, 0x04, 0xc7, 0x06, 0x7a, 0x96, 0x00, 0x00, 0xe9, 0x8b, 0x00, 0xff, 0x76, 0x04, 0xe8
    db 0x15, 0xb1, 0x59, 0xe9, 0x81, 0x00, 0xe9, 0x7e, 0x00, 0xe9, 0x7b, 0x00, 0xa1, 0x34, 0x94, 0x40
    db 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x16, 0x34, 0x94, 0xc7, 0x06, 0x7a, 0x96, 0x00, 0x00
    db 0xeb, 0x65, 0xff, 0x76, 0x04, 0xe8, 0x4a, 0xd9, 0x59, 0xeb, 0x5c, 0xeb, 0x5a, 0xff, 0x76, 0x04
    db 0xe8, 0xd5, 0x62, 0x59, 0x85, 0xc0, 0x74, 0x0c, 0xff, 0x76, 0xfa, 0xff, 0x76, 0x04, 0xe8, 0xb6
    db 0xd1, 0x83, 0xc4, 0x04, 0xeb, 0x41, 0x74, 0xb7, 0x7e, 0xb7, 0xa1, 0xb7, 0xc0, 0xb7, 0xca, 0xb7
    db 0xcd, 0xb7, 0xd0, 0xb7, 0xe6, 0xb7, 0xef, 0xb7, 0xef, 0xb7, 0xef, 0xb7, 0xef, 0xb7, 0xef, 0xb7
    db 0xef, 0xb7, 0xef, 0xb7, 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8
    db 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8, 0xf1, 0xb7

@..local.l272:
    cmp ax, strict word 0x1a         ; 0x67f7
    jae short @..local.l273          ; 0x67fa
    xchg bx, ax                      ; 0x67fc
    shl bx, 1                        ; 0x67fd
    jmp [cs:bx - 0x47f6]             ; 0x67ff
@..local.l273:
    cmp word [bp - 0x0004], byte 0x1a ; 0x6804
    je short @..local.l274           ; 0x6808
    jmp near @..local.l267           ; 0x680a
@..local.l274:
    cmp word [data_8450], byte 0     ; 0x680d
    je short @..local.l275           ; 0x6812
    push word [data_844c]            ; 0x6814
    push word [data_844e]            ; 0x6818
    call ds_dispatch_d91b            ; 0x681c
    add sp, byte 4                   ; 0x681f
    mov ax, 0                        ; 0x6822
    push ax                          ; 0x6825
    call ds_dispatch_d907            ; 0x6826
    pop cx                           ; 0x6829
@..local.l275:
    mov ax, 0xf                      ; 0x682a
    push ax                          ; 0x682d
    call ds_dispatch_c12a            ; 0x682e
    pop cx                           ; 0x6831
    mov ax, 0                        ; 0x6832
    push ax                          ; 0x6835
    mov ax, 1                        ; 0x6836
    push ax                          ; 0x6839
    push word [data_940c]            ; 0x683a
    push word [data_940a]            ; 0x683e
    call ds_dispatch_e942            ; 0x6842
    add sp, byte 8                   ; 0x6845
    mov ax, 0                        ; 0x6848
    push ax                          ; 0x684b
    mov ax, 1                        ; 0x684c
    push ax                          ; 0x684f
    push word [data_9404]            ; 0x6850
    push word [data_9402]            ; 0x6854
    call ds_dispatch_e942            ; 0x6858
    add sp, byte 8                   ; 0x685b
    mov ax, 0                        ; 0x685e
    push ax                          ; 0x6861
    mov ax, 1                        ; 0x6862
    push ax                          ; 0x6865
    push word [data_9400]            ; 0x6866
    push word [data_93fe]            ; 0x686a
    call ds_dispatch_e942            ; 0x686e
    add sp, byte 8                   ; 0x6871
    mov ax, 0                        ; 0x6874
    push ax                          ; 0x6877
    mov ax, 1                        ; 0x6878
    push ax                          ; 0x687b
    push word [data_93fc]            ; 0x687c
    push word [data_93fa]            ; 0x6880
    call ds_dispatch_e942            ; 0x6884
    add sp, byte 8                   ; 0x6887
    mov ax, 0                        ; 0x688a
    push ax                          ; 0x688d
    mov ax, 1                        ; 0x688e
    push ax                          ; 0x6891
    push word [data_93f8]            ; 0x6892
    push word [data_93f6]            ; 0x6896
    call ds_dispatch_e942            ; 0x689a
    add sp, byte 8                   ; 0x689d
    mov ax, 0                        ; 0x68a0
    push ax                          ; 0x68a3
    mov ax, 1                        ; 0x68a4
    push ax                          ; 0x68a7
    push word [data_93f4]            ; 0x68a8
    push word [data_93f2]            ; 0x68ac
    call ds_dispatch_e942            ; 0x68b0
    add sp, byte 8                   ; 0x68b3
    mov ax, 0                        ; 0x68b6
    push ax                          ; 0x68b9
    mov ax, 1                        ; 0x68ba
    push ax                          ; 0x68bd
    push word [data_93f0]            ; 0x68be
    push word [data_93ee]            ; 0x68c2
    call ds_dispatch_e942            ; 0x68c6
    add sp, byte 8                   ; 0x68c9
    mov ax, 0                        ; 0x68cc
    push ax                          ; 0x68cf
    mov ax, 1                        ; 0x68d0
    push ax                          ; 0x68d3
    push word [bp - 0x0012]          ; 0x68d4
    push word [bp - 0x0014]          ; 0x68d7
    call ds_dispatch_e942            ; 0x68da
    add sp, byte 8                   ; 0x68dd
    call api_idx_000e                ; 0x68e0
    cmp word [data_905e], byte 0x0d  ; 0x68e3
    jne short @..local.l278          ; 0x68e8
    mov ax, 1                        ; 0x68ea
    push ax                          ; 0x68ed
    mov ax, 0xa                      ; 0x68ee
    push ax                          ; 0x68f1
    push ax                          ; 0x68f2
    call ds_dispatch_d6dc            ; 0x68f3
    add sp, byte 6                   ; 0x68f6
    mov ax, 1                        ; 0x68f9
    push ax                          ; 0x68fc
    mov ax, 0xb                      ; 0x68fd
    push ax                          ; 0x6900
    push ax                          ; 0x6901
    call ds_dispatch_d6dc            ; 0x6902
    add sp, byte 6                   ; 0x6905
    mov ax, 1                        ; 0x6908
    push ax                          ; 0x690b
    mov ax, 0xc                      ; 0x690c
    push ax                          ; 0x690f
    push ax                          ; 0x6910
    call ds_dispatch_d6dc            ; 0x6911
    add sp, byte 6                   ; 0x6914
    mov ax, 7                        ; 0x6917
    push ax                          ; 0x691a
    mov ax, 9                        ; 0x691b
    push ax                          ; 0x691e
    call ds_dispatch_d61c            ; 0x691f
    add sp, byte 4                   ; 0x6922
    mov word [bp - 0x0002], 0xf      ; 0x6925
@..local.l276:
    mov ax, word [bp - 0x0002]       ; 0x692a
    shl ax, 1                        ; 0x692d
    mov bx, ax                       ; 0x692f
    add bx, bp                       ; 0x6931
    cmp word [bx - 0x002a], strict word 0xff ; 0x6933
    je short @..local.l277           ; 0x6938
    push word [bp - 0x0002]          ; 0x693a
    push word [bx - 0x002a]          ; 0x693d
    call ds_dispatch_d61c            ; 0x6940
    add sp, byte 4                   ; 0x6943
@..local.l277:
    inc word [bp - 0x0002]           ; 0x6946
    mov ax, word [bp - 0x0002]       ; 0x6949
    cmp ax, strict word 0x12         ; 0x694c
    jl short @..local.l276           ; 0x694f
    jmp short @..local.l279          ; 0x6951
@..local.l278:
    mov ax, 1                        ; 0x6953
    push ax                          ; 0x6956
    call ds_dispatch_c12a            ; 0x6957
    pop cx                           ; 0x695a
    mov ax, data_0002                ; 0x695b
    push ax                          ; 0x695e
    call ds_dispatch_c12a            ; 0x695f
    pop cx                           ; 0x6962
@..local.l279:
    mov ax, 0xc7                     ; 0x6963
    push ax                          ; 0x6966
    mov ax, 0x13f                    ; 0x6967
    push ax                          ; 0x696a
    mov ax, 0                        ; 0x696b
    push ax                          ; 0x696e
    push ax                          ; 0x696f
    call ds_dispatch_e8da            ; 0x6970
    add sp, byte 8                   ; 0x6973
    ret                              ; 0x6976
api_idx_002a:
    mov ax, 0xffd6                   ; 0x6977
    call ds_dispatch_f40b            ; 0x697a
    mov ax, 0                        ; 0x697d
    push ax                          ; 0x6980
    mov ax, 0x28                     ; 0x6981
    push ax                          ; 0x6984
    lea ax, word [bp - 0x002a]       ; 0x6985
    push ax                          ; 0x6988
    call ds_dispatch_f306            ; 0x6989
    add sp, byte 6                   ; 0x698c
    push word [bp + 0x4]             ; 0x698f
    lea ax, word [bp - 0x002a]       ; 0x6992
    push ax                          ; 0x6995
    call ds_dispatch_f364            ; 0x6996
    add sp, byte 4                   ; 0x6999
    mov ax, 0x2f                     ; 0x699c
    push ax                          ; 0x699f
    lea ax, word [bp - 0x002a]       ; 0x69a0
    push ax                          ; 0x69a3
    call ds_dispatch_ee4a            ; 0x69a4
    add sp, byte 4                   ; 0x69a7
    mov word [bp - 0x0002], ax       ; 0x69aa
    cmp ax, strict word 0xffff       ; 0x69ad
    jne short @..api_idx_002a.l1     ; 0x69b0
    lea ax, word [bp - 0x002a]       ; 0x69b2
    push ax                          ; 0x69b5
    call ds_dispatch_fa90            ; 0x69b6
    pop cx                           ; 0x69b9
    mov word [bp - 0x0002], ax       ; 0x69ba
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x69bd
    jle short @..api_idx_002a.l2     ; 0x69c1
    mov word [bp - 0x0002], 0xa      ; 0x69c3
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x69c8
    add bx, bp                       ; 0x69cb
    mov byte [bx - 0x002a], 0        ; 0x69cd
    mov byte [bx - 0x001f], 0        ; 0x69d1
    mov ax, 0                        ; 0x69d5
    push ax                          ; 0x69d8
    push word [bp + 0xa]             ; 0x69d9
    call ds_dispatch_e823            ; 0x69dc
    add sp, byte 4                   ; 0x69df
    push word [bp + 0x8]             ; 0x69e2
    push word [bp + 0x6]             ; 0x69e5
    call ds_dispatch_e809            ; 0x69e8
    add sp, byte 4                   ; 0x69eb
    mov ax, 0                        ; 0x69ee
    push ax                          ; 0x69f1
    lea ax, word [bp - 0x002a]       ; 0x69f2
    push ax                          ; 0x69f5
    call ds_dispatch_e84e            ; 0x69f6
    add sp, byte 4                   ; 0x69f9
    mov ax, word [bp + 0x8]          ; 0x69fc
    add ax, strict word 6            ; 0x69ff
    push ax                          ; 0x6a02
    push word [bp + 0x6]             ; 0x6a03
    call ds_dispatch_e809            ; 0x6a06
    add sp, byte 4                   ; 0x6a09
    mov ax, 0                        ; 0x6a0c
    push ax                          ; 0x6a0f
    mov ax, word [bp - 0x0002]       ; 0x6a10
    lea cx, word [bp - 0x0029]       ; 0x6a13
    add ax, cx                       ; 0x6a16
    push ax                          ; 0x6a18
    call ds_dispatch_e84e            ; 0x6a19
    add sp, byte 4                   ; 0x6a1c
    ret                              ; 0x6a1f
api_idx_0080:
    mov ax, 0xff80                   ; 0x6a20
    call ds_dispatch_f40b            ; 0x6a23
    mov ax, 0                        ; 0x6a26
    push ax                          ; 0x6a29
    push ax                          ; 0x6a2a
    push word [data_93fc]            ; 0x6a2b
    push word [data_93fa]            ; 0x6a2f
    call ds_dispatch_e942            ; 0x6a33
    add sp, byte 8                   ; 0x6a36
    mov ax, 0                        ; 0x6a39
    push ax                          ; 0x6a3c
    push ax                          ; 0x6a3d
    push word [data_9400]            ; 0x6a3e
    push word [data_93fe]            ; 0x6a42
    call ds_dispatch_e942            ; 0x6a46
    add sp, byte 8                   ; 0x6a49
    push word [bp + 0x4]             ; 0x6a4c
    call api_idx_0012                ; 0x6a4f
    pop cx                           ; 0x6a52
    mov si, ax                       ; 0x6a53
    lea di, word [bp - 0x0018]       ; 0x6a55
    mov cx, ds                       ; 0x6a58
    mov es, cx                       ; 0x6a5a
    mov cx, 7                        ; 0x6a5c
    rep movsw                        ; 0x6a5f
    mov ax, 0x248                    ; 0x6a61
    imul word [bp + 0x4]             ; 0x6a64
    mov bx, ax                       ; 0x6a67
    mov al, byte [bx + 0x5dab]       ; 0x6a69
    cbw                              ; 0x6a6d
    add ax, word [bp - 0x0018]       ; 0x6a6e
    mov word [bp - 0x000a], ax       ; 0x6a71
    mov al, byte [bx + 0x5dac]       ; 0x6a74
    cbw                              ; 0x6a78
    mov cx, ax                       ; 0x6a79
    mov ax, word [bp - 0x000a]       ; 0x6a7b
    add cx, ax                       ; 0x6a7e
    mov word [bp - 0x0008], cx       ; 0x6a80
    mov al, byte [bx + 0x5daa]       ; 0x6a83
    cbw                              ; 0x6a87
    add ax, cx                       ; 0x6a88
    mov word [bp - 0x0006], ax       ; 0x6a8a
    lea ax, word [bp - 0x0068]       ; 0x6a8d
    push ax                          ; 0x6a90
    mov ax, 0xd8                     ; 0x6a91
    push ax                          ; 0x6a94
    call ds_dispatch_b53b            ; 0x6a95
    add sp, byte 4                   ; 0x6a98
    lea ax, word [bp - 0x0068]       ; 0x6a9b
    push ax                          ; 0x6a9e
    call ds_dispatch_fa90            ; 0x6a9f
    pop cx                           ; 0x6aa2
    mov word [bp - 0x0004], ax       ; 0x6aa3
    mov bx, ax                       ; 0x6aa6
    inc word [bp - 0x0004]           ; 0x6aa8
    add bx, bp                       ; 0x6aab
    mov byte [bx - 0x0068], 0x20     ; 0x6aad
    cmp word [bp - 0x0006], byte 0   ; 0x6ab1
    jle short @..api_idx_0080.l1     ; 0x6ab5
    mov bx, word [bp - 0x0004]       ; 0x6ab7
    inc word [bp - 0x0004]           ; 0x6aba
    add bx, bp                       ; 0x6abd
    mov byte [bx - 0x0068], 0x2b     ; 0x6abf
@..api_idx_0080.l1:
    mov ax, word [bp - 0x0004]       ; 0x6ac3
    lea cx, word [bp - 0x0068]       ; 0x6ac6
    add ax, cx                       ; 0x6ac9
    push ax                          ; 0x6acb
    push word [bp - 0x0006]          ; 0x6acc
    call ds_dispatch_b27d            ; 0x6acf
    add sp, byte 4                   ; 0x6ad2
    lea ax, word [bp - 0x0068]       ; 0x6ad5
    push ax                          ; 0x6ad8
    call ds_dispatch_fa90            ; 0x6ad9
    pop cx                           ; 0x6adc
    mov word [bp - 0x0004], ax       ; 0x6add
    mov bx, ax                       ; 0x6ae0
    inc word [bp - 0x0004]           ; 0x6ae2
    add bx, bp                       ; 0x6ae5
    mov byte [bx - 0x0068], 0x20     ; 0x6ae7
    mov bx, word [bp - 0x0004]       ; 0x6aeb
    inc word [bp - 0x0004]           ; 0x6aee
    add bx, bp                       ; 0x6af1
    mov byte [bx - 0x0068], 0x28     ; 0x6af3
    cmp word [bp - 0x0008], byte 0   ; 0x6af7
    jl short @..api_idx_0080.l2      ; 0x6afb
    mov bx, word [bp - 0x0004]       ; 0x6afd
    inc word [bp - 0x0004]           ; 0x6b00
    add bx, bp                       ; 0x6b03
    mov byte [bx - 0x0068], 0x2b     ; 0x6b05
@..api_idx_0080.l2:
    mov ax, word [bp - 0x0004]       ; 0x6b09
    lea cx, word [bp - 0x0068]       ; 0x6b0c
    add ax, cx                       ; 0x6b0f
    push ax                          ; 0x6b11
    push word [bp - 0x0008]          ; 0x6b12
    call ds_dispatch_b27d            ; 0x6b15
    add sp, byte 4                   ; 0x6b18
    lea ax, word [bp - 0x0068]       ; 0x6b1b
    push ax                          ; 0x6b1e
    call ds_dispatch_fa90            ; 0x6b1f
    pop cx                           ; 0x6b22
    mov word [bp - 0x0004], ax       ; 0x6b23
    mov bx, ax                       ; 0x6b26
    inc word [bp - 0x0004]           ; 0x6b28
    add bx, bp                       ; 0x6b2b
    mov byte [bx - 0x0068], 0x29     ; 0x6b2d
    mov bx, word [bp - 0x0004]       ; 0x6b31
    add bx, bp                       ; 0x6b34
    mov byte [bx - 0x0068], 0        ; 0x6b36
    mov ax, 0                        ; 0x6b3a
    push ax                          ; 0x6b3d
    mov ax, 0xeb                     ; 0x6b3e
    push ax                          ; 0x6b41
    call ds_dispatch_e823            ; 0x6b42
    add sp, byte 4                   ; 0x6b45
    mov ax, 0x1e                     ; 0x6b48
    push ax                          ; 0x6b4b
    lea ax, word [bp - 0x0068]       ; 0x6b4c
    push ax                          ; 0x6b4f
    call ds_dispatch_fa90            ; 0x6b50
    pop cx                           ; 0x6b53
    mov cx, 6                        ; 0x6b54
    imul cx                          ; 0x6b57
    mov cx, data_0002                ; 0x6b59
    cwd                              ; 0x6b5c
    idiv cx                          ; 0x6b5d
    mov cx, ax                       ; 0x6b5f
    mov ax, 0x10e                    ; 0x6b61
    sub ax, cx                       ; 0x6b64
    push ax                          ; 0x6b66
    call ds_dispatch_e809            ; 0x6b67
    add sp, byte 4                   ; 0x6b6a
    mov ax, 0                        ; 0x6b6d
    push ax                          ; 0x6b70
    lea ax, word [bp - 0x0068]       ; 0x6b71
    push ax                          ; 0x6b74
    call ds_dispatch_e84e            ; 0x6b75
    add sp, byte 4                   ; 0x6b78
    mov word [bp - 0x0074], 0x114    ; 0x6b7b
    mov word [bp - 0x0080], 0x2e     ; 0x6b80
    mov word [bp - 0x0072], 0x114    ; 0x6b85
    mov word [bp - 0x007e], data_0044 ; 0x6b8a
    mov word [bp - 0x0070], 0x114    ; 0x6b8f
    mov word [bp - 0x007c], 0x5a     ; 0x6b94
    mov word [bp - 0x006e], 0x126    ; 0x6b99
    mov word [bp - 0x007a], 0x4f     ; 0x6b9e
    mov word [bp - 0x006c], 0x114    ; 0x6ba3
    mov word [bp - 0x0078], 0x70     ; 0x6ba8
    mov word [bp - 0x0002], 0        ; 0x6bad
@..api_idx_0080.l3:
    mov ax, word [bp - 0x0002]       ; 0x6bb2
    shl ax, 1                        ; 0x6bb5
    mov bx, ax                       ; 0x6bb7
    add bx, bp                       ; 0x6bb9
    push word [bx - 0x0080]          ; 0x6bbb
    mov bx, ax                       ; 0x6bbe
    add bx, bp                       ; 0x6bc0
    push word [bx - 0x0074]          ; 0x6bc2
    call ds_dispatch_e809            ; 0x6bc5
    add sp, byte 4                   ; 0x6bc8
    mov ax, 0                        ; 0x6bcb
    push ax                          ; 0x6bce
    mov ax, 0x248                    ; 0x6bcf
    imul word [bp + 0x4]             ; 0x6bd2
    add ax, word [bp - 0x0002]       ; 0x6bd5
    mov bx, ax                       ; 0x6bd8
    mov al, byte [bx + 0x5d4b]       ; 0x6bda
    sub ah, ah                       ; 0x6bde
    cmp ax, 0xff                     ; 0x6be0
    je short @..api_idx_0080.l4      ; 0x6be3
    mov ax, 0x5f                     ; 0x6be5
    jmp short @..api_idx_0080.l5     ; 0x6be8
@..api_idx_0080.l4:
    mov ax, 0xeb                     ; 0x6bea
@..api_idx_0080.l5:
    push ax                          ; 0x6bed
    call ds_dispatch_e823            ; 0x6bee
    add sp, byte 4                   ; 0x6bf1
    mov ax, 0x248                    ; 0x6bf4
    imul word [bp + 0x4]             ; 0x6bf7
    add ax, word [bp - 0x0002]       ; 0x6bfa
    mov bx, ax                       ; 0x6bfd
    mov al, byte [bx + 0x5dad]       ; 0x6bff
    cbw                              ; 0x6c03
    add ax, word [bp - 0x0008]       ; 0x6c04
    mov word [bp - 0x0006], ax       ; 0x6c07
    cmp ax, strict word 0            ; 0x6c0a
    jl short @..api_idx_0080.l6      ; 0x6c0d
    mov ax, 0                        ; 0x6c0f
    push ax                          ; 0x6c12
    mov ax, 0x2b                     ; 0x6c13
    push ax                          ; 0x6c16
    call ds_dispatch_e830            ; 0x6c17
    add sp, byte 4                   ; 0x6c1a
@..api_idx_0080.l6:
    lea ax, word [bp - 0x0068]       ; 0x6c1d
    push ax                          ; 0x6c20
    push word [bp - 0x0006]          ; 0x6c21
    call ds_dispatch_b27d            ; 0x6c24
    add sp, byte 4                   ; 0x6c27
    mov ax, 0                        ; 0x6c2a
    push ax                          ; 0x6c2d
    lea ax, word [bp - 0x0068]       ; 0x6c2e
    push ax                          ; 0x6c31
    call ds_dispatch_e84e            ; 0x6c32
    add sp, byte 4                   ; 0x6c35
    inc word [bp - 0x0002]           ; 0x6c38
    mov ax, word [bp - 0x0002]       ; 0x6c3b
    cmp ax, strict word 5            ; 0x6c3e
    jge short @..local.l280          ; 0x6c41
    jmp near @..api_idx_0080.l3      ; 0x6c43
@..local.l280:
    ret                              ; 0x6c46
api_idx_0004_10:
    mov ax, 0xfffc                   ; 0x6c47
    call ds_dispatch_f40b            ; 0x6c4a
    mov ax, word [bp + 0x6]          ; 0x6c4d
    mov cx, 5                        ; 0x6c50
    cwd                              ; 0x6c53
    idiv cx                          ; 0x6c54
    mov cx, 0xd                      ; 0x6c56
    imul cx                          ; 0x6c59
    mov cx, 6                        ; 0x6c5b
    imul cx                          ; 0x6c5e
    push ax                          ; 0x6c60
    mov ax, word [bp + 0x6]          ; 0x6c61
    mov cx, 5                        ; 0x6c64
    cwd                              ; 0x6c67
    idiv cx                          ; 0x6c68
    mov cx, ax                       ; 0x6c6a
    pop ax                           ; 0x6c6c
    add ax, cx                       ; 0x6c6d
    add ax, strict word 4            ; 0x6c6f
    mov word [bp - 0x0002], ax       ; 0x6c72
    shl dx, 1                        ; 0x6c75
    mov ax, dx                       ; 0x6c77
    mov cx, 6                        ; 0x6c79
    imul cx                          ; 0x6c7c
    push ax                          ; 0x6c7e
    mov ax, word [bp + 0x6]          ; 0x6c7f
    mov cx, 5                        ; 0x6c82
    cwd                              ; 0x6c85
    idiv cx                          ; 0x6c86
    mov cx, dx                       ; 0x6c88
    shl cx, 1                        ; 0x6c8a
    pop ax                           ; 0x6c8c
    add ax, cx                       ; 0x6c8d
    add ax, strict word 0x72         ; 0x6c8f
    mov word [bp - 0x0004], ax       ; 0x6c92
    push ax                          ; 0x6c95
    push word [bp - 0x0002]          ; 0x6c96
    call ds_dispatch_e809            ; 0x6c99
    add sp, byte 4                   ; 0x6c9c
    mov ax, 4                        ; 0x6c9f
    push ax                          ; 0x6ca2
    mov bx, word [bp + 0x8]          ; 0x6ca3
    mov al, byte [bx + 0x5]          ; 0x6ca6
    sub ah, ah                       ; 0x6ca9
    push ax                          ; 0x6cab
    call ds_dispatch_e830            ; 0x6cac
    add sp, byte 4                   ; 0x6caf
    push word [bp + 0xc]             ; 0x6cb2
    push word [bp - 0x0004]          ; 0x6cb5
    mov ax, word [bp - 0x0002]       ; 0x6cb8
    add ax, strict word 0xe          ; 0x6cbb
    push ax                          ; 0x6cbe
    push word [bp + 0xa]             ; 0x6cbf
    call api_idx_002a                ; 0x6cc2
    add sp, byte 8                   ; 0x6cc5
    mov bx, word [bp + 0x8]          ; 0x6cc8
    mov al, byte [bx + 0x4]          ; 0x6ccb
    sub ah, ah                       ; 0x6cce
    mov bx, ax                       ; 0x6cd0
    cmp byte [bx + 0x60e], 1         ; 0x6cd2
    jne short @..api_idx_0004_10.l1  ; 0x6cd7
    mov ax, word [bp - 0x0004]       ; 0x6cd9
    add ax, strict word 6            ; 0x6cdc
    push ax                          ; 0x6cdf
    mov ax, word [bp - 0x0002]       ; 0x6ce0
    add ax, strict word 0x38         ; 0x6ce3
    push ax                          ; 0x6ce6
    call ds_dispatch_e809            ; 0x6ce7
    add sp, byte 4                   ; 0x6cea
    mov ax, 0                        ; 0x6ced
    push ax                          ; 0x6cf0
    mov ax, data_0002                ; 0x6cf1
    push ax                          ; 0x6cf4
    call ds_dispatch_e823            ; 0x6cf5
    add sp, byte 4                   ; 0x6cf8
    mov ax, 0                        ; 0x6cfb
    push ax                          ; 0x6cfe
    mov ax, 3                        ; 0x6cff
    push ax                          ; 0x6d02
    mov bx, word [bp + 0x8]          ; 0x6d03
    mov al, byte [bx + 0x6]          ; 0x6d06
    sub ah, ah                       ; 0x6d09
    push ax                          ; 0x6d0b
    call ds_dispatch_b2e7            ; 0x6d0c
    add sp, byte 6                   ; 0x6d0f
@..api_idx_0004_10.l1:
    ret                              ; 0x6d12
api_idx_004c:
    mov ax, 0xffb4                   ; 0x6d13
    call ds_dispatch_f40b            ; 0x6d16
    mov ax, 0                        ; 0x6d19
    push ax                          ; 0x6d1c
    push ax                          ; 0x6d1d
    push word [data_93f8]            ; 0x6d1e
    push word [data_93f6]            ; 0x6d22
    call ds_dispatch_e942            ; 0x6d26
    add sp, byte 8                   ; 0x6d29
    cmp word [api_idx_0016], byte 0  ; 0x6d2c
    je short @..api_idx_004c.l1      ; 0x6d31
    mov ax, 0xac                     ; 0x6d33
    push ax                          ; 0x6d36
    mov ax, 0xa0                     ; 0x6d37
    push ax                          ; 0x6d3a
    call ds_dispatch_e809            ; 0x6d3b
    add sp, byte 4                   ; 0x6d3e
    mov ax, 4                        ; 0x6d41
    push ax                          ; 0x6d44
    mov ax, 0x63                     ; 0x6d45
    push ax                          ; 0x6d48
    call ds_dispatch_e830            ; 0x6d49
    add sp, byte 4                   ; 0x6d4c
@..api_idx_004c.l1:
    cmp word [data_9614], byte 0     ; 0x6d4f
    jne short @..api_idx_004c.l2     ; 0x6d54
    cmp word [api_idx_0016], byte 0  ; 0x6d56
    je short @..api_idx_004c.l5      ; 0x6d5b
@..api_idx_004c.l2:
    mov word [bp - 0x0002], 0        ; 0x6d5d
@..api_idx_004c.l3:
    mov ax, 0x18                     ; 0x6d62
    push ax                          ; 0x6d65
    mov ax, 0xe                      ; 0x6d66
    imul word [bp - 0x0002]          ; 0x6d69
    add ax, strict word 0x70         ; 0x6d6c
    push ax                          ; 0x6d6f
    mov ax, 0x9f                     ; 0x6d70
    push ax                          ; 0x6d73
    mov ax, 0xe                      ; 0x6d74
    imul word [bp - 0x0002]          ; 0x6d77
    add ax, strict word 0x70         ; 0x6d7a
    push ax                          ; 0x6d7d
    mov ax, 1                        ; 0x6d7e
    push ax                          ; 0x6d81
    call ds_dispatch_e901            ; 0x6d82
    add sp, byte 0x0a                ; 0x6d85
    inc word [bp - 0x0002]           ; 0x6d88
    mov ax, word [bp - 0x0002]       ; 0x6d8b
    cmp ax, strict word 6            ; 0x6d8e
    jl short @..api_idx_004c.l3      ; 0x6d91
    mov word [bp - 0x0002], 0        ; 0x6d93
@..api_idx_004c.l4:
    mov ax, 0x18                     ; 0x6d98
    push ax                          ; 0x6d9b
    mov ax, 0xb6                     ; 0x6d9c
    push ax                          ; 0x6d9f
    mov ax, 0x4f                     ; 0x6da0
    imul word [bp - 0x0002]          ; 0x6da3
    inc ax                           ; 0x6da6
    push ax                          ; 0x6da7
    mov ax, 0x70                     ; 0x6da8
    push ax                          ; 0x6dab
    mov ax, 0x4f                     ; 0x6dac
    imul word [bp - 0x0002]          ; 0x6daf
    inc ax                           ; 0x6db2
    push ax                          ; 0x6db3
    call ds_dispatch_e901            ; 0x6db4
    add sp, byte 0x0a                ; 0x6db7
    inc word [bp - 0x0002]           ; 0x6dba
    mov ax, word [bp - 0x0002]       ; 0x6dbd
    cmp ax, strict word 3            ; 0x6dc0
    jl short @..api_idx_004c.l4      ; 0x6dc3
@..api_idx_004c.l5:
    mov word [bp - 0x0002], 0        ; 0x6dc5
@..api_idx_004c.l6:
    mov ax, 0x248                    ; 0x6dca
    imul word [bp + 0x4]             ; 0x6dcd
    push ax                          ; 0x6dd0
    mov ax, 0x78                     ; 0x6dd1
    imul word [api_idx_0016]         ; 0x6dd4
    mov cx, ax                       ; 0x6dd8
    pop ax                           ; 0x6dda
    add ax, cx                       ; 0x6ddb
    push ax                          ; 0x6ddd
    mov ax, 0xc                      ; 0x6dde
    imul word [bp - 0x0002]          ; 0x6de1
    mov cx, ax                       ; 0x6de4
    pop ax                           ; 0x6de6
    add ax, cx                       ; 0x6de7
    mov bx, ax                       ; 0x6de9
    cmp word [bx + 0x5c34], byte 0   ; 0x6deb
    jg short @..api_idx_004c.l7      ; 0x6df0
    jmp near @..local.l281           ; 0x6df2
@..api_idx_004c.l7:
    cmp word [data_967a], byte 0     ; 0x6df5
    je short @..api_idx_004c.l8      ; 0x6dfa
    jmp near @..api_idx_004c.l11     ; 0x6dfc
@..api_idx_004c.l8:
    mov ax, 0                        ; 0x6dff
    push ax                          ; 0x6e02
    push word [bx + 0x5c34]          ; 0x6e03
    lea ax, word [bp - 0x004c]       ; 0x6e07
    push ax                          ; 0x6e0a
    mov ax, 1                        ; 0x6e0b
    push ax                          ; 0x6e0e
    call ds_dispatch_b63c            ; 0x6e0f
    add sp, byte 8                   ; 0x6e12
    mov ax, 0x248                    ; 0x6e15
    imul word [bp + 0x4]             ; 0x6e18
    push ax                          ; 0x6e1b
    mov ax, 0x78                     ; 0x6e1c
    imul word [api_idx_0016]         ; 0x6e1f
    mov cx, ax                       ; 0x6e23
    pop ax                           ; 0x6e25
    add ax, cx                       ; 0x6e26
    push ax                          ; 0x6e28
    mov ax, 0xc                      ; 0x6e29
    imul word [bp - 0x0002]          ; 0x6e2c
    mov cx, ax                       ; 0x6e2f
    pop ax                           ; 0x6e31
    add ax, cx                       ; 0x6e32
    mov bx, ax                       ; 0x6e34
    mov al, byte [bx + 0x5c3b]       ; 0x6e36
    sub ah, ah                       ; 0x6e3a
    test ax, 0x80                    ; 0x6e3c
    je short @..api_idx_004c.l9      ; 0x6e3f
    lea ax, word [bp - 0x004c]       ; 0x6e41
    push ax                          ; 0x6e44
    mov ax, 0x16                     ; 0x6e45
    imul word [bp - 0x0002]          ; 0x6e48
    add ax, 0x9436                   ; 0x6e4b
    push ax                          ; 0x6e4e
    call ds_dispatch_f364            ; 0x6e4f
    add sp, byte 4                   ; 0x6e52
    jmp short @..api_idx_004c.l10    ; 0x6e55
@..api_idx_004c.l9:
    mov ax, 0x16                     ; 0x6e57
    imul word [bp - 0x0002]          ; 0x6e5a
    add ax, 0x9436                   ; 0x6e5d
    push ax                          ; 0x6e60
    mov al, byte [bp - 0x0013]       ; 0x6e61
    sub ah, ah                       ; 0x6e64
    add ax, 0x1770                   ; 0x6e66
    push ax                          ; 0x6e69
    call ds_dispatch_b53b            ; 0x6e6a
    add sp, byte 4                   ; 0x6e6d
@..api_idx_004c.l10:
    mov al, byte [bp - 0x0012]       ; 0x6e70
    sub ah, ah                       ; 0x6e73
    mov cx, word [bp - 0x0002]       ; 0x6e75
    shl cx, 1                        ; 0x6e78
    mov bx, cx                       ; 0x6e7a
    mov word [bx - 0x6a00], ax       ; 0x6e7c
@..api_idx_004c.l11:
    mov ax, word [bp - 0x0002]       ; 0x6e80
    shl ax, 1                        ; 0x6e83
    mov bx, ax                       ; 0x6e85
    mov word [bx - 0x6a14], 0x69     ; 0x6e87
    cmp word [api_idx_0016], byte 0  ; 0x6e8d
    jne short @..api_idx_004c.l14    ; 0x6e92
    mov word [bp - 0x0004], 0        ; 0x6e94
@..api_idx_004c.l12:
    mov ax, 0x248                    ; 0x6e99
    imul word [bp + 0x4]             ; 0x6e9c
    add ax, word [bp - 0x0004]       ; 0x6e9f
    mov bx, ax                       ; 0x6ea2
    mov al, byte [bx + 0x5d48]       ; 0x6ea4
    sub ah, ah                       ; 0x6ea8
    cmp ax, word [bp - 0x0002]       ; 0x6eaa
    jne short @..api_idx_004c.l13    ; 0x6ead
    mov ax, word [bp - 0x0004]       ; 0x6eaf
    shl ax, 1                        ; 0x6eb2
    mov bx, ax                       ; 0x6eb4
    db 0x8b, 0x87, 0x1e, 0x00 ; mov ax, word [bx + 0x1e]
    mov cx, word [bp - 0x0002]       ; 0x6eba
    shl cx, 1                        ; 0x6ebd
    mov bx, cx                       ; 0x6ebf
    mov word [bx - 0x6a14], ax       ; 0x6ec1
@..api_idx_004c.l13:
    inc word [bp - 0x0004]           ; 0x6ec5
    mov ax, word [bp - 0x0004]       ; 0x6ec8
    cmp ax, strict word 8            ; 0x6ecb
    jl short @..api_idx_004c.l12     ; 0x6ece
@..api_idx_004c.l14:
    mov ax, 0x248                    ; 0x6ed0
    imul word [bp + 0x4]             ; 0x6ed3
    push ax                          ; 0x6ed6
    mov ax, 0x78                     ; 0x6ed7
    imul word [api_idx_0016]         ; 0x6eda
    mov cx, ax                       ; 0x6ede
    pop ax                           ; 0x6ee0
    add ax, cx                       ; 0x6ee1
    push ax                          ; 0x6ee3
    mov ax, 0xc                      ; 0x6ee4
    imul word [bp - 0x0002]          ; 0x6ee7
    mov cx, ax                       ; 0x6eea
    pop ax                           ; 0x6eec
    add ax, cx                       ; 0x6eed
    mov bx, ax                       ; 0x6eef
    mov al, byte [bx + 0x5c3b]       ; 0x6ef1
    sub ah, ah                       ; 0x6ef5
    test ax, data_0002               ; 0x6ef7
    je short @..api_idx_004c.l15     ; 0x6efa
    mov ax, word [bp - 0x0002]       ; 0x6efc
    shl ax, 1                        ; 0x6eff
    mov bx, ax                       ; 0x6f01
    mov word [bx - 0x6a14], 0x55     ; 0x6f03
@..api_idx_004c.l15:
    mov ax, word [bp - 0x0002]       ; 0x6f09
    shl ax, 1                        ; 0x6f0c
    mov bx, ax                       ; 0x6f0e
    push word [bx - 0x6a14]          ; 0x6f10
    mov ax, 0x16                     ; 0x6f14
    imul word [bp - 0x0002]          ; 0x6f17
    add ax, 0x9436                   ; 0x6f1a
    push ax                          ; 0x6f1d
    mov ax, 0x248                    ; 0x6f1e
    imul word [bp + 0x4]             ; 0x6f21
    push ax                          ; 0x6f24
    mov ax, 0x78                     ; 0x6f25
    imul word [api_idx_0016]         ; 0x6f28
    mov cx, ax                       ; 0x6f2c
    pop ax                           ; 0x6f2e
    add ax, cx                       ; 0x6f2f
    push ax                          ; 0x6f31
    mov ax, 0xc                      ; 0x6f32
    imul word [bp - 0x0002]          ; 0x6f35
    mov cx, ax                       ; 0x6f38
    pop ax                           ; 0x6f3a
    add ax, cx                       ; 0x6f3b
    add ax, 0x5c34                   ; 0x6f3d
    push ax                          ; 0x6f40
    push word [bp - 0x0002]          ; 0x6f41
    push word [bp + 0x4]             ; 0x6f44
    call api_idx_0004_10             ; 0x6f47
    add sp, byte 0x0a                ; 0x6f4a
@..local.l281:
    inc word [bp - 0x0002]           ; 0x6f4d
    mov ax, word [bp - 0x0002]       ; 0x6f50
    cmp ax, strict word 0xa          ; 0x6f53
    jge short @..local.l282          ; 0x6f56
    jmp near @..api_idx_004c.l6      ; 0x6f58
@..local.l282:
    mov word [data_967a], 1          ; 0x6f5b
    ret                              ; 0x6f61
api_idx_009a:
    mov ax, 0xff66                   ; 0x6f62
    call ds_dispatch_f40b            ; 0x6f65
    mov ax, 0                        ; 0x6f68
    push ax                          ; 0x6f6b
    mov bx, word [bp + 0x6]          ; 0x6f6c
    push word [bx]                   ; 0x6f6f
    lea ax, word [bp - 0x004a]       ; 0x6f71
    push ax                          ; 0x6f74
    mov ax, 1                        ; 0x6f75
    push ax                          ; 0x6f78
    call ds_dispatch_b63c            ; 0x6f79
    add sp, byte 8                   ; 0x6f7c
    mov bx, word [bp + 0x6]          ; 0x6f7f
    cmp byte [bx + 0x6], 0           ; 0x6f82
    je short @..api_idx_009a.l1      ; 0x6f86
    mov al, byte [bx + 0x6]          ; 0x6f88
    cmp al, 0x63                     ; 0x6f8b
    ja short @..api_idx_009a.l1      ; 0x6f8d
    mov ax, word [bp + 0x8]          ; 0x6f8f
    shl ax, 1                        ; 0x6f92
    push ax                          ; 0x6f94
    mov al, byte [bp - 0x000f]       ; 0x6f95
    sub ah, ah                       ; 0x6f98
    mov cx, ax                       ; 0x6f9a
    pop ax                           ; 0x6f9c
    cmp ax, cx                       ; 0x6f9d
    jl short @..api_idx_009a.l1      ; 0x6f9f
    cmp word [bp - 0x0028], byte 0   ; 0x6fa1
    je short @..api_idx_009a.l1      ; 0x6fa5
    cmp byte [bp - 0x000c], 0        ; 0x6fa7
    jne short @..api_idx_009a.l1     ; 0x6fab
    cmp byte [bp - 0x000b], 0        ; 0x6fad
    jne short @..api_idx_009a.l1     ; 0x6fb1
    mov al, byte [bp - 0x0013]       ; 0x6fb3
    sub ah, ah                       ; 0x6fb6
    test ax, data_0002               ; 0x6fb8
    jne short @..api_idx_009a.l1     ; 0x6fbb
    mov al, byte [bp - 0x0012]       ; 0x6fbd
    sub ah, ah                       ; 0x6fc0
    mov bx, ax                       ; 0x6fc2
    cmp byte [bx + 0x60e], 1         ; 0x6fc4
    je short @..api_idx_009a.l1      ; 0x6fc9
    cmp byte [bp - 0x0012], 0xd      ; 0x6fcb
    jne short @..local.l283          ; 0x6fcf
@..api_idx_009a.l1:
    lea ax, word [bp - 0x009a]       ; 0x6fd1
    push ax                          ; 0x6fd5
    mov ax, 0x1d1                    ; 0x6fd6
    push ax                          ; 0x6fd9
    call ds_dispatch_b53b            ; 0x6fda
    add sp, byte 4                   ; 0x6fdd
    mov ax, 1                        ; 0x6fe0
    push ax                          ; 0x6fe3
    lea ax, word [bp - 0x009a]       ; 0x6fe4
    push ax                          ; 0x6fe8
    call api_idx_0004                ; 0x6fe9
    add sp, byte 4                   ; 0x6fec
    ret                              ; 0x6fef
@..local.l283:
    mov ax, word [bp + 0x8]          ; 0x6ff0
    shl ax, 1                        ; 0x6ff3
    push ax                          ; 0x6ff5
    mov al, byte [bp - 0x000f]       ; 0x6ff6
    sub ah, ah                       ; 0x6ff9
    mov cx, ax                       ; 0x6ffb
    pop ax                           ; 0x6ffd
    sub ax, cx                       ; 0x6ffe
    push ax                          ; 0x7000
    call ds_dispatch_b7a9            ; 0x7001
    pop cx                           ; 0x7004
    inc ax                           ; 0x7005
    mov word [bp - 0x0002], ax       ; 0x7006
    mov bx, word [bp + 0x6]          ; 0x7009
    mov al, byte [bx + 0x6]          ; 0x700c
    sub ah, ah                       ; 0x700f
    mov cx, ax                       ; 0x7011
    mov ax, word [bp - 0x0002]       ; 0x7013
    add cx, ax                       ; 0x7016
    mov ax, cx                       ; 0x7018
    cmp ax, strict word 0x64         ; 0x701a
    jge short @..local.l284          ; 0x701d
    mov al, byte [bx + 0x6]          ; 0x701f
    sub ah, ah                       ; 0x7022
    add ax, word [bp - 0x0002]       ; 0x7024
    mov byte [bx + 0x6], al          ; 0x7027
    jmp short @..local.l285          ; 0x702a
@..local.l284:
    mov byte [bx + 0x6], 0x63        ; 0x702c
@..local.l285:
    mov ax, 0x64                     ; 0x7030
    push ax                          ; 0x7033
    call ds_dispatch_b7a9            ; 0x7034
    pop cx                           ; 0x7037
    push ax                          ; 0x7038
    mov al, byte [bp - 0x000f]       ; 0x7039
    sub ah, ah                       ; 0x703c
    mov cx, ax                       ; 0x703e
    pop ax                           ; 0x7040
    cmp ax, cx                       ; 0x7041
    jge short @..local.l286          ; 0x7043
    mov bx, word [bp + 0x6]          ; 0x7045
    mov word [bx], 0                 ; 0x7048
    lea ax, word [bp - 0x009a]       ; 0x704c
    push ax                          ; 0x7050
    mov ax, 0x1d1                    ; 0x7051
    push ax                          ; 0x7054
    call ds_dispatch_b53b            ; 0x7055
    add sp, byte 4                   ; 0x7058
    mov ax, 1                        ; 0x705b
    push ax                          ; 0x705e
    lea ax, word [bp - 0x009a]       ; 0x705f
    push ax                          ; 0x7063
    call api_idx_0004                ; 0x7064
    add sp, byte 4                   ; 0x7067
    ret                              ; 0x706a
@..local.l286:
    ret                              ; 0x706b
api_idx_001a:
    mov ax, 0xffe6                   ; 0x706c
    call ds_dispatch_f40b            ; 0x706f
    lea ax, word [bp - 0x001a]       ; 0x7072
    push ax                          ; 0x7075
    mov ax, 0x1d7                    ; 0x7076
    push ax                          ; 0x7079
    call ds_dispatch_b53b            ; 0x707a
    add sp, byte 4                   ; 0x707d
    mov word [bp - 0x0002], 0        ; 0x7080
@..api_idx_001a.l1:
    mov ax, word [bp + 0x6]          ; 0x7085
    mov cx, 0xa                      ; 0x7088
    cwd                              ; 0x708b
    idiv cx                          ; 0x708c
    mov word [bp - 0x0004], dx       ; 0x708e
    mov word [bp + 0x6], ax          ; 0x7091
    add word [bp - 0x0006], dx       ; 0x7094
    mov ax, word [bp - 0x0002]       ; 0x7097
    imul word [bp - 0x0006]          ; 0x709a
    mov dx, word [bp - 0x0004]       ; 0x709d
    add ax, dx                       ; 0x70a0
    cwd                              ; 0x70a2
    idiv cx                          ; 0x70a3
    mov word [bp - 0x0004], dx       ; 0x70a5
    mov bx, dx                       ; 0x70a8
    add bx, bp                       ; 0x70aa
    mov al, byte [bx - 0x001a]       ; 0x70ac
    mov si, word [bp - 0x0002]       ; 0x70af
    mov bx, word [bp + 0x4]          ; 0x70b2
    mov byte [bx + si], al           ; 0x70b5
    inc word [bp - 0x0002]           ; 0x70b7
    mov ax, word [bp - 0x0002]       ; 0x70ba
    cmp ax, strict word 4            ; 0x70bd
    jl short @..api_idx_001a.l1      ; 0x70c0
    mov bx, word [bp + 0x4]          ; 0x70c2
    mov byte [bx + 0x4], 0           ; 0x70c5
    ret                              ; 0x70c9
math_loc_70ca:
    mov ax, 0xfe6c                   ; 0x70ca
    call ds_dispatch_f40b            ; 0x70cd
    mov word [bp - 0x0194], 0        ; 0x70d0
    cmp word [data_0e32], byte 0     ; 0x70d6
    je short @..math_loc_70ca.l1     ; 0x70db
    lea ax, word [bp - 0x000c]       ; 0x70dd
    push ax                          ; 0x70e0
    lea ax, word [bp - 0x000a]       ; 0x70e1
    push ax                          ; 0x70e4
    call ds_dispatch_f053            ; 0x70e5
    add sp, byte 4                   ; 0x70e8
    mov word [bp - 0x0194], ax       ; 0x70eb
@..math_loc_70ca.l1:
    mov ax, 0                        ; 0x70ef
    push ax                          ; 0x70f2
    mov bx, word [bp + 0x6]          ; 0x70f3
    push word [bx]                   ; 0x70f6
    lea ax, word [bp - 0x007a]       ; 0x70f8
    push ax                          ; 0x70fb
    mov ax, 1                        ; 0x70fc
    push ax                          ; 0x70ff
    call ds_dispatch_b63c            ; 0x7100
    add sp, byte 8                   ; 0x7103
    cmp word [bp + 0xa], byte 0      ; 0x7106
    je short @..local.l288           ; 0x710a
    mov ax, 3                        ; 0x710c
    imul word [bp + 0xa]             ; 0x710f
    push ax                          ; 0x7112
    mov al, byte [bp - 0x003f]       ; 0x7113
    sub ah, ah                       ; 0x7116
    mov cx, ax                       ; 0x7118
    pop ax                           ; 0x711a
    cmp ax, cx                       ; 0x711b
    jl short @..math_loc_70ca.l2     ; 0x711d
    mov bx, word [bp + 0x6]          ; 0x711f
    mov al, byte [bx + 0x7]          ; 0x7122
    sub ah, ah                       ; 0x7125
    or ax, 0x80                      ; 0x7127
    mov byte [bx + 0x7], al          ; 0x712a
    jmp short @..local.l287          ; 0x712d
@..math_loc_70ca.l2:
    lea ax, word [bp - 0x00f2]       ; 0x712f
    push ax                          ; 0x7133
    mov ax, 0x1d1                    ; 0x7134
    push ax                          ; 0x7137
    call ds_dispatch_b53b            ; 0x7138
    add sp, byte 4                   ; 0x713b
    mov ax, 1                        ; 0x713e
    push ax                          ; 0x7141
    lea ax, word [bp - 0x00f2]       ; 0x7142
    push ax                          ; 0x7146
    call api_idx_0004                ; 0x7147
    add sp, byte 4                   ; 0x714a
    mov ax, 0                        ; 0x714d
    ret                              ; 0x7150
@..local.l287:
    jmp short @..local.l289          ; 0x7151
@..local.l288:
    mov ax, 0x248                    ; 0x7153
    imul word [bp + 0x4]             ; 0x7156
    mov bx, ax                       ; 0x7159
    mov al, byte [bx + 0x5d84]       ; 0x715b
    sub ah, ah                       ; 0x715f
    mov cx, 5                        ; 0x7161
    cwd                              ; 0x7164
    idiv cx                          ; 0x7165
    push ax                          ; 0x7167
    mov al, byte [bp - 0x003f]       ; 0x7168
    sub ah, ah                       ; 0x716b
    mov cx, ax                       ; 0x716d
    pop ax                           ; 0x716f
    cmp ax, cx                       ; 0x7170
    jl short @..local.l289           ; 0x7172
    mov bx, word [bp + 0x6]          ; 0x7174
    mov al, byte [bx + 0x7]          ; 0x7177
    sub ah, ah                       ; 0x717a
    or ax, 0x80                      ; 0x717c
    mov byte [bx + 0x7], al          ; 0x717f
@..local.l289:
    mov bx, word [bp + 0x6]          ; 0x7182
    mov al, byte [bx + 0x7]          ; 0x7185
    sub ah, ah                       ; 0x7188
    test ax, 0x80                    ; 0x718a
    jne short @..local.l290          ; 0x718d
    mov ax, 0xffff                   ; 0x718f
    ret                              ; 0x7192
@..local.l290:
    lea ax, word [bp - 0x007a]       ; 0x7193
    push ax                          ; 0x7196
    push word [bp + 0x8]             ; 0x7197
    call ds_dispatch_f364            ; 0x719a
    add sp, byte 4                   ; 0x719d
    mov ax, 0                        ; 0x71a0
    push ax                          ; 0x71a3
    push ax                          ; 0x71a4
    push word [data_93f8]            ; 0x71a5
    push word [data_93f6]            ; 0x71a9
    call ds_dispatch_e942            ; 0x71ad
    add sp, byte 8                   ; 0x71b0
    mov word [bp - 0x000c], 0x72     ; 0x71b3
    mov word [bp - 0x000a], 0x1a     ; 0x71b8
    push word [bp - 0x000c]          ; 0x71bd
    push word [bp - 0x000a]          ; 0x71c0
    call ds_dispatch_e809            ; 0x71c3
    add sp, byte 4                   ; 0x71c6
    mov ax, 4                        ; 0x71c9
    push ax                          ; 0x71cc
    mov al, byte [bp - 0x0041]       ; 0x71cd
    sub ah, ah                       ; 0x71d0
    push ax                          ; 0x71d2
    call ds_dispatch_e830            ; 0x71d3
    add sp, byte 4                   ; 0x71d6
    add word [bp - 0x000a], byte 0x60 ; 0x71d9
    push word [bp - 0x000c]          ; 0x71dd
    push word [bp - 0x000a]          ; 0x71e0
    call ds_dispatch_e809            ; 0x71e3
    add sp, byte 4                   ; 0x71e6
    mov ax, 4                        ; 0x71e9
    push ax                          ; 0x71ec
    mov al, byte [bp - 0x0041]       ; 0x71ed
    sub ah, ah                       ; 0x71f0
    push ax                          ; 0x71f2
    call ds_dispatch_e830            ; 0x71f3
    add sp, byte 4                   ; 0x71f6
    mov word [bp - 0x000a], 0x50     ; 0x71f9
    mov ax, 0                        ; 0x71fe
    push ax                          ; 0x7201
    mov ax, 1                        ; 0x7202
    push ax                          ; 0x7205
    call ds_dispatch_e823            ; 0x7206
    add sp, byte 4                   ; 0x7209
    mov ax, 0                        ; 0x720c
    push ax                          ; 0x720f
    mov ax, 0x28                     ; 0x7210
    push ax                          ; 0x7213
    lea ax, word [bp - 0x00a2]       ; 0x7214
    push ax                          ; 0x7218
    call ds_dispatch_f306            ; 0x7219
    add sp, byte 6                   ; 0x721c
    lea ax, word [bp - 0x007a]       ; 0x721f
    push ax                          ; 0x7222
    lea ax, word [bp - 0x00a2]       ; 0x7223
    push ax                          ; 0x7227
    call ds_dispatch_f364            ; 0x7228
    add sp, byte 4                   ; 0x722b
    lea ax, word [bp - 0x00a2]       ; 0x722e
    push ax                          ; 0x7232
    call ds_dispatch_fa90            ; 0x7233
    pop cx                           ; 0x7236
    dec ax                           ; 0x7237
    mov word [bp - 0x0004], ax       ; 0x7238
    mov ax, 0x2f                     ; 0x723b
    push ax                          ; 0x723e
    lea ax, word [bp - 0x00a2]       ; 0x723f
    push ax                          ; 0x7243
    call ds_dispatch_ee4a            ; 0x7244
    add sp, byte 4                   ; 0x7247
    mov word [bp - 0x0006], ax       ; 0x724a
    cmp ax, strict word 0xffff       ; 0x724d
    jne short @..local.l291          ; 0x7250
    lea ax, word [bp - 0x00a2]       ; 0x7252
    push ax                          ; 0x7256
    call ds_dispatch_fa90            ; 0x7257
    pop cx                           ; 0x725a
    mov word [bp - 0x0006], ax       ; 0x725b
@..local.l291:
    cmp word [bp - 0x0006], byte 0x0a ; 0x725e
    jle short @..local.l292          ; 0x7262
    mov word [bp - 0x0006], 0xa      ; 0x7264
@..local.l292:
    mov bx, word [bp - 0x0006]       ; 0x7269
    add bx, bp                       ; 0x726c
    mov byte [bx - 0x00a2], 0        ; 0x726e
    mov byte [bx - 0x0097], 0        ; 0x7273
@..local.l293:
    mov ax, word [bp - 0x0004]       ; 0x7278
    cmp ax, word [bp - 0x0006]       ; 0x727b
    jle short @..local.l294          ; 0x727e
    mov bx, ax                       ; 0x7280
    add bx, bp                       ; 0x7282
    cmp byte [bx - 0x00a2], 0x20     ; 0x7284
    jne short @..local.l294          ; 0x7289
    dec word [bp - 0x0004]           ; 0x728b
    jmp short @..local.l293          ; 0x728e
@..local.l294:
    mov ax, word [bp - 0x0006]       ; 0x7290
    sub word [bp - 0x0004], ax       ; 0x7293
    push word [bp - 0x000c]          ; 0x7296
    mov cx, 6                        ; 0x7299
    imul cx                          ; 0x729c
    mov cx, data_0002                ; 0x729e
    cwd                              ; 0x72a1
    idiv cx                          ; 0x72a2
    mov cx, ax                       ; 0x72a4
    mov ax, word [bp - 0x000a]       ; 0x72a6
    sub ax, cx                       ; 0x72a9
    push ax                          ; 0x72ab
    call ds_dispatch_e809            ; 0x72ac
    add sp, byte 4                   ; 0x72af
    mov ax, 0                        ; 0x72b2
    push ax                          ; 0x72b5
    lea ax, word [bp - 0x00a2]       ; 0x72b6
    push ax                          ; 0x72ba
    call ds_dispatch_e84e            ; 0x72bb
    add sp, byte 4                   ; 0x72be
    mov ax, word [bp - 0x000c]       ; 0x72c1
    add ax, strict word 6            ; 0x72c4
    push ax                          ; 0x72c7
    mov ax, 6                        ; 0x72c8
    imul word [bp - 0x0004]          ; 0x72cb
    mov cx, data_0002                ; 0x72ce
    cwd                              ; 0x72d1
    idiv cx                          ; 0x72d2
    mov cx, ax                       ; 0x72d4
    mov ax, word [bp - 0x000a]       ; 0x72d6
    sub ax, cx                       ; 0x72d9
    push ax                          ; 0x72db
    call ds_dispatch_e809            ; 0x72dc
    add sp, byte 4                   ; 0x72df
    mov ax, 0                        ; 0x72e2
    push ax                          ; 0x72e5
    mov ax, word [bp - 0x0006]       ; 0x72e6
    lea cx, word [bp - 0x00a1]       ; 0x72e9
    add ax, cx                       ; 0x72ed
    push ax                          ; 0x72ef
    call ds_dispatch_e84e            ; 0x72f0
    add sp, byte 4                   ; 0x72f3
    add word [bp - 0x000c], byte 0x12 ; 0x72f6
    mov word [bp - 0x0010], 0        ; 0x72fa
    mov word [bp - 0x0012], 0        ; 0x72ff
    mov word [bp - 0x0014], 0        ; 0x7304
    mov word [bp - 0x0016], 0        ; 0x7309
    mov word [bp - 0x0018], 0        ; 0x730e
    mov word [bp - 0x001a], 0        ; 0x7313
    mov word [bp - 0x001c], 0        ; 0x7318
    mov word [bp - 0x001e], 0        ; 0x731d
    mov word [bp - 0x0020], 0        ; 0x7322
    mov word [bp - 0x0026], 0        ; 0x7327
    mov word [bp - 0x002a], 0        ; 0x732c
    mov word [bp - 0x0028], 0        ; 0x7331
    mov word [bp - 0x0022], 1        ; 0x7336
    mov ax, word [data_0024]         ; 0x733b
    mov word [bp - 0x0024], ax       ; 0x733e
    mov al, byte [bp - 0x0042]       ; 0x7341
    sub ah, ah                       ; 0x7344
    jmp near @..local.l295           ; 0x7346

    db 0xc7, 0x46, 0xf0, 0x01, 0x00, 0xc7, 0x46, 0xea, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x01, 0x00, 0xc7
    db 0x46, 0xe4, 0x01, 0x00, 0xc7, 0x46, 0xda, 0x01, 0x00, 0xc7, 0x46, 0xd6, 0x01, 0x00, 0xc7, 0x46
    db 0xd8, 0x01, 0x00, 0xa1, 0x1e, 0x00, 0x89, 0x46, 0xce, 0xe9, 0xe5, 0x00, 0xc7, 0x46, 0xee, 0x01
    db 0x00, 0xc7, 0x46, 0xda, 0x01, 0x00, 0xc7, 0x46, 0xd6, 0x01, 0x00, 0xa1, 0x1e, 0x00, 0x89, 0x46
    db 0xce, 0xe9, 0xcd, 0x00, 0xc7, 0x46, 0xec, 0x01, 0x00, 0xa1, 0x22, 0x00, 0x89, 0x46, 0xdc, 0xc7
    db 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0x89, 0x46, 0xce, 0xe9, 0xb2, 0x00, 0xc7
    db 0x46, 0xec, 0x01, 0x00, 0xc7, 0x46, 0xe8, 0x01, 0x00, 0xc7, 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46
    db 0xd8, 0x01, 0x00, 0xa1, 0x24, 0x00, 0x89, 0x46, 0xce, 0xe9, 0x95, 0x00, 0xc7, 0x46, 0xec, 0x01
    db 0x00, 0xc7, 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0xa1, 0x24, 0x00, 0x89, 0x46
    db 0xce, 0xe9, 0x7d, 0x00, 0xc7, 0x46, 0xde, 0x00, 0x00, 0xc7, 0x46, 0xf0, 0x01, 0x00, 0xc7, 0x46
    db 0xe0, 0x01, 0x00, 0xc7, 0x46, 0xe4, 0x01, 0x00, 0xa1, 0x22, 0x00, 0x89, 0x46, 0xce, 0xeb, 0x61
    db 0xc7, 0x46, 0xde, 0x00, 0x00, 0xc7, 0x46, 0xee, 0x01, 0x00, 0xc7, 0x46, 0xe0, 0x01, 0x00, 0xa1
    db 0x22, 0x00, 0x89, 0x46, 0xce, 0xeb, 0x4a, 0xc7, 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46, 0xee, 0x01
    db 0x00, 0xc7, 0x46, 0xe4, 0x01, 0x00, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0xc7, 0x46, 0xce, 0xc0, 0x00
    db 0xeb, 0x2f, 0x90, 0xc3, 0x90, 0xc3, 0x90, 0xc3, 0x90, 0xc3, 0xbc, 0xc3, 0xd4, 0xc3, 0xef, 0xc3
    db 0xef, 0xc3, 0xef, 0xc3, 0xef, 0xc3, 0xef, 0xc3, 0x0c, 0xc4, 0x24, 0xc4, 0x40, 0xc4, 0x57, 0xc4
    db 0x5c, 0xc4, 0x24, 0xc4

@..local.l295:
    cmp ax, strict word 0x11         ; 0x744d
    jae short @..local.l296          ; 0x7450
    xchg bx, ax                      ; 0x7452
    shl bx, 1                        ; 0x7453
    jmp [cs:bx - 0x3b8e]             ; 0x7455
@..local.l296:
    cmp word [bp + 0xa], byte 0      ; 0x745a
    je short @..local.l297           ; 0x745e
    jmp near @..local.l330           ; 0x7460
@..local.l297:
    lea ax, word [bp - 0x00f2]       ; 0x7463
    push ax                          ; 0x7467
    mov al, byte [bp - 0x0042]       ; 0x7468
    sub ah, ah                       ; 0x746b
    add ax, 0x60e                    ; 0x746d
    push ax                          ; 0x7470
    call ds_dispatch_b53b            ; 0x7471
    add sp, byte 4                   ; 0x7474
    mov ax, 0                        ; 0x7477
    push ax                          ; 0x747a
    push word [bp - 0x0032]          ; 0x747b
    call ds_dispatch_e823            ; 0x747e
    add sp, byte 4                   ; 0x7481
    push word [bp - 0x000c]          ; 0x7484
    lea ax, word [bp - 0x00f2]       ; 0x7487
    push ax                          ; 0x748b
    call ds_dispatch_fa90            ; 0x748c
    pop cx                           ; 0x748f
    mov cx, 6                        ; 0x7490
    imul cx                          ; 0x7493
    mov cx, data_0002                ; 0x7495
    cwd                              ; 0x7498
    idiv cx                          ; 0x7499
    mov cx, ax                       ; 0x749b
    mov ax, 0x50                     ; 0x749d
    sub ax, cx                       ; 0x74a0
    push ax                          ; 0x74a2
    call ds_dispatch_e809            ; 0x74a3
    add sp, byte 4                   ; 0x74a6
    mov ax, 0                        ; 0x74a9
    push ax                          ; 0x74ac
    lea ax, word [bp - 0x00f2]       ; 0x74ad
    push ax                          ; 0x74b1
    call ds_dispatch_e84e            ; 0x74b2
    add sp, byte 4                   ; 0x74b5
    add word [bp - 0x000c], byte 6   ; 0x74b8
    cmp word [bp - 0x0022], byte 0   ; 0x74bc
    jne short @..local.l298          ; 0x74c0
    jmp near @..local.l308           ; 0x74c2
@..local.l298:
    push word [bp - 0x000c]          ; 0x74c5
    mov ax, 0x26                     ; 0x74c8
    push ax                          ; 0x74cb
    call ds_dispatch_e809            ; 0x74cc
    add sp, byte 4                   ; 0x74cf
    lea ax, word [bp - 0x00f2]       ; 0x74d2
    push ax                          ; 0x74d6
    mov ax, 0x1c6                    ; 0x74d7
    push ax                          ; 0x74da
    call ds_dispatch_b53b            ; 0x74db
    add sp, byte 4                   ; 0x74de
    mov word [bp - 0x0002], 0        ; 0x74e1
@..local.l299:
    mov ax, 0                        ; 0x74e6
    push ax                          ; 0x74e9
    push word [bp - 0x0002]          ; 0x74ea
    lea ax, word [bp - 0x0046]       ; 0x74ed
    push ax                          ; 0x74f0
    call ds_dispatch_ec74            ; 0x74f1
    add sp, byte 4                   ; 0x74f4
    cmp ax, strict word 1            ; 0x74f7
    jne short @..local.l300          ; 0x74fa
    mov ax, 0xa9                     ; 0x74fc
    jmp short @..local.l301          ; 0x74ff
@..local.l300:
    mov ax, 0xad                     ; 0x7501
@..local.l301:
    push ax                          ; 0x7504
    call ds_dispatch_e823            ; 0x7505
    add sp, byte 4                   ; 0x7508
    mov ax, 0                        ; 0x750b
    push ax                          ; 0x750e
    mov bx, word [bp - 0x0002]       ; 0x750f
    add bx, bp                       ; 0x7512
    mov al, byte [bx - 0x00f2]       ; 0x7514
    sub ah, ah                       ; 0x7518
    push ax                          ; 0x751a
    call ds_dispatch_e830            ; 0x751b
    add sp, byte 4                   ; 0x751e
    inc word [bp - 0x0002]           ; 0x7521
    mov ax, word [bp - 0x0002]       ; 0x7524
    cmp ax, strict word 0xb          ; 0x7527
    jl short @..local.l299           ; 0x752a
    push word [bp - 0x000c]          ; 0x752c
    mov ax, 0x6e                     ; 0x752f
    push ax                          ; 0x7532
    call ds_dispatch_e809            ; 0x7533
    add sp, byte 4                   ; 0x7536
    lea ax, word [bp - 0x00f2]       ; 0x7539
    push ax                          ; 0x753d
    mov ax, 0x1c7                    ; 0x753e
    push ax                          ; 0x7541
    call ds_dispatch_b53b            ; 0x7542
    add sp, byte 4                   ; 0x7545
    mov word [bp - 0x0002], 0        ; 0x7548
@..local.l302:
    mov ax, 0                        ; 0x754d
    push ax                          ; 0x7550
    push word [bp - 0x0002]          ; 0x7551
    lea ax, word [bp - 0x0044]       ; 0x7554
    push ax                          ; 0x7557
    call ds_dispatch_ec74            ; 0x7558
    add sp, byte 4                   ; 0x755b
    cmp ax, strict word 1            ; 0x755e
    jne short @..local.l303          ; 0x7561
    mov ax, 0xa9                     ; 0x7563
    jmp short @..local.l304          ; 0x7566
@..local.l303:
    mov ax, 0xad                     ; 0x7568
@..local.l304:
    push ax                          ; 0x756b
    call ds_dispatch_e823            ; 0x756c
    add sp, byte 4                   ; 0x756f
    mov ax, 0                        ; 0x7572
    push ax                          ; 0x7575
    mov bx, word [bp - 0x0002]       ; 0x7576
    add bx, bp                       ; 0x7579
    mov al, byte [bx - 0x00f2]       ; 0x757b
    sub ah, ah                       ; 0x757f
    push ax                          ; 0x7581
    call ds_dispatch_e830            ; 0x7582
    add sp, byte 4                   ; 0x7585
    inc word [bp - 0x0002]           ; 0x7588
    mov ax, word [bp - 0x0002]       ; 0x758b
    cmp ax, strict word 2            ; 0x758e
    jl short @..local.l302           ; 0x7591
    mov ax, word [bp - 0x000c]       ; 0x7593
    add ax, strict word 6            ; 0x7596
    push ax                          ; 0x7599
    mov ax, 0x26                     ; 0x759a
    push ax                          ; 0x759d
    call ds_dispatch_e809            ; 0x759e
    add sp, byte 4                   ; 0x75a1
    lea ax, word [bp - 0x00f2]       ; 0x75a4
    push ax                          ; 0x75a8
    mov ax, 0x1c8                    ; 0x75a9
    push ax                          ; 0x75ac
    call ds_dispatch_b53b            ; 0x75ad
    add sp, byte 4                   ; 0x75b0
    mov word [bp - 0x0002], 0        ; 0x75b3
@..local.l305:
    mov ax, 0                        ; 0x75b8
    push ax                          ; 0x75bb
    push word [bp - 0x0002]          ; 0x75bc
    lea ax, word [bp - 0x0048]       ; 0x75bf
    push ax                          ; 0x75c2
    call ds_dispatch_ec74            ; 0x75c3
    add sp, byte 4                   ; 0x75c6
    cmp ax, strict word 1            ; 0x75c9
    jne short @..local.l306          ; 0x75cc
    mov ax, 0xa9                     ; 0x75ce
    jmp short @..local.l307          ; 0x75d1
@..local.l306:
    mov ax, 0xad                     ; 0x75d3
@..local.l307:
    push ax                          ; 0x75d6
    call ds_dispatch_e823            ; 0x75d7
    add sp, byte 4                   ; 0x75da
    mov ax, 0                        ; 0x75dd
    push ax                          ; 0x75e0
    mov bx, word [bp - 0x0002]       ; 0x75e1
    add bx, bp                       ; 0x75e4
    mov al, byte [bx - 0x00f2]       ; 0x75e6
    sub ah, ah                       ; 0x75ea
    push ax                          ; 0x75ec
    call ds_dispatch_e830            ; 0x75ed
    add sp, byte 4                   ; 0x75f0
    inc word [bp - 0x0002]           ; 0x75f3
    mov ax, word [bp - 0x0002]       ; 0x75f6
    cmp ax, strict word 0xe          ; 0x75f9
    jl short @..local.l305           ; 0x75fc
    add word [bp - 0x000c], byte 0x0c ; 0x75fe
    jmp short @..local.l309          ; 0x7602
@..local.l308:
    cmp word [bp - 0x0020], byte 0   ; 0x7604
    je short @..local.l309           ; 0x7608
    cmp word [bp - 0x0058], byte 0   ; 0x760a
    je short @..local.l309           ; 0x760e
    mov ax, word [bp - 0x0058]       ; 0x7610
    mov cx, 0x100                    ; 0x7613
    cwd                              ; 0x7616
    idiv cx                          ; 0x7617
    mov word [bp - 0x002e], dx       ; 0x7619
    lea ax, word [bp - 0x00f2]       ; 0x761c
    push ax                          ; 0x7620
    add dx, strict word 0xfa0        ; 0x7621
    mov ax, dx                       ; 0x7625
    push ax                          ; 0x7627
    call ds_dispatch_b53b            ; 0x7628
    add sp, byte 4                   ; 0x762b
    push word [bp - 0x000c]          ; 0x762e
    lea ax, word [bp - 0x00f2]       ; 0x7631
    push ax                          ; 0x7635
    call ds_dispatch_fa90            ; 0x7636
    pop cx                           ; 0x7639
    mov cx, 6                        ; 0x763a
    imul cx                          ; 0x763d
    mov cx, data_0002                ; 0x763f
    cwd                              ; 0x7642
    idiv cx                          ; 0x7643
    mov cx, ax                       ; 0x7645
    mov ax, 0x50                     ; 0x7647
    sub ax, cx                       ; 0x764a
    push ax                          ; 0x764c
    call ds_dispatch_e809            ; 0x764d
    add sp, byte 4                   ; 0x7650
    mov ax, 0                        ; 0x7653
    push ax                          ; 0x7656
    mov ax, 0x16                     ; 0x7657
    push ax                          ; 0x765a
    call ds_dispatch_e823            ; 0x765b
    add sp, byte 4                   ; 0x765e
    mov ax, 0                        ; 0x7661
    push ax                          ; 0x7664
    lea ax, word [bp - 0x00f2]       ; 0x7665
    push ax                          ; 0x7669
    call ds_dispatch_e84e            ; 0x766a
    add sp, byte 4                   ; 0x766d
    add word [bp - 0x000c], byte 6   ; 0x7670
@..local.l309:
    cmp word [bp - 0x001a], byte 0   ; 0x7674
    jne short @..local.l310          ; 0x7678
    jmp near @..local.l314           ; 0x767a
@..local.l310:
    mov al, byte [bp - 0x0041]       ; 0x767d
    sub ah, ah                       ; 0x7680
    jmp short @..local.l311          ; 0x7682

    db 0xc7, 0x46, 0xd4, 0x00, 0x00, 0xe9, 0x04, 0x01, 0xc7, 0x46, 0xd4, 0x01, 0x00, 0xe9, 0xfc, 0x00
    db 0xc7, 0x46, 0xd4, 0x02, 0x00, 0xe9, 0xf4, 0x00, 0xc7, 0x46, 0xd4, 0x03, 0x00, 0xe9, 0xec, 0x00
    db 0xc7, 0x46, 0xd4, 0x04, 0x00, 0xe9, 0xe4, 0x00, 0xc7, 0x46, 0xd4, 0x07, 0x00, 0xe9, 0xdc, 0x00
    db 0xc7, 0x46, 0xd4, 0x06, 0x00, 0xe9, 0xd4, 0x00, 0xc7, 0x46, 0xd4, 0x08, 0x00, 0xe9, 0xcc, 0x00
    db 0xc7, 0x46, 0xd4, 0x12, 0x00, 0xe9, 0xc4, 0x00, 0xc7, 0x46, 0xd4, 0x05, 0x00, 0xe9, 0xbc, 0x00
    db 0xc7, 0x46, 0xd4, 0x09, 0x00, 0xe9, 0xb4, 0x00

@..local.l311:
    mov cx, 0x2c                     ; 0x76dc
    call leaf_loc_982c               ; 0x76df
    add byte [bx + si], al           ; 0x76e2
    add word [bx + si], ax           ; 0x76e4
    add al, byte [bx + si]           ; 0x76e6
    add ax, word [bx + si]           ; 0x76e8
    add al, 0                        ; 0x76ea
    add ax, 0x600                    ; 0x76ec
    add byte [bx], al                ; 0x76ef
    add byte [bx + si], cl           ; 0x76f1
    add byte [bx + di], cl           ; 0x76f3
    add byte [bp + si], cl           ; 0x76f5
    add byte [bp + di], cl           ; 0x76f7
    add byte [si], cl                ; 0x76f9
    add byte [di], cl                ; 0x76fb
    add byte [data_0f00], cl         ; 0x76fd
    add byte [bx + si], dl           ; 0x7701
    add byte [bx + di], dl           ; 0x7703
    add byte [bp + si], dl           ; 0x7705
    add byte [bp + di], dl           ; 0x7707
    add byte [si], dl                ; 0x7709
    add byte [di], dl                ; 0x770b
    add byte [bx + si], bl           ; 0x770d
    add byte [di], ah                ; 0x770f
    add byte [data_3300], ah         ; 0x7711
    add byte [si], dh                ; 0x7715
    add byte [di], dh                ; 0x7717
    add byte [data_3700], dh         ; 0x7719
    add byte [bx + si], bh           ; 0x771d
    add byte [bx + di], bh           ; 0x771f
    add byte [bp + si], bh           ; 0x7721
    add byte [bp + di], bh           ; 0x7723
    db 0x00, 0x58, 0x00 ; add byte [bx + si], bl
    pop dx                           ; 0x7728
    db 0x00, 0x68, 0x00 ; add byte [bx + si], ch
    imul ax, word [bx + si], 0x6a    ; 0x772c
    insb                             ; 0x7730
    add byte [bp], ch                ; 0x7731
    jo short @..local.l312           ; 0x7734
@..local.l312:
    jb short @..local.l313           ; 0x7736
@..local.l313:
    retf                             ; 0x7738

    db 0xc6, 0xd3, 0xc6, 0xdb, 0xc6, 0xdb, 0xc6, 0xe3, 0xc6, 0xe3, 0xc6, 0xe3, 0xc6, 0xeb, 0xc6, 0xeb
    db 0xc6, 0xeb, 0xc6, 0xeb, 0xc6, 0xf3, 0xc6, 0xf3, 0xc6, 0xfb, 0xc6, 0xd3, 0xc6, 0xd3, 0xc6, 0xd3
    db 0xc6, 0xeb, 0xc6, 0xcb, 0xc6, 0xeb, 0xc6, 0xdb, 0xc6, 0x13, 0xc7, 0x03, 0xc7, 0xf3, 0xc6, 0x03
    db 0xc7, 0xd3, 0xc6, 0xe3, 0xc6, 0xd3, 0xc6, 0xe3, 0xc6, 0xd3, 0xc6, 0xe3, 0xc6, 0xeb, 0xc6, 0xd3
    db 0xc6, 0xd3, 0xc6, 0xcb, 0xc6, 0xeb, 0xc6, 0x0b, 0xc7, 0xeb, 0xc6, 0xeb, 0xc6, 0xd3, 0xc6, 0x0b
    db 0xc7, 0x13, 0xc7, 0x0b, 0xc7, 0x1b, 0xc7, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a
    db 0x87, 0x2b, 0x5e, 0x2a, 0xe4, 0x50, 0x8d, 0x46, 0xba, 0x50, 0xe8, 0xce, 0x74, 0x83, 0xc4, 0x04
    db 0x3d, 0x01, 0x00, 0x75, 0x3c, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2d
    db 0x5e, 0x2a, 0xe4, 0x50, 0x8d, 0x46, 0xb8, 0x50, 0xe8, 0xb0, 0x74, 0x83, 0xc4, 0x04, 0x3d, 0x01
    db 0x00, 0x75, 0x1e, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2c, 0x5e, 0x2a
    db 0xe4, 0x50, 0x8d, 0x46, 0xbc, 0x50, 0xe8, 0x92, 0x74, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x74
    db 0x1f, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0x1f, 0x06, 0x50, 0xe8, 0x45, 0x3d, 0x83, 0xc4, 0x04
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x69, 0x00, 0x50, 0xe8, 0x1f, 0x70, 0x83, 0xc4, 0x04, 0xeb, 0x3f
    db 0x8d, 0x86, 0x5e, 0xff, 0x50, 0xb8, 0xc2, 0x01, 0x50, 0xe8, 0x26, 0x3d, 0x83, 0xc4, 0x04, 0x8d
    db 0x86, 0x0e, 0xff, 0x50, 0x8b, 0x46, 0xd4, 0x05, 0x7c, 0x15, 0x50, 0xe8, 0x14, 0x3d, 0x83, 0xc4
    db 0x04, 0x8d, 0x86, 0x5e, 0xff, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xf6, 0x7a, 0x83, 0xc4
    db 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x30, 0x00, 0xe8, 0xde, 0x6f, 0x83, 0xc4, 0x04, 0xff
    db 0x76, 0xf4, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x3d, 0x82, 0x59, 0xb9, 0x06, 0x00, 0xf7, 0xe9
    db 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0xb8, 0x50, 0x00, 0x2b, 0xc1, 0x50, 0xe8, 0x9f
    db 0x6f, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xd5, 0x6f
    db 0x83, 0xc4, 0x04, 0x83, 0x46, 0xf4, 0x06

@..local.l314:
    mov word [bp - 0x000c], 0xa2     ; 0x7880
    cmp word [bp - 0x001c], byte 0   ; 0x7885
    jne short @..local.l315          ; 0x7889
    jmp near @..local.l319           ; 0x788b
@..local.l315:
    mov ax, 0                        ; 0x788e
    push ax                          ; 0x7891
    mov ax, 0x55                     ; 0x7892
    push ax                          ; 0x7895
    call ds_dispatch_e823            ; 0x7896
    add sp, byte 4                   ; 0x7899
    cmp byte [bp - 0x0042], 3        ; 0x789c
    jne short @..local.l316          ; 0x78a0
    lea ax, word [bp - 0x00f2]       ; 0x78a2
    push ax                          ; 0x78a6
    mov ax, 0xbf2                    ; 0x78a7
    push ax                          ; 0x78aa
    call ds_dispatch_b53b            ; 0x78ab
    add sp, byte 4                   ; 0x78ae
    push word [bp - 0x000c]          ; 0x78b1
    mov ax, 0xe                      ; 0x78b4
    push ax                          ; 0x78b7
    call ds_dispatch_e809            ; 0x78b8
    add sp, byte 4                   ; 0x78bb
    mov ax, 0                        ; 0x78be
    push ax                          ; 0x78c1
    lea ax, word [bp - 0x00f2]       ; 0x78c2
    push ax                          ; 0x78c6
    call ds_dispatch_e84e            ; 0x78c7
    add sp, byte 4                   ; 0x78ca
    jmp short @..local.l319          ; 0x78cd
@..local.l316:
    mov word [bp - 0x0008], 0        ; 0x78cf
    mov word [bp - 0x0002], 0        ; 0x78d4
@..local.l317:
    push word [bp - 0x0002]          ; 0x78d9
    lea ax, word [bp - 0x0034]       ; 0x78dc
    push ax                          ; 0x78df
    call ds_dispatch_ec74            ; 0x78e0
    add sp, byte 4                   ; 0x78e3
    cmp ax, strict word 1            ; 0x78e6
    jne short @..local.l318          ; 0x78e9
    mov ax, word [bp - 0x0008]       ; 0x78eb
    mov cx, 3                        ; 0x78ee
    cwd                              ; 0x78f1
    idiv cx                          ; 0x78f2
    mov cx, 6                        ; 0x78f4
    imul cx                          ; 0x78f7
    add ax, word [bp - 0x000c]       ; 0x78f9
    push ax                          ; 0x78fc
    mov ax, word [bp - 0x0008]       ; 0x78fd
    mov cx, 3                        ; 0x7900
    cwd                              ; 0x7903
    idiv cx                          ; 0x7904
    mov ax, dx                       ; 0x7906
    mov cx, 0x30                     ; 0x7908
    imul cx                          ; 0x790b
    add ax, strict word 0xe          ; 0x790d
    push ax                          ; 0x7910
    call ds_dispatch_e809            ; 0x7911
    add sp, byte 4                   ; 0x7914
    lea ax, word [bp - 0x00f2]       ; 0x7917
    push ax                          ; 0x791b
    mov ax, word [bp - 0x0002]       ; 0x791c
    add ax, 0xbea                    ; 0x791f
    push ax                          ; 0x7922
    call ds_dispatch_b53b            ; 0x7923
    add sp, byte 4                   ; 0x7926
    mov ax, 0                        ; 0x7929
    push ax                          ; 0x792c
    lea ax, word [bp - 0x00f2]       ; 0x792d
    push ax                          ; 0x7931
    call ds_dispatch_e84e            ; 0x7932
    add sp, byte 4                   ; 0x7935
    inc word [bp - 0x0008]           ; 0x7938
@..local.l318:
    inc word [bp - 0x0002]           ; 0x793b
    mov ax, word [bp - 0x0002]       ; 0x793e
    cmp ax, strict word 8            ; 0x7941
    jl short @..local.l317           ; 0x7944
@..local.l319:
    mov word [bp - 0x000c], 0xae     ; 0x7946
    push word [bp - 0x000c]          ; 0x794b
    mov ax, 0xe                      ; 0x794e
    push ax                          ; 0x7951
    call ds_dispatch_e809            ; 0x7952
    add sp, byte 4                   ; 0x7955
    cmp word [bp - 0x0010], byte 0   ; 0x7958
    jne short @..local.l320          ; 0x795c
    cmp word [bp - 0x0012], byte 0   ; 0x795e
    jne short @..local.l320          ; 0x7962
    jmp near @..local.l324           ; 0x7964
@..local.l320:
    lea ax, word [bp - 0x00f2]       ; 0x7967
    push ax                          ; 0x796b
    mov ax, 0x1c3                    ; 0x796c
    push ax                          ; 0x796f
    call ds_dispatch_b53b            ; 0x7970
    add sp, byte 4                   ; 0x7973
    mov ax, 0                        ; 0x7976
    push ax                          ; 0x7979
    mov ax, 0x37                     ; 0x797a
    cmp word [bp - 0x0010], byte 0   ; 0x797d
    je short @..local.l321           ; 0x7981
    mov ax, 0x33                     ; 0x7983
@..local.l321:
    push ax                          ; 0x7986
    call ds_dispatch_e823            ; 0x7987
    add sp, byte 4                   ; 0x798a
    mov ax, 0                        ; 0x798d
    push ax                          ; 0x7990
    mov al, byte [bp - 0x00f2]       ; 0x7991
    sub ah, ah                       ; 0x7995
    push ax                          ; 0x7997
    call ds_dispatch_e830            ; 0x7998
    add sp, byte 4                   ; 0x799b
    mov ax, 0                        ; 0x799e
    push ax                          ; 0x79a1
    mov ax, 0x37                     ; 0x79a2
    push ax                          ; 0x79a5
    call ds_dispatch_e823            ; 0x79a6
    add sp, byte 4                   ; 0x79a9
    mov ax, 0                        ; 0x79ac
    push ax                          ; 0x79af
    mov ax, 0x2f                     ; 0x79b0
    push ax                          ; 0x79b3
    call ds_dispatch_e830            ; 0x79b4
    add sp, byte 4                   ; 0x79b7
    mov ax, 0                        ; 0x79ba
    push ax                          ; 0x79bd
    mov al, byte [bp - 0x0043]       ; 0x79be
    sub ah, ah                       ; 0x79c1
    test ax, 8                       ; 0x79c3
    je short @..local.l322           ; 0x79c6
    mov ax, 0x33                     ; 0x79c8
    jmp short @..local.l323          ; 0x79cb
@..local.l322:
    mov ax, 0x37                     ; 0x79cd
@..local.l323:
    push ax                          ; 0x79d0
    call ds_dispatch_e823            ; 0x79d1
    add sp, byte 4                   ; 0x79d4
    mov ax, 0                        ; 0x79d7
    push ax                          ; 0x79da
    mov al, byte [bp - 0x00f1]       ; 0x79db
    sub ah, ah                       ; 0x79df
    push ax                          ; 0x79e1
    call ds_dispatch_e830            ; 0x79e2
    add sp, byte 4                   ; 0x79e5
    jmp short @..local.l325          ; 0x79e8
@..local.l324:
    cmp word [bp - 0x0014], byte 0   ; 0x79ea
    je short @..local.l325           ; 0x79ee
    lea ax, word [bp - 0x00f2]       ; 0x79f0
    push ax                          ; 0x79f4
    mov ax, 0x1c4                    ; 0x79f5
    push ax                          ; 0x79f8
    call ds_dispatch_b53b            ; 0x79f9
    add sp, byte 4                   ; 0x79fc
    mov ax, 0                        ; 0x79ff
    push ax                          ; 0x7a02
    push word [bp - 0x0024]          ; 0x7a03
    call ds_dispatch_e823            ; 0x7a06
    add sp, byte 4                   ; 0x7a09
    mov ax, 0                        ; 0x7a0c
    push ax                          ; 0x7a0f
    lea ax, word [bp - 0x00f2]       ; 0x7a10
    push ax                          ; 0x7a14
    call ds_dispatch_e84e            ; 0x7a15
    add sp, byte 4                   ; 0x7a18
    mov ax, 0                        ; 0x7a1b
    push ax                          ; 0x7a1e
    mov ax, 0x20                     ; 0x7a1f
    push ax                          ; 0x7a22
    call ds_dispatch_e830            ; 0x7a23
    add sp, byte 4                   ; 0x7a26
    lea ax, word [bp - 0x00f2]       ; 0x7a29
    push ax                          ; 0x7a2d
    mov ax, 0                        ; 0x7a2e
    push ax                          ; 0x7a31
    mov al, byte [bp - 0x003a]       ; 0x7a32
    cbw                              ; 0x7a35
    mov cx, ax                       ; 0x7a36
    pop ax                           ; 0x7a38
    sub ax, cx                       ; 0x7a39
    push ax                          ; 0x7a3b
    call ds_dispatch_b27d            ; 0x7a3c
    add sp, byte 4                   ; 0x7a3f
    mov ax, 0                        ; 0x7a42
    push ax                          ; 0x7a45
    lea ax, word [bp - 0x00f2]       ; 0x7a46
    push ax                          ; 0x7a4a
    call ds_dispatch_e84e            ; 0x7a4b
    add sp, byte 4                   ; 0x7a4e
@..local.l325:
    cmp word [bp - 0x0016], byte 0   ; 0x7a51
    je short @..local.l328           ; 0x7a55
    lea ax, word [bp - 0x00f2]       ; 0x7a57
    push ax                          ; 0x7a5b
    mov al, byte [bp - 0x0043]       ; 0x7a5c
    sub ah, ah                       ; 0x7a5f
    test ax, 4                       ; 0x7a61
    je short @..local.l326           ; 0x7a64
    mov ax, 0x1ca                    ; 0x7a66
    jmp short @..local.l327          ; 0x7a69
@..local.l326:
    mov ax, 0x1c9                    ; 0x7a6b
@..local.l327:
    push ax                          ; 0x7a6e
    call ds_dispatch_b53b            ; 0x7a6f
    add sp, byte 4                   ; 0x7a72
    push word [bp - 0x000c]          ; 0x7a75
    lea ax, word [bp - 0x00f2]       ; 0x7a78
    push ax                          ; 0x7a7c
    call ds_dispatch_fa90            ; 0x7a7d
    pop cx                           ; 0x7a80
    mov cx, 6                        ; 0x7a81
    imul cx                          ; 0x7a84
    mov cx, data_0002                ; 0x7a86
    cwd                              ; 0x7a89
    idiv cx                          ; 0x7a8a
    mov cx, ax                       ; 0x7a8c
    mov ax, 0x50                     ; 0x7a8e
    sub ax, cx                       ; 0x7a91
    push ax                          ; 0x7a93
    call ds_dispatch_e809            ; 0x7a94
    add sp, byte 4                   ; 0x7a97
    mov ax, 0                        ; 0x7a9a
    push ax                          ; 0x7a9d
    mov ax, 0x16                     ; 0x7a9e
    push ax                          ; 0x7aa1
    call ds_dispatch_e823            ; 0x7aa2
    add sp, byte 4                   ; 0x7aa5
    mov ax, 0                        ; 0x7aa8
    push ax                          ; 0x7aab
    lea ax, word [bp - 0x00f2]       ; 0x7aac
    push ax                          ; 0x7ab0
    call ds_dispatch_e84e            ; 0x7ab1
    add sp, byte 4                   ; 0x7ab4
    jmp short @..local.l329          ; 0x7ab7
@..local.l328:
    cmp word [bp - 0x0018], byte 0   ; 0x7ab9
    je short @..local.l329           ; 0x7abd
    lea ax, word [bp - 0x00f2]       ; 0x7abf
    push ax                          ; 0x7ac3
    mov al, byte [bp - 0x0042]       ; 0x7ac4
    sub ah, ah                       ; 0x7ac7
    add ax, 0x1c6                    ; 0x7ac9
    push ax                          ; 0x7acc
    call ds_dispatch_b53b            ; 0x7acd
    add sp, byte 4                   ; 0x7ad0
    push word [bp - 0x000c]          ; 0x7ad3
    lea ax, word [bp - 0x00f2]       ; 0x7ad6
    push ax                          ; 0x7ada
    call ds_dispatch_fa90            ; 0x7adb
    pop cx                           ; 0x7ade
    mov cx, 6                        ; 0x7adf
    imul cx                          ; 0x7ae2
    mov cx, data_0002                ; 0x7ae4
    cwd                              ; 0x7ae7
    idiv cx                          ; 0x7ae8
    mov cx, ax                       ; 0x7aea
    mov ax, 0x50                     ; 0x7aec
    sub ax, cx                       ; 0x7aef
    push ax                          ; 0x7af1
    call ds_dispatch_e809            ; 0x7af2
    add sp, byte 4                   ; 0x7af5
    mov ax, 0                        ; 0x7af8
    push ax                          ; 0x7afb
    mov ax, 0x16                     ; 0x7afc
    push ax                          ; 0x7aff
    call ds_dispatch_e823            ; 0x7b00
    add sp, byte 4                   ; 0x7b03
    mov ax, 0                        ; 0x7b06
    push ax                          ; 0x7b09
    lea ax, word [bp - 0x00f2]       ; 0x7b0a
    push ax                          ; 0x7b0e
    call ds_dispatch_e84e            ; 0x7b0f
    add sp, byte 4                   ; 0x7b12
@..local.l329:
    push word [bp - 0x000c]          ; 0x7b15
    mov ax, 0x68                     ; 0x7b18
    push ax                          ; 0x7b1b
    call ds_dispatch_e809            ; 0x7b1c
    add sp, byte 4                   ; 0x7b1f
    mov ax, 0                        ; 0x7b22
    push ax                          ; 0x7b25
    mov ax, 9                        ; 0x7b26
    push ax                          ; 0x7b29
    call ds_dispatch_e823            ; 0x7b2a
    add sp, byte 4                   ; 0x7b2d
    mov ax, 0                        ; 0x7b30
    push ax                          ; 0x7b33
    mov ax, 3                        ; 0x7b34
    push ax                          ; 0x7b37
    mov ax, word [bp - 0x0056]       ; 0x7b38
    mov cx, 0xa                      ; 0x7b3b
    cwd                              ; 0x7b3e
    idiv cx                          ; 0x7b3f
    push ax                          ; 0x7b41
    call ds_dispatch_b2e7            ; 0x7b42
    add sp, byte 6                   ; 0x7b45
    mov ax, 0                        ; 0x7b48
    push ax                          ; 0x7b4b
    mov ax, 0x2e                     ; 0x7b4c
    push ax                          ; 0x7b4f
    call ds_dispatch_e830            ; 0x7b50
    add sp, byte 4                   ; 0x7b53
    mov ax, 0                        ; 0x7b56
    push ax                          ; 0x7b59
    mov ax, 1                        ; 0x7b5a
    push ax                          ; 0x7b5d
    mov ax, word [bp - 0x0056]       ; 0x7b5e
    mov cx, 0xa                      ; 0x7b61
    cwd                              ; 0x7b64
    idiv cx                          ; 0x7b65
    mov ax, dx                       ; 0x7b67
    push ax                          ; 0x7b69
    call ds_dispatch_b2e7            ; 0x7b6a
    add sp, byte 6                   ; 0x7b6d
    lea ax, word [bp - 0x00f2]       ; 0x7b70
    push ax                          ; 0x7b74
    mov ax, 0x1c5                    ; 0x7b75
    push ax                          ; 0x7b78
    call ds_dispatch_b53b            ; 0x7b79
    add sp, byte 4                   ; 0x7b7c
    mov ax, 0                        ; 0x7b7f
    push ax                          ; 0x7b82
    lea ax, word [bp - 0x00f2]       ; 0x7b83
    push ax                          ; 0x7b87
    call ds_dispatch_e84e            ; 0x7b88
    add sp, byte 4                   ; 0x7b8b
    jmp near @..local.l361           ; 0x7b8e
@..local.l330:
    cmp word [bp - 0x0026], byte 0   ; 0x7b91
    jne short @..local.l331          ; 0x7b95
    jmp near @..local.l335           ; 0x7b97
@..local.l331:
    mov ax, 0                        ; 0x7b9a
    push ax                          ; 0x7b9d
    mov ax, 0x33                     ; 0x7b9e
    push ax                          ; 0x7ba1
    call ds_dispatch_e823            ; 0x7ba2
    add sp, byte 4                   ; 0x7ba5
    lea ax, word [bp - 0x00f2]       ; 0x7ba8
    push ax                          ; 0x7bac
    mov ax, 0x1d2                    ; 0x7bad
    push ax                          ; 0x7bb0
    call ds_dispatch_b53b            ; 0x7bb1
    add sp, byte 4                   ; 0x7bb4
    lea ax, word [bp - 0x0142]       ; 0x7bb7
    push ax                          ; 0x7bbb
    mov al, byte [bp - 0x005a]       ; 0x7bbc
    sub ah, ah                       ; 0x7bbf
    add ax, word [bp - 0x005c]       ; 0x7bc1
    push ax                          ; 0x7bc4
    call ds_dispatch_b27d            ; 0x7bc5
    add sp, byte 4                   ; 0x7bc8
    lea ax, word [bp - 0x0192]       ; 0x7bcb
    push ax                          ; 0x7bcf
    mov al, byte [bp - 0x005a]       ; 0x7bd0
    sub ah, ah                       ; 0x7bd3
    push ax                          ; 0x7bd5
    mov al, byte [bp - 0x0059]       ; 0x7bd6
    sub ah, ah                       ; 0x7bd9
    mov cx, ax                       ; 0x7bdb
    pop ax                           ; 0x7bdd
    imul cx                          ; 0x7bde
    add ax, word [bp - 0x005c]       ; 0x7be0
    push ax                          ; 0x7be3
    call ds_dispatch_b27d            ; 0x7be4
    add sp, byte 4                   ; 0x7be7
    lea ax, word [bp - 0x0142]       ; 0x7bea
    push ax                          ; 0x7bee
    lea ax, word [bp - 0x00f2]       ; 0x7bef
    push ax                          ; 0x7bf3
    call ds_dispatch_f32d            ; 0x7bf4
    add sp, byte 4                   ; 0x7bf7
    lea ax, word [bp - 0x0142]       ; 0x7bfa
    push ax                          ; 0x7bfe
    mov ax, 0x1d3                    ; 0x7bff
    push ax                          ; 0x7c02
    call ds_dispatch_b53b            ; 0x7c03
    add sp, byte 4                   ; 0x7c06
    lea ax, word [bp - 0x0142]       ; 0x7c09
    push ax                          ; 0x7c0d
    lea ax, word [bp - 0x00f2]       ; 0x7c0e
    push ax                          ; 0x7c12
    call ds_dispatch_f32d            ; 0x7c13
    add sp, byte 4                   ; 0x7c16
    lea ax, word [bp - 0x0192]       ; 0x7c19
    push ax                          ; 0x7c1d
    lea ax, word [bp - 0x00f2]       ; 0x7c1e
    push ax                          ; 0x7c22
    call ds_dispatch_f32d            ; 0x7c23
    add sp, byte 4                   ; 0x7c26
    push word [bp - 0x000c]          ; 0x7c29
    mov ax, 0xe                      ; 0x7c2c
    push ax                          ; 0x7c2f
    call ds_dispatch_e809            ; 0x7c30
    add sp, byte 4                   ; 0x7c33
    mov ax, 0                        ; 0x7c36
    push ax                          ; 0x7c39
    lea ax, word [bp - 0x00f2]       ; 0x7c3a
    push ax                          ; 0x7c3e
    call ds_dispatch_e84e            ; 0x7c3f
    add sp, byte 4                   ; 0x7c42
    cmp byte [bp - 0x0039], 0        ; 0x7c45
    jne short @..local.l332          ; 0x7c49
    jmp near @..local.l334           ; 0x7c4b
@..local.l332:
    mov ax, 0x90c0                   ; 0x7c4e
    push ax                          ; 0x7c51
    lea ax, word [bp - 0x00f2]       ; 0x7c52
    push ax                          ; 0x7c56
    call ds_dispatch_f364            ; 0x7c57
    add sp, byte 4                   ; 0x7c5a
    cmp byte [bp - 0x0039], 0        ; 0x7c5d
    jl short @..local.l333           ; 0x7c61
    mov ax, 0x90c2                   ; 0x7c63
    push ax                          ; 0x7c66
    lea ax, word [bp - 0x00f2]       ; 0x7c67
    push ax                          ; 0x7c6b
    call ds_dispatch_f32d            ; 0x7c6c
    add sp, byte 4                   ; 0x7c6f
@..local.l333:
    lea ax, word [bp - 0x0142]       ; 0x7c72
    push ax                          ; 0x7c76
    mov al, byte [bp - 0x0039]       ; 0x7c77
    cbw                              ; 0x7c7a
    push ax                          ; 0x7c7b
    call ds_dispatch_b27d            ; 0x7c7c
    add sp, byte 4                   ; 0x7c7f
    lea ax, word [bp - 0x0142]       ; 0x7c82
    push ax                          ; 0x7c86
    lea ax, word [bp - 0x00f2]       ; 0x7c87
    push ax                          ; 0x7c8b
    call ds_dispatch_f32d            ; 0x7c8c
    add sp, byte 4                   ; 0x7c8f
    mov ax, 0x90c4                   ; 0x7c92
    push ax                          ; 0x7c95
    lea ax, word [bp - 0x00f2]       ; 0x7c96
    push ax                          ; 0x7c9a
    call ds_dispatch_f32d            ; 0x7c9b
    add sp, byte 4                   ; 0x7c9e
    push word [bp - 0x000c]          ; 0x7ca1
    lea ax, word [bp - 0x00f2]       ; 0x7ca4
    push ax                          ; 0x7ca8
    call ds_dispatch_fa90            ; 0x7ca9
    pop cx                           ; 0x7cac
    mov cx, ax                       ; 0x7cad
    mov ax, 0x16                     ; 0x7caf
    sub ax, cx                       ; 0x7cb2
    mov cx, 6                        ; 0x7cb4
    imul cx                          ; 0x7cb7
    add ax, strict word 0xe          ; 0x7cb9
    push ax                          ; 0x7cbc
    call ds_dispatch_e809            ; 0x7cbd
    add sp, byte 4                   ; 0x7cc0
    mov ax, 0                        ; 0x7cc3
    push ax                          ; 0x7cc6
    lea ax, word [bp - 0x00f2]       ; 0x7cc7
    push ax                          ; 0x7ccb
    call ds_dispatch_e84e            ; 0x7ccc
    add sp, byte 4                   ; 0x7ccf
@..local.l334:
    add word [bp - 0x000c], byte 6   ; 0x7cd2
@..local.l335:
    mov al, byte [bp - 0x003e]       ; 0x7cd6
    sub ah, ah                       ; 0x7cd9
    mov cx, 0x10                     ; 0x7cdb
    cwd                              ; 0x7cde
    idiv cx                          ; 0x7cdf
    mov word [bp - 0x0008], dx       ; 0x7ce1
    mov word [bp - 0x0004], ax       ; 0x7ce4
    cmp word [bp - 0x0028], byte 0   ; 0x7ce7
    jne short @..local.l336          ; 0x7ceb
    jmp near @..local.l338           ; 0x7ced
@..local.l336:
    sub dx, ax                       ; 0x7cf0
    mov ax, dx                       ; 0x7cf2
    je short @..local.l338           ; 0x7cf4
    mov ax, 0                        ; 0x7cf6
    push ax                          ; 0x7cf9
    mov ax, 0x5e                     ; 0x7cfa
    push ax                          ; 0x7cfd
    call ds_dispatch_e823            ; 0x7cfe
    add sp, byte 4                   ; 0x7d01
    lea ax, word [bp - 0x00f2]       ; 0x7d04
    push ax                          ; 0x7d08
    mov ax, 0x1d4                    ; 0x7d09
    push ax                          ; 0x7d0c
    call ds_dispatch_b53b            ; 0x7d0d
    add sp, byte 4                   ; 0x7d10
    mov ax, word [bp - 0x0008]       ; 0x7d13
    sub ax, word [bp - 0x0004]       ; 0x7d16
    jle short @..local.l337          ; 0x7d19
    mov ax, 0x90c6                   ; 0x7d1b
    push ax                          ; 0x7d1e
    lea ax, word [bp - 0x00f2]       ; 0x7d1f
    push ax                          ; 0x7d23
    call ds_dispatch_f32d            ; 0x7d24
    add sp, byte 4                   ; 0x7d27
@..local.l337:
    lea ax, word [bp - 0x0142]       ; 0x7d2a
    push ax                          ; 0x7d2e
    mov ax, word [bp - 0x0008]       ; 0x7d2f
    sub ax, word [bp - 0x0004]       ; 0x7d32
    push ax                          ; 0x7d35
    call ds_dispatch_b27d            ; 0x7d36
    add sp, byte 4                   ; 0x7d39
    lea ax, word [bp - 0x0142]       ; 0x7d3c
    push ax                          ; 0x7d40
    lea ax, word [bp - 0x00f2]       ; 0x7d41
    push ax                          ; 0x7d45
    call ds_dispatch_f32d            ; 0x7d46
    add sp, byte 4                   ; 0x7d49
    push word [bp - 0x000c]          ; 0x7d4c
    mov ax, 0xe                      ; 0x7d4f
    push ax                          ; 0x7d52
    call ds_dispatch_e809            ; 0x7d53
    add sp, byte 4                   ; 0x7d56
    mov ax, 0                        ; 0x7d59
    push ax                          ; 0x7d5c
    lea ax, word [bp - 0x00f2]       ; 0x7d5d
    push ax                          ; 0x7d61
    call ds_dispatch_e84e            ; 0x7d62
    add sp, byte 4                   ; 0x7d65
@..local.l338:
    cmp byte [bp - 0x003d], 0        ; 0x7d68
    je short @..local.l339           ; 0x7d6c
    mov ax, 0                        ; 0x7d6e
    push ax                          ; 0x7d71
    mov ax, 0x55                     ; 0x7d72
    push ax                          ; 0x7d75
    call ds_dispatch_e823            ; 0x7d76
    add sp, byte 4                   ; 0x7d79
    lea ax, word [bp - 0x00f2]       ; 0x7d7c
    push ax                          ; 0x7d80
    mov ax, 0x1d5                    ; 0x7d81
    push ax                          ; 0x7d84
    call ds_dispatch_b53b            ; 0x7d85
    add sp, byte 4                   ; 0x7d88
    push word [bp - 0x000c]          ; 0x7d8b
    mov ax, 0x6e                     ; 0x7d8e
    push ax                          ; 0x7d91
    call ds_dispatch_e809            ; 0x7d92
    add sp, byte 4                   ; 0x7d95
    mov ax, 0                        ; 0x7d98
    push ax                          ; 0x7d9b
    lea ax, word [bp - 0x00f2]       ; 0x7d9c
    push ax                          ; 0x7da0
    call ds_dispatch_e84e            ; 0x7da1
    add sp, byte 4                   ; 0x7da4
@..local.l339:
    add word [bp - 0x000c], byte 6   ; 0x7da7
    cmp byte [bp - 0x003c], 0        ; 0x7dab
    je short @..local.l340           ; 0x7daf
    mov ax, 0                        ; 0x7db1
    push ax                          ; 0x7db4
    mov ax, 0xa4                     ; 0x7db5
    push ax                          ; 0x7db8
    call ds_dispatch_e823            ; 0x7db9
    add sp, byte 4                   ; 0x7dbc
    lea ax, word [bp - 0x00f2]       ; 0x7dbf
    push ax                          ; 0x7dc3
    mov ax, 0x1d6                    ; 0x7dc4
    push ax                          ; 0x7dc7
    call ds_dispatch_b53b            ; 0x7dc8
    add sp, byte 4                   ; 0x7dcb
    mov al, byte [bp - 0x003c]       ; 0x7dce
    sub ah, ah                       ; 0x7dd1
    push ax                          ; 0x7dd3
    lea ax, word [bp - 0x0142]       ; 0x7dd4
    push ax                          ; 0x7dd8
    call api_idx_001a                ; 0x7dd9
    add sp, byte 4                   ; 0x7ddc
    lea ax, word [bp - 0x0142]       ; 0x7ddf
    push ax                          ; 0x7de3
    lea ax, word [bp - 0x00f2]       ; 0x7de4
    push ax                          ; 0x7de8
    call ds_dispatch_f32d            ; 0x7de9
    add sp, byte 4                   ; 0x7dec
    push word [bp - 0x000c]          ; 0x7def
    mov ax, 0xe                      ; 0x7df2
    push ax                          ; 0x7df5
    call ds_dispatch_e809            ; 0x7df6
    add sp, byte 4                   ; 0x7df9
    mov ax, 0                        ; 0x7dfc
    push ax                          ; 0x7dff
    lea ax, word [bp - 0x00f2]       ; 0x7e00
    push ax                          ; 0x7e04
    call ds_dispatch_e84e            ; 0x7e05
    add sp, byte 4                   ; 0x7e08
    add word [bp - 0x000c], byte 6   ; 0x7e0b
@..local.l340:
    cmp word [bp - 0x0058], byte 0   ; 0x7e0f
    jne short @..local.l341          ; 0x7e13
    jmp near @..local.l344           ; 0x7e15
@..local.l341:
    mov ax, 0                        ; 0x7e18
    push ax                          ; 0x7e1b
    mov ax, 0x16                     ; 0x7e1c
    push ax                          ; 0x7e1f
    call ds_dispatch_e823            ; 0x7e20
    add sp, byte 4                   ; 0x7e23
    mov ax, word [bp - 0x0058]       ; 0x7e26
    mov cx, 0x100                    ; 0x7e29
    cwd                              ; 0x7e2c
    idiv cx                          ; 0x7e2d
    mov word [bp - 0x0030], ax       ; 0x7e2f
    mov word [bp - 0x002e], dx       ; 0x7e32
    lea ax, word [bp - 0x00f2]       ; 0x7e35
    push ax                          ; 0x7e39
    add dx, strict word 0xfa0        ; 0x7e3a
    mov ax, dx                       ; 0x7e3e
    push ax                          ; 0x7e40
    call ds_dispatch_b53b            ; 0x7e41
    add sp, byte 4                   ; 0x7e44
    push word [bp - 0x000c]          ; 0x7e47
    mov ax, 0xe                      ; 0x7e4a
    push ax                          ; 0x7e4d
    call ds_dispatch_e809            ; 0x7e4e
    add sp, byte 4                   ; 0x7e51
    mov ax, 0                        ; 0x7e54
    push ax                          ; 0x7e57
    lea ax, word [bp - 0x00f2]       ; 0x7e58
    push ax                          ; 0x7e5c
    call ds_dispatch_e84e            ; 0x7e5d
    add sp, byte 4                   ; 0x7e60
    mov ax, 0                        ; 0x7e63
    push ax                          ; 0x7e66
    mov ax, 1                        ; 0x7e67
    push ax                          ; 0x7e6a
    call ds_dispatch_e823            ; 0x7e6b
    add sp, byte 4                   ; 0x7e6e
    lea ax, word [bp - 0x00f2]       ; 0x7e71
    push ax                          ; 0x7e75
    push word [bp - 0x0030]          ; 0x7e76
    call ds_dispatch_b27d            ; 0x7e79
    add sp, byte 4                   ; 0x7e7c
    mov ax, 0x90c8                   ; 0x7e7f
    push ax                          ; 0x7e82
    lea ax, word [bp - 0x00f2]       ; 0x7e83
    push ax                          ; 0x7e87
    call ds_dispatch_f32d            ; 0x7e88
    add sp, byte 4                   ; 0x7e8b
    mov bx, word [bp + 0x6]          ; 0x7e8e
    cmp byte [bx + 0x6], 0           ; 0x7e91
    jne short @..local.l342          ; 0x7e95
    lea ax, word [bp - 0x0142]       ; 0x7e97
    push ax                          ; 0x7e9b
    mov ax, 0x1da                    ; 0x7e9c
    push ax                          ; 0x7e9f
    call ds_dispatch_b53b            ; 0x7ea0
    add sp, byte 4                   ; 0x7ea3
    jmp short @..local.l343          ; 0x7ea6
@..local.l342:
    lea ax, word [bp - 0x0142]       ; 0x7ea8
    push ax                          ; 0x7eac
    mov bx, word [bp + 0x6]          ; 0x7ead
    mov al, byte [bx + 0x6]          ; 0x7eb0
    sub ah, ah                       ; 0x7eb3
    push ax                          ; 0x7eb5
    call ds_dispatch_b27d            ; 0x7eb6
    add sp, byte 4                   ; 0x7eb9
@..local.l343:
    lea ax, word [bp - 0x0142]       ; 0x7ebc
    push ax                          ; 0x7ec0
    lea ax, word [bp - 0x00f2]       ; 0x7ec1
    push ax                          ; 0x7ec5
    call ds_dispatch_f32d            ; 0x7ec6
    add sp, byte 4                   ; 0x7ec9
    push word [bp - 0x000c]          ; 0x7ecc
    lea ax, word [bp - 0x00f2]       ; 0x7ecf
    push ax                          ; 0x7ed3
    call ds_dispatch_fa90            ; 0x7ed4
    pop cx                           ; 0x7ed7
    mov cx, ax                       ; 0x7ed8
    mov ax, 0x16                     ; 0x7eda
    sub ax, cx                       ; 0x7edd
    mov cx, 6                        ; 0x7edf
    imul cx                          ; 0x7ee2
    add ax, strict word 0xe          ; 0x7ee4
    push ax                          ; 0x7ee7
    call ds_dispatch_e809            ; 0x7ee8
    add sp, byte 4                   ; 0x7eeb
    mov ax, 0                        ; 0x7eee
    push ax                          ; 0x7ef1
    lea ax, word [bp - 0x00f2]       ; 0x7ef2
    push ax                          ; 0x7ef6
    call ds_dispatch_e84e            ; 0x7ef7
    add sp, byte 4                   ; 0x7efa
    add word [bp - 0x000c], byte 6   ; 0x7efd
@..local.l344:
    add word [bp - 0x000c], byte 6   ; 0x7f01
    cmp word [bp - 0x002a], byte 0   ; 0x7f05
    jne short @..local.l345          ; 0x7f09
    jmp near @..local.l355           ; 0x7f0b
@..local.l345:
    mov ax, 0                        ; 0x7f0e
    push ax                          ; 0x7f11
    mov ax, 1                        ; 0x7f12
    push ax                          ; 0x7f15
    call ds_dispatch_e823            ; 0x7f16
    add sp, byte 4                   ; 0x7f19
    lea ax, word [bp - 0x00f2]       ; 0x7f1c
    push ax                          ; 0x7f20
    mov ax, 0x1d8                    ; 0x7f21
    push ax                          ; 0x7f24
    call ds_dispatch_b53b            ; 0x7f25
    add sp, byte 4                   ; 0x7f28
    push word [bp - 0x000c]          ; 0x7f2b
    lea ax, word [bp - 0x00f2]       ; 0x7f2e
    push ax                          ; 0x7f32
    call ds_dispatch_fa90            ; 0x7f33
    pop cx                           ; 0x7f36
    mov cx, 6                        ; 0x7f37
    imul cx                          ; 0x7f3a
    mov cx, data_0002                ; 0x7f3c
    cwd                              ; 0x7f3f
    idiv cx                          ; 0x7f40
    mov cx, ax                       ; 0x7f42
    mov ax, 0x50                     ; 0x7f44
    sub ax, cx                       ; 0x7f47
    push ax                          ; 0x7f49
    call ds_dispatch_e809            ; 0x7f4a
    add sp, byte 4                   ; 0x7f4d
    mov ax, 0                        ; 0x7f50
    push ax                          ; 0x7f53
    lea ax, word [bp - 0x00f2]       ; 0x7f54
    push ax                          ; 0x7f58
    call ds_dispatch_e84e            ; 0x7f59
    add sp, byte 4                   ; 0x7f5c
    add word [bp - 0x000c], byte 6   ; 0x7f5f
    mov ax, 0                        ; 0x7f63
    push ax                          ; 0x7f66
    mov ax, 0x2e                     ; 0x7f67
    push ax                          ; 0x7f6a
    call ds_dispatch_e823            ; 0x7f6b
    add sp, byte 4                   ; 0x7f6e
    push word [bp - 0x000c]          ; 0x7f71
    mov ax, 0xe                      ; 0x7f74
    push ax                          ; 0x7f77
    call ds_dispatch_e809            ; 0x7f78
    add sp, byte 4                   ; 0x7f7b
    mov byte [bp - 0x00f2], 0        ; 0x7f7e
    mov word [bp - 0x0006], 0        ; 0x7f83
    mov word [bp - 0x0002], 0        ; 0x7f88
@..local.l346:
    mov bx, word [bp - 0x0002]       ; 0x7f8d
    add bx, bp                       ; 0x7f90
    cmp byte [bx - 0x0050], 0        ; 0x7f92
    ja short @..local.l347           ; 0x7f96
    jmp near @..local.l349           ; 0x7f98
@..local.l347:
    mov word [bp - 0x0006], 1        ; 0x7f9b
    lea ax, word [bp - 0x0142]       ; 0x7fa0
    push ax                          ; 0x7fa4
    mov ax, word [bp - 0x0002]       ; 0x7fa5
    add ax, 0x1db                    ; 0x7fa8
    push ax                          ; 0x7fab
    call ds_dispatch_b53b            ; 0x7fac
    add sp, byte 4                   ; 0x7faf
    lea ax, word [bp - 0x00f2]       ; 0x7fb2
    push ax                          ; 0x7fb6
    call ds_dispatch_fa90            ; 0x7fb7
    pop cx                           ; 0x7fba
    push ax                          ; 0x7fbb
    lea ax, word [bp - 0x0142]       ; 0x7fbc
    push ax                          ; 0x7fc0
    call ds_dispatch_fa90            ; 0x7fc1
    pop cx                           ; 0x7fc4
    mov cx, ax                       ; 0x7fc5
    pop ax                           ; 0x7fc7
    add ax, cx                       ; 0x7fc8
    cmp ax, strict word 0x16         ; 0x7fca
    jle short @..local.l348          ; 0x7fcd
    lea ax, word [bp - 0x00f2]       ; 0x7fcf
    push ax                          ; 0x7fd3
    call ds_dispatch_fa90            ; 0x7fd4
    pop cx                           ; 0x7fd7
    mov bx, ax                       ; 0x7fd8
    add bx, bp                       ; 0x7fda
    mov byte [bx - 0x00f3], 0        ; 0x7fdc
    push word [bp - 0x000c]          ; 0x7fe1
    lea ax, word [bp - 0x00f2]       ; 0x7fe4
    push ax                          ; 0x7fe8
    call ds_dispatch_fa90            ; 0x7fe9
    pop cx                           ; 0x7fec
    mov cx, 6                        ; 0x7fed
    imul cx                          ; 0x7ff0
    mov cx, data_0002                ; 0x7ff2
    cwd                              ; 0x7ff5
    idiv cx                          ; 0x7ff6
    mov cx, ax                       ; 0x7ff8
    mov ax, 0x50                     ; 0x7ffa
    sub ax, cx                       ; 0x7ffd
    push ax                          ; 0x7fff
    call ds_dispatch_e809            ; 0x8000
    add sp, byte 4                   ; 0x8003
    mov ax, 0                        ; 0x8006
    push ax                          ; 0x8009
    lea ax, word [bp - 0x00f2]       ; 0x800a
    push ax                          ; 0x800e
    call ds_dispatch_e84e            ; 0x800f
    add sp, byte 4                   ; 0x8012
    mov byte [bp - 0x00f2], 0        ; 0x8015
    add word [bp - 0x000c], byte 6   ; 0x801a
@..local.l348:
    lea ax, word [bp - 0x0142]       ; 0x801e
    push ax                          ; 0x8022
    lea ax, word [bp - 0x00f2]       ; 0x8023
    push ax                          ; 0x8027
    call ds_dispatch_f32d            ; 0x8028
    add sp, byte 4                   ; 0x802b
    mov ax, 0x90ca                   ; 0x802e
    push ax                          ; 0x8031
    lea ax, word [bp - 0x00f2]       ; 0x8032
    push ax                          ; 0x8036
    call ds_dispatch_f32d            ; 0x8037
    add sp, byte 4                   ; 0x803a
@..local.l349:
    inc word [bp - 0x0002]           ; 0x803d
    mov ax, word [bp - 0x0002]       ; 0x8040
    cmp ax, strict word 8            ; 0x8043
    jge short @..local.l350          ; 0x8046
    jmp near @..local.l346           ; 0x8048
@..local.l350:
    lea ax, word [bp - 0x00f2]       ; 0x804b
    push ax                          ; 0x804f
    call ds_dispatch_fa90            ; 0x8050
    pop cx                           ; 0x8053
    cmp ax, strict word 0            ; 0x8054
    jle short @..local.l351          ; 0x8057
    lea ax, word [bp - 0x00f2]       ; 0x8059
    push ax                          ; 0x805d
    call ds_dispatch_fa90            ; 0x805e
    pop cx                           ; 0x8061
    mov bx, ax                       ; 0x8062
    add bx, bp                       ; 0x8064
    mov byte [bx - 0x00f3], 0        ; 0x8066
    push word [bp - 0x000c]          ; 0x806b
    lea ax, word [bp - 0x00f2]       ; 0x806e
    push ax                          ; 0x8072
    call ds_dispatch_fa90            ; 0x8073
    pop cx                           ; 0x8076
    mov cx, 6                        ; 0x8077
    imul cx                          ; 0x807a
    mov cx, data_0002                ; 0x807c
    cwd                              ; 0x807f
    idiv cx                          ; 0x8080
    mov cx, ax                       ; 0x8082
    mov ax, 0x50                     ; 0x8084
    sub ax, cx                       ; 0x8087
    push ax                          ; 0x8089
    call ds_dispatch_e809            ; 0x808a
    add sp, byte 4                   ; 0x808d
    mov ax, 0                        ; 0x8090
    push ax                          ; 0x8093
    lea ax, word [bp - 0x00f2]       ; 0x8094
    push ax                          ; 0x8098
    call ds_dispatch_e84e            ; 0x8099
    add sp, byte 4                   ; 0x809c
@..local.l351:
    cmp word [bp - 0x0006], byte 0   ; 0x809f
    jne short @..local.l354          ; 0x80a3
    lea ax, word [bp - 0x00f2]       ; 0x80a5
    push ax                          ; 0x80a9
    mov bx, word [bp + 0x6]          ; 0x80aa
    cmp word [bx], strict word 0x1d5 ; 0x80ad
    jne short @..local.l352          ; 0x80b1
    mov ax, 0x1e4                    ; 0x80b3
    jmp short @..local.l353          ; 0x80b6
@..local.l352:
    mov ax, 0x1e3                    ; 0x80b8
@..local.l353:
    push ax                          ; 0x80bb
    call ds_dispatch_b53b            ; 0x80bc
    add sp, byte 4                   ; 0x80bf
    push word [bp - 0x000c]          ; 0x80c2
    lea ax, word [bp - 0x00f2]       ; 0x80c5
    push ax                          ; 0x80c9
    call ds_dispatch_fa90            ; 0x80ca
    pop cx                           ; 0x80cd
    mov cx, 6                        ; 0x80ce
    imul cx                          ; 0x80d1
    mov cx, data_0002                ; 0x80d3
    cwd                              ; 0x80d6
    idiv cx                          ; 0x80d7
    mov cx, ax                       ; 0x80d9
    mov ax, 0x50                     ; 0x80db
    sub ax, cx                       ; 0x80de
    push ax                          ; 0x80e0
    call ds_dispatch_e809            ; 0x80e1
    add sp, byte 4                   ; 0x80e4
    mov ax, 0                        ; 0x80e7
    push ax                          ; 0x80ea
    lea ax, word [bp - 0x00f2]       ; 0x80eb
    push ax                          ; 0x80ef
    call ds_dispatch_e84e            ; 0x80f0
    add sp, byte 4                   ; 0x80f3
@..local.l354:
    jmp near @..local.l361           ; 0x80f6
@..local.l355:
    cmp word [bp - 0x001e], byte 0   ; 0x80f9
    jne short @..local.l356          ; 0x80fd
    jmp near @..local.l361           ; 0x80ff
@..local.l356:
    mov ax, 0                        ; 0x8102
    push ax                          ; 0x8105
    mov ax, 1                        ; 0x8106
    push ax                          ; 0x8109
    call ds_dispatch_e823            ; 0x810a
    add sp, byte 4                   ; 0x810d
    lea ax, word [bp - 0x00f2]       ; 0x8110
    push ax                          ; 0x8114
    mov ax, 0x1d9                    ; 0x8115
    push ax                          ; 0x8118
    call ds_dispatch_b53b            ; 0x8119
    add sp, byte 4                   ; 0x811c
    push word [bp - 0x000c]          ; 0x811f
    lea ax, word [bp - 0x00f2]       ; 0x8122
    push ax                          ; 0x8126
    call ds_dispatch_fa90            ; 0x8127
    pop cx                           ; 0x812a
    mov cx, 6                        ; 0x812b
    imul cx                          ; 0x812e
    mov cx, data_0002                ; 0x8130
    cwd                              ; 0x8133
    idiv cx                          ; 0x8134
    mov cx, ax                       ; 0x8136
    mov ax, 0x50                     ; 0x8138
    sub ax, cx                       ; 0x813b
    push ax                          ; 0x813d
    call ds_dispatch_e809            ; 0x813e
    add sp, byte 4                   ; 0x8141
    mov ax, 0                        ; 0x8144
    push ax                          ; 0x8147
    lea ax, word [bp - 0x00f2]       ; 0x8148
    push ax                          ; 0x814c
    call ds_dispatch_e84e            ; 0x814d
    add sp, byte 4                   ; 0x8150
    add word [bp - 0x000c], byte 6   ; 0x8153
    mov ax, 0                        ; 0x8157
    push ax                          ; 0x815a
    mov ax, 0xa9                     ; 0x815b
    push ax                          ; 0x815e
    call ds_dispatch_e823            ; 0x815f
    add sp, byte 4                   ; 0x8162
    mov word [bp - 0x0006], 0        ; 0x8165
    mov word [bp - 0x0004], 0        ; 0x816a
@..local.l357:
    mov bx, word [bp - 0x0004]       ; 0x816f
    add bx, bp                       ; 0x8172
    mov al, byte [bx - 0x0052]       ; 0x8174
    sub ah, ah                       ; 0x8177
    mov cx, 0x10                     ; 0x8179
    cwd                              ; 0x817c
    idiv cx                          ; 0x817d
    mov word [bp - 0x0002], ax       ; 0x817f
    mov ax, 0xa                      ; 0x8182
    imul dx                          ; 0x8185
    mov word [bp - 0x0008], ax       ; 0x8187
    cmp word [bp - 0x0002], byte 0   ; 0x818a
    jg short @..local.l358           ; 0x818e
    jmp near @..local.l359           ; 0x8190
@..local.l358:
    mov word [bp - 0x0006], 1        ; 0x8193
    lea ax, word [bp - 0x00f2]       ; 0x8198
    push ax                          ; 0x819c
    mov ax, word [bp - 0x0002]       ; 0x819d
    add ax, 0x190                    ; 0x81a0
    push ax                          ; 0x81a3
    call ds_dispatch_b53b            ; 0x81a4
    add sp, byte 4                   ; 0x81a7
    push word [bp - 0x000c]          ; 0x81aa
    mov ax, 0x26                     ; 0x81ad
    push ax                          ; 0x81b0
    call ds_dispatch_e809            ; 0x81b1
    add sp, byte 4                   ; 0x81b4
    mov ax, 0                        ; 0x81b7
    push ax                          ; 0x81ba
    lea ax, word [bp - 0x00f2]       ; 0x81bb
    push ax                          ; 0x81bf
    call ds_dispatch_e84e            ; 0x81c0
    add sp, byte 4                   ; 0x81c3
    lea ax, word [bp - 0x00f2]       ; 0x81c6
    push ax                          ; 0x81ca
    push word [bp - 0x0008]          ; 0x81cb
    call ds_dispatch_b27d            ; 0x81ce
    add sp, byte 4                   ; 0x81d1
    mov ax, 0x90cc                   ; 0x81d4
    push ax                          ; 0x81d7
    lea ax, word [bp - 0x00f2]       ; 0x81d8
    push ax                          ; 0x81dc
    call ds_dispatch_f32d            ; 0x81dd
    add sp, byte 4                   ; 0x81e0
    push word [bp - 0x000c]          ; 0x81e3
    lea ax, word [bp - 0x00f2]       ; 0x81e6
    push ax                          ; 0x81ea
    call ds_dispatch_fa90            ; 0x81eb
    pop cx                           ; 0x81ee
    mov cx, ax                       ; 0x81ef
    mov ax, 0xe                      ; 0x81f1
    sub ax, cx                       ; 0x81f4
    mov cx, 6                        ; 0x81f6
    imul cx                          ; 0x81f9
    add ax, strict word 0x26         ; 0x81fb
    push ax                          ; 0x81fe
    call ds_dispatch_e809            ; 0x81ff
    add sp, byte 4                   ; 0x8202
    mov ax, 0                        ; 0x8205
    push ax                          ; 0x8208
    lea ax, word [bp - 0x00f2]       ; 0x8209
    push ax                          ; 0x820d
    call ds_dispatch_e84e            ; 0x820e
    add sp, byte 4                   ; 0x8211
    add word [bp - 0x000c], byte 6   ; 0x8214
@..local.l359:
    inc word [bp - 0x0004]           ; 0x8218
    mov ax, word [bp - 0x0004]       ; 0x821b
    cmp ax, strict word 2            ; 0x821e
    jge short @..local.l360          ; 0x8221
    jmp near @..local.l357           ; 0x8223
@..local.l360:
    cmp word [bp - 0x0006], byte 0   ; 0x8226
    jne short @..local.l361          ; 0x822a
    lea ax, word [bp - 0x00f2]       ; 0x822c
    push ax                          ; 0x8230
    mov ax, 0x1e3                    ; 0x8231
    push ax                          ; 0x8234
    call ds_dispatch_b53b            ; 0x8235
    add sp, byte 4                   ; 0x8238
    push word [bp - 0x000c]          ; 0x823b
    lea ax, word [bp - 0x00f2]       ; 0x823e
    push ax                          ; 0x8242
    call ds_dispatch_fa90            ; 0x8243
    pop cx                           ; 0x8246
    mov cx, 6                        ; 0x8247
    imul cx                          ; 0x824a
    mov cx, data_0002                ; 0x824c
    cwd                              ; 0x824f
    idiv cx                          ; 0x8250
    mov cx, ax                       ; 0x8252
    mov ax, 0x50                     ; 0x8254
    sub ax, cx                       ; 0x8257
    push ax                          ; 0x8259
    call ds_dispatch_e809            ; 0x825a
    add sp, byte 4                   ; 0x825d
    mov ax, 0                        ; 0x8260
    push ax                          ; 0x8263
    lea ax, word [bp - 0x00f2]       ; 0x8264
    push ax                          ; 0x8268
    call ds_dispatch_e84e            ; 0x8269
    add sp, byte 4                   ; 0x826c
@..local.l361:
    mov ax, 0xb6                     ; 0x826f
    push ax                          ; 0x8272
    mov ax, 0xab                     ; 0x8273
    push ax                          ; 0x8276
    mov ax, 0x70                     ; 0x8277
    push ax                          ; 0x827a
    mov ax, 1                        ; 0x827b
    push ax                          ; 0x827e
    call ds_dispatch_e8da            ; 0x827f
    add sp, byte 8                   ; 0x8282
    cmp word [data_0e32], byte 0     ; 0x8285
    je short @..local.l367           ; 0x828a
    cmp word [bp + 0xa], byte 0      ; 0x828c
    jne short @..local.l364          ; 0x8290
@..local.l362:
    cmp word [bp - 0x0194], byte 0   ; 0x8292
    je short @..local.l363           ; 0x8297
    lea ax, word [bp - 0x000c]       ; 0x8299
    push ax                          ; 0x829c
    lea ax, word [bp - 0x000a]       ; 0x829d
    push ax                          ; 0x82a0
    call ds_dispatch_f053            ; 0x82a1
    add sp, byte 4                   ; 0x82a4
    test ax, ax                      ; 0x82a7
    je short @..local.l363           ; 0x82a9
    jmp short @..local.l362          ; 0x82ab
@..local.l363:
    jmp short @..local.l366          ; 0x82ad
@..local.l364:
    call ds_dispatch_ec17            ; 0x82af
@..local.l365:
    call ds_dispatch_baef            ; 0x82b2
    test ax, ax                      ; 0x82b5
    jne short @..local.l366          ; 0x82b7
    jmp short @..local.l365          ; 0x82b9
@..local.l366:
    jmp short @..local.l368          ; 0x82bb
@..local.l367:
    mov ax, 1                        ; 0x82bd
    push ax                          ; 0x82c0
    call ds_dispatch_eb32            ; 0x82c1
    pop cx                           ; 0x82c4
    sub ah, ah                       ; 0x82c5
    mov word [bp - 0x0008], ax       ; 0x82c7
    cmp word [bp - 0x0008], byte 0x0d ; 0x82ca
    je short @..local.l368           ; 0x82ce
    cmp word [bp - 0x0008], byte 0x1b ; 0x82d0
    jne short @..local.l367          ; 0x82d4
@..local.l368:
    mov ax, 0                        ; 0x82d6
    ret                              ; 0x82d9
api_idx_0004_11:
    mov ax, 0xfffc                   ; 0x82da
    call ds_dispatch_f40b            ; 0x82dd
    mov ax, word [data_0038]         ; 0x82e0
    mov word [bp - 0x0004], ax       ; 0x82e3
    mov word [bp - 0x0002], 0        ; 0x82e6
    jmp short @..api_idx_0004_11.l5  ; 0x82eb
@..api_idx_0004_11.l1:
    mov bx, word [bp + 0x6]          ; 0x82ed
    mov si, word [bp - 0x0002]       ; 0x82f0
    cmp byte [bx + si], 0x31         ; 0x82f3
    je short @..api_idx_0004_11.l2   ; 0x82f6
    mov ax, 0x248                    ; 0x82f8
    imul word [bp + 0x4]             ; 0x82fb
    add ax, word [bp - 0x0004]       ; 0x82fe
    add ax, si                       ; 0x8301
    mov bx, ax                       ; 0x8303
    cmp byte [bx + 0x5d6c], 0        ; 0x8305
    jbe short @..api_idx_0004_11.l3  ; 0x830a
@..api_idx_0004_11.l2:
    mov ax, 1                        ; 0x830c
    jmp short @..api_idx_0004_11.l4  ; 0x830f
@..api_idx_0004_11.l3:
    mov ax, 0                        ; 0x8311
@..api_idx_0004_11.l4:
    add si, word [bp - 0x0004]       ; 0x8314
    mov cx, si                       ; 0x8317
    shl cx, 1                        ; 0x8319
    mov bx, cx                       ; 0x831b
    mov word [bx - 0x6968], ax       ; 0x831d
    inc word [bp - 0x0002]           ; 0x8321
@..api_idx_0004_11.l5:
    push word [bp + 0x6]             ; 0x8324
    call ds_dispatch_fa90            ; 0x8327
    pop cx                           ; 0x832a
    cmp ax, word [bp - 0x0002]       ; 0x832b
    jg short @..api_idx_0004_11.l1   ; 0x832e
    mov ax, word [data_003c]         ; 0x8330
    mov word [bp - 0x0004], ax       ; 0x8333
    mov word [bp - 0x0002], 0        ; 0x8336
    jmp short @..api_idx_0004_11.l10 ; 0x833b
@..api_idx_0004_11.l6:
    mov bx, word [bp + 0x8]          ; 0x833d
    mov si, word [bp - 0x0002]       ; 0x8340
    cmp byte [bx + si], 0x31         ; 0x8343
    je short @..api_idx_0004_11.l7   ; 0x8346
    mov ax, 0x248                    ; 0x8348
    imul word [bp + 0x4]             ; 0x834b
    add ax, word [bp - 0x0004]       ; 0x834e
    add ax, si                       ; 0x8351
    mov bx, ax                       ; 0x8353
    cmp byte [bx + 0x5d6c], 0        ; 0x8355
    jbe short @..api_idx_0004_11.l8  ; 0x835a
@..api_idx_0004_11.l7:
    mov ax, 1                        ; 0x835c
    jmp short @..api_idx_0004_11.l9  ; 0x835f
@..api_idx_0004_11.l8:
    mov ax, 0                        ; 0x8361
@..api_idx_0004_11.l9:
    add si, word [bp - 0x0004]       ; 0x8364
    mov cx, si                       ; 0x8367
    shl cx, 1                        ; 0x8369
    mov bx, cx                       ; 0x836b
    mov word [bx - 0x6968], ax       ; 0x836d
    inc word [bp - 0x0002]           ; 0x8371
@..api_idx_0004_11.l10:
    push word [bp + 0x8]             ; 0x8374
    call ds_dispatch_fa90            ; 0x8377
    pop cx                           ; 0x837a
    cmp ax, word [bp - 0x0002]       ; 0x837b
    jg short @..api_idx_0004_11.l6   ; 0x837e
    mov ax, word [data_0040]         ; 0x8380
    mov word [bp - 0x0004], ax       ; 0x8383
    mov word [bp - 0x0002], 0        ; 0x8386
    jmp short @..api_idx_0004_11.l15 ; 0x838b
@..api_idx_0004_11.l11:
    mov bx, word [bp + 0xa]          ; 0x838d
    mov si, word [bp - 0x0002]       ; 0x8390
    cmp byte [bx + si], 0x31         ; 0x8393
    je short @..api_idx_0004_11.l12  ; 0x8396
    mov ax, 0x248                    ; 0x8398
    imul word [bp + 0x4]             ; 0x839b
    add ax, word [bp - 0x0004]       ; 0x839e
    add ax, si                       ; 0x83a1
    mov bx, ax                       ; 0x83a3
    cmp byte [bx + 0x5d6c], 0        ; 0x83a5
    jbe short @..api_idx_0004_11.l13 ; 0x83aa
@..api_idx_0004_11.l12:
    mov ax, 1                        ; 0x83ac
    jmp short @..api_idx_0004_11.l14 ; 0x83af
@..api_idx_0004_11.l13:
    mov ax, 0                        ; 0x83b1
@..api_idx_0004_11.l14:
    add si, word [bp - 0x0004]       ; 0x83b4
    mov cx, si                       ; 0x83b7
    shl cx, 1                        ; 0x83b9
    mov bx, cx                       ; 0x83bb
    mov word [bx - 0x6968], ax       ; 0x83bd
    inc word [bp - 0x0002]           ; 0x83c1
@..api_idx_0004_11.l15:
    push word [bp + 0xa]             ; 0x83c4
    call ds_dispatch_fa90            ; 0x83c7
    pop cx                           ; 0x83ca
    cmp ax, word [bp - 0x0002]       ; 0x83cb
    jg short @..api_idx_0004_11.l11  ; 0x83ce
    mov ax, word [data_0044]         ; 0x83d0
    mov word [bp - 0x0004], ax       ; 0x83d3
    mov word [bp - 0x0002], 0        ; 0x83d6
    jmp short @..api_idx_0004_11.l20 ; 0x83db
@..api_idx_0004_11.l16:
    mov bx, word [bp + 0xc]          ; 0x83dd
    mov si, word [bp - 0x0002]       ; 0x83e0
    cmp byte [bx + si], 0x31         ; 0x83e3
    je short @..api_idx_0004_11.l17  ; 0x83e6
    mov ax, 0x248                    ; 0x83e8
    imul word [bp + 0x4]             ; 0x83eb
    add ax, word [bp - 0x0004]       ; 0x83ee
    add ax, si                       ; 0x83f1
    mov bx, ax                       ; 0x83f3
    cmp byte [bx + 0x5d6c], 0        ; 0x83f5
    jbe short @..api_idx_0004_11.l18 ; 0x83fa
@..api_idx_0004_11.l17:
    mov ax, 1                        ; 0x83fc
    jmp short @..api_idx_0004_11.l19 ; 0x83ff
@..api_idx_0004_11.l18:
    mov ax, 0                        ; 0x8401
@..api_idx_0004_11.l19:
    add si, word [bp - 0x0004]       ; 0x8404
    mov cx, si                       ; 0x8407
    shl cx, 1                        ; 0x8409
    mov bx, cx                       ; 0x840b
    mov word [bx - 0x6968], ax       ; 0x840d
    inc word [bp - 0x0002]           ; 0x8411
@..api_idx_0004_11.l20:
    push word [bp + 0xc]             ; 0x8414
    call ds_dispatch_fa90            ; 0x8417
    pop cx                           ; 0x841a
    cmp ax, word [bp - 0x0002]       ; 0x841b
    jg short @..api_idx_0004_11.l16  ; 0x841e
    ret                              ; 0x8420
api_idx_0004_12:
    mov ax, 0xfffc                   ; 0x8421
    call ds_dispatch_f40b            ; 0x8424
    mov ax, 0x248                    ; 0x8427
    imul word [bp + 0x4]             ; 0x842a
    mov bx, ax                       ; 0x842d
    mov al, byte [bx + 0x5e2d]       ; 0x842f
    sub ah, ah                       ; 0x8433
    jmp near @..api_idx_0004_12.l2   ; 0x8435
    mov ax, 0x90e9                   ; 0x8438
    push ax                          ; 0x843b
    mov ax, 0x90e2                   ; 0x843c
    push ax                          ; 0x843f
    mov ax, 0x90d9                   ; 0x8440
    push ax                          ; 0x8443
    mov ax, 0x90ce                   ; 0x8444
    push ax                          ; 0x8447
    push word [bp + 0x4]             ; 0x8448
    call api_idx_0004_11             ; 0x844b
    add sp, byte 0x0a                ; 0x844e
    jmp near @..api_idx_0004_12.l3   ; 0x8451
    mov ax, 0x910f                   ; 0x8454
    push ax                          ; 0x8457
    mov ax, 0x9108                   ; 0x8458
    push ax                          ; 0x845b
    mov ax, 0x90ff                   ; 0x845c
    push ax                          ; 0x845f
    mov ax, 0x90f4                   ; 0x8460
    push ax                          ; 0x8463
    push word [bp + 0x4]             ; 0x8464
    call api_idx_0004_11             ; 0x8467
    add sp, byte 0x0a                ; 0x846a
    jmp near @..api_idx_0004_12.l3   ; 0x846d
    mov ax, 0x9135                   ; 0x8470
    push ax                          ; 0x8473
    mov ax, 0x912e                   ; 0x8474
    push ax                          ; 0x8477
    mov ax, 0x9125                   ; 0x8478
    push ax                          ; 0x847b
    mov ax, 0x911a                   ; 0x847c
    push ax                          ; 0x847f
    push word [bp + 0x4]             ; 0x8480
    call api_idx_0004_11             ; 0x8483
    add sp, byte 0x0a                ; 0x8486
    jmp near @..api_idx_0004_12.l3   ; 0x8489
    mov ax, 0x915b                   ; 0x848c
    push ax                          ; 0x848f
    mov ax, 0x9154                   ; 0x8490
    push ax                          ; 0x8493
    mov ax, 0x914b                   ; 0x8494
    push ax                          ; 0x8497
    mov ax, 0x9140                   ; 0x8498
    push ax                          ; 0x849b
    push word [bp + 0x4]             ; 0x849c
    call api_idx_0004_11             ; 0x849f
    add sp, byte 0x0a                ; 0x84a2
    jmp near @..api_idx_0004_12.l3   ; 0x84a5
    mov ax, 0x9181                   ; 0x84a8
    push ax                          ; 0x84ab
    mov ax, 0x917a                   ; 0x84ac
    push ax                          ; 0x84af
    mov ax, 0x9171                   ; 0x84b0
    push ax                          ; 0x84b3
    mov ax, 0x9166                   ; 0x84b4
    push ax                          ; 0x84b7
    push word [bp + 0x4]             ; 0x84b8
    call api_idx_0004_11             ; 0x84bb
    add sp, byte 0x0a                ; 0x84be
    jmp near @..api_idx_0004_12.l3   ; 0x84c1
    mov ax, 0x91a7                   ; 0x84c4
    push ax                          ; 0x84c7
    mov ax, 0x91a0                   ; 0x84c8
    push ax                          ; 0x84cb
    mov ax, 0x9197                   ; 0x84cc
    push ax                          ; 0x84cf
    mov ax, 0x918c                   ; 0x84d0
    push ax                          ; 0x84d3
    push word [bp + 0x4]             ; 0x84d4
    call api_idx_0004_11             ; 0x84d7
    add sp, byte 0x0a                ; 0x84da
    jmp near @..api_idx_0004_12.l3   ; 0x84dd
    mov ax, 0x91cd                   ; 0x84e0
    push ax                          ; 0x84e3
    mov ax, 0x91c6                   ; 0x84e4
    push ax                          ; 0x84e7
    mov ax, 0x91bd                   ; 0x84e8
    push ax                          ; 0x84eb
    mov ax, api_idx_0002_11          ; 0x84ec
    push ax                          ; 0x84ef
    push word [bp + 0x4]             ; 0x84f0
    call api_idx_0004_11             ; 0x84f3
    add sp, byte 0x0a                ; 0x84f6
    jmp near @..api_idx_0004_12.l3   ; 0x84f9
    mov ax, 0x91f3                   ; 0x84fc
    push ax                          ; 0x84ff
    mov ax, 0x91ec                   ; 0x8500
    push ax                          ; 0x8503
    mov ax, 0x91e3                   ; 0x8504
    push ax                          ; 0x8507
    mov ax, 0x91d8                   ; 0x8508
    push ax                          ; 0x850b
    push word [bp + 0x4]             ; 0x850c
    call api_idx_0004_11             ; 0x850f
    add sp, byte 0x0a                ; 0x8512
    jmp near @..api_idx_0004_12.l3   ; 0x8515
    mov ax, 0x9219                   ; 0x8518
    push ax                          ; 0x851b
    mov ax, 0x9212                   ; 0x851c
    push ax                          ; 0x851f
    mov ax, 0x9209                   ; 0x8520
    push ax                          ; 0x8523
    mov ax, 0x91fe                   ; 0x8524
    push ax                          ; 0x8527
    push word [bp + 0x4]             ; 0x8528
    call api_idx_0004_11             ; 0x852b
    add sp, byte 0x0a                ; 0x852e
    jmp near @..api_idx_0004_12.l3   ; 0x8531
    mov ax, 0x923f                   ; 0x8534
    push ax                          ; 0x8537
    mov ax, 0x9238                   ; 0x8538
    push ax                          ; 0x853b
    mov ax, 0x922f                   ; 0x853c
    push ax                          ; 0x853f
    mov ax, 0x9224                   ; 0x8540
    push ax                          ; 0x8543
    push word [bp + 0x4]             ; 0x8544
    call api_idx_0004_11             ; 0x8547
    add sp, byte 0x0a                ; 0x854a
    jmp near @..api_idx_0004_12.l3   ; 0x854d
    mov ax, 0x9265                   ; 0x8550
    push ax                          ; 0x8553
    mov ax, 0x925e                   ; 0x8554
    push ax                          ; 0x8557
    mov ax, 0x9255                   ; 0x8558
    push ax                          ; 0x855b
    mov ax, 0x924a                   ; 0x855c
    push ax                          ; 0x855f
    push word [bp + 0x4]             ; 0x8560
    call api_idx_0004_11             ; 0x8563
    add sp, byte 0x0a                ; 0x8566
    jmp short @..api_idx_0004_12.l3  ; 0x8569
    mov ax, 0x928b                   ; 0x856b
    push ax                          ; 0x856e
    mov ax, 0x9284                   ; 0x856f
    push ax                          ; 0x8572
    mov ax, 0x927b                   ; 0x8573
    push ax                          ; 0x8576
    mov ax, 0x9270                   ; 0x8577
    push ax                          ; 0x857a
    push word [bp + 0x4]             ; 0x857b
    call api_idx_0004_11             ; 0x857e
    add sp, byte 0x0a                ; 0x8581
    jmp short @..api_idx_0004_12.l3  ; 0x8584
    mov ax, 0x92b1                   ; 0x8586
    push ax                          ; 0x8589
    mov ax, 0x92aa                   ; 0x858a
    push ax                          ; 0x858d
    mov ax, 0x92a1                   ; 0x858e
    push ax                          ; 0x8591
@..api_idx_0004_12.l1:
    mov ax, 0x9296                   ; 0x8592
    push ax                          ; 0x8595
    push word [bp + 0x4]             ; 0x8596
    call api_idx_0004_11             ; 0x8599
    add sp, byte 0x0a                ; 0x859c
    jmp short @..api_idx_0004_12.l3  ; 0x859f
    mov ax, 0x92d7                   ; 0x85a1
    push ax                          ; 0x85a4
    mov ax, 0x92d0                   ; 0x85a5
    push ax                          ; 0x85a8
    mov ax, 0x92c7                   ; 0x85a9
    push ax                          ; 0x85ac
    mov ax, 0x92bc                   ; 0x85ad
    push ax                          ; 0x85b0
    push word [bp + 0x4]             ; 0x85b1
    call api_idx_0004_11             ; 0x85b4
    add sp, byte 0x0a                ; 0x85b7
    jmp short @..api_idx_0004_12.l3  ; 0x85ba
    jg short @..api_idx_0004_12.l1   ; 0x85bc
    wait                             ; 0x85be
    aam 0xb7                         ; 0x85bf
    aam 0xd3                         ; 0x85c1
    aam 0xef                         ; 0x85c3
    aam 0xb                          ; 0x85c5
    aad api_idx_0002                 ; 0x85c7
    aad 0x43                         ; 0x85c9
    aad 0x5f                         ; 0x85cb
    aad 0x7b                         ; 0x85cd
    aad 0x97                         ; 0x85cf
    aad 0xb2                         ; 0x85d1
    aad 0xcd                         ; 0x85d3
    aad 0xe8                         ; 0x85d5
    db 0xd5
@..api_idx_0004_12.l2:
    db 0x3d
    push cs                          ; 0x85d9
    add byte [bp + di + 0x8], dh     ; 0x85da
    xchg bx, ax                      ; 0x85dd
    shl bx, 1                        ; 0x85de
    jmp [cs:bx - 0x29fd]             ; 0x85e0
@..api_idx_0004_12.l3:
    mov ax, 0x248                    ; 0x85e5
    imul word [bp + 0x4]             ; 0x85e8
    mov bx, ax                       ; 0x85eb
    cmp byte [bx + 0x5d65], 0xd      ; 0x85ed
    jbe short @..api_idx_0004_12.l4  ; 0x85f2
    cmp byte [bx + 0x5d6a], 0xd      ; 0x85f4
    jbe short @..api_idx_0004_12.l4  ; 0x85f9
    mov word [data_96d0], 1          ; 0x85fb
@..api_idx_0004_12.l4:
    mov word [bp - 0x0004], 0        ; 0x8601
    mov ax, word [bp + 0x6]          ; 0x8606
    shl ax, 1                        ; 0x8609
    shl ax, 1                        ; 0x860b
    mov bx, ax                       ; 0x860d
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax       ; 0x8613
    jmp short @..local.l370          ; 0x8616
@..api_idx_0004_12.l5:
    mov ax, word [bp - 0x0002]       ; 0x8618
    shl ax, 1                        ; 0x861b
    mov bx, ax                       ; 0x861d
    cmp word [bx - 0x6968], byte 1   ; 0x861f
    jne short @..local.l369          ; 0x8624
    mov ax, 0x14                     ; 0x8626
    imul word [bp - 0x0004]          ; 0x8629
    add ax, 0xe38                    ; 0x862c
    push ax                          ; 0x862f
    mov ax, word [bp - 0x0002]       ; 0x8630
    add ax, 0x157c                   ; 0x8633
    push ax                          ; 0x8636
    call ds_dispatch_b53b            ; 0x8637
    add sp, byte 4                   ; 0x863a
    mov ax, word [bp - 0x0002]       ; 0x863d
    mov cx, word [bp - 0x0004]       ; 0x8640
    shl cx, 1                        ; 0x8643
    mov si, cx                       ; 0x8645
    mov bx, word [bp + 0x8]          ; 0x8647
    mov word [bx + si], ax           ; 0x864a
    inc word [bp - 0x0004]           ; 0x864c
@..local.l369:
    inc word [bp - 0x0002]           ; 0x864f
@..local.l370:
    mov ax, word [bp + 0x6]          ; 0x8652
    shl ax, 1                        ; 0x8655
    shl ax, 1                        ; 0x8657
    mov bx, ax                       ; 0x8659
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]       ; 0x865f
    jge short @..api_idx_0004_12.l5  ; 0x8662
    mov ax, 0x96dc                   ; 0x8664
    push ax                          ; 0x8667
    mov ax, 0x159e                   ; 0x8668
    push ax                          ; 0x866b
    call ds_dispatch_b53b            ; 0x866c
    add sp, byte 4                   ; 0x866f
    mov ax, word [bp - 0x0004]       ; 0x8672
    ret                              ; 0x8675
api_idx_0002_8:
    mov ax, 0xfffe                   ; 0x8676
    call ds_dispatch_f40b            ; 0x8679
    mov ax, 0                        ; 0x867c
    push ax                          ; 0x867f
    push ax                          ; 0x8680
    push word [data_93f8]            ; 0x8681
    push word [data_93f6]            ; 0x8685
    call ds_dispatch_e942            ; 0x8689
    add sp, byte 8                   ; 0x868c
    mov word [bp - 0x0002], 0        ; 0x868f
    jmp near @..api_idx_0002_8.l2    ; 0x8694
@..api_idx_0002_8.l1:
    mov ax, 0                        ; 0x8697
    push ax                          ; 0x869a
    mov ax, word [bp + 0x6]          ; 0x869b
    shl ax, 1                        ; 0x869e
    mov bx, ax                       ; 0x86a0
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    call ds_dispatch_e823            ; 0x86a6
    add sp, byte 4                   ; 0x86a9
    mov ax, 6                        ; 0x86ac
    imul word [bp - 0x0002]          ; 0x86af
    add ax, strict word 0x72         ; 0x86b2
    push ax                          ; 0x86b5
    mov ax, 6                        ; 0x86b6
    push ax                          ; 0x86b9
    call ds_dispatch_e809            ; 0x86ba
    add sp, byte 4                   ; 0x86bd
    mov ax, 0                        ; 0x86c0
    push ax                          ; 0x86c3
    mov ax, 0x14                     ; 0x86c4
    imul word [bp - 0x0002]          ; 0x86c7
    add ax, 0xe38                    ; 0x86ca
    push ax                          ; 0x86cd
    call ds_dispatch_e84e            ; 0x86ce
    add sp, byte 4                   ; 0x86d1
    mov ax, 6                        ; 0x86d4
    imul word [bp - 0x0002]          ; 0x86d7
    add ax, strict word 0x72         ; 0x86da
    push ax                          ; 0x86dd
    mov ax, 0x85                     ; 0x86de
    push ax                          ; 0x86e1
    call ds_dispatch_e809            ; 0x86e2
    add sp, byte 4                   ; 0x86e5
    mov ax, 0                        ; 0x86e8
    push ax                          ; 0x86eb
    mov ax, 1                        ; 0x86ec
    push ax                          ; 0x86ef
    call ds_dispatch_e823            ; 0x86f0
    add sp, byte 4                   ; 0x86f3
    mov ax, 0                        ; 0x86f6
    push ax                          ; 0x86f9
    mov ax, 3                        ; 0x86fa
    push ax                          ; 0x86fd
    mov ax, 0x248                    ; 0x86fe
    imul word [bp + 0x4]             ; 0x8701
    mov cx, word [bp - 0x0002]       ; 0x8704
    shl cx, 1                        ; 0x8707
    mov si, cx                       ; 0x8709
    mov bx, word [bp + 0xa]          ; 0x870b
    mov cx, word [bx + si]           ; 0x870e
    add ax, cx                       ; 0x8710
    mov bx, ax                       ; 0x8712
    mov al, byte [bx + 0x5d6c]       ; 0x8714
    sub ah, ah                       ; 0x8718
    push ax                          ; 0x871a
    call ds_dispatch_b2e7            ; 0x871b
    add sp, byte 6                   ; 0x871e
    inc word [bp - 0x0002]           ; 0x8721
@..api_idx_0002_8.l2:
    mov ax, word [bp - 0x0002]       ; 0x8724
    cmp ax, word [bp + 0x8]          ; 0x8727
    jge short @..api_idx_0002_8.l3   ; 0x872a
    jmp near @..api_idx_0002_8.l1    ; 0x872c
@..api_idx_0002_8.l3:
    ret                              ; 0x872f
api_idx_0058:
    mov ax, 0xffa8                   ; 0x8730
    call ds_dispatch_f40b            ; 0x8733
    mov ax, 6                        ; 0x8736
    imul word [bp + 0xa]             ; 0x8739
    add ax, word [bp + 0x6]          ; 0x873c
    mov word [bp - 0x0002], ax       ; 0x873f
    mov ax, word [bp + 0x8]          ; 0x8742
    add ax, strict word 9            ; 0x8745
    mov word [bp - 0x0004], ax       ; 0x8748
    mov ax, word [bp - 0x0004]       ; 0x874b
    add ax, strict word 6            ; 0x874e
    push ax                          ; 0x8751
    mov ax, word [bp - 0x0002]       ; 0x8752
    add ax, strict word 0x19         ; 0x8755
    push ax                          ; 0x8758
    mov ax, word [bp + 0x8]          ; 0x8759
    add ax, strict word 0xffeb       ; 0x875c
    push ax                          ; 0x875f
    mov ax, word [bp + 0x6]          ; 0x8760
    add ax, strict word 0xffe7       ; 0x8763
    push ax                          ; 0x8766
    call ds_dispatch_e928            ; 0x8767
    add sp, byte 8                   ; 0x876a
    mov word [bp - 0x0056], dx       ; 0x876d
    mov word [bp - 0x0058], ax       ; 0x8770
    mov ax, word [bp - 0x0004]       ; 0x8773
    add ax, strict word 5            ; 0x8776
    push ax                          ; 0x8779
    mov ax, word [bp - 0x0002]       ; 0x877a
    add ax, strict word 0x18         ; 0x877d
    push ax                          ; 0x8780
    mov ax, word [bp + 0x8]          ; 0x8781
    add ax, strict word 0xffec       ; 0x8784
    push ax                          ; 0x8787
    mov ax, word [bp + 0x6]          ; 0x8788
    add ax, strict word 0xffe8       ; 0x878b
    push ax                          ; 0x878e
    call ds_dispatch_bc9a            ; 0x878f
    add sp, byte 8                   ; 0x8792
    lea ax, word [bp - 0x0054]       ; 0x8795
    push ax                          ; 0x8798
    push word [bp + 0x4]             ; 0x8799
    call ds_dispatch_b53b            ; 0x879c
    add sp, byte 4                   ; 0x879f
    mov ax, 0xc2                     ; 0x87a2
    push ax                          ; 0x87a5
    mov ax, 1                        ; 0x87a6
    push ax                          ; 0x87a9
    call ds_dispatch_e823            ; 0x87aa
    add sp, byte 4                   ; 0x87ad
    mov ax, word [bp + 0x8]          ; 0x87b0
    add ax, strict word 0xfff3       ; 0x87b3
    push ax                          ; 0x87b6
    lea ax, word [bp - 0x0054]       ; 0x87b7
    push ax                          ; 0x87ba
    call ds_dispatch_fa90            ; 0x87bb
    pop cx                           ; 0x87be
    mov cx, 6                        ; 0x87bf
    imul cx                          ; 0x87c2
    mov cx, data_0002                ; 0x87c4
    cwd                              ; 0x87c7
    idiv cx                          ; 0x87c8
    mov cx, ax                       ; 0x87ca
    mov ax, 0xa1                     ; 0x87cc
    sub ax, cx                       ; 0x87cf
    push ax                          ; 0x87d1
    call ds_dispatch_e809            ; 0x87d2
    add sp, byte 4                   ; 0x87d5
    mov ax, 0                        ; 0x87d8
    push ax                          ; 0x87db
    lea ax, word [bp - 0x0054]       ; 0x87dc
    push ax                          ; 0x87df
    call ds_dispatch_e84e            ; 0x87e0
    add sp, byte 4                   ; 0x87e3
    lea ax, word [bp - 0x0054]       ; 0x87e6
    push ax                          ; 0x87e9
    mov ax, word [bp + 0x4]          ; 0x87ea
    inc ax                           ; 0x87ed
    push ax                          ; 0x87ee
    call ds_dispatch_b53b            ; 0x87ef
    add sp, byte 4                   ; 0x87f2
    mov ax, 0                        ; 0x87f5
    push ax                          ; 0x87f8
    mov ax, word [bp + 0x8]          ; 0x87f9
    add ax, strict word 8            ; 0x87fc
    push ax                          ; 0x87ff
    mov ax, 6                        ; 0x8800
    imul word [bp + 0xa]             ; 0x8803
    add ax, word [bp + 0x6]          ; 0x8806
    push ax                          ; 0x8809
    push word [bp + 0x8]             ; 0x880a
    push word [bp + 0x6]             ; 0x880d
    call ds_dispatch_bce3            ; 0x8810
    add sp, byte 0x0a                ; 0x8813
    mov ax, 0xc0                     ; 0x8816
    push ax                          ; 0x8819
    mov ax, 0x1a                     ; 0x881a
    push ax                          ; 0x881d
    call ds_dispatch_e823            ; 0x881e
    add sp, byte 4                   ; 0x8821
    mov ax, word [bp + 0x8]          ; 0x8824
    inc ax                           ; 0x8827
    inc ax                           ; 0x8828
    push ax                          ; 0x8829
    lea ax, word [bp - 0x0054]       ; 0x882a
    push ax                          ; 0x882d
    call ds_dispatch_fa90            ; 0x882e
    pop cx                           ; 0x8831
    mov cx, ax                       ; 0x8832
    mov ax, word [bp + 0xa]          ; 0x8834
    sub ax, cx                       ; 0x8837
    mov cx, 6                        ; 0x8839
    imul cx                          ; 0x883c
    mov cx, data_0002                ; 0x883e
    cwd                              ; 0x8841
    idiv cx                          ; 0x8842
    add ax, word [bp + 0x6]          ; 0x8844
    inc ax                           ; 0x8847
    push ax                          ; 0x8848
    call ds_dispatch_e809            ; 0x8849
    add sp, byte 4                   ; 0x884c
    mov ax, 0                        ; 0x884f
    push ax                          ; 0x8852
    lea ax, word [bp - 0x0054]       ; 0x8853
    push ax                          ; 0x8856
    call ds_dispatch_e84e            ; 0x8857
    add sp, byte 4                   ; 0x885a
    mov ax, 0                        ; 0x885d
    push ax                          ; 0x8860
    mov ax, 0xd                      ; 0x8861
    push ax                          ; 0x8864
    mov ax, word [bp + 0x8]          ; 0x8865
    add ax, strict word 8            ; 0x8868
    push ax                          ; 0x886b
    mov ax, 6                        ; 0x886c
    imul word [bp + 0xa]             ; 0x886f
    add ax, word [bp + 0x6]          ; 0x8872
    push ax                          ; 0x8875
    push word [bp + 0x8]             ; 0x8876
    push word [bp + 0x6]             ; 0x8879
    push word [bp + 0xe]             ; 0x887c
    call ds_dispatch_baa6            ; 0x887f
    add sp, byte 0x0e                ; 0x8882
    mov ax, 0                        ; 0x8885
    push ax                          ; 0x8888
    push ax                          ; 0x8889
    push ax                          ; 0x888a
    push ax                          ; 0x888b
    push ax                          ; 0x888c
    mov ax, 0xffff                   ; 0x888d
    push ax                          ; 0x8890
    mov ax, word [bp + 0xe]          ; 0x8891
    inc ax                           ; 0x8894
    push ax                          ; 0x8895
    call ds_dispatch_baa6            ; 0x8896
    add sp, byte 0x0e                ; 0x8899
    mov ax, 0xc7                     ; 0x889c
    push ax                          ; 0x889f
    mov ax, 0x13f                    ; 0x88a0
    push ax                          ; 0x88a3
    mov ax, 0                        ; 0x88a4
    push ax                          ; 0x88a7
    push ax                          ; 0x88a8
    call ds_dispatch_e8da            ; 0x88a9
    add sp, byte 8                   ; 0x88ac
    mov ax, word [bp - 0x0058]       ; 0x88af
    mov dx, word [bp - 0x0056]       ; 0x88b2
    ret                              ; 0x88b5
api_idx_0008_4:
    mov ax, 0xfff8                   ; 0x88b6
    call ds_dispatch_f40b            ; 0x88b9
    push word [bp + 0xe]             ; 0x88bc
    push word [bp + 0xc]             ; 0x88bf
    call ds_dispatch_e823            ; 0x88c2
    add sp, byte 4                   ; 0x88c5
    push word [bp + 0x4]             ; 0x88c8
    call ds_dispatch_fa90            ; 0x88cb
    pop cx                           ; 0x88ce
    mov word [bp - 0x0004], ax       ; 0x88cf
    mov cx, 6                        ; 0x88d2
    imul cx                          ; 0x88d5
    add word [bp + 0x6], ax          ; 0x88d7
@..api_idx_0008_4.l1:
    mov word [bp - 0x0006], 0        ; 0x88da
    mov word [bp - 0x0008], 0        ; 0x88df
@..api_idx_0008_4.l2:
    mov ax, 1                        ; 0x88e4
    push ax                          ; 0x88e7
    call ds_dispatch_ea50            ; 0x88e8
    pop cx                           ; 0x88eb
    test ax, ax                      ; 0x88ec
    je short @..api_idx_0008_4.l3    ; 0x88ee
    jmp near @..api_idx_0008_4.l7    ; 0x88f0
@..api_idx_0008_4.l3:
    cmp word [bp - 0x0008], byte 0   ; 0x88f3
    jne short @..api_idx_0008_4.l5   ; 0x88f7
    push word [bp + 0xe]             ; 0x88f9
    mov ax, word [bp + 0x8]          ; 0x88fc
    add ax, strict word 5            ; 0x88ff
    push ax                          ; 0x8902
    mov ax, word [bp + 0x6]          ; 0x8903
    add ax, strict word 5            ; 0x8906
    push ax                          ; 0x8909
    push word [bp + 0x8]             ; 0x890a
    push word [bp + 0x6]             ; 0x890d
    call ds_dispatch_e901            ; 0x8910
    add sp, byte 0x0a                ; 0x8913
    cmp word [bp - 0x0006], byte 0   ; 0x8916
    je short @..api_idx_0008_4.l4    ; 0x891a
    push word [bp + 0x8]             ; 0x891c
    push word [bp + 0x6]             ; 0x891f
    call ds_dispatch_e809            ; 0x8922
    add sp, byte 4                   ; 0x8925
    mov ax, 0                        ; 0x8928
    push ax                          ; 0x892b
    mov ax, 3                        ; 0x892c
    push ax                          ; 0x892f
    call ds_dispatch_e830            ; 0x8930
    add sp, byte 4                   ; 0x8933
@..api_idx_0008_4.l4:
    mov ax, word [bp + 0x8]          ; 0x8936
    add ax, strict word 5            ; 0x8939
    push ax                          ; 0x893c
    mov ax, word [bp + 0x6]          ; 0x893d
    add ax, strict word 5            ; 0x8940
    push ax                          ; 0x8943
    push word [bp + 0x8]             ; 0x8944
    push word [bp + 0x6]             ; 0x8947
    call ds_dispatch_e8da            ; 0x894a
    add sp, byte 8                   ; 0x894d
    mov ax, word [bp - 0x0006]       ; 0x8950
    inc ax                           ; 0x8953
    mov cx, data_0002                ; 0x8954
    cwd                              ; 0x8957
    idiv cx                          ; 0x8958
    mov word [bp - 0x0006], dx       ; 0x895a
    mov word [bp - 0x0008], 0xa      ; 0x895d
    jmp short @..api_idx_0008_4.l6   ; 0x8962
@..api_idx_0008_4.l5:
    mov ax, 0xa                      ; 0x8964
    push ax                          ; 0x8967
    call ds_dispatch_e489            ; 0x8968
    pop cx                           ; 0x896b
    dec word [bp - 0x0008]           ; 0x896c
@..api_idx_0008_4.l6:
    jmp near @..api_idx_0008_4.l2    ; 0x896f
@..api_idx_0008_4.l7:
    mov ax, 1                        ; 0x8972
    push ax                          ; 0x8975
    call ds_dispatch_eb32            ; 0x8976
    pop cx                           ; 0x8979
    sub ah, ah                       ; 0x897a
    mov word [bp - 0x0002], ax       ; 0x897c
    push word [bp + 0xe]             ; 0x897f
    mov ax, word [bp + 0x8]          ; 0x8982
    add ax, strict word 5            ; 0x8985
    push ax                          ; 0x8988
    mov ax, word [bp + 0x6]          ; 0x8989
    add ax, strict word 5            ; 0x898c
    push ax                          ; 0x898f
    push word [bp + 0x8]             ; 0x8990
    push word [bp + 0x6]             ; 0x8993
    call ds_dispatch_e901            ; 0x8996
    add sp, byte 0x0a                ; 0x8999
    mov ax, word [bp + 0x8]          ; 0x899c
    add ax, strict word 5            ; 0x899f
    push ax                          ; 0x89a2
    mov ax, word [bp + 0x6]          ; 0x89a3
    add ax, strict word 5            ; 0x89a6
    push ax                          ; 0x89a9
    push word [bp + 0x8]             ; 0x89aa
    push word [bp + 0x6]             ; 0x89ad
    call ds_dispatch_e8da            ; 0x89b0
    add sp, byte 8                   ; 0x89b3
    cmp word [bp - 0x0002], byte 0x0d ; 0x89b6
    jne short @..local.l371          ; 0x89ba
    mov bx, word [bp + 0x4]          ; 0x89bc
    mov si, word [bp - 0x0004]       ; 0x89bf
    mov byte [bx + si], 0            ; 0x89c2
    call ds_dispatch_ec17            ; 0x89c5
    ret                              ; 0x89c8
@..local.l371:
    cmp word [bp - 0x0002], byte 8   ; 0x89c9
    jne short @..local.l374          ; 0x89cd
    cmp word [bp - 0x0004], byte 0   ; 0x89cf
    jle short @..local.l372          ; 0x89d3
    dec word [bp - 0x0004]           ; 0x89d5
    add word [bp + 0x6], byte 0xfa   ; 0x89d8
    jmp short @..local.l373          ; 0x89dc
@..local.l372:
    mov ax, 0                        ; 0x89de
    push ax                          ; 0x89e1
    call ds_dispatch_b7e0            ; 0x89e2
    pop cx                           ; 0x89e5
@..local.l373:
    jmp near @..local.l378           ; 0x89e6
@..local.l374:
    mov ax, word [bp - 0x0004]       ; 0x89e9
    cmp ax, word [bp + 0xa]          ; 0x89ec
    jl short @..local.l375           ; 0x89ef
    mov ax, 0                        ; 0x89f1
    push ax                          ; 0x89f4
    call ds_dispatch_b7e0            ; 0x89f5
    pop cx                           ; 0x89f8
    jmp near @..local.l378           ; 0x89f9
@..local.l375:
    cmp word [bp + 0x10], byte 0     ; 0x89fc
    jne short @..local.l376          ; 0x8a00
    mov ax, word [bp - 0x0002]       ; 0x8a02
    cmp ax, strict word 0x20         ; 0x8a05
    jl short @..local.l376           ; 0x8a08
    cmp ax, strict word 0x7f         ; 0x8a0a
    jle short @..local.l377          ; 0x8a0d
@..local.l376:
    cmp word [bp + 0x10], byte 1     ; 0x8a0f
    jne short @..local.l378          ; 0x8a13
    mov ax, word [bp - 0x0002]       ; 0x8a15
    cmp ax, strict word 0x30         ; 0x8a18
    jl short @..local.l378           ; 0x8a1b
    cmp ax, strict word 0x39         ; 0x8a1d
    jg short @..local.l378           ; 0x8a20
@..local.l377:
    mov al, byte [bp - 0x0002]       ; 0x8a22
    mov bx, word [bp + 0x4]          ; 0x8a25
    mov si, word [bp - 0x0004]       ; 0x8a28
    mov byte [bx + si], al           ; 0x8a2b
    inc word [bp - 0x0004]           ; 0x8a2d
    push word [bp + 0x8]             ; 0x8a30
    push word [bp + 0x6]             ; 0x8a33
    call ds_dispatch_e809            ; 0x8a36
    add sp, byte 4                   ; 0x8a39
    mov ax, 0                        ; 0x8a3c
    push ax                          ; 0x8a3f
    mov al, byte [bp - 0x0002]       ; 0x8a40
    sub ah, ah                       ; 0x8a43
    push ax                          ; 0x8a45
    call ds_dispatch_e830            ; 0x8a46
    add sp, byte 4                   ; 0x8a49
    mov ax, word [bp + 0x8]          ; 0x8a4c
    add ax, strict word 5            ; 0x8a4f
    push ax                          ; 0x8a52
    mov ax, word [bp + 0x6]          ; 0x8a53
    add ax, strict word 5            ; 0x8a56
    push ax                          ; 0x8a59
    push word [bp + 0x8]             ; 0x8a5a
    push word [bp + 0x6]             ; 0x8a5d
    call ds_dispatch_e8da            ; 0x8a60
    add sp, byte 8                   ; 0x8a63
    add word [bp + 0x6], byte 6      ; 0x8a66
@..local.l378:
    jmp near @..api_idx_0008_4.l1    ; 0x8a6a
    db 0xc3
api_idx_0026:
    mov ax, 0xffda                   ; 0x8a6e
    call ds_dispatch_f40b            ; 0x8a71
    mov word [data_904e], 0xffff     ; 0x8a74
    mov word [bp - 0x0002], 0x37     ; 0x8a7a
    mov word [bp - 0x0004], 0x8f     ; 0x8a7f
    mov word [bp - 0x0006], 0x108    ; 0x8a84
    mov word [bp - 0x0008], 0xc5     ; 0x8a89
    mov ax, 0x92e2                   ; 0x8a8e
    push ax                          ; 0x8a91
    mov ax, word [bp - 0x0008]       ; 0x8a92
    inc ax                           ; 0x8a95
    push ax                          ; 0x8a96
    mov ax, word [bp - 0x0006]       ; 0x8a97
    inc ax                           ; 0x8a9a
    push ax                          ; 0x8a9b
    mov ax, word [bp - 0x0004]       ; 0x8a9c
    dec ax                           ; 0x8a9f
    push ax                          ; 0x8aa0
    mov ax, word [bp - 0x0002]       ; 0x8aa1
    dec ax                           ; 0x8aa4
    push ax                          ; 0x8aa5
    call ds_dispatch_c283            ; 0x8aa6
    add sp, byte 0x0a                ; 0x8aa9
    mov word [bp - 0x0026], ax       ; 0x8aac
    push word [bp - 0x0008]          ; 0x8aaf
    push word [bp - 0x0006]          ; 0x8ab2
    push word [bp - 0x0004]          ; 0x8ab5
    push word [bp - 0x0002]          ; 0x8ab8
    call ds_dispatch_bc9a            ; 0x8abb
    add sp, byte 8                   ; 0x8abe
    lea ax, word [bp - 0x0024]       ; 0x8ac1
    push ax                          ; 0x8ac4
    push word [bp + 0x4]             ; 0x8ac5
    call ds_dispatch_b53b            ; 0x8ac8
    add sp, byte 4                   ; 0x8acb
    lea ax, word [bp - 0x0024]       ; 0x8ace
    push ax                          ; 0x8ad1
    push word [bp + 0x6]             ; 0x8ad2
    mov ax, 1                        ; 0x8ad5
    push ax                          ; 0x8ad8
    mov ax, 0x20                     ; 0x8ad9
    push ax                          ; 0x8adc
    mov ax, word [bp - 0x0004]       ; 0x8add
    add ax, strict word 7            ; 0x8ae0
    push ax                          ; 0x8ae3
    mov ax, word [bp - 0x0002]       ; 0x8ae4
    add ax, strict word 8            ; 0x8ae7
    push ax                          ; 0x8aea
    call ds_dispatch_c0c1            ; 0x8aeb
    add sp, byte 0x0c                ; 0x8aee
    lea ax, word [bp - 0x0024]       ; 0x8af1
    push ax                          ; 0x8af4
    mov ax, word [bp + 0x4]          ; 0x8af5
    inc ax                           ; 0x8af8
    push ax                          ; 0x8af9
    call ds_dispatch_b53b            ; 0x8afa
    add sp, byte 4                   ; 0x8afd
    lea ax, word [bp - 0x0024]       ; 0x8b00
    push ax                          ; 0x8b03
    push word [bp + 0x8]             ; 0x8b04
    mov ax, 1                        ; 0x8b07
    push ax                          ; 0x8b0a
    mov ax, 0xc                      ; 0x8b0b
    push ax                          ; 0x8b0e
    mov ax, word [bp - 0x0004]       ; 0x8b0f
    add ax, strict word 0x17         ; 0x8b12
    push ax                          ; 0x8b15
    mov ax, word [bp - 0x0002]       ; 0x8b16
    add ax, strict word 8            ; 0x8b19
    push ax                          ; 0x8b1c
    call ds_dispatch_c0c1            ; 0x8b1d
    add sp, byte 0x0c                ; 0x8b20
    lea ax, word [bp - 0x0024]       ; 0x8b23
    push ax                          ; 0x8b26
    mov ax, word [bp + 0x4]          ; 0x8b27
    inc ax                           ; 0x8b2a
    inc ax                           ; 0x8b2b
    push ax                          ; 0x8b2c
    call ds_dispatch_b53b            ; 0x8b2d
    add sp, byte 4                   ; 0x8b30
    lea ax, word [bp - 0x0024]       ; 0x8b33
    push ax                          ; 0x8b36
    push word [bp + 0xa]             ; 0x8b37
    mov ax, 1                        ; 0x8b3a
    push ax                          ; 0x8b3d
    mov ax, 0xc                      ; 0x8b3e
    push ax                          ; 0x8b41
    mov ax, word [bp - 0x0004]       ; 0x8b42
    add ax, strict word 0x27         ; 0x8b45
    push ax                          ; 0x8b48
    mov ax, word [bp - 0x0002]       ; 0x8b49
    add ax, strict word 8            ; 0x8b4c
    push ax                          ; 0x8b4f
    call ds_dispatch_c0c1            ; 0x8b50
    add sp, byte 0x0c                ; 0x8b53
    lea ax, word [bp - 0x0024]       ; 0x8b56
    push ax                          ; 0x8b59
    mov ax, word [bp + 0x4]          ; 0x8b5a
    inc ax                           ; 0x8b5d
    inc ax                           ; 0x8b5e
    inc ax                           ; 0x8b5f
    push ax                          ; 0x8b60
    call ds_dispatch_b53b            ; 0x8b61
    add sp, byte 4                   ; 0x8b64
    mov ax, 0xc2                     ; 0x8b67
    push ax                          ; 0x8b6a
    mov ax, 0x9b                     ; 0x8b6b
    push ax                          ; 0x8b6e
    call ds_dispatch_e823            ; 0x8b6f
    add sp, byte 4                   ; 0x8b72
    mov ax, word [bp - 0x0004]       ; 0x8b75
    add ax, strict word 0x16         ; 0x8b78
    push ax                          ; 0x8b7b
    lea ax, word [bp - 0x0024]       ; 0x8b7c
    push ax                          ; 0x8b7f
    call ds_dispatch_fa90            ; 0x8b80
    pop cx                           ; 0x8b83
    mov cx, ax                       ; 0x8b84
    mov ax, 0x11                     ; 0x8b86
    sub ax, cx                       ; 0x8b89
    mov cx, 6                        ; 0x8b8b
    imul cx                          ; 0x8b8e
    inc ax                           ; 0x8b90
    inc ax                           ; 0x8b91
    mov cx, data_0002                ; 0x8b92
    cwd                              ; 0x8b95
    idiv cx                          ; 0x8b96
    add ax, word [bp - 0x0002]       ; 0x8b98
    add ax, strict word 0x5d         ; 0x8b9b
    push ax                          ; 0x8b9e
    call ds_dispatch_e809            ; 0x8b9f
    add sp, byte 4                   ; 0x8ba2
    mov ax, 0                        ; 0x8ba5
    push ax                          ; 0x8ba8
    lea ax, word [bp - 0x0024]       ; 0x8ba9
    push ax                          ; 0x8bac
    call ds_dispatch_e84e            ; 0x8bad
    add sp, byte 4                   ; 0x8bb0
    push word [bp + 0xc]             ; 0x8bb3
    mov ax, 0xe38                    ; 0x8bb6
    push ax                          ; 0x8bb9
    call ds_dispatch_f364            ; 0x8bba
    add sp, byte 4                   ; 0x8bbd
    mov ax, 1                        ; 0x8bc0
    push ax                          ; 0x8bc3
    mov ax, 0                        ; 0x8bc4
    push ax                          ; 0x8bc7
    push ax                          ; 0x8bc8
    mov ax, 1                        ; 0x8bc9
    push ax                          ; 0x8bcc
    mov ax, 0x11                     ; 0x8bcd
    push ax                          ; 0x8bd0
    mov ax, word [bp - 0x0004]       ; 0x8bd1
    add ax, strict word 0x1f         ; 0x8bd4
    push ax                          ; 0x8bd7
    mov ax, word [bp - 0x0002]       ; 0x8bd8
    add ax, strict word 0x5d         ; 0x8bdb
    push ax                          ; 0x8bde
    call ds_dispatch_bf97            ; 0x8bdf
    add sp, byte 0x0e                ; 0x8be2
    mov ax, 0                        ; 0x8be5
    push ax                          ; 0x8be8
    mov ax, 0x20                     ; 0x8be9
    push ax                          ; 0x8bec
    mov ax, word [bp - 0x0004]       ; 0x8bed
    add ax, strict word 0x25         ; 0x8bf0
    push ax                          ; 0x8bf3
    mov ax, word [bp - 0x0002]       ; 0x8bf4
    add ax, 0xc5                     ; 0x8bf7
    push ax                          ; 0x8bfa
    mov ax, word [bp - 0x0004]       ; 0x8bfb
    add ax, strict word 0x1f         ; 0x8bfe
    push ax                          ; 0x8c01
    mov ax, word [bp - 0x0002]       ; 0x8c02
    add ax, strict word 0x5d         ; 0x8c05
    push ax                          ; 0x8c08
    mov ax, 0                        ; 0x8c09
    push ax                          ; 0x8c0c
    call ds_dispatch_baa6            ; 0x8c0d
    add sp, byte 0x0e                ; 0x8c10
    mov ax, 0                        ; 0x8c13
    push ax                          ; 0x8c16
    push ax                          ; 0x8c17
    mov ax, word [bp - 0x0004]       ; 0x8c18
    add ax, strict word 0xf          ; 0x8c1b
    push ax                          ; 0x8c1e
    mov ax, word [bp - 0x0002]       ; 0x8c1f
    add ax, strict word 0x50         ; 0x8c22
    push ax                          ; 0x8c25
    mov ax, word [bp - 0x0004]       ; 0x8c26
    add ax, strict word 7            ; 0x8c29
    push ax                          ; 0x8c2c
    mov ax, word [bp - 0x0002]       ; 0x8c2d
    add ax, strict word 8            ; 0x8c30
    push ax                          ; 0x8c33
    mov ax, 1                        ; 0x8c34
    push ax                          ; 0x8c37
    call ds_dispatch_baa6            ; 0x8c38
    add sp, byte 0x0e                ; 0x8c3b
    mov ax, 0                        ; 0x8c3e
    push ax                          ; 0x8c41
    mov ax, 0xd                      ; 0x8c42
    push ax                          ; 0x8c45
    mov ax, word [bp - 0x0004]       ; 0x8c46
    add ax, strict word 0x1f         ; 0x8c49
    push ax                          ; 0x8c4c
    mov ax, word [bp - 0x0002]       ; 0x8c4d
    add ax, strict word 0x50         ; 0x8c50
    push ax                          ; 0x8c53
    mov ax, word [bp - 0x0004]       ; 0x8c54
    add ax, strict word 0x17         ; 0x8c57
    push ax                          ; 0x8c5a
    mov ax, word [bp - 0x0002]       ; 0x8c5b
    add ax, strict word 8            ; 0x8c5e
    push ax                          ; 0x8c61
    mov ax, data_0002                ; 0x8c62
    push ax                          ; 0x8c65
    call ds_dispatch_baa6            ; 0x8c66
    add sp, byte 0x0e                ; 0x8c69
    mov ax, 0                        ; 0x8c6c
    push ax                          ; 0x8c6f
    mov ax, 0x1b                     ; 0x8c70
    push ax                          ; 0x8c73
    mov ax, word [bp - 0x0004]       ; 0x8c74
    add ax, strict word 0x2f         ; 0x8c77
    push ax                          ; 0x8c7a
    mov ax, word [bp - 0x0002]       ; 0x8c7b
    add ax, strict word 0x50         ; 0x8c7e
    push ax                          ; 0x8c81
    mov ax, word [bp - 0x0004]       ; 0x8c82
    add ax, strict word 0x27         ; 0x8c85
    push ax                          ; 0x8c88
    mov ax, word [bp - 0x0002]       ; 0x8c89
    add ax, strict word 8            ; 0x8c8c
    push ax                          ; 0x8c8f
    mov ax, 3                        ; 0x8c90
    push ax                          ; 0x8c93
    call ds_dispatch_baa6            ; 0x8c94
    add sp, byte 0x0e                ; 0x8c97
    mov ax, 0                        ; 0x8c9a
    push ax                          ; 0x8c9d
    push ax                          ; 0x8c9e
    push ax                          ; 0x8c9f
    push ax                          ; 0x8ca0
    push ax                          ; 0x8ca1
    mov ax, 0xffff                   ; 0x8ca2
    push ax                          ; 0x8ca5
    mov ax, 4                        ; 0x8ca6
    push ax                          ; 0x8ca9
    call ds_dispatch_baa6            ; 0x8caa
    add sp, byte 0x0e                ; 0x8cad
    mov ax, word [bp - 0x0008]       ; 0x8cb0
    inc ax                           ; 0x8cb3
    push ax                          ; 0x8cb4
    mov ax, word [bp - 0x0006]       ; 0x8cb5
    inc ax                           ; 0x8cb8
    push ax                          ; 0x8cb9
    mov ax, word [bp - 0x0004]       ; 0x8cba
    dec ax                           ; 0x8cbd
    push ax                          ; 0x8cbe
    mov ax, word [bp - 0x0002]       ; 0x8cbf
    dec ax                           ; 0x8cc2
    push ax                          ; 0x8cc3
    call ds_dispatch_e8da            ; 0x8cc4
    add sp, byte 8                   ; 0x8cc7
    call ds_dispatch_ec17            ; 0x8cca
    mov ax, 0                        ; 0x8ccd
    push ax                          ; 0x8cd0
    mov ax, 1                        ; 0x8cd1
    push ax                          ; 0x8cd4
    mov ax, 0                        ; 0x8cd5
    push ax                          ; 0x8cd8
    mov ax, 7                        ; 0x8cd9
    push ax                          ; 0x8cdc
    mov ax, word [bp - 0x0004]       ; 0x8cdd
    add ax, strict word 0x20         ; 0x8ce0
    push ax                          ; 0x8ce3
    mov ax, word [bp - 0x0002]       ; 0x8ce4
    add ax, strict word 0x5f         ; 0x8ce7
    push ax                          ; 0x8cea
    mov ax, 0xe38                    ; 0x8ceb
    push ax                          ; 0x8cee
    call api_idx_0008_4              ; 0x8cef
    add sp, byte 0x0e                ; 0x8cf2
    mov ax, 0xe38                    ; 0x8cf5
    push ax                          ; 0x8cf8
    push word [bp + 0xc]             ; 0x8cf9
    call ds_dispatch_f364            ; 0x8cfc
    add sp, byte 4                   ; 0x8cff
    mov ax, 1                        ; 0x8d02
    push ax                          ; 0x8d05
    mov ax, 0xffff                   ; 0x8d06
    push ax                          ; 0x8d09
    mov ax, 0                        ; 0x8d0a
    push ax                          ; 0x8d0d
    mov ax, 1                        ; 0x8d0e
    push ax                          ; 0x8d11
    mov ax, 0x11                     ; 0x8d12
    push ax                          ; 0x8d15
    mov ax, word [bp - 0x0004]       ; 0x8d16
    add ax, strict word 0x1f         ; 0x8d19
    push ax                          ; 0x8d1c
    mov ax, word [bp - 0x0002]       ; 0x8d1d
    add ax, strict word 0x5d         ; 0x8d20
    push ax                          ; 0x8d23
    call ds_dispatch_bf97            ; 0x8d24
    add sp, byte 0x0e                ; 0x8d27
    mov ax, word [bp - 0x0004]       ; 0x8d2a
    add ax, strict word 0x26         ; 0x8d2d
    push ax                          ; 0x8d30
    mov ax, word [bp - 0x0002]       ; 0x8d31
    add ax, 0xc5                     ; 0x8d34
    push ax                          ; 0x8d37
    mov ax, word [bp - 0x0004]       ; 0x8d38
    add ax, strict word 0x1f         ; 0x8d3b
    push ax                          ; 0x8d3e
    mov ax, word [bp - 0x0002]       ; 0x8d3f
    add ax, strict word 0x5d         ; 0x8d42
    push ax                          ; 0x8d45
    call ds_dispatch_e8da            ; 0x8d46
    add sp, byte 8                   ; 0x8d49
    mov word [bp - 0x0010], 1        ; 0x8d4c
@..local.l379:
    mov ax, 0x59fe                   ; 0x8d51
    push ax                          ; 0x8d54
    call ds_dispatch_b90d            ; 0x8d55
    pop cx                           ; 0x8d58
    dec ax                           ; 0x8d59
    mov word [bp - 0x000e], ax       ; 0x8d5a
    cmp word [data_5b3e], byte 1     ; 0x8d5d
    je short @..local.l380           ; 0x8d62
    jmp near @..local.l392           ; 0x8d64
@..local.l380:
    jmp near @..local.l388           ; 0x8d67
@..local.l381:
    call ds_dispatch_ec17            ; 0x8d6a
    mov ax, 1                        ; 0x8d6d
    push ax                          ; 0x8d70
    mov ax, 0                        ; 0x8d71
    push ax                          ; 0x8d74
    push ax                          ; 0x8d75
    mov ax, 1                        ; 0x8d76
    push ax                          ; 0x8d79
    mov ax, 0x11                     ; 0x8d7a
    push ax                          ; 0x8d7d
    mov ax, word [bp - 0x0004]       ; 0x8d7e
    add ax, strict word 0x1f         ; 0x8d81
    push ax                          ; 0x8d84
    mov ax, word [bp - 0x0002]       ; 0x8d85
    add ax, strict word 0x5d         ; 0x8d88
    push ax                          ; 0x8d8b
    call ds_dispatch_bf97            ; 0x8d8c
    add sp, byte 0x0e                ; 0x8d8f
    mov ax, word [bp - 0x0004]       ; 0x8d92
    add ax, strict word 0x26         ; 0x8d95
    push ax                          ; 0x8d98
    mov ax, word [bp - 0x0002]       ; 0x8d99
    add ax, 0xc5                     ; 0x8d9c
    push ax                          ; 0x8d9f
    mov ax, word [bp - 0x0004]       ; 0x8da0
    add ax, strict word 0x1f         ; 0x8da3
    push ax                          ; 0x8da6
    mov ax, word [bp - 0x0002]       ; 0x8da7
    add ax, strict word 0x5d         ; 0x8daa
    push ax                          ; 0x8dad
    call ds_dispatch_e8da            ; 0x8dae
    add sp, byte 8                   ; 0x8db1
    mov ax, 0                        ; 0x8db4
    push ax                          ; 0x8db7
    mov ax, 1                        ; 0x8db8
    push ax                          ; 0x8dbb
    mov ax, 0                        ; 0x8dbc
    push ax                          ; 0x8dbf
    mov ax, 7                        ; 0x8dc0
    push ax                          ; 0x8dc3
    mov ax, word [bp - 0x0004]       ; 0x8dc4
    add ax, strict word 0x20         ; 0x8dc7
    push ax                          ; 0x8dca
    mov ax, word [bp - 0x0002]       ; 0x8dcb
    add ax, strict word 0x5f         ; 0x8dce
    push ax                          ; 0x8dd1
    mov ax, 0xe38                    ; 0x8dd2
    push ax                          ; 0x8dd5
    call api_idx_0008_4              ; 0x8dd6
    add sp, byte 0x0e                ; 0x8dd9
    mov ax, 0xe38                    ; 0x8ddc
    push ax                          ; 0x8ddf
    push word [bp + 0xc]             ; 0x8de0
    call ds_dispatch_f364            ; 0x8de3
    add sp, byte 4                   ; 0x8de6
    mov ax, 1                        ; 0x8de9
    push ax                          ; 0x8dec
    mov ax, 0xffff                   ; 0x8ded
    push ax                          ; 0x8df0
    mov ax, 0                        ; 0x8df1
    push ax                          ; 0x8df4
    mov ax, 1                        ; 0x8df5
    push ax                          ; 0x8df8
    mov ax, 0x11                     ; 0x8df9
    push ax                          ; 0x8dfc
    mov ax, word [bp - 0x0004]       ; 0x8dfd
    add ax, strict word 0x1f         ; 0x8e00
    push ax                          ; 0x8e03
    mov ax, word [bp - 0x0002]       ; 0x8e04
    add ax, strict word 0x5d         ; 0x8e07
    push ax                          ; 0x8e0a
    call ds_dispatch_bf97            ; 0x8e0b
    add sp, byte 0x0e                ; 0x8e0e
    mov ax, word [bp - 0x0004]       ; 0x8e11
    add ax, strict word 0x26         ; 0x8e14
    push ax                          ; 0x8e17
    mov ax, word [bp - 0x0002]       ; 0x8e18
    add ax, 0xc5                     ; 0x8e1b
    push ax                          ; 0x8e1e
    mov ax, word [bp - 0x0004]       ; 0x8e1f
    add ax, strict word 0x1f         ; 0x8e22
    push ax                          ; 0x8e25
    mov ax, word [bp - 0x0002]       ; 0x8e26
    add ax, strict word 0x5d         ; 0x8e29
    push ax                          ; 0x8e2c
    call ds_dispatch_e8da            ; 0x8e2d
    add sp, byte 8                   ; 0x8e30
    jmp near @..local.l392           ; 0x8e33
@..local.l382:
    cmp word [bp + 0x6], byte 0      ; 0x8e36
    je short @..local.l383           ; 0x8e3a
    mov ax, 1                        ; 0x8e3c
    push ax                          ; 0x8e3f
    push ax                          ; 0x8e40
    mov ax, 0xc                      ; 0x8e41
    push ax                          ; 0x8e44
    mov ax, word [bp - 0x0004]       ; 0x8e45
    add ax, strict word 7            ; 0x8e48
    push ax                          ; 0x8e4b
    mov ax, word [bp - 0x0002]       ; 0x8e4c
    add ax, strict word 8            ; 0x8e4f
    push ax                          ; 0x8e52
    call ds_dispatch_be5f            ; 0x8e53
    add sp, byte 0x0a                ; 0x8e56
    mov ax, 0                        ; 0x8e59
    push ax                          ; 0x8e5c
    mov ax, 1                        ; 0x8e5d
    push ax                          ; 0x8e60
    mov ax, 0xc                      ; 0x8e61
    push ax                          ; 0x8e64
    mov ax, word [bp - 0x0004]       ; 0x8e65
    add ax, strict word 7            ; 0x8e68
    push ax                          ; 0x8e6b
    mov ax, word [bp - 0x0002]       ; 0x8e6c
    add ax, strict word 8            ; 0x8e6f
    push ax                          ; 0x8e72
    call ds_dispatch_be5f            ; 0x8e73
    add sp, byte 0x0a                ; 0x8e76
    mov word [data_9050], 0          ; 0x8e79
    mov word [bp - 0x0010], 0        ; 0x8e7f
@..local.l383:
    jmp near @..local.l392           ; 0x8e84
@..local.l384:
    cmp word [bp + 0x8], byte 0      ; 0x8e87
    je short @..local.l385           ; 0x8e8b
    mov ax, 1                        ; 0x8e8d
    push ax                          ; 0x8e90
    push ax                          ; 0x8e91
    mov ax, 0xc                      ; 0x8e92
    push ax                          ; 0x8e95
    mov ax, word [bp - 0x0004]       ; 0x8e96
    add ax, strict word 0x17         ; 0x8e99
    push ax                          ; 0x8e9c
    mov ax, word [bp - 0x0002]       ; 0x8e9d
    add ax, strict word 8            ; 0x8ea0
    push ax                          ; 0x8ea3
    call ds_dispatch_be5f            ; 0x8ea4
    add sp, byte 0x0a                ; 0x8ea7
    mov ax, 0                        ; 0x8eaa
    push ax                          ; 0x8ead
    mov ax, 1                        ; 0x8eae
    push ax                          ; 0x8eb1
    mov ax, 0xc                      ; 0x8eb2
    push ax                          ; 0x8eb5
    mov ax, word [bp - 0x0004]       ; 0x8eb6
    add ax, strict word 0x17         ; 0x8eb9
    push ax                          ; 0x8ebc
    mov ax, word [bp - 0x0002]       ; 0x8ebd
    add ax, strict word 8            ; 0x8ec0
    push ax                          ; 0x8ec3
    call ds_dispatch_be5f            ; 0x8ec4
    add sp, byte 0x0a                ; 0x8ec7
    mov word [data_9050], 1          ; 0x8eca
    mov word [bp - 0x0010], 0        ; 0x8ed0
@..local.l385:
    jmp short @..local.l392          ; 0x8ed5
@..local.l386:
    cmp word [bp + 0xa], byte 0      ; 0x8ed7
    je short @..local.l387           ; 0x8edb
    mov ax, 1                        ; 0x8edd
    push ax                          ; 0x8ee0
    push ax                          ; 0x8ee1
    mov ax, 0xc                      ; 0x8ee2
    push ax                          ; 0x8ee5
    mov ax, word [bp - 0x0004]       ; 0x8ee6
    add ax, strict word 0x27         ; 0x8ee9
    push ax                          ; 0x8eec
    mov ax, word [bp - 0x0002]       ; 0x8eed
    add ax, strict word 8            ; 0x8ef0
    push ax                          ; 0x8ef3
    call ds_dispatch_be5f            ; 0x8ef4
    add sp, byte 0x0a                ; 0x8ef7
    mov ax, 0                        ; 0x8efa
    push ax                          ; 0x8efd
    mov ax, 1                        ; 0x8efe
    push ax                          ; 0x8f01
    mov ax, 0xc                      ; 0x8f02
    push ax                          ; 0x8f05
    mov ax, word [bp - 0x0004]       ; 0x8f06
    add ax, strict word 0x27         ; 0x8f09
    push ax                          ; 0x8f0c
    mov ax, word [bp - 0x0002]       ; 0x8f0d
    add ax, strict word 8            ; 0x8f10
    push ax                          ; 0x8f13
    call ds_dispatch_be5f            ; 0x8f14
    add sp, byte 0x0a                ; 0x8f17
    mov word [data_9050], data_0002  ; 0x8f1a
    mov word [bp - 0x0010], 0        ; 0x8f20
@..local.l387:
    jmp short @..local.l392          ; 0x8f25
@..local.l388:
    cmp ax, strict word 0            ; 0x8f27
    jne short @..local.l389          ; 0x8f2a
    jmp near @..local.l381           ; 0x8f2c
@..local.l389:
    cmp ax, strict word 1            ; 0x8f2f
    jne short @..local.l390          ; 0x8f32
    jmp near @..local.l382           ; 0x8f34
@..local.l390:
    cmp ax, strict word 2            ; 0x8f37
    jne short @..local.l391          ; 0x8f3a
    jmp near @..local.l384           ; 0x8f3c
@..local.l391:
    cmp ax, strict word 3            ; 0x8f3f
    je short @..local.l386           ; 0x8f42
@..local.l392:
    cmp word [bp - 0x0010], byte 0   ; 0x8f44
    je short @..local.l393           ; 0x8f48
    jmp near @..local.l379           ; 0x8f4a
@..local.l393:
    mov ax, 1                        ; 0x8f4d
    push ax                          ; 0x8f50
    push word [bp - 0x0026]          ; 0x8f51
    call ds_dispatch_c459            ; 0x8f54
    add sp, byte 4                   ; 0x8f57
    mov word [data_904e], 0xffff     ; 0x8f5a
    mov ax, word [data_9050]         ; 0x8f60
    ret                              ; 0x8f63
api_idx_0002_9:
    mov ax, 0xfffe                   ; 0x8f64
    call ds_dispatch_f40b            ; 0x8f67
    mov word [bp - 0x0002], 0        ; 0x8f6a
@..api_idx_0002_9.l1:
    mov ax, 0x248                    ; 0x8f6f
    imul word [bp + 0x4]             ; 0x8f72
    add ax, word [bp - 0x0002]       ; 0x8f75
    mov bx, ax                       ; 0x8f78
    mov al, byte [bx + 0x5d64]       ; 0x8f7a
    sub ah, ah                       ; 0x8f7e
    push ax                          ; 0x8f80
    mov bx, word [bp + 0x6]          ; 0x8f81
    mov si, word [bp - 0x0002]       ; 0x8f84
    mov al, byte [bx + si]           ; 0x8f87
    cbw                              ; 0x8f89
    mov cx, ax                       ; 0x8f8a
    add ax, strict word 0xffbf       ; 0x8f8c
    mov cx, ax                       ; 0x8f8f
    pop ax                           ; 0x8f91
    cmp ax, cx                       ; 0x8f92
    jle short @..api_idx_0002_9.l2   ; 0x8f94
    mov al, byte [bx + si]           ; 0x8f96
    add al, 0xbf                     ; 0x8f98
    push ax                          ; 0x8f9a
    mov ax, 0x248                    ; 0x8f9b
    imul word [bp + 0x4]             ; 0x8f9e
    mov cx, ax                       ; 0x8fa1
    add ax, si                       ; 0x8fa3
    mov bx, ax                       ; 0x8fa5
    pop ax                           ; 0x8fa7
    mov byte [bx + 0x5d64], al       ; 0x8fa8
@..api_idx_0002_9.l2:
    inc word [bp - 0x0002]           ; 0x8fac
    mov ax, word [bp - 0x0002]       ; 0x8faf
    cmp ax, strict word 7            ; 0x8fb2
    jl short @..api_idx_0002_9.l1    ; 0x8fb5
    ret                              ; 0x8fb7
api_idx_0002_10:
    mov ax, 0xfffe                   ; 0x8fb8
    call ds_dispatch_f40b            ; 0x8fbb
    mov ax, word [bp + 0x6]          ; 0x8fbe
    shl ax, 1                        ; 0x8fc1
    mov bx, ax                       ; 0x8fc3
    mov word [bx - 0x6984], 1        ; 0x8fc5
    mov word [bp - 0x0002], 0        ; 0x8fcb
@..api_idx_0002_10.l1:
    mov ax, 0x248                    ; 0x8fd0
    imul word [bp + 0x4]             ; 0x8fd3
    add ax, word [bp - 0x0002]       ; 0x8fd6
    mov bx, ax                       ; 0x8fd9
    mov al, byte [bx + 0x5d64]       ; 0x8fdb
    sub ah, ah                       ; 0x8fdf
    push ax                          ; 0x8fe1
    mov bx, word [bp + 0x8]          ; 0x8fe2
    mov si, word [bp - 0x0002]       ; 0x8fe5
    mov al, byte [bx + si]           ; 0x8fe8
    cbw                              ; 0x8fea
    mov cx, ax                       ; 0x8feb
    add ax, strict word 0xffbf       ; 0x8fed
    mov cx, ax                       ; 0x8ff0
    pop ax                           ; 0x8ff2
    cmp ax, cx                       ; 0x8ff3
    jge short @..api_idx_0002_10.l3  ; 0x8ff5
    cmp word [bp + 0xa], byte 0      ; 0x8ff7
    je short @..api_idx_0002_10.l2   ; 0x8ffb
    mov al, byte [bx + si]           ; 0x8ffd
    add al, 0xbf                     ; 0x8fff
    push ax                          ; 0x9001
    mov ax, 0x248                    ; 0x9002
    imul word [bp + 0x4]             ; 0x9005
    mov cx, ax                       ; 0x9008
    add ax, si                       ; 0x900a
    mov bx, ax                       ; 0x900c
    pop ax                           ; 0x900e
    mov byte [bx + 0x5d64], al       ; 0x900f
    jmp short @..api_idx_0002_10.l3  ; 0x9013
@..api_idx_0002_10.l2:
    mov ax, word [bp + 0x6]          ; 0x9015
    shl ax, 1                        ; 0x9018
    mov bx, ax                       ; 0x901a
    mov word [bx - 0x6984], 0        ; 0x901c
@..api_idx_0002_10.l3:
    inc word [bp - 0x0002]           ; 0x9022
    mov ax, word [bp - 0x0002]       ; 0x9025
    cmp ax, strict word 7            ; 0x9028
    jl short @..api_idx_0002_10.l1   ; 0x902b
    ret                              ; 0x902d
loc_902e:
    mov ax, 0                        ; 0x902e
    call ds_dispatch_f40b            ; 0x9031
    mov ax, word [bp + 0x6]          ; 0x9034
    jmp near @..local.l394           ; 0x9037

    db 0xff, 0x76, 0x08, 0xb8, 0xe8, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x6e, 0xff
    db 0x83, 0xc4, 0x08, 0xe9, 0x61, 0x01, 0xff, 0x76, 0x08, 0xb8, 0xf1, 0x92, 0x50, 0xff, 0x76, 0x06
    db 0xff, 0x76, 0x04, 0xe8, 0x58, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x4b, 0x01, 0xff, 0x76, 0x08, 0xb8
    db 0xfa, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x42, 0xff, 0x83, 0xc4, 0x08, 0xe9
    db 0x35, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x03, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8
    db 0x2c, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x1f, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x0c, 0x93, 0x50, 0xff
    db 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x16, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x09, 0x01, 0xff, 0x76
    db 0x08, 0xb8, 0x15, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x00, 0xff, 0x83, 0xc4
    db 0x08, 0xe9, 0xf3, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x1e, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0xea, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xdd, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x27, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xd4, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xc7, 0x00
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x80, 0xbf, 0x2c, 0x5e, 0x01, 0x75, 0x15, 0xff
    db 0x76, 0x08, 0xb8, 0x30, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xaf, 0xfe, 0x83
    db 0xc4, 0x08, 0xeb, 0x0d, 0x8b, 0x46, 0x06, 0xd1, 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0x7c, 0x96, 0x00
    db 0x00, 0xe9, 0x93, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x39, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0x8a, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x7d, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x42, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x74, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x68, 0xff
    db 0x76, 0x08, 0xb8, 0x4b, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5f, 0xfe, 0x83
    db 0xc4, 0x08, 0xeb, 0x53, 0xff, 0x76, 0x08, 0xb8, 0x54, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0x4a, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x3e, 0xff, 0x76, 0x08, 0xb8, 0x5d, 0x93, 0x50
    db 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x35, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x29, 0x81, 0xe0
    db 0x97, 0xe0, 0xad, 0xe0, 0xc3, 0xe0, 0xd9, 0xe0, 0xef, 0xe0, 0x05, 0xe1, 0x1b, 0xe1, 0x31, 0xe1
    db 0x65, 0xe1, 0x7b, 0xe1, 0x90, 0xe1, 0xa5, 0xe1, 0xba, 0xe1

@..local.l394:
    cmp ax, strict word 0xe          ; 0x91a4
    jae short @..local.l395          ; 0x91a7
    xchg bx, ax                      ; 0x91a9
    shl bx, 1                        ; 0x91aa
    jmp [cs:bx - 0x1e31]             ; 0x91ac
@..local.l395:
    ret                              ; 0x91b1
api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x91b2
    call ds_dispatch_f40b            ; 0x91b5
    mov word [bp - 0x0002], 0        ; 0x91b8
@..api_idx_0002_11.l1:
    mov ax, 0                        ; 0x91bd
    push ax                          ; 0x91c0
    push word [bp - 0x0002]          ; 0x91c1
    push word [bp + 0x4]             ; 0x91c4
    call loc_902e                    ; 0x91c7
    add sp, byte 6                   ; 0x91ca
    inc word [bp - 0x0002]           ; 0x91cd
    mov ax, word [bp - 0x0002]       ; 0x91d0
    cmp ax, strict word 0xd          ; 0x91d3
    jle short @..api_idx_0002_11.l1  ; 0x91d6
    ret                              ; 0x91d8
loc_91d9:
    mov ax, 0                        ; 0x91d9
    call ds_dispatch_f40b            ; 0x91dc
    mov ax, word [bp + 0x6]          ; 0x91df
    jmp near @..local.l396           ; 0x91e2

    db 0xb8, 0x66, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x75, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0xbd, 0x00
    db 0xb8, 0x6f, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x65, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0xad, 0x00
    db 0xb8, 0x78, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x55, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x9d, 0x00
    db 0xb8, 0x81, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x45, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x8d, 0x00
    db 0xb8, 0x8a, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x35, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x7d, 0x00
    db 0xb8, 0x93, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x25, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x6e, 0xb8
    db 0x9c, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x16, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x5f, 0xb8, 0xa5
    db 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x07, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x50, 0xb8, 0xae, 0x93
    db 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf8, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x41, 0xb8, 0xb7, 0x93, 0x50
    db 0xff, 0x76, 0x04, 0xe8, 0xe9, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x32, 0xb8, 0xc0, 0x93, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0xda, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x23, 0x2c, 0xe2, 0x3c, 0xe2, 0x4c, 0xe2
    db 0x5c, 0xe2, 0x6c, 0xe2, 0x7c, 0xe2, 0x8b, 0xe2, 0x9a, 0xe2, 0xa9, 0xe2, 0xb8, 0xe2, 0xc7, 0xe2

@..local.l396:
    cmp ax, strict word 0xb          ; 0x92a5
    jae short @..local.l397          ; 0x92a8
    xchg bx, ax                      ; 0x92aa
    shl bx, 1                        ; 0x92ab
    jmp [cs:bx - 0x1d2a]             ; 0x92ad
@..local.l397:
    ret                              ; 0x92b2
api_idx_0030:
    mov ax, 0xffd0                   ; 0x92b3
    call ds_dispatch_f40b            ; 0x92b6
    push word [bp + 0x4]             ; 0x92b9
    call api_idx_0002_11             ; 0x92bc
    pop cx                           ; 0x92bf
    mov ax, 0x248                    ; 0x92c0
    imul word [bp + 0x4]             ; 0x92c3
    mov bx, ax                       ; 0x92c6
    mov al, byte [bx + 0x5e2d]       ; 0x92c8
    sub ah, ah                       ; 0x92cc
    shl ax, 1                        ; 0x92ce
    mov bx, ax                       ; 0x92d0
    mov word [bx - 0x6984], 0        ; 0x92d2
    mov word [bp - 0x0006], 1        ; 0x92d8
    mov word [bp - 0x0002], 0        ; 0x92dd
@..api_idx_0030.l1:
    mov ax, word [bp - 0x0002]       ; 0x92e2
    shl ax, 1                        ; 0x92e5
    mov bx, ax                       ; 0x92e7
    cmp word [bx - 0x6984], byte 1   ; 0x92e9
    jne short @..api_idx_0030.l2     ; 0x92ee
    mov ax, 1                        ; 0x92f0
    jmp short @..api_idx_0030.l3     ; 0x92f3
@..api_idx_0030.l2:
    mov ax, 0                        ; 0x92f5
@..api_idx_0030.l3:
    add bx, bp                       ; 0x92f8
    mov word [bx - 0x0030], ax       ; 0x92fa
    cmp word [bx - 0x0030], byte 0   ; 0x92fd
    je short @..api_idx_0030.l4      ; 0x9301
    inc word [bp - 0x0006]           ; 0x9303
@..api_idx_0030.l4:
    inc word [bp - 0x0002]           ; 0x9306
    mov ax, word [bp - 0x0002]       ; 0x9309
    cmp ax, strict word 0xd          ; 0x930c
    jle short @..api_idx_0030.l1     ; 0x930f
    mov word [bp - 0x0014], 1        ; 0x9311
    mov word [bp - 0x0012], 0xffff   ; 0x9316
    lea ax, word [bp - 0x0030]       ; 0x931b
    push ax                          ; 0x931e
    mov ax, 0                        ; 0x931f
    push ax                          ; 0x9322
    mov ax, 0xffff                   ; 0x9323
    push ax                          ; 0x9326
    mov ax, 1                        ; 0x9327
    push ax                          ; 0x932a
    mov ax, word [bp - 0x0006]       ; 0x932b
    inc ax                           ; 0x932e
    inc ax                           ; 0x932f
    mov cx, 3                        ; 0x9330
    cwd                              ; 0x9333
    idiv cx                          ; 0x9334
    imul cx                          ; 0x9336
    push ax                          ; 0x9338
    mov ax, word [bp - 0x0006]       ; 0x9339
    inc ax                           ; 0x933c
    inc ax                           ; 0x933d
    cwd                              ; 0x933e
    idiv cx                          ; 0x933f
    push ax                          ; 0x9341
    mov ax, 0xc                      ; 0x9342
    push ax                          ; 0x9345
    mov ax, 0x46                     ; 0x9346
    push ax                          ; 0x9349
    mov ax, 0xb                      ; 0x934a
    push ax                          ; 0x934d
    mov ax, 0x86                     ; 0x934e
    push ax                          ; 0x9351
    mov ax, 0x39                     ; 0x9352
    push ax                          ; 0x9355
    mov ax, 0x452                    ; 0x9356
    push ax                          ; 0x9359
    mov ax, 0x78                     ; 0x935a
    push ax                          ; 0x935d
    call math_loc_1ca0               ; 0x935e
    add sp, byte 0x1a                ; 0x9361
    mov word [bp - 0x0004], ax       ; 0x9364
    cmp ax, strict word 0xd          ; 0x9367
    jle short @..api_idx_0030.l5     ; 0x936a
    jmp near @..api_idx_0030.l11     ; 0x936c
@..api_idx_0030.l5:
    mov al, byte [bp - 0x0004]       ; 0x936f
    push ax                          ; 0x9372
    mov ax, 0x248                    ; 0x9373
    imul word [bp + 0x4]             ; 0x9376
    mov bx, ax                       ; 0x9379
    pop ax                           ; 0x937b
    mov byte [bx + 0x5e2d], al       ; 0x937c
    cmp word [bx + 0x5c18], strict word 0xfa ; 0x9380
    jge short @..api_idx_0030.l7     ; 0x9386
    mov al, byte [bx + 0x5e3b]       ; 0x9388
    sub ah, ah                       ; 0x938c
    cmp ax, word [bx + 0x5c18]       ; 0x938e
    jge short @..api_idx_0030.l6     ; 0x9392
    mov al, byte [bx + 0x5c18]       ; 0x9394
    mov byte [bx + 0x5e3b], al       ; 0x9398
@..api_idx_0030.l6:
    jmp short @..api_idx_0030.l8     ; 0x939c
@..api_idx_0030.l7:
    mov byte [bx + 0x5e3b], 0        ; 0x939e
@..api_idx_0030.l8:
    mov word [bx + 0x5c18], 1        ; 0x93a3
    mov byte [bx + 0x5e2e], 0        ; 0x93a9
    mov word [bx + 0x5c02], 0        ; 0x93ae
    mov word [bx + 0x5c00], 0        ; 0x93b4
    mov al, byte [bx + 0x5e2b]       ; 0x93ba
    sub ah, ah                       ; 0x93be
    push ax                          ; 0x93c0
    push word [bp + 0x4]             ; 0x93c1
    call loc_91d9                    ; 0x93c4
    add sp, byte 4                   ; 0x93c7
    mov ax, 1                        ; 0x93ca
    push ax                          ; 0x93cd
    mov ax, 0x248                    ; 0x93ce
    imul word [bp + 0x4]             ; 0x93d1
    mov bx, ax                       ; 0x93d4
    mov al, byte [bx + 0x5e2d]       ; 0x93d6
    sub ah, ah                       ; 0x93da
    push ax                          ; 0x93dc
    push word [bp + 0x4]             ; 0x93dd
    call loc_902e                    ; 0x93e0
    add sp, byte 6                   ; 0x93e3
    mov word [bp - 0x0008], 0        ; 0x93e6
@..api_idx_0030.l9:
    mov ax, 0x248                    ; 0x93eb
    imul word [bp + 0x4]             ; 0x93ee
    push ax                          ; 0x93f1
    mov ax, 0xc                      ; 0x93f2
    imul word [bp - 0x0008]          ; 0x93f5
    mov cx, ax                       ; 0x93f8
    pop ax                           ; 0x93fa
    add ax, cx                       ; 0x93fb
    mov bx, ax                       ; 0x93fd
    mov al, byte [bx + 0x5c3b]       ; 0x93ff
    sub ah, ah                       ; 0x9403
    test ax, 1                       ; 0x9405
    je short @..api_idx_0030.l10     ; 0x9408
    test ax, data_0002               ; 0x940a
    jne short @..api_idx_0030.l10    ; 0x940d
    push word [bp - 0x0008]          ; 0x940f
    push word [bp + 0x4]             ; 0x9412
    call ds_dispatch_c7dc            ; 0x9415
    add sp, byte 4                   ; 0x9418
@..api_idx_0030.l10:
    inc word [bp - 0x0008]           ; 0x941b
    mov ax, word [bp - 0x0008]       ; 0x941e
    cmp ax, strict word 0xa          ; 0x9421
    jl short @..api_idx_0030.l9      ; 0x9424
    mov ax, 0                        ; 0x9426
    push ax                          ; 0x9429
    push word [bp + 0x4]             ; 0x942a
    call math_loc_40b7               ; 0x942d
    add sp, byte 4                   ; 0x9430
@..api_idx_0030.l11:
    ret                              ; 0x9433
api_idx_0016:
    mov ax, 0xffea                   ; 0x9434
    call ds_dispatch_f40b            ; 0x9437
    mov ax, 0x93c9                   ; 0x943a
    push ax                          ; 0x943d
    lea ax, word [bp - 0x0016]       ; 0x943e
    push ax                          ; 0x9441
    call ds_dispatch_f364            ; 0x9442
    add sp, byte 4                   ; 0x9445
    mov ax, 0                        ; 0x9448
    push ax                          ; 0x944b
    call ds_dispatch_ef14            ; 0x944c
    pop cx                           ; 0x944f
    mov ax, 0                        ; 0x9450
    push ax                          ; 0x9453
    push ax                          ; 0x9454
    lea ax, word [bp - 0x0016]       ; 0x9455
    push ax                          ; 0x9458
    call ds_dispatch_d161            ; 0x9459
    add sp, byte 4                   ; 0x945c
    push ax                          ; 0x945f
    call ds_dispatch_f909            ; 0x9460
    add sp, byte 4                   ; 0x9463
    mov word [bp - 0x0002], ax       ; 0x9466
    cmp ax, strict word 0xffff       ; 0x9469
    jne short @..api_idx_0016.l1     ; 0x946c
    mov ax, 0x13                     ; 0x946e
    push ax                          ; 0x9471
    call ds_dispatch_b171            ; 0x9472
    pop cx                           ; 0x9475
@..api_idx_0016.l1:
    push word [bp + 0x6]             ; 0x9476
    push word [bp + 0x4]             ; 0x9479
    mov ax, 5                        ; 0x947c
    push ax                          ; 0x947f
    push word [bp - 0x0002]          ; 0x9480
    call ds_dispatch_e743            ; 0x9483
    add sp, byte 8                   ; 0x9486
    push word [bp - 0x0002]          ; 0x9489
    call ds_dispatch_fda5            ; 0x948c
    pop cx                           ; 0x948f
    ret                              ; 0x9490
api_idx_0022:
    mov ax, 0xffde                   ; 0x9491
    call ds_dispatch_f40b            ; 0x9494
    mov word [bp - 0x000c], 0        ; 0x9497
    mov ax, word [data_5218]         ; 0x949c
    mov word [bp - 0x000e], ax       ; 0x949f
    cmp byte [data_5987], 5          ; 0x94a2
    jne short @..api_idx_0022.l1     ; 0x94a7
    cmp ax, strict word 0            ; 0x94a9
    jle short @..api_idx_0022.l1     ; 0x94ac
    inc ax                           ; 0x94ae
    inc ax                           ; 0x94af
    jmp short @..api_idx_0022.l2     ; 0x94b0
@..api_idx_0022.l1:
    mov ax, word [bp - 0x000e]       ; 0x94b2
@..api_idx_0022.l2:
    mov word [bp - 0x000e], ax       ; 0x94b5
    mov ax, 0x3a                     ; 0x94b8
    push ax                          ; 0x94bb
    mov ax, 0x5912                   ; 0x94bc
    push ax                          ; 0x94bf
    lea ax, word [bp - 0x0022]       ; 0x94c0
    push ax                          ; 0x94c3
    call 0xd112                      ; 0x94c4
    add sp, byte 6                   ; 0x94c7
    cmp word [bp - 0x000e], byte 0   ; 0x94ca
    je short @..api_idx_0022.l3      ; 0x94ce
    mov word [bp - 0x000c], 1        ; 0x94d0
    mov ax, 1                        ; 0x94d5
    push ax                          ; 0x94d8
    push ax                          ; 0x94d9
    mov ax, 0                        ; 0x94da
    push ax                          ; 0x94dd
    lea ax, word [bp - 0x0022]       ; 0x94de
    push ax                          ; 0x94e1
    call 0xd1a8                      ; 0x94e2
    add sp, byte 8                   ; 0x94e5
@..api_idx_0022.l3:
    mov ax, 0                        ; 0x94e8
    push ax                          ; 0x94eb
    push ax                          ; 0x94ec
    push word [data_93f0]            ; 0x94ed
    push word [data_93ee]            ; 0x94f1
    call ds_dispatch_e942            ; 0x94f5
    add sp, byte 8                   ; 0x94f8
    mov ax, 0x4a                     ; 0x94fb
    push ax                          ; 0x94fe
    mov ax, data_0042                ; 0x94ff
    push ax                          ; 0x9502
    mov ax, 0x12                     ; 0x9503
    push ax                          ; 0x9506
    mov ax, 0xe                      ; 0x9507
    push ax                          ; 0x950a
    call ds_dispatch_e928            ; 0x950b
    add sp, byte 8                   ; 0x950e
    mov word [bp - 0x0008], dx       ; 0x9511
    mov word [bp - 0x000a], ax       ; 0x9514
    push word [bp + 0x4]             ; 0x9517
    call api_idx_007c                ; 0x951a
    pop cx                           ; 0x951d
    mov ax, 8                        ; 0x951e
    push ax                          ; 0x9521
    mov ax, 0xb                      ; 0x9522
    push ax                          ; 0x9525
    mov ax, 0x4a                     ; 0x9526
    push ax                          ; 0x9529
    mov ax, 0x26                     ; 0x952a
    push ax                          ; 0x952d
    mov ax, 0x11                     ; 0x952e
    push ax                          ; 0x9531
    mov ax, 0xc                      ; 0x9532
    push ax                          ; 0x9535
    mov ax, 0                        ; 0x9536
    push ax                          ; 0x9539
    call ds_dispatch_baa6            ; 0x953a
    add sp, byte 0x0e                ; 0x953d
    mov ax, 0xa                      ; 0x9540
    push ax                          ; 0x9543
    mov ax, 9                        ; 0x9544
    push ax                          ; 0x9547
    mov ax, 0x4a                     ; 0x9548
    push ax                          ; 0x954b
    mov ax, 0x43                     ; 0x954c
    push ax                          ; 0x954f
    mov ax, 0x11                     ; 0x9550
    push ax                          ; 0x9553
    mov ax, api_idx_0002             ; 0x9554
    push ax                          ; 0x9557
    mov ax, 1                        ; 0x9558
    push ax                          ; 0x955b
    call ds_dispatch_baa6            ; 0x955c
    add sp, byte 0x0e                ; 0x955f
    mov ax, data_0002                ; 0x9562
    push ax                          ; 0x9565
    mov ax, 1                        ; 0x9566
    push ax                          ; 0x9569
    mov ax, 0x18                     ; 0x956a
    push ax                          ; 0x956d
    mov ax, 0x97                     ; 0x956e
    push ax                          ; 0x9571
    mov ax, 0x58                     ; 0x9572
    push ax                          ; 0x9575
    mov ax, 0x454                    ; 0x9576
    push ax                          ; 0x9579
    call api_idx_0058                ; 0x957a
    add sp, byte 0x0c                ; 0x957d
    mov word [bp - 0x0004], dx       ; 0x9580
    mov word [bp - 0x0006], ax       ; 0x9583
    call ds_dispatch_ec17            ; 0x9586
@..api_idx_0022.l4:
    mov ax, 0                        ; 0x9589
    push ax                          ; 0x958c
    push word [bp - 0x0008]          ; 0x958d
    push word [bp - 0x000a]          ; 0x9590
    call ds_dispatch_e94f            ; 0x9593
    add sp, byte 6                   ; 0x9596
    mov ax, word [bp + 0x4]          ; 0x9599
    shl ax, 1                        ; 0x959c
    mov bx, ax                       ; 0x959e
    push word [bx + 0x69bc]          ; 0x95a0
    mov ax, 0x248                    ; 0x95a4
    imul word [bp + 0x4]             ; 0x95a7
    mov bx, ax                       ; 0x95aa
    mov al, byte [bx + 0x5e2a]       ; 0x95ac
    sub ah, ah                       ; 0x95b0
    push ax                          ; 0x95b2
    call api_idx_0016                ; 0x95b3
    add sp, byte 4                   ; 0x95b6
    mov ax, 0x12                     ; 0x95b9
    push ax                          ; 0x95bc
    mov ax, 0xe                      ; 0x95bd
    push ax                          ; 0x95c0
    push word [bp + 0x4]             ; 0x95c1
    call api_idx_0010                ; 0x95c4
    add sp, byte 6                   ; 0x95c7
    mov ax, 0x4a                     ; 0x95ca
    push ax                          ; 0x95cd
    mov ax, data_0042                ; 0x95ce
    push ax                          ; 0x95d1
    mov ax, 0x12                     ; 0x95d2
    push ax                          ; 0x95d5
    mov ax, 0xe                      ; 0x95d6
    push ax                          ; 0x95d9
    call ds_dispatch_e8da            ; 0x95da
    add sp, byte 8                   ; 0x95dd
@..api_idx_0022.l5:
    mov ax, 0x59fe                   ; 0x95e0
    push ax                          ; 0x95e3
    call ds_dispatch_b90d            ; 0x95e4
    pop cx                           ; 0x95e7
    dec ax                           ; 0x95e8
    mov word [bp - 0x0002], ax       ; 0x95e9
    cmp word [data_5b3e], byte 0     ; 0x95ec
    je short @..api_idx_0022.l5      ; 0x95f1
    mov ax, word [bp - 0x0002]       ; 0x95f3
    jmp short @..api_idx_0022.l8     ; 0x95f6
@..api_idx_0022.l6:
    mov ax, 0x248                    ; 0x95f8
    imul word [bp + 0x4]             ; 0x95fb
    mov bx, ax                       ; 0x95fe
    mov al, byte [bx + 0x5e2a]       ; 0x9600
    sub ah, ah                       ; 0x9604
    add ax, strict word 0x20         ; 0x9606
    mov cx, 0x21                     ; 0x9609
    cwd                              ; 0x960c
    idiv cx                          ; 0x960d
    mov ax, dx                       ; 0x960f
    mov byte [bx + 0x5e2a], al       ; 0x9611
    jmp short @..api_idx_0022.l9     ; 0x9615
@..api_idx_0022.l7:
    mov ax, 0x248                    ; 0x9617
    imul word [bp + 0x4]             ; 0x961a
    mov bx, ax                       ; 0x961d
    mov al, byte [bx + 0x5e2a]       ; 0x961f
    sub ah, ah                       ; 0x9623
    inc ax                           ; 0x9625
    mov cx, 0x21                     ; 0x9626
    cwd                              ; 0x9629
    idiv cx                          ; 0x962a
    mov ax, dx                       ; 0x962c
    mov byte [bx + 0x5e2a], al       ; 0x962e
    jmp short @..api_idx_0022.l9     ; 0x9632
@..api_idx_0022.l8:
    cmp ax, strict word 0            ; 0x9634
    je short @..api_idx_0022.l6      ; 0x9637
    cmp ax, strict word 1            ; 0x9639
    je short @..api_idx_0022.l7      ; 0x963c
@..api_idx_0022.l9:
    cmp word [bp - 0x0002], byte 2   ; 0x963e
    je short @..api_idx_0022.l10     ; 0x9642
    jmp near @..api_idx_0022.l4      ; 0x9644
@..api_idx_0022.l10:
    mov ax, 1                        ; 0x9647
    push ax                          ; 0x964a
    push ax                          ; 0x964b
    mov ax, 0x18                     ; 0x964c
    push ax                          ; 0x964f
    mov ax, 0x97                     ; 0x9650
    push ax                          ; 0x9653
    mov ax, 0x58                     ; 0x9654
    push ax                          ; 0x9657
    call ds_dispatch_be5f            ; 0x9658
    add sp, byte 0x0a                ; 0x965b
    mov ax, 0                        ; 0x965e
    push ax                          ; 0x9661
    mov ax, 1                        ; 0x9662
    push ax                          ; 0x9665
    mov ax, 0x18                     ; 0x9666
    push ax                          ; 0x9669
    mov ax, 0x97                     ; 0x966a
    push ax                          ; 0x966d
    mov ax, 0x58                     ; 0x966e
    push ax                          ; 0x9671
    call ds_dispatch_be5f            ; 0x9672
    add sp, byte 0x0a                ; 0x9675
    mov ax, 1                        ; 0x9678
    push ax                          ; 0x967b
    push word [bp - 0x0004]          ; 0x967c
    push word [bp - 0x0006]          ; 0x967f
    call ds_dispatch_e94f            ; 0x9682
    add sp, byte 6                   ; 0x9685
    mov ax, 1                        ; 0x9688
    push ax                          ; 0x968b
    push word [bp - 0x0008]          ; 0x968c
    push word [bp - 0x000a]          ; 0x968f
    call ds_dispatch_e94f            ; 0x9692
    add sp, byte 6                   ; 0x9695
    mov ax, 0x12                     ; 0x9698
    push ax                          ; 0x969b
    mov ax, 0xe                      ; 0x969c
    push ax                          ; 0x969f
    push word [bp + 0x4]             ; 0x96a0
    call api_idx_0010                ; 0x96a3
    add sp, byte 6                   ; 0x96a6
    mov ax, 0xc7                     ; 0x96a9
    push ax                          ; 0x96ac
    mov ax, 0x13f                    ; 0x96ad
    push ax                          ; 0x96b0
    mov ax, 0                        ; 0x96b1
    push ax                          ; 0x96b4
    push ax                          ; 0x96b5
    call ds_dispatch_e8da            ; 0x96b6
    add sp, byte 8                   ; 0x96b9
    cmp word [bp - 0x000c], byte 1   ; 0x96bc
    jne short @..local.l398          ; 0x96c0
    mov ax, 1                        ; 0x96c2
    push ax                          ; 0x96c5
    push ax                          ; 0x96c6
    push word [bp - 0x000e]          ; 0x96c7
    lea ax, word [bp - 0x0022]       ; 0x96ca
    push ax                          ; 0x96cd
    db 0xe8, 0xd7, 0x3a ; call 0xd1a8
    add sp, byte 8                   ; 0x96d1
@..local.l398:
    ret                              ; 0x96d4
api_idx_000e_3:
    mov ax, 0xfff2                   ; 0x96d5
    call ds_dispatch_f40b            ; 0x96d8
    mov ax, 0xc7                     ; 0x96db
    push ax                          ; 0x96de
    mov ax, 0x13f                    ; 0x96df
    push ax                          ; 0x96e2
    mov ax, 0                        ; 0x96e3
    push ax                          ; 0x96e6
    push ax                          ; 0x96e7
    call ds_dispatch_e8da            ; 0x96e8
    add sp, byte 8                   ; 0x96eb
    mov ax, 0x248                    ; 0x96ee
    imul word [bp + 0x4]             ; 0x96f1
    add ax, 0x5bf4                   ; 0x96f4
    push ax                          ; 0x96f7
    lea ax, word [bp - 0x000a]       ; 0x96f8
    push ax                          ; 0x96fb
    call ds_dispatch_f364            ; 0x96fc
    add sp, byte 4                   ; 0x96ff
    lea ax, word [bp - 0x000a]       ; 0x9702
    push ax                          ; 0x9705
    mov ax, 1                        ; 0x9706
    push ax                          ; 0x9709
    push ax                          ; 0x970a
    mov ax, 0                        ; 0x970b
    push ax                          ; 0x970e
    mov ax, 0x48e                    ; 0x970f
    push ax                          ; 0x9712
    call api_idx_0026                ; 0x9713
    add sp, byte 0x0a                ; 0x9716
    cmp ax, strict word 2            ; 0x9719
    jne short @..local.l399          ; 0x971c
    ret                              ; 0x971e
@..local.l399:
    lea ax, word [bp - 0x000a]       ; 0x971f
    push ax                          ; 0x9722
    call ds_dispatch_fa90            ; 0x9723
    pop cx                           ; 0x9726
    test ax, ax                      ; 0x9727
    je short @..local.l400           ; 0x9729
    lea ax, word [bp - 0x000a]       ; 0x972b
    push ax                          ; 0x972e
    mov ax, 0x248                    ; 0x972f
    imul word [bp + 0x4]             ; 0x9732
    add ax, 0x5bf4                   ; 0x9735
    push ax                          ; 0x9738
    call ds_dispatch_f364            ; 0x9739
    add sp, byte 4                   ; 0x973c
@..local.l400:
    ret                              ; 0x973f
api_idx_0018:
    mov ax, 0xffe8                   ; 0x9740
    call ds_dispatch_f40b            ; 0x9743
@..api_idx_0018.l1:
    mov word [bp - 0x0002], 0        ; 0x9746
@..api_idx_0018.l2:
    mov ax, word [bp - 0x0002]       ; 0x974b
    shl ax, 1                        ; 0x974e
    mov bx, ax                       ; 0x9750
    add bx, bp                       ; 0x9752
    mov word [bx - 0x0018], 1        ; 0x9754
    inc word [bp - 0x0002]           ; 0x9759
    mov ax, word [bp - 0x0002]       ; 0x975c
    cmp ax, strict word 4            ; 0x975f
    jle short @..api_idx_0018.l2     ; 0x9762
    mov word [bp - 0x0012], 0        ; 0x9764
    mov word [bp - 0x000e], 0xffff   ; 0x9769
    lea ax, word [bp - 0x0018]       ; 0x976e
    push ax                          ; 0x9771
    mov ax, 0                        ; 0x9772
    push ax                          ; 0x9775
    mov ax, 0xffff                   ; 0x9776
    push ax                          ; 0x9779
    mov ax, 1                        ; 0x977a
    push ax                          ; 0x977d
    mov ax, 6                        ; 0x977e
    push ax                          ; 0x9781
    mov ax, 1                        ; 0x9782
    push ax                          ; 0x9785
    mov ax, 0xc                      ; 0x9786
    push ax                          ; 0x9789
    mov ax, 0x46                     ; 0x978a
    push ax                          ; 0x978d
    mov ax, 0xb                      ; 0x978e
    push ax                          ; 0x9791
    mov ax, 0xbc                     ; 0x9792
    push ax                          ; 0x9795
    mov ax, 4                        ; 0x9796
    push ax                          ; 0x9799
    mov ax, 0                        ; 0x979a
    push ax                          ; 0x979d
    mov ax, 0x474                    ; 0x979e
    push ax                          ; 0x97a1
    call math_loc_1ca0               ; 0x97a2
    add sp, byte 0x1a                ; 0x97a5
    mov word [bp - 0x0004], ax       ; 0x97a8
    jmp short @..api_idx_0018.l6     ; 0x97ab
@..api_idx_0018.l3:
    push word [bp + 0x4]             ; 0x97ad
    call api_idx_000e_3              ; 0x97b0
    pop cx                           ; 0x97b3
    jmp short @..api_idx_0018.l7     ; 0x97b4
@..api_idx_0018.l4:
    push word [bp + 0x4]             ; 0x97b6
    call api_idx_0022                ; 0x97b9
    pop cx                           ; 0x97bc
    jmp short @..api_idx_0018.l7     ; 0x97bd
@..api_idx_0018.l5:
    push word [bp + 0x4]             ; 0x97bf
    call api_idx_0030                ; 0x97c2
    pop cx                           ; 0x97c5
    jmp short @..api_idx_0018.l7     ; 0x97c6
@..api_idx_0018.l6:
    cmp ax, strict word 0            ; 0x97c8
    je short @..api_idx_0018.l3      ; 0x97cb
    cmp ax, strict word 1            ; 0x97cd
    je short @..api_idx_0018.l4      ; 0x97d0
    cmp ax, strict word 2            ; 0x97d2
    je short @..api_idx_0018.l5      ; 0x97d5
@..api_idx_0018.l7:
    mov ax, 0                        ; 0x97d7
    push ax                          ; 0x97da
    push word [bp + 0x4]             ; 0x97db
    call math_loc_40b7               ; 0x97de
    add sp, byte 4                   ; 0x97e1
    cmp word [bp - 0x0004], byte 4   ; 0x97e4
    je short @..api_idx_0018.l8      ; 0x97e8
    jmp near @..api_idx_0018.l1      ; 0x97ea
@..api_idx_0018.l8:
    ret                              ; 0x97ed

    db 0x8f, 0x06, 0xde, 0x93, 0x59, 0x89, 0x26, 0xda, 0x93, 0x89, 0x2e, 0xdc, 0x93, 0x89, 0x36, 0xd6
    db 0x93, 0x89, 0x3e, 0xd8, 0x93, 0xfc, 0xbf, 0xe0, 0x93, 0xb9, 0xf0, 0x96, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0xf7, 0x67, 0x8b, 0x2e, 0xdc, 0x93, 0x8b, 0x26, 0xda
    db 0x93, 0x8b, 0x36, 0xd6, 0x93, 0x8b, 0x3e, 0xd8, 0x93, 0x51, 0xff, 0x26, 0xde, 0x93

leaf_loc_982c:
    pop bx                           ; 0x982c
    push di                          ; 0x982d
    push es                          ; 0x982e
    mov di, cs                       ; 0x982f
    mov es, di                       ; 0x9831
    mov di, bx                       ; 0x9833
    mov bx, cx                       ; 0x9835
    shl bx, 1                        ; 0x9837
    cld                              ; 0x9839
    repne scasw                      ; 0x983a
    mov cx, word [es:bx + di - 0x0004] ; 0x983c
    pop es                           ; 0x9840
    pop di                           ; 0x9841
    jmp cx                           ; 0x9842

    db 0x25, 0x20, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 0x20, 0x00
    db 'PCVWSCRN.VGA', 0
    db 0x28, 0x00, 0x2b, 0x00, 0x29, 0x00, 0x2b, 0x00, 0x2f, 0x00, 0x20, 0x00, 0x25, 0x00
    db '1111111110', 0
    db '11100000', 0
    db '000000', 0
    db '1111000000', 0
    db '1000111100', 0
    db '11101000', 0
    db '000000', 0
    db '1111000010', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101111', 0
    db '000000', 0
    db '1111000000', 0
    db '1111111110', 0
    db '11100111', 0
    db '000000', 0
    db '1111010000', 0
    db '1001110000', 0
    db '11100000', 0
    db '000000', 0
    db '1111010000', 0
    db '1111111110', 0
    db '11111111', 0
    db '000000', 0
    db '1111000010', 0
    db '1001111000', 0
    db '11101000', 0
    db '000000', 0
    db '1111000100', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111001000', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101010', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111000011', 0
    db '1001111101', 0
    db '11101001', 0
    db '000000', 0
    db '1111000101', 0
    db '1111111111', 0
    db '11100111', 0
    db '000000', 0
    db '1111010001', 0
    db 'V.$$$', 0
    db 'MAAAAAAA', 0
    db 'AMAAAAAA', 0
    db 'AAMAAAIA', 0
    db 'AAAAMIAA', 0
    db 'KIILKIIA', 0
    db 'ANAANAAA', 0
    db 'AKAAMIMA', 0
    db 'KOAOAAKA', 0
    db 'KALLKLIA', 0
    db 'APPAAAIA', 0
    db 'MJMMJJOA', 0
    db 'MLAJMOIA', 0
    db 'NINAKNIA', 0
    db 'MKKMMMAA', 0
    db 'JIIJJIIA', 0
    db 'HKKHJJIA', 0
    db 'LGKMHHHA', 0
    db 'KHNKIGGA', 0
    db 'IHGJKHNA', 0
    db 'FLGGKOMA', 0
    db 'MFFOIKDA', 0
    db 'KHGMKIGA', 0
    db 'HKHHKMKA', 0
    db 'IGMKIIKA', 0
    db 'KKGKHHJA', 0
    db 'PORTDATA.VGA', 0
    times 10 db 0

