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

loc_JTQK_000f.leaf_loc1 equ request_mouse_redraw
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
palette_ptr:
    times 4 db 0
delay_hook:
    times 4 db 0
ems_para_limit:
    db 0x00, 0x00
cseg_0101:
    db 0x00, 0x00
ems_frame_seg:
    db 0x00, 0x00
cseg_0105:
    db 0x00
music_start_far:
    db 0x03, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
music_load_far:
    db 0x0b, 0x01, 0x00, 0x00
music_stop_far:
    db 0x0f, 0x01, 0x00, 0x00
music_config_far:
    db 0x13, 0x01, 0x00, 0x00
sound_play_far:
    db 0x17, 0x01, 0x00, 0x00
music_playing_far:
    db 0x1b, 0x01, 0x00, 0x00
sound_wait_far:
    db 0x1f, 0x01, 0x00, 0x00
mouse_glide_active:
    db 0x00
mouse_redraw_pending:
    db 0x00
mouse_present:
    db 0x00
picture_slots:

    times 40 db 0

screen_maze_slots:
    times 10 db 0
maze_slots:

    times 32 db 0

maze_piece_table:

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

screen_ems_slots:

    times 20 db 0

ems_blocks:

    times 164 db 0

ems_block_count:
    db 0x00, 0x00
ems_paras_used:
    db 0x00, 0x00
%include "shared/library/graphics_loc_VNKS.asm"       ; 0x0293

%include "shared/library/set_text_opaque.asm"         ; 0x0439

%include "vga/set_text_color.asm"          ; 0x0447

%include "shared/library/set_text_pos.asm"            ; 0x045c

%include "vga/get_text_pos.asm"            ; 0x0477

%include "vga/fill_screen_buffer.asm"      ; 0x0496

%include "vga/show_area.asm"               ; 0x04b5

cseg_0515:
    db 0x00
%include "vga/clip_mouse_pointer_to_area.asm" ; 0x0516

%include "vga/redraw_mouse_pointer.asm"    ; 0x067f

%include "shared/library/put_pixel.asm"               ; 0x06b2

%include "shared/library/fill_area.asm"               ; 0x06d9

%include "vga/invert_area.asm"             ; 0x0728

%include "shared/library/save_area.asm"               ; 0x077a

cseg_080d equ save_area_out_of_memory.cseg1
%include "shared/library/save_area_out_of_memory.asm" ; 0x07fd

%include "shared/library/save_area_clear_result.asm"  ; 0x082a

%include "shared/library/area_restore_and_return.asm" ; 0x082e

restore_area.dos_con_loc1 equ dos_con_loc_SUSK
restore_area.loc1         equ loc_08ca
%include "shared/library/restore_area.asm"            ; 0x0836

cseg_089f equ dos_con_loc_SUSK.cseg1
%include "shared/library/dos_con_loc_SUSK.asm"        ; 0x088f

%include "shared/library/loc_08ca.asm"                ; 0x08ca

%include "shared/library/load_screen.asm"             ; 0x08d2

save_screen.dos_con_loc1 equ dos_con_loc_VOMM
save_screen.dos_con_loc2 equ dos_con_loc_HUUH
%include "shared/library/save_screen.asm"             ; 0x099c

dos_con_loc_VOMM equ dos_con_loc_KOIJ
cseg_0a5f        equ dos_con_loc_KOIJ.cseg1
%include "shared/library/dos_con_loc_KOIJ.asm"        ; 0x0a4f

cseg_0a9d equ dos_con_loc_HUUH.cseg1
%include "shared/library/dos_con_loc_HUUH.asm"        ; 0x0a8d

maze_map_slots:

    times 20 db 0

maze_blocks:

    times 208 db 0

maze_block_count:
    db 0x00, 0x00
maze_paras_used:
    db 0x00, 0x00
load_maze.dos_con_loc1 equ dos_con_loc_GKGP
load_maze.dos_con_loc2 equ dos_con_loc_PHON
load_maze.loc1         equ loc_TKLO
%include "shared/library/load_maze.asm"               ; 0x0bae

dos_con_loc_PHON              equ dos_con_loc_GNNJ
dos_con_loc_GNNJ.cseg1        equ cseg_0d3c
loc_TKLO                      equ dos_con_loc_GNNJ.loc1
dos_con_loc_GNNJ.dos_con_loc1 equ dos_con_loc_NRMP
%include "shared/library/dos_con_loc_GNNJ.asm"        ; 0x0bde

dos_con_loc_GKGP.cseg1 equ cseg_0d10
%include "shared/library/dos_con_loc_GKGP.asm"        ; 0x0cf0

dos_con_loc_NRMP.cseg1 equ cseg_0d6b
%include "shared/library/dos_con_loc_NRMP.asm"        ; 0x0d00

cseg_0d10:

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with bad slot number.', 0
    db 0x0a, 0x24

cseg_0d3c:

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with filled slot number.', 0
    db 0x0a, 0x24

cseg_0d6b:

    db 0x0d, 0x0a, 0x07
    db 'oops... LOAD_MAZE filled its memory area.', 0
    db 0x0a, 0x24

%include "shared/library/loc_LQTO.asm"                ; 0x0d9a

%include "shared/library/leaf_loc_MIUO.asm"           ; 0x0e34

cseg_0e6d:
    db 0x00, 0x00
cseg_0e6f:
    db 0x00, 0x00
loc_KLNH.cseg1 equ cseg_0e6d
loc_KLNH.cseg2 equ cseg_0e6f
%include "shared/library/loc_KLNH.asm"                ; 0x0e71

leaf_loc_TPOL.cseg1 equ cseg_0e6f
leaf_loc_TPOL.cseg2 equ cseg_0e6d
%include "shared/library/leaf_loc_TPOL.asm"           ; 0x0f3b

%include "shared/library/free_maze.asm"               ; 0x0f6f

dos_con_loc_0fda equ draw_maze_piece.dos_con_loc1
cseg_0fea        equ draw_maze_piece.cseg1
%include "shared/library/draw_maze_piece.asm"         ; 0x0fb7

%include "vga/mouse_init.asm"              ; 0x11f8

%include "vga/mouse_off.asm"               ; 0x126c

%include "shared/library/update_mouse_pointer.asm"    ; 0x12c9

%include "shared/library/request_mouse_redraw.asm"    ; 0x1308

mouse_hit_test.cseg1 equ cseg_1dcd
mouse_hit_test.cseg2 equ cseg_1dcf
mouse_hit_test.cseg3 equ cseg_1dd1
%include "shared/library/mouse_hit_test.asm"          ; 0x1317

%include "shared/library/get_mouse.asm"               ; 0x139a

data_1e5c equ __zdata_1e5c - IMAGE_BASE
%include "vga/set_mouse_pointer.asm"       ; 0x13c9

cseg_1486 equ dos_con_loc_JJUT.cseg1
%include "shared/library/dos_con_loc_JJUT.asm"        ; 0x1476

mouse_drawn_x:
    db 0x00, 0x00
mouse_drawn_y:
    db 0x00, 0x00
cseg_14b0:
    db 0x00, 0x00
cseg_14b2:
    db 0x00, 0x00
cseg_14b4:
    dw __zcp_14c4 - IMAGE_BASE                 ; 0x14b4
cseg_14b6:
    dw __zcp_18c4 - IMAGE_BASE                 ; 0x14b6
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
    db 0x00, 0x00
__zcp_14c4:

    times 1024 db 0

__zcp_18c4:

    times 1024 db 0

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

draw_mouse_pointer_at.cseg1 equ cseg_1dd3
draw_mouse_pointer_at.cseg2 equ cseg_14b0
draw_mouse_pointer_at.cseg3 equ cseg_14b2
%include "shared/library/draw_mouse_pointer_at.asm"   ; 0x1e1a

data_1dc4 equ __zdata_1dc4 - IMAGE_BASE
data_1e4c equ __zdata_1e4c - IMAGE_BASE
%include "vga/graphics_loc_OSKV.asm"       ; 0x1e35

leaf_loc_OLKS.cseg1 equ cseg_1dcd
%include "shared/library/leaf_loc_OLKS.asm"           ; 0x217d

%include "shared/library/free_picture.asm"            ; 0x2185

load_picture.dos_con_loc1 equ dos_con_loc_TTIT
%include "shared/library/load_picture.asm"            ; 0x21cd

dos_con_loc_QRKT equ dos_con_loc_KGLK
cseg_22ce        equ dos_con_loc_KGLK.cseg1
%include "shared/library/dos_con_loc_KGLK.asm"        ; 0x22be

picture_error_tens:
    db 0x30
picture_error_ones:
    db '0 not freed.', 0
    db 0x0a, 0x24
dos_con_loc_TTIT equ dos_con_loc_QMKK
cseg_22fe        equ dos_con_loc_QMKK.cseg1
%include "shared/library/dos_con_loc_QMKK.asm"        ; 0x22ee

rgb_to_palette:

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
    db 0x56, 0xb5, 0xb2, 0xff, 0xe3, 0xd7, 0x11, 0xff

%include "vga/loc_251f.asm"                ; 0x251f

%include "vga/dissolve_area.asm"           ; 0x2528

%include "vga/set_rgb.asm"                 ; 0x277f

%include "vga/get_rgb.asm"                 ; 0x27d0

%include "vga/fade_in.asm"                 ; 0x2802

%include "vga/bios_video_loc_GGUP.asm"     ; 0x28ba

%include "vga/fade_out.asm"                ; 0x28f0

%include "vga/dos_mem_loc_QHMQ.asm"        ; 0x29bf

%include "vga/reset_rgb.asm"               ; 0x29f6

%include "vga/dos_con_loc_HJPN.asm"        ; 0x2a97

%include "vga/set_palette.asm"             ; 0x2acf

%include "shared/library/get_free_space.asm"          ; 0x2b01

mouse_glide_to.cseg1 equ delay_hook
%include "shared/library/mouse_glide_to.asm"          ; 0x2b6c

mouse_glide_back.cseg1 equ delay_hook
%include "shared/library/mouse_glide_back.asm"        ; 0x2c0e

%include "shared/library/free_screen.asm"             ; 0x2cbe

get_palette.cseg1 equ palette_ptr
%include "shared/library/get_palette.asm"             ; 0x2d08

text_state_words:

    times 40 db 0

text_state_bytes:

    times 25 db 0

draw_text.leaf_loc1     equ leaf_loc_NIGK
draw_text.graphics_loc1 equ graphics_loc_PVIU
%include "shared/library/draw_text.asm"               ; 0x2d6c

%include "vga/leaf_loc_NIGK.asm"           ; 0x3131

%include "vga/dos_con_loc_HLGP.asm"        ; 0x3156

cseg_316f:
    db 0x30
cseg_3170:

    db '0 too big in slot '

cseg_3182:
    db 0x30
cseg_3183:
    db 0x30, 0x2e, 0x00, 0x0a, 0x24
%include "vga/loc_3188.asm"                ; 0x3188

%include "shared/library/leaf_loc_NOSG.asm"           ; 0x319f

graphics_loc_PVIU           equ graphics_loc_NVPK
graphics_loc_NVPK.loc1      equ loc_3498
graphics_loc_NVPK.loc2      equ loc_35d8
graphics_loc_NVPK.loc3      equ loc_337c
graphics_loc_NVPK.leaf_loc1 equ leaf_loc_QLNN
%include "shared/library/graphics_loc_NVPK.asm"       ; 0x31d9

%include "shared/library/leaf_loc_MTKK.asm"           ; 0x3340

leaf_loc_QLNN equ leaf_loc_KSJN
%include "shared/library/leaf_loc_KSJN.asm"           ; 0x3360

loc_338d           equ loc_337c.loc1
loc_339d           equ loc_337c.loc2
loc_3490           equ loc_337c.loc3
loc_33aa           equ loc_337c.loc4
loc_337c.leaf_loc1 equ leaf_loc_QLNN
loc_33bb           equ loc_337c.loc5
loc_3463           equ loc_337c.loc6
loc_33cb           equ loc_337c.loc7
loc_33d5           equ loc_337c.loc8
loc_33dd           equ loc_337c.loc9
loc_345e           equ loc_337c.loc10
loc_33eb           equ loc_337c.loc11
loc_3459           equ loc_337c.loc12
loc_33f5           equ loc_337c.loc13
loc_3451           equ loc_337c.loc14
loc_343d           equ loc_337c.loc15
loc_3422           equ loc_337c.loc16
loc_341d           equ loc_337c.loc17
loc_343a           equ loc_337c.loc18
loc_3437           equ loc_337c.loc19
loc_3444           equ loc_337c.loc20
loc_344a           equ loc_337c.loc21
loc_3475           equ loc_337c.loc22
loc_3492           equ loc_337c.loc23
loc_3495           equ loc_337c.loc24
%include "shared/library/loc_337c.asm"                ; 0x337c

loc_34d0           equ loc_3498.loc1
loc_34dd           equ loc_3498.loc2
loc_35d0           equ loc_3498.loc3
loc_34ea           equ loc_3498.loc4
loc_3498.leaf_loc1 equ leaf_loc_QLNN
loc_34fb           equ loc_3498.loc5
loc_35a3           equ loc_3498.loc6
loc_350b           equ loc_3498.loc7
loc_3515           equ loc_3498.loc8
loc_351d           equ loc_3498.loc9
loc_359e           equ loc_3498.loc10
loc_352b           equ loc_3498.loc11
loc_3599           equ loc_3498.loc12
loc_3535           equ loc_3498.loc13
loc_3591           equ loc_3498.loc14
loc_357d           equ loc_3498.loc15
loc_3562           equ loc_3498.loc16
loc_355d           equ loc_3498.loc17
loc_357a           equ loc_3498.loc18
loc_3577           equ loc_3498.loc19
loc_3584           equ loc_3498.loc20
loc_358a           equ loc_3498.loc21
loc_35b5           equ loc_3498.loc22
loc_35d2           equ loc_3498.loc23
loc_35d5           equ loc_3498.loc24
%include "shared/library/loc_3498.asm"                ; 0x3498

loc_3610           equ loc_35d8.loc1
loc_3620           equ loc_35d8.loc2
loc_3713           equ loc_35d8.loc3
loc_362d           equ loc_35d8.loc4
loc_35d8.leaf_loc1 equ leaf_loc_QLNN
loc_363e           equ loc_35d8.loc5
loc_36e6           equ loc_35d8.loc6
loc_364e           equ loc_35d8.loc7
loc_3658           equ loc_35d8.loc8
loc_3660           equ loc_35d8.loc9
loc_36e1           equ loc_35d8.loc10
loc_366e           equ loc_35d8.loc11
loc_36dc           equ loc_35d8.loc12
loc_3678           equ loc_35d8.loc13
loc_36d4           equ loc_35d8.loc14
loc_36c0           equ loc_35d8.loc15
loc_36a5           equ loc_35d8.loc16
loc_36a0           equ loc_35d8.loc17
loc_36bd           equ loc_35d8.loc18
loc_36ba           equ loc_35d8.loc19
loc_36c7           equ loc_35d8.loc20
loc_36cd           equ loc_35d8.loc21
loc_36f8           equ loc_35d8.loc22
loc_3715           equ loc_35d8.loc23
loc_3718           equ loc_35d8.loc24
%include "shared/library/loc_35d8.asm"                ; 0x35d8

cseg_382b equ cache_area_disk_error.cseg1
%include "shared/library/cache_area_disk_error.asm"   ; 0x381b

%include "shared/library/cache_area.asm"              ; 0x385f

cseg_3ac7 equ cache_area_out_of_ems.cseg1
%include "shared/library/cache_area_out_of_ems.asm"   ; 0x3ab7

%include "shared/library/cache_area_clear_result.asm" ; 0x3ae2

%include "shared/library/cache_area_restore_and_return.asm" ; 0x3ae6

cseg_3afe equ cache_area_ems_slots_full.cseg1
%include "shared/library/cache_area_ems_slots_full.asm" ; 0x3aee

cseg_3b2f equ cache_area_maze_mem_full.cseg1
%include "shared/library/cache_area_maze_mem_full.asm" ; 0x3b1f

%include "shared/library/cache_area_return_zero.asm"  ; 0x3b56

cseg_3b6c equ cache_area_maze_slots_full.cseg1
%include "shared/library/cache_area_maze_slots_full.asm" ; 0x3b5c

ems_cur_page:
    db 0x00, 0x00
%include "shared/library/ems_map_pages.asm"           ; 0x3b90

%include "shared/library/restore_screen.asm"          ; 0x3ba5

dos_file_loc_MUHV.loc1         equ loc_3d6d
dos_file_loc_MUHV.dos_con_loc1 equ dos_con_loc_KVVK
%include "shared/library/dos_file_loc_MUHV.asm"       ; 0x3d0b

cseg_3d49 equ dos_con_loc_KVVK.cseg1
%include "shared/library/dos_con_loc_KVVK.asm"        ; 0x3d39

%include "shared/library/loc_3d6d.asm"                ; 0x3d6d

cache_maze.dos_con_loc1 equ dos_con_loc_JUQV
%include "shared/library/cache_maze.asm"              ; 0x3d72

%include "shared/library/cache_maze_restore_and_return.asm" ; 0x3eee

cseg_3f06 equ cache_maze_slot_in_use.cseg1
%include "shared/library/cache_maze_slot_in_use.asm"  ; 0x3ef6

%include "shared/library/cache_maze_return_zero.asm"  ; 0x3f38

cseg_3f4e equ dos_con_loc_JUQV.cseg1
%include "shared/library/dos_con_loc_JUQV.asm"        ; 0x3f3e

%include "shared/library/cache_screen.asm"            ; 0x3f73

%include "shared/library/cache_screen_restore_and_return.asm" ; 0x4079

cseg_4091 equ cache_screen_slot_in_use.cseg1
%include "shared/library/cache_screen_slot_in_use.asm" ; 0x4081

%include "shared/library/cache_screen_return_zero.asm" ; 0x40c5

cseg_40db equ cache_screen_out_of_ems.cseg1
%include "shared/library/cache_screen_out_of_ems.asm" ; 0x40cb

sound_slots:

    times 84 db 0

load_sound.dos_con_loc1 equ dos_con_loc_KPVS
load_sound.loc1         equ loc_42a0
load_sound.dos_con_loc2 equ dos_con_loc_KOGR
%include "shared/library/load_sound.asm"              ; 0x4156

cseg_4238 equ dos_con_loc_KPVS.cseg1
%include "shared/library/dos_con_loc_KPVS.asm"        ; 0x4228

cseg_4274 equ dos_con_loc_KOGR.cseg1
%include "shared/library/dos_con_loc_KOGR.asm"        ; 0x4264

loc_42ea              equ loc_42a0.loc1
loc_42a0.dos_con_loc1 equ dos_con_loc_KOGR
%include "shared/library/loc_42a0.asm"                ; 0x42a0

%include "shared/library/string_loc_RQON.asm"         ; 0x4300

%include "shared/library/dos_file_loc_VPIN.asm"       ; 0x4319

free_sound.leaf_loc1    equ leaf_loc_PTSI
free_sound.leaf_loc2    equ leaf_loc_VRNL
free_sound.dos_con_loc1 equ dos_con_loc_GOSI
free_sound.leaf_loc3    equ leaf_loc_IQGS
%include "shared/library/free_sound.asm"              ; 0x439a

leaf_loc_PTSI equ leaf_loc_OSUJ
%include "shared/library/leaf_loc_OSUJ.asm"           ; 0x43f7

%include "shared/library/leaf_loc_IHJG.asm"           ; 0x440c

%include "shared/library/leaf_loc_MGRH.asm"           ; 0x4421

%include "shared/library/leaf_loc_USQQ.asm"           ; 0x4436

leaf_loc_VRNL equ leaf_loc_JRKU
%include "shared/library/leaf_loc_JRKU.asm"           ; 0x444b

dos_con_loc_GOSI equ dos_con_loc_GJMS
cseg_448c        equ dos_con_loc_GJMS.cseg1
%include "shared/library/dos_con_loc_GJMS.asm"        ; 0x4461

%include "shared/library/leaf_loc_IQGS.asm"           ; 0x44a3

%include "shared/library/play_sound.asm"              ; 0x4527

%include "shared/library/wait_sound.asm"              ; 0x4596

%include "shared/library/stop_sound.asm"              ; 0x45b2

score_slots:

    times 24 db 0

score_info:
    times 10 db 0
load_score.dos_con_loc1 equ dos_con_loc_SGUQ
load_score.dos_con_loc2 equ dos_con_loc_HPIH
%include "shared/library/load_score.asm"              ; 0x45fb

dos_con_loc_SGUQ equ dos_con_loc_OOVK
cseg_4722        equ dos_con_loc_OOVK.cseg1
%include "shared/library/dos_con_loc_OOVK.asm"        ; 0x4712

cseg_475e equ dos_con_loc_HPIH.cseg1
%include "shared/library/dos_con_loc_HPIH.asm"        ; 0x474e

%include "shared/library/play_score.asm"              ; 0x478a

%include "shared/library/free_score.asm"              ; 0x481f

%include "shared/library/is_music_playing.asm"        ; 0x4866

%include "shared/library/stop_music.asm"              ; 0x487e

%include "shared/library/set_music_tempo_volume.asm"  ; 0x4896

    db 0x00
