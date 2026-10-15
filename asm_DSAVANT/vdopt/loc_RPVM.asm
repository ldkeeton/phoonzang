; auto-generated
loc_RPVM:
    mov ax, 0                        ; 0x08b9
    call aztec_csav                  ; 0x08bc
    mov ax, word [bp + 0x4]          ; 0x08bf
    jmp short @..loc_RPVM.l5         ; 0x08c2
@..loc_RPVM.l1:
    mov ax, 4                        ; 0x08c4
    push ax                          ; 0x08c7
    mov ax, word [bp + 0x6]          ; 0x08c8
    mov cx, 6                        ; 0x08cb
    shl ax, cl                       ; 0x08ce
    mov cx, word [bp + 0xa]          ; 0x08d0
    shl cx, 1                        ; 0x08d3
    shl cx, 1                        ; 0x08d5
    shl cx, 1                        ; 0x08d7
    add ax, cx                       ; 0x08d9
    add ax, word [bp + 0x8]          ; 0x08db
    push ax                          ; 0x08de
    mov ax, word [bss_0e14]          ; 0x08df
    add ax, 0x90                     ; 0x08e2
    push ax                          ; 0x08e5
    call ds_leaf_loc_JIKQ            ; 0x08e6
    add sp, byte 6                   ; 0x08e9
    ret                              ; 0x08ec
@..loc_RPVM.l2:
    mov ax, 4                        ; 0x08ed
    push ax                          ; 0x08f0
    mov ax, word [bp + 0x6]          ; 0x08f1
    mov cx, 6                        ; 0x08f4
    shl ax, cl                       ; 0x08f7
    mov cx, word [bp + 0xa]          ; 0x08f9
    shl cx, 1                        ; 0x08fc
    shl cx, 1                        ; 0x08fe
    shl cx, 1                        ; 0x0900
    add ax, cx                       ; 0x0902
    add ax, word [bp + 0x8]          ; 0x0904
    push ax                          ; 0x0907
    mov ax, word [bss_0e14]          ; 0x0908
    add ax, 0x290                    ; 0x090b
    push ax                          ; 0x090e
    call ds_leaf_loc_JIKQ            ; 0x090f
    add sp, byte 6                   ; 0x0912
    ret                              ; 0x0915
@..loc_RPVM.l3:
    push word [bp + 0x6]             ; 0x0916
    push word [bp + 0xa]             ; 0x0919
    push word [bp + 0x8]             ; 0x091c
    push word [bp + 0xe]             ; 0x091f
    push word [bp + 0xc]             ; 0x0922
    call loc_OJKI                    ; 0x0925
    add sp, byte 0x0a                ; 0x0928
    ret                              ; 0x092b
@..loc_RPVM.l4:
    push word [bp + 0x6]             ; 0x092c
    push word [bp + 0xa]             ; 0x092f
    push word [bp + 0x8]             ; 0x0932
    push word [bp + 0xe]             ; 0x0935
    push word [bp + 0xc]             ; 0x0938
    call loc_RSTG                    ; 0x093b
    add sp, byte 0x0a                ; 0x093e
    ret                              ; 0x0941
@..loc_RPVM.l5:
    cmp ax, strict word 0            ; 0x0942
    jne short @..loc_RPVM.l6         ; 0x0945
    jmp near @..loc_RPVM.l1          ; 0x0947
@..loc_RPVM.l6:
    cmp ax, strict word 1            ; 0x094a
    je short @..loc_RPVM.l2          ; 0x094d
    cmp ax, strict word 2            ; 0x094f
    je short @..loc_RPVM.l3          ; 0x0952
    cmp ax, strict word 3            ; 0x0954
    je short @..loc_RPVM.l4          ; 0x0957
    ret                              ; 0x0959
