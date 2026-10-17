; auto-generated
leaf_loc_GQQU:
    mov ax, word [bss_9b04]          ; 0x0e98
    mov word [bp - 0x0010], ax       ; 0x0e9b
    jmp short loc_UKPG               ; 0x0e9e
jumptable_0ea0:
    dw loc_UKPG - IMAGE_BASE + 0x5055          ; 0x0ea0
    dw leaf_loc_JQTI_0e80 - IMAGE_BASE + 0x5055 ; 0x0ea2
    dw leaf_loc_JQTI_0e88 - IMAGE_BASE + 0x5055 ; 0x0ea4
    dw leaf_loc_JQTI_0e90 - IMAGE_BASE + 0x5055 ; 0x0ea6
    dw leaf_loc_GQQU - IMAGE_BASE + 0x5055     ; 0x0ea8
    dw loc_UKPG - IMAGE_BASE + 0x5055          ; 0x0eaa
    dw leaf_loc_JQTI_0e90 - IMAGE_BASE + 0x5055 ; 0x0eac
    dw leaf_loc_JQTI_0e88 - IMAGE_BASE + 0x5055 ; 0x0eae
loc_TTJR:
    cmp ax, strict word 8            ; 0x0eb0
    jae short loc_UKPG               ; 0x0eb3
    xchg bx, ax                      ; 0x0eb5
    shl bx, 1                        ; 0x0eb6
    jmp [cs:bx + 0x5ee7]             ; 0x0eb8
loc_UKPG:
    cmp word [bp - 0x0010], byte 0xff ; 0x0ebd
    je short loc_PLIR                ; 0x0ec1
    mov ax, word [bp - 0x0010]       ; 0x0ec3
    push ax                          ; 0x0ec6
    mov ax, 0x24                     ; 0x0ec7
    imul word [bp + 0x8]             ; 0x0eca
    mov cx, ax                       ; 0x0ecd
    mov dx, word [bp + 0xa]          ; 0x0ecf
    shl dx, 1                        ; 0x0ed2
    add ax, dx                       ; 0x0ed4
    mov bx, ax                       ; 0x0ed6
    pop ax                           ; 0x0ed8
    mov word [bx - 0x6a54], ax       ; 0x0ed9
loc_PLIR:
    ret                              ; 0x0edd
