; auto-generated
build_opl_sample_curve:
    push di                          ; 0x065a
    push si                          ; 0x065b
    mov di, sample_output_table - IMAGE_BASE ; 0x065c
    mov si, opl_velocity_scale_table - IMAGE_BASE ; 0x065f
    xor bh, bh                       ; 0x0662
    mov bl, byte [bp + 0x12]         ; 0x0664
    mov cx, bx                       ; 0x0667
    add cx, bx                       ; 0x0669
    mov ax, 0x80                     ; 0x066b
    mul cx                           ; 0x066e
    mov al, ah                       ; 0x0670
    mov ah, dl                       ; 0x0672
    cmp ax, 0x80                     ; 0x0674
    jb short .forward1               ; 0x0677
    mov ax, 0x80                     ; 0x0679
.forward1:
    mov word [cs:sample_level_center - IMAGE_BASE], ax ; 0x067c
    mov bx, 0                        ; 0x0680
.back1:
    mov ax, 0x7f                     ; 0x0683
    sub ax, bx                       ; 0x0686
    mul cx                           ; 0x0688
    mov al, ah                       ; 0x068a
    mov ah, dl                       ; 0x068c
    cmp ax, 0x80                     ; 0x068e
    jb short .forward2               ; 0x0691
    mov ax, 0x7f                     ; 0x0693
.forward2:
    neg ax                           ; 0x0696
    add ax, word [cs:sample_level_center - IMAGE_BASE] ; 0x0698
    dec ax                           ; 0x069d
    cmp byte [cs:play_device - IMAGE_BASE], 4 ; 0x069e
    mov si, ax                       ; 0x06a4
    mov al, byte [cs:si + opl_velocity_scale_table - IMAGE_BASE] ; 0x06a6
    mov byte [cs:bx + sample_output_table - IMAGE_BASE], al ; 0x06ab
    inc bx                           ; 0x06b0
    cmp bx, strict word 0x80         ; 0x06b1
    jb short .back1                  ; 0x06b5
    mov bx, 0                        ; 0x06b7
.back2:
    mov ax, bx                       ; 0x06ba
    mul cx                           ; 0x06bc
    mov al, ah                       ; 0x06be
    mov ah, dl                       ; 0x06c0
    cmp ax, 0x80                     ; 0x06c2
    jb short .forward3               ; 0x06c5
    mov ax, 0x7f                     ; 0x06c7
.forward3:
    add ax, word [cs:sample_level_center - IMAGE_BASE] ; 0x06ca
    cmp byte [cs:play_device - IMAGE_BASE], 4 ; 0x06cf
    mov si, ax                       ; 0x06d5
    mov al, byte [cs:si + opl_velocity_scale_table - IMAGE_BASE] ; 0x06d7
    mov byte [cs:bx + sample_output_table_upper - IMAGE_BASE], al ; 0x06dc
    inc bx                           ; 0x06e1
    cmp bx, strict word 0x80         ; 0x06e2
    jb short .back2                  ; 0x06e6
    pop si                           ; 0x06e8
    pop di                           ; 0x06e9
    ret                              ; 0x06ea
    db 0x00
