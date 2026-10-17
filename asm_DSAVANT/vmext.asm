; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vmext.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0x524b ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x00e8 ; o_dsize: initialized data size
    dw 0x099c                             ; o_bss: uninitialized data size
    dw loc_TQTV - IMAGE_BASE + __zres_end ; 0xa262 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_KIVR equ 0x4471 + VBASE

%include "vmext/api_idx_0002_NURV.asm"     ; 0x000e

%include "shared/loc_MPHO.asm"              ; 0x00b6

%include "shared/api_idx_0004_QVPP.asm"     ; 0x00f0

%include "shared/api_idx_0002_KQPU.asm"     ; 0x01ac

%include "vmext/api_idx_0002_OTTG.asm"     ; 0x021c

api_idx_0002_HTRV.bss1 equ bss_9188
api_idx_0002_HTRV.loc1 equ loc_02e3
%include "shared/api_idx_0002_HTRV.asm"     ; 0x0262

%include "vmext/fpu_loc_OTPG.asm"          ; 0x0273

%include "vmext/fpu_loc_LHLU.asm"          ; 0x027a

%include "vmext/fpu_loc_LTOU.asm"          ; 0x0281

%include "vmext/fpu_loc_LHIH.asm"          ; 0x0288

%include "vmext/fpu_loc_JPGH.asm"          ; 0x028e

%include "vmext/fpu_loc_TIUJ.asm"          ; 0x0295

%include "vmext/fpu_loc_LIKP.asm"          ; 0x029c

%include "shared/loc_QQOI.asm"              ; 0x059a

%include "vmext/loc_IJSN.asm"              ; 0x05c0

%include "vmext/api_idx_0004_KQNK.asm"     ; 0x05e6

%include "vmext/loc_VJNU.asm"              ; 0x0636

%include "shared/loc_IVLM.asm"              ; 0x0692

loc_NJKS.loc1 equ loc_GPIH
loc_NJKS.loc2 equ loc_MMMO
%include "shared/loc_NJKS.asm"              ; 0x06c3

%include "shared/api_idx_0008_OMTP.asm"     ; 0x0764

%include "vmext/api_idx_0050_OLPO.asm"     ; 0x081a

%include "vmext/loc_ONVI.asm"              ; 0x0836

loc_HILS.bss1 equ bss_918a
%include "shared/loc_HILS.asm"              ; 0x0860

%include "vmext/api_idx_0004_JIVL.asm"     ; 0x0897

%include "vmext/api_idx_000c_GVHU.asm"     ; 0x09be

%include "vmext/api_idx_0002_JSVP.asm"     ; 0x0b49

%include "vmext/api_idx_000a_NPNK.asm"     ; 0x0b8c

%include "vmext/loc_VUVO.asm"              ; 0x0c0d

%include "vmext/api_idx_008a_SRHN.asm"     ; 0x0c1f

%include "vmext/loc_TLQV.asm"              ; 0x0eac

%include "vmext/asm_only/api_idx_0012_PJTU.asm"     ; 0x0ee0

%include "vmext/string_loc_JUNI.asm"       ; 0x0fb3

%include "vmext/asm_only/string_loc_PVJO.asm"       ; 0x0fe2

%include "vmext/leaf_loc_JQVM.asm"         ; 0x109f

%include "vmext/leaf_loc_PNJO.asm"         ; 0x10b4

%include "vmext/leaf_loc_VTGV.asm"         ; 0x10c4

%include "vmext/asm_only/string_loc_LQQS.asm"       ; 0x119c

%include "vmext/leaf_loc_USKL.asm"         ; 0x127d

%include "vmext/io_loc_MJON.asm"           ; 0x12ac

%include "vmext/io_loc_RVMM.asm"           ; 0x12c8

%include "vmext/io_loc_PHVU.asm"           ; 0x12de

%include "shared/api_idx_004c_RQSO.asm"     ; 0x1356

%include "shared/api_idx_0004_ONJT.asm"     ; 0x146b

%include "shared/api_idx_0006_TMNI.asm"     ; 0x14c7

%include "vmext/api_idx_0008_OTKN.asm"     ; 0x151e

%include "vmext/asm_only/loc_HTTH.asm"              ; 0x15af

loc_GPIH.bss1 equ bss_9188
%include "shared/loc_GPIH.asm"              ; 0x1823

loc_MMMO.bss1 equ bss_9188
%include "shared/loc_MMMO.asm"              ; 0x189b

%include "vmext/loc_UMHI_1913.asm"         ; 0x1913

%include "vmext/loc_LPLI_1927.asm"         ; 0x1927

%include "vmext/loc_UMHI_193b.asm"         ; 0x193b

%include "vmext/loc_LPLI_194f.asm"         ; 0x194f

%include "vmext/loc_VOSO.asm"              ; 0x1963

%include "vmext/loc_RRJG.asm"              ; 0x19e4

%include "vmext/api_idx_0008_SLRI.asm"     ; 0x1a1d

%include "vmext/leaf_loc_OKKG.asm"         ; 0x1b46

%include "vmext/leaf_loc_NTJN.asm"         ; 0x1b59

%include "vmext/leaf_loc_KOGU_1b6c.asm"    ; 0x1b6c

%include "vmext/leaf_loc_LSPM.asm"         ; 0x1b7f

%include "vmext/loc_1bac.asm"              ; 0x1bac

leaf_loc_LGUH.loc1 equ loc_TRQP
%include "shared/leaf_loc_LGUH.asm"         ; 0x1cd0

leaf_loc_TGSJ.loc1 equ loc_TRQP
%include "shared/leaf_loc_TGSJ.asm"         ; 0x1cd8

leaf_loc_LHNH.loc1 equ loc_TRQP
%include "shared/leaf_loc_LHNH.asm"         ; 0x1ce0

leaf_loc_UKTT.loc1 equ loc_TRQP
%include "shared/leaf_loc_UKTT.asm"         ; 0x1ce8

leaf_loc_LUKJ.bss1 equ bss_91aa
leaf_loc_LUKJ.loc1 equ loc_TRQP
%include "shared/leaf_loc_LUKJ.asm"         ; 0x1cf0

leaf_loc_NNIO.bss1 equ bss_91aa
leaf_loc_NNIO.loc1 equ loc_TRQP
%include "shared/leaf_loc_NNIO.asm"         ; 0x1cff

%include "vmext/leaf_loc_KJOS.asm"         ; 0x1d0e

%include "vmext/leaf_loc_GPJL.asm"         ; 0x1d29

%include "vmext/leaf_loc_THRI.asm"         ; 0x1d48

leaf_loc_KGIG.loc1 equ loc_TRQP
%include "shared/leaf_loc_KGIG.asm"         ; 0x1d67

leaf_loc_RJTN.loc1 equ loc_TRQP
%include "shared/leaf_loc_RJTN.asm"         ; 0x1d6f

%include "vmext/leaf_loc_NQKR.asm"         ; 0x1d77

%include "vmext/leaf_loc_KOGU_1d8b.asm"    ; 0x1d8b

%include "vmext/leaf_loc_HHMN.asm"         ; 0x1d9e

%include "vmext/leaf_loc_JTOP.asm"         ; 0x1db4

%include "vmext/leaf_loc_QGJH.asm"         ; 0x1dd2

%include "vmext/api_idx_0008_NLUK.asm"     ; 0x1e4f

%include "vmext/fpu_loc_QMOG.asm"          ; 0x1e85

%include "vmext/fpu_loc_NVRH.asm"          ; 0x1e89

%include "vmext/fpu_loc_VSLU.asm"          ; 0x1e94

%include "vmext/fpu_loc_MLML.asm"          ; 0x1e98

%include "vmext/loc_1ea8.asm"              ; 0x1ea8

%include "vmext/loc_MHOR.asm"              ; 0x1fac

%include "vmext/loc_VLQH.asm"              ; 0x1fb3

%include "vmext/loc_PIVO.asm"              ; 0x1fba

%include "vmext/loc_PLLI.asm"              ; 0x1fc1

%include "vmext/loc_RNIO.asm"              ; 0x1fc8

%include "vmext/loc_NMPJ.asm"              ; 0x1fd6

%include "vmext/loc_JJML.asm"              ; 0x1fe4

%include "vmext/loc_IVPQ.asm"              ; 0x1feb

%include "vmext/api_idx_0004_RTNM.asm"     ; 0x201b

%include "vmext/api_idx_0010_NIMV.asm"     ; 0x2291

%include "vmext/api_idx_0012_MLRN.asm"     ; 0x29e5

leaf_loc_RSTT.loc1 equ loc_PLIR
leaf_loc_RSTT.loc2 equ loc_30a2
%include "shared/leaf_loc_RSTT.asm"         ; 0x2ec0

%include "shared/leaf_loc_URUM.asm"         ; 0x2efa

%include "shared/leaf_loc_JNNQ.asm"         ; 0x2f3c

leaf_loc_MGPR.bss1 equ bss_91a8
%include "shared/leaf_loc_MGPR.asm"         ; 0x2f85

%include "vmext/leaf_loc_TSQO.asm"         ; 0x304f

%include "vmext/api_idx_0012_STJU.asm"     ; 0x30f4

%include "vmext/api_idx_0016_LHKK.asm"     ; 0x39e2

%include "shared/api_idx_0024_NUGL.asm"     ; 0x3b83

%include "shared/api_idx_001e_IGLM.asm"     ; 0x3d29

%include "vmext/api_idx_0030_MNJL.asm"     ; 0x3e8c

loc_IONR.api_idx1 equ api_idx_0030_MNJL
%include "shared/loc_IONR.asm"              ; 0x51fb

%include "vmext/asm_only/loc_TQTV.asm"              ; 0x521b

__zdata_start:

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
    times 11 db 0


__zimage_end:
