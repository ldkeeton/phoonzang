/* Lower a spell value by the target group's ward for its resistance type
   (1, 3, 5 have their own ward), then by the general ward 4. */
extern int reduce_spell_value_by_ward();

int apply_group_spell_wards(group, resistance_index, value)
int group, resistance_index, value;
{
	switch (resistance_index) {
	case 1:
		value = reduce_spell_value_by_ward(group, 0, value, 10);
		break;
	case 3:
		value = reduce_spell_value_by_ward(group, 1, value, 10);
		break;
	case 5:
		value = reduce_spell_value_by_ward(group, 3, value, 10);
		break;
	}
	value = reduce_spell_value_by_ward(group, 4, value, 10);
	return value;
}
