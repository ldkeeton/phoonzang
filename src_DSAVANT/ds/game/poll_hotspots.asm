; auto-generated
poll_hotspots: ; Aztec csav frame=0x0004
    mov ax, 0xfffc                   ; 0x0b54
    call aztec_csav                  ; 0x0b57
    mov word [bss_59fa], 0           ; 0x0b5a
    mov word [space_key_hit], 0      ; 0x0b60
    mov ax, 1                        ; 0x0b66
    push ax                          ; 0x0b69
    call poll_filtered_key           ; 0x0b6a
    pop cx                           ; 0x0b6d
    test ax, ax                      ; 0x0b6e
    je short @..poll_hotspots.l6     ; 0x0b70
    mov ax, 1                        ; 0x0b72
    push ax                          ; 0x0b75
    call get_filtered_key            ; 0x0b76
    pop cx                           ; 0x0b79
    sub ah, ah                       ; 0x0b7a
    mov word [bp - 0x0004], ax       ; 0x0b7c
    cmp ax, strict word 0x1b         ; 0x0b7f
    jne short @..poll_hotspots.l1    ; 0x0b82
    mov word [bss_59fa], 1           ; 0x0b84
@..poll_hotspots.l1:
    cmp ax, strict word 0x20         ; 0x0b8a
    jne short @..poll_hotspots.l2    ; 0x0b8d
    mov word [space_key_hit], 1      ; 0x0b8f
@..poll_hotspots.l2:
    mov word [bp - 0x0002], 0        ; 0x0b95
@..poll_hotspots.l3:
    mov ax, word [bp - 0x0002]       ; 0x0b9a
    shl ax, 1                        ; 0x0b9d
    shl ax, 1                        ; 0x0b9f
    shl ax, 1                        ; 0x0ba1
    mov bx, ax                       ; 0x0ba3
    cmp word [bx + 0x59fe], byte 0xff ; 0x0ba5
    je short @..poll_hotspots.l6     ; 0x0baa
    mov ax, word [bp - 0x0002]       ; 0x0bac
    shl ax, 1                        ; 0x0baf
    mov bx, ax                       ; 0x0bb1
    mov al, byte [bx + 0x5afe]       ; 0x0bb3
    sub ah, ah                       ; 0x0bb7
    cmp ax, word [bp - 0x0004]       ; 0x0bb9
    je short @..poll_hotspots.l4     ; 0x0bbc
    mov al, byte [bx + 0x5aff]       ; 0x0bbe
    sub ah, ah                       ; 0x0bc2
    cmp ax, word [bp - 0x0004]       ; 0x0bc4
    jne short @..poll_hotspots.l5    ; 0x0bc7
@..poll_hotspots.l4:
    mov word [hotspot_hit], 1        ; 0x0bc9
    mov ax, word [bp - 0x0002]       ; 0x0bcf
    inc ax                           ; 0x0bd2
    ret                              ; 0x0bd3
@..poll_hotspots.l5:
    inc word [bp - 0x0002]           ; 0x0bd4
    jmp short @..poll_hotspots.l3    ; 0x0bd7
@..poll_hotspots.l6:
    mov word [bp - 0x0002], 0        ; 0x0bd9
    cmp word [bss_0e32], byte 0      ; 0x0bde
    je short @..poll_hotspots.l7     ; 0x0be3
    push word [bp + 0x4]             ; 0x0be5
    call gfx_mouse_hit_test          ; 0x0be8
    pop cx                           ; 0x0beb
    mov word [bp - 0x0002], ax       ; 0x0bec
@..poll_hotspots.l7:
    mov ax, 0                        ; 0x0bef
    cmp word [bp - 0x0002], byte 0   ; 0x0bf2
    jge short @..poll_hotspots.l8    ; 0x0bf6
    mov ax, 1                        ; 0x0bf8
@..poll_hotspots.l8:
    mov word [hotspot_hit], ax       ; 0x0bfb
    mov ax, word [bp - 0x0002]       ; 0x0bfe
    push ax                          ; 0x0c01
    cmp ax, strict word 0            ; 0x0c02
    pop ax                           ; 0x0c05
    jge short @..poll_hotspots.l9    ; 0x0c06
    neg ax                           ; 0x0c08
@..poll_hotspots.l9:
    ret                              ; 0x0c0a
