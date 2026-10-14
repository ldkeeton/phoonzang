; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/ega.inc"
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0000
%endif

cseg_0295 equ 0x0295
cseg_0297 equ 0x0297
cseg_0391 equ 0x0391
cseg_10e7 equ 0x10e7
cseg_11cb equ 0x11cb
cseg_11cd equ 0x11cd
cseg_148e equ 0x148e
dseg_24fd equ 0x24fd
cseg_2b04 equ 0x2b04
cseg_2b06 equ 0x2b06
cseg_3297 equ 0x3297
cseg_3b21 equ 0x3b21
cseg_3b22 equ 0x3b22
cseg_3b34 equ 0x3b34
cseg_4540 equ 0x4540
cseg_4ab4 equ 0x4ab4
cseg_4f8b equ 0x4f8b

loc_0000:
    jmp near loc_0003                ; 0x0000
loc_0003:
    call mouse_init                  ; 0x0003
    retf                             ; 0x0006
loc_0007:
    call mouse_init_2                ; 0x0007
    retf                             ; 0x000a
loc_000b:
    call bios_mouse_loc_190f         ; 0x000b
    retf                             ; 0x000e
loc_000f:
    call leaf_loc_1900               ; 0x000f
    retf                             ; 0x0012
loc_0013:
    call bios_mouse_loc_18c1         ; 0x0013
    retf                             ; 0x0016
loc_0017:
    call dos_read_file_3             ; 0x0017
    retf                             ; 0x001a
loc_001b:
    call graphics_loc_361e           ; 0x001b
    retf                             ; 0x001e
loc_001f:
    call dos_read_file               ; 0x001f
    retf                             ; 0x0022
loc_0023:
    call dos_read_file_2             ; 0x0023
    retf                             ; 0x0026
loc_0027:
    call dos_print_str               ; 0x0027
    retf                             ; 0x002a
loc_002b:
    call leaf_loc_3035               ; 0x002b
    retf                             ; 0x002e
loc_002f:
    call graphics_loc_0293           ; 0x002f
    retf                             ; 0x0032
loc_0033:
    call leaf_loc_0447               ; 0x0033
    retf                             ; 0x0036
loc_0037:
    call leaf_loc_0462               ; 0x0037
    retf                             ; 0x003a
loc_003b:
    call leaf_loc_047d               ; 0x003b
    retf                             ; 0x003e
loc_003f:
    call leaf_loc_0496               ; 0x003f
    retf                             ; 0x0042
loc_0043:
    call loc_04b1                    ; 0x0043
    retf                             ; 0x0046
loc_0047:
    call leaf_loc_0bcf               ; 0x0047
    retf                             ; 0x004a
loc_004b:
    call leaf_loc_0bf6               ; 0x004b
    retf                             ; 0x004e
loc_004f:
    call string_loc_0c45             ; 0x004f
    retf                             ; 0x0052
loc_0053:
    call dos_alloc_mem               ; 0x0053
    retf                             ; 0x0056
loc_0057:
    call dos_free_mem                ; 0x0057
    retf                             ; 0x005a
loc_005b:
    call loc_303d                    ; 0x005b
    retf                             ; 0x005e
loc_005f:
    call bios_mouse_loc_1992         ; 0x005f
    retf                             ; 0x0062
loc_0063:
    call dos_print_str_2             ; 0x0063
    retf                             ; 0x0066
loc_0067:
    call leaf_loc_0439               ; 0x0067
    retf                             ; 0x006a
loc_006b:
    call dos_write_file              ; 0x006b
    retf                             ; 0x006e
loc_006f:
    call graphics_loc_31df           ; 0x006f
    retf                             ; 0x0072
loc_0073:
    call leaf_loc_31f4               ; 0x0073
    retf                             ; 0x0076
loc_0077:
    call leaf_loc_3240               ; 0x0077
    retf                             ; 0x007a
loc_007b:
    call leaf_loc_3241               ; 0x007b
    retf                             ; 0x007e
loc_007f:
    call leaf_loc_3242               ; 0x007f
    retf                             ; 0x0082
loc_0083:
    call leaf_loc_3243               ; 0x0083
    retf                             ; 0x0086
loc_0087:
    call bios_mouse_loc_341e         ; 0x0087
    retf                             ; 0x008a
loc_008b:
    call bios_mouse_loc_34c0         ; 0x008b
    retf                             ; 0x008e
loc_008f:
    call loc_1490                    ; 0x008f
    retf                             ; 0x0092
loc_0093:
    call loc_3570                    ; 0x0093
    retf                             ; 0x0096
loc_0097:
    call leaf_loc_35ba               ; 0x0097
    retf                             ; 0x009a
loc_009b:
    call leaf_loc_3244               ; 0x009b
    retf                             ; 0x009e
loc_009f:
    call dos_write_file_2            ; 0x009f
    retf                             ; 0x00a2
loc_00a3:
    call dos_mem_loc_33b3            ; 0x00a3
    retf                             ; 0x00a6
loc_00a7:
    call dos_read_file_4             ; 0x00a7
    retf                             ; 0x00aa
loc_00ab:
    call dos_read_file_5             ; 0x00ab
    retf                             ; 0x00ae
loc_00af:
    call dos_file_loc_4825           ; 0x00af
    retf                             ; 0x00b2
loc_00b3:
    call dos_read_file_6             ; 0x00b3
    retf                             ; 0x00b6
loc_00b7:
    call loc_4c4c                    ; 0x00b7
    retf                             ; 0x00ba
loc_00bb:
    call loc_4dd9                    ; 0x00bb
    retf                             ; 0x00be
loc_00bf:
    call loc_4e48                    ; 0x00bf
    retf                             ; 0x00c2
loc_00c3:
    call loc_4e64                    ; 0x00c3
    retf                             ; 0x00c6
loc_00c7:
    call dos_read_file_7             ; 0x00c7
    retf                             ; 0x00ca
loc_00cb:
    call loc_503c                    ; 0x00cb
    retf                             ; 0x00ce
loc_00cf:
    call loc_50d1                    ; 0x00cf
    retf                             ; 0x00d2
loc_00d3:
    call loc_5118                    ; 0x00d3
    retf                             ; 0x00d6
loc_00d7:
    call loc_5130                    ; 0x00d7
    retf                             ; 0x00da
loc_00db:
    call loc_5148                    ; 0x00db
    retf                             ; 0x00de

    db 0x80, 0x41, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
    db 0x30, 0x05, 0x00, 0x00, 0xd0, 0x01
    times 17 db 0
    db 0x03, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0b, 0x01, 0x00, 0x00, 0x0f, 0x01, 0x00, 0x00
    db 0x13, 0x01, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x1b, 0x01, 0x00, 0x00, 0x1f, 0x01
    times 87 db 0
    db 0x04
    times 23 db 0
    db 0x01
    times 77 db 0

cseg_01e1:
    times 4 db 0
cseg_01e5:
    times 4 db 0
cseg_01e9:
    times 14 db 0
cseg_01f7:
    times 4 db 0
cseg_01fb:
    times 4 db 0
cseg_01ff:
    db 0x00, 0x00
cseg_0201:
    db 0x00, 0x00
cseg_0203:
    db 0x00, 0x00
cseg_0205:
    db 0x00
cseg_0206:
    times 8 db 0
cseg_020e:
    times 4 db 0
cseg_0212:
    times 4 db 0
cseg_0216:
    times 4 db 0
cseg_021a:
    times 4 db 0
cseg_021e:
    times 4 db 0
cseg_0222:
    times 4 db 0
cseg_0226:
    db 0x00
cseg_0227:
    db 0x00
cseg_0228:
    db 0x00
cseg_0229:

    times 40 db 0

cseg_0251:
    times 10 db 0
cseg_025b:

    times 32 db 0

cseg_027b:

    times 22 db 0

cseg_0291:
    db 0x00, 0x00
%include "ega/asm_only/graphics_loc_0293.asm"       ; 0x0293

%include "ega/leaf_loc_0439.asm"           ; 0x0439

%include "ega/asm_only/leaf_loc_0447.asm"           ; 0x0447

%include "ega/asm_only/leaf_loc_0462.asm"           ; 0x0462

%include "ega/leaf_loc_047d.asm"           ; 0x047d

%include "ega/asm_only/leaf_loc_0496.asm"           ; 0x0496

%include "ega/asm_only/loc_04b1.asm"                ; 0x04b1

%include "ega/asm_only/graphics_loc_0949.asm"       ; 0x0949

%include "ega/asm_only/leaf_loc_0b91.asm"           ; 0x0b91

%include "ega/asm_only/leaf_loc_0bcf.asm"           ; 0x0bcf

%include "ega/asm_only/leaf_loc_0bf6.asm"           ; 0x0bf6

%include "ega/asm_only/string_loc_0c45.asm"         ; 0x0c45

%include "ega/asm_only/dos_alloc_mem.asm"           ; 0x0c9b

%include "ega/asm_only/dos_free_mem.asm"            ; 0x0d57

%include "ega/asm_only/dos_read_file.asm"           ; 0x0df3

%include "ega/asm_only/dos_write_file.asm"          ; 0x0ebd

%include "ega/asm_only/dos_con_loc_0f70.asm"        ; 0x0f70

%include "ega/asm_only/dos_con_loc_0fae.asm"        ; 0x0fae

%include "ega/asm_only/dos_read_file_2.asm"         ; 0x10cf

%include "ega/asm_only/dos_con_loc_10ff.asm"        ; 0x10ff

%include "ega/asm_only/dos_con_loc_1218.asm"        ; 0x1218

%include "ega/asm_only/leaf_loc_1355.asm"           ; 0x1355

%include "ega/asm_only/leaf_loc_145c.asm"           ; 0x145c

%include "ega/asm_only/loc_1490.asm"                ; 0x1490

%include "ega/asm_only/dos_print_str.asm"           ; 0x14d8

%include "ega/asm_only/mouse_init.asm"              ; 0x1719

%include "ega/asm_only/string_loc_17a1.asm"         ; 0x17a1

%include "ega/asm_only/mouse_init_2.asm"            ; 0x1810

%include "ega/asm_only/leaf_loc_189f.asm"           ; 0x189f

%include "ega/asm_only/bios_mouse_loc_18c1.asm"     ; 0x18c1

%include "ega/leaf_loc_1900.asm"           ; 0x1900

%include "ega/asm_only/bios_mouse_loc_190f.asm"     ; 0x190f

%include "ega/asm_only/bios_mouse_loc_1992.asm"     ; 0x1992

%include "ega/asm_only/dos_print_str_2.asm"         ; 0x19c1

%include "ega/asm_only/dos_con_loc_1a9f.asm"        ; 0x1a9f

%include "ega/asm_only/leaf_loc_2a4f.asm"           ; 0x2a4f

%include "ega/asm_only/io_loc_2a6a.asm"             ; 0x2a6a

%include "ega/asm_only/io_loc_2e35.asm"             ; 0x2e35

%include "ega/asm_only/io_loc_2e7d.asm"             ; 0x2e7d

%include "ega/asm_only/io_loc_2f46.asm"             ; 0x2f46

%include "ega/asm_only/io_loc_2f70.asm"             ; 0x2f70

%include "ega/leaf_loc_3035.asm"           ; 0x3035

%include "ega/asm_only/loc_303d.asm"                ; 0x303d

%include "ega/asm_only/dos_read_file_3.asm"         ; 0x3085

%include "ega/asm_only/dos_con_loc_317d.asm"        ; 0x317d

%include "ega/asm_only/dos_con_loc_31ad.asm"        ; 0x31ad

%include "ega/graphics_loc_31df.asm"       ; 0x31df

%include "ega/asm_only/leaf_loc_31f4.asm"           ; 0x31f4

%include "ega/leaf_loc_3240.asm"           ; 0x3240

%include "ega/leaf_loc_3241.asm"           ; 0x3241

%include "ega/leaf_loc_3242.asm"           ; 0x3242

%include "ega/leaf_loc_3243.asm"           ; 0x3243

%include "ega/leaf_loc_3244.asm"           ; 0x3244

%include "ega/leaf_loc_3245.asm"           ; 0x3245

%include "ega/leaf_loc_3252.asm"           ; 0x3252

%include "ega/asm_only/dos_mem_loc_33b3.asm"        ; 0x33b3

%include "ega/asm_only/bios_mouse_loc_341e.asm"     ; 0x341e

%include "ega/asm_only/bios_mouse_loc_34c0.asm"     ; 0x34c0

%include "ega/asm_only/loc_3570.asm"                ; 0x3570

%include "ega/asm_only/leaf_loc_35ba.asm"           ; 0x35ba

%include "ega/asm_only/graphics_loc_361e.asm"       ; 0x361e

%include "ega/asm_only/leaf_loc_39e3.asm"           ; 0x39e3

%include "ega/asm_only/dos_con_loc_3a0f.asm"        ; 0x3a0f

%include "ega/leaf_loc_3a51.asm"           ; 0x3a51

%include "ega/asm_only/graphics_loc_3a8b.asm"       ; 0x3a8b

%include "ega/leaf_loc_3bf2.asm"           ; 0x3bf2

%include "ega/asm_only/leaf_loc_3c12.asm"           ; 0x3c12

%include "ega/asm_only/dos_con_loc_40d4.asm"        ; 0x40d4

%include "ega/asm_only/dos_write_file_2.asm"        ; 0x4111

%include "ega/asm_only/dos_con_loc_4370.asm"        ; 0x4370

%include "ega/asm_only/dos_con_loc_43a7.asm"        ; 0x43a7

%include "ega/asm_only/dos_con_loc_43d8.asm"        ; 0x43d8

%include "ega/asm_only/leaf_loc_4442.asm"           ; 0x4442

%include "ega/asm_only/dos_read_file_4.asm"         ; 0x4457

%include "ega/asm_only/dos_file_loc_45bd.asm"       ; 0x45bd

%include "ega/asm_only/dos_con_loc_45f2.asm"        ; 0x45f2

%include "ega/asm_only/dos_read_file_5.asm"         ; 0x4624

%include "ega/asm_only/dos_con_loc_47af.asm"        ; 0x47af

%include "ega/asm_only/dos_con_loc_47f7.asm"        ; 0x47f7

%include "ega/asm_only/dos_file_loc_4825.asm"       ; 0x4825

%include "ega/asm_only/dos_con_loc_493a.asm"        ; 0x493a

%include "ega/asm_only/dos_con_loc_4984.asm"        ; 0x4984

%include "ega/asm_only/dos_read_file_6.asm"         ; 0x4a08

%include "ega/asm_only/dos_con_loc_4ae1.asm"        ; 0x4ae1

%include "ega/asm_only/dos_con_loc_4b1d.asm"        ; 0x4b1d

%include "ega/asm_only/string_loc_4bb2.asm"         ; 0x4bb2

%include "ega/asm_only/dos_file_loc_4bcb.asm"       ; 0x4bcb

%include "ega/asm_only/loc_4c4c.asm"                ; 0x4c4c

%include "ega/leaf_loc_4ca9.asm"           ; 0x4ca9

%include "ega/leaf_loc_4cbe.asm"           ; 0x4cbe

%include "ega/leaf_loc_4cd3.asm"           ; 0x4cd3

%include "ega/leaf_loc_4ce8.asm"           ; 0x4ce8

%include "ega/leaf_loc_4cfd.asm"           ; 0x4cfd

%include "ega/asm_only/dos_con_loc_4d13.asm"        ; 0x4d13

%include "ega/asm_only/leaf_loc_4d55.asm"           ; 0x4d55

%include "ega/asm_only/loc_4dd9.asm"                ; 0x4dd9

%include "ega/asm_only/loc_4e48.asm"                ; 0x4e48

%include "ega/asm_only/loc_4e64.asm"                ; 0x4e64

%include "ega/asm_only/dos_read_file_7.asm"         ; 0x4ead

%include "ega/asm_only/loc_503c.asm"                ; 0x503c

%include "ega/asm_only/loc_50d1.asm"                ; 0x50d1

%include "ega/asm_only/loc_5118.asm"                ; 0x5118

%include "ega/asm_only/loc_5130.asm"                ; 0x5130

%include "ega/asm_only/loc_5148.asm"                ; 0x5148

