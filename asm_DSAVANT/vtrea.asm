; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vtrea.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0x9a0d ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x007c ; o_dsize: initialized data size
    dw 0x05a6                             ; o_bss: uninitialized data size
    dw loc_99c5 - IMAGE_BASE + __zres_end ; 0xea0c ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_34f1 equ 0x34f1 + VBASE
loc_4582 equ 0x4582 + VBASE
loc_4a4d equ 0x4a4d + VBASE
loc_4a5e equ 0x4a5e + VBASE
loc_4ad7 equ 0x4ad7 + VBASE
api_idx_0004_4ad8 equ 0x4ad8 + VBASE

loc_000e:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    mov word [bss_9114], 0           ; 0x0014
    mov word [bss_9116], 0xffff      ; 0x001a
    mov word [bss_9118], 0           ; 0x0020
    mov word [bss_911a], 0xffff      ; 0x0026
    cmp word [bss_830a], byte 0x0f   ; 0x002c
    jne short @..loc_000e.l1         ; 0x0031
    mov word [bss_830a], 0x16        ; 0x0033
    call api_idx_0050_RMNU           ; 0x0039
    jmp short @..loc_000e.l6         ; 0x003c
@..loc_000e.l1:
    cmp word [bss_830a], byte 0x15   ; 0x003e
    jne short @..loc_000e.l2         ; 0x0043
    mov word [bss_830a], 0x16        ; 0x0045
    call loc_809e                    ; 0x004b
    jmp short @..loc_000e.l6         ; 0x004e
@..loc_000e.l2:
    cmp word [bss_830a], byte 0x1a   ; 0x0050
    jne short @..loc_000e.l3         ; 0x0055
    mov word [bss_830a], 5           ; 0x0057
    call loc_811f                    ; 0x005d
    jmp short @..loc_000e.l6         ; 0x0060
@..loc_000e.l3:
    cmp word [bss_830a], byte 0x1c   ; 0x0062
    jne short @..loc_000e.l4         ; 0x0067
    mov word [bss_830a], 5           ; 0x0069
    call loc_81b6                    ; 0x006f
    jmp short @..loc_000e.l6         ; 0x0072
@..loc_000e.l4:
    cmp word [bss_830a], byte 0x1d   ; 0x0074
    jne short @..loc_000e.l5         ; 0x0079
    mov word [bss_830a], 5           ; 0x007b
    call loc_81db                    ; 0x0081
    jmp short @..loc_000e.l6         ; 0x0084
@..loc_000e.l5:
    mov word [bss_830a], 0x16        ; 0x0086
@..loc_000e.l6:
    mov ax, 0                        ; 0x008c
    ret                              ; 0x008f
%include "vtrea/api_idx_0010_SVTT.asm"     ; 0x0090

%include "lib/api_idx_000e_QTQU.asm"     ; 0x067b

%include "vtrea/api_idx_000a_GKTH.asm"     ; 0x073b

%include "vtrea/api_idx_0004_UTMO.asm"     ; 0x08eb

%include "vtrea/api_idx_000a_IHIN.asm"     ; 0x0954

%include "vtrea/api_idx_0004_IUVP.asm"     ; 0x0a6a

%include "vtrea/api_idx_0090_KQNM.asm"     ; 0x0b29

%include "vtrea/api_idx_0004_JQSU.asm"     ; 0x0d24

%include "vtrea/api_idx_0004_PIGR.asm"     ; 0x0e03

%include "vtrea/api_idx_0002_NVLQ.asm"     ; 0x0f96

%include "vtrea/api_idx_005a_KQTI.asm"     ; 0x10fb

%include "vtrea/asm_only/api_idx_003e_MIJG.asm"     ; 0x11bc

%include "vtrea/asm_only/api_idx_0056_QJGU.asm"     ; 0x12cc

%include "vtrea/api_idx_0050_VKQP.asm"     ; 0x13e0

%include "vtrea/api_idx_0004_HPMG.asm"     ; 0x1447

%include "vtrea/api_idx_0006_NPTV.asm"     ; 0x148d

%include "vtrea/asm_only/api_idx_00b8_JIVQ.asm"     ; 0x14e7

%include "vtrea/api_idx_0060_UUPM.asm"     ; 0x1fd5

%include "vtrea/api_idx_0002_NLKQ.asm"     ; 0x251a

%include "vtrea/api_idx_0084_LQVT.asm"     ; 0x25ab

%include "lib/api_idx_0008_IMMI.asm"     ; 0x3552

%include "lib/api_idx_0004_LNTS.asm"     ; 0x35de

%include "lib/api_idx_0006_HQVN.asm"     ; 0x36af

%include "vtrea/api_idx_0006_OTSG.asm"     ; 0x3706

%include "lib/api_idx_0018_IRSN.asm"     ; 0x37b6

%include "vtrea/api_idx_0004_HKQU.asm"     ; 0x38b3

%include "vtrea/api_idx_0038_ULLN.asm"     ; 0x3a56

%include "vtrea/api_idx_0054_SKQU.asm"     ; 0x4254

%include "vtrea/asm_only/api_idx_0008_OHQQ.asm"     ; 0x4368

%include "lib/api_idx_004c_STVP.asm"     ; 0x51d7

%include "lib/api_idx_0004_MHTS.asm"     ; 0x52ec

%include "vtrea/api_idx_0040_GNSR.asm"     ; 0x5348

%include "vtrea/api_idx_0006_SMVO.asm"     ; 0x550e

%include "vtrea/api_idx_0002_ROGP.asm"     ; 0x5689

%include "vtrea/api_idx_0002_ORGO.asm"     ; 0x56cc

%include "vtrea/api_idx_00a8_JQTV.asm"     ; 0x5d80

%include "lib/api_idx_0006_IQJI.asm"     ; 0x5e88

%include "vtrea/api_idx_0004_QNKH.asm"     ; 0x5efe

%include "vtrea/leaf_loc_JNIM.asm"         ; 0x5f7f

%include "vtrea/leaf_loc_NMIT.asm"         ; 0x5fa2

%include "vtrea/leaf_loc_PGKQ.asm"         ; 0x5fad

%include "vtrea/leaf_loc_GKPH.asm"         ; 0x5fbf

%include "vtrea/api_idx_006a_VGLP.asm"     ; 0x5fef

%include "vtrea/api_idx_0074_LVLQ.asm"     ; 0x66eb

%include "lib/api_idx_0002_USNT.asm"     ; 0x6e69

%include "vtrea/api_idx_0004_MJTH.asm"     ; 0x6ead

%include "vtrea/api_idx_0034_QJSP.asm"     ; 0x6ff5

%include "vtrea/api_idx_0072_OGIL.asm"     ; 0x7151

%include "lib/api_idx_0004_SMJG.asm"     ; 0x7319

%include "vtrea/api_idx_00e6_JGTQ.asm"     ; 0x73ae

%include "vtrea/asm_only/api_idx_0074_PPLR.asm"     ; 0x78ed

%include "vtrea/api_idx_0050_RMNU.asm"     ; 0x7f5a

%include "vtrea/api_idx_002a_HVPS.asm"     ; 0x8200

%include "vtrea/api_idx_0008_OOGG.asm"     ; 0x82b8

%include "lib/api_idx_000c_JKJK.asm"     ; 0x893e

%include "lib/api_idx_0002_PGOV.asm"     ; 0x89bd

%include "vtrea/api_idx_0004_IOPR.asm"     ; 0x8a18

%include "vtrea/api_idx_000a_MTKM.asm"     ; 0x8a89

%include "vtrea/api_idx_000c_RQNG.asm"     ; 0x8bf4

%include "vtrea/asm_only/api_idx_0044_QHMS.asm"     ; 0x8d1e

%include "vtrea/asm_only/leaf_loc_IKKS.asm"         ; 0x9a03


__zimage_end:
