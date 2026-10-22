; auto-generated
bits 16
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
    dw (__zdata_start - __zcode_start)       ; 0x524b ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x00e8 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x099c ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xa262 ; o_entry: overlay entry offset (CS)

__zcode_start:

bss_9180 equ __zdseg_end + (__zobss_9180 - __zdata_start)
%include "vmext/ovmain.asm"                ; 0x000e

%include "shared/game/loc_MPHO.asm"              ; 0x00b6

%include "shared/game/find_map_piece.asm"        ; 0x00f0

%include "shared/game/find_object_at.asm"        ; 0x01ac

%include "shared/game/api_idx_0002_OTTG.asm"     ; 0x021c

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_90a5 equ __zdseg_end + (__zdseg_90a5 - __zdata_start)
dseg_90b2 equ __zdseg_end + (__zdseg_90b2 - __zdata_start)
dseg_90bf equ __zdseg_end + (__zdseg_90bf - __zdata_start)
dseg_90cc equ __zdseg_end + (__zdseg_90cc - __zdata_start)
dseg_90d9 equ __zdseg_end + (__zdseg_90d9 - __zdata_start)
dseg_90e6 equ __zdseg_end + (__zdseg_90e6 - __zdata_start)
dseg_90f3 equ __zdseg_end + (__zdseg_90f3 - __zdata_start)
dseg_9100 equ __zdseg_end + (__zdseg_9100 - __zdata_start)
dseg_910d equ __zdseg_end + (__zdseg_910d - __zdata_start)
dseg_911a equ __zdseg_end + (__zdseg_911a - __zdata_start)
dseg_9127 equ __zdseg_end + (__zdseg_9127 - __zdata_start)
dseg_9134 equ __zdseg_end + (__zdseg_9134 - __zdata_start)
dseg_9141 equ __zdseg_end + (__zdseg_9141 - __zdata_start)
dseg_914e equ __zdseg_end + (__zdseg_914e - __zdata_start)
dseg_915b equ __zdseg_end + (__zdseg_915b - __zdata_start)
dseg_9168 equ __zdseg_end + (__zdseg_9168 - __zdata_start)
; bss_9180  equ __zdseg_end + (__zobss_9180 - __zdata_start)
bss_9188  equ __zdseg_end + (__zobss_9188 - __zdata_start)
%include "vmext/api_idx_0002_VNLG.asm"     ; 0x0262

%include "shared/game/loc_QQOI.asm"              ; 0x059a

%include "vmext/loc_IJSN.asm"              ; 0x05c0

%include "vmext/api_idx_0004_KQNK.asm"     ; 0x05e6

%include "vmext/loc_VJNU.asm"              ; 0x0636

%include "shared/game/loc_IVLM.asm"              ; 0x0692

loc_NJKS.loc1 equ loc_GPIH
loc_NJKS.loc2 equ loc_MMMO
%include "shared/game/loc_NJKS.asm"              ; 0x06c3

%include "shared/game/api_idx_0008_OMTP.asm"     ; 0x0764

api_idx_0050_GORG equ show_message
%include "shared/game/show_message.asm"     ; 0x081a

%include "vmext/loc_NHMQ.asm"              ; 0x0836

bss_918a equ __zdseg_end + (__zobss_918a - __zdata_start)
check_at_saved_location.save_location_flag1 equ bss_918a
%include "shared/game/check_at_saved_location.asm" ; 0x0860

api_idx_0004_JIVL      equ api_idx_0004_HRPS
jumptable_08e9_case_14 equ api_idx_0004_HRPS.jumptable_case1
jumptable_08e9_case_0  equ api_idx_0004_HRPS.jumptable_case2
jumptable_08e9         equ api_idx_0004_HRPS.jumptable1
jumptable_08e9_case_1  equ api_idx_0004_HRPS.jumptable_case3
%include "shared/game/api_idx_0004_HRPS.asm"     ; 0x0897

; bss_918a equ __zdseg_end + (__zobss_918a - __zdata_start)
%include "vmext/api_idx_000c_RMGQ.asm"     ; 0x09be

%include "vmext/api_idx_0002_JSVP.asm"     ; 0x0b49

%include "vmext/api_idx_000a_NPNK.asm"     ; 0x0b8c

%include "vmext/loc_VUVO.asm"              ; 0x0c0d

%include "vmext/api_idx_008a_SRHN.asm"     ; 0x0c1f

%include "vmext/loc_TLQV.asm"              ; 0x0eac

%include "vmext/api_idx_0012_VNOV.asm"     ; 0x0ee0

%include "shared/game/api_idx_004c_RQSO.asm"     ; 0x1356

%include "shared/game/api_idx_0004_ONJT.asm"     ; 0x146b

%include "shared/game/api_idx_0006_TMNI.asm"     ; 0x14c7

%include "vmext/api_idx_0008_OTKN.asm"     ; 0x151e

%include "vmext/loc_HTTH.asm"              ; 0x15af

; bss_9188 equ __zdseg_end + (__zobss_9188 - __zdata_start)
loc_GPIH.bss1 equ bss_9188
%include "shared/game/loc_GPIH.asm"              ; 0x1823

; bss_9188 equ __zdseg_end + (__zobss_9188 - __zdata_start)
loc_MMMO.bss1 equ bss_9188
%include "shared/game/loc_MMMO.asm"              ; 0x189b

bss_91a4 equ __zdseg_end + (__zobss_91a4 - __zdata_start)
loc_UMHI_1913.bss1 equ bss_91a4
%include "shared/game/loc_UMHI_1913.asm"         ; 0x1913

; bss_91a4 equ __zdseg_end + (__zobss_91a4 - __zdata_start)
loc_LPLI_1927.bss1 equ bss_91a4
%include "shared/game/loc_LPLI_1927.asm"         ; 0x1927

bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
loc_UMHI_193b.bss1 equ bss_91a6
%include "shared/game/loc_UMHI_193b.asm"         ; 0x193b

; bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
loc_LPLI_194f.bss1 equ bss_91a6
%include "shared/game/loc_LPLI_194f.asm"         ; 0x194f

%include "vmext/loc_VOSO.asm"              ; 0x1963

%include "vmext/loc_RRJG.asm"              ; 0x19e4

; bss_9188         equ __zdseg_end + (__zobss_9188 - __zdata_start)
location_changed equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_91aa         equ __zdseg_end + (__zobss_91aa - __zdata_start)
%include "vmext/api_idx_0008_UNPO.asm"     ; 0x1a1d

; bss_9188         equ __zdseg_end + (__zobss_9188 - __zdata_start)
; location_changed equ __zdseg_end + (__zobss_91a8 - __zdata_start)
; bss_91aa         equ __zdseg_end + (__zobss_91aa - __zdata_start)
%include "vmext/api_idx_0008_LUNN.asm"     ; 0x1e4f

bss_92f2 equ __zdseg_end + (__zobss_92f2 - __zdata_start)
bss_92f4 equ __zdseg_end + (__zobss_92f4 - __zdata_start)
%include "vmext/api_idx_0004_RTNM.asm"     ; 0x201b

; bss_91a4         equ __zdseg_end + (__zobss_91a4 - __zdata_start)
; location_changed equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_9aec         equ __zdseg_end + (__zobss_9aec - __zdata_start)
api_idx_0010_NIMV.location_changed1 equ location_changed
api_idx_0010_NIMV.loc1              equ loc_LPLI_1927
api_idx_0010_NIMV.loc2              equ loc_UMHI_1913
jumptable_2515_case_1               equ api_idx_0010_NIMV.jumptable_case1
api_idx_0010_NIMV.api_idx1          equ api_idx_0004_RTNM
jumptable_2515_case_5               equ api_idx_0010_NIMV.jumptable_case2
jumptable_2515_case_2               equ api_idx_0010_NIMV.jumptable_case3
jumptable_2515_case_4               equ api_idx_0010_NIMV.jumptable_case4
api_idx_0010_NIMV.bss1              equ bss_9aec
jumptable_2515                      equ api_idx_0010_NIMV.jumptable1
jumptable_2515_case_0               equ api_idx_0010_NIMV.jumptable_case5
jumptable_2967_case_8               equ api_idx_0010_NIMV.jumptable_case6
jumptable_2967_case_7               equ api_idx_0010_NIMV.jumptable_case7
jumptable_2967_case_1               equ api_idx_0010_NIMV.jumptable_case8
api_idx_0010_NIMV.bss2              equ bss_91a4
jumptable_2967_case_5               equ api_idx_0010_NIMV.jumptable_case9
jumptable_2967_case_10              equ api_idx_0010_NIMV.jumptable_case10
jumptable_2967_case_11              equ api_idx_0010_NIMV.jumptable_case11
jumptable_2967_case_12              equ api_idx_0010_NIMV.jumptable_case12
jumptable_2967_case_14              equ api_idx_0010_NIMV.jumptable_case13
jumptable_2967                      equ api_idx_0010_NIMV.jumptable2
jumptable_2967_case_0               equ api_idx_0010_NIMV.jumptable_case14
%include "shared/game/api_idx_0010_NIMV.asm"     ; 0x2291

; location_changed equ __zdseg_end + (__zobss_91a8 - __zdata_start)
jumptable_2e93_case_8               equ api_idx_0012_JLRR.jumptable_case1
api_idx_0012_JLRR.api_idx1          equ api_idx_0004_RTNM
jumptable_2e93_case_3               equ api_idx_0012_JLRR.jumptable_case2
api_idx_0012_JLRR.loc1              equ loc_UMHI_193b
api_idx_0012_JLRR.loc2              equ loc_LPLI_194f
jumptable_2e93_case_1               equ api_idx_0012_JLRR.jumptable_case3
api_idx_0012_JLRR.location_changed1 equ location_changed
jumptable_2e93_case_0               equ api_idx_0012_JLRR.jumptable_case4
jumptable_2e93_case_7               equ api_idx_0012_JLRR.jumptable_case5
jumptable_2e93_case_2               equ api_idx_0012_JLRR.jumptable_case6
jumptable_2e93_case_4               equ api_idx_0012_JLRR.jumptable_case7
api_idx_0012_JLRR.loc3              equ loc_UMHI_1913
api_idx_0012_JLRR.loc4              equ loc_LPLI_1927
jumptable_2e93_case_5               equ api_idx_0012_JLRR.jumptable_case8
jumptable_2e93                      equ api_idx_0012_JLRR.jumptable1
jumptable_3096_case_0               equ api_idx_0012_JLRR.jumptable_case9
jumptable_3096_case_1               equ api_idx_0012_JLRR.jumptable_case10
jumptable_3096_case_2               equ api_idx_0012_JLRR.jumptable_case11
jumptable_3096_case_4               equ api_idx_0012_JLRR.jumptable_case12
jumptable_3096                      equ api_idx_0012_JLRR.jumptable2
%include "shared/game/api_idx_0012_JLRR.asm"     ; 0x29e5

; bss_91a4         equ __zdseg_end + (__zobss_91a4 - __zdata_start)
; bss_91a6         equ __zdseg_end + (__zobss_91a6 - __zdata_start)
; location_changed equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_91ac         equ __zdseg_end + (__zobss_91ac - __zdata_start)
bss_91c5         equ __zdseg_end + (__zobss_91c5 - __zdata_start)
bss_91f7         equ __zdseg_end + (__zobss_91f7 - __zdata_start)
bss_9210         equ __zdseg_end + (__zobss_9210 - __zdata_start)
bss_9242         equ __zdseg_end + (__zobss_9242 - __zdata_start)
bss_9274         equ __zdseg_end + (__zobss_9274 - __zdata_start)
bss_928e         equ __zdseg_end + (__zobss_928e - __zdata_start)
bss_92c0         equ __zdseg_end + (__zobss_92c0 - __zdata_start)
api_idx_0012_STJU          equ api_idx_0012_RMOL
api_idx_0012_RMOL.bss1     equ bss_9242
api_idx_0012_RMOL.bss2     equ bss_92c0
api_idx_0012_RMOL.loc1     equ loc_UMHI_193b
api_idx_0012_RMOL.loc2     equ loc_LPLI_194f
api_idx_0012_RMOL.api_idx1 equ api_idx_0004_RTNM
api_idx_0012_RMOL.bss3     equ bss_91a4
api_idx_0012_RMOL.bss4     equ bss_91c5
api_idx_0012_RMOL.bss5     equ location_changed
api_idx_0012_RMOL.loc3     equ loc_LPLI_1927
api_idx_0012_RMOL.loc4     equ loc_UMHI_1913
api_idx_0012_RMOL.bss6     equ bss_91ac
jumptable_35fa_case_1      equ api_idx_0012_RMOL.jumptable_case1
jumptable_35fa_case_2      equ api_idx_0012_RMOL.jumptable_case2
jumptable_35fa_case_3      equ api_idx_0012_RMOL.jumptable_case3
api_idx_0012_RMOL.bss7     equ bss_91a6
jumptable_35fa_case_4      equ api_idx_0012_RMOL.jumptable_case4
jumptable_35fa_case_0      equ api_idx_0012_RMOL.jumptable_case5
jumptable_35fa             equ api_idx_0012_RMOL.jumptable1
api_idx_0012_RMOL.bss8     equ bss_9210
api_idx_0012_RMOL.bss9     equ bss_928e
api_idx_0012_RMOL.bss10    equ bss_9274
api_idx_0012_RMOL.bss11    equ bss_91f7
%include "shared/game/api_idx_0012_RMOL.asm"     ; 0x30f4

%include "shared/game/api_idx_0016_LHKK.asm"     ; 0x39e2

%include "shared/game/api_idx_0024_NUGL.asm"     ; 0x3b83

%include "shared/game/api_idx_001e_IGLM.asm"     ; 0x3d29

; bss_9188           equ __zdseg_end + (__zobss_9188 - __zdata_start)
save_location_flag equ __zdseg_end + (__zobss_919e - __zdata_start)
; bss_91a4           equ __zdseg_end + (__zobss_91a4 - __zdata_start)
; bss_91a6           equ __zdseg_end + (__zobss_91a6 - __zdata_start)
; location_changed   equ __zdseg_end + (__zobss_91a8 - __zdata_start)
; bss_91aa           equ __zdseg_end + (__zobss_91aa - __zdata_start)
; bss_91ac           equ __zdseg_end + (__zobss_91ac - __zdata_start)
bss_91b8           equ __zdseg_end + (__zobss_91b8 - __zdata_start)
; bss_91c5           equ __zdseg_end + (__zobss_91c5 - __zdata_start)
bss_91de           equ __zdseg_end + (__zobss_91de - __zdata_start)
; bss_91f7           equ __zdseg_end + (__zobss_91f7 - __zdata_start)
; bss_9210           equ __zdseg_end + (__zobss_9210 - __zdata_start)
; bss_9242           equ __zdseg_end + (__zobss_9242 - __zdata_start)
; bss_9274           equ __zdseg_end + (__zobss_9274 - __zdata_start)
; bss_928e           equ __zdseg_end + (__zobss_928e - __zdata_start)
; bss_92c0           equ __zdseg_end + (__zobss_92c0 - __zdata_start)
; bss_92f2           equ __zdseg_end + (__zobss_92f2 - __zdata_start)
; bss_92f4           equ __zdseg_end + (__zobss_92f4 - __zdata_start)
; bss_9aec           equ __zdseg_end + (__zobss_9aec - __zdata_start)
bss_9aee           equ __zdseg_end + (__zobss_9aee - __zdata_start)
bss_9b08           equ __zdseg_end + (__zobss_9b08 - __zdata_start)
bss_9b0a           equ __zdseg_end + (__zobss_9b0a - __zdata_start)
bss_9b0c           equ __zdseg_end + (__zobss_9b0c - __zdata_start)
bss_9b0e           equ __zdseg_end + (__zobss_9b0e - __zdata_start)
bss_9b10           equ __zdseg_end + (__zobss_9b10 - __zdata_start)
bss_9b12           equ __zdseg_end + (__zobss_9b12 - __zdata_start)
bss_9b14           equ __zdseg_end + (__zobss_9b14 - __zdata_start)
bss_9b16           equ __zdseg_end + (__zobss_9b16 - __zdata_start)
bss_9b18           equ __zdseg_end + (__zobss_9b18 - __zdata_start)
bss_9b1a           equ __zdseg_end + (__zobss_9b1a - __zdata_start)
%include "vmext/api_idx_0030_MLHO.asm"     ; 0x3e8c

redraw_maze_view.api_idx1 equ api_idx_0030_MLHO
%include "shared/game/redraw_maze_view.asm"      ; 0x51fb

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_9180 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec/aztec_ovbgn.asm"           ; 0x521b

__zdseg_9098:
__zdata_start:
    db 'MAZEDATA.VGA', 0
__zdseg_90a5:
    db 'WATRDATA.VGA', 0
__zdseg_90b2:
    db 'TREEDATA.VGA', 0
__zdseg_90bf:
    db 'OTWNDATA.VGA', 0
__zdseg_90cc:
    db 'TILEDATA.VGA', 0
__zdseg_90d9:
    db 'TOWNDATA.VGA', 0
__zdseg_90e6:
    db 'OTWNDATA.VGA', 0
__zdseg_90f3:
    db 'WATRDATA.VGA', 0
__zdseg_9100:
    db 'TILEDATA.VGA', 0
__zdseg_910d:
    db 'TREEDATA.VGA', 0
__zdseg_911a:
    db 'OCAVDATA.VGA', 0
__zdseg_9127:
    db 'CAVEDATA.VGA', 0
__zdseg_9134:
    db 'OCAVDATA.VGA', 0
__zdseg_9141:
    db 'WATRDATA.VGA', 0
__zdseg_914e:
    db 'TREEDATA.VGA', 0
__zdseg_915b:
    db 'OTWNDATA.VGA', 0
__zdseg_9168:
    db 'WATRDATA.VGA', 0
    db 0x00
%include "shared/data/save_si.asm"          ; 0x5337

%include "shared/data/save_di.asm"          ; 0x5339

%include "shared/data/save_sp.asm"          ; 0x533b

%include "shared/data/save_bp.asm"          ; 0x533d

%include "shared/data/save_ret.asm"         ; 0x533f


__zimage_end:
absolute __zimage_end
__zobss_9180:
    resb 0x0008
__zobss_9188:
    resb 0x0002
__zobss_918a:
    resb 0x0014
__zobss_919e:
    resb 0x0006
__zobss_91a4:
    resb 0x0002
__zobss_91a6:
    resb 0x0002
__zobss_91a8:
    resb 0x0002
__zobss_91aa:
    resb 0x0002
__zobss_91ac:
    resb 0x000c
__zobss_91b8:
    resb 0x000d
__zobss_91c5:
    resb 0x0019
__zobss_91de:
    resb 0x0019
__zobss_91f7:
    resb 0x0019
__zobss_9210:
    resb 0x0032
__zobss_9242:
    resb 0x0032
__zobss_9274:
    resb 0x001a
__zobss_928e:
    resb 0x0032
__zobss_92c0:
    resb 0x0032
__zobss_92f2:
    resb 0x0002
__zobss_92f4:
    resb 0x07f8
__zobss_9aec:
    resb 0x0002
__zobss_9aee:
    resb 0x001a
__zobss_9b08:
    resb 0x0002
__zobss_9b0a:
    resb 0x0002
__zobss_9b0c:
    resb 0x0002
__zobss_9b0e:
    resb 0x0002
__zobss_9b10:
    resb 0x0002
__zobss_9b12:
    resb 0x0002
__zobss_9b14:
    resb 0x0002
__zobss_9b16:
    resb 0x0002
__zobss_9b18:
    resb 0x0002
__zobss_9b1a:
    resb 0x0002
__zobss_end:
