/* Apply race-specific stat limits after a profession change. */
extern char race_0_stat_caps[];
extern char race_1_stat_caps[];
extern char race_2_stat_caps[];
extern char race_3_stat_caps[];
extern char race_4_stat_caps[];
extern char race_5_stat_caps[];
extern char race_6_stat_caps[];
extern char race_7_stat_caps[];
extern char race_8_stat_caps[];
extern char race_9_stat_caps[];
extern char race_10_stat_caps[];
extern void cap_member_stats();

void apply_race_stat_limits(member_index, race_index)
int member_index;
int race_index;
{
	switch (race_index) {
	case 0:
		cap_member_stats(member_index, race_0_stat_caps);
		break;
	case 1:
		cap_member_stats(member_index, race_1_stat_caps);
		break;
	case 2:
		cap_member_stats(member_index, race_2_stat_caps);
		break;
	case 3:
		cap_member_stats(member_index, race_3_stat_caps);
		break;
	case 4:
		cap_member_stats(member_index, race_4_stat_caps);
		break;
	case 5:
		cap_member_stats(member_index, race_5_stat_caps);
		break;
	case 6:
		cap_member_stats(member_index, race_6_stat_caps);
		break;
	case 7:
		cap_member_stats(member_index, race_7_stat_caps);
		break;
	case 8:
		cap_member_stats(member_index, race_8_stat_caps);
		break;
	case 9:
		cap_member_stats(member_index, race_9_stat_caps);
		break;
	case 10:
		cap_member_stats(member_index, race_10_stat_caps);
		break;
	}
}
