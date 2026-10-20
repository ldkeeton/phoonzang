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
    dw (__zdata_start - __zcode_start)       ; 0x4721 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x001e ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0cde ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0x9720 ; o_entry: overlay entry offset (CS)

__zcode_start:

bss_90b6 equ __zdseg_end + (__zobss_90b6 - __zdata_start)
bss_90b8 equ __zdseg_end + (__zobss_90b8 - __zdata_start)
%include "vdopt/ovmain.asm"                ; 0x000e

%include "shared/loc_MPHO.asm"              ; 0x00a5

%include "shared/api_idx_0004_QVPP.asm"     ; 0x00df

%include "shared/api_idx_0002_KQPU.asm"     ; 0x019b

%include "shared/api_idx_002a_SRJL.asm"     ; 0x020b

%include "shared/loc_RULJ.asm"              ; 0x02b4

api_idx_0004_TTGQ.loc1 equ loc_RULJ
%include "shared/api_idx_0004_TTGQ.asm"     ; 0x02c3

%include "shared/api_idx_0006_POPS.asm"     ; 0x030c

%include "vdopt/api_idx_0004_PSJH.asm"     ; 0x0382

%include "vdopt/api_idx_0002_NNOS.asm"     ; 0x0473

%include "vdopt/loc_HHMH.asm"              ; 0x04b7

; bss_90b8 equ __zdseg_end + (__zobss_90b8 - __zdata_start)
%include "vdopt/api_idx_0058_TVSV.asm"     ; 0x0565

%include "vdopt/api_idx_0002_TPQM.asm"     ; 0x065b

; bss_90b6 equ __zdseg_end + (__zobss_90b6 - __zdata_start)
; bss_90b8 equ __zdseg_end + (__zobss_90b8 - __zdata_start)
%include "vdopt/api_idx_000e_NMLJ.asm"     ; 0x06e8

loc_NJKS.loc1 equ loc_UOPP
loc_NJKS.loc2 equ loc_KHGO
%include "shared/loc_NJKS.asm"              ; 0x08b9

%include "vdopt/loc_MOTJ.asm"              ; 0x095a

bss_9342 equ __zdseg_end + (__zobss_9342 - __zdata_start)
bss_9344 equ __zdseg_end + (__zobss_9344 - __zdata_start)
bss_95ce equ __zdseg_end + (__zobss_95ce - __zdata_start)
bss_9858 equ __zdseg_end + (__zobss_9858 - __zdata_start)
bss_9ae2 equ __zdseg_end + (__zobss_9ae2 - __zdata_start)
bss_9ae4 equ __zdseg_end + (__zobss_9ae4 - __zdata_start)
bss_9ae6 equ __zdseg_end + (__zobss_9ae6 - __zdata_start)
bss_9ae8 equ __zdseg_end + (__zobss_9ae8 - __zdata_start)
bss_9aea equ __zdseg_end + (__zobss_9aea - __zdata_start)
bss_9aec equ __zdseg_end + (__zobss_9aec - __zdata_start)
bss_9aee equ __zdseg_end + (__zobss_9aee - __zdata_start)
bss_9af0 equ __zdseg_end + (__zobss_9af0 - __zdata_start)
bss_9af2 equ __zdseg_end + (__zobss_9af2 - __zdata_start)
bss_9af4 equ __zdseg_end + (__zobss_9af4 - __zdata_start)
bss_9af6 equ __zdseg_end + (__zobss_9af6 - __zdata_start)
bss_9af8 equ __zdseg_end + (__zobss_9af8 - __zdata_start)
bss_9afa equ __zdseg_end + (__zobss_9afa - __zdata_start)
bss_9afc equ __zdseg_end + (__zobss_9afc - __zdata_start)
bss_9afe equ __zdseg_end + (__zobss_9afe - __zdata_start)
bss_9b00 equ __zdseg_end + (__zobss_9b00 - __zdata_start)
bss_9b02 equ __zdseg_end + (__zobss_9b02 - __zdata_start)
bss_9b04 equ __zdseg_end + (__zobss_9b04 - __zdata_start)
%include "vdopt/api_idx_0014_HTUV.asm"     ; 0x09c0

; bss_9af8 equ __zdseg_end + (__zobss_9af8 - __zdata_start)
; bss_9afc equ __zdseg_end + (__zobss_9afc - __zdata_start)
; bss_9b00 equ __zdseg_end + (__zobss_9b00 - __zdata_start)
; bss_9b04 equ __zdseg_end + (__zobss_9b04 - __zdata_start)
bss_9b06 equ __zdseg_end + (__zobss_9b06 - __zdata_start)
bss_9b08 equ __zdseg_end + (__zobss_9b08 - __zdata_start)
%include "vdopt/loc_GTJK.asm"              ; 0x0ede

bss_9b0a equ __zdseg_end + (__zobss_9b0a - __zdata_start)
bss_9b0c equ __zdseg_end + (__zobss_9b0c - __zdata_start)
%include "vdopt/loc_TIPV.asm"              ; 0x0f52

; bss_9b0a equ __zdseg_end + (__zobss_9b0a - __zdata_start)
; bss_9b0c equ __zdseg_end + (__zobss_9b0c - __zdata_start)
%include "vdopt/api_idx_000a_GMJG.asm"     ; 0x0f7f

; bss_9342 equ __zdseg_end + (__zobss_9342 - __zdata_start)
; bss_9344 equ __zdseg_end + (__zobss_9344 - __zdata_start)
; bss_95ce equ __zdseg_end + (__zobss_95ce - __zdata_start)
; bss_9858 equ __zdseg_end + (__zobss_9858 - __zdata_start)
; bss_9ae2 equ __zdseg_end + (__zobss_9ae2 - __zdata_start)
; bss_9ae4 equ __zdseg_end + (__zobss_9ae4 - __zdata_start)
; bss_9ae6 equ __zdseg_end + (__zobss_9ae6 - __zdata_start)
; bss_9ae8 equ __zdseg_end + (__zobss_9ae8 - __zdata_start)
; bss_9aea equ __zdseg_end + (__zobss_9aea - __zdata_start)
; bss_9aec equ __zdseg_end + (__zobss_9aec - __zdata_start)
; bss_9aee equ __zdseg_end + (__zobss_9aee - __zdata_start)
; bss_9af0 equ __zdseg_end + (__zobss_9af0 - __zdata_start)
; bss_9af2 equ __zdseg_end + (__zobss_9af2 - __zdata_start)
; bss_9af4 equ __zdseg_end + (__zobss_9af4 - __zdata_start)
; bss_9af6 equ __zdseg_end + (__zobss_9af6 - __zdata_start)
; bss_9af8 equ __zdseg_end + (__zobss_9af8 - __zdata_start)
; bss_9afa equ __zdseg_end + (__zobss_9afa - __zdata_start)
; bss_9afc equ __zdseg_end + (__zobss_9afc - __zdata_start)
; bss_9afe equ __zdseg_end + (__zobss_9afe - __zdata_start)
; bss_9b00 equ __zdseg_end + (__zobss_9b00 - __zdata_start)
; bss_9b02 equ __zdseg_end + (__zobss_9b02 - __zdata_start)
; bss_9b04 equ __zdseg_end + (__zobss_9b04 - __zdata_start)
; bss_9b06 equ __zdseg_end + (__zobss_9b06 - __zdata_start)
; bss_9b08 equ __zdseg_end + (__zobss_9b08 - __zdata_start)
; bss_9b0a equ __zdseg_end + (__zobss_9b0a - __zdata_start)
; bss_9b0c equ __zdseg_end + (__zobss_9b0c - __zdata_start)
%include "vdopt/api_idx_0012_UROU.asm"     ; 0x0fd3

%include "vdopt/api_idx_000a_KGLQ.asm"     ; 0x190b

%include "vdopt/api_idx_0002_OHVL.asm"     ; 0x195b

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_9099 equ __zdseg_end + (__zdseg_9099 - __zdata_start)
%include "vdopt/api_idx_00fa_RIMJ.asm"     ; 0x1a5d

%include "shared/loc_QQUT.asm"              ; 0x1c7f

%include "vdopt/api_idx_0008_JRPS.asm"     ; 0x1ccf

; bss_90b6 equ __zdseg_end + (__zobss_90b6 - __zdata_start)
; bss_90b8 equ __zdseg_end + (__zobss_90b8 - __zdata_start)
%include "vdopt/api_idx_000c_RLKV.asm"     ; 0x238d

%include "shared/draw_party_slot_letters.asm" ; 0x25a8

%include "shared/api_idx_0002_TIUI.asm"     ; 0x2627

%include "vdopt/api_idx_0004_MNVO.asm"     ; 0x2682

%include "vdopt/api_idx_000a_PJMQ.asm"     ; 0x26f3

%include "shared/loc_PTRP.asm"              ; 0x2731

dseg_909a equ __zdseg_end + (__zdseg_909a - __zdata_start)
%include "vdopt/loc_TJJR.asm"              ; 0x27bd

%include "shared/api_idx_000c_JQMN.asm"     ; 0x285e

bss_9b5e equ __zdseg_end + (__zobss_9b5e - __zdata_start)
loc_SRQQ.bss1     equ bss_9b5e
loc_SRQQ.api_idx1 equ api_idx_000a_PJMQ
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x28f7

dseg_909e equ __zdseg_end + (__zdseg_909e - __zdata_start)
; bss_9b5e  equ __zdseg_end + (__zobss_9b5e - __zdata_start)
%include "vdopt/api_idx_0044_PIIP.asm"     ; 0x2988

%include "shared/api_idx_0008_RQRL.asm"     ; 0x362f

%include "shared/api_idx_0004_UJRL.asm"     ; 0x36bb

%include "shared/api_idx_0018_RGOS.asm"     ; 0x378c

%include "vdopt/api_idx_0004_PNVH.asm"     ; 0x3889

loc_HTKI.api_idx1 equ api_idx_0004_PNVH
%include "shared/loc_HTKI.asm"              ; 0x39eb

dseg_90a4 equ __zdseg_end + (__zdseg_90a4 - __zdata_start)
%include "vdopt/api_idx_0038_QQIU.asm"     ; 0x3a2c

dseg_90aa equ __zdseg_end + (__zdseg_90aa - __zdata_start)
; bss_90b6  equ __zdseg_end + (__zobss_90b6 - __zdata_start)
; bss_90b8  equ __zdseg_end + (__zobss_90b8 - __zdata_start)
; bss_9b5e  equ __zdseg_end + (__zobss_9b5e - __zdata_start)
bss_9d90  equ __zdseg_end + (__zobss_9d90 - __zdata_start)
%include "vdopt/api_idx_0094_LUVH.asm"     ; 0x417c

; bss_90b6 equ __zdseg_end + (__zobss_90b6 - __zdata_start)
; bss_9b5e equ __zdseg_end + (__zobss_9b5e - __zdata_start)
; bss_9d90 equ __zdseg_end + (__zobss_9d90 - __zdata_start)
%include "vdopt/api_idx_0004_NQNQ.asm"     ; 0x45dd

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_90b6 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec_ovbgn.asm"           ; 0x46d9

%include "shared/aztec_cswit.asm"           ; 0x4717

__zdseg_9098:
__zdata_start:
    db 0x00
__zdseg_9099:
    db 0x00
__zdseg_909a:
    db 0x2a, 0x2a, 0x2a, 0x00
__zdseg_909e:
    db 'V.$$$', 0
__zdseg_90a4:
    db 'V.$$$', 0
__zdseg_90aa:
    db 0x00, 0x00
__zsave_si:
    db 0x00, 0x00
__zsave_di:
    db 0x00, 0x00
__zsave_sp:
    db 0x00, 0x00
__zsave_bp:
    db 0x00, 0x00
__zsave_ret:
    db 0x00, 0x00

__zimage_end:
absolute __zimage_end
__zobss_90b6:
    resb 0x0002
__zobss_90b8:
    resb 0x028a
__zobss_9342:
    resb 0x0002
__zobss_9344:
    resb 0x028a
__zobss_95ce:
    resb 0x028a
__zobss_9858:
    resb 0x028a
__zobss_9ae2:
    resb 0x0002
__zobss_9ae4:
    resb 0x0002
__zobss_9ae6:
    resb 0x0002
__zobss_9ae8:
    resb 0x0002
__zobss_9aea:
    resb 0x0002
__zobss_9aec:
    resb 0x0002
__zobss_9aee:
    resb 0x0002
__zobss_9af0:
    resb 0x0002
__zobss_9af2:
    resb 0x0002
__zobss_9af4:
    resb 0x0002
__zobss_9af6:
    resb 0x0002
__zobss_9af8:
    resb 0x0002
__zobss_9afa:
    resb 0x0002
__zobss_9afc:
    resb 0x0002
__zobss_9afe:
    resb 0x0002
__zobss_9b00:
    resb 0x0002
__zobss_9b02:
    resb 0x0002
__zobss_9b04:
    resb 0x0002
__zobss_9b06:
    resb 0x0002
__zobss_9b08:
    resb 0x0002
__zobss_9b0a:
    resb 0x0002
__zobss_9b0c:
    resb 0x0052
__zobss_9b5e:
    resb 0x0232
__zobss_9d90:
    resb 0x0004
__zobss_end:
