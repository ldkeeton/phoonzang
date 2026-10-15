; auto-generated
loc_USLK:
    mov ax, 0                        ; 0x1165
    call aztec_csav                  ; 0x1168
    mov ax, word [bp + 0x4]          ; 0x116b
    jmp short @..loc_USLK.l5         ; 0x116e
@..loc_USLK.l1:
    mov ax, 4                        ; 0x1170
    push ax                          ; 0x1173
    mov ax, word [bp + 0x6]          ; 0x1174
    mov cx, 6                        ; 0x1177
    shl ax, cl                       ; 0x117a
    mov cx, word [bp + 0xa]          ; 0x117c
    shl cx, 1                        ; 0x117f
    shl cx, 1                        ; 0x1181
    shl cx, 1                        ; 0x1183
    add ax, cx                       ; 0x1185
    add ax, word [bp + 0x8]          ; 0x1187
    push ax                          ; 0x118a
    mov ax, word [bss_0e14]          ; 0x118b
    add ax, 0x90                     ; 0x118e
    push ax                          ; 0x1191
    call ds_leaf_loc_JIKQ            ; 0x1192
    add sp, byte 6                   ; 0x1195
    ret                              ; 0x1198
@..loc_USLK.l2:
    mov ax, 4                        ; 0x1199
    push ax                          ; 0x119c
    mov ax, word [bp + 0x6]          ; 0x119d
    mov cx, 6                        ; 0x11a0
    shl ax, cl                       ; 0x11a3
    mov cx, word [bp + 0xa]          ; 0x11a5
    shl cx, 1                        ; 0x11a8
    shl cx, 1                        ; 0x11aa
    shl cx, 1                        ; 0x11ac
    add ax, cx                       ; 0x11ae
    add ax, word [bp + 0x8]          ; 0x11b0
    push ax                          ; 0x11b3
    mov ax, word [bss_0e14]          ; 0x11b4
    add ax, 0x290                    ; 0x11b7
    push ax                          ; 0x11ba
    call ds_leaf_loc_JIKQ            ; 0x11bb
    add sp, byte 6                   ; 0x11be
    ret                              ; 0x11c1
@..loc_USLK.l3:
    push word [bp + 0x6]             ; 0x11c2
    push word [bp + 0xa]             ; 0x11c5
    push word [bp + 0x8]             ; 0x11c8
    push word [bp + 0xe]             ; 0x11cb
    push word [bp + 0xc]             ; 0x11ce
    call loc_PISK                    ; 0x11d1
    add sp, byte 0x0a                ; 0x11d4
    ret                              ; 0x11d7
@..loc_USLK.l4:
    push word [bp + 0x6]             ; 0x11d8
    push word [bp + 0xa]             ; 0x11db
    push word [bp + 0x8]             ; 0x11de
    push word [bp + 0xe]             ; 0x11e1
    push word [bp + 0xc]             ; 0x11e4
    call loc_TRNV                    ; 0x11e7
    add sp, byte 0x0a                ; 0x11ea
    ret                              ; 0x11ed
@..loc_USLK.l5:
    cmp ax, strict word 0            ; 0x11ee
    jne short @..loc_USLK.l6         ; 0x11f1
    jmp near @..loc_USLK.l1          ; 0x11f3
@..loc_USLK.l6:
    cmp ax, strict word 1            ; 0x11f6
    je short @..loc_USLK.l2          ; 0x11f9
    cmp ax, strict word 2            ; 0x11fb
    je short @..loc_USLK.l3          ; 0x11fe
    cmp ax, strict word 3            ; 0x1200
    je short @..loc_USLK.l4          ; 0x1203
    ret                              ; 0x1205
