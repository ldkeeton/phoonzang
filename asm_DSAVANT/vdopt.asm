; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vdopt.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0x4721 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x001e ; o_dsize: initialized data size
    dw 0x0cde                             ; o_bss: uninitialized data size
    dw loc_46d9 - IMAGE_BASE + __zres_end ; 0x9720 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_238c equ 0x238c + VBASE

loc_000e:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_906a], byte 0      ; 0x0014
    je short @..loc_000e.l1          ; 0x0019
    mov ax, 1                        ; 0x001b
    push ax                          ; 0x001e
    push word [bss_9068]             ; 0x001f
    call ds_app_file_OVOQ            ; 0x0023
    add sp, byte 4                   ; 0x0026
    mov word [bss_906a], 0           ; 0x0029
@..loc_000e.l1:
    mov word [bss_90b6], 0           ; 0x002f
    mov word [bss_90b8], 0           ; 0x0035
    cmp word [bss_830a], byte 0x13   ; 0x003b
    jne short @..loc_000e.l2         ; 0x0040
    mov ax, 0xe                      ; 0x0042
    push ax                          ; 0x0045
    call ds_app_thunk_26_RNMG        ; 0x0046
    pop cx                           ; 0x0049
    mov ax, 1                        ; 0x004a
    push ax                          ; 0x004d
    mov ax, 2                        ; 0x004e
    push ax                          ; 0x0051
    call ds_app_file_UMGJ            ; 0x0052
    add sp, byte 4                   ; 0x0055
    mov ax, 2                        ; 0x0058
    push ax                          ; 0x005b
    mov ax, 3                        ; 0x005c
    push ax                          ; 0x005f
    call ds_app_file_UMGJ            ; 0x0060
    add sp, byte 4                   ; 0x0063
    push word [bss_8af0]             ; 0x0066
    call api_idx_0004_PROH           ; 0x006a
    pop cx                           ; 0x006d
    mov ax, 1                        ; 0x006e
    push ax                          ; 0x0071
    call ds_app_thunk_26_RNMG        ; 0x0072
    pop cx                           ; 0x0075
    mov ax, 2                        ; 0x0076
    push ax                          ; 0x0079
    call ds_app_thunk_26_RNMG        ; 0x007a
    pop cx                           ; 0x007d
    mov ax, 0xe                      ; 0x007e
    push ax                          ; 0x0081
    mov ax, 0                        ; 0x0082
    push ax                          ; 0x0085
    call ds_app_file_UMGJ            ; 0x0086
    add sp, byte 4                   ; 0x0089
@..loc_000e.l2:
    cmp word [bss_830a], byte 0x14   ; 0x008c
    jne short @..loc_000e.l3         ; 0x0091
    push word [bss_8af0]             ; 0x0093
    call api_idx_0094_MLQI           ; 0x0097
    pop cx                           ; 0x009a
@..loc_000e.l3:
    mov word [bss_830a], 5           ; 0x009b
    mov ax, 0                        ; 0x00a1
    ret                              ; 0x00a4
loc_00a5:
    mov ax, 0                        ; 0x00a5
    call aztec_csav                  ; 0x00a8
    mov bx, word [bss_0e14]          ; 0x00ab
    mov si, word [bp + 0x4]          ; 0x00af
    mov al, byte [bx + si + 0x490]   ; 0x00b2
    sub ah, ah                       ; 0x00b6
    cmp ax, word [bp + 0x6]          ; 0x00b8
    jg short @..loc_00a5.l1          ; 0x00bb
    add ax, strict word 7            ; 0x00bd
    cmp ax, word [bp + 0x6]          ; 0x00c0
    jl short @..loc_00a5.l1          ; 0x00c3
    mov al, byte [bx + si + 0x4a0]   ; 0x00c5
    sub ah, ah                       ; 0x00c9
    cmp ax, word [bp + 0x8]          ; 0x00cb
    jg short @..loc_00a5.l1          ; 0x00ce
    add ax, strict word 7            ; 0x00d0
    cmp ax, word [bp + 0x8]          ; 0x00d3
    jl short @..loc_00a5.l1          ; 0x00d6
    mov ax, si                       ; 0x00d8
    ret                              ; 0x00da
@..loc_00a5.l1:
    mov ax, 0xffff                   ; 0x00db
    ret                              ; 0x00de
%include "vdopt/api_idx_0004_HROJ.asm"     ; 0x00df

%include "lib/api_idx_0002_QNVQ.asm"     ; 0x019b

%include "vdopt/api_idx_002a_HVPS.asm"     ; 0x020b

%include "vdopt/api_idx_0004_JJIS.asm"     ; 0x02c3

%include "lib/api_idx_0006_IQJI.asm"     ; 0x030c

%include "vdopt/api_idx_0004_HVMV.asm"     ; 0x0382

%include "vdopt/api_idx_0002_QIHI.asm"     ; 0x0473

%include "vdopt/api_idx_0058_SHSP.asm"     ; 0x0565

%include "vdopt/api_idx_0002_JHUS.asm"     ; 0x065b

%include "vdopt/api_idx_000e_OJLJ.asm"     ; 0x06e8

%include "vdopt/api_idx_0014_KINH.asm"     ; 0x09c0

%include "vdopt/leaf_loc_PINL.asm"         ; 0x0d80

%include "vdopt/leaf_loc_GGVQ.asm"         ; 0x0d88

%include "vdopt/leaf_loc_QGNL.asm"         ; 0x0d90

%include "vdopt/leaf_loc_VUTS.asm"         ; 0x0d98

%include "vdopt/leaf_loc_TKPM.asm"         ; 0x0e80

%include "vdopt/leaf_loc_KMKJ.asm"         ; 0x0e88

%include "vdopt/leaf_loc_ILNG.asm"         ; 0x0e90

%include "vdopt/leaf_loc_RIRM.asm"         ; 0x0e98

%include "vdopt/api_idx_000a_GHUT.asm"     ; 0x0f7f

%include "vdopt/api_idx_0012_HLLG.asm"     ; 0x0fd3

%include "vdopt/leaf_loc_OUTG.asm"         ; 0x1499

%include "vdopt/api_idx_000a_RJLT.asm"     ; 0x190b

%include "vdopt/api_idx_0002_NNGI.asm"     ; 0x195b

%include "vdopt/api_idx_00fa_HKNG.asm"     ; 0x1a5d

%include "vdopt/asm_only/api_idx_0008_KGRN.asm"     ; 0x1ccf

%include "vdopt/api_idx_000c_JQSL.asm"     ; 0x238d

%include "lib/api_idx_000c_JKJK.asm"     ; 0x25a8

%include "lib/api_idx_0002_PGOV.asm"     ; 0x2627

%include "vdopt/api_idx_0004_JMRJ.asm"     ; 0x2682

%include "vdopt/api_idx_000a_IOVI.asm"     ; 0x26f3

%include "vdopt/api_idx_000c_TKNT.asm"     ; 0x285e

%include "vdopt/api_idx_0044_VUKV.asm"     ; 0x2988

%include "lib/api_idx_0008_IMMI.asm"     ; 0x362f

%include "lib/api_idx_0004_LNTS.asm"     ; 0x36bb

%include "lib/api_idx_0018_IRSN.asm"     ; 0x378c

%include "vdopt/api_idx_0004_PGLK.asm"     ; 0x3889

%include "vdopt/api_idx_0038_PUQK.asm"     ; 0x3a2c

%include "vdopt/api_idx_0094_MLQI.asm"     ; 0x417c

%include "vdopt/asm_only/api_idx_0004_PROH.asm"     ; 0x45dd

%include "vdopt/asm_only/leaf_loc_PNUR.asm"         ; 0x4717


__zimage_end:
