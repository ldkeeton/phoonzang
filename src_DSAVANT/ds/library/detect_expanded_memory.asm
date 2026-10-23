; auto-generated
detect_expanded_memory:
    push ds                          ; 0x37d9
    push es                          ; 0x37da
    mov ah, 0x35                     ; 0x37db
    mov al, 0x67                     ; 0x37dd
    int 0x21 ; DOS get interrupt vector
    mov di, 0xa                      ; 0x37e1
    mov ax, cs                       ; 0x37e4
    mov ds, ax                       ; 0x37e6
    mov si, ems_driver_signature - IMAGE_BASE ; 0x37e8
    mov cx, 8                        ; 0x37eb
    repe cmpsb                       ; 0x37ee
    or cx, cx                        ; 0x37f0
    jne short @..detect_expanded_memory.l2 ; 0x37f2
    mov ah, 0x42                     ; 0x37f4
    int 0x67 ; EMS (Expanded Memory)
    cmp bx, byte 0x18                ; 0x37f8
    jb short @..detect_expanded_memory.l1 ; 0x37fb
    mov bx, 0x18                     ; 0x37fd
@..detect_expanded_memory.l1:
    mov word [cs:ems_allocated_paragraphs - IMAGE_BASE], bx ; 0x3800
    mov ah, 0x43                     ; 0x3805
    int 0x67 ; EMS (Expanded Memory)
    or ah, ah                        ; 0x3809
    jne short @..detect_expanded_memory.l2 ; 0x380b
    mov word [cs:ems_handle - IMAGE_BASE], dx ; 0x380d
    mov bx, word [cs:ems_allocated_paragraphs - IMAGE_BASE] ; 0x3812
    mov cl, 0xa                      ; 0x3817
    shl bx, cl                       ; 0x3819
    mov word [cs:ems_allocated_paragraphs - IMAGE_BASE], bx ; 0x381b
    mov ah, 0x41                     ; 0x3820
    int 0x67 ; EMS (Expanded Memory)
    mov word [cs:ems_page_frame_segment - IMAGE_BASE], bx ; 0x3824
@..detect_expanded_memory.l2:
    pop es                           ; 0x3829
    pop ds                           ; 0x382a
    ret                              ; 0x382b
