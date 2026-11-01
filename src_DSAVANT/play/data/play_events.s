; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; 7 bytes: number of data bytes that follow for event command nibbles 0-6
	public	event_byte_counts
event_byte_counts	db	03h,03h,03h,03h,02h,02h,03h

; 16 bytes: last event data byte stored for each channel (low nibble)
	public	channel_last_byte
channel_last_byte	db	0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh

; word pairs: event byte and its replacement, terminated by 0ffffh
	public	byte_remap_table
byte_remap_table	db	0ffh

; byte: the track event byte being processed
	public	current_event
current_event	db	00h

; byte: low nibble of the current event byte
	public	event_channel
event_channel	db	00h

; byte: high nibble of the current event byte
	public	event_command
event_command	db	00h

codeseg	ends
	end
