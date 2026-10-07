%include "structs/structs.inc"
%include "structs/loc_17c4.inc"
org 0
bits 16
%include "labels/vbase_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xdf, 0x93, 0x98, 0x90

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
loc_17c4 equ 0x17c4
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
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [data_830a], byte 7     ; 0x0014
    jne short @..math_loc_000e.l1    ; 0x0019
    call api_idx_0002_3              ; 0x001b
@..math_loc_000e.l1:
    cmp word [data_830a], byte 4     ; 0x001e
    jne short @..math_loc_000e.l2    ; 0x0023
    call api_idx_004a_2              ; 0x0025
@..math_loc_000e.l2:
    cmp word [data_830a], byte 0x18  ; 0x0028
    jne short @..math_loc_000e.l3    ; 0x002d
    call api_idx_004a                ; 0x002f
@..math_loc_000e.l3:
    mov ax, 0                        ; 0x0032
    ret                              ; 0x0035
api_idx_0002:
    mov ax, 0xfffe                   ; 0x0036
    call ds_dispatch_f40b            ; 0x0039
    mov ax, 0                        ; 0x003c
    push ax                          ; 0x003f
    call ds_dispatch_ef14            ; 0x0040
    pop cx                           ; 0x0043
    mov ax, data_0002                ; 0x0044
    push ax                          ; 0x0047
    mov ax, 0                        ; 0x0048
    push ax                          ; 0x004b
    mov ax, 0x9098                   ; 0x004c
    push ax                          ; 0x004f
    call ds_dispatch_d161            ; 0x0050
    add sp, byte 4                   ; 0x0053
    push ax                          ; 0x0056
    call ds_dispatch_f909            ; 0x0057
    add sp, byte 4                   ; 0x005a
    mov word [bp - 0x0002], ax       ; 0x005d
    mov ax, 0                        ; 0x0060
    push ax                          ; 0x0063
    mov ax, word [bp + 0x6]          ; 0x0064
    imul word [data_906e]            ; 0x0067
    cwd                              ; 0x006b
    add ax, word [data_9072]         ; 0x006c
    adc dx, word [data_9074]         ; 0x0070
    push dx                          ; 0x0074
    push ax                          ; 0x0075
    push word [bp - 0x0002]          ; 0x0076
    call ds_dispatch_fdbd            ; 0x0079
    add sp, byte 8                   ; 0x007c
    cmp word [bp + 0x8], byte 0      ; 0x007f
    jne short @..api_idx_0002.l1     ; 0x0083
    push word [data_906e]            ; 0x0085
    push word [bp + 0x4]             ; 0x0089
    push word [bp - 0x0002]          ; 0x008c
    call ds_dispatch_fd6f            ; 0x008f
    add sp, byte 6                   ; 0x0092
    jmp short @..api_idx_0002.l2     ; 0x0095
@..api_idx_0002.l1:
    cmp word [bp + 0x8], byte 1      ; 0x0097
    jne short @..api_idx_0002.l2     ; 0x009b
    push word [data_906e]            ; 0x009d
    push word [bp + 0x4]             ; 0x00a1
    push word [bp - 0x0002]          ; 0x00a4
    call ds_dispatch_fd76            ; 0x00a7
    add sp, byte 6                   ; 0x00aa
@..api_idx_0002.l2:
    push word [bp - 0x0002]          ; 0x00ad
    call ds_dispatch_fda5            ; 0x00b0
    pop cx                           ; 0x00b3
    ret                              ; 0x00b4
api_idx_0004:
    mov ax, 0xfffc                   ; 0x00b5
    call ds_dispatch_f40b            ; 0x00b8
    mov ax, word [bp + 0x6]          ; 0x00bb
    imul word [bp + 0xe]             ; 0x00be
    add ax, word [bp + 0xa]          ; 0x00c1
    add ax, strict word 0x10         ; 0x00c4
    push ax                          ; 0x00c7
    mov ax, 6                        ; 0x00c8
    imul word [bp + 0xc]             ; 0x00cb
    add ax, word [bp + 0x8]          ; 0x00ce
    add ax, strict word 9            ; 0x00d1
    push ax                          ; 0x00d4
    mov ax, word [bp + 0x6]          ; 0x00d5
    imul word [bp + 0xe]             ; 0x00d8
    add ax, word [bp + 0xa]          ; 0x00db
    add ax, strict word 6            ; 0x00de
    push ax                          ; 0x00e1
    mov ax, word [bp + 0x8]          ; 0x00e2
    add ax, strict word 7            ; 0x00e5
    push ax                          ; 0x00e8
    call ds_dispatch_e928            ; 0x00e9
    add sp, byte 8                   ; 0x00ec
    mov word [bp - 0x0002], dx       ; 0x00ef
    mov word [bp - 0x0004], ax       ; 0x00f2
    mov ax, 0                        ; 0x00f5
    push ax                          ; 0x00f8
    mov ax, word [bp + 0x6]          ; 0x00f9
    imul word [bp + 0xe]             ; 0x00fc
    add ax, word [bp + 0xa]          ; 0x00ff
    add ax, strict word 0xf          ; 0x0102
    push ax                          ; 0x0105
    mov ax, 6                        ; 0x0106
    imul word [bp + 0xc]             ; 0x0109
    add ax, word [bp + 0x8]          ; 0x010c
    add ax, strict word 8            ; 0x010f
    push ax                          ; 0x0112
    mov ax, word [bp + 0x6]          ; 0x0113
    imul word [bp + 0xe]             ; 0x0116
    add ax, word [bp + 0xa]          ; 0x0119
    add ax, strict word 7            ; 0x011c
    push ax                          ; 0x011f
    mov ax, word [bp + 0x8]          ; 0x0120
    add ax, strict word 8            ; 0x0123
    push ax                          ; 0x0126
    call ds_dispatch_bce3            ; 0x0127
    add sp, byte 0x0a                ; 0x012a
    mov ax, 0xc0                     ; 0x012d
    push ax                          ; 0x0130
    push word [bp + 0x10]            ; 0x0131
    call ds_dispatch_e823            ; 0x0134
    add sp, byte 4                   ; 0x0137
    mov ax, word [bp + 0x6]          ; 0x013a
    imul word [bp + 0xe]             ; 0x013d
    add ax, word [bp + 0xa]          ; 0x0140
    add ax, strict word 9            ; 0x0143
    push ax                          ; 0x0146
    push word [bp + 0x4]             ; 0x0147
    call ds_dispatch_fa90            ; 0x014a
    pop cx                           ; 0x014d
    mov cx, ax                       ; 0x014e
    mov ax, word [bp + 0xc]          ; 0x0150
    sub ax, cx                       ; 0x0153
    mov cx, 6                        ; 0x0155
    imul cx                          ; 0x0158
    mov cx, data_0002                ; 0x015a
    cwd                              ; 0x015d
    idiv cx                          ; 0x015e
    add ax, word [bp + 0x8]          ; 0x0160
    add ax, strict word 9            ; 0x0163
    push ax                          ; 0x0166
    call ds_dispatch_e809            ; 0x0167
    add sp, byte 4                   ; 0x016a
    mov ax, 0                        ; 0x016d
    push ax                          ; 0x0170
    push word [bp + 0x4]             ; 0x0171
    call ds_dispatch_e84e            ; 0x0174
    add sp, byte 4                   ; 0x0177
    mov ax, word [bp + 0x6]          ; 0x017a
    imul word [bp + 0xe]             ; 0x017d
    add ax, word [bp + 0xa]          ; 0x0180
    add ax, strict word 0x10         ; 0x0183
    push ax                          ; 0x0186
    mov ax, 6                        ; 0x0187
    imul word [bp + 0xc]             ; 0x018a
    add ax, word [bp + 0x8]          ; 0x018d
    add ax, strict word 9            ; 0x0190
    push ax                          ; 0x0193
    mov ax, word [bp + 0x6]          ; 0x0194
    imul word [bp + 0xe]             ; 0x0197
    add ax, word [bp + 0xa]          ; 0x019a
    add ax, strict word 6            ; 0x019d
    push ax                          ; 0x01a0
    mov ax, word [bp + 0x8]          ; 0x01a1
    add ax, strict word 7            ; 0x01a4
    push ax                          ; 0x01a7
    call ds_dispatch_e8da            ; 0x01a8
    add sp, byte 8                   ; 0x01ab
    mov ax, 1                        ; 0x01ae
    push ax                          ; 0x01b1
    push word [bp - 0x0002]          ; 0x01b2
    push word [bp - 0x0004]          ; 0x01b5
    call ds_dispatch_e94f            ; 0x01b8
    add sp, byte 6                   ; 0x01bb
    ret                              ; 0x01be
loc_01bf:
    mov ax, 0                        ; 0x01bf
    call ds_dispatch_f40b            ; 0x01c2
    push word [bp + 0xc]             ; 0x01c5
    mov ax, word [bp + 0x6]          ; 0x01c8
    dec ax                           ; 0x01cb
    push ax                          ; 0x01cc
    mov ax, word [bp + 0x8]          ; 0x01cd
    inc ax                           ; 0x01d0
    push ax                          ; 0x01d1
    mov ax, word [bp + 0x6]          ; 0x01d2
    dec ax                           ; 0x01d5
    push ax                          ; 0x01d6
    mov ax, word [bp + 0x4]          ; 0x01d7
    dec ax                           ; 0x01da
    push ax                          ; 0x01db
    call ds_dispatch_e901            ; 0x01dc
    add sp, byte 0x0a                ; 0x01df
    push word [bp + 0xc]             ; 0x01e2
    mov ax, word [bp + 0xa]          ; 0x01e5
    inc ax                           ; 0x01e8
    push ax                          ; 0x01e9
    mov ax, word [bp + 0x8]          ; 0x01ea
    inc ax                           ; 0x01ed
    push ax                          ; 0x01ee
    mov ax, word [bp + 0x6]          ; 0x01ef
    dec ax                           ; 0x01f2
    push ax                          ; 0x01f3
    mov ax, word [bp + 0x8]          ; 0x01f4
    inc ax                           ; 0x01f7
    push ax                          ; 0x01f8
    call ds_dispatch_e901            ; 0x01f9
    add sp, byte 0x0a                ; 0x01fc
    push word [bp + 0xc]             ; 0x01ff
    mov ax, word [bp + 0xa]          ; 0x0202
    inc ax                           ; 0x0205
    push ax                          ; 0x0206
    mov ax, word [bp + 0x8]          ; 0x0207
    inc ax                           ; 0x020a
    push ax                          ; 0x020b
    mov ax, word [bp + 0xa]          ; 0x020c
    inc ax                           ; 0x020f
    push ax                          ; 0x0210
    mov ax, word [bp + 0x4]          ; 0x0211
    dec ax                           ; 0x0214
    push ax                          ; 0x0215
    call ds_dispatch_e901            ; 0x0216
    add sp, byte 0x0a                ; 0x0219
    push word [bp + 0xc]             ; 0x021c
    mov ax, word [bp + 0xa]          ; 0x021f
    inc ax                           ; 0x0222
    push ax                          ; 0x0223
    mov ax, word [bp + 0x4]          ; 0x0224
    dec ax                           ; 0x0227
    push ax                          ; 0x0228
    mov ax, word [bp + 0x6]          ; 0x0229
    dec ax                           ; 0x022c
    push ax                          ; 0x022d
    mov ax, word [bp + 0x4]          ; 0x022e
    dec ax                           ; 0x0231
    push ax                          ; 0x0232
    call ds_dispatch_e901            ; 0x0233
    add sp, byte 0x0a                ; 0x0236
    ret                              ; 0x0239
math_loc_023a:
    mov ax, 0xfeaa                   ; 0x023a
    call ds_dispatch_f40b            ; 0x023d
    mov ax, 6                        ; 0x0240
    imul word [bp + 0xa]             ; 0x0243
    add ax, word [bp + 0x6]          ; 0x0246
    add ax, strict word 0x10         ; 0x0249
    mov word [bp - 0x0006], ax       ; 0x024c
    mov ax, word [bp + 0xc]          ; 0x024f
    imul word [bp + 0xe]             ; 0x0252
    add ax, word [bp + 0x8]          ; 0x0255
    add ax, strict word 0x10         ; 0x0258
    mov word [bp - 0x0008], ax       ; 0x025b
    mov ax, 0x90a3                   ; 0x025e
    push ax                          ; 0x0261
    mov ax, word [bp - 0x0008]       ; 0x0262
    inc ax                           ; 0x0265
    push ax                          ; 0x0266
    mov ax, word [bp - 0x0006]       ; 0x0267
    inc ax                           ; 0x026a
    push ax                          ; 0x026b
    mov ax, word [bp + 0x8]          ; 0x026c
    dec ax                           ; 0x026f
    push ax                          ; 0x0270
    mov ax, word [bp + 0x6]          ; 0x0271
    dec ax                           ; 0x0274
    push ax                          ; 0x0275
    call ds_dispatch_c283            ; 0x0276
    add sp, byte 0x0a                ; 0x0279
    mov word [bp - 0x0154], ax       ; 0x027c
    mov word [bp - 0x0002], 0        ; 0x0280
    mov word [bp - 0x0004], 0        ; 0x0285
@..math_loc_023a.l1:
    mov ax, word [bp - 0x0004]       ; 0x028a
    shl ax, 1                        ; 0x028d
    mov si, ax                       ; 0x028f
    mov bx, word [bp + 0x12]         ; 0x0291
    cmp word [bx + si], byte 0xff    ; 0x0294
    jne short @..math_loc_023a.l2    ; 0x0297
    jmp near @..math_loc_023a.l5     ; 0x0299
@..math_loc_023a.l2:
    cmp word [bx + si], byte 1       ; 0x029c
    je short @..math_loc_023a.l3     ; 0x029f
    jmp near @..math_loc_023a.l4     ; 0x02a1
@..math_loc_023a.l3:
    mov ax, 0x14                     ; 0x02a4
    imul word [bp - 0x0002]          ; 0x02a7
    lea cx, word [bp - 0x0152]       ; 0x02aa
    add ax, cx                       ; 0x02ae
    push ax                          ; 0x02b0
    mov ax, word [bp + 0x4]          ; 0x02b1
    add ax, word [bp - 0x0004]       ; 0x02b4
    push ax                          ; 0x02b7
    call ds_dispatch_b53b            ; 0x02b8
    add sp, byte 4                   ; 0x02bb
    mov ax, 0                        ; 0x02be
    push ax                          ; 0x02c1
    mov ax, word [bp - 0x0002]       ; 0x02c2
    imul word [bp + 0xc]             ; 0x02c5
    add ax, word [bp + 0x8]          ; 0x02c8
    add ax, strict word 0xf          ; 0x02cb
    push ax                          ; 0x02ce
    mov ax, 6                        ; 0x02cf
    imul word [bp + 0xa]             ; 0x02d2
    add ax, word [bp + 0x6]          ; 0x02d5
    add ax, strict word 8            ; 0x02d8
    push ax                          ; 0x02db
    mov ax, word [bp - 0x0002]       ; 0x02dc
    imul word [bp + 0xc]             ; 0x02df
    add ax, word [bp + 0x8]          ; 0x02e2
    add ax, strict word 7            ; 0x02e5
    push ax                          ; 0x02e8
    mov ax, word [bp + 0x6]          ; 0x02e9
    add ax, strict word 8            ; 0x02ec
    push ax                          ; 0x02ef
    call ds_dispatch_bce3            ; 0x02f0
    add sp, byte 0x0a                ; 0x02f3
    mov ax, 0xc0                     ; 0x02f6
    push ax                          ; 0x02f9
    push word [bp + 0x10]            ; 0x02fa
    call ds_dispatch_e823            ; 0x02fd
    add sp, byte 4                   ; 0x0300
    mov ax, word [bp - 0x0002]       ; 0x0303
    imul word [bp + 0xc]             ; 0x0306
    add ax, word [bp + 0x8]          ; 0x0309
    add ax, strict word 9            ; 0x030c
    push ax                          ; 0x030f
    mov ax, 0x14                     ; 0x0310
    imul word [bp - 0x0002]          ; 0x0313
    lea cx, word [bp - 0x0152]       ; 0x0316
    add ax, cx                       ; 0x031a
    push ax                          ; 0x031c
    call ds_dispatch_fa90            ; 0x031d
    pop cx                           ; 0x0320
    mov cx, ax                       ; 0x0321
    mov ax, word [bp + 0xa]          ; 0x0323
    sub ax, cx                       ; 0x0326
    mov cx, 6                        ; 0x0328
    imul cx                          ; 0x032b
    mov cx, data_0002                ; 0x032d
    cwd                              ; 0x0330
    idiv cx                          ; 0x0331
    add ax, word [bp + 0x6]          ; 0x0333
    add ax, strict word 9            ; 0x0336
    push ax                          ; 0x0339
    call ds_dispatch_e809            ; 0x033a
    add sp, byte 4                   ; 0x033d
    mov ax, 0                        ; 0x0340
    push ax                          ; 0x0343
    mov ax, 0x14                     ; 0x0344
    imul word [bp - 0x0002]          ; 0x0347
    lea cx, word [bp - 0x0152]       ; 0x034a
    add ax, cx                       ; 0x034e
    push ax                          ; 0x0350
    call ds_dispatch_e84e            ; 0x0351
    add sp, byte 4                   ; 0x0354
    mov ax, 0                        ; 0x0357
    push ax                          ; 0x035a
    push ax                          ; 0x035b
    mov ax, word [bp - 0x0002]       ; 0x035c
    imul word [bp + 0xc]             ; 0x035f
    add ax, word [bp + 0x8]          ; 0x0362
    add ax, strict word 0xf          ; 0x0365
    push ax                          ; 0x0368
    mov ax, 6                        ; 0x0369
    imul word [bp + 0xa]             ; 0x036c
    add ax, word [bp + 0x6]          ; 0x036f
    add ax, strict word 8            ; 0x0372
    push ax                          ; 0x0375
    mov ax, word [bp - 0x0002]       ; 0x0376
    imul word [bp + 0xc]             ; 0x0379
    add ax, word [bp + 0x8]          ; 0x037c
    add ax, strict word 7            ; 0x037f
    push ax                          ; 0x0382
    mov ax, word [bp + 0x6]          ; 0x0383
    add ax, strict word 8            ; 0x0386
    push ax                          ; 0x0389
    push word [bp - 0x0002]          ; 0x038a
    call ds_dispatch_baa6            ; 0x038d
    add sp, byte 0x0e                ; 0x0390
    mov ax, word [bp - 0x0004]       ; 0x0393
    mov cx, word [bp - 0x0002]       ; 0x0396
    shl cx, 1                        ; 0x0399
    mov bx, cx                       ; 0x039b
    add bx, bp                       ; 0x039d
    mov word [bx - 0x0026], ax       ; 0x039f
    inc word [bp - 0x0002]           ; 0x03a2
@..math_loc_023a.l4:
    inc word [bp - 0x0004]           ; 0x03a5
    jmp near @..math_loc_023a.l1     ; 0x03a8
@..math_loc_023a.l5:
    mov ax, 0                        ; 0x03ab
    push ax                          ; 0x03ae
    push ax                          ; 0x03af
    push ax                          ; 0x03b0
    push ax                          ; 0x03b1
    push ax                          ; 0x03b2
    mov ax, 0xffff                   ; 0x03b3
    push ax                          ; 0x03b6
    push word [bp - 0x0002]          ; 0x03b7
    call ds_dispatch_baa6            ; 0x03ba
    add sp, byte 0x0e                ; 0x03bd
    mov ax, word [bp - 0x0008]       ; 0x03c0
    inc ax                           ; 0x03c3
    push ax                          ; 0x03c4
    mov ax, word [bp - 0x0006]       ; 0x03c5
    inc ax                           ; 0x03c8
    push ax                          ; 0x03c9
    mov ax, word [bp + 0x8]          ; 0x03ca
    dec ax                           ; 0x03cd
    push ax                          ; 0x03ce
    mov ax, word [bp + 0x6]          ; 0x03cf
    dec ax                           ; 0x03d2
    push ax                          ; 0x03d3
    call ds_dispatch_e8da            ; 0x03d4
    add sp, byte 8                   ; 0x03d7
    cmp word [data_0e32], byte 0     ; 0x03da
    je short @..math_loc_023a.l7     ; 0x03df
@..math_loc_023a.l6:
    mov ax, 0x59fe                   ; 0x03e1
    push ax                          ; 0x03e4
    call ds_dispatch_b90d            ; 0x03e5
    pop cx                           ; 0x03e8
    mov word [bp - 0x0004], ax       ; 0x03e9
    cmp word [data_5b3e], byte 0     ; 0x03ec
    je short @..math_loc_023a.l6     ; 0x03f1
    jmp near @..local.l8             ; 0x03f3
@..math_loc_023a.l7:
    mov word [bp - 0x0004], 0        ; 0x03f6
@..math_loc_023a.l8:
    mov ax, 0x16                     ; 0x03fb
    push ax                          ; 0x03fe
    mov ax, word [bp - 0x0004]       ; 0x03ff
    imul word [bp + 0xc]             ; 0x0402
    add ax, word [bp + 0x8]          ; 0x0405
    add ax, strict word 0xf          ; 0x0408
    push ax                          ; 0x040b
    mov ax, 6                        ; 0x040c
    imul word [bp + 0xa]             ; 0x040f
    add ax, word [bp + 0x6]          ; 0x0412
    add ax, strict word 8            ; 0x0415
    push ax                          ; 0x0418
    mov ax, word [bp - 0x0004]       ; 0x0419
    imul word [bp + 0xc]             ; 0x041c
    add ax, word [bp + 0x8]          ; 0x041f
    add ax, strict word 7            ; 0x0422
    push ax                          ; 0x0425
    mov ax, word [bp + 0x6]          ; 0x0426
    add ax, strict word 8            ; 0x0429
    push ax                          ; 0x042c
    call loc_01bf                    ; 0x042d
    add sp, byte 0x0a                ; 0x0430
    mov ax, word [bp - 0x0008]       ; 0x0433
    inc ax                           ; 0x0436
    push ax                          ; 0x0437
    mov ax, word [bp - 0x0006]       ; 0x0438
    inc ax                           ; 0x043b
    push ax                          ; 0x043c
    mov ax, word [bp + 0x8]          ; 0x043d
    dec ax                           ; 0x0440
    push ax                          ; 0x0441
    mov ax, word [bp + 0x6]          ; 0x0442
    dec ax                           ; 0x0445
    push ax                          ; 0x0446
    call ds_dispatch_e8da            ; 0x0447
    add sp, byte 8                   ; 0x044a
    mov ax, 0                        ; 0x044d
    push ax                          ; 0x0450
    mov ax, word [bp - 0x0004]       ; 0x0451
    imul word [bp + 0xc]             ; 0x0454
    add ax, word [bp + 0x8]          ; 0x0457
    add ax, strict word 0xf          ; 0x045a
    push ax                          ; 0x045d
    mov ax, 6                        ; 0x045e
    imul word [bp + 0xa]             ; 0x0461
    add ax, word [bp + 0x6]          ; 0x0464
    add ax, strict word 8            ; 0x0467
    push ax                          ; 0x046a
    mov ax, word [bp - 0x0004]       ; 0x046b
    imul word [bp + 0xc]             ; 0x046e
    add ax, word [bp + 0x8]          ; 0x0471
    add ax, strict word 7            ; 0x0474
    push ax                          ; 0x0477
    mov ax, word [bp + 0x6]          ; 0x0478
    add ax, strict word 8            ; 0x047b
    push ax                          ; 0x047e
    call loc_01bf                    ; 0x047f
    add sp, byte 0x0a                ; 0x0482
@..local.l1:
    mov ax, 1                        ; 0x0485
    push ax                          ; 0x0488
    call ds_dispatch_ea50            ; 0x0489
    pop cx                           ; 0x048c
    test ax, ax                      ; 0x048d
    jne short @..local.l2            ; 0x048f
    jmp short @..local.l1            ; 0x0491
@..local.l2:
    mov ax, 1                        ; 0x0493
    push ax                          ; 0x0496
    call ds_dispatch_eb32            ; 0x0497
    pop cx                           ; 0x049a
    sub ah, ah                       ; 0x049b
    mov word [bp - 0x0156], ax       ; 0x049d
    jmp short @..local.l5            ; 0x04a1
@..local.l3:
    mov ax, word [bp - 0x0004]       ; 0x04a3
    add ax, word [bp - 0x0002]       ; 0x04a6
    dec ax                           ; 0x04a9
    cwd                              ; 0x04aa
    idiv word [bp - 0x0002]          ; 0x04ab
    mov word [bp - 0x0004], dx       ; 0x04ae
    jmp short @..local.l6            ; 0x04b1
@..local.l4:
    mov ax, word [bp - 0x0004]       ; 0x04b3
    inc ax                           ; 0x04b6
    cwd                              ; 0x04b7
    idiv word [bp - 0x0002]          ; 0x04b8
    mov word [bp - 0x0004], dx       ; 0x04bb
    jmp short @..local.l6            ; 0x04be
@..local.l5:
    cmp ax, strict word 9            ; 0x04c0
    je short @..local.l3             ; 0x04c3
    cmp ax, strict word 0xb          ; 0x04c5
    je short @..local.l4             ; 0x04c8
@..local.l6:
    cmp word [bp - 0x0156], byte 0x0d ; 0x04ca
    je short @..local.l7             ; 0x04cf
    jmp near @..math_loc_023a.l8     ; 0x04d1
@..local.l7:
    inc word [bp - 0x0004]           ; 0x04d4
    mov ax, word [bp - 0x0008]       ; 0x04d7
    inc ax                           ; 0x04da
    push ax                          ; 0x04db
    mov ax, word [bp - 0x0006]       ; 0x04dc
    inc ax                           ; 0x04df
    push ax                          ; 0x04e0
    mov ax, word [bp + 0x8]          ; 0x04e1
    dec ax                           ; 0x04e4
    push ax                          ; 0x04e5
    mov ax, word [bp + 0x6]          ; 0x04e6
    dec ax                           ; 0x04e9
    push ax                          ; 0x04ea
    call ds_dispatch_e8da            ; 0x04eb
    add sp, byte 8                   ; 0x04ee
@..local.l8:
    dec word [bp - 0x0004]           ; 0x04f1
    mov ax, 1                        ; 0x04f4
    push ax                          ; 0x04f7
    push ax                          ; 0x04f8
    push word [bp + 0xa]             ; 0x04f9
    mov ax, word [bp - 0x0004]       ; 0x04fc
    imul word [bp + 0xc]             ; 0x04ff
    add ax, word [bp + 0x8]          ; 0x0502
    add ax, strict word 7            ; 0x0505
    push ax                          ; 0x0508
    mov ax, word [bp + 0x6]          ; 0x0509
    add ax, strict word 8            ; 0x050c
    push ax                          ; 0x050f
    call ds_dispatch_be5f            ; 0x0510
    add sp, byte 0x0a                ; 0x0513
    mov ax, 0                        ; 0x0516
    push ax                          ; 0x0519
    mov ax, 1                        ; 0x051a
    push ax                          ; 0x051d
    push word [bp + 0xa]             ; 0x051e
    mov ax, word [bp - 0x0004]       ; 0x0521
    imul word [bp + 0xc]             ; 0x0524
    add ax, word [bp + 0x8]          ; 0x0527
    add ax, strict word 7            ; 0x052a
    push ax                          ; 0x052d
    mov ax, word [bp + 0x6]          ; 0x052e
    add ax, strict word 8            ; 0x0531
    push ax                          ; 0x0534
    call ds_dispatch_be5f            ; 0x0535
    add sp, byte 0x0a                ; 0x0538
    mov ax, 1                        ; 0x053b
    push ax                          ; 0x053e
    push word [bp - 0x0154]          ; 0x053f
    call ds_dispatch_c459            ; 0x0543
    add sp, byte 4                   ; 0x0546
    mov ax, word [bp - 0x0004]       ; 0x0549
    mov word [data_9052], ax         ; 0x054c
    shl ax, 1                        ; 0x054f
    mov bx, ax                       ; 0x0551
    add bx, bp                       ; 0x0553
    mov ax, word [bx - 0x0026]       ; 0x0555
    ret                              ; 0x0558
api_idx_0016:
    mov ax, 0xffea                   ; 0x0559
    call ds_dispatch_f40b            ; 0x055c
    mov ax, 0x90a9                   ; 0x055f
    push ax                          ; 0x0562
    lea ax, word [bp - 0x0016]       ; 0x0563
    push ax                          ; 0x0566
    call ds_dispatch_f364            ; 0x0567
    add sp, byte 4                   ; 0x056a
    mov ax, 0                        ; 0x056d
    push ax                          ; 0x0570
    call ds_dispatch_ef14            ; 0x0571
    pop cx                           ; 0x0574
    mov ax, 0                        ; 0x0575
    push ax                          ; 0x0578
    push ax                          ; 0x0579
    lea ax, word [bp - 0x0016]       ; 0x057a
    push ax                          ; 0x057d
    call ds_dispatch_d161            ; 0x057e
    add sp, byte 4                   ; 0x0581
    push ax                          ; 0x0584
    call ds_dispatch_f909            ; 0x0585
    add sp, byte 4                   ; 0x0588
    mov word [bp - 0x0002], ax       ; 0x058b
    cmp ax, strict word 0xffff       ; 0x058e
    jne short @..api_idx_0016.l1     ; 0x0591
    mov ax, 0x13                     ; 0x0593
    push ax                          ; 0x0596
    call ds_dispatch_b171            ; 0x0597
    pop cx                           ; 0x059a
@..api_idx_0016.l1:
    push word [bp + 0x6]             ; 0x059b
    push word [bp + 0x4]             ; 0x059e
    mov ax, 5                        ; 0x05a1
    push ax                          ; 0x05a4
    push word [bp - 0x0002]          ; 0x05a5
    call ds_dispatch_e743            ; 0x05a8
    add sp, byte 8                   ; 0x05ab
    push word [bp - 0x0002]          ; 0x05ae
    call ds_dispatch_fda5            ; 0x05b1
    pop cx                           ; 0x05b4
    ret                              ; 0x05b5
api_idx_0006:
    mov ax, 0xfffa                   ; 0x05b6
    call ds_dispatch_f40b            ; 0x05b9
    mov word [bp - 0x0002], 0        ; 0x05bc
@..api_idx_0006.l1:
    mov word [bp - 0x0006], 0        ; 0x05c1
    mov word [bp - 0x0004], 0        ; 0x05c6
    jmp short @..api_idx_0006.l4     ; 0x05cb
@..api_idx_0006.l2:
    mov ax, word [bp - 0x0004]       ; 0x05cd
    shl ax, 1                        ; 0x05d0
    mov bx, ax                       ; 0x05d2
    mov ax, word [bx + 0x69bc]       ; 0x05d4
    cmp ax, word [bp - 0x0002]       ; 0x05d8
    jne short @..api_idx_0006.l3     ; 0x05db
    mov word [bp - 0x0006], 1        ; 0x05dd
@..api_idx_0006.l3:
    inc word [bp - 0x0004]           ; 0x05e2
@..api_idx_0006.l4:
    mov ax, word [bp - 0x0004]       ; 0x05e5
    cmp ax, word [bp + 0x4]          ; 0x05e8
    jl short @..api_idx_0006.l2      ; 0x05eb
    cmp word [bp - 0x0006], byte 0   ; 0x05ed
    jne short @..local.l9            ; 0x05f1
    mov ax, word [bp - 0x0002]       ; 0x05f3
    ret                              ; 0x05f6
@..local.l9:
    inc word [bp - 0x0002]           ; 0x05f7
    mov ax, word [bp - 0x0002]       ; 0x05fa
    cmp ax, strict word 6            ; 0x05fd
    jl short @..api_idx_0006.l1      ; 0x0600
    mov ax, 0                        ; 0x0602
    ret                              ; 0x0605
api_idx_0038:
    mov ax, 0xffc8                   ; 0x0606
    call ds_dispatch_f40b            ; 0x0609
    mov word [data_904e], 0xffff     ; 0x060c
    mov word [bp - 0x0004], 0x37     ; 0x0612
    mov word [bp - 0x0006], 0x8f     ; 0x0617
    mov word [bp - 0x0008], 0x108    ; 0x061c
    mov word [bp - 0x000a], 0xc5     ; 0x0621
    mov word [bp - 0x0012], 0x16     ; 0x0626
    mov ax, 7                        ; 0x062b
    cmp word [bp + 0xc], byte 7      ; 0x062e
    jge short @..api_idx_0038.l1     ; 0x0632
    mov ax, word [bp + 0xc]          ; 0x0634
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax       ; 0x0637
    mov ax, 0x90b6                   ; 0x063a
    push ax                          ; 0x063d
    mov ax, word [bp - 0x000a]       ; 0x063e
    inc ax                           ; 0x0641
    push ax                          ; 0x0642
    mov ax, word [bp - 0x0008]       ; 0x0643
    inc ax                           ; 0x0646
    push ax                          ; 0x0647
    mov ax, word [bp - 0x0006]       ; 0x0648
    dec ax                           ; 0x064b
    push ax                          ; 0x064c
    mov ax, word [bp - 0x0004]       ; 0x064d
    dec ax                           ; 0x0650
    push ax                          ; 0x0651
    call ds_dispatch_c283            ; 0x0652
    add sp, byte 0x0a                ; 0x0655
    mov word [bp - 0x0038], ax       ; 0x0658
    push word [bp - 0x000a]          ; 0x065b
    push word [bp - 0x0008]          ; 0x065e
    push word [bp - 0x0006]          ; 0x0661
    push word [bp - 0x0004]          ; 0x0664
    call ds_dispatch_bc9a            ; 0x0667
    add sp, byte 8                   ; 0x066a
    lea ax, word [bp - 0x0036]       ; 0x066d
    push ax                          ; 0x0670
    push word [bp + 0x4]             ; 0x0671
    call ds_dispatch_b53b            ; 0x0674
    add sp, byte 4                   ; 0x0677
    lea ax, word [bp - 0x0036]       ; 0x067a
    push ax                          ; 0x067d
    push word [bp + 0x6]             ; 0x067e
    mov ax, 1                        ; 0x0681
    push ax                          ; 0x0684
    mov ax, 0xc                      ; 0x0685
    push ax                          ; 0x0688
    mov ax, word [bp - 0x0006]       ; 0x0689
    add ax, strict word 7            ; 0x068c
    push ax                          ; 0x068f
    mov ax, word [bp - 0x0004]       ; 0x0690
    add ax, strict word 8            ; 0x0693
    push ax                          ; 0x0696
    call ds_dispatch_c0c1            ; 0x0697
    add sp, byte 0x0c                ; 0x069a
    lea ax, word [bp - 0x0036]       ; 0x069d
    push ax                          ; 0x06a0
    mov ax, word [bp + 0x4]          ; 0x06a1
    inc ax                           ; 0x06a4
    push ax                          ; 0x06a5
    call ds_dispatch_b53b            ; 0x06a6
    add sp, byte 4                   ; 0x06a9
    lea ax, word [bp - 0x0036]       ; 0x06ac
    push ax                          ; 0x06af
    push word [bp + 0x8]             ; 0x06b0
    mov ax, 1                        ; 0x06b3
    push ax                          ; 0x06b6
    mov ax, 0xc                      ; 0x06b7
    push ax                          ; 0x06ba
    mov ax, word [bp - 0x0006]       ; 0x06bb
    add ax, strict word 0x17         ; 0x06be
    push ax                          ; 0x06c1
    mov ax, word [bp - 0x0004]       ; 0x06c2
    add ax, strict word 8            ; 0x06c5
    push ax                          ; 0x06c8
    call ds_dispatch_c0c1            ; 0x06c9
    add sp, byte 0x0c                ; 0x06cc
    lea ax, word [bp - 0x0036]       ; 0x06cf
    push ax                          ; 0x06d2
    mov ax, word [bp + 0x4]          ; 0x06d3
    inc ax                           ; 0x06d6
    inc ax                           ; 0x06d7
    push ax                          ; 0x06d8
    call ds_dispatch_b53b            ; 0x06d9
    add sp, byte 4                   ; 0x06dc
    lea ax, word [bp - 0x0036]       ; 0x06df
    push ax                          ; 0x06e2
    push word [bp + 0xa]             ; 0x06e3
    mov ax, 1                        ; 0x06e6
    push ax                          ; 0x06e9
    mov ax, 0xc                      ; 0x06ea
    push ax                          ; 0x06ed
    mov ax, word [bp - 0x0006]       ; 0x06ee
    add ax, strict word 0x27         ; 0x06f1
    push ax                          ; 0x06f4
    mov ax, word [bp - 0x0004]       ; 0x06f5
    add ax, strict word 8            ; 0x06f8
    push ax                          ; 0x06fb
    call ds_dispatch_c0c1            ; 0x06fc
    add sp, byte 0x0c                ; 0x06ff
    mov word [bp - 0x0016], 0        ; 0x0702
    mov word [bp - 0x0020], 0xffff   ; 0x0707
    push word [bp - 0x0022]          ; 0x070c
    push word [bp - 0x0020]          ; 0x070f
    push word [bp - 0x0016]          ; 0x0712
    mov ax, 7                        ; 0x0715
    push ax                          ; 0x0718
    mov ax, 0xf                      ; 0x0719
    push ax                          ; 0x071c
    mov ax, word [bp - 0x0006]       ; 0x071d
    add ax, strict word 6            ; 0x0720
    push ax                          ; 0x0723
    mov ax, word [bp - 0x0004]       ; 0x0724
    add ax, strict word 0x5d         ; 0x0727
    push ax                          ; 0x072a
    call ds_dispatch_bf97            ; 0x072b
    add sp, byte 0x0e                ; 0x072e
    mov word [bp - 0x0010], 0        ; 0x0731
    push word [bp - 0x0010]          ; 0x0736
    mov ax, 7                        ; 0x0739
    push ax                          ; 0x073c
    mov ax, 8                        ; 0x073d
    push ax                          ; 0x0740
    mov ax, word [bp - 0x0006]       ; 0x0741
    add ax, strict word 6            ; 0x0744
    push ax                          ; 0x0747
    mov ax, word [bp - 0x0004]       ; 0x0748
    add ax, 0xc1                     ; 0x074b
    push ax                          ; 0x074e
    call ds_dispatch_bfd8            ; 0x074f
    add sp, byte 0x0a                ; 0x0752
    mov ax, 0                        ; 0x0755
    push ax                          ; 0x0758
    push ax                          ; 0x0759
    mov ax, word [bp - 0x0006]       ; 0x075a
    add ax, word [bp - 0x0010]       ; 0x075d
    add ax, strict word 0x12         ; 0x0760
    push ax                          ; 0x0763
    mov ax, word [bp - 0x0004]       ; 0x0764
    add ax, 0xc9                     ; 0x0767
    push ax                          ; 0x076a
    mov ax, word [bp - 0x0006]       ; 0x076b
    add ax, word [bp - 0x0010]       ; 0x076e
    add ax, strict word 0xe          ; 0x0771
    push ax                          ; 0x0774
    mov ax, word [bp - 0x0004]       ; 0x0775
    add ax, 0xc1                     ; 0x0778
    push ax                          ; 0x077b
    mov ax, 0                        ; 0x077c
    push ax                          ; 0x077f
    call ds_dispatch_baa6            ; 0x0780
    add sp, byte 0x0e                ; 0x0783
    mov ax, 0                        ; 0x0786
    push ax                          ; 0x0789
    mov ax, 9                        ; 0x078a
    push ax                          ; 0x078d
    mov ax, word [bp - 0x0006]       ; 0x078e
    add ax, strict word 0xc          ; 0x0791
    push ax                          ; 0x0794
    mov ax, word [bp - 0x0004]       ; 0x0795
    add ax, 0xc9                     ; 0x0798
    push ax                          ; 0x079b
    mov ax, word [bp - 0x0006]       ; 0x079c
    add ax, strict word 6            ; 0x079f
    push ax                          ; 0x07a2
    mov ax, word [bp - 0x0004]       ; 0x07a3
    add ax, 0xc1                     ; 0x07a6
    push ax                          ; 0x07a9
    mov ax, 1                        ; 0x07aa
    push ax                          ; 0x07ad
    call ds_dispatch_baa6            ; 0x07ae
    add sp, byte 0x0e                ; 0x07b1
    mov ax, 0                        ; 0x07b4
    push ax                          ; 0x07b7
    mov ax, 0xb                      ; 0x07b8
    push ax                          ; 0x07bb
    mov ax, word [bp - 0x0006]       ; 0x07bc
    add ax, strict word 0x30         ; 0x07bf
    push ax                          ; 0x07c2
    mov ax, word [bp - 0x0004]       ; 0x07c3
    add ax, 0xc9                     ; 0x07c6
    push ax                          ; 0x07c9
    mov ax, word [bp - 0x0006]       ; 0x07ca
    add ax, strict word 0x2a         ; 0x07cd
    push ax                          ; 0x07d0
    mov ax, word [bp - 0x0004]       ; 0x07d1
    add ax, 0xc1                     ; 0x07d4
    push ax                          ; 0x07d7
    mov ax, data_0002                ; 0x07d8
    push ax                          ; 0x07db
    call ds_dispatch_baa6            ; 0x07dc
    add sp, byte 0x0e                ; 0x07df
    mov ax, 0                        ; 0x07e2
    push ax                          ; 0x07e5
    push ax                          ; 0x07e6
    mov ax, word [bp - 0x0006]       ; 0x07e7
    add ax, strict word 0xf          ; 0x07ea
    push ax                          ; 0x07ed
    mov ax, word [bp - 0x0004]       ; 0x07ee
    add ax, strict word 0x50         ; 0x07f1
    push ax                          ; 0x07f4
    mov ax, word [bp - 0x0006]       ; 0x07f5
    add ax, strict word 7            ; 0x07f8
    push ax                          ; 0x07fb
    mov ax, word [bp - 0x0004]       ; 0x07fc
    add ax, strict word 8            ; 0x07ff
    push ax                          ; 0x0802
    mov ax, 3                        ; 0x0803
    push ax                          ; 0x0806
    call ds_dispatch_baa6            ; 0x0807
    add sp, byte 0x0e                ; 0x080a
    mov ax, 0                        ; 0x080d
    push ax                          ; 0x0810
    mov ax, 0xd                      ; 0x0811
    push ax                          ; 0x0814
    mov ax, word [bp - 0x0006]       ; 0x0815
    add ax, strict word 0x1f         ; 0x0818
    push ax                          ; 0x081b
    mov ax, word [bp - 0x0004]       ; 0x081c
    add ax, strict word 0x50         ; 0x081f
    push ax                          ; 0x0822
    mov ax, word [bp - 0x0006]       ; 0x0823
    add ax, strict word 0x17         ; 0x0826
    push ax                          ; 0x0829
    mov ax, word [bp - 0x0004]       ; 0x082a
    add ax, strict word 8            ; 0x082d
    push ax                          ; 0x0830
    mov ax, 4                        ; 0x0831
    push ax                          ; 0x0834
    call ds_dispatch_baa6            ; 0x0835
    add sp, byte 0x0e                ; 0x0838
    mov ax, 0                        ; 0x083b
    push ax                          ; 0x083e
    mov ax, 0x1b                     ; 0x083f
    push ax                          ; 0x0842
    mov ax, word [bp - 0x0006]       ; 0x0843
    add ax, strict word 0x2f         ; 0x0846
    push ax                          ; 0x0849
    mov ax, word [bp - 0x0004]       ; 0x084a
    add ax, strict word 0x50         ; 0x084d
    push ax                          ; 0x0850
    mov ax, word [bp - 0x0006]       ; 0x0851
    add ax, strict word 0x27         ; 0x0854
    push ax                          ; 0x0857
    mov ax, word [bp - 0x0004]       ; 0x0858
    add ax, strict word 8            ; 0x085b
    push ax                          ; 0x085e
    mov ax, 5                        ; 0x085f
    push ax                          ; 0x0862
    call ds_dispatch_baa6            ; 0x0863
    add sp, byte 0x0e                ; 0x0866
    mov ax, 7                        ; 0x0869
    cmp word [bp + 0xc], byte 7      ; 0x086c
    jge short @..local.l10           ; 0x0870
    mov ax, word [bp + 0xc]          ; 0x0872
@..local.l10:
    mov word [bp - 0x001e], ax       ; 0x0875
    mov word [bp - 0x0002], 0        ; 0x0878
    jmp short @..local.l12           ; 0x087d
@..local.l11:
    mov ax, 0                        ; 0x087f
    push ax                          ; 0x0882
    push ax                          ; 0x0883
    mov ax, 6                        ; 0x0884
    imul word [bp - 0x0002]          ; 0x0887
    add ax, word [bp - 0x0006]       ; 0x088a
    add ax, strict word 0xc          ; 0x088d
    push ax                          ; 0x0890
    mov ax, word [bp - 0x0004]       ; 0x0891
    add ax, 0xb9                     ; 0x0894
    push ax                          ; 0x0897
    mov ax, 6                        ; 0x0898
    imul word [bp - 0x0002]          ; 0x089b
    add ax, word [bp - 0x0006]       ; 0x089e
    add ax, strict word 6            ; 0x08a1
    push ax                          ; 0x08a4
    mov ax, word [bp - 0x0004]       ; 0x08a5
    add ax, strict word 0x5d         ; 0x08a8
    push ax                          ; 0x08ab
    mov ax, word [bp - 0x0002]       ; 0x08ac
    add ax, strict word 6            ; 0x08af
    push ax                          ; 0x08b2
    call ds_dispatch_baa6            ; 0x08b3
    add sp, byte 0x0e                ; 0x08b6
    inc word [bp - 0x0002]           ; 0x08b9
@..local.l12:
    mov ax, word [bp - 0x0002]       ; 0x08bc
    cmp ax, word [bp - 0x001e]       ; 0x08bf
    jl short @..local.l11            ; 0x08c2
    mov ax, 0                        ; 0x08c4
    push ax                          ; 0x08c7
    push ax                          ; 0x08c8
    push ax                          ; 0x08c9
    push ax                          ; 0x08ca
    push ax                          ; 0x08cb
loc_08cc:
    mov ax, 0xffff                   ; 0x08cc
    push ax                          ; 0x08cf
    mov ax, word [bp - 0x001e]       ; 0x08d0
    add ax, strict word 6            ; 0x08d3
    push ax                          ; 0x08d6
    call ds_dispatch_baa6            ; 0x08d7
    add sp, byte 0x0e                ; 0x08da
    mov ax, word [bp - 0x000a]       ; 0x08dd
    inc ax                           ; 0x08e0
    push ax                          ; 0x08e1
    mov ax, word [bp - 0x0008]       ; 0x08e2
    inc ax                           ; 0x08e5
    push ax                          ; 0x08e6
    mov ax, word [bp - 0x0006]       ; 0x08e7
    dec ax                           ; 0x08ea
    push ax                          ; 0x08eb
    mov ax, word [bp - 0x0004]       ; 0x08ec
    dec ax                           ; 0x08ef
    push ax                          ; 0x08f0
    call ds_dispatch_e8da            ; 0x08f1
    add sp, byte 8                   ; 0x08f4
    mov word [bp - 0x001a], 1        ; 0x08f7
@..local.l13:
    mov ax, 0x59fe                   ; 0x08fc
    push ax                          ; 0x08ff
    call ds_dispatch_b90d            ; 0x0900
    pop cx                           ; 0x0903
    dec ax                           ; 0x0904
    mov word [bp - 0x0018], ax       ; 0x0905
    cmp word [data_59fc], byte 0     ; 0x0908
    je short @..local.l17            ; 0x090d
    mov ax, word [bp - 0x0020]       ; 0x090f
    cmp ax, word [bp - 0x0016]       ; 0x0912
    jl short @..local.l14            ; 0x0915
    inc word [bp - 0x0020]           ; 0x0917
@..local.l14:
    mov ax, word [bp - 0x0020]       ; 0x091a
    cmp ax, strict word 0xffff       ; 0x091d
    je short @..local.l15            ; 0x0920
    cmp ax, word [bp - 0x0016]       ; 0x0922
    jl short @..local.l15            ; 0x0925
    mov ax, word [bp - 0x0016]       ; 0x0927
    add ax, word [bp - 0x001e]       ; 0x092a
    mov cx, ax                       ; 0x092d
    dec ax                           ; 0x092f
    mov cx, ax                       ; 0x0930
    mov ax, word [bp - 0x0020]       ; 0x0932
    cmp cx, ax                       ; 0x0935
    jge short @..local.l16           ; 0x0937
@..local.l15:
    mov ax, word [bp - 0x0016]       ; 0x0939
    mov word [bp - 0x0020], ax       ; 0x093c
@..local.l16:
    mov word [data_5b3e], 1          ; 0x093f
    mov ax, word [bp - 0x0020]       ; 0x0945
    sub ax, word [bp - 0x0016]       ; 0x0948
    add ax, strict word 6            ; 0x094b
    mov word [bp - 0x0018], ax       ; 0x094e
@..local.l17:
    cmp word [data_5b3e], byte 1     ; 0x0951
    je short @..local.l18            ; 0x0956
    jmp near @..local.l22            ; 0x0958
@..local.l18:
    mov ax, word [bp - 0x0018]       ; 0x095b
    jmp near @..local.l20            ; 0x095e

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
    mov ax, word [bp - 0x0016]       ; 0x0cb1
    add ax, word [bp - 0x0018]       ; 0x0cb4
    add ax, strict word 0xfffa       ; 0x0cb7
    mov word [bp - 0x0020], ax       ; 0x0cba
    push word [bp - 0x0022]          ; 0x0cbd
    push ax                          ; 0x0cc0
    push word [bp - 0x0016]          ; 0x0cc1
    mov ax, 7                        ; 0x0cc4
    push ax                          ; 0x0cc7
    mov ax, 0xf                      ; 0x0cc8
    push ax                          ; 0x0ccb
    mov ax, word [bp - 0x0006]       ; 0x0ccc
    add ax, strict word 6            ; 0x0ccf
    push ax                          ; 0x0cd2
    mov ax, word [bp - 0x0004]       ; 0x0cd3
    add ax, strict word 0x5d         ; 0x0cd6
    push ax                          ; 0x0cd9
    call ds_dispatch_bf97            ; 0x0cda
    add sp, byte 0x0e                ; 0x0cdd
    mov ax, word [bp - 0x0006]       ; 0x0ce0
    add ax, strict word 0x30         ; 0x0ce3
    push ax                          ; 0x0ce6
    mov ax, word [bp - 0x0004]       ; 0x0ce7
    add ax, 0xb9                     ; 0x0cea
    push ax                          ; 0x0ced
    mov ax, word [bp - 0x0006]       ; 0x0cee
    add ax, strict word 6            ; 0x0cf1
    push ax                          ; 0x0cf4
    mov ax, word [bp - 0x0004]       ; 0x0cf5
    add ax, strict word 0x5d         ; 0x0cf8
    push ax                          ; 0x0cfb
    call ds_dispatch_e8da            ; 0x0cfc
    add sp, byte 8                   ; 0x0cff
    jmp short @..local.l22           ; 0x0d02
    test al, 0x59                    ; 0x0d04
    iret                             ; 0x0d06
    pop dx                           ; 0x0d07
    iret                             ; 0x0d08
    pop dx                           ; 0x0d09
    push es                          ; 0x0d0a
    pop sp                           ; 0x0d0b
    push di                          ; 0x0d0c
    pop sp                           ; 0x0d0d
    test al, 0x5c                    ; 0x0d0e
@..local.l20:
    cmp ax, strict word 6            ; 0x0d10
    jae short @..local.l21           ; 0x0d13
    xchg bx, ax                      ; 0x0d15
    shl bx, 1                        ; 0x0d16
    jmp [cs:bx + 0x5d4b]             ; 0x0d18
@..local.l21:
    jmp short @..local.l19           ; 0x0d1d
@..local.l22:
    cmp word [bp - 0x001a], byte 0   ; 0x0d1f
    je short @..local.l23            ; 0x0d23
    jmp near @..local.l13            ; 0x0d25
@..local.l23:
    mov ax, 1                        ; 0x0d28
    push ax                          ; 0x0d2b
    push word [bp - 0x0038]          ; 0x0d2c
    call ds_dispatch_c459            ; 0x0d2f
    add sp, byte 4                   ; 0x0d32
    mov ax, word [bp - 0x0020]       ; 0x0d35
    mov word [data_904e], ax         ; 0x0d38
    mov ax, word [data_9050]         ; 0x0d3b
    ret                              ; 0x0d3e
api_idx_0008:
    mov ax, 0xfff8                   ; 0x0d3f
    call ds_dispatch_f40b            ; 0x0d42
    push word [bp + 0xe]             ; 0x0d45
    push word [bp + 0xc]             ; 0x0d48
    call ds_dispatch_e823            ; 0x0d4b
    add sp, byte 4                   ; 0x0d4e
    push word [bp + 0x4]             ; 0x0d51
    call ds_dispatch_fa90            ; 0x0d54
    pop cx                           ; 0x0d57
    mov word [bp - 0x0004], ax       ; 0x0d58
    mov cx, 6                        ; 0x0d5b
    imul cx                          ; 0x0d5e
    add word [bp + 0x6], ax          ; 0x0d60
@..api_idx_0008.l1:
    mov word [bp - 0x0006], 0        ; 0x0d63
    mov word [bp - 0x0008], 0        ; 0x0d68
@..api_idx_0008.l2:
    mov ax, 1                        ; 0x0d6d
    push ax                          ; 0x0d70
    call ds_dispatch_ea50            ; 0x0d71
    pop cx                           ; 0x0d74
    test ax, ax                      ; 0x0d75
    je short @..api_idx_0008.l3      ; 0x0d77
    jmp near @..api_idx_0008.l7      ; 0x0d79
@..api_idx_0008.l3:
    cmp word [bp - 0x0008], byte 0   ; 0x0d7c
    jne short @..api_idx_0008.l5     ; 0x0d80
    push word [bp + 0xe]             ; 0x0d82
    mov ax, word [bp + 0x8]          ; 0x0d85
    add ax, strict word 5            ; 0x0d88
    push ax                          ; 0x0d8b
    mov ax, word [bp + 0x6]          ; 0x0d8c
    add ax, strict word 5            ; 0x0d8f
    push ax                          ; 0x0d92
    push word [bp + 0x8]             ; 0x0d93
    push word [bp + 0x6]             ; 0x0d96
    call ds_dispatch_e901            ; 0x0d99
    add sp, byte 0x0a                ; 0x0d9c
    cmp word [bp - 0x0006], byte 0   ; 0x0d9f
    je short @..api_idx_0008.l4      ; 0x0da3
    push word [bp + 0x8]             ; 0x0da5
    push word [bp + 0x6]             ; 0x0da8
    call ds_dispatch_e809            ; 0x0dab
    add sp, byte 4                   ; 0x0dae
    mov ax, 0                        ; 0x0db1
    push ax                          ; 0x0db4
    mov ax, 3                        ; 0x0db5
    push ax                          ; 0x0db8
    call ds_dispatch_e830            ; 0x0db9
    add sp, byte 4                   ; 0x0dbc
@..api_idx_0008.l4:
    mov ax, word [bp + 0x8]          ; 0x0dbf
    add ax, strict word 5            ; 0x0dc2
    push ax                          ; 0x0dc5
    mov ax, word [bp + 0x6]          ; 0x0dc6
    add ax, strict word 5            ; 0x0dc9
    push ax                          ; 0x0dcc
    push word [bp + 0x8]             ; 0x0dcd
    push word [bp + 0x6]             ; 0x0dd0
    call ds_dispatch_e8da            ; 0x0dd3
    add sp, byte 8                   ; 0x0dd6
    mov ax, word [bp - 0x0006]       ; 0x0dd9
    inc ax                           ; 0x0ddc
    mov cx, data_0002                ; 0x0ddd
    cwd                              ; 0x0de0
    idiv cx                          ; 0x0de1
    mov word [bp - 0x0006], dx       ; 0x0de3
    mov word [bp - 0x0008], 0xa      ; 0x0de6
    jmp short @..api_idx_0008.l6     ; 0x0deb
@..api_idx_0008.l5:
    mov ax, 0xa                      ; 0x0ded
    push ax                          ; 0x0df0
    call ds_dispatch_e489            ; 0x0df1
    pop cx                           ; 0x0df4
    dec word [bp - 0x0008]           ; 0x0df5
@..api_idx_0008.l6:
    jmp near @..api_idx_0008.l2      ; 0x0df8
@..api_idx_0008.l7:
    mov ax, 1                        ; 0x0dfb
    push ax                          ; 0x0dfe
    call ds_dispatch_eb32            ; 0x0dff
    pop cx                           ; 0x0e02
    sub ah, ah                       ; 0x0e03
    mov word [bp - 0x0002], ax       ; 0x0e05
    push word [bp + 0xe]             ; 0x0e08
    mov ax, word [bp + 0x8]          ; 0x0e0b
    add ax, strict word 5            ; 0x0e0e
    push ax                          ; 0x0e11
    mov ax, word [bp + 0x6]          ; 0x0e12
    add ax, strict word 5            ; 0x0e15
    push ax                          ; 0x0e18
    push word [bp + 0x8]             ; 0x0e19
    push word [bp + 0x6]             ; 0x0e1c
    call ds_dispatch_e901            ; 0x0e1f
    add sp, byte 0x0a                ; 0x0e22
    mov ax, word [bp + 0x8]          ; 0x0e25
    add ax, strict word 5            ; 0x0e28
    push ax                          ; 0x0e2b
    mov ax, word [bp + 0x6]          ; 0x0e2c
    add ax, strict word 5            ; 0x0e2f
    push ax                          ; 0x0e32
    push word [bp + 0x8]             ; 0x0e33
    push word [bp + 0x6]             ; 0x0e36
    call ds_dispatch_e8da            ; 0x0e39
    add sp, byte 8                   ; 0x0e3c
    cmp word [bp - 0x0002], byte 0x0d ; 0x0e3f
    jne short @..local.l24           ; 0x0e43
    mov bx, word [bp + 0x4]          ; 0x0e45
    mov si, word [bp - 0x0004]       ; 0x0e48
    mov byte [bx + si], 0            ; 0x0e4b
    call ds_dispatch_ec17            ; 0x0e4e
    ret                              ; 0x0e51
@..local.l24:
    cmp word [bp - 0x0002], byte 8   ; 0x0e52
    jne short @..local.l27           ; 0x0e56
    cmp word [bp - 0x0004], byte 0   ; 0x0e58
    jle short @..local.l25           ; 0x0e5c
    dec word [bp - 0x0004]           ; 0x0e5e
    add word [bp + 0x6], byte 0xfa   ; 0x0e61
    jmp short @..local.l26           ; 0x0e65
@..local.l25:
    mov ax, 0                        ; 0x0e67
    push ax                          ; 0x0e6a
    call ds_dispatch_b7e0            ; 0x0e6b
    pop cx                           ; 0x0e6e
@..local.l26:
    jmp near @..local.l31            ; 0x0e6f
@..local.l27:
    mov ax, word [bp - 0x0004]       ; 0x0e72
    cmp ax, word [bp + 0xa]          ; 0x0e75
    jl short @..local.l28            ; 0x0e78
    mov ax, 0                        ; 0x0e7a
    push ax                          ; 0x0e7d
    call ds_dispatch_b7e0            ; 0x0e7e
    pop cx                           ; 0x0e81
    jmp near @..local.l31            ; 0x0e82
@..local.l28:
    cmp word [bp + 0x10], byte 0     ; 0x0e85
    jne short @..local.l29           ; 0x0e89
    mov ax, word [bp - 0x0002]       ; 0x0e8b
    cmp ax, strict word 0x20         ; 0x0e8e
    jl short @..local.l29            ; 0x0e91
    cmp ax, strict word 0x7f         ; 0x0e93
    jle short @..local.l30           ; 0x0e96
@..local.l29:
    cmp word [bp + 0x10], byte 1     ; 0x0e98
    jne short @..local.l31           ; 0x0e9c
    mov ax, word [bp - 0x0002]       ; 0x0e9e
    cmp ax, strict word 0x30         ; 0x0ea1
    jl short @..local.l31            ; 0x0ea4
    cmp ax, strict word 0x39         ; 0x0ea6
    jg short @..local.l31            ; 0x0ea9
@..local.l30:
    mov al, byte [bp - 0x0002]       ; 0x0eab
    mov bx, word [bp + 0x4]          ; 0x0eae
    mov si, word [bp - 0x0004]       ; 0x0eb1
    mov byte [bx + si], al           ; 0x0eb4
    inc word [bp - 0x0004]           ; 0x0eb6
    push word [bp + 0x8]             ; 0x0eb9
    push word [bp + 0x6]             ; 0x0ebc
    call ds_dispatch_e809            ; 0x0ebf
    add sp, byte 4                   ; 0x0ec2
    mov ax, 0                        ; 0x0ec5
    push ax                          ; 0x0ec8
    mov al, byte [bp - 0x0002]       ; 0x0ec9
    sub ah, ah                       ; 0x0ecc
    push ax                          ; 0x0ece
    call ds_dispatch_e830            ; 0x0ecf
    add sp, byte 4                   ; 0x0ed2
    mov ax, word [bp + 0x8]          ; 0x0ed5
    add ax, strict word 5            ; 0x0ed8
    push ax                          ; 0x0edb
    mov ax, word [bp + 0x6]          ; 0x0edc
    add ax, strict word 5            ; 0x0edf
    push ax                          ; 0x0ee2
    push word [bp + 0x8]             ; 0x0ee3
    push word [bp + 0x6]             ; 0x0ee6
    call ds_dispatch_e8da            ; 0x0ee9
    add sp, byte 8                   ; 0x0eec
    add word [bp + 0x6], byte 6      ; 0x0eef
@..local.l31:
    jmp near @..api_idx_0008.l1      ; 0x0ef3
    db 0xc3
api_idx_0028:
    mov ax, 0xffd8                   ; 0x0ef7
    call ds_dispatch_f40b            ; 0x0efa
    mov word [data_904e], 0xffff     ; 0x0efd
    mov word [bp - 0x0028], 0xffff   ; 0x0f03
    mov word [bp - 0x0002], 0x37     ; 0x0f08
    mov word [bp - 0x0004], 0x8f     ; 0x0f0d
    mov word [bp - 0x0006], 0x108    ; 0x0f12
    mov word [bp - 0x0008], 0xc5     ; 0x0f17
    mov ax, 0x90bc                   ; 0x0f1c
    push ax                          ; 0x0f1f
    mov ax, word [bp - 0x0008]       ; 0x0f20
    inc ax                           ; 0x0f23
    push ax                          ; 0x0f24
    mov ax, word [bp - 0x0006]       ; 0x0f25
    inc ax                           ; 0x0f28
    push ax                          ; 0x0f29
    mov ax, word [bp - 0x0004]       ; 0x0f2a
    dec ax                           ; 0x0f2d
    push ax                          ; 0x0f2e
    mov ax, word [bp - 0x0002]       ; 0x0f2f
    dec ax                           ; 0x0f32
    push ax                          ; 0x0f33
    call ds_dispatch_c283            ; 0x0f34
    add sp, byte 0x0a                ; 0x0f37
    mov word [bp - 0x0026], ax       ; 0x0f3a
    push word [bp - 0x0008]          ; 0x0f3d
    push word [bp - 0x0006]          ; 0x0f40
    push word [bp - 0x0004]          ; 0x0f43
    push word [bp - 0x0002]          ; 0x0f46
    call ds_dispatch_bc9a            ; 0x0f49
    add sp, byte 8                   ; 0x0f4c
    lea ax, word [bp - 0x0024]       ; 0x0f4f
    push ax                          ; 0x0f52
    push word [bp + 0x4]             ; 0x0f53
    call ds_dispatch_b53b            ; 0x0f56
    add sp, byte 4                   ; 0x0f59
    lea ax, word [bp - 0x0024]       ; 0x0f5c
    push ax                          ; 0x0f5f
    push word [bp + 0x6]             ; 0x0f60
    mov ax, 1                        ; 0x0f63
    push ax                          ; 0x0f66
    mov ax, 0xc                      ; 0x0f67
    push ax                          ; 0x0f6a
    mov ax, word [bp - 0x0004]       ; 0x0f6b
    add ax, strict word 7            ; 0x0f6e
    push ax                          ; 0x0f71
    mov ax, word [bp - 0x0002]       ; 0x0f72
    add ax, strict word 8            ; 0x0f75
    push ax                          ; 0x0f78
    call ds_dispatch_c0c1            ; 0x0f79
    add sp, byte 0x0c                ; 0x0f7c
    lea ax, word [bp - 0x0024]       ; 0x0f7f
    push ax                          ; 0x0f82
    mov ax, word [bp + 0x4]          ; 0x0f83
    inc ax                           ; 0x0f86
    push ax                          ; 0x0f87
    call ds_dispatch_b53b            ; 0x0f88
    add sp, byte 4                   ; 0x0f8b
    lea ax, word [bp - 0x0024]       ; 0x0f8e
    push ax                          ; 0x0f91
    push word [bp + 0x8]             ; 0x0f92
    mov ax, 1                        ; 0x0f95
    push ax                          ; 0x0f98
    mov ax, 0xc                      ; 0x0f99
    push ax                          ; 0x0f9c
    mov ax, word [bp - 0x0004]       ; 0x0f9d
    add ax, strict word 0x17         ; 0x0fa0
    push ax                          ; 0x0fa3
    mov ax, word [bp - 0x0002]       ; 0x0fa4
    add ax, strict word 8            ; 0x0fa7
    push ax                          ; 0x0faa
    call ds_dispatch_c0c1            ; 0x0fab
    add sp, byte 0x0c                ; 0x0fae
    lea ax, word [bp - 0x0024]       ; 0x0fb1
    push ax                          ; 0x0fb4
    mov ax, word [bp + 0x4]          ; 0x0fb5
    inc ax                           ; 0x0fb8
    inc ax                           ; 0x0fb9
    push ax                          ; 0x0fba
    call ds_dispatch_b53b            ; 0x0fbb
    add sp, byte 4                   ; 0x0fbe
    lea ax, word [bp - 0x0024]       ; 0x0fc1
    push ax                          ; 0x0fc4
    push word [bp + 0xa]             ; 0x0fc5
    mov ax, 1                        ; 0x0fc8
    push ax                          ; 0x0fcb
    mov ax, 0xc                      ; 0x0fcc
    push ax                          ; 0x0fcf
    mov ax, word [bp - 0x0004]       ; 0x0fd0
    add ax, strict word 0x27         ; 0x0fd3
    push ax                          ; 0x0fd6
    mov ax, word [bp - 0x0002]       ; 0x0fd7
    add ax, strict word 8            ; 0x0fda
    push ax                          ; 0x0fdd
    call ds_dispatch_c0c1            ; 0x0fde
    add sp, byte 0x0c                ; 0x0fe1
    lea ax, word [bp - 0x0024]       ; 0x0fe4
    push ax                          ; 0x0fe7
    mov ax, 0x5aa                    ; 0x0fe8
    push ax                          ; 0x0feb
    call ds_dispatch_b53b            ; 0x0fec
    add sp, byte 4                   ; 0x0fef
    mov ax, 0xc2                     ; 0x0ff2
    push ax                          ; 0x0ff5
    mov ax, 0x9b                     ; 0x0ff6
    push ax                          ; 0x0ff9
    call ds_dispatch_e823            ; 0x0ffa
    add sp, byte 4                   ; 0x0ffd
    mov ax, word [bp - 0x0004]       ; 0x1000
    add ax, strict word 6            ; 0x1003
    push ax                          ; 0x1006
    lea ax, word [bp - 0x0024]       ; 0x1007
    push ax                          ; 0x100a
    call ds_dispatch_fa90            ; 0x100b
    pop cx                           ; 0x100e
    mov cx, ax                       ; 0x100f
    mov ax, 0x11                     ; 0x1011
    sub ax, cx                       ; 0x1014
    mov cx, 6                        ; 0x1016
    imul cx                          ; 0x1019
    inc ax                           ; 0x101b
    inc ax                           ; 0x101c
    mov cx, data_0002                ; 0x101d
    cwd                              ; 0x1020
    idiv cx                          ; 0x1021
    add ax, word [bp - 0x0002]       ; 0x1023
    add ax, strict word 0x5d         ; 0x1026
    push ax                          ; 0x1029
    call ds_dispatch_e809            ; 0x102a
    add sp, byte 4                   ; 0x102d
    mov ax, 0                        ; 0x1030
    push ax                          ; 0x1033
    lea ax, word [bp - 0x0024]       ; 0x1034
    push ax                          ; 0x1037
    call ds_dispatch_e84e            ; 0x1038
    add sp, byte 4                   ; 0x103b
    push word [bp + 0xc]             ; 0x103e
    mov ax, data_0e38                ; 0x1041
    push ax                          ; 0x1044
    call ds_dispatch_f364            ; 0x1045
    add sp, byte 4                   ; 0x1048
    mov ax, 1                        ; 0x104b
    push ax                          ; 0x104e
    mov ax, 0xffff                   ; 0x104f
    push ax                          ; 0x1052
    mov ax, 0                        ; 0x1053
    push ax                          ; 0x1056
    mov ax, 1                        ; 0x1057
    push ax                          ; 0x105a
    mov ax, 0x11                     ; 0x105b
    push ax                          ; 0x105e
    mov ax, word [bp - 0x0004]       ; 0x105f
    add ax, strict word 0xf          ; 0x1062
    push ax                          ; 0x1065
    mov ax, word [bp - 0x0002]       ; 0x1066
    add ax, strict word 0x5d         ; 0x1069
    push ax                          ; 0x106c
    call ds_dispatch_bf97            ; 0x106d
    add sp, byte 0x0e                ; 0x1070
    mov ax, 0                        ; 0x1073
    push ax                          ; 0x1076
    mov ax, 0x44                     ; 0x1077
    push ax                          ; 0x107a
    mov ax, word [bp - 0x0004]       ; 0x107b
    add ax, strict word 0x15         ; 0x107e
    push ax                          ; 0x1081
    mov ax, word [bp - 0x0002]       ; 0x1082
    add ax, 0xc5                     ; 0x1085
    push ax                          ; 0x1088
    mov ax, word [bp - 0x0004]       ; 0x1089
    add ax, strict word 0xf          ; 0x108c
    push ax                          ; 0x108f
    mov ax, word [bp - 0x0002]       ; 0x1090
    add ax, strict word 0x5d         ; 0x1093
    push ax                          ; 0x1096
    mov ax, 0                        ; 0x1097
    push ax                          ; 0x109a
    call ds_dispatch_baa6            ; 0x109b
    add sp, byte 0x0e                ; 0x109e
    lea ax, word [bp - 0x0024]       ; 0x10a1
    push ax                          ; 0x10a4
    mov ax, 0x5ab                    ; 0x10a5
    push ax                          ; 0x10a8
    call ds_dispatch_b53b            ; 0x10a9
    add sp, byte 4                   ; 0x10ac
    mov ax, 0xc2                     ; 0x10af
    push ax                          ; 0x10b2
    mov ax, 0x9b                     ; 0x10b3
    push ax                          ; 0x10b6
    call ds_dispatch_e823            ; 0x10b7
    add sp, byte 4                   ; 0x10ba
    mov ax, word [bp - 0x0004]       ; 0x10bd
    add ax, strict word 0x1e         ; 0x10c0
    push ax                          ; 0x10c3
    lea ax, word [bp - 0x0024]       ; 0x10c4
    push ax                          ; 0x10c7
    call ds_dispatch_fa90            ; 0x10c8
    pop cx                           ; 0x10cb
    mov cx, ax                       ; 0x10cc
    mov ax, 0x11                     ; 0x10ce
    sub ax, cx                       ; 0x10d1
    mov cx, 6                        ; 0x10d3
    imul cx                          ; 0x10d6
    inc ax                           ; 0x10d8
    inc ax                           ; 0x10d9
    mov cx, data_0002                ; 0x10da
    cwd                              ; 0x10dd
    idiv cx                          ; 0x10de
    add ax, word [bp - 0x0002]       ; 0x10e0
    add ax, strict word 0x5d         ; 0x10e3
    push ax                          ; 0x10e6
    call ds_dispatch_e809            ; 0x10e7
    add sp, byte 4                   ; 0x10ea
    mov ax, 0                        ; 0x10ed
    push ax                          ; 0x10f0
    lea ax, word [bp - 0x0024]       ; 0x10f1
    push ax                          ; 0x10f4
    call ds_dispatch_e84e            ; 0x10f5
    add sp, byte 4                   ; 0x10f8
    push word [bp + 0xe]             ; 0x10fb
    mov ax, 0xe4c                    ; 0x10fe
    push ax                          ; 0x1101
    call ds_dispatch_f364            ; 0x1102
    add sp, byte 4                   ; 0x1105
    mov ax, 1                        ; 0x1108
    push ax                          ; 0x110b
    mov ax, 0xffff                   ; 0x110c
    push ax                          ; 0x110f
    mov ax, 1                        ; 0x1110
    push ax                          ; 0x1113
    push ax                          ; 0x1114
    mov ax, 0x11                     ; 0x1115
    push ax                          ; 0x1118
    mov ax, word [bp - 0x0004]       ; 0x1119
    add ax, strict word 0x27         ; 0x111c
    push ax                          ; 0x111f
    mov ax, word [bp - 0x0002]       ; 0x1120
    add ax, strict word 0x5d         ; 0x1123
    push ax                          ; 0x1126
    call ds_dispatch_bf97            ; 0x1127
    add sp, byte 0x0e                ; 0x112a
    mov ax, 0                        ; 0x112d
    push ax                          ; 0x1130
    mov ax, 0x46                     ; 0x1131
    push ax                          ; 0x1134
    mov ax, word [bp - 0x0004]       ; 0x1135
    add ax, strict word 0x2d         ; 0x1138
    push ax                          ; 0x113b
    mov ax, word [bp - 0x0002]       ; 0x113c
    add ax, 0xc5                     ; 0x113f
    push ax                          ; 0x1142
    mov ax, word [bp - 0x0004]       ; 0x1143
    add ax, strict word 0x27         ; 0x1146
    push ax                          ; 0x1149
    mov ax, word [bp - 0x0002]       ; 0x114a
    add ax, strict word 0x5d         ; 0x114d
    push ax                          ; 0x1150
    mov ax, 1                        ; 0x1151
    push ax                          ; 0x1154
    call ds_dispatch_baa6            ; 0x1155
    add sp, byte 0x0e                ; 0x1158
    mov ax, 0                        ; 0x115b
    push ax                          ; 0x115e
    push ax                          ; 0x115f
    mov ax, word [bp - 0x0004]       ; 0x1160
    add ax, strict word 0xf          ; 0x1163
    push ax                          ; 0x1166
    mov ax, word [bp - 0x0002]       ; 0x1167
    add ax, strict word 0x50         ; 0x116a
    push ax                          ; 0x116d
    mov ax, word [bp - 0x0004]       ; 0x116e
    add ax, strict word 7            ; 0x1171
    push ax                          ; 0x1174
    mov ax, word [bp - 0x0002]       ; 0x1175
    add ax, strict word 8            ; 0x1178
    push ax                          ; 0x117b
    mov ax, data_0002                ; 0x117c
    push ax                          ; 0x117f
    call ds_dispatch_baa6            ; 0x1180
    add sp, byte 0x0e                ; 0x1183
    mov ax, 0                        ; 0x1186
    push ax                          ; 0x1189
    mov ax, 0xd                      ; 0x118a
    push ax                          ; 0x118d
    mov ax, word [bp - 0x0004]       ; 0x118e
    add ax, strict word 0x1f         ; 0x1191
    push ax                          ; 0x1194
    mov ax, word [bp - 0x0002]       ; 0x1195
    add ax, strict word 0x50         ; 0x1198
    push ax                          ; 0x119b
    mov ax, word [bp - 0x0004]       ; 0x119c
    add ax, strict word 0x17         ; 0x119f
    push ax                          ; 0x11a2
    mov ax, word [bp - 0x0002]       ; 0x11a3
    add ax, strict word 8            ; 0x11a6
    push ax                          ; 0x11a9
    mov ax, 3                        ; 0x11aa
    push ax                          ; 0x11ad
    call ds_dispatch_baa6            ; 0x11ae
    add sp, byte 0x0e                ; 0x11b1
    mov ax, 0                        ; 0x11b4
    push ax                          ; 0x11b7
    mov ax, 0x1b                     ; 0x11b8
    push ax                          ; 0x11bb
    mov ax, word [bp - 0x0004]       ; 0x11bc
    add ax, strict word 0x2f         ; 0x11bf
    push ax                          ; 0x11c2
    mov ax, word [bp - 0x0002]       ; 0x11c3
    add ax, strict word 0x50         ; 0x11c6
    push ax                          ; 0x11c9
    mov ax, word [bp - 0x0004]       ; 0x11ca
    add ax, strict word 0x27         ; 0x11cd
    push ax                          ; 0x11d0
    mov ax, word [bp - 0x0002]       ; 0x11d1
    add ax, strict word 8            ; 0x11d4
    push ax                          ; 0x11d7
    mov ax, 4                        ; 0x11d8
    push ax                          ; 0x11db
    call ds_dispatch_baa6            ; 0x11dc
    add sp, byte 0x0e                ; 0x11df
    mov ax, 0                        ; 0x11e2
    push ax                          ; 0x11e5
    push ax                          ; 0x11e6
    push ax                          ; 0x11e7
    push ax                          ; 0x11e8
    push ax                          ; 0x11e9
    mov ax, 0xffff                   ; 0x11ea
    push ax                          ; 0x11ed
    mov ax, 5                        ; 0x11ee
    push ax                          ; 0x11f1
    call ds_dispatch_baa6            ; 0x11f2
    add sp, byte 0x0e                ; 0x11f5
    mov ax, word [bp - 0x0008]       ; 0x11f8
    inc ax                           ; 0x11fb
    push ax                          ; 0x11fc
    mov ax, word [bp - 0x0006]       ; 0x11fd
    inc ax                           ; 0x1200
    push ax                          ; 0x1201
    mov ax, word [bp - 0x0004]       ; 0x1202
    dec ax                           ; 0x1205
    push ax                          ; 0x1206
    mov ax, word [bp - 0x0002]       ; 0x1207
    dec ax                           ; 0x120a
    push ax                          ; 0x120b
    call ds_dispatch_e8da            ; 0x120c
    add sp, byte 8                   ; 0x120f
    mov word [bp - 0x0010], 1        ; 0x1212
@..local.l32:
    mov ax, 0x59fe                   ; 0x1217
    push ax                          ; 0x121a
    call ds_dispatch_b90d            ; 0x121b
    pop cx                           ; 0x121e
    dec ax                           ; 0x121f
    mov word [bp - 0x000e], ax       ; 0x1220
    cmp word [data_59fc], byte 0     ; 0x1223
    je short @..local.l34            ; 0x1228
    inc word [bp - 0x0028]           ; 0x122a
    mov ax, word [bp - 0x0028]       ; 0x122d
    cmp ax, strict word 1            ; 0x1230
    jle short @..local.l33           ; 0x1233
    mov word [bp - 0x0028], 0        ; 0x1235
@..local.l33:
    mov word [data_5b3e], 1          ; 0x123a
    mov ax, word [bp - 0x0028]       ; 0x1240
    mov word [bp - 0x000e], ax       ; 0x1243
@..local.l34:
    cmp word [data_5b3e], byte 1     ; 0x1246
    je short @..local.l35            ; 0x124b
    jmp near @..local.l37            ; 0x124d
@..local.l35:
    mov ax, word [bp - 0x000e]       ; 0x1250
    jmp near @..local.l36            ; 0x1253

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
    cmp ax, strict word 5            ; 0x14e0
    jae short @..local.l37           ; 0x14e3
    xchg bx, ax                      ; 0x14e5
    shl bx, 1                        ; 0x14e6
    jmp [cs:bx + 0x651d]             ; 0x14e8
@..local.l37:
    cmp word [bp - 0x0010], byte 0   ; 0x14ed
    je short @..local.l38            ; 0x14f1
    jmp near @..local.l32            ; 0x14f3
@..local.l38:
    mov ax, 1                        ; 0x14f6
    push ax                          ; 0x14f9
    push word [bp - 0x0026]          ; 0x14fa
    call ds_dispatch_c459            ; 0x14fd
    add sp, byte 4                   ; 0x1500
    mov word [data_904e], 0xffff     ; 0x1503
    mov ax, word [data_9050]         ; 0x1509
    ret                              ; 0x150c
loc_150d:
    mov ax, 0                        ; 0x150d
    call ds_dispatch_f40b            ; 0x1510
    mov ax, 0xc7                     ; 0x1513
    push ax                          ; 0x1516
    mov ax, 0x13f                    ; 0x1517
    push ax                          ; 0x151a
    mov ax, 0                        ; 0x151b
    push ax                          ; 0x151e
    push ax                          ; 0x151f
    call ds_dispatch_e8da            ; 0x1520
    add sp, byte 8                   ; 0x1523
    mov ax, 0x1a                     ; 0x1526
    push ax                          ; 0x1529
    mov ax, 0xd                      ; 0x152a
    push ax                          ; 0x152d
    mov ax, 0x12                     ; 0x152e
    push ax                          ; 0x1531
    mov ax, 0x24                     ; 0x1532
    push ax                          ; 0x1535
    mov ax, 0x61                     ; 0x1536
    push ax                          ; 0x1539
    mov ax, 3                        ; 0x153a
    push ax                          ; 0x153d
    push word [bp + 0x4]             ; 0x153e
    call api_idx_0004                ; 0x1541
    add sp, byte 0x0e                ; 0x1544
    call ds_dispatch_ec17            ; 0x1547
    mov ax, 0                        ; 0x154a
    push ax                          ; 0x154d
    call ds_dispatch_b7e0            ; 0x154e
    pop cx                           ; 0x1551
    mov ax, data_0028                ; 0x1552
    push ax                          ; 0x1555
    call ds_dispatch_b75e            ; 0x1556
    pop cx                           ; 0x1559
    mov ax, 0xc7                     ; 0x155a
    push ax                          ; 0x155d
    mov ax, 0x13f                    ; 0x155e
    push ax                          ; 0x1561
    mov ax, 0                        ; 0x1562
    push ax                          ; 0x1565
    push ax                          ; 0x1566
    call ds_dispatch_e8da            ; 0x1567
    add sp, byte 8                   ; 0x156a
    ret                              ; 0x156d
api_idx_004c:
    mov ax, 0xffb4                   ; 0x156e
    call ds_dispatch_f40b            ; 0x1571
    mov ax, 0                        ; 0x1574
    push ax                          ; 0x1577
    push word [bp + 0x6]             ; 0x1578
    lea ax, word [bp - 0x004c]       ; 0x157b
    push ax                          ; 0x157e
    mov ax, 1                        ; 0x157f
    push ax                          ; 0x1582
    call ds_dispatch_b63c            ; 0x1583
    add sp, byte 8                   ; 0x1586
    cmp word [bp + 0xa], byte 0xfe   ; 0x1589
    jne short @..api_idx_004c.l1     ; 0x158d
    mov al, byte [bp - 0x0030]       ; 0x158f
    sub ah, ah                       ; 0x1592
    push ax                          ; 0x1594
    mov al, byte [bp - 0x002f]       ; 0x1595
    sub ah, ah                       ; 0x1598
    mov cx, ax                       ; 0x159a
    pop ax                           ; 0x159c
    imul cx                          ; 0x159d
    add ax, word [bp - 0x0032]       ; 0x159f
    mov bx, word [bp + 0x8]          ; 0x15a2
    mov byte [bx + 0x6], al          ; 0x15a5
    jmp short @..api_idx_004c.l3     ; 0x15a8
@..api_idx_004c.l1:
    cmp word [bp + 0xa], byte 0xff   ; 0x15aa
    jne short @..api_idx_004c.l2     ; 0x15ae
    push word [bp - 0x0030]          ; 0x15b0
    push word [bp - 0x0032]          ; 0x15b3
    call ds_dispatch_d0be            ; 0x15b6
    add sp, byte 4                   ; 0x15b9
    mov bx, word [bp + 0x8]          ; 0x15bc
    mov byte [bx + 0x6], al          ; 0x15bf
    jmp short @..api_idx_004c.l3     ; 0x15c2
@..api_idx_004c.l2:
    mov al, byte [bp + 0xa]          ; 0x15c4
    mov bx, word [bp + 0x8]          ; 0x15c7
    mov byte [bx + 0x6], al          ; 0x15ca
@..api_idx_004c.l3:
    mov ax, word [bp + 0x6]          ; 0x15cd
    mov bx, word [bp + 0x8]          ; 0x15d0
    mov word [bx], ax                ; 0x15d3
    mov al, byte [bp - 0x0014]       ; 0x15d5
    mov bx, word [bp + 0x8]          ; 0x15d8
    mov byte [bx + 0x4], al          ; 0x15db
    mov al, byte [bp - 0x0013]       ; 0x15de
    mov bx, word [bp + 0x8]          ; 0x15e1
    mov byte [bx + 0x5], al          ; 0x15e4
    mov ax, word [bp - 0x0028]       ; 0x15e7
    mov bx, word [bp + 0x8]          ; 0x15ea
    mov word [bx + 0x2], ax          ; 0x15ed
    mov al, byte [bp - 0x0024]       ; 0x15f0
    mov bx, word [bp + 0x8]          ; 0x15f3
    mov byte [bx + 0x8], al          ; 0x15f6
    mov al, byte [bp - 0x0023]       ; 0x15f9
    mov bx, word [bp + 0x8]          ; 0x15fc
    mov byte [bx + 0x9], al          ; 0x15ff
    mov al, byte [bp - 0x0010]       ; 0x1602
    mov bx, word [bp + 0x8]          ; 0x1605
    mov byte [bx + 0xa], al          ; 0x1608
    mov al, byte [bp - 0x000c]       ; 0x160b
    mov bx, word [bp + 0x8]          ; 0x160e
    mov byte [bx + 0xb], al          ; 0x1611
    mov ax, 0                        ; 0x1614
    cmp word [bp + 0xc], byte 0      ; 0x1617
    je short @..api_idx_004c.l4      ; 0x161b
    mov ax, 0x80                     ; 0x161d
@..api_idx_004c.l4:
    mov bx, word [bp + 0x8]          ; 0x1620
    mov byte [bx + 0x7], al          ; 0x1623
    mov al, byte [bp - 0x0015]       ; 0x1626
    sub ah, ah                       ; 0x1629
    test ax, 8                       ; 0x162b
    je short @..api_idx_004c.l5      ; 0x162e
    mov bx, word [bp + 0x8]          ; 0x1630
    or byte [bx + 0x7], 4            ; 0x1633
@..api_idx_004c.l5:
    mov al, byte [bp - 0x0015]       ; 0x1637
    sub ah, ah                       ; 0x163a
    test ax, 4                       ; 0x163c
    je short @..api_idx_004c.l6      ; 0x163f
    mov bx, word [bp + 0x8]          ; 0x1641
    or byte [bx + 0x7], 8            ; 0x1644
@..api_idx_004c.l6:
    mov al, byte [bp - 0x0015]       ; 0x1648
    sub ah, ah                       ; 0x164b
    test ax, 0x10                    ; 0x164d
    je short @..api_idx_004c.l7      ; 0x1650
    mov bx, word [bp + 0x8]          ; 0x1652
    or byte [bx + 0x7], 0x10         ; 0x1655
@..api_idx_004c.l7:
    mov al, byte [bp - 0x0015]       ; 0x1659
    sub ah, ah                       ; 0x165c
    test ax, 0x20                    ; 0x165e
    je short @..api_idx_004c.l8      ; 0x1661
    mov bx, word [bp + 0x8]          ; 0x1663
    or byte [bx + 0x7], 0x20         ; 0x1666
@..api_idx_004c.l8:
    mov al, byte [bp - 0x0015]       ; 0x166a
    sub ah, ah                       ; 0x166d
    test ax, data_0002               ; 0x166f
    je short @..api_idx_004c.l9      ; 0x1672
    mov bx, word [bp + 0x8]          ; 0x1674
    or byte [bx + 0x7], 0x40         ; 0x1677
@..api_idx_004c.l9:
    push word [bp + 0x4]             ; 0x167b
    call ds_dispatch_c58f            ; 0x167e
    pop cx                           ; 0x1681
    ret                              ; 0x1682
loc_1683:
    mov ax, 0                        ; 0x1683
    call ds_dispatch_f40b            ; 0x1686
    mov ax, word [bp + 0x4]          ; 0x1689
    jmp short @..local.l39           ; 0x168c
    mov ax, 0                        ; 0x168e
    ret                              ; 0x1691
@..local.l39:
    mov cx, 0x26                     ; 0x1692
    call string_loc_936e             ; 0x1695
    sbb al, 0                        ; 0x1698
    add byte [es:data_3800], dh      ; 0x169a
    add byte [bx + di], bh           ; 0x169f
    add byte [di], bh                ; 0x16a1
    db 0x00, 0x42, 0x00 ; add byte [bp + si], al
    inc bx                           ; 0x16a6
    add byte [bp], al                ; 0x16a7
    inc di                           ; 0x16aa
    db 0x00, 0x48, 0x00 ; add byte [bx + si], cl
    dec cx                           ; 0x16ae
    db 0x00, 0x4a, 0x00 ; add byte [bp + si], cl
    dec si                           ; 0x16b2
    db 0x00, 0x4f, 0x00 ; add byte [bx], cl
    push dx                          ; 0x16b6
    db 0x00, 0x54, 0x00 ; add byte [si], dl
    pop dx                           ; 0x16ba
    db 0x00, 0x5c, 0x00 ; add byte [si], bl
    bound ax, dword [bx + si]        ; 0x16be
    db 0x64, 0x00, 0x65, 0x00 ; add byte [fs:di], ah
    jne short @..local.l40           ; 0x16c4
@..local.l40:
    jbe short @..local.l41           ; 0x16c6
@..local.l41:
    ja short @..local.l42            ; 0x16c8
@..local.l42:
    xchg di, ax                      ; 0x16ca
    add byte [bp - 0x4e00], ch       ; 0x16cb
    add byte [di - 0x4300], dh       ; 0x16cf
    add dl, al                       ; 0x16d3
    add ch, al                       ; 0x16d5
    add dl, cl                       ; 0x16d7
    add bl, cl                       ; 0x16d9
    add dl, dl                       ; 0x16db
    add bl, dl                       ; 0x16dd
    add byte [bp + di + 0x1], cl     ; 0x16df
    aad 0x66                         ; 0x16e2
    aad 0x66                         ; 0x16e4
    aad 0x66                         ; 0x16e6
    aad 0x66                         ; 0x16e8
    aad 0x66                         ; 0x16ea
    aad 0x66                         ; 0x16ec
    aad 0x66                         ; 0x16ee
    aad 0x66                         ; 0x16f0
    aad 0x66                         ; 0x16f2
    aad 0x66                         ; 0x16f4
    aad 0x66                         ; 0x16f6
    aad 0x66                         ; 0x16f8
    aad 0x66                         ; 0x16fa
    aad 0x66                         ; 0x16fc
    aad 0x66                         ; 0x16fe
    aad 0x66                         ; 0x1700
    aad 0x66                         ; 0x1702
    aad 0x66                         ; 0x1704
    aad 0x66                         ; 0x1706
    aad 0x66                         ; 0x1708
    aad 0x66                         ; 0x170a
    aad 0x66                         ; 0x170c
    aad 0x66                         ; 0x170e
    aad 0x66                         ; 0x1710
    aad 0x66                         ; 0x1712
    aad 0x66                         ; 0x1714
    aad 0x66                         ; 0x1716
    aad 0x66                         ; 0x1718
    aad 0x66                         ; 0x171a
    aad 0x66                         ; 0x171c
    aad 0x66                         ; 0x171e
    aad 0x66                         ; 0x1720
    aad 0x66                         ; 0x1722
    aad 0x66                         ; 0x1724
    aad 0x66                         ; 0x1726
    aad 0x66                         ; 0x1728
    aad 0x66                         ; 0x172a
    jne short @..local.l50           ; 0x172c
    cmp word [bp + 0x4], byte 0x3c   ; 0x172e
    jl short @..local.l43            ; 0x1732
    cmp word [bp + 0x4], byte 0x78   ; 0x1734
    jge short @..local.l43           ; 0x1738
    mov ax, 0                        ; 0x173a
    sub ax, word [bp + 0x4]          ; 0x173d
    ret                              ; 0x1740
@..local.l43:
    cmp word [bp + 0x4], strict word 0xb8 ; 0x1741
    jl short @..local.l44            ; 0x1746
    cmp word [bp + 0x4], strict word 0xe3 ; 0x1748
    jge short @..local.l44           ; 0x174d
    mov ax, 0                        ; 0x174f
    sub ax, word [bp + 0x4]          ; 0x1752
    ret                              ; 0x1755
@..local.l44:
    cmp word [bp + 0x4], strict word 0xe3 ; 0x1756
    jge short @..local.l45           ; 0x175b
    mov ax, word [bp + 0x4]          ; 0x175d
    ret                              ; 0x1760
@..local.l45:
    cmp word [bp + 0x4], strict word 0x145 ; 0x1761
    jne short @..local.l46           ; 0x1766
    mov ax, 0x13a                    ; 0x1768
    ret                              ; 0x176b
@..local.l46:
    cmp word [bp + 0x4], strict word 0x146 ; 0x176c
    jne short @..local.l47           ; 0x1771
    mov ax, 0x14b                    ; 0x1773
    ret                              ; 0x1776
@..local.l47:
    cmp word [bp + 0x4], strict word 0x13c ; 0x1777
    jl short @..local.l48            ; 0x177c
    cmp word [bp + 0x4], strict word 0x14c ; 0x177e
    jg short @..local.l48            ; 0x1783
    mov ax, word [bp + 0x4]          ; 0x1785
    ret                              ; 0x1788
@..local.l48:
    cmp word [bp + 0x4], strict word 0x1ab ; 0x1789
    jne short @..local.l49           ; 0x178e
    mov ax, 0xffae                   ; 0x1790
    ret                              ; 0x1793
@..local.l49:
    db 0x81
@..local.l50:
    db 0x7e, 0x04, 0xd8, 0x01
    jne short @..local.l51           ; 0x1799
    mov ax, 0xf5                     ; 0x179b
    ret                              ; 0x179e
@..local.l51:
    cmp word [bp + 0x4], strict word 0x1d9 ; 0x179f
    jne short @..local.l52           ; 0x17a4
    mov ax, 0xf4                     ; 0x17a6
    ret                              ; 0x17a9
@..local.l52:
    mov ax, word [bp + 0x4]          ; 0x17aa
    jmp short @..local.l53           ; 0x17ad
    cmp word [bp + 0x4], strict word 0xe3 ; 0x17af
    jl short loc_17c4                ; 0x17b4
    cmp word [bp + 0x4], strict word 0xfe ; 0x17b6
    jge short loc_17c4               ; 0x17bb
    mov ax, 0                        ; 0x17bd
    sub ax, word [bp + 0x4]          ; 0x17c0
    ret                              ; 0x17c3
    mov ax, word [bp + 0x4]          ; 0x17c4
    ret                              ; 0x17c7
@..local.l53:
    mov cx, 0x14                     ; 0x17c8
    call string_loc_936e             ; 0x17cb
    jmp far 0xf100:0xec00            ; 0x17ce

    db 0x00, 0xf5, 0x00, 0xfc, 0x00, 0xfd, 0x00, 0x04, 0x01, 0x05, 0x01, 0x06, 0x01, 0x07, 0x01, 0x16
    db 0x01, 0x1c, 0x01, 0x2d, 0x01, 0x31, 0x01, 0x32, 0x01, 0x33, 0x01, 0x34, 0x01, 0x35, 0x01, 0x39
    db 0x01, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6
    db 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6
    db 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0x63, 0x68, 0xb8, 0x00, 0x00, 0xc3

loc_1820:
    mov ax, 0                        ; 0x1820
    call ds_dispatch_f40b            ; 0x1823
    mov ax, word [bp + 0x4]          ; 0x1826
    jmp short @..local.l54           ; 0x1829

    db 0xb8, 0x0c, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x0d, 0x00, 0xc3, 0xb8, 0x1a, 0x00
    db 0xc3, 0xb8, 0x18, 0x00, 0xc3, 0xb8, 0x08, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x03
    db 0x00, 0xc3, 0xb8, 0x07, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x05, 0x00, 0xc3, 0xb8
    db 0x16, 0x00, 0xc3, 0x72, 0x68, 0x7f, 0x68, 0x83, 0x68, 0x87, 0x68, 0x94, 0x68, 0xa1, 0x68

@..local.l54:
    sub ax, strict word 5            ; 0x186a
    cmp ax, strict word 6            ; 0x186d
    jae short @..local.l55           ; 0x1870
    xchg bx, ax                      ; 0x1872
    shl bx, 1                        ; 0x1873
    jmp [cs:bx + 0x68a5]             ; 0x1875
@..local.l55:
    cmp word [bp + 0x8], byte 0x0d   ; 0x187a
    jne short @..local.l56           ; 0x187e
    mov ax, 0x12                     ; 0x1880
    ret                              ; 0x1883
@..local.l56:
    cmp word [bp + 0x4], byte 1      ; 0x1884
    jne short @..local.l58           ; 0x1888
    mov ax, word [bp + 0x8]          ; 0x188a
    jmp short @..local.l57           ; 0x188d

    db 0xb8, 0x0a, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x20, 0x00, 0xc3, 0xb8, 0x1f, 0x00
    db 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x1c, 0x00, 0xc3, 0xb8, 0x01, 0x00, 0xc3, 0xb8, 0x1b
    db 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x06, 0x00, 0xc3, 0xb8, 0x0f, 0x00, 0x83, 0x7e
    db 0x06, 0x00, 0x75, 0x03, 0xb8, 0x1c, 0x00, 0xc3, 0xd6, 0x68, 0xe3, 0x68, 0xe3, 0x68, 0xf0, 0x68
    db 0xf0, 0x68, 0xe3, 0x68, 0xf0, 0x68, 0xe3, 0x68, 0xd6, 0x68, 0x01, 0x69, 0xd6, 0x68, 0xf4, 0x68
    db 0x01, 0x69

@..local.l57:
    cmp ax, strict word 0xd          ; 0x18e1
    jae short @..local.l58           ; 0x18e4
    xchg bx, ax                      ; 0x18e6
    shl bx, 1                        ; 0x18e7
    jmp [cs:bx + 0x690e]             ; 0x18e9
@..local.l58:
    mov ax, word [bp + 0x4]          ; 0x18ee
    cmp ax, strict word 2            ; 0x18f1
    je short @..local.l59            ; 0x18f4
    cmp ax, strict word 4            ; 0x18f6
    je short @..local.l59            ; 0x18f9
    cmp ax, strict word 3            ; 0x18fb
    je short @..local.l59            ; 0x18fe
    jmp near @..local.l61            ; 0x1900
@..local.l59:
    mov ax, word [bp + 0x8]          ; 0x1903
    jmp short @..local.l60           ; 0x1906

    db 0xb8, 0x1d, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x04, 0x00, 0xc3, 0xb8, 0x11, 0x00
    db 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x0b, 0x00, 0xc3, 0xb8, 0x0e, 0x00, 0x83, 0x7e, 0x06
    db 0x00, 0x75, 0x03, 0xb8, 0x10, 0x00, 0xc3, 0xb8, 0x1d, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03
    db 0xb8, 0x10, 0x00, 0xc3, 0xb8, 0x1b, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x06, 0x00
    db 0xc3
    db 'Oi\i\ivivi\iii\iOi\iOi'
    db 0x83, 0x69, 0x76, 0x69

@..local.l60:
    cmp ax, strict word 0xd          ; 0x1963
    jae short @..local.l61           ; 0x1966
    xchg bx, ax                      ; 0x1968
    shl bx, 1                        ; 0x1969
    jmp [cs:bx + 0x6990]             ; 0x196b
@..local.l61:
    mov ax, word [bp + 0x8]          ; 0x1970
    jmp near @..local.l62            ; 0x1973

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
    cmp ax, strict word 0xd          ; 0x19f8
    jae short @..local.l63           ; 0x19fb
    xchg bx, ax                      ; 0x19fd
    shl bx, 1                        ; 0x19fe
    jmp [cs:bx + 0x6a25]             ; 0x1a00
@..local.l63:
    mov ax, 0x13                     ; 0x1a05
    cmp word [bp + 0x6], byte 0      ; 0x1a08
    jne short @..local.l64           ; 0x1a0c
    mov ax, 0x17                     ; 0x1a0e
@..local.l64:
    ret                              ; 0x1a11
loc_1a12:
    mov ax, 0                        ; 0x1a12
    call ds_dispatch_f40b            ; 0x1a15
    mov ax, word [bp + 0x4]          ; 0x1a18
    jmp near @..local.l65            ; 0x1a1b

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
    cmp ax, strict word 0x4f         ; 0x1bf8
    jae short @..local.l66           ; 0x1bfb
    xchg bx, ax                      ; 0x1bfd
    shl bx, 1                        ; 0x1bfe
    jmp [cs:bx + 0x6ba1]             ; 0x1c00
@..local.l66:
    mov ax, 0xffff                   ; 0x1c05
    ret                              ; 0x1c08
math_loc_1c09:
    mov ax, 0                        ; 0x1c09
    call ds_dispatch_f40b            ; 0x1c0c
    mov ax, word [bp + 0x6]          ; 0x1c0f
    push ax                          ; 0x1c12
    cmp ax, strict word 1            ; 0x1c13
    pop ax                           ; 0x1c16
    jge short @..math_loc_1c09.l1    ; 0x1c17
    mov ax, 1                        ; 0x1c19
@..math_loc_1c09.l1:
    push ax                          ; 0x1c1c
    mov ax, 0x248                    ; 0x1c1d
    imul word [bp + 0x4]             ; 0x1c20
    mov bx, ax                       ; 0x1c23
    pop ax                           ; 0x1c25
    mov byte [bx + 0x5d54], al       ; 0x1c26
    mov ax, word [bp + 0x8]          ; 0x1c2a
    push ax                          ; 0x1c2d
    cmp ax, strict word 1            ; 0x1c2e
    pop ax                           ; 0x1c31
    jge short @..math_loc_1c09.l2    ; 0x1c32
    mov ax, 1                        ; 0x1c34
@..math_loc_1c09.l2:
    mov byte [bx + 0x5d55], al       ; 0x1c37
    mov ax, word [bp + 0xa]          ; 0x1c3b
    push ax                          ; 0x1c3e
    cmp ax, strict word 1            ; 0x1c3f
    pop ax                           ; 0x1c42
    jge short @..math_loc_1c09.l3    ; 0x1c43
    mov ax, 1                        ; 0x1c45
@..math_loc_1c09.l3:
    mov byte [bx + 0x5d56], al       ; 0x1c48
    mov ax, word [bp + 0xc]          ; 0x1c4c
    push ax                          ; 0x1c4f
    cmp ax, strict word 1            ; 0x1c50
    pop ax                           ; 0x1c53
    jge short @..math_loc_1c09.l4    ; 0x1c54
    mov ax, 1                        ; 0x1c56
@..math_loc_1c09.l4:
    mov byte [bx + 0x5d57], al       ; 0x1c59
    mov ax, word [bp + 0xe]          ; 0x1c5d
    push ax                          ; 0x1c60
    cmp ax, strict word 1            ; 0x1c61
    pop ax                           ; 0x1c64
    jge short @..math_loc_1c09.l5    ; 0x1c65
    mov ax, 1                        ; 0x1c67
@..math_loc_1c09.l5:
    mov byte [bx + 0x5d58], al       ; 0x1c6a
    mov ax, word [bp + 0x10]         ; 0x1c6e
    push ax                          ; 0x1c71
    cmp ax, strict word 1            ; 0x1c72
    pop ax                           ; 0x1c75
    jge short @..math_loc_1c09.l6    ; 0x1c76
    mov ax, 1                        ; 0x1c78
@..math_loc_1c09.l6:
    mov byte [bx + 0x5d59], al       ; 0x1c7b
    ret                              ; 0x1c7f
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x1c80
    call ds_dispatch_f40b            ; 0x1c83
    mov ax, 0x248                    ; 0x1c86
    imul word [bp + 0x4]             ; 0x1c89
    mov bx, ax                       ; 0x1c8c
    mov al, byte [bx + 0x5d67]       ; 0x1c8e
    sub ah, ah                       ; 0x1c92
    push ax                          ; 0x1c94
    mov al, byte [bx + 0x5d66]       ; 0x1c95
    sub ah, ah                       ; 0x1c99
    mov cx, ax                       ; 0x1c9b
    shl ax, 1                        ; 0x1c9d
    mov cx, ax                       ; 0x1c9f
    pop ax                           ; 0x1ca1
    add ax, cx                       ; 0x1ca2
    mov cx, 3                        ; 0x1ca4
    cwd                              ; 0x1ca7
    idiv cx                          ; 0x1ca8
    mov word [bp - 0x0002], ax       ; 0x1caa
    mov word [bp - 0x0004], 0        ; 0x1cad
    cmp ax, strict word 0xd          ; 0x1cb2
    jle short @..api_idx_0004_2.l1   ; 0x1cb5
    inc word [bp - 0x0004]           ; 0x1cb7
@..api_idx_0004_2.l1:
    cmp ax, strict word 0x10         ; 0x1cba
    jle short @..api_idx_0004_2.l2   ; 0x1cbd
    inc word [bp - 0x0004]           ; 0x1cbf
@..api_idx_0004_2.l2:
    cmp byte [bx + 0x5e2b], 5        ; 0x1cc2
    jne short @..api_idx_0004_2.l3   ; 0x1cc7
    inc word [bp - 0x0004]           ; 0x1cc9
@..api_idx_0004_2.l3:
    cmp byte [bx + 0x5e2b], 6        ; 0x1ccc
    jne short @..api_idx_0004_2.l4   ; 0x1cd1
    dec word [bp - 0x0004]           ; 0x1cd3
@..api_idx_0004_2.l4:
    mov al, byte [bx + 0x5e2d]       ; 0x1cd6
    sub ah, ah                       ; 0x1cda
    jmp near @..local.l67            ; 0x1cdc
    mov ax, word [bp - 0x0004]       ; 0x1cdf
    inc ax                           ; 0x1ce2
    push ax                          ; 0x1ce3
    push ax                          ; 0x1ce4
    push ax                          ; 0x1ce5
    push ax                          ; 0x1ce6
    push ax                          ; 0x1ce7
    push ax                          ; 0x1ce8
    push word [bp + 0x4]             ; 0x1ce9
    call math_loc_1c09               ; 0x1cec
    add sp, byte 0x0e                ; 0x1cef
    jmp near @..local.l68            ; 0x1cf2
    mov ax, 0x248                    ; 0x1cf5
    imul word [bp + 0x4]             ; 0x1cf8
    mov bx, ax                       ; 0x1cfb
    mov byte [bx + 0x5d50], data_0002 ; 0x1cfd
    mov ax, word [bp - 0x0004]       ; 0x1d02
    inc ax                           ; 0x1d05
    inc ax                           ; 0x1d06
    inc ax                           ; 0x1d07
    push ax                          ; 0x1d08
    mov ax, word [bp - 0x0004]       ; 0x1d09
    inc ax                           ; 0x1d0c
    inc ax                           ; 0x1d0d
    push ax                          ; 0x1d0e
    push ax                          ; 0x1d0f
    push ax                          ; 0x1d10
    mov ax, word [bp - 0x0004]       ; 0x1d11
    inc ax                           ; 0x1d14
    inc ax                           ; 0x1d15
    inc ax                           ; 0x1d16
    push ax                          ; 0x1d17
    push ax                          ; 0x1d18
    push word [bp + 0x4]             ; 0x1d19
    call math_loc_1c09               ; 0x1d1c
    add sp, byte 0x0e                ; 0x1d1f
    jmp near @..local.l68            ; 0x1d22
    mov ax, 0x248                    ; 0x1d25
    imul word [bp + 0x4]             ; 0x1d28
    mov bx, ax                       ; 0x1d2b
    mov byte [bx + 0x5d51], data_0002 ; 0x1d2d
    mov ax, word [bp - 0x0004]       ; 0x1d32
    inc ax                           ; 0x1d35
    inc ax                           ; 0x1d36
    inc ax                           ; 0x1d37
    push ax                          ; 0x1d38
    push ax                          ; 0x1d39
    mov ax, word [bp - 0x0004]       ; 0x1d3a
    inc ax                           ; 0x1d3d
    inc ax                           ; 0x1d3e
    push ax                          ; 0x1d3f
    push ax                          ; 0x1d40
    mov ax, word [bp - 0x0004]       ; 0x1d41
    inc ax                           ; 0x1d44
    inc ax                           ; 0x1d45
    inc ax                           ; 0x1d46
    push ax                          ; 0x1d47
    mov ax, word [bp - 0x0004]       ; 0x1d48
    inc ax                           ; 0x1d4b
    inc ax                           ; 0x1d4c
    push ax                          ; 0x1d4d
    push word [bp + 0x4]             ; 0x1d4e
    call math_loc_1c09               ; 0x1d51
    add sp, byte 0x0e                ; 0x1d54
    jmp near @..local.l68            ; 0x1d57
    mov ax, word [bp - 0x0004]       ; 0x1d5a
    inc ax                           ; 0x1d5d
    push ax                          ; 0x1d5e
    mov ax, word [bp - 0x0004]       ; 0x1d5f
    inc ax                           ; 0x1d62
    inc ax                           ; 0x1d63
    push ax                          ; 0x1d64
    push ax                          ; 0x1d65
    push ax                          ; 0x1d66
    mov ax, word [bp - 0x0004]       ; 0x1d67
    inc ax                           ; 0x1d6a
    push ax                          ; 0x1d6b
    push ax                          ; 0x1d6c
    push word [bp + 0x4]             ; 0x1d6d
    call math_loc_1c09               ; 0x1d70
    add sp, byte 0x0e                ; 0x1d73
    jmp near @..local.l68            ; 0x1d76
    mov ax, 0x248                    ; 0x1d79
    imul word [bp + 0x4]             ; 0x1d7c
    mov bx, ax                       ; 0x1d7f
    mov byte [bx + 0x5d52], data_0002 ; 0x1d81
    mov ax, word [bp - 0x0004]       ; 0x1d86
    inc ax                           ; 0x1d89
    inc ax                           ; 0x1d8a
    push ax                          ; 0x1d8b
    push ax                          ; 0x1d8c
    mov ax, word [bp - 0x0004]       ; 0x1d8d
    inc ax                           ; 0x1d90
    inc ax                           ; 0x1d91
    inc ax                           ; 0x1d92
    push ax                          ; 0x1d93
    push ax                          ; 0x1d94
    mov ax, word [bp - 0x0004]       ; 0x1d95
    inc ax                           ; 0x1d98
    inc ax                           ; 0x1d99
    push ax                          ; 0x1d9a
    mov ax, word [bp - 0x0004]       ; 0x1d9b
    inc ax                           ; 0x1d9e
    inc ax                           ; 0x1d9f
    inc ax                           ; 0x1da0
    push ax                          ; 0x1da1
    push word [bp + 0x4]             ; 0x1da2
    call math_loc_1c09               ; 0x1da5
    add sp, byte 0x0e                ; 0x1da8
    jmp near @..local.l68            ; 0x1dab
    mov ax, word [bp - 0x0004]       ; 0x1dae
    inc ax                           ; 0x1db1
    push ax                          ; 0x1db2
    mov ax, word [bp - 0x0004]       ; 0x1db3
    inc ax                           ; 0x1db6
    inc ax                           ; 0x1db7
    push ax                          ; 0x1db8
    mov ax, word [bp - 0x0004]       ; 0x1db9
    inc ax                           ; 0x1dbc
    push ax                          ; 0x1dbd
    push ax                          ; 0x1dbe
    mov ax, word [bp - 0x0004]       ; 0x1dbf
    inc ax                           ; 0x1dc2
    inc ax                           ; 0x1dc3
    push ax                          ; 0x1dc4
    push ax                          ; 0x1dc5
    push word [bp + 0x4]             ; 0x1dc6
    call math_loc_1c09               ; 0x1dc9
    add sp, byte 0x0e                ; 0x1dcc
    jmp near @..local.l68            ; 0x1dcf
    mov ax, 0x248                    ; 0x1dd2
    imul word [bp + 0x4]             ; 0x1dd5
    mov bx, ax                       ; 0x1dd8
    mov byte [bx + 0x5d53], data_0002 ; 0x1dda
    mov ax, word [bp - 0x0004]       ; 0x1ddf
    inc ax                           ; 0x1de2
    inc ax                           ; 0x1de3
    push ax                          ; 0x1de4
    mov ax, word [bp - 0x0004]       ; 0x1de5
    add ax, strict word 4            ; 0x1de8
    push ax                          ; 0x1deb
    mov ax, word [bp - 0x0004]       ; 0x1dec
    inc ax                           ; 0x1def
    inc ax                           ; 0x1df0
    push ax                          ; 0x1df1
    push ax                          ; 0x1df2
    push ax                          ; 0x1df3
    mov ax, word [bp - 0x0004]       ; 0x1df4
    inc ax                           ; 0x1df7
    inc ax                           ; 0x1df8
    inc ax                           ; 0x1df9
    push ax                          ; 0x1dfa
    push word [bp + 0x4]             ; 0x1dfb
    call math_loc_1c09               ; 0x1dfe
    add sp, byte 0x0e                ; 0x1e01
    jmp near @..local.l68            ; 0x1e04
    mov ax, word [bp - 0x0004]       ; 0x1e07
    inc ax                           ; 0x1e0a
    inc ax                           ; 0x1e0b
    push ax                          ; 0x1e0c
    mov ax, word [bp - 0x0004]       ; 0x1e0d
    inc ax                           ; 0x1e10
    push ax                          ; 0x1e11
    push ax                          ; 0x1e12
    mov ax, word [bp - 0x0004]       ; 0x1e13
    inc ax                           ; 0x1e16
    inc ax                           ; 0x1e17
    push ax                          ; 0x1e18
    push ax                          ; 0x1e19
    mov ax, word [bp - 0x0004]       ; 0x1e1a
    inc ax                           ; 0x1e1d
    push ax                          ; 0x1e1e
    push word [bp + 0x4]             ; 0x1e1f
    call math_loc_1c09               ; 0x1e22
    add sp, byte 0x0e                ; 0x1e25
    jmp near @..local.l68            ; 0x1e28
    mov ax, 0x248                    ; 0x1e2b
    imul word [bp + 0x4]             ; 0x1e2e
    mov bx, ax                       ; 0x1e31
    mov byte [bx + 0x5d50], 1        ; 0x1e33
    mov byte [bx + 0x5d51], 1        ; 0x1e38
    mov ax, word [bp - 0x0004]       ; 0x1e3d
    inc ax                           ; 0x1e40
    inc ax                           ; 0x1e41
    inc ax                           ; 0x1e42
    push ax                          ; 0x1e43
    mov ax, word [bp - 0x0004]       ; 0x1e44
    inc ax                           ; 0x1e47
    inc ax                           ; 0x1e48
    push ax                          ; 0x1e49
    push ax                          ; 0x1e4a
    push ax                          ; 0x1e4b
    push ax                          ; 0x1e4c
    push ax                          ; 0x1e4d
    push word [bp + 0x4]             ; 0x1e4e
    call math_loc_1c09               ; 0x1e51
    add sp, byte 0x0e                ; 0x1e54
    jmp near @..local.l68            ; 0x1e57
    mov ax, word [bp - 0x0004]       ; 0x1e5a
    inc ax                           ; 0x1e5d
    inc ax                           ; 0x1e5e
    push ax                          ; 0x1e5f
    mov ax, word [bp - 0x0004]       ; 0x1e60
    inc ax                           ; 0x1e63
    push ax                          ; 0x1e64
    push ax                          ; 0x1e65
    mov ax, word [bp - 0x0004]       ; 0x1e66
    inc ax                           ; 0x1e69
    inc ax                           ; 0x1e6a
    push ax                          ; 0x1e6b
    push ax                          ; 0x1e6c
    mov ax, word [bp - 0x0004]       ; 0x1e6d
    inc ax                           ; 0x1e70
    push ax                          ; 0x1e71
    push word [bp + 0x4]             ; 0x1e72
    call math_loc_1c09               ; 0x1e75
    add sp, byte 0x0e                ; 0x1e78
    jmp near @..local.l68            ; 0x1e7b

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
    cmp ax, strict word 0xe          ; 0x1f00
    jae short @..local.l68           ; 0x1f03
    xchg bx, ax                      ; 0x1f05
    shl bx, 1                        ; 0x1f06
    jmp [cs:bx + 0x6f2b]             ; 0x1f08
@..local.l68:
    ret                              ; 0x1f0d
loc_1f0e:
    mov ax, 0                        ; 0x1f0e
    call ds_dispatch_f40b            ; 0x1f11
    mov al, byte [bp + 0x4]          ; 0x1f14
    mov byte [data_89df], al         ; 0x1f17
    mov byte [data_89ea], al         ; 0x1f1a
    mov al, byte [bp + 0x6]          ; 0x1f1d
    mov byte [data_89e0], al         ; 0x1f20
    mov byte [data_89f6], al         ; 0x1f23
    mov al, byte [bp + 0x8]          ; 0x1f26
    mov byte [data_89e1], al         ; 0x1f29
    mov byte [data_8a02], al         ; 0x1f2c
    mov al, byte [bp + 0xa]          ; 0x1f2f
    mov byte [data_89e2], al         ; 0x1f32
    mov byte [data_8a0e], al         ; 0x1f35
    mov al, byte [bp + 0xc]          ; 0x1f38
    mov byte [data_89e3], al         ; 0x1f3b
    mov byte [data_8a1a], al         ; 0x1f3e
    mov al, byte [bp + 0xe]          ; 0x1f41
    mov byte [data_89e4], al         ; 0x1f44
    mov byte [data_8a26], al         ; 0x1f47
    mov al, byte [bp + 0x10]         ; 0x1f4a
    mov byte [data_89e5], al         ; 0x1f4d
    mov byte [data_8a32], al         ; 0x1f50
    mov al, byte [bp + 0x12]         ; 0x1f53
    mov byte [data_89e6], al         ; 0x1f56
    mov byte [data_8a3e], al         ; 0x1f59
    mov al, byte [bp + 0x14]         ; 0x1f5c
    mov byte [data_89e7], al         ; 0x1f5f
    mov byte [data_8a4a], al         ; 0x1f62
    mov al, byte [bp + 0x16]         ; 0x1f65
    mov byte [data_89e8], al         ; 0x1f68
    mov byte [data_8a56], al         ; 0x1f6b
    ret                              ; 0x1f6e
api_idx_0040:
    mov ax, 0xffc0                   ; 0x1f6f
    call ds_dispatch_f40b            ; 0x1f72
    mov ax, 0                        ; 0x1f75
    push ax                          ; 0x1f78
    push word [bp + 0x4]             ; 0x1f79
    lea ax, word [bp - 0x0040]       ; 0x1f7c
    push ax                          ; 0x1f7f
    mov ax, 0                        ; 0x1f80
    push ax                          ; 0x1f83
    call ds_dispatch_b63c            ; 0x1f84
    add sp, byte 8                   ; 0x1f87
    cmp word [bp + 0x6], byte 1      ; 0x1f8a
    jle short @..local.l69           ; 0x1f8e
    cmp word [bp + 0x6], byte 0x10   ; 0x1f90
    jge short @..local.l69           ; 0x1f94
    mov ax, word [bp + 0x6]          ; 0x1f96
    shl ax, 1                        ; 0x1f99
    shl ax, 1                        ; 0x1f9b
    mov bx, ax                       ; 0x1f9d
    add bx, bp                       ; 0x1f9f
    mov ax, word [bx - 0x0048]       ; 0x1fa1
    mov dx, word [bx - 0x0046]       ; 0x1fa4
    ret                              ; 0x1fa7
@..local.l69:
    mov ax, 0                        ; 0x1fa8
    mov dx, 0                        ; 0x1fab
    ret                              ; 0x1fae
api_idx_0072:
    mov ax, 0xff8e                   ; 0x1faf
    call ds_dispatch_f40b            ; 0x1fb2
    mov word [bp - 0x000e], 0        ; 0x1fb5
    mov ax, word [data_5218]         ; 0x1fba
    mov word [bp - 0x0010], ax       ; 0x1fbd
    cmp byte [data_5987], 5          ; 0x1fc0
    jne short @..api_idx_0072.l1     ; 0x1fc5
    cmp ax, strict word 0            ; 0x1fc7
    jle short @..api_idx_0072.l1     ; 0x1fca
    inc ax                           ; 0x1fcc
    inc ax                           ; 0x1fcd
    jmp short @..api_idx_0072.l2     ; 0x1fce
@..api_idx_0072.l1:
    mov ax, word [bp - 0x0010]       ; 0x1fd0
@..api_idx_0072.l2:
    mov word [bp - 0x0010], ax       ; 0x1fd3
    mov ax, 0                        ; 0x1fd6
    push ax                          ; 0x1fd9
    call ds_dispatch_ef14            ; 0x1fda
    pop cx                           ; 0x1fdd
    lea ax, word [bp - 0x005e]       ; 0x1fde
    push ax                          ; 0x1fe1
    mov ax, 0x58c                    ; 0x1fe2
    push ax                          ; 0x1fe5
    call ds_dispatch_b53b            ; 0x1fe6
    add sp, byte 4                   ; 0x1fe9
    lea ax, word [bp - 0x0072]       ; 0x1fec
    push ax                          ; 0x1fef
    mov ax, 0x58d                    ; 0x1ff0
    push ax                          ; 0x1ff3
    call ds_dispatch_b53b            ; 0x1ff4
    add sp, byte 4                   ; 0x1ff7
    mov ax, 0x90c2                   ; 0x1ffa
    push ax                          ; 0x1ffd
    lea ax, word [bp - 0x0036]       ; 0x1ffe
    push ax                          ; 0x2001
    call ds_dispatch_f364            ; 0x2002
    add sp, byte 4                   ; 0x2005
    mov ax, 0x593a                   ; 0x2008
    push ax                          ; 0x200b
    lea ax, word [bp - 0x004a]       ; 0x200c
    push ax                          ; 0x200f
    call ds_dispatch_f364            ; 0x2010
    add sp, byte 4                   ; 0x2013
    mov word [bp - 0x0012], 1        ; 0x2016
    lea ax, word [bp - 0x0036]       ; 0x201b
    push ax                          ; 0x201e
    lea ax, word [bp - 0x004a]       ; 0x201f
    push ax                          ; 0x2022
    mov ax, 1                        ; 0x2023
    push ax                          ; 0x2026
    push ax                          ; 0x2027
    mov ax, 0                        ; 0x2028
    push ax                          ; 0x202b
    mov ax, 0x587                    ; 0x202c
    push ax                          ; 0x202f
    call api_idx_0028                ; 0x2030
    add sp, byte 0x0c                ; 0x2033
    cmp ax, strict word 2            ; 0x2036
    jne short @..local.l70           ; 0x2039
    mov ax, 0xffff                   ; 0x203b
    ret                              ; 0x203e
@..local.l70:
    mov ax, 0x3a                     ; 0x203f
    push ax                          ; 0x2042
    mov ax, 0x5912                   ; 0x2043
    push ax                          ; 0x2046
    mov ax, 0x91c6                   ; 0x2047
    push ax                          ; 0x204a
    call 0xd112                      ; 0x204b
    add sp, byte 6                   ; 0x204e
    mov ax, 0x3a                     ; 0x2051
    push ax                          ; 0x2054
    lea ax, word [bp - 0x004a]       ; 0x2055
    push ax                          ; 0x2058
    mov ax, 0x91da                   ; 0x2059
    push ax                          ; 0x205c
    db 0xe8, 0xb2, 0xb0 ; call 0xd112
    add sp, byte 6                   ; 0x2060
    lea ax, word [bp - 0x004a]       ; 0x2063
    push ax                          ; 0x2066
    mov ax, 0x91ee                   ; 0x2067
    push ax                          ; 0x206a
    call ds_dispatch_f364            ; 0x206b
    add sp, byte 4                   ; 0x206e
    mov ax, 0x91ee                   ; 0x2071
    push ax                          ; 0x2074
    call ds_dispatch_fa90            ; 0x2075
    pop cx                           ; 0x2078
    cmp ax, strict word 0            ; 0x2079
    jle short @..local.l71           ; 0x207c
    mov ax, 0x91ee                   ; 0x207e
    push ax                          ; 0x2081
    call ds_dispatch_fa90            ; 0x2082
    pop cx                           ; 0x2085
    dec ax                           ; 0x2086
    mov word [bp - 0x0002], ax       ; 0x2087
    mov bx, ax                       ; 0x208a
    cmp byte [bx - 0x6e12], 0x5c     ; 0x208c
    je short @..local.l71            ; 0x2091
    mov byte [bx - 0x6e11], 0x5c     ; 0x2093
    mov byte [bx - 0x6e10], 0        ; 0x2098
@..local.l71:
    lea ax, word [bp - 0x0036]       ; 0x209d
    push ax                          ; 0x20a0
    mov ax, 0x91ee                   ; 0x20a1
    push ax                          ; 0x20a4
    call ds_dispatch_f32d            ; 0x20a5
    add sp, byte 4                   ; 0x20a8
    cmp byte [data_5987], 1          ; 0x20ab
    jne short @..local.l72           ; 0x20b0
    mov ax, 0x91da                   ; 0x20b2
    push ax                          ; 0x20b5
    mov ax, 0x91c6                   ; 0x20b6
    push ax                          ; 0x20b9
    call string_loc_9386             ; 0x20ba
    add sp, byte 4                   ; 0x20bd
    test ax, ax                      ; 0x20c0
    jne short @..local.l72           ; 0x20c2
    jmp near @..local.l78            ; 0x20c4
@..local.l72:
    mov ax, 0x91da                   ; 0x20c7
    push ax                          ; 0x20ca
    call ds_dispatch_fa90            ; 0x20cb
    pop cx                           ; 0x20ce
    cmp ax, strict word 0            ; 0x20cf
    jle short @..local.l76           ; 0x20d2
    mov ax, 0x91da                   ; 0x20d4
    push ax                          ; 0x20d7
    mov ax, 0x91c6                   ; 0x20d8
    push ax                          ; 0x20db
    call string_loc_9386             ; 0x20dc
    add sp, byte 4                   ; 0x20df
    test ax, ax                      ; 0x20e2
    je short @..local.l73            ; 0x20e4
    cmp byte [data_5987], 5          ; 0x20e6
    jne short @..local.l74           ; 0x20eb
@..local.l73:
    mov word [bp - 0x000e], 1        ; 0x20ed
@..local.l74:
    mov ax, 0                        ; 0x20f2
    push ax                          ; 0x20f5
    push word [bp - 0x000e]          ; 0x20f6
    mov ax, 0xffff                   ; 0x20f9
    push ax                          ; 0x20fc
    mov ax, 0x91da                   ; 0x20fd
    push ax                          ; 0x2100
    call 0xd1a8                      ; 0x2101
    add sp, byte 8                   ; 0x2104
    mov ax, 1                        ; 0x2107
    cmp word [bp - 0x000e], byte 0   ; 0x210a
    je short @..local.l75            ; 0x210e
    mov ax, 0                        ; 0x2110
@..local.l75:
    mov word [bp - 0x0012], ax       ; 0x2113
    jmp short @..local.l78           ; 0x2116
@..local.l76:
    cmp byte [data_5987], 1          ; 0x2118
    jbe short @..local.l78           ; 0x211d
    mov word [bp - 0x000e], 1        ; 0x211f
    mov ax, 0                        ; 0x2124
    push ax                          ; 0x2127
    push word [bp - 0x000e]          ; 0x2128
    mov ax, 0xffff                   ; 0x212b
    push ax                          ; 0x212e
    mov ax, 0x91c6                   ; 0x212f
    push ax                          ; 0x2132
    db 0xe8, 0x72, 0xb0 ; call 0xd1a8
    add sp, byte 8                   ; 0x2136
    mov ax, 1                        ; 0x2139
    cmp word [bp - 0x000e], byte 0   ; 0x213c
    je short @..local.l77            ; 0x2140
    mov ax, 0                        ; 0x2142
@..local.l77:
    mov word [bp - 0x0012], ax       ; 0x2145
@..local.l78:
    mov ax, 0xc7                     ; 0x2148
    push ax                          ; 0x214b
    mov ax, 0x13f                    ; 0x214c
    push ax                          ; 0x214f
    mov ax, 0                        ; 0x2150
    push ax                          ; 0x2153
    push ax                          ; 0x2154
    call ds_dispatch_e8da            ; 0x2155
    add sp, byte 8                   ; 0x2158
    mov ax, 1                        ; 0x215b
    push ax                          ; 0x215e
    mov ax, 0xd                      ; 0x215f
    push ax                          ; 0x2162
    mov ax, 0x12                     ; 0x2163
    push ax                          ; 0x2166
    mov ax, 0x24                     ; 0x2167
    push ax                          ; 0x216a
    mov ax, 0x61                     ; 0x216b
    push ax                          ; 0x216e
    mov ax, 3                        ; 0x216f
    push ax                          ; 0x2172
    lea ax, word [bp - 0x0072]       ; 0x2173
    push ax                          ; 0x2176
    call api_idx_0004                ; 0x2177
    add sp, byte 0x0e                ; 0x217a
    mov ax, 0                        ; 0x217d
    push ax                          ; 0x2180
    mov ax, 0x91ee                   ; 0x2181
    push ax                          ; 0x2184
    call ds_dispatch_f909            ; 0x2185
    add sp, byte 4                   ; 0x2188
    mov word [bp - 0x000a], ax       ; 0x218b
    cmp ax, strict word 0xffff       ; 0x218e
    jne short @..local.l80           ; 0x2191
    lea ax, word [bp - 0x005e]       ; 0x2193
    push ax                          ; 0x2196
    call loc_150d                    ; 0x2197
    pop cx                           ; 0x219a
    cmp word [bp - 0x000e], byte 0   ; 0x219b
    je short @..local.l79            ; 0x219f
    mov ax, 1                        ; 0x21a1
    push ax                          ; 0x21a4
    push word [bp - 0x0012]          ; 0x21a5
    push word [bp - 0x0010]          ; 0x21a8
    mov ax, 0x91c6                   ; 0x21ab
    push ax                          ; 0x21ae
    db 0xe8, 0xf6, 0xaf ; call 0xd1a8
    add sp, byte 8                   ; 0x21b2
@..local.l79:
    mov ax, 0xffff                   ; 0x21b5
    ret                              ; 0x21b8
@..local.l80:
    mov ax, 0                        ; 0x21b9
    push ax                          ; 0x21bc
    mov ax, 0                        ; 0x21bd
    mov dx, 0                        ; 0x21c0
    push dx                          ; 0x21c3
    push ax                          ; 0x21c4
    push word [bp - 0x000a]          ; 0x21c5
    call ds_dispatch_fdbd            ; 0x21c8
    add sp, byte 8                   ; 0x21cb
    mov ax, 0x19e                    ; 0x21ce
    push ax                          ; 0x21d1
    mov ax, 0x9220                   ; 0x21d2
    push ax                          ; 0x21d5
    push word [bp - 0x000a]          ; 0x21d6
    call ds_dispatch_fd6f            ; 0x21d9
    add sp, byte 6                   ; 0x21dc
    mov word [bp - 0x000c], ax       ; 0x21df
    cmp ax, strict word 0            ; 0x21e2
    jg short @..local.l82            ; 0x21e5
    lea ax, word [bp - 0x005e]       ; 0x21e7
    push ax                          ; 0x21ea
    call loc_150d                    ; 0x21eb
    pop cx                           ; 0x21ee
    push word [bp - 0x000a]          ; 0x21ef
    call ds_dispatch_fda5            ; 0x21f2
    pop cx                           ; 0x21f5
    cmp word [bp - 0x000e], byte 0   ; 0x21f6
    je short @..local.l81            ; 0x21fa
    mov ax, 1                        ; 0x21fc
    push ax                          ; 0x21ff
    push word [bp - 0x0012]          ; 0x2200
    push word [bp - 0x0010]          ; 0x2203
    mov ax, 0x91c6                   ; 0x2206
    push ax                          ; 0x2209
    db 0xe8, 0x9b, 0xaf ; call 0xd1a8
    add sp, byte 8                   ; 0x220d
@..local.l81:
    mov ax, 0xffff                   ; 0x2210
    ret                              ; 0x2213
@..local.l82:
    mov ax, 0x6d6                    ; 0x2214
    push ax                          ; 0x2217
    call ds_dispatch_f4a3            ; 0x2218
    pop cx                           ; 0x221b
    mov word [data_93be], ax         ; 0x221c
    cmp word [data_93be], byte 0     ; 0x221f
    jne short @..local.l83           ; 0x2224
    mov ax, 0x1d                     ; 0x2226
    push ax                          ; 0x2229
    call ds_dispatch_b171            ; 0x222a
    pop cx                           ; 0x222d
@..local.l83:
    mov word [bp - 0x0008], 0        ; 0x222e
@..local.l84:
    mov ax, 0x542                    ; 0x2233
    push ax                          ; 0x2236
    push word [data_93be]            ; 0x2237
    push word [bp - 0x000a]          ; 0x223b
    call ds_dispatch_fd6f            ; 0x223e
    add sp, byte 6                   ; 0x2241
    mov word [bp - 0x000c], ax       ; 0x2244
    cmp ax, strict word 0            ; 0x2247
    jg short @..local.l86            ; 0x224a
    push word [data_93be]            ; 0x224c
    call ds_dispatch_f5a1            ; 0x2250
    pop cx                           ; 0x2253
    lea ax, word [bp - 0x005e]       ; 0x2254
    push ax                          ; 0x2257
    call loc_150d                    ; 0x2258
    pop cx                           ; 0x225b
    push word [bp - 0x000a]          ; 0x225c
    call ds_dispatch_fda5            ; 0x225f
    pop cx                           ; 0x2262
    cmp word [bp - 0x000e], byte 0   ; 0x2263
    je short @..local.l85            ; 0x2267
    mov ax, 1                        ; 0x2269
    push ax                          ; 0x226c
    push word [bp - 0x0012]          ; 0x226d
    push word [bp - 0x0010]          ; 0x2270
    mov ax, 0x91c6                   ; 0x2273
    push ax                          ; 0x2276
    db 0xe8, 0x2e, 0xaf ; call 0xd1a8
    add sp, byte 8                   ; 0x227a
@..local.l85:
    mov ax, 0xffff                   ; 0x227d
    ret                              ; 0x2280
@..local.l86:
    mov ax, 0x6cc                    ; 0x2281
    push ax                          ; 0x2284
    push word [data_93be]            ; 0x2285
    push word [bp - 0x000a]          ; 0x2289
    call ds_dispatch_fd6f            ; 0x228c
    add sp, byte 6                   ; 0x228f
    mov word [bp - 0x000c], ax       ; 0x2292
    cmp ax, strict word 0            ; 0x2295
    jg short @..local.l88            ; 0x2298
    push word [data_93be]            ; 0x229a
    call ds_dispatch_f5a1            ; 0x229e
    pop cx                           ; 0x22a1
    lea ax, word [bp - 0x005e]       ; 0x22a2
    push ax                          ; 0x22a5
    call loc_150d                    ; 0x22a6
    pop cx                           ; 0x22a9
    push word [bp - 0x000a]          ; 0x22aa
    call ds_dispatch_fda5            ; 0x22ad
    pop cx                           ; 0x22b0
    cmp word [bp - 0x000e], byte 0   ; 0x22b1
    je short @..local.l87            ; 0x22b5
    mov ax, 1                        ; 0x22b7
    push ax                          ; 0x22ba
    push word [bp - 0x0012]          ; 0x22bb
    push word [bp - 0x0010]          ; 0x22be
    mov ax, 0x91c6                   ; 0x22c1
    push ax                          ; 0x22c4
    db 0xe8, 0xe0, 0xae ; call 0xd1a8
    add sp, byte 8                   ; 0x22c8
@..local.l87:
    mov ax, 0xffff                   ; 0x22cb
    ret                              ; 0x22ce
@..local.l88:
    inc word [bp - 0x0008]           ; 0x22cf
    mov ax, word [bp - 0x0008]       ; 0x22d2
    cmp ax, strict word 0x10         ; 0x22d5
    jge short @..local.l89           ; 0x22d8
    jmp near @..local.l84            ; 0x22da
@..local.l89:
    push word [data_93be]            ; 0x22dd
    call ds_dispatch_f5a1            ; 0x22e1
    pop cx                           ; 0x22e4
    mov ax, 0x42                     ; 0x22e5
    push ax                          ; 0x22e8
    mov ax, 0x93c0                   ; 0x22e9
    push ax                          ; 0x22ec
    push word [bp - 0x000a]          ; 0x22ed
    call ds_dispatch_fd6f            ; 0x22f0
    add sp, byte 6                   ; 0x22f3
    mov word [bp - 0x000c], ax       ; 0x22f6
    cmp ax, strict word 0            ; 0x22f9
    jg short @..local.l91            ; 0x22fc
    lea ax, word [bp - 0x005e]       ; 0x22fe
    push ax                          ; 0x2301
    call loc_150d                    ; 0x2302
    pop cx                           ; 0x2305
    push word [bp - 0x000a]          ; 0x2306
    call ds_dispatch_fda5            ; 0x2309
    pop cx                           ; 0x230c
    cmp word [bp - 0x000e], byte 0   ; 0x230d
    je short @..local.l90            ; 0x2311
    mov ax, 1                        ; 0x2313
    push ax                          ; 0x2316
    push word [bp - 0x0012]          ; 0x2317
    push word [bp - 0x0010]          ; 0x231a
    mov ax, 0x91c6                   ; 0x231d
    push ax                          ; 0x2320
    db 0xe8, 0x84, 0xae ; call 0xd1a8
    add sp, byte 8                   ; 0x2324
@..local.l90:
    mov ax, 0xffff                   ; 0x2327
    ret                              ; 0x232a
@..local.l91:
    mov word [data_69c8], 0          ; 0x232b
    mov word [bp - 0x0002], 0        ; 0x2331
    jmp near @..local.l158           ; 0x2336
@..local.l92:
    mov ax, 0x1b0                    ; 0x2339
    push ax                          ; 0x233c
    mov ax, 0x9402                   ; 0x233d
    push ax                          ; 0x2340
    push word [bp - 0x000a]          ; 0x2341
    call ds_dispatch_fd6f            ; 0x2344
    add sp, byte 6                   ; 0x2347
    mov word [bp - 0x000c], ax       ; 0x234a
    cmp ax, strict word 0            ; 0x234d
    jg short @..local.l94            ; 0x2350
    lea ax, word [bp - 0x005e]       ; 0x2352
    push ax                          ; 0x2355
    call loc_150d                    ; 0x2356
    pop cx                           ; 0x2359
    push word [bp - 0x000a]          ; 0x235a
    call ds_dispatch_fda5            ; 0x235d
    pop cx                           ; 0x2360
    cmp word [bp - 0x000e], byte 0   ; 0x2361
    je short @..local.l93            ; 0x2365
    mov ax, 1                        ; 0x2367
    push ax                          ; 0x236a
    push word [bp - 0x0012]          ; 0x236b
    push word [bp - 0x0010]          ; 0x236e
    mov ax, 0x91c6                   ; 0x2371
    push ax                          ; 0x2374
    db 0xe8, 0x30, 0xae ; call 0xd1a8
    add sp, byte 8                   ; 0x2378
@..local.l93:
    mov ax, 0xffff                   ; 0x237b
    ret                              ; 0x237e
@..local.l94:
    push word [data_69c8]            ; 0x237f
    call api_idx_0006                ; 0x2383
    pop cx                           ; 0x2386
    mov cx, word [data_69c8]         ; 0x2387
    shl cx, 1                        ; 0x238b
    mov bx, cx                       ; 0x238d
    mov word [bx + 0x69bc], ax       ; 0x238f
    mov ax, 0x248                    ; 0x2393
    imul word [data_69c8]            ; 0x2396
    add ax, 0x5bf4                   ; 0x239a
    mov word [bp - 0x0014], ax       ; 0x239d
    mov ax, word [data_9426]         ; 0x23a0
    push ax                          ; 0x23a3
    cmp ax, strict word 5            ; 0x23a4
    pop ax                           ; 0x23a7
    jle short @..local.l95           ; 0x23a8
    mov ax, 5                        ; 0x23aa
@..local.l95:
    mov bx, word [bp - 0x0014]       ; 0x23ad
    mov word [bx + 0x24], ax         ; 0x23b0
    mov ax, 0x9402                   ; 0x23b3
    push ax                          ; 0x23b6
    push word [bp - 0x0014]          ; 0x23b7
    call ds_dispatch_f364            ; 0x23ba
    add sp, byte 4                   ; 0x23bd
    mov ax, word [data_940a]         ; 0x23c0
    mov dx, word [data_940c]         ; 0x23c3
    mov bx, word [bp - 0x0014]       ; 0x23c7
    mov word [bx + 0xa], dx          ; 0x23ca
    mov word [bx + 0x8], ax          ; 0x23cd
    mov bx, word [bp - 0x0014]       ; 0x23d0
    mov word [bx + 0x12], 0          ; 0x23d3
    mov word [bx + 0x10], 0          ; 0x23d8
    mov bx, word [bp - 0x0014]       ; 0x23dd
    mov word [bx + 0x16], 0          ; 0x23e0
    mov word [bx + 0x14], 0          ; 0x23e5
    mov word [bp - 0x0004], 0        ; 0x23ea
@..local.l96:
    mov bx, word [bp - 0x0004]       ; 0x23ef
    mov al, byte [bx - 0x6ad2]       ; 0x23f2
    mov si, bx                       ; 0x23f6
    mov bx, word [bp - 0x0014]       ; 0x23f8
    mov byte [bx + si + 0x170], al   ; 0x23fb
    cmp word [data_9426], byte 5     ; 0x23ff
    jle short @..local.l97           ; 0x2404
    mov bx, word [bp - 0x0014]       ; 0x2406
    mov si, word [bp - 0x0004]       ; 0x2409
    cmp byte [bx + si + 0x170], math_loc_000e ; 0x240c
    jbe short @..local.l97           ; 0x2411
    mov al, byte [bx + si + 0x170]   ; 0x2413
    sub ah, ah                       ; 0x2417
    push ax                          ; 0x2419
    mov ax, 4                        ; 0x241a
    push ax                          ; 0x241d
    call ds_dispatch_b7a9            ; 0x241e
    pop cx                           ; 0x2421
    mov cx, ax                       ; 0x2422
    pop ax                           ; 0x2424
    sub ax, cx                       ; 0x2425
    mov bx, word [bp - 0x0014]       ; 0x2427
    mov si, word [bp - 0x0004]       ; 0x242a
    mov byte [bx + si + 0x170], al   ; 0x242d
@..local.l97:
    inc word [bp - 0x0004]           ; 0x2431
    mov ax, word [bp - 0x0004]       ; 0x2434
    cmp ax, strict word 8            ; 0x2437
    jl short @..local.l96            ; 0x243a
    mov ax, word [data_941c]         ; 0x243c
    cwd                              ; 0x243f
    idiv word [data_9426]            ; 0x2440
    mov bx, word [bp - 0x0014]       ; 0x2444
    mov cx, word [bx + 0x24]         ; 0x2447
    imul cx                          ; 0x244a
    mov word [bx + 0x1a], ax         ; 0x244c
    mov bx, word [bp - 0x0014]       ; 0x244f
    cmp word [bx + 0x1a], byte 7     ; 0x2452
    jge short @..local.l98           ; 0x2456
    mov word [bx + 0x1a], 7          ; 0x2458
@..local.l98:
    mov bx, word [bp - 0x0014]       ; 0x245d
    mov ax, word [bx + 0x24]         ; 0x2460
    shl ax, 1                        ; 0x2463
    shl ax, 1                        ; 0x2465
    shl ax, 1                        ; 0x2467
    add ax, strict word 8            ; 0x2469
    mov cx, word [bx + 0x1a]         ; 0x246c
    cmp ax, cx                       ; 0x246f
    jge short @..local.l99           ; 0x2471
    mov ax, 8                        ; 0x2473
    push ax                          ; 0x2476
    call ds_dispatch_b7a9            ; 0x2477
    pop cx                           ; 0x247a
    mov bx, word [bp - 0x0014]       ; 0x247b
    mov cx, word [bx + 0x24]         ; 0x247e
    shl cx, 1                        ; 0x2481
    shl cx, 1                        ; 0x2483
    shl cx, 1                        ; 0x2485
    add ax, cx                       ; 0x2487
    mov word [bx + 0x1a], ax         ; 0x2489
@..local.l99:
    mov bx, word [bp - 0x0014]       ; 0x248c
    mov ax, word [bx + 0x1a]         ; 0x248f
    mov word [bx + 0x18], ax         ; 0x2492
    mov bx, word [bp - 0x0014]       ; 0x2495
    mov al, byte [bx + 0x170]        ; 0x2498
    sub ah, ah                       ; 0x249c
    mov word [bp - 0x001a], ax       ; 0x249e
    mov al, byte [bx + 0x173]        ; 0x24a1
    sub ah, ah                       ; 0x24a5
    mov word [bp - 0x001c], ax       ; 0x24a7
    shl ax, 1                        ; 0x24aa
    add ax, word [bp - 0x001a]       ; 0x24ac
    mov cx, 3                        ; 0x24af
    imul cx                          ; 0x24b2
    mov word [bp - 0x001e], ax       ; 0x24b4
    mov ax, word [bp - 0x001a]       ; 0x24b7
    shl ax, 1                        ; 0x24ba
    add ax, word [bp - 0x001c]       ; 0x24bc
    imul cx                          ; 0x24bf
    mov word [bp - 0x0020], ax       ; 0x24c1
    cmp word [bp - 0x001c], byte 0x0f ; 0x24c4
    jle short @..local.l100          ; 0x24c8
    mov ax, word [bp - 0x001c]       ; 0x24ca
    add word [bp - 0x001e], ax       ; 0x24cd
@..local.l100:
    cmp word [bp - 0x001c], byte 0x11 ; 0x24d0
    jle short @..local.l101          ; 0x24d4
    mov ax, word [bp - 0x001c]       ; 0x24d6
    add word [bp - 0x001e], ax       ; 0x24d9
@..local.l101:
    cmp word [bp - 0x001a], byte 0x0f ; 0x24dc
    jle short @..local.l102          ; 0x24e0
    mov ax, word [bp - 0x001a]       ; 0x24e2
    add word [bp - 0x0020], ax       ; 0x24e5
@..local.l102:
    cmp word [bp - 0x001a], byte 0x11 ; 0x24e8
    jle short @..local.l103          ; 0x24ec
    mov ax, word [bp - 0x001a]       ; 0x24ee
    add word [bp - 0x0020], ax       ; 0x24f1
@..local.l103:
    mov ax, 5                        ; 0x24f4
    imul word [bx + 0x24]            ; 0x24f7
    add word [bp - 0x001e], ax       ; 0x24fa
    mov ax, word [bp - 0x001e]       ; 0x24fd
    mov word [bx + 0x1c], ax         ; 0x2500
    mov ax, word [bp - 0x001e]       ; 0x2503
    mov bx, word [bp - 0x0014]       ; 0x2506
    mov word [bx + 0x1e], ax         ; 0x2509
    mov bx, word [bp - 0x0014]       ; 0x250c
    mov word [bx + 0x20], 0          ; 0x250f
    mov ax, 0xf                      ; 0x2514
    imul word [bp - 0x0020]          ; 0x2517
    mov bx, word [bp - 0x0014]       ; 0x251a
    mov word [bx + 0x22], ax         ; 0x251d
    mov bx, word [bp - 0x0014]       ; 0x2520
    cmp byte [bx + 0x237], 5         ; 0x2523
    jne short @..local.l104          ; 0x2528
    mov ax, word [bx + 0x22]         ; 0x252a
    shl ax, 1                        ; 0x252d
    cwd                              ; 0x252f
    idiv cx                          ; 0x2530
    mov word [bx + 0x22], ax         ; 0x2532
@..local.l104:
    mov ax, word [data_9428]         ; 0x2535
    mov bx, word [bp - 0x0014]       ; 0x2538
    mov word [bx + 0x26], ax         ; 0x253b
    mov word [bp - 0x0004], 0        ; 0x253e
@..local.l105:
    mov ax, word [bp - 0x0004]       ; 0x2543
    shl ax, 1                        ; 0x2546
    shl ax, 1                        ; 0x2548
    mov bx, ax                       ; 0x254a
    mov ax, word [bx - 0x6bd4]       ; 0x254c
    cwd                              ; 0x2550
    idiv word [data_9426]            ; 0x2551
    mov bx, word [bp - 0x0014]       ; 0x2555
    mov cx, word [bx + 0x24]         ; 0x2558
    imul cx                          ; 0x255b
    mov cx, word [bp - 0x0004]       ; 0x255d
    shl cx, 1                        ; 0x2560
    shl cx, 1                        ; 0x2562
    mov si, cx                       ; 0x2564
    mov word [bx + si + 0x2a], ax    ; 0x2566
    mov bx, word [bp - 0x0014]       ; 0x2569
    mov ax, word [bx + 0x24]         ; 0x256c
    mov cx, 7                        ; 0x256f
    imul cx                          ; 0x2572
    add ax, strict word 7            ; 0x2574
    mov cx, word [bp - 0x0004]       ; 0x2577
    shl cx, 1                        ; 0x257a
    shl cx, 1                        ; 0x257c
    mov si, cx                       ; 0x257e
    mov cx, word [bx + si + 0x2a]    ; 0x2580
    cmp ax, cx                       ; 0x2583
    jge short @..local.l106          ; 0x2585
    mov ax, 7                        ; 0x2587
    push ax                          ; 0x258a
    call ds_dispatch_b7a9            ; 0x258b
    pop cx                           ; 0x258e
    push ax                          ; 0x258f
    mov bx, word [bp - 0x0014]       ; 0x2590
    mov ax, word [bx + 0x24]         ; 0x2593
    mov cx, 7                        ; 0x2596
    imul cx                          ; 0x2599
    mov cx, ax                       ; 0x259b
    pop ax                           ; 0x259d
    add ax, cx                       ; 0x259e
    mov cx, word [bp - 0x0004]       ; 0x25a0
    shl cx, 1                        ; 0x25a3
    shl cx, 1                        ; 0x25a5
    mov si, cx                       ; 0x25a7
    mov word [bx + si + 0x2a], ax    ; 0x25a9
@..local.l106:
    mov ax, word [bp - 0x0004]       ; 0x25ac
    shl ax, 1                        ; 0x25af
    shl ax, 1                        ; 0x25b1
    mov si, ax                       ; 0x25b3
    mov bx, word [bp - 0x0014]       ; 0x25b5
    mov ax, word [bx + si + 0x2a]    ; 0x25b8
    mov word [bx + si + 0x28], ax    ; 0x25bb
    inc word [bp - 0x0004]           ; 0x25be
    mov ax, word [bp - 0x0004]       ; 0x25c1
    cmp ax, strict word 6            ; 0x25c4
    jge short @..local.l107          ; 0x25c7
    jmp near @..local.l105           ; 0x25c9
@..local.l107:
    mov word [bp - 0x0004], 0        ; 0x25cc
@..local.l108:
    mov ax, word [bp - 0x0004]       ; 0x25d1
    mov word [bp - 0x001a], ax       ; 0x25d4
    jmp near @..local.l109           ; 0x25d7

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
    sub ax, strict word 0xb          ; 0x268e
    cmp ax, strict word 0x13         ; 0x2691
    jae short @..local.l110          ; 0x2694
    xchg bx, ax                      ; 0x2696
    shl bx, 1                        ; 0x2697
    jmp [cs:bx + 0x76af]             ; 0x2699
@..local.l110:
    cmp word [bp - 0x001a], byte 0   ; 0x269e
    jl short @..local.l113           ; 0x26a2
    mov ax, word [data_9426]         ; 0x26a4
    mov word [bp - 0x001c], ax       ; 0x26a7
    cmp ax, strict word 0x12         ; 0x26aa
    jle short @..local.l111          ; 0x26ad
    mov word [bp - 0x001c], 0x12     ; 0x26af
@..local.l111:
    cmp word [bp - 0x001c], byte 0   ; 0x26b4
    jle short @..local.l112          ; 0x26b8
    mov bx, word [bp - 0x0004]       ; 0x26ba
    mov cl, byte [bx - 0x6aca]       ; 0x26bd
    mov bx, word [bp - 0x0014]       ; 0x26c1
    mov si, word [bp - 0x001a]       ; 0x26c4
    mov al, byte [bx + si + 0x178]   ; 0x26c7
    cmp al, cl                       ; 0x26cb
    jae short @..local.l112          ; 0x26cd
    mov al, byte [bx + si + 0x178]   ; 0x26cf
    sub ah, ah                       ; 0x26d3
    mov cx, ax                       ; 0x26d5
    push cx                          ; 0x26d7
    mov ax, 3                        ; 0x26d8
    push ax                          ; 0x26db
    call ds_dispatch_b7a9            ; 0x26dc
    pop cx                           ; 0x26df
    pop cx                           ; 0x26e0
    add ax, cx                       ; 0x26e1
    inc ax                           ; 0x26e3
    mov bx, word [bp - 0x0014]       ; 0x26e4
    mov si, word [bp - 0x001a]       ; 0x26e7
    mov byte [bx + si + 0x178], al   ; 0x26ea
    dec word [bp - 0x001c]           ; 0x26ee
    jmp short @..local.l111          ; 0x26f1
@..local.l112:
    mov bx, word [bp - 0x0004]       ; 0x26f3
    mov cl, byte [bx - 0x6aca]       ; 0x26f6
    mov bx, word [bp - 0x0014]       ; 0x26fa
    mov si, word [bp - 0x001a]       ; 0x26fd
    mov al, byte [bx + si + 0x178]   ; 0x2700
    cmp al, cl                       ; 0x2704
    jbe short @..local.l113          ; 0x2706
    mov byte [bx + si + 0x178], cl   ; 0x2708
@..local.l113:
    inc word [bp - 0x0004]           ; 0x270c
    mov ax, word [bp - 0x0004]       ; 0x270f
    cmp ax, strict word 0x1e         ; 0x2712
    jge short @..local.l114          ; 0x2715
    jmp near @..local.l108           ; 0x2717
@..local.l114:
    mov word [bp - 0x0004], 0        ; 0x271a
@..local.l115:
    mov bx, word [bp - 0x0004]       ; 0x271f
    mov al, byte [bx - 0x6aac]       ; 0x2722
    sub ah, ah                       ; 0x2726
    cwd                              ; 0x2728
    idiv word [data_9426]            ; 0x2729
    mov bx, word [bp - 0x0014]       ; 0x272d
    mov cx, word [bx + 0x24]         ; 0x2730
    imul cx                          ; 0x2733
    mov si, word [bp - 0x0004]       ; 0x2735
    mov byte [bx + si + 0x1a8], al   ; 0x2738
    mov bx, word [bp - 0x0014]       ; 0x273c
    mov si, word [bp - 0x0004]       ; 0x273f
    mov al, byte [bx + si + 0x1a8]   ; 0x2742
    mov byte [bx + si + 0x19a], al   ; 0x2746
    inc word [bp - 0x0004]           ; 0x274a
    mov ax, word [bp - 0x0004]       ; 0x274d
    cmp ax, strict word 0xe          ; 0x2750
    jl short @..local.l115           ; 0x2753
    mov word [bp - 0x0004], 0        ; 0x2755
@..local.l116:
    push word [bp - 0x0004]          ; 0x275a
    mov ax, 0x958a                   ; 0x275d
    push ax                          ; 0x2760
    call ds_dispatch_ec74            ; 0x2761
    add sp, byte 4                   ; 0x2764
    test ax, ax                      ; 0x2767
    je short @..local.l117           ; 0x2769
    push word [bp - 0x0004]          ; 0x276b
    call loc_1a12                    ; 0x276e
    pop cx                           ; 0x2771
    mov word [bp - 0x0006], ax       ; 0x2772
    cmp ax, strict word 0            ; 0x2775
    jl short @..local.l117           ; 0x2778
    mov cx, 6                        ; 0x277a
    imul cx                          ; 0x277d
    mov bx, ax                       ; 0x277f
    cmp byte [bx + 0x621], 4         ; 0x2781
    jae short @..local.l117          ; 0x2786
    push cx                          ; 0x2788
    call ds_dispatch_b7a9            ; 0x2789
    pop cx                           ; 0x278c
    push ax                          ; 0x278d
    mov ax, 6                        ; 0x278e
    imul word [bp - 0x0006]          ; 0x2791
    mov bx, ax                       ; 0x2794
    mov al, byte [bx + 0x621]        ; 0x2796
    sub ah, ah                       ; 0x279a
    mov cx, ax                       ; 0x279c
    pop ax                           ; 0x279e
    cmp ax, cx                       ; 0x279f
    jl short @..local.l117           ; 0x27a1
    mov ax, 1                        ; 0x27a3
    push ax                          ; 0x27a6
    push word [bp - 0x0006]          ; 0x27a7
    mov ax, word [bp - 0x0014]       ; 0x27aa
    add ax, 0x21e                    ; 0x27ad
    push ax                          ; 0x27b0
    call ds_dispatch_ec41            ; 0x27b1
    add sp, byte 6                   ; 0x27b4
@..local.l117:
    inc word [bp - 0x0004]           ; 0x27b7
    mov ax, word [bp - 0x0004]       ; 0x27ba
    cmp ax, strict word 0x4f         ; 0x27bd
    jl short @..local.l116           ; 0x27c0
    mov word [bp - 0x0004], 0        ; 0x27c2
@..local.l118:
    mov bx, word [bp - 0x0004]       ; 0x27c7
    mov al, byte [bx - 0x6a6a]       ; 0x27ca
    mov si, bx                       ; 0x27ce
    mov bx, word [bp - 0x0014]       ; 0x27d0
    mov byte [bx + si + 0x22e], al   ; 0x27d3
    mov bx, word [bp - 0x0004]       ; 0x27d7
    mov al, byte [bx - 0x6a66]       ; 0x27da
    mov si, bx                       ; 0x27de
    mov bx, word [bp - 0x0014]       ; 0x27e0
    mov byte [bx + si + 0x232], al   ; 0x27e3
    inc word [bp - 0x0004]           ; 0x27e7
    mov ax, word [bp - 0x0004]       ; 0x27ea
    cmp ax, strict word 4            ; 0x27ed
    jl short @..local.l118           ; 0x27f0
    mov al, byte [data_959f]         ; 0x27f2
    mov bx, word [bp - 0x0014]       ; 0x27f5
    mov byte [bx + 0x237], al        ; 0x27f8
    mov al, byte [data_95a0]         ; 0x27fc
    mov bx, word [bp - 0x0014]       ; 0x27ff
    mov byte [bx + 0x238], al        ; 0x2802
    mov al, byte [data_95a1]         ; 0x2806
    mov bx, word [bp - 0x0014]       ; 0x2809
    mov byte [bx + 0x239], al        ; 0x280c
    mov bx, word [bp - 0x0014]       ; 0x2810
    push word [bx + 0x24]            ; 0x2813
    mov al, byte [bx + 0x239]        ; 0x2816
    sub ah, ah                       ; 0x281a
    push ax                          ; 0x281c
    call api_idx_0040                ; 0x281d
    add sp, byte 4                   ; 0x2820
    mov bx, word [bp - 0x0014]       ; 0x2823
    mov word [bx + 0xe], dx          ; 0x2826
    mov word [bx + 0xc], ax          ; 0x2829
    mov bx, word [bp - 0x0014]       ; 0x282c
    mov al, byte [bx + 0x239]        ; 0x282f
    sub ah, ah                       ; 0x2833
    push ax                          ; 0x2835
    mov al, byte [bx + 0x238]        ; 0x2836
    sub ah, ah                       ; 0x283a
    push ax                          ; 0x283c
    mov al, byte [bx + 0x237]        ; 0x283d
    sub ah, ah                       ; 0x2841
    push ax                          ; 0x2843
    call loc_1820                    ; 0x2844
    add sp, byte 6                   ; 0x2847
    mov bx, word [bp - 0x0014]       ; 0x284a
    mov byte [bx + 0x236], al        ; 0x284d
    mov al, byte [data_95a2]         ; 0x2851
    mov bx, word [bp - 0x0014]       ; 0x2854
    mov byte [bx + 0x23a], al        ; 0x2857
    mov bx, word [bp - 0x0014]       ; 0x285b
    mov byte [bx + 0x23b], 0         ; 0x285e
    mov bx, word [bp - 0x0014]       ; 0x2863
    mov byte [bx + 0x23f], 0         ; 0x2866
    mov bx, word [bp - 0x0014]       ; 0x286b
    mov byte [bx + 0x240], 1         ; 0x286e
    mov bx, word [bp - 0x0014]       ; 0x2873
    mov byte [bx + 0x241], 0xa       ; 0x2876
    mov bx, word [bp - 0x0014]       ; 0x287b
    mov byte [bx + 0x243], 1         ; 0x287e
    mov bx, word [bp - 0x0014]       ; 0x2883
    mov byte [bx + 0x244], 1         ; 0x2886
    mov bx, word [bp - 0x0014]       ; 0x288b
    mov al, byte [bx + 0x175]        ; 0x288e
    sub ah, ah                       ; 0x2892
    mov cx, word [bx + 0x24]         ; 0x2894
    add ax, cx                       ; 0x2897
    mov byte [bx + 0x245], al        ; 0x2899
    mov ax, 3                        ; 0x289d
    imul word [data_9426]            ; 0x28a0
    push ax                          ; 0x28a4
    mov al, byte [data_95b0]         ; 0x28a5
    cbw                              ; 0x28a8
    mov cx, ax                       ; 0x28a9
    pop ax                           ; 0x28ab
    add ax, cx                       ; 0x28ac
    push ax                          ; 0x28ae
    mov bx, word [bp - 0x0014]       ; 0x28af
    mov ax, word [bx + 0x24]         ; 0x28b2
    mov cx, 3                        ; 0x28b5
    imul cx                          ; 0x28b8
    mov cx, ax                       ; 0x28ba
    pop ax                           ; 0x28bc
    sub ax, cx                       ; 0x28bd
    mov word [bp - 0x0004], ax       ; 0x28bf
    mov cx, 0x64                     ; 0x28c2
    mov ax, word [bx + 0x24]         ; 0x28c5
    shl ax, 1                        ; 0x28c8
    shl ax, 1                        ; 0x28ca
    shl ax, 1                        ; 0x28cc
    sub cx, ax                       ; 0x28ce
    mov ax, word [bp - 0x0004]       ; 0x28d0
    cmp cx, ax                       ; 0x28d3
    jle short @..local.l119          ; 0x28d5
    mov ax, 5                        ; 0x28d7
    push ax                          ; 0x28da
    call ds_dispatch_b7a9            ; 0x28db
    pop cx                           ; 0x28de
    mov cx, 0x64                     ; 0x28df
    mov bx, word [bp - 0x0014]       ; 0x28e2
    mov dx, word [bx + 0x24]         ; 0x28e5
    shl dx, 1                        ; 0x28e8
    shl dx, 1                        ; 0x28ea
    shl dx, 1                        ; 0x28ec
    sub cx, dx                       ; 0x28ee
    add ax, cx                       ; 0x28f0
    mov word [bp - 0x0004], ax       ; 0x28f2
@..local.l119:
    cmp word [bp - 0x0004], byte 0x64 ; 0x28f5
    jle short @..local.l120          ; 0x28f9
    mov word [bp - 0x0004], 0x64     ; 0x28fb
@..local.l120:
    mov al, byte [bp - 0x0004]       ; 0x2900
    mov bx, word [bp - 0x0014]       ; 0x2903
    mov byte [bx + 0x246], al        ; 0x2906
    mov word [bp - 0x0004], 0        ; 0x290a
@..local.l121:
    push word [bp - 0x0004]          ; 0x290f
    push word [data_69c8]            ; 0x2912
    call ds_dispatch_c608            ; 0x2916
    add sp, byte 4                   ; 0x2919
    inc word [bp - 0x0004]           ; 0x291c
    mov ax, word [bp - 0x0004]       ; 0x291f
    cmp ax, strict word 2            ; 0x2922
    jl short @..local.l121           ; 0x2925
    mov bx, word [bp - 0x0014]       ; 0x2927
    mov byte [bx + 0x1b6], 0xa       ; 0x292a
    mov bx, word [bp - 0x0014]       ; 0x292f
    cmp byte [bx + 0x175], 0xf       ; 0x2932
    jbe short @..local.l122          ; 0x2937
    mov cx, 1                        ; 0x2939
    jmp short @..local.l123          ; 0x293c
@..local.l122:
    mov cx, 0                        ; 0x293e
@..local.l123:
    mov al, byte [bx + 0x1b6]        ; 0x2941
    cbw                              ; 0x2945
    sub ax, cx                       ; 0x2946
    mov byte [bx + 0x1b6], al        ; 0x2948
    cbw                              ; 0x294c
    mov cx, 0                        ; 0x294d
    cmp byte [bx + 0x175], 0x11      ; 0x2950
    jbe short @..local.l124          ; 0x2955
    mov cx, 1                        ; 0x2957
@..local.l124:
    sub ax, cx                       ; 0x295a
    mov byte [bx + 0x1b6], al        ; 0x295c
    mov al, byte [bx + 0x1b6]        ; 0x2960
    cbw                              ; 0x2964
    mov cx, 0                        ; 0x2965
    cmp byte [bx + 0x237], 5         ; 0x2968
    jne short @..local.l125          ; 0x296d
    mov cx, data_0002                ; 0x296f
@..local.l125:
    sub ax, cx                       ; 0x2972
    mov byte [bx + 0x1b6], al        ; 0x2974
    cmp byte [bx + 0x239], 0xd       ; 0x2978
    je short @..local.l126           ; 0x297d
    cmp byte [bx + 0x239], 0xc       ; 0x297f
    jne short @..local.l127          ; 0x2984
@..local.l126:
    mov al, byte [bx + 0x1b6]        ; 0x2986
    cbw                              ; 0x298a
    push ax                          ; 0x298b
    mov al, byte [bx + 0x189]        ; 0x298c
    sub ah, ah                       ; 0x2990
    mov cx, 0xa                      ; 0x2992
    cwd                              ; 0x2995
    idiv cx                          ; 0x2996
    mov cx, ax                       ; 0x2998
    pop ax                           ; 0x299a
    sub ax, cx                       ; 0x299b
    mov byte [bx + 0x1b6], al        ; 0x299d
@..local.l127:
    mov byte [bx + 0x1b7], 0         ; 0x29a1
    mov bx, word [bp - 0x0014]       ; 0x29a6
    mov byte [bx + 0x1b8], 0         ; 0x29a9
    mov word [bp - 0x0004], 3        ; 0x29ae
@..local.l128:
    mov bx, word [bp - 0x0014]       ; 0x29b3
    mov al, byte [bx + 0x1b6]        ; 0x29b6
    mov si, word [bp - 0x0004]       ; 0x29ba
    mov byte [bx + si + 0x1b6], al   ; 0x29bd
    inc word [bp - 0x0004]           ; 0x29c1
    mov ax, word [bp - 0x0004]       ; 0x29c4
    cmp ax, strict word 8            ; 0x29c7
    jl short @..local.l128           ; 0x29ca
    mov word [bp - 0x0004], 0        ; 0x29cc
@..local.l129:
    mov bx, word [bp - 0x0014]       ; 0x29d1
    mov al, byte [bx + 0x177]        ; 0x29d4
    sub ah, ah                       ; 0x29d8
    add ax, strict word 0xfff7       ; 0x29da
    jge short @..local.l130          ; 0x29dd
    neg ax                           ; 0x29df
    mov cx, ax                       ; 0x29e1
    jmp short @..local.l131          ; 0x29e3
@..local.l130:
    mov al, byte [bx + 0x177]        ; 0x29e5
    sub ah, ah                       ; 0x29e9
    mov cx, ax                       ; 0x29eb
    add ax, strict word 0xfff7       ; 0x29ed
    mov cx, ax                       ; 0x29f0
@..local.l131:
    shl cx, 1                        ; 0x29f2
    shl cx, 1                        ; 0x29f4
    mov ax, data_0028                ; 0x29f6
    sub ax, cx                       ; 0x29f9
    mov si, word [bp - 0x0004]       ; 0x29fb
    mov byte [bx + si + 0x1be], al   ; 0x29fe
    inc word [bp - 0x0004]           ; 0x2a02
    mov ax, word [bp - 0x0004]       ; 0x2a05
    cmp ax, strict word 0x60         ; 0x2a08
    jl short @..local.l129           ; 0x2a0b
    mov word [bp - 0x0004], 0        ; 0x2a0d
@..local.l132:
    mov bx, word [bp - 0x0014]       ; 0x2a12
    mov si, word [bp - 0x0004]       ; 0x2a15
    mov byte [bx + si + 0x154], 0xff ; 0x2a18
    inc word [bp - 0x0004]           ; 0x2a1d
    mov ax, word [bp - 0x0004]       ; 0x2a20
    cmp ax, strict word 8            ; 0x2a23
    jl short @..local.l132           ; 0x2a26
    push word [data_69c8]            ; 0x2a28
    call api_idx_0004_2              ; 0x2a2c
    pop cx                           ; 0x2a2f
    mov word [bp - 0x0016], 0        ; 0x2a30
    mov word [bp - 0x0018], 0        ; 0x2a35
    cmp word [data_69c8], byte 0     ; 0x2a3a
    jne short @..local.l133          ; 0x2a3f
    mov ax, 1                        ; 0x2a41
    push ax                          ; 0x2a44
    mov ax, 0xfffe                   ; 0x2a45
    push ax                          ; 0x2a48
    mov ax, 0x78                     ; 0x2a49
    imul word [bp - 0x0016]          ; 0x2a4c
    mov cx, ax                       ; 0x2a4f
    mov ax, 0xc                      ; 0x2a51
    imul word [bp - 0x0018]          ; 0x2a54
    add cx, ax                       ; 0x2a57
    mov ax, word [bp - 0x0014]       ; 0x2a59
    add ax, cx                       ; 0x2a5c
    add ax, strict word 0x40         ; 0x2a5e
    push ax                          ; 0x2a61
    mov ax, 0x19b                    ; 0x2a62
    push ax                          ; 0x2a65
    push word [data_69c8]            ; 0x2a66
    call api_idx_004c                ; 0x2a6a
    add sp, byte 0x0a                ; 0x2a6d
    inc word [bp - 0x0018]           ; 0x2a70
@..local.l133:
    mov word [bp - 0x0004], 0        ; 0x2a73
    mov word [bp - 0x0006], 0        ; 0x2a78
    mov al, byte [data_95a1]         ; 0x2a7d
    sub ah, ah                       ; 0x2a80
    jmp near @..local.l134           ; 0x2a82

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
    cmp ax, strict word 0xe          ; 0x2b11
    jae short @..local.l135          ; 0x2b14
    xchg bx, ax                      ; 0x2b16
    shl bx, 1                        ; 0x2b17
    jmp [cs:bx + 0x7b3c]             ; 0x2b19
@..local.l135:
    cmp byte [data_959f], 5          ; 0x2b1e
    jne short @..local.l136          ; 0x2b23
    mov word [bp - 0x0004], 0x18d    ; 0x2b25
    mov word [bp - 0x0006], 0        ; 0x2b2a
@..local.l136:
    cmp word [bp - 0x0004], byte 0   ; 0x2b2f
    jle short @..local.l137          ; 0x2b33
    mov ax, 1                        ; 0x2b35
    push ax                          ; 0x2b38
    mov ax, 0xfffe                   ; 0x2b39
    push ax                          ; 0x2b3c
    mov ax, 0x78                     ; 0x2b3d
    imul word [bp - 0x0016]          ; 0x2b40
    mov cx, ax                       ; 0x2b43
    mov ax, 0xc                      ; 0x2b45
    imul word [bp - 0x0018]          ; 0x2b48
    add cx, ax                       ; 0x2b4b
    mov ax, word [bp - 0x0014]       ; 0x2b4d
    add ax, cx                       ; 0x2b50
    add ax, strict word 0x40         ; 0x2b52
    push ax                          ; 0x2b55
    push word [bp - 0x0004]          ; 0x2b56
    push word [data_69c8]            ; 0x2b59
    call api_idx_004c                ; 0x2b5d
    add sp, byte 0x0a                ; 0x2b60
    inc word [bp - 0x0018]           ; 0x2b63
@..local.l137:
    cmp word [bp - 0x0006], byte 0   ; 0x2b66
    jle short @..local.l138          ; 0x2b6a
    mov ax, 1                        ; 0x2b6c
    push ax                          ; 0x2b6f
    mov ax, 0xfffe                   ; 0x2b70
    push ax                          ; 0x2b73
    mov ax, 0x78                     ; 0x2b74
    imul word [bp - 0x0016]          ; 0x2b77
    mov cx, ax                       ; 0x2b7a
    mov ax, 0xc                      ; 0x2b7c
    imul word [bp - 0x0018]          ; 0x2b7f
    add cx, ax                       ; 0x2b82
    mov ax, word [bp - 0x0014]       ; 0x2b84
    add ax, cx                       ; 0x2b87
    add ax, strict word 0x40         ; 0x2b89
    push ax                          ; 0x2b8c
    push word [bp - 0x0006]          ; 0x2b8d
    push word [data_69c8]            ; 0x2b90
    call api_idx_004c                ; 0x2b94
    add sp, byte 0x0a                ; 0x2b97
    inc word [bp - 0x0018]           ; 0x2b9a
@..local.l138:
    mov word [bp - 0x0022], 0xffff   ; 0x2b9d
    mov word [bp - 0x0004], 0        ; 0x2ba2
    jmp near @..local.l145           ; 0x2ba7
@..local.l139:
    mov ax, word [bp - 0x0004]       ; 0x2baa
    shl ax, 1                        ; 0x2bad
    shl ax, 1                        ; 0x2baf
    shl ax, 1                        ; 0x2bb1
    mov bx, ax                       ; 0x2bb3
    mov ax, word [bx - 0x6bbe]       ; 0x2bb5
    mov word [bp - 0x0006], ax       ; 0x2bb9
    cmp ax, strict word 0            ; 0x2bbc
    jg short @..local.l140           ; 0x2bbf
    jmp near @..local.l144           ; 0x2bc1
@..local.l140:
    push ax                          ; 0x2bc4
    call loc_1683                    ; 0x2bc5
    pop cx                           ; 0x2bc8
    mov word [bp - 0x0006], ax       ; 0x2bc9
    cmp ax, strict word 0            ; 0x2bcc
    jge short @..local.l143          ; 0x2bcf
    cmp word [bp - 0x0022], byte 0xff ; 0x2bd1
    je short @..local.l141           ; 0x2bd5
    mov ax, 3                        ; 0x2bd7
    push ax                          ; 0x2bda
    call ds_dispatch_b7a9            ; 0x2bdb
    pop cx                           ; 0x2bde
    test ax, ax                      ; 0x2bdf
    jne short @..local.l142          ; 0x2be1
@..local.l141:
    mov ax, word [bp - 0x0004]       ; 0x2be3
    shl ax, 1                        ; 0x2be6
    shl ax, 1                        ; 0x2be8
    shl ax, 1                        ; 0x2bea
    mov bx, ax                       ; 0x2bec
    mov al, byte [bx - 0x6bb7]       ; 0x2bee
    sub ah, ah                       ; 0x2bf2
    test ax, 1                       ; 0x2bf4
    je short @..local.l142           ; 0x2bf7
    mov ax, word [bp - 0x0004]       ; 0x2bf9
    mov word [bp - 0x0022], ax       ; 0x2bfc
@..local.l142:
    jmp short @..local.l144          ; 0x2bff
@..local.l143:
    cmp word [bp - 0x0006], byte 0   ; 0x2c01
    jle short @..local.l144          ; 0x2c05
    cmp word [bp - 0x0016], byte 2   ; 0x2c07
    jge short @..local.l144          ; 0x2c0b
    mov ax, 1                        ; 0x2c0d
    push ax                          ; 0x2c10
    mov ax, word [bp - 0x0004]       ; 0x2c11
    shl ax, 1                        ; 0x2c14
    shl ax, 1                        ; 0x2c16
    shl ax, 1                        ; 0x2c18
    mov bx, ax                       ; 0x2c1a
    mov al, byte [bx - 0x6bb8]       ; 0x2c1c
    sub ah, ah                       ; 0x2c20
    push ax                          ; 0x2c22
    mov ax, 0x78                     ; 0x2c23
    imul word [bp - 0x0016]          ; 0x2c26
    mov cx, ax                       ; 0x2c29
    mov ax, 0xc                      ; 0x2c2b
    imul word [bp - 0x0018]          ; 0x2c2e
    add cx, ax                       ; 0x2c31
    mov ax, word [bp - 0x0014]       ; 0x2c33
    add ax, cx                       ; 0x2c36
    add ax, strict word 0x40         ; 0x2c38
    push ax                          ; 0x2c3b
    push word [bp - 0x0006]          ; 0x2c3c
    push word [data_69c8]            ; 0x2c3f
    call api_idx_004c                ; 0x2c43
    add sp, byte 0x0a                ; 0x2c46
    inc word [bp - 0x0018]           ; 0x2c49
    mov ax, word [bp - 0x0018]       ; 0x2c4c
    cmp ax, strict word 0xa          ; 0x2c4f
    jl short @..local.l144           ; 0x2c52
    mov word [bp - 0x0018], 0        ; 0x2c54
    inc word [bp - 0x0016]           ; 0x2c59
@..local.l144:
    inc word [bp - 0x0004]           ; 0x2c5c
@..local.l145:
    mov al, byte [data_95ae]         ; 0x2c5f
    sub ah, ah                       ; 0x2c62
    cmp ax, word [bp - 0x0004]       ; 0x2c64
    jle short @..local.l146          ; 0x2c67
    jmp near @..local.l139           ; 0x2c69
@..local.l146:
    mov word [bp - 0x0004], 0        ; 0x2c6c
    jmp near @..local.l153           ; 0x2c71
@..local.l147:
    mov ax, word [bp - 0x0004]       ; 0x2c74
    shl ax, 1                        ; 0x2c77
    shl ax, 1                        ; 0x2c79
    shl ax, 1                        ; 0x2c7b
    mov bx, ax                       ; 0x2c7d
    mov ax, word [bx - 0x6b6e]       ; 0x2c7f
    mov word [bp - 0x0006], ax       ; 0x2c83
    cmp ax, strict word 0            ; 0x2c86
    jg short @..local.l148           ; 0x2c89
    jmp near @..local.l152           ; 0x2c8b
@..local.l148:
    push ax                          ; 0x2c8e
    call loc_1683                    ; 0x2c8f
    pop cx                           ; 0x2c92
    mov word [bp - 0x0006], ax       ; 0x2c93
    cmp ax, strict word 0            ; 0x2c96
    jge short @..local.l151          ; 0x2c99
    cmp word [bp - 0x0022], byte 0xff ; 0x2c9b
    je short @..local.l149           ; 0x2c9f
    mov ax, 3                        ; 0x2ca1
    push ax                          ; 0x2ca4
    call ds_dispatch_b7a9            ; 0x2ca5
    pop cx                           ; 0x2ca8
    test ax, ax                      ; 0x2ca9
    jne short @..local.l150          ; 0x2cab
@..local.l149:
    mov ax, word [bp - 0x0004]       ; 0x2cad
    shl ax, 1                        ; 0x2cb0
    shl ax, 1                        ; 0x2cb2
    shl ax, 1                        ; 0x2cb4
    mov bx, ax                       ; 0x2cb6
    mov al, byte [bx - 0x6b67]       ; 0x2cb8
    sub ah, ah                       ; 0x2cbc
    test ax, 1                       ; 0x2cbe
    je short @..local.l150           ; 0x2cc1
    mov ax, word [bp - 0x0004]       ; 0x2cc3
    add ax, strict word 0xa          ; 0x2cc6
    mov word [bp - 0x0022], ax       ; 0x2cc9
@..local.l150:
    jmp short @..local.l152          ; 0x2ccc
@..local.l151:
    cmp word [bp - 0x0006], byte 0   ; 0x2cce
    jle short @..local.l152          ; 0x2cd2
    cmp word [bp - 0x0016], byte 2   ; 0x2cd4
    jge short @..local.l152          ; 0x2cd8
    mov ax, 1                        ; 0x2cda
    push ax                          ; 0x2cdd
    mov ax, word [bp - 0x0004]       ; 0x2cde
    shl ax, 1                        ; 0x2ce1
    shl ax, 1                        ; 0x2ce3
    shl ax, 1                        ; 0x2ce5
    mov bx, ax                       ; 0x2ce7
    mov al, byte [bx - 0x6b68]       ; 0x2ce9
    sub ah, ah                       ; 0x2ced
    push ax                          ; 0x2cef
    mov ax, 0x78                     ; 0x2cf0
    imul word [bp - 0x0016]          ; 0x2cf3
    mov cx, ax                       ; 0x2cf6
    mov ax, 0xc                      ; 0x2cf8
    imul word [bp - 0x0018]          ; 0x2cfb
    add cx, ax                       ; 0x2cfe
    mov ax, word [bp - 0x0014]       ; 0x2d00
    add ax, cx                       ; 0x2d03
    add ax, strict word 0x40         ; 0x2d05
    push ax                          ; 0x2d08
    push word [bp - 0x0006]          ; 0x2d09
    push word [data_69c8]            ; 0x2d0c
    call api_idx_004c                ; 0x2d10
    add sp, byte 0x0a                ; 0x2d13
    inc word [bp - 0x0018]           ; 0x2d16
    mov ax, word [bp - 0x0018]       ; 0x2d19
    cmp ax, strict word 0xa          ; 0x2d1c
    jl short @..local.l152           ; 0x2d1f
    mov word [bp - 0x0018], 0        ; 0x2d21
    inc word [bp - 0x0016]           ; 0x2d26
@..local.l152:
    inc word [bp - 0x0004]           ; 0x2d29
@..local.l153:
    mov al, byte [data_95af]         ; 0x2d2c
    sub ah, ah                       ; 0x2d2f
    cmp ax, word [bp - 0x0004]       ; 0x2d31
    jle short @..local.l154          ; 0x2d34
    jmp near @..local.l147           ; 0x2d36
@..local.l154:
    cmp word [bp - 0x0022], byte 0xff ; 0x2d39
    je short @..local.l157           ; 0x2d3d
    cmp word [bp - 0x0016], byte 2   ; 0x2d3f
    jge short @..local.l157          ; 0x2d43
    mov ax, word [bp - 0x0022]       ; 0x2d45
    shl ax, 1                        ; 0x2d48
    shl ax, 1                        ; 0x2d4a
    shl ax, 1                        ; 0x2d4c
    mov bx, ax                       ; 0x2d4e
    push word [bx - 0x6bbe]          ; 0x2d50
    call loc_1683                    ; 0x2d54
    pop cx                           ; 0x2d57
    mov word [bp - 0x0006], ax       ; 0x2d58
    cmp ax, strict word 0            ; 0x2d5b
    jge short @..local.l156          ; 0x2d5e
    push ax                          ; 0x2d60
    cmp ax, strict word 0            ; 0x2d61
    pop ax                           ; 0x2d64
    jge short @..local.l155          ; 0x2d65
    neg ax                           ; 0x2d67
@..local.l155:
    mov word [bp - 0x0006], ax       ; 0x2d69
@..local.l156:
    cmp word [bp - 0x0006], byte 0   ; 0x2d6c
    jle short @..local.l157          ; 0x2d70
    mov ax, 1                        ; 0x2d72
    push ax                          ; 0x2d75
    mov ax, word [bp - 0x0022]       ; 0x2d76
    shl ax, 1                        ; 0x2d79
    shl ax, 1                        ; 0x2d7b
    shl ax, 1                        ; 0x2d7d
    mov bx, ax                       ; 0x2d7f
    mov al, byte [bx - 0x6bb8]       ; 0x2d81
    sub ah, ah                       ; 0x2d85
    push ax                          ; 0x2d87
    mov ax, 0x78                     ; 0x2d88
    imul word [bp - 0x0016]          ; 0x2d8b
    mov cx, ax                       ; 0x2d8e
    mov ax, 0xc                      ; 0x2d90
    imul word [bp - 0x0018]          ; 0x2d93
    add cx, ax                       ; 0x2d96
    mov ax, word [bp - 0x0014]       ; 0x2d98
    add ax, cx                       ; 0x2d9b
    add ax, strict word 0x40         ; 0x2d9d
    push ax                          ; 0x2da0
    push word [bp - 0x0006]          ; 0x2da1
    push word [data_69c8]            ; 0x2da4
    call api_idx_004c                ; 0x2da8
    add sp, byte 0x0a                ; 0x2dab
@..local.l157:
    inc word [data_69c8]             ; 0x2dae
    inc word [bp - 0x0002]           ; 0x2db2
@..local.l158:
    mov ax, word [bp - 0x0002]       ; 0x2db5
    cmp ax, word [data_9400]         ; 0x2db8
    jge short @..local.l159          ; 0x2dbc
    jmp near @..local.l92            ; 0x2dbe
@..local.l159:
    push word [bp - 0x000a]          ; 0x2dc1
    call ds_dispatch_fda5            ; 0x2dc4
    pop cx                           ; 0x2dc7
    mov word [bp - 0x001a], 0xffff   ; 0x2dc8
    mov word [bp - 0x0004], 0        ; 0x2dcd
    jmp short @..local.l163          ; 0x2dd2
@..local.l160:
    mov word [bp - 0x0006], 0        ; 0x2dd4
@..local.l161:
    push word [bp - 0x0006]          ; 0x2dd9
    mov ax, 0x248                    ; 0x2ddc
    imul word [bp - 0x0004]          ; 0x2ddf
    add ax, 0x5e26                   ; 0x2de2
    push ax                          ; 0x2de5
    call ds_dispatch_ec74            ; 0x2de6
    add sp, byte 4                   ; 0x2de9
    test ax, ax                      ; 0x2dec
    je short @..local.l162           ; 0x2dee
    mov ax, word [bp - 0x0006]       ; 0x2df0
    mov word [bp - 0x001a], ax       ; 0x2df3
@..local.l162:
    inc word [bp - 0x0006]           ; 0x2df6
    mov ax, word [bp - 0x0006]       ; 0x2df9
    cmp ax, strict word 3            ; 0x2dfc
    jl short @..local.l161           ; 0x2dff
    inc word [bp - 0x0004]           ; 0x2e01
@..local.l163:
    mov ax, word [bp - 0x0004]       ; 0x2e04
    cmp ax, word [data_69c8]         ; 0x2e07
    jl short @..local.l160           ; 0x2e0b
    mov ax, word [bp - 0x001a]       ; 0x2e0d
    jmp near @..local.l168           ; 0x2e10
@..local.l164:
    mov word [data_8f46], 0x5c       ; 0x2e13
    mov word [data_8f44], 0x4f       ; 0x2e19
    mov word [data_8f42], 4          ; 0x2e1f
    mov word [data_8f40], 7          ; 0x2e25
    mov word [data_8f3e], 3          ; 0x2e2b
    mov word [data_82ee], data_0002  ; 0x2e31
    mov word [data_830c], 0          ; 0x2e37
    mov word [data_5c0a], 0          ; 0x2e3d
    mov word [data_5c08], 0x1388     ; 0x2e43
    mov ax, 0                        ; 0x2e49
    push ax                          ; 0x2e4c
    mov ax, 0x5a                     ; 0x2e4d
    push ax                          ; 0x2e50
    mov ax, 0x14                     ; 0x2e51
    push ax                          ; 0x2e54
    mov ax, 0xffec                   ; 0x2e55
    push ax                          ; 0x2e58
    mov ax, 0                        ; 0x2e59
    push ax                          ; 0x2e5c
    push ax                          ; 0x2e5d
    mov ax, 0xa                      ; 0x2e5e
    push ax                          ; 0x2e61
    push ax                          ; 0x2e62
    mov ax, 0xffec                   ; 0x2e63
    push ax                          ; 0x2e66
    mov ax, 0xffa6                   ; 0x2e67
    push ax                          ; 0x2e6a
    call loc_1f0e                    ; 0x2e6b
    add sp, byte 0x14                ; 0x2e6e
    mov word [data_95b2], 1          ; 0x2e71
    jmp near @..local.l171           ; 0x2e77
@..local.l165:
    mov word [data_8f46], 0x8c       ; 0x2e7a
    mov word [data_8f44], 0x7d       ; 0x2e80
    mov word [data_8f42], 4          ; 0x2e86
    mov word [data_8f40], 5          ; 0x2e8c
    mov word [data_8f3e], 0xb        ; 0x2e92
    mov word [data_82ee], 3          ; 0x2e98
    mov word [data_830c], 6          ; 0x2e9e
    mov word [data_5c0a], 0          ; 0x2ea4
    mov word [data_5c08], 0x2710     ; 0x2eaa
    mov ax, 0x5a                     ; 0x2eb0
    push ax                          ; 0x2eb3
    mov ax, 0                        ; 0x2eb4
    push ax                          ; 0x2eb7
    mov ax, 0xa                      ; 0x2eb8
    push ax                          ; 0x2ebb
    push ax                          ; 0x2ebc
    mov ax, 0                        ; 0x2ebd
    push ax                          ; 0x2ec0
    mov ax, 0xa                      ; 0x2ec1
    push ax                          ; 0x2ec4
    mov ax, 0xffd8                   ; 0x2ec5
    push ax                          ; 0x2ec8
    mov ax, data_0028                ; 0x2ec9
    push ax                          ; 0x2ecc
    mov ax, 0xffa6                   ; 0x2ecd
    push ax                          ; 0x2ed0
    mov ax, 0xffce                   ; 0x2ed1
    push ax                          ; 0x2ed4
    call loc_1f0e                    ; 0x2ed5
    add sp, byte 0x14                ; 0x2ed8
    mov word [data_95b2], data_0002  ; 0x2edb
    jmp near @..local.l171           ; 0x2ee1
@..local.l166:
    mov word [data_8f46], 0x6e       ; 0x2ee4
    mov word [data_8f44], 0x8e       ; 0x2eea
    mov word [data_8f42], 6          ; 0x2ef0
    mov word [data_8f40], 6          ; 0x2ef6
    mov word [data_8f3e], 1          ; 0x2efc
    mov word [data_82ee], data_0002  ; 0x2f02
    mov word [data_830c], data_0002  ; 0x2f08
    mov ax, 0xffa6                   ; 0x2f0e
    push ax                          ; 0x2f11
    push ax                          ; 0x2f12
    mov ax, 0                        ; 0x2f13
    push ax                          ; 0x2f16
    mov ax, 0x14                     ; 0x2f17
    push ax                          ; 0x2f1a
    mov ax, 0xffec                   ; 0x2f1b
    push ax                          ; 0x2f1e
    mov ax, 0xffce                   ; 0x2f1f
    push ax                          ; 0x2f22
    mov ax, 0x19                     ; 0x2f23
    push ax                          ; 0x2f26
    mov ax, 0xffa1                   ; 0x2f27
    push ax                          ; 0x2f2a
    mov ax, 0x23                     ; 0x2f2b
    push ax                          ; 0x2f2e
    mov ax, 0                        ; 0x2f2f
    push ax                          ; 0x2f32
    call loc_1f0e                    ; 0x2f33
    add sp, byte 0x14                ; 0x2f36
    mov word [data_95b2], 3          ; 0x2f39
    jmp short @..local.l171          ; 0x2f3f
@..local.l167:
    mov word [data_95b2], 4          ; 0x2f41
    jmp short @..local.l171          ; 0x2f47
@..local.l168:
    cmp ax, strict word 0xffff       ; 0x2f49
    je short @..local.l167           ; 0x2f4c
    cmp ax, strict word 0            ; 0x2f4e
    jne short @..local.l169          ; 0x2f51
    jmp near @..local.l164           ; 0x2f53
@..local.l169:
    cmp ax, strict word 1            ; 0x2f56
    jne short @..local.l170          ; 0x2f59
    jmp near @..local.l165           ; 0x2f5b
@..local.l170:
    cmp ax, strict word 2            ; 0x2f5e
    je short @..local.l166           ; 0x2f61
@..local.l171:
    cmp word [bp - 0x001a], byte 0xff ; 0x2f63
    jne short @..local.l172          ; 0x2f67
    jmp near @..local.l173           ; 0x2f69
@..local.l172:
    mov ax, 1                        ; 0x2f6c
    push ax                          ; 0x2f6f
    push ax                          ; 0x2f70
    mov ax, 0x5642                   ; 0x2f71
    push ax                          ; 0x2f74
    call ds_dispatch_ec41            ; 0x2f75
    add sp, byte 6                   ; 0x2f78
    mov ax, 1                        ; 0x2f7b
    push ax                          ; 0x2f7e
    mov ax, data_0002                ; 0x2f7f
    push ax                          ; 0x2f82
    mov ax, 0x5642                   ; 0x2f83
    push ax                          ; 0x2f86
    call ds_dispatch_ec41            ; 0x2f87
    add sp, byte 6                   ; 0x2f8a
    mov ax, 0                        ; 0x2f8d
    push ax                          ; 0x2f90
    mov ax, 0x14                     ; 0x2f91
    push ax                          ; 0x2f94
    mov ax, word [data_830c]         ; 0x2f95
    mov cx, 4                        ; 0x2f98
    shl ax, cl                       ; 0x2f9b
    add ax, 0x5642                   ; 0x2f9d
    push ax                          ; 0x2fa0
    call ds_dispatch_ec41            ; 0x2fa1
    add sp, byte 6                   ; 0x2fa4
    mov ax, 0                        ; 0x2fa7
    push ax                          ; 0x2faa
    mov ax, 0x15                     ; 0x2fab
    push ax                          ; 0x2fae
    mov ax, word [data_830c]         ; 0x2faf
    mov cx, 4                        ; 0x2fb2
    shl ax, cl                       ; 0x2fb5
    add ax, 0x5642                   ; 0x2fb7
    push ax                          ; 0x2fba
    call ds_dispatch_ec41            ; 0x2fbb
    add sp, byte 6                   ; 0x2fbe
    mov ax, word [data_8f46]         ; 0x2fc1
    mov word [data_8f3a], ax         ; 0x2fc4
    mov ax, word [data_8f44]         ; 0x2fc7
    mov word [data_8f38], ax         ; 0x2fca
    mov ax, word [data_8f42]         ; 0x2fcd
    mov word [data_8f36], ax         ; 0x2fd0
    mov ax, word [data_8f40]         ; 0x2fd3
    mov word [data_8f34], ax         ; 0x2fd6
    mov ax, word [data_8f3e]         ; 0x2fd9
    mov word [data_8f32], ax         ; 0x2fdc
    mov ax, word [data_82ee]         ; 0x2fdf
    mov word [data_8f30], ax         ; 0x2fe2
    mov ax, word [data_830c]         ; 0x2fe5
    mov word [data_8f3c], ax         ; 0x2fe8
@..local.l173:
    mov ax, 0                        ; 0x2feb
    ret                              ; 0x2fee
api_idx_0038_2:
    mov ax, 0xffc8                   ; 0x2fef
    call ds_dispatch_f40b            ; 0x2ff2
    mov word [bp - 0x000c], 0        ; 0x2ff5
    mov ax, word [data_5218]         ; 0x2ffa
    mov word [bp - 0x000e], ax       ; 0x2ffd
    cmp byte [data_5987], 5          ; 0x3000
    jne short @..api_idx_0038_2.l1   ; 0x3005
    cmp ax, strict word 0            ; 0x3007
    jle short @..api_idx_0038_2.l1   ; 0x300a
    inc ax                           ; 0x300c
    inc ax                           ; 0x300d
    jmp short @..api_idx_0038_2.l2   ; 0x300e
@..api_idx_0038_2.l1:
    mov ax, word [bp - 0x000e]       ; 0x3010
@..api_idx_0038_2.l2:
    mov word [bp - 0x000e], ax       ; 0x3013
    mov ax, 0                        ; 0x3016
    push ax                          ; 0x3019
    call ds_dispatch_ef14            ; 0x301a
    pop cx                           ; 0x301d
    lea ax, word [bp - 0x0024]       ; 0x301e
    push ax                          ; 0x3021
    mov ax, 0x58c                    ; 0x3022
    push ax                          ; 0x3025
    call ds_dispatch_b53b            ; 0x3026
    add sp, byte 4                   ; 0x3029
    lea ax, word [bp - 0x0038]       ; 0x302c
    push ax                          ; 0x302f
    mov ax, 0x58d                    ; 0x3030
    push ax                          ; 0x3033
    call ds_dispatch_b53b            ; 0x3034
    add sp, byte 4                   ; 0x3037
    mov word [bp - 0x0010], 1        ; 0x303a
    cmp word [bp + 0x4], byte 0      ; 0x303f
    je short @..api_idx_0038_2.l3    ; 0x3043
    mov ax, word [bp + 0x4]          ; 0x3045
    cmp ax, strict word 2            ; 0x3048
    jne short @..api_idx_0038_2.l4   ; 0x304b
@..api_idx_0038_2.l3:
    mov word [data_95b2], 4          ; 0x304d
    mov ax, 1                        ; 0x3053
    push ax                          ; 0x3056
    mov ax, 0x90cf                   ; 0x3057
    push ax                          ; 0x305a
    call ds_dispatch_d161            ; 0x305b
    add sp, byte 4                   ; 0x305e
    push ax                          ; 0x3061
    mov ax, 0x91ee                   ; 0x3062
    push ax                          ; 0x3065
    call ds_dispatch_f364            ; 0x3066
    add sp, byte 4                   ; 0x3069
    jmp near @..local.l182           ; 0x306c
@..api_idx_0038_2.l4:
    mov word [data_95b2], 0          ; 0x306f
    mov ax, 0x594e                   ; 0x3075
    push ax                          ; 0x3078
    mov ax, 0x593a                   ; 0x3079
    push ax                          ; 0x307c
    mov ax, 1                        ; 0x307d
    push ax                          ; 0x3080
    push ax                          ; 0x3081
    mov ax, 0                        ; 0x3082
    push ax                          ; 0x3085
    mov ax, 0x578                    ; 0x3086
    push ax                          ; 0x3089
    call api_idx_0028                ; 0x308a
    add sp, byte 0x0c                ; 0x308d
    cmp ax, strict word 2            ; 0x3090
    jne short @..local.l174          ; 0x3093
    mov ax, 0xffff                   ; 0x3095
    ret                              ; 0x3098
@..local.l174:
    mov ax, 0x3a                     ; 0x3099
    push ax                          ; 0x309c
    mov ax, 0x5912                   ; 0x309d
    push ax                          ; 0x30a0
    mov ax, 0x91c6                   ; 0x30a1
    push ax                          ; 0x30a4
    db 0xe8, 0x6a, 0xa0 ; call 0xd112
    add sp, byte 6                   ; 0x30a8
    mov ax, 0x3a                     ; 0x30ab
    push ax                          ; 0x30ae
    mov ax, 0x593a                   ; 0x30af
    push ax                          ; 0x30b2
    mov ax, 0x91da                   ; 0x30b3
    push ax                          ; 0x30b6
    db 0xe8, 0x58, 0xa0 ; call 0xd112
    add sp, byte 6                   ; 0x30ba
    mov ax, 0x593a                   ; 0x30bd
    push ax                          ; 0x30c0
    mov ax, 0x91ee                   ; 0x30c1
    push ax                          ; 0x30c4
    call ds_dispatch_f364            ; 0x30c5
    add sp, byte 4                   ; 0x30c8
    mov ax, 0x91ee                   ; 0x30cb
    push ax                          ; 0x30ce
    call ds_dispatch_fa90            ; 0x30cf
    pop cx                           ; 0x30d2
    cmp ax, strict word 0            ; 0x30d3
    jle short @..local.l175          ; 0x30d6
    mov ax, 0x91ee                   ; 0x30d8
    push ax                          ; 0x30db
    call ds_dispatch_fa90            ; 0x30dc
    pop cx                           ; 0x30df
    dec ax                           ; 0x30e0
    mov word [bp - 0x0002], ax       ; 0x30e1
    mov bx, ax                       ; 0x30e4
    cmp byte [bx - 0x6e12], 0x5c     ; 0x30e6
    je short @..local.l175           ; 0x30eb
    mov byte [bx - 0x6e11], 0x5c     ; 0x30ed
    mov byte [bx - 0x6e10], 0        ; 0x30f2
@..local.l175:
    mov ax, 0x594e                   ; 0x30f7
    push ax                          ; 0x30fa
    mov ax, 0x91ee                   ; 0x30fb
    push ax                          ; 0x30fe
    call ds_dispatch_f32d            ; 0x30ff
    add sp, byte 4                   ; 0x3102
    cmp byte [data_5987], 1          ; 0x3105
    jne short @..local.l176          ; 0x310a
    mov ax, 0x91da                   ; 0x310c
    push ax                          ; 0x310f
    mov ax, 0x91c6                   ; 0x3110
    push ax                          ; 0x3113
    call string_loc_9386             ; 0x3114
    add sp, byte 4                   ; 0x3117
    test ax, ax                      ; 0x311a
    jne short @..local.l176          ; 0x311c
    jmp near @..local.l182           ; 0x311e
@..local.l176:
    mov ax, 0x91da                   ; 0x3121
    push ax                          ; 0x3124
    call ds_dispatch_fa90            ; 0x3125
    pop cx                           ; 0x3128
    cmp ax, strict word 0            ; 0x3129
    jle short @..local.l180          ; 0x312c
    mov ax, 0x91da                   ; 0x312e
    push ax                          ; 0x3131
    mov ax, 0x91c6                   ; 0x3132
    push ax                          ; 0x3135
    call string_loc_9386             ; 0x3136
    add sp, byte 4                   ; 0x3139
    test ax, ax                      ; 0x313c
    je short @..local.l177           ; 0x313e
    cmp byte [data_5987], 5          ; 0x3140
    jne short @..local.l178          ; 0x3145
@..local.l177:
    mov word [bp - 0x000c], 1        ; 0x3147
@..local.l178:
    mov ax, 0                        ; 0x314c
    push ax                          ; 0x314f
    push word [bp - 0x000c]          ; 0x3150
    mov ax, 0xffff                   ; 0x3153
    push ax                          ; 0x3156
    mov ax, 0x91da                   ; 0x3157
    push ax                          ; 0x315a
    db 0xe8, 0x4a, 0xa0 ; call 0xd1a8
    add sp, byte 8                   ; 0x315e
    mov ax, 1                        ; 0x3161
    cmp word [bp - 0x000c], byte 0   ; 0x3164
    je short @..local.l179           ; 0x3168
    mov ax, 0                        ; 0x316a
@..local.l179:
    mov word [bp - 0x0010], ax       ; 0x316d
    jmp short @..local.l182          ; 0x3170
@..local.l180:
    cmp byte [data_5987], 1          ; 0x3172
    jbe short @..local.l182          ; 0x3177
    mov word [bp - 0x000c], 1        ; 0x3179
    mov ax, 0                        ; 0x317e
    push ax                          ; 0x3181
    push word [bp - 0x000c]          ; 0x3182
    mov ax, 0xffff                   ; 0x3185
    push ax                          ; 0x3188
    mov ax, 0x91c6                   ; 0x3189
    push ax                          ; 0x318c
    db 0xe8, 0x18, 0xa0 ; call 0xd1a8
    add sp, byte 8                   ; 0x3190
    mov ax, 1                        ; 0x3193
    cmp word [bp - 0x000c], byte 0   ; 0x3196
    je short @..local.l181           ; 0x319a
    mov ax, 0                        ; 0x319c
@..local.l181:
    mov word [bp - 0x0010], ax       ; 0x319f
@..local.l182:
    cmp word [bp + 0x4], byte 2      ; 0x31a2
    je short @..local.l183           ; 0x31a6
    mov ax, 0xc7                     ; 0x31a8
    push ax                          ; 0x31ab
    mov ax, 0x13f                    ; 0x31ac
    push ax                          ; 0x31af
    mov ax, 0                        ; 0x31b0
    push ax                          ; 0x31b3
    push ax                          ; 0x31b4
    call ds_dispatch_e8da            ; 0x31b5
    add sp, byte 8                   ; 0x31b8
@..local.l183:
    mov ax, 0                        ; 0x31bb
    push ax                          ; 0x31be
    mov ax, 0x91ee                   ; 0x31bf
    push ax                          ; 0x31c2
    call ds_dispatch_f909            ; 0x31c3
    add sp, byte 4                   ; 0x31c6
    mov word [bp - 0x000a], ax       ; 0x31c9
    cmp ax, strict word 0xffff       ; 0x31cc
    jne short @..local.l185          ; 0x31cf
    lea ax, word [bp - 0x0024]       ; 0x31d1
    push ax                          ; 0x31d4
    call loc_150d                    ; 0x31d5
    pop cx                           ; 0x31d8
    cmp word [bp - 0x000c], byte 0   ; 0x31d9
    je short @..local.l184           ; 0x31dd
    mov ax, 1                        ; 0x31df
    push ax                          ; 0x31e2
    push word [bp - 0x0010]          ; 0x31e3
    push word [bp - 0x000e]          ; 0x31e6
    mov ax, 0x91c6                   ; 0x31e9
    push ax                          ; 0x31ec
    db 0xe8, 0xb8, 0x9f ; call 0xd1a8
    add sp, byte 8                   ; 0x31f0
@..local.l184:
    mov ax, 0xffff                   ; 0x31f3
    ret                              ; 0x31f6
@..local.l185:
    cmp word [bp + 0x4], byte 0      ; 0x31f7
    je short @..local.l186           ; 0x31fb
    mov ax, word [bp + 0x4]          ; 0x31fd
    cmp ax, strict word 2            ; 0x3200
    jne short @..local.l187          ; 0x3203
@..local.l186:
    jmp short @..local.l188          ; 0x3205
@..local.l187:
    mov ax, 0xc7                     ; 0x3207
    push ax                          ; 0x320a
    mov ax, 0x13f                    ; 0x320b
    push ax                          ; 0x320e
    mov ax, 0                        ; 0x320f
    push ax                          ; 0x3212
    push ax                          ; 0x3213
    call ds_dispatch_e8da            ; 0x3214
    add sp, byte 8                   ; 0x3217
    mov ax, 1                        ; 0x321a
    push ax                          ; 0x321d
    mov ax, 0xd                      ; 0x321e
    push ax                          ; 0x3221
    mov ax, 0x12                     ; 0x3222
    push ax                          ; 0x3225
    mov ax, 0x24                     ; 0x3226
    push ax                          ; 0x3229
    mov ax, 0x61                     ; 0x322a
    push ax                          ; 0x322d
    mov ax, 3                        ; 0x322e
    push ax                          ; 0x3231
    lea ax, word [bp - 0x0038]       ; 0x3232
    push ax                          ; 0x3235
    call api_idx_0004                ; 0x3236
    add sp, byte 0x0e                ; 0x3239
@..local.l188:
    mov si, 0x5642                   ; 0x323c
    mov di, 0x95b4                   ; 0x323f
    mov cx, ds                       ; 0x3242
    mov es, cx                       ; 0x3244
    mov cx, 0x1a6                    ; 0x3246
    rep movsw                        ; 0x3249
    mov ax, 0                        ; 0x324b
    push ax                          ; 0x324e
    mov ax, 0                        ; 0x324f
    mov dx, 0                        ; 0x3252
    push dx                          ; 0x3255
    push ax                          ; 0x3256
    push word [bp - 0x000a]          ; 0x3257
    call ds_dispatch_fdbd            ; 0x325a
    add sp, byte 8                   ; 0x325d
    mov ax, 0x34c                    ; 0x3260
    push ax                          ; 0x3263
    mov ax, 0x5642                   ; 0x3264
    push ax                          ; 0x3267
    push word [bp - 0x000a]          ; 0x3268
    call ds_dispatch_fd6f            ; 0x326b
    add sp, byte 6                   ; 0x326e
    mov word [bp - 0x0008], ax       ; 0x3271
    cmp ax, strict word 0            ; 0x3274
    jg short @..local.l190           ; 0x3277
    lea ax, word [bp - 0x0024]       ; 0x3279
    push ax                          ; 0x327c
    call loc_150d                    ; 0x327d
    pop cx                           ; 0x3280
    push word [bp - 0x000a]          ; 0x3281
    call ds_dispatch_fda5            ; 0x3284
    pop cx                           ; 0x3287
    cmp word [bp - 0x000c], byte 0   ; 0x3288
    je short @..local.l189           ; 0x328c
    mov ax, 1                        ; 0x328e
    push ax                          ; 0x3291
    push word [bp - 0x0010]          ; 0x3292
    push word [bp - 0x000e]          ; 0x3295
    mov ax, 0x91c6                   ; 0x3298
    push ax                          ; 0x329b
    db 0xe8, 0x09, 0x9f ; call 0xd1a8
    add sp, byte 8                   ; 0x329f
@..local.l189:
    mov ax, 0xffff                   ; 0x32a2
    ret                              ; 0x32a5
@..local.l190:
    mov word [bp - 0x0002], 0        ; 0x32a6
@..local.l191:
    mov ax, 0x14                     ; 0x32ab
    imul word [bp - 0x0002]          ; 0x32ae
    add ax, 0x9884                   ; 0x32b1
    push ax                          ; 0x32b4
    mov ax, 0x14                     ; 0x32b5
    imul word [bp - 0x0002]          ; 0x32b8
    add ax, 0x5912                   ; 0x32bb
    push ax                          ; 0x32be
    call ds_dispatch_f364            ; 0x32bf
    add sp, byte 4                   ; 0x32c2
    inc word [bp - 0x0002]           ; 0x32c5
    mov ax, word [bp - 0x0002]       ; 0x32c8
    cmp ax, strict word 4            ; 0x32cb
    jl short @..local.l191           ; 0x32ce
    mov al, byte [data_98d4]         ; 0x32d0
    mov byte [data_5962], al         ; 0x32d3
    mov al, byte [data_98d5]         ; 0x32d6
    mov byte [data_5963], al         ; 0x32d9
    mov ax, 0x98d6                   ; 0x32dc
    push ax                          ; 0x32df
    mov ax, 0x5964                   ; 0x32e0
    push ax                          ; 0x32e3
    call ds_dispatch_f364            ; 0x32e4
    add sp, byte 4                   ; 0x32e7
    mov al, byte [data_98ea]         ; 0x32ea
    mov byte [data_5978], al         ; 0x32ed
    mov al, byte [data_98eb]         ; 0x32f0
    mov byte [data_5979], al         ; 0x32f3
    mov word [bp - 0x0002], 0        ; 0x32f6
@..local.l192:
    mov bx, word [bp - 0x0002]       ; 0x32fb
    mov al, byte [bx - 0x6712]       ; 0x32fe
    mov byte [bx + 0x597c], al       ; 0x3302
    inc word [bp - 0x0002]           ; 0x3306
    mov ax, word [bp - 0x0002]       ; 0x3309
    cmp ax, strict word 4            ; 0x330c
    jl short @..local.l192           ; 0x330f
    mov al, byte [data_98f6]         ; 0x3311
    mov byte [data_5984], al         ; 0x3314
    mov al, byte [data_98f7]         ; 0x3317
    mov byte [data_5985], al         ; 0x331a
    mov ax, word [data_98f2]         ; 0x331d
    mov word [data_5980], ax         ; 0x3320
    mov ax, word [data_98f4]         ; 0x3323
    mov word [data_5982], ax         ; 0x3326
    mov al, byte [data_98f8]         ; 0x3329
    mov byte [data_5986], al         ; 0x332c
    mov al, byte [data_98f9]         ; 0x332f
    mov byte [data_5987], al         ; 0x3332
    mov al, byte [data_98fa]         ; 0x3335
    mov byte [data_5988], al         ; 0x3338
    mov al, byte [data_98fb]         ; 0x333b
    mov byte [data_5989], al         ; 0x333e
    mov al, byte [data_98fc]         ; 0x3341
    mov byte [data_598a], al         ; 0x3344
    mov al, byte [data_98fd]         ; 0x3347
    mov byte [data_598b], al         ; 0x334a
    mov al, byte [data_98fe]         ; 0x334d
    mov byte [data_598c], al         ; 0x3350
    mov al, byte [data_5986]         ; 0x3353
    sub ah, ah                       ; 0x3356
    mov word [data_9058], ax         ; 0x3358
    mov ax, 6                        ; 0x335b
    imul word [data_590e]            ; 0x335e
    mov word [bp - 0x0006], ax       ; 0x3362
    cmp ax, strict word 0            ; 0x3365
    jle short @..local.l194          ; 0x3368
    push ax                          ; 0x336a
    push word [data_0e10]            ; 0x336b
    push word [bp - 0x000a]          ; 0x336f
    call ds_dispatch_fd6f            ; 0x3372
    add sp, byte 6                   ; 0x3375
    mov word [bp - 0x0008], ax       ; 0x3378
    cmp ax, strict word 0            ; 0x337b
    jg short @..local.l194           ; 0x337e
    lea ax, word [bp - 0x0024]       ; 0x3380
    push ax                          ; 0x3383
    call loc_150d                    ; 0x3384
    pop cx                           ; 0x3387
    push word [bp - 0x000a]          ; 0x3388
    call ds_dispatch_fda5            ; 0x338b
    pop cx                           ; 0x338e
    cmp word [bp - 0x000c], byte 0   ; 0x338f
    je short @..local.l193           ; 0x3393
    mov ax, 1                        ; 0x3395
    push ax                          ; 0x3398
    push word [bp - 0x0010]          ; 0x3399
    push word [bp - 0x000e]          ; 0x339c
    mov ax, 0x91c6                   ; 0x339f
    push ax                          ; 0x33a2
    db 0xe8, 0x02, 0x9e ; call 0xd1a8
    add sp, byte 8                   ; 0x33a6
@..local.l193:
    mov ax, 0xffff                   ; 0x33a9
    ret                              ; 0x33ac
@..local.l194:
    mov ax, word [data_5910]         ; 0x33ad
    shl ax, 1                        ; 0x33b0
    shl ax, 1                        ; 0x33b2
    shl ax, 1                        ; 0x33b4
    mov word [bp - 0x0006], ax       ; 0x33b6
    cmp ax, strict word 0            ; 0x33b9
    jle short @..local.l196          ; 0x33bc
    push ax                          ; 0x33be
    push word [data_0e0e]            ; 0x33bf
    push word [bp - 0x000a]          ; 0x33c3
    call ds_dispatch_fd6f            ; 0x33c6
    add sp, byte 6                   ; 0x33c9
    mov word [bp - 0x0008], ax       ; 0x33cc
    cmp ax, strict word 0            ; 0x33cf
    jg short @..local.l196           ; 0x33d2
    lea ax, word [bp - 0x0024]       ; 0x33d4
    push ax                          ; 0x33d7
    call loc_150d                    ; 0x33d8
    pop cx                           ; 0x33db
    push word [bp - 0x000a]          ; 0x33dc
    call ds_dispatch_fda5            ; 0x33df
    pop cx                           ; 0x33e2
    cmp word [bp - 0x000c], byte 0   ; 0x33e3
    je short @..local.l195           ; 0x33e7
    mov ax, 1                        ; 0x33e9
    push ax                          ; 0x33ec
    push word [bp - 0x0010]          ; 0x33ed
    push word [bp - 0x000e]          ; 0x33f0
    mov ax, 0x91c6                   ; 0x33f3
    push ax                          ; 0x33f6
    db 0xe8, 0xae, 0x9d ; call 0xd1a8
    add sp, byte 8                   ; 0x33fa
@..local.l195:
    mov ax, 0xffff                   ; 0x33fd
    ret                              ; 0x3400
@..local.l196:
    mov word [bp - 0x0004], 0        ; 0x3401
@..local.l197:
    mov ax, 0x80                     ; 0x3406
    push ax                          ; 0x3409
    mov ax, 0x9900                   ; 0x340a
    push ax                          ; 0x340d
    push word [bp - 0x000a]          ; 0x340e
    call ds_dispatch_fd6f            ; 0x3411
    add sp, byte 6                   ; 0x3414
    mov word [bp - 0x0008], ax       ; 0x3417
    cmp ax, strict word 0            ; 0x341a
    jg short @..local.l199           ; 0x341d
    lea ax, word [bp - 0x0024]       ; 0x341f
    push ax                          ; 0x3422
    call loc_150d                    ; 0x3423
    pop cx                           ; 0x3426
    push word [bp - 0x000a]          ; 0x3427
    call ds_dispatch_fda5            ; 0x342a
    pop cx                           ; 0x342d
    cmp word [bp - 0x000c], byte 0   ; 0x342e
    je short @..local.l198           ; 0x3432
    mov ax, 1                        ; 0x3434
    push ax                          ; 0x3437
    push word [bp - 0x0010]          ; 0x3438
    push word [bp - 0x000e]          ; 0x343b
    mov ax, 0x91c6                   ; 0x343e
    push ax                          ; 0x3441
    db 0xe8, 0x63, 0x9d ; call 0xd1a8
    add sp, byte 8                   ; 0x3445
@..local.l198:
    mov ax, 0xffff                   ; 0x3448
    ret                              ; 0x344b
@..local.l199:
    mov ax, 0x80                     ; 0x344c
    push ax                          ; 0x344f
    mov ax, 0x9980                   ; 0x3450
    push ax                          ; 0x3453
    push word [bp - 0x000a]          ; 0x3454
    call ds_dispatch_fd6f            ; 0x3457
    add sp, byte 6                   ; 0x345a
    mov word [bp - 0x0008], ax       ; 0x345d
    cmp ax, strict word 0            ; 0x3460
    jg short @..local.l201           ; 0x3463
    lea ax, word [bp - 0x0024]       ; 0x3465
    push ax                          ; 0x3468
    call loc_150d                    ; 0x3469
    pop cx                           ; 0x346c
    push word [bp - 0x000a]          ; 0x346d
    call ds_dispatch_fda5            ; 0x3470
    pop cx                           ; 0x3473
    cmp word [bp - 0x000c], byte 0   ; 0x3474
    je short @..local.l200           ; 0x3478
    mov ax, 1                        ; 0x347a
    push ax                          ; 0x347d
    push word [bp - 0x0010]          ; 0x347e
    push word [bp - 0x000e]          ; 0x3481
    mov ax, 0x91c6                   ; 0x3484
    push ax                          ; 0x3487
    db 0xe8, 0x1d, 0x9d ; call 0xd1a8
    add sp, byte 8                   ; 0x348b
@..local.l200:
    mov ax, 0xffff                   ; 0x348e
    ret                              ; 0x3491
@..local.l201:
    mov ax, 0x80                     ; 0x3492
    push ax                          ; 0x3495
    mov ax, word [bp - 0x0004]       ; 0x3496
    mov cx, 7                        ; 0x3499
    shl ax, cl                       ; 0x349c
    mov cx, ax                       ; 0x349e
    mov ax, word [data_0e1a]         ; 0x34a0
    mov dx, word [data_0e1c]         ; 0x34a3
    add ax, cx                       ; 0x34a7
    push dx                          ; 0x34a9
    push ax                          ; 0x34aa
    push ds                          ; 0x34ab
    mov ax, 0x9900                   ; 0x34ac
    push ax                          ; 0x34af
    call ds_dispatch_afcc            ; 0x34b0
    add sp, byte 0x0a                ; 0x34b3
    mov ax, 0x80                     ; 0x34b6
    push ax                          ; 0x34b9
    mov ax, word [bp - 0x0004]       ; 0x34ba
    mov cx, 7                        ; 0x34bd
    shl ax, cl                       ; 0x34c0
    mov cx, ax                       ; 0x34c2
    mov ax, word [data_0e16]         ; 0x34c4
    mov dx, word [data_0e18]         ; 0x34c7
    add ax, cx                       ; 0x34cb
    push dx                          ; 0x34cd
    push ax                          ; 0x34ce
    push ds                          ; 0x34cf
    mov ax, 0x9980                   ; 0x34d0
    push ax                          ; 0x34d3
    call ds_dispatch_afcc            ; 0x34d4
    add sp, byte 0x0a                ; 0x34d7
    inc word [bp - 0x0004]           ; 0x34da
    mov ax, word [bp - 0x0004]       ; 0x34dd
    cmp ax, strict word 0x20         ; 0x34e0
    jge short @..local.l202          ; 0x34e3
    jmp near @..local.l197           ; 0x34e5
@..local.l202:
    mov ax, 0x4c                     ; 0x34e8
    push ax                          ; 0x34eb
    mov ax, data_9a00                ; 0x34ec
    push ax                          ; 0x34ef
    push word [bp - 0x000a]          ; 0x34f0
    call ds_dispatch_fd6f            ; 0x34f3
    add sp, byte 6                   ; 0x34f6
    mov word [bp - 0x0008], ax       ; 0x34f9
    cmp ax, strict word 0            ; 0x34fc
    jg short @..local.l204           ; 0x34ff
    lea ax, word [bp - 0x0024]       ; 0x3501
    push ax                          ; 0x3504
    call loc_150d                    ; 0x3505
    pop cx                           ; 0x3508
    push word [bp - 0x000a]          ; 0x3509
    call ds_dispatch_fda5            ; 0x350c
    pop cx                           ; 0x350f
    cmp word [bp - 0x000c], byte 0   ; 0x3510
    je short @..local.l203           ; 0x3514
    mov ax, 1                        ; 0x3516
    push ax                          ; 0x3519
    push word [bp - 0x0010]          ; 0x351a
    push word [bp - 0x000e]          ; 0x351d
    mov ax, 0x91c6                   ; 0x3520
    push ax                          ; 0x3523
    db 0xe8, 0x81, 0x9c ; call 0xd1a8
    add sp, byte 8                   ; 0x3527
@..local.l203:
    mov ax, 0xffff                   ; 0x352a
    ret                              ; 0x352d
@..local.l204:
    cmp word [data_9a00], byte 0xff  ; 0x352e
    jne short @..local.l206          ; 0x3533
    lea ax, word [bp - 0x0024]       ; 0x3535
    push ax                          ; 0x3538
    call loc_150d                    ; 0x3539
    pop cx                           ; 0x353c
    push word [bp - 0x000a]          ; 0x353d
    call ds_dispatch_fda5            ; 0x3540
    pop cx                           ; 0x3543
    cmp word [bp - 0x000c], byte 0   ; 0x3544
    je short @..local.l205           ; 0x3548
    mov ax, 1                        ; 0x354a
    push ax                          ; 0x354d
    push word [bp - 0x0010]          ; 0x354e
    push word [bp - 0x000e]          ; 0x3551
    mov ax, 0x91c6                   ; 0x3554
    push ax                          ; 0x3557
    db 0xe8, 0x4d, 0x9c ; call 0xd1a8
    add sp, byte 8                   ; 0x355b
@..local.l205:
    mov ax, 0xffff                   ; 0x355e
    ret                              ; 0x3561
@..local.l206:
    mov ax, word [data_9a02]         ; 0x3562
    mov word [data_8f46], ax         ; 0x3565
    mov ax, word [data_9a04]         ; 0x3568
    mov word [data_8f44], ax         ; 0x356b
    mov ax, word [data_9a06]         ; 0x356e
    mov word [data_8f42], ax         ; 0x3571
    mov ax, word [data_9a08]         ; 0x3574
    mov word [data_8f40], ax         ; 0x3577
    mov ax, word [data_9a0a]         ; 0x357a
    mov word [data_8f3e], ax         ; 0x357d
    mov ax, word [data_9a0c]         ; 0x3580
    mov word [data_82ee], ax         ; 0x3583
    mov ax, word [data_9a00]         ; 0x3586
    mov word [data_830c], ax         ; 0x3589
    mov ax, word [data_9a10]         ; 0x358c
    mov word [data_8f3a], ax         ; 0x358f
    mov ax, word [data_9a12]         ; 0x3592
    mov word [data_8f38], ax         ; 0x3595
    mov ax, word [data_9a14]         ; 0x3598
    mov word [data_8f36], ax         ; 0x359b
    mov ax, word [data_9a16]         ; 0x359e
    mov word [data_8f34], ax         ; 0x35a1
    mov ax, word [data_9a18]         ; 0x35a4
    mov word [data_8f32], ax         ; 0x35a7
    mov ax, word [data_9a1a]         ; 0x35aa
    mov word [data_8f30], ax         ; 0x35ad
    mov ax, word [data_9a0e]         ; 0x35b0
    mov word [data_8f3c], ax         ; 0x35b3
    mov ax, word [data_9a1c]         ; 0x35b6
    mov word [data_8f2e], ax         ; 0x35b9
    mov ax, word [data_9a1e]         ; 0x35bc
    mov word [data_8f2c], ax         ; 0x35bf
    mov ax, word [data_9a20]         ; 0x35c2
    mov word [data_8f2a], ax         ; 0x35c5
    mov ax, word [data_9a22]         ; 0x35c8
    mov word [data_8f28], ax         ; 0x35cb
    mov ax, word [data_9a24]         ; 0x35ce
    mov word [data_8f26], ax         ; 0x35d1
    mov word [bp - 0x0002], 0        ; 0x35d4
@..local.l207:
    mov ax, word [bp - 0x0002]       ; 0x35d9
    shl ax, 1                        ; 0x35dc
    shl ax, 1                        ; 0x35de
    mov bx, ax                       ; 0x35e0
    mov ax, word [bx - 0x65ce]       ; 0x35e2
    mov word [bx - 0x7d0e], ax       ; 0x35e6
    mov ax, word [bx - 0x65cc]       ; 0x35ea
    mov word [bx - 0x7d0c], ax       ; 0x35ee
    inc word [bp - 0x0002]           ; 0x35f2
    mov ax, word [bp - 0x0002]       ; 0x35f5
    cmp ax, strict word 6            ; 0x35f8
    jl short @..local.l207           ; 0x35fb
    mov ax, word [data_9a26]         ; 0x35fd
    mov dx, word [data_9a28]         ; 0x3600
    mov word [data_8f1e], dx         ; 0x3604
    mov word [data_8f1c], ax         ; 0x3608
    mov ax, word [data_9a2a]         ; 0x360b
    mov dx, word [data_9a2c]         ; 0x360e
    mov word [data_8f1a], dx         ; 0x3612
    mov word [data_8f18], ax         ; 0x3616
    mov ax, word [data_9a2e]         ; 0x3619
    mov dx, word [data_9a30]         ; 0x361c
    mov word [data_8f16], dx         ; 0x3620
    mov word [data_8f14], ax         ; 0x3624
    mov ax, 0x80                     ; 0x3627
    push ax                          ; 0x362a
    mov ax, 0x8a6e                   ; 0x362b
    push ax                          ; 0x362e
    push word [bp - 0x000a]          ; 0x362f
    call ds_dispatch_fd6f            ; 0x3632
    add sp, byte 6                   ; 0x3635
    mov word [bp - 0x0008], ax       ; 0x3638
    mov ax, 0x90                     ; 0x363b
    push ax                          ; 0x363e
    mov ax, 0x89de                   ; 0x363f
    push ax                          ; 0x3642
    push word [bp - 0x000a]          ; 0x3643
    call ds_dispatch_fd6f            ; 0x3646
    add sp, byte 6                   ; 0x3649
    mov word [bp - 0x0008], ax       ; 0x364c
    mov ax, 0x68                     ; 0x364f
    push ax                          ; 0x3652
    mov ax, 0x8976                   ; 0x3653
    push ax                          ; 0x3656
    push word [bp - 0x000a]          ; 0x3657
    call ds_dispatch_fd6f            ; 0x365a
    add sp, byte 6                   ; 0x365d
    mov word [bp - 0x0008], ax       ; 0x3660
    mov ax, 0x14a                    ; 0x3663
    push ax                          ; 0x3666
    mov ax, 0x882c                   ; 0x3667
    push ax                          ; 0x366a
    push word [bp - 0x000a]          ; 0x366b
    call ds_dispatch_fd6f            ; 0x366e
    add sp, byte 6                   ; 0x3671
    mov word [bp - 0x0008], ax       ; 0x3674
    mov ax, 0x344                    ; 0x3677
    push ax                          ; 0x367a
    mov ax, 0x84e8                   ; 0x367b
    push ax                          ; 0x367e
    push word [bp - 0x000a]          ; 0x367f
    call ds_dispatch_fd6f            ; 0x3682
    add sp, byte 6                   ; 0x3685
    mov word [bp - 0x0008], ax       ; 0x3688
    mov ax, 0x42                     ; 0x368b
    push ax                          ; 0x368e
    mov ax, 0x84a6                   ; 0x368f
    push ax                          ; 0x3692
    push word [bp - 0x000a]          ; 0x3693
    call ds_dispatch_fd6f            ; 0x3696
    add sp, byte 6                   ; 0x3699
    mov word [bp - 0x0008], ax       ; 0x369c
    cmp ax, strict word 0            ; 0x369f
    jg short @..local.l209           ; 0x36a2
    lea ax, word [bp - 0x0024]       ; 0x36a4
    push ax                          ; 0x36a7
    call loc_150d                    ; 0x36a8
    pop cx                           ; 0x36ab
    push word [bp - 0x000a]          ; 0x36ac
    call ds_dispatch_fda5            ; 0x36af
    pop cx                           ; 0x36b2
    cmp word [bp - 0x000c], byte 0   ; 0x36b3
    je short @..local.l208           ; 0x36b7
    mov ax, 1                        ; 0x36b9
    push ax                          ; 0x36bc
    push word [bp - 0x0010]          ; 0x36bd
    push word [bp - 0x000e]          ; 0x36c0
    mov ax, 0x91c6                   ; 0x36c3
    push ax                          ; 0x36c6
    db 0xe8, 0xde, 0x9a ; call 0xd1a8
    add sp, byte 8                   ; 0x36ca
@..local.l208:
    mov ax, 0xffff                   ; 0x36cd
    ret                              ; 0x36d0
@..local.l209:
    mov word [bp - 0x0002], 0        ; 0x36d1
@..local.l210:
    mov ax, 0x64                     ; 0x36d6
    push ax                          ; 0x36d9
    call ds_dispatch_b7a9            ; 0x36da
    pop cx                           ; 0x36dd
    mov bx, word [bp - 0x0002]       ; 0x36de
    mov byte [bx + 0x5990], al       ; 0x36e1
    inc word [bp - 0x0002]           ; 0x36e5
    mov ax, word [bp - 0x0002]       ; 0x36e8
    cmp ax, strict word 0x64         ; 0x36eb
    jl short @..local.l210           ; 0x36ee
    cmp word [bp + 0x4], byte 1      ; 0x36f0
    je short @..local.l211           ; 0x36f4
    jmp near @..local.l218           ; 0x36f6
@..local.l211:
    mov ax, 0x64                     ; 0x36f9
    push ax                          ; 0x36fc
    mov ax, 0x5990                   ; 0x36fd
    push ax                          ; 0x3700
    push word [bp - 0x000a]          ; 0x3701
    call ds_dispatch_fd6f            ; 0x3704
    add sp, byte 6                   ; 0x3707
    mov word [bp - 0x0008], ax       ; 0x370a
    cmp ax, strict word 0            ; 0x370d
    jg short @..local.l213           ; 0x3710
    lea ax, word [bp - 0x0024]       ; 0x3712
    push ax                          ; 0x3715
    call loc_150d                    ; 0x3716
    pop cx                           ; 0x3719
    push word [bp - 0x000a]          ; 0x371a
    call ds_dispatch_fda5            ; 0x371d
    pop cx                           ; 0x3720
    cmp word [bp - 0x000c], byte 0   ; 0x3721
    je short @..local.l212           ; 0x3725
    mov ax, 1                        ; 0x3727
    push ax                          ; 0x372a
    push word [bp - 0x0010]          ; 0x372b
    push word [bp - 0x000e]          ; 0x372e
    mov ax, 0x91c6                   ; 0x3731
    push ax                          ; 0x3734
    db 0xe8, 0x70, 0x9a ; call 0xd1a8
    add sp, byte 8                   ; 0x3738
@..local.l212:
    mov ax, 0xffff                   ; 0x373b
    ret                              ; 0x373e
@..local.l213:
    mov word [data_69c8], 0          ; 0x373f
    mov word [bp - 0x0002], 0        ; 0x3745
    jmp near @..local.l217           ; 0x374a
@..local.l214:
    mov ax, 0x248                    ; 0x374d
    push ax                          ; 0x3750
    mov ax, 0x9a4c                   ; 0x3751
    push ax                          ; 0x3754
    push word [bp - 0x000a]          ; 0x3755
    call ds_dispatch_fd6f            ; 0x3758
    add sp, byte 6                   ; 0x375b
    mov word [bp - 0x0008], ax       ; 0x375e
    cmp ax, strict word 0            ; 0x3761
    jg short @..local.l216           ; 0x3764
    lea ax, word [bp - 0x0024]       ; 0x3766
    push ax                          ; 0x3769
    call loc_150d                    ; 0x376a
    pop cx                           ; 0x376d
    push word [bp - 0x000a]          ; 0x376e
    call ds_dispatch_fda5            ; 0x3771
    pop cx                           ; 0x3774
    cmp word [bp - 0x000c], byte 0   ; 0x3775
    je short @..local.l215           ; 0x3779
    mov ax, 1                        ; 0x377b
    push ax                          ; 0x377e
    push word [bp - 0x0010]          ; 0x377f
    push word [bp - 0x000e]          ; 0x3782
    mov ax, 0x91c6                   ; 0x3785
    push ax                          ; 0x3788
    db 0xe8, 0x1c, 0x9a ; call 0xd1a8
    add sp, byte 8                   ; 0x378c
@..local.l215:
    mov ax, 0xffff                   ; 0x378f
    ret                              ; 0x3792
@..local.l216:
    push word [data_69c8]            ; 0x3793
    call api_idx_0006                ; 0x3797
    pop cx                           ; 0x379a
    mov cx, word [data_69c8]         ; 0x379b
    shl cx, 1                        ; 0x379f
    mov bx, cx                       ; 0x37a1
    mov word [bx + 0x69bc], ax       ; 0x37a3
    mov si, 0x9a4c                   ; 0x37a7
    mov ax, 0x248                    ; 0x37aa
    imul word [data_69c8]            ; 0x37ad
    mov di, ax                       ; 0x37b1
    add ax, 0x5bf4                   ; 0x37b3
    mov di, ax                       ; 0x37b6
    mov cx, ds                       ; 0x37b8
    mov es, cx                       ; 0x37ba
    mov cx, 0x124                    ; 0x37bc
    rep movsw                        ; 0x37bf
    inc word [data_69c8]             ; 0x37c1
    inc word [bp - 0x0002]           ; 0x37c5
@..local.l217:
    mov ax, word [bp - 0x0002]       ; 0x37c8
    cmp ax, word [data_9a4a]         ; 0x37cb
    jge short @..local.l218          ; 0x37cf
    jmp near @..local.l214           ; 0x37d1
@..local.l218:
    push word [bp - 0x000a]          ; 0x37d4
    call ds_dispatch_fda5            ; 0x37d7
    pop cx                           ; 0x37da
    cmp word [bp - 0x000c], byte 0   ; 0x37db
    je short @..local.l219           ; 0x37df
    mov ax, 1                        ; 0x37e1
    push ax                          ; 0x37e4
    push word [bp - 0x0010]          ; 0x37e5
    push word [bp - 0x000e]          ; 0x37e8
    mov ax, 0x91c6                   ; 0x37eb
    push ax                          ; 0x37ee
    db 0xe8, 0xb6, 0x99 ; call 0xd1a8
    add sp, byte 8                   ; 0x37f2
@..local.l219:
    cmp word [bp + 0x4], byte 2      ; 0x37f5
    jne short @..local.l221          ; 0x37f9
    mov word [bp - 0x0002], 0        ; 0x37fb
@..local.l220:
    mov ax, 0                        ; 0x3800
    push ax                          ; 0x3803
    mov ax, 0x248                    ; 0x3804
    push ax                          ; 0x3807
    mov ax, 0x248                    ; 0x3808
    imul word [bp - 0x0002]          ; 0x380b
    add ax, 0x5bf4                   ; 0x380e
    push ax                          ; 0x3811
    call ds_dispatch_f306            ; 0x3812
    add sp, byte 6                   ; 0x3815
    inc word [bp - 0x0002]           ; 0x3818
    mov ax, word [bp - 0x0002]       ; 0x381b
    cmp ax, strict word 6            ; 0x381e
    jl short @..local.l220           ; 0x3821
    call api_idx_0072                ; 0x3823
    cmp ax, strict word 0xffff       ; 0x3826
    jne short @..local.l221          ; 0x3829
    mov ax, 0xffff                   ; 0x382b
    ret                              ; 0x382e
@..local.l221:
    mov word [bp - 0x0002], 0        ; 0x382f
    jmp short @..local.l224          ; 0x3834
@..local.l222:
    mov ax, word [bp - 0x0002]       ; 0x3836
    shl ax, 1                        ; 0x3839
    mov bx, ax                       ; 0x383b
    push word [bx + 0x69bc]          ; 0x383d
    mov ax, 0x248                    ; 0x3841
    imul word [bp - 0x0002]          ; 0x3844
    mov bx, ax                       ; 0x3847
    mov al, byte [bx + 0x5e2a]       ; 0x3849
    sub ah, ah                       ; 0x384d
    push ax                          ; 0x384f
    call api_idx_0016                ; 0x3850
    add sp, byte 4                   ; 0x3853
    cmp word [bp + 0x4], byte 2      ; 0x3856
    je short @..local.l223           ; 0x385a
    mov ax, 0                        ; 0x385c
    push ax                          ; 0x385f
    push word [bp - 0x0002]          ; 0x3860
    call ds_dispatch_cb3a            ; 0x3863
    add sp, byte 4                   ; 0x3866
@..local.l223:
    inc word [bp - 0x0002]           ; 0x3869
@..local.l224:
    mov ax, word [bp - 0x0002]       ; 0x386c
    cmp ax, word [data_69c8]         ; 0x386f
    jl short @..local.l222           ; 0x3873
    mov ax, 0xc7                     ; 0x3875
    push ax                          ; 0x3878
    mov ax, 0x13f                    ; 0x3879
    push ax                          ; 0x387c
    mov ax, 0                        ; 0x387d
    push ax                          ; 0x3880
    push ax                          ; 0x3881
    db 0xe8
@..local.l225:
    db 0x55, 0xb0
    add sp, byte 8                   ; 0x3885
    mov ax, 0                        ; 0x3888
    ret                              ; 0x388b
api_idx_004e:
    mov ax, 0xffb2                   ; 0x388c
    call ds_dispatch_f40b            ; 0x388f
    mov word [bp - 0x000e], 0        ; 0x3892
    mov ax, word [data_5218]         ; 0x3897
    mov word [bp - 0x0010], ax       ; 0x389a
    cmp byte [data_5987], 5          ; 0x389d
    jne short @..local.l226          ; 0x38a2
    cmp ax, strict word 0            ; 0x38a4
    jle short @..local.l226          ; 0x38a7
    inc ax                           ; 0x38a9
    inc ax                           ; 0x38aa
    jmp short @..local.l227          ; 0x38ab
@..local.l226:
    mov ax, word [bp - 0x0010]       ; 0x38ad
@..local.l227:
    mov word [bp - 0x0010], ax       ; 0x38b0
    mov ax, 0                        ; 0x38b3
    push ax                          ; 0x38b6
    call ds_dispatch_ef14            ; 0x38b7
    pop cx                           ; 0x38ba
    lea ax, word [bp - 0x003a]       ; 0x38bb
    push ax                          ; 0x38be
    mov ax, 0x58c                    ; 0x38bf
    push ax                          ; 0x38c2
    call ds_dispatch_b53b            ; 0x38c3
    add sp, byte 4                   ; 0x38c6
    lea ax, word [bp - 0x004e]       ; 0x38c9
    push ax                          ; 0x38cc
    mov ax, 0x58e                    ; 0x38cd
    push ax                          ; 0x38d0
    call ds_dispatch_b53b            ; 0x38d1
    add sp, byte 4                   ; 0x38d4
    mov word [bp - 0x0012], 1        ; 0x38d7
    cmp word [bp + 0x4], byte 1      ; 0x38dc
    jne short @..local.l228          ; 0x38e0
    mov ax, 0x90db                   ; 0x38e2
    push ax                          ; 0x38e5
    lea ax, word [bp - 0x0026]       ; 0x38e6
    push ax                          ; 0x38e9
    call ds_dispatch_f364            ; 0x38ea
    add sp, byte 4                   ; 0x38ed
    mov word [bp - 0x000c], 0x591    ; 0x38f0
    jmp short @..local.l229          ; 0x38f5
@..local.l228:
    mov ax, 0x594e                   ; 0x38f7
    push ax                          ; 0x38fa
    lea ax, word [bp - 0x0026]       ; 0x38fb
    push ax                          ; 0x38fe
    call ds_dispatch_f364            ; 0x38ff
    add sp, byte 4                   ; 0x3902
    mov word [bp - 0x000c], 0x582    ; 0x3905
@..local.l229:
    lea ax, word [bp - 0x0026]       ; 0x390a
    push ax                          ; 0x390d
    mov ax, 0x593a                   ; 0x390e
    push ax                          ; 0x3911
    mov ax, 1                        ; 0x3912
    push ax                          ; 0x3915
    push ax                          ; 0x3916
    mov ax, 0                        ; 0x3917
    push ax                          ; 0x391a
    push word [bp - 0x000c]          ; 0x391b
    call api_idx_0028                ; 0x391e
    add sp, byte 0x0c                ; 0x3921
    cmp ax, strict word 2            ; 0x3924
    jne short @..local.l230          ; 0x3927
    mov ax, 0xffff                   ; 0x3929
    ret                              ; 0x392c
@..local.l230:
    cmp word [bp + 0x4], byte 0      ; 0x392d
    jne short @..local.l231          ; 0x3931
    lea ax, word [bp - 0x0026]       ; 0x3933
    push ax                          ; 0x3936
    mov ax, 0x594e                   ; 0x3937
    push ax                          ; 0x393a
    call ds_dispatch_f364            ; 0x393b
    add sp, byte 4                   ; 0x393e
@..local.l231:
    mov ax, 0x3a                     ; 0x3941
    push ax                          ; 0x3944
    mov ax, 0x5912                   ; 0x3945
    push ax                          ; 0x3948
    mov ax, 0x91c6                   ; 0x3949
    push ax                          ; 0x394c
    db 0xe8, 0xc2, 0x97 ; call 0xd112
    add sp, byte 6                   ; 0x3950
    mov ax, 0x3a                     ; 0x3953
    push ax                          ; 0x3956
    mov ax, 0x593a                   ; 0x3957
    push ax                          ; 0x395a
    mov ax, 0x91da                   ; 0x395b
    push ax                          ; 0x395e
    db 0xe8, 0xb0, 0x97 ; call 0xd112
    add sp, byte 6                   ; 0x3962
    mov ax, 0x593a                   ; 0x3965
    push ax                          ; 0x3968
    mov ax, 0x91ee                   ; 0x3969
    push ax                          ; 0x396c
    call ds_dispatch_f364            ; 0x396d
    add sp, byte 4                   ; 0x3970
    mov ax, 0x91ee                   ; 0x3973
    push ax                          ; 0x3976
    call ds_dispatch_fa90            ; 0x3977
    pop cx                           ; 0x397a
    cmp ax, strict word 0            ; 0x397b
    jle short @..local.l232          ; 0x397e
    mov ax, 0x91ee                   ; 0x3980
    push ax                          ; 0x3983
    call ds_dispatch_fa90            ; 0x3984
    pop cx                           ; 0x3987
    dec ax                           ; 0x3988
    mov word [bp - 0x0002], ax       ; 0x3989
    mov bx, ax                       ; 0x398c
    cmp byte [bx - 0x6e12], 0x5c     ; 0x398e
    je short @..local.l232           ; 0x3993
    mov byte [bx - 0x6e11], 0x5c     ; 0x3995
    mov byte [bx - 0x6e10], 0        ; 0x399a
@..local.l232:
    lea ax, word [bp - 0x0026]       ; 0x399f
    push ax                          ; 0x39a2
    mov ax, 0x91ee                   ; 0x39a3
    push ax                          ; 0x39a6
    call ds_dispatch_f32d            ; 0x39a7
    add sp, byte 4                   ; 0x39aa
    cmp byte [data_5987], 1          ; 0x39ad
    jne short @..local.l233          ; 0x39b2
    mov ax, 0x91da                   ; 0x39b4
    push ax                          ; 0x39b7
    mov ax, 0x91c6                   ; 0x39b8
    push ax                          ; 0x39bb
    call string_loc_9386             ; 0x39bc
    add sp, byte 4                   ; 0x39bf
    test ax, ax                      ; 0x39c2
    jne short @..local.l233          ; 0x39c4
    jmp near @..local.l239           ; 0x39c6
@..local.l233:
    mov ax, 0x91da                   ; 0x39c9
    push ax                          ; 0x39cc
    call ds_dispatch_fa90            ; 0x39cd
    pop cx                           ; 0x39d0
    cmp ax, strict word 0            ; 0x39d1
    jle short @..local.l237          ; 0x39d4
    mov ax, 0x91da                   ; 0x39d6
    push ax                          ; 0x39d9
    mov ax, 0x91c6                   ; 0x39da
    push ax                          ; 0x39dd
    call string_loc_9386             ; 0x39de
    add sp, byte 4                   ; 0x39e1
    test ax, ax                      ; 0x39e4
    je short @..local.l234           ; 0x39e6
    cmp byte [data_5987], 5          ; 0x39e8
    jne short @..local.l235          ; 0x39ed
@..local.l234:
    mov word [bp - 0x000e], 1        ; 0x39ef
@..local.l235:
    mov ax, 0                        ; 0x39f4
    push ax                          ; 0x39f7
    push word [bp - 0x000e]          ; 0x39f8
    mov ax, 0xffff                   ; 0x39fb
    push ax                          ; 0x39fe
    mov ax, 0x91da                   ; 0x39ff
    push ax                          ; 0x3a02
    db 0xe8, 0xa2, 0x97 ; call 0xd1a8
    add sp, byte 8                   ; 0x3a06
    mov ax, 1                        ; 0x3a09
    cmp word [bp - 0x000e], byte 0   ; 0x3a0c
    je short @..local.l236           ; 0x3a10
    mov ax, 0                        ; 0x3a12
@..local.l236:
    mov word [bp - 0x0012], ax       ; 0x3a15
    jmp short @..local.l239          ; 0x3a18
@..local.l237:
    cmp byte [data_5987], 1          ; 0x3a1a
    jbe short @..local.l239          ; 0x3a1f
    mov word [bp - 0x000e], 1        ; 0x3a21
    mov ax, 0                        ; 0x3a26
    push ax                          ; 0x3a29
    push word [bp - 0x000e]          ; 0x3a2a
    mov ax, 0xffff                   ; 0x3a2d
    push ax                          ; 0x3a30
    mov ax, 0x91c6                   ; 0x3a31
    push ax                          ; 0x3a34
    db 0xe8, 0x70, 0x97 ; call 0xd1a8
    add sp, byte 8                   ; 0x3a38
    mov ax, 1                        ; 0x3a3b
    cmp word [bp - 0x000e], byte 0   ; 0x3a3e
    je short @..local.l238           ; 0x3a42
    mov ax, 0                        ; 0x3a44
@..local.l238:
    mov word [bp - 0x0012], ax       ; 0x3a47
@..local.l239:
    mov ax, 0xc7                     ; 0x3a4a
    push ax                          ; 0x3a4d
    mov ax, 0x13f                    ; 0x3a4e
    push ax                          ; 0x3a51
    mov ax, 0                        ; 0x3a52
    push ax                          ; 0x3a55
    push ax                          ; 0x3a56
    call ds_dispatch_e8da            ; 0x3a57
    add sp, byte 8                   ; 0x3a5a
    mov ax, 0x301                    ; 0x3a5d
    push ax                          ; 0x3a60
    mov ax, 0x91ee                   ; 0x3a61
    push ax                          ; 0x3a64
    call ds_dispatch_f909            ; 0x3a65
    add sp, byte 4                   ; 0x3a68
    mov word [bp - 0x000a], ax       ; 0x3a6b
    cmp ax, strict word 0xffff       ; 0x3a6e
    jne short @..local.l241          ; 0x3a71
    lea ax, word [bp - 0x003a]       ; 0x3a73
    push ax                          ; 0x3a76
    call loc_150d                    ; 0x3a77
    pop cx                           ; 0x3a7a
    cmp word [bp - 0x000e], byte 0   ; 0x3a7b
    je short @..local.l240           ; 0x3a7f
    mov ax, 1                        ; 0x3a81
    push ax                          ; 0x3a84
    push word [bp - 0x0012]          ; 0x3a85
    push word [bp - 0x0010]          ; 0x3a88
    mov ax, 0x91c6                   ; 0x3a8b
    push ax                          ; 0x3a8e
    db 0xe8, 0x16, 0x97 ; call 0xd1a8
    add sp, byte 8                   ; 0x3a92
@..local.l240:
    mov ax, 0xffff                   ; 0x3a95
    ret                              ; 0x3a98
@..local.l241:
    cmp word [data_830c], byte 0     ; 0x3a99
    jge short @..local.l242          ; 0x3a9e
    jmp near @..local.l243           ; 0x3aa0
@..local.l242:
    mov ax, 1                        ; 0x3aa3
    push ax                          ; 0x3aa6
    mov ax, 0xd                      ; 0x3aa7
    push ax                          ; 0x3aaa
    mov ax, 0x12                     ; 0x3aab
    push ax                          ; 0x3aae
    mov ax, 0x24                     ; 0x3aaf
    push ax                          ; 0x3ab2
    mov ax, 0x61                     ; 0x3ab3
    push ax                          ; 0x3ab6
    mov ax, 3                        ; 0x3ab7
    push ax                          ; 0x3aba
    lea ax, word [bp - 0x004e]       ; 0x3abb
    push ax                          ; 0x3abe
    call api_idx_0004                ; 0x3abf
    add sp, byte 0x0e                ; 0x3ac2
    mov ax, 0x80                     ; 0x3ac5
    push ax                          ; 0x3ac8
    mov ax, word [data_830c]         ; 0x3ac9
    mov cx, 7                        ; 0x3acc
    shl ax, cl                       ; 0x3acf
    mov cx, ax                       ; 0x3ad1
    mov ax, word [data_0e1a]         ; 0x3ad3
    mov dx, word [data_0e1c]         ; 0x3ad6
    add ax, cx                       ; 0x3ada
    push dx                          ; 0x3adc
    push ax                          ; 0x3add
    push ds                          ; 0x3ade
    mov ax, 0x8b7e                   ; 0x3adf
    push ax                          ; 0x3ae2
    call ds_dispatch_afcc            ; 0x3ae3
    add sp, byte 0x0a                ; 0x3ae6
    mov ax, 0x80                     ; 0x3ae9
    push ax                          ; 0x3aec
    mov ax, word [data_830c]         ; 0x3aed
    mov cx, 7                        ; 0x3af0
    shl ax, cl                       ; 0x3af3
    mov cx, ax                       ; 0x3af5
    mov ax, word [data_0e16]         ; 0x3af7
    mov dx, word [data_0e18]         ; 0x3afa
    add ax, cx                       ; 0x3afe
    push dx                          ; 0x3b00
    push ax                          ; 0x3b01
    push ds                          ; 0x3b02
    mov ax, 0x8afe                   ; 0x3b03
    push ax                          ; 0x3b06
    call ds_dispatch_afcc            ; 0x3b07
    add sp, byte 0x0a                ; 0x3b0a
    mov ax, 0x10                     ; 0x3b0d
    push ax                          ; 0x3b10
    mov ax, word [data_830c]         ; 0x3b11
    mov cx, 4                        ; 0x3b14
    shl ax, cl                       ; 0x3b17
    add ax, 0x5642                   ; 0x3b19
    push ax                          ; 0x3b1c
    mov ax, word [data_830c]         ; 0x3b1d
    shl ax, cl                       ; 0x3b20
    add ax, 0x8d14                   ; 0x3b22
    push ax                          ; 0x3b25
    call ds_dispatch_fedc            ; 0x3b26
    add sp, byte 6                   ; 0x3b29
@..local.l243:
    mov ax, 0                        ; 0x3b2c
    push ax                          ; 0x3b2f
    mov ax, 0                        ; 0x3b30
    mov dx, 0                        ; 0x3b33
    push dx                          ; 0x3b36
    push ax                          ; 0x3b37
    push word [bp - 0x000a]          ; 0x3b38
    call ds_dispatch_fdbd            ; 0x3b3b
    add sp, byte 8                   ; 0x3b3e
    mov ax, 0x34c                    ; 0x3b41
    push ax                          ; 0x3b44
    mov ax, 0x5642                   ; 0x3b45
    push ax                          ; 0x3b48
    push word [bp - 0x000a]          ; 0x3b49
    call ds_dispatch_fd76            ; 0x3b4c
    add sp, byte 6                   ; 0x3b4f
    mov word [bp - 0x0008], ax       ; 0x3b52
    cmp ax, strict word 0            ; 0x3b55
    jg short @..local.l245           ; 0x3b58
    lea ax, word [bp - 0x003a]       ; 0x3b5a
    push ax                          ; 0x3b5d
    call loc_150d                    ; 0x3b5e
    pop cx                           ; 0x3b61
    push word [bp - 0x000a]          ; 0x3b62
    call ds_dispatch_fda5            ; 0x3b65
    pop cx                           ; 0x3b68
    cmp word [bp - 0x000e], byte 0   ; 0x3b69
    je short @..local.l244           ; 0x3b6d
    mov ax, 1                        ; 0x3b6f
    push ax                          ; 0x3b72
    push word [bp - 0x0012]          ; 0x3b73
    push word [bp - 0x0010]          ; 0x3b76
    mov ax, 0x91c6                   ; 0x3b79
    push ax                          ; 0x3b7c
    db 0xe8, 0x28, 0x96 ; call 0xd1a8
    add sp, byte 8                   ; 0x3b80
@..local.l244:
    mov ax, 0xffff                   ; 0x3b83
    ret                              ; 0x3b86
@..local.l245:
    mov ax, 6                        ; 0x3b87
    imul word [data_590e]            ; 0x3b8a
    mov word [bp - 0x0006], ax       ; 0x3b8e
    cmp ax, strict word 0            ; 0x3b91
    jle short @..local.l247          ; 0x3b94
    push ax                          ; 0x3b96
    push word [data_0e10]            ; 0x3b97
    push word [bp - 0x000a]          ; 0x3b9b
    call ds_dispatch_fd76            ; 0x3b9e
    add sp, byte 6                   ; 0x3ba1
    mov word [bp - 0x0008], ax       ; 0x3ba4
    cmp ax, strict word 0            ; 0x3ba7
    jg short @..local.l247           ; 0x3baa
    lea ax, word [bp - 0x003a]       ; 0x3bac
    push ax                          ; 0x3baf
    call loc_150d                    ; 0x3bb0
    pop cx                           ; 0x3bb3
    push word [bp - 0x000a]          ; 0x3bb4
    call ds_dispatch_fda5            ; 0x3bb7
    pop cx                           ; 0x3bba
    cmp word [bp - 0x000e], byte 0   ; 0x3bbb
    je short @..local.l246           ; 0x3bbf
    mov ax, 1                        ; 0x3bc1
    push ax                          ; 0x3bc4
    push word [bp - 0x0012]          ; 0x3bc5
    push word [bp - 0x0010]          ; 0x3bc8
    mov ax, 0x91c6                   ; 0x3bcb
    push ax                          ; 0x3bce
    db 0xe8, 0xd6, 0x95 ; call 0xd1a8
    add sp, byte 8                   ; 0x3bd2
@..local.l246:
    mov ax, 0xffff                   ; 0x3bd5
    ret                              ; 0x3bd8
@..local.l247:
    mov ax, word [data_5910]         ; 0x3bd9
    shl ax, 1                        ; 0x3bdc
    shl ax, 1                        ; 0x3bde
    shl ax, 1                        ; 0x3be0
    mov word [bp - 0x0006], ax       ; 0x3be2
    cmp ax, strict word 0            ; 0x3be5
    jle short @..local.l249          ; 0x3be8
    push ax                          ; 0x3bea
    push word [data_0e0e]            ; 0x3beb
    push word [bp - 0x000a]          ; 0x3bef
    call ds_dispatch_fd76            ; 0x3bf2
    add sp, byte 6                   ; 0x3bf5
    mov word [bp - 0x0008], ax       ; 0x3bf8
    cmp ax, strict word 0            ; 0x3bfb
    jg short @..local.l249           ; 0x3bfe
    lea ax, word [bp - 0x003a]       ; 0x3c00
    push ax                          ; 0x3c03
    call loc_150d                    ; 0x3c04
    pop cx                           ; 0x3c07
    push word [bp - 0x000a]          ; 0x3c08
    call ds_dispatch_fda5            ; 0x3c0b
    pop cx                           ; 0x3c0e
    cmp word [bp - 0x000e], byte 0   ; 0x3c0f
    je short @..local.l248           ; 0x3c13
    mov ax, 1                        ; 0x3c15
    push ax                          ; 0x3c18
    push word [bp - 0x0012]          ; 0x3c19
    push word [bp - 0x0010]          ; 0x3c1c
    mov ax, 0x91c6                   ; 0x3c1f
    push ax                          ; 0x3c22
    db 0xe8, 0x82, 0x95 ; call 0xd1a8
    add sp, byte 8                   ; 0x3c26
@..local.l248:
    mov ax, 0xffff                   ; 0x3c29
    ret                              ; 0x3c2c
@..local.l249:
    mov word [bp - 0x0004], 0        ; 0x3c2d
@..local.l250:
    mov ax, 0x80                     ; 0x3c32
    push ax                          ; 0x3c35
    push ds                          ; 0x3c36
    mov ax, 0x9900                   ; 0x3c37
    push ax                          ; 0x3c3a
    mov ax, word [bp - 0x0004]       ; 0x3c3b
    mov cx, 7                        ; 0x3c3e
    shl ax, cl                       ; 0x3c41
    mov cx, ax                       ; 0x3c43
    mov ax, word [data_0e1a]         ; 0x3c45
    mov dx, word [data_0e1c]         ; 0x3c48
    add ax, cx                       ; 0x3c4c
    push dx                          ; 0x3c4e
    push ax                          ; 0x3c4f
    call ds_dispatch_afcc            ; 0x3c50
    add sp, byte 0x0a                ; 0x3c53
    mov ax, 0x80                     ; 0x3c56
    push ax                          ; 0x3c59
    push ds                          ; 0x3c5a
    mov ax, 0x9980                   ; 0x3c5b
    push ax                          ; 0x3c5e
    mov ax, word [bp - 0x0004]       ; 0x3c5f
    mov cx, 7                        ; 0x3c62
    shl ax, cl                       ; 0x3c65
    mov cx, ax                       ; 0x3c67
    mov ax, word [data_0e16]         ; 0x3c69
    mov dx, word [data_0e18]         ; 0x3c6c
    add ax, cx                       ; 0x3c70
    push dx                          ; 0x3c72
    push ax                          ; 0x3c73
    call ds_dispatch_afcc            ; 0x3c74
    add sp, byte 0x0a                ; 0x3c77
    mov ax, 0x80                     ; 0x3c7a
    push ax                          ; 0x3c7d
    mov ax, 0x9900                   ; 0x3c7e
    push ax                          ; 0x3c81
    push word [bp - 0x000a]          ; 0x3c82
    call ds_dispatch_fd76            ; 0x3c85
    add sp, byte 6                   ; 0x3c88
    mov word [bp - 0x0008], ax       ; 0x3c8b
    cmp ax, strict word 0            ; 0x3c8e
    jg short @..local.l252           ; 0x3c91
    lea ax, word [bp - 0x003a]       ; 0x3c93
    push ax                          ; 0x3c96
    call loc_150d                    ; 0x3c97
    pop cx                           ; 0x3c9a
    push word [bp - 0x000a]          ; 0x3c9b
    call ds_dispatch_fda5            ; 0x3c9e
    pop cx                           ; 0x3ca1
    cmp word [bp - 0x000e], byte 0   ; 0x3ca2
    je short @..local.l251           ; 0x3ca6
    mov ax, 1                        ; 0x3ca8
    push ax                          ; 0x3cab
    push word [bp - 0x0012]          ; 0x3cac
    push word [bp - 0x0010]          ; 0x3caf
    mov ax, 0x91c6                   ; 0x3cb2
    push ax                          ; 0x3cb5
    db 0xe8, 0xef, 0x94 ; call 0xd1a8
    add sp, byte 8                   ; 0x3cb9
@..local.l251:
    mov ax, 0xffff                   ; 0x3cbc
    ret                              ; 0x3cbf
@..local.l252:
    mov ax, 0x80                     ; 0x3cc0
    push ax                          ; 0x3cc3
    mov ax, 0x9980                   ; 0x3cc4
    push ax                          ; 0x3cc7
    push word [bp - 0x000a]          ; 0x3cc8
    call ds_dispatch_fd76            ; 0x3ccb
    add sp, byte 6                   ; 0x3cce
    mov word [bp - 0x0008], ax       ; 0x3cd1
    cmp ax, strict word 0            ; 0x3cd4
    jg short @..local.l254           ; 0x3cd7
    lea ax, word [bp - 0x003a]       ; 0x3cd9
    push ax                          ; 0x3cdc
    call loc_150d                    ; 0x3cdd
    pop cx                           ; 0x3ce0
    push word [bp - 0x000a]          ; 0x3ce1
    call ds_dispatch_fda5            ; 0x3ce4
    pop cx                           ; 0x3ce7
    cmp word [bp - 0x000e], byte 0   ; 0x3ce8
    je short @..local.l253           ; 0x3cec
    mov ax, 1                        ; 0x3cee
    push ax                          ; 0x3cf1
    push word [bp - 0x0012]          ; 0x3cf2
    push word [bp - 0x0010]          ; 0x3cf5
    mov ax, 0x91c6                   ; 0x3cf8
    push ax                          ; 0x3cfb
    db 0xe8, 0xa9, 0x94 ; call 0xd1a8
    add sp, byte 8                   ; 0x3cff
@..local.l253:
    mov ax, 0xffff                   ; 0x3d02
    ret                              ; 0x3d05
@..local.l254:
    inc word [bp - 0x0004]           ; 0x3d06
    mov ax, word [bp - 0x0004]       ; 0x3d09
    cmp ax, strict word 0x20         ; 0x3d0c
    jge short @..local.l255          ; 0x3d0f
    jmp near @..local.l250           ; 0x3d11
@..local.l255:
    mov ax, word [data_8f46]         ; 0x3d14
    mov word [data_9a02], ax         ; 0x3d17
    mov ax, word [data_8f44]         ; 0x3d1a
    mov word [data_9a04], ax         ; 0x3d1d
    mov ax, word [data_8f42]         ; 0x3d20
    mov word [data_9a06], ax         ; 0x3d23
    mov ax, word [data_8f40]         ; 0x3d26
    mov word [data_9a08], ax         ; 0x3d29
    mov ax, word [data_8f3e]         ; 0x3d2c
    mov word [data_9a0a], ax         ; 0x3d2f
    mov ax, word [data_82ee]         ; 0x3d32
    mov word [data_9a0c], ax         ; 0x3d35
    mov ax, word [data_830c]         ; 0x3d38
    mov word [data_9a00], ax         ; 0x3d3b
    mov ax, word [data_8f3a]         ; 0x3d3e
    mov word [data_9a10], ax         ; 0x3d41
    mov ax, word [data_8f38]         ; 0x3d44
    mov word [data_9a12], ax         ; 0x3d47
    mov ax, word [data_8f36]         ; 0x3d4a
    mov word [data_9a14], ax         ; 0x3d4d
    mov ax, word [data_8f34]         ; 0x3d50
    mov word [data_9a16], ax         ; 0x3d53
    mov ax, word [data_8f32]         ; 0x3d56
    mov word [data_9a18], ax         ; 0x3d59
    mov ax, word [data_8f30]         ; 0x3d5c
    mov word [data_9a1a], ax         ; 0x3d5f
    mov ax, word [data_8f3c]         ; 0x3d62
    mov word [data_9a0e], ax         ; 0x3d65
    mov ax, word [data_8f2e]         ; 0x3d68
    mov word [data_9a1c], ax         ; 0x3d6b
    mov ax, word [data_8f2c]         ; 0x3d6e
    mov word [data_9a1e], ax         ; 0x3d71
    mov ax, word [data_8f2a]         ; 0x3d74
    mov word [data_9a20], ax         ; 0x3d77
    mov ax, word [data_8f28]         ; 0x3d7a
    mov word [data_9a22], ax         ; 0x3d7d
    mov ax, word [data_8f26]         ; 0x3d80
    mov word [data_9a24], ax         ; 0x3d83
    mov word [bp - 0x0002], 0        ; 0x3d86
@..local.l256:
    mov ax, word [bp - 0x0002]       ; 0x3d8b
    shl ax, 1                        ; 0x3d8e
    shl ax, 1                        ; 0x3d90
    mov bx, ax                       ; 0x3d92
    mov ax, word [bx - 0x7d0e]       ; 0x3d94
    mov word [bx - 0x65ce], ax       ; 0x3d98
    mov ax, word [bx - 0x7d0c]       ; 0x3d9c
    mov word [bx - 0x65cc], ax       ; 0x3da0
    inc word [bp - 0x0002]           ; 0x3da4
    mov ax, word [bp - 0x0002]       ; 0x3da7
    cmp ax, strict word 6            ; 0x3daa
    jl short @..local.l256           ; 0x3dad
    mov ax, word [data_8f1c]         ; 0x3daf
    mov dx, word [data_8f1e]         ; 0x3db2
    mov word [data_9a28], dx         ; 0x3db6
    mov word [data_9a26], ax         ; 0x3dba
    mov ax, word [data_8f18]         ; 0x3dbd
    mov dx, word [data_8f1a]         ; 0x3dc0
    mov word [data_9a2c], dx         ; 0x3dc4
    mov word [data_9a2a], ax         ; 0x3dc8
    mov ax, word [data_8f14]         ; 0x3dcb
    mov dx, word [data_8f16]         ; 0x3dce
    mov word [data_9a30], dx         ; 0x3dd2
    mov word [data_9a2e], ax         ; 0x3dd6
    mov ax, word [data_69c8]         ; 0x3dd9
    mov word [data_9a4a], ax         ; 0x3ddc
    mov ax, 0x4c                     ; 0x3ddf
    push ax                          ; 0x3de2
    mov ax, data_9a00                ; 0x3de3
    push ax                          ; 0x3de6
    push word [bp - 0x000a]          ; 0x3de7
    call ds_dispatch_fd76            ; 0x3dea
    add sp, byte 6                   ; 0x3ded
    mov word [bp - 0x0008], ax       ; 0x3df0
    cmp ax, strict word 0            ; 0x3df3
    jg short @..local.l258           ; 0x3df6
    lea ax, word [bp - 0x003a]       ; 0x3df8
    push ax                          ; 0x3dfb
    call loc_150d                    ; 0x3dfc
    pop cx                           ; 0x3dff
    push word [bp - 0x000a]          ; 0x3e00
    call ds_dispatch_fda5            ; 0x3e03
    pop cx                           ; 0x3e06
    cmp word [bp - 0x000e], byte 0   ; 0x3e07
    je short @..local.l257           ; 0x3e0b
    mov ax, 1                        ; 0x3e0d
    push ax                          ; 0x3e10
    push word [bp - 0x0012]          ; 0x3e11
    push word [bp - 0x0010]          ; 0x3e14
    mov ax, 0x91c6                   ; 0x3e17
    push ax                          ; 0x3e1a
    db 0xe8, 0x8a, 0x93 ; call 0xd1a8
    add sp, byte 8                   ; 0x3e1e
@..local.l257:
    mov ax, 0xffff                   ; 0x3e21
    ret                              ; 0x3e24
@..local.l258:
    mov ax, 0x80                     ; 0x3e25
    push ax                          ; 0x3e28
    mov ax, 0x8a6e                   ; 0x3e29
    push ax                          ; 0x3e2c
    push word [bp - 0x000a]          ; 0x3e2d
    call ds_dispatch_fd76            ; 0x3e30
    add sp, byte 6                   ; 0x3e33
    mov word [bp - 0x0008], ax       ; 0x3e36
    mov ax, 0x90                     ; 0x3e39
    push ax                          ; 0x3e3c
    mov ax, 0x89de                   ; 0x3e3d
    push ax                          ; 0x3e40
    push word [bp - 0x000a]          ; 0x3e41
    call ds_dispatch_fd76            ; 0x3e44
    add sp, byte 6                   ; 0x3e47
    mov word [bp - 0x0008], ax       ; 0x3e4a
    mov ax, 0x68                     ; 0x3e4d
    push ax                          ; 0x3e50
    mov ax, 0x8976                   ; 0x3e51
    push ax                          ; 0x3e54
    push word [bp - 0x000a]          ; 0x3e55
    call ds_dispatch_fd76            ; 0x3e58
    add sp, byte 6                   ; 0x3e5b
    mov word [bp - 0x0008], ax       ; 0x3e5e
    mov ax, 0x14a                    ; 0x3e61
    push ax                          ; 0x3e64
    mov ax, 0x882c                   ; 0x3e65
    push ax                          ; 0x3e68
    push word [bp - 0x000a]          ; 0x3e69
    call ds_dispatch_fd76            ; 0x3e6c
    add sp, byte 6                   ; 0x3e6f
    mov word [bp - 0x0008], ax       ; 0x3e72
    mov ax, 0x344                    ; 0x3e75
    push ax                          ; 0x3e78
    mov ax, 0x84e8                   ; 0x3e79
    push ax                          ; 0x3e7c
    push word [bp - 0x000a]          ; 0x3e7d
    call ds_dispatch_fd76            ; 0x3e80
    add sp, byte 6                   ; 0x3e83
    mov word [bp - 0x0008], ax       ; 0x3e86
    mov ax, 0x42                     ; 0x3e89
    push ax                          ; 0x3e8c
    mov ax, 0x84a6                   ; 0x3e8d
    push ax                          ; 0x3e90
    push word [bp - 0x000a]          ; 0x3e91
    call ds_dispatch_fd76            ; 0x3e94
    add sp, byte 6                   ; 0x3e97
    mov word [bp - 0x0008], ax       ; 0x3e9a
    cmp ax, strict word 0            ; 0x3e9d
    jg short @..local.l260           ; 0x3ea0
    lea ax, word [bp - 0x003a]       ; 0x3ea2
    push ax                          ; 0x3ea5
    call loc_150d                    ; 0x3ea6
    pop cx                           ; 0x3ea9
    push word [bp - 0x000a]          ; 0x3eaa
    call ds_dispatch_fda5            ; 0x3ead
    pop cx                           ; 0x3eb0
    cmp word [bp - 0x000e], byte 0   ; 0x3eb1
    je short @..local.l259           ; 0x3eb5
    mov ax, 1                        ; 0x3eb7
    push ax                          ; 0x3eba
    push word [bp - 0x0012]          ; 0x3ebb
    push word [bp - 0x0010]          ; 0x3ebe
    mov ax, 0x91c6                   ; 0x3ec1
    push ax                          ; 0x3ec4
    db 0xe8, 0xe0, 0x92 ; call 0xd1a8
    add sp, byte 8                   ; 0x3ec8
@..local.l259:
    mov ax, 0xffff                   ; 0x3ecb
    ret                              ; 0x3ece
@..local.l260:
    mov ax, 0x64                     ; 0x3ecf
    push ax                          ; 0x3ed2
    mov ax, 0x5990                   ; 0x3ed3
    push ax                          ; 0x3ed6
    push word [bp - 0x000a]          ; 0x3ed7
    call ds_dispatch_fd76            ; 0x3eda
    add sp, byte 6                   ; 0x3edd
    mov word [bp - 0x0008], ax       ; 0x3ee0
    cmp ax, strict word 0            ; 0x3ee3
    jg short @..local.l262           ; 0x3ee6
    lea ax, word [bp - 0x003a]       ; 0x3ee8
    push ax                          ; 0x3eeb
    call loc_150d                    ; 0x3eec
    pop cx                           ; 0x3eef
    push word [bp - 0x000a]          ; 0x3ef0
    call ds_dispatch_fda5            ; 0x3ef3
    pop cx                           ; 0x3ef6
    cmp word [bp - 0x000e], byte 0   ; 0x3ef7
    je short @..local.l261           ; 0x3efb
    mov ax, 1                        ; 0x3efd
    push ax                          ; 0x3f00
    push word [bp - 0x0012]          ; 0x3f01
    push word [bp - 0x0010]          ; 0x3f04
    mov ax, 0x91c6                   ; 0x3f07
    push ax                          ; 0x3f0a
    db 0xe8, 0x9a, 0x92 ; call 0xd1a8
    add sp, byte 8                   ; 0x3f0e
@..local.l261:
    mov ax, 0xffff                   ; 0x3f11
    ret                              ; 0x3f14
@..local.l262:
    mov word [bp - 0x0002], 0        ; 0x3f15
    jmp short @..local.l266          ; 0x3f1a
@..local.l263:
    mov ax, 0x248                    ; 0x3f1c
    imul word [bp - 0x0002]          ; 0x3f1f
    mov si, ax                       ; 0x3f22
    add ax, 0x5bf4                   ; 0x3f24
    mov si, ax                       ; 0x3f27
    mov di, 0x9a4c                   ; 0x3f29
    mov cx, ds                       ; 0x3f2c
    mov es, cx                       ; 0x3f2e
    mov cx, 0x124                    ; 0x3f30
    rep movsw                        ; 0x3f33
    mov ax, 0x248                    ; 0x3f35
    push ax                          ; 0x3f38
    mov ax, 0x9a4c                   ; 0x3f39
    push ax                          ; 0x3f3c
    push word [bp - 0x000a]          ; 0x3f3d
    call ds_dispatch_fd76            ; 0x3f40
    add sp, byte 6                   ; 0x3f43
    mov word [bp - 0x0008], ax       ; 0x3f46
    cmp ax, strict word 0            ; 0x3f49
    jg short @..local.l265           ; 0x3f4c
    lea ax, word [bp - 0x003a]       ; 0x3f4e
    push ax                          ; 0x3f51
    call loc_150d                    ; 0x3f52
    pop cx                           ; 0x3f55
    push word [bp - 0x000a]          ; 0x3f56
    call ds_dispatch_fda5            ; 0x3f59
    pop cx                           ; 0x3f5c
    cmp word [bp - 0x000e], byte 0   ; 0x3f5d
    je short @..local.l264           ; 0x3f61
    mov ax, 1                        ; 0x3f63
    push ax                          ; 0x3f66
    push word [bp - 0x0012]          ; 0x3f67
    push word [bp - 0x0010]          ; 0x3f6a
    mov ax, 0x91c6                   ; 0x3f6d
    push ax                          ; 0x3f70
    db 0xe8, 0x34, 0x92 ; call 0xd1a8
    add sp, byte 8                   ; 0x3f74
@..local.l264:
    mov ax, 0xffff                   ; 0x3f77
    ret                              ; 0x3f7a
@..local.l265:
    inc word [bp - 0x0002]           ; 0x3f7b
@..local.l266:
    mov ax, word [bp - 0x0002]       ; 0x3f7e
    cmp ax, word [data_69c8]         ; 0x3f81
    jl short @..local.l263           ; 0x3f85
    push word [bp - 0x000a]          ; 0x3f87
    call ds_dispatch_fda5            ; 0x3f8a
    pop cx                           ; 0x3f8d
    cmp word [bp - 0x000e], byte 0   ; 0x3f8e
    je short @..local.l267           ; 0x3f92
    mov ax, 1                        ; 0x3f94
    push ax                          ; 0x3f97
    push word [bp - 0x0012]          ; 0x3f98
    push word [bp - 0x0010]          ; 0x3f9b
    mov ax, 0x91c6                   ; 0x3f9e
    push ax                          ; 0x3fa1
    db 0xe8, 0x03, 0x92 ; call 0xd1a8
    add sp, byte 8                   ; 0x3fa5
@..local.l267:
    mov ax, 0                        ; 0x3fa8
    ret                              ; 0x3fab
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x3fac
    call ds_dispatch_f40b            ; 0x3faf
    mov ax, data_0002                ; 0x3fb2
    push ax                          ; 0x3fb5
    mov ax, 0                        ; 0x3fb6
    push ax                          ; 0x3fb9
    mov ax, 0x90e8                   ; 0x3fba
    push ax                          ; 0x3fbd
    call ds_dispatch_d161            ; 0x3fbe
    add sp, byte 4                   ; 0x3fc1
    push ax                          ; 0x3fc4
    call ds_dispatch_f909            ; 0x3fc5
    add sp, byte 4                   ; 0x3fc8
    mov word [data_9088], ax         ; 0x3fcb
    cmp ax, strict word 0xffff       ; 0x3fce
    jne short @..api_idx_0002_2.l1   ; 0x3fd1
    mov ax, 0x14                     ; 0x3fd3
    push ax                          ; 0x3fd6
    call ds_dispatch_b171            ; 0x3fd7
    pop cx                           ; 0x3fda
@..api_idx_0002_2.l1:
    mov ax, 0                        ; 0x3fdb
    push ax                          ; 0x3fde
    mov ax, 0                        ; 0x3fdf
    mov dx, 0                        ; 0x3fe2
    push dx                          ; 0x3fe5
    push ax                          ; 0x3fe6
    push word [data_9088]            ; 0x3fe7
    call ds_dispatch_fdbd            ; 0x3feb
    add sp, byte 8                   ; 0x3fee
    mov ax, 0x34c                    ; 0x3ff1
    push ax                          ; 0x3ff4
    mov ax, 0x5642                   ; 0x3ff5
    push ax                          ; 0x3ff8
    push word [data_9088]            ; 0x3ff9
    call ds_dispatch_fd76            ; 0x3ffd
    add sp, byte 6                   ; 0x4000
    mov word [bp - 0x0002], ax       ; 0x4003
    cmp ax, strict word 0xffff       ; 0x4006
    jne short @..api_idx_0002_2.l2   ; 0x4009
    mov ax, 0x14                     ; 0x400b
    push ax                          ; 0x400e
    call ds_dispatch_b171            ; 0x400f
    pop cx                           ; 0x4012
@..api_idx_0002_2.l2:
    push word [data_9088]            ; 0x4013
    call ds_dispatch_fda5            ; 0x4017
    pop cx                           ; 0x401a
    mov al, byte [data_5986]         ; 0x401b
    sub ah, ah                       ; 0x401e
    mov word [data_9058], ax         ; 0x4020
    mov ax, 1                        ; 0x4023
    push ax                          ; 0x4026
    call ds_dispatch_ef14            ; 0x4027
    pop cx                           ; 0x402a
    test word [data_9056], 0x1000    ; 0x402b
    je short @..api_idx_0002_2.l4    ; 0x4031
    cmp byte [data_5989], 1          ; 0x4033
    jne short @..api_idx_0002_2.l4   ; 0x4038
    cmp word [data_0e32], byte 0     ; 0x403a
    jne short @..api_idx_0002_2.l3   ; 0x403f
    call ds_dispatch_f02c            ; 0x4041
@..api_idx_0002_2.l3:
    mov word [data_0e32], 1          ; 0x4044
    jmp short @..api_idx_0002_2.l6   ; 0x404a
@..api_idx_0002_2.l4:
    cmp word [data_0e32], byte 1     ; 0x404c
    jne short @..api_idx_0002_2.l5   ; 0x4051
    call 0xf039                      ; 0x4053
@..api_idx_0002_2.l5:
    mov word [data_0e32], 0          ; 0x4056
@..api_idx_0002_2.l6:
    call ds_dispatch_ec17            ; 0x405c
    ret                              ; 0x405f
api_idx_000c:
    mov ax, 0xfff4                   ; 0x4060
    call ds_dispatch_f40b            ; 0x4063
    mov word [bp - 0x0002], 0        ; 0x4066
@..api_idx_000c.l1:
    mov word [bp - 0x0004], 0        ; 0x406b
@..api_idx_000c.l2:
    mov ax, 0x3f                     ; 0x4070
    push ax                          ; 0x4073
    mov ax, 0                        ; 0x4074
    push ax                          ; 0x4077
    mov ax, 3                        ; 0x4078
    imul word [bp - 0x0002]          ; 0x407b
    add ax, word [bp - 0x0004]       ; 0x407e
    mov bx, ax                       ; 0x4081
    mov al, byte [bx - 0x636c]       ; 0x4083
    sub ah, ah                       ; 0x4087
    add ax, word [bp + 0x4]          ; 0x4089
    push ax                          ; 0x408c
    call ds_dispatch_b7c2            ; 0x408d
    add sp, byte 6                   ; 0x4090
    push ax                          ; 0x4093
    mov ax, 3                        ; 0x4094
    imul word [bp - 0x0002]          ; 0x4097
    mov cx, ax                       ; 0x409a
    add ax, word [bp - 0x0004]       ; 0x409c
    mov bx, ax                       ; 0x409f
    pop ax                           ; 0x40a1
    mov byte [bx - 0x606c], al       ; 0x40a2
    cmp al, 0x20                     ; 0x40a6
    jbe short @..api_idx_000c.l3     ; 0x40a8
    sub ah, ah                       ; 0x40aa
    add ax, strict word 0xffe0       ; 0x40ac
    imul word [bp + 0x6]             ; 0x40af
    mov cx, 0x20                     ; 0x40b2
    cwd                              ; 0x40b5
    idiv cx                          ; 0x40b6
    mov word [bp - 0x0006], ax       ; 0x40b8
    mov ax, 0x3f                     ; 0x40bb
    push ax                          ; 0x40be
    mov ax, 0                        ; 0x40bf
    push ax                          ; 0x40c2
    mov al, byte [bx - 0x606c]       ; 0x40c3
    sub ah, ah                       ; 0x40c7
    add ax, word [bp - 0x0006]       ; 0x40c9
    push ax                          ; 0x40cc
    call ds_dispatch_b7c2            ; 0x40cd
    add sp, byte 6                   ; 0x40d0
    push ax                          ; 0x40d3
    mov ax, 3                        ; 0x40d4
    imul word [bp - 0x0002]          ; 0x40d7
    mov cx, ax                       ; 0x40da
    add ax, word [bp - 0x0004]       ; 0x40dc
    mov bx, ax                       ; 0x40df
    pop ax                           ; 0x40e1
    mov byte [bx - 0x606c], al       ; 0x40e2
    jmp short @..api_idx_000c.l4     ; 0x40e6
@..api_idx_000c.l3:
    mov ax, 3                        ; 0x40e8
    imul word [bp - 0x0002]          ; 0x40eb
    add ax, word [bp - 0x0004]       ; 0x40ee
    mov bx, ax                       ; 0x40f1
    cmp byte [bx - 0x606c], 0x20     ; 0x40f3
    jae short @..api_idx_000c.l4     ; 0x40f8
    mov al, byte [bx - 0x606c]       ; 0x40fa
    sub ah, ah                       ; 0x40fe
    mov cx, ax                       ; 0x4100
    mov ax, 0x20                     ; 0x4102
    sub ax, cx                       ; 0x4105
    imul word [bp + 0x6]             ; 0x4107
    mov cx, 0x20                     ; 0x410a
    cwd                              ; 0x410d
    idiv cx                          ; 0x410e
    mov word [bp - 0x0006], ax       ; 0x4110
    mov ax, 0x3f                     ; 0x4113
    push ax                          ; 0x4116
    mov ax, 0                        ; 0x4117
    push ax                          ; 0x411a
    mov al, byte [bx - 0x606c]       ; 0x411b
    sub ah, ah                       ; 0x411f
    sub ax, word [bp - 0x0006]       ; 0x4121
    push ax                          ; 0x4124
    call ds_dispatch_b7c2            ; 0x4125
    add sp, byte 6                   ; 0x4128
    push ax                          ; 0x412b
    mov ax, 3                        ; 0x412c
    imul word [bp - 0x0002]          ; 0x412f
    mov cx, ax                       ; 0x4132
    add ax, word [bp - 0x0004]       ; 0x4134
    mov bx, ax                       ; 0x4137
    pop ax                           ; 0x4139
    mov byte [bx - 0x606c], al       ; 0x413a
@..api_idx_000c.l4:
    inc word [bp - 0x0004]           ; 0x413e
    mov ax, word [bp - 0x0004]       ; 0x4141
    cmp ax, strict word 3            ; 0x4144
    jge short @..api_idx_000c.l5     ; 0x4147
    jmp near @..api_idx_000c.l2      ; 0x4149
@..api_idx_000c.l5:
    inc word [bp - 0x0002]           ; 0x414c
    mov ax, word [bp - 0x0002]       ; 0x414f
    cmp ax, 0x100                    ; 0x4152
    jge short @..api_idx_000c.l6     ; 0x4155
    jmp near @..api_idx_000c.l1      ; 0x4157
@..api_idx_000c.l6:
    mov ax, 0xff                     ; 0x415a
    push ax                          ; 0x415d
    mov ax, 0x200                    ; 0x415e
    push ax                          ; 0x4161
    mov ax, 0xa294                   ; 0x4162
    push ax                          ; 0x4165
    call ds_dispatch_f306            ; 0x4166
    add sp, byte 6                   ; 0x4169
    mov word [bp - 0x0002], 0        ; 0x416c
@..api_idx_000c.l7:
    mov ax, 3                        ; 0x4171
    imul word [bp - 0x0002]          ; 0x4174
    mov bx, ax                       ; 0x4177
    mov al, byte [bx - 0x606c]       ; 0x4179
    sub ah, ah                       ; 0x417d
    mov cx, 8                        ; 0x417f
    cwd                              ; 0x4182
    idiv cx                          ; 0x4183
    mov word [bp - 0x0008], ax       ; 0x4185
    mov al, byte [bx - 0x606b]       ; 0x4188
    sub ah, ah                       ; 0x418c
    cwd                              ; 0x418e
    idiv cx                          ; 0x418f
    mov word [bp - 0x000a], ax       ; 0x4191
    mov al, byte [bx - 0x606a]       ; 0x4194
    sub ah, ah                       ; 0x4198
    cwd                              ; 0x419a
    idiv cx                          ; 0x419b
    mov word [bp - 0x000c], ax       ; 0x419d
    mov al, byte [bp - 0x0002]       ; 0x41a0
    mov dx, word [bp - 0x0008]       ; 0x41a3
    mov cx, 6                        ; 0x41a6
    shl dx, cl                       ; 0x41a9
    mov cx, dx                       ; 0x41ab
    mov dx, word [bp - 0x000a]       ; 0x41ad
    shl dx, 1                        ; 0x41b0
    shl dx, 1                        ; 0x41b2
    shl dx, 1                        ; 0x41b4
    add cx, dx                       ; 0x41b6
    add cx, word [bp - 0x000c]       ; 0x41b8
    mov bx, cx                       ; 0x41bb
    mov byte [bx - 0x5d6c], al       ; 0x41bd
    inc word [bp - 0x0002]           ; 0x41c1
    mov ax, word [bp - 0x0002]       ; 0x41c4
    cmp ax, 0x100                    ; 0x41c7
    jl short @..api_idx_000c.l7      ; 0x41ca
    mov ax, 0xa294                   ; 0x41cc
    push ax                          ; 0x41cf
    mov ax, 0x9f94                   ; 0x41d0
    push ax                          ; 0x41d3
    call ds_dispatch_f10b            ; 0x41d4
    add sp, byte 4                   ; 0x41d7
    mov ax, 0xffff                   ; 0x41da
    push ax                          ; 0x41dd
    push ax                          ; 0x41de
    push ax                          ; 0x41df
    call ds_dispatch_f0d7            ; 0x41e0
    add sp, byte 6                   ; 0x41e3
    ret                              ; 0x41e6
api_idx_0050:
    mov ax, 0xffb0                   ; 0x41e7
    call ds_dispatch_f40b            ; 0x41ea
    lea ax, word [bp - 0x0050]       ; 0x41ed
    push ax                          ; 0x41f0
    push word [bp + 0x4]             ; 0x41f1
    call ds_dispatch_b53b            ; 0x41f4
    add sp, byte 4                   ; 0x41f7
    mov ax, 0xc2                     ; 0x41fa
    push ax                          ; 0x41fd
    push word [bp + 0xa]             ; 0x41fe
    call ds_dispatch_e823            ; 0x4201
    add sp, byte 4                   ; 0x4204
    cmp word [bp + 0x6], byte 0      ; 0x4207
    jge short @..api_idx_0050.l1     ; 0x420b
    lea ax, word [bp - 0x0050]       ; 0x420d
    push ax                          ; 0x4210
    call ds_dispatch_fa90            ; 0x4211
    pop cx                           ; 0x4214
    mov cx, 6                        ; 0x4215
    imul cx                          ; 0x4218
    mov cx, data_0002                ; 0x421a
    cwd                              ; 0x421d
    idiv cx                          ; 0x421e
    mov cx, ax                       ; 0x4220
    mov ax, 0xa0                     ; 0x4222
    sub ax, cx                       ; 0x4225
    mov word [bp + 0x6], ax          ; 0x4227
@..api_idx_0050.l1:
    push word [bp + 0x8]             ; 0x422a
    push word [bp + 0x6]             ; 0x422d
    call ds_dispatch_e809            ; 0x4230
    add sp, byte 4                   ; 0x4233
    mov ax, 0                        ; 0x4236
    push ax                          ; 0x4239
    lea ax, word [bp - 0x0050]       ; 0x423a
    push ax                          ; 0x423d
    call ds_dispatch_e84e            ; 0x423e
    add sp, byte 4                   ; 0x4241
    ret                              ; 0x4244
loc_4245:
    mov ax, 0                        ; 0x4245
    call ds_dispatch_f40b            ; 0x4248
    mov ax, 0                        ; 0x424b
    push ax                          ; 0x424e
    mov ax, 1                        ; 0x424f
    push ax                          ; 0x4252
    call ds_dispatch_e823            ; 0x4253
    add sp, byte 4                   ; 0x4256
    push word [bp + 0x6]             ; 0x4259
    push word [bp + 0x4]             ; 0x425c
    call ds_dispatch_e809            ; 0x425f
    add sp, byte 4                   ; 0x4262
    mov ax, 0                        ; 0x4265
    push ax                          ; 0x4268
    mov ax, 5                        ; 0x4269
    push ax                          ; 0x426c
    call ds_dispatch_e830            ; 0x426d
    add sp, byte 4                   ; 0x4270
    push word [bp + 0x6]             ; 0x4273
    mov ax, word [bp + 0x4]          ; 0x4276
    add ax, word [bp + 0x8]          ; 0x4279
    push ax                          ; 0x427c
    call ds_dispatch_e809            ; 0x427d
    add sp, byte 4                   ; 0x4280
    mov ax, 0                        ; 0x4283
    push ax                          ; 0x4286
    mov ax, 6                        ; 0x4287
    push ax                          ; 0x428a
    call ds_dispatch_e830            ; 0x428b
    add sp, byte 4                   ; 0x428e
    ret                              ; 0x4291
math_loc_4292:
    mov ax, 0                        ; 0x4292
    call ds_dispatch_f40b            ; 0x4295
    mov ax, word [bp + 0x8]          ; 0x4298
    add ax, strict word 6            ; 0x429b
    push ax                          ; 0x429e
    mov ax, word [bp + 0x6]          ; 0x429f
    add ax, strict word 0xe          ; 0x42a2
    push ax                          ; 0x42a5
    push word [bp + 0x8]             ; 0x42a6
    push word [bp + 0x6]             ; 0x42a9
    call ds_dispatch_bd98            ; 0x42ac
    add sp, byte 8                   ; 0x42af
    mov ax, word [bp + 0x8]          ; 0x42b2
    inc ax                           ; 0x42b5
    push ax                          ; 0x42b6
    mov ax, word [bp + 0x6]          ; 0x42b7
    inc ax                           ; 0x42ba
    inc ax                           ; 0x42bb
    push ax                          ; 0x42bc
    call ds_dispatch_e809            ; 0x42bd
    add sp, byte 4                   ; 0x42c0
    mov ax, 0xc3                     ; 0x42c3
    push ax                          ; 0x42c6
    mov ax, 0xb4                     ; 0x42c7
    push ax                          ; 0x42ca
    call ds_dispatch_e823            ; 0x42cb
    add sp, byte 4                   ; 0x42ce
    mov ax, 0                        ; 0x42d1
    push ax                          ; 0x42d4
    mov ax, data_0002                ; 0x42d5
    push ax                          ; 0x42d8
    push word [bp + 0x4]             ; 0x42d9
    call ds_dispatch_b2e7            ; 0x42dc
    add sp, byte 6                   ; 0x42df
    ret                              ; 0x42e2
math_loc_42e3:
    mov ax, 0                        ; 0x42e3
    call ds_dispatch_f40b            ; 0x42e6
    mov ax, word [bp + 0x8]          ; 0x42e9
    add ax, strict word 6            ; 0x42ec
    push ax                          ; 0x42ef
    mov ax, 6                        ; 0x42f0
    imul word [bp + 0xa]             ; 0x42f3
    add ax, word [bp + 0x6]          ; 0x42f6
    inc ax                           ; 0x42f9
    inc ax                           ; 0x42fa
    push ax                          ; 0x42fb
    push word [bp + 0x8]             ; 0x42fc
    push word [bp + 0x6]             ; 0x42ff
    call ds_dispatch_bd98            ; 0x4302
    add sp, byte 8                   ; 0x4305
    mov ax, word [bp + 0x8]          ; 0x4308
    inc ax                           ; 0x430b
    push ax                          ; 0x430c
    mov ax, word [bp + 0x6]          ; 0x430d
    inc ax                           ; 0x4310
    inc ax                           ; 0x4311
    push ax                          ; 0x4312
    call ds_dispatch_e809            ; 0x4313
    add sp, byte 4                   ; 0x4316
    mov ax, 0xc3                     ; 0x4319
    push ax                          ; 0x431c
    mov ax, 0xb4                     ; 0x431d
    push ax                          ; 0x4320
    call ds_dispatch_e823            ; 0x4321
    add sp, byte 4                   ; 0x4324
    mov ax, 0                        ; 0x4327
    push ax                          ; 0x432a
    push word [bp + 0x4]             ; 0x432b
    call ds_dispatch_e84e            ; 0x432e
    add sp, byte 4                   ; 0x4331
    ret                              ; 0x4334
api_idx_0052:
    mov ax, 0xffae                   ; 0x4335
    call ds_dispatch_f40b            ; 0x4338
    mov ax, word [bp + 0x4]          ; 0x433b
    jmp near @..local.l268           ; 0x433e
    lea ax, word [bp - 0x0052]       ; 0x4341
    push ax                          ; 0x4344
    mov al, byte [data_5989]         ; 0x4345
    sub ah, ah                       ; 0x4348
    add ax, 0x92e                    ; 0x434a
    push ax                          ; 0x434d
    call ds_dispatch_b53b            ; 0x434e
    add sp, byte 4                   ; 0x4351
    lea ax, word [bp - 0x0052]       ; 0x4354
    push ax                          ; 0x4357
    mov ax, 1                        ; 0x4358
    push ax                          ; 0x435b
    push ax                          ; 0x435c
    mov ax, 8                        ; 0x435d
    push ax                          ; 0x4360
    mov ax, word [bp + 0x8]          ; 0x4361
    add ax, strict word 0x19         ; 0x4364
    push ax                          ; 0x4367
    mov ax, word [bp + 0x6]          ; 0x4368
    add ax, strict word 0x5c         ; 0x436b
    push ax                          ; 0x436e
    call ds_dispatch_c0c1            ; 0x436f
    add sp, byte 0x0c                ; 0x4372
    jmp near @..local.l269           ; 0x4375
    mov ax, word [bp + 0x8]          ; 0x4378
    add ax, strict word 0x26         ; 0x437b
    push ax                          ; 0x437e
    mov ax, word [bp + 0x6]          ; 0x437f
    add ax, strict word 0x39         ; 0x4382
    push ax                          ; 0x4385
    mov al, byte [data_5986]         ; 0x4386
    sub ah, ah                       ; 0x4389
    push ax                          ; 0x438b
    call math_loc_4292               ; 0x438c
    add sp, byte 6                   ; 0x438f
    jmp near @..local.l269           ; 0x4392
    mov ax, 0x12                     ; 0x4395
    push ax                          ; 0x4398
    mov ax, word [bp + 0x8]          ; 0x4399
    add ax, strict word 0x38         ; 0x439c
    push ax                          ; 0x439f
    mov ax, word [bp + 0x6]          ; 0x43a0
    add ax, strict word 0x27         ; 0x43a3
    push ax                          ; 0x43a6
    mov ax, 0x593a                   ; 0x43a7
    push ax                          ; 0x43aa
    call math_loc_42e3               ; 0x43ab
    add sp, byte 8                   ; 0x43ae
    jmp near @..local.l269           ; 0x43b1
    mov ax, 0x12                     ; 0x43b4
    push ax                          ; 0x43b7
    mov ax, word [bp + 0x8]          ; 0x43b8
    add ax, strict word 0x44         ; 0x43bb
    push ax                          ; 0x43be
    mov ax, word [bp + 0x6]          ; 0x43bf
    add ax, strict word 0x27         ; 0x43c2
    push ax                          ; 0x43c5
    mov ax, 0x594e                   ; 0x43c6
    push ax                          ; 0x43c9
    call math_loc_42e3               ; 0x43ca
    add sp, byte 8                   ; 0x43cd
    jmp near @..local.l269           ; 0x43d0
    lea ax, word [bp - 0x0052]       ; 0x43d3
    push ax                          ; 0x43d6
    mov al, byte [data_5984]         ; 0x43d7
    sub ah, ah                       ; 0x43da
    add ax, 0x931                    ; 0x43dc
    push ax                          ; 0x43df
    call ds_dispatch_b53b            ; 0x43e0
    add sp, byte 4                   ; 0x43e3
    mov ax, math_loc_000e            ; 0x43e6
    push ax                          ; 0x43e9
    mov ax, word [bp + 0x8]          ; 0x43ea
    add ax, strict word 0x56         ; 0x43ed
    push ax                          ; 0x43f0
    mov ax, word [bp + 0x6]          ; 0x43f1
    add ax, strict word 0x3f         ; 0x43f4
    push ax                          ; 0x43f7
    lea ax, word [bp - 0x0052]       ; 0x43f8
    push ax                          ; 0x43fb
    call math_loc_42e3               ; 0x43fc
    add sp, byte 8                   ; 0x43ff
    jmp near @..local.l269           ; 0x4402
    mov ax, word [bp + 0x8]          ; 0x4405
    add ax, strict word 0x74         ; 0x4408
    push ax                          ; 0x440b
    mov ax, word [bp + 0x6]          ; 0x440c
    add ax, strict word 0x77         ; 0x440f
    push ax                          ; 0x4412
    mov ax, word [bp + 0x8]          ; 0x4413
    add ax, strict word 0x62         ; 0x4416
    push ax                          ; 0x4419
    mov ax, word [bp + 0x6]          ; 0x441a
    add ax, strict word 0x69         ; 0x441d
    push ax                          ; 0x4420
    call ds_dispatch_bd98            ; 0x4421
    add sp, byte 8                   ; 0x4424
    mov ax, 0xc3                     ; 0x4427
    push ax                          ; 0x442a
    mov ax, 0xb4                     ; 0x442b
    push ax                          ; 0x442e
    call ds_dispatch_e823            ; 0x442f
    add sp, byte 4                   ; 0x4432
    mov ax, word [bp + 0x8]          ; 0x4435
    add ax, strict word 0x63         ; 0x4438
    push ax                          ; 0x443b
    mov ax, word [bp + 0x6]          ; 0x443c
    add ax, strict word 0x6b         ; 0x443f
    push ax                          ; 0x4442
    call ds_dispatch_e809            ; 0x4443
    add sp, byte 4                   ; 0x4446
    mov ax, 0                        ; 0x4449
    push ax                          ; 0x444c
    mov ax, data_0002                ; 0x444d
    push ax                          ; 0x4450
    mov al, byte [data_597c]         ; 0x4451
    sub ah, ah                       ; 0x4454
    push ax                          ; 0x4456
    call ds_dispatch_b2e7            ; 0x4457
    add sp, byte 6                   ; 0x445a
    mov ax, word [bp + 0x8]          ; 0x445d
    add ax, strict word 0x69         ; 0x4460
    push ax                          ; 0x4463
    mov ax, word [bp + 0x6]          ; 0x4464
    add ax, strict word 0x6b         ; 0x4467
    push ax                          ; 0x446a
    call ds_dispatch_e809            ; 0x446b
    add sp, byte 4                   ; 0x446e
    mov ax, 0                        ; 0x4471
    push ax                          ; 0x4474
    mov ax, data_0002                ; 0x4475
    push ax                          ; 0x4478
    mov al, byte [data_597d]         ; 0x4479
    sub ah, ah                       ; 0x447c
    push ax                          ; 0x447e
    call ds_dispatch_b2e7            ; 0x447f
    add sp, byte 6                   ; 0x4482
    mov ax, word [bp + 0x8]          ; 0x4485
    add ax, strict word 0x6f         ; 0x4488
    push ax                          ; 0x448b
    mov ax, word [bp + 0x6]          ; 0x448c
    add ax, strict word 0x6b         ; 0x448f
    push ax                          ; 0x4492
    call ds_dispatch_e809            ; 0x4493
    add sp, byte 4                   ; 0x4496
    mov ax, 0                        ; 0x4499
    push ax                          ; 0x449c
    mov ax, data_0002                ; 0x449d
    push ax                          ; 0x44a0
    mov al, byte [data_597e]         ; 0x44a1
    sub ah, ah                       ; 0x44a4
    push ax                          ; 0x44a6
    call ds_dispatch_b2e7            ; 0x44a7
    add sp, byte 6                   ; 0x44aa
    jmp near @..local.l269           ; 0x44ad
    lea ax, word [bp - 0x0052]       ; 0x44b0
    push ax                          ; 0x44b3
    mov al, byte [data_5985]         ; 0x44b4
    sub ah, ah                       ; 0x44b7
    add ax, 0x946                    ; 0x44b9
    push ax                          ; 0x44bc
    call ds_dispatch_b53b            ; 0x44bd
    add sp, byte 4                   ; 0x44c0
    mov ax, math_loc_000e            ; 0x44c3
    push ax                          ; 0x44c6
    mov ax, word [bp + 0x8]          ; 0x44c7
    add ax, strict word 0x7a         ; 0x44ca
    push ax                          ; 0x44cd
    mov ax, word [bp + 0x6]          ; 0x44ce
    add ax, strict word 0x3f         ; 0x44d1
    push ax                          ; 0x44d4
    lea ax, word [bp - 0x0052]       ; 0x44d5
    push ax                          ; 0x44d8
    call math_loc_42e3               ; 0x44d9
    add sp, byte 8                   ; 0x44dc
    jmp near @..local.l269           ; 0x44df
    mov ax, word [bp + 0x8]          ; 0x44e2
    add ax, 0x86                     ; 0x44e5
    push ax                          ; 0x44e8
    mov ax, word [bp + 0x6]          ; 0x44e9
    add ax, strict word 0x69         ; 0x44ec
    push ax                          ; 0x44ef
    mov al, byte [data_597f]         ; 0x44f0
    sub ah, ah                       ; 0x44f3
    push ax                          ; 0x44f5
    call math_loc_4292               ; 0x44f6
    add sp, byte 6                   ; 0x44f9
    jmp near @..local.l269           ; 0x44fc
    lea ax, word [bp - 0x0052]       ; 0x44ff
    push ax                          ; 0x4502
    mov al, byte [data_5988]         ; 0x4503
    sub ah, ah                       ; 0x4506
    add ax, 0x938                    ; 0x4508
    push ax                          ; 0x450b
    call ds_dispatch_b53b            ; 0x450c
    add sp, byte 4                   ; 0x450f
    lea ax, word [bp - 0x0052]       ; 0x4512
    push ax                          ; 0x4515
    mov ax, 1                        ; 0x4516
    push ax                          ; 0x4519
    push ax                          ; 0x451a
    mov ax, 6                        ; 0x451b
    push ax                          ; 0x451e
    mov ax, word [bp + 0x8]          ; 0x451f
    add ax, strict word 0x19         ; 0x4522
    push ax                          ; 0x4525
    mov ax, word [bp + 0x6]          ; 0x4526
    add ax, 0xe6                     ; 0x4529
    push ax                          ; 0x452c
    call ds_dispatch_c0c1            ; 0x452d
    add sp, byte 0x0c                ; 0x4530

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
    cmp ax, strict word 0x11         ; 0x46aa
    jae short @..local.l269          ; 0x46ad
    xchg bx, ax                      ; 0x46af
    shl bx, 1                        ; 0x46b0
    jmp [cs:bx - 0x6931]             ; 0x46b2
@..local.l269:
    ret                              ; 0x46b7
loc_46b8:
    mov ax, 0                        ; 0x46b8
    call ds_dispatch_f40b            ; 0x46bb
    mov ax, 1                        ; 0x46be
    push ax                          ; 0x46c1
    mov ax, word [bp + 0x8]          ; 0x46c2
    add ax, strict word 6            ; 0x46c5
    push ax                          ; 0x46c8
    mov ax, word [bp + 0x6]          ; 0x46c9
    add ax, strict word 0xe          ; 0x46cc
    push ax                          ; 0x46cf
    push word [bp + 0x8]             ; 0x46d0
    push word [bp + 0x6]             ; 0x46d3
    call ds_dispatch_e901            ; 0x46d6
    add sp, byte 0x0a                ; 0x46d9
    mov ax, word [bp + 0x8]          ; 0x46dc
    inc ax                           ; 0x46df
    push ax                          ; 0x46e0
    mov ax, word [bp + 0x6]          ; 0x46e1
    inc ax                           ; 0x46e4
    inc ax                           ; 0x46e5
    push ax                          ; 0x46e6
    call ds_dispatch_e809            ; 0x46e7
    add sp, byte 4                   ; 0x46ea
    mov ax, 1                        ; 0x46ed
    push ax                          ; 0x46f0
    mov ax, 0                        ; 0x46f1
    push ax                          ; 0x46f4
    call ds_dispatch_e823            ; 0x46f5
    add sp, byte 4                   ; 0x46f8
    mov ax, 0                        ; 0x46fb
    push ax                          ; 0x46fe
    mov ax, data_0002                ; 0x46ff
    push ax                          ; 0x4702
    push word [bp + 0x4]             ; 0x4703
    call ds_dispatch_b2e7            ; 0x4706
    add sp, byte 6                   ; 0x4709
    mov ax, word [bp + 0x8]          ; 0x470c
    add ax, strict word 6            ; 0x470f
    push ax                          ; 0x4712
    mov ax, word [bp + 0x6]          ; 0x4713
    add ax, strict word 0xe          ; 0x4716
    push ax                          ; 0x4719
    push word [bp + 0x8]             ; 0x471a
    push word [bp + 0x6]             ; 0x471d
    call ds_dispatch_e8da            ; 0x4720
    add sp, byte 8                   ; 0x4723
    ret                              ; 0x4726
math_loc_4727:
    mov ax, 0                        ; 0x4727
    call ds_dispatch_f40b            ; 0x472a
    mov ax, word [bp + 0x8]          ; 0x472d
    add ax, strict word 6            ; 0x4730
    push ax                          ; 0x4733
    mov ax, 6                        ; 0x4734
    imul word [bp + 0xa]             ; 0x4737
    add ax, word [bp + 0x6]          ; 0x473a
    inc ax                           ; 0x473d
    inc ax                           ; 0x473e
    push ax                          ; 0x473f
    push word [bp + 0x8]             ; 0x4740
    push word [bp + 0x6]             ; 0x4743
    call ds_dispatch_bd98            ; 0x4746
    add sp, byte 8                   ; 0x4749
    mov ax, 1                        ; 0x474c
    push ax                          ; 0x474f
    mov ax, word [bp + 0x8]          ; 0x4750
    add ax, strict word 6            ; 0x4753
    push ax                          ; 0x4756
    mov ax, 6                        ; 0x4757
    imul word [bp + 0xa]             ; 0x475a
    add ax, word [bp + 0x6]          ; 0x475d
    inc ax                           ; 0x4760
    inc ax                           ; 0x4761
    push ax                          ; 0x4762
    push word [bp + 0x8]             ; 0x4763
    push word [bp + 0x6]             ; 0x4766
    call ds_dispatch_e901            ; 0x4769
    add sp, byte 0x0a                ; 0x476c
    mov ax, word [bp + 0x8]          ; 0x476f
    inc ax                           ; 0x4772
    push ax                          ; 0x4773
    mov ax, word [bp + 0x6]          ; 0x4774
    inc ax                           ; 0x4777
    inc ax                           ; 0x4778
    push ax                          ; 0x4779
    call ds_dispatch_e809            ; 0x477a
    add sp, byte 4                   ; 0x477d
    mov ax, 1                        ; 0x4780
    push ax                          ; 0x4783
    mov ax, 0                        ; 0x4784
    push ax                          ; 0x4787
    call ds_dispatch_e823            ; 0x4788
    add sp, byte 4                   ; 0x478b
    mov ax, 0                        ; 0x478e
    push ax                          ; 0x4791
    push word [bp + 0x4]             ; 0x4792
    call ds_dispatch_e84e            ; 0x4795
    add sp, byte 4                   ; 0x4798
    mov ax, word [bp + 0x8]          ; 0x479b
    add ax, strict word 6            ; 0x479e
    push ax                          ; 0x47a1
    mov ax, 6                        ; 0x47a2
    imul word [bp + 0xa]             ; 0x47a5
    add ax, word [bp + 0x6]          ; 0x47a8
    inc ax                           ; 0x47ab
    inc ax                           ; 0x47ac
    push ax                          ; 0x47ad
    push word [bp + 0x8]             ; 0x47ae
    push word [bp + 0x6]             ; 0x47b1
    call ds_dispatch_e8da            ; 0x47b4
    add sp, byte 8                   ; 0x47b7
    ret                              ; 0x47ba
math_loc_47bb:
    mov ax, 0                        ; 0x47bb
    call ds_dispatch_f40b            ; 0x47be
    mov ax, 0x16                     ; 0x47c1
    push ax                          ; 0x47c4
    mov ax, word [bp + 0x6]          ; 0x47c5
    add ax, strict word 8            ; 0x47c8
    push ax                          ; 0x47cb
    mov ax, 6                        ; 0x47cc
    imul word [bp + 0x8]             ; 0x47cf
    add ax, word [bp + 0x4]          ; 0x47d2
    push ax                          ; 0x47d5
    push word [bp + 0x6]             ; 0x47d6
    push word [bp + 0x4]             ; 0x47d9
    call loc_01bf                    ; 0x47dc
    add sp, byte 0x0a                ; 0x47df
    mov ax, word [bp + 0x6]          ; 0x47e2
    add ax, strict word 9            ; 0x47e5
    push ax                          ; 0x47e8
    mov ax, 6                        ; 0x47e9
    imul word [bp + 0x8]             ; 0x47ec
    add ax, word [bp + 0x4]          ; 0x47ef
    inc ax                           ; 0x47f2
    push ax                          ; 0x47f3
    mov ax, word [bp + 0x6]          ; 0x47f4
    dec ax                           ; 0x47f7
    push ax                          ; 0x47f8
    mov ax, word [bp + 0x4]          ; 0x47f9
    dec ax                           ; 0x47fc
    push ax                          ; 0x47fd
    call ds_dispatch_e8da            ; 0x47fe
    add sp, byte 8                   ; 0x4801
    mov ax, 0                        ; 0x4804
    push ax                          ; 0x4807
    mov ax, word [bp + 0x6]          ; 0x4808
    add ax, strict word 8            ; 0x480b
    push ax                          ; 0x480e
    mov ax, 6                        ; 0x480f
    imul word [bp + 0x8]             ; 0x4812
    add ax, word [bp + 0x4]          ; 0x4815
    push ax                          ; 0x4818
    push word [bp + 0x6]             ; 0x4819
    push word [bp + 0x4]             ; 0x481c
    call loc_01bf                    ; 0x481f
    add sp, byte 0x0a                ; 0x4822
    ret                              ; 0x4825
api_idx_0052_2:
    mov ax, 0xffae                   ; 0x4826
    call ds_dispatch_f40b            ; 0x4829
    mov ax, word [bp + 0x4]          ; 0x482c
    jmp near @..local.l270           ; 0x482f
    mov ax, 8                        ; 0x4832
    push ax                          ; 0x4835
    mov ax, word [bp + 0x8]          ; 0x4836
    add ax, strict word 0x19         ; 0x4839
    push ax                          ; 0x483c
    mov ax, word [bp + 0x6]          ; 0x483d
    add ax, strict word 0x5c         ; 0x4840
    push ax                          ; 0x4843
    call math_loc_47bb               ; 0x4844
    add sp, byte 6                   ; 0x4847
    jmp near @..local.l271           ; 0x484a
    mov ax, word [bp + 0x8]          ; 0x484d
    add ax, strict word 0x26         ; 0x4850
    push ax                          ; 0x4853
    mov ax, word [bp + 0x6]          ; 0x4854
    add ax, strict word 0x39         ; 0x4857
    push ax                          ; 0x485a
    mov al, byte [data_5986]         ; 0x485b
    sub ah, ah                       ; 0x485e
    push ax                          ; 0x4860
    call loc_46b8                    ; 0x4861
    add sp, byte 6                   ; 0x4864
    jmp near @..local.l271           ; 0x4867
    mov ax, 0x12                     ; 0x486a
    push ax                          ; 0x486d
    mov ax, word [bp + 0x8]          ; 0x486e
    add ax, strict word 0x38         ; 0x4871
    push ax                          ; 0x4874
    mov ax, word [bp + 0x6]          ; 0x4875
    add ax, strict word 0x27         ; 0x4878
    push ax                          ; 0x487b
    mov ax, 0x593a                   ; 0x487c
    push ax                          ; 0x487f
    call math_loc_4727               ; 0x4880
    add sp, byte 8                   ; 0x4883
    jmp near @..local.l271           ; 0x4886
    mov ax, 0x12                     ; 0x4889
    push ax                          ; 0x488c
    mov ax, word [bp + 0x8]          ; 0x488d
    add ax, strict word 0x44         ; 0x4890
    push ax                          ; 0x4893
    mov ax, word [bp + 0x6]          ; 0x4894
    add ax, strict word 0x27         ; 0x4897
    push ax                          ; 0x489a
    mov ax, 0x594e                   ; 0x489b
    push ax                          ; 0x489e
    call math_loc_4727               ; 0x489f
    add sp, byte 8                   ; 0x48a2
    jmp near @..local.l271           ; 0x48a5
    mov ax, 7                        ; 0x48a8
    push ax                          ; 0x48ab
    mov ax, word [bp + 0x8]          ; 0x48ac
    add ax, strict word 0x55         ; 0x48af
    push ax                          ; 0x48b2
    mov ax, word [bp + 0x6]          ; 0x48b3
    add ax, strict word 8            ; 0x48b6
    push ax                          ; 0x48b9
    call math_loc_47bb               ; 0x48ba
    add sp, byte 6                   ; 0x48bd
    jmp near @..local.l271           ; 0x48c0
    mov ax, word [bp + 0x8]          ; 0x48c3
    add ax, strict word 0x62         ; 0x48c6
    push ax                          ; 0x48c9
    mov ax, word [bp + 0x6]          ; 0x48ca
    add ax, strict word 0x69         ; 0x48cd
    push ax                          ; 0x48d0
    mov al, byte [data_597c]         ; 0x48d1
    sub ah, ah                       ; 0x48d4
    push ax                          ; 0x48d6
    call loc_46b8                    ; 0x48d7
    add sp, byte 6                   ; 0x48da
    jmp near @..local.l271           ; 0x48dd
    mov ax, word [bp + 0x8]          ; 0x48e0
    add ax, strict word 0x68         ; 0x48e3
    push ax                          ; 0x48e6
    mov ax, word [bp + 0x6]          ; 0x48e7
    add ax, strict word 0x69         ; 0x48ea
    push ax                          ; 0x48ed
    mov al, byte [data_597d]         ; 0x48ee
    sub ah, ah                       ; 0x48f1
    push ax                          ; 0x48f3
    call loc_46b8                    ; 0x48f4
    add sp, byte 6                   ; 0x48f7
    jmp near @..local.l271           ; 0x48fa
    mov ax, word [bp + 0x8]          ; 0x48fd
    add ax, strict word 0x6e         ; 0x4900
    push ax                          ; 0x4903
    mov ax, word [bp + 0x6]          ; 0x4904
    add ax, strict word 0x69         ; 0x4907
    push ax                          ; 0x490a
    mov al, byte [data_597e]         ; 0x490b
    sub ah, ah                       ; 0x490e
    push ax                          ; 0x4910
    call loc_46b8                    ; 0x4911
    add sp, byte 6                   ; 0x4914
    jmp near @..local.l271           ; 0x4917
    mov ax, 7                        ; 0x491a
    push ax                          ; 0x491d
    mov ax, word [bp + 0x8]          ; 0x491e
    add ax, strict word 0x79         ; 0x4921
    push ax                          ; 0x4924
    mov ax, word [bp + 0x6]          ; 0x4925
    add ax, strict word 8            ; 0x4928
    push ax                          ; 0x492b
    call math_loc_47bb               ; 0x492c
    add sp, byte 6                   ; 0x492f
    jmp near @..local.l271           ; 0x4932
    mov ax, word [bp + 0x8]          ; 0x4935
    add ax, 0x86                     ; 0x4938
    push ax                          ; 0x493b
    mov ax, word [bp + 0x6]          ; 0x493c
    add ax, strict word 0x69         ; 0x493f
    push ax                          ; 0x4942
    mov al, byte [data_597f]         ; 0x4943
    sub ah, ah                       ; 0x4946
    push ax                          ; 0x4948
    call loc_46b8                    ; 0x4949
    add sp, byte 6                   ; 0x494c
    jmp near @..local.l271           ; 0x494f
    mov ax, 6                        ; 0x4952
    push ax                          ; 0x4955
    mov ax, word [bp + 0x8]          ; 0x4956
    add ax, strict word 0x19         ; 0x4959
    push ax                          ; 0x495c
    mov ax, word [bp + 0x6]          ; 0x495d
    add ax, 0xe6                     ; 0x4960
    push ax                          ; 0x4963
    call math_loc_47bb               ; 0x4964
    add sp, byte 6                   ; 0x4967
    jmp near @..local.l271           ; 0x496a
    mov ax, 3                        ; 0x496d
    push ax                          ; 0x4970
    mov ax, word [bp + 0x8]          ; 0x4971
    add ax, strict word 0x25         ; 0x4974
    push ax                          ; 0x4977
    mov ax, word [bp + 0x6]          ; 0x4978
    add ax, 0xc2                     ; 0x497b
    push ax                          ; 0x497e
    call math_loc_47bb               ; 0x497f
    add sp, byte 6                   ; 0x4982
    jmp near @..local.l271           ; 0x4985
    mov ax, 6                        ; 0x4988
    push ax                          ; 0x498b
    mov ax, word [bp + 0x8]          ; 0x498c
    add ax, strict word 0x37         ; 0x498f
    push ax                          ; 0x4992
    mov ax, word [bp + 0x6]          ; 0x4993
    add ax, 0xa1                     ; 0x4996
    push ax                          ; 0x4999
    call math_loc_47bb               ; 0x499a
    add sp, byte 6                   ; 0x499d
    jmp near @..local.l271           ; 0x49a0
    mov ax, 0xa                      ; 0x49a3
    push ax                          ; 0x49a6
    mov ax, word [bp + 0x8]          ; 0x49a7
    add ax, strict word 0x44         ; 0x49aa
    push ax                          ; 0x49ad
    mov ax, word [bp + 0x6]          ; 0x49ae
    add ax, 0xd5                     ; 0x49b1
    push ax                          ; 0x49b4
    mov ax, 0x5964                   ; 0x49b5
    push ax                          ; 0x49b8
    call math_loc_4727               ; 0x49b9
    add sp, byte 8                   ; 0x49bc
    jmp near @..local.l271           ; 0x49bf
    mov ax, 1                        ; 0x49c2
    push ax                          ; 0x49c5
    mov ax, word [bp + 0x8]          ; 0x49c6
    add ax, strict word 0x68         ; 0x49c9
    push ax                          ; 0x49cc
    mov ax, word [bp + 0x6]          ; 0x49cd
    add ax, 0xfb                     ; 0x49d0
    push ax                          ; 0x49d3
    mov ax, word [bp + 0x8]          ; 0x49d4
    add ax, strict word 0x62         ; 0x49d7
    push ax                          ; 0x49da
    mov ax, word [bp + 0x6]          ; 0x49db
    add ax, 0xe7                     ; 0x49de
    push ax                          ; 0x49e1
    call ds_dispatch_e901            ; 0x49e2
    add sp, byte 0x0a                ; 0x49e5
    mov ax, word [bp + 0x8]          ; 0x49e8
    add ax, strict word 0x63         ; 0x49eb
    push ax                          ; 0x49ee
    mov ax, word [bp + 0x6]          ; 0x49ef
    add ax, 0xe9                     ; 0x49f2
    push ax                          ; 0x49f5
    call ds_dispatch_e809            ; 0x49f6
    add sp, byte 4                   ; 0x49f9
    mov ax, 1                        ; 0x49fc
    push ax                          ; 0x49ff
    mov ax, 0                        ; 0x4a00
    push ax                          ; 0x4a03
    call ds_dispatch_e823            ; 0x4a04
    add sp, byte 4                   ; 0x4a07
    mov ax, 0                        ; 0x4a0a
    push ax                          ; 0x4a0d
    mov ax, 3                        ; 0x4a0e
    push ax                          ; 0x4a11
    mov al, byte [data_5978]         ; 0x4a12
    cbw                              ; 0x4a15
    push ax                          ; 0x4a16
    call ds_dispatch_b2e7            ; 0x4a17
    add sp, byte 6                   ; 0x4a1a
    mov ax, word [bp + 0x8]          ; 0x4a1d
    add ax, strict word 0x68         ; 0x4a20
    push ax                          ; 0x4a23

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
    cmp ax, strict word 0x13         ; 0x4b1b
    jae short @..local.l271          ; 0x4b1e
    xchg bx, ax                      ; 0x4b20
    shl bx, 1                        ; 0x4b21
    jmp [cs:bx - 0x64c4]             ; 0x4b23
@..local.l271:
    ret                              ; 0x4b28
loc_4b29:
    mov ax, 0                        ; 0x4b29
    call ds_dispatch_f40b            ; 0x4b2c
    cmp word [bp + 0x6], byte 0      ; 0x4b2f
    jge short @..local.l273          ; 0x4b33
    mov bx, word [bp + 0x4]          ; 0x4b35
    cmp byte [bx + 0x597c], 0        ; 0x4b38
    jbe short @..local.l272          ; 0x4b3d
    dec byte [bx + 0x597c]           ; 0x4b3f
@..local.l272:
    jmp short @..local.l274          ; 0x4b43
@..local.l273:
    cmp word [bp + 0x6], byte 0      ; 0x4b45
    jle short @..local.l274          ; 0x4b49
    mov bx, word [bp + 0x4]          ; 0x4b4b
    mov al, byte [bx + 0x597c]       ; 0x4b4e
    sub ah, ah                       ; 0x4b52
    cmp ax, word [bp + 0x8]          ; 0x4b54
    jge short @..local.l274          ; 0x4b57
    inc byte [bx + 0x597c]           ; 0x4b59
@..local.l274:
    ret                              ; 0x4b5d
loc_4b5e:
    mov ax, 0                        ; 0x4b5e
    call ds_dispatch_f40b            ; 0x4b61
    cmp word [bp + 0x6], byte 0      ; 0x4b64
    jge short @..local.l276          ; 0x4b68
    mov bx, word [bp + 0x4]          ; 0x4b6a
    mov al, byte [bx + 0x5978]       ; 0x4b6d
    cbw                              ; 0x4b71
    cmp ax, word [bp + 0x8]          ; 0x4b72
    jle short @..local.l275          ; 0x4b75
    dec byte [bx + 0x5978]           ; 0x4b77
@..local.l275:
    jmp short @..local.l277          ; 0x4b7b
@..local.l276:
    cmp word [bp + 0x6], byte 0      ; 0x4b7d
    jle short @..local.l277          ; 0x4b81
    mov bx, word [bp + 0x4]          ; 0x4b83
    mov al, byte [bx + 0x5978]       ; 0x4b86
    cbw                              ; 0x4b8a
    cmp ax, word [bp + 0x8]          ; 0x4b8b
    jge short @..local.l277          ; 0x4b8e
    inc byte [bx + 0x5978]           ; 0x4b90
@..local.l277:
    ret                              ; 0x4b94
api_idx_0062:
    mov ax, 0xff9e                   ; 0x4b95
    call ds_dispatch_f40b            ; 0x4b98
    mov word [bp - 0x0002], 0        ; 0x4b9b
    mov word [bp - 0x0062], 0        ; 0x4ba0
@..api_idx_0062.l1:
    lea ax, word [bp - 0x005e]       ; 0x4ba5
    push ax                          ; 0x4ba8
    mov ax, word [bp + 0x4]          ; 0x4ba9
    add ax, word [bp - 0x0002]       ; 0x4bac
    push ax                          ; 0x4baf
    call ds_dispatch_b53b            ; 0x4bb0
    add sp, byte 4                   ; 0x4bb3
    cmp word [data_5216], byte 0     ; 0x4bb6
    jne short @..api_idx_0062.l3     ; 0x4bbb
    lea ax, word [bp - 0x005e]       ; 0x4bbd
    push ax                          ; 0x4bc0
    call ds_dispatch_fa90            ; 0x4bc1
    pop cx                           ; 0x4bc4
    dec ax                           ; 0x4bc5
    cmp ax, word [bp - 0x0062]       ; 0x4bc6
    jle short @..api_idx_0062.l2     ; 0x4bc9
    lea ax, word [bp - 0x005e]       ; 0x4bcb
    push ax                          ; 0x4bce
    call ds_dispatch_fa90            ; 0x4bcf
    pop cx                           ; 0x4bd2
    dec ax                           ; 0x4bd3
    mov word [bp - 0x0062], ax       ; 0x4bd4
@..api_idx_0062.l2:
    inc word [bp - 0x0002]           ; 0x4bd7
@..api_idx_0062.l3:
    cmp word [data_5216], byte 0     ; 0x4bda
    je short @..api_idx_0062.l1      ; 0x4bdf
    mov ax, 6                        ; 0x4be1
    imul word [bp - 0x0062]          ; 0x4be4
    add ax, strict word 0xc          ; 0x4be7
    mov word [bp - 0x0004], ax       ; 0x4bea
    mov ax, 6                        ; 0x4bed
    imul word [bp - 0x0002]          ; 0x4bf0
    add ax, strict word 0xc          ; 0x4bf3
    mov word [bp - 0x0006], ax       ; 0x4bf6
    mov ax, word [bp - 0x0004]       ; 0x4bf9
    mov cx, data_0002                ; 0x4bfc
    cwd                              ; 0x4bff
    idiv cx                          ; 0x4c00
    mov cx, ax                       ; 0x4c02
    mov ax, 0xa0                     ; 0x4c04
    sub ax, cx                       ; 0x4c07
    mov word [bp - 0x0008], ax       ; 0x4c09
    mov ax, word [bp - 0x0006]       ; 0x4c0c
    mov cx, data_0002                ; 0x4c0f
    cwd                              ; 0x4c12
    idiv cx                          ; 0x4c13
    mov cx, ax                       ; 0x4c15
    mov ax, 0x64                     ; 0x4c17
    sub ax, cx                       ; 0x4c1a
    mov word [bp - 0x000a], ax       ; 0x4c1c
    mov ax, word [bp - 0x0008]       ; 0x4c1f
    add ax, word [bp - 0x0004]       ; 0x4c22
    dec ax                           ; 0x4c25
    mov word [bp - 0x000c], ax       ; 0x4c26
    mov ax, word [bp - 0x000a]       ; 0x4c29
    add ax, word [bp - 0x0006]       ; 0x4c2c
    dec ax                           ; 0x4c2f
    mov word [bp - 0x000e], ax       ; 0x4c30
    mov ax, 0x90f5                   ; 0x4c33
    push ax                          ; 0x4c36
    mov ax, word [bp - 0x000e]       ; 0x4c37
    inc ax                           ; 0x4c3a
    push ax                          ; 0x4c3b
    mov ax, word [bp - 0x000c]       ; 0x4c3c
    inc ax                           ; 0x4c3f
    push ax                          ; 0x4c40
    mov ax, word [bp - 0x000a]       ; 0x4c41
    dec ax                           ; 0x4c44
    push ax                          ; 0x4c45
    mov ax, word [bp - 0x0008]       ; 0x4c46
    dec ax                           ; 0x4c49
    push ax                          ; 0x4c4a
    call ds_dispatch_c283            ; 0x4c4b
    add sp, byte 0x0a                ; 0x4c4e
    mov word [bp - 0x0060], ax       ; 0x4c51
    push word [bp - 0x000e]          ; 0x4c54
    push word [bp - 0x000c]          ; 0x4c57
    push word [bp - 0x000a]          ; 0x4c5a
    push word [bp - 0x0008]          ; 0x4c5d
    call ds_dispatch_bc9a            ; 0x4c60
    add sp, byte 8                   ; 0x4c63
    mov word [bp - 0x0002], 0        ; 0x4c66
@..api_idx_0062.l4:
    lea ax, word [bp - 0x005e]       ; 0x4c6b
    push ax                          ; 0x4c6e
    mov ax, word [bp + 0x4]          ; 0x4c6f
    add ax, word [bp - 0x0002]       ; 0x4c72
    push ax                          ; 0x4c75
    call ds_dispatch_b53b            ; 0x4c76
    add sp, byte 4                   ; 0x4c79
    cmp word [data_5216], byte 0     ; 0x4c7c
    jne short @..api_idx_0062.l5     ; 0x4c81
    mov ax, 6                        ; 0x4c83
    imul word [bp - 0x0002]          ; 0x4c86
    add ax, word [bp - 0x000a]       ; 0x4c89
    add ax, strict word 6            ; 0x4c8c
    push ax                          ; 0x4c8f
    lea ax, word [bp - 0x005e]       ; 0x4c90
    push ax                          ; 0x4c93
    call ds_dispatch_fa90            ; 0x4c94
    pop cx                           ; 0x4c97
    mov cx, 6                        ; 0x4c98
    imul cx                          ; 0x4c9b
    add ax, strict word 0xfffa       ; 0x4c9d
    mov cx, data_0002                ; 0x4ca0
    cwd                              ; 0x4ca3
    idiv cx                          ; 0x4ca4
    mov cx, ax                       ; 0x4ca6
    mov ax, 0xa0                     ; 0x4ca8
    sub ax, cx                       ; 0x4cab
    push ax                          ; 0x4cad
    call ds_dispatch_e809            ; 0x4cae
    add sp, byte 4                   ; 0x4cb1
    mov ax, 0                        ; 0x4cb4
    push ax                          ; 0x4cb7
    mov al, byte [bp - 0x005e]       ; 0x4cb8
    sub ah, ah                       ; 0x4cbb
    push ax                          ; 0x4cbd
    call ds_dispatch_e823            ; 0x4cbe
    add sp, byte 4                   ; 0x4cc1
    mov ax, 0                        ; 0x4cc4
    push ax                          ; 0x4cc7
    lea ax, word [bp - 0x005d]       ; 0x4cc8
    push ax                          ; 0x4ccb
    call ds_dispatch_e84e            ; 0x4ccc
    add sp, byte 4                   ; 0x4ccf
    inc word [bp - 0x0002]           ; 0x4cd2
@..api_idx_0062.l5:
    cmp word [data_5216], byte 0     ; 0x4cd5
    je short @..api_idx_0062.l4      ; 0x4cda
    mov ax, word [bp - 0x000e]       ; 0x4cdc
    inc ax                           ; 0x4cdf
    push ax                          ; 0x4ce0
    mov ax, word [bp - 0x000c]       ; 0x4ce1
    inc ax                           ; 0x4ce4
    push ax                          ; 0x4ce5
    mov ax, word [bp - 0x000a]       ; 0x4ce6
    dec ax                           ; 0x4ce9
    push ax                          ; 0x4cea
    mov ax, word [bp - 0x0008]       ; 0x4ceb
    dec ax                           ; 0x4cee
    push ax                          ; 0x4cef
    call ds_dispatch_e8da            ; 0x4cf0
    add sp, byte 8                   ; 0x4cf3
    mov ax, word [data_905a]         ; 0x4cf6
    shl ax, 1                        ; 0x4cf9
    push ax                          ; 0x4cfb
    call ds_dispatch_b75e            ; 0x4cfc
    pop cx                           ; 0x4cff
    mov ax, 1                        ; 0x4d00
    push ax                          ; 0x4d03
    push word [bp - 0x0060]          ; 0x4d04
    call ds_dispatch_c459            ; 0x4d07
    add sp, byte 4                   ; 0x4d0a
    ret                              ; 0x4d0d
loc_4d0e:
    mov ax, 0xfc4a                   ; 0x4d0e
    call ds_dispatch_f40b            ; 0x4d11
    mov si, 0x5642                   ; 0x4d14
    lea di, word [bp - 0x03b6]       ; 0x4d17
    mov cx, ds                       ; 0x4d1b
    mov es, cx                       ; 0x4d1d
    mov cx, 0x1a6                    ; 0x4d1f
    rep movsw                        ; 0x4d22
    mov ax, 0                        ; 0x4d24
    push ax                          ; 0x4d27
    push ax                          ; 0x4d28
    mov ax, 0x90fb                   ; 0x4d29
    push ax                          ; 0x4d2c
    call ds_dispatch_d161            ; 0x4d2d
    add sp, byte 4                   ; 0x4d30
    push ax                          ; 0x4d33
    call ds_dispatch_f909            ; 0x4d34
    add sp, byte 4                   ; 0x4d37
    mov word [bp - 0x0006], ax       ; 0x4d3a
    cmp ax, strict word 0xffff       ; 0x4d3d
    jne short @..local.l278          ; 0x4d40
    mov ax, 0x1a                     ; 0x4d42
    push ax                          ; 0x4d45
    call ds_dispatch_b171            ; 0x4d46
    pop cx                           ; 0x4d49
@..local.l278:
    mov ax, 0x300                    ; 0x4d4a
    push ax                          ; 0x4d4d
    mov ax, 0x9c94                   ; 0x4d4e
    push ax                          ; 0x4d51
    push word [bp - 0x0006]          ; 0x4d52
    call ds_dispatch_fd6f            ; 0x4d55
    add sp, byte 6                   ; 0x4d58
    push word [bp - 0x0006]          ; 0x4d5b
    call ds_dispatch_fda5            ; 0x4d5e
    pop cx                           ; 0x4d61
    mov word [bp - 0x0008], 0x12     ; 0x4d62
    mov word [bp - 0x000a], 0x2b     ; 0x4d67
    mov ax, word [bp - 0x0008]       ; 0x4d6c
    add ax, 0x11b                    ; 0x4d6f
    mov word [bp - 0x000c], ax       ; 0x4d72
    mov ax, word [bp - 0x000a]       ; 0x4d75
    add ax, 0x93                     ; 0x4d78
    mov word [bp - 0x000e], ax       ; 0x4d7b
    mov word [data_9050], 0xffff     ; 0x4d7e
    mov ax, 0x9107                   ; 0x4d84
    push ax                          ; 0x4d87
    mov ax, word [bp - 0x000e]       ; 0x4d88
    inc ax                           ; 0x4d8b
    push ax                          ; 0x4d8c
    mov ax, word [bp - 0x000c]       ; 0x4d8d
    inc ax                           ; 0x4d90
    push ax                          ; 0x4d91
    mov ax, word [bp - 0x000a]       ; 0x4d92
    dec ax                           ; 0x4d95
    push ax                          ; 0x4d96
    mov ax, word [bp - 0x0008]       ; 0x4d97
    dec ax                           ; 0x4d9a
    push ax                          ; 0x4d9b
    call ds_dispatch_c283            ; 0x4d9c
    add sp, byte 0x0a                ; 0x4d9f
    mov word [bp - 0x006a], ax       ; 0x4da2
    push word [bp - 0x000e]          ; 0x4da5
    push word [bp - 0x000c]          ; 0x4da8
    push word [bp - 0x000a]          ; 0x4dab
    push word [bp - 0x0008]          ; 0x4dae
    call ds_dispatch_bc9a            ; 0x4db1
    add sp, byte 8                   ; 0x4db4
    mov ax, 0x1c                     ; 0x4db7
    push ax                          ; 0x4dba
    mov ax, word [bp - 0x000a]       ; 0x4dbb
    add ax, strict word 5            ; 0x4dbe
    push ax                          ; 0x4dc1
    mov ax, 0xffff                   ; 0x4dc2
    push ax                          ; 0x4dc5
    mov ax, data_08fc                ; 0x4dc6
    push ax                          ; 0x4dc9
    call api_idx_0050                ; 0x4dca
    add sp, byte 8                   ; 0x4dcd
    mov ax, 1                        ; 0x4dd0
    push ax                          ; 0x4dd3
    mov ax, word [bp - 0x000a]       ; 0x4dd4
    add ax, strict word 5            ; 0x4dd7
    push ax                          ; 0x4dda
    mov ax, word [bp - 0x0008]       ; 0x4ddb
    add ax, 0xf5                     ; 0x4dde
    push ax                          ; 0x4de1
    mov ax, 0x8fd                    ; 0x4de2
    push ax                          ; 0x4de5
    call api_idx_0050                ; 0x4de6
    add sp, byte 8                   ; 0x4de9
    mov ax, 0                        ; 0x4dec
    push ax                          ; 0x4def
    mov ax, 1                        ; 0x4df0
    push ax                          ; 0x4df3
    mov ax, word [data_597a]         ; 0x4df4
    mov cx, 0x64                     ; 0x4df7
    cwd                              ; 0x4dfa
    idiv cx                          ; 0x4dfb
    push ax                          ; 0x4dfd
    call ds_dispatch_b2e7            ; 0x4dfe
    add sp, byte 6                   ; 0x4e01
    mov ax, 0                        ; 0x4e04
    push ax                          ; 0x4e07
    mov ax, 0x2e                     ; 0x4e08
    push ax                          ; 0x4e0b
    call ds_dispatch_e830            ; 0x4e0c
    add sp, byte 4                   ; 0x4e0f
    mov ax, word [data_597a]         ; 0x4e12
    mov cx, 0x64                     ; 0x4e15
    cwd                              ; 0x4e18
    idiv cx                          ; 0x4e19
    mov word [bp - 0x0002], dx       ; 0x4e1b
    cmp dx, byte 0x0a                ; 0x4e1e
    jge short @..local.l279          ; 0x4e21
    mov ax, 0                        ; 0x4e23
    push ax                          ; 0x4e26
    mov ax, 0x30                     ; 0x4e27
    push ax                          ; 0x4e2a
    call ds_dispatch_e830            ; 0x4e2b
    add sp, byte 4                   ; 0x4e2e
    mov ax, 0                        ; 0x4e31
    push ax                          ; 0x4e34
    mov ax, 1                        ; 0x4e35
    push ax                          ; 0x4e38
    push word [bp - 0x0002]          ; 0x4e39
    call ds_dispatch_b2e7            ; 0x4e3c
    add sp, byte 6                   ; 0x4e3f
    jmp short @..local.l280          ; 0x4e42
@..local.l279:
    mov ax, 0                        ; 0x4e44
    push ax                          ; 0x4e47
    mov ax, data_0002                ; 0x4e48
    push ax                          ; 0x4e4b
    push word [bp - 0x0002]          ; 0x4e4c
    call ds_dispatch_b2e7            ; 0x4e4f
    add sp, byte 6                   ; 0x4e52
@..local.l280:
    mov ax, 0x5f                     ; 0x4e55
    push ax                          ; 0x4e58
    mov ax, word [bp - 0x000a]       ; 0x4e59
    add ax, strict word 0xe          ; 0x4e5c
    push ax                          ; 0x4e5f
    mov ax, 0xffff                   ; 0x4e60
    push ax                          ; 0x4e63
    mov ax, 0x8fe                    ; 0x4e64
    push ax                          ; 0x4e67
    call api_idx_0050                ; 0x4e68
    add sp, byte 8                   ; 0x4e6b
    mov ax, 1                        ; 0x4e6e
    push ax                          ; 0x4e71
    mov ax, word [bp - 0x000a]       ; 0x4e72
    add ax, strict word 0x1b         ; 0x4e75
    push ax                          ; 0x4e78
    mov ax, word [bp - 0x0008]       ; 0x4e79
    add ax, strict word 0xb          ; 0x4e7c
    push ax                          ; 0x4e7f
    mov ax, 0x8ff                    ; 0x4e80
    push ax                          ; 0x4e83
    call api_idx_0050                ; 0x4e84
    add sp, byte 8                   ; 0x4e87
    mov ax, 1                        ; 0x4e8a
    push ax                          ; 0x4e8d
    mov ax, word [bp - 0x000a]       ; 0x4e8e
    add ax, strict word 0x27         ; 0x4e91
    push ax                          ; 0x4e94
    mov ax, word [bp - 0x0008]       ; 0x4e95
    add ax, strict word 0xb          ; 0x4e98
    push ax                          ; 0x4e9b
    mov ax, 0x900                    ; 0x4e9c
    push ax                          ; 0x4e9f
    call api_idx_0050                ; 0x4ea0
    add sp, byte 8                   ; 0x4ea3
    mov ax, 0x1e                     ; 0x4ea6
    push ax                          ; 0x4ea9
    mov ax, word [bp - 0x000a]       ; 0x4eaa
    add ax, strict word 0x27         ; 0x4ead
    push ax                          ; 0x4eb0
    mov ax, word [bp - 0x0008]       ; 0x4eb1
    add ax, strict word 0x2f         ; 0x4eb4
    push ax                          ; 0x4eb7
    call loc_4245                    ; 0x4eb8
    add sp, byte 6                   ; 0x4ebb
    mov ax, 1                        ; 0x4ebe
    push ax                          ; 0x4ec1
    mov ax, word [bp - 0x000a]       ; 0x4ec2
    add ax, strict word 0x39         ; 0x4ec5
    push ax                          ; 0x4ec8
    mov ax, word [bp - 0x0008]       ; 0x4ec9
    add ax, strict word 0xb          ; 0x4ecc
    push ax                          ; 0x4ecf
    mov ax, 0x901                    ; 0x4ed0
    push ax                          ; 0x4ed3
    call api_idx_0050                ; 0x4ed4
    add sp, byte 8                   ; 0x4ed7
    mov ax, 1                        ; 0x4eda
    push ax                          ; 0x4edd
    mov ax, word [bp - 0x000a]       ; 0x4ede
    add ax, strict word 0x45         ; 0x4ee1
    push ax                          ; 0x4ee4
    mov ax, word [bp - 0x0008]       ; 0x4ee5
    add ax, strict word 0xb          ; 0x4ee8
    push ax                          ; 0x4eeb
    mov ax, 0x902                    ; 0x4eec
    push ax                          ; 0x4eef
    call api_idx_0050                ; 0x4ef0
    add sp, byte 8                   ; 0x4ef3
    lea ax, word [bp - 0x0068]       ; 0x4ef6
    push ax                          ; 0x4ef9
    mov ax, 0x903                    ; 0x4efa
    push ax                          ; 0x4efd
    call ds_dispatch_b53b            ; 0x4efe
    add sp, byte 4                   ; 0x4f01
    lea ax, word [bp - 0x0068]       ; 0x4f04
    push ax                          ; 0x4f07
    mov ax, 1                        ; 0x4f08
    push ax                          ; 0x4f0b
    push ax                          ; 0x4f0c
    mov ax, 7                        ; 0x4f0d
    push ax                          ; 0x4f10
    mov ax, word [bp - 0x000a]       ; 0x4f11
    add ax, strict word 0x55         ; 0x4f14
    push ax                          ; 0x4f17
    mov ax, word [bp - 0x0008]       ; 0x4f18
    add ax, strict word 8            ; 0x4f1b
    push ax                          ; 0x4f1e
    call ds_dispatch_c0c1            ; 0x4f1f
    add sp, byte 0x0c                ; 0x4f22
    mov ax, 1                        ; 0x4f25
    push ax                          ; 0x4f28
    mov ax, word [bp - 0x000a]       ; 0x4f29
    add ax, strict word 0x63         ; 0x4f2c
    push ax                          ; 0x4f2f
    mov ax, word [bp - 0x0008]       ; 0x4f30
    add ax, strict word 0x11         ; 0x4f33
    push ax                          ; 0x4f36
    mov ax, 0x904                    ; 0x4f37
    push ax                          ; 0x4f3a
    call api_idx_0050                ; 0x4f3b
    add sp, byte 8                   ; 0x4f3e
    mov ax, 0x1e                     ; 0x4f41
    push ax                          ; 0x4f44
    mov ax, word [bp - 0x000a]       ; 0x4f45
    add ax, strict word 0x63         ; 0x4f48
    push ax                          ; 0x4f4b
    mov ax, word [bp - 0x0008]       ; 0x4f4c
    add ax, strict word 0x5f         ; 0x4f4f
    push ax                          ; 0x4f52
    call loc_4245                    ; 0x4f53
    add sp, byte 6                   ; 0x4f56
    mov ax, 1                        ; 0x4f59
    push ax                          ; 0x4f5c
    mov ax, word [bp - 0x000a]       ; 0x4f5d
    add ax, strict word 0x69         ; 0x4f60
    push ax                          ; 0x4f63
    mov ax, word [bp - 0x0008]       ; 0x4f64
    add ax, strict word 0x11         ; 0x4f67
    push ax                          ; 0x4f6a
    mov ax, 0x905                    ; 0x4f6b
    push ax                          ; 0x4f6e
    call api_idx_0050                ; 0x4f6f
    add sp, byte 8                   ; 0x4f72
    mov ax, 0x1e                     ; 0x4f75
    push ax                          ; 0x4f78
    mov ax, word [bp - 0x000a]       ; 0x4f79
    add ax, strict word 0x69         ; 0x4f7c
    push ax                          ; 0x4f7f
    mov ax, word [bp - 0x0008]       ; 0x4f80
    add ax, strict word 0x5f         ; 0x4f83
    push ax                          ; 0x4f86
    call loc_4245                    ; 0x4f87
    add sp, byte 6                   ; 0x4f8a
    mov ax, 1                        ; 0x4f8d
    push ax                          ; 0x4f90
    mov ax, word [bp - 0x000a]       ; 0x4f91
    add ax, strict word 0x6f         ; 0x4f94
    push ax                          ; 0x4f97
    mov ax, word [bp - 0x0008]       ; 0x4f98
    add ax, strict word 0x11         ; 0x4f9b
    push ax                          ; 0x4f9e
    mov ax, 0x906                    ; 0x4f9f
    push ax                          ; 0x4fa2
    call api_idx_0050                ; 0x4fa3
    add sp, byte 8                   ; 0x4fa6
    mov ax, 0x1e                     ; 0x4fa9
    push ax                          ; 0x4fac
    mov ax, word [bp - 0x000a]       ; 0x4fad
    add ax, strict word 0x6f         ; 0x4fb0
    push ax                          ; 0x4fb3
    mov ax, word [bp - 0x0008]       ; 0x4fb4
    add ax, strict word 0x5f         ; 0x4fb7
    push ax                          ; 0x4fba
    call loc_4245                    ; 0x4fbb
    add sp, byte 6                   ; 0x4fbe
    lea ax, word [bp - 0x0068]       ; 0x4fc1
    push ax                          ; 0x4fc4
    mov ax, 0x907                    ; 0x4fc5
    push ax                          ; 0x4fc8
    call ds_dispatch_b53b            ; 0x4fc9
    add sp, byte 4                   ; 0x4fcc
    lea ax, word [bp - 0x0068]       ; 0x4fcf
    push ax                          ; 0x4fd2
    mov ax, 1                        ; 0x4fd3
    push ax                          ; 0x4fd6
    push ax                          ; 0x4fd7
    mov ax, 7                        ; 0x4fd8
    push ax                          ; 0x4fdb
    mov ax, word [bp - 0x000a]       ; 0x4fdc
    add ax, strict word 0x79         ; 0x4fdf
    push ax                          ; 0x4fe2
    mov ax, word [bp - 0x0008]       ; 0x4fe3
    add ax, strict word 8            ; 0x4fe6
    push ax                          ; 0x4fe9
    call ds_dispatch_c0c1            ; 0x4fea
    add sp, byte 0x0c                ; 0x4fed
    mov ax, 1                        ; 0x4ff0
    push ax                          ; 0x4ff3
    mov ax, word [bp - 0x000a]       ; 0x4ff4
    add ax, 0x87                     ; 0x4ff7
    push ax                          ; 0x4ffa
    mov ax, word [bp - 0x0008]       ; 0x4ffb
    add ax, strict word 0x1d         ; 0x4ffe
    push ax                          ; 0x5001
    mov ax, 0x908                    ; 0x5002
    push ax                          ; 0x5005
    call api_idx_0050                ; 0x5006
    add sp, byte 8                   ; 0x5009
    mov ax, 0x1e                     ; 0x500c
    push ax                          ; 0x500f
    mov ax, word [bp - 0x000a]       ; 0x5010
    add ax, 0x87                     ; 0x5013
    push ax                          ; 0x5016
    mov ax, word [bp - 0x0008]       ; 0x5017
    add ax, strict word 0x5f         ; 0x501a
    push ax                          ; 0x501d
    call loc_4245                    ; 0x501e
    add sp, byte 6                   ; 0x5021
    mov ax, 1                        ; 0x5024
    push ax                          ; 0x5027
    mov ax, word [bp - 0x000a]       ; 0x5028
    add ax, strict word 0x1b         ; 0x502b
    push ax                          ; 0x502e
    mov ax, word [bp - 0x0008]       ; 0x502f
    add ax, 0xa1                     ; 0x5032
    push ax                          ; 0x5035
    mov ax, 0x909                    ; 0x5036
    push ax                          ; 0x5039
    call api_idx_0050                ; 0x503a
    add sp, byte 8                   ; 0x503d
    mov ax, 1                        ; 0x5040
    push ax                          ; 0x5043
    mov ax, word [bp - 0x000a]       ; 0x5044
    add ax, strict word 0x27         ; 0x5047
    push ax                          ; 0x504a
    mov ax, word [bp - 0x0008]       ; 0x504b
    add ax, 0xa1                     ; 0x504e
    push ax                          ; 0x5051
    mov ax, 0x90a                    ; 0x5052
    push ax                          ; 0x5055
    call api_idx_0050                ; 0x5056
    add sp, byte 8                   ; 0x5059
    lea ax, word [bp - 0x0068]       ; 0x505c
    push ax                          ; 0x505f
    mov ax, 0x90b                    ; 0x5060
    push ax                          ; 0x5063
    call ds_dispatch_b53b            ; 0x5064
    add sp, byte 4                   ; 0x5067
    lea ax, word [bp - 0x0068]       ; 0x506a
    push ax                          ; 0x506d
    mov ax, 1                        ; 0x506e
    push ax                          ; 0x5071
    push ax                          ; 0x5072
    mov ax, 6                        ; 0x5073
    push ax                          ; 0x5076
    mov ax, word [bp - 0x000a]       ; 0x5077
    add ax, strict word 0x37         ; 0x507a
    push ax                          ; 0x507d
    mov ax, word [bp - 0x0008]       ; 0x507e
    add ax, 0xa1                     ; 0x5081
    push ax                          ; 0x5084
    call ds_dispatch_c0c1            ; 0x5085
    add sp, byte 0x0c                ; 0x5088
    mov ax, 1                        ; 0x508b
    push ax                          ; 0x508e
    mov ax, word [bp - 0x000a]       ; 0x508f
    add ax, strict word 0x45         ; 0x5092
    push ax                          ; 0x5095
    mov ax, word [bp - 0x0008]       ; 0x5096
    add ax, 0xa1                     ; 0x5099
    push ax                          ; 0x509c
    mov ax, 0x90c                    ; 0x509d
    push ax                          ; 0x50a0
    call api_idx_0050                ; 0x50a1
    add sp, byte 8                   ; 0x50a4
    mov ax, 1                        ; 0x50a7
    push ax                          ; 0x50aa
    mov ax, word [bp - 0x000a]       ; 0x50ab
    add ax, strict word 0x57         ; 0x50ae
    push ax                          ; 0x50b1
    mov ax, word [bp - 0x0008]       ; 0x50b2
    add ax, 0xa1                     ; 0x50b5
    push ax                          ; 0x50b8
    mov ax, 0x90d                    ; 0x50b9
    push ax                          ; 0x50bc
    call api_idx_0050                ; 0x50bd
    add sp, byte 8                   ; 0x50c0
    mov ax, 1                        ; 0x50c3
    push ax                          ; 0x50c6
    mov ax, word [bp - 0x000a]       ; 0x50c7
    add ax, strict word 0x63         ; 0x50ca
    push ax                          ; 0x50cd
    mov ax, word [bp - 0x0008]       ; 0x50ce
    add ax, 0xa1                     ; 0x50d1
    push ax                          ; 0x50d4
    mov ax, 0x90e                    ; 0x50d5
    push ax                          ; 0x50d8
    call api_idx_0050                ; 0x50d9
    add sp, byte 8                   ; 0x50dc
    mov ax, 0x24                     ; 0x50df
    push ax                          ; 0x50e2
    mov ax, word [bp - 0x000a]       ; 0x50e3
    add ax, strict word 0x63         ; 0x50e6
    push ax                          ; 0x50e9
    mov ax, word [bp - 0x0008]       ; 0x50ea
    add ax, 0xdd                     ; 0x50ed
    push ax                          ; 0x50f0
    call loc_4245                    ; 0x50f1
    add sp, byte 6                   ; 0x50f4
    mov ax, 1                        ; 0x50f7
    push ax                          ; 0x50fa
    mov ax, word [bp - 0x000a]       ; 0x50fb
    add ax, strict word 0x69         ; 0x50fe
    push ax                          ; 0x5101
    mov ax, word [bp - 0x0008]       ; 0x5102
    add ax, 0xa1                     ; 0x5105
    push ax                          ; 0x5108
    mov ax, 0x90f                    ; 0x5109
    push ax                          ; 0x510c
    call api_idx_0050                ; 0x510d
    add sp, byte 8                   ; 0x5110
    mov ax, 0x24                     ; 0x5113
    push ax                          ; 0x5116
    mov ax, word [bp - 0x000a]       ; 0x5117
    add ax, strict word 0x69         ; 0x511a
    push ax                          ; 0x511d
    mov ax, word [bp - 0x0008]       ; 0x511e
    add ax, 0xdd                     ; 0x5121
    push ax                          ; 0x5124
    call loc_4245                    ; 0x5125
    add sp, byte 6                   ; 0x5128
    mov ax, word [bp - 0x000a]       ; 0x512b
    add ax, 0x8c                     ; 0x512e
    push ax                          ; 0x5131
    mov ax, word [bp - 0x0008]       ; 0x5132
    add ax, 0x113                    ; 0x5135
    push ax                          ; 0x5138
    mov ax, word [bp - 0x000a]       ; 0x5139
    add ax, strict word 0x7a         ; 0x513c
    push ax                          ; 0x513f
    mov ax, word [bp - 0x0008]       ; 0x5140
    add ax, 0xa9                     ; 0x5143
    push ax                          ; 0x5146
    call ds_dispatch_bd98            ; 0x5147
    add sp, byte 8                   ; 0x514a
    lea ax, word [bp - 0x0068]       ; 0x514d
    push ax                          ; 0x5150
    mov ax, 0x910                    ; 0x5151
    push ax                          ; 0x5154
    call ds_dispatch_b53b            ; 0x5155
    add sp, byte 4                   ; 0x5158
    lea ax, word [bp - 0x0068]       ; 0x515b
    push ax                          ; 0x515e
    mov ax, 1                        ; 0x515f
    push ax                          ; 0x5162
    push ax                          ; 0x5163
    mov ax, 6                        ; 0x5164
    push ax                          ; 0x5167
    mov ax, word [bp - 0x000a]       ; 0x5168
    add ax, strict word 0x7f         ; 0x516b
    push ax                          ; 0x516e
    mov ax, word [bp - 0x0008]       ; 0x516f
    add ax, 0xb2                     ; 0x5172
    push ax                          ; 0x5175
    call ds_dispatch_c0c1            ; 0x5176
    add sp, byte 0x0c                ; 0x5179
    lea ax, word [bp - 0x0068]       ; 0x517c
    push ax                          ; 0x517f
    mov ax, 0x911                    ; 0x5180
    push ax                          ; 0x5183
    call ds_dispatch_b53b            ; 0x5184
    add sp, byte 4                   ; 0x5187
    lea ax, word [bp - 0x0068]       ; 0x518a
    push ax                          ; 0x518d
    mov ax, 1                        ; 0x518e
    push ax                          ; 0x5191
    push ax                          ; 0x5192
    mov ax, 6                        ; 0x5193
    push ax                          ; 0x5196
    mov ax, word [bp - 0x000a]       ; 0x5197
    add ax, strict word 0x7f         ; 0x519a
    push ax                          ; 0x519d
    mov ax, word [bp - 0x0008]       ; 0x519e
    add ax, 0xe6                     ; 0x51a1
    push ax                          ; 0x51a4
    call ds_dispatch_c0c1            ; 0x51a5
    add sp, byte 0x0c                ; 0x51a8
    mov word [bp - 0x0002], 0        ; 0x51ab
@..local.l281:
    push word [bp - 0x000a]          ; 0x51b0
    push word [bp - 0x0008]          ; 0x51b3
    push word [bp - 0x0002]          ; 0x51b6
    call api_idx_0052                ; 0x51b9
    add sp, byte 6                   ; 0x51bc
    inc word [bp - 0x0002]           ; 0x51bf
    mov ax, word [bp - 0x0002]       ; 0x51c2
    cmp ax, strict word 0x11         ; 0x51c5
    jl short @..local.l281           ; 0x51c8
    mov ax, 0                        ; 0x51ca
    push ax                          ; 0x51cd
    push ax                          ; 0x51ce
    mov ax, word [bp - 0x000a]       ; 0x51cf
    add ax, strict word 0x21         ; 0x51d2
    push ax                          ; 0x51d5
    mov ax, word [bp - 0x0008]       ; 0x51d6
    add ax, 0x92                     ; 0x51d9
    push ax                          ; 0x51dc
    mov ax, word [bp - 0x000a]       ; 0x51dd
    add ax, strict word 0x19         ; 0x51e0
    push ax                          ; 0x51e3
    mov ax, word [bp - 0x0008]       ; 0x51e4
    add ax, strict word 0x5c         ; 0x51e7
    push ax                          ; 0x51ea
    mov ax, 0                        ; 0x51eb
    push ax                          ; 0x51ee
    call ds_dispatch_baa6            ; 0x51ef
    add sp, byte 0x0e                ; 0x51f2
    mov ax, 0                        ; 0x51f5
    push ax                          ; 0x51f8
    push ax                          ; 0x51f9
    mov ax, word [bp - 0x000a]       ; 0x51fa
    add ax, strict word 0x2c         ; 0x51fd
    push ax                          ; 0x5200
    mov ax, word [bp - 0x0008]       ; 0x5201
    add ax, strict word 0x34         ; 0x5204
    push ax                          ; 0x5207
    mov ax, word [bp - 0x000a]       ; 0x5208
    add ax, strict word 0x27         ; 0x520b
    push ax                          ; 0x520e
    mov ax, word [bp - 0x0008]       ; 0x520f
    add ax, strict word 0x2f         ; 0x5212
    push ax                          ; 0x5215
    mov ax, 1                        ; 0x5216
    push ax                          ; 0x5219
    call ds_dispatch_baa6            ; 0x521a
    add sp, byte 0x0e                ; 0x521d
    mov ax, 0                        ; 0x5220
    push ax                          ; 0x5223
    push ax                          ; 0x5224
    mov ax, word [bp - 0x000a]       ; 0x5225
    add ax, strict word 0x2c         ; 0x5228
    push ax                          ; 0x522b
    mov ax, word [bp - 0x0008]       ; 0x522c
    add ax, strict word 0x52         ; 0x522f
    push ax                          ; 0x5232
    mov ax, word [bp - 0x000a]       ; 0x5233
    add ax, strict word 0x27         ; 0x5236
    push ax                          ; 0x5239
    mov ax, word [bp - 0x0008]       ; 0x523a
    add ax, strict word 0x4d         ; 0x523d
    push ax                          ; 0x5240
    mov ax, data_0002                ; 0x5241
    push ax                          ; 0x5244
    call ds_dispatch_baa6            ; 0x5245
    add sp, byte 0x0e                ; 0x5248
    mov ax, 0                        ; 0x524b
    push ax                          ; 0x524e
    push ax                          ; 0x524f
    mov ax, word [bp - 0x000a]       ; 0x5250
    add ax, strict word 0x3e         ; 0x5253
    push ax                          ; 0x5256
    mov ax, word [bp - 0x0008]       ; 0x5257
    add ax, 0x95                     ; 0x525a
    push ax                          ; 0x525d
    mov ax, word [bp - 0x000a]       ; 0x525e
    add ax, strict word 0x38         ; 0x5261
    push ax                          ; 0x5264
    mov ax, word [bp - 0x0008]       ; 0x5265
    add ax, strict word 0x27         ; 0x5268
    push ax                          ; 0x526b
    mov ax, 3                        ; 0x526c
    push ax                          ; 0x526f
    call ds_dispatch_baa6            ; 0x5270
    add sp, byte 0x0e                ; 0x5273
    mov ax, 0                        ; 0x5276
    push ax                          ; 0x5279
    push ax                          ; 0x527a
    mov ax, word [bp - 0x000a]       ; 0x527b
    add ax, strict word 0x4a         ; 0x527e
    push ax                          ; 0x5281
    mov ax, word [bp - 0x0008]       ; 0x5282
    add ax, 0x95                     ; 0x5285
    push ax                          ; 0x5288
    mov ax, word [bp - 0x000a]       ; 0x5289
    add ax, strict word 0x44         ; 0x528c
    push ax                          ; 0x528f
    mov ax, word [bp - 0x0008]       ; 0x5290
    add ax, strict word 0x27         ; 0x5293
    push ax                          ; 0x5296
    mov ax, 4                        ; 0x5297
    push ax                          ; 0x529a
    call ds_dispatch_baa6            ; 0x529b
    add sp, byte 0x0e                ; 0x529e
    mov ax, 0                        ; 0x52a1
    push ax                          ; 0x52a4
    push ax                          ; 0x52a5
    mov ax, word [bp - 0x000a]       ; 0x52a6
    add ax, strict word 0x5d         ; 0x52a9
    push ax                          ; 0x52ac
    mov ax, word [bp - 0x0008]       ; 0x52ad
    add ax, strict word 0x38         ; 0x52b0
    push ax                          ; 0x52b3
    mov ax, word [bp - 0x000a]       ; 0x52b4
    add ax, strict word 0x55         ; 0x52b7
    push ax                          ; 0x52ba
    mov ax, word [bp - 0x0008]       ; 0x52bb
    add ax, strict word 8            ; 0x52be
    push ax                          ; 0x52c1
    mov ax, 5                        ; 0x52c2
    push ax                          ; 0x52c5
    call ds_dispatch_baa6            ; 0x52c6
    add sp, byte 0x0e                ; 0x52c9
    mov ax, 0                        ; 0x52cc
    push ax                          ; 0x52cf
    push ax                          ; 0x52d0
    mov ax, word [bp - 0x000a]       ; 0x52d1
    add ax, strict word 0x68         ; 0x52d4
    push ax                          ; 0x52d7
    mov ax, word [bp - 0x0008]       ; 0x52d8
    add ax, strict word 0x64         ; 0x52db
    push ax                          ; 0x52de
    mov ax, word [bp - 0x000a]       ; 0x52df
    add ax, strict word 0x63         ; 0x52e2
    push ax                          ; 0x52e5
    mov ax, word [bp - 0x0008]       ; 0x52e6
    add ax, strict word 0x5f         ; 0x52e9
    push ax                          ; 0x52ec
    mov ax, 6                        ; 0x52ed
    push ax                          ; 0x52f0
    call ds_dispatch_baa6            ; 0x52f1
    add sp, byte 0x0e                ; 0x52f4
    mov ax, 0                        ; 0x52f7
    push ax                          ; 0x52fa
    push ax                          ; 0x52fb
    mov ax, word [bp - 0x000a]       ; 0x52fc
    add ax, strict word 0x68         ; 0x52ff
    push ax                          ; 0x5302
    mov ax, word [bp - 0x0008]       ; 0x5303
    add ax, 0x82                     ; 0x5306
    push ax                          ; 0x5309
    mov ax, word [bp - 0x000a]       ; 0x530a
    add ax, strict word 0x63         ; 0x530d
    push ax                          ; 0x5310
    mov ax, word [bp - 0x0008]       ; 0x5311
    add ax, strict word 0x7d         ; 0x5314
    push ax                          ; 0x5317
    mov ax, 7                        ; 0x5318
    push ax                          ; 0x531b
    call ds_dispatch_baa6            ; 0x531c
    add sp, byte 0x0e                ; 0x531f
    mov ax, 0                        ; 0x5322
    push ax                          ; 0x5325
    push ax                          ; 0x5326
    mov ax, word [bp - 0x000a]       ; 0x5327
    add ax, strict word 0x6e         ; 0x532a
    push ax                          ; 0x532d
    mov ax, word [bp - 0x0008]       ; 0x532e
    add ax, strict word 0x64         ; 0x5331
    push ax                          ; 0x5334
    mov ax, word [bp - 0x000a]       ; 0x5335
    add ax, strict word 0x69         ; 0x5338
    push ax                          ; 0x533b
    mov ax, word [bp - 0x0008]       ; 0x533c
    add ax, strict word 0x5f         ; 0x533f
    push ax                          ; 0x5342
    mov ax, 8                        ; 0x5343
    push ax                          ; 0x5346
    call ds_dispatch_baa6            ; 0x5347
    add sp, byte 0x0e                ; 0x534a
    mov ax, 0                        ; 0x534d
    push ax                          ; 0x5350
    push ax                          ; 0x5351
    mov ax, word [bp - 0x000a]       ; 0x5352
    add ax, strict word 0x6e         ; 0x5355
    push ax                          ; 0x5358
    mov ax, word [bp - 0x0008]       ; 0x5359
    add ax, 0x82                     ; 0x535c
    push ax                          ; 0x535f
    mov ax, word [bp - 0x000a]       ; 0x5360
    add ax, strict word 0x69         ; 0x5363
    push ax                          ; 0x5366
    mov ax, word [bp - 0x0008]       ; 0x5367
    add ax, strict word 0x7d         ; 0x536a
    push ax                          ; 0x536d
    mov ax, 9                        ; 0x536e
    push ax                          ; 0x5371
    call ds_dispatch_baa6            ; 0x5372
    add sp, byte 0x0e                ; 0x5375
    mov ax, 0                        ; 0x5378
    push ax                          ; 0x537b
    push ax                          ; 0x537c
    mov ax, word [bp - 0x000a]       ; 0x537d
    add ax, strict word 0x74         ; 0x5380
    push ax                          ; 0x5383
    mov ax, word [bp - 0x0008]       ; 0x5384
    add ax, strict word 0x64         ; 0x5387
    push ax                          ; 0x538a
    mov ax, word [bp - 0x000a]       ; 0x538b
    add ax, strict word 0x6f         ; 0x538e
    push ax                          ; 0x5391
    mov ax, word [bp - 0x0008]       ; 0x5392
    add ax, strict word 0x5f         ; 0x5395
    push ax                          ; 0x5398
    mov ax, 0xa                      ; 0x5399
    push ax                          ; 0x539c
    call ds_dispatch_baa6            ; 0x539d
    add sp, byte 0x0e                ; 0x53a0
    mov ax, 0                        ; 0x53a3
    push ax                          ; 0x53a6
    push ax                          ; 0x53a7
    mov ax, word [bp - 0x000a]       ; 0x53a8
    add ax, strict word 0x74         ; 0x53ab
    push ax                          ; 0x53ae
    mov ax, word [bp - 0x0008]       ; 0x53af
    add ax, 0x82                     ; 0x53b2
    push ax                          ; 0x53b5
    mov ax, word [bp - 0x000a]       ; 0x53b6
    add ax, strict word 0x6f         ; 0x53b9
    push ax                          ; 0x53bc
    mov ax, word [bp - 0x0008]       ; 0x53bd
    add ax, strict word 0x7d         ; 0x53c0
    push ax                          ; 0x53c3
    mov ax, 0xb                      ; 0x53c4
    push ax                          ; 0x53c7
    call ds_dispatch_baa6            ; 0x53c8
    add sp, byte 0x0e                ; 0x53cb
    mov ax, 0                        ; 0x53ce
    push ax                          ; 0x53d1
    push ax                          ; 0x53d2
    mov ax, word [bp - 0x000a]       ; 0x53d3
    add ax, 0x81                     ; 0x53d6
    push ax                          ; 0x53d9
    mov ax, word [bp - 0x0008]       ; 0x53da
    add ax, strict word 0x38         ; 0x53dd
    push ax                          ; 0x53e0
    mov ax, word [bp - 0x000a]       ; 0x53e1
    add ax, strict word 0x79         ; 0x53e4
    push ax                          ; 0x53e7
    mov ax, word [bp - 0x0008]       ; 0x53e8
    add ax, strict word 8            ; 0x53eb
    push ax                          ; 0x53ee
    mov ax, 0xc                      ; 0x53ef
    push ax                          ; 0x53f2
    call ds_dispatch_baa6            ; 0x53f3
    add sp, byte 0x0e                ; 0x53f6
    mov ax, 0                        ; 0x53f9
    push ax                          ; 0x53fc
    push ax                          ; 0x53fd
    mov ax, word [bp - 0x000a]       ; 0x53fe
    add ax, 0x8c                     ; 0x5401
    push ax                          ; 0x5404
    mov ax, word [bp - 0x0008]       ; 0x5405
    add ax, strict word 0x64         ; 0x5408
    push ax                          ; 0x540b
    mov ax, word [bp - 0x000a]       ; 0x540c
    add ax, 0x87                     ; 0x540f
    push ax                          ; 0x5412
    mov ax, word [bp - 0x0008]       ; 0x5413
    add ax, strict word 0x5f         ; 0x5416
    push ax                          ; 0x5419
    mov ax, 0xd                      ; 0x541a
    push ax                          ; 0x541d
    call ds_dispatch_baa6            ; 0x541e
    add sp, byte 0x0e                ; 0x5421
    mov ax, 0                        ; 0x5424
    push ax                          ; 0x5427
    push ax                          ; 0x5428
    mov ax, word [bp - 0x000a]       ; 0x5429
    add ax, 0x8c                     ; 0x542c
    push ax                          ; 0x542f
    mov ax, word [bp - 0x0008]       ; 0x5430
    add ax, 0x82                     ; 0x5433
    push ax                          ; 0x5436
    mov ax, word [bp - 0x000a]       ; 0x5437
    add ax, 0x87                     ; 0x543a
    push ax                          ; 0x543d
    mov ax, word [bp - 0x0008]       ; 0x543e
    add ax, strict word 0x7d         ; 0x5441
    push ax                          ; 0x5444
    mov ax, math_loc_000e            ; 0x5445
    push ax                          ; 0x5448
    call ds_dispatch_baa6            ; 0x5449
    add sp, byte 0x0e                ; 0x544c
    mov ax, 0                        ; 0x544f
    push ax                          ; 0x5452
    push ax                          ; 0x5453
    mov ax, word [bp - 0x000a]       ; 0x5454
    add ax, strict word 0x21         ; 0x5457
    push ax                          ; 0x545a
    mov ax, word [bp - 0x0008]       ; 0x545b
    add ax, 0x110                    ; 0x545e
    push ax                          ; 0x5461
    mov ax, word [bp - 0x000a]       ; 0x5462
    add ax, strict word 0x19         ; 0x5465
    push ax                          ; 0x5468
    mov ax, word [bp - 0x0008]       ; 0x5469
    add ax, 0xe6                     ; 0x546c
    push ax                          ; 0x546f
    mov ax, 0xf                      ; 0x5470
    push ax                          ; 0x5473
    call ds_dispatch_baa6            ; 0x5474
    add sp, byte 0x0e                ; 0x5477
    mov ax, 0                        ; 0x547a
    push ax                          ; 0x547d
    push ax                          ; 0x547e
    mov ax, word [bp - 0x000a]       ; 0x547f
    add ax, strict word 0x2d         ; 0x5482
    push ax                          ; 0x5485
    mov ax, word [bp - 0x0008]       ; 0x5486
    add ax, 0xda                     ; 0x5489
    push ax                          ; 0x548c
    mov ax, word [bp - 0x000a]       ; 0x548d
    add ax, strict word 0x25         ; 0x5490
    push ax                          ; 0x5493
    mov ax, word [bp - 0x0008]       ; 0x5494
    add ax, 0xc2                     ; 0x5497
    push ax                          ; 0x549a
    mov ax, 0x10                     ; 0x549b
    push ax                          ; 0x549e
    call ds_dispatch_baa6            ; 0x549f
    add sp, byte 0x0e                ; 0x54a2
    mov ax, 0                        ; 0x54a5
    push ax                          ; 0x54a8
    push ax                          ; 0x54a9
    mov ax, word [bp - 0x000a]       ; 0x54aa
    add ax, strict word 0x3f         ; 0x54ad
    push ax                          ; 0x54b0
    mov ax, word [bp - 0x0008]       ; 0x54b1
    add ax, 0xcb                     ; 0x54b4
    push ax                          ; 0x54b7
    mov ax, word [bp - 0x000a]       ; 0x54b8
    add ax, strict word 0x37         ; 0x54bb
    push ax                          ; 0x54be
    mov ax, word [bp - 0x0008]       ; 0x54bf
    add ax, 0xa1                     ; 0x54c2
    push ax                          ; 0x54c5
    mov ax, 0x11                     ; 0x54c6
    push ax                          ; 0x54c9
    call ds_dispatch_baa6            ; 0x54ca
    add sp, byte 0x0e                ; 0x54cd
    mov ax, 0                        ; 0x54d0
    push ax                          ; 0x54d3
    push ax                          ; 0x54d4
    mov ax, word [bp - 0x000a]       ; 0x54d5
    add ax, strict word 0x4a         ; 0x54d8
    push ax                          ; 0x54db
    mov ax, word [bp - 0x0008]       ; 0x54dc
    add ax, 0x113                    ; 0x54df
    push ax                          ; 0x54e2
    mov ax, word [bp - 0x000a]       ; 0x54e3
    add ax, strict word 0x44         ; 0x54e6
    push ax                          ; 0x54e9
    mov ax, word [bp - 0x0008]       ; 0x54ea
    add ax, 0xd5                     ; 0x54ed
    push ax                          ; 0x54f0
    mov ax, 0x12                     ; 0x54f1
    push ax                          ; 0x54f4
    call ds_dispatch_baa6            ; 0x54f5
    add sp, byte 0x0e                ; 0x54f8
    mov ax, 0                        ; 0x54fb
    push ax                          ; 0x54fe
    push ax                          ; 0x54ff
    mov ax, word [bp - 0x000a]       ; 0x5500
    add ax, strict word 0x68         ; 0x5503
    push ax                          ; 0x5506
    mov ax, word [bp - 0x0008]       ; 0x5507
    add ax, 0xe2                     ; 0x550a
    push ax                          ; 0x550d
    mov ax, word [bp - 0x000a]       ; 0x550e
    add ax, strict word 0x63         ; 0x5511
    push ax                          ; 0x5514
    mov ax, word [bp - 0x0008]       ; 0x5515
    add ax, 0xdd                     ; 0x5518
    push ax                          ; 0x551b
    mov ax, 0x13                     ; 0x551c
    push ax                          ; 0x551f
    call ds_dispatch_baa6            ; 0x5520
    add sp, byte 0x0e                ; 0x5523
    mov ax, 0                        ; 0x5526
    push ax                          ; 0x5529
    push ax                          ; 0x552a
    mov ax, word [bp - 0x000a]       ; 0x552b
    add ax, strict word 0x68         ; 0x552e
    push ax                          ; 0x5531
    mov ax, word [bp - 0x0008]       ; 0x5532
    add ax, 0x106                    ; 0x5535
    push ax                          ; 0x5538
    mov ax, word [bp - 0x000a]       ; 0x5539
    add ax, strict word 0x63         ; 0x553c
    push ax                          ; 0x553f
    mov ax, word [bp - 0x0008]       ; 0x5540
    add ax, 0x101                    ; 0x5543
    push ax                          ; 0x5546
    mov ax, 0x14                     ; 0x5547
    push ax                          ; 0x554a
    call ds_dispatch_baa6            ; 0x554b
    add sp, byte 0x0e                ; 0x554e
    mov ax, 0                        ; 0x5551
    push ax                          ; 0x5554
    push ax                          ; 0x5555
    mov ax, word [bp - 0x000a]       ; 0x5556
    add ax, strict word 0x6e         ; 0x5559
    push ax                          ; 0x555c
    mov ax, word [bp - 0x0008]       ; 0x555d
    add ax, 0xe2                     ; 0x5560
    push ax                          ; 0x5563
    mov ax, word [bp - 0x000a]       ; 0x5564
    add ax, strict word 0x69         ; 0x5567
    push ax                          ; 0x556a
    mov ax, word [bp - 0x0008]       ; 0x556b
    add ax, 0xdd                     ; 0x556e
    push ax                          ; 0x5571
    mov ax, 0x15                     ; 0x5572
    push ax                          ; 0x5575
    call ds_dispatch_baa6            ; 0x5576
    add sp, byte 0x0e                ; 0x5579
    mov ax, 0                        ; 0x557c
    push ax                          ; 0x557f
    push ax                          ; 0x5580
    mov ax, word [bp - 0x000a]       ; 0x5581
    add ax, strict word 0x6e         ; 0x5584
    push ax                          ; 0x5587
    mov ax, word [bp - 0x0008]       ; 0x5588
    add ax, 0x106                    ; 0x558b
    push ax                          ; 0x558e
    mov ax, word [bp - 0x000a]       ; 0x558f
    add ax, strict word 0x69         ; 0x5592
    push ax                          ; 0x5595
    mov ax, word [bp - 0x0008]       ; 0x5596
    add ax, 0x101                    ; 0x5599
    push ax                          ; 0x559c
    mov ax, 0x16                     ; 0x559d
    push ax                          ; 0x55a0
    call ds_dispatch_baa6            ; 0x55a1
    add sp, byte 0x0e                ; 0x55a4
    mov ax, 0                        ; 0x55a7
    push ax                          ; 0x55aa
    push ax                          ; 0x55ab
    mov ax, word [bp - 0x000a]       ; 0x55ac
    add ax, 0x87                     ; 0x55af
    push ax                          ; 0x55b2
    mov ax, word [bp - 0x0008]       ; 0x55b3
    add ax, 0xdc                     ; 0x55b6
    push ax                          ; 0x55b9
    mov ax, word [bp - 0x000a]       ; 0x55ba
    add ax, strict word 0x7f         ; 0x55bd
    push ax                          ; 0x55c0
    mov ax, word [bp - 0x0008]       ; 0x55c1
    add ax, 0xb2                     ; 0x55c4
    push ax                          ; 0x55c7
    mov ax, 0x17                     ; 0x55c8
    push ax                          ; 0x55cb
    call ds_dispatch_baa6            ; 0x55cc
    add sp, byte 0x0e                ; 0x55cf
    mov ax, 0                        ; 0x55d2
    push ax                          ; 0x55d5
    mov ax, 0x1b                     ; 0x55d6
    push ax                          ; 0x55d9
    mov ax, word [bp - 0x000a]       ; 0x55da
    add ax, 0x87                     ; 0x55dd
    push ax                          ; 0x55e0
    mov ax, word [bp - 0x0008]       ; 0x55e1
    add ax, 0x110                    ; 0x55e4
    push ax                          ; 0x55e7
    mov ax, word [bp - 0x000a]       ; 0x55e8
    add ax, strict word 0x7f         ; 0x55eb
    push ax                          ; 0x55ee
    mov ax, word [bp - 0x0008]       ; 0x55ef
    add ax, 0xe6                     ; 0x55f2
    push ax                          ; 0x55f5
    mov ax, 0x18                     ; 0x55f6
    push ax                          ; 0x55f9
    call ds_dispatch_baa6            ; 0x55fa
    add sp, byte 0x0e                ; 0x55fd
    mov ax, 0                        ; 0x5600
    push ax                          ; 0x5603
    push ax                          ; 0x5604
    push ax                          ; 0x5605
    push ax                          ; 0x5606
    push ax                          ; 0x5607
    mov ax, 0xffff                   ; 0x5608
    push ax                          ; 0x560b
    mov ax, 0x19                     ; 0x560c
    push ax                          ; 0x560f
    call ds_dispatch_baa6            ; 0x5610
    add sp, byte 0x0e                ; 0x5613
    mov ax, word [bp - 0x000e]       ; 0x5616
    inc ax                           ; 0x5619
    push ax                          ; 0x561a
    mov ax, word [bp - 0x000c]       ; 0x561b
    inc ax                           ; 0x561e
    push ax                          ; 0x561f
    mov ax, word [bp - 0x000a]       ; 0x5620
    dec ax                           ; 0x5623
    push ax                          ; 0x5624
    mov ax, word [bp - 0x0008]       ; 0x5625
    dec ax                           ; 0x5628
    push ax                          ; 0x5629
    call ds_dispatch_e8da            ; 0x562a
    add sp, byte 8                   ; 0x562d
    mov word [bp - 0x0018], 1        ; 0x5630
    mov word [bp - 0x0016], 0        ; 0x5635
@..local.l282:
    cmp word [data_0e32], byte 0     ; 0x563a
    je short @..local.l283           ; 0x563f
    mov ax, 0x59fe                   ; 0x5641
    push ax                          ; 0x5644
    call ds_dispatch_b90d            ; 0x5645
    pop cx                           ; 0x5648
    dec ax                           ; 0x5649
    mov word [bp - 0x0014], ax       ; 0x564a
    jmp near @..local.l309           ; 0x564d
@..local.l283:
    mov word [data_5b3e], 0          ; 0x5650
    push word [bp - 0x000a]          ; 0x5656
    push word [bp - 0x0008]          ; 0x5659
    push word [bp - 0x0016]          ; 0x565c
    call api_idx_0052_2              ; 0x565f
    add sp, byte 6                   ; 0x5662
    mov ax, 1                        ; 0x5665
    push ax                          ; 0x5668
    call ds_dispatch_eb32            ; 0x5669
    pop cx                           ; 0x566c
    sub ah, ah                       ; 0x566d
    mov word [bp - 0x0004], ax       ; 0x566f
    jmp near @..local.l301           ; 0x5672
@..local.l284:
    push word [bp - 0x000a]          ; 0x5675
    push word [bp - 0x0008]          ; 0x5678
    push word [bp - 0x0016]          ; 0x567b
    call api_idx_0052                ; 0x567e
    add sp, byte 6                   ; 0x5681
    mov ax, word [bp - 0x0016]       ; 0x5684
    add ax, strict word 0x12         ; 0x5687
    mov cx, 0x13                     ; 0x568a
    cwd                              ; 0x568d
    idiv cx                          ; 0x568e
    mov word [bp - 0x0016], dx       ; 0x5690
    cmp dx, byte 0x0e                ; 0x5693
    jne short @..local.l285          ; 0x5696
    dec word [bp - 0x0016]           ; 0x5698
@..local.l285:
    mov ax, word [bp - 0x000e]       ; 0x569b
    inc ax                           ; 0x569e
    push ax                          ; 0x569f
    mov ax, word [bp - 0x000c]       ; 0x56a0
    inc ax                           ; 0x56a3
    push ax                          ; 0x56a4
    mov ax, word [bp - 0x000a]       ; 0x56a5
    dec ax                           ; 0x56a8
    push ax                          ; 0x56a9
    mov ax, word [bp - 0x0008]       ; 0x56aa
    dec ax                           ; 0x56ad
    push ax                          ; 0x56ae
    call ds_dispatch_e8da            ; 0x56af
    add sp, byte 8                   ; 0x56b2
    jmp near @..local.l309           ; 0x56b5
@..local.l286:
    push word [bp - 0x000a]          ; 0x56b8
    push word [bp - 0x0008]          ; 0x56bb
    push word [bp - 0x0016]          ; 0x56be
    call api_idx_0052                ; 0x56c1
    add sp, byte 6                   ; 0x56c4
    mov ax, word [bp - 0x0016]       ; 0x56c7
    inc ax                           ; 0x56ca
    mov cx, 0x13                     ; 0x56cb
    cwd                              ; 0x56ce
    idiv cx                          ; 0x56cf
    mov word [bp - 0x0016], dx       ; 0x56d1
    cmp dx, byte 0x0e                ; 0x56d4
    jne short @..local.l287          ; 0x56d7
    inc word [bp - 0x0016]           ; 0x56d9
@..local.l287:
    mov ax, word [bp - 0x000e]       ; 0x56dc
    inc ax                           ; 0x56df
    push ax                          ; 0x56e0
    mov ax, word [bp - 0x000c]       ; 0x56e1
    inc ax                           ; 0x56e4
    push ax                          ; 0x56e5
    mov ax, word [bp - 0x000a]       ; 0x56e6
    dec ax                           ; 0x56e9
    push ax                          ; 0x56ea
    mov ax, word [bp - 0x0008]       ; 0x56eb
    dec ax                           ; 0x56ee
    push ax                          ; 0x56ef
    call ds_dispatch_e8da            ; 0x56f0
    add sp, byte 8                   ; 0x56f3
    jmp near @..local.l309           ; 0x56f6
@..local.l288:
    mov word [bp - 0x0014], 0xffff   ; 0x56f9
    mov ax, word [bp - 0x0016]       ; 0x56fe
    jmp short @..local.l289          ; 0x5701

    db 0xc7, 0x46, 0xec, 0x00, 0x00, 0xe9, 0x79, 0x00, 0xc7, 0x46, 0xec, 0x03, 0x00, 0xeb, 0x72, 0xc7
    db 0x46, 0xec, 0x04, 0x00, 0xeb, 0x6b, 0xc7, 0x46, 0xec, 0x05, 0x00, 0xeb, 0x64, 0xc7, 0x46, 0xec
    db 0x0c, 0x00, 0xeb, 0x5d, 0xc7, 0x46, 0xec, 0x0f, 0x00, 0xeb, 0x56, 0xc7, 0x46, 0xec, 0x10, 0x00
    db 0xeb, 0x4f, 0xc7, 0x46, 0xec, 0x11, 0x00, 0xeb, 0x48, 0xc7, 0x46, 0xec, 0x12, 0x00, 0xeb, 0x41
    db 0xc7, 0x46, 0xec, 0x17, 0x00, 0xeb, 0x3a, 0xc7, 0x46, 0xec, 0x18, 0x00, 0xeb, 0x33, 0x4a, 0xa7
    db 0xcb, 0xa7, 0x52, 0xa7, 0x59, 0xa7, 0x60, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7, 0x67, 0xa7
    db 0xcb, 0xa7, 0x6e, 0xa7, 0x75, 0xa7, 0x7c, 0xa7, 0x83, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7
    db 0x8a, 0xa7, 0x91, 0xa7

@..local.l289:
    cmp ax, strict word 0x13         ; 0x5777
    jae short @..local.l290          ; 0x577a
    xchg bx, ax                      ; 0x577c
    shl bx, 1                        ; 0x577d
    jmp [cs:bx - 0x5868]             ; 0x577f
@..local.l290:
    cmp word [bp - 0x0014], byte 0xff ; 0x5784
    je short @..local.l291           ; 0x5788
    mov word [data_5b3e], 1          ; 0x578a
@..local.l291:
    jmp near @..local.l309           ; 0x5790
@..local.l292:
    mov word [bp - 0x0014], 0xffff   ; 0x5793
    mov ax, word [bp - 0x0016]       ; 0x5798
    jmp short @..local.l293          ; 0x579b

    db 0xc7, 0x46, 0xec, 0x02, 0x00, 0xeb, 0x59, 0xc7, 0x46, 0xec, 0x07, 0x00, 0xeb, 0x52, 0xc7, 0x46
    db 0xec, 0x09, 0x00, 0xeb, 0x4b, 0xc7, 0x46, 0xec, 0x0b, 0x00, 0xeb, 0x44, 0xc7, 0x46, 0xec, 0x0e
    db 0x00, 0xeb, 0x3d, 0xc7, 0x46, 0xec, 0x14, 0x00, 0xeb, 0x36, 0xc7, 0x46, 0xec, 0x16, 0x00, 0xeb
    db 0x2f, 0x44, 0xa8, 0xe4, 0xa7, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0xeb, 0xa7, 0xf2, 0xa7, 0xf9
    db 0xa7, 0x44, 0xa8, 0x00, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x07
    db 0xa8, 0x0e, 0xa8

@..local.l293:
    cmp ax, strict word 0x11         ; 0x57f0
    jae short @..local.l294          ; 0x57f3
    xchg bx, ax                      ; 0x57f5
    shl bx, 1                        ; 0x57f6
    jmp [cs:bx - 0x57eb]             ; 0x57f8
@..local.l294:
    cmp word [bp - 0x0014], byte 0xff ; 0x57fd
    je short @..local.l295           ; 0x5801
    mov word [data_5b3e], 1          ; 0x5803
@..local.l295:
    jmp near @..local.l309           ; 0x5809
@..local.l296:
    mov word [bp - 0x0014], 0xffff   ; 0x580c
    mov ax, word [bp - 0x0016]       ; 0x5811
    jmp short @..local.l297          ; 0x5814

    db 0xc7, 0x46, 0xec, 0x01, 0x00, 0xeb, 0x59, 0xc7, 0x46, 0xec, 0x06, 0x00, 0xeb, 0x52, 0xc7, 0x46
    db 0xec, 0x08, 0x00, 0xeb, 0x4b, 0xc7, 0x46, 0xec, 0x0a, 0x00, 0xeb, 0x44, 0xc7, 0x46, 0xec, 0x0d
    db 0x00, 0xeb, 0x3d, 0xc7, 0x46, 0xec, 0x13, 0x00, 0xeb, 0x36, 0xc7, 0x46, 0xec, 0x15, 0x00, 0xeb
    db 0x2f, 0xbd, 0xa8, 0x5d, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0x64, 0xa8, 0x6b, 0xa8, 0x72
    db 0xa8, 0xbd, 0xa8, 0x79, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0x80
    db 0xa8, 0x87, 0xa8

@..local.l297:
    cmp ax, strict word 0x11         ; 0x5869
    jae short @..local.l298          ; 0x586c
    xchg bx, ax                      ; 0x586e
    shl bx, 1                        ; 0x586f
    jmp [cs:bx - 0x5772]             ; 0x5871
@..local.l298:
    cmp word [bp - 0x0014], byte 0xff ; 0x5876
    je short @..local.l299           ; 0x587a
    mov word [data_5b3e], 1          ; 0x587c
@..local.l299:
    jmp short @..local.l309          ; 0x5882
@..local.l300:
    mov word [bp - 0x0014], 0x18     ; 0x5884
    mov word [data_5b3e], 1          ; 0x5889
    jmp short @..local.l309          ; 0x588f
@..local.l301:
    cmp ax, strict word 8            ; 0x5891
    jne short @..local.l302          ; 0x5894
    jmp near @..local.l296           ; 0x5896
@..local.l302:
    cmp ax, strict word 9            ; 0x5899
    jne short @..local.l303          ; 0x589c
    jmp near @..local.l284           ; 0x589e
@..local.l303:
    cmp ax, strict word 0xa          ; 0x58a1
    jne short @..local.l304          ; 0x58a4
    jmp near @..local.l292           ; 0x58a6
@..local.l304:
    cmp ax, strict word 0xb          ; 0x58a9
    jne short @..local.l305          ; 0x58ac
    jmp near @..local.l286           ; 0x58ae
@..local.l305:
    cmp ax, strict word 0xd          ; 0x58b1
    jne short @..local.l306          ; 0x58b4
    jmp near @..local.l288           ; 0x58b6
@..local.l306:
    cmp ax, strict word 0x1b         ; 0x58b9
    je short @..local.l300           ; 0x58bc
    cmp ax, strict word 0x2b         ; 0x58be
    jne short @..local.l307          ; 0x58c1
    jmp near @..local.l292           ; 0x58c3
@..local.l307:
    cmp ax, strict word 0x2d         ; 0x58c6
    jne short @..local.l308          ; 0x58c9
    jmp near @..local.l296           ; 0x58cb
@..local.l308:
    cmp ax, strict word 0x3d         ; 0x58ce
    jne short @..local.l309          ; 0x58d1
    jmp near @..local.l292           ; 0x58d3
@..local.l309:
    cmp word [data_5b3e], byte 1     ; 0x58d6
    je short @..local.l310           ; 0x58db
    jmp near @..local.l314           ; 0x58dd
@..local.l310:
    mov ax, word [bp - 0x0014]       ; 0x58e0
    jmp near @..local.l311           ; 0x58e3

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
    cmp ax, strict word 0x19         ; 0x5eb1
    jae short @..local.l312          ; 0x5eb4
    xchg bx, ax                      ; 0x5eb6
    shl bx, 1                        ; 0x5eb7
    jmp [cs:bx - 0x513a]             ; 0x5eb9
@..local.l312:
    cmp word [bp - 0x0018], byte 0   ; 0x5ebe
    je short @..local.l313           ; 0x5ec2
    cmp word [data_0e32], byte 0     ; 0x5ec4
    jne short @..local.l313          ; 0x5ec9
    push word [bp - 0x000a]          ; 0x5ecb
    push word [bp - 0x0008]          ; 0x5ece
    push word [bp - 0x0016]          ; 0x5ed1
    call api_idx_0052_2              ; 0x5ed4
    add sp, byte 6                   ; 0x5ed7
@..local.l313:
    mov ax, word [bp - 0x000e]       ; 0x5eda
    inc ax                           ; 0x5edd
    push ax                          ; 0x5ede
    mov ax, word [bp - 0x000c]       ; 0x5edf
    inc ax                           ; 0x5ee2
    push ax                          ; 0x5ee3
    mov ax, word [bp - 0x000a]       ; 0x5ee4
    dec ax                           ; 0x5ee7
    push ax                          ; 0x5ee8
    mov ax, word [bp - 0x0008]       ; 0x5ee9
    dec ax                           ; 0x5eec
    push ax                          ; 0x5eed
    call ds_dispatch_e8da            ; 0x5eee
    add sp, byte 8                   ; 0x5ef1
@..local.l314:
    cmp word [bp - 0x0018], byte 0   ; 0x5ef4
    je short @..local.l315           ; 0x5ef8
    jmp near @..local.l282           ; 0x5efa
@..local.l315:
    mov ax, 1                        ; 0x5efd
    push ax                          ; 0x5f00
    push word [bp - 0x006a]          ; 0x5f01
    call ds_dispatch_c459            ; 0x5f04
    add sp, byte 4                   ; 0x5f07
    mov ax, word [bp - 0x000e]       ; 0x5f0a
    inc ax                           ; 0x5f0d
    push ax                          ; 0x5f0e
    mov ax, word [bp - 0x000c]       ; 0x5f0f
    inc ax                           ; 0x5f12
    push ax                          ; 0x5f13
    mov ax, word [bp - 0x000a]       ; 0x5f14
    dec ax                           ; 0x5f17
    push ax                          ; 0x5f18
    mov ax, word [bp - 0x0008]       ; 0x5f19
    dec ax                           ; 0x5f1c
    push ax                          ; 0x5f1d
    call ds_dispatch_e8da            ; 0x5f1e
    add sp, byte 8                   ; 0x5f21
    mov ax, word [data_9050]         ; 0x5f24
    ret                              ; 0x5f27
math_loc_5f28:
    mov ax, 0xfd40                   ; 0x5f28
    call ds_dispatch_f40b            ; 0x5f2b
    mov word [bp - 0x0008], 0        ; 0x5f2e
    mov word [bp - 0x0002], 0        ; 0x5f33
    jmp near @..math_loc_5f28.l7     ; 0x5f38
@..math_loc_5f28.l1:
    mov bx, word [bp - 0x0002]       ; 0x5f3b
    cmp byte [bx - 0x6f8a], 1        ; 0x5f3e
    je short @..math_loc_5f28.l2     ; 0x5f43
    jmp near @..math_loc_5f28.l6     ; 0x5f45
@..math_loc_5f28.l2:
    mov ax, 0                        ; 0x5f48
    push ax                          ; 0x5f4b
    push bx                          ; 0x5f4c
    lea ax, word [bp - 0x0250]       ; 0x5f4d
    push ax                          ; 0x5f51
    call api_idx_0002                ; 0x5f52
    add sp, byte 6                   ; 0x5f55
    lea ax, word [bp - 0x0250]       ; 0x5f58
    push ax                          ; 0x5f5c
    mov ax, 0x14                     ; 0x5f5d
    imul word [bp - 0x0008]          ; 0x5f60
    add ax, data_0e38                ; 0x5f63
    push ax                          ; 0x5f66
    call ds_dispatch_f364            ; 0x5f67
    add sp, byte 4                   ; 0x5f6a
    mov ax, 0x14                     ; 0x5f6d
    imul word [bp - 0x0008]          ; 0x5f70
    add ax, data_0e38                ; 0x5f73
    push ax                          ; 0x5f76
    call ds_dispatch_fa90            ; 0x5f77
    pop cx                           ; 0x5f7a
    mov word [bp - 0x0004], ax       ; 0x5f7b
@..math_loc_5f28.l3:
    cmp word [bp - 0x0004], byte 0x0a ; 0x5f7e
    jge short @..math_loc_5f28.l4    ; 0x5f82
    mov ax, 0x14                     ; 0x5f84
    imul word [bp - 0x0008]          ; 0x5f87
    add ax, word [bp - 0x0004]       ; 0x5f8a
    mov bx, ax                       ; 0x5f8d
    mov byte [bx + 0xe38], 0x20      ; 0x5f8f
    inc word [bp - 0x0004]           ; 0x5f94
    jmp short @..math_loc_5f28.l3    ; 0x5f97
@..math_loc_5f28.l4:
    lea ax, word [bp - 0x02a0]       ; 0x5f99
    push ax                          ; 0x5f9d
    mov al, byte [bp - 0x0018]       ; 0x5f9e
    sub ah, ah                       ; 0x5fa1
    add ax, 0x8c                     ; 0x5fa3
    push ax                          ; 0x5fa6
    call ds_dispatch_b53b            ; 0x5fa7
    add sp, byte 4                   ; 0x5faa
    mov al, byte [bp - 0x02a0]       ; 0x5fad
    push ax                          ; 0x5fb1
    mov ax, 0x14                     ; 0x5fb2
    imul word [bp - 0x0008]          ; 0x5fb5
    mov bx, ax                       ; 0x5fb8
    pop ax                           ; 0x5fba
    mov byte [bx + 0xe42], al        ; 0x5fbb
    mov byte [bx + 0xe43], 0x2d      ; 0x5fbf
    lea ax, word [bp - 0x02a0]       ; 0x5fc4
    push ax                          ; 0x5fc8
    mov al, byte [bp - 0x0017]       ; 0x5fc9
    sub ah, ah                       ; 0x5fcc
    add ax, strict word 0x78         ; 0x5fce
    push ax                          ; 0x5fd1
    call ds_dispatch_b53b            ; 0x5fd2
    add sp, byte 4                   ; 0x5fd5
    mov word [bp - 0x0004], 0        ; 0x5fd8
@..math_loc_5f28.l5:
    mov bx, word [bp - 0x0004]       ; 0x5fdd
    add bx, bp                       ; 0x5fe0
    mov al, byte [bx - 0x02a0]       ; 0x5fe2
    push ax                          ; 0x5fe6
    mov ax, 0x14                     ; 0x5fe7
    imul word [bp - 0x0008]          ; 0x5fea
    mov cx, ax                       ; 0x5fed
    add ax, word [bp - 0x0004]       ; 0x5fef
    mov bx, ax                       ; 0x5ff2
    pop ax                           ; 0x5ff4
    mov byte [bx + 0xe44], al        ; 0x5ff5
    inc word [bp - 0x0004]           ; 0x5ff9
    mov ax, word [bp - 0x0004]       ; 0x5ffc
    cmp ax, strict word 3            ; 0x5fff
    jl short @..math_loc_5f28.l5     ; 0x6002
    mov ax, 0x14                     ; 0x6004
    imul word [bp - 0x0008]          ; 0x6007
    mov bx, ax                       ; 0x600a
    mov byte [bx + 0xe47], 0         ; 0x600c
    mov ax, word [bp - 0x0002]       ; 0x6011
    mov cx, word [bp - 0x0008]       ; 0x6014
    shl cx, 1                        ; 0x6017
    mov bx, cx                       ; 0x6019
    add bx, bp                       ; 0x601b
    mov word [bx - 0x02c0], ax       ; 0x601d
    inc word [bp - 0x0008]           ; 0x6021
@..math_loc_5f28.l6:
    inc word [bp - 0x0002]           ; 0x6024
@..math_loc_5f28.l7:
    mov ax, word [bp - 0x0002]       ; 0x6027
    cmp ax, word [data_9070]         ; 0x602a
    jge short @..math_loc_5f28.l8    ; 0x602e
    jmp near @..math_loc_5f28.l1     ; 0x6030
@..math_loc_5f28.l8:
    cmp word [bp - 0x0008], byte 0   ; 0x6033
    jle short @..local.l316          ; 0x6037
    push word [bp - 0x0008]          ; 0x6039
    mov ax, 1                        ; 0x603c
    push ax                          ; 0x603f
    push ax                          ; 0x6040
    mov ax, 0                        ; 0x6041
    push ax                          ; 0x6044
    push word [bp + 0x4]             ; 0x6045
    call api_idx_0038                ; 0x6048
    add sp, byte 0x0a                ; 0x604b
    cmp ax, strict word 1            ; 0x604e
    jne short @..local.l316          ; 0x6051
    mov ax, word [data_904e]         ; 0x6053
    mov word [bp - 0x0006], ax       ; 0x6056
    cmp ax, strict word 0xffff       ; 0x6059
    je short @..local.l316           ; 0x605c
    shl ax, 1                        ; 0x605e
    mov bx, ax                       ; 0x6060
    add bx, bp                       ; 0x6062
    mov ax, word [bx - 0x02c0]       ; 0x6064
    ret                              ; 0x6068
@..local.l316:
    mov ax, 0xffff                   ; 0x6069
    ret                              ; 0x606c
math_loc_606d:
    mov ax, 0xfdb2                   ; 0x606d
    call ds_dispatch_f40b            ; 0x6070
@..math_loc_606d.l1:
    cmp word [data_69c8], byte 6     ; 0x6073
    jl short @..math_loc_606d.l2     ; 0x6078
    jmp near @..math_loc_606d.l10    ; 0x607a
@..math_loc_606d.l2:
    mov ax, 0x4b0                    ; 0x607d
    push ax                          ; 0x6080
    call math_loc_5f28               ; 0x6081
    pop cx                           ; 0x6084
    mov word [bp - 0x0002], ax       ; 0x6085
    cmp ax, strict word 0xffff       ; 0x6088
    jne short @..math_loc_606d.l3    ; 0x608b
    jmp near @..math_loc_606d.l10    ; 0x608d
@..math_loc_606d.l3:
    mov ax, 0                        ; 0x6090
    push ax                          ; 0x6093
    push word [bp - 0x0002]          ; 0x6094
    lea ax, word [bp - 0x024e]       ; 0x6097
    push ax                          ; 0x609b
    call api_idx_0002                ; 0x609c
    add sp, byte 6                   ; 0x609f
    mov bx, word [bp - 0x0002]       ; 0x60a2
    mov byte [bx - 0x6f8a], data_0002 ; 0x60a5
    mov si, word [data_69c8]         ; 0x60aa
    shl si, 1                        ; 0x60ae
    mov word [si - 0x750e], bx       ; 0x60b0
    push word [data_69c8]            ; 0x60b4
    call api_idx_0006                ; 0x60b8
    pop cx                           ; 0x60bb
    mov cx, word [data_69c8]         ; 0x60bc
    shl cx, 1                        ; 0x60c0
    mov bx, cx                       ; 0x60c2
    mov word [bx + 0x69bc], ax       ; 0x60c4
    push ax                          ; 0x60c8
    mov al, byte [bp - 0x0018]       ; 0x60c9
    sub ah, ah                       ; 0x60cc
    push ax                          ; 0x60ce
    call api_idx_0016                ; 0x60cf
    add sp, byte 4                   ; 0x60d2
    lea si, word [bp - 0x024e]       ; 0x60d5
    mov ax, 0x248                    ; 0x60d9
    imul word [data_69c8]            ; 0x60dc
    mov di, ax                       ; 0x60e0
    add ax, 0x5bf4                   ; 0x60e2
    mov di, ax                       ; 0x60e5
    mov cx, ds                       ; 0x60e7
    mov es, cx                       ; 0x60e9
    mov cx, 0x124                    ; 0x60eb
    rep movsw                        ; 0x60ee
    mov ax, 0                        ; 0x60f0
    push ax                          ; 0x60f3
    push word [data_69c8]            ; 0x60f4
    call ds_dispatch_cb3a            ; 0x60f8
    add sp, byte 4                   ; 0x60fb
    mov ax, word [data_69c8]         ; 0x60fe
    mov cx, data_0002                ; 0x6101
    cwd                              ; 0x6104
    idiv cx                          ; 0x6105
    mov ax, dx                       ; 0x6107
    mov cx, 0xfc                     ; 0x6109
    imul cx                          ; 0x610c
    add ax, strict word 5            ; 0x610e
    mov word [bp - 0x0004], ax       ; 0x6111
    mov ax, word [data_69c8]         ; 0x6114
    mov cx, data_0002                ; 0x6117
    cwd                              ; 0x611a
    idiv cx                          ; 0x611b
    mov cx, 0x2d                     ; 0x611d
    imul cx                          ; 0x6120
    add ax, strict word 0x12         ; 0x6122
    mov word [bp - 0x0006], ax       ; 0x6125
    mov ax, word [data_69c8]         ; 0x6128
    jmp near @..math_loc_606d.l7     ; 0x612b
@..math_loc_606d.l4:
    mov ax, 0x8d                     ; 0x612e
    push ax                          ; 0x6131
    mov ax, word [bp - 0x0004]       ; 0x6132
    add ax, strict word 0x3b         ; 0x6135
    push ax                          ; 0x6138
    push word [bp - 0x0006]          ; 0x6139
    push word [bp - 0x0004]          ; 0x613c
    call ds_dispatch_e8da            ; 0x613f
    add sp, byte 8                   ; 0x6142
    mov ax, word [bp - 0x0006]       ; 0x6145
    add ax, strict word 0x2b         ; 0x6148
    push ax                          ; 0x614b
    mov ax, 0x35                     ; 0x614c
    push ax                          ; 0x614f
    push word [bp - 0x0006]          ; 0x6150
    push word [bp - 0x0004]          ; 0x6153
    call ds_dispatch_e8da            ; 0x6156
    add sp, byte 8                   ; 0x6159
    jmp short @..math_loc_606d.l9    ; 0x615c
@..math_loc_606d.l5:
    mov ax, 0x8d                     ; 0x615e
    push ax                          ; 0x6161
    mov ax, word [bp - 0x0004]       ; 0x6162
    add ax, strict word 0x3b         ; 0x6165
    push ax                          ; 0x6168
    push word [bp - 0x0006]          ; 0x6169
    push word [bp - 0x0004]          ; 0x616c
    call ds_dispatch_e8da            ; 0x616f
    add sp, byte 8                   ; 0x6172
    mov ax, word [bp - 0x0006]       ; 0x6175
    add ax, strict word 0x2b         ; 0x6178
    push ax                          ; 0x617b
    mov ax, word [bp - 0x0004]       ; 0x617c
    add ax, strict word 0x3b         ; 0x617f
    push ax                          ; 0x6182
    push word [bp - 0x0006]          ; 0x6183
    mov ax, 0x10a                    ; 0x6186
    push ax                          ; 0x6189
    call ds_dispatch_e8da            ; 0x618a
    add sp, byte 8                   ; 0x618d
    jmp short @..math_loc_606d.l9    ; 0x6190
@..math_loc_606d.l6:
    mov ax, word [bp - 0x0006]       ; 0x6192
    add ax, strict word 0x2b         ; 0x6195
    push ax                          ; 0x6198
    mov ax, word [bp - 0x0004]       ; 0x6199
    add ax, strict word 0x3b         ; 0x619c
    push ax                          ; 0x619f
    push word [bp - 0x0006]          ; 0x61a0
    push word [bp - 0x0004]          ; 0x61a3
    call ds_dispatch_e8da            ; 0x61a6
    add sp, byte 8                   ; 0x61a9
    jmp short @..math_loc_606d.l9    ; 0x61ac
@..math_loc_606d.l7:
    cmp ax, strict word 4            ; 0x61ae
    jne short @..math_loc_606d.l8    ; 0x61b1
    jmp near @..math_loc_606d.l4     ; 0x61b3
@..math_loc_606d.l8:
    cmp ax, strict word 5            ; 0x61b6
    je short @..math_loc_606d.l5     ; 0x61b9
    jmp short @..math_loc_606d.l6    ; 0x61bb
@..math_loc_606d.l9:
    inc word [data_69c8]             ; 0x61bd
    jmp near @..math_loc_606d.l1     ; 0x61c1
@..math_loc_606d.l10:
    mov ax, 0xc6                     ; 0x61c4
    push ax                          ; 0x61c7
    mov ax, 0x109                    ; 0x61c8
    push ax                          ; 0x61cb
    mov ax, 0x8e                     ; 0x61cc
    push ax                          ; 0x61cf
    mov ax, api_idx_0002             ; 0x61d0
    push ax                          ; 0x61d3
    call ds_dispatch_e8da            ; 0x61d4
    add sp, byte 8                   ; 0x61d7
    ret                              ; 0x61da
api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x61db
    call ds_dispatch_f40b            ; 0x61de
    mov ax, word [bp + 0x4]          ; 0x61e1
    shl ax, 1                        ; 0x61e4
    mov bx, ax                       ; 0x61e6
    mov bx, word [bx - 0x750e]       ; 0x61e8
    mov byte [bx - 0x6f8a], 1        ; 0x61ec
    dec word [data_69c8]             ; 0x61f1
    mov ax, word [bp + 0x4]          ; 0x61f5
    mov word [bp - 0x0002], ax       ; 0x61f8
    jmp short @..api_idx_0006_2.l2   ; 0x61fb
@..api_idx_0006_2.l1:
    mov ax, 0x248                    ; 0x61fd
    imul word [bp - 0x0002]          ; 0x6200
    mov si, ax                       ; 0x6203
    add ax, 0x5e3c                   ; 0x6205
    mov si, ax                       ; 0x6208
    mov ax, 0x248                    ; 0x620a
    imul word [bp - 0x0002]          ; 0x620d
    mov di, ax                       ; 0x6210
    add ax, 0x5bf4                   ; 0x6212
    mov di, ax                       ; 0x6215
    mov cx, ds                       ; 0x6217
    mov es, cx                       ; 0x6219
    mov cx, 0x124                    ; 0x621b
    rep movsw                        ; 0x621e
    mov ax, word [bp - 0x0002]       ; 0x6220
    shl ax, 1                        ; 0x6223
    mov bx, ax                       ; 0x6225
    mov ax, word [bx - 0x750c]       ; 0x6227
    mov word [bx - 0x750e], ax       ; 0x622b
    mov ax, word [bx + 0x69be]       ; 0x622f
    mov word [bx + 0x69bc], ax       ; 0x6233
    inc word [bp - 0x0002]           ; 0x6237
@..api_idx_0006_2.l2:
    mov ax, word [bp - 0x0002]       ; 0x623a
    cmp ax, word [data_69c8]         ; 0x623d
    jl short @..api_idx_0006_2.l1    ; 0x6241
    mov word [bp - 0x0002], 0        ; 0x6243
    jmp short @..api_idx_0006_2.l4   ; 0x6248
@..api_idx_0006_2.l3:
    mov ax, 1                        ; 0x624a
    push ax                          ; 0x624d
    push word [bp - 0x0002]          ; 0x624e
    call ds_dispatch_cb3a            ; 0x6251
    add sp, byte 4                   ; 0x6254
    inc word [bp - 0x0002]           ; 0x6257
@..api_idx_0006_2.l4:
    mov ax, word [bp - 0x0002]       ; 0x625a
    cmp ax, word [data_69c8]         ; 0x625d
    jl short @..api_idx_0006_2.l3    ; 0x6261
    mov ax, 0                        ; 0x6263
    push ax                          ; 0x6266
    mov ax, word [data_69c8]         ; 0x6267
    shl ax, 1                        ; 0x626a
    shl ax, 1                        ; 0x626c
    mov bx, ax                       ; 0x626e
    push word [bx + 0x69a6]          ; 0x6270
    push word [bx + 0x69a4]          ; 0x6274
    call ds_dispatch_e94f            ; 0x6278
    add sp, byte 6                   ; 0x627b
    cmp word [bp + 0x6], byte 0      ; 0x627e
    je short @..api_idx_0006_2.l5    ; 0x6282
    mov ax, word [data_69c8]         ; 0x6284
    mov cx, data_0002                ; 0x6287
    cwd                              ; 0x628a
    idiv cx                          ; 0x628b
    mov ax, dx                       ; 0x628d
    mov cx, 0xfc                     ; 0x628f
    imul cx                          ; 0x6292
    add ax, strict word 5            ; 0x6294
    mov word [bp - 0x0004], ax       ; 0x6297
    mov ax, word [data_69c8]         ; 0x629a
    mov cx, data_0002                ; 0x629d
    cwd                              ; 0x62a0
    idiv cx                          ; 0x62a1
    mov cx, 0x2d                     ; 0x62a3
    imul cx                          ; 0x62a6
    add ax, strict word 0x12         ; 0x62a8
    mov word [bp - 0x0006], ax       ; 0x62ab
    add ax, strict word 0x2b         ; 0x62ae
    push ax                          ; 0x62b1
    mov ax, word [bp - 0x0004]       ; 0x62b2
    add ax, strict word 0x3b         ; 0x62b5
    push ax                          ; 0x62b8
    push word [bp - 0x0006]          ; 0x62b9
    push word [bp - 0x0004]          ; 0x62bc
    call ds_dispatch_e8da            ; 0x62bf
    add sp, byte 8                   ; 0x62c2
@..api_idx_0006_2.l5:
    ret                              ; 0x62c5
loc_62c6:
    mov ax, 0                        ; 0x62c6
    call ds_dispatch_f40b            ; 0x62c9
@..local.l317:
    cmp word [data_69c8], byte 0     ; 0x62cc
    jle short @..local.l318          ; 0x62d1
    mov ax, 0                        ; 0x62d3
    push ax                          ; 0x62d6
    mov ax, word [data_69c8]         ; 0x62d7
    dec ax                           ; 0x62da
    push ax                          ; 0x62db
    call api_idx_0006_2              ; 0x62dc
    add sp, byte 4                   ; 0x62df
    jmp short @..local.l317          ; 0x62e2
@..local.l318:
    ret                              ; 0x62e4
api_idx_00aa:
    mov ax, 0xff56                   ; 0x62e5
    call ds_dispatch_f40b            ; 0x62e8
    mov word [bp - 0x0002], 0x37     ; 0x62eb
    mov word [bp - 0x0004], 0x8f     ; 0x62f0
    mov word [bp - 0x0006], 0x108    ; 0x62f5
    mov word [bp - 0x0008], 0xc5     ; 0x62fa
    mov ax, 0x910d                   ; 0x62ff
    push ax                          ; 0x6302
    mov ax, word [bp - 0x0008]       ; 0x6303
    inc ax                           ; 0x6306
    push ax                          ; 0x6307
    mov ax, word [bp - 0x0006]       ; 0x6308
    inc ax                           ; 0x630b
    push ax                          ; 0x630c
    mov ax, word [bp - 0x0004]       ; 0x630d
    dec ax                           ; 0x6310
    push ax                          ; 0x6311
    mov ax, word [bp - 0x0002]       ; 0x6312
    dec ax                           ; 0x6315
    push ax                          ; 0x6316
    call ds_dispatch_c283            ; 0x6317
    add sp, byte 0x0a                ; 0x631a
    mov word [bp - 0x00aa], ax       ; 0x631d
    push word [bp - 0x0008]          ; 0x6321
    push word [bp - 0x0006]          ; 0x6324
    push word [bp - 0x0004]          ; 0x6327
    push word [bp - 0x0002]          ; 0x632a
    call ds_dispatch_bc9a            ; 0x632d
    add sp, byte 8                   ; 0x6330
    mov ax, 0                        ; 0x6333
    push ax                          ; 0x6336
    mov ax, 0x1c                     ; 0x6337
    push ax                          ; 0x633a
    call ds_dispatch_e823            ; 0x633b
    add sp, byte 4                   ; 0x633e
    lea ax, word [bp - 0x0058]       ; 0x6341
    push ax                          ; 0x6344
    mov ax, 0x41a                    ; 0x6345
    push ax                          ; 0x6348
    call ds_dispatch_b53b            ; 0x6349
    add sp, byte 4                   ; 0x634c
    mov ax, word [bp - 0x0004]       ; 0x634f
    add ax, strict word 5            ; 0x6352
    push ax                          ; 0x6355
    lea ax, word [bp - 0x0058]       ; 0x6356
    push ax                          ; 0x6359
    call ds_dispatch_fa90            ; 0x635a
    pop cx                           ; 0x635d
    mov cx, ax                       ; 0x635e
    mov ax, 0x15                     ; 0x6360
    sub ax, cx                       ; 0x6363
    mov cx, 6                        ; 0x6365
    imul cx                          ; 0x6368
    inc ax                           ; 0x636a
    inc ax                           ; 0x636b
    mov cx, data_0002                ; 0x636c
    cwd                              ; 0x636f
    idiv cx                          ; 0x6370
    add ax, word [bp - 0x0002]       ; 0x6372
    add ax, strict word 0x29         ; 0x6375
    push ax                          ; 0x6378
    call ds_dispatch_e809            ; 0x6379
    add sp, byte 4                   ; 0x637c
    mov ax, 0                        ; 0x637f
    push ax                          ; 0x6382
    lea ax, word [bp - 0x0058]       ; 0x6383
    push ax                          ; 0x6386
    call ds_dispatch_e84e            ; 0x6387
    add sp, byte 4                   ; 0x638a
    mov ax, 0xc2                     ; 0x638d
    push ax                          ; 0x6390
    mov ax, 1                        ; 0x6391
    push ax                          ; 0x6394
    call ds_dispatch_e823            ; 0x6395
    add sp, byte 4                   ; 0x6398
    lea ax, word [bp - 0x0058]       ; 0x639b
    push ax                          ; 0x639e
    mov ax, 0x41b                    ; 0x639f
    push ax                          ; 0x63a2
    call ds_dispatch_b53b            ; 0x63a3
    add sp, byte 4                   ; 0x63a6
    lea ax, word [bp - 0x00a8]       ; 0x63a9
    push ax                          ; 0x63ad
    mov bx, word [data_5b40]         ; 0x63ae
    mov al, byte [bx + 0x5990]       ; 0x63b2
    sub ah, ah                       ; 0x63b6
    push ax                          ; 0x63b8
    call ds_dispatch_b27d            ; 0x63b9
    add sp, byte 4                   ; 0x63bc
    mov ax, 0x24                     ; 0x63bf
    push ax                          ; 0x63c2
    lea ax, word [bp - 0x00a8]       ; 0x63c3
    push ax                          ; 0x63c7
    lea ax, word [bp - 0x0058]       ; 0x63c8
    push ax                          ; 0x63cb
    call ds_dispatch_b300            ; 0x63cc
    add sp, byte 6                   ; 0x63cf
    mov ax, word [bp - 0x0004]       ; 0x63d2
    add ax, strict word 0xf          ; 0x63d5
    push ax                          ; 0x63d8
    lea ax, word [bp - 0x0058]       ; 0x63d9
    push ax                          ; 0x63dc
    call ds_dispatch_fa90            ; 0x63dd
    pop cx                           ; 0x63e0
    mov cx, ax                       ; 0x63e1
    mov ax, 0x15                     ; 0x63e3
    sub ax, cx                       ; 0x63e6
    mov cx, 6                        ; 0x63e8
    imul cx                          ; 0x63eb
    inc ax                           ; 0x63ed
    inc ax                           ; 0x63ee
    mov cx, data_0002                ; 0x63ef
    cwd                              ; 0x63f2
    idiv cx                          ; 0x63f3
    add ax, word [bp - 0x0002]       ; 0x63f5
    add ax, strict word 0x29         ; 0x63f8
    push ax                          ; 0x63fb
    call ds_dispatch_e809            ; 0x63fc
    add sp, byte 4                   ; 0x63ff
    mov ax, 0                        ; 0x6402
    push ax                          ; 0x6405
    lea ax, word [bp - 0x0058]       ; 0x6406
    push ax                          ; 0x6409
    call ds_dispatch_e84e            ; 0x640a
    add sp, byte 4                   ; 0x640d
    lea ax, word [bp - 0x0058]       ; 0x6410
    push ax                          ; 0x6413
    mov ax, 0x41c                    ; 0x6414
    push ax                          ; 0x6417
    call ds_dispatch_b53b            ; 0x6418
    add sp, byte 4                   ; 0x641b
    lea ax, word [bp - 0x00a8]       ; 0x641e
    push ax                          ; 0x6422
    mov bx, word [data_5b46]         ; 0x6423
    mov al, byte [bx + 0x5990]       ; 0x6427
    sub ah, ah                       ; 0x642b
    add ax, 0x423                    ; 0x642d
    push ax                          ; 0x6430
    call ds_dispatch_b53b            ; 0x6431
    add sp, byte 4                   ; 0x6434
    mov ax, 0x24                     ; 0x6437
    push ax                          ; 0x643a
    lea ax, word [bp - 0x00a8]       ; 0x643b
    push ax                          ; 0x643f
    lea ax, word [bp - 0x0058]       ; 0x6440
    push ax                          ; 0x6443
    call ds_dispatch_b300            ; 0x6444
    add sp, byte 6                   ; 0x6447
    mov ax, word [bp - 0x0004]       ; 0x644a
    add ax, strict word 0x15         ; 0x644d
    push ax                          ; 0x6450
    lea ax, word [bp - 0x0058]       ; 0x6451
    push ax                          ; 0x6454
    call ds_dispatch_fa90            ; 0x6455
    pop cx                           ; 0x6458
    mov cx, ax                       ; 0x6459
    mov ax, 0x15                     ; 0x645b
    sub ax, cx                       ; 0x645e
    mov cx, 6                        ; 0x6460
    imul cx                          ; 0x6463
    inc ax                           ; 0x6465
    inc ax                           ; 0x6466
    mov cx, data_0002                ; 0x6467
    cwd                              ; 0x646a
    idiv cx                          ; 0x646b
    add ax, word [bp - 0x0002]       ; 0x646d
    add ax, strict word 0x29         ; 0x6470
    push ax                          ; 0x6473
    call ds_dispatch_e809            ; 0x6474
    add sp, byte 4                   ; 0x6477
    mov ax, 0                        ; 0x647a
    push ax                          ; 0x647d
    lea ax, word [bp - 0x0058]       ; 0x647e
    push ax                          ; 0x6481
    call ds_dispatch_e84e            ; 0x6482
    add sp, byte 4                   ; 0x6485
    lea ax, word [bp - 0x0058]       ; 0x6488
    push ax                          ; 0x648b
    mov ax, 0x41d                    ; 0x648c
    push ax                          ; 0x648f
    call ds_dispatch_b53b            ; 0x6490
    add sp, byte 4                   ; 0x6493
    lea ax, word [bp - 0x00a8]       ; 0x6496
    push ax                          ; 0x649a
    mov bx, word [data_5b42]         ; 0x649b
    mov al, byte [bx + 0x5990]       ; 0x649f
    sub ah, ah                       ; 0x64a3
    push ax                          ; 0x64a5
    call ds_dispatch_b27d            ; 0x64a6
    add sp, byte 4                   ; 0x64a9
    mov ax, 0x5e                     ; 0x64ac
    push ax                          ; 0x64af
    lea ax, word [bp - 0x00a8]       ; 0x64b0
    push ax                          ; 0x64b4
    lea ax, word [bp - 0x0058]       ; 0x64b5
    push ax                          ; 0x64b8
    call ds_dispatch_b300            ; 0x64b9
    add sp, byte 6                   ; 0x64bc
    lea ax, word [bp - 0x00a8]       ; 0x64bf
    push ax                          ; 0x64c3
    mov bx, word [data_5b44]         ; 0x64c4
    mov al, byte [bx + 0x5990]       ; 0x64c8
    sub ah, ah                       ; 0x64cc
    push ax                          ; 0x64ce
    call ds_dispatch_b27d            ; 0x64cf
    add sp, byte 4                   ; 0x64d2
    mov ax, 0x25                     ; 0x64d5
    push ax                          ; 0x64d8
    lea ax, word [bp - 0x00a8]       ; 0x64d9
    push ax                          ; 0x64dd
    lea ax, word [bp - 0x0058]       ; 0x64de
    push ax                          ; 0x64e1
    call ds_dispatch_b300            ; 0x64e2
    add sp, byte 6                   ; 0x64e5
    mov ax, word [bp - 0x0004]       ; 0x64e8
    add ax, strict word 0x1b         ; 0x64eb
    push ax                          ; 0x64ee
    lea ax, word [bp - 0x0058]       ; 0x64ef
    push ax                          ; 0x64f2
    call ds_dispatch_fa90            ; 0x64f3
    pop cx                           ; 0x64f6
    mov cx, ax                       ; 0x64f7
    mov ax, 0x15                     ; 0x64f9
    sub ax, cx                       ; 0x64fc
    mov cx, 6                        ; 0x64fe
    imul cx                          ; 0x6501
    inc ax                           ; 0x6503
    inc ax                           ; 0x6504
    mov cx, data_0002                ; 0x6505
    cwd                              ; 0x6508
    idiv cx                          ; 0x6509
    add ax, word [bp - 0x0002]       ; 0x650b
    add ax, strict word 0x29         ; 0x650e
    push ax                          ; 0x6511
    call ds_dispatch_e809            ; 0x6512
    add sp, byte 4                   ; 0x6515
    mov ax, 0                        ; 0x6518
    push ax                          ; 0x651b
    lea ax, word [bp - 0x0058]       ; 0x651c
    push ax                          ; 0x651f
    call ds_dispatch_e84e            ; 0x6520
    add sp, byte 4                   ; 0x6523
    mov byte [data_0e38], 0          ; 0x6526
    mov ax, 1                        ; 0x652b
    push ax                          ; 0x652e
    mov ax, 0                        ; 0x652f
    push ax                          ; 0x6532
    push ax                          ; 0x6533
    mov ax, 1                        ; 0x6534
    push ax                          ; 0x6537
    mov ax, 0x15                     ; 0x6538
    push ax                          ; 0x653b
    mov ax, word [bp - 0x0004]       ; 0x653c
    add ax, strict word 0x28         ; 0x653f
    push ax                          ; 0x6542
    mov ax, word [bp - 0x0002]       ; 0x6543
    add ax, strict word 0x29         ; 0x6546
    push ax                          ; 0x6549
    call ds_dispatch_bf97            ; 0x654a
    add sp, byte 0x0e                ; 0x654d
    mov ax, word [bp - 0x0008]       ; 0x6550
    inc ax                           ; 0x6553
    push ax                          ; 0x6554
    mov ax, word [bp - 0x0006]       ; 0x6555
    inc ax                           ; 0x6558
    push ax                          ; 0x6559
    mov ax, word [bp - 0x0004]       ; 0x655a
    dec ax                           ; 0x655d
    push ax                          ; 0x655e
    mov ax, word [bp - 0x0002]       ; 0x655f
    dec ax                           ; 0x6562
    push ax                          ; 0x6563
    call ds_dispatch_e8da            ; 0x6564
    add sp, byte 8                   ; 0x6567
    mov ax, 0                        ; 0x656a
    push ax                          ; 0x656d
    call ds_dispatch_b7e0            ; 0x656e
    pop cx                           ; 0x6571
    call ds_dispatch_ec17            ; 0x6572
    mov ax, 1                        ; 0x6575
    push ax                          ; 0x6578
    mov ax, 0                        ; 0x6579
    push ax                          ; 0x657c
    push ax                          ; 0x657d
    mov ax, 1                        ; 0x657e
    push ax                          ; 0x6581
    mov ax, 0x15                     ; 0x6582
    push ax                          ; 0x6585
    mov ax, word [bp - 0x0004]       ; 0x6586
    add ax, strict word 0x28         ; 0x6589
    push ax                          ; 0x658c
    mov ax, word [bp - 0x0002]       ; 0x658d
    add ax, strict word 0x29         ; 0x6590
    push ax                          ; 0x6593
    call ds_dispatch_bf97            ; 0x6594
    add sp, byte 0x0e                ; 0x6597
    mov ax, word [bp - 0x0004]       ; 0x659a
    add ax, strict word 0x2f         ; 0x659d
    push ax                          ; 0x65a0
    mov ax, word [bp - 0x0002]       ; 0x65a1
    add ax, 0xa9                     ; 0x65a4
    push ax                          ; 0x65a7
    mov ax, word [bp - 0x0004]       ; 0x65a8
    add ax, strict word 0x28         ; 0x65ab
    push ax                          ; 0x65ae
    mov ax, word [bp - 0x0002]       ; 0x65af
    add ax, strict word 0x29         ; 0x65b2
    push ax                          ; 0x65b5
    call ds_dispatch_e8da            ; 0x65b6
    add sp, byte 8                   ; 0x65b9
    mov ax, 0                        ; 0x65bc
    push ax                          ; 0x65bf
    mov ax, 1                        ; 0x65c0
    push ax                          ; 0x65c3
    mov ax, 0                        ; 0x65c4
    push ax                          ; 0x65c7
    mov ax, 0x14                     ; 0x65c8
    push ax                          ; 0x65cb
    mov ax, word [bp - 0x0004]       ; 0x65cc
    add ax, strict word 0x29         ; 0x65cf
    push ax                          ; 0x65d2
    mov ax, word [bp - 0x0002]       ; 0x65d3
    add ax, strict word 0x2b         ; 0x65d6
    push ax                          ; 0x65d9
    mov ax, data_0e38                ; 0x65da
    push ax                          ; 0x65dd
    call api_idx_0008                ; 0x65de
    add sp, byte 0x0e                ; 0x65e1
    mov ax, 1                        ; 0x65e4
    push ax                          ; 0x65e7
    mov ax, 0xffff                   ; 0x65e8
    push ax                          ; 0x65eb
    mov ax, 0                        ; 0x65ec
    push ax                          ; 0x65ef
    mov ax, 1                        ; 0x65f0
    push ax                          ; 0x65f3
    mov ax, 0x15                     ; 0x65f4
    push ax                          ; 0x65f7
    mov ax, word [bp - 0x0004]       ; 0x65f8
    add ax, strict word 0x28         ; 0x65fb
    push ax                          ; 0x65fe
    mov ax, word [bp - 0x0002]       ; 0x65ff
    add ax, strict word 0x29         ; 0x6602
    push ax                          ; 0x6605
    call ds_dispatch_bf97            ; 0x6606
    add sp, byte 0x0e                ; 0x6609
    mov ax, word [bp - 0x0004]       ; 0x660c
    add ax, strict word 0x2f         ; 0x660f
    push ax                          ; 0x6612
    mov ax, word [bp - 0x0002]       ; 0x6613
    add ax, 0xa9                     ; 0x6616
    push ax                          ; 0x6619
    mov ax, word [bp - 0x0004]       ; 0x661a
    add ax, strict word 0x28         ; 0x661d
    push ax                          ; 0x6620
    mov ax, word [bp - 0x0002]       ; 0x6621
    add ax, strict word 0x29         ; 0x6624
    push ax                          ; 0x6627
    call ds_dispatch_e8da            ; 0x6628
    add sp, byte 8                   ; 0x662b
    mov ax, 1                        ; 0x662e
    push ax                          ; 0x6631
    push word [bp - 0x00aa]          ; 0x6632
    call ds_dispatch_c459            ; 0x6636
    add sp, byte 4                   ; 0x6639
    mov ax, word [bp - 0x0008]       ; 0x663c
    inc ax                           ; 0x663f
    push ax                          ; 0x6640
    mov ax, word [bp - 0x0006]       ; 0x6641
    inc ax                           ; 0x6644
    push ax                          ; 0x6645
    mov ax, word [bp - 0x0004]       ; 0x6646
    dec ax                           ; 0x6649
    push ax                          ; 0x664a
    mov ax, word [bp - 0x0002]       ; 0x664b
    dec ax                           ; 0x664e
    push ax                          ; 0x664f
    call ds_dispatch_e8da            ; 0x6650
    add sp, byte 8                   ; 0x6653
    mov ax, data_0e38                ; 0x6656
    push ax                          ; 0x6659
    mov ax, 0x82b8                   ; 0x665a
    push ax                          ; 0x665d
    call ds_dispatch_f364            ; 0x665e
    add sp, byte 4                   ; 0x6661
    ret                              ; 0x6664
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x6665
    call ds_dispatch_f40b            ; 0x6668
    mov word [data_95b2], 0          ; 0x666b
    cmp word [data_904c], byte 0     ; 0x6671
    jne short @..api_idx_0004_3.l3   ; 0x6676
    call api_idx_00aa                ; 0x6678
    call 0xd9ca                      ; 0x667b
    mov word [data_a494], ax         ; 0x667e
    test ax, ax                      ; 0x6681
    jne short @..api_idx_0004_3.l1   ; 0x6683
    mov word [bp - 0x0002], 0xffff   ; 0x6685
    jmp short @..api_idx_0004_3.l2   ; 0x668a
@..api_idx_0004_3.l1:
    mov ax, 0xc                      ; 0x668c
    push ax                          ; 0x668f
    call ds_dispatch_b75e            ; 0x6690
    pop cx                           ; 0x6693
    push word [bp + 0x4]             ; 0x6694
    call api_idx_0038_2              ; 0x6697
    pop cx                           ; 0x669a
    mov word [bp - 0x0002], ax       ; 0x669b
@..api_idx_0004_3.l2:
    mov word [data_904c], 1          ; 0x669e
    jmp short @..api_idx_0004_3.l4   ; 0x66a4
@..api_idx_0004_3.l3:
    push word [bp + 0x4]             ; 0x66a6
    call api_idx_0038_2              ; 0x66a9
    pop cx                           ; 0x66ac
    mov word [bp - 0x0002], ax       ; 0x66ad
@..api_idx_0004_3.l4:
    cmp word [bp - 0x0002], byte 0xff ; 0x66b0
    jne short @..local.l319          ; 0x66b4
    mov ax, 0xc6                     ; 0x66b6
    push ax                          ; 0x66b9
    mov ax, 0x109                    ; 0x66ba
    push ax                          ; 0x66bd
    mov ax, 0x8e                     ; 0x66be
    push ax                          ; 0x66c1
    mov ax, api_idx_0002             ; 0x66c2
    push ax                          ; 0x66c5
    call ds_dispatch_e8da            ; 0x66c6
    add sp, byte 8                   ; 0x66c9
    ret                              ; 0x66cc
@..local.l319:
    push word [data_830c]            ; 0x66cd
    mov ax, 0                        ; 0x66d1
    push ax                          ; 0x66d4
    call ds_dispatch_d5a2            ; 0x66d5
    add sp, byte 4                   ; 0x66d8
    mov ax, 0                        ; 0x66db
    push ax                          ; 0x66de
    mov ax, 8                        ; 0x66df
    push ax                          ; 0x66e2
    mov ax, 0x8cfe                   ; 0x66e3
    push ax                          ; 0x66e6
    call ds_dispatch_f306            ; 0x66e7
    add sp, byte 6                   ; 0x66ea
    mov word [data_82ea], 0          ; 0x66ed
    mov ax, word [data_82ee]         ; 0x66f3
    shl ax, 1                        ; 0x66f6
    mov word [data_82f0], ax         ; 0x66f8
    mov word [data_82ec], 0          ; 0x66fb
    mov word [bp - 0x0004], 0xf      ; 0x6701
@..local.l320:
    mov bx, word [bp - 0x0004]       ; 0x6706
    mov byte [bx + 0x5b48], 0xff     ; 0x6709
    mov byte [bx + 0x5b5a], 0        ; 0x670e
    inc word [bp - 0x0004]           ; 0x6713
    mov ax, word [bp - 0x0004]       ; 0x6716
    cmp ax, strict word 0x12         ; 0x6719
    jl short @..local.l320           ; 0x671c
    mov word [data_5b70], 0          ; 0x671e
    mov word [data_5b6e], 0          ; 0x6724
    mov word [data_5b6c], 0xffff     ; 0x672a
    cmp word [data_904c], byte 2     ; 0x6730
    je short @..local.l321           ; 0x6735
    call 0xb389                      ; 0x6737
    mov word [data_904c], data_0002  ; 0x673a
@..local.l321:
    cmp word [data_95b2], byte 0     ; 0x6740
    jle short @..local.l322          ; 0x6745
    push word [data_95b2]            ; 0x6747
    call api_idx_0002_13             ; 0x674b
    pop cx                           ; 0x674e
@..local.l322:
    mov word [data_830a], 6          ; 0x674f
    ret                              ; 0x6755
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x6756
    call ds_dispatch_f40b            ; 0x6759
    cmp word [data_906a], byte 0     ; 0x675c
    je short @..api_idx_0002_3.l1    ; 0x6761
    mov ax, 1                        ; 0x6763
    push ax                          ; 0x6766
    push word [data_9068]            ; 0x6767
    call ds_dispatch_c459            ; 0x676b
    add sp, byte 4                   ; 0x676e
    mov word [data_906a], 0          ; 0x6771
@..api_idx_0002_3.l1:
    call ds_dispatch_c145            ; 0x6777
    mov ax, 0                        ; 0x677a
    push ax                          ; 0x677d
    mov ax, 0x8f                     ; 0x677e
    push ax                          ; 0x6781
    mov ax, 0xf7                     ; 0x6782
    push ax                          ; 0x6785
    mov ax, 0x20                     ; 0x6786
    push ax                          ; 0x6789
    mov ax, 0x48                     ; 0x678a
    push ax                          ; 0x678d
    call ds_dispatch_e901            ; 0x678e
    add sp, byte 0x0a                ; 0x6791
    mov ax, 0                        ; 0x6794
    push ax                          ; 0x6797
    push word [data_8d08]            ; 0x6798
    push word [data_8d06]            ; 0x679c
    call ds_dispatch_e94f            ; 0x67a0
    add sp, byte 6                   ; 0x67a3
    mov word [bp - 0x0002], 0        ; 0x67a6
@..api_idx_0002_3.l2:
    mov ax, 0                        ; 0x67ab
    push ax                          ; 0x67ae
    mov ax, word [bp - 0x0002]       ; 0x67af
    shl ax, 1                        ; 0x67b2
    shl ax, 1                        ; 0x67b4
    mov bx, ax                       ; 0x67b6
    push word [bx + 0x69a6]          ; 0x67b8
    push word [bx + 0x69a4]          ; 0x67bc
    call ds_dispatch_e94f            ; 0x67c0
    add sp, byte 6                   ; 0x67c3
    inc word [bp - 0x0002]           ; 0x67c6
    mov ax, word [bp - 0x0002]       ; 0x67c9
    cmp ax, strict word 6            ; 0x67cc
    jl short @..api_idx_0002_3.l2    ; 0x67cf
    cmp word [data_8460], byte 0     ; 0x67d1
    jle short @..api_idx_0002_3.l3   ; 0x67d6
    push word [data_8460]            ; 0x67d8
    call api_idx_0002_6              ; 0x67dc
    pop cx                           ; 0x67df
@..api_idx_0002_3.l3:
    mov ax, 0xc7                     ; 0x67e0
    push ax                          ; 0x67e3
    mov ax, 0x13f                    ; 0x67e4
    push ax                          ; 0x67e7
    mov ax, 0                        ; 0x67e8
    push ax                          ; 0x67eb
    push ax                          ; 0x67ec
    call ds_dispatch_e8da            ; 0x67ed
    add sp, byte 8                   ; 0x67f0
    mov word [data_69c8], 0          ; 0x67f3
    mov word [data_830a], 4          ; 0x67f9
    ret                              ; 0x67ff
api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x6800
    call ds_dispatch_f40b            ; 0x6803
    cmp word [data_906a], byte 0     ; 0x6806
    je short @..api_idx_0002_4.l1    ; 0x680b
    mov ax, 1                        ; 0x680d
    push ax                          ; 0x6810
    push word [data_9068]            ; 0x6811
    call ds_dispatch_c459            ; 0x6815
    add sp, byte 4                   ; 0x6818
    mov word [data_906a], 0          ; 0x681b
@..api_idx_0002_4.l1:
    mov ax, 1                        ; 0x6821
    push ax                          ; 0x6824
    push word [data_8d08]            ; 0x6825
    push word [data_8d06]            ; 0x6829
    call ds_dispatch_e94f            ; 0x682d
    add sp, byte 6                   ; 0x6830
    mov word [bp - 0x0002], 0        ; 0x6833
@..api_idx_0002_4.l2:
    mov ax, 1                        ; 0x6838
    push ax                          ; 0x683b
    mov ax, word [bp - 0x0002]       ; 0x683c
    shl ax, 1                        ; 0x683f
    shl ax, 1                        ; 0x6841
    mov bx, ax                       ; 0x6843
    push word [bx + 0x69a6]          ; 0x6845
    push word [bx + 0x69a4]          ; 0x6849
    call ds_dispatch_e94f            ; 0x684d
    add sp, byte 6                   ; 0x6850
    inc word [bp - 0x0002]           ; 0x6853
    mov ax, word [bp - 0x0002]       ; 0x6856
    cmp ax, strict word 6            ; 0x6859
    jl short @..api_idx_0002_4.l2    ; 0x685c
    mov word [bp - 0x0002], 0        ; 0x685e
@..api_idx_0002_4.l3:
    mov ax, 1                        ; 0x6863
    push ax                          ; 0x6866
    mov ax, word [bp - 0x0002]       ; 0x6867
    shl ax, 1                        ; 0x686a
    shl ax, 1                        ; 0x686c
    mov bx, ax                       ; 0x686e
    push word [bx - 0x7d2e]          ; 0x6870
    push word [bx - 0x7d30]          ; 0x6874
    call ds_dispatch_e94f            ; 0x6878
    add sp, byte 6                   ; 0x687b
    inc word [bp - 0x0002]           ; 0x687e
    mov ax, word [bp - 0x0002]       ; 0x6881
    cmp ax, strict word 6            ; 0x6884
    jl short @..api_idx_0002_4.l3    ; 0x6887
    call ds_dispatch_c145            ; 0x6889
    mov ax, 0                        ; 0x688c
    push ax                          ; 0x688f
    call ds_dispatch_c12a            ; 0x6890
    pop cx                           ; 0x6893
    mov ax, 3                        ; 0x6894
    push ax                          ; 0x6897
    call ds_dispatch_c12a            ; 0x6898
    pop cx                           ; 0x689b
    mov ax, 4                        ; 0x689c
    push ax                          ; 0x689f
    call ds_dispatch_c12a            ; 0x68a0
    pop cx                           ; 0x68a3
    mov ax, 6                        ; 0x68a4
    push ax                          ; 0x68a7
    call ds_dispatch_c12a            ; 0x68a8
    pop cx                           ; 0x68ab
    mov ax, 8                        ; 0x68ac
    push ax                          ; 0x68af
    call ds_dispatch_c12a            ; 0x68b0
    pop cx                           ; 0x68b3
    mov ax, math_loc_000e            ; 0x68b4
    push ax                          ; 0x68b7
    call ds_dispatch_c12a            ; 0x68b8
    pop cx                           ; 0x68bb
    ret                              ; 0x68bc
api_idx_004a:
    mov ax, 0xffb6                   ; 0x68bd
    call ds_dispatch_f40b            ; 0x68c0
    mov word [data_830a], 0x19       ; 0x68c3
    mov ax, 0                        ; 0x68c9
    push ax                          ; 0x68cc
    mov ax, 0x8f                     ; 0x68cd
    push ax                          ; 0x68d0
    mov ax, 0xf7                     ; 0x68d1
    push ax                          ; 0x68d4
    mov ax, 0x20                     ; 0x68d5
    push ax                          ; 0x68d8
    mov ax, 0x48                     ; 0x68d9
    push ax                          ; 0x68dc
    call ds_dispatch_e901            ; 0x68dd
    add sp, byte 0x0a                ; 0x68e0
    mov ax, 0x8f                     ; 0x68e3
    push ax                          ; 0x68e6
    mov ax, 0xf7                     ; 0x68e7
    push ax                          ; 0x68ea
    mov ax, 0x20                     ; 0x68eb
    push ax                          ; 0x68ee
    mov ax, 0x48                     ; 0x68ef
    push ax                          ; 0x68f2
    call ds_dispatch_e8da            ; 0x68f3
    add sp, byte 8                   ; 0x68f6
    mov word [bp - 0x0002], 0        ; 0x68f9
@..api_idx_004a.l1:
    mov ax, word [bp - 0x0002]       ; 0x68fe
    shl ax, 1                        ; 0x6901
    mov bx, ax                       ; 0x6903
    add bx, bp                       ; 0x6905
    mov word [bx - 0x0022], 1        ; 0x6907
    inc word [bp - 0x0002]           ; 0x690c
    mov ax, word [bp - 0x0002]       ; 0x690f
    cmp ax, strict word 5            ; 0x6912
    jle short @..api_idx_004a.l1     ; 0x6915
    mov word [bp - 0x001e], 0        ; 0x6917
    mov word [bp - 0x0016], 0xffff   ; 0x691c
    mov word [bp - 0x0004], 1        ; 0x6921
@..api_idx_004a.l2:
    lea ax, word [bp - 0x0022]       ; 0x6926
    push ax                          ; 0x6929
    mov ax, 1                        ; 0x692a
    push ax                          ; 0x692d
    mov ax, 6                        ; 0x692e
    push ax                          ; 0x6931
    mov ax, 0xd                      ; 0x6932
    push ax                          ; 0x6935
    mov ax, 0x12                     ; 0x6936
    push ax                          ; 0x6939
    mov ax, 0x24                     ; 0x693a
    push ax                          ; 0x693d
    mov ax, 0x61                     ; 0x693e
    push ax                          ; 0x6941
    mov ax, 0x898                    ; 0x6942
    push ax                          ; 0x6945
    call math_loc_023a               ; 0x6946
    add sp, byte 0x10                ; 0x6949
    mov word [bp - 0x0002], ax       ; 0x694c
    lea ax, word [bp - 0x004a]       ; 0x694f
    push ax                          ; 0x6952
    mov ax, word [bp - 0x0002]       ; 0x6953
    add ax, 0x898                    ; 0x6956
    push ax                          ; 0x6959
    call ds_dispatch_b53b            ; 0x695a
    add sp, byte 4                   ; 0x695d
    mov ax, 0x1a                     ; 0x6960
    push ax                          ; 0x6963
    mov ax, 0xd                      ; 0x6964
    push ax                          ; 0x6967
    mov ax, 0x12                     ; 0x6968
    push ax                          ; 0x696b
    mov ax, 0x24                     ; 0x696c
    push ax                          ; 0x696f
    mov ax, 0x61                     ; 0x6970
    push ax                          ; 0x6973
    push word [data_9052]            ; 0x6974
    lea ax, word [bp - 0x004a]       ; 0x6978
    push ax                          ; 0x697b
    call api_idx_0004                ; 0x697c
    add sp, byte 0x0e                ; 0x697f
    mov ax, word [bp - 0x0002]       ; 0x6982
    jmp short @..api_idx_004a.l9     ; 0x6985
    mov word [bp - 0x0004], 0        ; 0x6987
    jmp near @..api_idx_004a.l10     ; 0x698c
    mov ax, 1                        ; 0x698f
    push ax                          ; 0x6992
    call loc_4d0e                    ; 0x6993
    pop cx                           ; 0x6996
    jmp short @..api_idx_004a.l10    ; 0x6997
    jmp short @..api_idx_004a.l10    ; 0x6999
    mov ax, 0                        ; 0x699b
    push ax                          ; 0x699e
    call api_idx_004e                ; 0x699f
    pop cx                           ; 0x69a2
    cmp ax, strict word 0xffff       ; 0x69a3
    jne short @..api_idx_004a.l6     ; 0x69a6
    mov ax, 0xc6                     ; 0x69a8
@..api_idx_004a.l3:
    push ax                          ; 0x69ab
    db 0xb8
@..api_idx_004a.l4:
    db 0x09, 0x01
@..api_idx_004a.l5:
    push ax                          ; 0x69af
    mov ax, 0x8e                     ; 0x69b0
    push ax                          ; 0x69b3
    mov ax, api_idx_0002             ; 0x69b4
    push ax                          ; 0x69b7
    call ds_dispatch_e8da            ; 0x69b8
    add sp, byte 8                   ; 0x69bb
    jmp short @..api_idx_004a.l8     ; 0x69be
@..api_idx_004a.l6:
    cmp word [bp - 0x0002], byte 4   ; 0x69c0
    jne short @..api_idx_004a.l7     ; 0x69c4
    mov word [data_8460], 0          ; 0x69c6
    mov word [data_830a], 7          ; 0x69cc
@..api_idx_004a.l7:
    mov word [bp - 0x0004], 0        ; 0x69d2
@..api_idx_004a.l8:
    jmp short @..api_idx_004a.l10    ; 0x69d7
    mov word [data_8460], 0          ; 0x69d9
    mov word [data_830a], 7          ; 0x69df
    mov word [bp - 0x0004], 0        ; 0x69e5
    jmp short @..api_idx_004a.l10    ; 0x69ea
    into                             ; 0x69ec
    mov cx, 0xb9d6                   ; 0x69ed
    loopne @..api_idx_004a.l3        ; 0x69f0
    loop @..api_idx_004a.l4          ; 0x69f2
    loop @..api_idx_004a.l5          ; 0x69f4
    db 0x20, 0xba
@..api_idx_004a.l9:
    db 0x3d, 0x06
    add byte [bp + di + 0x8], dh     ; 0x69fa
    xchg bx, ax                      ; 0x69fd
    shl bx, 1                        ; 0x69fe
    jmp [cs:bx - 0x45cd]             ; 0x6a00
@..api_idx_004a.l10:
    cmp word [bp - 0x0004], byte 0   ; 0x6a05
    je short @..api_idx_004a.l11     ; 0x6a09
    jmp near @..api_idx_004a.l2      ; 0x6a0b
@..api_idx_004a.l11:
    ret                              ; 0x6a0e
api_idx_004a_2:
    mov ax, 0xffb6                   ; 0x6a0f
    call ds_dispatch_f40b            ; 0x6a12
    mov word [data_82e8], 0          ; 0x6a15
    mov word [data_8af0], 0          ; 0x6a1b
    jmp short @..api_idx_004a_2.l2   ; 0x6a21
@..api_idx_004a_2.l1:
    mov ax, 1                        ; 0x6a23
    push ax                          ; 0x6a26
    push word [data_8af0]            ; 0x6a27
    call ds_dispatch_cb3a            ; 0x6a2b
    add sp, byte 4                   ; 0x6a2e
    inc word [data_8af0]             ; 0x6a31
@..api_idx_004a_2.l2:
    mov ax, word [data_8af0]         ; 0x6a35
    cmp ax, word [data_69c8]         ; 0x6a38
    jl short @..api_idx_004a_2.l1    ; 0x6a3c
    mov word [data_a494], 0xffff     ; 0x6a3e
    mov word [data_830a], 0xffff     ; 0x6a44
@..api_idx_004a_2.l3:
    cmp word [data_830a], byte 0     ; 0x6a4a
    jl short @..api_idx_004a_2.l4    ; 0x6a4f
    jmp near @..local.l325           ; 0x6a51
@..api_idx_004a_2.l4:
    mov word [bp - 0x0002], 0        ; 0x6a54
@..api_idx_004a_2.l5:
    mov ax, word [bp - 0x0002]       ; 0x6a59
    shl ax, 1                        ; 0x6a5c
    mov bx, ax                       ; 0x6a5e
    add bx, bp                       ; 0x6a60
    mov word [bx - 0x0022], 1        ; 0x6a62
    inc word [bp - 0x0002]           ; 0x6a67
    mov ax, word [bp - 0x0002]       ; 0x6a6a
    cmp ax, strict word 9            ; 0x6a6d
    jl short @..api_idx_004a_2.l5    ; 0x6a70
    mov word [bp - 0x0010], 0xffff   ; 0x6a72
    cmp word [data_69c8], byte 1     ; 0x6a77
    jge short @..api_idx_004a_2.l6   ; 0x6a7c
    mov word [bp - 0x001e], 0        ; 0x6a7e
    mov word [bp - 0x001c], 0        ; 0x6a83
    mov word [bp - 0x001a], 0        ; 0x6a88
@..api_idx_004a_2.l6:
    mov word [bp - 0x0020], 0        ; 0x6a8d
    mov word [bp - 0x0002], 0        ; 0x6a92
    jmp short @..api_idx_004a_2.l9   ; 0x6a97
@..api_idx_004a_2.l7:
    mov bx, word [bp - 0x0002]       ; 0x6a99
    cmp byte [bx - 0x6f8a], 1        ; 0x6a9c
    jne short @..api_idx_004a_2.l8   ; 0x6aa1
    mov word [bp - 0x0020], 1        ; 0x6aa3
@..api_idx_004a_2.l8:
    inc word [bp - 0x0002]           ; 0x6aa8
@..api_idx_004a_2.l9:
    mov ax, word [bp - 0x0002]       ; 0x6aab
    cmp ax, word [data_9070]         ; 0x6aae
    jl short @..api_idx_004a_2.l7    ; 0x6ab2
    cmp word [data_69c8], byte 5     ; 0x6ab4
    jle short @..api_idx_004a_2.l10  ; 0x6ab9
    mov word [bp - 0x0020], 0        ; 0x6abb
@..api_idx_004a_2.l10:
    cmp word [data_69c8], byte 0     ; 0x6ac0
    jle short @..api_idx_004a_2.l11  ; 0x6ac5
    mov word [bp - 0x0018], 0        ; 0x6ac7
    mov word [bp - 0x0014], 0        ; 0x6acc
@..api_idx_004a_2.l11:
    cmp word [data_a494], byte 0     ; 0x6ad1
    jne short @..api_idx_004a_2.l12  ; 0x6ad6
    mov ax, 0x15                     ; 0x6ad8
    push ax                          ; 0x6adb
    call ds_dispatch_b171            ; 0x6adc
    pop cx                           ; 0x6adf
@..api_idx_004a_2.l12:
    lea ax, word [bp - 0x0022]       ; 0x6ae0
    push ax                          ; 0x6ae3
    mov ax, 1                        ; 0x6ae4
    push ax                          ; 0x6ae7
    mov ax, 9                        ; 0x6ae8
    push ax                          ; 0x6aeb
    mov ax, 0xd                      ; 0x6aec
    push ax                          ; 0x6aef
    mov ax, 0x12                     ; 0x6af0
    push ax                          ; 0x6af3
    mov ax, 0x24                     ; 0x6af4
    push ax                          ; 0x6af7
    mov ax, 0x61                     ; 0x6af8
    push ax                          ; 0x6afb
    mov ax, 0x3e8                    ; 0x6afc
    push ax                          ; 0x6aff
    call math_loc_023a               ; 0x6b00
    add sp, byte 0x10                ; 0x6b03
    mov word [bp - 0x0004], ax       ; 0x6b06
    lea ax, word [bp - 0x004a]       ; 0x6b09
    push ax                          ; 0x6b0c
    mov ax, word [bp - 0x0004]       ; 0x6b0d
    add ax, 0x3e8                    ; 0x6b10
    push ax                          ; 0x6b13
    call ds_dispatch_b53b            ; 0x6b14
    add sp, byte 4                   ; 0x6b17
    mov ax, 0x1a                     ; 0x6b1a
    push ax                          ; 0x6b1d
    mov ax, 0xd                      ; 0x6b1e
    push ax                          ; 0x6b21
    mov ax, 0x12                     ; 0x6b22
    push ax                          ; 0x6b25
    mov ax, 0x24                     ; 0x6b26
    push ax                          ; 0x6b29
    mov ax, 0x61                     ; 0x6b2a
    push ax                          ; 0x6b2d
    push word [data_9052]            ; 0x6b2e
    lea ax, word [bp - 0x004a]       ; 0x6b32
    push ax                          ; 0x6b35
    call api_idx_0004                ; 0x6b36
    add sp, byte 0x0e                ; 0x6b39
    mov ax, word [bp - 0x0004]       ; 0x6b3c
    jmp near @..local.l323           ; 0x6b3f
    call math_loc_606d               ; 0x6b42
    jmp near @..local.l324           ; 0x6b45
    call ds_dispatch_ceb1            ; 0x6b48
    mov word [data_8af0], ax         ; 0x6b4b
    cmp ax, strict word 0xffff       ; 0x6b4e
    je short @..api_idx_004a_2.l13   ; 0x6b51
    mov word [data_830a], 0x11       ; 0x6b53
    mov word [data_905e], 4          ; 0x6b59
@..api_idx_004a_2.l13:
    jmp near @..local.l324           ; 0x6b5f
    call ds_dispatch_ceb1            ; 0x6b62
    mov word [data_8af0], ax         ; 0x6b65
    cmp ax, strict word 0xffff       ; 0x6b68
    je short @..api_idx_004a_2.l14   ; 0x6b6b
    mov ax, 1                        ; 0x6b6d
    push ax                          ; 0x6b70
    push word [data_8af0]            ; 0x6b71
    call api_idx_0006_2              ; 0x6b75
    add sp, byte 4                   ; 0x6b78
@..api_idx_004a_2.l14:
    jmp near @..local.l324           ; 0x6b7b
    call loc_62c6                    ; 0x6b7e
    mov word [data_830a], 0x10       ; 0x6b81
    jmp near @..local.l324           ; 0x6b87
    mov word [bp - 0x0002], 0        ; 0x6b8a
    jmp short @..api_idx_004a_2.l16  ; 0x6b8f
@..api_idx_004a_2.l15:
    mov ax, word [bp - 0x0002]       ; 0x6b91
    shl ax, 1                        ; 0x6b94
    mov bx, ax                       ; 0x6b96
    mov bx, word [bx - 0x750e]       ; 0x6b98
    mov byte [bx - 0x6f8a], 1        ; 0x6b9c
    inc word [bp - 0x0002]           ; 0x6ba1
@..api_idx_004a_2.l16:
    mov ax, word [bp - 0x0002]       ; 0x6ba4
    cmp ax, word [data_69c8]         ; 0x6ba7
    jl short @..api_idx_004a_2.l15   ; 0x6bab
    mov ax, 0                        ; 0x6bad
    push ax                          ; 0x6bb0
    call api_idx_0004_3              ; 0x6bb1
    pop cx                           ; 0x6bb4
    jmp short @..local.l324          ; 0x6bb5
    mov ax, 1                        ; 0x6bb7
    push ax                          ; 0x6bba
    call api_idx_0004_3              ; 0x6bbb
    pop cx                           ; 0x6bbe
    jmp short @..local.l324          ; 0x6bbf
    mov ax, 0                        ; 0x6bc1
    push ax                          ; 0x6bc4
    call loc_4d0e                    ; 0x6bc5
    pop cx                           ; 0x6bc8
    test ax, ax                      ; 0x6bc9
    je short @..api_idx_004a_2.l17   ; 0x6bcb
    mov ax, 0x912                    ; 0x6bcd
    push ax                          ; 0x6bd0
    call api_idx_0062                ; 0x6bd1
    pop cx                           ; 0x6bd4
    call loc_62c6                    ; 0x6bd5
    call api_idx_0002_4              ; 0x6bd8
    mov word [data_830a], 3          ; 0x6bdb
@..api_idx_004a_2.l17:
    jmp short @..local.l324          ; 0x6be1
    mov ax, data_0002                ; 0x6be3
    push ax                          ; 0x6be6
    call api_idx_0004_3              ; 0x6be7
    pop cx                           ; 0x6bea
    jmp short @..local.l324          ; 0x6beb
    call loc_62c6                    ; 0x6bed
    call api_idx_0002_4              ; 0x6bf0
    mov word [data_830a], 3          ; 0x6bf3
    jmp short @..local.l324          ; 0x6bf9
    lds di, word [bp + di - 0x4477]  ; 0x6bfb
    db 0x8f, 0xbb, 0xa9, 0xbb, 0xd1, 0xbb, 0xfe, 0xbb, 0x08, 0xbc, 0x2a, 0xbc, 0x34, 0xbc
@..local.l323:
    cmp ax, strict word 9            ; 0x6c0d
    jae short @..local.l324          ; 0x6c10
    xchg bx, ax                      ; 0x6c12
    shl bx, 1                        ; 0x6c13
    jmp [cs:bx - 0x43be]             ; 0x6c15
@..local.l324:
    jmp near @..api_idx_004a_2.l3    ; 0x6c1a
@..local.l325:
    ret                              ; 0x6c1d
loc_6c1e:
    mov ax, 0                        ; 0x6c1e
    call ds_dispatch_f40b            ; 0x6c21
    mov ax, 0                        ; 0x6c24
    push ax                          ; 0x6c27
    mov ax, 0xc6                     ; 0x6c28
    push ax                          ; 0x6c2b
    mov ax, 0x13f                    ; 0x6c2c
    push ax                          ; 0x6c2f
    mov ax, 0x92                     ; 0x6c30
    push ax                          ; 0x6c33
    mov ax, 0                        ; 0x6c34
    push ax                          ; 0x6c37
    call ds_dispatch_e901            ; 0x6c38
    add sp, byte 0x0a                ; 0x6c3b
    ret                              ; 0x6c3e
loc_6c3f:
    mov ax, 0                        ; 0x6c3f
    call ds_dispatch_f40b            ; 0x6c42
    mov ax, 0xc6                     ; 0x6c45
    push ax                          ; 0x6c48
    mov ax, 0x13e                    ; 0x6c49
    push ax                          ; 0x6c4c
    mov ax, 0x92                     ; 0x6c4d
    push ax                          ; 0x6c50
    mov ax, 0xc                      ; 0x6c51
    push ax                          ; 0x6c54
    call ds_dispatch_bb33            ; 0x6c55
    add sp, byte 8                   ; 0x6c58
    ret                              ; 0x6c5b
loc_6c5c:
    mov ax, 0                        ; 0x6c5c
    call ds_dispatch_f40b            ; 0x6c5f
    cmp word [data_a4a4], byte 0     ; 0x6c62
    jle short @..local.l326          ; 0x6c67
    call math_loc_73bc               ; 0x6c69
    test ax, ax                      ; 0x6c6c
    je short @..local.l326           ; 0x6c6e
    call api_idx_000a_3              ; 0x6c70
    mov ax, 0x91                     ; 0x6c73
    push ax                          ; 0x6c76
    mov ax, 0x13f                    ; 0x6c77
    push ax                          ; 0x6c7a
    mov ax, 0                        ; 0x6c7b
    push ax                          ; 0x6c7e
    push ax                          ; 0x6c7f
    call ds_dispatch_e8da            ; 0x6c80
    add sp, byte 8                   ; 0x6c83
@..local.l326:
    ret                              ; 0x6c86
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x6c87
    call ds_dispatch_f40b            ; 0x6c8a
    call ds_dispatch_ec17            ; 0x6c8d
    mov ax, word [bp + 0x4]          ; 0x6c90
    cwd                              ; 0x6c93
    les bx, word [data_0002]         ; 0x6c94
    mov cx, word [es:bx]             ; 0x6c98
    mov bx, word [es:bx + 0x2]       ; 0x6c9b
    add ax, cx                       ; 0x6c9f
    adc dx, bx                       ; 0x6ca1
    mov word [bp - 0x0002], dx       ; 0x6ca3
    mov word [bp - 0x0004], ax       ; 0x6ca6
@..api_idx_0004_4.l1:
    les bx, word [data_0002]         ; 0x6ca9
    mov ax, word [es:bx]             ; 0x6cad
    mov dx, word [es:bx + 0x2]       ; 0x6cb0
    cmp dx, word [bp - 0x0002]       ; 0x6cb4
    jg short @..api_idx_0004_4.l2    ; 0x6cb7
    jne short @..api_idx_0004_4.l3   ; 0x6cb9
    cmp ax, word [bp - 0x0004]       ; 0x6cbb
    jb short @..api_idx_0004_4.l3    ; 0x6cbe
@..api_idx_0004_4.l2:
    jmp short @..local.l328          ; 0x6cc0
@..api_idx_0004_4.l3:
    call ds_dispatch_baef            ; 0x6cc2
    test ax, ax                      ; 0x6cc5
    je short @..local.l327           ; 0x6cc7
    ret                              ; 0x6cc9
@..local.l327:
    call loc_6c5c                    ; 0x6cca
    jmp short @..api_idx_0004_4.l1   ; 0x6ccd
@..local.l328:
    ret                              ; 0x6ccf
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x6cd0
    call ds_dispatch_f40b            ; 0x6cd3
    call loc_6c3f                    ; 0x6cd6
    les bx, word [data_0002]         ; 0x6cd9
    mov ax, word [es:bx]             ; 0x6cdd
    mov dx, word [es:bx + 0x2]       ; 0x6ce0
    add ax, 0x10e                    ; 0x6ce4
    adc dx, byte 0                   ; 0x6ce7
    mov word [bp - 0x0002], dx       ; 0x6cea
    mov word [bp - 0x0004], ax       ; 0x6ced
@..api_idx_0004_5.l1:
    call ds_dispatch_baef            ; 0x6cf0
    test ax, ax                      ; 0x6cf3
    jne short @..api_idx_0004_5.l4   ; 0x6cf5
    les bx, word [data_0002]         ; 0x6cf7
    mov ax, word [es:bx]             ; 0x6cfb
    mov dx, word [es:bx + 0x2]       ; 0x6cfe
    cmp dx, word [bp - 0x0002]       ; 0x6d02
    jg short @..api_idx_0004_5.l2    ; 0x6d05
    jne short @..api_idx_0004_5.l3   ; 0x6d07
    cmp ax, word [bp - 0x0004]       ; 0x6d09
    jb short @..api_idx_0004_5.l3    ; 0x6d0c
@..api_idx_0004_5.l2:
    jmp short @..api_idx_0004_5.l4   ; 0x6d0e
@..api_idx_0004_5.l3:
    call loc_6c5c                    ; 0x6d10
    jmp short @..api_idx_0004_5.l1   ; 0x6d13
@..api_idx_0004_5.l4:
    call loc_6c1e                    ; 0x6d15
    mov word [data_a4a6], 0          ; 0x6d18
    ret                              ; 0x6d1e
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x6d1f
    call ds_dispatch_f40b            ; 0x6d22
    cmp word [data_a4a6], byte 3     ; 0x6d25
    jle short @..api_idx_0004_6.l1   ; 0x6d2a
    call api_idx_0004_5              ; 0x6d2c
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x4]          ; 0x6d2f
    cmp byte [bx], 0                 ; 0x6d32
    jne short @..local.l329          ; 0x6d35
    inc word [data_a4a6]             ; 0x6d37
    ret                              ; 0x6d3b
@..local.l329:
    mov ax, data_0002                ; 0x6d3c
    push ax                          ; 0x6d3f
    push bx                          ; 0x6d40
    call ds_dispatch_e883            ; 0x6d41
    add sp, byte 4                   ; 0x6d44
    inc ax                           ; 0x6d47
    mov cx, data_0002                ; 0x6d48
    cwd                              ; 0x6d4b
    idiv cx                          ; 0x6d4c
    mov cx, ax                       ; 0x6d4e
    mov ax, 0xa0                     ; 0x6d50
    sub ax, cx                       ; 0x6d53
    mov word [bp - 0x0002], ax       ; 0x6d55
    push word [bp + 0x4]             ; 0x6d58
    call ds_dispatch_fa90            ; 0x6d5b
    pop cx                           ; 0x6d5e
    dec ax                           ; 0x6d5f
    mov word [bp - 0x0004], ax       ; 0x6d60
    mov bx, word [bp + 0x4]          ; 0x6d63
    mov si, ax                       ; 0x6d66
    mov al, byte [bx + si]           ; 0x6d68
    sub ah, ah                       ; 0x6d6a
    jmp short @..local.l332          ; 0x6d6c
@..local.l330:
    mov bx, word [bp + 0x4]          ; 0x6d6e
    mov si, word [bp - 0x0004]       ; 0x6d71
    mov byte [bx + si], 0            ; 0x6d74
    mov word [bp - 0x0002], 0xc      ; 0x6d77
    jmp short @..local.l333          ; 0x6d7c
@..local.l331:
    mov bx, word [bp + 0x4]          ; 0x6d7e
    mov si, word [bp - 0x0004]       ; 0x6d81
    mov byte [bx + si], 0            ; 0x6d84
    mov ax, word [data_a4a8]         ; 0x6d87
    mov word [bp - 0x0002], ax       ; 0x6d8a
    jmp short @..local.l333          ; 0x6d8d
@..local.l332:
    cmp ax, strict word 0x24         ; 0x6d8f
    je short @..local.l330           ; 0x6d92
    cmp ax, strict word 0x5e         ; 0x6d94
    je short @..local.l331           ; 0x6d97
@..local.l333:
    mov ax, 0xc                      ; 0x6d99
    imul word [data_a4a6]            ; 0x6d9c
    add ax, 0x92                     ; 0x6da0
    push ax                          ; 0x6da3
    push word [bp - 0x0002]          ; 0x6da4
    call ds_dispatch_e809            ; 0x6da7
    add sp, byte 4                   ; 0x6daa
    mov ax, 0                        ; 0x6dad
    push ax                          ; 0x6db0
    mov ax, 0x55                     ; 0x6db1
    push ax                          ; 0x6db4
    call ds_dispatch_e823            ; 0x6db5
    add sp, byte 4                   ; 0x6db8
    mov ax, data_0002                ; 0x6dbb
    push ax                          ; 0x6dbe
    push word [bp + 0x4]             ; 0x6dbf
    call ds_dispatch_e84e            ; 0x6dc2
    add sp, byte 4                   ; 0x6dc5
    mov bx, word [bp + 0x4]          ; 0x6dc8
    mov byte [bx], 0                 ; 0x6dcb
    mov ax, word [bp - 0x0002]       ; 0x6dce
    mov word [data_a4a8], ax         ; 0x6dd1
    inc word [data_a4a6]             ; 0x6dd4
    ret                              ; 0x6dd8
math_loc_6dd9:
    mov ax, 0xfefa                   ; 0x6dd9
    call ds_dispatch_f40b            ; 0x6ddc
@..math_loc_6dd9.l1:
    mov bx, word [bp + 0x4]          ; 0x6ddf
    mov al, byte [bx]                ; 0x6de2
    sub ah, ah                       ; 0x6de4
    push ax                          ; 0x6de6
    mov ax, 0x9114                   ; 0x6de7
    push ax                          ; 0x6dea
    call ds_dispatch_ee4a            ; 0x6deb
    add sp, byte 4                   ; 0x6dee
    mov word [bp - 0x0004], ax       ; 0x6df1
    cmp ax, strict word 0            ; 0x6df4
    jge short @..math_loc_6dd9.l2    ; 0x6df7
    jmp near @..math_loc_6dd9.l5     ; 0x6df9
@..math_loc_6dd9.l2:
    jmp near @..math_loc_6dd9.l3     ; 0x6dfc

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
    cmp ax, strict word 7            ; 0x6e85
    jae short @..math_loc_6dd9.l4    ; 0x6e88
    xchg bx, ax                      ; 0x6e8a
    shl bx, 1                        ; 0x6e8b
    jmp [cs:bx - 0x4142]             ; 0x6e8d
@..math_loc_6dd9.l4:
    jmp near @..math_loc_6dd9.l1     ; 0x6e92
@..math_loc_6dd9.l5:
    cmp byte [data_a4aa], 0          ; 0x6e95
    je short @..math_loc_6dd9.l6     ; 0x6e9a
    mov ax, data_a4aa                ; 0x6e9c
    push ax                          ; 0x6e9f
    lea ax, word [bp - 0x0105]       ; 0x6ea0
    push ax                          ; 0x6ea4
    call ds_dispatch_f364            ; 0x6ea5
    add sp, byte 4                   ; 0x6ea8
    mov ax, 0x911c                   ; 0x6eab
    push ax                          ; 0x6eae
    lea ax, word [bp - 0x0105]       ; 0x6eaf
    push ax                          ; 0x6eb3
    call ds_dispatch_f32d            ; 0x6eb4
    add sp, byte 4                   ; 0x6eb7
    push word [bp + 0x4]             ; 0x6eba
    lea ax, word [bp - 0x0105]       ; 0x6ebd
    push ax                          ; 0x6ec1
    call ds_dispatch_f32d            ; 0x6ec2
    add sp, byte 4                   ; 0x6ec5
    jmp short @..math_loc_6dd9.l7    ; 0x6ec8
@..math_loc_6dd9.l6:
    push word [bp + 0x4]             ; 0x6eca
    lea ax, word [bp - 0x0105]       ; 0x6ecd
    push ax                          ; 0x6ed1
    call ds_dispatch_f364            ; 0x6ed2
    add sp, byte 4                   ; 0x6ed5
@..math_loc_6dd9.l7:
    mov ax, data_0002                ; 0x6ed8
    push ax                          ; 0x6edb
    lea ax, word [bp - 0x0105]       ; 0x6edc
    push ax                          ; 0x6ee0
    call ds_dispatch_e883            ; 0x6ee1
    add sp, byte 4                   ; 0x6ee4
    mov word [bp - 0x0002], ax       ; 0x6ee7
    cmp ax, 0x127                    ; 0x6eea
    jle short @..math_loc_6dd9.l8    ; 0x6eed
    mov ax, data_a4aa                ; 0x6eef
    push ax                          ; 0x6ef2
    call api_idx_0004_6              ; 0x6ef3
    pop cx                           ; 0x6ef6
    push word [bp + 0x4]             ; 0x6ef7
    mov ax, data_a4aa                ; 0x6efa
    push ax                          ; 0x6efd
    call ds_dispatch_f364            ; 0x6efe
    add sp, byte 4                   ; 0x6f01
    jmp short @..math_loc_6dd9.l9    ; 0x6f04
@..math_loc_6dd9.l8:
    lea ax, word [bp - 0x0105]       ; 0x6f06
    push ax                          ; 0x6f0a
    mov ax, data_a4aa                ; 0x6f0b
    push ax                          ; 0x6f0e
    call ds_dispatch_f364            ; 0x6f0f
    add sp, byte 4                   ; 0x6f12
@..math_loc_6dd9.l9:
    ret                              ; 0x6f15
api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x6f16
    call ds_dispatch_f40b            ; 0x6f19
@..api_idx_0004_7.l1:
    mov ax, 0x20                     ; 0x6f1c
    push ax                          ; 0x6f1f
    push word [bp + 0x4]             ; 0x6f20
    call ds_dispatch_ee4a            ; 0x6f23
    add sp, byte 4                   ; 0x6f26
    mov word [bp - 0x0002], ax       ; 0x6f29
    cmp ax, strict word 0xffff       ; 0x6f2c
    je short @..api_idx_0004_7.l4    ; 0x6f2f
    mov bx, word [bp + 0x4]          ; 0x6f31
    mov si, ax                       ; 0x6f34
    mov byte [bx + si], 0            ; 0x6f36
@..api_idx_0004_7.l2:
    mov ax, 0x5f                     ; 0x6f39
    push ax                          ; 0x6f3c
    push word [bp + 0x4]             ; 0x6f3d
    call ds_dispatch_ee4a            ; 0x6f40
    add sp, byte 4                   ; 0x6f43
    mov word [bp - 0x0004], ax       ; 0x6f46
    cmp ax, strict word 0xffff       ; 0x6f49
    je short @..api_idx_0004_7.l3    ; 0x6f4c
    mov bx, word [bp + 0x4]          ; 0x6f4e
    mov si, ax                       ; 0x6f51
    mov byte [bx + si], 0x20         ; 0x6f53
    jmp short @..api_idx_0004_7.l2   ; 0x6f56
@..api_idx_0004_7.l3:
    push word [bp + 0x4]             ; 0x6f58
    call math_loc_6dd9               ; 0x6f5b
    pop cx                           ; 0x6f5e
    mov ax, word [bp - 0x0002]       ; 0x6f5f
    add word [bp + 0x4], ax          ; 0x6f62
    add word [bp + 0x4], byte 1      ; 0x6f65
    jmp short @..api_idx_0004_7.l1   ; 0x6f69
@..api_idx_0004_7.l4:
    mov bx, word [bp + 0x4]          ; 0x6f6b
    cmp byte [bx], 0                 ; 0x6f6e
    je short @..api_idx_0004_7.l5    ; 0x6f71
    push bx                          ; 0x6f73
    call math_loc_6dd9               ; 0x6f74
    pop cx                           ; 0x6f77
@..api_idx_0004_7.l5:
    ret                              ; 0x6f78
loc_6f79:
    mov ax, 0xfefa                   ; 0x6f79
    call ds_dispatch_f40b            ; 0x6f7c
    call loc_6c1e                    ; 0x6f7f
    mov word [data_a5ac], 0          ; 0x6f82
    mov word [data_a4a8], 0xc        ; 0x6f88
    mov word [data_a4a6], 0          ; 0x6f8e
    mov byte [data_a4aa], 0          ; 0x6f94
@..local.l334:
    lea ax, word [bp - 0x0105]       ; 0x6f99
    push ax                          ; 0x6f9d
    push word [bp + 0x4]             ; 0x6f9e
    call ds_dispatch_b53b            ; 0x6fa1
    add sp, byte 4                   ; 0x6fa4
    cmp word [data_5216], byte 0     ; 0x6fa7
    jne short @..local.l335          ; 0x6fac
    lea ax, word [bp - 0x0105]       ; 0x6fae
    push ax                          ; 0x6fb2
    call api_idx_0004_7              ; 0x6fb3
    pop cx                           ; 0x6fb6
    inc word [bp + 0x4]              ; 0x6fb7
@..local.l335:
    cmp word [data_5216], byte 0     ; 0x6fba
    je short @..local.l334           ; 0x6fbf
    cmp byte [data_a4aa], 0          ; 0x6fc1
    je short @..local.l336           ; 0x6fc6
    mov ax, data_a4aa                ; 0x6fc8
    push ax                          ; 0x6fcb
    call api_idx_0004_6              ; 0x6fcc
    pop cx                           ; 0x6fcf
@..local.l336:
    cmp word [bp + 0x6], byte 0      ; 0x6fd0
    je short @..local.l337           ; 0x6fd4
    call api_idx_0004_5              ; 0x6fd6
@..local.l337:
    ret                              ; 0x6fd9
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x6fda
    call ds_dispatch_f40b            ; 0x6fdd
    mov ax, 0                        ; 0x6fe0
    push ax                          ; 0x6fe3
    call ds_dispatch_ef14            ; 0x6fe4
    pop cx                           ; 0x6fe7
    mov ax, 0                        ; 0x6fe8
    push ax                          ; 0x6feb
    mov ax, 1                        ; 0x6fec
    push ax                          ; 0x6fef
    push word [bp + 0x4]             ; 0x6ff0
    call ds_dispatch_d161            ; 0x6ff3
    add sp, byte 4                   ; 0x6ff6
    push ax                          ; 0x6ff9
    call ds_dispatch_f909            ; 0x6ffa
    add sp, byte 4                   ; 0x6ffd
    mov word [bp - 0x0002], ax       ; 0x7000
    cmp ax, strict word 0xffff       ; 0x7003
    jne short @..api_idx_0002_5.l1   ; 0x7006
    mov ax, math_loc_000e            ; 0x7008
    push ax                          ; 0x700b
    call ds_dispatch_b171            ; 0x700c
    pop cx                           ; 0x700f
@..api_idx_0002_5.l1:
    mov ax, 0                        ; 0x7010
    push ax                          ; 0x7013
    push word [bp - 0x0002]          ; 0x7014
    call ds_dispatch_efde            ; 0x7017
    add sp, byte 4                   ; 0x701a
    push word [bp - 0x0002]          ; 0x701d
    call ds_dispatch_fda5            ; 0x7020
    pop cx                           ; 0x7023
    cmp word [bp + 0x6], byte 1      ; 0x7024
    jne short @..api_idx_0002_5.l2   ; 0x7028
    mov ax, 0xc7                     ; 0x702a
    push ax                          ; 0x702d
    mov ax, 0x13f                    ; 0x702e
    push ax                          ; 0x7031
    mov ax, 0                        ; 0x7032
    push ax                          ; 0x7035
    push ax                          ; 0x7036
    call ds_dispatch_e8da            ; 0x7037
    add sp, byte 8                   ; 0x703a
    jmp short @..api_idx_0002_5.l3   ; 0x703d
@..api_idx_0002_5.l2:
    cmp word [bp + 0x6], byte 2      ; 0x703f
    jne short @..api_idx_0002_5.l3   ; 0x7043
    mov ax, 0                        ; 0x7045
    push ax                          ; 0x7048
    push ax                          ; 0x7049
    push ax                          ; 0x704a
    call ds_dispatch_f0d7            ; 0x704b
    add sp, byte 6                   ; 0x704e
    mov ax, 0xc7                     ; 0x7051
    push ax                          ; 0x7054
    mov ax, 0x13f                    ; 0x7055
    push ax                          ; 0x7058
    mov ax, 0                        ; 0x7059
    push ax                          ; 0x705c
    push ax                          ; 0x705d
    call ds_dispatch_e8da            ; 0x705e
    add sp, byte 8                   ; 0x7061
    mov ax, 0                        ; 0x7064
    push ax                          ; 0x7067
    call ds_dispatch_f0bd            ; 0x7068
    pop cx                           ; 0x706b
@..api_idx_0002_5.l3:
    ret                              ; 0x706c
api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x706d
    call ds_dispatch_f40b            ; 0x7070
    mov ax, 0                        ; 0x7073
    push ax                          ; 0x7076
    push ax                          ; 0x7077
    push ax                          ; 0x7078
    push ax                          ; 0x7079
    call ds_dispatch_f0ca            ; 0x707a
    add sp, byte 8                   ; 0x707d
    mov ax, 0                        ; 0x7080
    push ax                          ; 0x7083
    mov ax, 0xc7                     ; 0x7084
    push ax                          ; 0x7087
    mov ax, 0x13f                    ; 0x7088
    push ax                          ; 0x708b
    mov ax, 0                        ; 0x708c
    push ax                          ; 0x708f
    push ax                          ; 0x7090
    call ds_dispatch_e901            ; 0x7091
    add sp, byte 0x0a                ; 0x7094
    mov ax, 0xc7                     ; 0x7097
    push ax                          ; 0x709a
    mov ax, 0x13f                    ; 0x709b
    push ax                          ; 0x709e
    mov ax, 0                        ; 0x709f
    push ax                          ; 0x70a2
    push ax                          ; 0x70a3
    call ds_dispatch_e8da            ; 0x70a4
    add sp, byte 8                   ; 0x70a7
    cmp word [data_0e32], byte 1     ; 0x70aa
    jne short @..api_idx_0002_6.l1   ; 0x70af
    db 0xe8, 0x85, 0x7f ; call 0xf039
@..api_idx_0002_6.l1:
    mov word [data_0e32], 0          ; 0x70b4
    call ds_dispatch_d9a6            ; 0x70ba
    mov word [data_8450], ax         ; 0x70bd
    test ax, ax                      ; 0x70c0
    je short @..api_idx_0002_6.l2    ; 0x70c2
    mov ax, 0                        ; 0x70c4
    push ax                          ; 0x70c7
    mov ax, 4                        ; 0x70c8
    push ax                          ; 0x70cb
    call ds_dispatch_d7e7            ; 0x70cc
    add sp, byte 4                   ; 0x70cf
    mov ax, word [data_0114]         ; 0x70d2
    mov word [data_844e], ax         ; 0x70d5
    mov ax, 1                        ; 0x70d8
    push ax                          ; 0x70db
    push word [data_844e]            ; 0x70dc
    mov ax, 0                        ; 0x70e0
    push ax                          ; 0x70e3
    call ds_dispatch_d964            ; 0x70e4
    add sp, byte 6                   ; 0x70e7
    mov word [data_844c], ax         ; 0x70ea
@..api_idx_0002_6.l2:
    cmp word [bp + 0x4], byte 4      ; 0x70ed
    je short @..api_idx_0002_6.l3    ; 0x70f1
    mov ax, data_0002                ; 0x70f3
    push ax                          ; 0x70f6
    mov ax, 0x911e                   ; 0x70f7
    push ax                          ; 0x70fa
    call api_idx_0002_5              ; 0x70fb
    add sp, byte 4                   ; 0x70fe
    jmp short @..api_idx_0002_6.l4   ; 0x7101
@..api_idx_0002_6.l3:
    mov ax, 0                        ; 0x7103
    push ax                          ; 0x7106
    push ax                          ; 0x7107
    push ax                          ; 0x7108
    call ds_dispatch_f0d7            ; 0x7109
    add sp, byte 6                   ; 0x710c
    mov ax, 0xc7                     ; 0x710f
    push ax                          ; 0x7112
    mov ax, 0x13f                    ; 0x7113
    push ax                          ; 0x7116
    mov ax, 0                        ; 0x7117
    push ax                          ; 0x711a
    push ax                          ; 0x711b
    call ds_dispatch_e8da            ; 0x711c
    add sp, byte 8                   ; 0x711f
    mov ax, 0                        ; 0x7122
    push ax                          ; 0x7125
    call ds_dispatch_f0bd            ; 0x7126
    pop cx                           ; 0x7129
@..api_idx_0002_6.l4:
    mov word [data_a4a4], 0          ; 0x712a
    mov ax, word [bp + 0x4]          ; 0x7130
    jmp short @..api_idx_0002_6.l6   ; 0x7133
    mov ax, 1                        ; 0x7135
    push ax                          ; 0x7138
    mov ax, 0x6e96                   ; 0x7139
    push ax                          ; 0x713c
    call loc_6f79                    ; 0x713d
    add sp, byte 4                   ; 0x7140
    jmp short @..api_idx_0002_6.l7   ; 0x7143
    mov ax, 1                        ; 0x7145
    push ax                          ; 0x7148
    db 0xb8
@..api_idx_0002_6.l5:
    db 0xc2, 0x6f
    push ax                          ; 0x714c
    call loc_6f79                    ; 0x714d
    add sp, byte 4                   ; 0x7150
    jmp short @..api_idx_0002_6.l7   ; 0x7153
    mov ax, 1                        ; 0x7155
    push ax                          ; 0x7158
    mov ax, 0x6ffe                   ; 0x7159
    push ax                          ; 0x715c
    call loc_6f79                    ; 0x715d
    add sp, byte 4                   ; 0x7160
    jmp short @..api_idx_0002_6.l7   ; 0x7163
    mov ax, 1                        ; 0x7165
    push ax                          ; 0x7168
    mov ax, 0x6e46                   ; 0x7169
    push ax                          ; 0x716c
    call loc_6f79                    ; 0x716d
    add sp, byte 4                   ; 0x7170
    jmp short @..api_idx_0002_6.l7   ; 0x7173
    mov ax, 1                        ; 0x7175
    push ax                          ; 0x7178
    mov ax, 0x6f54                   ; 0x7179
    push ax                          ; 0x717c
    call loc_6f79                    ; 0x717d
    add sp, byte 4                   ; 0x7180
    jmp short @..api_idx_0002_6.l7   ; 0x7183
    in ax, 0xc1                      ; 0x7185
    jl short @..api_idx_0002_6.l5    ; 0x7187
    mov cx, es                       ; 0x7189
    pushf                            ; 0x718b
    shr word [si - 0x433f], 0xc1     ; 0x718c
@..api_idx_0002_6.l6:
    cmp ax, strict word 6            ; 0x7191
    jae short @..api_idx_0002_6.l7   ; 0x7194
    xchg bx, ax                      ; 0x7196
    shl bx, 1                        ; 0x7197
    jmp [cs:bx - 0x3e34]             ; 0x7199
@..api_idx_0002_6.l7:
    mov ax, 0                        ; 0x719e
    push ax                          ; 0x71a1
    push ax                          ; 0x71a2
    push ax                          ; 0x71a3
    push ax                          ; 0x71a4
    call ds_dispatch_f0ca            ; 0x71a5
    add sp, byte 8                   ; 0x71a8
    mov ax, 0                        ; 0x71ab
    push ax                          ; 0x71ae
    mov ax, 0xc7                     ; 0x71af
    push ax                          ; 0x71b2
    mov ax, 0x13f                    ; 0x71b3
    push ax                          ; 0x71b6
    mov ax, 0                        ; 0x71b7
    push ax                          ; 0x71ba
    push ax                          ; 0x71bb
    call ds_dispatch_e901            ; 0x71bc
    add sp, byte 0x0a                ; 0x71bf
    mov ax, 0xc7                     ; 0x71c2
    push ax                          ; 0x71c5
    mov ax, 0x13f                    ; 0x71c6
    push ax                          ; 0x71c9
    mov ax, 0                        ; 0x71ca
    push ax                          ; 0x71cd
    push ax                          ; 0x71ce
    call ds_dispatch_e8da            ; 0x71cf
    add sp, byte 8                   ; 0x71d2
    cmp word [data_8450], byte 0     ; 0x71d5
    je short @..api_idx_0002_6.l8    ; 0x71da
    push word [data_844c]            ; 0x71dc
    push word [data_844e]            ; 0x71e0
    call ds_dispatch_d91b            ; 0x71e4
    add sp, byte 4                   ; 0x71e7
    mov ax, 0                        ; 0x71ea
    push ax                          ; 0x71ed
    call ds_dispatch_d907            ; 0x71ee
    pop cx                           ; 0x71f1
@..api_idx_0002_6.l8:
    test word [data_9056], 0x1000    ; 0x71f2
    je short @..api_idx_0002_6.l10   ; 0x71f8
    cmp byte [data_5989], 1          ; 0x71fa
    jne short @..api_idx_0002_6.l10  ; 0x71ff
    cmp word [data_0e32], byte 0     ; 0x7201
    jne short @..api_idx_0002_6.l9   ; 0x7206
    call ds_dispatch_f02c            ; 0x7208
@..api_idx_0002_6.l9:
    mov word [data_0e32], 1          ; 0x720b
@..api_idx_0002_6.l10:
    mov ax, 0                        ; 0x7211
    push ax                          ; 0x7214
    push ax                          ; 0x7215
    push ax                          ; 0x7216
    call ds_dispatch_f0d7            ; 0x7217
    add sp, byte 6                   ; 0x721a
    mov ax, 0xc7                     ; 0x721d
    push ax                          ; 0x7220
    mov ax, 0x13f                    ; 0x7221
    push ax                          ; 0x7224
    mov ax, 0                        ; 0x7225
    push ax                          ; 0x7228
    push ax                          ; 0x7229
    call ds_dispatch_e8da            ; 0x722a
    add sp, byte 8                   ; 0x722d
    mov ax, 0                        ; 0x7230
    push ax                          ; 0x7233
    call ds_dispatch_f0bd            ; 0x7234
    pop cx                           ; 0x7237
    mov word [bp - 0x0002], 0        ; 0x7238
    jmp short @..api_idx_0002_6.l12  ; 0x723d
@..api_idx_0002_6.l11:
    mov ax, 1                        ; 0x723f
    push ax                          ; 0x7242
    mov ax, word [bp + 0x4]          ; 0x7243
    inc ax                           ; 0x7246
    inc ax                           ; 0x7247
    inc ax                           ; 0x7248
    push ax                          ; 0x7249
    mov ax, 0x248                    ; 0x724a
    imul word [bp - 0x0002]          ; 0x724d
    add ax, 0x5e26                   ; 0x7250
    push ax                          ; 0x7253
    call ds_dispatch_ec41            ; 0x7254
    add sp, byte 6                   ; 0x7257
    inc word [bp - 0x0002]           ; 0x725a
@..api_idx_0002_6.l12:
    mov ax, word [bp - 0x0002]       ; 0x725d
    cmp ax, word [data_69c8]         ; 0x7260
    jl short @..api_idx_0002_6.l11   ; 0x7264
    mov ax, 1                        ; 0x7266
    push ax                          ; 0x7269
    call api_idx_004e                ; 0x726a
    pop cx                           ; 0x726d
    cmp ax, strict word 0xffff       ; 0x726e
    jne short @..local.l338          ; 0x7271
    mov ax, 0xc6                     ; 0x7273
    push ax                          ; 0x7276
    mov ax, 0x109                    ; 0x7277
    push ax                          ; 0x727a
    mov ax, 0x8e                     ; 0x727b
    push ax                          ; 0x727e
    mov ax, api_idx_0002             ; 0x727f
    push ax                          ; 0x7282
    call ds_dispatch_e8da            ; 0x7283
    add sp, byte 8                   ; 0x7286
@..local.l338:
    mov ax, 0                        ; 0x7289
    push ax                          ; 0x728c
    mov ax, 0xc7                     ; 0x728d
    push ax                          ; 0x7290
    mov ax, 0x13f                    ; 0x7291
    push ax                          ; 0x7294
    mov ax, 0                        ; 0x7295
    push ax                          ; 0x7298
    push ax                          ; 0x7299
    call ds_dispatch_e901            ; 0x729a
    add sp, byte 0x0a                ; 0x729d
    mov ax, 0xc7                     ; 0x72a0
    push ax                          ; 0x72a3
    mov ax, 0x13f                    ; 0x72a4
    push ax                          ; 0x72a7
    mov ax, 0                        ; 0x72a8
    push ax                          ; 0x72ab
    push ax                          ; 0x72ac
    call ds_dispatch_e8da            ; 0x72ad
    add sp, byte 8                   ; 0x72b0
    mov ax, data_0002                ; 0x72b3
    push ax                          ; 0x72b6
    mov ax, 0x912b                   ; 0x72b7
    push ax                          ; 0x72ba
    call api_idx_0002_5              ; 0x72bb
    add sp, byte 4                   ; 0x72be
    ret                              ; 0x72c1
math_loc_72c2:
    mov ax, 0                        ; 0x72c2
    call ds_dispatch_f40b            ; 0x72c5
    push word [bp + 0x4]             ; 0x72c8
    call 0xefb7                      ; 0x72cb
    pop cx                           ; 0x72ce
    ret                              ; 0x72cf
api_idx_0016_2:
    mov ax, 0xffea                   ; 0x72d0
    call ds_dispatch_f40b            ; 0x72d3
    mov ax, 0                        ; 0x72d6
    push ax                          ; 0x72d9
    call ds_dispatch_ef14            ; 0x72da
    pop cx                           ; 0x72dd
    mov ax, 0x9138                   ; 0x72de
    push ax                          ; 0x72e1
    lea ax, word [bp - 0x0016]       ; 0x72e2
    push ax                          ; 0x72e5
    call ds_dispatch_f364            ; 0x72e6
    add sp, byte 4                   ; 0x72e9
    mov ax, word [bp + 0x4]          ; 0x72ec
    mov cx, 0xa                      ; 0x72ef
    cwd                              ; 0x72f2
    idiv cx                          ; 0x72f3
    add ax, strict word 0x30         ; 0x72f5
    mov byte [bp - 0x0011], al       ; 0x72f8
    add dx, byte 0x30                ; 0x72fb
    mov ax, dx                       ; 0x72fe
    mov byte [bp - 0x0010], al       ; 0x7300
    mov ax, 0                        ; 0x7303
    push ax                          ; 0x7306
    mov ax, 1                        ; 0x7307
    push ax                          ; 0x730a
    lea ax, word [bp - 0x0016]       ; 0x730b
    push ax                          ; 0x730e
    call ds_dispatch_d161            ; 0x730f
    add sp, byte 4                   ; 0x7312
    push ax                          ; 0x7315
    call ds_dispatch_f909            ; 0x7316
    add sp, byte 4                   ; 0x7319
    mov word [bp - 0x0002], ax       ; 0x731c
    cmp ax, strict word 0xffff       ; 0x731f
    jne short @..api_idx_0016_2.l1   ; 0x7322
    mov ax, 0x12                     ; 0x7324
    push ax                          ; 0x7327
    call ds_dispatch_b171            ; 0x7328
    pop cx                           ; 0x732b
@..api_idx_0016_2.l1:
    push word [bp + 0x6]             ; 0x732c
    push word [bp - 0x0002]          ; 0x732f
    call 0xefaa                      ; 0x7332
    add sp, byte 4                   ; 0x7335
    push word [bp - 0x0002]          ; 0x7338
    call ds_dispatch_fda5            ; 0x733b
    pop cx                           ; 0x733e
    ret                              ; 0x733f
api_idx_000a:
    mov ax, 0xfff6                   ; 0x7340
    call ds_dispatch_f40b            ; 0x7343
    mov al, byte [bp + 0x6]          ; 0x7346
    mov byte [bp - 0x000a], al       ; 0x7349
    mov byte [bp - 0x0009], 0        ; 0x734c
    mov ax, 0                        ; 0x7350
    push ax                          ; 0x7353
    push ax                          ; 0x7354
    lea ax, word [bp - 0x000a]       ; 0x7355
    push ax                          ; 0x7358
    mov ax, 0                        ; 0x7359
    push ax                          ; 0x735c
    mov ax, 0x91                     ; 0x735d
    push ax                          ; 0x7360
    mov ax, 0                        ; 0x7361
    push ax                          ; 0x7364
    mov ax, 0x140                    ; 0x7365
    push ax                          ; 0x7368
    mov ax, 0                        ; 0x7369
    push ax                          ; 0x736c
    push word [bp + 0xa]             ; 0x736d
    push word [bp + 0x8]             ; 0x7370
    push word [bp + 0x4]             ; 0x7373
    call ds_dispatch_efd1            ; 0x7376
    add sp, byte 0x16                ; 0x7379
    ret                              ; 0x737c
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x737d
    call ds_dispatch_f40b            ; 0x7380
    mov al, byte [bp + 0x6]          ; 0x7383
    mov byte [bp - 0x000a], al       ; 0x7386
    mov byte [bp - 0x0009], 0        ; 0x7389
    push word [bp + 0xc]             ; 0x738d
    mov ax, 0                        ; 0x7390
    push ax                          ; 0x7393
    lea ax, word [bp - 0x000a]       ; 0x7394
    push ax                          ; 0x7397
    mov ax, 0                        ; 0x7398
    push ax                          ; 0x739b
    mov ax, 0x91                     ; 0x739c
    push ax                          ; 0x739f
    mov ax, 0                        ; 0x73a0
    push ax                          ; 0x73a3
    mov ax, 0x140                    ; 0x73a4
    push ax                          ; 0x73a7
    mov ax, 0                        ; 0x73a8
    push ax                          ; 0x73ab
    push word [bp + 0xa]             ; 0x73ac
    push word [bp + 0x8]             ; 0x73af
    push word [bp + 0x4]             ; 0x73b2
    call ds_dispatch_efd1            ; 0x73b5
    add sp, byte 0x16                ; 0x73b8
    ret                              ; 0x73bb
math_loc_73bc:
    mov ax, 0                        ; 0x73bc
    call ds_dispatch_f40b            ; 0x73bf
    les bx, word [data_0002]         ; 0x73c2
    mov ax, word [es:bx]             ; 0x73c6
    mov dx, word [es:bx + 0x2]       ; 0x73c9
    sub ax, word [data_908a]         ; 0x73cd
    sbb dx, word [data_908c]         ; 0x73d1
    push ax                          ; 0x73d5
    push dx                          ; 0x73d6
    mov ax, word [data_a5ae]         ; 0x73d7
    cwd                              ; 0x73da
    mov cx, ax                       ; 0x73db
    mov bx, dx                       ; 0x73dd
    pop dx                           ; 0x73df
    pop ax                           ; 0x73e0
    cmp dx, bx                       ; 0x73e1
    jl short @..math_loc_73bc.l1     ; 0x73e3
    jne short @..math_loc_73bc.l2    ; 0x73e5
    cmp ax, cx                       ; 0x73e7
    jae short @..math_loc_73bc.l2    ; 0x73e9
@..math_loc_73bc.l1:
    jmp short @..local.l339          ; 0x73eb
@..math_loc_73bc.l2:
    mov ax, word [data_a5b0]         ; 0x73ed
    inc ax                           ; 0x73f0
    mov cx, 0xc                      ; 0x73f1
    cwd                              ; 0x73f4
    idiv cx                          ; 0x73f5
    mov word [data_a5b0], dx         ; 0x73f7
    les bx, word [data_0002]         ; 0x73fb
    mov ax, word [es:bx]             ; 0x73ff
    mov dx, word [es:bx + 0x2]       ; 0x7402
    mov word [data_908c], dx         ; 0x7406
    mov word [data_908a], ax         ; 0x740a
    mov ax, 1                        ; 0x740d
    ret                              ; 0x7410
@..local.l339:
    mov ax, 0                        ; 0x7411
    ret                              ; 0x7414
api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x7415
    call ds_dispatch_f40b            ; 0x7418
    mov ax, word [data_a4a4]         ; 0x741b
    jmp near @..local.l363           ; 0x741e
    mov ax, 0                        ; 0x7421
    push ax                          ; 0x7424
    push ax                          ; 0x7425
    push word [data_a5b4]            ; 0x7426
    push word [data_a5b2]            ; 0x742a
    call ds_dispatch_e942            ; 0x742e
    add sp, byte 8                   ; 0x7431
    mov ax, word [data_a5bc]         ; 0x7434
    cmp ax, word [data_a5aa]         ; 0x7437
    jge short @..api_idx_000a_3.l1   ; 0x743b
    mov ax, 0x4f                     ; 0x743d
    push ax                          ; 0x7440
    mov ax, 0xbd                     ; 0x7441
    push ax                          ; 0x7444
    mov ax, 6                        ; 0x7445
    push ax                          ; 0x7448
    mov ax, 0x11                     ; 0x7449
    push ax                          ; 0x744c
    call api_idx_000a                ; 0x744d
    add sp, byte 8                   ; 0x7450
@..api_idx_000a_3.l1:
    mov ax, 0x2b                     ; 0x7453
    push ax                          ; 0x7456
    mov ax, 0x74                     ; 0x7457
    push ax                          ; 0x745a
    mov ax, word [data_a5b0]         ; 0x745b
    mov cx, 3                        ; 0x745e
    cwd                              ; 0x7461
    idiv cx                          ; 0x7462
    mov ax, dx                       ; 0x7464
    inc ax                           ; 0x7466
    push ax                          ; 0x7467
    mov ax, 0x11                     ; 0x7468
    push ax                          ; 0x746b
    call api_idx_000a                ; 0x746c
    add sp, byte 8                   ; 0x746f
    mov ax, 0x3f                     ; 0x7472
    push ax                          ; 0x7475
    mov ax, 0xa4                     ; 0x7476
    push ax                          ; 0x7479
    mov ax, word [data_a5b0]         ; 0x747a
    mov cx, data_0002                ; 0x747d
    cwd                              ; 0x7480
    idiv cx                          ; 0x7481
    mov ax, dx                       ; 0x7483
    add ax, strict word 4            ; 0x7485
    push ax                          ; 0x7488
    mov ax, 0x11                     ; 0x7489
    push ax                          ; 0x748c
    call api_idx_000a                ; 0x748d
    add sp, byte 8                   ; 0x7490
    mov ax, word [data_a5b0]         ; 0x7493
    mov cx, 6                        ; 0x7496
    cwd                              ; 0x7499
    idiv cx                          ; 0x749a
    mov bx, dx                       ; 0x749c
    mov al, byte [bx - 0x5a3a]       ; 0x749e
    sub ah, ah                       ; 0x74a2
    add ax, strict word 0xffcf       ; 0x74a4
    mov word [bp - 0x0006], ax       ; 0x74a7
    push cx                          ; 0x74aa
    mov ax, 0xa1                     ; 0x74ab
    push ax                          ; 0x74ae
    mov ax, word [bp - 0x0006]       ; 0x74af
    add ax, strict word 7            ; 0x74b2
    push ax                          ; 0x74b5
    mov ax, 0x11                     ; 0x74b6
    push ax                          ; 0x74b9
    call api_idx_000a                ; 0x74ba
    add sp, byte 8                   ; 0x74bd
    mov ax, word [data_a5b0]         ; 0x74c0
    inc ax                           ; 0x74c3
    mov cx, 6                        ; 0x74c4
    cwd                              ; 0x74c7
    idiv cx                          ; 0x74c8
    mov bx, dx                       ; 0x74ca
    mov al, byte [bx - 0x5a3a]       ; 0x74cc
    sub ah, ah                       ; 0x74d0
    add ax, strict word 0xffcf       ; 0x74d2
    mov word [bp - 0x0006], ax       ; 0x74d5
    mov ax, 0x1e                     ; 0x74d8
    push ax                          ; 0x74db
    mov ax, 0xbf                     ; 0x74dc
    push ax                          ; 0x74df
    mov ax, word [bp - 0x0006]       ; 0x74e0
    add ax, strict word 0xb          ; 0x74e3
    push ax                          ; 0x74e6
    mov ax, 0x11                     ; 0x74e7
    push ax                          ; 0x74ea
    call api_idx_000a                ; 0x74eb
    add sp, byte 8                   ; 0x74ee
    mov ax, word [data_a5b0]         ; 0x74f1
    inc ax                           ; 0x74f4
    inc ax                           ; 0x74f5
    mov cx, 6                        ; 0x74f6
    cwd                              ; 0x74f9
    idiv cx                          ; 0x74fa
    mov bx, dx                       ; 0x74fc
    mov al, byte [bx - 0x5a3a]       ; 0x74fe
    sub ah, ah                       ; 0x7502
    add ax, strict word 0xffcf       ; 0x7504
    mov word [bp - 0x0006], ax       ; 0x7507
    mov ax, 0x35                     ; 0x750a
    push ax                          ; 0x750d
    mov ax, 0xd0                     ; 0x750e
    push ax                          ; 0x7511
    mov ax, word [bp - 0x0006]       ; 0x7512
    add ax, strict word 0xf          ; 0x7515
    push ax                          ; 0x7518
    mov ax, 0x11                     ; 0x7519
    push ax                          ; 0x751c
    call api_idx_000a                ; 0x751d
    add sp, byte 8                   ; 0x7520
    mov ax, word [data_a5b6]         ; 0x7523
    cmp ax, word [data_a5aa]         ; 0x7526
    jl short @..api_idx_000a_3.l2    ; 0x752a
    jmp near @..api_idx_000a_3.l6    ; 0x752c
@..api_idx_000a_3.l2:
    mov ax, 0x67                     ; 0x752f
    push ax                          ; 0x7532
    mov ax, 0x85                     ; 0x7533
    push ax                          ; 0x7536
    mov ax, 1                        ; 0x7537
    push ax                          ; 0x753a
    mov ax, 0x10                     ; 0x753b
    push ax                          ; 0x753e
    call api_idx_000a                ; 0x753f
    add sp, byte 8                   ; 0x7542
    mov ax, word [data_a5b0]         ; 0x7545
    push ax                          ; 0x7548
    cmp ax, strict word 6            ; 0x7549
    pop ax                           ; 0x754c
    jl short @..api_idx_000a_3.l3    ; 0x754d
    mov cx, 6                        ; 0x754f
    cwd                              ; 0x7552
    idiv cx                          ; 0x7553
    mov cx, dx                       ; 0x7555
    mov ax, 6                        ; 0x7557
    sub ax, cx                       ; 0x755a
@..api_idx_000a_3.l3:
    mov word [bp - 0x0008], ax       ; 0x755c
    mov ax, word [data_a5b0]         ; 0x755f
    inc ax                           ; 0x7562
    inc ax                           ; 0x7563
    inc ax                           ; 0x7564
    mov cx, 0xc                      ; 0x7565
    cwd                              ; 0x7568
    idiv cx                          ; 0x7569
    mov word [bp - 0x0006], dx       ; 0x756b
    cmp dx, byte 6                   ; 0x756e
    jge short @..api_idx_000a_3.l4   ; 0x7571
    mov ax, 6                        ; 0x7573
    sub ax, dx                       ; 0x7576
    jmp short @..api_idx_000a_3.l5   ; 0x7578
@..api_idx_000a_3.l4:
    mov ax, dx                       ; 0x757a
    mov cx, 6                        ; 0x757c
    cwd                              ; 0x757f
    idiv cx                          ; 0x7580
    mov ax, dx                       ; 0x7582
@..api_idx_000a_3.l5:
    mov word [bp - 0x000a], ax       ; 0x7584
    add ax, strict word 0x4c         ; 0x7587
    push ax                          ; 0x758a
    mov ax, word [bp - 0x0008]       ; 0x758b
    add ax, 0x9f                     ; 0x758e
    push ax                          ; 0x7591
    mov ax, word [data_a5b0]         ; 0x7592
    mov cx, data_0002                ; 0x7595
    cwd                              ; 0x7598
    idiv cx                          ; 0x7599
    mov ax, dx                       ; 0x759b
    inc ax                           ; 0x759d
    inc ax                           ; 0x759e
    push ax                          ; 0x759f
    mov ax, 0x10                     ; 0x75a0
    push ax                          ; 0x75a3
    call api_idx_000a                ; 0x75a4
    add sp, byte 8                   ; 0x75a7
@..api_idx_000a_3.l6:
    mov ax, word [data_a5b8]         ; 0x75aa
    cmp ax, word [data_a5aa]         ; 0x75ad
    jl short @..api_idx_000a_3.l7    ; 0x75b1
    jmp near @..local.l341           ; 0x75b3
@..api_idx_000a_3.l7:
    cmp word [data_a5ce], byte 0x10  ; 0x75b6
    jge short @..api_idx_000a_3.l8   ; 0x75bb
    mov ax, 0x2f                     ; 0x75bd
    push ax                          ; 0x75c0
    mov ax, 0xbe                     ; 0x75c1
    push ax                          ; 0x75c4
    mov ax, word [data_a5ce]         ; 0x75c5
    add ax, strict word 4            ; 0x75c8
    push ax                          ; 0x75cb
    mov ax, 0x10                     ; 0x75cc
    push ax                          ; 0x75cf
    call api_idx_000a                ; 0x75d0
    add sp, byte 8                   ; 0x75d3
    inc word [data_a5ce]             ; 0x75d6
    jmp near @..local.l341           ; 0x75da
@..api_idx_000a_3.l8:
    cmp word [data_a5ce], byte 0x14  ; 0x75dd
    jge short @..local.l340          ; 0x75e2
    mov ax, 0x2f                     ; 0x75e4
    push ax                          ; 0x75e7
    mov ax, 0xbe                     ; 0x75e8
    push ax                          ; 0x75eb
    mov ax, 0x14                     ; 0x75ec
    push ax                          ; 0x75ef
    mov ax, 0x10                     ; 0x75f0
    push ax                          ; 0x75f3
    call api_idx_000a                ; 0x75f4
    add sp, byte 8                   ; 0x75f7
    mov ax, 0x2f                     ; 0x75fa
    push ax                          ; 0x75fd
    mov ax, 0xbe                     ; 0x75fe
    push ax                          ; 0x7601
    mov ax, word [data_a5ce]         ; 0x7602
    add ax, strict word 5            ; 0x7605
    push ax                          ; 0x7608
    mov ax, 0x10                     ; 0x7609
    push ax                          ; 0x760c
    call api_idx_000a                ; 0x760d
    add sp, byte 8                   ; 0x7610
    inc word [data_a5ce]             ; 0x7613
    jmp near @..local.l341           ; 0x7617
@..local.l340:

    db 0xc7, 0x06, 0xac, 0xa5, 0x00, 0x00, 0xb8, 0x2f, 0x00, 0x50, 0xb8, 0xbe, 0x00, 0x50, 0xb8, 0x14
    db 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x0d, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x2f, 0x00, 0x50
    db 0xb8, 0xbe, 0x00, 0x50, 0xb8, 0x18, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0xf7, 0xfc, 0x83
    db 0xc4, 0x08, 0xb8, 0x2f, 0x00, 0x50, 0xb8, 0xbe, 0x00, 0x50, 0xa1, 0xb0, 0xa5, 0xb9, 0x06, 0x00
    db 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x05, 0x19, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0xd6, 0xfc
    db 0x83, 0xc4, 0x08, 0xa1, 0xb0, 0xa5, 0x3d, 0x09, 0x00, 0x7d, 0x16, 0xb8, 0x07, 0x00, 0x50, 0xe8
    db 0x2d, 0x41, 0x59, 0x85, 0xc0, 0x74, 0x05, 0xb8, 0x00, 0x00, 0xeb, 0x03, 0xb8, 0x01, 0x00, 0xeb
    db 0x0c, 0xa1, 0xb0, 0xa5, 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x40, 0x89, 0x46, 0xfa
    db 0x3d, 0x03, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfa, 0x01, 0x00, 0xb8, 0x2f, 0x00, 0x50, 0xb8, 0xbe
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x1f, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x86, 0xfc
    db 0x83, 0xc4, 0x08, 0xb8, 0x2f, 0x00, 0x50, 0xb8, 0xbe, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db 0xdd, 0x40, 0x59, 0x05, 0x22, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x68, 0xfc, 0x83, 0xc4
    db 0x08

@..local.l341:

    db 0xa1, 0xba, 0xa5, 0x3b, 0x06, 0xaa, 0xa5, 0x7d, 0x59, 0xb8, 0x15, 0x00, 0x50, 0xb8, 0x28, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x49, 0xfc, 0x83, 0xc4, 0x08, 0xb8
    db 0x15, 0x00, 0x50, 0xb8, 0x85, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8

    lldt word [bx + si - 0x0018]     ; 0x7707
    xor di, sp                       ; 0x770b
    add sp, byte 8                   ; 0x770d
    mov ax, word [data_a5b0]         ; 0x7710
    cmp ax, strict word 4            ; 0x7713
    jl short @..local.l342           ; 0x7716
    cmp ax, strict word 6            ; 0x7718
    jle short @..local.l343          ; 0x771b
@..local.l342:
    mov ax, 3                        ; 0x771d
    jmp short @..local.l344          ; 0x7720
@..local.l343:
    mov ax, word [data_a5b0]         ; 0x7722
@..local.l344:
    mov word [bp - 0x0006], ax       ; 0x7725
    mov ax, 0x15                     ; 0x7728
    push ax                          ; 0x772b
    mov ax, data_0028                ; 0x772c
    push ax                          ; 0x772f
    push word [bp - 0x0006]          ; 0x7730
    mov ax, 0xf                      ; 0x7733
    push ax                          ; 0x7736
    call api_idx_000a                ; 0x7737
    add sp, byte 8                   ; 0x773a
    jmp near @..local.l364           ; 0x773d

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

    jne short @..local.l345          ; 0x8369
    mov word [data_a5fe], 0          ; 0x836b
@..local.l345:
    cmp word [data_a5fe], byte 4     ; 0x8371
    jne short @..local.l346          ; 0x8376
    mov ax, data_0002                ; 0x8378
    push ax                          ; 0x837b
    call ds_dispatch_b7a9            ; 0x837c
    pop cx                           ; 0x837f
    test ax, ax                      ; 0x8380
    je short @..local.l346           ; 0x8382
    mov word [data_a5fe], 0          ; 0x8384
@..local.l346:
    jmp near @..local.l364           ; 0x838a

    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36, 0xb4, 0xa5, 0xff, 0x36, 0xb2, 0xa5, 0xe8, 0xa5, 0x65
    db 0x83, 0xc4, 0x08, 0xa1, 0xb8, 0xa5, 0x3b, 0x06, 0xaa, 0xa5, 0x7c, 0x03, 0xe9, 0xde, 0x00, 0xb8
    db 0x17, 0x00, 0x50, 0xb8, 0x38, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8
    db 0x81, 0xef, 0x83, 0xc4, 0x08, 0xb8, 0x27, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50, 0xb8, 0x02, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x6b, 0xef, 0x83, 0xc4, 0x08, 0xb8, 0x55, 0x00, 0x50, 0xb8
    db 0x23, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x55, 0xef, 0x83, 0xc4
    db 0x08, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50

    mov ax, 4                        ; 0x83f6
    push ax                          ; 0x83f9
    mov ax, 0xf                      ; 0x83fa
    push ax                          ; 0x83fd
    call api_idx_000a                ; 0x83fe
    add sp, byte 8                   ; 0x8401
loc_8404:
    cmp word [data_a5fc], byte 0     ; 0x8404
    jg short @..local.l347           ; 0x8409
    mov ax, 3                        ; 0x840b
    push ax                          ; 0x840e
    call ds_dispatch_b7a9            ; 0x840f
    pop cx                           ; 0x8412
    test ax, ax                      ; 0x8413
    jne short @..local.l348          ; 0x8415
@..local.l347:
    mov ax, data_0002                ; 0x8417
    push ax                          ; 0x841a
    call ds_dispatch_b7a9            ; 0x841b
    pop cx                           ; 0x841e
    test ax, ax                      ; 0x841f
    je short @..local.l348           ; 0x8421
    mov ax, 3                        ; 0x8423
    push ax                          ; 0x8426
    call ds_dispatch_b7a9            ; 0x8427
    pop cx                           ; 0x842a
    inc ax                           ; 0x842b
    mov word [data_a5fc], ax         ; 0x842c
@..local.l348:
    mov ax, 8                        ; 0x842f
    push ax                          ; 0x8432
    call ds_dispatch_b7a9            ; 0x8433
    pop cx                           ; 0x8436
    test ax, ax                      ; 0x8437
    jne short @..local.l349          ; 0x8439
    mov word [data_a5fc], 0          ; 0x843b
@..local.l349:
    mov ax, 0x37                     ; 0x8441
    push ax                          ; 0x8444
    mov ax, 0x4f                     ; 0x8445
    push ax                          ; 0x8448
    mov ax, word [data_a5fc]         ; 0x8449
    add ax, strict word 5            ; 0x844c
    push ax                          ; 0x844f
    mov ax, 0xf                      ; 0x8450
    push ax                          ; 0x8453
    call api_idx_000a                ; 0x8454
    add sp, byte 8                   ; 0x8457
    mov ax, 0x2a                     ; 0x845a
    push ax                          ; 0x845d
    mov ax, 0x57                     ; 0x845e
    push ax                          ; 0x8461
    mov ax, word [data_a5fe]         ; 0x8462
    add ax, strict word 9            ; 0x8465
    push ax                          ; 0x8468
    mov ax, 0xf                      ; 0x8469
    push ax                          ; 0x846c
    call api_idx_000a                ; 0x846d
    add sp, byte 8                   ; 0x8470
    mov ax, data_0002                ; 0x8473
    push ax                          ; 0x8476
    call ds_dispatch_b7a9            ; 0x8477
    pop cx                           ; 0x847a
    test ax, ax                      ; 0x847b
    je short @..local.l350           ; 0x847d
    mov ax, 6                        ; 0x847f
    push ax                          ; 0x8482
    call ds_dispatch_b7a9            ; 0x8483
    pop cx                           ; 0x8486
    mov word [data_a5fe], ax         ; 0x8487
@..local.l350:
    mov ax, word [data_a5ba]         ; 0x848a
    cmp ax, word [data_a5aa]         ; 0x848d
    jl short @..local.l351           ; 0x8491
    jmp near @..local.l362           ; 0x8493
@..local.l351:
    mov ax, 0                        ; 0x8496
    push ax                          ; 0x8499
    mov ax, 0x22                     ; 0x849a
    push ax                          ; 0x849d
    mov ax, 1                        ; 0x849e
    push ax                          ; 0x84a1
    mov ax, 0x10                     ; 0x84a2
    push ax                          ; 0x84a5
    call api_idx_000a                ; 0x84a6
    add sp, byte 8                   ; 0x84a9
    mov ax, 0x2a                     ; 0x84ac
    push ax                          ; 0x84af
    mov ax, 0x72                     ; 0x84b0
    push ax                          ; 0x84b3
    mov ax, data_0002                ; 0x84b4
    push ax                          ; 0x84b7
    mov ax, 0x10                     ; 0x84b8
    push ax                          ; 0x84bb
    call api_idx_000a                ; 0x84bc
    add sp, byte 8                   ; 0x84bf
    mov ax, 0x58                     ; 0x84c2
    push ax                          ; 0x84c5
    mov ax, 0x37                     ; 0x84c6
    push ax                          ; 0x84c9
    mov ax, 3                        ; 0x84ca
    push ax                          ; 0x84cd
    mov ax, 0x10                     ; 0x84ce
    push ax                          ; 0x84d1
    call api_idx_000a                ; 0x84d2
    add sp, byte 8                   ; 0x84d5
    mov ax, 0x55                     ; 0x84d8
    push ax                          ; 0x84db
    mov ax, 0x87                     ; 0x84dc
    push ax                          ; 0x84df
    mov ax, 4                        ; 0x84e0
    push ax                          ; 0x84e3
    mov ax, 0x10                     ; 0x84e4
    push ax                          ; 0x84e7
    call api_idx_000a                ; 0x84e8
    add sp, byte 8                   ; 0x84eb
    mov ax, 0x49                     ; 0x84ee
    push ax                          ; 0x84f1
    mov ax, 0xb2                     ; 0x84f2
    push ax                          ; 0x84f5
    mov ax, word [data_a5ce]         ; 0x84f6
    add ax, strict word 5            ; 0x84f9
    push ax                          ; 0x84fc
    mov ax, 0x10                     ; 0x84fd
    push ax                          ; 0x8500
    call api_idx_000a                ; 0x8501
    add sp, byte 8                   ; 0x8504
    cmp word [data_a5fa], byte 0     ; 0x8507
    jg short @..local.l352           ; 0x850c
    jmp near @..local.l359           ; 0x850e
@..local.l352:
    mov ax, word [data_a5fa]         ; 0x8511
    jmp short @..local.l357          ; 0x8514
@..local.l353:
    mov ax, 0x57                     ; 0x8516
    push ax                          ; 0x8519
    mov ax, 0xd0                     ; 0x851a
    push ax                          ; 0x851d
    mov ax, 9                        ; 0x851e
    push ax                          ; 0x8521
    mov ax, 0x10                     ; 0x8522
    push ax                          ; 0x8525
    call api_idx_000a                ; 0x8526
    add sp, byte 8                   ; 0x8529
    jmp short @..local.l358          ; 0x852c
@..local.l354:
    mov ax, 0x4d                     ; 0x852e
    push ax                          ; 0x8531
    mov ax, 0xe4                     ; 0x8532
    push ax                          ; 0x8535
    mov ax, 0xa                      ; 0x8536
    push ax                          ; 0x8539
    mov ax, 0x10                     ; 0x853a
    push ax                          ; 0x853d
    call api_idx_000a                ; 0x853e
    add sp, byte 8                   ; 0x8541
    jmp short @..local.l358          ; 0x8544
@..local.l355:
    mov ax, 0x42                     ; 0x8546
    push ax                          ; 0x8549
    mov ax, 0xfa                     ; 0x854a
    push ax                          ; 0x854d
    mov ax, 0xb                      ; 0x854e
    push ax                          ; 0x8551
    mov ax, 0x10                     ; 0x8552
    push ax                          ; 0x8555
    call api_idx_000a                ; 0x8556
    add sp, byte 8                   ; 0x8559
    jmp short @..local.l358          ; 0x855c
@..local.l356:
    mov ax, 0x33                     ; 0x855e
    push ax                          ; 0x8561
    mov ax, 0x118                    ; 0x8562
    push ax                          ; 0x8565
    mov ax, 0xc                      ; 0x8566
    push ax                          ; 0x8569
    mov ax, 0x10                     ; 0x856a
    push ax                          ; 0x856d
    call api_idx_000a                ; 0x856e
    add sp, byte 8                   ; 0x8571
    jmp short @..local.l358          ; 0x8574
@..local.l357:
    cmp ax, strict word 1            ; 0x8576
    je short @..local.l353           ; 0x8579
    cmp ax, strict word 2            ; 0x857b
    je short @..local.l354           ; 0x857e
    cmp ax, strict word 3            ; 0x8580
    je short @..local.l355           ; 0x8583
    cmp ax, strict word 4            ; 0x8585
    je short @..local.l356           ; 0x8588
@..local.l358:
    inc word [data_a5fa]             ; 0x858a
    mov ax, word [data_a5fa]         ; 0x858e
    cmp ax, strict word 4            ; 0x8591
    jle short @..local.l359          ; 0x8594
    mov word [data_a5fa], 0          ; 0x8596
@..local.l359:
    cmp word [data_a5ce], byte 0     ; 0x859c
    jg short @..local.l360           ; 0x85a1
    mov ax, 0xa                      ; 0x85a3
    push ax                          ; 0x85a6
    call ds_dispatch_b7a9            ; 0x85a7
    pop cx                           ; 0x85aa
    test ax, ax                      ; 0x85ab
    jne short @..local.l362          ; 0x85ad
@..local.l360:
    inc word [data_a5ce]             ; 0x85af
    mov ax, word [data_a5ce]         ; 0x85b3
    cmp ax, strict word 2            ; 0x85b6
    jne short @..local.l361          ; 0x85b9
    mov word [data_a5fa], 1          ; 0x85bb
@..local.l361:
    cmp word [data_a5ce], byte 3     ; 0x85c1
    jle short @..local.l362          ; 0x85c6
    mov word [data_a5ce], 0          ; 0x85c8
@..local.l362:
    jmp short @..local.l364          ; 0x85ce

    db 0x36, 0xd6, 0x68, 0xc4, 0x87, 0xc7, 0x4d, 0xc9, 0xce, 0xcc, 0x92, 0xcd, 0x8e, 0xcf, 0xef, 0xd0
    db 0xd4, 0xd3

@..local.l363:
    cmp ax, strict word 9            ; 0x85e2
    jae short @..local.l364          ; 0x85e5
    xchg bx, ax                      ; 0x85e7
    shl bx, 1                        ; 0x85e8
    jmp [cs:bx - 0x29e9]             ; 0x85ea
@..local.l364:
    ret                              ; 0x85ef
loc_85f0:
    mov ax, 0                        ; 0x85f0
    call ds_dispatch_f40b            ; 0x85f3
    mov word [data_a5aa], 1          ; 0x85f6
    mov ax, 0                        ; 0x85fc
    push ax                          ; 0x85ff
    push ax                          ; 0x8600
    push ax                          ; 0x8601
    push ax                          ; 0x8602
    call ds_dispatch_f0ca            ; 0x8603
    add sp, byte 8                   ; 0x8606
    mov ax, 0                        ; 0x8609
    push ax                          ; 0x860c
    mov ax, 0xc7                     ; 0x860d
    push ax                          ; 0x8610
    mov ax, 0x13f                    ; 0x8611
    push ax                          ; 0x8614
    mov ax, 0                        ; 0x8615
    push ax                          ; 0x8618
    push ax                          ; 0x8619
    call ds_dispatch_e901            ; 0x861a
    add sp, byte 0x0a                ; 0x861d
    mov ax, 0xc7                     ; 0x8620
    push ax                          ; 0x8623
    mov ax, 0x13f                    ; 0x8624
    push ax                          ; 0x8627
    mov ax, 0                        ; 0x8628
    push ax                          ; 0x862b
    push ax                          ; 0x862c
    call ds_dispatch_e8da            ; 0x862d
    add sp, byte 8                   ; 0x8630
    ret                              ; 0x8633
loc_8634:
    mov ax, 0                        ; 0x8634
    call ds_dispatch_f40b            ; 0x8637
    mov ax, 0                        ; 0x863a
    push ax                          ; 0x863d
    mov ax, 0x9144                   ; 0x863e
    push ax                          ; 0x8641
    call api_idx_0002_5              ; 0x8642
    add sp, byte 4                   ; 0x8645
    mov ax, 0                        ; 0x8648
    push ax                          ; 0x864b
    mov ax, data_0002                ; 0x864c
    push ax                          ; 0x864f
    mov ax, 0x91                     ; 0x8650
    push ax                          ; 0x8653
    mov ax, 0x13f                    ; 0x8654
    push ax                          ; 0x8657
    mov ax, 0                        ; 0x8658
    push ax                          ; 0x865b
    push ax                          ; 0x865c
    call ds_dispatch_e935            ; 0x865d
    add sp, byte 0x0c                ; 0x8660
    mov word [data_a5b4], dx         ; 0x8663
    mov word [data_a5b2], ax         ; 0x8667
    mov ax, 0xf                      ; 0x866a
    push ax                          ; 0x866d
    mov ax, 1                        ; 0x866e
    push ax                          ; 0x8671
    call api_idx_0016_2              ; 0x8672
    add sp, byte 4                   ; 0x8675
    mov ax, 0x10                     ; 0x8678
    push ax                          ; 0x867b
    mov ax, data_0002                ; 0x867c
    push ax                          ; 0x867f
    call api_idx_0016_2              ; 0x8680
    add sp, byte 4                   ; 0x8683
    mov ax, 0x11                     ; 0x8686
    push ax                          ; 0x8689
    mov ax, 3                        ; 0x868a
    push ax                          ; 0x868d
    call api_idx_0016_2              ; 0x868e
    add sp, byte 4                   ; 0x8691
    mov ax, word [bp + 0x6]          ; 0x8694
    mov word [data_a5b6], ax         ; 0x8697
    mov ax, word [bp + 0x8]          ; 0x869a
    mov word [data_a5b8], ax         ; 0x869d
    mov ax, word [bp + 0xa]          ; 0x86a0
    mov word [data_a5ba], ax         ; 0x86a3
    mov ax, word [bp + 0xc]          ; 0x86a6
    mov word [data_a5bc], ax         ; 0x86a9
    mov word [data_a5b0], 0          ; 0x86ac
    mov word [data_a4a4], 1          ; 0x86b2
    mov ax, 0                        ; 0x86b8
    cmp word [bp + 0x8], byte 0      ; 0x86bb
    jne short @..local.l365          ; 0x86bf
    mov ax, 0x14                     ; 0x86c1
@..local.l365:
    mov word [data_a5ce], ax         ; 0x86c4
    mov ax, 0x9151                   ; 0x86c7
    push ax                          ; 0x86ca
    mov ax, 0xa5c6                   ; 0x86cb
    push ax                          ; 0x86ce
    call ds_dispatch_f364            ; 0x86cf
    add sp, byte 4                   ; 0x86d2
    mov word [data_a5ae], 5          ; 0x86d5
    les bx, word [data_0002]         ; 0x86db
    mov ax, word [es:bx]             ; 0x86df
    mov dx, word [es:bx + 0x2]       ; 0x86e2
    mov word [data_908c], dx         ; 0x86e6
    mov word [data_908a], ax         ; 0x86ea
    call api_idx_000a_3              ; 0x86ed
loc_86f0:
    mov ax, 0                        ; 0x86f0
    push ax                          ; 0x86f3
    push ax                          ; 0x86f4
    push ax                          ; 0x86f5
    call ds_dispatch_f0d7            ; 0x86f6
    add sp, byte 6                   ; 0x86f9
    mov ax, 0xc7                     ; 0x86fc
    push ax                          ; 0x86ff
    mov ax, 0x13f                    ; 0x8700
    push ax                          ; 0x8703
    mov ax, 0                        ; 0x8704
    push ax                          ; 0x8707
    push ax                          ; 0x8708
    call ds_dispatch_e8da            ; 0x8709
    add sp, byte 8                   ; 0x870c
    mov ax, 0                        ; 0x870f
    push ax                          ; 0x8712
    call ds_dispatch_f0bd            ; 0x8713
    pop cx                           ; 0x8716
    mov ax, 0                        ; 0x8717
    push ax                          ; 0x871a
    push word [bp + 0x4]             ; 0x871b
    call loc_6f79                    ; 0x871e
    add sp, byte 4                   ; 0x8721
    mov ax, 0x11                     ; 0x8724
    push ax                          ; 0x8727
    call math_loc_72c2               ; 0x8728
    pop cx                           ; 0x872b
    mov ax, 0x10                     ; 0x872c
    push ax                          ; 0x872f
    call math_loc_72c2               ; 0x8730
    pop cx                           ; 0x8733
    mov ax, 0xf                      ; 0x8734
    push ax                          ; 0x8737
    call math_loc_72c2               ; 0x8738
    pop cx                           ; 0x873b
    mov ax, 0                        ; 0x873c
    push ax                          ; 0x873f
    mov ax, 1                        ; 0x8740
    push ax                          ; 0x8743
    push word [data_a5b4]            ; 0x8744
    push word [data_a5b2]            ; 0x8748
    call ds_dispatch_e942            ; 0x874c
    add sp, byte 8                   ; 0x874f
    call loc_85f0                    ; 0x8752
    ret                              ; 0x8755
api_idx_0002_7:
    mov ax, 0xfffe                   ; 0x8756
    call ds_dispatch_f40b            ; 0x8759
    mov ax, 0xf                      ; 0x875c
    push ax                          ; 0x875f
    mov ax, 4                        ; 0x8760
    push ax                          ; 0x8763
    call api_idx_0016_2              ; 0x8764
    add sp, byte 4                   ; 0x8767
    mov ax, 0x10                     ; 0x876a
    push ax                          ; 0x876d
    mov ax, 5                        ; 0x876e
    push ax                          ; 0x8771
    call api_idx_0016_2              ; 0x8772
    add sp, byte 4                   ; 0x8775
    mov ax, 0x11                     ; 0x8778
    push ax                          ; 0x877b
    mov ax, 6                        ; 0x877c
    push ax                          ; 0x877f
    call api_idx_0016_2              ; 0x8780
    add sp, byte 4                   ; 0x8783
    mov ax, word [bp + 0x6]          ; 0x8786
    mov word [data_a5b6], ax         ; 0x8789
    mov ax, word [bp + 0x8]          ; 0x878c
    mov word [data_a5b8], ax         ; 0x878f
    mov ax, word [bp + 0xa]          ; 0x8792
    mov word [data_a5ba], ax         ; 0x8795
    mov word [bp - 0x0002], 0        ; 0x8798
@..api_idx_0002_7.l1:
    mov ax, 0x50                     ; 0x879d
    imul word [bp - 0x0002]          ; 0x87a0
    mov cx, word [bp - 0x0002]       ; 0x87a3
    shl cx, 1                        ; 0x87a6
    mov bx, cx                       ; 0x87a8
    mov word [bx - 0x5a30], ax       ; 0x87aa
    inc word [bp - 0x0002]           ; 0x87ae
    mov ax, word [bp - 0x0002]       ; 0x87b1
    cmp ax, strict word 5            ; 0x87b4
    jl short @..api_idx_0002_7.l1    ; 0x87b7
    mov word [bp - 0x0002], 0        ; 0x87b9
@..api_idx_0002_7.l2:
    mov ax, word [bp - 0x0002]       ; 0x87be
    shl ax, 1                        ; 0x87c1
    mov bx, ax                       ; 0x87c3
    mov word [bx - 0x5a26], 0x140    ; 0x87c5
    mov ax, 0x3c                     ; 0x87cb
    push ax                          ; 0x87ce
    call ds_dispatch_b7a9            ; 0x87cf
    pop cx                           ; 0x87d2
    add ax, strict word 0x28         ; 0x87d3
    mov cx, word [bp - 0x0002]       ; 0x87d6
    shl cx, 1                        ; 0x87d9
    mov bx, cx                       ; 0x87db
    mov word [bx - 0x5a16], ax       ; 0x87dd
    inc word [bp - 0x0002]           ; 0x87e1
    mov ax, word [bp - 0x0002]       ; 0x87e4
    cmp ax, strict word 8            ; 0x87e7
    jl short @..api_idx_0002_7.l2    ; 0x87ea
    mov word [data_a5e0], 0x13e      ; 0x87ec
    mov word [data_a5f0], 0x2a       ; 0x87f2
    mov word [data_a5e2], 0xff50     ; 0x87f8
    mov word [data_a5f2], 0x3c       ; 0x87fe
    mov word [data_a5b0], 0          ; 0x8804
    mov word [data_a4a4], data_0002  ; 0x880a
    mov word [data_a5fa], 1          ; 0x8810
    mov word [data_a5ae], 3          ; 0x8816
    les bx, word [data_0002]         ; 0x881c
    mov ax, word [es:bx]             ; 0x8820
    mov dx, word [es:bx + 0x2]       ; 0x8823
    mov word [data_908c], dx         ; 0x8827
    mov word [data_908a], ax         ; 0x882b
    call api_idx_000a_3              ; 0x882e
    mov ax, 0                        ; 0x8831
    push ax                          ; 0x8834
    push ax                          ; 0x8835
    push ax                          ; 0x8836
    call ds_dispatch_f0d7            ; 0x8837
    add sp, byte 6                   ; 0x883a
    mov ax, 0xc7                     ; 0x883d
    push ax                          ; 0x8840
    mov ax, 0x13f                    ; 0x8841
    push ax                          ; 0x8844
    mov ax, 0                        ; 0x8845
    push ax                          ; 0x8848
    push ax                          ; 0x8849
    call ds_dispatch_e8da            ; 0x884a
    add sp, byte 8                   ; 0x884d
    mov ax, 0                        ; 0x8850
    push ax                          ; 0x8853
    call ds_dispatch_f0bd            ; 0x8854
    pop cx                           ; 0x8857
    mov ax, 0                        ; 0x8858
    push ax                          ; 0x885b
    push word [bp + 0x4]             ; 0x885c
    call loc_6f79                    ; 0x885f
    add sp, byte 4                   ; 0x8862
    mov ax, 0x11                     ; 0x8865
    push ax                          ; 0x8868
    call math_loc_72c2               ; 0x8869
    pop cx                           ; 0x886c
    mov ax, 0x10                     ; 0x886d
    push ax                          ; 0x8870
    call math_loc_72c2               ; 0x8871
    pop cx                           ; 0x8874
    mov ax, 0xf                      ; 0x8875
    push ax                          ; 0x8878
    call math_loc_72c2               ; 0x8879
    pop cx                           ; 0x887c
    call loc_85f0                    ; 0x887d
    ret                              ; 0x8880
api_idx_0002_8:
    mov ax, 0xfffe                   ; 0x8881
    call ds_dispatch_f40b            ; 0x8884
    mov ax, 0xf                      ; 0x8887
    push ax                          ; 0x888a
    mov ax, 5                        ; 0x888b
    push ax                          ; 0x888e
    call api_idx_0016_2              ; 0x888f
    add sp, byte 4                   ; 0x8892
    mov word [bp - 0x0002], 0        ; 0x8895
@..api_idx_0002_8.l1:
    mov ax, 0x50                     ; 0x889a
    imul word [bp - 0x0002]          ; 0x889d
    mov cx, word [bp - 0x0002]       ; 0x88a0
    shl cx, 1                        ; 0x88a3
    mov bx, cx                       ; 0x88a5
    mov word [bx - 0x5a30], ax       ; 0x88a7
    inc word [bp - 0x0002]           ; 0x88ab
    mov ax, word [bp - 0x0002]       ; 0x88ae
    cmp ax, strict word 5            ; 0x88b1
    jl short @..api_idx_0002_8.l1    ; 0x88b4
    mov ax, 6                        ; 0x88b6
    push ax                          ; 0x88b9
    push word [data_a5d0]            ; 0x88ba
    mov ax, 1                        ; 0x88be
    push ax                          ; 0x88c1
    mov ax, 0xf                      ; 0x88c2
    push ax                          ; 0x88c5
    call api_idx_000a                ; 0x88c6
    add sp, byte 8                   ; 0x88c9
    mov ax, 6                        ; 0x88cc
    push ax                          ; 0x88cf
    push word [data_a5d2]            ; 0x88d0
    mov ax, data_0002                ; 0x88d4
    push ax                          ; 0x88d7
    mov ax, 0xf                      ; 0x88d8
    push ax                          ; 0x88db
    call api_idx_000a                ; 0x88dc
    add sp, byte 8                   ; 0x88df
    mov ax, 6                        ; 0x88e2
    push ax                          ; 0x88e5
    push word [data_a5d4]            ; 0x88e6
    mov ax, 3                        ; 0x88ea
    push ax                          ; 0x88ed
    mov ax, 0xf                      ; 0x88ee
    push ax                          ; 0x88f1
    call api_idx_000a                ; 0x88f2
    add sp, byte 8                   ; 0x88f5
    mov ax, 6                        ; 0x88f8
    push ax                          ; 0x88fb
    push word [data_a5d6]            ; 0x88fc
    mov ax, 4                        ; 0x8900
    push ax                          ; 0x8903
    mov ax, 0xf                      ; 0x8904
    push ax                          ; 0x8907
    call api_idx_000a                ; 0x8908
    add sp, byte 8                   ; 0x890b
    mov ax, 6                        ; 0x890e
    push ax                          ; 0x8911
    push word [data_a5d8]            ; 0x8912
    mov ax, 5                        ; 0x8916
    push ax                          ; 0x8919
    mov ax, 0xf                      ; 0x891a
    push ax                          ; 0x891d
    call api_idx_000a                ; 0x891e
    add sp, byte 8                   ; 0x8921
    mov ax, 0xf                      ; 0x8924
    push ax                          ; 0x8927
    call math_loc_72c2               ; 0x8928
    pop cx                           ; 0x892b
    mov ax, 0                        ; 0x892c
    push ax                          ; 0x892f
    mov ax, data_0002                ; 0x8930
    push ax                          ; 0x8933
    mov ax, 0x91                     ; 0x8934
    push ax                          ; 0x8937
    mov ax, 0x13f                    ; 0x8938
    push ax                          ; 0x893b
    mov ax, 0                        ; 0x893c
    push ax                          ; 0x893f
    push ax                          ; 0x8940
    call ds_dispatch_e935            ; 0x8941
    add sp, byte 0x0c                ; 0x8944
    mov word [data_a5b4], dx         ; 0x8947
    mov word [data_a5b2], ax         ; 0x894b
    mov ax, 0xf                      ; 0x894e
    push ax                          ; 0x8951
    mov ax, 4                        ; 0x8952
    push ax                          ; 0x8955
    call api_idx_0016_2              ; 0x8956
    add sp, byte 4                   ; 0x8959
    mov ax, 0x10                     ; 0x895c
    push ax                          ; 0x895f
    mov ax, 8                        ; 0x8960
    push ax                          ; 0x8963
    call api_idx_0016_2              ; 0x8964
    add sp, byte 4                   ; 0x8967
    mov ax, 0x11                     ; 0x896a
    push ax                          ; 0x896d
    mov ax, 7                        ; 0x896e
    push ax                          ; 0x8971
    call api_idx_0016_2              ; 0x8972
    add sp, byte 4                   ; 0x8975
    mov ax, word [bp + 0x6]          ; 0x8978
    mov word [data_a5b8], ax         ; 0x897b
    mov ax, word [bp + 0x8]          ; 0x897e
    mov word [data_a5bc], ax         ; 0x8981
    mov ax, word [bp + 0xa]          ; 0x8984
    mov word [data_a5be], ax         ; 0x8987
    mov word [bp - 0x0002], 0        ; 0x898a
@..api_idx_0002_8.l2:
    mov ax, word [bp - 0x0002]       ; 0x898f
    shl ax, 1                        ; 0x8992
    mov bx, ax                       ; 0x8994
    mov word [bx - 0x5a26], 0x140    ; 0x8996
    mov ax, 0x3c                     ; 0x899c
    push ax                          ; 0x899f
    call ds_dispatch_b7a9            ; 0x89a0
    pop cx                           ; 0x89a3
    add ax, strict word 0x28         ; 0x89a4
    mov cx, word [bp - 0x0002]       ; 0x89a7
    shl cx, 1                        ; 0x89aa
    mov bx, cx                       ; 0x89ac
    mov word [bx - 0x5a16], ax       ; 0x89ae
    inc word [bp - 0x0002]           ; 0x89b2
    mov ax, word [bp - 0x0002]       ; 0x89b5
    cmp ax, strict word 8            ; 0x89b8
    jl short @..api_idx_0002_8.l2    ; 0x89bb
    mov word [data_a5e0], 0x13e      ; 0x89bd
    mov word [data_a5f0], 0x2a       ; 0x89c3
    mov word [data_a5e2], 0x140      ; 0x89c9
    mov word [data_a5f2], 0x46       ; 0x89cf
    mov word [data_a5e4], 0xffe2     ; 0x89d5
    mov word [data_a5fc], 0          ; 0x89db
    mov word [data_a5fe], 0          ; 0x89e1
    mov word [data_a5b0], 0          ; 0x89e7
    mov word [data_a4a4], 3          ; 0x89ed
    mov word [data_a5ae], 5          ; 0x89f3
    les bx, word [data_0002]         ; 0x89f9
    mov ax, word [es:bx]             ; 0x89fd
    mov dx, word [es:bx + 0x2]       ; 0x8a00
    mov word [data_908c], dx         ; 0x8a04
    mov word [data_908a], ax         ; 0x8a08
    call api_idx_000a_3              ; 0x8a0b
    mov ax, 0                        ; 0x8a0e
    push ax                          ; 0x8a11
    push ax                          ; 0x8a12
    push ax                          ; 0x8a13
    call ds_dispatch_f0d7            ; 0x8a14
    add sp, byte 6                   ; 0x8a17
    mov ax, 0xc7                     ; 0x8a1a
    push ax                          ; 0x8a1d
    mov ax, 0x13f                    ; 0x8a1e
    push ax                          ; 0x8a21
    mov ax, 0                        ; 0x8a22
    push ax                          ; 0x8a25
    push ax                          ; 0x8a26
    call ds_dispatch_e8da            ; 0x8a27
    add sp, byte 8                   ; 0x8a2a
    mov ax, 0                        ; 0x8a2d
    push ax                          ; 0x8a30
    call ds_dispatch_f0bd            ; 0x8a31
    pop cx                           ; 0x8a34
    mov ax, 0                        ; 0x8a35
    push ax                          ; 0x8a38
    push word [bp + 0x4]             ; 0x8a39
    call loc_6f79                    ; 0x8a3c
    add sp, byte 4                   ; 0x8a3f
    mov ax, 0x11                     ; 0x8a42
    push ax                          ; 0x8a45
    call math_loc_72c2               ; 0x8a46
    pop cx                           ; 0x8a49
    mov ax, 0x10                     ; 0x8a4a
    push ax                          ; 0x8a4d
    call math_loc_72c2               ; 0x8a4e
    pop cx                           ; 0x8a51
    mov ax, 0xf                      ; 0x8a52
    push ax                          ; 0x8a55
    call math_loc_72c2               ; 0x8a56
    pop cx                           ; 0x8a59
    mov ax, 0                        ; 0x8a5a
    push ax                          ; 0x8a5d
    mov ax, 1                        ; 0x8a5e
    push ax                          ; 0x8a61
    push word [data_a5b4]            ; 0x8a62
    push word [data_a5b2]            ; 0x8a66
    call ds_dispatch_e942            ; 0x8a6a
    add sp, byte 8                   ; 0x8a6d
    call loc_85f0                    ; 0x8a70
    ret                              ; 0x8a73
loc_8a74:
    mov ax, 0                        ; 0x8a74
    call ds_dispatch_f40b            ; 0x8a77
    mov ax, 0                        ; 0x8a7a
    push ax                          ; 0x8a7d
    mov ax, 0x9158                   ; 0x8a7e
    push ax                          ; 0x8a81
    call api_idx_0002_5              ; 0x8a82
    add sp, byte 4                   ; 0x8a85
    mov ax, 0                        ; 0x8a88
    push ax                          ; 0x8a8b
    mov ax, data_0002                ; 0x8a8c
    push ax                          ; 0x8a8f
    mov ax, 0x91                     ; 0x8a90
    push ax                          ; 0x8a93
    mov ax, 0x13f                    ; 0x8a94
    push ax                          ; 0x8a97
    mov ax, 0                        ; 0x8a98
    push ax                          ; 0x8a9b
    push ax                          ; 0x8a9c
    call ds_dispatch_e935            ; 0x8a9d
    add sp, byte 0x0c                ; 0x8aa0
    mov word [data_a5b4], dx         ; 0x8aa3
    mov word [data_a5b2], ax         ; 0x8aa7
    mov ax, 0xf                      ; 0x8aaa
    push ax                          ; 0x8aad
    mov ax, 9                        ; 0x8aae
    push ax                          ; 0x8ab1
    call api_idx_0016_2              ; 0x8ab2
    add sp, byte 4                   ; 0x8ab5
    mov ax, 0x11                     ; 0x8ab8
    push ax                          ; 0x8abb
    mov ax, 6                        ; 0x8abc
    push ax                          ; 0x8abf
    call api_idx_0016_2              ; 0x8ac0
    add sp, byte 4                   ; 0x8ac3
    mov ax, word [bp + 0x6]          ; 0x8ac6
    mov word [data_a5b8], ax         ; 0x8ac9
    mov word [data_a5ce], 1          ; 0x8acc
    mov word [data_a5b0], 0          ; 0x8ad2
    mov word [data_a4a4], 4          ; 0x8ad8
    mov word [data_a5e2], 0xff9c     ; 0x8ade
    mov word [data_a5f2], 0x55       ; 0x8ae4
    mov word [data_a600], 0          ; 0x8aea
    mov word [data_a5ae], 5          ; 0x8af0
    les bx, word [data_0002]         ; 0x8af6
    mov ax, word [es:bx]             ; 0x8afa
    mov dx, word [es:bx + 0x2]       ; 0x8afd
    mov word [data_908c], dx         ; 0x8b01
    mov word [data_908a], ax         ; 0x8b05
    call api_idx_000a_3              ; 0x8b08
    mov ax, 0                        ; 0x8b0b
    push ax                          ; 0x8b0e
    push ax                          ; 0x8b0f
    push ax                          ; 0x8b10
    call ds_dispatch_f0d7            ; 0x8b11
    add sp, byte 6                   ; 0x8b14
    mov ax, 0xc7                     ; 0x8b17
    push ax                          ; 0x8b1a
    mov ax, 0x13f                    ; 0x8b1b
    push ax                          ; 0x8b1e
    mov ax, 0                        ; 0x8b1f
    push ax                          ; 0x8b22
    push ax                          ; 0x8b23
    call ds_dispatch_e8da            ; 0x8b24
    add sp, byte 8                   ; 0x8b27
    mov ax, 0                        ; 0x8b2a
    push ax                          ; 0x8b2d
    call ds_dispatch_f0bd            ; 0x8b2e
    pop cx                           ; 0x8b31
    mov ax, 0                        ; 0x8b32
    push ax                          ; 0x8b35
    push word [bp + 0x4]             ; 0x8b36
    call loc_6f79                    ; 0x8b39
    add sp, byte 4                   ; 0x8b3c
    mov ax, 0x11                     ; 0x8b3f
    push ax                          ; 0x8b42
    call math_loc_72c2               ; 0x8b43
    pop cx                           ; 0x8b46
    mov ax, 0xf                      ; 0x8b47
    push ax                          ; 0x8b4a
    call math_loc_72c2               ; 0x8b4b
    pop cx                           ; 0x8b4e
    mov ax, 0                        ; 0x8b4f
    push ax                          ; 0x8b52
    mov ax, 1                        ; 0x8b53
    push ax                          ; 0x8b56
    push word [data_a5b4]            ; 0x8b57
    push word [data_a5b2]            ; 0x8b5b
    call ds_dispatch_e942            ; 0x8b5f
    add sp, byte 8                   ; 0x8b62
    call loc_85f0                    ; 0x8b65
    ret                              ; 0x8b68
api_idx_0002_9:
    mov ax, 0xfffe                   ; 0x8b69
    call ds_dispatch_f40b            ; 0x8b6c
    mov ax, 0                        ; 0x8b6f
    push ax                          ; 0x8b72
    mov ax, 0x9165                   ; 0x8b73
    push ax                          ; 0x8b76
    call api_idx_0002_5              ; 0x8b77
    add sp, byte 4                   ; 0x8b7a
    mov ax, 0                        ; 0x8b7d
    push ax                          ; 0x8b80
    mov ax, data_0002                ; 0x8b81
    push ax                          ; 0x8b84
    mov ax, 0x91                     ; 0x8b85
    push ax                          ; 0x8b88
    mov ax, 0x13f                    ; 0x8b89
    push ax                          ; 0x8b8c
    mov ax, 0                        ; 0x8b8d
    push ax                          ; 0x8b90
    push ax                          ; 0x8b91
    call ds_dispatch_e935            ; 0x8b92
    add sp, byte 0x0c                ; 0x8b95
    mov word [data_a5b4], dx         ; 0x8b98
    mov word [data_a5b2], ax         ; 0x8b9c
    mov ax, 0xf                      ; 0x8b9f
    push ax                          ; 0x8ba2
    mov ax, 0xa                      ; 0x8ba3
    push ax                          ; 0x8ba6
    call api_idx_0016_2              ; 0x8ba7
    add sp, byte 4                   ; 0x8baa
    mov ax, 0x11                     ; 0x8bad
    push ax                          ; 0x8bb0
    mov ax, 6                        ; 0x8bb1
    push ax                          ; 0x8bb4
    call api_idx_0016_2              ; 0x8bb5
    add sp, byte 4                   ; 0x8bb8
    mov ax, word [bp + 0x6]          ; 0x8bbb
    mov word [data_a5b8], ax         ; 0x8bbe
    mov word [data_a5b0], 0          ; 0x8bc1
    mov word [data_a4a4], 5          ; 0x8bc7
    mov word [data_a5d0], 0          ; 0x8bcd
    mov word [data_a5d2], 0xa0       ; 0x8bd3
    mov word [data_a5d4], 0x140      ; 0x8bd9
    mov word [data_a5d6], 0x1e0      ; 0x8bdf
    mov word [bp - 0x0002], 0        ; 0x8be5
@..api_idx_0002_9.l1:
    mov ax, word [bp - 0x0002]       ; 0x8bea
    shl ax, 1                        ; 0x8bed
    mov bx, ax                       ; 0x8bef
    mov word [bx - 0x5a26], 0x140    ; 0x8bf1
    mov ax, 0x10                     ; 0x8bf7
    push ax                          ; 0x8bfa
    call ds_dispatch_b7a9            ; 0x8bfb
    pop cx                           ; 0x8bfe
    add ax, strict word 4            ; 0x8bff
    mov cx, word [bp - 0x0002]       ; 0x8c02
    shl cx, 1                        ; 0x8c05
    mov bx, cx                       ; 0x8c07
    mov word [bx - 0x5a16], ax       ; 0x8c09
    inc word [bp - 0x0002]           ; 0x8c0d
    mov ax, word [bp - 0x0002]       ; 0x8c10
    cmp ax, strict word 8            ; 0x8c13
    jl short @..api_idx_0002_9.l1    ; 0x8c16
    mov word [data_a5e2], 0xff9c     ; 0x8c18
    mov word [data_a5f2], 0x6e       ; 0x8c1e
    mov word [data_a600], 0          ; 0x8c24
    mov word [data_a5ae], 5          ; 0x8c2a
    les bx, word [data_0002]         ; 0x8c30
    mov ax, word [es:bx]             ; 0x8c34
    mov dx, word [es:bx + 0x2]       ; 0x8c37
    mov word [data_908c], dx         ; 0x8c3b
    mov word [data_908a], ax         ; 0x8c3f
    call api_idx_000a_3              ; 0x8c42
    mov ax, 0                        ; 0x8c45
    push ax                          ; 0x8c48
    push ax                          ; 0x8c49
    push ax                          ; 0x8c4a
    call ds_dispatch_f0d7            ; 0x8c4b
    add sp, byte 6                   ; 0x8c4e
    mov ax, 0xc7                     ; 0x8c51
    push ax                          ; 0x8c54
    mov ax, 0x13f                    ; 0x8c55
    push ax                          ; 0x8c58
    mov ax, 0                        ; 0x8c59
    push ax                          ; 0x8c5c
    push ax                          ; 0x8c5d
    call ds_dispatch_e8da            ; 0x8c5e
    add sp, byte 8                   ; 0x8c61
    mov ax, 0                        ; 0x8c64
    push ax                          ; 0x8c67
    call ds_dispatch_f0bd            ; 0x8c68
    pop cx                           ; 0x8c6b
    mov ax, 0                        ; 0x8c6c
    push ax                          ; 0x8c6f
    push word [bp + 0x4]             ; 0x8c70
    call loc_6f79                    ; 0x8c73
    add sp, byte 4                   ; 0x8c76
    mov ax, 0x11                     ; 0x8c79
    push ax                          ; 0x8c7c
    call math_loc_72c2               ; 0x8c7d
    pop cx                           ; 0x8c80
    mov ax, 0xf                      ; 0x8c81
    push ax                          ; 0x8c84
    call math_loc_72c2               ; 0x8c85
    pop cx                           ; 0x8c88
    mov ax, 0                        ; 0x8c89
    push ax                          ; 0x8c8c
    mov ax, 1                        ; 0x8c8d
    push ax                          ; 0x8c90
    push word [data_a5b4]            ; 0x8c91
    push word [data_a5b2]            ; 0x8c95
    call ds_dispatch_e942            ; 0x8c99
    add sp, byte 8                   ; 0x8c9c
    call loc_85f0                    ; 0x8c9f
    ret                              ; 0x8ca2
api_idx_0002_10:
    mov ax, 0xfffe                   ; 0x8ca3
    call ds_dispatch_f40b            ; 0x8ca6
    mov ax, 0                        ; 0x8ca9
    push ax                          ; 0x8cac
    mov ax, 0x9172                   ; 0x8cad
    push ax                          ; 0x8cb0
    call api_idx_0002_5              ; 0x8cb1
    add sp, byte 4                   ; 0x8cb4
    mov ax, 0                        ; 0x8cb7
    push ax                          ; 0x8cba
    mov ax, data_0002                ; 0x8cbb
    push ax                          ; 0x8cbe
    mov ax, 0x91                     ; 0x8cbf
    push ax                          ; 0x8cc2
    mov ax, 0x13f                    ; 0x8cc3
    push ax                          ; 0x8cc6
    mov ax, 0                        ; 0x8cc7
    push ax                          ; 0x8cca
    push ax                          ; 0x8ccb
    call ds_dispatch_e935            ; 0x8ccc
    add sp, byte 0x0c                ; 0x8ccf
    mov word [data_a5b4], dx         ; 0x8cd2
    mov word [data_a5b2], ax         ; 0x8cd6
    mov ax, 0xf                      ; 0x8cd9
    push ax                          ; 0x8cdc
    mov ax, 0xd                      ; 0x8cdd
    push ax                          ; 0x8ce0
    call api_idx_0016_2              ; 0x8ce1
    add sp, byte 4                   ; 0x8ce4
    mov ax, word [bp + 0x6]          ; 0x8ce7
    mov word [data_a5b6], ax         ; 0x8cea
    mov ax, 0x917f                   ; 0x8ced
    push ax                          ; 0x8cf0
    mov ax, 0xa5c6                   ; 0x8cf1
    push ax                          ; 0x8cf4
    call ds_dispatch_f364            ; 0x8cf5
    add sp, byte 4                   ; 0x8cf8
    mov word [data_a5ce], 0          ; 0x8cfb
    mov word [data_a5fa], 0          ; 0x8d01
    mov word [data_a5b0], 0          ; 0x8d07
    mov word [data_a4a4], 6          ; 0x8d0d
    mov word [data_a5ae], 5          ; 0x8d13
    les bx, word [data_0002]         ; 0x8d19
    mov ax, word [es:bx]             ; 0x8d1d
    mov dx, word [es:bx + 0x2]       ; 0x8d20
    mov word [data_908c], dx         ; 0x8d24
    mov word [data_908a], ax         ; 0x8d28
    call api_idx_000a_3              ; 0x8d2b
    mov ax, 0                        ; 0x8d2e
    push ax                          ; 0x8d31
    push ax                          ; 0x8d32
    push ax                          ; 0x8d33
    call ds_dispatch_f0d7            ; 0x8d34
    add sp, byte 6                   ; 0x8d37
    mov ax, 0xc7                     ; 0x8d3a
    push ax                          ; 0x8d3d
    mov ax, 0x13f                    ; 0x8d3e
    push ax                          ; 0x8d41
    mov ax, 0                        ; 0x8d42
    push ax                          ; 0x8d45
    push ax                          ; 0x8d46
    call ds_dispatch_e8da            ; 0x8d47
    add sp, byte 8                   ; 0x8d4a
    mov ax, 0                        ; 0x8d4d
    push ax                          ; 0x8d50
    call ds_dispatch_f0bd            ; 0x8d51
    pop cx                           ; 0x8d54
    mov ax, 0                        ; 0x8d55
    push ax                          ; 0x8d58
    push word [bp + 0x4]             ; 0x8d59
    call loc_6f79                    ; 0x8d5c
    add sp, byte 4                   ; 0x8d5f
    mov ax, 0xf                      ; 0x8d62
    push ax                          ; 0x8d65
    call math_loc_72c2               ; 0x8d66
    pop cx                           ; 0x8d69
    mov ax, 0                        ; 0x8d6a
    push ax                          ; 0x8d6d
    mov ax, 1                        ; 0x8d6e
    push ax                          ; 0x8d71
    push word [data_a5b4]            ; 0x8d72
    push word [data_a5b2]            ; 0x8d76
    call ds_dispatch_e942            ; 0x8d7a
    add sp, byte 8                   ; 0x8d7d
    call loc_85f0                    ; 0x8d80
    ret                              ; 0x8d83
api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x8d84
    call ds_dispatch_f40b            ; 0x8d87
    mov ax, 0                        ; 0x8d8a
    push ax                          ; 0x8d8d
    mov ax, 0x9186                   ; 0x8d8e
    push ax                          ; 0x8d91
    call api_idx_0002_5              ; 0x8d92
    add sp, byte 4                   ; 0x8d95
    mov ax, 0                        ; 0x8d98
    push ax                          ; 0x8d9b
    mov ax, data_0002                ; 0x8d9c
    push ax                          ; 0x8d9f
    mov ax, 0x91                     ; 0x8da0
    push ax                          ; 0x8da3
    mov ax, 0x13f                    ; 0x8da4
    push ax                          ; 0x8da7
    mov ax, 0                        ; 0x8da8
    push ax                          ; 0x8dab
    push ax                          ; 0x8dac
    call ds_dispatch_e935            ; 0x8dad
    add sp, byte 0x0c                ; 0x8db0
    mov word [data_a5b4], dx         ; 0x8db3
    mov word [data_a5b2], ax         ; 0x8db7
    mov ax, 0xf                      ; 0x8dba
    push ax                          ; 0x8dbd
    mov ax, 0xc                      ; 0x8dbe
    push ax                          ; 0x8dc1
    call api_idx_0016_2              ; 0x8dc2
    add sp, byte 4                   ; 0x8dc5
    mov ax, 0x9193                   ; 0x8dc8
    push ax                          ; 0x8dcb
    mov ax, 0xa5c6                   ; 0x8dcc
    push ax                          ; 0x8dcf
    call ds_dispatch_f364            ; 0x8dd0
    add sp, byte 4                   ; 0x8dd3
    mov word [data_a5fc], 0          ; 0x8dd6
    mov word [data_a5ce], 0          ; 0x8ddc
    mov word [data_a5fa], 0          ; 0x8de2
    mov word [data_a5fe], 0          ; 0x8de8
    mov word [data_a5b0], 0          ; 0x8dee
    mov word [data_a4a4], 7          ; 0x8df4
    mov word [data_a5ae], 5          ; 0x8dfa
    les bx, word [data_0002]         ; 0x8e00
    mov ax, word [es:bx]             ; 0x8e04
    mov dx, word [es:bx + 0x2]       ; 0x8e07
    mov word [data_908c], dx         ; 0x8e0b
    mov word [data_908a], ax         ; 0x8e0f
    call api_idx_000a_3              ; 0x8e12
    mov ax, 0                        ; 0x8e15
    push ax                          ; 0x8e18
    push ax                          ; 0x8e19
    push ax                          ; 0x8e1a
    call ds_dispatch_f0d7            ; 0x8e1b
    add sp, byte 6                   ; 0x8e1e
    mov ax, 0xc7                     ; 0x8e21
    push ax                          ; 0x8e24
    mov ax, 0x13f                    ; 0x8e25
    push ax                          ; 0x8e28
    mov ax, 0                        ; 0x8e29
    push ax                          ; 0x8e2c
    push ax                          ; 0x8e2d
    call ds_dispatch_e8da            ; 0x8e2e
    add sp, byte 8                   ; 0x8e31
    mov ax, 0                        ; 0x8e34
    push ax                          ; 0x8e37
    call ds_dispatch_f0bd            ; 0x8e38
    pop cx                           ; 0x8e3b
    mov ax, 0                        ; 0x8e3c
    push ax                          ; 0x8e3f
    push word [bp + 0x4]             ; 0x8e40
    call loc_6f79                    ; 0x8e43
    add sp, byte 4                   ; 0x8e46
    mov ax, 0xf                      ; 0x8e49
    push ax                          ; 0x8e4c
    call math_loc_72c2               ; 0x8e4d
    pop cx                           ; 0x8e50
    mov ax, 0                        ; 0x8e51
    push ax                          ; 0x8e54
    mov ax, 1                        ; 0x8e55
    push ax                          ; 0x8e58
    push word [data_a5b4]            ; 0x8e59
    push word [data_a5b2]            ; 0x8e5d
    call ds_dispatch_e942            ; 0x8e61
    add sp, byte 8                   ; 0x8e64
    call loc_85f0                    ; 0x8e67
    ret                              ; 0x8e6a
api_idx_0002_12:
    mov ax, 0xfffe                   ; 0x8e6b
    call ds_dispatch_f40b            ; 0x8e6e
    mov ax, 0                        ; 0x8e71
    push ax                          ; 0x8e74
    mov ax, 0x919a                   ; 0x8e75
    push ax                          ; 0x8e78
    call api_idx_0002_5              ; 0x8e79
    add sp, byte 4                   ; 0x8e7c
    mov ax, 0                        ; 0x8e7f
    push ax                          ; 0x8e82
    mov ax, data_0002                ; 0x8e83
    push ax                          ; 0x8e86
    mov ax, 0x91                     ; 0x8e87
    push ax                          ; 0x8e8a
    mov ax, 0x13f                    ; 0x8e8b
    push ax                          ; 0x8e8e
    mov ax, 0                        ; 0x8e8f
    push ax                          ; 0x8e92
    push ax                          ; 0x8e93
    call ds_dispatch_e935            ; 0x8e94
    add sp, byte 0x0c                ; 0x8e97
    mov word [data_a5b4], dx         ; 0x8e9a
    mov word [data_a5b2], ax         ; 0x8e9e
    mov ax, 0xf                      ; 0x8ea1
    push ax                          ; 0x8ea4
    mov ax, math_loc_000e            ; 0x8ea5
    push ax                          ; 0x8ea8
    call api_idx_0016_2              ; 0x8ea9
    add sp, byte 4                   ; 0x8eac
    mov ax, 0x10                     ; 0x8eaf
    push ax                          ; 0x8eb2
    mov ax, 0xf                      ; 0x8eb3
    push ax                          ; 0x8eb6
    call api_idx_0016_2              ; 0x8eb7
    add sp, byte 4                   ; 0x8eba
    mov ax, word [bp + 0x6]          ; 0x8ebd
    mov word [data_a5b8], ax         ; 0x8ec0
    mov ax, word [bp + 0x8]          ; 0x8ec3
    mov word [data_a5ba], ax         ; 0x8ec6
    mov ax, 0x91a7                   ; 0x8ec9
    push ax                          ; 0x8ecc
    mov ax, 0xa5c6                   ; 0x8ecd
    push ax                          ; 0x8ed0
    call ds_dispatch_f364            ; 0x8ed1
    add sp, byte 4                   ; 0x8ed4
    mov word [data_a5ce], 0          ; 0x8ed7
    mov word [data_a5fa], 0          ; 0x8edd
    mov word [data_a5fc], 0          ; 0x8ee3
    mov word [data_a5fe], 0          ; 0x8ee9
    mov word [data_a5b0], 0          ; 0x8eef
    mov word [data_a4a4], 8          ; 0x8ef5
    mov word [data_a5ae], 5          ; 0x8efb
    les bx, word [data_0002]         ; 0x8f01
    mov ax, word [es:bx]             ; 0x8f05
    mov dx, word [es:bx + 0x2]       ; 0x8f08
    mov word [data_908c], dx         ; 0x8f0c
    mov word [data_908a], ax         ; 0x8f10
    call api_idx_000a_3              ; 0x8f13
    mov ax, 0                        ; 0x8f16
    push ax                          ; 0x8f19
    push ax                          ; 0x8f1a
    push ax                          ; 0x8f1b
    call ds_dispatch_f0d7            ; 0x8f1c
    add sp, byte 6                   ; 0x8f1f
    mov ax, 0xc7                     ; 0x8f22
    push ax                          ; 0x8f25
    mov ax, 0x13f                    ; 0x8f26
    push ax                          ; 0x8f29
    mov ax, 0                        ; 0x8f2a
    push ax                          ; 0x8f2d
    push ax                          ; 0x8f2e
    call ds_dispatch_e8da            ; 0x8f2f
    add sp, byte 8                   ; 0x8f32
    mov ax, 0                        ; 0x8f35
    push ax                          ; 0x8f38
    call ds_dispatch_f0bd            ; 0x8f39
    pop cx                           ; 0x8f3c
    mov ax, 0                        ; 0x8f3d
    push ax                          ; 0x8f40
    push word [bp + 0x4]             ; 0x8f41
    call loc_6f79                    ; 0x8f44
    add sp, byte 4                   ; 0x8f47
    mov ax, 0xf                      ; 0x8f4a
    push ax                          ; 0x8f4d
    call math_loc_72c2               ; 0x8f4e
    pop cx                           ; 0x8f51
    mov ax, 0x10                     ; 0x8f52
    push ax                          ; 0x8f55
    call math_loc_72c2               ; 0x8f56
    pop cx                           ; 0x8f59
    mov ax, 0                        ; 0x8f5a
    push ax                          ; 0x8f5d
    mov ax, 1                        ; 0x8f5e
    push ax                          ; 0x8f61
    push word [data_a5b4]            ; 0x8f62
    push word [data_a5b2]            ; 0x8f66
    call ds_dispatch_e942            ; 0x8f6a
    add sp, byte 8                   ; 0x8f6d
    call loc_85f0                    ; 0x8f70
    ret                              ; 0x8f73
api_idx_0002_13:
    mov ax, 0xfffe                   ; 0x8f74
    call ds_dispatch_f40b            ; 0x8f77
    call loc_85f0                    ; 0x8f7a
    cmp word [data_0e32], byte 1     ; 0x8f7d
    jne short @..api_idx_0002_13.l1  ; 0x8f82
    db 0xe8, 0xb2, 0x60 ; call 0xf039
@..api_idx_0002_13.l1:
    mov word [data_0e32], 0          ; 0x8f87
    call ds_dispatch_d9a6            ; 0x8f8d
    mov word [data_8450], ax         ; 0x8f90
    test ax, ax                      ; 0x8f93
    je short @..api_idx_0002_13.l2   ; 0x8f95
    mov ax, 0                        ; 0x8f97
    push ax                          ; 0x8f9a
    mov ax, 5                        ; 0x8f9b
    push ax                          ; 0x8f9e
    call ds_dispatch_d7e7            ; 0x8f9f
    add sp, byte 4                   ; 0x8fa2
    mov ax, word [data_0116]         ; 0x8fa5
    mov word [data_844e], ax         ; 0x8fa8
    mov ax, 1                        ; 0x8fab
    push ax                          ; 0x8fae
    push word [data_844e]            ; 0x8faf
    mov ax, 0                        ; 0x8fb3
    push ax                          ; 0x8fb6
    call ds_dispatch_d964            ; 0x8fb7
    add sp, byte 6                   ; 0x8fba
    mov word [data_844c], ax         ; 0x8fbd
@..api_idx_0002_13.l2:
    mov ax, word [bp + 0x4]          ; 0x8fc0
    jmp near @..local.l367           ; 0x8fc3
@..api_idx_0002_13.l3:
    cmp word [bp + 0x4], byte 4      ; 0x8fc6
    jne short @..api_idx_0002_13.l4  ; 0x8fca
    mov ax, 0x63                     ; 0x8fcc
    push ax                          ; 0x8fcf
    push ax                          ; 0x8fd0
    mov ax, 1                        ; 0x8fd1
    push ax                          ; 0x8fd4
    mov ax, 0x63                     ; 0x8fd5
    push ax                          ; 0x8fd8
    mov ax, 0x7ba2                   ; 0x8fd9
    push ax                          ; 0x8fdc
    call loc_8634                    ; 0x8fdd
    add sp, byte 0x0a                ; 0x8fe0
    jmp short @..api_idx_0002_13.l5  ; 0x8fe3
@..api_idx_0002_13.l4:
    mov ax, 0x63                     ; 0x8fe5
    push ax                          ; 0x8fe8
    push ax                          ; 0x8fe9
    mov ax, 1                        ; 0x8fea
    push ax                          ; 0x8fed
    mov ax, 0                        ; 0x8fee
    push ax                          ; 0x8ff1
    mov ax, 0x7b0c                   ; 0x8ff2
    push ax                          ; 0x8ff5
    call loc_8634                    ; 0x8ff6
    add sp, byte 0x0a                ; 0x8ff9
@..api_idx_0002_13.l5:
    mov ax, 0x63                     ; 0x8ffc
    push ax                          ; 0x8fff
    push ax                          ; 0x9000
    mov ax, 0                        ; 0x9001
    push ax                          ; 0x9004
    mov ax, 0x7b20                   ; 0x9005
    push ax                          ; 0x9008
    call api_idx_0002_7              ; 0x9009
    add sp, byte 8                   ; 0x900c
    mov ax, 0x63                     ; 0x900f
    push ax                          ; 0x9012
    push ax                          ; 0x9013
    mov ax, 0                        ; 0x9014
    push ax                          ; 0x9017
    mov ax, 0x7b2a                   ; 0x9018
    push ax                          ; 0x901b
    call api_idx_0002_8              ; 0x901c
    add sp, byte 8                   ; 0x901f
    mov ax, 0                        ; 0x9022
    push ax                          ; 0x9025
    mov ax, 0x7b2f                   ; 0x9026
    push ax                          ; 0x9029
    call api_idx_0002_11             ; 0x902a
    add sp, byte 4                   ; 0x902d
    mov ax, 0                        ; 0x9030
    push ax                          ; 0x9033
    mov ax, 0x7b3e                   ; 0x9034
    push ax                          ; 0x9037
    call api_idx_0002_10             ; 0x9038
    add sp, byte 4                   ; 0x903b
    mov ax, 0x63                     ; 0x903e
    push ax                          ; 0x9041
    mov ax, 0                        ; 0x9042
    push ax                          ; 0x9045
    mov ax, 0x7b48                   ; 0x9046
    push ax                          ; 0x9049
    call api_idx_0002_12             ; 0x904a
    add sp, byte 6                   ; 0x904d
    mov ax, 0                        ; 0x9050
    push ax                          ; 0x9053
    mov ax, 0x63                     ; 0x9054
    push ax                          ; 0x9057
    mov ax, 0x7b4d                   ; 0x9058
    push ax                          ; 0x905b
    call api_idx_0002_12             ; 0x905c
    add sp, byte 6                   ; 0x905f
    mov ax, 0x63                     ; 0x9062
    push ax                          ; 0x9065
    push ax                          ; 0x9066
    mov ax, 0                        ; 0x9067
    push ax                          ; 0x906a
    cmp word [bp + 0x4], byte 4      ; 0x906b
    jne short @..api_idx_0002_13.l6  ; 0x906f
    mov ax, 0x63                     ; 0x9071
@..api_idx_0002_13.l6:
    push ax                          ; 0x9074
    mov ax, 0x7b52                   ; 0x9075
    push ax                          ; 0x9078
    call loc_8634                    ; 0x9079
    add sp, byte 0x0a                ; 0x907c
    mov ax, 0x63                     ; 0x907f
    push ax                          ; 0x9082
    mov ax, 0                        ; 0x9083
    push ax                          ; 0x9086
    mov ax, 1                        ; 0x9087
    push ax                          ; 0x908a
    mov ax, 0x7b5c                   ; 0x908b
    push ax                          ; 0x908e
    call api_idx_0002_7              ; 0x908f
    add sp, byte 8                   ; 0x9092
    mov ax, 0                        ; 0x9095
    push ax                          ; 0x9098
    mov ax, 0x7b66                   ; 0x9099
    push ax                          ; 0x909c
    call loc_8a74                    ; 0x909d
    add sp, byte 4                   ; 0x90a0
    mov ax, 0                        ; 0x90a3
    push ax                          ; 0x90a6
    mov ax, 0x7b70                   ; 0x90a7
    push ax                          ; 0x90aa
    call api_idx_0002_9              ; 0x90ab
    add sp, byte 4                   ; 0x90ae
    jmp near @..local.l371           ; 0x90b1
@..api_idx_0002_13.l7:
    mov ax, 0                        ; 0x90b4
    push ax                          ; 0x90b7
    push ax                          ; 0x90b8
    mov ax, 0x63                     ; 0x90b9
    push ax                          ; 0x90bc
    push ax                          ; 0x90bd
    mov ax, 0x7bd4                   ; 0x90be
    push ax                          ; 0x90c1
    call loc_8634                    ; 0x90c2
    add sp, byte 0x0a                ; 0x90c5
    mov ax, 0                        ; 0x90c8
    push ax                          ; 0x90cb
    mov ax, 0x63                     ; 0x90cc
    push ax                          ; 0x90cf
    mov ax, 0x7be3                   ; 0x90d0
    push ax                          ; 0x90d3
    call api_idx_0002_12             ; 0x90d4
    add sp, byte 6                   ; 0x90d7
    mov ax, 0x63                     ; 0x90da
    push ax                          ; 0x90dd
    push ax                          ; 0x90de
    mov ax, 0                        ; 0x90df
    push ax                          ; 0x90e2
    mov ax, 0x7be8                   ; 0x90e3
    push ax                          ; 0x90e6
    call api_idx_0002_7              ; 0x90e7
    add sp, byte 8                   ; 0x90ea
    mov ax, 0x63                     ; 0x90ed
    push ax                          ; 0x90f0
    mov ax, 0                        ; 0x90f1
    push ax                          ; 0x90f4
    mov ax, 0x7bf2                   ; 0x90f5
    push ax                          ; 0x90f8
    call api_idx_0002_12             ; 0x90f9
    add sp, byte 6                   ; 0x90fc
    mov ax, 0x63                     ; 0x90ff
    push ax                          ; 0x9102
    push ax                          ; 0x9103
    mov ax, 0                        ; 0x9104
    push ax                          ; 0x9107
    mov ax, 0x7bf7                   ; 0x9108
    push ax                          ; 0x910b
    call api_idx_0002_8              ; 0x910c
    add sp, byte 8                   ; 0x910f
    mov ax, 0                        ; 0x9112
    push ax                          ; 0x9115
    mov ax, 0x7bfc                   ; 0x9116
    push ax                          ; 0x9119
    call api_idx_0002_11             ; 0x911a
    add sp, byte 4                   ; 0x911d
    mov ax, 0                        ; 0x9120
    push ax                          ; 0x9123
    mov ax, 0x7c06                   ; 0x9124
    push ax                          ; 0x9127
    call api_idx_0002_10             ; 0x9128
    add sp, byte 4                   ; 0x912b
    mov ax, 0                        ; 0x912e
    push ax                          ; 0x9131
    push ax                          ; 0x9132
    mov ax, 0x63                     ; 0x9133
    push ax                          ; 0x9136
    push ax                          ; 0x9137
    mov ax, 0x7c0b                   ; 0x9138
    push ax                          ; 0x913b
    call loc_8634                    ; 0x913c
    add sp, byte 0x0a                ; 0x913f
    mov ax, 0x63                     ; 0x9142
    push ax                          ; 0x9145
    push ax                          ; 0x9146
    mov ax, 1                        ; 0x9147
    push ax                          ; 0x914a
    mov ax, 0                        ; 0x914b
    push ax                          ; 0x914e
    mov ax, 0x7c10                   ; 0x914f
    push ax                          ; 0x9152
    call loc_8634                    ; 0x9153
    add sp, byte 0x0a                ; 0x9156
    mov ax, 0                        ; 0x9159
    push ax                          ; 0x915c
    push ax                          ; 0x915d
    mov ax, 0x63                     ; 0x915e
    push ax                          ; 0x9161
    push ax                          ; 0x9162
    mov ax, 0x7c1a                   ; 0x9163
    push ax                          ; 0x9166
    call loc_8634                    ; 0x9167
    add sp, byte 0x0a                ; 0x916a
    mov ax, 0x63                     ; 0x916d
    push ax                          ; 0x9170
    mov ax, 0                        ; 0x9171
    push ax                          ; 0x9174
    mov ax, 1                        ; 0x9175
    push ax                          ; 0x9178
    mov ax, 0x7c24                   ; 0x9179
    push ax                          ; 0x917c
    call api_idx_0002_7              ; 0x917d
    add sp, byte 8                   ; 0x9180
    mov ax, 0                        ; 0x9183
    push ax                          ; 0x9186
    mov ax, 0x7c38                   ; 0x9187
    push ax                          ; 0x918a
    call loc_8a74                    ; 0x918b
    add sp, byte 4                   ; 0x918e
    mov ax, 0                        ; 0x9191
    push ax                          ; 0x9194
    mov ax, 0x7c42                   ; 0x9195
    push ax                          ; 0x9198
    call api_idx_0002_9              ; 0x9199
    add sp, byte 4                   ; 0x919c
    jmp near @..local.l371           ; 0x919f
@..local.l366:
    mov ax, 0                        ; 0x91a2
    push ax                          ; 0x91a5
    mov ax, 0x63                     ; 0x91a6
    push ax                          ; 0x91a9
    push ax                          ; 0x91aa
    push ax                          ; 0x91ab
    mov ax, 0x797c                   ; 0x91ac
    push ax                          ; 0x91af
    call loc_8634                    ; 0x91b0
    add sp, byte 0x0a                ; 0x91b3
    mov ax, 0x63                     ; 0x91b6
    push ax                          ; 0x91b9
    mov ax, 0                        ; 0x91ba
    push ax                          ; 0x91bd
    mov ax, 0x63                     ; 0x91be
    push ax                          ; 0x91c1
    mov ax, 0x7986                   ; 0x91c2
    push ax                          ; 0x91c5
    call api_idx_0002_7              ; 0x91c6
    add sp, byte 8                   ; 0x91c9
    mov ax, 1                        ; 0x91cc
    push ax                          ; 0x91cf
    push ax                          ; 0x91d0
    mov ax, 0                        ; 0x91d1
    push ax                          ; 0x91d4
    mov ax, 0x7990                   ; 0x91d5
    push ax                          ; 0x91d8
    call api_idx_0002_8              ; 0x91d9
    add sp, byte 8                   ; 0x91dc
    mov ax, 0x63                     ; 0x91df
    push ax                          ; 0x91e2
    mov ax, 0x799a                   ; 0x91e3
    push ax                          ; 0x91e6
    call api_idx_0002_10             ; 0x91e7
    add sp, byte 4                   ; 0x91ea
    mov ax, 0                        ; 0x91ed
    push ax                          ; 0x91f0
    mov ax, 0x79ae                   ; 0x91f1
    push ax                          ; 0x91f4
    call api_idx_0002_11             ; 0x91f5
    add sp, byte 4                   ; 0x91f8
    mov ax, 0x63                     ; 0x91fb
    push ax                          ; 0x91fe
    push ax                          ; 0x91ff
    mov ax, 0                        ; 0x9200
    push ax                          ; 0x9203
    mov ax, 0x79b8                   ; 0x9204
    push ax                          ; 0x9207
    call api_idx_0002_7              ; 0x9208
    add sp, byte 8                   ; 0x920b
    mov ax, 0                        ; 0x920e
    push ax                          ; 0x9211
    mov ax, 0x79c2                   ; 0x9212
    push ax                          ; 0x9215
    call api_idx_0002_11             ; 0x9216
    add sp, byte 4                   ; 0x9219
    mov ax, 0x63                     ; 0x921c
    push ax                          ; 0x921f
    mov ax, 0                        ; 0x9220
    push ax                          ; 0x9223
    mov ax, 0x79d6                   ; 0x9224
    push ax                          ; 0x9227
    call api_idx_0002_12             ; 0x9228
    add sp, byte 6                   ; 0x922b
    mov ax, 0                        ; 0x922e
    push ax                          ; 0x9231
    mov ax, 0x79e0                   ; 0x9232
    push ax                          ; 0x9235
    call api_idx_0002_11             ; 0x9236
    add sp, byte 4                   ; 0x9239
    mov ax, 0                        ; 0x923c
    push ax                          ; 0x923f
    mov ax, 0x79ea                   ; 0x9240
    push ax                          ; 0x9243
    call api_idx_0002_10             ; 0x9244
    add sp, byte 4                   ; 0x9247
    mov ax, 0x63                     ; 0x924a
    push ax                          ; 0x924d
    mov ax, 0                        ; 0x924e
    push ax                          ; 0x9251
    mov ax, 1                        ; 0x9252
    push ax                          ; 0x9255
    mov ax, 0x79f4                   ; 0x9256
    push ax                          ; 0x9259
    call api_idx_0002_7              ; 0x925a
    add sp, byte 8                   ; 0x925d
    mov ax, 0                        ; 0x9260
    push ax                          ; 0x9263
    mov ax, 0x79fe                   ; 0x9264
    push ax                          ; 0x9267
    call loc_8a74                    ; 0x9268
    add sp, byte 4                   ; 0x926b
    mov ax, 0                        ; 0x926e
    push ax                          ; 0x9271
    mov ax, 0x7a08                   ; 0x9272
    push ax                          ; 0x9275
    call api_idx_0002_9              ; 0x9276
    add sp, byte 4                   ; 0x9279
    jmp short @..local.l371          ; 0x927c
@..local.l367:
    cmp ax, strict word 1            ; 0x927e
    jne short @..local.l368          ; 0x9281
    jmp near @..api_idx_0002_13.l3   ; 0x9283
@..local.l368:
    cmp ax, strict word 2            ; 0x9286
    jne short @..local.l369          ; 0x9289
    jmp near @..api_idx_0002_13.l7   ; 0x928b
@..local.l369:
    cmp ax, strict word 3            ; 0x928e
    jne short @..local.l370          ; 0x9291
    jmp near @..local.l366           ; 0x9293
@..local.l370:
    cmp ax, strict word 4            ; 0x9296
    jne short @..local.l371          ; 0x9299
    jmp near @..api_idx_0002_13.l3   ; 0x929b
@..local.l371:
    cmp word [data_8450], byte 0     ; 0x929e
    je short @..local.l372           ; 0x92a3
    push word [data_844c]            ; 0x92a5
    push word [data_844e]            ; 0x92a9
    call ds_dispatch_d91b            ; 0x92ad
    add sp, byte 4                   ; 0x92b0
    mov ax, 0                        ; 0x92b3
    push ax                          ; 0x92b6
    call ds_dispatch_d907            ; 0x92b7
    pop cx                           ; 0x92ba
@..local.l372:
    test word [data_9056], 0x1000    ; 0x92bb
    je short @..local.l374           ; 0x92c1
    cmp byte [data_5989], 1          ; 0x92c3
    jne short @..local.l374          ; 0x92c8
    cmp word [data_0e32], byte 0     ; 0x92ca
    jne short @..local.l373          ; 0x92cf
    call ds_dispatch_f02c            ; 0x92d1
@..local.l373:
    mov word [data_0e32], 1          ; 0x92d4
@..local.l374:
    mov ax, 0                        ; 0x92da
    push ax                          ; 0x92dd
    mov ax, 0x91ae                   ; 0x92de
    push ax                          ; 0x92e1
    call api_idx_0002_5              ; 0x92e2
    add sp, byte 4                   ; 0x92e5
    mov word [bp - 0x0002], 0        ; 0x92e8
    jmp short @..local.l376          ; 0x92ed
@..local.l375:
    mov ax, 0                        ; 0x92ef
    push ax                          ; 0x92f2
    push word [bp - 0x0002]          ; 0x92f3
    call ds_dispatch_cb3a            ; 0x92f6
    add sp, byte 4                   ; 0x92f9
    inc word [bp - 0x0002]           ; 0x92fc
@..local.l376:
    mov ax, word [bp - 0x0002]       ; 0x92ff
    cmp ax, word [data_69c8]         ; 0x9302
    jl short @..local.l375           ; 0x9306
    mov ax, 0                        ; 0x9308
    push ax                          ; 0x930b
    push ax                          ; 0x930c
    push ax                          ; 0x930d
    call ds_dispatch_f0d7            ; 0x930e
    add sp, byte 6                   ; 0x9311
    mov ax, 0xc7                     ; 0x9314
    push ax                          ; 0x9317
    mov ax, 0x13f                    ; 0x9318
    push ax                          ; 0x931b
    mov ax, 0                        ; 0x931c
    push ax                          ; 0x931f
    push ax                          ; 0x9320
    call ds_dispatch_e8da            ; 0x9321
    add sp, byte 8                   ; 0x9324
    mov ax, 0                        ; 0x9327
    push ax                          ; 0x932a
    call ds_dispatch_f0bd            ; 0x932b
    pop cx                           ; 0x932e
    ret                              ; 0x932f

    db 0x8f, 0x06, 0xc4, 0x91, 0x59, 0x89, 0x26, 0xc0, 0x91, 0x89, 0x2e, 0xc2, 0x91, 0x89, 0x36, 0xbc
    db 0x91, 0x89, 0x3e, 0xbe, 0x91, 0xfc, 0xbf, 0xc6, 0x91, 0xb9, 0x02, 0xa6, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0xb5, 0x6c, 0x8b, 0x2e, 0xc2, 0x91, 0x8b, 0x26, 0xc0
    db 0x91, 0x8b, 0x36, 0xbc, 0x91, 0x8b, 0x3e, 0xbe, 0x91, 0x51, 0xff, 0x26, 0xc4, 0x91

string_loc_936e:
    pop bx                           ; 0x936e
    push di                          ; 0x936f
    push es                          ; 0x9370
    mov di, cs                       ; 0x9371
    mov es, di                       ; 0x9373
    mov di, bx                       ; 0x9375
    mov bx, cx                       ; 0x9377
    shl bx, 1                        ; 0x9379
    cld                              ; 0x937b
    repne scasw                      ; 0x937c
    mov cx, word [es:bx + di - 0x0004] ; 0x937e
    pop es                           ; 0x9382
    pop di                           ; 0x9383
    jmp cx                           ; 0x9384
string_loc_9386:
    push bp                          ; 0x9386
    mov bp, sp                       ; 0x9387
    cld                              ; 0x9389
    push si                          ; 0x938a
    push di                          ; 0x938b
    mov si, word [bp + 0x4]          ; 0x938c
    mov di, ds                       ; 0x938f
    mov es, di                       ; 0x9391
    mov di, word [bp + 0x6]          ; 0x9393
@..string_loc_936e.l1:
    lodsw                            ; 0x9396
    scasw                            ; 0x9397
    jne short @..local.l377          ; 0x9398
    test al, al                      ; 0x939a
    je short @..string_loc_936e.l2   ; 0x939c
    test ah, ah                      ; 0x939e
    jne short @..string_loc_936e.l1  ; 0x93a0
    jmp short @..string_loc_936e.l2  ; 0x93a2

    db 0x55, 0x8b, 0xec, 0x8b, 0x4e, 0x08, 0x8b, 0xd1, 0xd1, 0xe9, 0xfc, 0x56, 0x57, 0x8b, 0x76, 0x04
    db 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06, 0xe3, 0x0e, 0xad, 0xaf, 0x75, 0x18, 0x84, 0xc0, 0x74
    db 0x0e, 0x84, 0xe4, 0xe0, 0xf4, 0x74, 0x08, 0xf6, 0xc2, 0x01, 0x74, 0x03, 0xa6, 0x75, 0x13

@..string_loc_936e.l2:
    sub ax, ax                       ; 0x93d3
@..string_loc_936e.l3:
    pop di                           ; 0x93d5
    pop si                           ; 0x93d6
    pop bp                           ; 0x93d7
    ret                              ; 0x93d8
@..local.l377:
    sub di, byte 2                   ; 0x93d9
    scasb                            ; 0x93dc
    jne short @..local.l378          ; 0x93dd
    test al, al                      ; 0x93df
    je short @..string_loc_936e.l2   ; 0x93e1
    mov al, ah                       ; 0x93e3
    scasb                            ; 0x93e5
@..local.l378:
    sbb ax, ax                       ; 0x93e6
    js short @..string_loc_936e.l3   ; 0x93e8
    inc ax                           ; 0x93ea
    jmp short @..string_loc_936e.l3  ; 0x93eb

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

