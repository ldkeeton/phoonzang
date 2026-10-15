; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/ega.inc"
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif

dseg_24fd equ 0x24fd

loc_HHMO:
    jmp near loc_UJON                ; 0x0000
loc_UJON:
    call mouse_init                  ; 0x0003
    retf                             ; 0x0006
loc_HLQS:
    call mouse_init_2                ; 0x0007
    retf                             ; 0x000a
loc_ROMR:
    call bios_mouse_loc_LOQT         ; 0x000b
    retf                             ; 0x000e
loc_JHOQ:
    call leaf_loc_NMVG               ; 0x000f
    retf                             ; 0x0012
loc_UTJQ:
    call bios_mouse_loc_NHLG         ; 0x0013
    retf                             ; 0x0016
loc_QPLR:
    call dos_read_file_3             ; 0x0017
    retf                             ; 0x001a
loc_KNKI:
    call graphics_loc_USUR           ; 0x001b
    retf                             ; 0x001e
loc_TGSV:
    call dos_read_file               ; 0x001f
    retf                             ; 0x0022
loc_RMKG:
    call dos_read_file_2             ; 0x0023
    retf                             ; 0x0026
loc_LLRI:
    call dos_print_str               ; 0x0027
    retf                             ; 0x002a
loc_MMTR:
    call leaf_loc_QIVT               ; 0x002b
    retf                             ; 0x002e
loc_NLUG:
    call graphics_loc_VIRI           ; 0x002f
    retf                             ; 0x0032
loc_KRGS:
    call leaf_loc_TVKN               ; 0x0033
    retf                             ; 0x0036
loc_NLQS:
    call leaf_loc_NONR               ; 0x0037
    retf                             ; 0x003a
loc_IJKI:
    call leaf_loc_LRIJ               ; 0x003b
    retf                             ; 0x003e
loc_HRHQ:
    call leaf_loc_HQRR               ; 0x003f
    retf                             ; 0x0042
loc_SKSQ:
    call loc_QNKM                    ; 0x0043
    retf                             ; 0x0046
loc_QKVQ:
    call leaf_loc_VSTU               ; 0x0047
    retf                             ; 0x004a
loc_UHMI:
    call leaf_loc_RUJV               ; 0x004b
    retf                             ; 0x004e
loc_HUTG:
    call string_loc_INQT             ; 0x004f
    retf                             ; 0x0052
loc_SJRT:
    call dos_alloc_mem               ; 0x0053
    retf                             ; 0x0056
loc_PNOS:
    call dos_free_mem                ; 0x0057
    retf                             ; 0x005a
loc_JTQK:
    call loc_PNOV                    ; 0x005b
    retf                             ; 0x005e
loc_HOMQ:
    call bios_mouse_loc_NUQU         ; 0x005f
    retf                             ; 0x0062
loc_OUOM:
    call dos_print_str_2             ; 0x0063
    retf                             ; 0x0066
loc_LUNN:
    call leaf_loc_VQIT               ; 0x0067
    retf                             ; 0x006a
loc_SUGP:
    call dos_write_file              ; 0x006b
    retf                             ; 0x006e
loc_TTOI:
    call graphics_loc_UVTQ           ; 0x006f
    retf                             ; 0x0072
loc_UMQR:
    call leaf_loc_JRGJ               ; 0x0073
    retf                             ; 0x0076
loc_SLLU_0077:
    call leaf_loc_NUGN_3240          ; 0x0077
    retf                             ; 0x007a
loc_SLLU_007b:
    call leaf_loc_NUGN_3241          ; 0x007b
    retf                             ; 0x007e
loc_SLLU_007f:
    call leaf_loc_NUGN_3242          ; 0x007f
    retf                             ; 0x0082
loc_SLLU_0083:
    call leaf_loc_NUGN_3243          ; 0x0083
    retf                             ; 0x0086
loc_RVPP:
    call bios_mouse_loc_KUPR         ; 0x0087
    retf                             ; 0x008a
loc_VUVO:
    call bios_mouse_loc_TGTG         ; 0x008b
    retf                             ; 0x008e
loc_MQOH:
    call loc_RUGM                    ; 0x008f
    retf                             ; 0x0092
loc_MSRL:
    call loc_UJTG                    ; 0x0093
    retf                             ; 0x0096
loc_QOGU:
    call leaf_loc_JKPU               ; 0x0097
    retf                             ; 0x009a
loc_SLLU_009b:
    call leaf_loc_NUGN_3244          ; 0x009b
    retf                             ; 0x009e
loc_URGJ:
    call dos_write_file_2            ; 0x009f
    retf                             ; 0x00a2
loc_ROIJ:
    call dos_mem_loc_HHRL            ; 0x00a3
    retf                             ; 0x00a6
loc_LTHH:
    call dos_read_file_4             ; 0x00a7
    retf                             ; 0x00aa
loc_HIVK:
    call dos_read_file_5             ; 0x00ab
    retf                             ; 0x00ae
loc_UOJR:
    call dos_file_loc_SLHU           ; 0x00af
    retf                             ; 0x00b2
loc_QMTI:
    call dos_read_file_6             ; 0x00b3
    retf                             ; 0x00b6
loc_GRKI:
    call loc_HUSM                    ; 0x00b7
    retf                             ; 0x00ba
loc_LUKR:
    call loc_PHNQ                    ; 0x00bb
    retf                             ; 0x00be
loc_SSOU:
    call loc_SPHL                    ; 0x00bf
    retf                             ; 0x00c2
loc_HTLS:
    call loc_PKHP                    ; 0x00c3
    retf                             ; 0x00c6
loc_PIQL:
    call dos_read_file_7             ; 0x00c7
    retf                             ; 0x00ca
loc_KNTM:
    call loc_QROH                    ; 0x00cb
    retf                             ; 0x00ce
loc_SIHO:
    call loc_LTMJ                    ; 0x00cf
    retf                             ; 0x00d2
loc_LGUM:
    call loc_KIPO                    ; 0x00d3
    retf                             ; 0x00d6
loc_HMMH:
    call loc_TOOG                    ; 0x00d7
    retf                             ; 0x00da
loc_NHNT:
    call loc_QHII                    ; 0x00db
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
%include "lib/graphics_loc_VIRI.asm"       ; 0x0293

%include "lib/leaf_loc_VQIT.asm"           ; 0x0439

%include "ega/asm_only/leaf_loc_TVKN.asm"           ; 0x0447

%include "lib/leaf_loc_NONR.asm"           ; 0x0462

%include "ega/leaf_loc_LRIJ.asm"           ; 0x047d

%include "ega/asm_only/leaf_loc_HQRR.asm"           ; 0x0496

%include "ega/asm_only/loc_QNKM.asm"                ; 0x04b1

cseg_0948:
    db 0x00
%include "ega/asm_only/graphics_loc_IUVI.asm"       ; 0x0949

%include "ega/asm_only/leaf_loc_TUKK.asm"           ; 0x0b91

%include "lib/leaf_loc_VSTU.asm"           ; 0x0bcf

%include "lib/leaf_loc_RUJV.asm"           ; 0x0bf6

%include "ega/asm_only/string_loc_INQT.asm"         ; 0x0c45

%include "ega/asm_only/dos_alloc_mem.asm"           ; 0x0c9b

%include "ega/asm_only/dos_free_mem.asm"            ; 0x0d57

%include "ega/asm_only/dos_read_file.asm"           ; 0x0df3

%include "ega/asm_only/dos_write_file.asm"          ; 0x0ebd

%include "ega/asm_only/dos_con_loc_TRGT.asm"        ; 0x0f70

%include "ega/asm_only/dos_con_loc_GHKP.asm"        ; 0x0fae

cseg_0fe7:

    times 228 db 0

cseg_10cb:
    db 0x00, 0x00
cseg_10cd:
    db 0x00, 0x00
%include "ega/asm_only/dos_read_file_2.asm"         ; 0x10cf

%include "ega/asm_only/dos_con_loc_UQTL.asm"        ; 0x10ff

%include "ega/asm_only/dos_con_loc_IJPM.asm"        ; 0x1218

%include "ega/asm_only/loc_NIGS.asm"                ; 0x12bb

%include "ega/leaf_loc_IMUV.asm"           ; 0x1355

%include "ega/asm_only/loc_PQGR.asm"                ; 0x1392

%include "ega/asm_only/leaf_loc_MVLP.asm"           ; 0x145c

%include "ega/asm_only/loc_RUGM.asm"                ; 0x1490

%include "ega/asm_only/dos_print_str.asm"           ; 0x14d8

%include "ega/asm_only/mouse_init.asm"              ; 0x1719

%include "ega/asm_only/string_loc_PJIS.asm"         ; 0x17a1

%include "ega/asm_only/mouse_init_2.asm"            ; 0x1810

%include "ega/asm_only/leaf_loc_LNMT.asm"           ; 0x189f

%include "ega/asm_only/bios_mouse_loc_NHLG.asm"     ; 0x18c1

%include "lib/leaf_loc_NMVG.asm"           ; 0x1900

%include "ega/asm_only/bios_mouse_loc_LOQT.asm"     ; 0x190f

%include "lib/bios_mouse_loc_NUQU.asm"     ; 0x1992

%include "ega/asm_only/dos_print_str_2.asm"         ; 0x19c1

%include "ega/asm_only/dos_con_loc_JKSU.asm"        ; 0x1a9f

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

%include "ega/asm_only/leaf_loc_KVRQ.asm"           ; 0x2a4f

%include "ega/asm_only/io_loc_LINQ.asm"             ; 0x2a6a

%include "ega/asm_only/io_loc_RITP.asm"             ; 0x2e35

%include "ega/asm_only/io_loc_TUMU.asm"             ; 0x2e7d

%include "ega/asm_only/io_loc_QUGH.asm"             ; 0x2f46

%include "ega/asm_only/io_loc_UONO.asm"             ; 0x2f70

%include "ega/leaf_loc_QIVT.asm"           ; 0x3035

%include "ega/asm_only/loc_PNOV.asm"                ; 0x303d

%include "ega/asm_only/dos_read_file_3.asm"         ; 0x3085

%include "ega/asm_only/dos_con_loc_UPUP.asm"        ; 0x317d

cseg_3196:
    db 0x30
cseg_3197:
    db '0 not freed.', 0
    db 0x0a, 0x24
@..dos_read_file_3.l8:
    mov ax, cs                       ; 0x31a6
    mov ds, ax                       ; 0x31a8
    mov dx, 0x32b6                   ; 0x31aa
%include "ega/asm_only/dos_con_loc_PGGT.asm"        ; 0x31ad

%include "ega/graphics_loc_UVTQ.asm"       ; 0x31df

%include "ega/asm_only/leaf_loc_JRGJ.asm"           ; 0x31f4

%include "ega/leaf_loc_NUGN_3240.asm"      ; 0x3240

%include "ega/leaf_loc_NUGN_3241.asm"      ; 0x3241

%include "ega/leaf_loc_NUGN_3242.asm"      ; 0x3242

%include "ega/leaf_loc_NUGN_3243.asm"      ; 0x3243

%include "ega/leaf_loc_NUGN_3244.asm"      ; 0x3244

%include "ega/leaf_loc_HGIH.asm"           ; 0x3245

%include "ega/leaf_loc_SMTO.asm"           ; 0x3252

%include "ega/asm_only/dos_mem_loc_HHRL.asm"        ; 0x33b3

%include "ega/asm_only/bios_mouse_loc_KUPR.asm"     ; 0x341e

%include "ega/asm_only/bios_mouse_loc_TGTG.asm"     ; 0x34c0

%include "ega/asm_only/loc_UJTG.asm"                ; 0x3570

%include "lib/leaf_loc_JKPU.asm"           ; 0x35ba

cseg_35dd:

    times 40 db 0

cseg_3605:

    times 25 db 0

%include "ega/asm_only/graphics_loc_USUR.asm"       ; 0x361e

%include "ega/asm_only/leaf_loc_PIVU.asm"           ; 0x39e3

%include "ega/asm_only/dos_con_loc_PTMN.asm"        ; 0x3a0f

cseg_3a21:
    db 0x30
cseg_3a22:

    db '0 too big in slot '

cseg_3a34:
    db 0x30
cseg_3a35:
    db 0x30, 0x2e, 0x00, 0x0a, 0x24
@..leaf_loc_PIVU.l1:
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
%include "lib/leaf_loc_GSNR.asm"           ; 0x3a51

%include "ega/asm_only/graphics_loc_HMTN.asm"       ; 0x3a8b

%include "lib/leaf_loc_PPVV.asm"           ; 0x3bf2

%include "ega/asm_only/leaf_loc_KQLO.asm"           ; 0x3c12

%include "lib/dos_con_loc_RIVS.asm"        ; 0x40d4

%include "ega/asm_only/dos_write_file_2.asm"        ; 0x4111

%include "ega/asm_only/dos_con_loc_OVKP.asm"        ; 0x4370

%include "ega/asm_only/dos_con_loc_SMNK.asm"        ; 0x43a7

%include "ega/asm_only/dos_con_loc_TKGI.asm"        ; 0x43d8

cseg_4440:
    db 0x00, 0x00
%include "lib/leaf_loc_NIKG.asm"           ; 0x4442

%include "ega/asm_only/dos_read_file_4.asm"         ; 0x4457

%include "ega/asm_only/dos_file_loc_QUNJ.asm"       ; 0x45bd

%include "ega/asm_only/dos_con_loc_NPTN.asm"        ; 0x45f2

%include "ega/asm_only/dos_read_file_5.asm"         ; 0x4624

%include "ega/asm_only/dos_con_loc_QNMU.asm"        ; 0x47af

%include "lib/dos_con_loc_KMVS.asm"        ; 0x47f7

%include "ega/asm_only/dos_file_loc_SLHU.asm"       ; 0x4825

%include "ega/asm_only/dos_con_loc_MMQH.asm"        ; 0x493a

%include "lib/dos_con_loc_TUTH.asm"        ; 0x4984

cseg_49b4:

    times 84 db 0

%include "ega/asm_only/dos_read_file_6.asm"         ; 0x4a08

%include "ega/asm_only/dos_con_loc_OOTH.asm"        ; 0x4ae1

%include "ega/asm_only/dos_con_loc_MIVG.asm"        ; 0x4b1d

%include "ega/asm_only/string_loc_LUMH.asm"         ; 0x4bb2

%include "ega/asm_only/dos_file_loc_OSMR.asm"       ; 0x4bcb

%include "ega/asm_only/loc_HUSM.asm"                ; 0x4c4c

%include "ega/leaf_loc_HKLI.asm"           ; 0x4ca9

%include "ega/leaf_loc_IKRU.asm"           ; 0x4cbe

%include "ega/leaf_loc_OUNM.asm"           ; 0x4cd3

%include "ega/leaf_loc_UGTM.asm"           ; 0x4ce8

%include "ega/leaf_loc_HSSI.asm"           ; 0x4cfd

%include "ega/asm_only/dos_con_loc_PMSK.asm"        ; 0x4d13

%include "ega/asm_only/leaf_loc_OLPI.asm"           ; 0x4d55

%include "ega/asm_only/loc_PHNQ.asm"                ; 0x4dd9

%include "lib/loc_SPHL.asm"                ; 0x4e48

%include "lib/loc_PKHP.asm"                ; 0x4e64

cseg_4e8b:

    times 34 db 0

%include "ega/asm_only/dos_read_file_7.asm"         ; 0x4ead

%include "ega/asm_only/loc_QROH.asm"                ; 0x503c

%include "ega/asm_only/loc_LTMJ.asm"                ; 0x50d1

%include "lib/loc_KIPO.asm"                ; 0x5118

%include "lib/loc_TOOG.asm"                ; 0x5130

%include "lib/loc_QHII.asm"                ; 0x5148

    db 0x00
