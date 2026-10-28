; auto-generated
release_expanded_memory:
    push ds                          ; 0x382c
    push es                          ; 0x382d
    mov dx, word [cs:ems_handle - IMAGE_BASE] ; 0x382e
    or dx, dx                        ; 0x3833
    je short .forward1               ; 0x3835
    mov ah, 0x45                     ; 0x3837
    int 0x67 ; EMS (Expanded Memory)
.forward1:
    pop es                           ; 0x383b
    pop ds                           ; 0x383c
    ret                              ; 0x383d
