leaf_loc_3d79:
    push bp                          ; 0x3d79
    mov bp, sp                       ; 0x3d7a
    cld                              ; 0x3d7c
    push si                          ; 0x3d7d
    push ds                          ; 0x3d7e
    push es                          ; 0x3d7f
    cld                              ; 0x3d80
    mov ax, cs                       ; 0x3d81
    mov ds, ax                       ; 0x3d83
    mov es, ax                       ; 0x3d85
    lea si, word [data_3a7f]         ; 0x3d87
@..leaf_loc_3d79.l1:
    mov bx, word [si]                ; 0x3d8b
    or bx, bx                        ; 0x3d8d
    je short @..leaf_loc_3d79.l7     ; 0x3d8f
    mov ax, word [bp + 0x4]          ; 0x3d91
    cmp al, 0                        ; 0x3d94
    je short @..leaf_loc_3d79.l4     ; 0x3d96
    cmp al, data_0002                ; 0x3d98
    je short @..leaf_loc_3d79.l2     ; 0x3d9a
    mov al, byte [si + 0x2]          ; 0x3d9c
    cmp al, 8                        ; 0x3d9f
    je short @..leaf_loc_3d79.l4     ; 0x3da1
    cmp al, 9                        ; 0x3da3
    je short @..leaf_loc_3d79.l4     ; 0x3da5
    cmp al, 0xa                      ; 0x3da7
    je short @..leaf_loc_3d79.l4     ; 0x3da9
    cmp al, 0xb                      ; 0x3dab
    je short @..leaf_loc_3d79.l4     ; 0x3dad
    cmp al, 0x1b                     ; 0x3daf
    je short @..leaf_loc_3d79.l4     ; 0x3db1
    cmp al, 0xd                      ; 0x3db3
    je short @..leaf_loc_3d79.l4     ; 0x3db5
    cmp al, 0x20                     ; 0x3db7
    jb short @..leaf_loc_3d79.l6     ; 0x3db9
    cmp al, 0x60                     ; 0x3dbb
    jae short @..leaf_loc_3d79.l6    ; 0x3dbd
    jmp near @..leaf_loc_3d79.l4     ; 0x3dbf
@..leaf_loc_3d79.l2:
    mov al, byte [si + 0x2]          ; 0x3dc2
    cmp al, 8                        ; 0x3dc5
    je short @..leaf_loc_3d79.l4     ; 0x3dc7
    cmp al, 0x1b                     ; 0x3dc9
    je short @..leaf_loc_3d79.l4     ; 0x3dcb
    cmp al, 0xd                      ; 0x3dcd
    je short @..leaf_loc_3d79.l4     ; 0x3dcf
    cmp al, 0x30                     ; 0x3dd1
    jb short @..leaf_loc_3d79.l6     ; 0x3dd3
    cmp al, 0x3a                     ; 0x3dd5
    jae short @..leaf_loc_3d79.l6    ; 0x3dd7
    jmp short @..leaf_loc_3d79.l4    ; 0x3dd9
@..leaf_loc_3d79.l3:
    jmp short @..leaf_loc_3d79.l1    ; 0x3ddb
@..leaf_loc_3d79.l4:
    dec word [si]                    ; 0x3ddd
    mov al, byte [si + 0x2]          ; 0x3ddf
    mov ah, 0                        ; 0x3de2
@..leaf_loc_3d79.l5:
    pop es                           ; 0x3de4
    pop ds                           ; 0x3de5
    pop si                           ; 0x3de6
    mov sp, bp                       ; 0x3de7
    pop bp                           ; 0x3de9
    ret                              ; 0x3dea
