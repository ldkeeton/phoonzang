%include "structs/structs.inc"
%include "structs/loc_3738.inc"
org 0
bits 16
    ; DOS MZ executable header (512 bytes)
    db "MZ"        ; e_magic: DOS MZ signature
    dw 0x0014      ; e_cblp: bytes in final 512-byte page (0 means full)
    dw 0x0031      ; e_cp: total 512-byte pages in the file
    dw 0x0001      ; e_crlc: number of relocation entries
    dw 0x0020      ; e_cparhdr: header size in 16-byte paragraphs
    dw 0x045d      ; e_minalloc: minimum extra memory paragraphs
    dw 0xffff      ; e_maxalloc: maximum extra memory paragraphs
    dw 0x038e      ; e_ss: initial stack segment, relative to load module
    dw 0x6afe      ; e_sp: initial stack pointer
    dw 0x0000      ; e_csum: file checksum (often unused)
    dw 0x33d2      ; e_ip: initial instruction pointer
    dw 0x0000      ; e_cs: initial code segment, relative to load module
    dw 0x0020      ; e_lfarlc: file offset of relocation table
    dw 0x0000      ; e_ovno: overlay number (0 for main executable)

    times 4 db 0
    db 0xd3, 0x33
    times 478 db 0

data_0002 equ 0x0002
data_0004 equ 0x0004
data_0005 equ 0x0005
data_0006 equ 0x0006
data_002c equ 0x002c
data_002e equ 0x002e
data_0030 equ 0x0030
data_0080 equ 0x0080
data_060e equ 0x060e
data_0e18 equ 0x0e18
data_0e1c equ 0x0e1c
data_0e2d equ 0x0e2d
data_0e8f equ 0x0e8f
data_0ec8 equ 0x0ec8
data_0ee4 equ 0x0ee4
loc_1fcd equ 0x1fcd
data_2279 equ 0x2279
data_230e equ 0x230e
data_2310 equ 0x2310
data_2312 equ 0x2312
data_2314 equ 0x2314
data_2316 equ 0x2316
data_2318 equ 0x2318
data_231a equ 0x231a
data_244e equ 0x244e
data_24d4 equ 0x24d4
data_24d6 equ 0x24d6
data_24d8 equ 0x24d8
data_24da equ 0x24da
data_24dc equ 0x24dc
data_24de equ 0x24de
data_24e0 equ 0x24e0
data_24e4 equ 0x24e4
data_2512 equ 0x2512
data_2514 equ 0x2514
data_2516 equ 0x2516
data_2518 equ 0x2518
data_251a equ 0x251a
data_251b equ 0x251b
data_251c equ 0x251c
data_2530 equ 0x2530
data_2532 equ 0x2532
data_2534 equ 0x2534
data_2536 equ 0x2536
data_2538 equ 0x2538
data_253a equ 0x253a
data_253c equ 0x253c
data_2642 equ 0x2642
data_2644 equ 0x2644
data_2645 equ 0x2645
data_2646 equ 0x2646
data_2647 equ 0x2647
data_2698 equ 0x2698
data_2823 equ 0x2823
data_2825 equ 0x2825
data_29ba equ 0x29ba
data_29bb equ 0x29bb
data_29d0 equ 0x29d0
data_29d1 equ 0x29d1
data_29d2 equ 0x29d2
data_29d4 equ 0x29d4
data_29d5 equ 0x29d5
data_29d6 equ 0x29d6
data_29d7 equ 0x29d7
data_29d8 equ 0x29d8
data_29da equ 0x29da
data_29dc equ 0x29dc
data_29dd equ 0x29dd
data_29df equ 0x29df
data_29e1 equ 0x29e1
data_29e2 equ 0x29e2
data_29e3 equ 0x29e3
data_29e6 equ 0x29e6
data_29e8 equ 0x29e8
data_29ea equ 0x29ea
data_29ec equ 0x29ec
data_29ee equ 0x29ee
data_2af0 equ 0x2af0
data_2af2 equ 0x2af2
data_2af4 equ 0x2af4
data_2af6 equ 0x2af6
data_2af8 equ 0x2af8
data_2afa equ 0x2afa
data_2afc equ 0x2afc
data_33ce equ 0x33ce
data_3521 equ 0x3521
data_3523 equ 0x3523
loc_3738 equ 0x3738
data_380c equ 0x380c
leaf_loc_5fe5 equ 0x5fe5

%include "vinstall/leaf_loc_0200.asm"

loc_0261:
    jmp short loc_0268               ; 0x0261
loc_0263:
    mov ax, 0xffff                   ; 0x0263
    jmp short loc_025d               ; 0x0266
loc_0268:
    mov ax, 0                        ; 0x0268
    jmp short loc_025d               ; 0x026b
loc_026d:
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
    jmp short @..local.l2            ; 0x0283
@..local.l1:
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
@..local.l2:
    cmp di, word [bp - 0x0002]       ; 0x02a7
    jl short @..local.l1             ; 0x02aa
    pop si                           ; 0x02ac
    pop di                           ; 0x02ad
    mov sp, bp                       ; 0x02ae
    pop bp                           ; 0x02b0
    ret                              ; 0x02b1
%include "vinstall/aztec_raise.asm"


    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xfc, 0x57, 0x56, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0x89, 0x56
    db 0xfe, 0x89, 0x46, 0xfc, 0x83, 0xfa, 0x00, 0x7f, 0x07, 0x75, 0x07, 0x3d, 0x00, 0x00, 0x72, 0x02
    db 0xeb, 0x0d, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x89, 0x56, 0x06, 0x89, 0x46, 0x04, 0xbe
    db 0x00, 0x00, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0xb9, 0x0a, 0x00, 0xbb, 0x00, 0x00, 0xe8, 0xef
    db 0x30, 0x05, 0x30, 0x00, 0x83, 0xd2, 0x00, 0x8b, 0xfe, 0x46, 0x8b, 0x5e, 0x08, 0x88, 0x01, 0x8b
    db 0x46, 0x04, 0x8b, 0x56, 0x06, 0xb9, 0x0a, 0x00, 0xbb, 0x00, 0x00, 0xe8, 0xa4, 0x30, 0x89, 0x56
    db 0x06, 0x89, 0x46, 0x04, 0x83, 0xfa, 0x00, 0x7f, 0x07, 0x75, 0x07, 0x3d, 0x00, 0x00, 0x76, 0x02
    db 0xeb, 0xc0, 0x83, 0x7e, 0xfe, 0x00, 0x7f, 0x08, 0x75, 0x08, 0x83, 0x7e, 0xfc, 0x00, 0x72, 0x02
    db 0xeb, 0x09, 0x8b, 0xfe, 0x46, 0x8b, 0x5e, 0x08, 0xc6, 0x01, 0x2d, 0x8b, 0x5e, 0x08, 0xc6, 0x00
    db 0x00, 0xff, 0x76, 0x08, 0xe8, 0xc1, 0xfe, 0x59, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

loc_03b3:
    push bp                          ; 0x03b3
    mov bp, sp                       ; 0x03b4
    add sp, strict word 0xff00       ; 0x03b6
    push word [bp + 0x6]             ; 0x03ba
    push word [bp + 0x4]             ; 0x03bd
    call bios_video_loc_2551         ; 0x03c0
    add sp, byte 4                   ; 0x03c3
    lea ax, word [bp - 0x00ff]       ; 0x03c6
    push ax                          ; 0x03ca
    push word [bp + 0x8]             ; 0x03cb
    call aztec_raise                 ; 0x03ce
    add sp, byte 4                   ; 0x03d1
    lea ax, word [bp - 0x00ff]       ; 0x03d4
    push ax                          ; 0x03d8
    call bios_video_loc_2621         ; 0x03d9
    pop cx                           ; 0x03dc
    mov sp, bp                       ; 0x03dd
    pop bp                           ; 0x03df
    ret                              ; 0x03e0
loc_03e1:
    push bp                          ; 0x03e1
    mov bp, sp                       ; 0x03e2
    add sp, strict word 0xff00       ; 0x03e4
    push word [bp + 0x6]             ; 0x03e8
    push word [bp + 0x4]             ; 0x03eb
    call bios_video_loc_2551         ; 0x03ee
    add sp, byte 4                   ; 0x03f1
    lea ax, word [bp - 0x00ff]       ; 0x03f4
    push ax                          ; 0x03f8
    push word [bp + 0x8]             ; 0x03f9
    call aztec_raise                 ; 0x03fc
    add sp, byte 4                   ; 0x03ff
    lea ax, word [bp - 0x00ff]       ; 0x0402
    push ax                          ; 0x0406
    call bios_video_loc_25d3         ; 0x0407
    pop cx                           ; 0x040a
    mov sp, bp                       ; 0x040b
    pop bp                           ; 0x040d
    ret                              ; 0x040e
loc_040f:
    push bp                          ; 0x040f
    mov bp, sp                       ; 0x0410
    push word [bp + 0x6]             ; 0x0412
    push word [bp + 0x4]             ; 0x0415
    call bios_video_loc_2551         ; 0x0418
    add sp, byte 4                   ; 0x041b
    push word [bp + 0x8]             ; 0x041e
    call bios_video_loc_2621         ; 0x0421
    pop cx                           ; 0x0424
    mov sp, bp                       ; 0x0425
    pop bp                           ; 0x0427
    ret                              ; 0x0428
loc_0429:
    push bp                          ; 0x0429
    mov bp, sp                       ; 0x042a
    push word [bp + 0x6]             ; 0x042c
    push word [bp + 0x4]             ; 0x042f
    call bios_video_loc_2551         ; 0x0432
    add sp, byte 4                   ; 0x0435
    push word [bp + 0x8]             ; 0x0438
    call bios_video_loc_25d3         ; 0x043b
    pop cx                           ; 0x043e
    mov sp, bp                       ; 0x043f
    pop bp                           ; 0x0441
    ret                              ; 0x0442
loc_0443:
    call bios_video_loc_252e         ; 0x0443
    mov ax, 0                        ; 0x0446
    push ax                          ; 0x0449
    push ax                          ; 0x044a
    call bios_video_loc_2551         ; 0x044b
    add sp, byte 4                   ; 0x044e
    ret                              ; 0x0451
loc_0452:
    push bp                          ; 0x0452
    mov bp, sp                       ; 0x0453
    add sp, byte 0xfe                ; 0x0455
    call bios_video_loc_2720         ; 0x0458
    mov word [bp - 0x0002], ax       ; 0x045b
    mov ax, 7                        ; 0x045e
    push ax                          ; 0x0461
    mov ax, 0x1444                   ; 0x0462
    push ax                          ; 0x0465
    call loc_2c62                    ; 0x0466
    add sp, byte 4                   ; 0x0469
    push word [bp - 0x0002]          ; 0x046c
    call bios_video_loc_2733         ; 0x046f
    pop cx                           ; 0x0472
    mov sp, bp                       ; 0x0473
    pop bp                           ; 0x0475
    ret                              ; 0x0476

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xf6, 0xc6, 0x46, 0xfe, 0x00, 0xc6, 0x46, 0xff, 0x00, 0xff, 0x76
    db 0x06, 0xff, 0x76, 0x04, 0xe8, 0xc3, 0x20, 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xf8, 0x00, 0x00, 0xc7
    db 0x46, 0xf6, 0x00, 0x00, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0xe8, 0x7e, 0x20, 0x89, 0x46, 0xfc, 0x3d
    db 0x0d, 0x00, 0x75, 0x03, 0xe9, 0xc2, 0x00, 0x3d, 0x08, 0x00, 0x75, 0x4b, 0x83, 0x7e, 0xf6, 0x00
    db 0x7e, 0x3f, 0xff, 0x4e, 0xf6, 0x75, 0x05, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0x8b, 0x46, 0xf8, 0xb9
    db 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xf8, 0xff, 0x4e, 0x06, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0x76, 0x20, 0x83, 0xc4, 0x04, 0xc6, 0x46, 0xfe, 0x20, 0x8d, 0x46, 0xfe, 0x50, 0xe8
    db 0x38, 0x21, 0x59, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5e, 0x20, 0x83, 0xc4, 0x04, 0xeb
    db 0x03, 0xe8, 0x57, 0xff, 0xe9, 0x6f, 0x00, 0x8b, 0x46, 0xf6, 0x3b, 0x46, 0x08, 0x7c, 0x05, 0xe8
    db 0x49, 0xff, 0xeb, 0x62, 0x83, 0x7e, 0xf6, 0x00, 0x75, 0x21, 0x83, 0x7e, 0xfc, 0x2d, 0x75, 0x1b
    db 0xff, 0x46, 0xf6, 0xc7, 0x46, 0xfa, 0x01, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x46, 0xfe, 0x8d, 0x46
    db 0xfe, 0x50, 0xe8, 0xf5, 0x20, 0x59, 0xff, 0x46, 0x06, 0xeb, 0x3b, 0x83, 0x7e, 0xfc, 0x30, 0x7c
    db 0x32, 0x83, 0x7e, 0xfc, 0x39, 0x7f, 0x2c, 0xff, 0x46, 0xf6, 0x8b, 0x46, 0xf8, 0x8b, 0xd0, 0xd1
    db 0xe0, 0xd1, 0xe0, 0x03, 0xc2, 0xd1, 0xe0, 0x03, 0x46, 0xfc, 0x05, 0xd0, 0xff, 0x89, 0x46, 0xf8
    db 0x8a, 0x46, 0xfc, 0x88, 0x46, 0xfe, 0x8d, 0x46, 0xfe, 0x50, 0xe8, 0xbd, 0x20, 0x59, 0xff, 0x46
    db 0x06, 0xeb, 0x03, 0xe8, 0xe5, 0xfe, 0xe9, 0x30, 0xff, 0x83, 0x7e, 0xfa, 0x01, 0x75, 0x09, 0x8b
    db 0x46, 0xf8, 0xf7, 0xd8, 0x8b, 0xe5, 0x5d, 0xc3, 0x8b, 0x46, 0xf8, 0xeb, 0xf7

loc_0584:
    push bp                          ; 0x0584
    mov bp, sp                       ; 0x0585
    add sp, byte 0xfc                ; 0x0587
    call bios_video_loc_2720         ; 0x058a
    mov word [bp - 0x0004], ax       ; 0x058d
    mov ax, 0x20                     ; 0x0590
    cmp word [bp + 0x4], byte 1      ; 0x0593
    jne short @..local.l3            ; 0x0597
    mov ax, 0x11                     ; 0x0599
@..local.l3:
    mov byte [bp - 0x0002], al       ; 0x059c
    mov byte [bp - 0x0001], 0        ; 0x059f
    lea ax, word [bp - 0x0002]       ; 0x05a3
    push ax                          ; 0x05a6
    call bios_video_loc_2621         ; 0x05a7
    pop cx                           ; 0x05aa
    push word [bp - 0x0004]          ; 0x05ab
    call bios_video_loc_2733         ; 0x05ae
    pop cx                           ; 0x05b1
    mov sp, bp                       ; 0x05b2
    pop bp                           ; 0x05b4
    ret                              ; 0x05b5
loc_05b6:
    push bp                          ; 0x05b6
    mov bp, sp                       ; 0x05b7
    add sp, byte 0xf6                ; 0x05b9
    push si                          ; 0x05bc
    mov byte [bp - 0x0002], 0        ; 0x05bd
    mov byte [bp - 0x0001], 0        ; 0x05c1
    push word [bp + 0x8]             ; 0x05c5
    call aztec_strlen                ; 0x05c8
    pop cx                           ; 0x05cb
    mov word [bp - 0x0006], ax       ; 0x05cc
    add word [bp + 0x6], ax          ; 0x05cf
    push word [bp + 0x6]             ; 0x05d2
    push word [bp + 0x4]             ; 0x05d5
    call bios_video_loc_2551         ; 0x05d8
    add sp, byte 4                   ; 0x05db
    mov ax, 1                        ; 0x05de
    push ax                          ; 0x05e1
    call loc_0584                    ; 0x05e2
    pop cx                           ; 0x05e5
@..local.l4:
    call dos_con_in_noecho           ; 0x05e6
    push ax                          ; 0x05e9
    call loc_06a6                    ; 0x05ea
    pop cx                           ; 0x05ed
    mov word [bp - 0x0004], ax       ; 0x05ee
    cmp ax, strict word 0xd          ; 0x05f1
    jne short @..local.l5            ; 0x05f4
    jmp near @..local.l12            ; 0x05f6
@..local.l5:
    mov ax, 0                        ; 0x05f9
    push ax                          ; 0x05fc
    call loc_0584                    ; 0x05fd
    pop cx                           ; 0x0600
    cmp word [bp - 0x0004], byte 8   ; 0x0601
    je short @..local.l6             ; 0x0605
    cmp word [bp - 0x0004], byte 8   ; 0x0607
    jne short @..local.l9            ; 0x060b
@..local.l6:
    cmp word [bp - 0x0006], byte 0   ; 0x060d
    jle short @..local.l7            ; 0x0611
    dec word [bp - 0x0006]           ; 0x0613
    mov bx, word [bp + 0x8]          ; 0x0616
    mov si, word [bp - 0x0006]       ; 0x0619
    mov byte [bx + si], 0            ; 0x061c
    dec word [bp + 0x6]              ; 0x061f
    push word [bp + 0x6]             ; 0x0622
    push word [bp + 0x4]             ; 0x0625
    call bios_video_loc_2551         ; 0x0628
    add sp, byte 4                   ; 0x062b
    mov byte [bp - 0x0002], 0x20     ; 0x062e
    lea ax, word [bp - 0x0002]       ; 0x0632
    push ax                          ; 0x0635
    call bios_video_loc_2621         ; 0x0636
    pop cx                           ; 0x0639
    push word [bp + 0x6]             ; 0x063a
    push word [bp + 0x4]             ; 0x063d
    call bios_video_loc_2551         ; 0x0640
    add sp, byte 4                   ; 0x0643
    jmp short @..local.l8            ; 0x0646
@..local.l7:
    call loc_0452                    ; 0x0648
@..local.l8:
    jmp short @..local.l11           ; 0x064b
@..local.l9:
    mov ax, word [bp - 0x0006]       ; 0x064d
    cmp ax, word [bp + 0xa]          ; 0x0650
    jl short @..local.l10            ; 0x0653
    call loc_0452                    ; 0x0655
    jmp short @..local.l11           ; 0x0658
@..local.l10:
    cmp word [bp - 0x0004], byte 0x20 ; 0x065a
    jl short @..local.l11            ; 0x065e
    cmp word [bp - 0x0004], byte 0x7f ; 0x0660
    jg short @..local.l11            ; 0x0664
    mov al, byte [bp - 0x0004]       ; 0x0666
    mov bx, word [bp + 0x8]          ; 0x0669
    mov si, word [bp - 0x0006]       ; 0x066c
    mov byte [bx + si], al           ; 0x066f
    inc word [bp - 0x0006]           ; 0x0671
    mov bx, word [bp + 0x8]          ; 0x0674
    mov si, word [bp - 0x0006]       ; 0x0677
    mov byte [bx + si], 0            ; 0x067a
    mov al, byte [bp - 0x0004]       ; 0x067d
    mov byte [bp - 0x0002], al       ; 0x0680
    lea ax, word [bp - 0x0002]       ; 0x0683
    push ax                          ; 0x0686
    call bios_video_loc_2621         ; 0x0687
    pop cx                           ; 0x068a
    inc word [bp + 0x6]              ; 0x068b
@..local.l11:
    mov ax, 1                        ; 0x068e
    push ax                          ; 0x0691
    call loc_0584                    ; 0x0692
    pop cx                           ; 0x0695
    jmp near @..local.l4             ; 0x0696
@..local.l12:
    mov ax, 0                        ; 0x0699
    push ax                          ; 0x069c
    call loc_0584                    ; 0x069d
    pop cx                           ; 0x06a0
    pop si                           ; 0x06a1
    mov sp, bp                       ; 0x06a2
    pop bp                           ; 0x06a4
    ret                              ; 0x06a5
loc_06a6:
    push bp                          ; 0x06a6
    mov bp, sp                       ; 0x06a7
    add sp, byte 0xfe                ; 0x06a9
    cmp word [bp + 0x4], byte 0      ; 0x06ac
    jne short @..local.l19           ; 0x06b0
    call dos_con_in_noecho           ; 0x06b2
    mov word [bp - 0x0002], ax       ; 0x06b5
    jmp short @..local.l18           ; 0x06b8
@..local.l13:
    mov ax, 8                        ; 0x06ba
@..local.l14:
    mov sp, bp                       ; 0x06bd
    pop bp                           ; 0x06bf
    ret                              ; 0x06c0
@..local.l15:
    mov ax, 9                        ; 0x06c1
    jmp short @..local.l14           ; 0x06c4
@..local.l16:
    mov ax, 0xa                      ; 0x06c6
    jmp short @..local.l14           ; 0x06c9
@..local.l17:
    mov ax, 0xb                      ; 0x06cb
    jmp short @..local.l14           ; 0x06ce
@..local.l18:
    cmp ax, strict word 0x48         ; 0x06d0
    je short @..local.l15            ; 0x06d3
    cmp ax, strict word 0x4b         ; 0x06d5
    je short @..local.l13            ; 0x06d8
    cmp ax, strict word 0x4d         ; 0x06da
    je short @..local.l16            ; 0x06dd
    cmp ax, strict word 0x50         ; 0x06df
    je short @..local.l17            ; 0x06e2
    jmp short @..local.l20           ; 0x06e4
@..local.l19:
    push word [bp + 0x4]             ; 0x06e6
    call aztec_toupper               ; 0x06e9
    pop cx                           ; 0x06ec
    jmp short @..local.l14           ; 0x06ed
@..local.l20:
    jmp short @..local.l14           ; 0x06ef
loc_06f1:
    push bp                          ; 0x06f1
    mov bp, sp                       ; 0x06f2
    add sp, byte 0xf0                ; 0x06f4
    mov ax, word [bp + 0x4]          ; 0x06f7
    mov word [bp - 0x0010], ax       ; 0x06fa
    lea ax, word [bp - 0x0010]       ; 0x06fd
    push ax                          ; 0x0700
    push ax                          ; 0x0701
    mov ax, 0x10                     ; 0x0702
    push ax                          ; 0x0705
    call aztec_sysint                ; 0x0706
    add sp, byte 6                   ; 0x0709
    mov sp, bp                       ; 0x070c
    pop bp                           ; 0x070e
    ret                              ; 0x070f

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0xfc, 0xfe, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x90, 0xfb, 0x83, 0xc4, 0x04, 0xc6, 0x86, 0xff, 0xfe, 0x00, 0xc6, 0x86, 0x00, 0xff, 0x00, 0x8d
    db 0x86, 0x01, 0xff, 0x50, 0xe8
    db '8.Y+F'
    db 0x06, 0x7d, 0x0d, 0xb8, 0x47, 0x14, 0x50, 0xe8, 0xdd, 0x1e, 0x59, 0xff, 0x4e, 0x06, 0xeb, 0xe5
    db 0x8d, 0x86, 0x01, 0xff, 0x50, 0xe8, 0x1d, 0x2e, 0x59, 0x2b, 0x46, 0x06, 0x89, 0x86, 0xfd, 0xfe
    db 0xeb, 0x1b, 0x8b, 0x9e, 0xfd, 0xfe, 0x03, 0xdd, 0x8a, 0x87, 0x01, 0xff, 0x88, 0x86, 0xff, 0xfe
    db 0x8d, 0x86, 0xff, 0xfe, 0x50, 0xe8, 0xaf, 0x1e, 0x59, 0xff, 0x86, 0xfd, 0xfe, 0x8d, 0x86, 0x01
    db 0xff, 0x50, 0xe8, 0xf0, 0x2d, 0x59, 0x3b, 0x86, 0xfd, 0xfe, 0x7f, 0xd6, 0x8b, 0xe5, 0x5d, 0xc3
    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0xfc, 0xfe, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xff, 0x76, 0x06, 0xff
    db 0x76, 0x04, 0xe8, 0x76, 0xfb, 0x83, 0xc4, 0x06, 0xc6, 0x86, 0xff, 0xfe, 0x00, 0xc6, 0x86, 0x00
    db 0xff, 0x00, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xe8, 0xbb, 0x2d, 0x59, 0x2b, 0x46, 0x08, 0x7d, 0x0d
    db 0xb8, 0x49, 0x14, 0x50, 0xe8, 0x60, 0x1e, 0x59, 0xff, 0x4e, 0x08, 0xeb, 0xe5, 0x8d, 0x86, 0x01
    db 0xff, 0x50, 0xe8, 0xa0, 0x2d, 0x59, 0x2b, 0x46, 0x08, 0x89, 0x86, 0xfd, 0xfe, 0xeb, 0x1b, 0x8b
    db 0x9e, 0xfd, 0xfe, 0x03, 0xdd, 0x8a, 0x87, 0x01, 0xff, 0x88, 0x86, 0xff, 0xfe, 0x8d, 0x86, 0xff
    db 0xfe, 0x50, 0xe8, 0x32, 0x1e, 0x59, 0xff, 0x86, 0xfd, 0xfe, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xe8
    db 0x73, 0x2d, 0x59, 0x3b, 0x86, 0xfd, 0xfe, 0x7f, 0xd6, 0x8b, 0xe5, 0x5d, 0xc3

loc_0807:
    push bp                          ; 0x0807
    mov bp, sp                       ; 0x0808
    push word [bp + 0x4]             ; 0x080a
    call aztec_atoi                  ; 0x080d
    pop cx                           ; 0x0810
    mov sp, bp                       ; 0x0811
    pop bp                           ; 0x0813
    ret                              ; 0x0814
loc_0815:
    push bp                          ; 0x0815
    mov bp, sp                       ; 0x0816
    push word [bp + 0x4]             ; 0x0818
    call aztec_atol                  ; 0x081b
    pop cx                           ; 0x081e
    mov sp, bp                       ; 0x081f
    pop bp                           ; 0x0821
    ret                              ; 0x0822
loc_0823:
    push bp                          ; 0x0823
    mov bp, sp                       ; 0x0824
    add sp, strict word 0xfefe       ; 0x0826
    mov ax, word [bp + 0x4]          ; 0x082a
    mov word [bp - 0x0002], ax       ; 0x082d
@..local.l21:
    push word [bp + 0x8]             ; 0x0830
    push word [bp + 0x6]             ; 0x0833
    call bios_video_loc_2551         ; 0x0836
    add sp, byte 4                   ; 0x0839
    lea ax, word [bp - 0x0101]       ; 0x083c
    push ax                          ; 0x0840
    push word [bp - 0x0002]          ; 0x0841
    call aztec_raise                 ; 0x0844
    add sp, byte 4                   ; 0x0847
    lea ax, word [bp - 0x0101]       ; 0x084a
    push ax                          ; 0x084e
    call bios_video_loc_25d3         ; 0x084f
    pop cx                           ; 0x0852
    mov ax, 0x144b                   ; 0x0853
    push ax                          ; 0x0856
    call bios_video_loc_2621         ; 0x0857
    pop cx                           ; 0x085a
    push word [bp + 0xa]             ; 0x085b
    lea ax, word [bp - 0x0101]       ; 0x085e
    push ax                          ; 0x0862
    push word [bp + 0x8]             ; 0x0863
    push word [bp + 0x6]             ; 0x0866
    call loc_05b6                    ; 0x0869
    add sp, byte 8                   ; 0x086c
    lea ax, word [bp - 0x0101]       ; 0x086f
    push ax                          ; 0x0873
    call loc_0807                    ; 0x0874
    pop cx                           ; 0x0877
    mov word [bp - 0x0002], ax       ; 0x0878
    mov ax, word [bp - 0x0002]       ; 0x087b
    cmp ax, word [bp + 0xe]          ; 0x087e
    jl short @..local.l21            ; 0x0881
    cmp ax, word [bp + 0xc]          ; 0x0883
    jg short @..local.l21            ; 0x0886
    mov ax, word [bp - 0x0002]       ; 0x0888
    mov sp, bp                       ; 0x088b
    pop bp                           ; 0x088d
    ret                              ; 0x088e

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0xfc, 0xfe, 0xc6, 0x86, 0xfd, 0xfe, 0x00, 0xff, 0x76, 0x0a, 0xff
    db 0x76, 0x08, 0xe8, 0xad, 0x1c, 0x83, 0xc4, 0x04, 0xff, 0x76, 0x0c, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0xd7, 0xfe, 0x83, 0xc4, 0x06, 0xff, 0x76, 0x0c, 0x8d, 0x86, 0xfd, 0xfe, 0x50, 0xff
    db 0x76, 0x0a, 0xff, 0x76, 0x08, 0xe8, 0xef, 0xfc, 0x83, 0xc4, 0x08, 0x80, 0xbe, 0xfd, 0xfe, 0x00
    db 0x75, 0x0e, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0x89, 0x56, 0xfe, 0x89, 0x46, 0xfc, 0xeb, 0x0f
    db 0x8d, 0x86, 0xfd, 0xfe, 0x50, 0xe8, 0x2e, 0xff, 0x59, 0x89, 0x56, 0xfe, 0x89, 0x46, 0xfc, 0x8b
    db 0x46, 0xfc, 0x8b, 0x56, 0xfe, 0x3b, 0x56, 0x10, 0x7f, 0x07, 0x75, 0x07, 0x3b, 0x46, 0x0e, 0x76
    db 0x02, 0xeb, 0x99, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x08, 0xe8, 0x46, 0x1c, 0x83, 0xc4, 0x04, 0xff
    db 0x76, 0x0c, 0xff, 0x76, 0xfe, 0xff, 0x76, 0xfc, 0xe8, 0x70, 0xfe, 0x83, 0xc4, 0x06, 0x8b, 0x46
    db 0xfc, 0x8b, 0x56, 0xfe, 0x8b, 0xe5, 0x5d, 0xc3

loc_0927:
    mov byte [data_2644], 0x1f       ; 0x0927
    mov byte [data_2645], data_002e  ; 0x092c
    mov byte [data_2645], 0x70       ; 0x0931
    mov byte [data_2646], 0x4e       ; 0x0936
    mov byte [data_2647], 0x1f       ; 0x093b
    call loc_0443                    ; 0x0940
    ret                              ; 0x0943
%include "vinstall/aztec_vfprintf.asm"

%include "vinstall/math_loc_0992.asm"

%include "vinstall/aztec_scan.asm"

loc_0c21:
    push bp                          ; 0x0c21
    mov bp, sp                       ; 0x0c22
    mov ax, word [bp + 0x4]          ; 0x0c24
    mov cx, data_0004                ; 0x0c27
    cwd                              ; 0x0c2a
    idiv cx                          ; 0x0c2b
    mov ax, dx                       ; 0x0c2d
    inc ax                           ; 0x0c2f
    mov word [bp + 0x4], ax          ; 0x0c30
    cmp ax, strict word 1            ; 0x0c33
    jne short @..local.l22           ; 0x0c36
    cmp word [data_29e6], byte 0     ; 0x0c38
    jne short @..local.l22           ; 0x0c3d
    inc word [bp + 0x4]              ; 0x0c3f
@..local.l22:
    cmp word [bp + 0x4], byte 2      ; 0x0c42
    jne short @..local.l23           ; 0x0c46
    cmp word [data_29e8], byte 0     ; 0x0c48
    jne short @..local.l23           ; 0x0c4d
    inc word [bp + 0x4]              ; 0x0c4f
@..local.l23:
    cmp word [bp + 0x4], byte 3      ; 0x0c52
    jne short @..local.l24           ; 0x0c56
    cmp word [data_29ea], byte 0     ; 0x0c58
    jne short @..local.l24           ; 0x0c5d
    inc word [bp + 0x4]              ; 0x0c5f
@..local.l24:
    cmp word [bp + 0x4], byte 4      ; 0x0c62
    jne short @..local.l25           ; 0x0c66
    cmp word [data_29ec], byte 0     ; 0x0c68
    jne short @..local.l25           ; 0x0c6d
    mov word [bp + 0x4], 1           ; 0x0c6f
@..local.l25:
    cmp word [bp + 0x4], byte 1      ; 0x0c74
    jne short @..local.l26           ; 0x0c78
    cmp word [data_29e6], byte 0     ; 0x0c7a
    jne short @..local.l26           ; 0x0c7f
    inc word [bp + 0x4]              ; 0x0c81
@..local.l26:
    cmp word [bp + 0x4], byte 2      ; 0x0c84
    jne short @..local.l27           ; 0x0c88
    cmp word [data_29e8], byte 0     ; 0x0c8a
    jne short @..local.l27           ; 0x0c8f
    inc word [bp + 0x4]              ; 0x0c91
@..local.l27:
    cmp word [bp + 0x4], byte 3      ; 0x0c94
    jne short @..local.l28           ; 0x0c98
    cmp word [data_29ea], byte 0     ; 0x0c9a
    jne short @..local.l28           ; 0x0c9f
    inc word [bp + 0x4]              ; 0x0ca1
@..local.l28:
    cmp word [bp + 0x4], byte 4      ; 0x0ca4
    jne short @..local.l29           ; 0x0ca8
    cmp word [data_29ec], byte 0     ; 0x0caa
    jne short @..local.l29           ; 0x0caf
    mov word [bp + 0x4], 0           ; 0x0cb1
@..local.l29:
    mov ax, word [bp + 0x4]          ; 0x0cb6
    shl ax, 1                        ; 0x0cb9
    mov bx, ax                       ; 0x0cbb
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10                     ; 0x0cc1
    push ax                          ; 0x0cc4
    mov ax, 0xd                      ; 0x0cc5
    push ax                          ; 0x0cc8
    call loc_040f                    ; 0x0cc9
    add sp, byte 6                   ; 0x0ccc
    mov ax, word [bp + 0x4]          ; 0x0ccf
    mov sp, bp                       ; 0x0cd2
    pop bp                           ; 0x0cd4
    ret                              ; 0x0cd5
loc_0cd6:
    push bp                          ; 0x0cd6
    mov bp, sp                       ; 0x0cd7
    push si                          ; 0x0cd9
@..local.l30:
    mov ax, word [bp + 0x6]          ; 0x0cda
    inc ax                           ; 0x0cdd
    mov cx, data_0005                ; 0x0cde
    cwd                              ; 0x0ce1
    idiv cx                          ; 0x0ce2
    mov word [bp + 0x6], dx          ; 0x0ce4
    mov bx, word [bp + 0x8]          ; 0x0ce7
    mov si, word [bp + 0x6]          ; 0x0cea
    cmp byte [bx + si], data_0030    ; 0x0ced
    je short @..local.l30            ; 0x0cf0
    mov ax, word [bp + 0x6]          ; 0x0cf2
    shl ax, 1                        ; 0x0cf5
    mov bx, ax                       ; 0x0cf7
    push word [bx + 0x160]           ; 0x0cf9
    mov ax, 0x16                     ; 0x0cfd
    push ax                          ; 0x0d00
    push word [bp + 0x4]             ; 0x0d01
    call loc_040f                    ; 0x0d04
    add sp, byte 6                   ; 0x0d07
    mov ax, word [bp + 0x6]          ; 0x0d0a
    pop si                           ; 0x0d0d
    mov sp, bp                       ; 0x0d0e
    pop bp                           ; 0x0d10
    ret                              ; 0x0d11
loc_0d12:
    push bp                          ; 0x0d12
    mov bp, sp                       ; 0x0d13
    mov ax, word [bp + 0x4]          ; 0x0d15
    inc ax                           ; 0x0d18
    mov cx, 8                        ; 0x0d19
    cwd                              ; 0x0d1c
    idiv cx                          ; 0x0d1d
    mov word [bp + 0x4], dx          ; 0x0d1f
    shl dx, 1                        ; 0x0d22
    mov bx, dx                       ; 0x0d24
    push word [bx + 0xa4]            ; 0x0d26
    mov ax, 0x29                     ; 0x0d2a
    push ax                          ; 0x0d2d
    mov ax, 0x12                     ; 0x0d2e
    push ax                          ; 0x0d31
    call loc_040f                    ; 0x0d32
    add sp, byte 6                   ; 0x0d35
    mov ax, word [bp + 0x4]          ; 0x0d38
    mov sp, bp                       ; 0x0d3b
    pop bp                           ; 0x0d3d
    ret                              ; 0x0d3e
loc_0d3f:
    push bp                          ; 0x0d3f
    mov bp, sp                       ; 0x0d40
    mov ax, word [bp + 0x8]          ; 0x0d42
    inc ax                           ; 0x0d45
    mov cx, data_0002                ; 0x0d46
    cwd                              ; 0x0d49
    idiv cx                          ; 0x0d4a
    mov word [bp + 0x8], dx          ; 0x0d4c
    shl dx, 1                        ; 0x0d4f
    mov bx, dx                       ; 0x0d51
    push word [bx + 0x154]           ; 0x0d53
    push word [bp + 0x6]             ; 0x0d57
    push word [bp + 0x4]             ; 0x0d5a
    call loc_040f                    ; 0x0d5d
    add sp, byte 6                   ; 0x0d60
    mov ax, word [bp + 0x8]          ; 0x0d63
    mov sp, bp                       ; 0x0d66
    pop bp                           ; 0x0d68
    ret                              ; 0x0d69
loc_0d6a:
    push bp                          ; 0x0d6a
    mov bp, sp                       ; 0x0d6b
    add sp, byte 0xae                ; 0x0d6d
    push word [bp + 0x4]             ; 0x0d70
    call aztec_strlen                ; 0x0d73
    pop cx                           ; 0x0d76
    cmp ax, strict word 0x4c         ; 0x0d77
    jle short @..local.l31           ; 0x0d7a
    mov ax, 0x4c                     ; 0x0d7c
    jmp short @..local.l32           ; 0x0d7f
@..local.l31:
    push word [bp + 0x4]             ; 0x0d81
    call aztec_strlen                ; 0x0d84
    pop cx                           ; 0x0d87
@..local.l32:
    mov word [bp - 0x0002], ax       ; 0x0d88
    push ax                          ; 0x0d8b
    push word [bp + 0x4]             ; 0x0d8c
    lea ax, word [bp - 0x0052]       ; 0x0d8f
    push ax                          ; 0x0d92
    call aztec_strncpy               ; 0x0d93
    add sp, byte 6                   ; 0x0d96
    mov bx, word [bp - 0x0002]       ; 0x0d99
    add bx, bp                       ; 0x0d9c
    mov byte [bx - 0x0052], 0        ; 0x0d9e
    mov ax, 0x156d                   ; 0x0da2
    push ax                          ; 0x0da5
    mov ax, 0                        ; 0x0da6
    push ax                          ; 0x0da9
    mov ax, 0x16                     ; 0x0daa
    push ax                          ; 0x0dad
    call loc_040f                    ; 0x0dae
    add sp, byte 6                   ; 0x0db1
    lea ax, word [bp - 0x0052]       ; 0x0db4
    push ax                          ; 0x0db7
    push ax                          ; 0x0db8
    call aztec_strlen                ; 0x0db9
    pop cx                           ; 0x0dbc
    inc ax                           ; 0x0dbd
    mov cx, data_0002                ; 0x0dbe
    cwd                              ; 0x0dc1
    idiv cx                          ; 0x0dc2
    mov cx, ax                       ; 0x0dc4
    mov ax, 0x28                     ; 0x0dc6
    sub ax, cx                       ; 0x0dc9
    push ax                          ; 0x0dcb
    mov ax, 0x16                     ; 0x0dcc
    push ax                          ; 0x0dcf
    call loc_040f                    ; 0x0dd0
    add sp, byte 6                   ; 0x0dd3
    mov sp, bp                       ; 0x0dd6
    pop bp                           ; 0x0dd8
    ret                              ; 0x0dd9
loc_0dda:
    push bp                          ; 0x0dda
    mov bp, sp                       ; 0x0ddb
    add sp, strict word 0xff5c       ; 0x0ddd
    mov ax, 0x15bd                   ; 0x0de1
    push ax                          ; 0x0de4
    lea ax, word [bp - 0x00a2]       ; 0x0de5
    push ax                          ; 0x0de9
    call aztec_strcpy                ; 0x0dea
    add sp, byte 4                   ; 0x0ded
    cmp word [bp + 0x8], byte 0      ; 0x0df0
    jge short @..local.l33           ; 0x0df4
    mov ax, 0x15cc                   ; 0x0df6
    push ax                          ; 0x0df9
    lea ax, word [bp - 0x00a2]       ; 0x0dfa
    push ax                          ; 0x0dfe
    call string_loc_2aa6             ; 0x0dff
    add sp, byte 4                   ; 0x0e02
    mov ax, 0                        ; 0x0e05
    sub ax, word [bp + 0x8]          ; 0x0e08
    mov word [bp + 0x8], ax          ; 0x0e0b
    jmp short @..local.l34           ; 0x0e0e
@..local.l33:
    mov ax, 0x15d8                   ; 0x0e10
    push ax                          ; 0x0e13
    lea ax, word [bp - 0x00a2]       ; 0x0e14
    push ax                          ; 0x0e18
    call string_loc_2aa6             ; 0x0e19
    add sp, byte 4                   ; 0x0e1c
    call loc_0452                    ; 0x0e1f
@..local.l34:
    mov ax, 0x15e1                   ; 0x0e22
    push ax                          ; 0x0e25
    lea ax, word [bp - 0x00a2]       ; 0x0e26
    push ax                          ; 0x0e2a
    call string_loc_2aa6             ; 0x0e2b
    add sp, byte 4                   ; 0x0e2e
    mov ax, word [bp + 0x8]          ; 0x0e31
    add ax, strict word 0x40         ; 0x0e34
    mov byte [bp - 0x0002], al       ; 0x0e37
    mov byte [bp - 0x0001], 0        ; 0x0e3a
    lea ax, word [bp - 0x0002]       ; 0x0e3e
    push ax                          ; 0x0e41
    lea ax, word [bp - 0x00a2]       ; 0x0e42
    push ax                          ; 0x0e46
    call string_loc_2aa6             ; 0x0e47
    add sp, byte 4                   ; 0x0e4a
    mov ax, 0x15e9                   ; 0x0e4d
    push ax                          ; 0x0e50
    lea ax, word [bp - 0x00a2]       ; 0x0e51
    push ax                          ; 0x0e55
    call string_loc_2aa6             ; 0x0e56
    add sp, byte 4                   ; 0x0e59
    push word [bp + 0x4]             ; 0x0e5c
    lea ax, word [bp - 0x00a2]       ; 0x0e5f
    push ax                          ; 0x0e63
    call string_loc_2aa6             ; 0x0e64
    add sp, byte 4                   ; 0x0e67
    mov ax, 0x15f7                   ; 0x0e6a
    push ax                          ; 0x0e6d
    lea ax, word [bp - 0x00a2]       ; 0x0e6e
    push ax                          ; 0x0e72
    call string_loc_2aa6             ; 0x0e73
    add sp, byte 4                   ; 0x0e76
    push word [bp + 0xa]             ; 0x0e79
    call aztec_strlen                ; 0x0e7c
    pop cx                           ; 0x0e7f
    cmp ax, strict word 0            ; 0x0e80
    jle short @..local.l36           ; 0x0e83
    push word [bp + 0x6]             ; 0x0e85
    lea ax, word [bp - 0x0052]       ; 0x0e88
    push ax                          ; 0x0e8b
    call aztec_strcpy                ; 0x0e8c
    add sp, byte 4                   ; 0x0e8f
    push word [bp + 0xa]             ; 0x0e92
    lea ax, word [bp - 0x0052]       ; 0x0e95
    push ax                          ; 0x0e98
    call string_loc_2aa6             ; 0x0e99
    add sp, byte 4                   ; 0x0e9c
@..local.l35:
    lea ax, word [bp - 0x00a2]       ; 0x0e9f
    push ax                          ; 0x0ea3
    call math_loc_0992               ; 0x0ea4
    pop cx                           ; 0x0ea7
    mov ax, 0                        ; 0x0ea8
    push ax                          ; 0x0eab
    lea ax, word [bp - 0x0052]       ; 0x0eac
    push ax                          ; 0x0eaf
    call aztec_open                  ; 0x0eb0
    add sp, byte 4                   ; 0x0eb3
    mov word [bp - 0x00a4], ax       ; 0x0eb6
    cmp word [bp - 0x00a4], byte 0xff ; 0x0eba
    je short @..local.l35            ; 0x0ebf
    push word [bp - 0x00a4]          ; 0x0ec1
    call aztec_close                 ; 0x0ec5
    pop cx                           ; 0x0ec8
    jmp short @..local.l37           ; 0x0ec9
@..local.l36:
    lea ax, word [bp - 0x00a2]       ; 0x0ecb
    push ax                          ; 0x0ecf
    call math_loc_0992               ; 0x0ed0
    pop cx                           ; 0x0ed3
@..local.l37:
    mov sp, bp                       ; 0x0ed4
    pop bp                           ; 0x0ed6
    ret                              ; 0x0ed7
loc_0ed8:
    push bp                          ; 0x0ed8
    mov bp, sp                       ; 0x0ed9
    add sp, strict word 0xfe34       ; 0x0edb
    push word [bp + 0x4]             ; 0x0edf
    lea ax, word [bp - 0x0028]       ; 0x0ee2
    push ax                          ; 0x0ee5
    call aztec_strcpy                ; 0x0ee6
    add sp, byte 4                   ; 0x0ee9
    mov ax, 0x1609                   ; 0x0eec
    push ax                          ; 0x0eef
    lea ax, word [bp - 0x0028]       ; 0x0ef0
    push ax                          ; 0x0ef3
    call string_loc_2aa6             ; 0x0ef4
    add sp, byte 4                   ; 0x0ef7
    mov ax, 0x1615                   ; 0x0efa
    push ax                          ; 0x0efd
    lea ax, word [bp - 0x0050]       ; 0x0efe
    push ax                          ; 0x0f01
    call aztec_strcpy                ; 0x0f02
    add sp, byte 4                   ; 0x0f05
    push word [bp + 0x4]             ; 0x0f08
    lea ax, word [bp - 0x0078]       ; 0x0f0b
    push ax                          ; 0x0f0e
    call aztec_strcpy                ; 0x0f0f
    add sp, byte 4                   ; 0x0f12
    push word [bp + 0x8]             ; 0x0f15
    lea ax, word [bp - 0x0078]       ; 0x0f18
    push ax                          ; 0x0f1b
    call string_loc_2aa6             ; 0x0f1c
    add sp, byte 4                   ; 0x0f1f
    push word [bp + 0x4]             ; 0x0f22
    lea ax, word [bp - 0x0177]       ; 0x0f25
    push ax                          ; 0x0f29
    call aztec_strcpy                ; 0x0f2a
    add sp, byte 4                   ; 0x0f2d
    mov ax, 0x1621                   ; 0x0f30
    push ax                          ; 0x0f33
    lea ax, word [bp - 0x0177]       ; 0x0f34
    push ax                          ; 0x0f38
    call string_loc_2aa6             ; 0x0f39
    add sp, byte 4                   ; 0x0f3c
    push word [bp + 0x4]             ; 0x0f3f
    lea ax, word [bp - 0x0177]       ; 0x0f42
    push ax                          ; 0x0f46
    call string_loc_2aa6             ; 0x0f47
    add sp, byte 4                   ; 0x0f4a
    push word [bp + 0x8]             ; 0x0f4d
    lea ax, word [bp - 0x0177]       ; 0x0f50
    push ax                          ; 0x0f54
    call string_loc_2aa6             ; 0x0f55
    add sp, byte 4                   ; 0x0f58
    mov ax, 0x162e                   ; 0x0f5b
    push ax                          ; 0x0f5e
    lea ax, word [bp - 0x0177]       ; 0x0f5f
    push ax                          ; 0x0f63
    call string_loc_2aa6             ; 0x0f64
    add sp, byte 4                   ; 0x0f67
    push word [bp + 0xa]             ; 0x0f6a
    lea ax, word [bp - 0x0177]       ; 0x0f6d
    push ax                          ; 0x0f71
    call string_loc_2aa6             ; 0x0f72
    add sp, byte 4                   ; 0x0f75
    lea ax, word [bp - 0x0177]       ; 0x0f78
    push ax                          ; 0x0f7c
    call loc_0d6a                    ; 0x0f7d
    pop cx                           ; 0x0f80
    mov ax, 0x2357                   ; 0x0f81
    push ax                          ; 0x0f84
    mov ax, 0x1634                   ; 0x0f85
    push ax                          ; 0x0f88
    mov ax, 0x1630                   ; 0x0f89
    push ax                          ; 0x0f8c
    call loc_2bfe                    ; 0x0f8d
    add sp, byte 6                   ; 0x0f90
    mov word [data_29ee], ax         ; 0x0f93
    mov ax, 0                        ; 0x0f96
    push ax                          ; 0x0f99
    push ax                          ; 0x0f9a
    push word [bp + 0xa]             ; 0x0f9b
    lea ax, word [bp - 0x0078]       ; 0x0f9e
    push ax                          ; 0x0fa1
    lea ax, word [bp - 0x0050]       ; 0x0fa2
    push ax                          ; 0x0fa5
    lea ax, word [bp - 0x0028]       ; 0x0fa6
    push ax                          ; 0x0fa9
    call loc_2908                    ; 0x0faa
    add sp, byte 0x0c                ; 0x0fad
    mov word [bp - 0x01c9], ax       ; 0x0fb0
    call aztec_wait                  ; 0x0fb4
    mov word [bp - 0x01cb], ax       ; 0x0fb7
    push word [data_29ee]            ; 0x0fbb
    mov ax, 0x163a                   ; 0x0fbf
    push ax                          ; 0x0fc2
    mov ax, 0x1636                   ; 0x0fc3
    push ax                          ; 0x0fc6
    call loc_2bfe                    ; 0x0fc7
    add sp, byte 6                   ; 0x0fca
    mov word [data_29ee], ax         ; 0x0fcd
    cmp word [bp - 0x01c9], byte 0xff ; 0x0fd0
    je short @..local.l38            ; 0x0fd5
    cmp word [bp - 0x01cb], byte 0   ; 0x0fd7
    je short @..local.l39            ; 0x0fdc
@..local.l38:
    mov ax, 0x163c                   ; 0x0fde
    push ax                          ; 0x0fe1
    lea ax, word [bp - 0x01c7]       ; 0x0fe2
    push ax                          ; 0x0fe6
    call aztec_strcpy                ; 0x0fe7
    add sp, byte 4                   ; 0x0fea
    push word [bp + 0x4]             ; 0x0fed
    lea ax, word [bp - 0x01c7]       ; 0x0ff0
    push ax                          ; 0x0ff4
    call string_loc_2aa6             ; 0x0ff5
    add sp, byte 4                   ; 0x0ff8
    push word [bp + 0x8]             ; 0x0ffb
    lea ax, word [bp - 0x01c7]       ; 0x0ffe
    push ax                          ; 0x1002
    call string_loc_2aa6             ; 0x1003
    add sp, byte 4                   ; 0x1006
    mov ax, 0x1657                   ; 0x1009
    push ax                          ; 0x100c
    lea ax, word [bp - 0x01c7]       ; 0x100d
    push ax                          ; 0x1011
    call string_loc_2aa6             ; 0x1012
    add sp, byte 4                   ; 0x1015
    lea ax, word [bp - 0x01c7]       ; 0x1018
    push ax                          ; 0x101c
    call math_loc_0992               ; 0x101d
    pop cx                           ; 0x1020
    mov ax, 3                        ; 0x1021
    push ax                          ; 0x1024
    call loc_380b                    ; 0x1025
    pop cx                           ; 0x1028
@..local.l39:
    mov sp, bp                       ; 0x1029
    pop bp                           ; 0x102b
    ret                              ; 0x102c

    db 0x55, 0x8b, 0xec, 0xb8, 0xf0, 0x29, 0x50, 0xe8
    db '8%Y=P', 0
    db 0x7f, 0x18, 0xb8, 0xf0, 0x29, 0x50, 0xe8, 0x2b, 0x25, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x2e, 0xff
    db 0x76, 0x0a, 0xe8, 0x1f, 0x25, 0x59, 0x85, 0xc0, 0x75, 0x23, 0xb8, 0xf0, 0x29, 0x50, 0xff, 0x76
    db 0x08, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x73, 0xfe, 0x83, 0xc4, 0x08, 0xb8, 0x69, 0x16
    db 0x50, 0xb8, 0xf0, 0x29, 0x50, 0xe8, 0x6a, 0x1a, 0x83, 0xc4, 0x04, 0xeb, 0x1b, 0xb8, 0xf0, 0x29
    db 0x50, 0xe8, 0xf0, 0x24, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x0e, 0xb8, 0x6a, 0x16, 0x50, 0xb8, 0xf0
    db 0x29, 0x50, 0xe8, 0x16, 0x1a, 0x83, 0xc4, 0x04, 0xff, 0x76, 0x0a, 0xb8, 0xf0, 0x29, 0x50, 0xe8
    db 0x09, 0x1a, 0x83, 0xc4, 0x04, 0x8b, 0xe5, 0x5d, 0xc3

%include "vinstall/leaf_loc_10a4.asm"

    push cs                          ; 0x113f
    add cl, byte [bx]                ; 0x1140
    push ds                          ; 0x1142
    db 0x0f
@..leaf_loc_10a4.l1:
    cmp ax, strict word 5            ; 0x1144
    jae short @..leaf_loc_10a4.l2    ; 0x1147
    xchg bx, ax                      ; 0x1149
    shl bx, 1                        ; 0x114a
    jmp [cs:bx + 0xf3a]              ; 0x114c
@..leaf_loc_10a4.l2:
    mov sp, bp                       ; 0x1151
    pop bp                           ; 0x1153
    ret                              ; 0x1154

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0x5e, 0xff, 0x8b, 0x46, 0x04, 0x8b, 0xd0, 0xd1, 0xe0, 0xd1, 0xe0
    db 0x03, 0xc2, 0xd1, 0xe0, 0x8b, 0x4e, 0x06, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0xad
    db 0x02, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0x60, 0x19, 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xfe, 0x00, 0x00
    db 0xeb, 0x21, 0x8b, 0x5e, 0xfe, 0x03, 0xdd, 0x80, 0x7f, 0xae, 0x2a, 0x74, 0x0c, 0x8a, 0x47, 0xae
    db 0x98, 0x05, 0xbf, 0xff, 0x3b, 0x46, 0x08, 0x75, 0x07, 0xb8, 0x01, 0x00, 0x8b, 0xe5, 0x5d, 0xc3
    db 0xff, 0x46, 0xfe, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0xc0, 0x23, 0x59, 0x3b, 0x46, 0xfe, 0x7f, 0xd2
    db 0xb8, 0x00, 0x00, 0xeb, 0xe7

loc_11ba:
    push bp                          ; 0x11ba
    mov bp, sp                       ; 0x11bb
    add sp, byte 0xae                ; 0x11bd
    push word [bp + 0x4]             ; 0x11c0
    call leaf_loc_0200               ; 0x11c3
    pop cx                           ; 0x11c6
    mov word [bp - 0x0002], ax       ; 0x11c7
    cmp ax, strict word 0xffff       ; 0x11ca
    jne short @..local.l40           ; 0x11cd
    mov ax, 0x1689                   ; 0x11cf
    push ax                          ; 0x11d2
    lea ax, word [bp - 0x0052]       ; 0x11d3
    push ax                          ; 0x11d6
    call aztec_strcpy                ; 0x11d7
    add sp, byte 4                   ; 0x11da
    push word [bp + 0x4]             ; 0x11dd
    lea ax, word [bp - 0x0052]       ; 0x11e0
    push ax                          ; 0x11e3
    call string_loc_2aa6             ; 0x11e4
    add sp, byte 4                   ; 0x11e7
    mov ax, 0x16af                   ; 0x11ea
    push ax                          ; 0x11ed
    lea ax, word [bp - 0x0052]       ; 0x11ee
    push ax                          ; 0x11f1
    call string_loc_2aa6             ; 0x11f2
    add sp, byte 4                   ; 0x11f5
    lea ax, word [bp - 0x0052]       ; 0x11f8
    push ax                          ; 0x11fb
    call math_loc_0992               ; 0x11fc
    pop cx                           ; 0x11ff
    mov ax, data_0004                ; 0x1200
    push ax                          ; 0x1203
    call loc_380b                    ; 0x1204
    pop cx                           ; 0x1207
@..local.l40:
    push word [bp + 0x6]             ; 0x1208
    call leaf_loc_2a1c               ; 0x120b
    pop cx                           ; 0x120e
    mov word [bp - 0x0002], ax       ; 0x120f
    cmp ax, strict word 0xffff       ; 0x1212
    je short @..local.l41            ; 0x1215
    jmp near @..local.l44            ; 0x1217
@..local.l41:
    cmp word [bp + 0x8], byte 1      ; 0x121a
    jne short @..local.l43           ; 0x121e
    push word [bp + 0x6]             ; 0x1220
    call aztec_mkdir                 ; 0x1223
    pop cx                           ; 0x1226
    mov word [bp - 0x0002], ax       ; 0x1227
    cmp ax, strict word 0xffff       ; 0x122a
    jne short @..local.l42           ; 0x122d
    mov ax, 0x16c2                   ; 0x122f
    push ax                          ; 0x1232
    lea ax, word [bp - 0x0052]       ; 0x1233
    push ax                          ; 0x1236
    call aztec_strcpy                ; 0x1237
    add sp, byte 4                   ; 0x123a
    push word [bp + 0x6]             ; 0x123d
    lea ax, word [bp - 0x0052]       ; 0x1240
    push ax                          ; 0x1243
    call string_loc_2aa6             ; 0x1244
    add sp, byte 4                   ; 0x1247
    mov ax, 0x16e8                   ; 0x124a
    push ax                          ; 0x124d
    lea ax, word [bp - 0x0052]       ; 0x124e
    push ax                          ; 0x1251
    call string_loc_2aa6             ; 0x1252
    add sp, byte 4                   ; 0x1255
    lea ax, word [bp - 0x0052]       ; 0x1258
    push ax                          ; 0x125b
    call math_loc_0992               ; 0x125c
    pop cx                           ; 0x125f
    mov ax, 1                        ; 0x1260
    push ax                          ; 0x1263
    call loc_380b                    ; 0x1264
    pop cx                           ; 0x1267
@..local.l42:
    push word [bp + 0x6]             ; 0x1268
    call leaf_loc_2a1c               ; 0x126b
    pop cx                           ; 0x126e
    mov word [bp - 0x0002], ax       ; 0x126f
@..local.l43:
    cmp word [bp - 0x0002], byte 0xff ; 0x1272
    jne short @..local.l44           ; 0x1276
    mov ax, 0x16fa                   ; 0x1278
    push ax                          ; 0x127b
    lea ax, word [bp - 0x0052]       ; 0x127c
    push ax                          ; 0x127f
    call aztec_strcpy                ; 0x1280
    add sp, byte 4                   ; 0x1283
    push word [bp + 0x6]             ; 0x1286
    lea ax, word [bp - 0x0052]       ; 0x1289
    push ax                          ; 0x128c
    call string_loc_2aa6             ; 0x128d
    add sp, byte 4                   ; 0x1290
    mov ax, 0x1720                   ; 0x1293
    push ax                          ; 0x1296
    lea ax, word [bp - 0x0052]       ; 0x1297
    push ax                          ; 0x129a
    call string_loc_2aa6             ; 0x129b
    add sp, byte 4                   ; 0x129e
    lea ax, word [bp - 0x0052]       ; 0x12a1
    push ax                          ; 0x12a4
    call math_loc_0992               ; 0x12a5
    pop cx                           ; 0x12a8
    mov ax, data_0002                ; 0x12a9
    push ax                          ; 0x12ac
    call loc_380b                    ; 0x12ad
    pop cx                           ; 0x12b0
@..local.l44:
    mov sp, bp                       ; 0x12b1
    pop bp                           ; 0x12b3
    ret                              ; 0x12b4
%include "vinstall/math_loc_12b5.asm"

    mov word [data_29e6], 0          ; 0x14b1
    mov word [data_29e8], 0          ; 0x14b7
    mov word [data_29ea], 0          ; 0x14bd
    mov word [data_2af0], 0          ; 0x14c3
    mov word [data_29ec], 0          ; 0x14c9
    mov word [data_2af2], 0          ; 0x14cf
    mov word [data_2af4], 0          ; 0x14d5
    mov word [data_2af6], 0          ; 0x14db
    mov word [data_2af8], 0          ; 0x14e1
    mov word [data_2afa], 0          ; 0x14e7
    test ax, 1                       ; 0x14ed
    je short @..math_loc_12b5.l2     ; 0x14f0
    mov word [data_29e6], 1          ; 0x14f2
@..math_loc_12b5.l2:
    test ax, data_0002               ; 0x14f8
    je short @..math_loc_12b5.l3     ; 0x14fb
    mov word [data_29e8], 1          ; 0x14fd
@..math_loc_12b5.l3:
    test ax, 0x1000                  ; 0x1503
    je short @..math_loc_12b5.l4     ; 0x1506
    mov word [data_2afa], 1          ; 0x1508
@..math_loc_12b5.l4:
    mov word [bp - 0x000e], 3        ; 0x150e
    mov ax, 0x1bca                   ; 0x1513
    push ax                          ; 0x1516
    lea ax, word [bp - 0x001c]       ; 0x1517
    push ax                          ; 0x151a
    call aztec_strcpy                ; 0x151b
    add sp, byte 4                   ; 0x151e
    mov ax, 0x1bcd                   ; 0x1521
    push ax                          ; 0x1524
    lea ax, word [bp - 0x0032]       ; 0x1525
    push ax                          ; 0x1528
    call aztec_strcpy                ; 0x1529
    add sp, byte 4                   ; 0x152c
    mov word [bp - 0x0010], data_0004 ; 0x152f
    lea ax, word [bp - 0x0054]       ; 0x1534
    push ax                          ; 0x1537
    lea ax, word [bp - 0x003e]       ; 0x1538
    push ax                          ; 0x153b
    push word [bp - 0x0010]          ; 0x153c
    call leaf_loc_10a4               ; 0x153f
    add sp, byte 6                   ; 0x1542
    mov ax, 0x1bce                   ; 0x1545
    push ax                          ; 0x1548
    mov ax, data_0002                ; 0x1549
    push ax                          ; 0x154c
    mov ax, data_0006                ; 0x154d
    push ax                          ; 0x1550
    call loc_040f                    ; 0x1551
    add sp, byte 6                   ; 0x1554
    mov ax, 0x1c1b                   ; 0x1557
    push ax                          ; 0x155a
    mov ax, data_0002                ; 0x155b
    push ax                          ; 0x155e
    mov ax, 7                        ; 0x155f
    push ax                          ; 0x1562
    call loc_040f                    ; 0x1563
    add sp, byte 6                   ; 0x1566
    lea ax, word [bp - 0x0032]       ; 0x1569
    push ax                          ; 0x156c
    lea ax, word [bp - 0x001c]       ; 0x156d
    push ax                          ; 0x1570
    push word [bp - 0x000e]          ; 0x1571
    mov ax, 0x1c68                   ; 0x1574
    push ax                          ; 0x1577
    mov ax, data_0002                ; 0x1578
    push ax                          ; 0x157b
    mov ax, 8                        ; 0x157c
    push ax                          ; 0x157f
    call aztec_vfprintf              ; 0x1580
    add sp, byte 0x0c                ; 0x1583
    lea ax, word [bp - 0x0054]       ; 0x1586
    push ax                          ; 0x1589
    lea ax, word [bp - 0x003e]       ; 0x158a
    push ax                          ; 0x158d
    push word [bp - 0x0010]          ; 0x158e
    mov ax, 0x1c7b                   ; 0x1591
    push ax                          ; 0x1594
    mov ax, data_0002                ; 0x1595
    push ax                          ; 0x1598
    mov ax, 9                        ; 0x1599
    push ax                          ; 0x159c
    call aztec_vfprintf              ; 0x159d
    add sp, byte 0x0c                ; 0x15a0
    mov word [bp - 0x01a0], 0        ; 0x15a3
    mov word [bp - 0x01a2], 0        ; 0x15a9
    mov byte [bp - 0x01b8], 0        ; 0x15af
    mov ax, 0x1c8e                   ; 0x15b4
    push ax                          ; 0x15b7
    mov ax, data_0002                ; 0x15b8
    push ax                          ; 0x15bb
    mov ax, 0xb                      ; 0x15bc
    push ax                          ; 0x15bf
    call loc_040f                    ; 0x15c0
    add sp, byte 6                   ; 0x15c3
    mov ax, word [bp - 0x01a0]       ; 0x15c6
    shl ax, 1                        ; 0x15ca
    mov bx, ax                       ; 0x15cc
    push word [bx + 0x154]           ; 0x15ce
    mov ax, 0x1b                     ; 0x15d2
    push ax                          ; 0x15d5
    mov ax, 0xb                      ; 0x15d6
    push ax                          ; 0x15d9
    call loc_040f                    ; 0x15da
    add sp, byte 6                   ; 0x15dd
    mov ax, word [bp - 0x01a2]       ; 0x15e0
    shl ax, 1                        ; 0x15e4
    mov bx, ax                       ; 0x15e6
    push word [bx + 0x154]           ; 0x15e8
    mov ax, 0x29                     ; 0x15ec
    push ax                          ; 0x15ef
    mov ax, 0xb                      ; 0x15f0
    push ax                          ; 0x15f3
    call loc_040f                    ; 0x15f4
    add sp, byte 6                   ; 0x15f7
    lea ax, word [bp - 0x01b8]       ; 0x15fa
    push ax                          ; 0x15fe
    mov ax, 0x3a                     ; 0x15ff
    push ax                          ; 0x1602
    mov ax, 0xb                      ; 0x1603
    push ax                          ; 0x1606
    call loc_040f                    ; 0x1607
    add sp, byte 6                   ; 0x160a
    mov ax, 0x1cc7                   ; 0x160d
    push ax                          ; 0x1610
    mov ax, data_0002                ; 0x1611
    push ax                          ; 0x1614
    mov ax, 0xd                      ; 0x1615
    push ax                          ; 0x1618
    call loc_040f                    ; 0x1619
    add sp, byte 6                   ; 0x161c
    mov ax, 0x1d0a                   ; 0x161f
    push ax                          ; 0x1622
    mov ax, data_0002                ; 0x1623
    push ax                          ; 0x1626
    mov ax, 0xe                      ; 0x1627
    push ax                          ; 0x162a
    call loc_040f                    ; 0x162b
    add sp, byte 6                   ; 0x162e
    mov word [bp - 0x0196], 0        ; 0x1631
    mov word [bp - 0x01be], 0xf      ; 0x1637
    cmp word [data_29e6], byte 0     ; 0x163d
    je short @..math_loc_12b5.l5     ; 0x1642
    mov word [bp - 0x0196], 1        ; 0x1644
    push word [data_0004]            ; 0x164a
    mov ax, 0xa                      ; 0x164e
    push ax                          ; 0x1651
    push word [bp - 0x01be]          ; 0x1652
    call loc_040f                    ; 0x1656
    add sp, byte 6                   ; 0x1659
    inc word [bp - 0x01be]           ; 0x165c
@..math_loc_12b5.l5:
    cmp word [data_29e8], byte 0     ; 0x1660
    je short @..math_loc_12b5.l7     ; 0x1665
    cmp word [bp - 0x0196], byte 0   ; 0x1667
    jne short @..math_loc_12b5.l6    ; 0x166c
    mov word [bp - 0x0196], data_0002 ; 0x166e
@..math_loc_12b5.l6:
    push word [data_0006]            ; 0x1674
    mov ax, 0xa                      ; 0x1678
    push ax                          ; 0x167b
    push word [bp - 0x01be]          ; 0x167c
    call loc_040f                    ; 0x1680
    add sp, byte 6                   ; 0x1683
    inc word [bp - 0x01be]           ; 0x1686
@..math_loc_12b5.l7:
    mov ax, word [bp - 0x0196]       ; 0x168a
    shl ax, 1                        ; 0x168e
    mov bx, ax                       ; 0x1690
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10                     ; 0x1696
    push ax                          ; 0x1699
    mov ax, 0xd                      ; 0x169a
    push ax                          ; 0x169d
    call loc_040f                    ; 0x169e
    add sp, byte 6                   ; 0x16a1
    mov word [bp - 0x01ba], 0        ; 0x16a4
    mov word [bp - 0x01bc], 0        ; 0x16aa
    mov ax, 0x1d4d                   ; 0x16b0
    push ax                          ; 0x16b3
    mov ax, 0x34                     ; 0x16b4
    push ax                          ; 0x16b7
    mov ax, 0xf                      ; 0x16b8
    push ax                          ; 0x16bb
    call loc_040f                    ; 0x16bc
    add sp, byte 6                   ; 0x16bf
    push word [bp - 0x01ba]          ; 0x16c2
    mov ax, 0x3e                     ; 0x16c6
    push ax                          ; 0x16c9
    mov ax, 0xf                      ; 0x16ca
    push ax                          ; 0x16cd
    call loc_03b3                    ; 0x16ce
    add sp, byte 6                   ; 0x16d1
    mov ax, 0x1d58                   ; 0x16d4
    push ax                          ; 0x16d7
    mov ax, 0x34                     ; 0x16d8
    push ax                          ; 0x16db
    mov ax, 0x10                     ; 0x16dc
    push ax                          ; 0x16df
    call loc_040f                    ; 0x16e0
    add sp, byte 6                   ; 0x16e3
    push word [bp - 0x01bc]          ; 0x16e6
    mov ax, 0x3e                     ; 0x16ea
    push ax                          ; 0x16ed
    mov ax, 0x10                     ; 0x16ee
    push ax                          ; 0x16f1
    call loc_03b3                    ; 0x16f2
    add sp, byte 6                   ; 0x16f5
    mov ax, word [data_2afa]         ; 0x16f8
    mov word [bp - 0x019a], ax       ; 0x16fb
    mov ax, 0x1d63                   ; 0x16ff
    push ax                          ; 0x1702
    mov ax, 0x14                     ; 0x1703
    push ax                          ; 0x1706
    mov ax, 0x12                     ; 0x1707
    push ax                          ; 0x170a
    call loc_040f                    ; 0x170b
    add sp, byte 6                   ; 0x170e
    mov ax, word [bp - 0x019a]       ; 0x1711
    shl ax, 1                        ; 0x1715
    mov bx, ax                       ; 0x1717
    push word [bx + 0x154]           ; 0x1719
    mov ax, 0x1b                     ; 0x171d
    push ax                          ; 0x1720
    mov ax, 0x12                     ; 0x1721
    push ax                          ; 0x1724
    call loc_040f                    ; 0x1725
    add sp, byte 6                   ; 0x1728
    mov word [bp - 0x0198], 0        ; 0x172b
    mov ax, 0x1d6b                   ; 0x1731
    push ax                          ; 0x1734
    mov ax, 0x22                     ; 0x1735
    push ax                          ; 0x1738
    mov ax, 0x12                     ; 0x1739
    push ax                          ; 0x173c
    call loc_040f                    ; 0x173d
    add sp, byte 6                   ; 0x1740
    mov ax, word [bp - 0x0198]       ; 0x1743
    shl ax, 1                        ; 0x1747
    mov bx, ax                       ; 0x1749
    push word [bx + 0xa4]            ; 0x174b
    mov ax, 0x29                     ; 0x174f
    push ax                          ; 0x1752
    mov ax, 0x12                     ; 0x1753
    push ax                          ; 0x1756
    call loc_040f                    ; 0x1757
    add sp, byte 6                   ; 0x175a
    mov ax, 0x1d73                   ; 0x175d
    push ax                          ; 0x1760
    mov ax, 0x12                     ; 0x1761
    push ax                          ; 0x1764
    mov ax, 0x14                     ; 0x1765
    push ax                          ; 0x1768
    call loc_040f                    ; 0x1769
    add sp, byte 6                   ; 0x176c
    mov ax, 0x1d9f                   ; 0x176f
    push ax                          ; 0x1772
    mov ax, 0x14                     ; 0x1773
    push ax                          ; 0x1776
    mov ax, 0x16                     ; 0x1777
    push ax                          ; 0x177a
    call loc_040f                    ; 0x177b
    add sp, byte 6                   ; 0x177e
    cmp word [bp - 0x0196], byte 0   ; 0x1781
    jne short @..math_loc_12b5.l8    ; 0x1786
    mov ax, 0x1dc7                   ; 0x1788
    push ax                          ; 0x178b
    call math_loc_0992               ; 0x178c
    pop cx                           ; 0x178f
    mov ax, 0x1df7                   ; 0x1790
    push ax                          ; 0x1793
    call math_loc_0992               ; 0x1794
    pop cx                           ; 0x1797
    mov ax, 3                        ; 0x1798
    push ax                          ; 0x179b
    call loc_06f1                    ; 0x179c
    pop cx                           ; 0x179f
    mov ax, 0                        ; 0x17a0
    push ax                          ; 0x17a3
    call loc_380b                    ; 0x17a4
    pop cx                           ; 0x17a7
@..math_loc_12b5.l8:
    mov word [bp - 0x019c], 0        ; 0x17a8
    mov word [bp - 0x019e], 0xffff   ; 0x17ae
    mov word [bp - 0x01c0], 0        ; 0x17b4
@..math_loc_12b5.l9:
    mov ax, 0x1e28                   ; 0x17ba
    push ax                          ; 0x17bd
    mov ax, 0x2648                   ; 0x17be
    push ax                          ; 0x17c1
    call aztec_strcpy                ; 0x17c2
    add sp, byte 4                   ; 0x17c5
    mov ax, word [bp - 0x019e]       ; 0x17c8
    jmp near @..math_loc_12b5.l10    ; 0x17cc
    mov ax, word [bp - 0x000e]       ; 0x17cf
    shl ax, 1                        ; 0x17d2
    mov bx, ax                       ; 0x17d4
    push word [bx + 0x160]           ; 0x17d6
    mov ax, 0x16                     ; 0x17da
    push ax                          ; 0x17dd
    mov ax, 8                        ; 0x17de
    push ax                          ; 0x17e1
    call loc_040f                    ; 0x17e2
    add sp, byte 6                   ; 0x17e5
    jmp near @..math_loc_12b5.l11    ; 0x17e8
    lea ax, word [bp - 0x001c]       ; 0x17eb
    push ax                          ; 0x17ee
    mov ax, data_002e                ; 0x17ef
    push ax                          ; 0x17f2
    mov ax, 8                        ; 0x17f3
    push ax                          ; 0x17f6
    call loc_040f                    ; 0x17f7
    add sp, byte 6                   ; 0x17fa
    jmp near @..math_loc_12b5.l11    ; 0x17fd
    lea ax, word [bp - 0x0032]       ; 0x1800
    push ax                          ; 0x1803
    mov ax, 0x3a                     ; 0x1804
    push ax                          ; 0x1807
    mov ax, 8                        ; 0x1808
    push ax                          ; 0x180b
    call loc_040f                    ; 0x180c
    add sp, byte 6                   ; 0x180f
    jmp near @..math_loc_12b5.l11    ; 0x1812
    mov ax, word [bp - 0x0010]       ; 0x1815
    shl ax, 1                        ; 0x1818
    mov bx, ax                       ; 0x181a
    push word [bx + 0x160]           ; 0x181c
    mov ax, 0x16                     ; 0x1820
    push ax                          ; 0x1823
    mov ax, 9                        ; 0x1824
    push ax                          ; 0x1827
    call loc_040f                    ; 0x1828
    add sp, byte 6                   ; 0x182b
    jmp near @..math_loc_12b5.l11    ; 0x182e
    lea ax, word [bp - 0x003e]       ; 0x1831
    push ax                          ; 0x1834
    mov ax, data_002e                ; 0x1835
    push ax                          ; 0x1838
    mov ax, 9                        ; 0x1839
    push ax                          ; 0x183c
    call loc_040f                    ; 0x183d
    add sp, byte 6                   ; 0x1840
    jmp near @..math_loc_12b5.l11    ; 0x1843
    lea ax, word [bp - 0x0054]       ; 0x1846
    push ax                          ; 0x1849
    mov ax, 0x3a                     ; 0x184a
    push ax                          ; 0x184d
    mov ax, 9                        ; 0x184e
    push ax                          ; 0x1851
    call loc_040f                    ; 0x1852
    add sp, byte 6                   ; 0x1855
    jmp near @..math_loc_12b5.l11    ; 0x1858
    mov ax, word [bp - 0x01a0]       ; 0x185b
    shl ax, 1                        ; 0x185f
    mov bx, ax                       ; 0x1861
    push word [bx + 0x154]           ; 0x1863
    mov ax, 0x1b                     ; 0x1867
    push ax                          ; 0x186a
    mov ax, 0xb                      ; 0x186b
    push ax                          ; 0x186e
    call loc_040f                    ; 0x186f
    add sp, byte 6                   ; 0x1872
    jmp near @..math_loc_12b5.l11    ; 0x1875
    mov ax, word [bp - 0x01a2]       ; 0x1878
    shl ax, 1                        ; 0x187c
    mov bx, ax                       ; 0x187e
    push word [bx + 0x154]           ; 0x1880
    mov ax, 0x29                     ; 0x1884
    push ax                          ; 0x1887
    mov ax, 0xb                      ; 0x1888
    push ax                          ; 0x188b
    call loc_040f                    ; 0x188c
    add sp, byte 6                   ; 0x188f
    jmp near @..math_loc_12b5.l11    ; 0x1892
    lea ax, word [bp - 0x01b8]       ; 0x1895
    push ax                          ; 0x1899
    mov ax, 0x3a                     ; 0x189a
    push ax                          ; 0x189d
    mov ax, 0xb                      ; 0x189e
    push ax                          ; 0x18a1
    call loc_040f                    ; 0x18a2
    add sp, byte 6                   ; 0x18a5
    jmp near @..math_loc_12b5.l11    ; 0x18a8
    mov ax, word [bp - 0x0196]       ; 0x18ab
    shl ax, 1                        ; 0x18af
    mov bx, ax                       ; 0x18b1
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10                     ; 0x18b7
    push ax                          ; 0x18ba
    mov ax, 0xd                      ; 0x18bb
    push ax                          ; 0x18be
    call loc_040f                    ; 0x18bf
    add sp, byte 6                   ; 0x18c2
    jmp near @..math_loc_12b5.l11    ; 0x18c5
    push word [bp - 0x01ba]          ; 0x18c8
    mov ax, 0x3e                     ; 0x18cc
    push ax                          ; 0x18cf
    mov ax, 0xf                      ; 0x18d0
    push ax                          ; 0x18d3
    call loc_03b3                    ; 0x18d4
    add sp, byte 6                   ; 0x18d7
    jmp near @..math_loc_12b5.l11    ; 0x18da
    push word [bp - 0x01bc]          ; 0x18dd
    mov ax, 0x3e                     ; 0x18e1
    push ax                          ; 0x18e4
    mov ax, 0x10                     ; 0x18e5
    push ax                          ; 0x18e8
    call loc_03b3                    ; 0x18e9
    add sp, byte 6                   ; 0x18ec
    jmp near @..math_loc_12b5.l11    ; 0x18ef
    mov ax, word [bp - 0x019a]       ; 0x18f2
    shl ax, 1                        ; 0x18f6
    mov bx, ax                       ; 0x18f8
    push word [bx + 0x154]           ; 0x18fa
    mov ax, 0x1b                     ; 0x18fe
    push ax                          ; 0x1901
    mov ax, 0x12                     ; 0x1902
    push ax                          ; 0x1905
    call loc_040f                    ; 0x1906
    add sp, byte 6                   ; 0x1909
    jmp near @..math_loc_12b5.l11    ; 0x190c
    mov ax, word [bp - 0x0198]       ; 0x190f
    shl ax, 1                        ; 0x1913
    mov bx, ax                       ; 0x1915
    push word [bx + 0xa4]            ; 0x1917
    mov ax, 0x29                     ; 0x191b
    push ax                          ; 0x191e
    mov ax, 0x12                     ; 0x191f
    push ax                          ; 0x1922
    call loc_040f                    ; 0x1923
    add sp, byte 6                   ; 0x1926
    jmp short @..math_loc_12b5.l11   ; 0x1929
    mov ax, 0x1e50                   ; 0x192b
    push ax                          ; 0x192e
    mov ax, 0x12                     ; 0x192f
    push ax                          ; 0x1932
    mov ax, 0x14                     ; 0x1933
    push ax                          ; 0x1936
    call loc_040f                    ; 0x1937
    add sp, byte 6                   ; 0x193a
    jmp short @..math_loc_12b5.l11   ; 0x193d
    mov ax, 0x1e5d                   ; 0x193f
    push ax                          ; 0x1942
    mov ax, 0x21                     ; 0x1943
    push ax                          ; 0x1946
    mov ax, 0x14                     ; 0x1947
    push ax                          ; 0x194a
    call loc_040f                    ; 0x194b
    add sp, byte 6                   ; 0x194e
    jmp short @..math_loc_12b5.l11   ; 0x1951
    mov ax, 0x1e69                   ; 0x1953
    push ax                          ; 0x1956
    mov ax, data_0030                ; 0x1957
    push ax                          ; 0x195a
    mov ax, 0x14                     ; 0x195b
    push ax                          ; 0x195e
    call loc_040f                    ; 0x195f
    add sp, byte 6                   ; 0x1962
    jmp short @..math_loc_12b5.l11   ; 0x1965
    jmp short @..math_loc_12b5.l11   ; 0x1967

    db 0x67, 0x17, 0xcf, 0x15, 0xeb, 0x15, 0x00, 0x16, 0x15, 0x16, 0x31, 0x16, 0x46, 0x16, 0x5b, 0x16
    db 0x78, 0x16, 0x95, 0x16, 0xab, 0x16, 0xc8, 0x16, 0xdd, 0x16, 0xf2, 0x16, 0x0f, 0x17, 0x2b, 0x17
    db 0x3f, 0x17, 0x53, 0x17

@..math_loc_12b5.l10:
    sub ax, strict word 0xffff       ; 0x198d
    cmp ax, strict word 0x12         ; 0x1990
    jae short @..math_loc_12b5.l11   ; 0x1993
    xchg bx, ax                      ; 0x1995
    shl bx, 1                        ; 0x1996
    jmp [cs:bx + 0x1769]             ; 0x1998
@..math_loc_12b5.l11:
    mov ax, word [bp - 0x019c]       ; 0x199d
    jmp near @..math_loc_12b5.l12    ; 0x19a1
    mov ax, word [bp - 0x000e]       ; 0x19a4
    shl ax, 1                        ; 0x19a7
    mov bx, ax                       ; 0x19a9
    push word [bx + 0x160]           ; 0x19ab
    mov ax, 0x16                     ; 0x19af
    push ax                          ; 0x19b2
    mov ax, 8                        ; 0x19b3
    push ax                          ; 0x19b6
    call loc_0429                    ; 0x19b7
    add sp, byte 6                   ; 0x19ba
    jmp near @..math_loc_12b5.l13    ; 0x19bd
    lea ax, word [bp - 0x001c]       ; 0x19c0
    push ax                          ; 0x19c3
    mov ax, data_002e                ; 0x19c4
    push ax                          ; 0x19c7
    mov ax, 8                        ; 0x19c8
    push ax                          ; 0x19cb
    call loc_0429                    ; 0x19cc
    add sp, byte 6                   ; 0x19cf
    jmp near @..math_loc_12b5.l13    ; 0x19d2
    lea ax, word [bp - 0x0032]       ; 0x19d5
    push ax                          ; 0x19d8
    mov ax, 0x3a                     ; 0x19d9
    push ax                          ; 0x19dc
    mov ax, 8                        ; 0x19dd
    push ax                          ; 0x19e0
    call loc_0429                    ; 0x19e1
    add sp, byte 6                   ; 0x19e4
    jmp near @..math_loc_12b5.l13    ; 0x19e7
    mov ax, word [bp - 0x0010]       ; 0x19ea
    shl ax, 1                        ; 0x19ed
    mov bx, ax                       ; 0x19ef
    push word [bx + 0x160]           ; 0x19f1
    mov ax, 0x16                     ; 0x19f5
    push ax                          ; 0x19f8
    mov ax, 9                        ; 0x19f9
    push ax                          ; 0x19fc
    call loc_0429                    ; 0x19fd
    add sp, byte 6                   ; 0x1a00
    jmp near @..math_loc_12b5.l13    ; 0x1a03
    lea ax, word [bp - 0x003e]       ; 0x1a06
    push ax                          ; 0x1a09
    mov ax, data_002e                ; 0x1a0a
    push ax                          ; 0x1a0d
    mov ax, 9                        ; 0x1a0e
    push ax                          ; 0x1a11
    call loc_0429                    ; 0x1a12
    add sp, byte 6                   ; 0x1a15
    jmp near @..math_loc_12b5.l13    ; 0x1a18
    lea ax, word [bp - 0x0054]       ; 0x1a1b
    push ax                          ; 0x1a1e
    mov ax, 0x3a                     ; 0x1a1f
    push ax                          ; 0x1a22
    mov ax, 9                        ; 0x1a23
    push ax                          ; 0x1a26
    call loc_0429                    ; 0x1a27
    add sp, byte 6                   ; 0x1a2a
    jmp near @..math_loc_12b5.l13    ; 0x1a2d
    mov ax, word [bp - 0x01a0]       ; 0x1a30
    shl ax, 1                        ; 0x1a34
    mov bx, ax                       ; 0x1a36
    push word [bx + 0x154]           ; 0x1a38
    mov ax, 0x1b                     ; 0x1a3c
    push ax                          ; 0x1a3f
    mov ax, 0xb                      ; 0x1a40
    push ax                          ; 0x1a43
    call loc_0429                    ; 0x1a44
    add sp, byte 6                   ; 0x1a47
    jmp near @..math_loc_12b5.l13    ; 0x1a4a
    mov ax, word [bp - 0x01a2]       ; 0x1a4d
    shl ax, 1                        ; 0x1a51
    mov bx, ax                       ; 0x1a53
    push word [bx + 0x154]           ; 0x1a55
    mov ax, 0x29                     ; 0x1a59
    push ax                          ; 0x1a5c
    mov ax, 0xb                      ; 0x1a5d
    push ax                          ; 0x1a60
    call loc_0429                    ; 0x1a61
    add sp, byte 6                   ; 0x1a64
    jmp near @..math_loc_12b5.l13    ; 0x1a67
    lea ax, word [bp - 0x01b8]       ; 0x1a6a
    push ax                          ; 0x1a6e
    mov ax, 0x3a                     ; 0x1a6f
    push ax                          ; 0x1a72
    mov ax, 0xb                      ; 0x1a73
    push ax                          ; 0x1a76
    call loc_0429                    ; 0x1a77
    add sp, byte 6                   ; 0x1a7a
    jmp near @..math_loc_12b5.l13    ; 0x1a7d
    mov ax, word [bp - 0x0196]       ; 0x1a80
    shl ax, 1                        ; 0x1a84
    mov bx, ax                       ; 0x1a86
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10                     ; 0x1a8c
    push ax                          ; 0x1a8f
    mov ax, 0xd                      ; 0x1a90
    push ax                          ; 0x1a93
    call loc_0429                    ; 0x1a94
    add sp, byte 6                   ; 0x1a97
    jmp near @..math_loc_12b5.l13    ; 0x1a9a
    push word [bp - 0x01ba]          ; 0x1a9d
    mov ax, 0x3e                     ; 0x1aa1
    push ax                          ; 0x1aa4
    mov ax, 0xf                      ; 0x1aa5
    push ax                          ; 0x1aa8
    call loc_03e1                    ; 0x1aa9
    add sp, byte 6                   ; 0x1aac
    jmp near @..math_loc_12b5.l13    ; 0x1aaf
    push word [bp - 0x01bc]          ; 0x1ab2
    mov ax, 0x3e                     ; 0x1ab6
    push ax                          ; 0x1ab9
    mov ax, 0x10                     ; 0x1aba
    push ax                          ; 0x1abd
    call loc_03e1                    ; 0x1abe
    add sp, byte 6                   ; 0x1ac1
    jmp near @..math_loc_12b5.l13    ; 0x1ac4
    mov ax, word [bp - 0x019a]       ; 0x1ac7
    shl ax, 1                        ; 0x1acb
    mov bx, ax                       ; 0x1acd
    push word [bx + 0x154]           ; 0x1acf
    mov ax, 0x1b                     ; 0x1ad3
    push ax                          ; 0x1ad6
    mov ax, 0x12                     ; 0x1ad7
    push ax                          ; 0x1ada
    call loc_0429                    ; 0x1adb
    add sp, byte 6                   ; 0x1ade
    jmp near @..math_loc_12b5.l13    ; 0x1ae1
    mov ax, word [bp - 0x0198]       ; 0x1ae4
    shl ax, 1                        ; 0x1ae8
    mov bx, ax                       ; 0x1aea
    push word [bx + 0xa4]            ; 0x1aec
    mov ax, 0x29                     ; 0x1af0
    push ax                          ; 0x1af3
    mov ax, 0x12                     ; 0x1af4
    push ax                          ; 0x1af7
    call loc_0429                    ; 0x1af8
    add sp, byte 6                   ; 0x1afb
    jmp short @..math_loc_12b5.l13   ; 0x1afe
    mov ax, 0x1e77                   ; 0x1b00
    push ax                          ; 0x1b03
    mov ax, 0x12                     ; 0x1b04
    push ax                          ; 0x1b07
    mov ax, 0x14                     ; 0x1b08
    push ax                          ; 0x1b0b
    call loc_0429                    ; 0x1b0c
    add sp, byte 6                   ; 0x1b0f
    jmp short @..math_loc_12b5.l13   ; 0x1b12
    mov ax, 0x1e84                   ; 0x1b14
    push ax                          ; 0x1b17
    mov ax, 0x21                     ; 0x1b18
    push ax                          ; 0x1b1b
    mov ax, 0x14                     ; 0x1b1c
    push ax                          ; 0x1b1f
    call loc_0429                    ; 0x1b20
    add sp, byte 6                   ; 0x1b23
    jmp short @..math_loc_12b5.l13   ; 0x1b26
    mov ax, 0x1e90                   ; 0x1b28
    push ax                          ; 0x1b2b
    mov ax, data_0030                ; 0x1b2c
    push ax                          ; 0x1b2f
    mov ax, 0x14                     ; 0x1b30
    push ax                          ; 0x1b33
    call loc_0429                    ; 0x1b34
    add sp, byte 6                   ; 0x1b37
    jmp short @..math_loc_12b5.l13   ; 0x1b3a

    db 0xa4, 0x17, 0xc0, 0x17, 0xd5, 0x17, 0xea, 0x17, 0x06, 0x18, 0x1b, 0x18, 0x30, 0x18, 0x4d, 0x18
    db 0x6a, 0x18, 0x80, 0x18, 0x9d, 0x18, 0xb2, 0x18, 0xc7, 0x18, 0xe4, 0x18, 0x00, 0x19, 0x14, 0x19
    db 0x28, 0x19

@..math_loc_12b5.l12:
    cmp ax, strict word 0x11         ; 0x1b5e
    jae short @..math_loc_12b5.l13   ; 0x1b61
    xchg bx, ax                      ; 0x1b63
    shl bx, 1                        ; 0x1b64
    jmp [cs:bx + 0x193c]             ; 0x1b66
@..math_loc_12b5.l13:
    call dos_con_in_noecho           ; 0x1b6b
    push ax                          ; 0x1b6e
    call loc_06a6                    ; 0x1b6f
    pop cx                           ; 0x1b72
    mov word [bp - 0x0008], ax       ; 0x1b73
    jmp near @..math_loc_12b5.l48    ; 0x1b76
loc_1b79:
    mov ax, word [bp - 0x019c]       ; 0x1b79
    mov word [bp - 0x019e], ax       ; 0x1b7d
    shl ax, 1                        ; 0x1b81
    mov bx, ax                       ; 0x1b83
    mov ax, word [bx + 0x1dd]        ; 0x1b85
    mov word [bp - 0x019c], ax       ; 0x1b89
    jmp near @..math_loc_12b5.l49    ; 0x1b8d
loc_1b90:
    mov ax, word [bp - 0x019c]       ; 0x1b90
    mov word [bp - 0x019e], ax       ; 0x1b94
    shl ax, 1                        ; 0x1b98
    mov bx, ax                       ; 0x1b9a
    mov ax, word [bx + 0x221]        ; 0x1b9c
    mov word [bp - 0x019c], ax       ; 0x1ba0
    jmp near @..math_loc_12b5.l49    ; 0x1ba4
loc_1ba7:
    mov ax, word [bp - 0x019c]       ; 0x1ba7
    mov word [bp - 0x019e], ax       ; 0x1bab
    shl ax, 1                        ; 0x1baf
    mov bx, ax                       ; 0x1bb1
    mov ax, word [bx + 0x1ff]        ; 0x1bb3
    mov word [bp - 0x019c], ax       ; 0x1bb7
    jmp near @..math_loc_12b5.l49    ; 0x1bbb
loc_1bbe:
    mov ax, word [bp - 0x019c]       ; 0x1bbe
    mov word [bp - 0x019e], ax       ; 0x1bc2
    shl ax, 1                        ; 0x1bc6
    mov bx, ax                       ; 0x1bc8
    mov ax, word [bx + 0x243]        ; 0x1bca
    mov word [bp - 0x019c], ax       ; 0x1bce
    jmp near @..math_loc_12b5.l49    ; 0x1bd2
loc_1bd5:
    mov word [bp - 0x019e], 0xffff   ; 0x1bd5
    mov ax, word [bp - 0x019c]       ; 0x1bdb
    jmp near @..math_loc_12b5.l46    ; 0x1bdf
    mov ax, 0x1e9e                   ; 0x1be2
    push ax                          ; 0x1be5
    push word [bp - 0x000e]          ; 0x1be6
    mov ax, 8                        ; 0x1be9
    push ax                          ; 0x1bec
    call loc_0cd6                    ; 0x1bed
    add sp, byte 6                   ; 0x1bf0
    mov word [bp - 0x000e], ax       ; 0x1bf3
    jmp near @..math_loc_12b5.l47    ; 0x1bf6
@..math_loc_12b5.l14:
    mov ax, data_0002                ; 0x1bf9
    push ax                          ; 0x1bfc
    lea ax, word [bp - 0x001c]       ; 0x1bfd
    push ax                          ; 0x1c00
    mov ax, data_002e                ; 0x1c01
    push ax                          ; 0x1c04
    mov ax, 8                        ; 0x1c05
    push ax                          ; 0x1c08
    call loc_05b6                    ; 0x1c09
    add sp, byte 8                   ; 0x1c0c
    cmp byte [bp - 0x001c], 0x41     ; 0x1c0f
    jl short @..math_loc_12b5.l15    ; 0x1c13
    cmp byte [bp - 0x001c], 0x5a     ; 0x1c15
    jg short @..math_loc_12b5.l15    ; 0x1c19
    cmp byte [bp - 0x001b], 0x3a     ; 0x1c1b
    je short @..math_loc_12b5.l16    ; 0x1c1f
@..math_loc_12b5.l15:
    mov ax, 1                        ; 0x1c21
    jmp short @..math_loc_12b5.l17   ; 0x1c24
@..math_loc_12b5.l16:
    mov ax, 0                        ; 0x1c26
@..math_loc_12b5.l17:
    mov word [bp - 0x01c2], ax       ; 0x1c29
    cmp ax, strict word 1            ; 0x1c2d
    jne short @..math_loc_12b5.l18   ; 0x1c30
    mov ax, 0x1ea4                   ; 0x1c32
    push ax                          ; 0x1c35
    call math_loc_0992               ; 0x1c36
    pop cx                           ; 0x1c39
@..math_loc_12b5.l18:
    cmp word [bp - 0x01c2], byte 1   ; 0x1c3a
    je short @..math_loc_12b5.l14    ; 0x1c3f
    jmp near @..math_loc_12b5.l47    ; 0x1c41
    mov ax, 0x1ecd                   ; 0x1c44
    push ax                          ; 0x1c47
    call math_loc_0992               ; 0x1c48
    pop cx                           ; 0x1c4b
    jmp near @..math_loc_12b5.l47    ; 0x1c4c
    mov ax, 0x1ef6                   ; 0x1c4f
    push ax                          ; 0x1c52
    push word [bp - 0x0010]          ; 0x1c53
    mov ax, 9                        ; 0x1c56
    push ax                          ; 0x1c59
    call loc_0cd6                    ; 0x1c5a
    add sp, byte 6                   ; 0x1c5d
    mov word [bp - 0x0010], ax       ; 0x1c60
    lea ax, word [bp - 0x0054]       ; 0x1c63
    push ax                          ; 0x1c66
    lea ax, word [bp - 0x003e]       ; 0x1c67
    push ax                          ; 0x1c6a
    push word [bp - 0x0010]          ; 0x1c6b
    call leaf_loc_10a4               ; 0x1c6e
    add sp, byte 6                   ; 0x1c71
    mov ax, 0x1efc                   ; 0x1c74
    push ax                          ; 0x1c77
    mov ax, data_002e                ; 0x1c78
    push ax                          ; 0x1c7b
    mov ax, 9                        ; 0x1c7c
    push ax                          ; 0x1c7f
    call loc_040f                    ; 0x1c80
    add sp, byte 6                   ; 0x1c83
    lea ax, word [bp - 0x003e]       ; 0x1c86
    push ax                          ; 0x1c89
    mov ax, data_002e                ; 0x1c8a
    push ax                          ; 0x1c8d
    mov ax, 9                        ; 0x1c8e
    push ax                          ; 0x1c91
    call loc_040f                    ; 0x1c92
    add sp, byte 6                   ; 0x1c95
    lea ax, word [bp - 0x0054]       ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0x3a                     ; 0x1c9c
    push ax                          ; 0x1c9f
    mov ax, 9                        ; 0x1ca0
    push ax                          ; 0x1ca3
    call loc_040f                    ; 0x1ca4
    add sp, byte 6                   ; 0x1ca7
    jmp near @..math_loc_12b5.l47    ; 0x1caa
@..math_loc_12b5.l19:
    mov ax, data_0002                ; 0x1cad
    push ax                          ; 0x1cb0
    lea ax, word [bp - 0x003e]       ; 0x1cb1
    push ax                          ; 0x1cb4
    mov ax, data_002e                ; 0x1cb5
    push ax                          ; 0x1cb8
    mov ax, 9                        ; 0x1cb9
    push ax                          ; 0x1cbc
    call loc_05b6                    ; 0x1cbd
    add sp, byte 8                   ; 0x1cc0
    cmp byte [bp - 0x003e], 0x41     ; 0x1cc3
    jl short @..math_loc_12b5.l20    ; 0x1cc7
    cmp byte [bp - 0x003e], 0x5a     ; 0x1cc9
    jg short @..math_loc_12b5.l20    ; 0x1ccd
    cmp byte [bp - 0x003d], 0x3a     ; 0x1ccf
    je short @..math_loc_12b5.l21    ; 0x1cd3
@..math_loc_12b5.l20:
    mov ax, 1                        ; 0x1cd5
    jmp short @..math_loc_12b5.l22   ; 0x1cd8
@..math_loc_12b5.l21:
    mov ax, 0                        ; 0x1cda
@..math_loc_12b5.l22:
    mov word [bp - 0x01c2], ax       ; 0x1cdd
    cmp ax, strict word 1            ; 0x1ce1
    jne short @..math_loc_12b5.l23   ; 0x1ce4
    mov ax, 0x1f1e                   ; 0x1ce6
    push ax                          ; 0x1ce9
    call math_loc_0992               ; 0x1cea
    pop cx                           ; 0x1ced
    jmp short @..math_loc_12b5.l24   ; 0x1cee
@..math_loc_12b5.l23:
    mov al, byte [bp - 0x003e]       ; 0x1cf0
    cmp al, byte [bp - 0x001c]       ; 0x1cf3
    jne short @..math_loc_12b5.l24   ; 0x1cf6
    mov ax, 0x1f47                   ; 0x1cf8
    push ax                          ; 0x1cfb
    call math_loc_0992               ; 0x1cfc
    pop cx                           ; 0x1cff
@..math_loc_12b5.l24:
    cmp word [bp - 0x01c2], byte 1   ; 0x1d00
    je short @..math_loc_12b5.l19    ; 0x1d05
    jmp near @..math_loc_12b5.l47    ; 0x1d07
@..math_loc_12b5.l25:
    mov ax, 0x14                     ; 0x1d0a
    push ax                          ; 0x1d0d
    lea ax, word [bp - 0x0054]       ; 0x1d0e
    push ax                          ; 0x1d11
    mov ax, 0x3a                     ; 0x1d12
    push ax                          ; 0x1d15
    mov ax, 9                        ; 0x1d16
    push ax                          ; 0x1d19
    call loc_05b6                    ; 0x1d1a
    add sp, byte 8                   ; 0x1d1d
    cmp word [bp - 0x0010], byte 0   ; 0x1d20
    jne short @..math_loc_12b5.l30   ; 0x1d24
    cmp byte [bp - 0x0054], 0x41     ; 0x1d26
    jl short @..math_loc_12b5.l26    ; 0x1d2a
    cmp byte [bp - 0x0054], 0x5a     ; 0x1d2c
    jg short @..math_loc_12b5.l26    ; 0x1d30
    cmp byte [bp - 0x0053], 0x3a     ; 0x1d32
    jne short @..math_loc_12b5.l26   ; 0x1d36
    lea ax, word [bp - 0x0054]       ; 0x1d38
    push ax                          ; 0x1d3b
    call aztec_strlen                ; 0x1d3c
    pop cx                           ; 0x1d3f
    cmp ax, strict word 2            ; 0x1d40
    jle short @..math_loc_12b5.l27   ; 0x1d43
@..math_loc_12b5.l26:
    mov ax, 1                        ; 0x1d45
    jmp short @..math_loc_12b5.l28   ; 0x1d48
@..math_loc_12b5.l27:
    mov ax, 0                        ; 0x1d4a
@..math_loc_12b5.l28:
    mov word [bp - 0x01c2], ax       ; 0x1d4d
    cmp ax, strict word 1            ; 0x1d51
    jne short @..math_loc_12b5.l29   ; 0x1d54
    mov ax, 0x1f7c                   ; 0x1d56
    push ax                          ; 0x1d59
    call math_loc_0992               ; 0x1d5a
    pop cx                           ; 0x1d5d
@..math_loc_12b5.l29:
    jmp short @..math_loc_12b5.l31   ; 0x1d5e
@..math_loc_12b5.l30:
    mov word [bp - 0x01c2], 0        ; 0x1d60
@..math_loc_12b5.l31:
    cmp word [bp - 0x01c2], byte 1   ; 0x1d66
    je short @..math_loc_12b5.l25    ; 0x1d6b
    jmp near @..math_loc_12b5.l47    ; 0x1d6d
    push word [bp - 0x01a0]          ; 0x1d70
    mov ax, 0x1b                     ; 0x1d74
    push ax                          ; 0x1d77
    mov ax, 0xb                      ; 0x1d78
    push ax                          ; 0x1d7b
    call loc_0d3f                    ; 0x1d7c
    add sp, byte 6                   ; 0x1d7f
    mov word [bp - 0x01a0], ax       ; 0x1d82
    jmp near @..math_loc_12b5.l47    ; 0x1d86
    push word [bp - 0x01a2]          ; 0x1d89
    mov ax, 0x29                     ; 0x1d8d
    push ax                          ; 0x1d90
    mov ax, 0xb                      ; 0x1d91
    push ax                          ; 0x1d94
    call loc_0d3f                    ; 0x1d95
    add sp, byte 6                   ; 0x1d98
    mov word [bp - 0x01a2], ax       ; 0x1d9b
    jmp near @..math_loc_12b5.l47    ; 0x1d9f
@..math_loc_12b5.l32:
    mov ax, 0x14                     ; 0x1da2
    push ax                          ; 0x1da5
    lea ax, word [bp - 0x01b8]       ; 0x1da6
    push ax                          ; 0x1daa
    mov ax, 0x3a                     ; 0x1dab
    push ax                          ; 0x1dae
    mov ax, 0xb                      ; 0x1daf
    push ax                          ; 0x1db2
    call loc_05b6                    ; 0x1db3
    add sp, byte 8                   ; 0x1db6
    lea ax, word [bp - 0x01b8]       ; 0x1db9
    push ax                          ; 0x1dbd
    call aztec_strlen                ; 0x1dbe
    pop cx                           ; 0x1dc1
    mov word [bp - 0x02d8], ax       ; 0x1dc2
    cmp ax, strict word 2            ; 0x1dc6
    jl short @..math_loc_12b5.l33    ; 0x1dc9
    mov bx, ax                       ; 0x1dcb
    add bx, bp                       ; 0x1dcd
    cmp byte [bx - 0x01b9], 0x3a     ; 0x1dcf
    je short @..math_loc_12b5.l34    ; 0x1dd4
@..math_loc_12b5.l33:
    mov ax, 1                        ; 0x1dd6
    jmp short @..math_loc_12b5.l35   ; 0x1dd9
@..math_loc_12b5.l34:
    mov ax, 0                        ; 0x1ddb
@..math_loc_12b5.l35:
    mov word [bp - 0x01c2], ax       ; 0x1dde
    cmp ax, strict word 1            ; 0x1de2
    jne short @..math_loc_12b5.l36   ; 0x1de5
    mov ax, 0x1fa5                   ; 0x1de7
    push ax                          ; 0x1dea
    call math_loc_0992               ; 0x1deb
    pop cx                           ; 0x1dee
@..math_loc_12b5.l36:
    cmp word [bp - 0x01c2], byte 1   ; 0x1def
    je short @..math_loc_12b5.l32    ; 0x1df4
    jmp near @..math_loc_12b5.l47    ; 0x1df6
    push word [bp - 0x0196]          ; 0x1df9
    call loc_0c21                    ; 0x1dfd
    pop cx                           ; 0x1e00
    mov word [bp - 0x0196], ax       ; 0x1e01
    jmp near @..math_loc_12b5.l47    ; 0x1e05
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
    call loc_0823                    ; 0x1e20
    add sp, byte 0x0c                ; 0x1e23
    mov word [bp - 0x01ba], ax       ; 0x1e26
    jmp near @..math_loc_12b5.l47    ; 0x1e2a
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
    call loc_0823                    ; 0x1e45
    add sp, byte 0x0c                ; 0x1e48
    mov word [bp - 0x01bc], ax       ; 0x1e4b
    jmp near @..math_loc_12b5.l47    ; 0x1e4f
    push word [bp - 0x019a]          ; 0x1e52
    mov ax, 0x1b                     ; 0x1e56
    push ax                          ; 0x1e59
    mov ax, 0x12                     ; 0x1e5a
    push ax                          ; 0x1e5d
    call loc_0d3f                    ; 0x1e5e
    add sp, byte 6                   ; 0x1e61
    mov word [bp - 0x019a], ax       ; 0x1e64
    jmp near @..math_loc_12b5.l47    ; 0x1e68
    push word [bp - 0x0198]          ; 0x1e6b
    call loc_0d12                    ; 0x1e6f
    pop cx                           ; 0x1e72
    mov word [bp - 0x0198], ax       ; 0x1e73
    jmp near @..math_loc_12b5.l47    ; 0x1e77
    mov al, byte [bp - 0x001c]       ; 0x1e7a
    cmp al, byte [bp - 0x003e]       ; 0x1e7d
    jne short @..math_loc_12b5.l37   ; 0x1e80
    mov ax, 0x1fce                   ; 0x1e82
    push ax                          ; 0x1e85
    call math_loc_0992               ; 0x1e86
    pop cx                           ; 0x1e89
    mov ax, 0x200a                   ; 0x1e8a
    push ax                          ; 0x1e8d
    call math_loc_0992               ; 0x1e8e
    pop cx                           ; 0x1e91
    jmp near @..math_loc_12b5.l45    ; 0x1e92
@..math_loc_12b5.l37:
    mov ax, word [bp - 0x0010]       ; 0x1e95
    jmp short @..math_loc_12b5.l42   ; 0x1e98
@..math_loc_12b5.l38:
    mov ax, 0x204c                   ; 0x1e9a
    push ax                          ; 0x1e9d
    lea ax, word [bp - 0x0194]       ; 0x1e9e
    push ax                          ; 0x1ea2
    call aztec_strcpy                ; 0x1ea3
    add sp, byte 4                   ; 0x1ea6
    jmp short @..math_loc_12b5.l43   ; 0x1ea9
@..math_loc_12b5.l39:
    mov ax, 0x2062                   ; 0x1eab
    push ax                          ; 0x1eae
    lea ax, word [bp - 0x0194]       ; 0x1eaf
    push ax                          ; 0x1eb3
    call aztec_strcpy                ; 0x1eb4
    add sp, byte 4                   ; 0x1eb7
    jmp short @..math_loc_12b5.l43   ; 0x1eba
@..math_loc_12b5.l40:
    mov ax, 0x207b                   ; 0x1ebc
    push ax                          ; 0x1ebf
    lea ax, word [bp - 0x0194]       ; 0x1ec0
    push ax                          ; 0x1ec4
    call aztec_strcpy                ; 0x1ec5
    add sp, byte 4                   ; 0x1ec8
    jmp short @..math_loc_12b5.l43   ; 0x1ecb
@..math_loc_12b5.l41:
    mov ax, 0x208f                   ; 0x1ecd
    push ax                          ; 0x1ed0
    lea ax, word [bp - 0x0194]       ; 0x1ed1
    push ax                          ; 0x1ed5
    call aztec_strcpy                ; 0x1ed6
    add sp, byte 4                   ; 0x1ed9
    jmp short @..math_loc_12b5.l43   ; 0x1edc
@..math_loc_12b5.l42:
    cmp ax, strict word 0            ; 0x1ede
    je short @..math_loc_12b5.l38    ; 0x1ee1
    cmp ax, strict word 1            ; 0x1ee3
    je short @..math_loc_12b5.l39    ; 0x1ee6
    cmp ax, strict word 2            ; 0x1ee8
    je short @..math_loc_12b5.l40    ; 0x1eeb
    cmp ax, strict word 3            ; 0x1eed
    je short @..math_loc_12b5.l41    ; 0x1ef0
@..math_loc_12b5.l43:
    mov ax, 0x20a8                   ; 0x1ef2
    push ax                          ; 0x1ef5
    mov ax, 0x2648                   ; 0x1ef6
    push ax                          ; 0x1ef9
    call aztec_strcpy                ; 0x1efa
    add sp, byte 4                   ; 0x1efd
    cmp word [bp - 0x0010], byte 4   ; 0x1f00
    je short @..math_loc_12b5.l44    ; 0x1f04
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
    call string_loc_2aa6             ; 0x1f1f
    add sp, byte 4                   ; 0x1f22
    mov ax, 0x20c0                   ; 0x1f25
    push ax                          ; 0x1f28
    lea ax, word [bp - 0x0144]       ; 0x1f29
    push ax                          ; 0x1f2d
    call string_loc_2aa6             ; 0x1f2e
    add sp, byte 4                   ; 0x1f31
    lea ax, word [bp - 0x0144]       ; 0x1f34
    push ax                          ; 0x1f38
    call math_loc_0992               ; 0x1f39
    pop cx                           ; 0x1f3c
    mov ax, 0x20d2                   ; 0x1f3d
    push ax                          ; 0x1f40
    call math_loc_0992               ; 0x1f41
    pop cx                           ; 0x1f44
@..math_loc_12b5.l44:
    mov word [bp - 0x01c6], 1        ; 0x1f45
    mov word [bp - 0x01c0], 1        ; 0x1f4b
    mov word [bp - 0x01ca], 1        ; 0x1f51
@..math_loc_12b5.l45:
    jmp short @..math_loc_12b5.l47   ; 0x1f57
    mov word [bp - 0x01c6], 1        ; 0x1f59
    mov word [bp - 0x01c0], 1        ; 0x1f5f
    mov word [bp - 0x01ca], 0        ; 0x1f65
    jmp short @..math_loc_12b5.l47   ; 0x1f6b
    mov word [bp - 0x01c6], 0        ; 0x1f6d
    mov word [bp - 0x01c0], 1        ; 0x1f73
    mov word [bp - 0x01ca], 0        ; 0x1f79
    jmp short @..math_loc_12b5.l47   ; 0x1f7f

    db 0xe2, 0x19, 0xf9, 0x19, 0x44, 0x1a, 0x4f, 0x1a, 0xad, 0x1a, 0x0a, 0x1b, 0x70, 0x1b, 0x89, 0x1b
    db 0xa2, 0x1b, 0xf9, 0x1b, 0x08, 0x1c, 0x2d, 0x1c, 0x52, 0x1c, 0x6b, 0x1c, 0x7a, 0x1c, 0x59, 0x1d
    db 0x6d, 0x1d

@..math_loc_12b5.l46:
    cmp ax, strict word 0x11         ; 0x1fa3
    jae short @..math_loc_12b5.l47   ; 0x1fa6
    xchg bx, ax                      ; 0x1fa8
    shl bx, 1                        ; 0x1fa9
    jmp [cs:bx + 0x1d81]             ; 0x1fab
@..math_loc_12b5.l47:
    jmp short @..math_loc_12b5.l49   ; 0x1fb0
loc_1fb2:
    jns short loc_1fcd               ; 0x1fb2
    nop                              ; 0x1fb4
    sbb word [bx - 0x41e7], sp       ; 0x1fb5
    sbb si, cx                       ; 0x1fb9
    sbb ax, 0x19d5                   ; 0x1fbb
@..math_loc_12b5.l48:
    sub ax, strict word 8            ; 0x1fbe
    cmp ax, strict word 6            ; 0x1fc1
    jae short @..math_loc_12b5.l49   ; 0x1fc4
    xchg bx, ax                      ; 0x1fc6
    shl bx, 1                        ; 0x1fc7
    jmp [cs:bx + 0x1db2]             ; 0x1fc9
@..math_loc_12b5.l49:
    cmp word [bp - 0x01c0], byte 0   ; 0x1fce
    jne short @..math_loc_12b5.l50   ; 0x1fd3
    jmp near @..math_loc_12b5.l9     ; 0x1fd5
@..math_loc_12b5.l50:
    cmp word [bp - 0x01c6], byte 0   ; 0x1fd8
    jne short @..math_loc_12b5.l51   ; 0x1fdd
    jmp near @..math_loc_12b5.l66    ; 0x1fdf
@..math_loc_12b5.l51:
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
    call string_loc_2aa6             ; 0x2016
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
    call string_loc_2aa6             ; 0x2034
    add sp, byte 4                   ; 0x2037
    cmp word [bp - 0x01ca], byte 0   ; 0x203a
    jne short @..math_loc_12b5.l52   ; 0x203f
    cmp word [bp - 0x0010], byte 4   ; 0x2041
    jne short @..math_loc_12b5.l52   ; 0x2045
    lea ax, word [bp - 0x0054]       ; 0x2047
    push ax                          ; 0x204a
    lea ax, word [bp - 0x00f4]       ; 0x204b
    push ax                          ; 0x204f
    call string_loc_2aa6             ; 0x2050
    add sp, byte 4                   ; 0x2053
    lea ax, word [bp - 0x0054]       ; 0x2056
    push ax                          ; 0x2059
    call aztec_strlen                ; 0x205a
    pop cx                           ; 0x205d
    cmp ax, strict word 0            ; 0x205e
    jle short @..math_loc_12b5.l52   ; 0x2061
    mov ax, 0x2118                   ; 0x2063
    push ax                          ; 0x2066
    lea ax, word [bp - 0x00f4]       ; 0x2067
    push ax                          ; 0x206b
    call string_loc_2aa6             ; 0x206c
    add sp, byte 4                   ; 0x206f
@..math_loc_12b5.l52:
    cmp word [bp - 0x01ca], byte 1   ; 0x2072
    je short @..math_loc_12b5.l53    ; 0x2077
    jmp near @..math_loc_12b5.l61    ; 0x2079
@..math_loc_12b5.l53:
    cmp word [bp - 0x0010], byte 4   ; 0x207c
    je short @..math_loc_12b5.l54    ; 0x2080
    jmp near @..math_loc_12b5.l61    ; 0x2082
@..math_loc_12b5.l54:
    lea ax, word [bp - 0x0054]       ; 0x2085
    push ax                          ; 0x2088
    lea ax, word [bp - 0x00f4]       ; 0x2089
    push ax                          ; 0x208d
    call string_loc_2aa6             ; 0x208e
    add sp, byte 4                   ; 0x2091
    mov ax, 1                        ; 0x2094
    push ax                          ; 0x2097
    lea ax, word [bp - 0x00f4]       ; 0x2098
    push ax                          ; 0x209c
    lea ax, word [bp - 0x003e]       ; 0x209d
    push ax                          ; 0x20a0
    call loc_11ba                    ; 0x20a1
    add sp, byte 6                   ; 0x20a4
    lea ax, word [bp - 0x0054]       ; 0x20a7
    push ax                          ; 0x20aa
    call aztec_strlen                ; 0x20ab
    pop cx                           ; 0x20ae
    cmp ax, strict word 0            ; 0x20af
    jle short @..math_loc_12b5.l55   ; 0x20b2
    mov ax, 0x211a                   ; 0x20b4
    push ax                          ; 0x20b7
    lea ax, word [bp - 0x00f4]       ; 0x20b8
    push ax                          ; 0x20bc
    call string_loc_2aa6             ; 0x20bd
    add sp, byte 4                   ; 0x20c0
@..math_loc_12b5.l55:
    mov ax, 0x211c                   ; 0x20c3
    push ax                          ; 0x20c6
    mov ax, 1                        ; 0x20c7
    push ax                          ; 0x20ca
    lea ax, word [bp - 0x00a4]       ; 0x20cb
    push ax                          ; 0x20cf
    lea ax, word [bp - 0x001c]       ; 0x20d0
    push ax                          ; 0x20d3
    call loc_0dda                    ; 0x20d4
    add sp, byte 8                   ; 0x20d7
    mov ax, 0x2132                   ; 0x20da
    push ax                          ; 0x20dd
    mov ax, 0x2127                   ; 0x20de
    push ax                          ; 0x20e1
    lea ax, word [bp - 0x00f4]       ; 0x20e2
    push ax                          ; 0x20e6
    lea ax, word [bp - 0x00a4]       ; 0x20e7
    push ax                          ; 0x20eb
    call loc_0ed8                    ; 0x20ec
    add sp, byte 8                   ; 0x20ef
    cmp word [bp - 0x000e], byte 3   ; 0x20f2
    je short @..math_loc_12b5.l56    ; 0x20f6
    jmp near @..math_loc_12b5.l57    ; 0x20f8
@..math_loc_12b5.l56:
    mov ax, 0x213e                   ; 0x20fb
    push ax                          ; 0x20fe
    mov ax, 0x2133                   ; 0x20ff
    push ax                          ; 0x2102
    lea ax, word [bp - 0x00f4]       ; 0x2103
    push ax                          ; 0x2107
    lea ax, word [bp - 0x00a4]       ; 0x2108
    push ax                          ; 0x210c
    call loc_0ed8                    ; 0x210d
    add sp, byte 8                   ; 0x2110
    mov ax, 0x214a                   ; 0x2113
    push ax                          ; 0x2116
    mov ax, 0x213f                   ; 0x2117
    push ax                          ; 0x211a
    lea ax, word [bp - 0x00f4]       ; 0x211b
    push ax                          ; 0x211f
    lea ax, word [bp - 0x00a4]       ; 0x2120
    push ax                          ; 0x2124
    call loc_0ed8                    ; 0x2125
    add sp, byte 8                   ; 0x2128
    mov ax, 0x2156                   ; 0x212b
    push ax                          ; 0x212e
    mov ax, 0x214b                   ; 0x212f
    push ax                          ; 0x2132
    lea ax, word [bp - 0x00f4]       ; 0x2133
    push ax                          ; 0x2137
    lea ax, word [bp - 0x00a4]       ; 0x2138
    push ax                          ; 0x213c
    call loc_0ed8                    ; 0x213d
    add sp, byte 8                   ; 0x2140
    mov ax, 0x2157                   ; 0x2143
    push ax                          ; 0x2146
    mov ax, data_0002                ; 0x2147
    push ax                          ; 0x214a
    lea ax, word [bp - 0x00a4]       ; 0x214b
    push ax                          ; 0x214f
    lea ax, word [bp - 0x001c]       ; 0x2150
    push ax                          ; 0x2153
    call loc_0dda                    ; 0x2154
    add sp, byte 8                   ; 0x2157
    mov ax, 0x216d                   ; 0x215a
    push ax                          ; 0x215d
    mov ax, 0x2162                   ; 0x215e
    push ax                          ; 0x2161
    lea ax, word [bp - 0x00f4]       ; 0x2162
    push ax                          ; 0x2166
    lea ax, word [bp - 0x00a4]       ; 0x2167
    push ax                          ; 0x216b
    call loc_0ed8                    ; 0x216c
    add sp, byte 8                   ; 0x216f
    mov ax, 0x2179                   ; 0x2172
    push ax                          ; 0x2175
    mov ax, 0x216e                   ; 0x2176
    push ax                          ; 0x2179
    lea ax, word [bp - 0x00f4]       ; 0x217a
    push ax                          ; 0x217e
    lea ax, word [bp - 0x00a4]       ; 0x217f
    push ax                          ; 0x2183
    call loc_0ed8                    ; 0x2184
    add sp, byte 8                   ; 0x2187
    mov ax, 0x2185                   ; 0x218a
    push ax                          ; 0x218d
    mov ax, 0x217a                   ; 0x218e
    push ax                          ; 0x2191
    lea ax, word [bp - 0x00f4]       ; 0x2192
    push ax                          ; 0x2196
    lea ax, word [bp - 0x00a4]       ; 0x2197
    push ax                          ; 0x219b
    call loc_0ed8                    ; 0x219c
    add sp, byte 8                   ; 0x219f
    mov ax, 0x2191                   ; 0x21a2
    push ax                          ; 0x21a5
    mov ax, 0x2186                   ; 0x21a6
    push ax                          ; 0x21a9
    lea ax, word [bp - 0x00f4]       ; 0x21aa
    push ax                          ; 0x21ae
    lea ax, word [bp - 0x00a4]       ; 0x21af
    push ax                          ; 0x21b3
    call loc_0ed8                    ; 0x21b4
    add sp, byte 8                   ; 0x21b7
@..math_loc_12b5.l57:
    cmp word [bp - 0x000e], byte 2   ; 0x21ba
    je short @..math_loc_12b5.l58    ; 0x21be
    jmp near @..math_loc_12b5.l59    ; 0x21c0
@..math_loc_12b5.l58:
    mov ax, 0x219d                   ; 0x21c3
    push ax                          ; 0x21c6
    mov ax, 0x2192                   ; 0x21c7
    push ax                          ; 0x21ca
    lea ax, word [bp - 0x00f4]       ; 0x21cb
    push ax                          ; 0x21cf
    lea ax, word [bp - 0x00a4]       ; 0x21d0
    push ax                          ; 0x21d4
    call loc_0ed8                    ; 0x21d5
    add sp, byte 8                   ; 0x21d8
    mov ax, 0x219e                   ; 0x21db
    push ax                          ; 0x21de
    mov ax, data_0002                ; 0x21df
    push ax                          ; 0x21e2
    lea ax, word [bp - 0x00a4]       ; 0x21e3
    push ax                          ; 0x21e7
    lea ax, word [bp - 0x001c]       ; 0x21e8
    push ax                          ; 0x21eb
    call loc_0dda                    ; 0x21ec
    add sp, byte 8                   ; 0x21ef
    mov ax, 0x21b4                   ; 0x21f2
    push ax                          ; 0x21f5
    mov ax, 0x21a9                   ; 0x21f6
    push ax                          ; 0x21f9
    lea ax, word [bp - 0x00f4]       ; 0x21fa
    push ax                          ; 0x21fe
    lea ax, word [bp - 0x00a4]       ; 0x21ff
    push ax                          ; 0x2203
    call loc_0ed8                    ; 0x2204
    add sp, byte 8                   ; 0x2207
    mov ax, 0x21c0                   ; 0x220a
    push ax                          ; 0x220d
    mov ax, 0x21b5                   ; 0x220e
    push ax                          ; 0x2211
    lea ax, word [bp - 0x00f4]       ; 0x2212
    push ax                          ; 0x2216
    lea ax, word [bp - 0x00a4]       ; 0x2217
    push ax                          ; 0x221b
    call loc_0ed8                    ; 0x221c
    add sp, byte 8                   ; 0x221f
    mov ax, 0x21cc                   ; 0x2222
    push ax                          ; 0x2225
    mov ax, 0x21c1                   ; 0x2226
    push ax                          ; 0x2229
    lea ax, word [bp - 0x00f4]       ; 0x222a
    push ax                          ; 0x222e
    lea ax, word [bp - 0x00a4]       ; 0x222f
    push ax                          ; 0x2233
    call loc_0ed8                    ; 0x2234
    add sp, byte 8                   ; 0x2237
    mov ax, 0x21cd                   ; 0x223a
    push ax                          ; 0x223d
    mov ax, 3                        ; 0x223e
    push ax                          ; 0x2241
    lea ax, word [bp - 0x00a4]       ; 0x2242
    push ax                          ; 0x2246
    lea ax, word [bp - 0x001c]       ; 0x2247
    push ax                          ; 0x224a
    call loc_0dda                    ; 0x224b
    add sp, byte 8                   ; 0x224e
    mov ax, 0x21e3                   ; 0x2251
    push ax                          ; 0x2254
    mov ax, 0x21d8                   ; 0x2255
    push ax                          ; 0x2258
    lea ax, word [bp - 0x00f4]       ; 0x2259
    push ax                          ; 0x225d
    lea ax, word [bp - 0x00a4]       ; 0x225e
    push ax                          ; 0x2262
    call loc_0ed8                    ; 0x2263
    add sp, byte 8                   ; 0x2266
    mov ax, 0x21ef                   ; 0x2269
    push ax                          ; 0x226c
    mov ax, 0x21e4                   ; 0x226d
    push ax                          ; 0x2270
    lea ax, word [bp - 0x00f4]       ; 0x2271
    push ax                          ; 0x2275
    lea ax, word [bp - 0x00a4]       ; 0x2276
    push ax                          ; 0x227a
    call loc_0ed8                    ; 0x227b
    add sp, byte 8                   ; 0x227e
    mov ax, 0x21f0                   ; 0x2281
    push ax                          ; 0x2284
    mov ax, data_0004                ; 0x2285
    push ax                          ; 0x2288
    lea ax, word [bp - 0x00a4]       ; 0x2289
    push ax                          ; 0x228d
    lea ax, word [bp - 0x001c]       ; 0x228e
    push ax                          ; 0x2291
    call loc_0dda                    ; 0x2292
    add sp, byte 8                   ; 0x2295
    mov ax, 0x2206                   ; 0x2298
    push ax                          ; 0x229b
    mov ax, 0x21fb                   ; 0x229c
    push ax                          ; 0x229f
    lea ax, word [bp - 0x00f4]       ; 0x22a0
    push ax                          ; 0x22a4
    lea ax, word [bp - 0x00a4]       ; 0x22a5
    push ax                          ; 0x22a9
    call loc_0ed8                    ; 0x22aa
    add sp, byte 8                   ; 0x22ad
@..math_loc_12b5.l59:
    cmp word [bp - 0x000e], byte 1   ; 0x22b0
    je short @..math_loc_12b5.l60    ; 0x22b4
    jmp near @..math_loc_12b5.l61    ; 0x22b6
@..math_loc_12b5.l60:
    mov ax, 0x2212                   ; 0x22b9
    push ax                          ; 0x22bc
    mov ax, 0x2207                   ; 0x22bd
    push ax                          ; 0x22c0
    lea ax, word [bp - 0x00f4]       ; 0x22c1
    push ax                          ; 0x22c5
    lea ax, word [bp - 0x00a4]       ; 0x22c6
    push ax                          ; 0x22ca
    call loc_0ed8                    ; 0x22cb
    add sp, byte 8                   ; 0x22ce
    mov ax, 0x221e                   ; 0x22d1
    push ax                          ; 0x22d4
    mov ax, 0x2213                   ; 0x22d5
    push ax                          ; 0x22d8
    lea ax, word [bp - 0x00f4]       ; 0x22d9
    push ax                          ; 0x22dd
    lea ax, word [bp - 0x00a4]       ; 0x22de
    push ax                          ; 0x22e2
    call loc_0ed8                    ; 0x22e3
    add sp, byte 8                   ; 0x22e6
    mov ax, 0x221f                   ; 0x22e9
    push ax                          ; 0x22ec
    mov ax, data_0002                ; 0x22ed
    push ax                          ; 0x22f0
    lea ax, word [bp - 0x00a4]       ; 0x22f1
    push ax                          ; 0x22f5
    lea ax, word [bp - 0x001c]       ; 0x22f6
    push ax                          ; 0x22f9
    call loc_0dda                    ; 0x22fa
    add sp, byte 8                   ; 0x22fd
    mov ax, 0x2235                   ; 0x2300
    push ax                          ; 0x2303
    mov ax, 0x222a                   ; 0x2304
    push ax                          ; 0x2307
    lea ax, word [bp - 0x00f4]       ; 0x2308
    push ax                          ; 0x230c
    lea ax, word [bp - 0x00a4]       ; 0x230d
    push ax                          ; 0x2311
    call loc_0ed8                    ; 0x2312
    add sp, byte 8                   ; 0x2315
    mov ax, 0x2241                   ; 0x2318
    push ax                          ; 0x231b
    mov ax, 0x2236                   ; 0x231c
    push ax                          ; 0x231f
    lea ax, word [bp - 0x00f4]       ; 0x2320
    push ax                          ; 0x2324
    lea ax, word [bp - 0x00a4]       ; 0x2325
    push ax                          ; 0x2329
    call loc_0ed8                    ; 0x232a
    add sp, byte 8                   ; 0x232d
    mov ax, 0x224d                   ; 0x2330
    push ax                          ; 0x2333
    mov ax, 0x2242                   ; 0x2334
    push ax                          ; 0x2337
    lea ax, word [bp - 0x00f4]       ; 0x2338
    push ax                          ; 0x233c
    lea ax, word [bp - 0x00a4]       ; 0x233d
    push ax                          ; 0x2341
    call loc_0ed8                    ; 0x2342
    add sp, byte 8                   ; 0x2345
    mov ax, 0x2259                   ; 0x2348
    push ax                          ; 0x234b
    mov ax, 0x224e                   ; 0x234c
    push ax                          ; 0x234f
    lea ax, word [bp - 0x00f4]       ; 0x2350
    push ax                          ; 0x2354
    lea ax, word [bp - 0x00a4]       ; 0x2355
    push ax                          ; 0x2359
    call loc_0ed8                    ; 0x235a
    add sp, byte 8                   ; 0x235d
    mov ax, 0x225a                   ; 0x2360
    push ax                          ; 0x2363
    mov ax, 3                        ; 0x2364
    push ax                          ; 0x2367
    lea ax, word [bp - 0x00a4]       ; 0x2368
    push ax                          ; 0x236c
    lea ax, word [bp - 0x001c]       ; 0x236d
    push ax                          ; 0x2370
    call loc_0dda                    ; 0x2371
    add sp, byte 8                   ; 0x2374
    mov ax, 0x2270                   ; 0x2377
    push ax                          ; 0x237a
    mov ax, 0x2265                   ; 0x237b
    push ax                          ; 0x237e
    lea ax, word [bp - 0x00f4]       ; 0x237f
    push ax                          ; 0x2383
    lea ax, word [bp - 0x00a4]       ; 0x2384
    push ax                          ; 0x2388
    call loc_0ed8                    ; 0x2389
    add sp, byte 8                   ; 0x238c
@..math_loc_12b5.l61:
    mov ax, word [bp - 0x0010]       ; 0x238f
    jmp short @..math_loc_12b5.l62   ; 0x2392
loc_2394:
    mov word [bp - 0x022c], data_0005 ; 0x2394
    jmp short @..math_loc_12b5.l63   ; 0x239a
loc_239c:
    mov word [bp - 0x022c], data_0002 ; 0x239c
    jmp short @..math_loc_12b5.l63   ; 0x23a2
loc_23a4:
    mov word [bp - 0x022c], data_0004 ; 0x23a4
    jmp short @..math_loc_12b5.l63   ; 0x23aa
loc_23ac:
    mov word [bp - 0x022c], data_0002 ; 0x23ac
    jmp short @..math_loc_12b5.l63   ; 0x23b2
loc_23b4:
    mov word [bp - 0x022c], 1        ; 0x23b4
    jmp short @..math_loc_12b5.l63   ; 0x23ba
    db 0x94, 0x21, 0x9c, 0x21, 0xa4, 0x21, 0xac, 0x21, 0xb4, 0x21
@..math_loc_12b5.l62:
    cmp ax, strict word 5            ; 0x23c6
    jae short @..math_loc_12b5.l63   ; 0x23c9
    xchg bx, ax                      ; 0x23cb
    shl bx, 1                        ; 0x23cc
    jmp [cs:bx + 0x21bc]             ; 0x23ce
@..math_loc_12b5.l63:
    cmp word [bp - 0x0010], byte 4   ; 0x23d3
    je short @..math_loc_12b5.l64    ; 0x23d7
    mov ax, 0x2271                   ; 0x23d9
    push ax                          ; 0x23dc
    mov ax, 0xffff                   ; 0x23dd
    push ax                          ; 0x23e0
    lea ax, word [bp - 0x00f4]       ; 0x23e1
    push ax                          ; 0x23e5
    lea ax, word [bp - 0x003e]       ; 0x23e6
    push ax                          ; 0x23e9
    call loc_0dda                    ; 0x23ea
    add sp, byte 8                   ; 0x23ed
@..math_loc_12b5.l64:
    push word [bp - 0x01c8]          ; 0x23f0
    push word [bp - 0x01bc]          ; 0x23f4
    push word [bp - 0x01ba]          ; 0x23f8
    lea ax, word [bp - 0x01b8]       ; 0x23fc
    push ax                          ; 0x2400
    push word [bp - 0x01a2]          ; 0x2401
    push word [bp - 0x01a0]          ; 0x2405
    push word [bp - 0x019a]          ; 0x2409
    push word [bp - 0x0198]          ; 0x240d
    push word [bp - 0x0196]          ; 0x2411
    push word [bp - 0x022c]          ; 0x2415
    lea ax, word [bp - 0x0054]       ; 0x2419
    push ax                          ; 0x241c
    lea ax, word [bp - 0x00f4]       ; 0x241d
    push ax                          ; 0x2421
    lea ax, word [bp - 0x003e]       ; 0x2422
    push ax                          ; 0x2425
    call aztec_scan                  ; 0x2426
    add sp, byte 0x1a                ; 0x2429
    test ax, ax                      ; 0x242c
    je short @..math_loc_12b5.l65    ; 0x242e
    mov ax, 0x227e                   ; 0x2430
    push ax                          ; 0x2433
    call math_loc_0992               ; 0x2434
    pop cx                           ; 0x2437
    jmp short @..math_loc_12b5.l66   ; 0x2438
@..math_loc_12b5.l65:
    mov ax, 0x22af                   ; 0x243a
    push ax                          ; 0x243d
    call math_loc_0992               ; 0x243e
    pop cx                           ; 0x2441
    mov ax, 0x22e3                   ; 0x2442
    push ax                          ; 0x2445
    call math_loc_0992               ; 0x2446
    pop cx                           ; 0x2449
@..math_loc_12b5.l66:
    mov ax, 3                        ; 0x244a
    push ax                          ; 0x244d
    call loc_06f1                    ; 0x244e
    pop cx                           ; 0x2451
    mov ax, 0                        ; 0x2452
    push ax                          ; 0x2455
    call loc_380b                    ; 0x2456
    pop cx                           ; 0x2459
    mov sp, bp                       ; 0x245a
    pop bp                           ; 0x245c
    ret                              ; 0x245d
loc_245e:
    push bp                          ; 0x245e
    mov bp, sp                       ; 0x245f
    sub sp, byte 4                   ; 0x2461
    push ds                          ; 0x2464
    push es                          ; 0x2465
    push si                          ; 0x2466
    push di                          ; 0x2467
    call bios_video_loc_247a         ; 0x2468
    call bios_mouse_loc_2501         ; 0x246b
    mov ax, word [bp - 0x0002]       ; 0x246e
    pop di                           ; 0x2471
    pop si                           ; 0x2472
    pop es                           ; 0x2473
    pop ds                           ; 0x2474
    mov sp, bp                       ; 0x2475
    pop bp                           ; 0x2477
    ret                              ; 0x2478
    db 0x00
%include "vinstall/bios_video_loc_247a.asm"

%include "vinstall/bios_mouse_loc_2501.asm"

%include "vinstall/dos_con_in_noecho.asm"

bios_video_loc_252e:
    push bp                          ; 0x252e
    mov bp, sp                       ; 0x252f
    push di                          ; 0x2531
    push si                          ; 0x2532
    mov ax, 0x600                    ; 0x2533
    mov bh, byte [data_2647]         ; 0x2536
    xor cx, cx                       ; 0x253a
    mov dx, 0x184f                   ; 0x253c
    push bp                          ; 0x253f
    int 0x10 ; BIOS video
    pop bp                           ; 0x2542
    mov ah, data_0002                ; 0x2543
    xor dx, dx                       ; 0x2545
    mov bx, dx                       ; 0x2547
    int 0x10 ; BIOS video: set cursor position
    pop si                           ; 0x254b
    pop di                           ; 0x254c
    mov sp, bp                       ; 0x254d
    pop bp                           ; 0x254f
    ret                              ; 0x2550
%include "vinstall/bios_video_loc_2551.asm"


    db 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x5e, 0x04, 0x8b, 0x56, 0x06, 0x53, 0x52, 0x8a, 0xf3, 0xb7
    db 0x00, 0xb4, 0x02, 0xcd, 0x10, 0xb8, 0x50, 0x00, 0x5b, 0x2b, 0xc3, 0x8b, 0xf0, 0xb8, 0x18, 0x00
    db 0x5b, 0x2b, 0xc3, 0xb3, 0x50, 0xf6, 0xeb, 0x03, 0xc6, 0x8b, 0xc8, 0xb8, 0x20, 0x09, 0x8a, 0x1e
    db 0x47, 0x26, 0xb7, 0x00, 0xcd, 0x10, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x57
    db 0x56, 0x8b, 0x5e, 0x04, 0x8b, 0x56, 0x06, 0x52, 0x8a, 0xf3, 0xb7, 0x00, 0xb4, 0x02, 0xcd, 0x10
    db 0xb8, 0x50, 0x00, 0x5b, 0x2b, 0xc3, 0x8b, 0xc8, 0xb8, 0x20, 0x09, 0x8a, 0x1e, 0x47, 0x26, 0xb7
    db 0x00, 0xcd, 0x10, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

%include "vinstall/bios_video_loc_25d3.asm"

%include "vinstall/bios_video_loc_2621.asm"


    db 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x5e, 0x04, 0x8a, 0x07, 0x0a, 0xc0, 0x74, 0x3a, 0x53, 0x3c
    db 0x0a, 0x75, 0x14, 0xb4, 0x03, 0xb7, 0x00, 0xcd, 0x10, 0xb2, 0x00, 0xfe, 0xc6, 0xb4, 0x03, 0xb7
    db 0x00, 0xb4, 0x02, 0xcd, 0x10, 0xeb, 0x1d, 0xb4, 0x09, 0x8a, 0x1e, 0x46, 0x26, 0xb7, 0x00, 0xb9
    db 0x01, 0x00, 0xcd, 0x10, 0xb4, 0x03, 0xb7, 0x00, 0xcd, 0x10, 0xfe, 0xc2, 0xb4, 0x03, 0xb7, 0x00
    db 0xb4, 0x02, 0xcd, 0x10, 0x5b, 0x43, 0xeb, 0xc0, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b
    db 0xec, 0x83, 0xec, 0x02, 0x57, 0x56, 0x8b, 0x76, 0x0a, 0x8b, 0x7e, 0x08, 0x8b, 0x46, 0x06, 0x89
    db 0x46, 0xfe, 0xb4, 0x0c, 0x8a, 0x46, 0x0c, 0x33, 0xdb, 0x8b, 0x4e, 0xfe, 0x8b, 0x56, 0x04, 0xcd
    db 0x10, 0xff, 0x46, 0xfe, 0x3b, 0x76, 0xfe, 0x73, 0xe9, 0xff, 0x46, 0x04, 0x3b, 0x7e, 0x04, 0x73
    db 0xdb, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

%include "vinstall/aztec_calloc.asm"

%include "vinstall/bios_kbd_check.asm"

%include "vinstall/bios_video_loc_2720.asm"

%include "vinstall/bios_video_loc_2733.asm"


    db 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x5e, 0x0c, 0xff, 0x4e, 0x04, 0xff, 0x4e, 0x06, 0x8b, 0x56
    db 0x06, 0x8b, 0x46, 0x04, 0x8a, 0xf0, 0x52, 0x89, 0x56, 0x04, 0x89, 0x17, 0x83, 0xc3, 0x02, 0x8b
    db 0x4e, 0x0a, 0x89, 0x0f, 0x83, 0xc3, 0x02, 0x8b, 0x4e, 0x08, 0x89, 0x0f, 0x83, 0xc3, 0x02, 0x51
    db 0x8b, 0xf1, 0x8b, 0xfb, 0x8b, 0x56, 0x04, 0xff, 0x46, 0x04, 0x33, 0xdb, 0xb4, 0x02, 0xcd, 0x10
    db 0xb4, 0x08, 0xcd, 0x10, 0x8b, 0xdf, 0x89, 0x07, 0x83, 0xc3, 0x02, 0x8b, 0xce, 0xe2, 0xe1, 0x59
    db 0x5a, 0xfe, 0xc6, 0xff, 0x4e, 0x0a, 0x74, 0x04, 0x52, 0x51, 0xeb, 0xd4, 0x5e, 0x5f, 0x8b, 0xe5
    db 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x83, 0xec, 0x02, 0x57, 0x56, 0x8b, 0x5e, 0x04, 0x8b, 0x17, 0x52
    db 0x89, 0x56, 0x04, 0x83, 0xc3, 0x02, 0x8b, 0x0f, 0x89, 0x4e, 0xfe, 0x83, 0xc3, 0x02, 0x8b, 0x0f
    db 0x83, 0xc3, 0x02, 0x51, 0x8b, 0xf1, 0x8b, 0xfb, 0x8b, 0x56, 0x04, 0xff, 0x46, 0x04, 0x33, 0xdb
    db 0xb4, 0x02, 0xcd, 0x10, 0x8b, 0xdf, 0x8b, 0x07, 0x8a, 0xdc, 0xb7, 0x00, 0xb9, 0x01, 0x00, 0xb4
    db 0x09, 0xcd, 0x10, 0x8b, 0xdf, 0x83, 0xc3, 0x02, 0x8b, 0xce, 0xe2, 0xd8, 0x59, 0x5a, 0xfe, 0xc6
    db 0xff, 0x4e, 0xfe, 0x74, 0x04, 0x52, 0x51, 0xeb, 0xcb, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

%include "vinstall/aztec_atoi.asm"

%include "vinstall/aztec_atol.asm"

loc_2908:
    push bp                          ; 0x2908
    mov bp, sp                       ; 0x2909
    lea ax, word [bp + 0x6]          ; 0x290b
    push ax                          ; 0x290e
    push word [bp + 0x4]             ; 0x290f
    call aztec_fexecv                ; 0x2912
    add sp, byte 4                   ; 0x2915
    mov sp, bp                       ; 0x2918
    pop bp                           ; 0x291a
    ret                              ; 0x291b
%include "vinstall/aztec_fexecv.asm"

%include "vinstall/aztec_fcbinit.asm"

%include "vinstall/aztec_mkdir.asm"

%include "vinstall/leaf_loc_2a15.asm"

%include "vinstall/aztec_fexec.asm"

%include "vinstall/aztec_wait.asm"

%include "vinstall/string_loc_2aa6.asm"

%include "vinstall/aztec_strcpy.asm"

%include "vinstall/aztec_strncpy.asm"

%include "vinstall/aztec_sysint.asm"

%include "vinstall/aztec_toupper.asm"

%include "vinstall/aztec_tolower.asm"

%include "vinstall/aztec_gmtime.asm"

loc_2bfe:
    push bp                          ; 0x2bfe
    mov bp, sp                       ; 0x2bff
    push di                          ; 0x2c01
    push si                          ; 0x2c02
    push word [bp + 0x8]             ; 0x2c03
    call aztec_fclose                ; 0x2c06
    pop cx                           ; 0x2c09
    mov si, 0x231c                   ; 0x2c0a
@..local.l45:
    cmp byte [si], 0                 ; 0x2c0d
    jne short @..local.l47           ; 0x2c10
    mov word [data_24d6], 1          ; 0x2c12
    mov ax, 0                        ; 0x2c18
@..local.l46:
    pop si                           ; 0x2c1b
    pop di                           ; 0x2c1c
    mov sp, bp                       ; 0x2c1d
    pop bp                           ; 0x2c1f
    ret                              ; 0x2c20
@..local.l47:
    push word [bp + 0x6]             ; 0x2c21
    push si                          ; 0x2c24
    call aztec_strcmp                ; 0x2c25
    add sp, byte 4                   ; 0x2c28
    test ax, ax                      ; 0x2c2b
    je short @..local.l48            ; 0x2c2d
    add si, byte 5                   ; 0x2c2f
    jmp short @..local.l45           ; 0x2c32
@..local.l48:
    push word [si + 0x3]             ; 0x2c34
    push word [bp + 0x4]             ; 0x2c37
    call aztec_open                  ; 0x2c3a
    add sp, byte 4                   ; 0x2c3d
    mov di, ax                       ; 0x2c40
    mov ax, di                       ; 0x2c42
    cmp ax, strict word 0xffff       ; 0x2c44
    jne short @..local.l49           ; 0x2c47
    mov ax, 0                        ; 0x2c49
    jmp short @..local.l46           ; 0x2c4c
@..local.l49:
    mov ax, di                       ; 0x2c4e
    mov bx, word [bp + 0x8]          ; 0x2c50
    mov byte [bx + 0x7], al          ; 0x2c53
    mov bx, word [bp + 0x8]          ; 0x2c56
    mov byte [bx + 0x6], 1           ; 0x2c59
    mov ax, word [bp + 0x8]          ; 0x2c5d
    jmp short @..local.l46           ; 0x2c60
loc_2c62:
    push bp                          ; 0x2c62
    mov bp, sp                       ; 0x2c63
    lea ax, word [bp + 0x6]          ; 0x2c65
    push ax                          ; 0x2c68
    push word [bp + 0x4]             ; 0x2c69
    mov ax, 0x2a7a                   ; 0x2c6c
    push ax                          ; 0x2c6f
    call string_loc_3098             ; 0x2c70
    add sp, byte 6                   ; 0x2c73
    mov sp, bp                       ; 0x2c76
    pop bp                           ; 0x2c78
    ret                              ; 0x2c79
loc_2c7a:
    push bp                          ; 0x2c7a
    mov bp, sp                       ; 0x2c7b
    mov ax, 0x2357                   ; 0x2c7d
    push ax                          ; 0x2c80
    push word [bp + 0x4]             ; 0x2c81
    call aztec_fputs                 ; 0x2c84
    add sp, byte 4                   ; 0x2c87
    mov sp, bp                       ; 0x2c8a
    pop bp                           ; 0x2c8c
    ret                              ; 0x2c8d
%include "vinstall/aztec_fputs.asm"

loc_2cc1:
    push bp                          ; 0x2cc1
    mov bp, sp                       ; 0x2cc2
    push si                          ; 0x2cc4
    mov si, word [bp + 0x6]          ; 0x2cc5
    mov ax, word [si]                ; 0x2cc8
    cmp ax, word [si + 0x2]          ; 0x2cca
    jb short aztec_putc              ; 0x2ccd
    mov ax, word [bp + 0x4]          ; 0x2ccf
    and ax, 0xff                     ; 0x2cd2
    push ax                          ; 0x2cd5
    push si                          ; 0x2cd6
    call aztec_filbuf                ; 0x2cd7
    add sp, byte 4                   ; 0x2cda
loc_2cdd:
    pop si                           ; 0x2cdd
    mov sp, bp                       ; 0x2cde
    pop bp                           ; 0x2ce0
    ret                              ; 0x2ce1
%include "vinstall/aztec_putc.asm"

%include "vinstall/aztec_fclose.asm"

%include "vinstall/aztec_filbuf.asm"

%include "vinstall/leaf_loc_2e45.asm"

loc_2e63:
    push bp                          ; 0x2e63
    mov bp, sp                       ; 0x2e64
    add sp, byte 0xfe                ; 0x2e66
    push si                          ; 0x2e69
    mov si, word [bp + 0x4]          ; 0x2e6a
    mov al, byte [si + 0x7]          ; 0x2e6d
    cbw                              ; 0x2e70
    push ax                          ; 0x2e71
    call aztec_isatty                ; 0x2e72
    pop cx                           ; 0x2e75
    test ax, ax                      ; 0x2e76
    je short @..local.l53            ; 0x2e78
@..local.l51:
    mov word [si + 0x9], 1           ; 0x2e7a
    mov ax, si                       ; 0x2e7f
    add ax, strict word 8            ; 0x2e81
    mov word [si + 0x4], ax          ; 0x2e84
@..local.l52:
    pop si                           ; 0x2e87
    mov sp, bp                       ; 0x2e88
    pop bp                           ; 0x2e8a
    ret                              ; 0x2e8b
@..local.l53:
    mov ax, 0x400                    ; 0x2e8c
    push ax                          ; 0x2e8f
    call aztec_malloc                ; 0x2e90
    pop cx                           ; 0x2e93
    mov word [bp - 0x0002], ax       ; 0x2e94
    test ax, ax                      ; 0x2e97
    je short @..local.l51            ; 0x2e99
    mov word [si + 0x9], 0x400       ; 0x2e9b
    or byte [si + 0x6], data_0002    ; 0x2ea0
    mov ax, word [bp - 0x0002]       ; 0x2ea4
    mov word [si + 0x4], ax          ; 0x2ea7
    jmp short @..local.l52           ; 0x2eaa
%include "vinstall/aztec_realloc.asm"

%include "vinstall/aztec_malloc.asm"

%include "vinstall/leaf_loc_3016.asm"

%include "vinstall/aztec_free.asm"


    db 'LlhFNoxXudiscpneEfgG%@/G/K/N/K/U/^/Z/c/h/h/'
    db 0x8c, 0x30, 0xab, 0x30, 0xd0, 0x30, 0xd3
    db '0{0u0{0{0u0'
    db 0xb3
    db '.0123456789abcdef -lm first', 0

%include "vinstall/string_loc_3098.asm"

%include "vinstall/string_loc_30b3.asm"

loc_30c5:
    mov byte [bp - 0x000c], 0x20     ; 0x30c5
    mov byte [bp - 0x000e], 0        ; 0x30c9
    mov byte [bp - 0x000d], 0        ; 0x30cd
    mov word [bp - 0x0006], 0xffff   ; 0x30d1
loc_30d6:
    lodsb                            ; 0x30d6
    cmp al, 0x2d                     ; 0x30d7
    jne short loc_30e1               ; 0x30d9
    or byte [bp - 0x000b], 8         ; 0x30db
    jmp short loc_30d6               ; 0x30df
loc_30e1:
    cmp al, 0x2b                     ; 0x30e1
    jne short loc_30eb               ; 0x30e3
    mov byte [bp - 0x000e], 0x2b     ; 0x30e5
    jmp short loc_30d6               ; 0x30e9
loc_30eb:
    cmp al, 0x20                     ; 0x30eb
    jne short loc_30fb               ; 0x30ed
    cmp byte [bp - 0x000e], 0        ; 0x30ef
    jne short loc_30d6               ; 0x30f3
    mov byte [bp - 0x000e], 0x20     ; 0x30f5
    jmp short loc_30d6               ; 0x30f9
loc_30fb:
    cmp al, 0x23                     ; 0x30fb
    jne short loc_3105               ; 0x30fd
    or byte [bp - 0x000b], 0x10      ; 0x30ff
    jmp short loc_30d6               ; 0x3103
loc_3105:
    cmp al, data_0030                ; 0x3105
    jne short loc_310e               ; 0x3107
    mov byte [bp - 0x000c], data_0030 ; 0x3109
    lodsb                            ; 0x310d
loc_310e:
    call string_loc_3338             ; 0x310e
    test dx, dx                      ; 0x3111
    jns short loc_311b               ; 0x3113
    neg dx                           ; 0x3115
    or byte [bp - 0x000b], 8         ; 0x3117
loc_311b:
    mov word [bp - 0x0004], dx       ; 0x311b
    cmp al, data_002e                ; 0x311e
    jne short loc_3129               ; 0x3120
    lodsb                            ; 0x3122
    call string_loc_3338             ; 0x3123
    mov word [bp - 0x0006], dx       ; 0x3126
loc_3129:
    mov di, cs                       ; 0x3129
    mov es, di                       ; 0x312b
loc_312d:
    mov di, 0x2e3e                   ; 0x312d
    mov cx, 0x15                     ; 0x3130
    repne scasb                      ; 0x3133
    sub di, strict word 0x2e3f       ; 0x3135
    shl di, 1                        ; 0x3139
    jmp [cs:di + 0x2e53]             ; 0x313b
%include "vinstall/string_loc_3140.asm"

%include "vinstall/string_loc_3147.asm"

%include "vinstall/string_loc_314b.asm"

%include "vinstall/string_loc_314e.asm"

%include "vinstall/leaf_loc_3155.asm"

%include "vinstall/math_loc_315a.asm"

%include "vinstall/math_loc_315e.asm"

%include "vinstall/math_loc_3163.asm"

%include "vinstall/math_loc_3168.asm"

%include "vinstall/string_loc_32d0.asm"

%include "vinstall/string_loc_32d3.asm"

%include "vinstall/leaf_loc_331e.asm"

%include "vinstall/string_loc_3330.asm"

%include "vinstall/string_loc_3338.asm"

%include "vinstall/aztec_creat.asm"

%include "vinstall/aztec_open.asm"


    db 0x57, 0x2b, 0xff, 0x85, 0xd2, 0x79, 0x08, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x47, 0x85
    db 0xdb, 0x79, 0x0b, 0xf7, 0xdb, 0xf7, 0xd9, 0x83, 0xdb, 0x00, 0x81, 0xf7, 0x01, 0x00, 0xe8, 0x39
    db 0x00

@..aztec_lrm.l1:
    test di, di                      ; 0x3438
    je short @..aztec_lrm.l2         ; 0x343a
    neg dx                           ; 0x343c
    neg ax                           ; 0x343e
    sbb dx, byte 0                   ; 0x3440
@..aztec_lrm.l2:
    pop di                           ; 0x3443
    ret                              ; 0x3444
%include "vinstall/aztec_lrm.asm"

%include "vinstall/aztec_lum.asm"

%include "vinstall/aztec_lud.asm"

%include "vinstall/aztec_strcmp.asm"

%include "vinstall/aztec_strncmp.asm"

loc_355b:
    sub di, byte 2                   ; 0x355b
    scasb                            ; 0x355e
    jne short loc_3568               ; 0x355f
    test al, al                      ; 0x3561
    je short loc_3555                ; 0x3563
    mov al, ah                       ; 0x3565
    scasb                            ; 0x3567
loc_3568:
    sbb ax, ax                       ; 0x3568
    js short loc_3557                ; 0x356a
    inc ax                           ; 0x356c
    jmp short loc_3557               ; 0x356d
%include "vinstall/aztec_strlen.asm"

%include "vinstall/aztec_sys.asm"

    times 4 db 0
%include "vinstall/aztec_begin.asm"

dos_proc_loc_3716:
    pop ax                           ; 0x3716
    pop ax                           ; 0x3717
loc_3718:
    mov ah, 0x4c                     ; 0x3718
    int 0x21 ; DOS exit with return code
    jmp far [cs:data_33ce]           ; 0x371c
    times 4 db 0
    pop word [cs:data_3521]          ; 0x3725
    pop word [cs:data_3523]          ; 0x372a
    pop ds                           ; 0x372f
    call loc_3738                    ; 0x3730
    jmp far [cs:data_3521]           ; 0x3733
    push di                          ; 0x3738
    push si                          ; 0x3739
    retf                             ; 0x373a
    mov ax, 0                        ; 0x373b
    ret                              ; 0x373e
%include "vinstall/aztec_Croot.asm"

loc_380b:
    push bp                          ; 0x380b
    mov bp, sp                       ; 0x380c
    call [0x2500]                    ; 0x380e
    push word [bp + 0x4]             ; 0x3812
    call dos_proc_loc_3716           ; 0x3815
    pop cx                           ; 0x3818
    mov sp, bp                       ; 0x3819
    pop bp                           ; 0x381b
    ret                              ; 0x381c
%include "vinstall/leaf_loc_381d.asm"

%include "vinstall/aztec_read.asm"

%include "vinstall/leaf_loc_3833.asm"

%include "vinstall/aztec_write.asm"

%include "vinstall/aztec_close.asm"

%include "vinstall/aztec_lseek.asm"

%include "vinstall/aztec_unlink.asm"

%include "vinstall/aztec_rename.asm"

%include "vinstall/aztec_tty_rd.asm"

%include "vinstall/aztec_tty_wr.asm"

%include "vinstall/aztec_movmem.asm"

%include "vinstall/aztec_isatty.asm"

%include "vinstall/aztec_sbrk.asm"

%include "vinstall/aztec_brk.asm"

%include "vinstall/aztec_rsvstk.asm"


    times 16 db 0
    db 0x0e, 0x00, 0x25, 0x00, 0x3c, 0x00, 0x53, 0x00, 0x6a, 0x00, 0x81, 0x00
    db '0-NO GRAPHICS BOARD   ', 0
    db '1-VGA/MCGA (256 Color)', 0
    db '2-EGA      (16 Color) ', 0
    db '3-CGA      (4 Color)  ', 0
    db '4-HERCULES B/W Mono   ', 0
    db '5-TANDY    (16 Color) ', 0
    db 0x9c, 0x00, 0xa0, 0x00, 0x4f, 0x4e, 0x20, 0x00, 0x4f, 0x46, 0x46, 0x00, 0xb4, 0x00, 0xc8, 0x00
    db 0xdc, 0x00, 0xf0, 0x00, 0x04, 0x01, 0x18, 0x01, 0x2c, 0x01, 0x40, 0x01
    db 'PC INTERNAL SPEAKER', 0
    db 'AD LIB BOARD       ', 0
    db 'COVOX SOUNDMASTER  ', 0
    db 'COVOX VOICEMASTER  ', 0
    db 'SOUND BLASTER      ', 0
    db 'ROLAND LAPC-1/MT-32', 0
    db 'COVOX SMII         ', 0
    db 'NONE               ', 0
    db 0x58, 0x01, 0x5c, 0x01, 0x4e, 0x4f, 0x20, 0x00, 0x59, 0x45, 0x53, 0x00, 0x6a, 0x01, 0x81, 0x01
    db 0x98, 0x01, 0xaf, 0x01, 0xc6, 0x01
    db 'Floppy 5.25L (360k)   ', 0
    db 'Floppy 5.25H (1.2Meg) ', 0
    db 'Floppy 3.5L  (720k)   ', 0
    db 'Floppy 3.5H  (1.44Meg)', 0
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
    db 0x71, 0x0b, 0x04, 0x00, 0x73, 0x0b, 0x7d

%include "vinstall/leaf_loc_3f00.asm"

    db 0x0d, 0xf6, 0x0d, 0x05
@..leaf_loc_3f00.l3:
    add al, bh                       ; 0x4064
    or ax, 0xe05                     ; 0x4066
    pop es                           ; 0x4069
    push cs                          ; 0x406a
    or word [data_0005], cx          ; 0x406b
    or cx, word [data_0e18]          ; 0x406f
    sbb cl, byte [data_0e1c]         ; 0x4073
    add ax, 0x1e00                   ; 0x4077
    push cs                          ; 0x407a
    sub cx, word [data_0e2d]         ; 0x407b
    das                              ; 0x407f
    push cs                          ; 0x4080
    add ax, 0x3100                   ; 0x4081
    push cs                          ; 0x4084
    ds push cs                       ; 0x4085
    inc ax                           ; 0x4087
    push cs                          ; 0x4088
    inc dx                           ; 0x4089
    push cs                          ; 0x408a
    push es                          ; 0x408b
    add byte [si + 0xe], al          ; 0x408c
    dec si                           ; 0x408f
    push cs                          ; 0x4090
    push cx                          ; 0x4091
    push cs                          ; 0x4092
    push sp                          ; 0x4093
    push cs                          ; 0x4094
    push es                          ; 0x4095
    add byte [bx + 0xe], dl          ; 0x4096
    popaw                            ; 0x4099
    push cs                          ; 0x409a
    db 0x65, 0x0e ; push cs
    imul cx, word [data_0006], 0xe6c ; 0x409d
    jbe short @..leaf_loc_3f00.l4    ; 0x40a3
    jp short @..leaf_loc_3f00.l5     ; 0x40a5
    jle short @..leaf_loc_3f00.l6    ; 0x40a7
    push es                          ; 0x40a9
    add byte [bx + di - 0x74f2], al  ; 0x40aa
    push cs                          ; 0x40ae
    lea cx, word [data_0e8f]         ; 0x40af
@..leaf_loc_3f00.l4:
    push es                          ; 0x40b3
    db 0x00
@..leaf_loc_3f00.l5:
    db 0x91, 0x0e
@..leaf_loc_3f00.l6:
    db 0x9b
    push cs                          ; 0x40b8
    lahf                             ; 0x40b9
    push cs                          ; 0x40ba
    mov word [data_060e], ax         ; 0x40bb
    add byte [bp - 0x4ff2], ah       ; 0x40be
    push cs                          ; 0x40c2
    mov dl, 0xe                      ; 0x40c3
    mov ah, 0xe                      ; 0x40c5
    push es                          ; 0x40c7
    add byte [bp - 0x3ff2], dh       ; 0x40c8
    push cs                          ; 0x40cc
    les cx, word [data_0ec8]         ; 0x40cd
    push es                          ; 0x40d1
    add dl, cl                       ; 0x40d2
    push cs                          ; 0x40d4
    aam 0xe                          ; 0x40d5
    salc                             ; 0x40d7
    push cs                          ; 0x40d8
    fmul dword [data_0006]           ; 0x40d9
    fimul dword [data_0ee4]          ; 0x40dd
    out 0xe, ax                      ; 0x40e1
    jmp far 0xec00:data_060e         ; 0x40e3

    db 0x0e, 0xf6, 0x0e, 0xf8, 0x0e, 0xfa, 0x0e, 0x06, 0x00, 0xfc, 0x0e, 0x06, 0x0f, 0x08, 0x0f, 0x0a
    db 0x0f, 0x06, 0x00, 0x0c, 0x0f, 0x16, 0x0f, 0x18, 0x0f, 0x1a, 0x0f, 0x06, 0x00, 0x1c, 0x0f, 0x26
    db 0x0f, 0x2a, 0x0f, 0x2e, 0x0f, 0x06, 0x00, 0x30, 0x0f, 0x3a, 0x0f, 0x3d, 0x0f, 0x40, 0x0f, 0x06
    db 0x00, 0x42, 0x0f, 0x4c, 0x0f, 0x50, 0x0f, 0x54, 0x0f, 0x06, 0x00, 0x56, 0x0f, 0x60, 0x0f, 0x64
    db 0x0f, 0x68, 0x0f, 0x06, 0x00, 0x6a, 0x0f, 0x74, 0x0f, 0x77, 0x0f, 0x7a, 0x0f, 0x06, 0x00, 0x7c
    db 0x0f, 0x86, 0x0f, 0x8a, 0x0f, 0x8e, 0x0f, 0x06, 0x00, 0x90, 0x0f, 0x9a, 0x0f, 0x9c, 0x0f, 0x9e
    db 0x0f, 0x06, 0x00, 0xa0, 0x0f, 0xaa, 0x0f, 0xae, 0x0f, 0xb2, 0x0f, 0x06, 0x00, 0xb4, 0x0f, 0xbe
    db 0x0f, 0xc2, 0x0f, 0xc6, 0x0f, 0x06, 0x00, 0xc8, 0x0f, 0xd2, 0x0f, 0xd6, 0x0f, 0xda, 0x0f, 0x07
    db 0x00, 0xdc, 0x0f, 0xe6, 0x0f, 0xe8, 0x0f, 0xea, 0x0f, 0x07, 0x00, 0xec, 0x0f, 0xf7, 0x0f, 0xf9
    db 0x0f, 0xfb, 0x0f, 0x07, 0x00, 0xfd, 0x0f, 0x08, 0x10, 0x0a, 0x10, 0x0c, 0x10, 0x07, 0x00, 0x0e
    db 0x10, 0x19, 0x10, 0x1b, 0x10, 0x1d, 0x10, 0x07, 0x00, 0x1f, 0x10, 0x2a, 0x10, 0x2c, 0x10, 0x2e
    db 0x10, 0x07, 0x00, 0x30, 0x10, 0x3b, 0x10, 0x3d, 0x10, 0x3f, 0x10, 0x07, 0x00, 0x41, 0x10, 0x4c
    db 0x10, 0x4e, 0x10, 0x50, 0x10, 0x07, 0x00, 0x52, 0x10, 0x5d, 0x10, 0x5f, 0x10, 0x61, 0x10, 0x07
    db 0x00, 0x63, 0x10, 0x6e, 0x10, 0x70, 0x10, 0x72, 0x10, 0x07, 0x00, 0x74, 0x10, 0x81, 0x10, 0x83
    db 0x10, 0x85, 0x10, 0x07, 0x00, 0x87, 0x10, 0x94, 0x10, 0x96, 0x10, 0x98, 0x10, 0x07, 0x00, 0x9a
    db 0x10, 0xa7, 0x10, 0xa9, 0x10, 0xab, 0x10, 0x07, 0x00, 0xad, 0x10, 0xba, 0x10, 0xbc, 0x10, 0xbe
    db 0x10, 0x08, 0x00, 0xc0, 0x10, 0xcc, 0x10, 0xce, 0x10, 0xd0, 0x10, 0x08, 0x00, 0xd2, 0x10, 0xde
    db 0x10, 0xe0, 0x10, 0xe2, 0x10, 0x08, 0x00, 0xe4, 0x10, 0xf0, 0x10, 0xf2, 0x10, 0xf4, 0x10, 0x08
    db 0x00, 0xf6, 0x10, 0x02, 0x11, 0x04, 0x11, 0x06, 0x11, 0x08, 0x00, 0x08, 0x11, 0x14, 0x11, 0x16
    db 0x11, 0x18, 0x11, 0x08, 0x00, 0x1a, 0x11, 0x26, 0x11, 0x2d, 0x11, 0x34, 0x11, 0x08, 0x00, 0x38
    db 0x11, 0x44, 0x11, 0x47, 0x11, 0x4a, 0x11, 0x08, 0x00, 0x4d, 0x11, 0x59, 0x11, 0x5b, 0x11, 0x5d
    db 0x11, 0x08, 0x00, 0x5f, 0x11, 0x6b, 0x11, 0x6d, 0x11, 0x6f, 0x11, 0x08, 0x00, 0x71, 0x11, 0x7d
    db 0x11, 0x7f, 0x11, 0x81, 0x11, 0x08, 0x00, 0x83, 0x11, 0x8f, 0x11, 0x91, 0x11, 0x93, 0x11, 0x08
    db 0x00, 0x95, 0x11, 0xa1, 0x11, 0xa3, 0x11, 0xa5, 0x11, 0x08, 0x00, 0xa7, 0x11, 0xb3, 0x11, 0xb8
    db 0x11, 0xbd, 0x11, 0x08, 0x00, 0xc0, 0x11, 0xcc, 0x11, 0xd2, 0x11, 0xd8, 0x11, 0x08, 0x00, 0xdb
    db 0x11, 0xe7, 0x11, 0xed, 0x11, 0xf3, 0x11, 0x08, 0x00, 0xf6, 0x11, 0x02, 0x12, 0x06, 0x12, 0x0a
    db 0x12, 0x08, 0x00, 0x0d, 0x12, 0x19, 0x12, 0x1c, 0x12, 0x1f, 0x12, 0x08, 0x00, 0x21, 0x12, 0x2d
    db 0x12, 0x2f, 0x12, 0x31, 0x12, 0x08, 0x00, 0x33, 0x12, 0x3f, 0x12, 0x42, 0x12, 0x45, 0x12, 0x08
    db 0x00, 0x47, 0x12, 0x53, 0x12, 0x5b, 0x12, 0x63, 0x12, 0x08, 0x00, 0x66, 0x12, 0x72, 0x12, 0x79
    db 0x12, 0x80, 0x12, 0x08, 0x00, 0x83, 0x12, 0x8f, 0x12, 0x91, 0x12, 0x93, 0x12, 0x08, 0x00, 0x95
    db 0x12, 0xa1, 0x12, 0xa3, 0x12, 0xa5, 0x12, 0x08, 0x00, 0xa7, 0x12, 0xb3, 0x12, 0xb7, 0x12, 0xbb
    db 0x12, 0x08, 0x00, 0xbe, 0x12, 0xca, 0x12, 0xce, 0x12, 0xd2, 0x12, 0x08, 0x00, 0xd4, 0x12, 0xe0
    db 0x12, 0xe5, 0x12, 0xea, 0x12, 0x08, 0x00, 0xed, 0x12, 0xf9, 0x12, 0xfc, 0x12, 0xff, 0x12, 0x08
    db 0x00, 0x01, 0x13, 0x0d, 0x13, 0x0f, 0x13, 0x11, 0x13, 0x08, 0x00, 0x13, 0x13, 0x1f, 0x13, 0x23
    db 0x13, 0x27, 0x13, 0x08, 0x00, 0x2a, 0x13, 0x36, 0x13, 0x3b, 0x13, 0x40, 0x13, 0x08, 0x00, 0x43
    db 0x13, 0x4f, 0x13, 0x54, 0x13, 0x59, 0x13, 0x08, 0x00, 0x5c, 0x13, 0x68, 0x13, 0x6e, 0x13, 0x74
    db 0x13, 0x08, 0x00, 0x77, 0x13, 0x83, 0x13, 0x86, 0x13, 0x89, 0x13, 0x08, 0x00, 0x8c, 0x13, 0x98
    db 0x13, 0x9c, 0x13, 0xa0, 0x13, 0x08, 0x00, 0xa2, 0x13, 0xae, 0x13, 0xb2, 0x13, 0xb6, 0x13, 0x09
    db 0x00, 0xb8, 0x13, 0xc2, 0x13, 0xc4, 0x13, 0xc6, 0x13, 0x09, 0x00, 0xc8, 0x13, 0xd2, 0x13, 0xd6
    db 0x13, 0xda, 0x13, 0x09, 0x00, 0xdc, 0x13, 0xe6, 0x13, 0xe8, 0x13, 0xea, 0x13, 0x09, 0x00, 0xec
    db 0x13, 0xf6, 0x13, 0xf8, 0x13, 0xfa, 0x13, 0x0a, 0x00, 0xfc, 0x13, 0x06, 0x14, 0x09, 0x14, 0x0c
    db 0x14, 0x0a, 0x00, 0x0e, 0x14, 0x18, 0x14, 0x1a, 0x14, 0x1c, 0x14, 0x0a, 0x00, 0x1e, 0x14, 0x28
    db 0x14, 0x2a, 0x14, 0x2c, 0x14, 0x0a, 0x00, 0x2e, 0x14, 0x38, 0x14, 0x3b, 0x14, 0x3e, 0x14, 0xff
    db 0xff, 0x40, 0x14, 0x41, 0x14, 0x42, 0x14, 0x43, 0x14
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
    db 0x00, 0x2e, 0x00, 0x2e
    times 15 db 0
    db 0x72
    times 4 db 0
    db 0x72, 0x2b, 0x00, 0x02, 0x00, 0x77, 0x00, 0x00, 0x01, 0x03, 0x77, 0x2b, 0x00, 0x02, 0x03, 0x61
    db 0x00, 0x00, 0x01, 0x09, 0x61, 0x2b, 0x00, 0x02, 0x09, 0x78, 0x00, 0x00, 0x01, 0x05, 0x78, 0x2b
    db 0x00, 0x02, 0x05
    times 12 db 0
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
    db 0xfe, 0x2a
    times 12 db 0
    db 0xff, 0xff, 0x00, 0x00
    db '8087/80287 is required!'
    db 0x0d, 0x0a, 0x24, 0x3b, 0x35, 0x00
    db 'Too many args.', 0
    db 0x00, 0x01, 0x00, 0x08, 0x00, 0x01
    times 22 db 0
    db 0xd9, 0x36, 0x3e, 0x37, 0x0a, 0x0d

