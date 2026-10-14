; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vga.inc"
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0000
%endif

data_0229 equ 0x0229
data_0251 equ 0x0251
data_025b equ 0x025b
data_029b equ 0x029b
data_02d7 equ 0x02d7
data_0bc6 equ 0x0bc6
data_0bda equ 0x0bda
data_1dc4 equ 0x1dc4
data_1e4c equ 0x1e4c
data_1e5c equ 0x1e5c
data_1e64 equ 0x1e64
data_381b equ 0x381b
data_4202 equ 0x4202
data_46d9 equ 0x46d9
data_46f1 equ 0x46f1
cseg_0295 equ 0x0295
cseg_0297 equ 0x0297
cseg_0391 equ 0x0391
cseg_0615 equ 0x0615
cseg_0bc6 equ 0x0bc6
cseg_0caa equ 0x0caa
cseg_0cac equ 0x0cac
cseg_0f6d equ 0x0f6d
cseg_1e4c equ 0x1e4c
cseg_1e5c equ 0x1e5c
cseg_1e5e equ 0x1e5e
cseg_1e60 equ 0x1e60
cseg_1e64 equ 0x1e64
cseg_1e66 equ 0x1e66
cseg_1e68 equ 0x1e68
cseg_1ecf equ 0x1ecf
cseg_1ed1 equ 0x1ed1
cseg_1ed3 equ 0x1ed3
cseg_326f equ 0x326f
cseg_3270 equ 0x3270
cseg_3282 equ 0x3282
cseg_3c8e equ 0x3c8e
cseg_4202 equ 0x4202
cseg_46d9 equ 0x46d9

loc_0000:
    jmp near loc_0003                ; 0x0000
loc_0003:
    call mouse_init                  ; 0x0003
    retf                             ; 0x0006
loc_0007:
    call mouse_init_2                ; 0x0007
    retf                             ; 0x000a
loc_000b:
    call bios_mouse_loc_1317         ; 0x000b
    retf                             ; 0x000e
loc_000f:
    call leaf_loc_1308               ; 0x000f
    retf                             ; 0x0012
loc_0013:
    call bios_mouse_loc_12c9         ; 0x0013
    retf                             ; 0x0016
loc_0017:
    call dos_read_file_3             ; 0x0017
    retf                             ; 0x001a
loc_001b:
    call graphics_loc_2d6c           ; 0x001b
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
    call leaf_loc_217d               ; 0x002b
    retf                             ; 0x002e
loc_002f:
    call graphics_loc_0293           ; 0x002f
    retf                             ; 0x0032
loc_0033:
    call leaf_loc_0447               ; 0x0033
    retf                             ; 0x0036
loc_0037:
    call leaf_loc_045c               ; 0x0037
    retf                             ; 0x003a
loc_003b:
    call leaf_loc_0477               ; 0x003b
    retf                             ; 0x003e
loc_003f:
    call leaf_loc_0496               ; 0x003f
    retf                             ; 0x0042
loc_0043:
    call loc_04b5                    ; 0x0043
    retf                             ; 0x0046
loc_0047:
    call leaf_loc_06b2               ; 0x0047
    retf                             ; 0x004a
loc_004b:
    call leaf_loc_06d9               ; 0x004b
    retf                             ; 0x004e
loc_004f:
    call string_loc_0728             ; 0x004f
    retf                             ; 0x0052
loc_0053:
    call dos_alloc_mem               ; 0x0053
    retf                             ; 0x0056
loc_0057:
    call dos_free_mem                ; 0x0057
    retf                             ; 0x005a
loc_005b:
    call loc_2185                    ; 0x005b
    retf                             ; 0x005e
loc_005f:
    call bios_mouse_loc_139a         ; 0x005f
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
    call loc_2528                    ; 0x006f
    retf                             ; 0x0072
loc_0073:
    call bios_video_loc_277f         ; 0x0073
    retf                             ; 0x0076
loc_0077:
    call bios_video_loc_27d0         ; 0x0077
    retf                             ; 0x007a
loc_007b:
    call dos_free_mem_2              ; 0x007b
    retf                             ; 0x007e
loc_007f:
    call dos_free_mem_3              ; 0x007f
    retf                             ; 0x0082
loc_0083:
    call dos_free_mem_4              ; 0x0083
    retf                             ; 0x0086
loc_0087:
    call bios_mouse_loc_2b6c         ; 0x0087
    retf                             ; 0x008a
loc_008b:
    call bios_mouse_loc_2c0e         ; 0x008b
    retf                             ; 0x008e
loc_008f:
    call loc_0f6f                    ; 0x008f
    retf                             ; 0x0092
loc_0093:
    call loc_2cbe                    ; 0x0093
    retf                             ; 0x0096
loc_0097:
    call leaf_loc_2d08               ; 0x0097
    retf                             ; 0x009a
loc_009b:
    call leaf_loc_2acf               ; 0x009b
    retf                             ; 0x009e
loc_009f:
    call dos_write_file_2            ; 0x009f
    retf                             ; 0x00a2
loc_00a3:
    call dos_mem_loc_2b01            ; 0x00a3
    retf                             ; 0x00a6
loc_00a7:
    call dos_read_file_4             ; 0x00a7
    retf                             ; 0x00aa
loc_00ab:
    call dos_read_file_5             ; 0x00ab
    retf                             ; 0x00ae
loc_00af:
    call dos_file_loc_3f73           ; 0x00af
    retf                             ; 0x00b2
loc_00b3:
    call dos_read_file_6             ; 0x00b3
    retf                             ; 0x00b6
loc_00b7:
    call loc_439a                    ; 0x00b7
    retf                             ; 0x00ba
loc_00bb:
    call loc_4527                    ; 0x00bb
    retf                             ; 0x00be
loc_00bf:
    call loc_4596                    ; 0x00bf
    retf                             ; 0x00c2
loc_00c3:
    call loc_45b2                    ; 0x00c3
    retf                             ; 0x00c6
loc_00c7:
    call dos_read_file_7             ; 0x00c7
    retf                             ; 0x00ca
loc_00cb:
    call loc_478a                    ; 0x00cb
    retf                             ; 0x00ce
loc_00cf:
    call loc_481f                    ; 0x00cf
    retf                             ; 0x00d2
loc_00d3:
    call loc_4866                    ; 0x00d3
    retf                             ; 0x00d6
loc_00d7:
    call loc_487e                    ; 0x00d7
    retf                             ; 0x00da
loc_00db:
    call loc_4896                    ; 0x00db
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
%include "lib/graphics_loc_0293.asm"       ; 0x0293

%include "lib/leaf_loc_0439.asm"           ; 0x0439

%include "vga/leaf_loc_0447.asm"           ; 0x0447

%include "vga/asm_only/leaf_loc_045c.asm"           ; 0x045c

%include "vga/asm_only/leaf_loc_0477.asm"           ; 0x0477

%include "vga/asm_only/leaf_loc_0496.asm"           ; 0x0496

%include "vga/asm_only/loc_04b5.asm"                ; 0x04b5

%include "vga/asm_only/graphics_loc_0516.asm"       ; 0x0516

%include "vga/asm_only/leaf_loc_067f.asm"           ; 0x067f

%include "vga/asm_only/leaf_loc_06b2.asm"           ; 0x06b2

%include "vga/asm_only/leaf_loc_06d9.asm"           ; 0x06d9

%include "vga/asm_only/string_loc_0728.asm"         ; 0x0728

%include "vga/asm_only/dos_alloc_mem.asm"           ; 0x077a

%include "vga/asm_only/dos_con_loc_07fd.asm"        ; 0x07fd

%include "vga/asm_only/dos_free_mem.asm"            ; 0x0836

%include "vga/asm_only/dos_con_loc_088f.asm"        ; 0x088f

%include "vga/asm_only/dos_read_file.asm"           ; 0x08d2

%include "vga/asm_only/dos_write_file.asm"          ; 0x099c

%include "vga/asm_only/dos_con_loc_0a4f.asm"        ; 0x0a4f

%include "vga/asm_only/dos_con_loc_0a8d.asm"        ; 0x0a8d

%include "vga/asm_only/dos_read_file_2.asm"         ; 0x0bae

%include "vga/asm_only/leaf_loc_0e34.asm"           ; 0x0e34

%include "vga/asm_only/leaf_loc_0f3b.asm"           ; 0x0f3b

%include "vga/asm_only/loc_0f6f.asm"                ; 0x0f6f

%include "vga/asm_only/dos_print_str.asm"           ; 0x0fb7

%include "vga/asm_only/mouse_init.asm"              ; 0x11f8

%include "vga/asm_only/mouse_init_2.asm"            ; 0x126c

%include "vga/asm_only/bios_mouse_loc_12c9.asm"     ; 0x12c9

%include "vga/leaf_loc_1308.asm"           ; 0x1308

%include "vga/asm_only/bios_mouse_loc_1317.asm"     ; 0x1317

%include "vga/asm_only/bios_mouse_loc_139a.asm"     ; 0x139a

%include "vga/asm_only/dos_print_str_2.asm"         ; 0x13c9

%include "vga/asm_only/dos_con_loc_147d.asm"        ; 0x147d

%include "vga/asm_only/leaf_loc_1e1a.asm"           ; 0x1e1a

%include "vga/asm_only/graphics_loc_1e35.asm"       ; 0x1e35

%include "vga/leaf_loc_217d.asm"           ; 0x217d

%include "vga/asm_only/loc_2185.asm"                ; 0x2185

%include "vga/asm_only/dos_read_file_3.asm"         ; 0x21cd

%include "vga/asm_only/dos_con_loc_22be.asm"        ; 0x22be

%include "vga/asm_only/dos_con_loc_22ee.asm"        ; 0x22ee

%include "vga/asm_only/loc_2528.asm"                ; 0x2528

%include "vga/asm_only/bios_video_loc_277f.asm"     ; 0x277f

%include "vga/asm_only/bios_video_loc_27d0.asm"     ; 0x27d0

%include "vga/asm_only/dos_free_mem_2.asm"          ; 0x2802

%include "vga/asm_only/bios_video_loc_28ba.asm"     ; 0x28ba

%include "vga/asm_only/dos_free_mem_3.asm"          ; 0x28f0

%include "vga/asm_only/dos_mem_loc_29bf.asm"        ; 0x29bf

%include "vga/asm_only/dos_free_mem_4.asm"          ; 0x29f6

%include "vga/asm_only/dos_con_loc_2a97.asm"        ; 0x2a97

%include "vga/asm_only/leaf_loc_2acf.asm"           ; 0x2acf

%include "vga/asm_only/dos_mem_loc_2b01.asm"        ; 0x2b01

%include "vga/asm_only/bios_mouse_loc_2b6c.asm"     ; 0x2b6c

%include "vga/asm_only/bios_mouse_loc_2c0e.asm"     ; 0x2c0e

%include "vga/asm_only/loc_2cbe.asm"                ; 0x2cbe

%include "vga/asm_only/leaf_loc_2d08.asm"           ; 0x2d08

%include "vga/asm_only/graphics_loc_2d6c.asm"       ; 0x2d6c

%include "vga/asm_only/dos_con_loc_3131.asm"        ; 0x3131

%include "vga/leaf_loc_319f.asm"           ; 0x319f

%include "vga/asm_only/graphics_loc_31d9.asm"       ; 0x31d9

%include "vga/leaf_loc_3340.asm"           ; 0x3340

%include "vga/asm_only/leaf_loc_3360.asm"           ; 0x3360

%include "vga/asm_only/dos_con_loc_3822.asm"        ; 0x3822

%include "vga/asm_only/dos_write_file_2.asm"        ; 0x385f

%include "vga/asm_only/dos_con_loc_3ab7.asm"        ; 0x3ab7

%include "vga/asm_only/dos_con_loc_3aee.asm"        ; 0x3aee

%include "vga/asm_only/dos_con_loc_3b1f.asm"        ; 0x3b1f

%include "vga/asm_only/dos_con_loc_3b5c.asm"        ; 0x3b5c

%include "vga/asm_only/leaf_loc_3b90.asm"           ; 0x3b90

%include "vga/asm_only/dos_read_file_4.asm"         ; 0x3ba5

%include "vga/asm_only/dos_file_loc_3d0b.asm"       ; 0x3d0b

%include "vga/asm_only/dos_con_loc_3d39.asm"        ; 0x3d39

%include "vga/asm_only/dos_read_file_5.asm"         ; 0x3d72

%include "vga/asm_only/dos_con_loc_3f45.asm"        ; 0x3f45

%include "vga/asm_only/dos_file_loc_3f73.asm"       ; 0x3f73

%include "vga/asm_only/dos_con_loc_4088.asm"        ; 0x4088

%include "vga/asm_only/dos_con_loc_40d2.asm"        ; 0x40d2

%include "vga/asm_only/dos_read_file_6.asm"         ; 0x4156

%include "vga/asm_only/dos_con_loc_422f.asm"        ; 0x422f

%include "vga/asm_only/dos_con_loc_426b.asm"        ; 0x426b

%include "vga/asm_only/string_loc_4300.asm"         ; 0x4300

%include "vga/asm_only/dos_file_loc_4319.asm"       ; 0x4319

%include "vga/asm_only/loc_439a.asm"                ; 0x439a

%include "vga/leaf_loc_43f7.asm"           ; 0x43f7

%include "vga/leaf_loc_440c.asm"           ; 0x440c

%include "vga/leaf_loc_4421.asm"           ; 0x4421

%include "vga/leaf_loc_4436.asm"           ; 0x4436

%include "vga/leaf_loc_444b.asm"           ; 0x444b

%include "vga/asm_only/dos_con_loc_4461.asm"        ; 0x4461

%include "vga/asm_only/leaf_loc_44a3.asm"           ; 0x44a3

%include "vga/asm_only/loc_4527.asm"                ; 0x4527

%include "vga/asm_only/loc_4596.asm"                ; 0x4596

%include "vga/asm_only/loc_45b2.asm"                ; 0x45b2

%include "vga/asm_only/dos_read_file_7.asm"         ; 0x45fb

%include "vga/asm_only/dos_con_loc_4719.asm"        ; 0x4719

%include "vga/asm_only/dos_con_loc_4755.asm"        ; 0x4755

%include "vga/asm_only/loc_478a.asm"                ; 0x478a

%include "vga/asm_only/loc_481f.asm"                ; 0x481f

%include "vga/asm_only/loc_4866.asm"                ; 0x4866

%include "vga/asm_only/loc_487e.asm"                ; 0x487e

%include "vga/asm_only/loc_4896.asm"                ; 0x4896

