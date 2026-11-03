/* Redraw the party marker and status row after the configured tick
   interval. */

extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int party_redraw_interval;
extern long party_redraw_current_tick, party_redraw_elapsed_ticks;
extern int draw_marker_glyph(), draw_realm_spell_points();
extern int advance_party_slot_frames(), draw_party_slot_letters();
extern int call_show_area();

periodic_party_redraw(member_index, selected_slot)
int member_index, selected_slot;
{
	/* Compare elapsed ticks with the configured redraw interval. */
	party_redraw_current_tick = *tick_counter_ptr;
	party_redraw_elapsed_ticks =
		party_redraw_current_tick - party_redraw_last_tick;
	if (party_redraw_elapsed_ticks >= party_redraw_interval) {
		party_redraw_last_tick = party_redraw_current_tick;

		/* Refresh the marker, realm points, and selected party slot. */
		draw_marker_glyph();
		draw_realm_spell_points(member_index);
		advance_party_slot_frames(selected_slot);
		draw_party_slot_letters(50, 115, 1);

		/* Reveal the party status panel's screen region. */
		call_show_area(50, 115, 147, 197);
	}
}
