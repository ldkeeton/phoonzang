; auto-generated
api_idx_0004_QUVO:
    mov ax, 0xfffc                   ; 0x0034
    call aztec_csav                  ; 0x0037
    mov ax, word [bp + 6]            ; 0x003a
    mov bx, 0x64                     ; 0x003d
    imul bx                          ; 0x0040
    push ax                          ; 0x0042
    push dx                          ; 0x0043
    mov ax, word [bp + 8]            ; 0x0044
    cwd                              ; 0x0047
    mov cx, ax                       ; 0x0048
    mov bx, dx                       ; 0x004a
    pop dx                           ; 0x004c
    pop ax                           ; 0x004d
    call aztec_ldv                   ; 0x004e
    mov cx, ax                       ; 0x0051
    mov bx, dx                       ; 0x0053
    mov ax, 0x64                     ; 0x0055
    mov dx, 0                        ; 0x0058
    sub ax, cx                       ; 0x005b
    sbb dx, bx                       ; 0x005d
    mov word [bp - 2], dx            ; 0x005f
    mov word [bp - 4], ax            ; 0x0062
    cmp dx, byte 0                   ; 0x0065
    jg short .forward1               ; 0x0068
    jne short .forward2              ; 0x006a
    cmp ax, strict word 0x32         ; 0x006c
    jbe short .forward2              ; 0x006f
.forward1:
    jmp short .forward3              ; 0x0071
.forward2:
    mov ax, 0                        ; 0x0073
    ret                              ; 0x0076
.forward3:
    cmp word [bp - 2], byte 0        ; 0x0077
    jg short .forward4               ; 0x007b
    jne short .forward5              ; 0x007d
    cmp word [bp - 4], byte 0x42     ; 0x007f
    jbe short .forward5              ; 0x0083
.forward4:
    jmp short .forward6              ; 0x0085
.forward5:
    mov ax, 0                        ; 0x0087
    cmp word [bp + 4], byte 0        ; 0x008a
    jne short .return1               ; 0x008e
    mov ax, 5                        ; 0x0090
.return1:
    ret                              ; 0x0093
.forward6:
    cmp word [bp - 2], byte 0        ; 0x0094
    jg short .forward7               ; 0x0098
    jne short .forward8              ; 0x009a
    cmp word [bp - 4], byte 0x4b     ; 0x009c
    jbe short .forward8              ; 0x00a0
.forward7:
    jmp short .forward9              ; 0x00a2
.forward8:
    mov ax, 1                        ; 0x00a4
    cmp word [bp + 4], byte 0        ; 0x00a7
    jne short .return2               ; 0x00ab
    mov ax, 0xa                      ; 0x00ad
.return2:
    ret                              ; 0x00b0
.forward9:
    cmp word [bp - 2], byte 0        ; 0x00b1
    jg short .forward10              ; 0x00b5
    jne short .forward11             ; 0x00b7
    cmp word [bp - 4], byte 0x5a     ; 0x00b9
    jbe short .forward11             ; 0x00bd
.forward10:
    jmp short .forward12             ; 0x00bf
.forward11:
    mov ax, 2                        ; 0x00c1
    cmp word [bp + 4], byte 0        ; 0x00c4
    jne short .return3               ; 0x00c8
    mov ax, 0x14                     ; 0x00ca
.return3:
    ret                              ; 0x00cd
.forward12:
    mov ax, 4                        ; 0x00ce
    cmp word [bp + 4], byte 0        ; 0x00d1
    jne short .return4               ; 0x00d5
    mov ax, 0x28                     ; 0x00d7
.return4:
    ret                              ; 0x00da
