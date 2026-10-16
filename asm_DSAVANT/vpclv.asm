; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpclv.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0x54a2 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x0370 ; o_dsize: initialized data size
    dw 0x03a4                             ; o_bss: uninitialized data size
    dw loc_NVVI - IMAGE_BASE + __zres_end ; 0xa4b9 ; o_entry: overlay entry offset (CS)

__zcode_start:
fpu_loc_45b6 equ 0x45b6 + VBASE

loc_USTQ:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 0x16   ; 0x0014
    jne short @..loc_USTQ.l1         ; 0x0019
    call api_idx_000c_KJVL           ; 0x001b
@..loc_USTQ.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
%include "shared/api_idx_0002_UKHK.asm"     ; 0x0022

%include "vpclv/asm_only/api_idx_0012_URNN.asm"     ; 0x0086

%include "shared/draw_party_slot_letters.asm" ; 0x0202

%include "vpclv/api_idx_0004_RIKH.asm"     ; 0x0281

%include "shared/api_idx_0002_PGOV.asm"     ; 0x0331

%include "shared/api_idx_0002_GLLG.asm"     ; 0x038c

%include "shared/api_idx_0010_TIQJ.asm"     ; 0x03cd

%include "vpclv/api_idx_000a_RVMG.asm"     ; 0x04ca

%include "vpclv/asm_only/api_idx_007c_KMHO.asm"     ; 0x0572

%include "vpclv/loc_RIRS.asm"              ; 0x0dc0

%include "vpclv/api_idx_0004_ROHR.asm"     ; 0x0e3b

%include "vpclv/api_idx_000a_QMKR.asm"     ; 0x0eac

%include "shared/loc_OOVL.asm"              ; 0x0eea

%include "vpclv/loc_UONK.asm"              ; 0x0f76

%include "vpclv/api_idx_000c_NNIM.asm"     ; 0x1017

%include "vpclv/loc_SKPQ.asm"              ; 0x10b0

%include "vpclv/api_idx_0050_JKSH.asm"     ; 0x1141

%include "vpclv/api_idx_00ca_LIQK.asm"     ; 0x1e31

%include "vpclv/loc_LLQL.asm"              ; 0x20e3

%include "vpclv/loc_PKMN.asm"              ; 0x2189

%include "shared/api_idx_0004_VKIV.asm"     ; 0x21be

%include "shared/api_idx_002a_IHRK.asm"     ; 0x2447

%include "vpclv/asm_only/api_idx_0080_RPOR.asm"     ; 0x24f0

%include "shared/api_idx_0004_SSHG.asm"     ; 0x2717

%include "vpclv/api_idx_004c_QHGO.asm"     ; 0x27e3

%include "shared/loc_PPJS.asm"              ; 0x2a32

%include "shared/api_idx_0006_VRUK.asm"     ; 0x2a85

%include "shared/api_idx_0002_KOUO.asm"     ; 0x2b1a

%include "vpclv/api_idx_0052_LVIU.asm"     ; 0x2c0c

%include "shared/api_idx_0004_VPLS.asm"     ; 0x3288

%include "vpclv/api_idx_0020_RPUV.asm"     ; 0x333c

%include "vpclv/api_idx_0004_UPGK.asm"     ; 0x34cd

%include "vpclv/api_idx_0004_ULTV.asm"     ; 0x35fc

%include "vpclv/api_idx_0002_NSNU.asm"     ; 0x3851

%include "vpclv/api_idx_002e_LGPN.asm"     ; 0x390b

%include "vpclv/api_idx_0032_PTTL.asm"     ; 0x3a7a

%include "vpclv/api_idx_0088_PMVU.asm"     ; 0x3f9e

%include "vpclv/api_idx_001c_OTIM.asm"     ; 0x4140

%include "vpclv/api_idx_0002_NOHM.asm"     ; 0x4270

%include "vpclv/loc_ORKT.asm"              ; 0x4310

jumptable_45b6_case_0:
    mov ax, 3                        ; 0x4327
    push ax                          ; 0x432a
    mov ax, 6                        ; 0x432b
    push ax                          ; 0x432e
    mov ax, 8                        ; 0x432f
    push ax                          ; 0x4332
    push word [bp + 0x4]             ; 0x4333
    call api_idx_001c_OTIM           ; 0x4336
    add sp, byte 8                   ; 0x4339
    jmp near @..loc_ORKT.l2          ; 0x433c
jumptable_45b6_case_1:
    mov ax, 9                        ; 0x433f
    push ax                          ; 0x4342
    mov ax, 3                        ; 0x4343
    push ax                          ; 0x4346
    push ax                          ; 0x4347
    push word [bp + 0x4]             ; 0x4348
    call api_idx_001c_OTIM           ; 0x434b
    add sp, byte 8                   ; 0x434e
    mov ax, 0x20                     ; 0x4351
    push ax                          ; 0x4354
    mov ax, 2                        ; 0x4355
    push ax                          ; 0x4358
    mov ax, 3                        ; 0x4359
    push ax                          ; 0x435c
    push word [bp + 0x4]             ; 0x435d
    call api_idx_0002_NOHM           ; 0x4360
    add sp, byte 8                   ; 0x4363
    jmp near @..loc_ORKT.l2          ; 0x4366
jumptable_45b6_case_2:
    mov ax, 9                        ; 0x4369
    push ax                          ; 0x436c
    mov ax, 3                        ; 0x436d
    push ax                          ; 0x4370
    push ax                          ; 0x4371
    push word [bp + 0x4]             ; 0x4372
    call api_idx_001c_OTIM           ; 0x4375
    add sp, byte 8                   ; 0x4378
    mov ax, 0x1e                     ; 0x437b
    push ax                          ; 0x437e
    mov ax, 2                        ; 0x437f
    push ax                          ; 0x4382
    mov ax, 3                        ; 0x4383
    push ax                          ; 0x4386
    push word [bp + 0x4]             ; 0x4387
    call api_idx_0002_NOHM           ; 0x438a
    add sp, byte 8                   ; 0x438d
    jmp near @..loc_ORKT.l2          ; 0x4390
jumptable_45b6_case_3:
    mov ax, 4                        ; 0x4393
    push ax                          ; 0x4396
    mov ax, 9                        ; 0x4397
    push ax                          ; 0x439a
    mov ax, 4                        ; 0x439b
    push ax                          ; 0x439e
    push word [bp + 0x4]             ; 0x439f
    call api_idx_001c_OTIM           ; 0x43a2
    add sp, byte 8                   ; 0x43a5
    mov ax, 0x10                     ; 0x43a8
    push ax                          ; 0x43ab
    mov ax, 2                        ; 0x43ac
    push ax                          ; 0x43af
    mov ax, 1                        ; 0x43b0
    push ax                          ; 0x43b3
    push word [bp + 0x4]             ; 0x43b4
    call api_idx_0002_NOHM           ; 0x43b7
    add sp, byte 8                   ; 0x43ba
    jmp near @..loc_ORKT.l2          ; 0x43bd
jumptable_45b6_case_4:
    mov ax, 5                        ; 0x43c0
    push ax                          ; 0x43c3
    push ax                          ; 0x43c4
    mov ax, 6                        ; 0x43c5
    push ax                          ; 0x43c8
    push word [bp + 0x4]             ; 0x43c9
    call api_idx_001c_OTIM           ; 0x43cc
    add sp, byte 8                   ; 0x43cf
    mov ax, 7                        ; 0x43d2
    push ax                          ; 0x43d5
    mov ax, 3                        ; 0x43d6
    push ax                          ; 0x43d9
    mov ax, 0                        ; 0x43da
    push ax                          ; 0x43dd
    push word [bp + 0x4]             ; 0x43de
    call api_idx_0002_NOHM           ; 0x43e1
    add sp, byte 8                   ; 0x43e4
    mov ax, 0xc                      ; 0x43e7
    push ax                          ; 0x43ea
    mov ax, 3                        ; 0x43eb
    push ax                          ; 0x43ee
    mov ax, 1                        ; 0x43ef
    push ax                          ; 0x43f2
    push word [bp + 0x4]             ; 0x43f3
    call api_idx_0002_NOHM           ; 0x43f6
    add sp, byte 8                   ; 0x43f9
    jmp near @..loc_ORKT.l2          ; 0x43fc
jumptable_45b6_case_6:
    mov ax, 5                        ; 0x43ff
    push ax                          ; 0x4402
    mov ax, 6                        ; 0x4403
    push ax                          ; 0x4406
    mov ax, 4                        ; 0x4407
    push ax                          ; 0x440a
    push word [bp + 0x4]             ; 0x440b
    call api_idx_001c_OTIM           ; 0x440e
    add sp, byte 8                   ; 0x4411
    mov ax, 0xd                      ; 0x4414
    push ax                          ; 0x4417
    mov ax, 2                        ; 0x4418
    push ax                          ; 0x441b
    mov ax, 1                        ; 0x441c
    push ax                          ; 0x441f
    push word [bp + 0x4]             ; 0x4420
    call api_idx_0002_NOHM           ; 0x4423
    add sp, byte 8                   ; 0x4426
    jmp near @..loc_ORKT.l2          ; 0x4429
jumptable_45b6_case_5:
    mov ax, 9                        ; 0x442c
    push ax                          ; 0x442f
    mov ax, 3                        ; 0x4430
    push ax                          ; 0x4433
    push ax                          ; 0x4434
    push word [bp + 0x4]             ; 0x4435
    call api_idx_001c_OTIM           ; 0x4438
    add sp, byte 8                   ; 0x443b
    mov ax, 0x1d                     ; 0x443e
    push ax                          ; 0x4441
    mov ax, 2                        ; 0x4442
    push ax                          ; 0x4445
    mov ax, 3                        ; 0x4446
    push ax                          ; 0x4449
    push word [bp + 0x4]             ; 0x444a
    call api_idx_0002_NOHM           ; 0x444d
    add sp, byte 8                   ; 0x4450
    jmp near @..loc_ORKT.l2          ; 0x4453
jumptable_45b6_case_7:
    mov ax, 9                        ; 0x4456
    push ax                          ; 0x4459
    mov ax, 3                        ; 0x445a
    push ax                          ; 0x445d
    push ax                          ; 0x445e
    push word [bp + 0x4]             ; 0x445f
    call api_idx_001c_OTIM           ; 0x4462
    add sp, byte 8                   ; 0x4465
    mov ax, 0x1f                     ; 0x4468
    push ax                          ; 0x446b
    mov ax, 2                        ; 0x446c
    push ax                          ; 0x446f
    mov ax, 3                        ; 0x4470
    push ax                          ; 0x4473
    push word [bp + 0x4]             ; 0x4474
    call api_idx_0002_NOHM           ; 0x4477
    add sp, byte 8                   ; 0x447a
    jmp near @..loc_ORKT.l2          ; 0x447d
jumptable_45b6_case_9:
    mov ax, 0xc                      ; 0x4480
    push ax                          ; 0x4483
    mov ax, 2                        ; 0x4484
    push ax                          ; 0x4487
    push ax                          ; 0x4488
    push word [bp + 0x4]             ; 0x4489
    call api_idx_001c_OTIM           ; 0x448c
    add sp, byte 8                   ; 0x448f
    mov ax, 0x20                     ; 0x4492
    push ax                          ; 0x4495
    mov ax, 3                        ; 0x4496
    push ax                          ; 0x4499
    push ax                          ; 0x449a
    push word [bp + 0x4]             ; 0x449b
    call api_idx_0002_NOHM           ; 0x449e
    add sp, byte 8                   ; 0x44a1
    mov ax, 0x1e                     ; 0x44a4
    push ax                          ; 0x44a7
    mov ax, 2                        ; 0x44a8
    push ax                          ; 0x44ab
    mov ax, 3                        ; 0x44ac
    push ax                          ; 0x44af
    push word [bp + 0x4]             ; 0x44b0
    call api_idx_0002_NOHM           ; 0x44b3
    add sp, byte 8                   ; 0x44b6
    jmp near @..loc_ORKT.l2          ; 0x44b9
jumptable_45b6_case_8:
    mov ax, 5                        ; 0x44bc
    push ax                          ; 0x44bf
    push ax                          ; 0x44c0
    mov ax, 6                        ; 0x44c1
    push ax                          ; 0x44c4
    push word [bp + 0x4]             ; 0x44c5
    call api_idx_001c_OTIM           ; 0x44c8
    add sp, byte 8                   ; 0x44cb
    mov ax, 4                        ; 0x44ce
    push ax                          ; 0x44d1
    mov ax, 3                        ; 0x44d2
    push ax                          ; 0x44d5
    mov ax, 0                        ; 0x44d6
    push ax                          ; 0x44d9
    push word [bp + 0x4]             ; 0x44da
    call api_idx_0002_NOHM           ; 0x44dd
    add sp, byte 8                   ; 0x44e0
    jmp near @..loc_ORKT.l2          ; 0x44e3
jumptable_45b6_case_10:
    mov ax, 5                        ; 0x44e6
    push ax                          ; 0x44e9
    mov ax, 4                        ; 0x44ea
    push ax                          ; 0x44ed
    mov ax, 7                        ; 0x44ee
    push ax                          ; 0x44f1
    push word [bp + 0x4]             ; 0x44f2
    call api_idx_001c_OTIM           ; 0x44f5
    add sp, byte 8                   ; 0x44f8
    mov ax, 0x1c                     ; 0x44fb
    push ax                          ; 0x44fe
    mov ax, 3                        ; 0x44ff
    push ax                          ; 0x4502
    push ax                          ; 0x4503
    push word [bp + 0x4]             ; 0x4504
    call api_idx_0002_NOHM           ; 0x4507
    add sp, byte 8                   ; 0x450a
    jmp near @..loc_ORKT.l2          ; 0x450d
jumptable_45b6_case_11:
    mov ax, 5                        ; 0x4510
    push ax                          ; 0x4513
    mov ax, 4                        ; 0x4514
    push ax                          ; 0x4517
    mov ax, 7                        ; 0x4518
    push ax                          ; 0x451b
    push word [bp + 0x4]             ; 0x451c
    call api_idx_001c_OTIM           ; 0x451f
    add sp, byte 8                   ; 0x4522
    mov ax, 1                        ; 0x4525
    push ax                          ; 0x4528
    mov ax, 2                        ; 0x4529
    push ax                          ; 0x452c
    mov ax, 0                        ; 0x452d
    push ax                          ; 0x4530
    push word [bp + 0x4]             ; 0x4531
    call api_idx_0002_NOHM           ; 0x4534
    add sp, byte 8                   ; 0x4537
    jmp near @..loc_ORKT.l2          ; 0x453a
jumptable_45b6_case_12:
    mov ax, 6                        ; 0x453d
    push ax                          ; 0x4540
    mov ax, 5                        ; 0x4541
    push ax                          ; 0x4544
    push ax                          ; 0x4545
    push word [bp + 0x4]             ; 0x4546
    call api_idx_001c_OTIM           ; 0x4549
    add sp, byte 8                   ; 0x454c
    mov ax, 9                        ; 0x454f
    push ax                          ; 0x4552
    mov ax, 3                        ; 0x4553
%include "vpclv/loc_JITV.asm"              ; 0x4556

jumptable_45b6_case_13:
    mov ax, 4                        ; 0x4578
    push ax                          ; 0x457b
    mov ax, 6                        ; 0x457c
    push ax                          ; 0x457f
    push ax                          ; 0x4580
    push word [bp + 0x4]             ; 0x4581
    call api_idx_001c_OTIM           ; 0x4584
    add sp, byte 8                   ; 0x4587
    mov ax, 9                        ; 0x458a
    push ax                          ; 0x458d
    mov ax, 2                        ; 0x458e
    push ax                          ; 0x4591
    mov ax, 0                        ; 0x4592
    push ax                          ; 0x4595
    push word [bp + 0x4]             ; 0x4596
    call api_idx_0002_NOHM           ; 0x4599
    add sp, byte 8                   ; 0x459c
    mov ax, 0x11                     ; 0x459f
    push ax                          ; 0x45a2
    mov ax, 2                        ; 0x45a3
    push ax                          ; 0x45a6
    mov ax, 1                        ; 0x45a7
    push ax                          ; 0x45aa
    push word [bp + 0x4]             ; 0x45ab
    call api_idx_0002_NOHM           ; 0x45ae
    add sp, byte 8                   ; 0x45b1
    jmp short @..loc_ORKT.l2         ; 0x45b4
jumptable_45b6:
    dw jumptable_45b6_case_0 - IMAGE_BASE + 0x5055 ; 0x45b6
    dw jumptable_45b6_case_1 - IMAGE_BASE + 0x5055 ; 0x45b8
    dw jumptable_45b6_case_2 - IMAGE_BASE + 0x5055 ; 0x45ba
    dw jumptable_45b6_case_3 - IMAGE_BASE + 0x5055 ; 0x45bc
    dw jumptable_45b6_case_4 - IMAGE_BASE + 0x5055 ; 0x45be
    dw jumptable_45b6_case_5 - IMAGE_BASE + 0x5055 ; 0x45c0
    dw jumptable_45b6_case_6 - IMAGE_BASE + 0x5055 ; 0x45c2
    dw jumptable_45b6_case_7 - IMAGE_BASE + 0x5055 ; 0x45c4
    dw jumptable_45b6_case_8 - IMAGE_BASE + 0x5055 ; 0x45c6
    dw jumptable_45b6_case_9 - IMAGE_BASE + 0x5055 ; 0x45c8
    dw jumptable_45b6_case_10 - IMAGE_BASE + 0x5055 ; 0x45ca
    dw jumptable_45b6_case_11 - IMAGE_BASE + 0x5055 ; 0x45cc
    dw jumptable_45b6_case_12 - IMAGE_BASE + 0x5055 ; 0x45ce
    dw jumptable_45b6_case_13 - IMAGE_BASE + 0x5055 ; 0x45d0
@..loc_ORKT.l1:
    cmp ax, strict word 0xe          ; 0x45d2
    jae short @..loc_ORKT.l2         ; 0x45d5
    xchg bx, ax                      ; 0x45d7
    shl bx, 1                        ; 0x45d8
    jmp [cs:bx - 0x6a03]             ; 0x45da
@..loc_ORKT.l2:
    ret                              ; 0x45df
%include "vpclv/api_idx_00ac_HIUM.asm"     ; 0x45e0

%include "vpclv/api_idx_0004_IKQO.asm"     ; 0x4884

%include "vpclv/api_idx_0018_NLSO.asm"     ; 0x4955

%include "vpclv/leaf_loc_VOLM.asm"         ; 0x4990

%include "vpclv/leaf_loc_TVLO.asm"         ; 0x49b1

%include "vpclv/leaf_loc_RUVP.asm"         ; 0x49d2

%include "vpclv/leaf_loc_GOTN.asm"         ; 0x49f3

%include "vpclv/leaf_loc_JVRQ.asm"         ; 0x4a14

%include "vpclv/leaf_loc_JVKS.asm"         ; 0x4a35

%include "vpclv/leaf_loc_SLHJ.asm"         ; 0x4a56

%include "vpclv/leaf_loc_RJJT.asm"         ; 0x4a77

%include "vpclv/leaf_loc_PJRP.asm"         ; 0x4ab4

%include "vpclv/api_idx_00b4_LLNK.asm"     ; 0x4cc5

%include "vpclv/api_idx_0006_OHMR.asm"     ; 0x4e03

%include "vpclv/leaf_loc_SRNV.asm"         ; 0x4e18

%include "vpclv/leaf_loc_QLLN.asm"         ; 0x4e1f

%include "vpclv/api_idx_00a4_LKSN.asm"     ; 0x4e9e

%include "vpclv/api_idx_0046_LKOQ.asm"     ; 0x4fca

%include "shared/api_idx_000e_QTQU.asm"     ; 0x50a1

%include "vpclv/api_idx_000c_KJVL.asm"     ; 0x5161

@..api_idx_000c_KJVL.l5:
    mov ax, 1                        ; 0x535f
    push ax                          ; 0x5362
    push word [bp - 0x0002]          ; 0x5363
    call api_idx_0046_LKOQ           ; 0x5366
    add sp, byte 4                   ; 0x5369
    inc word [bp - 0x0002]           ; 0x536c
@..api_idx_000c_KJVL.l6:
    mov ax, word [bp - 0x0002]       ; 0x536f
    cmp ax, word [bss_69c8]          ; 0x5372
    jl short @..api_idx_000c_KJVL.l5 ; 0x5376
    cmp word [bss_8450], byte 0      ; 0x5378
    je short @..api_idx_000c_KJVL.l7 ; 0x537d
    push word [bss_844c]             ; 0x537f
    push word [bss_844e]             ; 0x5383
    call animate_sprite_up           ; 0x5387
    add sp, byte 4                   ; 0x538a
    mov ax, 0                        ; 0x538d
    push ax                          ; 0x5390
    call ds_app_thunk_21_HUMJ        ; 0x5391
    pop cx                           ; 0x5394
@..api_idx_000c_KJVL.l7:
    mov ax, 0xf                      ; 0x5395
    push ax                          ; 0x5398
    call ds_app_thunk_26_RNMG        ; 0x5399
    pop cx                           ; 0x539c
    mov ax, 0                        ; 0x539d
    push ax                          ; 0x53a0
    mov ax, 1                        ; 0x53a1
    push ax                          ; 0x53a4
    push word [bss_9434]             ; 0x53a5
    push word [bss_9432]             ; 0x53a9
    call thunk_12                    ; 0x53ad
    add sp, byte 8                   ; 0x53b0
    mov ax, 0                        ; 0x53b3
    push ax                          ; 0x53b6
    mov ax, 1                        ; 0x53b7
    push ax                          ; 0x53ba
    push word [bss_942c]             ; 0x53bb
    push word [bss_942a]             ; 0x53bf
    call thunk_12                    ; 0x53c3
    add sp, byte 8                   ; 0x53c6
    mov ax, 0                        ; 0x53c9
    push ax                          ; 0x53cc
    mov ax, 1                        ; 0x53cd
    push ax                          ; 0x53d0
    push word [bss_9428]             ; 0x53d1
    push word [bss_9426]             ; 0x53d5
    call thunk_12                    ; 0x53d9
    add sp, byte 8                   ; 0x53dc
    mov ax, 0                        ; 0x53df
    push ax                          ; 0x53e2
    mov ax, 1                        ; 0x53e3
    push ax                          ; 0x53e6
    push word [bss_9424]             ; 0x53e7
    push word [bss_9422]             ; 0x53eb
    call thunk_12                    ; 0x53ef
    add sp, byte 8                   ; 0x53f2
    mov ax, 0                        ; 0x53f5
    push ax                          ; 0x53f8
    mov ax, 1                        ; 0x53f9
    push ax                          ; 0x53fc
    push word [bss_9420]             ; 0x53fd
    push word [bss_941e]             ; 0x5401
    call thunk_12                    ; 0x5405
    add sp, byte 8                   ; 0x5408
    mov ax, 0                        ; 0x540b
    push ax                          ; 0x540e
    mov ax, 1                        ; 0x540f
    push ax                          ; 0x5412
    push word [bss_941c]             ; 0x5413
    push word [bss_941a]             ; 0x5417
    call thunk_12                    ; 0x541b
    add sp, byte 8                   ; 0x541e
    mov ax, 0                        ; 0x5421
    push ax                          ; 0x5424
    mov ax, 1                        ; 0x5425
    push ax                          ; 0x5428
    push word [bss_9418]             ; 0x5429
    push word [bss_9416]             ; 0x542d
    call thunk_12                    ; 0x5431
    add sp, byte 8                   ; 0x5434
    mov ax, 0                        ; 0x5437
    push ax                          ; 0x543a
    mov ax, 1                        ; 0x543b
    push ax                          ; 0x543e
    push word [bp - 0x000a]          ; 0x543f
    push word [bp - 0x000c]          ; 0x5442
    call thunk_12                    ; 0x5445
    add sp, byte 8                   ; 0x5448
    mov ax, 1                        ; 0x544b
    push ax                          ; 0x544e
    call ds_app_thunk_26_RNMG        ; 0x544f
    pop cx                           ; 0x5452
    mov ax, 2                        ; 0x5453
    push ax                          ; 0x5456
    call ds_app_thunk_26_RNMG        ; 0x5457
    pop cx                           ; 0x545a
    call api_idx_000e_QTQU           ; 0x545b
    mov ax, 0xc7                     ; 0x545e
    push ax                          ; 0x5461
    mov ax, 0x13f                    ; 0x5462
    push ax                          ; 0x5465
    mov ax, 0                        ; 0x5466
    push ax                          ; 0x5469
    push ax                          ; 0x546a
    call thunk_4                     ; 0x546b
    add sp, byte 8                   ; 0x546e
    ret                              ; 0x5471
loc_NVVI:
    pop word [dseg_9406]             ; 0x5472
    pop cx                           ; 0x5476
    mov word [dseg_9402], sp         ; 0x5477
    mov word [dseg_9404], bp         ; 0x547b
    mov word [dseg_93fe], si         ; 0x547f
    mov word [dseg_9400], di         ; 0x5483
    cld                              ; 0x5487
    mov di, bss_9408                 ; 0x5488
    mov cx, 0x97ac                   ; 0x548b
    sub cx, di                       ; 0x548e
    shr cx, 1                        ; 0x5490
    je short @..loc_NVVI.l1          ; 0x5492
    sub ax, ax                       ; 0x5494
    rep stosw                        ; 0x5496
@..loc_NVVI.l1:
    call loc_USTQ                    ; 0x5498
    mov bp, word [dseg_9404]         ; 0x549b
    mov sp, word [dseg_9402]         ; 0x549f
    mov si, word [dseg_93fe]         ; 0x54a3
    mov di, word [dseg_9400]         ; 0x54a7
    push cx                          ; 0x54ab
    jmp [dseg_9406]                  ; 0x54ac
__zdata_start:

    db 0x25, 0x20, 0x00, 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'ACBCBCCCCHCHBA', 0
    db '02222232112230', 0
    db 'ACCCCDCCCHHKDA', 0
    db '02222232123230', 0
    db 'ACCCCDCCCIFKEA', 0
    db '02222232121230', 0
    db 'ACHCHDCCCHFIDA', 0
    db '02323232111230', 0
    db 'ACKCHHGCCIECBA', 0
    db '02322322121220', 0
    db 'ACBCCDECCEEEGA', 0
    db '02121212111330', 0
    db 'ACICIBHCCFKFFA', 0
    db '02323112113330', 0
    db 'ACECCEGCCIFKFA', 0
    db '02222222122220', 0
    db 'ACKCGDHCCFKIDA', 0
    db '02322212112320', 0
    db 'ACHCHHGCCCECHA', 0
    db '02322322112230', 0
    db '1111111110', 0
    db '11100000', 0
    db '000000', 0
    db '1111000000', 0
    db '1000111100', 0
    db '11101000', 0
    db '000000', 0
    db '1111000010', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101111', 0
    db '000000', 0
    db '1111000000', 0
    db '1111111110', 0
    db '11100111', 0
    db '000000', 0
    db '1111010000', 0
    db '1001110000', 0
    db '11100000', 0
    db '000000', 0
    db '1111010000', 0
    db '1111111110', 0
    db '11111111', 0
    db '000000', 0
    db '1111000010', 0
    db '1001111000', 0
    db '11101000', 0
    db '000000', 0
    db '1111000100', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111001000', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101010', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111000011', 0
    db '1001111101', 0
    db '11101001', 0
    db '000000', 0
    db '1111000101', 0
    db '1111111111', 0
    db '11100111', 0
    db '000000', 0
    db '1111010001', 0
    db 0x25, 0x20, 0x28, 0x00, 0x29, 0x00, 0x2f
    times 4 db 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0


__zimage_end:
