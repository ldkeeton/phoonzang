; auto-generated
ds_app_mem_0782: ; Aztec csav frame=0x010a
    mov ax, 0xfef6                   ; 0x0782
    call aztec_csav                  ; 0x0785
    push word [bp + 0x4]             ; 0x0788
    call ds_app_065d                 ; 0x078b
    pop cx                           ; 0x078e
    mov word [bp - 0x0008], ax       ; 0x078f
    test ax, ax                      ; 0x0792
    jne short @..ds_app_mem_0782.l1  ; 0x0794
    mov word [bss_5216], 1           ; 0x0796
    ret                              ; 0x079c
@..ds_app_mem_0782.l1:
    mov bx, ax                       ; 0x079d
    mov al, byte [bx + 0x5]          ; 0x079f
    sub ah, ah                       ; 0x07a2
    cmp ax, word [bss_5212]          ; 0x07a4
    je short @..ds_app_mem_0782.l2   ; 0x07a8
    push ax                          ; 0x07aa
    call ds_app_file_06c6            ; 0x07ab
    pop cx                           ; 0x07ae
@..ds_app_mem_0782.l2:
    mov bx, word [bp - 0x0008]       ; 0x07af
    mov ax, word [bx + 0x2]          ; 0x07b2
    mov word [bp - 0x0002], ax       ; 0x07b5
    mov ax, word [bx]                ; 0x07b8
    mov word [bp - 0x0004], ax       ; 0x07ba
@..ds_app_mem_0782.l3:
    mov ax, word [bp + 0x4]          ; 0x07bd
    cmp ax, word [bp - 0x0004]       ; 0x07c0
    je short @..ds_app_mem_0782.l4   ; 0x07c3
    mov bx, word [bp - 0x0002]       ; 0x07c5
    mov al, byte [bx + 0x3e12]       ; 0x07c8
    sub ah, ah                       ; 0x07cc
    add ax, bx                       ; 0x07ce
    inc ax                           ; 0x07d0
    mov word [bp - 0x0002], ax       ; 0x07d1
    inc word [bp - 0x0004]           ; 0x07d4
    jmp short @..ds_app_mem_0782.l3  ; 0x07d7
@..ds_app_mem_0782.l4:
    mov bx, word [bp - 0x0002]       ; 0x07d9
    mov al, byte [bx + 0x3e12]       ; 0x07dc
    sub ah, ah                       ; 0x07e0
    mov word [bp - 0x0006], ax       ; 0x07e2
    inc word [bp - 0x0002]           ; 0x07e5
    mov word [bp - 0x0004], ax       ; 0x07e8
    lea ax, word [bp - 0x0109]       ; 0x07eb
    mov word [bp - 0x000a], ax       ; 0x07ef
    mov ax, word [bp - 0x0002]       ; 0x07f2
    add ax, word [bp - 0x0004]       ; 0x07f5
    cmp ax, 0x400                    ; 0x07f8
    jle short @..ds_app_mem_0782.l5  ; 0x07fb
    mov ax, 0x400                    ; 0x07fd
    sub ax, word [bp - 0x0002]       ; 0x0800
    push ax                          ; 0x0803
    push word [bp - 0x000a]          ; 0x0804
    mov ax, word [bp - 0x0002]       ; 0x0807
    add ax, 0x3e12                   ; 0x080a
    push ax                          ; 0x080d
    call aztec_movmem                ; 0x080e
    add sp, byte 6                   ; 0x0811
    mov ax, 0x400                    ; 0x0814
    sub ax, word [bp - 0x0002]       ; 0x0817
    sub word [bp - 0x0004], ax       ; 0x081a
    add word [bp - 0x000a], ax       ; 0x081d
    mov ax, word [bss_5212]          ; 0x0820
    inc ax                           ; 0x0823
    push ax                          ; 0x0824
    call ds_app_file_06c6            ; 0x0825
    pop cx                           ; 0x0828
    mov word [bp - 0x0002], 0        ; 0x0829
@..ds_app_mem_0782.l5:
    push word [bp - 0x0004]          ; 0x082e
    push word [bp - 0x000a]          ; 0x0831
    mov ax, word [bp - 0x0002]       ; 0x0834
    add ax, 0x3e12                   ; 0x0837
    push ax                          ; 0x083a
    call aztec_movmem                ; 0x083b
    add sp, byte 6                   ; 0x083e
    mov bx, word [bp - 0x0006]       ; 0x0841
    add bx, bp                       ; 0x0844
    mov byte [bx - 0x0109], 0        ; 0x0846
    push word [bp + 0x6]             ; 0x084b
    lea ax, word [bp - 0x0109]       ; 0x084e
    push ax                          ; 0x0852
    call ds_string_loc_4002          ; 0x0853
    add sp, byte 4                   ; 0x0856
    mov word [bss_5216], 0           ; 0x0859
    ret                              ; 0x085f
