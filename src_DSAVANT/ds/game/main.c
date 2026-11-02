/* main loop: load and run the overlay game_state selects, forever */

extern int game_state;
extern int current_level;

main()
{
	int entry;

	game_state = 0;
	for (;;) {
		switch (game_state) {
		case 8:
			ensure_game_disk(3, 0);
		case 0:
		case 1:
		case 2:
			entry = aztec_ovloader("VINIT");
			break;
		case 7:
		case 24:
			ensure_game_disk(1, 0);
		case 4:
			entry = aztec_ovloader("VBASE");
			break;
		case 17:
			entry = aztec_ovloader("VPCVW");
			break;
		case 22:
			entry = aztec_ovloader("VPCLV");
			break;
		case 16:
			entry = aztec_ovloader("VPCMK");
			break;
		case 25:	/* continues as state 5 */
			ensure_game_disk(2, current_level);
			game_state = 5;
		case 5:
		case 6:
			entry = aztec_ovloader("VMAZE");
			break;
		/* maze side actions; VMEXT always returns to state 5 */
		case 23:	/* run from an NPC encounter */
		case 27:	/* drink from a fountain */
		case 30:	/* pick up the floor item */
		case 31:	/* swap two party members */
			entry = aztec_ovloader("VMEXT");
			break;
		case 10:
		case 11:
		case 14:
			entry = aztec_ovloader("VMELE");
			break;
		case 12:
			entry = aztec_ovloader("VPOPS");
			break;
		case 13:
			entry = aztec_ovloader("VMEXE");
			break;
		case 19:
		case 20:
			entry = aztec_ovloader("VDOPT");
			break;
		case 15:
		case 21:
		case 26:
		case 28:
		case 29:
			entry = aztec_ovloader("VTREA");
			break;
		case 18:
			entry = aztec_ovloader("VMNPC");
			break;
		case 3:		/* quit */
			release_resources(0);
			aztec_exit(0);
			break;
		}
		call_wait_sound(0);
	}
}
