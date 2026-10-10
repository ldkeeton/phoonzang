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

%include "vinstall/aztec_raise.asm"

%include "vinstall/aztec_vfprintf.asm"

%include "vinstall/aztec_scan.asm"

%include "vinstall/leaf_loc_10a4.asm"

%include "vinstall/bios_video_loc_247a.asm"

%include "vinstall/bios_mouse_loc_2501.asm"

%include "vinstall/dos_con_in_noecho.asm"

%include "vinstall/bios_video_loc_252e.asm"

%include "vinstall/bios_video_loc_2551.asm"

%include "vinstall/bios_video_loc_25d3.asm"

%include "vinstall/bios_video_loc_2621.asm"

%include "vinstall/aztec_calloc.asm"

%include "vinstall/bios_kbd_check.asm"

%include "vinstall/bios_video_loc_2720.asm"

%include "vinstall/bios_video_loc_2733.asm"

aztec_atoi:
    push bp                          ; 0x2806
    mov bp, sp                       ; 0x2807
    add sp, byte 0xfe                ; 0x2809
    push di                          ; 0x280c
    push si                          ; 0x280d
    mov si, word [bp + 0x4]          ; 0x280e
@..aztec_atoi.l1:
    cmp byte [si], 0x20              ; 0x2811
    je short @..aztec_atoi.l2        ; 0x2814
    cmp byte [si], 9                 ; 0x2816
    jne short @..aztec_atoi.l3       ; 0x2819
@..aztec_atoi.l2:
    inc si                           ; 0x281b
    jmp short @..aztec_atoi.l1       ; 0x281c
@..aztec_atoi.l3:
    mov word [bp - 0x0002], 0        ; 0x281e
    cmp byte [si], 0x2d              ; 0x2823
    jne short @..aztec_atoi.l4       ; 0x2826
    mov word [bp - 0x0002], 1        ; 0x2828
    inc si                           ; 0x282d
    jmp short @..aztec_atoi.l5       ; 0x282e
@..aztec_atoi.l4:
    cmp byte [si], 0x2b              ; 0x2830
    jne short @..aztec_atoi.l5       ; 0x2833
    inc si                           ; 0x2835
@..aztec_atoi.l5:
    mov di, 0                        ; 0x2836
    jmp short @..aztec_atoi.l7       ; 0x2839
@..aztec_atoi.l6:
    mov ax, di                       ; 0x283b
    mov dx, ax                       ; 0x283d
    shl ax, 1                        ; 0x283f
    shl ax, 1                        ; 0x2841
    add ax, dx                       ; 0x2843
    shl ax, 1                        ; 0x2845
    push ax                          ; 0x2847
    mov bx, si                       ; 0x2848
    inc si                           ; 0x284a
    mov al, byte [bx]                ; 0x284b
    cbw                              ; 0x284d
    mov cx, ax                       ; 0x284e
    pop ax                           ; 0x2850
    add ax, cx                       ; 0x2851
    add ax, strict word 0xffd0       ; 0x2853
    mov di, ax                       ; 0x2856
@..aztec_atoi.l7:
    mov al, byte [si]                ; 0x2858
    cbw                              ; 0x285a
    mov bx, ax                       ; 0x285b
    mov al, byte [bx + 0x2453]       ; 0x285d
    cbw                              ; 0x2861
    test ax, data_0004               ; 0x2862
    jne short @..aztec_atoi.l6       ; 0x2865
    mov ax, di                       ; 0x2867
    cmp word [bp - 0x0002], byte 0   ; 0x2869
    je short @..aztec_atoi.l8        ; 0x286d
    neg ax                           ; 0x286f
@..aztec_atoi.l8:
    pop si                           ; 0x2871
    pop di                           ; 0x2872
    mov sp, bp                       ; 0x2873
    pop bp                           ; 0x2875
    ret                              ; 0x2876
aztec_atol:
    push bp                          ; 0x2877
    mov bp, sp                       ; 0x2878
    add sp, byte 0xfc                ; 0x287a
    push di                          ; 0x287d
    push si                          ; 0x287e
    mov si, word [bp + 0x4]          ; 0x287f
@..aztec_atol.l1:
    cmp byte [si], 0x20              ; 0x2882
    je short @..aztec_atol.l2        ; 0x2885
    cmp byte [si], 9                 ; 0x2887
    jne short @..aztec_atol.l3       ; 0x288a
@..aztec_atol.l2:
    inc si                           ; 0x288c
    jmp short @..aztec_atol.l1       ; 0x288d
@..aztec_atol.l3:
    mov di, 0                        ; 0x288f
    cmp byte [si], 0x2d              ; 0x2892
    jne short @..aztec_atol.l4       ; 0x2895
    mov di, 1                        ; 0x2897
    inc si                           ; 0x289a
    jmp short @..aztec_atol.l5       ; 0x289b
@..aztec_atol.l4:
    cmp byte [si], 0x2b              ; 0x289d
    jne short @..aztec_atol.l5       ; 0x28a0
    inc si                           ; 0x28a2
@..aztec_atol.l5:
    mov word [bp - 0x0002], 0        ; 0x28a3
    mov word [bp - 0x0004], 0        ; 0x28a8
    jmp short @..aztec_atol.l7       ; 0x28ad
@..aztec_atol.l6:
    mov ax, word [bp - 0x0004]       ; 0x28af
    mov dx, word [bp - 0x0002]       ; 0x28b2
    push ax                          ; 0x28b5
    xchg dx, ax                      ; 0x28b6
    mov bx, 0xa                      ; 0x28b7
    mul bx                           ; 0x28ba
    mov cx, ax                       ; 0x28bc
    pop ax                           ; 0x28be
    mul bx                           ; 0x28bf
    add dx, cx                       ; 0x28c1
    push ax                          ; 0x28c3
    push dx                          ; 0x28c4
    mov bx, si                       ; 0x28c5
    inc si                           ; 0x28c7
    mov al, byte [bx]                ; 0x28c8
    cbw                              ; 0x28ca
    cwd                              ; 0x28cb
    mov cx, ax                       ; 0x28cc
    mov bx, dx                       ; 0x28ce
    pop dx                           ; 0x28d0
    pop ax                           ; 0x28d1
    add ax, cx                       ; 0x28d2
    adc dx, bx                       ; 0x28d4
    add ax, strict word 0xffd0       ; 0x28d6
    adc dx, byte 0xff                ; 0x28d9
    mov word [bp - 0x0002], dx       ; 0x28dc
    mov word [bp - 0x0004], ax       ; 0x28df
@..aztec_atol.l7:
    mov al, byte [si]                ; 0x28e2
    cbw                              ; 0x28e4
    mov bx, ax                       ; 0x28e5
    mov al, byte [bx + 0x2453]       ; 0x28e7
    cbw                              ; 0x28eb
    test ax, data_0004               ; 0x28ec
    jne short @..aztec_atol.l6       ; 0x28ef
    mov ax, word [bp - 0x0004]       ; 0x28f1
    mov dx, word [bp - 0x0002]       ; 0x28f4
    test di, di                      ; 0x28f7
    je short @..aztec_atol.l8        ; 0x28f9
    neg dx                           ; 0x28fb
    neg ax                           ; 0x28fd
    sbb dx, byte 0                   ; 0x28ff
@..aztec_atol.l8:
    pop si                           ; 0x2902
    pop di                           ; 0x2903
    mov sp, bp                       ; 0x2904
    pop bp                           ; 0x2906
    ret                              ; 0x2907
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
aztec_fexecv:
    push bp                          ; 0x291c
    mov bp, sp                       ; 0x291d
    add sp, strict word 0xff5c       ; 0x291f
    push di                          ; 0x2923
    push si                          ; 0x2924
    lea si, word [bp - 0x0083]       ; 0x2925
    mov word [bp - 0x0002], 1        ; 0x2929
    lea ax, word [bp - 0x0094]       ; 0x292e
    push ax                          ; 0x2932
    mov ax, 0x230a                   ; 0x2933
    push ax                          ; 0x2936
    call aztec_fcbinit               ; 0x2937
    add sp, byte 4                   ; 0x293a
    lea ax, word [bp - 0x00a4]       ; 0x293d
    push ax                          ; 0x2941
    mov ax, 0x230c                   ; 0x2942
    push ax                          ; 0x2945
    call aztec_fcbinit               ; 0x2946
    add sp, byte 4                   ; 0x2949
    mov bx, word [bp + 0x6]          ; 0x294c
    cmp word [bx], byte 0            ; 0x294f
    je short @..aztec_fexecv.l6      ; 0x2952
    add word [bp + 0x6], byte 2      ; 0x2954
@..aztec_fexecv.l1:
    mov bx, word [bp + 0x6]          ; 0x2958
    add word [bp + 0x6], byte 2      ; 0x295b
    mov di, word [bx]                ; 0x295f
    test di, di                      ; 0x2961
    je short @..aztec_fexecv.l6      ; 0x2963
    cmp word [bp - 0x0002], byte 1   ; 0x2965
    jne short @..aztec_fexecv.l2     ; 0x2969
    lea ax, word [bp - 0x0094]       ; 0x296b
    push ax                          ; 0x296f
    push di                          ; 0x2970
    call aztec_fcbinit               ; 0x2971
    add sp, byte 4                   ; 0x2974
    jmp short @..aztec_fexecv.l3     ; 0x2977
@..aztec_fexecv.l2:
    cmp word [bp - 0x0002], byte 2   ; 0x2979
    jne short @..aztec_fexecv.l3     ; 0x297d
    lea ax, word [bp - 0x00a4]       ; 0x297f
    push ax                          ; 0x2983
    push di                          ; 0x2984
    call aztec_fcbinit               ; 0x2985
    add sp, byte 4                   ; 0x2988
@..aztec_fexecv.l3:
    mov byte [si], 0x20              ; 0x298b
    inc si                           ; 0x298e
@..aztec_fexecv.l4:
    cmp byte [di], 0                 ; 0x298f
    je short @..aztec_fexecv.l5      ; 0x2992
    lea ax, word [bp - 0x0005]       ; 0x2994
    cmp ax, si                       ; 0x2997
    jbe short @..aztec_fexecv.l6     ; 0x2999
    mov al, byte [di]                ; 0x299b
    mov byte [si], al                ; 0x299d
    inc di                           ; 0x299f
    inc si                           ; 0x29a0
    jmp short @..aztec_fexecv.l4     ; 0x29a1
@..aztec_fexecv.l5:
    inc word [bp - 0x0002]           ; 0x29a3
    jmp short @..aztec_fexecv.l1     ; 0x29a6
@..aztec_fexecv.l6:
    mov ax, si                       ; 0x29a8
    lea cx, word [bp - 0x0083]       ; 0x29aa
    sub ax, cx                       ; 0x29ae
    mov byte [bp - 0x0084], al       ; 0x29b0
    mov byte [si], 0xd               ; 0x29b4
    lea ax, word [bp - 0x00a4]       ; 0x29b7
    push ax                          ; 0x29bb
    lea ax, word [bp - 0x0094]       ; 0x29bc
    push ax                          ; 0x29c0
    lea ax, word [bp - 0x0084]       ; 0x29c1
    push ax                          ; 0x29c5
    mov ax, 0                        ; 0x29c6
    push ax                          ; 0x29c9
    push word [bp + 0x4]             ; 0x29ca
    call aztec_fexec                 ; 0x29cd
    add sp, byte 0x0a                ; 0x29d0
    pop si                           ; 0x29d3
    pop di                           ; 0x29d4
    mov sp, bp                       ; 0x29d5
    pop bp                           ; 0x29d7
    ret                              ; 0x29d8
%include "vinstall/aztec_fcbinit.asm"

%include "vinstall/aztec_mkdir.asm"

%include "vinstall/leaf_loc_2a15.asm"

%include "vinstall/leaf_loc_2a1c.asm"

%include "vinstall/aztec_fexec.asm"

%include "vinstall/aztec_wait.asm"

%include "vinstall/string_loc_2aa6.asm"

%include "vinstall/aztec_strncat.asm"

%include "vinstall/aztec_strcpy.asm"

%include "vinstall/aztec_strncpy.asm"

%include "vinstall/aztec_sysint.asm"

%include "vinstall/aztec_toupper.asm"

%include "vinstall/aztec_tolower.asm"

%include "vinstall/aztec_gmtime.asm"

%include "vinstall/aztec_fputs.asm"

%include "vinstall/aztec_putc.asm"

aztec_fclose:
    push bp                          ; 0x2d0b
    mov bp, sp                       ; 0x2d0c
    push di                          ; 0x2d0e
    push si                          ; 0x2d0f
    mov si, word [bp + 0x4]          ; 0x2d10
    mov di, 0                        ; 0x2d13
    test si, si                      ; 0x2d16
    jne short @..aztec_fclose.l2     ; 0x2d18
    mov ax, 0xffff                   ; 0x2d1a
@..aztec_fclose.l1:
    pop si                           ; 0x2d1d
    pop di                           ; 0x2d1e
    mov sp, bp                       ; 0x2d1f
    pop bp                           ; 0x2d21
    ret                              ; 0x2d22
@..aztec_fclose.l2:
    cmp byte [si + 0x6], 0           ; 0x2d23
    je short @..aztec_fclose.l5      ; 0x2d27
    mov al, byte [si + 0x6]          ; 0x2d29
    cbw                              ; 0x2d2c
    test ax, data_0004               ; 0x2d2d
    je short @..aztec_fclose.l3      ; 0x2d30
    mov ax, 0xffff                   ; 0x2d32
    push ax                          ; 0x2d35
    push si                          ; 0x2d36
    call aztec_filbuf                ; 0x2d37
    add sp, byte 4                   ; 0x2d3a
    mov di, ax                       ; 0x2d3d
@..aztec_fclose.l3:
    mov al, byte [si + 0x7]          ; 0x2d3f
    cbw                              ; 0x2d42
    push ax                          ; 0x2d43
    call aztec_close                 ; 0x2d44
    pop cx                           ; 0x2d47
    or di, ax                        ; 0x2d48
    mov al, byte [si + 0x6]          ; 0x2d4a
    cbw                              ; 0x2d4d
    test ax, data_0002               ; 0x2d4e
    je short @..aztec_fclose.l4      ; 0x2d51
    push word [si + 0x4]             ; 0x2d53
    call aztec_free                  ; 0x2d56
    pop cx                           ; 0x2d59
@..aztec_fclose.l4:
    mov al, byte [si + 0x6]          ; 0x2d5a
    cbw                              ; 0x2d5d
    test ax, 0x20                    ; 0x2d5e
    je short @..aztec_fclose.l5      ; 0x2d61
    push word [si + 0xb]             ; 0x2d63
    call aztec_unlink                ; 0x2d66
    pop cx                           ; 0x2d69
    push word [si + 0xb]             ; 0x2d6a
    call aztec_free                  ; 0x2d6d
    pop cx                           ; 0x2d70
@..aztec_fclose.l5:
    mov ax, 0                        ; 0x2d71
    mov word [si], 0                 ; 0x2d74
    mov word [si + 0x2], ax          ; 0x2d78
    mov word [si + 0x4], ax          ; 0x2d7b
    mov byte [si + 0x6], 0           ; 0x2d7e
    mov ax, di                       ; 0x2d82
    jmp short @..aztec_fclose.l1     ; 0x2d84
%include "vinstall/aztec_filbuf.asm"

%include "vinstall/leaf_loc_2e45.asm"

aztec_realloc:
    push bp                          ; 0x2eac
    mov bp, sp                       ; 0x2ead
    add sp, byte 0xfc                ; 0x2eaf
    push di                          ; 0x2eb2
    push si                          ; 0x2eb3
    mov si, word [bp + 0x4]          ; 0x2eb4
    mov ax, word [si - 0x0002]       ; 0x2eb7
    and ax, strict word 0xfffe       ; 0x2eba
    mov word [bp - 0x0002], ax       ; 0x2ebd
    sub ax, si                       ; 0x2ec0
    mov word [bp - 0x0004], ax       ; 0x2ec2
    cmp ax, word [bp + 0x6]          ; 0x2ec5
    jbe short @..aztec_realloc.l1    ; 0x2ec8
    mov ax, word [bp + 0x6]          ; 0x2eca
    mov word [bp - 0x0004], ax       ; 0x2ecd
    mov cx, si                       ; 0x2ed0
    add cx, ax                       ; 0x2ed2
    mov word [bp - 0x0002], cx       ; 0x2ed4
@..aztec_realloc.l1:
    push si                          ; 0x2ed7
    call aztec_free                  ; 0x2ed8
    pop cx                           ; 0x2edb
    push word [bp + 0x6]             ; 0x2edc
    call aztec_malloc                ; 0x2edf
    pop cx                           ; 0x2ee2
    mov di, ax                       ; 0x2ee3
    test di, di                      ; 0x2ee5
    je short @..aztec_realloc.l2     ; 0x2ee7
    cmp di, si                       ; 0x2ee9
    je short @..aztec_realloc.l2     ; 0x2eeb
    push word [bp - 0x0004]          ; 0x2eed
    push di                          ; 0x2ef0
    push si                          ; 0x2ef1
    call aztec_movmem                ; 0x2ef2
    add sp, byte 6                   ; 0x2ef5
    cmp si, word [data_2536]         ; 0x2ef8
    ja short @..aztec_realloc.l2     ; 0x2efc
    mov ax, word [data_2536]         ; 0x2efe
    cmp ax, word [bp - 0x0002]       ; 0x2f01
    jae short @..aztec_realloc.l2    ; 0x2f04
    mov ax, word [data_2534]         ; 0x2f06
    mov cx, word [data_2536]         ; 0x2f09
    sub cx, si                       ; 0x2f0d
    mov bx, cx                       ; 0x2f0f
    mov word [bx + di], ax           ; 0x2f11
@..aztec_realloc.l2:
    mov ax, di                       ; 0x2f13
    pop si                           ; 0x2f15
    pop di                           ; 0x2f16
    mov sp, bp                       ; 0x2f17
    pop bp                           ; 0x2f19
    ret                              ; 0x2f1a
aztec_malloc:
    push bp                          ; 0x2f1b
    mov bp, sp                       ; 0x2f1c
    add sp, byte 0xfa                ; 0x2f1e
    push di                          ; 0x2f21
    push si                          ; 0x2f22
    mov ax, word [bp + 0x4]          ; 0x2f23
    inc ax                           ; 0x2f26
    inc ax                           ; 0x2f27
    inc ax                           ; 0x2f28
    shr ax, 1                        ; 0x2f29
    shl ax, 1                        ; 0x2f2b
    mov word [bp + 0x4], ax          ; 0x2f2d
    cmp word [data_2536], byte 0     ; 0x2f30
    jne short @..aztec_malloc.l1     ; 0x2f35
    mov word [data_2538], data_2538  ; 0x2f37
    or word [data_2538], 1           ; 0x2f3d
    mov word [data_2536], data_2538  ; 0x2f43
@..aztec_malloc.l1:
    mov word [bp - 0x0006], 0        ; 0x2f49
    mov si, word [data_2536]         ; 0x2f4e
    mov word [bp - 0x0002], si       ; 0x2f52
@..aztec_malloc.l2:
    cmp si, word [data_244e]         ; 0x2f55
    jne short @..aztec_malloc.l5     ; 0x2f59
    inc word [bp - 0x0006]           ; 0x2f5b
    mov ax, word [bp - 0x0006]       ; 0x2f5e
    cmp ax, strict word 1            ; 0x2f61
    jle short @..aztec_malloc.l5     ; 0x2f64
    mov word [bp - 0x0004], 0x400    ; 0x2f66
    push word [bp - 0x0004]          ; 0x2f6b
    call aztec_sbrk                  ; 0x2f6e
    pop cx                           ; 0x2f71
    mov di, ax                       ; 0x2f72
    mov ax, di                       ; 0x2f74
    cmp ax, strict word 0xffff       ; 0x2f76
    jne short @..aztec_malloc.l3     ; 0x2f79
    mov ax, 0                        ; 0x2f7b
loc_2f7e:
    pop si                           ; 0x2f7e
    pop di                           ; 0x2f7f
    mov sp, bp                       ; 0x2f80
    pop bp                           ; 0x2f82
    ret                              ; 0x2f83
@..aztec_malloc.l3:
    mov ax, si                       ; 0x2f84
    add ax, strict word 2            ; 0x2f86
    cmp di, ax                       ; 0x2f89
    je short @..aztec_malloc.l4      ; 0x2f8b
    mov word [si], di                ; 0x2f8d
    or word [si], 1                  ; 0x2f8f
    dec word [bp - 0x0004]           ; 0x2f93
    dec word [bp - 0x0004]           ; 0x2f96
    mov si, di                       ; 0x2f99
@..aztec_malloc.l4:
    mov di, si                       ; 0x2f9b
    add di, word [bp - 0x0004]       ; 0x2f9d
    mov word [si], di                ; 0x2fa0
    mov word [di], data_2538         ; 0x2fa2
    or word [di], 1                  ; 0x2fa6
    mov word [data_244e], di         ; 0x2faa
    mov bx, word [bp - 0x0002]       ; 0x2fae
    mov ax, word [bx]                ; 0x2fb1
    and ax, strict word 0xfffe       ; 0x2fb3
    cmp ax, si                       ; 0x2fb6
    jne short @..aztec_malloc.l5     ; 0x2fb8
    mov si, bx                       ; 0x2fba
@..aztec_malloc.l5:
    test word [si], 1                ; 0x2fbc
    jne short @..aztec_malloc.l9     ; 0x2fc0
    mov word [bp - 0x0002], si       ; 0x2fc2
@..aztec_malloc.l6:
    mov ax, word [si]                ; 0x2fc5
    and ax, strict word 0xfffe       ; 0x2fc7
    mov di, ax                       ; 0x2fca
    mov bx, di                       ; 0x2fcc
    test word [bx], 1                ; 0x2fce
    jne short @..aztec_malloc.l7     ; 0x2fd2
    mov ax, word [di]                ; 0x2fd4
    mov word [si], ax                ; 0x2fd6
    jmp short @..aztec_malloc.l6     ; 0x2fd8
@..aztec_malloc.l7:
    sub bx, si                       ; 0x2fda
    mov word [bp - 0x0004], bx       ; 0x2fdc
    cmp bx, word [bp + 0x4]          ; 0x2fdf
    jb short @..aztec_malloc.l9      ; 0x2fe2
    cmp bx, word [bp + 0x4]          ; 0x2fe4
    jbe short @..aztec_malloc.l8     ; 0x2fe7
    mov ax, si                       ; 0x2fe9
    add ax, word [bp + 0x4]          ; 0x2feb
    mov word [si], ax                ; 0x2fee
    mov bx, ax                       ; 0x2ff0
    mov ax, word [bx]                ; 0x2ff2
    mov word [data_2534], ax         ; 0x2ff4
    mov bx, word [si]                ; 0x2ff7
    mov word [bx], di                ; 0x2ff9
@..aztec_malloc.l8:
    mov ax, word [si]                ; 0x2ffb
    mov word [data_2536], ax         ; 0x2ffd
    or word [si], 1                  ; 0x3000
    mov ax, si                       ; 0x3004
    add ax, strict word 2            ; 0x3006
    jmp near loc_2f7e                ; 0x3009
@..aztec_malloc.l9:
    mov ax, word [si]                ; 0x300c
    and ax, strict word 0xfffe       ; 0x300e
    mov si, ax                       ; 0x3011
    jmp near @..aztec_malloc.l2      ; 0x3013
%include "vinstall/leaf_loc_3016.asm"

aztec_free:
    push bp                          ; 0x3019
    mov bp, sp                       ; 0x301a
    push si                          ; 0x301c
    mov si, word [bp + 0x4]          ; 0x301d
    add si, byte 0xfe                ; 0x3020
    test word [si], 1                ; 0x3023
    jne short @..aztec_free.l2       ; 0x3027
    mov ax, 0xffff                   ; 0x3029
@..aztec_free.l1:
    pop si                           ; 0x302c
    mov sp, bp                       ; 0x302d
    pop bp                           ; 0x302f
    ret                              ; 0x3030
@..aztec_free.l2:
    and word [si], strict word 0xfffe ; 0x3031
    mov word [data_2536], si         ; 0x3035
    mov ax, 0                        ; 0x3039
    jmp short @..aztec_free.l1       ; 0x303c

    db 'LlhFNoxXudiscpneEfgG%@/G/K/N/K/U/^/Z/c/h/h/'
    db 0x8c, 0x30, 0xab, 0x30, 0xd0, 0x30, 0xd3
    db '0{0u0{0{0u0'
    db 0xb3
    db '.0123456789abcdef -lm first', 0

%include "vinstall/string_loc_3098.asm"

%include "vinstall/string_loc_30b3.asm"

%include "vinstall/string_loc_3140.asm"

%include "vinstall/string_loc_3147.asm"

%include "vinstall/string_loc_314b.asm"

%include "vinstall/string_loc_314e.asm"

%include "vinstall/leaf_loc_3155.asm"

%include "vinstall/leaf_loc_315a.asm"

%include "vinstall/leaf_loc_315e.asm"

%include "vinstall/leaf_loc_3163.asm"

%include "vinstall/leaf_loc_3168.asm"

%include "vinstall/string_loc_32d0.asm"

%include "vinstall/string_loc_32d3.asm"

%include "vinstall/leaf_loc_331e.asm"

%include "vinstall/string_loc_3330.asm"

%include "vinstall/string_loc_3338.asm"

aztec_creat:
    push bp                          ; 0x336a
    mov bp, sp                       ; 0x336b
    push word [bp + 0x6]             ; 0x336d
    mov ax, 0x301                    ; 0x3370
    push ax                          ; 0x3373
    push word [bp + 0x4]             ; 0x3374
    call aztec_open                  ; 0x3377
    add sp, byte 6                   ; 0x337a
    mov sp, bp                       ; 0x337d
    pop bp                           ; 0x337f
    ret                              ; 0x3380
aztec_open:
    push bp                          ; 0x3381
    mov bp, sp                       ; 0x3382
    push di                          ; 0x3384
    push si                          ; 0x3385
    mov ax, word [bp + 0x6]          ; 0x3386
    and ax, 0xf3                     ; 0x3389
    mov di, ax                       ; 0x338c
    or ax, 0x3d00                    ; 0x338e
    mov di, ax                       ; 0x3391
    test word [bp + 0x6], leaf_loc_0200 ; 0x3393
    je short @..aztec_open.l1        ; 0x3398
    mov di, 0x3c00                   ; 0x339a
@..aztec_open.l1:
    mov ax, 0                        ; 0x339d
    push ax                          ; 0x33a0
    push word [bp + 0x4]             ; 0x33a1
    push di                          ; 0x33a4
    call aztec_sys                   ; 0x33a5
    add sp, byte 6                   ; 0x33a8
    mov si, ax                       ; 0x33ab
    mov ax, si                       ; 0x33ad
    cmp ax, strict word 0xffff       ; 0x33af
    jne short @..aztec_open.l3       ; 0x33b2
    test word [bp + 0x6], 0x100      ; 0x33b4
    je short @..aztec_open.l2        ; 0x33b9
    mov ax, 0                        ; 0x33bb
    push ax                          ; 0x33be
    push word [bp + 0x4]             ; 0x33bf
    mov ax, 0x3c                     ; 0x33c2
    push ax                          ; 0x33c5
    call aztec_sys                   ; 0x33c6
    add sp, byte 6                   ; 0x33c9
    mov si, ax                       ; 0x33cc
@..aztec_open.l2:
    jmp short @..aztec_open.l5       ; 0x33ce
@..aztec_open.l3:
    test word [bp + 0x6], 0x400      ; 0x33d0
    je short @..aztec_open.l5        ; 0x33d5
    push si                          ; 0x33d7
    call aztec_close                 ; 0x33d8
    pop cx                           ; 0x33db
    mov word [data_24d6], 0x13       ; 0x33dc
    mov ax, 0xffff                   ; 0x33e2
@..aztec_open.l4:
    pop si                           ; 0x33e5
    pop di                           ; 0x33e6
    mov sp, bp                       ; 0x33e7
    pop bp                           ; 0x33e9
    ret                              ; 0x33ea
@..aztec_open.l5:
    cmp si, byte 0                   ; 0x33eb
    jl short @..aztec_open.l7        ; 0x33ee
    test word [bp + 0x6], 0x800      ; 0x33f0
    je short @..aztec_open.l6        ; 0x33f5
    mov ax, data_0002                ; 0x33f7
    push ax                          ; 0x33fa
    mov ax, 0                        ; 0x33fb
    mov dx, 0                        ; 0x33fe
    push dx                          ; 0x3401
    push ax                          ; 0x3402
    push si                          ; 0x3403
    call aztec_lseek                 ; 0x3404
    add sp, byte 8                   ; 0x3407
@..aztec_open.l6:
    push si                          ; 0x340a
    call aztec_isatty                ; 0x340b
    pop cx                           ; 0x340e
    mov byte [si + 0x251a], al       ; 0x340f
@..aztec_open.l7:
    mov ax, si                       ; 0x3413
    jmp short @..aztec_open.l4       ; 0x3415

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

%include "vinstall/aztec_strlen.asm"

%include "vinstall/aztec_sys.asm"

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
aztec_Croot:
    push bp                          ; 0x373f
    mov bp, sp                       ; 0x3740
    push di                          ; 0x3742
    push si                          ; 0x3743
    mov si, word [bp + 0x4]          ; 0x3744
    mov ax, 0                        ; 0x3747
    push ax                          ; 0x374a
    call aztec_isatty                ; 0x374b
    pop cx                           ; 0x374e
    mov byte [data_251a], al         ; 0x374f
    mov ax, 1                        ; 0x3752
    push ax                          ; 0x3755
    call aztec_isatty                ; 0x3756
    pop cx                           ; 0x3759
    mov byte [data_251b], al         ; 0x375a
    mov ax, data_0002                ; 0x375d
    push ax                          ; 0x3760
    call aztec_isatty                ; 0x3761
    pop cx                           ; 0x3764
    mov byte [data_251c], al         ; 0x3765
    mov ax, word [bp + 0x6]          ; 0x3768
    shl ax, 1                        ; 0x376b
    inc ax                           ; 0x376d
    inc ax                           ; 0x376e
    push ax                          ; 0x376f
    call aztec_sbrk                  ; 0x3770
    pop cx                           ; 0x3773
    mov word [data_253c], ax         ; 0x3774
    mov ax, 0x2502                   ; 0x3777
    mov bx, word [data_253c]         ; 0x377a
    mov word [bx], 0x2502            ; 0x377e
    mov ax, word [bp + 0x6]          ; 0x3782
    mov word [data_253a], ax         ; 0x3785
    shl ax, 1                        ; 0x3788
    mov di, word [data_253c]         ; 0x378a
    add di, ax                       ; 0x378e
@..aztec_Croot.l1:
    cmp byte [si], 0x20              ; 0x3790
    je short @..aztec_Croot.l2       ; 0x3793
    cmp byte [si], 9                 ; 0x3795
    jne short @..aztec_Croot.l3      ; 0x3798
@..aztec_Croot.l2:
    inc si                           ; 0x379a
    jmp short @..aztec_Croot.l1      ; 0x379b
@..aztec_Croot.l3:
    cmp byte [si], 0                 ; 0x379d
    je short @..aztec_Croot.l8       ; 0x37a0
    mov word [di], si                ; 0x37a2
    inc di                           ; 0x37a4
    inc di                           ; 0x37a5
    inc word [data_253a]             ; 0x37a6
    mov ax, data_0002                ; 0x37aa
    push ax                          ; 0x37ad
    call aztec_sbrk                  ; 0x37ae
    pop cx                           ; 0x37b1
    cmp ax, strict word 0xffff       ; 0x37b2
    jne short @..aztec_Croot.l4      ; 0x37b5
    mov ax, 0xe                      ; 0x37b7
    push ax                          ; 0x37ba
    mov ax, 0x2503                   ; 0x37bb
    push ax                          ; 0x37be
    mov ax, data_0002                ; 0x37bf
    push ax                          ; 0x37c2
    call aztec_write                 ; 0x37c3
    add sp, byte 6                   ; 0x37c6
    mov ax, 0xc8                     ; 0x37c9
    push ax                          ; 0x37cc
    call dos_proc_loc_3716           ; 0x37cd
    pop cx                           ; 0x37d0
@..aztec_Croot.l4:
    inc si                           ; 0x37d1
    cmp byte [si], 0                 ; 0x37d2
    je short @..aztec_Croot.l7       ; 0x37d5
    mov al, byte [si]                ; 0x37d7
    cmp al, 0x20                     ; 0x37d9
    je short @..aztec_Croot.l5       ; 0x37db
    cmp al, 9                        ; 0x37dd
    jne short @..aztec_Croot.l6      ; 0x37df
@..aztec_Croot.l5:
    mov byte [si], 0                 ; 0x37e1
    inc si                           ; 0x37e4
    jmp short @..aztec_Croot.l7      ; 0x37e5
@..aztec_Croot.l6:
    jmp short @..aztec_Croot.l4      ; 0x37e7
@..aztec_Croot.l7:
    jmp short @..aztec_Croot.l1      ; 0x37e9
@..aztec_Croot.l8:
    mov word [di], 0                 ; 0x37eb
    push word [data_253c]            ; 0x37ef
    push word [data_253a]            ; 0x37f3
    call loc_12b5                    ; 0x37f7
    add sp, byte 4                   ; 0x37fa
    mov ax, 0                        ; 0x37fd
    push ax                          ; 0x3800
    call loc_380b                    ; 0x3801
    pop cx                           ; 0x3804
    pop si                           ; 0x3805
    pop di                           ; 0x3806
    mov sp, bp                       ; 0x3807
    pop bp                           ; 0x3809
    ret                              ; 0x380a
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

%include "vinstall/leaf_loc_3829.asm"

%include "vinstall/leaf_loc_3833.asm"

%include "vinstall/aztec_write.asm"

%include "vinstall/aztec_close.asm"

%include "vinstall/aztec_lseek.asm"

%include "vinstall/aztec_unlink.asm"

%include "vinstall/aztec_rename.asm"

aztec_tty_rd:
    push bp                          ; 0x38d9
    mov bp, sp                       ; 0x38da
    push si                          ; 0x38dc
    mov si, word [data_2afc]         ; 0x38dd
    test si, si                      ; 0x38e1
    jne short @..aztec_tty_rd.l2     ; 0x38e3
    mov ax, 0x104                    ; 0x38e5
    push ax                          ; 0x38e8
    mov ax, 0x253e                   ; 0x38e9
    push ax                          ; 0x38ec
    push word [bp + 0x4]             ; 0x38ed
    call aztec_read                  ; 0x38f0
    add sp, byte 6                   ; 0x38f3
    mov si, ax                       ; 0x38f6
    test si, si                      ; 0x38f8
    je short @..aztec_tty_rd.l1      ; 0x38fa
    cmp byte [si + 0x253d], 0xa      ; 0x38fc
    jne short @..aztec_tty_rd.l1     ; 0x3901
    dec si                           ; 0x3903
    mov al, byte [data_2532]         ; 0x3904
    mov byte [si + 0x253d], al       ; 0x3907
@..aztec_tty_rd.l1:
    mov word [data_2642], 0x253e     ; 0x390b
    mov word [data_2afc], si         ; 0x3911
@..aztec_tty_rd.l2:
    cmp si, word [bp + 0x8]          ; 0x3915
    jle short @..aztec_tty_rd.l3     ; 0x3918
    mov si, word [bp + 0x8]          ; 0x391a
@..aztec_tty_rd.l3:
    test si, si                      ; 0x391d
    je short @..aztec_tty_rd.l4      ; 0x391f
    push si                          ; 0x3921
    push word [bp + 0x6]             ; 0x3922
    push word [data_2642]            ; 0x3925
    call aztec_movmem                ; 0x3929
    add sp, byte 6                   ; 0x392c
@..aztec_tty_rd.l4:
    add word [data_2642], si         ; 0x392f
    sub word [data_2afc], si         ; 0x3933
    mov ax, si                       ; 0x3937
    pop si                           ; 0x3939
    mov sp, bp                       ; 0x393a
    pop bp                           ; 0x393c
    ret                              ; 0x393d
aztec_tty_wr:
    push bp                          ; 0x393e
    mov bp, sp                       ; 0x393f
    push di                          ; 0x3941
    push si                          ; 0x3942
    mov di, word [bp + 0x6]          ; 0x3943
    mov si, word [bp + 0x8]          ; 0x3946
    jmp short @..aztec_tty_wr.l2     ; 0x3949
@..aztec_tty_wr.l1:
    mov bx, di                       ; 0x394b
    inc di                           ; 0x394d
    cmp byte [bx], 0xa               ; 0x394e
    jne short @..aztec_tty_wr.l2     ; 0x3951
    mov ax, di                       ; 0x3953
    sub ax, word [bp + 0x6]          ; 0x3955
    push ax                          ; 0x3958
    push word [bp + 0x6]             ; 0x3959
    push word [bp + 0x4]             ; 0x395c
    call leaf_loc_3829               ; 0x395f
    add sp, byte 6                   ; 0x3962
    mov ax, 1                        ; 0x3965
    push ax                          ; 0x3968
    mov ax, 0x2533                   ; 0x3969
    push ax                          ; 0x396c
    push word [bp + 0x4]             ; 0x396d
    call leaf_loc_3829               ; 0x3970
    add sp, byte 6                   ; 0x3973
    mov word [bp + 0x6], di          ; 0x3976
@..aztec_tty_wr.l2:
    mov ax, si                       ; 0x3979
    dec si                           ; 0x397b
    test ax, ax                      ; 0x397c
    jne short @..aztec_tty_wr.l1     ; 0x397e
    cmp di, word [bp + 0x6]          ; 0x3980
    je short @..aztec_tty_wr.l3      ; 0x3983
    mov ax, di                       ; 0x3985
    sub ax, word [bp + 0x6]          ; 0x3987
    push ax                          ; 0x398a
    push word [bp + 0x6]             ; 0x398b
    push word [bp + 0x4]             ; 0x398e
    call leaf_loc_3829               ; 0x3991
    add sp, byte 6                   ; 0x3994
@..aztec_tty_wr.l3:
    mov ax, word [bp + 0x8]          ; 0x3997
    pop si                           ; 0x399a
    pop di                           ; 0x399b
    mov sp, bp                       ; 0x399c
    pop bp                           ; 0x399e
    ret                              ; 0x399f
%include "vinstall/aztec_movmem.asm"

%include "vinstall/aztec_isatty.asm"

%include "vinstall/aztec_sbrk.asm"

%include "vinstall/aztec_brk.asm"

%include "vinstall/aztec_rsvstk.asm"

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

