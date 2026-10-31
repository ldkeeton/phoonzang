	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
extrn	sample_idle:byte
extrn	music_enabled:byte
extrn	play_device:byte

wait_mode	equ	8	;word argument: nonzero waits for playback to stop

; Wait for the sample and playback to stop, or only the sample on device zero.
	procdef	wait_for_music
	push	bp
	mov	bp,sp
	cmp	word ptr wait_mode[bp],0
	je	wait_for_music_device_wait
wait_for_music_sample_idle:
	; Wait until the sample has finished before checking playback.
	cmp	byte ptr cs:sample_idle,0
	je	wait_for_music_sample_idle
wait_for_music_playback_end:
	; Keep waiting while the playback flag remains set.
	cmp	byte ptr cs:music_enabled,0
	jne	wait_for_music_playback_end
	pop	bp
	ret
wait_for_music_device_wait:
	; Device zero waits for the sample to finish; other devices return now.
	cmp	byte ptr cs:play_device,0
	jne	wait_for_music_return
wait_for_music_device_sample_idle:
	cmp	byte ptr cs:sample_idle,0
	je	wait_for_music_device_sample_idle
wait_for_music_return:
	pop	bp
	ret
	pend	wait_for_music

codeseg	ends
	end
