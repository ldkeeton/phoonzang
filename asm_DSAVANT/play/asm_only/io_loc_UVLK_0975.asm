; auto-generated
; asm only
io_loc_UVLK_0975:
    mov al, byte [di]                ; 0x0975
    cs xlatb                         ; 0x0977
    out dx, al                       ; 0x0979
    add ah, 0x80                     ; 0x097a
    adc di, byte 0                   ; 0x097d
    jb short @..io_loc_UVLK_0975.l2  ; 0x0980
    dec si                           ; 0x0982
    je short @..io_loc_UVLK_0975.l1  ; 0x0983
    mov al, 0x20                     ; 0x0985
    out 0x20, al                     ; 0x0987
    iret                             ; 0x0989
@..io_loc_UVLK_0975.l1:
    call io_loc_JPGM                 ; 0x098a
    mov si, word [cs:cseg_0a81 - IMAGE_BASE] ; 0x098d
    mov al, 0x20                     ; 0x0992
    out 0x20, al                     ; 0x0994
    iret                             ; 0x0996
@..io_loc_UVLK_0975.l2:
    call io_loc_UQMR                 ; 0x0997
    mov al, 0x20                     ; 0x099a
    out 0x20, al                     ; 0x099c
    iret                             ; 0x099e
