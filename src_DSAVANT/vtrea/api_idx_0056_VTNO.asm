; auto-generated
api_idx_0056_VTNO:
    mov ax, 0xffaa                   ; 0x12cc
    call aztec_csav                  ; 0x12cf
    mov ax, 0x248                    ; 0x12d2
    imul word [bp + 4]               ; 0x12d5
    mov bx, ax                       ; 0x12d8
    cmp byte [bx + party_records + pc_rec.state], 2 ; 0x12da
    jb short .forward1               ; 0x12df
    ret                              ; 0x12e1
.forward1:
    push word [bp + 0x10]            ; 0x12e2
    push word [bp + 0xe]             ; 0x12e5
    push word [bp + 0xc]             ; 0x12e8
    call store_word_and_pair         ; 0x12eb
    add sp, byte 6                   ; 0x12ee
    mov cx, ax                       ; 0x12f1
    sub sp, byte 4                   ; 0x12f3
    mov ax, sp                       ; 0x12f6
    mov dx, ss                       ; 0x12f8
    mov es, dx                       ; 0x12fa
    mov si, cx                       ; 0x12fc
    mov di, ax                       ; 0x12fe
    movsw                            ; 0x1300
    movsw                            ; 0x1301
    call add_random_steps            ; 0x1302
    add sp, byte 4                   ; 0x1305
    mov word [bp - 6], ax            ; 0x1308
    cmp word [bp + 8], byte 0        ; 0x130b
    je short .forward2               ; 0x130f
    mov ax, 0x64                     ; 0x1311
    push ax                          ; 0x1314
    call random_below                ; 0x1315
    pop cx                           ; 0x1318
    push ax                          ; 0x1319
    mov ax, 0x248                    ; 0x131a
    imul word [bp + 4]               ; 0x131d
    add ax, word [bp + 8]            ; 0x1320
    mov bx, ax                       ; 0x1323
    mov al, byte [bx + party_records + pc_rec.cur] ; 0x1325
    sub ah, ah                       ; 0x1329
    mov cx, ax                       ; 0x132b
    pop ax                           ; 0x132d
    cmp ax, cx                       ; 0x132e
    jg short .forward2               ; 0x1330
    jmp near .return1                ; 0x1332
.forward2:
    cmp word [bp + 0x10], strict word 0xff ; 0x1335
    jne short .forward3              ; 0x133a
    mov ax, 0x248                    ; 0x133c
    imul word [bp + 4]               ; 0x133f
    add ax, word [bp + 0xa]          ; 0x1342
    mov bx, ax                       ; 0x1345
    mov byte [bx + party_records + pc_rec.status], 0xff ; 0x1347
    jmp short .forward5              ; 0x134c
.forward3:
    mov ax, 0x248                    ; 0x134e
    imul word [bp + 4]               ; 0x1351
    add ax, word [bp + 0xa]          ; 0x1354
    mov bx, ax                       ; 0x1357
    mov al, byte [bx + party_records + pc_rec.status] ; 0x1359
    sub ah, ah                       ; 0x135d
    add ax, word [bp - 6]            ; 0x135f
    cmp ax, 0xfa                     ; 0x1362
    jle short .forward4              ; 0x1365
    mov al, byte [bx + party_records + pc_rec.status] ; 0x1367
    sub ah, ah                       ; 0x136b
    mov cx, ax                       ; 0x136d
    mov ax, 0xfa                     ; 0x136f
    sub ax, cx                       ; 0x1372
    mov word [bp - 6], ax            ; 0x1374
.forward4:
    mov al, byte [bx + party_records + pc_rec.status] ; 0x1377
    sub ah, ah                       ; 0x137b
    add ax, word [bp - 6]            ; 0x137d
    mov byte [bx + party_records + pc_rec.status], al ; 0x1380
.forward5:
    cmp word [bp + 0xa], byte 5      ; 0x1384
    jne short .forward6              ; 0x1388
    mov al, byte [bp + 0xc]          ; 0x138a
    push ax                          ; 0x138d
    mov ax, 0x248                    ; 0x138e
    imul word [bp + 4]               ; 0x1391
    mov bx, ax                       ; 0x1394
    pop ax                           ; 0x1396
    mov byte [bx + party_records + pc_rec.f_023e], al ; 0x1397
.forward6:
    lea ax, word [bp - 0x56]         ; 0x139b
    push ax                          ; 0x139e
    push word [bp + 6]               ; 0x139f
    call load_message_string         ; 0x13a2
    add sp, byte 4                   ; 0x13a5
    mov ax, 0                        ; 0x13a8
    push ax                          ; 0x13ab
    push ax                          ; 0x13ac
    mov ax, 0x41                     ; 0x13ad
    push ax                          ; 0x13b0
    mov ax, 1                        ; 0x13b1
    push ax                          ; 0x13b4
    mov ax, dseg_90b3                ; 0x13b5
    push ax                          ; 0x13b8
    mov ax, dseg_90b2                ; 0x13b9
    push ax                          ; 0x13bc
    lea ax, word [bp - 0x56]         ; 0x13bd
    push ax                          ; 0x13c0
    push word [bp + 4]               ; 0x13c1
    call api_idx_0002_RJQH           ; 0x13c4
    add sp, byte 0x10                ; 0x13c7
    mov ax, 1                        ; 0x13ca
    push ax                          ; 0x13cd
    push word [bp + 4]               ; 0x13ce
    call draw_party_member_panel     ; 0x13d1
    add sp, byte 4                   ; 0x13d4
    push word [message_delay]        ; 0x13d7
    call api_idx_0004_UQUT           ; 0x13db
    pop cx                           ; 0x13de
.return1:
    ret                              ; 0x13df
