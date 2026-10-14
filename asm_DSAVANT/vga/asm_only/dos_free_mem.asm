; auto-generated
; asm only
dos_free_mem:
    push bp                          ; 0x0836
    mov bp, sp                       ; 0x0837
    sub sp, byte 8                   ; 0x0839
    push es                          ; 0x083c
    push ds                          ; 0x083d
    push di                          ; 0x083e
    push si                          ; 0x083f
    mov ax, ds                       ; 0x0840
    mov es, ax                       ; 0x0842
    mov ax, word [bp + 0xe]          ; 0x0844
    mov ds, ax                       ; 0x0847
    mov si, word [bp + 0xc]          ; 0x0849
    or ax, si                        ; 0x084c
    je short dos_con_loc_088f        ; 0x084e
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x0850
    mov es, ax                       ; 0x0854
    lodsw                            ; 0x0856
    mov word [bp - 0x0002], ax       ; 0x0857
    add si, byte 2                   ; 0x085a
    lodsw                            ; 0x085d
    mov word [bp - 0x0004], ax       ; 0x085e
    lodsw                            ; 0x0861
    mov word [bp - 0x0006], ax       ; 0x0862
    add si, byte 4                   ; 0x0865
@..dos_free_mem.l1:
    mov di, word [bp - 0x0002]       ; 0x0868
    add word [bp - 0x0002], strict word 0x140 ; 0x086b
    mov cx, word [bp - 0x0006]       ; 0x0870
    rep movsb                        ; 0x0873
    dec word [bp - 0x0004]           ; 0x0875
    jne short @..dos_free_mem.l1     ; 0x0878
    mov ax, word [bp + 0x10]         ; 0x087a
    or ax, ax                        ; 0x087d
    je short @..dos_free_mem.l2      ; 0x087f
    mov ax, ds                       ; 0x0881
    or ax, ax                        ; 0x0883
    je short @..dos_free_mem.l2      ; 0x0885
    mov es, ax                       ; 0x0887
    mov ah, 0x49                     ; 0x0889
    int 0x21 ; DOS free memory
    jmp short @..dos_free_mem.l2     ; 0x088d
