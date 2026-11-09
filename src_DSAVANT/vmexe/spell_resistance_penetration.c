/* How far a spell cuts through resistance: 3 x spell level + 3 x power - 6.
   apply_combat_spell_effect adds the caster's level lead and passes it as
   resistance_floor. */
#include "structs/spell.h"

extern struct spell_table_view spell_table;

spell_resistance_penetration(spell_id, spell_power)
int spell_id, spell_power;
{
	return 3 * spell_table.spell[spell_id].level
		+ 3 * spell_power - 6;
}
