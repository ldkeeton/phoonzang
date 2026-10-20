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
    dw (__zdata_start - __zcode_start)       ; 0x1609 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0120 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0002 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0x6620 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vinit/ovmain.asm"                ; 0x000e

%include "vinit/api_idx_0002_JOSN.asm"     ; 0x0045

%include "vinit/api_idx_0002_OGHR.asm"     ; 0x0084

%include "vinit/api_idx_0002_GHOH.asm"     ; 0x00ca

%include "vinit/api_idx_0002_TJHL.asm"     ; 0x010c

%include "vinit/api_idx_000c_QTSG.asm"     ; 0x0146

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_90a5 equ __zdseg_end + 0x000d
dseg_90b1 equ __zdseg_end + 0x0019
dseg_90bd equ __zdseg_end + 0x0025
dseg_90c9 equ __zdseg_end + 0x0031
dseg_90d5 equ __zdseg_end + 0x003d
dseg_90e1 equ __zdseg_end + 0x0049
dseg_90ed equ __zdseg_end + 0x0055
dseg_90f9 equ __zdseg_end + 0x0061
dseg_9105 equ __zdseg_end + 0x006d
dseg_9111 equ __zdseg_end + 0x0079
dseg_911d equ __zdseg_end + 0x0085
dseg_9129 equ __zdseg_end + 0x0091
dseg_9136 equ __zdseg_end + 0x009e
dseg_9141 equ __zdseg_end + 0x00a9
dseg_914a equ __zdseg_end + 0x00b2
dseg_9152 equ __zdseg_end + 0x00ba
dseg_915d equ __zdseg_end + 0x00c5
dseg_9166 equ __zdseg_end + 0x00ce
dseg_916e equ __zdseg_end + 0x00d6
dseg_917b equ __zdseg_end + 0x00e3
%include "vinit/loc_RVQR.asm"              ; 0x03a8

%include "shared/api_idx_0002_LVPS.asm"     ; 0x08b7

bss_91b8 equ __zdseg_end + (__zobss_91b8 - __zdata_start)
%include "vinit/api_idx_0002_PUOP.asm"     ; 0x094a

%include "vinit/api_idx_0004_OIGN.asm"     ; 0x0988

%include "vinit/api_idx_000e_JRRT.asm"     ; 0x09d3

%include "vinit/loc_KVVL.asm"              ; 0x0a56

dseg_9187 equ __zdseg_end + 0x00ef
dseg_9194 equ __zdseg_end + 0x00fc
; bss_91b8  equ __zdseg_end + (__zobss_91b8 - __zdata_start)
%include "vinit/api_idx_0068_OUHP.asm"     ; 0x0ac7

%include "vinit/api_idx_0002_SKSN.asm"     ; 0x133d

dseg_91a1 equ __zdseg_end + 0x0109
%include "vinit/api_idx_0008_QGRM.asm"     ; 0x1409

save_si  equ __zdseg_end + 0x0116
save_di  equ __zdseg_end + 0x0118
save_sp  equ __zdseg_end + 0x011a
save_bp  equ __zdseg_end + 0x011c
save_ret equ __zdseg_end + 0x011e
_Uorg    equ __zdseg_end + (__zobss_91b8 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec_ovbgn.asm"           ; 0x15d9

__zdseg_9098:
__zdata_start:
    push bx                          ; 0x1617
    inc bx                           ; 0x1618
    inc bp                           ; 0x1619
    dec si                           ; 0x161a
    inc cx                           ; 0x161b
    push dx                          ; 0x161c
    dec cx                           ; 0x161d
    dec di                           ; 0x161e
    cs dec ax                        ; 0x161f
    inc sp                           ; 0x1621
    push dx                          ; 0x1622
    add byte [bp + 0x42], dl         ; 0x1623
    inc si                           ; 0x1626
    dec di                           ; 0x1627
    dec si                           ; 0x1628
    push sp                          ; 0x1629
    xor byte [bss_4756], ch          ; 0x162a
    inc cx                           ; 0x162e
    add byte [bp + 0x42], dl         ; 0x162f
    inc si                           ; 0x1632
    dec di                           ; 0x1633
    dec si                           ; 0x1634
    push sp                          ; 0x1635
    xor word [bss_4756], bp          ; 0x1636
    inc cx                           ; 0x163a
    add byte [bp + 0x42], dl         ; 0x163b
    inc si                           ; 0x163e
    dec di                           ; 0x163f
    dec si                           ; 0x1640
    push sp                          ; 0x1641
    xor ch, byte [bss_4756]          ; 0x1642
    inc cx                           ; 0x1646
    add byte [bp + 0x42], dl         ; 0x1647
    inc si                           ; 0x164a
    dec di                           ; 0x164b
    dec si                           ; 0x164c
    push sp                          ; 0x164d
    xor bp, word [bss_4756]          ; 0x164e
    inc cx                           ; 0x1652
    add byte [bp + 0x43], dl         ; 0x1653
    inc si                           ; 0x1656
    dec di                           ; 0x1657
    dec si                           ; 0x1658
    push sp                          ; 0x1659
    xor word [bss_4756], bp          ; 0x165a
    inc cx                           ; 0x165e
    add byte [bp + 0x43], dl         ; 0x165f
    push ax                          ; 0x1662
    dec di                           ; 0x1663
    push dx                          ; 0x1664
    push sp                          ; 0x1665
    xor byte [bss_4756], ch          ; 0x1666
    inc cx                           ; 0x166a
    add byte [bp + 0x43], dl         ; 0x166b
    inc si                           ; 0x166e
    dec di                           ; 0x166f
    dec si                           ; 0x1670
    push sp                          ; 0x1671
    xor ch, byte [bss_4756]          ; 0x1672
    inc cx                           ; 0x1676
    add byte [bp + 0x43], dl         ; 0x1677
    inc si                           ; 0x167a
    dec di                           ; 0x167b
    dec si                           ; 0x167c
    push sp                          ; 0x167d
    xor bp, word [bss_4756]          ; 0x167e
    inc cx                           ; 0x1682
    add byte [bp + 0x4d], dl         ; 0x1683
    push ax                          ; 0x1686
    dec si                           ; 0x1687
    push sp                          ; 0x1688
    push dx                          ; 0x1689
    xor byte [bss_4756], ch          ; 0x168a
    inc cx                           ; 0x168e
    add byte [bp + 0x4d], dl         ; 0x168f
    push ax                          ; 0x1692
    dec si                           ; 0x1693
    push sp                          ; 0x1694
    push dx                          ; 0x1695
    xor word [bss_4756], bp          ; 0x1696
    inc cx                           ; 0x169a
    add byte [bp + 0x4d], dl         ; 0x169b
    push ax                          ; 0x169e
    dec si                           ; 0x169f
    push sp                          ; 0x16a0
    push dx                          ; 0x16a1
    xor ch, byte [bss_4756]          ; 0x16a2
    inc cx                           ; 0x16a6
    add byte [bp + si + 0x41], al    ; 0x16a7
    push bx                          ; 0x16aa
    inc bp                           ; 0x16ab
    inc sp                           ; 0x16ac
    inc cx                           ; 0x16ad
    push sp                          ; 0x16ae
    inc cx                           ; 0x16af
    cs push si                       ; 0x16b0
    inc di                           ; 0x16b2
    inc cx                           ; 0x16b3
    add byte [di + 0x41], cl         ; 0x16b4
    push bx                          ; 0x16b7
    push sp                          ; 0x16b8
    inc bp                           ; 0x16b9
    push dx                          ; 0x16ba
    cs dec ax                        ; 0x16bb
    inc sp                           ; 0x16bd
    push dx                          ; 0x16be
    add byte [si + 0x49], al         ; 0x16bf
    push bx                          ; 0x16c2
    dec bx                           ; 0x16c3
    cs dec ax                        ; 0x16c4
    inc sp                           ; 0x16c6
    push dx                          ; 0x16c7
    add byte [di + 0x53], cl         ; 0x16c8
    inc di                           ; 0x16cb
    cs dec ax                        ; 0x16cc
    inc sp                           ; 0x16ce
    push dx                          ; 0x16cf
    add byte [bx + si + 0x43], dl    ; 0x16d0
    inc si                           ; 0x16d3
    dec cx                           ; 0x16d4
    dec sp                           ; 0x16d5
    inc bp                           ; 0x16d6
    cs inc sp                        ; 0x16d7
    inc dx                           ; 0x16d9
    push bx                          ; 0x16da
    add byte [di + 0x49], cl         ; 0x16db
    push bx                          ; 0x16de
    inc bx                           ; 0x16df
    cs dec ax                        ; 0x16e0
    inc sp                           ; 0x16e2
    push dx                          ; 0x16e3
    add byte [di + 0x53], cl         ; 0x16e4
    inc di                           ; 0x16e7
    cs inc sp                        ; 0x16e8
    inc dx                           ; 0x16ea
    push bx                          ; 0x16eb
    add byte [bp + di + 0x43], dl    ; 0x16ec
    inc bp                           ; 0x16ef
    dec si                           ; 0x16f0
    inc cx                           ; 0x16f1
    push dx                          ; 0x16f2
    dec cx                           ; 0x16f3
    dec di                           ; 0x16f4
    cs inc sp                        ; 0x16f5
    inc dx                           ; 0x16f7
    push bx                          ; 0x16f8
    add byte [bx + si + 0x41], dl    ; 0x16f9
    dec sp                           ; 0x16fc
    inc bp                           ; 0x16fd
    push sp                          ; 0x16fe
    push sp                          ; 0x16ff
    inc bp                           ; 0x1700
    cs inc sp                        ; 0x1701
    inc bp                           ; 0x1703
    inc si                           ; 0x1704
    add byte [si + 0x49], dl         ; 0x1705
    push sp                          ; 0x1708
    xor word [bp + di + 0x43], dx    ; 0x1709
    push dx                          ; 0x170c
    dec si                           ; 0x170d
    cs push si                       ; 0x170e
    inc di                           ; 0x1710
    inc cx                           ; 0x1711
    add byte [si + 0x49], dl         ; 0x1712
    push sp                          ; 0x1715
    xor dl, byte [bp + di + 0x43]    ; 0x1716
    push dx                          ; 0x1719
    dec si                           ; 0x171a
    cs push si                       ; 0x171b
    inc di                           ; 0x171d
    inc cx                           ; 0x171e
    add byte [di + 0x41], cl         ; 0x171f
    dec cx                           ; 0x1722
    dec si                           ; 0x1723
    push bx                          ; 0x1724
    inc bx                           ; 0x1725
    push dx                          ; 0x1726
    dec si                           ; 0x1727
    cs push si                       ; 0x1728
    inc di                           ; 0x172a
    inc cx                           ; 0x172b
    add byte [bx + si], al           ; 0x172c
    add byte [bx + si], al           ; 0x172e
    add byte [bx + si], al           ; 0x1730
    add byte [bx + si], al           ; 0x1732
    add byte [bx + si], al           ; 0x1734
    db 0x00

__zimage_end:
absolute __zimage_end
__zobss_91b8:
    resb 0x0002
__zobss_end:
