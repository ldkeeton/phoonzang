; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; OPL register shadow from registers 00h through B0h, updated by opl_write
	public	opl_register_shadow
opl_register_shadow	db	177 dup (0)

; 12-byte OPL register shadow area for B1h through BCh
	public	opl_register_shadow_b1_bc
opl_register_shadow_b1_bc	db	12 dup (0)

; three-byte BDh-BFh OPL shadow area; special-note handlers update the BDh rhythm bits
	public	opl_rhythm_register_shadow
opl_rhythm_register_shadow	db	00h,00h,00h

; 64-byte OPL register shadow area for C0h through FFh
	public	opl_register_shadow_c0_ff
opl_register_shadow_c0_ff	db	64 dup (0)

; 12 rows x 16 words: OPL F-number for each semitone step and 1/16-semitone fraction; negative entries step the block down and are halved
	public	opl_fnum_table
opl_fnum_table	dw	02b2h,02b4h,02b7h,02b9h,02bch,02beh,02c1h,02c3h
	dw	02c6h,02c9h,02cbh,02ceh,02d0h,02d3h,02d6h,02d8h
	dw	02dbh,02ddh,02e0h,02e3h,02e5h,02e8h,02ebh,02edh
	dw	02f0h,02f3h,02f6h,02f8h,02fbh,02feh,0301h,0303h
	dw	0306h,0309h,030ch,030fh,0311h,0314h,0317h,031ah
	dw	031dh,0320h,0323h,0326h,0329h,032bh,032eh,0331h
	dw	0334h,0337h,033ah,033dh,0340h,0343h,0346h,0349h
	dw	034ch,034fh,0352h,0356h,0359h,035ch,035fh,0362h
	dw	0365h,0368h,036bh,036fh,0372h,0375h,0378h,037bh
	dw	037fh,0382h,0385h,0388h,038ch,038fh,0392h,0395h
	dw	0399h,039ch,039fh,03a3h,03a6h,03a9h,03adh,03b0h
	dw	03b4h,03b7h,03bbh,03beh,03c1h,03c5h,03c8h,03cch
	dw	03cfh,03d3h,03d7h,03dah,03deh,03e1h,03e5h,03e8h
	dw	03ech,03f0h,03f3h,03f7h,03fbh,03feh,0fe01h,0fe03h
	dw	0fe05h,0fe07h,0fe08h,0fe0ah,0fe0ch,0fe0eh,0fe10h,0fe12h
	dw	0fe14h,0fe16h,0fe18h,0fe1ah,0fe1ch,0fe1eh,0fe20h,0fe21h
	dw	0fe23h,0fe25h,0fe27h,0fe29h,0fe2bh,0fe2dh,0fe2fh,0fe31h
	dw	0fe34h,0fe36h,0fe38h,0fe3ah,0fe3ch,0fe3eh,0fe40h,0fe42h
	dw	0fe44h,0fe46h,0fe48h,0fe4ah,0fe4ch,0fe4fh,0fe51h,0fe53h
	dw	0fe55h,0fe57h,0fe59h,0fe5ch,0fe5eh,0fe60h,0fe62h,0fe64h
	dw	0fe67h,0fe69h,0fe6bh,0fe6dh,0fe6fh,0fe72h,0fe74h,0fe76h
	dw	0fe79h,0fe7bh,0fe7dh,0fe7fh,0fe82h,0fe84h,0fe86h,0fe89h
	dw	0fe8bh,0fe8dh,0fe90h,0fe92h,0fe95h,0fe97h,0fe99h,0fe9ch
	dw	0fe9eh,0fea1h,0fea3h,0fea5h,0fea8h,0feaah,0feadh,0feafh

; 96 bytes: semitone to its octave (0-7); opl_note_on decrements it and puts it in B0h block bits 2-4
	public	opl_semitone_octave
opl_semitone_octave	db	12 dup (0)
	db	01h,01h,01h,01h,01h,01h,01h,01h,01h,01h,01h,01h,02h,02h,02h,02h
	db	02h,02h,02h,02h,02h,02h,02h,02h,03h,03h,03h,03h,03h,03h,03h,03h
	db	03h,03h,03h,03h,04h,04h,04h,04h,04h,04h,04h,04h,04h,04h,04h,04h
	db	05h,05h,05h,05h,05h,05h,05h,05h,05h,05h,05h,05h,06h,06h,06h,06h
	db	06h,06h,06h,06h,06h,06h,06h,06h,07h,07h,07h,07h,07h,07h,07h,07h
	db	07h,07h,07h,07h

; 96 bytes: semitone to its step within the octave (0-11), the row of opl_fnum_table
	public	opl_semitone_step
opl_semitone_step	db	00h,01h,02h,03h,04h,05h,06h,07h,08h,09h,0ah,0bh,00h,01h,02h,03h
	db	04h,05h,06h,07h,08h,09h,0ah,0bh,00h,01h,02h,03h,04h,05h,06h,07h
	db	08h,09h,0ah,0bh,00h,01h,02h,03h,04h,05h,06h,07h,08h,09h,0ah,0bh
	db	00h,01h,02h,03h,04h,05h,06h,07h,08h,09h,0ah,0bh,00h,01h,02h,03h
	db	04h,05h,06h,07h,08h,09h,0ah,0bh,00h,01h,02h,03h,04h,05h,06h,07h
	db	08h,09h,0ah,0bh,00h,01h,02h,03h,04h,05h,06h,07h,08h,09h,0ah,0bh
	db	6 dup (0)
	db	10h,08h,04h,02h,01h

; byte: 0 or 20h (OPL B0h key-on bit); opl_note_on sets 20h, note_event_high clears it, and it is added into each B0h write
	public	opl_key_on_bit
opl_key_on_bit	db	00h

codeseg	ends
	end
