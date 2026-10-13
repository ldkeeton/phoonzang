%include "inc/structs/structs.inc"
%include "inc/structs/vmaze.inc"
org 0
bits 16
%include "labels/host_calls.inc"

%include "labels/host_values.inc"

%include "labels/host_data.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                          ; o_magic: overlay signature (0x00f2)
    dw 0x5055                          ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start) ; 0xac60 ; o_csize: code size in bytes
    dw __zdataseg_end                  ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)  ; 0x00fa ; o_dsize: initialized data size
    dw 0x0c94                          ; o_bss: uninitialized data size
    dw loc_ac30 - IMAGE_BASE + 0x5055  ; 0xfc77 ; o_entry: overlay entry offset (CS)

__zcode_start:
fpu_loc_06b5 equ 0x06b5
leaf_loc_4404 equ 0x4404
string_loc_4b6b equ 0x4b6b
loc_ab7d equ 0xab7d

%include "vmaze/api_idx_0002.asm"          ; 0x000e

%include "vmaze/api_idx_0002_2.asm"        ; 0x0106

%include "vmaze/api_idx_0008.asm"          ; 0x01c9

%include "vmaze/api_idx_0002_3.asm"        ; 0x02da

%include "vmaze/api_idx_0002_4.asm"        ; 0x02fe

%include "vmaze/api_idx_0002_5.asm"        ; 0x03ea

%include "vmaze/leaf_loc_03fb.asm"         ; 0x03fb

%include "vmaze/leaf_loc_0402.asm"         ; 0x0402

%include "vmaze/leaf_loc_0409.asm"         ; 0x0409

%include "vmaze/api_idx_0014.asm"          ; 0x06da

%include "vmaze/api_idx_0006.asm"          ; 0x0a6e

%include "vmaze/api_idx_0002_6.asm"        ; 0x0acc

%include "vmaze/api_idx_0002_7.asm"        ; 0x0b66

%include "vmaze/api_idx_000c.asm"          ; 0x0cb5

%include "vmaze/api_idx_0002_8.asm"        ; 0x0e5d

%include "vmaze/api_idx_0006_2.asm"        ; 0x0f8e

%include "vmaze/api_idx_0008_2.asm"        ; 0x0fde

%include "vmaze/api_idx_0050.asm"          ; 0x1094

%include "vmaze/api_idx_0002_9.asm"        ; 0x110e

%include "vmaze/api_idx_0002_10.asm"       ; 0x1206

%include "vmaze/api_idx_0004.asm"          ; 0x1308

%include "vmaze/api_idx_0004_2.asm"        ; 0x13f7

%include "vmaze/api_idx_0004_3.asm"        ; 0x1504

%include "vmaze/api_idx_000e.asm"          ; 0x162b

%include "vmaze/api_idx_0004_4.asm"        ; 0x17ee

%include "vmaze/api_idx_000a.asm"          ; 0x195c

%include "vmaze/fpu_loc_1997.asm"          ; 0x1997

%include "vmaze/fpu_loc_199e.asm"          ; 0x199e

%include "vmaze/fpu_loc_19a5.asm"          ; 0x19a5

%include "vmaze/fpu_loc_19ac.asm"          ; 0x19ac

%include "vmaze/fpu_loc_19b3.asm"          ; 0x19b3

%include "vmaze/fpu_loc_19ba.asm"          ; 0x19ba

%include "vmaze/api_idx_0018.asm"          ; 0x1c94

%include "vmaze/api_idx_0010.asm"          ; 0x2033

%include "vmaze/api_idx_0006_3.asm"        ; 0x20dc

%include "vmaze/api_idx_0006_4.asm"        ; 0x2133

%include "vmaze/api_idx_0022.asm"          ; 0x2215

%include "vmaze/api_idx_0008_3.asm"        ; 0x2f8e

%include "vmaze/leaf_loc_3241.asm"         ; 0x3241

%include "vmaze/leaf_loc_3249.asm"         ; 0x3249

%include "vmaze/leaf_loc_3251.asm"         ; 0x3251

%include "vmaze/leaf_loc_3259.asm"         ; 0x3259

%include "vmaze/leaf_loc_3261.asm"         ; 0x3261

%include "vmaze/leaf_loc_3270.asm"         ; 0x3270

%include "vmaze/leaf_loc_327f.asm"         ; 0x327f

%include "vmaze/leaf_loc_329a.asm"         ; 0x329a

%include "vmaze/leaf_loc_32b9.asm"         ; 0x32b9

%include "vmaze/leaf_loc_32d8.asm"         ; 0x32d8

%include "vmaze/leaf_loc_32e0.asm"         ; 0x32e0

%include "vmaze/leaf_loc_32e8.asm"         ; 0x32e8

%include "vmaze/leaf_loc_32fc.asm"         ; 0x32fc

%include "vmaze/leaf_loc_330f.asm"         ; 0x330f

%include "vmaze/leaf_loc_3325.asm"         ; 0x3325

%include "vmaze/leaf_loc_3343.asm"         ; 0x3343

%include "vmaze/api_idx_0008_4.asm"        ; 0x33c0

%include "vmaze/api_idx_0004_5.asm"        ; 0x358c

%include "vmaze/api_idx_0010_2.asm"        ; 0x3802

%include "vmaze/api_idx_0012.asm"          ; 0x3f56

%include "vmaze/leaf_loc_4431.asm"         ; 0x4431

%include "vmaze/leaf_loc_446b.asm"         ; 0x446b

%include "vmaze/leaf_loc_44ad.asm"         ; 0x44ad

%include "vmaze/leaf_loc_44f6.asm"         ; 0x44f6

%include "vmaze/leaf_loc_45c0.asm"         ; 0x45c0

%include "vmaze/api_idx_0012_2.asm"        ; 0x4665

%include "vmaze/string_loc_4b23.asm"       ; 0x4b23

%include "vmaze/string_loc_4b67.asm"       ; 0x4b67

%include "vmaze/string_loc_4b69.asm"       ; 0x4b69

%include "vmaze/api_idx_0016.asm"          ; 0x4f53

%include "vmaze/api_idx_0024.asm"          ; 0x50f4

%include "vmaze/api_idx_001e.asm"          ; 0x529a

%include "vmaze/api_idx_0030.asm"          ; 0x53fd

%include "vmaze/api_idx_0004_6.asm"        ; 0x67c6

%include "vmaze/api_idx_0002_11.asm"       ; 0x6882

%include "vmaze/api_idx_0006_5.asm"        ; 0x6960

%include "vmaze/api_idx_0004_7.asm"        ; 0x69d6

%include "vmaze/fpu_loc_6a57.asm"          ; 0x6a57

%include "vmaze/fpu_loc_6a7a.asm"          ; 0x6a7a

%include "vmaze/fpu_loc_6a85.asm"          ; 0x6a85

%include "vmaze/fpu_loc_6a97.asm"          ; 0x6a97

%include "vmaze/api_idx_000a_2.asm"        ; 0x6b0a

%include "vmaze/api_idx_0004_8.asm"        ; 0x6c0a

%include "vmaze/api_idx_0090.asm"          ; 0x6cc9

%include "vmaze/api_idx_0004_9.asm"        ; 0x6eb1

%include "vmaze/api_idx_0002_12.asm"       ; 0x7001

%include "vmaze/api_idx_001e_2.asm"        ; 0x7034

%include "vmaze/api_idx_0004_10.asm"       ; 0x72a6

%include "vmaze/api_idx_0002_13.asm"       ; 0x73b6

%include "vmaze/api_idx_0004_11.asm"       ; 0x744e

%include "vmaze/api_idx_0050_2.asm"        ; 0x74e2

%include "vmaze/api_idx_0004_12.asm"       ; 0x7542

%include "vmaze/api_idx_0006_6.asm"        ; 0x75ae

%include "vmaze/api_idx_001c.asm"          ; 0x764d

%include "vmaze/api_idx_000a_3.asm"        ; 0x784f

%include "vmaze/api_idx_0004_13.asm"       ; 0x799e

%include "vmaze/api_idx_0002_14.asm"       ; 0x7abe

%include "vmaze/api_idx_0018_2.asm"        ; 0x7b53

%include "vmaze/api_idx_000a_4.asm"        ; 0x7ce5

%include "vmaze/api_idx_001e_3.asm"        ; 0x7e46

%include "vmaze/api_idx_000e_2.asm"        ; 0x804e

%include "vmaze/api_idx_0010_3.asm"        ; 0x820b

%include "vmaze/api_idx_0004_14.asm"       ; 0x83b3

%include "vmaze/api_idx_000e_3.asm"        ; 0x8448

%include "vmaze/api_idx_0012_3.asm"        ; 0x8568

%include "vmaze/api_idx_0002_15.asm"       ; 0x86f9

%include "vmaze/api_idx_000c_2.asm"        ; 0x8794

%include "vmaze/fpu_loc_8925.asm"          ; 0x8925

%include "vmaze/fpu_loc_892e.asm"          ; 0x892e

%include "vmaze/fpu_loc_8934.asm"          ; 0x8934

%include "vmaze/fpu_loc_893a.asm"          ; 0x893a

%include "vmaze/fpu_loc_8943.asm"          ; 0x8943

%include "vmaze/fpu_loc_8948.asm"          ; 0x8948

%include "vmaze/fpu_loc_894d.asm"          ; 0x894d

%include "vmaze/fpu_loc_894f.asm"          ; 0x894f

%include "vmaze/fpu_loc_8954.asm"          ; 0x8954

%include "vmaze/fpu_loc_8959.asm"          ; 0x8959

%include "vmaze/fpu_loc_895e.asm"          ; 0x895e

%include "vmaze/fpu_loc_8960.asm"          ; 0x8960

%include "vmaze/fpu_loc_8962.asm"          ; 0x8962

%include "vmaze/fpu_loc_8967.asm"          ; 0x8967

%include "vmaze/fpu_loc_896c.asm"          ; 0x896c

%include "vmaze/fpu_loc_8971.asm"          ; 0x8971

%include "vmaze/fpu_loc_8976.asm"          ; 0x8976

%include "vmaze/api_idx_0002_16.asm"       ; 0x89d0

%include "vmaze/api_idx_0002_17.asm"       ; 0x8a14

%include "vmaze/api_idx_0006_7.asm"        ; 0x8b52

%include "vmaze/api_idx_000a_5.asm"        ; 0x8c47

%include "vmaze/api_idx_0002_18.asm"       ; 0x8de9

%include "vmaze/api_idx_0002_19.asm"       ; 0x8e6a

%include "vmaze/api_idx_0002_20.asm"       ; 0x8f1a

%include "vmaze/api_idx_0002_21.asm"       ; 0x8f94

%include "vmaze/api_idx_0048.asm"          ; 0x9029

%include "vmaze/api_idx_0006_8.asm"        ; 0x920f

%include "vmaze/api_idx_0002_22.asm"       ; 0x93ab

%include "vmaze/api_idx_003a.asm"          ; 0x94ef

%include "vmaze/api_idx_0004_15.asm"       ; 0x96ce

%include "vmaze/api_idx_0002_23.asm"       ; 0x98cc

%include "vmaze/api_idx_0002_24.asm"       ; 0x9920

%include "vmaze/api_idx_0006_9.asm"        ; 0x99dd

%include "vmaze/api_idx_0010_4.asm"        ; 0x9a80

%include "vmaze/api_idx_0004_16.asm"       ; 0x9e79

%include "vmaze/api_idx_0012_4.asm"        ; 0x9ef7

%include "vmaze/api_idx_0002_25.asm"       ; 0xa28c

%include "vmaze/api_idx_0010_5.asm"        ; 0xa2df

%include "vmaze/api_idx_0008_5.asm"        ; 0xa5ba

%include "vmaze/api_idx_0002_26.asm"       ; 0xa7b2

%include "vmaze/api_idx_0002_27.asm"       ; 0xa9a4

%include "vmaze/api_idx_0032.asm"          ; 0xab9b

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
    je short @..local.l89            ; 0xac50
    sub ax, ax                       ; 0xac52
    rep stosw                        ; 0xac54
@..local.l89:
    call api_idx_0002                ; 0xac56
    mov bp, word [dseg_918e]         ; 0xac59
    mov sp, word [dseg_918c]         ; 0xac5d
    mov si, word [dseg_9188]         ; 0xac61
    mov di, word [dseg_918a]         ; 0xac65
    push cx                          ; 0xac69
    jmp [dseg_9190]                  ; 0xac6a
__zdata_start:

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


__zimage_end:
