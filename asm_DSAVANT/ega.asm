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

%include "ega/leaf_loc_0293.asm"

%include "ega/leaf_loc_0439.asm"

%include "ega/leaf_loc_0447.asm"

%include "ega/graphics_loc_0949.asm"

%include "ega/leaf_loc_0b91.asm"

%include "ega/leaf_loc_0bcf.asm"

%include "ega/leaf_loc_0bf6.asm"

%include "ega/string_loc_0c45.asm"

%include "ega/dos_alloc_mem.asm"

%include "ega/dos_free_mem.asm"

%include "ega/dos_read_file.asm"

%include "ega/dos_write_file.asm"

%include "ega/dos_con_loc_0f70.asm"

%include "ega/dos_con_loc_0fae.asm"

%include "ega/dos_read_file_2.asm"

%include "ega/dos_con_loc_10ff.asm"

%include "ega/dos_con_loc_1218.asm"

%include "ega/leaf_loc_1355.asm"

%include "ega/leaf_loc_145c.asm"

%include "ega/dos_con_loc_1490.asm"

%include "ega/dos_print_str.asm"

%include "ega/mouse_init.asm"

%include "ega/string_loc_17a1.asm"

%include "ega/mouse_init_2.asm"

%include "ega/leaf_loc_189f.asm"

%include "ega/bios_mouse_loc_18c1.asm"

%include "ega/leaf_loc_1900.asm"

%include "ega/bios_mouse_loc_190f.asm"

%include "ega/bios_mouse_loc_1992.asm"

%include "ega/dos_con_loc_1a9f.asm"

%include "ega/leaf_loc_2a4f.asm"

%include "ega/io_loc_2a6a.asm"

%include "ega/io_loc_2e35.asm"

%include "ega/io_loc_2e7d.asm"

%include "ega/io_loc_2f46.asm"

%include "ega/io_loc_2f70.asm"

%include "ega/dos_read_file_3.asm"

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

%include "ega/dos_mem_loc_33b3.asm"

%include "ega/bios_mouse_loc_341e.asm"

%include "ega/io_loc_35ba.asm"

%include "ega/leaf_loc_39e3.asm"

%include "ega/dos_con_loc_3a0f.asm"

%include "ega/leaf_loc_3a51.asm"

%include "ega/graphics_loc_3a8b.asm"

%include "ega/leaf_loc_3bf2.asm"

%include "ega/leaf_loc_3c12.asm"

%include "ega/dos_con_loc_40d4.asm"

%include "ega/dos_write_file_2.asm"

%include "ega/dos_con_loc_4370.asm"

%include "ega/dos_con_loc_43a7.asm"

%include "ega/dos_con_loc_43d8.asm"

%include "ega/leaf_loc_4442.asm"

%include "ega/dos_read_file_4.asm"

%include "ega/dos_file_loc_45bd.asm"

%include "ega/dos_con_loc_45f2.asm"

%include "ega/dos_read_file_5.asm"

%include "ega/dos_con_loc_47af.asm"

%include "ega/dos_con_loc_47f7.asm"

%include "ega/dos_con_loc_493a.asm"

%include "ega/dos_con_loc_4984.asm"

%include "ega/dos_read_file_6.asm"

%include "ega/dos_con_loc_4ae1.asm"

%include "ega/dos_con_loc_4b1d.asm"

%include "ega/string_loc_4bb2.asm"

%include "ega/dos_file_loc_4bcb.asm"

%include "ega/leaf_loc_4ca9.asm"

%include "ega/leaf_loc_4cbe.asm"

%include "ega/leaf_loc_4cd3.asm"

%include "ega/leaf_loc_4ce8.asm"

%include "ega/leaf_loc_4cfd.asm"

%include "ega/dos_con_loc_4d13.asm"

%include "ega/leaf_loc_4d55.asm"

%include "ega/dos_read_file_7.asm"

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
    je short @..local.l139           ; 0x5073
    dec ax                           ; 0x5075
    shl ax, 1                        ; 0x5076
    shl ax, 1                        ; 0x5078
    mov bx, 0x10fb                   ; 0x507a
    add bx, ax                       ; 0x507d
    mov word [bp - 0x0004], bx       ; 0x507f
    push word [bp - 0x0008]          ; 0x5082
    xor ax, ax                       ; 0x5085
    cmp word [bp - 0x0006], byte 0   ; 0x5087
    je short @..local.l138           ; 0x508b
    mov ax, word [cs:bx]             ; 0x508d
    add ax, word [cs:data_01e1]      ; 0x5090
@..local.l138:
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
@..local.l139:
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
    jb short @..local.l140           ; 0x50e5
    jmp near @..local.l142           ; 0x50e7
@..local.l140:
    shl ax, 1                        ; 0x50ea
    shl ax, 1                        ; 0x50ec
    mov bx, 0x4f8b                   ; 0x50ee
    add bx, ax                       ; 0x50f1
    mov ax, word [cs:bx]             ; 0x50f3
    or ax, ax                        ; 0x50f6
    jne short @..local.l141          ; 0x50f8
    jmp near @..local.l142           ; 0x50fa
@..local.l141:
    mov word [cs:bx], 0              ; 0x50fd
    mov cx, word [cs:data_11cb]      ; 0x5102
    dec cx                           ; 0x5107
    mov word [cs:data_11cb], cx      ; 0x5108
    call loc_4c93                    ; 0x510d
@..local.l142:
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
