%include "inc/structs/structs.inc"
%include "inc/structs/loc_6e06.inc"
org 0
bits 16
%include "inc/labels/vmaze_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x60, 0xac, 0x98, 0x90

data_010e equ 0x010e
data_0112 equ 0x0112
data_03ae equ 0x03ae
loc_0712 equ 0x0712
loc_0833 equ 0x0833
loc_088a equ 0x088a
loc_0918 equ 0x0918
loc_096c equ 0x096c
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
data_0e16 equ 0x0e16
data_0e18 equ 0x0e18
data_0e1a equ 0x0e1a
data_0e1c equ 0x0e1c
data_100a equ 0x100a
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
data_5216 equ 0x5216
data_590e equ 0x590e
data_5910 equ 0x5910
data_5988 equ 0x5988
data_598c equ 0x598c
data_598e equ 0x598e
data_59fa equ 0x59fa
data_5b3e equ 0x5b3e
data_5b55 equ 0x5b55
data_5b6c equ 0x5b6c
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
data_69c8 equ 0x69c8
loc_6d41 equ 0x6d41
loc_6d6c equ 0x6d6c
loc_6e06 equ 0x6e06
data_7b05 equ 0x7b05
data_7d3c equ 0x7d3c
data_82e8 equ 0x82e8
data_82ea equ 0x82ea
data_82ec equ 0x82ec
data_82ee equ 0x82ee
data_82fe equ 0x82fe
data_8300 equ 0x8300
data_830a equ 0x830a
data_830c equ 0x830c
data_831a equ 0x831a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8452 equ 0x8452
data_8456 equ 0x8456
data_845a equ 0x845a
data_8460 equ 0x8460
data_84a0 equ 0x84a0
data_8809 equ 0x8809
data_880a equ 0x880a
data_8aac equ 0x8aac
data_8af0 equ 0x8af0
data_8d06 equ 0x8d06
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8d12 equ 0x8d12
data_8f14 equ 0x8f14
data_8f16 equ 0x8f16
data_8f18 equ 0x8f18
data_8f1c equ 0x8f1c
data_8f1e equ 0x8f1e
data_8f20 equ 0x8f20
data_8f22 equ 0x8f22
data_8f24 equ 0x8f24
data_8f28 equ 0x8f28
data_8f2a equ 0x8f2a
data_8f2c equ 0x8f2c
data_8f2e equ 0x8f2e
data_8f30 equ 0x8f30
data_8f32 equ 0x8f32
data_8f34 equ 0x8f34
data_8f36 equ 0x8f36
data_8f38 equ 0x8f38
data_8f3a equ 0x8f3a
data_8f3c equ 0x8f3c
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_8f44 equ 0x8f44
data_8f46 equ 0x8f46
data_8f48 equ 0x8f48
data_905a equ 0x905a
data_905e equ 0x905e
data_9068 equ 0x9068
data_906a equ 0x906a
data_908a equ 0x908a
data_908c equ 0x908c
data_9188 equ 0x9188
data_918a equ 0x918a
data_918c equ 0x918c
data_918e equ 0x918e
data_9190 equ 0x9190
data_9192 equ 0x9192
data_9194 equ 0x9194
data_9196 equ 0x9196
data_9198 equ 0x9198
data_919a equ 0x919a
data_919c equ 0x919c
data_919e equ 0x919e
data_91a6 equ 0x91a6
data_91a8 equ 0x91a8
data_91aa equ 0x91aa
data_91ac equ 0x91ac
data_91ae equ 0x91ae
data_91b0 equ 0x91b0
data_91b2 equ 0x91b2
data_91b4 equ 0x91b4
data_91d0 equ 0x91d0
data_91d2 equ 0x91d2
data_91d4 equ 0x91d4
data_91d6 equ 0x91d6
data_91e4 equ 0x91e4
data_931e equ 0x931e
data_9b18 equ 0x9b18
data_9b34 equ 0x9b34
data_9b36 equ 0x9b36
data_9b38 equ 0x9b38
data_9b3a equ 0x9b3a
data_9b3c equ 0x9b3c
data_9b3e equ 0x9b3e
data_9b40 equ 0x9b40
data_9b42 equ 0x9b42
data_9b44 equ 0x9b44
data_9b46 equ 0x9b46
data_9b48 equ 0x9b48
data_9b4a equ 0x9b4a
data_9b4c equ 0x9b4c
data_9b4e equ 0x9b4e
data_9b50 equ 0x9b50
data_9bd0 equ 0x9bd0
data_9bdc equ 0x9bdc
data_9bde equ 0x9bde
data_9be6 equ 0x9be6
data_9c00 equ 0x9c00

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
    pop word [data_9190]             ; 0xac30
    pop cx                           ; 0xac34
    mov word [data_918c], sp         ; 0xac35
    mov word [data_918e], bp         ; 0xac39
    mov word [data_9188], si         ; 0xac3d
    mov word [data_918a], di         ; 0xac41
    cld                              ; 0xac45
    mov di, data_9192                ; 0xac46
    mov cx, 0x9e26                   ; 0xac49
    sub cx, di                       ; 0xac4c
    shr cx, 1                        ; 0xac4e
    je short @..local.l95            ; 0xac50
    sub ax, ax                       ; 0xac52
    rep stosw                        ; 0xac54
@..local.l95:
    call api_idx_0002                ; 0xac56
    mov bp, word [data_918e]         ; 0xac59
    mov sp, word [data_918c]         ; 0xac5d
    mov si, word [data_9188]         ; 0xac61
    mov di, word [data_918a]         ; 0xac65
    push cx                          ; 0xac69
    jmp [data_9190]                  ; 0xac6a

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

