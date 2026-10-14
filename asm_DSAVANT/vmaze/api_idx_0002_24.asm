; auto-generated
api_idx_0002_24:
    mov ax, 0xfffe                   ; 0x9920
    call aztec_csav                  ; 0x9923
    mov al, byte [bp + 0x4]          ; 0x9926
    push ax                          ; 0x9929
    mov ax, 6                        ; 0x992a
    imul word [bp + 0x8]             ; 0x992d
    mov bx, ax                       ; 0x9930
    pop ax                           ; 0x9932
    mov byte [bx - 0x7b5a], al       ; 0x9933
    mov byte [bx - 0x7b59], 0        ; 0x9937
    mov ax, 1                        ; 0x993c
    push ax                          ; 0x993f
    push word [bp + 0x8]             ; 0x9940
    mov ax, 0x26                     ; 0x9943
    imul word [bp + 0x4]             ; 0x9946
    add ax, 0x8502                   ; 0x9949
    push ax                          ; 0x994c
    call set_bitmap_bit              ; 0x994d
    add sp, byte 6                   ; 0x9950
    mov ax, 1                        ; 0x9953
    push ax                          ; 0x9956
    push word [bp + 0x8]             ; 0x9957
    mov ax, 0x26                     ; 0x995a
    imul word [bp + 0x4]             ; 0x995d
    add ax, 0x850a                   ; 0x9960
    push ax                          ; 0x9963
    call set_bitmap_bit              ; 0x9964
    add sp, byte 6                   ; 0x9967
    mov word [bp - 0x0002], 0        ; 0x996a
@..api_idx_0002_24.l1:
    mov ax, 0                        ; 0x996f
    push ax                          ; 0x9972
    push word [bp + 0x8]             ; 0x9973
    mov ax, 0x26                     ; 0x9976
    imul word [bp - 0x0002]          ; 0x9979
    add ax, 0x8504                   ; 0x997c
    push ax                          ; 0x997f
    call set_bitmap_bit              ; 0x9980
    add sp, byte 6                   ; 0x9983
    inc word [bp - 0x0002]           ; 0x9986
    mov ax, word [bp - 0x0002]       ; 0x9989
    cmp ax, strict word 0x16         ; 0x998c
    jl short @..api_idx_0002_24.l1   ; 0x998f
    mov ax, 1                        ; 0x9991
    push ax                          ; 0x9994
    push word [bp + 0x8]             ; 0x9995
    mov ax, 0x26                     ; 0x9998
    imul word [bp + 0x4]             ; 0x999b
    add ax, 0x8504                   ; 0x999e
    push ax                          ; 0x99a1
    call set_bitmap_bit              ; 0x99a2
    add sp, byte 6                   ; 0x99a5
    cmp word [bp + 0x6], byte 0xff   ; 0x99a8
    je short @..api_idx_0002_24.l2   ; 0x99ac
    mov ax, 0                        ; 0x99ae
    push ax                          ; 0x99b1
    push word [bp + 0x8]             ; 0x99b2
    mov ax, 0x26                     ; 0x99b5
    imul word [bp + 0x6]             ; 0x99b8
    add ax, 0x8502                   ; 0x99bb
    push ax                          ; 0x99be
    call set_bitmap_bit              ; 0x99bf
    add sp, byte 6                   ; 0x99c2
    mov ax, 1                        ; 0x99c5
    push ax                          ; 0x99c8
    push word [bp + 0x8]             ; 0x99c9
    mov ax, 0x26                     ; 0x99cc
    imul word [bp + 0x6]             ; 0x99cf
    add ax, 0x8504                   ; 0x99d2
    push ax                          ; 0x99d5
    call set_bitmap_bit              ; 0x99d6
    add sp, byte 6                   ; 0x99d9
@..api_idx_0002_24.l2:
    ret                              ; 0x99dc
