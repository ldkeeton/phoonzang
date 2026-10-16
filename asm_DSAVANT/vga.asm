; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vga.inc"
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif

data_1e64 equ __zdata_1e64 - IMAGE_BASE

loc_LPSH:
    jmp near loc_JTQK_0003           ; 0x0000
loc_JTQK_0003:
    call mouse_init                  ; 0x0003
    retf                             ; 0x0006
loc_JTQK_0007:
    call mouse_init_2                ; 0x0007
    retf                             ; 0x000a
loc_JTQK_000b:
    call bios_mouse_loc_TVOK         ; 0x000b
    retf                             ; 0x000e
loc_JTQK_000f:
    call leaf_loc_LMQV               ; 0x000f
    retf                             ; 0x0012
loc_JTQK_0013:
    call bios_mouse_loc_USQU         ; 0x0013
    retf                             ; 0x0016
loc_JTQK_0017:
    call dos_read_file_3             ; 0x0017
    retf                             ; 0x001a
loc_JTQK_001b:
    call graphics_loc_OLQQ           ; 0x001b
    retf                             ; 0x001e
loc_JTQK_001f:
    call dos_read_file               ; 0x001f
    retf                             ; 0x0022
loc_JTQK_0023:
    call dos_read_file_2             ; 0x0023
    retf                             ; 0x0026
loc_JTQK_0027:
    call dos_print_str               ; 0x0027
    retf                             ; 0x002a
loc_JTQK_002b:
    call leaf_loc_UQHV               ; 0x002b
    retf                             ; 0x002e
loc_JTQK_002f:
    call graphics_loc_IOKK           ; 0x002f
    retf                             ; 0x0032
loc_JTQK_0033:
    call leaf_loc_LMRM               ; 0x0033
    retf                             ; 0x0036
loc_JTQK_0037:
    call leaf_loc_UNNV               ; 0x0037
    retf                             ; 0x003a
loc_JTQK_003b:
    call leaf_loc_OITH               ; 0x003b
    retf                             ; 0x003e
loc_JTQK_003f:
    call leaf_loc_TKRV               ; 0x003f
    retf                             ; 0x0042
loc_JTQK_0043:
    call loc_QVUN                    ; 0x0043
    retf                             ; 0x0046
loc_JTQK_0047:
    call leaf_loc_QSOP               ; 0x0047
    retf                             ; 0x004a
loc_JTQK_004b:
    call leaf_loc_GHVP               ; 0x004b
    retf                             ; 0x004e
loc_JTQK_004f:
    call string_loc_RQOL             ; 0x004f
    retf                             ; 0x0052
loc_JTQK_0053:
    call dos_alloc_mem               ; 0x0053
    retf                             ; 0x0056
loc_JTQK_0057:
    call dos_free_mem                ; 0x0057
    retf                             ; 0x005a
loc_JTQK_005b:
    call loc_QNIQ                    ; 0x005b
    retf                             ; 0x005e
loc_JTQK_005f:
    call bios_mouse_loc_RKQL         ; 0x005f
    retf                             ; 0x0062
loc_JTQK_0063:
    call dos_print_str_2             ; 0x0063
    retf                             ; 0x0066
loc_JTQK_0067:
    call leaf_loc_ILKH               ; 0x0067
    retf                             ; 0x006a
loc_JTQK_006b:
    call dos_write_file              ; 0x006b
    retf                             ; 0x006e
loc_JTQK_006f:
    call loc_JTQT                    ; 0x006f
    retf                             ; 0x0072
loc_JTQK_0073:
    call bios_video_loc_KVON         ; 0x0073
    retf                             ; 0x0076
loc_JTQK_0077:
    call bios_video_loc_TVOT         ; 0x0077
    retf                             ; 0x007a
loc_JTQK_007b:
    call dos_free_mem_2              ; 0x007b
    retf                             ; 0x007e
loc_JTQK_007f:
    call dos_free_mem_3              ; 0x007f
    retf                             ; 0x0082
loc_JTQK_0083:
    call dos_free_mem_4              ; 0x0083
    retf                             ; 0x0086
loc_JTQK_0087:
    call bios_mouse_loc_PRLT         ; 0x0087
    retf                             ; 0x008a
loc_JTQK_008b:
    call bios_mouse_loc_JLUV         ; 0x008b
    retf                             ; 0x008e
loc_JTQK_008f:
    call loc_NRVQ                    ; 0x008f
    retf                             ; 0x0092
loc_JTQK_0093:
    call loc_ROPT                    ; 0x0093
    retf                             ; 0x0096
loc_JTQK_0097:
    call leaf_loc_IPJP               ; 0x0097
    retf                             ; 0x009a
loc_JTQK_009b:
    call leaf_loc_PIJK               ; 0x009b
    retf                             ; 0x009e
loc_JTQK_009f:
    call dos_write_file_2            ; 0x009f
    retf                             ; 0x00a2
loc_JTQK_00a3:
    call dos_mem_loc_NGNH            ; 0x00a3
    retf                             ; 0x00a6
loc_JTQK_00a7:
    call dos_read_file_4             ; 0x00a7
    retf                             ; 0x00aa
loc_JTQK_00ab:
    call dos_read_file_5             ; 0x00ab
    retf                             ; 0x00ae
loc_JTQK_00af:
    call dos_file_loc_JRGK           ; 0x00af
    retf                             ; 0x00b2
loc_JTQK_00b3:
    call dos_read_file_6             ; 0x00b3
    retf                             ; 0x00b6
loc_JTQK_00b7:
    call loc_ISSO                    ; 0x00b7
    retf                             ; 0x00ba
loc_JTQK_00bb:
    call loc_SRSO                    ; 0x00bb
    retf                             ; 0x00be
loc_JTQK_00bf:
    call loc_LSLP                    ; 0x00bf
    retf                             ; 0x00c2
loc_JTQK_00c3:
    call loc_HOSM                    ; 0x00c3
    retf                             ; 0x00c6
loc_JTQK_00c7:
    call dos_read_file_7             ; 0x00c7
    retf                             ; 0x00ca
loc_JTQK_00cb:
    call loc_RKRU                    ; 0x00cb
    retf                             ; 0x00ce
loc_JTQK_00cf:
    call loc_VHQQ                    ; 0x00cf
    retf                             ; 0x00d2
loc_JTQK_00d3:
    call loc_PORS_4866               ; 0x00d3
    retf                             ; 0x00d6
loc_JTQK_00d7:
    call loc_PORS_487e               ; 0x00d7
    retf                             ; 0x00da
loc_JULP:
    call loc_MMLT                    ; 0x00db
    retf                             ; 0x00de
    db 0x80, 0x41
cseg_00e1:
    db 0x00, 0x00, 0x00, 0x10
cseg_00e5:
    db 0x00, 0x00, 0x40, 0x01
cseg_00e9:
    db 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x30, 0x05, 0x00, 0x00, 0xd0, 0x01, 0x00, 0x00
cseg_00f7:
    times 4 db 0
cseg_00fb:
    times 4 db 0
cseg_00ff:
    db 0x00, 0x00
cseg_0101:
    db 0x00, 0x00
cseg_0103:
    db 0x00, 0x00
cseg_0105:
    db 0x00
cseg_0106:
    db 0x03, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
cseg_010e:
    db 0x0b, 0x01, 0x00, 0x00
cseg_0112:
    db 0x0f, 0x01, 0x00, 0x00
cseg_0116:
    db 0x13, 0x01, 0x00, 0x00
cseg_011a:
    db 0x17, 0x01, 0x00, 0x00
cseg_011e:
    db 0x1b, 0x01, 0x00, 0x00
cseg_0122:
    db 0x1f, 0x01, 0x00, 0x00
cseg_0126:
    db 0x00
cseg_0127:
    db 0x00
cseg_0128:
    db 0x00
__zdata_0229:
cseg_0129:

    times 40 db 0

__zdata_0251:
cseg_0151:
    times 10 db 0
__zdata_025b:
cseg_015b:

    times 32 db 0

cseg_017b:

    db 0x04
    times 21 db 0

cseg_0191:
    db 0x00, 0x00
cseg_0193:
    db 0x01, 0x00
cseg_0195:
    db 0x00, 0x00
cseg_0197:
    db 0x00, 0x00
cseg_0199:
    db 0x00, 0x00
__zdata_029b:
cseg_019b:

    times 40 db 0

cseg_01c3:

    times 20 db 0

__zdata_02d7:
cseg_01d7:

    times 184 db 0

cseg_028f:
    db 0x00, 0x00
cseg_0291:
    db 0x00, 0x00
%include "shared/graphics_loc_IOKK.asm"       ; 0x0293

%include "shared/leaf_loc_ILKH.asm"           ; 0x0439

%include "vga/leaf_loc_LMRM.asm"           ; 0x0447

%include "vga/asm_only/leaf_loc_UNNV.asm"           ; 0x045c

%include "vga/asm_only/leaf_loc_OITH.asm"           ; 0x0477

%include "vga/asm_only/leaf_loc_TKRV.asm"           ; 0x0496

%include "vga/asm_only/loc_QVUN.asm"                ; 0x04b5

cseg_0515:
    db 0x00
%include "vga/asm_only/graphics_loc_LQRJ.asm"       ; 0x0516

%include "vga/asm_only/leaf_loc_PRNU.asm"           ; 0x067f

%include "shared/leaf_loc_QSOP.asm"           ; 0x06b2

%include "shared/leaf_loc_GHVP.asm"           ; 0x06d9

%include "vga/asm_only/string_loc_RQOL.asm"         ; 0x0728

%include "vga/asm_only/dos_alloc_mem.asm"           ; 0x077a

%include "vga/asm_only/dos_con_loc_PJHN.asm"        ; 0x07fd

%include "vga/asm_only/dos_free_mem.asm"            ; 0x0836

%include "vga/asm_only/dos_con_loc_SUSK.asm"        ; 0x088f

data_0251 equ __zdata_0251 - IMAGE_BASE
data_02d7 equ __zdata_02d7 - IMAGE_BASE
data_0bda equ __zdata_0bda - IMAGE_BASE
%include "vga/asm_only/dos_read_file.asm"           ; 0x08d2

; data_0251 equ __zdata_0251 - IMAGE_BASE
; data_0bda equ __zdata_0bda - IMAGE_BASE
%include "vga/asm_only/dos_write_file.asm"          ; 0x099c

%include "vga/asm_only/dos_con_loc_VOMM.asm"        ; 0x0a4f

%include "vga/asm_only/dos_con_loc_HUUH.asm"        ; 0x0a8d

__zdata_0bc6:
cseg_0ac6:

    times 20 db 0

__zdata_0bda:

    times 208 db 0

cseg_0baa:
    db 0x00, 0x00
cseg_0bac:
    db 0x00, 0x00
data_0bc6 equ __zdata_0bc6 - IMAGE_BASE
; data_0bda equ __zdata_0bda - IMAGE_BASE
%include "vga/asm_only/dos_read_file_2.asm"         ; 0x0bae

data_029b equ __zdata_029b - IMAGE_BASE
; data_02d7 equ __zdata_02d7 - IMAGE_BASE
%include "vga/leaf_loc_OVON.asm"           ; 0x0e34

loc_KLNH.cseg1     equ cseg_0e6d
loc_KLNH.cseg2     equ cseg_0e6f
loc_KLNH.leaf_loc1 equ leaf_loc_TRIO
%include "shared/loc_KLNH.asm"                ; 0x0e71

%include "vga/asm_only/leaf_loc_TRIO.asm"           ; 0x0f3b

; data_0bc6 equ __zdata_0bc6 - IMAGE_BASE
%include "vga/asm_only/loc_NRVQ.asm"                ; 0x0f6f

; data_0bc6 equ __zdata_0bc6 - IMAGE_BASE
; data_0bda equ __zdata_0bda - IMAGE_BASE
%include "vga/asm_only/dos_print_str.asm"           ; 0x0fb7

%include "vga/asm_only/mouse_init.asm"              ; 0x11f8

%include "vga/asm_only/mouse_init_2.asm"            ; 0x126c

bios_mouse_loc_USQU.cseg1 equ cseg_14ac
bios_mouse_loc_USQU.cseg2 equ cseg_14ae
%include "shared/bios_mouse_loc_USQU.asm"     ; 0x12c9

%include "shared/leaf_loc_LMQV.asm"           ; 0x1308

bios_mouse_loc_TVOK.cseg1 equ cseg_1dcd
bios_mouse_loc_TVOK.cseg2 equ cseg_1dcf
bios_mouse_loc_TVOK.cseg3 equ cseg_1dd1
%include "shared/bios_mouse_loc_TVOK.asm"     ; 0x1317

%include "shared/bios_mouse_loc_RKQL.asm"     ; 0x139a

data_1e5c equ __zdata_1e5c - IMAGE_BASE
%include "vga/asm_only/dos_print_str_2.asm"         ; 0x13c9

%include "vga/asm_only/dos_con_loc_TUKI.asm"        ; 0x147d

cseg_14ac:
    db 0x00, 0x00
cseg_14ae:
    db 0x00, 0x00
cseg_14b0:
    db 0x00, 0x00
cseg_14b2:
    db 0x00, 0x00
cseg_14b4:
    db 0xc4, 0x15
cseg_14b6:
    db 0xc4, 0x19
cseg_14b8:
    db 0x00, 0x00
cseg_14ba:
    db 0x00, 0x00
cseg_14bc:
    db 0x00, 0x00
cseg_14be:
    db 0x00, 0x00
cseg_14c0:
    db 0x00, 0x00
cseg_14c2:

    times 2050 db 0

__zdata_1dc4:
cseg_1cc4:

    times 136 db 0

__zdata_1e4c:
cseg_1d4c:

    times 16 db 0

__zdata_1e5c:
cseg_1d5c:
    db 0x0a, 0x00
cseg_1d5e:
    db 0x0a, 0x00
cseg_1d60:
    db 0x0a, 0x00, 0x0a, 0x00
__zdata_1e64:
cseg_1d64:
    db 0x00, 0x00
cseg_1d66:
    db 0x00, 0x00
cseg_1d68:

    times 8 db 0
    db 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xb6, 0xb6, 0xb6, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x13
    db 0x15, 0xb6, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x15, 0x16, 0xb6, 0x00, 0xff, 0xff, 0xff
    db 0xff, 0x00, 0xb3, 0xb6, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x00, 0x00, 0xb3
    db 0xb6, 0xc1, 0x00, 0xff, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00
    db 0xb3, 0xc3, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0xff

cseg_1dcd:
    db 0x00, 0x00
cseg_1dcf:
    db 0x00, 0x00
cseg_1dd1:
    db 0x00, 0x00
cseg_1dd3:

    db 0x00, 0xfc, 0x25, 0x0a, 0x00, 0x74, 0x34, 0x2e, 0x80, 0x3e, 0xd3, 0x1e, 0x00, 0x75, 0x29, 0x2e
    db 0xa2, 0xd3, 0x1e, 0x2e, 0x89, 0x1e, 0xcd, 0x1e, 0xd1, 0xe9, 0x2e, 0x89, 0x0e, 0xcf, 0x1e, 0x2e
    db 0x89, 0x16, 0xd1, 0x1e, 0x32, 0xc0, 0x2e, 0xa2, 0xd3, 0x1e, 0x2e, 0x3b, 0x0e, 0xac, 0x15, 0x75
    db 0x08, 0x2e, 0x3b, 0x16, 0xae, 0x15, 0x75, 0x01, 0xcb, 0xd1, 0xe1, 0x2e, 0xa0, 0x27, 0x02, 0x2e
    db 0x0a, 0x06, 0x26, 0x02, 0x74, 0x01, 0xcb

leaf_loc_JHTT.cseg1 equ cseg_1dd3
leaf_loc_JHTT.cseg2 equ cseg_14b0
leaf_loc_JHTT.cseg3 equ cseg_14b2
%include "shared/leaf_loc_JHTT.asm"           ; 0x1e1a

data_1dc4 equ __zdata_1dc4 - IMAGE_BASE
data_1e4c equ __zdata_1e4c - IMAGE_BASE
%include "vga/asm_only/graphics_loc_HKVN.asm"       ; 0x1e35

leaf_loc_UQHV.cseg1 equ cseg_1dcd
%include "shared/leaf_loc_UQHV.asm"           ; 0x217d

data_0229 equ __zdata_0229 - IMAGE_BASE
%include "vga/asm_only/loc_QNIQ.asm"                ; 0x2185

; data_0229 equ __zdata_0229 - IMAGE_BASE
; data_0bda equ __zdata_0bda - IMAGE_BASE
%include "vga/asm_only/dos_read_file_3.asm"         ; 0x21cd

%include "vga/asm_only/dos_con_loc_QRKT.asm"        ; 0x22be

cseg_22de:
    db 0x30
cseg_22df:
    db '0 not freed.', 0
    db 0x0a, 0x24
%include "vga/asm_only/dos_con_loc_KORI.asm"        ; 0x22ee

cseg_2327:

    db 0xef, 0x9f, 0x9d, 0x9c, 0x9b, 0xff, 0x9a, 0x99, 0x48, 0x8e, 0x8d, 0x8c, 0xff, 0xff, 0xff, 0xff
    db 0x38, 0xff, 0x4f, 0xff, 0x8b, 0xff, 0xff, 0xff, 0x37, 0xff, 0xff, 0x4e, 0xff, 0x89, 0x88, 0xff
    db 0x36, 0xff, 0xff, 0x4d, 0xff, 0xff, 0xff, 0x87, 0x35, 0xff, 0xff, 0xff, 0x4c, 0xff, 0xff, 0x86
    db 0x34, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x33, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xee, 0xaf, 0xfe, 0xfd, 0xff, 0xff, 0xff, 0xff, 0x5c, 0x7e, 0x7d, 0xff, 0xbf, 0xff, 0xff, 0xff
    db 0x46, 0xff, 0x7b, 0xff, 0xbe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x85
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x4b, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xcb, 0xff, 0xae, 0xff, 0xfc, 0xfb, 0xff, 0xff, 0xed, 0xec, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0x5b, 0xe1, 0x70, 0x7a, 0xff, 0xbd, 0xff, 0x98, 0x45, 0xff, 0xff, 0x78, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x84
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xf5, 0xff, 0xff, 0xad, 0xff, 0xff, 0xfa, 0xf9, 0xc8, 0xa2, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xc7, 0xeb, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x6d, 0xff, 0xbc, 0xff, 0x97
    db 0x44, 0xff, 0xff, 0xff, 0xff, 0xff, 0xbb, 0xff, 0x43, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x83, 0xff, 0xff, 0xff, 0x31, 0xff, 0xff, 0xff, 0xff
    db 0x1c, 0xff, 0xa6, 0xff, 0xac, 0xff, 0xff, 0xf8, 0xff, 0xf3, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xc6, 0xea, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xc5, 0xd5, 0xe6, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x6a, 0x67, 0xba, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xb9, 0xff
    db 0x42, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x82, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0x1a, 0xff, 0xff, 0xff, 0xff, 0xab, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0x29, 0xff, 0xf2, 0xff, 0xff, 0xff, 0xff, 0xff, 0x3c, 0xd4, 0xe8, 0xff, 0xff, 0xff, 0xff, 0xf7
    db 0xc3, 0xff, 0xe5, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x66, 0x64, 0xb8
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x81, 0x41, 0xff, 0xff, 0xff, 0xff, 0x30, 0xff, 0x80
    db 0x19, 0xff, 0xff, 0xa5, 0xff, 0xff, 0xaa, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xf1, 0xff, 0xff, 0xff, 0xff, 0xff, 0x28, 0xff, 0xff, 0xf0, 0xff, 0xff, 0xff, 0xff
    db 0x2f, 0xff, 0xdf, 0xff, 0xff, 0xff, 0xff, 0xff, 0xc0, 0xff, 0xd1, 0xe4, 0xff, 0xff, 0xff, 0xf6
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x62, 0x60, 0xff, 0xff, 0xff, 0x40, 0xff, 0xff, 0xff, 0xff
    db 0x17, 0xff, 0xff, 0xff, 0xa4, 0xff, 0xff, 0xa9, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0x15, 0xff, 0xff, 0x96, 0xff, 0xff, 0x27, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xa8
    db 0xff, 0x26, 0xff, 0xde, 0x13, 0xff, 0x95, 0xff, 0xb6, 0x2d, 0x25, 0xdc, 0xda, 0x12, 0x94, 0xa7
    db 0x56, 0xb5, 0xb2, 0xff, 0xe3, 0xd7, 0x11, 0xff, 0x55, 0xff, 0xb1, 0xb0, 0xff, 0x52, 0x50, 0x10
    db 0x00

%include "vga/asm_only/loc_JTQT.asm"                ; 0x2528

%include "vga/asm_only/bios_video_loc_KVON.asm"     ; 0x277f

%include "vga/asm_only/bios_video_loc_TVOT.asm"     ; 0x27d0

%include "vga/asm_only/dos_free_mem_2.asm"          ; 0x2802

%include "vga/asm_only/bios_video_loc_GGUP.asm"     ; 0x28ba

%include "vga/asm_only/dos_free_mem_3.asm"          ; 0x28f0

%include "vga/asm_only/dos_mem_loc_QGNT.asm"        ; 0x29bf

%include "vga/asm_only/dos_free_mem_4.asm"          ; 0x29f6

%include "vga/asm_only/dos_con_loc_HJPN.asm"        ; 0x2a97

%include "vga/asm_only/leaf_loc_PIJK.asm"           ; 0x2acf

dos_mem_loc_NGNH.cseg1 equ cseg_0bac
%include "shared/dos_mem_loc_NGNH.asm"        ; 0x2b01

%include "shared/bios_mouse_loc_PRLT.asm"     ; 0x2b6c

bios_mouse_loc_JLUV.cseg1 equ cseg_14ac
bios_mouse_loc_JLUV.cseg2 equ cseg_14ae
%include "shared/bios_mouse_loc_JLUV.asm"     ; 0x2c0e

; data_0251 equ __zdata_0251 - IMAGE_BASE
%include "vga/asm_only/loc_ROPT.asm"                ; 0x2cbe

%include "shared/leaf_loc_IPJP.asm"           ; 0x2d08

__zdata_2e2b:
cseg_2d2b:

    times 40 db 0

__zdata_2e53:
cseg_2d53:

    times 25 db 0

; data_0229 equ __zdata_0229 - IMAGE_BASE
; data_0bda equ __zdata_0bda - IMAGE_BASE
%include "vga/asm_only/graphics_loc_OLQQ.asm"       ; 0x2d6c

%include "vga/asm_only/dos_con_loc_VJMI.asm"        ; 0x3131

%include "shared/leaf_loc_NOSG.asm"           ; 0x319f

data_381b equ __zdata_381b - IMAGE_BASE
%include "vga/asm_only/graphics_loc_PVIU.asm"       ; 0x31d9

%include "shared/leaf_loc_MTKK.asm"           ; 0x3340

; data_381b equ __zdata_381b - IMAGE_BASE
%include "vga/asm_only/leaf_loc_GLTQ.asm"           ; 0x3360

%include "shared/dos_con_loc_KIIN.asm"        ; 0x3822

data_025b equ __zdata_025b - IMAGE_BASE
; data_029b equ __zdata_029b - IMAGE_BASE
; data_0bda equ __zdata_0bda - IMAGE_BASE
%include "vga/asm_only/dos_write_file_2.asm"        ; 0x385f

%include "vga/asm_only/dos_con_loc_GKQH.asm"        ; 0x3ab7

%include "vga/asm_only/dos_con_loc_QORG.asm"        ; 0x3aee

%include "vga/asm_only/dos_con_loc_RSSU.asm"        ; 0x3b1f

%include "vga/asm_only/dos_con_loc_UHSU.asm"        ; 0x3b5c

cseg_3b8e:
    db 0x00, 0x00
%include "shared/leaf_loc_HLGJ.asm"           ; 0x3b90

; data_025b equ __zdata_025b - IMAGE_BASE
; data_029b equ __zdata_029b - IMAGE_BASE
; data_0bda equ __zdata_0bda - IMAGE_BASE
%include "vga/asm_only/dos_read_file_4.asm"         ; 0x3ba5

%include "vga/asm_only/dos_file_loc_MUHV.asm"       ; 0x3d0b

%include "vga/asm_only/dos_con_loc_KVVK.asm"        ; 0x3d39

%include "vga/asm_only/dos_read_file_5.asm"         ; 0x3d72

%include "shared/dos_con_loc_URMP.asm"        ; 0x3f45

; data_02d7 equ __zdata_02d7 - IMAGE_BASE
%include "vga/asm_only/dos_file_loc_JRGK.asm"       ; 0x3f73

%include "vga/asm_only/dos_con_loc_GQSQ.asm"        ; 0x4088

%include "shared/dos_con_loc_MQTN.asm"        ; 0x40d2

__zdata_4202:
cseg_4102:

    times 84 db 0

; data_0bda equ __zdata_0bda - IMAGE_BASE
data_4202 equ __zdata_4202 - IMAGE_BASE
%include "vga/asm_only/dos_read_file_6.asm"         ; 0x4156

%include "vga/asm_only/dos_con_loc_VTSU.asm"        ; 0x422f

dos_con_loc_MION.cseg1 equ cseg_0bac
%include "shared/dos_con_loc_MION.asm"        ; 0x426b

string_loc_RQON.dos_file_loc1 equ dos_file_loc_VKSU
%include "shared/string_loc_RQON.asm"         ; 0x4300

%include "vga/asm_only/dos_file_loc_VKSU.asm"       ; 0x4319

; data_4202 equ __zdata_4202 - IMAGE_BASE
%include "vga/asm_only/loc_ISSO.asm"                ; 0x439a

; data_0bc6 equ __zdata_0bc6 - IMAGE_BASE
%include "vga/leaf_loc_PTSI.asm"           ; 0x43f7

; data_0229 equ __zdata_0229 - IMAGE_BASE
%include "vga/leaf_loc_IHJG.asm"           ; 0x440c

; data_025b equ __zdata_025b - IMAGE_BASE
%include "vga/leaf_loc_MGRH.asm"           ; 0x4421

; data_0251 equ __zdata_0251 - IMAGE_BASE
%include "vga/leaf_loc_USQQ.asm"           ; 0x4436

; data_4202 equ __zdata_4202 - IMAGE_BASE
%include "vga/leaf_loc_VRNL.asm"           ; 0x444b

data_46d9 equ __zdata_46d9 - IMAGE_BASE
%include "vga/asm_only/dos_con_loc_GOSI.asm"        ; 0x4461

; data_0bda equ __zdata_0bda - IMAGE_BASE
%include "vga/asm_only/leaf_loc_KQVI.asm"           ; 0x44a3

; data_0bda equ __zdata_0bda - IMAGE_BASE
; data_4202 equ __zdata_4202 - IMAGE_BASE
%include "vga/asm_only/loc_SRSO.asm"                ; 0x4527

%include "shared/loc_LSLP.asm"                ; 0x4596

%include "shared/loc_HOSM.asm"                ; 0x45b2

__zdata_46d9:
cseg_45d9:

    times 24 db 0

__zdata_46f1:
    times 10 db 0
; data_0bda equ __zdata_0bda - IMAGE_BASE
; data_46d9 equ __zdata_46d9 - IMAGE_BASE
data_46f1 equ __zdata_46f1 - IMAGE_BASE
%include "vga/asm_only/dos_read_file_7.asm"         ; 0x45fb

%include "vga/asm_only/dos_con_loc_HNTO.asm"        ; 0x4719

%include "vga/asm_only/dos_con_loc_PJJM.asm"        ; 0x4755

; data_0bda equ __zdata_0bda - IMAGE_BASE
; data_46d9 equ __zdata_46d9 - IMAGE_BASE
; data_46f1 equ __zdata_46f1 - IMAGE_BASE
%include "vga/asm_only/loc_RKRU.asm"                ; 0x478a

; data_46d9 equ __zdata_46d9 - IMAGE_BASE
%include "vga/asm_only/loc_VHQQ.asm"                ; 0x481f

%include "vga/asm_only/loc_PORS_4866.asm"           ; 0x4866

%include "vga/asm_only/loc_PORS_487e.asm"           ; 0x487e

%include "shared/loc_MMLT.asm"                ; 0x4896

    db 0x00
