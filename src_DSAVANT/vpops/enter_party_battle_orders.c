/* Set up the party battle-order screen and enter combat or the next state. */
extern int party_redraw_interval;
extern int range_max_target_group[4];
extern int game_state;
extern int redraw_area_set(), show_area_set();
extern int choose_party_battle_orders();
extern int prepare_combat_groups();

enter_party_battle_orders()
{
	int unused_local, order_result;
	/* The first slot is reserved in the compiler frame. */

	party_redraw_interval = 5;
	/* Weapon range 0..3 reaches target groups up to 2, 2, 3 and 5. */
	range_max_target_group[0] = 2;
	range_max_target_group[1] = 2;
	range_max_target_group[2] = 3;
	range_max_target_group[3] = 5;
	redraw_area_set(3);
	show_area_set(3);
	order_result = choose_party_battle_orders();
	redraw_area_set(3);
	show_area_set(3);
	if (order_result != 0)
		game_state = 14;
	else {
		prepare_combat_groups();
		game_state = 13;
	}
}
