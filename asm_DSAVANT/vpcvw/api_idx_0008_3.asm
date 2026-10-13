; auto-generated
api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x539e
    call aztec_csav                  ; 0x53a1
    mov word [bp - 0x0006], 0xffff   ; 0x53a4
    mov word [bp - 0x0008], 0xffff   ; 0x53a9
    mov ax, word [bss_0e0e]          ; 0x53ae
    mov word [bp - 0x0004], ax       ; 0x53b1
    mov word [bp - 0x0002], 0        ; 0x53b4
    jmp short @..api_idx_0008_3.l6   ; 0x53b9
@..api_idx_0008_3.l1:
    mov bx, word [bp - 0x0004]       ; 0x53bb
    mov al, byte [bx]                ; 0x53be
    sub ah, ah                       ; 0x53c0
    cmp ax, 0xff                     ; 0x53c2
    jne short @..api_idx_0008_3.l2   ; 0x53c5
    mov ax, word [bp - 0x0002]       ; 0x53c7
    ret                              ; 0x53ca
@..api_idx_0008_3.l2:
    mov al, byte [bx + 0x1]          ; 0x53cb
    sub ah, ah                       ; 0x53ce
    test ax, 0x40                    ; 0x53d0
    jne short @..api_idx_0008_3.l5   ; 0x53d3
    cmp word [bp - 0x0006], byte 0xff ; 0x53d5
    je short @..api_idx_0008_3.l3    ; 0x53d9
    mov ax, 7                        ; 0x53db
    push ax                          ; 0x53de
    call ds_app_09f0                 ; 0x53df
    pop cx                           ; 0x53e2
    test ax, ax                      ; 0x53e3
    jne short @..api_idx_0008_3.l5   ; 0x53e5
@..api_idx_0008_3.l3:
    mov bx, word [bp - 0x0004]       ; 0x53e7
    mov al, byte [bx]                ; 0x53ea
    sub ah, ah                       ; 0x53ec
    cmp ax, word [bss_830c]          ; 0x53ee
    jne short @..api_idx_0008_3.l4   ; 0x53f2
    mov ax, word [bp - 0x0002]       ; 0x53f4
    mov word [bp - 0x0008], ax       ; 0x53f7
    jmp short @..api_idx_0008_3.l5   ; 0x53fa
@..api_idx_0008_3.l4:
    mov ax, word [bp - 0x0002]       ; 0x53fc
    mov word [bp - 0x0006], ax       ; 0x53ff
@..api_idx_0008_3.l5:
    add word [bp - 0x0004], byte 8   ; 0x5402
    inc word [bp - 0x0002]           ; 0x5406
@..api_idx_0008_3.l6:
    mov ax, word [bp - 0x0002]       ; 0x5409
    cmp ax, word [bss_5910]          ; 0x540c
    jl short @..api_idx_0008_3.l1    ; 0x5410
    cmp word [bp + 0x4], byte 0      ; 0x5412
    je short @..api_idx_0008_3.l8    ; 0x5416
    cmp word [bp - 0x0006], byte 0xff ; 0x5418
    jne short @..api_idx_0008_3.l7   ; 0x541c
    mov ax, word [bp - 0x0008]       ; 0x541e
    ret                              ; 0x5421
@..api_idx_0008_3.l7:
    mov ax, word [bp - 0x0006]       ; 0x5422
    ret                              ; 0x5425
@..api_idx_0008_3.l8:
    mov ax, 0xffff                   ; 0x5426
    ret                              ; 0x5429
