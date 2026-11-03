; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; {patch byte index, OPL register} pairs for the 11-byte patch record, 0FFh-terminated.
; The two level pairs (indexes 1 and 6, registers 40h/43h) come first;
; opl_load_patch starts at opl_patch_register_map, after them.
	public	opl_patch_register_pairs
opl_patch_register_pairs	db	01h,40h,06h,43h
	public	opl_patch_register_map
opl_patch_register_map	db	00h,20h,02h,60h,03h,80h,04h,0e0h
	db	05h,23h,07h,63h,08h,83h,09h,0e3h,0ffh

codeseg	ends
	end
