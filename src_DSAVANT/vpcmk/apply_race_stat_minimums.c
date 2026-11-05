/* Apply the selected race's minimum values to a character's statistics. */
extern char race_0_stat_minimums[];
extern char race_1_stat_minimums[];
extern char race_2_stat_minimums[];
extern char race_3_stat_minimums[];
extern char race_4_stat_minimums[];
extern char race_5_stat_minimums[];
extern char race_6_stat_minimums[];
extern char race_7_stat_minimums[];
extern char race_8_stat_minimums[];
extern char race_9_stat_minimums[];
extern char race_10_stat_minimums[];
extern int apply_character_stat_minimums();

apply_race_stat_minimums(character, race)
int character, race;
{
	switch (race) {
	case 0: apply_character_stat_minimums(character, race_0_stat_minimums); break;
	case 1: apply_character_stat_minimums(character, race_1_stat_minimums); break;
	case 2: apply_character_stat_minimums(character, race_2_stat_minimums); break;
	case 3: apply_character_stat_minimums(character, race_3_stat_minimums); break;
	case 4: apply_character_stat_minimums(character, race_4_stat_minimums); break;
	case 5: apply_character_stat_minimums(character, race_5_stat_minimums); break;
	case 6: apply_character_stat_minimums(character, race_6_stat_minimums); break;
	case 7: apply_character_stat_minimums(character, race_7_stat_minimums); break;
	case 8: apply_character_stat_minimums(character, race_8_stat_minimums); break;
	case 9: apply_character_stat_minimums(character, race_9_stat_minimums); break;
	case 10: apply_character_stat_minimums(character,
		race_10_stat_minimums); break;
	}
}
