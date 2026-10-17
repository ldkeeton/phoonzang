; auto-generated
; asm only
string_loc_HGPS:
    push ax                          ; 0x0d50
    push bx                          ; 0x0d51
    push cx                          ; 0x0d52
    push es                          ; 0x0d53
    push si                          ; 0x0d54
    and al, 0xf                      ; 0x0d55
    mov byte [cs:cseg_0d3b - IMAGE_BASE], al ; 0x0d57
    mov bx, cseg_0cdf - IMAGE_BASE   ; 0x0d5b
    cs xlatb                         ; 0x0d5e
    mov byte [cs:cseg_0d3d - IMAGE_BASE], al ; 0x0d60
    mov byte [cs:cseg_0d47 - IMAGE_BASE], 0xff ; 0x0d64
    mov bx, 0xdfe                    ; 0x0d6a
@..string_loc_HGPS.l1:
    inc bx                           ; 0x0d6d
    cmp word [cs:bx], strict word 0xff ; 0x0d6e
    je short @..string_loc_HGPS.l2   ; 0x0d73
    cmp al, byte [cs:bx]             ; 0x0d75
    jne short @..string_loc_HGPS.l1  ; 0x0d78
    mov byte [cs:cseg_0d47 - IMAGE_BASE], 0 ; 0x0d7a
@..string_loc_HGPS.l2:
    mov byte [cs:cseg_0d48 - IMAGE_BASE], 1 ; 0x0d80
    mov al, byte [cs:cseg_0d3d - IMAGE_BASE] ; 0x0d86
    shl al, 1                        ; 0x0d8a
    shl al, 1                        ; 0x0d8c
    mov byte [cs:cseg_0d49 - IMAGE_BASE], al ; 0x0d8e
    inc al                           ; 0x0d92
    mov byte [cs:cseg_0d4a - IMAGE_BASE], al ; 0x0d94
    inc al                           ; 0x0d98
    mov byte [cs:cseg_0d4b - IMAGE_BASE], al ; 0x0d9a
    inc al                           ; 0x0d9e
    mov byte [cs:cseg_0d4c - IMAGE_BASE], al ; 0x0da0
    inc al                           ; 0x0da4
    pop si                           ; 0x0da6
    lodsw                            ; 0x0da7
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 5 ; 0x0da8
    je short @..string_loc_HGPS.l3   ; 0x0dae
    sub al, 0xc                      ; 0x0db0
@..string_loc_HGPS.l3:
    mov byte [cs:cseg_0d3c - IMAGE_BASE], al ; 0x0db2
    mov al, ah                       ; 0x0db6
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 5 ; 0x0db8
    je short @..string_loc_HGPS.l4   ; 0x0dbe
    shr al, 1                        ; 0x0dc0
    shr al, 1                        ; 0x0dc2
    add al, 0x60                     ; 0x0dc4
@..string_loc_HGPS.l4:
    mov byte [cs:cseg_0d3f - IMAGE_BASE], al ; 0x0dc6
    mov byte [cs:cseg_0d45 - IMAGE_BASE], 0 ; 0x0dca
    mov ah, byte [cs:cseg_0d3d - IMAGE_BASE] ; 0x0dd0
    cmp ah, 0x3e                     ; 0x0dd5
    jne short @..string_loc_HGPS.l7  ; 0x0dd8
    mov bx, cseg_0cef - IMAGE_BASE   ; 0x0dda
@..string_loc_HGPS.l5:
    cmp word [cs:bx], strict word 0xff ; 0x0ddd
    je short @..string_loc_HGPS.l6   ; 0x0de2
    cmp byte [cs:bx], al             ; 0x0de4
    je short @..string_loc_HGPS.l6   ; 0x0de7
    add bx, byte 2                   ; 0x0de9
    jmp short @..string_loc_HGPS.l5  ; 0x0dec
@..string_loc_HGPS.l6:
    mov byte [cs:cseg_0d45 - IMAGE_BASE], 1 ; 0x0dee
    mov al, byte [cs:bx + 0x1]       ; 0x0df4
    mov byte [cs:cseg_0d46 - IMAGE_BASE], al ; 0x0df8
@..string_loc_HGPS.l7:
    pop es                           ; 0x0dfc
    pop cx                           ; 0x0dfd
    pop bx                           ; 0x0dfe
    pop ax                           ; 0x0dff
    ret                              ; 0x0e00
