api_idx_0004_12:
    mov ax, 0xfffc                   ; 0x8421
    call ds_dispatch_f40b            ; 0x8424
    mov ax, 0x248                    ; 0x8427
    imul word [bp + 0x4]             ; 0x842a
    mov bx, ax                       ; 0x842d
    mov al, byte [bx + 0x5e2d]       ; 0x842f
    sub ah, ah                       ; 0x8433
    jmp near @..api_idx_0004_12.l1   ; 0x8435
    mov ax, 0x90e9                   ; 0x8438
    push ax                          ; 0x843b
    mov ax, 0x90e2                   ; 0x843c
    push ax                          ; 0x843f
    mov ax, 0x90d9                   ; 0x8440
    push ax                          ; 0x8443
    mov ax, 0x90ce                   ; 0x8444
    push ax                          ; 0x8447
    push word [bp + 0x4]             ; 0x8448
    call api_idx_0004_11             ; 0x844b
    add sp, byte 0x0a                ; 0x844e
    jmp near @..api_idx_0004_12.l2   ; 0x8451
    mov ax, 0x910f                   ; 0x8454
    push ax                          ; 0x8457
    mov ax, 0x9108                   ; 0x8458
    push ax                          ; 0x845b
    mov ax, 0x90ff                   ; 0x845c
    push ax                          ; 0x845f
    mov ax, 0x90f4                   ; 0x8460
    push ax                          ; 0x8463
    push word [bp + 0x4]             ; 0x8464
    call api_idx_0004_11             ; 0x8467
    add sp, byte 0x0a                ; 0x846a
    jmp near @..api_idx_0004_12.l2   ; 0x846d
    mov ax, 0x9135                   ; 0x8470
    push ax                          ; 0x8473
    mov ax, 0x912e                   ; 0x8474
    push ax                          ; 0x8477
    mov ax, 0x9125                   ; 0x8478
    push ax                          ; 0x847b
    mov ax, 0x911a                   ; 0x847c
    push ax                          ; 0x847f
    push word [bp + 0x4]             ; 0x8480
    call api_idx_0004_11             ; 0x8483
    add sp, byte 0x0a                ; 0x8486
    jmp near @..api_idx_0004_12.l2   ; 0x8489
    mov ax, 0x915b                   ; 0x848c
    push ax                          ; 0x848f
    mov ax, 0x9154                   ; 0x8490
    push ax                          ; 0x8493
    mov ax, 0x914b                   ; 0x8494
    push ax                          ; 0x8497
    mov ax, 0x9140                   ; 0x8498
    push ax                          ; 0x849b
    push word [bp + 0x4]             ; 0x849c
    call api_idx_0004_11             ; 0x849f
    add sp, byte 0x0a                ; 0x84a2
    jmp near @..api_idx_0004_12.l2   ; 0x84a5
    mov ax, 0x9181                   ; 0x84a8
    push ax                          ; 0x84ab
    mov ax, 0x917a                   ; 0x84ac
    push ax                          ; 0x84af
    mov ax, 0x9171                   ; 0x84b0
    push ax                          ; 0x84b3
    mov ax, 0x9166                   ; 0x84b4
    push ax                          ; 0x84b7
    push word [bp + 0x4]             ; 0x84b8
    call api_idx_0004_11             ; 0x84bb
    add sp, byte 0x0a                ; 0x84be
    jmp near @..api_idx_0004_12.l2   ; 0x84c1
    mov ax, 0x91a7                   ; 0x84c4
    push ax                          ; 0x84c7
    mov ax, 0x91a0                   ; 0x84c8
    push ax                          ; 0x84cb
    mov ax, 0x9197                   ; 0x84cc
    push ax                          ; 0x84cf
    mov ax, 0x918c                   ; 0x84d0
    push ax                          ; 0x84d3
    push word [bp + 0x4]             ; 0x84d4
    call api_idx_0004_11             ; 0x84d7
    add sp, byte 0x0a                ; 0x84da
    jmp near @..api_idx_0004_12.l2   ; 0x84dd
    mov ax, 0x91cd                   ; 0x84e0
    push ax                          ; 0x84e3
    mov ax, 0x91c6                   ; 0x84e4
    push ax                          ; 0x84e7
    mov ax, 0x91bd                   ; 0x84e8
    push ax                          ; 0x84eb
    mov ax, api_idx_0002_11          ; 0x84ec
    push ax                          ; 0x84ef
    push word [bp + 0x4]             ; 0x84f0
    call api_idx_0004_11             ; 0x84f3
    add sp, byte 0x0a                ; 0x84f6
    jmp near @..api_idx_0004_12.l2   ; 0x84f9
    mov ax, 0x91f3                   ; 0x84fc
    push ax                          ; 0x84ff
    mov ax, 0x91ec                   ; 0x8500
    push ax                          ; 0x8503
    mov ax, 0x91e3                   ; 0x8504
    push ax                          ; 0x8507
    mov ax, 0x91d8                   ; 0x8508
    push ax                          ; 0x850b
    push word [bp + 0x4]             ; 0x850c
    call api_idx_0004_11             ; 0x850f
    add sp, byte 0x0a                ; 0x8512
    jmp near @..api_idx_0004_12.l2   ; 0x8515
    mov ax, 0x9219                   ; 0x8518
    push ax                          ; 0x851b
    mov ax, 0x9212                   ; 0x851c
    push ax                          ; 0x851f
    mov ax, 0x9209                   ; 0x8520
    push ax                          ; 0x8523
    mov ax, 0x91fe                   ; 0x8524
    push ax                          ; 0x8527
    push word [bp + 0x4]             ; 0x8528
    call api_idx_0004_11             ; 0x852b
    add sp, byte 0x0a                ; 0x852e
    jmp near @..api_idx_0004_12.l2   ; 0x8531
    mov ax, 0x923f                   ; 0x8534
    push ax                          ; 0x8537
    mov ax, 0x9238                   ; 0x8538
    push ax                          ; 0x853b
    mov ax, 0x922f                   ; 0x853c
    push ax                          ; 0x853f
    mov ax, 0x9224                   ; 0x8540
    push ax                          ; 0x8543
    push word [bp + 0x4]             ; 0x8544
    call api_idx_0004_11             ; 0x8547
    add sp, byte 0x0a                ; 0x854a
    jmp near @..api_idx_0004_12.l2   ; 0x854d
    mov ax, 0x9265                   ; 0x8550
    push ax                          ; 0x8553
    mov ax, 0x925e                   ; 0x8554
    push ax                          ; 0x8557
    mov ax, 0x9255                   ; 0x8558
    push ax                          ; 0x855b
    mov ax, 0x924a                   ; 0x855c
    push ax                          ; 0x855f
    push word [bp + 0x4]             ; 0x8560
    call api_idx_0004_11             ; 0x8563
    add sp, byte 0x0a                ; 0x8566
    jmp short @..api_idx_0004_12.l2  ; 0x8569
    mov ax, 0x928b                   ; 0x856b
    push ax                          ; 0x856e
    mov ax, 0x9284                   ; 0x856f
    push ax                          ; 0x8572
    mov ax, 0x927b                   ; 0x8573
    push ax                          ; 0x8576
    mov ax, 0x9270                   ; 0x8577
    push ax                          ; 0x857a
    push word [bp + 0x4]             ; 0x857b
    call api_idx_0004_11             ; 0x857e
    add sp, byte 0x0a                ; 0x8581
    jmp short @..api_idx_0004_12.l2  ; 0x8584
    mov ax, 0x92b1                   ; 0x8586
    push ax                          ; 0x8589
    mov ax, 0x92aa                   ; 0x858a
    push ax                          ; 0x858d
    mov ax, 0x92a1                   ; 0x858e
    push ax                          ; 0x8591
    mov ax, 0x9296                   ; 0x8592
    push ax                          ; 0x8595
    push word [bp + 0x4]             ; 0x8596
    call api_idx_0004_11             ; 0x8599
    add sp, byte 0x0a                ; 0x859c
    jmp short @..api_idx_0004_12.l2  ; 0x859f
    mov ax, 0x92d7                   ; 0x85a1
    push ax                          ; 0x85a4
    mov ax, 0x92d0                   ; 0x85a5
    push ax                          ; 0x85a8
    mov ax, 0x92c7                   ; 0x85a9
    push ax                          ; 0x85ac
    mov ax, 0x92bc                   ; 0x85ad
    push ax                          ; 0x85b0
    push word [bp + 0x4]             ; 0x85b1
    call api_idx_0004_11             ; 0x85b4
    add sp, byte 0x0a                ; 0x85b7
    jmp short @..api_idx_0004_12.l2  ; 0x85ba
    jg short loc_8592                ; 0x85bc
    wait                             ; 0x85be
    aam 0xb7                         ; 0x85bf
    aam 0xd3                         ; 0x85c1
    aam 0xef                         ; 0x85c3
    aam 0xb                          ; 0x85c5
    aad api_idx_0002                 ; 0x85c7
    aad 0x43                         ; 0x85c9
    aad 0x5f                         ; 0x85cb
    aad 0x7b                         ; 0x85cd
    aad 0x97                         ; 0x85cf
    aad 0xb2                         ; 0x85d1
    aad 0xcd                         ; 0x85d3
    aad 0xe8                         ; 0x85d5
    db 0xd5
@..api_idx_0004_12.l1:
    cmp ax, strict word 0xe          ; 0x85d8
    jae short @..api_idx_0004_12.l2  ; 0x85db
    xchg bx, ax                      ; 0x85dd
    shl bx, 1                        ; 0x85de
    jmp [cs:bx - 0x29fd]             ; 0x85e0
@..api_idx_0004_12.l2:
    mov ax, 0x248                    ; 0x85e5
    imul word [bp + 0x4]             ; 0x85e8
    mov bx, ax                       ; 0x85eb
    cmp byte [bx + 0x5d65], 0xd      ; 0x85ed
    jbe short @..api_idx_0004_12.l3  ; 0x85f2
    cmp byte [bx + 0x5d6a], 0xd      ; 0x85f4
    jbe short @..api_idx_0004_12.l3  ; 0x85f9
    mov word [data_96d0], 1          ; 0x85fb
@..api_idx_0004_12.l3:
    mov word [bp - 0x0004], 0        ; 0x8601
    mov ax, word [bp + 0x6]          ; 0x8606
    shl ax, 1                        ; 0x8609
    shl ax, 1                        ; 0x860b
    mov bx, ax                       ; 0x860d
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax       ; 0x8613
    jmp short @..api_idx_0004_12.l6  ; 0x8616
@..api_idx_0004_12.l4:
    mov ax, word [bp - 0x0002]       ; 0x8618
    shl ax, 1                        ; 0x861b
    mov bx, ax                       ; 0x861d
