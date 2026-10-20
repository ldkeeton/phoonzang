; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vmext.inc"
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

%include "shared/loc_MPHO.asm"              ; 0x00b6

%include "shared/api_idx_0004_QVPP.asm"     ; 0x00f0

%include "shared/api_idx_0002_KQPU.asm"     ; 0x01ac

%include "vmext/api_idx_0002_OTTG.asm"     ; 0x021c

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_90a5 equ __zdseg_end + 0x000d
dseg_90b2 equ __zdseg_end + 0x001a
dseg_90bf equ __zdseg_end + 0x0027
dseg_90cc equ __zdseg_end + 0x0034
dseg_90d9 equ __zdseg_end + 0x0041
dseg_90e6 equ __zdseg_end + 0x004e
dseg_90f3 equ __zdseg_end + 0x005b
dseg_9100 equ __zdseg_end + 0x0068
dseg_910d equ __zdseg_end + 0x0075
dseg_911a equ __zdseg_end + 0x0082
dseg_9127 equ __zdseg_end + 0x008f
dseg_9134 equ __zdseg_end + 0x009c
dseg_9141 equ __zdseg_end + 0x00a9
dseg_914e equ __zdseg_end + 0x00b6
dseg_915b equ __zdseg_end + 0x00c3
dseg_9168 equ __zdseg_end + 0x00d0
; bss_9180  equ __zdseg_end + (__zobss_9180 - __zdata_start)
bss_9188  equ __zdseg_end + (__zobss_9188 - __zdata_start)
%include "vmext/api_idx_0002_VNLG.asm"     ; 0x0262

%include "shared/loc_QQOI.asm"              ; 0x059a

%include "vmext/loc_IJSN.asm"              ; 0x05c0

%include "vmext/api_idx_0004_KQNK.asm"     ; 0x05e6

%include "vmext/loc_VJNU.asm"              ; 0x0636

%include "shared/loc_IVLM.asm"              ; 0x0692

loc_NJKS.loc1 equ loc_GPIH
loc_NJKS.loc2 equ loc_MMMO
%include "shared/loc_NJKS.asm"              ; 0x06c3

%include "shared/api_idx_0008_OMTP.asm"     ; 0x0764

%include "vmext/api_idx_0050_GORG.asm"     ; 0x081a

%include "vmext/loc_NHMQ.asm"              ; 0x0836

bss_918a equ __zdseg_end + (__zobss_918a - __zdata_start)
loc_HILS.bss1 equ bss_918a
%include "shared/loc_HILS.asm"              ; 0x0860

%include "vmext/api_idx_0004_JIVL.asm"     ; 0x0897

; bss_918a equ __zdseg_end + (__zobss_918a - __zdata_start)
%include "vmext/api_idx_000c_RMGQ.asm"     ; 0x09be

%include "vmext/api_idx_0002_JSVP.asm"     ; 0x0b49

%include "vmext/api_idx_000a_NPNK.asm"     ; 0x0b8c

%include "vmext/loc_VUVO.asm"              ; 0x0c0d

%include "vmext/api_idx_008a_SRHN.asm"     ; 0x0c1f

%include "vmext/loc_TLQV.asm"              ; 0x0eac

%include "vmext/api_idx_0012_VNOV.asm"     ; 0x0ee0

%include "shared/api_idx_004c_RQSO.asm"     ; 0x1356

%include "shared/api_idx_0004_ONJT.asm"     ; 0x146b

%include "shared/api_idx_0006_TMNI.asm"     ; 0x14c7

%include "vmext/api_idx_0008_OTKN.asm"     ; 0x151e

%include "vmext/loc_HTTH.asm"              ; 0x15af

; bss_9188 equ __zdseg_end + (__zobss_9188 - __zdata_start)
loc_GPIH.bss1 equ bss_9188
%include "shared/loc_GPIH.asm"              ; 0x1823

; bss_9188 equ __zdseg_end + (__zobss_9188 - __zdata_start)
loc_MMMO.bss1 equ bss_9188
%include "shared/loc_MMMO.asm"              ; 0x189b

bss_91a4 equ __zdseg_end + (__zobss_91a4 - __zdata_start)
%include "vmext/loc_UMHI_1913.asm"         ; 0x1913

; bss_91a4 equ __zdseg_end + (__zobss_91a4 - __zdata_start)
%include "vmext/loc_LPLI_1927.asm"         ; 0x1927

bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
%include "vmext/loc_UMHI_193b.asm"         ; 0x193b

; bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
%include "vmext/loc_LPLI_194f.asm"         ; 0x194f

%include "vmext/loc_VOSO.asm"              ; 0x1963

%include "vmext/loc_RRJG.asm"              ; 0x19e4

; bss_9188 equ __zdseg_end + (__zobss_9188 - __zdata_start)
bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_91aa equ __zdseg_end + (__zobss_91aa - __zdata_start)
%include "vmext/api_idx_0008_UNPO.asm"     ; 0x1a1d

; bss_9188 equ __zdseg_end + (__zobss_9188 - __zdata_start)
; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
; bss_91aa equ __zdseg_end + (__zobss_91aa - __zdata_start)
%include "vmext/api_idx_0008_LUNN.asm"     ; 0x1e4f

bss_92f2 equ __zdseg_end + (__zobss_92f2 - __zdata_start)
bss_92f4 equ __zdseg_end + (__zobss_92f4 - __zdata_start)
%include "vmext/api_idx_0004_RTNM.asm"     ; 0x201b

; bss_91a4 equ __zdseg_end + (__zobss_91a4 - __zdata_start)
; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_9aec equ __zdseg_end + (__zobss_9aec - __zdata_start)
%include "vmext/api_idx_0010_NIMV.asm"     ; 0x2291

; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
%include "vmext/api_idx_0012_JLRR.asm"     ; 0x29e5

; bss_91a4 equ __zdseg_end + (__zobss_91a4 - __zdata_start)
; bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_91ac equ __zdseg_end + (__zobss_91ac - __zdata_start)
bss_91c5 equ __zdseg_end + (__zobss_91c5 - __zdata_start)
bss_91f7 equ __zdseg_end + (__zobss_91f7 - __zdata_start)
bss_9210 equ __zdseg_end + (__zobss_9210 - __zdata_start)
bss_9242 equ __zdseg_end + (__zobss_9242 - __zdata_start)
bss_9274 equ __zdseg_end + (__zobss_9274 - __zdata_start)
bss_928e equ __zdseg_end + (__zobss_928e - __zdata_start)
bss_92c0 equ __zdseg_end + (__zobss_92c0 - __zdata_start)
%include "vmext/api_idx_0012_STJU.asm"     ; 0x30f4

%include "shared/api_idx_0016_LHKK.asm"     ; 0x39e2

%include "shared/api_idx_0024_NUGL.asm"     ; 0x3b83

%include "shared/api_idx_001e_IGLM.asm"     ; 0x3d29

; bss_9188 equ __zdseg_end + (__zobss_9188 - __zdata_start)
; bss_91a4 equ __zdseg_end + (__zobss_91a4 - __zdata_start)
; bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
; bss_91aa equ __zdseg_end + (__zobss_91aa - __zdata_start)
; bss_91ac equ __zdseg_end + (__zobss_91ac - __zdata_start)
bss_91b8 equ __zdseg_end + (__zobss_91b8 - __zdata_start)
; bss_91c5 equ __zdseg_end + (__zobss_91c5 - __zdata_start)
bss_91de equ __zdseg_end + (__zobss_91de - __zdata_start)
; bss_91f7 equ __zdseg_end + (__zobss_91f7 - __zdata_start)
; bss_9210 equ __zdseg_end + (__zobss_9210 - __zdata_start)
; bss_9242 equ __zdseg_end + (__zobss_9242 - __zdata_start)
; bss_9274 equ __zdseg_end + (__zobss_9274 - __zdata_start)
; bss_928e equ __zdseg_end + (__zobss_928e - __zdata_start)
; bss_92c0 equ __zdseg_end + (__zobss_92c0 - __zdata_start)
; bss_92f2 equ __zdseg_end + (__zobss_92f2 - __zdata_start)
; bss_92f4 equ __zdseg_end + (__zobss_92f4 - __zdata_start)
; bss_9aec equ __zdseg_end + (__zobss_9aec - __zdata_start)
bss_9aee equ __zdseg_end + (__zobss_9aee - __zdata_start)
bss_9b08 equ __zdseg_end + (__zobss_9b08 - __zdata_start)
bss_9b0a equ __zdseg_end + (__zobss_9b0a - __zdata_start)
bss_9b0c equ __zdseg_end + (__zobss_9b0c - __zdata_start)
bss_9b0e equ __zdseg_end + (__zobss_9b0e - __zdata_start)
bss_9b10 equ __zdseg_end + (__zobss_9b10 - __zdata_start)
bss_9b12 equ __zdseg_end + (__zobss_9b12 - __zdata_start)
bss_9b14 equ __zdseg_end + (__zobss_9b14 - __zdata_start)
bss_9b16 equ __zdseg_end + (__zobss_9b16 - __zdata_start)
bss_9b18 equ __zdseg_end + (__zobss_9b18 - __zdata_start)
bss_9b1a equ __zdseg_end + (__zobss_9b1a - __zdata_start)
%include "vmext/api_idx_0030_MLHO.asm"     ; 0x3e8c

loc_IONR.api_idx1 equ api_idx_0030_MLHO
%include "shared/loc_IONR.asm"              ; 0x51fb

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_9180 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec_ovbgn.asm"           ; 0x521b

__zdseg_9098:
__zdata_start:
    dec bp                           ; 0x5259
    inc cx                           ; 0x525a
    pop dx                           ; 0x525b
    inc bp                           ; 0x525c
    inc sp                           ; 0x525d
    inc cx                           ; 0x525e
    push sp                          ; 0x525f
    inc cx                           ; 0x5260
    cs push si                       ; 0x5261
    inc di                           ; 0x5263
    inc cx                           ; 0x5264
    add byte [bx + 0x41], dl         ; 0x5265
    push sp                          ; 0x5268
    push dx                          ; 0x5269
    inc sp                           ; 0x526a
    inc cx                           ; 0x526b
    push sp                          ; 0x526c
    inc cx                           ; 0x526d
    cs push si                       ; 0x526e
    inc di                           ; 0x5270
    inc cx                           ; 0x5271
    add byte [si + 0x52], dl         ; 0x5272
    inc bp                           ; 0x5275
    inc bp                           ; 0x5276
    inc sp                           ; 0x5277
    inc cx                           ; 0x5278
    push sp                          ; 0x5279
    inc cx                           ; 0x527a
    cs push si                       ; 0x527b
    inc di                           ; 0x527d
    inc cx                           ; 0x527e
    add byte [bx + 0x54], cl         ; 0x527f
    push di                          ; 0x5282
    dec si                           ; 0x5283
    inc sp                           ; 0x5284
    inc cx                           ; 0x5285
    push sp                          ; 0x5286
    inc cx                           ; 0x5287
    cs push si                       ; 0x5288
    inc di                           ; 0x528a
    inc cx                           ; 0x528b
    add byte [si + 0x49], dl         ; 0x528c
    dec sp                           ; 0x528f
    inc bp                           ; 0x5290
    inc sp                           ; 0x5291
    inc cx                           ; 0x5292
    push sp                          ; 0x5293
    inc cx                           ; 0x5294
    cs push si                       ; 0x5295
    inc di                           ; 0x5297
    inc cx                           ; 0x5298
    add byte [si + 0x4f], dl         ; 0x5299
    push di                          ; 0x529c
    dec si                           ; 0x529d
    inc sp                           ; 0x529e
    inc cx                           ; 0x529f
    push sp                          ; 0x52a0
    inc cx                           ; 0x52a1
    cs push si                       ; 0x52a2
    inc di                           ; 0x52a4
    inc cx                           ; 0x52a5
    add byte [bx + 0x54], cl         ; 0x52a6
    push di                          ; 0x52a9
    dec si                           ; 0x52aa
    inc sp                           ; 0x52ab
    inc cx                           ; 0x52ac
    push sp                          ; 0x52ad
    inc cx                           ; 0x52ae
    cs push si                       ; 0x52af
    inc di                           ; 0x52b1
    inc cx                           ; 0x52b2
    add byte [bx + 0x41], dl         ; 0x52b3
    push sp                          ; 0x52b6
    push dx                          ; 0x52b7
    inc sp                           ; 0x52b8
    inc cx                           ; 0x52b9
    push sp                          ; 0x52ba
    inc cx                           ; 0x52bb
    cs push si                       ; 0x52bc
    inc di                           ; 0x52be
    inc cx                           ; 0x52bf
    add byte [si + 0x49], dl         ; 0x52c0
    dec sp                           ; 0x52c3
    inc bp                           ; 0x52c4
    inc sp                           ; 0x52c5
    inc cx                           ; 0x52c6
    push sp                          ; 0x52c7
    inc cx                           ; 0x52c8
    cs push si                       ; 0x52c9
    inc di                           ; 0x52cb
    inc cx                           ; 0x52cc
    add byte [si + 0x52], dl         ; 0x52cd
    inc bp                           ; 0x52d0
    inc bp                           ; 0x52d1
    inc sp                           ; 0x52d2
    inc cx                           ; 0x52d3
    push sp                          ; 0x52d4
    inc cx                           ; 0x52d5
    cs push si                       ; 0x52d6
    inc di                           ; 0x52d8
    inc cx                           ; 0x52d9
    add byte [bx + 0x43], cl         ; 0x52da
    inc cx                           ; 0x52dd
    push si                          ; 0x52de
    inc sp                           ; 0x52df
    inc cx                           ; 0x52e0
    push sp                          ; 0x52e1
    inc cx                           ; 0x52e2
    cs push si                       ; 0x52e3
    inc di                           ; 0x52e5
    inc cx                           ; 0x52e6
    add byte [bp + di + 0x41], al    ; 0x52e7
    push si                          ; 0x52ea
    inc bp                           ; 0x52eb
    inc sp                           ; 0x52ec
    inc cx                           ; 0x52ed
    push sp                          ; 0x52ee
    inc cx                           ; 0x52ef
    cs push si                       ; 0x52f0
    inc di                           ; 0x52f2
    inc cx                           ; 0x52f3
    add byte [bx + 0x43], cl         ; 0x52f4
    inc cx                           ; 0x52f7
    push si                          ; 0x52f8
    inc sp                           ; 0x52f9
    inc cx                           ; 0x52fa
    push sp                          ; 0x52fb
    inc cx                           ; 0x52fc
    cs push si                       ; 0x52fd
    inc di                           ; 0x52ff
    inc cx                           ; 0x5300
    add byte [bx + 0x41], dl         ; 0x5301
    push sp                          ; 0x5304
    push dx                          ; 0x5305
    inc sp                           ; 0x5306
    inc cx                           ; 0x5307
    push sp                          ; 0x5308
    inc cx                           ; 0x5309
    cs push si                       ; 0x530a
    inc di                           ; 0x530c
    inc cx                           ; 0x530d
    add byte [si + 0x52], dl         ; 0x530e
    inc bp                           ; 0x5311
    inc bp                           ; 0x5312
    inc sp                           ; 0x5313
    inc cx                           ; 0x5314
    push sp                          ; 0x5315
    inc cx                           ; 0x5316
    cs push si                       ; 0x5317
    inc di                           ; 0x5319
    inc cx                           ; 0x531a
    add byte [bx + 0x54], cl         ; 0x531b
    push di                          ; 0x531e
    dec si                           ; 0x531f
    inc sp                           ; 0x5320
    inc cx                           ; 0x5321
    push sp                          ; 0x5322
    inc cx                           ; 0x5323
    cs push si                       ; 0x5324
    inc di                           ; 0x5326
    inc cx                           ; 0x5327
    add byte [bx + 0x41], dl         ; 0x5328
    push sp                          ; 0x532b
    push dx                          ; 0x532c
    inc sp                           ; 0x532d
    inc cx                           ; 0x532e
    push sp                          ; 0x532f
    inc cx                           ; 0x5330
    cs push si                       ; 0x5331
    inc di                           ; 0x5333
    inc cx                           ; 0x5334
    add byte [bx + si], al           ; 0x5335
__zsave_si:
    add byte [bx + si], al           ; 0x5337
__zsave_di:
    add byte [bx + si], al           ; 0x5339
__zsave_sp:
    add byte [bx + si], al           ; 0x533b
__zsave_bp:
    add byte [bx + si], al           ; 0x533d
__zsave_ret:
    add byte [bx + si], al           ; 0x533f

__zimage_end:
absolute __zimage_end
__zobss_9180:
    resb 0x0008
__zobss_9188:
    resb 0x0002
__zobss_918a:
    resb 0x001a
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
