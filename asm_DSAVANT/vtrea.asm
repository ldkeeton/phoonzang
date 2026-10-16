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
    dw loc_SQUK - IMAGE_BASE + __zres_end ; 0xea0c ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_ITIN equ 0x34f1 + VBASE
api_idx_0004_4ad8 equ 0x4ad8 + VBASE

loc_IJTR:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    mov word [bss_9114], 0           ; 0x0014
    mov word [bss_9116], 0xffff      ; 0x001a
    mov word [bss_9118], 0           ; 0x0020
    mov word [bss_911a], 0xffff      ; 0x0026
    cmp word [bss_830a], byte 0x0f   ; 0x002c
    jne short @..loc_IJTR.l1         ; 0x0031
    mov word [bss_830a], 0x16        ; 0x0033
    call api_idx_0050_MUIG           ; 0x0039
    jmp short @..loc_IJTR.l6         ; 0x003c
@..loc_IJTR.l1:
    cmp word [bss_830a], byte 0x15   ; 0x003e
    jne short @..loc_IJTR.l2         ; 0x0043
    mov word [bss_830a], 0x16        ; 0x0045
    call loc_PKHU                    ; 0x004b
    jmp short @..loc_IJTR.l6         ; 0x004e
@..loc_IJTR.l2:
    cmp word [bss_830a], byte 0x1a   ; 0x0050
    jne short @..loc_IJTR.l3         ; 0x0055
    mov word [bss_830a], 5           ; 0x0057
    call loc_UIQM                    ; 0x005d
    jmp short @..loc_IJTR.l6         ; 0x0060
@..loc_IJTR.l3:
    cmp word [bss_830a], byte 0x1c   ; 0x0062
    jne short @..loc_IJTR.l4         ; 0x0067
    mov word [bss_830a], 5           ; 0x0069
    call loc_PGGL                    ; 0x006f
    jmp short @..loc_IJTR.l6         ; 0x0072
@..loc_IJTR.l4:
    cmp word [bss_830a], byte 0x1d   ; 0x0074
    jne short @..loc_IJTR.l5         ; 0x0079
    mov word [bss_830a], 5           ; 0x007b
    call loc_HVOM                    ; 0x0081
    jmp short @..loc_IJTR.l6         ; 0x0084
@..loc_IJTR.l5:
    mov word [bss_830a], 0x16        ; 0x0086
@..loc_IJTR.l6:
    mov ax, 0                        ; 0x008c
    ret                              ; 0x008f
%include "vtrea/api_idx_0010_PVHV.asm"     ; 0x0090

%include "vtrea/loc_GRQV.asm"              ; 0x0111

%include "shared/api_idx_000e_TIOP.asm"     ; 0x067b

%include "vtrea/api_idx_000a_UUNU.asm"     ; 0x073b

%include "vtrea/loc_IKLI.asm"              ; 0x086b

%include "vtrea/api_idx_0004_UQUT.asm"     ; 0x08eb

%include "vtrea/api_idx_000a_TIPG.asm"     ; 0x0954

%include "vtrea/loc_NQGV.asm"              ; 0x0a1a

api_idx_0004_JGSH.bss1 equ bss_9150
api_idx_0004_JGSH.loc1 equ loc_NQGV
api_idx_0004_JGSH.bss2 equ bss_9152
%include "shared/api_idx_0004_JGSH.asm"     ; 0x0a6a

%include "vtrea/api_idx_0090_NPLS.asm"     ; 0x0b29

%include "vtrea/api_idx_0004_QHUH.asm"     ; 0x0d24

%include "vtrea/loc_KIOQ.asm"              ; 0x0d87

%include "vtrea/api_idx_0004_IMVS.asm"     ; 0x0e03

%include "vtrea/loc_OOHI.asm"              ; 0x0eb2

%include "shared/loc_SIKN.asm"              ; 0x0f54

%include "vtrea/api_idx_0002_QLNJ.asm"     ; 0x0f96

%include "vtrea/api_idx_005a_SIOK.asm"     ; 0x10fb

%include "vtrea/asm_only/api_idx_003e_JGVR.asm"     ; 0x11bc

%include "vtrea/asm_only/api_idx_0056_VTNO.asm"     ; 0x12cc

%include "vtrea/api_idx_0050_MPOT.asm"     ; 0x13e0

%include "vtrea/api_idx_0004_VSSI.asm"     ; 0x1447

%include "vtrea/api_idx_0006_UHJH.asm"     ; 0x148d

%include "vtrea/asm_only/api_idx_00b8_LTRM.asm"     ; 0x14e7

%include "vtrea/api_idx_0060_VPPJ.asm"     ; 0x1fd5

%include "vtrea/loc_OVQV.asm"              ; 0x242c

%include "vtrea/api_idx_0002_PMUV.asm"     ; 0x251a

%include "vtrea/api_idx_0084_NKVU.asm"     ; 0x25ab

%include "shared/api_idx_0008_RQRL.asm"     ; 0x3552

%include "shared/api_idx_0004_UJRL.asm"     ; 0x35de

%include "shared/api_idx_0006_TMNI.asm"     ; 0x36af

%include "vtrea/api_idx_0006_KPLV.asm"     ; 0x3706

%include "shared/api_idx_0018_RGOS.asm"     ; 0x37b6

%include "vtrea/api_idx_0004_SLIS.asm"     ; 0x38b3

loc_HTKI.api_idx1 equ api_idx_0004_SLIS
%include "shared/loc_HTKI.asm"              ; 0x3a15

%include "vtrea/api_idx_0038_ULQM.asm"     ; 0x3a56

%include "vtrea/api_idx_0054_TIQK.asm"     ; 0x4254

%include "shared/loc_QQUT.asm"              ; 0x4318

loc_4582 equ 0x4582 + VBASE
loc_4a4d equ 0x4a4d + VBASE
loc_4a5e equ 0x4a5e + VBASE
loc_UKKL equ 0x4ad7 + VBASE
%include "vtrea/asm_only/api_idx_0008_NSVU.asm"     ; 0x4368

%include "vtrea/loc_RJUG.asm"              ; 0x4af7

%include "vtrea/loc_TOJK.asm"              ; 0x4b1f

%include "vtrea/loc_SJOU.asm"              ; 0x4b28

%include "vtrea/loc_HNGP.asm"              ; 0x4bbe

%include "vtrea/loc_JUSH.asm"              ; 0x4bcb

%include "vtrea/api_idx_0092_4bcc.asm"     ; 0x4bcc

%include "vtrea/loc_URLJ.asm"              ; 0x4bdd

%include "vtrea/loc_RMPK.asm"              ; 0x4be2

%include "vtrea/loc_GVPL.asm"              ; 0x4c0c

%include "vtrea/loc_HLSR.asm"              ; 0x4c64

%include "vtrea/loc_GPQI.asm"              ; 0x4c7e

%include "vtrea/loc_UJKK.asm"              ; 0x4cf9

%include "vtrea/loc_KRGN.asm"              ; 0x4d07

%include "vtrea/loc_HUIT.asm"              ; 0x4d23

%include "vtrea/loc_JJNJ.asm"              ; 0x4d31

%include "vtrea/loc_QUHP.asm"              ; 0x4d3f

%include "vtrea/loc_MHQS.asm"              ; 0x4d47

%include "vtrea/loc_MVPM.asm"              ; 0x4d73

%include "vtrea/loc_OQMG.asm"              ; 0x4d8a

%include "vtrea/loc_PVON.asm"              ; 0x4dcc

%include "vtrea/loc_LSOP.asm"              ; 0x4e35

%include "vtrea/loc_NTSL.asm"              ; 0x4e73

%include "vtrea/loc_LKVJ.asm"              ; 0x4e75

%include "vtrea/loc_KSSG.asm"              ; 0x4eb0

%include "vtrea/loc_UURV.asm"              ; 0x4ee5

%include "vtrea/api_idx_007a_4f0c.asm"     ; 0x4f0c

%include "vtrea/loc_QRGV.asm"              ; 0x4f2b

%include "vtrea/loc_HJNU.asm"              ; 0x4f69

%include "vtrea/loc_JPUH.asm"              ; 0x4f6e

%include "vtrea/loc_QUKN.asm"              ; 0x501e

%include "vtrea/loc_HLSU.asm"              ; 0x502d

%include "vtrea/loc_QKII.asm"              ; 0x5069

%include "vtrea/loc_RNOH.asm"              ; 0x506c

%include "vtrea/loc_VORJ.asm"              ; 0x507b

%include "vtrea/loc_SGTV.asm"              ; 0x5089

%include "vtrea/loc_NMPS.asm"              ; 0x5095

%include "vtrea/loc_RNNH.asm"              ; 0x50f2

%include "vtrea/loc_PSRT.asm"              ; 0x5120

%include "vtrea/loc_ROGI.asm"              ; 0x5123

%include "vtrea/loc_PHUG.asm"              ; 0x5132

%include "vtrea/loc_GTTM.asm"              ; 0x5140

%include "vtrea/loc_VHKG.asm"              ; 0x5169

%include "vtrea/loc_RSKJ.asm"              ; 0x5176

%include "vtrea/loc_HLOK.asm"              ; 0x5187

%include "vtrea/loc_IVUJ.asm"              ; 0x51b6

%include "vtrea/loc_SKRJ.asm"              ; 0x51b8

%include "vtrea/loc_JSQH.asm"              ; 0x51c6

%include "shared/api_idx_004c_RQSO.asm"     ; 0x51d7

%include "shared/api_idx_0004_ONJT.asm"     ; 0x52ec

%include "vtrea/api_idx_0040_LIPH.asm"     ; 0x5348

%include "vtrea/api_idx_0006_OUPU.asm"     ; 0x550e

%include "vtrea/api_idx_0002_HHSQ.asm"     ; 0x5689

%include "shared/loc_GMVH.asm"              ; 0x56af

%include "vtrea/api_idx_0002_MLKN.asm"     ; 0x56cc

%include "vtrea/loc_HUIS.asm"              ; 0x5789

%include "vtrea/api_idx_00a8_JSHI.asm"     ; 0x5d80

%include "shared/api_idx_0006_POPS.asm"     ; 0x5e88

%include "shared/api_idx_0004_GMNK.asm"     ; 0x5efe

%include "vtrea/leaf_loc_VMRH.asm"         ; 0x5f7f

%include "vtrea/leaf_loc_NQGQ.asm"         ; 0x5fa2

%include "vtrea/leaf_loc_TKUN.asm"         ; 0x5fad

%include "vtrea/leaf_loc_UNPG.asm"         ; 0x5fbf

%include "vtrea/api_idx_006a_JIRQ.asm"     ; 0x5fef

%include "vtrea/api_idx_0074_MHUG.asm"     ; 0x66eb

%include "shared/api_idx_0002_OVRM.asm"     ; 0x6e69

%include "vtrea/api_idx_0004_IHLT.asm"     ; 0x6ead

%include "vtrea/loc_RVKS.asm"              ; 0x6f41

%include "vtrea/api_idx_0034_NSGM.asm"     ; 0x6ff5

%include "vtrea/api_idx_0072_LQIT.asm"     ; 0x7151

%include "shared/api_idx_0004_KGNP.asm"     ; 0x7319

%include "vtrea/api_idx_00e6_QNPR.asm"     ; 0x73ae

%include "shared/loc_OUOJ.asm"              ; 0x782b

%include "shared/loc_QTKU.asm"              ; 0x788f

%include "vtrea/asm_only/api_idx_0074_SGUS.asm"     ; 0x78ed

%include "vtrea/loc_SNOI.asm"              ; 0x7d99

%include "vtrea/loc_VSIT.asm"              ; 0x7eba

%include "vtrea/api_idx_0050_MUIG.asm"     ; 0x7f5a

%include "vtrea/loc_PKHU.asm"              ; 0x809e

%include "vtrea/loc_UIQM.asm"              ; 0x811f

%include "vtrea/loc_PGGL.asm"              ; 0x81b6

%include "vtrea/loc_HVOM.asm"              ; 0x81db

%include "shared/api_idx_002a_SRJL.asm"     ; 0x8200

%include "shared/loc_RULJ.asm"              ; 0x82a9

%include "vtrea/api_idx_0008_JJHR.asm"     ; 0x82b8

%include "vtrea/loc_IOMS.asm"              ; 0x8441

%include "shared/draw_party_slot_letters.asm" ; 0x893e

%include "shared/api_idx_0002_TIUI.asm"     ; 0x89bd

%include "vtrea/api_idx_0004_JOHI.asm"     ; 0x8a18

%include "vtrea/api_idx_000a_IIIU.asm"     ; 0x8a89

%include "shared/loc_PTRP.asm"              ; 0x8ac7

%include "vtrea/loc_HOII.asm"              ; 0x8b53

%include "shared/api_idx_000c_JQMN.asm"     ; 0x8bf4

loc_SRQQ.bss1     equ bss_9124
loc_SRQQ.api_idx1 equ api_idx_000a_IIIU
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x8c8d

%include "vtrea/api_idx_0044_NJQJ.asm"     ; 0x8d1e

%include "vtrea/asm_only/loc_SQUK.asm"              ; 0x99c5

%include "vtrea/asm_only/leaf_loc_GTUT.asm"         ; 0x9a03


__zimage_end:
