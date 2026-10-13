; auto-generated
aztec_malloc:
    push bp                          ; 0x46ea
    mov bp, sp                       ; 0x46eb
    add sp, byte 0xfa                ; 0x46ed
    push di                          ; 0x46f0
    push si                          ; 0x46f1
    mov ax, word [bp + 0x4]          ; 0x46f2
    inc ax                           ; 0x46f5
    inc ax                           ; 0x46f6
    inc ax                           ; 0x46f7
    shr ax, 1                        ; 0x46f8
    shl ax, 1                        ; 0x46fa
    mov word [bp + 0x4], ax          ; 0x46fc
    cmp word [bss_0d00], byte 0      ; 0x46ff
    jne short @..aztec_malloc.l1     ; 0x4704
    mov word [bss_0d02], bss_0d02    ; 0x4706
    or word [bss_0d02], 1            ; 0x470c
    mov word [bss_0d00], bss_0d02    ; 0x4712
@..aztec_malloc.l1:
    mov word [bp - 0x0006], 0        ; 0x4718
    mov si, word [bss_0d00]          ; 0x471d
    mov word [bp - 0x0002], si       ; 0x4721
@..aztec_malloc.l2:
    cmp si, word [dseg_0c6c]         ; 0x4724
    jne short @..aztec_malloc.l5     ; 0x4728
    inc word [bp - 0x0006]           ; 0x472a
    mov ax, word [bp - 0x0006]       ; 0x472d
    cmp ax, strict word 1            ; 0x4730
    jle short @..aztec_malloc.l5     ; 0x4733
    mov word [bp - 0x0004], 0x400    ; 0x4735
    push word [bp - 0x0004]          ; 0x473a
    call aztec_sbrk                  ; 0x473d
    pop cx                           ; 0x4740
    mov di, ax                       ; 0x4741
    mov ax, di                       ; 0x4743
    cmp ax, strict word 0xffff       ; 0x4745
    jne short @..aztec_malloc.l3     ; 0x4748
    mov ax, 0                        ; 0x474a
ds_loc_474d:
    pop si                           ; 0x474d
    pop di                           ; 0x474e
    mov sp, bp                       ; 0x474f
    pop bp                           ; 0x4751
    ret                              ; 0x4752
@..aztec_malloc.l3:
    mov ax, si                       ; 0x4753
    add ax, strict word 2            ; 0x4755
    cmp di, ax                       ; 0x4758
    je short @..aztec_malloc.l4      ; 0x475a
    mov word [si], di                ; 0x475c
    or word [si], 1                  ; 0x475e
    dec word [bp - 0x0004]           ; 0x4762
    dec word [bp - 0x0004]           ; 0x4765
    mov si, di                       ; 0x4768
@..aztec_malloc.l4:
    mov di, si                       ; 0x476a
    add di, word [bp - 0x0004]       ; 0x476c
    mov word [si], di                ; 0x476f
    mov word [di], bss_0d02          ; 0x4771
    or word [di], 1                  ; 0x4775
    mov word [dseg_0c6c], di         ; 0x4779
    mov bx, word [bp - 0x0002]       ; 0x477d
    mov ax, word [bx]                ; 0x4780
    and ax, strict word 0xfffe       ; 0x4782
    cmp ax, si                       ; 0x4785
    jne short @..aztec_malloc.l5     ; 0x4787
    mov si, bx                       ; 0x4789
@..aztec_malloc.l5:
    test word [si], 1                ; 0x478b
    jne short @..aztec_malloc.l9     ; 0x478f
    mov word [bp - 0x0002], si       ; 0x4791
@..aztec_malloc.l6:
    mov ax, word [si]                ; 0x4794
    and ax, strict word 0xfffe       ; 0x4796
    mov di, ax                       ; 0x4799
    mov bx, di                       ; 0x479b
    test word [bx], 1                ; 0x479d
    jne short @..aztec_malloc.l7     ; 0x47a1
    mov ax, word [di]                ; 0x47a3
    mov word [si], ax                ; 0x47a5
    jmp short @..aztec_malloc.l6     ; 0x47a7
@..aztec_malloc.l7:
    sub bx, si                       ; 0x47a9
    mov word [bp - 0x0004], bx       ; 0x47ab
    cmp bx, word [bp + 0x4]          ; 0x47ae
    jb short @..aztec_malloc.l9      ; 0x47b1
    cmp bx, word [bp + 0x4]          ; 0x47b3
    jbe short @..aztec_malloc.l8     ; 0x47b6
    mov ax, si                       ; 0x47b8
    add ax, word [bp + 0x4]          ; 0x47ba
    mov word [si], ax                ; 0x47bd
    mov bx, ax                       ; 0x47bf
    mov ax, word [bx]                ; 0x47c1
    mov word [bss_0cfe], ax          ; 0x47c3
    mov bx, word [si]                ; 0x47c6
    mov word [bx], di                ; 0x47c8
@..aztec_malloc.l8:
    mov ax, word [si]                ; 0x47ca
    mov word [bss_0d00], ax          ; 0x47cc
    or word [si], 1                  ; 0x47cf
    mov ax, si                       ; 0x47d3
    add ax, strict word 2            ; 0x47d5
    jmp near ds_loc_474d             ; 0x47d8
@..aztec_malloc.l9:
    mov ax, word [si]                ; 0x47db
    and ax, strict word 0xfffe       ; 0x47dd
    mov si, ax                       ; 0x47e0
    jmp near @..aztec_malloc.l2      ; 0x47e2
ds_leaf_loc_47e5:
    jmp near ds_loc_474d             ; 0x47e5
