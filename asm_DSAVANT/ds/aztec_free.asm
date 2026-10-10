aztec_free:
    push bp                          ; 0x47e8
    mov bp, sp                       ; 0x47e9
    push si                          ; 0x47eb
    mov si, word [bp + 0x4]          ; 0x47ec
    add si, byte 0xfe                ; 0x47ef
    test word [si], 1                ; 0x47f2
    jne short @..aztec_free.l2       ; 0x47f6
    mov ax, 0xffff                   ; 0x47f8
@..aztec_free.l1:
    pop si                           ; 0x47fb
    mov sp, bp                       ; 0x47fc
    pop bp                           ; 0x47fe
    ret                              ; 0x47ff
@..aztec_free.l2:
    and word [si], strict word 0xfffe ; 0x4800
    mov word [0x0d00], si            ; 0x4804
    mov ax, 0                        ; 0x4808
    jmp short @..aztec_free.l1       ; 0x480b
    dec sp                           ; 0x480d
    insb                             ; 0x480e
    push 0x4e46                      ; 0x480f
    outsw                            ; 0x4812
    js short 0x486d                  ; 0x4813
    jne short 0x487b                 ; 0x4815
    imul si, word [bp + di + 0x63], 0x6e70 ; 0x4817
    db 0x65, 0x45 ; inc bp
    db 0x66, 0x67, 0x47 ; inc edi
    and ax, 0x470f                   ; 0x4821
    push ss                          ; 0x4824
    inc di                           ; 0x4825
    sbb al, byte [bx + 0x1d]         ; 0x4826
    inc di                           ; 0x4829
    sbb al, byte [bx + 0x24]         ; 0x482a
    inc di                           ; 0x482d
    sub ax, 0x2947                   ; 0x482e
    inc di                           ; 0x4831
    xor al, byte [bx + 0x37]         ; 0x4832
    inc di                           ; 0x4835
    aaa                              ; 0x4836
    inc di                           ; 0x4837
    pop bx                           ; 0x4838
    dec ax                           ; 0x4839
    jp short 0x4884                  ; 0x483a
    lahf                             ; 0x483c
    dec ax                           ; 0x483d
    mov byte [0x4a48], al            ; 0x483e
    dec ax                           ; 0x4841
    inc sp                           ; 0x4842
    dec ax                           ; 0x4843
    dec dx                           ; 0x4844
    dec ax                           ; 0x4845
    dec dx                           ; 0x4846
    dec ax                           ; 0x4847
    inc sp                           ; 0x4848
    dec ax                           ; 0x4849
    add byte [bp + 0x30], 0x31       ; 0x484a
    xor dh, byte [bp + di]           ; 0x484e
    xor al, 0x35                     ; 0x4850
    ss aaa                           ; 0x4852
    cmp byte [bx + di], bh           ; 0x4854
    popaw                            ; 0x4856
    bound sp, dword [bp + di + 0x64] ; 0x4857
    db 0x65, 0x66, 0x20, 0x2d ; and byte [gs:di], ch
    insb                             ; 0x485e
    insw                             ; 0x485f
    and byte [bp + 0x69], ah         ; 0x4860
    jb short 0x48d8                  ; 0x4863
    je short string_loc_4867         ; 0x4865
