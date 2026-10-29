; auto-generated
api_idx_0012_UGVV:
    mov ax, 0xffee                   ; 0x9ef7
    call aztec_csav                  ; 0x9efa
    mov ax, 0xf                      ; 0x9efd
    push ax                          ; 0x9f00
    call random_below                ; 0x9f01
    pop cx                           ; 0x9f04
    mov cx, ax                       ; 0x9f05
    add ax, strict word 0xf          ; 0x9f07
    mov cx, ax                       ; 0x9f0a
    mov ax, 0                        ; 0x9f0c
    sub ax, cx                       ; 0x9f0f
    push ax                          ; 0x9f11
    push word [bp + 6]               ; 0x9f12
    push word [bp + 4]               ; 0x9f15
    call adjust_target_weight        ; 0x9f18
    add sp, byte 6                   ; 0x9f1b
    mov ax, 0xf                      ; 0x9f1e
    push ax                          ; 0x9f21
    call random_below                ; 0x9f22
    pop cx                           ; 0x9f25
    mov cx, ax                       ; 0x9f26
    add ax, strict word 0xf          ; 0x9f28
    mov cx, ax                       ; 0x9f2b
    mov ax, 0                        ; 0x9f2d
    sub ax, cx                       ; 0x9f30
    push ax                          ; 0x9f32
    push word [bp + 4]               ; 0x9f33
    push word [bp + 6]               ; 0x9f36
    call adjust_target_weight        ; 0x9f39
    add sp, byte 6                   ; 0x9f3c
    mov ax, 0x26                     ; 0x9f3f
    imul word [bp + 6]               ; 0x9f42
    mov bx, ax                       ; 0x9f45
    cmp byte [bx + slot_records + slot_record.f_0002], 1 ; 0x9f47
    je short .forward1               ; 0x9f4c
    cmp word [bp + 6], byte 0x13     ; 0x9f4e
    jne short .forward2              ; 0x9f52
.forward1:
    mov ax, 1                        ; 0x9f54
    jmp short .forward3              ; 0x9f57
.forward2:
    mov ax, 0                        ; 0x9f59
.forward3:
    mov word [bp - 0x10], ax         ; 0x9f5c
    mov word [bp - 6], 0             ; 0x9f5f
    mov word [bp - 0xa], 0           ; 0x9f64
    mov word [bp - 8], 0             ; 0x9f69
    mov word [bp - 0xc], 0           ; 0x9f6e
    mov word [bp - 0xe], 0           ; 0x9f73
.back1:
    mov ax, 0x26                     ; 0x9f78
    imul word [bp + 6]               ; 0x9f7b
    mov bx, ax                       ; 0x9f7e
    mov al, byte [bx + slot_records + slot_record.flag] ; 0x9f80
    cbw                              ; 0x9f84
    mov cx, 4                        ; 0x9f85
    cwd                              ; 0x9f88
    idiv cx                          ; 0x9f89
    push ax                          ; 0x9f8b
    call random_below                ; 0x9f8c
    pop cx                           ; 0x9f8f
    inc ax                           ; 0x9f90
    mov word [bp - 6], ax            ; 0x9f91
    add word [bp - 0xa], ax          ; 0x9f94
    mov ax, 0x26                     ; 0x9f97
    imul word [bp + 4]               ; 0x9f9a
    mov bx, ax                       ; 0x9f9d
    mov al, byte [bx + slot_records + slot_record.flag] ; 0x9f9f
    cbw                              ; 0x9fa3
    mov cx, 4                        ; 0x9fa4
    cwd                              ; 0x9fa7
    idiv cx                          ; 0x9fa8
    push ax                          ; 0x9faa
    call random_below                ; 0x9fab
    pop cx                           ; 0x9fae
    inc ax                           ; 0x9faf
    mov word [bp - 8], ax            ; 0x9fb0
    add word [bp - 0xc], ax          ; 0x9fb3
    mov ax, 0x26                     ; 0x9fb6
    imul word [bp + 4]               ; 0x9fb9
    mov bx, ax                       ; 0x9fbc
    mov al, byte [bx + slot_records + slot_record.flag] ; 0x9fbe
    cbw                              ; 0x9fc2
    push ax                          ; 0x9fc3
    call random_below                ; 0x9fc4
    pop cx                           ; 0x9fc7
    cmp ax, word [bp - 0xa]          ; 0x9fc8
    jge short .forward4              ; 0x9fcb
    mov ax, 0x26                     ; 0x9fcd
    imul word [bp + 4]               ; 0x9fd0
    mov bx, ax                       ; 0x9fd3
    mov byte [bx + slot_records + slot_record.f_0002], 7 ; 0x9fd5
    mov word [bp - 0xe], 0xffff      ; 0x9fda
.forward4:
    cmp word [bp - 0xe], byte 0      ; 0x9fdf
    je short .forward5               ; 0x9fe3
    jmp near .forward7               ; 0x9fe5
.forward5:
    mov ax, word [bp - 8]            ; 0x9fe8
    mov cx, 2                        ; 0x9feb
    cwd                              ; 0x9fee
    idiv cx                          ; 0x9fef
    push ax                          ; 0x9ff1
    call random_below                ; 0x9ff2
    pop cx                           ; 0x9ff5
    push ax                          ; 0x9ff6
    mov ax, word [bp - 8]            ; 0x9ff7
    mov cx, 2                        ; 0x9ffa
    cwd                              ; 0x9ffd
    idiv cx                          ; 0x9ffe
    mov cx, ax                       ; 0xa000
    pop ax                           ; 0xa002
    add ax, cx                       ; 0xa003
    push ax                          ; 0xa005
    mov ax, 0x26                     ; 0xa006
    imul word [bp + 6]               ; 0xa009
    mov bx, ax                       ; 0xa00c
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa00e
    cbw                              ; 0xa012
    mov cx, ax                       ; 0xa013
    pop ax                           ; 0xa015
    cmp ax, cx                       ; 0xa016
    jle short .forward6              ; 0xa018
    push word [bp + 6]               ; 0xa01a
    push word [bp + 4]               ; 0xa01d
    call api_idx_0004_SRMT           ; 0xa020
    add sp, byte 4                   ; 0xa023
    mov word [bp - 0xe], 1           ; 0xa026
    jmp short .forward7              ; 0xa02b
.forward6:
    mov ax, 0x26                     ; 0xa02d
    imul word [bp + 6]               ; 0xa030
    mov bx, ax                       ; 0xa033
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa035
    push ax                          ; 0xa039
    mov ax, 0x26                     ; 0xa03a
    imul word [bp + 4]               ; 0xa03d
    mov bx, ax                       ; 0xa040
    mov cl, byte [bx + slot_records + slot_record.flag] ; 0xa042
    pop ax                           ; 0xa046
    cmp al, cl                       ; 0xa047
    jge short .forward7              ; 0xa049
    mov ax, 3                        ; 0xa04b
    push ax                          ; 0xa04e
    call random_below                ; 0xa04f
    pop cx                           ; 0xa052
    test ax, ax                      ; 0xa053
    jne short .forward7              ; 0xa055
    push word [bp + 6]               ; 0xa057
    push word [bp + 4]               ; 0xa05a
    call api_idx_0010_IOJT           ; 0xa05d
    add sp, byte 4                   ; 0xa060
    mov word [bp - 0xe], 1           ; 0xa063
.forward7:
    cmp word [bp - 0xe], byte 0      ; 0xa068
    jne short .forward8              ; 0xa06c
    mov ax, 0x26                     ; 0xa06e
    imul word [bp + 4]               ; 0xa071
    mov bx, ax                       ; 0xa074
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa076
    cbw                              ; 0xa07a
    sub ax, word [bp - 6]            ; 0xa07b
    mov byte [bx + slot_records + slot_record.flag], al ; 0xa07e
    mov ax, 0x26                     ; 0xa082
    imul word [bp + 6]               ; 0xa085
    mov bx, ax                       ; 0xa088
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa08a
    cbw                              ; 0xa08e
    sub ax, word [bp - 8]            ; 0xa08f
    mov byte [bx + slot_records + slot_record.flag], al ; 0xa092
.forward8:
    cmp word [bp - 0xe], byte 0      ; 0xa096
    jne short .forward9              ; 0xa09a
    mov ax, 0x26                     ; 0xa09c
    imul word [bp + 4]               ; 0xa09f
    mov bx, ax                       ; 0xa0a2
    cmp byte [bx + slot_records + slot_record.flag], 0 ; 0xa0a4
    jle short .forward9              ; 0xa0a9
    mov ax, 0x26                     ; 0xa0ab
    imul word [bp + 6]               ; 0xa0ae
    mov bx, ax                       ; 0xa0b1
    cmp byte [bx + slot_records + slot_record.flag], 0 ; 0xa0b3
    jle short .forward9              ; 0xa0b8
    jmp near .back1                  ; 0xa0ba
.forward9:
    mov word [bp - 0x12], 0          ; 0xa0bd
    mov ax, 0x26                     ; 0xa0c2
    imul word [bp + 6]               ; 0xa0c5
    mov bx, ax                       ; 0xa0c8
    cmp byte [bx + slot_records + slot_record.flag], 0 ; 0xa0ca
    jg short .forward12              ; 0xa0cf
    cmp word [bp - 0x10], byte 0     ; 0xa0d1
    je short .forward10              ; 0xa0d5
    mov ax, 0xa                      ; 0xa0d7
    push ax                          ; 0xa0da
    call random_below                ; 0xa0db
    pop cx                           ; 0xa0de
    add ax, strict word 0xa          ; 0xa0df
    push ax                          ; 0xa0e2
    mov ax, 0x26                     ; 0xa0e3
    imul word [bp + 6]               ; 0xa0e6
    mov bx, ax                       ; 0xa0e9
    pop ax                           ; 0xa0eb
    mov byte [bx + slot_records + slot_record.flag], al ; 0xa0ec
    jmp short .forward11             ; 0xa0f0
.forward10:
    mov word [bp - 0x12], 1          ; 0xa0f2
    mov ax, 0x26                     ; 0xa0f7
    imul word [bp + 6]               ; 0xa0fa
    mov bx, ax                       ; 0xa0fd
    mov byte [bx + slot_records + slot_record.flag], 0 ; 0xa0ff
.forward11:
    push word [bp + 6]               ; 0xa104
    push word [bp + 4]               ; 0xa107
    call api_idx_0004_SRMT           ; 0xa10a
    add sp, byte 4                   ; 0xa10d
    mov word [bp - 0xe], 1           ; 0xa110
    jmp near .forward15              ; 0xa115
.forward12:
    mov ax, 0x26                     ; 0xa118
    imul word [bp + 6]               ; 0xa11b
    mov bx, ax                       ; 0xa11e
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa120
    push ax                          ; 0xa124
    mov ax, 0x26                     ; 0xa125
    imul word [bp + 4]               ; 0xa128
    mov bx, ax                       ; 0xa12b
    mov cl, byte [bx + slot_records + slot_record.flag] ; 0xa12d
    pop ax                           ; 0xa131
    cmp al, cl                       ; 0xa132
    jle short .forward13             ; 0xa134
    mov ax, 3                        ; 0xa136
    push ax                          ; 0xa139
    call random_below                ; 0xa13a
    pop cx                           ; 0xa13d
    test ax, ax                      ; 0xa13e
    jne short .forward13             ; 0xa140
    mov ax, 0x26                     ; 0xa142
    imul word [bp + 4]               ; 0xa145
    mov bx, ax                       ; 0xa148
    mov byte [bx + slot_records + slot_record.f_0002], 7 ; 0xa14a
    mov word [bp - 0xe], 0xffff      ; 0xa14f
    jmp short .forward15             ; 0xa154
.forward13:
    mov ax, 0x26                     ; 0xa156
    imul word [bp + 6]               ; 0xa159
    mov bx, ax                       ; 0xa15c
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa15e
    cbw                              ; 0xa162
    push ax                          ; 0xa163
    mov ax, 0x26                     ; 0xa164
    imul word [bp + 4]               ; 0xa167
    mov bx, ax                       ; 0xa16a
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa16c
    cbw                              ; 0xa170
    mov cx, 3                        ; 0xa171
    cwd                              ; 0xa174
    idiv cx                          ; 0xa175
    mov cx, ax                       ; 0xa177
    pop ax                           ; 0xa179
    cmp ax, cx                       ; 0xa17a
    jge short .forward15             ; 0xa17c
    mov ax, 0x26                     ; 0xa17e
    imul word [bp + 6]               ; 0xa181
    mov bx, ax                       ; 0xa184
    cmp byte [bx + slot_records + slot_record.f_0002], 3 ; 0xa186
    je short .forward14              ; 0xa18b
    cmp byte [bx + slot_records + slot_record.f_0002], 2 ; 0xa18d
    jne short .forward15             ; 0xa192
.forward14:
    push word [bp + 6]               ; 0xa194
    call api_idx_003a_SOVP           ; 0xa197
    pop cx                           ; 0xa19a
    mov ax, 0x26                     ; 0xa19b
    imul word [bp + 6]               ; 0xa19e
    mov bx, ax                       ; 0xa1a1
    mov byte [bx + slot_records + slot_record.f_0002], 7 ; 0xa1a3
    mov word [bp - 0xe], 1           ; 0xa1a8
.forward15:
    mov ax, 0x26                     ; 0xa1ad
    imul word [bp + 4]               ; 0xa1b0
    mov bx, ax                       ; 0xa1b3
    cmp byte [bx + slot_records + slot_record.flag], 0 ; 0xa1b5
    jg short .forward16              ; 0xa1ba
    mov ax, 3                        ; 0xa1bc
    push ax                          ; 0xa1bf
    call random_below                ; 0xa1c0
    pop cx                           ; 0xa1c3
    inc ax                           ; 0xa1c4
    push ax                          ; 0xa1c5
    mov ax, 0x26                     ; 0xa1c6
    imul word [bp + 4]               ; 0xa1c9
    mov bx, ax                       ; 0xa1cc
    pop ax                           ; 0xa1ce
    mov byte [bx + slot_records + slot_record.flag], al ; 0xa1cf
    mov byte [bx + slot_records + slot_record.f_0002], 7 ; 0xa1d3
    mov word [bp - 0xe], 0xffff      ; 0xa1d8
.forward16:
    mov ax, 0x26                     ; 0xa1dd
    imul word [bp + 4]               ; 0xa1e0
    mov bx, ax                       ; 0xa1e3
    cmp byte [bx + slot_records + slot_record.f_0002], 7 ; 0xa1e5
    jne short .forward17             ; 0xa1ea
    push word [bp + 4]               ; 0xa1ec
    call api_idx_003a_SOVP           ; 0xa1ef
    pop cx                           ; 0xa1f2
.forward17:
    mov ax, 0x26                     ; 0xa1f3
    imul word [bp + 4]               ; 0xa1f6
    mov bx, ax                       ; 0xa1f9
    mov al, byte [bx + slot_records + slot_record.kind] ; 0xa1fb
    sub ah, ah                       ; 0xa1ff
    push ax                          ; 0xa201
    push word [bp - 0x12]            ; 0xa202
    push word [bp + 6]               ; 0xa205
    push word [bp + 4]               ; 0xa208
    call find_or_add_loaded_record   ; 0xa20b
    add sp, byte 8                   ; 0xa20e
    mov ax, word [bp - 0xe]          ; 0xa211
    ret                              ; 0xa214
