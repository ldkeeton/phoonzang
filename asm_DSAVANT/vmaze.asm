; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vmaze.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0xac60 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x00fa ; o_dsize: initialized data size
    dw 0x0c94                             ; o_bss: uninitialized data size
    dw loc_ac30 - IMAGE_BASE + __zres_end ; 0xfc77 ; o_entry: overlay entry offset (CS)

__zcode_start:
fpu_loc_06b5 equ 0x06b5 + VBASE
leaf_loc_4404 equ 0x4404 + VBASE
string_loc_4b6b equ 0x4b6b + VBASE
loc_ab7d equ 0xab7d + VBASE

%include "vmaze/api_idx_0002_IPMR.asm"     ; 0x000e

%include "vmaze/api_idx_0002_TTRS.asm"     ; 0x0106

%include "vmaze/api_idx_0008_LRNK.asm"     ; 0x01c9

%include "vmaze/api_idx_0002_NSHG.asm"     ; 0x02da

%include "vmaze/api_idx_0002_QUTS.asm"     ; 0x02fe

%include "vmaze/api_idx_0002_GPPN.asm"     ; 0x03ea

%include "vmaze/leaf_loc_MUHH.asm"         ; 0x03fb

%include "vmaze/leaf_loc_VJOQ.asm"         ; 0x0402

%include "vmaze/leaf_loc_RIVH.asm"         ; 0x0409

%include "vmaze/api_idx_0014_PTQN.asm"     ; 0x06da

%include "vmaze/api_idx_0006_TMUH.asm"     ; 0x0a6e

%include "vmaze/api_idx_0002_NGKK.asm"     ; 0x0acc

%include "vmaze/api_idx_0002_PGJJ.asm"     ; 0x0b66

%include "vmaze/api_idx_000c_HVJT.asm"     ; 0x0cb5

%include "vmaze/api_idx_0002_NQUM.asm"     ; 0x0e5d

%include "vmaze/api_idx_0006_KLOT.asm"     ; 0x0f8e

%include "lib/api_idx_0008_POHU.asm"     ; 0x0fde

%include "vmaze/api_idx_0050_RIIV.asm"     ; 0x1094

%include "vmaze/api_idx_0002_RNRT.asm"     ; 0x110e

%include "vmaze/api_idx_0002_GLQQ.asm"     ; 0x1206

%include "vmaze/api_idx_0004_NHHH.asm"     ; 0x1308

%include "vmaze/api_idx_0004_LHHJ.asm"     ; 0x13f7

%include "vmaze/api_idx_0004_IKRN.asm"     ; 0x1504

%include "vmaze/api_idx_000e_LQIG.asm"     ; 0x162b

%include "vmaze/api_idx_0004_STII.asm"     ; 0x17ee

%include "vmaze/api_idx_000a_HQQT.asm"     ; 0x195c

%include "vmaze/fpu_loc_NKNG.asm"          ; 0x1997

%include "vmaze/fpu_loc_RULR.asm"          ; 0x199e

%include "vmaze/fpu_loc_NROL.asm"          ; 0x19a5

%include "vmaze/fpu_loc_KUKV.asm"          ; 0x19ac

%include "vmaze/fpu_loc_UJIM.asm"          ; 0x19b3

%include "vmaze/fpu_loc_GHLR.asm"          ; 0x19ba

%include "vmaze/api_idx_0018_USQS.asm"     ; 0x1c94

%include "vmaze/api_idx_0010_GLHG.asm"     ; 0x2033

%include "lib/api_idx_0006_HQVN.asm"     ; 0x20dc

%include "vmaze/api_idx_0006_ILJT.asm"     ; 0x2133

%include "vmaze/api_idx_0022_UIUS.asm"     ; 0x2215

%include "vmaze/api_idx_0008_VLON.asm"     ; 0x2f8e

%include "vmaze/leaf_loc_TMUS.asm"         ; 0x3241

%include "vmaze/leaf_loc_VLNG.asm"         ; 0x3249

%include "vmaze/leaf_loc_KLLU.asm"         ; 0x3251

%include "vmaze/leaf_loc_OLTU.asm"         ; 0x3259

%include "vmaze/leaf_loc_VTSH.asm"         ; 0x3261

%include "vmaze/leaf_loc_MSNI.asm"         ; 0x3270

%include "vmaze/leaf_loc_RPLN.asm"         ; 0x327f

%include "vmaze/leaf_loc_GIUK.asm"         ; 0x329a

%include "vmaze/leaf_loc_NKLO.asm"         ; 0x32b9

%include "vmaze/leaf_loc_LJVR.asm"         ; 0x32d8

%include "vmaze/leaf_loc_PPLT.asm"         ; 0x32e0

%include "vmaze/leaf_loc_HRRM.asm"         ; 0x32e8

%include "vmaze/leaf_loc_OHPG.asm"         ; 0x32fc

%include "vmaze/leaf_loc_SUVR.asm"         ; 0x330f

%include "vmaze/leaf_loc_PMVP.asm"         ; 0x3325

%include "vmaze/leaf_loc_PNNH.asm"         ; 0x3343

%include "vmaze/api_idx_0008_OIKV.asm"     ; 0x33c0

%include "vmaze/api_idx_0004_HUKS.asm"     ; 0x358c

%include "vmaze/api_idx_0010_HMOH.asm"     ; 0x3802

%include "vmaze/api_idx_0012_QGRP.asm"     ; 0x3f56

%include "vmaze/leaf_loc_VJPL.asm"         ; 0x4431

%include "vmaze/leaf_loc_NTNI.asm"         ; 0x446b

%include "vmaze/leaf_loc_VPPN.asm"         ; 0x44ad

%include "vmaze/leaf_loc_NIRQ.asm"         ; 0x44f6

%include "vmaze/leaf_loc_NQOT.asm"         ; 0x45c0

%include "vmaze/api_idx_0012_GOIS.asm"     ; 0x4665

%include "vmaze/string_loc_IPJI.asm"       ; 0x4b23

%include "vmaze/string_loc_PTIG.asm"       ; 0x4b67

%include "vmaze/string_loc_UUSL.asm"       ; 0x4b69

%include "vmaze/api_idx_0016_MKON.asm"     ; 0x4f53

%include "lib/api_idx_0024_SLHO.asm"     ; 0x50f4

%include "lib/api_idx_001e_PMST.asm"     ; 0x529a

%include "vmaze/api_idx_0030_QRVT.asm"     ; 0x53fd

%include "vmaze/api_idx_0004_HROJ.asm"     ; 0x67c6

%include "vmaze/api_idx_0002_IVNS.asm"     ; 0x6882

%include "lib/api_idx_0006_IQJI.asm"     ; 0x6960

%include "vmaze/api_idx_0004_VVMS.asm"     ; 0x69d6

%include "vmaze/fpu_loc_JNIM.asm"          ; 0x6a57

%include "vmaze/fpu_loc_NMIT.asm"          ; 0x6a7a

%include "vmaze/fpu_loc_PGKQ.asm"          ; 0x6a85

%include "vmaze/fpu_loc_VSMI.asm"          ; 0x6a97

%include "vmaze/api_idx_000a_MTQU.asm"     ; 0x6b0a

%include "vmaze/api_idx_0004_KTSH.asm"     ; 0x6c0a

%include "vmaze/api_idx_0090_PHMT.asm"     ; 0x6cc9

%include "vmaze/api_idx_0004_VKVG.asm"     ; 0x6eb1

%include "vmaze/api_idx_0002_IJNM.asm"     ; 0x7001

%include "vmaze/api_idx_001e_JTKS.asm"     ; 0x7034

%include "vmaze/api_idx_0004_TNOT.asm"     ; 0x72a6

%include "vmaze/api_idx_0002_HMIP.asm"     ; 0x73b6

%include "vmaze/api_idx_0004_JRRO.asm"     ; 0x744e

%include "vmaze/api_idx_0050_ORIH.asm"     ; 0x74e2

%include "vmaze/api_idx_0004_SLHO.asm"     ; 0x7542

%include "vmaze/api_idx_0006_OMGG.asm"     ; 0x75ae

%include "vmaze/api_idx_001c_VOTN.asm"     ; 0x764d

%include "vmaze/api_idx_000a_MUOR.asm"     ; 0x784f

%include "vmaze/api_idx_0004_TVGU.asm"     ; 0x799e

%include "vmaze/api_idx_0002_MKLO.asm"     ; 0x7abe

%include "vmaze/api_idx_0018_ITTI.asm"     ; 0x7b53

%include "vmaze/api_idx_000a_HIUH.asm"     ; 0x7ce5

%include "vmaze/api_idx_001e_IOQM.asm"     ; 0x7e46

%include "vmaze/api_idx_000e_UHJH.asm"     ; 0x804e

%include "vmaze/api_idx_0010_GJOV.asm"     ; 0x820b

%include "lib/api_idx_0004_SMJG.asm"     ; 0x83b3

%include "vmaze/api_idx_000e_GOVT.asm"     ; 0x8448

%include "vmaze/api_idx_0012_RUSS.asm"     ; 0x8568

%include "vmaze/api_idx_0002_KJPP.asm"     ; 0x86f9

%include "vmaze/api_idx_000c_QVUL.asm"     ; 0x8794

%include "vmaze/fpu_loc_QRSN.asm"          ; 0x8925

%include "vmaze/fpu_loc_JGOI.asm"          ; 0x892e

%include "vmaze/fpu_loc_SHUV.asm"          ; 0x8934

%include "vmaze/fpu_loc_UPVI.asm"          ; 0x893a

%include "vmaze/fpu_loc_ONNU.asm"          ; 0x8943

%include "vmaze/fpu_loc_SHMG.asm"          ; 0x8948

%include "vmaze/fpu_loc_SQUQ_894d.asm"     ; 0x894d

%include "vmaze/fpu_loc_QMTI.asm"          ; 0x894f

%include "vmaze/fpu_loc_MOSG.asm"          ; 0x8954

%include "vmaze/fpu_loc_UIPP.asm"          ; 0x8959

%include "vmaze/fpu_loc_SQUQ_895e.asm"     ; 0x895e

%include "vmaze/fpu_loc_SQUQ_8960.asm"     ; 0x8960

%include "vmaze/fpu_loc_MQKN.asm"          ; 0x8962

%include "vmaze/fpu_loc_QSUH.asm"          ; 0x8967

%include "vmaze/fpu_loc_KQHM.asm"          ; 0x896c

%include "vmaze/fpu_loc_RPSN.asm"          ; 0x8971

%include "vmaze/fpu_loc_GKLO.asm"          ; 0x8976

%include "lib/api_idx_0002_USNT.asm"     ; 0x89d0

%include "vmaze/api_idx_0002_RGKN.asm"     ; 0x8a14

%include "vmaze/api_idx_0006_RPNQ.asm"     ; 0x8b52

%include "vmaze/api_idx_000a_OGGI.asm"     ; 0x8c47

%include "vmaze/api_idx_0002_GPNJ.asm"     ; 0x8de9

%include "vmaze/api_idx_0002_JITP.asm"     ; 0x8e6a

%include "vmaze/api_idx_0002_UHGV.asm"     ; 0x8f1a

%include "vmaze/api_idx_0002_ROMT.asm"     ; 0x8f94

%include "vmaze/api_idx_0048_NJUK.asm"     ; 0x9029

%include "vmaze/api_idx_0006_NOOH.asm"     ; 0x920f

%include "vmaze/api_idx_0002_KUIN.asm"     ; 0x93ab

%include "vmaze/api_idx_003a_NMIK.asm"     ; 0x94ef

%include "vmaze/api_idx_0004_VPTK.asm"     ; 0x96ce

%include "vmaze/api_idx_0002_VNMJ.asm"     ; 0x98cc

%include "lib/api_idx_0002_IVLK.asm"     ; 0x9920

%include "vmaze/api_idx_0006_SRON.asm"     ; 0x99dd

%include "vmaze/api_idx_0010_QTGJ.asm"     ; 0x9a80

%include "vmaze/api_idx_0004_LJTH.asm"     ; 0x9e79

%include "vmaze/api_idx_0012_NNTI.asm"     ; 0x9ef7

%include "vmaze/api_idx_0002_NIML.asm"     ; 0xa28c

%include "vmaze/api_idx_0010_MJQQ.asm"     ; 0xa2df

%include "vmaze/api_idx_0008_STKQ.asm"     ; 0xa5ba

%include "vmaze/api_idx_0002_OLGP.asm"     ; 0xa7b2

%include "vmaze/asm_only/api_idx_0002_OQKH.asm"     ; 0xa9a4

%include "vmaze/api_idx_0032_UOIL.asm"     ; 0xab9b

loc_ac30:
    pop word [dseg_9190]             ; 0xac30
    pop cx                           ; 0xac34
    mov word [dseg_918c], sp         ; 0xac35
    mov word [dseg_918e], bp         ; 0xac39
    mov word [dseg_9188], si         ; 0xac3d
    mov word [dseg_918a], di         ; 0xac41
    cld                              ; 0xac45
    mov di, bss_9192                 ; 0xac46
    mov cx, 0x9e26                   ; 0xac49
    sub cx, di                       ; 0xac4c
    shr cx, 1                        ; 0xac4e
    je short @..loc_ac30.l1          ; 0xac50
    sub ax, ax                       ; 0xac52
    rep stosw                        ; 0xac54
@..loc_ac30.l1:
    call api_idx_0002_IPMR           ; 0xac56
    mov bp, word [dseg_918e]         ; 0xac59
    mov sp, word [dseg_918c]         ; 0xac5d
    mov si, word [dseg_9188]         ; 0xac61
    mov di, word [dseg_918a]         ; 0xac65
    push cx                          ; 0xac69
    jmp [dseg_9190]                  ; 0xac6a
__zdata_start:

    db 'VM1.$$$', 0
    db 'MAZEDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TOWNDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'CAVEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 0x00
    db '!%&]@#~', 0
    db 0x20
    times 11 db 0


__zimage_end:
