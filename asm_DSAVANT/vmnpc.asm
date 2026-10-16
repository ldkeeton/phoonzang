; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vmnpc.inc"
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
    dw (__zdata_start - __zcode_start)           ; 0xaecf ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x009c ; o_dsize: initialized data size
    dw 0x1f22                                    ; o_bss: uninitialized data size
    dw string_loc_NVTI - IMAGE_BASE + __zres_end ; 0xfe57 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_UOVR equ 0x44d9 + VBASE
io_loc_4fa9 equ 0x4fa9 + VBASE

%include "vmnpc/api_idx_0008_JGKT.asm"     ; 0x000e

%include "vmnpc/api_idx_000c_POTM.asm"     ; 0x01d2

%include "vmnpc/asm_only/api_idx_0004_SMTU.asm"     ; 0x062d

%include "vmnpc/api_idx_0018_TROH.asm"     ; 0x0727

api_idx_000e_NKQN.api_idx1 equ api_idx_0004_SMTU
%include "shared/api_idx_000e_NKQN.asm"     ; 0x0961

%include "shared/loc_SSIO.asm"              ; 0x0a56

%include "shared/api_idx_000a_QJGP.asm"     ; 0x0ab2

%include "shared/loc_VNIO.asm"              ; 0x0b30

%include "shared/api_idx_0006_SHUK.asm"     ; 0x0b74

%include "shared/loc_HTQP.asm"              ; 0x0c96

%include "vmnpc/api_idx_0054_UKJH.asm"     ; 0x0d46

%include "vmnpc/api_idx_0002_IUMT.asm"     ; 0x0dc3

%include "vmnpc/api_idx_0004_KNGG.asm"     ; 0x0e15

loc_KRMP.bss1 equ bss_93d6
%include "shared/loc_KRMP.asm"              ; 0x0ef1

%include "vmnpc/api_idx_0006_SQTK.asm"     ; 0x0f50

loc_RPUI.api_idx1 equ api_idx_0006_SQTK
%include "shared/loc_RPUI.asm"              ; 0x109f

loc_UTQS.api_idx1 equ api_idx_0006_SQTK
%include "shared/loc_UTQS.asm"              ; 0x10b6

%include "vmnpc/api_idx_0004_MIJS.asm"     ; 0x10c9

%include "vmnpc/api_idx_0004_RPUO.asm"     ; 0x114d

%include "vmnpc/api_idx_0004_GRRG.asm"     ; 0x119e

%include "vmnpc/api_idx_0004_THQU.asm"     ; 0x11f8

%include "vmnpc/api_idx_0054_LVHV.asm"     ; 0x128c

%include "vmnpc/loc_MLKO.asm"              ; 0x130b

%include "vmnpc/api_idx_0050_TJLH.asm"     ; 0x13b4

%include "vmnpc/api_idx_005e_SHOL.asm"     ; 0x13ed

%include "vmnpc/api_idx_000c_KGOL.asm"     ; 0x1676

%include "vmnpc/loc_RSHV.asm"              ; 0x1821

%include "vmnpc/loc_MOVJ.asm"              ; 0x1d39

%include "vmnpc/loc_HGOV.asm"              ; 0x21bf

%include "shared/api_idx_004c_RQSO.asm"     ; 0x21d2

%include "vmnpc/api_idx_0004_PULL.asm"     ; 0x22e7

%include "vmnpc/api_idx_0004_VLIO.asm"     ; 0x2372

%include "vmnpc/loc_LRGG.asm"              ; 0x2472

%include "vmnpc/api_idx_0038_POGI.asm"     ; 0x24ae

%include "vmnpc/api_idx_0002_OUKN.asm"     ; 0x2768

%include "vmnpc/api_idx_0004_PHNO.asm"     ; 0x28a1

%include "vmnpc/loc_GPUL.asm"              ; 0x2963

%include "vmnpc/api_idx_0008_KNNO.asm"     ; 0x29b1

%include "vmnpc/api_idx_0040_UOUS.asm"     ; 0x2b8e

%include "vmnpc/leaf_loc_VHTI.asm"         ; 0x2ebe

%include "vmnpc/io_loc_MUNJ.asm"           ; 0x36b4

%include "vmnpc/io_loc_UVHK.asm"           ; 0x36cd

%include "vmnpc/api_idx_0006_SRQN.asm"     ; 0x3773

%include "vmnpc/api_idx_0002_KNHU.asm"     ; 0x38c1

%include "vmnpc/asm_only/api_idx_0008_HUTJ.asm"     ; 0x3900

%include "vmnpc/api_idx_0004_GGOK.asm"     ; 0x3a96

%include "shared/api_idx_0018_RGOS.asm"     ; 0x3b9a

%include "vmnpc/api_idx_0004_KHSO.asm"     ; 0x3c97

loc_HTKI.api_idx1 equ api_idx_0004_KHSO
%include "shared/loc_HTKI.asm"              ; 0x3df9

%include "vmnpc/api_idx_0038_IJUK.asm"     ; 0x3e3a

%include "vmnpc/api_idx_0054_OPGG.asm"     ; 0x4514

%include "vmnpc/loc_VUSH.asm"              ; 0x4775

%include "vmnpc/loc_GOMR.asm"              ; 0x47b9

%include "vmnpc/api_idx_0038_LJOP.asm"     ; 0x47d9

%include "vmnpc/api_idx_004c_OGSK.asm"     ; 0x4fea

%include "vmnpc/api_idx_0002_MIIL.asm"     ; 0x515b

%include "vmnpc/api_idx_0068_OUGS.asm"     ; 0x51bb

%include "vmnpc/api_idx_0004_GHUK.asm"     ; 0x5371

%include "shared/loc_GMVH.asm"              ; 0x5497

%include "shared/api_idx_0002_QVIM.asm"     ; 0x54b4

%include "vmnpc/api_idx_0008_GUJV.asm"     ; 0x5571

%include "vmnpc/api_idx_0006_RKSL.asm"     ; 0x573e

%include "shared/api_idx_0002_GKQL.asm"     ; 0x57bb

%include "vmnpc/api_idx_005e_KVNO.asm"     ; 0x57e1

%include "vmnpc/api_idx_004e_PHKR.asm"     ; 0x5b74

%include "vmnpc/api_idx_0006_GQUO.asm"     ; 0x5d0e

%include "vmnpc/api_idx_0054_IHKM.asm"     ; 0x5d93

%include "vmnpc/api_idx_0072_KTMQ.asm"     ; 0x5e96

%include "vmnpc/api_idx_005e_QNLK.asm"     ; 0x5fd0

%include "vmnpc/api_idx_00d2_OHOJ.asm"     ; 0x631e

%include "vmnpc/leaf_loc_QKMR.asm"         ; 0x6592

%include "vmnpc/api_idx_009c_RPGN.asm"     ; 0x677a

%include "vmnpc/string_loc_RQHG.asm"       ; 0x6c00

%include "vmnpc/string_loc_VMIJ.asm"       ; 0x6c08

%include "vmnpc/loc_JSTI.asm"              ; 0x6d9d

%include "vmnpc/api_idx_0086_JRHU.asm"     ; 0x6e0f

%include "vmnpc/api_idx_001e_GOQP.asm"     ; 0x70b7

%include "vmnpc/api_idx_0006_MITV.asm"     ; 0x72bf

%include "vmnpc/loc_LOVI.asm"              ; 0x7400

%include "vmnpc/loc_IVVH.asm"              ; 0x742e

%include "shared/draw_party_slot_letters.asm" ; 0x7452

%include "shared/api_idx_0002_TIUI.asm"     ; 0x74d1

%include "vmnpc/api_idx_0004_NIJP.asm"     ; 0x752c

%include "vmnpc/api_idx_000a_LSOP.asm"     ; 0x759d

%include "shared/loc_PTRP.asm"              ; 0x75db

%include "vmnpc/loc_IMPO.asm"              ; 0x7667

%include "vmnpc/api_idx_000c_GHTR.asm"     ; 0x7708

loc_SRQQ.bss1     equ bss_93d6
loc_SRQQ.api_idx1 equ api_idx_000a_LSOP
loc_SRQQ.api_idx2 equ api_idx_000c_GHTR
%include "shared/loc_SRQQ.asm"              ; 0x77a1

%include "vmnpc/loc_UVUO.asm"              ; 0x7832

%include "vmnpc/api_idx_0044_NORP.asm"     ; 0x786c

%include "vmnpc/api_idx_0006_TLLQ.asm"     ; 0x84f0

%include "vmnpc/api_idx_002a_NJKV.asm"     ; 0x8550

%include "vmnpc/loc_HOSN.asm"              ; 0x85f9

%include "shared/loc_SIKN.asm"              ; 0x8662

%include "vmnpc/api_idx_0002_GRRR.asm"     ; 0x86a4

%include "vmnpc/loc_GTUI.asm"              ; 0x86c6

%include "vmnpc/loc_TVPR.asm"              ; 0x86d7

%include "vmnpc/loc_RQHG_86df.asm"         ; 0x86df

%include "vmnpc/loc_RQHG_86e7.asm"         ; 0x86e7

%include "vmnpc/loc_RQHG_86ef.asm"         ; 0x86ef

%include "vmnpc/loc_RQHG_86f7.asm"         ; 0x86f7

%include "vmnpc/loc_RQHG_86ff.asm"         ; 0x86ff

%include "vmnpc/loc_RQHG_8707.asm"         ; 0x8707

%include "vmnpc/loc_VVHO.asm"              ; 0x870f

%include "vmnpc/api_idx_0004_JVTH.asm"     ; 0x8738

%include "vmnpc/api_idx_0002_JGQP.asm"     ; 0x8793

%include "vmnpc/api_idx_0006_UKIH.asm"     ; 0x8849

%include "vmnpc/loc_UIIS.asm"              ; 0x8981

%include "vmnpc/api_idx_0058_PMKH.asm"     ; 0x89a8

%include "vmnpc/api_idx_0054_TNHV.asm"     ; 0x8a81

%include "vmnpc/api_idx_0002_NTRU.asm"     ; 0x8bb0

%include "vmnpc/api_idx_0002_UHGS.asm"     ; 0x8be8

%include "shared/api_idx_0004_ULSR.asm"     ; 0x8c2a

%include "vmnpc/api_idx_0084_VMPP.asm"     ; 0x8c72

%include "vmnpc/api_idx_0002_MRKH.asm"     ; 0x8d86

%include "vmnpc/api_idx_00a6_OTNK.asm"     ; 0x8dbd

%include "vmnpc/api_idx_00a8_PUTL.asm"     ; 0x8ead

%include "vmnpc/api_idx_0004_GSIV.asm"     ; 0x8f85

%include "vmnpc/api_idx_000e_OOOK.asm"     ; 0x927d

%include "vmnpc/api_idx_000a_HIIM.asm"     ; 0x93e7

%include "vmnpc/loc_IPHP.asm"              ; 0x9587

%include "vmnpc/api_idx_0080_TKTP.asm"     ; 0x96c7

%include "vmnpc/api_idx_0100_KHVV.asm"     ; 0x9748

%include "vmnpc/api_idx_00a2_IKRJ.asm"     ; 0x9844

%include "vmnpc/loc_SMSJ.asm"              ; 0x9a04

jumptable_9baa_case_0:
    mov ax, 0x90f8                   ; 0x9a22
    push ax                          ; 0x9a25
    push word [bss_b04a]             ; 0x9a26
    call api_idx_0080_TKTP           ; 0x9a2a
    add sp, byte 4                   ; 0x9a2d
    jmp near @..loc_SMSJ.l5          ; 0x9a30
jumptable_9baa_case_1:
    cmp word [bss_b04c], byte 0      ; 0x9a33
    jle short @..loc_SMSJ.l1         ; 0x9a38
    mov ax, 0x90f9                   ; 0x9a3a
    push ax                          ; 0x9a3d
    push word [bss_b04c]             ; 0x9a3e
    call api_idx_0080_TKTP           ; 0x9a42
    add sp, byte 4                   ; 0x9a45
    mov ax, 0                        ; 0x9a48
    push ax                          ; 0x9a4b
    push word [bss_905a]             ; 0x9a4c
    call api_idx_0004_GRRG           ; 0x9a50
    add sp, byte 4                   ; 0x9a53
@..loc_SMSJ.l1:
    jmp near @..loc_SMSJ.l5          ; 0x9a56
jumptable_9baa_case_2:
    mov ax, 0x90fa                   ; 0x9a59
    push ax                          ; 0x9a5c
    mov ax, 0x648                    ; 0x9a5d
    push ax                          ; 0x9a60
    call api_idx_0080_TKTP           ; 0x9a61
    add sp, byte 4                   ; 0x9a64
    mov ax, word [bss_9e4e]          ; 0x9a67
    mov word [bss_9e46], ax          ; 0x9a6a
    mov ax, word [bss_9e4a]          ; 0x9a6d
    mov word [bss_9e42], ax          ; 0x9a70
    mov ax, word [bss_9e4c]          ; 0x9a73
    mov word [bss_9e44], ax          ; 0x9a76
    mov word [bss_9e62], 1           ; 0x9a79
    push word [bss_9e50]             ; 0x9a7f
    call loc_GTUI                    ; 0x9a83
    pop cx                           ; 0x9a86
    jmp near @..loc_SMSJ.l5          ; 0x9a87
jumptable_9baa_case_3:
    mov ax, 0x90fb                   ; 0x9a8a
    push ax                          ; 0x9a8d
    mov ax, 0x649                    ; 0x9a8e
    push ax                          ; 0x9a91
    call api_idx_0080_TKTP           ; 0x9a92
    add sp, byte 4                   ; 0x9a95
    mov word [bss_9e50], 0xffff      ; 0x9a98
    jmp near @..loc_SMSJ.l5          ; 0x9a9e
jumptable_9baa_case_4:
    mov ax, 0x90fc                   ; 0x9aa1
    push ax                          ; 0x9aa4
    mov ax, 0x64a                    ; 0x9aa5
    push ax                          ; 0x9aa8
    call api_idx_0080_TKTP           ; 0x9aa9
    add sp, byte 4                   ; 0x9aac
    jmp near @..loc_SMSJ.l5          ; 0x9aaf
jumptable_9baa_case_5:
    mov ax, 0x90fd                   ; 0x9ab2
    push ax                          ; 0x9ab5
    mov ax, 0x64b                    ; 0x9ab6
    push ax                          ; 0x9ab9
    call api_idx_0080_TKTP           ; 0x9aba
    add sp, byte 4                   ; 0x9abd
    jmp near @..loc_SMSJ.l5          ; 0x9ac0
jumptable_9baa_case_6:
    mov ax, 0x90fe                   ; 0x9ac3
    push ax                          ; 0x9ac6
    mov ax, 0x64c                    ; 0x9ac7
    push ax                          ; 0x9aca
    call api_idx_0080_TKTP           ; 0x9acb
    add sp, byte 4                   ; 0x9ace
    mov ax, 0                        ; 0x9ad1
    push ax                          ; 0x9ad4
    mov ax, 5                        ; 0x9ad5
    push ax                          ; 0x9ad8
    call ds_app_PUNN                 ; 0x9ad9
    pop cx                           ; 0x9adc
    mov cx, ax                       ; 0x9add
    inc ax                           ; 0x9adf
    mov cx, ax                       ; 0x9ae0
    mov ax, 0                        ; 0x9ae2
    sub ax, cx                       ; 0x9ae5
    push ax                          ; 0x9ae7
    push word [bss_b04e]             ; 0x9ae8
    call loc_HOSN                    ; 0x9aec
    add sp, byte 6                   ; 0x9aef
    mov ax, 2                        ; 0x9af2
    push ax                          ; 0x9af5
    call ds_app_PUNN                 ; 0x9af6
    pop cx                           ; 0x9af9
    cmp ax, strict word 1            ; 0x9afa
    jne short @..loc_SMSJ.l2         ; 0x9afd
    mov word [bss_9e70], 1           ; 0x9aff
@..loc_SMSJ.l2:
    jmp near @..loc_SMSJ.l5          ; 0x9b05
jumptable_9baa_case_7:
    mov ax, 0x90ff                   ; 0x9b08
    push ax                          ; 0x9b0b
    mov ax, 0x64d                    ; 0x9b0c
    push ax                          ; 0x9b0f
    call api_idx_0080_TKTP           ; 0x9b10
    add sp, byte 4                   ; 0x9b13
    mov word [bss_9e42], 0xffff      ; 0x9b16
    mov word [bss_9e44], 0           ; 0x9b1c
    mov word [bss_9e46], 0xffff      ; 0x9b22
    mov word [bss_9e4a], 0xffff      ; 0x9b28
    mov word [bss_9e4c], 0           ; 0x9b2e
    mov word [bss_9e4e], 0xffff      ; 0x9b34
    mov word [bss_9e50], 0xffff      ; 0x9b3a
    jmp near @..loc_SMSJ.l5          ; 0x9b40
jumptable_9baa_case_8:
    mov ax, 0x9100                   ; 0x9b43
    push ax                          ; 0x9b46
    mov ax, 0x64e                    ; 0x9b47
    push ax                          ; 0x9b4a
    call api_idx_0080_TKTP           ; 0x9b4b
    add sp, byte 4                   ; 0x9b4e
    jmp near @..loc_SMSJ.l5          ; 0x9b51
jumptable_9baa_case_9:
    mov ax, 0x9101                   ; 0x9b54
    push ax                          ; 0x9b57
    mov ax, 0x64f                    ; 0x9b58
    push ax                          ; 0x9b5b
    call api_idx_0080_TKTP           ; 0x9b5c
    add sp, byte 4                   ; 0x9b5f
    cmp word [bss_9d6a], byte 0      ; 0x9b62
    jne short @..loc_SMSJ.l3         ; 0x9b67
    mov ax, 2                        ; 0x9b69
    push ax                          ; 0x9b6c
    call ds_app_PUNN                 ; 0x9b6d
    pop cx                           ; 0x9b70
    cmp ax, strict word 1            ; 0x9b71
    jne short @..loc_SMSJ.l3         ; 0x9b74
    mov ax, 0x248                    ; 0x9b76
    imul word [bss_b04e]             ; 0x9b79
    add ax, word [bss_9136]          ; 0x9b7d
    mov bx, ax                       ; 0x9b81
    cmp byte [bx + 0x5db2], 0x32     ; 0x9b83
    jge short @..loc_SMSJ.l3         ; 0x9b88
    mov ax, 0                        ; 0x9b8a
    push ax                          ; 0x9b8d
    mov ax, 3                        ; 0x9b8e
    push ax                          ; 0x9b91
    call ds_app_PUNN                 ; 0x9b92
    pop cx                           ; 0x9b95
    inc ax                           ; 0x9b96
    push ax                          ; 0x9b97
    push word [bss_b04e]             ; 0x9b98
    call loc_HOSN                    ; 0x9b9c
    add sp, byte 6                   ; 0x9b9f
    mov word [bss_9d6a], 1           ; 0x9ba2
@..loc_SMSJ.l3:
    jmp short @..loc_SMSJ.l5         ; 0x9ba8
jumptable_9baa:
    dw jumptable_9baa_case_0 - IMAGE_BASE + 0x5055 ; 0x9baa
    dw jumptable_9baa_case_1 - IMAGE_BASE + 0x5055 ; 0x9bac
    dw jumptable_9baa_case_2 - IMAGE_BASE + 0x5055 ; 0x9bae
    dw jumptable_9baa_case_3 - IMAGE_BASE + 0x5055 ; 0x9bb0
    dw jumptable_9baa_case_4 - IMAGE_BASE + 0x5055 ; 0x9bb2
    dw jumptable_9baa_case_5 - IMAGE_BASE + 0x5055 ; 0x9bb4
    dw jumptable_9baa_case_6 - IMAGE_BASE + 0x5055 ; 0x9bb6
    dw jumptable_9baa_case_7 - IMAGE_BASE + 0x5055 ; 0x9bb8
    dw jumptable_9baa_case_8 - IMAGE_BASE + 0x5055 ; 0x9bba
    dw jumptable_9baa_case_9 - IMAGE_BASE + 0x5055 ; 0x9bbc
@..loc_SMSJ.l4:
    cmp ax, strict word 0xa          ; 0x9bbe
    jae short @..loc_SMSJ.l5         ; 0x9bc1
    xchg bx, ax                      ; 0x9bc3
    shl bx, 1                        ; 0x9bc4
    jmp [cs:bx - 0x140f]             ; 0x9bc6
@..loc_SMSJ.l5:
    ret                              ; 0x9bcb
%include "vmnpc/api_idx_0002_NUKT.asm"     ; 0x9bcc

%include "vmnpc/loc_OJVU.asm"              ; 0x9c7a

%include "vmnpc/loc_UPRU.asm"              ; 0x9d06

%include "vmnpc/api_idx_0054_UOTQ.asm"     ; 0x9d30

%include "vmnpc/loc_LTIS.asm"              ; 0xa29f

%include "vmnpc/api_idx_0002_JOQL.asm"     ; 0xa2e7

%include "vmnpc/api_idx_0002_UVON.asm"     ; 0xa391

%include "vmnpc/api_idx_0002_SLOH.asm"     ; 0xa3dd

%include "vmnpc/api_idx_0002_NSKK.asm"     ; 0xa411

%include "vmnpc/loc_MGPH.asm"              ; 0xa441

%include "vmnpc/api_idx_0016_TOUQ.asm"     ; 0xa546

%include "vmnpc/api_idx_00b0_KPHQ.asm"     ; 0xa837

%include "vmnpc/api_idx_00ba_TUGQ.asm"     ; 0xaa93

%include "vmnpc/api_idx_006a_QKPT.asm"     ; 0xab8d

%include "vmnpc/asm_only/string_loc_NVTI.asm"       ; 0xae10

%include "shared/aztec_strncpy.asm"         ; 0xae4e

aztec_strcmp.loc1 equ loc_OSRT
%include "shared/aztec_strcmp.asm"          ; 0xae76

aztec_strncmp.loc1 equ loc_LNNU
%include "shared/aztec_strncmp.asm"         ; 0xae94

loc_OSRT:
    sub di, byte 2                   ; 0xaec9
    scasb                            ; 0xaecc
    jne short loc_LNNU               ; 0xaecd
    test al, al                      ; 0xaecf
    je short loc_PGTO                ; 0xaed1
    mov al, ah                       ; 0xaed3
    scasb                            ; 0xaed5
loc_LNNU:
    sbb ax, ax                       ; 0xaed6
    js short loc_QKLS                ; 0xaed8
    inc ax                           ; 0xaeda
    jmp short loc_QKLS               ; 0xaedb
__zdata_start:

    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x31, 0x20, 0x00, 0x28, 0x31, 0x29, 0x00, 0x50, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'VM1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 0x20, 0x00, 0x20, 0x00, 0x20
    times 45 db 0
    db 'PHOONZANG', 0
    times 10 db 0


__zimage_end:
