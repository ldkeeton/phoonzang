%include "inc/structs/structs.inc"
%include "inc/structs/loc_6e06.inc"
org 0
bits 16
%include "inc/labels/vmaze_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0008
%endif

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x60, 0xac, 0x98, 0x90

loc_0712 equ 0x0712
loc_0833 equ 0x0833
loc_088a equ 0x088a
loc_0918 equ 0x0918
loc_096c equ 0x096c
data_0e14 equ 0x0e14
loc_154d equ 0x154d
loc_2fd6 equ 0x2fd6
loc_3405 equ 0x3405
loc_38d2 equ 0x38d2
loc_38e4 equ 0x38e4
loc_391b equ 0x391b
loc_3958 equ 0x3958
loc_397b equ 0x397b
loc_397e equ 0x397e
loc_398c equ 0x398c
loc_39d9 equ 0x39d9
loc_39db equ 0x39db
loc_3a2f equ 0x3a2f
loc_3a73 equ 0x3a73
loc_3a79 equ 0x3a79
loc_3a84 equ 0x3a84
loc_3f75 equ 0x3f75
loc_3f7e equ 0x3f7e
loc_3f8a equ 0x3f8a
loc_3f90 equ 0x3f90
loc_3fb2 equ 0x3fb2
loc_3fbf equ 0x3fbf
loc_3fd6 equ 0x3fd6
loc_3fe2 equ 0x3fe2
loc_3fe8 equ 0x3fe8
loc_3feb equ 0x3feb
loc_3ff9 equ 0x3ff9
loc_4002 equ 0x4002
loc_400b equ 0x400b
loc_4060 equ 0x4060
loc_4085 equ 0x4085
loc_40b6 equ 0x40b6
loc_4110 equ 0x4110
loc_4112 equ 0x4112
loc_416c equ 0x416c
loc_4184 equ 0x4184
loc_41a3 equ 0x41a3
loc_41bf equ 0x41bf
loc_41ed equ 0x41ed
loc_4247 equ 0x4247
loc_424a equ 0x424a
loc_425b equ 0x425b
loc_4264 equ 0x4264
loc_42a5 equ 0x42a5
loc_42f4 equ 0x42f4
loc_42f6 equ 0x42f6
loc_4352 equ 0x4352
loc_439a equ 0x439a
loc_43aa equ 0x43aa
loc_4402 equ 0x4402
data_59fa equ 0x59fa
data_5b6c equ 0x5b6c
loc_6d41 equ 0x6d41
loc_6d6c equ 0x6d6c
loc_6e06 equ 0x6e06
data_8d12 equ 0x8d12
data_8f3e equ 0x8f3e
data_905a equ 0x905a
data_91a6 equ 0x91a6
data_91b2 equ 0x91b2
data_91d4 equ 0x91d4
data_91d6 equ 0x91d6
data_9b18 equ 0x9b18
data_9b48 equ 0x9b48
data_9b4a equ 0x9b4a
data_9b4c equ 0x9b4c
dseg_0002 equ 0x0002
dseg_010e equ 0x010e
dseg_0112 equ 0x0112
dseg_03ae equ 0x03ae
dseg_03dc equ 0x03dc
dseg_0e0e equ 0x0e0e
dseg_0e10 equ 0x0e10
dseg_0e12 equ 0x0e12
dseg_0e14 equ 0x0e14
dseg_0e16 equ 0x0e16
dseg_0e18 equ 0x0e18
dseg_0e1a equ 0x0e1a
dseg_0e1c equ 0x0e1c
dseg_100a equ 0x100a
dseg_5216 equ 0x5216
dseg_590e equ 0x590e
dseg_5910 equ 0x5910
dseg_5988 equ 0x5988
dseg_598c equ 0x598c
dseg_598e equ 0x598e
dseg_59fa equ 0x59fa
dseg_5b3e equ 0x5b3e
dseg_5b55 equ 0x5b55
dseg_5b6e equ 0x5b6e
dseg_5b70 equ 0x5b70
dseg_69c8 equ 0x69c8
dseg_7abe equ 0x7abe
dseg_7b05 equ 0x7b05
dseg_7d3c equ 0x7d3c
dseg_82e8 equ 0x82e8
dseg_82ea equ 0x82ea
dseg_82ec equ 0x82ec
dseg_82ee equ 0x82ee
dseg_82fe equ 0x82fe
dseg_8300 equ 0x8300
dseg_830a equ 0x830a
dseg_830c equ 0x830c
dseg_831a equ 0x831a
dseg_844c equ 0x844c
dseg_844e equ 0x844e
dseg_8450 equ 0x8450
dseg_8452 equ 0x8452
dseg_8456 equ 0x8456
dseg_845a equ 0x845a
dseg_8460 equ 0x8460
dseg_84a0 equ 0x84a0
dseg_8809 equ 0x8809
dseg_880a equ 0x880a
dseg_8aac equ 0x8aac
dseg_8af0 equ 0x8af0
dseg_8d06 equ 0x8d06
dseg_8d08 equ 0x8d08
dseg_8d0e equ 0x8d0e
dseg_8d10 equ 0x8d10
dseg_8d12 equ 0x8d12
dseg_8f14 equ 0x8f14
dseg_8f16 equ 0x8f16
dseg_8f18 equ 0x8f18
dseg_8f1a equ 0x8f1a
dseg_8f1c equ 0x8f1c
dseg_8f1e equ 0x8f1e
dseg_8f20 equ 0x8f20
dseg_8f22 equ 0x8f22
dseg_8f24 equ 0x8f24
dseg_8f28 equ 0x8f28
dseg_8f2a equ 0x8f2a
dseg_8f2c equ 0x8f2c
dseg_8f2e equ 0x8f2e
dseg_8f30 equ 0x8f30
dseg_8f32 equ 0x8f32
dseg_8f34 equ 0x8f34
dseg_8f36 equ 0x8f36
dseg_8f38 equ 0x8f38
dseg_8f3a equ 0x8f3a
dseg_8f3c equ 0x8f3c
dseg_8f3e equ 0x8f3e
dseg_8f40 equ 0x8f40
dseg_8f42 equ 0x8f42
dseg_8f44 equ 0x8f44
dseg_8f46 equ 0x8f46
dseg_8f48 equ 0x8f48
dseg_905a equ 0x905a
dseg_905e equ 0x905e
dseg_9068 equ 0x9068
dseg_906a equ 0x906a
dseg_906c equ 0x906c
dseg_908a equ 0x908a
dseg_908c equ 0x908c
dseg_9188 equ 0x9188
dseg_918a equ 0x918a
dseg_918c equ 0x918c
dseg_918e equ 0x918e
dseg_9190 equ 0x9190
dseg_9192 equ 0x9192
dseg_9194 equ 0x9194
dseg_9196 equ 0x9196
dseg_9198 equ 0x9198
dseg_919a equ 0x919a
dseg_919c equ 0x919c
dseg_919e equ 0x919e
dseg_91a6 equ 0x91a6
dseg_91a8 equ 0x91a8
dseg_91aa equ 0x91aa
dseg_91ac equ 0x91ac
dseg_91ae equ 0x91ae
dseg_91b0 equ 0x91b0
dseg_91b2 equ 0x91b2
dseg_91b4 equ 0x91b4
dseg_91d0 equ 0x91d0
dseg_91d2 equ 0x91d2
dseg_91d4 equ 0x91d4
dseg_91d6 equ 0x91d6
dseg_91e4 equ 0x91e4
dseg_931e equ 0x931e
dseg_9b18 equ 0x9b18
dseg_9b34 equ 0x9b34
dseg_9b36 equ 0x9b36
dseg_9b38 equ 0x9b38
dseg_9b3a equ 0x9b3a
dseg_9b3c equ 0x9b3c
dseg_9b3e equ 0x9b3e
dseg_9b40 equ 0x9b40
dseg_9b42 equ 0x9b42
dseg_9b44 equ 0x9b44
dseg_9b46 equ 0x9b46
dseg_9b48 equ 0x9b48
dseg_9b4a equ 0x9b4a
dseg_9b4c equ 0x9b4c
dseg_9b4e equ 0x9b4e
dseg_9b50 equ 0x9b50
dseg_9bd0 equ 0x9bd0
dseg_9bdc equ 0x9bdc
dseg_9bde equ 0x9bde
dseg_9be6 equ 0x9be6
dseg_9c00 equ 0x9c00

    db 0xfa, 0x00, 0x94, 0x0c, 0x77, 0xfc
%include "vmaze/api_idx_0002.asm"

%include "vmaze/api_idx_0002_2.asm"

%include "vmaze/api_idx_0008.asm"

%include "vmaze/api_idx_0002_3.asm"

%include "vmaze/api_idx_0002_4.asm"

%include "vmaze/api_idx_0002_5.asm"

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
    mov di, dseg_9192                ; 0xac46
    mov cx, 0x9e26                   ; 0xac49
    sub cx, di                       ; 0xac4c
    shr cx, 1                        ; 0xac4e
    je short @..local.l95            ; 0xac50
    sub ax, ax                       ; 0xac52
    rep stosw                        ; 0xac54
@..local.l95:
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

