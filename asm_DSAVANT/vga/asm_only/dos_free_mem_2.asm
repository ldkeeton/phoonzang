; auto-generated
; asm only
dos_free_mem_2:
    push bp                          ; 0x2802
    mov bp, sp                       ; 0x2803
    sub sp, byte 0x0a                ; 0x2805
    push ds                          ; 0x2808
    push es                          ; 0x2809
    push si                          ; 0x280a
    push di                          ; 0x280b
    mov ax, ds                       ; 0x280c
    mov es, ax                       ; 0x280e
    mov ah, 0x48                     ; 0x2810
    mov bx, 0x30                     ; 0x2812
    int 0x21 ; DOS allocate memory
    jae short @..dos_free_mem_2.l1   ; 0x2817
    jmp near bios_video_loc_28ba     ; 0x2819
@..dos_free_mem_2.l1:
    mov word [bp - 0x0002], ax       ; 0x281c
    mov ax, 0x1017                   ; 0x281f
    xor bx, bx                       ; 0x2822
    mov cx, 0x100                    ; 0x2824
    mov dx, word [bp - 0x0002]       ; 0x2827
    mov es, dx                       ; 0x282a
    xor dx, dx                       ; 0x282c
    int 0x10 ; BIOS video
    mov ax, word [bp - 0x0002]       ; 0x2830
    mov ds, ax                       ; 0x2833
@..dos_free_mem_2.l2:
    mov word [bp - 0x0004], 0        ; 0x2835
    mov ax, word [bp - 0x0002]       ; 0x283a
    mov ds, ax                       ; 0x283d
    xor si, si                       ; 0x283f
    les di, word [cs:cseg_01f7 - IMAGE_BASE] ; 0x2841
    mov cx, 0x100                    ; 0x2846
@..dos_free_mem_2.l3:
    push cx                          ; 0x2849
    mov cx, 3                        ; 0x284a
@..dos_free_mem_2.l4:
    mov al, byte [si]                ; 0x284d
    cmp al, byte [es:di]             ; 0x284f
    je short @..dos_free_mem_2.l6    ; 0x2852
    mov word [bp - 0x0004], 1        ; 0x2854
    cmp al, byte [es:di]             ; 0x2859
    jb short @..dos_free_mem_2.l5    ; 0x285c
    dec byte [si]                    ; 0x285e
    jmp short @..dos_free_mem_2.l6   ; 0x2860
@..dos_free_mem_2.l5:
    inc byte [si]                    ; 0x2862
@..dos_free_mem_2.l6:
    inc si                           ; 0x2864
    inc di                           ; 0x2865
    loop @..dos_free_mem_2.l4        ; 0x2866
    pop cx                           ; 0x2868
    loop @..dos_free_mem_2.l3        ; 0x2869
    mov ax, word [bp - 0x0004]       ; 0x286b
    or ax, ax                        ; 0x286e
    je short @..dos_free_mem_2.l10   ; 0x2870
    mov ax, word [bp - 0x0002]       ; 0x2872
    mov ds, ax                       ; 0x2875
    xor si, si                       ; 0x2877
    mov cx, 0x300                    ; 0x2879
    mov dx, 0x3c8                    ; 0x287c
    mov al, 0                        ; 0x287f
    out dx, al                       ; 0x2881
@..dos_free_mem_2.l7:
    mov dx, 0x3da                    ; 0x2882
    in al, dx                        ; 0x2885
    test al, 1                       ; 0x2886
    jne short @..dos_free_mem_2.l7   ; 0x2888
@..dos_free_mem_2.l8:
    mov dx, 0x3da                    ; 0x288a
    in al, dx                        ; 0x288d
    test al, 1                       ; 0x288e
    je short @..dos_free_mem_2.l8    ; 0x2890
    lodsb                            ; 0x2892
    mov dx, 0x3c9                    ; 0x2893
    out dx, al                       ; 0x2896
    loop @..dos_free_mem_2.l7        ; 0x2897
    mov ax, word [bp + 0xc]          ; 0x2899
    or ax, ax                        ; 0x289c
    je short @..dos_free_mem_2.l9    ; 0x289e
    push ax                          ; 0x28a0
    call far [cs:cseg_01fb - IMAGE_BASE] ; 0x28a1
    pop ax                           ; 0x28a6
@..dos_free_mem_2.l9:
    jmp short @..dos_free_mem_2.l2   ; 0x28a7
@..dos_free_mem_2.l10:
    mov bx, word [bp - 0x0002]       ; 0x28a9
    mov es, bx                       ; 0x28ac
    mov ah, 0x49                     ; 0x28ae
    int 0x21 ; DOS free memory
    pop di                           ; 0x28b2
    pop si                           ; 0x28b3
    pop es                           ; 0x28b4
    pop ds                           ; 0x28b5
    mov sp, bp                       ; 0x28b6
    pop bp                           ; 0x28b8
    ret                              ; 0x28b9
