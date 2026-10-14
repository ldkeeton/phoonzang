; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpcvw.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0x9836 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x0348 ; o_dsize: initialized data size
    dw 0x0310                             ; o_bss: uninitialized data size
    dw loc_97ee - IMAGE_BASE + __zres_end ; 0xe835 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_23fd equ 0x23fd + VBASE
loc_2924 equ 0x2924 + VBASE
loc_2933 equ 0x2933 + VBASE
loc_293d equ 0x293d + VBASE
loc_2940 equ 0x2940 + VBASE
loc_2941 equ 0x2941 + VBASE
loc_294c equ 0x294c + VBASE
loc_297d equ 0x297d + VBASE
loc_29b2 equ 0x29b2 + VBASE
loc_29b3 equ 0x29b3 + VBASE
loc_29c3 equ 0x29c3 + VBASE
loc_29d6 equ 0x29d6 + VBASE
loc_29e4 equ 0x29e4 + VBASE
loc_7736 equ 0x7736 + VBASE
loc_7738 equ 0x7738 + VBASE

loc_000e:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 0x11   ; 0x0014
    jne short @..loc_000e.l1         ; 0x0019
    push word [bss_8af0]             ; 0x001b
    call api_idx_0014                ; 0x001f
    pop cx                           ; 0x0022
@..loc_000e.l1:
    mov ax, 0                        ; 0x0023
    ret                              ; 0x0026
%include "lib/api_idx_0002.asm"          ; 0x0027

%include "lib/api_idx_000e.asm"          ; 0x008b

%include "vpcvw/asm_only/api_idx_0012.asm"          ; 0x014b

%include "vpcvw/api_idx_0004.asm"          ; 0x02c7

%include "vpcvw/api_idx_000c.asm"          ; 0x037b

%include "vpcvw/api_idx_0012_2.asm"        ; 0x0521

%include "vpcvw/api_idx_0012_3.asm"        ; 0x0781

%include "vpcvw/api_idx_0004_2.asm"        ; 0x09a1

%include "vpcvw/api_idx_0012_4.asm"        ; 0x0a96

%include "lib/api_idx_000c_2.asm"        ; 0x0cd6

%include "vpcvw/api_idx_0004_3.asm"        ; 0x0d55

%include "lib/api_idx_0002_2.asm"        ; 0x0e05

%include "lib/api_idx_0002_3.asm"        ; 0x0e60

%include "lib/api_idx_0010.asm"          ; 0x0ea1

%include "vpcvw/api_idx_000a.asm"          ; 0x0f9e

%include "vpcvw/asm_only/api_idx_007c.asm"          ; 0x1046

%include "vpcvw/api_idx_009e.asm"          ; 0x1894

%include "vpcvw/api_idx_0008.asm"          ; 0x1b17

%include "vpcvw/asm_only/api_idx_0008_2.asm"        ; 0x21fd

%include "vpcvw/api_idx_0004_4.asm"        ; 0x297e

%include "vpcvw/api_idx_000a_2.asm"        ; 0x29ef

%include "vpcvw/api_idx_000c_3.asm"        ; 0x2b5a

%include "vpcvw/api_idx_0050.asm"          ; 0x2c84

%include "vpcvw/api_idx_0004_5.asm"        ; 0x3974

%include "vpcvw/api_idx_0004_6.asm"        ; 0x3aac

%include "vpcvw/api_idx_0084.asm"          ; 0x3b66

%include "vpcvw/api_idx_0004_7.asm"        ; 0x3c18

%include "vpcvw/api_idx_0056.asm"          ; 0x3c7b

%include "vpcvw/api_idx_009e_2.asm"        ; 0x3cfe

%include "vpcvw/api_idx_0084_2.asm"        ; 0x40ef

%include "vpcvw/api_idx_0048.asm"          ; 0x4253

%include "vpcvw/api_idx_004e.asm"          ; 0x42e3

%include "vpcvw/api_idx_0002_4.asm"        ; 0x435b

%include "vpcvw/api_idx_0002_5.asm"        ; 0x4421

%include "vpcvw/api_idx_000e_2.asm"        ; 0x4505

%include "vpcvw/api_idx_0002_6.asm"        ; 0x4573

%include "vpcvw/leaf_loc_4589.asm"         ; 0x4589

%include "vpcvw/leaf_loc_45a3.asm"         ; 0x45a3

%include "vpcvw/leaf_loc_45ab.asm"         ; 0x45ab

%include "vpcvw/leaf_loc_45b2.asm"         ; 0x45b2

%include "vpcvw/api_idx_0056_2.asm"        ; 0x468b

%include "vpcvw/asm_only/api_idx_0004_8.asm"        ; 0x4793

%include "vpcvw/api_idx_0048_2.asm"        ; 0x4a1c

%include "vpcvw/asm_only/api_idx_0072.asm"          ; 0x4a3f

%include "vpcvw/api_idx_0002_7.asm"        ; 0x5006

%include "vpcvw/api_idx_0010_2.asm"        ; 0x5050

%include "vpcvw/api_idx_0008_3.asm"        ; 0x539e

%include "vpcvw/api_idx_0004_9.asm"        ; 0x542a

%include "vpcvw/asm_only/api_idx_00c2.asm"          ; 0x54fb

%include "vpcvw/api_idx_0014.asm"          ; 0x616c

%include "lib/api_idx_002a.asm"          ; 0x6977

%include "vpcvw/asm_only/api_idx_0080.asm"          ; 0x6a20

%include "vpcvw/api_idx_0004_10.asm"       ; 0x6c47

%include "vpcvw/api_idx_004c.asm"          ; 0x6d13

%include "vpcvw/api_idx_009a.asm"          ; 0x6f62

%include "vpcvw/api_idx_001a.asm"          ; 0x706c

%include "vpcvw/leaf_loc_7349.asm"         ; 0x7349

%include "vpcvw/leaf_loc_7375.asm"         ; 0x7375

%include "vpcvw/leaf_loc_738d.asm"         ; 0x738d

%include "vpcvw/leaf_loc_73a8.asm"         ; 0x73a8

%include "vpcvw/io_loc_73c5.asm"           ; 0x73c5

%include "vpcvw/io_loc_73dd.asm"           ; 0x73dd

%include "vpcvw/io_loc_73f9.asm"           ; 0x73f9

%include "vpcvw/io_loc_7410.asm"           ; 0x7410

%include "vpcvw/io_loc_7415.asm"           ; 0x7415

%include "vpcvw/api_idx_0004_11.asm"       ; 0x82da

%include "vpcvw/api_idx_0004_12.asm"       ; 0x8421

%include "vpcvw/api_idx_0002_8.asm"        ; 0x8676

%include "lib/api_idx_0058.asm"          ; 0x8730

%include "vpcvw/api_idx_0008_4.asm"        ; 0x88b6

%include "vpcvw/api_idx_0026.asm"          ; 0x8a6e

%include "vpcvw/api_idx_0002_9.asm"        ; 0x8f64

%include "vpcvw/api_idx_0002_10.asm"       ; 0x8fb8

%include "vpcvw/api_idx_0002_11.asm"       ; 0x91b2

%include "vpcvw/api_idx_0030.asm"          ; 0x92b3

%include "vpcvw/api_idx_0016.asm"          ; 0x9434

%include "vpcvw/api_idx_0022.asm"          ; 0x9491

%include "vpcvw/api_idx_000e_3.asm"        ; 0x96d5

%include "vpcvw/asm_only/api_idx_0018.asm"          ; 0x9740

%include "vpcvw/asm_only/leaf_loc_982c.asm"         ; 0x982c


    db 0x31, 0x30, 0x30, 0x30, 0x00
    db '000000', 0
    db '1111000011', 0
    db '1001111101', 0
    db '11101001', 0
    db '000000', 0
    db '1111000101', 0
    db '1111111111', 0
    db '11100111', 0
    db '000000', 0
    db '1111010001', 0
    db 'V.$$$', 0
    db 'MAAAAAAA', 0
    db 'AMAAAAAA', 0
    db 'AAMAAAIA', 0
    db 'AAAAMIAA', 0
    db 'KIILKIIA', 0
    db 'ANAANAAA', 0
    db 'AKAAMIMA', 0
    db 'KOAOAAKA', 0
    db 'KALLKLIA', 0
    db 'APPAAAIA', 0
    db 'MJMMJJOA', 0
    db 'MLAJMOIA', 0
    db 'NINAKNIA', 0
    db 'MKKMMMAA', 0
    db 'JIIJJIIA', 0
    db 'HKKHJJIA', 0
    db 'LGKMHHHA', 0
    db 'KHNKIGGA', 0
    db 'IHGJKHNA', 0
    db 'FLGGKOMA', 0
    db 'MFFOIKDA', 0
    db 'KHGMKIGA', 0
    db 'HKHHKMKA', 0
    db 'IGMKIIKA', 0
    db 'KKGKHHJA', 0
    db 'PORTDATA.VGA', 0
    times 10 db 0


__zimage_end:
