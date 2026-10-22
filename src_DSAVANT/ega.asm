; auto-generated
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif


loc_LPSH.mouse_init1 equ mouse_init
%include "shared/library/loc_LPSH.asm"                ; 0x0000

loc_JTQK_0007.mouse_off1 equ mouse_off
%include "shared/library/loc_JTQK_0007.asm"           ; 0x0007

loc_JTQK_000b.mouse_hit_test1 equ mouse_hit_test
%include "shared/library/loc_JTQK_000b.asm"           ; 0x000b

loc_JTQK_000f.leaf_loc1 equ leaf_loc_LMQV
%include "shared/library/loc_JTQK_000f.asm"           ; 0x000f

loc_JTQK_0013.bios_mouse_loc1 equ update_mouse_pointer
%include "shared/library/loc_JTQK_0013.asm"           ; 0x0013

loc_JTQK_0017.load_picture1 equ load_picture
%include "shared/library/loc_JTQK_0017.asm"           ; 0x0017

loc_JTQK_001b.draw_text1 equ draw_text
%include "shared/library/loc_JTQK_001b.asm"           ; 0x001b

loc_JTQK_001f.load_screen1 equ load_screen
%include "shared/library/loc_JTQK_001f.asm"           ; 0x001f

%include "shared/library/loc_JTQK_0023.asm"           ; 0x0023

%include "shared/library/loc_JTQK_0027.asm"           ; 0x0027

%include "shared/library/loc_JTQK_002b.asm"           ; 0x002b

%include "shared/library/loc_JTQK_002f.asm"           ; 0x002f

%include "shared/library/loc_JTQK_0033.asm"           ; 0x0033

%include "shared/library/loc_JTQK_0037.asm"           ; 0x0037

%include "shared/library/loc_JTQK_003b.asm"           ; 0x003b

%include "shared/library/loc_JTQK_003f.asm"           ; 0x003f

%include "shared/library/loc_JTQK_0043.asm"           ; 0x0043

%include "shared/library/loc_JTQK_0047.asm"           ; 0x0047

%include "shared/library/loc_JTQK_004b.asm"           ; 0x004b

%include "shared/library/loc_JTQK_004f.asm"           ; 0x004f

%include "shared/library/loc_JTQK_0053.asm"           ; 0x0053

%include "shared/library/loc_JTQK_0057.asm"           ; 0x0057

%include "shared/library/loc_JTQK_005b.asm"           ; 0x005b

%include "shared/library/loc_JTQK_005f.asm"           ; 0x005f

%include "shared/library/loc_JTQK_0063.asm"           ; 0x0063

%include "shared/library/loc_JTQK_0067.asm"           ; 0x0067

%include "shared/library/loc_JTQK_006b.asm"           ; 0x006b

%include "shared/library/loc_JTQK_006f.asm"           ; 0x006f

%include "shared/library/loc_JTQK_0073.asm"           ; 0x0073

%include "shared/library/loc_JTQK_0077.asm"           ; 0x0077

%include "shared/library/loc_JTQK_007b.asm"           ; 0x007b

%include "shared/library/loc_JTQK_007f.asm"           ; 0x007f

%include "shared/library/loc_JTQK_0083.asm"           ; 0x0083

%include "shared/library/loc_JTQK_0087.asm"           ; 0x0087

%include "shared/library/loc_JTQK_008b.asm"           ; 0x008b

%include "shared/library/loc_JTQK_008f.asm"           ; 0x008f

%include "shared/library/loc_JTQK_0093.asm"           ; 0x0093

%include "shared/library/loc_JTQK_0097.asm"           ; 0x0097

%include "shared/library/loc_JTQK_009b.asm"           ; 0x009b

%include "shared/library/loc_JTQK_009f.asm"           ; 0x009f

%include "shared/library/loc_JTQK_00a3.asm"           ; 0x00a3

%include "shared/library/loc_JTQK_00a7.asm"           ; 0x00a7

%include "shared/library/loc_JTQK_00ab.asm"           ; 0x00ab

%include "shared/library/loc_JTQK_00af.asm"           ; 0x00af

%include "shared/library/loc_JTQK_00b3.asm"           ; 0x00b3

%include "shared/library/loc_JTQK_00b7.asm"           ; 0x00b7

%include "shared/library/loc_JTQK_00bb.asm"           ; 0x00bb

%include "shared/library/loc_JTQK_00bf.asm"           ; 0x00bf

%include "shared/library/loc_JTQK_00c3.asm"           ; 0x00c3

%include "shared/library/loc_JTQK_00c7.asm"           ; 0x00c7

%include "shared/library/loc_JTQK_00cb.asm"           ; 0x00cb

%include "shared/library/loc_JTQK_00cf.asm"           ; 0x00cf

%include "shared/library/loc_JTQK_00d3.asm"           ; 0x00d3

%include "shared/library/loc_JTQK_00d7.asm"           ; 0x00d7

%include "shared/library/loc_JULP.asm"                ; 0x00db

maze_mem_seg:
    db 0x00, 0x00, 0x00, 0x10
screen_buf_seg:
    db 0x00, 0x00, 0x40, 0x01
scratch_buf_seg:
    db 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x30, 0x05, 0x00, 0x00, 0xd0, 0x01, 0x00, 0x00
cseg_00f7:
    times 4 db 0
cseg_00fb:
    times 4 db 0
ems_para_limit:
    db 0x00, 0x00
cseg_0101:
    db 0x00, 0x00
ems_frame_seg:
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
mouse_glide_active:
    db 0x00
mouse_redraw_pending:
    db 0x00
mouse_present:
    db 0x00
cseg_0129:

    times 40 db 0

cseg_0151:
    times 10 db 0
maze_slots:

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
ems_slots:

    times 40 db 0

cseg_01c3:

    times 20 db 0

screen_slots:

    times 20 db 0

ems_blocks:

    times 164 db 0

ems_block_count:
    db 0x00, 0x00
ems_paras_used:
    db 0x00, 0x00
%include "shared/library/graphics_loc_VNKS.asm"       ; 0x0293

%include "shared/library/set_text_opaque.asm"         ; 0x0439

%include "ega/set_text_color.asm"          ; 0x0447

%include "shared/library/set_text_pos.asm"            ; 0x0462

%include "ega/get_text_pos.asm"            ; 0x047d

%include "ega/clear_buffer.asm"            ; 0x0496

%include "ega/show_area.asm"               ; 0x04b1

cseg_0948:
    db 0x00
%include "ega/graphics_loc_IMOU.asm"       ; 0x0949

%include "ega/leaf_loc_KNIM.asm"           ; 0x0b91

%include "shared/library/put_pixel.asm"               ; 0x0bcf

%include "shared/library/fill_area.asm"               ; 0x0bf6

%include "ega/invert_area.asm"             ; 0x0c45

save_area.dos_con_loc1 equ dos_con_loc_VOUI
save_area.loc1         equ loc_0d4f
%include "shared/library/save_area.asm"               ; 0x0c9b

dos_con_loc_VOUI equ dos_con_loc_PJHN
cseg_0d2e        equ dos_con_loc_PJHN.cseg1
%include "shared/library/dos_con_loc_PJHN.asm"        ; 0x0d1e

loc_0d4f equ loc_082e
%include "shared/library/loc_082e.asm"                ; 0x0d4f

restore_area.dos_con_loc1 equ dos_con_loc_TMRV
restore_area.loc1         equ loc_0deb
%include "shared/library/restore_area.asm"            ; 0x0d57

dos_con_loc_TMRV equ dos_con_loc_SUSK
cseg_0dc0        equ dos_con_loc_SUSK.cseg1
%include "shared/library/dos_con_loc_SUSK.asm"        ; 0x0db0

loc_0deb equ loc_08ca
%include "shared/library/loc_08ca.asm"                ; 0x0deb

%include "ega/load_screen.asm"             ; 0x0df3

%include "ega/save_screen.asm"             ; 0x0ebd

cseg_0f80 equ dos_con_loc_KOIJ.cseg1
%include "shared/library/dos_con_loc_KOIJ.asm"        ; 0x0f70

dos_con_loc_UNVT equ dos_con_loc_HUUH
cseg_0fbe        equ dos_con_loc_HUUH.cseg1
%include "shared/library/dos_con_loc_HUUH.asm"        ; 0x0fae

cseg_0fe7:

    times 20 db 0

maze_blocks:

    times 208 db 0

maze_block_count:
    db 0x00, 0x00
maze_paras_used:
    db 0x00, 0x00
%include "ega/load_maze.asm"               ; 0x10cf

dos_con_loc_GNNJ.cseg1        equ cseg_125d
loc_SMNJ                      equ dos_con_loc_GNNJ.loc1
dos_con_loc_GNNJ.dos_con_loc1 equ dos_con_loc_MQHQ
%include "shared/library/dos_con_loc_GNNJ.asm"        ; 0x10ff

dos_con_loc_OIUO       equ dos_con_loc_NRMP
dos_con_loc_NRMP.cseg1 equ cseg_1231
%include "shared/library/dos_con_loc_NRMP.asm"        ; 0x1211

dos_con_loc_MQHQ       equ dos_con_loc_GKGP
dos_con_loc_GKGP.cseg1 equ cseg_128c
%include "shared/library/dos_con_loc_GKGP.asm"        ; 0x1221

cseg_1231:

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with bad slot number.', 0
    db 0x0a, 0x24

cseg_125d:

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with filled slot number.', 0
    db 0x0a, 0x24

cseg_128c:

    db 0x0d, 0x0a, 0x07
    db 'oops... LOAD_MAZE filled its memory area.', 0
    db 0x0a, 0x24

%include "shared/library/loc_LQTO.asm"                ; 0x12bb

leaf_loc_MIUO.screen_slots1 equ screen_slots
%include "shared/library/leaf_loc_MIUO.asm"           ; 0x1355

cseg_138e:
    db 0x00, 0x00
cseg_1390:
    db 0x00, 0x00
loc_KLNH.cseg1 equ cseg_138e
loc_KLNH.cseg2 equ cseg_1390
%include "shared/library/loc_KLNH.asm"                ; 0x1392

leaf_loc_TPOL.cseg1 equ cseg_1390
leaf_loc_TPOL.cseg2 equ cseg_138e
%include "shared/library/leaf_loc_TPOL.asm"           ; 0x145c

%include "ega/free_maze.asm"               ; 0x1490

%include "ega/draw_maze_piece.asm"         ; 0x14d8

%include "ega/mouse_init.asm"              ; 0x1719

%include "ega/string_loc_RHHH.asm"         ; 0x17a1

%include "ega/mouse_off.asm"               ; 0x1810

%include "ega/leaf_loc_PUST.asm"           ; 0x189f

%include "shared/library/update_mouse_pointer.asm"    ; 0x18c1

%include "shared/library/leaf_loc_LMQV.asm"           ; 0x1900

mouse_hit_test.cseg1 equ cseg_2a02
mouse_hit_test.cseg2 equ cseg_2a04
mouse_hit_test.cseg3 equ cseg_2a06
%include "shared/library/mouse_hit_test.asm"          ; 0x190f

%include "shared/library/get_mouse.asm"               ; 0x1992

%include "ega/set_mouse_pointer.asm"       ; 0x19c1

dos_con_loc_NUII equ dos_con_loc_JJUT
cseg_1aaf        equ dos_con_loc_JJUT.cseg1
%include "shared/library/dos_con_loc_JJUT.asm"        ; 0x1a9f

cseg_1ad5:
    dw __zcp_1afd - IMAGE_BASE                 ; 0x1ad5
cseg_1ad7:
    dw __zcp_1f7d - IMAGE_BASE                 ; 0x1ad7
mouse_drawn_x:
    db 0x00, 0x00
mouse_drawn_y:
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
    db 0x00, 0x00
__zcp_1afd:

    times 1152 db 0

__zcp_1f7d:

    times 1152 db 0

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

    times 256 db 0

cseg_2602:

    times 256 db 0

cseg_2702:

    times 256 db 0

cseg_2802:

    times 256 db 0

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

draw_mouse_pointer_at.cseg1 equ cseg_2a08
draw_mouse_pointer_at.cseg2 equ cseg_1aeb
draw_mouse_pointer_at.cseg3 equ cseg_1aed
%include "shared/library/draw_mouse_pointer_at.asm"   ; 0x2a4f

%include "ega/io_loc_UQHG.asm"             ; 0x2a6a

%include "ega/io_loc_SRLG.asm"             ; 0x2e35

%include "ega/io_loc_JGUP.asm"             ; 0x2e7d

%include "ega/io_loc_TSTG.asm"             ; 0x2f46

%include "ega/io_loc_QMLN.asm"             ; 0x2f70

leaf_loc_OLKS.cseg1 equ cseg_2a02
%include "shared/library/leaf_loc_OLKS.asm"           ; 0x3035

%include "ega/free_picture.asm"            ; 0x303d

%include "ega/load_picture.asm"            ; 0x3085

cseg_3186 equ dos_con_loc_KGLK.cseg1
%include "shared/library/dos_con_loc_KGLK.asm"        ; 0x3176

cseg_3196:
    db 0x30
cseg_3197:
    db '0 not freed.', 0
    db 0x0a, 0x24
cseg_31b6 equ dos_con_loc_QMKK.cseg1
%include "shared/library/dos_con_loc_QMKK.asm"        ; 0x31a6

dissolve_area.show_area1 equ show_area
%include "shared/library/dissolve_area.asm"           ; 0x31df

cseg_31e2:

    db 0x05, 0x00, 0x08, 0x0a, 0x0a, 0xaa, 0x11, 0x2a, 0x13, 0x22, 0x16, 0x2f, 0x19, 0xff, 0x1a, 0x7f
    db 0x1c, 0x77

%include "ega/set_rgb.asm"                 ; 0x31f4

%include "ega/get_rgb.asm"                 ; 0x3240

%include "ega/fade_in.asm"                 ; 0x3241

%include "ega/fade_out.asm"                ; 0x3242

%include "ega/reset_rgb.asm"               ; 0x3243

%include "ega/set_palette.asm"             ; 0x3244

%include "ega/leaf_loc_TTKL.asm"           ; 0x3245

%include "ega/leaf_loc_OHGP.asm"           ; 0x3252

cseg_32b3:

    db 0x00, 0x11, 0x19, 0x19, 0x18, 0x18, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x00
    db 0x11, 0x19, 0x14, 0x14
    db 'DDDDLL'
    db 0xcc, 0xcc, 0x04, 0x04, 0x0c, 0x0c, 0x08, 0x08, 0x00, 0x00, 0x14, 0x45, 0x45, 0x44, 0x4d, 0xdd
    db 0xdd, 0x04, 0x45, 0x45, 0x5d, 0x5c, 0x16, 0x66, 0x66, 0x6e, 0x6e, 0xee, 0x06, 0x0e, 0x0e, 0x08
    db 0x08, 0x5c, 0x9d, 0x8d, 0x8d, 0xce, 0x59, 0x56, 0x5e, 0x6d, 0xde, 0xce, 0xce, 0x08, 0x08, 0x00
    db 0x00, 0x7f, 0xff, 0x07, 0x0f, 0x0f, 0x15, 0x15, 0x15
    db 'UUUY]F'
    db 0x05, 0xce, 0xce, 0x08, 0x08, 0x27, 0xaf, 0x19, 0x19, 0x19, 0x19, 0x18, 0x18, 0x18, 0x18, 0x18
    db 0x01, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00, 0x01
    db 0x09, 0x09, 0x09, 0xad, 0x08, 0x08, 0x08, 0x17, 0x17, 0x1f
    db "''''//"
    db 0xaf, 0x2d, 0x02, 0x0f, 0xad, 0x08, 0x08, 0x1c, 0x1c, 0x48, 0x48, 0x14, 0x14
    db '4"""*'
    db 0x02, 0x0a, 0x0a, 0x08, 0x08, 0x8d, 0x04, 0x04, 0x0d, 0x34, 0x3c, 0xbc, 0x13, 0x33, 0x33, 0x3b
    db 0xbb, 0xbb, 0x03, 0x0b, 0x08
    db 'UUUYYY]]'
    db 0x12, 0x12, 0x1a, 0x1a, 0x28, 0x28, 0x28, 0x02, 0x5d, 0x5d, 0x9d, 0x9d, 0x9d, 0x8d, 0x8d, 0x8d
    db 0x0d, 0x0d, 0x0d, 0x0d, 0x08, 0x08, 0x08, 0x00, 0x1d, 0x5d, 0x5d, 0x9d, 0x9d, 0x05, 0x8d, 0x15
    db 0x14, 0x14, 0x14, 0x1d, 0x1d, 0x1d, 0x1c, 0x1c, 0x09, 0x09, 0x08, 0x59, 0x1d, 0x9d, 0x8d, 0x9d
    db 0x48, 0x8d, 0x8d, 0x8d, 0x0d, 0x0d, 0x08, 0x00, 0x1c, 0x48, 0x48, 0x04, 0x04, 0x0c, 0x12, 0x23
    db 0x23, 0x2b, 0xab, 0xab, 0x02, 0x0b, 0x08, 0x2d

%include "shared/library/get_free_space.asm"          ; 0x33b3

%include "shared/library/mouse_glide_to.asm"          ; 0x341e

%include "shared/library/mouse_glide_back.asm"        ; 0x34c0

%include "ega/free_screen.asm"             ; 0x3570

%include "shared/library/get_palette.asm"             ; 0x35ba

cseg_35dd:

    times 40 db 0

cseg_3605:

    times 25 db 0

%include "ega/draw_text.asm"               ; 0x361e

%include "ega/leaf_loc_TVGR.asm"           ; 0x39e3

%include "ega/print_msg_and_exit.asm"      ; 0x3a0f

%include "ega/table_entry_ptr.asm"         ; 0x3a3a

%include "shared/library/leaf_loc_NOSG.asm"           ; 0x3a51

%include "ega/graphics_loc_NVPK.asm"       ; 0x3a8b

%include "shared/library/leaf_loc_MTKK.asm"           ; 0x3bf2

%include "shared/library/leaf_loc_KSJN.asm"           ; 0x3c12

%include "ega/loc_3c2e.asm"                ; 0x3c2e

%include "ega/loc_3d4a.asm"                ; 0x3d4a

%include "ega/loc_3e8a.asm"                ; 0x3e8a

cseg_40dd equ cache_area_disk_error.cseg1
%include "shared/library/cache_area_disk_error.asm"   ; 0x40cd

%include "shared/library/cache_area.asm"              ; 0x4111

cseg_4379 equ cache_area_out_of_ems.cseg1
%include "shared/library/cache_area_out_of_ems.asm"   ; 0x4369

%include "shared/library/cache_area_clear_result.asm" ; 0x4394

%include "shared/library/cache_area_restore_and_return.asm" ; 0x4398

cseg_43b0 equ cache_area_ems_slots_full.cseg1
%include "shared/library/cache_area_ems_slots_full.asm" ; 0x43a0

cseg_43e1 equ cache_area_maze_mem_full.cseg1
%include "shared/library/cache_area_maze_mem_full.asm" ; 0x43d1

%include "shared/library/cache_area_return_zero.asm"  ; 0x4408

cseg_441e equ cache_area_maze_slots_full.cseg1
%include "shared/library/cache_area_maze_slots_full.asm" ; 0x440e

ems_cur_page:
    db 0x00, 0x00
%include "shared/library/ems_map_pages.asm"           ; 0x4442

%include "shared/library/restore_screen.asm"          ; 0x4457

dos_file_loc_MUHV.loc1         equ loc_461f
dos_file_loc_MUHV.dos_con_loc1 equ dos_con_loc_TORI
%include "shared/library/dos_file_loc_MUHV.asm"       ; 0x45bd

dos_con_loc_TORI equ dos_con_loc_KVVK
cseg_45fb        equ dos_con_loc_KVVK.cseg1
%include "shared/library/dos_con_loc_KVVK.asm"        ; 0x45eb

loc_461f equ loc_3d6d
%include "shared/library/loc_3d6d.asm"                ; 0x461f

cache_maze.dos_con_loc1 equ dos_con_loc_GKTV
cache_maze.dos_con_loc2 equ dos_con_loc_TUHU
%include "shared/library/cache_maze.asm"              ; 0x4624

cseg_47b8 equ dos_con_loc_GKTV.cseg1
%include "shared/library/dos_con_loc_GKTV.asm"        ; 0x47a8

dos_con_loc_TUHU equ dos_con_loc_JUQV
cseg_4800        equ dos_con_loc_JUQV.cseg1
%include "shared/library/dos_con_loc_JUQV.asm"        ; 0x47f0

cache_screen.screen_slots1 equ screen_slots
%include "shared/library/cache_screen.asm"            ; 0x4825

%include "shared/library/cache_screen_restore_and_return.asm" ; 0x492b

cseg_4943 equ cache_screen_slot_in_use.cseg1
%include "shared/library/cache_screen_slot_in_use.asm" ; 0x4933

%include "shared/library/cache_screen_return_zero.asm" ; 0x4977

cseg_498d equ cache_screen_out_of_ems.cseg1
%include "shared/library/cache_screen_out_of_ems.asm" ; 0x497d

cseg_49b4:

    times 84 db 0

%include "ega/load_sound.asm"              ; 0x4a08

dos_con_loc_TVRM equ dos_con_loc_KPVS
cseg_4aea        equ dos_con_loc_KPVS.cseg1
%include "shared/library/dos_con_loc_KPVS.asm"        ; 0x4ada

dos_con_loc_LGMH equ dos_con_loc_KOGR
cseg_4b26        equ dos_con_loc_KOGR.cseg1
%include "shared/library/dos_con_loc_KOGR.asm"        ; 0x4b16

loc_4b52              equ loc_42a0
loc_4b9c              equ loc_42a0.loc1
loc_42a0.dos_con_loc1 equ dos_con_loc_LGMH
%include "shared/library/loc_42a0.asm"                ; 0x4b52

%include "shared/library/string_loc_RQON.asm"         ; 0x4bb2

%include "shared/library/dos_file_loc_VPIN.asm"       ; 0x4bcb

%include "ega/free_sound.asm"              ; 0x4c4c

%include "ega/leaf_loc_OSUJ.asm"           ; 0x4ca9

%include "ega/leaf_loc_IHJG.asm"           ; 0x4cbe

%include "shared/library/leaf_loc_MGRH.asm"           ; 0x4cd3

%include "ega/leaf_loc_USQQ.asm"           ; 0x4ce8

%include "ega/leaf_loc_JRKU.asm"           ; 0x4cfd

%include "ega/dos_con_loc_GJMS.asm"        ; 0x4d13

leaf_loc_RJJR equ leaf_loc_IQGS
%include "shared/library/leaf_loc_IQGS.asm"           ; 0x4d55

%include "ega/play_sound.asm"              ; 0x4dd9

%include "shared/library/wait_sound.asm"              ; 0x4e48

%include "shared/library/stop_sound.asm"              ; 0x4e64

cseg_4e8b:

    times 24 db 0

cseg_4ea3:
    times 10 db 0
%include "ega/load_score.asm"              ; 0x4ead

cseg_4fd4 equ dos_con_loc_OOVK.cseg1
%include "shared/library/dos_con_loc_OOVK.asm"        ; 0x4fc4

dos_con_loc_LIIS equ dos_con_loc_HPIH
cseg_5010        equ dos_con_loc_HPIH.cseg1
%include "shared/library/dos_con_loc_HPIH.asm"        ; 0x5000

%include "ega/play_score.asm"              ; 0x503c

%include "ega/free_score.asm"              ; 0x50d1

%include "shared/library/is_music_playing.asm"        ; 0x5118

%include "shared/library/stop_music.asm"              ; 0x5130

%include "shared/library/set_music_tempo_volume.asm"  ; 0x5148

    db 0x00
