/* Reduce a combatant's stamina without allowing it to fall below zero. */
#include "structs/member.h"
void
subtract_combatant_stamina(combatant, amount)
struct combatant *combatant;
int amount;
{
	combatant->stamina -= amount;
	if (combatant->stamina < 0)
		combatant->stamina = 0;
}
