; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vmnpc.inc"
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
    dw (__zdata_start - __zcode_start)           ; 0xaecf ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x009c ; o_dsize: initialized data size
    dw 0x1f22                                    ; o_bss: uninitialized data size
    dw string_loc_NVTI - IMAGE_BASE + __zres_end ; 0xfe57 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_UOVR equ 0x44d9 + VBASE
io_loc_4fa9 equ 0x4fa9 + VBASE

%include "vmnpc/api_idx_0008_JGKT.asm"     ; 0x000e

%include "vmnpc/api_idx_000c_POTM.asm"     ; 0x01d2

%include "vmnpc/asm_only/api_idx_0004_SMTU.asm"     ; 0x062d

%include "vmnpc/api_idx_0018_TROH.asm"     ; 0x0727

api_idx_000e_NKQN.api_idx1 equ api_idx_0004_SMTU
%include "shared/api_idx_000e_NKQN.asm"     ; 0x0961

%include "shared/loc_SSIO.asm"              ; 0x0a56

%include "shared/api_idx_000a_QJGP.asm"     ; 0x0ab2

%include "shared/loc_VNIO.asm"              ; 0x0b30

%include "shared/api_idx_0006_SHUK.asm"     ; 0x0b74

%include "shared/loc_HTQP.asm"              ; 0x0c96

%include "vmnpc/api_idx_0054_UKJH.asm"     ; 0x0d46

%include "vmnpc/api_idx_0002_IUMT.asm"     ; 0x0dc3

%include "vmnpc/api_idx_0004_KNGG.asm"     ; 0x0e15

loc_KRMP.bss1 equ bss_93d6
%include "shared/loc_KRMP.asm"              ; 0x0ef1

%include "vmnpc/api_idx_0006_SQTK.asm"     ; 0x0f50

loc_RPUI.api_idx1 equ api_idx_0006_SQTK
%include "shared/loc_RPUI.asm"              ; 0x109f

loc_UTQS.api_idx1 equ api_idx_0006_SQTK
%include "shared/loc_UTQS.asm"              ; 0x10b6

%include "vmnpc/api_idx_0004_MIJS.asm"     ; 0x10c9

%include "vmnpc/api_idx_0004_RPUO.asm"     ; 0x114d

%include "vmnpc/api_idx_0004_GRRG.asm"     ; 0x119e

%include "vmnpc/api_idx_0004_THQU.asm"     ; 0x11f8

%include "vmnpc/api_idx_0054_LVHV.asm"     ; 0x128c

%include "vmnpc/loc_MLKO.asm"              ; 0x130b

%include "vmnpc/api_idx_0050_TJLH.asm"     ; 0x13b4

%include "vmnpc/api_idx_005e_SHOL.asm"     ; 0x13ed

%include "vmnpc/api_idx_000c_KGOL.asm"     ; 0x1676

%include "vmnpc/loc_RSHV.asm"              ; 0x1821

%include "vmnpc/loc_MOVJ.asm"              ; 0x1d39

%include "vmnpc/loc_HGOV.asm"              ; 0x21bf

%include "shared/api_idx_004c_RQSO.asm"     ; 0x21d2

%include "vmnpc/api_idx_0004_PULL.asm"     ; 0x22e7

%include "vmnpc/api_idx_0004_VLIO.asm"     ; 0x2372

%include "vmnpc/loc_LRGG.asm"              ; 0x2472

%include "vmnpc/api_idx_0038_POGI.asm"     ; 0x24ae

%include "vmnpc/api_idx_0002_OUKN.asm"     ; 0x2768

%include "vmnpc/api_idx_0004_PHNO.asm"     ; 0x28a1

%include "vmnpc/loc_GPUL.asm"              ; 0x2963

%include "vmnpc/api_idx_0008_KNNO.asm"     ; 0x29b1

%include "vmnpc/api_idx_0040_UOUS.asm"     ; 0x2b8e

%include "vmnpc/leaf_loc_VHTI.asm"         ; 0x2ebe

%include "vmnpc/io_loc_MUNJ.asm"           ; 0x36b4

%include "vmnpc/io_loc_UVHK.asm"           ; 0x36cd

%include "vmnpc/api_idx_0006_SRQN.asm"     ; 0x3773

%include "vmnpc/api_idx_0002_KNHU.asm"     ; 0x38c1

%include "vmnpc/asm_only/api_idx_0008_HUTJ.asm"     ; 0x3900

%include "vmnpc/api_idx_0004_GGOK.asm"     ; 0x3a96

%include "shared/api_idx_0018_RGOS.asm"     ; 0x3b9a

%include "vmnpc/api_idx_0004_KHSO.asm"     ; 0x3c97

loc_HTKI.api_idx1 equ api_idx_0004_KHSO
%include "shared/loc_HTKI.asm"              ; 0x3df9

%include "vmnpc/api_idx_0038_IJUK.asm"     ; 0x3e3a

%include "vmnpc/api_idx_0054_OPGG.asm"     ; 0x4514

%include "vmnpc/loc_VUSH.asm"              ; 0x4775

%include "vmnpc/loc_GOMR.asm"              ; 0x47b9

%include "vmnpc/api_idx_0038_LJOP.asm"     ; 0x47d9

%include "vmnpc/api_idx_004c_OGSK.asm"     ; 0x4fea

%include "vmnpc/api_idx_0002_MIIL.asm"     ; 0x515b

%include "vmnpc/api_idx_0068_OUGS.asm"     ; 0x51bb

%include "vmnpc/api_idx_0004_GHUK.asm"     ; 0x5371

%include "shared/loc_GMVH.asm"              ; 0x5497

%include "shared/api_idx_0002_QVIM.asm"     ; 0x54b4

%include "vmnpc/api_idx_0008_GUJV.asm"     ; 0x5571

%include "vmnpc/api_idx_0006_RKSL.asm"     ; 0x573e

%include "shared/api_idx_0002_GKQL.asm"     ; 0x57bb

%include "vmnpc/api_idx_005e_KVNO.asm"     ; 0x57e1

%include "vmnpc/api_idx_004e_PHKR.asm"     ; 0x5b74

%include "vmnpc/api_idx_0006_GQUO.asm"     ; 0x5d0e

%include "vmnpc/api_idx_0054_IHKM.asm"     ; 0x5d93

%include "vmnpc/api_idx_0072_KTMQ.asm"     ; 0x5e96

%include "vmnpc/api_idx_005e_QNLK.asm"     ; 0x5fd0

%include "vmnpc/api_idx_00d2_OHOJ.asm"     ; 0x631e

%include "vmnpc/leaf_loc_QKMR.asm"         ; 0x6592

%include "vmnpc/api_idx_009c_RPGN.asm"     ; 0x677a

%include "vmnpc/string_loc_RQHG.asm"       ; 0x6c00

%include "vmnpc/string_loc_VMIJ.asm"       ; 0x6c08

%include "vmnpc/loc_JSTI.asm"              ; 0x6d9d

%include "vmnpc/api_idx_0086_JRHU.asm"     ; 0x6e0f

%include "vmnpc/api_idx_001e_GOQP.asm"     ; 0x70b7

%include "vmnpc/api_idx_0006_MITV.asm"     ; 0x72bf

%include "vmnpc/loc_LOVI.asm"              ; 0x7400

%include "vmnpc/loc_IVVH.asm"              ; 0x742e

%include "shared/draw_party_slot_letters.asm" ; 0x7452

%include "shared/api_idx_0002_TIUI.asm"     ; 0x74d1

%include "vmnpc/api_idx_0004_NIJP.asm"     ; 0x752c

%include "vmnpc/api_idx_000a_LSOP.asm"     ; 0x759d

%include "shared/loc_PTRP.asm"              ; 0x75db

%include "vmnpc/loc_IMPO.asm"              ; 0x7667

%include "vmnpc/api_idx_000c_GHTR.asm"     ; 0x7708

loc_SRQQ.bss1     equ bss_93d6
loc_SRQQ.api_idx1 equ api_idx_000a_LSOP
loc_SRQQ.api_idx2 equ api_idx_000c_GHTR
%include "shared/loc_SRQQ.asm"              ; 0x77a1

%include "vmnpc/loc_UVUO.asm"              ; 0x7832

%include "vmnpc/api_idx_0044_NORP.asm"     ; 0x786c

%include "vmnpc/api_idx_0006_TLLQ.asm"     ; 0x84f0

%include "vmnpc/api_idx_002a_NJKV.asm"     ; 0x8550

%include "vmnpc/loc_HOSN.asm"              ; 0x85f9

%include "shared/loc_SIKN.asm"              ; 0x8662

%include "vmnpc/api_idx_0002_GRRR.asm"     ; 0x86a4

%include "vmnpc/loc_GTUI.asm"              ; 0x86c6

%include "vmnpc/loc_TVPR.asm"              ; 0x86d7

%include "vmnpc/loc_RQHG_86df.asm"         ; 0x86df

%include "vmnpc/loc_RQHG_86e7.asm"         ; 0x86e7

%include "vmnpc/loc_RQHG_86ef.asm"         ; 0x86ef

%include "vmnpc/loc_RQHG_86f7.asm"         ; 0x86f7

%include "vmnpc/loc_RQHG_86ff.asm"         ; 0x86ff

%include "vmnpc/loc_RQHG_8707.asm"         ; 0x8707

%include "vmnpc/loc_VVHO.asm"              ; 0x870f

%include "vmnpc/api_idx_0004_JVTH.asm"     ; 0x8738

%include "vmnpc/api_idx_0002_JGQP.asm"     ; 0x8793

%include "vmnpc/api_idx_0006_UKIH.asm"     ; 0x8849

%include "vmnpc/loc_UIIS.asm"              ; 0x8981

%include "vmnpc/api_idx_0058_PMKH.asm"     ; 0x89a8

%include "vmnpc/api_idx_0054_TNHV.asm"     ; 0x8a81

%include "vmnpc/api_idx_0002_NTRU.asm"     ; 0x8bb0

%include "vmnpc/api_idx_0002_UHGS.asm"     ; 0x8be8

%include "shared/api_idx_0004_ULSR.asm"     ; 0x8c2a

%include "vmnpc/api_idx_0084_VMPP.asm"     ; 0x8c72

%include "vmnpc/api_idx_0002_MRKH.asm"     ; 0x8d86

%include "vmnpc/api_idx_00a6_OTNK.asm"     ; 0x8dbd

%include "vmnpc/api_idx_00a8_PUTL.asm"     ; 0x8ead

%include "vmnpc/api_idx_0004_GSIV.asm"     ; 0x8f85

%include "vmnpc/api_idx_000e_OOOK.asm"     ; 0x927d

%include "vmnpc/api_idx_000a_HIIM.asm"     ; 0x93e7

%include "vmnpc/loc_IPHP.asm"              ; 0x9587

%include "vmnpc/api_idx_0080_TKTP.asm"     ; 0x96c7

%include "vmnpc/api_idx_0100_KHVV.asm"     ; 0x9748

%include "vmnpc/api_idx_00a2_IKRJ.asm"     ; 0x9844

%include "vmnpc/loc_SMSJ.asm"              ; 0x9a04

%include "vmnpc/api_idx_0002_NUKT.asm"     ; 0x9bcc

%include "vmnpc/loc_OJVU.asm"              ; 0x9c7a

%include "vmnpc/loc_UPRU.asm"              ; 0x9d06

%include "vmnpc/api_idx_0054_UOTQ.asm"     ; 0x9d30

%include "vmnpc/loc_LTIS.asm"              ; 0xa29f

%include "vmnpc/api_idx_0002_JOQL.asm"     ; 0xa2e7

%include "vmnpc/api_idx_0002_UVON.asm"     ; 0xa391

%include "vmnpc/api_idx_0002_SLOH.asm"     ; 0xa3dd

%include "vmnpc/api_idx_0002_NSKK.asm"     ; 0xa411

%include "vmnpc/loc_MGPH.asm"              ; 0xa441

%include "vmnpc/api_idx_0016_TOUQ.asm"     ; 0xa546

%include "vmnpc/api_idx_00b0_KPHQ.asm"     ; 0xa837

%include "vmnpc/api_idx_00ba_TUGQ.asm"     ; 0xaa93

%include "vmnpc/api_idx_006a_QKPT.asm"     ; 0xab8d

%include "vmnpc/asm_only/string_loc_NVTI.asm"       ; 0xae10

%include "shared/aztec_strncpy.asm"         ; 0xae4e

aztec_strcmp.loc1 equ loc_OSRT
%include "shared/aztec_strcmp.asm"          ; 0xae76

loc_LNNU equ aztec_strncmp.loc1
%include "shared/aztec_strncmp.asm"         ; 0xae94

__zdata_start:

    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x31, 0x20, 0x00, 0x28, 0x31, 0x29, 0x00, 0x50, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'VM1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 0x20, 0x00, 0x20, 0x00, 0x20
    times 45 db 0
    db 'PHOONZANG', 0
    times 10 db 0


__zimage_end:
