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

_start:
    ; The MZ loader relocates relocation_segment to the current load segment.
    mov ax, cs
    mov ds, ax
    mov bx, [relocation_segment]
    cmp bx, ax
    jne relocation_error

    mov dx, banner
    mov ah, 9
    int 0x21
    mov byte [counter], '0'

loop:
    mov ah, 2
    mov dl, [counter]
    int 0x21
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

relocation_segment: dw 0
counter:            db '0'
banner:             db 'testexe.exe running - MZ relocation verified', 0x0D, 0x0A, '$'
error_message:      db 'MZ relocation failed', 0x0D, 0x0A, '$'

mz_file_end:
