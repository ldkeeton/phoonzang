/* Award a party member spell school and realm point progress. */
#include "structs/pcrec.h"
#include "structs/spell.h"
extern struct pc_rec party_records[];
extern struct spell_table_view spell_table;
extern int test_bit(), random_below();

/* Increase the qualifying spell school and each known realm's point
   maximum. */
award_member_spell_progress(member)
int member;
{
	int realm, stat1, stat2, stat3, stat6, average, bonus, gain, known;
	int school, skill, required;
	stat1 = party_records[member].stat[1];
	stat2 = party_records[member].stat[2];
	stat3 = party_records[member].stat[3];
	stat6 = party_records[member].stat[6];
	switch (party_records[member].profession) {
	case 1: average=(stat1+stat2)/2; school=0; skill=32; required=1; break;
	case 2: average=(stat2+stat3)/2; school=1; skill=30; required=1; break;
	case 4: average=(stat1+stat2)/2; school=2; skill=29; required=3; break;
	case 5: average=(stat1+stat2)/2; school=2; skill=29; required=1; break;
	case 6: average=(stat1+stat2)/2; school=0; skill=32; required=3; break;
	case 7: average=(stat1+stat2)/2; school=3; skill=31; required=1; break;
	case 8: average=(stat2+stat3)/2; school=1; skill=30; required=3; break;
	case 9:
	average=(stat1+stat2)/2;
	school=party_records[member].level%2;
	skill=school ? 30 : (skill=32);
	required=1; break;
	case 10: average=(stat6+stat2)/2; school=1; skill=30; required=3; break;
	case 11: average=(stat1+stat2)/2; school=0; skill=32; required=3; break;
	case 12: average=(stat1+stat2)/2; school=3; skill=31; required=3; break;
	case 13: average=(stat1+stat2)/2; school=2; skill=29; required=5; break;
	default: required=0; break;
	}
	if (required == 0) return;
	if (party_records[member].level >= required) {
	party_records[member].spells_to_learn[school]++;
	for (realm=0; realm<6; realm++) {
	known=0;
	if (party_records[member].realm_points[realm][1] > 0) {
	for (stat1=0; stat1<102; stat1++) {
		if (spell_table.spell[stat1].realm == realm &&
			test_bit(party_records[member].spell_bitmap, stat1) == 1)
		known++;
	}
	}
	if (known > 0) {
	bonus=0;
	if (average>13) bonus++;
	if (average>16) bonus++;
	if (party_records[member].level < party_records[member].pre_drain_level)
		party_records[member].realm_points[realm][1]++;
	else {
		gain=random_below(party_records[member].glyph_row[realm])+
		random_below(party_records[member].skills[skill]/20)+
		party_records[member].stat[2]/6*known+bonus;
		if (gain>15) gain=15;
		party_records[member].realm_points[realm][1]+=gain;
		if (party_records[member].realm_points[realm][1]>999)
		party_records[member].realm_points[realm][1]=999;
	}
	}
	}
	}
}
