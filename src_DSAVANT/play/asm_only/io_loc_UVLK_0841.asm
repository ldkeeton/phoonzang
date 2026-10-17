; auto-generated
; asm only
io_loc_UVLK_0841:
    mov al, byte [di]                ; 0x0841
    cs xlatb                         ; 0x0843
    out dx, al                       ; 0x0845
    add ah, 0x80                     ; 0x0846
    adc di, byte 0                   ; 0x0849
    jb short @..io_loc_UVLK_0841.l2  ; 0x084c
    dec si                           ; 0x084e
    je short @..io_loc_UVLK_0841.l1  ; 0x084f
    mov al, 0x20                     ; 0x0851
    out 0x20, al                     ; 0x0853
    iret                             ; 0x0855
@..io_loc_UVLK_0841.l1:
    call io_loc_JPGM                 ; 0x0856
    mov si, word [cs:cseg_0a81 - IMAGE_BASE] ; 0x0859
    mov al, 0x20                     ; 0x085e
    out 0x20, al                     ; 0x0860
    iret                             ; 0x0862
@..io_loc_UVLK_0841.l2:
    call io_loc_UQMR                 ; 0x0863
    mov al, 0x20                     ; 0x0866
    out 0x20, al                     ; 0x0868
    iret                             ; 0x086a
