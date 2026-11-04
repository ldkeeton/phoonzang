; Detect the video adapter; [bp-2] = 0 MDA, 4 CGA, 6 EGA, 7 VGA, 8 Hercules.
	include lmacros.h
	codeseg segment byte public 'code'
	assume cs:codeseg
	extrn saved_video_mode:byte

caller_result	equ word ptr -2[bp]
ega_info_byte	equ 0487h

	procdef detect_video_adapter_type, <>
	; Save the BIOS mode for the CGA/EGA probe below.
	video	0fh
	mov byte ptr cs:saved_video_mode,al

	; A nonzero EGA info byte (0040:0087) means an EGA or VGA BIOS.
	mov ax,0
	push ds
	mov ds,ax
	mov bx,ega_info_byte
	mov al,byte ptr [bx]
	pop ds
	or al,al
	je short mono_cga_probe
	jmp near ptr ega_vga_probe

mono_cga_probe:
	; In mode 7, a colour CRTC at 3D4h that echoes its cursor register means a CGA is also present.
	cmp byte ptr cs:saved_video_mode,7
	jne short cga_detected
	mov dx,3d4h
	mov al,0fh
	out dx,al
	inc dx
	in al,dx
	xchg ah,al
	mov al,64h
	out dx,al
	; Preserve the observed hardware delay before reading the register back.
	nop
	nop
	nop
	in al,dx
	cmp al,64h
	jne short probe_hercules
	xchg ah,al
	out dx,al

cga_detected:
	mov caller_result,4
	ret

probe_hercules:
	; Hercules: bit 7 of the mono status port (vertical retrace) changes within 5000 reads; plain MDA does not.
	mov dx,3bah
	in al,dx
	and al,80h
	xchg ah,al
	mov cx,1388h
wait_for_retrace_change:
	in al,dx
	and al,80h
	cmp al,ah
	jne short hercules_detected
	loop wait_for_retrace_change
	mov caller_result,0
	ret

hercules_detected:
	mov caller_result,8
	ret

ega_vga_probe:
	; EGA (6); a VGA display combination code (7 or 8, active or alternate) makes it VGA (7).
	mov caller_result,6
	xor bx,bx
	videox	1a00h
	cmp bl,7
	je short vga_detected
	cmp bh,7
	je short vga_detected
	cmp bl,8
	je short vga_detected
	cmp bh,8
	jne short return_result
vga_detected:
	or caller_result,1
return_result:
	ret
	pend detect_video_adapter_type
	finish
	end
