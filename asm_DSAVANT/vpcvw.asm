; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpcvw.inc"
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
    dw 0x00f2                             ; o_magic: overlay signature (0x00f2)
    dw __zres_end                         ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)    ; 0x9836 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x0348 ; o_dsize: initialized data size
    dw 0x0310                             ; o_bss: uninitialized data size
    dw loc_OKIH - IMAGE_BASE + __zres_end ; 0xe835 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_23fd equ 0x23fd + VBASE
loc_2924 equ 0x2924 + VBASE
loc_2933 equ 0x2933 + VBASE
loc_293d equ 0x293d + VBASE
loc_2940 equ 0x2940 + VBASE
loc_2941 equ 0x2941 + VBASE
loc_294c equ 0x294c + VBASE
loc_297d equ 0x297d + VBASE
loc_29b2 equ 0x29b2 + VBASE
loc_29b3 equ 0x29b3 + VBASE
loc_29c3 equ 0x29c3 + VBASE
loc_29d6 equ 0x29d6 + VBASE
loc_29e4 equ 0x29e4 + VBASE
loc_TPUU equ 0x7736 + VBASE
loc_TLNP equ 0x7738 + VBASE

loc_VIUO:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 0x11   ; 0x0014
    jne short @..loc_VIUO.l1         ; 0x0019
    push word [bss_8af0]             ; 0x001b
    call api_idx_0014_MMLR           ; 0x001f
    pop cx                           ; 0x0022
@..loc_VIUO.l1:
    mov ax, 0                        ; 0x0023
    ret                              ; 0x0026
%include "shared/api_idx_0002_UKHK.asm"     ; 0x0027

%include "shared/api_idx_000e_QTQU.asm"     ; 0x008b

%include "vpcvw/asm_only/api_idx_0012_HLJM.asm"     ; 0x014b

%include "shared/api_idx_0004_VPLS.asm"     ; 0x02c7

%include "vpcvw/api_idx_000c_PKKK.asm"     ; 0x037b

%include "vpcvw/api_idx_0012_SQHG.asm"     ; 0x0521

%include "vpcvw/api_idx_0012_JNIN.asm"     ; 0x0781

%include "vpcvw/api_idx_0004_KUMO.asm"     ; 0x09a1

%include "vpcvw/api_idx_0012_RMPH.asm"     ; 0x0a96

%include "shared/draw_party_slot_letters.asm" ; 0x0cd6

%include "vpcvw/api_idx_0004_TOKN.asm"     ; 0x0d55

%include "shared/api_idx_0002_PGOV.asm"     ; 0x0e05

%include "shared/api_idx_0002_GLLG.asm"     ; 0x0e60

%include "shared/api_idx_0010_TIQJ.asm"     ; 0x0ea1

%include "vpcvw/api_idx_000a_MKIS.asm"     ; 0x0f9e

%include "vpcvw/asm_only/api_idx_007c_HKNH.asm"     ; 0x1046

%include "vpcvw/api_idx_009e_JGGH.asm"     ; 0x1894

%include "vpcvw/api_idx_0008_RROP.asm"     ; 0x1b17

%include "vpcvw/loc_JUMH.asm"              ; 0x1ca0

%include "vpcvw/loc_KUSK.asm"              ; 0x2190

%include "shared/loc_NSKO.asm"              ; 0x21ad

%include "vpcvw/asm_only/api_idx_0008_RMOL.asm"     ; 0x21fd

%include "vpcvw/api_idx_0004_SUIN.asm"     ; 0x297e

%include "vpcvw/api_idx_000a_HVVP.asm"     ; 0x29ef

%include "shared/loc_OOVL.asm"              ; 0x2a2d

%include "vpcvw/loc_GLTV.asm"              ; 0x2ab9

%include "vpcvw/api_idx_000c_PLJO.asm"     ; 0x2b5a

%include "vpcvw/loc_GSKG.asm"              ; 0x2bf3

%include "vpcvw/api_idx_0050_MNJK.asm"     ; 0x2c84

%include "vpcvw/api_idx_0004_RTHS.asm"     ; 0x3974

%include "vpcvw/loc_VJPM.asm"              ; 0x3a6a

%include "vpcvw/api_idx_0004_LHJI.asm"     ; 0x3aac

%include "vpcvw/api_idx_0084_QUKH.asm"     ; 0x3b66

%include "vpcvw/api_idx_0004_KHVO.asm"     ; 0x3c18

%include "vpcvw/api_idx_0056_PIOJ.asm"     ; 0x3c7b

%include "vpcvw/loc_PIRG.asm"              ; 0x3cde

%include "vpcvw/api_idx_009e_ISLR.asm"     ; 0x3cfe

%include "vpcvw/loc_RKQO.asm"              ; 0x4011

%include "vpcvw/loc_RPNL.asm"              ; 0x40b7

%include "vpcvw/api_idx_0084_UPUT.asm"     ; 0x40ef

%include "vpcvw/api_idx_0048_MLGG.asm"     ; 0x4253

%include "vpcvw/api_idx_004e_NSUI.asm"     ; 0x42e3

%include "vpcvw/api_idx_0002_GHGM.asm"     ; 0x435b

%include "vpcvw/api_idx_0002_SLIS.asm"     ; 0x4421

%include "vpcvw/api_idx_000e_VRPU.asm"     ; 0x4505

%include "vpcvw/api_idx_0002_TSNJ.asm"     ; 0x4573

%include "vpcvw/leaf_loc_RGNV.asm"         ; 0x4589

%include "vpcvw/leaf_loc_JPJN.asm"         ; 0x45a3

%include "vpcvw/leaf_loc_JKNU.asm"         ; 0x45ab

%include "vpcvw/leaf_loc_VTIP.asm"         ; 0x45b2

%include "vpcvw/api_idx_0056_JUKL.asm"     ; 0x468b

%include "vpcvw/loc_UNOV.asm"              ; 0x474b

%include "shared/api_idx_0004_VKIV.asm"     ; 0x4793

%include "vpcvw/api_idx_0048_PLGK.asm"     ; 0x4a1c

%include "vpcvw/asm_only/api_idx_0072_KRRT.asm"     ; 0x4a3f

%include "vpcvw/api_idx_0002_PPIL.asm"     ; 0x5006

%include "vpcvw/api_idx_0010_MRKK.asm"     ; 0x5050

%include "shared/api_idx_0008_IMMI.asm"     ; 0x539e

%include "shared/api_idx_0004_LNTS.asm"     ; 0x542a

%include "vpcvw/asm_only/api_idx_00c2_LINN.asm"     ; 0x54fb

%include "vpcvw/api_idx_0014_MMLR.asm"     ; 0x616c

%include "shared/api_idx_002a_IHRK.asm"     ; 0x6977

%include "vpcvw/asm_only/api_idx_0080_PKIL.asm"     ; 0x6a20

%include "shared/api_idx_0004_SSHG.asm"     ; 0x6c47

%include "vpcvw/api_idx_004c_MJSN.asm"     ; 0x6d13

%include "vpcvw/api_idx_009a_VTKM.asm"     ; 0x6f62

%include "vpcvw/api_idx_001a_QTUO.asm"     ; 0x706c

%include "vpcvw/loc_KQMP.asm"              ; 0x70ca

%include "vpcvw/leaf_loc_KMKN.asm"         ; 0x7349

%include "vpcvw/leaf_loc_TGUS.asm"         ; 0x7375

%include "vpcvw/leaf_loc_KHMN.asm"         ; 0x738d

%include "vpcvw/leaf_loc_MVNK.asm"         ; 0x73a8

%include "vpcvw/io_loc_NVGI.asm"           ; 0x73c5

%include "vpcvw/io_loc_MIKO.asm"           ; 0x73dd

%include "vpcvw/io_loc_GPSR.asm"           ; 0x73f9

%include "vpcvw/io_loc_PUJN.asm"           ; 0x7410

%include "vpcvw/io_loc_SQOJ.asm"           ; 0x7415

%include "vpcvw/api_idx_0004_JTKM.asm"     ; 0x82da

%include "vpcvw/api_idx_0004_GNRI.asm"     ; 0x8421

%include "vpcvw/api_idx_0002_PMMV.asm"     ; 0x8676

%include "shared/api_idx_0058_LOPH.asm"     ; 0x8730

%include "shared/api_idx_0008_IGKQ.asm"     ; 0x88b6

%include "vpcvw/api_idx_0026_JHKN.asm"     ; 0x8a6e

%include "vpcvw/api_idx_0002_OIRI.asm"     ; 0x8f64

%include "vpcvw/api_idx_0002_OLJQ.asm"     ; 0x8fb8

%include "vpcvw/loc_SRLV.asm"              ; 0x902e

jumptable_9188_case_0:
    push word [bp + 0x8]             ; 0x903a
    mov ax, 0x92e8                   ; 0x903d
    push ax                          ; 0x9040
    push word [bp + 0x6]             ; 0x9041
    push word [bp + 0x4]             ; 0x9044
    call api_idx_0002_OLJQ           ; 0x9047
    add sp, byte 8                   ; 0x904a
    jmp near @..loc_SRLV.l4          ; 0x904d
jumptable_9188_case_1:
    push word [bp + 0x8]             ; 0x9050
    mov ax, 0x92f1                   ; 0x9053
    push ax                          ; 0x9056
    push word [bp + 0x6]             ; 0x9057
    push word [bp + 0x4]             ; 0x905a
    call api_idx_0002_OLJQ           ; 0x905d
    add sp, byte 8                   ; 0x9060
    jmp near @..loc_SRLV.l4          ; 0x9063
jumptable_9188_case_2:
    push word [bp + 0x8]             ; 0x9066
    mov ax, 0x92fa                   ; 0x9069
    push ax                          ; 0x906c
    push word [bp + 0x6]             ; 0x906d
    push word [bp + 0x4]             ; 0x9070
    call api_idx_0002_OLJQ           ; 0x9073
    add sp, byte 8                   ; 0x9076
    jmp near @..loc_SRLV.l4          ; 0x9079
jumptable_9188_case_3:
    push word [bp + 0x8]             ; 0x907c
    mov ax, 0x9303                   ; 0x907f
    push ax                          ; 0x9082
    push word [bp + 0x6]             ; 0x9083
    push word [bp + 0x4]             ; 0x9086
    call api_idx_0002_OLJQ           ; 0x9089
    add sp, byte 8                   ; 0x908c
    jmp near @..loc_SRLV.l4          ; 0x908f
jumptable_9188_case_4:
    push word [bp + 0x8]             ; 0x9092
    mov ax, 0x930c                   ; 0x9095
    push ax                          ; 0x9098
    push word [bp + 0x6]             ; 0x9099
    push word [bp + 0x4]             ; 0x909c
    call api_idx_0002_OLJQ           ; 0x909f
    add sp, byte 8                   ; 0x90a2
    jmp near @..loc_SRLV.l4          ; 0x90a5
jumptable_9188_case_5:
    push word [bp + 0x8]             ; 0x90a8
    mov ax, 0x9315                   ; 0x90ab
    push ax                          ; 0x90ae
    push word [bp + 0x6]             ; 0x90af
    push word [bp + 0x4]             ; 0x90b2
    call api_idx_0002_OLJQ           ; 0x90b5
    add sp, byte 8                   ; 0x90b8
    jmp near @..loc_SRLV.l4          ; 0x90bb
jumptable_9188_case_6:
    push word [bp + 0x8]             ; 0x90be
    mov ax, 0x931e                   ; 0x90c1
    push ax                          ; 0x90c4
    push word [bp + 0x6]             ; 0x90c5
    push word [bp + 0x4]             ; 0x90c8
    call api_idx_0002_OLJQ           ; 0x90cb
    add sp, byte 8                   ; 0x90ce
    jmp near @..loc_SRLV.l4          ; 0x90d1
jumptable_9188_case_7:
    push word [bp + 0x8]             ; 0x90d4
    mov ax, 0x9327                   ; 0x90d7
    push ax                          ; 0x90da
    push word [bp + 0x6]             ; 0x90db
    push word [bp + 0x4]             ; 0x90de
    call api_idx_0002_OLJQ           ; 0x90e1
    add sp, byte 8                   ; 0x90e4
    jmp near @..loc_SRLV.l4          ; 0x90e7
jumptable_9188_case_8:
    mov ax, 0x248                    ; 0x90ea
    imul word [bp + 0x4]             ; 0x90ed
    mov bx, ax                       ; 0x90f0
    cmp byte [bx + 0x5e2c], 1        ; 0x90f2
    jne short @..loc_SRLV.l1         ; 0x90f7
    push word [bp + 0x8]             ; 0x90f9
    mov ax, 0x9330                   ; 0x90fc
    push ax                          ; 0x90ff
    push word [bp + 0x6]             ; 0x9100
    push word [bp + 0x4]             ; 0x9103
    call api_idx_0002_OLJQ           ; 0x9106
    add sp, byte 8                   ; 0x9109
    jmp short @..loc_SRLV.l2         ; 0x910c
@..loc_SRLV.l1:
    mov ax, word [bp + 0x6]          ; 0x910e
    shl ax, 1                        ; 0x9111
    mov bx, ax                       ; 0x9113
    mov word [bx - 0x6984], 0        ; 0x9115
@..loc_SRLV.l2:
    jmp near @..loc_SRLV.l4          ; 0x911b
jumptable_9188_case_9:
    push word [bp + 0x8]             ; 0x911e
    mov ax, 0x9339                   ; 0x9121
    push ax                          ; 0x9124
    push word [bp + 0x6]             ; 0x9125
    push word [bp + 0x4]             ; 0x9128
    call api_idx_0002_OLJQ           ; 0x912b
    add sp, byte 8                   ; 0x912e
    jmp near @..loc_SRLV.l4          ; 0x9131
jumptable_9188_case_10:
    push word [bp + 0x8]             ; 0x9134
    mov ax, 0x9342                   ; 0x9137
    push ax                          ; 0x913a
    push word [bp + 0x6]             ; 0x913b
    push word [bp + 0x4]             ; 0x913e
    call api_idx_0002_OLJQ           ; 0x9141
    add sp, byte 8                   ; 0x9144
    jmp short @..loc_SRLV.l4         ; 0x9147
jumptable_9188_case_11:
    push word [bp + 0x8]             ; 0x9149
    mov ax, 0x934b                   ; 0x914c
    push ax                          ; 0x914f
    push word [bp + 0x6]             ; 0x9150
    push word [bp + 0x4]             ; 0x9153
    call api_idx_0002_OLJQ           ; 0x9156
    add sp, byte 8                   ; 0x9159
    jmp short @..loc_SRLV.l4         ; 0x915c
jumptable_9188_case_12:
    push word [bp + 0x8]             ; 0x915e
    mov ax, 0x9354                   ; 0x9161
    push ax                          ; 0x9164
    push word [bp + 0x6]             ; 0x9165
    push word [bp + 0x4]             ; 0x9168
    call api_idx_0002_OLJQ           ; 0x916b
    add sp, byte 8                   ; 0x916e
    jmp short @..loc_SRLV.l4         ; 0x9171
jumptable_9188_case_13:
    push word [bp + 0x8]             ; 0x9173
    mov ax, 0x935d                   ; 0x9176
    push ax                          ; 0x9179
    push word [bp + 0x6]             ; 0x917a
    push word [bp + 0x4]             ; 0x917d
    call api_idx_0002_OLJQ           ; 0x9180
    add sp, byte 8                   ; 0x9183
    jmp short @..loc_SRLV.l4         ; 0x9186
jumptable_9188:
    dw jumptable_9188_case_0 - IMAGE_BASE + 0x5055 ; 0x9188
    dw jumptable_9188_case_1 - IMAGE_BASE + 0x5055 ; 0x918a
    dw jumptable_9188_case_2 - IMAGE_BASE + 0x5055 ; 0x918c
    dw jumptable_9188_case_3 - IMAGE_BASE + 0x5055 ; 0x918e
    dw jumptable_9188_case_4 - IMAGE_BASE + 0x5055 ; 0x9190
    dw jumptable_9188_case_5 - IMAGE_BASE + 0x5055 ; 0x9192
    dw jumptable_9188_case_6 - IMAGE_BASE + 0x5055 ; 0x9194
    dw jumptable_9188_case_7 - IMAGE_BASE + 0x5055 ; 0x9196
    dw jumptable_9188_case_8 - IMAGE_BASE + 0x5055 ; 0x9198
    dw jumptable_9188_case_9 - IMAGE_BASE + 0x5055 ; 0x919a
    dw jumptable_9188_case_10 - IMAGE_BASE + 0x5055 ; 0x919c
    dw jumptable_9188_case_11 - IMAGE_BASE + 0x5055 ; 0x919e
    dw jumptable_9188_case_12 - IMAGE_BASE + 0x5055 ; 0x91a0
    dw jumptable_9188_case_13 - IMAGE_BASE + 0x5055 ; 0x91a2
@..loc_SRLV.l3:
    cmp ax, strict word 0xe          ; 0x91a4
    jae short @..loc_SRLV.l4         ; 0x91a7
    xchg bx, ax                      ; 0x91a9
    shl bx, 1                        ; 0x91aa
    jmp [cs:bx - 0x1e31]             ; 0x91ac
@..loc_SRLV.l4:
    ret                              ; 0x91b1
%include "vpcvw/api_idx_0002_OJSG.asm"     ; 0x91b2

%include "vpcvw/loc_LTLV.asm"              ; 0x91d9

jumptable_928f_case_0:
    mov ax, 0x9366                   ; 0x91e5
    push ax                          ; 0x91e8
    push word [bp + 0x4]             ; 0x91e9
    call api_idx_0002_OIRI           ; 0x91ec
    add sp, byte 4                   ; 0x91ef
    jmp near @..loc_LTLV.l2          ; 0x91f2
jumptable_928f_case_1:
    mov ax, 0x936f                   ; 0x91f5
    push ax                          ; 0x91f8
    push word [bp + 0x4]             ; 0x91f9
    call api_idx_0002_OIRI           ; 0x91fc
    add sp, byte 4                   ; 0x91ff
    jmp near @..loc_LTLV.l2          ; 0x9202
jumptable_928f_case_2:
    mov ax, 0x9378                   ; 0x9205
    push ax                          ; 0x9208
    push word [bp + 0x4]             ; 0x9209
    call api_idx_0002_OIRI           ; 0x920c
    add sp, byte 4                   ; 0x920f
    jmp near @..loc_LTLV.l2          ; 0x9212
jumptable_928f_case_3:
    mov ax, 0x9381                   ; 0x9215
    push ax                          ; 0x9218
    push word [bp + 0x4]             ; 0x9219
    call api_idx_0002_OIRI           ; 0x921c
    add sp, byte 4                   ; 0x921f
    jmp near @..loc_LTLV.l2          ; 0x9222
jumptable_928f_case_4:
    mov ax, 0x938a                   ; 0x9225
    push ax                          ; 0x9228
    push word [bp + 0x4]             ; 0x9229
    call api_idx_0002_OIRI           ; 0x922c
    add sp, byte 4                   ; 0x922f
    jmp near @..loc_LTLV.l2          ; 0x9232
jumptable_928f_case_5:
    mov ax, 0x9393                   ; 0x9235
    push ax                          ; 0x9238
    push word [bp + 0x4]             ; 0x9239
    call api_idx_0002_OIRI           ; 0x923c
    add sp, byte 4                   ; 0x923f
    jmp short @..loc_LTLV.l2         ; 0x9242
jumptable_928f_case_6:
    mov ax, 0x939c                   ; 0x9244
    push ax                          ; 0x9247
    push word [bp + 0x4]             ; 0x9248
    call api_idx_0002_OIRI           ; 0x924b
    add sp, byte 4                   ; 0x924e
    jmp short @..loc_LTLV.l2         ; 0x9251
jumptable_928f_case_7:
    mov ax, 0x93a5                   ; 0x9253
    push ax                          ; 0x9256
    push word [bp + 0x4]             ; 0x9257
    call api_idx_0002_OIRI           ; 0x925a
    add sp, byte 4                   ; 0x925d
    jmp short @..loc_LTLV.l2         ; 0x9260
jumptable_928f_case_8:
    mov ax, 0x93ae                   ; 0x9262
    push ax                          ; 0x9265
    push word [bp + 0x4]             ; 0x9266
    call api_idx_0002_OIRI           ; 0x9269
    add sp, byte 4                   ; 0x926c
    jmp short @..loc_LTLV.l2         ; 0x926f
jumptable_928f_case_9:
    mov ax, 0x93b7                   ; 0x9271
    push ax                          ; 0x9274
    push word [bp + 0x4]             ; 0x9275
    call api_idx_0002_OIRI           ; 0x9278
    add sp, byte 4                   ; 0x927b
    jmp short @..loc_LTLV.l2         ; 0x927e
jumptable_928f_case_10:
    mov ax, 0x93c0                   ; 0x9280
    push ax                          ; 0x9283
    push word [bp + 0x4]             ; 0x9284
    call api_idx_0002_OIRI           ; 0x9287
    add sp, byte 4                   ; 0x928a
    jmp short @..loc_LTLV.l2         ; 0x928d
jumptable_928f:
    dw jumptable_928f_case_0 - IMAGE_BASE + 0x5055 ; 0x928f
    dw jumptable_928f_case_1 - IMAGE_BASE + 0x5055 ; 0x9291
    dw jumptable_928f_case_2 - IMAGE_BASE + 0x5055 ; 0x9293
    dw jumptable_928f_case_3 - IMAGE_BASE + 0x5055 ; 0x9295
    dw jumptable_928f_case_4 - IMAGE_BASE + 0x5055 ; 0x9297
    dw jumptable_928f_case_5 - IMAGE_BASE + 0x5055 ; 0x9299
    dw jumptable_928f_case_6 - IMAGE_BASE + 0x5055 ; 0x929b
    dw jumptable_928f_case_7 - IMAGE_BASE + 0x5055 ; 0x929d
    dw jumptable_928f_case_8 - IMAGE_BASE + 0x5055 ; 0x929f
    dw jumptable_928f_case_9 - IMAGE_BASE + 0x5055 ; 0x92a1
    dw jumptable_928f_case_10 - IMAGE_BASE + 0x5055 ; 0x92a3
@..loc_LTLV.l1:
    cmp ax, strict word 0xb          ; 0x92a5
    jae short @..loc_LTLV.l2         ; 0x92a8
    xchg bx, ax                      ; 0x92aa
    shl bx, 1                        ; 0x92ab
    jmp [cs:bx - 0x1d2a]             ; 0x92ad
@..loc_LTLV.l2:
    ret                              ; 0x92b2
%include "vpcvw/api_idx_0030_UJSL.asm"     ; 0x92b3

%include "vpcvw/api_idx_0016_UOIU.asm"     ; 0x9434

%include "vpcvw/api_idx_0022_HKUV.asm"     ; 0x9491

%include "vpcvw/api_idx_000e_IHKM.asm"     ; 0x96d5

%include "vpcvw/api_idx_0018_PNIL.asm"     ; 0x9740

%include "vpcvw/asm_only/loc_OKIH.asm"              ; 0x97ee

%include "vpcvw/asm_only/leaf_loc_SMQG.asm"         ; 0x982c


    db 0x31, 0x30, 0x30, 0x30, 0x00
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


__zimage_end:
