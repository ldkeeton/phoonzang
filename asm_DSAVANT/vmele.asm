; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vmele.inc"
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
    dw (__zdata_start - __zcode_start)           ; 0x3765 ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x001e ; o_dsize: initialized data size
    dw 0x001a                                    ; o_bss: uninitialized data size
    dw string_loc_QTKS - IMAGE_BASE + __zres_end ; 0x8757 ; o_entry: overlay entry offset (CS)

__zcode_start:

loc_NHKP:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    mov word [bss_90b6], 5           ; 0x0014
    mov word [bss_90b8], 0           ; 0x001a
    mov word [bss_90ba], 0           ; 0x0020
    mov word [bss_90bc], 0           ; 0x0026
    cmp word [bss_830a], byte 0x0a   ; 0x002c
    jne short @..loc_NHKP.l1         ; 0x0031
    call loc_KQPM                    ; 0x0033
@..loc_NHKP.l1:
    cmp word [bss_830a], byte 0x0e   ; 0x0036
    jne short @..loc_NHKP.l2         ; 0x003b
    call api_idx_0056_KGVT           ; 0x003d
@..loc_NHKP.l2:
    cmp word [bss_830a], byte 0x0b   ; 0x0040
    jne short @..loc_NHKP.l3         ; 0x0045
    call api_idx_0002_IMMM           ; 0x0047
@..loc_NHKP.l3:
    mov ax, 0                        ; 0x004a
    ret                              ; 0x004d
%include "lib/api_idx_0008_IUTV.asm"     ; 0x004e

%include "vmele/api_idx_0004_ONLJ.asm"     ; 0x0102

%include "vmele/api_idx_0008_VRLU.asm"     ; 0x0164

%include "lib/api_idx_000a_TPMU.asm"     ; 0x0244

%include "lib/api_idx_0004_NJJP.asm"     ; 0x02c2

%include "vmele/api_idx_000c_SLOL.asm"     ; 0x030a

%include "vmele/api_idx_0004_QVKG.asm"     ; 0x03b9

%include "vmele/api_idx_00a8_VRUG.asm"     ; 0x041d

%include "vmele/api_idx_005e_VIRO.asm"     ; 0x0649

%include "vmele/asm_only/api_idx_0008_GGLM.asm"     ; 0x07ad

%include "vmele/api_idx_0004_MGIN.asm"     ; 0x0c67

%include "vmele/api_idx_000a_NJRP.asm"     ; 0x0f95

%include "vmele/api_idx_000c_JPIH.asm"     ; 0x11b0

%include "vmele/api_idx_000e_SPRI.asm"     ; 0x12ac

%include "vmele/asm_only/api_idx_005c_KOIV.asm"     ; 0x14e6

%include "lib/loc_VRUN.asm"              ; 0x16d1

%include "vmele/api_idx_0006_JLTG.asm"     ; 0x1713

%include "vmele/api_idx_0004_RVQN.asm"     ; 0x17ad

%include "vmele/asm_only/api_idx_0014_PSTK.asm"     ; 0x1844

%include "vmele/loc_VJRJ.asm"              ; 0x1a16

%include "vmele/loc_IOOV.asm"              ; 0x1f39

%include "vmele/api_idx_000e_IIQQ.asm"     ; 0x2138

%include "lib/api_idx_0004_HHQR.asm"     ; 0x245b

%include "vmele/api_idx_001c_KTJV.asm"     ; 0x2565

%include "lib/api_idx_000e_SVUU.asm"     ; 0x27ab

%include "lib/loc_MLTS.asm"              ; 0x28a0

%include "vmele/api_idx_0002_JUSU.asm"     ; 0x28fc

%include "vmele/loc_JROU.asm"              ; 0x299f

%include "vmele/api_idx_000c_NPUK.asm"     ; 0x29c5

%include "vmele/loc_SKOS.asm"              ; 0x2b19

%include "vmele/api_idx_0006_VSSG.asm"     ; 0x2b78

%include "vmele/loc_RHMS.asm"              ; 0x2cc7

%include "vmele/api_idx_005a_PGKO.asm"     ; 0x2cde

%include "vmele/api_idx_0004_SGTV.asm"     ; 0x2ec4

%include "vmele/api_idx_0008_VGQJ.asm"     ; 0x306a

%include "vmele/io_loc_SILV_309d.asm"      ; 0x309d

%include "vmele/io_loc_SILV_30ab.asm"      ; 0x30ab

%include "vmele/io_loc_RIKT_30b9.asm"      ; 0x30b9

%include "vmele/io_loc_RIKT_30c7.asm"      ; 0x30c7

%include "vmele/io_loc_NNIU.asm"           ; 0x30d5

%include "vmele/io_loc_TRGR.asm"           ; 0x30e3

%include "vmele/api_idx_0056_KGVT.asm"     ; 0x31a1

%include "vmele/loc_TSON.asm"              ; 0x331c

%include "vmele/api_idx_0004_MRMJ.asm"     ; 0x3390

%include "vmele/loc_KQPM.asm"              ; 0x33df

%include "vmele/api_idx_0002_IMMM.asm"     ; 0x36b8

%include "vmele/asm_only/string_loc_QTKS.asm"       ; 0x3710

%include "vmele/asm_only/string_loc_QKQH.asm"       ; 0x374e

__zdata_start:

    db 'MON00.PIC', 0
    db 0x20, 0x00
    db 'VM1.$$$', 0
    times 10 db 0


__zimage_end:
