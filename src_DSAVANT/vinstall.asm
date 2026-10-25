; auto-generated
bits 16
%ifndef VBASE
%ifdef ELF_BUILD
VBASE equ 0
%else
VBASE equ -0x0200
%endif
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0200 + VBASE
%endif

%ifndef ELF_BUILD
    ; DOS MZ executable header (512 bytes)
    db "MZ"                                       ; e_magic: DOS MZ signature
    dw (__zimage_end - $$) % 512                  ; 0x0014 ; e_cblp: bytes in final 512-byte page (0 means full)
    dw ((__zimage_end - $$) + 511) // 512         ; 0x0031 ; e_cp: total 512-byte pages in the file
    dw 0x0001                                     ; e_crlc: number of relocation entries
    dw 0x0020                                     ; e_cparhdr: header size in 16-byte paragraphs
    dw ((__zstack_top - __zimage_end) + 15) // 16 ; 0x045d ; e_minalloc: minimum extra memory paragraphs
    dw 0xffff                                     ; e_maxalloc: maximum extra memory paragraphs
    dw __zdseg_para                               ; 0x038e ; e_ss: initial stack segment, relative to load module
    dw __zstack_top - __zdseg_start               ; 0x6afe ; e_sp: initial stack pointer
    dw 0x0000                                     ; e_csum: file checksum (often unused)
    dw aztec_begin - IMAGE_BASE                   ; 0x33d2 ; e_ip: initial instruction pointer
    dw 0x0000                                     ; e_cs: initial code segment, relative to load module
    dw 0x0020                                     ; e_lfarlc: file offset of relocation table
    dw 0x0000                                     ; e_ovno: overlay number (0 for main executable)

    times 4 db 0
    dw __zinsn_aztec_begin + 0x1 - IMAGE_BASE, 0x0000 ; 0x33d3 ; relocation: segment word DOS patches
    times 476 db 0
%endif

_lowwater equ __z_lowwater - __zdseg_start
__zbss_size equ __zbss_end - __zimage_end

%include "vinstall/loc_ILSL.asm"           ; 0x0200

%include "vinstall/loc_MPOT.asm"           ; 0x026d

%include "vinstall/int_to_str.asm"         ; 0x02b2

%include "vinstall/put_int_at.asm"         ; 0x03b3

%include "vinstall/loc_JTRN.asm"           ; 0x03e1

%include "vinstall/put_text_at.asm"        ; 0x040f

%include "vinstall/loc_STSN.asm"           ; 0x0429

dseg_1444 equ __zdseg_1444 - __zdseg_start
%include "vinstall/loc_MSKU.asm"           ; 0x0443

%include "vinstall/loc_GPOQ.asm"           ; 0x05b6

%include "vinstall/loc_NPPN.asm"           ; 0x06f1

%include "vinstall/loc_JJNP.asm"           ; 0x0807

%include "vinstall/parse_long.asm"         ; 0x0815

dseg_144b equ __zdseg_144b - __zdseg_start
%include "vinstall/loc_NOVO.asm"           ; 0x0823

bss_2644 equ __zbss_2644 - __zdseg_start
bss_2645 equ __zbss_2645 - __zdseg_start
bss_2646 equ __zbss_2646 - __zdseg_start
bss_2647 equ __zbss_2647 - __zdseg_start
%include "vinstall/loc_VRLL.asm"           ; 0x0927

dseg_144f equ __zdseg_144f - __zdseg_start
dseg_149f equ __zdseg_149f - __zdseg_start
bss_2648  equ __zbss_2648 - __zdseg_start
%include "vinstall/loc_PUJU.asm"           ; 0x0944

dseg_14ef equ __zdseg_14ef - __zdseg_start
dseg_14fc equ __zdseg_14fc - __zdseg_start
dseg_151a equ __zdseg_151a - __zdseg_start
dseg_152c equ __zdseg_152c - __zdseg_start
dseg_155e equ __zdseg_155e - __zdseg_start
dseg_1560 equ __zdseg_1560 - __zdseg_start
bss_2698  equ __zbss_2698 - __zdseg_start
bss_269a  equ __zbss_269a - __zdseg_start
bss_296a  equ __zbss_296a - __zdseg_start
bss_297e  equ __zbss_297e - __zdseg_start
bss_2992  equ __zbss_2992 - __zdseg_start
bss_29a6  equ __zbss_29a6 - __zdseg_start
bss_29ba  equ __zbss_29ba - __zdseg_start
bss_29bb  equ __zbss_29bb - __zdseg_start
bss_29bc  equ __zbss_29bc - __zdseg_start
bss_29d0  equ __zbss_29d0 - __zdseg_start
bss_29d1  equ __zbss_29d1 - __zdseg_start
bss_29d2  equ __zbss_29d2 - __zdseg_start
bss_29d4  equ __zbss_29d4 - __zdseg_start
bss_29d5  equ __zbss_29d5 - __zdseg_start
bss_29d6  equ __zbss_29d6 - __zdseg_start
bss_29d7  equ __zbss_29d7 - __zdseg_start
bss_29d8  equ __zbss_29d8 - __zdseg_start
bss_29da  equ __zbss_29da - __zdseg_start
bss_29dc  equ __zbss_29dc - __zdseg_start
bss_29dd  equ __zbss_29dd - __zdseg_start
bss_29df  equ __zbss_29df - __zdseg_start
bss_29e1  equ __zbss_29e1 - __zdseg_start
bss_29e2  equ __zbss_29e2 - __zdseg_start
bss_29e3  equ __zbss_29e3 - __zdseg_start
%include "vinstall/loc_QKVM.asm"           ; 0x0a0f

bss_29e6 equ __zbss_29e6 - __zdseg_start
bss_29e8 equ __zbss_29e8 - __zdseg_start
bss_29ea equ __zbss_29ea - __zdseg_start
bss_29ec equ __zbss_29ec - __zdseg_start
%include "vinstall/loc_UTOL.asm"           ; 0x0c21

%include "vinstall/loc_HUKT.asm"           ; 0x0cd6

sound_device_names equ __zsound_device_names - __zdseg_start
%include "vinstall/next_sound_device.asm"  ; 0x0d12

dseg_156d equ __zdseg_156d - __zdseg_start
%include "vinstall/loc_PQHH.asm"           ; 0x0d3f

dseg_15bd equ __zdseg_15bd - __zdseg_start
dseg_15cc equ __zdseg_15cc - __zdseg_start
dseg_15d8 equ __zdseg_15d8 - __zdseg_start
dseg_15e1 equ __zdseg_15e1 - __zdseg_start
dseg_15e9 equ __zdseg_15e9 - __zdseg_start
dseg_15f7 equ __zdseg_15f7 - __zdseg_start
%include "vinstall/loc_ONOP.asm"           ; 0x0dda

dseg_1609 equ __zdseg_1609 - __zdseg_start
dseg_1615 equ __zdseg_1615 - __zdseg_start
dseg_1621 equ __zdseg_1621 - __zdseg_start
dseg_162e equ __zdseg_162e - __zdseg_start
dseg_1630 equ __zdseg_1630 - __zdseg_start
dseg_1634 equ __zdseg_1634 - __zdseg_start
dseg_1636 equ __zdseg_1636 - __zdseg_start
dseg_163a equ __zdseg_163a - __zdseg_start
dseg_163c equ __zdseg_163c - __zdseg_start
dseg_1657 equ __zdseg_1657 - __zdseg_start
dseg_2357 equ __zdseg_2357 - __zdseg_start
bss_29ee  equ __zbss_29ee - __zdseg_start
%include "vinstall/loc_TSLJ.asm"           ; 0x0ed8

dseg_166c equ __zdseg_166c - __zdseg_start
dseg_166f equ __zdseg_166f - __zdseg_start
dseg_1672 equ __zdseg_1672 - __zdseg_start
dseg_1675 equ __zdseg_1675 - __zdseg_start
dseg_1676 equ __zdseg_1676 - __zdseg_start
dseg_1679 equ __zdseg_1679 - __zdseg_start
dseg_167a equ __zdseg_167a - __zdseg_start
dseg_167d equ __zdseg_167d - __zdseg_start
dseg_167e equ __zdseg_167e - __zdseg_start
dseg_1681 equ __zdseg_1681 - __zdseg_start
%include "vinstall/leaf_loc_UVRI.asm"      ; 0x10a4

%include "vinstall/loc_RJRG.asm"           ; 0x1155

dseg_1689 equ __zdseg_1689 - __zdseg_start
dseg_16af equ __zdseg_16af - __zdseg_start
dseg_16c2 equ __zdseg_16c2 - __zdseg_start
dseg_16e8 equ __zdseg_16e8 - __zdseg_start
dseg_16fa equ __zdseg_16fa - __zdseg_start
dseg_1720 equ __zdseg_1720 - __zdseg_start
%include "vinstall/loc_HSPL.asm"           ; 0x11ba

dseg_0004          equ __zdseg_0004 - __zdseg_start
dseg_0006          equ __zdseg_0006 - __zdseg_start
; sound_device_names equ __zsound_device_names - __zdseg_start
dseg_1732          equ __zdseg_1732 - __zdseg_start
dseg_1767          equ __zdseg_1767 - __zdseg_start
dseg_179c          equ __zdseg_179c - __zdseg_start
dseg_17d1          equ __zdseg_17d1 - __zdseg_start
dseg_1806          equ __zdseg_1806 - __zdseg_start
dseg_183b          equ __zdseg_183b - __zdseg_start
dseg_183d          equ __zdseg_183d - __zdseg_start
dseg_1882          equ __zdseg_1882 - __zdseg_start
dseg_18b2          equ __zdseg_18b2 - __zdseg_start
dseg_18f6          equ __zdseg_18f6 - __zdseg_start
dseg_1911          equ __zdseg_1911 - __zdseg_start
dseg_1957          equ __zdseg_1957 - __zdseg_start
dseg_199e          equ __zdseg_199e - __zdseg_start
dseg_19e4          equ __zdseg_19e4 - __zdseg_start
dseg_1a2b          equ __zdseg_1a2b - __zdseg_start
dseg_1a72          equ __zdseg_1a72 - __zdseg_start
dseg_1a91          equ __zdseg_1a91 - __zdseg_start
dseg_1a92          equ __zdseg_1a92 - __zdseg_start
dseg_1ac1          equ __zdseg_1ac1 - __zdseg_start
dseg_1af6          equ __zdseg_1af6 - __zdseg_start
dseg_1b2b          equ __zdseg_1b2b - __zdseg_start
dseg_1b60          equ __zdseg_1b60 - __zdseg_start
dseg_1b95          equ __zdseg_1b95 - __zdseg_start
dseg_1bca          equ __zdseg_1bca - __zdseg_start
dseg_1bcd          equ __zdseg_1bcd - __zdseg_start
dseg_1bce          equ __zdseg_1bce - __zdseg_start
dseg_1c1b          equ __zdseg_1c1b - __zdseg_start
dseg_1c68          equ __zdseg_1c68 - __zdseg_start
dseg_1c7b          equ __zdseg_1c7b - __zdseg_start
dseg_1c8e          equ __zdseg_1c8e - __zdseg_start
dseg_1cc7          equ __zdseg_1cc7 - __zdseg_start
dseg_1d0a          equ __zdseg_1d0a - __zdseg_start
dseg_1d4d          equ __zdseg_1d4d - __zdseg_start
dseg_1d58          equ __zdseg_1d58 - __zdseg_start
dseg_1d63          equ __zdseg_1d63 - __zdseg_start
dseg_1d6b          equ __zdseg_1d6b - __zdseg_start
dseg_1d73          equ __zdseg_1d73 - __zdseg_start
dseg_1d9f          equ __zdseg_1d9f - __zdseg_start
dseg_1dc7          equ __zdseg_1dc7 - __zdseg_start
dseg_1df7          equ __zdseg_1df7 - __zdseg_start
dseg_1e28          equ __zdseg_1e28 - __zdseg_start
dseg_1e50          equ __zdseg_1e50 - __zdseg_start
dseg_1e5d          equ __zdseg_1e5d - __zdseg_start
dseg_1e69          equ __zdseg_1e69 - __zdseg_start
dseg_1e77          equ __zdseg_1e77 - __zdseg_start
dseg_1e84          equ __zdseg_1e84 - __zdseg_start
dseg_1e90          equ __zdseg_1e90 - __zdseg_start
dseg_1ea4          equ __zdseg_1ea4 - __zdseg_start
dseg_1ecd          equ __zdseg_1ecd - __zdseg_start
dseg_1efc          equ __zdseg_1efc - __zdseg_start
dseg_1f1e          equ __zdseg_1f1e - __zdseg_start
dseg_1f47          equ __zdseg_1f47 - __zdseg_start
dseg_1f7c          equ __zdseg_1f7c - __zdseg_start
dseg_1fa5          equ __zdseg_1fa5 - __zdseg_start
dseg_1fce          equ __zdseg_1fce - __zdseg_start
dseg_200a          equ __zdseg_200a - __zdseg_start
dseg_204c          equ __zdseg_204c - __zdseg_start
dseg_2062          equ __zdseg_2062 - __zdseg_start
dseg_207b          equ __zdseg_207b - __zdseg_start
dseg_208f          equ __zdseg_208f - __zdseg_start
dseg_20a8          equ __zdseg_20a8 - __zdseg_start
dseg_20a9          equ __zdseg_20a9 - __zdseg_start
dseg_20c0          equ __zdseg_20c0 - __zdseg_start
dseg_20d2          equ __zdseg_20d2 - __zdseg_start
dseg_2112          equ __zdseg_2112 - __zdseg_start
dseg_2113          equ __zdseg_2113 - __zdseg_start
dseg_2114          equ __zdseg_2114 - __zdseg_start
dseg_2116          equ __zdseg_2116 - __zdseg_start
dseg_2118          equ __zdseg_2118 - __zdseg_start
dseg_211a          equ __zdseg_211a - __zdseg_start
dseg_211c          equ __zdseg_211c - __zdseg_start
dseg_2127          equ __zdseg_2127 - __zdseg_start
dseg_2132          equ __zdseg_2132 - __zdseg_start
dseg_2133          equ __zdseg_2133 - __zdseg_start
dseg_213e          equ __zdseg_213e - __zdseg_start
dseg_213f          equ __zdseg_213f - __zdseg_start
dseg_214a          equ __zdseg_214a - __zdseg_start
dseg_214b          equ __zdseg_214b - __zdseg_start
dseg_2156          equ __zdseg_2156 - __zdseg_start
dseg_2157          equ __zdseg_2157 - __zdseg_start
dseg_2162          equ __zdseg_2162 - __zdseg_start
dseg_216d          equ __zdseg_216d - __zdseg_start
dseg_216e          equ __zdseg_216e - __zdseg_start
dseg_2179          equ __zdseg_2179 - __zdseg_start
dseg_217a          equ __zdseg_217a - __zdseg_start
dseg_2185          equ __zdseg_2185 - __zdseg_start
dseg_2186          equ __zdseg_2186 - __zdseg_start
dseg_2191          equ __zdseg_2191 - __zdseg_start
dseg_2192          equ __zdseg_2192 - __zdseg_start
dseg_219d          equ __zdseg_219d - __zdseg_start
dseg_219e          equ __zdseg_219e - __zdseg_start
dseg_21a9          equ __zdseg_21a9 - __zdseg_start
dseg_21b4          equ __zdseg_21b4 - __zdseg_start
dseg_21b5          equ __zdseg_21b5 - __zdseg_start
dseg_21c0          equ __zdseg_21c0 - __zdseg_start
dseg_21c1          equ __zdseg_21c1 - __zdseg_start
dseg_21cc          equ __zdseg_21cc - __zdseg_start
dseg_21cd          equ __zdseg_21cd - __zdseg_start
dseg_21d8          equ __zdseg_21d8 - __zdseg_start
dseg_21e3          equ __zdseg_21e3 - __zdseg_start
dseg_21e4          equ __zdseg_21e4 - __zdseg_start
dseg_21ef          equ __zdseg_21ef - __zdseg_start
dseg_21f0          equ __zdseg_21f0 - __zdseg_start
dseg_21fb          equ __zdseg_21fb - __zdseg_start
dseg_2206          equ __zdseg_2206 - __zdseg_start
dseg_2207          equ __zdseg_2207 - __zdseg_start
dseg_2212          equ __zdseg_2212 - __zdseg_start
dseg_2213          equ __zdseg_2213 - __zdseg_start
dseg_221e          equ __zdseg_221e - __zdseg_start
dseg_221f          equ __zdseg_221f - __zdseg_start
dseg_222a          equ __zdseg_222a - __zdseg_start
dseg_2235          equ __zdseg_2235 - __zdseg_start
dseg_2236          equ __zdseg_2236 - __zdseg_start
dseg_2241          equ __zdseg_2241 - __zdseg_start
dseg_2242          equ __zdseg_2242 - __zdseg_start
dseg_224d          equ __zdseg_224d - __zdseg_start
dseg_224e          equ __zdseg_224e - __zdseg_start
dseg_2259          equ __zdseg_2259 - __zdseg_start
dseg_225a          equ __zdseg_225a - __zdseg_start
dseg_2265          equ __zdseg_2265 - __zdseg_start
dseg_2270          equ __zdseg_2270 - __zdseg_start
dseg_2271          equ __zdseg_2271 - __zdseg_start
dseg_227e          equ __zdseg_227e - __zdseg_start
dseg_22af          equ __zdseg_22af - __zdseg_start
dseg_22e3          equ __zdseg_22e3 - __zdseg_start
; bss_2648           equ __zbss_2648 - __zdseg_start
; bss_29e6           equ __zbss_29e6 - __zdseg_start
; bss_29e8           equ __zbss_29e8 - __zdseg_start
; bss_29ea           equ __zbss_29ea - __zdseg_start
; bss_29ec           equ __zbss_29ec - __zdseg_start
bss_29f0           equ __zbss_29f0 - __zdseg_start
bss_2af0           equ __zbss_2af0 - __zdseg_start
bss_2af2           equ __zbss_2af2 - __zdseg_start
bss_2af4           equ __zbss_2af4 - __zdseg_start
bss_2af6           equ __zbss_2af6 - __zdseg_start
bss_2af8           equ __zbss_2af8 - __zdseg_start
bss_2afa           equ __zbss_2afa - __zdseg_start
%include "vinstall/main.asm"               ; 0x12b5

%include "vinstall/data/cseg_2479.asm"     ; 0x2479

%include "vinstall/bios_video_loc_GGHN.asm" ; 0x247a

%include "vinstall/bios_mouse_loc_JHVQ.asm" ; 0x2501

%include "vinstall/dos_con_in_noecho.asm"  ; 0x2521

; bss_2647 equ __zbss_2647 - __zdseg_start
%include "vinstall/bios_video_loc_RSQH.asm" ; 0x252e

%include "vinstall/bios_set_cursor.asm"    ; 0x2551

; bss_2645 equ __zbss_2645 - __zdseg_start
%include "vinstall/bios_video_loc_HMPN.asm" ; 0x25d3

; bss_2644 equ __zbss_2644 - __zdseg_start
%include "vinstall/bios_put_text.asm"      ; 0x2621

%include "vinstall/bios_video_loc_VJJP.asm" ; 0x2720

%include "vinstall/bios_video_loc_IVQL.asm" ; 0x2733

ctp_ equ __zctp_ - __zdseg_start
%include "vinstall/aztec_atoi.asm"         ; 0x2806

; ctp_ equ __zctp_ - __zdseg_start
%include "vinstall/aztec_atol.asm"         ; 0x2877

%include "vinstall/loc_NJNG.asm"           ; 0x2908

dseg_230a equ __zdseg_230a - __zdseg_start
%include "vinstall/aztec_fexecv.asm"       ; 0x291c

%include "vinstall/aztec_fcbinit.asm"      ; 0x29d9

errno equ __zerrno - __zdseg_start
%include "vinstall/aztec_mkdir.asm"        ; 0x29fe

dseg_002e equ __zstr_0025 - __zdseg_start + 0x0009
dseg_0030 equ __zstr_0025 - __zdseg_start + 0x000b
env       equ __zenv - __zdseg_start
cline     equ __zcline - __zdseg_start
fcb1      equ __zfcb1 - __zdseg_start
fcb2      equ __zfcb2 - __zdseg_start
; errno     equ __zerrno - __zdseg_start
%include "vinstall/aztec_fexec.asm"        ; 0x2a23

%include "vinstall/aztec_wait.asm"         ; 0x2a9d

%include "shared/aztec/aztec_strcat.asm"       ; 0x2aa6

%include "shared/aztec/aztec_strcpy.asm"       ; 0x2add

%include "shared/aztec/aztec_strncpy.asm"      ; 0x2b09

%include "vinstall/aztec_sysint.asm"       ; 0x2b31

%include "vinstall/aztec_toupper.asm"      ; 0x2bb2

modes equ __zmodes - __zdseg_start
; errno equ __zerrno - __zdseg_start
%include "vinstall/aztec_fopen.asm"        ; 0x2bda

%include "vinstall/aztec_printf.asm"       ; 0x2c62

Cbuffs equ __zCbuffs - __zdseg_start
%include "vinstall/aztec_putchar.asm"      ; 0x2c7a

%include "vinstall/aztec_aputc.asm"        ; 0x2c8e

; Cbuffs equ __zCbuffs - __zdseg_start
cls_   equ __zcls_ - __zdseg_start
%include "vinstall/aztec_putc.asm"         ; 0x2cc1

; Cbuffs equ __zCbuffs - __zdseg_start
%include "vinstall/aztec_getbuff.asm"      ; 0x2e45

endmarker equ __zendmarker - __zdseg_start
keep      equ __zbss_2534 - __zdseg_start
current   equ __zbss_2536 - __zdseg_start
first     equ __zbss_2538 - __zdseg_start
%include "shared/aztec/aztec_misc_lmalloc.asm" ; 0x2eac

; first equ __zbss_2538 - __zdseg_start
%include "shared/aztec/aztec_format.asm"       ; 0x303e

; errno  equ __zerrno - __zdseg_start
_ioflg equ __z_ioflg - __zdseg_start
%include "shared/aztec/aztec_open.asm"         ; 0x336a

%include "shared/aztec/aztec_lsubs.asm"        ; 0x3417

%include "shared/aztec/aztec_strcmp.asm"       ; 0x3508

%include "shared/aztec/aztec_strlen.asm"       ; 0x356f

; errno equ __zerrno - __zdseg_start
%include "shared/aztec/aztec_sys.asm"          ; 0x358c

psp_top_of_memory equ 0x0002
psp_env_segment   equ 0x002c
psp_cmd_tail_len  equ 0x0080
aztec_MEMRY       equ __zaztec_MEMRY - __zdseg_start
_dsval            equ __z_dsval - __zdseg_start
_csval            equ __z_csval - __zdseg_start
_mbot             equ __z_mbot - __zdseg_start
_sbot             equ __z_sbot - __zdseg_start
_mtop             equ __z_mtop - __zdseg_start
_PSP              equ __z_PSP - __zdseg_start
bad8087           equ __zbad8087 - __zdseg_start
_STKSIZ           equ __z_STKSIZ - __zdseg_start
_STKRED           equ __z_STKRED - __zdseg_start
_HEAPSIZ          equ __z_HEAPSIZ - __zdseg_start
_STKLOW           equ __z_STKLOW - __zdseg_start
_Uorg             equ __zbss_2534 - __zdseg_start
__zdseg_end       equ (__zimage_end - __zdseg_start) + __zbss_size
%include "shared/aztec/aztec_sbegin.asm"       ; 0x35ce

; cls_                  equ __zcls_ - __zdseg_start
aztec_croot_empty_str equ __zaztec_croot_empty_str - __zdseg_start
; _ioflg                equ __z_ioflg - __zdseg_start
Argc                  equ __zbss_253a - __zdseg_start
Argv                  equ __zbss_253c - __zdseg_start
%include "shared/aztec/aztec_croot.asm"        ; 0x373b

%include "shared/aztec/aztec_fltstub.asm"      ; 0x381d

; errno  equ __zerrno - __zdseg_start
; _ioflg equ __z_ioflg - __zdseg_start
_ttrd  equ __z_ttrd - __zdseg_start
_ttwr  equ __z_ttwr - __zdseg_start
%include "shared/aztec/aztec_io.asm"           ; 0x381f

_Eol                equ __z_Eol - __zdseg_start
aztec_tty_wr_crbuf  equ __zaztec_tty_wr_crbuf - __zdseg_start
aztec_tty_rd_buffer equ __zbss_253e - __zdseg_start
aztec_tty_rd_bp     equ __zbss_2642 - __zdseg_start
_TTrem              equ __zbss_2afc - __zdseg_start
%include "shared/aztec/aztec_ttyio.asm"        ; 0x38d9

%include "shared/aztec/aztec_movmem.asm"       ; 0x39a0

%include "shared/aztec/aztec_isatty.asm"       ; 0x39e5

; aztec_MEMRY equ __zaztec_MEMRY - __zdseg_start
; errno       equ __zerrno - __zdseg_start
; _mbot       equ __z_mbot - __zdseg_start
; _sbot       equ __z_sbot - __zdseg_start
; _mtop       equ __z_mtop - __zdseg_start
; _PSP        equ __z_PSP - __zdseg_start
; _STKRED     equ __z_STKRED - __zdseg_start
; _STKLOW     equ __z_STKLOW - __zdseg_start
%include "shared/aztec/aztec_ssbrk.asm"        ; 0x3a05


; End of host resident code
; address, o_corg in an overlay header).
__zres_end equ ($ - $$) + VBASE
%if ($ - $$) > 0x3ae0
    align 16, db 0
    __zdseg_para equ ($ - $$ - 0x200) / 16
%else
    times (0x3ae0 - ($ - $$)) db 0 ; 0xe
    __zdseg_para equ (0x3ae0 - 0x200) / 16
%endif
__zdseg_start:
dseg_000e equ __zdseg_000e - __zdseg_start
dseg_0025 equ __zdseg_0025 - __zdseg_start
dseg_003c equ __zdseg_003c - __zdseg_start
dseg_0053 equ __zdseg_0053 - __zdseg_start
dseg_006a equ __zdseg_006a - __zdseg_start
dseg_0081 equ __zdseg_0081 - __zdseg_start
dseg_009c equ __zdseg_009c - __zdseg_start
dseg_00a0 equ __zdseg_00a0 - __zdseg_start
%include "vinstall/data/dseg_0000.asm"     ; 0x3ae0

dseg_00b4 equ __zdseg_00b4 - __zdseg_start
dseg_00c8 equ __zdseg_00c8 - __zdseg_start
dseg_00dc equ __zdseg_00dc - __zdseg_start
dseg_00f0 equ __zdseg_00f0 - __zdseg_start
dseg_0104 equ __zdseg_0104 - __zdseg_start
dseg_0118 equ __zdseg_0118 - __zdseg_start
dseg_012c equ __zdseg_012c - __zdseg_start
dseg_0140 equ __zdseg_0140 - __zdseg_start
%include "vinstall/data/sound_device_names.asm" ; 0x3b84

dseg_0158 equ __zdseg_0158 - __zdseg_start
dseg_015c equ __zdseg_015c - __zdseg_start
dseg_016a equ __zdseg_016a - __zdseg_start
dseg_0181 equ __zdseg_0181 - __zdseg_start
dseg_0198 equ __zdseg_0198 - __zdseg_start
dseg_01af equ __zdseg_01af - __zdseg_start
dseg_01c6 equ __zdseg_01c6 - __zdseg_start
%include "vinstall/data/dseg_00b4.asm"     ; 0x3b94

%include "vinstall/data/env.asm"           ; 0x5dee

%include "vinstall/data/cline.asm"         ; 0x5df0

%include "vinstall/data/fcb1.asm"          ; 0x5df4

%include "vinstall/data/fcb2.asm"          ; 0x5df8

%include "vinstall/data/modes.asm"         ; 0x5dfc

%include "vinstall/data/Cbuffs.asm"        ; 0x5e2a

%include "vinstall/data/dseg_2357.asm"     ; 0x5e37

; first equ __zbss_2538 - __zdseg_start
%include "shared/data/endmarker.asm"     ; 0x5f2e

%include "vinstall/data/ctp_.asm"          ; 0x5f32

%include "vinstall/data/dseg_24d3.asm"     ; 0x5fb3

bss_2afe equ __zbss_2afe - __zdseg_start
aztec_MEMRY.bss1 equ bss_2afe
%include "shared/data/aztec_MEMRY.asm"   ; 0x5fb4

%include "shared/data/errno.asm"         ; 0x5fb6

%include "shared/data/dsval.asm"         ; 0x5fb8

%include "shared/data/csval.asm"         ; 0x5fba

%include "shared/data/mbot.asm"          ; 0x5fbc

%include "shared/data/sbot.asm"          ; 0x5fbe

%include "shared/data/mtop.asm"          ; 0x5fc0

%include "shared/data/lowwater.asm"      ; 0x5fc2

%include "shared/data/PSP.asm"           ; 0x5fc4

%include "shared/data/bad8087.asm"       ; 0x5fc6

%include "shared/data/cls_.asm"          ; 0x5fe0

%include "shared/data/aztec_croot_empty_str.asm" ; 0x5fe2

%include "shared/data/stksiz.asm"        ; 0x5ff2

%include "shared/data/ioflg.asm"         ; 0x5ffa

%include "shared/data/ttrd.asm"          ; 0x600e

%include "shared/data/ttwr.asm"          ; 0x6010

%include "shared/data/Eol.asm"           ; 0x6012

%include "shared/data/aztec_tty_wr_crbuf.asm" ; 0x6013


__zimage_end:
absolute __zimage_end
__zbss_2534:
__zbss_2534:
    resb 0x0002
__zbss_2536:
    resb 0x0002
__zbss_2538:
    resb 0x0002
__zbss_253a:
    resb 0x0002
__zbss_253c:
    resb 0x0002
__zbss_253e:
    resb 0x0104
__zbss_2642:
    resb 0x0002
__zbss_2644:
    resb 0x0001
__zbss_2645:
    resb 0x0001
__zbss_2646:
    resb 0x0001
__zbss_2647:
    resb 0x0001
__zbss_2648:
    resb 0x0050
__zbss_2698:
    resb 0x0002
__zbss_269a:
    resb 0x02d0
__zbss_296a:
    resb 0x0014
__zbss_297e:
    resb 0x0014
__zbss_2992:
    resb 0x0014
__zbss_29a6:
    resb 0x0014
__zbss_29ba:
    resb 0x0001
__zbss_29bb:
    resb 0x0001
__zbss_29bc:
    resb 0x0014
__zbss_29d0:
    resb 0x0001
__zbss_29d1:
    resb 0x0001
__zbss_29d2:
    resb 0x0002
__zbss_29d4:
    resb 0x0001
__zbss_29d5:
    resb 0x0001
__zbss_29d6:
    resb 0x0001
__zbss_29d7:
    resb 0x0001
__zbss_29d8:
    resb 0x0002
__zbss_29da:
    resb 0x0002
__zbss_29dc:
    resb 0x0001
__zbss_29dd:
    resb 0x0002
__zbss_29df:
    resb 0x0002
__zbss_29e1:
    resb 0x0001
__zbss_29e2:
    resb 0x0001
__zbss_29e3:
    resb 0x0003
__zbss_29e6:
    resb 0x0002
__zbss_29e8:
    resb 0x0002
__zbss_29ea:
    resb 0x0002
__zbss_29ec:
    resb 0x0002
__zbss_29ee:
    resb 0x0002
__zbss_29f0:
    resb 0x0100
__zbss_2af0:
    resb 0x0002
__zbss_2af2:
    resb 0x0002
__zbss_2af4:
    resb 0x0002
__zbss_2af6:
    resb 0x0002
__zbss_2af8:
    resb 0x0002
__zbss_2afa:
    resb 0x0002
__zbss_2afc:
    resb 0x0002
__zbss_2afe:
__zbss_end:
    resb 0x4000
__zstack_top:
