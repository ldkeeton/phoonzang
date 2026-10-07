%include "structs/structs.inc"
%include "structs/data_4540.inc"
org 0
bits 16
data_01e1 equ 0x01e1
data_01e5 equ 0x01e5
data_01e9 equ 0x01e9
data_01f7 equ 0x01f7
data_01fb equ 0x01fb
data_01ff equ 0x01ff
data_0201 equ 0x0201
data_0203 equ 0x0203
data_0205 equ 0x0205
data_0206 equ 0x0206
data_020e equ 0x020e
data_0212 equ 0x0212
data_0216 equ 0x0216
data_021a equ 0x021a
data_021e equ 0x021e
data_0222 equ 0x0222
data_0226 equ 0x0226
data_0227 equ 0x0227
data_0228 equ 0x0228
data_027b equ 0x027b
data_0291 equ 0x0291
data_0295 equ 0x0295
data_0297 equ 0x0297
data_0299 equ 0x0299
data_0391 equ 0x0391
data_0a48 equ 0x0a48
data_11cb equ 0x11cb
data_11cd equ 0x11cd
data_148e equ 0x148e
dos_con_loc_1501 equ 0x1501
data_1bd5 equ 0x1bd5
data_1bd7 equ 0x1bd7
data_1bd9 equ 0x1bd9
data_1bdb equ 0x1bdb
data_1bdd equ 0x1bdd
data_1be1 equ 0x1be1
data_1be3 equ 0x1be3
data_1be5 equ 0x1be5
data_1beb equ 0x1beb
data_1bed equ 0x1bed
data_1bef equ 0x1bef
data_1bf1 equ 0x1bf1
data_1bf3 equ 0x1bf3
data_1bf5 equ 0x1bf5
data_1bf7 equ 0x1bf7
data_1bf9 equ 0x1bf9
data_1bfb equ 0x1bfb
data_258d equ 0x258d
data_258f equ 0x258f
data_2591 equ 0x2591
data_2599 equ 0x2599
data_259b equ 0x259b
data_259d equ 0x259d
data_2b02 equ 0x2b02
data_2b04 equ 0x2b04
data_2b06 equ 0x2b06
data_2b08 equ 0x2b08
data_3296 equ 0x3296
data_3297 equ 0x3297
data_36dd equ 0x36dd
data_3705 equ 0x3705
data_3b21 equ 0x3b21
data_3b22 equ 0x3b22
data_3b34 equ 0x3b34
data_4540 equ 0x4540
dos_read_file_7 equ 0x4af7

loc_0000:
    jmp near @..local.l1             ; 0x0000
@..local.l1:
    call mouse_init                  ; 0x0003
    retf                             ; 0x0006

    db 0xe8, 0x06, 0x18, 0xcb, 0xe8, 0x01, 0x19, 0xcb, 0xe8, 0xee, 0x18, 0xcb, 0xe8, 0xab, 0x18, 0xcb
    db 0xe8, 0x6b, 0x30, 0xcb, 0xe8, 0x00, 0x36, 0xcb, 0xe8, 0xd1, 0x0d, 0xcb, 0xe8, 0xa9, 0x10, 0xcb
    db 0xe8, 0xae, 0x14, 0xcb, 0xe8, 0x07, 0x30, 0xcb, 0xe8, 0x61, 0x02, 0xcb, 0xe8, 0x11, 0x04, 0xcb
    db 0xe8, 0x28, 0x04, 0xcb, 0xe8, 0x3f, 0x04, 0xcb, 0xe8, 0x54, 0x04, 0xcb, 0xe8, 0x6b, 0x04, 0xcb
    db 0xe8, 0x85, 0x0b, 0xcb, 0xe8, 0xa8, 0x0b, 0xcb, 0xe8, 0xf3, 0x0b, 0xcb, 0xe8, 0x45, 0x0c, 0xcb
    db 0xe8, 0xfd, 0x0c, 0xcb, 0xe8, 0xdf, 0x2f, 0xcb, 0xe8, 0x30, 0x19, 0xcb, 0xe8, 0x5b, 0x19, 0xcb
    db 0xe8, 0xcf, 0x03, 0xcb, 0xe8, 0x4f, 0x0e, 0xcb, 0xe8, 0x6d, 0x31, 0xcb, 0xe8, 0x7e, 0x31, 0xcb
    db 0xe8, 0xc6, 0x31, 0xcb, 0xe8, 0xc3, 0x31, 0xcb, 0xe8, 0xc0, 0x31, 0xcb, 0xe8, 0xbd, 0x31, 0xcb
    db 0xe8, 0x94, 0x33, 0xcb, 0xe8, 0x32, 0x34, 0xcb, 0xe8, 0xfe, 0x13, 0xcb, 0xe8, 0xda, 0x34, 0xcb
    db 0xe8, 0x20, 0x35, 0xcb, 0xe8, 0xa6, 0x31, 0xcb, 0xe8, 0x6f, 0x40, 0xcb, 0xe8, 0x0d, 0x33, 0xcb
    db 0xe8, 0xad, 0x43, 0xcb, 0xe8, 0x76, 0x45, 0xcb, 0xe8, 0x73, 0x47, 0xcb, 0xe8, 0x52, 0x49, 0xcb
    db 0xe8, 0x92, 0x4b, 0xcb, 0xe8, 0x1b, 0x4d, 0xcb, 0xe8, 0x86, 0x4d, 0xcb, 0xe8, 0x9e, 0x4d, 0xcb
    db 0xe8, 0xe3, 0x4d, 0xcb, 0xe8, 0x6e, 0x4f, 0xcb, 0xe8, 0xff, 0x4f, 0xcb, 0xe8, 0x42, 0x50, 0xcb
    db 0xe8, 0x56, 0x50, 0xcb, 0xe8, 0x6a, 0x50, 0xcb, 0x80, 0x41, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
    db 0x40, 0x01, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x30, 0x05, 0x00, 0x00, 0xd0, 0x01
    times 17 db 0
    db 0x03, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0b, 0x01, 0x00, 0x00, 0x0f, 0x01, 0x00, 0x00
    db 0x13, 0x01, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x1b, 0x01, 0x00, 0x00, 0x1f, 0x01
    times 87 db 0
    db 0x04
    times 23 db 0
    db 0x01
    times 255 db 0

%include "ega/math_loc_0293.asm"

%include "ega/leaf_loc_0439.asm"

leaf_loc_0447:
    push bp                          ; 0x0447
    mov bp, sp                       ; 0x0448
    push es                          ; 0x044a
    mov ax, ds                       ; 0x044b
    mov es, ax                       ; 0x044d
    mov ax, word [bp + 0xc]          ; 0x044f
    mov word [cs:math_loc_0293], ax  ; 0x0452
    mov ax, word [bp + 0xe]          ; 0x0456
    mov word [cs:data_0291], ax      ; 0x0459
    pop es                           ; 0x045d
    mov sp, bp                       ; 0x045e
    pop bp                           ; 0x0460
    ret                              ; 0x0461
loc_0462:
    push bp                          ; 0x0462
    mov bp, sp                       ; 0x0463
    push es                          ; 0x0465
    mov ax, ds                       ; 0x0466
    mov es, ax                       ; 0x0468
    mov ax, word [bp + 0xc]          ; 0x046a
    mov word [cs:data_0295], ax      ; 0x046d
    mov ax, word [bp + 0xe]          ; 0x0471
    mov word [cs:data_0297], ax      ; 0x0474
    pop es                           ; 0x0478
    mov sp, bp                       ; 0x0479
    pop bp                           ; 0x047b
    ret                              ; 0x047c
%include "ega/math_loc_047d.asm"

%include "ega/math_loc_0496.asm"

loc_04b1:
    push bp                          ; 0x04b1
    mov bp, sp                       ; 0x04b2
    sub sp, byte 0x36                ; 0x04b4
    push ds                          ; 0x04b7
    push es                          ; 0x04b8
    push di                          ; 0x04b9
    push si                          ; 0x04ba
    xor ax, ax                       ; 0x04bb
    mov word [bp - 0x002e], ax       ; 0x04bd
    mov word [bp - 0x002a], ax       ; 0x04c0
    mov word [bp - 0x0036], ax       ; 0x04c3
    mov ax, ds                       ; 0x04c6
    mov es, ax                       ; 0x04c8
    call bios_mouse_loc_1900         ; 0x04ca
    call leaf_loc_0949               ; 0x04cd
    mov ax, word [cs:data_01e5]      ; 0x04d0
    mov ds, ax                       ; 0x04d4
    mov ax, 0xa000                   ; 0x04d6
    mov es, ax                       ; 0x04d9
    mov ax, word [bp + 0xe]          ; 0x04db
    mov bx, 0x50                     ; 0x04de
    mul bx                           ; 0x04e1
    mov bx, word [bp + 0xc]          ; 0x04e3
    mov cl, 2                        ; 0x04e6
    shr bx, cl                       ; 0x04e8
    add ax, bx                       ; 0x04ea
    mov word [bp - 0x0002], ax       ; 0x04ec
    mov cx, word [bp + 0xc]          ; 0x04ef
    and cl, 3                        ; 0x04f2
    shl cl, 1                        ; 0x04f5
    mov al, 0x80                     ; 0x04f7
    shr al, cl                       ; 0x04f9
    mov byte [bp - 0x0014], al       ; 0x04fb
    mov ax, word [bp + 0xe]          ; 0x04fe
    mov bx, 0x140                    ; 0x0501
    mul bx                           ; 0x0504
    add ax, word [bp + 0xc]          ; 0x0506
    mov word [bp - 0x0012], ax       ; 0x0509
    mov ax, word [bp + 0x10]         ; 0x050c
    sub ax, word [bp + 0xc]          ; 0x050f
    inc ax                           ; 0x0512
    mov word [bp - 0x0004], ax       ; 0x0513
    mov ax, word [bp + 0x12]         ; 0x0516
    sub ax, word [bp + 0xe]          ; 0x0519
    inc ax                           ; 0x051c
    mov word [bp - 0x0016], ax       ; 0x051d
    xor ax, ax                       ; 0x0520
    mov word [bp - 0x0026], ax       ; 0x0522
    mov ax, word [bp + 0x10]         ; 0x0525
    mov bx, word [bp + 0xc]          ; 0x0528
    mov dx, bx                       ; 0x052b
    sub ax, bx                       ; 0x052d
    inc ax                           ; 0x052f
    and dx, 3                        ; 0x0530
    je short @..local.l2             ; 0x0534
    inc word [bp - 0x0026]           ; 0x0536
@..local.l2:
    mov bx, 4                        ; 0x0539
    sub bx, dx                       ; 0x053c
    and bl, 3                        ; 0x053e
    mov dx, bx                       ; 0x0541
    mov word [bp - 0x0028], dx       ; 0x0543
    sub ax, dx                       ; 0x0546
    jae short @..local.l3            ; 0x0548
    add ax, dx                       ; 0x054a
    mov word [bp - 0x0028], ax       ; 0x054c
    mov byte [bp - 0x0036], 1        ; 0x054f
    jmp near @..local.l5             ; 0x0553
@..local.l3:
    mov dx, ax                       ; 0x0556
    shr ax, 1                        ; 0x0558
    shr ax, 1                        ; 0x055a
    add word [bp - 0x0026], ax       ; 0x055c
    mov word [bp - 0x002e], ax       ; 0x055f
    and dx, 3                        ; 0x0562
    je short @..local.l4             ; 0x0566
    inc word [bp - 0x0026]           ; 0x0568
@..local.l4:
    shl dx, 1                        ; 0x056b
    mov word [bp - 0x002a], dx       ; 0x056d
@..local.l5:
    mov ax, word [bp - 0x0016]       ; 0x0570
    mov bx, word [bp - 0x0026]       ; 0x0573
    mul bx                           ; 0x0576
    mov word [bp - 0x0024], ax       ; 0x0578
    shl ax, 1                        ; 0x057b
    mov word [bp - 0x0032], ax       ; 0x057d
    add ax, word [bp - 0x0024]       ; 0x0580
    mov word [bp - 0x0034], ax       ; 0x0583
    add ax, word [bp - 0x0024]       ; 0x0586
    add ax, strict word 0xf          ; 0x0589
    mov cl, 4                        ; 0x058c
    shr ax, cl                       ; 0x058e
    add ax, word [cs:data_11cd]      ; 0x0590
    cmp ax, 0x4180                   ; 0x0595
    jae short @..local.l6            ; 0x0598
    cmp byte [bp - 0x0036], 0        ; 0x059a
    jne short @..local.l6            ; 0x059e
    jmp near @..local.l12            ; 0x05a0
@..local.l6:
    jmp near @..local.l7             ; 0x05a3
@..local.l7:
    shl word [bp - 0x0004], 1        ; 0x05a6
    mov dx, 0x3ce                    ; 0x05a9
    mov al, 5                        ; 0x05ac
    out dx, al                       ; 0x05ae
    inc dx                           ; 0x05af
    mov al, 2                        ; 0x05b0
    out dx, al                       ; 0x05b2
    mov dx, 0x3ce                    ; 0x05b3
    mov al, 8                        ; 0x05b6
    out dx, al                       ; 0x05b8
    inc dx                           ; 0x05b9
@..local.l8:
    mov di, word [bp - 0x0002]       ; 0x05ba
    mov si, word [bp - 0x0012]       ; 0x05bd
    mov bx, dos_mem_loc_33b3         ; 0x05c0
    mov cl, 4                        ; 0x05c3
    test byte [bp - 0x0014], 0xaa    ; 0x05c5
    jne short @..local.l9            ; 0x05c9
    xor cl, cl                       ; 0x05cb
    inc word [bp - 0x0012]           ; 0x05cd
@..local.l9:
    mov dx, 0x3cf                    ; 0x05d0
    mov al, byte [bp - 0x0014]       ; 0x05d3
    out dx, al                       ; 0x05d6
    ror byte [bp - 0x0014], 1        ; 0x05d7
    cmp byte [bp - 0x0014], 0x80     ; 0x05da
    jne short @..local.l10           ; 0x05de
    inc word [bp - 0x0002]           ; 0x05e0
@..local.l10:
    mov dx, word [bp - 0x0016]       ; 0x05e3
@..local.l11:
    lodsb                            ; 0x05e6
    add si, strict word 0x13f        ; 0x05e7
    cs xlatb                         ; 0x05eb
    shr al, cl                       ; 0x05ed
    mov ch, byte [es:di]             ; 0x05ef
    mov byte [es:di], al             ; 0x05f2
    add di, byte 0x50                ; 0x05f5
    dec dx                           ; 0x05f8
    jne short @..local.l11           ; 0x05f9
    dec word [bp - 0x0004]           ; 0x05fb
    jne short @..local.l8            ; 0x05fe
    mov al, 0xff                     ; 0x0600
    mov dx, 0x3cf                    ; 0x0602
    out dx, al                       ; 0x0605
    mov dx, 0x3ce                    ; 0x0606
    mov al, 5                        ; 0x0609
    out dx, al                       ; 0x060b
    inc dx                           ; 0x060c
    mov al, 0                        ; 0x060d
    out dx, al                       ; 0x060f
    call math_loc_0b91               ; 0x0610
    call bios_mouse_loc_18c1         ; 0x0613
    pop si                           ; 0x0616
    pop di                           ; 0x0617
    pop es                           ; 0x0618
    pop ds                           ; 0x0619
    mov sp, bp                       ; 0x061a
    pop bp                           ; 0x061c
    ret                              ; 0x061d
@..local.l12:
    mov ax, word [cs:data_11cd]      ; 0x061e
    add ax, word [cs:data_01e1]      ; 0x0622
    mov es, ax                       ; 0x0627
    mov ax, 0xa000                   ; 0x0629
    mov ds, ax                       ; 0x062c
    xor di, di                       ; 0x062e
    mov cx, word [bp - 0x0032]       ; 0x0630
    xor ax, ax                       ; 0x0633
    rep stosw                        ; 0x0635
    mov dx, 0x3ce                    ; 0x0637
    mov al, 5                        ; 0x063a
    out dx, al                       ; 0x063c
    inc dx                           ; 0x063d
    mov al, 0                        ; 0x063e
    out dx, al                       ; 0x0640
    mov cx, word [bp - 0x0028]       ; 0x0641
    or cx, cx                        ; 0x0644
    jne short @..local.l13           ; 0x0646
    jmp near @..local.l18            ; 0x0648
@..local.l13:
    shl cx, 1                        ; 0x064b
    mov dx, 0x3ce                    ; 0x064d
    mov al, 4                        ; 0x0650
    out dx, al                       ; 0x0652
    inc dx                           ; 0x0653
    mov al, 0                        ; 0x0654
    out dx, al                       ; 0x0656
    xor di, di                       ; 0x0657
    mov si, word [bp - 0x0002]       ; 0x0659
    mov bx, word [bp - 0x0016]       ; 0x065c
@..local.l14:
    mov al, byte [si]                ; 0x065f
    shr al, cl                       ; 0x0661
    mov byte [es:di], al             ; 0x0663
    add si, byte 0x50                ; 0x0666
    add di, word [bp - 0x0026]       ; 0x0669
    dec bx                           ; 0x066c
    jne short @..local.l14           ; 0x066d
    mov dx, 0x3ce                    ; 0x066f
    mov al, 4                        ; 0x0672
    out dx, al                       ; 0x0674
    inc dx                           ; 0x0675
    mov al, 1                        ; 0x0676
    out dx, al                       ; 0x0678
    mov di, word [bp - 0x0024]       ; 0x0679
    mov si, word [bp - 0x0002]       ; 0x067c
    mov bx, word [bp - 0x0016]       ; 0x067f
@..local.l15:
    mov al, byte [si]                ; 0x0682
    shr al, cl                       ; 0x0684
    mov byte [es:di], al             ; 0x0686
    add si, byte 0x50                ; 0x0689
    add di, word [bp - 0x0026]       ; 0x068c
    dec bx                           ; 0x068f
    jne short @..local.l15           ; 0x0690
    mov dx, 0x3ce                    ; 0x0692
    mov al, 4                        ; 0x0695
    out dx, al                       ; 0x0697
    inc dx                           ; 0x0698
    mov al, 2                        ; 0x0699
    out dx, al                       ; 0x069b
    mov di, word [bp - 0x0032]       ; 0x069c
    mov si, word [bp - 0x0002]       ; 0x069f
    mov bx, word [bp - 0x0016]       ; 0x06a2
@..local.l16:
    mov al, byte [si]                ; 0x06a5
    shr al, cl                       ; 0x06a7
    mov byte [es:di], al             ; 0x06a9
    add si, byte 0x50                ; 0x06ac
    add di, word [bp - 0x0026]       ; 0x06af
    dec bx                           ; 0x06b2
    jne short @..local.l16           ; 0x06b3
    mov dx, 0x3ce                    ; 0x06b5
    mov al, 4                        ; 0x06b8
    out dx, al                       ; 0x06ba
    inc dx                           ; 0x06bb
    mov al, 3                        ; 0x06bc
    out dx, al                       ; 0x06be
    mov di, word [bp - 0x0034]       ; 0x06bf
    mov si, word [bp - 0x0002]       ; 0x06c2
    mov bx, word [bp - 0x0016]       ; 0x06c5
@..local.l17:
    mov al, byte [si]                ; 0x06c8
    shr al, cl                       ; 0x06ca
    mov byte [es:di], al             ; 0x06cc
    add si, byte 0x50                ; 0x06cf
    add di, word [bp - 0x0026]       ; 0x06d2
    dec bx                           ; 0x06d5
    jne short @..local.l17           ; 0x06d6
@..local.l18:
    mov cx, word [bp - 0x002a]       ; 0x06d8
    or cx, cx                        ; 0x06db
    jne short @..local.l19           ; 0x06dd
    jmp near @..local.l24            ; 0x06df
@..local.l19:
    mov di, word [bp - 0x0026]       ; 0x06e2
    dec di                           ; 0x06e5
    mov si, word [bp - 0x0002]       ; 0x06e6
    add si, di                       ; 0x06e9
    push si                          ; 0x06eb
    mov dx, 0x3ce                    ; 0x06ec
    mov al, 4                        ; 0x06ef
    out dx, al                       ; 0x06f1
    inc dx                           ; 0x06f2
    mov al, 0                        ; 0x06f3
    out dx, al                       ; 0x06f5
    pop si                           ; 0x06f6
    push si                          ; 0x06f7
    mov bx, word [bp - 0x0016]       ; 0x06f8
@..local.l20:
    mov al, byte [si]                ; 0x06fb
    shl al, cl                       ; 0x06fd
    mov byte [es:di], al             ; 0x06ff
    add si, byte 0x50                ; 0x0702
    add di, word [bp - 0x0026]       ; 0x0705
    dec bx                           ; 0x0708
    jne short @..local.l20           ; 0x0709
    mov dx, 0x3ce                    ; 0x070b
    mov al, 4                        ; 0x070e
    out dx, al                       ; 0x0710
    inc dx                           ; 0x0711
    mov al, 1                        ; 0x0712
    out dx, al                       ; 0x0714
    mov di, word [bp - 0x0026]       ; 0x0715
    dec di                           ; 0x0718
    add di, word [bp - 0x0024]       ; 0x0719
    pop si                           ; 0x071c
    push si                          ; 0x071d
    mov bx, word [bp - 0x0016]       ; 0x071e
@..local.l21:
    mov al, byte [si]                ; 0x0721
    shl al, cl                       ; 0x0723
    mov byte [es:di], al             ; 0x0725
    add si, byte 0x50                ; 0x0728
    add di, word [bp - 0x0026]       ; 0x072b
    dec bx                           ; 0x072e
    jne short @..local.l21           ; 0x072f
    mov dx, 0x3ce                    ; 0x0731
    mov al, 4                        ; 0x0734
    out dx, al                       ; 0x0736
    inc dx                           ; 0x0737
    mov al, 2                        ; 0x0738
    out dx, al                       ; 0x073a
    mov di, word [bp - 0x0026]       ; 0x073b
    dec di                           ; 0x073e
    add di, word [bp - 0x0032]       ; 0x073f
    pop si                           ; 0x0742
    push si                          ; 0x0743
    mov bx, word [bp - 0x0016]       ; 0x0744
@..local.l22:
    mov al, byte [si]                ; 0x0747
    shl al, cl                       ; 0x0749
    mov byte [es:di], al             ; 0x074b
    add si, byte 0x50                ; 0x074e
    add di, word [bp - 0x0026]       ; 0x0751
    dec bx                           ; 0x0754
    jne short @..local.l22           ; 0x0755
    mov dx, 0x3ce                    ; 0x0757
    mov al, 4                        ; 0x075a
    out dx, al                       ; 0x075c
    inc dx                           ; 0x075d
    mov al, 3                        ; 0x075e
    out dx, al                       ; 0x0760
    mov di, word [bp - 0x0026]       ; 0x0761
    dec di                           ; 0x0764
    add di, word [bp - 0x0034]       ; 0x0765
    pop si                           ; 0x0768
    mov bx, word [bp - 0x0016]       ; 0x0769
@..local.l23:
    mov al, byte [si]                ; 0x076c
    shl al, cl                       ; 0x076e
    mov byte [es:di], al             ; 0x0770
    add si, byte 0x50                ; 0x0773
    add di, word [bp - 0x0026]       ; 0x0776
    dec bx                           ; 0x0779
    jne short @..local.l23           ; 0x077a
@..local.l24:
    mov ax, word [cs:data_01e5]      ; 0x077c
    mov ds, ax                       ; 0x0780
    xor di, di                       ; 0x0782
    mov cx, word [bp - 0x0016]       ; 0x0784
@..local.l25:
    push cx                          ; 0x0787
    mov si, word [bp - 0x0012]       ; 0x0788
    add word [bp - 0x0012], strict word 0x140 ; 0x078b
    mov cx, word [bp - 0x0028]       ; 0x0790
    or cx, cx                        ; 0x0793
    je short @..local.l27            ; 0x0795
    mov byte [bp - 0x002c], cl       ; 0x0797
    mov cl, byte [es:di]             ; 0x079a
    mov bx, word [bp - 0x0024]       ; 0x079d
    mov ch, byte [es:bx + di]        ; 0x07a0
    add bx, word [bp - 0x0024]       ; 0x07a3
    mov dl, byte [es:bx + di]        ; 0x07a6
    add bx, word [bp - 0x0024]       ; 0x07a9
    mov dh, byte [es:bx + di]        ; 0x07ac
@..local.l26:
    mov bx, dos_mem_loc_33b3         ; 0x07af
    lodsb                            ; 0x07b2
    cs xlatb                         ; 0x07b3
    rcl al, 1                        ; 0x07b5
    rcl dh, 1                        ; 0x07b7
    rcl al, 1                        ; 0x07b9
    rcl dl, 1                        ; 0x07bb
    rcl al, 1                        ; 0x07bd
    rcl ch, 1                        ; 0x07bf
    rcl al, 1                        ; 0x07c1
    rcl cl, 1                        ; 0x07c3
    rcl al, 1                        ; 0x07c5
    rcl dh, 1                        ; 0x07c7
    rcl al, 1                        ; 0x07c9
    rcl dl, 1                        ; 0x07cb
    rcl al, 1                        ; 0x07cd
    rcl ch, 1                        ; 0x07cf
    rcl al, 1                        ; 0x07d1
    rcl cl, 1                        ; 0x07d3
    dec byte [bp - 0x002c]           ; 0x07d5
    jne short @..local.l26           ; 0x07d8
    mov byte [es:di], cl             ; 0x07da
    mov bx, word [bp - 0x0024]       ; 0x07dd
    mov byte [es:bx + di], ch        ; 0x07e0
    add bx, word [bp - 0x0024]       ; 0x07e3
    mov byte [es:bx + di], dl        ; 0x07e6
    add bx, word [bp - 0x0024]       ; 0x07e9
    mov byte [es:bx + di], dh        ; 0x07ec
    inc di                           ; 0x07ef
@..local.l27:
    mov ax, word [bp - 0x002e]       ; 0x07f0
    or ax, ax                        ; 0x07f3
    je short @..local.l30            ; 0x07f5
    mov word [bp - 0x002c], ax       ; 0x07f7
@..local.l28:
    xor cx, cx                       ; 0x07fa
    xor dx, dx                       ; 0x07fc
    mov byte [bp - 0x0030], 4        ; 0x07fe
@..local.l29:
    mov bx, dos_mem_loc_33b3         ; 0x0802
    lodsb                            ; 0x0805
    cs xlatb                         ; 0x0806
    rcl al, 1                        ; 0x0808
    rcl dh, 1                        ; 0x080a
    rcl al, 1                        ; 0x080c
    rcl dl, 1                        ; 0x080e
    rcl al, 1                        ; 0x0810
    rcl ch, 1                        ; 0x0812
    rcl al, 1                        ; 0x0814
    rcl cl, 1                        ; 0x0816
    rcl al, 1                        ; 0x0818
    rcl dh, 1                        ; 0x081a
    rcl al, 1                        ; 0x081c
    rcl dl, 1                        ; 0x081e
    rcl al, 1                        ; 0x0820
    rcl ch, 1                        ; 0x0822
    rcl al, 1                        ; 0x0824
    rcl cl, 1                        ; 0x0826
    dec byte [bp - 0x0030]           ; 0x0828
    jne short @..local.l29           ; 0x082b
    mov byte [es:di], cl             ; 0x082d
    mov bx, word [bp - 0x0024]       ; 0x0830
    mov byte [es:bx + di], ch        ; 0x0833
    add bx, word [bp - 0x0024]       ; 0x0836
    mov byte [es:bx + di], dl        ; 0x0839
    add bx, word [bp - 0x0024]       ; 0x083c
    mov byte [es:bx + di], dh        ; 0x083f
    inc di                           ; 0x0842
    dec word [bp - 0x002c]           ; 0x0843
    jne short @..local.l28           ; 0x0846
@..local.l30:
    mov ax, word [bp - 0x002a]       ; 0x0848
    mov byte [bp - 0x002c], al       ; 0x084b
    or al, al                        ; 0x084e
    je short @..local.l32            ; 0x0850
    xor ah, ah                       ; 0x0852
    shr ax, 1                        ; 0x0854
    dec ax                           ; 0x0856
    add si, ax                       ; 0x0857
    mov cl, byte [es:di]             ; 0x0859
    mov bx, word [bp - 0x0024]       ; 0x085c
    mov ch, byte [es:bx + di]        ; 0x085f
    add bx, word [bp - 0x0024]       ; 0x0862
    mov dl, byte [es:bx + di]        ; 0x0865
    add bx, word [bp - 0x0024]       ; 0x0868
    mov dh, byte [es:bx + di]        ; 0x086b
@..local.l31:
    mov bx, dos_mem_loc_33b3         ; 0x086e
    mov al, byte [si]                ; 0x0871
    dec si                           ; 0x0873
    cs xlatb                         ; 0x0874
    rcr al, 1                        ; 0x0876
    rcr cl, 1                        ; 0x0878
    rcr al, 1                        ; 0x087a
    rcr ch, 1                        ; 0x087c
    rcr al, 1                        ; 0x087e
    rcr dl, 1                        ; 0x0880
    rcr al, 1                        ; 0x0882
    rcr dh, 1                        ; 0x0884
    rcr al, 1                        ; 0x0886
    rcr cl, 1                        ; 0x0888
    rcr al, 1                        ; 0x088a
    rcr ch, 1                        ; 0x088c
    rcr al, 1                        ; 0x088e
    rcr dl, 1                        ; 0x0890
    rcr al, 1                        ; 0x0892
    rcr dh, 1                        ; 0x0894
    sub byte [bp - 0x002c], 2        ; 0x0896
    jne short @..local.l31           ; 0x089a
    mov byte [es:di], cl             ; 0x089c
    mov bx, word [bp - 0x0024]       ; 0x089f
    mov byte [es:bx + di], ch        ; 0x08a2
    add bx, word [bp - 0x0024]       ; 0x08a5
    mov byte [es:bx + di], dl        ; 0x08a8
    add bx, word [bp - 0x0024]       ; 0x08ab
    mov byte [es:bx + di], dh        ; 0x08ae
    inc di                           ; 0x08b1
@..local.l32:
    pop cx                           ; 0x08b2
    dec cx                           ; 0x08b3
    je short @..local.l33            ; 0x08b4
    jmp near @..local.l25            ; 0x08b6
@..local.l33:
    mov ax, 0xa000                   ; 0x08b9
    mov es, ax                       ; 0x08bc
    mov ax, word [cs:data_01e1]      ; 0x08be
    add ax, word [cs:data_11cd]      ; 0x08c2
    mov ds, ax                       ; 0x08c7
    xor si, si                       ; 0x08c9
    mov di, word [bp - 0x0002]       ; 0x08cb
    mov cx, word [bp - 0x0016]       ; 0x08ce
@..local.l34:
    push cx                          ; 0x08d1
    mov dx, 0x3c4                    ; 0x08d2
    mov al, 2                        ; 0x08d5
    out dx, al                       ; 0x08d7
    inc dx                           ; 0x08d8
    mov al, 1                        ; 0x08d9
    out dx, al                       ; 0x08db
    push si                          ; 0x08dc
    push di                          ; 0x08dd
    mov cx, word [bp - 0x0026]       ; 0x08de
    rep movsb                        ; 0x08e1
    pop di                           ; 0x08e3
    pop si                           ; 0x08e4
    mov dx, 0x3c4                    ; 0x08e5
    mov al, 2                        ; 0x08e8
    out dx, al                       ; 0x08ea
    inc dx                           ; 0x08eb
    mov al, 2                        ; 0x08ec
    out dx, al                       ; 0x08ee
    push si                          ; 0x08ef
    push di                          ; 0x08f0
    add si, word [bp - 0x0024]       ; 0x08f1
    mov cx, word [bp - 0x0026]       ; 0x08f4
    rep movsb                        ; 0x08f7
    pop di                           ; 0x08f9
    pop si                           ; 0x08fa
    mov dx, 0x3c4                    ; 0x08fb
    mov al, 2                        ; 0x08fe
    out dx, al                       ; 0x0900
    inc dx                           ; 0x0901
    mov al, 4                        ; 0x0902
    out dx, al                       ; 0x0904
    push si                          ; 0x0905
    push di                          ; 0x0906
    add si, word [bp - 0x0032]       ; 0x0907
    mov cx, word [bp - 0x0026]       ; 0x090a
    rep movsb                        ; 0x090d
    pop di                           ; 0x090f
    pop si                           ; 0x0910
    mov dx, 0x3c4                    ; 0x0911
    mov al, 2                        ; 0x0914
    out dx, al                       ; 0x0916
    inc dx                           ; 0x0917
    mov al, 8                        ; 0x0918
    out dx, al                       ; 0x091a
    push si                          ; 0x091b
    push di                          ; 0x091c
    add si, word [bp - 0x0034]       ; 0x091d
    mov cx, word [bp - 0x0026]       ; 0x0920
    rep movsb                        ; 0x0923
    pop di                           ; 0x0925
    pop si                           ; 0x0926
    add di, byte 0x50                ; 0x0927
    add si, word [bp - 0x0026]       ; 0x092a
    pop cx                           ; 0x092d
    loop @..local.l34                ; 0x092e
    mov dx, 0x3c4                    ; 0x0930
    mov al, 2                        ; 0x0933
    out dx, al                       ; 0x0935
    inc dx                           ; 0x0936
    mov al, 0xf                      ; 0x0937
    out dx, al                       ; 0x0939
    call math_loc_0b91               ; 0x093a
    call bios_mouse_loc_18c1         ; 0x093d
    pop si                           ; 0x0940
    pop di                           ; 0x0941
    pop es                           ; 0x0942
    pop ds                           ; 0x0943
    mov sp, bp                       ; 0x0944
    pop bp                           ; 0x0946
    ret                              ; 0x0947
    db 0x00
%include "ega/leaf_loc_0949.asm"

    add ax, word [cs:data_1bd9]      ; 0x0b49
    mov di, ax                       ; 0x0b4e
    mov ax, word [cs:data_259b]      ; 0x0b50
    mov ds, ax                       ; 0x0b54
    mov si, word [cs:data_2599]      ; 0x0b56
    mov cx, word [cs:data_1be3]      ; 0x0b5b
    mov ax, ds                       ; 0x0b60
    or ax, si                        ; 0x0b62
    jne short @..leaf_loc_0949.l13   ; 0x0b64
    mov si, 0x259e                   ; 0x0b66
    mov ax, cs                       ; 0x0b69
    mov ds, ax                       ; 0x0b6b
@..leaf_loc_0949.l13:
    push cx                          ; 0x0b6d
    push di                          ; 0x0b6e
    push si                          ; 0x0b6f
    mov cx, word [cs:data_1bdd]      ; 0x0b70
@..leaf_loc_0949.l14:
    mov al, byte [si]                ; 0x0b75
    cmp al, 0xff                     ; 0x0b77
    je short @..leaf_loc_0949.l15    ; 0x0b79
    mov byte [es:di], al             ; 0x0b7b
@..leaf_loc_0949.l15:
    inc si                           ; 0x0b7e
    inc di                           ; 0x0b7f
    loop @..leaf_loc_0949.l14        ; 0x0b80
    pop si                           ; 0x0b82
    add si, word [cs:data_258d]      ; 0x0b83
    pop di                           ; 0x0b88
    add di, strict word 0x140        ; 0x0b89
    pop cx                           ; 0x0b8d
    loop @..leaf_loc_0949.l13        ; 0x0b8e
@..leaf_loc_0949.l16:
    ret                              ; 0x0b90
%include "ega/math_loc_0b91.asm"

%include "ega/math_loc_0bcf.asm"

%include "ega/math_loc_0bf6.asm"

%include "ega/string_loc_0c45.asm"

%include "ega/dos_alloc_mem.asm"

%include "ega/dos_free_mem.asm"

%include "ega/dos_read_file.asm"

%include "ega/dos_write_file.asm"

%include "ega/dos_con_loc_0f70.asm"

%include "ega/dos_con_loc_0fae.asm"

%include "ega/dos_read_file_2.asm"

%include "ega/dos_con_loc_10ff.asm"

@..dos_read_file_2.l2:
    mov ax, cs                       ; 0x1211
    mov ds, ax                       ; 0x1213
    mov dx, 0x1331                   ; 0x1215
dos_con_loc_1218:
    mov ah, 9                        ; 0x1218
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x121c
    int 0x21 ; DOS function dispatcher
loc_1221:
    mov ax, cs                       ; 0x1221
    mov ds, ax                       ; 0x1223
    mov dx, 0x138c                   ; 0x1225
    mov ah, 9                        ; 0x1228
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x122c
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with bad slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with filled slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'oops... LOAD_MAZE filled its memory area.', 0
    db 0x0a, 0x24

loc_12bb:
    mov ax, word [bp + 0xc]          ; 0x12bb
    shl ax, 1                        ; 0x12be
    mov si, 0x2c3                    ; 0x12c0
    add si, ax                       ; 0x12c3
    mov ax, word [cs:si]             ; 0x12c5
    dec ax                           ; 0x12c8
    mov cl, 2                        ; 0x12c9
    shl ax, cl                       ; 0x12cb
    mov di, 0x2eb                    ; 0x12cd
    add di, ax                       ; 0x12d0
    mov si, word [cs:di]             ; 0x12d2
    mov ax, word [cs:di + 0x2]       ; 0x12d5
    mov word [cs:bx + 0x2], ax       ; 0x12d9
    mov word [bp - 0x0004], ax       ; 0x12dd
    mov dx, word [cs:data_01e1]      ; 0x12e0
    add dx, word [cs:data_11cd]      ; 0x12e5
    mov word [bp - 0x000a], dx       ; 0x12ea
    mov es, dx                       ; 0x12ed
    add word [cs:data_11cd], ax      ; 0x12ef
    mov ax, word [cs:data_0203]      ; 0x12f4
    mov ds, ax                       ; 0x12f8
    mov ax, si                       ; 0x12fa
    mov cl, 0xa                      ; 0x12fc
    shr ax, cl                       ; 0x12fe
    mov word [cs:data_4540], ax      ; 0x1300
    call dos_file_loc_4442           ; 0x1304
    and si, strict word 0x3ff        ; 0x1307
    mov cl, 4                        ; 0x130b
    shl si, cl                       ; 0x130d
loc_130f:
    test si, 0xc000                  ; 0x130f
    je short loc_1325                ; 0x1313
    inc word [cs:data_4540]          ; 0x1315
    mov ax, word [cs:data_4540]      ; 0x131a
    call dos_file_loc_4442           ; 0x131e
    sub si, strict word 0x4000       ; 0x1321
loc_1325:
    xor di, di                       ; 0x1325
    mov cx, 0x10                     ; 0x1327
    rep movsb                        ; 0x132a
    mov ax, es                       ; 0x132c
    inc ax                           ; 0x132e
    mov es, ax                       ; 0x132f
    dec word [bp - 0x0004]           ; 0x1331
    jne short loc_130f               ; 0x1334
    mov ax, word [bp - 0x000a]       ; 0x1336
    mov ds, ax                       ; 0x1339
    mov bx, 0                        ; 0x133b
    mov ax, word [bx]                ; 0x133e
    mov cx, 6                        ; 0x1340
    mul cx                           ; 0x1343
    add ax, strict word 4            ; 0x1345
    mov bx, word [bp - 0x0008]       ; 0x1348
    add bx, strict word 0x27d        ; 0x134b
    mov word [cs:bx], ax             ; 0x134f
    jmp near loc_1209                ; 0x1352
%include "ega/leaf_loc_1355.asm"

    times 4 db 0
loc_1392:
    dec ax                           ; 0x1392
    mov cl, 2                        ; 0x1393
    shl ax, cl                       ; 0x1395
    mov bx, 0x2eb                    ; 0x1397
    add bx, ax                       ; 0x139a
    mov word [bp - 0x0004], bx       ; 0x139c
    mov ax, word [cs:bx + 0x2]       ; 0x139f
    sub word [cs:data_0391], ax      ; 0x13a3
    mov word [bp - 0x0006], ax       ; 0x13a8
@..local.l35:
    mov bx, word [bp - 0x0004]       ; 0x13ab
    mov di, word [cs:bx]             ; 0x13ae
    mov dx, word [cs:data_0203]      ; 0x13b1
    mov es, dx                       ; 0x13b6
    mov ds, dx                       ; 0x13b8
    mov si, word [cs:bx + 0x4]       ; 0x13ba
    add dx, word [cs:data_01e1]      ; 0x13be
    mov cx, word [cs:bx + 0x6]       ; 0x13c3
    or cx, cx                        ; 0x13c7
    jne short @..local.l36           ; 0x13c9
    jmp near @..local.l42            ; 0x13cb
@..local.l36:
    push cx                          ; 0x13ce
    mov ax, si                       ; 0x13cf
    mov cl, 0xa                      ; 0x13d1
    shr ax, cl                       ; 0x13d3
    mov word [cs:data_148e], ax      ; 0x13d5
    and si, strict word 0x3ff        ; 0x13d9
    mov cl, 4                        ; 0x13dd
    shl si, cl                       ; 0x13df
    mov ax, di                       ; 0x13e1
    mov cl, 0xa                      ; 0x13e3
    shr ax, cl                       ; 0x13e5
    mov word [cs:dos_con_loc_1490], ax ; 0x13e7
    and di, strict word 0x3ff        ; 0x13eb
    mov cl, 4                        ; 0x13ef
    shl di, cl                       ; 0x13f1
    call loc_145c                    ; 0x13f3
    pop cx                           ; 0x13f6
@..local.l37:
    push cx                          ; 0x13f7
    mov cx, 0x10                     ; 0x13f8
    rep movsb                        ; 0x13fb
    xor dx, dx                       ; 0x13fd
    cmp di, strict word 0x4000       ; 0x13ff
    jne short @..local.l38           ; 0x1403
    inc word [cs:dos_con_loc_1490]   ; 0x1405
    inc dx                           ; 0x140a
@..local.l38:
    cmp si, strict word 0x4000       ; 0x140b
    je short @..local.l39            ; 0x140f
    cmp si, strict word 0x8000       ; 0x1411
    jne short @..local.l40           ; 0x1415
@..local.l39:
    inc word [cs:data_148e]          ; 0x1417
    inc dx                           ; 0x141c
@..local.l40:
    or dx, dx                        ; 0x141d
    je short @..local.l41            ; 0x141f
    call loc_145c                    ; 0x1421
@..local.l41:
    pop cx                           ; 0x1424
    loop @..local.l37                ; 0x1425
    mov bx, word [bp - 0x0004]       ; 0x1427
    mov cx, word [bp - 0x0006]       ; 0x142a
    mov ax, word [cs:bx + 0x4]       ; 0x142d
    sub ax, cx                       ; 0x1431
    mov word [cs:bx], ax             ; 0x1433
    add ax, word [cs:bx + 0x6]       ; 0x1436
    mov word [cs:bx + 0x4], ax       ; 0x143a
    mov ax, word [cs:bx + 0x6]       ; 0x143e
    mov word [cs:bx + 0x2], ax       ; 0x1442
    add bx, byte 4                   ; 0x1446
    mov word [bp - 0x0004], bx       ; 0x1449
    jmp near @..local.l35            ; 0x144c
@..local.l42:
    mov bx, word [bp - 0x0004]       ; 0x144f
    xor ax, ax                       ; 0x1452
    mov word [cs:bx], ax             ; 0x1454
    mov word [cs:bx + 0x2], ax       ; 0x1457
    ret                              ; 0x145b
loc_145c:
    and di, strict word 0x3fff       ; 0x145c
    and si, strict word 0x3fff       ; 0x1460
    mov ah, 0x44                     ; 0x1464
    mov al, 0                        ; 0x1466
    mov bx, word [cs:dos_con_loc_1490] ; 0x1468
    mov dx, word [cs:data_0201]      ; 0x146d
    int 0x67 ; EMS (Expanded Memory)
    cmp bx, word [cs:data_148e]      ; 0x1474
    je short @..local.l43            ; 0x1479
    or si, strict word 0x4000        ; 0x147b
    mov ah, 0x44                     ; 0x147f
    mov al, 1                        ; 0x1481
    mov bx, word [cs:data_148e]      ; 0x1483
    mov dx, word [cs:data_0201]      ; 0x1488
    int 0x67 ; EMS (Expanded Memory)
@..local.l43:
    ret                              ; 0x148f
%include "ega/dos_con_loc_1490.asm"

%include "ega/dos_print_str.asm"

    or al, byte [es:di]              ; 0x16d6
    stosb                            ; 0x16d9
    loop @..dos_print_str.l15        ; 0x16da
    jmp short @..dos_print_str.l21   ; 0x16dc
@..dos_print_str.l16:
    mov al, byte [si]                ; 0x16de
    dec si                           ; 0x16e0
    cmp al, 0xff                     ; 0x16e1
    je short @..dos_print_str.l17    ; 0x16e3
    mov byte [es:di], ah             ; 0x16e5
@..dos_print_str.l17:
    inc di                           ; 0x16e8
    loop @..dos_print_str.l16        ; 0x16e9
    jmp short @..dos_print_str.l21   ; 0x16eb
@..dos_print_str.l18:
    mov al, byte [si]                ; 0x16ed
    dec si                           ; 0x16ef
    cmp al, 0xff                     ; 0x16f0
    je short @..dos_print_str.l19    ; 0x16f2
    mov byte [es:di], al             ; 0x16f4
@..dos_print_str.l19:
    inc di                           ; 0x16f7
    loop @..dos_print_str.l18        ; 0x16f8
    jmp short @..dos_print_str.l21   ; 0x16fa
@..dos_print_str.l20:
    mov al, byte [si]                ; 0x16fc
    dec si                           ; 0x16fe
    stosb                            ; 0x16ff
    loop @..dos_print_str.l20        ; 0x1700
@..dos_print_str.l21:
    pop di                           ; 0x1702
    add di, strict word 0x140        ; 0x1703
    pop ax                           ; 0x1707
    mov dx, word [bp - 0x0006]       ; 0x1708
    add ax, dx                       ; 0x170b
    pop si                           ; 0x170d
    pop cx                           ; 0x170e
    loop @..dos_print_str.l14        ; 0x170f
@..dos_print_str.l22:
    pop si                           ; 0x1711
    pop di                           ; 0x1712
    pop es                           ; 0x1713
    pop ds                           ; 0x1714
    mov sp, bp                       ; 0x1715
    pop bp                           ; 0x1717
    ret                              ; 0x1718
%include "ega/mouse_init.asm"

%include "ega/string_loc_17a1.asm"

%include "ega/mouse_init_2.asm"

%include "ega/bios_mouse_loc_189f.asm"

%include "ega/bios_mouse_loc_18c1.asm"

%include "ega/bios_mouse_loc_1900.asm"

%include "ega/bios_mouse_loc_190f.asm"

%include "ega/bios_mouse_loc_1992.asm"

%include "ega/mouse_set_pos.asm"

%include "ega/dos_con_loc_1a9f.asm"


    times 2030 db 0
    db 0x0a, 0x00, 0x03, 0x00, 0x0a, 0x00, 0x0a, 0x00, 0x03, 0x00, 0x0a
    times 13 db 0
    db 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xb6, 0xb6, 0xb6, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x13
    db 0x15, 0xb6, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x15, 0x16, 0xb6, 0x00, 0xff, 0xff, 0xff
    db 0xff, 0x00, 0xb3, 0xb6, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x00, 0x00, 0xb3
    db 0xb6, 0xc1, 0x00, 0xff, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00
    db 0xb3, 0xc3, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0xff
    times 1287 db 0
    db 0xfc, 0x25, 0x0a, 0x00, 0x74, 0x34, 0x2e, 0x80, 0x3e, 0x08, 0x2b, 0x00, 0x75, 0x29, 0x2e, 0xa2
    db 0x08, 0x2b, 0x2e, 0x89, 0x1e, 0x02, 0x2b, 0xd1, 0xe9, 0x2e, 0x89, 0x0e, 0x04, 0x2b, 0x2e, 0x89
    db 0x16, 0x06, 0x2b, 0x32, 0xc0, 0x2e, 0xa2, 0x08, 0x2b, 0x2e, 0x3b, 0x0e, 0xd9, 0x1b, 0x75, 0x08
    db 0x2e, 0x3b, 0x16, 0xdb, 0x1b, 0x75, 0x01, 0xcb, 0xd1, 0xe1, 0x2e, 0xa0, 0x27, 0x02, 0x2e, 0x0a
    db 0x06, 0x26, 0x02, 0x74, 0x01, 0xcb

%include "ega/math_loc_2a4f.asm"

@..math_loc_2a4f.l1:
    mov al, 0xff                     ; 0x2a58
    mov byte [cs:data_2b08], al      ; 0x2a5a
    shr cx, 1                        ; 0x2a5e
    mov word [cs:data_1beb], cx      ; 0x2a60
    mov word [cs:data_1bed], dx      ; 0x2a65
%include "ega/math_loc_2a6a.asm"

    add bx, strict word 0x120        ; 0x2c6a
    mov si, ax                       ; 0x2c6e
    mov di, bx                       ; 0x2c70
    mov cx, word [bp - 0x000e]       ; 0x2c72
    rep movsb                        ; 0x2c75
    add ax, 0x120                    ; 0x2c77
    add bx, strict word 0x120        ; 0x2c7a
    mov si, ax                       ; 0x2c7e
    mov di, bx                       ; 0x2c80
    mov cx, word [bp - 0x000e]       ; 0x2c82
    rep movsb                        ; 0x2c85
    add ax, 0x120                    ; 0x2c87
    add bx, strict word 0x120        ; 0x2c8a
    mov si, ax                       ; 0x2c8e
    mov di, bx                       ; 0x2c90
    mov cx, word [bp - 0x000e]       ; 0x2c92
    rep movsb                        ; 0x2c95
    pop di                           ; 0x2c97
    add di, word [cs:data_1bf3]      ; 0x2c98
    pop si                           ; 0x2c9d
    add si, word [cs:data_1be1]      ; 0x2c9e
    pop cx                           ; 0x2ca3
    loop @..math_loc_2a6a.l12        ; 0x2ca4
@..math_loc_2a6a.l13:
    mov ax, 0xa000                   ; 0x2ca6
    mov es, ax                       ; 0x2ca9
    mov si, 0x2602                   ; 0x2cab
    mov ax, cs                       ; 0x2cae
    mov ds, ax                       ; 0x2cb0
    xor si, si                       ; 0x2cb2
    mov ah, 1                        ; 0x2cb4
    call io_loc_2f70                 ; 0x2cb6
    mov si, 0x100                    ; 0x2cb9
    mov ah, 2                        ; 0x2cbc
    call io_loc_2f70                 ; 0x2cbe
    mov si, 0x200                    ; 0x2cc1
    mov ah, 4                        ; 0x2cc4
    call io_loc_2f70                 ; 0x2cc6
    mov si, 0x300                    ; 0x2cc9
    mov ah, 8                        ; 0x2ccc
    call io_loc_2f70                 ; 0x2cce
    mov dx, 0x3ce                    ; 0x2cd1
    mov al, 8                        ; 0x2cd4
    out dx, al                       ; 0x2cd6
    inc dx                           ; 0x2cd7
    mov al, 0xff                     ; 0x2cd8
    out dx, al                       ; 0x2cda
    mov dx, 0x3c4                    ; 0x2cdb
    mov al, 2                        ; 0x2cde
    out dx, al                       ; 0x2ce0
    inc dx                           ; 0x2ce1
    mov al, 0xf                      ; 0x2ce2
    out dx, al                       ; 0x2ce4
    mov ax, word [cs:data_1bdb]      ; 0x2ce5
    cmp ax, strict word 0xffff       ; 0x2ce9
    jne short @..math_loc_2a6a.l14   ; 0x2cec
    jmp near @..math_loc_2a6a.l23    ; 0x2cee
@..math_loc_2a6a.l14:
    mov ah, 1                        ; 0x2cf1
    xor si, si                       ; 0x2cf3
    call io_loc_2e7d                 ; 0x2cf5
    mov ah, 2                        ; 0x2cf8
    mov si, 0x120                    ; 0x2cfa
    call io_loc_2e7d                 ; 0x2cfd
    mov ah, 4                        ; 0x2d00
    mov si, 0x240                    ; 0x2d02
    call io_loc_2e7d                 ; 0x2d05
    mov ah, 8                        ; 0x2d08
    mov si, 0x360                    ; 0x2d0a
    call io_loc_2e7d                 ; 0x2d0d
    mov dx, 0x3ce                    ; 0x2d10
    mov al, 8                        ; 0x2d13
    out dx, al                       ; 0x2d15
    inc dx                           ; 0x2d16
    mov al, 0xff                     ; 0x2d17
    out dx, al                       ; 0x2d19
    mov dx, 0x3c4                    ; 0x2d1a
    mov al, 2                        ; 0x2d1d
    out dx, al                       ; 0x2d1f
    inc dx                           ; 0x2d20
    mov al, 0xf                      ; 0x2d21
    out dx, al                       ; 0x2d23
    mov ax, cs                       ; 0x2d24
    mov es, ax                       ; 0x2d26
    mov ds, ax                       ; 0x2d28
    mov di, 0x24fd                   ; 0x2d2a
    mov cx, 0x80                     ; 0x2d2d
    mov al, 0xff                     ; 0x2d30
    rep stosb                        ; 0x2d32
    mov ax, word [cs:data_1be1]      ; 0x2d34
    add ax, strict word 7            ; 0x2d38
    mov cl, 3                        ; 0x2d3b
    shr ax, cl                       ; 0x2d3d
    mov word [bp - 0x0002], ax       ; 0x2d3f
    cmp byte [cs:data_259d], 0       ; 0x2d42
    jne short @..math_loc_2a6a.l15   ; 0x2d48
    jmp near @..math_loc_2a6a.l22    ; 0x2d4a
@..math_loc_2a6a.l15:
    mov ax, word [bp - 0x0008]       ; 0x2d4d
    sub ax, word [cs:data_1bdb]      ; 0x2d50
    mov bx, word [bp - 0x0002]       ; 0x2d55
    mul bx                           ; 0x2d58
    mov di, ax                       ; 0x2d5a
    add di, strict word 0x24fd       ; 0x2d5c
    mov ax, word [bp - 0x0006]       ; 0x2d60
    mov bx, word [cs:data_1bd9]      ; 0x2d63
    shr bx, 1                        ; 0x2d68
    shr bx, 1                        ; 0x2d6a
    sub ax, bx                       ; 0x2d6c
    mov bx, 0x257d                   ; 0x2d6e
@..math_loc_2a6a.l16:
    cmp ax, strict word 8            ; 0x2d71
    jb short @..math_loc_2a6a.l17    ; 0x2d74
    sub ax, strict word 8            ; 0x2d76
    inc di                           ; 0x2d79
    jmp short @..math_loc_2a6a.l16   ; 0x2d7a
@..math_loc_2a6a.l17:
    mov cx, ax                       ; 0x2d7c
    mov ah, 0xff                     ; 0x2d7e
    shr ah, cl                       ; 0x2d80
    mov dx, word [bp - 0x000e]       ; 0x2d82
    add dx, cx                       ; 0x2d85
@..math_loc_2a6a.l18:
    cmp dx, byte 8                   ; 0x2d87
    jb short @..math_loc_2a6a.l19    ; 0x2d8a
    not ah                           ; 0x2d8c
    mov byte [bx], ah                ; 0x2d8e
    inc bx                           ; 0x2d90
    mov ah, 0xff                     ; 0x2d91
    sub dx, byte 8                   ; 0x2d93
    je short @..math_loc_2a6a.l20    ; 0x2d96
    jmp short @..math_loc_2a6a.l18   ; 0x2d98
@..math_loc_2a6a.l19:
    mov al, 0xff                     ; 0x2d9a
    mov cx, 8                        ; 0x2d9c
    sub cx, dx                       ; 0x2d9f
    shl al, cl                       ; 0x2da1
    and ah, al                       ; 0x2da3
    not ah                           ; 0x2da5
    mov byte [bx], ah                ; 0x2da7
    inc bx                           ; 0x2da9
@..math_loc_2a6a.l20:
    sub bx, strict word 0x257d       ; 0x2daa
    mov word [bp - 0x0004], bx       ; 0x2dae
    mov cx, word [bp - 0x0010]       ; 0x2db1
@..math_loc_2a6a.l21:
    push cx                          ; 0x2db4
    push di                          ; 0x2db5
    mov si, 0x257d                   ; 0x2db6
    mov cx, word [bp - 0x0004]       ; 0x2db9
    rep movsb                        ; 0x2dbc
    pop di                           ; 0x2dbe
    add di, word [bp - 0x0002]       ; 0x2dbf
    pop cx                           ; 0x2dc2
    loop @..math_loc_2a6a.l21        ; 0x2dc3
@..math_loc_2a6a.l22:
    mov ax, 0xa000                   ; 0x2dc5
    mov es, ax                       ; 0x2dc8
    mov si, word [cs:data_1bd5]      ; 0x2dca
    mov ah, 1                        ; 0x2dcf
    call io_loc_2e35                 ; 0x2dd1
    mov si, word [cs:data_1bd5]      ; 0x2dd4
    add si, strict word 0x120        ; 0x2dd9
    mov ah, 2                        ; 0x2ddd
    call io_loc_2e35                 ; 0x2ddf
    mov si, word [cs:data_1bd5]      ; 0x2de2
    add si, strict word 0x240        ; 0x2de7
    mov ah, 4                        ; 0x2deb
    call io_loc_2e35                 ; 0x2ded
    mov si, word [cs:data_1bd5]      ; 0x2df0
    add si, strict word 0x360        ; 0x2df5
    mov ah, 8                        ; 0x2df9
    call io_loc_2e35                 ; 0x2dfb
    mov dx, 0x3c4                    ; 0x2dfe
    mov al, 2                        ; 0x2e01
    out dx, al                       ; 0x2e03
    inc dx                           ; 0x2e04
    mov al, 0xf                      ; 0x2e05
    out dx, al                       ; 0x2e07
@..math_loc_2a6a.l23:
    mov ax, word [cs:data_1bd5]      ; 0x2e08
    mov bx, word [cs:data_1bd7]      ; 0x2e0c
    mov word [cs:data_1bd7], ax      ; 0x2e11
    mov word [cs:data_1bd5], bx      ; 0x2e15
    mov ax, cs                       ; 0x2e1a
    mov ds, ax                       ; 0x2e1c
    mov es, ax                       ; 0x2e1e
    mov si, data_1beb                ; 0x2e20
    mov di, data_1bd9                ; 0x2e23
    mov cx, 9                        ; 0x2e26
    rep movsw                        ; 0x2e29
    mov sp, bp                       ; 0x2e2b
    pop bp                           ; 0x2e2d
    xor al, al                       ; 0x2e2e
    mov byte [cs:data_2b08], al      ; 0x2e30
    retf                             ; 0x2e34
%include "ega/io_loc_2e35.asm"

%include "ega/io_loc_2e7d.asm"

@..io_loc_2e7d.l3:
    push cx                          ; 0x2eda
    push di                          ; 0x2edb
    push si                          ; 0x2edc
    push bx                          ; 0x2edd
    mov cx, word [cs:data_1bf9]      ; 0x2ede
    mov al, byte [bx]                ; 0x2ee3
    not al                           ; 0x2ee5
    mov ah, 0xff                     ; 0x2ee7
    shr ax, cl                       ; 0x2ee9
    out dx, al                       ; 0x2eeb
    mov al, byte [si]                ; 0x2eec
    mov ah, byte [es:di]             ; 0x2eee
    mov byte [es:di], al             ; 0x2ef1
    inc di                           ; 0x2ef4
    inc si                           ; 0x2ef5
    mov ax, word [cs:data_1bf1]      ; 0x2ef6
    dec ax                           ; 0x2efa
    je short @..io_loc_2e7d.l5       ; 0x2efb
@..io_loc_2e7d.l4:
    push ax                          ; 0x2efd
    mov ah, byte [bx]                ; 0x2efe
    mov al, byte [bx + 0x1]          ; 0x2f00
    not ax                           ; 0x2f03
    shr ax, cl                       ; 0x2f05
    out dx, al                       ; 0x2f07
    mov al, byte [cs:si]             ; 0x2f08
    mov ah, byte [es:di]             ; 0x2f0b
    mov byte [es:di], al             ; 0x2f0e
    inc si                           ; 0x2f11
    inc bx                           ; 0x2f12
    inc di                           ; 0x2f13
    pop ax                           ; 0x2f14
    dec ax                           ; 0x2f15
    jne short @..io_loc_2e7d.l4      ; 0x2f16
@..io_loc_2e7d.l5:
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word [cs:data_1bfb], 0
    jne short @..io_loc_2e7d.l6      ; 0x2f1e
    mov ah, byte [bx]                ; 0x2f20
    xor al, al                       ; 0x2f22
    not ax                           ; 0x2f24
    shr ax, cl                       ; 0x2f26
    out dx, al                       ; 0x2f28
    mov al, byte [cs:si]             ; 0x2f29
    mov ah, byte [es:di]             ; 0x2f2c
    mov byte [es:di], al             ; 0x2f2f
@..io_loc_2e7d.l6:
    pop bx                           ; 0x2f32
    add bx, word [cs:data_258f]      ; 0x2f33
    pop si                           ; 0x2f38
    add si, word [cs:data_1bf3]      ; 0x2f39
    pop di                           ; 0x2f3e
    add di, byte 0x50                ; 0x2f3f
    pop cx                           ; 0x2f42
    loop @..io_loc_2e7d.l3           ; 0x2f43
    ret                              ; 0x2f45
%include "ega/io_loc_2f46.asm"

%include "ega/io_loc_2f70.asm"

@..io_loc_2f70.l3:
    push cx                          ; 0x2fc9
    push di                          ; 0x2fca
    push si                          ; 0x2fcb
    push bx                          ; 0x2fcc
    mov cx, word [cs:data_1bf9]      ; 0x2fcd
    mov al, byte [bx]                ; 0x2fd2
    shr al, cl                       ; 0x2fd4
    out dx, al                       ; 0x2fd6
    mov al, byte [si]                ; 0x2fd7
    shr al, cl                       ; 0x2fd9
    mov ah, byte [es:di]             ; 0x2fdb
    mov byte [es:di], al             ; 0x2fde
    inc di                           ; 0x2fe1
    mov ax, word [cs:data_1bf1]      ; 0x2fe2
    dec ax                           ; 0x2fe6
    je short @..io_loc_2f70.l5       ; 0x2fe7
@..io_loc_2f70.l4:
    push ax                          ; 0x2fe9
    mov ah, byte [bx]                ; 0x2fea
    mov al, byte [bx + 0x1]          ; 0x2fec
    shr ax, cl                       ; 0x2fef
    out dx, al                       ; 0x2ff1
    mov ah, byte [si]                ; 0x2ff2
    mov al, byte [si + 0x1]          ; 0x2ff4
    shr ax, cl                       ; 0x2ff7
    mov ah, byte [es:di]             ; 0x2ff9
    mov byte [es:di], al             ; 0x2ffc
    inc si                           ; 0x2fff
    inc bx                           ; 0x3000
    inc di                           ; 0x3001
    pop ax                           ; 0x3002
    dec ax                           ; 0x3003
    jne short @..io_loc_2f70.l4      ; 0x3004
@..io_loc_2f70.l5:
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word [cs:data_1bfb], 0
    jne short @..io_loc_2f70.l6      ; 0x300c
    mov ah, byte [bx]                ; 0x300e
    xor al, al                       ; 0x3010
    shr ax, cl                       ; 0x3012
    out dx, al                       ; 0x3014
    mov ah, byte [si]                ; 0x3015
    xor al, al                       ; 0x3017
    shr ax, cl                       ; 0x3019
    mov ah, byte [es:di]             ; 0x301b
    mov byte [es:di], al             ; 0x301e
@..io_loc_2f70.l6:
    pop bx                           ; 0x3021
    add bx, word [cs:data_258f]      ; 0x3022
    pop si                           ; 0x3027
    add si, word [cs:data_258f]      ; 0x3028
    pop di                           ; 0x302d
    add di, byte 0x50                ; 0x302e
    pop cx                           ; 0x3031
    loop @..io_loc_2f70.l3           ; 0x3032
    ret                              ; 0x3034
loc_3035:
    mov word [cs:data_2b02], 0       ; 0x3035
    ret                              ; 0x303c
loc_303d:
    push bp                          ; 0x303d
    mov bp, sp                       ; 0x303e
    sub sp, byte 8                   ; 0x3040
    push ds                          ; 0x3043
    push es                          ; 0x3044
    push di                          ; 0x3045
    push si                          ; 0x3046
    mov ax, ds                       ; 0x3047
    mov es, ax                       ; 0x3049
    mov ax, word [bp + 0xc]          ; 0x304b
    cmp ax, strict word 0x14         ; 0x304e
    jb short @..local.l44            ; 0x3051
    jmp near @..local.l46            ; 0x3053
@..local.l44:
    shl ax, 1                        ; 0x3056
    mov word [bp - 0x0008], ax       ; 0x3058
    mov bx, 0x229                    ; 0x305b
    add bx, ax                       ; 0x305e
    mov ax, word [cs:bx]             ; 0x3060
    or ax, ax                        ; 0x3063
    jne short @..local.l45           ; 0x3065
    jmp near @..local.l46            ; 0x3067
@..local.l45:
    mov word [cs:bx], 0              ; 0x306a
    mov cx, word [cs:data_11cb]      ; 0x306f
    dec cx                           ; 0x3074
    mov word [cs:data_11cb], cx      ; 0x3075
    call loc_4c93                    ; 0x307a
@..local.l46:
    pop si                           ; 0x307d
    pop di                           ; 0x307e
    pop es                           ; 0x307f
    pop ds                           ; 0x3080
    mov sp, bp                       ; 0x3081
    pop bp                           ; 0x3083
    ret                              ; 0x3084
%include "ega/dos_read_file_3.asm"

@..dos_read_file_3.l7:
    mov ax, word [bp + 0xe]          ; 0x3164
    mov bx, 0xa                      ; 0x3167
    div bx                           ; 0x316a
    or byte [cs:data_3296], al       ; 0x316c
    or byte [cs:data_3297], dl       ; 0x3171
    mov ax, cs                       ; 0x3176
    mov ds, ax                       ; 0x3178
    mov dx, 0x3286                   ; 0x317a
%include "ega/dos_con_loc_317d.asm"

%include "ega/dos_con_loc_31ad.asm"

%include "ega/string_loc_31df.asm"

%include "ega/leaf_loc_31f4.asm"

%include "ega/leaf_loc_3240.asm"

%include "ega/leaf_loc_3241.asm"

%include "ega/leaf_loc_3242.asm"

%include "ega/leaf_loc_3243.asm"

%include "ega/leaf_loc_3244.asm"

%include "ega/leaf_loc_3245.asm"

%include "ega/leaf_loc_3252.asm"


    db 0x00, 0x11, 0x19, 0x19, 0x18, 0x18, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x00
    db 0x11, 0x19, 0x14, 0x14
    db 'DDDDLL'
    db 0xcc, 0xcc, 0x04, 0x04, 0x0c, 0x0c, 0x08, 0x08, 0x00, 0x00, 0x14, 0x45, 0x45, 0x44, 0x4d, 0xdd
    db 0xdd, 0x04, 0x45, 0x45, 0x5d, 0x5c, 0x16, 0x66, 0x66, 0x6e, 0x6e, 0xee, 0x06, 0x0e, 0x0e, 0x08
    db 0x08, 0x5c, 0x9d, 0x8d, 0x8d, 0xce, 0x59, 0x56, 0x5e, 0x6d, 0xde, 0xce, 0xce, 0x08, 0x08, 0x00
    db 0x00, 0x7f, 0xff, 0x07, 0x0f, 0x0f, 0x15, 0x15, 0x15
    db 'UUUY]F'
    db 0x05, 0xce, 0xce, 0x08, 0x08, 0x27, 0xaf, 0x19, 0x19, 0x19, 0x19, 0x18, 0x18, 0x18, 0x18, 0x18
    db 0x01, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00, 0x01
    db 0x09, 0x09, 0x09, 0xad, 0x08, 0x08, 0x08, 0x17, 0x17, 0x1f
    db "''''//"
    db 0xaf, 0x2d, 0x02, 0x0f, 0xad, 0x08, 0x08, 0x1c, 0x1c, 0x48, 0x48, 0x14, 0x14
    db '4"""*'
    db 0x02, 0x0a, 0x0a, 0x08, 0x08, 0x8d, 0x04, 0x04, 0x0d, 0x34, 0x3c, 0xbc, 0x13, 0x33, 0x33, 0x3b
    db 0xbb, 0xbb, 0x03, 0x0b, 0x08
    db 'UUUYYY]]'
    db 0x12, 0x12, 0x1a, 0x1a, 0x28, 0x28, 0x28, 0x02, 0x5d, 0x5d, 0x9d, 0x9d, 0x9d, 0x8d, 0x8d, 0x8d
    db 0x0d, 0x0d, 0x0d, 0x0d, 0x08, 0x08, 0x08, 0x00, 0x1d, 0x5d, 0x5d, 0x9d, 0x9d, 0x05, 0x8d, 0x15
    db 0x14, 0x14, 0x14, 0x1d, 0x1d, 0x1d, 0x1c, 0x1c, 0x09, 0x09, 0x08, 0x59, 0x1d, 0x9d, 0x8d, 0x9d
    db 0x48, 0x8d, 0x8d, 0x8d, 0x0d, 0x0d, 0x08, 0x00, 0x1c, 0x48, 0x48, 0x04, 0x04, 0x0c, 0x12, 0x23
    db 0x23, 0x2b, 0xab, 0xab, 0x02, 0x0b, 0x08, 0x2d

%include "ega/dos_mem_loc_33b3.asm"

%include "ega/mouse_set_pos_2.asm"

%include "ega/mouse_set_pos_3.asm"

loc_3570:
    push bp                          ; 0x3570
    mov bp, sp                       ; 0x3571
    sub sp, byte 8                   ; 0x3573
    push ds                          ; 0x3576
    push es                          ; 0x3577
    push di                          ; 0x3578
    push si                          ; 0x3579
    mov ax, ds                       ; 0x357a
    mov es, ax                       ; 0x357c
    mov ax, word [bp + 0xc]          ; 0x357e
    neg ax                           ; 0x3581
    cmp ax, strict word 5            ; 0x3583
    jb short @..local.l47            ; 0x3586
    jmp near @..local.l49            ; 0x3588
@..local.l47:
    shl ax, 1                        ; 0x358b
    mov word [bp - 0x0008], ax       ; 0x358d
    mov bx, 0x251                    ; 0x3590
    add bx, ax                       ; 0x3593
    mov ax, word [cs:bx]             ; 0x3595
    or ax, ax                        ; 0x3598
    jne short @..local.l48           ; 0x359a
    jmp near @..local.l49            ; 0x359c
@..local.l48:
    mov word [cs:bx], 0              ; 0x359f
    mov cx, word [cs:data_11cb]      ; 0x35a4
    dec cx                           ; 0x35a9
    mov word [cs:data_11cb], cx      ; 0x35aa
    call loc_4c93                    ; 0x35af
@..local.l49:
    pop si                           ; 0x35b2
    pop di                           ; 0x35b3
    pop es                           ; 0x35b4
    pop ds                           ; 0x35b5
    mov sp, bp                       ; 0x35b6
    pop bp                           ; 0x35b8
    ret                              ; 0x35b9
%include "ega/io_loc_35ba.asm"


    times 65 db 0

%include "ega/math_loc_361e.asm"

    mov bx, word [bp - 0x003e]       ; 0x381e
    cmp bx, ax                       ; 0x3821
    ja short @..math_loc_361e.l20    ; 0x3823
    jmp near @..math_loc_361e.l56    ; 0x3825
@..math_loc_361e.l20:
    sub bx, ax                       ; 0x3828
    xor ax, ax                       ; 0x382a
    mov word [bp - 0x0030], ax       ; 0x382c
    sub bx, word [bp - 0x0026]       ; 0x382f
    jbe short @..math_loc_361e.l27   ; 0x3832
    mov word [bp - 0x0034], bx       ; 0x3834
    mov cx, word [bp - 0x0026]       ; 0x3837
    mov bx, word [bp - 0x0032]       ; 0x383a
@..math_loc_361e.l21:
    mov al, byte [cs:bx]             ; 0x383d
    and al, dl                       ; 0x3840
    je short @..math_loc_361e.l22    ; 0x3842
    inc word [bp - 0x0030]           ; 0x3844
    mov ax, word [bp - 0x0030]       ; 0x3847
    cmp ax, word [bp - 0x0034]       ; 0x384a
    je short @..math_loc_361e.l24    ; 0x384d
    inc cx                           ; 0x384f
@..math_loc_361e.l22:
    ror dl, 1                        ; 0x3850
    cmp dl, 0x80                     ; 0x3852
    jne short @..math_loc_361e.l23   ; 0x3855
    inc bx                           ; 0x3857
@..math_loc_361e.l23:
    loop @..math_loc_361e.l21        ; 0x3858
@..math_loc_361e.l24:
    mov word [bp - 0x0032], bx       ; 0x385a
    mov ax, word [bp - 0x0030]       ; 0x385d
    add ax, word [bp - 0x0040]       ; 0x3860
    add ax, word [bp - 0x0028]       ; 0x3863
    add ax, word [bp - 0x0026]       ; 0x3866
    mov cx, word [bp - 0x003e]       ; 0x3869
    sub cx, ax                       ; 0x386c
    jbe short @..math_loc_361e.l27   ; 0x386e
    mov bx, word [bp - 0x0032]       ; 0x3870
@..math_loc_361e.l25:
    or byte [cs:bx], dl              ; 0x3873
    ror dl, 1                        ; 0x3876
    cmp dl, 0x80                     ; 0x3878
    jne short @..math_loc_361e.l26   ; 0x387b
    inc bx                           ; 0x387d
@..math_loc_361e.l26:
    loop @..math_loc_361e.l25        ; 0x387e
@..math_loc_361e.l27:
    jmp near @..math_loc_361e.l41    ; 0x3880
@..math_loc_361e.l28:
    mov bx, word [bp - 0x001e]       ; 0x3883
    inc bx                           ; 0x3886
    mov word [bp - 0x003e], bx       ; 0x3887
    mov bx, data_36dd                ; 0x388a
    mov dl, 0x80                     ; 0x388d
    xor ax, ax                       ; 0x388f
    mov word [bp - 0x0030], ax       ; 0x3891
    mov word [bp - 0x0040], ax       ; 0x3894
    mov cx, word [bp - 0x002a]       ; 0x3897
    or cx, cx                        ; 0x389a
    je short @..math_loc_361e.l33    ; 0x389c
@..math_loc_361e.l29:
    mov al, byte [cs:bx]             ; 0x389e
    and al, dl                       ; 0x38a1
    jne short @..math_loc_361e.l30   ; 0x38a3
    or byte [cs:bx], dl              ; 0x38a5
    jmp short @..math_loc_361e.l31   ; 0x38a8
@..math_loc_361e.l30:
    inc word [bp - 0x0030]           ; 0x38aa
    inc cx                           ; 0x38ad
@..math_loc_361e.l31:
    ror dl, 1                        ; 0x38ae
    cmp dl, 0x80                     ; 0x38b0
    jne short @..math_loc_361e.l32   ; 0x38b3
    inc bx                           ; 0x38b5
@..math_loc_361e.l32:
    loop @..math_loc_361e.l29        ; 0x38b6
@..math_loc_361e.l33:
    mov word [bp - 0x0032], bx       ; 0x38b8
    mov ax, word [bp - 0x0030]       ; 0x38bb
    mov word [bp - 0x0040], ax       ; 0x38be
    add ax, word [bp - 0x002a]       ; 0x38c1
    mov bx, word [bp - 0x003e]       ; 0x38c4
    cmp bx, ax                       ; 0x38c7
    ja short @..math_loc_361e.l34    ; 0x38c9
    jmp near @..math_loc_361e.l56    ; 0x38cb
@..math_loc_361e.l34:
    sub bx, ax                       ; 0x38ce
    xor ax, ax                       ; 0x38d0
    mov word [bp - 0x0030], ax       ; 0x38d2
    sub bx, word [bp - 0x0026]       ; 0x38d5
    jbe short @..math_loc_361e.l41   ; 0x38d8
    mov word [bp - 0x0034], bx       ; 0x38da
    mov cx, word [bp - 0x0026]       ; 0x38dd
    mov bx, word [bp - 0x0032]       ; 0x38e0
@..math_loc_361e.l35:
    mov al, byte [cs:bx]             ; 0x38e3
    and al, dl                       ; 0x38e6
    je short @..math_loc_361e.l36    ; 0x38e8
    inc word [bp - 0x0030]           ; 0x38ea
    mov ax, word [bp - 0x0030]       ; 0x38ed
    cmp ax, word [bp - 0x0034]       ; 0x38f0
    je short @..math_loc_361e.l38    ; 0x38f3
    inc cx                           ; 0x38f5
@..math_loc_361e.l36:
    ror dl, 1                        ; 0x38f6
    cmp dl, 0x80                     ; 0x38f8
    jne short @..math_loc_361e.l37   ; 0x38fb
    inc bx                           ; 0x38fd
@..math_loc_361e.l37:
    loop @..math_loc_361e.l35        ; 0x38fe
@..math_loc_361e.l38:
    mov word [bp - 0x0032], bx       ; 0x3900
    mov ax, word [bp - 0x0030]       ; 0x3903
    add ax, word [bp - 0x0040]       ; 0x3906
    add ax, word [bp - 0x002a]       ; 0x3909
    add ax, word [bp - 0x0026]       ; 0x390c
    mov cx, word [bp - 0x003e]       ; 0x390f
    sub cx, ax                       ; 0x3912
    jbe short @..math_loc_361e.l41   ; 0x3914
    mov bx, word [bp - 0x0032]       ; 0x3916
@..math_loc_361e.l39:
    or byte [cs:bx], dl              ; 0x3919
    ror dl, 1                        ; 0x391c
    cmp dl, 0x80                     ; 0x391e
    jne short @..math_loc_361e.l40   ; 0x3921
    inc bx                           ; 0x3923
@..math_loc_361e.l40:
    loop @..math_loc_361e.l39        ; 0x3924
@..math_loc_361e.l41:
    mov ax, word [bp + 0x1a]         ; 0x3926
    and al, 2                        ; 0x3929
    jne short @..math_loc_361e.l48   ; 0x392b
    mov bx, data_3705                ; 0x392d
    mov dl, 0x80                     ; 0x3930
    xor ax, ax                       ; 0x3932
    mov word [bp - 0x0030], ax       ; 0x3934
    mov word [bp - 0x0040], ax       ; 0x3937
    mov cx, word [bp - 0x0024]       ; 0x393a
    or cx, cx                        ; 0x393d
    je short @..math_loc_361e.l46    ; 0x393f
@..math_loc_361e.l42:
    mov al, byte [cs:bx]             ; 0x3941
    and al, dl                       ; 0x3944
    jne short @..math_loc_361e.l43   ; 0x3946
    or byte [cs:bx], dl              ; 0x3948
    jmp short @..math_loc_361e.l44   ; 0x394b
@..math_loc_361e.l43:
    inc word [bp - 0x0030]           ; 0x394d
    inc cx                           ; 0x3950
@..math_loc_361e.l44:
    ror dl, 1                        ; 0x3951
    cmp dl, 0x80                     ; 0x3953
    jne short @..math_loc_361e.l45   ; 0x3956
    inc bx                           ; 0x3958
@..math_loc_361e.l45:
    loop @..math_loc_361e.l42        ; 0x3959
@..math_loc_361e.l46:
    mov ax, word [bp - 0x0030]       ; 0x395b
    mov word [bp - 0x0040], ax       ; 0x395e
    add ax, word [bp - 0x0024]       ; 0x3961
    mov bx, word [bp - 0x0004]       ; 0x3964
    mov cl, 3                        ; 0x3967
    shl bx, cl                       ; 0x3969
    cmp bx, ax                       ; 0x396b
    ja short @..math_loc_361e.l47    ; 0x396d
    jmp near @..math_loc_361e.l56    ; 0x396f
@..math_loc_361e.l47:
    jmp short @..math_loc_361e.l54   ; 0x3972
@..math_loc_361e.l48:
    mov bx, data_3705                ; 0x3974
    mov dl, 0x80                     ; 0x3977
    xor ax, ax                       ; 0x3979
    mov word [bp - 0x0030], ax       ; 0x397b
    mov word [bp - 0x0040], ax       ; 0x397e
    mov cx, word [bp - 0x002c]       ; 0x3981
    or cx, cx                        ; 0x3984
    je short @..math_loc_361e.l53    ; 0x3986
@..math_loc_361e.l49:
    mov al, byte [cs:bx]             ; 0x3988
    and al, dl                       ; 0x398b
    jne short @..math_loc_361e.l50   ; 0x398d
    or byte [cs:bx], dl              ; 0x398f
    jmp short @..math_loc_361e.l51   ; 0x3992
@..math_loc_361e.l50:
    inc word [bp - 0x0030]           ; 0x3994
    inc cx                           ; 0x3997
@..math_loc_361e.l51:
    ror dl, 1                        ; 0x3998
    cmp dl, 0x80                     ; 0x399a
    jne short @..math_loc_361e.l52   ; 0x399d
    inc bx                           ; 0x399f
@..math_loc_361e.l52:
    loop @..math_loc_361e.l49        ; 0x39a0
@..math_loc_361e.l53:
    mov ax, word [bp - 0x0030]       ; 0x39a2
    add ax, word [bp - 0x002c]       ; 0x39a5
    mov bx, word [bp - 0x0004]       ; 0x39a8
    mov cl, 3                        ; 0x39ab
    shl bx, cl                       ; 0x39ad
    cmp bx, ax                       ; 0x39af
    jbe short @..math_loc_361e.l56   ; 0x39b1
@..math_loc_361e.l54:
    mov ax, word [bp + 0x20]         ; 0x39b3
    mov bl, 0xc                      ; 0x39b6
    div bl                           ; 0x39b8
    xor ah, ah                       ; 0x39ba
    mov word [bp - 0x0030], ax       ; 0x39bc
@..math_loc_361e.l55:
    mov si, word [bp + 0x1c]         ; 0x39bf
    mov bx, word [bp - 0x0008]       ; 0x39c2
    mov ds, bx                       ; 0x39c5
    xor ah, ah                       ; 0x39c7
    mov al, byte [ss:si]             ; 0x39c9
    or al, al                        ; 0x39cc
    je short @..math_loc_361e.l56    ; 0x39ce
    call dos_con_loc_39e3            ; 0x39d0
    call math_loc_3a8b               ; 0x39d3
    inc word [bp + 0x1c]             ; 0x39d6
    jmp short @..math_loc_361e.l55   ; 0x39d9
@..math_loc_361e.l56:
    pop di                           ; 0x39db
    pop si                           ; 0x39dc
    pop es                           ; 0x39dd
    pop ds                           ; 0x39de
    mov sp, bp                       ; 0x39df
    pop bp                           ; 0x39e1
    ret                              ; 0x39e2
%include "ega/dos_con_loc_39e3.asm"

%include "ega/dos_con_loc_3a0f.asm"

%include "ega/leaf_loc_3a51.asm"

@..leaf_loc_3a51.l5:
    test si, 0x8000                  ; 0x3a6e
    jne short @..leaf_loc_3a51.l4    ; 0x3a72
    mov cl, 3                        ; 0x3a74
    mov ax, si                       ; 0x3a76
    shr ax, cl                       ; 0x3a78
    mov bx, ax                       ; 0x3a7a
    mov ax, si                       ; 0x3a7c
    and al, 7                        ; 0x3a7e
    mov cl, al                       ; 0x3a80
    mov al, 0x80                     ; 0x3a82
    shr al, cl                       ; 0x3a84
    or byte [cs:bx + di], al         ; 0x3a86
    jmp short @..leaf_loc_3a51.l1    ; 0x3a89
%include "ega/math_loc_3a8b.asm"

@..math_loc_3a8b.l26:
    jmp near @..math_loc_3a8b.l6     ; 0x3bec
@..math_loc_3a8b.l27:
    jmp near @..math_loc_3a8b.l4     ; 0x3bef
%include "ega/math_loc_3bf2.asm"

%include "ega/math_loc_3c12.asm"

@..math_loc_3a8b.l28:
    mov ax, word [bp - 0x002a]       ; 0x3c2e
    sub word [bp - 0x000e], ax       ; 0x3c31
    mov ax, word [bp - 0x0024]       ; 0x3c34
    mov bx, 0x140                    ; 0x3c37
    mul bx                           ; 0x3c3a
    add word [bp - 0x000e], ax       ; 0x3c3c
@..math_loc_3a8b.l29:
    mov ax, word [bp - 0x0022]       ; 0x3c3f
    mov di, word [bp - 0x000e]       ; 0x3c42
    add di, word [bp - 0x001e]       ; 0x3c45
    cmp di, ax                       ; 0x3c48
    jb short @..math_loc_3a8b.l30    ; 0x3c4a
    jmp near @..math_loc_3a8b.l50    ; 0x3c4c
@..math_loc_3a8b.l30:
    push cx                          ; 0x3c4f
    call math_loc_3bf2               ; 0x3c50
    mov ax, data_36dd                ; 0x3c53
    mov word [bp - 0x0034], ax       ; 0x3c56
    mov cx, word [bp - 0x0002]       ; 0x3c59
@..math_loc_3a8b.l31:
    push cx                          ; 0x3c5c
    call math_loc_3c12               ; 0x3c5d
    mov bx, word [bp - 0x000c]       ; 0x3c60
    mov al, byte [bx]                ; 0x3c63
    and al, byte [bp - 0x000a]       ; 0x3c65
    jne short @..math_loc_3a8b.l32   ; 0x3c68
    jmp near @..math_loc_3a8b.l48    ; 0x3c6a
@..math_loc_3a8b.l32:
    mov bx, word [bp - 0x0034]       ; 0x3c6d
    mov al, byte [cs:bx]             ; 0x3c70
    cmp al, 0xff                     ; 0x3c73
    jne short @..math_loc_3a8b.l33   ; 0x3c75
    add si, byte 0x40                ; 0x3c77
    jmp near @..math_loc_3a8b.l48    ; 0x3c7a
@..math_loc_3a8b.l33:
    push di                          ; 0x3c7d
    push si                          ; 0x3c7e
    mov al, 0x80                     ; 0x3c7f
    mov byte [bp - 0x0038], al       ; 0x3c81
    mov cx, 8                        ; 0x3c84
@..math_loc_3a8b.l34:
    cmp di, word [bp - 0x0022]       ; 0x3c87
    jb short @..math_loc_3a8b.l35    ; 0x3c8a
    jmp near @..math_loc_3a8b.l47    ; 0x3c8c
@..math_loc_3a8b.l35:
    mov bx, word [bp - 0x0036]       ; 0x3c8f
    mov al, byte [cs:bx]             ; 0x3c92
    and al, byte [bp - 0x0038]       ; 0x3c95
    je short @..math_loc_3a8b.l36    ; 0x3c98
    jmp near @..math_loc_3a8b.l46    ; 0x3c9a
@..math_loc_3a8b.l36:
    push cx                          ; 0x3c9d
    push di                          ; 0x3c9e
    mov al, 0x80                     ; 0x3c9f
    mov byte [bp - 0x0032], al       ; 0x3ca1
    mov cx, 8                        ; 0x3ca4
@..math_loc_3a8b.l37:
    mov bx, word [bp - 0x0034]       ; 0x3ca7
    mov al, byte [cs:bx]             ; 0x3caa
    and al, byte [bp - 0x0032]       ; 0x3cad
    jne short @..math_loc_3a8b.l45   ; 0x3cb0
    mov al, byte [si]                ; 0x3cb2
    cmp al, 0xff                     ; 0x3cb4
    je short @..math_loc_3a8b.l42    ; 0x3cb6
    cmp byte [bp + 0x1e], 2          ; 0x3cb8
    jne short @..math_loc_3a8b.l39   ; 0x3cbc
    mov al, byte [es:di]             ; 0x3cbe
    mov bx, 0x40cd                   ; 0x3cc1
    add bx, ax                       ; 0x3cc4
    add al, byte [si]                ; 0x3cc6
    jb short @..math_loc_3a8b.l38    ; 0x3cc8
    cmp al, byte [cs:bx]             ; 0x3cca
    jb short @..math_loc_3a8b.l41    ; 0x3ccd
@..math_loc_3a8b.l38:
    mov al, byte [cs:bx]             ; 0x3ccf
    jmp short @..math_loc_3a8b.l41   ; 0x3cd2
@..math_loc_3a8b.l39:
    cmp byte [bp - 0x0030], 0        ; 0x3cd4
    je short @..math_loc_3a8b.l41    ; 0x3cd8
    mov bx, 0x40cd                   ; 0x3cda
    add bx, ax                       ; 0x3cdd
    add al, byte [bp - 0x0030]       ; 0x3cdf
    jb short @..math_loc_3a8b.l40    ; 0x3ce2
    cmp al, byte [cs:bx]             ; 0x3ce4
    jb short @..math_loc_3a8b.l41    ; 0x3ce7
@..math_loc_3a8b.l40:
    mov al, byte [cs:bx]             ; 0x3ce9
@..math_loc_3a8b.l41:
    mov byte [es:di], al             ; 0x3cec
@..math_loc_3a8b.l42:
    inc si                           ; 0x3cef
    dec di                           ; 0x3cf0
    ror byte [bp - 0x0032], 1        ; 0x3cf1
    loop @..math_loc_3a8b.l37        ; 0x3cf4
@..math_loc_3a8b.l43:
    pop di                           ; 0x3cf6
    pop cx                           ; 0x3cf7
    add di, strict word 0x140        ; 0x3cf8
@..math_loc_3a8b.l44:
    ror byte [bp - 0x0038], 1        ; 0x3cfc
    loop @..math_loc_3a8b.l34        ; 0x3cff
    jmp short @..math_loc_3a8b.l47   ; 0x3d01
@..math_loc_3a8b.l45:
    inc si                           ; 0x3d03
    ror byte [bp - 0x0032], 1        ; 0x3d04
    loop @..math_loc_3a8b.l37        ; 0x3d07
    jmp short @..math_loc_3a8b.l43   ; 0x3d09
@..math_loc_3a8b.l46:
    add si, byte 8                   ; 0x3d0b
    jmp short @..math_loc_3a8b.l44   ; 0x3d0e
@..math_loc_3a8b.l47:
    pop si                           ; 0x3d10
    add si, byte 0x40                ; 0x3d11
    pop di                           ; 0x3d14
@..math_loc_3a8b.l48:
    sub di, byte 8                   ; 0x3d15
    add di, word [bp - 0x003c]       ; 0x3d18
    rol byte [bp - 0x000a], 1        ; 0x3d1b
    cmp byte [bp - 0x000a], 1        ; 0x3d1e
    jne short @..math_loc_3a8b.l49   ; 0x3d22
    inc word [bp - 0x000c]           ; 0x3d24
@..math_loc_3a8b.l49:
    inc word [bp - 0x0034]           ; 0x3d27
    pop cx                           ; 0x3d2a
    loop @..math_loc_3a8b.l51        ; 0x3d2b
    pop cx                           ; 0x3d2d
    add word [bp - 0x000e], strict word 0xa00 ; 0x3d2e
    mov ax, word [bp - 0x003e]       ; 0x3d33
    sub word [bp - 0x000e], ax       ; 0x3d36
    inc word [bp - 0x0036]           ; 0x3d39
    mov byte [bp - 0x003a], 0x80     ; 0x3d3c
    loop @..math_loc_3a8b.l52        ; 0x3d40
@..math_loc_3a8b.l50:
    pop es                           ; 0x3d42
    ret                              ; 0x3d43
@..math_loc_3a8b.l51:
    jmp near @..math_loc_3a8b.l31    ; 0x3d44
@..math_loc_3a8b.l52:
    jmp near @..math_loc_3a8b.l29    ; 0x3d47
@..math_loc_3a8b.l53:
    mov ax, word [bp - 0x0004]       ; 0x3d4a
    mov cx, 0xa00                    ; 0x3d4d
    mul cx                           ; 0x3d50
    sub ax, 0x140                    ; 0x3d52
    add ax, word [bp - 0x0006]       ; 0x3d55
    mov word [bp - 0x000e], ax       ; 0x3d58
    mov si, word [bx]                ; 0x3d5b
    add si, bx                       ; 0x3d5d
    mov word [bp - 0x000a], 1        ; 0x3d5f
    lea ax, word [bx + 0x4]          ; 0x3d64
    mov word [bp - 0x000c], ax       ; 0x3d67
    mov cx, word [bp - 0x0004]       ; 0x3d6a
    mov byte [bp - 0x003a], 0x80     ; 0x3d6d
    mov ax, word [bp - 0x0028]       ; 0x3d71
    add word [bp - 0x000e], ax       ; 0x3d74
    mov ax, word [bp - 0x002c]       ; 0x3d77
    mov bx, 0x140                    ; 0x3d7a
    mul bx                           ; 0x3d7d
    sub word [bp - 0x000e], ax       ; 0x3d7f
@..math_loc_3a8b.l54:
    mov ax, word [bp - 0x002e]       ; 0x3d82
    mov di, word [bp - 0x000e]       ; 0x3d85
    cmp ax, di                       ; 0x3d88
    jbe short @..math_loc_3a8b.l55   ; 0x3d8a
    jmp near @..math_loc_3a8b.l75    ; 0x3d8c
@..math_loc_3a8b.l55:
    push cx                          ; 0x3d8f
    call math_loc_3bf2               ; 0x3d90
    mov ax, data_36dd                ; 0x3d93
    mov word [bp - 0x0034], ax       ; 0x3d96
    mov cx, word [bp - 0x0002]       ; 0x3d99
@..math_loc_3a8b.l56:
    push cx                          ; 0x3d9c
    call math_loc_3c12               ; 0x3d9d
    mov bx, word [bp - 0x000c]       ; 0x3da0
    mov al, byte [bx]                ; 0x3da3
    and al, byte [bp - 0x000a]       ; 0x3da5
    jne short @..math_loc_3a8b.l57   ; 0x3da8
    jmp near @..math_loc_3a8b.l73    ; 0x3daa
@..math_loc_3a8b.l57:
    mov bx, word [bp - 0x0034]       ; 0x3dad
    mov al, byte [cs:bx]             ; 0x3db0
    cmp al, 0xff                     ; 0x3db3
    jne short @..math_loc_3a8b.l58   ; 0x3db5
    add si, byte 0x40                ; 0x3db7
    jmp near @..math_loc_3a8b.l73    ; 0x3dba
@..math_loc_3a8b.l58:
    push di                          ; 0x3dbd
    push si                          ; 0x3dbe
    mov al, 0x80                     ; 0x3dbf
    mov byte [bp - 0x0038], al       ; 0x3dc1
    mov cx, 8                        ; 0x3dc4
@..math_loc_3a8b.l59:
    cmp word [bp - 0x002e], di       ; 0x3dc7
    jbe short @..math_loc_3a8b.l60   ; 0x3dca
    jmp near @..math_loc_3a8b.l72    ; 0x3dcc
@..math_loc_3a8b.l60:
    mov bx, word [bp - 0x0036]       ; 0x3dcf
    mov al, byte [cs:bx]             ; 0x3dd2
    and al, byte [bp - 0x0038]       ; 0x3dd5
    je short @..math_loc_3a8b.l61    ; 0x3dd8
    jmp near @..math_loc_3a8b.l71    ; 0x3dda
@..math_loc_3a8b.l61:
    push cx                          ; 0x3ddd
    push di                          ; 0x3dde
    mov al, 0x80                     ; 0x3ddf
    mov byte [bp - 0x0032], al       ; 0x3de1
    mov cx, 8                        ; 0x3de4
@..math_loc_3a8b.l62:
    mov bx, word [bp - 0x0034]       ; 0x3de7
    mov al, byte [cs:bx]             ; 0x3dea
    and al, byte [bp - 0x0032]       ; 0x3ded
    jne short @..math_loc_3a8b.l70   ; 0x3df0
    mov al, byte [si]                ; 0x3df2
    cmp al, 0xff                     ; 0x3df4
    je short @..math_loc_3a8b.l67    ; 0x3df6
    cmp byte [bp + 0x1e], 2          ; 0x3df8
    jne short @..math_loc_3a8b.l64   ; 0x3dfc
    mov al, byte [es:di]             ; 0x3dfe
    mov bx, 0x40cd                   ; 0x3e01
    add bx, ax                       ; 0x3e04
    add al, byte [si]                ; 0x3e06
    jb short @..math_loc_3a8b.l63    ; 0x3e08
    cmp al, byte [cs:bx]             ; 0x3e0a
    jb short @..math_loc_3a8b.l66    ; 0x3e0d
@..math_loc_3a8b.l63:
    mov al, byte [cs:bx]             ; 0x3e0f
    jmp short @..math_loc_3a8b.l66   ; 0x3e12
@..math_loc_3a8b.l64:
    cmp byte [bp - 0x0030], 0        ; 0x3e14
    je short @..math_loc_3a8b.l66    ; 0x3e18
    mov bx, 0x40cd                   ; 0x3e1a
    add bx, ax                       ; 0x3e1d
    add al, byte [bp - 0x0030]       ; 0x3e1f
    jb short @..math_loc_3a8b.l65    ; 0x3e22
    cmp al, byte [cs:bx]             ; 0x3e24
    jb short @..math_loc_3a8b.l66    ; 0x3e27
@..math_loc_3a8b.l65:
    mov al, byte [cs:bx]             ; 0x3e29
@..math_loc_3a8b.l66:
    mov byte [es:di], al             ; 0x3e2c
@..math_loc_3a8b.l67:
    inc si                           ; 0x3e2f
    inc di                           ; 0x3e30
    ror byte [bp - 0x0032], 1        ; 0x3e31
    loop @..math_loc_3a8b.l62        ; 0x3e34
@..math_loc_3a8b.l68:
    pop di                           ; 0x3e36
    sub di, strict word 0x140        ; 0x3e37
    pop cx                           ; 0x3e3b
@..math_loc_3a8b.l69:
    ror byte [bp - 0x0038], 1        ; 0x3e3c
    loop @..math_loc_3a8b.l59        ; 0x3e3f
    jmp short @..math_loc_3a8b.l72   ; 0x3e41
@..math_loc_3a8b.l70:
    inc si                           ; 0x3e43
    ror byte [bp - 0x0032], 1        ; 0x3e44
    loop @..math_loc_3a8b.l62        ; 0x3e47
    jmp short @..math_loc_3a8b.l68   ; 0x3e49
@..math_loc_3a8b.l71:
    add si, byte 8                   ; 0x3e4b
    jmp short @..math_loc_3a8b.l69   ; 0x3e4e
@..math_loc_3a8b.l72:
    pop si                           ; 0x3e50
    add si, byte 0x40                ; 0x3e51
    pop di                           ; 0x3e54
@..math_loc_3a8b.l73:
    add di, byte 8                   ; 0x3e55
    sub di, word [bp - 0x003c]       ; 0x3e58
    rol byte [bp - 0x000a], 1        ; 0x3e5b
    cmp byte [bp - 0x000a], 1        ; 0x3e5e
    jne short @..math_loc_3a8b.l74   ; 0x3e62
    inc word [bp - 0x000c]           ; 0x3e64
@..math_loc_3a8b.l74:
    inc word [bp - 0x0034]           ; 0x3e67
    pop cx                           ; 0x3e6a
    loop @..math_loc_3a8b.l76        ; 0x3e6b
    pop cx                           ; 0x3e6d
    sub word [bp - 0x000e], strict word 0xa00 ; 0x3e6e
    mov ax, word [bp - 0x003e]       ; 0x3e73
    add word [bp - 0x000e], ax       ; 0x3e76
    inc word [bp - 0x0036]           ; 0x3e79
    mov byte [bp - 0x003a], 0x80     ; 0x3e7c
    loop @..math_loc_3a8b.l77        ; 0x3e80
@..math_loc_3a8b.l75:
    pop es                           ; 0x3e82
    ret                              ; 0x3e83
@..math_loc_3a8b.l76:
    jmp near @..math_loc_3a8b.l56    ; 0x3e84
@..math_loc_3a8b.l77:
    jmp near @..math_loc_3a8b.l54    ; 0x3e87
@..math_loc_3a8b.l78:
    mov ax, word [bp - 0x0004]       ; 0x3e8a
    mov cx, 0xa00                    ; 0x3e8d
    mul cx                           ; 0x3e90
    sub ax, 0x140                    ; 0x3e92
    add ax, word [bp - 0x0006]       ; 0x3e95
    mov word [bp - 0x000e], ax       ; 0x3e98
    mov si, word [bx]                ; 0x3e9b
    add si, bx                       ; 0x3e9d
    mov word [bp - 0x000a], 1        ; 0x3e9f
    lea ax, word [bx + 0x4]          ; 0x3ea4
    mov word [bp - 0x000c], ax       ; 0x3ea7
    mov cx, word [bp - 0x0004]       ; 0x3eaa
    mov byte [bp - 0x003a], 0x80     ; 0x3ead
    mov ax, word [bp - 0x002a]       ; 0x3eb1
    sub word [bp - 0x000e], ax       ; 0x3eb4
    mov ax, word [bp - 0x002c]       ; 0x3eb7
    mov bx, 0x140                    ; 0x3eba
    mul bx                           ; 0x3ebd
    sub word [bp - 0x000e], ax       ; 0x3ebf
@..math_loc_3a8b.l79:
    mov ax, word [bp - 0x002e]       ; 0x3ec2
    mov di, word [bp - 0x000e]       ; 0x3ec5
    add di, word [bp - 0x001e]       ; 0x3ec8
    cmp ax, di                       ; 0x3ecb
    jb short @..math_loc_3a8b.l80    ; 0x3ecd
    jmp near @..math_loc_3a8b.l100   ; 0x3ecf
@..math_loc_3a8b.l80:
    push cx                          ; 0x3ed2
    call math_loc_3bf2               ; 0x3ed3
    mov ax, data_36dd                ; 0x3ed6
    mov word [bp - 0x0034], ax       ; 0x3ed9
    mov cx, word [bp - 0x0002]       ; 0x3edc
@..math_loc_3a8b.l81:
    push cx                          ; 0x3edf
    call math_loc_3c12               ; 0x3ee0
    mov bx, word [bp - 0x000c]       ; 0x3ee3
    mov al, byte [bx]                ; 0x3ee6
    and al, byte [bp - 0x000a]       ; 0x3ee8
    jne short @..math_loc_3a8b.l82   ; 0x3eeb
    jmp near @..math_loc_3a8b.l98    ; 0x3eed
@..math_loc_3a8b.l82:
    mov bx, word [bp - 0x0034]       ; 0x3ef0
    mov al, byte [cs:bx]             ; 0x3ef3
    cmp al, 0xff                     ; 0x3ef6
    jne short @..math_loc_3a8b.l83   ; 0x3ef8
    add si, byte 0x40                ; 0x3efa
    jmp near @..math_loc_3a8b.l98    ; 0x3efd
@..math_loc_3a8b.l83:
    push di                          ; 0x3f00
    push si                          ; 0x3f01
    mov al, 0x80                     ; 0x3f02
    mov byte [bp - 0x0038], al       ; 0x3f04
    mov cx, 8                        ; 0x3f07
@..math_loc_3a8b.l84:
    cmp word [bp - 0x002e], di       ; 0x3f0a
    jbe short @..math_loc_3a8b.l85   ; 0x3f0d
    jmp near @..math_loc_3a8b.l97    ; 0x3f0f
@..math_loc_3a8b.l85:
    mov bx, word [bp - 0x0036]       ; 0x3f12
    mov al, byte [cs:bx]             ; 0x3f15
    and al, byte [bp - 0x0038]       ; 0x3f18
    je short @..math_loc_3a8b.l86    ; 0x3f1b
    jmp near @..math_loc_3a8b.l96    ; 0x3f1d
@..math_loc_3a8b.l86:
    push cx                          ; 0x3f20
    push di                          ; 0x3f21
    mov al, 0x80                     ; 0x3f22
    mov byte [bp - 0x0032], al       ; 0x3f24
    mov cx, 8                        ; 0x3f27
@..math_loc_3a8b.l87:
    mov bx, word [bp - 0x0034]       ; 0x3f2a
    mov al, byte [cs:bx]             ; 0x3f2d
    and al, byte [bp - 0x0032]       ; 0x3f30
    jne short @..math_loc_3a8b.l95   ; 0x3f33
    mov al, byte [si]                ; 0x3f35
    cmp al, 0xff                     ; 0x3f37
    je short @..math_loc_3a8b.l92    ; 0x3f39
    cmp byte [bp + 0x1e], 2          ; 0x3f3b
    jne short @..math_loc_3a8b.l89   ; 0x3f3f
    mov al, byte [es:di]             ; 0x3f41
    mov bx, 0x40cd                   ; 0x3f44
    add bx, ax                       ; 0x3f47
    add al, byte [si]                ; 0x3f49
    jb short @..math_loc_3a8b.l88    ; 0x3f4b
    cmp al, byte [cs:bx]             ; 0x3f4d
    jb short @..math_loc_3a8b.l91    ; 0x3f50
@..math_loc_3a8b.l88:
    mov al, byte [cs:bx]             ; 0x3f52
    jmp short @..math_loc_3a8b.l91   ; 0x3f55
@..math_loc_3a8b.l89:
    cmp byte [bp - 0x0030], 0        ; 0x3f57
    je short @..math_loc_3a8b.l91    ; 0x3f5b
    mov bx, 0x40cd                   ; 0x3f5d
    add bx, ax                       ; 0x3f60
    add al, byte [bp - 0x0030]       ; 0x3f62
    jb short @..math_loc_3a8b.l90    ; 0x3f65
    cmp al, byte [cs:bx]             ; 0x3f67
    jb short @..math_loc_3a8b.l91    ; 0x3f6a
@..math_loc_3a8b.l90:
    mov al, byte [cs:bx]             ; 0x3f6c
@..math_loc_3a8b.l91:
    mov byte [es:di], al             ; 0x3f6f
@..math_loc_3a8b.l92:
    inc si                           ; 0x3f72
    dec di                           ; 0x3f73
    ror byte [bp - 0x0032], 1        ; 0x3f74
    loop @..math_loc_3a8b.l87        ; 0x3f77
@..math_loc_3a8b.l93:
    pop di                           ; 0x3f79
    sub di, strict word 0x140        ; 0x3f7a
    pop cx                           ; 0x3f7e
@..math_loc_3a8b.l94:
    ror byte [bp - 0x0038], 1        ; 0x3f7f
    loop @..math_loc_3a8b.l84        ; 0x3f82
    jmp short @..math_loc_3a8b.l97   ; 0x3f84
@..math_loc_3a8b.l95:
    inc si                           ; 0x3f86
    ror byte [bp - 0x0032], 1        ; 0x3f87
    loop @..math_loc_3a8b.l87        ; 0x3f8a
    jmp short @..math_loc_3a8b.l93   ; 0x3f8c
@..math_loc_3a8b.l96:
    add si, byte 8                   ; 0x3f8e
    jmp short @..math_loc_3a8b.l94   ; 0x3f91
@..math_loc_3a8b.l97:
    pop si                           ; 0x3f93
    add si, byte 0x40                ; 0x3f94
    pop di                           ; 0x3f97
@..math_loc_3a8b.l98:
    sub di, byte 8                   ; 0x3f98
    add di, word [bp - 0x003c]       ; 0x3f9b
    rol byte [bp - 0x000a], 1        ; 0x3f9e
    cmp byte [bp - 0x000a], 1        ; 0x3fa1
    jne short @..math_loc_3a8b.l99   ; 0x3fa5
    inc word [bp - 0x000c]           ; 0x3fa7
@..math_loc_3a8b.l99:
    inc word [bp - 0x0034]           ; 0x3faa
    pop cx                           ; 0x3fad
    loop @..math_loc_3a8b.l101       ; 0x3fae
    pop cx                           ; 0x3fb0
    sub word [bp - 0x000e], strict word 0xa00 ; 0x3fb1
    mov ax, word [bp - 0x003e]       ; 0x3fb6
    add word [bp - 0x000e], ax       ; 0x3fb9
    inc word [bp - 0x0036]           ; 0x3fbc
    mov byte [bp - 0x003a], 0x80     ; 0x3fbf
    loop @..math_loc_3a8b.l102       ; 0x3fc3
@..math_loc_3a8b.l100:
    pop es                           ; 0x3fc5
    ret                              ; 0x3fc6
@..math_loc_3a8b.l101:
    jmp near @..math_loc_3a8b.l81    ; 0x3fc7
@..math_loc_3a8b.l102:
    jmp near @..math_loc_3a8b.l79    ; 0x3fca

    db 0x00, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f
    db 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f
    db '####++++++++////:::::::::::?????JJJJJJJJJJJOOOOO]]]]]]]]]]]]]]__oooooooooooooooowwwwwwww'
    db 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f
    db 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x93, 0x93, 0x93, 0x93, 0x96, 0x96, 0x96, 0x9f
    db 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0xa3, 0xa3, 0xa3, 0xa3, 0xa6, 0xa6, 0xa6, 0xaf
    db 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7
    db 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf
    db 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xdf
    db 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xe2, 0xe2, 0xe2, 0xe6, 0xe6, 0xe6, 0xe6, 0xef
    db 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xfe, 0xfe
    db 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xff

@..dos_write_file_2.l1:
    mov ax, cs                       ; 0x40cd
    mov ds, ax                       ; 0x40cf
    mov dx, 0x41dd                   ; 0x40d1
%include "ega/dos_con_loc_40d4.asm"

%include "ega/dos_write_file_2.asm"

    mov ax, word [cs:data_01e5]      ; 0x4310
    mov ds, ax                       ; 0x4314
    mov ax, word [bp + 0xe]          ; 0x4316
    mov bx, 0x140                    ; 0x4319
    mul bx                           ; 0x431c
    add ax, word [bp + 0xc]          ; 0x431e
    mov word [bp - 0x0002], ax       ; 0x4321
    stosw                            ; 0x4324
    xor ax, ax                       ; 0x4325
    stosw                            ; 0x4327
    mov ax, word [bp - 0x0004]       ; 0x4328
    stosw                            ; 0x432b
    mov ax, word [bp - 0x0006]       ; 0x432c
    stosw                            ; 0x432f
    mov ax, word [bp - 0x0008]       ; 0x4330
    stosw                            ; 0x4333
    mov ax, word [bp - 0x000a]       ; 0x4334
    stosw                            ; 0x4337
@..dos_write_file_2.l16:
    mov si, word [bp - 0x0002]       ; 0x4338
    add word [bp - 0x0002], strict word 0x140 ; 0x433b
    mov cx, word [bp - 0x0006]       ; 0x4340
    rep movsb                        ; 0x4343
    test di, 0xc000                  ; 0x4345
    je short @..dos_write_file_2.l17 ; 0x4349
    inc word [cs:data_4540]          ; 0x434b
    mov ax, word [cs:data_4540]      ; 0x4350
    call dos_file_loc_4442           ; 0x4354
    and di, strict word 0x3fff       ; 0x4357
@..dos_write_file_2.l17:
    dec word [bp - 0x0004]           ; 0x435b
    jne short @..dos_write_file_2.l16 ; 0x435e
    mov ax, word [bp - 0x000c]       ; 0x4360
    mov dx, word [bp + 0x14]         ; 0x4363
    jmp near @..dos_write_file_2.l19 ; 0x4366
@..dos_write_file_2.l18:
    mov ax, cs                       ; 0x4369
    mov ds, ax                       ; 0x436b
    mov dx, 0x4479                   ; 0x436d
%include "ega/dos_con_loc_4370.asm"

@..dos_write_file_2.l20:
    mov ax, cs                       ; 0x43a0
    mov ds, ax                       ; 0x43a2
    mov dx, 0x44b0                   ; 0x43a4
%include "ega/dos_con_loc_43a7.asm"

%include "ega/dos_con_loc_43d8.asm"

%include "ega/dos_file_loc_4442.asm"

%include "ega/dos_read_file_4.asm"

%include "ega/dos_file_loc_45bd.asm"

%include "ega/dos_con_loc_45f2.asm"

%include "ega/dos_read_file_5.asm"

@..dos_read_file_5.l9:
    mov ax, cs                       ; 0x47a8
    mov ds, ax                       ; 0x47aa
    mov dx, 0x48b8                   ; 0x47ac
%include "ega/dos_con_loc_47af.asm"

%include "ega/dos_con_loc_47f7.asm"

@..local.l58:
    mov ax, cs                       ; 0x4933
    mov ds, ax                       ; 0x4935
    mov dx, 0x4a43                   ; 0x4937
%include "ega/dos_con_loc_493a.asm"

%include "ega/dos_con_loc_4984.asm"

%include "ega/dos_read_file_6.asm"

@..dos_read_file_6.l4:
    mov ax, cs                       ; 0x4ada
    mov ds, ax                       ; 0x4adc
    mov dx, 0x4bea                   ; 0x4ade
%include "ega/dos_con_loc_4ae1.asm"

%include "ega/dos_con_loc_4b1d.asm"

%include "ega/dos_file_loc_4bb2.asm"

%include "ega/dos_file_loc_4bcb.asm"

loc_4c4c:
    push bp                          ; 0x4c4c
    mov bp, sp                       ; 0x4c4d
    sub sp, byte 0x0a                ; 0x4c4f
    push ds                          ; 0x4c52
    push es                          ; 0x4c53
    push si                          ; 0x4c54
    push di                          ; 0x4c55
    mov ax, ds                       ; 0x4c56
    mov es, ax                       ; 0x4c58
    mov ax, word [bp + 0xc]          ; 0x4c5a
    cmp ax, strict word 0x14         ; 0x4c5d
    jb short @..local.l60            ; 0x4c60
    jmp near @..local.l62            ; 0x4c62
@..local.l60:
    shl ax, 1                        ; 0x4c65
    shl ax, 1                        ; 0x4c67
    mov bx, 0x4ab4                   ; 0x4c69
    add bx, ax                       ; 0x4c6c
    mov ax, word [cs:bx]             ; 0x4c6e
    or ax, ax                        ; 0x4c71
    jne short @..local.l61           ; 0x4c73
    jmp near @..local.l62            ; 0x4c75
@..local.l61:
    mov word [cs:bx], 0              ; 0x4c78
    mov cx, word [cs:data_11cb]      ; 0x4c7d
    dec cx                           ; 0x4c82
    mov word [cs:data_11cb], cx      ; 0x4c83
    call loc_4c93                    ; 0x4c88
@..local.l62:
    pop di                           ; 0x4c8b
    pop si                           ; 0x4c8c
    pop es                           ; 0x4c8d
    pop ds                           ; 0x4c8e
    mov sp, bp                       ; 0x4c8f
    pop bp                           ; 0x4c91
    ret                              ; 0x4c92
loc_4c93:
    call leaf_loc_4ca9               ; 0x4c93
    call dos_con_loc_4cbe            ; 0x4c96
    call dos_con_loc_4ce8            ; 0x4c99
    call dos_con_loc_4cd3            ; 0x4c9c
    call dos_con_loc_4cfd            ; 0x4c9f
    call dos_con_loc_4d13            ; 0x4ca2
    call leaf_loc_4d55               ; 0x4ca5
    ret                              ; 0x4ca8
%include "ega/leaf_loc_4ca9.asm"

%include "ega/dos_con_loc_4cbe.asm"

%include "ega/dos_con_loc_4cd3.asm"

%include "ega/dos_con_loc_4ce8.asm"

%include "ega/dos_con_loc_4cfd.asm"

%include "ega/dos_con_loc_4d13.asm"


    db 0x0d, 0x0a, 0x07
    db 'Score slot moved.', 0
    db 0x0a, 0x24

%include "ega/leaf_loc_4d55.asm"

loc_4dd9:
    push bp                          ; 0x4dd9
    mov bp, sp                       ; 0x4dda
    sub sp, byte 0x0a                ; 0x4ddc
    push ds                          ; 0x4ddf
    push es                          ; 0x4de0
    push si                          ; 0x4de1
    push di                          ; 0x4de2
    mov ax, ds                       ; 0x4de3
    mov es, ax                       ; 0x4de5
    mov ax, word [bp + 0xc]          ; 0x4de7
    cmp ax, strict word 0x14         ; 0x4dea
    jb short @..local.l63            ; 0x4ded
    jmp near @..local.l65            ; 0x4def
@..local.l63:
    shl ax, 1                        ; 0x4df2
    shl ax, 1                        ; 0x4df4
    mov bx, 0x4ab4                   ; 0x4df6
    add bx, ax                       ; 0x4df9
    mov ax, word [cs:bx + 0x2]       ; 0x4dfb
    mov word [bp - 0x0002], ax       ; 0x4dff
    mov ax, word [cs:bx]             ; 0x4e02
    or ax, ax                        ; 0x4e05
    jne short @..local.l64           ; 0x4e07
    jmp near @..local.l65            ; 0x4e09
@..local.l64:
    dec ax                           ; 0x4e0c
    mov word [bp - 0x0004], ax       ; 0x4e0d
    push word [bp + 0x12]            ; 0x4e10
    push word [bp + 0x10]            ; 0x4e13
    push word [bp + 0xe]             ; 0x4e16
    mov ax, word [bp - 0x0002]       ; 0x4e19
    push ax                          ; 0x4e1c
    xor ax, ax                       ; 0x4e1d
    push ax                          ; 0x4e1f
    mov bx, 0x10fb                   ; 0x4e20
    mov ax, word [bp - 0x0004]       ; 0x4e23
    shl ax, 1                        ; 0x4e26
    shl ax, 1                        ; 0x4e28
    add bx, ax                       ; 0x4e2a
    mov ax, word [cs:bx]             ; 0x4e2c
    add ax, word [cs:data_01e1]      ; 0x4e2f
    push ax                          ; 0x4e34
    xor ax, ax                       ; 0x4e35
    push ax                          ; 0x4e37
    call far [cs:data_021a]          ; 0x4e38
    add sp, byte 0x0e                ; 0x4e3d
@..local.l65:
    pop di                           ; 0x4e40
    pop si                           ; 0x4e41
    pop es                           ; 0x4e42
    pop ds                           ; 0x4e43
    mov sp, bp                       ; 0x4e44
    pop bp                           ; 0x4e46
    ret                              ; 0x4e47
loc_4e48:
    push bp                          ; 0x4e48
    mov bp, sp                       ; 0x4e49
    push ds                          ; 0x4e4b
    push es                          ; 0x4e4c
    push si                          ; 0x4e4d
    push di                          ; 0x4e4e
    mov ax, ds                       ; 0x4e4f
    mov es, ax                       ; 0x4e51
    push word [bp + 0xc]             ; 0x4e53
    call far [cs:data_0222]          ; 0x4e56
    pop cx                           ; 0x4e5b
    pop di                           ; 0x4e5c
    pop si                           ; 0x4e5d
    pop es                           ; 0x4e5e
    pop ds                           ; 0x4e5f
    mov sp, bp                       ; 0x4e60
    pop bp                           ; 0x4e62
    ret                              ; 0x4e63
loc_4e64:
    push bp                          ; 0x4e64
    mov bp, sp                       ; 0x4e65
    sub sp, byte 0x0a                ; 0x4e67
    push ds                          ; 0x4e6a
    push es                          ; 0x4e6b
    push si                          ; 0x4e6c
    push di                          ; 0x4e6d
    mov ax, ds                       ; 0x4e6e
    mov es, ax                       ; 0x4e70
    xor ax, ax                       ; 0x4e72
    push ax                          ; 0x4e74
    push ax                          ; 0x4e75
    push ax                          ; 0x4e76
    push ax                          ; 0x4e77
    push ax                          ; 0x4e78
    push ax                          ; 0x4e79
    push ax                          ; 0x4e7a
    call far [cs:data_021a]          ; 0x4e7b
    add sp, byte 0x0e                ; 0x4e80
    pop di                           ; 0x4e83
    pop si                           ; 0x4e84
    pop es                           ; 0x4e85
    pop ds                           ; 0x4e86
    mov sp, bp                       ; 0x4e87
    pop bp                           ; 0x4e89
    ret                              ; 0x4e8a

    times 34 db 0

%include "ega/dos_read_file_8.asm"

@..dos_read_file_8.l5:
    mov ax, cs                       ; 0x4fc4
    mov ds, ax                       ; 0x4fc6
    mov dx, 0x50d4                   ; 0x4fc8
    mov ah, 9                        ; 0x4fcb
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4fcf
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... slot already used.', 0
    db 0x0a, 0x24

@..dos_read_file_8.l6:
    mov ax, cs                       ; 0x5000
    mov ds, ax                       ; 0x5002
    mov dx, 0x5110                   ; 0x5004
    mov ah, 9                        ; 0x5007
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x500b
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... not enough memory.', 0
    db 0x0a, 0x24

loc_503c:
    push bp                          ; 0x503c
    mov bp, sp                       ; 0x503d
    sub sp, byte 0x0a                ; 0x503f
    push ds                          ; 0x5042
    push es                          ; 0x5043
    push si                          ; 0x5044
    push di                          ; 0x5045
    mov ax, ds                       ; 0x5046
    mov es, ax                       ; 0x5048
    mov bx, word [bp + 0xc]          ; 0x504a
    shl bx, 1                        ; 0x504d
    add bx, strict word 0x4fa3       ; 0x504f
    mov ax, word [cs:bx]             ; 0x5053
    mov word [bp - 0x0008], ax       ; 0x5056
    mov bx, word [bp + 0xc]          ; 0x5059
    shl bx, 1                        ; 0x505c
    shl bx, 1                        ; 0x505e
    add bx, strict word 0x4f8b       ; 0x5060
    mov word [bp - 0x0002], bx       ; 0x5064
    mov ax, word [cs:bx + 0x2]       ; 0x5067
    mov word [bp - 0x0006], ax       ; 0x506b
    mov ax, word [cs:bx]             ; 0x506e
    or ax, ax                        ; 0x5071
    je short @..local.l67            ; 0x5073
    dec ax                           ; 0x5075
    shl ax, 1                        ; 0x5076
    shl ax, 1                        ; 0x5078
    mov bx, 0x10fb                   ; 0x507a
    add bx, ax                       ; 0x507d
    mov word [bp - 0x0004], bx       ; 0x507f
    push word [bp - 0x0008]          ; 0x5082
    xor ax, ax                       ; 0x5085
    cmp word [bp - 0x0006], byte 0   ; 0x5087
    je short @..local.l66            ; 0x508b
    mov ax, word [cs:bx]             ; 0x508d
    add ax, word [cs:data_01e1]      ; 0x5090
@..local.l66:
    push ax                          ; 0x5095
    xor ax, ax                       ; 0x5096
    push ax                          ; 0x5098
    call far [cs:data_020e]          ; 0x5099
    add sp, byte 6                   ; 0x509e
    push word [bp + 0x10]            ; 0x50a1
    push word [bp + 0xe]             ; 0x50a4
    call far [cs:data_0216]          ; 0x50a7
    add sp, byte 4                   ; 0x50ac
    push word [bp + 0x12]            ; 0x50af
    mov bx, word [bp - 0x0004]       ; 0x50b2
    mov ax, word [cs:bx]             ; 0x50b5
    add ax, word [cs:data_01e1]      ; 0x50b8
    push ax                          ; 0x50bd
    push word [bp - 0x0006]          ; 0x50be
    call far [cs:data_0206]          ; 0x50c1
    add sp, byte 6                   ; 0x50c6
@..local.l67:
    pop di                           ; 0x50c9
    pop si                           ; 0x50ca
    pop es                           ; 0x50cb
    pop ds                           ; 0x50cc
    mov sp, bp                       ; 0x50cd
    pop bp                           ; 0x50cf
    ret                              ; 0x50d0
loc_50d1:
    push bp                          ; 0x50d1
    mov bp, sp                       ; 0x50d2
    sub sp, byte 0x0a                ; 0x50d4
    push ds                          ; 0x50d7
    push es                          ; 0x50d8
    push si                          ; 0x50d9
    push di                          ; 0x50da
    mov ax, ds                       ; 0x50db
    mov es, ax                       ; 0x50dd
    mov ax, word [bp + 0xc]          ; 0x50df
    cmp ax, strict word 5            ; 0x50e2
    jb short @..local.l68            ; 0x50e5
    jmp near @..local.l70            ; 0x50e7
@..local.l68:
    shl ax, 1                        ; 0x50ea
    shl ax, 1                        ; 0x50ec
    mov bx, 0x4f8b                   ; 0x50ee
    add bx, ax                       ; 0x50f1
    mov ax, word [cs:bx]             ; 0x50f3
    or ax, ax                        ; 0x50f6
    jne short @..local.l69           ; 0x50f8
    jmp near @..local.l70            ; 0x50fa
@..local.l69:
    mov word [cs:bx], 0              ; 0x50fd
    mov cx, word [cs:data_11cb]      ; 0x5102
    dec cx                           ; 0x5107
    mov word [cs:data_11cb], cx      ; 0x5108
    call loc_4c93                    ; 0x510d
@..local.l70:
    pop di                           ; 0x5110
    pop si                           ; 0x5111
    pop es                           ; 0x5112
    pop ds                           ; 0x5113
    mov sp, bp                       ; 0x5114
    pop bp                           ; 0x5116
    ret                              ; 0x5117
loc_5118:
    push bp                          ; 0x5118
    mov bp, sp                       ; 0x5119
    push ds                          ; 0x511b
    push es                          ; 0x511c
    push si                          ; 0x511d
    push di                          ; 0x511e
    mov ax, ds                       ; 0x511f
    mov es, ax                       ; 0x5121
    call far [cs:data_021e]          ; 0x5123
    pop di                           ; 0x5128
    pop si                           ; 0x5129
    pop es                           ; 0x512a
    pop ds                           ; 0x512b
    mov sp, bp                       ; 0x512c
    pop bp                           ; 0x512e
    ret                              ; 0x512f
loc_5130:
    push bp                          ; 0x5130
    mov bp, sp                       ; 0x5131
    push ds                          ; 0x5133
    push es                          ; 0x5134
    push si                          ; 0x5135
    push di                          ; 0x5136
    mov ax, ds                       ; 0x5137
    mov es, ax                       ; 0x5139
    call far [cs:data_0212]          ; 0x513b
    pop di                           ; 0x5140
    pop si                           ; 0x5141
    pop es                           ; 0x5142
    pop ds                           ; 0x5143
    mov sp, bp                       ; 0x5144
    pop bp                           ; 0x5146
    ret                              ; 0x5147
loc_5148:
    push bp                          ; 0x5148
    mov bp, sp                       ; 0x5149
    push ds                          ; 0x514b
    push es                          ; 0x514c
    push si                          ; 0x514d
    push di                          ; 0x514e
    mov ax, ds                       ; 0x514f
    mov es, ax                       ; 0x5151
    push word [bp + 0xe]             ; 0x5153
    push word [bp + 0xc]             ; 0x5156
    call far [cs:data_0216]          ; 0x5159
    add sp, byte 4                   ; 0x515e
    pop di                           ; 0x5161
    pop si                           ; 0x5162
    pop es                           ; 0x5163
    pop ds                           ; 0x5164
    mov sp, bp                       ; 0x5165
    pop bp                           ; 0x5167
    ret                              ; 0x5168
    db 0x00
