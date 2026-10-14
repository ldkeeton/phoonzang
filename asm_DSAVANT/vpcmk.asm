; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpcmk.inc"
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
    dw 0x00f2                                    ; o_magic: overlay signature (0x00f2)
    dw __zres_end                                ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)           ; 0x7023 ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x048c ; o_dsize: initialized data size
    dw 0x0268                                    ; o_bss: uninitialized data size
    dw string_loc_LNMQ - IMAGE_BASE + __zres_end ; 0xbfd3 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_4267 equ 0x4267 + VBASE
string_loc_436e equ 0x436e + VBASE
string_loc_5a60 equ 0x5a60 + VBASE
string_loc_5cb4 equ 0x5cb4 + VBASE
loc_6e5f equ 0x6e5f + VBASE

loc_000e:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    call api_idx_002c_HTOM           ; 0x0014
    mov word [bss_830a], 4           ; 0x0017
    mov ax, 0                        ; 0x001d
    ret                              ; 0x0020
%include "lib/api_idx_0002_UKHK.asm"     ; 0x0021

%include "lib/api_idx_0002_LTOL.asm"     ; 0x0085

%include "lib/api_idx_0008_IGKQ.asm"     ; 0x0104

%include "vpcmk/api_idx_0008_JMRO.asm"     ; 0x02bc

%include "lib/api_idx_0058_LOPH.asm"     ; 0x0935

%include "vpcmk/api_idx_0038_MRUQ.asm"     ; 0x0abb

%include "vpcmk/api_idx_0026_QGVL.asm"     ; 0x11f4

%include "lib/draw_party_slot_letters.asm" ; 0x16ea

%include "vpcmk/api_idx_0004_GIIO.asm"     ; 0x1769

%include "lib/api_idx_0002_PGOV.asm"     ; 0x1819

%include "lib/api_idx_0002_GLLG.asm"     ; 0x1874

%include "vpcmk/api_idx_0010_LUQQ.asm"     ; 0x18b5

%include "vpcmk/api_idx_0002_NSOV.asm"     ; 0x19ab

%include "vpcmk/api_idx_000a_SRST.asm"     ; 0x1a98

%include "vpcmk/api_idx_0054_TMMO.asm"     ; 0x1b40

%include "lib/api_idx_0004_VPLS.asm"     ; 0x2090

%include "vpcmk/api_idx_0004_IHOP.asm"     ; 0x2144

%include "vpcmk/api_idx_0004_QION.asm"     ; 0x2273

%include "vpcmk/api_idx_0002_KIMK.asm"     ; 0x24c8

%include "vpcmk/api_idx_002e_UMSL.asm"     ; 0x2582

%include "vpcmk/api_idx_0032_VMQI.asm"     ; 0x26f1

%include "vpcmk/api_idx_0088_IPPO.asm"     ; 0x2c15

%include "vpcmk/api_idx_0004_HOKP.asm"     ; 0x2d63

%include "vpcmk/api_idx_000a_JTUO.asm"     ; 0x2dd4

%include "vpcmk/api_idx_000c_KTPM.asm"     ; 0x2f3f

%include "vpcmk/api_idx_0050_TIRN.asm"     ; 0x3069

%include "vpcmk/api_idx_006e_TRSM.asm"     ; 0x3d59

%include "vpcmk/api_idx_0002_NIVJ.asm"     ; 0x402d

%include "vpcmk/api_idx_0006_PGVT.asm"     ; 0x4081

%include "vpcmk/api_idx_0002_TTLK.asm"     ; 0x4291

%include "vpcmk/api_idx_007a_PLMI.asm"     ; 0x43bb

%include "vpcmk/api_idx_007a_OUNL.asm"     ; 0x4498

%include "vpcmk/api_idx_007c_SUHO.asm"     ; 0x4585

%include "vpcmk/api_idx_006c_PMVV.asm"     ; 0x4697

%include "vpcmk/api_idx_0008_NGUL.asm"     ; 0x4934

%include "vpcmk/api_idx_0002_LVON.asm"     ; 0x4ade

%include "vpcmk/api_idx_004e_TOQI.asm"     ; 0x4b05

%include "vpcmk/api_idx_0006_VRUK.asm"     ; 0x4f00

%include "lib/api_idx_0002_KOUO.asm"     ; 0x4f95

%include "vpcmk/api_idx_0004_MIHU.asm"     ; 0x5087

%include "vpcmk/api_idx_001c_QHOU.asm"     ; 0x5580

%include "vpcmk/api_idx_0002_LPJP.asm"     ; 0x56b0

%include "vpcmk/string_loc_OVJU.asm"       ; 0x5a0b

%include "vpcmk/api_idx_000a_VGVO.asm"     ; 0x5a8a

%include "vpcmk/api_idx_0004_OPUJ.asm"     ; 0x5df5

%include "vpcmk/api_idx_0016_RPII.asm"     ; 0x6083

%include "vpcmk/api_idx_0006_PSVO.asm"     ; 0x60e0

%include "vpcmk/api_idx_0002_MMHU.asm"     ; 0x626e

%include "vpcmk/api_idx_0002_UOTV.asm"     ; 0x65fc

%include "vpcmk/api_idx_0014_OTOR.asm"     ; 0x6673

%include "vpcmk/api_idx_002c_THSG.asm"     ; 0x6738

%include "vpcmk/api_idx_0018_GPMP.asm"     ; 0x67ff

%include "vpcmk/api_idx_0006_GMOS.asm"     ; 0x6887

%include "vpcmk/api_idx_002c_HTOM.asm"     ; 0x6a3f

%include "vpcmk/asm_only/string_loc_LNMQ.asm"       ; 0x6f8c

%include "vpcmk/asm_only/aztec_strcmp.asm"          ; 0x6fca

%include "vpcmk/asm_only/aztec_strncmp.asm"         ; 0x6fe8

loc_701d:
    sub di, byte 2                   ; 0x701d
    scasb                            ; 0x7020
    jne short loc_702a               ; 0x7021
    test al, al                      ; 0x7023
    je short loc_7017                ; 0x7025
    mov al, ah                       ; 0x7027
    scasb                            ; 0x7029
loc_702a:
    sbb ax, ax                       ; 0x702a
    js short loc_7019                ; 0x702c
    inc ax                           ; 0x702e
    jmp short loc_7019               ; 0x702f
__zdata_start:

    db 'PCFILE.DBS', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x25, 0x20, 0x00
    db '1111111110', 0
    db '11100000', 0
    db '000000', 0
    db '1111000000', 0
    db '1000111100', 0
    db '11101000', 0
    db '000000', 0
    db '1111000010', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101111', 0
    db '000000', 0
    db '1111000000', 0
    db '1111111110', 0
    db '11100111', 0
    db '000000', 0
    db '1111010000', 0
    db '1001110000', 0
    db '11100000', 0
    db '000000', 0
    db '1111010000', 0
    db '1111111110', 0
    db '11111111', 0
    db '000000', 0
    db '1111000010', 0
    db '1001111000', 0
    db '11101000', 0
    db '000000', 0
    db '1111000100', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111001000', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101010', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101000', 0
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
    db 0x2a, 0x2a, 0x2a, 0x00
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
    db 'ACBCBCCCCHCHBA', 0
    db '02222232112230', 0
    db 'ACCCCDCCCHHKDA', 0
    db '02222232123230', 0
    db 'ACCCCDCCCIFKEA', 0
    db '02222232121230', 0
    db 'ACHCHDCCCHFIDA', 0
    db '02323232111230', 0
    db 'ACKCHHGCCIECBA', 0
    db '02322322121220', 0
    db 'ACBCCDECCEEEGA', 0
    db '02121212111330', 0
    db 'ACICIBHCCFKFFA', 0
    db '02323112113330', 0
    db 'ACECCEGCCIFKFA', 0
    db '02222222122220', 0
    db 'ACKCGDHCCFKIDA', 0
    db '02322212112320', 0
    db 'ACHCHHGCCCECHA', 0
    db '02322322112230', 0
    db 'PORTDATA.VGA', 0
    db 'PCFILE.DBS', 0
    db 'PCFILE.DBS', 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0


__zimage_end:
