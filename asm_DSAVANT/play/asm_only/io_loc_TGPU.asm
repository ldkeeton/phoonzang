; auto-generated
; asm only
io_loc_TGPU:
    cli                              ; 0x08af
    push ax                          ; 0x08b0
    push ds                          ; 0x08b1
    push dx                          ; 0x08b2
    push bx                          ; 0x08b3
    cmp byte [cs:cseg_08ae - IMAGE_BASE], 0 ; 0x08b4
    js short loc_0875                ; 0x08ba
    jne short @..io_loc_TGPU.l3      ; 0x08bc
    mov ax, 0                        ; 0x08be
    mov ds, ax                       ; 0x08c1
    mov al, byte [0x0000]            ; 0x08c3
    mov dx, 0x389                    ; 0x08c6
    mov bx, 0x1a3a                   ; 0x08c9
    cs xlatb                         ; 0x08cc
    out dx, al                       ; 0x08ce
    add byte [cs:cseg_0a95 - IMAGE_BASE], 0x80 ; 0x08cf
    adc word [cs:cseg_08c4 - IMAGE_BASE], byte 0 ; 0x08d5
    jb short @..io_loc_TGPU.l2       ; 0x08db
    dec word [cs:cseg_0a81 - IMAGE_BASE] ; 0x08dd
    je short @..io_loc_TGPU.l1       ; 0x08e2
    mov al, 0x20                     ; 0x08e4
    out 0x20, al                     ; 0x08e6
    pop bx                           ; 0x08e8
    pop dx                           ; 0x08e9
    pop ds                           ; 0x08ea
    pop ax                           ; 0x08eb
    iret                             ; 0x08ec
@..io_loc_TGPU.l1:
    call io_loc_JPGM                 ; 0x08ed
    mov dx, 0x388                    ; 0x08f0
    mov al, 0x40                     ; 0x08f3
    out dx, al                       ; 0x08f5
    mov al, 0x20                     ; 0x08f6
    out 0x20, al                     ; 0x08f8
    pop bx                           ; 0x08fa
    pop dx                           ; 0x08fb
    pop ds                           ; 0x08fc
    pop ax                           ; 0x08fd
    iret                             ; 0x08fe
@..io_loc_TGPU.l2:
    mov bx, word [cs:cseg_08c4 - IMAGE_BASE] ; 0x08ff
    dec bx                           ; 0x0904
    mov al, byte [bx]                ; 0x0905
    mov byte [cs:cseg_086e - IMAGE_BASE], al ; 0x0907
    mov byte [cs:cseg_08ae - IMAGE_BASE], 1 ; 0x090b
    mov al, 0x20                     ; 0x0911
    out 0x20, al                     ; 0x0913
    pop bx                           ; 0x0915
    pop dx                           ; 0x0916
    pop ds                           ; 0x0917
    pop ax                           ; 0x0918
    iret                             ; 0x0919
    db 0xfa, 0x50, 0x1e, 0x52, 0x53
@..io_loc_TGPU.l3:
    mov al, byte [cs:cseg_086e - IMAGE_BASE] ; 0x091f
    cmp al, 0                        ; 0x0923
    je short @..io_loc_TGPU.l4       ; 0x0925
    dec byte [cs:cseg_086e - IMAGE_BASE] ; 0x0927
    mov dx, 0x389                    ; 0x092c
    mov bx, 0x1a3a                   ; 0x092f
    cs xlatb                         ; 0x0932
    out dx, al                       ; 0x0934
    dec word [cs:cseg_0a81 - IMAGE_BASE] ; 0x0935
    je short @..io_loc_TGPU.l1       ; 0x093a
    mov al, 0x20                     ; 0x093c
    out 0x20, al                     ; 0x093e
    pop bx                           ; 0x0940
    pop dx                           ; 0x0941
    pop ds                           ; 0x0942
    pop ax                           ; 0x0943
    iret                             ; 0x0944
@..io_loc_TGPU.l4:
    mov byte [cs:cseg_086e - IMAGE_BASE], 0 ; 0x0945
    mov al, 0x3f                     ; 0x094b
    mov dx, 0x388                    ; 0x094d
    out dx, al                       ; 0x0950
    call io_loc_UQMR                 ; 0x0951
    mov al, 0x20                     ; 0x0954
    out 0x20, al                     ; 0x0956
    pop bx                           ; 0x0958
    pop dx                           ; 0x0959
    pop ds                           ; 0x095a
    pop ax                           ; 0x095b
    iret                             ; 0x095c
