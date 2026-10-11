%include "inc/structs/structs.inc"
%include "inc/structs/loc_416c.inc"
org 0
bits 16
%include "inc/labels/vmaze_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2      ; o_magic: overlay signature (0x00f2)
    dw 0x5055      ; o_corg: code load origin (memory offset)
    dw 0xac60      ; o_csize: code size in bytes
    dw 0x9098      ; o_dorg: data load origin (memory offset)
    dw 0x00fa      ; o_dsize: initialized data size
    dw 0x0c94      ; o_bss: uninitialized data size
    dw 0xfc77      ; o_entry: overlay entry offset (CS)

fpu_loc_06b5 equ 0x06b5
loc_3405 equ 0x3405
loc_3a2f equ 0x3a2f
loc_416c equ 0x416c
data_59fa equ 0x59fa
data_8d12 equ 0x8d12
data_905a equ 0x905a
data_91a6 equ 0x91a6
data_91b2 equ 0x91b2
data_91d4 equ 0x91d4
data_9b48 equ 0x9b48
data_9b4c equ 0x9b4c
dseg_0002 equ 0x0002
dseg_010e equ 0x010e
dseg_0112 equ 0x0112
dseg_03ae equ 0x03ae
dseg_03dc equ 0x03dc
bss_0e0e equ 0x0e0e
bss_0e10 equ 0x0e10
bss_0e12 equ 0x0e12
bss_0e14 equ 0x0e14
bss_0e16 equ 0x0e16
bss_0e18 equ 0x0e18
bss_0e1a equ 0x0e1a
bss_0e1c equ 0x0e1c
bss_100a equ 0x100a
bss_5216 equ 0x5216
bss_590e equ 0x590e
bss_5910 equ 0x5910
bss_5988 equ 0x5988
bss_598c equ 0x598c
bss_598e equ 0x598e
bss_59fa equ 0x59fa
bss_5b3e equ 0x5b3e
bss_5b55 equ 0x5b55
bss_5b6c equ 0x5b6c
bss_5b6e equ 0x5b6e
bss_5b70 equ 0x5b70
bss_69c8 equ 0x69c8
bss_7abe equ 0x7abe
bss_7b05 equ 0x7b05
bss_7d3c equ 0x7d3c
bss_82e8 equ 0x82e8
bss_82ea equ 0x82ea
bss_82ec equ 0x82ec
bss_82ee equ 0x82ee
bss_82fe equ 0x82fe
bss_8300 equ 0x8300
bss_830a equ 0x830a
bss_830c equ 0x830c
bss_831a equ 0x831a
bss_844c equ 0x844c
bss_844e equ 0x844e
bss_8450 equ 0x8450
bss_8452 equ 0x8452
bss_8456 equ 0x8456
bss_845a equ 0x845a
bss_8460 equ 0x8460
bss_84a0 equ 0x84a0
bss_8809 equ 0x8809
bss_880a equ 0x880a
bss_8aac equ 0x8aac
bss_8af0 equ 0x8af0
bss_8d06 equ 0x8d06
bss_8d08 equ 0x8d08
bss_8d0e equ 0x8d0e
bss_8d10 equ 0x8d10
bss_8d12 equ 0x8d12
bss_8f14 equ 0x8f14
bss_8f16 equ 0x8f16
bss_8f18 equ 0x8f18
bss_8f1a equ 0x8f1a
bss_8f1c equ 0x8f1c
bss_8f1e equ 0x8f1e
bss_8f20 equ 0x8f20
bss_8f22 equ 0x8f22
bss_8f24 equ 0x8f24
bss_8f28 equ 0x8f28
bss_8f2a equ 0x8f2a
bss_8f2c equ 0x8f2c
bss_8f2e equ 0x8f2e
bss_8f30 equ 0x8f30
bss_8f32 equ 0x8f32
bss_8f34 equ 0x8f34
bss_8f36 equ 0x8f36
bss_8f38 equ 0x8f38
bss_8f3a equ 0x8f3a
bss_8f3c equ 0x8f3c
bss_8f3e equ 0x8f3e
bss_8f40 equ 0x8f40
bss_8f42 equ 0x8f42
bss_8f44 equ 0x8f44
bss_8f46 equ 0x8f46
bss_8f48 equ 0x8f48
bss_905a equ 0x905a
bss_905e equ 0x905e
bss_9068 equ 0x9068
bss_906a equ 0x906a
bss_906c equ 0x906c
bss_908a equ 0x908a
bss_908c equ 0x908c
dseg_9188 equ 0x9188
dseg_918a equ 0x918a
dseg_918c equ 0x918c
dseg_918e equ 0x918e
dseg_9190 equ 0x9190
bss_9192 equ 0x9192
bss_9194 equ 0x9194
bss_9196 equ 0x9196
bss_9198 equ 0x9198
bss_919a equ 0x919a
bss_919c equ 0x919c
bss_919e equ 0x919e
bss_91a6 equ 0x91a6
bss_91a8 equ 0x91a8
bss_91aa equ 0x91aa
bss_91ac equ 0x91ac
bss_91ae equ 0x91ae
bss_91b0 equ 0x91b0
bss_91b2 equ 0x91b2
bss_91b4 equ 0x91b4
bss_91d0 equ 0x91d0
bss_91d2 equ 0x91d2
bss_91d4 equ 0x91d4
bss_91d6 equ 0x91d6
bss_91e4 equ 0x91e4
bss_931e equ 0x931e
bss_9b18 equ 0x9b18
bss_9b34 equ 0x9b34
bss_9b36 equ 0x9b36
bss_9b38 equ 0x9b38
bss_9b3a equ 0x9b3a
bss_9b3c equ 0x9b3c
bss_9b3e equ 0x9b3e
bss_9b40 equ 0x9b40
bss_9b42 equ 0x9b42
bss_9b44 equ 0x9b44
bss_9b46 equ 0x9b46
bss_9b48 equ 0x9b48
bss_9b4a equ 0x9b4a
bss_9b4c equ 0x9b4c
bss_9b4e equ 0x9b4e
bss_9b50 equ 0x9b50
bss_9bd0 equ 0x9bd0
bss_9bdc equ 0x9bdc
bss_9bde equ 0x9bde
bss_9be6 equ 0x9be6
bss_9c00 equ 0x9c00
bss_bd44 equ 0xbd44

%include "vmaze/api_idx_0002.asm"

%include "vmaze/api_idx_0002_2.asm"

%include "vmaze/api_idx_0008.asm"

%include "vmaze/api_idx_0002_3.asm"

%include "vmaze/api_idx_0002_4.asm"

%include "vmaze/api_idx_0002_5.asm"

%include "vmaze/leaf_loc_03fb.asm"

%include "vmaze/leaf_loc_0402.asm"

%include "vmaze/leaf_loc_0409.asm"

%include "vmaze/api_idx_0014.asm"

%include "vmaze/api_idx_0006.asm"

%include "vmaze/api_idx_0002_6.asm"

%include "vmaze/api_idx_0002_7.asm"

%include "vmaze/api_idx_000c.asm"

%include "vmaze/api_idx_0002_8.asm"

%include "vmaze/api_idx_0006_2.asm"

%include "vmaze/api_idx_0008_2.asm"

%include "vmaze/api_idx_0050.asm"

%include "vmaze/api_idx_0002_9.asm"

%include "vmaze/api_idx_0002_10.asm"

%include "vmaze/api_idx_0004.asm"

%include "vmaze/api_idx_0004_2.asm"

%include "vmaze/api_idx_0004_3.asm"

%include "vmaze/api_idx_000e.asm"

%include "vmaze/api_idx_0004_4.asm"

%include "vmaze/api_idx_000a.asm"

%include "vmaze/fpu_loc_1997.asm"

%include "vmaze/fpu_loc_199e.asm"

%include "vmaze/fpu_loc_19a5.asm"

%include "vmaze/fpu_loc_19ac.asm"

%include "vmaze/fpu_loc_19b3.asm"

%include "vmaze/fpu_loc_19ba.asm"

%include "vmaze/api_idx_0018.asm"

%include "vmaze/api_idx_0010.asm"

%include "vmaze/api_idx_0006_3.asm"

%include "vmaze/api_idx_0006_4.asm"

%include "vmaze/api_idx_0022.asm"

%include "vmaze/api_idx_0008_3.asm"

%include "vmaze/api_idx_0008_4.asm"

%include "vmaze/api_idx_0004_5.asm"

%include "vmaze/api_idx_0010_2.asm"

%include "vmaze/api_idx_0012.asm"

%include "vmaze/api_idx_0012_2.asm"

%include "vmaze/api_idx_0016.asm"

%include "vmaze/api_idx_0024.asm"

%include "vmaze/api_idx_001e.asm"

%include "vmaze/api_idx_0030.asm"

%include "vmaze/api_idx_0004_6.asm"

%include "vmaze/api_idx_0002_11.asm"

%include "vmaze/api_idx_0006_5.asm"

%include "vmaze/api_idx_0004_7.asm"

%include "vmaze/api_idx_000a_2.asm"

%include "vmaze/api_idx_0004_8.asm"

%include "vmaze/api_idx_0090.asm"

%include "vmaze/api_idx_0004_9.asm"

%include "vmaze/api_idx_0002_12.asm"

%include "vmaze/api_idx_001e_2.asm"

%include "vmaze/api_idx_0004_10.asm"

%include "vmaze/api_idx_0002_13.asm"

%include "vmaze/api_idx_0004_11.asm"

%include "vmaze/api_idx_0050_2.asm"

%include "vmaze/api_idx_0004_12.asm"

%include "vmaze/api_idx_0006_6.asm"

%include "vmaze/api_idx_001c.asm"

%include "vmaze/api_idx_000a_3.asm"

%include "vmaze/api_idx_0004_13.asm"

%include "vmaze/api_idx_0002_14.asm"

%include "vmaze/api_idx_0018_2.asm"

%include "vmaze/api_idx_000a_4.asm"

%include "vmaze/api_idx_001e_3.asm"

%include "vmaze/api_idx_000e_2.asm"

%include "vmaze/api_idx_0010_3.asm"

%include "vmaze/api_idx_0004_14.asm"

%include "vmaze/api_idx_000e_3.asm"

%include "vmaze/api_idx_0012_3.asm"

%include "vmaze/api_idx_0002_15.asm"

%include "vmaze/api_idx_000c_2.asm"

%include "vmaze/api_idx_0002_16.asm"

%include "vmaze/api_idx_0002_17.asm"

%include "vmaze/api_idx_0006_7.asm"

%include "vmaze/api_idx_000a_5.asm"

%include "vmaze/api_idx_0002_18.asm"

%include "vmaze/api_idx_0002_19.asm"

%include "vmaze/api_idx_0002_20.asm"

%include "vmaze/api_idx_0002_21.asm"

%include "vmaze/api_idx_0048.asm"

%include "vmaze/api_idx_0006_8.asm"

%include "vmaze/api_idx_0002_22.asm"

%include "vmaze/api_idx_003a.asm"

%include "vmaze/api_idx_0004_15.asm"

%include "vmaze/api_idx_0002_23.asm"

%include "vmaze/api_idx_0002_24.asm"

%include "vmaze/api_idx_0006_9.asm"

%include "vmaze/api_idx_0010_4.asm"

%include "vmaze/api_idx_0004_16.asm"

%include "vmaze/api_idx_0012_4.asm"

%include "vmaze/api_idx_0002_25.asm"

%include "vmaze/api_idx_0010_5.asm"

%include "vmaze/api_idx_0008_5.asm"

%include "vmaze/api_idx_0002_26.asm"

%include "vmaze/api_idx_0002_27.asm"

%include "vmaze/api_idx_0032.asm"

loc_ac30:
    pop word [dseg_9190]             ; 0xac30
    pop cx                           ; 0xac34
    mov word [dseg_918c], sp         ; 0xac35
    mov word [dseg_918e], bp         ; 0xac39
    mov word [dseg_9188], si         ; 0xac3d
    mov word [dseg_918a], di         ; 0xac41
    cld                              ; 0xac45
    mov di, bss_9192                 ; 0xac46
    mov cx, 0x9e26                   ; 0xac49
    sub cx, di                       ; 0xac4c
    shr cx, 1                        ; 0xac4e
    je short @..local.l121           ; 0xac50
    sub ax, ax                       ; 0xac52
    rep stosw                        ; 0xac54
@..local.l121:
    call api_idx_0002                ; 0xac56
    mov bp, word [dseg_918e]         ; 0xac59
    mov sp, word [dseg_918c]         ; 0xac5d
    mov si, word [dseg_9188]         ; 0xac61
    mov di, word [dseg_918a]         ; 0xac65
    push cx                          ; 0xac69
    jmp [dseg_9190]                  ; 0xac6a

    db 'VM1.$$$', 0
    db 'MAZEDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TOWNDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'CAVEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 0x00
    db '!%&]@#~', 0
    db 0x20
    times 11 db 0

