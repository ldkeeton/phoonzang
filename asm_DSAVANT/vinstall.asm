; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vinstall.inc"
bits 16
%ifndef VBASE
VBASE equ -0x0200
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0200 + VBASE
%endif

    ; DOS MZ executable header (512 bytes)
    db "MZ"                               ; e_magic: DOS MZ signature
    dw (__zimage_end - $$) % 512          ; 0x0014 ; e_cblp: bytes in final 512-byte page (0 means full)
    dw ((__zimage_end - $$) + 511) // 512 ; 0x0031 ; e_cp: total 512-byte pages in the file
    dw 0x0001                             ; e_crlc: number of relocation entries
    dw 0x0020                             ; e_cparhdr: header size in 16-byte paragraphs
    dw 0x045d                             ; e_minalloc: minimum extra memory paragraphs
    dw 0xffff                             ; e_maxalloc: maximum extra memory paragraphs
    dw __zdseg_para                       ; 0x038e ; e_ss: initial stack segment, relative to load module
    dw 0x6afe                             ; e_sp: initial stack pointer
    dw 0x0000                             ; e_csum: file checksum (often unused)
    dw aztec_begin - IMAGE_BASE           ; 0x33d2 ; e_ip: initial instruction pointer
    dw 0x0000                             ; e_cs: initial code segment, relative to load module
    dw 0x0020                             ; e_lfarlc: file offset of relocation table
    dw 0x0000                             ; e_ovno: overlay number (0 for main executable)

    times 4 db 0
    db 0xd3, 0x33
    times 478 db 0

loc_TIGK equ 0x1fb2 + VBASE
leaf_loc_5fe5 equ 0x5fe5 + VBASE
psp_top_of_memory equ 0x0002
dseg_0004 equ __zdseg_0004 - __zdseg_start
dseg_0006 equ __zdseg_0006 - __zdseg_start
dseg_000e equ __zdseg_000e - __zdseg_start
dseg_0025 equ __zdseg_0025 - __zdseg_start
psp_env_segment equ 0x002c
dseg_002e equ __zstr_0025 - __zdseg_start + 0x0009
dseg_0030 equ __zstr_0025 - __zdseg_start + 0x000b
dseg_003c equ __zdseg_003c - __zdseg_start
dseg_0053 equ __zdseg_0053 - __zdseg_start
dseg_006a equ __zdseg_006a - __zdseg_start
psp_cmd_tail_len equ 0x0080
dseg_0081 equ __zdseg_0081 - __zdseg_start
dseg_009c equ __zdseg_009c - __zdseg_start
dseg_00a0 equ __zdseg_00a0 - __zdseg_start
dseg_00b4 equ __zdseg_00b4 - __zdseg_start
dseg_00c8 equ __zdseg_00c8 - __zdseg_start
dseg_00dc equ __zdseg_00dc - __zdseg_start
dseg_00f0 equ __zdseg_00f0 - __zdseg_start
dseg_0104 equ __zdseg_0104 - __zdseg_start
dseg_0118 equ __zdseg_0118 - __zdseg_start
dseg_012c equ __zdseg_012c - __zdseg_start
dseg_0140 equ __zdseg_0140 - __zdseg_start
dseg_0158 equ __zdseg_0158 - __zdseg_start
dseg_015c equ __zdseg_015c - __zdseg_start
dseg_016a equ __zdseg_016a - __zdseg_start
dseg_0181 equ __zdseg_0181 - __zdseg_start
dseg_0198 equ __zdseg_0198 - __zdseg_start
dseg_01af equ __zdseg_01af - __zdseg_start
dseg_01c6 equ __zdseg_01c6 - __zdseg_start
dseg_230e equ __zdseg_230e - __zdseg_start
dseg_2310 equ __zdseg_2310 - __zdseg_start
dseg_2312 equ __zdseg_2312 - __zdseg_start
dseg_2314 equ __zdseg_2314 - __zdseg_start
dseg_2316 equ __zdseg_2316 - __zdseg_start
dseg_2318 equ __zdseg_2318 - __zdseg_start
dseg_231a equ __zdseg_231a - __zdseg_start
dseg_231c equ __zdseg_231c - __zdseg_start
dseg_234a equ __zdseg_234a - __zdseg_start
dseg_244e equ __zdseg_244e - __zdseg_start
dseg_24d4 equ __zdseg_24d4 - __zdseg_start
dseg_24d6 equ __zdseg_24d6 - __zdseg_start
dseg_24d8 equ __zdseg_24d8 - __zdseg_start
dseg_24da equ __zdseg_24da - __zdseg_start
dseg_24dc equ __zdseg_24dc - __zdseg_start
dseg_24de equ __zdseg_24de - __zdseg_start
dseg_24e0 equ __zdseg_24e0 - __zdseg_start
dseg_24e4 equ __zdseg_24e4 - __zdseg_start
dseg_2500 equ __zdseg_2500 - __zdseg_start
dseg_2512 equ __zdseg_2512 - __zdseg_start
dseg_2514 equ __zdseg_2514 - __zdseg_start
dseg_2516 equ __zdseg_2516 - __zdseg_start
dseg_2518 equ __zdseg_2518 - __zdseg_start
dseg_251a equ __zdseg_251a - __zdseg_start
dseg_251b equ __zdseg_251b - __zdseg_start
dseg_251c equ __zdseg_251c - __zdseg_start
dseg_252e equ __zdseg_252e - __zdseg_start
dseg_2530 equ __zdseg_2530 - __zdseg_start
dseg_2532 equ __zdseg_2532 - __zdseg_start
bss_2534 equ (__zimage_end - __zdseg_start)
bss_2536 equ (__zimage_end - __zdseg_start) + 0x0002
bss_2538 equ (__zimage_end - __zdseg_start) + 0x0004
bss_253a equ (__zimage_end - __zdseg_start) + 0x0006
bss_253c equ (__zimage_end - __zdseg_start) + 0x0008
bss_2642 equ (__zimage_end - __zdseg_start) + 0x010e
bss_2644 equ (__zimage_end - __zdseg_start) + 0x0110
bss_2645 equ (__zimage_end - __zdseg_start) + 0x0111
bss_2646 equ (__zimage_end - __zdseg_start) + 0x0112
bss_2647 equ (__zimage_end - __zdseg_start) + 0x0113
bss_2698 equ (__zimage_end - __zdseg_start) + 0x0164
bss_29ba equ (__zimage_end - __zdseg_start) + 0x0486
bss_29bb equ (__zimage_end - __zdseg_start) + 0x0487
bss_29d0 equ (__zimage_end - __zdseg_start) + 0x049c
bss_29d1 equ (__zimage_end - __zdseg_start) + 0x049d
bss_29d2 equ (__zimage_end - __zdseg_start) + 0x049e
bss_29d4 equ (__zimage_end - __zdseg_start) + 0x04a0
bss_29d5 equ (__zimage_end - __zdseg_start) + 0x04a1
bss_29d6 equ (__zimage_end - __zdseg_start) + 0x04a2
bss_29d7 equ (__zimage_end - __zdseg_start) + 0x04a3
bss_29d8 equ (__zimage_end - __zdseg_start) + 0x04a4
bss_29da equ (__zimage_end - __zdseg_start) + 0x04a6
bss_29dc equ (__zimage_end - __zdseg_start) + 0x04a8
bss_29dd equ (__zimage_end - __zdseg_start) + 0x04a9
bss_29df equ (__zimage_end - __zdseg_start) + 0x04ab
bss_29e1 equ (__zimage_end - __zdseg_start) + 0x04ad
bss_29e2 equ (__zimage_end - __zdseg_start) + 0x04ae
bss_29e3 equ (__zimage_end - __zdseg_start) + 0x04af
bss_29e6 equ (__zimage_end - __zdseg_start) + 0x04b2
bss_29e8 equ (__zimage_end - __zdseg_start) + 0x04b4
bss_29ea equ (__zimage_end - __zdseg_start) + 0x04b6
bss_29ec equ (__zimage_end - __zdseg_start) + 0x04b8
bss_29ee equ (__zimage_end - __zdseg_start) + 0x04ba
bss_2af0 equ (__zimage_end - __zdseg_start) + 0x05bc
bss_2af2 equ (__zimage_end - __zdseg_start) + 0x05be
bss_2af4 equ (__zimage_end - __zdseg_start) + 0x05c0
bss_2af6 equ (__zimage_end - __zdseg_start) + 0x05c2
bss_2af8 equ (__zimage_end - __zdseg_start) + 0x05c4
bss_2afa equ (__zimage_end - __zdseg_start) + 0x05c6
bss_2afc equ (__zimage_end - __zdseg_start) + 0x05c8
bss_2afe equ (__zimage_end - __zdseg_start) + 0x05ca
__zbss_size equ 0x05ca
__zdseg_end equ (__zimage_end - __zdseg_start) + __zbss_size

loc_IGLH:
    push bp                          ; 0x0200
    mov bp, sp                       ; 0x0201
    add sp, byte 0xee                ; 0x0203
    mov bx, word [bp + 0x4]          ; 0x0206
    mov al, byte [bx]                ; 0x0209
    cbw                              ; 0x020b
    push ax                          ; 0x020c
    call aztec_toupper               ; 0x020d
    pop cx                           ; 0x0210
    add ax, strict word 0xffbf       ; 0x0211
    mov word [bp - 0x0012], ax       ; 0x0214
    cmp ax, strict word 0            ; 0x0217
    jl short @..loc_IGLH.l3          ; 0x021a
    cmp ax, strict word 0x19         ; 0x021c
    jg short @..loc_IGLH.l3          ; 0x021f
    mov ax, word [bp - 0x0012]       ; 0x0221
    mov word [bp - 0x000a], ax       ; 0x0224
    mov word [bp - 0x0010], 0xe00    ; 0x0227
    lea ax, word [bp - 0x0010]       ; 0x022c
    push ax                          ; 0x022f
    push ax                          ; 0x0230
    mov ax, 0x21                     ; 0x0231
    push ax                          ; 0x0234
    call aztec_sysint                ; 0x0235
    add sp, byte 6                   ; 0x0238
    mov word [bp - 0x0010], 0x1900   ; 0x023b
    lea ax, word [bp - 0x0010]       ; 0x0240
    push ax                          ; 0x0243
    push ax                          ; 0x0244
    mov ax, 0x21                     ; 0x0245
    push ax                          ; 0x0248
    call aztec_sysint                ; 0x0249
    add sp, byte 6                   ; 0x024c
    mov ax, word [bp - 0x0010]       ; 0x024f
    and ax, 0xff                     ; 0x0252
    cmp ax, word [bp - 0x0012]       ; 0x0255
    je short @..loc_IGLH.l2          ; 0x0258
    mov ax, 0xffff                   ; 0x025a
@..loc_IGLH.l1:
    mov sp, bp                       ; 0x025d
    pop bp                           ; 0x025f
    ret                              ; 0x0260
@..loc_IGLH.l2:
    jmp short @..loc_IGLH.l4         ; 0x0261
@..loc_IGLH.l3:
    mov ax, 0xffff                   ; 0x0263
    jmp short @..loc_IGLH.l1         ; 0x0266
@..loc_IGLH.l4:
    mov ax, 0                        ; 0x0268
    jmp short @..loc_IGLH.l1         ; 0x026b
loc_IRKJ:
    push bp                          ; 0x026d
    mov bp, sp                       ; 0x026e
    add sp, byte 0xfe                ; 0x0270
    push di                          ; 0x0273
    push si                          ; 0x0274
    mov di, 0                        ; 0x0275
    push word [bp + 0x4]             ; 0x0278
    call aztec_strlen                ; 0x027b
    pop cx                           ; 0x027e
    dec ax                           ; 0x027f
    mov word [bp - 0x0002], ax       ; 0x0280
    jmp short @..loc_IRKJ.l2         ; 0x0283
@..loc_IRKJ.l1:
    mov bx, word [bp + 0x4]          ; 0x0285
    mov al, byte [bx + di]           ; 0x0288
    cbw                              ; 0x028a
    mov si, ax                       ; 0x028b
    add bx, word [bp - 0x0002]       ; 0x028d
    mov al, byte [bx]                ; 0x0290
    mov bx, word [bp + 0x4]          ; 0x0292
    mov byte [bx + di], al           ; 0x0295
    mov ax, si                       ; 0x0297
    mov cx, word [bp + 0x4]          ; 0x0299
    add cx, word [bp - 0x0002]       ; 0x029c
    mov bx, cx                       ; 0x029f
    mov byte [bx], al                ; 0x02a1
    dec word [bp - 0x0002]           ; 0x02a3
    inc di                           ; 0x02a6
@..loc_IRKJ.l2:
    cmp di, word [bp - 0x0002]       ; 0x02a7
    jl short @..loc_IRKJ.l1          ; 0x02aa
    pop si                           ; 0x02ac
    pop di                           ; 0x02ad
    mov sp, bp                       ; 0x02ae
    pop bp                           ; 0x02b0
    ret                              ; 0x02b1
%include "vinstall/aztec_raise.asm"        ; 0x02b2

%include "vinstall/loc_QULN.asm"           ; 0x03b3

%include "vinstall/loc_SLKN.asm"           ; 0x03e1

%include "vinstall/loc_JSPT.asm"           ; 0x040f

%include "vinstall/loc_KPHK.asm"           ; 0x0429

%include "vinstall/loc_PJUI.asm"           ; 0x06f1

%include "vinstall/loc_KLTH.asm"           ; 0x0815

%include "vinstall/loc_UONK.asm"           ; 0x0823

%include "vinstall/loc_TINS.asm"           ; 0x0927

%include "vinstall/aztec_vfprintf.asm"     ; 0x0944

%include "vinstall/loc_QQGN.asm"           ; 0x0992

%include "vinstall/aztec_scan.asm"         ; 0x0a0f

%include "vinstall/loc_NOKL.asm"           ; 0x0c21

%include "vinstall/loc_MVGG.asm"           ; 0x0cd6

%include "vinstall/loc_SOGS.asm"           ; 0x0d12

%include "vinstall/loc_RMUH.asm"           ; 0x0d3f

%include "vinstall/loc_PMLM.asm"           ; 0x0dda

%include "vinstall/loc_GGIS.asm"           ; 0x0ed8

%include "vinstall/leaf_loc_NNJM.asm"      ; 0x10a4

%include "vinstall/loc_VRUR.asm"           ; 0x12b5

jumptable_1969_case_1:
    mov ax, word [bp - 0x000e]       ; 0x17cf
    shl ax, 1                        ; 0x17d2
    mov bx, ax                       ; 0x17d4
    push word [bx + 0x160]           ; 0x17d6
    mov ax, 0x16                     ; 0x17da
    push ax                          ; 0x17dd
    mov ax, 8                        ; 0x17de
    push ax                          ; 0x17e1
    call loc_JSPT                    ; 0x17e2
    add sp, byte 6                   ; 0x17e5
    jmp near @..loc_VRUR.l11         ; 0x17e8
jumptable_1969_case_2:
    lea ax, word [bp - 0x001c]       ; 0x17eb
    push ax                          ; 0x17ee
    mov ax, 0x2e                     ; 0x17ef
    push ax                          ; 0x17f2
    mov ax, 8                        ; 0x17f3
    push ax                          ; 0x17f6
    call loc_JSPT                    ; 0x17f7
    add sp, byte 6                   ; 0x17fa
    jmp near @..loc_VRUR.l11         ; 0x17fd
jumptable_1969_case_3:
    lea ax, word [bp - 0x0032]       ; 0x1800
    push ax                          ; 0x1803
    mov ax, 0x3a                     ; 0x1804
    push ax                          ; 0x1807
    mov ax, 8                        ; 0x1808
    push ax                          ; 0x180b
    call loc_JSPT                    ; 0x180c
    add sp, byte 6                   ; 0x180f
    jmp near @..loc_VRUR.l11         ; 0x1812
jumptable_1969_case_4:
    mov ax, word [bp - 0x0010]       ; 0x1815
    shl ax, 1                        ; 0x1818
    mov bx, ax                       ; 0x181a
    push word [bx + 0x160]           ; 0x181c
    mov ax, 0x16                     ; 0x1820
    push ax                          ; 0x1823
    mov ax, 9                        ; 0x1824
    push ax                          ; 0x1827
    call loc_JSPT                    ; 0x1828
    add sp, byte 6                   ; 0x182b
    jmp near @..loc_VRUR.l11         ; 0x182e
jumptable_1969_case_5:
    lea ax, word [bp - 0x003e]       ; 0x1831
    push ax                          ; 0x1834
    mov ax, 0x2e                     ; 0x1835
    push ax                          ; 0x1838
    mov ax, 9                        ; 0x1839
    push ax                          ; 0x183c
    call loc_JSPT                    ; 0x183d
    add sp, byte 6                   ; 0x1840
    jmp near @..loc_VRUR.l11         ; 0x1843
jumptable_1969_case_6:
    lea ax, word [bp - 0x0054]       ; 0x1846
    push ax                          ; 0x1849
    mov ax, 0x3a                     ; 0x184a
    push ax                          ; 0x184d
    mov ax, 9                        ; 0x184e
    push ax                          ; 0x1851
    call loc_JSPT                    ; 0x1852
    add sp, byte 6                   ; 0x1855
    jmp near @..loc_VRUR.l11         ; 0x1858
jumptable_1969_case_7:
    mov ax, word [bp - 0x01a0]       ; 0x185b
    shl ax, 1                        ; 0x185f
    mov bx, ax                       ; 0x1861
    push word [bx + 0x154]           ; 0x1863
    mov ax, 0x1b                     ; 0x1867
    push ax                          ; 0x186a
    mov ax, 0xb                      ; 0x186b
    push ax                          ; 0x186e
    call loc_JSPT                    ; 0x186f
    add sp, byte 6                   ; 0x1872
    jmp near @..loc_VRUR.l11         ; 0x1875
jumptable_1969_case_8:
    mov ax, word [bp - 0x01a2]       ; 0x1878
    shl ax, 1                        ; 0x187c
    mov bx, ax                       ; 0x187e
    push word [bx + 0x154]           ; 0x1880
    mov ax, 0x29                     ; 0x1884
    push ax                          ; 0x1887
    mov ax, 0xb                      ; 0x1888
    push ax                          ; 0x188b
    call loc_JSPT                    ; 0x188c
    add sp, byte 6                   ; 0x188f
    jmp near @..loc_VRUR.l11         ; 0x1892
jumptable_1969_case_9:
    lea ax, word [bp - 0x01b8]       ; 0x1895
    push ax                          ; 0x1899
    mov ax, 0x3a                     ; 0x189a
    push ax                          ; 0x189d
    mov ax, 0xb                      ; 0x189e
    push ax                          ; 0x18a1
    call loc_JSPT                    ; 0x18a2
    add sp, byte 6                   ; 0x18a5
    jmp near @..loc_VRUR.l11         ; 0x18a8
jumptable_1969_case_10:
    mov ax, word [bp - 0x0196]       ; 0x18ab
    shl ax, 1                        ; 0x18af
    mov bx, ax                       ; 0x18b1
    push word [word bx + 0x2]        ; 0x18b3
    mov ax, 0x10                     ; 0x18b7
    push ax                          ; 0x18ba
    mov ax, 0xd                      ; 0x18bb
    push ax                          ; 0x18be
    call loc_JSPT                    ; 0x18bf
    add sp, byte 6                   ; 0x18c2
    jmp near @..loc_VRUR.l11         ; 0x18c5
jumptable_1969_case_11:
    push word [bp - 0x01ba]          ; 0x18c8
    mov ax, 0x3e                     ; 0x18cc
    push ax                          ; 0x18cf
    mov ax, 0xf                      ; 0x18d0
    push ax                          ; 0x18d3
    call loc_QULN                    ; 0x18d4
    add sp, byte 6                   ; 0x18d7
    jmp near @..loc_VRUR.l11         ; 0x18da
jumptable_1969_case_12:
    push word [bp - 0x01bc]          ; 0x18dd
    mov ax, 0x3e                     ; 0x18e1
    push ax                          ; 0x18e4
    mov ax, 0x10                     ; 0x18e5
    push ax                          ; 0x18e8
    call loc_QULN                    ; 0x18e9
    add sp, byte 6                   ; 0x18ec
    jmp near @..loc_VRUR.l11         ; 0x18ef
jumptable_1969_case_13:
    mov ax, word [bp - 0x019a]       ; 0x18f2
    shl ax, 1                        ; 0x18f6
    mov bx, ax                       ; 0x18f8
    push word [bx + 0x154]           ; 0x18fa
    mov ax, 0x1b                     ; 0x18fe
    push ax                          ; 0x1901
    mov ax, 0x12                     ; 0x1902
    push ax                          ; 0x1905
    call loc_JSPT                    ; 0x1906
    add sp, byte 6                   ; 0x1909
    jmp near @..loc_VRUR.l11         ; 0x190c
jumptable_1969_case_14:
    mov ax, word [bp - 0x0198]       ; 0x190f
    shl ax, 1                        ; 0x1913
    mov bx, ax                       ; 0x1915
    push word [bx + 0xa4]            ; 0x1917
    mov ax, 0x29                     ; 0x191b
    push ax                          ; 0x191e
    mov ax, 0x12                     ; 0x191f
    push ax                          ; 0x1922
    call loc_JSPT                    ; 0x1923
    add sp, byte 6                   ; 0x1926
    jmp short @..loc_VRUR.l11        ; 0x1929
jumptable_1969_case_15:
    mov ax, 0x1e50                   ; 0x192b
    push ax                          ; 0x192e
    mov ax, 0x12                     ; 0x192f
    push ax                          ; 0x1932
    mov ax, 0x14                     ; 0x1933
    push ax                          ; 0x1936
    call loc_JSPT                    ; 0x1937
    add sp, byte 6                   ; 0x193a
    jmp short @..loc_VRUR.l11        ; 0x193d
jumptable_1969_case_16:
    mov ax, 0x1e5d                   ; 0x193f
    push ax                          ; 0x1942
    mov ax, 0x21                     ; 0x1943
    push ax                          ; 0x1946
    mov ax, 0x14                     ; 0x1947
    push ax                          ; 0x194a
    call loc_JSPT                    ; 0x194b
    add sp, byte 6                   ; 0x194e
    jmp short @..loc_VRUR.l11        ; 0x1951
jumptable_1969_case_17:
    mov ax, 0x1e69                   ; 0x1953
    push ax                          ; 0x1956
    mov ax, 0x30                     ; 0x1957
    push ax                          ; 0x195a
    mov ax, 0x14                     ; 0x195b
    push ax                          ; 0x195e
    call loc_JSPT                    ; 0x195f
    add sp, byte 6                   ; 0x1962
    jmp short @..loc_VRUR.l11        ; 0x1965
jumptable_1969_case_0:
    jmp short @..loc_VRUR.l11        ; 0x1967
jumptable_1969:
    dw jumptable_1969_case_0 - IMAGE_BASE      ; 0x1969
    dw jumptable_1969_case_1 - IMAGE_BASE      ; 0x196b
    dw jumptable_1969_case_2 - IMAGE_BASE      ; 0x196d
    dw jumptable_1969_case_3 - IMAGE_BASE      ; 0x196f
    dw jumptable_1969_case_4 - IMAGE_BASE      ; 0x1971
    dw jumptable_1969_case_5 - IMAGE_BASE      ; 0x1973
    dw jumptable_1969_case_6 - IMAGE_BASE      ; 0x1975
    dw jumptable_1969_case_7 - IMAGE_BASE      ; 0x1977
    dw jumptable_1969_case_8 - IMAGE_BASE      ; 0x1979
    dw jumptable_1969_case_9 - IMAGE_BASE      ; 0x197b
    dw jumptable_1969_case_10 - IMAGE_BASE     ; 0x197d
    dw jumptable_1969_case_11 - IMAGE_BASE     ; 0x197f
    dw jumptable_1969_case_12 - IMAGE_BASE     ; 0x1981
    dw jumptable_1969_case_13 - IMAGE_BASE     ; 0x1983
    dw jumptable_1969_case_14 - IMAGE_BASE     ; 0x1985
    dw jumptable_1969_case_15 - IMAGE_BASE     ; 0x1987
    dw jumptable_1969_case_16 - IMAGE_BASE     ; 0x1989
    dw jumptable_1969_case_17 - IMAGE_BASE     ; 0x198b
@..loc_VRUR.l10:
    sub ax, strict word 0xffff       ; 0x198d
    cmp ax, strict word 0x12         ; 0x1990
    jae short @..loc_VRUR.l11        ; 0x1993
    xchg bx, ax                      ; 0x1995
    shl bx, 1                        ; 0x1996
    jmp [cs:bx + jumptable_1969 - IMAGE_BASE] ; 0x1998
@..loc_VRUR.l11:
    mov ax, word [bp - 0x019c]       ; 0x199d
    jmp near @..loc_VRUR.l12         ; 0x19a1
jumptable_1b3c_case_0:
    mov ax, word [bp - 0x000e]       ; 0x19a4
    shl ax, 1                        ; 0x19a7
    mov bx, ax                       ; 0x19a9
    push word [bx + 0x160]           ; 0x19ab
    mov ax, 0x16                     ; 0x19af
    push ax                          ; 0x19b2
    mov ax, 8                        ; 0x19b3
    push ax                          ; 0x19b6
    call loc_KPHK                    ; 0x19b7
    add sp, byte 6                   ; 0x19ba
    jmp near @..loc_VRUR.l13         ; 0x19bd
jumptable_1b3c_case_1:
    lea ax, word [bp - 0x001c]       ; 0x19c0
    push ax                          ; 0x19c3
    mov ax, 0x2e                     ; 0x19c4
    push ax                          ; 0x19c7
    mov ax, 8                        ; 0x19c8
    push ax                          ; 0x19cb
    call loc_KPHK                    ; 0x19cc
    add sp, byte 6                   ; 0x19cf
    jmp near @..loc_VRUR.l13         ; 0x19d2
jumptable_1b3c_case_2:
    lea ax, word [bp - 0x0032]       ; 0x19d5
    push ax                          ; 0x19d8
    mov ax, 0x3a                     ; 0x19d9
    push ax                          ; 0x19dc
    mov ax, 8                        ; 0x19dd
    push ax                          ; 0x19e0
    call loc_KPHK                    ; 0x19e1
    add sp, byte 6                   ; 0x19e4
    jmp near @..loc_VRUR.l13         ; 0x19e7
jumptable_1b3c_case_3:
    mov ax, word [bp - 0x0010]       ; 0x19ea
    shl ax, 1                        ; 0x19ed
    mov bx, ax                       ; 0x19ef
    push word [bx + 0x160]           ; 0x19f1
    mov ax, 0x16                     ; 0x19f5
    push ax                          ; 0x19f8
    mov ax, 9                        ; 0x19f9
    push ax                          ; 0x19fc
    call loc_KPHK                    ; 0x19fd
    add sp, byte 6                   ; 0x1a00
    jmp near @..loc_VRUR.l13         ; 0x1a03
jumptable_1b3c_case_4:
    lea ax, word [bp - 0x003e]       ; 0x1a06
    push ax                          ; 0x1a09
    mov ax, 0x2e                     ; 0x1a0a
    push ax                          ; 0x1a0d
    mov ax, 9                        ; 0x1a0e
    push ax                          ; 0x1a11
    call loc_KPHK                    ; 0x1a12
    add sp, byte 6                   ; 0x1a15
    jmp near @..loc_VRUR.l13         ; 0x1a18
jumptable_1b3c_case_5:
    lea ax, word [bp - 0x0054]       ; 0x1a1b
    push ax                          ; 0x1a1e
    mov ax, 0x3a                     ; 0x1a1f
    push ax                          ; 0x1a22
    mov ax, 9                        ; 0x1a23
    push ax                          ; 0x1a26
    call loc_KPHK                    ; 0x1a27
    add sp, byte 6                   ; 0x1a2a
    jmp near @..loc_VRUR.l13         ; 0x1a2d
jumptable_1b3c_case_6:
    mov ax, word [bp - 0x01a0]       ; 0x1a30
    shl ax, 1                        ; 0x1a34
    mov bx, ax                       ; 0x1a36
    push word [bx + 0x154]           ; 0x1a38
    mov ax, 0x1b                     ; 0x1a3c
    push ax                          ; 0x1a3f
    mov ax, 0xb                      ; 0x1a40
    push ax                          ; 0x1a43
    call loc_KPHK                    ; 0x1a44
    add sp, byte 6                   ; 0x1a47
    jmp near @..loc_VRUR.l13         ; 0x1a4a
jumptable_1b3c_case_7:
    mov ax, word [bp - 0x01a2]       ; 0x1a4d
    shl ax, 1                        ; 0x1a51
    mov bx, ax                       ; 0x1a53
    push word [bx + 0x154]           ; 0x1a55
    mov ax, 0x29                     ; 0x1a59
    push ax                          ; 0x1a5c
    mov ax, 0xb                      ; 0x1a5d
    push ax                          ; 0x1a60
    call loc_KPHK                    ; 0x1a61
    add sp, byte 6                   ; 0x1a64
    jmp near @..loc_VRUR.l13         ; 0x1a67
jumptable_1b3c_case_8:
    lea ax, word [bp - 0x01b8]       ; 0x1a6a
    push ax                          ; 0x1a6e
    mov ax, 0x3a                     ; 0x1a6f
    push ax                          ; 0x1a72
    mov ax, 0xb                      ; 0x1a73
    push ax                          ; 0x1a76
    call loc_KPHK                    ; 0x1a77
    add sp, byte 6                   ; 0x1a7a
    jmp near @..loc_VRUR.l13         ; 0x1a7d
jumptable_1b3c_case_9:
    mov ax, word [bp - 0x0196]       ; 0x1a80
    shl ax, 1                        ; 0x1a84
    mov bx, ax                       ; 0x1a86
    push word [word bx + 0x2]        ; 0x1a88
    mov ax, 0x10                     ; 0x1a8c
    push ax                          ; 0x1a8f
    mov ax, 0xd                      ; 0x1a90
    push ax                          ; 0x1a93
    call loc_KPHK                    ; 0x1a94
    add sp, byte 6                   ; 0x1a97
    jmp near @..loc_VRUR.l13         ; 0x1a9a
jumptable_1b3c_case_10:
    push word [bp - 0x01ba]          ; 0x1a9d
    mov ax, 0x3e                     ; 0x1aa1
    push ax                          ; 0x1aa4
    mov ax, 0xf                      ; 0x1aa5
    push ax                          ; 0x1aa8
    call loc_SLKN                    ; 0x1aa9
    add sp, byte 6                   ; 0x1aac
    jmp near @..loc_VRUR.l13         ; 0x1aaf
jumptable_1b3c_case_11:
    push word [bp - 0x01bc]          ; 0x1ab2
    mov ax, 0x3e                     ; 0x1ab6
    push ax                          ; 0x1ab9
    mov ax, 0x10                     ; 0x1aba
    push ax                          ; 0x1abd
    call loc_SLKN                    ; 0x1abe
    add sp, byte 6                   ; 0x1ac1
    jmp near @..loc_VRUR.l13         ; 0x1ac4
jumptable_1b3c_case_12:
    mov ax, word [bp - 0x019a]       ; 0x1ac7
    shl ax, 1                        ; 0x1acb
    mov bx, ax                       ; 0x1acd
    push word [bx + 0x154]           ; 0x1acf
    mov ax, 0x1b                     ; 0x1ad3
    push ax                          ; 0x1ad6
    mov ax, 0x12                     ; 0x1ad7
    push ax                          ; 0x1ada
    call loc_KPHK                    ; 0x1adb
    add sp, byte 6                   ; 0x1ade
    jmp near @..loc_VRUR.l13         ; 0x1ae1
jumptable_1b3c_case_13:
    mov ax, word [bp - 0x0198]       ; 0x1ae4
    shl ax, 1                        ; 0x1ae8
    mov bx, ax                       ; 0x1aea
    push word [bx + 0xa4]            ; 0x1aec
    mov ax, 0x29                     ; 0x1af0
    push ax                          ; 0x1af3
    mov ax, 0x12                     ; 0x1af4
    push ax                          ; 0x1af7
    call loc_KPHK                    ; 0x1af8
    add sp, byte 6                   ; 0x1afb
    jmp short @..loc_VRUR.l13        ; 0x1afe
jumptable_1b3c_case_14:
    mov ax, 0x1e77                   ; 0x1b00
    push ax                          ; 0x1b03
    mov ax, 0x12                     ; 0x1b04
    push ax                          ; 0x1b07
    mov ax, 0x14                     ; 0x1b08
    push ax                          ; 0x1b0b
    call loc_KPHK                    ; 0x1b0c
    add sp, byte 6                   ; 0x1b0f
    jmp short @..loc_VRUR.l13        ; 0x1b12
jumptable_1b3c_case_15:
    mov ax, 0x1e84                   ; 0x1b14
    push ax                          ; 0x1b17
    mov ax, 0x21                     ; 0x1b18
    push ax                          ; 0x1b1b
    mov ax, 0x14                     ; 0x1b1c
    push ax                          ; 0x1b1f
    call loc_KPHK                    ; 0x1b20
    add sp, byte 6                   ; 0x1b23
    jmp short @..loc_VRUR.l13        ; 0x1b26
jumptable_1b3c_case_16:
    mov ax, 0x1e90                   ; 0x1b28
    push ax                          ; 0x1b2b
    mov ax, 0x30                     ; 0x1b2c
    push ax                          ; 0x1b2f
    mov ax, 0x14                     ; 0x1b30
    push ax                          ; 0x1b33
    call loc_KPHK                    ; 0x1b34
    add sp, byte 6                   ; 0x1b37
    jmp short @..loc_VRUR.l13        ; 0x1b3a
jumptable_1b3c:
    dw jumptable_1b3c_case_0 - IMAGE_BASE      ; 0x1b3c
    dw jumptable_1b3c_case_1 - IMAGE_BASE      ; 0x1b3e
    dw jumptable_1b3c_case_2 - IMAGE_BASE      ; 0x1b40
    dw jumptable_1b3c_case_3 - IMAGE_BASE      ; 0x1b42
    dw jumptable_1b3c_case_4 - IMAGE_BASE      ; 0x1b44
    dw jumptable_1b3c_case_5 - IMAGE_BASE      ; 0x1b46
    dw jumptable_1b3c_case_6 - IMAGE_BASE      ; 0x1b48
    dw jumptable_1b3c_case_7 - IMAGE_BASE      ; 0x1b4a
    dw jumptable_1b3c_case_8 - IMAGE_BASE      ; 0x1b4c
    dw jumptable_1b3c_case_9 - IMAGE_BASE      ; 0x1b4e
    dw jumptable_1b3c_case_10 - IMAGE_BASE     ; 0x1b50
    dw jumptable_1b3c_case_11 - IMAGE_BASE     ; 0x1b52
    dw jumptable_1b3c_case_12 - IMAGE_BASE     ; 0x1b54
    dw jumptable_1b3c_case_13 - IMAGE_BASE     ; 0x1b56
    dw jumptable_1b3c_case_14 - IMAGE_BASE     ; 0x1b58
    dw jumptable_1b3c_case_15 - IMAGE_BASE     ; 0x1b5a
    dw jumptable_1b3c_case_16 - IMAGE_BASE     ; 0x1b5c
@..loc_VRUR.l12:
    cmp ax, strict word 0x11         ; 0x1b5e
    jae short @..loc_VRUR.l13        ; 0x1b61
    xchg bx, ax                      ; 0x1b63
    shl bx, 1                        ; 0x1b64
    jmp [cs:bx + jumptable_1b3c - IMAGE_BASE] ; 0x1b66
@..loc_VRUR.l13:
    call dos_con_in_noecho           ; 0x1b6b
    push ax                          ; 0x1b6e
    call loc_JQKT                    ; 0x1b6f
    pop cx                           ; 0x1b72
    mov word [bp - 0x0008], ax       ; 0x1b73
    jmp near @..loc_VRUR.l48         ; 0x1b76
%include "vinstall/loc_PSMR.asm"           ; 0x1b79

%include "vinstall/loc_ILSJ.asm"           ; 0x1b90

%include "vinstall/loc_RTII.asm"           ; 0x1ba7

%include "vinstall/loc_KRQO.asm"           ; 0x1bbe

%include "vinstall/loc_VNJS.asm"           ; 0x1bd5

jumptable_1f81_case_0:
    mov ax, 0x1e9e                   ; 0x1be2
    push ax                          ; 0x1be5
    push word [bp - 0x000e]          ; 0x1be6
    mov ax, 8                        ; 0x1be9
    push ax                          ; 0x1bec
    call loc_MVGG                    ; 0x1bed
    add sp, byte 6                   ; 0x1bf0
    mov word [bp - 0x000e], ax       ; 0x1bf3
    jmp near @..loc_VRUR.l47         ; 0x1bf6
jumptable_1f81_case_1:
@..loc_VRUR.l14:
    mov ax, 2                        ; 0x1bf9
    push ax                          ; 0x1bfc
    lea ax, word [bp - 0x001c]       ; 0x1bfd
    push ax                          ; 0x1c00
    mov ax, 0x2e                     ; 0x1c01
    push ax                          ; 0x1c04
    mov ax, 8                        ; 0x1c05
    push ax                          ; 0x1c08
    call loc_RHMG                    ; 0x1c09
    add sp, byte 8                   ; 0x1c0c
    cmp byte [bp - 0x001c], 0x41     ; 0x1c0f
    jl short @..loc_VRUR.l15         ; 0x1c13
    cmp byte [bp - 0x001c], 0x5a     ; 0x1c15
    jg short @..loc_VRUR.l15         ; 0x1c19
    cmp byte [bp - 0x001b], 0x3a     ; 0x1c1b
    je short @..loc_VRUR.l16         ; 0x1c1f
@..loc_VRUR.l15:
    mov ax, 1                        ; 0x1c21
    jmp short @..loc_VRUR.l17        ; 0x1c24
@..loc_VRUR.l16:
    mov ax, 0                        ; 0x1c26
@..loc_VRUR.l17:
    mov word [bp - 0x01c2], ax       ; 0x1c29
    cmp ax, strict word 1            ; 0x1c2d
    jne short @..loc_VRUR.l18        ; 0x1c30
    mov ax, 0x1ea4                   ; 0x1c32
    push ax                          ; 0x1c35
    call loc_QQGN                    ; 0x1c36
    pop cx                           ; 0x1c39
@..loc_VRUR.l18:
    cmp word [bp - 0x01c2], byte 1   ; 0x1c3a
    je short @..loc_VRUR.l14         ; 0x1c3f
    jmp near @..loc_VRUR.l47         ; 0x1c41
jumptable_1f81_case_2:
    mov ax, 0x1ecd                   ; 0x1c44
    push ax                          ; 0x1c47
    call loc_QQGN                    ; 0x1c48
    pop cx                           ; 0x1c4b
    jmp near @..loc_VRUR.l47         ; 0x1c4c
jumptable_1f81_case_3:
    mov ax, 0x1ef6                   ; 0x1c4f
    push ax                          ; 0x1c52
    push word [bp - 0x0010]          ; 0x1c53
    mov ax, 9                        ; 0x1c56
    push ax                          ; 0x1c59
    call loc_MVGG                    ; 0x1c5a
    add sp, byte 6                   ; 0x1c5d
    mov word [bp - 0x0010], ax       ; 0x1c60
    lea ax, word [bp - 0x0054]       ; 0x1c63
    push ax                          ; 0x1c66
    lea ax, word [bp - 0x003e]       ; 0x1c67
    push ax                          ; 0x1c6a
    push word [bp - 0x0010]          ; 0x1c6b
    call leaf_loc_NNJM               ; 0x1c6e
    add sp, byte 6                   ; 0x1c71
    mov ax, 0x1efc                   ; 0x1c74
    push ax                          ; 0x1c77
    mov ax, 0x2e                     ; 0x1c78
    push ax                          ; 0x1c7b
    mov ax, 9                        ; 0x1c7c
    push ax                          ; 0x1c7f
    call loc_JSPT                    ; 0x1c80
    add sp, byte 6                   ; 0x1c83
    lea ax, word [bp - 0x003e]       ; 0x1c86
    push ax                          ; 0x1c89
    mov ax, 0x2e                     ; 0x1c8a
    push ax                          ; 0x1c8d
    mov ax, 9                        ; 0x1c8e
    push ax                          ; 0x1c91
    call loc_JSPT                    ; 0x1c92
    add sp, byte 6                   ; 0x1c95
    lea ax, word [bp - 0x0054]       ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0x3a                     ; 0x1c9c
    push ax                          ; 0x1c9f
    mov ax, 9                        ; 0x1ca0
    push ax                          ; 0x1ca3
    call loc_JSPT                    ; 0x1ca4
    add sp, byte 6                   ; 0x1ca7
    jmp near @..loc_VRUR.l47         ; 0x1caa
jumptable_1f81_case_4:
@..loc_VRUR.l19:
    mov ax, 2                        ; 0x1cad
    push ax                          ; 0x1cb0
    lea ax, word [bp - 0x003e]       ; 0x1cb1
    push ax                          ; 0x1cb4
    mov ax, 0x2e                     ; 0x1cb5
    push ax                          ; 0x1cb8
    mov ax, 9                        ; 0x1cb9
    push ax                          ; 0x1cbc
    call loc_RHMG                    ; 0x1cbd
    add sp, byte 8                   ; 0x1cc0
    cmp byte [bp - 0x003e], 0x41     ; 0x1cc3
    jl short @..loc_VRUR.l20         ; 0x1cc7
    cmp byte [bp - 0x003e], 0x5a     ; 0x1cc9
    jg short @..loc_VRUR.l20         ; 0x1ccd
    cmp byte [bp - 0x003d], 0x3a     ; 0x1ccf
    je short @..loc_VRUR.l21         ; 0x1cd3
@..loc_VRUR.l20:
    mov ax, 1                        ; 0x1cd5
    jmp short @..loc_VRUR.l22        ; 0x1cd8
@..loc_VRUR.l21:
    mov ax, 0                        ; 0x1cda
@..loc_VRUR.l22:
    mov word [bp - 0x01c2], ax       ; 0x1cdd
    cmp ax, strict word 1            ; 0x1ce1
    jne short @..loc_VRUR.l23        ; 0x1ce4
    mov ax, 0x1f1e                   ; 0x1ce6
    push ax                          ; 0x1ce9
    call loc_QQGN                    ; 0x1cea
    pop cx                           ; 0x1ced
    jmp short @..loc_VRUR.l24        ; 0x1cee
@..loc_VRUR.l23:
    mov al, byte [bp - 0x003e]       ; 0x1cf0
    cmp al, byte [bp - 0x001c]       ; 0x1cf3
    jne short @..loc_VRUR.l24        ; 0x1cf6
    mov ax, 0x1f47                   ; 0x1cf8
    push ax                          ; 0x1cfb
    call loc_QQGN                    ; 0x1cfc
    pop cx                           ; 0x1cff
@..loc_VRUR.l24:
    cmp word [bp - 0x01c2], byte 1   ; 0x1d00
    je short @..loc_VRUR.l19         ; 0x1d05
    jmp near @..loc_VRUR.l47         ; 0x1d07
jumptable_1f81_case_5:
@..loc_VRUR.l25:
    mov ax, 0x14                     ; 0x1d0a
    push ax                          ; 0x1d0d
    lea ax, word [bp - 0x0054]       ; 0x1d0e
    push ax                          ; 0x1d11
    mov ax, 0x3a                     ; 0x1d12
    push ax                          ; 0x1d15
    mov ax, 9                        ; 0x1d16
    push ax                          ; 0x1d19
    call loc_RHMG                    ; 0x1d1a
    add sp, byte 8                   ; 0x1d1d
    cmp word [bp - 0x0010], byte 0   ; 0x1d20
    jne short @..loc_VRUR.l30        ; 0x1d24
    cmp byte [bp - 0x0054], 0x41     ; 0x1d26
    jl short @..loc_VRUR.l26         ; 0x1d2a
    cmp byte [bp - 0x0054], 0x5a     ; 0x1d2c
    jg short @..loc_VRUR.l26         ; 0x1d30
    cmp byte [bp - 0x0053], 0x3a     ; 0x1d32
    jne short @..loc_VRUR.l26        ; 0x1d36
    lea ax, word [bp - 0x0054]       ; 0x1d38
    push ax                          ; 0x1d3b
    call aztec_strlen                ; 0x1d3c
    pop cx                           ; 0x1d3f
    cmp ax, strict word 2            ; 0x1d40
    jle short @..loc_VRUR.l27        ; 0x1d43
@..loc_VRUR.l26:
    mov ax, 1                        ; 0x1d45
    jmp short @..loc_VRUR.l28        ; 0x1d48
@..loc_VRUR.l27:
    mov ax, 0                        ; 0x1d4a
@..loc_VRUR.l28:
    mov word [bp - 0x01c2], ax       ; 0x1d4d
    cmp ax, strict word 1            ; 0x1d51
    jne short @..loc_VRUR.l29        ; 0x1d54
    mov ax, 0x1f7c                   ; 0x1d56
    push ax                          ; 0x1d59
    call loc_QQGN                    ; 0x1d5a
    pop cx                           ; 0x1d5d
@..loc_VRUR.l29:
    jmp short @..loc_VRUR.l31        ; 0x1d5e
@..loc_VRUR.l30:
    mov word [bp - 0x01c2], 0        ; 0x1d60
@..loc_VRUR.l31:
    cmp word [bp - 0x01c2], byte 1   ; 0x1d66
    je short @..loc_VRUR.l25         ; 0x1d6b
    jmp near @..loc_VRUR.l47         ; 0x1d6d
jumptable_1f81_case_6:
    push word [bp - 0x01a0]          ; 0x1d70
    mov ax, 0x1b                     ; 0x1d74
    push ax                          ; 0x1d77
    mov ax, 0xb                      ; 0x1d78
    push ax                          ; 0x1d7b
    call loc_RMUH                    ; 0x1d7c
    add sp, byte 6                   ; 0x1d7f
    mov word [bp - 0x01a0], ax       ; 0x1d82
    jmp near @..loc_VRUR.l47         ; 0x1d86
jumptable_1f81_case_7:
    push word [bp - 0x01a2]          ; 0x1d89
    mov ax, 0x29                     ; 0x1d8d
    push ax                          ; 0x1d90
    mov ax, 0xb                      ; 0x1d91
    push ax                          ; 0x1d94
    call loc_RMUH                    ; 0x1d95
    add sp, byte 6                   ; 0x1d98
    mov word [bp - 0x01a2], ax       ; 0x1d9b
    jmp near @..loc_VRUR.l47         ; 0x1d9f
jumptable_1f81_case_8:
@..loc_VRUR.l32:
    mov ax, 0x14                     ; 0x1da2
    push ax                          ; 0x1da5
    lea ax, word [bp - 0x01b8]       ; 0x1da6
    push ax                          ; 0x1daa
    mov ax, 0x3a                     ; 0x1dab
    push ax                          ; 0x1dae
    mov ax, 0xb                      ; 0x1daf
    push ax                          ; 0x1db2
    call loc_RHMG                    ; 0x1db3
    add sp, byte 8                   ; 0x1db6
    lea ax, word [bp - 0x01b8]       ; 0x1db9
    push ax                          ; 0x1dbd
    call aztec_strlen                ; 0x1dbe
    pop cx                           ; 0x1dc1
    mov word [bp - 0x02d8], ax       ; 0x1dc2
    cmp ax, strict word 2            ; 0x1dc6
    jl short @..loc_VRUR.l33         ; 0x1dc9
    mov bx, ax                       ; 0x1dcb
    add bx, bp                       ; 0x1dcd
    cmp byte [bx - 0x01b9], 0x3a     ; 0x1dcf
    je short @..loc_VRUR.l34         ; 0x1dd4
@..loc_VRUR.l33:
    mov ax, 1                        ; 0x1dd6
    jmp short @..loc_VRUR.l35        ; 0x1dd9
@..loc_VRUR.l34:
    mov ax, 0                        ; 0x1ddb
@..loc_VRUR.l35:
    mov word [bp - 0x01c2], ax       ; 0x1dde
    cmp ax, strict word 1            ; 0x1de2
    jne short @..loc_VRUR.l36        ; 0x1de5
    mov ax, 0x1fa5                   ; 0x1de7
    push ax                          ; 0x1dea
    call loc_QQGN                    ; 0x1deb
    pop cx                           ; 0x1dee
@..loc_VRUR.l36:
    cmp word [bp - 0x01c2], byte 1   ; 0x1def
    je short @..loc_VRUR.l32         ; 0x1df4
    jmp near @..loc_VRUR.l47         ; 0x1df6
jumptable_1f81_case_9:
    push word [bp - 0x0196]          ; 0x1df9
    call loc_NOKL                    ; 0x1dfd
    pop cx                           ; 0x1e00
    mov word [bp - 0x0196], ax       ; 0x1e01
    jmp near @..loc_VRUR.l47         ; 0x1e05
jumptable_1f81_case_10:
    mov ax, 0xff9d                   ; 0x1e08
    push ax                          ; 0x1e0b
    mov ax, 0x63                     ; 0x1e0c
    push ax                          ; 0x1e0f
    mov ax, 3                        ; 0x1e10
    push ax                          ; 0x1e13
    mov ax, 0x3e                     ; 0x1e14
    push ax                          ; 0x1e17
    mov ax, 0xf                      ; 0x1e18
    push ax                          ; 0x1e1b
    push word [bp - 0x01ba]          ; 0x1e1c
    call loc_UONK                    ; 0x1e20
    add sp, byte 0x0c                ; 0x1e23
    mov word [bp - 0x01ba], ax       ; 0x1e26
    jmp near @..loc_VRUR.l47         ; 0x1e2a
jumptable_1f81_case_11:
    mov ax, 0xff9d                   ; 0x1e2d
    push ax                          ; 0x1e30
    mov ax, 0x63                     ; 0x1e31
    push ax                          ; 0x1e34
    mov ax, 3                        ; 0x1e35
    push ax                          ; 0x1e38
    mov ax, 0x3e                     ; 0x1e39
    push ax                          ; 0x1e3c
    mov ax, 0x10                     ; 0x1e3d
    push ax                          ; 0x1e40
    push word [bp - 0x01bc]          ; 0x1e41
    call loc_UONK                    ; 0x1e45
    add sp, byte 0x0c                ; 0x1e48
    mov word [bp - 0x01bc], ax       ; 0x1e4b
    jmp near @..loc_VRUR.l47         ; 0x1e4f
jumptable_1f81_case_12:
    push word [bp - 0x019a]          ; 0x1e52
    mov ax, 0x1b                     ; 0x1e56
    push ax                          ; 0x1e59
    mov ax, 0x12                     ; 0x1e5a
    push ax                          ; 0x1e5d
    call loc_RMUH                    ; 0x1e5e
    add sp, byte 6                   ; 0x1e61
    mov word [bp - 0x019a], ax       ; 0x1e64
    jmp near @..loc_VRUR.l47         ; 0x1e68
jumptable_1f81_case_13:
    push word [bp - 0x0198]          ; 0x1e6b
    call loc_SOGS                    ; 0x1e6f
    pop cx                           ; 0x1e72
    mov word [bp - 0x0198], ax       ; 0x1e73
    jmp near @..loc_VRUR.l47         ; 0x1e77
jumptable_1f81_case_14:
    mov al, byte [bp - 0x001c]       ; 0x1e7a
    cmp al, byte [bp - 0x003e]       ; 0x1e7d
    jne short @..loc_VRUR.l37        ; 0x1e80
    mov ax, 0x1fce                   ; 0x1e82
    push ax                          ; 0x1e85
    call loc_QQGN                    ; 0x1e86
    pop cx                           ; 0x1e89
    mov ax, 0x200a                   ; 0x1e8a
    push ax                          ; 0x1e8d
    call loc_QQGN                    ; 0x1e8e
    pop cx                           ; 0x1e91
    jmp near @..loc_VRUR.l45         ; 0x1e92
@..loc_VRUR.l37:
    mov ax, word [bp - 0x0010]       ; 0x1e95
    jmp short @..loc_VRUR.l42        ; 0x1e98
@..loc_VRUR.l38:
    mov ax, 0x204c                   ; 0x1e9a
    push ax                          ; 0x1e9d
    lea ax, word [bp - 0x0194]       ; 0x1e9e
    push ax                          ; 0x1ea2
    call aztec_strcpy                ; 0x1ea3
    add sp, byte 4                   ; 0x1ea6
    jmp short @..loc_VRUR.l43        ; 0x1ea9
@..loc_VRUR.l39:
    mov ax, 0x2062                   ; 0x1eab
    push ax                          ; 0x1eae
    lea ax, word [bp - 0x0194]       ; 0x1eaf
    push ax                          ; 0x1eb3
    call aztec_strcpy                ; 0x1eb4
    add sp, byte 4                   ; 0x1eb7
    jmp short @..loc_VRUR.l43        ; 0x1eba
@..loc_VRUR.l40:
    mov ax, 0x207b                   ; 0x1ebc
    push ax                          ; 0x1ebf
    lea ax, word [bp - 0x0194]       ; 0x1ec0
    push ax                          ; 0x1ec4
    call aztec_strcpy                ; 0x1ec5
    add sp, byte 4                   ; 0x1ec8
    jmp short @..loc_VRUR.l43        ; 0x1ecb
@..loc_VRUR.l41:
    mov ax, 0x208f                   ; 0x1ecd
    push ax                          ; 0x1ed0
    lea ax, word [bp - 0x0194]       ; 0x1ed1
    push ax                          ; 0x1ed5
    call aztec_strcpy                ; 0x1ed6
    add sp, byte 4                   ; 0x1ed9
    jmp short @..loc_VRUR.l43        ; 0x1edc
@..loc_VRUR.l42:
    cmp ax, strict word 0            ; 0x1ede
    je short @..loc_VRUR.l38         ; 0x1ee1
    cmp ax, strict word 1            ; 0x1ee3
    je short @..loc_VRUR.l39         ; 0x1ee6
    cmp ax, strict word 2            ; 0x1ee8
    je short @..loc_VRUR.l40         ; 0x1eeb
    cmp ax, strict word 3            ; 0x1eed
    je short @..loc_VRUR.l41         ; 0x1ef0
@..loc_VRUR.l43:
    mov ax, 0x20a8                   ; 0x1ef2
    push ax                          ; 0x1ef5
    mov ax, 0x2648                   ; 0x1ef6
    push ax                          ; 0x1ef9
    call aztec_strcpy                ; 0x1efa
    add sp, byte 4                   ; 0x1efd
    cmp word [bp - 0x0010], byte 4   ; 0x1f00
    je short @..loc_VRUR.l44         ; 0x1f04
    mov ax, 0x20a9                   ; 0x1f06
    push ax                          ; 0x1f09
    lea ax, word [bp - 0x0144]       ; 0x1f0a
    push ax                          ; 0x1f0e
    call aztec_strcpy                ; 0x1f0f
    add sp, byte 4                   ; 0x1f12
    lea ax, word [bp - 0x0194]       ; 0x1f15
    push ax                          ; 0x1f19
    lea ax, word [bp - 0x0144]       ; 0x1f1a
    push ax                          ; 0x1f1e
    call string_loc_VOPH             ; 0x1f1f
    add sp, byte 4                   ; 0x1f22
    mov ax, 0x20c0                   ; 0x1f25
    push ax                          ; 0x1f28
    lea ax, word [bp - 0x0144]       ; 0x1f29
    push ax                          ; 0x1f2d
    call string_loc_VOPH             ; 0x1f2e
    add sp, byte 4                   ; 0x1f31
    lea ax, word [bp - 0x0144]       ; 0x1f34
    push ax                          ; 0x1f38
    call loc_QQGN                    ; 0x1f39
    pop cx                           ; 0x1f3c
    mov ax, 0x20d2                   ; 0x1f3d
    push ax                          ; 0x1f40
    call loc_QQGN                    ; 0x1f41
    pop cx                           ; 0x1f44
@..loc_VRUR.l44:
    mov word [bp - 0x01c6], 1        ; 0x1f45
    mov word [bp - 0x01c0], 1        ; 0x1f4b
    mov word [bp - 0x01ca], 1        ; 0x1f51
@..loc_VRUR.l45:
    jmp short @..loc_VRUR.l47        ; 0x1f57
jumptable_1f81_case_15:
    mov word [bp - 0x01c6], 1        ; 0x1f59
    mov word [bp - 0x01c0], 1        ; 0x1f5f
    mov word [bp - 0x01ca], 0        ; 0x1f65
    jmp short @..loc_VRUR.l47        ; 0x1f6b
jumptable_1f81_case_16:
    mov word [bp - 0x01c6], 0        ; 0x1f6d
    mov word [bp - 0x01c0], 1        ; 0x1f73
    mov word [bp - 0x01ca], 0        ; 0x1f79
    jmp short @..loc_VRUR.l47        ; 0x1f7f
jumptable_1f81:
    dw jumptable_1f81_case_0 - IMAGE_BASE      ; 0x1f81
    dw jumptable_1f81_case_1 - IMAGE_BASE      ; 0x1f83
    dw jumptable_1f81_case_2 - IMAGE_BASE      ; 0x1f85
    dw jumptable_1f81_case_3 - IMAGE_BASE      ; 0x1f87
    dw jumptable_1f81_case_4 - IMAGE_BASE      ; 0x1f89
    dw jumptable_1f81_case_5 - IMAGE_BASE      ; 0x1f8b
    dw jumptable_1f81_case_6 - IMAGE_BASE      ; 0x1f8d
    dw jumptable_1f81_case_7 - IMAGE_BASE      ; 0x1f8f
    dw jumptable_1f81_case_8 - IMAGE_BASE      ; 0x1f91
    dw jumptable_1f81_case_9 - IMAGE_BASE      ; 0x1f93
    dw jumptable_1f81_case_10 - IMAGE_BASE     ; 0x1f95
    dw jumptable_1f81_case_11 - IMAGE_BASE     ; 0x1f97
    dw jumptable_1f81_case_12 - IMAGE_BASE     ; 0x1f99
    dw jumptable_1f81_case_13 - IMAGE_BASE     ; 0x1f9b
    dw jumptable_1f81_case_14 - IMAGE_BASE     ; 0x1f9d
    dw jumptable_1f81_case_15 - IMAGE_BASE     ; 0x1f9f
    dw jumptable_1f81_case_16 - IMAGE_BASE     ; 0x1fa1
@..loc_VRUR.l46:
    cmp ax, strict word 0x11         ; 0x1fa3
    jae short @..loc_VRUR.l47        ; 0x1fa6
    xchg bx, ax                      ; 0x1fa8
    shl bx, 1                        ; 0x1fa9
    jmp [cs:bx + jumptable_1f81 - IMAGE_BASE] ; 0x1fab
@..loc_VRUR.l47:
    jmp short @..loc_VRUR.l49        ; 0x1fb0
jumptable_1fb2:
    dw loc_PSMR - IMAGE_BASE                   ; 0x1fb2
    dw loc_ILSJ - IMAGE_BASE                   ; 0x1fb4
    dw loc_RTII - IMAGE_BASE                   ; 0x1fb6
    dw loc_KRQO - IMAGE_BASE                   ; 0x1fb8
    dw jumptable_1fb2_case_4 - IMAGE_BASE      ; 0x1fba
    dw loc_VNJS - IMAGE_BASE                   ; 0x1fbc
@..loc_VRUR.l48:
    sub ax, strict word 8            ; 0x1fbe
    cmp ax, strict word 6            ; 0x1fc1
    jae short @..loc_VRUR.l49        ; 0x1fc4
    xchg bx, ax                      ; 0x1fc6
    shl bx, 1                        ; 0x1fc7
    jmp [cs:bx + jumptable_1fb2 - IMAGE_BASE] ; 0x1fc9
jumptable_1fb2_case_4:
@..loc_VRUR.l49:
    cmp word [bp - 0x01c0], byte 0   ; 0x1fce
    jne short @..loc_VRUR.l50        ; 0x1fd3
    jmp near @..loc_VRUR.l9          ; 0x1fd5
@..loc_VRUR.l50:
    cmp word [bp - 0x01c6], byte 0   ; 0x1fd8
    jne short @..loc_VRUR.l51        ; 0x1fdd
    jmp near @..loc_VRUR.l66         ; 0x1fdf
@..loc_VRUR.l51:
    mov ax, 0x2112                   ; 0x1fe2
    push ax                          ; 0x1fe5
    mov ax, 0x29f0                   ; 0x1fe6
    push ax                          ; 0x1fe9
    call aztec_strcpy                ; 0x1fea
    add sp, byte 4                   ; 0x1fed
    mov ax, 0x2113                   ; 0x1ff0
    push ax                          ; 0x1ff3
    mov ax, 0x2648                   ; 0x1ff4
    push ax                          ; 0x1ff7
    call aztec_strcpy                ; 0x1ff8
    add sp, byte 4                   ; 0x1ffb
    lea ax, word [bp - 0x001c]       ; 0x1ffe
    push ax                          ; 0x2001
    lea ax, word [bp - 0x00a4]       ; 0x2002
    push ax                          ; 0x2006
    call aztec_strcpy                ; 0x2007
    add sp, byte 4                   ; 0x200a
    mov ax, 0x2114                   ; 0x200d
    push ax                          ; 0x2010
    lea ax, word [bp - 0x00a4]       ; 0x2011
    push ax                          ; 0x2015
    call string_loc_VOPH             ; 0x2016
    add sp, byte 4                   ; 0x2019
    lea ax, word [bp - 0x003e]       ; 0x201c
    push ax                          ; 0x201f
    lea ax, word [bp - 0x00f4]       ; 0x2020
    push ax                          ; 0x2024
    call aztec_strcpy                ; 0x2025
    add sp, byte 4                   ; 0x2028
    mov ax, 0x2116                   ; 0x202b
    push ax                          ; 0x202e
    lea ax, word [bp - 0x00f4]       ; 0x202f
    push ax                          ; 0x2033
    call string_loc_VOPH             ; 0x2034
    add sp, byte 4                   ; 0x2037
    cmp word [bp - 0x01ca], byte 0   ; 0x203a
    jne short @..loc_VRUR.l52        ; 0x203f
    cmp word [bp - 0x0010], byte 4   ; 0x2041
    jne short @..loc_VRUR.l52        ; 0x2045
    lea ax, word [bp - 0x0054]       ; 0x2047
    push ax                          ; 0x204a
    lea ax, word [bp - 0x00f4]       ; 0x204b
    push ax                          ; 0x204f
    call string_loc_VOPH             ; 0x2050
    add sp, byte 4                   ; 0x2053
    lea ax, word [bp - 0x0054]       ; 0x2056
    push ax                          ; 0x2059
    call aztec_strlen                ; 0x205a
    pop cx                           ; 0x205d
    cmp ax, strict word 0            ; 0x205e
    jle short @..loc_VRUR.l52        ; 0x2061
    mov ax, 0x2118                   ; 0x2063
    push ax                          ; 0x2066
    lea ax, word [bp - 0x00f4]       ; 0x2067
    push ax                          ; 0x206b
    call string_loc_VOPH             ; 0x206c
    add sp, byte 4                   ; 0x206f
@..loc_VRUR.l52:
    cmp word [bp - 0x01ca], byte 1   ; 0x2072
    je short @..loc_VRUR.l53         ; 0x2077
    jmp near @..loc_VRUR.l61         ; 0x2079
@..loc_VRUR.l53:
    cmp word [bp - 0x0010], byte 4   ; 0x207c
    je short @..loc_VRUR.l54         ; 0x2080
    jmp near @..loc_VRUR.l61         ; 0x2082
@..loc_VRUR.l54:
    lea ax, word [bp - 0x0054]       ; 0x2085
    push ax                          ; 0x2088
    lea ax, word [bp - 0x00f4]       ; 0x2089
    push ax                          ; 0x208d
    call string_loc_VOPH             ; 0x208e
    add sp, byte 4                   ; 0x2091
    mov ax, 1                        ; 0x2094
    push ax                          ; 0x2097
    lea ax, word [bp - 0x00f4]       ; 0x2098
    push ax                          ; 0x209c
    lea ax, word [bp - 0x003e]       ; 0x209d
    push ax                          ; 0x20a0
    call loc_KGUL                    ; 0x20a1
    add sp, byte 6                   ; 0x20a4
    lea ax, word [bp - 0x0054]       ; 0x20a7
    push ax                          ; 0x20aa
    call aztec_strlen                ; 0x20ab
    pop cx                           ; 0x20ae
    cmp ax, strict word 0            ; 0x20af
    jle short @..loc_VRUR.l55        ; 0x20b2
    mov ax, 0x211a                   ; 0x20b4
    push ax                          ; 0x20b7
    lea ax, word [bp - 0x00f4]       ; 0x20b8
    push ax                          ; 0x20bc
    call string_loc_VOPH             ; 0x20bd
    add sp, byte 4                   ; 0x20c0
@..loc_VRUR.l55:
    mov ax, 0x211c                   ; 0x20c3
    push ax                          ; 0x20c6
    mov ax, 1                        ; 0x20c7
    push ax                          ; 0x20ca
    lea ax, word [bp - 0x00a4]       ; 0x20cb
    push ax                          ; 0x20cf
    lea ax, word [bp - 0x001c]       ; 0x20d0
    push ax                          ; 0x20d3
    call loc_PMLM                    ; 0x20d4
    add sp, byte 8                   ; 0x20d7
    mov ax, 0x2132                   ; 0x20da
    push ax                          ; 0x20dd
    mov ax, 0x2127                   ; 0x20de
    push ax                          ; 0x20e1
    lea ax, word [bp - 0x00f4]       ; 0x20e2
    push ax                          ; 0x20e6
    lea ax, word [bp - 0x00a4]       ; 0x20e7
    push ax                          ; 0x20eb
    call loc_GGIS                    ; 0x20ec
    add sp, byte 8                   ; 0x20ef
    cmp word [bp - 0x000e], byte 3   ; 0x20f2
    je short @..loc_VRUR.l56         ; 0x20f6
    jmp near @..loc_VRUR.l57         ; 0x20f8
@..loc_VRUR.l56:
    mov ax, 0x213e                   ; 0x20fb
    push ax                          ; 0x20fe
    mov ax, 0x2133                   ; 0x20ff
    push ax                          ; 0x2102
    lea ax, word [bp - 0x00f4]       ; 0x2103
    push ax                          ; 0x2107
    lea ax, word [bp - 0x00a4]       ; 0x2108
    push ax                          ; 0x210c
    call loc_GGIS                    ; 0x210d
    add sp, byte 8                   ; 0x2110
    mov ax, 0x214a                   ; 0x2113
    push ax                          ; 0x2116
    mov ax, 0x213f                   ; 0x2117
    push ax                          ; 0x211a
    lea ax, word [bp - 0x00f4]       ; 0x211b
    push ax                          ; 0x211f
    lea ax, word [bp - 0x00a4]       ; 0x2120
    push ax                          ; 0x2124
    call loc_GGIS                    ; 0x2125
    add sp, byte 8                   ; 0x2128
    mov ax, 0x2156                   ; 0x212b
    push ax                          ; 0x212e
    mov ax, 0x214b                   ; 0x212f
    push ax                          ; 0x2132
    lea ax, word [bp - 0x00f4]       ; 0x2133
    push ax                          ; 0x2137
    lea ax, word [bp - 0x00a4]       ; 0x2138
    push ax                          ; 0x213c
    call loc_GGIS                    ; 0x213d
    add sp, byte 8                   ; 0x2140
    mov ax, 0x2157                   ; 0x2143
    push ax                          ; 0x2146
    mov ax, 2                        ; 0x2147
    push ax                          ; 0x214a
    lea ax, word [bp - 0x00a4]       ; 0x214b
    push ax                          ; 0x214f
    lea ax, word [bp - 0x001c]       ; 0x2150
    push ax                          ; 0x2153
    call loc_PMLM                    ; 0x2154
    add sp, byte 8                   ; 0x2157
    mov ax, 0x216d                   ; 0x215a
    push ax                          ; 0x215d
    mov ax, 0x2162                   ; 0x215e
    push ax                          ; 0x2161
    lea ax, word [bp - 0x00f4]       ; 0x2162
    push ax                          ; 0x2166
    lea ax, word [bp - 0x00a4]       ; 0x2167
    push ax                          ; 0x216b
    call loc_GGIS                    ; 0x216c
    add sp, byte 8                   ; 0x216f
    mov ax, 0x2179                   ; 0x2172
    push ax                          ; 0x2175
    mov ax, 0x216e                   ; 0x2176
    push ax                          ; 0x2179
    lea ax, word [bp - 0x00f4]       ; 0x217a
    push ax                          ; 0x217e
    lea ax, word [bp - 0x00a4]       ; 0x217f
    push ax                          ; 0x2183
    call loc_GGIS                    ; 0x2184
    add sp, byte 8                   ; 0x2187
    mov ax, 0x2185                   ; 0x218a
    push ax                          ; 0x218d
    mov ax, 0x217a                   ; 0x218e
    push ax                          ; 0x2191
    lea ax, word [bp - 0x00f4]       ; 0x2192
    push ax                          ; 0x2196
    lea ax, word [bp - 0x00a4]       ; 0x2197
    push ax                          ; 0x219b
    call loc_GGIS                    ; 0x219c
    add sp, byte 8                   ; 0x219f
    mov ax, 0x2191                   ; 0x21a2
    push ax                          ; 0x21a5
    mov ax, 0x2186                   ; 0x21a6
    push ax                          ; 0x21a9
    lea ax, word [bp - 0x00f4]       ; 0x21aa
    push ax                          ; 0x21ae
    lea ax, word [bp - 0x00a4]       ; 0x21af
    push ax                          ; 0x21b3
    call loc_GGIS                    ; 0x21b4
    add sp, byte 8                   ; 0x21b7
@..loc_VRUR.l57:
    cmp word [bp - 0x000e], byte 2   ; 0x21ba
    je short @..loc_VRUR.l58         ; 0x21be
    jmp near @..loc_VRUR.l59         ; 0x21c0
@..loc_VRUR.l58:
    mov ax, 0x219d                   ; 0x21c3
    push ax                          ; 0x21c6
    mov ax, 0x2192                   ; 0x21c7
    push ax                          ; 0x21ca
    lea ax, word [bp - 0x00f4]       ; 0x21cb
    push ax                          ; 0x21cf
    lea ax, word [bp - 0x00a4]       ; 0x21d0
    push ax                          ; 0x21d4
    call loc_GGIS                    ; 0x21d5
    add sp, byte 8                   ; 0x21d8
    mov ax, 0x219e                   ; 0x21db
    push ax                          ; 0x21de
    mov ax, 2                        ; 0x21df
    push ax                          ; 0x21e2
    lea ax, word [bp - 0x00a4]       ; 0x21e3
    push ax                          ; 0x21e7
    lea ax, word [bp - 0x001c]       ; 0x21e8
    push ax                          ; 0x21eb
    call loc_PMLM                    ; 0x21ec
    add sp, byte 8                   ; 0x21ef
    mov ax, 0x21b4                   ; 0x21f2
    push ax                          ; 0x21f5
    mov ax, 0x21a9                   ; 0x21f6
    push ax                          ; 0x21f9
    lea ax, word [bp - 0x00f4]       ; 0x21fa
    push ax                          ; 0x21fe
    lea ax, word [bp - 0x00a4]       ; 0x21ff
    push ax                          ; 0x2203
    call loc_GGIS                    ; 0x2204
    add sp, byte 8                   ; 0x2207
    mov ax, 0x21c0                   ; 0x220a
    push ax                          ; 0x220d
    mov ax, 0x21b5                   ; 0x220e
    push ax                          ; 0x2211
    lea ax, word [bp - 0x00f4]       ; 0x2212
    push ax                          ; 0x2216
    lea ax, word [bp - 0x00a4]       ; 0x2217
    push ax                          ; 0x221b
    call loc_GGIS                    ; 0x221c
    add sp, byte 8                   ; 0x221f
    mov ax, 0x21cc                   ; 0x2222
    push ax                          ; 0x2225
    mov ax, 0x21c1                   ; 0x2226
    push ax                          ; 0x2229
    lea ax, word [bp - 0x00f4]       ; 0x222a
    push ax                          ; 0x222e
    lea ax, word [bp - 0x00a4]       ; 0x222f
    push ax                          ; 0x2233
    call loc_GGIS                    ; 0x2234
    add sp, byte 8                   ; 0x2237
    mov ax, 0x21cd                   ; 0x223a
    push ax                          ; 0x223d
    mov ax, 3                        ; 0x223e
    push ax                          ; 0x2241
    lea ax, word [bp - 0x00a4]       ; 0x2242
    push ax                          ; 0x2246
    lea ax, word [bp - 0x001c]       ; 0x2247
    push ax                          ; 0x224a
    call loc_PMLM                    ; 0x224b
    add sp, byte 8                   ; 0x224e
    mov ax, 0x21e3                   ; 0x2251
    push ax                          ; 0x2254
    mov ax, 0x21d8                   ; 0x2255
    push ax                          ; 0x2258
    lea ax, word [bp - 0x00f4]       ; 0x2259
    push ax                          ; 0x225d
    lea ax, word [bp - 0x00a4]       ; 0x225e
    push ax                          ; 0x2262
    call loc_GGIS                    ; 0x2263
    add sp, byte 8                   ; 0x2266
    mov ax, 0x21ef                   ; 0x2269
    push ax                          ; 0x226c
    mov ax, 0x21e4                   ; 0x226d
    push ax                          ; 0x2270
    lea ax, word [bp - 0x00f4]       ; 0x2271
    push ax                          ; 0x2275
    lea ax, word [bp - 0x00a4]       ; 0x2276
    push ax                          ; 0x227a
    call loc_GGIS                    ; 0x227b
    add sp, byte 8                   ; 0x227e
    mov ax, 0x21f0                   ; 0x2281
    push ax                          ; 0x2284
    mov ax, 4                        ; 0x2285
    push ax                          ; 0x2288
    lea ax, word [bp - 0x00a4]       ; 0x2289
    push ax                          ; 0x228d
    lea ax, word [bp - 0x001c]       ; 0x228e
    push ax                          ; 0x2291
    call loc_PMLM                    ; 0x2292
    add sp, byte 8                   ; 0x2295
    mov ax, 0x2206                   ; 0x2298
    push ax                          ; 0x229b
    mov ax, 0x21fb                   ; 0x229c
    push ax                          ; 0x229f
    lea ax, word [bp - 0x00f4]       ; 0x22a0
    push ax                          ; 0x22a4
    lea ax, word [bp - 0x00a4]       ; 0x22a5
    push ax                          ; 0x22a9
    call loc_GGIS                    ; 0x22aa
    add sp, byte 8                   ; 0x22ad
@..loc_VRUR.l59:
    cmp word [bp - 0x000e], byte 1   ; 0x22b0
    je short @..loc_VRUR.l60         ; 0x22b4
    jmp near @..loc_VRUR.l61         ; 0x22b6
@..loc_VRUR.l60:
    mov ax, 0x2212                   ; 0x22b9
    push ax                          ; 0x22bc
    mov ax, 0x2207                   ; 0x22bd
    push ax                          ; 0x22c0
    lea ax, word [bp - 0x00f4]       ; 0x22c1
    push ax                          ; 0x22c5
    lea ax, word [bp - 0x00a4]       ; 0x22c6
    push ax                          ; 0x22ca
    call loc_GGIS                    ; 0x22cb
    add sp, byte 8                   ; 0x22ce
    mov ax, 0x221e                   ; 0x22d1
    push ax                          ; 0x22d4
    mov ax, 0x2213                   ; 0x22d5
    push ax                          ; 0x22d8
    lea ax, word [bp - 0x00f4]       ; 0x22d9
    push ax                          ; 0x22dd
    lea ax, word [bp - 0x00a4]       ; 0x22de
    push ax                          ; 0x22e2
    call loc_GGIS                    ; 0x22e3
    add sp, byte 8                   ; 0x22e6
    mov ax, 0x221f                   ; 0x22e9
    push ax                          ; 0x22ec
    mov ax, 2                        ; 0x22ed
    push ax                          ; 0x22f0
    lea ax, word [bp - 0x00a4]       ; 0x22f1
    push ax                          ; 0x22f5
    lea ax, word [bp - 0x001c]       ; 0x22f6
    push ax                          ; 0x22f9
    call loc_PMLM                    ; 0x22fa
    add sp, byte 8                   ; 0x22fd
    mov ax, 0x2235                   ; 0x2300
    push ax                          ; 0x2303
    mov ax, 0x222a                   ; 0x2304
    push ax                          ; 0x2307
    lea ax, word [bp - 0x00f4]       ; 0x2308
    push ax                          ; 0x230c
    lea ax, word [bp - 0x00a4]       ; 0x230d
    push ax                          ; 0x2311
    call loc_GGIS                    ; 0x2312
    add sp, byte 8                   ; 0x2315
    mov ax, 0x2241                   ; 0x2318
    push ax                          ; 0x231b
    mov ax, 0x2236                   ; 0x231c
    push ax                          ; 0x231f
    lea ax, word [bp - 0x00f4]       ; 0x2320
    push ax                          ; 0x2324
    lea ax, word [bp - 0x00a4]       ; 0x2325
    push ax                          ; 0x2329
    call loc_GGIS                    ; 0x232a
    add sp, byte 8                   ; 0x232d
    mov ax, 0x224d                   ; 0x2330
    push ax                          ; 0x2333
    mov ax, 0x2242                   ; 0x2334
    push ax                          ; 0x2337
    lea ax, word [bp - 0x00f4]       ; 0x2338
    push ax                          ; 0x233c
    lea ax, word [bp - 0x00a4]       ; 0x233d
    push ax                          ; 0x2341
    call loc_GGIS                    ; 0x2342
    add sp, byte 8                   ; 0x2345
    mov ax, 0x2259                   ; 0x2348
    push ax                          ; 0x234b
    mov ax, 0x224e                   ; 0x234c
    push ax                          ; 0x234f
    lea ax, word [bp - 0x00f4]       ; 0x2350
    push ax                          ; 0x2354
    lea ax, word [bp - 0x00a4]       ; 0x2355
    push ax                          ; 0x2359
    call loc_GGIS                    ; 0x235a
    add sp, byte 8                   ; 0x235d
    mov ax, 0x225a                   ; 0x2360
    push ax                          ; 0x2363
    mov ax, 3                        ; 0x2364
    push ax                          ; 0x2367
    lea ax, word [bp - 0x00a4]       ; 0x2368
    push ax                          ; 0x236c
    lea ax, word [bp - 0x001c]       ; 0x236d
    push ax                          ; 0x2370
    call loc_PMLM                    ; 0x2371
    add sp, byte 8                   ; 0x2374
    mov ax, 0x2270                   ; 0x2377
    push ax                          ; 0x237a
    mov ax, 0x2265                   ; 0x237b
    push ax                          ; 0x237e
    lea ax, word [bp - 0x00f4]       ; 0x237f
    push ax                          ; 0x2383
    lea ax, word [bp - 0x00a4]       ; 0x2384
    push ax                          ; 0x2388
    call loc_GGIS                    ; 0x2389
    add sp, byte 8                   ; 0x238c
@..loc_VRUR.l61:
    mov ax, word [bp - 0x0010]       ; 0x238f
    jmp short @..loc_VRUR.l62        ; 0x2392
%include "vinstall/loc_TKNK.asm"           ; 0x2394

%include "vinstall/loc_JNRH_239c.asm"      ; 0x239c

%include "vinstall/loc_SRIV.asm"           ; 0x23a4

%include "vinstall/loc_JNRH_23ac.asm"      ; 0x23ac

%include "vinstall/loc_KGSS.asm"           ; 0x23b4

cseg_2479:
    db 0x00
%include "vinstall/asm_only/bios_video_loc_GRLO.asm" ; 0x247a

%include "vinstall/asm_only/bios_mouse_loc_KUPR.asm" ; 0x2501

%include "vinstall/asm_only/dos_con_in_noecho.asm"  ; 0x2521

%include "vinstall/asm_only/bios_video_loc_UMOO.asm" ; 0x252e

%include "vinstall/asm_only/bios_video_loc_LRTV.asm" ; 0x2551

%include "vinstall/asm_only/bios_video_loc_MIHP.asm" ; 0x25d3

%include "vinstall/asm_only/bios_video_loc_RGPO.asm" ; 0x2621

%include "vinstall/asm_only/aztec_calloc.asm"       ; 0x26f6

%include "vinstall/asm_only/bios_kbd_check.asm"     ; 0x2709

%include "vinstall/asm_only/bios_video_loc_KLVI.asm" ; 0x2720

%include "vinstall/asm_only/bios_video_loc_JNLT.asm" ; 0x2733

%include "vinstall/aztec_atoi.asm"         ; 0x2806

%include "vinstall/aztec_atol.asm"         ; 0x2877

%include "vinstall/loc_PTUG.asm"           ; 0x2908

%include "vinstall/aztec_fexecv.asm"       ; 0x291c

%include "vinstall/asm_only/aztec_fcbinit.asm"      ; 0x29d9

%include "vinstall/asm_only/aztec_mkdir.asm"        ; 0x29fe

%include "vinstall/leaf_loc_THVG.asm"      ; 0x2a15

%include "vinstall/leaf_loc_GPVI.asm"      ; 0x2a1c

cseg_2a23:
    add byte [bx + si], al           ; 0x2a23
cseg_2a25:
    add byte [bx + si], al           ; 0x2a25
%include "vinstall/asm_only/aztec_fexec.asm"        ; 0x2a27

%include "vinstall/asm_only/aztec_wait.asm"         ; 0x2a9d

%include "vinstall/string_loc_VOPH.asm"    ; 0x2aa6

%include "vinstall/asm_only/aztec_strncat.asm"      ; 0x2aae

%include "shared/aztec_strcpy.asm"       ; 0x2add

%include "shared/aztec_strncpy.asm"      ; 0x2b09

%include "vinstall/asm_only/aztec_sysint.asm"       ; 0x2b31

%include "vinstall/asm_only/aztec_toupper.asm"      ; 0x2bb2

%include "vinstall/asm_only/aztec_tolower.asm"      ; 0x2bc6

%include "vinstall/aztec_gmtime.asm"       ; 0x2bda

%include "vinstall/aztec_utime.asm"        ; 0x2bfe

%include "vinstall/loc_LJIN.asm"           ; 0x2c62

%include "vinstall/loc_TSHR.asm"           ; 0x2c7a

%include "vinstall/aztec_fputs.asm"        ; 0x2c8e

%include "vinstall/aztec_putc.asm"         ; 0x2cc1

%include "vinstall/loc_PMOR.asm"           ; 0x2cf5

%include "vinstall/aztec_fclose.asm"       ; 0x2d0b

%include "vinstall/aztec_flsh_.asm"        ; 0x2d86

%include "vinstall/leaf_loc_OLII.asm"      ; 0x2e45

%include "vinstall/loc_NSQI.asm"           ; 0x2e63

%include "vinstall/aztec_realloc.asm"      ; 0x2eac

%include "vinstall/aztec_malloc.asm"       ; 0x2f1b

%include "vinstall/leaf_loc_OPMK.asm"      ; 0x3016

%include "vinstall/aztec_free.asm"         ; 0x3019


    db 'LlhFNoxXudiscpneEfgG%'

jumptable_3053:
    dw string_loc_KLTQ - IMAGE_BASE            ; 0x3053
    dw string_loc_KJTR - IMAGE_BASE            ; 0x3055
    dw string_loc_IUUH - IMAGE_BASE            ; 0x3057
    dw string_loc_OOQH - IMAGE_BASE            ; 0x3059
    dw string_loc_IUUH - IMAGE_BASE            ; 0x305b
    dw leaf_loc_NLHG - IMAGE_BASE              ; 0x305d
    dw leaf_loc_PUQN - IMAGE_BASE              ; 0x305f
    dw leaf_loc_LJNM - IMAGE_BASE              ; 0x3061
    dw leaf_loc_SSSV - IMAGE_BASE              ; 0x3063
    dw leaf_loc_LNJQ - IMAGE_BASE              ; 0x3065
    dw leaf_loc_LNJQ - IMAGE_BASE              ; 0x3067
    dw loc_VNMS - IMAGE_BASE                   ; 0x3069
    dw loc_THMJ - IMAGE_BASE                   ; 0x306b
    dw string_loc_UPQI - IMAGE_BASE            ; 0x306d
    dw string_loc_QQVO - IMAGE_BASE            ; 0x306f
    dw loc_PSOK - IMAGE_BASE                   ; 0x3071
    dw loc_MLPR - IMAGE_BASE                   ; 0x3073
    dw loc_PSOK - IMAGE_BASE                   ; 0x3075
    dw loc_PSOK - IMAGE_BASE                   ; 0x3077
    dw loc_MLPR - IMAGE_BASE                   ; 0x3079
    dw string_loc_NKRM - IMAGE_BASE            ; 0x307b
    dw string_loc_TQKV - IMAGE_BASE            ; 0x307d

    db '23456789abcdef -lm first', 0

%include "vinstall/asm_only/sprintf.asm"            ; 0x3098

%include "vinstall/asm_only/string_loc_NKRM.asm"    ; 0x30b3

%include "vinstall/asm_only/string_loc_KLTQ.asm"    ; 0x3140

%include "vinstall/string_loc_KJTR.asm"    ; 0x3147

%include "vinstall/asm_only/string_loc_IUUH.asm"    ; 0x314b

%include "vinstall/asm_only/string_loc_OOQH.asm"    ; 0x314e

%include "vinstall/leaf_loc_NLHG.asm"      ; 0x3155

%include "vinstall/leaf_loc_LJNM.asm"      ; 0x315a

%include "vinstall/leaf_loc_PUQN.asm"      ; 0x315e

%include "vinstall/leaf_loc_SSSV.asm"      ; 0x3163

%include "vinstall/asm_only/leaf_loc_LNJQ.asm"      ; 0x3168

%include "vinstall/string_loc_UPQI.asm"    ; 0x32d0

%include "vinstall/string_loc_QQVO.asm"    ; 0x32d3

%include "vinstall/loc_NINI.asm"           ; 0x32eb

%include "vinstall/leaf_loc_NSJV.asm"      ; 0x331e

%include "vinstall/string_loc_TQKV.asm"    ; 0x3330

%include "vinstall/asm_only/string_loc_NMMQ.asm"    ; 0x3338

%include "shared/aztec_creat.asm"        ; 0x336a

%include "vinstall/aztec_open.asm"         ; 0x3381

%include "vinstall/asm_only/aztec_ldv.asm"          ; 0x3417

%include "vinstall/asm_only/aztec_lrm.asm"          ; 0x3445

%include "shared/aztec_lum.asm"          ; 0x3469

%include "shared/aztec_lud.asm"          ; 0x3471

%include "vinstall/asm_only/aztec_strcmp.asm"       ; 0x3508

%include "vinstall/asm_only/aztec_strncmp.asm"      ; 0x3526

%include "shared/aztec_strlen.asm"       ; 0x356f

%include "vinstall/asm_only/aztec_sys.asm"          ; 0x358c

cseg_35d0:
    db 0x00, 0x00
%include "vinstall/asm_only/aztec_begin.asm"        ; 0x35d2

%include "vinstall/asm_only/dos_proc_loc_MNNL.asm"  ; 0x3716

%include "vinstall/aztec_Croot.asm"        ; 0x373f

%include "vinstall/loc_KQTJ.asm"           ; 0x380b

%include "vinstall/leaf_loc_LSGN.asm"      ; 0x381d

%include "vinstall/asm_only/aztec_read.asm"         ; 0x381f

%include "vinstall/leaf_loc_JRQS.asm"      ; 0x3829

%include "vinstall/leaf_loc_SSLH.asm"      ; 0x3833

%include "vinstall/asm_only/aztec_write.asm"        ; 0x383a

%include "vinstall/asm_only/aztec_close.asm"        ; 0x3869

%include "vinstall/asm_only/aztec_lseek.asm"        ; 0x3881

%include "vinstall/asm_only/aztec_unlink.asm"       ; 0x38a0

%include "vinstall/asm_only/aztec_rename.asm"       ; 0x38b8

%include "vinstall/aztec_tty_rd.asm"       ; 0x38d9

%include "vinstall/aztec_tty_wr.asm"       ; 0x393e

%include "shared/aztec_movmem.asm"       ; 0x39a0

%include "shared/aztec_isatty.asm"       ; 0x39e5

%include "vinstall/asm_only/aztec_sbrk.asm"         ; 0x3a05

%include "vinstall/asm_only/aztec_brk.asm"          ; 0x3a39

%include "vinstall/asm_only/aztec_rsvstk.asm"       ; 0x3ac5


; End of host resident code
; address, o_corg in an overlay header).
__zres_end equ ($ - $$) + VBASE
%if ($ - $$) > 0x3ae0
    align 16, db 0
    __zdseg_para equ ($ - $$ - 0x200) / 16
%else
    times (0x3ae0 - ($ - $$)) db 0 ; 0xe
    __zdseg_para equ (0x3ae0 - 0x200) / 16
%endif
__zdseg_start:
    db 0x00, 0x00

    dw dseg_000e                               ; 0x3ae2
__zdseg_0004:
    dw dseg_0025                               ; 0x3ae4
__zdseg_0006:
    dw dseg_003c                               ; 0x3ae6
    dw dseg_0053                               ; 0x3ae8
    dw dseg_006a                               ; 0x3aea
    dw dseg_0081                               ; 0x3aec
__zdseg_000e:

    db '0-NO GRAPHICS BOARD   ', 0

__zstr_0025:
__zdseg_0025:

    db '1-VGA/MCGA (256 Color)', 0

__zdseg_003c:

    db '2-EGA      (16 Color) ', 0

__zdseg_0053:

    db '3-CGA      (4 Color)  ', 0

__zdseg_006a:

    db '4-HERCULES B/W Mono   ', 0

__zdseg_0081:

    db '5-TANDY    (16 Color) ', 0

    dw dseg_009c                               ; 0x3b78
    dw dseg_00a0                               ; 0x3b7a
__zdseg_009c:
    db 0x4f, 0x4e, 0x20, 0x00
__zdseg_00a0:
    db 0x4f, 0x46, 0x46, 0x00
    dw dseg_00b4                               ; 0x3b84
    dw dseg_00c8                               ; 0x3b86
    dw dseg_00dc                               ; 0x3b88
    dw dseg_00f0                               ; 0x3b8a
    dw dseg_0104                               ; 0x3b8c
    dw dseg_0118                               ; 0x3b8e
    dw dseg_012c                               ; 0x3b90
    dw dseg_0140                               ; 0x3b92
__zdseg_00b4:

    db 'PC INTERNAL SPEAKER', 0

__zdseg_00c8:

    db 'AD LIB BOARD       ', 0

__zdseg_00dc:

    db 'COVOX SOUNDMASTER  ', 0

__zdseg_00f0:

    db 'COVOX VOICEMASTER  ', 0

__zdseg_0104:

    db 'SOUND BLASTER      ', 0

__zdseg_0118:

    db 'ROLAND LAPC-1/MT-32', 0

__zdseg_012c:

    db 'COVOX SMII         ', 0

__zdseg_0140:

    db 'NONE               ', 0

    dw dseg_0158                               ; 0x3c34
    dw dseg_015c                               ; 0x3c36
__zdseg_0158:
    db 0x4e, 0x4f, 0x20, 0x00
__zdseg_015c:
    db 0x59, 0x45, 0x53, 0x00
    dw dseg_016a                               ; 0x3c40
    dw dseg_0181                               ; 0x3c42
    dw dseg_0198                               ; 0x3c44
    dw dseg_01af                               ; 0x3c46
    dw dseg_01c6                               ; 0x3c48
__zdseg_016a:

    db 'Floppy 5.25L (360k)   ', 0

__zdseg_0181:

    db 'Floppy 5.25H (1.2Meg) ', 0

__zdseg_0198:

    db 'Floppy 3.5L  (720k)   ', 0

__zdseg_01af:

    db 'Floppy 3.5H  (1.44Meg)', 0

__zdseg_01c6:

    db 'Hard (Fixed) Drive    ', 0
    times 4 db 0
    db 0x01, 0x00, 0x03, 0x00, 0x03, 0x00, 0x04, 0x00, 0x06, 0x00, 0x06, 0x00, 0x07, 0x00, 0x09, 0x00
    db 0x0a, 0x00, 0x0b, 0x00, 0x0c, 0x00, 0x0c, 0x00, 0x0e, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0x01, 0x00
    db 0x02, 0x00, 0x02, 0x00, 0x04, 0x00, 0x05, 0x00, 0x05, 0x00, 0x07, 0x00, 0x08, 0x00, 0x08, 0x00
    db 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0d, 0x00, 0x0d, 0x00, 0x0f, 0x00, 0x10, 0x00, 0x10, 0x00
    db 0x00, 0x00, 0x01, 0x00, 0x02
    times 7 db 0
    db 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x06, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0b, 0x00
    db 0x0c, 0x00, 0x0c, 0x00, 0x0c, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x06, 0x00, 0x06, 0x00
    db 0x06, 0x00, 0x09, 0x00, 0x09, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0c, 0x00, 0x0e, 0x00
    db 0x0e, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0x10
    times 5 db 0
    db 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x04, 0x00
    db 0x04, 0x00, 0x04
    times 9 db 0
    db 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00
    db 0x01, 0x00, 0x03, 0x00, 0x05, 0x00, 0x07, 0x00, 0x0a, 0x00, 0x01, 0x00, 0x05, 0x00, 0x0b
    times 5 db 0
    db 0x01, 0x00, 0xc1, 0x08, 0xce, 0x08, 0xd0, 0x08, 0xd2, 0x08, 0x01, 0x00, 0xd4, 0x08, 0xde, 0x08
    db 0xe0, 0x08, 0xe2, 0x08, 0x01, 0x00, 0xe4, 0x08, 0xee, 0x08, 0xf0, 0x08, 0xf2, 0x08, 0x01, 0x00
    db 0xf4, 0x08, 0xfe, 0x08, 0x00, 0x09, 0x02, 0x09, 0x01, 0x00, 0x04, 0x09, 0x0e, 0x09, 0x10, 0x09
    db 0x12, 0x09, 0x01, 0x00, 0x14, 0x09, 0x1e, 0x09, 0x21, 0x09, 0x23, 0x09, 0x01, 0x00, 0x25, 0x09
    db 0x2f, 0x09, 0x31, 0x09, 0x3a, 0x09, 0x01, 0x00, 0x3d, 0x09, 0x47, 0x09, 0x49, 0x09, 0x52, 0x09
    db 0x01, 0x00, 0x55, 0x09, 0x5f, 0x09, 0x61, 0x09, 0x6a, 0x09, 0x01, 0x00, 0x6d, 0x09, 0x77, 0x09
    db 0x79, 0x09, 0x82, 0x09, 0x01, 0x00, 0x85, 0x09, 0x8f, 0x09, 0x91, 0x09, 0x9a, 0x09, 0x01, 0x00
    db 0x9d, 0x09, 0xa7, 0x09, 0xa9, 0x09, 0xb2, 0x09, 0x01, 0x00, 0xb5, 0x09, 0xbf, 0x09, 0xc1, 0x09
    db 0xca, 0x09, 0x02, 0x00, 0xcd, 0x09, 0xda, 0x09, 0xdc, 0x09, 0xde, 0x09, 0x02, 0x00, 0xe0, 0x09
    db 0xe8, 0x09, 0xea, 0x09, 0xec, 0x09, 0x02, 0x00, 0xee, 0x09, 0xf9, 0x09, 0xfb, 0x09, 0xfd, 0x09
    db 0x02, 0x00, 0xff, 0x09, 0x08, 0x0a, 0x0a, 0x0a, 0x0c, 0x0a, 0x02, 0x00, 0x0e, 0x0a, 0x19, 0x0a
    db 0x1b, 0x0a, 0x1d, 0x0a, 0x02, 0x00, 0x1f, 0x0a, 0x27, 0x0a, 0x2a, 0x0a, 0x2c, 0x0a, 0x02, 0x00
    db 0x2e, 0x0a, 0x3a, 0x0a, 0x3c, 0x0a, 0x3e, 0x0a, 0x02, 0x00, 0x40, 0x0a, 0x4c, 0x0a, 0x4e, 0x0a
    db 0x50, 0x0a, 0x03, 0x00, 0x52, 0x0a, 0x5a, 0x0a, 0x5c, 0x0a, 0x5e, 0x0a, 0x03, 0x00, 0x60, 0x0a
    db 0x6b, 0x0a, 0x6d, 0x0a, 0x6f, 0x0a, 0x03, 0x00, 0x71, 0x0a, 0x7c, 0x0a, 0x7e, 0x0a, 0x80, 0x0a
    db 0x03, 0x00, 0x82, 0x0a, 0x8d, 0x0a, 0x8f, 0x0a, 0x91, 0x0a, 0x03, 0x00, 0x93, 0x0a, 0x9e, 0x0a
    db 0xa0, 0x0a, 0xa2, 0x0a, 0x03, 0x00, 0xa4, 0x0a, 0xaf, 0x0a, 0xb1, 0x0a, 0xb3, 0x0a, 0x03, 0x00
    db 0xb5, 0x0a, 0xc0, 0x0a, 0xc2, 0x0a, 0xc4, 0x0a, 0x03, 0x00, 0xc6, 0x0a, 0xd1, 0x0a, 0xd3, 0x0a
    db 0xd5, 0x0a, 0x03, 0x00, 0xd7, 0x0a, 0xe2, 0x0a, 0xe4, 0x0a, 0xe6, 0x0a, 0x03, 0x00, 0xe8, 0x0a
    db 0xf5, 0x0a, 0xf7, 0x0a, 0xf9, 0x0a, 0x03, 0x00, 0xfb, 0x0a, 0x08, 0x0b, 0x0a, 0x0b, 0x0c, 0x0b
    db 0x03, 0x00, 0x0e, 0x0b, 0x1b, 0x0b, 0x1d, 0x0b, 0x1f, 0x0b, 0x03, 0x00, 0x21, 0x0b, 0x2e, 0x0b
    db 0x30, 0x0b, 0x32, 0x0b, 0x04, 0x00, 0x34, 0x0b, 0x3e, 0x0b, 0x47, 0x0b, 0x50, 0x0b, 0x04, 0x00
    db 0x53, 0x0b, 0x5d, 0x0b, 0x5f, 0x0b, 0x61, 0x0b, 0x04, 0x00, 0x63, 0x0b, 0x6d, 0x0b, 0x6f, 0x0b
    db 0x71, 0x0b, 0x04, 0x00, 0x73, 0x0b, 0x7d, 0x0b, 0x7f, 0x0b, 0x81, 0x0b, 0x04, 0x00, 0x83, 0x0b
    db 0x8d, 0x0b, 0x8f, 0x0b, 0x91, 0x0b, 0x04, 0x00, 0x93, 0x0b, 0x9d, 0x0b, 0x9f, 0x0b, 0xa1, 0x0b
    db 0x04, 0x00, 0xa3, 0x0b, 0xad, 0x0b, 0xaf, 0x0b, 0xb1, 0x0b, 0x04, 0x00, 0xb3, 0x0b, 0xbd, 0x0b
    db 0xbf, 0x0b, 0xc1, 0x0b, 0x04, 0x00, 0xc3, 0x0b, 0xcd, 0x0b, 0xcf, 0x0b, 0xd1, 0x0b, 0x04, 0x00
    db 0xd3, 0x0b, 0xdd, 0x0b, 0xe1, 0x0b, 0xe5, 0x0b, 0x04, 0x00, 0xe7, 0x0b, 0xf1, 0x0b, 0xf3, 0x0b
    db 0xf5, 0x0b, 0x04, 0x00, 0xf7, 0x0b, 0x01, 0x0c, 0x03, 0x0c, 0x05, 0x0c, 0x04, 0x00, 0x07, 0x0c
    db 0x11, 0x0c, 0x15, 0x0c, 0x19, 0x0c, 0x04, 0x00, 0x1b, 0x0c, 0x25, 0x0c, 0x28, 0x0c, 0x2b, 0x0c
    db 0x04, 0x00, 0x2e, 0x0c, 0x38, 0x0c, 0x3c, 0x0c, 0x40, 0x0c, 0x04, 0x00, 0x42, 0x0c, 0x4c, 0x0c
    db 0x4e, 0x0c, 0x50, 0x0c, 0x04, 0x00, 0x52, 0x0c, 0x5c, 0x0c, 0x5f, 0x0c, 0x62, 0x0c, 0x04, 0x00
    db 0x64, 0x0c, 0x6e, 0x0c, 0x72, 0x0c, 0x76, 0x0c, 0x04, 0x00, 0x79, 0x0c, 0x83, 0x0c, 0x87, 0x0c
    db 0x8b, 0x0c, 0x04, 0x00, 0x8e, 0x0c, 0x98, 0x0c, 0x9e, 0x0c, 0xa4, 0x0c, 0x04, 0x00, 0xa7, 0x0c
    db 0xb1, 0x0c, 0xb4, 0x0c, 0xb7, 0x0c, 0x04, 0x00, 0xb9, 0x0c, 0xc3, 0x0c, 0xc6, 0x0c, 0xc9, 0x0c
    db 0x04, 0x00, 0xcc, 0x0c, 0xd6, 0x0c, 0xd9, 0x0c, 0xdc, 0x0c, 0x04, 0x00, 0xde, 0x0c, 0xe8, 0x0c
    db 0xeb, 0x0c, 0xee, 0x0c, 0x04, 0x00, 0xf0, 0x0c, 0xfa, 0x0c, 0xfd, 0x0c, 0x00, 0x0d, 0x04, 0x00
    db 0x02, 0x0d, 0x0c, 0x0d, 0x10, 0x0d, 0x14, 0x0d, 0x04, 0x00, 0x17, 0x0d, 0x21, 0x0d, 0x27, 0x0d
    db 0x2d, 0x0d, 0x04, 0x00, 0x30, 0x0d, 0x3a, 0x0d, 0x3c, 0x0d, 0x3e, 0x0d, 0x04, 0x00, 0x40, 0x0d
    db 0x4a, 0x0d, 0x4d, 0x0d, 0x50, 0x0d, 0x05, 0x00, 0x53, 0x0d, 0x5b, 0x0d, 0x5d, 0x0d, 0x5f, 0x0d
    db 0x05, 0x00, 0x61, 0x0d, 0x6a, 0x0d, 0x6c, 0x0d, 0x6e, 0x0d, 0x05, 0x00, 0x70, 0x0d, 0x7b, 0x0d
    db 0x7d, 0x0d, 0x7f, 0x0d, 0x05, 0x00, 0x81, 0x0d, 0x8c, 0x0d, 0x8e, 0x0d, 0x90, 0x0d, 0x05, 0x00
    db 0x92, 0x0d, 0x9d, 0x0d, 0x9f, 0x0d, 0xa1, 0x0d, 0x05, 0x00, 0xa3, 0x0d, 0xae, 0x0d, 0xb0, 0x0d
    db 0xb2, 0x0d, 0x05, 0x00, 0xb4, 0x0d, 0xbf, 0x0d, 0xc1, 0x0d, 0xc3, 0x0d, 0x05, 0x00, 0xc5, 0x0d
    db 0xd0, 0x0d, 0xd2, 0x0d, 0xd4, 0x0d, 0x05, 0x00, 0xd6, 0x0d, 0xe1, 0x0d, 0xe3, 0x0d, 0xe5, 0x0d
    db 0x05, 0x00, 0xe7, 0x0d, 0xf2, 0x0d, 0xf4, 0x0d, 0xf6, 0x0d, 0x05, 0x00, 0xf8, 0x0d, 0x05, 0x0e
    db 0x07, 0x0e, 0x09, 0x0e, 0x05, 0x00, 0x0b, 0x0e, 0x18, 0x0e, 0x1a, 0x0e, 0x1c, 0x0e, 0x05, 0x00
    db 0x1e, 0x0e, 0x2b, 0x0e, 0x2d, 0x0e, 0x2f, 0x0e, 0x05, 0x00, 0x31, 0x0e, 0x3e, 0x0e, 0x40, 0x0e
    db 0x42, 0x0e, 0x06, 0x00, 0x44, 0x0e, 0x4e, 0x0e, 0x51, 0x0e, 0x54, 0x0e, 0x06, 0x00, 0x57, 0x0e
    db 0x61, 0x0e, 0x65, 0x0e, 0x69, 0x0e, 0x06, 0x00, 0x6c, 0x0e, 0x76, 0x0e, 0x7a, 0x0e, 0x7e, 0x0e
    db 0x06, 0x00, 0x81, 0x0e, 0x8b, 0x0e, 0x8d, 0x0e, 0x8f, 0x0e, 0x06, 0x00, 0x91, 0x0e, 0x9b, 0x0e
    db 0x9f, 0x0e, 0xa3, 0x0e, 0x06, 0x00, 0xa6, 0x0e, 0xb0, 0x0e, 0xb2, 0x0e, 0xb4, 0x0e, 0x06, 0x00
    db 0xb6, 0x0e, 0xc0, 0x0e, 0xc4, 0x0e, 0xc8, 0x0e, 0x06, 0x00, 0xca, 0x0e, 0xd4, 0x0e, 0xd6, 0x0e
    db 0xd8, 0x0e, 0x06, 0x00, 0xda, 0x0e, 0xe4, 0x0e, 0xe7, 0x0e, 0xea, 0x0e, 0x06, 0x00, 0xec, 0x0e
    db 0xf6, 0x0e, 0xf8, 0x0e, 0xfa, 0x0e, 0x06, 0x00, 0xfc, 0x0e, 0x06, 0x0f, 0x08, 0x0f, 0x0a, 0x0f
    db 0x06, 0x00, 0x0c, 0x0f, 0x16, 0x0f, 0x18, 0x0f, 0x1a, 0x0f, 0x06, 0x00, 0x1c, 0x0f, 0x26, 0x0f
    db 0x2a, 0x0f, 0x2e, 0x0f, 0x06, 0x00, 0x30, 0x0f, 0x3a, 0x0f, 0x3d, 0x0f, 0x40, 0x0f, 0x06, 0x00
    db 0x42, 0x0f, 0x4c, 0x0f, 0x50, 0x0f, 0x54, 0x0f, 0x06, 0x00, 0x56, 0x0f, 0x60, 0x0f, 0x64, 0x0f
    db 0x68, 0x0f, 0x06, 0x00, 0x6a, 0x0f, 0x74, 0x0f, 0x77, 0x0f, 0x7a, 0x0f, 0x06, 0x00, 0x7c, 0x0f
    db 0x86, 0x0f, 0x8a, 0x0f, 0x8e, 0x0f, 0x06, 0x00, 0x90, 0x0f, 0x9a, 0x0f, 0x9c, 0x0f, 0x9e, 0x0f
    db 0x06, 0x00, 0xa0, 0x0f, 0xaa, 0x0f, 0xae, 0x0f, 0xb2, 0x0f, 0x06, 0x00, 0xb4, 0x0f, 0xbe, 0x0f
    db 0xc2, 0x0f, 0xc6, 0x0f, 0x06, 0x00, 0xc8, 0x0f, 0xd2, 0x0f, 0xd6, 0x0f, 0xda, 0x0f, 0x07, 0x00
    db 0xdc, 0x0f, 0xe6, 0x0f, 0xe8, 0x0f, 0xea, 0x0f, 0x07, 0x00, 0xec, 0x0f, 0xf7, 0x0f, 0xf9, 0x0f
    db 0xfb, 0x0f, 0x07, 0x00, 0xfd, 0x0f, 0x08, 0x10, 0x0a, 0x10, 0x0c, 0x10, 0x07, 0x00, 0x0e, 0x10
    db 0x19, 0x10, 0x1b, 0x10, 0x1d, 0x10, 0x07, 0x00, 0x1f, 0x10, 0x2a, 0x10, 0x2c, 0x10, 0x2e, 0x10
    db 0x07, 0x00, 0x30, 0x10, 0x3b, 0x10, 0x3d, 0x10, 0x3f, 0x10, 0x07, 0x00, 0x41, 0x10, 0x4c, 0x10
    db 0x4e, 0x10, 0x50, 0x10, 0x07, 0x00, 0x52, 0x10, 0x5d, 0x10, 0x5f, 0x10, 0x61, 0x10, 0x07, 0x00
    db 0x63, 0x10, 0x6e, 0x10, 0x70, 0x10, 0x72, 0x10, 0x07, 0x00, 0x74, 0x10, 0x81, 0x10, 0x83, 0x10
    db 0x85, 0x10, 0x07, 0x00, 0x87, 0x10, 0x94, 0x10, 0x96, 0x10, 0x98, 0x10, 0x07, 0x00, 0x9a, 0x10
    db 0xa7, 0x10, 0xa9, 0x10, 0xab, 0x10, 0x07, 0x00, 0xad, 0x10, 0xba, 0x10, 0xbc, 0x10, 0xbe, 0x10
    db 0x08, 0x00, 0xc0, 0x10, 0xcc, 0x10, 0xce, 0x10, 0xd0, 0x10, 0x08, 0x00, 0xd2, 0x10, 0xde, 0x10
    db 0xe0, 0x10, 0xe2, 0x10, 0x08, 0x00, 0xe4, 0x10, 0xf0, 0x10, 0xf2, 0x10, 0xf4, 0x10, 0x08, 0x00
    db 0xf6, 0x10, 0x02, 0x11, 0x04, 0x11, 0x06, 0x11, 0x08, 0x00, 0x08, 0x11, 0x14, 0x11, 0x16, 0x11
    db 0x18, 0x11, 0x08, 0x00, 0x1a, 0x11, 0x26, 0x11, 0x2d, 0x11, 0x34, 0x11, 0x08, 0x00, 0x38, 0x11
    db 0x44, 0x11, 0x47, 0x11, 0x4a, 0x11, 0x08, 0x00, 0x4d, 0x11, 0x59, 0x11, 0x5b, 0x11, 0x5d, 0x11
    db 0x08, 0x00, 0x5f, 0x11, 0x6b, 0x11, 0x6d, 0x11, 0x6f, 0x11, 0x08, 0x00, 0x71, 0x11, 0x7d, 0x11
    db 0x7f, 0x11, 0x81, 0x11, 0x08, 0x00, 0x83, 0x11, 0x8f, 0x11, 0x91, 0x11, 0x93, 0x11, 0x08, 0x00
    db 0x95, 0x11, 0xa1, 0x11, 0xa3, 0x11, 0xa5, 0x11, 0x08, 0x00, 0xa7, 0x11, 0xb3, 0x11, 0xb8, 0x11
    db 0xbd, 0x11, 0x08, 0x00, 0xc0, 0x11, 0xcc, 0x11, 0xd2, 0x11, 0xd8, 0x11, 0x08, 0x00, 0xdb, 0x11
    db 0xe7, 0x11, 0xed, 0x11, 0xf3, 0x11, 0x08, 0x00, 0xf6, 0x11, 0x02, 0x12, 0x06, 0x12, 0x0a, 0x12
    db 0x08, 0x00, 0x0d, 0x12, 0x19, 0x12, 0x1c, 0x12, 0x1f, 0x12, 0x08, 0x00, 0x21, 0x12, 0x2d, 0x12
    db 0x2f, 0x12, 0x31, 0x12, 0x08, 0x00, 0x33, 0x12, 0x3f, 0x12, 0x42, 0x12, 0x45, 0x12, 0x08, 0x00
    db 0x47, 0x12, 0x53, 0x12, 0x5b, 0x12, 0x63, 0x12, 0x08, 0x00, 0x66, 0x12, 0x72, 0x12, 0x79, 0x12
    db 0x80, 0x12, 0x08, 0x00, 0x83, 0x12, 0x8f, 0x12, 0x91, 0x12, 0x93, 0x12, 0x08, 0x00, 0x95, 0x12
    db 0xa1, 0x12, 0xa3, 0x12, 0xa5, 0x12, 0x08, 0x00, 0xa7, 0x12, 0xb3, 0x12, 0xb7, 0x12, 0xbb, 0x12
    db 0x08, 0x00, 0xbe, 0x12, 0xca, 0x12, 0xce, 0x12, 0xd2, 0x12, 0x08, 0x00, 0xd4, 0x12, 0xe0, 0x12
    db 0xe5, 0x12, 0xea, 0x12, 0x08, 0x00, 0xed, 0x12, 0xf9, 0x12, 0xfc, 0x12, 0xff, 0x12, 0x08, 0x00
    db 0x01, 0x13, 0x0d, 0x13, 0x0f, 0x13, 0x11, 0x13, 0x08, 0x00, 0x13, 0x13, 0x1f, 0x13, 0x23, 0x13
    db 0x27, 0x13, 0x08, 0x00, 0x2a, 0x13, 0x36, 0x13, 0x3b, 0x13, 0x40, 0x13, 0x08, 0x00, 0x43, 0x13
    db 0x4f, 0x13, 0x54, 0x13, 0x59, 0x13, 0x08, 0x00, 0x5c, 0x13, 0x68, 0x13, 0x6e, 0x13, 0x74, 0x13
    db 0x08, 0x00, 0x77, 0x13, 0x83, 0x13, 0x86, 0x13, 0x89, 0x13, 0x08, 0x00, 0x8c, 0x13, 0x98, 0x13
    db 0x9c, 0x13, 0xa0, 0x13, 0x08, 0x00, 0xa2, 0x13, 0xae, 0x13, 0xb2, 0x13, 0xb6, 0x13, 0x09, 0x00
    db 0xb8, 0x13, 0xc2, 0x13, 0xc4, 0x13, 0xc6, 0x13, 0x09, 0x00, 0xc8, 0x13, 0xd2, 0x13, 0xd6, 0x13
    db 0xda, 0x13, 0x09, 0x00, 0xdc, 0x13, 0xe6, 0x13, 0xe8, 0x13, 0xea, 0x13, 0x09, 0x00, 0xec, 0x13
    db 0xf6, 0x13, 0xf8, 0x13, 0xfa, 0x13, 0x0a, 0x00, 0xfc, 0x13, 0x06, 0x14, 0x09, 0x14, 0x0c, 0x14
    db 0x0a, 0x00, 0x0e, 0x14, 0x18, 0x14, 0x1a, 0x14, 0x1c, 0x14, 0x0a, 0x00, 0x1e, 0x14, 0x28, 0x14
    db 0x2a, 0x14, 0x2c, 0x14, 0x0a, 0x00, 0x2e, 0x14, 0x38, 0x14, 0x3b, 0x14, 0x3e, 0x14, 0xff, 0xff
    db 0x40, 0x14, 0x41, 0x14, 0x42, 0x14, 0x43, 0x14
    db 'PLAYBANE.BAT', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WROOT.EXE', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WINIT.OVR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WBASE.OVR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPCMK.OVR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPCVW.OVR', 0
    db 0x41, 0x43, 0x00, 0x2a, 0x00, 0x2a, 0x00
    db 'WMAZE.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WDOPT.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WTREA.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WMELE.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WPOPS.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WMEXE.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WMNPC.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'SCENARIO.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MSG.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MASTER.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MISC.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'PCFILE.DBS', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MSG.DBS', 0
    db 0x41, 0x43, 0x00, 0x2a, 0x00, 0x2a, 0x00
    db 'NEWGAME.DBS', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'CREDITS.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'EGA.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT0.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT1.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT2.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT3.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT4.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT1.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT2.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT3.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'DRAGONSC.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'GRAVEYRD.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'TITLEPAG.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MAZEDATA.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON00.PIC', 0
    db 'DEFGHIJK', 0
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'MON01.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON02.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON03.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON04.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON05.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON06.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON07.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON08.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON09.PIC', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON10.PIC', 0
    db 0x4a, 0x00, 0x48, 0x00, 0x43, 0x00
    db 'MON11.PIC', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'MON12.PIC', 0
    db 0x46, 0x47, 0x4a, 0x00, 0x44, 0x45, 0x48, 0x00, 0x43, 0x00
    db 'MON13.PIC', 0
    db 0x45, 0x4a, 0x00, 0x43, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'MON14.PIC', 0
    db 0x46, 0x47, 0x49, 0x00, 0x44, 0x45, 0x47, 0x00, 0x43, 0x00
    db 'MON15.PIC', 0
    db 0x45, 0x00, 0x43, 0x00, 0x42, 0x00
    db 'MON16.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON17.PIC', 0
    db 0x44, 0x45, 0x46, 0x00, 0x42, 0x43, 0x44, 0x00, 0x42, 0x43, 0x00
    db 'MON18.PIC', 0
    db 0x44, 0x47, 0x4b, 0x00, 0x42, 0x45, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'MON19.PIC', 0
    db 'DEGIK', 0
    db 'BCEGI', 0
    db 0x42, 0x43, 0x00
    db 'MON20.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON21.PIC', 0
    db 0x44, 0x4b, 0x00, 0x42, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'MON22.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON23.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON24.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON25.PIC', 0
    db 0x44, 0x45, 0x47, 0x00, 0x42, 0x43, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'MON26.PIC', 0
    db 'DEFIJ', 0
    db 'BCDGH', 0
    db 0x42, 0x43, 0x00
    db 'MON27.PIC', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'MON28.PIC', 0
    db 0x45, 0x4a, 0x00, 0x43, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'CGA.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'HERC.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT0.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT1.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT2.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT3.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT4.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT1.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT2.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT3.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'DRAGONSC.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'GRAVEYRD.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'TITLEPAG.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MAZEDATA.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON29.PIC', 0
    db 0x44, 0x4a, 0x00, 0x42, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'MON30.PIC', 0
    db 0x45, 0x46, 0x47, 0x00, 0x43, 0x44, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'MON31.PIC', 0
    db 0x44, 0x45, 0x46, 0x00, 0x42, 0x43, 0x44, 0x00, 0x42, 0x43, 0x00
    db 'MON32.PIC', 0
    db 0x45, 0x00, 0x43, 0x00, 0x42, 0x00
    db 'MON33.PIC', 0
    db 0x44, 0x46, 0x47, 0x00, 0x42, 0x44, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'MON34.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON35.PIC', 0
    db 0x46, 0x4a, 0x4b, 0x00, 0x44, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'MON36.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON37.PIC', 0
    db 0x46, 0x48, 0x00, 0x44, 0x46, 0x00, 0x43, 0x00
    db 'MON38.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON39.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON40.PIC', 0
    db 0x48, 0x00, 0x46, 0x00, 0x43, 0x00
    db 'MON41.PIC', 0
    db 0x47, 0x48, 0x49, 0x00, 0x45, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON42.PIC', 0
    db 0x48, 0x49, 0x00, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON43.PIC', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON44.PIC', 0
    db 0x47, 0x48, 0x49, 0x00, 0x45, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON45.PIC', 0
    db 0x47, 0x4b, 0x00, 0x45, 0x49, 0x00, 0x43, 0x00
    db 'MON46.PIC', 0
    db 0x47, 0x49, 0x4b, 0x00, 0x45, 0x47, 0x49, 0x00, 0x43, 0x00
    db 'MON47.PIC', 0
    db 0x4a, 0x00, 0x48, 0x00, 0x43, 0x00
    db 'MON48.PIC', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON49.PIC', 0
    db 0x49, 0x4a, 0x4b, 0x00, 0x47, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'MON50.PIC', 0
    db 0x49, 0x4a, 0x4b, 0x00, 0x47, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'TANDY.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT0.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT1.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT2.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT3.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT4.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT1.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT2.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT3.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'DRAGONSC.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'GRAVEYRD.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'TITLEPAG.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MAZEDATA.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND00.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND02.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND03.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND04.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND05.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND06.SND', 0
    db 'BDGHIJ', 0
    db 'ABEFGH', 0
    db 0x41, 0x42, 0x43, 0x00
    db 'SOUND07.SND', 0
    db 0x42, 0x45, 0x00, 0x41, 0x43, 0x00, 0x41, 0x42, 0x00
    db 'SOUND08.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND10.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND11.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND12.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND13.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND14.SND', 0
    db 0x44, 0x45, 0x46, 0x48, 0x00, 0x42, 0x43, 0x44, 0x46, 0x00, 0x42, 0x43, 0x00
    db 'SOUND15.SND', 0
    db 'DFGJK', 0
    db 'BDEHI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND16.SND', 0
    db 'DEFIK', 0
    db 'BCDGI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND17.SND', 0
    db 0x44, 0x45, 0x4b, 0x00, 0x42, 0x43, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'SOUND20.SND', 0
    db 0x48, 0x49, 0x00, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'SOUND21.SND', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'SOUND22.SND', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'SOUND23.SND', 0
    db 'DEFGIJK', 0
    db 'BCDEGHI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND24.SND', 0
    db 'DEFIJK', 0
    db 'BCDGHI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND25.SND', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'SOUND26.SND', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'SOUND27.SND', 0
    db 0x44, 0x45, 0x47, 0x00, 0x42, 0x43, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'SOUND28.SND', 0
    db 0x47, 0x4a, 0x4b, 0x00, 0x45, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'SOUND29.SND', 0
    db 0x45, 0x46, 0x47, 0x4b, 0x00, 0x43, 0x44, 0x45, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'SOUND30.SND', 0
    db 0x46, 0x48, 0x00, 0x44, 0x46, 0x00, 0x43, 0x00
    db 'SOUND31.SND', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'SOUND32.SND', 0
    db 0x45, 0x46, 0x47, 0x00, 0x43, 0x44, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'SOUND33.SND', 0
    db 0x44, 0x46, 0x47, 0x49, 0x00, 0x42, 0x44, 0x45, 0x47, 0x00, 0x42, 0x43, 0x00
    db 'SOUND34.SND', 0
    db 0x42, 0x47, 0x48, 0x49, 0x00, 0x41, 0x45, 0x46, 0x47, 0x00, 0x41, 0x43, 0x00
    db 'SOUND35.SND', 0
    db 'EGHIK', 0
    db 'CEFGI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND36.SND', 0
    db 0x45, 0x4a, 0x00, 0x43, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'SOUND37.SND', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'SOUND38.SND', 0
    db 0x48, 0x49, 0x4a, 0x00, 0x46, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON52.PIC', 0
    db 0x49, 0x00, 0x47, 0x00, 0x43, 0x00
    db 'MON53.PIC', 0
    db 0x48, 0x49, 0x4a, 0x00, 0x46, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON55.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON56.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON51.PIC', 0
    db 0x48, 0x49, 0x00, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON54.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON57.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON58.PIC', 0
    db 0x47, 0x4b, 0x00, 0x45, 0x49, 0x00, 0x43
    times 5 db 0
    db 0x25, 0x63, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x20, 0x20, 0x00
    db '                                                                               ', 0
    db '                                                                               ', 0
    db 'SCENARIO.HDR', 0
    db 'SYSTEM ERROR: UNABLE TO OPEN ', 0
    db ' - Press <RETURN>', 0
    db '*ERROR* INSTALL VERSION MISMATCH - Press <RETURN>', 0
    db 0x5c, 0x00
    db 'SAVEGAME.DBS', 0
    db '                                                                               ', 0
    db 'Please Insert ', 0
    db 'DESTINATION', 0
    db '*SOURCE*', 0
    db ' Disk (', 0
    db ') Into Drive ', 0
    db ' - Press <RETURN>', 0
    db 'pkunzip.exe', 0
    db 'pkunzip.exe', 0
    db 'pkunzip.exe ', 0
    db 0x20, 0x00, 0x6e, 0x75, 0x6c, 0x00, 0x61, 0x00, 0x63, 0x6f, 0x6e, 0x00, 0x61, 0x00
    db 'ERROR: UNABLE TO UNZIP -> ', 0
    db ' - Press <RETURN>', 0
    db 0x00, 0x20, 0x00, 0x41, 0x3a, 0x00, 0x42, 0x3a, 0x00, 0x41, 0x3a, 0x00, 0x00, 0x41, 0x3a, 0x00
    db 0x00, 0x41, 0x3a, 0x00, 0x00, 0x43, 0x3a, 0x00
    db 'DSAVANT', 0
    db 'ERROR: INVALID DESTINATION DRIVE -> (', 0
    db ') - Press <RETURN>', 0
    db 'ERROR: UNABLE TO CREATE DIRECTORY -> ', 0
    db ' - Press <RETURN>', 0
    db 'ERROR: UNABLE TO LOCATE DIRECTORY -> ', 0
    db ' - Press <RETURN>', 0
    db '****************************************************', 0
    db '*                 W I Z A R D R Y                  *', 0
    db '*           CRUSADERS OF THE DARK SAVANT           *', 0
    db '*               INSTALLATION PROGRAM    Ver#       *', 0
    db '****************************************************', 0
    db 0x2e, 0x00
    db 'Crusaders of the Dark Savant Application Software Copyright (C) 1992', 0
    db 'by David W. Bradley and Sir-Tech Software, Inc.', 0
    db 'All Logos, Printed Materials and Graphic Designs Copyright (C) 1992', 0
    db 'by Sir-Tech Software, Inc.', 0
    db 'All Rights Reserved. No part of this software or printed material may', 0
    db 'be reproduced in any way, or transmitted, in any form or by any means,', 0
    db 'electronic, mechanical, photocopying, recording, or otherwise without', 0
    db 'prior permission in writing  from the publisher,  except by reviewers,', 0
    db 'who may quote brief written passages and/or screen images to be print-', 0
    db 'ed in a magazine or newspaper.', 0
    db 0x00
    db 'Press <RETURN> to begin INSTALLATION PROCEDURE', 0
    db '****************************************************', 0
    db '*                 W I Z A R D R Y                  *', 0
    db '*           CRUSADERS OF THE DARK SAVANT           *', 0
    db '*               INSTALLATION PROGRAM               *', 0
    db '****************************************************', 0
    db 0x41, 0x3a, 0x00, 0x00
    db '                       Disk Drive Type      Drive Name  Path or Drive #2    ', 0
    db '                    ----------------------  ----------  --------------------', 0
    db '     SOURCE DRIVE:', 0
    db 'DESTINATION DRIVE:', 0
    db ' MEMORY EXPANSION>  EMS:      RamDisk:        RAM Name: ', 0
    db 'GRAPHIC MODE:                                     VIDEO ADJUSTMENT', 0
    db '                                                  ================', 0
    db '  Bright: ', 0
    db 'Contrast: ', 0
    db 'MOUSE: ', 0
    db 'SOUND: ', 0
    db 'FULL INSTALL   CONFIG ONLY    ABORT INSTALL', 0
    db 'ARROW KEY TO FIELD - <RETURN> TO CHANGE', 0
    db '*ERROR* NO VIDEO CARD DETECTED - Press <RETURN>', 0
    db 'UNABLE TO COMPLETE INSTALLATION - Press <RETURN>', 0
    db 'ARROW KEY TO FIELD - <RETURN> TO CHANGE', 0
    db 'FULL INSTALL', 0
    db 'CONFIG ONLY', 0
    db 'ABORT INSTALL', 0
    db 'FULL INSTALL', 0
    db 'CONFIG ONLY', 0
    db 'ABORT INSTALL', 0
    db '01110', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'SOURCE PATH NOT ALLOWED - Press <RETURN>', 0
    db '00001', 0
    db '                                 ', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'WARNING! DRIVE CONFLICT WITH SOURCE - Press <RETURN>', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'SOURCE AND DESTINATION DRIVE <MUST> DIFFER - Press <RETURN>', 0
    db 'Please specify a new SOURCE or DESTINATION Drive - Press <RETURN>', 0
    db '11 disks (5.25 @360k)', 0
    db '3 disks (5.25HD @1.2meg)', 0
    db '9 disks (3.5 @720k)', 0
    db '3 disks (3.5HD @1.44meg)', 0
    db 0x00
    db 'This Install requires ', 0
    db ' - Press <RETURN>', 0
    db 'Make sure you have NEWLY FORMATTED disks ready - Press <RETURN>', 0
    db 0x00, 0x00, 0x5c, 0x00, 0x5c, 0x00, 0x5c, 0x00, 0x5c, 0x00
    db 'CRUS01.ZIP', 0
    db 'CRUS01.ZIP', 0
    db 0x00
    db 'CRUS02.ZIP', 0
    db 0x00
    db 'CRUS04.ZIP', 0
    db 0x00
    db 'CRUS06.ZIP', 0
    db 0x00
    db 'CRUS03.ZIP', 0
    db 'CRUS03.ZIP', 0
    db 0x00
    db 'CRUS05.ZIP', 0
    db 0x00
    db 'CRUS07.ZIP', 0
    db 0x00
    db 'CRUS08.ZIP', 0
    db 0x00
    db 'CRUS07.ZIP', 0
    db 0x00
    db 'CRUS02.ZIP', 0
    db 'CRUS02.ZIP', 0
    db 0x00
    db 'CRUS04.ZIP', 0
    db 0x00
    db 'CRUS06.ZIP', 0
    db 0x00
    db 'CRUS03.ZIP', 0
    db 'CRUS03.ZIP', 0
    db 0x00
    db 'CRUS08.ZIP', 0
    db 0x00
    db 'CRUS05.ZIP', 0
    db 'CRUS05.ZIP', 0
    db 0x00
    db 'CRUS02.ZIP', 0
    db 0x00
    db 'CRUS06.ZIP', 0
    db 0x00
    db 'CRUS03.ZIP', 0
    db 'CRUS03.ZIP', 0
    db 0x00
    db 'CRUS04.ZIP', 0
    db 0x00
    db 'CRUS07.ZIP', 0
    db 0x00
    db 'CRUS08.ZIP', 0
    db 0x00
    db 'CRUS05.ZIP', 0
    db 'CRUS05.ZIP', 0
    db 0x00
    db 'SCENARIO.HDR', 0
    db 'UNABLE TO COMPLETE INSTALLATION - Press <RETURN>', 0
    db 'CRUSADERS OF THE DARK SAVANT INSTALLATION COMPLETE!', 0
    db 'To Play The Game, Type: WIZARDRY <cr>', 0
    db 0x00, 0x2e, 0x00, 0x2e, 0x00

__zdseg_230e:
    db 0x00, 0x00
__zdseg_2310:
    db 0x00, 0x00
__zdseg_2312:
    db 0x00, 0x00
__zdseg_2314:
    db 0x00, 0x00
__zdseg_2316:
    db 0x00, 0x00
__zdseg_2318:
    db 0x00, 0x00
__zdseg_231a:
    db 0x00, 0x00
__zdseg_231c:

    db 0x72
    times 4 db 0
    db 0x72, 0x2b, 0x00, 0x02, 0x00, 0x77, 0x00, 0x00, 0x01, 0x03, 0x77, 0x2b, 0x00, 0x02, 0x03, 0x61
    db 0x00, 0x00, 0x01, 0x09, 0x61, 0x2b, 0x00, 0x02, 0x09, 0x78, 0x00, 0x00, 0x01, 0x05, 0x78, 0x2b
    db 0x00, 0x02, 0x05
    times 6 db 0

__zdseg_234a:

    times 6 db 0
    db 0x01, 0x00, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x01, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x02, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x03, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x04, 0x00, 0x01
    times 198 db 0

__zdseg_244e:

    db 0x38, 0x25, 0x38, 0x25, 0x00
    db '         00000                  '
    db 0x90
    db '@@@@@@@@@@@@@@@'
    db 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c
    db '@@@@@@@'
    db 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
    db 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
    db '@@@@@@'
    db 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
    db 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
    db '@@@@ ', 0

__zdseg_24d4:
    dw bss_2afe                                ; 0x5fb4
__zdseg_24d6:
    db 0x00, 0x00
__zdseg_24d8:
    db 0x00, 0x00
__zdseg_24da:
    db 0x00, 0x00
__zdseg_24dc:
    db 0x00, 0x00
__zdseg_24de:
    db 0x00, 0x00
__zdseg_24e0:
    db 0x00, 0x00, 0xff, 0xff
__zdseg_24e4:

    db 0x00, 0x00
    db '8087/80287 is required!'
    db 0x0d, 0x0a, 0x24

__zdseg_2500:

    db 0x3b, 0x35, 0x00
    db 'Too many args.', 0

__zdseg_2512:
    db 0x00, 0x01
__zdseg_2514:
    db 0x00, 0x08
__zdseg_2516:
    db 0x00, 0x01
__zdseg_2518:
    db 0x00, 0x00
__zdseg_251a:
    db 0x00
__zdseg_251b:
    db 0x00
__zdseg_251c:

    times 18 db 0

__zdseg_252e:
    db 0xd9, 0x36
__zdseg_2530:
    db 0x3e, 0x37
__zdseg_2532:
    db 0x0a, 0x0d

__zimage_end:
