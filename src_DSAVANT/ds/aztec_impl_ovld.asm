; auto-generated
aztec_impl_ovld:
    push bp                          ; 0x4386
    mov bp, sp                       ; 0x4387
    add sp, byte 0xae                ; 0x4389
    push di                          ; 0x438c
    push si                          ; 0x438d
    push word [bss_0cfa]             ; 0x438e
    lea ax, word [bp - 0x0052]       ; 0x4392
    push ax                          ; 0x4395
    call aztec_strcpy                ; 0x4396
    add sp, byte 4                   ; 0x4399
    mov ax, dseg_0c48                ; 0x439c
    push ax                          ; 0x439f
    lea ax, word [bp - 0x0052]       ; 0x43a0
    push ax                          ; 0x43a3
    call aztec_strcat                ; 0x43a4
    add sp, byte 4                   ; 0x43a7
    mov ax, 0                        ; 0x43aa
    push ax                          ; 0x43ad
    lea ax, word [bp - 0x0052]       ; 0x43ae
    push ax                          ; 0x43b1
    call aztec_open                  ; 0x43b2
    add sp, byte 4                   ; 0x43b5
    mov word [bp - 0x0002], ax       ; 0x43b8
    cmp ax, strict word 0xffff       ; 0x43bb
    jne short @..aztec_impl_ovld.l1  ; 0x43be
    mov ax, 0xa                      ; 0x43c0
    push ax                          ; 0x43c3
    call aztec_loadabort             ; 0x43c4
    pop cx                           ; 0x43c7
@..aztec_impl_ovld.l1:
    mov ax, 0xe                      ; 0x43c8
    push ax                          ; 0x43cb
    lea ax, word [bp - 0x0012]       ; 0x43cc
    push ax                          ; 0x43cf
    push word [bp - 0x0002]          ; 0x43d0
    call aztec_read                  ; 0x43d3
    add sp, byte 6                   ; 0x43d6
    cmp ax, strict word 0xe          ; 0x43d9
    je short @..aztec_impl_ovld.l2   ; 0x43dc
    mov ax, 0x14                     ; 0x43de
    push ax                          ; 0x43e1
    call aztec_loadabort             ; 0x43e2
    pop cx                           ; 0x43e5
@..aztec_impl_ovld.l2:
    cmp word [bp - 0x0012], strict word 0xf2 ; 0x43e6
    je short @..aztec_impl_ovld.l3   ; 0x43eb
    mov ax, 0x1e                     ; 0x43ed
    push ax                          ; 0x43f0
    call aztec_loadabort             ; 0x43f1
    pop cx                           ; 0x43f4
@..aztec_impl_ovld.l3:
    mov ax, word [bp - 0x000c]       ; 0x43f5
    add ax, word [bp - 0x000a]       ; 0x43f8
    add ax, word [bp - 0x0008]       ; 0x43fb
    cmp ax, word [_mbot]             ; 0x43fe
    jbe short @..aztec_impl_ovld.l4  ; 0x4402
    mov ax, 0x28                     ; 0x4404
    push ax                          ; 0x4407
    call aztec_loadabort             ; 0x4408
    pop cx                           ; 0x440b
@..aztec_impl_ovld.l4:
    cmp word [bp - 0x0010], strict word __zres_end ; 0x440c
    jb short @..aztec_impl_ovld.l5   ; 0x4411
    cmp word [bp - 0x000c], strict word __zdseg_end ; 0x4413
    jae short @..aztec_impl_ovld.l6  ; 0x4418
@..aztec_impl_ovld.l5:
    mov ax, 0x3c                     ; 0x441a
    push ax                          ; 0x441d
    call aztec_loadabort             ; 0x441e
    pop cx                           ; 0x4421
@..aztec_impl_ovld.l6:
    push word [bp - 0x000e]          ; 0x4422
    push word [bp - 0x0010]          ; 0x4425
    push word [bp - 0x0002]          ; 0x4428
    call aztec_impl_csread           ; 0x442b
    add sp, byte 6                   ; 0x442e
    cmp ax, word [bp - 0x000e]       ; 0x4431
    jb short @..aztec_impl_ovld.l7   ; 0x4434
    push word [bp - 0x000a]          ; 0x4436
    push word [bp - 0x000c]          ; 0x4439
    push word [bp - 0x0002]          ; 0x443c
    call aztec_read                  ; 0x443f
    add sp, byte 6                   ; 0x4442
    cmp ax, word [bp - 0x000a]       ; 0x4445
    jae short @..aztec_impl_ovld.l8  ; 0x4448
@..aztec_impl_ovld.l7:
    mov ax, 0x32                     ; 0x444a
    push ax                          ; 0x444d
    call aztec_loadabort             ; 0x444e
    pop cx                           ; 0x4451
@..aztec_impl_ovld.l8:
    push word [bp - 0x0002]          ; 0x4452
    call aztec_close                 ; 0x4455
    pop cx                           ; 0x4458
    mov ax, word [bp - 0x0006]       ; 0x4459
    pop si                           ; 0x445c
    pop di                           ; 0x445d
    mov sp, bp                       ; 0x445e
    pop bp                           ; 0x4460
    ret                              ; 0x4461
