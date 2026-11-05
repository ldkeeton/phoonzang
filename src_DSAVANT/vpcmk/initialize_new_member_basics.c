/* Set a new party member's age, skills, and starting resource values. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int random_below();
extern int initialize_profession_skills();

initialize_new_member_basics(member_index)
int member_index;
{
	int hit_points;
	int stamina;
	int carry_stat;
	int first_stat;
	int second_stat;

	party_records[member_index].imported_fields[0] = 1;
	party_records[member_index].imported_fields[1] = 10;
	party_records[member_index].age_days = random_below(1000) + 6570;
	first_stat = party_records[member_index].stat[0];
	second_stat = party_records[member_index].stat[3];

	switch (party_records[member_index].profession) {
	case 0:
		hit_points = random_below(5) + 6;
		initialize_profession_skills(member_index);
		party_records[member_index].level_scaled_percent -= 3;
		break;
	case 1:
		hit_points = random_below(3) + 2;
		initialize_profession_skills(member_index);
		break;
	case 2:
		hit_points = random_below(4) + 4;
		initialize_profession_skills(member_index);
		break;
	case 3:
		hit_points = random_below(4) + 3;
		initialize_profession_skills(member_index);
		party_records[member_index].level_scaled_percent--;
		break;
	case 4:
		hit_points = random_below(4) + random_below(4) + 6;
		initialize_profession_skills(member_index);
		party_records[member_index].level_scaled_percent--;
		party_records[member_index].level_scaled_percent--;
		break;
	case 5:
		hit_points = random_below(4) + 3;
		initialize_profession_skills(member_index);
		break;
	case 6:
		hit_points = random_below(4) + 2;
		initialize_profession_skills(member_index);
		break;
	case 7:
		hit_points = random_below(3) + 3;
		initialize_profession_skills(member_index);
		break;
	case 8:
		hit_points = random_below(5) + 5;
		initialize_profession_skills(member_index);
		party_records[member_index].level_scaled_percent -= 4;
		break;
	case 9:
		hit_points = random_below(4) + 3;
		initialize_profession_skills(member_index);
		break;
	case 10:
		hit_points = random_below(7) + 8;
		initialize_profession_skills(member_index);
		party_records[member_index].level_scaled_percent -= 4;
		break;
	case 11:
		hit_points = random_below(4) + random_below(4) + 6;
		initialize_profession_skills(member_index);
		party_records[member_index].level_scaled_percent -= 5;
		break;
	case 12:
		hit_points = random_below(4) + 4;
		initialize_profession_skills(member_index);
		party_records[member_index].level_scaled_percent -= 2;
		break;
	case 13:
		hit_points = random_below(5) + 4;
		initialize_profession_skills(member_index);
		party_records[member_index].level_scaled_percent -= 2;
		break;
	}

	stamina = (second_stat * 2 + first_stat) * 3;
	carry_stat = (first_stat * 2 + second_stat) * 3;
	hit_points += 4;
	if (second_stat < 8)
		hit_points--;
	if (second_stat > 15) {
		hit_points++;
		stamina += second_stat;
	}
	if (second_stat > 17) {
		hit_points++;
		stamina += second_stat;
	}
	if (first_stat > 15)
		carry_stat += first_stat;
	if (first_stat > 17)
		carry_stat += first_stat;

	party_records[member_index].hp[0] = hit_points;
	party_records[member_index].hp[1] = hit_points;
	party_records[member_index].stamina[0] = stamina;
	party_records[member_index].stamina[1] = stamina;
	party_records[member_index].carried_weight = 0;
	party_records[member_index].carry_capacity = 15 * carry_stat;
	if (party_records[member_index].race == 5)
		party_records[member_index].carry_capacity =
			party_records[member_index].carry_capacity * 2 / 3;
}
