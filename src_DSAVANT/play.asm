; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/play.inc"
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif


%include "play/asm_only/thunk_loc_TMGR.asm"         ; 0x0000

loc_JTQK_0007.mouse_init_21 equ leaf_loc_UMNS
%include "shared/loc_JTQK_0007.asm"          ; 0x0007

loc_JTQK_000b.bios_mouse_loc1 equ leaf_loc_GJRP
%include "shared/loc_JTQK_000b.asm"          ; 0x000b

loc_JTQK_000f.leaf_loc1 equ loc_TJIS
%include "shared/loc_JTQK_000f.asm"          ; 0x000f

loc_JTQK_0013.bios_mouse_loc1 equ io_loc_QVTL
%include "shared/loc_JTQK_0013.asm"          ; 0x0013

loc_JTQK_0017.dos_read_file_31 equ bios_disk_loc_VOLH
%include "shared/loc_JTQK_0017.asm"          ; 0x0017

loc_JTQK_001b.graphics_loc1 equ leaf_loc_IQNG
%include "shared/loc_JTQK_001b.asm"          ; 0x001b

loc_JTQK_001f.dos_read_file1 equ leaf_loc_IUKK
%include "shared/loc_JTQK_001f.asm"          ; 0x001f

%include "play/loc_MMRI.asm"               ; 0x0023

%include "play/io_loc_HLUI.asm"            ; 0x00b6

%include "play/asm_only/io_loc_GHPS.asm"            ; 0x00c4

%include "play/leaf_loc_UMNS.asm"          ; 0x00fe

%include "play/asm_only/string_loc_SIQR.asm"        ; 0x0102

%include "play/leaf_loc_GJRP.asm"          ; 0x0154

%include "play/leaf_loc_IQNG.asm"          ; 0x016e

%include "play/leaf_loc_IUKK.asm"          ; 0x0183

%include "play/loc_TJIS.asm"               ; 0x01b0

%include "play/leaf_loc_VQOG.asm"          ; 0x01e6

%include "play/asm_only/io_loc_MNPU.asm"            ; 0x0203

%include "play/io_loc_LPON.asm"            ; 0x0222

%include "play/asm_only/io_loc_QVTL.asm"            ; 0x023f

%include "play/bios_disk_loc_VOLH.asm"     ; 0x0294

%include "play/leaf_loc_NLLU.asm"          ; 0x02b3

cseg_0b10 equ __zinsn_0b0f + 0x1
cseg_0b12 equ __zinsn_0b0f + 0x3
%include "play/asm_only/io_loc_TRGI.asm"            ; 0x02ba

%include "play/asm_only/loc_0322.asm"               ; 0x0322

%include "play/asm_only/io_loc_OULV.asm"            ; 0x0368

%include "play/io_loc_LPSH.asm"            ; 0x03ca

%include "play/io_loc_JOTO.asm"            ; 0x03dc

cseg_0848 equ __zinsn_0846 + 0x2
cseg_08bf equ __zinsn_08be + 0x1
cseg_08c4 equ __zinsn_08c3 + 0x1
cseg_08d4 equ __zinsn_08cf + 0x5
cseg_097c equ __zinsn_097a + 0x2
cseg_09a4 equ __zinsn_09a3 + 0x1
cseg_09a9 equ __zinsn_09a8 + 0x1
cseg_09bb equ __zinsn_09b6 + 0x5
cseg_0a54 equ __zinsn_0a52 + 0x2
; cseg_0b10 equ __zinsn_0b0f + 0x1
; cseg_0b12 equ __zinsn_0b0f + 0x3
cseg_18e8 equ __zinsn_18e7 + 0x1
cseg_18f2 equ __zinsn_18f1 + 0x1
cseg_1904 equ __zinsn_18ff + 0x5
%include "play/asm_only/loc_03e2.asm"               ; 0x03e2

%include "play/asm_only/io_loc_HMTR.asm"            ; 0x0592

%include "play/asm_only/loc_059b.asm"               ; 0x059b

%include "play/leaf_loc_STGJ.asm"          ; 0x0610

; cseg_0b10 equ __zinsn_0b0f + 0x1
; cseg_0b12 equ __zinsn_0b0f + 0x3
%include "play/asm_only/loc_0614.asm"               ; 0x0614

%include "play/asm_only/io_loc_LPTR.asm"            ; 0x06ec

%include "play/leaf_loc_JKKL.asm"          ; 0x077b

%include "play/asm_only/io_loc_KRUO.asm"            ; 0x07f6

%include "play/asm_only/io_loc_TOKT.asm"            ; 0x0821

%include "play/asm_only/io_loc_RPJI.asm"            ; 0x0831

%include "play/asm_only/io_loc_UVLK_0841.asm"       ; 0x0841

loc_121d equ __zinsn_121c + 0x1
%include "play/io_loc_VOJO.asm"            ; 0x086b

cseg_086e:
    db 0x00
cseg_086f:
    db 0x00, 0xfa, 0x50, 0x1e, 0x52, 0x53
%include "play/asm_only/loc_0875.asm"               ; 0x0875

; cseg_08c4 equ __zinsn_08c3 + 0x1
%include "play/asm_only/io_loc_TGPU.asm"            ; 0x08af

%include "play/asm_only/loc_095d.asm"               ; 0x095d

%include "play/asm_only/loc_0969.asm"               ; 0x0969

%include "play/asm_only/io_loc_UVLK_0975.asm"       ; 0x0975

; cseg_09a9 equ __zinsn_09a8 + 0x1
%include "play/asm_only/io_loc_PNPV.asm"            ; 0x099f

; cseg_0b10 equ __zinsn_0b0f + 0x1
; cseg_0b12 equ __zinsn_0b0f + 0x3
%include "play/asm_only/io_loc_UQMR.asm"            ; 0x09d4

%include "play/asm_only/string_loc_OJPI.asm"        ; 0x0a2a

%include "play/asm_only/io_loc_HTKU.asm"            ; 0x0a41

%include "play/asm_only/io_loc_TVNV.asm"            ; 0x0a6d

cseg_0a7c:
    db 0x01
cseg_0a7d:
    db 0x00
cseg_0a7e:
    db 0x00
cseg_0a7f:
    db 0x01, 0x00
cseg_0a81:
    db 0x64, 0x00
cseg_0a83:
    db 0x0a, 0x00
cseg_0a85:
    db 0x83, 0x0b, 0x20, 0x02
cseg_0a89:
    db 0x20, 0x02
cseg_0a8b:
    db 0x21, 0x02
cseg_0a8d:
    db 0x22, 0x02
cseg_0a8f:
    db 0x00
cseg_0a90:
    db 0x00, 0x00
cseg_0a92:
    db 0x00
cseg_0a93:
    db 0x00
cseg_0a94:
    db 0xff
cseg_0a95:
    db 0x00
cseg_0a96:
    db 0x00, 0x00
cseg_0a98:
    db 0x00, 0x00
cseg_0a9a:
    db 0x00, 0x00, 0x00
cseg_0a9d:
    db 0x00
cseg_0a9e:
    db 0x00, 0x00
cseg_0aa0:
    db 0x00, 0x00
cseg_0aa2:
    db 0x00, 0x00
cseg_0aa4:
    db 0x00, 0x00
cseg_0aa6:
    db 0x64, 0x00
cseg_0aa8:
    db 0x80
cseg_0aa9:
    db 0x80, 0x00, 0x00
cseg_0aac:
    db 0x00, 0x00
cseg_0aae:

    times 6 db 0
    db 0x50, 0x53, 0x1e, 0xe8, 0x3c, 0x00, 0xb0, 0x20, 0xe6, 0x20, 0x1f, 0x5b, 0x58, 0xcf, 0x50, 0x53
    db 0x1e, 0x2e, 0xff, 0x0e, 0x81, 0x0b, 0x7f, 0x03, 0xe8, 0x27, 0x00, 0xb0, 0x20, 0xe6, 0x20, 0x1f
    db 0x5b, 0x58, 0xcf

cseg_0ad7:
    db 0x00
cseg_0ad8:
    db 0x00
%include "play/asm_only/loc_IILK.asm"               ; 0x0ad9

%include "play/asm_only/io_loc_JPGM.asm"            ; 0x0af6

; cseg_0b10 equ __zinsn_0b0f + 0x1
; cseg_0b12 equ __zinsn_0b0f + 0x3
%include "play/asm_only/io_loc_TTNM.asm"            ; 0x0c97

%include "play/asm_only/loc_NSQH.asm"               ; 0x0cca

cseg_0cef:

    db 0x56, 0x06, 0x59, 0x06, 0x24, 0x06, 0x2d, 0x07, 0x32, 0x08, 0x39, 0x0a, 0x3b, 0x09, 0xff, 0x07
    db 0xff, 0xff, 0x03, 0x0e

cseg_0d03:

    times 55 db 0

cseg_0d3a:
    db 0x08
cseg_0d3b:
    db 0x00
cseg_0d3c:
    db 0x00
cseg_0d3d:
    db 0x00
cseg_0d3e:
    db 0x00
cseg_0d3f:
    db 0x00
cseg_0d40:
    db 0x00
cseg_0d41:
    db 0x00, 0x20
cseg_0d43:
    db 0x00, 0x00
cseg_0d45:
    db 0x00
cseg_0d46:
    db 0x00
cseg_0d47:
    db 0x00
cseg_0d48:
    db 0x00
cseg_0d49:
    db 0x00
cseg_0d4a:
    db 0x00
cseg_0d4b:
    db 0x00
cseg_0d4c:
    db 0x00
cseg_0d4d:
    db 0x00
cseg_0d4e:
    db 0x00, 0x00
%include "play/asm_only/string_loc_HGPS.asm"        ; 0x0d50

%include "play/asm_only/loc_OJOO.asm"               ; 0x0e01

%include "play/asm_only/loc_MQJR.asm"               ; 0x0e11

%include "play/asm_only/loc_JKSQ.asm"               ; 0x0e15

%include "play/asm_only/loc_JIPR.asm"               ; 0x0e1d

%include "play/loc_HOVS_0e24.asm"          ; 0x0e24

%include "play/loc_NPTG.asm"               ; 0x0f44

%include "play/leaf_loc_TKVU.asm"          ; 0x0f55

%include "play/loc_PLIR.asm"               ; 0x1184

cseg_11d6:
    db 0xff
cseg_11d7:
    db 0x00
cseg_11d8:
    db 0x00
cseg_11d9:
    db 0x00
%include "play/loc_PGTM.asm"               ; 0x11da

%include "play/asm_only/io_loc_QUNR.asm"            ; 0x11fb

cseg_121b equ __zinsn_121a + 0x1
%include "play/asm_only/io_loc_GMNM.asm"            ; 0x1217

%include "play/string_loc_OSJN.asm"        ; 0x12af

%include "play/leaf_loc_VSLO.asm"          ; 0x12f1

%include "play/loc_QKNN.asm"               ; 0x1302

%include "play/asm_only/string_loc_NOSM.asm"        ; 0x137a

cseg_1774:
    db 0x00
%include "play/asm_only/loc_NQLH.asm"               ; 0x1775

%include "play/io_loc_VHII.asm"            ; 0x18cb

; cseg_18f2 equ __zinsn_18f1 + 0x1
%include "play/asm_only/io_loc_KNIR.asm"            ; 0x18e4

    db 0x00
cseg_193a:

    times 256 db 0
    db '?>62.,*(&%$#"! '
    db 0x1f, 0x1e, 0x1e, 0x1d, 0x1c, 0x1c, 0x1b, 0x1b, 0x1a, 0x1a, 0x19, 0x19, 0x18, 0x18, 0x17, 0x17
    db 0x17, 0x16, 0x16, 0x16, 0x15, 0x15, 0x15, 0x14, 0x14, 0x14, 0x13, 0x13, 0x13, 0x13, 0x12, 0x12
    db 0x12, 0x12, 0x11, 0x11, 0x11, 0x11, 0x11, 0x10, 0x10, 0x10, 0x10, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f
    db 0x0f, 0x0e, 0x0e, 0x0e, 0x0e, 0x0e, 0x0d, 0x0d, 0x0d, 0x0d, 0x0d, 0x0d, 0x0c, 0x0c, 0x0c, 0x0c
    db 0x0c, 0x0c, 0x0c, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a
    db 0x0a, 0x0a, 0x0a, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x08, 0x08
    db 0x08, 0x08, 0x08, 0x08, 0x08, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x06
    db 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x05, 0x05, 0x05, 0x05, 0x05
    db 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04
    db 0x04, 0x04, 0x04, 0x04, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03
    db 0x03, 0x03, 0x03, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
    db 0x02, 0x02, 0x02, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
    db 0x01, 0x01, 0x01, 0x01
    times 47 db 0

