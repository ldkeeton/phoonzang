; auto-generated
loc_NVPH:
    push ax                          ; 0x1775
    push bx                          ; 0x1776
    push cx                          ; 0x1777
    push di                          ; 0x1778
    push dx                          ; 0x1779
    push ds                          ; 0x177a
    push si                          ; 0x177b
    mov byte [cs:cseg_1774 - IMAGE_BASE], 0x20 ; 0x177c
    mov bx, word [cs:cseg_0aac - IMAGE_BASE] ; 0x1782
    mov ds, bx                       ; 0x1787
    mov si, word [cs:cseg_0aae - IMAGE_BASE] ; 0x1789
    mov bl, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x178e
    shr bl, 1                        ; 0x1793
    shr bl, 1                        ; 0x1795
    xor bh, bh                       ; 0x1797
    mov al, byte [bx + si]           ; 0x1799
    xor ah, ah                       ; 0x179b
    mov bl, 0xb                      ; 0x179d
    mul bl                           ; 0x179f
    add ax, strict word 0x40         ; 0x17a1
    add si, ax                       ; 0x17a4
    mov al, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x17a6
    and al, 3                        ; 0x17aa
    xor ah, ah                       ; 0x17ac
    mov bl, 0xb                      ; 0x17ae
    mul bl                           ; 0x17b0
    add ax, strict word 0            ; 0x17b2
    mov bl, byte [cs:cseg_0d40 - IMAGE_BASE] ; 0x17b5
    inc bl                           ; 0x17ba
    shl bl, 1                        ; 0x17bc
    xor bh, bh                       ; 0x17be
    mov ch, byte [cs:bx + cseg_12df - IMAGE_BASE] ; 0x17c0
    mov al, ch                       ; 0x17c5
    add al, 3                        ; 0x17c7
    mov ah, byte [si + 0x6]          ; 0x17c9
    call loc_QVOP                    ; 0x17cc
    mov al, byte [si + 0xa]          ; 0x17cf
    and al, 1                        ; 0x17d2
    cmp al, 1                        ; 0x17d4
    jne short @..loc_GOTP_17f0.l1    ; 0x17d6
    mov al, ch                       ; 0x17d8
    mov ah, byte [si + 0x1]          ; 0x17da
    call loc_QVOP                    ; 0x17dd
    jmp near @..loc_GOTP_17f0.l2     ; 0x17e0
@..loc_GOTP_17f0.l1:
    mov al, byte [si + 0x1]          ; 0x17e3
    mov ah, 0x40                     ; 0x17e6
    add ah, ch                       ; 0x17e8
    call io_loc_KRUO                 ; 0x17ea
    jmp near @..loc_GOTP_17f0.l2     ; 0x17ed
