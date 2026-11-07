; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; byte: cleared before each OPL event and set to 1 for the 10h-1fh range
	public	event_class_flag
event_class_flag	db	00h

; byte: cleared before each OPL event and set to 1 by the OPL note-start path
	public	note_started
note_started	db	00h

codeseg	ends
	end
