api_idx_0002_9:
    mov ax, 0xfffe                   ; 0x8793
    call aztec_csav                  ; 0x8796
    mov ax, 0x25                     ; 0x8799
    push ax                          ; 0x879c
    mov ax, 0x14                     ; 0x879d
    imul word [bp + 0x4]             ; 0x87a0
    add ax, 0x9e88                   ; 0x87a3
    push ax                          ; 0x87a6
    call strlen                      ; 0x87a7
    add sp, byte 4                   ; 0x87aa
    mov word [bp - 0x0002], ax       ; 0x87ad
    cmp ax, strict word 0            ; 0x87b0
    jl short @..api_idx_0002_9.l1    ; 0x87b3
    push ax                          ; 0x87b5
    mov ax, 0x14                     ; 0x87b6
    imul word [bp + 0x4]             ; 0x87b9
    add ax, 0x9e88                   ; 0x87bc
    push ax                          ; 0x87bf
    push word [bp + 0x6]             ; 0x87c0
    call aztec_strncpy               ; 0x87c3
    add sp, byte 6                   ; 0x87c6
    mov bx, word [bp + 0x6]          ; 0x87c9
    mov si, word [bp - 0x0002]       ; 0x87cc
    mov byte [bx + si], 0            ; 0x87cf
    jmp short @..api_idx_0002_9.l3   ; 0x87d2
@..api_idx_0002_9.l1:
    mov ax, 0x40                     ; 0x87d4
    push ax                          ; 0x87d7
    mov ax, 0x14                     ; 0x87d8
    imul word [bp + 0x4]             ; 0x87db
    add ax, 0x9e88                   ; 0x87de
    push ax                          ; 0x87e1
    call strlen                      ; 0x87e2
    add sp, byte 4                   ; 0x87e5
    mov word [bp - 0x0002], ax       ; 0x87e8
    cmp ax, strict word 0            ; 0x87eb
    jl short @..api_idx_0002_9.l2    ; 0x87ee
    push ax                          ; 0x87f0
    mov ax, 0x14                     ; 0x87f1
    imul word [bp + 0x4]             ; 0x87f4
    add ax, 0x9e88                   ; 0x87f7
    push ax                          ; 0x87fa
    push word [bp + 0x6]             ; 0x87fb
    call aztec_strncpy               ; 0x87fe
    add sp, byte 6                   ; 0x8801
    mov bx, word [bp + 0x6]          ; 0x8804
    mov si, word [bp - 0x0002]       ; 0x8807
    mov byte [bx + si], 0            ; 0x880a
    jmp short @..api_idx_0002_9.l3   ; 0x880d
@..api_idx_0002_9.l2:
    mov ax, 0x5e                     ; 0x880f
    push ax                          ; 0x8812
    mov ax, 0x14                     ; 0x8813
    imul word [bp + 0x4]             ; 0x8816
    add ax, 0x9e88                   ; 0x8819
    push ax                          ; 0x881c
    call strlen                      ; 0x881d
    add sp, byte 4                   ; 0x8820
    mov word [bp - 0x0002], ax       ; 0x8823
    cmp ax, strict word 0            ; 0x8826
    jl short @..api_idx_0002_9.l3    ; 0x8829
    push ax                          ; 0x882b
    mov ax, 0x14                     ; 0x882c
    imul word [bp + 0x4]             ; 0x882f
    add ax, 0x9e88                   ; 0x8832
    push ax                          ; 0x8835
    push word [bp + 0x6]             ; 0x8836
    call aztec_strncpy               ; 0x8839
    add sp, byte 6                   ; 0x883c
    mov bx, word [bp + 0x6]          ; 0x883f
    mov si, word [bp - 0x0002]       ; 0x8842
    mov byte [bx + si], 0            ; 0x8845
@..api_idx_0002_9.l3:
    ret                              ; 0x8848
