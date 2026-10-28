/* state 0x0b: redraws each member's panel, refreshes the action slot table
   and the screen animation, then hands over to the battle state */

extern int party_redraw_interval;			/* tick interval between panel redraws */
extern int party_char_count;				/* number of party_char records */
extern int battle_setup_done;				/* set by the battle setup of state 0x0a */
extern int game_state;
extern copy_member_party_record();
extern draw_active_member_panel();
extern play_action_overlays();
extern party_screen();
extern fill_row_action_slots();
extern run_party_screen_animation();

redraw_party_before_battle()
{
	int member;

	party_redraw_interval = 5;			/* 5 ticks between panel redraws */
	for (member = 0; member < party_char_count; member++) {
		copy_member_party_record(member);
			/* copy the roster record to its pc record */
		draw_active_member_panel(member, 1);	/* 1: draw its detail box */
	}
	fill_row_action_slots();
	play_action_overlays(0);		/* 0: first action slot group */
	run_party_screen_animation();
	if (battle_setup_done == 0)		/* not entered from the setup: open it */
		party_screen();
	battle_setup_done = 0;
	game_state = 12;		/* next state: battle */
}
