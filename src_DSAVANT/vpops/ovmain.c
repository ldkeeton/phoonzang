/* Enter the party battle-order flow when the current state is twelve. */
extern int game_state;
extern int enter_party_battle_orders();

ovmain()
{
	if (game_state == 12)
		enter_party_battle_orders();
	return 0;
}
