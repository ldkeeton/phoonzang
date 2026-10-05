; testexe.exe — small relocatable MZ target for the TSR GDB stub
;
; Build the DOS image with -f bin. Build the matching ELF/DWARF symbols with
; -f elf32; the ELF describes the loaded image and excludes the MZ header.

BITS 16

%ifidn __OUTPUT_FORMAT__, bin
    ; The DOS loader removes the 512-byte header before loading the image.
    ; Use a negative origin so code/data labels retain their load-image offsets.
    org -0x200

 mz_header:
    dw 0x5A4D                         ; MZ signature
    dw (mz_file_end - $$) & 0x1FF     ; bytes on final 512-byte page
    dw (mz_file_end - $$ + 0x1FF) / 512
    dw 1                              ; one relocation entry
    dw 0x20                           ; 512-byte header
    dw 0x100                          ; minimum allocation: stack space
    dw 0xFFFF                         ; maximum allocation
    dw 0                              ; initial SS relative to load segment
    dw 0x1000                         ; initial SP
    dw 0                              ; checksum
    dw _start                         ; initial IP
    dw 0                              ; initial CS relative to load segment
    dw 0x1C                           ; relocation-table file offset
    dw 0                              ; overlay number
    dw relocation_segment             ; relocation offset in load image
    dw 0                              ; relocation segment in load image
    times 0x200 - ($ - $$) db 0       ; complete the 512-byte header
%endif

global _start
global loop
global relocation_segment
global counter
global dos_version_int
global date_int
global time_int
global bios_int
global bios_dos_int
global loop_int
global loop_next
global date_time_text

_start:
    ; The MZ loader relocates relocation_segment to the current load segment.
    mov ax, cs
    mov ds, ax
    mov bx, [relocation_segment]
    cmp bx, ax
    jne relocation_error

    mov dx, banner
banner_setup: mov ah, 9
banner_int: int 0x21

    ; Query the DOS version, date, and time without waiting for user input.
dos_version_setup: mov ah, 0x30
dos_version_int:
    int 0x21
    mov [dos_version_major], al
    mov [dos_version_minor], ah

    mov ah, 0x2A
date_int:
    int 0x21
    mov [date_year], cx
    mov [date_month], dh
    mov [date_day], dl

    mov ah, 0x2C
time_int:
    int 0x21
    mov [time_hour], ch
    mov [time_minute], cl
    mov [time_second], dh

    ; Format MM/DD/YYYY HH:MM:SS for DOS function 09h.
    mov al, [date_month]
    mov di, date_time_text
    call format_2
    mov al, [date_day]
    mov di, date_time_text+3
    call format_2
    mov ax, [date_year]
    call format_year
    mov al, [time_hour]
    mov di, date_time_text+11
    call format_2
    mov al, [time_minute]
    mov di, date_time_text+14
    call format_2
    mov al, [time_second]
    mov di, date_time_text+17
    call format_2

    mov dx, date_label
    mov ah, 9
    int 0x21
    mov dx, date_time_text
    int 0x21

    ; BIOS teletype output is distinct from the DOS console services above.
    mov dx, bios_label
    mov ah, 9
    int 0x21
    mov ax, 0x0E21               ; teletype output of '!'
    mov bx, 0x0007               ; page 0, light-gray attribute
bios_int:
    int 0x10
    mov dx, line_ending
    mov ah, 9
bios_dos_int:
    int 0x21

    mov byte [counter], '0'

loop:
    mov ah, 2
    mov dl, [counter]
loop_int:
    int 0x21
loop_next:
    inc byte [counter]
    cmp byte [counter], '9' + 1
    jb .again
    mov byte [counter], '0'
.again:
    jmp loop

relocation_error:
    mov dx, error_message
    mov ah, 9
    int 0x21
    mov ax, 0x4C01
    int 0x21

; AL is a value from 0 through 99; DI points to two output characters.
format_2:
    aam
    add ax, 0x3030
    xchg al, ah
    mov [di], ax
    ret

; AX is the four-digit DOS year; write it at date_time_text+6.
format_year:
    xor dx, dx
    mov bx, 1000
    div bx
    add al, '0'
    mov [date_time_text+6], al
    mov ax, dx
    xor dx, dx
    mov bx, 100
    div bx
    add al, '0'
    mov [date_time_text+7], al
    mov ax, dx
    xor dx, dx
    mov bx, 10
    div bx
    add al, '0'
    add dl, '0'
    mov [date_time_text+8], al
    mov [date_time_text+9], dl
    ret

relocation_segment: dw 0
counter:            db '0'
banner:             db 'testexe.exe running - MZ relocation verified', 0x0D, 0x0A, '$'
error_message:      db 'MZ relocation failed', 0x0D, 0x0A, '$'
date_label:         db 'DOS date/time: $'
date_time_text:     db '00/00/0000 00:00:00', 0x0D, 0x0A, '$'
bios_label:         db 'BIOS teletype: $'
line_ending:        db 0x0D, 0x0A, '$'
dos_version_major:  db 0
dos_version_minor:  db 0
date_year:          dw 0
date_month:         db 0
date_day:           db 0
time_hour:          db 0
time_minute:        db 0
time_second:        db 0

mz_file_end:
