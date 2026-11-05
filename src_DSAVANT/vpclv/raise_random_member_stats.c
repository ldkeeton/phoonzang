/* Raise a character's random attributes and show each increase. */
#include "structs/pcrec.h"
#include "msg.h"
extern struct pc_rec party_records[];
extern char empty_stat_number_separator[], empty_stat_number_suffix[];
extern int random_below();

/* Choose eligible attributes, raise them, and refresh the member display. */
raise_random_member_stats(member)
int member;
{
	int stat, tries, used[8];
	char message[80], stat_name[80];
	for (stat = 0; stat < 8; stat++) used[stat] = 0;
	do {
		tries = 0;
		do {
			stat = random_below(7);
			tries++;
		} while ((party_records[member].stat[stat] >= 18 || used[stat] != 0)
			&& tries < 3);
		if (party_records[member].stat[stat] < 18 && used[stat] == 0) {
			used[stat] = 1;
			party_records[member].stat[stat]++;
			draw_message_number_line(1, 115, 6 * stat + 35,
				party_records[member].stat[stat], 0, MSG_STR + stat,
				empty_stat_number_separator, empty_stat_number_suffix, 24, 1);
			load_message_string(MSG_YOU_INCREASED, message);
			load_message_string(MSG_STRENGTH_5050 + stat, stat_name);
			str_subst_char(message, stat_name, 36);
			display_centered_message(message, 1);
			draw_member_summary_panel(member);
			call_show_area(6, 6, 162, 103);
		}
	} while (random_below(2));
}
