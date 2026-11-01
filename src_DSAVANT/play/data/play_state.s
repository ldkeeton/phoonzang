; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; byte: music device 0-5; 5 selects the MPU-401 event path, other values the OPL opcode dispatch
	public	music_device
music_device	db	01h

; byte: output device 0-5; indexes the INT 08h handler sub-tables at 0495, set by play_set_device
	public	play_device
play_device	db	00h

; byte: set when event processing starts; a restart-delay expiry returns without restarting while it is set
	public	stream_running
stream_running	db	00h

; word: countdown to the next block; set to 1 at init and loaded from a 0feh command, cleared on restart
	public	restart_delay
restart_delay	dw	0001h

; word: reloaded from the tempo on each player step; the INT 08h handlers decrement it and call the player when it reaches zero
	public	tick_divider
tick_divider	dw	0064h

; word: reload for the chained-handler countdown, computed as 038eh divided by the tempo
	public	chain_period
chain_period	dw	000ah

; word: decremented on each player step; when it reaches zero the saved INT 08h handler is called and the count reloaded
	public	chain_countdown
chain_countdown	dw	0b83h,0220h

	public	cseg_0a89
cseg_0a89	dw	0220h

	public	cseg_0a8b
cseg_0a8b	dw	0221h

; sample output port
	public	sample_output_port
sample_output_port	dw	0222h

; 8259 master interrupt mask saved by the installer and written back when the sound handler stops
	public	saved_pic_mask
saved_pic_mask	db	00h

; code-segment byte tested to select the alternate timer path
	public	play_sample_mode_flag
play_sample_mode_flag	db	00h,00h

; input byte used as the upper sample count bound
	public	sample_count_limit
sample_count_limit	db	00h

; byte: (volume - 49h) / 2, or 0 below 49h; subtracted from each scaled sample count
	public	sample_count_bias
sample_count_bias	db	00h

; byte: 0 while a sample is playing, ff when idle; cleared at sample start, set when the sample ends
	public	sample_idle
sample_idle	db	0ffh

; byte: sample-position fraction; adding 80h per tick advances the patched sample offset once every two ticks
	public	sample_step_fraction
sample_step_fraction	db	00h

	public	cseg_0a96
cseg_0a96	dw	0000h

; word: music_tempo * 48h as written to PIT channel 0
	public	music_pit_divisor
music_pit_divisor	dw	0000h

; byte: 0 makes a player step stop and silence the OPL; set to 1 by the init path once the driver is loaded
	public	music_enabled
music_enabled	db	00h,00h,00h

; byte: nonzero makes end of stream restart at the saved start offset instead of stopping
	public	loop_at_end
loop_at_end	db	00h

; word: stream offset saved at init, used to restart when the stream ends
	public	stream_start_offset
stream_start_offset	dw	0000h

; word: stream segment saved by music_start beside stream_start_offset; never read
	public	stream_start_segment
stream_start_segment	dw	0000h

; word: segment of the track byte stream, loaded into ds while stepping
	public	stream_segment
stream_segment	dw	0000h

; word: offset of the next track byte, saved for a loop or restart
	public	stream_offset
stream_offset	dw	0000h

; word: tempo; the timer reload is computed from it and each player step reloads the tick divider with it
	public	music_tempo
music_tempo	dw	0064h

; byte: volume 0-255; the MPU volume setup halves it for controller 7
	public	playback_volume
playback_volume	db	80h

; byte: last volume sent to the MPU, so controller 7 is only re-sent when it changes
	public	last_playback_volume
last_playback_volume	db	80h,00h,00h

; word: segment of the instrument/patch table, set with the offset by the driver setup call (music_set_data)
	public	music_patch_segment
music_patch_segment	dw	0000h

; word: offset of the instrument/patch table, set with the segment by the driver setup call (music_set_data); 40h-byte header, then 11-byte patch records
	public	music_patch_offset
music_patch_offset	db	6 dup (0)
	db	50h,53h,1eh,0e8h,3ch,00h,0b0h,20h,0e6h,20h,1fh,5bh,58h,0cfh,50h,53h
	db	1eh,2eh,0ffh,0eh,81h,0bh,7fh,03h,0e8h,27h,00h,0b0h,20h,0e6h,20h,1fh
	db	5bh,58h,0cfh

; byte: cleared before each OPL event and set to 1 for the 10h-1fh range
	public	event_class_flag
event_class_flag	db	00h

; byte: cleared before each OPL event and set to 1 by the OPL note-start path
	public	note_started
note_started	db	00h

codeseg	ends
	end
