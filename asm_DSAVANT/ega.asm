; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/ega.inc"
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif


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
    call graphics_loc_KJMH           ; 0x001b
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
    call leaf_loc_UNNV_0447          ; 0x0033
    retf                             ; 0x0036
loc_JTQK_0037:
    call leaf_loc_UNNV_0462          ; 0x0037
    retf                             ; 0x003a
loc_JTQK_003b:
    call leaf_loc_PNKN               ; 0x003b
    retf                             ; 0x003e
loc_JTQK_003f:
    call leaf_loc_SGRG               ; 0x003f
    retf                             ; 0x0042
loc_JTQK_0043:
    call loc_UJSP                    ; 0x0043
    retf                             ; 0x0046
loc_JTQK_0047:
    call leaf_loc_QSOP               ; 0x0047
    retf                             ; 0x004a
loc_JTQK_004b:
    call leaf_loc_GHVP               ; 0x004b
    retf                             ; 0x004e
loc_JTQK_004f:
    call string_loc_SSTM             ; 0x004f
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
    call graphics_loc_VROJ           ; 0x006f
    retf                             ; 0x0072
loc_JTQK_0073:
    call leaf_loc_KUUH               ; 0x0073
    retf                             ; 0x0076
loc_JTQK_0077:
    call leaf_loc_PLIR_3240          ; 0x0077
    retf                             ; 0x007a
loc_JTQK_007b:
    call leaf_loc_PLIR_3241          ; 0x007b
    retf                             ; 0x007e
loc_JTQK_007f:
    call leaf_loc_PLIR_3242          ; 0x007f
    retf                             ; 0x0082
loc_JTQK_0083:
    call leaf_loc_PLIR_3243          ; 0x0083
    retf                             ; 0x0086
loc_JTQK_0087:
    call bios_mouse_loc_PRLT         ; 0x0087
    retf                             ; 0x008a
loc_JTQK_008b:
    call bios_mouse_loc_JLUV         ; 0x008b
    retf                             ; 0x008e
loc_JTQK_008f:
    call loc_HMVQ                    ; 0x008f
    retf                             ; 0x0092
loc_JTQK_0093:
    call loc_ROPT                    ; 0x0093
    retf                             ; 0x0096
loc_JTQK_0097:
    call leaf_loc_IPJP               ; 0x0097
    retf                             ; 0x009a
loc_JTQK_009b:
    call leaf_loc_PLIR_3244          ; 0x009b
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
    call dos_file_loc_GRNS           ; 0x00af
    retf                             ; 0x00b2
loc_JTQK_00b3:
    call dos_read_file_6             ; 0x00b3
    retf                             ; 0x00b6
loc_JTQK_00b7:
    call loc_ULSL                    ; 0x00b7
    retf                             ; 0x00ba
loc_JTQK_00bb:
    call loc_VVPL                    ; 0x00bb
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
    call loc_SLKJ                    ; 0x00cb
    retf                             ; 0x00ce
loc_JTQK_00cf:
    call loc_ILNU                    ; 0x00cf
    retf                             ; 0x00d2
loc_JTQK_00d3:
    call loc_PORS_5118               ; 0x00d3
    retf                             ; 0x00d6
loc_JTQK_00d7:
    call loc_PORS_5130               ; 0x00d7
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
cseg_0129:

    times 40 db 0

cseg_0151:
    times 10 db 0
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
cseg_019b:

    times 40 db 0

cseg_01c3:

    times 20 db 0

cseg_01d7:

    times 184 db 0

cseg_028f:
    db 0x00, 0x00
cseg_0291:
    db 0x00, 0x00
%include "shared/graphics_loc_IOKK.asm"       ; 0x0293

%include "shared/leaf_loc_ILKH.asm"           ; 0x0439

%include "ega/asm_only/leaf_loc_UNNV_0447.asm"      ; 0x0447

%include "ega/asm_only/leaf_loc_UNNV_0462.asm"      ; 0x0462

%include "ega/leaf_loc_PNKN.asm"           ; 0x047d

%include "ega/asm_only/leaf_loc_SGRG.asm"           ; 0x0496

%include "ega/asm_only/loc_UJSP.asm"                ; 0x04b1

cseg_0948:
    db 0x00
%include "ega/asm_only/graphics_loc_PRMO.asm"       ; 0x0949

%include "ega/asm_only/leaf_loc_KNIM.asm"           ; 0x0b91

%include "shared/leaf_loc_QSOP.asm"           ; 0x0bcf

%include "shared/leaf_loc_GHVP.asm"           ; 0x0bf6

%include "ega/asm_only/string_loc_SSTM.asm"         ; 0x0c45

%include "ega/asm_only/dos_alloc_mem.asm"           ; 0x0c9b

%include "ega/asm_only/dos_free_mem.asm"            ; 0x0d57

%include "ega/asm_only/dos_read_file.asm"           ; 0x0df3

%include "ega/asm_only/dos_write_file.asm"          ; 0x0ebd

%include "ega/asm_only/dos_con_loc_KOIJ.asm"        ; 0x0f70

%include "ega/asm_only/dos_con_loc_UNVT.asm"        ; 0x0fae

cseg_0fe7:

    times 228 db 0

cseg_10cb:
    db 0x00, 0x00
cseg_10cd:
    db 0x00, 0x00
%include "ega/asm_only/dos_read_file_2.asm"         ; 0x10cf

%include "ega/asm_only/dos_con_loc_GIJK.asm"        ; 0x10ff

%include "ega/asm_only/dos_con_loc_QUMT.asm"        ; 0x1218

%include "ega/asm_only/loc_LQTO.asm"                ; 0x12bb

%include "ega/leaf_loc_OVON.asm"           ; 0x1355

loc_KLNH.cseg1     equ cseg_138e
loc_KLNH.cseg2     equ cseg_1390
loc_KLNH.leaf_loc1 equ leaf_loc_QKGV
%include "shared/loc_KLNH.asm"                ; 0x1392

%include "ega/asm_only/leaf_loc_QKGV.asm"           ; 0x145c

%include "ega/asm_only/loc_HMVQ.asm"                ; 0x1490

%include "ega/asm_only/dos_print_str.asm"           ; 0x14d8

%include "ega/asm_only/mouse_init.asm"              ; 0x1719

%include "ega/asm_only/string_loc_RUML.asm"         ; 0x17a1

%include "ega/asm_only/mouse_init_2.asm"            ; 0x1810

%include "ega/asm_only/leaf_loc_PUST.asm"           ; 0x189f

bios_mouse_loc_USQU.cseg1 equ cseg_1ad9
bios_mouse_loc_USQU.cseg2 equ cseg_1adb
%include "shared/bios_mouse_loc_USQU.asm"     ; 0x18c1

%include "shared/leaf_loc_LMQV.asm"           ; 0x1900

bios_mouse_loc_TVOK.cseg1 equ cseg_2a02
bios_mouse_loc_TVOK.cseg2 equ cseg_2a04
bios_mouse_loc_TVOK.cseg3 equ cseg_2a06
%include "shared/bios_mouse_loc_TVOK.asm"     ; 0x190f

%include "shared/bios_mouse_loc_RKQL.asm"     ; 0x1992

%include "ega/asm_only/dos_print_str_2.asm"         ; 0x19c1

%include "ega/asm_only/dos_con_loc_NUII.asm"        ; 0x1a9f

cseg_1ad5:
    db 0xfd, 0x1b
cseg_1ad7:
    db 0x7d, 0x20
cseg_1ad9:
    db 0x00, 0x00
cseg_1adb:
    db 0x00, 0x00
cseg_1add:
    times 4 db 0
cseg_1ae1:
    db 0x00, 0x00
cseg_1ae3:
    db 0x00, 0x00
cseg_1ae5:
    times 6 db 0
cseg_1aeb:
    db 0x00, 0x00
cseg_1aed:
    db 0x00, 0x00
cseg_1aef:
    db 0x00, 0x00
cseg_1af1:
    db 0x00, 0x00
cseg_1af3:
    db 0x00, 0x00
cseg_1af5:
    db 0x00, 0x00
cseg_1af7:
    db 0x00, 0x00
cseg_1af9:
    db 0x00, 0x00
cseg_1afb:

    times 2306 db 0

cseg_23fd:

    times 128 db 0

cseg_247d:

    times 16 db 0

cseg_248d:
    db 0x0a, 0x00
cseg_248f:
    db 0x03, 0x00
cseg_2491:
    db 0x0a, 0x00
cseg_2493:
    db 0x0a, 0x00, 0x03, 0x00, 0x0a, 0x00
cseg_2499:
    db 0x00, 0x00
cseg_249b:
    db 0x00, 0x00
cseg_249d:

    times 8 db 0
    db 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xb6, 0xb6, 0xb6, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x13
    db 0x15, 0xb6, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x15, 0x16, 0xb6, 0x00, 0xff, 0xff, 0xff
    db 0xff, 0x00, 0xb3, 0xb6, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x00, 0x00, 0xb3
    db 0xb6, 0xc1, 0x00, 0xff, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00
    db 0xb3, 0xc3, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0xff

cseg_2502:

    times 1024 db 0

cseg_2902:

    times 256 db 0

cseg_2a02:
    db 0x00, 0x00
cseg_2a04:
    db 0x00, 0x00
cseg_2a06:
    db 0x00, 0x00
cseg_2a08:

    db 0x00, 0xfc, 0x25, 0x0a, 0x00, 0x74, 0x34, 0x2e, 0x80, 0x3e, 0x08, 0x2b, 0x00, 0x75, 0x29, 0x2e
    db 0xa2, 0x08, 0x2b, 0x2e, 0x89, 0x1e, 0x02, 0x2b, 0xd1, 0xe9, 0x2e, 0x89, 0x0e, 0x04, 0x2b, 0x2e
    db 0x89, 0x16, 0x06, 0x2b, 0x32, 0xc0, 0x2e, 0xa2, 0x08, 0x2b, 0x2e, 0x3b, 0x0e, 0xd9, 0x1b, 0x75
    db 0x08, 0x2e, 0x3b, 0x16, 0xdb, 0x1b, 0x75, 0x01, 0xcb, 0xd1, 0xe1, 0x2e, 0xa0, 0x27, 0x02, 0x2e
    db 0x0a, 0x06, 0x26, 0x02, 0x74, 0x01, 0xcb

leaf_loc_JHTT.cseg1 equ cseg_2a08
leaf_loc_JHTT.cseg2 equ cseg_1aeb
leaf_loc_JHTT.cseg3 equ cseg_1aed
%include "shared/leaf_loc_JHTT.asm"           ; 0x2a4f

%include "ega/asm_only/io_loc_NSIN.asm"             ; 0x2a6a

dseg_24fd equ 0x24fd
%include "ega/asm_only/io_loc_SRLG.asm"             ; 0x2e35

%include "ega/asm_only/io_loc_JGUP.asm"             ; 0x2e7d

%include "ega/asm_only/io_loc_TSTG.asm"             ; 0x2f46

%include "ega/asm_only/io_loc_QMLN.asm"             ; 0x2f70

leaf_loc_UQHV.cseg1 equ cseg_2a02
%include "shared/leaf_loc_UQHV.asm"           ; 0x3035

%include "ega/asm_only/loc_QNIQ.asm"                ; 0x303d

%include "ega/asm_only/dos_read_file_3.asm"         ; 0x3085

%include "ega/asm_only/dos_con_loc_GQSN.asm"        ; 0x317d

cseg_3196:
    db 0x30
cseg_3197:
    db '0 not freed.', 0
    db 0x0a, 0x24
@..dos_read_file_3.l8:
    mov ax, cs                       ; 0x31a6
    mov ds, ax                       ; 0x31a8
    mov dx, 0x32b6                   ; 0x31aa
%include "ega/asm_only/dos_con_loc_HPRK.asm"        ; 0x31ad

%include "ega/graphics_loc_VROJ.asm"       ; 0x31df

%include "ega/asm_only/leaf_loc_KUUH.asm"           ; 0x31f4

%include "ega/leaf_loc_PLIR_3240.asm"      ; 0x3240

%include "ega/leaf_loc_PLIR_3241.asm"      ; 0x3241

%include "ega/leaf_loc_PLIR_3242.asm"      ; 0x3242

%include "ega/leaf_loc_PLIR_3243.asm"      ; 0x3243

%include "ega/leaf_loc_PLIR_3244.asm"      ; 0x3244

%include "ega/leaf_loc_TTKL.asm"           ; 0x3245

%include "ega/leaf_loc_OHGP.asm"           ; 0x3252

dos_mem_loc_NGNH.cseg1 equ cseg_10cd
%include "shared/dos_mem_loc_NGNH.asm"        ; 0x33b3

%include "shared/bios_mouse_loc_PRLT.asm"     ; 0x341e

bios_mouse_loc_JLUV.cseg1 equ cseg_1ad9
bios_mouse_loc_JLUV.cseg2 equ cseg_1adb
%include "shared/bios_mouse_loc_JLUV.asm"     ; 0x34c0

%include "ega/asm_only/loc_ROPT.asm"                ; 0x3570

%include "shared/leaf_loc_IPJP.asm"           ; 0x35ba

cseg_35dd:

    times 40 db 0

cseg_3605:

    times 25 db 0

%include "ega/asm_only/graphics_loc_KJMH.asm"       ; 0x361e

%include "ega/asm_only/leaf_loc_TVGR.asm"           ; 0x39e3

%include "ega/asm_only/dos_con_loc_NRSG.asm"        ; 0x3a0f

cseg_3a21:
    db 0x30
cseg_3a22:

    db '0 too big in slot '

cseg_3a34:
    db 0x30
cseg_3a35:
    db 0x30, 0x2e, 0x00, 0x0a, 0x24
@..leaf_loc_TVGR.l1:
    mov cl, 2                        ; 0x3a3a
    shl al, cl                       ; 0x3a3c
    mov bx, 2                        ; 0x3a3e
    add bx, ax                       ; 0x3a41
    mov ax, word [bx]                ; 0x3a43
    mov dx, word [bx + 0x2]          ; 0x3a45
    mov bx, ds                       ; 0x3a48
    add bx, dx                       ; 0x3a4a
    mov ds, bx                       ; 0x3a4c
    mov bx, ax                       ; 0x3a4e
    ret                              ; 0x3a50
%include "shared/leaf_loc_NOSG.asm"           ; 0x3a51

%include "ega/asm_only/graphics_loc_NVPK.asm"       ; 0x3a8b

%include "shared/leaf_loc_MTKK.asm"           ; 0x3bf2

%include "ega/asm_only/leaf_loc_VGLT.asm"           ; 0x3c12

%include "shared/dos_con_loc_KIIN.asm"        ; 0x40d4

%include "ega/asm_only/dos_write_file_2.asm"        ; 0x4111

%include "ega/asm_only/dos_con_loc_GKKQ.asm"        ; 0x4370

%include "ega/asm_only/dos_con_loc_NQOR.asm"        ; 0x43a7

%include "ega/asm_only/dos_con_loc_THNU.asm"        ; 0x43d8

cseg_4440:
    db 0x00, 0x00
%include "shared/leaf_loc_HLGJ.asm"           ; 0x4442

%include "ega/asm_only/dos_read_file_4.asm"         ; 0x4457

%include "ega/asm_only/dos_file_loc_RQKL.asm"       ; 0x45bd

%include "ega/asm_only/dos_con_loc_OHJU.asm"        ; 0x45f2

%include "ega/asm_only/dos_read_file_5.asm"         ; 0x4624

%include "ega/asm_only/dos_con_loc_HJHM.asm"        ; 0x47af

%include "shared/dos_con_loc_URMP.asm"        ; 0x47f7

%include "ega/asm_only/dos_file_loc_GRNS.asm"       ; 0x4825

%include "ega/asm_only/dos_con_loc_PMRV.asm"        ; 0x493a

%include "shared/dos_con_loc_MQTN.asm"        ; 0x4984

cseg_49b4:

    times 84 db 0

%include "ega/asm_only/dos_read_file_6.asm"         ; 0x4a08

%include "ega/asm_only/dos_con_loc_MSRN.asm"        ; 0x4ae1

dos_con_loc_MION.cseg1 equ cseg_10cd
%include "shared/dos_con_loc_MION.asm"        ; 0x4b1d

string_loc_RQON.dos_file_loc1 equ dos_file_loc_ISRM
%include "shared/string_loc_RQON.asm"         ; 0x4bb2

%include "ega/asm_only/dos_file_loc_ISRM.asm"       ; 0x4bcb

%include "ega/asm_only/loc_ULSL.asm"                ; 0x4c4c

%include "ega/leaf_loc_OSUJ.asm"           ; 0x4ca9

%include "ega/leaf_loc_IHJG.asm"           ; 0x4cbe

%include "ega/leaf_loc_MGRH.asm"           ; 0x4cd3

%include "ega/leaf_loc_USQQ.asm"           ; 0x4ce8

%include "ega/leaf_loc_JRKU.asm"           ; 0x4cfd

%include "ega/asm_only/dos_con_loc_GJMS.asm"        ; 0x4d13

%include "ega/asm_only/leaf_loc_JLIP.asm"           ; 0x4d55

%include "ega/asm_only/loc_VVPL.asm"                ; 0x4dd9

%include "shared/loc_LSLP.asm"                ; 0x4e48

%include "shared/loc_HOSM.asm"                ; 0x4e64

cseg_4e8b:

    times 34 db 0

%include "ega/asm_only/dos_read_file_7.asm"         ; 0x4ead

%include "ega/asm_only/loc_SLKJ.asm"                ; 0x503c

%include "ega/asm_only/loc_ILNU.asm"                ; 0x50d1

%include "ega/asm_only/loc_PORS_5118.asm"           ; 0x5118

%include "ega/asm_only/loc_PORS_5130.asm"           ; 0x5130

%include "shared/loc_MMLT.asm"                ; 0x5148

    db 0x00
