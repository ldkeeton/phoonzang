; auto-generated
bits 16
%include "include/structs.inc"
%include "include/host_symbols.inc"
%ifndef VBASE
%ifdef ELF_BUILD
VBASE equ 0
%else
VBASE equ __zres_end - 0x000e
%endif
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e + VBASE
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                                ; o_magic: overlay signature (0x00f2)
    dw __zres_end                            ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)       ; 0x1609 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0120 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0002 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0x6620 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vinit/ovmain.asm"                ; 0x000e

%include "vinit/load_startup_font.asm"     ; 0x0045

%include "vinit/load_startup_maze.asm"     ; 0x0084

%include "vinit/read_startup_file.asm"     ; 0x00ca

%include "vinit/load_startup_misc.asm"     ; 0x010c

%include "vinit/load_file_data.asm"        ; 0x0146

%include "vinit/build_palette_map.asm"     ; 0x0211

startup_scenario_header_name    equ __zdseg_end + (__zstartup_scenario_header_name - __zdata_start)
startup_vbfont0_name            equ __zdseg_end + (__zstartup_vbfont0_name - __zdata_start)
startup_vbfont1_name            equ __zdseg_end + (__zstartup_vbfont1_name - __zdata_start)
startup_vbfont2_name            equ __zdseg_end + (__zstartup_vbfont2_name - __zdata_start)
startup_vbfont3_name            equ __zdseg_end + (__zstartup_vbfont3_name - __zdata_start)
startup_vcfont1_name            equ __zdseg_end + (__zstartup_vcfont1_name - __zdata_start)
startup_vcport0_name            equ __zdseg_end + (__zstartup_vcport0_name - __zdata_start)
startup_vcfont2_name            equ __zdseg_end + (__zstartup_vcfont2_name - __zdata_start)
startup_vcfont3_name            equ __zdseg_end + (__zstartup_vcfont3_name - __zdata_start)
startup_vmpntr0_name            equ __zdseg_end + (__zstartup_vmpntr0_name - __zdata_start)
startup_vmpntr1_name            equ __zdseg_end + (__zstartup_vmpntr1_name - __zdata_start)
startup_vmpntr2_name            equ __zdseg_end + (__zstartup_vmpntr2_name - __zdata_start)
startup_base_data_name          equ __zdseg_end + (__zstartup_base_data_name - __zdata_start)
startup_master_header_name      equ __zdseg_end + (__zstartup_master_header_name - __zdata_start)
startup_disk_header_name        equ __zdseg_end + (__zstartup_disk_header_name - __zdata_start)
startup_message_header_name     equ __zdseg_end + (__zstartup_message_header_name - __zdata_start)
startup_pcfile_name             equ __zdseg_end + (__zstartup_pcfile_name - __zdata_start)
startup_misc_header_name        equ __zdseg_end + (__zstartup_misc_header_name - __zdata_start)
startup_message_database_name   equ __zdseg_end + (__zstartup_message_database_name - __zdata_start)
startup_scenario_database_name  equ __zdseg_end + (__zstartup_scenario_database_name - __zdata_start)
startup_palette_definition_name equ __zdseg_end + (__zstartup_palette_definition_name - __zdata_start)
%include "vinit/initialize_runtime_resources.asm" ; 0x03a8

%include "shared/ovr/load_screen_file.asm"      ; 0x08b7

bss_91b8 equ __zdseg_end + (__zobss_91b8 - __zdata_start)
%include "vinit/api_idx_0002_PUOP.asm"     ; 0x094a

%include "vinit/api_idx_0004_OIGN.asm"     ; 0x0988

%include "vinit/api_idx_000e_JRRT.asm"     ; 0x09d3

%include "vinit/loc_KVVL.asm"              ; 0x0a56

dseg_9187 equ __zdseg_end + (__zdseg_9187 - __zdata_start)
dseg_9194 equ __zdseg_end + (__zdseg_9194 - __zdata_start)
; bss_91b8  equ __zdseg_end + (__zobss_91b8 - __zdata_start)
%include "vinit/api_idx_0068_OUHP.asm"     ; 0x0ac7

%include "vinit/api_idx_0002_SKSN.asm"     ; 0x133d

dseg_91a1 equ __zdseg_end + (__zdseg_91a1 - __zdata_start)
%include "vinit/api_idx_0008_QGRM.asm"     ; 0x1409

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_91b8 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/ovr/aztec_ovbgn.asm"           ; 0x15d9

__zdata_start:
%include "vinit/data/startup_scenario_header_name.asm" ; 0x1617

%include "vinit/data/startup_vbfont0_name.asm" ; 0x1624

%include "vinit/data/startup_vbfont1_name.asm" ; 0x1630

%include "vinit/data/startup_vbfont2_name.asm" ; 0x163c

%include "vinit/data/startup_vbfont3_name.asm" ; 0x1648

%include "vinit/data/startup_vcfont1_name.asm" ; 0x1654

%include "vinit/data/startup_vcport0_name.asm" ; 0x1660

%include "vinit/data/startup_vcfont2_name.asm" ; 0x166c

%include "vinit/data/startup_vcfont3_name.asm" ; 0x1678

%include "vinit/data/startup_vmpntr0_name.asm" ; 0x1684

%include "vinit/data/startup_vmpntr1_name.asm" ; 0x1690

%include "vinit/data/startup_vmpntr2_name.asm" ; 0x169c

%include "vinit/data/startup_base_data_name.asm" ; 0x16a8

%include "vinit/data/startup_master_header_name.asm" ; 0x16b5

%include "vinit/data/startup_disk_header_name.asm" ; 0x16c0

%include "vinit/data/startup_message_header_name.asm" ; 0x16c9

%include "vinit/data/startup_pcfile_name.asm" ; 0x16d1

%include "vinit/data/startup_misc_header_name.asm" ; 0x16dc

%include "vinit/data/startup_message_database_name.asm" ; 0x16e5

%include "vinit/data/startup_scenario_database_name.asm" ; 0x16ed

%include "vinit/data/startup_palette_definition_name.asm" ; 0x16fa

%include "vinit/data/dseg_9187.asm"        ; 0x1706

%include "shared/data/save_si.asm"          ; 0x172d

%include "shared/data/save_di.asm"          ; 0x172f

%include "shared/data/save_sp.asm"          ; 0x1731

%include "shared/data/save_bp.asm"          ; 0x1733

%include "shared/data/save_ret.asm"         ; 0x1735


__zimage_end:
absolute __zimage_end
__zobss_91b8:
    resb 0x0002
__zobss_end:
