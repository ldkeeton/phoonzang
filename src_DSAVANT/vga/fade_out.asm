; auto-generated
fade_out:
    push bp                          ; 0x28f0
    mov bp, sp                       ; 0x28f1
    sub sp, byte 0xa                 ; 0x28f3
    push ds                          ; 0x28f6
    push es                          ; 0x28f7
    push si                          ; 0x28f8
    push di                          ; 0x28f9
    mov ax, ds                       ; 0x28fa
    mov es, ax                       ; 0x28fc
    lea di, word [bp - 0xa]          ; 0x28fe
    mov ax, word [bp + 0xc]          ; 0x2901
    mov word [ss:di], ax             ; 0x2904
    add di, byte 2                   ; 0x2907
    mov ax, word [bp + 0xe]          ; 0x290a
    mov word [ss:di], ax             ; 0x290d
    add di, byte 2                   ; 0x2910
    mov ax, word [bp + 0x10]         ; 0x2913
    mov word [ss:di], ax             ; 0x2916
    mov ah, 0x48                     ; 0x2919
    mov bx, 0x30                     ; 0x291b
    int 0x21 ; DOS allocate memory
    jae short .forward1              ; 0x2920
    jmp near dos_mem_loc_QHMQ        ; 0x2922
.forward1:
    mov word [bp - 2], ax            ; 0x2925
    mov ax, 0x1017                   ; 0x2928
    xor bx, bx                       ; 0x292b
    mov cx, 0x100                    ; 0x292d
    mov dx, word [bp - 2]            ; 0x2930
    mov es, dx                       ; 0x2933
    xor dx, dx                       ; 0x2935
    int 0x10 ; BIOS video
.back1:
    mov word [bp - 4], 0             ; 0x2939
    mov ax, word [bp - 2]            ; 0x293e
    mov ds, ax                       ; 0x2941
    xor si, si                       ; 0x2943
    mov cx, 0x100                    ; 0x2945
.back2:
    push cx                          ; 0x2948
    mov cx, 3                        ; 0x2949
    lea di, word [bp - 0xa]          ; 0x294c
.back3:
    xor ax, ax                       ; 0x294f
    mov al, byte [si]                ; 0x2951
    cmp ax, word [ss:di]             ; 0x2953
    je short .forward3               ; 0x2956
    mov word [bp - 4], 1             ; 0x2958
    cmp ax, word [ss:di]             ; 0x295d
    jb short .forward2               ; 0x2960
    dec byte [si]                    ; 0x2962
    jmp short .forward3              ; 0x2964
.forward2:
    inc byte [si]                    ; 0x2966
.forward3:
    inc di                           ; 0x2968
    inc di                           ; 0x2969
    inc si                           ; 0x296a
    loop .back3                      ; 0x296b
    pop cx                           ; 0x296d
    loop .back2                      ; 0x296e
    mov ax, word [bp - 4]            ; 0x2970
    or ax, ax                        ; 0x2973
    je short .forward4               ; 0x2975
    mov ax, word [bp - 2]            ; 0x2977
    mov ds, ax                       ; 0x297a
    xor si, si                       ; 0x297c
    mov cx, 0x300                    ; 0x297e
    mov dx, 0x3c8                    ; 0x2981
    mov al, 0                        ; 0x2984
    out dx, al                       ; 0x2986
.back4:
    mov dx, 0x3da                    ; 0x2987
    in al, dx                        ; 0x298a
    test al, 1                       ; 0x298b
    jne short .back4                 ; 0x298d
.back5:
    mov dx, 0x3da                    ; 0x298f
    in al, dx                        ; 0x2992
    test al, 1                       ; 0x2993
    je short .back5                  ; 0x2995
    lodsb                            ; 0x2997
    mov dx, 0x3c9                    ; 0x2998
    out dx, al                       ; 0x299b
    loop .back4                      ; 0x299c
    mov ax, word [bp + 0x12]         ; 0x299e
    or ax, ax                        ; 0x29a1
    je short .back1                  ; 0x29a3
    push ax                          ; 0x29a5
    call far [cs:delay_hook - IMAGE_BASE] ; 0x29a6
    pop ax                           ; 0x29ab
    jmp short .back1                 ; 0x29ac
.forward4:
    mov bx, word [bp - 2]            ; 0x29ae
    mov es, bx                       ; 0x29b1
    mov ah, 0x49                     ; 0x29b3
    int 0x21 ; DOS free memory
    pop di                           ; 0x29b7
    pop si                           ; 0x29b8
    pop es                           ; 0x29b9
    pop ds                           ; 0x29ba
    mov sp, bp                       ; 0x29bb
    pop bp                           ; 0x29bd
    ret                              ; 0x29be
