/* applies the leading control codes of one message word to the four-line
   text display, leaving the literal remainder in the token */

extern char text_line_buffer[];	/* 4 slots of 128 bytes */
extern int text_line_color[];	/* per slot: 0 normal, 2 highlighted */
extern int text_line_index;
extern char far *mouse_pointer_shape;

apply_text_control_codes(token, pending_line)
char *token, *pending_line;
{
	int slot, scanning, redraw, cue;
	unsigned char *cursor;

	cursor = token;
	redraw = 0;
	scanning = 1;
	while (scanning) {
		switch (*cursor) {
		case '@':		/* page effect */
		case '[':
			gfx_mouse_glide_back(302, 164, 0);
			set_mouse_pointer_shape(0L);
			while (!poll_fullscreen_hotspot())
				step_party_animation();
			set_mouse_pointer_shape(mouse_pointer_shape);
			gfx_mouse_glide_to(302, 164, 0);
			if (*cursor == '@') {	/* second page code */
				next_text_line();
				next_text_line();
				redraw = 0;
			}
			++cursor;
			break;
		case '%':		/* pause */
			wait_ticks_abortable(54, 1);
			++cursor;
			break;
		case '!':		/* new line */
			next_text_line();
			redraw = 0;
			++cursor;
			break;
		case '&':		/* store the pending line in the next slot */
			aztec_strcpy(text_line_buffer + text_line_index * 128,
				pending_line);
			text_line_color[text_line_index] = 2;
			reveal_text_line();
			*pending_line = 0;
			redraw = 1;
			++cursor;
			break;
		case ']':		/* clear the display */
			for (slot = 0; slot < 4; slot++) {
				text_line_buffer[slot * 128] = 0;
				text_line_color[slot] = 0;
			}
			text_line_index = 0;
			redraw = 0;
			redraw_area_set(3);
			show_area_set(3);
			++cursor;
			break;
		case '~':		/* sound cue: next byte is the id */
			++cursor;
			cue = *cursor;
			play_sound_cue(cue);
			++cursor;
			break;
		default:
			scanning = 0;
		}
	}
	if (redraw)
		next_text_line();
	aztec_strcpy(token, cursor);
}
