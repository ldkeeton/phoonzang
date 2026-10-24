/* main loop: load and run the overlay game_state selects, forever */

extern int game_state;
extern int game_state_arg;

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
			ensure_game_disk(2, game_state_arg);
			game_state = 5;
		case 5:
		case 6:
			entry = aztec_ovloader("VMAZE");
			break;
		case 23:
		case 27:
		case 30:
		case 31:
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
		gfx_wait_sound(0);
	}
}
