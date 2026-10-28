/* overlay entry: reset the battle flags, then run the handler for the
   current game state and report success */

extern int party_redraw_interval, show_melee_result, npc_melee;
extern int battle_setup_done, game_state;
extern start_melee_battle(), advance_melee_turn(),
	redraw_party_before_battle();

ovmain()
{
	party_redraw_interval = 5;		/* ticks between panel redraws */
	show_melee_result = 0;
	npc_melee = 0;
	battle_setup_done = 0;
	if (game_state == 10)		/* 0x0a: start a melee */
		start_melee_battle();
	if (game_state == 14)		/* 0x0e: advance the melee round */
		advance_melee_turn();
	if (game_state == 11)		/* 0x0b: redraw the party */
		redraw_party_before_battle();
	return 0;
}
