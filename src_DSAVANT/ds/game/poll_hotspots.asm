; auto-generated
poll_hotspots:
    mov ax, 0xfffc                   ; 0x0b54
    call aztec_csav                  ; 0x0b57
    mov word [escape_key_hit], 0     ; 0x0b5a
    mov word [space_key_hit], 0      ; 0x0b60
    mov ax, 1                        ; 0x0b66
    push ax                          ; 0x0b69
    call poll_filtered_key           ; 0x0b6a
    pop cx                           ; 0x0b6d
    test ax, ax                      ; 0x0b6e
    je short .forward5               ; 0x0b70
    mov ax, 1                        ; 0x0b72
    push ax                          ; 0x0b75
    call get_filtered_key            ; 0x0b76
    pop cx                           ; 0x0b79
    sub ah, ah                       ; 0x0b7a
    mov word [bp - 4], ax            ; 0x0b7c
    cmp ax, strict word 0x1b         ; 0x0b7f
    jne short .forward1              ; 0x0b82
    mov word [escape_key_hit], 1     ; 0x0b84
.forward1:
    cmp ax, strict word 0x20         ; 0x0b8a
    jne short .forward2              ; 0x0b8d
    mov word [space_key_hit], 1      ; 0x0b8f
.forward2:
    mov word [bp - 2], 0             ; 0x0b95
.back1:
    mov ax, word [bp - 2]            ; 0x0b9a
    shl ax, 1                        ; 0x0b9d
    shl ax, 1                        ; 0x0b9f
    shl ax, 1                        ; 0x0ba1
    mov bx, ax                       ; 0x0ba3
    cmp word [bx + hotspot_rects], byte -1 ; 0x0ba5
    je short .forward5               ; 0x0baa
    mov ax, word [bp - 2]            ; 0x0bac
    shl ax, 1                        ; 0x0baf
    mov bx, ax                       ; 0x0bb1
    mov al, byte [bx + hotspot_keys] ; 0x0bb3
    sub ah, ah                       ; 0x0bb7
    cmp ax, word [bp - 4]            ; 0x0bb9
    je short .forward3               ; 0x0bbc
    mov al, byte [bx + hotspot_keys + 0x1] ; 0x0bbe
    sub ah, ah                       ; 0x0bc2
    cmp ax, word [bp - 4]            ; 0x0bc4
    jne short .forward4              ; 0x0bc7
.forward3:
    mov word [hotspot_hit], 1        ; 0x0bc9
    mov ax, word [bp - 2]            ; 0x0bcf
    inc ax                           ; 0x0bd2
    ret                              ; 0x0bd3
.forward4:
    inc word [bp - 2]                ; 0x0bd4
    jmp short .back1                 ; 0x0bd7
.forward5:
    mov word [bp - 2], 0             ; 0x0bd9
    cmp word [mouse_active], byte 0  ; 0x0bde
    je short .forward6               ; 0x0be3
    push word [bp + 4]               ; 0x0be5
    call call_mouse_hit_test         ; 0x0be8
    pop cx                           ; 0x0beb
    mov word [bp - 2], ax            ; 0x0bec
.forward6:
    mov ax, 0                        ; 0x0bef
    cmp word [bp - 2], byte 0        ; 0x0bf2
    jge short .forward7              ; 0x0bf6
    mov ax, 1                        ; 0x0bf8
.forward7:
    mov word [hotspot_hit], ax       ; 0x0bfb
    mov ax, word [bp - 2]            ; 0x0bfe
    push ax                          ; 0x0c01
    cmp ax, strict word 0            ; 0x0c02
    pop ax                           ; 0x0c05
    jge short .return1               ; 0x0c06
    neg ax                           ; 0x0c08
.return1:
    ret                              ; 0x0c0a
