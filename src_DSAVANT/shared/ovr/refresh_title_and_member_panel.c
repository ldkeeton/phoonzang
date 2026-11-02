/* Redraw the title banner and member panel at the configured tick interval. */

extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int party_redraw_interval;
extern long party_redraw_current_tick, party_redraw_elapsed_ticks;
extern int banner_animation_frame;
extern int draw_title_banner(), call_show_area();
extern int advance_party_slot_frames(), draw_member_realm_points();

refresh_title_and_member_panel(member_index)
int member_index;
{
	/* Save the current tick and calculate elapsed ticks. */
	party_redraw_current_tick = *tick_counter_ptr;
	party_redraw_elapsed_ticks =
		party_redraw_current_tick - party_redraw_last_tick;

	/* Redraw after the configured interval has elapsed. */
	if (party_redraw_elapsed_ticks >= party_redraw_interval) {
		party_redraw_last_tick = party_redraw_current_tick;

		/* The title banner cycles through three animation frames. */
		banner_animation_frame = (banner_animation_frame + 1) % 3;
		draw_title_banner(banner_animation_frame);

		/* Refresh the title banner and member panel screen regions. */
		call_show_area(90, 25, 101, 65);
		advance_party_slot_frames(-1);
		draw_member_realm_points(member_index);
		call_show_area(184, 126, 319, 191);
	}
}
