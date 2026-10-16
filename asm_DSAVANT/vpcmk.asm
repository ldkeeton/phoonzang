; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpcmk.inc"
bits 16
%include "inc/host_symbols.inc"
%ifndef VBASE
VBASE equ __zres_end - 0x000e
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e + VBASE
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                                    ; o_magic: overlay signature (0x00f2)
    dw __zres_end                                ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)           ; 0x7023 ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x048c ; o_dsize: initialized data size
    dw 0x0268                                    ; o_bss: uninitialized data size
    dw string_loc_SMLM - IMAGE_BASE + __zres_end ; 0xbfd3 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_NSMG equ 0x4267 + VBASE
string_loc_436e equ 0x436e + VBASE
string_loc_5a60 equ 0x5a60 + VBASE
string_loc_5cb4 equ 0x5cb4 + VBASE
loc_RGUR equ 0x6e5f + VBASE

loc_QQGQ:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    call api_idx_002c_NHRR           ; 0x0014
    mov word [bss_830a], 4           ; 0x0017
    mov ax, 0                        ; 0x001d
    ret                              ; 0x0020
%include "shared/api_idx_0002_OOKN.asm"     ; 0x0021

%include "shared/api_idx_0002_SJMT.asm"     ; 0x0085

%include "shared/api_idx_0008_LLVT.asm"     ; 0x0104

%include "vpcmk/api_idx_0008_VRRI.asm"     ; 0x02bc

%include "vpcmk/loc_TRPK.asm"              ; 0x0445

%include "shared/api_idx_0058_GKGM.asm"     ; 0x0935

%include "vpcmk/api_idx_0038_LTUV.asm"     ; 0x0abb

%include "vpcmk/api_idx_0026_NRVO.asm"     ; 0x11f4

%include "shared/draw_party_slot_letters.asm" ; 0x16ea

api_idx_0004_RMVO.bss1 equ bss_953a
api_idx_0004_RMVO.bss2 equ bss_9538
%include "shared/api_idx_0004_RMVO.asm"     ; 0x1769

%include "shared/api_idx_0002_TIUI.asm"     ; 0x1819

%include "shared/api_idx_0002_UIHS.asm"     ; 0x1874

%include "vpcmk/api_idx_0010_GGGV.asm"     ; 0x18b5

%include "vpcmk/api_idx_0002_SSJN.asm"     ; 0x19ab

api_idx_000a_TITQ.bss1 equ bss_9542
api_idx_000a_TITQ.bss2 equ bss_9540
api_idx_000a_TITQ.bss3 equ bss_95aa
api_idx_000a_TITQ.bss4 equ bss_95ac
%include "shared/api_idx_000a_TITQ.asm"     ; 0x1a98

%include "vpcmk/api_idx_0054_RLST.asm"     ; 0x1b40

%include "shared/api_idx_0004_PMIU.asm"     ; 0x2090

%include "vpcmk/api_idx_0004_GRKI.asm"     ; 0x2144

%include "vpcmk/api_idx_0004_PTIQ.asm"     ; 0x2273

api_idx_0002_OGRO.bss1 equ bss_952e
api_idx_0002_OGRO.bss2 equ bss_952c
%include "shared/api_idx_0002_OGRO.asm"     ; 0x24c8

%include "vpcmk/api_idx_002e_JGHT.asm"     ; 0x2582

%include "vpcmk/api_idx_0032_HGIM.asm"     ; 0x26f1

%include "vpcmk/api_idx_0088_QLNT.asm"     ; 0x2c15

%include "vpcmk/api_idx_0004_VQQR.asm"     ; 0x2d63

%include "vpcmk/api_idx_000a_PQSU.asm"     ; 0x2dd4

%include "shared/loc_PTRP.asm"              ; 0x2e12

%include "vpcmk/loc_HRLN.asm"              ; 0x2e9e

%include "shared/api_idx_000c_JQMN.asm"     ; 0x2f3f

loc_SRQQ.bss1     equ bss_976c
loc_SRQQ.api_idx1 equ api_idx_000a_PQSU
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x2fd8

%include "vpcmk/api_idx_0050_NHHL.asm"     ; 0x3069

%include "vpcmk/api_idx_006e_LVOK.asm"     ; 0x3d59

loc_TTSP.bss1 equ bss_976c
loc_TTSP.bss2 equ bss_95ae
%include "shared/loc_TTSP.asm"              ; 0x3f87

%include "vpcmk/api_idx_0002_IRKS.asm"     ; 0x402d

%include "vpcmk/api_idx_0006_MKGN.asm"     ; 0x4081

%include "vpcmk/loc_JKKS.asm"              ; 0x4107

jumptable_4267_case_0:
    push word [bp + 0x8]             ; 0x4113
    mov ax, 0x92dc                   ; 0x4116
    push ax                          ; 0x4119
    push word [bp + 0x6]             ; 0x411a
    push word [bp + 0x4]             ; 0x411d
    call api_idx_0006_MKGN           ; 0x4120
    add sp, byte 8                   ; 0x4123
    jmp near @..loc_JKKS.l5          ; 0x4126
jumptable_4267_case_1:
    push word [bp + 0x8]             ; 0x4129
    mov ax, 0x92e5                   ; 0x412c
    push ax                          ; 0x412f
    push word [bp + 0x6]             ; 0x4130
    push word [bp + 0x4]             ; 0x4133
    call api_idx_0006_MKGN           ; 0x4136
    add sp, byte 8                   ; 0x4139
    jmp near @..loc_JKKS.l5          ; 0x413c
jumptable_4267_case_2:
    push word [bp + 0x8]             ; 0x413f
    mov ax, 0x92ee                   ; 0x4142
    push ax                          ; 0x4145
    push word [bp + 0x6]             ; 0x4146
    push word [bp + 0x4]             ; 0x4149
    call api_idx_0006_MKGN           ; 0x414c
    add sp, byte 8                   ; 0x414f
    jmp near @..loc_JKKS.l5          ; 0x4152
jumptable_4267_case_3:
    push word [bp + 0x8]             ; 0x4155
    mov ax, 0x92f7                   ; 0x4158
    push ax                          ; 0x415b
    push word [bp + 0x6]             ; 0x415c
    push word [bp + 0x4]             ; 0x415f
    call api_idx_0006_MKGN           ; 0x4162
    add sp, byte 8                   ; 0x4165
    jmp near @..loc_JKKS.l5          ; 0x4168
jumptable_4267_case_4:
    push word [bp + 0x8]             ; 0x416b
    mov ax, 0x9300                   ; 0x416e
    push ax                          ; 0x4171
    push word [bp + 0x6]             ; 0x4172
    push word [bp + 0x4]             ; 0x4175
    call api_idx_0006_MKGN           ; 0x4178
    add sp, byte 8                   ; 0x417b
    jmp near @..loc_JKKS.l5          ; 0x417e
jumptable_4267_case_5:
    push word [bp + 0x8]             ; 0x4181
    mov ax, 0x9309                   ; 0x4184
    push ax                          ; 0x4187
    push word [bp + 0x6]             ; 0x4188
    push word [bp + 0x4]             ; 0x418b
    call api_idx_0006_MKGN           ; 0x418e
    add sp, byte 8                   ; 0x4191
    jmp near @..loc_JKKS.l5          ; 0x4194
jumptable_4267_case_6:
    push word [bp + 0x8]             ; 0x4197
    mov ax, 0x9312                   ; 0x419a
    push ax                          ; 0x419d
    push word [bp + 0x6]             ; 0x419e
    push word [bp + 0x4]             ; 0x41a1
    call api_idx_0006_MKGN           ; 0x41a4
    add sp, byte 8                   ; 0x41a7
    jmp near @..loc_JKKS.l5          ; 0x41aa
jumptable_4267_case_7:
    push word [bp + 0x8]             ; 0x41ad
    mov ax, 0x931b                   ; 0x41b0
    push ax                          ; 0x41b3
    push word [bp + 0x6]             ; 0x41b4
    push word [bp + 0x4]             ; 0x41b7
    call api_idx_0006_MKGN           ; 0x41ba
    add sp, byte 8                   ; 0x41bd
    jmp near @..loc_JKKS.l5          ; 0x41c0
jumptable_4267_case_8:
    cmp word [bp + 0x8], byte 0      ; 0x41c3
    jne short @..loc_JKKS.l1         ; 0x41c7
    mov ax, 0x248                    ; 0x41c9
    imul word [bp + 0x4]             ; 0x41cc
    mov bx, ax                       ; 0x41cf
    cmp byte [bx + 0x5e2c], 1        ; 0x41d1
    jne short @..loc_JKKS.l2         ; 0x41d6
@..loc_JKKS.l1:
    push word [bp + 0x8]             ; 0x41d8
    mov ax, 0x9324                   ; 0x41db
    push ax                          ; 0x41de
    push word [bp + 0x6]             ; 0x41df
    push word [bp + 0x4]             ; 0x41e2
    call api_idx_0006_MKGN           ; 0x41e5
    add sp, byte 8                   ; 0x41e8
    jmp short @..loc_JKKS.l3         ; 0x41eb
@..loc_JKKS.l2:
    mov ax, word [bp + 0x6]          ; 0x41ed
    shl ax, 1                        ; 0x41f0
    mov bx, ax                       ; 0x41f2
    mov word [bx - 0x6892], 0        ; 0x41f4
@..loc_JKKS.l3:
    jmp near @..loc_JKKS.l5          ; 0x41fa
jumptable_4267_case_9:
    push word [bp + 0x8]             ; 0x41fd
    mov ax, 0x932d                   ; 0x4200
    push ax                          ; 0x4203
    push word [bp + 0x6]             ; 0x4204
    push word [bp + 0x4]             ; 0x4207
    call api_idx_0006_MKGN           ; 0x420a
    add sp, byte 8                   ; 0x420d
    jmp near @..loc_JKKS.l5          ; 0x4210
jumptable_4267_case_10:
    push word [bp + 0x8]             ; 0x4213
    mov ax, 0x9336                   ; 0x4216
    push ax                          ; 0x4219
    push word [bp + 0x6]             ; 0x421a
    push word [bp + 0x4]             ; 0x421d
    call api_idx_0006_MKGN           ; 0x4220
    add sp, byte 8                   ; 0x4223
    jmp short @..loc_JKKS.l5         ; 0x4226
jumptable_4267_case_11:
    push word [bp + 0x8]             ; 0x4228
    mov ax, 0x933f                   ; 0x422b
    push ax                          ; 0x422e
    push word [bp + 0x6]             ; 0x422f
    push word [bp + 0x4]             ; 0x4232
    call api_idx_0006_MKGN           ; 0x4235
    add sp, byte 8                   ; 0x4238
    jmp short @..loc_JKKS.l5         ; 0x423b
jumptable_4267_case_12:
    push word [bp + 0x8]             ; 0x423d
    mov ax, 0x9348                   ; 0x4240
    push ax                          ; 0x4243
    push word [bp + 0x6]             ; 0x4244
    push word [bp + 0x4]             ; 0x4247
    call api_idx_0006_MKGN           ; 0x424a
    add sp, byte 8                   ; 0x424d
    jmp short @..loc_JKKS.l5         ; 0x4250
jumptable_4267_case_13:
    push word [bp + 0x8]             ; 0x4252
    mov ax, 0x9351                   ; 0x4255
    push ax                          ; 0x4258
    push word [bp + 0x6]             ; 0x4259
    push word [bp + 0x4]             ; 0x425c
    call api_idx_0006_MKGN           ; 0x425f
    add sp, byte 8                   ; 0x4262
    jmp short @..loc_JKKS.l5         ; 0x4265
jumptable_4267:
    dw jumptable_4267_case_0 - IMAGE_BASE + 0x5055 ; 0x4267
    dw jumptable_4267_case_1 - IMAGE_BASE + 0x5055 ; 0x4269
    dw jumptable_4267_case_2 - IMAGE_BASE + 0x5055 ; 0x426b
    dw jumptable_4267_case_3 - IMAGE_BASE + 0x5055 ; 0x426d
    dw jumptable_4267_case_4 - IMAGE_BASE + 0x5055 ; 0x426f
    dw jumptable_4267_case_5 - IMAGE_BASE + 0x5055 ; 0x4271
    dw jumptable_4267_case_6 - IMAGE_BASE + 0x5055 ; 0x4273
    dw jumptable_4267_case_7 - IMAGE_BASE + 0x5055 ; 0x4275
    dw jumptable_4267_case_8 - IMAGE_BASE + 0x5055 ; 0x4277
    dw jumptable_4267_case_9 - IMAGE_BASE + 0x5055 ; 0x4279
    dw jumptable_4267_case_10 - IMAGE_BASE + 0x5055 ; 0x427b
    dw jumptable_4267_case_11 - IMAGE_BASE + 0x5055 ; 0x427d
    dw jumptable_4267_case_12 - IMAGE_BASE + 0x5055 ; 0x427f
    dw jumptable_4267_case_13 - IMAGE_BASE + 0x5055 ; 0x4281
@..loc_JKKS.l4:
    cmp ax, strict word 0xe          ; 0x4283
    jae short @..loc_JKKS.l5         ; 0x4286
    xchg bx, ax                      ; 0x4288
    shl bx, 1                        ; 0x4289
    jmp [cs:bx - 0x6d52]             ; 0x428b
@..loc_JKKS.l5:
    ret                              ; 0x4290
%include "vpcmk/api_idx_0002_MPHM.asm"     ; 0x4291

%include "vpcmk/loc_MMIM.asm"              ; 0x42b8

jumptable_436e_case_0:
    mov ax, 0x935a                   ; 0x42c4
    push ax                          ; 0x42c7
    push word [bp + 0x4]             ; 0x42c8
    call api_idx_0002_IRKS           ; 0x42cb
    add sp, byte 4                   ; 0x42ce
    jmp near @..loc_MMIM.l2          ; 0x42d1
jumptable_436e_case_1:
    mov ax, 0x9363                   ; 0x42d4
    push ax                          ; 0x42d7
    push word [bp + 0x4]             ; 0x42d8
    call api_idx_0002_IRKS           ; 0x42db
    add sp, byte 4                   ; 0x42de
    jmp near @..loc_MMIM.l2          ; 0x42e1
jumptable_436e_case_2:
    mov ax, 0x936c                   ; 0x42e4
    push ax                          ; 0x42e7
    push word [bp + 0x4]             ; 0x42e8
    call api_idx_0002_IRKS           ; 0x42eb
    add sp, byte 4                   ; 0x42ee
    jmp near @..loc_MMIM.l2          ; 0x42f1
jumptable_436e_case_3:
    mov ax, 0x9375                   ; 0x42f4
    push ax                          ; 0x42f7
    push word [bp + 0x4]             ; 0x42f8
    call api_idx_0002_IRKS           ; 0x42fb
    add sp, byte 4                   ; 0x42fe
    jmp near @..loc_MMIM.l2          ; 0x4301
jumptable_436e_case_4:
    mov ax, 0x937e                   ; 0x4304
    push ax                          ; 0x4307
    push word [bp + 0x4]             ; 0x4308
    call api_idx_0002_IRKS           ; 0x430b
    add sp, byte 4                   ; 0x430e
%include "vpcmk/loc_UQRH.asm"              ; 0x4311

jumptable_436e_case_5:
    mov ax, 0x9387                   ; 0x4314
    push ax                          ; 0x4317
    push word [bp + 0x4]             ; 0x4318
    call api_idx_0002_IRKS           ; 0x431b
    add sp, byte 4                   ; 0x431e
    jmp short @..loc_MMIM.l2         ; 0x4321
jumptable_436e_case_6:
    mov ax, 0x9390                   ; 0x4323
    push ax                          ; 0x4326
    push word [bp + 0x4]             ; 0x4327
    call api_idx_0002_IRKS           ; 0x432a
    add sp, byte 4                   ; 0x432d
    jmp short @..loc_MMIM.l2         ; 0x4330
jumptable_436e_case_7:
    mov ax, 0x9399                   ; 0x4332
    push ax                          ; 0x4335
    push word [bp + 0x4]             ; 0x4336
    call api_idx_0002_IRKS           ; 0x4339
    add sp, byte 4                   ; 0x433c
    jmp short @..loc_MMIM.l2         ; 0x433f
jumptable_436e_case_8:
    mov ax, 0x93a2                   ; 0x4341
    push ax                          ; 0x4344
    push word [bp + 0x4]             ; 0x4345
    call api_idx_0002_IRKS           ; 0x4348
    add sp, byte 4                   ; 0x434b
    jmp short @..loc_MMIM.l2         ; 0x434e
jumptable_436e_case_9:
    mov ax, 0x93ab                   ; 0x4350
    push ax                          ; 0x4353
    push word [bp + 0x4]             ; 0x4354
    call api_idx_0002_IRKS           ; 0x4357
    add sp, byte 4                   ; 0x435a
    jmp short @..loc_MMIM.l2         ; 0x435d
jumptable_436e_case_10:
    mov ax, 0x93b4                   ; 0x435f
    push ax                          ; 0x4362
    push word [bp + 0x4]             ; 0x4363
    call api_idx_0002_IRKS           ; 0x4366
    add sp, byte 4                   ; 0x4369
    jmp short @..loc_MMIM.l2         ; 0x436c
jumptable_436e:
    dw jumptable_436e_case_0 - IMAGE_BASE + 0x5055 ; 0x436e
    dw jumptable_436e_case_1 - IMAGE_BASE + 0x5055 ; 0x4370
    dw jumptable_436e_case_2 - IMAGE_BASE + 0x5055 ; 0x4372
    dw jumptable_436e_case_3 - IMAGE_BASE + 0x5055 ; 0x4374
    dw jumptable_436e_case_4 - IMAGE_BASE + 0x5055 ; 0x4376
    dw jumptable_436e_case_5 - IMAGE_BASE + 0x5055 ; 0x4378
    dw jumptable_436e_case_6 - IMAGE_BASE + 0x5055 ; 0x437a
    dw jumptable_436e_case_7 - IMAGE_BASE + 0x5055 ; 0x437c
    dw jumptable_436e_case_8 - IMAGE_BASE + 0x5055 ; 0x437e
    dw jumptable_436e_case_9 - IMAGE_BASE + 0x5055 ; 0x4380
    dw jumptable_436e_case_10 - IMAGE_BASE + 0x5055 ; 0x4382
@..loc_MMIM.l1:
    cmp ax, strict word 0xb          ; 0x4384
    jae short @..loc_MMIM.l2         ; 0x4387
    xchg bx, ax                      ; 0x4389
    shl bx, 1                        ; 0x438a
    jmp [cs:bx - 0x6c4b]             ; 0x438c
@..loc_MMIM.l2:
    ret                              ; 0x4391
%include "vpcmk/loc_HGUJ.asm"              ; 0x4392

%include "vpcmk/api_idx_007a_GTOG.asm"     ; 0x43bb

%include "vpcmk/api_idx_007a_HMNU.asm"     ; 0x4498

%include "vpcmk/api_idx_007c_MIHQ.asm"     ; 0x4585

%include "vpcmk/api_idx_006c_JNMM.asm"     ; 0x4697

%include "vpcmk/api_idx_0008_VHMQ.asm"     ; 0x4934

%include "vpcmk/loc_RPNT.asm"              ; 0x4aa1

%include "vpcmk/api_idx_0002_SLKJ.asm"     ; 0x4ade

%include "vpcmk/api_idx_004e_ITVQ.asm"     ; 0x4b05

%include "vpcmk/loc_LTLR.asm"              ; 0x4c82

jumptable_4e83_case_0:
    mov ax, 0x8d                     ; 0x4cc6
    push ax                          ; 0x4cc9
    mov ax, 0x82                     ; 0x4cca
    push ax                          ; 0x4ccd
    mov ax, 0x84                     ; 0x4cce
    push ax                          ; 0x4cd1
    mov ax, 0x87                     ; 0x4cd2
    push ax                          ; 0x4cd5
    mov ax, 8                        ; 0x4cd6
    push ax                          ; 0x4cd9
    push word [bp + 0x4]             ; 0x4cda
    call loc_VPRH                    ; 0x4cdd
    add sp, byte 0x0c                ; 0x4ce0
    jmp near @..loc_LTLR.l3          ; 0x4ce3
jumptable_4e83_case_1:
    mov ax, 0x14f                    ; 0x4ce6
    push ax                          ; 0x4ce9
    mov ax, 0x82                     ; 0x4cea
    push ax                          ; 0x4ced
    mov ax, 0x7b                     ; 0x4cee
    push ax                          ; 0x4cf1
    mov ax, 0x7a                     ; 0x4cf2
    push ax                          ; 0x4cf5
    mov ax, 0x12                     ; 0x4cf6
    push ax                          ; 0x4cf9
    push word [bp + 0x4]             ; 0x4cfa
    call loc_VPRH                    ; 0x4cfd
    add sp, byte 0x0c                ; 0x4d00
    jmp near @..loc_LTLR.l3          ; 0x4d03
jumptable_4e83_case_2:
    mov ax, 0x13c                    ; 0x4d06
    push ax                          ; 0x4d09
    mov ax, 0x82                     ; 0x4d0a
    push ax                          ; 0x4d0d
    mov ax, 0x7b                     ; 0x4d0e
    push ax                          ; 0x4d11
    mov ax, 0x7a                     ; 0x4d12
    push ax                          ; 0x4d15
    mov ax, 0x18                     ; 0x4d16
    push ax                          ; 0x4d19
    push word [bp + 0x4]             ; 0x4d1a
    call loc_VPRH                    ; 0x4d1d
    add sp, byte 0x0c                ; 0x4d20
    jmp near @..loc_LTLR.l3          ; 0x4d23
jumptable_4e83_case_3:
    mov ax, 0x1b                     ; 0x4d26
    push ax                          ; 0x4d29
    mov ax, 0x83                     ; 0x4d2a
    push ax                          ; 0x4d2d
    mov ax, 0x79                     ; 0x4d2e
    push ax                          ; 0x4d31
    mov ax, 0x78                     ; 0x4d32
    push ax                          ; 0x4d35
    mov ax, 6                        ; 0x4d36
    push ax                          ; 0x4d39
    push word [bp + 0x4]             ; 0x4d3a
    call loc_VPRH                    ; 0x4d3d
    add sp, byte 0x0c                ; 0x4d40
    jmp near @..loc_LTLR.l3          ; 0x4d43
jumptable_4e83_case_4:
    mov ax, 0x83                     ; 0x4d46
    push ax                          ; 0x4d49
    mov ax, 0x7f                     ; 0x4d4a
    push ax                          ; 0x4d4d
    mov ax, 0x7e                     ; 0x4d4e
    push ax                          ; 0x4d51
    mov ax, 0x21                     ; 0x4d52
    push ax                          ; 0x4d55
    mov ax, 0x1f                     ; 0x4d56
    push ax                          ; 0x4d59
    push word [bp + 0x4]             ; 0x4d5a
    call loc_VPRH                    ; 0x4d5d
    add sp, byte 0x0c                ; 0x4d60
    jmp near @..loc_LTLR.l3          ; 0x4d63
jumptable_4e83_case_5:
    mov ax, 0x147                    ; 0x4d66
    push ax                          ; 0x4d69
    mov ax, 0x82                     ; 0x4d6a
    push ax                          ; 0x4d6d
    mov ax, 0x7b                     ; 0x4d6e
    push ax                          ; 0x4d71
    mov ax, 0x7a                     ; 0x4d72
    push ax                          ; 0x4d75
    mov ax, 0x12                     ; 0x4d76
    push ax                          ; 0x4d79
    push word [bp + 0x4]             ; 0x4d7a
    call loc_VPRH                    ; 0x4d7d
    add sp, byte 0x0c                ; 0x4d80
    jmp near @..loc_LTLR.l3          ; 0x4d83
jumptable_4e83_case_6:
    mov ax, 0x37                     ; 0x4d86
    push ax                          ; 0x4d89
    mov ax, 0x79                     ; 0x4d8a
    push ax                          ; 0x4d8d
    mov ax, 0x78                     ; 0x4d8e
    push ax                          ; 0x4d91
    mov ax, 0x1e                     ; 0x4d92
    push ax                          ; 0x4d95
    mov ax, 0x1d                     ; 0x4d96
    push ax                          ; 0x4d99
    push word [bp + 0x4]             ; 0x4d9a
    call loc_VPRH                    ; 0x4d9d
    add sp, byte 0x0c                ; 0x4da0
    jmp near @..loc_LTLR.l3          ; 0x4da3
jumptable_4e83_case_7:
    mov ax, 0xf1                     ; 0x4da6
    push ax                          ; 0x4da9
    mov ax, 0x82                     ; 0x4daa
    push ax                          ; 0x4dad
    mov ax, 0x7b                     ; 0x4dae
    push ax                          ; 0x4db1
    mov ax, 0x7a                     ; 0x4db2
    push ax                          ; 0x4db5
    mov ax, 1                        ; 0x4db6
    push ax                          ; 0x4db9
    push word [bp + 0x4]             ; 0x4dba
    call loc_VPRH                    ; 0x4dbd
    add sp, byte 0x0c                ; 0x4dc0
    jmp near @..loc_LTLR.l3          ; 0x4dc3
jumptable_4e83_case_8:
    mov ax, 0x8a                     ; 0x4dc6
    push ax                          ; 0x4dc9
    mov ax, 0x82                     ; 0x4dca
    push ax                          ; 0x4dcd
    mov ax, 0x7d                     ; 0x4dce
    push ax                          ; 0x4dd1
    mov ax, 0x7c                     ; 0x4dd2
    push ax                          ; 0x4dd5
    mov ax, 0x16                     ; 0x4dd6
    push ax                          ; 0x4dd9
    push word [bp + 0x4]             ; 0x4dda
    call loc_VPRH                    ; 0x4ddd
    add sp, byte 0x0c                ; 0x4de0
    jmp near @..loc_LTLR.l3          ; 0x4de3
jumptable_4e83_case_9:
    mov ax, 0xa3                     ; 0x4de6
    push ax                          ; 0x4de9
    mov ax, 0x82                     ; 0x4dea
    push ax                          ; 0x4ded
    mov ax, 0x7b                     ; 0x4dee
    push ax                          ; 0x4df1
    mov ax, 0x7a                     ; 0x4df2
    push ax                          ; 0x4df5
    mov ax, 0x18                     ; 0x4df6
    push ax                          ; 0x4df9
    push word [bp + 0x4]             ; 0x4dfa
    call loc_VPRH                    ; 0x4dfd
    add sp, byte 0x0c                ; 0x4e00
    jmp near @..loc_LTLR.l3          ; 0x4e03
jumptable_4e83_case_10:
    mov ax, 0x8f                     ; 0x4e06
    push ax                          ; 0x4e09
    mov ax, 0x83                     ; 0x4e0a
    push ax                          ; 0x4e0d
    mov ax, 0x86                     ; 0x4e0e
    push ax                          ; 0x4e11
    mov ax, 0x85                     ; 0x4e12
    push ax                          ; 0x4e15
    mov ax, 9                        ; 0x4e16
    push ax                          ; 0x4e19
    push word [bp + 0x4]             ; 0x4e1a
    call loc_VPRH                    ; 0x4e1d
    add sp, byte 0x0c                ; 0x4e20
    jmp near @..loc_LTLR.l3          ; 0x4e23
jumptable_4e83_case_11:
    mov ax, 0x82                     ; 0x4e26
    push ax                          ; 0x4e29
    mov ax, 0x7b                     ; 0x4e2a
    push ax                          ; 0x4e2d
    mov ax, 0x7a                     ; 0x4e2e
    push ax                          ; 0x4e31
    mov ax, 4                        ; 0x4e32
    push ax                          ; 0x4e35
    mov ax, 0xa                      ; 0x4e36
    push ax                          ; 0x4e39
    push word [bp + 0x4]             ; 0x4e3a
    call loc_VPRH                    ; 0x4e3d
    add sp, byte 0x0c                ; 0x4e40
    jmp short @..loc_LTLR.l3         ; 0x4e43
jumptable_4e83_case_12:
    mov ax, 0x82                     ; 0x4e45
    push ax                          ; 0x4e48
    mov ax, 0x7b                     ; 0x4e49
    push ax                          ; 0x4e4c
    mov ax, 0x7a                     ; 0x4e4d
    push ax                          ; 0x4e50
    mov ax, 0x2f                     ; 0x4e51
    push ax                          ; 0x4e54
    mov ax, 0x19                     ; 0x4e55
    push ax                          ; 0x4e58
    push word [bp + 0x4]             ; 0x4e59
    call loc_VPRH                    ; 0x4e5c
    add sp, byte 0x0c                ; 0x4e5f
    jmp short @..loc_LTLR.l3         ; 0x4e62
jumptable_4e83_case_13:
    mov ax, 0xa1                     ; 0x4e64
    push ax                          ; 0x4e67
    mov ax, 0x9f                     ; 0x4e68
    push ax                          ; 0x4e6b
    mov ax, 0x9e                     ; 0x4e6c
    push ax                          ; 0x4e6f
    mov ax, 0xa0                     ; 0x4e70
    push ax                          ; 0x4e73
    mov ax, 0x2f                     ; 0x4e74
    push ax                          ; 0x4e77
    push word [bp + 0x4]             ; 0x4e78
    call loc_VPRH                    ; 0x4e7b
    add sp, byte 0x0c                ; 0x4e7e
    jmp short @..loc_LTLR.l3         ; 0x4e81
jumptable_4e83:
    dw jumptable_4e83_case_0 - IMAGE_BASE + 0x5055 ; 0x4e83
    dw jumptable_4e83_case_1 - IMAGE_BASE + 0x5055 ; 0x4e85
    dw jumptable_4e83_case_2 - IMAGE_BASE + 0x5055 ; 0x4e87
    dw jumptable_4e83_case_3 - IMAGE_BASE + 0x5055 ; 0x4e89
    dw jumptable_4e83_case_4 - IMAGE_BASE + 0x5055 ; 0x4e8b
    dw jumptable_4e83_case_5 - IMAGE_BASE + 0x5055 ; 0x4e8d
    dw jumptable_4e83_case_6 - IMAGE_BASE + 0x5055 ; 0x4e8f
    dw jumptable_4e83_case_7 - IMAGE_BASE + 0x5055 ; 0x4e91
    dw jumptable_4e83_case_8 - IMAGE_BASE + 0x5055 ; 0x4e93
    dw jumptable_4e83_case_9 - IMAGE_BASE + 0x5055 ; 0x4e95
    dw jumptable_4e83_case_10 - IMAGE_BASE + 0x5055 ; 0x4e97
    dw jumptable_4e83_case_11 - IMAGE_BASE + 0x5055 ; 0x4e99
    dw jumptable_4e83_case_12 - IMAGE_BASE + 0x5055 ; 0x4e9b
    dw jumptable_4e83_case_13 - IMAGE_BASE + 0x5055 ; 0x4e9d
@..loc_LTLR.l2:
    cmp ax, strict word 0xe          ; 0x4e9f
    jae short @..loc_LTLR.l3         ; 0x4ea2
    xchg bx, ax                      ; 0x4ea4
    shl bx, 1                        ; 0x4ea5
    jmp [cs:bx - 0x6136]             ; 0x4ea7
@..loc_LTLR.l3:
    ret                              ; 0x4eac
%include "shared/loc_NJOH.asm"              ; 0x4ead

%include "shared/api_idx_0006_VJKJ.asm"     ; 0x4f00

%include "shared/api_idx_0002_KQIK.asm"     ; 0x4f95

%include "vpcmk/api_idx_0004_GHPT.asm"     ; 0x5087

%include "vpcmk/api_idx_001c_ITKQ.asm"     ; 0x5580

%include "vpcmk/api_idx_0002_USJO.asm"     ; 0x56b0

%include "vpcmk/loc_RMSR.asm"              ; 0x5706

jumptable_5a60_case_0:
    mov ax, 3                        ; 0x571d
    push ax                          ; 0x5720
    mov ax, 6                        ; 0x5721
    push ax                          ; 0x5724
    mov ax, 0xa                      ; 0x5725
    push ax                          ; 0x5728
    push word [bp + 0x4]             ; 0x5729
    call api_idx_001c_ITKQ           ; 0x572c
    add sp, byte 8                   ; 0x572f
    jmp near loc_PLIR                ; 0x5732
jumptable_5a60_case_1:
    mov ax, 0xc                      ; 0x5735
    push ax                          ; 0x5738
    mov ax, 4                        ; 0x5739
    push ax                          ; 0x573c
    mov ax, 3                        ; 0x573d
    push ax                          ; 0x5740
    push word [bp + 0x4]             ; 0x5741
    call api_idx_001c_ITKQ           ; 0x5744
    add sp, byte 8                   ; 0x5747
    mov ax, 2                        ; 0x574a
    push ax                          ; 0x574d
    mov ax, 3                        ; 0x574e
    push ax                          ; 0x5751
    push word [bp + 0x4]             ; 0x5752
    call api_idx_0002_USJO           ; 0x5755
    add sp, byte 6                   ; 0x5758
    push ax                          ; 0x575b
    mov ax, 0x248                    ; 0x575c
    imul word [bp + 0x4]             ; 0x575f
    mov bx, ax                       ; 0x5762
    pop ax                           ; 0x5764
    mov byte [bx + 0x5d8c], al       ; 0x5765
    jmp near loc_PLIR                ; 0x5769
jumptable_5a60_case_2:
    mov ax, 0xc                      ; 0x576c
    push ax                          ; 0x576f
    mov ax, 4                        ; 0x5770
    push ax                          ; 0x5773
    mov ax, 3                        ; 0x5774
    push ax                          ; 0x5777
    push word [bp + 0x4]             ; 0x5778
    call api_idx_001c_ITKQ           ; 0x577b
    add sp, byte 8                   ; 0x577e
    mov ax, 2                        ; 0x5781
    push ax                          ; 0x5784
    mov ax, 3                        ; 0x5785
    push ax                          ; 0x5788
    push word [bp + 0x4]             ; 0x5789
    call api_idx_0002_USJO           ; 0x578c
    add sp, byte 6                   ; 0x578f
    push ax                          ; 0x5792
    mov ax, 0x248                    ; 0x5793
    imul word [bp + 0x4]             ; 0x5796
    mov bx, ax                       ; 0x5799
    pop ax                           ; 0x579b
    mov byte [bx + 0x5d8a], al       ; 0x579c
    jmp near loc_PLIR                ; 0x57a0
jumptable_5a60_case_3:
    mov ax, 4                        ; 0x57a3
    push ax                          ; 0x57a6
    mov ax, 0xa                      ; 0x57a7
    push ax                          ; 0x57aa
    mov ax, 5                        ; 0x57ab
    push ax                          ; 0x57ae
    push word [bp + 0x4]             ; 0x57af
    call api_idx_001c_ITKQ           ; 0x57b2
    add sp, byte 8                   ; 0x57b5
    mov ax, 2                        ; 0x57b8
    push ax                          ; 0x57bb
    mov ax, 1                        ; 0x57bc
    push ax                          ; 0x57bf
    push word [bp + 0x4]             ; 0x57c0
    call api_idx_0002_USJO           ; 0x57c3
    add sp, byte 6                   ; 0x57c6
    push ax                          ; 0x57c9
    mov ax, 0x248                    ; 0x57ca
    imul word [bp + 0x4]             ; 0x57cd
    mov bx, ax                       ; 0x57d0
    pop ax                           ; 0x57d2
    mov byte [bx + 0x5d7c], al       ; 0x57d3
    jmp near loc_PLIR                ; 0x57d7
jumptable_5a60_case_4:
    mov ax, 5                        ; 0x57da
    push ax                          ; 0x57dd
    mov ax, 7                        ; 0x57de
    push ax                          ; 0x57e1
    push ax                          ; 0x57e2
    push word [bp + 0x4]             ; 0x57e3
    call api_idx_001c_ITKQ           ; 0x57e6
    add sp, byte 8                   ; 0x57e9
    mov ax, 3                        ; 0x57ec
    push ax                          ; 0x57ef
    mov ax, 0                        ; 0x57f0
    push ax                          ; 0x57f3
    push word [bp + 0x4]             ; 0x57f4
    call api_idx_0002_USJO           ; 0x57f7
    add sp, byte 6                   ; 0x57fa
    push ax                          ; 0x57fd
    mov ax, 0x248                    ; 0x57fe
    imul word [bp + 0x4]             ; 0x5801
    mov bx, ax                       ; 0x5804
    pop ax                           ; 0x5806
    mov byte [bx + 0x5d73], al       ; 0x5807
    mov ax, 3                        ; 0x580b
    push ax                          ; 0x580e
    mov ax, 1                        ; 0x580f
    push ax                          ; 0x5812
    push word [bp + 0x4]             ; 0x5813
    call api_idx_0002_USJO           ; 0x5816
    add sp, byte 6                   ; 0x5819
    push ax                          ; 0x581c
    mov ax, 0x248                    ; 0x581d
    imul word [bp + 0x4]             ; 0x5820
    mov bx, ax                       ; 0x5823
    pop ax                           ; 0x5825
    mov byte [bx + 0x5d78], al       ; 0x5826
    jmp near loc_PLIR                ; 0x582a
jumptable_5a60_case_6:
    mov ax, 6                        ; 0x582d
    push ax                          ; 0x5830
    mov ax, 7                        ; 0x5831
    push ax                          ; 0x5834
    mov ax, 6                        ; 0x5835
    push ax                          ; 0x5838
    push word [bp + 0x4]             ; 0x5839
    call api_idx_001c_ITKQ           ; 0x583c
    add sp, byte 8                   ; 0x583f
    mov ax, 2                        ; 0x5842
    push ax                          ; 0x5845
    mov ax, 1                        ; 0x5846
    push ax                          ; 0x5849
    push word [bp + 0x4]             ; 0x584a
    call api_idx_0002_USJO           ; 0x584d
    add sp, byte 6                   ; 0x5850
    push ax                          ; 0x5853
    mov ax, 0x248                    ; 0x5854
    imul word [bp + 0x4]             ; 0x5857
    mov bx, ax                       ; 0x585a
    pop ax                           ; 0x585c
    mov byte [bx + 0x5d79], al       ; 0x585d
    jmp near loc_PLIR                ; 0x5861
jumptable_5a60_case_5:
    mov ax, 0xc                      ; 0x5864
    push ax                          ; 0x5867
    mov ax, 4                        ; 0x5868
    push ax                          ; 0x586b
    mov ax, 3                        ; 0x586c
    push ax                          ; 0x586f
    push word [bp + 0x4]             ; 0x5870
    call api_idx_001c_ITKQ           ; 0x5873
    add sp, byte 8                   ; 0x5876
    mov ax, 2                        ; 0x5879
    push ax                          ; 0x587c
    mov ax, 3                        ; 0x587d
    push ax                          ; 0x5880
    push word [bp + 0x4]             ; 0x5881
    call api_idx_0002_USJO           ; 0x5884
    add sp, byte 6                   ; 0x5887
    push ax                          ; 0x588a
    mov ax, 0x248                    ; 0x588b
    imul word [bp + 0x4]             ; 0x588e
    mov bx, ax                       ; 0x5891
    pop ax                           ; 0x5893
    mov byte [bx + 0x5d89], al       ; 0x5894
    jmp near loc_PLIR                ; 0x5898
jumptable_5a60_case_7:
    mov ax, 0xc                      ; 0x589b
    push ax                          ; 0x589e
    mov ax, 4                        ; 0x589f
    push ax                          ; 0x58a2
    mov ax, 3                        ; 0x58a3
    push ax                          ; 0x58a6
    push word [bp + 0x4]             ; 0x58a7
    call api_idx_001c_ITKQ           ; 0x58aa
    add sp, byte 8                   ; 0x58ad
    mov ax, 2                        ; 0x58b0
    push ax                          ; 0x58b3
    mov ax, 3                        ; 0x58b4
    push ax                          ; 0x58b7
    push word [bp + 0x4]             ; 0x58b8
    call api_idx_0002_USJO           ; 0x58bb
    add sp, byte 6                   ; 0x58be
    push ax                          ; 0x58c1
    mov ax, 0x248                    ; 0x58c2
    imul word [bp + 0x4]             ; 0x58c5
    mov bx, ax                       ; 0x58c8
    pop ax                           ; 0x58ca
    mov byte [bx + 0x5d8b], al       ; 0x58cb
    jmp near loc_PLIR                ; 0x58cf
jumptable_5a60_case_9:
    mov ax, 0xd                      ; 0x58d2
    push ax                          ; 0x58d5
    mov ax, 3                        ; 0x58d6
    push ax                          ; 0x58d9
    push ax                          ; 0x58da
    push word [bp + 0x4]             ; 0x58db
    call api_idx_001c_ITKQ           ; 0x58de
    add sp, byte 8                   ; 0x58e1
    mov ax, 3                        ; 0x58e4
    push ax                          ; 0x58e7
    push ax                          ; 0x58e8
    push word [bp + 0x4]             ; 0x58e9
    call api_idx_0002_USJO           ; 0x58ec
    add sp, byte 6                   ; 0x58ef
    push ax                          ; 0x58f2
    mov ax, 0x248                    ; 0x58f3
    imul word [bp + 0x4]             ; 0x58f6
    mov bx, ax                       ; 0x58f9
    pop ax                           ; 0x58fb
    mov byte [bx + 0x5d8c], al       ; 0x58fc
    mov ax, 2                        ; 0x5900
    push ax                          ; 0x5903
    mov ax, 3                        ; 0x5904
    push ax                          ; 0x5907
    push word [bp + 0x4]             ; 0x5908
    call api_idx_0002_USJO           ; 0x590b
    add sp, byte 6                   ; 0x590e
    push ax                          ; 0x5911
    mov ax, 0x248                    ; 0x5912
    imul word [bp + 0x4]             ; 0x5915
    mov bx, ax                       ; 0x5918
    pop ax                           ; 0x591a
    mov byte [bx + 0x5d8a], al       ; 0x591b
    jmp near loc_PLIR                ; 0x591f
jumptable_5a60_case_8:
    mov ax, 5                        ; 0x5922
    push ax                          ; 0x5925
    push ax                          ; 0x5926
    mov ax, 9                        ; 0x5927
    push ax                          ; 0x592a
    push word [bp + 0x4]             ; 0x592b
    call api_idx_001c_ITKQ           ; 0x592e
    add sp, byte 8                   ; 0x5931
    mov ax, 3                        ; 0x5934
    push ax                          ; 0x5937
    mov ax, 0                        ; 0x5938
    push ax                          ; 0x593b
    push word [bp + 0x4]             ; 0x593c
    call api_idx_0002_USJO           ; 0x593f
    add sp, byte 6                   ; 0x5942
    push ax                          ; 0x5945
    mov ax, 0x248                    ; 0x5946
    imul word [bp + 0x4]             ; 0x5949
    mov bx, ax                       ; 0x594c
    pop ax                           ; 0x594e
    mov byte [bx + 0x5d70], al       ; 0x594f
    jmp near loc_PLIR                ; 0x5953
jumptable_5a60_case_10:
    mov ax, 5                        ; 0x5956
    push ax                          ; 0x5959
    push ax                          ; 0x595a
    mov ax, 9                        ; 0x595b
    push ax                          ; 0x595e
    push word [bp + 0x4]             ; 0x595f
    call api_idx_001c_ITKQ           ; 0x5962
    add sp, byte 8                   ; 0x5965
    mov ax, 3                        ; 0x5968
    push ax                          ; 0x596b
    push ax                          ; 0x596c
    push word [bp + 0x4]             ; 0x596d
    call api_idx_0002_USJO           ; 0x5970
    add sp, byte 6                   ; 0x5973
    push ax                          ; 0x5976
    mov ax, 0x248                    ; 0x5977
    imul word [bp + 0x4]             ; 0x597a
    mov bx, ax                       ; 0x597d
    pop ax                           ; 0x597f
    mov byte [bx + 0x5d88], al       ; 0x5980
    jmp near loc_PLIR                ; 0x5984
jumptable_5a60_case_11:
    mov ax, 5                        ; 0x5987
    push ax                          ; 0x598a
    push ax                          ; 0x598b
    mov ax, 9                        ; 0x598c
    push ax                          ; 0x598f
    push word [bp + 0x4]             ; 0x5990
    call api_idx_001c_ITKQ           ; 0x5993
    add sp, byte 8                   ; 0x5996
    mov ax, 2                        ; 0x5999
    push ax                          ; 0x599c
    mov ax, 0                        ; 0x599d
    push ax                          ; 0x59a0
    push word [bp + 0x4]             ; 0x59a1
    call api_idx_0002_USJO           ; 0x59a4
    add sp, byte 6                   ; 0x59a7
    push ax                          ; 0x59aa
    mov ax, 0x248                    ; 0x59ab
    imul word [bp + 0x4]             ; 0x59ae
    mov bx, ax                       ; 0x59b1
    pop ax                           ; 0x59b3
    mov byte [bx + 0x5d6d], al       ; 0x59b4
    jmp near loc_PLIR                ; 0x59b8
jumptable_5a60_case_12:
    mov ax, 6                        ; 0x59bb
    push ax                          ; 0x59be
    push ax                          ; 0x59bf
    mov ax, 7                        ; 0x59c0
    push ax                          ; 0x59c3
    push word [bp + 0x4]             ; 0x59c4
    call api_idx_001c_ITKQ           ; 0x59c7
    add sp, byte 8                   ; 0x59ca
    mov ax, 3                        ; 0x59cd
    push ax                          ; 0x59d0
    mov ax, 0                        ; 0x59d1
    push ax                          ; 0x59d4
    push word [bp + 0x4]             ; 0x59d5
    call api_idx_0002_USJO           ; 0x59d8
    add sp, byte 6                   ; 0x59db
    push ax                          ; 0x59de
    mov ax, 0x248                    ; 0x59df
    imul word [bp + 0x4]             ; 0x59e2
    mov bx, ax                       ; 0x59e5
    pop ax                           ; 0x59e7
    mov byte [bx + 0x5d75], al       ; 0x59e8
    mov ax, 3                        ; 0x59ec
    push ax                          ; 0x59ef
    push ax                          ; 0x59f0
    push word [bp + 0x4]             ; 0x59f1
    call api_idx_0002_USJO           ; 0x59f4
    add sp, byte 6                   ; 0x59f7
    push ax                          ; 0x59fa
    mov ax, 0x248                    ; 0x59fb
    imul word [bp + 0x4]             ; 0x59fe
    mov bx, ax                       ; 0x5a01
    pop ax                           ; 0x5a03
    mov byte [bx + 0x5d8b], al       ; 0x5a04
    jmp near loc_PLIR                ; 0x5a08
%include "vpcmk/string_loc_PPRO.asm"       ; 0x5a0b

%include "vpcmk/api_idx_000a_HMMT.asm"     ; 0x5a8a

%include "shared/loc_OIOJ.asm"              ; 0x5d7e

%include "vpcmk/api_idx_0004_QSJP.asm"     ; 0x5df5

%include "vpcmk/api_idx_0016_JNJG.asm"     ; 0x6083

%include "vpcmk/api_idx_0006_HMNQ.asm"     ; 0x60e0

%include "vpcmk/api_idx_0002_IVMI.asm"     ; 0x626e

%include "vpcmk/loc_MIPR.asm"              ; 0x62fb

%include "vpcmk/api_idx_0002_RUKQ.asm"     ; 0x65fc

%include "vpcmk/loc_TLLM.asm"              ; 0x6626

%include "vpcmk/api_idx_0014_LVIL.asm"     ; 0x6673

%include "vpcmk/loc_TUUJ.asm"              ; 0x66c3

%include "vpcmk/api_idx_002c_JIHO.asm"     ; 0x6738

%include "vpcmk/loc_RNSM.asm"              ; 0x67e2

%include "vpcmk/api_idx_0018_MVRH.asm"     ; 0x67ff

%include "vpcmk/api_idx_0006_JHIT.asm"     ; 0x6887

%include "vpcmk/loc_PVJJ.asm"              ; 0x68fa

%include "vpcmk/api_idx_002c_NHRR.asm"     ; 0x6a3f

%include "vpcmk/asm_only/string_loc_SMLM.asm"       ; 0x6f8c

aztec_strcmp.loc1 equ loc_OSRT
%include "shared/aztec_strcmp.asm"          ; 0x6fca

aztec_strncmp.loc1 equ loc_OTSS
%include "shared/aztec_strncmp.asm"         ; 0x6fe8

loc_OSRT:
    sub di, byte 2                   ; 0x701d
    scasb                            ; 0x7020
    jne short loc_OTSS               ; 0x7021
    test al, al                      ; 0x7023
    je short loc_PGTO                ; 0x7025
    mov al, ah                       ; 0x7027
    scasb                            ; 0x7029
loc_OTSS:
    sbb ax, ax                       ; 0x702a
    js short loc_QKLS                ; 0x702c
    inc ax                           ; 0x702e
    jmp short loc_QKLS               ; 0x702f
__zdata_start:

    db 'PCFILE.DBS', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x25, 0x20, 0x00
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
    db 0x2a, 0x2a, 0x2a, 0x00
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
    db 'ACBCBCCCCHCHBA', 0
    db '02222232112230', 0
    db 'ACCCCDCCCHHKDA', 0
    db '02222232123230', 0
    db 'ACCCCDCCCIFKEA', 0
    db '02222232121230', 0
    db 'ACHCHDCCCHFIDA', 0
    db '02323232111230', 0
    db 'ACKCHHGCCIECBA', 0
    db '02322322121220', 0
    db 'ACBCCDECCEEEGA', 0
    db '02121212111330', 0
    db 'ACICIBHCCFKFFA', 0
    db '02323112113330', 0
    db 'ACECCEGCCIFKFA', 0
    db '02222222122220', 0
    db 'ACKCGDHCCFKIDA', 0
    db '02322212112320', 0
    db 'ACHCHHGCCCECHA', 0
    db '02322322112230', 0
    db 'PORTDATA.VGA', 0
    db 'PCFILE.DBS', 0
    db 'PCFILE.DBS', 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0


__zimage_end:
