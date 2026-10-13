%include "inc/structs/structs.inc"
%include "inc/structs/ega.inc"
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0000
%endif

cseg_0295 equ 0x0295
cseg_0297 equ 0x0297
cseg_0391 equ 0x0391
cseg_10e7 equ 0x10e7
cseg_11cb equ 0x11cb
cseg_11cd equ 0x11cd
cseg_148e equ 0x148e
dseg_24fd equ 0x24fd
cseg_2b04 equ 0x2b04
cseg_2b06 equ 0x2b06
cseg_3297 equ 0x3297
cseg_3b21 equ 0x3b21
cseg_3b22 equ 0x3b22
cseg_3b34 equ 0x3b34
cseg_4540 equ 0x4540
cseg_4ab4 equ 0x4ab4
cseg_4f8b equ 0x4f8b

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
    times 77 db 0

cseg_01e1:
    times 4 db 0
cseg_01e5:
    times 4 db 0
cseg_01e9:
    times 14 db 0
cseg_01f7:
    times 4 db 0
cseg_01fb:
    times 4 db 0
cseg_01ff:
    db 0x00, 0x00
cseg_0201:
    db 0x00, 0x00
cseg_0203:
    db 0x00, 0x00
cseg_0205:
    db 0x00
cseg_0206:
    times 8 db 0
cseg_020e:
    times 4 db 0
cseg_0212:
    times 4 db 0
cseg_0216:
    times 4 db 0
cseg_021a:
    times 4 db 0
cseg_021e:
    times 4 db 0
cseg_0222:
    times 4 db 0
cseg_0226:
    db 0x00
cseg_0227:
    db 0x00
cseg_0228:
    db 0x00
cseg_0229:

    times 40 db 0

cseg_0251:
    times 10 db 0
cseg_025b:

    times 32 db 0

cseg_027b:

    times 22 db 0

cseg_0291:
    db 0x00, 0x00
%include "ega/leaf_loc_0293.asm"           ; 0x0293

%include "ega/leaf_loc_0439.asm"           ; 0x0439

%include "ega/leaf_loc_0447.asm"           ; 0x0447

%include "ega/graphics_loc_0949.asm"       ; 0x0949

%include "ega/leaf_loc_0b91.asm"           ; 0x0b91

%include "ega/leaf_loc_0bcf.asm"           ; 0x0bcf

%include "ega/leaf_loc_0bf6.asm"           ; 0x0bf6

%include "ega/string_loc_0c45.asm"         ; 0x0c45

%include "ega/dos_alloc_mem.asm"           ; 0x0c9b

%include "ega/dos_free_mem.asm"            ; 0x0d57

%include "ega/dos_read_file.asm"           ; 0x0df3

%include "ega/dos_write_file.asm"          ; 0x0ebd

%include "ega/dos_con_loc_0f70.asm"        ; 0x0f70

%include "ega/dos_con_loc_0fae.asm"        ; 0x0fae

%include "ega/dos_read_file_2.asm"         ; 0x10cf

%include "ega/dos_con_loc_10ff.asm"        ; 0x10ff

%include "ega/dos_con_loc_1218.asm"        ; 0x1218

%include "ega/leaf_loc_1355.asm"           ; 0x1355

%include "ega/leaf_loc_145c.asm"           ; 0x145c

%include "ega/dos_con_loc_1490.asm"        ; 0x1490

%include "ega/dos_print_str.asm"           ; 0x14d8

%include "ega/mouse_init.asm"              ; 0x1719

%include "ega/string_loc_17a1.asm"         ; 0x17a1

%include "ega/mouse_init_2.asm"            ; 0x1810

%include "ega/leaf_loc_189f.asm"           ; 0x189f

%include "ega/bios_mouse_loc_18c1.asm"     ; 0x18c1

%include "ega/leaf_loc_1900.asm"           ; 0x1900

%include "ega/bios_mouse_loc_190f.asm"     ; 0x190f

%include "ega/bios_mouse_loc_1992.asm"     ; 0x1992

%include "ega/dos_print_str_2.asm"         ; 0x19c1

%include "ega/dos_con_loc_1a9f.asm"        ; 0x1a9f

%include "ega/leaf_loc_2a4f.asm"           ; 0x2a4f

%include "ega/io_loc_2a6a.asm"             ; 0x2a6a

%include "ega/io_loc_2e35.asm"             ; 0x2e35

%include "ega/io_loc_2e7d.asm"             ; 0x2e7d

%include "ega/io_loc_2f46.asm"             ; 0x2f46

%include "ega/io_loc_2f70.asm"             ; 0x2f70

%include "ega/dos_read_file_3.asm"         ; 0x3085

%include "ega/dos_con_loc_317d.asm"        ; 0x317d

%include "ega/dos_con_loc_31ad.asm"        ; 0x31ad

%include "ega/string_loc_31df.asm"         ; 0x31df

%include "ega/leaf_loc_31f4.asm"           ; 0x31f4

%include "ega/leaf_loc_3240.asm"           ; 0x3240

%include "ega/leaf_loc_3241.asm"           ; 0x3241

%include "ega/leaf_loc_3242.asm"           ; 0x3242

%include "ega/leaf_loc_3243.asm"           ; 0x3243

%include "ega/leaf_loc_3244.asm"           ; 0x3244

%include "ega/leaf_loc_3245.asm"           ; 0x3245

%include "ega/leaf_loc_3252.asm"           ; 0x3252

%include "ega/dos_mem_loc_33b3.asm"        ; 0x33b3

%include "ega/bios_mouse_loc_341e.asm"     ; 0x341e

%include "ega/io_loc_35ba.asm"             ; 0x35ba

%include "ega/leaf_loc_39e3.asm"           ; 0x39e3

%include "ega/dos_con_loc_3a0f.asm"        ; 0x3a0f

%include "ega/leaf_loc_3a51.asm"           ; 0x3a51

%include "ega/graphics_loc_3a8b.asm"       ; 0x3a8b

%include "ega/leaf_loc_3bf2.asm"           ; 0x3bf2

%include "ega/leaf_loc_3c12.asm"           ; 0x3c12

%include "ega/dos_con_loc_40d4.asm"        ; 0x40d4

%include "ega/dos_write_file_2.asm"        ; 0x4111

%include "ega/dos_con_loc_4370.asm"        ; 0x4370

%include "ega/dos_con_loc_43a7.asm"        ; 0x43a7

%include "ega/dos_con_loc_43d8.asm"        ; 0x43d8

%include "ega/leaf_loc_4442.asm"           ; 0x4442

%include "ega/dos_read_file_4.asm"         ; 0x4457

%include "ega/dos_file_loc_45bd.asm"       ; 0x45bd

%include "ega/dos_con_loc_45f2.asm"        ; 0x45f2

%include "ega/dos_read_file_5.asm"         ; 0x4624

%include "ega/dos_con_loc_47af.asm"        ; 0x47af

%include "ega/dos_con_loc_47f7.asm"        ; 0x47f7

%include "ega/dos_con_loc_493a.asm"        ; 0x493a

%include "ega/dos_con_loc_4984.asm"        ; 0x4984

%include "ega/dos_read_file_6.asm"         ; 0x4a08

%include "ega/dos_con_loc_4ae1.asm"        ; 0x4ae1

%include "ega/dos_con_loc_4b1d.asm"        ; 0x4b1d

%include "ega/string_loc_4bb2.asm"         ; 0x4bb2

%include "ega/dos_file_loc_4bcb.asm"       ; 0x4bcb

%include "ega/leaf_loc_4ca9.asm"           ; 0x4ca9

%include "ega/leaf_loc_4cbe.asm"           ; 0x4cbe

%include "ega/leaf_loc_4cd3.asm"           ; 0x4cd3

%include "ega/leaf_loc_4ce8.asm"           ; 0x4ce8

%include "ega/leaf_loc_4cfd.asm"           ; 0x4cfd

%include "ega/dos_con_loc_4d13.asm"        ; 0x4d13

%include "ega/leaf_loc_4d55.asm"           ; 0x4d55

%include "ega/dos_read_file_7.asm"         ; 0x4ead

@..dos_read_file_7.l5:
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

@..dos_read_file_7.l6:
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
    je short @..local.l131           ; 0x5073
    dec ax                           ; 0x5075
    shl ax, 1                        ; 0x5076
    shl ax, 1                        ; 0x5078
    mov bx, 0x10fb                   ; 0x507a
    add bx, ax                       ; 0x507d
    mov word [bp - 0x0004], bx       ; 0x507f
    push word [bp - 0x0008]          ; 0x5082
    xor ax, ax                       ; 0x5085
    cmp word [bp - 0x0006], byte 0   ; 0x5087
    je short @..local.l130           ; 0x508b
    mov ax, word [cs:bx]             ; 0x508d
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x5090
@..local.l130:
    push ax                          ; 0x5095
    xor ax, ax                       ; 0x5096
    push ax                          ; 0x5098
    call far [cs:cseg_020e - IMAGE_BASE] ; 0x5099
    add sp, byte 6                   ; 0x509e
    push word [bp + 0x10]            ; 0x50a1
    push word [bp + 0xe]             ; 0x50a4
    call far [cs:cseg_0216 - IMAGE_BASE] ; 0x50a7
    add sp, byte 4                   ; 0x50ac
    push word [bp + 0x12]            ; 0x50af
    mov bx, word [bp - 0x0004]       ; 0x50b2
    mov ax, word [cs:bx]             ; 0x50b5
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x50b8
    push ax                          ; 0x50bd
    push word [bp - 0x0006]          ; 0x50be
    call far [cs:cseg_0206 - IMAGE_BASE] ; 0x50c1
    add sp, byte 6                   ; 0x50c6
@..local.l131:
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
    jb short @..local.l132           ; 0x50e5
    jmp near @..local.l134           ; 0x50e7
@..local.l132:
    shl ax, 1                        ; 0x50ea
    shl ax, 1                        ; 0x50ec
    mov bx, 0x4f8b                   ; 0x50ee
    add bx, ax                       ; 0x50f1
    mov ax, word [cs:bx]             ; 0x50f3
    or ax, ax                        ; 0x50f6
    jne short @..local.l133          ; 0x50f8
    jmp near @..local.l134           ; 0x50fa
@..local.l133:
    mov word [cs:bx], 0              ; 0x50fd
    mov cx, word [cs:cseg_11cb - IMAGE_BASE] ; 0x5102
    dec cx                           ; 0x5107
    mov word [cs:cseg_11cb - IMAGE_BASE], cx ; 0x5108
    call loc_4c93                    ; 0x510d
@..local.l134:
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
    call far [cs:cseg_021e - IMAGE_BASE] ; 0x5123
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
    call far [cs:cseg_0212 - IMAGE_BASE] ; 0x513b
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
    call far [cs:cseg_0216 - IMAGE_BASE] ; 0x5159
    add sp, byte 4                   ; 0x515e
    pop di                           ; 0x5161
    pop si                           ; 0x5162
    pop es                           ; 0x5163
    pop ds                           ; 0x5164
    mov sp, bp                       ; 0x5165
    pop bp                           ; 0x5167
    ret                              ; 0x5168
    db 0x00
